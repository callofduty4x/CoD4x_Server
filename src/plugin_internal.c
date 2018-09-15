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



#include "plugin_handler.h"
#include "sys_main.h"
#include "sys_patch.h"
/*==========================================*
 *                                          *
 *   Plugin Handler's internal functions    *
 *                                          *
 * Functions in this file might be not safe *
 *    for use outside of plugin handler.    *
 *                                          *
 *==========================================*/



/*
============
 TCP module
============
*/

qboolean PHandler_TcpConnect(int pID, const char* remote, int connection)
{
    if(pluginFunctions.plugins[pID].sockets[connection].sock < 1){
        pluginFunctions.plugins[pID].sockets[connection].sock = NET_TcpClientConnect( remote );

        if(pluginFunctions.plugins[pID].sockets[connection].sock < 1){
            Com_Printf(CON_CHANNEL_PLUGINS,"Plugins: Notice! Error connecting to server: %s for plugin #%d!\n", remote, pID);
            return qfalse;
        }
		Com_Printf(CON_CHANNEL_PLUGINS,"PHandler_TcpConnect: Received socket %d @ %d\n", pluginFunctions.plugins[pID].sockets[connection].sock, connection);
        NET_StringToAdr(remote, &pluginFunctions.plugins[pID].sockets[connection].remote, NA_UNSPEC);
        return qtrue;
    }
    Com_PrintError(CON_CHANNEL_PLUGINS,"Plugin_TcpConnect: Connection id %d is already in use for plugin #%d!\n",connection ,pID );

    return qfalse;
}

int PHandler_TcpGetData(int pID, int connection, void* buf, int size )
{
    char errormsg[1024];
    errormsg[0] = 0;
    int len;
    pluginTcpClientSocket_t* ptcs = &pluginFunctions.plugins[pID].sockets[connection];

    if(ptcs->sock < 1){
        Com_PrintWarning(CON_CHANNEL_PLUGINS,"Plugin_TcpGetData: called on a non open socket for plugin ID: #%d\n", pID);
        return -1;
    }
    len = NET_TcpClientGetData(ptcs->sock, buf, size, errormsg, sizeof(errormsg));
//    Com_Printf(CON_CHANNEL_PLUGINS,"PHandler_TcpGetData: Retrived data from socket %d @ %d\n", ptcs->sock, connection);

    if(len > 0)
    {
       return len;
    }

    if(len == NET_WANT_READ)
    {
      return 0;
    }
    Com_Printf(CON_CHANNEL_PLUGINS,"PHandler_TcpGetData[%d]: NET_Receive returned %s\n", pID, errormsg );
    NET_TcpCloseSocket(ptcs->sock);
    ptcs->sock = -1;
    return -1;
}


int PHandler_TcpSendData(int pID, int connection, void* data, int len)
{
    int state;

    pluginTcpClientSocket_t* ptcs = &pluginFunctions.plugins[pID].sockets[connection];

    if(ptcs->sock < 1){
        Com_PrintWarning(CON_CHANNEL_PLUGINS,"Plugin_TcpSendData: called on a non open socket for plugin ID: #%d\n", pID);
        return -1;
    }
    state =  NET_TcpSendData(ptcs->sock, data, len, NULL, 0);
//    Com_Printf(CON_CHANNEL_PLUGINS,"PHandler_TcpSendData: Sent data from socket %d @ %d\n", ptcs->sock, connection);

    if(state == NET_WANT_WRITE)
    {
      return 0;
    }

    if(state == -1)
    {
        NET_TcpCloseSocket(ptcs->sock);
        ptcs->sock = -1;
        return -1;
    }
    return state;
}

void PHandler_TcpCloseConnection(int pID, int connection)
{
    pluginTcpClientSocket_t* ptcs = &pluginFunctions.plugins[pID].sockets[connection];

    if(ptcs->sock < 1){
        Com_PrintWarning(CON_CHANNEL_PLUGINS,"Plugin_TcpCloseConnection: Called on a non open socket for plugin ID: #%d\n", pID);
        return;
    }
    NET_TcpCloseSocket(ptcs->sock);
	Com_Printf(CON_CHANNEL_PLUGINS,"PHandler_TcpCloseConnection: Closed socket %d @ %d\n", ptcs->sock, connection);
    ptcs->sock = -1;
}

/*
=====================================
 Functionality providers for exports
=====================================
*/

