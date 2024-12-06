if (TARGET Fcitx5::Module::NotificationItem AND TARGET notificationitem-interface)
    return()
endif()

add_library(notificationitem-interface INTERFACE)
add_library(Fcitx5::Module::NotificationItem ALIAS notificationitem-interface)
set_target_properties(notificationitem-interface PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "/usr/include/Fcitx5/Module/fcitx-module/notificationitem")
