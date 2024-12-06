if (TARGET Fcitx5::Module::Unicode AND TARGET unicode-interface)
    return()
endif()

add_library(unicode-interface INTERFACE)
add_library(Fcitx5::Module::Unicode ALIAS unicode-interface)
set_target_properties(unicode-interface PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "/usr/include/Fcitx5/Module/fcitx-module/unicode")
