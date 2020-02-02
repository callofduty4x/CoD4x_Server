#pragma once

extern "C"
{
    extern unsigned int bg_lastParsedWeaponIndex;
}

const char* __cdecl BG_WeaponName(int weapon);
