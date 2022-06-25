#include "scr_vm.h"
#include "g_scr_vehicle.h"
#include "qcommon_io.h"
#include "q_shared.h"

//#define VEHTESTFUNC 1

void VEH_SetPosition(gentity_t *ent, const float *origin, const float *angles);

/*
 *SpawnVehicle(gentity_t *ent, const char *keyvalpair, int a3)
{
	int idx;
	scr_vehicle_s *i; // ecx
	scr_vehicle_s *freeVeh; // esi
	int custVeh; // ebx
	unsigned __int16 modelIndex; // ax
	uint16_t type; // ax
	scr_vehicle_s *vehicle; // edx
	vec3_t origin; // eax
	int v12; // edx
	int v13; // esi
	vehicleSlot_t *p_engineSndEnt; // ebx
	unsigned __int16 SlotTagNamei; // ax
	scr_vehicle_s *v16; // ebx
	void **v17; // esi
	scr_vehicle_s *v18; // ebx
	int *v19; // esi
	_UNKNOWN *result; // eax
	int v21; // eax
	vehicle_info_t *vehInfo; // ebx
	int WeaponIndexForNamePKc; // eax
	char *v24; // eax
	uint16_t v27; // ax
	unsigned __int16 **v28; // ebx
	char isDefaultVehicle; // v29 
	int numWheels; // V31
	int v32; // [esp+1Ch] [ebp-3Ch]
	int v33; // [esp+20h] [ebp-38h]
	int p_phys; // [esp+2Ch] [ebp-2Ch]
	scr_vehicle_s *v36; // [esp+38h] [ebp-20h]
	signed int defaultVeh; // [esp+3Ch] [ebp-1Ch]

	freeVeh = NULL;
	for ( idx = 0; idx < MAX_VEHICLES; idx++ )
	{
		if ( s_vehicles[idx].entNum == 1023 )
		{
			freeVeh = s_vehicles[idx];
			break;
		}
		if ( idx == MAX_VEHICLES )
		{
			Com_Error(2, "Hit max vehicle count [%d]", MAX_VEHICLES);
		}
	}
		
	custVeh = VEH_GetVehicleInfoFromName(keyvalpair);
	if ( custVeh < 0 )
	{
		Com_Error(2, "Can't find info for %s", keyvalpair);
	}
	
	ent->s.eType = 14;
	defaultVeh = VEH_GetVehicleInfoFromName("defaultvehicle_mp");
	if ( custVeh == defaultVeh )
	{
		G_SetModel(ent, "defaultvehicle_mp");
		isDefaultVehicle = 1;
	}
	else
	{
		modelIndex = ent->modelIndex;
		if ( modelIndex && (LOBYTE(v21) = G_XModelBad(modelIndex), v21) )
		{
			G_OverrideModel(ent->modelIndex, "defaultvehicle_mp");
			custVeh = defaultVeh;
			isDefaultVehicle = 1;
		}
		else
		{
			isDefaultVehicle = 0;
		}
	}
  
	G_DObjUpdate(ent);
	type = VEH_GetVehicleInfo(custVeh).type;
	if ( type <= 1u )
	{
		numWheels = type == VEH_WHEELS_4 ? 4 : 6;
		for( idx = 0; SV_DObjGetBoneIndex(ent, s_wheelTags[idx]) >= 0; idx++ )
		{
			if ( numWheels == idx )
				goto ALLRIGHT; //SKIP & GO 
		}
		
		if ( isDefaultVehicle )
		{
			Com_Error(2, "ERROR: default vehicle is missing a required tag!");
		}
	
		Com_PrintWarning(15, "WARNING: vehicle '%s' is missing a required tag! switching to default vehicle model and info.\n", SL_ConvertToString(G_ModelName(ent->modelIndex)) );
		G_SetModel(ent, "defaultvehicle_mp");
		G_DObjUpdate(ent);
	
		type = VEH_GetVehicleInfo(defaultVeh).type;
		if ( type <= 1u )
		{
			numWheels = type == VEH_WHEELS_4 ? 4 : 6;
			idx = 0;
			for( idx = 0 idx < numWheels; idx++ )
			{
				if( SV_DObjGetBoneIndex(ent, s_wheelTags[idx]) < 0 )
				{
					Com_Error(2, "ERROR: default vehicle is missing a required tag!");
				}				
			}
		}
	}
	else
	{
ALLRIGHT:
		defaultVeh = custVeh;
	}
	
	if ( !level.initializing )
	{
		vehInfo = &VEH_GetVehicleInfo(defaultVeh);
		if ( !IsItemRegistered(G_GetWeaponIndexForName(vehInfo->turretWeapon)) )
		{
			Scr_Error(va("vehicle '%s' not precached", vehInfo->name));
		}
	}
	
	
	memset_stub( freeVeh, 0, sizeof(scr_vehicle_s) );
  
	BYTE2(ent->field_16C) = 22;
	ent->r.svFlags = 4;
	ent->r.contents = 0x2080;
	if ( (ent->spawnflags & 1) != 0 ) //is drivable flag
	{
		ent->r.contents = (int)loc_202080;
	}
	
	ent->s.eType = 14;
	ent->s.lerp.eFlags = 0;
	ent->s.lerp.pos.trType = TR_INTERPOLATE;
	ent->s.lerp.apos.trType = TR_INTERPOLATE;
	ent->s.lerp.u.vehicle.materialTime = 0;
	ent->s.time2 = 0;
	ent->s.loopSound = 0;
	ent->s.weapon = G_GetWeaponIndexForNamePKc(VEH_GetVehicleInfo(defaultVeh).turretWeapon);
	ent->s.weaponModel = 0;
	ent->s.lerp.u.earthquake.duration = 0;
  
	
	ent->scr_vehicle = freeVeh;
	ent->s.lerp.u.turret.gunAngles = 0LL;
	ent->s.lerp.u.anonymous.data[4] = 0LL;
	ent->nextthink = level.time + 50;
	
	VEH_InitEntity( ent, freeVeh, defaultVeh );
	
  ent->takedamage = 1;
  LOBYTE(ent->field_16C) = 1;
  *(_DWORD *)&ent->gap180[16] = &unk_810211;
  _Z16SV_DObjGetBoundsP9gentity_sPfS1_(ent, ent->r.mins, ent->r.maxs);
  SV_LinkEntity(ent);
  vehicle = ent->vehicle;
  p_phys = (int)&vehicle->phys;
  vehicle->phys.origin[0] = ent->r.currentOrigin[0];
  vehicle->phys.origin[1] = ent->r.currentOrigin[1];
  vehicle->phys.origin[2] = ent->r.currentOrigin[2];
  vehicle->phys.prevOrigin[0] = ent->r.currentOrigin[0];
  vehicle->phys.prevOrigin[1] = ent->r.currentOrigin[1];
  vehicle->phys.prevOrigin[2] = ent->r.currentOrigin[2];
  vehicle->phys.angles[0] = ent->r.currentAngles[0];
  vehicle->phys.angles[1] = ent->r.currentAngles[1];
  vehicle->phys.angles[2] = ent->r.currentAngles[2];
  vehicle->phys.prevAngles[0] = ent->r.currentAngles[0];
  vehicle->phys.prevAngles[1] = ent->r.currentAngles[1];
  vehicle->phys.prevAngles[2] = ent->r.currentAngles[2];
  vehicle->phys.mins[0] = 0.0;
  vehicle->phys.mins[1] = 0.0;
  vehicle->phys.mins[2] = 0.0;
  vehicle->phys.maxs[0] = 0.0;
  vehicle->phys.maxs[1] = 0.0;
  vehicle->phys.maxs[2] = 0.0;
  vehicle->phys.vel[0] = 0.0;
  vehicle->phys.vel[1] = 0.0;
  vehicle->phys.vel[2] = 0.0;
  vehicle->phys.bodyVel[0] = 0.0;
  vehicle->phys.bodyVel[1] = 0.0;
  vehicle->phys.bodyVel[2] = 0.0;
  vehicle->phys.rotVel[0] = 0.0;
  vehicle->phys.rotVel[1] = 0.0;
  vehicle->phys.rotVel[2] = 0.0;
  origin = (_DWORD *)vehicle->phys.origin;
  v12 = 4;
  do
  {
    origin[44] = 0;
    origin[48] = 0;
    origin[52] = 0;
    ++origin;
    --v12;
  }
  while ( v12 );
  *(_DWORD *)(p_phys + 168) = 0x41F00000;
  *(_DWORD *)(p_phys + 172) = 0x41F00000;
  *(_DWORD *)(p_phys + 80) = 0;
  *(_DWORD *)(p_phys + 84) = 0;
  *(_DWORD *)(p_phys + 88) = 0;
  *(_DWORD *)(p_phys + 92) = 0;
  v6->entNum = ent->s.number;
  v6->infoIdx = defaultVeh;
  v6->moveState = VEH_MOVESTATE_STOP;
  v6->waitNode = -1;
  v6->waitSpeed = -1.0;
  v6->turret.fireTime = 0;
  v6->turret.fireBarrel = 0;
  v6->turret.turretState = VEH_TURRET_STOPPED;
  _Z10Com_MemsetPvii(&v6->jitter, 0, 60);
  v6->drawOnCompass = 0;
  v6->lookAtText0 = 0;
  v6->lookAtText1 = 0;
  v6->manualMode = 0;
  v6->manualSpeed = 0.0;
  v6->manualAccel = 0.0;
  v6->manualDecel = 0.0;
  v6->manualTime = 0.0;
  v6->speed = 0.0;
  v6->turningAbility = 0.5;
  v6->joltDir[0] = 0.0;
  v6->joltDir[1] = 0.0;
  v6->joltTime = 0.0;
  v6->joltWave = 0.0;
  v6->joltSpeed = 0.0;
  v6->joltDecel = 0.0;
  v6->turretHitNum = 0;
  _Z15VEH_SetPositionP9gentity_sPKfS2_(ent, ent->r.currentOrigin, ent->r.currentAngles);
  v36 = ent->vehicle;
  v13 = 0;
  p_engineSndEnt = (vehicleSlot_t *)&v36->engineSndEnt;
  do
  {
    SlotTagNamei = _Z25BG_VehiclesGetSlotTagNamei(v13);
    p_engineSndEnt[1].constVehSlotName = SlotTagNamei;
    p_engineSndEnt[1].boneIndex = SV_DObjGetBoneIndex(ent, SlotTagNamei);
    p_engineSndEnt[1].linkEntNum = 1023;
    ++v13;
    ++p_engineSndEnt;
  }
  while ( v13 != 3 );
  v36->boneIndex.detach = SV_DObjGetBoneIndex(ent, scr_const.tag_detach);
  v36->boneIndex.popout = SV_DObjGetBoneIndex(ent, scr_const.tag_popout);
  v36->boneIndex.body = SV_DObjGetBoneIndex(ent, scr_const.tag_body);
  v36->boneIndex.turret = SV_DObjGetBoneIndex(ent, scr_const.tag_turret);
  v36->boneIndex.barrel = SV_DObjGetBoneIndex(ent, scr_const.tag_barrel);
  v16 = v36;
  v17 = &s_flashTags;
  do
  {
    v16->boneIndex.flash[0] = SV_DObjGetBoneIndex(ent, *(unsigned __int16 *)*v17++);
    v16 = (scr_vehicle_s *)((char *)v16 + 4);
  }
  while ( &s_flashTags + 5 != v17 );
  v18 = v36;
  v19 = (int *)s_wheelTags;
  do
  {
    v18->boneIndex.wheel[0] = SV_DObjGetBoneIndex(ent, *(unsigned __int16 *)*v19++);
    v18 = (scr_vehicle_s *)((char *)v18 + 4);
    result = &dword_3A8650;
  }
  while ( &dword_3A8650 != v19 );
  return result;
}
*/

