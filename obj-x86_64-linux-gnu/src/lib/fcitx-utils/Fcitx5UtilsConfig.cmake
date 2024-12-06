
####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was Fcitx5UtilsConfig.cmake.in                            ########

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../../" ABSOLUTE)

# Use original install prefix when loaded through a "/usr move"
# cross-prefix symbolic link such as /lib -> /usr/lib.
get_filename_component(_realCurr "${CMAKE_CURRENT_LIST_DIR}" REALPATH)
get_filename_component(_realOrig "/usr/lib/x86_64-linux-gnu/cmake/Fcitx5Utils" REALPATH)
if(_realCurr STREQUAL _realOrig)
  set(PACKAGE_PREFIX_DIR "/usr")
endif()
unset(_realOrig)
unset(_realCurr)

macro(set_and_check _var _file)
  set(${_var} "${_file}")
  if(NOT EXISTS "${_file}")
    message(FATAL_ERROR "File or directory ${_file} referenced by variable ${_var} does not exist !")
  endif()
endmacro()

macro(check_required_components _NAME)
  foreach(comp ${${_NAME}_FIND_COMPONENTS})
    if(NOT ${_NAME}_${comp}_FOUND)
      if(${_NAME}_FIND_REQUIRED_${comp})
        set(${_NAME}_FOUND FALSE)
      endif()
    endif()
  endforeach()
endmacro()

####################################################################################

include("${CMAKE_CURRENT_LIST_DIR}/Fcitx5UtilsTargets.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/Fcitx5Macros.cmake")

set(FCITX_SYS_INSTALL_PREFIX "/usr")
set(FCITX_INSTALL_CMAKECONFIG_DIR "/usr/lib/x86_64-linux-gnu/cmake")

set(_default_FCITX_INSTALL_USE_FCITX_SYS_PATHS Off)
if (NOT DEFINED FCITX_INSTALL_USE_FCITX_SYS_PATHS)
    if (FCITX_SYS_INSTALL_PREFIX STREQUAL "${CMAKE_INSTALL_PREFIX}")
        message(STATUS "Installing in the same prefix as Fcitx, adopting their path scheme by default")
        set(_default_FCITX_INSTALL_USE_FCITX_SYS_PATHS On)
    endif()
endif()

option(FCITX_INSTALL_USE_FCITX_SYS_PATHS "Install addon files to Fcitx install dir" "${_default_FCITX_INSTALL_USE_FCITX_SYS_PATHS}")

if (FCITX_INSTALL_USE_FCITX_SYS_PATHS)
    set(FCITX_INSTALL_PREFIX "/usr")
    set(FCITX_INSTALL_INCLUDEDIR "/usr/include")
    set(FCITX_INSTALL_LIBDIR "/usr/lib/x86_64-linux-gnu")
    set(FCITX_INSTALL_LIBDATADIR "/home/xzl/work/fcitx5/fcitx5/lib/x86_64-linux-gnu")
    set(FCITX_INSTALL_LIBEXECDIR "/usr/libexec")
    set(FCITX_INSTALL_DATADIR "/usr/share")
    set(FCITX_INSTALL_PKGDATADIR "/usr/share/fcitx5")
    set(FCITX_INSTALL_BINDIR "/usr/bin")
    set(FCITX_INSTALL_LOCALEDIR "/usr/share/locale")
    set(FCITX_INSTALL_ADDONDIR "/usr/lib/x86_64-linux-gnu/fcitx5")
    set(FCITX_INSTALL_MODULE_HEADER_DIR "/usr/include/Fcitx5/Module/fcitx-module")
else()
    include(GNUInstallDirs)
    set(FCITX_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")
    set(FCITX_INSTALL_INCLUDEDIR "${CMAKE_INSTALL_FULL_INCLUDEDIR}")
    set(FCITX_INSTALL_LIBDIR "${CMAKE_INSTALL_FULL_LIBDIR}")
    set(FCITX_INSTALL_LIBDATADIR "${CMAKE_INSTALL_FULL_LIBDIR}")
    set(FCITX_INSTALL_LIBEXECDIR "${CMAKE_INSTALL_FULL_LIBEXECDIR}")
    set(FCITX_INSTALL_DATADIR "${CMAKE_INSTALL_FULL_DATADIR}")
    set(FCITX_INSTALL_PKGDATADIR "${CMAKE_INSTALL_FULL_DATADIR}/fcitx5")
    set(FCITX_INSTALL_BINDIR "${CMAKE_INSTALL_FULL_BINDIR}")
    set(FCITX_INSTALL_LOCALEDIR "${CMAKE_INSTALL_FULL_LOCALEDIR}")
    set(FCITX_INSTALL_ADDONDIR "${CMAKE_INSTALL_FULL_LIBDIR}/fcitx5")
    set(FCITX_INSTALL_MODULE_HEADER_DIR "${CMAKE_INSTALL_FULL_INCLUDEDIR}/Fcitx5/Module/fcitx-module")
endif()
