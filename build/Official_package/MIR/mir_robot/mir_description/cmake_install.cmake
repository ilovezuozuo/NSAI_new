# Install script for directory: /home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_description

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/inexbot/NSAI_new/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/inexbot/NSAI_new/build/Official_package/MIR/mir_robot/mir_description/catkin_generated/installspace/mir_description.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mir_description/cmake" TYPE FILE FILES
    "/home/inexbot/NSAI_new/build/Official_package/MIR/mir_robot/mir_description/catkin_generated/installspace/mir_descriptionConfig.cmake"
    "/home/inexbot/NSAI_new/build/Official_package/MIR/mir_robot/mir_description/catkin_generated/installspace/mir_descriptionConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mir_description" TYPE FILE FILES "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_description/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mir_description" TYPE DIRECTORY FILES
    "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_description/config"
    "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_description/launch"
    "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_description/meshes"
    "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_description/rviz"
    "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_description/urdf"
    )
endif()

