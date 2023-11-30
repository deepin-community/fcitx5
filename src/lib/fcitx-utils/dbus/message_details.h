/*
 * SPDX-FileCopyrightText: 2016-2016 CSSlayer <wengxt@gmail.com>
 *
 * SPDX-License-Identifier: LGPL-2.1-or-later
 *
 */
#ifndef _FCITX_UTILS_DBUS_MESSAGE_DETAILS_H_
#define _FCITX_UTILS_DBUS_MESSAGE_DETAILS_H_

#include <cstdint>
#include <tuple>
#include <vector>
#include <fcitx-utils/metastring.h>
#include <fcitx-utils/tuplehelpers.h>
#include <fcitx-utils/unixfd.h>

namespace fcitx {

namespace dbus {

template <typename T>
struct MakeTupleIfNeeded {
    typedef std::tuple<T> type;
};

template <typename... Args>
struct MakeTupleIfNeeded<std::tuple<Args...>> {
    typedef std::tuple<Args...> type;
};

template <typename T>
using MakeTupleIfNeededType = typename MakeTupleIfNeeded<T>::type;

template <typename T>
struct RemoveTupleIfUnnecessary {
    typedef T type;
};

template <typename Arg>
struct RemoveTupleIfUnnecessary<std::tuple<Arg>> {
    typedef Arg type;
};

template <typename T>
using RemoveTupleIfUnnecessaryType = typename RemoveTupleIfUnnecessary<T>::type;

class ObjectPath;
class Variant;

template <typename... Args>
struct DBusStruct;

template <typename Key, typename Value>
class DictEntry;

template <typename T>
struct DBusSignatureTraits;

template <char>
struct DBusSignatureToBasicType;

#define DBUS_SIGNATURE_TRAITS(TYPENAME, SIG)                                   \
    template <>                                                                \
    struct DBusSignatureTraits<TYPENAME> {                                     \
        typedef MetaString<SIG> signature;                                     \
    };                                                                         \
                                                                               \
    template <>                                                                \
    struct DBusSignatureToBasicType<SIG> {                                     \
        typedef TYPENAME type;                                                 \
    };

DBUS_SIGNATURE_TRAITS(std::string, 's');
DBUS_SIGNATURE_TRAITS(uint8_t, 'y');
DBUS_SIGNATURE_TRAITS(bool, 'b');
DBUS_SIGNATURE_TRAITS(int16_t, 'n');
DBUS_SIGNATURE_TRAITS(uint16_t, 'q');
DBUS_SIGNATURE_TRAITS(int32_t, 'i');
DBUS_SIGNATURE_TRAITS(uint32_t, 'u');
DBUS_SIGNATURE_TRAITS(int64_t, 'x');
DBUS_SIGNATURE_TRAITS(uint64_t, 't');
DBUS_SIGNATURE_TRAITS(double, 'd');
DBUS_SIGNATURE_TRAITS(UnixFD, 'h');
DBUS_SIGNATURE_TRAITS(ObjectPath, 'o');
DBUS_SIGNATURE_TRAITS(Variant, 'v');

template <typename K, typename V>
struct DBusSignatureTraits<std::pair<K, V>> {
    typedef ConcatMetaStringType<typename DBusSignatureTraits<K>::signature,
                                 typename DBusSignatureTraits<V>::signature>
        signature;
};

template <typename Arg, typename... Args>
struct DBusSignatureTraits<std::tuple<Arg, Args...>> {
    typedef ConcatMetaStringType<
        typename DBusSignatureTraits<Arg>::signature,
        typename DBusSignatureTraits<std::tuple<Args...>>::signature>
        signature;
};

template <>
struct DBusSignatureTraits<std::tuple<>> {
    typedef MetaString<> signature;
};

template <typename... Args>
struct DBusSignatureTraits<DBusStruct<Args...>> {
    typedef ConcatMetaStringType<
        MetaString<'('>,
        typename DBusSignatureTraits<std::tuple<Args...>>::signature,
        MetaString<')'>>
        signature;
};

template <typename Key, typename Value>
struct DBusSignatureTraits<DictEntry<Key, Value>> {
    typedef ConcatMetaStringType<
        MetaString<'{'>,
        typename DBusSignatureTraits<std::tuple<Key, Value>>::signature,
        MetaString<'}'>>
        signature;
};

template <typename T>
struct DBusSignatureTraits<std::vector<T>> {
    typedef ConcatMetaStringType<MetaString<'a'>,
                                 typename DBusSignatureTraits<T>::signature>
        signature;
};

template <typename T>
struct DBusContainerSignatureTraits;

template <typename... Args>
struct DBusContainerSignatureTraits<DBusStruct<Args...>> {
    typedef
        typename DBusSignatureTraits<std::tuple<Args...>>::signature signature;
};

template <typename Key, typename Value>
struct DBusContainerSignatureTraits<DictEntry<Key, Value>> {
    typedef typename DBusSignatureTraits<std::tuple<Key, Value>>::signature
        signature;
};

template <typename T>
struct DBusContainerSignatureTraits<std::vector<T>> {
    typedef typename DBusSignatureTraits<T>::signature signature;
};

template <char left, char right, int level, typename S>
struct SkipTillNext;

template <char left, char right, int level, char first, char... next>
struct SkipTillNext<left, right, level, MetaString<first, next...>> {
    typedef typename SkipTillNext<left, right, level, MetaString<next...>>::type
        type;
    typedef ConcatMetaStringType<
        MetaString<first>,
        typename SkipTillNext<left, right, level, MetaString<next...>>::str>
        str;
};

template <char left, char right, int level, char... next>
struct SkipTillNext<left, right, level, MetaString<left, next...>> {
    typedef
        typename SkipTillNext<left, right, level + 1, MetaString<next...>>::type
            type;
    typedef ConcatMetaStringType<
        MetaString<left>,
        typename SkipTillNext<left, right, level + 1, MetaString<next...>>::str>
        str;
};

template <char left, char right, int level, char... next>
struct SkipTillNext<left, right, level, MetaString<right, next...>> {
    typedef
        typename SkipTillNext<left, right, level - 1, MetaString<next...>>::type
            type;
    typedef ConcatMetaStringType<
        MetaString<right>,
        typename SkipTillNext<left, right, level - 1, MetaString<next...>>::str>
        str;
};

template <char left, char right, char first, char... next>
struct SkipTillNext<left, right, 0, MetaString<first, next...>> {
    typedef MetaString<first, next...> type;
    typedef MetaString<> str;
};

// This is required to resolve ambiguity like (i)(i), when a '(' appear
// immediate after a closed ')'.
template <char left, char right, char... next>
struct SkipTillNext<left, right, 0, MetaString<left, next...>> {
    typedef MetaString<left, next...> type;
    typedef MetaString<> str;
};

template <char left, char right>
struct SkipTillNext<left, right, 0, MetaString<>> {
    typedef MetaString<> type;
    typedef MetaString<> str;
};

template <char... c>
struct DBusSignatureToType;

template <char... c>
DBusSignatureToType<c...>
    DBusMetaStringSignatureToTupleHelper(MetaString<c...>);

template <typename T>
using DBusMetaStringSignatureToTuple = MakeTupleIfNeededType<
    typename decltype(DBusMetaStringSignatureToTupleHelper(
        std::declval<T>()))::type>;

template <typename... Args>
DBusStruct<Args...> TupleToDBusStructHelper(std::tuple<Args...>);

template <typename T>
using TupleToDBusStruct = decltype(TupleToDBusStructHelper(std::declval<T>()));

template <typename Key, typename Value>
DictEntry<Key, Value> TupleToDictEntryHelper(std::tuple<Key, Value>);

template <typename T>
using TupleToDictEntry = decltype(TupleToDictEntryHelper(std::declval<T>()));

template <char... next>
struct DBusSignatureGetNextSignature;

template <char first, char... nextChar>
struct DBusSignatureGetNextSignature<first, nextChar...> {
    typedef typename DBusSignatureToType<first>::type cur;
    typedef typename DBusSignatureToType<nextChar...>::type next;
};

template <char... nextChar>
struct DBusSignatureGetNextSignature<'a', nextChar...> {
    typedef DBusSignatureGetNextSignature<nextChar...> SplitType;
    typedef std::vector<typename SplitType::cur> cur;
    typedef typename SplitType::next next;
};

template <int level, typename S>
using SkipTillNextParentheses = SkipTillNext<'(', ')', level, S>;

template <int level, typename S>
using SkipTillNextBrace = SkipTillNext<'{', '}', level, S>;

template <char... nextChar>
struct DBusSignatureGetNextSignature<'(', nextChar...> {
    typedef TupleToDBusStruct<
        DBusMetaStringSignatureToTuple<RemoveMetaStringTailType<
            typename SkipTillNextParentheses<1, MetaString<nextChar...>>::str>>>
        cur;
    typedef DBusMetaStringSignatureToTuple<
        typename SkipTillNextParentheses<1, MetaString<nextChar...>>::type>
        next;
};

template <char... nextChar>
struct DBusSignatureGetNextSignature<'{', nextChar...> {
    typedef TupleToDictEntry<
        DBusMetaStringSignatureToTuple<RemoveMetaStringTailType<
            typename SkipTillNextBrace<1, MetaString<nextChar...>>::str>>>
        cur;
    typedef DBusMetaStringSignatureToTuple<
        typename SkipTillNextBrace<1, MetaString<nextChar...>>::type>
        next;
};

template <char... c>
struct DBusSignatureToType {
    typedef DBusSignatureGetNextSignature<c...> SplitType;
    typedef RemoveTupleIfUnnecessaryType<
        CombineTuplesType<MakeTupleIfNeededType<typename SplitType::cur>,
                          MakeTupleIfNeededType<typename SplitType::next>>>
        type;
};
template <char c>
struct DBusSignatureToType<c> {
    typedef typename DBusSignatureToBasicType<c>::type type;
};

template <>
struct DBusSignatureToType<> {
    typedef std::tuple<> type;
};

template <typename M>
struct MetaStringToDBusTuple;

template <char... c>
struct MetaStringToDBusTuple<MetaString<c...>> {
    typedef typename DBusSignatureToType<c...>::type type;
};

template <typename M>
using MetaStringToDBusTupleType = typename MetaStringToDBusTuple<M>::type;

template <typename T>
struct DBusTupleToReturn {
    typedef T type;
};

template <>
struct DBusTupleToReturn<std::tuple<>> {
    typedef void type;
};

template <typename T>
using DBusTupleToReturnType = typename DBusTupleToReturn<T>::type;

#define FCITX_STRING_TO_DBUS_TUPLE(STRING)                                     \
    ::fcitx::dbus::MakeTupleIfNeededType<                                      \
        ::fcitx::dbus::MetaStringToDBusTupleType<fcitxMakeMetaString(STRING)>>
#define FCITX_STRING_TO_DBUS_TYPE(STRING)                                      \
    ::fcitx::dbus::DBusTupleToReturnType<                                      \
        ::fcitx::dbus::MetaStringToDBusTupleType<fcitxMakeMetaString(STRING)>>
} // namespace dbus
} // namespace fcitx

#endif // _FCITX_UTILS_DBUS_MESSAGE_DETAILS_H_
