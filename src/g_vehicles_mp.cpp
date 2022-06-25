#include "scr_vm.h"
#include "q_shared.h"
#include "g_scr_vehicle.h"
#include "g_shared.h"
#include "q_math.h"
#include "dobj.h"
#include "bg_public.h"
#include "cscr_stringlist.h"
#include "player.h"
#include "bg.h" // BGEvent enum


#define MAX_VEHICLES		8 // vehicle entities at once

// THIS IS TEMPORARY DRIVER CAMERA FIX! DELETE WHEN WE HAVE PROPER FIX CLIENT SIDE!
#define UGLY_DRIVER_CAMERA_FIX 1 
//#define VEHICLE_CALLBACKS_SCRIPT_ONLY 1 /* uncomment if you don't want to handle G_VehEntHandler_*** logic in code */

struct vehicle_info_t s_vehicleInfos[32];
float vehicle_frametime;

uint16_t* s_wheelTags[] = { 
    &scr_const.tag_wheel_front_left,
    &scr_const.tag_wheel_front_right,
    &scr_const.tag_wheel_back_left,
    &scr_const.tag_wheel_back_right,
    &scr_const.tag_wheel_middle_left,
    &scr_const.tag_wheel_middle_right,
    NULL };
	
uint16_t* s_flashTags[] = { 
    &scr_const.tag_flash,
    &scr_const.tag_flash_11,
    &scr_const.tag_flash_2,
    &scr_const.tag_flash_22,
    &scr_const.tag_flash_3,
    NULL };

struct VehicleLocalPhysics
{
	trace_t groundTrace;
	int hasGround;
	int onGround;
};

struct weaponParms
{
  float forward[3];
  float right[3];
  float up[3];
  float muzzleTrace[3];
  float gunForward[3];
  WeaponDef *weapDef;
};

extern cvar_t *vehDebugServer;
extern cvar_t *vehTextureScrollScale;
extern VehicleLocalPhysics s_phys;
extern VehiclePhysicsBackup s_backup;

// Functions defined in assembly
extern "C"
{
	void IntegratePosAndRot(gentity_t *ent, float frameTime);
	void VEH_TouchEntities(gentity_t *ent, float frameTime);
	vehicle_info_t *VEH_GetVehicleInfo(int16_t infoIdx);
	void InitFirstThink(gentity_t *ent);
	void G_DebugBox(const float *origin, const float *mins, const float *maxs, double yaw, const float *color, int depthTest, int duration);
	void G_DebugLine(const float *start, const float *end, const float *color, int depthTest);
	void Bullet_Fire(gentity_t *attacker, float spread, weaponParms *wp, gentity_t *weaponEnt, int gameTime);

	void G_AddEvent(gentity_t *ent, int event, int eventParm);
	
}

void VEH_SetPosition(gentity_t *ent, const float *origin, const float *angles);

bool VEH_IsPlayerVehicleAttached( gentity_s *player );
bool VehicleHasSeatFree(const scr_vehicle_s* veh);
VehicleRideSlot_t* VehicleGetClosestSeat(gentity_t *ent, gentity_t *player);
static int VEH_GetTeam(gentity_t* ent);
static bool VEH_HasNoUsers(const scr_vehicle_s* veh);
static int VEH_GetUserTeam(const scr_vehicle_s* veh);
void VEH_UpdateTeamOwnership(gentity_t* ent);
static bool IsVehicleEnt( gentity_t *ent );

// move these out of this file??
int ClampInt(int value, int min, int max);
float ClampFloat(float value, float min, float max);
inline void Scr_AddMeansOfDeathString( const int meansOfDeath );
static bool IsClientTeam( gentity_s *player, int team );



// ========================================================================================================================
//
// G_VehUsable( gentity_t *vehEnt, gentity_t *player )
// Internal. Returns 0 when vehicle cannot be used by a given player
//
// ========================================================================================================================
extern "C" bool G_VehUsable( gentity_t *vehEnt, gentity_t *player )
{
	gclient_s *client;
	scr_vehicle_s *vehicle;

	client = player->client;
	
	if( !client || VEH_IsPlayerVehicleAttached(player) || player->r.ownerNum.isDefined() )
		return 0; // already using vehicle
	
	vehicle = vehEnt->scr_vehicle;
	if( vehicle->boneIndex.riderSlots[VEHICLE_RIDESLOT_DRIVER].boneIdx == -1 )
		return 0; // no driver seat present
		
	if( !VehicleHasSeatFree( vehicle ) )
		return 0; // no empty seats

	// true when vehicle is not speeding, has health and contents mask
	return vehicle->speed <= 1.0 && vehEnt->health > 0 && (vehEnt->r.contents & 0x200000) != 0;
}


