#ifndef PLUGIN_HANDLER_C
#define PLUGIN_HANDLER_C



#define P_P_F __attribute__((__noinline__)) __attribute__((__cdecl__))

pluginWrapper_t pluginFunctions;
mainFunctions_t mainFunctions;

#include "plugin_com.c"

void Plugin_Init()
{
    void *ptr;
    int i;
    pluginFunctions.loadedPlugins=0;
    pluginFunctions.enabled=qfalse;

    ptr=(void*)&mainFunctions.Com_Printf;

    //    Copy the function pointers to mainFunctions struct
    mainFunctions.Com_Printf = Com_Printf;
    mainFunctions.Com_DPrintf = Com_DPrintf;
    mainFunctions.Com_PrintWarning = Com_PrintWarning;
    mainFunctions.Com_PrintError = Com_PrintError;
    mainFunctions.Cmd_Argv = Cmd_Argv;
    mainFunctions.Cmd_Argc = Cmd_Argc;
    mainFunctions.FS_SV_FOpenFileRead = FS_SV_FOpenFileRead;
    mainFunctions.FS_SV_FOpenFileWrite = FS_SV_FOpenFileWrite;
    mainFunctions.FS_Read = FS_Read;
    mainFunctions.FS_ReadLine = FS_ReadLine;
    mainFunctions.FS_Write = FS_Write;
    mainFunctions.FS_FCloseFile = FS_FCloseFile;
    mainFunctions.Com_ParseGetToken = Com_ParseGetToken;
    mainFunctions.Com_ParseTokenLength = Com_ParseTokenLength;
    mainFunctions.Cvar_VariableValue = Cvar_VariableValue;
    mainFunctions.Cvar_VariableIntegerValue = Cvar_VariableIntegerValue;
    mainFunctions.Cvar_VariableString = Cvar_VariableString;
    mainFunctions.Cvar_VariableStringBuffer = Cvar_VariableStringBuffer;
    mainFunctions.Sys_Milliseconds = Sys_Milliseconds;

    mainFunctions.Plugin_TcpConnect = Plugin_TcpConnect_p;
    mainFunctions.Plugin_TcpGetData = Plugin_TcpGetData_p;
    mainFunctions.Plugin_TcpSendData = Plugin_TcpSendData_p;
    mainFunctions.Plugin_TcpCloseConnection = Plugin_TcpCloseConnection_p;
    mainFunctions.Plugin_UdpSendData = Plugin_UdpSendData_p;
    mainFunctions.Plugin_ServerPacketEvent = Plugin_ServerPacketEvent_p;
    mainFunctions.NET_StringToAdr = NET_StringToAdr;
    mainFunctions.Plugin_GetClientScoreboard = Plugin_GetClientScoreboard;
    mainFunctions.Plugin_Cmd_GetInvokerUid = Plugin_Cmd_GetInvokerUid;
    mainFunctions.Plugin_GetPlayerUid = Plugin_GetPlayerUid;
    mainFunctions.Plugin_GetSlotCount = Plugin_GetSlotCount;
    mainFunctions.Plugin_IsSvRunning = Plugin_IsSvRunning;
    mainFunctions.Plugin_ChatPrintf = Plugin_ChatPrintf;
    mainFunctions.Plugin_BoldPrintf = Plugin_BoldPrintf;
    mainFunctions.Plugin_GetPlayerName = Plugin_GetPlayerName;
    mainFunctions.Plugin_AddCommand = Plugin_AddCommand;
    mainFunctions.Plugin_Malloc = Plugin_Malloc_p;
    mainFunctions.Plugin_Free = Plugin_Free_p;
    mainFunctions.Plugin_Error = Plugin_Error;
    mainFunctions.Plugin_GetLevelTime = Plugin_GetLevelTime_p;
    mainFunctions.Plugin_GetServerTime = Plugin_GetServerTime_p;

    mainFunctions.Plugin_SetPlayerUID = Plugin_SetPlayerUID_p;
    mainFunctions.Plugin_GetPlayerUID = Plugin_GetPlayerUID_p;
    mainFunctions.Plugin_GetPlayerGUID = Plugin_GetPlayerGUID_p;
    mainFunctions.Plugin_SetPlayerGUID = Plugin_SetPlayerGUID_p;
    mainFunctions.Plugin_SetPlayerNoPB = Plugin_SetPlayerNoPB_p;
    mainFunctions.Plugin_DoesServerUseUids = Plugin_DoesServerUseUids_p;
    mainFunctions.Plugin_SetServerToUseUids = Plugin_SetServerToUseUids_p;
    mainFunctions.Cvar_RegisterString = Cvar_RegisterString;
    mainFunctions.Cvar_RegisterBool = Cvar_RegisterBool;
    mainFunctions.Cvar_RegisterInt = Cvar_RegisterInt;
    mainFunctions.Cvar_RegisterEnum = Cvar_RegisterEnum;
    mainFunctions.Cvar_RegisterFloat = Cvar_RegisterFloat;

    mainFunctions.Cvar_SetInt = Cvar_SetInt;
    mainFunctions.Cvar_SetBool = Cvar_SetBool;
    mainFunctions.Cvar_SetString = Cvar_SetString;
    mainFunctions.Cvar_SetFloat = Cvar_SetFloat;

    for(i=0;i<sizeof(mainFunctions_t);i+=sizeof(void*)){
        if(ptr==NULL){
            Com_Printf("Plugin_Init: Error initializing function pointers.\n");
            return;
        }
        ptr++;
    }
    Com_Printf("Plugin_Init: Plugins initialization successfull.\n");
    memset(&pluginFunctions,0x00,sizeof(pluginFunctions));    // 0 all data
    pluginFunctions.enabled=qtrue;

    Cmd_AddCommand("loadPlugin", Plugin_LoadPlugin_f);
    Cmd_AddCommand("unloadPlugin", Plugin_UnLoadPlugin_f);
    Cmd_AddCommand("plugins", Plugin_PluginList_f);
    Cmd_AddCommand("pluginInfo", Plugin_PluginInfo_f);
}
void Plugin_Load(char* name, size_t size)
{
    int i,j,nstrings;
    char dll[256],*strings;
    char* realpath;
    void *lib_handle;
    elf_data_t text;
    pluginInfo_t info;

        if(!pluginFunctions.enabled){
            Com_Printf("Plugin handler is not initialized!\n");
            return;

        }
    if(pluginFunctions.loadedPlugins>=MAX_PLUGINS-1){
        Com_Printf("Too many plugins loaded.");
        return;
    }

    if(size>128){
        Com_Printf("File name too long.");
        return;
    }
    Com_DPrintf("Checking if the plugin is not already loaded...\n");
    //    Check if the plugin is not already loaded...
    for(i=0;i<MAX_PLUGINS;i++){
        if(strcmp(name,pluginFunctions.plugins[i].name)==0){
            Com_Printf("This plugin is already loaded!\n");
            return;
        }
    }
    Com_DPrintf("Checking if the plugin file exists and is of correct format...\n");
    sprintf(dll,"plugins/%s.so",name);
    //Additional test if a file is there
    realpath = FS_SV_GetFilepath( dll );
    if(realpath == NULL)
    {
        Com_Printf("No such file found: %s. Can not load this plugin.\n", dll);
        return;
    }

    nstrings = ELF32_GetStrTable(realpath,&strings,&text);
    if(!nstrings){
        Com_Printf("%s is not a plugin file or is corrupt.\n",dll);
        return;
    }
    Com_DPrintf("Parsing plugin function names...\n");
    --nstrings;
    for(i = 0,j=0 ;i<nstrings;++i){
        if(strings[i]==0){
        //Com_Printf("\"%s\"\n",strings+i+1);
            if(strcmp(strings+i+1,"malloc")==0 || strcmp(strings+i+1,"calloc")==0 || strcmp(strings+i+1,"realloc")==0 || strcmp(strings+i+1,"free")==0 || strcmp(strings+i+1,"printf")==0 || strcmp(strings+i+1,"scanf")==0){
                Com_Printf("The plugin file contains one of the disallowed functions! Disallowed function name: \"%s\".\nPlease refer to the documentation for details.\n",strings+i+1);

                free(strings);
                return;
        }
        if(strncmp(strings+i+1,"_Znaj",5)==0 || strncmp(strings+i+1,"_Znwj",5)==0){ // new and new[]
            Com_Printf("The plugin file contains the C++ new operator which is forbidden.\nPlease refer to the documentation for details.\n");
            free(strings);
            return;
        }
        }
        else
        i+=strlen(strings+i+1);
    }
    free(strings);
    Com_DPrintf("Done parsing plugin function names.\n");
    lib_handle = dlopen(realpath, RTLD_LAZY);
    if (!lib_handle){
        Com_Printf("Can not load %s.\nError string: '%s'.\n",dll,dlerror());
        return;
    }
    Com_DPrintf("Plugin OK! Loading...\n");
    // find first free plugin slot
    for(i=0;i<MAX_PLUGINS;i++){
        if(!(pluginFunctions.plugins[i].loaded))
            break;
    }
    pluginFunctions.plugins[i].OnInit = dlsym(lib_handle, "OnInit");
    for(j=0;j<PLUGINS_ITEMCOUNT;++j){
        pluginFunctions.plugins[i].OnEvent[j] = dlsym(lib_handle,Plugin_Events[j]);

    }
    pluginFunctions.plugins[i].OnInfoRequest = pluginFunctions.plugins[i].OnEvent[PLUGINS_ONINFOREQUEST];

    pluginFunctions.plugins[i].OnUnload = dlsym(lib_handle, "OnUnload");

    dlerror();    //    Just clear the errors, if the function was not found then we have a NULL pointer - thats what we want

    pluginFunctions.plugins[i].loaded = qtrue;
    pluginFunctions.plugins[i].enabled = qtrue;
    strcpy(pluginFunctions.plugins[i].name,name);
    pluginFunctions.initializing_plugin = qtrue;

    pluginFunctions.plugins[i].lib_start = LIBRARY_ADDRESS_BY_HANDLE(lib_handle) + text.offset;;
            pluginFunctions.plugins[i].lib_size = text.size;

    if(pluginFunctions.plugins[i].OnInit==NULL){
        Com_Printf("Error loading plugin's OnInit function.\nPlugin load failed.\n");
        return;
    }
    if((*pluginFunctions.plugins[i].OnInit)(mainFunctions)<0){
        Com_Printf("Error in plugin's OnInit function!\nPlugin load failed.\n");
        pluginFunctions.plugins[i].loaded = qfalse;
        pluginFunctions.initializing_plugin = qfalse;
        memset(pluginFunctions.plugins + i,0x00,sizeof(plugin_t));    // We need to remove all references so we can dlclose.
        dlclose(lib_handle);
        return;
    }
    else{
        Com_Printf("Plugin's OnInit executed successfully!\n");
        //    Save info about the loaded plugin
        pluginFunctions.initializing_plugin = qfalse;
        pluginFunctions.loadedPlugins++;
        pluginFunctions.plugins[i].lib_handle = lib_handle;

        if(pluginFunctions.plugins[i].OnInfoRequest){
            Com_DPrintf("Fetching plugin information...\n");
            (*pluginFunctions.plugins[i].OnInfoRequest)(&info);
            if(info.handlerVersion > PLUGIN_HANDLER_VERSION){
            Com_PrintError("This plugin might not be compatible with this server version! Requested plugin handler version: %g, server's plugin handler version: %g. Unloading the plugin...\n",info.handlerVersion,PLUGIN_HANDLER_VERSION);
            Plugin_Unload(i);
            return;
            }
            else if(PLUGIN_HANDLER_VERSION - info.handlerVersion >= 0.1){
            Com_PrintWarning("This plugin might not be compatible with this server version! Requested plugin handler version: %g, server's plugin handler version: %g.\n",info.handlerVersion,PLUGIN_HANDLER_VERSION);

            }

            Com_Printf("Plugin %s loaded successfully. Server is currently running %d plugins.\n",pluginFunctions.plugins[i].name,pluginFunctions.loadedPlugins);
        }
        else{
            Com_PrintError("function OnInfoRequest not found in the plugin file. Unloading...\n");
            Plugin_Unload(i);
            return;

        }
        Com_Printf("Plugin %s loaded successfully. Server is currently running %d plugins.\n",pluginFunctions.plugins[i].name,pluginFunctions.loadedPlugins);
        return;
    }


}
void Plugin_Unload(int id)
{
    void *lib_handle;
    int i;
    if(pluginFunctions.plugins[id].loaded){
        if(pluginFunctions.plugins[id].exports != 0){ // Library-plugins cannot be unloaded, see plugins/readme.txt
            Com_PrintError("Plugin_Unload: Cannot unload a library plugin!\n");
            return;
        }
        if(pluginFunctions.plugins[id].scriptfunctions != 0 || pluginFunctions.plugins[id].scriptmethods != 0){
            // Script-library plugins cannot be unloaded, see plugins/readme.txt
            Com_PrintError("Plugin_Unload: Cannot unload a script-library plugin!\n");
            return;
        }
        if(pluginFunctions.plugins[id].OnUnload != NULL)
            (*pluginFunctions.plugins[id].OnUnload)();
        // Remove all server commands of the plugin
        for(i=0;i<pluginFunctions.plugins[id].cmds;i++){
            if(pluginFunctions.plugins[id].cmd[i].xcommand!=NULL){
                Com_DPrintf("Removing command \"%s\"...\n",pluginFunctions.plugins[id].cmd[i].name);
                Cmd_RemoveCommand(pluginFunctions.plugins[id].cmd[i].name);
            }

        }
        lib_handle = pluginFunctions.plugins[id].lib_handle;                // Save the lib handle
        memset(&(pluginFunctions.plugins[id]), 0x00, sizeof(plugin_t));     // Wipe out all the data
        dlclose(lib_handle);                                                // Close the dll as there are no more references to it
        --pluginFunctions.loadedPlugins;
    }else{
        Com_Printf("Tried unloading a not loaded plugin!\nPlugin ID: %d.",id);
    }
}
int Plugin_GetID(char *name, size_t size)
{
    int i;
    for(i=0;i<MAX_PLUGINS;i++){
        if(strcmp(name,pluginFunctions.plugins[i].name)==0){
            return i;
        }
    }
    return PLUGIN_UNKNOWN;
}
P_P_F int Plugin_CallerID()
{
    void *funcptrs[3];
    int i,j;
    j = backtrace(funcptrs,3);
    if(j<3){
    Com_Error(ERR_FATAL,"Plugin_CallerID: backtrace failed to return function pointers! Possible exploit detected! Terminating the server...\n");
    }
    for(i=0;i<MAX_PLUGINS;++i){
    //Com_Printf("Debug: lib_start: %p, lib_size: %ld, lib_start + lib_size: %p, caller function: %p.\n",pluginFunctions.plugins[i].lib_start,pluginFunctions.plugins[i].lib_size,pluginFunctions.plugins[i].lib_start+pluginFunctions.plugins[i].lib_size,funcptrs[2]);
    if(pluginFunctions.plugins[i].lib_start < funcptrs[2] && pluginFunctions.plugins[i].lib_start + pluginFunctions.plugins[i].lib_size > funcptrs[2])
        return i;
    }
    return -1;
}

