#include "q_shared.h"
#include "qcommon_io.h"
#include "sys_thread.h"
#include "misc.h"
#include "cscr_stringlist.h"

#define MEMORY_NODE_BITS 16
#define MEMORY_NODE_COUNT (1 << MEMORY_NODE_BITS)
#define MEMORY_NODE_SIZE 16

const char *mt_type_names[ ] =
{
  "empty",
  "thread",
  "vector",
  "notetrack",
  "anim tree",
  "small anim tree",
  "external",
  "temp",
  "surface",
  "anim part",
  "model part",
  "model part map",
  "duplicate parts",
  "model list",
  "script parse",
  "script string",
  "class",
  "tag info",
  "animscripted",
  "config string",
  "debugger string",
  "vehicle",
  "generic"
  };

class MemoryTree
{
public:
  byte *MT_Alloc(int numBytes, int type);
  void MT_FreeIndex(unsigned int nodeNum, int numBytes);
  void MT_Free(void *p, int numBytes);
  unsigned int MT_AllocIndex(int numBytes, int type);
  void MT_DumpTree( );
  void MT_Init( );
  bool MT_Realloc(int oldNumBytes, int newNumbytes);
  byte* MT_GetRefByIndex(int index);
  int MT_GetIndexByRef(byte* p);

private:
  const char *MT_NodeInfoString(unsigned int nodeNum);
  int MT_GetSubTreeSize(int nodeNum);
  void MT_Error(const char *funcName, int numBytes);
  int MT_GetSize(int numBytes);
  int MT_GetScore(int num);
  void MT_RemoveHeadMemoryNode(int size);
  void MT_AddMemoryNode(int newNode, int size);
  bool MT_RemoveMemoryNode(int oldNode, int size);
  void MT_InitBits( );
  int Scr_GetStringUsage( );

  struct MemoryNode
  {
    uint16_t prev;
    uint16_t next;
    byte padding[MEMORY_NODE_SIZE - 4];
  };

  struct __align(128) scrMemTreeGlob_t
  {
    MemoryNode nodes[MEMORY_NODE_COUNT];
    char leftBits[256];
    char numBits[256];
    char logBits[256];
    uint16_t head[MEMORY_NODE_BITS +1];
    int totalAlloc;
    int totalAllocBuckets;
    int avgAlloc;
    int avgAllocBytes;
  };

  struct scrMemTreeDebugGlob_t
  {
    char mt_usage[MEMORY_NODE_COUNT];
    char mt_usage_size[MEMORY_NODE_COUNT];
  };

  scrMemTreeGlob_t gScrMemTreeGlob;
  scrMemTreeDebugGlob_t gScrMemTreeDebugGlob;


};



const char* MemoryTree::MT_NodeInfoString(unsigned int nodeNum)
{
  int type;
  char string[920];

  type = gScrMemTreeDebugGlob.mt_usage[nodeNum];
  if ( gScrMemTreeDebugGlob.mt_usage[nodeNum] )
  {
    Q_strncpyz(string, SL_ConvertToString(nodeNum), sizeof(string));
    return va("%s: '%s' (%d)", mt_type_names[type], string, gScrMemTreeDebugGlob.mt_usage_size[nodeNum]);
  }
  return "<FREE>";
}


int MemoryTree::MT_GetSubTreeSize(int nodeNum)
{
  int s;

  if ( nodeNum )
  {
    s = MT_GetSubTreeSize(gScrMemTreeGlob.nodes[nodeNum].prev);
    return s + MT_GetSubTreeSize(gScrMemTreeGlob.nodes[nodeNum].next) + 1;
  }
  return 0;
}


