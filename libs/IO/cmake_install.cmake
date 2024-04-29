# Install script for directory: F:/mcs2/openMVS/libs/IO

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files/OpenMVS")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/Program Files/OpenMVS/lib/OpenMVS/IO.lib")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "C:/Program Files/OpenMVS/lib/OpenMVS" TYPE STATIC_LIBRARY FILES "F:/mcs2/openMVS/lib/vc17/x64/Debug/IO.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/Program Files/OpenMVS/lib/OpenMVS/IO.lib")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "C:/Program Files/OpenMVS/lib/OpenMVS" TYPE STATIC_LIBRARY FILES "F:/mcs2/openMVS/lib/vc17/x64/Release/IO.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/Program Files/OpenMVS/lib/OpenMVS/IO.lib")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "C:/Program Files/OpenMVS/lib/OpenMVS" TYPE STATIC_LIBRARY FILES "F:/mcs2/openMVS/lib/vc17/x64/MinSizeRel/IO.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/Program Files/OpenMVS/lib/OpenMVS/IO.lib")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "C:/Program Files/OpenMVS/lib/OpenMVS" TYPE STATIC_LIBRARY FILES "F:/mcs2/openMVS/lib/vc17/x64/RelWithDebInfo/IO.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/Program Files/OpenMVS/include/OpenMVS/IO/Common.h;C:/Program Files/OpenMVS/include/OpenMVS/IO/Image.h;C:/Program Files/OpenMVS/include/OpenMVS/IO/ImageBMP.h;C:/Program Files/OpenMVS/include/OpenMVS/IO/ImageDDS.h;C:/Program Files/OpenMVS/include/OpenMVS/IO/ImageJPG.h;C:/Program Files/OpenMVS/include/OpenMVS/IO/ImagePNG.h;C:/Program Files/OpenMVS/include/OpenMVS/IO/ImageSCI.h;C:/Program Files/OpenMVS/include/OpenMVS/IO/ImageTGA.h;C:/Program Files/OpenMVS/include/OpenMVS/IO/ImageTIFF.h;C:/Program Files/OpenMVS/include/OpenMVS/IO/OBJ.h;C:/Program Files/OpenMVS/include/OpenMVS/IO/PLY.h;C:/Program Files/OpenMVS/include/OpenMVS/IO/TinyXML2.h;C:/Program Files/OpenMVS/include/OpenMVS/IO/tiny_gltf.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "C:/Program Files/OpenMVS/include/OpenMVS/IO" TYPE FILE FILES
    "F:/mcs2/openMVS/libs/IO/Common.h"
    "F:/mcs2/openMVS/libs/IO/Image.h"
    "F:/mcs2/openMVS/libs/IO/ImageBMP.h"
    "F:/mcs2/openMVS/libs/IO/ImageDDS.h"
    "F:/mcs2/openMVS/libs/IO/ImageJPG.h"
    "F:/mcs2/openMVS/libs/IO/ImagePNG.h"
    "F:/mcs2/openMVS/libs/IO/ImageSCI.h"
    "F:/mcs2/openMVS/libs/IO/ImageTGA.h"
    "F:/mcs2/openMVS/libs/IO/ImageTIFF.h"
    "F:/mcs2/openMVS/libs/IO/OBJ.h"
    "F:/mcs2/openMVS/libs/IO/PLY.h"
    "F:/mcs2/openMVS/libs/IO/TinyXML2.h"
    "F:/mcs2/openMVS/libs/IO/tiny_gltf.h"
    )
endif()

