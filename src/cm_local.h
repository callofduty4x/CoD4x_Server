#ifndef __CM_LOCAL_H__
#define __CM_LOCAL_H__

#include "q_shared.h"
#include "sys_thread.h"

#define cm (*((clipMap_t*)(0x889EBC0)))

#define BOX_MODEL_HANDLE 4095
#define CAPSULE_MODEL_HANDLE BOX_MODEL_HANDLE


#pragma pack(push, 2)
typedef struct 
{
  cplane_t *plane;
  unsigned int materialNum;
  int16_t firstAdjacentSideOffset;
  char edgeCount;
  char pad;
}cbrushside_t;
#pragma pack(pop)


/* 6968 */
#pragma pack(push, 4)
typedef struct cStaticModel_s
{
  uint16_t writable;
  //int16 pad;
  struct XModel *xmodel;
  vec3_t origin[3];
  vec3_t invScaledAxis[3];
  vec3_t absmin[3];
  vec3_t absmax[3];
}cStaticModel_t;
#pragma pack(pop)


/* 6969 */
typedef struct 
{
  char material[64];
  int surfaceFlags;
  int contentFlags;
}dmaterial_t;



/* 6970 */
typedef struct
{
  cplane_t *plane;
  int16_t children[2];
}cNode_t;

#pragma pack(push, 4)
typedef struct cLeaf_s
{
  uint16_t firstCollAabbIndex;
  uint16_t collAabbCount;
  int brushContents;
  int terrainContents;
  vec3_t mins;
  vec3_t maxs;
  int leafBrushNode;
  int16_t cluster;
  int16_t pad;
}cLeaf_t;
#pragma pack(pop)

typedef struct 
{
  vec3_t mins;
  vec3_t maxs;
  float radius;
  cLeaf_t leaf;
}cmodel_t;


/* 6972 */
typedef struct 
{
  uint16_t *brushes;
}cLeafBrushNodeLeaf_t;

/* 6973 */
typedef struct 
{
  float dist;
  float range;
  uint16_t childOffset[2];
}cLeafBrushNodeChildren_t;

/* 6974 */
typedef union 
{
  cLeafBrushNodeLeaf_t leaf;
  cLeafBrushNodeChildren_t children;
}cLeafBrushNodeData_t;

/* 6975 */
#pragma pack(push, 2)
typedef struct cLeafBrushNode_s
{
  byte axis;
  int16_t leafBrushCount;
  int contents;
  cLeafBrushNodeData_t data;
}cLeafBrushNode_t;
#pragma pack(pop)

/* 6976 */
typedef struct CollisionBorder_s
{
  float distEq[3];
  float zBase;
  float zSlope;
  float start;
  float length;
}CollisionBorder_t;

/* 6977 */
#pragma pack(push, 4)
typedef struct CollisionPartition_s
{
  char triCount;
  char borderCount;
  int firstTri;
  CollisionBorder_t *borders;
}CollisionPartition_t;
#pragma pack(pop)

/* 6978 */
typedef union
{
  int firstChildIndex;
  int partitionIndex;
}CollisionAabbTreeIndex_t;

/* 6979 */
typedef struct CollisionAabbTree_s
{
  float origin[3];
  float halfSize[3];
  uint16_t materialIndex;
  uint16_t childCount;
  CollisionAabbTreeIndex_t u;
}CollisionAabbTree_t;

/* 6981 */
typedef struct __attribute__((aligned(16))) 
{
  float mins[3];
  int contents;
  float maxs[3];
  unsigned int numsides;
  cbrushside_t *sides;
  int16_t axialMaterialNum[2][3];
  char *baseAdjacentSide;
  int16_t firstAdjacentSideOffsets[2][3];
  char edgeCount[2][3];
}cbrush_t;

typedef struct MapEnts_s
{
  const char *name;
  char *entityString;
  int numEntityChars;
}MapEnts_t;

//Simple dummies
typedef void DynEntityDef;
typedef void DynEntityPose;
typedef void DynEntityClient;
typedef void DynEntityColl;

/* 6988 */

typedef struct clipMap_s
{
  const char *name;
  qboolean loaded;
  int planeCount;
  cplane_t *planes;
  unsigned int numStaticModels;
  cStaticModel_t *staticModelList;
  unsigned int numMaterials;
  dmaterial_t *materials;
  unsigned int numBrushSides;
  cbrushside_t *brushsides;
  unsigned int numBrushEdges;
  char *brushEdges;
  unsigned int numNodes;
  cNode_t *nodes;
  unsigned int numLeafs;
  cLeaf_t *leafs;
  unsigned int leafbrushNodesCount;
  cLeafBrushNode_t *leafbrushNodes;
  unsigned int numLeafBrushes;
  uint16_t *leafbrushes;
  unsigned int numLeafSurfaces;
  unsigned int *leafsurfaces;
  unsigned int vertCount;
  float (*verts)[3];
  int triCount;
  uint16_t *triIndices;
  char *triEdgeIsWalkable;
  int borderCount;
  CollisionBorder_t *borders;
  int partitionCount;
  CollisionPartition_t *partitions;
  int aabbTreeCount;
  CollisionAabbTree_t *aabbTrees;
  unsigned int numSubModels;
  cmodel_t *cmodels;
  uint16_t numBrushes;
  uint16_t pad;
  cbrush_t *brushes;
  int numClusters;
  int clusterBytes;
  byte *visibility;
  int vised;
  MapEnts_t *mapEnts;
  cbrush_t *box_brush;
  cmodel_t box_model;
  uint16_t dynEntCount[2];
  DynEntityDef *dynEntDefList[2];
  DynEntityPose *dynEntPoseList[2];
  DynEntityClient *dynEntClientList[2];
  DynEntityColl *dynEntCollList[2];
  unsigned int checksum;
}clipMap_t;


typedef struct leafList_s
{
  int count;
  int maxcount;
  qboolean overflowed;
  uint16_t *list;
  vec3_t bounds[2];
  int lastLeaf;
}leafList_t;
/*
struct TraceCheckCount
{
  int global;
  int *partitions;
};

typedef struct 
{
  struct TraceCheckCount checkcount;
  cbrush_t *box_brush;
  cmodel_t *box_model;
}TraceThreadInfo;
*/

cmodel_t    *CM_ClipHandleToModel( clipHandle_t handle );


#endif