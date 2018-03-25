#include "player.h"

#ifdef __cplusplus
extern "C"{
#endif

void __cdecl SV_GetUsercmd(int clientNum, usercmd_s *cmd);
void SV_GameSetUndercoverState(unsigned int clientNum, bool state);

#ifdef __cplusplus
};
#endif