
#ifndef FCITXCORE_EXPORT_H
#define FCITXCORE_EXPORT_H

#ifdef FCITXCORE_STATIC_DEFINE
#  define FCITXCORE_EXPORT
#  define FCITXCORE_NO_EXPORT
#else
#  ifndef FCITXCORE_EXPORT
#    ifdef Fcitx5Core_EXPORTS
        /* We are building this library */
#      define FCITXCORE_EXPORT __attribute__((visibility("default")))
#    else
        /* We are using this library */
#      define FCITXCORE_EXPORT __attribute__((visibility("default")))
#    endif
#  endif

#  ifndef FCITXCORE_NO_EXPORT
#    define FCITXCORE_NO_EXPORT __attribute__((visibility("hidden")))
#  endif
#endif

#ifndef FCITXCORE_DEPRECATED
#  define FCITXCORE_DEPRECATED __attribute__ ((__deprecated__))
#endif

#ifndef FCITXCORE_DEPRECATED_EXPORT
#  define FCITXCORE_DEPRECATED_EXPORT FCITXCORE_EXPORT FCITXCORE_DEPRECATED
#endif

#ifndef FCITXCORE_DEPRECATED_NO_EXPORT
#  define FCITXCORE_DEPRECATED_NO_EXPORT FCITXCORE_NO_EXPORT FCITXCORE_DEPRECATED
#endif

/* NOLINTNEXTLINE(readability-avoid-unconditional-preprocessor-if) */
#if 0 /* DEFINE_NO_DEPRECATED */
#  ifndef FCITXCORE_NO_DEPRECATED
#    define FCITXCORE_NO_DEPRECATED
#  endif
#endif

#endif /* FCITXCORE_EXPORT_H */
