#include "dispatcher.hpp"

#ifdef __cplusplus
extern "C" {
#endif

#include <qcommon_io.h>

#ifdef __cplusplus
}
#endif

#define VARG(num, type) ((type)(((int*)&Code_)[1 + num]))

void SysCallDispatcher(const EAPICode Code_, ...)
{
    switch(Code_)
    {
        case AC_Com_Printf:
            Com_Printf(VARG(0, const char*));
            break;
        case AC_Com_Error:
			Com_Error(0, VARG(0, const char*));
			break;
        case AC_Com_PrintError:
			Com_PrintError(VARG(0, const char*));
			break;
        case AC_Com_DPrintf:
			Com_DPrintf(VARG(0, const char*));
			break;
        case AC_Com_PrintWarning:
			Com_PrintWarning(VARG(0, const char*));
			break;
			default: 
            Com_Error(0, "Unknown system call index: %d", Code_);
    }
}
