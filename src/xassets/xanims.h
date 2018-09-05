#ifndef __XANIM_H__
#define __XANIM_H__

typedef uint16_t ScriptString;

typedef union 
{
  char *_1;
  uint16_t *_2;
  void *data;
}XAnimIndices;
 
typedef union 
{
  char (*_1)[3];
  uint16_t (*_2)[3];
}XAnimDynamicFrames;
 
typedef union 
{
  char _1[1];
  uint16_t _2[1];
}XAnimDynamicIndices;

typedef struct
{
  float mins[3];
  float size[3];
  XAnimDynamicFrames frames;
  XAnimDynamicIndices indices;
}XAnimPartTransFrames;

typedef union 
{
  XAnimPartTransFrames frames;
  float frame0[3];
}XAnimPartTransData;
 
typedef struct 
{
  uint16_t size;
  char smallTrans;
  char pad;
  XAnimPartTransData u;
}XAnimPartTrans;

typedef struct 
{
  int16_t (*frames)[2];
  XAnimDynamicIndices indices;
}XAnimDeltaPartQuatDataFrames;
 
typedef union 
{
  XAnimDeltaPartQuatDataFrames frames;
  int16_t frame0[2];
}XAnimDeltaPartQuatData;
 
typedef struct 
{
  uint16_t size;
  short pad;
  XAnimDeltaPartQuatData u;
}XAnimDeltaPartQuat;
 
typedef struct 
{
  XAnimPartTrans *trans;
  XAnimDeltaPartQuat *quat;
}XAnimDeltaPart;
 
typedef struct 
{
  ScriptString name;
  short pad;
  float time;
}XAnimNotifyInfo;

struct XAnimNotify_s
{
  const char *name;
  unsigned int type;
  float timeFrac;
};


struct XAnimParts
{
  const char *name;
  uint16_t dataByteCount;
  uint16_t dataShortCount;
  uint16_t dataIntCount;
  uint16_t randomDataByteCount;
  uint16_t randomDataIntCount;
  uint16_t numframes;
  char boneCount[12];
  char notifyCount;
  char assetType;
  short pad;
  unsigned int randomDataShortCount;
  unsigned int indexCount;
  float framerate;
  float frequency;
  uint16_t *names;
  char *dataByte;
  int16_t *dataShort;
  int *dataInt;
  int16_t *randomDataShort;
  char *randomDataByte;
  int *randomDataInt;
  XAnimIndices indices;
  XAnimNotifyInfo *notify;
  XAnimDeltaPart *deltaPart;
};


typedef struct 
{
  uint16_t flags;
  uint16_t children;
}XAnimParent;

typedef union
{
  XAnimParts *parts;
  XAnimParent animParent;
}XAnimEntryUnion;

typedef struct 
{
  uint16_t numAnims;
  uint16_t parent;
  XAnimEntryUnion u;
}XAnimEntry;

typedef struct  //Dynamic size
{
  const char *debugName;
  unsigned int size;
  const char **debugAnimNames;
  XAnimEntry entries[1]; //Attention: Dynamic array size
}XAnim_s;

struct XAnimTree_s 
{
  XAnim_s *anims;
  uint16_t children;
  uint16_t pad;
};



typedef struct 
{
  float time;
  float oldTime;
  int16_t cycleCount;
  int16_t oldCycleCount;
  float goalTime;
  float goalWeight;
  float weight;
  float rate;
  byte instantWeightChange;
  byte pad[3];
}XAnimState;

typedef union 
{
  XAnimParts *parts;
  XAnimParent animParent;
}XAnimInfoUnion;

typedef struct 
{
  uint16_t notifyChild;
  int16_t notifyIndex;
  uint16_t notifyName;
  uint16_t notifyType;
  uint16_t prev;
  uint16_t next;
  uint16_t children;
  uint16_t parent;
  uint16_t animIndex;
  uint16_t animToModel;
  XAnimInfoUnion u;
  XAnimState state;
}XAnimInfo;

#endif
