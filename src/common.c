/*
===========================================================================
    Copyright (C) 2010-2013  Ninja and TheKelm
    Copyright (C) 1999-2005 Id Software, Inc.

    This file is part of CoD4X18-Server source code.

    CoD4X18-Server source code is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as
    published by the Free Software Foundation, either version 3 of the
    License, or (at your option) any later version.

    CoD4X18-Server source code is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>
===========================================================================
*/



#include "q_shared.h"
#include "qcommon_io.h"
#include "qcommon_parsecmdline.h"
#include "qcommon_logprint.h"
#include "sys_cod4defs.h"
#include "cvar.h"
#include "filesystem.h"
#include "qcommon_mem.h"
#include "q_platform.h"
#include "sys_main.h"
#include "sys_thread.h"
#include "qcommon.h"
#include "cmd.h"
#include "sys_net.h"
#include "xassets.h"
#include "plugin_handler.h"
#include "misc.h"
#include "scr_vm.h"
#include "netchan.h"
#include "server.h"
#include "nvconfig.h"
#include "hl2rcon.h"
#include "sv_auth.h"
#include "punkbuster.h"
#include "sec_common.h"
#include "httpftp.h"
#include "huffman.h"
#include "sapi.h"
#include "dobj.h"
#include "xassets/extractor.h"
#include "sec_update.h"
#include "bg_public.h"
#include "cscr_stringlist.h"
#include "physicalmemory.h"
#include "win_localize.h"
#include "tests.h"
#include "null_client.h"
#include "db_load.h"

#include <string.h>
#include <setjmp.h>
#include <stdarg.h>
#include <time.h>
#include <ctype.h>


unsigned long long com_uFrameTime = 0;
unsigned long long com_frameTime = 0;

cvar_t* com_version;
cvar_t* com_shortversion;
cvar_t* com_dedicated;
cvar_t* com_timescale;
cvar_t* com_fixedtime;
cvar_t* com_maxFrameTime;
cvar_t* com_animCheck;
cvar_t* com_developer;
cvar_t* useFastFile;
cvar_t* com_developer;
cvar_t* com_developer_script;
cvar_t* com_logfile;
cvar_t* com_sv_running;
cvar_t* com_securemodevar;
cvar_t* sv_webadmin;
unsigned int com_expectedHunkUsage; //for map loading progress
qboolean com_fixedConsolePosition;
qboolean com_securemode;

char com_errorMessage[MAXPRINTMSG];
qboolean com_errorEntered;
qboolean com_fullyInitialized = qfalse;
qboolean com_missingAssetOpenFailed;

static int watchdog_timer;
void Com_WriteConfig_f( void );
void Com_WriteConfiguration( void );
void* Debug_HitchWatchdog(void*);
void Com_DownloadAndExecGlobalConfig();
/*
========================================================================

EVENT LOOP

========================================================================
*/

typedef union{
    float f;
    char c;
    int i;
    qboolean b;
    byte by;
    void* p;
}universalArg_t;

typedef struct {
	int evTime;
	sysEventType_t evType;
	int evValue, evValue2;
	int evPtrLength;                // bytes of data pointed to by evPtr, for journaling
	void            *evPtr;         // this must be manually freed if not NULL
} sysEvent_t;


#define MAX_TIMEDEVENTARGS 8

typedef struct{
    universalArg_t arg;
    unsigned int size;
}timedEventArg_t;

typedef timedEventArg_t timedEventArgs_t[MAX_TIMEDEVENTARGS];


#define MAX_QUEUED_EVENTS  256
#define MAX_TIMED_EVENTS  1024
#define MASK_QUEUED_EVENTS ( MAX_QUEUED_EVENTS - 1 )
#define MASK_TIMED_EVENTS ( MAX_TIMED_EVENTS - 1 )

typedef struct{
	int evTime, evTriggerTime;
	timedEventArgs_t evArguments;
	void (*evFunction)();
}timedSysEvent_t;


static sysEvent_t  eventQueue[ MAX_QUEUED_EVENTS ];
static timedSysEvent_t  timedEventBuffer[ MAX_QUEUED_EVENTS ];
static int         eventHead = 0;
static int         eventTail = 0;
static int         timedEventHead = 0;


void EventTimerTest(int time, int triggerTime, int value, char* s){

	Com_Printf(CON_CHANNEL_SYSTEM,"^5Event exectuted: %i %i %i %i %s\n", time, triggerTime, Sys_Milliseconds(), value, s);

}

void CCS_InitConstantConfigStrings();
void Com_ShutdownDObj();
void DObjShutdown();
void XAnimShutdown();
void Com_ShutdownWorld();
void CM_Shutdown();
void Init_Watchdog();

struct hunkUsed_t
{
  int permanent;
  int temp;
};
extern struct hunkUsed_t hunk_high;
extern struct hunkUsed_t hunk_low;
extern int s_hunkTotal;

void HunkAvailMemDebug()
{
    Com_Printf(CON_CHANNEL_CLIENT, "Hunk available: %d, Hunk total: %d\n", (s_hunkTotal - hunk_high.temp + hunk_low.temp) / (1024*1024), s_hunkTotal / (1024*1024));
}

/*
================
Com_SetTimedEventCachelist

================
*/
void Com_MakeTimedEventArgCached(unsigned int index, unsigned int arg, unsigned int size){

	if(index >= MAX_TIMED_EVENTS)
		Com_Error(ERR_FATAL, "Com_MakeTimedEventArgCached: Bad index: %d", index);

	if(arg >= MAX_TIMEDEVENTARGS)
		Com_Error(ERR_FATAL, "Com_MakeTimedEventArgCached: Bad function argument number. Allowed range is 0 - %d arguments", MAX_TIMEDEVENTARGS);

	timedSysEvent_t  *ev = &timedEventBuffer[index];
	void *ptr = Z_Malloc(size);
	Com_Memcpy(ptr, ev->evArguments[arg].arg.p, size);
	ev->evArguments[arg].size = size;
	ev->evArguments[arg].arg.p = ptr;
}


