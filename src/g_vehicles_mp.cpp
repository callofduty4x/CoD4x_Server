#include "q_shared.h"
#include "scr_vm.h"
#include "g_scr_vehicle.h"
#include "g_shared.h"
#include "q_math.h"
#include "dobj.h"
#include "bg_public.h"
#include "cscr_stringlist.h"
#include "bg.h" // BGEvent enum

uint16_t* s_wheelTags[] = { 
    &scr_const.tag_wheel_front_left,
    &scr_const.tag_wheel_front_right,
    &scr_const.tag_wheel_back_left,
    &scr_const.tag_wheel_back_right,
    &scr_const.tag_wheel_middle_left,
    &scr_const.tag_wheel_middle_right,
    NULL };

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

int8_t VEH_PlayerRotation(gentity_s *player, vehicle_physic_t *phys)
{
  char direction = player->client->sess.cmd.forwardmove;
  if(direction == 0)
  {
    direction = player->client->veh_oldforwardmove;
  }else{
    player->client->veh_oldforwardmove = direction;
  }

  if(direction > 0)
  {
    return player->client->sess.cmd.rightmove;
  }
  if(direction < 0)
  {
    return -player->client->sess.cmd.rightmove;
  }
  return 0;
}

#define MAX_VEHICLE_SEATS 3

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

void InflictDamage(gentity_t* vehEnt, gentity_t* target, float* dir, int damage)
{
	assert(vehEnt != nullptr);
	assert(target != nullptr);
	assert(vehEnt->scr_vehicle != nullptr);\

	int driverEntNum = vehEnt->scr_vehicle->boneIndex.riderSlots[0].entNum;
	if (driverEntNum == ENTITYNUM_NONE)
	{
		driverEntNum = ENTITYNUM_WORLD;
	}

	gentity_t* driver = &g_entities[driverEntNum];
	if (vehDebugServer->boolean)
	{
		Com_Printf(CON_CHANNEL_SYSTEM, "Vehicle damage to ent #%i: %.2f\n", target->s.number, damage);
	}

	G_Damage(target, vehEnt, driver, dir, target->r.currentOrigin, damage, 0, 9, -1, HITLOC_NONE, 0, 0, 0);
}

extern "C" void G_VehEntHandler_Touch(gentity_t *pSelf, gentity_t *pOther, int bTouched)
{
	if (pOther->s.eType != ET_PLAYER && pOther->s.eType != ET_SCRIPTMOVER)
	{
		return;
	}

	if (!pOther->takedamage)
	{
		return;
	}

	if (pOther->tagChildren)
	{
		return;
	}

    scr_vehicle_s* veh = pSelf->scr_vehicle;
	vehicle_info_t* info = VEH_GetVehicleInfo(veh->infoIdx);
	vec3_t moveDir;
	if (info->collisionDamage > 0.0f && Vec3NormalizeTo(veh->phys.vel, moveDir) >= 0.001f)
	{
		if (pOther->s.eType == ET_SCRIPTMOVER)
		{
			InflictDamage(pSelf, pOther, moveDir, 999999);
		}
		else
		{
			vec2_t hitDir;
			hitDir[0] = pOther->r.currentOrigin[0] - pSelf->r.currentOrigin[0];
			hitDir[1] = pOther->r.currentOrigin[1] - pSelf->r.currentOrigin[1];
			Vec2Normalize(hitDir);

			float dot = DotProduct2(moveDir, hitDir);
			if (dot > 0.8f)
			{
				if (pOther->client && (pOther->client->ps.pm_flags & PMF_PRONE) != 0)
				{
					InflictDamage(pSelf, pOther, moveDir, 999999);
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
						InflictDamage(pSelf, pOther, moveDir, damage);
					}
				}
			}
		}
	}
}

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

void VEH_JoltBody(gentity_t* ent, const float* dir, float intensity, float speedFrac, float decel)
{
	scr_vehicle_s* veh = ent->scr_vehicle;
	vehicle_info_t* info = VEH_GetVehicleInfo(veh->infoIdx);

	intensity = ClampFloat(intensity, 0.0f, 1.0f);

	float axis[3][3];
	AnglesToAxis(veh->phys.angles, axis);

	veh->joltDir[0] = DotProduct(dir, axis[0]);
	veh->joltDir[1] = -DotProduct(dir, axis[1]);
	veh->joltTime = 1.0f;
	veh->joltWave = 0.0f;
	Vec2Normalize(veh->joltDir);
	veh->joltDir[0] *= (info->maxBodyPitch * intensity);
	veh->joltDir[1] *= (info->maxBodyRoll* intensity);
	veh->joltSpeed = veh->speed * speedFrac;
	veh->joltDecel = decel;
}

