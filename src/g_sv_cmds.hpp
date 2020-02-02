#pragma once
#include "entity.hpp"

struct cvar_s;

extern cvar_s* g_votedMapName;
extern cvar_s* g_votedGametype;

extern "C"
{
    void __cdecl StopFollowingOnDeath(gentity_t *ent);
    void __cdecl G_Say(gentity_t *ent, gentity_t *target, int mode, const char *chatText);
}
