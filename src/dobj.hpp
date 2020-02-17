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
extern signed int CCDECL G_DObjGetWorldTagMatrix(struct gentity_s *ent, unsigned int tagName, float (*tagMat)[3]);
extern void DObjInit();
extern void DB_LoadDObjs();

void CCDECL DObjGetBounds(DObj_t *obj, float *mins, float *maxs);
DObj *CCDECL Com_GetServerDObj(int handle);
qboolean CCDECL DObjHasContents(DObj *obj, int contentmask);
float CCDECL DObjGetRadius(DObj *obj);
void CCDECL DObjGeomTracelinePartBits(DObj *obj, int contentmask, int *partBits);
void CCDECL DObjGeomTraceline(DObj *obj, float *localStart, float *localEnd, int contentmask, struct DObjTrace_s *results);
void CCDECL DObjTraceline(DObj *obj, float *start, float *end, char *priorityMap, struct DObjTrace_s *trace);
void CCDECL DObjTracelinePartBits(DObj *obj, int *partBits);
qboolean CCDECL DObjSkelExists(DObj *obj, int timeStamp);
qboolean CCDECL DObjSkelAreBonesUpToDate(DObj *obj, int *partBits);
int CCDECL DObjGetAllocSkelSize(DObj *obj);
void CCDECL DObjCreateSkel(DObj *obj, char *buf, int timeStamp);
int CCDECL DObjSkelIsBoneUpToDate(DObj *obj, int boneIndex);
int CCDECL DObjGetBoneIndex(DObj *obj, unsigned int name, char *index, int modelNum);
struct DObjAnimMat *CCDECL DObjGetRotTransArray(DObj *obj);
void CCDECL DObjInitServerTime(DObj *obj, float dtime);
void CCDECL DObjUpdateServerInfo(DObj *obj, float dtime, int notifyFlags);
struct XAnimTree_s *CCDECL DObjGetTree(DObj *obj);
void CCDECL DObjDisplayAnim(DObj *obj, const char *header);
void CCDECL DObjDumpInfo(DObj *obj);
int CCDECL DObjNumBones(DObj *obj);
void CCDECL DObjGetBoneInfo(DObj *obj, struct XBoneInfo **boneInfo);
int CCDECL DObjGetNumModels(DObj *obj);
struct XModel *CCDECL DObjGetModel(DObj *obj, int modelIndex);
bool CCDECL DObjIgnoreCollision(DObj *obj, int modelIndex);
void CCDECL ConvertQuatToMat(struct DObjAnimMat *mat, vec3_t axis[3]);
void CCDECL DObjSetLocalTag(DObj *obj, int *partBits, unsigned int boneIndex, const float *trans, const float *angles);
void CCDECL DObjSetControlTagAngles(DObj *obj, int *partBits, unsigned int boneIndex, float *angles);
void Com_InitDObj();
void CCDECL DObjGetHierarchyBits(DObj *obj, int boneIndex, int *partBits);
void CCDECL DObjCalcSkel(DObj *obj, int *partBits);
struct DObjAnimMat *CCDECL G_DObjGetLocalTagMatrix(struct gentity_s *ent, unsigned int tagName);

#ifdef __cplusplus
}
#endif

extern uint16_t serverObjMap[1024];
extern DObj_t objBuf[2048];

#endif //__DOBJ_H__


