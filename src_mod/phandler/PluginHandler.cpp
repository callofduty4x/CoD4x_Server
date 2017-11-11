#include "PluginHandler.hpp"

#ifdef __cplusplus
extern "C" {
#endif

#include <qcommon.h>
#include <sec_crypto.h>

#ifdef __cplusplus
}
#endif

/*#include "KnownPlugins.h"
#include "Cmd_PluginHandler.h"
#include "../cmd.h"
#include "../qcommon.h"
#include "../sec_crypto.h"
#include "../sys_net_types.h"
#include "phandler_shared_types.h"
#include "macro.h"*/

using namespace std;

namespace phandler
{

CPluginHandler::CPluginHandler() 
    : m_Initialized(false)
    , m_CurrentPlugin(nullptr)
{
}

CPluginHandler::~CPluginHandler()
{
    // TODO: cleanup required?
    // I meant Cmd_RemoveCommand etc.
}

void CPluginHandler::Init() // TODO PHANDLER : potential candidate to remove?
{
    if (m_Initialized)
    {
        Com_Printf("Error: you are trying to initialize plugin handler more than once. Stop it!\n");
        return;
    }

    m_Initialized = true;
    Com_Printf("-------- Plugin handler initialization completed --------\n");
}

void CPluginHandler::LoadPlugin(const char* LibName_)
{
    // Checking if the plugin is not already loaded.
    if (m_Plugins.find(LibName_) != m_Plugins.end())
    {
        Com_Printf("This plugin already loaded\n");
        return;
    }

    string pluginPath = getPluginFilePath(LibName_);
    // Checking if we can load this plugin.
    if (!isLegacyPlugin(pluginPath))
    {
        Com_Printf("This plugin can not be loaded in secure mode\n");
        return;
    }

    // Begin loading new plugin.
    m_Plugins.emplace(make_pair(LibName_, CPlugin()));
    CPlugin& plugin = m_Plugins[LibName_];
    plugin.LoadFromFile(pluginPath);

    Com_DPrintf("Fetching plugin information...");
    SPluginInfo_t info;
    m_CurrentPlugin = &plugin;
    if (!plugin.Event(eOnInfoRequest, &info))
    {
        Com_PrintError("Plugin function '%s' not found\n", plugin.GetEventName(eOnInfoRequest));
        plugin.Unload();
        m_CurrentPlugin = nullptr;
        m_Plugins.erase(LibName_);
        return;
    }

    // TODO: Get back with new plugin version check and add API initialization code.
    /*if (info.handlerVersion.major != PLUGIN_HANDLER_VERSION_MAJOR || (info.handlerVersion.minor - info.handlerVersion.minor % 100) != (PLUGIN_HANDLER_VERSION_MINOR - PLUGIN_HANDLER_VERSION_MINOR % 100))
    {
        Com_PrintError("This plugin might not be compatible with this server version! Requested plugin handler version: %d.%d, server's plugin handler version: %d.%d. Unloading the plugin...\n", info.handlerVersion.major, info.handlerVersion.minor, PLUGIN_HANDLER_VERSION_MAJOR, PLUGIN_HANDLER_VERSION_MINOR);
        plugin.Unload();
        m_Plugins.erase(LibName_);
        return;
    }*/
    Com_DPrintf("done\n");


    Com_DPrintf("Executing plugin's 'OnInit'...");
    // plugin version mismatch.
    int success = 0;
    if (!plugin.Event(eOnInit, &success))
    {
        Com_PrintError("Plugin function '%s' not found\n", plugin.GetEventName(eOnInit));
        plugin.Unload();
        m_CurrentPlugin = nullptr;
        m_Plugins.erase(LibName_);
        return;
    }
    m_CurrentPlugin = nullptr;

    if (success < 0)
    {
        Com_PrintError("Plugin initialization failed: %d\n", success);
        plugin.Unload();
        m_Plugins.erase(LibName_);
        return;
    }
    Com_DPrintf("done\n");


    plugin.SetInitialized(true);
    // At this point plugin successfully initialized and when at unloading it will fire "OnTerminate" event.
    // Keep passed name as key instead of file path.
    Com_Printf("Plugin loaded successfully. Server is currently running %d plugins\n", m_Plugins.size());
}

void CPluginHandler::UnloadPlugin(const char* LibName_)
{
    auto plugin = m_Plugins.find(LibName_);
    if (plugin == m_Plugins.end())
    {
        Com_Printf("Plugin '%s' is not loaded\n", LibName_);
        return;
    }
    m_CurrentPlugin = &plugin->second;
    plugin->second.Unload(); // May execute event.
    m_CurrentPlugin = nullptr;

    m_Plugins.erase(plugin);
    Com_Printf("Plugin '%s' has been unloaded\n", LibName_);
}

void CPluginHandler::PrintPluginInfo(const char* LibName_)
{
    auto plugin = m_Plugins.find(LibName_);
    if (plugin == m_Plugins.end())
    {
        Com_Printf("Plugin '%s' is not loaded\n", LibName_);
        return;
    }
    m_CurrentPlugin = &plugin->second;
    plugin->second.PrintPluginInfo();
    m_CurrentPlugin = nullptr;
}

void CPluginHandler::PrintPluginsSummary()
{
    Com_Printf("Plugin handler version 3\n\n");

    if (!m_Plugins.size())
    {
        Com_Printf("No plugins are loaded\n");
        return;
    }

    Com_Printf("Loaded plugins:\n\n");
    Com_Printf("+----------------------+----------+--------------------+----------------------+\n");
    Com_Printf("|         name         | enabled? | memory allocations | total all. mem. in B |\n");
    Com_Printf("+----------------------+----------+--------------------+----------------------+\n");
    for (auto& itPlugin : m_Plugins)
    {
        //const CPlugin& plugin = itPlugin.second;
        Com_Printf("| %-21s| %-9s| %-19d| %-21d|\n", itPlugin.first, "yes", /*plugin.GetMemAllocs()*/ 0, /*plugin.GetMemAllocsSize()*/ 0);
    }
    Com_Printf("+----------------------+----------+--------------------+----------------------+\n");
}

/*void CPluginHandler::PluginError(EPluginError_t Code_, const char* const Message_)
{
    DURING_EVENT_ONLY();

    switch (Code_)
    {
    case P_ERROR_WARNING:
        Com_Printf("Plugin issued a warning: \"%s\"\n", Message_);
        break;
    case P_ERROR_DISABLE:
        Com_Printf("Plugin returned an error and will be disabled! Error string: \"%s\".\n", Message_);
        // TODO: disable current plugin.
        //pluginFunctions.plugins[pID].enabled = qfalse;
        break;
    case P_ERROR_TERMINATE:
        Com_Printf("Plugin reported a critical error, the server will be terminated. Error string: \"%s\".\n", Message_);
        Com_Error(ERR_FATAL, "%s", Message_);
        break;
    default:
        Com_DPrintf("Plugin reported an unknown error! Error string: \"%s\", error code: %d.\n", Message_, Code_);
        break;
    }
}*/
#if 0
void CPluginHandler::AddCommandForPlayerToWhitelist(const int ClientNum_, const char* const Command_) const
{
    /*THREAD_UNSAFE();
    DURING_EVENT_ONLY();
    Auth_AddCommandForClientToWhitelist(ClientNum_, Command_);*/
}


bool CPluginHandler::CanPlayerUseCommand(const int ClientNum_, const char* const Command_) const
{
    /*THREAD_UNSAFE_RET(false);
    DURING_EVENT_ONLY_RET(false);
    return Auth_CanPlayerUseCommand(ClientNum_, Command_) == qtrue ? true : false;*/
    return false;
}
#endif
/*
bool CPluginHandler::IsSteamIDIndividualSteamOnly(uint64_t SteamID_) const
{
    // Move to steam part
    DURING_EVENT_ONLY_RET(false);
    return SV_SApiSteamIDIndividualSteamOnly(SteamID_) == qtrue ? true : false;
    return false;
}*/

bool CPluginHandler::isLegacyPlugin(const string& LibPath_) const
{
    // Do not test against name.
    // If plugin's checksum known - we know this plugin and we can load it no matter what name is.
    if (!com_securemode)
        return true;

    // Get hash of this file.
    char pluginHash[128] = {'\0'};
    unsigned long sizeOfHash = sizeof(pluginHash);
    Sec_HashFile(SEC_HASH_TIGER, LibPath_.c_str(), pluginHash, &sizeOfHash, qfalse);

    // Compare find file hash in the list of known plugins.
    /*for (int i = 0; i < GetKnownPluginsCount(); ++i)
    {
        if (!memcmp(pluginHash, GetKnownPluginHash(i), sizeof(pluginHash)))
            return true;
    }*/

    Com_PrintError("This plugin can not be loaded in secure mode\n");
    return false;
}

string CPluginHandler::getPluginFilePath(const char* LibName_) const
{
    Com_DPrintf("Checking if the plugin file exists and is of correct format...\n");
    // TODO
    #if 0
    //Additional test if a file is there
        realpath = (char *)PHandler_OpenTempFile(name, filepathbuf, sizeof(filepathbuf)); // Load a plugin, safe for use
        if (realpath == NULL)
        {
            return;
        }
    #endif
    return string(LibName_);
}

} // end of namespace phandler

phandler::CPluginHandler* GetPluginHandler()
{
    static phandler::CPluginHandler g_PluginHandler;
    return &g_PluginHandler;
}
