#include "q_shared.h"
#include "qcommon_mem.h"
#include "filesystem.h"
#include <stdbool.h>

unsigned int lumpsForVersion[] = { 41u, 41u, 42u, 43u, 43u, 43u, 43u, 44u, 44u, 44u, 46u, 46u, 47u };

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


struct BspChunk
{
  enum LumpType type;
  unsigned int length;
};



struct BspHeader
{
  unsigned int ident;
  unsigned int version;
  unsigned int chunkCount;
  struct BspChunk chunks[100];
};


typedef struct
{
  char name[64];
  struct BspHeader *header;
  unsigned int fileSize;
  unsigned int checksum;
  enum LumpType loadedLumpType;
  const void *loadedLumpData;
}comBspGlob_t;


comBspGlob_t comBspGlob;

bool __cdecl Com_IsBspLoaded()
{
  return comBspGlob.header != 0;
}

int __cdecl Com_GetBspLumpCountForVersion(const int version)
{
  assert(version >= 6 &&version <= 18);

  return lumpsForVersion[version -6];
}

bool __cdecl Com_CheckVersionLumpCountError(int version)
{
  assert(version >= 6 && version <= 45);

  if ( comBspGlob.header->version > 18 )
  {
    if ( comBspGlob.fileSize < 8 * comBspGlob.header->chunkCount + 12 )
    {
      return true;
    }
  }
  else if ( comBspGlob.fileSize < 8 * Com_GetBspLumpCountForVersion(version) + 8 )
  {
    return true;
  }
  return false;
}

#pragma GCC diagnostic ignored "-Wmultichar"

bool __cdecl Com_BspError()
{
  if ( comBspGlob.header->ident == (uint32_t)'PSBI' && comBspGlob.header->version >= 6 && comBspGlob.header->version <= 45 )
  {
    if(Com_CheckVersionLumpCountError(comBspGlob.header->version) == 0)
    {
        return false;
    }
  }
  return true;
}

void __cdecl Com_LoadBsp(const char *filename)
{
  unsigned int bytesRead;
  unsigned int len;
  int h;

  assert(filename);
  assert(!Com_IsBspLoaded());
  assert(comBspGlob.loadedLumpData == NULL);

  //ProfLoad_Begin("Load bsp file");
  comBspGlob.fileSize = FS_FOpenFileRead(filename, &h);
  if ( !h )
  {
    Com_Error(ERR_DROP, "EXE_ERR_COULDNT_LOAD\x15%s", filename);
  }
  comBspGlob.header = Z_MallocGarbage(comBspGlob.fileSize, "Com_LoadBsp", 11);
  bytesRead = FS_Read(comBspGlob.header, comBspGlob.fileSize, h);
  FS_FCloseFile(h);
  if ( bytesRead != comBspGlob.fileSize )
  {
    Z_Free(comBspGlob.header);
    Com_Error(ERR_DROP, "EXE_ERR_COULDNT_LOAD\x15%s", filename);
  }
  //ProfLoad_Begin("Bsp checksum");
  comBspGlob.checksum = Com_BlockChecksumKey32(comBspGlob.header, comBspGlob.fileSize, 0);
  //ProfLoad_End();
  if ( Com_BspError() )
  {
    Z_Free(comBspGlob.header);
    comBspGlob.header = 0;
    Com_Error(ERR_DROP, "EXE_ERR_WRONG_MAP_VERSION_NUM\x15%s", filename);
  }
  //ProfLoad_End();
  len = strlen(filename);

  assert(len < (sizeof( comBspGlob.name ) / (sizeof( comBspGlob.name[0] ) * (sizeof( comBspGlob.name ) != 4 || sizeof( comBspGlob.name[0] ) <= 4))));

  memcpy(comBspGlob.name, filename, len + 1);

  assert(!Com_IsBspLoaded());

}


byte* __cdecl Com_ValidateBspLumpData(enum LumpType type, unsigned int offset, unsigned int length, unsigned int elemSize, unsigned int *count)
{
  assert( count );

  if ( length )
  {
    if ( length + offset > comBspGlob.fileSize )
    {
      Com_Error(ERR_DROP, "LoadMap: lump %i extends past end of file", type); 
    }
    *count = length / elemSize;
    if ( elemSize * *count != length )
    {
      Com_Error(ERR_DROP, "\x15LoadMap: lump %i has funny size", type);
    }
    return (byte*)comBspGlob.header + offset;
  }
  *count = 0;
  return NULL;
}






byte *__cdecl Com_GetBspLump(enum LumpType type, unsigned int elemSize, unsigned int *count)
{
  unsigned int chunkIter;
  unsigned int offset;

  assert( Com_IsBspLoaded());

  if ( comBspGlob.header->version > 18 )
  {
    offset = 8 * comBspGlob.header->chunkCount + 12;
    for ( chunkIter = 0; chunkIter < comBspGlob.header->chunkCount; ++chunkIter )
    {
      if ( comBspGlob.header->chunks[chunkIter].type == type )
      {
        return Com_ValidateBspLumpData(type, offset, comBspGlob.header->chunks[chunkIter].length, elemSize, count);
      }
      offset += (comBspGlob.header->chunks[chunkIter].length + 3) & 0xFFFFFFFC;
    }
    *count = 0;
    return NULL;
  }
  else if ( type < Com_GetBspLumpCountForVersion(comBspGlob.header->version) )
  {
    return Com_ValidateBspLumpData(type, comBspGlob.header->chunks[type].type, *(&comBspGlob.header->chunkCount + 2 * type), elemSize, count);
  }
  *count = 0;
  return NULL;

}
