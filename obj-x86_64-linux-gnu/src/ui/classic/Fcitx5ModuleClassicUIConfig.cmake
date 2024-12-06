if (TARGET Fcitx5::Module::ClassicUI AND TARGET classicui-interface)
    return()
endif()

add_library(classicui-interface INTERFACE)
add_library(Fcitx5::Module::ClassicUI ALIAS classicui-interface)
set_target_properties(classicui-interface PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "/usr/include/Fcitx5/Module/fcitx-module/classicui")
