/*
===========================================================================
    Copyright (C) 2010-2013  Ninja and TheKelm

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

#include "q_platform.h"

#ifndef PLUGIN_HANDLER_H
#define PLUGIN_HANDLER_H

/*==========================================*
 *                                          *
 *         Plugin Handler's header          *
 *                                          *
 *   Contains all necessary prototypes      *
 *  and types for using the Plugin Handler. *
 *                                          *
 *==========================================*/

#define MAX_PLUGINS 16 // Maximum number of loaded plugins, hardcoded for better performance

typedef void convariable_t; //For plugins

#define P_P_F __attribute__((__noinline__)) __attribute__((__cdecl__)) DLLEXPORT

#include <stdarg.h>
#include <stdlib.h>
#include <string.h>

#include "cmd.h"        // xcommand_t
#include "sys_net.h"    // netadr
#include "msg.h"        // msg_t
#include "g_shared.h"   // level
#include "qcommon_io.h" // Com_Printf
#include "server.h"     // client_t
#include "sys_net.h"    // Tcp stuff
#include "scr_vm.h"
#include "sys_thread.h"

#include "../plugins/plugin_declarations.h"
#include "plugin_events.h"

#define PLUGIN_MAX_MALLOCS 50
#define PLUGIN_MAX_SOCKETS 4

// plugins com
#define PLUGIN_COM_MAXNAMELEN 28    // Max 27 chars + \0
#define PLUGIN_MAX_EXPORTS 50       // Maximum count of exported functions, each takes 32B of mem = 1kB per plugin

// ----------------------------//
//  Plugin Handler's own types //
// ----------------------------//

enum {
    PLUGIN_UNKNOWN = -1
};

typedef struct{
    char name[64];
    xcommand_t xcommand;
}pluginCmd_t;

struct __attribute__((__packed__)) dyncallstub_s
{
		byte mov_eax_esp4[4];
		byte push_eax;
		byte move_eax_ptr;
		int32_t *hasControlAdr;
		byte move_edx_ptr;
		uint32_t pluginId;
		byte move_eax_edx[2];
		byte move_ecx_ptr;
		xfunction_t xfunction;
		byte call_ecx[2];
		byte add_esp4[3];
		byte move_eax2_ptr;
		int32_t *hasControlAdr2;
		byte move_edx2_ptr;
		uint32_t nullpluginId;
		byte move_eax_edx2[2];
		byte ret;
};

typedef struct{
    char name[64];
		qboolean isMethod;
		struct dyncallstub_s dyncallstub;
}pluginScriptCmd_t;

typedef struct{
    size_t size;
    void *ptr;
}pluginMem_t;

typedef struct{
    char name[PLUGIN_COM_MAXNAMELEN];
    void *(*function)();
}pluginExport_t;

typedef struct{
    int sock;
    netadr_t remote;
    qboolean (*packetEventHandler)(netadr_t *from, msg_t* msg);
}pluginTcpClientSocket_t;

#define MAX_PLUGINCALLBACKS 8
#define MAX_PLUGINCALLBACKARGS 8
typedef struct{
  void (*callbackMain)();
  void (*threadMain)(void* a, ...);
  qboolean isActive;
  qboolean lock;
  void* callback_args[MAX_PLUGINCALLBACKARGS];
  void* thread_args[MAX_PLUGINCALLBACKARGS];
  threadid_t tid;
}plugin_thread_callback_t;


typedef struct{
    int (*OnInit)();            // Initialization function
    void (*OnInfoRequest)();    // Info gathering function

    void (*OnEvent[PLUGINS_ITEMCOUNT])();
    void (*OnUnload)();    // De-initialization function

    pluginCmd_t cmd[20];
    int cmds;
    int scriptfunctions;
    int scriptmethods;

    char name[MAX_QPATH];

    pluginMem_t memory[PLUGIN_MAX_MALLOCS];
    pluginTcpClientSocket_t sockets[PLUGIN_MAX_SOCKETS];

    pluginExport_t exportedFunctions[PLUGIN_MAX_EXPORTS];
    int exports;

    size_t usedMem;
    int mallocs;

    qboolean loaded;
    qboolean enabled;

    void *lib_handle;
    /*
    void *lib_start;
    long lib_size;
    */

    /* Callback thread control */
    plugin_thread_callback_t thread_callbacks[MAX_PLUGINCALLBACKS];
}plugin_t;

typedef struct{
    plugin_t plugins[MAX_PLUGINS];
    int loadedPlugins;
    qboolean enabled;
    qboolean initializing_plugin;
    int hasControl;
}pluginWrapper_t;

#define MAX_SCRIPTFUNCTIONS 64

typedef union
{
	byte pad[MAX_SCRIPTFUNCTIONS * MAX_PLUGINS * 64];
	pluginScriptCmd_t s[MAX_SCRIPTFUNCTIONS * MAX_PLUGINS];
}__attribute__((aligned (4096))) pluginScriptCallStubBase_t;

extern pluginWrapper_t pluginFunctions; // defined in plugin_handler.c
extern pluginScriptCallStubBase_t pluginScriptCallStubs;

// --------------------------------//
//  Plugin Handler's own functions //
// --------------------------------//
void PHandler_Load(char* );
void PHandler_Unload(int id);
void PHandler_UnloadByName(char *name);
int PHandler_GetID(char *name);
void PHandler_Init();
void *PHandler_Malloc(int,size_t);
void PHandler_Free(int,void *);
void PHandler_FreeAll(int);
void PHandler_Error(int,int, char *);
qboolean PHandler_TcpConnect(int,const char *,int);
int PHandler_TcpGetData(int, int, void*, int);
int PHandler_TcpSendData(int,int, void*, int);
void PHandler_TcpCloseConnection(int,int);
int PHandler_CallerID();
void PHandler_ChatPrintf(int,char *,...);
void PHandler_CmdExecute_f( void ); // fake server command for use in plugin commands
void PHandler_ScrAddMethod(char *name, xfunction_t function, qboolean replace, int pID);
void PHandler_ScrAddFunction(char *name, xfunction_t function, qboolean replace, int pID);
// --------------------------------------//
//  Plugin Handler's own server commands //
// --------------------------------------//

void PHandler_LoadPlugin_f( void );
void PHandler_UnLoadPlugin_f( void );
void PHandler_PluginList_f( void );
void PHandler_PluginInfo_f( void );
void Plugin_RunThreadCallbacks();

/*

pluginscriptcommandhelper:
constants
memaddr: &pluginFunctions.hasControl
pluginID: PHandler_CallerID();
pluginFunction

mov eax, &pluginFunctions.hasControl	7bytes
mov edx, PHandler_CallerID()					7bytes
mov [eax], edx												2bytes
jmp pluginFunction										5bytes

*/
#ifdef __cplusplus
extern "C"
{
#endif
void PHandler_Event(int, ...);
#ifdef __cplusplus
};
#endif


#endif /*PLUGIN_HANDLER_H*/