/*P_P_F int Plugin_CallerID()
{
    //asm volatile ("");    // this + inline attribute prevents compiler optimization which removes the function call
        int i,j;
        void *funcptrs[3];
        char **names;
        char buff[256];
        j = backtrace(funcptrs,3);
        names = backtrace_symbols(funcptrs,j);
        if(!names)
            Com_Error(ERR_FATAL,"Function backtrace_symbols() is not working properly!");
        //Com_Printf("DEBUG: \"%s\",\"%s\",\"%s\".\n",names[0],names[1],names[2]);
        if(strncmp(names[2],"plugins/",8)==0){
            j = strlen(names[2]);
            for(i=8;i<j;++i){
            if(names[2][i]=='.')
                break;
            }
            strncpy(buff,names[2]+8,i-8);
            buff[i-8]=0;

        }
        else{
            free(names);
            return -1;
        }

        free(names);
        return Plugin_GetID(buff,strlen(buff));

}*/


void Plugin_UnloadByName(char *name, size_t size)
{
    int id = Plugin_GetID(name,size);
    if(id<0)
        Com_Printf("Cannot unload plugin: plugin %s is not loaded!\n",name);
    else{
        Com_Printf("Unloading plugin %s, plugin id: %d.\n",name,id);
        Plugin_Unload(id);

    }
}
void *Plugin_Malloc(int pID,size_t size)
{
    int i;
    //Com_Printf("Attempting to allocate %dB of memory for plugin #%d...\n",size,pID);
    //Plugin identified, find the first free spot in it's allocated pointers table
    for(i=0;i<PLUGIN_MAX_MALLOCS;i++){
        if(pluginFunctions.plugins[pID].memory[i].ptr==NULL){
            pluginFunctions.plugins[pID].memory[i].ptr = malloc(size);
            pluginFunctions.plugins[pID].memory[i].size = size;
            pluginFunctions.plugins[pID].usedMem += size;
            ++pluginFunctions.plugins[pID].mallocs;
            //Com_Printf("Allocating %dB of memory for plugin #%d.\n",size,pID);
            //Com_Printf("Debug: %p.\n",pluginFunctions.plugins[pID].memory[i]);
            return pluginFunctions.plugins[pID].memory[i].ptr;

        }

    }
    Com_Printf("Plugins: Warning! Memory allocations limit reached for plugin #%d!\n",pID);
    return NULL;
}
void Plugin_Free(int pID, void *ptr)
{

    int i;
    if(ptr==NULL){
        Com_DPrintf("Plugins: Warning! Plugin #%d tried freeing a NULL pointer! Called Plugin_Free() twice?\n",pID);
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
    Com_DPrintf("Plugins: Warning! Plugin %d tried freeing an unknown pointer!\n",pID);

}
P_P_F void *Plugin_Malloc_p(size_t size)
{
    volatile int pID;
    //Identify the calling plugin
    pID = Plugin_CallerID();
    if(pID<0){
        Com_Printf("Plugins: Error! Tried allocating memory for unknown plugin!\n");
        return NULL;
    }
    if(pluginFunctions.plugins[pID].enabled==qfalse){
        Com_Printf("^1WARNING^7: Tried allocating memory for a disabled plugin!\n");

    }
    return Plugin_Malloc(pID,size);

}
P_P_F void Plugin_Free_p(void *ptr)
{
    //Identify the calling plugin
    volatile int pID = Plugin_CallerID();
    if(pID<0){
        Com_Printf("Plugins: Error! Tried freeing memory for unknown plugin!\n");
        return;
    }
    Plugin_Free(pID,ptr);
}
void Plugin_FreeAll(int pID)
{
    int i;
    if(pID<0){
        Com_Printf("Plugins: Error! Tried to free all memory of an unknown plugin!\n");
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
    Com_DPrintf("Plugins: Memory for plugin #%d has been freed.\n",pID);

}
P_P_F void Plugin_Error(int code,char *string)
{
    volatile int pID = Plugin_CallerID();
    if(pID<0){
        Com_PrintError("Plugin Error called from unknown plugin!\n");
        return;
    }
    else if(pluginFunctions.plugins[pID].enabled==qfalse){
        Com_PrintWarning("An error of ID %d and string \"%s\" occured in a disabled plugin with ID %d!\n",code,string,pID);
        return;
    }
    switch(code)
    {
        case P_ERROR_WARNING:
            Com_Printf("Plugin #%d ('%s') issued a warning: \"%s\"\n",pID,pluginFunctions.plugins[pID].name, string);
            break;
        case P_ERROR_DISABLE:
            Com_Printf("Plugin #%d ('%s') returned an error and will be disabled! Error string: \"%s\".\n",pID,pluginFunctions.plugins[pID].name,string);
            pluginFunctions.plugins[pID].enabled = qfalse;
            break;
        case P_ERROR_TERMINATE:
            Com_Printf("Plugin #%d ('%s') reported a critical error, the server will be terminated. Error string: \"%s\".\n",pID,pluginFunctions.plugins[pID].name,string);
            Com_Error(ERR_FATAL,string);
            break;
        default:
            Com_DPrintf("Plugin #%d ('%s') reported an unknown error! Error string: \"%s\", error code: %d.\n",pID,pluginFunctions.plugins[pID].name,string,code);
            break;
    }


}
int Plugin_ClientToSlot(client_t *client)
{
    return client-svs.clients;
}




void Plugin_Event(int eventID,...)
{
    int i=0;

    if(!pluginFunctions.enabled)
            return;

    if(eventID < 0 || eventID >= PLUGINS_ITEMCOUNT){
        Com_DPrintf("Plugins: unknown event occured! Event ID: %d.\n",eventID);
        return;
    }

    va_list argptr;

    va_start(argptr, eventID);
    void *arg_0 = va_arg(argptr, void*);
    void *arg_1 = va_arg(argptr, void*);
    void *arg_2 = va_arg(argptr, void*);
    void *arg_3 = va_arg(argptr, void*);
    void *arg_4 = va_arg(argptr, void*);
    void *arg_5 = va_arg(argptr, void*);

    va_end(argptr);

    for(i=0;i < pluginFunctions.loadedPlugins; i++){
        if(pluginFunctions.plugins[i].OnEvent[eventID]!= NULL)
            (*pluginFunctions.plugins[i].OnEvent[eventID])(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5);
    }
}


/*
void Plugin_Event(int eventID, void *dataPt)
{
    int i=0;

    if(!pluginFunctions.enabled)
            return;

    switch(eventID){
        case PLUGINS_ONPLAYERDC:
            for(i=0;i<MAX_PLUGINS;i++){
                if(pluginFunctions.plugins[i].OnPlayerDC!=NULL)
                    (*pluginFunctions.plugins[i].OnPlayerDC)((client_t*)dataPt);
            }
            break;
        case PLUGINS_ONPLAYERCONNECT:
            for(i=0;i<pluginFunctions.loadedPlugins;i++){
                if(pluginFunctions.plugins[i].OnPlayerConnect!=NULL)
                 (*pluginFunctions.plugins[i].OnPlayerConnect)((client_t*)dataPt);
            }
            break;
        case PLUGINS_ONEXITLEVEL:
            for(i=0;i<pluginFunctions.loadedPlugins;i++){
                if(pluginFunctions.plugins[i].OnExitLevel!=NULL)
                    (*pluginFunctions.plugins[i].OnExitLevel)();
            }
            break;
        case PLUGINS_ONMESSAGESENT:
            for(i=0;i<pluginFunctions.loadedPlugins;i++){
                if(pluginFunctions.plugins[i].OnMessageSent!=NULL)
                    (*pluginFunctions.plugins[i].OnMessageSent)(dataPt);
            }
            break;
        case PLUGINS_ONTENSECONDS:
            for(i=0;i<pluginFunctions.loadedPlugins;i++){
                if(pluginFunctions.plugins[i].OnTenSeconds!=NULL)
                    (*pluginFunctions.plugins[i].OnTenSeconds)(dataPt);
            }
            break;
        case PLUGINS_ONCLIENTSPAWN:
            for(i=0;i<pluginFunctions.loadedPlugins;i++){
                if(pluginFunctions.plugins[i].OnClientSpawn!=NULL)
                    (*pluginFunctions.plugins[i].OnClientSpawn)(dataPt);
            }
            break;
        case PLUGINS_ONCLIENTENTERWORLD:
            for(i=0;i<pluginFunctions.loadedPlugins;i++){
                if(pluginFunctions.plugins[i].OnClientEnterWorld!=NULL)
                    (*pluginFunctions.plugins[i].OnClientEnterWorld)(dataPt);
            }
            break;
        case PLUGINS_ONTCPSERVERPACKET:
            for(i=0;i<pluginFunctions.loadedPlugins;i++){
                if(pluginFunctions.plugins[i].OnTcpPacketEvent!=NULL)
                    (*pluginFunctions.plugins[i].OnTcpPacketEvent)(dataPt);
            }
            break;

        default:
            Com_DPrintf("Plugins: unknown event occured! Event ID: %d.\n",eventID);
            break;

    }
}
*/
clientScoreboard_t Plugin_GetClientScoreboard(int clientNum)
{
    return level.clients[clientNum].pers.scoreboard;
}
int Plugin_Cmd_GetInvokerUid()
{
    return svse.cmdInvoker.currentCmdInvoker;
}
int Plugin_GetPlayerUid(int slot)
{
    return svs.clients[slot].uid;
}
int Plugin_GetSlotCount()
{
    return sv_maxclients->integer;
}
qboolean Plugin_IsSvRunning()
{
    if(com_sv_running)
        return com_sv_running->boolean;
    else
        return qfalse;
}
void Plugin_ChatPrintf(int slot, char *fmt, ... )
{
    //int ebp,*ptr;
    char str[256];
    client_t *cl;
    va_list vl;

    cl = slot >=0 ? &(svs.clients[slot]) : NULL;
    va_start(vl,fmt);
    vsprintf(str,fmt,vl);
    va_end(vl);
    SV_SendServerCommand(cl, "h \"%s\"", str);
}
void Plugin_BoldPrintf(int slot, char *fmt, ... )
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
char *Plugin_GetPlayerName(int slot)
{
    return svs.clients[slot].name;
}
void Plugin_CmdExecute_f()
{
    Com_DPrintf("Attempting to execute a plugin command '%s'.\n",Cmd_Argv(0));
    if(!pluginFunctions.enabled){
        Com_DPrintf("Error! Tried executing a plugin command with plugins being disabled! Command name: '%s'.\n",Cmd_Argv(1));
        return;
    }
    char name[128];
    int i,j;
    void (*func)();
    strcpy(name,Cmd_Argv(0));
    for(i=0;i<MAX_PLUGINS;i++){
        if(pluginFunctions.plugins[i].loaded && pluginFunctions.plugins[i].enabled){
            for(j=0;j<pluginFunctions.plugins[i].cmds;j++)
                if(strcmp(name,pluginFunctions.plugins[i].cmd[j].name)==0){
                    Com_DPrintf("Executing plugin command '%s' for plugin '%s', plugin ID: %d.\n",name,pluginFunctions.plugins[i].name,i);
                    func = (void (*)())(pluginFunctions.plugins[i].cmd[j].xcommand);

                    func();
                    return;
                    }
        }
    }
}

P_P_F void Plugin_AddCommand(char *name, xcommand_t xcommand, int power)
{
    volatile int pID;
    pID = Plugin_CallerID();
    if(pID>=MAX_PLUGINS){
        Com_PrintError("Tried adding a command for a plugin with non existent pID. pID supplied: %d.\n",pID);
        return;
    }else if(pID<0){
        Com_PrintError("Plugin_AddServerCommand called from not within a plugin or from a disabled plugin!\n");
        return;
    }
    if(!pluginFunctions.plugins[pID].loaded){
        Com_PrintError("Tried adding a command for not loaded plugin! PID: %d.\n",pID);
    }
    Com_DPrintf("Adding a plugin command for plugin %d, command name: %s.\n",pID,name);
    Cmd_AddCommand(name,Plugin_CmdExecute_f);
    Cmd_SetPower(name, power);
    pluginFunctions.plugins[pID].cmd[pluginFunctions.plugins[pID].cmds].xcommand = xcommand;
    strcpy(pluginFunctions.plugins[pID].cmd[pluginFunctions.plugins[pID].cmds++].name,name);
    Com_DPrintf("Command added.\n");
   // pluginFunctions.plugins[pID].


}
void Plugin_RemoveCommand(int pID,char *name)
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
            Com_DPrintf("Command '%s' removed for plugin %s.\n",name,pluginFunctions.plugins[pID].name);
            return;
        }

    }
    Com_DPrintf("Warning: tried removing command '%s', which was not found for plugin %s.\n",name,pluginFunctions.plugins[pID].name);

}
/*

P_P_F void Plugin_ScrAddFunction(char *name,xcommand_t xcommand)
{
    volatile int pID;
    pID = Plugin_CallerID();
    if(pID>=MAX_PLUGINS){
        Com_Printf("Error: tried adding a script command for a plugin with non existent pID. pID supplied: %d.\n",pID);
        return;
    }else if(pID<0){
        Com_Printf("Plugin Handler error: Plugin_ScrAddFunction called from not within a plugin or from a disabled plugin!\n");
        return;
    }
    if(!pluginFunctions.plugins[pID].loaded){
        Com_Printf("Error: Tried adding a command for not loaded plugin! PID: %d.\n",pID);
    }
    Com_Printf("Adding a plugin script function for plugin %d, command name: %s.\n",pID,name);
    Cmd_AddCommand(name, xcommand);
    pluginFunctions.plugins[pID].cmd[pluginFunctions.functions[pID].cmds].xcommand = xcommand;
    strcpy(pluginFunctions.plugins[pID].cmd[pluginFunctions.plugins[pID].cmds++].name,name);
    Com_Printf("Command added.\n");
   // pluginFunctions.plugins[pID].


}
void Plugin_ScrRemoveFunction(int pID,char *name)
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
            Com_Printf("Command '%s' removed for plugin %s.\n",name,pluginFunctions.plugins[pID].name);
            return;
        }

    }
    Com_Printf("Warning: tried removing command '%s', which was not found for plugin %s.\n",name,pluginFunctions.plugins[pID].name);

}
*/


