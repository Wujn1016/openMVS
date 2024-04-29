#include "minos_texture_mapper_.h"

// #include "../mvs/Common.h"

#include "Scene.h"

// #include <boost/program_options.hpp>

namespace minos
{

TextureMapper_::TextureMapper_()
{
}

TextureMapper_::~TextureMapper_()
{
}

MINOS_STATUS TextureMapper_::init(const Matrix33 &_cam_matrix, const cv::Size &_img_size)
{
    cam_matrix_ = _cam_matrix;
    image_size_ = _img_size;
}

MINOS_STATUS TextureMapper_::map(const trimesh::TriMesh &_mesh_data,
                                 const std::vector<cv::Mat> &_image_data,
                                 const std::vector<Transform> &_T_world2frame,
                                 DataCore::ImageData<unsigned char> &_texture_picture,
                                 std::vector<texcoords> &_face_texcoords)
{
    //
    Scene scene;

    // 加载相机位姿，图片，每个点云点点所对应的视图
    MINOS_STATUS sts = scene.Load(cam_matrix_, _T_world2frame, _image_data, _mesh_data, image_size_);
    CHECK_IF((sts != MINOS_STS_OK), sts);

    // 加载mesh
    sts = scene.mesh_.Load(_mesh_data);
    CHECK_IF((sts != MINOS_STS_OK), sts);

    //
}
} // namespace minos