// ========================================================================================================================
//
//  VEH_InflictDamage(vehEnt, targetEnt, damageDir, int damage)
//
// ========================================================================================================================
void VEH_InflictDamage(gentity_t* vehEnt, gentity_t* targetEnt, float* vDamageDir, int iDamage)
{
	int driverEntNum;
	gentity_t* eAttacker;
	
	assert(vehEnt != nullptr);
	assert(targetEnt != nullptr);
	assert(vehEnt->scr_vehicle != nullptr);

	driverEntNum = vehEnt->scr_vehicle->boneIndex.riderSlots[0].entNum;
	if (driverEntNum == ENTITYNUM_NONE)
		driverEntNum = ENTITYNUM_WORLD;

	eAttacker = &g_entities[driverEntNum];
	if (vehDebugServer->boolean)
	{
		Com_Printf(CON_CHANNEL_SYSTEM, "Vehicle damage to ent #%i: %.2f\n", targetEnt->s.number, iDamage);
	}

	G_Damage(targetEnt, vehEnt, eAttacker, vDamageDir, targetEnt->r.currentOrigin, iDamage, 0, MOD_CRUSH, -1, HITLOC_NONE, 0, 0, 0);
}


// =========================================================================================================================
//
// G_VehEntHandler_Touch(pSelf, pOther, bTouched)
// Internal. 
// fixme: it seems vehicles never touch each other 
//
// =========================================================================================================================
extern "C" void G_VehEntHandler_Touch(gentity_t *pSelf, gentity_t *pOther, int bTouched)
{
    scr_vehicle_s* veh;
	vehicle_info_t* info;
	float r;
	vec3_t moveDir;
	vec2_t hitDir;
	uint16_t callback;		

	if( pOther->s.eType != ET_PLAYER && pOther->s.eType != ET_SCRIPTMOVER && !IsVehicleEnt(pOther) ) 
	{
		return;
	}
	
	if(!pOther->takedamage || pOther->tagChildren)
	{
		return;
	}
	
    veh = pSelf->scr_vehicle;
	info = VEH_GetVehicleInfo(veh->infoIdx);
	r = Vec3NormalizeTo(veh->phys.vel, moveDir);
	
	if ( (info->collisionDamage > 0.0f && r >= 0.001f) == 0 )
		return;

	hitDir[0] = pOther->r.currentOrigin[0] - pSelf->r.currentOrigin[0];
	hitDir[1] = pOther->r.currentOrigin[1] - pSelf->r.currentOrigin[1];
	Vec2Normalize(hitDir);	
	float dot = DotProduct2(moveDir, hitDir);
	
//	CodeCallback_VehicleTouch( other, iVehicleSpeed, vMoveDir, hitDirX, hitDirY, bTouched, dotproduct )
	if( script_CallBacks_new[SCR_CB_VEHICLE_TOUCH] != 0 )
	{
		Scr_AddFloat( dot );
		Scr_AddInt( bTouched );
		Scr_AddFloat( hitDir[1] );
		Scr_AddFloat( hitDir[0] );
		Scr_AddVector( moveDir );
		Scr_AddFloat( pSelf->scr_vehicle->speed );		
		Scr_AddEntity( pOther );	
		callback = Scr_ExecEntThread(pSelf, script_CallBacks_new[SCR_CB_VEHICLE_TOUCH], 7);
		Scr_FreeThread(callback);
	}
		
#if 0 /* testing only, will break any brushmodel @ touch */		
	if (pOther->s.eType == ET_SCRIPTMOVER )
	{
		VEH_InflictDamage(pSelf, pOther, moveDir, 999999);
		return;
	}
#endif

	if (dot > 0.8f)
	{	
		if (pOther->client && (pOther->client->ps.pm_flags & PMF_PRONE) != 0) //were driving over someone thats lying on ground, kill him straight away
		{
			VEH_InflictDamage(pSelf, pOther, moveDir, 999999);
		}
		else
		{
			float damageScale = pSelf->scr_vehicle->speed / info->collisionSpeed;
			if (damageScale > 1.0)
			{
				damageScale = 1.0;
			}

			damageScale *= ((dot - 0.8f) / 0.1999999f);
			int damage = damageScale * info->collisionDamage;
			if (damage > 0)
			{
				VEH_InflictDamage(pSelf, pOther, moveDir, damage);
			}
		}
	}
}



// =========================================================================================================================
//
// G_VehEntHandler_Controller(pSelf, partBits)
// Internal. 
// =========================================================================================================================
extern "C" void G_VehEntHandler_Controller(gentity_t* pSelf, int* partBits)
{
	assert(pSelf != nullptr);
	assert(pSelf->scr_vehicle != nullptr);
	
	DObj_s* obj = Com_GetServerDObj(pSelf->s.number);
	assert(obj != nullptr);

	scr_vehicle_s* veh = pSelf->scr_vehicle;
	vec3_t bodyAngles;
	bodyAngles[0] = pSelf->s.lerp.u.vehicle.bodyPitch;
	bodyAngles[1] = pSelf->s.lerp.u.vehicle.bodyRoll;
	bodyAngles[2] = 0.0f;

	if (veh->boneIndex.body >= 0)
	{
		DObjSetLocalBoneIndex(obj, partBits, veh->boneIndex.body, vec3_origin, bodyAngles);
	}

	vec3_t gunAngles;
	gunAngles[0] = 0.0f;
	gunAngles[1] = pSelf->s.lerp.u.vehicle.gunYaw;
	gunAngles[2] = 0.0f;
	
	if (veh->boneIndex.turret >= 0)
	{
		DObjSetLocalBoneIndex(obj, partBits, veh->boneIndex.turret, vec3_origin, gunAngles);
	}
	
	vec3_t barrelAngles;
	barrelAngles[0] = pSelf->s.lerp.u.vehicle.gunPitch;
	barrelAngles[1] = 0.0f;
	barrelAngles[2] = 0.0f;

	if (veh->boneIndex.barrel >= 0)
	{
		DObjSetLocalBoneIndex(obj, partBits, veh->boneIndex.barrel, vec3_origin, barrelAngles);
	}
}

