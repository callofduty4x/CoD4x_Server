/*
===========================================================================
    Copyright (C) 2010-2013  Ninja and TheKelm
    Copyright (C) 1999-2005 Id Software, Inc.

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



#include "q_shared.h"
#include "entity.h"
#include "player.h"
#include "g_sv_shared.h"
#include "cvar.h"
#include "server.h"
#include "allhooks.h"

#include <string.h>
#include <stdlib.h>
#include <ctype.h>

__cdecl void ClientSpawn(gentity_t* ent, float* px, float* py)
{

//    ent->client->ps.gravity = 800;//(int)g_gravity->value;

__asm__ __volatile__(
"	push   %%ebp\n"
"	mov    %%esp,%%ebp\n"
"	push   %%edi\n"
"	push   %%esi\n"
"	push   %%ebx\n"
"	sub    $0x12c,%%esp\n"
"	mov    %%eax, 0x8(%%ebp)\n"
"	mov    %%edx, 0xc(%%ebp)\n"
"	mov    %%ecx, 0x10(%%ebp)\n"
"	sub    $0x841ffe0,%%eax\n"
"	sar    $0x2,%%eax\n"
"	imul   $0x2c0685b5,%%eax,%%eax\n"
"	mov    %%eax,-0x128(%%ebp)\n"
"	mov    0x8(%%ebp),%%eax\n"
"	mov    0x15c(%%eax),%%edi\n"


"	testb  $0x4,0x14(%%edi)\n"
"	je     ClientSpawn_loc1\n"
"	testl  $0x300,0xb0(%%edi)\n"
"	jne    ClientSpawn_loc2\n"

"ClientSpawn_loc1:\n"
"	mov    0x8(%%ebp),%%ecx\n"
"	mov    %%ecx,(%%esp)\n"
"	mov    $0x80cb6fa, %%eax\n"
"	call   *%%eax\n"
"	mov    0x8(%%ebp),%%eax\n"
"	cmpb   $0x0,0xf4(%%eax)\n"
"	je     ClientSpawn_loc3\n"
"	mov    %%eax,(%%esp)\n"
"	mov    $0x817d5e0, %%eax\n"
"	call   *%%eax\n"

"ClientSpawn_loc3:\n"
"	mov    0x8(%%ebp),%%ecx\n"
"	movl   $0x3ff,0x7c(%%ecx)\n"
"	movzwl 0x836fe7c,%%eax\n"
"	mov    %%eax,0x4(%%esp)\n"
"	mov    %%ecx,%%eax\n"
"	add    $0x170,%%eax\n"
"	mov    %%eax,(%%esp)\n"
"	mov    $0x81512fc, %%eax\n"
"	call   *%%eax\n"
"	mov    0x8(%%ebp),%%eax\n"
"	movl   $0x2810011,0x190(%%eax)\n"
"	orb    $0x1,0xf6(%%eax)\n"
"	movb   $0x0,0x16b(%%eax)\n"
"	mov    %%eax,(%%esp)\n"
"	mov    $0x80a4754, %%eax\n"
"	call   *%%eax\n"
"	mov    0x8(%%ebp),%%ecx\n"
"	movb   $0xb,0x16e(%%ecx)\n"
"	movl   $0x1000,0x180(%%ecx)\n"
"	mov    %%ecx,%%edx\n"
"	add    $0x108,%%edx\n"
"	mov    0x820e804,%%eax\n"
"	mov    %%eax,0x108(%%ecx)\n"
"	mov    0x820e808,%%eax\n"
"	mov    %%eax,0x4(%%edx)\n"
"	mov    0x820e80c,%%eax\n"
"	mov    %%eax,0x8(%%edx)\n"
"	add    $0xc,%%edx\n"
"	mov    0x820e810,%%eax\n"
"	mov    %%eax,0x114(%%ecx)\n"
"	mov    0x820e814,%%eax\n"
"	mov    %%eax,0x4(%%edx)\n"
"	mov    0x820e818,%%eax\n"
"	mov    %%eax,0x8(%%edx)\n"
"	mov    0xb0(%%edi),%%eax\n"
"	and    $0x100002,%%eax\n"
"	mov    %%eax,-0x124(%%ebp)\n"
"	lea    0x2f64(%%edi),%%esi\n"
"	movl   $0x110,0x8(%%esp)\n"
"	mov    %%esi,0x4(%%esp)\n"
"	lea    -0x11c(%%ebp),%%ecx\n"
"	mov    %%ecx,(%%esp)\n"
#ifdef __linux
"	call   memcpy\n"
#else
"	call   _memcpy\n"
#endif
"	mov    0x158(%%edi),%%eax\n"
"	mov    %%eax,-0x120(%%ebp)\n"
"	mov    0x3168(%%edi),%%ebx\n"
"	movl   $0x0,0x4(%%esp)\n"
"	lea    0x30f8(%%edi),%%eax\n"
"	mov    %%eax,(%%esp)\n"
"	mov    $0x808af6e, %%eax\n"
"	call   *%%eax\n"

//Memset gclient_s
"	movl   $0x3184,0x8(%%esp)\n"
"	movl   $0x0,0x4(%%esp)\n"
"	mov    %%edi,(%%esp)\n"
"	mov    $0x804a42c, %%eax\n"
#ifdef __linux
"	call   memset\n"
#else
"	call   _memset\n"
#endif

//Set gravity to g_gravity
/*
"	mov    0x84bcff4, %%eax\n"
"	cvttss2si 0xc(%%eax), %%eax\n"
"	mov    %%eax, 0x58(%%edi)\n"
*/

