if (TARGET Fcitx5::Module::XCB AND TARGET xcb-interface)
    return()
endif()

add_library(xcb-interface INTERFACE)
add_library(Fcitx5::Module::XCB ALIAS xcb-interface)
set_target_properties(xcb-interface PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "/usr/include/Fcitx5/Module/fcitx-module/xcb")