// =========================================================================================================================
//
// VEH_JoltBody(gentity_t* ent, const float* dir, float intensity, float speedFrac, float decel)
// Internal. 
// =========================================================================================================================
void VEH_JoltBody(gentity_t* ent, const float* dir, float intensity, float speedFrac, float decel)
{
	scr_vehicle_s* veh = ent->scr_vehicle;
	vehicle_info_t* info = VEH_GetVehicleInfo(veh->infoIdx);

	intensity = ClampFloat(intensity, 0.0f, 1.0f);

	float axis[3][3];
	AnglesToAxis(veh->phys.angles, axis);

	veh->joltDir[0] = DotProduct(dir, axis[0]);
	veh->joltDir[1] = -DotProduct(dir, axis[1]);
	veh->joltTime = 2.0f;
	veh->joltWave = 0.0f;
	Vec2Normalize(veh->joltDir);
	veh->joltDir[0] *= (info->maxBodyPitch * intensity);
	veh->joltDir[1] *= (info->maxBodyRoll* intensity);
	veh->joltSpeed = veh->speed * speedFrac;
	veh->joltDecel = decel;
}

// =========================================================================================================================
//
// G_VehImmuneToDamage(gentity_t *ent, int meansOfDeath, int damageFlags, int iWeapon)
// internal. returns true if vehicle is immune to given damage
//
// =========================================================================================================================
extern "C" int G_VehImmuneToDamage(gentity_t *ent, int meansOfDeath, int flags, int iWeapon)
{
	assert(ent->scr_vehicle != nullptr);
	vehicle_info_t *info;

	info = VEH_GetVehicleInfo(ent->scr_vehicle->infoIdx);
	switch ( meansOfDeath )
	{
	case MOD_PISTOL_BULLET:
	case MOD_RIFLE_BULLET:
			return !info->bulletDamage && ((flags & 2) == 0 || !info->armorPiercingDamage);
	case MOD_GRENADE:
	case MOD_GRENADE_SPLASH:
		if ( BG_GetWeaponDef(iWeapon)->projExplosion == WEAPPROJEXP_HEAVY )
		{
			return !info->heavyExplosiveDamage;
		}
		else
		{
			return !info->grenadeDamage;
		}
	case MOD_PROJECTILE:
		return !info->projectileDamage;
	case MOD_PROJECTILE_SPLASH:
		return !info->projectileSplashDamage;
	case MOD_EXPLOSIVE:
		return 0;
	default:
		return 1;
	}
}

// =========================================================================================================================
//
// G_VehEntHandler_Pain(pSelf, pAttacker, iDamage, vPoint, meansOfDeath, vDir, hitLoc, iWeapon)
//
// =========================================================================================================================
extern "C" void G_VehEntHandler_Pain(gentity_t* pSelf, gentity_t* pAttacker, int iDamage, const float* vPoint, const int meansOfDeath, const float* vDir, hitLocation_t hitLoc, const int iWeapon)
{
	uint16_t callback;
	if(pSelf->scr_vehicle == NULL)
		return;

//	CodeCallback_VehicleDamage( attacker, iDamage, vPoint, meansOfDeath, vDir, hitloc, weapon )
	if( script_CallBacks_new[SCR_CB_VEHICLE_DAMAGE] != 0 )
	{
		Scr_AddString( BG_WeaponName(iWeapon) );
		Scr_AddConstString( G_GetHitLocationString(hitLoc) );	
		Scr_AddVector( vDir );	
		Scr_AddMeansOfDeathString(meansOfDeath);	
		Scr_AddVector( vPoint );	
		Scr_AddInt( iDamage );
		Scr_AddEntity( pAttacker );	
		callback = Scr_ExecEntThread(pSelf, script_CallBacks_new[SCR_CB_VEHICLE_DAMAGE], 7);
		Scr_FreeThread(callback);
	}

	if (pAttacker)
	{
		int weapon = pAttacker->s.weapon;
		if (weapon)
		{
			int weapType = BG_GetWeaponDef(weapon)->weapType;
			if (weapType == WEAPTYPE_GRENADE || weapType == WEAPTYPE_PROJECTILE)
			{
				VEH_JoltBody(pSelf, vDir, 1.0, 0.0, 0.0);
			}
		}
	}
}



