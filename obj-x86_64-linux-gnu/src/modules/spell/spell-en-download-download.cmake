if (NOT EXISTS "/home/xzl/work/fcitx5/fcitx5/src/modules/spell/en_dict-20121020.tar.gz")
    message(STATUS "Downloading 'https://download.fcitx-im.org/data/en_dict-20121020.tar.gz' to '/home/xzl/work/fcitx5/fcitx5/src/modules/spell/en_dict-20121020.tar.gz'...")
    file(DOWNLOAD
         "https://download.fcitx-im.org/data/en_dict-20121020.tar.gz"
         "/home/xzl/work/fcitx5/fcitx5/src/modules/spell/en_dict-20121020.tar.gz"
         EXPECTED_HASH SHA256=c44a5d7847925eea9e4d2d04748d442cd28dd9299a0b572ef7d91eac4f5a6ceb
         TLS_VERIFY ON
         SHOW_PROGRESS)
else()
    file(SHA256 "/home/xzl/work/fcitx5/fcitx5/src/modules/spell/en_dict-20121020.tar.gz" actual_value)
    if(NOT "${actual_value}" STREQUAL "c44a5d7847925eea9e4d2d04748d442cd28dd9299a0b572ef7d91eac4f5a6ceb")
        message(STATUS "File exists but hash doesn't match, removing...")
        file(REMOVE "/home/xzl/work/fcitx5/fcitx5/src/modules/spell/en_dict-20121020.tar.gz")
    endif()
endif()