/*
================
Com_AddTimedEvent

================
*/
int QDECL Com_AddTimedEvent( int delay, void *function, unsigned int argcount, ...)
{
	timedSysEvent_t  *ev;
	int index;
	int i;
	int time;
	int triggerTime;

	if ( timedEventHead >= MAX_TIMED_EVENTS )
	{
		Com_PrintWarning(CON_CHANNEL_SYSTEM,"Com_AddTimedEvent: overflow - Lost one event\n");
		// we are discarding an event, but don't leak memory
		return -1;
	}

	index = timedEventHead;

	time = Sys_Milliseconds();

	triggerTime = delay + time;

	while(qtrue)
	{
		if(index > 0){

			ev = &timedEventBuffer[index -1];

			if(ev->evTriggerTime < triggerTime)
			{
				timedEventBuffer[index] = *ev;
				index--;
				continue;
			}
		}
		break;
	}

	if(argcount > MAX_TIMEDEVENTARGS)
	{
		Com_Error(ERR_FATAL, "Com_AddTimedEvent: Bad number of function arguments. Allowed range is 0 - %d arguments", MAX_TIMEDEVENTARGS);
		return -1;
	}

	ev = &timedEventBuffer[index];

	va_list		argptr;
	va_start(argptr, argcount);

	for(i = 0; i < MAX_TIMEDEVENTARGS; i++)
	{
		if(i < argcount)
			ev->evArguments[i].arg = va_arg(argptr, universalArg_t);

		ev->evArguments[i].size = 0;
	}

	va_end(argptr);

	ev->evTime = time;
	ev->evTriggerTime = triggerTime;
	ev->evFunction = function;
	timedEventHead++;
	return index;
}



void Com_InitEventQueue()
{
    // bk000306 - clear eventqueue
    memset( eventQueue, 0, MAX_QUEUED_EVENTS * sizeof( sysEvent_t ) );
}

/*
================
Com_QueueEvent

A time of 0 will get the current time
Ptr should either be null, or point to a block of data that can
be freed by the game later.
================
*/
void Com_QueueEvent( int time, sysEventType_t type, int value, int value2, int ptrLength, void *ptr )
{
	sysEvent_t  *ev;

	ev = &eventQueue[ eventHead & MASK_QUEUED_EVENTS ];

	if ( eventHead - eventTail >= MAX_QUEUED_EVENTS )
	{
		Com_PrintWarning(CON_CHANNEL_SYSTEM,"Com_QueueEvent: overflow\n");
		// we are discarding an event, but don't leak memory
		if ( ev->evPtr )
		{
			Z_Free( ev->evPtr );
		}
		eventTail++;
	}

	eventHead++;

	if ( time == 0 )
	{
		time = Sys_Milliseconds();
	}

	ev->evTime = time;
	ev->evType = type;
	ev->evValue = value;
	ev->evValue2 = value2;
	ev->evPtrLength = ptrLength;
	ev->evPtr = ptr;
}

/*
================
Com_GetTimedEvent

================
*/
timedSysEvent_t* Com_GetTimedEvent( int time )
{
	timedSysEvent_t  *ev;

	if(timedEventHead > 0)
	{
		ev = &timedEventBuffer[timedEventHead - 1];
		if(ev->evTriggerTime <= time)
		{
			timedEventHead--; //We have removed one event
			return ev;
		}
	}
	return NULL;
}


/*
================
Com_GetSystemEvent

================
*/
sysEvent_t* Com_GetSystemEvent( void )
{
	char        *s;
	// return if we have data

	if ( eventHead > eventTail )
	{
		eventTail++;
		return &eventQueue[ ( eventTail - 1 ) & MASK_QUEUED_EVENTS ];
	}

	Sys_EventLoop();

	// check for console commands
	s = Sys_ConsoleInput();
	if ( s )
	{
		char  *b;
		int   len;

		len = strlen( s ) + 1;
		b = S_Malloc( len );
		strcpy( b, s );
		Com_QueueEvent( 0, SE_CONSOLE, 0, 0, len, b );
	}

	// return if we have data
	if ( eventHead > eventTail )
	{
		eventTail++;
		return &eventQueue[ ( eventTail - 1 ) & MASK_QUEUED_EVENTS ];
	}

	// create an empty event to return
	return NULL;
}


/*
=================
Com_EventLoop

Returns last event time
=================
*/
void Com_EventLoop( void ) {
	sysEvent_t	*ev;
#ifdef _WIN32
	char consoleline[1024];
#endif

	while ( 1 ) {
		ev = Com_GetSystemEvent();

		// if no more events are available
		if ( !ev ) {
			break;
		}
			switch(ev->evType)
			{
				case SE_CONSOLE:
#ifdef _WIN32
          Com_sprintf(consoleline, sizeof(consoleline), "]%s", (char *)ev->evPtr);
          Sys_Print(consoleline);
#endif
        	Cbuf_AddText( (char *)ev->evPtr );
					Cbuf_AddText("\n");
				break;
				default:
					Com_Error( ERR_FATAL, "Com_EventLoop: bad event type %i", ev->evType );
				break;
			}
			// free any block data
			if ( ev->evPtr ) {
				Z_Free( ev->evPtr );
			}
	}
}


/*
=================
Com_TimedEventLoop
=================
*/
void Com_TimedEventLoop( void ) {
	timedSysEvent_t	*evt;
	int time = Sys_Milliseconds();
	int i;

	while( qtrue ) {
		evt = Com_GetTimedEvent(time);

		// if no more events are available
		if ( !evt ) {
			break;
		}
		//Execute the passed eventhandler
		if(evt->evFunction)
			evt->evFunction(evt->evArguments[0].arg, evt->evArguments[1].arg, evt->evArguments[2].arg, evt->evArguments[3].arg,
			evt->evArguments[4].arg, evt->evArguments[5].arg, evt->evArguments[6].arg, evt->evArguments[7].arg);

		for(i = 0; i < MAX_TIMEDEVENTARGS; i++)
		{
			if(evt->evArguments[i].size > 0){
				Z_Free(evt->evArguments[i].arg.p);
			}
		}
	}
}


