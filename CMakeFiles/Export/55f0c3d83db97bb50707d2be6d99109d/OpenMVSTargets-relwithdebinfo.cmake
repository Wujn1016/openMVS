#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "OpenMVS::Common" for configuration "RelWithDebInfo"
set_property(TARGET OpenMVS::Common APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(OpenMVS::Common PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "CXX"
  IMPORTED_LOCATION_RELWITHDEBINFO "C:/Program Files/OpenMVS/lib/OpenMVS/Common.lib"
  )

list(APPEND _cmake_import_check_targets OpenMVS::Common )
list(APPEND _cmake_import_check_files_for_OpenMVS::Common "C:/Program Files/OpenMVS/lib/OpenMVS/Common.lib" )

# Import target "OpenMVS::Math" for configuration "RelWithDebInfo"
set_property(TARGET OpenMVS::Math APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(OpenMVS::Math PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "CXX"
  IMPORTED_LOCATION_RELWITHDEBINFO "C:/Program Files/OpenMVS/lib/OpenMVS/Math.lib"
  )

list(APPEND _cmake_import_check_targets OpenMVS::Math )
list(APPEND _cmake_import_check_files_for_OpenMVS::Math "C:/Program Files/OpenMVS/lib/OpenMVS/Math.lib" )

# Import target "OpenMVS::IO" for configuration "RelWithDebInfo"
set_property(TARGET OpenMVS::IO APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(OpenMVS::IO PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "CXX"
  IMPORTED_LOCATION_RELWITHDEBINFO "C:/Program Files/OpenMVS/lib/OpenMVS/IO.lib"
  )

list(APPEND _cmake_import_check_targets OpenMVS::IO )
list(APPEND _cmake_import_check_files_for_OpenMVS::IO "C:/Program Files/OpenMVS/lib/OpenMVS/IO.lib" )

# Import target "OpenMVS::MVS" for configuration "RelWithDebInfo"
set_property(TARGET OpenMVS::MVS APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(OpenMVS::MVS PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "CUDA;CXX"
  IMPORTED_LOCATION_RELWITHDEBINFO "C:/Program Files/OpenMVS/lib/OpenMVS/MVS.lib"
  )

list(APPEND _cmake_import_check_targets OpenMVS::MVS )
list(APPEND _cmake_import_check_files_for_OpenMVS::MVS "C:/Program Files/OpenMVS/lib/OpenMVS/MVS.lib" )

# Import target "OpenMVS::TextureMesh" for configuration "RelWithDebInfo"
set_property(TARGET OpenMVS::TextureMesh APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(OpenMVS::TextureMesh PROPERTIES
  IMPORTED_LOCATION_RELWITHDEBINFO "C:/Program Files/OpenMVS/bin/OpenMVS/TextureMesh.exe"
  )

list(APPEND _cmake_import_check_targets OpenMVS::TextureMesh )
list(APPEND _cmake_import_check_files_for_OpenMVS::TextureMesh "C:/Program Files/OpenMVS/bin/OpenMVS/TextureMesh.exe" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
