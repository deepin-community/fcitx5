#!/bin/sh
#
# SPDX-FileCopyrightText: 2024 Boyuan Yang <byang@debian.org>
# SPDX-License-Identifier: CC0-1.0

main()
{
    if [ "x$(basename $(pwd))" = "xmaint" ]; then
        cd ../../ ;
    fi
    if [ "x$(basename $(pwd))" = "xdebian" ]; then
        cd ../ ;
    fi
    printf "Patching data/fcitx5-configtool.sh ...\n" ;
    find data -name "fcitx5-configtool.sh" -exec sed -i 's/kde-config-fcitx/kde-config-fcitx5/g' {} + ;
    printf "Patching po/*.po and po/*.pot ...\n" ;
    find po -name "*.po" -exec sed -i 's/kde-config-fcitx/kde-config-fcitx5/g' {} + ;
    find po -name "*.pot" -exec sed -i 's/kde-config-fcitx/kde-config-fcitx5/g' {} + ;
    printf "Done!\n"
    return
}


( main ; )
