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