int Com_IsDeveloper()
{
    if(com_developer && com_developer->integer)
        return com_developer->integer;

    return 0;

}

/*
=============
Com_Error_f

Just throw a fatal error to
test error shutdown procedures
=============
*/
static void Com_Error_f (void) {
	if ( Cmd_Argc() > 1 ) {
		Com_Error( ERR_DROP, "Testing drop error" );
	} else {
		Com_Error( ERR_FATAL, "Testing fatal error" );
	}
}


/*
=============
Com_Freeze_f

Just freeze in place for a given number of seconds to test
error recovery
=============
*/
static void Com_Freeze_f (void) {
	float	s;
	int		start, now;

	if ( Cmd_Argc() != 2 ) {
		Com_Printf(CON_CHANNEL_SYSTEM, "freeze <seconds>\n" );
		return;
	}
	s = atof( Cmd_Argv(1) );

	start = Sys_Milliseconds();

	while ( 1 ) {
		now = Sys_Milliseconds();
		if ( ( now - start ) * 0.001 > s ) {
			break;
		}
	}
}

/*
=================
Com_Crash_f

A way to force a bus error for development reasons
=================
*/
static void Com_Crash_f( void ) {
	* ( int * ) 0 = 0x12345678;
}


/*
==================
Com_RandomBytes

fills string array with len radom bytes, peferably from the OS randomizer
==================
*/
void Com_RandomBytes( byte *string, int len )
{
	int i;

	if( Sys_RandomBytes( string, len ) )
		return;

	Com_Printf(CON_CHANNEL_SYSTEM, "Com_RandomBytes: using weak randomization\n" );
	for( i = 0; i < len; i++ )
		string[i] = (unsigned char)( rand() % 255 );
}

/*
==================
Com_Random

Works as 'Com_RandomBytes' but returns integer.
==================
*/
int Com_RandomInt()
{
    int res;
	Com_RandomBytes((byte*)&res, sizeof(int));
    return res;
}


/*
============
Com_HashKey
============
*/
int Com_HashKey( char *string, int maxlen ) {
	int register hash, i;

	hash = 0;
	for ( i = 0; i < maxlen && string[i] != '\0'; i++ ) {
		hash += string[i] * ( 119 + i );
	}
	hash = ( hash ^ ( hash >> 10 ) ^ ( hash >> 20 ) );
	return hash;
}


/*
=============
Com_Quit_f

Both client and server can use this, and it will
do the apropriate things.
=============
*/
void Com_Quit_f( void ) {

  Com_Printf(CON_CHANNEL_SYSTEM,"quitting...\n");

	// don't try to shutdown if we are in a recursive error
  PHandler_Event(PLUGINS_ONTERMINATE, NULL); //Notify all plugins to hold and stop threads now

  Com_Printf(CON_CHANNEL_SYSTEM,"All plugins have terminated\n");

//	Sys_EnterCriticalSection( CRITSECT_COM_ERROR );

	Scr_Cleanup();
	GScr_Shutdown();

	SV_SApiShutdown();

	if ( !com_errorEntered ) {
		// Some VMs might execute "quit" command directly,
		// which would trigger an unload of active VM error.
		// Sys_Quit will kill this process anyways, so
		// a corrupt call stack makes no difference
		Hunk_ClearTempMemory();
		Hunk_ClearTempMemoryHigh();
		SV_Shutdown("EXE_SERVERQUIT");
		Com_Close();

		Com_CloseLogFiles( );

		FS_Shutdown(qtrue);

		FS_ShutdownIwdPureCheckReferences();
		FS_ShutdownServerIwdNames();
		FS_ShutdownServerReferencedIwds();
		FS_ShutdownServerReferencedFFs();

		NET_Shutdown();
	}

//	Sys_LeaveCriticalSection( CRITSECT_COM_ERROR );

	Sys_Quit ();
}

static void Com_InitCvars( void ){
    static const char* dedicatedEnum[] = {"listen server", "dedicated LAN server", "dedicated internet server", NULL};
    static const char* logfileEnum[] = {"disabled", "async file write", "sync file write", NULL};
	mvabuf;

    char* s;

    com_dedicated = Cvar_RegisterEnum("dedicated", dedicatedEnum, 2, CVAR_INIT, "True if this is a dedicated server");
    com_timescale = Cvar_RegisterFloat("timescale", 1.0, 0.0, 1000.0, CVAR_CHEAT | CVAR_SYSTEMINFO, "Scale time of each frame");
    com_fixedtime = Cvar_RegisterInt("fixedtime", 0, 0, 1000, 0x80, "Use a fixed time rate for each frame");
    com_maxFrameTime = Cvar_RegisterInt("com_maxFrameTime", 100, 50, 1000, 0, "Time slows down if a frame takes longer than this many milliseconds");
    com_animCheck = Cvar_RegisterBool("com_animCheck", qfalse, 0, "Check anim tree");
    s = va("%s %s %s build %i %s", GAME_STRING,Q3_VERSION,PLATFORM_STRING, Sys_GetBuild(), __DATE__);

    com_version = Cvar_RegisterString ("version", s, CVAR_ROM | CVAR_SERVERINFO , "Game version");
    com_shortversion = Cvar_RegisterString ("shortversion", Q3_VERSION, CVAR_ROM | CVAR_SERVERINFO , "Short game version");

    Cvar_RegisterInt ("build", Sys_GetBuild(), Sys_GetBuild(), Sys_GetBuild(), CVAR_ROM | CVAR_SERVERINFO, "Count of SCM commits since project has been started");
    Cvar_RegisterString("branch", Sys_GetBranch(), CVAR_ROM | CVAR_SERVERINFO, "Name of SCM branch");
    Cvar_RegisterString("revision", Sys_GetRevision(), CVAR_ROM | CVAR_SERVERINFO, "Hash of SCM revision");
    useFastFile = Cvar_RegisterBool ("useFastFiles", qtrue, 16, "Enables loading data from fast files");
    //MasterServer
    //AuthServer
    //MasterServerPort
    //AuthServerPort
    sv_webadmin = Cvar_RegisterBool ("sv_webadmin", qtrue, 0, "Enable HTTP Web Admin");
    com_developer = Cvar_RegisterInt("developer", 0, 0, 2, 0, "Enable development options");
    com_developer_script = Cvar_RegisterBool ("developer_script", qfalse, 16, "Enable developer script comments");
    com_logfile = Cvar_RegisterEnum("logfile", logfileEnum, 0, 0, "Write to logfile");
    com_logrcon = Cvar_RegisterBool("logrcon", 0, 0, "Write response of rcon commands to logfile");
    com_sv_running = Cvar_RegisterBool("sv_running", qfalse, 64, "Server is running");
    com_securemodevar = Cvar_RegisterBool("securemode", qfalse, CVAR_INIT, "CoD4 runs in secure mode which restricts execution of external scripts/programs and loading of unauthorized shared libraries/plugins. This is recommended in a shared hosting environment");
    com_securemode = com_securemodevar->boolean;
}