extern "C" void G_VehEntHandler_Pain(gentity_t* pSelf, gentity_t* pAttacker, int damage, const float* point, const int mod, const float* dir, hitLocation_t hitloc, const int weaponIdx)
{
	if (pAttacker)
	{
		int weapon = pAttacker->s.weapon;
		if (weapon)
		{
			int weapType = BG_GetWeaponDef(weapon)->weapType;
			if (weapType == WEAPTYPE_GRENADE || weapType == WEAPTYPE_PROJECTILE)
			{
				VEH_JoltBody(pSelf, dir, 1.0, 0.0, 0.0);
			}
		}
	}
}

extern "C" void G_VehEntHandler_Die(gentity_t *pSelf, gentity_t *pInflictor, gentity_t *pAttacker, const int damage, const int mod, const int weapon, const float *dir, enum hitLocation_t hitLoc, int psTimeOffset)
{
	if (pSelf->scr_vehicle)
	{
		for (int i = 0; i < MAX_VEHICLE_SEATS; i++)
		{
			scr_vehicle_s *veh = pSelf->scr_vehicle;
			if (veh->boneIndex.riderSlots[i].entNum != ENTITYNUM_NONE)
			{
				G_EntUnlink(&g_entities[veh->boneIndex.riderSlots[i].entNum]);
			}
		}
	}

	if (pAttacker)
	{
		int weapon = pAttacker->s.weapon;
		if (weapon)
		{
			weapType_t weapType = BG_GetWeaponDef(weapon)->weapType;
			if (weapType == WEAPTYPE_GRENADE || weapType == WEAPTYPE_PROJECTILE)
			{
				VEH_JoltBody(pSelf, dir, 1.0f, 0.0, 0.0);
			}
		}
	}
}

bool VehicleHasSeatFree(const scr_vehicle_s* veh)
{
	for (int i = 0; i < MAX_VEHICLE_SEATS; i++)
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
	for (int i = 0; i < MAX_VEHICLE_SEATS; i++)
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

void LinkPlayerToVehicle(gentity_t *vehEnt, gentity_t *playerEnt)
{
	if (!playerEnt->client)
	{
		return;
	}

	if ((playerEnt->client->ps.pm_flags & PMF_VEHICLE_ATTACHED) != 0)
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

	float tagMtx[4][3];
	vec3_t angles;
	G_DObjGetWorldBoneIndexMatrix(vehEnt, closestSeat->boneIdx, tagMtx);
	AxisToAngles(tagMtx, angles);

	VectorCopy(tagMtx[3], playerEnt->r.currentOrigin);

	vec3_t originOffset;
	vec3_t anglesOffset;
	VectorClear(originOffset);
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
	playerEnt->client->ps.pm_flags |= PMF_VEHICLE_ATTACHED;
	if (closestSeat->tagName != scr_const.tag_passenger)
	{
		playerEnt->client->ps.weapFlags |= 0x80;
	}

	playerEnt->client->ps.viewlocked_entNum = vehEnt->s.number;
}

extern "C" void G_VehEntHandler_Use(gentity_t* pEnt, gentity_t* player, gentity_s *pActivator)
{
	if (player->client)
	{
		if ((player->client->ps.pm_flags & PMF_VEHICLE_ATTACHED) != 0)
		{
			G_EntUnlink(player);
		}
		else
		{
			LinkPlayerToVehicle(pEnt, player);
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

	float flashTag[4][3];
	if(!G_DObjGetWorldTagMatrix(vehEnt, scr_const.tag_flash, flashTag))
	{
		Com_Error(ERR_DROP, "Couldn't find tag \"%s\" on vehicle (entity %d).\n", "tag_flash", vehEnt->s.number);
		return;
	}

	vec3_t angles;
	AxisToAngles(flashTag, angles);
	AngleVectors(angles, wp->forward, wp->right, wp->up);
	VectorCopy(wp->forward, wp->gunForward);
	VectorCopy(flashTag[3], wp->muzzleTrace);

	if(vehDebugServer->boolean)
	{
		angles[0] = flashTag[3][0] + wp->forward[0] * 1000.0f;
		angles[1] = flashTag[3][1] + wp->forward[1] * 1000.0f;
		angles[2] = flashTag[3][2] + wp->forward[2] * 1000.0f;

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
	if(gunnerEntNum == ENTITYNUM_NONE)
	{
		ent->s.lerp.u.vehicle.gunYaw = 0.0f;
		ent->s.lerp.u.vehicle.gunPitch = 0.0f;
	}
	else
	{
		gentity_t *gunner = &g_entities[gunnerEntNum];
		
		assert(gunner->client != nullptr);

		ent->s.lerp.u.vehicle.gunPitch = gunner->client->ps.viewangles[0];
		ent->s.lerp.u.vehicle.gunYaw = gunner->client->ps.viewangles[1];
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
	if(vehTextureScrollScale->value > 0.0f)
	{
		scale = vehTextureScrollScale->value;
	}

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

	for (int seatIdx = 0; seatIdx < MAX_VEHICLE_SEATS; seatIdx++)
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

	if (vehDebugServer->boolean)
	{
		VEH_DebugBox(veh->phys.origin, 4.0, 1.0, 1.0, 0.0);
	}

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