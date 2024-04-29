# Install script for directory: F:/mcs2/openMVS/libs/Math

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
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/Program Files/OpenMVS/include/OpenMVS/Math/Common.h;C:/Program Files/OpenMVS/include/OpenMVS/Math/LBP.h;C:/Program Files/OpenMVS/include/OpenMVS/Math/RobustNorms.h;C:/Program Files/OpenMVS/include/OpenMVS/Math/SimilarityTransform.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "C:/Program Files/OpenMVS/include/OpenMVS/Math" TYPE FILE FILES
    "F:/mcs2/openMVS/libs/Math/Common.h"
    "F:/mcs2/openMVS/libs/Math/LBP.h"
    "F:/mcs2/openMVS/libs/Math/RobustNorms.h"
    "F:/mcs2/openMVS/libs/Math/SimilarityTransform.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/Program Files/OpenMVS/include/OpenMVS/Math/IBFS/IBFS.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "C:/Program Files/OpenMVS/include/OpenMVS/Math/IBFS" TYPE FILE FILES "F:/mcs2/openMVS/libs/Math/IBFS/IBFS.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/Program Files/OpenMVS/include/OpenMVS/Math/LMFit/lmmin.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "C:/Program Files/OpenMVS/include/OpenMVS/Math/LMFit" TYPE FILE FILES "F:/mcs2/openMVS/libs/Math/LMFit/lmmin.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/Program Files/OpenMVS/include/OpenMVS/Math/TRWS/MRFEnergy.h;C:/Program Files/OpenMVS/include/OpenMVS/Math/TRWS/MRFEnergy.inl;C:/Program Files/OpenMVS/include/OpenMVS/Math/TRWS/instances.h;C:/Program Files/OpenMVS/include/OpenMVS/Math/TRWS/minimize.inl;C:/Program Files/OpenMVS/include/OpenMVS/Math/TRWS/ordering.inl;C:/Program Files/OpenMVS/include/OpenMVS/Math/TRWS/treeProbabilities.inl;C:/Program Files/OpenMVS/include/OpenMVS/Math/TRWS/typeBinary.h;C:/Program Files/OpenMVS/include/OpenMVS/Math/TRWS/typeBinaryFast.h;C:/Program Files/OpenMVS/include/OpenMVS/Math/TRWS/typeGeneral.h;C:/Program Files/OpenMVS/include/OpenMVS/Math/TRWS/typePotts.h;C:/Program Files/OpenMVS/include/OpenMVS/Math/TRWS/typeTruncatedLinear.h;C:/Program Files/OpenMVS/include/OpenMVS/Math/TRWS/typeTruncatedLinear2D.h;C:/Program Files/OpenMVS/include/OpenMVS/Math/TRWS/typeTruncatedQuadratic.h;C:/Program Files/OpenMVS/include/OpenMVS/Math/TRWS/typeTruncatedQuadratic2D.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "C:/Program Files/OpenMVS/include/OpenMVS/Math/TRWS" TYPE FILE FILES
    "F:/mcs2/openMVS/libs/Math/TRWS/MRFEnergy.h"
    "F:/mcs2/openMVS/libs/Math/TRWS/MRFEnergy.inl"
    "F:/mcs2/openMVS/libs/Math/TRWS/instances.h"
    "F:/mcs2/openMVS/libs/Math/TRWS/minimize.inl"
    "F:/mcs2/openMVS/libs/Math/TRWS/ordering.inl"
    "F:/mcs2/openMVS/libs/Math/TRWS/treeProbabilities.inl"
    "F:/mcs2/openMVS/libs/Math/TRWS/typeBinary.h"
    "F:/mcs2/openMVS/libs/Math/TRWS/typeBinaryFast.h"
    "F:/mcs2/openMVS/libs/Math/TRWS/typeGeneral.h"
    "F:/mcs2/openMVS/libs/Math/TRWS/typePotts.h"
    "F:/mcs2/openMVS/libs/Math/TRWS/typeTruncatedLinear.h"
    "F:/mcs2/openMVS/libs/Math/TRWS/typeTruncatedLinear2D.h"
    "F:/mcs2/openMVS/libs/Math/TRWS/typeTruncatedQuadratic.h"
    "F:/mcs2/openMVS/libs/Math/TRWS/typeTruncatedQuadratic2D.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/Program Files/OpenMVS/lib/OpenMVS/Math.lib")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "C:/Program Files/OpenMVS/lib/OpenMVS" TYPE STATIC_LIBRARY FILES "F:/mcs2/openMVS/lib/vc17/x64/Debug/Math.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/Program Files/OpenMVS/lib/OpenMVS/Math.lib")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "C:/Program Files/OpenMVS/lib/OpenMVS" TYPE STATIC_LIBRARY FILES "F:/mcs2/openMVS/lib/vc17/x64/Release/Math.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/Program Files/OpenMVS/lib/OpenMVS/Math.lib")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "C:/Program Files/OpenMVS/lib/OpenMVS" TYPE STATIC_LIBRARY FILES "F:/mcs2/openMVS/lib/vc17/x64/MinSizeRel/Math.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/Program Files/OpenMVS/lib/OpenMVS/Math.lib")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "C:/Program Files/OpenMVS/lib/OpenMVS" TYPE STATIC_LIBRARY FILES "F:/mcs2/openMVS/lib/vc17/x64/RelWithDebInfo/Math.lib")
  endif()
endif()