/*
=================
Com_Init

The games main initialization
=================
*/

void Com_Init(char* commandLine){

	mvabuf;

    unsigned int	qport;

    jmp_buf* abortframe = (jmp_buf*)Sys_GetValue(2);

    if(setjmp(*abortframe)){
        Sys_Error(va("Error during Initialization:\n%s\n", com_errorMessage));
    }
    if(com_errorEntered) Com_Error(ERR_FATAL,"Recursive error");

    Com_Printf(CON_CHANNEL_SYSTEM,"%s %s %s build %i %s\n", GAME_STRING,Q3_VERSION,PLATFORM_STRING, Sys_GetBuild(), __DATE__);


    Cbuf_Init();

    Cmd_Init();

    Com_InitEventQueue();

    Com_ParseCommandLine(commandLine);
    Com_StartupVariable(NULL);

    Com_InitCvars();

    Cvar_Init();

    Sec_Init();

	Com_InitZoneMemory();

	FS_InitCvars(); //Needed for autoupdate

    Sys_Init();
	NET_Init();

	Com_DownloadAndExecGlobalConfig();

    Sec_Update( qfalse );

    FS_InitFilesystem();

    Win_InitLocalization();

    if(FS_SV_FileExists("securemode"))
    {
        com_securemode = qtrue;
    }

    Cbuf_AddText( "exec default_mp.cfg\n");
    Cbuf_Execute( ); // Always execute after exec to prevent text buffer overflowing

/*
    Good bye
    With broken cvars we kinda also broke the query limiting which gets happy abused now.
    The q3server_config.cfg contains now crap values. To fix this I decided to no longer execute it on startup.
    If you need it add to commandline +exec q3server_config.cfg
    However this file gets still written so you can still use it if needed when you exec it on commandline

    Cbuf_AddText( "exec " Q3CONFIG_CFG "\n");
    Cbuf_Execute( ); // Always execute after exec to prevent text buffer overflowing
*/
    if(com_securemode)
    {
        Cvar_SetStringByName("sv_democompletedCmd", "");
        Cvar_SetStringByName("sv_mapDownloadCompletedCmd", "");
        Cvar_SetStringByName("sv_screenshotArrivedCmd", "");
        Cvar_SetBool(com_securemodevar, qtrue);
        Com_Printf(CON_CHANNEL_SYSTEM,"Info: SecureMode is enabled on this server!\n");
    }

    Com_StartupVariable(NULL);

    Cvar_RegisterString ("_CoD4 X Site", "http://cod4x.ovh", CVAR_ROM | CVAR_SERVERINFO , "");

    cvar_modifiedFlags &= ~CVAR_ARCHIVE;

    if (com_developer && com_developer->integer)
    {
        Cmd_AddCommand ("error", Com_Error_f);
        Cmd_AddCommand ("crash", Com_Crash_f);
        Cmd_AddCommand ("freeze", Com_Freeze_f);
        /* Do it only in developer mode. Just not to let remote admins abuse it. */
        add_extractor_console_commands();
    }
    Cmd_AddCommand ("quit", Com_Quit_f);
    Cmd_AddCommand ("writeconfig", Com_WriteConfig_f );

//    Com_AddLoggingCommands();
//    HL2Rcon_AddSourceAdminCommands();

    Com_UpdateRealtime();

    PMem_Init();

    Com_RandomBytes( (byte*)&qport, sizeof(int) );
    Netchan_Init( qport );
	Huffman_InitMain();

    PHandler_Init();

    SV_Init();

    com_frameTime = Sys_Milliseconds();

    NV_LoadConfig();
    Cbuf_Execute( );



    HL2Rcon_Init( );
/*
    if(sv_webadmin->boolean)
    {
        HTTPServer_Init();
    }
*/
    Auth_Init( );

    AddRedirectLocations( );


    int msec = 0;

//    XAssets_PatchLimits();  //Patch several asset-limits to higher values
    SL_Init();
    Swap_Init();

    CCS_InitConstantConfigStrings();

    if(useFastFile->boolean){

        PMem_Init();

        DB_SetInitializing( qtrue );

        Com_Printf(CON_CHANNEL_SYSTEM,"begin $init\n");

        msec = Sys_Milliseconds();

        PMem_BeginAlloc("$init", qtrue, TRACK_MISC);
        DB_InitThread();
    }
//    Con_InitChannels();

    if(!useFastFile->boolean) SEH_UpdateLanguageInfo();

    Com_InitHunkMemory();

    Hunk_InitDebugMemory();

    Scr_InitVariables();

    Scr_Init(); //VM_Init

    Scr_Settings(com_logfile->integer || com_developer->integer ,com_developer_script->integer, com_developer->integer);

    XAnimInit();

    DObjInit();

    PMem_EndAlloc("$init", qtrue);
    DB_SetInitializing( qfalse );
    Com_Printf(CON_CHANNEL_SYSTEM,"end $init %d ms\n", Sys_Milliseconds() - msec);

    SV_RemoteCmdInit();

    if(useFastFile->boolean)
        R_Init();

    Com_InitParse();

#ifdef PUNKBUSTER
    Com_AddRedirect(PbCaptureConsoleOutput_wrapper);
    if(!PbServerInitialize()){
        Com_Printf(CON_CHANNEL_SYSTEM,"Unable to initialize PunkBuster.  PunkBuster is disabled.\n");
    }
#endif


    Com_Printf(CON_CHANNEL_SYSTEM,"--- Common Initialization Complete ---\n");


 HunkAvailMemDebug();
    com_fullyInitialized = qtrue;

    Com_AddStartupCommands( );

    abortframe = (jmp_buf*)Sys_GetValue(2);

    if(setjmp(*abortframe)){
        Sys_Error(va("Error during Initialization:\n%s\n", com_errorMessage));
    }
    Tests_Init();
    CM_DebugInit();


//    Init_Watchdog();
}