"	movl   $0x110,0x8(%%esp)\n"
"	lea    -0x11c(%%ebp),%%ecx\n"
"	mov    %%ecx,0x4(%%esp)\n"
"	mov    %%esi,(%%esp)\n"
"	mov    $0x804a6bc, %%eax\n"
"	call   *%%eax\n"
"	mov    %%ebx,0x3168(%%edi)\n"
"	movl   $0xffffffff,0x3074(%%edi)\n"
"	mov    -0x120(%%ebp),%%eax\n"
"	add    $0x1,%%eax\n"
"	mov    %%eax,0x158(%%edi)\n"
"	mov    0x2fe8(%%edi),%%eax\n"
"	mov    %%eax,0x150(%%edi)\n"
"	mov    -0x124(%%ebp),%%ecx\n"
"	mov    %%ecx,0xb0(%%edi)\n"
"	mov    -0x128(%%ebp),%%eax\n"
"	mov    %%eax,0x300c(%%edi)\n"
"	movl   $0x3ff,0x3068(%%edi)\n"
"	mov    %%eax,0xdc(%%edi)\n"
"	movl   $0x3ff,0x59c(%%edi)\n"
"	lea    0x2f90(%%edi),%%esi\n"
"	mov    %%esi,0x4(%%esp)\n"

//Set jumpHeight to jump_height
/*
"	mov    %%edi,(%%esp)\n"
"	call   Jump_SetDefaultHeight\n"
*/
"	mov    %%edi,%%eax\n"
"	sub    0x8370440,%%eax\n"
"	sar    $0x2,%%eax\n"
"	imul   $0x408b97a1,%%eax,%%eax\n"
"	mov    %%eax,(%%esp)\n"
"	mov    $0x817c5e0, %%eax\n"
"	call   *%%eax\n"
"	xorl   $0x2,0xb0(%%edi)\n"
"	movl   $0x3c,0x114(%%edi)\n"
"	movl   $0x42700000,0x118(%%edi)\n"
"	movl   $0x0,0x11c(%%edi)\n"
"	movl   $0x40c00000,0x648(%%edi)\n"
"	movl   $0x3fe66666,0x64c(%%edi)\n"
"	movl   $0x0,0xfc(%%edi)\n"
"	movl   $0x0,0x100(%%edi)\n"
"	movl   $0x0,0x4c(%%edi)\n"
"	movl   $0x3ff,0x48(%%edi)\n"
"	mov    0xc(%%ebp),%%ecx\n"
"	mov    %%ecx,0x4(%%esp)\n"
"	mov    0x8(%%ebp),%%eax\n"
"	mov    %%eax,(%%esp)\n"
"	mov    $0x80ca218, %%eax\n"
"	call   *%%eax\n"
"	lea    0x1c(%%edi),%%edx\n"
"	mov    0xc(%%ebp),%%ecx\n"
"	mov    (%%ecx),%%eax\n"
"	mov    %%eax,0x1c(%%edi)\n"
"	mov    0x4(%%ecx),%%eax\n"
"	mov    %%eax,0x4(%%edx)\n"
"	mov    0x8(%%ecx),%%eax\n"
"	mov    %%eax,0x8(%%edx)\n"
"	orl    $0x400,0xc(%%edi)\n"
"	mov    0x10(%%ebp),%%eax\n"
"	mov    %%eax,0x4(%%esp)\n"
"	mov    0x8(%%ebp),%%eax\n"
"	mov    %%eax,(%%esp)\n"
"	mov    $0x80a77f6, %%eax\n"
"	call   *%%eax\n"
"	mov    0x84bd008,%%eax\n"
"	mov    0xc(%%eax),%%ecx\n"
"	lea    (%%ecx,%%ecx,1),%%edx\n"
"	add    %%edx,%%edx\n"
"	mov    %%ecx,%%eax\n"
"	shl    $0x7,%%eax\n"
"	sub    %%edx,%%eax\n"
"	add    %%ecx,%%eax\n"
"	shl    $0x3,%%eax\n"
"	add    0x837062c,%%eax\n"
"	mov    %%eax,0x30cc(%%edi)\n"
"	mov    0x2f94(%%edi),%%eax\n"
"	mov    %%eax,0x3088(%%edi)\n"
"	movl   $0x1,0x8370460\n"
"	mov    0x837062c,%%eax\n"
"	mov    %%eax,0x316c(%%edi)\n"
"	mov    0x837062c,%%eax\n"
"	mov    %%eax,0x2f90(%%edi)\n"
"	mov    0x837062c,%%eax\n"
"	sub    $0x64,%%eax\n"
"	mov    %%eax,(%%edi)\n"
"	mov    0x8(%%ebp),%%ecx\n"
"	mov    %%ecx,(%%esp)\n"
"	mov    $0x80a68b8, %%eax\n"
"	call   *%%eax\n"
"	mov    %%esi,0x4(%%esp)\n"
"	mov    0x8(%%ebp),%%eax\n"
"	mov    %%eax,(%%esp)\n"
"	mov    $0x80a5c1a, %%eax\n"
"	call   *%%eax\n"
"	movl   $0x0,0x8370460\n"
"	movl   $0x1,0xc(%%esp)\n"
"	movl   $0x1,0x8(%%esp)\n"
"	mov    0x8(%%ebp),%%ecx\n"
"	mov    %%ecx,0x4(%%esp)\n"
"	mov    %%edi,(%%esp)\n"
"	mov    $0x8052940, %%eax\n"
"	call   *%%eax\n"
"	jmp    ClientSpawn_Exit\n"

