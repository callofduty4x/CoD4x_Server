#include "dispatcher.hpp"

#ifdef __cplusplus
extern "C" {
#endif

#include <qcommon_io.h>
#include <cmd.h>
#include <server.h>

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
        case AC_Cbuf_AddText:
            Cbuf_AddText(VARG(0, const char*));
            break;
        case AC_SV_SetConfigString:
            SV_SetConfigstring(VARG(0, int), VARG(1, const char*));
            break;
        case AC_SV_GetConfigString:
            SV_GetConfigstring(VARG(0, int), VARG(1, char*), VARG(2, int));
            break;
        case AC_SV_GetStat:
            {
                int* result = VARG(2, int*);
                *result = SV_GetClientStat(VARG(0, int), VARG(1, int));
                break;
            }
        case AC_SV_SetStat:
            SV_SetClientStat(VARG(0, int), VARG(1, int), VARG(2, int));
            break;
        case AC_RemoveBanByIP:
            SV_RemoveBanByip(VARG(0, netadr_t*));
            break;
        case AC_AddBanByIP:
            SV_PlayerAddBanByip(VARG(0, netadr_t*), VARG(1, char*), VARG(2, int));
            break;
			default: 
            Com_Error(0, "Unknown system call index: %d", Code_);
    }
}