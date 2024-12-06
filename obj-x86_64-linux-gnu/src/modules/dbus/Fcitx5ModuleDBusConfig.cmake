if (TARGET Fcitx5::Module::DBus AND TARGET dbus-interface)
    return()
endif()

add_library(dbus-interface INTERFACE)
add_library(Fcitx5::Module::DBus ALIAS dbus-interface)
set_target_properties(dbus-interface PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "/usr/include/Fcitx5/Module/fcitx-module/dbus")
