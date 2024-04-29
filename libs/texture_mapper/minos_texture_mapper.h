#pragma once

//
#include "titan_defines.h"
#include "minos_types.h"

namespace minos
{
class TITAN_EXPORT TextureMapper
{
public:
    TextureMapper();
    ~TextureMapper();

public:
    /**
     * @brief 纹理映射器参数设置
     *
     * @param [in] _cam_matrix   相机的内参矩阵
     * @param [in] _img_size     图片尺寸
     * @return MINOS_STATUS		 状态码
     */
    MINOS_STATUS init(const cv::Mat &_cam_matrix, const cv::Size &_img_size);

    /**
     * @brief 纹理映射输入输出
     *
     * @param [in] _mesh	            三角化点云
     * @param [in] _images	            各视图所对应的图片
     * @param [in] _Ts_world2frame      Pw=T*Pc,各视图相机坐标系在世界坐标系下的位姿矩阵
     * @param [out] _texture_image      纹理图片
     * @param [out] _vertices_texcoords	面所对应的纹理坐标
     * @return MINOS_STATUS			    状态码
     */
    MINOS_STATUS map(const trimesh::TriMesh &_mesh,
                     const std::vector<DataCore::ImageData<unsigned char>> &_images,
                     const std::vector<Transform> &_Ts_world2frame,
                     DataCore::ImageData<unsigned char> &_texture_image,
                     std::vector<texcoords> &_vertices_texcoords);

private:
    TextureMapper(const TextureMapper &);
    const TextureMapper &operator=(const TextureMapper &);

    class Impl;
    Impl *impl_;
};
} // namespace minos
