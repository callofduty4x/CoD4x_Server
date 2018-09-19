#include "g_shared.h"
#include "qcommon_io.h"
#include "qcommon.h"
#include "qcommon_logprint.h"

#include "server_public.h"

level_locals_t level;

const char* g_dedicatedEnumNames[] = { "listen server", "dedicated LAN server", "dedicated internet server" };


extern "C"
{

#define MAX_REDIRECTDESTINATIONS 4

static void (*rd_destinations[MAX_REDIRECTDESTINATIONS])( const char *buffer, int len );

void G_PrintRedirect(char* msg, int len)
{

    int i;

    for(i = 0; i < MAX_REDIRECTDESTINATIONS; i++)
    {
        if(rd_destinations[i] == NULL)
            return;

        rd_destinations[i](msg, len);

    }

}
/*
    To Add:
    HL2Rcon_SourceRconSendGameLog(string, stringlen);
*/


void G_PrintAddRedirect(void (*rd_dest)( const char *, int))
{
    int i;

    for(i = 0; i < MAX_REDIRECTDESTINATIONS; i++)
    {
        if(rd_destinations[i] == rd_dest)
        {
            Com_Error(ERR_FATAL, "G_PrintAddRedirect: Attempt to add an already defined redirect function twice.");
            return;
        }

        if(rd_destinations[i] == NULL)
        {
            rd_destinations[i] = rd_dest;
            return;
        }
    }
    Com_Error(ERR_FATAL, "G_PrintAddRedirect: Out of redirect handles. Increase MAX_REDIRECTDESTINATIONS to add more redirect destinations");
}



/*
=================
G_LogPrintf

Print to the logfile with a time stamp if it is open
=================
*/
__cdecl void QDECL G_LogPrintf( const char *fmt, ... ) {

	va_list argptr;

	char string[1024];
	int stringlen;
	int min, tens, sec;
	int timelen;


        if ( g_logTimeStampInSeconds->boolean )
        {
          time_t time1970 = Com_GetRealtime( );
          Com_sprintf(string, sizeof( string ), "%d ", time1970);
        }
        else
	{
	  sec = level.time / 1000;
	  min = sec / 60;
	  sec -= min * 60;
	  tens = sec / 10;
	  sec -= tens * 10;
	  Com_sprintf( string, sizeof( string ), "%3i:%i%i ", min, tens, sec );
	}

	timelen = strlen(string);

	va_start( argptr, fmt );
	Q_vsnprintf( string + timelen, sizeof( string ) - timelen, fmt, argptr );
	va_end( argptr );

	stringlen = strlen( string );

	G_PrintRedirect(string, stringlen);

	if ( !level.logFile ) {
		return;
	}

#ifdef _WIN32
	char outstring[2048];
	stringlen = Q_strLF2CRLF(string, outstring, sizeof(outstring) );
	Com_WriteGameLogfile( outstring, stringlen );
#else
	Com_WriteGameLogfile( string, stringlen );
#endif
}


void G_OpenLogFile()
{
  char serverinfo[1024];
  if ( *g_log->string )
  {
    level.logFile = Com_OpenGameLogfile(g_log->string, 'a', (qboolean)g_logSync->boolean);

    if ( level.logFile )
    {
      SV_GetServerinfo(serverinfo, 1024);
      G_LogPrintf("------------------------------------------------------------\n");
      G_LogPrintf("InitGame: %s\\g_logTimeStampInSeconds\\%d\n", serverinfo, g_logTimeStampInSeconds->boolean != 0);
    }
    else
    {
      Com_PrintWarning(CON_CHANNEL_SERVER, "WARNING: Couldn't open logfile: %s\n", g_log->string);
    }
  }
  else
  {
    Com_Printf(CON_CHANNEL_SERVER, "Not logging to disk.\n");
  }

}

void G_CloseLogFile()
{
	Com_CloseGameLogfile();
	level.logFile = 0;
}


void G_InitSomeVariables(int framerate)
{
    level.framerate = framerate;
}

};