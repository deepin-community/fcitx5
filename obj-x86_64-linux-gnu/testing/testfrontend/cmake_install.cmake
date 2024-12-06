# Install script for directory: /home/xzl/work/fcitx5/fcitx5/testing/testfrontend

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
  if(EXISTS "$ENV{DESTDIR}/usr/lib/x86_64-linux-gnu/fcitx5/libtestfrontend.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/lib/x86_64-linux-gnu/fcitx5/libtestfrontend.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/lib/x86_64-linux-gnu/fcitx5/libtestfrontend.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/lib/x86_64-linux-gnu/fcitx5/libtestfrontend.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/lib/x86_64-linux-gnu/fcitx5" TYPE MODULE FILES "/home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/testing/testfrontend/libtestfrontend.so")
  if(EXISTS "$ENV{DESTDIR}/usr/lib/x86_64-linux-gnu/fcitx5/libtestfrontend.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/lib/x86_64-linux-gnu/fcitx5/libtestfrontend.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/usr/lib/x86_64-linux-gnu/fcitx5/libtestfrontend.so"
         OLD_RPATH "/home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/lib/fcitx:/home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/lib/fcitx-config:/home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/src/lib/fcitx-utils:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/lib/x86_64-linux-gnu/fcitx5/libtestfrontend.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/testing/testfrontend/CMakeFiles/testfrontend.dir/install-cxx-module-bmi-None.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/share/fcitx5/testing/addon/testfrontend.conf")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/share/fcitx5/testing/addon" TYPE FILE FILES "/home/xzl/work/fcitx5/fcitx5/testing/testfrontend/testfrontend.conf")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/lib/x86_64-linux-gnu/cmake/Fcitx5ModuleTestFrontend/Fcitx5ModuleTestFrontendConfig.cmake;/usr/lib/x86_64-linux-gnu/cmake/Fcitx5ModuleTestFrontend/Fcitx5ModuleTestFrontendConfigVersion.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/lib/x86_64-linux-gnu/cmake/Fcitx5ModuleTestFrontend" TYPE FILE FILES
    "/home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/testing/testfrontend/Fcitx5ModuleTestFrontendConfig.cmake"
    "/home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/testing/testfrontend/Fcitx5ModuleTestFrontendConfigVersion.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/include/Fcitx5/Module/fcitx-module/testfrontend/testfrontend_public.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/include/Fcitx5/Module/fcitx-module/testfrontend" TYPE FILE FILES "/home/xzl/work/fcitx5/fcitx5/testing/testfrontend/testfrontend_public.h")
endif()

