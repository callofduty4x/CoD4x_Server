#pragma once
#include "dobj.hpp"

extern "C"
{
    qboolean CCDECL SV_DObjCreateSkelForBone(struct DObj_s *obj, int boneIndex);
    void SV_XModelDebugBoxes(gentity_t *ent);
    int CCDECL SV_EntityContact(const float *mins, const float *maxs, struct gentity_s *gEnt);
    void CCDECL SV_GameDropClient(int clientNum, const char *reason);
    int SV_GetAssignedTeam();
    int CCDECL SV_inSnapshot(const float *origin, int iEntityNum);
    int CCDECL SV_GetClientPing(int clientNum);
    qboolean CCDECL SV_MapExists(const char *name);
    XModel *CCDECL SV_XModelGet(const char *name);
    void CCDECL SV_LocateGameData(gentity_t* gEnts, int numGEntities, int sizeofGEntity_t, playerState_t* clients, int sizeofGameClient);
    void CCDECL SV_DObjInitServerTime(gentity_t* ent, float dtime);
    void CCDECL SV_DObjDisplayAnim(gentity_t* ent, const char *header);
    bool CCDECL SV_SetBrushModel(gentity_t* ent);
    int CCDECL SV_DObjGetBoneIndex(struct gentity_s *ent, unsigned int boneName);
    void CCDECL SV_MatchEnd();
    void CCDECL SV_SetMapCenter(float *mapCenter);
    void CCDECL SV_SetGameEndTime(int gameEndTime);
    void CCDECL SV_DObjGetBounds(gentity_t* ent, float *mins, float *maxs);
    int CCDECL SV_DObjCreateSkelForBones(DObj *obj, int *partBits);
    DObjAnimMat *CCDECL SV_DObjGetMatrixArray(gentity_t* ent);
    void CCDECL SV_DObjUpdateServerTime(gentity_t* ent, float dtime, int bNotify);
    void CCDECL SV_GameSendServerCommand(int clientNum, int cmdtype, const char* cmdstring);
} // extern "C"

void CCDECL SV_XModelDebugBoxesInternal(gentity_t *ent, const float *color, int *partBits, int duration);
