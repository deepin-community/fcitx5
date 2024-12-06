if (TARGET Fcitx5::Module::TestFrontend AND TARGET testfrontend-interface)
    return()
endif()

add_library(testfrontend-interface INTERFACE)
add_library(Fcitx5::Module::TestFrontend ALIAS testfrontend-interface)
set_target_properties(testfrontend-interface PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "/usr/include/Fcitx5/Module/fcitx-module/testfrontend")
