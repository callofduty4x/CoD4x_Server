#pragma once

///////////////////////////////////////////////////////////////////////////////
// This structure used by plugin/server to send/receive plugin information.
typedef struct SPluginInfo_t
{                               // To be used in OnInfoRequest
    char fullName[64];          // Full plugin name, short name is the filename without extension - optional
    char shortDescription[128]; // Describe in a few words what this plugin does - optional
    char longDescription[1024]; // Full description - optional
} SPluginInfo_t;

///////////////////////////////////////////////////////////////////////////////
// Its faster to execute event by num rather than search index by string.
// If you editing this enum, look inside PluginEvents.cpp - there is mapping available.
typedef enum EPluginEvent
{
    PEV_Start = 0,

    eOnInit = PEV_Start,
    eOnInfoRequest,
    eOnUnload,
    eOnPlayerDisconnect,
    eOnPlayerConnect,
    eOnExitLevel,
    eOnMessageSent,
    ePerFrame,
    ePerSecond,
    ePerTenSeconds,
    eOnClientAuthorized,
    eOnClientSpawned,
    eOnClientEnteredWorld,
    eOnTCPPacketReceived,
    eOnUDPEvent,
    eOnUDPSent,
    eOnSpawnServer,
    eBeforeFastRestart,
    eAfterFastRestart,
    eOnClientUserInfoChanged,
    eOnClientMove,
    eOnReservedSlotRequested,
    eOnFilesystemStartup,
    eOnPlayerGotAuthInfo,
    eOnBanAdded,
    eOnGetBanStatus,
    eOnBanRemoved,
    eOnModuleLoaded,
    eOnScreenshotArrived,
    eOnTerminate,
    eScript_OnGametypeLoaded,        // Gametype's main executed.
    eScript_OnLevelLoaded,           // Level's main executed.
    eScript_OnGametypeStarted,       // CodeCallback_StartGametype executed.
    eScript_OnPlayerConnected,       // CodeCallback_PlayerConnect executed.
    eScript_OnPlayerDisconnected,    // CodeCallback_PlayerDisconnect executed.
    eScript_OnPlayerDamage,          // CodeCallback_PlayerDamage executed.
    eScript_OnPlayerKilled,          // CodeCallback_PlayerKilled executed.
    eScript_OnPlayerLastStand,       // CodeCallback_PlayerLastStand executed.

    PEV_Count
} EPluginEvent;