// =========================================================================================================================
//
// G_VehEntHandler_Die(pSelf, pInflictor, pAttacker, iDamage, meansOfDeath, iWeapon, vDir, hitLoc, psTimeOffset)
//
// =========================================================================================================================
extern "C" void G_VehEntHandler_Die(gentity_t *pSelf, gentity_t *pInflictor, gentity_t *pAttacker, const int iDamage, const int meansOfDeath, const int iWeapon, const float *vDir, enum hitLocation_t hitLoc, int psTimeOffset)
{
	uint16_t callback;

	if(pSelf->scr_vehicle == NULL)
		return;
	
//	CodeCallback_VehicleDestroyed( inflictor, attacker, iDamage, sMeansOfDeath, sWeapon, vDir, hitLoc, psTimeOffset )
	if( script_CallBacks_new[SCR_CB_VEHICLE_KILLED] != 0 )
	{
		Scr_AddInt( psTimeOffset );
		Scr_AddConstString( G_GetHitLocationString(hitLoc) );
		Scr_AddVector( vDir );
		Scr_AddString( BG_WeaponName(iWeapon) );
		Scr_AddMeansOfDeathString( meansOfDeath );
		Scr_AddInt( iDamage );
		Scr_AddEntity( pAttacker );	
		Scr_AddEntity( pInflictor );	
		callback = Scr_ExecEntThread(pSelf, script_CallBacks_new[SCR_CB_VEHICLE_KILLED], 8);
		Scr_FreeThread(callback);
	}

#ifndef VEHICLE_CALLBACKS_SCRIPT_ONLY
	// popout all players
	for (int i = 0; i < VEHICLE_RIDESLOTS_COUNT; i++)
	{
		scr_vehicle_s *veh = pSelf->scr_vehicle;
		if (veh->boneIndex.riderSlots[i].entNum != ENTITYNUM_NONE)
		{
			G_EntUnlink(&g_entities[veh->boneIndex.riderSlots[i].entNum]);
		}
	}
#endif

	VEH_UpdateTeamOwnership(pSelf);

	if (pAttacker)
	{
		int weapon = pAttacker->s.weapon;
		if (weapon)
		{
			weapType_t weapType = BG_GetWeaponDef(weapon)->weapType;
			if (weapType == WEAPTYPE_GRENADE || weapType == WEAPTYPE_PROJECTILE)
			{
				VEH_JoltBody(pSelf, vDir, 1.0f, 0.0, 0.0);
			}
		}
	}

}

bool VEH_IsPlayerVehicleAttached( gentity_s *player )
{
#ifndef UGLY_DRIVER_CAMERA_FIX
	if( !(player->client->ps.pm_flags & PMF_VEHICLE_ATTACHED) )
		return true;
#else
	// player->client->sess.cs.attachedVehEntNum != 1023 is not working in this case, is set somewhere else...
	int entNum = player->client->ps.viewlocked_entNum;
	if( entNum != 1023 )
	{
		gentity_s *ent = &g_entities[entNum];
		if( ent->scr_vehicle )
		{
			return true;
		}
	}
#endif
	return false;
}


inline void VehicleClearRideSlotForPlayer( gentity_s *ent, int clientNum )
{
	for (int seatIdx = 0; seatIdx != VEHICLE_RIDESLOTS_COUNT+1; seatIdx++)
	{
		if ( seatIdx == VEHICLE_RIDESLOTS_COUNT )
		{
			Com_Error( ERR_DROP, "VehicleClearRideSlotForPlayer: Player #%i is not occupying vehicle seat\n", clientNum );
			return;
		}	
		if( clientNum == ent->scr_vehicle->boneIndex.riderSlots[seatIdx].entNum )
		{
			ent->scr_vehicle->boneIndex.riderSlots[seatIdx].entNum = 1023;
			break;
		}
	}
}



// =========================================================================================================================
//
// G_VehUnlinkPlayer( gentity_s *ent, gentity_s *player )
// INTERNAL.
// =========================================================================================================================
extern "C" void G_VehUnlinkPlayer( gentity_t *ent, gentity_t *player )
{
	vec3_t pAngles;
	vec3_t pOrigin;
	gclient_s *client;
	scr_vehicle_s *vehicle;	
	uint16_t callback;

	if( !VEH_IsPlayerVehicleAttached( player ) )
	{
		Com_Error(ERR_DROP, "G_VehUnlinkPlayer: Player is not using vehicle\n");
		return;
	}
	
	client = player->client;
	vehicle = ent->scr_vehicle;	
	
	vehicle->flags &= 0xFFFFFFFE;
	
	VectorCopy( client->ps.viewangles, pAngles );
	pAngles[2] = 0.0f;
	VectorCopy( player->r.currentOrigin, pOrigin );
	pOrigin[2] = ent->r.currentOrigin[2] + vehicle->phys.maxs[2];

	TeleportPlayer(player, pOrigin, pAngles);
	
	VehicleClearRideSlotForPlayer( ent, player->s.number );
	player->r.ownerNum.setEnt(NULL);
  
	client->ps.pm_flags &= 0xFFEFFFFF;
	client->ps.weapFlags &= 0xFFFFFF7F;
	client->ps.viewlocked_entNum = 1023;
	
	VEH_UpdateTeamOwnership(ent);
	
//	CodeCallback_VehicleUse( user, seat )
	if( script_CallBacks_new[SCR_CB_VEHICLE_USE] != 0 )
	{
		Scr_AddString( "<EXIT_VEHICLE>" );
		Scr_AddEntity( player );
		callback = Scr_ExecEntThread(ent, script_CallBacks_new[SCR_CB_VEHICLE_USE], 2);
		Scr_FreeThread(callback);
	}
}

