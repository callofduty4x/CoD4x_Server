#pragma once
#include "q_math.hpp"


struct AntilagClientStore
{
  vec3_t realClientPositions[MAX_CLIENTS];
  bool clientMoved[MAX_CLIENTS];
};


extern "C"
{
    void __cdecl G_SetupWeaponDef();
    void __cdecl G_AntiLagRewindClientPos(int gameTime, AntilagClientStore *antilagStore);
    void __cdecl G_AntiLag_RestoreClientPos(struct AntilagClientStore *antilagStore);
} // extern "C"
