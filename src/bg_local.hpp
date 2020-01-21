#include "bg_public.h"

enum scriptAnimEventTypes_t
{
  ANIM_ET_PAIN = 0x0,
  ANIM_ET_DEATH = 0x1,
  ANIM_ET_FIREWEAPON = 0x2,
  ANIM_ET_JUMP = 0x3,
  ANIM_ET_JUMPBK = 0x4,
  ANIM_ET_LAND = 0x5,
  ANIM_ET_DROPWEAPON = 0x6,
  ANIM_ET_RAISEWEAPON = 0x7,
  ANIM_ET_CLIMB_MOUNT = 0x8,
  ANIM_ET_CLIMB_DISMOUNT = 0x9,
  ANIM_ET_RELOAD = 0xA,
  ANIM_ET_CROUCH_TO_PRONE = 0xB,
  ANIM_ET_PRONE_TO_CROUCH = 0xC,
  ANIM_ET_STAND_TO_CROUCH = 0xD,
  ANIM_ET_CROUCH_TO_STAND = 0xE,
  ANIM_ET_STAND_TO_PRONE = 0xF,
  ANIM_ET_PRONE_TO_STAND = 0x10,
  ANIM_ET_MELEEATTACK = 0x11,
  ANIM_ET_KNIFE_MELEE = 0x12,
  ANIM_ET_KNIFE_MELEE_CHARGE = 0x13,
  ANIM_ET_SHELLSHOCK = 0x14,
  NUM_ANIM_EVENTTYPES = 0x15,
};

enum StanceState
{
  CL_STANCE_STAND = 0x0,
  CL_STANCE_CROUCH = 0x1,
  CL_STANCE_PRONE = 0x2,
  CL_STANCE_DIVE_TO_PRONE = 0x3,
};


#ifdef __cplusplus
extern "C"{
#endif

unsigned int __cdecl PM_GroundSurfaceType(pml_t *pml);
void __cdecl BG_AddPredictableEventToPlayerstate(int newEvent, unsigned int eventParm, playerState_s *ps);
int __cdecl BG_AnimScriptEvent(struct playerState_s* ps, enum scriptAnimEventTypes_t event, int isContinue, int force);
enum StanceState __cdecl PM_GetEffectiveStance(struct playerState_s *ps);


#ifdef __cplusplus
};
#endif