// =========================================================================================================================
//
// LinkPlayerToVehicle(gentity_t *vehEnt, gentity_t *playerEnt)
// 
// =========================================================================================================================
void LinkPlayerToVehicle(gentity_t *vehEnt, gentity_t *playerEnt)
{
	vec3_t originOffset;
	vec3_t anglesOffset;	
	uint16_t callback;
	
	if (!playerEnt->client)
	{
		return;
	}

	if( VEH_IsPlayerVehicleAttached(playerEnt) )
	{
		Com_Error(ERR_DROP, "LinkPlayerToVehicle: Player is already using a vehicle\n");
		return;
	}

	if (playerEnt->r.ownerNum.number)
	{
		Com_Error(ERR_DROP, "LinkPlayerToVehicle: Player already has an owner\n");
		return;
	}

	scr_vehicle_s* veh = vehEnt->scr_vehicle;

	if (!VehicleHasSeatFree(veh))
	{
		Com_Error(ERR_DROP, "LinkPlayerToVehicle: Vehicle has all seats filled\n");
		return;
	}

	VehicleRideSlot_t* closestSeat = VehicleGetClosestSeat(vehEnt, playerEnt);
	if (closestSeat == NULL)
	{
		Com_Error(ERR_DROP, "LinkPlayerToVehicle: Tried to mount player on a full vehicle\n");
		return;
	}

// fixme: unused
//	float tagMtx[4][3];
//	vec3_t angles;
//	G_DObjGetWorldBoneIndexMatrix(vehEnt, closestSeat->boneIdx, tagMtx);
//	AxisToAngles(tagMtx, angles);
//	VectorCopy(tagMtx[3], playerEnt->r.currentOrigin);

	VectorClear(originOffset);
	VectorClear(anglesOffset);
	if (closestSeat->tagName == scr_const.tag_driver || closestSeat->tagName == scr_const.tag_passenger)
	{
		originOffset[2] = -35.0f;	
	}

	if (!G_EntLinkToWithOffset(playerEnt, vehEnt, closestSeat->tagName, originOffset, anglesOffset))
	{
		Com_Error(ERR_DROP, "LinkPlayerToVehicle: Cannot link to vehicle bone \"%s\"\n", SL_ConvertToString(closestSeat->tagName));
		return;
	}

	veh->flags |= 1;
	closestSeat->entNum = playerEnt->s.number;
	playerEnt->r.ownerNum.setEnt(vehEnt);
	
#ifdef UGLY_DRIVER_CAMERA_FIX
	if( closestSeat->tagName != scr_const.tag_driver )
		playerEnt->client->ps.pm_flags |= PMF_VEHICLE_ATTACHED;
#else
	playerEnt->client->ps.pm_flags |= PMF_VEHICLE_ATTACHED;
#endif

	if (closestSeat->tagName != scr_const.tag_passenger)
	{
		playerEnt->client->ps.weapFlags |= 0x80;
	}

	playerEnt->client->ps.viewlocked_entNum = vehEnt->s.number;
	
	VEH_UpdateTeamOwnership(vehEnt);	

//	CodeCallback_VehicleUse( user, seat )
	if( script_CallBacks_new[SCR_CB_VEHICLE_USE] != 0 )
	{
		Scr_AddString( SL_ConvertToString(closestSeat->tagName) );
		Scr_AddEntity( playerEnt );
		callback = Scr_ExecEntThread(vehEnt, script_CallBacks_new[SCR_CB_VEHICLE_USE], 2);
		Scr_FreeThread(callback);
	}
}

extern "C" void G_VehEntHandler_Use(gentity_t* vehEnt, gentity_t* player, gentity_s *pActivator)
{
	if (!player->client)
		return;

	if( VEH_IsPlayerVehicleAttached(player) )
	{
		G_EntUnlink(player);
	}
	else
	{	
		if( VEH_HasNoUsers( vehEnt->scr_vehicle ) || IsClientTeam( player, VEH_GetTeam(vehEnt) ) )
		{
			LinkPlayerToVehicle(vehEnt, player);
			return;
		}
		if (vehDebugServer->boolean)
		{
			Com_Printf(CON_CHANNEL_SYSTEM, "Rejected client from entering vehicle\n");
		}		
	}
}

void VEH_BackupPosition(gentity_t* ent)
{
	scr_vehicle_s* veh = ent->scr_vehicle;
	VectorCopy(ent->r.currentOrigin, veh->phys.prevOrigin);
	VectorCopy(ent->r.currentAngles, veh->phys.prevAngles);

	static VehiclePhysicsBackup s_backup;
	memcpy(&s_backup.pathPos, &veh->pathPos, sizeof(s_backup.pathPos));
	memcpy(&s_backup.phys, &veh->phys, sizeof(s_backup.phys));
}


int8_t VEH_PlayerRotation(gentity_s *player, vehicle_physic_t *phys)
{
	char direction = player->client->sess.cmd.forwardmove;
	if(direction == 0)
		direction = player->client->veh_oldforwardmove;
	else
		player->client->veh_oldforwardmove = direction;

	if(direction > 0)
		return player->client->sess.cmd.rightmove;
	if(direction < 0)
		return -player->client->sess.cmd.rightmove;
	
  return 0;
}

