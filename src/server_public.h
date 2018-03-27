#include "player.h"

#ifdef __cplusplus
extern "C"{
#endif

void __cdecl SV_GetUsercmd(int clientNum, usercmd_s *cmd);
void SV_GameSetUndercoverState(unsigned int clientNum, bool state);
const char* SV_GetPlayerClan(unsigned int clientNum);
const char* SV_GetPlayerName(unsigned int clientNum);

#ifdef __cplusplus
};
#endif