/*
==================
SV_LoadPlugin_f

Loads and initializes a plugin
==================
*/
void Plugin_LoadPlugin_f( void )
{
        if( Cmd_Argc() < 2){
                Com_Printf("Usage: %s <plugin file name without extension>\n", Cmd_Argv(0));
                return;
        }
        Plugin_Load(Cmd_Argv(1),128);
}
void Plugin_UnLoadPlugin_f()
{
    if( Cmd_Argc() < 2){
        Com_Printf("Usage: %s <plugin file name without extension>\n", Cmd_Argv(0));
        return;
    }
    Plugin_UnloadByName(Cmd_Argv(1),128);
}
void Plugin_PluginInfo_f()
{
    if(Cmd_Argc() < 2){
        Com_Printf("Usage: %s <plugin name>\n",Cmd_Argv(0));
        return;
    }
    int id = Plugin_GetID(Cmd_Argv(1),strlen(Cmd_Argv(1)));
    int i;
    pluginInfo_t info;
    if(id<0){
        Com_Printf("Plugin \"%s\" is not loaded!\n",Cmd_Argv(1));
        return;
    }
    (*pluginFunctions.plugins[id].OnInfoRequest)(&info);
    Com_Printf("\n");
    Com_Printf("\n^2Plugin name:^7\n%s\n\n",pluginFunctions.plugins[id].name);
    Com_Printf("\n^2Plugin version:^7\n%g\n\n",info.pluginVersion);
    Com_Printf("\n^2Full plugin name:^7\n%s\n\n",info.fullName);
    Com_Printf("\n^2Short plugin description:^7\n%s\n\n",info.shortDescription);
    Com_Printf("\n^2Full plugin description:^7\n%s\n\n",info.longDescription);
    Com_Printf("\n^2Plugin commands:^7\n\n");
    for(i=0;i<pluginFunctions.plugins[id].cmds;++i){
        Com_Printf(" -%s\n",pluginFunctions.plugins[id].cmd[i].name);
    }
    Com_Printf("\n^2Total of %d commands.^7\n\n",pluginFunctions.plugins[id].cmds);
}
void Plugin_PluginList_f()
{
    int i,j;
    if(pluginFunctions.loadedPlugins == 0){
        Com_Printf("No plugins are loaded.\n");
    }
    else{
        Com_Printf("\nLoaded plugins:\n\n");
        Com_Printf("*----------------------------------------------------------------------------------*\n");
        Com_Printf("| ID |         name         | enabled? | memory allocations | total all. mem. in B |\n");
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
            Com_Printf("| %-3d| %-21s| %-9s| %-19d| %-21d|\n",j,pluginFunctions.plugins[j].name,pluginFunctions.plugins[j].enabled==0 ? "no" : "yes",pluginFunctions.plugins[j].mallocs,pluginFunctions.plugins[j].usedMem);

        }

        Com_Printf("*----------------------------------------------------------------------------------*\n");
        Com_Printf("\nTotal of %d loaded plugins.\n",i);
    }

    Com_Printf("\nPlugin handler version: %g.\n",PLUGIN_HANDLER_VERSION);

}
/*

qboolean Plugin_TcpConnect(int pID, const char* remote, int connection)
{
    if(pluginFunctions.plugins[pID].sockets[connection].sock < 1){
        pluginFunctions.plugins[pID].sockets[connection].sock = NET_TcpConnect( remote );

        if(pluginFunctions.plugins[pID].sockets[connection].sock < 1){
            Com_Printf("Plugins: Notice! Error connecting to server: %s for plugin #%d!\n", remote, pID);
            return qfalse;
        }
        NET_StringToAdr(remote, &pluginFunctions.plugins[pID].sockets[connection].remote, NA_UNSPEC);
        return qtrue;
    }
    Com_PrintError("Plugin_TcpConnect: Connection id %d is already in use for plugin #%d!\n",connection ,pID );

    return qfalse;
}


P_P_F qboolean Plugin_TcpConnect_p( int connection, const char* remote)
{
    int pID;
    //Identify the calling plugin
    pID = Plugin_CallerID();
    if(pID<0){
        Com_Printf("Plugins: Error! Tried open a TCP-Connection for unknown plugin!\n");
        return qfalse;
    }
    if(pluginFunctions.plugins[pID].enabled==qfalse){
        Com_Printf("^1WARNING^7: Tried open a TCP-Connection for a disabled plugin!\n");
        return qfalse;
    }
    if(connection >= PLUGIN_MAX_SOCKETS || connection < 0){
        Com_PrintError("Plugin_TcpConnect: Second argument can only be a value inside the range: 0...%d plugin ID: #%d\n", PLUGIN_MAX_SOCKETS);
        return qfalse;
    }
    return Plugin_TcpConnect(pID, remote, connection);

}


int Plugin_TcpGetData(int pID, int connection, void* buf, int size )
{
    int len;
    pluginTcpClientSocket_t* ptcs = &pluginFunctions.plugins[pID].sockets[connection];

    if(ptcs->sock < 1){
        Com_PrintWarning("Plugin_TcpGetData: called on a non open socket for plugin ID: #%d\n", pID);
        return -1;
    }
    len = NET_TcpGetData(&ptcs->sock, buf, size);

    return len;
}


P_P_F int Plugin_TcpGetData_p(int connection, void* buf, int size)
{
    int pID;
    //Identify the calling plugin
    pID = Plugin_CallerID();
    if(pID<0){
        Com_Printf("Plugin_TcpGetData: Error! Tried get TCP data for unknown plugin!\n");
        return -1;
    }
    if(pluginFunctions.plugins[pID].enabled==qfalse){
        Com_Printf("^1WARNING^7: Plugin_TcpGetData: Tried get TCP data for a disabled plugin!\n");
        return -1;
    }
    if(connection >= PLUGIN_MAX_SOCKETS || connection < 0){
        Com_PrintError("Plugin_TcpGetData: First argument can only be a value inside the range: 0...%d plugin ID: #%d\n", PLUGIN_MAX_SOCKETS, pID);
        return -1;
    }
    if(buf == NULL){
        Com_PrintError("Plugin_TcpGetData: Third argument can not be a NULL-Pointer for plugin ID: #%d\n", pID);
        return -1;
    }

    return Plugin_TcpGetData(pID, connection, buf, size);
}

qboolean Plugin_TcpSendData(int pID, int connection, void* data, int len)
{
    pluginTcpClientSocket_t* ptcs = &pluginFunctions.plugins[pID].sockets[connection];

    if(ptcs->sock < 1){
        Com_PrintWarning("Plugin_TcpSendData: called on a non open socket for plugin ID: #%d\n", pID);
        return qfalse;
    }
    return NET_TcpSendData(&ptcs->sock, data, len);

}


P_P_F qboolean Plugin_TcpSendData_p(int connection, void* data, int len)
{


    int pID;
    //Identify the calling plugin
    pID = Plugin_CallerID();
    if(pID<0){
        Com_Printf("Plugin_TcpSendData: Error! Tried get TCP data for unknown plugin!\n");
        return qfalse;
    }
    if(pluginFunctions.plugins[pID].enabled==qfalse){
        Com_Printf("^1WARNING^7: Plugin_TcpSendData: Tried get TCP data for a disabled plugin!\n");
        return qfalse;
    }
    if(connection >= PLUGIN_MAX_SOCKETS || connection < 0){
        Com_PrintError("Plugin_TcpSendData: Second argument can only be a value inside the range: 0...%d plugin ID: #%d\n", PLUGIN_MAX_SOCKETS, pID);
        return qfalse;
    }
    if(data == NULL){
        Com_PrintError("Plugin_TcpSendData: Second argument can not be a NULL-Pointer for plugin ID: #%d\n", pID);
        return qfalse;
    }

    return Plugin_TcpSendData(pID, connection, data, len);
}


void Plugin_TcpCloseConnection(int pID, int connection)
{
    pluginTcpClientSocket_t* ptcs = &pluginFunctions.plugins[pID].sockets[connection];

    if(ptcs->sock < 1){
        Com_PrintWarning("Plugin_TcpCloseConnection: Called on a non open socket for plugin ID: #%d\n", pID);
        return;
    }
    NET_TcpCloseConnection(&ptcs->sock);

}


P_P_F void Plugin_TcpCloseConnection_p(int connection)
{
    int pID;
    //Identify the calling plugin
    pID = Plugin_CallerID();
    if(pID<0){
        Com_Printf("Plugin_TcpCloseConnection: Error! Tried get close a connection for unknown plugin!\n");
        return;
    }
    if(pluginFunctions.plugins[pID].enabled==qfalse){
        Com_Printf("^1WARNING^7: Plugin_TcpCloseConnection: Tried to close a connection for a disabled plugin!\n");
        return;
    }
    if(connection >= PLUGIN_MAX_SOCKETS || connection < 0){
        Com_PrintError("Plugin_TcpCloseConnection: Second argument can only be a value inside the range: 0...%d plugin ID: #%d\n", PLUGIN_MAX_SOCKETS, pID);
        return;
    }
    Plugin_TcpCloseConnection(pID, connection);
}
*/
P_P_F qboolean Plugin_UdpSendData_p(netadr_t* to, void* data, int len)
{
    int pID;

    if(to == NULL){
        pID = Plugin_CallerID();
        Com_PrintError("Plugin_UdpSendData: First argument can not be a NULL-Pointer for plugin ID: #%d\n", pID);
        return qfalse;
    }

    if(data == NULL){
        pID = Plugin_CallerID();
        Com_PrintError("Plugin_UdpSendData: First argument can not be a NULL-Pointer for plugin ID: #%d\n", pID);
        return qfalse;
    }
    return Sys_SendPacket( len, data, to);
}

