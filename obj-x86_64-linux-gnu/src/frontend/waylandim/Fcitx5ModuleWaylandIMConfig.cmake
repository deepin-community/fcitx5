if (TARGET Fcitx5::Module::WaylandIM AND TARGET waylandim-interface)
    return()
endif()

add_library(waylandim-interface INTERFACE)
add_library(Fcitx5::Module::WaylandIM ALIAS waylandim-interface)
set_target_properties(waylandim-interface PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "/usr/include/Fcitx5/Module/fcitx-module/waylandim")