void PHandler_ChatPrintf(int slot, char *fmt, ... )
{
    char str[256];
    client_t *cl;
    va_list vl;

    cl = slot >=0 ? &(svs.clients[slot]) : NULL;
    va_start(vl,fmt);
    vsprintf(str,fmt,vl);
    va_end(vl);
    SV_SendServerCommand(cl, "h \"%s\"", str);
}
void PHandler_BoldPrintf(int slot, char *fmt, ... )
{
    char str[256];
    client_t *cl;
    va_list vl;
    cl = slot >=0 ? &(svs.clients[slot]) : NULL;
    va_start(vl,fmt);
    vsprintf(str,fmt,vl);
    va_end(vl);
    SV_SendServerCommand(cl, "c \"%s\"", str);
}

//Ninja: Why this spam? Nobody want to know it in normal operation.
void PHandler_CmdExecute_f()
{
//    Com_Printf(CON_CHANNEL_PLUGINS,"Attempting to execute a plugin command '%s'.\n",Cmd_Argv(0));
    if(!pluginFunctions.enabled){
        Com_Printf(CON_CHANNEL_PLUGINS,"Error! Tried executing a plugin command with plugins being disabled! Command name: '%s'.\n",Cmd_Argv(1));
        return;
    }
    char name[128];
    int i,j;
    void (*func)();
    strcpy(name,Cmd_Argv(0));
    for(i=0;i<MAX_PLUGINS;i++)
    {
        if(pluginFunctions.plugins[i].loaded && pluginFunctions.plugins[i].enabled)
        {
            for(j=0;j<pluginFunctions.plugins[i].cmds;j++)
            {
                if(strcmp(name,pluginFunctions.plugins[i].cmd[j].name)==0)
                {
//                    Com_Printf(CON_CHANNEL_PLUGINS,"Executing plugin command '%s' for plugin '%s', plugin ID: %d.\n",name,pluginFunctions.plugins[i].name,i);
                    func = (void (*)())(pluginFunctions.plugins[i].cmd[j].xcommand);
		                pluginFunctions.hasControl = i;
                    func();
                    pluginFunctions.hasControl = PLUGIN_UNKNOWN;
                    return;
                }
            }
        }
    }
}

void PHandler_RemoveCommand(int pID,char *name)
{
    int i,j,k;
    j=pluginFunctions.plugins[pID].cmds;
    for(i=0;i<j;i++){
        if(strcmp(name,pluginFunctions.plugins[pID].cmd[i].name)==0){
            Cmd_RemoveCommand(name);
            memset(pluginFunctions.plugins[pID].cmd,0x00,sizeof(pluginCmd_t));
            // Now we need to rearrrange the array...
            for(k=i;k<j-1;k++){
                pluginFunctions.plugins[pID].cmd[k] = pluginFunctions.plugins[pID].cmd[k+1];

            }
            Com_Printf(CON_CHANNEL_PLUGINS,"Command '%s' removed for plugin %s.\n",name,pluginFunctions.plugins[pID].name);
            return;
        }

    }
    Com_Printf(CON_CHANNEL_PLUGINS,"Warning: tried removing command '%s', which was not found for plugin %s.\n",name,pluginFunctions.plugins[pID].name);

}

void *PHandler_Malloc(int pID,size_t size)
{
    int i;
    Com_Printf(CON_CHANNEL_PLUGINS,"Attempting to allocate %dB of memory for plugin #%d...\n",size,pID);
    //Plugin identified, find the first free spot in it's allocated pointers table
    for(i=0;i<PLUGIN_MAX_MALLOCS;i++){
        if(pluginFunctions.plugins[pID].memory[i].ptr==NULL){
            pluginFunctions.plugins[pID].memory[i].ptr = malloc(size);
            pluginFunctions.plugins[pID].memory[i].size = size;
            pluginFunctions.plugins[pID].usedMem += size;
            ++pluginFunctions.plugins[pID].mallocs;
            Com_Printf(CON_CHANNEL_PLUGINS,"Allocating %dB of memory for plugin #%d.\n",size,pID);
            return pluginFunctions.plugins[pID].memory[i].ptr;

        }

    }
    Com_Printf(CON_CHANNEL_PLUGINS,"Plugins: Warning! Memory allocations limit reached for plugin #%d!\n",pID);
    return NULL;
}
void PHandler_Free(int pID, void *ptr)
{

    int i;
    if(ptr==NULL){
        Com_Printf(CON_CHANNEL_PLUGINS,"Plugins: Warning! Plugin #%d tried freeing a NULL pointer! Called Plugin_Free() twice?\n",pID);
        return;
    }
    //Plugin identified, find the first free spot in it's allocated pointers table
    for(i=0;i<PLUGIN_MAX_MALLOCS;i++){
        if(pluginFunctions.plugins[pID].memory[i].ptr==ptr){
            free(ptr);
            pluginFunctions.plugins[pID].memory[i].ptr = NULL;
            pluginFunctions.plugins[pID].usedMem -= pluginFunctions.plugins[pID].memory[i].size;
            --pluginFunctions.plugins[pID].mallocs;
            return;
        }
    }
    Com_Printf(CON_CHANNEL_PLUGINS,"Plugins: Warning! Plugin %d tried freeing an unknown pointer!\n",pID);

}

