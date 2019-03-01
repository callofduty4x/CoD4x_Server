// dobj.h and dobj.c contains structure of ingame DObj and various functions to work with it.

#ifndef __DOBJ_H__
#define __DOBJ_H__

#include "q_shared.h"
#include "entity.h"
#include "qcommon_io.h"
#include "misc.h"


#define DOBJ_MAX_PARTS 160

typedef struct XBoneInfo
{
  float bounds[2][3];
  float offset[3];
  float radiusSquared;
}XBoneInfo_t;


typedef struct DObjAnimMat
{
  vec4_t quat;
  vec3_t trans;
  float transWeight;
}DObjAnimMat;


typedef struct DObjSkeletonPartMatrix_s // Same as DObjAnimMat_t? Need confirmation!
{
	float p1[4];
	float p2[4];
}DObjSkeletonPartMatrix_t;


typedef struct DSkelPartBits_s
{
	int anim[4];
	int control[4];
	int skel[4];
} DSkelPartBits_t;


typedef struct DSkel
{
	DSkelPartBits_t partBits;
	int timeStamp;
	DObjSkeletonPartMatrix_t *mat;
} DSkel_t;


typedef struct DObj_s
{
  struct XAnimTree_s *tree;
  uint16_t duplicateParts;
  uint16_t entnum;
  char duplicatePartsSize;
  char numModels;
  char numBones;
  byte pad;
  unsigned int ignoreCollision;
  volatile int locked;
  struct DSkel skel;
  float radius;
  int hidePartBits[4];
  struct XModel **models;
} DObj_t, DObj;

struct DObjTrace_s
{
  float fraction;
  int sflags;
  vec3_t normal;
  uint16_t modelIndex;
  uint16_t partName;
  uint16_t partGroup;
};



#ifdef __cplusplus
extern "C"{
#endif


DObj_t* GetDObjForEntity(int entNum);
qboolean EntHasDObj(gentity_t* ent);
extern signed int __cdecl G_DObjGetWorldTagMatrix(struct gentity_s *ent, unsigned int tagName, float (*tagMat)[3]);
extern void DObjInit();
extern void DB_LoadDObjs();

void __cdecl DObjGetBounds(DObj_t *obj, float *mins, float *maxs);
DObj *__cdecl Com_GetServerDObj(int handle);
qboolean __cdecl DObjHasContents(DObj *obj, int contentmask);
float __cdecl DObjGetRadius(DObj *obj);
void __cdecl DObjGeomTracelinePartBits(DObj *obj, int contentmask, int *partBits);
void __cdecl DObjGeomTraceline(DObj *obj, float *localStart, float *localEnd, int contentmask, struct DObjTrace_s *results);
void __cdecl DObjTraceline(DObj *obj, float *start, float *end, char *priorityMap, struct DObjTrace_s *trace);
void __cdecl DObjTracelinePartBits(DObj *obj, int *partBits);
qboolean __cdecl DObjSkelExists(DObj *obj, int timeStamp);
qboolean __cdecl DObjSkelAreBonesUpToDate(DObj *obj, int *partBits);
int __cdecl DObjGetAllocSkelSize(DObj *obj);
void __cdecl DObjCreateSkel(DObj *obj, char *buf, int timeStamp);
int __cdecl DObjSkelIsBoneUpToDate(DObj *obj, int boneIndex);
int __cdecl DObjGetBoneIndex(DObj *obj, unsigned int name, char *index, int modelNum);
struct DObjAnimMat *__cdecl DObjGetRotTransArray(DObj *obj);
void __cdecl DObjInitServerTime(DObj *obj, float dtime);
void __cdecl DObjUpdateServerInfo(DObj *obj, float dtime, int notifyFlags);
struct XAnimTree_s *__cdecl DObjGetTree(DObj *obj);
void __cdecl DObjDisplayAnim(DObj *obj, const char *header);
void __cdecl DObjDumpInfo(DObj *obj);
int __cdecl DObjNumBones(DObj *obj);
void __cdecl DObjGetBoneInfo(DObj *obj, struct XBoneInfo **boneInfo);
int __cdecl DObjGetNumModels(DObj *obj);
struct XModel *__cdecl DObjGetModel(DObj *obj, int modelIndex);
bool __cdecl DObjIgnoreCollision(DObj *obj, int modelIndex);
void __cdecl ConvertQuatToMat(struct DObjAnimMat *mat, vec3_t axis[3]);
void __cdecl DObjSetLocalTag(DObj *obj, int *partBits, unsigned int boneIndex, const float *trans, const float *angles);
void __cdecl DObjSetControlTagAngles(DObj *obj, int *partBits, unsigned int boneIndex, float *angles);
void Com_InitDObj();
void __cdecl DObjGetHierarchyBits(DObj *obj, int boneIndex, int *partBits);
void __cdecl DObjCalcSkel(DObj *obj, int *partBits);
struct DObjAnimMat *__cdecl G_DObjGetLocalTagMatrix(struct gentity_s *ent, unsigned int tagName);

#ifdef __cplusplus
}
#endif

extern uint16_t serverObjMap[1024];
extern DObj_t objBuf[2048];

#endif //__DOBJ_H__


