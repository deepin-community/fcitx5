# Install script for directory: /home/xzl/work/fcitx5/fcitx5/src/modules

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "None")
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

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/x86_64-linux-gnu/cmake/Fcitx5Module" TYPE FILE FILES
    "/home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/modules/Fcitx5ModuleConfigVersion.cmake"
    "/home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/modules/Fcitx5ModuleConfig.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/x86_64-linux-gnu/pkgconfig" TYPE FILE FILES "/home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/modules/Fcitx5Module.pc")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/modules/xcb/cmake_install.cmake")
  include("/home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/modules/dbus/cmake_install.cmake")
  include("/home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/modules/notifications/cmake_install.cmake")
  include("/home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/modules/notificationitem/cmake_install.cmake")
  include("/home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/modules/wayland/cmake_install.cmake")
  include("/home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/modules/spell/cmake_install.cmake")
  include("/home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/modules/quickphrase/cmake_install.cmake")
  include("/home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/modules/unicode/cmake_install.cmake")
  include("/home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/modules/clipboard/cmake_install.cmake")
  include("/home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/modules/emoji/cmake_install.cmake")
  include("/home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/modules/imselector/cmake_install.cmake")

endif()

