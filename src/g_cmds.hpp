#pragma once
#include "entity.hpp"


extern "C"
{
    int CCDECL Cmd_FollowCycle_f(gentity_t *ent, int dir);
    void CCDECL StopFollowing(gentity_t* ent );
    void Cmd_Score_f(gentity_t* ent);
    int CCDECL CheatsOk(gentity_t *ent);
} // extern "C"