void MemoryTree::MT_DumpTree( )
{
  int subTreeSize;
  unsigned int nodeNum;
  int size;
  int totalAllocBuckets;
  int totalAlloc;
  int mt_type_usage[ARRAY_COUNT(mt_type_names)];
  unsigned int type;
  int totalBuckets;

  memset(&mt_type_usage, 0, sizeof(mt_type_usage));
  Com_Printf(CON_CHANNEL_PARSERSCRIPT, "********************************\n");
  totalAlloc = 0;
  totalAllocBuckets = 0;
  for ( nodeNum = 0; nodeNum < MEMORY_NODE_COUNT; ++nodeNum )
  {
    type = gScrMemTreeDebugGlob.mt_usage[nodeNum];
    if ( type )
    {
      Com_Printf(CON_CHANNEL_PARSERSCRIPT, "%s\n", MT_NodeInfoString(nodeNum));
      ++totalAlloc;
      totalAllocBuckets += 1 << gScrMemTreeDebugGlob.mt_usage_size[nodeNum];
      mt_type_usage[type] += 1 << gScrMemTreeDebugGlob.mt_usage_size[nodeNum];
    }
  }

  assert(gScrMemTreeGlob.totalAlloc == totalAlloc);
  assert(gScrMemTreeGlob.totalAllocBuckets == totalAllocBuckets);

  Com_Printf(CON_CHANNEL_PARSERSCRIPT, "********************************\n");
  totalBuckets = gScrMemTreeGlob.totalAllocBuckets;
  for ( size = 0; size <= MEMORY_NODE_BITS; ++size )
  {
    subTreeSize = MT_GetSubTreeSize(gScrMemTreeGlob.head[size]);
    totalBuckets += subTreeSize * (1 << size);
    Com_Printf(CON_CHANNEL_PARSERSCRIPT, "%d subtree has %d * %d = %d free buckets\n", size, subTreeSize, 1 << size, subTreeSize * (1 << size));
  }
  Com_Printf(CON_CHANNEL_PARSERSCRIPT, "********************************\n");
  for ( type = 1; type < ARRAY_COUNT(mt_type_names); ++type )
  {
    Com_Printf(CON_CHANNEL_PARSERSCRIPT, "'%s' allocated: %d\n", mt_type_names[type], mt_type_usage[type]);
  }
  Com_Printf(CON_CHANNEL_PARSERSCRIPT, "********************************\n");
  Com_Printf(CON_CHANNEL_PARSERSCRIPT, "total memory alloc buckets: %d (%d instances)\n", gScrMemTreeGlob.totalAllocBuckets, gScrMemTreeGlob.totalAlloc);
  Com_Printf(CON_CHANNEL_PARSERSCRIPT, "total memory free buckets: %d\n", MEMORY_NODE_COUNT -1 - gScrMemTreeGlob.totalAllocBuckets);
  Com_Printf(CON_CHANNEL_PARSERSCRIPT, "********************************\n");
  Com_Printf(CON_CHANNEL_PARSERSCRIPT, "avg alloc: %f\n", (float)gScrMemTreeGlob.avgAllocBytes / (float)gScrMemTreeGlob.avgAlloc);

  assert(totalBuckets == MEMORY_NODE_COUNT - 1);
}


void MemoryTree::MT_Error(const char *funcName, int numBytes)
{
  MT_DumpTree();
  Com_Printf(CON_CHANNEL_PARSERSCRIPT, "%s: failed memory allocation of %d bytes for script usage\n", funcName, numBytes);
  /*if ( Sys_IsServerThread() )
  {
    Scr_TerminalError("failed memory allocation for script usage");
  }
  else*/
  {
    Com_Error(ERR_DROP, "%s: failed allocation of %d bytes for script usage", funcName, numBytes);
  }
}

int MemoryTree::MT_GetSize(int numBytes)
{
  int numBuckets;

  assert (numBytes > 0);
  if ( numBytes >= MEMORY_NODE_COUNT )
  {
    MT_Error("MT_GetSize: max allocation exceeded", numBytes);
    return 0;
  }
  numBuckets = (numBytes + MEMORY_NODE_SIZE -1) / MEMORY_NODE_SIZE -1;
  if ( numBuckets > 255 )
  {
      return gScrMemTreeGlob.logBits[numBuckets >> 8] + 8;
  }
  return gScrMemTreeGlob.logBits[numBuckets];
}


int MemoryTree::MT_GetScore(int num)
{
  char bits;

  assert(num != 0);

  union MTnum_t
  {
    int i;
    uint8_t b[4];
  };

  MTnum_t mtnum;

  mtnum.i = MEMORY_NODE_COUNT - num;
  assert(mtnum.i != 0);

  bits = gScrMemTreeGlob.leftBits[mtnum.b[0]];
  if ( !mtnum.b[0] )
  {
    bits += gScrMemTreeGlob.leftBits[mtnum.b[1]];
  }
  return mtnum.i - (gScrMemTreeGlob.numBits[mtnum.b[1]] + gScrMemTreeGlob.numBits[mtnum.b[0]]) + (1 << bits);
}



