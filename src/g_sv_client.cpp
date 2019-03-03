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
#include "plugin_handler.h"
#include "g_sv_shared.h"
#include "cvar.h"
#include "server.h"

#include <string.h>
#include <stdlib.h>
#include <ctype.h>


extern "C"
{

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
	gentity_t *playerent = ent->r.ownerNum.ent();
	if(playerent->client)
	{
		G_ClientStopUsingTurret(ent);
	}
}

};