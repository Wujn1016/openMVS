

#include "../../libs/MVS/Common.h"
#include "../../libs/MVS/Scene.h"
#include <boost/program_options.hpp>
// #include "StereoReconstruction.h"
// #include "TriMesh.h"

using namespace MVS;

// D E F I N E S ///////////////////////////////////////////////////

#define APPNAME _T("TextureMesh")

// S T R U C T S ///////////////////////////////////////////////////

namespace
{

namespace OPT
{
String strInputFileName;
String strMeshFileName;
String strOutputFileName;
String strViewsFileName;
float fDecimateMesh;
unsigned nCloseHoles;
unsigned nResolutionLevel;
unsigned nMinResolution;
unsigned minCommonCameras;
float fOutlierThreshold;
float fRatioDataSmoothness;
bool bGlobalSeamLeveling;
bool bLocalSeamLeveling;
unsigned nTextureSizeMultiple;
unsigned nRectPackingHeuristic;
uint32_t nColEmpty;
float fSharpnessWeight;
int nIgnoreMaskLabel;
unsigned nOrthoMapResolution;
unsigned nArchiveType;
int nProcessPriority;
unsigned nMaxThreads;
int nMaxTextureSize;
String strExportType;
String strConfigFileName;
boost::program_options::variables_map vm;
} // namespace OPT

class Application
{
public:
    Application()
    {
    }

    ~Application()
    {
        Finalize();
    }

    bool Initialize(size_t argc, LPCTSTR *argv);
    void Finalize();
}; // Application

// initialize and parse the command line parameters
bool Application::Initialize(size_t argc, LPCTSTR *argv)
{
    // initialize log and console
    OPEN_LOG();
    OPEN_LOGCONSOLE();

    // validate input
    OPT::strExportType   = _T(".ply");
    OPT::nArchiveType    = ARCHIVE_MVS;
    OPT::strMeshFileName = "D:/texture_data/result.ply";
    // OPT::strMeshFileName = "E:/OpenMVS_Windows_x64/scene_dense_mesh_refine.ply";

    OPT::minCommonCameras      = 0;
    OPT::strOutputFileName     = "E:/OpenMVS_Windows_x64/222.mvs";
    OPT::nProcessPriority      = -1;
    OPT::nMaxThreads           = 0;
    OPT::fRatioDataSmoothness  = 0.1f;
    OPT::fDecimateMesh         = 1.f;
    OPT::nIgnoreMaskLabel      = -1;
    OPT::nCloseHoles           = 30;
    OPT::nResolutionLevel      = 0;
    OPT::nMinResolution        = 640;
    OPT::fOutlierThreshold     = 6e-2f;
    OPT::bGlobalSeamLeveling   = true;
    OPT::bLocalSeamLeveling    = true;
    OPT::nTextureSizeMultiple  = 0;
    OPT::nRectPackingHeuristic = 3;
    OPT::nColEmpty             = 0x00FF7F27;
    OPT::fSharpnessWeight      = 0.5f;
    OPT::nOrthoMapResolution   = 0;
    OPT::nMaxTextureSize       = 8192;
    g_nVerbosityLevel          = 2;

    CUDA::desiredDeviceID = -1;

    MVS::Initialize(APPNAME, OPT::nMaxThreads, OPT::nProcessPriority);
    return true;
}

// finalize application instance
void Application::Finalize()
{
    MVS::Finalize();

    CLOSE_LOGFILE();
    CLOSE_LOGCONSOLE();
    CLOSE_LOG();
}

} // unnamed namespace

IIndexArr ParseViewsFile(const String &filename, const Scene &scene)
{
    IIndexArr views;
    std::ifstream file(filename);
    if (!file.good())
    {
        VERBOSE("error: unable to "
                "open views "
                "file '%s'",
                filename.c_str());
        return views;
    }
    while (true)
    {
        String imageName;
        std::getline(file, imageName);
        if (file.fail() || imageName.empty())
            break;
        LPTSTR endIdx;
        const IDX idx(strtoul(imageName, &endIdx, 10));
        const size_t szIndex(*endIdx == '\0' ? size_t(0) : imageName.size());
        FOREACH(idxImage, scene.images)
        {
            const Image &image = scene.images[idxImage];
            if (szIndex == 0)
            {
                // try to match by index
                if (image.ID != idx)
                    continue;
            }
            else
            {
                // try to match by file name
                const String name(Util::getFileNameExt(image.name));
                if (name.size() < szIndex || _tcsnicmp(name, imageName, szIndex) != 0)
                    continue;
            }
            views.emplace_back(idxImage);
            break;
        }
    }
    return views;
}