"ClientSpawn_loc2:\n"
"	mov    0x59c(%%edi),%%eax\n"
"	lea    (%%eax,%%eax,4),%%edx\n"
"	add    %%edx,%%edx\n"
"	add    %%edx,%%edx\n"
"	sub    %%eax,%%edx\n"
"	mov    %%edx,%%ecx\n"
"	shl    $0x5,%%ecx\n"
"	add    %%ecx,%%edx\n"
"	add    %%eax,%%edx\n"
"	add    0x8370444,%%edx\n"
"	mov    %%edx,(%%esp)\n"
"	mov    $0x80b7866, %%eax\n"
"	call   *%%eax\n"
"	jmp    ClientSpawn_loc1\n"


"ClientSpawn_Exit:\n"


"	add    $0x12c,%%esp\n"
"	pop    %%ebx\n"
"	pop    %%esi\n"
"	pop    %%edi\n"
"	pop    %%ebp\n"

    ::"a"(ent), "d"(px), "c"(py));

/*
	Com_Printf("^1Debug: ^7SpawnClient ent->r.currentAngles: %.2f, %.2f, %.2f\n", ent->r.currentAngles[0], ent->r.currentAngles[1], ent->r.currentAngles[2]);
	Com_Printf("^1Debug: ^7SpawnClient ent->client->ps.viewangles: %.2f, %.2f, %.2f\n", ent->client->ps.viewangles[0], ent->client->ps.viewangles[0], ent->client->ps.viewangles[0]);

	e_spawns[ent->s.number].direction1[0] = ent->r.currentAngles[0];
	e_spawns[ent->s.number].direction1[1] = ent->r.currentAngles[1];
	e_spawns[ent->s.number].direction1[2] = ent->r.currentAngles[2];

	e_spawns[ent->s.number].direction2[0] = ent->client->ps.viewangles[0];
	e_spawns[ent->s.number].direction2[1] = ent->client->ps.viewangles[1];
	e_spawns[ent->s.number].direction2[2] = ent->client->ps.viewangles[2];
*/
//	ent->client->ps.gravity = 800;

	client_t *cl = &svs.clients[ent->s.number];
	cl->lastFollowedClient = -1; //remove the last followed player number if we self have respawned

	if(svs.time - cl->enteredWorldTime > 800){
	//First spawn after map reloading
		// TODO PHANDLER
		//PHandler_Event(PLUGINS_ONCLIENTSPAWN, ent);

		if(!cl->firstSpawn){
			//First spawn after connecting to server
			G_ShowMotd( ent->s.number );
		}
		cl->firstSpawn = qtrue;
	}

	int i;
	gentity_t* followers;

	for(i = 0, followers = g_entities; i < g_maxclients->integer; i++, followers++)//let refollow all spectors me who have prior followed me
	{
		if(svs.clients[i].lastFollowedClient == ent->s.number)
		{
			Cmd_FollowClient_f(followers, ent->s.number);
		}
	}

	if(ent->client->sess.sessionState == STATE_PLAYING)
	{
		cl->undercover = 0;
	}

	//InsertPluginEvent

