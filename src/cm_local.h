#ifndef __CM_LOCAL_H__
#define __CM_LOCAL_H__

#include "q_shared.h"
#include "sys_thread.h"
#include "cm_public.h"


#define BOX_MODEL_HANDLE 4095
#define CAPSULE_MODEL_HANDLE BOX_MODEL_HANDLE
#define SURFACE_CLIP_EPSILON    ( 0.125 )

#pragma pack(push, 2)
typedef struct cbrushside_s
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
  vec3_t origin;
  vec3_t invScaledAxis[3];
  vec3_t absmin;
  vec3_t absmax;
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

typedef struct cmodel_t
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

typedef struct CollisionBorder
{
  float distEq[3];
  float zBase;
  float zSlope;
  float start;
  float length;
}CollisionBorder_t;

/* 6977 */
#pragma pack(push, 4)
typedef struct CollisionPartition
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
typedef struct __attribute__((aligned(16))) cbrush_t
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
} cbrush_t;

typedef struct MapEnts
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

typedef struct clipMap_s
{
  const char *name;
  qboolean isInUse;
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
  byte *triEdgeIsWalkable;
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
extern clipMap_t cm;
void __cdecl CM_LoadMapFromBsp(const char *name, char a2);
void __cdecl CM_LoadStaticModels();
void __cdecl DynEnt_LoadEntities();



//For BSP
struct dbrush_t
{
  uint16_t numSides;
  uint16_t materialNum;
};


struct dbrushside_t
{
  union
  {
    int planeNum;
    float bound;
  };
  int materialNum;
};

#ifndef BSPC

enum LumpType
{
  LUMP_MATERIALS = 0x0,
  LUMP_LIGHTBYTES = 0x1,
  LUMP_LIGHTGRIDENTRIES = 0x2,
  LUMP_LIGHTGRIDCOLORS = 0x3,
  LUMP_PLANES = 0x4,
  LUMP_BRUSHSIDES = 0x5,
  LUMP_BRUSHSIDEEDGECOUNTS = 0x6,
  LUMP_BRUSHEDGES = 0x7,
  LUMP_BRUSHES = 0x8,
  LUMP_TRIANGLES = 0x9,
  LUMP_DRAWVERTS = 0xA,
  LUMP_DRAWINDICES = 0xB,
  LUMP_CULLGROUPS = 0xC,
  LUMP_CULLGROUPINDICES = 0xD,
  LUMP_OBSOLETE_1 = 0xE,
  LUMP_OBSOLETE_2 = 0xF,
  LUMP_OBSOLETE_3 = 0x10,
  LUMP_OBSOLETE_4 = 0x11,
  LUMP_OBSOLETE_5 = 0x12,
  LUMP_PORTALVERTS = 0x13,
  LUMP_OBSOLETE_6 = 0x14,
  LUMP_UINDS = 0x15,
  LUMP_BRUSHVERTSCOUNTS = 0x16,
  LUMP_BRUSHVERTS = 0x17,
  LUMP_AABBTREES = 0x18,
  LUMP_CELLS = 0x19,
  LUMP_PORTALS = 0x1A,
  LUMP_NODES = 0x1B,
  LUMP_LEAFS = 0x1C,
  LUMP_LEAFBRUSHES = 0x1D,
  LUMP_LEAFSURFACES = 0x1E,
  LUMP_COLLISIONVERTS = 0x1F,
  LUMP_COLLISIONTRIS = 0x20,
  LUMP_COLLISIONEDGEWALKABLE = 0x21,
  LUMP_COLLISIONBORDERS = 0x22,
  LUMP_COLLISIONPARTITIONS = 0x23,
  LUMP_COLLISIONAABBS = 0x24,
  LUMP_MODELS = 0x25,
  LUMP_VISIBILITY = 0x26,
  LUMP_ENTITIES = 0x27,
  LUMP_PATHCONNECTIONS = 0x28,
  LUMP_REFLECTION_PROBES = 0x29,
  LUMP_VERTEX_LAYER_DATA = 0x2A,
  LUMP_PRIMARY_LIGHTS = 0x2B,
  LUMP_LIGHTGRIDHEADER = 0x2C,
  LUMP_LIGHTGRIDROWS = 0x2D,
  LUMP_OBSOLETE_10 = 0x2E,
  LUMP_OBSOLETE_11 = 0x2F,
  LUMP_OBSOLETE_12 = 0x30,
  LUMP_OBSOLETE_13 = 0x31,
  LUMP_OBSOLETE_14 = 0x32,
  LUMP_OBSOLETE_15 = 0x33,
  LUMP_WATERHEADER = 0x34,
  LUMP_WATERCELLS = 0x35,
  LUMP_WATERCELLDATA = 0x36,
  LUMP_BURNABLEHEADER = 0x37,
  LUMP_BURNABLECELLS = 0x38,
  LUMP_BURNABLECELLDATA = 0x39,
  LUMP_SIMPLELIGHTMAPBYTES = 0x3A,
  LUMP_LODCHAINS = 0x3B,
  LUMP_LODINFOS = 0x3C,
  LUMP_LODSURFACES = 0x3D,
  LUMP_LIGHTREGIONS = 0x3E,
  LUMP_LIGHTREGION_HULLS = 0x3F,
  LUMP_LIGHTREGION_AXES = 0x40,
  LUMP_WIILIGHTGRID = 0x41,
  LUMP_LIGHTGRID2D_LIGHTS = 0x42,
  LUMP_LIGHTGRID2D_INDICES = 0x43,
  LUMP_LIGHTGRID2D_POINTS = 0x44,
  LUMP_LIGHTGRID2D_CELLS = 0x45,
  LUMP_LIGHT_CORONAS = 0x46,
  LUMP_SHADOWMAP_VOLUMES = 0x47,
  LUMP_SHADOWMAP_VOLUME_PLANES = 0x48,
  LUMP_EXPOSURE_VOLUMES = 0x49,
  LUMP_EXPOSURE_VOLUME_PLANES = 0x4A,
  LUMP_OCCLUDERS = 0x4B,
  LUMP_OUTDOORBOUNDS = 0x4C,
  LUMP_HERO_ONLY_LIGHTS = 0x4D,
};

#endif

#define MAX_SUBMODELS 4095

#ifdef __cplusplus
extern "C"{
#endif

#ifndef BSPC
byte *__cdecl Com_GetBspLump(enum LumpType type, unsigned int elemSize, unsigned int *count);
bool __cdecl Com_BspHasLump(enum LumpType type);
#endif

void *__cdecl CM_Hunk_Alloc(int numBytes, const char *what);
unsigned int __cdecl Com_GetBspVersion();
void __cdecl CM_Hunk_ClearTempMemoryHigh();
void CM_Hunk_CheckTempMemoryHighClear();
char *__cdecl CM_Hunk_AllocateTempMemoryHigh(int size);
bool __cdecl Com_IsBspLoaded();

#ifdef __cplusplus
};
#endif


#endif