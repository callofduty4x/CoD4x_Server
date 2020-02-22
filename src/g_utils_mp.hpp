#pragma once
#include "entity.hpp"

struct gentity_s;

extern "C"
{
    extern char cached_models[0x800];
    extern const char* origErrorString;

    gentity_s* CCDECL G_Spawn();
}
