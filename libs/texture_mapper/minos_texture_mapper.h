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
     * @brief ����ӳ������������
     *
     * @param [in] _cam_matrix   ������ڲξ���
     * @param [in] _img_size     ͼƬ�ߴ�
     * @return MINOS_STATUS		 ״̬��
     */
    MINOS_STATUS init(const cv::Mat &_cam_matrix, const cv::Size &_img_size);

    /**
     * @brief ����ӳ���������
     *
     * @param [in] _mesh	            ���ǻ�����
     * @param [in] _images	            ����ͼ����Ӧ��ͼƬ
     * @param [in] _Ts_world2frame      Pw=T*Pc,����ͼ�������ϵ����������ϵ�µ�λ�˾���
     * @param [out] _texture_image      ����ͼƬ
     * @param [out] _vertices_texcoords	������Ӧ����������
     * @return MINOS_STATUS			    ״̬��
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
