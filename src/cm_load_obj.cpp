#include "q_shared.h"
#include "cm_local.h"
#include "qcommon_mem.h"
#include "qcommon_io.h"
#include "g_shared.h"


void CMod_LoadBrushes()
{
  dbrushside_t *inSides;
  byte *inEdges;
  cbrush_t *outBrush;
  unsigned int axisIter;
  signed int index;
  unsigned int edgeCount;
  unsigned int materialnum;
  unsigned int brushcount;
  byte *edgeCounts;
  dbrush_t *inBrush;
  cbrushside_t *sides;
  unsigned int len;
  int edgeoffset;
  unsigned int numinsides;
  unsigned int sideIter;
  unsigned int brushIter;

  inBrush = (dbrush_t *)Com_GetBspLump(LUMP_BRUSHES, sizeof(dbrush_t), &brushcount);
  inSides = (dbrushside_t *)Com_GetBspLump(LUMP_BRUSHSIDES, sizeof(dbrushside_t), &numinsides);
  edgeCounts = Com_GetBspLump(LUMP_BRUSHSIDEEDGECOUNTS, sizeof(byte), &len);
  if ( len != numinsides )
    Com_Error(ERR_FATAL, "CMod_LoadBrushes: bad number of side edge counts: %i != %i", len, numinsides);
  inEdges = Com_GetBspLump(LUMP_BRUSHEDGES, sizeof(byte), &len);

  if ( len )
    cm.brushEdges = (char *)CM_Hunk_Alloc(len, "CMod_LoadBrushSides");
  else
    cm.brushEdges = NULL;
  cm.numBrushEdges = len;
  memcpy(cm.brushEdges, inEdges, len);
  unsigned int outnumsides = (unsigned int)numinsides - 6 * brushcount;
  char *edges = cm.brushEdges;
  if ( outnumsides )
    sides = (cbrushside_t *)CM_Hunk_Alloc(sizeof(cbrushside_t) * outnumsides, "CMod_LoadBrushSides");
  else
    sides = NULL;
  cm.brushsides = sides;
  cm.numBrushSides = outnumsides;
  cm.brushes = (cbrush_t *)CM_Hunk_Alloc(sizeof(cbrush_t) * (5 * brushcount + 5), "CMod_LoadBrushes");
  cm.numBrushes = brushcount;
  if ( (uint16_t)brushcount != brushcount )
    Com_Error(ERR_FATAL, "CMod_LoadBrushes: cm.numBrushes exceeded");
  outBrush = cm.brushes;
  for (brushIter = 0; brushIter < brushcount; ++brushIter)
  {
      edgeoffset = 0;
      axisIter = 0;

      assert(inBrush->numSides >= 6);

      outBrush->numsides = inBrush->numSides - 6;
      outBrush->sides = (outBrush->numsides != 0 ? sides : NULL);
      outBrush->baseAdjacentSide = edges;
      for ( axisIter = 0; axisIter < 3; ++axisIter )
      {
        for( index = 0; index < 2; ++index )
        {
          if ( index ){
            outBrush->maxs[axisIter] = inSides->bound;
          }else{
            outBrush->mins[axisIter] = inSides->bound;
          }
          if ( (unsigned)inSides->materialNum >= cm.numMaterials )
          {
            Com_Error(ERR_FATAL, "CMod_LoadBrushes: maximum edge offset exceeded", inSides->materialNum);
          }
          outBrush->axialMaterialNum[index][axisIter] = inSides->materialNum;
          if ( (int16_t)(inSides->materialNum) != inSides->materialNum )
          {
            Com_Error(ERR_FATAL, "CMod_LoadBrushes: axialMaterialNum exceeded");
          }
          outBrush->edgeCount[index][axisIter] = *edgeCounts;
          outBrush->firstAdjacentSideOffsets[index][axisIter] = edgeoffset;
          if ( (int16_t)edgeoffset != edgeoffset )
          {
            Com_Error(ERR_FATAL, "CMod_LoadBrushes: maximum edge offset exceeded");
          }
          edgeCount = *edgeCounts;
          edges += edgeCount;
          edgeoffset += edgeCount;

          ++inSides;
          ++edgeCounts;
        }
      }
      for(sideIter = 0; sideIter < outBrush->numsides; ++sideIter)
      {

          sides->plane = &cm.planes[inSides->planeNum];
          sides->materialNum = inSides->materialNum;
          if ( sides->materialNum >= cm.numMaterials )
            Com_Error(ERR_FATAL, "CMod_LoadBrushes: bad materialNum: %d brushIter", sides->materialNum);
          sides->edgeCount = *edgeCounts;
          sides->firstAdjacentSideOffset = edgeoffset;
          if ( (int16_t)edgeoffset != edgeoffset )
            Com_Error(ERR_FATAL, "CMod_LoadBrushes: maximum edge offset exceeded");
          edgeCount = *edgeCounts;
          edges += edgeCount;
          edgeoffset += edgeCount;

          ++inSides;
          ++sides;
          ++edgeCounts;
      }
      materialnum = inBrush->materialNum;
      if ( materialnum >= cm.numMaterials )
        Com_Error(ERR_FATAL, "CMod_LoadBrushes: bad materialNum: %d brushIter", inBrush->materialNum);
      ++inBrush;
      outBrush->contents = cm.materials[materialnum].contentFlags;
      ++outBrush;
  }
}


int __cdecl CMod_GetLeafTerrainContents(cLeaf_s *leaf)
{
  int contents;
  int k;

  contents = 0;
  for ( k = 0; k < leaf->collAabbCount; ++k )
  {
    contents |= cm.materials[cm.aabbTrees[k + leaf->firstCollAabbIndex].materialIndex].contentFlags;
  }
  return contents;
}

struct DiskLeaf
{
  int cluster;
  int firstCollAabbIndex;
  int collAabbCount;
  int firstLeafBrush;
  int numLeafBrushes;
  int cellNum;
};