void PHandler_FreeAll(int pID)
{
    int i;
    if(pID<0){
        Com_Printf(CON_CHANNEL_PLUGINS,"Plugins: Error! Tried to free all memory of an unknown plugin!\n");
        return;
    }
    for(i=0;i<PLUGIN_MAX_MALLOCS;++i){
        if(pluginFunctions.plugins[pID].memory[i].ptr!=NULL){
            free(pluginFunctions.plugins[pID].memory[i].ptr);
            pluginFunctions.plugins[pID].memory[i].ptr=NULL;
        }
    }
    pluginFunctions.plugins[pID].usedMem = 0;
    pluginFunctions.plugins[pID].mallocs = 0;
    Com_Printf(CON_CHANNEL_PLUGINS,"Plugins: Memory for plugin #%d has been freed.\n",pID);

}
P_P_F void PHandler_Error(int pID,int code,char *string)
{
    if(pluginFunctions.plugins[pID].enabled==qfalse){
        Com_PrintWarning(CON_CHANNEL_PLUGINS,"An error of ID %d and string \"%s\" occured in a disabled plugin with ID %d!\n",code,string,pID);
        return;
    }
    switch(code)
    {
        case P_ERROR_WARNING:
            Com_Printf(CON_CHANNEL_PLUGINS,"Plugin #%d ('%s') issued a warning: \"%s\"\n",pID,pluginFunctions.plugins[pID].name, string);
            break;
        case P_ERROR_DISABLE:
            Com_Printf(CON_CHANNEL_PLUGINS,"Plugin #%d ('%s') returned an error and will be disabled! Error string: \"%s\".\n",pID,pluginFunctions.plugins[pID].name,string);
            pluginFunctions.plugins[pID].enabled = qfalse;
            break;
        case P_ERROR_TERMINATE:
            Com_Printf(CON_CHANNEL_PLUGINS,"Plugin #%d ('%s') reported a critical error, the server will be terminated. Error string: \"%s\".\n",pID,pluginFunctions.plugins[pID].name,string);
            Com_Error(ERR_FATAL, "%s", string);
            break;
        default:
            Com_Printf(CON_CHANNEL_PLUGINS,"Plugin #%d ('%s') reported an unknown error! Error string: \"%s\", error code: %d.\n",pID,pluginFunctions.plugins[pID].name,string,code);
            break;
    }


}
/*
=================
 Server commands
=================
*/
void PHandler_LoadPlugin_f( void )
{
        if( Cmd_Argc() < 2){
                Com_Printf(CON_CHANNEL_PLUGINS,"Usage: %s <plugin file name without extension>\n", Cmd_Argv(0));
                return;
        }
        PHandler_Load(Cmd_Argv(1));
}
void PHandler_UnLoadPlugin_f()
{
    if( Cmd_Argc() < 2){
        Com_Printf(CON_CHANNEL_PLUGINS,"Usage: %s <plugin file name without extension>\n", Cmd_Argv(0));
        return;
    }
    PHandler_UnloadByName(Cmd_Argv(1));
}
void PHandler_PluginInfo_f()
{
    if(Cmd_Argc() < 2){
        Com_Printf(CON_CHANNEL_PLUGINS,"Usage: %s <plugin name>\n",Cmd_Argv(0));
        return;
    }
    int id = PHandler_GetID(Cmd_Argv(1));
    int i;
    int vMajor, vMinor;
    pluginInfo_t info;
    if(id<0){
        Com_Printf(CON_CHANNEL_PLUGINS,"Plugin \"%s\" is not loaded!\n",Cmd_Argv(1));
        return;
    }
    (*pluginFunctions.plugins[id].OnInfoRequest)(&info);
    Com_Printf(CON_CHANNEL_PLUGINS,"\n");
    Com_Printf(CON_CHANNEL_PLUGINS,"^2Plugin name:^7\n%s\n\n",pluginFunctions.plugins[id].name);
    vMajor = info.pluginVersion.major;
    vMinor = info.pluginVersion.minor;
    if(vMinor > 100){
        while(vMinor>=1000){
            vMinor /= 10;
        }
    }
    Com_Printf(CON_CHANNEL_PLUGINS,"^2Plugin version:^7\n%d.%d\n\n",vMajor,vMinor);
    Com_Printf(CON_CHANNEL_PLUGINS,"^2Full plugin name:^7\n%s\n\n",info.fullName);
    Com_Printf(CON_CHANNEL_PLUGINS,"^2Short plugin description:^7\n%s\n\n",info.shortDescription);
    Com_Printf(CON_CHANNEL_PLUGINS,"^2Full plugin description:^7\n%s\n\n",info.longDescription);
    Com_Printf(CON_CHANNEL_PLUGINS,"^2Commands:^7\n\n");
    for(i=0; i < pluginFunctions.plugins[id].cmds;++i){
        Com_Printf(CON_CHANNEL_PLUGINS," -%s\n",pluginFunctions.plugins[id].cmd[i].name);
    }
    Com_Printf(CON_CHANNEL_PLUGINS,"^2Total of %d commands.^7\n\n",pluginFunctions.plugins[id].cmds);

    Com_Printf(CON_CHANNEL_PLUGINS,"^2Script Functions:^7\n\n");
    for(i=0; i < pluginFunctions.plugins[id].scriptfunctions;++i)
    {
      if(!pluginScriptCallStubs.s[id * MAX_SCRIPTFUNCTIONS + i].isMethod)
      {
        Com_Printf(CON_CHANNEL_PLUGINS," -%s\n",pluginScriptCallStubs.s[id * MAX_SCRIPTFUNCTIONS + i].name);
      }
    }
    Com_Printf(CON_CHANNEL_PLUGINS,"^2Total of %d functions.^7\n\n",pluginFunctions.plugins[id].scriptfunctions);

    Com_Printf(CON_CHANNEL_PLUGINS,"^2Script Methods:^7\n\n");
    for(i=0; i < pluginFunctions.plugins[id].scriptmethods;++i)
    {
        if(pluginScriptCallStubs.s[id * MAX_SCRIPTFUNCTIONS + i].isMethod)
        {
          Com_Printf(CON_CHANNEL_PLUGINS," -%s\n", pluginScriptCallStubs.s[id * MAX_SCRIPTFUNCTIONS + i].name);
        }
    }
    Com_Printf(CON_CHANNEL_PLUGINS,"^2Total of %d methods.^7\n\n",pluginFunctions.plugins[id].scriptmethods);

}
void PHandler_PluginList_f()
{
    int i,j;
    if(pluginFunctions.loadedPlugins == 0){
        Com_Printf(CON_CHANNEL_PLUGINS,"No plugins are loaded.\n");
    }
    else{
        Com_Printf(CON_CHANNEL_PLUGINS,"\nLoaded plugins:\n\n");
        Com_Printf(CON_CHANNEL_PLUGINS,"*----------------------------------------------------------------------------------*\n");
        Com_Printf(CON_CHANNEL_PLUGINS,"| ID |         name         | enabled? | memory allocations | total all. mem. in B |\n");
        for(i=0,j=0;i<pluginFunctions.loadedPlugins;++i,++j){
            while(j<MAX_PLUGINS){    // ORing might be dangerous when the compiler uses optimalization...
                if(pluginFunctions.plugins[j].loaded)
                    break;
                ++j;
            }
            if(j==MAX_PLUGINS){
                i=j;
                break;
            }
            Com_Printf(CON_CHANNEL_PLUGINS,"| %-3d| %-21s| %-9s| %-19d| %-21d|\n",j,pluginFunctions.plugins[j].name,pluginFunctions.plugins[j].enabled==0 ? "no" : "yes",pluginFunctions.plugins[j].mallocs,pluginFunctions.plugins[j].usedMem);

        }

        Com_Printf(CON_CHANNEL_PLUGINS,"*----------------------------------------------------------------------------------*\n");
        Com_Printf(CON_CHANNEL_PLUGINS,"\nTotal of %d loaded plugins.\n",i);
    }

    Com_Printf(CON_CHANNEL_PLUGINS,"\nPlugin handler version: %d.%d.\n", PLUGIN_HANDLER_VERSION_MAJOR, PLUGIN_HANDLER_VERSION_MINOR);

}
/*
======
 Misc
======
*/

