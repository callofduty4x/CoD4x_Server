#pragma once
#include "entity.hpp"


extern "C"
{
    void __cdecl StopFollowingOnDeath(gentity_t *ent);
    void __cdecl G_Say(gentity_t *ent, gentity_t *target, int mode, const char *chatText);
}
