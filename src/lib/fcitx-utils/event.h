/*
 * SPDX-FileCopyrightText: 2015-2015 CSSlayer <wengxt@gmail.com>
 *
 * SPDX-License-Identifier: LGPL-2.1-or-later
 *
 */
#ifndef _FCITX_UTILS_EVENT_H_
#define _FCITX_UTILS_EVENT_H_

#include <time.h>
#include <cstring>
#include <functional>
#include <memory>
#include <stdexcept>
#include <fcitx-utils/flags.h>
#include <fcitx-utils/macros.h>
#include "fcitxutils_export.h"

namespace fcitx {

enum class IOEventFlag {
    In = (1 << 0),
    Out = (1 << 1),
    Err = (1 << 2),
    Hup = (1 << 3),
    EdgeTrigger = (1 << 4),
};

typedef Flags<IOEventFlag> IOEventFlags;

class FCITXUTILS_EXPORT EventLoopException : public std::runtime_error {
public:
    EventLoopException(int error);

    int error() const { return errno_; }

private:
    int errno_;
};

struct FCITXUTILS_EXPORT EventSource {
    virtual ~EventSource();
    virtual bool isEnabled() const = 0;
    virtual void setEnabled(bool enabled) = 0;
    virtual bool isOneShot() const = 0;
    virtual void setOneShot() = 0;
};

struct FCITXUTILS_EXPORT EventSourceIO : public EventSource {
    virtual int fd() const = 0;
    virtual void setFd(int fd) = 0;
    virtual IOEventFlags events() const = 0;
    virtual void setEvents(IOEventFlags flags) = 0;
    virtual IOEventFlags revents() const = 0;
};

struct FCITXUTILS_EXPORT EventSourceTime : public EventSource {
    virtual void setNextInterval(uint64_t time);
    virtual uint64_t time() const = 0;
    virtual void setTime(uint64_t time) = 0;
    virtual uint64_t accuracy() const = 0;
    virtual void setAccuracy(uint64_t accuracy) = 0;
    virtual clockid_t clock() const = 0;
};

typedef std::function<bool(EventSourceIO *, int fd, IOEventFlags flags)>
    IOCallback;
typedef std::function<bool(EventSourceTime *, uint64_t usec)> TimeCallback;
typedef std::function<bool(EventSource *)> EventCallback;

FCITXUTILS_EXPORT uint64_t now(clockid_t clock);

class EventLoopPrivate;
class FCITXUTILS_EXPORT EventLoop {
public:
    EventLoop();
    virtual ~EventLoop();
    bool exec();
    void exit();

    static const char *impl();
    void *nativeHandle();

    FCITX_NODISCARD std::unique_ptr<EventSourceIO>
    addIOEvent(int fd, IOEventFlags flags, IOCallback callback);
    FCITX_NODISCARD std::unique_ptr<EventSourceTime>
    addTimeEvent(clockid_t clock, uint64_t usec, uint64_t accuracy,
                 TimeCallback callback);
    FCITX_NODISCARD std::unique_ptr<EventSource>
    addExitEvent(EventCallback callback);
    FCITX_NODISCARD std::unique_ptr<EventSource>
    addDeferEvent(EventCallback callback);

private:
    const std::unique_ptr<EventLoopPrivate> d_ptr;
    FCITX_DECLARE_PRIVATE(EventLoop);
};
} // namespace fcitx

#endif // _FCITX_UTILS_EVENT_H_
