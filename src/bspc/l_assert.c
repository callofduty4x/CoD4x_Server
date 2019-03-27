#include <stdarg.h>
#include <stdlib.h>
#include <stdio.h>
#include "../q_shared.h"

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
        vsnprintf(buf +l, sizeof(buf) -l, fmt, argptr);
        va_end (argptr);
        message = buf;
    }
    printf("Assert failed - Exp: %s, File: %s, Line: %d, Function: %s %s\n",exp, filename, line, func, message);
    asm("int $3");
    return 0;
}

