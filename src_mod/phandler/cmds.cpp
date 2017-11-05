///////////////////////////////////////////////////////////////////////////////
// cmds.c - definitions for plugin handler console commands.
///////////////////////////////////////////////////////////////////////////////
#include "cmds.h"

#ifdef __cplusplus
extern "C" {
#endif

#include <cmd.h>
#include <qcommon.h>

#ifdef __cplusplus
}
#endif


// Return from console command callback if args count not equal (num).
#define ASSERT_ARGS_COUNT(num) \
    do { \
        if (Cmd_Argc() != (num)) \
        { \
            Com_Printf("Usage: %s <plugin file name without extension>\n", Cmd_Argv(0)); \
            return; \
        } \
    } while(0)


///////////////////////////////////////////////////////////////////////////////
// Load plugin DLL/SO and prepare for usage. TODO
static __cdecl void SV_LoadPlugin_f()
{
    ASSERT_ARGS_COUNT(2);

    //PluginHandler()->LoadPlugin(Cmd_Argv(1));
}


///////////////////////////////////////////////////////////////////////////////
// Unloads plugin DLL/SO and cleans everything up. TODO
static __cdecl void SV_UnloadPlugin_f()
{
    ASSERT_ARGS_COUNT(2);

    //PluginHandler()->UnloadPlugin(Cmd_Argv(1));
}


///////////////////////////////////////////////////////////////////////////////
// Print specified plugin info by its name. TODO
static __cdecl void SV_PluginInfo_f()
{
    ASSERT_ARGS_COUNT(2);

    //PluginHandler()->PrintPluginInfo(Cmd_Argv(1));
}


///////////////////////////////////////////////////////////////////////////////
// List all of loaded plugins. TODO
static __cdecl void SV_PluginList_f()
{
    //PluginHandler()->PrintPluginsSummary();
}

void SV_AddPluginHandlerConsoleCommands()
{
    Cmd_AddCommand("loadplugin", SV_LoadPlugin_f);
    Cmd_AddCommand("unloadplugin", SV_UnloadPlugin_f);
    Cmd_AddCommand("plugininfo", SV_PluginInfo_f);
    Cmd_AddCommand("pluginlist", SV_PluginList_f);
}