void VEH_UpdateClientDriver(gentity_t* ent)
{
	assert(ent != nullptr);
	assert(ent->scr_vehicle != nullptr);

	vehicle_physic_t* phys = &ent->scr_vehicle->phys;
	phys->driverPedal = 0.0f;
	phys->driverSteer = 0.0f;
	phys->inputAccelerationOLD = 0;
	phys->inputTurning = 0;

	int driverEntNum = ent->scr_vehicle->boneIndex.riderSlots[VEHICLE_RIDESLOT_DRIVER].entNum;
	if (driverEntNum == ENTITYNUM_NONE)
	{
		return;
	}

	gentity_t* driver = &g_entities[driverEntNum];
	assert(driver->client != nullptr);
	if ((driver->client->ps.pm_flags & 3072) == 0)
	{
		phys->inputAccelerationOLD = driver->client->sess.cmd.forwardmove;
		phys->inputTurning = VEH_PlayerRotation(driver, phys);
		phys->driverPedal = (float)driver->client->sess.cmd.forwardmove / 126.0f;
		phys->driverSteer = (float)VEH_PlayerRotation(driver, phys) / 127.0f;

		// char inputAcceleration = phys->inputAccelerationOLD;
		// inputAcceleration = inputAcceleration * (2 * (inputAcceleration >= 0) - 1);
		// if (inputAcceleration >= 10)
		// {
		// 	if (inputAcceleration > 115)
		// 	{
		// 		inputAcceleration = 115;
		// 	}
		// }
		// else
		// {
		// 	inputAcceleration = 0;
		// }
		// phys->inputAccelerationOLD = inputAcceleration;

		phys->inputAccelerationOLD = ClampInt(phys->inputAccelerationOLD, -115, 115);

		phys->driverPedal = ClampFloat(phys->driverPedal, -1.0f, 1.0f);
		phys->driverSteer = ClampFloat(phys->driverSteer, -1.0f, 1.0f);
	}
}

void VEH_UpdateClients(gentity_t* ent)
{
	VEH_UpdateClientDriver(ent);
}

void FillWeaponParms(gentity_t *vehEnt, gentity_t *player, weaponParms *wp)
{
	wp->weapDef = BG_GetWeaponDef(vehEnt->s.weapon);

	float flashMtx[4][3];
	if(!G_DObjGetWorldTagMatrix(vehEnt, scr_const.tag_flash, flashMtx))
	{
		Com_Error(ERR_DROP, "Couldn't find tag \"%s\" on vehicle (entity %d).\n", "tag_flash", vehEnt->s.number);
		return;
	}

	vec3_t angles;
	VectorClear(angles);	
	AxisToAngles(flashMtx, angles);

	AngleVectors(angles, wp->forward, wp->right, wp->up);
	VectorCopy(wp->forward, wp->gunForward);
	VectorCopy(flashMtx[3], wp->muzzleTrace);
	
//	if(vehDebugServer->boolean)
	{
		angles[0] = flashMtx[3][0] + wp->forward[0] * 1000.0f;
		angles[1] = flashMtx[3][1] + wp->forward[1] * 1000.0f;
		angles[2] = flashMtx[3][2] + wp->forward[2] * 1000.0f;

		G_DebugLine(wp->muzzleTrace, angles, colorRed, 0);
	}
}

void FireTurret(gentity_t *ent, gentity_t *player)
{
	if(ent->s.weapon)
	{
		assert(ent->scr_vehicle != nullptr);
		weaponParms wp;
		FillWeaponParms(ent, player, &wp);

		if(wp.weapDef->weapType != WEAPTYPE_BULLET)
		{
			Com_Error(ERR_DROP, "FireTurret(): WeapDef is not a bullet type.\n");
			return;
		}

		Bullet_Fire(player, wp.weapDef->fAdsSpread, &wp, ent, level.time);
		G_AddEvent(ent, EV_FIRE_WEAPON, 0);
		ent->scr_vehicle->turret.fireTime = wp.weapDef->iFireTime;
	}
}

void VEH_UpdateWeapon(gentity_t *ent)
{
	assert(ent != nullptr);
	assert(ent->scr_vehicle != nullptr);

	scr_vehicle_s *veh = ent->scr_vehicle;
	int gunnerEntNum = veh->boneIndex.riderSlots[VEHICLE_RIDESLOT_GUNNER].entNum;
	if(gunnerEntNum != ENTITYNUM_NONE && ent->s.weapon)
	{
		gentity_t *gunnerEnt = &g_entities[gunnerEntNum];
		assert(gunnerEnt->client != nullptr);

		
		if(!veh->turret.fireTime || !(veh->turret.fireTime - level.frameTime))
		{
			if((gunnerEnt->client->buttons & BUTTON_ATTACK))
			{
				FireTurret(ent, gunnerEnt);
			}
		}
		else
		{
			veh->turret.fireTime = veh->turret.fireTime - level.frameTime;
		}
	}
}

