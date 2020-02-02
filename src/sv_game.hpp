#pragma once
#include "dobj.hpp"

extern "C"
{
    qboolean __cdecl SV_DObjCreateSkelForBone(struct DObj_s *obj, int boneIndex);
    void SV_XModelDebugBoxes(gentity_t *ent);
    int __cdecl SV_EntityContact(const float *mins, const float *maxs, struct gentity_s *gEnt);
    void __cdecl SV_GameDropClient(int clientNum, const char *reason);
    int SV_GetAssignedTeam();
    int __cdecl SV_inSnapshot(const float *origin, int iEntityNum);
    int __cdecl SV_GetClientPing(int clientNum);
    qboolean __cdecl SV_MapExists(const char *name);
    XModel *__cdecl SV_XModelGet(const char *name);
    void __cdecl SV_LocateGameData(gentity_t* gEnts, int numGEntities, int sizeofGEntity_t, playerState_t* clients, int sizeofGameClient);
    void __cdecl SV_DObjInitServerTime(gentity_t* ent, float dtime);
    void __cdecl SV_DObjDisplayAnim(gentity_t* ent, const char *header);
    bool __cdecl SV_SetBrushModel(gentity_t* ent);
    int __cdecl SV_DObjGetBoneIndex(struct gentity_s *ent, unsigned int boneName);
    void __cdecl SV_MatchEnd();
    void __cdecl SV_SetMapCenter(float *mapCenter);
    void __cdecl SV_SetGameEndTime(int gameEndTime);
    void __cdecl SV_DObjGetBounds(gentity_t* ent, float *mins, float *maxs);
    int __cdecl SV_DObjCreateSkelForBones(DObj *obj, int *partBits);
    DObjAnimMat *__cdecl SV_DObjGetMatrixArray(gentity_t* ent);
    void __cdecl SV_DObjUpdateServerTime(gentity_t* ent, float dtime, int bNotify);
    void __cdecl SV_GameSendServerCommand(int clientNum, int cmdtype, const char* cmdstring);
} // extern "C"

void __cdecl SV_XModelDebugBoxesInternal(gentity_t *ent, const float *color, int *partBits, int duration);