/*
================
Com_ModifyUsec
================
*/

unsigned int Com_ModifyUsec( unsigned int usec ) {
	int		clampTime;

	//
	// modify time for debugging values
	//
	if ( com_fixedtime->integer ) {
		usec = com_fixedtime->integer*1000;
	} else if ( com_timescale->value ) {
		usec *= com_timescale->value;
	}

	// don't let it scale below 1 usec
	if ( usec < 1 && com_timescale->value) {
		usec = 1;
	}

	if ( com_dedicated->integer ) {
		// dedicated servers don't want to clamp for a much longer
		// period, because it would mess up all the client's views
		// of time.
#ifdef _LAGDEBUG
		if (usec > 280000)
#else
		if (usec > 500000)
#endif
		{
			Com_Printf(CON_CHANNEL_SYSTEM, "^5Hitch warning: %i msec frame time\n", usec / 1000 );
#ifdef _LAGDEBUG
			Com_DPrintfLogfile("^5Hitch warning: %i msec frame time\n", usec / 1000);
#endif
		}
		clampTime = 5000000;
	} else if ( !com_sv_running->boolean ) {
		// clients of remote servers do not want to clamp time, because
		// it would skew their view of the server's time temporarily
		clampTime = 5000000;
	} else {
		// for local single player gaming
		// we may want to clamp the time to prevent players from
		// flying off edges when something hitches.
		clampTime = 200000;
	}

	if ( usec > clampTime ) {
		usec = clampTime;
	}

	return usec;
}

static time_t realtime;

time_t Com_GetRealtime()
{
	return realtime;
}

void Com_UpdateRealtime()
{
	time(&realtime);
}

/*
=================
Com_Frame
=================
*/
__optimize3 void Com_Frame( void ) {

	unsigned int			usec;
	static unsigned long long	lastTime;
	static unsigned int		com_frameNumber;


	jmp_buf* abortframe = (jmp_buf*)Sys_GetValue(2);

	if(setjmp(*abortframe)){
		/* Invokes Com_Error if needed */
		Sys_EnterCriticalSection(CRITSECT_COM_ERROR);
		if(Com_InError() == qtrue)
		{
			Com_Error(0, "Error Cleanup");
		}
		Sys_LeaveCriticalSection(CRITSECT_COM_ERROR);
	}
	//
	// main event loop
	//
#ifdef TIMEDEBUG

	int		timeBeforeFirstEvents = 0;
	int		timeBeforeServer = 0;
	int		timeBeforeEvents = 0;
	int		timeBeforeClient = 0;
	int		timeAfter = 0;


	if ( com_speeds->integer ) {
		timeBeforeFirstEvents = Sys_Milliseconds ();
	}
#endif
	// Figure out how much time we have
//	if(com_dedicated->integer)
//		minUsec = SV_FrameUsec();
/*	else
	{
		if(com_minimized->integer && com_maxfpsMinimized->integer > 0)
			minMsec = 1000 / com_maxfpsMinimized->integer;
		else if(com_unfocused->integer && com_maxfpsUnfocused->integer > 0)
			minMsec = 1000 / com_maxfpsUnfocused->integer;
		else if(com_maxfps->integer > 0)
			minMsec = 1000 / com_maxfps->integer;
		else
			minMsec = 1;

		timeVal = com_frameTime - lastTime;
		bias += timeVal - minMsec;

		if(bias > minMsec)
			bias = minMsec;

		// Adjust minMsec if previous frame took too long to render so
		// that framerate is stable at the requested value.
		minMsec -= bias;
	}*/
//	timeVal = Com_TimeVal(minUsec);


/*	do
	{
		if(timeVal < 1){
			NET_Sleep(0);
		}else{
			NET_Sleep((timeVal - 1));
		}
		timeVal = Com_TimeVal(minUsec);
	} while( timeVal );
*/

	com_frameTime = Sys_MillisecondsLong();
	com_uFrameTime = Sys_MicrosecondsLong();

	usec = com_uFrameTime - lastTime;
	lastTime = com_uFrameTime;

	// mess with msec if needed
	usec = Com_ModifyUsec(usec);

	Cbuf_Execute ( );
	//
	// server side
	//

	Com_EventLoop();


#ifdef TIMEDEBUG
	if ( com_speeds->integer ) {
		timeBeforeServer = Sys_Milliseconds ();
	}
#endif
	if(!SV_Frame( usec ))
		return;

	PHandler_Event(PLUGINS_ONFRAME);

	Com_TimedEventLoop();
	Cbuf_Execute ( );
	NET_Sleep(0);
	NET_TcpServerPacketEventLoop();
	Sys_RunThreadCallbacks();
  Plugin_RunThreadCallbacks();
	Cbuf_Execute ( );

#ifdef TIMEDEBUG
	if ( com_speeds->integer ) {
		timeAfter = Sys_Milliseconds ();
		timeBeforeEvents = timeAfter;
		timeBeforeClient = timeAfter;
	}
#endif

//	NET_FlushPacketQueue();
#ifdef TIMEDEBUG
	//
	// report timing information
	//
	if ( com_speeds->integer ) {
		int			all, sv, ev, cl;

		all = timeAfter - timeBeforeServer;
		sv = timeBeforeEvents - timeBeforeServer;
		ev = timeBeforeServer - timeBeforeFirstEvents + timeBeforeClient - timeBeforeEvents;
		cl = timeAfter - timeBeforeClient;
		sv -= time_game;
		cl -= time_frontend + time_backend;

		Com_Printf(CON_CHANNEL_SYSTEM,"frame:%i all:%3i sv:%3i ev:%3i cl:%3i gm:%3i rf:%3i bk:%3i\n",
					 com_frameNumber, all, sv, ev, cl, time_game, time_frontend, time_backend );
	}
#endif
	//
	// trace optimization tracking
	//
#ifdef TRACEDEBUG
	if ( com_showtrace->integer ) {

		extern	int c_traces, c_brush_traces, c_patch_traces;
		extern	int	c_pointcontents;

		Com_Printf(CON_CHANNEL_SYSTEM,"%4i traces  (%ib %ip) %4i points\n", c_traces,
			c_brush_traces, c_patch_traces, c_pointcontents);
		c_traces = 0;
		c_brush_traces = 0;
		c_patch_traces = 0;
		c_pointcontents = 0;
	}
#endif
	com_frameNumber++;
	Com_WriteConfiguration( );
	Com_UpdateRealtime();

	/* Invokes Com_Error if needed */
	Sys_EnterCriticalSection(CRITSECT_COM_ERROR);
	if(Com_InError() == qtrue)
	{
		Com_Error(0, "Error Cleanup");
	}
	Sys_LeaveCriticalSection(CRITSECT_COM_ERROR);

	Sys_EnterCriticalSection(CRITSECT_WATCHDOG);
	watchdog_timer = 0;
	Sys_LeaveCriticalSection(CRITSECT_WATCHDOG);

}