void UpdateTurret(gentity_t *ent)
{
	assert(ent->scr_vehicle != nullptr);

	int gunnerEntNum = ent->scr_vehicle->boneIndex.riderSlots[VEHICLE_RIDESLOT_GUNNER].entNum;
	if(gunnerEntNum != ENTITYNUM_NONE)
	{
		gentity_t *gunner = &g_entities[gunnerEntNum];

		assert(gunner->client != nullptr);

        ent->s.lerp.u.vehicle.gunPitch = gunner->client->ps.viewangles[0];
        ent->s.lerp.u.vehicle.gunYaw = gunner->client->ps.viewangles[1]-90; 
	}
}


void VEH_UpdateBody(gentity_t *ent, float frameTime)
{
	scr_vehicle_s *veh = ent->scr_vehicle;
	if(veh->joltTime > 0.0f)
	{
		float intensity = (veh->joltTime * sinf(veh->joltTime * 0.01f));

		ent->s.lerp.u.vehicle.bodyPitch = veh->joltDir[0] * (veh->joltTime * intensity);
		ent->s.lerp.u.vehicle.bodyRoll = veh->joltDir[1] * intensity;
		veh->joltTime -= frameTime;
		veh->joltWave += (frameTime * 720.0f);
	}
}

void VEH_UpdateSteering(gentity_t *ent)
{
	scr_vehicle_s *veh = ent->scr_vehicle;
	if(s_vehicleInfos[veh->infoIdx].steerWheels)
	{
		// bool isReverse = false;

		// if(VectorLengthSquared(veh->phys.vel) != 0.0f)
		// {
		// 	vec3_t forward;
		// 	AngleVectors(veh->phys.angles, forward, 0, 0);
		// 	isReverse = DotProduct(forward, veh->phys.vel) < 0.0f;
		// }
		// float deltaYaw = deltaYaw * (isReverse ? -10.0f : 10.0f);

		float deltaYaw = AngleDelta(veh->phys.angles[1], veh->phys.prevAngles[1]) * 10.0f;

		if(veh->phys.inputAccelerationOLD < 0)
		{
			deltaYaw = deltaYaw * -1.0f;
		}

		ent->s.lerp.u.vehicle.steerYaw = ClampFloat(deltaYaw, -45.0f, 45.0f);
	}
	else
	{
		ent->s.lerp.u.vehicle.steerYaw = 0.0f;
	}
}

void VEH_UpdateMaterialTime(gentity_t *ent, float frameTime)
{
	scr_vehicle_s *veh = ent->scr_vehicle;
	vehicle_info_t *info = &s_vehicleInfos[veh->infoIdx];

	if(!info->texScroll)
	{
		ent->s.lerp.u.vehicle.materialTime = -1;
		return;
	}

	float scale = info->texScrollScale;
//	if(vehTextureScrollScale->value > 0.0f)
//	{
//		scale = vehTextureScrollScale->value;
//	}

	scale *= (veh->speed / 176.0f) * frameTime;
	ent->s.lerp.u.vehicle.materialTime += (scale * 1000.0f);
}

void VEH_DebugBox(const float *pos, float width, float r, float g, float b)
{
	vec4_t color;
	color[0] = r;
	color[1] = g;
	color[2] = b;
	color[3] = 1.0f;

	vec3_t mins, maxs;

	mins[0] = -(width * 0.5f);
	mins[1] = -(width * 0.5f);
	mins[2] = -(width * 0.5f);
	maxs[0] = (width * 0.5f);
	maxs[1] = (width * 0.5f);
	maxs[2] = (width * 0.5f);

	G_DebugBox(pos, mins, maxs, 0.0f, color, 1, 1);
}


extern "C" void G_VehEntHandler_Think(gentity_t* pSelf)
{
	assert(pSelf != nullptr);
	assert(pSelf->scr_vehicle != nullptr);

	scr_vehicle_s* veh = pSelf->scr_vehicle;
	float frameTime = level.frameTime * 0.001;

	if ((veh->flags & 8) == 0)
	{
		InitFirstThink(pSelf);
		return;
	}

	VEH_BackupPosition(pSelf);
	memset(&s_phys, 0, sizeof(s_phys));

	for (int seatIdx = 0; seatIdx < VEHICLE_RIDESLOTS_COUNT; seatIdx++)
	{
		int occupantEntNum = veh->boneIndex.riderSlots[seatIdx].entNum;
		if (occupantEntNum != ENTITYNUM_NONE)
		{
			if (g_entities[occupantEntNum].health <= 0)
			{
				G_EntUnlink(&g_entities[occupantEntNum]);				
			}
		}
	}

	VEH_UpdateClients(pSelf);
	IntegratePosAndRot(pSelf, frameTime);
	VEH_SetPosition(pSelf, veh->phys.origin, veh->phys.angles);
	VEH_TouchEntities(pSelf, frameTime);
//	VEH_UpdateTeamOwnership(pSelf);

//	if (vehDebugServer->boolean)
//	{
//		VEH_DebugBox(veh->phys.origin, 4.0, 1.0, 1.0, 0.0); //crashes server anyway
//	}

	if ((veh->flags & 1) != 0)
	{
		VEH_UpdateWeapon(pSelf);
	}

	UpdateTurret(pSelf);
	VEH_UpdateBody(pSelf, frameTime);
	VEH_UpdateSteering(pSelf);
	VEH_UpdateMaterialTime(pSelf, frameTime);
	pSelf->s.loopSound = 0;
	pSelf->s.time2 = (VEH_GetVehicleInfo(veh->infoIdx)->suspensionTravel * 1000.0f);
	pSelf->nextthink = level.time + 50;
}


