#pragma once

#include "player.hpp"

extern "C"
{
    void CDECL SV_GetUsercmd(int clientNum, struct usercmd_s *cmd);
    void CDECL SV_UnlinkEntity(gentity_t*);
    struct XAnimTree_s *CDECL SV_DObjGetTree(struct gentity_s *ent);
};

void SV_GameSetUndercoverState(unsigned int clientNum, bool state);
const char* SV_GetPlayerClan(unsigned int clientNum);
const char* SV_GetPlayerName(unsigned int clientNum);
void SV_GetServerinfo(char *buffer, int bufferSize);