extern "C" void VEH_InitVehicle( gentity_t *vehEnt, scr_vehicle_s *scrVeh, int vehicleInfo )
{
	scr_vehicle_s *vehicle; // edx
	vehicle_physic_t *p_phys; // ebx
	int wheel; // edx

	vehicle = vehEnt->scr_vehicle;
	p_phys = &vehicle->phys;
  
	VectorCopy( vehEnt->r.currentOrigin, vehicle->phys.origin );
	VectorCopy( vehEnt->r.currentOrigin, vehicle->phys.prevOrigin );
	VectorCopy( vehEnt->r.currentAngles, vehicle->phys.angles );
	VectorCopy( vehEnt->r.currentAngles, vehicle->phys.prevAngles );	

	VectorClear( vehicle->phys.mins );
	VectorClear( vehicle->phys.maxs );

	VectorClear( vehicle->phys.vel );
	VectorClear( vehicle->phys.bodyVel );
	VectorClear( vehicle->phys.rotVel );	

	for( wheel = 0; wheel < 4; wheel++ )
	{
		p_phys->wheelZVel[wheel] = 0.0;
		p_phys->wheelZPos[wheel] = 0.0;
		p_phys->wheelSurfType[wheel] = 0;		
	}

	p_phys->maxPitchAngle = 25.0;
	p_phys->maxRollAngle = 25.0;
	p_phys->maxAngleVel[1] = 90.0;
	p_phys->maxAngleVel[0] = 45.0;
	p_phys->maxAngleVel[2] = 45.0;
	p_phys->yawAccel = 25.0;
	p_phys->yawDecel = 15.0;

	VectorClear( p_phys->worldTilt );
	VectorClear( p_phys->worldTiltVel ); 

	scrVeh->entNum = vehEnt->s.number;
	scrVeh->infoIdx = vehicleInfo;

	scrVeh->moveState = VEH_MOVESTATE_STOP;
	scrVeh->waitNode = -1;
	scrVeh->waitSpeed = -1.0;

	scrVeh->turret.fireTime = 0;
	scrVeh->turret.fireBarrel = 0;
	scrVeh->turret.turretState = VEH_TURRET_STOPPED;
	scrVeh->turret.barrelOffset = 0.0;
	scrVeh->turret.barrelBlocked = 0;

	Com_Memset(&scrVeh->jitter, 0, 0x3C);

	scrVeh->drawOnCompass = 0;
	scrVeh->lookAtText0 = 0;
	scrVeh->lookAtText1 = 0;

	scrVeh->manualMode = 0;
	scrVeh->manualSpeed = 0.0;
	scrVeh->manualAccel = 0.0;
	scrVeh->manualDecel = 0.0;
	scrVeh->manualTime = 0.0;

	scrVeh->speed = 0.0;
	scrVeh->maxDragSpeed = 1056.0;
	scrVeh->turningAbility = 0.5;

	scrVeh->hasTarget = 0;
	scrVeh->targetEnt = 1023;
	
	VectorClear( scrVeh->targetOrigin );
	VectorClear( scrVeh->targetOffset );

	scrVeh->joltDir[0] = 0.0;
	scrVeh->joltDir[1] = 0.0;
	scrVeh->joltTime = 0.0;
	scrVeh->joltWave = 0.0;
	scrVeh->joltSpeed = 0.0;
	scrVeh->joltDecel = 0.0;
	
	scrVeh->playEngineSound = 1;
	scrVeh->idleSndLerp = 0.0;
	scrVeh->engineSndLerp = 0.0;
	
	scrVeh->turretHitNum = 0;
	
	scrVeh->hover.hoverRadius = 30.0;
	scrVeh->hover.hoverSpeed = 14.080001;
	scrVeh->hover.hoverAccel = 8.8000002;
	scrVeh->hover.useHoverAccelForAngles = 0;
	
	scrVeh->yawSlowDown = 0;
	scrVeh->yawOverShoot = 0.1;
	scrVeh->prevGoalYaw = -1.0;
	scrVeh->nearGoalNotifyDist = 0.0;
	
	VEH_SetPosition( vehEnt, vehEnt->r.currentOrigin, vehEnt->r.currentAngles );
}