struct DiskLeaf_Version14
{
  int cluster;
  int unused0;
  int firstCollAabbIndex;
  int collAabbCount;
  int firstLeafBrush;
  int numLeafBrushes;
  int cellNum;
  int unused1;
  int unused2;
};


void CMod_PartionLeafBrushes(uint16_t *leafBrushes, int numLeafBrushes, cLeaf_s *leaf);

void CMod_LoadLeafBrushNodes()
{
  int contents;
  cLeaf_s *out;
  unsigned int numLeafBrushes;
  unsigned int leafIter;
  DiskLeaf *in;
  int indexFirstLeafBrush;
  unsigned int count;
  unsigned int brushIter;
  int brushnum;

  in = (DiskLeaf*)Com_GetBspLump(LUMP_LEAFS, sizeof(DiskLeaf), &count);
  assertx( count == cm.numLeafs, "count:%i, cm.numLeafs:%i", count, cm.numLeafs);
  out = cm.leafs;

  for (leafIter = 0; leafIter < cm.numLeafs; ++leafIter )
  {
    numLeafBrushes = in->numLeafBrushes;
    indexFirstLeafBrush = in->firstLeafBrush;
    contents = 0;
    for ( brushIter = 0; brushIter < numLeafBrushes; ++brushIter )
    {
      brushnum = cm.leafbrushes[brushIter + indexFirstLeafBrush];
      contents |= cm.brushes[brushnum].contents;
    }
    out->brushContents = contents;
    out->terrainContents = CMod_GetLeafTerrainContents(out);
    CMod_PartionLeafBrushes(&cm.leafbrushes[indexFirstLeafBrush], numLeafBrushes, out);
    ++in;
    ++out;
  }
}

void CMod_LoadLeafBrushNodes_Version14()
{
  int contents;
  cLeaf_s *out;
  unsigned int numLeafBrushes;
  unsigned int leafIter;
  DiskLeaf_Version14 *in;
  int indexFirstLeafBrush;
  unsigned int count;
  unsigned int brushIter;
  int brushnum;

  in = (DiskLeaf_Version14*)Com_GetBspLump(LUMP_LEAFS, sizeof(DiskLeaf_Version14), &count);
  assertx( count == cm.numLeafs, "count:%i, cm.numLeafs:%i", count, cm.numLeafs);
  out = cm.leafs;
  leafIter = 0;
  while ( leafIter < cm.numLeafs )
  {
    numLeafBrushes = in->numLeafBrushes;
    indexFirstLeafBrush = in->firstLeafBrush;
    contents = 0;
    for ( brushIter = 0; brushIter < numLeafBrushes; ++brushIter )
    {
      brushnum = cm.leafbrushes[brushIter + indexFirstLeafBrush];
      contents |= cm.brushes[brushnum].contents;
    }
    out->brushContents = contents;
    out->terrainContents = CMod_GetLeafTerrainContents(out);
    CMod_PartionLeafBrushes(&cm.leafbrushes[indexFirstLeafBrush], numLeafBrushes, out);
    ++leafIter;
    ++in;
    ++out;
  }
}

void __cdecl CMod_LoadLeafBrushes()
{
  unsigned int brushIndex;
  uint16_t *out;
  uint32_t *in;
  unsigned int iter;
  unsigned int count;

  in = (uint32_t *)Com_GetBspLump(LUMP_LEAFBRUSHES, sizeof(uint32_t), &count);
  cm.leafbrushes = (uint16_t *)CM_Hunk_Alloc(2 * count + 2, "CMod_LoadLeafBrushes");
  cm.numLeafBrushes = count;
  out = cm.leafbrushes;
  iter = 0;
  while ( iter < count )
  {
    brushIndex = *in;
    *out = *in;
    if ( *out != brushIndex )
    {
      Com_Error(ERR_DROP, "CMod_LoadLeafBrushes: brushIndex exceeded");
    }
    assert(*out < (signed int)cm.numBrushes);
    ++iter;
    ++in;
    ++out;
  }
}


struct DiskCollAabbTree
{
  vec3_t origin;
  vec3_t halfSize;
  uint16_t materialIndex;
  uint16_t childCount;
  union
  {
    int firstChildIndex;
    int partitionIndex;
  };
};


void __cdecl CMod_LoadCollisionAabbTrees()
{
  CollisionAabbTree_s *out;
  DiskCollAabbTree *in;
  unsigned int index;
  unsigned int count;

  in = (DiskCollAabbTree *)Com_GetBspLump(LUMP_COLLISIONAABBS, sizeof(DiskCollAabbTree), &count);
  cm.aabbTrees = (CollisionAabbTree_s *)CM_Hunk_Alloc(32 * count, "CMod_LoadCollisionAabbTrees");
  cm.aabbTreeCount = count;
  out = cm.aabbTrees;
  index = 0;
  while ( index < count )
  {
    out->origin[0] = in->origin[0];
    out->origin[1] = in->origin[1];
    out->origin[2] = in->origin[2];
    out->halfSize[0] = in->halfSize[0];
    out->halfSize[1] = in->halfSize[1];
    out->halfSize[2] = in->halfSize[2];
    out->materialIndex = in->materialIndex;
    out->childCount = in->childCount;
    out->u.firstChildIndex = in->firstChildIndex;
    ++index;
    ++in;
    ++out;
  }
}




