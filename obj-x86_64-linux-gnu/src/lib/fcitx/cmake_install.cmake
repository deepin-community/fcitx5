# Install script for directory: /home/xzl/work/fcitx5/fcitx5/src/lib/fcitx

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

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/x86_64-linux-gnu/libFcitx5Core.so.5.0.21"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/x86_64-linux-gnu/libFcitx5Core.so.7"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/x86_64-linux-gnu" TYPE SHARED_LIBRARY FILES
    "/home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/lib/fcitx/libFcitx5Core.so.5.0.21"
    "/home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/lib/fcitx/libFcitx5Core.so.7"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/x86_64-linux-gnu/libFcitx5Core.so.5.0.21"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/x86_64-linux-gnu/libFcitx5Core.so.7"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/lib/fcitx-config:/home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/lib/fcitx-utils:"
           NEW_RPATH "")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/x86_64-linux-gnu" TYPE SHARED_LIBRARY FILES "/home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/lib/fcitx/libFcitx5Core.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/x86_64-linux-gnu/pkgconfig" TYPE FILE FILES "/home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/lib/fcitx/Fcitx5Core.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Fcitx5/Core/fcitx" TYPE FILE FILES
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx/addoninfo.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx/addoninstance.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx/addoninstance_details.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx/addonfactory.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx/instance.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx/inputcontextmanager.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx/inputcontext.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx/inputcontextproperty.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx/inputpanel.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx/candidatelist.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx/focusgroup.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx/surroundingtext.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx/addonloader.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx/addonmanager.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx/inputmethodmanager.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx/inputmethodgroup.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx/inputmethodengine.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx/inputmethodentry.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx/globalconfig.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx/text.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx/event.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx/action.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx/menu.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx/userinterface.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx/userinterfacemanager.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx/icontheme.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx/statusarea.h"
    "/home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/lib/fcitx/fcitxcore_export.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/x86_64-linux-gnu/cmake/Fcitx5Core/Fcitx5CoreTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/x86_64-linux-gnu/cmake/Fcitx5Core/Fcitx5CoreTargets.cmake"
         "/home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/lib/fcitx/CMakeFiles/Export/45c4c3ded66aabc1dd7be4262317c466/Fcitx5CoreTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/x86_64-linux-gnu/cmake/Fcitx5Core/Fcitx5CoreTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/x86_64-linux-gnu/cmake/Fcitx5Core/Fcitx5CoreTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/x86_64-linux-gnu/cmake/Fcitx5Core" TYPE FILE FILES "/home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/lib/fcitx/CMakeFiles/Export/45c4c3ded66aabc1dd7be4262317c466/Fcitx5CoreTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Nn][Oo][Nn][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/x86_64-linux-gnu/cmake/Fcitx5Core" TYPE FILE FILES "/home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/lib/fcitx/CMakeFiles/Export/45c4c3ded66aabc1dd7be4262317c466/Fcitx5CoreTargets-none.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/x86_64-linux-gnu/cmake/Fcitx5Core" TYPE FILE FILES
    "/home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/lib/fcitx/Fcitx5CoreConfig.cmake"
    "/home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/lib/fcitx/Fcitx5CoreConfigVersion.cmake"
    )
endif()

