#include "minos_texture_mapper.h"

void main()
{
    minos::TextureMapper texture_mapper;

    std::string dir = "../../data/";

    // 读取相机参数
    cv::Mat cam_matrix;
    cv::FileStorage graycam_para_read(dir + "calib/graycam_params.yml", cv::FileStorage::READ);
    graycam_para_read["cam_matrix"] >> cam_matrix;
    graycam_para_read.release();

    MINOS_STATUS sts = texture_mapper.init(cam_matrix);
    if (sts != MINOS_STS_OK)
    {
        std::cout << "set_param error: " << sts << std::endl;
        std::cin.get();
        return;
    }

    double time_total = 0.0;
    int image_num     = 360;
    std::vector<DataCore::ImageData<unsigned char> *> image_vector;

    // 加载所需的视图图片
    for (int i = 0; i < image_num; i++)
    {
        std::stringstream stream1, stream2, stream3, stream4, stream5;
        stream1 << dir + "/" << i + 1 << "_color.BMP";
        cv::Mat color_image_temp = cv::imread(stream1.str(), cv::IMREAD_COLOR);

        DataCore::ImageData<unsigned char> color_image(color_image_temp.cols,
                                                       color_image_temp.rows,
                                                       color_image_temp.channels());
        memcpy(color_image.m_data,
               color_image_temp.data,
               sizeof(uchar) * color_image_temp.cols * color_image_temp.rows
                   * color_image_temp.channels());
        image_vector.emplace_back(&color_image);
    }
    MINOS_STATUS sts = texture_mapper.map(image_vector);
    if (sts != MINOS_STS_OK)
    {
        std::cout << "set_param error: " << sts << std::endl;
        std::cin.get();
        return;
    }

    DataCore::ImageData<unsigned char> texture_picture;

    //
}