void __cdecl CMod_LoadLeafs(bool usePvs)
{
  int firstCollAabbIndex;
  cLeaf_s *out;
  int cluster;
  unsigned int leafIter;
  DiskLeaf *in;
  unsigned int count;
  int collAabbCount;

  in = (DiskLeaf *)Com_GetBspLump(LUMP_LEAFS, sizeof(DiskLeaf), &count);
  if ( !count )
  {
    Com_Error(ERR_DROP, "Map with no leafs");
  }
  cm.leafs = (cLeaf_s *)CM_Hunk_Alloc(sizeof(cLeaf_s) * count, "CMod_LoadLeafs");
  cm.numLeafs = count;
  cluster = 0;
  out = cm.leafs;
  leafIter = 0;
  while ( leafIter < count )
  {
    if ( usePvs )
    {
      cluster = in->cluster;
      out->cluster = cluster;
      if ( out->cluster != cluster )
      {
        Com_Error(ERR_DROP, "CMod_LoadLeafs: cluster exceeded");
      }
    }
    firstCollAabbIndex = in->firstCollAabbIndex;
    out->firstCollAabbIndex = firstCollAabbIndex;
    if ( out->firstCollAabbIndex != firstCollAabbIndex )
    {
      Com_Error(ERR_DROP, "CMod_LoadLeafs: firstCollAabbIndex exceeded");
    }
    collAabbCount = in->collAabbCount;
    out->collAabbCount = collAabbCount;
    if ( out->collAabbCount != collAabbCount )
    {
      Com_Error(ERR_DROP, "CMod_LoadLeafs: collAabbCount exceeded");
    }
    if ( usePvs && cluster >= cm.numClusters )
    {
      cm.numClusters = cluster + 1;
    }
    ++leafIter;
    ++in;
    ++out;
  }
}

void __cdecl CMod_LoadLeafs_Version14(bool usePvs)
{
  int firstCollAabbIndex;
  cLeaf_s *out;
  int cluster;
  unsigned int leafIter;
  DiskLeaf_Version14 *in;
  unsigned int count;
  int collAabbCount;

  in = (DiskLeaf_Version14 *)Com_GetBspLump(LUMP_LEAFS, sizeof(DiskLeaf_Version14), &count);
  if ( !count )
  {
    Com_Error(ERR_DROP, "Map with no leafs");
  }
  cm.leafs = (cLeaf_s *)CM_Hunk_Alloc(44 * count, "CMod_LoadLeafs");
  cm.numLeafs = count;
  cluster = 0;
  out = cm.leafs;
  leafIter = 0;
  while ( leafIter < count )
  {
    if ( usePvs )
    {
      cluster = in->cluster;
      out->cluster = cluster;
      if ( out->cluster != cluster )
      {
        Com_Error(ERR_DROP, "CMod_LoadLeafs: cluster exceeded");
      }
    }
    firstCollAabbIndex = in->firstCollAabbIndex;
    out->firstCollAabbIndex = firstCollAabbIndex;
    if ( out->firstCollAabbIndex != firstCollAabbIndex )
    {
      Com_Error(ERR_DROP, "CMod_LoadLeafs: firstCollAabbIndex exceeded");
    }
    collAabbCount = in->collAabbCount;
    out->collAabbCount = collAabbCount;
    if ( out->collAabbCount != collAabbCount )
    {
      Com_Error(ERR_DROP, "CMod_LoadLeafs: collAabbCount exceeded");
    }
    if ( usePvs && cluster >= cm.numClusters )
    {
      cm.numClusters = cluster + 1;
    }
    ++leafIter;
    ++in;
    ++out;
  }
}



struct DiskBrushModel_VersionBlackOps
{
  float mins[3];
  float maxs[3];
  uint16_t firstTriSoup;
  uint16_t triSoupCount;
  int firstSurface;
  int numSurfaces;
  int firstBrush;
  int numBrushes;
};


struct DiskBrushModel
{
  float mins[3];
  float maxs[3];
  unsigned int firstTriSoup;
  unsigned int triSoupCount;
  int firstSurface;
  int numSurfaces;
  int firstBrush;
  int numBrushes;
};


void __cdecl CMod_LoadSubmodels()
{
  int firstCollAabbIndex;
  int j;
  cmodel_t *out;
  DiskBrushModel *in;
  unsigned int bmodelIndex;
  vec3_t extent;
  unsigned int count;
  int collAabbCount;

  in = (DiskBrushModel *)Com_GetBspLump(LUMP_MODELS, sizeof(DiskBrushModel), &count);
  if ( !count )
  {
    Com_Error(ERR_DROP, "Map with no brush models (should at least have the world model)");
  }
  cm.cmodels = (cmodel_t *)CM_Hunk_Alloc(72 * count, "CMod_LoadSubmodels");
  cm.numSubModels = count;
  if ( count > MAX_SUBMODELS )
  {
    Com_Error(ERR_DROP, "MAX_SUBMODELS exceeded");
  }
  bmodelIndex = 0;
  while ( bmodelIndex < count )
  {
    out = &cm.cmodels[bmodelIndex];
    for ( j = 0; j < 3; ++j )
    {
      out->mins[j] = in->mins[j] - 1.0;
      out->maxs[j] = in->maxs[j] + 1.0;
      if ( abs(out->mins[j]) - abs(out->maxs[j]) < 0.0 )
      {
        extent[j] = abs(out->maxs[j]);
      }
      else
      {
        extent[j] = abs(out->mins[j]);
      }
    }
    out->radius = VectorLength(extent);
    if ( bmodelIndex )
    {
      collAabbCount = in->numSurfaces;
      out->leaf.collAabbCount = collAabbCount;
      if ( out->leaf.collAabbCount != collAabbCount )
      {
        Com_Error(ERR_DROP, "CMod_LoadSubmodels: collAabbCount exceeded");
      }
      firstCollAabbIndex = in->firstSurface;
      out->leaf.firstCollAabbIndex = firstCollAabbIndex;
      if ( out->leaf.firstCollAabbIndex != firstCollAabbIndex )
      {
        Com_Error(ERR_DROP, "CMod_LoadSubmodels: firstCollAabbIndex exceeded");
      }
    }
    ++bmodelIndex;
    ++in;
  }
}


