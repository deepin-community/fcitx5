if(NOT EXISTS "/home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/install_manifest.txt")
    message(FATAL_ERROR "Cannot find install manifest: /home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/install_manifest.txt")
endif()

file(READ "/home/xzl/work/fcitx5/fcitx5/obj-x86_64-linux-gnu/install_manifest.txt" files)
string(REGEX REPLACE "\n" ";" files "${files}")
foreach(file ${files})
    message(STATUS "Uninstalling $ENV{DESTDIR}${file}")
    if(IS_SYMLINK "$ENV{DESTDIR}${file}" OR EXISTS "$ENV{DESTDIR}${file}")
        execute_process(
            COMMAND "/usr/bin/cmake" -E remove "$ENV{DESTDIR}${file}"
            RESULT_VARIABLE rm_retval
            )
        if(NOT "${rm_retval}" STREQUAL 0)
            message(FATAL_ERROR "Problem when removing $ENV{DESTDIR}${file}")
        endif()
    else()
        message(STATUS "File $ENV{DESTDIR}${file} does not exist.")
    endif()
endforeach()