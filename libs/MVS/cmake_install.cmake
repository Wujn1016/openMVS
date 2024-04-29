# Install script for directory: F:/mcs2/openMVS/libs/MVS

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
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "F:/mcs2/openMVS/lib/vc17/x64/Debug/pyOpenMVS.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "F:/mcs2/openMVS/lib/vc17/x64/Release/pyOpenMVS.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "F:/mcs2/openMVS/lib/vc17/x64/MinSizeRel/pyOpenMVS.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "F:/mcs2/openMVS/lib/vc17/x64/RelWithDebInfo/pyOpenMVS.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "F:/mcs2/openMVS/bin/vc17/x64/Debug/pyOpenMVS.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "F:/mcs2/openMVS/bin/vc17/x64/Release/pyOpenMVS.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "F:/mcs2/openMVS/bin/vc17/x64/MinSizeRel/pyOpenMVS.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "F:/mcs2/openMVS/bin/vc17/x64/RelWithDebInfo/pyOpenMVS.dll")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/Program Files/OpenMVS/lib/OpenMVS/MVS.lib")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "C:/Program Files/OpenMVS/lib/OpenMVS" TYPE STATIC_LIBRARY FILES "F:/mcs2/openMVS/lib/vc17/x64/Debug/MVS.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/Program Files/OpenMVS/lib/OpenMVS/MVS.lib")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "C:/Program Files/OpenMVS/lib/OpenMVS" TYPE STATIC_LIBRARY FILES "F:/mcs2/openMVS/lib/vc17/x64/Release/MVS.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/Program Files/OpenMVS/lib/OpenMVS/MVS.lib")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "C:/Program Files/OpenMVS/lib/OpenMVS" TYPE STATIC_LIBRARY FILES "F:/mcs2/openMVS/lib/vc17/x64/MinSizeRel/MVS.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/Program Files/OpenMVS/lib/OpenMVS/MVS.lib")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "C:/Program Files/OpenMVS/lib/OpenMVS" TYPE STATIC_LIBRARY FILES "F:/mcs2/openMVS/lib/vc17/x64/RelWithDebInfo/MVS.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/Program Files/OpenMVS/include/OpenMVS/MVS/Camera.h;C:/Program Files/OpenMVS/include/OpenMVS/MVS/Common.h;C:/Program Files/OpenMVS/include/OpenMVS/MVS/DepthMap.h;C:/Program Files/OpenMVS/include/OpenMVS/MVS/Image.h;C:/Program Files/OpenMVS/include/OpenMVS/MVS/Interface.h;C:/Program Files/OpenMVS/include/OpenMVS/MVS/Mesh.h;C:/Program Files/OpenMVS/include/OpenMVS/MVS/PatchMatchCUDA.h;C:/Program Files/OpenMVS/include/OpenMVS/MVS/PatchMatchCUDA.inl;C:/Program Files/OpenMVS/include/OpenMVS/MVS/Platform.h;C:/Program Files/OpenMVS/include/OpenMVS/MVS/PointCloud.h;C:/Program Files/OpenMVS/include/OpenMVS/MVS/RectsBinPack.h;C:/Program Files/OpenMVS/include/OpenMVS/MVS/Scene.h;C:/Program Files/OpenMVS/include/OpenMVS/MVS/SceneDensify.h;C:/Program Files/OpenMVS/include/OpenMVS/MVS/SemiGlobalMatcher.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "C:/Program Files/OpenMVS/include/OpenMVS/MVS" TYPE FILE FILES
    "F:/mcs2/openMVS/libs/MVS/Camera.h"
    "F:/mcs2/openMVS/libs/MVS/Common.h"
    "F:/mcs2/openMVS/libs/MVS/DepthMap.h"
    "F:/mcs2/openMVS/libs/MVS/Image.h"
    "F:/mcs2/openMVS/libs/MVS/Interface.h"
    "F:/mcs2/openMVS/libs/MVS/Mesh.h"
    "F:/mcs2/openMVS/libs/MVS/PatchMatchCUDA.h"
    "F:/mcs2/openMVS/libs/MVS/PatchMatchCUDA.inl"
    "F:/mcs2/openMVS/libs/MVS/Platform.h"
    "F:/mcs2/openMVS/libs/MVS/PointCloud.h"
    "F:/mcs2/openMVS/libs/MVS/RectsBinPack.h"
    "F:/mcs2/openMVS/libs/MVS/Scene.h"
    "F:/mcs2/openMVS/libs/MVS/SceneDensify.h"
    "F:/mcs2/openMVS/libs/MVS/SemiGlobalMatcher.h"
    )
endif()

