if (TARGET Fcitx5::Module::TestIM AND TARGET testim-interface)
    return()
endif()

add_library(testim-interface INTERFACE)
add_library(Fcitx5::Module::TestIM ALIAS testim-interface)
set_target_properties(testim-interface PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "/usr/include/Fcitx5/Module/fcitx-module/testim")