/*
extern "C" void VEH_InitEntity( gentity_t *vehEnt, scr_vehicle_s *veh, int vehicleDef )
{
	BYTE2(a1->field_16C) = 23;//????
	vehEnt->r.svFlags = 4;
	vehEnt->r.contents = 0x2080;
	vehEnt->s.lerp.eFlags = 0;
	vehEnt->s.lerp.pos.trType = TR_INTERPOLATE;
	vehEnt->s.lerp.apos.trType = TR_INTERPOLATE;
	vehEnt->s.lerp.u.vehicle.materialTime = 0;
	vehEnt->s.time2 = 0;
	vehEnt->s.loopSound = 0;
	vehEnt->s.weapon = G_GetWeaponIndexForName( VEH_GetVehicleInfo(vehicleDef).turretWeapon ); //( BG_WeaponName( VEH_GetVehicleInfo(vehicleDef).turretWeapon ) );
	vehEnt->s.weaponModel = 0;
	vehEnt->s.lerp.u.earthquake.duration = 0;
	
	vehEnt->s.lerp.u.turret.gunAngles = 0LL;
	&vehEnt->s.lerp.u.anonymous.data[4] = 0LL;
	
	vehEnt->scr_vehicle = veh;
	vehEnt->nextthink = level.time + 50;
	vehEnt->takedamage = 1;
	
	LOBYTE(vehEnt->field_16C) = 1; //????
	*(_DWORD *)&vehEnt->gap180[16] = &unk_810211; //????
  
	SV_DObjGetBounds( vehEnt, vehEnt->r.mins, vehEnt->r.maxs );
	SV_LinkEntity(vehEnt);
}
*/