void MemoryTree::MT_RemoveHeadMemoryNode(int size)
{
  MemoryNode tempNodeValue;
  int oldNode;
  MemoryNode oldNodeValue;
  uint16_t *parentNode;
  int prevScore;
  int nextScore;

  assert(size >= 0 && size <= MEMORY_NODE_BITS);

  parentNode = &gScrMemTreeGlob.head[size];
  oldNodeValue = gScrMemTreeGlob.nodes[*parentNode];

  while ( 1 )
  {
    if(!oldNodeValue.prev)
    {
        oldNode = oldNodeValue.next;
        *parentNode = oldNodeValue.next;
        if ( !oldNode )
        {
            break;
        }
        parentNode = &gScrMemTreeGlob.nodes[oldNode].next;
    }else{
        if ( oldNodeValue.next )
        {
            prevScore = MT_GetScore(oldNodeValue.prev);
            nextScore = MT_GetScore(oldNodeValue.next);

            assert(prevScore != nextScore);

            if ( prevScore >= nextScore )
            {
                oldNode = oldNodeValue.prev;
                *parentNode = oldNode;
                parentNode = &gScrMemTreeGlob.nodes[oldNode].prev;
            }
            else
            {
                oldNode = oldNodeValue.next;
                *parentNode = oldNode;
                parentNode = &gScrMemTreeGlob.nodes[oldNode].next;
            }
        }
        else
        {
            oldNode = oldNodeValue.prev;
            *parentNode = oldNode;
            parentNode = &gScrMemTreeGlob.nodes[oldNode].prev;
        }
    }
    assert(oldNode != 0);

    tempNodeValue = oldNodeValue;
    oldNodeValue = gScrMemTreeGlob.nodes[oldNode];
    gScrMemTreeGlob.nodes[oldNode] = tempNodeValue;
  }

}


void MemoryTree::MT_AddMemoryNode(int newNode, int size)
{
  int node;
  int nodeNum;
  int newScore;
  uint16_t *parentNode;
  int level;
  int score;

  assert(size >= 0 && size <= MEMORY_NODE_BITS);

  parentNode = &gScrMemTreeGlob.head[size];
  node = gScrMemTreeGlob.head[size];
  if ( gScrMemTreeGlob.head[size] )
  {
    newScore = MT_GetScore(newNode);
    nodeNum = 0;
    level = MEMORY_NODE_COUNT;
    do
    {
        assert(newNode != node);
        score = MT_GetScore(node);

        assert(score != newScore);

        if ( score < newScore )
        {
            while ( 1 )
            {
                assert(node == *parentNode);
                assert(node != newNode);

                *parentNode = newNode;
                gScrMemTreeGlob.nodes[newNode] = gScrMemTreeGlob.nodes[node];
                if ( !node )
                {
                    break;
                }
                level >>= 1;

                assert(node != nodeNum);

                if ( node >= nodeNum )
                {
                    parentNode = &gScrMemTreeGlob.nodes[newNode].next;
                    nodeNum += level;
                }
                else
                {
                    parentNode = &gScrMemTreeGlob.nodes[newNode].prev;
                    nodeNum -= level;
                }
                newNode = node;
                node = *parentNode;
            }
            return;
        }
        level >>= 1;

        assert(newNode != nodeNum);

        if ( newNode >= nodeNum )
        {
            parentNode = &gScrMemTreeGlob.nodes[node].next;
            nodeNum += level;
        }
        else
        {
            parentNode = &gScrMemTreeGlob.nodes[node].prev;
            nodeNum -= level;
        }
        node = *parentNode;
    }while(node);
  }
  *parentNode = newNode;
  gScrMemTreeGlob.nodes[newNode].prev = 0;
  gScrMemTreeGlob.nodes[newNode].next = 0;

}



bool MemoryTree::MT_RemoveMemoryNode(int oldNode, int size)
{
  MemoryNode tempNodeValue;
  int node;
  MemoryNode oldNodeValue;
  int nodeNum;
  uint16_t *parentNode;
  int prevScore;
  int nextScore;
  int level;

  assert(size >= 0 && size <= MEMORY_NODE_BITS);

  nodeNum = 0;
  level = MEMORY_NODE_COUNT;
  parentNode = &gScrMemTreeGlob.head[size];
  for ( node = *parentNode; node; node = *parentNode )
  {
    if ( oldNode == node )
    {
      oldNodeValue = gScrMemTreeGlob.nodes[oldNode];

      while ( 1 )
      {
        if ( oldNodeValue.prev )
        {
          if ( oldNodeValue.next )
          {
            prevScore = MT_GetScore(oldNodeValue.prev);
            nextScore = MT_GetScore(oldNodeValue.next);
            
            assert(prevScore != nextScore);

            if ( prevScore >= nextScore )
            {
              oldNode = oldNodeValue.prev;
              *parentNode = oldNodeValue.prev;
              parentNode = &gScrMemTreeGlob.nodes[oldNodeValue.prev].prev;
            }
            else
            {
              oldNode = oldNodeValue.next;
              *parentNode = oldNodeValue.next;
              parentNode = &gScrMemTreeGlob.nodes[oldNodeValue.next].next;
            }
          }
          else
          {
            oldNode = oldNodeValue.prev;
            *parentNode = oldNodeValue.prev;
            parentNode = &gScrMemTreeGlob.nodes[oldNodeValue.prev].prev;
          }
        }
        else
        {
          oldNode = oldNodeValue.next;
          *parentNode = oldNodeValue.next;
          if ( !oldNodeValue.next )
          {
            return true;
          }
          parentNode = &gScrMemTreeGlob.nodes[oldNodeValue.next].next;
        }

        assert(oldNode != 0);

        tempNodeValue = oldNodeValue;
        oldNodeValue = gScrMemTreeGlob.nodes[oldNode];
        gScrMemTreeGlob.nodes[oldNode] = tempNodeValue;
      }
    }
    if ( oldNode == nodeNum )
    {
      return false;
    }
    level >>= 1;
    if ( oldNode >= nodeNum )
    {
      parentNode = &gScrMemTreeGlob.nodes[node].next;
      nodeNum += level;
    }
    else
    {
      parentNode = &gScrMemTreeGlob.nodes[node].prev;
      nodeNum -= level;
    }
  }
  return false;
}


