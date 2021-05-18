#include "player.h"

#ifdef __cplusplus
extern "C"{

qboolean __cdecl SV_DObjCreateSkelForBone(struct DObj_s *obj, int boneIndex);

#endif

void __cdecl SV_GetUsercmd(int clientNum, struct usercmd_s *cmd);
void SV_GameSetUndercoverState(unsigned int clientNum, bool state);
const char* SV_GetPlayerClan(unsigned int clientNum);
const char* SV_GetPlayerName(unsigned int clientNum);
void SV_UpdatePlayernameById(unsigned int clientnum, const char* name);
int SV_GetPredictedOriginAndTimeForClientNum(int clientNum, float *origin);
void __cdecl SV_GetServerinfo(char *buffer, int bufferSize);
void __cdecl SV_UnlinkEntity(gentity_t*);
struct XAnimTree_s *__cdecl SV_DObjGetTree(struct gentity_s *ent);


#ifdef __cplusplus
};
#endif
