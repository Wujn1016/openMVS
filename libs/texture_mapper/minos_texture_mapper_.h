#pragma once

//
#include "titan_defines.h"
#include "minos_types.h"

namespace minos
{

class TextureMapper_
{
public:
    TextureMapper_();
    ~TextureMapper_();

public:
    MINOS_STATUS init(const Matrix33 &_cam_matrix, const cv::Size &_img_size);
    MINOS_STATUS map(const trimesh::TriMesh &_mesh_data,
                     const std::vector<cv::Mat> &_image_data,
                     const std::vector<Transform> &_T_world2frame,
                     DataCore::ImageData<unsigned char> &_texture_picture,
                     std::vector<texcoords> &_face_texcoords);

private:
    Matrix33 cam_matrix_;
    cv::Size image_size_;

}; // TextureMapper_
} // namespace minos
