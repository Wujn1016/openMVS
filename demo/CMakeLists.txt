# cmake_minimum_required(VERSION 3.10.0)

# #
# if (CUDA_ENABLE)
#     enable_language(CUDA)
# endif()

# # demo_texture_map
# add_executable(demo_texture_map ${CMAKE_CURRENT_SOURCE_DIR}/demo_texture_map.cpp)
# target_include_directories(demo_texture_map
#                         PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/../libs/texture_mapper
#                         )
# target_link_libraries(demo_texture_map
#                         OpenMVS_EXTRA_LIBS
#                     #   UPMinos
#                     #   tools
#                      )
# set_property(TARGET demo_texture_map PROPERTY FOLDER "demo")


# # install
# install(FILES ${CMAKE_CURRENT_SOURCE_DIR}/demo_texture_map.cpp DESTINATION .)