P_P_F void Plugin_ServerPacketEvent_p(netadr_t* to, void* data, int len)
{
    msg_t msg;
    msg.data = data;
    msg.cursize = len;
    msg.maxsize = len;
    msg.bit = 0;
    msg.overflowed = qfalse;
    msg.readonly = qtrue;

    SV_PacketEvent( to, &msg );
}

P_P_F void Plugin_SetPlayerUID_p(unsigned int clientslot, unsigned int uid)
{
    client_t *cl;
    if(!psvs.useuids){
        Plugin_Error(P_ERROR_TERMINATE, "Plugin tried to set UID while server don't work with UIDs\n");
    }
    if(clientslot > sv_maxclients->integer)
    {
        Plugin_Error(P_ERROR_TERMINATE, va("Plugin tried to set UID for bad client: %d\n", clientslot));
    }
    cl = &svs.clients[clientslot];
    cl->uid = uid;
}

P_P_F unsigned int Plugin_GetPlayerUID_p(unsigned int clientslot)
{
    client_t *cl;
    if(!psvs.useuids){
        Plugin_Error(P_ERROR_TERMINATE, "Plugin tried to get UID while server don't work with UIDs\n");
    }
    if(clientslot > sv_maxclients->integer)
    {
        Plugin_Error(P_ERROR_TERMINATE, va("Plugin tried to get UID for bad client: %d\n", clientslot));
    }
    cl = &svs.clients[clientslot];
    return cl->uid;
}

