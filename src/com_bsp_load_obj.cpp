#include "q_shared.h"
#include "qcommon_mem.h"
#include "filesystem.h"
#include "cm_local.h"
#include <stdbool.h>

unsigned int lumpsForVersion[] = { 41u, 41u, 42u, 43u, 43u, 43u, 43u, 44u, 44u, 44u, 46u, 46u, 47u };

struct BspChunk
{
  enum LumpType type;
  unsigned int length;
};



typedef struct BspHeader
{
  unsigned int ident;
  unsigned int version;
  unsigned int chunkCount;
  struct BspChunk chunks[100];
} BspHeader;


typedef struct comBspGlob_t
{
  char name[64];
  BspHeader *header;
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
  assert(version >= 6 && version <= 18);

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
  comBspGlob.header = (BspHeader*)Z_MallocGarbage(comBspGlob.fileSize, "Com_LoadBsp", 11);
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

  assert(Com_IsBspLoaded());

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


unsigned int __cdecl Com_GetBspVersion()
{
  assert(Com_IsBspLoaded());

  return comBspGlob.header->version;
}

bool __cdecl Com_BspHasLump(enum LumpType type)
{
  unsigned int count;
  Com_GetBspLump(type, 1u, &count);
  return count != 0;
}

