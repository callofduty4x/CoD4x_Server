#include "player.h"

#ifdef __cplusplus
extern "C"{
#endif

void __cdecl SV_GetUsercmd(int clientNum, usercmd_s *cmd);
void SV_GameSetUndercoverState(unsigned int clientNum, bool state);
const char* SV_GetPlayerClan(unsigned int clientNum);
const char* SV_GetPlayerName(unsigned int clientNum);
int SV_GetPredictedOriginAndTimeForClientNum(int clientNum, float *origin);
void __cdecl SV_GetServerinfo(char *buffer, int bufferSize);
#ifdef __cplusplus
};
#endif
