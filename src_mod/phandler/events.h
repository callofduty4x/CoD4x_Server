#pragma once

///////////////////////////////////////////////////////////////////////////////
// Its faster to execute event by num rather than search index by string.
// If you editing this enum, look inside PluginEvents.cpp - there is mapping available.
typedef enum EPluginEvent
{
    PEV_Start = 0,

    eOnPluginLoad = PEV_Start,
    eOnPluginUnload,
    eOnInfoRequest,
    /*eOnUnload,
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
    eScript_OnPlayerLastStand,       // CodeCallback_PlayerLastStand executed.*/

    PEV_Count
} EPluginEvent;
