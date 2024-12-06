if (TARGET Fcitx5::Module::Notifications AND TARGET notifications-interface)
    return()
endif()

add_library(notifications-interface INTERFACE)
add_library(Fcitx5::Module::Notifications ALIAS notifications-interface)
set_target_properties(notifications-interface PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "/usr/include/Fcitx5/Module/fcitx-module/notifications")