gentity_s * VEH_GetVehicle(int entNum)
{
    assert(entNum < MAX_GENTITIES);

    if ( g_entities[entNum].classname != scr_const.script_vehicle )
    {
        Scr_Error(va("entity %i is not a script_vehicle\n", entNum));
    }
    if ( !g_entities[entNum].scr_vehicle )
    {
        Scr_Error(va("entity %i doesn't have a script_vehicle\n", entNum));
    }
    return &g_entities[entNum];
}

gentity_s * GScr_GetVehicle(scr_entref_t entref)
{
    if ( !entref.classnum )
    {
        return VEH_GetVehicle(entref.entnum);
    }
    Scr_ObjectError("not an entity");
    return 0;
}

/*
============
PlayerCmd_GetPlayerVehicle
 
Returns vehicle entity when a player is in vehicle, undefined otherwise
Usage: vehicle = player VEH_GetPlayerVehicle();
============
*/
void PlayerCmd_GetPlayerVehicle(scr_entref_t arg)
{
    gentity_t* gentity;
    int entityNum = 0;
//    int speed;
    mvabuf;
 
    if (arg.classnum)
    {
        Scr_ObjectError("Not an entity");
        return;
    }
    else
    {
        entityNum = arg.entnum;
        gentity = &g_entities[entityNum];
 
        if (!gentity->client)
        {
            Scr_ObjectError(va("Entity: %i is not a player", entityNum));
            return;
        }
    }
    
    if( gentity->client->sess.cs.attachedVehEntNum != 1023 /*worldspawn*/ )
        Scr_AddEntity( &g_entities[gentity->client->sess.cs.attachedVehEntNum] );
    else
        Scr_AddUndefined();
}
 