int PHandler_CallerID() // Can now be inlined, why not ^^
{
    return pluginFunctions.hasControl;
    //Legacy code
    /*
    void *funcptrs[3];
    int i,j;
    j = Sys_Backtrace(funcptrs,3);
    if(j<3){
    Com_Error(ERR_FATAL,"PHandler_CallerID: backtrace failed to return function pointers! Possible exploit detected! Terminating the server...\n");
    }
    for(i=0;i<MAX_PLUGINS;++i){
        if(pluginFunctions.plugins[i].lib_start < funcptrs[2] && pluginFunctions.plugins[i].lib_start + pluginFunctions.plugins[i].lib_size > funcptrs[2])
            return i;
    }
    return -1;*/
}

void PHandler_InitDynCallStub(struct dyncallstub_s *d, xfunction_t func, int pID)
{
  //Static Opcodes
  d->mov_eax_esp4[0] = 0x8b;
  d->mov_eax_esp4[1] = 0x44;
  d->mov_eax_esp4[2] = 0x24;
  d->mov_eax_esp4[3] = 0x04;
  d->push_eax = 0x50;
  d->move_eax_ptr = 0xb8;
  d->move_edx_ptr = 0xba;
  d->move_eax_edx[0] = 0x89;
  d->move_eax_edx[1] = 0x10;
  d->move_ecx_ptr = 0xb9;
  d->call_ecx[0] = 0xff;
  d->call_ecx[1] = 0xd1;
  d->add_esp4[0] = 0x83;
  d->add_esp4[1] = 0xc4;
  d->add_esp4[2] = 0x04;
  d->move_eax2_ptr = 0xb8;
  d->move_edx2_ptr = 0xba;
  d->move_eax_edx2[0] = 0x89;
  d->move_eax_edx2[1] = 0x10;
  d->ret = 0xc3;

  //Dynamic addresses
  d->hasControlAdr = &pluginFunctions.hasControl;
  d->hasControlAdr2 = &pluginFunctions.hasControl;
  d->pluginId = pID;
  d->nullpluginId = PLUGIN_UNKNOWN;
  d->xfunction = func;

}

