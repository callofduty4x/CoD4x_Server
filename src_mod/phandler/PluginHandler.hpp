#pragma once
/*#include "Plugin.h"
#include "PluginHandler_Cmds.h"
#include "PluginHandler_Networking.h"
#include "PluginHandler_Dvars.h"
#include "PluginHandler_Steam.h"
#include "PluginHandler_Mem.h"
#include "PluginHandler_Common.h"
#include "PluginHandler_Server.h"
#include "PluginHandler_Client.h"
#include "PluginHandler_Filesystem.h"
#include "PluginHandler_System.h"
#include "PluginHandler_Script.h"
#include "PluginHandler_Game.h"
#include "../qcommon_io.h"*/
#include <map>
#include <string>
#include "events.h"
#include "Plugin.h"

namespace phandler
{
////////////////////////
// CoD4X plugin handler.
class CPluginHandler 
/*    : public CPluginHandler_Networking
    , public CPluginHandler_Cmds
    , public CPluginHandler_Dvars
    , public CPluginHandler_Steam
    , public CPluginHandler_Mem
    , public CPluginHandler_Common
    , public CPluginHandler_Server
    , public CPluginHandler_Client
    , public CPluginHandler_Filesystem
    , public CPluginHandler_System
    , public CPluginHandler_Script
    , public CPluginHandler_Game*/
{
  public:
    CPluginHandler();
    ~CPluginHandler();
    NO_COPY_CLASS(CPluginHandler);

    ////////////////////////////////
    // Plugin handler management. //
    ////////////////////////////////

    //////////////////////////////
    // Initializes plugin handler.
    void Init();

    ///////////////////////////////////////////////////////////////////////////
    // Shut plugin handler down and free all resources.
    void Shutdown();

    ////////////////////////
    // Plugin management. //
    ////////////////////////

    ///////////////////////////////////
    // Loads plugin by its LibName_.
    void LoadPlugin(const char *LibName_);

    ///////////////////////////////////
    // Unload plugin by name LibName_.
    void UnloadPlugin(const char *LibName_);

    ///////////////////////////////////////////////
    // Prints info about plugin with name LibName_.
    void PrintPluginInfo(const char *LibName_);

    //////////////////////////////////////////
    // Prints all plugins summary information.
    void PrintPluginsSummary();

    /////////////////////
    // Fire plugin event.
    template <class... TParms>
    void Event(EPluginEvent Event_, TParms... Params)
    {
        /*if (Event_ < PEV_Start || Event_ >= PEV_Count)
        {
            Com_PrintError("Unknown plugin event");
            return;
        }

        for (auto &plugin : m_Plugins)
        {
            m_CurrentPlugin = &plugin.second;
            m_CurrentPlugin->Event(Event_, Params...);
        }
        m_CurrentPlugin = nullptr;*/
    }

    /////////////////////////
    // Plugin error happened.
    //void PluginError(EPluginError_t Code_, const char *const Message_);

    ////////////////
    // WHAAAAAAAAAT? TODO
    //void AddCommandForPlayerToWhitelist(const int ClientNum_, const char *const Command_) const;

    ///////
    // TODO
    //bool CanPlayerUseCommand(const int ClientNum_, const char *const Command_) const;

    ///////////////////////////////////////////////////////////////////////////
    // Return specified interface.
    /*const CPluginHandler_Networking* Net() const { return static_cast<const CPluginHandler_Networking*>(this); }
    const CPluginHandler_Cmds* Cmd() const { return static_cast<const CPluginHandler_Cmds*>(this); }
    const CPluginHandler_Dvars* Dvar() const { return static_cast<const CPluginHandler_Dvars*>(this); }
    const CPluginHandler_Steam* Steam() const { return static_cast<const CPluginHandler_Steam*>(this); }
    const CPluginHandler_Mem* Mem() const { return static_cast<const CPluginHandler_Mem*>(this); }
    const CPluginHandler_Common* Common() const { return static_cast<const CPluginHandler_Common*>(this); }
    const CPluginHandler_Server* Sv() const { return static_cast<const CPluginHandler_Server*>(this); }
    const CPluginHandler_Client* Cl() const { return static_cast<const CPluginHandler_Client*>(this); }
    const CPluginHandler_Filesystem* Fs() const { return static_cast<const CPluginHandler_Filesystem*>(this); }
    const CPluginHandler_System* Sys() const { return static_cast<const CPluginHandler_System*>(this); }
    const CPluginHandler_Script* Scr() const { return static_cast<const CPluginHandler_Script*>(this); }
    const CPluginHandler_Game* G() const { return static_cast<const CPluginHandler_Game*>(this); }*/

  private:
    ////////////////////////////////////////////////////////////////
    // Returns true if plugin with name LibName_ has known checksum.
    bool isLegacyPlugin(const std::string &LibPath_) const;

    ////////////////////////////
    // Returns plugin file path.
    std::string getPluginFilePath(const std::string& strPluginName_) const;

    bool m_Initialized;
    std::map<std::string, CPlugin> m_Plugins;
    CPlugin *m_CurrentPlugin;
};
} // end of namespace phandler

phandler::CPluginHandler* GetPluginHandler();
