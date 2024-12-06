/*
 * SPDX-FileCopyrightText: 2017-2017 CSSlayer <wengxt@gmail.com>
 *
 * SPDX-License-Identifier: LGPL-2.1-or-later
 *
 */
#ifndef _FCITX5_CONFIG_H_IN_
#define _FCITX5_CONFIG_H_IN_

#define FCITX_INSTALL_LIBDIR "/usr/lib/x86_64-linux-gnu"
#define FCITX_INSTALL_LIBDATADIR "/home/xzl/work/fcitx5/fcitx5/lib/x86_64-linux-gnu"
#define FCITX_INSTALL_LIBEXECDIR "/usr/libexec"
#define FCITX_INSTALL_DATADIR "/usr/share"
#define FCITX_INSTALL_PKGDATADIR "/usr/share/fcitx5"
#define FCITX_INSTALL_BINDIR "/usr/bin"
#define FCITX_INSTALL_LOCALEDIR "/usr/share/locale"
#define FCITX_INSTALL_ADDONDIR "/usr/lib/x86_64-linux-gnu/fcitx5"
#define FCITX_LIBRARY_SUFFIX ".so"
#define FCITX_VERSION_STRING "5.0.21"

#define ISOCODES_ISO639_JSON "/usr/share/iso-codes/json/iso_639-3.json"
#define ISOCODES_ISO3166_JSON "/usr/share/iso-codes/json/iso_3166-1.json"
#define XKEYBOARDCONFIG_XKBBASE "/usr/share/X11/xkb"
#define DEFAULT_XKB_RULES "evdev"
#define NO_PREEDIT_APPS "gvim.*,wps.*,wpp.*,et.*"
#define ENABLE_LIBUUID
#define ENABLE_DBUS
#define ENABLE_KEYBOARD

#define EXECINFO_FOUND

/* #undef ENCHANT_FOUND */
#define ENABLE_ENCHANT
/* #undef PRESAGE_FOUND */
/* #undef ENABLE_PRESAGE */
/* #undef LIBKVM_FOUND */

/* #undef CAIRO_EGL_FOUND */
#define ENABLE_X11
#define WAYLAND_FOUND
#define HAS_DLMOPEN
/* #undef USE_FLATPAK_ICON */
#define XKEYBOARDCONFIG_DATADIR "/usr/share"
#define DBUS_SYSTEM_BUS_DEFAULT_ADDRESS ""

#define HAVE_PIPE2

#ifndef _GNU_SOURCE
#define _GNU_SOURCE
#endif

#endif // _FCITX5_CONFIG_H_IN_