unsigned int MemoryTree::MT_AllocIndex(int numBytes, int type)
{
  int nodeNum;
  int size;
  signed int newSize;

  size = MT_GetSize(numBytes);
  assert(size >= 0 && size <= MEMORY_NODE_BITS);

  Sys_EnterCriticalSection(CRITSECT_MEMORY_TREE);
  for ( newSize = size; ; ++newSize )
  {
    if ( newSize > MEMORY_NODE_BITS )
    {
      Sys_LeaveCriticalSection(CRITSECT_MEMORY_TREE);
      MT_Error("MT_AllocIndex", numBytes);
      return 0;
    }
    nodeNum = gScrMemTreeGlob.head[newSize];
    if ( gScrMemTreeGlob.head[newSize] )
    {
      break;
    }
  }
  MT_RemoveHeadMemoryNode(newSize);
  while ( newSize != size )
  {
    --newSize;
    MT_AddMemoryNode(nodeNum + (1 << newSize), newSize);
  }
  assert(nodeNum >= 0 && nodeNum < MEMORY_NODE_COUNT);

  ++gScrMemTreeGlob.totalAlloc;
  ++gScrMemTreeGlob.avgAlloc;
  gScrMemTreeGlob.avgAllocBytes += numBytes;
  gScrMemTreeGlob.totalAllocBuckets += 1 << size;

  assert(type != 0);
  assertx( !gScrMemTreeDebugGlob.mt_usage[nodeNum], "MT_NodeInfoString( nodeNum ) = %s", MT_NodeInfoString(nodeNum));
  assertx( !gScrMemTreeDebugGlob.mt_usage_size[nodeNum], "MT_NodeInfoString( nodeNum ) = %s", MT_NodeInfoString(nodeNum));

  gScrMemTreeDebugGlob.mt_usage[nodeNum] = type;
  gScrMemTreeDebugGlob.mt_usage_size[nodeNum] = size;
  Sys_LeaveCriticalSection(CRITSECT_MEMORY_TREE);

  return nodeNum;
}




void MemoryTree::MT_InitBits( )
{
  char bits;
  int temp;
  int i;

  for ( i = 0; i < 256; ++i )
  {
    bits = 0;
    for ( temp = i; temp; temp >>= 1 )
    {
      if ( temp & 1 )
      {
        ++bits;
      }
    }
    gScrMemTreeGlob.numBits[i] = bits;
    for ( bits = 8; i & ((1 << bits) - 1); --bits )
    {
      ;
    }
    gScrMemTreeGlob.leftBits[i] = bits;
    bits = 0;
    for ( temp = i; temp; temp >>= 1 )
    {
      ++bits;
    }
    gScrMemTreeGlob.logBits[i] = bits;
  }
}

void MemoryTree::MT_Init( )
{
  int i;

  Sys_EnterCriticalSection(CRITSECT_MEMORY_TREE);
  MT_InitBits();
  for ( i = 0; i <= MEMORY_NODE_BITS; ++i )
  {
    gScrMemTreeGlob.head[i] = 0;
  }
  gScrMemTreeGlob.nodes[0].prev = 0;
  gScrMemTreeGlob.nodes[0].next = 0;
  for ( i = 0; i < MEMORY_NODE_BITS; ++i )
  {
    MT_AddMemoryNode(1 << i, i);
  }
  gScrMemTreeGlob.totalAlloc = 0;
  gScrMemTreeGlob.totalAllocBuckets = 0;
  memset(gScrMemTreeDebugGlob.mt_usage, 0, MEMORY_NODE_COUNT);
  memset(gScrMemTreeDebugGlob.mt_usage_size, 0, MEMORY_NODE_COUNT);
  Sys_LeaveCriticalSection(CRITSECT_MEMORY_TREE);
}


