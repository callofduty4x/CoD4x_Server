#pragma once
#include "entity.hpp"

struct cvar_s;

extern cvar_s* g_votedMapName;
extern cvar_s* g_votedGametype;

extern "C"
{
    void CDECL StopFollowingOnDeath(gentity_t *ent);
    void CDECL G_Say(gentity_t *ent, gentity_t *target, int mode, const char *chatText);
}