P_P_F const char* Plugin_GetPlayerGUID_p(unsigned int clientslot)
{
    client_t *cl;
    if(clientslot > sv_maxclients->integer)
    {
        Plugin_Error(P_ERROR_TERMINATE, va("Plugin tried to get GUID for bad client: %d\n", clientslot));
    }
    cl = &svs.clients[clientslot];
    return cl->pbguid;
}

P_P_F void Plugin_SetPlayerGUID_p(unsigned int clientslot, const char* guid)
{
    client_t *cl;
    if(clientslot > sv_maxclients->integer)
    {
        Plugin_Error(P_ERROR_TERMINATE, va("Plugin tried to get GUID for bad client: %d\n", clientslot));
    }
    cl = &svs.clients[clientslot];
    Q_strncpyz(cl->pbguid, guid, sizeof(cl->pbguid));
}

P_P_F void Plugin_SetPlayerNoPB_p(unsigned int clientslot)
{
    client_t *cl;
    if(clientslot > sv_maxclients->integer)
    {
        Plugin_Error(P_ERROR_TERMINATE, va("Plugin tried to set No PunkBuster flag for bad client: %d\n", clientslot));
    }
    cl = &svs.clients[clientslot];
    cl->noPb = qtrue;
}

P_P_F int Plugin_DoesServerUseUids_p(void)
{
    return psvs.useuids;
}

P_P_F void Plugin_SetServerToUseUids_p(int useuids)
{
    psvs.useuids = useuids;
}

P_P_F int Plugin_GetLevelTime_p(void)
{
    return level.time;
}

P_P_F int Plugin_GetServerTime_p(void)
{
    return svs.time;
}


#endif