void __cdecl CMod_LoadSubmodelBrushNodes()
{
  int contents;
  cmodel_t *out;
  int numLeafBrushes;
  int leafBrushIndex;
  DiskBrushModel *in;
  unsigned int bmodelIndex;
  uint16_t *indexes;
  unsigned int count;
  int firstBrush;

  in = (DiskBrushModel *)Com_GetBspLump(LUMP_MODELS, sizeof(DiskBrushModel), &count);
  assert(count == cm.numSubModels);

  ++in;
  bmodelIndex = 1;
  while ( bmodelIndex < cm.numSubModels )
  {
    out = &cm.cmodels[bmodelIndex];
    numLeafBrushes = in->numBrushes;
    indexes = (uint16_t *)CM_Hunk_Alloc(2 * numLeafBrushes, "CMod_LoadSubmodelBrushNodes");
    contents = 0;

    for ( leafBrushIndex = 0; leafBrushIndex < numLeafBrushes; ++leafBrushIndex )
    {
      firstBrush = leafBrushIndex + in->firstBrush;
      indexes[leafBrushIndex] = firstBrush;
      if ( indexes[leafBrushIndex] != firstBrush )
      {
        Com_Error(ERR_DROP, "CMod_LoadSubmodelBrushNodes: leafBrushes exceeded");
      }
      contents |= cm.brushes[firstBrush].contents;
    }
    out->leaf.brushContents = contents;
    out->leaf.terrainContents = CMod_GetLeafTerrainContents(&out->leaf);
    CMod_PartionLeafBrushes(indexes, numLeafBrushes, &out->leaf);
    ++bmodelIndex;
    ++in;
  }
}


cLeafBrushNode_s *__cdecl CMod_AllocLeafBrushNode()
{
  cLeafBrushNode_s *result = (cLeafBrushNode_s *)TempMalloc(sizeof(cLeafBrushNode_s));
  memset(result, 0, sizeof(cLeafBrushNode_s));
  result->data.children.dist = -3.4028235e38;
  return result;
}


void CM_InitBoxHull()
{
  cLeafBrushNode_s *nlbn;

  cm.box_brush = &cm.brushes[cm.numBrushes];
  cm.box_brush->numsides = 0;
  cm.box_brush->sides = 0;
  cm.box_brush->contents = -1;
  cm.box_model.leaf.brushContents = -1;
  cm.box_model.leaf.terrainContents = 0;
  cm.box_model.leaf.mins[0] = 3.4028235e38;
  cm.box_model.leaf.mins[1] = 3.4028235e38;
  cm.box_model.leaf.mins[2] = 3.4028235e38;
  cm.box_model.leaf.maxs[0] = -3.4028235e38;
  cm.box_model.leaf.maxs[1] = -3.4028235e38;
  cm.box_model.leaf.maxs[2] = -3.4028235e38;
  cm.box_brush->axialMaterialNum[0][0] = -1;
  cm.box_brush->axialMaterialNum[0][1] = -1;
  cm.box_brush->axialMaterialNum[0][2] = -1;
  cm.box_brush->axialMaterialNum[1][0] = -1;
  cm.box_brush->axialMaterialNum[1][1] = -1;
  cm.box_brush->axialMaterialNum[1][2] = -1;
  nlbn = CMod_AllocLeafBrushNode();
  cm.box_model.leaf.leafBrushNode = nlbn - cm.leafbrushNodes;
  nlbn->leafBrushCount = 1;
  nlbn->data.leaf.brushes = &cm.leafbrushes[cm.numLeafBrushes];
  cm.leafbrushes[cm.numLeafBrushes] = cm.numBrushes;
}


void __cdecl CMod_LoadBrushRelated(unsigned int version, bool usePvs)
{
  int leafbrushNodesCount; 
  cLeafBrushNode_s *leafbrushNodes;
  HunkUser *user;

  CMod_LoadBrushes();
  CMod_LoadLeafBrushes();
  CMod_LoadCollisionAabbTrees();
  if ( version > 14 )
  {
    CMod_LoadLeafs(usePvs);
  }
  else
  {
    CMod_LoadLeafs_Version14(usePvs);
  }
  CMod_LoadSubmodels();
  user = Hunk_UserCreate(0x400000, "CMod_LoadBrushRelated", 1, 0, 26);
  TempMemoryReset(user);
  cm.leafbrushNodes = ((cLeafBrushNode_s*)TempMalloc(0)) - 1;
  if ( version > 14 )
  {
    CMod_LoadLeafBrushNodes();
  }
  else
  {
    CMod_LoadLeafBrushNodes_Version14();
  }
  CMod_LoadSubmodelBrushNodes();
  CM_InitBoxHull();
  ++cm.leafbrushNodes;
  leafbrushNodesCount = ((cLeafBrushNode_s*)TempMalloc(0)) - cm.leafbrushNodes;

  cm.leafbrushNodesCount = leafbrushNodesCount + 1;

  //Copy the temp hunk to a permanent hunk
  leafbrushNodes = (cLeafBrushNode_s *)CM_Hunk_Alloc(sizeof(cLeafBrushNode_s) * (leafbrushNodesCount + 1), "CMod_LoadBrushRelated");
  memcpy(&leafbrushNodes[1], cm.leafbrushNodes, sizeof(cLeafBrushNode_s) * leafbrushNodesCount);
  cm.leafbrushNodes = leafbrushNodes;

  Hunk_UserDestroy(user);
}

void CMod_LoadMaterials()
{
  dmaterial_t *in;
  unsigned int matIndex;
  unsigned int count;

  in = (dmaterial_t *)Com_GetBspLump(LUMP_MATERIALS, sizeof(dmaterial_t), &count);
  if ( !count )
  {
    Com_Error(ERR_DROP, "Map with no materials");
  }
  cm.materials = (((dmaterial_t *)CM_Hunk_Alloc(sizeof(dmaterial_t) * (count + 1), "CMod_LoadMaterials")) + 1);
  cm.numMaterials = count;
  Com_Memcpy(cm.materials, in, sizeof(dmaterial_t) * count);
  for ( matIndex = 0; matIndex < cm.numMaterials; ++matIndex )
  {
    cm.materials[matIndex].contentFlags &= 0xDFFFFFFB;
  }
}