/*	if(cl->needPassword){
		ent->client->freezeControls = qtrue;
		if(!cl->needPasswordNotified){
			PlayerAuthByPassword(cl, ent, "");
		}
	}*/
}

/*
===========
ClientUserInfoChanged

Called from ClientConnect when the player first connects and
directly by the server system when the player updates a userinfo variable.

The game can override any of the settings and call trap_SetUserinfo
if desired.
============
*/
__cdecl void ClientUserinfoChanged( int clientNum ) {

	gentity_t *ent;
	char    *s;

	gclient_t   *client;
	char userinfo[MAX_INFO_STRING];

	ent = g_entities + clientNum;
	client = ent->client;

	client->ps.clientNum = clientNum;

	SV_GetUserinfo( clientNum, userinfo, sizeof( userinfo ) );

	// check for malformed or illegal info strings
	if ( !Info_Validate( userinfo ) ) {
		strcpy( userinfo, "\\name\\badinfo" );
	}

	// check for local client
/*
	s = Info_ValueForKey( userinfo, "ip" );
	if ( s && !strcmp( s, "localhost" ) ) {
		client->pers.localClient = qtrue;
	}
*/

	// check the item prediction
	s = Info_ValueForKey( userinfo, "cg_predictItems" );
	if ( !atoi( s ) ) {
		client->sess.predictItemPickup = qfalse;
	} else {
		client->sess.predictItemPickup = qtrue;
	}

}
/* T-Max: I think this can be used to remove color codes from
 * players in game, but keep colors for spectators somehow.
 * But I'm not sure since players can't change their name during game. */
/* void ClientSetUsername(int clientNum, const char* username)
{

	gentity_t *ent;
	gclient_t   *client;

	ent = g_entities + clientNum;
	client = ent->client;

	client->ps.clientNum = clientNum;



	// set name
	char s[64];


	Q_strncpyz(s, username, sizeof(s));

	if(client->sess.cs.team == TEAM_RED || client->sess.cs.team == TEAM_BLUE)
		ClientCleanName( s, client->sess.newnetname, sizeof( client->sess.newnetname ) , qfalse);
	else
		ClientCleanName( s, client->sess.newnetname, sizeof( client->sess.newnetname ) , qtrue);

	Q_strncpyz(client->sess.cs.netname, client->sess.newnetname, sizeof( client->sess.newnetname ));

}*/

/*
===========
ClientCheckName
============
*/
void ClientCleanName( const char *in, char *out, int outSize, qboolean allowColor ) {
	int len, colorlessLen;
	char ch;
	char    *p;
	int spaces;

	//save room for trailing null byte
	outSize--;

	len = 0;
	colorlessLen = 0;
	p = out;
	*p = 0;
	spaces = 0;

	while ( 1 ) {
		ch = *in++;
		if ( !ch ) {
			break;
		}

		// don't allow leading spaces
		if ( !*p && ch == ' ' ) {
			continue;
		}

		// check colors
		if ( ch == Q_COLOR_ESCAPE ) {
			// solo trailing carat is not a color prefix
			if ( !*in ) {
				break;
			}


			if(allowColor)
			{
				// don't allow black in a name, period
				if ( ColorIndex( *in ) == 0 )
				{
					in++;
					continue;
				}
			}else{
				if ( ColorIndex( *in ) >= 0 && ColorIndex( *in ) <= 9)
				{
					in++;
					continue;
				}
			}
			// make sure room in dest for both chars
			if ( len > outSize - 2 ) {
				break;
			}

			*out++ = ch;
			*out++ = *in++;
			len += 2;
			continue;
		}

		// don't allow too many consecutive spaces
		if ( ch == ' ' ) {
			spaces++;
			if ( spaces > 3 ) {
				continue;
			}
		} else {
			spaces = 0;
		}

		if ( len > outSize - 1 ) {
			break;
		}

		*out++ = ch;
		colorlessLen++;
		len++;
	}
	*out = 0;

	// don't allow empty names
	if ( *p == 0 || colorlessLen == 0 ) {
		Q_strncpyz( p, "UnnamedPlayer", outSize );
	}
}


void G_ClientStopUsingTurret_hook(gentity_t* ent)
{
	gentity_t *playerent = &g_entities[ent->r.ownerNum -1];
	if(playerent->client)
	{
		G_ClientStopUsingTurret(ent);
	}
}