int MemoryTree::Scr_GetStringUsage( )
{
  return gScrMemTreeGlob.totalAllocBuckets;
}


void MemoryTree::MT_FreeIndex(unsigned int nodeNum, int numBytes)
{
  int size;
  int lowBit;

  size = MT_GetSize(numBytes);

  assert(size >= 0 && size <= MEMORY_NODE_BITS);
  assert(nodeNum > 0 && nodeNum < MEMORY_NODE_COUNT);

  Sys_EnterCriticalSection(CRITSECT_MEMORY_TREE);
  --gScrMemTreeGlob.totalAlloc;
  gScrMemTreeGlob.totalAllocBuckets -= 1 << size;

  assert(gScrMemTreeDebugGlob.mt_usage[nodeNum]);
  assertx(gScrMemTreeDebugGlob.mt_usage_size[nodeNum] == size, "(MT_NodeInfoString( nodeNum )) = %s", MT_NodeInfoString(nodeNum));

  gScrMemTreeDebugGlob.mt_usage[nodeNum] = 0;
  gScrMemTreeDebugGlob.mt_usage_size[nodeNum] = 0;
  while ( 1 )
  {
    assert(size <= MEMORY_NODE_BITS);

    lowBit = 1 << size;

    assert(nodeNum == (nodeNum & ~(lowBit - 1)));

    if ( size == MEMORY_NODE_BITS || !MT_RemoveMemoryNode(lowBit ^ nodeNum, size) )
    {
      break;
    }
    nodeNum &= ~lowBit;
    ++size;
  }
  MT_AddMemoryNode(nodeNum, size);
  Sys_LeaveCriticalSection(CRITSECT_MEMORY_TREE);
}

byte* MemoryTree::MT_Alloc(int numBytes, int type)
{
  return (byte*)&gScrMemTreeGlob.nodes[MT_AllocIndex(numBytes, type)];
}


bool MemoryTree::MT_Realloc(int oldNumBytes, int newNumbytes)
{
  return MT_GetSize(oldNumBytes) >= MT_GetSize(newNumbytes);
}

void MemoryTree::MT_Free(void *p, int numBytes)
{
  assertx((MemoryNode *) p - gScrMemTreeGlob.nodes >= 0 && (MemoryNode *) p - gScrMemTreeGlob.nodes < MEMORY_NODE_COUNT, 
            "(MemoryNode *) p - gScrMemTreeGlob.nodes = %i", (MemoryNode *) p - gScrMemTreeGlob.nodes);

  MT_FreeIndex((MemoryNode *) p - gScrMemTreeGlob.nodes, numBytes);
}

byte* MemoryTree::MT_GetRefByIndex(int index)
{
    if(index > MEMORY_NODE_COUNT)
    {
        MT_Error("MT_GetRefByIndex: out of bounds index", index);
        return NULL;
    }
    return (byte*)&gScrMemTreeGlob.nodes[index];
}

int MemoryTree::MT_GetIndexByRef(byte* p)
{
    int index = (MemoryNode *) p - gScrMemTreeGlob.nodes;
    if(index < 0 || index >= MEMORY_NODE_COUNT)
    {
        MT_Error("MT_GetIndexByRef: out of bounds ref", index);
        return 0;
    }
    return index;
}


static class MemoryTree mt;

extern "C"{

void __cdecl MT_DumpTree( )
{
    mt.MT_DumpTree();
}

void MT_Init()
{
    mt.MT_Init();
}

bool MT_Realloc(int oldNumBytes, int newNumbytes)
{
    return mt.MT_Realloc(oldNumBytes, newNumbytes);
}

byte *__cdecl MT_Alloc(int numBytes, int type)
{
  return mt.MT_Alloc(numBytes, type);
}

void __cdecl MT_Free(void *p, int numBytes)
{
  mt.MT_Free(p, numBytes);
}

};



byte* MT_GetRefByIndex(int index)
{
    return mt.MT_GetRefByIndex(index);
}

int MT_GetIndexByRef(byte* p)
{
    return mt.MT_GetIndexByRef(p);
}

void __cdecl MT_FreeIndex(unsigned int nodeNum, int numBytes)
{
  mt.MT_FreeIndex(nodeNum, numBytes);
}

unsigned int __cdecl MT_AllocIndex(int numBytes, int type)
{
	return mt.MT_AllocIndex(numBytes, type);
}
