#pragma once
#include "qshared.hpp"

struct gentity_s;

extern "C"
{
    qboolean CCDECL G_LevelSpawnString(const char* key, const char* defaultString, const char** out);
    void CCDECL G_VehSpawner(gentity_s* ent);
    void CCDECL G_VehCollmapSpawner(gentity_s* ent);
} // extern "C"