void PHandler_ScrAddFunction(char *name, xfunction_t function, qboolean replace, int pID)
{
    int i;

    if(pID>=MAX_PLUGINS){
        Com_Printf(CON_CHANNEL_PLUGINS,"Error: tried adding a script command for a plugin with non existent pID. pID supplied: %d.\n",pID);
        return;
    }else if(pID<0){
        Com_Printf(CON_CHANNEL_PLUGINS,"Plugin Handler error: Plugin_ScrAddFunction or Plugin_ScrReplaceFunction called from not within a plugin or from a disabled plugin!\n");
        return;
    }
    if(!pluginFunctions.plugins[pID].loaded){
        Com_Printf(CON_CHANNEL_PLUGINS,"Error: Tried adding a command for not loaded plugin! PID: %d.\n",pID);
    }
    Com_Printf(CON_CHANNEL_PLUGINS,"Adding a plugin script function for plugin %d, command name: %s.\n",pID, name);
    for(i = 0; i < MAX_SCRIPTFUNCTIONS; i++ )
    {
        if(pluginScriptCallStubs.s[pID * MAX_SCRIPTFUNCTIONS + i].name[0] == 0)
        {
            break;
        }
    }
    if(i == MAX_SCRIPTFUNCTIONS)
    {
        Com_PrintError(CON_CHANNEL_PLUGINS,"Exceeded maximum number of scrip-functions (%d) for plugin\n", MAX_SCRIPTFUNCTIONS);
        return;
    }
    if(strlen(name) >= sizeof(pluginScriptCallStubs.s[pID * MAX_SCRIPTFUNCTIONS + i].name))
    {
        Com_PrintError(CON_CHANNEL_PLUGINS,"Exceeded maximum length of name for scrip-method: %s (%d) for plugin.\n", name, sizeof(pluginScriptCallStubs.s[pID * MAX_SCRIPTFUNCTIONS + i].name) );
        return;
    }
    if(replace == qtrue)
    {
        Scr_RemoveFunction(name);
    }
    if(Scr_AddFunction(name, (xfunction_t)&pluginScriptCallStubs.s[pID * MAX_SCRIPTFUNCTIONS + i].dyncallstub, qfalse) == qfalse)
    {
        Com_PrintError(CON_CHANNEL_PLUGINS,"Failed to add this script function: %s for plugin\n", name);
        return;
    }
    Sys_MemoryProtectWrite(pluginScriptCallStubs.s, sizeof(pluginScriptCallStubs.s));
    Q_strncpyz(pluginScriptCallStubs.s[pID * MAX_SCRIPTFUNCTIONS + i].name, name, sizeof(pluginScriptCallStubs.s[pID * MAX_SCRIPTFUNCTIONS + i].name));
    pluginScriptCallStubs.s[pID * MAX_SCRIPTFUNCTIONS + i].isMethod = qfalse;
    PHandler_InitDynCallStub(&pluginScriptCallStubs.s[pID * MAX_SCRIPTFUNCTIONS + i].dyncallstub, function, pID);
    Sys_MemoryProtectExec(pluginScriptCallStubs.s, sizeof(pluginScriptCallStubs.s));
    pluginFunctions.plugins[pID].scriptfunctions++;
}