struct dnode_t
{
  int planeNum;
  int children[2];
  int mins[3];
  int maxs[3];
};


void __cdecl CMod_LoadNodes()
{
  int child;
  int j;
  cNode_t *out;
  dnode_t *in;
  unsigned int nodeIter;
  unsigned int count;

  in = (dnode_t *)Com_GetBspLump(LUMP_NODES, sizeof(dnode_t), &count);
  if ( !count )
  {
    Com_Error(ERR_DROP, "Map has no nodes");
  }
  cm.nodes = (cNode_t *)CM_Hunk_Alloc(sizeof(cNode_t) * count, "CMod_LoadNodes");
  cm.numNodes = count;
  out = cm.nodes;
  nodeIter = 0;
  while ( nodeIter < count )
  {
    Com_Printf(CON_CHANNEL_SYSTEM, "Node %d, plane %d, childs %d %d, mins %g %g %g, maxs %g %g %g\n", 
      nodeIter, in->planeNum, in->children[0], in->children[1], in->mins[0], in->mins[1], in->mins[2],
      in->maxs[0], in->maxs[1], in->maxs[2]);
    out->plane = &cm.planes[in->planeNum];
    for ( j = 0; j < 2; ++j )
    {
      child = in->children[j];
      out->children[j] = child;
      if ( out->children[j] != child )
      {
        Com_Error(ERR_DROP, "Mod_LoadNodes: children exceeded");
      }
    }
    ++nodeIter;
    ++out;
    ++in;
  }
}


void CMod_LoadLeafSurfaces()
{
  unsigned int *in;
  unsigned int count;

  in = (unsigned int *)Com_GetBspLump(LUMP_LEAFSURFACES, sizeof(uint32_t), &count);
  cm.leafsurfaces = (unsigned int *)CM_Hunk_Alloc(sizeof(uint32_t) * count, "CMod_LoadLeafSurfaces");
  cm.numLeafSurfaces = count;
  Com_Memcpy(cm.leafsurfaces, in, sizeof(uint32_t) * count);
}


void CMod_LoadCollisionVerts()
{
  vec3_t *in;
  unsigned int count;

  in = (vec3_t *)Com_GetBspLump(LUMP_COLLISIONVERTS, sizeof(vec3_t), &count);
  cm.verts = (vec3_t *)CM_Hunk_Alloc(sizeof(vec3_t) * count, "CMod_LoadCollisionVerts");
  cm.vertCount = count;
  Com_Memcpy(cm.verts, in, sizeof(vec3_t) * count);
}

void CMod_LoadCollisionTriangles()
{
  uint16_t *in;
  unsigned int count;

  in = (uint16_t *)Com_GetBspLump(LUMP_COLLISIONTRIS, sizeof(uint16_t), &count);
  cm.triIndices = (uint16_t *)CM_Hunk_Alloc(sizeof(uint16_t) * count, "CMod_LoadCollisionTriangles");
  cm.triCount = count / 3;
  Com_Memcpy(cm.triIndices, in, sizeof(uint16_t) * count);
}

/*
void CMod_LoadPartitionIndices()
{
  uint16_t *in;
  int size;
  unsigned int count;

  in = Com_GetBspLump(LUMP_UINDS, sizeof(uint16_t), &count);
  size = sizeof(uint16_t) * count;
  cm.uinds = (uint16_t *)CM_Hunk_Alloc(sizeof(uint16_t) * count, "CMod_LoadPartitionIndices");
  cm.nuinds = count;
  Com_Memcpy(cm.uinds, in, size);
}
*/

void CMod_LoadCollisionEdgeWalkable()
{
  byte *in;
  unsigned int count;

  in = Com_GetBspLump(LUMP_COLLISIONEDGEWALKABLE, sizeof(byte), &count);
  cm.triEdgeIsWalkable = (byte*)CM_Hunk_Alloc(count, "CMod_LoadCollisionEdgeWalkable");
  Com_Memcpy(cm.triEdgeIsWalkable, in, count);
}

struct DiskCollBorder
{
  float distEq[3];
  float zBase;
  float zSlope;
  float start;
  float length;
};

void __cdecl CMod_LoadCollisionBorders()
{
  CollisionBorder *out;
  DiskCollBorder *in;
  unsigned int index;
  unsigned int count;

  in = (DiskCollBorder *)Com_GetBspLump(LUMP_COLLISIONBORDERS, sizeof(DiskCollBorder), &count);
  cm.borders = (CollisionBorder *)CM_Hunk_Alloc(sizeof(CollisionBorder) * count, "CMod_LoadCollisionBorders");
  cm.borderCount = count;
  out = cm.borders;
  index = 0;
  while ( index < count )
  {
    out->distEq[0] = in->distEq[0];
    out->distEq[1] = in->distEq[1];
    out->distEq[2] = in->distEq[2];
    out->zBase = in->zBase;
    out->zSlope = in->zSlope;
    out->start = in->start;
    out->length = in->length;
    ++index;
    ++in;
    ++out;
  }
}

struct DiskCollPartition_VersionBlackOps
{
  uint16_t checkStamp;
  byte triCount;
  byte borderCount;
  int firstTriIndex;
  int firstBorderIndex;
  int nuinds;
  int fuind;
};

