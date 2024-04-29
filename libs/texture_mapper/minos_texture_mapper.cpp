#include "minos_texture_mapper.h"
#include "minos_texture_mapper_.h"

namespace minos
{

class TextureMapper::Impl
{
public:
    TextureMapper_ texture_mapper_;
    ImageSize image_size;
    bool is_init = false;
};

TextureMapper::TextureMapper() : impl_(new TextureMapper::Impl())
{
}

TextureMapper::~TextureMapper()
{
    delete impl_;
    impl_ = NULL;
}

MINOS_STATUS TextureMapper::init(const cv::Mat &_cam_matrix, const cv::Size &_img_size)
{
    // check
    CHECK_IF((_cam_matrix.empty()), MINOS_STS_PARAM_CAM_ERROR);
    CHECK_IF((_cam_matrix.rows != 3), MINOS_STS_PARAM_CAM_ERROR);
    CHECK_IF((_cam_matrix.cols != 3), MINOS_STS_PARAM_CAM_ERROR);

    //

    TITAN_STATUS sts = impl_->texture_mapper_.init(_cam_matrix, const cv::Size &_img_size);
    CHECK_IF((sts != TITAN_STS_OK), sts);

    //
    impl_->image_size.height = _img_size.height;
    impl_->image_size.width  = _img_size.width;
    impl_->is_init           = true;

    //
    return TITAN_STS_OK;
}

MINOS_STATUS TextureMapper::map(const trimesh::TriMesh &_mesh,
                                const std::vector<DataCore::ImageData<unsigned char>> &_images,
                                const std::vector<Transform> &_Ts_world2frame,
                                DataCore::ImageData<unsigned char> &_texture_image,
                                std::vector<texcoords> &_vertices_texcoords)
{
    // check
    CHECK_IF((!impl_->is_init), MINOS_STS_NOT_INIT);
    CHECK_IF((_mesh.faces.size() == 0), MINOS_STS_MESH_FACE_NULL);
    CHECK_IF((_mesh.vertices.size() == 0), MINOS_STS_MESH_VERTICES_NULL);
    CHECK_IF((_images.size() == 0), MINOS_STS_IMG_NULL);
    std::vector<cv::Mat> images;
    for (int i = 0; i < _images.size(); i++)
    {
        CHECK_IF((_images[i].m_data == nullptr), MINOS_STS_IMG_NULL);
        CHECK_IF((_images[i].m_h != impl_->image_size.height), MINOS_STS_IMG_TYPE_ERROR);
        CHECK_IF((_images[i].m_w != impl_->image_size.width), MINOS_STS_IMG_TYPE_ERROR);
        CHECK_IF((_images[i].m_channel != 3), MINOS_STS_IMG_TYPE_ERROR);
        cv::Mat image = cv::Mat(_images[i].m_h, _images[i].m_w, CV_8UC3, _images[i].m_data);
        images.emplace_back(image);
    }
    CHECK_IF((_Ts_world2frame.size() == 0), MINOS_STS_T_NULL);

    //
    TITAN_STATUS sts = impl_->texture_mapper_.map(_mesh,
                                                  images,
                                                  _Ts_world2frame,
                                                  _texture_image,
                                                  _vertices_texcoords);
    CHECK_IF((sts != TITAN_STS_OK), sts);

    //
    return TITAN_STS_OK;
}

} // namespace minos
