#pragma once
#include "shared.h"
///////////////////////////////////////////////////////////////////////////////
// events.h - declaration of exported from plugin functions.
//      Any event once added must exist in all the future versions.

///////////////////////////////////////////////////////////////////////////////
// Fires when plugin gets loaded.
// pResult_ must be set to PLR_OK if plugin properly loaded.
DECL_IN_DLL void OnPluginLoad(EPluginLoadingResult* pResult_);

///////////////////////////////////////////////////////////////////////////////
// Fires when plugin gets unloaded.
DECL_IN_DLL void OnPluginUnload();

///////////////////////////////////////////////////////////////////////////////
// Fires when server requests plugin info.
DECL_IN_DLL void OnInfoRequest(SPluginInfo_t* pPluginInfo_);

/*
DECL_IN_DLL void OnInit();
DECL_IN_DLL void OnUnload();
DECL_IN_DLL void OnPlayerDisconnect();
DECL_IN_DLL void OnPlayerConnect();
DECL_IN_DLL void OnExitLevel();
DECL_IN_DLL void OnMessageSent();
DECL_IN_DLL void PerFrame();
DECL_IN_DLL void PerSecond();
DECL_IN_DLL void PerTenSeconds();
DECL_IN_DLL void OnClientAuthorized();
DECL_IN_DLL void OnClientSpawned();
DECL_IN_DLL void OnClientEnteredWorld();
DECL_IN_DLL void OnTCPPacketReceived();
DECL_IN_DLL void OnUDPEvent();
DECL_IN_DLL void OnUDPSent();
DECL_IN_DLL void OnSpawnServer();
DECL_IN_DLL void BeforeFastRestart();
DECL_IN_DLL void AfterFastRestart();
DECL_IN_DLL void OnClientUserInfoChanged();
DECL_IN_DLL void OnClientMove();
DECL_IN_DLL void OnReservedSlotRequested();
DECL_IN_DLL void OnFilesystemStartup();
DECL_IN_DLL void OnPlayerGotAuthInfo();
DECL_IN_DLL void OnBanAdded();
DECL_IN_DLL void OnGetBanStatus();
DECL_IN_DLL void OnBanRemoved();
DECL_IN_DLL void OnModuleLoaded();
DECL_IN_DLL void OnScreenshotArrived();
DECL_IN_DLL void OnTerminate();
DECL_IN_DLL void Script_OnGametypeLoaded();
DECL_IN_DLL void Script_OnLevelLoaded();
DECL_IN_DLL void Script_OnGametypeStarted();
DECL_IN_DLL void Script_OnPlayerConnected();
DECL_IN_DLL void Script_OnPlayerDisconnected();
DECL_IN_DLL void Script_OnPlayerDamage();
DECL_IN_DLL void Script_OnPlayerKilled();
DECL_IN_DLL void Script_OnPlayerLastStand();
*/