void PHandler_ScrAddMethod(char *name, xfunction_t function, qboolean replace, int pID)
{
    int i;

    if(pID>=MAX_PLUGINS){
        Com_Printf(CON_CHANNEL_PLUGINS,"Error: tried adding a script command for a plugin with non existent pID. pID supplied: %d.\n",pID);
        return;
    }else if(pID<0){
        Com_Printf(CON_CHANNEL_PLUGINS,"Plugin Handler error: Plugin_ScrAddMethod or Plugin_ScrReplaceMethod called from not within a plugin or from a disabled plugin!\n");
        return;
    }
    if(!pluginFunctions.plugins[pID].loaded){
        Com_Printf(CON_CHANNEL_PLUGINS,"Error: Tried adding a command for not loaded plugin! PID: %d.\n",pID);
    }
    Com_Printf(CON_CHANNEL_PLUGINS,"Adding a plugin script method for plugin %d, command name: %s.\n",pID, name);
    for(i = 0; i < MAX_SCRIPTFUNCTIONS; i++ )
    {
        if(pluginScriptCallStubs.s[pID * MAX_SCRIPTFUNCTIONS + i].name[0] == 0)
        {
            break;
        }
    }
    if(i == MAX_SCRIPTFUNCTIONS)
    {
        Com_PrintError(CON_CHANNEL_PLUGINS,"Exceeded maximum number of scrip-functions (%d) for plugin\n", MAX_SCRIPTFUNCTIONS);
        return;
    }
    if(strlen(name) >= sizeof(pluginScriptCallStubs.s[pID * MAX_SCRIPTFUNCTIONS + i].name))
    {
        Com_PrintError(CON_CHANNEL_PLUGINS,"Exceeded maximum length of name for scrip-method: %s (%d) for plugin.\n", name, sizeof(pluginScriptCallStubs.s[pID * MAX_SCRIPTFUNCTIONS + i].name) );
        return;
    }
    if(replace == qtrue)
    {
        Scr_RemoveMethod(name);
    }
    if(Scr_AddMethod(name, (xfunction_t)&pluginScriptCallStubs.s[pID * MAX_SCRIPTFUNCTIONS + i].dyncallstub, qfalse) == qfalse)
    {
        Com_PrintError(CON_CHANNEL_PLUGINS,"Failed to add this script method: %s for plugin\n", name);
        return;
    }
    Sys_MemoryProtectWrite(pluginScriptCallStubs.s, sizeof(pluginScriptCallStubs.s));
    Q_strncpyz(pluginScriptCallStubs.s[pID * MAX_SCRIPTFUNCTIONS + i].name, name, sizeof(pluginScriptCallStubs.s[pID * MAX_SCRIPTFUNCTIONS + i].name));
    pluginScriptCallStubs.s[pID * MAX_SCRIPTFUNCTIONS + i].isMethod = qtrue;
    PHandler_InitDynCallStub(&pluginScriptCallStubs.s[pID * MAX_SCRIPTFUNCTIONS + i].dyncallstub, function, pID);
    Sys_MemoryProtectExec(pluginScriptCallStubs.s, sizeof(pluginScriptCallStubs.s));
    pluginFunctions.plugins[pID].scriptmethods++;
}
