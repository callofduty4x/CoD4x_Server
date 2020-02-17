#pragma once
#include "dobj.hpp"

extern "C"
{
    qboolean CDECL SV_DObjCreateSkelForBone(struct DObj_s *obj, int boneIndex);
    void SV_XModelDebugBoxes(gentity_t *ent);
    int CDECL SV_EntityContact(const float *mins, const float *maxs, struct gentity_s *gEnt);
    void CDECL SV_GameDropClient(int clientNum, const char *reason);
    int SV_GetAssignedTeam();
    int CDECL SV_inSnapshot(const float *origin, int iEntityNum);
    int CDECL SV_GetClientPing(int clientNum);
    qboolean CDECL SV_MapExists(const char *name);
    XModel *CDECL SV_XModelGet(const char *name);
    void CDECL SV_LocateGameData(gentity_t* gEnts, int numGEntities, int sizeofGEntity_t, playerState_t* clients, int sizeofGameClient);
    void CDECL SV_DObjInitServerTime(gentity_t* ent, float dtime);
    void CDECL SV_DObjDisplayAnim(gentity_t* ent, const char *header);
    bool CDECL SV_SetBrushModel(gentity_t* ent);
    int CDECL SV_DObjGetBoneIndex(struct gentity_s *ent, unsigned int boneName);
    void CDECL SV_MatchEnd();
    void CDECL SV_SetMapCenter(float *mapCenter);
    void CDECL SV_SetGameEndTime(int gameEndTime);
    void CDECL SV_DObjGetBounds(gentity_t* ent, float *mins, float *maxs);
    int CDECL SV_DObjCreateSkelForBones(DObj *obj, int *partBits);
    DObjAnimMat *CDECL SV_DObjGetMatrixArray(gentity_t* ent);
    void CDECL SV_DObjUpdateServerTime(gentity_t* ent, float dtime, int bNotify);
    void CDECL SV_GameSendServerCommand(int clientNum, int cmdtype, const char* cmdstring);
} // extern "C"

void CDECL SV_XModelDebugBoxesInternal(gentity_t *ent, const float *color, int *partBits, int duration);
