#pragma once

#include "q_platform.hpp"


extern "C"
{
    extern unsigned int bg_lastParsedWeaponIndex;
}

const char* CDECL BG_WeaponName(int weapon);
