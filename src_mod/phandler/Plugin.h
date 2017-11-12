#pragma once
#include <string>
#include <list>
#include <map>
#include <vector>
#include "events.h"
/*#include "../cmd_types.h"
#include "../q_shared_types.h"
#include "../sys_net_types.h"
#include "PluginEvents.h"
#include "phandler_shared_types.h"*/

namespace phandler
{
///////////////////////////////////////////////
// A class that represents one loadable plugin.
class CPlugin
{
public:
    CPlugin();
    ~CPlugin();

    // No copy class.
    CPlugin(const CPlugin&) = delete;
    void operator=(const CPlugin&) = delete;

    // ... but can be moved.
    CPlugin(CPlugin&& From_);

    ////////////////////////////////////////////////
    // Loads plugin from file specified by LibPath_.
    bool LoadFromFile(const std::string& LibPath_);

    /////////////////////////////////////////
    // Unloads and frees all the plugin data.
    void Unload();

    //////////////////////
    // Prints plugin info.
    void PrintPluginInfo(); // TODO: when all done, add different storages data.

    //////////////////////////////////////////
    // Returns true if current plugin initialized.
    bool IsInitialized() const { return m_Initialized; }
    
    /////////////////////////////////////
    // Sets current plugin enabled state.
    void SetInitialized(bool State_) { m_Initialized = State_; }

    ///////////////////////////////////////////////////////////////////////////
    // Returns string representation of an event number.
    const char* const GetEventName(const EPluginEvent EventIdx_) const;

    ///////////////////////////////////////////
    // Returns total plugin memory allocations.
    /*int GetMemAllocs() const { return m_MemAllocs; }

    //////////////////////////////////////////
    // Return total allocated memory in bytes.
    int GetMemAllocsSize() const { return m_AllocatedBytesCount; }*/

    /////////////////////
    // Fire plugin event.
    template <class...PTypes>
    bool Event(EPluginEvent Event_, PTypes...Params)
    {
        int idx = static_cast<int>(Event_);
        if (!m_Events[idx])
            return false;

        (reinterpret_cast<void(__cdecl *)(PTypes...)>(m_Events[idx]))(Params...);
        return true;
    }

    ////////////////////////
    // Allocates RAM.
    /*void* Malloc(size_t Size_);

    ///////////////////////////////
    // Frees RAM allocated earlier.
    void Free(const void* Ptr_);

    ///////////////////////
    // Add console command.
    void AddConsoleCommand(const char* const Name_, xcommand_t fpCallback_, int Power_ = 0);

    //////////////////////////
    // Remove console command.
    void RemoveConsoleCommand(const char* const Name_);

    ///////////////////////////////////////////////////////////////////////////////////////////
    // Open new TCP connection.
    // ReceiveCallback_ is a pointer to a function which gets executed when new data available.
    // Returns connection index or SOCKET_ERROR.
    int TCP_Connect(const char* const Remote_, FPNetworkReceiveCallback ReceiveCallback_);

    /////////////////////////////////////////////////////////////
    // Send TCP data for current plugin for specified connection.
    // Returns count of sent bytes or SOCKET_ERROR.
    unsigned int TCP_Send(const int Connection_, const void* const Data_, const unsigned int Size_) const;

    ///////////////////////////////////////////////////////////////
    // Receive TCP data from current plugin's specified connection.
    // Returns count of received bytes or SOCKET_ERROR.
    unsigned int TCP_Receive(const int Connection_, void* const Buffer_, unsigned int Size_) const;

    ////////////////////////////////////////////
    // Close TCP connections for current plugin.
    void TCP_Close(const int Connection_);

    ///////////////////////////////////////////////////
    // Open file in main(or mod) directory for writing.
    fileHandle_t FS_FOpen(const char* const FileName_, EFileLocation Location_, EFileOpenMode Mode_);

    /////////////////////////////////
    // Closes previously opened file.
    void FS_FClose(const fileHandle_t hFile_);*/

  private:
    //////////////////////////////////
    // Frees all the allocated memory.
    /*void freeAllocatedMemory();

    ///////////////////////////////////////
    // Removes all custom console commands.
    void removeAllCustomConsoleCommands();

    /////////////////////////////
    // Closes all opened sockets.
    void closeAllSockets();

    ///////////////////////////
    // Closes all opened files.
    void closeAllFiles();*/

    // TODO networking callbacks

    void (*m_Events[PEV_Count]);
    void* m_LibHandle;

    ////////////////////////////////////////////////////////////////////
    // If set to true, plugin successfully loaded and initialized.
    // Must not be set to "true" inside this class.
    // When unloading, if set to "true" - must fire "OnTerminate" first.
    bool m_Initialized;

    ////////////////////////////////
    // Plugin RAM memory management.
    /*int m_MemAllocs;
    int m_AllocatedBytesCount;
    std::list<void*> m_MemStorage;*/

    ///////////////////////////
    // Custom console commands.
    //std::list<std::string> m_CustomCmds;

    /////////////////////////////////////
    // Network sockets and its callbacks.
    /*struct SNetworkConnectionInfo;
    std::map<int, SNetworkConnectionInfo> m_Sockets;*/

    ////////////////
    // File handles.
    //std::vector<fileHandle_t> m_Files;
};
/*
struct CPlugin::SNetworkConnectionInfo
{
    netadr_t Remote;
    FPNetworkReceiveCallback ReceiveCallback;
};*/

} // end namespace phandler