/*
============
PlayerCmd_veh_GetPlayerSeat
 
Returns the seat which player is occupying in vehicle, will throw error if player is not in vehicle
Usage: OccupiedSeat = player VEH_GetPlayerSeat();
============
*/
void PlayerCmd_GetPlayerSeat(scr_entref_t arg)
{
    gentity_t* gentity;
    int entityNum = 0;
//    int speed;
    mvabuf;
 
    if (arg.classnum)
    {
        Scr_ObjectError("Not an entity");
        return;
    }
    else
    {
        entityNum = arg.entnum;
        gentity = &g_entities[entityNum];
 
        if (!gentity->client)
        {
            Scr_ObjectError(va("Entity: %i is not a player", entityNum));
            return;
        }
    }
    
 
    if( gentity->client->sess.cs.attachedVehEntNum == 1023 /*worldspawn*/ )
    {
        Scr_ObjectError(va("Player %i is not using vehicle", entityNum));
        return; 
    }
    
    Scr_AddInt( gentity->client->sess.cs.attachedVehSlotIndex );
}
 
/*
============
VehicleCmd_GetPlayerInSeat
Returns player for a given seat, undefined if empty
 
example: player = vehicle VEH_GetPlayerInSeat( seatNum );
============
*/
void VehicleCmd_GetPlayerInSeat(scr_entref_t arg)
{
    gentity_t* gentity;
    int seat;
    mvabuf;
 
    gentity = GScr_GetVehicle(arg);
 
    if (Scr_GetNumParam() != 1)
    {
        Scr_Error("Usage: player = vehicle VEH_GetPlayerInSeat( <integer> )\n");
    }
 
    seat = Scr_GetInt(0);
 
    if (seat > 2 || seat < 0)
    {
        Scr_Error("Wrong seat - correct are 0 (driver), 1 (passenger), 2 (gunner)\n");
    }
 
    if (gentity->scr_vehicle->boneIndex.riderSlots[seat].entNum == 1023)
    {
        Scr_AddUndefined();
    }
    else
    {
        Scr_AddEntity(&g_entities[gentity->scr_vehicle->boneIndex.riderSlots[seat].entNum]);
    }
}
 
/*
============
VehicleCmd_IsFull
Returns false if there are empty seats
 
Example: allSeatsOccupied = vehicle VEH_IsFull();
============
*/
void VehicleCmd_IsFull(scr_entref_t arg)
{
    gentity_t* gentity;
    scr_vehicle_s* vehicle;
    unsigned int i;
    mvabuf;
 
    gentity = GScr_GetVehicle(arg);


    vehicle = gentity->scr_vehicle;
 
    for (i = 0; i < ARRAY_COUNT(vehicle->boneIndex.riderSlots); i++)
    {
        if (vehicle->boneIndex.riderSlots[i].entNum == 1023)
        {
            Scr_AddBool(false);
            return;
        }
    }
    Scr_AddBool(true);
}
 
/*
============
VehicleCmd_IsSeatEmpty
Returns true if a given seat in vehicle is empty, true if occupied by an player
 
Usage: isDriverSeatEmpty = VEH_IsSeatEmpty( 0 );
============
*/
void VehicleCmd_IsSeatEmpty(scr_entref_t arg)
{
    gentity_t* gentity;
    int seat;
    mvabuf;

    gentity = GScr_GetVehicle(arg);
    if (Scr_GetNumParam() != 1)
    {
         Scr_Error("Usage: isSeatFree = vehicle VEH_IsSeatEmpty( <integer> )\n");
    }
 
    seat = Scr_GetInt(0);
 
    if( seat > 2 || seat < 0 )
    {
        Scr_Error("Wrong seat - correct are 0 (driver), 1 (passenger), 2 (gunner)\n");
    }
 
    Scr_AddBool( ((gentity->scr_vehicle->boneIndex.riderSlots[seat].entNum == 1023) ? true : false) );
}
 
