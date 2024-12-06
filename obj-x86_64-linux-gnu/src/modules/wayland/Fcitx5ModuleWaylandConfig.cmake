if (TARGET Fcitx5::Module::Wayland AND TARGET wayland-interface)
    return()
endif()

add_library(wayland-interface INTERFACE)
add_library(Fcitx5::Module::Wayland ALIAS wayland-interface)
set_target_properties(wayland-interface PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "/usr/include/Fcitx5/Module/fcitx-module/wayland")
