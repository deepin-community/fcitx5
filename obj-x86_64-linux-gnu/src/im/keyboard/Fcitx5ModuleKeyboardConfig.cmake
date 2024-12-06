if (TARGET Fcitx5::Module::Keyboard AND TARGET keyboard-interface)
    return()
endif()

add_library(keyboard-interface INTERFACE)
add_library(Fcitx5::Module::Keyboard ALIAS keyboard-interface)
set_target_properties(keyboard-interface PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "/usr/include/Fcitx5/Module/fcitx-module/keyboard")