/*
============
VehicleCmd_GetWheelSurfaceType
Returns surfacetype of wheel
 
Usage: surfacetype = VEH_GetWheelSurfaceType( 0 );
============
*/
void VehicleCmd_GetWheelSurfaceType(scr_entref_t arg)
{
    gentity_t* gentity;
    int wheel;
    mvabuf;
 
    gentity = GScr_GetVehicle(arg);

    if (Scr_GetNumParam() != 1)
    {
         Scr_Error("Usage: surfacetype = VEH_GetWheelSurfaceType( <wheel idx> )\n");
    }
 
    wheel = Scr_GetInt(0);
 
    if( wheel > 3 || wheel < 0 )
    {
        Scr_Error("Wrong wheel, call VEH_GetWheelSurfaceType with value in range of 0-3\n");
    }
 
    Scr_AddInt( (gentity->scr_vehicle->phys.wheelSurfType[wheel]) );
}
 
 
/*
============
VehicleCmd_Teleport

Teleport vehicle
Note: setting .origin/.angles vars in script didn't work

Usage: vehicleEnt VEH_Teleport( (0,0,0), (0,90,0) );
============
*/
void VehicleCmd_Teleport(scr_entref_t arg)
{
    gentity_t* gentity;
    scr_vehicle_s* vehicle;
 	
    vec3_t position;
    vec3_t direction;

    mvabuf;
 
    gentity = GScr_GetVehicle(arg);
    vehicle = gentity->scr_vehicle;	

    if (Scr_GetNumParam() != 2)
    {
         Scr_Error("Usage: vehicleEnt VEH_Teleport( <origin>, <angles> )\n");
    }
 
    Scr_GetVector(0, position);
    Scr_GetVector(1, direction);
	
	//ugh, ugly spaghetti
	gentity->r.currentOrigin[0] = position[0];
	gentity->r.currentOrigin[1] = position[1];
	gentity->r.currentOrigin[2] = position[2];	
	
	gentity->r.currentAngles[0] = direction[0];
	gentity->r.currentAngles[1] = direction[1];
	gentity->r.currentAngles[2] = direction[2];	
	
	vehicle->phys.origin[0] = position[0];
	vehicle->phys.origin[1] = position[1];
	vehicle->phys.origin[2] = position[2];	

	vehicle->phys.prevOrigin[0] = position[0];
	vehicle->phys.prevOrigin[1] = position[1];
	vehicle->phys.prevOrigin[2] = position[2];		
	
	vehicle->phys.angles[0] = direction[0];
	vehicle->phys.angles[1] = direction[1];
	vehicle->phys.angles[2] = direction[2];	

	vehicle->phys.prevAngles[0] = direction[0];
	vehicle->phys.prevAngles[1] = direction[1];
	vehicle->phys.prevAngles[2] = direction[2];	
} 
 
 
/*
============
VehicleCmd_GetTurretRotation

Returns current turret rotation

Usage: turretAngles = vehicle VEH_GetTurretRotation();
============
*/
void VehicleCmd_GetTurretRotation(scr_entref_t arg)
{
    gentity_t* gentity;
	vec3_t turretRot;	
    mvabuf;
 
    gentity = GScr_GetVehicle(arg);

	turretRot[0] = gentity->s.lerp.u.vehicle.gunPitch;
	turretRot[1] = gentity->s.lerp.u.vehicle.gunYaw;
	turretRot[2] = 0;
	
	Scr_AddVector( turretRot );
}

/*
============
VehicleCmd_IsOnGround

Returns false when vehicle is in air

Usage: isOnGround = vehicle VEH_IsOnGround();
============
*/
void VehicleCmd_IsOnGround(scr_entref_t arg)
{
    gentity_t* gentity;
    mvabuf;
 
    gentity = GScr_GetVehicle(arg);
	Scr_AddInt( gentity->scr_vehicle->phys.onGround );
}

/*
============
VehicleCmd_GetSpeed

Returns current speed

Usage: speed = vehicleEnt VEH_GetSpeed();
============
*/
void VehicleCmd_GetSpeed(scr_entref_t arg)
{
    gentity_t* gentity;	
    mvabuf;
 
    gentity = GScr_GetVehicle(arg);
	Scr_AddInt( gentity->scr_vehicle->speed );	
}

