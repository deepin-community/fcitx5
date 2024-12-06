
#ifndef FCITXCONFIG_EXPORT_H
#define FCITXCONFIG_EXPORT_H

#ifdef FCITXCONFIG_STATIC_DEFINE
#  define FCITXCONFIG_EXPORT
#  define FCITXCONFIG_NO_EXPORT
#else
#  ifndef FCITXCONFIG_EXPORT
#    ifdef Fcitx5Config_EXPORTS
        /* We are building this library */
#      define FCITXCONFIG_EXPORT __attribute__((visibility("default")))
#    else
        /* We are using this library */
#      define FCITXCONFIG_EXPORT __attribute__((visibility("default")))
#    endif
#  endif

#  ifndef FCITXCONFIG_NO_EXPORT
#    define FCITXCONFIG_NO_EXPORT __attribute__((visibility("hidden")))
#  endif
#endif

#ifndef FCITXCONFIG_DEPRECATED
#  define FCITXCONFIG_DEPRECATED __attribute__ ((__deprecated__))
#endif

#ifndef FCITXCONFIG_DEPRECATED_EXPORT
#  define FCITXCONFIG_DEPRECATED_EXPORT FCITXCONFIG_EXPORT FCITXCONFIG_DEPRECATED
#endif

#ifndef FCITXCONFIG_DEPRECATED_NO_EXPORT
#  define FCITXCONFIG_DEPRECATED_NO_EXPORT FCITXCONFIG_NO_EXPORT FCITXCONFIG_DEPRECATED
#endif

/* NOLINTNEXTLINE(readability-avoid-unconditional-preprocessor-if) */
#if 0 /* DEFINE_NO_DEPRECATED */
#  ifndef FCITXCONFIG_NO_DEPRECATED
#    define FCITXCONFIG_NO_DEPRECATED
#  endif
#endif

#endif /* FCITXCONFIG_EXPORT_H */
