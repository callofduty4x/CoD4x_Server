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

signed int __cdecl G_DObjGetWorldTagMatrix(struct gentity_s *ent, unsigned int tagName, float (*tagMat)[3])
{
  float ent_axis[4][3];
  DObjAnimMat *mat;
  float axis[3][3];

  mat = G_DObjGetLocalTagMatrix(ent, tagName);
  if ( !mat )
  {
    return 0;
  }
  AnglesToAxis(ent->r.currentAngles, ent_axis);
  ent_axis[3][0] = ent->r.currentOrigin[0];
  ent_axis[3][1] = ent->r.currentOrigin[1];
  ent_axis[3][2] = ent->r.currentOrigin[2];

  ConvertQuatToMat(mat, axis);
  MatrixMultiply(axis, ent_axis, tagMat);
  MatrixTransformVector43(mat->trans, ent_axis, &(*tagMat)[9]);
  return 1;
}

void __cdecl G_SetAngle(gentity_s *ent, const float *angle)
{
	assert(!IS_NAN(angle[0]) && !IS_NAN(angle[1]) && !IS_NAN(angle[2]));

  VectorCopy(angle, ent->s.lerp.apos.trBase);

  ent->s.lerp.apos.trType = TR_STATIONARY;
  ent->s.lerp.apos.trTime = 0;
  ent->s.lerp.apos.trDuration = 0;

  VectorClear(ent->s.lerp.apos.trDelta);
  VectorCopy(angle, ent->r.currentAngles);

}

}