/*
============
VehicleCmd_MakeVehicleUnusable

Make vehicle unusable by player, remember to bailout all players from vehicle before doing this!

Usage: vehicleEnt VEH_MakeUnusable();
============
*/
void VehicleCmd_MakeVehicleUnusable(scr_entref_t arg)
{
	//TODO
	Scr_Error("VEH_MakeUnusable() not implemented yet\n");
}

/*
============
VehicleCmd_MakeVehicleUsable

Make vehicle usable by player in case when vehicle was spawned without USABLE (1) flag
If optional argument is given, then only this seat will be usable

Usage: vehicleEnt VEH_MakeUsable( (optional)<unlocked seat> );
============
*/
void VehicleCmd_MakeVehicleUsable(scr_entref_t arg)
{
	//TODO 
	Scr_Error("VEH_MakeUsable() not implemented yet\n");	
}



#ifdef VEHTESTFUNC
/*
============
VehicleCmd_VehicleInfo
Prints vehicle debug into console
 
Usage: vehicle VEH_PrintInfo();
============
*/

void VehicleCmd_VehicleInfo(scr_entref_t arg)
{
    gentity_t* gentity;
    scr_vehicle_s* vehicle;
 
    mvabuf;
	
    gentity = GScr_GetVehicle(arg);
    vehicle = gentity->scr_vehicle;
	  
    Com_Printf(CON_CHANNEL_SCRIPT, "****************** VEH_DevPrint() ******************\n");
	Com_Printf(CON_CHANNEL_SCRIPT, "vehicledef: %i\n", vehicle->infoIdx);
	
	
    Com_Printf(CON_CHANNEL_SCRIPT, "driverPedal: %f\ndriverSteer: %f\n", vehicle->phys.driverPedal, vehicle->phys.driverSteer); // these are the steering controls
      
    Com_Printf(CON_CHANNEL_SCRIPT, "---------------\n");

    Com_Printf(CON_CHANNEL_SCRIPT, "yawAccel: %f\n", vehicle->phys.yawAccel);
	Com_Printf(CON_CHANNEL_SCRIPT, "yawDecel: %f\n", vehicle->phys.yawDecel);
		
    Com_Printf(CON_CHANNEL_SCRIPT, "---------------\n");
    Com_Printf(CON_CHANNEL_SCRIPT, "vel: %f %f %f\n", vehicle->phys.vel[0], vehicle->phys.vel[1], vehicle->phys.vel[2]);
    Com_Printf(CON_CHANNEL_SCRIPT, "bodyVel: %f %f %f\n", vehicle->phys.bodyVel[0], vehicle->phys.bodyVel[1], vehicle->phys.bodyVel[2]);
    Com_Printf(CON_CHANNEL_SCRIPT, "rotVel: %f %f %f\n", vehicle->phys.rotVel[0], vehicle->phys.rotVel[1], vehicle->phys.rotVel[2]);
    Com_Printf(CON_CHANNEL_SCRIPT, "accel: %f %f %f\n", vehicle->phys.accel[0], vehicle->phys.accel[1], vehicle->phys.accel[2]);
      
    Com_Printf(CON_CHANNEL_SCRIPT, "---------------\n");
    Com_Printf(CON_CHANNEL_SCRIPT, "maxPitchAngle: %f\n", vehicle->phys.maxPitchAngle);
    Com_Printf(CON_CHANNEL_SCRIPT, "maxRollAngle: %f\n", vehicle->phys.maxRollAngle);
       
    Com_Printf(CON_CHANNEL_SCRIPT, "---------------\n");
    Com_Printf(CON_CHANNEL_SCRIPT, "wheelZVel %f %f %f %f\n", vehicle->phys.wheelZVel[0], vehicle->phys.wheelZVel[1], vehicle->phys.wheelZVel[2], vehicle->phys.wheelZVel[3]);
    Com_Printf(CON_CHANNEL_SCRIPT, "wheelZPos %f %f %f %f\n", vehicle->phys.wheelZPos[0], vehicle->phys.wheelZVel[1], vehicle->phys.wheelZPos[2], vehicle->phys.wheelZPos[3]);
    Com_Printf(CON_CHANNEL_SCRIPT, "wheelSurfType %i %i %i %i\n", vehicle->phys.wheelSurfType[0], vehicle->phys.wheelSurfType[1], vehicle->phys.wheelSurfType[2], vehicle->phys.wheelSurfType[3]);
 
    Com_Printf(CON_CHANNEL_SCRIPT, "---------------\n");
    Com_Printf(CON_CHANNEL_SCRIPT, "playEngineSound %i\n", vehicle->playEngineSound);
 
    Com_Printf(CON_CHANNEL_SCRIPT, "---------------\n");
    Com_Printf(CON_CHANNEL_SCRIPT, "riderSlots[driver]: %s - entNum %i\n", ((vehicle->boneIndex.riderSlots[0].entNum != 1023) ? "OCCUPIED" : "FREE"), vehicle->boneIndex.riderSlots[0].entNum);
    Com_Printf(CON_CHANNEL_SCRIPT, "riderSlots[passenger]: %s - entNum %i\n", ((vehicle->boneIndex.riderSlots[1].entNum != 1023) ? "OCCUPIED" : "FREE"), vehicle->boneIndex.riderSlots[1].entNum);
    Com_Printf(CON_CHANNEL_SCRIPT, "riderSlots[gunner]: %s - entNum %i\n", ((vehicle->boneIndex.riderSlots[2].entNum != 1023) ? "OCCUPIED" : "FREE"), vehicle->boneIndex.riderSlots[2].entNum);
}

