///////////////////////////////////////////////////////////////////////////////
// traps.h - definitions for all the functions "imported" from server code.
//      If function was added once - it must exist all the time.
//      You can change inner code. Do not delete functions - old plugins may rely on these.
#pragma once

#include "base.h"
#include <cstdio>
#include <cstdarg>

inline void trap_Com_Printf(const char* const Format_, ...)
{
    char msg[1024];
    va_list ap;
    va_start(ap, Format_);

    vsnprintf(msg, sizeof(msg), Format_, ap);
    va_end(ap);

    syscall(AC_Com_Printf, msg);
}

inline void trap_Com_Error(const char* const Error, ... )
{
	char msg[1024];
    va_list ap;
    va_start(ap, Error);

    vsnprintf(msg, sizeof(msg), Error, ap);
    va_end(ap);

	syscall(AC_Com_Error, msg);
}

inline void trap_Com_PrintError(const char* const Fmt, ... )
{
	char msg[1024];
    va_list ap;
    va_start(ap, Fmt);

    vsnprintf(msg, sizeof(msg), Fmt, ap);
    va_end(ap);

	syscall(AC_Com_PrintError, msg);
}

inline void trap_Com_DPrintf(const char* const Format_, ...)
{
    char msg[1024];
    va_list ap;
    va_start(ap, Format_);

    vsnprintf(msg, sizeof(msg), Format_, ap);
    va_end(ap);

    syscall(AC_Com_DPrintf, msg);
}

inline void trap_Com_PrintWarning(const char* const Fmt, ... )
{
    char msg[1024];
    va_list ap;
    va_start(ap, Fmt);

    vsnprintf(msg, sizeof(msg), Fmt, ap);
    va_end(ap);

    syscall(AC_Com_PrintWarning, msg);
}

inline void trap_Cbuf_AddText(const char* text)
{
    syscall(AC_Cbuf_AddText, text);
}

inline void trap_SV_SetConfigString(int index, const char *val)
{
    syscall(AC_SV_SetConfigString, index, val);
}

inline void trap_SV_GetConfigString(int index, char *buffer, int bufferSize)
{
    syscall(AC_SV_GetConfigString, index, buffer, bufferSize);
}

inline void trap_SV_GetStat(int clientNum, signed int index, int *ret)
{
    syscall(AC_SV_GetStat, clientNum, index, ret);
}

inline void trap_SV_SetStat(int clientNum, signed int index, int value)
{
    syscall(AC_SV_SetStat, clientNum, index, value);
}