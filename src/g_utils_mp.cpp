#include "q_shared.h"
#include "entity.h"

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

}