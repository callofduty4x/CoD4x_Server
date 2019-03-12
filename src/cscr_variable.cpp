#include <ctype.h>
#include "q_shared.h"
#include "misc.h"
#include "scr_vm.h"
#include "cscr_stringlist.h"
#include "qcommon_mem.h"
#include "cscr_parser.h"
#include "mem_track.h"
#include "physicalmemory.h"
#include "cscr_animtree.h"
#include "xassets.h"
#include "xassets/rawfile.h"
#include "cscr_variable.h"

#define VAR_STAT_MASK 0x60
#define VAR_MASK 0x1F
#define VAR_STAT_FREE 0
#define VAR_STAT_MOVABLE 32
#define VAR_STAT_HEAD 64
#define IsObject(var) ((var->w.type & VAR_MASK) >= VAR_THREAD)
#define IsObjectVal(var) ((var->type & VAR_MASK) >= VAR_THREAD)
#define VAR_TYPE(var) (var->w.type & VAR_MASK)
#define VARIABLELIST_CHILD_BEGIN 0x8002
#define VARIABLELIST_PARENT_BEGIN 0x1
#define VAR_STAT_EXTERNAL 96
//#define VAR_NAME_LOW_MASK 0x00FFFFFF
#define VAR_NAME_HIGH_MASK 0xFFFFFF00
#define VARIABLELIST_CHILD_SIZE 0xFFFE
#define VARIABLELIST_PARENT_SIZE 0x8000
#define CLASS_NUM_COUNT sizeof(gScrClassMap)/sizeof(gScrClassMap[0])
#define UNK_ENTNUM_MASK 0x3FFF
#define SL_MAX_STRING_INDEX 0x10000
#define MAX_ARRAYINDEX 0x800000
#define VAR_ARRAYINDEXSTART 0x800000
#define VAR_NAME_BITS 8
#define SCR_GET_ENTITY_FROM_ENTCLIENT(entcl) (entcl & UNK_ENTNUM_MASK)
//#define SCR_GET_CLIENT_FROM_ENTCLIENT(entcl) ((uint16_t)(entcl >> 14))
#define MAX_LOCAL_CENTITIES 1536
//#define OBJECT_STACK 0x17FFFu //But for CoD4?
#define OBJECT_STACK 0x18001u

#define FIRST_OBJECT VAR_THREAD
#define FIRST_NONFIELD_OBJECT VAR_ARRAY
#define FIRST_DEAD_OBJECT VAR_DEAD_THREAD


const char *var_typename[] =
{
        "undefined",
        "object",
        "string",
        "localized string",
        "vector",
        "float",
        "int",
        "codepos",
        "precodepos",
        "function",
        "stack",
        "animation",
        "developer codepos",
        "include codepos",
        "thread",
        "thread",
        "thread",
        "thread",
        "struct",
        "removed entity",
        "entity",
        "array",
        "removed thread"
};


struct __attribute__((aligned (64))) scrVarGlob_t
{
  VariableValueInternal* variableList;
};

struct scrVarDebugPub_t *gScrVarDebugPub = NULL;

#ifndef NDEBUG
struct scrVarDebugPub_t gScrVarDebugPubBuff;
#endif

struct scrVarGlob_t gScrVarGlob;
scrVarPub_t gScrVarPub;


struct scr_classStruct_t
{
  uint16_t id;
  uint16_t entArrayId;
  char charId;
  const char *name;
};

struct scr_classStruct_t gScrClassMap[] =
{
  { 0u, 0u, 'e', "entity" },
  { 0u, 0u, 'h', "hudelem" },
  { 0u, 0u, 'p', "pathnode" },
  { 0u, 0u, 'v', "vehiclenode" },
  { 0u, 0u, 'd', "dynentity" }
};


static void SetEmptyArray(unsigned int parentId)
{
  VariableValue tempValue;

  tempValue.type = VAR_POINTER;
  tempValue.u.pointerValue = Scr_AllocArray();
  SetVariableValue(parentId, &tempValue);
}

struct ThreadDebugInfo
{
  const char *pos[32];
  int posSize;
  float varUsage;
  float endonUsage;
};

static int ThreadInfoCompare(const void *ainfo1, const void *ainfo2)
{
  const char *pos1;
  int i;
  const char *pos2;
  ThreadDebugInfo *info1, *info2;
  info1 = (ThreadDebugInfo *)ainfo1;
  info2 = (ThreadDebugInfo *)ainfo2;

  for ( i = 0; ; ++i )
  {
    if ( i >= info1->posSize || i >= info2->posSize )
    {
      return info1->posSize - info2->posSize;
    }
    pos1 = info1->pos[i];
    pos2 = info2->pos[i];
    if ( pos1 != pos2 )
    {
      break;
    }
  }
  return pos1 - pos2;
}



extern "C" double __regparm1 Scr_GetObjectUsage(unsigned int parentId);