int main(int argc, LPCTSTR *argv)
{
#ifdef _DEBUGINFO
    // set _crtBreakAlloc index to stop
    // in <dbgheap.c> at allocation
    _CrtSetDbgFlag(_CRTDBG_ALLOC_MEM_DF | _CRTDBG_LEAK_CHECK_DF); // | _CRTDBG_CHECK_ALWAYS_DF);
#endif

    Application application;
    if (!application.Initialize(argc, argv))
        return EXIT_FAILURE;

    Scene scene(OPT::nMaxThreads);
    // load and texture the mesh
    const Scene::SCENE_TYPE sceneType(scene.Load("E:/OpenMVS_Windows_x64/scene_dense.mvs"));
    if (sceneType == Scene::SCENE_NA)
        return EXIT_FAILURE;
    if (!OPT::strMeshFileName.empty() && !scene.mesh.Load(MAKE_PATH_SAFE(OPT::strMeshFileName)))
    {
        VERBOSE("error: cannot load "
                "mesh "
                "file");
        return EXIT_FAILURE;
    }
    if (scene.mesh.IsEmpty())
    {
        VERBOSE("error: empty "
                "initial mesh");
        return EXIT_FAILURE;
    }

    const String baseFileName(MAKE_PATH_SAFE(Util::getFileFullName(OPT::strOutputFileName)));

    {
        // decimate to the desired resolution
        if (OPT::fDecimateMesh < 1.f)
        {
            ASSERT(OPT::fDecimateMesh > 0.f);
            scene.mesh.Clean(OPT::fDecimateMesh, 0.f, false, OPT::nCloseHoles, 0u, 0.f, false);
            scene.mesh.Clean(1.f,
                             0.f,
                             false,
                             0u,
                             0u,
                             0.f,
                             true); // extra cleaning to remove non-manifold
                                    // problems created by closing holes
#if TD_VERBOSE != TD_VERBOSE_OFF
            if (VERBOSITY_LEVEL > 3)
                scene.mesh.Save(baseFileName + _T("_decim") + OPT::strExportType);
#endif
        }
        // fetch list of views to be used for texturing
        IIndexArr views;

        // compute mesh texture
        TD_TIMER_START();
        if (!scene.TextureMesh(OPT::nResolutionLevel,
                               OPT::nMinResolution,
                               OPT::minCommonCameras,
                               OPT::fOutlierThreshold,
                               OPT::fRatioDataSmoothness,
                               OPT::bGlobalSeamLeveling,
                               OPT::bLocalSeamLeveling,
                               OPT::nTextureSizeMultiple,
                               OPT::nRectPackingHeuristic,
                               Pixel8U(OPT::nColEmpty),
                               OPT::fSharpnessWeight,
                               OPT::nIgnoreMaskLabel,
                               OPT::nMaxTextureSize,
                               views))
            return EXIT_FAILURE;
        VERBOSE("Mesh texturing "
                "completed: %u "
                "vertices, %u faces "
                "(%s)",
                scene.mesh.vertices.GetSize(),
                scene.mesh.faces.GetSize(),
                TD_TIMER_GET_FMT().c_str());

        // save the final mesh
        scene.mesh.Save(baseFileName + OPT::strExportType);
#if TD_VERBOSE != TD_VERBOSE_OFF
        if (VERBOSITY_LEVEL > 2)
            scene.ExportCamerasMLP(baseFileName + _T(".mlp"), baseFileName + OPT::strExportType);
#endif
        if ((ARCHIVE_TYPE)OPT::nArchiveType != ARCHIVE_MVS || sceneType != Scene::SCENE_INTERFACE)
            scene.Save(baseFileName + _T(".mvs"), (ARCHIVE_TYPE)OPT::nArchiveType);
    }

    if (OPT::nOrthoMapResolution)
    {
        // project mesh as an orthographic image
    ProjectOrtho:
        Image8U3 imageRGB;
        Image8U imageRGBA[4];
        Point3 center;
        scene.mesh.ProjectOrthoTopDown(OPT::nOrthoMapResolution, imageRGB, imageRGBA[3], center);
        Image8U4 image;
        cv::split(imageRGB, imageRGBA);
        cv::merge(imageRGBA, 4, image);
        image.Save(baseFileName + _T("_orthomap.png"));
        SML sml(_T("OrthoMap"));
        sml[_T("Center")].val = String::FormatString(_T("%g %g ")
                                                     _T("%g"),
                                                     center.x,
                                                     center.y,
                                                     center.z);
        sml.Save(baseFileName + _T("_orthomap.txt"));
    }

    return EXIT_SUCCESS;
}

/*----------------------------------------------------------------*/
