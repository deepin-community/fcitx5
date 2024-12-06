if (TARGET Fcitx5::Module::Spell AND TARGET spell-interface)
    return()
endif()

add_library(spell-interface INTERFACE)
add_library(Fcitx5::Module::Spell ALIAS spell-interface)
set_target_properties(spell-interface PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "/usr/include/Fcitx5/Module/fcitx-module/spell")
