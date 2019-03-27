#ifndef __XMODEL_H__
#define __XMODEL_H__

#include "../q_shared.h"
#include "../q_math.h"
#include "../dobj.h"

enum XModelLodRampType
{
  XMODEL_LOD_RAMP_RIGID = 0x0,
  XMODEL_LOD_RAMP_SKINNED = 0x1,
  XMODEL_LOD_RAMP_COUNT = 0x2,
};


 
typedef struct XSurfaceVertexInfo_s
{
  short vertCount[4];
  unsigned short *vertsBlend;
}XSurfaceVertexInfo_t;
 
typedef union
{
  unsigned int packed;
  char array[4];
}GfxColor_t;
 
typedef union
{
  unsigned int packed;
}PackedTexCoords_t;
 
typedef union
{
  unsigned int packed;
}PackedUnitVec_t;
 
typedef struct GfxPackedVertex_s
{
  float xyz[3];
  float binormalSign;
#ifdef XBOX
  GfxColor_t color;
  PackedTexCoords_t texCoord;
  PackedUnitVec_t normal;
  PackedUnitVec_t tangent;
#endif
}GfxPackedVertex_t;
 
typedef struct GfxPackedVertexInfo_s
{
  GfxColor_t color;
  PackedTexCoords_t texCoord;
  PackedUnitVec_t normal;
  PackedUnitVec_t tangent;
}GfxPackedVertexInfo_t;
 
typedef struct XSurfaceCollisionAabb_s
{
  unsigned short mins[3];
  unsigned short maxs[3];
}XSurfaceCollisionAabb_t;
 
typedef struct XSurfaceCollisionNode_s
{
  XSurfaceCollisionAabb_t aabb;
  unsigned short childBeginIndex;
  unsigned short childCount;
}XSurfaceCollisionNode_t;
 
typedef struct XSurfaceCollisionLeaf_s
{
  unsigned short triangleBeginIndex;
}XSurfaceCollisionLeaf_t;
 
typedef struct XSurfaceCollisionTree_s
{
  float trans[3];
  float scale[3];
  unsigned int nodeCount;
  XSurfaceCollisionNode_t *nodes;
  unsigned int leafCount;
  XSurfaceCollisionLeaf_t *leafs;
}XSurfaceCollisionTree_t;
 
typedef struct XRigidVertList_s
{
  unsigned short boneOffset;
  unsigned short vertCount;
  unsigned short triOffset;
  unsigned short triCount;
  XSurfaceCollisionTree_t *collisionTree;
}XRigidVertList_t;
 
typedef struct UnknownXSurface_s
{
  char unknown[8];
}UnknownXSurface_t;
 
typedef unsigned short r_index16_t;
 
#pragma pack(push, 4)
typedef struct XSurface_s
{
  char tileMode;
  /*
  bool deformed;
  */
  byte deformed;
  unsigned short vertCount;
  unsigned short triCount;
  r_index16_t *triIndices;	// loaded last
  XSurfaceVertexInfo_t vertInfo;
#ifdef XBOX
  D3DVertexBuffer_t vb;
#endif
  GfxPackedVertex_t *verts;
#ifdef PS3
  UnknownXSurfacestruct_t struct1;// 0x1C
  GfxPackedVertexInfo_t *vertInfo;// 0x24
  UnknownXSurfacestruct_t struct2;// 0x28
#endif
  unsigned int vertListCount;	// 0x30
  XRigidVertList_t *vertList;	// 0x34
#ifdef XBOX
  D3DIndexBuffer_t indexBuffer;
#endif
#ifdef PS3
  int partBit;
#elif defined XBOX
  int partBits[4];
#endif
}XSurface;

typedef struct BrushWrapper_s
{
  float mins[3];
  int contents;
  float maxs[3];
  unsigned int numsides;
  struct cbrushside_s *sides;
  short axialMaterialNum[2][3];
  char *baseAdjacentSide;
  short firstAdjacentSideOffsets[2][3];
  char edgeCount[2][3];
  int totalEdgeCount;
  cplane_t *planes;
}BrushWrapper_t;
#pragma pack(pop)
 
typedef struct PhysMass_s
{
  float centerOfMass[3];
  float momentsOfInertia[3];
  float productsOfInertia[3];
}PhysMass_t;
 
typedef struct PhysGeomInfo_s
{
  BrushWrapper_t *brush;
  int type;
  float orientation[3][3];
  float offset[3];
  float halfLengths[3];
}PhysGeomInfo_t;
 
typedef struct PhysGeomList_s
{
  unsigned int count;
  PhysGeomInfo_t *geoms;
  PhysMass_t mass;
}PhysGeomList_t;
 
typedef struct XModelHighMipBounds_s
{
  float mins[3];
  float maxs[3];
}XModelHighMipBounds_t;
 
typedef struct XModelStreamInfo_s
{
  XModelHighMipBounds_t *highMipBounds;
}XModelStreamInfo_t;
 
 
typedef struct XModelCollSurf_s
{
  float mins[3];
  float maxs[3];
  int boneIdx;
  int contents;
  int surfFlags;
}XModelCollSurf_t;
 
typedef struct XModelLodInfo_s
{
  float dist;
  unsigned short numsurfs;
  unsigned short surfIndex;
  int partBits[4];
}XModelLodInfo_t;
 
 
 typedef WORD xScriptString_t;
 typedef void  xMaterial_t;
 typedef void  xPhysPreset_t;
 
typedef struct XModel
{
  const char *name;
  char numBones;
  char numRootBones;
  char numsurfs;
  char field_7;
  xScriptString_t *boneNames;
  char *parentList;
  short *quats;
  float *trans;
  char *partClassification;
  DObjAnimMat *baseMat;
  XSurface *surfs;
  xMaterial_t **materialHandles;
  XModelLodInfo_t lodInfo[4];
  int field_88;
  int field_8C;
  int field_90;
  int field_94;  
  XModelCollSurf_t *collSurfs;
  int numCollSurfs;
  int contents;
  struct XBoneInfo *boneInfo;
  float radius;
  vec3_t mins;
  vec3_t maxs;
  short numLods;
  short collLod;
  XModelStreamInfo_t streamInfo;	// is not loaded on ps3
  int memUsage;
  char flags;
  char field_D1;
  char field_D2;
  char field_D3;
  xPhysPreset_t *physPreset;
  PhysGeomList_t *physGeoms;
}XModel;


struct XModelPiece
{
  XModel *model;
  vec3_t offset;
};

struct XModelPieces
{
  const char *name;
  int numpieces;
  struct XModelPiece *pieces;
};


#ifdef __cplusplus
extern "C"{
#endif

XModel *__cdecl XModelPrecache(const char *name, void *(__cdecl *Alloc)(int), void *(__cdecl *AllocColl)(int));
int __cdecl XModelNumBones(struct XModel *model);
int __cdecl XModelGetStaticBounds(XModel *model, float (*axis)[3], float *mins, float *maxs);

#ifdef __cplusplus
}
#endif

#endif // __XMODEL_H__
