#pragma once
#include "xassetfwd.h"
#include ".\core\q_shared.h"
#include ".\core\q_math.h"

typedef ushort ScriptString_t;

#pragma pack(push, 2)
typedef struct cbrushside_s
{
  cplane_t *plane;
  uint materialNum;
  short firstAdjacentSideOffset;
  char edgeCount;
}cbrushside_t;
#pragma pack(pop)
 
typedef struct DObjAnimMat_s
{
  float quat[4];
  float trans[3];
  float transWeight;
}DObjAnimMat_t;
 
typedef struct XSurfaceVertexInfo_s
{
  short vertCount[4];
  ushort *vertsBlend;
}XSurfaceVertexInfo_t;
 
typedef union
{
  uint packed;
  char array[4];
}GfxColor_t;
 
typedef union
{
  uint packed;
}PackedTexCoords_t;
 
typedef union
{
  uint packed;
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
  ushort mins[3];
  ushort maxs[3];
}XSurfaceCollisionAabb_t;
 
typedef struct XSurfaceCollisionNode_s
{
  XSurfaceCollisionAabb_t aabb;
  ushort childBeginIndex;
  ushort childCount;
}XSurfaceCollisionNode_t;
 
typedef struct XSurfaceCollisionLeaf_s
{
  ushort triangleBeginIndex;
}XSurfaceCollisionLeaf_t;
 
typedef struct XSurfaceCollisionTree_s
{
  float trans[3];
  float scale[3];
  uint nodeCount;
  XSurfaceCollisionNode_t *nodes;
  uint leafCount;
  XSurfaceCollisionLeaf_t *leafs;
}XSurfaceCollisionTree_t;
 
typedef struct XRigidVertList_s
{
  ushort boneOffset;
  ushort vertCount;
  ushort triOffset;
  ushort triCount;
  XSurfaceCollisionTree_t *collisionTree;
}XRigidVertList_t;
 
typedef struct UnknownXSurface_s
{
  char unknown[8];
}UnknownXSurface_t;
 

#pragma pack(push, 4)
typedef struct XSurface_s
{
  char tileMode;
  /*
  bool deformed;
  */
  byte deformed;
  ushort vertCount;
  ushort triCount;
  ushort *triIndices;	// loaded last
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
  uint vertListCount;	// 0x30
  XRigidVertList_t *vertList;	// 0x34
#ifdef XBOX
  D3DIndexBuffer_t indexBuffer;
#endif
#ifdef PS3
  int partBit;
#elif defined XBOX
  int partBits[4];
#endif
}XSurface_t;
 
typedef struct BrushWrapper_s
{
  float mins[3];
  int contents;
  float maxs[3];
  uint numsides;
  cbrushside_t *sides;
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
  uint count;
  PhysGeomInfo_t *geoms;
  PhysMass_t mass;
}PhysGeomList_t;
 
typedef struct XBoneInfo_s
{
  float bounds[2][3];
  float offset[3];
  float radiusSquared;
}XBoneInfo_t;
 
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
  ushort numsurfs;
  ushort surfIndex;
  int partBits[4];
}XModelLodInfo_t;
 
 
typedef struct XModel_s
{
  const char *name;
  char numBones;
  char numRootBones;
  char numsurfs;
  char field_7;
  ScriptString_t *boneNames;
  char *parentList;
  short *quats;
  float *trans;
  char *partClassification;
  DObjAnimMat_t *baseMat;
  XSurface_t *surfs;
  Material_t **materialHandles;
  XModelLodInfo_t lodInfo[4];
  int field_88;
  int field_8C;
  int field_90;
  int field_94;  
  XModelCollSurf_t *collSurfs;
  int numCollSurfs;
  int contents;
  XBoneInfo_t *boneInfo;
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
  PhysPreset_t *physPreset;
  PhysGeomList_t *physGeoms;
}XModel_t;
