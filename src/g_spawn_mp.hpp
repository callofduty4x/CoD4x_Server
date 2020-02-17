#pragma once
#include "entity.hpp"

extern "C"
{
    qboolean G_CallSpawnEntity(gentity_t* ent);
    void Scr_GetEnt();
    void Scr_GetEntArray();
    void CDECL GScr_AddFieldsForEntity();
}