/*
int8_t VEH_PlayerRotation(gentity_s *player, vehicle_physic_t *phys)
{
  float inputYaw;
  float normalizedInputYaw;
  int direction;
  float currentYaw;
  float angle;


  inputYaw = SHORT2ANGLE((double)player->client->sess.cmd.angles[1]) + 180.0;
  normalizedInputYaw = AngleNormalize360(inputYaw);
  currentYaw = phys->angles[1] + 90.0;
  angle = normalizedInputYaw - AngleNormalize360(currentYaw);
	angle -= floorf( angle * ( 1.0f / 360.0f ) + 0.5 ) * 360.0f;
  if ( angle >= 0.0 )
  {
    direction = -1;
  }
  else
  {
    direction = 1;
  }
  if ( angle >= 20.0 )
  {
    return 127 * direction;
  }
  if ( angle >= 0.01 )
  {
    return direction * (signed int)(angle / 20.0 * 127.0);
  }
  return 0;
}

*/

bool VehicleHasSeatFree(const scr_vehicle_s* veh)
{
	for (int i = 0; i < VEHICLE_RIDESLOTS_COUNT; i++)
	{
		if (veh->boneIndex.riderSlots[i].entNum == ENTITYNUM_NONE)
		{
			return true;
		}
	}

	return false;
}

VehicleRideSlot_t* VehicleGetClosestSeat(gentity_t *ent, gentity_t *player)
{
	VehicleRideSlot_t* closestSeat = NULL;

	scr_vehicle_s* veh = ent->scr_vehicle;
	float maxDist = 999999.0f;
	for (int i = 0; i < VEHICLE_RIDESLOTS_COUNT; i++)
	{
		VehicleRideSlot_t *seat = &veh->boneIndex.riderSlots[i];

		if (seat->boneIdx != -1 && seat->entNum == ENTITYNUM_NONE)
		{
			vec3_t bonePos;
			G_DObjGetWorldBoneIndexPos(ent, seat->boneIdx, bonePos);

			float dist = Vec3Distance(bonePos, player->r.currentOrigin);
			if (dist < maxDist)
			{
				maxDist = dist;
				closestSeat = seat;
			}
		}
	}

	return closestSeat;
}

static int VEH_GetTeam(gentity_t* ent)
{
	return (int)ent->scr_vehicle->team;
}

static bool VEH_HasNoUsers(const scr_vehicle_s* veh)
{
	for (int i = 0; i < VEHICLE_RIDESLOTS_COUNT; i++)
	{
		if (veh->boneIndex.riderSlots[i].entNum != ENTITYNUM_NONE)
		{
			return false;
		}
	}
	return true;
}
	
// Returns team thats using vehicle
static int VEH_GetUserTeam(const scr_vehicle_s* veh)
{
	for (int i = 0; i < VEHICLE_RIDESLOTS_COUNT; i++)
	{
		if (veh->boneIndex.riderSlots[i].entNum != ENTITYNUM_NONE)
		{
			return (int)g_entities[veh->boneIndex.riderSlots[i].entNum].client->sess.cs.team;
		}
	}
	return TEAM_FREE; //none
}

void VEH_UpdateTeamOwnership(gentity_t* ent)
{
	scr_vehicle_s* veh = ent->scr_vehicle;
	if( VEH_HasNoUsers( veh ) )
	{
		veh->team = (int)TEAM_FREE;
		ent->team = (byte)veh->team;		
		return;
	}
	veh->team = (int)VEH_GetUserTeam(veh);
	ent->team = (byte)veh->team;
}

// true if its a plane, heli or any other vehicle
static bool IsVehicleEnt( gentity_t *ent ) 
{
	if( ent->s.eType == ET_HELICOPTER || ent->s.eType == ET_PLANE || ent->s.eType == ET_VEHICLE ) 
		return true;
	else
		return false;
}


//maybe its better to move these below somewhere else

int ClampInt(int value, int min, int max)
{
	if(value < min)
	{
		value = min;
	}
	if(value > max)
	{
		value = max;
	}
	return value;
}

float ClampFloat(float value, float min, float max)
{
    assert(min < max);

    if(value < min)
    {
        return min;
    }
    if(value > max)
    {
        return max;
    }
    return value;
}

inline void Scr_AddMeansOfDeathString( const int meansOfDeath )
{
	if ( meansOfDeath >= 0 && meansOfDeath < 16 )
	{
		Scr_AddConstString(*modNames[meansOfDeath]);
	}
	else
	{
		Scr_AddString("badMOD");
	}	
}

static bool IsClientTeam( gentity_s *player, int team )
{
	if( !player->client )
	{
		Com_Error(ERR_DROP, "IsClientTeam: called not on client\n");
		return false;
	}
	return player->client->sess.cs.team == team ? true : false;	
}


