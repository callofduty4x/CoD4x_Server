#pragma once
#include "entity.hpp"


extern "C"
{
    int CDECL Cmd_FollowCycle_f(gentity_t *ent, int dir);
    void CDECL StopFollowing(gentity_t* ent );
    void Cmd_Score_f(gentity_t* ent);
    int CDECL CheatsOk(gentity_t *ent);
} // extern "C"
