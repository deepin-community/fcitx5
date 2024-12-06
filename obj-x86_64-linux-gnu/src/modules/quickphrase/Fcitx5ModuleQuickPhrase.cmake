if (TARGET Fcitx5::Module::QuickPhrase AND TARGET quickphrase-interface)
    return()
endif()

add_library(quickphrase-interface INTERFACE)
add_library(Fcitx5::Module::QuickPhrase ALIAS quickphrase-interface)
set_target_properties(quickphrase-interface PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "/usr/include/Fcitx5/Module/fcitx-module/quickphrase")
