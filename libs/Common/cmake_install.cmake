# Install script for directory: F:/mcs2/openMVS/libs/Common

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
     "C:/Program Files/OpenMVS/lib/OpenMVS/Common.lib")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "C:/Program Files/OpenMVS/lib/OpenMVS" TYPE STATIC_LIBRARY FILES "F:/mcs2/openMVS/lib/vc17/x64/Debug/Common.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/Program Files/OpenMVS/lib/OpenMVS/Common.lib")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "C:/Program Files/OpenMVS/lib/OpenMVS" TYPE STATIC_LIBRARY FILES "F:/mcs2/openMVS/lib/vc17/x64/Release/Common.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/Program Files/OpenMVS/lib/OpenMVS/Common.lib")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "C:/Program Files/OpenMVS/lib/OpenMVS" TYPE STATIC_LIBRARY FILES "F:/mcs2/openMVS/lib/vc17/x64/MinSizeRel/Common.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/Program Files/OpenMVS/lib/OpenMVS/Common.lib")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "C:/Program Files/OpenMVS/lib/OpenMVS" TYPE STATIC_LIBRARY FILES "F:/mcs2/openMVS/lib/vc17/x64/RelWithDebInfo/Common.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/Program Files/OpenMVS/include/OpenMVS/Common/AABB.h;C:/Program Files/OpenMVS/include/OpenMVS/Common/AABB.inl;C:/Program Files/OpenMVS/include/OpenMVS/Common/AutoEstimator.h;C:/Program Files/OpenMVS/include/OpenMVS/Common/AutoPtr.h;C:/Program Files/OpenMVS/include/OpenMVS/Common/Common.h;C:/Program Files/OpenMVS/include/OpenMVS/Common/Config.h;C:/Program Files/OpenMVS/include/OpenMVS/Common/ConfigTable.h;C:/Program Files/OpenMVS/include/OpenMVS/Common/CriticalSection.h;C:/Program Files/OpenMVS/include/OpenMVS/Common/EventQueue.h;C:/Program Files/OpenMVS/include/OpenMVS/Common/FastDelegate.h;C:/Program Files/OpenMVS/include/OpenMVS/Common/FastDelegateBind.h;C:/Program Files/OpenMVS/include/OpenMVS/Common/FastDelegateCPP11.h;C:/Program Files/OpenMVS/include/OpenMVS/Common/File.h;C:/Program Files/OpenMVS/include/OpenMVS/Common/Filters.h;C:/Program Files/OpenMVS/include/OpenMVS/Common/HTMLDoc.h;C:/Program Files/OpenMVS/include/OpenMVS/Common/HalfFloat.h;C:/Program Files/OpenMVS/include/OpenMVS/Common/Hash.h;C:/Program Files/OpenMVS/include/OpenMVS/Common/Line.h;C:/Program Files/OpenMVS/include/OpenMVS/Common/Line.inl;C:/Program Files/OpenMVS/include/OpenMVS/Common/LinkLib.h;C:/Program Files/OpenMVS/include/OpenMVS/Common/List.h;C:/Program Files/OpenMVS/include/OpenMVS/Common/Log.h;C:/Program Files/OpenMVS/include/OpenMVS/Common/MemFile.h;C:/Program Files/OpenMVS/include/OpenMVS/Common/OBB.h;C:/Program Files/OpenMVS/include/OpenMVS/Common/OBB.inl;C:/Program Files/OpenMVS/include/OpenMVS/Common/Octree.h;C:/Program Files/OpenMVS/include/OpenMVS/Common/Octree.inl;C:/Program Files/OpenMVS/include/OpenMVS/Common/Plane.h;C:/Program Files/OpenMVS/include/OpenMVS/Common/Plane.inl;C:/Program Files/OpenMVS/include/OpenMVS/Common/Queue.h;C:/Program Files/OpenMVS/include/OpenMVS/Common/Random.h;C:/Program Files/OpenMVS/include/OpenMVS/Common/Ray.h;C:/Program Files/OpenMVS/include/OpenMVS/Common/Ray.inl;C:/Program Files/OpenMVS/include/OpenMVS/Common/Rotation.h;C:/Program Files/OpenMVS/include/OpenMVS/Common/Rotation.inl;C:/Program Files/OpenMVS/include/OpenMVS/Common/SML.h;C:/Program Files/OpenMVS/include/OpenMVS/Common/Sampler.inl;C:/Program Files/OpenMVS/include/OpenMVS/Common/Semaphore.h;C:/Program Files/OpenMVS/include/OpenMVS/Common/SharedPtr.h;C:/Program Files/OpenMVS/include/OpenMVS/Common/Sphere.h;C:/Program Files/OpenMVS/include/OpenMVS/Common/Sphere.inl;C:/Program Files/OpenMVS/include/OpenMVS/Common/Streams.h;C:/Program Files/OpenMVS/include/OpenMVS/Common/Strings.h;C:/Program Files/OpenMVS/include/OpenMVS/Common/Thread.h;C:/Program Files/OpenMVS/include/OpenMVS/Common/Timer.h;C:/Program Files/OpenMVS/include/OpenMVS/Common/Types.h;C:/Program Files/OpenMVS/include/OpenMVS/Common/Types.inl;C:/Program Files/OpenMVS/include/OpenMVS/Common/Util.h;C:/Program Files/OpenMVS/include/OpenMVS/Common/Util.inl;C:/Program Files/OpenMVS/include/OpenMVS/Common/UtilCUDA.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "C:/Program Files/OpenMVS/include/OpenMVS/Common" TYPE FILE FILES
    "F:/mcs2/openMVS/libs/Common/AABB.h"
    "F:/mcs2/openMVS/libs/Common/AABB.inl"
    "F:/mcs2/openMVS/libs/Common/AutoEstimator.h"
    "F:/mcs2/openMVS/libs/Common/AutoPtr.h"
    "F:/mcs2/openMVS/libs/Common/Common.h"
    "F:/mcs2/openMVS/libs/Common/Config.h"
    "F:/mcs2/openMVS/libs/Common/ConfigTable.h"
    "F:/mcs2/openMVS/libs/Common/CriticalSection.h"
    "F:/mcs2/openMVS/libs/Common/EventQueue.h"
    "F:/mcs2/openMVS/libs/Common/FastDelegate.h"
    "F:/mcs2/openMVS/libs/Common/FastDelegateBind.h"
    "F:/mcs2/openMVS/libs/Common/FastDelegateCPP11.h"
    "F:/mcs2/openMVS/libs/Common/File.h"
    "F:/mcs2/openMVS/libs/Common/Filters.h"
    "F:/mcs2/openMVS/libs/Common/HTMLDoc.h"
    "F:/mcs2/openMVS/libs/Common/HalfFloat.h"
    "F:/mcs2/openMVS/libs/Common/Hash.h"
    "F:/mcs2/openMVS/libs/Common/Line.h"
    "F:/mcs2/openMVS/libs/Common/Line.inl"
    "F:/mcs2/openMVS/libs/Common/LinkLib.h"
    "F:/mcs2/openMVS/libs/Common/List.h"
    "F:/mcs2/openMVS/libs/Common/Log.h"
    "F:/mcs2/openMVS/libs/Common/MemFile.h"
    "F:/mcs2/openMVS/libs/Common/OBB.h"
    "F:/mcs2/openMVS/libs/Common/OBB.inl"
    "F:/mcs2/openMVS/libs/Common/Octree.h"
    "F:/mcs2/openMVS/libs/Common/Octree.inl"
    "F:/mcs2/openMVS/libs/Common/Plane.h"
    "F:/mcs2/openMVS/libs/Common/Plane.inl"
    "F:/mcs2/openMVS/libs/Common/Queue.h"
    "F:/mcs2/openMVS/libs/Common/Random.h"
    "F:/mcs2/openMVS/libs/Common/Ray.h"
    "F:/mcs2/openMVS/libs/Common/Ray.inl"
    "F:/mcs2/openMVS/libs/Common/Rotation.h"
    "F:/mcs2/openMVS/libs/Common/Rotation.inl"
    "F:/mcs2/openMVS/libs/Common/SML.h"
    "F:/mcs2/openMVS/libs/Common/Sampler.inl"
    "F:/mcs2/openMVS/libs/Common/Semaphore.h"
    "F:/mcs2/openMVS/libs/Common/SharedPtr.h"
    "F:/mcs2/openMVS/libs/Common/Sphere.h"
    "F:/mcs2/openMVS/libs/Common/Sphere.inl"
    "F:/mcs2/openMVS/libs/Common/Streams.h"
    "F:/mcs2/openMVS/libs/Common/Strings.h"
    "F:/mcs2/openMVS/libs/Common/Thread.h"
    "F:/mcs2/openMVS/libs/Common/Timer.h"
    "F:/mcs2/openMVS/libs/Common/Types.h"
    "F:/mcs2/openMVS/libs/Common/Types.inl"
    "F:/mcs2/openMVS/libs/Common/Util.h"
    "F:/mcs2/openMVS/libs/Common/Util.inl"
    "F:/mcs2/openMVS/libs/Common/UtilCUDA.h"
    )
endif()

