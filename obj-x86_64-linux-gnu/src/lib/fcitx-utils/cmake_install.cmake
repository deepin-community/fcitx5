# Install script for directory: /home/xzl/work/fcitx5/fcitx5/src/lib/fcitx-utils

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/x86_64-linux-gnu/libFcitx5Utils.so.5.0.21"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/x86_64-linux-gnu/libFcitx5Utils.so.2"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/x86_64-linux-gnu" TYPE SHARED_LIBRARY FILES
    "/home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/lib/fcitx-utils/libFcitx5Utils.so.5.0.21"
    "/home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/lib/fcitx-utils/libFcitx5Utils.so.2"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/x86_64-linux-gnu/libFcitx5Utils.so.5.0.21"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/x86_64-linux-gnu/libFcitx5Utils.so.2"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/x86_64-linux-gnu" TYPE SHARED_LIBRARY FILES "/home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/lib/fcitx-utils/libFcitx5Utils.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/x86_64-linux-gnu/pkgconfig" TYPE FILE FILES "/home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/lib/fcitx-utils/Fcitx5Utils.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Fcitx5/Utils/fcitx-utils" TYPE FILE FILES
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx-utils/macros.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx-utils/stringutils.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx-utils/stringutils_details.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx-utils/key.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx-utils/color.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx-utils/i18nstring.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx-utils/event.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx-utils/eventdispatcher.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx-utils/library.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx-utils/cutf8.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx-utils/fs.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx-utils/standardpath.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx-utils/tuplehelpers.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx-utils/metastring.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx-utils/unixfd.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx-utils/trackableobject.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx-utils/connectableobject.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx-utils/flags.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx-utils/keysym.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx-utils/keysymgen.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx-utils/signals.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx-utils/signals_details.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx-utils/handlertable.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx-utils/handlertable_details.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx-utils/intrusivelist.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx-utils/misc.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx-utils/utf8.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx-utils/cutf8.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx-utils/element.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx-utils/rect.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx-utils/charutils.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx-utils/i18n.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx-utils/capabilityflags.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx-utils/textformatflags.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx-utils/inputbuffer.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx-utils/log.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx-utils/testing.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx-utils/semver.h"
    "/home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/lib/fcitx-utils/fcitxutils_export.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Fcitx5/Utils/fcitx-utils/dbus" TYPE FILE FILES
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx-utils/dbus/message.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx-utils/dbus/objectvtable.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx-utils/dbus/bus.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx-utils/dbus/message_details.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx-utils/dbus/servicewatcher.h"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx-utils/dbus/matchrule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/x86_64-linux-gnu/cmake/Fcitx5Utils/Fcitx5UtilsTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/x86_64-linux-gnu/cmake/Fcitx5Utils/Fcitx5UtilsTargets.cmake"
         "/home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/lib/fcitx-utils/CMakeFiles/Export/8bc8e7015bf2564f31c31b9e42db61db/Fcitx5UtilsTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/x86_64-linux-gnu/cmake/Fcitx5Utils/Fcitx5UtilsTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/x86_64-linux-gnu/cmake/Fcitx5Utils/Fcitx5UtilsTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/x86_64-linux-gnu/cmake/Fcitx5Utils" TYPE FILE FILES "/home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/lib/fcitx-utils/CMakeFiles/Export/8bc8e7015bf2564f31c31b9e42db61db/Fcitx5UtilsTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Nn][Oo][Nn][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/x86_64-linux-gnu/cmake/Fcitx5Utils" TYPE FILE FILES "/home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/lib/fcitx-utils/CMakeFiles/Export/8bc8e7015bf2564f31c31b9e42db61db/Fcitx5UtilsTargets-none.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/x86_64-linux-gnu/cmake/Fcitx5Utils" TYPE FILE FILES
    "/home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/lib/fcitx-utils/Fcitx5UtilsConfig.cmake"
    "/home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/lib/fcitx-utils/Fcitx5UtilsConfigVersion.cmake"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx-utils/Fcitx5Macros.cmake"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx-utils/Fcitx5Download.cmake.in"
    "/home/xzl/work/fcitx5/fcitx5/src/lib/fcitx-utils/Fcitx5ModuleTemplate.cmake.in"
    "/home/xzl/work/fcitx5/fcitx5/cmake/Fcitx5CompilerSettings.cmake"
    )
endif()

