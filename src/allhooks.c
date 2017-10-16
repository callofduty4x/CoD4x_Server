#include "allhooks.h"

void SL_Init()
{
    ((void(__cdecl*)())0x08150928)();
}

void Swap_Init()
{
    ((void(__cdecl*)())0x81aa7b6)();
}

void CSS_InitConstantConfigStrings()
{
    ((void(__cdecl*)())0x8185a72)();
}

void Con_InitChannels()
{
    ((void(__cdecl*)())0x82096be)();
}

void SEH_UpdateLanguageInfo()
{
    ((void(__cdecl*)())0x8180432)();
}

void SetAnimCheck(int a1)
{
    ((void(__cdecl*)(int))0x81423f0)(a1);
}

qboolean BG_IsWeaponValid(playerState_t *ps, unsigned int index)
{
    return ((qboolean(__cdecl*)(playerState_t*,unsigned int))0x805f4fe)(ps, index);
}

qboolean SEH_StringEd_GetString(const char* input)
{
    return ((qboolean (__cdecl*)(const char*))0x817fbe0)(input);
}

void SL_RemoveRefToString(unsigned int a1)
{
    ((void (__cdecl*)(unsigned int))0x8150e24)(a1);
}

void SV_Cmd_TokenizeString(const char* string)
{
    ((void (__cdecl*)(const char*))0x811139c)(string);
}

void SV_Cmd_EndTokenizedString()
{
    ((void (__cdecl*)())0x8110d8c)();
}

void FS_ShutdownServerReferencedIwds()
{
    ((void(__cdecl*)())0x818789c)();
}

void FS_ShutdownServerReferencedFFs()
{
    ((void(__cdecl*)())0x8187850)();
}

const char* FS_LoadedIwdPureChecksums()
{
    return ((const char*(__cdecl*)())0x81283f2)();
}

void G_RunFrame(int time)
{
    ((void(__cdecl*)(int))0x80b61fc)(time);
}

int G_LocalizedStringIndex(const char *String_)
{
    return ((int(__cdecl*)(const char*))0x80cb218)(String_);
}

void ClientCommand(int a1)
{
    ((void(__cdecl*)(int))0x80b070c)(a1);
}

const char *ClientConnect(int clnum, short clscriptid)
{
    return ((const char*(__cdecl*)(int, short))0x80a83d4)(clnum, clscriptid);
}

void ClientBegin(int clientNum)
{
    ((void(__cdecl*)(int))0x80a7700)(clientNum);
}

void StopFollowing(gentity_t *ent)
{
    ((void(__cdecl*)(gentity_t*))0x80af24c)(ent);
}

gentity_t *G_Spawn()
{
    return ((gentity_t*(__cdecl*)())0x80cbbe8)();
}

qboolean G_CallSpawnEntity(gentity_t *ent)
{
    return ((qboolean(__cdecl*)(gentity_t*))0x80c8af8)(ent);
}

void G_SpawnHelicopter(gentity_t *vehent, gentity_t *ownerent, const char *type, const char *model)
{
    ((void(__cdecl*)(gentity_t*,gentity_t*,const char*,const char*))0x80ba8d6)(vehent, ownerent, type, model);
}

void SpawnVehicle(gentity_t *ent, const char *vehtype)
{
    ((void(__cdecl*)(gentity_t*,const char*))0x80cd966)(ent, vehtype);
}

void G_SetModel(gentity_t *ent, const char *modelname)
{
    ((void(__cdecl*)(gentity_t*,const char*))0x80cae3a)(ent, modelname);
}

void G_ClientStopUsingTurret(gentity_t *ent)
{
    ((void(__cdecl*)(gentity_t*))0x80b7866)(ent);
}

void MSG_WriteDeltaPlayerstate(snapshotInfo_t *a1, msg_t *a2, int a3, struct playerState_s *a4, struct playerState_s *a5)
{
    ((void (__cdecl*)(snapshotInfo_t*,msg_t*,int,playerState_t*,playerState_t*))0x813f5a6)(a1, a2, a3, a4, a5);
}

void MSG_ReadDeltaUsercmdKey(msg_t *msg, int key, usercmd_t *from, usercmd_t *to)
{
    ((void (__cdecl*)(msg_t*,int,usercmd_t*,usercmd_t*))0x81392ae)(msg, key, from, to);
}

void Com_InitParse()
{
    ((void(__cdecl*)())0x81a7a78)();
}

void Com_Restart()
{
    ((void(__cdecl*)())0x8123586)();
}

void Com_InitHunkMemory()
{
    ((void(__cdecl*)())0x8197174)();
}

void Hunk_InitDebugMemory()
{
    ((void(__cdecl*)())0x819752a)();
}

void Hunk_ClearTempMemory()
{
    ((void(__cdecl*)())0x81968a8)();
}

void Hunk_ClearTempMemoryHigh()
{
    ((void(__cdecl*)())0x81968b8)();
}

void Com_Close()
{
    ((void(__cdecl*)())0x8121b82)();
}

void* Hunk_AllocateTempMemory(int size)
{
    return ((void*(__cdecl*)(int))0x8196fea)(size);
}

void Hunk_FreeTempMemory(void *buffer)
{
    ((void(__cdecl*)(void*))0x81969d4)(buffer);
}

void Mem_BeginAlloc(const char* a1, qboolean a2)
{
    ((void(__cdecl*)(const char*, qboolean))0x81a74d0)(a1, a2);
}

void Mem_EndAlloc(const char* a1, int a2)
{
    ((void(__cdecl*)(const char*, int))0x81a750a)(a1, a2);
}

void* TempMalloc(int a1)
{
    return ((void*(__cdecl*)(int))0x8151dce)(a1);
}

void PMem_Free(const char* a1, unsigned int a2)
{
    ((void(__cdecl*)(const char*, unsigned int))0x81a7528)(a1, a2);
}

void Com_LoadBsp(const char *bspname)
{
    ((void(__cdecl*)(const char*))0x81205FA)(bspname);
}

void Com_UnloadBsp()
{
    ((void(__cdecl*)())0x81205D4)();
}

void Com_LoadWorld(const char *name)
{
    ((void(__cdecl*)(const char*))0x8120538)(name);
}

void CM_LoadMap(const char *name, int *checksum)
{
    ((void(__cdecl*)(const char*,int*))0x8112776)(name, checksum);
}

void CM_LinkWorld()
{
    ((void(__cdecl*)())0x811FAEC)();
}

int Com_LoadSoundAliases(const char *a1, const char *a2, signed int a3)
{
    return ((int(__cdecl*)(const char*,const char*, signed int))0x8198BC4)(a1, a2, a3);
}

int SL_GetStringOfSize(const char *string, int a2, unsigned int len)
{
    return ((int(__cdecl*)(const char*, int, unsigned int))0x815043C)(string, a2, len);
}
