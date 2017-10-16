#pragma once
#include "q_shared.h"
#include "player.h"
#include "msg_types.h"

///////////////////////////////////////////////////////////////////////////////
// misc_hooks.asm
__cdecl void SL_Init();
__cdecl void Swap_Init();
__cdecl void CSS_InitConstantConfigStrings();
__cdecl void Con_InitChannels();
__cdecl void SEH_UpdateLanguageInfo();
__cdecl void SetAnimCheck(int);
__cdecl qboolean BG_IsWeaponValid(playerState_t *ps, unsigned int index);
__cdecl qboolean SEH_StringEd_GetString(const char *input);
__cdecl void SL_RemoveRefToString(unsigned int);

///////////////////////////////////////////////////////////////////////////////
// cmd_hooks.asm
__cdecl void SV_Cmd_TokenizeString(const char *string);
__cdecl void SV_Cmd_EndTokenizedString();

///////////////////////////////////////////////////////////////////////////////
// filesystem_hooks.asm
__cdecl void FS_ShutdownServerReferencedIwds();
__cdecl void FS_ShutdownServerReferencedFFs();
__cdecl const char *FS_LoadedIwdPureChecksums();

///////////////////////////////////////////////////////////////////////////////
// g_sv_hooks.asm
__cdecl void G_RunFrame(int time);
__cdecl int G_LocalizedStringIndex(const char *String_);
__cdecl void ClientCommand(int a1);
__cdecl const char *ClientConnect(int clnum, short clscriptid); //Something simular to VM_Call
__cdecl void ClientBegin(int clientNum);
__cdecl void StopFollowing(gentity_t *ent);
__cdecl gentity_t *G_Spawn();
__cdecl qboolean G_CallSpawnEntity(gentity_t *ent);
__cdecl void G_SpawnHelicopter(gentity_t *vehent, gentity_t *ownerent, const char *type, const char *model);
__cdecl void SpawnVehicle(gentity_t *ent, const char *vehtype);
__cdecl void G_SetModel(gentity_t *ent, const char *modelname);
__cdecl void G_ClientStopUsingTurret(gentity_t *ent);

///////////////////////////////////////////////////////////////////////////////
// msg_hooks.asm
__cdecl void MSG_WriteDeltaPlayerstate(snapshotInfo_t *a1, msg_t *a2, int a3, playerState_t *a4, playerState_t *a5);
__cdecl void MSG_ReadDeltaUsercmdKey(msg_t *msg, int key, usercmd_t *from, usercmd_t *to);

///////////////////////////////////////////////////////////////////////////////
// qcommon_hooks.asm
__cdecl void Com_InitParse();
__cdecl void Com_Restart();
__cdecl void Com_InitHunkMemory();
__cdecl void Hunk_InitDebugMemory();
__cdecl void Hunk_ClearTempMemory();
__cdecl void Hunk_ClearTempMemoryHigh();
__cdecl void Com_Close();
__cdecl void* Hunk_AllocateTempMemory(int size);
__cdecl void Hunk_FreeTempMemory(void *buffer);
__cdecl void Mem_BeginAlloc(const char* a1, qboolean a2);
__cdecl void Mem_EndAlloc(const char* a1, int a2);
__cdecl void* TempMalloc(int a1);
__cdecl void PMem_Free(const char* a1, unsigned int a2);
__cdecl void Com_LoadBsp(const char *bspname);
__cdecl void Com_UnloadBsp();
__cdecl void Com_LoadWorld(const char *name);
__cdecl void CM_LoadMap(const char *name, int *checksum);
__cdecl void CM_LinkWorld();
__cdecl int Com_LoadSoundAliases(const char *a1, const char *a2, signed int a3);
__cdecl int SL_GetStringOfSize(const char *string, int a2, unsigned int len);
