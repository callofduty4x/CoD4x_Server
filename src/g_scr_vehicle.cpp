#include "scr_vm.h"
#include "g_scr_vehicle.h"
#include "qcommon_io.h"
#include "q_shared.h"

uint16_t* s_flashTags[] = { 
    &scr_const.tag_flash,
    &scr_const.tag_flash_11,
    &scr_const.tag_flash_2,
    &scr_const.tag_flash_22,
    &scr_const.tag_flash_3,
    NULL };


struct vehicle_info_t s_vehicleInfos[32];

float vehicle_frametime;


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
    int entityNum = 0;
    int seat;
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
 
        if (!gentity->scr_vehicle)
        {
            Scr_ObjectError(va("Entity: %i is not a script_vehicle", entityNum));
            return;
        }
    }
 
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
    int entityNum = 0;
    unsigned int i;
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
 
        if (!gentity->scr_vehicle)
        {
            Scr_ObjectError(va("Entity: %i is not a script_vehicle", entityNum));
            return;
        }
    }
 
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
VehicleCmd_VehicleInfo
Returns true if a given seat in vehicle is empty, true if occupied by an player
 
Usage: isDriverSeatEmpty = VEH_IsSeatEmpty( 0 );
============
*/
void VehicleCmd_IsSeatEmpty(scr_entref_t arg)
{
    gentity_t* gentity;
    int entityNum = 0;
    int seat;
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
 
        if (!gentity->scr_vehicle)
        {
            Scr_ObjectError(va("Entity: %i is not a script_vehicle", entityNum));
            return;
        }
    }
 
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
VehicleCmd_VehicleInfo
Prints vehicle debug into console
 
Usage: vehicle VEH_DevPrint();
============
*/
#include "bg_public.h"
void VehicleCmd_VehicleInfo(scr_entref_t arg)
{
 
    gentity_t* gentity;
 
    int entityNum = 0;
    mvabuf;
 
    scr_vehicle_s* vehicle;
 
    if (arg.classnum)
    {
 
        Scr_ObjectError("Not an entity");
        return;
    }
    else
    {
 
        entityNum = arg.entnum;
        gentity = &g_entities[entityNum];
 
        if (!gentity->scr_vehicle)
        {
            Scr_ObjectError(va("Entity: %i is not a script_vehicle", entityNum));
            return;
        }
    }
 
    //gentity_t* gentity2 = &g_entities[0];
 
//    level_bgs.clientinfo[0].attachedVehEntNum;
//    level_bgs.clientinfo[0].attachedVehSlotIndex;
//    Com_Printf(CON_CHANNEL_SCRIPT, "attachedVehEntNum %i\n", gentity2->client->sess.cs.attachedVehEntNum);
//    Com_Printf(CON_CHANNEL_SCRIPT, "attachedVehSlotIndex %i\n", gentity2->client->sess.cs.attachedVehSlotIndex);
 
 
    vehicle = gentity->scr_vehicle;
 
    gentity->unlinkAfterEvent = 0;
    gentity->flags = 1;
    vehicle->flags = 0;
    vehicle->boneIndex.riderSlots[0].entNum = 1023;
    vehicle->boneIndex.riderSlots[1].entNum = 1023;
    vehicle->boneIndex.riderSlots[2].entNum = 1023;
 
 
    Com_Printf(CON_CHANNEL_SCRIPT, "******************************************************\n>vehicle.phys\n");
    Com_Printf(CON_CHANNEL_SCRIPT, "driverPedal: %f\ndriverSteer: %f\n", vehicle->phys.driverPedal, vehicle->phys.driverSteer); // these are the steering controls
      
    Com_Printf(CON_CHANNEL_SCRIPT, "---------------\n");
    Com_Printf(CON_CHANNEL_SCRIPT, "onGround: %i\n", vehicle->phys.onGround );
       
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


void VehicleCmd_GetPmFlags(scr_entref_t arg)
{
    gentity_t* gentity;
    //scr_vehicle_s* vehicle;
    int entityNum = 0;
    //unsigned int i;
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
    Scr_AddInt(gentity->client->ps.pm_flags);

}

void VehicleCmd_SetPmFlags(scr_entref_t arg)
{
    gentity_t* gentity;
    //scr_vehicle_s* vehicle;
    int entityNum = 0;
    //unsigned int i;
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
    if (Scr_GetNumParam() != 1)
    {
        Scr_Error("Usage: setpmflags( <integer> )\n");
        return;
    }

    gentity->client->ps.pm_flags = Scr_GetInt(0);

}

extern "C" void Vehicle_AddScriptMethods()
{   
    Scr_AddMethod("veh_getplayervehicle", PlayerCmd_GetPlayerVehicle, qfalse);       
    Scr_AddMethod("veh_getplayerseat", PlayerCmd_GetPlayerSeat, qfalse); 
    Scr_AddMethod("veh_getplayerinseat", VehicleCmd_GetPlayerInSeat, qfalse);
    Scr_AddMethod("veh_isfull", VehicleCmd_IsFull, qfalse);
    Scr_AddMethod("veh_isseatempty", VehicleCmd_IsSeatEmpty, qfalse);
    Scr_AddMethod("veh_printinfo", VehicleCmd_VehicleInfo, qfalse);
    Scr_AddMethod("getpmflags", VehicleCmd_GetPmFlags, qfalse);
    Scr_AddMethod("setpmflags", VehicleCmd_SetPmFlags, qfalse);

    
}