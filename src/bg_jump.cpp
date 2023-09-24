#include "q_shared.h"
#include "player.h"
#include "cvar.h"
#include "bg_local.h"
#include "q_shared.h"

#define PMF_JUMPING 0x4000
#define PMF_LADDER 0x8
#define JUMP_LAND_SLOWDOWN_TIME 1800

extern "C" cvar_t* jump_height;
extern "C" cvar_t* jump_stepSize;
extern "C" cvar_t* jump_slowdownEnable;
extern "C" cvar_t* jump_ladderPushVel;
extern "C" cvar_t* jump_spreadAdd;

extern "C" float Dirty_GetJumpHeight(unsigned int num);



__cdecl __optimize3 float Jump_GetHeight( playerState_t *ps) {

    float jumph = Dirty_GetJumpHeight(ps->clientNum);
	if(jumph > 0)
    {
        return jumph;
    }
    return jump_height->value;

}



__cdecl __optimize3 float Jump_CalcHeight( playerState_t* ps ) {
	
	float val;
	float newdiv;
	float jumpHeight = Jump_GetHeight(ps);

	val = jumpHeight;
	val = (val + val) * ps->gravity;

	if(ps->pm_flags & PMF_JUMPING && ps->pm_time <= JUMP_LAND_SLOWDOWN_TIME ){

		if(jump_slowdownEnable->boolean){

			if(ps->pm_time > 1699){

				newdiv = 2.5;

			}else{
				newdiv = ps->pm_time * (float)1.5 * (float)0.00058823527 + (float)1.0;
			}

		}else{
			newdiv = 1.0;
		}
		val = val / newdiv;
	}

	return val;
}

double __cdecl Jump_GetLandFactor(playerState_s *ps)
{

  assert(ps->pm_flags & PMF_JUMPING);
  assert(ps->pm_time <= JUMP_LAND_SLOWDOWN_TIME);

  if ( !jump_slowdownEnable->boolean )
  {
    return 1.0;
  }
  if ( ps->pm_time < 1700 )
  {
    return (double)ps->pm_time * 1.5 * 0.00058823527 + 1.0;
  }
  return 2.5;
}



void __cdecl Jump_AddSurfaceEvent(playerState_s *ps, pml_t *pml)
{
  int surfType;

  if ( ps->pm_flags & PMF_LADDER )
  {
    BG_AddPredictableEventToPlayerstate(76, 0x15u, ps);
  }
  else
  {
    surfType = PM_GroundSurfaceType(pml);
    if ( surfType )
    {
      BG_AddPredictableEventToPlayerstate(76, surfType, ps);
    }
  }
}

void __cdecl Jump_PushOffLadder(playerState_s *ps, pml_t *pml)
{
  vec3_t flatForward;
  vec3_t pushOffDir;
  float dot;
  
  assert(ps->pm_flags & PMF_LADDER);

  ps->velocity[2] = ps->velocity[2] * 0.75;
  flatForward[0] = pml->forward[0];
  flatForward[1] = pml->forward[1];
  flatForward[2] = 0.0;
  Vec3Normalize(flatForward);
  dot = DotProduct(ps->vLadderVec, pml->forward);
  if ( dot >= 0.0 )
  {
	VectorCopy(flatForward, pushOffDir);
  }
  else
  {
	dot = DotProduct(ps->vLadderVec, flatForward);
	VectorMA(flatForward, -2.0 * dot, ps->vLadderVec, pushOffDir);
    Vec3Normalize(pushOffDir);
  }
  ps->velocity[0] = jump_ladderPushVel->value * pushOffDir[0];
  ps->velocity[1] = jump_ladderPushVel->value * pushOffDir[1];
  ps->pm_flags &= 0xFFFFFFF7;
}

void __cdecl Jump_Start(pmove_t *pm, pml_t *pml, float height)
{
  float factor;
  float velocitySqrd;
  playerState_s *ps;

  ps = pm->ps;
  assert(ps);

  velocitySqrd = (float)(height * 2.0) * (float)ps->gravity;
  if ( ps->pm_flags & PMF_JUMPING )
  {
    if ( ps->pm_time <= JUMP_LAND_SLOWDOWN_TIME )
    {
      factor = Jump_GetLandFactor(ps);
	  assert(factor != 0.0);

      velocitySqrd = velocitySqrd / factor;
    }
  }
  pml->groundPlane = 0;
  pml->almostGroundPlane = 0;
  pml->walking = 0;
  ps->groundEntityNum = 1023;
  ps->jumpTime = pm->cmd.serverTime;
  ps->jumpOriginZ = ps->origin[2];
  ps->velocity[2] = sqrtf(velocitySqrd);
  ps->pm_flags &= 0xFFFFFE7F;
  ps->pm_flags |= PMF_JUMPING;
  ps->pm_time = 0;
  ps->sprintState.sprintButtonUpRequired = 0;
  ps->aimSpreadScale = ps->aimSpreadScale + jump_spreadAdd->value;
  if ( ps->aimSpreadScale > 255.0 )
  {
    ps->aimSpreadScale = 255.0;
  }
}



