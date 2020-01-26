#pragma once
#include "entity.hpp"


extern "C"
{
    int __cdecl Cmd_FollowCycle_f(gentity_t *ent, int dir);
    void __cdecl StopFollowing(gentity_t* ent );
    void Cmd_Score_f(gentity_t* ent);
    int __cdecl CheatsOk(gentity_t *ent);
} // extern "C"