/*
============
Com_StringContains
============
*/
char *Com_StringContains( char *str1, char *str2, int casesensitive ) {
	int len, i, j;

	len = strlen( str1 ) - strlen( str2 );
	for ( i = 0; i <= len; i++, str1++ ) {
		for ( j = 0; str2[j]; j++ ) {
			if ( casesensitive ) {
				if ( str1[j] != str2[j] ) {
					break;
				}
			} else {
				if ( toupper( str1[j] ) != toupper( str2[j] ) ) {
					break;
				}
			}
		}
		if ( !str2[j] ) {
			return str1;
		}
	}
	return NULL;
}




/*
============
Com_Filter
============
*/
int Com_Filter( char *filter, char *name, int casesensitive ) {
	char buf[MAX_TOKEN_CHARS];
	char *ptr;
	int i, found;

	while ( *filter ) {
		if ( *filter == '*' ) {
			filter++;
			for ( i = 0; *filter; i++ ) {
				if ( *filter == '*' || *filter == '?' ) {
					break;
				}
				buf[i] = *filter;
				filter++;
			}
			buf[i] = '\0';
			if ( strlen( buf ) ) {
				ptr = Com_StringContains( name, buf, casesensitive );
				if ( !ptr ) {
					return qfalse;
				}
				name = ptr + strlen( buf );
			}
		} else if ( *filter == '?' )      {
			filter++;
			name++;
		} else if ( *filter == '[' && *( filter + 1 ) == '[' )           {
			filter++;
		} else if ( *filter == '[' )      {
			filter++;
			found = qfalse;
			while ( *filter && !found ) {
				if ( *filter == ']' && *( filter + 1 ) != ']' ) {
					break;
				}
				if ( *( filter + 1 ) == '-' && *( filter + 2 ) && ( *( filter + 2 ) != ']' || *( filter + 3 ) == ']' ) ) {
					if ( casesensitive ) {
						if ( *name >= *filter && *name <= *( filter + 2 ) ) {
							found = qtrue;
						}
					} else {
						if ( toupper( *name ) >= toupper( *filter ) &&
							 toupper( *name ) <= toupper( *( filter + 2 ) ) ) {
							found = qtrue;
						}
					}
					filter += 3;
				} else {
					if ( casesensitive ) {
						if ( *filter == *name ) {
							found = qtrue;
						}
					} else {
						if ( toupper( *filter ) == toupper( *name ) ) {
							found = qtrue;
						}
					}
					filter++;
				}
			}
			if ( !found ) {
				return qfalse;
			}
			while ( *filter ) {
				if ( *filter == ']' && *( filter + 1 ) != ']' ) {
					break;
				}
				filter++;
			}
			filter++;
			name++;
		} else {
			if ( casesensitive ) {
				if ( *filter != *name ) {
					return qfalse;
				}
			} else {
				if ( toupper( *filter ) != toupper( *name ) ) {
					return qfalse;
				}
			}
			filter++;
			name++;
		}
	}
	return qtrue;
}

/*
============
Com_FilterPath
============
*/
int Com_FilterPath( char *filter, char *name, int casesensitive ) {
	int i;
	char new_filter[MAX_QPATH];
	char new_name[MAX_QPATH];

	for ( i = 0; i < MAX_QPATH - 1 && filter[i]; i++ ) {
		if ( filter[i] == '\\' || filter[i] == ':' ) {
			new_filter[i] = '/';
		} else {
			new_filter[i] = filter[i];
		}
	}
	new_filter[i] = '\0';
	for ( i = 0; i < MAX_QPATH - 1 && name[i]; i++ ) {
		if ( name[i] == '\\' || name[i] == ':' ) {
			new_name[i] = '/';
		} else {
			new_name[i] = name[i];
		}
	}
	new_name[i] = '\0';
	return Com_Filter( new_filter, new_name, casesensitive );
}