/*
void __cdecl CMod_LoadCollisionPartitions_VersionBlackOps( )
{
  CollisionPartition *out;
  DiskCollPartition_VersionBlackOps *in;
  unsigned int index;
  unsigned int count;

  in = (DiskCollPartition_VersionBlackOps *)Com_GetBspLump(LUMP_COLLISIONPARTITIONS, sizeof(DiskCollPartition_VersionBlackOps), &count);
  cm.partitions = (CollisionPartition *)CM_Hunk_Alloc(sizeof(CollisionPartition) * count, "CMod_LoadCollisionPartitions");
  cm.partitionCount = count;
  out = cm.partitions;
  index = 0;
  while ( index < count )
  {
    out->triCount = in->triCount;
    out->borderCount = in->borderCount;
    out->firstTri = in->firstTriIndex;
    out->borders = &cm.borders[in->firstBorderIndex];

    out->nuinds = in->nuinds;
    out->fuind = in->fuind;

    assert(out->firstTri + out->triCount <= cm.triCount);
    assert(out->firstTri >= 0);
    ++index;
    ++in;
    ++out;
  }
}*/

struct DiskCollPartition
{
  uint16_t checkStamp;
  byte triCount;
  byte borderCount;
  int firstTriIndex;
  int firstBorderIndex;
};


void __cdecl CMod_LoadCollisionPartitions( )
{
  CollisionPartition *out;
  DiskCollPartition *in;
  unsigned int index;
  unsigned int count;

  in = (DiskCollPartition *)Com_GetBspLump(LUMP_COLLISIONPARTITIONS, sizeof(DiskCollPartition), &count);
  cm.partitions = (CollisionPartition *)CM_Hunk_Alloc(sizeof(CollisionPartition) * count, "CMod_LoadCollisionPartitions");
  cm.partitionCount = count;
  out = cm.partitions;
  index = 0;
  while ( index < count )
  {
    out->triCount = in->triCount;
    out->borderCount = in->borderCount;
    out->firstTri = in->firstTriIndex;
    out->borders = &cm.borders[in->firstBorderIndex];

    assert(out->firstTri + out->triCount <= cm.triCount);
    assert(out->firstTri >= 0);
    ++index;
    ++in;
    ++out;
  }
}


/*
=================
CMod_LoadVisibility
=================
*/
#define VIS_HEADER  8
void CMod_LoadVisibility(  ) {
    unsigned int len;
    byte    *buf;

    buf = Com_GetBspLump(LUMP_VISIBILITY, 1u, &len);

    if ( !len ) {
	cm.clusterBytes = (( cm.numClusters + 63 ) & ~63) /8;
	cm.numClusters = 1;
	cm.visibility = (byte*)CM_Hunk_Alloc(cm.clusterBytes, "CMod_LoadVisibility");
	Com_Memset( cm.visibility, 0xFF, cm.clusterBytes );
	return;
    }
    cm.vised = qtrue;
    cm.visibility = (byte*)CM_Hunk_Alloc( len - VIS_HEADER, "CMod_LoadVisibility");
    cm.numClusters = ( (int *)buf )[0];
    cm.clusterBytes = ( (int *)buf )[1];

    assertx(len == (unsigned)cm.numClusters * (unsigned)cm.clusterBytes + VIS_HEADER, "%i != %i == %i * %i + %i",
	len, cm.clusterBytes * cm.numClusters + VIS_HEADER, cm.numClusters, cm.clusterBytes, VIS_HEADER);

    Com_Memcpy( cm.visibility, buf + VIS_HEADER, len - VIS_HEADER );
}


struct dplane_t
{
  float normal[3];
  float dist;
};



void __cdecl CMod_LoadPlanes()
{
  cplane_s *out;
  unsigned int planeIter;
  char bits;
  dplane_t *in;
  unsigned int axisIter;
  unsigned int count;

  in = (dplane_t *)Com_GetBspLump(LUMP_PLANES, sizeof(dplane_t), &count);
  if ( !count )
  {
    Com_Error(ERR_DROP, "Map with no planes");
  }
  if ( count > 65536 )
  {
    Com_Error(ERR_DROP, "Number of planes exceeds 65536");
  }
  cm.planes = (cplane_s *)CM_Hunk_Alloc(sizeof(cplane_s) * count, "CMod_LoadPlanes");
  cm.planeCount = count;

  for (planeIter = 0, out = cm.planes ;planeIter < count; ++in, ++out, ++planeIter )
  {
    bits = 0;
    for ( axisIter = 0; axisIter < 3; ++axisIter )
    {
      out->normal[axisIter] = in->normal[axisIter];
      if ( out->normal[axisIter] < 0.0 )
      {
        bits |= 1 << axisIter;
      }
    }
    out->dist = in->dist;
    out->type = PlaneTypeForNormal(out->normal);
    out->signbits = bits;
  }
}

char *__cdecl Com_EntityString(int *numEntityChars)
{
  char *entityString;
  unsigned int count;

  assert(Com_IsBspLoaded());

  entityString = (char*)Com_GetBspLump(LUMP_ENTITIES, sizeof(char), &count);
  if ( numEntityChars )
  {
    *numEntityChars = count;
  }
  return entityString;
}

MapEnts *__cdecl MapEnts_GetFromString(const char *name, const char *entityString, int numEntityChars);

MapEnts *__cdecl MapEnts_RealLoad(const char *name)
{
  int numEntityChars;
  const char *entityString;

  entityString = Com_EntityString(&numEntityChars);
  return MapEnts_GetFromString(name, entityString, numEntityChars);
}

MapEnts *__cdecl MapEnts_VirtualLoad(const char *name)
{
  return MapEnts_RealLoad(name);
}

void CMod_LoadEntityString()
{
  cm.mapEnts = MapEnts_VirtualLoad(cm.name);
}

const char *g_purgeableEnts[ ] =
{
  "misc_model",
  "misc_prefab",
  "dyn_brushmodel",
  "dyn_model",
  "reflection_probe",
  "info_null",
  "func_group"
};

bool __cdecl MapEnts_CanPurgeEntity(const char *classname, void *userData, bool (__cdecl *HasKeyCallback)(void *, const char *))
{
  unsigned int classnameIndex;

  for ( classnameIndex = 0; classnameIndex < 7; ++classnameIndex )
  {
    if ( !Q_stricmp(classname, g_purgeableEnts[classnameIndex]) )
    {
      return true;
    }
  }
  if ( Q_stricmp(classname, "light") )
  {
    return false;
  }
  return HasKeyCallback(userData, "pl#") == 0;
}

