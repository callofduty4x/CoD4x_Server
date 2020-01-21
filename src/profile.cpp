#include "q_shared.h"
#include "qcommon_io.h"
#include "sys_main.h"

static int starttime;

void Profile_BeginInternal()
{
	starttime = Sys_Milliseconds();
}


void Profile_EndInternal()
{
	Com_Printf(CON_CHANNEL_SYSTEM,"Took %d msec\n", Sys_Milliseconds() - starttime);
}