qboolean Com_InError()
{
	return com_errorEntered;
}

/*
=============
Com_Error

Both client and server can use this, and it will
do the appropriate thing.
=============
*/
void QDECL Com_Error( int code, const char *fmt, ... ) {
	va_list		argptr;
	static int	lastErrorTime;
	static int	errorCount;
	static int	lastErrorCode;
	static qboolean mainThreadInError;
	int		currentTime;
	jmp_buf*	abortframe;
	mvabuf;
	char l_errorMessage[4096];

#ifndef NDEBUG
	Com_Printf(CON_CHANNEL_ERROR,"Com_Error entered:\n");
	Sys_PrintBacktrace();
#endif

	if(com_developer && com_developer->integer > 1)
		asm ("int $3"); // SIGILL on windows - crash. Have to do something?

	Sys_EnterCriticalSection(CRITSECT_COM_ERROR);

	if(Sys_IsMainThread() == qfalse)
	{
		com_errorEntered = qtrue;

		va_start (argptr,fmt);
		Q_vsnprintf (l_errorMessage, sizeof(l_errorMessage),fmt,argptr);

		va_end (argptr);

		Q_strncpyz(com_errorMessage, l_errorMessage, sizeof(com_errorMessage));

		lastErrorCode = code;
		/* Terminate this thread and wait for the main-thread entering this function */
		if(Sys_IsDatabaseThread())
		{
			Sys_DatabaseCompleted();

			Sys_LeaveCriticalSection(CRITSECT_COM_ERROR);

			Com_Printf(CON_CHANNEL_ERROR, "%s\n", l_errorMessage);
			abortframe = (jmp_buf*)Sys_GetValue(2);
			longjmp (*abortframe, -1);
		}
		Sys_LeaveCriticalSection(CRITSECT_COM_ERROR);

		Com_Printf(CON_CHANNEL_ERROR, "%s\n", l_errorMessage);

		Sys_ExitThread(-1);
		return;
	}
	/* Main thread can't be twice in this function at same time */
	Sys_LeaveCriticalSection(CRITSECT_COM_ERROR);

	if(mainThreadInError == qtrue)
	{
		/* Com_Error() entered while shutting down. Now a fast shutdown! */
		Sys_Error ("%s", com_errorMessage);
		return;
	}
	mainThreadInError = qtrue;

	if(com_errorEntered == qfalse)
	{
		com_errorEntered = qtrue;

		va_start (argptr,fmt);
		Q_vsnprintf (com_errorMessage, sizeof(com_errorMessage),fmt,argptr);
		va_end (argptr);
		lastErrorCode = code;

	}

	code = lastErrorCode;

	Cvar_RegisterInt("com_errorCode", code, code, code, CVAR_ROM, "The last calling error code");

	// if we are getting a solid stream of ERR_DROP, do an ERR_FATAL
	currentTime = Sys_Milliseconds();
	if ( currentTime - lastErrorTime < 400 ) {
		if ( ++errorCount > 3 ) {
			code = ERR_FATAL;
		}
	} else {
		errorCount = 0;
	}

	lastErrorTime = currentTime;
	abortframe = (jmp_buf*)Sys_GetValue(2);


	if (code != ERR_DISCONNECT)
		Cvar_RegisterString("com_errorMessage", com_errorMessage, CVAR_ROM, "The last calling error message");

	if (code == ERR_DISCONNECT || code == ERR_SERVERDISCONNECT) {
		SV_Shutdown( "Server disconnected" );
		// make sure we can get at our local stuff
		/*FS_PureServerSetLoadedPaks("", "");*/
		com_errorEntered = qfalse;
		mainThreadInError = qfalse;
		longjmp(*abortframe, -1);
	} else if (code == ERR_DROP) {
		Com_Printf(CON_CHANNEL_SYSTEM,"********************\nERROR: %s\n********************\n", com_errorMessage);
		SV_Shutdown (va("Server crashed: %s",  com_errorMessage));
		/*FS_PureServerSetLoadedPaks("", "");*/
		com_errorEntered = qfalse;
		mainThreadInError = qfalse;
		longjmp (*abortframe, -1);
	} else {
		Sys_BeginShutdownWatchdog();
		SV_SApiShutdown();
		SV_Shutdown(va("Server fatal crashed: %s", com_errorMessage));
	}
	NET_Shutdown();
	Com_CloseLogFiles( );
	Sys_Error ("%s", com_errorMessage);

}




//==================================================================

void Com_WriteConfigToFile( const char *filename ) {
	fileHandle_t	f;

	f = FS_FOpenFileWrite( filename );
	if ( !f ) {
		Com_Printf(CON_CHANNEL_SYSTEM,"Couldn't write %s.\n", filename );
		return;
	}

	FS_Printf (f, "// generated by quake, do not modify\n");
	Cvar_WriteVariables (f);
	FS_FCloseFile( f );
}


/*
===============
Com_WriteConfiguration

Writes key bindings and archived cvars to config file if modified
===============
*/
void Com_WriteConfiguration( void ) {

	// if we are quiting without fully initializing, make sure
	// we don't write out anything
	if ( !com_fullyInitialized ) {
		return;
	}

	if ( !(cvar_modifiedFlags & CVAR_ARCHIVE ) ) {
		return;
	}
	cvar_modifiedFlags &= ~CVAR_ARCHIVE;

	Com_WriteConfigToFile( Q3CONFIG_CFG );

}


/*
===============
Com_WriteConfig_f

Write the config file to a specific name
===============
*/
void Com_WriteConfig_f( void ) {
	char	filename[MAX_QPATH];

	if ( Cmd_Argc() != 2 ) {
		Com_Printf(CON_CHANNEL_SYSTEM, "Usage: writeconfig <filename>\n" );
		return;
	}

	Q_strncpyz( filename, Cmd_Argv(1), sizeof( filename ) );
	COM_DefaultExtension( filename, sizeof( filename ), ".cfg" );
	Com_Printf(CON_CHANNEL_SYSTEM, "Writing %s.\n", filename );
	Com_WriteConfigToFile( filename );
}