bool __cdecl CMod_HasSpawnString(void *userData, const char *key)
{
  const char *value;

  return G_SpawnString((SpawnVar *)userData, key, "", &value) != 0;
}


MapEnts *__cdecl MapEnts_GetFromString(const char *name, const char *entityString, int numEntityChars)
{
  MapEnts *mapEnts;
  SpawnVar spawnVar;
  const char *end;
  int size;
  int nameLen;
  const char *classname;
  const char *begin;

  mapEnts = (MapEnts *)CM_Hunk_Alloc(sizeof(MapEnts), "CMod_LoadEntityString");
  nameLen = strlen(name);
  mapEnts->name = (const char*)CM_Hunk_Alloc(nameLen + 1, "CMod_LoadEntityString");
  memcpy((char*)mapEnts->name, name, nameLen + 1);
  entityString = Com_EntityString(&numEntityChars);
  mapEnts->entityString = (char*)CM_Hunk_Alloc(numEntityChars, "CMod_LoadEntityString");
  mapEnts->numEntityChars = 0;
  G_SetEntityParsePoint(entityString);
  while ( 1 )
  {
    begin = G_GetEntityParsePoint();
    if ( !G_ParseSpawnVars(&spawnVar) )
    {
      break;
    }
    G_SpawnString(&spawnVar, "classname", "", &classname);
    if ( !MapEnts_CanPurgeEntity(classname, &spawnVar, (bool (__cdecl *)(void *, const char *))CMod_HasSpawnString) )
    {
      end = G_GetEntityParsePoint();
      size = end - begin;
      assert(mapEnts->numEntityChars + size <= numEntityChars);
      memcpy(&mapEnts->entityString[mapEnts->numEntityChars], (char *)begin, size);
      mapEnts->numEntityChars += size;
    }
  }
  assert(mapEnts->numEntityChars < numEntityChars);
  mapEnts->entityString[mapEnts->numEntityChars] = 0;
  ++mapEnts->numEntityChars;
  return mapEnts;
}



extern "C" void __cdecl CM_LoadMapFromBsp(const char *name, bool usePvs)
{
  unsigned int version;

  Com_Memset(&cm, 0, sizeof(cm));
  cm.name = (const char*)CM_Hunk_Alloc(strlen(name) + 1, "CM_LoadMapFromBsp");
  strcpy((char*)cm.name, name);
  version = Com_GetBspVersion();
  CMod_LoadMaterials();
  CMod_LoadPlanes();
  CMod_LoadBrushRelated(version, usePvs);
  CMod_LoadNodes();
  CMod_LoadLeafSurfaces();
  CMod_LoadCollisionVerts();
  CMod_LoadCollisionTriangles();
//  CMod_LoadPartitionIndices();
  CMod_LoadCollisionEdgeWalkable();
  CMod_LoadCollisionBorders();
  CMod_LoadCollisionPartitions();
  if ( usePvs )
  {
    CMod_LoadVisibility();
  }
  else if ( Com_BspHasLump(LUMP_VISIBILITY) )
  {
    Com_Error(ERR_DROP, "In single player, do not compile the bsp with visibility");
  }
//  ProfLoad_Begin("Load entity string");
  CMod_LoadEntityString();
//  ProfLoad_End();
}



double __cdecl CMod_GetPartitionScore(uint16_t *leafBrushes, int numLeafBrushes, int axis, const float *mins, const float *maxs, float *dist)
{
  signed int bc;
  float max;
  int rightBrushCount;
  int k;
  cbrush_t *b;
  float min;
  int leftBrushCount;

  rightBrushCount = -1;
  leftBrushCount = -1;
  min = -3.4028235e38;
  max = 3.4028235e38;
  for ( k = 0; k < numLeafBrushes; ++k )
  {
    b = &cm.brushes[leafBrushes[k]];
    if ( b->mins[axis] < *dist )
    {
      if ( *dist >= b->maxs[axis] )
      {
        ++leftBrushCount;
        if ( b->maxs[axis] > min )
        {
          min = b->maxs[axis];
        }
      }
    }
    else
    {
      ++rightBrushCount;
      if ( max > b->mins[axis] )
      {
        max = b->mins[axis];
      }
    }
  }
  assert(min <= *dist);
  assert(*dist <= max);
  if ( rightBrushCount < leftBrushCount )
  {
    bc = rightBrushCount;
  }
  else
  {
    bc = leftBrushCount;
  }
  *dist = (float)(min + max) * 0.5;
  if ( bc <= 0 )
  {
    return 0.0;
  }
  if ( (float)((float)(maxs[axis] - min) - (float)(max - mins[axis])) < 0.0 )
  {
      return bc * (maxs[axis] - min);
  }
  return bc * (max - mins[axis]);
}