extern "C"
{
    

void __cdecl Jump_ClearState(playerState_s *ps)
{
  ps->pm_flags &= ~PMF_JUMPING;
  ps->jumpOriginZ = 0.0;
}

double __cdecl Jump_ReduceFriction(playerState_s *ps)
{
  float control;

  assert(ps->pm_flags & PMF_JUMPING);

  if ( ps->pm_time > JUMP_LAND_SLOWDOWN_TIME )
  {
    Jump_ClearState(ps);
    control = 1.0;
  }
  else
  {
    control = Jump_GetLandFactor(ps);
  }
  return control;
}

__cdecl __optimize3 void Jump_ClampVelocity(playerState_t* ps, vec3_t vec){

	float comp;
	float newZVelocity;

	if(ps->origin[2] - vec[2] > 0){

		float jumpHeight = Jump_GetHeight(ps);

		comp = ps->jumpOriginZ + jumpHeight - ps->origin[2];

		if(comp >= (float)0.1){

			newZVelocity = sqrtf( (comp + comp) * (float)ps->gravity);

			if(ps->velocity[2] > newZVelocity ){
				ps->velocity[2] = newZVelocity;
			}

		}else{
			ps->velocity[2] = 0;
			return;
		}

	}
}


__cdecl __optimize3 qboolean Jump_IsPlayerAboveMax(playerState_t* ps){

	float jumpHeight = Jump_GetHeight(ps);

	if(ps->origin[2] >= ps->jumpOriginZ + jumpHeight )
		return qtrue;
	else
		return qfalse;

}


__cdecl __optimize3 qboolean Jump_GetStepHeight(playerState_t* ps, const vec3_t vec1, float* val2){

	float jumpHeight = Jump_GetHeight(ps);

	if(vec1[2] > ps->jumpOriginZ + jumpHeight)
		return qfalse;

	*val2 = jump_stepSize->value;

	if(vec1[2] + jump_stepSize->value > ps->jumpOriginZ + jumpHeight)
		*val2 = ps->jumpOriginZ + jumpHeight - vec1[2];

	return qtrue;

}






qboolean __cdecl Jump_Check(pmove_t *pm, pml_t *pml)
{
  playerState_s *ps;

  assert(pm);
  ps = pm->ps;
  assert(ps);

  if ( ps->pm_flags & 0x80000 )
  {
    return qfalse;
  }
  if ( pm->cmd.serverTime - ps->jumpTime < 500 )
  {
    return qfalse;
  }
  if ( ps->pm_flags & 0x400 )
  {
    return qfalse;
  }
  if ( ps->pm_flags & 4 )
  {
    return qfalse;
  }
  if ( ps->pm_type >= 9 )
  {
    return qfalse;
  }
  if ( PM_GetEffectiveStance(ps) && ps->groundEntityNum != 1023 )
  {
    return qfalse;
  }
  if ( !(pm->cmd.buttons & 0x400) )
  {
    return qfalse;
  }
  if ( pm->oldcmd.buttons & 0x400 )
  {
	pm->cmd.buttons &= 0xFFFFFBFF;
    return qfalse;
  }
/*
  else if ( pml->groundTrace.sflags & 2 )
  {
    result = 0;
  }
*/
  Jump_Start(pm, pml, jump_height->value);
  Jump_AddSurfaceEvent(ps, pml);
  if ( ps->pm_flags & PMF_LADDER )
  {
    Jump_PushOffLadder(ps, pml);
  }
  if ( pm->cmd.forwardmove < 0 )
  {
    BG_AnimScriptEvent(ps, ANIM_ET_JUMPBK, 0, 1);
  }
  else
  {
    BG_AnimScriptEvent(ps, ANIM_ET_JUMP, 0, 1);
  }
  return qtrue;
}

void __cdecl Jump_ApplySlowdown(playerState_s *ps)
{
  float scale;

  assert(ps->pm_flags & PMF_JUMPING);
  scale = 1.0;
  if ( ps->pm_time <= JUMP_LAND_SLOWDOWN_TIME )
  {
    if ( !ps->pm_time )
    {
      if ( (float)(ps->jumpOriginZ + 18.0) <= ps->origin[2] )
      {
        ps->pm_time = 1200;
        scale = 0.5;
      }
      else
      {
        ps->pm_time = JUMP_LAND_SLOWDOWN_TIME;
        scale = 0.64999998;
      }
    }
  }
  else
  {
    Jump_ClearState(ps);
    scale = 0.64999998;
  }
  if ( jump_slowdownEnable->boolean )
  {
    VectorScale(ps->velocity, scale, ps->velocity);
  }
}

void __cdecl Jump_RegisterDvars()
{
  jump_height = Cvar_RegisterFloat("jump_height", 39.0, 0.0, 1000.0, 0x180u, "The maximum height of a player's jump");
  jump_stepSize = Cvar_RegisterFloat("jump_stepSize", 18.0, 0.0, 64.0, 0x180u, "The maximum step up to the top of a jump arc");
  jump_slowdownEnable = Cvar_RegisterBool("jump_slowdownEnable", qtrue, 0x180u, "Slow player movement after jumping");
  jump_ladderPushVel = Cvar_RegisterFloat("jump_ladderPushVel", 128.0, 0.0, 1024.0, 0x180u, "The velocity of a jump off of a ladder");
  jump_spreadAdd = Cvar_RegisterFloat("jump_spreadAdd", 64.0, 0.0, 512.0, 0x180u, "The amount of spread scale to add as a side effect of jumping");
}

void __cdecl Jump_ActivateSlowdown(playerState_s *ps)
{
  if ( !ps->pm_time )
  {
    ps->pm_flags |= PMF_JUMPING;
    ps->pm_time = JUMP_LAND_SLOWDOWN_TIME;
  }
}

};