void Com_SyncThreads(){

}

void Com_GetBspFilename(char *bspfilename, size_t len, const char *levelname)
{
  Com_sprintf(bspfilename, len, "maps/mp/%s.d3dbsp", levelname);
}

void __cdecl Com_ErrorAbort()
{
  Sys_Error("%s", &com_errorMessage);
}


void __cdecl Com_SetScriptSettings()
{
  int abort_on_error;
  int deven;

  deven = com_developer->integer || com_logfile->integer;
  abort_on_error = com_developer->integer;
  Scr_Settings(deven, com_developer_script->boolean, abort_on_error);
//  Scr_Settings(deven, com_developer_script->current.enabled, abort_on_error, SCRIPTINSTANCE_CLIENT);
}

void __cdecl Com_Restart()
{
//  XZoneInfo zoneInfo[1];

//  com_codeTimeScale = 1.0;
  CL_ShutdownHunkUsers();
  SV_ShutdownGameProgs();
  Com_ShutdownDObj();
  DObjShutdown();
  XAnimShutdown();
  Com_ShutdownWorld();
  CM_Shutdown();
  SND_ShutdownChannels();
  Hunk_Clear();
  Hunk_ResetDebugMem();
  if ( useFastFile->boolean )
  {
    DB_ReleaseXAssets();
  }
  Com_SetScriptSettings();
  com_fixedConsolePosition = 0;
  XAnimInit();
  DObjInit();
  Com_InitDObj();
}

void Com_Close()
{
  Com_ShutdownDObj();
  DObjShutdown();
  XAnimShutdown();
  Com_ShutdownWorld();
  CM_Shutdown();
  SND_ShutdownChannels();
  Hunk_Clear();
  if ( useFastFile->boolean )
  {
    DB_ShutdownXAssets();
    DB_ShutdownXAssetPools();
  }
  Scr_Shutdown( );
  Hunk_ShutdownDebugMemory();
}

int weaponInfoSource;

void __cdecl Com_SetWeaponInfoMemory(int source)
{
  weaponInfoSource = source;
}

void __cdecl Com_FreeWeaponInfoMemory(int source)
{
  if ( source == weaponInfoSource )
  {
    weaponInfoSource = 0;
    BG_ShutdownWeaponDefFiles();
  }
}

const char *__cdecl Com_DisplayName(const char *name, const char *clanAbbrev, int type)
{
  const char *result;

  if ( !*clanAbbrev )
  {
    type &= 0xFFFFFFFD;
  }
  switch ( type )
  {
    case 3:
      result = va("[%s]%s", clanAbbrev, name);
      break;
    case 1:
      result = name;
      break;
    case 2:
      result = va("[%s]", clanAbbrev);
      break;
    default:
      result = "";
      break;
  }
  return result;
}


void* Debug_HitchWatchdog(void* arg)
{
    while(true)
    {
        Sys_EnterCriticalSection(CRITSECT_WATCHDOG);
        ++watchdog_timer;
        if(watchdog_timer >= 40)
            asm("int $3");
            
        Sys_LeaveCriticalSection(CRITSECT_WATCHDOG);
        Sys_SleepMSec(100);
    }
    return NULL;
}

void Init_Watchdog()
{
    threadid_t tid;
    Sys_CreateNewThread(Debug_HitchWatchdog, &tid, NULL);
    Sys_SetThreadName(tid, "Watchdog");
}


qboolean Com_TryDownloadAndExecGlobalConfig()
{
	ftRequest_t* curfileobj;
	int transret;
	char content[8192];
	char globconfospath[1024];

	qboolean result = qfalse;
	curfileobj = HTTPRequest("https://raw.githubusercontent.com/callofduty4x/CoD4x_Server/master/globalconfig.cfg", "GET", NULL, "Accept: text/plain; charset=utf-8\r\n");

	if(curfileobj == NULL)
	{
		return result;
	}
	do
	{
		transret = FileDownloadSendReceive( curfileobj );
		Sys_SleepUSec(20000);
	} while (transret == 0);

	if(transret < 0)
	{
		FileDownloadFreeRequest(curfileobj);
		return result;
	}

	if(curfileobj->code != 200)
	{
		Com_Printf(CON_CHANNEL_SERVER,"Downloading of global config has failed with the following http code: %d\n", curfileobj->code);
		FileDownloadFreeRequest(curfileobj);
		return result;
	}

	if(sizeof(content) <= curfileobj->contentLength)
	{
		FileDownloadFreeRequest(curfileobj);
		return result;
	}

	Q_strncpyz(content, (const char*)curfileobj->recvmsg.data + curfileobj->headerLength, curfileobj->contentLength +1);

	if(strstr(content, "CoD4X Global Config"))
	{
		FS_BuildOSPathForThread(fs_homepath->string, "globalconfig.cfg", "", globconfospath, 0 );
		FS_StripTrailingSeperator( globconfospath );

		FS_WriteFileOSPath(globconfospath, content, strlen(content));
        Cbuf_AddText( content );
        Cbuf_AddText( "\n" );
        Cbuf_Execute();
		result = qtrue;
	}
	FileDownloadFreeRequest(curfileobj);
	return result;
}

void Com_DownloadAndExecGlobalConfig()
{
	char* buf;
	char globconfospath[1024];

	if(!Com_TryDownloadAndExecGlobalConfig())
	{
		FS_BuildOSPathForThread(fs_homepath->string, "globalconfig.cfg", "", globconfospath, 0 );
		FS_StripTrailingSeperator( globconfospath );
		if(FS_ReadFileOSPath(globconfospath, (void**)&buf) >= 0)
		{
            Cbuf_AddText( buf );
            Cbuf_AddText( "\n" );
            Cbuf_Execute();
   			FS_FreeFileOSPath(buf);
		}
	}
}
