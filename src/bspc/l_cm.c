#include "../cm_local.h"
#include "l_cmd.h"

TraceThreadInfo g_traceThreadInfo[NUMTHREADS];


void* __cdecl Sys_GetValue(int key)
{
    if(key != 3)
	{
		Error("Sys_GetValue: Invalid value");
	}
    return &g_traceThreadInfo[0];
}

