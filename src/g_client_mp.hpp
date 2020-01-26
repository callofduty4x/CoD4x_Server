#pragma once
#include "entity.hpp"

extern "C"
{
    void __cdecl ClientSpawn(gentity_t *ent, const float *spawn_origin, const float *spawn_angles);
    const char* __cdecl ClientConnect(int clnum, short clscriptid);
    void __cdecl ClientBegin( int clientNum );
}
