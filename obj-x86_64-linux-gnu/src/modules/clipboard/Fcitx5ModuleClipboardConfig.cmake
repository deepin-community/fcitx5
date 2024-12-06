if (TARGET Fcitx5::Module::Clipboard AND TARGET clipboard-interface)
    return()
endif()

add_library(clipboard-interface INTERFACE)
add_library(Fcitx5::Module::Clipboard ALIAS clipboard-interface)
set_target_properties(clipboard-interface PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "/usr/include/Fcitx5/Module/fcitx-module/clipboard")
