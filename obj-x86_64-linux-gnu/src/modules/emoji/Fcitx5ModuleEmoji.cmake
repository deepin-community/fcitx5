if (TARGET Fcitx5::Module::Emoji AND TARGET emoji-interface)
    return()
endif()

add_library(emoji-interface INTERFACE)
add_library(Fcitx5::Module::Emoji ALIAS emoji-interface)
set_target_properties(emoji-interface PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "/usr/include/Fcitx5/Module/fcitx-module/emoji")
