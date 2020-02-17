// dobj.h and dobj.c contains structure of ingame DObj and various functions to work with it.

#ifndef __DOBJ_H__
#define __DOBJ_H__

#include "qshared.hpp"
#include "entity.hpp"
#include "qcommon_io.hpp"
#include "misc.hpp"


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
extern signed int CDECL G_DObjGetWorldTagMatrix(struct gentity_s *ent, unsigned int tagName, float (*tagMat)[3]);
extern void DObjInit();
extern void DB_LoadDObjs();

void CDECL DObjGetBounds(DObj_t *obj, float *mins, float *maxs);
DObj *CDECL Com_GetServerDObj(int handle);
qboolean CDECL DObjHasContents(DObj *obj, int contentmask);
float CDECL DObjGetRadius(DObj *obj);
void CDECL DObjGeomTracelinePartBits(DObj *obj, int contentmask, int *partBits);
void CDECL DObjGeomTraceline(DObj *obj, float *localStart, float *localEnd, int contentmask, struct DObjTrace_s *results);
void CDECL DObjTraceline(DObj *obj, float *start, float *end, char *priorityMap, struct DObjTrace_s *trace);
void CDECL DObjTracelinePartBits(DObj *obj, int *partBits);
qboolean CDECL DObjSkelExists(DObj *obj, int timeStamp);
qboolean CDECL DObjSkelAreBonesUpToDate(DObj *obj, int *partBits);
int CDECL DObjGetAllocSkelSize(DObj *obj);
void CDECL DObjCreateSkel(DObj *obj, char *buf, int timeStamp);
int CDECL DObjSkelIsBoneUpToDate(DObj *obj, int boneIndex);
int CDECL DObjGetBoneIndex(DObj *obj, unsigned int name, char *index, int modelNum);
struct DObjAnimMat *CDECL DObjGetRotTransArray(DObj *obj);
void CDECL DObjInitServerTime(DObj *obj, float dtime);
void CDECL DObjUpdateServerInfo(DObj *obj, float dtime, int notifyFlags);
struct XAnimTree_s *CDECL DObjGetTree(DObj *obj);
void CDECL DObjDisplayAnim(DObj *obj, const char *header);
void CDECL DObjDumpInfo(DObj *obj);
int CDECL DObjNumBones(DObj *obj);
void CDECL DObjGetBoneInfo(DObj *obj, struct XBoneInfo **boneInfo);
int CDECL DObjGetNumModels(DObj *obj);
struct XModel *CDECL DObjGetModel(DObj *obj, int modelIndex);
bool CDECL DObjIgnoreCollision(DObj *obj, int modelIndex);
void CDECL ConvertQuatToMat(struct DObjAnimMat *mat, vec3_t axis[3]);
void CDECL DObjSetLocalTag(DObj *obj, int *partBits, unsigned int boneIndex, const float *trans, const float *angles);
void CDECL DObjSetControlTagAngles(DObj *obj, int *partBits, unsigned int boneIndex, float *angles);
void Com_InitDObj();
void CDECL DObjGetHierarchyBits(DObj *obj, int boneIndex, int *partBits);
void CDECL DObjCalcSkel(DObj *obj, int *partBits);
struct DObjAnimMat *CDECL G_DObjGetLocalTagMatrix(struct gentity_s *ent, unsigned int tagName);

#ifdef __cplusplus
}
#endif

extern uint16_t serverObjMap[1024];
extern DObj_t objBuf[2048];

#endif //__DOBJ_H__


