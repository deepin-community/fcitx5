#----------------------------------------------------------------
# Generated CMake target import file for configuration "None".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Fcitx5::Config" for configuration "None"
set_property(TARGET Fcitx5::Config APPEND PROPERTY IMPORTED_CONFIGURATIONS NONE)
set_target_properties(Fcitx5::Config PROPERTIES
  IMPORTED_LOCATION_NONE "${_IMPORT_PREFIX}/lib/x86_64-linux-gnu/libFcitx5Config.so.5.0.21"
  IMPORTED_SONAME_NONE "libFcitx5Config.so.6"
  )

list(APPEND _cmake_import_check_targets Fcitx5::Config )
list(APPEND _cmake_import_check_files_for_Fcitx5::Config "${_IMPORT_PREFIX}/lib/x86_64-linux-gnu/libFcitx5Config.so.5.0.21" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
