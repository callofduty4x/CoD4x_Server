#include "q_shared.h"
#include "qcommon_io.h"
#if __linux
void Sys_PrintBacktrace();
#endif

qboolean Assert_MyHandler(const char* exp, const char *filename, int line, const char* func, const char *fmt, ...)
{
    char buf[8192];
    const char* message = "";

    if(fmt != NULL)
    {
        strcpy(buf, "\nAssert Message: ");
        int l = strlen(message);
        va_list argptr;
        va_start (argptr,fmt);
        Q_vsnprintf(buf +l, sizeof(buf) -l, fmt, argptr);
        va_end (argptr);
        message = buf;
    }
    Com_PrintError(CON_CHANNEL_ERROR, "Assert failed - Exp: %s, File: %s, Line: %d, Function: %s %s\n",exp, filename, line, func, message);
#ifdef __linux
    void Sys_PrintBacktrace();

    Sys_PrintBacktrace();
#endif
    asm("int $3");
    return 0;
}