cLeafBrushNode_s *__cdecl CMod_PartionLeafBrushes_r(uint16_t *leafBrushes, int numLeafBrushes, const float *mins, const float *maxs)
{
  int nodeOffset;
  cLeafBrushNode_s *node;
  int side;
  float testDist;
  int numLeafBrushesChild;
  unsigned int testAxis;
  int k;
  float dist;
  float range;
  float childMaxs[3];
  cbrush_t *b;
  float bestScore;
  int len;
  float childMins[3];
  cLeafBrushNode_s *childNode;
  uint16_t *leafBrushesCopy;
  cLeafBrushNode_s *returnNode;
  int axis;
  int brushnum;
  float score;

  assert(numLeafBrushes);

  node = CMod_AllocLeafBrushNode();
  bestScore = 0.0;
  axis = -1;
  dist = 0.0;
  for ( testAxis = 0; testAxis < 3; ++testAxis )
  {
    for ( k = 0; k < numLeafBrushes; ++k )
    {
      brushnum = leafBrushes[k];
      b = &cm.brushes[brushnum];
      testDist = b->mins[testAxis];
      score = CMod_GetPartitionScore(leafBrushes, numLeafBrushes, testAxis, mins, maxs, &testDist);
      if ( score > bestScore )
      {
        bestScore = score;
        axis = testAxis;
        dist = testDist;
      }
      testDist = b->maxs[testAxis];
      score = CMod_GetPartitionScore(leafBrushes, numLeafBrushes, testAxis, mins, maxs, &testDist);
      if ( score > bestScore )
      {
        bestScore = score;
        axis = testAxis;
        dist = testDist;
      }
    }
  }
  if ( axis >= 0 )
  {
    len = 2 * numLeafBrushes;
    leafBrushesCopy = (uint16_t *)CM_Hunk_AllocateTempMemoryHigh(2 * numLeafBrushes);
    memcpy((char *)leafBrushesCopy, (char *)leafBrushes, len);
    numLeafBrushesChild = 0;
    for ( k = 0; k < numLeafBrushes; ++k )
    {
      brushnum = leafBrushesCopy[k];
      b = &cm.brushes[brushnum];
      if ( cm.brushes[brushnum].mins[axis] < dist && dist < b->maxs[axis] )
      {
        leafBrushes[numLeafBrushesChild++] = brushnum;
      }
    }
    if ( numLeafBrushesChild )
    {
      returnNode = CMod_PartionLeafBrushes_r(leafBrushes, numLeafBrushesChild, mins, maxs);
      assert(returnNode == node + 1);
      node->leafBrushCount = -1;
      node->contents = returnNode->contents;
      leafBrushes += numLeafBrushesChild;
    }
    range = 3.4028235e38;
    node->axis = axis;
    node->data.children.dist = dist;
    side = 0;
LABEL_36:
    if ( side > 1 )
    {
      node->data.children.range = range;
      return node;
    }
    numLeafBrushesChild = 0;
    for ( k = 0; ; ++k )
    {
      if ( k >= numLeafBrushes )
      {
        assert(numLeafBrushesChild);
        childMins[0] = mins[0];
        childMins[1] = mins[1];
        childMins[2] = mins[2];
        childMaxs[0] = maxs[0];
        childMaxs[1] = maxs[1];
        childMaxs[2] = maxs[2];
        if ( side )
        {
          childMaxs[axis] = dist - range;
        }
        else
        {
          childMins[axis] = dist + range;
        }
        childNode = CMod_PartionLeafBrushes_r(leafBrushes, numLeafBrushesChild, childMins, childMaxs);
        nodeOffset = childNode - node;
        node->data.children.childOffset[side] = nodeOffset;
        if ( node->data.children.childOffset[side] != nodeOffset )
        {
          Com_Error(ERR_DROP, "CMod_PartionLeafBrushes_r: child exceeded");
        }
        node->contents |= childNode->contents;
        leafBrushes += numLeafBrushesChild;
        ++side;
        goto LABEL_36;
      }
      brushnum = leafBrushesCopy[k];
      b = &cm.brushes[brushnum];
      if ( side )
      {
        if ( b->maxs[axis] > dist )
        {
          continue;
        }
        if ( (float)((float)(dist - b->maxs[axis]) - range) < 0.0 )
        {
          range = dist - b->maxs[axis];
        }
      }
      else
      {
        if ( dist > b->mins[axis] )
        {
          continue;
        }
        if ( (float)((float)(b->mins[axis] - dist) - range) < 0.0 )
        {
          range = b->mins[axis] - dist;
        }
      }
      leafBrushes[numLeafBrushesChild++] = brushnum;
    }
  }
  node->leafBrushCount = numLeafBrushes;
  if ( node->leafBrushCount != numLeafBrushes )
  {
    Com_Error(ERR_DROP, "CMod_PartionLeafBrushes_r: leafBrushCount exceeded");
  }
  for ( k = 0; k < numLeafBrushes; ++k )
  {
    brushnum = leafBrushes[k];
    b = &cm.brushes[brushnum];
    node->contents |= cm.brushes[brushnum].contents;
  }
  assert(node->contents);
  node->data.leaf.brushes = leafBrushes;
  return node;
}

//This function generates a hull-box which spans over all given leaf brushes and calls then CMod_PartionLeafBrushes_r()
void __cdecl CMod_PartionLeafBrushes(uint16_t *leafBrushes, int numLeafBrushes, cLeaf_s *leaf)
{
  int j;
  float mins[3];
  int k;
  cbrush_t *b;
  float maxs[3];
  int brushnum;

  if ( numLeafBrushes )
  {
    mins[0] = 3.4028235e38;
    mins[1] = 3.4028235e38;
    mins[2] = 3.4028235e38;
    maxs[0] = -3.4028235e38;
    maxs[1] = -3.4028235e38;
    maxs[2] = -3.4028235e38;
    for ( k = 0; k < numLeafBrushes; ++k )
    {
      brushnum = leafBrushes[k];
      b = &cm.brushes[brushnum];
      for ( j = 0; j < 3; ++j )
      {
        if ( mins[j] > b->mins[j] )
        {
          mins[j] = b->mins[j];
        }
        if ( b->maxs[j] > maxs[j] )
        {
          maxs[j] = b->maxs[j];
        }
      }
    }
    VectorCopy(mins, leaf->mins);
    VectorCopy(maxs, leaf->maxs);
    for ( j = 0; j < 3; ++j )
    {
      leaf->mins[j] = leaf->mins[j] - 0.125;
      leaf->maxs[j] = leaf->maxs[j] + 0.125;
    }
    CM_Hunk_CheckTempMemoryHighClear();
    leaf->leafBrushNode = CMod_PartionLeafBrushes_r(leafBrushes, numLeafBrushes, mins, maxs) - cm.leafbrushNodes;
    CM_Hunk_ClearTempMemoryHigh();
  }
  else
  {
    assert(!leaf->leafBrushNode);
  }
}

