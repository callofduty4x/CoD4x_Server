#include "profile.hpp"
#include "qshared.hpp"
#include "qcommon_io.hpp"
#include "sys_main.hpp"

static int starttime;

void Profile_BeginInternal()
{
	starttime = Sys_Milliseconds();
}


void Profile_EndInternal()
{
	Com_Printf(CON_CHANNEL_SYSTEM,"Took %d msec\n", Sys_Milliseconds() - starttime);
}