double Scr_GetEntryUsage(unsigned int type, VariableUnion u)
{
  VariableValueInternal *parentValue;

  if ( type != VAR_POINTER )
  {
    return 0.0;
  }
  parentValue = &gScrVarGlob.variableList[u.intValue + VARIABLELIST_PARENT_BEGIN];

  assert((parentValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE);
  assert(IsObject( parentValue ));

  if ( VAR_TYPE(parentValue) != VAR_ARRAY )
  {
    return 0.0;
  }
  return Scr_GetObjectUsage(u.stringValue) / ((double)parentValue->u.o.refCount + 1.0);
}

double Scr_GetEntryUsage(VariableValueInternal *entryValue)
{
  return Scr_GetEntryUsage(VAR_TYPE(entryValue), entryValue->u.u) + 1.0;
}


extern "C"{

VariableValue __cdecl Scr_GetArrayIndexValue(unsigned int name)
{
  VariableValue value;

  assert(name != 0); 

  if ( name >= SL_MAX_STRING_INDEX )
  {
    if ( name >= 0x17FFE )
    {
      value.type = VAR_INTEGER;
      value.u.intValue = name - 0x800000;
    }
    else
    {
      value.type = VAR_POINTER;
      value.u.intValue = name - SL_MAX_STRING_INDEX;
    }
  }
  else
  {
    value.type = VAR_STRING;
    value.u.intValue = (uint16_t)name;
  }
  return value;
}

void __regparm2 MakeVariableExternal(unsigned int index, VariableValueInternal *parentValue)
{
  VariableValue var;
//  VariableValueInternal tempEntry;
  VariableValueInternal *entry;
  unsigned int oldPrevSiblingIndex;
  unsigned int nextSiblingIndex;
  unsigned int prevSiblingIndex;
  unsigned int oldIndex;
  VariableValueInternal *entryValue;
  VariableValueInternal *oldEntry;
  Variable *prev;
  unsigned int oldNextSiblingIndex;
  VariableValueInternal *oldEntryValue;

  entry = &gScrVarGlob.variableList[index + VARIABLELIST_CHILD_BEGIN];
  entryValue = &gScrVarGlob.variableList[entry->hash.id + VARIABLELIST_CHILD_BEGIN];

  assert((entryValue->w.status & VAR_STAT_MASK) == VAR_STAT_MOVABLE || (entryValue->w.status & VAR_STAT_MASK) == VAR_STAT_HEAD);
  assert((entryValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE);
  assert(!IsObject( entryValue ));

  if ( VAR_TYPE(parentValue) == VAR_ARRAY )
  {
    --parentValue->u.o.u.size;

    assert((entryValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE);
    assert(!IsObject( entryValue ));

    var = Scr_GetArrayIndexValue(entryValue->w.classnum >> VAR_NAME_BITS);
    RemoveRefToValue(var.type, var.u);
  }

  if ( (entryValue->w.status & VAR_STAT_MASK) == VAR_STAT_HEAD )
  {
    oldIndex = entryValue->v.next;
    oldEntry = &gScrVarGlob.variableList[oldIndex + VARIABLELIST_CHILD_BEGIN];
    oldEntryValue = &gScrVarGlob.variableList[oldEntry->hash.id + VARIABLELIST_CHILD_BEGIN];
    if ( oldEntry != entry )
    {

      assert((oldEntryValue->w.status & VAR_STAT_MASK) == VAR_STAT_MOVABLE);

      oldEntryValue->w.status &= ~VAR_STAT_MASK;
      oldEntryValue->w.status |= VAR_STAT_HEAD;
      prevSiblingIndex = entry->hash.u.prevSibling;
      nextSiblingIndex = entryValue->nextSibling;
      oldPrevSiblingIndex = oldEntry->hash.u.prevSibling;
      oldNextSiblingIndex = oldEntryValue->nextSibling;
      if ( oldNextSiblingIndex )
      {
        gScrVarGlob.variableList[oldNextSiblingIndex + VARIABLELIST_CHILD_BEGIN].hash.u.prev = index;
      }
      if ( oldPrevSiblingIndex )
      {
        gScrVarGlob.variableList[gScrVarGlob.variableList[oldPrevSiblingIndex + VARIABLELIST_CHILD_BEGIN].hash.id + VARIABLELIST_CHILD_BEGIN].nextSibling = index;
      }
      if ( nextSiblingIndex )
      {
        gScrVarGlob.variableList[nextSiblingIndex + VARIABLELIST_CHILD_BEGIN].hash.u.prev = oldIndex;
      }
      if ( prevSiblingIndex )
      {
        gScrVarGlob.variableList[gScrVarGlob.variableList[prevSiblingIndex + VARIABLELIST_CHILD_BEGIN].hash.id + VARIABLELIST_CHILD_BEGIN].nextSibling = oldIndex;
      }
      Variable tempEntry = entry->hash;
      entry->hash = oldEntry->hash;
      oldEntry->hash = tempEntry;

      entry = oldEntry;
      index = oldIndex;
    }
  }
  else
  {
    oldEntry = entry;
    oldEntryValue = entryValue;
    do
    {
      assert((oldEntryValue->w.status & VAR_STAT_MASK) == VAR_STAT_MOVABLE || (oldEntryValue->w.status & VAR_STAT_MASK) == VAR_STAT_HEAD);
      prev = &oldEntry->hash;
      oldEntry = &gScrVarGlob.variableList[oldEntryValue->v.next + VARIABLELIST_CHILD_BEGIN];
      oldEntryValue = &gScrVarGlob.variableList[oldEntry->hash.id + VARIABLELIST_CHILD_BEGIN];
    }
    while ( oldEntry != entry );
    gScrVarGlob.variableList[prev->id + VARIABLELIST_CHILD_BEGIN].v.next = entryValue->v.next;
  }
  assert(entryValue == &gScrVarGlob.variableList[VARIABLELIST_CHILD_BEGIN + entry->hash.id]);

  entryValue->w.status &= ~VAR_STAT_MASK;
  entryValue->w.status |= VAR_STAT_HEAD;
  entryValue->w.status |= VAR_STAT_EXTERNAL;
  entryValue->v.next = index;
}


unsigned int __cdecl FindVariableIndexInternal2(unsigned int name, unsigned int index)
{
  Variable *entry;
  unsigned int newIndex;
  VariableValueInternal *list;
  VariableValueInternal *entryValue;
  VariableValueInternal *newEntryValue;
  Variable *newEntry;

  list = gScrVarGlob.variableList + VARIABLELIST_CHILD_BEGIN;
  assert(!(name & ~VAR_NAME_LOW_MASK));

  assertx(index < VARIABLELIST_CHILD_SIZE, "index doesn't index VARIABLELIST_CHILD_SIZE - %i not in [0, %i]", index, VARIABLELIST_CHILD_SIZE);


  entry = &list[index].hash;
  assertx( entry->id < VARIABLELIST_CHILD_SIZE, "entry->id doesn't index VARIABLELIST_CHILD_SIZE - %i not in [0, %i]", entry->id, VARIABLELIST_CHILD_SIZE);

  entryValue = &list[entry->id];
  if ( (entryValue->w.status & VAR_STAT_MASK) == VAR_STAT_HEAD )
  {
    assert((entryValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE);
    assert(!IsObject( entryValue ));

    if ( entryValue->w.classnum >> VAR_NAME_BITS == name )
    {
      return index;
    }

    newIndex = entryValue->v.next;
    for ( newEntry = &list[newIndex].hash; newEntry != entry; newEntry = &list[newIndex].hash )
    {
      newEntryValue = &list[newEntry->id];
      assert((newEntryValue->w.status & VAR_STAT_MASK) == VAR_STAT_MOVABLE);
      assert((entryValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE);
      assert(!IsObject( newEntryValue ));

      if ( newEntryValue->w.classnum >> VAR_NAME_BITS == name )
      {
        return newIndex;
      }
      newIndex = newEntryValue->v.next;
    }
  }
  return 0;
}


unsigned int __cdecl FindVariableIndexInternal(unsigned int parentId, unsigned int name)
{
  VariableValueInternal *parentValue;

  assert(parentId != 0);

  parentValue = &gScrVarGlob.variableList[parentId + VARIABLELIST_PARENT_BEGIN];

  assert((parentValue->w.status & VAR_STAT_MASK) == VAR_STAT_EXTERNAL);

  assert(IsObject( parentValue ));
  return FindVariableIndexInternal2(name, (parentId + 101 * name) % (VARIABLELIST_CHILD_SIZE -1) + 1);
}

void __cdecl FreeChildValue(unsigned int parentId, unsigned int id)
{
  Variable *entry;
  unsigned int nextSiblingIndex;
  unsigned int prevSiblingIndex;
  unsigned int parentIndex;
  VariableValueInternal *entryValue;
  unsigned int index;

  entryValue = &gScrVarGlob.variableList[id + VARIABLELIST_CHILD_BEGIN];

  assert((entryValue->w.status & VAR_STAT_MASK) == VAR_STAT_EXTERNAL);
  assert((entryValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE);
  assert(!IsObject( entryValue ));
  assert(gScrVarGlob.variableList[VARIABLELIST_CHILD_BEGIN + entryValue->v.index].hash.id == id);

  RemoveRefToValue(VAR_TYPE(entryValue), entryValue->u.u);

  assert(id > 0 && id < VARIABLELIST_CHILD_SIZE);
  --gScrVarPub.totalObjectRefCount;

  if ( gScrVarDebugPub )
  {
    assert(gScrVarDebugPub->leakCount[VARIABLELIST_CHILD_BEGIN + id]);

    --gScrVarDebugPub->leakCount[id + VARIABLELIST_CHILD_BEGIN];

    assert(!gScrVarDebugPub->leakCount[VARIABLELIST_CHILD_BEGIN + id]);
  }
  --gScrVarPub.numScriptValues;
  if ( gScrVarDebugPub )
  {
    //assert(gScrVarDebugPub->varUsage[VARIABLELIST_CHILD_BEGIN + id]);
    gScrVarDebugPub->varUsage[id + VARIABLELIST_CHILD_BEGIN] = 0;
  }
  assert((entryValue->w.status & VAR_STAT_MASK) == VAR_STAT_EXTERNAL);

  index = entryValue->v.next;
  entry = &gScrVarGlob.variableList[index + VARIABLELIST_CHILD_BEGIN].hash;

  assert(entry->id == id);

  nextSiblingIndex = entryValue->nextSibling;
  prevSiblingIndex = entry->u.prev;
  if ( prevSiblingIndex )
  {
    gScrVarGlob.variableList[gScrVarGlob.variableList[prevSiblingIndex + VARIABLELIST_CHILD_BEGIN].hash.id + VARIABLELIST_CHILD_BEGIN].nextSibling = nextSiblingIndex;
  }
  else
  {
    assert(!gScrVarGlob.variableList[VARIABLELIST_CHILD_BEGIN].hash.id);
    gScrVarGlob.variableList[parentId + 1].nextSibling = gScrVarGlob.variableList[nextSiblingIndex + VARIABLELIST_CHILD_BEGIN].hash.id;
  }
  if ( nextSiblingIndex )
  {
    gScrVarGlob.variableList[nextSiblingIndex + VARIABLELIST_CHILD_BEGIN].hash.u.prev = prevSiblingIndex;
  }
  else
  {
    parentIndex = gScrVarGlob.variableList[parentId + VARIABLELIST_PARENT_BEGIN].v.next;
    assert(!gScrVarGlob.variableList[VARIABLELIST_CHILD_BEGIN].hash.id);
    gScrVarGlob.variableList[parentIndex + VARIABLELIST_PARENT_BEGIN].hash.u.prev = gScrVarGlob.variableList[prevSiblingIndex + VARIABLELIST_CHILD_BEGIN].hash.id;
  }
  entryValue->w.status = 0;
  entryValue->u.next = gScrVarGlob.variableList[VARIABLELIST_CHILD_BEGIN].u.next;
  entry->u.prev = 0;
  gScrVarGlob.variableList[gScrVarGlob.variableList[VARIABLELIST_CHILD_BEGIN].u.next + VARIABLELIST_CHILD_BEGIN].hash.u.prev = index;
  gScrVarGlob.variableList[VARIABLELIST_CHILD_BEGIN].u.next = index;
}

void ClearObjectInternal(unsigned int parentId)
{
  unsigned int id;
  unsigned int savedNextId;
  unsigned int nextId;
  unsigned int nextSibling;
  VariableValueInternal *parentValue;
  VariableValueInternal *entryValue;

  parentValue = &gScrVarGlob.variableList[parentId + VARIABLELIST_PARENT_BEGIN];

  assert((parentValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE);
  assert(IsObject( parentValue ));

  if ( parentValue->nextSibling )
  {
    entryValue = &gScrVarGlob.variableList[parentValue->nextSibling + VARIABLELIST_CHILD_BEGIN];
    assert((entryValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE);
    assert(!IsObject( entryValue ));

    nextSibling = FindVariableIndexInternal(parentId, entryValue->w.classnum >> VAR_NAME_BITS);

    assert(nextSibling != 0);

    do
    {
      id = gScrVarGlob.variableList[nextSibling + VARIABLELIST_CHILD_BEGIN].hash.id;
      MakeVariableExternal(nextSibling, parentValue);
      nextSibling = gScrVarGlob.variableList[id + VARIABLELIST_CHILD_BEGIN].nextSibling;
    }
    while ( nextSibling );
    nextId = parentValue->nextSibling;
    do
    {
      savedNextId = nextId;
      nextSibling = gScrVarGlob.variableList[nextId + VARIABLELIST_CHILD_BEGIN].nextSibling;
      nextId = gScrVarGlob.variableList[nextSibling + VARIABLELIST_CHILD_BEGIN].hash.id;
      FreeChildValue(parentId, savedNextId);
    }
    while ( nextSibling );
  }
}

void __cdecl AddRefToObject(unsigned int id)
{
  VariableValueInternal *entryValue;

  assert(id >= 1 && id < VARIABLELIST_PARENT_SIZE);

  ++gScrVarPub.totalObjectRefCount;
  if ( gScrVarDebugPub )
  {
    assert(gScrVarDebugPub->leakCount[VARIABLELIST_PARENT_BEGIN + id]);

    ++gScrVarDebugPub->leakCount[id + VARIABLELIST_PARENT_BEGIN];
  }
  assert((gScrVarGlob.variableList[VARIABLELIST_PARENT_BEGIN + id].w.status & VAR_STAT_MASK) != VAR_STAT_FREE);

  entryValue = &gScrVarGlob.variableList[id + VARIABLELIST_PARENT_BEGIN];

  assert((entryValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE);

  assert(IsObject( entryValue ));
  ++entryValue->u.o.refCount;
  assert(entryValue->u.o.refCount > 0);
}

void __cdecl FreeVariable(unsigned int id)
{
  Variable *entry;
  VariableValueInternal *entryValue;
  unsigned int index;

  assert(id > 0 && id < VARIABLELIST_PARENT_SIZE);

  --gScrVarPub.totalObjectRefCount;

  if ( gScrVarDebugPub )
  {
    assert(gScrVarDebugPub->leakCount[VARIABLELIST_PARENT_BEGIN + id]);
    --gScrVarDebugPub->leakCount[id + VARIABLELIST_PARENT_BEGIN];

    assert(!gScrVarDebugPub->leakCount[VARIABLELIST_PARENT_BEGIN + id]);
  }
  --gScrVarPub.numScriptObjects;
  if ( gScrVarDebugPub )
  {
    //assert(gScrVarDebugPub->varUsage[VARIABLELIST_PARENT_BEGIN + id]);
    gScrVarDebugPub->varUsage[id + VARIABLELIST_PARENT_BEGIN] = 0;
  }
  entryValue = &gScrVarGlob.variableList[id + VARIABLELIST_PARENT_BEGIN];

  assert((entryValue->w.status & VAR_STAT_MASK) == VAR_STAT_EXTERNAL);

  index = entryValue->v.next;
  entry = &gScrVarGlob.variableList[index + VARIABLELIST_PARENT_BEGIN].hash;

  assert(entry->id == id);
  assert(!entry->u.prevSibling);
  assert(!entryValue->nextSibling);

  entryValue->w.status = 0;
  entryValue->u.next = gScrVarGlob.variableList[VARIABLELIST_PARENT_BEGIN].u.next;
  entry->u.prev = 0;
  gScrVarGlob.variableList[gScrVarGlob.variableList[VARIABLELIST_PARENT_BEGIN].u.next + VARIABLELIST_PARENT_BEGIN].hash.u.prev = index;
  gScrVarGlob.variableList[VARIABLELIST_PARENT_BEGIN].u.next = index;
}


void __cdecl RemoveRefToEmptyObject(unsigned int id)
{
  VariableValueInternal *entryValue;

  entryValue = &gScrVarGlob.variableList[id + VARIABLELIST_PARENT_BEGIN];

  assert((entryValue->w.status & VAR_STAT_MASK) == VAR_STAT_EXTERNAL);
  assert((entryValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE);
  assert(IsObject( entryValue ));
  assert(!entryValue->nextSibling);

  if ( entryValue->u.o.refCount )
  {
    assert(id >= 1 && id < VARIABLELIST_PARENT_SIZE);
    --gScrVarPub.totalObjectRefCount;
    if ( gScrVarDebugPub )
    {
      assert(gScrVarDebugPub->leakCount[VARIABLELIST_PARENT_BEGIN + id]);
      --gScrVarDebugPub->leakCount[id + VARIABLELIST_PARENT_BEGIN];
    }
    --entryValue->u.o.refCount;
  }
  else
  {
    FreeVariable(id);
  }
}

void __cdecl ClearObject(unsigned int parentId)
{
  assert((gScrVarGlob.variableList[VARIABLELIST_PARENT_BEGIN + parentId].w.status & VAR_STAT_MASK) != VAR_STAT_FREE);
  AddRefToObject(parentId);
  ClearObjectInternal(parentId);
  RemoveRefToEmptyObject(parentId);
}



unsigned int __cdecl AllocVariable()
{
  VariableValueInternal *entry;
  unsigned int newIndex;
  unsigned int next;
  unsigned int index;
  VariableValueInternal *entryValue;

  index = gScrVarGlob.variableList[VARIABLELIST_PARENT_BEGIN].u.next;
  if ( !index )
  {
    Scr_TerminalError("exceeded maximum number of script variables");
  }
  entry = &gScrVarGlob.variableList[index + VARIABLELIST_PARENT_BEGIN];
  entryValue = &gScrVarGlob.variableList[entry->hash.id + VARIABLELIST_PARENT_BEGIN];
  assert((entryValue->w.status & VAR_STAT_MASK) == VAR_STAT_FREE);

  next = entryValue->u.next;
  if ( entry != entryValue && !(entry->w.status & VAR_STAT_MASK) )
  {
    newIndex = entry->v.next;
    assert(newIndex != index);

    gScrVarGlob.variableList[newIndex + VARIABLELIST_PARENT_BEGIN].hash.id = entry->hash.id;
    entry->hash.id = index;
    entryValue->v.next = newIndex;
    entryValue->u.next = entry->u.next;
    entryValue = entry;
  }
  gScrVarGlob.variableList[VARIABLELIST_PARENT_BEGIN].u.next = next;
  gScrVarGlob.variableList[next + VARIABLELIST_PARENT_BEGIN].hash.u.prev = 0;
  entryValue->v.next = index;
  entryValue->nextSibling = 0;
  entry->hash.u.prev = 0;
  
  assert(entry->hash.id > 0 && entry->hash.id < VARIABLELIST_PARENT_SIZE);

  ++gScrVarPub.totalObjectRefCount;
  if ( gScrVarDebugPub )
  {
    assert(!gScrVarDebugPub->leakCount[VARIABLELIST_PARENT_BEGIN + entry->hash.id]);
    ++gScrVarDebugPub->leakCount[entry->hash.id + VARIABLELIST_PARENT_BEGIN];
  }
  ++gScrVarPub.numScriptObjects;
//  assert(gScrVarPub.varUsagePos != NULL);

  if ( gScrVarDebugPub )
  {
    //assert(!gScrVarDebugPub->varUsage[VARIABLELIST_PARENT_BEGIN + entry->hash.id]);
    gScrVarDebugPub->varUsage[entry->hash.id + VARIABLELIST_PARENT_BEGIN] = gScrVarPub.varUsagePos;
  }
  return entry->hash.id;
}

unsigned int __cdecl AllocObject()
{
  VariableValueInternal *entryValue;
  unsigned int id;

  id = AllocVariable();
  entryValue = &gScrVarGlob.variableList[id + VARIABLELIST_PARENT_BEGIN];
  entryValue->w.status = VAR_STAT_EXTERNAL;

  assert( VAR_TYPE(entryValue) == VAR_UNDEFINED );

  entryValue->w.type |= VAR_OBJECT;
  entryValue->u.o.refCount = 0;
  return id;
}

unsigned int AllocEntity(unsigned int classnum, uint16_t entnum)
{
  VariableValueInternal *entryValue;
  unsigned int id;

  id = AllocVariable();
  entryValue = &gScrVarGlob.variableList[id + VARIABLELIST_PARENT_BEGIN];
  entryValue->w.status = VAR_STAT_EXTERNAL;

  assert(VAR_TYPE(entryValue) == VAR_UNDEFINED);

  entryValue->w.type |= VAR_ENTITY;
  assert(!(entryValue->w.classnum & VAR_NAME_HIGH_MASK));

  entryValue->w.classnum |= classnum << VAR_NAME_BITS;
  entryValue->u.o.refCount = 0;
  entryValue->u.o.u.entnum = entnum;
  return id;
}


bool __cdecl IsValidArrayIndex(unsigned int unsignedValue)
{
  return unsignedValue < MAX_ARRAYINDEX;
}

void __cdecl AddRefToValue(int type, VariableUnion u)
{
  unsigned int value;

  value = type - 1;
  if ( (unsigned int)value < VAR_END_REF - VAR_BEGIN_REF )
  {
    if ( value == VAR_POINTER - VAR_BEGIN_REF)
    {
      AddRefToObject(u.stringValue);
    }
    else if ( value >= VAR_VECTOR - VAR_BEGIN_REF )
    {
      assert(value == VAR_VECTOR - VAR_BEGIN_REF);
      AddRefToVector(u.vectorValue);
    }
    else
    {
      SL_AddRefToString(u.stringValue);
    }
  }
}

unsigned int __regparm3 GetNewVariableIndexInternal3(unsigned int parentId, unsigned int name, unsigned int index)
{
  VariableValueInternal *oldEntryValue;
  unsigned int id;
  VariableValue varValue;
  VariableValueInternal *parentValue;
  VariableValueInternal *entry;
  unsigned int newIndex;
  unsigned int prevId;
  unsigned int nextSiblingIndex;
  unsigned int prevSiblingIndex;
  unsigned int next;
  VariableValueInternal *entryValue;
  unsigned int prev;
  VariableValueInternal *newEntryValue;
  int type;
  VariableValueInternal *newEntry;

  assert(!(name & ~VAR_NAME_LOW_MASK));

  entry = &gScrVarGlob.variableList[index + VARIABLELIST_CHILD_BEGIN];
  entryValue = &gScrVarGlob.variableList[entry->hash.id + VARIABLELIST_CHILD_BEGIN];
  type = entryValue->w.status & VAR_STAT_MASK;
  if ( type )
  {
    if ( type == VAR_STAT_HEAD )
    {
      if ( entry->w.status & VAR_STAT_MASK )
      {
        index = gScrVarGlob.variableList[VARIABLELIST_CHILD_BEGIN].u.next;
        if ( !index )
        {
          Scr_TerminalError("exceeded maximum number of script variables");
        }
        assert(index > 0 && index < VARIABLELIST_CHILD_SIZE);

        entry = &gScrVarGlob.variableList[index + VARIABLELIST_CHILD_BEGIN];
        newEntryValue = &gScrVarGlob.variableList[entry->hash.id + VARIABLELIST_CHILD_BEGIN];

        assert((newEntryValue->w.status & VAR_STAT_MASK) == VAR_STAT_FREE);

        gScrVarGlob.variableList[VARIABLELIST_CHILD_BEGIN].u.next = newEntryValue->u.next;
        gScrVarGlob.variableList[newEntryValue->u.next + VARIABLELIST_CHILD_BEGIN].hash.u.prev = 0;
        newEntryValue->w.status = VAR_STAT_MOVABLE;
        newEntryValue->v.next = entryValue->v.next;
        entryValue->v.next = index;
      }
      else
      {
        oldEntryValue = &gScrVarGlob.variableList[entry->v.next + VARIABLELIST_CHILD_BEGIN];
        newEntryValue = &gScrVarGlob.variableList[index + VARIABLELIST_CHILD_BEGIN];
        gScrVarGlob.variableList[gScrVarGlob.variableList[oldEntryValue->hash.u.prev + VARIABLELIST_CHILD_BEGIN].hash.id + VARIABLELIST_CHILD_BEGIN].u.next = entry->u.next;
        gScrVarGlob.variableList[entry->u.next + VARIABLELIST_CHILD_BEGIN].hash.u.prev = oldEntryValue->hash.u.prev;
        oldEntryValue->hash.id = entry->hash.id;
        entry->hash.id = index;
        oldEntryValue->hash.u.prev = entry->hash.u.prev;
        gScrVarGlob.variableList[gScrVarGlob.variableList[oldEntryValue->hash.u.prev + VARIABLELIST_CHILD_BEGIN].hash.id + VARIABLELIST_CHILD_BEGIN].nextSibling = entry->v.next;
        gScrVarGlob.variableList[entryValue->nextSibling + VARIABLELIST_CHILD_BEGIN].hash.u.prev = entry->v.next;
        entryValue->w.status &= ~VAR_STAT_MASK;
        entryValue->w.status |= VAR_STAT_MOVABLE;
        entry->w.status = VAR_STAT_HEAD;
      }
    }
    else
    {
      assert(type == VAR_STAT_MOVABLE || type == VAR_STAT_EXTERNAL);

      if ( entry->w.status & VAR_STAT_MASK )
      {
        newIndex = gScrVarGlob.variableList[VARIABLELIST_CHILD_BEGIN].u.next;
        if ( !newIndex )
        {
          Scr_TerminalError("exceeded maximum number of script variables");
        }
        newEntry = &gScrVarGlob.variableList[newIndex + VARIABLELIST_CHILD_BEGIN];
        newEntryValue = &gScrVarGlob.variableList[newEntry->hash.id + VARIABLELIST_CHILD_BEGIN];
        assert((newEntryValue->w.status & VAR_STAT_MASK) == VAR_STAT_FREE);

        gScrVarGlob.variableList[VARIABLELIST_CHILD_BEGIN].u.next = newEntryValue->u.next;
        gScrVarGlob.variableList[newEntryValue->u.next + VARIABLELIST_CHILD_BEGIN].hash.u.prev = 0;
      }
      else
      {
        assert(entry != entryValue);

        newIndex = entry->v.next;
        newEntry = &gScrVarGlob.variableList[newIndex + VARIABLELIST_CHILD_BEGIN];
        newEntryValue = entry;
        gScrVarGlob.variableList[gScrVarGlob.variableList[newEntry->hash.u.prev + VARIABLELIST_CHILD_BEGIN].hash.id + VARIABLELIST_CHILD_BEGIN].u.next = entry->u.next;
        gScrVarGlob.variableList[entry->u.next + VARIABLELIST_CHILD_BEGIN].hash.u.prev = newEntry->hash.u.prev;
      }
      prevSiblingIndex = entry->hash.u.prev;
      if ( prevSiblingIndex )
      {
        gScrVarGlob.variableList[gScrVarGlob.variableList[prevSiblingIndex + VARIABLELIST_CHILD_BEGIN].hash.id + VARIABLELIST_CHILD_BEGIN].nextSibling = newIndex;
      }
      nextSiblingIndex = entryValue->nextSibling;
      if ( nextSiblingIndex )
      {
        gScrVarGlob.variableList[nextSiblingIndex + VARIABLELIST_CHILD_BEGIN].hash.u.prev = newIndex;
      }
      if ( type == VAR_STAT_MOVABLE )
      {
        prevId = gScrVarGlob.variableList[entryValue->v.next + VARIABLELIST_CHILD_BEGIN].hash.id;

        assert((gScrVarGlob.variableList[VARIABLELIST_CHILD_BEGIN + prevId].w.status & VAR_STAT_MASK) == VAR_STAT_MOVABLE || (gScrVarGlob.variableList[VARIABLELIST_CHILD_BEGIN + prevId].w.status & VAR_STAT_MASK) == VAR_STAT_HEAD);

        while ( gScrVarGlob.variableList[prevId + VARIABLELIST_CHILD_BEGIN].v.next != index )
        {
          prevId = gScrVarGlob.variableList[gScrVarGlob.variableList[prevId + VARIABLELIST_CHILD_BEGIN].v.next + VARIABLELIST_CHILD_BEGIN].hash.id;
          assert((gScrVarGlob.variableList[VARIABLELIST_CHILD_BEGIN + prevId].w.status & VAR_STAT_MASK) == VAR_STAT_MOVABLE || (gScrVarGlob.variableList[VARIABLELIST_CHILD_BEGIN + prevId].w.status & VAR_STAT_MASK) == VAR_STAT_HEAD);
        }
        gScrVarGlob.variableList[prevId + VARIABLELIST_CHILD_BEGIN].v.next = newIndex;
      }
      else
      {
        assert(type == VAR_STAT_EXTERNAL);
        entryValue->v.next = newIndex;
      }
      newEntry->hash.u.prev = entry->hash.u.prev;
      id = newEntry->hash.id;
      newEntry->hash.id = entry->hash.id;
      entry->hash.id = id;
      newEntryValue->w.status = VAR_STAT_HEAD;
      newEntryValue->v.next = index;
    }
  }
  else
  {
    newIndex = entry->v.next;
    next = entryValue->u.next;
    if ( newIndex == entry->hash.id || entry->w.status & VAR_STAT_MASK )
    {
      newEntryValue = &gScrVarGlob.variableList[entry->hash.id + VARIABLELIST_CHILD_BEGIN];
    }
    else
    {
      gScrVarGlob.variableList[newIndex + VARIABLELIST_CHILD_BEGIN].hash.id = entry->hash.id;
      entry->hash.id = index;
      entryValue->v.next = newIndex;
      entryValue->u.next = entry->u.next;
      newEntryValue = entry;
    }
    prev = entry->hash.u.prev;

    assertx(!gScrVarGlob.variableList[VARIABLELIST_CHILD_BEGIN + prev].hash.id || (gScrVarGlob.variableList[VARIABLELIST_CHILD_BEGIN+ gScrVarGlob.variableList[VARIABLELIST_CHILD_BEGIN+ prev].hash.id].w.status & VAR_STAT_MASK) == VAR_STAT_FREE, 
              va("%d, %d, %d", prev, gScrVarGlob.variableList[prev + VARIABLELIST_CHILD_BEGIN].hash.id,
               gScrVarGlob.variableList[gScrVarGlob.variableList[prev + VARIABLELIST_CHILD_BEGIN].hash.id + VARIABLELIST_CHILD_BEGIN].w.status & VAR_STAT_MASK) );

    gScrVarGlob.variableList[gScrVarGlob.variableList[prev + VARIABLELIST_CHILD_BEGIN].hash.id + VARIABLELIST_CHILD_BEGIN].u.next = next;
    gScrVarGlob.variableList[next + VARIABLELIST_CHILD_BEGIN].hash.u.prev = prev;
    newEntryValue->w.status = VAR_STAT_HEAD;
    newEntryValue->v.next = index;
  }
  assert(entry == &gScrVarGlob.variableList[VARIABLELIST_CHILD_BEGIN + index]);
  assert(newEntryValue == &gScrVarGlob.variableList[VARIABLELIST_CHILD_BEGIN + entry->hash.id]);
  assert(VAR_TYPE(newEntryValue) == VAR_UNDEFINED);

  newEntryValue->w.status &= ~VAR_NAME_HIGH_MASK;
  newEntryValue->w.status |= (name << VAR_NAME_BITS);
  assert(entry->hash.id > 0 && entry->hash.id < VARIABLELIST_CHILD_SIZE);

  ++gScrVarPub.totalObjectRefCount;
  if ( gScrVarDebugPub )
  {
    assert(!gScrVarDebugPub->leakCount[VARIABLELIST_CHILD_BEGIN + entry->hash.id]);
    ++gScrVarDebugPub->leakCount[entry->hash.id + VARIABLELIST_CHILD_BEGIN];
  }
  ++gScrVarPub.numScriptValues;
  //assert(gScrVarPub.varUsagePos);
  if ( gScrVarDebugPub )
  {
    //assert(!gScrVarDebugPub->varUsage[VARIABLELIST_CHILD_BEGIN + entry->hash.id]);
    gScrVarDebugPub->varUsage[entry->hash.id + VARIABLELIST_CHILD_BEGIN] = gScrVarPub.varUsagePos;
  }
  parentValue = &gScrVarGlob.variableList[parentId + VARIABLELIST_PARENT_BEGIN];

  assert((parentValue->w.status & VAR_STAT_MASK) == VAR_STAT_EXTERNAL);
  assert((parentValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE);
  assert(IsObject( parentValue ));

  if ( VAR_TYPE(parentValue) == VAR_ARRAY )
  {
    ++parentValue->u.o.u.entnum;
    varValue = Scr_GetArrayIndexValue(name);
    AddRefToValue(varValue.type, varValue.u);
  }
  return index;
}


unsigned int __cdecl GetNewVariableIndexInternal2(unsigned int parentId, unsigned int name, unsigned int index)
{
  unsigned int siblingId;
  VariableValueInternal *parentValue;
  VariableValueInternal *entry;
  VariableValueInternal *siblingValue;
  unsigned int siblingIndex;
  unsigned int id;

  index = GetNewVariableIndexInternal3(parentId, name, index);
  parentValue = &gScrVarGlob.variableList[parentId + VARIABLELIST_PARENT_BEGIN];

  assert((parentValue->w.status & VAR_STAT_MASK) == VAR_STAT_EXTERNAL);

  entry = &gScrVarGlob.variableList[index + VARIABLELIST_CHILD_BEGIN];
  id = entry->hash.id;
  siblingId = parentValue->nextSibling;
  if ( siblingId )
  {
    siblingValue = &gScrVarGlob.variableList[siblingId + VARIABLELIST_CHILD_BEGIN];

    assert((siblingValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE);
    assert(!IsObject( siblingValue ));

    siblingIndex = FindVariableIndexInternal(parentId, siblingValue->w.classnum >> VAR_NAME_BITS);

    assert(siblingIndex != 0);

    gScrVarGlob.variableList[siblingIndex + VARIABLELIST_CHILD_BEGIN].hash.u.prev = index;
  }
  else
  {
    siblingIndex = 0;
    gScrVarGlob.variableList[parentValue->v.next + VARIABLELIST_PARENT_BEGIN].hash.u.prev = id;
  }
  parentValue->nextSibling = id;
  entry->hash.u.prev = 0;
  gScrVarGlob.variableList[id + VARIABLELIST_CHILD_BEGIN].nextSibling = siblingIndex;
  return index;
}


unsigned int __cdecl GetVariableIndexInternal(unsigned int parentId, unsigned int name)
{
  VariableValueInternal *parentValue; 
  unsigned int newIndex;
  unsigned int index;

  assert(parentId != 0);

  parentValue = &gScrVarGlob.variableList[parentId + VARIABLELIST_PARENT_BEGIN];

  assert((parentValue->w.status & VAR_STAT_MASK) == VAR_STAT_EXTERNAL);
  assert((parentValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE);
  assert(IsObject( parentValue ));

  index = (parentId + name * 101) % (VARIABLELIST_CHILD_SIZE -1) + 1;
  newIndex = FindVariableIndexInternal2(name, index);
  if ( newIndex )
  {
    return newIndex;
  }
  return GetNewVariableIndexInternal2(parentId, name, index);
}


unsigned int __cdecl GetArrayVariableIndex(unsigned int parentId, unsigned int unsignedValue)
{
  assert(IsValidArrayIndex( unsignedValue ));
  return GetVariableIndexInternal(parentId, (unsignedValue + MAX_ARRAYINDEX) & VAR_NAME_LOW_MASK);
}

unsigned int __cdecl GetArrayVariable(unsigned int parentId, unsigned int unsignedValue)
{
  return gScrVarGlob.variableList[GetArrayVariableIndex(parentId, unsignedValue) + VARIABLELIST_CHILD_BEGIN].hash.id;
}

unsigned int __cdecl Scr_GetEntityId(int entnum, unsigned int classnum)
{
  unsigned int entArrayId;
  uint16_t actualEntNum;
  VariableValueInternal *entryValue;
  unsigned int entId;
  unsigned int id;

  actualEntNum = entnum;

  assert((unsigned)entnum < (1 << 16));

  entArrayId = gScrClassMap[classnum].entArrayId;
  assert(entArrayId != 0);

  id = GetArrayVariable(entArrayId, entnum);

  assert(id != 0);
  entryValue = &gScrVarGlob.variableList[id + VARIABLELIST_CHILD_BEGIN];
  
  assert((entryValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE);
  

  if ( VAR_TYPE(entryValue) != VAR_UNDEFINED )
  {
    assert(VAR_TYPE(entryValue) == VAR_POINTER);
    return entryValue->u.u.intValue;
  }

  entId = AllocEntity(classnum, actualEntNum);
  assert ( VAR_TYPE(entryValue) == VAR_UNDEFINED );
  entryValue->w.type |= VAR_POINTER;
  entryValue->u.u.intValue = entId;
  return entId;
}

unsigned int __cdecl Scr_AllocArray( )
{
  const char *varUsagePos;
  VariableValueInternal *entryValue;
  unsigned int id;

  varUsagePos = gScrVarPub.varUsagePos;
  if ( !gScrVarPub.varUsagePos )
  {
    gScrVarPub.varUsagePos = "<script array variable>";
  }
  id = AllocVariable();
  entryValue = &gScrVarGlob.variableList[id + VARIABLELIST_PARENT_BEGIN];
  entryValue->w.status = VAR_STAT_EXTERNAL;
  assert(VAR_TYPE(entryValue) == VAR_UNDEFINED);

  entryValue->w.type |= VAR_ARRAY;
  entryValue->u.o.refCount = 0;
  entryValue->u.o.u.entnum = 0;
  gScrVarPub.varUsagePos = varUsagePos;
  return id;
}

unsigned int __cdecl AllocThread(unsigned int self)
{
  VariableValueInternal *entryValue;
  unsigned int id;

  id = AllocVariable();
  entryValue = &gScrVarGlob.variableList[id + VARIABLELIST_PARENT_BEGIN];
  entryValue->w.status = VAR_STAT_EXTERNAL;

  assert(VAR_TYPE(entryValue) == VAR_UNDEFINED);

  entryValue->w.type |= VAR_THREAD;
  entryValue->u.o.refCount = 0;
  entryValue->u.o.u.self = self;
  return id;
}


unsigned int __cdecl AllocChildThread(unsigned int self, unsigned int parentLocalId)
{
  VariableValueInternal *entryValue;
  unsigned int id;

  id = AllocVariable();
  entryValue = &gScrVarGlob.variableList[id + VARIABLELIST_PARENT_BEGIN];
  entryValue->w.status = VAR_STAT_EXTERNAL;
  assert(VAR_TYPE(entryValue) == VAR_UNDEFINED);

  entryValue->w.type |= VAR_CHILD_THREAD;
  assert(!(entryValue->w.parentLocalId & VAR_NAME_HIGH_MASK));

  entryValue->w.classnum |= parentLocalId << VAR_NAME_BITS;
  entryValue->u.o.refCount = 0;
  entryValue->u.o.u.self = self;
  return id;
}

void Scr_SetClassMap(unsigned int classnum)
{
  assert(!gScrClassMap[classnum].entArrayId);
  assert(!gScrClassMap[classnum].id);

  gScrClassMap[classnum].entArrayId = Scr_AllocArray();
  if ( gScrVarDebugPub )
  {
    ++gScrVarDebugPub->extRefCount[gScrClassMap[classnum].entArrayId];
  }
  gScrClassMap[classnum].id = Scr_AllocArray();
  if ( gScrVarDebugPub )
  {
    ++gScrVarDebugPub->extRefCount[gScrClassMap[classnum].id];
  }
}

unsigned int GetArray(unsigned int id)
{
  VariableValueInternal *entryValue;

  assert(id != 0);

  entryValue = &gScrVarGlob.variableList[id + VARIABLELIST_CHILD_BEGIN];

  assert((entryValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE);
  assert(VAR_TYPE(entryValue) == VAR_UNDEFINED || VAR_TYPE(entryValue) == VAR_POINTER);

  if (VAR_TYPE(entryValue) == VAR_UNDEFINED)
  {
    entryValue->w.type |= VAR_POINTER;
    entryValue->u.u.pointerValue = Scr_AllocArray( );
  }
  assert(VAR_TYPE(entryValue) == VAR_POINTER);
  return entryValue->u.u.pointerValue;
}



unsigned int __cdecl SGetObjectA(unsigned int id)
{
  VariableValueInternal *entryValue;

  assert(id != 0);

  entryValue = &gScrVarGlob.variableList[id + VARIABLELIST_CHILD_BEGIN];
  assert((entryValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE);
  assert(VAR_TYPE(entryValue) == VAR_UNDEFINED || VAR_TYPE(entryValue) == VAR_POINTER);


  if ( VAR_TYPE(entryValue) == VAR_UNDEFINED )
  {
    entryValue->w.type |= VAR_POINTER;
    entryValue->u.u.pointerValue = AllocObject();
  }
  assert(VAR_TYPE(entryValue) == VAR_POINTER);
  return entryValue->u.u.pointerValue;
}


void __regparm2 CopyArray(unsigned int parentId, unsigned int newParentId)
{
  unsigned int nextSibling;
  VariableValueInternal *parentValue;
  VariableValueInternal *entryValue;
  int type;
  VariableValueInternal *newEntryValue;
  unsigned int id;

  parentValue = &gScrVarGlob.variableList[parentId + VARIABLELIST_PARENT_BEGIN];

  assert((parentValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE);
  assert(IsObject( parentValue ));
  assert(VAR_TYPE(parentValue) == VAR_ARRAY);

  id = gScrVarGlob.variableList[parentId + VARIABLELIST_PARENT_BEGIN].nextSibling;
  if ( id )
  {
    while ( 1 )
    {
      entryValue = &gScrVarGlob.variableList[id + VARIABLELIST_CHILD_BEGIN];
      type = VAR_TYPE(entryValue);
      
      assert((entryValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE);
      assert(!IsObject( entryValue ));

      newEntryValue = &gScrVarGlob.variableList[gScrVarGlob.variableList[GetVariableIndexInternal(newParentId, entryValue->w.classnum >> VAR_NAME_BITS) + VARIABLELIST_CHILD_BEGIN].hash.id + VARIABLELIST_CHILD_BEGIN];

      assert(VAR_TYPE(newEntryValue) == VAR_UNDEFINED);

      newEntryValue->w.status |= type;
      if ( type == VAR_POINTER )
      {
        if ( VAR_TYPE((&gScrVarGlob.variableList[entryValue->u.u.pointerValue + VARIABLELIST_PARENT_BEGIN])) == VAR_ARRAY )
        {
          newEntryValue->u.u.pointerValue = Scr_AllocArray();
          CopyArray(entryValue->u.u.pointerValue, newEntryValue->u.u.pointerValue);
        }
        else
        {
          newEntryValue->u.u.pointerValue = entryValue->u.u.pointerValue;
          AddRefToObject(entryValue->u.u.pointerValue);
        }
      }
      else
      {
        assert(type != VAR_STACK);
        newEntryValue->u.u.pointerValue = entryValue->u.u.pointerValue;
        newEntryValue->u.o.u.nextEntId = entryValue->u.o.u.nextEntId;
        AddRefToValue(type, entryValue->u.u);
      }
      nextSibling = gScrVarGlob.variableList[id + VARIABLELIST_CHILD_BEGIN].nextSibling;
      if ( !nextSibling )
      {
        break;
      }
      id = gScrVarGlob.variableList[nextSibling + VARIABLELIST_CHILD_BEGIN].hash.id;
      assert(id != 0);
    }
  }
}

unsigned int __cdecl FindArrayVariableIndex(unsigned int parentId, unsigned int unsignedValue)
{
  assert(IsValidArrayIndex( unsignedValue ));

  return FindVariableIndexInternal(parentId, (unsignedValue + VAR_ARRAYINDEXSTART) & VAR_NAME_LOW_MASK);
}

unsigned int __cdecl FindArrayVariable(unsigned int parentId, int intValue)
{
  return gScrVarGlob.variableList[FindArrayVariableIndex(parentId, intValue) + VARIABLELIST_CHILD_BEGIN].hash.id;
}

VariableValue __cdecl Scr_EvalVariableEntityField(unsigned int entId, unsigned int fieldName)
{
  VariableValueInternal *entValue;
  unsigned int fieldId; 
  VariableValue value;

  entValue = &gScrVarGlob.variableList[entId + VARIABLELIST_PARENT_BEGIN];
  assert(VAR_TYPE(entValue) == VAR_ENTITY);
  assert((entValue->w.classnum >> VAR_NAME_BITS) < CLASS_NUM_COUNT);

  fieldId = FindArrayVariable(gScrClassMap[entValue->w.classnum >> VAR_NAME_BITS].id, fieldName);
  if ( fieldId )
  {
    value = GetEntityFieldValue(
                       entValue->w.classnum >> VAR_NAME_BITS,
                       entValue->u.o.u.entnum & UNK_ENTNUM_MASK,
                       gScrVarGlob.variableList[fieldId + VARIABLELIST_CHILD_BEGIN].u.u.intValue);
/*
    if ( value.type == 1 )
    {
      v5 = gScrVarGlob.variableList[value.intValue + 1].w.status & 0x1F == 0x14;
    }
*/
    return value;
  }
  value.u.intValue = 0;
  value.type = VAR_UNDEFINED;
  return value;
}

VariableValue Scr_EvalVariable(unsigned int id)
{
  VariableValueInternal *entryValue;
  VariableValue value;

  entryValue = &gScrVarGlob.variableList[id + VARIABLELIST_CHILD_BEGIN];
  assert(((entryValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE) || !id);
  value.type = VAR_TYPE(entryValue);
  value.u.intValue = entryValue->u.u.intValue;
  assert(!IsObject( entryValue ));

  AddRefToValue(value.type, value.u);
  return value;
}

//Fix for weird GNU-GCC ABI
#if defined( __GNUC__ ) && !defined( __MINGW32__ )
//For Linux
__asm__(/* Scr_EvalVariable ABI Wrapper */
"Scr_EvalVariableExtern:\n"
".globl Scr_EvalVariableExtern\n"
"push %ebp\n"
"mov %esp, %ebp\n"
"sub $0x18, %esp\n" //reserve Stack space

"push 0x8(%ebp)\n" //id
"lea -0x14(%ebp), %eax\n"
"push %eax\n" //hidden pointer for struct

"call Scr_EvalVariable\n"

"add $0x4, %esp\n" //1st argument stdcall (No add) 2nd argument cdecl (add 4), makes sense, right?

"mov -0x14(%ebp), %eax\n"
"mov -0x10(%ebp), %edx\n"

"add $0x18, %esp\n"
"pop %ebp\n"
"ret\n");

#else
VariableValue __cdecl Scr_EvalVariableExtern(unsigned int id)
{
  return Scr_EvalVariable(id);
}
#endif


VariableValue Scr_EvalVariableField(unsigned int id)
{
  if ( id )
  {
    return Scr_EvalVariable(id);
  }
  return Scr_EvalVariableEntityField(gScrVarPub.entId, gScrVarPub.entFieldName);

}



//Fix for weird GNU-GCC ABI
#if defined( __GNUC__ ) && !defined( __MINGW32__ )
//For Linux
__asm__(/* Scr_EvalVariableField ABI Wrapper */
"Scr_EvalVariableFieldExtern:\n"
".globl Scr_EvalVariableFieldExtern\n"
"push %ebp\n"
"mov %esp, %ebp\n"
"sub $0x18, %esp\n" //reserve Stack space

"push 0x8(%ebp)\n" //id
"lea -0x14(%ebp), %eax\n"
"push %eax\n" //hidden pointer for struct

"call Scr_EvalVariableField\n"

"add $0x4, %esp\n" //1st argument stdcall (No add) 2nd argument cdecl (add 4), makes sense, right?

"mov -0x14(%ebp), %eax\n"
"mov -0x10(%ebp), %edx\n"

"add $0x18, %esp\n"
"pop %ebp\n"
"ret\n");

#else
VariableValue __cdecl Scr_EvalVariableFieldExtern(unsigned int id)
{
  return Scr_EvalVariableField(id);
}
#endif

VariableValue Scr_FindVariableField(unsigned int parentId, unsigned int name)
{
  VariableValueInternal *entryValue;
  unsigned int id;
  VariableValue nret;

  assert(parentId);

  entryValue = &gScrVarGlob.variableList[parentId + VARIABLELIST_PARENT_BEGIN];

  assert((entryValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE);
  assert(IsObject(entryValue));
  assert((VAR_TYPE(entryValue) >= FIRST_OBJECT && VAR_TYPE(entryValue) < FIRST_NONFIELD_OBJECT) || VAR_TYPE(entryValue) >= FIRST_DEAD_OBJECT);

  id = FindVariable(parentId, name);
  if ( id )
  {
    return Scr_EvalVariable(id);
  }
  if ( VAR_TYPE(entryValue) == VAR_ENTITY )
  {
    return Scr_EvalVariableEntityField(parentId, name);
  }
  nret.u.intValue = 0;
  nret.type = VAR_UNDEFINED;
  return nret;
}


//Fix for weird GNU-GCC ABI
#if defined( __GNUC__ ) && !defined( __MINGW32__ )
//For Linux
__asm__(/* Scr_FindVariableField ABI Wrapper */
"Scr_FindVariableFieldExtern:\n"
".globl Scr_FindVariableFieldExtern\n"
"push %ebp\n"
"mov %esp, %ebp\n"
"sub $0x18, %esp\n" //reserve Stack space

"push 0xc(%ebp)\n" //name
"push 0x8(%ebp)\n" //parentId
"lea -0x14(%ebp), %eax\n"
"push %eax\n" //hidden pointer for struct

"call Scr_FindVariableField\n"

"add $0x8, %esp\n" //1st argument stdcall (No add) 2nd and 3rd argument cdecl (add 8), makes sense, right?

"mov -0x14(%ebp), %eax\n"
"mov -0x10(%ebp), %edx\n"

"add $0x18, %esp\n"
"pop %ebp\n"
"ret\n");

#else
VariableValue __cdecl Scr_FindVariableFieldExtern(unsigned int parentId, unsigned int name)
{
  return Scr_FindVariableField(parentId, name);
}
#endif
unsigned int __cdecl AllocValue( )
{
  VariableValueInternal *entry;
  unsigned int newIndex;
  unsigned int next;
  VariableValueInternal *entryValue;
  unsigned int index;
 
  index = gScrVarGlob.variableList[VARIABLELIST_CHILD_BEGIN].u.next;
  if ( !index )
  {
    Scr_TerminalError("exceeded maximum number of script variables");
  }
  entry = &gScrVarGlob.variableList[index + VARIABLELIST_CHILD_BEGIN];
  entryValue = &gScrVarGlob.variableList[entry->hash.id + VARIABLELIST_CHILD_BEGIN];
  assert((entryValue->w.status & VAR_STAT_MASK) == VAR_STAT_FREE);

  next = entryValue->u.next;
  if ( entry != entryValue && !(entry->w.status & VAR_STAT_MASK) )
  {
    newIndex = entry->v.next;
    assert(newIndex != index);

    gScrVarGlob.variableList[newIndex + VARIABLELIST_CHILD_BEGIN].hash.id = entry->hash.id;
    entry->hash.id = index;
    entryValue->v.next = newIndex;
    entryValue->u.next = entry->u.next;
    entryValue = entry;
  }
  gScrVarGlob.variableList[VARIABLELIST_CHILD_BEGIN].u.next = next;
  gScrVarGlob.variableList[next + VARIABLELIST_CHILD_BEGIN].hash.u.prev = 0;
  entryValue->v.next = index;
  entryValue->nextSibling = 0;
  entry->hash.u.prev = 0;
  assert(entry->hash.id > 0 && entry->hash.id < VARIABLELIST_CHILD_SIZE);

  ++gScrVarPub.totalObjectRefCount;
  if ( gScrVarDebugPub )
  {
    assert(!gScrVarDebugPub->leakCount[VARIABLELIST_CHILD_BEGIN+ entry->hash.id]);
    ++gScrVarDebugPub->leakCount[entry->hash.id + VARIABLELIST_CHILD_BEGIN];
  }
  ++gScrVarPub.numScriptValues;
  //assert(gScrVarPub.varUsagePos);

  if ( gScrVarDebugPub )
  {
    //assert(!gScrVarDebugPub->varUsage[VARIABLELIST_CHILD_BEGIN+ entry->hash.id]);
    gScrVarDebugPub->varUsage[entry->hash.id + VARIABLELIST_CHILD_BEGIN] = gScrVarPub.varUsagePos;
  }
  entryValue->w.status = VAR_STAT_EXTERNAL;
  assert(!(entryValue->w.type & VAR_MASK));
  return entry->hash.id;
}

void __cdecl Scr_AllocGameVariable()
{
  if ( !gScrVarPub.gameId )
  {
    //assert(gScrVarPub.varUsagePos == NULL);

    gScrVarPub.varUsagePos = "<game variable>";
    gScrVarPub.gameId = AllocValue();
    SetEmptyArray(gScrVarPub.gameId);
    gScrVarPub.varUsagePos = 0;
    Scr_UpdateDebugger();
  }
}

unsigned int __cdecl Scr_EvalArrayRef(unsigned int parentId)
{
  unsigned int result;
  VariableUnion id;
  VariableValueInternal *parentValue;
  VariableValueInternal *entValue;
  VariableValue varValue;
  VariableValueInternal *entryValue;
  unsigned int fieldId;

  if ( parentId )
  {
    parentValue = &gScrVarGlob.variableList[parentId + VARIABLELIST_CHILD_BEGIN];

    assert((parentValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE);

    varValue.type = VAR_TYPE(parentValue);
    if ( varValue.type )
    {
      varValue.u.intValue = parentValue->u.u.intValue;
add_array:
      if ( varValue.type == VAR_POINTER )
      {
        entryValue = &gScrVarGlob.variableList[varValue.u.pointerValue + VARIABLELIST_PARENT_BEGIN];

        assert((entryValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE);
        assert(IsObject( entryValue ));

        if ( VAR_TYPE(entryValue) == VAR_ARRAY )
        {
          if ( entryValue->u.o.refCount )
          {
            id.pointerValue = varValue.u.pointerValue;
            RemoveRefToObject(varValue.u.pointerValue);
            varValue.u.pointerValue = Scr_AllocArray( );
            CopyArray(id.pointerValue, varValue.u.pointerValue);
 
            assert(parentValue != NULL);
 
            parentValue->u.u.pointerValue = varValue.u.pointerValue;
          }
          result = varValue.u.pointerValue;
        }
        else
        {
          gScrVarPub.error_index = 1;
          Scr_Error(va("%s is not an array", var_typename[VAR_TYPE(entryValue)]));
          result = 0;
        }
      }
      else
      {
        assert(varValue.type != VAR_STACK);
        gScrVarPub.error_index = 1;
        if ( varValue.type == VAR_STRING )
        {
          Scr_Error("string characters cannot be individually changed");
          result = 0;
        }
        else
        {
          if ( varValue.type == VAR_VECTOR )
          {
            Scr_Error("vector components cannot be individually changed");
          }
          else
          {
            Scr_Error(va("%s is not an array", var_typename[varValue.type]));
          }
          result = 0;
        }
      }
      return result;
    }
  }
  else
  {
    entValue = &gScrVarGlob.variableList[gScrVarPub.entId + VARIABLELIST_PARENT_BEGIN];
    assert(VAR_TYPE(entValue) == VAR_ENTITY);
    assert((entValue->w.classnum >> VAR_NAME_BITS) < CLASS_NUM_COUNT);
    fieldId = FindArrayVariable(gScrClassMap[entValue->w.classnum >> VAR_NAME_BITS].id, gScrVarPub.entFieldName);
    if ( fieldId )
    {
      varValue = GetEntityFieldValue(entValue->w.classnum >> VAR_NAME_BITS, entValue->u.o.u.entnum & UNK_ENTNUM_MASK, gScrVarGlob.variableList[fieldId + VARIABLELIST_CHILD_BEGIN].u.u.entityOffset);
      if ( varValue.type )
      {
        if ( varValue.type == VAR_POINTER && !gScrVarGlob.variableList[varValue.u.pointerValue + VARIABLELIST_PARENT_BEGIN].u.o.refCount )
        {
          RemoveRefToValue(VAR_POINTER, varValue.u);
          gScrVarPub.error_index = 1;
          Scr_Error("read-only array cannot be changed");
          return 0;
        }
        RemoveRefToValue(varValue.type, varValue.u);
        
        assert((varValue.type != VAR_POINTER) || !gScrVarGlob.variableList[VARIABLELIST_PARENT_BEGIN + varValue.u.pointerValue].u.o.refCount);

        parentValue = 0;
        goto add_array;
      }
    }
    parentValue = &gScrVarGlob.variableList[GetNewVariable(gScrVarPub.entId, gScrVarPub.entFieldName) + VARIABLELIST_CHILD_BEGIN];
  }

  assert(VAR_TYPE(parentValue) == VAR_UNDEFINED);
  
  parentValue->w.type |= VAR_POINTER;
  parentValue->u.u.pointerValue = Scr_AllocArray( );
  return parentValue->u.u.pointerValue;
}



void __cdecl SafeRemoveVariable(unsigned int parentId, unsigned int unsignedValue)
{
  VariableValueInternal *entryValue;
  unsigned int index;
  unsigned int id;

  index = FindVariableIndexInternal(parentId, unsignedValue);
  if ( index )
  {
    id = gScrVarGlob.variableList[index + VARIABLELIST_CHILD_BEGIN].hash.id;
    entryValue = &gScrVarGlob.variableList[id + VARIABLELIST_CHILD_BEGIN];

    assert((entryValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE);
    assert(!IsObject(entryValue));

    MakeVariableExternal(index, &gScrVarGlob.variableList[parentId + VARIABLELIST_PARENT_BEGIN]);
    FreeChildValue(parentId, id);
  }
}


void __cdecl SafeRemoveArrayVariable(unsigned int parentId, unsigned int unsignedValue)
{
  assert(IsValidArrayIndex( unsignedValue ));
  SafeRemoveVariable(parentId, (unsignedValue + VAR_ARRAYINDEXSTART) & VAR_NAME_LOW_MASK);
}


void __cdecl ClearArray(unsigned int parentId, VariableValue *value)
{
  unsigned int id;
  VariableValueInternal *parentValue;
  VariableValueInternal *entValue;
  VariableValue varValue;
  VariableValueInternal *entryValue;
  unsigned int fieldId;

  if ( parentId )
  {
    parentValue = &gScrVarGlob.variableList[parentId + VARIABLELIST_CHILD_BEGIN];
    assert((parentValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE);
    varValue.type = VAR_TYPE(parentValue);
    varValue.u.pointerValue = parentValue->u.u.pointerValue;
  }
  else
  {
    entValue = &gScrVarGlob.variableList[gScrVarPub.entId + VARIABLELIST_PARENT_BEGIN];
    assert((entValue->w.type & VAR_MASK) == VAR_ENTITY);
    assert((entValue->w.classnum >> VAR_NAME_BITS) < CLASS_NUM_COUNT);

    fieldId = FindArrayVariable(gScrClassMap[entValue->w.classnum >> VAR_NAME_BITS].id, gScrVarPub.entFieldName);
    if(fieldId)
    {
      varValue = GetEntityFieldValue(entValue->w.classnum >> VAR_NAME_BITS, entValue->u.o.u.entnum & UNK_ENTNUM_MASK,
                 gScrVarGlob.variableList[fieldId + VARIABLELIST_CHILD_BEGIN].u.u.entityOffset);
    }
    if ( !fieldId || varValue.type == VAR_UNDEFINED )
    {
      varValue.type = VAR_UNDEFINED;
      gScrVarPub.error_index = 1;
      Scr_Error(va("%s is not an array", var_typename[varValue.type]));
      return;
    }
    if ( varValue.type == VAR_POINTER && !gScrVarGlob.variableList[varValue.u.intValue + VARIABLELIST_PARENT_BEGIN].u.o.refCount )
    {
      RemoveRefToValue(1, varValue.u);
      gScrVarPub.error_index = 1;
      Scr_Error("read-only array cannot be changed");
      return;
    }
    RemoveRefToValue(varValue.type, varValue.u);

    assert((varValue.type != VAR_POINTER) || !gScrVarGlob.variableList[VARIABLELIST_PARENT_BEGIN + varValue.u.pointerValue].u.o.refCount);
    parentValue = NULL;
  }
  if ( varValue.type != VAR_POINTER )
  {
    assert(varValue.type != VAR_STACK);
    gScrVarPub.error_index = 1;
    Scr_Error(va("%s is not an array", var_typename[varValue.type]));
    return;
  }
  entryValue = &gScrVarGlob.variableList[varValue.u.pointerValue + VARIABLELIST_PARENT_BEGIN];
  assert((entryValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE);
  assert(IsObject( entryValue ));

  if ( VAR_TYPE(entryValue) == VAR_ARRAY )
  {
    if ( entryValue->u.o.refCount )
    {
      id = varValue.u.pointerValue;
      RemoveRefToObject(varValue.u.pointerValue);
      varValue.u.pointerValue = Scr_AllocArray();
      CopyArray(id, varValue.u.pointerValue);
      assert(parentValue != 0);
      parentValue->u.u.pointerValue = varValue.u.pointerValue;
    }
    if ( value->type == VAR_INTEGER )
    {
      if ( IsValidArrayIndex(value->u.intValue) )
      {
        SafeRemoveArrayVariable(varValue.u.stringValue, value->u.intValue);
      }
      else
      {
        Scr_Error(va("array index %d out of range", value->u.intValue));
      }
    }
    else if ( value->type == VAR_STRING )
    {
      SL_RemoveRefToString(value->u.intValue);
      SafeRemoveVariable(varValue.u.pointerValue, value->u.intValue);
    }
    else
    {
      Scr_Error(va("%s is not an array index", var_typename[value->type]));
    }
  }
  else
  {
    gScrVarPub.error_index = 1;
    Scr_Error(va("%s is not an array", var_typename[VAR_TYPE(entryValue)]));
  }
}


void __cdecl RemoveVariable(unsigned int parentId, unsigned int unsignedValue)
{
  unsigned int id;
  unsigned int index;

  index = FindVariableIndexInternal(parentId, unsignedValue);
  assert ( index != 0);

  id = gScrVarGlob.variableList[index + VARIABLELIST_CHILD_BEGIN].hash.id;
  MakeVariableExternal(index, &gScrVarGlob.variableList[parentId + VARIABLELIST_PARENT_BEGIN]);
  FreeChildValue(parentId, id);
}

void __cdecl RemoveNextVariable(unsigned int parentId)
{
  unsigned int index;
  unsigned int id;

  assert((gScrVarGlob.variableList[VARIABLELIST_PARENT_BEGIN + parentId].w.status & VAR_STAT_MASK) != VAR_STAT_FREE);


  id = gScrVarGlob.variableList[parentId + VARIABLELIST_PARENT_BEGIN].nextSibling;
  assert(id != 0);
  index = FindVariableIndexInternal(parentId, gScrVarGlob.variableList[id + VARIABLELIST_CHILD_BEGIN].w.classnum >> VAR_NAME_BITS);
  assert(index != 0);

  assert(id == gScrVarGlob.variableList[VARIABLELIST_CHILD_BEGIN + index].hash.id);
  MakeVariableExternal(index, &gScrVarGlob.variableList[parentId + VARIABLELIST_PARENT_BEGIN]);
  FreeChildValue(parentId, id);
}

void __cdecl RemoveVariableValue(unsigned int parentId, unsigned int index)
{
  unsigned int id;

  assert(index != 0);

  id = gScrVarGlob.variableList[index + VARIABLELIST_CHILD_BEGIN].hash.id;
  assert(id != 0);

  MakeVariableExternal(index, &gScrVarGlob.variableList[parentId + VARIABLELIST_PARENT_BEGIN]);
  FreeChildValue(parentId, id);
}

void __cdecl RemoveArrayVariable(unsigned int parentId, unsigned int unsignedValue)
{
  assert(IsValidArrayIndex( unsignedValue ));
  RemoveVariable(parentId, (unsignedValue + VAR_ARRAYINDEXSTART) & VAR_NAME_LOW_MASK);
}


void __cdecl RemoveRefToObject(unsigned int id)
{
  int unsignedValue;
  unsigned int classnum;
  unsigned int entArrayId;
  VariableValueInternal *entryValue;

  assert(id >= VARIABLELIST_PARENT_BEGIN && id < VARIABLELIST_PARENT_SIZE);

  entryValue = &gScrVarGlob.variableList[VARIABLELIST_PARENT_BEGIN+ id];

  assert((entryValue->w.status & VAR_STAT_MASK) == VAR_STAT_EXTERNAL);
  assert((entryValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE);
  assert(IsObject( entryValue ));

  if ( entryValue->u.o.refCount )
  {
    --gScrVarPub.totalObjectRefCount;
    if ( gScrVarDebugPub )
    {
      assert(gScrVarDebugPub->leakCount[VARIABLELIST_PARENT_BEGIN+ id]);
      --gScrVarDebugPub->leakCount[VARIABLELIST_PARENT_BEGIN+ id];
    }
    if ( !--entryValue->u.o.refCount && VAR_TYPE(entryValue) == VAR_ENTITY && !entryValue->nextSibling )
    {
      entryValue->w.type &= ~VAR_MASK;
      entryValue->w.type |= VAR_DEAD_ENTITY;

      classnum = entryValue->w.classnum >> VAR_NAME_BITS;
      assert(classnum < CLASS_NUM_COUNT);

      entArrayId = gScrClassMap[classnum].entArrayId;
      assert(entArrayId);
      unsignedValue = entryValue->u.o.u.entnum & UNK_ENTNUM_MASK;
      /*
      if ( inst == 1 )
      {
        if ( (unsigned __int16)((signed int)entryValue->u.o.u.entnum >> 14) )
        {
          unsignedValue += 1536 * (unsigned __int16)((signed int)entryValue->u.o.u.entnum >> 14);
        }
      }*/
      RemoveArrayVariable(entArrayId, unsignedValue);
    }
  }
  else
  {
    if ( entryValue->nextSibling )
    {
      ClearObject(id);
    }
    FreeVariable(id);
  }
}



unsigned int __cdecl FindObject(unsigned int id)
{
  VariableValueInternal *entryValue;

  assert(id != 0);

  entryValue = &gScrVarGlob.variableList[id + VARIABLELIST_CHILD_BEGIN];
  assert((entryValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE);
  assert(VAR_TYPE(entryValue) == VAR_POINTER);

  return entryValue->u.u.pointerValue;
}


void __cdecl FreeValue(unsigned int id)
{
  VariableValueInternal *entry;
  VariableValueInternal *entryValue;
  unsigned int index;

  entryValue = &gScrVarGlob.variableList[id + VARIABLELIST_CHILD_BEGIN];

  assert(((entryValue->w.status & VAR_STAT_MASK) == VAR_STAT_EXTERNAL));
  assert((entryValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE);
  assert(!IsObject( entryValue ));
  assert(gScrVarGlob.variableList[VARIABLELIST_CHILD_BEGIN + entryValue->v.index].hash.id == id);

  RemoveRefToValue(entryValue->w.type & VAR_MASK, entryValue->u.u);

  assert(id > 0 && id < VARIABLELIST_CHILD_SIZE);

  --gScrVarPub.totalObjectRefCount;
  if ( gScrVarDebugPub )
  {
    assert(gScrVarDebugPub->leakCount[VARIABLELIST_CHILD_BEGIN + id]);
    --gScrVarDebugPub->leakCount[id + VARIABLELIST_CHILD_BEGIN];

    assert(!gScrVarDebugPub->leakCount[VARIABLELIST_CHILD_BEGIN + id]);
  }
  --gScrVarPub.numScriptValues;
  if ( gScrVarDebugPub )
  {
    //assert(gScrVarDebugPub->varUsage[VARIABLELIST_CHILD_BEGIN + id]);
    gScrVarDebugPub->varUsage[id + VARIABLELIST_CHILD_BEGIN] = 0;
  }
  assert((entryValue->w.status & VAR_STAT_MASK) == VAR_STAT_EXTERNAL);
  
  index = entryValue->v.next;
  entry = &gScrVarGlob.variableList[index + VARIABLELIST_CHILD_BEGIN];

  assert(entry->hash.id == id);
  assert(!entry->hash.u.prevSibling);
  assert(!entryValue->nextSibling);

  entryValue->w.status = 0;
  entryValue->u.next = gScrVarGlob.variableList[VARIABLELIST_CHILD_BEGIN].u.next;
  entry->hash.u.prev = 0;
  gScrVarGlob.variableList[gScrVarGlob.variableList[VARIABLELIST_CHILD_BEGIN].u.next + VARIABLELIST_CHILD_BEGIN].hash.u.prev = index;
  gScrVarGlob.variableList[VARIABLELIST_CHILD_BEGIN].u.next = index;
}

unsigned int __cdecl FindObjectVariable(unsigned int parentId, unsigned int id)
{
  return gScrVarGlob.variableList[FindVariableIndexInternal(parentId, id + SL_MAX_STRING_INDEX) + VARIABLELIST_CHILD_BEGIN].hash.id;
}


void __cdecl ClearVariableValue(unsigned int id)
{
  VariableValueInternal *entryValue;

  assert(id);

  entryValue = &gScrVarGlob.variableList[id + VARIABLELIST_CHILD_BEGIN];
  
  assert((entryValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE);
  assert(!IsObject( entryValue ));
  assert(VAR_TYPE(entryValue) != VAR_STACK);

  RemoveRefToValue(VAR_TYPE(entryValue), entryValue->u.u);
  entryValue->w.status &= ~VAR_MASK;

  assert(VAR_TYPE(entryValue) == VAR_UNDEFINED);
}


void __cdecl ClearVariableField(unsigned int parentId, unsigned int name, VariableValue *value)
{
  VariableValueInternal *entryValue;
  unsigned int classnum;
  VariableValueInternal *parentValue; 
  unsigned int fieldId;

  entryValue = &gScrVarGlob.variableList[parentId + VARIABLELIST_PARENT_BEGIN];
  assert((entryValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE);
  assert(IsObject(entryValue));

  assert((VAR_TYPE(entryValue) >= FIRST_OBJECT && VAR_TYPE(entryValue) < FIRST_NONFIELD_OBJECT) || (VAR_TYPE(entryValue) >= FIRST_DEAD_OBJECT));

  if ( FindVariableIndexInternal(parentId, name) )
  {
    RemoveVariable(parentId, name);
  }
  else
  {
    parentValue = &gScrVarGlob.variableList[parentId + VARIABLELIST_PARENT_BEGIN];
    if ( VAR_TYPE(parentValue) == VAR_ENTITY )
    {
      assert((parentValue->w.classnum >> VAR_NAME_BITS) < CLASS_NUM_COUNT);

      classnum = parentValue->w.classnum >> VAR_NAME_BITS;
      fieldId = FindArrayVariable(gScrClassMap[classnum].id, name);
      if ( fieldId )
      {
        ++value;
        value->type = VAR_UNDEFINED;
        SetEntityFieldValue(classnum, SCR_GET_ENTITY_FROM_ENTCLIENT(parentValue->u.o.u.entnum), gScrVarGlob.variableList[fieldId + VARIABLELIST_CHILD_BEGIN].u.u.intValue, value);
      }
    }
  }
}

unsigned int __cdecl FindVariable(unsigned int parentId, unsigned int unsignedValue)
{
  return gScrVarGlob.variableList[FindVariableIndexInternal(parentId, unsignedValue) + VARIABLELIST_CHILD_BEGIN].hash.id;
}

unsigned int __cdecl GetArraySize(unsigned int id)
{
  VariableValueInternal *entryValue;

  assert(id != 0);

  entryValue = &gScrVarGlob.variableList[id + VARIABLELIST_PARENT_BEGIN];
  assert(VAR_TYPE(entryValue) == VAR_ARRAY);
  return entryValue->u.o.u.size;
}

unsigned int __cdecl GetValueType(unsigned int id)
{
  assert((gScrVarGlob.variableList[VARIABLELIST_CHILD_BEGIN+ id].w.status & VAR_STAT_MASK) != VAR_STAT_FREE);

  return gScrVarGlob.variableList[id + VARIABLELIST_CHILD_BEGIN].w.type & VAR_MASK;
}

bool __cdecl IsObjectFree(unsigned int id)
{
  return (gScrVarGlob.variableList[id + VARIABLELIST_PARENT_BEGIN].w.status & VAR_STAT_MASK) == 0;
}


unsigned int FindEntityId(int entnum, unsigned int classnum)
{
  unsigned int entArrayId;
  VariableValueInternal *entryValue;
  unsigned int id;

  assert((unsigned)entnum < (1 << 16));

  entArrayId = gScrClassMap[classnum].entArrayId;
  
  assert(entArrayId != 0);

  id = FindArrayVariable(entArrayId, entnum);
  if ( !id )
  {
    return 0;
  }
  entryValue = &gScrVarGlob.variableList[id + VARIABLELIST_CHILD_BEGIN];
  assert((entryValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE);
  assert(VAR_TYPE(entryValue) == VAR_POINTER);
  assert(entryValue->u.u.pointerValue);

  return entryValue->u.u.pointerValue;
}

unsigned int __cdecl GetVariable(unsigned int parentId, unsigned int unsignedValue)
{
  return gScrVarGlob.variableList[GetVariableIndexInternal( parentId, unsignedValue) + VARIABLELIST_CHILD_BEGIN].hash.id;
}


unsigned int __cdecl GetVariableName(unsigned int id)
{
  VariableValueInternal *entryValue;

  entryValue = &gScrVarGlob.variableList[id + VARIABLELIST_CHILD_BEGIN];
  assert((entryValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE);
  assert(!IsObject( entryValue ));

  return entryValue->w.name >> VAR_NAME_BITS;
}

unsigned int __cdecl GetStartLocalId(unsigned int threadId)
{

  assert((gScrVarGlob.variableList[VARIABLELIST_PARENT_BEGIN + threadId].w.status & VAR_STAT_MASK) == VAR_STAT_EXTERNAL);
  assert((gScrVarGlob.variableList[VARIABLELIST_PARENT_BEGIN + threadId].w.type & VAR_MASK) >= VAR_THREAD && (gScrVarGlob.variableList[VARIABLELIST_PARENT_BEGIN+ threadId].w.type & VAR_MASK) <= VAR_CHILD_THREAD);

  while ( (gScrVarGlob.variableList[threadId + VARIABLELIST_PARENT_BEGIN].w.status & VAR_MASK) == VAR_CHILD_THREAD )
  {
    threadId = gScrVarGlob.variableList[threadId + VARIABLELIST_PARENT_BEGIN].w.classnum >> VAR_NAME_BITS;
  }
  assert((gScrVarGlob.variableList[VARIABLELIST_PARENT_BEGIN+ threadId].w.status & VAR_STAT_MASK) == VAR_STAT_EXTERNAL);
  assert((gScrVarGlob.variableList[VARIABLELIST_PARENT_BEGIN+ threadId].w.type & VAR_MASK) >= VAR_THREAD && (gScrVarGlob.variableList[VARIABLELIST_PARENT_BEGIN+ threadId].w.type & VAR_MASK) <= VAR_TIME_THREAD);
  return threadId;
}

unsigned int __cdecl FindFirstSibling(unsigned int id)
{
  VariableValueInternal *entryValue;

  assert(id != 0);

  entryValue = &gScrVarGlob.variableList[id + VARIABLELIST_PARENT_BEGIN];

  assert((entryValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE);
  assert(IsObject( entryValue ));

  return entryValue->nextSibling;
}


unsigned int __cdecl FindNextSibling(unsigned int id)
{
  unsigned int nextSibling;
  VariableValueInternal *list;
  unsigned int childId;
  VariableValueInternal *entryValue;

  list = gScrVarGlob.variableList + VARIABLELIST_CHILD_BEGIN;

  assert(id != 0);

  entryValue = &list[id];

  assert((entryValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE);
  assert(!IsObject( entryValue ));

  nextSibling = entryValue->nextSibling;
  if ( !nextSibling )
  {
    return 0;
  }

  childId = list[nextSibling].hash.id;
  entryValue = &list[childId];


  assert((entryValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE);
  assert(!IsObject( entryValue ));

  return childId;
}


unsigned int __cdecl FindPrevSibling(unsigned int id)
{
  VariableValueInternal *list;
  VariableValueInternal *entryValue;

  list = gScrVarGlob.variableList + VARIABLELIST_CHILD_BEGIN;

  assert(id != 0);

  entryValue = &list[id];

  assert(!IsObject( entryValue ));

  return entryValue->hash.u.prev;
}

unsigned int __cdecl FindLastSibling(unsigned int parentId)
{
  VariableValueInternal *parentValue;
  unsigned int index;
  unsigned int id;

  assert(parentId);
  parentValue = &gScrVarGlob.variableList[parentId + VARIABLELIST_PARENT_BEGIN];
  
  assert((parentValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE);
  assert(IsObject( parentValue ));

  assert(((parentValue->w.status & VAR_STAT_MASK) == VAR_STAT_EXTERNAL));

  id = gScrVarGlob.variableList[parentValue->v.next + VARIABLELIST_PARENT_BEGIN].hash.u.prev;
  if ( !id )
  {
    return 0;
  }
  index = FindVariableIndexInternal(parentId, gScrVarGlob.variableList[id + VARIABLELIST_CHILD_BEGIN].w.classnum >> VAR_NAME_BITS);
  assert(index != 0);
  return index;
}


double __regparm1 Scr_GetObjectUsage(unsigned int parentId)
{
  VariableValueInternal *parentValue;
  float usage;
  unsigned int id;

  parentValue = &gScrVarGlob.variableList[parentId + VARIABLELIST_PARENT_BEGIN];

  assert((parentValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE);
  assert(IsObject( parentValue ));
  
  usage = 1.0;
  for ( id = FindFirstSibling(parentId); id; id = FindNextSibling(id) )
  {
    usage = Scr_GetEntryUsage(&gScrVarGlob.variableList[id + VARIABLELIST_CHILD_BEGIN]) + usage;
  }
  return usage;
}


unsigned int Scr_GetObjectType(unsigned int id)
{
  assert((gScrVarGlob.variableList[VARIABLELIST_PARENT_BEGIN + id].w.status & VAR_STAT_MASK) != VAR_STAT_FREE);

  return VAR_TYPE((&gScrVarGlob.variableList[id + VARIABLELIST_PARENT_BEGIN]));
}

unsigned int __cdecl Scr_GetSelf(unsigned int threadId)
{
  assert((gScrVarGlob.variableList[VARIABLELIST_PARENT_BEGIN + threadId].w.status & VAR_STAT_MASK) != VAR_STAT_FREE);
  assert(((gScrVarGlob.variableList[VARIABLELIST_PARENT_BEGIN + threadId].w.type & VAR_MASK) >= VAR_THREAD) && ((gScrVarGlob.variableList[VARIABLELIST_PARENT_BEGIN + threadId].w.type & VAR_MASK) <= VAR_CHILD_THREAD));
  return gScrVarGlob.variableList[threadId + VARIABLELIST_PARENT_BEGIN].u.o.u.self;
}

unsigned int __cdecl Scr_GetVarId(unsigned int index)
{
  return gScrVarGlob.variableList[index + VARIABLELIST_CHILD_BEGIN].hash.id;
}

qboolean __cdecl IsFieldObject(unsigned int id)
{
  VariableValueInternal *entryValue;

  assert(id);
  entryValue = &gScrVarGlob.variableList[id + VARIABLELIST_PARENT_BEGIN];
  assert((entryValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE);
  assert(IsObject( entryValue ));
  if(VAR_TYPE(entryValue) < VAR_ARRAY)
  {
    return qtrue;
  }
  return qfalse;
}

unsigned int __cdecl GetNewVariableIndexInternal(unsigned int parentId, unsigned int name)
{
  assert(!FindVariableIndexInternal( parentId, name ));
  unsigned int index = (parentId + 101 * name) % (VARIABLELIST_CHILD_SIZE -1) + 1;
  return GetNewVariableIndexInternal2(parentId, name, index);
}


unsigned int __cdecl GetNewVariable(unsigned int parentId, unsigned int unsignedValue)
{
  return gScrVarGlob.variableList[GetNewVariableIndexInternal(parentId, unsignedValue) + VARIABLELIST_CHILD_BEGIN].hash.id;
}

void __cdecl RemoveRefToValue(int type, VariableUnion u)
{
  unsigned int value;

  value = type - VAR_BEGIN_REF;
  if ( (unsigned int)value < 4 )
  {
    if ( value == VAR_POINTER - VAR_BEGIN_REF )
    {
      RemoveRefToObject(u.pointerValue);
    }
    else if ( value >= VAR_VECTOR - VAR_BEGIN_REF)
    {
      assert(value == VAR_VECTOR - VAR_BEGIN_REF);
      RemoveRefToVector(u.vectorValue);
    }
    else
    {
      SL_RemoveRefToString(u.stringValue);
    }
  }
}

unsigned int __cdecl GetParentLocalId(unsigned int threadId)
{
  assert((gScrVarGlob.variableList[VARIABLELIST_PARENT_BEGIN + threadId].w.status & VAR_STAT_MASK) == VAR_STAT_EXTERNAL);
  assert(VAR_TYPE((&gScrVarGlob.variableList[VARIABLELIST_PARENT_BEGIN + threadId])) == VAR_CHILD_THREAD);
  return gScrVarGlob.variableList[threadId + VARIABLELIST_PARENT_BEGIN].w.parentLocalId >> VAR_NAME_BITS;
}

void Scr_FreeObjects( )
{
  VariableValueInternal *entryValue;
  unsigned int id;

  for ( id = 1; id < VARIABLELIST_PARENT_SIZE; ++id )
  {
    entryValue = &gScrVarGlob.variableList[id + VARIABLELIST_PARENT_BEGIN];
    if ( entryValue->w.status & VAR_STAT_MASK )
    {
      if ( VAR_TYPE(entryValue) == VAR_OBJECT || VAR_TYPE(entryValue) == VAR_DEAD_ENTITY )
      {
        Scr_CancelNotifyList(id);
        ClearObject(id);
      }
    }
  }
}

void __cdecl Scr_AddArrayKeys(unsigned int parentId)
{
  VariableValue value;
  VariableValueInternal *entryValue;
  unsigned int id;

  assert(parentId != 0);
  assert(Scr_GetObjectType( parentId ) == VAR_ARRAY);

  Scr_MakeArray( );

  for ( id = FindFirstSibling(parentId); id; id = FindNextSibling(id) )
  {
    entryValue = &gScrVarGlob.variableList[id + VARIABLELIST_CHILD_BEGIN];

    assert((entryValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE && (entryValue->w.status & VAR_STAT_MASK) != VAR_STAT_EXTERNAL);
    assert(!IsObject( entryValue ));
    value = Scr_GetArrayIndexValue(entryValue->w.name >> VAR_NAME_BITS);
    if ( value.type == VAR_STRING )
    {
      Scr_AddConstString(value.u.stringValue);
    }
    else if ( value.type == VAR_INTEGER )
    {
      Scr_AddInt(value.u.intValue);
    }
    else
    {
      assert(0);
    }
    Scr_AddArray( );
  }
}

void __cdecl Scr_FreeValue(unsigned int id)
{
  assert(id != 0);

  RemoveRefToObject(id);
}

int __cdecl Scr_GetOffset(unsigned int classnum, const char *name)
{
  unsigned int classId;
  unsigned int cstr;
  unsigned int fieldId; 

  classId = gScrClassMap[classnum].id;
  cstr = SL_ConvertFromString(name);
  fieldId = FindVariable(classId, cstr);
  if ( fieldId )
  {
    return gScrVarGlob.variableList[fieldId + VARIABLELIST_CHILD_BEGIN].u.u.intValue;
  }
  return -1;
}

void __cdecl SetVariableValue(unsigned int id, VariableValue *value)
{
  VariableValueInternal *entryValue;

  assert(id != 0);
  assert(!IsObjectVal( value ));
  assert(value->type >= 0 && value->type < VAR_COUNT);
  assert(value->type != VAR_STACK);
  entryValue = &gScrVarGlob.variableList[id + VARIABLELIST_CHILD_BEGIN];
  assert((entryValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE);
  assert((entryValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE);
  assert(!IsObject( entryValue ));
  assert((entryValue->w.type & VAR_MASK) != VAR_STACK);

  RemoveRefToValue(VAR_TYPE(entryValue), entryValue->u.u);
  entryValue->w.type &= ~VAR_MASK;
  entryValue->w.type |= value->type;
  entryValue->u.u = value->u;
}

unsigned int __cdecl GetObjectVariable(unsigned int parentId, unsigned int id)
{
  assert((gScrVarGlob.variableList[VARIABLELIST_PARENT_BEGIN+ parentId].w.type & VAR_MASK) == VAR_ARRAY);

  return gScrVarGlob.variableList[GetVariableIndexInternal(parentId, id + SL_MAX_STRING_INDEX) + VARIABLELIST_CHILD_BEGIN].hash.id;
}

unsigned int __cdecl Scr_FindField(const char *name, int *type)
{
  unsigned int index;
  const char *pos;
  int len;

  assert(gScrVarPub.fieldBuffer != NULL);

  for ( pos = gScrVarPub.fieldBuffer; *pos; pos += len + 3 )
  {
    len = strlen(pos) + 1;
    if ( !Q_stricmp(name, pos) )
    {
      index = *(uint16_t *)&pos[len];
      *type = pos[len +2];
      return index;
    }
  }
  return 0;
}

void __cdecl RemoveObjectVariable(unsigned int parentId, unsigned int id)
{
  assert(VAR_TYPE((&gScrVarGlob.variableList[VARIABLELIST_PARENT_BEGIN + parentId])) == VAR_ARRAY);
  RemoveVariable(parentId, id + SL_MAX_STRING_INDEX);
}

VariableUnion *__cdecl GetVariableValueAddress(unsigned int id)
{
  VariableValueInternal *entryValue;

  assert(id != 0);

  entryValue = &gScrVarGlob.variableList[id + VARIABLELIST_CHILD_BEGIN];

  assert((entryValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE);
  assert(VAR_TYPE(entryValue) != VAR_UNDEFINED);
  assert(!IsObject( entryValue ));

  return &entryValue->u.u;
}


void Scr_ClearThread(unsigned int parentId)
{
  VariableValueInternal *parentValue;

  assert(parentId != 0);

  parentValue = &gScrVarGlob.variableList[parentId + VARIABLELIST_PARENT_BEGIN];
  assert((parentValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE);

  assert((VAR_TYPE(parentValue) >= VAR_THREAD) && (VAR_TYPE(parentValue) <= VAR_CHILD_THREAD));

  assert(!FindVariable( parentId, OBJECT_STACK ));

  if ( parentValue->nextSibling )
  {
    ClearObjectInternal(parentId);
  }
  RemoveRefToObject(parentValue->u.o.u.self);
}

void __cdecl Scr_KillEndonThread(unsigned int threadId)
{
  VariableValueInternal *parentValue;

  parentValue = &gScrVarGlob.variableList[threadId + VARIABLELIST_PARENT_BEGIN];

  assert((parentValue->w.status & VAR_STAT_MASK) == VAR_STAT_EXTERNAL);
  assert(VAR_TYPE(parentValue) == VAR_THREAD);
  assert(!parentValue->nextSibling);

  RemoveRefToObject(parentValue->u.o.u.self);

  assert(!FindObjectVariable( gScrVarPub.pauseArrayId, threadId ));

  parentValue->w.type &= ~VAR_MASK;
  parentValue->w.type |= VAR_DEAD_THREAD;
}

void __cdecl Scr_KillThread(unsigned int parentId)
{
  VariableUnion *threadvar;
  VariableValueInternal *parentValue;
  unsigned int selfNameId;
  unsigned int name;
  unsigned int id;
  unsigned int notifyListEntry;

  assert(parentId != 0);

  parentValue = &gScrVarGlob.variableList[parentId + VARIABLELIST_PARENT_BEGIN];
  assert((parentValue->w.status & VAR_STAT_MASK) == VAR_STAT_EXTERNAL);
  assert((VAR_TYPE(parentValue) >= VAR_THREAD) && VAR_TYPE(parentValue) <= VAR_CHILD_THREAD);

  Scr_ClearThread(parentId);
  id = FindObjectVariable(gScrVarPub.pauseArrayId, parentId);
  if ( id )
  {
    for ( selfNameId = FindObject(id); ; RemoveObjectVariable(selfNameId, name - SL_MAX_STRING_INDEX) )
    {
      notifyListEntry = FindFirstSibling(selfNameId);
      if ( !notifyListEntry )
      {
        break;
      }
      assert(VAR_TYPE((&gScrVarGlob.variableList[VARIABLELIST_CHILD_BEGIN+ notifyListEntry])) == VAR_POINTER);
      name = gScrVarGlob.variableList[notifyListEntry + VARIABLELIST_CHILD_BEGIN].w.name >> VAR_NAME_BITS;

      assert((name - SL_MAX_STRING_INDEX) < (1 << 16));

      id = FindObjectVariable(selfNameId, name - SL_MAX_STRING_INDEX);
      threadvar = GetVariableValueAddress(id);
      VM_CancelNotify(threadvar->intValue, name - SL_MAX_STRING_INDEX);
      Scr_KillEndonThread(name - SL_MAX_STRING_INDEX);
    }
    assert(!GetArraySize( selfNameId ));
    RemoveObjectVariable(gScrVarPub.pauseArrayId, parentId);
  }
  parentValue->w.type &= ~VAR_MASK;
  parentValue->w.type |= VAR_DEAD_THREAD;
}

void __cdecl Scr_StopThread(unsigned int threadId)
{
  assert(threadId != 0);

  Scr_ClearThread(threadId);
  gScrVarGlob.variableList[threadId + VARIABLELIST_PARENT_BEGIN].u.o.u.self = gScrVarPub.levelId;
  AddRefToObject(gScrVarPub.levelId);
}

unsigned int __cdecl GetNewObjectVariable(unsigned int parentId, unsigned int id)
{
  assert(VAR_TYPE((&gScrVarGlob.variableList[VARIABLELIST_PARENT_BEGIN + parentId])) == VAR_ARRAY);
  return gScrVarGlob.variableList[GetNewVariableIndexInternal(parentId, id + SL_MAX_STRING_INDEX) + VARIABLELIST_CHILD_BEGIN].hash.id;
}


void __cdecl SetNewVariableValue(unsigned int id, VariableValue *value)
{
  VariableValueInternal *entryValue;

  assert((value->type & VAR_MASK) < VAR_THREAD);

  entryValue = &gScrVarGlob.variableList[id + VARIABLELIST_CHILD_BEGIN];

  assert((entryValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE);
  assert(!IsObject( entryValue ));

  assert(value->type >= 0 && value->type < VAR_COUNT);
  assert(VAR_TYPE(entryValue) == VAR_UNDEFINED);
  assert((value->type != VAR_POINTER) || (VAR_TYPE(entryValue) < FIRST_DEAD_OBJECT));

  entryValue->w.type |= value->type;
  entryValue->u.u = value->u;
}


unsigned int __cdecl GetSafeParentLocalId(unsigned int threadId)
{
  unsigned int r;

  if ( (gScrVarGlob.variableList[threadId + VARIABLELIST_PARENT_BEGIN].w.status & VAR_STAT_MASK) == VAR_STAT_FREE)
  {
    return 0;
  }
  assert((gScrVarGlob.variableList[VARIABLELIST_PARENT_BEGIN + threadId].w.status & VAR_STAT_MASK) == VAR_STAT_EXTERNAL);
  assert(VAR_TYPE((&gScrVarGlob.variableList[VARIABLELIST_PARENT_BEGIN + threadId])) >= VAR_THREAD && VAR_TYPE((&gScrVarGlob.variableList[VARIABLELIST_PARENT_BEGIN + threadId])) <= VAR_CHILD_THREAD);

  if ( VAR_TYPE((&gScrVarGlob.variableList[threadId + VARIABLELIST_PARENT_BEGIN])) == VAR_CHILD_THREAD )
  {
    r = gScrVarGlob.variableList[threadId + VARIABLELIST_PARENT_BEGIN].w.classnum >> VAR_NAME_BITS;
  }
  else
  {
    r = 0;
  }
  return r;
}

void __cdecl Scr_ClearWaitTime(unsigned int startLocalId)
{
  VariableValueInternal *entryValue;

  entryValue = &gScrVarGlob.variableList[startLocalId + VARIABLELIST_PARENT_BEGIN];
  assert(((entryValue->w.status & VAR_STAT_MASK) == VAR_STAT_EXTERNAL));
  assert(VAR_TYPE(entryValue) == VAR_TIME_THREAD);

  entryValue->w.status &= ~VAR_MASK;
  entryValue->w.status |= VAR_THREAD;
}

void __cdecl Scr_FreeEntityList( )
{
  VariableValueInternal *entryValue;
  unsigned int entId;

  if ( gScrVarDebugPub )
  {
    --gScrVarDebugPub->extRefCount[gScrVarPub.freeEntList];
  }
  while ( gScrVarPub.freeEntList )
  {
    entId = gScrVarPub.freeEntList;
    entryValue = &gScrVarGlob.variableList[entId + VARIABLELIST_PARENT_BEGIN];
    gScrVarPub.freeEntList = entryValue->u.o.u.nextEntId;
    entryValue->u.o.u.nextEntId = 0;
    Scr_CancelNotifyList(entId);
    if ( entryValue->nextSibling )
    {
      ClearObjectInternal(entId);
    }
    RemoveRefToObject(entId);
  }
}


void __cdecl Scr_FreeEntityNum(int entnum, unsigned int classnum)
{
  unsigned int entArrayId;
  unsigned int entnumId;
  VariableValueInternal *entryValue;
  unsigned int entId;

  if ( gScrVarPub.bInited )
  {
    entArrayId = gScrClassMap[classnum].entArrayId;
    assert(entArrayId != 0);
    entnumId = FindArrayVariable(entArrayId, entnum);
    if ( entnumId )
    {
      entId = FindObject(entnumId);
      assert(entId != 0);
      entryValue = &gScrVarGlob.variableList[entId + VARIABLELIST_PARENT_BEGIN];
      assert(VAR_TYPE(entryValue) == VAR_ENTITY);

      //assert(SCR_GET_ENTITY_FROM_ENTCLIENT(entryValue->u.o.u.entnum) == entnum - (SCR_GET_CLIENT_FROM_ENTCLIENT(entryValue->u.o.u.entnum) * MAX_LOCAL_CENTITIES));
      assert((entryValue->w.classnum >> VAR_NAME_BITS) == classnum);

      entryValue->w.type &= ~VAR_MASK;
      entryValue->w.type |= VAR_DEAD_ENTITY;
      AddRefToObject(entId);
      entryValue->u.o.u.nextEntId = gScrVarPub.freeEntList;
      if ( gScrVarDebugPub )
      {
        --gScrVarDebugPub->extRefCount[gScrVarPub.freeEntList];
      }
      gScrVarPub.freeEntList = entId;
      if ( gScrVarDebugPub )
      {
        ++gScrVarDebugPub->extRefCount[gScrVarPub.freeEntList];
      }
      RemoveArrayVariable(entArrayId, entnum);
    }
  }
}

unsigned int GetNewArrayVariableIndex(unsigned int parentId, unsigned int unsignedValue)
{
  assert(IsValidArrayIndex( unsignedValue ));

  return GetNewVariableIndexInternal(parentId, (unsignedValue + VAR_ARRAYINDEXSTART) & VAR_NAME_LOW_MASK);
}

unsigned int GetNewArrayVariable(unsigned int parentId, unsigned int unsignedValue)
{
  return gScrVarGlob.variableList[GetNewArrayVariableIndex(parentId, unsignedValue) + VARIABLELIST_CHILD_BEGIN].hash.id;
}

unsigned int __cdecl GetVariableKeyObject(unsigned int id)
{
  assert((gScrVarGlob.variableList[VARIABLELIST_CHILD_BEGIN + id].w.status & VAR_STAT_MASK) != VAR_STAT_FREE);
  assert(!IsObject(( &gScrVarGlob.variableList[VARIABLELIST_CHILD_BEGIN + id]) ));

  return (gScrVarGlob.variableList[id + VARIABLELIST_CHILD_BEGIN].w.name >> VAR_NAME_BITS) - SL_MAX_STRING_INDEX;
}


#define UNKNOWN_TYPE 0

static int __cdecl Scr_MakeValuePrimitive(unsigned int parentId)
{
  VariableValueInternal *parentValue;
  unsigned int name;
  VariableValueInternal *entryValue;
  unsigned int id;

  parentValue = &gScrVarGlob.variableList[parentId + VARIABLELIST_PARENT_BEGIN];
  assert((parentValue->w.status & VAR_STAT_MASK) == VAR_STAT_EXTERNAL);
  assert((parentValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE);
  assert(IsObject( parentValue ));
  assert(VAR_TYPE(parentValue) != VAR_THREAD);
  assert(VAR_TYPE(parentValue) != VAR_NOTIFY_THREAD);
  assert(VAR_TYPE(parentValue) != VAR_TIME_THREAD);
  assert(VAR_TYPE(parentValue) != VAR_CHILD_THREAD);

  if ( VAR_TYPE(parentValue) != VAR_ARRAY )
  {
    return 0;
  }
  id = FindFirstSibling(parentId);
  while ( id )
  {
    entryValue = &gScrVarGlob.variableList[id + VARIABLELIST_CHILD_BEGIN];
    assert((entryValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE);
    assert((entryValue->w.status & VAR_STAT_MASK) != VAR_STAT_EXTERNAL);
    assert(!IsObject( entryValue ));

    name = entryValue->w.name >> VAR_NAME_BITS;
    switch ( VAR_TYPE(entryValue) )
    {
      case VAR_CODEPOS:
      case VAR_PRECODEPOS:
      case VAR_FUNCTION:
      case VAR_STACK:
      case VAR_ANIMATION:
        RemoveVariable(parentId, name);
        id = FindFirstSibling(parentId);
        continue;

      case VAR_POINTER:
        if ( !Scr_MakeValuePrimitive(entryValue->u.u.pointerValue) )
        {
          RemoveVariable(parentId, name);
          id = FindFirstSibling(parentId);
          continue;
        }
        break;

      case VAR_UNDEFINED:
      case VAR_STRING:
      case VAR_ISTRING:
      case VAR_VECTOR:
      case VAR_FLOAT:
      case VAR_INTEGER:
        break;

      default:
        assert(UNKNOWN_TYPE);
        break;
    }
    id = FindNextSibling(id);
  }
  return 1;
}

void __cdecl Scr_FreeGameVariable(int bComplete)
{
  VariableValueInternal *entryValue;

  assert(gScrVarPub.gameId);
  
  if ( bComplete )
  {
    FreeValue(gScrVarPub.gameId);
    gScrVarPub.gameId = 0;
  }
  else
  {
    entryValue = &gScrVarGlob.variableList[gScrVarPub.gameId + VARIABLELIST_CHILD_BEGIN];
    assert(VAR_TYPE(entryValue) == VAR_POINTER);
    Scr_MakeValuePrimitive(entryValue->u.u.pointerValue);
  }
}


unsigned int Scr_GetNumScriptVars( )
{
  return gScrVarPub.numScriptObjects + gScrVarPub.numScriptValues;
}

unsigned int __cdecl Scr_GetThreadWaitTime(unsigned int startLocalId)
{
  assert((gScrVarGlob.variableList[VARIABLELIST_PARENT_BEGIN + startLocalId].w.status & VAR_STAT_MASK) == VAR_STAT_EXTERNAL);
  assert((gScrVarGlob.variableList[VARIABLELIST_PARENT_BEGIN + startLocalId].w.type & VAR_MASK) == VAR_TIME_THREAD);
  return gScrVarGlob.variableList[startLocalId + VARIABLELIST_PARENT_BEGIN].w.waitTime >> VAR_NAME_BITS;
}

unsigned int __cdecl Scr_GetThreadNotifyName(unsigned int startLocalId)
{
  assert((gScrVarGlob.variableList[VARIABLELIST_PARENT_BEGIN + startLocalId].w.type & VAR_STAT_MASK) == VAR_STAT_EXTERNAL);
  assert((gScrVarGlob.variableList[VARIABLELIST_PARENT_BEGIN + startLocalId].w.type & VAR_MASK) == VAR_NOTIFY_THREAD);
  assert((gScrVarGlob.variableList[VARIABLELIST_PARENT_BEGIN + startLocalId].w.notifyName >> VAR_NAME_BITS) < ( 1 << 16 ));
  return gScrVarGlob.variableList[startLocalId + VARIABLELIST_PARENT_BEGIN].w.notifyName >> VAR_NAME_BITS;
}


void __cdecl Scr_SetThreadWaitTime(unsigned int startLocalId, unsigned int waitTime)
{
  VariableValueInternal *entryValue;

  entryValue = &gScrVarGlob.variableList[startLocalId + VARIABLELIST_PARENT_BEGIN];
  assert((entryValue->w.status & VAR_STAT_MASK) == VAR_STAT_EXTERNAL);

  assert((VAR_TYPE(entryValue) == VAR_THREAD) || !Scr_GetThreadNotifyName( startLocalId ));

  entryValue->w.status &= ~VAR_MASK;
  entryValue->w.status &= ~VAR_NAME_HIGH_MASK;
  entryValue->w.status |= VAR_TIME_THREAD;
  gScrVarGlob.variableList[startLocalId + VARIABLELIST_PARENT_BEGIN].w.waitTime |= (waitTime << VAR_NAME_BITS);
}


void __cdecl Scr_SetThreadNotifyName(unsigned int startLocalId, unsigned int stringValue)
{
  VariableValueInternal *entryValue;

  entryValue = &gScrVarGlob.variableList[startLocalId + VARIABLELIST_PARENT_BEGIN];
  assert((entryValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE);
  assert(VAR_TYPE(entryValue) == VAR_THREAD);

  entryValue->w.type &= ~VAR_MASK;
  entryValue->w.name &= ~VAR_NAME_HIGH_MASK;
  entryValue->w.type |= VAR_NOTIFY_THREAD;
  entryValue->w.name |= stringValue << VAR_NAME_BITS;
}

void __cdecl Scr_RemoveThreadNotifyName(unsigned int startLocalId)
{
  uint16_t stringValue;
  VariableValueInternal *entryValue;

  entryValue = &gScrVarGlob.variableList[startLocalId + VARIABLELIST_PARENT_BEGIN];

  assert((entryValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE);
  assert((entryValue->w.type & VAR_MASK) == VAR_NOTIFY_THREAD);

  stringValue = Scr_GetThreadNotifyName(startLocalId);
  assert(stringValue);

  SL_RemoveRefToString(stringValue);
  entryValue->w.type &= ~VAR_MASK;
  entryValue->w.type |= VAR_THREAD;
}


unsigned int __cdecl GetInternalVariableIndex(unsigned int unsignedValue)
{
  assert(IsValidArrayIndex( unsignedValue ));
  return (unsignedValue + MAX_ARRAYINDEX) & VAR_NAME_LOW_MASK;
}

int __cdecl Scr_GetClassnumForCharId(char charId)
{
  unsigned int i;

  for ( i = 0; i < CLASS_NUM_COUNT; ++i )
  {
    if ( gScrClassMap[i].charId == charId )
    {
      return (int)i;
    }
  }
  return -1;
}



static unsigned int GetNewVariableIndexReverseInternal2(unsigned int parentId, unsigned int name, unsigned int index)
{
  VariableValueInternal *parentValue;
  unsigned int siblingId;
  VariableValueInternal *entry;
  unsigned int siblingIndex;
  VariableValueInternal *siblingValue;
  VariableValueInternal *parent;
  unsigned int id;

  index = GetNewVariableIndexInternal3(parentId, name, index);
  parentValue = &gScrVarGlob.variableList[parentId + VARIABLELIST_PARENT_BEGIN];

  assert(((parentValue->w.status & VAR_STAT_MASK) == VAR_STAT_EXTERNAL));

  parent = &gScrVarGlob.variableList[parentValue->v.next + VARIABLELIST_PARENT_BEGIN];
  entry = &gScrVarGlob.variableList[index + VARIABLELIST_CHILD_BEGIN];
  id = entry->hash.id;
  siblingId = parent->hash.u.prev;
  if ( siblingId )
  {
    siblingValue = &gScrVarGlob.variableList[siblingId + VARIABLELIST_CHILD_BEGIN];
 
    assert((siblingValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE);
    assert(!IsObject( siblingValue ));
 
    siblingValue->nextSibling = index;
    siblingIndex = FindVariableIndexInternal(parentId, siblingValue->w.parentLocalId >> VAR_NAME_BITS);
 
    assert(siblingIndex);
  }
  else
  {
    siblingIndex = 0;
    parentValue->nextSibling = id;
  }
  parent->hash.u.prev = id;
  entry->hash.u.prev = siblingIndex;
  gScrVarGlob.variableList[id + VARIABLELIST_CHILD_BEGIN].nextSibling = 0;
  return index;
}

static unsigned int GetNewVariableIndexReverseInternal(unsigned int parentId, unsigned int name)
{
  assert(!FindVariableIndexInternal(parentId, name ));

  unsigned int index = (parentId + name * 101) % (VARIABLELIST_CHILD_SIZE -1) + 1;

  return GetNewVariableIndexReverseInternal2(parentId, name, index);
}


unsigned int __cdecl GetNewObjectVariableReverse(unsigned int parentId, unsigned int id)
{
  assert(VAR_TYPE((&gScrVarGlob.variableList[VARIABLELIST_PARENT_BEGIN + parentId])) == VAR_ARRAY);

  return gScrVarGlob.variableList[GetNewVariableIndexReverseInternal(parentId, id + SL_MAX_STRING_INDEX) + VARIABLELIST_CHILD_BEGIN].hash.id;
}


static void SetVariableEntityFieldValue(unsigned int entId, unsigned int fieldName, VariableValue *value)
{
  VariableValueInternal *entValue;
  VariableValueInternal *entryValue;
  unsigned int fieldId;

  assert(!((value->type & VAR_MASK) >= VAR_THREAD));
  assert(value->type != VAR_STACK);
  entValue = &gScrVarGlob.variableList[entId + VARIABLELIST_PARENT_BEGIN];

  assert(VAR_TYPE(entValue) == VAR_ENTITY);
  assert((entValue->w.classnum >> VAR_NAME_BITS) < CLASS_NUM_COUNT);

  fieldId = FindArrayVariable(gScrClassMap[entValue->w.classnum >> VAR_NAME_BITS].id, fieldName);
  
  if ( !fieldId || !SetEntityFieldValue(entValue->w.classnum >> VAR_NAME_BITS, SCR_GET_ENTITY_FROM_ENTCLIENT(entValue->u.o.u.entnum),
          gScrVarGlob.variableList[fieldId + VARIABLELIST_CHILD_BEGIN].u.u.entityOffset, value) )
  {
    entryValue = &gScrVarGlob.variableList[GetNewVariable(entId, fieldName) + VARIABLELIST_CHILD_BEGIN];
    
    assert(VAR_TYPE(entryValue) == VAR_UNDEFINED);

    entryValue->w.status |= value->type;
    entryValue->u.u = value->u;
  }
}


void __cdecl SetVariableFieldValue(unsigned int id, VariableValue *value)
{
  if ( id )
  {
    SetVariableValue(id, value);
  }
  else
  {
    SetVariableEntityFieldValue(gScrVarPub.entId, gScrVarPub.entFieldName, value);
  }
}

unsigned int __cdecl Scr_GetVariableFieldIndex(unsigned int parentId, unsigned int name)
{
  VariableValueInternal *entryValue;
  unsigned int index;
  int type;
  
  assert(parentId != 0);

  entryValue = &gScrVarGlob.variableList[parentId + VARIABLELIST_PARENT_BEGIN];
  assert((entryValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE);
  assert(IsObject( entryValue ));

  type = VAR_TYPE((&gScrVarGlob.variableList[parentId + VARIABLELIST_PARENT_BEGIN]));
  if ( type <= VAR_OBJECT )
  {
    return GetVariableIndexInternal(parentId, name);
  }
  if ( type == VAR_ENTITY )
  {
    index = FindVariableIndexInternal(parentId, name);
    if ( index )
    {
      return index;
    }
    else
    {
      gScrVarPub.entId = parentId;
      gScrVarPub.entFieldName = name;
      return 0;
    }
  }
  Scr_Error(va("cannot set field of %s", var_typename[type]));
  return 0;
}


void __cdecl Scr_AddClassField(unsigned int classnum, const char *name, unsigned int offset)
{
  VariableValueInternal *entryValue;
  unsigned int fieldId;
  unsigned int str;
  unsigned int classId;
  const char *namePos;

  assert(offset < (1 << 16));

  for ( namePos = name; *namePos; ++namePos )
  {
    assertx((*namePos < 'A' || *namePos > 'Z'), "(name) = %s", name);
  }
  classId = gScrClassMap[classnum].id;
  str = SL_GetCanonicalString(name);

  assert(!FindArrayVariable( classId, str ));

  entryValue = &gScrVarGlob.variableList[GetNewArrayVariable(classId, str) + VARIABLELIST_CHILD_BEGIN];
  entryValue->w.status &= ~VAR_MASK;
  entryValue->w.status |= VAR_INTEGER;
  entryValue->u.u.intValue = (uint16_t)offset;
  str = SL_GetString_(name, 0, 16);

  assert(!FindVariable( classId, str ));

  fieldId = GetNewVariable(classId, str);
  SL_RemoveRefToString(str);
  entryValue = &gScrVarGlob.variableList[fieldId + VARIABLELIST_CHILD_BEGIN];
  entryValue->w.status &= ~VAR_MASK;
  entryValue->w.status |= VAR_INTEGER;
  entryValue->u.u.intValue = (uint16_t)offset;
}

scr_entref_t __cdecl Scr_GetEntityIdRef(unsigned int entId)
{
  VariableValueInternal *entValue;
  scr_entref_t ref;

  entValue = &gScrVarGlob.variableList[entId + VARIABLELIST_PARENT_BEGIN];
  assert((entValue->w.type & VAR_MASK) == VAR_ENTITY);
  assert((entValue->w.name >> VAR_NAME_BITS) < CLASS_NUM_COUNT);

  ref.entnum = entValue->u.o.u.entnum & UNK_ENTNUM_MASK;
  ref.classnum = entValue->w.classnum >> VAR_NAME_BITS;
  return ref;
}

uint32_t __cdecl Scr_GetEntityIdRefExtern(unsigned int entId)
{
  scr_entref_t ref;
  ref = Scr_GetEntityIdRef(entId);

  return *(uint32_t*)&ref;
}


void __cdecl Scr_InitClassMap( )
{
  unsigned int classnum;

  for ( classnum = 0; classnum < CLASS_NUM_COUNT; ++classnum )
  {
    gScrClassMap[classnum].entArrayId = 0;
    gScrClassMap[classnum].id = 0;
  }
}

void __cdecl Scr_RemoveClassMap(unsigned int classnum)
{
  if ( gScrVarPub.bInited )
  {
    if ( gScrClassMap[classnum].entArrayId )
    {
      if ( gScrVarDebugPub )
      {
        --gScrVarDebugPub->extRefCount[gScrClassMap[classnum].entArrayId];
      }
      RemoveRefToObject(gScrClassMap[classnum].entArrayId);
      gScrClassMap[classnum].entArrayId = 0;
    }
    if ( gScrClassMap[classnum].id )
    {
      if ( gScrVarDebugPub )
      {
        --gScrVarDebugPub->extRefCount[gScrClassMap[classnum].id];
      }
      RemoveRefToObject(gScrClassMap[classnum].id);
      gScrClassMap[classnum].id = 0;
    }
  }
}


static unsigned int Scr_GetNumScriptVarsParent( )
{
  return gScrVarPub.numScriptObjects;
}

static unsigned int Scr_GetNumScriptVarsChild( )
{
  return gScrVarPub.numScriptValues;
}

static unsigned int Scr_GetNumScriptThreads( )
{
  return gScrVarPub.numScriptThreads;
}

static double Scr_GetEndonUsage(unsigned int parentId)
{
  unsigned int obj;
  VariableValueInternal *parentValue;
  unsigned int id;

  parentValue = &gScrVarGlob.variableList[parentId + VARIABLELIST_PARENT_BEGIN];
  assert((parentValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE);
  assert(IsObject( parentValue ));

  id = FindObjectVariable(gScrVarPub.pauseArrayId, parentId);
  if ( !id )
  {
    return 0.0;
  }
  obj = FindObject(id);
  return Scr_GetObjectUsage(obj);
}

static double Scr_GetThreadUsage(VariableStackBuffer *stackBuf, float *endonUsage)
{
  const char *v3;
  const char *buf;
  int type;
  unsigned int localId;
  int size;
  float usage;
  VariableUnion u;

  size = stackBuf->size;
  buf = &stackBuf->buf[5 * size];
  usage = Scr_GetObjectUsage(stackBuf->localId);
  *endonUsage = Scr_GetEndonUsage(stackBuf->localId);
  localId = stackBuf->localId;
  while ( size )
  {
    v3 = buf - 4;
    u.intValue = *(int *)v3;
    type = *(uint8_t*)(v3 - 1);
    --size;
    if ( type == VAR_CODEPOS )
    {
      localId = GetParentLocalId(localId);
      usage = Scr_GetObjectUsage(localId) + usage;
      *endonUsage = Scr_GetEndonUsage(localId) + *endonUsage;
    }
    else
    {
      usage = Scr_GetEntryUsage(type, u) + usage;
    }
  }
  return usage;
}



void Scr_DumpScriptThreads( )
{
  int j;
  unsigned int classnum;
  const char *pos;
  ThreadDebugInfo info;
  const char *buf;
  int size;
  VariableValueInternal *entryValue;
  ThreadDebugInfo *pInfo;
  int num;
  char type;
  VariableUnion u;
  int i;
  VariableStackBuffer *stackBuf;
  unsigned int entId;
  ThreadDebugInfo *infoArray;
  int count;
  float endonUsage;
  unsigned int id;
  float varUsage;

  num = 0;
  for ( id = 1; id < VARIABLELIST_CHILD_SIZE; ++id )
  {
    entryValue = &gScrVarGlob.variableList[id + VARIABLELIST_CHILD_BEGIN];
    if (  (entryValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE )
    {
      if ( VAR_TYPE(entryValue) == VAR_STACK )
      {
        ++num;
      }
    }
  }
  if ( num )
  {
    infoArray = (ThreadDebugInfo *)Z_TagMalloc(sizeof(ThreadDebugInfo) * num, TAG_SCRIPTDEBUGGER);
    if ( infoArray )
    {
      num = 0;
      for ( id = 1; id < VARIABLELIST_CHILD_SIZE; ++id )
      {
        entryValue = &gScrVarGlob.variableList[id + VARIABLELIST_CHILD_BEGIN];
        if ( (entryValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE )
        {
          if ( VAR_TYPE(entryValue) == VAR_STACK )
          {
            pInfo = &infoArray[num++];
            info.posSize = 0;
            stackBuf = entryValue->u.u.stackValue;
            size = stackBuf->size;
            pos = stackBuf->pos;
            buf = stackBuf->buf;
            while ( size )
            {
              --size;
              type = *buf++;
              u.intValue = *(int *)buf;
              buf += 4;
              if ( type == VAR_CODEPOS )
              {
                info.pos[info.posSize++] = u.codePosValue;
              }
            }
            info.pos[info.posSize++] = pos;
            pInfo->varUsage = Scr_GetThreadUsage(stackBuf, &pInfo->endonUsage);
            pInfo->posSize = info.posSize--;
            for ( j = 0; j < pInfo->posSize; ++j )
            {
              pInfo->pos[j] = info.pos[info.posSize - j];
            }
          }
        }
      }
      qsort(infoArray, num, sizeof(infoArray[0]), ThreadInfoCompare);
      Com_Printf(CON_CHANNEL_PARSERSCRIPT, "********************************\n");
      varUsage = 0.0;
      endonUsage = 0.0;
      i = 0;
      while ( i < num )
      {
        pInfo = &infoArray[i];
        count = 0;
        info.varUsage = 0.0;
        info.endonUsage = 0.0;
        do
        {
          ++count;
          info.varUsage = info.varUsage + infoArray[i].varUsage;
          info.endonUsage = info.endonUsage + infoArray[i].endonUsage;
          ++i;
        }
        while ( i < num && !ThreadInfoCompare(pInfo, &infoArray[i]) );
        varUsage = varUsage + info.varUsage;
        endonUsage = endonUsage + info.endonUsage;
        Com_Printf(CON_CHANNEL_PARSERSCRIPT, "count: %d, var usage: %d, endon usage: %d\n", count, (signed int)info.varUsage, (signed int)info.endonUsage);
        Scr_PrintPrevCodePos(CON_CHANNEL_PARSERSCRIPT, pInfo->pos[0], qfalse);
        for ( j = 1; j < pInfo->posSize; ++j )
        {
          Com_Printf(CON_CHANNEL_PARSERSCRIPT, "called from:\n");
          Scr_PrintPrevCodePos(CON_CHANNEL_PARSERSCRIPT, pInfo->pos[j], qfalse);
        }
      }
      Z_Free(infoArray);
      Com_Printf(CON_CHANNEL_PARSERSCRIPT, "********************************\n");
      Com_Printf(CON_CHANNEL_PARSERSCRIPT, "var usage: %d, endon usage: %d\n", (signed int)varUsage, (signed int)endonUsage);
      Com_Printf(CON_CHANNEL_PARSERSCRIPT, "\n");
      for ( classnum = 0; classnum < CLASS_NUM_COUNT; ++classnum )
      {
        if ( gScrClassMap[classnum].entArrayId )
        {
          info.varUsage = 0.0;
          count = 0;
          for ( entId = FindFirstSibling(gScrClassMap[classnum].entArrayId); entId; entId = FindNextSibling(entId) )
          {
            ++count;
            if ( VAR_TYPE((&gScrVarGlob.variableList[entId + VARIABLELIST_CHILD_BEGIN])) == VAR_POINTER )
            {
              info.varUsage += Scr_GetObjectUsage(gScrVarGlob.variableList[entId + VARIABLELIST_CHILD_BEGIN].u.next);
            }
          }
          Com_Printf(CON_CHANNEL_PARSERSCRIPT, "ent type '%s'... count: %d, var usage: %d\n", gScrClassMap[classnum].name, count, (signed int)info.varUsage);
        }
      }
      Com_Printf(CON_CHANNEL_PARSERSCRIPT, "********************************\n");
      Com_Printf(CON_CHANNEL_PARSERSCRIPT, "num vars:    %d\n", Scr_GetNumScriptVars());
      Com_Printf(CON_CHANNEL_PARSERSCRIPT, "parent:    %d\n", Scr_GetNumScriptVarsParent());
      Com_Printf(CON_CHANNEL_PARSERSCRIPT, "child:    %d\n", Scr_GetNumScriptVarsChild());
      Com_Printf(CON_CHANNEL_PARSERSCRIPT, "num threads: %d\n", Scr_GetNumScriptThreads());
      Com_Printf(CON_CHANNEL_PARSERSCRIPT, "********************************\n");
    }
    else
    {
      Com_Printf(CON_CHANNEL_PARSERSCRIPT, "Cannot dump script threads: out of memory\n");
    }
  }
}

struct VariableDebugInfo
{
  const char *pos;
  const char *fileName;
  const char *functionName;
  int varUsage;
};

static int VariableInfoCountCompare(const void *info1, const void *info2)
{
  return ((VariableDebugInfo *)info2)->varUsage - ((VariableDebugInfo *)info1)->varUsage;
}


int CompareThreadIndices(const void *arg1, const void *arg2)
{
  return ((VariableDebugInfo *)arg1)->pos - ((VariableDebugInfo *)arg2)->pos;
}

int VariableInfoFileNameCompare(const void *info1, const void *info2)
{
  const char *fileName1;
  const char *fileName2;

  fileName1 = ((VariableDebugInfo *)info1)->fileName;
  fileName2 = ((VariableDebugInfo *)info2)->fileName;
  if ( !fileName1 )
  {
    return 1;
  }
  if ( fileName2 )
  {
    return Q_stricmp(fileName1, fileName2);
  }
  return -1;
}

int VariableInfoFunctionCompare(const void *ainfo1, const void *ainfo2)
{
  const char *functionName2;
  const char *functionName1;
  int fileNameCompare;
  VariableDebugInfo *info1 = (VariableDebugInfo*)ainfo1;
  VariableDebugInfo *info2 = (VariableDebugInfo*)ainfo2;

  fileNameCompare = VariableInfoFileNameCompare(info1, info2);
  if ( fileNameCompare )
  {
    return fileNameCompare;
  }
  functionName1 = info1->functionName;
  functionName2 = info2->functionName;
  if ( !functionName1 )
  {
    return 1;
  }
  if ( functionName2 )
  {
    return Q_stricmp(functionName1, functionName2);
  }
  return -1;
}

int VariableInfoFileLineCompare(const void *info1, const void *info2)
{
  int fileCompare;

  fileCompare = VariableInfoFileNameCompare(info1, info2);
  if ( fileCompare )
  {
    return fileCompare;
  }
  return CompareThreadIndices(info1, info2);
}



void Scr_DumpScriptVariables(bool spreadsheet, bool summary, bool total, bool functionSummary, bool lineSort, const char *fileName, const char *functionName, int minCount)
{
  const char *pos;
  int (*VariableInfoCompareCallBack)(const void *, const void *);
  unsigned int index;
  VariableDebugInfo *pInfo;
  int num;
  int filteredCount;
  int i;
  VariableDebugInfo *infoArray;
  int count;
  unsigned int maxnum;

  if ( gScrVarDebugPub )
  {
    if ( gScrVarPub.developer || (!spreadsheet && !fileName && !functionName && !lineSort && !functionSummary && !minCount) )
    {
      maxnum = VARIABLELIST_CHILD_SIZE + VARIABLELIST_PARENT_SIZE +2;
      infoArray = (VariableDebugInfo *)Z_TagMalloc(sizeof(VariableDebugInfo) * maxnum, TAG_SCRIPTDEBUGGER);
      if ( infoArray )
      {
        num = 0;
        for ( index = 0; index < maxnum; ++index )
        {
          pos = gScrVarDebugPub->varUsage[index];
          if ( pos )
          {
            pInfo = &infoArray[num];
            if ( !fileName || Scr_PrevCodePosFileNameMatches(pos, fileName) )
            {
              if ( functionName || functionSummary )
              {
                pInfo->functionName = Scr_PrevCodePosFunctionName(pos);
              }
              else
              {
                pInfo->functionName = 0;
              }
              if ( !functionName || (pInfo->functionName && Q_stristr(pInfo->functionName, functionName)) )
              {
                pInfo->pos = pos;
                pInfo->fileName = Scr_PrevCodePosFileName(pos);
                pInfo->varUsage = 1;
                ++num;
              }
            }
          }
        }
        if ( total )
        {
          Com_Printf(CON_CHANNEL_DONT_FILTER, "num vars:          %d\n", num);
          Z_Free(infoArray);
        }
        else
        {
          if ( summary )
          {
            VariableInfoCompareCallBack = VariableInfoFileNameCompare;
            qsort(infoArray, num, sizeof(infoArray[0]), VariableInfoFileNameCompare);
          }
          else if ( functionSummary )
          {
            VariableInfoCompareCallBack = VariableInfoFunctionCompare;
            qsort(infoArray, num, sizeof(infoArray[0]), VariableInfoFunctionCompare);
          }
          else
          {
            VariableInfoCompareCallBack = CompareThreadIndices;
            qsort(infoArray, num, sizeof(infoArray[0]), CompareThreadIndices);
          }
          i = 0;
          while ( i < num )
          {
            pInfo = &infoArray[i];
            do
            {
              ++pInfo->varUsage;
              --infoArray[i].varUsage;
              ++i;
            }
            while ( i < num && !VariableInfoCompareCallBack(pInfo, &infoArray[i]) );
          }
          if ( lineSort )
          {
            qsort(infoArray, num, sizeof(infoArray[0]), VariableInfoFileLineCompare);
          }
          else
          {
            qsort(infoArray, num, sizeof(infoArray[0]), VariableInfoCountCompare);
          }
          Com_Printf(CON_CHANNEL_PARSERSCRIPT, "********************************\n");
          if ( spreadsheet )
          {
            if ( summary )
            {
              Com_Printf(CON_CHANNEL_DONT_FILTER, "count\tfile\n");
            }
            else if ( functionSummary )
            {
              Com_Printf(CON_CHANNEL_DONT_FILTER, "count\tfile\tfunction\n");
            }
            else
            {
              Com_Printf(CON_CHANNEL_DONT_FILTER, "count\tfile\tline\tsource\tcol\n");
            }
          }
          count = 0;
          filteredCount = 0;
          for ( i = 0; i < num; ++i )
          {
            pInfo = &infoArray[i];
            if ( infoArray[i].varUsage )
            {
              count += pInfo->varUsage;
              if ( pInfo->varUsage >= minCount )
              {
                filteredCount += pInfo->varUsage;
                if ( spreadsheet )
                {
                  Com_Printf(CON_CHANNEL_DONT_FILTER, "%d\t", pInfo->varUsage);
                  Scr_PrintPrevCodePosSpreadSheet(CON_CHANNEL_DONT_FILTER, pInfo->pos, summary, functionSummary);
                }
                else
                {
                  assert(!summary);
                  Com_Printf(CON_CHANNEL_DONT_FILTER, "count: %d\n", pInfo->varUsage);
                  Scr_PrintPrevCodePos(CON_CHANNEL_DONT_FILTER, pInfo->pos, qfalse);
                }
              }
            }
          }
          assert(num == count);
          Com_Printf(CON_CHANNEL_DONT_FILTER, "********************************\n");
          Com_Printf(CON_CHANNEL_DONT_FILTER, "num vars:          %d\n", filteredCount);
          Com_Printf(CON_CHANNEL_DONT_FILTER, "num unlisted vars: %d\n", Scr_GetNumScriptVars( ) - filteredCount);
          Com_Printf(CON_CHANNEL_DONT_FILTER, "********************************\n");
          Z_Free(infoArray);
        }
      }
      else
      {
        Com_Printf(CON_CHANNEL_PARSERSCRIPT, "Cannot dump script variables: out of memory\n");
      }
    }
  }
}

void __cdecl Scr_IncNumScriptThreads()
{
  ++gScrVarPub.numScriptThreads;
}

void __cdecl Scr_DecNumScriptThreads()
{
  ++gScrVarPub.numScriptThreads;
}


void __cdecl Scr_DumpScriptVariablesDefault( )
{
  Scr_DumpScriptVariables(0, 0, 0, 0, 0, 0, 0, 0);
}

static void __cdecl Scr_ResetScrVarDebugPub( )
{
#ifndef NDEBUG
  gScrVarDebugPub = &gScrVarDebugPubBuff;
#endif
}

static void __cdecl Scr_InitVariableRange(unsigned int begin, unsigned int end)
{
  unsigned int index;
  VariableValueInternal *value;

  for ( index = begin + 1; index < end; ++index )
  {
    value = &gScrVarGlob.variableList[index];
    value->w.status = 0;

    assert(!(value->w.type & VAR_MASK));

    value->hash.id = index - begin;
    value->v.next = index - begin;
    value->u.next = index - begin + 1;
    value->hash.u.prev = index - begin - 1;
  }
  value = &gScrVarGlob.variableList[begin];
  value->w.status = 0;

  assert(!(value->w.type & VAR_MASK));
  
  value->w.status = value->w.status;
  value->hash.id = 0;
  value->v.next = 0;
  value->u.next = 1;
  
  gScrVarGlob.variableList[begin + 1].hash.u.prev = 0;
  value->hash.u.prev = end - begin - 1;
  gScrVarGlob.variableList[end - 1].u.next = 0;
}

void __cdecl Scr_InitVariables( )
{
  int variableCount = (VARIABLELIST_CHILD_SIZE + VARIABLELIST_PARENT_SIZE +3);
  gScrVarGlob.variableList = (VariableValueInternal*)_PMem_AllocNamed(sizeof(VariableValueInternal) * variableCount, 0x80u, 4u, 1u, "ScriptVars", TRACK_SCRIPT);

  if ( !gScrVarDebugPub )
  {
    Scr_ResetScrVarDebugPub();
  }
  if ( gScrVarDebugPub )
  {
    gScrVarDebugPub->leakCount = (int *)_PMem_AllocNamed(variableCount * sizeof(int), 4u, 4u, 1u, "ScriptVars", TRACK_SCRIPT);
    memset(gScrVarDebugPub->leakCount, 0, variableCount * sizeof(int));
  }
  gScrVarPub.totalObjectRefCount = 0;
  gScrVarPub.totalVectorRefCount = 0;
  if ( gScrVarDebugPub )
  {
    gScrVarDebugPub->extRefCount = (uint16_t *)_PMem_AllocNamed(VARIABLELIST_PARENT_SIZE * sizeof(uint16_t), 4u, 4u, 1u, "ScriptVars", TRACK_SCRIPT);
    memset(gScrVarDebugPub->extRefCount, 0, VARIABLELIST_PARENT_SIZE * sizeof(uint16_t));
  }
  gScrVarPub.numScriptValues = 0;
  gScrVarPub.numScriptObjects = 0;
  if ( gScrVarDebugPub )
  {
    gScrVarDebugPub->varUsage = (const char **)_PMem_AllocNamed(variableCount * sizeof(int), 4u, 4u, 1u, "ScriptVars", TRACK_SCRIPT);
    memset((char *)gScrVarDebugPub->varUsage, 0, variableCount * sizeof(int));
  }
  Scr_InitVariableRange(VARIABLELIST_PARENT_BEGIN, VARIABLELIST_PARENT_BEGIN + VARIABLELIST_PARENT_SIZE);
  Scr_InitVariableRange(VARIABLELIST_CHILD_BEGIN, VARIABLELIST_CHILD_BEGIN + VARIABLELIST_CHILD_SIZE);

}

#define _LEAKED_ 0

void __cdecl Scr_ClearScrVarDebugPub( )
{
  gScrVarDebugPub = NULL;
}

static void __cdecl Scr_CheckLeakRange(unsigned int begin, unsigned int end)
{
  VariableValueInternal *entry;
  int index;
  VariableValueInternal *value;

  for ( index = 1; index < (signed int)(end - begin); ++index )
  {
    entry = &gScrVarGlob.variableList[index + begin];
    value = &gScrVarGlob.variableList[entry->hash.id + begin];
    switch ( value->w.status & 0x60 )
    {
      case VAR_STAT_MOVABLE:
        Com_Printf(CON_CHANNEL_PARSERSCRIPT, "move: %d -> %d\n", entry->hash.id + begin, gScrVarGlob.variableList[value->v.next + begin].hash.id + begin);
        break;
      case VAR_STAT_HEAD:
        Com_Printf(CON_CHANNEL_PARSERSCRIPT, "head: %d -> %d\n", entry->hash.id + begin, gScrVarGlob.variableList[value->v.next + begin].hash.id + begin);
        break;
      case VAR_STAT_EXTERNAL:
        Com_Printf(CON_CHANNEL_PARSERSCRIPT, "ext: %d %d\n", entry->hash.id + begin, gScrVarGlob.variableList[value->v.next + begin].hash.id + begin);
        break;
      default:
        continue;
    }
    Com_Printf(CON_CHANNEL_PARSERSCRIPT, "%d -> %d\n", entry->hash.id + begin, gScrVarGlob.variableList[value->nextSibling + begin].hash.id);
    Com_Printf(CON_CHANNEL_PARSERSCRIPT, "%d <- %d\n", entry->hash.id + begin, gScrVarGlob.variableList[entry->hash.u.prev + begin].hash.id);
    continue;
  }
}



static void __cdecl Scr_CheckLeaks()
{
  bool bLeak;
  unsigned int id;

  if ( !SL_IsDebugging() )
  {
    Scr_CheckLeakRange(VARIABLELIST_PARENT_BEGIN, VARIABLELIST_PARENT_BEGIN + VARIABLELIST_PARENT_SIZE);
    Scr_CheckLeakRange(VARIABLELIST_CHILD_BEGIN, VARIABLELIST_CHILD_BEGIN + VARIABLELIST_CHILD_SIZE);

    assert(!gScrVarPub.totalObjectRefCount);
    assert(!gScrVarPub.totalVectorRefCount);
    //assert(!gScrVarPub.ext_threadcount);
  }
  if ( gScrVarDebugPub )
  {
    bLeak = 0;
    
    for ( id = 0; id < VARIABLELIST_CHILD_BEGIN + VARIABLELIST_CHILD_SIZE; ++id )
    {
      if ( gScrVarDebugPub->leakCount[id] )
      {
        bLeak = 1;
      }
    }
    if ( bLeak )
    {
      Com_Printf(CON_CHANNEL_PARSERSCRIPT, "leak:\n");
      for ( id = 0; id < VARIABLELIST_CHILD_BEGIN + VARIABLELIST_CHILD_SIZE; ++id )
      {
        if ( gScrVarDebugPub->leakCount[id] )
        {
          Com_Printf(CON_CHANNEL_PARSERSCRIPT, "%d, %d\n", id, gScrVarDebugPub->leakCount[id]);
        }
      }
      Com_Printf(CON_CHANNEL_PARSERSCRIPT, "\n");
      if ( !SL_IsDebugging() )
      {
        assert(_LEAKED_);
      }
    }
    Scr_ClearScrVarDebugPub( );
  }
}


void __cdecl Scr_ShutdownVariables( )
{
  if ( gScrVarPub.gameId )
  {
    FreeValue(gScrVarPub.gameId);
    gScrVarPub.gameId = 0;
  }
  if ( !SL_IsDebugging() )
  {
    assertx(gScrVarPub.numScriptValues == 0, "gScrVarPub.numScriptValues = %i", gScrVarPub.numScriptValues);
    assertx(gScrVarPub.numScriptObjects == 0, "gScrVarPub.numScriptObjects = %i", gScrVarPub.numScriptObjects);
  }
  Scr_CheckLeaks( );
}



const char *Scr_GetSourceFile_FastFile(const char *filename)
{
  RawFile *rawfile;

  rawfile = DB_FindXAssetHeader(ASSET_TYPE_RAWFILE, filename, true, 100).rawfile;
  if ( !rawfile )
  {
    Com_Error(ERR_DROP, "cannot find %s'", filename);
  }
  return rawfile->buffer;
}



const char* Scr_GetSourceFile_LoadObj(const char *filename)
{
  char *sourceBuffer;
  int len;
  int f;

  len = FS_FOpenFileRead(filename, &f);
  if ( len < 0 )
  {
    Com_Error(ERR_DROP, "cannot find '%s'", filename);
  }
  sourceBuffer = (char*)Hunk_AllocateTempMemoryHigh(len + 1);
  FS_Read(sourceBuffer, len, f);
  sourceBuffer[len] = 0;
  FS_FCloseFile(f);
  return sourceBuffer;
}

void Scr_AddFieldsForFile(const char *filename)
{
  int tempType;
  const char *sourceBuffer;
  int len;
  int size;
  char *targetPos;
  unsigned int index;
  int type;
  const char *sourcePos;
  char *token;
  int i;

//  Hunk_CheckTempMemoryHighClear();

  if ( useFastFile->boolean )
  {
    sourceBuffer = Scr_GetSourceFile_FastFile(filename);
  }
  else
  {
    sourceBuffer = Scr_GetSourceFile_LoadObj(filename);
  }
  sourcePos = sourceBuffer;
  Com_BeginParseSession("Scr_AddFields");
  targetPos = ((char*)TempMalloc(0)) - 1;

  for ( ; ; )
  {
    token = (char *)Com_Parse(&sourcePos);
    if ( !sourcePos )
    {
      break;
    }
    if ( !strcmp(token, "float") )
    {
      type = VAR_FLOAT;
    }
    else if ( !strcmp(token, "int") )
    {
      type = VAR_INTEGER;
    }
    else if ( !strcmp(token, "string") )
    {
      type = VAR_STRING;
    }
    else if ( !strcmp(token, "vector") )
    {
      type = VAR_VECTOR;
    }
    else
    {
      Com_Error(ERR_DROP, "unknown type '%s' in '%s'", token, filename);
      return;
    }
    token = (char *)Com_Parse(&sourcePos);
    if ( !sourcePos )
    {
      Com_Error(ERR_DROP, "missing field name in '%s'", filename);
      return;
    }
    len = strlen(token) +1;
    for ( i = len -1; i >= 0; --i )
    {
      token[i] = tolower(token[i]);
    }
    index = SL_GetCanonicalString(token);
    if ( Scr_FindField(token, &tempType) )
    {
      Com_Error(ERR_DROP, "duplicate key '%s' in '%s'", token, filename);
    }

    assert(targetPos == ((char*)TempMalloc( 0 )) - 1);

    TempMemorySetPos(targetPos);
    size = len + 4;
    targetPos = (char*)TempMalloc(size);

    strcpy(targetPos, token);

    targetPos += len;
    *(uint16_t *)targetPos = index;
    targetPos += 2;
    *targetPos++ = type;
    *targetPos = 0;
  }
  Com_EndParseSession();
  Hunk_ClearTempMemoryHigh();
}

void Scr_AddFields_FastFile(const char *path, const char *extension)
{
  char filename[MAX_QPATH];

  gScrVarPub.fieldBuffer = (char*)TempMalloc(1);
  *(char*)gScrVarPub.fieldBuffer = 0;
  Com_sprintf(filename, sizeof(filename), "%s/%s.%s", path, "keys", extension);

  Scr_AddFieldsForFile(filename);
}


void Scr_AddFields_LoadObj(const char *path, const char *extension)
{
  char filename[MAX_QPATH];
  int numFiles;
  int i;
  const char **files;

  files = FS_ListFiles(path, extension, 0, &numFiles);
  gScrVarPub.fieldBuffer = (char*)TempMalloc(1);
  *(char*)gScrVarPub.fieldBuffer = 0;
  for ( i = 0; i < numFiles; ++i )
  {
      assert(strlen( path ) + strlen( files[i] ) +1 < MAX_QPATH);

      Com_sprintf(filename, sizeof(filename), "%s/%s", path, files[i]);
      Scr_AddFieldsForFile(filename);
  }
  if ( files )
  {
    FS_FreeFileList(files);
  }
}

void __cdecl Scr_AddFields(const char *path, const char *extension)
{
  if ( useFastFile->boolean )
  {
    Scr_AddFields_FastFile(path, extension);
  }
  else
  {
    Scr_AddFields_LoadObj(path, extension);
  }
}

static unsigned int __cdecl Scr_FindArrayIndex(unsigned int parentId, VariableValue *index)
{
  unsigned int id;

  if ( index->type == VAR_INTEGER )
  {
    if ( IsValidArrayIndex(index->u.intValue) )
    {
      return FindArrayVariable(parentId, index->u.intValue);
    }
    Scr_Error(va("array index %d out of range", index->u.intValue));
    AddRefToObject(parentId);
    return 0;
  }
  if ( index->type == VAR_STRING )
  {
    id = FindVariable(parentId, index->u.intValue);
    SL_RemoveRefToString(index->u.intValue);
    return id;
  }
  Scr_Error(va("%s is not an array index", var_typename[index->type]));
  AddRefToObject(parentId);
  return 0;
}


void __cdecl Scr_EvalArray(VariableValue *value, VariableValue *index)
{
  unsigned int arridx;
  char c[2];
  const char *s;
  VariableValueInternal *entryValue;

  assert( value != index);
  switch ( value->type )
  {
    case VAR_POINTER:

      entryValue = &gScrVarGlob.variableList[value->u.intValue + VARIABLELIST_PARENT_BEGIN];

      assert((entryValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE);
      assert(IsObject( entryValue ));

      if ( (VAR_TYPE(entryValue)) == VAR_ARRAY )
      {
        arridx = Scr_FindArrayIndex(value->u.intValue, index);
        *index = Scr_EvalVariable(arridx);
        RemoveRefToObject(value->u.intValue);
      }
      else
      {
        gScrVarPub.error_index = 1;
        Scr_Error(va("%s is not an array", var_typename[VAR_TYPE(entryValue)]));
      }
      break;
    case VAR_STRING:
      if ( index->type == VAR_INTEGER )
      {
        if ( index->u.intValue < 0 || (s = SL_ConvertToString(value->u.intValue), index->u.intValue >= (signed int)strlen(s)) )
        {
          Scr_Error(va("string index %d out of range", index->u.intValue));
        }
        else
        {
          index->type = VAR_STRING;
          c[0] = s[index->u.intValue];
          c[1] = 0;
          index->u.intValue = SL_GetStringOfSize(c, 0, 2u, 15);
          SL_RemoveRefToString(value->u.intValue);
        }
      }
      else
      {
        Scr_Error(va("%s is not a string index", var_typename[index->type]));
      }
      break;
    case VAR_VECTOR:
      if ( index->type == VAR_INTEGER )
      {
        if ( (unsigned int)index->u.intValue >= 3u )
        {
          Scr_Error(va("vector index %d out of range", index->u.intValue));
        }
        else
        {
          index->type = VAR_FLOAT;
          index->u.floatValue = value->u.vectorValue[index->u.intValue];
          RemoveRefToVector(value->u.vectorValue);
        }
      }
      else
      {
        Scr_Error(va("%s is not a vector index", var_typename[index->type]));
      }
      break;
    default:
      assert(value->type != VAR_STACK);
      gScrVarPub.error_index = 1;
      Scr_Error(va("%s is not an array, string, or vector", var_typename[value->type]));
      break;
  }
}


bool __cdecl Scr_CastString(VariableValue *value)
{
  const float *constTempVector;

  switch ( value->type )
  {
    case VAR_STRING:
      return true;
    case VAR_INTEGER:
      value->type = VAR_STRING;
      value->u.intValue = SL_GetStringForInt(value->u.intValue);
      return true;
    case VAR_FLOAT:
      value->type = VAR_STRING;
      value->u.intValue = SL_GetStringForFloat(value->u.floatValue);
      return true;
    case VAR_VECTOR:
      value->type = VAR_STRING;
      constTempVector = value->u.vectorValue;
      value->u.intValue = SL_GetStringForVector(value->u.vectorValue);
      RemoveRefToVector(constTempVector);
      return true;
    default:
      gScrVarPub.error_message = va("cannot cast %s to string", var_typename[value->type]);
      RemoveRefToValue(value->type, value->u);
      value->type = VAR_UNDEFINED;
      return false;
  }
  return false;
}

static void Scr_ClearVector(VariableValue *value)
{
  int i;

  for ( i = 2; i >= 0; --i )
  {
    RemoveRefToValue(value[i].type, value[i].u);
  }
  value->type = VAR_UNDEFINED;
}

void __cdecl Scr_CastVector(VariableValue *value)
{
  int type;
  int i;
  vec3_t vec;

  for ( i = 2; i >= 0; --i )
  {
    type = value[i].type;
    if ( type == VAR_FLOAT )
    {
      vec[2 - i] = value[i].u.floatValue;
    }
    else
    {
      if ( type != VAR_INTEGER )
      {
        gScrVarPub.error_index = i + 1;
        Scr_ClearVector(value);
        Scr_Error(va("type %s is not a float", var_typename[type]));
        return;
      }
      vec[2 - i] = (float)value[i].u.intValue;
    }
  }
  value->type = VAR_VECTOR;
  value->u.vectorValue = Scr_AllocVector(vec);
}


void Scr_CastDebugString(VariableValue *value)
{
  const char *s;
  unsigned int stringValue;

  switch ( value->type )
  {
    case VAR_POINTER:
      stringValue = SL_GetString_(var_typename[Scr_GetObjectType(value->u.pointerValue)], 0, 15);
      break;
    case VAR_STRING:
    case VAR_VECTOR:
    case VAR_FLOAT:
    case VAR_INTEGER:
      Scr_CastString(value);
      return;
    case VAR_ISTRING:
      value->type = VAR_STRING;
      return;
    case VAR_ANIMATION:
      s = XAnimGetAnimDebugName(Scr_GetAnims(value->u.pointerValue >> 16), (uint16_t)value->u.pointerValue);
      stringValue = SL_GetString_(s, 0, 15);
      break;
    default:
      stringValue = SL_GetString_(var_typename[value->type], 0, 15);
      break;
  }
  RemoveRefToValue(value->type, value->u);
  value->type = VAR_STRING;
  value->u.intValue = stringValue;
}


void Scr_UnmatchingTypesError(VariableValue *value1, VariableValue *value2)
{
  int type1;
  int type2;
  char *error_message;

  if ( gScrVarPub.error_message )
  {
    error_message = NULL;
  }
  else
  {
    type1 = value1->type;
    type2 = value2->type;
    Scr_CastDebugString(value1);
    Scr_CastDebugString(value2);

    assert(value1->type == VAR_STRING);
    assert(value2->type == VAR_STRING);

    error_message = va("pair '%s' and '%s' has unmatching types '%s' and '%s'", SL_ConvertToString(value1->u.intValue), SL_ConvertToString(value2->u.intValue), var_typename[type1], var_typename[type2]);
  }
  RemoveRefToValue(value1->type, value1->u);
  value1->type = VAR_UNDEFINED;
  RemoveRefToValue(value2->type, value2->u);
  value2->type = VAR_UNDEFINED;
  Scr_Error(error_message);
}



void __regparm2 Scr_CastWeakerPair(VariableValue *value1, VariableValue *value2)
{
  float *tempVector;
  int type1;
  int type2;

  type1 = value1->type;
  type2 = value2->type;
  if ( type1 != type2 )
  {
    if ( type1 == VAR_FLOAT && type2 == VAR_INTEGER )
    {
      value2->type = VAR_FLOAT;
      value2->u.floatValue = (float)value2->u.intValue;
      return;
    }
    if ( type1 == VAR_INTEGER && type2 == VAR_FLOAT )
    {
      value1->type = VAR_FLOAT;
      value1->u.floatValue = (float)value1->u.intValue;
      return;
    }
    if ( type1 == VAR_VECTOR )
    {
      if ( type2 == VAR_FLOAT )
      {
        tempVector = Scr_AllocVectorInternal( );
        tempVector[0] = value2->u.floatValue;
        tempVector[1] = value2->u.floatValue;
        tempVector[2] = value2->u.floatValue;
        value2->u.vectorValue = tempVector;
        value2->type = VAR_VECTOR;
        return;
      }
      if ( type2 == VAR_INTEGER )
      {
        tempVector = Scr_AllocVectorInternal( );
        tempVector[0] = (float)value2->u.intValue;
        tempVector[1] = (float)value2->u.intValue;
        tempVector[2] = (float)value2->u.intValue;
        value2->u.vectorValue = tempVector;
        value2->type = VAR_VECTOR;
        return;
      }
    }
    if ( type2 != VAR_VECTOR )
    {
      Scr_UnmatchingTypesError(value1, value2);
      return;
    }
    if ( type1 == VAR_FLOAT )
    {
      tempVector = Scr_AllocVectorInternal( );
      tempVector[0] = value1->u.floatValue;
      tempVector[1] = value1->u.floatValue;
      tempVector[2] = value1->u.floatValue;
      value1->u.vectorValue = tempVector;
      value1->type = VAR_VECTOR;
      return;
    }
    if ( type1 != VAR_INTEGER )
    {
      Scr_UnmatchingTypesError(value1, value2);
    }
    else
    {
      tempVector = Scr_AllocVectorInternal( );
      tempVector[0] = (float)value1->u.intValue;
      tempVector[1] = (float)value1->u.intValue;
      tempVector[2] = (float)value1->u.intValue;
      value1->u.vectorValue = tempVector;
      value1->type = VAR_VECTOR;
    }
  }
}


void __cdecl Scr_EvalSizeValue(VariableValue *value)
{
  unsigned int stringValue;
  char *error_message;
  VariableValueInternal *entryValue;
  unsigned int id;

  if ( value->type == VAR_POINTER )
  {
    id = value->u.intValue;
    entryValue = &gScrVarGlob.variableList[value->u.intValue + VARIABLELIST_PARENT_BEGIN];
    value->type = VAR_INTEGER;
    if ( VAR_TYPE(entryValue) == VAR_ARRAY )
    {
      value->u.intValue = entryValue->u.o.u.size;
    }
    else
    {
      value->u.intValue = 1;
    }
    RemoveRefToObject(id);
  }
  else if ( value->type == VAR_STRING )
  {
    value->type = VAR_INTEGER;
    stringValue = value->u.intValue;
    value->u.intValue = strlen(SL_ConvertToString(value->u.intValue));
    SL_RemoveRefToString(stringValue);
  }
  else
  {
    assert(value->type != VAR_STACK);

    error_message = va("size cannot be applied to %s", var_typename[value->type]);
    RemoveRefToValue(value->type, value->u);
    value->type = VAR_UNDEFINED;
    Scr_Error(error_message);
  }
}

void __cdecl Scr_CastBool(VariableValue *value)
{
  int type;

  if ( value->type == VAR_INTEGER )
  {
    value->u.intValue = value->u.intValue != 0;
  }
  else if ( value->type == VAR_FLOAT )
  {
    value->type = VAR_INTEGER;
    value->u.intValue = value->u.floatValue != 0.0;
  }
  else
  {
    type = value->type;
    RemoveRefToValue(value->type, value->u);
    value->type = VAR_UNDEFINED;
    Scr_Error(va("cannot cast %s to bool", var_typename[type]));
  }
}


void __cdecl Scr_CastWeakerStringPair(VariableValue *value1, VariableValue *value2)
{
  const float *constTempVector;
  int type1;
  int type2;

  type1 = value1->type;
  type2 = value2->type;
  if ( type1 != type2 )
  {
    if ( type1 < type2 )
    {
      if ( type1 == VAR_STRING )
      {
        switch ( type2 )
        {
          case VAR_VECTOR:
            value2->type = VAR_STRING;
            constTempVector = value2->u.vectorValue;
            value2->u.intValue = SL_GetStringForVector(value2->u.vectorValue);
            RemoveRefToVector(constTempVector);
            return;
          case VAR_FLOAT:
            value2->type = VAR_STRING;
            value2->u.intValue = SL_GetStringForFloat(value2->u.floatValue);
            return;
          case VAR_INTEGER:
            value2->type = VAR_STRING;
            value2->u.intValue = SL_GetStringForInt(value2->u.intValue);
            return;
        }
      }
      else if ( type1 != VAR_FLOAT )
      {
        Scr_UnmatchingTypesError(value1, value2);
        return;
      }
      if ( type2 == VAR_INTEGER )
      {
        value2->type = VAR_FLOAT;
        value2->u.floatValue = (float)value2->u.intValue;
        return;
      }
      Scr_UnmatchingTypesError(value1, value2);
      return;
    }
    if ( type2 == VAR_STRING )
    {
      switch ( type1 )
      {
        case VAR_VECTOR:
          value1->type = VAR_STRING;
          constTempVector = value1->u.vectorValue;
          value1->u.intValue = SL_GetStringForVector(value1->u.vectorValue);
          RemoveRefToVector(constTempVector);
          return;
        case VAR_FLOAT:
          value1->type = VAR_STRING;
          value1->u.intValue = SL_GetStringForFloat(value1->u.floatValue);
          return;
        case VAR_INTEGER:
          value1->type = VAR_STRING;
          value1->u.intValue = SL_GetStringForInt(value1->u.intValue);
          return;
      }
    }
    else if ( type2 != VAR_FLOAT )
    {
      Scr_UnmatchingTypesError(value1, value2);
      return;
    }
    if ( type1 == VAR_INTEGER )
    {
      value1->type = VAR_FLOAT;
      value1->u.floatValue = (float)value1->u.intValue;
      return;
    }
    Scr_UnmatchingTypesError(value1, value2);
    return;
  }
}



unsigned int __cdecl Scr_EvalFieldObject(unsigned int tempVariable, VariableValue *value)
{
  int type;
  VariableValue tempValue;

  type = value->type;
  if(type == VAR_POINTER)
  {
    type = gScrVarGlob.variableList[value->u.intValue + VARIABLELIST_PARENT_BEGIN].w.type & VAR_MASK;
    if(type < VAR_ARRAY)
    {
      assert(type >= FIRST_OBJECT);

      tempValue.type = VAR_POINTER;
      tempValue.u.intValue = value->u.intValue;
      SetVariableValue(tempVariable, &tempValue);
      return tempValue.u.intValue;
    }
  }
  RemoveRefToValue(value->type, value->u);
  Scr_Error(va("%s is not a field object", var_typename[type]));
  return 0;  
}


unsigned int __cdecl Scr_EvalVariableObject(unsigned int id)
{
  VariableValueInternal *entryValue;
  int type;

  entryValue = &gScrVarGlob.variableList[id + VARIABLELIST_CHILD_BEGIN];
  assert(((entryValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE) || !id);

  type = entryValue->w.type & VAR_MASK;

  if(type == VAR_POINTER)
  {
    type = gScrVarGlob.variableList[entryValue->u.u.intValue + VARIABLELIST_PARENT_BEGIN].w.type & VAR_MASK;
    if(type < VAR_ARRAY)
    {
      assert(type >= FIRST_OBJECT);
      return entryValue->u.u.intValue;
    }
  }
  Scr_Error(va("%s is not a field object", var_typename[type]));
  return 0;

}


void __cdecl Scr_EvalOr(VariableValue *value1, VariableValue *value2)
{
  if ( value1->type != VAR_INTEGER || value2->type != VAR_INTEGER )
  {
    Scr_UnmatchingTypesError(value1, value2);
  }
  else
  {
    value1->u.intValue |= value2->u.intValue;
  }
}

void __cdecl Scr_EvalAnd(VariableValue *value1, VariableValue *value2)
{
  if ( value1->type != VAR_INTEGER || value2->type != VAR_INTEGER )
  {
    Scr_UnmatchingTypesError(value1, value2);
  }
  else
  {
    value1->u.intValue &= value2->u.intValue;
  }
}


void __cdecl Scr_EvalExOr(VariableValue *value1, VariableValue *value2)
{
  if ( value1->type != VAR_INTEGER || value2->type != VAR_INTEGER )
  {
    Scr_UnmatchingTypesError(value1, value2);
  }
  else
  {
    value1->u.intValue ^= value2->u.intValue;
  }
}


void __cdecl Scr_EvalPlus(VariableValue *value1, VariableValue *value2)
{
  unsigned int s;
  float *vec;
  int s1len;
  const char *s1;
  const char *s2;
  char str[8192];
  unsigned int len;

  Scr_CastWeakerStringPair(value1, value2);
  assert(value1->type == value2->type);

  switch ( value1->type )
  {
    case VAR_STRING:
      s1 = SL_ConvertToString(value1->u.stringValue);
      s2 = SL_ConvertToString(value2->u.stringValue);
      s1len = SL_GetStringLen(value1->u.stringValue);
      len = s1len + SL_GetStringLen(value2->u.stringValue) + 1;
      if(len >= sizeof(str)){
        SL_RemoveRefToString(value1->u.stringValue);
        SL_RemoveRefToString(value2->u.stringValue);
        value1->type = VAR_UNDEFINED;
        value2->type = VAR_UNDEFINED;
        Scr_Error(va("cannot concat \"%s\" and \"%s\" - max string length exceeded", s1, s2));
        return;
      }
      strcpy(str, s1);
      strcpy(str + s1len, s2);

      s = SL_GetStringOfSize(str, 0, len, 15);

      SL_RemoveRefToString(value1->u.stringValue);
      SL_RemoveRefToString(value2->u.stringValue);
      value1->u.stringValue = s;
      break;
    case VAR_VECTOR:
      vec = Scr_AllocVectorInternal();
      VectorAdd(value1->u.vectorValue, value2->u.vectorValue, vec);
      RemoveRefToVector(value1->u.vectorValue);
      RemoveRefToVector(value2->u.vectorValue);
      value1->u.vectorValue = vec;
      break;
    case VAR_FLOAT:
      value1->u.floatValue = value1->u.floatValue + value2->u.floatValue;
      break;
    case VAR_INTEGER:
      value1->u.intValue += value2->u.intValue;
      break;
    default:
      Scr_UnmatchingTypesError(value1, value2);
      break;
  }
}


void __cdecl Scr_EvalMinus(VariableValue *value1, VariableValue *value2)
{
  float *tempVector;

  Scr_CastWeakerPair(value1, value2);
  assert(value1->type == value2->type);

  switch ( value1->type )
  {
    case VAR_VECTOR:
      tempVector = Scr_AllocVectorInternal();
      VectorSubtract(value1->u.vectorValue, value2->u.vectorValue, tempVector);
      RemoveRefToVector(value1->u.vectorValue);
      RemoveRefToVector(value2->u.vectorValue);
      value1->u.vectorValue = tempVector;
      break;
    case VAR_FLOAT:
      value1->u.floatValue = value1->u.floatValue - value2->u.floatValue;
      break;
    case VAR_INTEGER:
      value1->u.intValue -= value2->u.intValue;
      break;
    default:
      Scr_UnmatchingTypesError(value1, value2);
      break;
  }
}


void __cdecl Scr_EvalMultiply(VariableValue *value1, VariableValue *value2)
{
  float *tempVector;

  Scr_CastWeakerPair(value1, value2);
  assert(value1->type == value2->type);

  switch ( value1->type )
  {
    case VAR_VECTOR:
      tempVector = Scr_AllocVectorInternal( );
      tempVector[0] = value1->u.vectorValue[0] * value2->u.vectorValue[0];
      tempVector[1] = value1->u.vectorValue[1] * value2->u.vectorValue[1];
      tempVector[2] = value1->u.vectorValue[2] * value2->u.vectorValue[2];

      RemoveRefToVector(value1->u.vectorValue);
      RemoveRefToVector(value2->u.vectorValue);
      value1->u.vectorValue = tempVector;
      break;
    case VAR_FLOAT:
      value1->u.floatValue = value1->u.floatValue * value2->u.floatValue;
      break;
    case VAR_INTEGER:
      value1->u.intValue = value1->u.intValue * value2->u.intValue;
      break;
    default:
      Scr_UnmatchingTypesError(value1, value2);
      break;
  }
}

void __cdecl Scr_EvalDivide(VariableValue *value1, VariableValue *value2)
{
  float *tempVector;

  Scr_CastWeakerPair(value1, value2);
  assert(value1->type == value2->type);

  switch ( value1->type )
  {
    case VAR_VECTOR:
      tempVector = Scr_AllocVectorInternal( );
      if ( value2->u.vectorValue[0] != 0.0 && value2->u.vectorValue[1] != 0.0 && value2->u.vectorValue[2] != 0.0 )
      {
        tempVector[0] = value1->u.vectorValue[0] / value2->u.vectorValue[0];
        tempVector[1] = value1->u.vectorValue[1] / value2->u.vectorValue[1];
        tempVector[2] = value1->u.vectorValue[2] / value2->u.vectorValue[2];

        RemoveRefToVector(value1->u.vectorValue);
        RemoveRefToVector(value2->u.vectorValue);
        value1->u.vectorValue = tempVector;
      }
      else
      {
        VectorClear(tempVector);

        RemoveRefToVector(value1->u.vectorValue);
        RemoveRefToVector(value2->u.vectorValue);
        value1->u.vectorValue = tempVector;
        Scr_Error("divide by 0");
      }
      break;
    case VAR_FLOAT:
      if ( value2->u.floatValue == 0.0 )
      {
        value1->u.floatValue = 0.0;
        Scr_Error("divide by 0");
      }
      else
      {
        value1->u.floatValue = value1->u.floatValue / value2->u.floatValue;
      }
      break;
    case VAR_INTEGER:
      value1->type = VAR_FLOAT;
      if ( value2->u.intValue )
      {
        value1->u.floatValue = (float)value1->u.intValue / (float)value2->u.intValue;
      }
      else
      {
        value1->u.floatValue = 0.0;
        Scr_Error("divide by 0");
      }
      break;
    default:
      Scr_UnmatchingTypesError(value1, value2);
      break;
  }
}


void __cdecl Scr_EvalMod(VariableValue *value1, VariableValue *value2)
{
  if ( value1->type != VAR_INTEGER || value2->type != VAR_INTEGER )
  {
    Scr_UnmatchingTypesError(value1, value2);
  }
  else if ( value2->u.intValue )
  {
    value1->u.intValue = value1->u.intValue % value2->u.intValue;
  }
  else
  {
    value1->u.intValue = 0;
    Scr_Error("divide by 0");
  }
}


void __cdecl Scr_EvalLess(VariableValue *value1, VariableValue *value2)
{
  Scr_CastWeakerPair(value1, value2);
  assert(value1->type == value2->type);

  if ( value1->type == VAR_FLOAT )
  {
    value1->type = VAR_INTEGER;
    value1->u.intValue = value2->u.floatValue > value1->u.floatValue;
  }
  else if ( value1->type == VAR_INTEGER )
  {
    value1->u.intValue = value1->u.intValue < value2->u.intValue;
  }
  else
  {
    Scr_UnmatchingTypesError(value1, value2);
  }
}


void __cdecl Scr_EvalGreater(VariableValue *value1, VariableValue *value2)
{

  Scr_CastWeakerPair(value1, value2);
  assert(value1->type == value2->type);

  if ( value1->type == VAR_FLOAT )
  {
    value1->type = VAR_INTEGER;
    value1->u.intValue = value1->u.floatValue > value2->u.floatValue;
  }
  else if ( value1->type == VAR_INTEGER )
  {
    value1->u.intValue = value1->u.intValue > value2->u.intValue;
  }
  else
  {
    Scr_UnmatchingTypesError(value1, value2);
  }
}

void __cdecl Scr_EvalGreaterEqual(VariableValue *value1, VariableValue *value2)
{
  Scr_EvalLess(value1, value2);
  assert((value1->type == VAR_INTEGER) || (value1->type == VAR_UNDEFINED));

  value1->u.intValue = value1->u.intValue == 0;
}


void __cdecl Scr_EvalLessEqual(VariableValue *value1, VariableValue *value2)
{
  Scr_EvalGreater(value1, value2);
  assert((value1->type == VAR_INTEGER) || (value1->type == VAR_UNDEFINED));

  value1->u.intValue = value1->u.intValue == 0;
}

void __cdecl Scr_EvalEquality(VariableValue *value1, VariableValue *value2)
{
  int tempInt;
  int equal;

  Scr_CastWeakerPair(value1, value2);
  assert(value1->type == value2->type);

  switch ( value1->type )
  {
    case VAR_UNDEFINED:
      value1->type = VAR_INTEGER;
      value1->u.intValue = 1;
      break;
    case VAR_STRING:
    case VAR_ISTRING:
      value1->type = VAR_INTEGER;
      tempInt = value1->u.intValue == value2->u.intValue;
      SL_RemoveRefToString(value1->u.intValue);
      SL_RemoveRefToString(value2->u.intValue);
      value1->u.intValue = tempInt;
      break;
    case VAR_VECTOR:
      value1->type = VAR_INTEGER;
      equal = VectorCompare(value1->u.vectorValue, value2->u.vectorValue);
      RemoveRefToVector(value1->u.vectorValue);
      RemoveRefToVector(value2->u.vectorValue);
      value1->u.intValue = equal;
      break;
    case VAR_FLOAT:
      value1->type = VAR_INTEGER;
      value1->u.intValue = fabs(value1->u.floatValue - value2->u.floatValue) < 0.000001;
      break;
    case VAR_INTEGER:
      value1->u.intValue = value1->u.intValue == value2->u.intValue;
      break;
    case VAR_FUNCTION:
      value1->type = VAR_INTEGER;
      value1->u.intValue = value1->u.intValue == value2->u.intValue;
      break;
    case VAR_ANIMATION:
      value1->type = VAR_INTEGER;
      value1->u.intValue = value1->u.intValue == value2->u.intValue;
      break;
    case VAR_BEGIN_REF:
      if ( !(((gScrVarGlob.variableList[value1->u.intValue + VARIABLELIST_CHILD_BEGIN].w.type & VAR_MASK) == VAR_ARRAY ||
       (gScrVarGlob.variableList[value2->u.intValue + VARIABLELIST_CHILD_BEGIN].w.type & VAR_MASK) == VAR_ARRAY)
        && !gScrVarPub.evaluate ))
      {
        value1->type = VAR_INTEGER;
        equal = value1->u.intValue == value2->u.intValue;
        RemoveRefToObject(value1->u.intValue);
        RemoveRefToObject(value2->u.intValue);
        value1->u.intValue = equal;
        break;
      } //Fall in case of error
    default:
      Scr_UnmatchingTypesError(value1, value2);
      break;
  }
}


void __cdecl Scr_EvalInequality(VariableValue *value1, VariableValue *value2)
{
  Scr_EvalEquality(value1, value2);
  assert((value1->type == VAR_INTEGER) || (value1->type == VAR_UNDEFINED));
  value1->u.intValue = value1->u.intValue == 0;
}


void __cdecl Scr_EvalBoolNot(VariableValue *value)
{
  Scr_CastBool(value);
  if ( value->type == VAR_INTEGER )
  {
    value->u.intValue = value->u.intValue == 0;
  }
}

void __cdecl Scr_EvalBoolComplement(VariableValue *value)
{
  int type;

  if ( value->type == VAR_INTEGER )
  {
    value->u.intValue = ~value->u.intValue;
  }
  else
  {
    type = value->type;
    RemoveRefToValue(value->type, value->u);
    value->type = VAR_UNDEFINED;
    Scr_Error(va("~ cannot be applied to \"%s\"", var_typename[type]));
  }
}


void __cdecl Scr_EvalShiftLeft(VariableValue *value1, VariableValue *value2)
{
  if ( value1->type != VAR_INTEGER || value2->type != VAR_INTEGER )
  {
    Scr_UnmatchingTypesError(value1, value2);
  }
  else
  {
    value1->u.intValue <<= value2->u.intValue;
  }
}

void __cdecl Scr_EvalShiftRight(VariableValue *value1, VariableValue *value2)
{
  if ( value1->type != VAR_INTEGER || value2->type != VAR_INTEGER )
  {
    Scr_UnmatchingTypesError(value1, value2);
  }
  else
  {
    value1->u.intValue >>= value2->u.intValue;
  }
}


void __cdecl Scr_EvalBinaryOperator(int op, VariableValue *value1, VariableValue *value2)
{
  switch ( op )
  {
    case OP_bit_or:
      Scr_EvalOr(value1, value2);
      break;
    case OP_bit_ex_or:
      Scr_EvalExOr(value1, value2);
      break;
    case OP_bit_and:
      Scr_EvalAnd(value1, value2);
      break;
    case OP_equality:
      Scr_EvalEquality(value1, value2);
      break;
    case OP_inequality:
      Scr_EvalInequality(value1, value2);
      break;
    case OP_less:
      Scr_EvalLess(value1, value2);
      break;
    case OP_greater:
      Scr_EvalGreater(value1, value2);
      break;
    case OP_less_equal:
      Scr_EvalLessEqual(value1, value2);
      break;
    case OP_greater_equal:
      Scr_EvalGreaterEqual(value1, value2);
      break;
    case OP_shift_left:
      Scr_EvalShiftLeft(value1, value2);
      break;
    case OP_shift_right:
      Scr_EvalShiftRight(value1, value2);
      break;
    case OP_plus:
      Scr_EvalPlus(value1, value2);
      break;
    case OP_minus:
      Scr_EvalMinus(value1, value2);
      break;
    case OP_multiply:
      Scr_EvalMultiply(value1, value2);
      break;
    case OP_divide:
      Scr_EvalDivide(value1, value2);
      break;
    case OP_mod:
      Scr_EvalMod(value1, value2);
      break;
    default:
      return;
  }
}


};


