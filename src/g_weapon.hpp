#pragma once
#include "q_math.hpp"


struct AntilagClientStore
{
  vec3_t realClientPositions[MAX_CLIENTS];
  bool clientMoved[MAX_CLIENTS];
};


extern "C"
{
    void CCDECL G_SetupWeaponDef();
    void CCDECL G_AntiLagRewindClientPos(int gameTime, AntilagClientStore *antilagStore);
    void CCDECL G_AntiLag_RestoreClientPos(struct AntilagClientStore *antilagStore);
} // extern "C"
