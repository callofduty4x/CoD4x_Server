#include <plugin/shared.h>
#include <qcommon_io.h>

#define VARG(num, type) ((type)(((int*)&Code_)[1 + num]))

void SysCallDispatcher(const EAPICode Code_, ...)
{
    switch(Code_)
    {
        case AC_Com_Printf:
            Com_Printf(VARG(0, const char*));
            break;
        default: 
            Com_Error(0, "Unknown system call index: %d", Code_);
    }
}