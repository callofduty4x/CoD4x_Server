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


