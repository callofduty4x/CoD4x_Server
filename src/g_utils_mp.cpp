#include "q_shared.h"
#include "entity.h"
#include "dobj.h"
#include "g_shared.h"
#include "server_public.h"

const char *entityTypeNames[] =
{
  "ET_GENERAL",
  "ET_PLAYER",
  "ET_PLAYER_CORPSE",
  "ET_ITEM",
  "ET_MISSILE",
  "ET_INVISIBLE",
  "ET_SCRIPTMOVER",
  "ET_SOUND_BLEND",
  "ET_FX",
  "ET_LOOP_FX",
  "ET_PRIMARY_LIGHT",
  "ET_MG42",
  "ET_HELICOPTER",
  "ET_PLANE",
  "ET_VEHICLE",
  "ET_VEHICLE_COLLMAP",
  "ET_VEHICLE_CORPSE",
  "ET_ACTOR",
  "ET_ACTOR_SPAWNER",
  "ET_ACTOR_CORPSE",
  "ET_STREAMER_HINT"
};

extern "C"{

const char *__cdecl G_GetEntityTypeName(gentity_t *ent)
{
    assert((unsigned)ent->s.eType < sizeof(entityTypeNames)/sizeof(entityTypeNames[0])); //0x15

    return entityTypeNames[ent->s.eType];
}


void __cdecl G_DObjCalcBone(gentity_s *ent, int boneIndex)
{
  void (__cdecl *controller)(gentity_s *, int *);
  DObj_s *obj;
  int partBits[10];

  obj = Com_GetServerDObj(ent->s.number);
  if ( obj )
  {
    if ( !SV_DObjCreateSkelForBone(obj, boneIndex) )
    {
      DObjGetHierarchyBits(obj, boneIndex, partBits);
      controller = entityHandlers[ent->handler].controller;
      if ( controller )
      {
        controller(ent, partBits);
      }
      DObjCalcSkel(obj, partBits);
    }
  }
}

}