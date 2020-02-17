#pragma once
#include "q_math.hpp"


struct AntilagClientStore
{
  vec3_t realClientPositions[MAX_CLIENTS];
  bool clientMoved[MAX_CLIENTS];
};


extern "C"
{
    void CDECL G_SetupWeaponDef();
    void CDECL G_AntiLagRewindClientPos(int gameTime, AntilagClientStore *antilagStore);
    void CDECL G_AntiLag_RestoreClientPos(struct AntilagClientStore *antilagStore);
} // extern "C"
