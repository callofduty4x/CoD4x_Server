/*
===========================================================================
    Copyright (C) 2010-2013  Ninja and TheKelm

    This file is part of CoD4X18-Server source code.

    CoD4X18-Server source code is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as
    published by the Free Software Foundation, either version 3 of the
    License, or (at your option) any later version.

    CoD4X18-Server source code is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>
===========================================================================
*/



#include "q_math.h"
#include "cvar.h"
#include "q_shared.h"
#include "g_shared.h"
#include "qcommon_io.h"
#include "entity.h"
#include "player.h"
#include "server.h"
#include "g_sv_shared.h"

#include <math.h>

qboolean extendedMovementControl = 0;


//This function init movement variables with default values
void Pmove_ExtendedInitForClient(client_t *cl){

    if(g_speed)
        cl->playerMoveSpeed = g_speed->integer;
    else
        cl->playerMoveSpeed = 190;

    if(jump_height)
        cl->jumpHeight = jump_height->value;
    else
        cl->jumpHeight = 39;

    if(g_gravity)
        cl->gravity = (int)g_gravity->value;
    else
        cl->gravity = 800;
}


void Pmove_ExtendedResetState( void ){

    int i;
    client_t *cl;

    for(cl = svs.clients, i = 0; i < MAX_CLIENTS; i++){
        Pmove_ExtendedInitForClient(cl);
    }

    extendedMovementControl = qfalse;
}


void Pmove_ExtendedTurnOn( void ){

    int i;
    client_t *cl;

    if(extendedMovementControl){
        return;
    }

    Com_DPrintf("Turning on per player based movement control. Default global cvars are now disabled\n");

    for(cl = svs.clients, i = 0; i < MAX_CLIENTS; i++){
        Pmove_ExtendedInitForClient(cl);
    }

    extendedMovementControl = qtrue;
}


__cdecl __optimize3 int Pmove_GetSpeed( playerState_t *ps ) {

	if(extendedMovementControl)
		return svs.clients[ps->clientNum].playerMoveSpeed;
	else
		return g_speed->integer;

}

__cdecl __optimize3 int Pmove_GetGravity( playerState_t *ps ) {

	int gravity;

	if(extendedMovementControl)
		gravity = svs.clients[ps->clientNum].gravity;
	else
		gravity = (int)g_gravity->value;

	return gravity;
}


__cdecl __optimize3 float Jump_GetHeight( playerState_t *ps) {

	if(extendedMovementControl)
		return svs.clients[ps->clientNum].jumpHeight;
	else
		return jump_height->value;
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

__cdecl __optimize3 float Jump_CalcHeight( playerState_t* ps ) {
	
	float val;
	float newdiv;
	float jumpHeight = Jump_GetHeight(ps);

	val = jumpHeight;
	val = (val + val) * ps->gravity;

	if(ps->legsAnimDuration & 64 && ps->pm_time <= 1800 ){

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

__cdecl __optimize3 void StuckInClient( gentity_t* gen )
{

}