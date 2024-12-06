#----------------------------------------------------------------
# Generated CMake target import file for configuration "None".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Fcitx5::Core" for configuration "None"
set_property(TARGET Fcitx5::Core APPEND PROPERTY IMPORTED_CONFIGURATIONS NONE)
set_target_properties(Fcitx5::Core PROPERTIES
  IMPORTED_LOCATION_NONE "${_IMPORT_PREFIX}/lib/x86_64-linux-gnu/libFcitx5Core.so.5.0.21"
  IMPORTED_SONAME_NONE "libFcitx5Core.so.7"
  )

list(APPEND _cmake_import_check_targets Fcitx5::Core )
list(APPEND _cmake_import_check_files_for_Fcitx5::Core "${_IMPORT_PREFIX}/lib/x86_64-linux-gnu/libFcitx5Core.so.5.0.21" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