//testfunc
void VehicleCmd_Test1(scr_entref_t arg)
{
    gentity_t* gentity;
    scr_vehicle_s* vehicle;

    mvabuf;
 
    gentity = GScr_GetVehicle(arg);
    vehicle = gentity->scr_vehicle;	

	Scr_AddInt( gentity->s.lerp.u.vehicle.materialTime );
}
#endif


void VehicleCmd_EnterVehicle(scr_entref_t arg)
{
	Scr_Error("VEH_EnterVehicle() not implemented yet\n");
	Scr_AddBool( qfalse );
}

void VehicleCmd_ExitVehicle(scr_entref_t arg)
{
	Scr_Error("VEH_ExitVehicle() not implemented yet\n");	
	Scr_AddBool( qfalse );
}

extern "C" void Vehicle_AddScriptMethods()
{   
    Scr_AddMethod("veh_getplayervehicle", PlayerCmd_GetPlayerVehicle, qfalse);       
    Scr_AddMethod("veh_getplayerseat", PlayerCmd_GetPlayerSeat, qfalse); 
    Scr_AddMethod("veh_getplayerinseat", VehicleCmd_GetPlayerInSeat, qfalse);
    Scr_AddMethod("veh_isfull", VehicleCmd_IsFull, qfalse);
    Scr_AddMethod("veh_isseatempty", VehicleCmd_IsSeatEmpty, qfalse);
	Scr_AddMethod("veh_getwheelsurfacetype", VehicleCmd_GetWheelSurfaceType, qfalse);
	Scr_AddMethod("veh_teleport", VehicleCmd_Teleport, qfalse);
	Scr_AddMethod("veh_getturretrotation", VehicleCmd_GetTurretRotation, qfalse);
	Scr_AddMethod("veh_isonground", VehicleCmd_IsOnGround, qfalse);
	Scr_AddMethod("veh_getspeed", VehicleCmd_GetSpeed, qfalse);
	Scr_AddMethod("veh_makeunusable", VehicleCmd_MakeVehicleUnusable, qfalse);		
	Scr_AddMethod("veh_makeusable", VehicleCmd_MakeVehicleUsable, qfalse);

	Scr_AddMethod("veh_entervehicle", VehicleCmd_EnterVehicle, qfalse);		
	Scr_AddMethod("veh_exitvehicle", VehicleCmd_ExitVehicle, qfalse);		
	
#ifdef VEHTESTFUNC
    Scr_AddMethod("veh_printinfo", VehicleCmd_VehicleInfo, qfalse); //todo: remove when its all done	
	Scr_AddMethod("veh_testa", VehicleCmd_Test1, qfalse);
#endif
}


extern "C" void Vehicle_AddScriptCallbacks()
{
	script_CallBacks_new[SCR_CB_VEHICLE_USE] = GScr_LoadScriptAndLabel("maps/mp/_vehicle_callbacks", "CodeCallback_VehicleUse", qfalse);
	script_CallBacks_new[SCR_CB_VEHICLE_TOUCH] = GScr_LoadScriptAndLabel("maps/mp/gametypes/_vehicle_callbacks", "CodeCallback_VehicleTouch", qfalse);	
	script_CallBacks_new[SCR_CB_VEHICLE_DAMAGE] = GScr_LoadScriptAndLabel("maps/mp/gametypes/_vehicle_callbacks", "CodeCallback_VehicleDamage", qfalse);
	script_CallBacks_new[SCR_CB_VEHICLE_KILLED] = GScr_LoadScriptAndLabel("maps/mp/gametypes/_vehicle_callbacks", "CodeCallback_VehicleKilled", qfalse);	
}