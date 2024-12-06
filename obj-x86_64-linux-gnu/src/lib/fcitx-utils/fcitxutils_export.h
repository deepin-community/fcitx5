
#ifndef FCITXUTILS_EXPORT_H
#define FCITXUTILS_EXPORT_H

#ifdef FCITXUTILS_STATIC_DEFINE
#  define FCITXUTILS_EXPORT
#  define FCITXUTILS_NO_EXPORT
#else
#  ifndef FCITXUTILS_EXPORT
#    ifdef Fcitx5Utils_EXPORTS
        /* We are building this library */
#      define FCITXUTILS_EXPORT __attribute__((visibility("default")))
#    else
        /* We are using this library */
#      define FCITXUTILS_EXPORT __attribute__((visibility("default")))
#    endif
#  endif

#  ifndef FCITXUTILS_NO_EXPORT
#    define FCITXUTILS_NO_EXPORT __attribute__((visibility("hidden")))
#  endif
#endif

#ifndef FCITXUTILS_DEPRECATED
#  define FCITXUTILS_DEPRECATED __attribute__ ((__deprecated__))
#endif

#ifndef FCITXUTILS_DEPRECATED_EXPORT
#  define FCITXUTILS_DEPRECATED_EXPORT FCITXUTILS_EXPORT FCITXUTILS_DEPRECATED
#endif

#ifndef FCITXUTILS_DEPRECATED_NO_EXPORT
#  define FCITXUTILS_DEPRECATED_NO_EXPORT FCITXUTILS_NO_EXPORT FCITXUTILS_DEPRECATED
#endif

/* NOLINTNEXTLINE(readability-avoid-unconditional-preprocessor-if) */
#if 0 /* DEFINE_NO_DEPRECATED */
#  ifndef FCITXUTILS_NO_DEPRECATED
#    define FCITXUTILS_NO_DEPRECATED
#  endif
#endif

#endif /* FCITXUTILS_EXPORT_H */
