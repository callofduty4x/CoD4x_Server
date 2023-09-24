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

#include "q_shared.h"
#include "qcommon_io.h"
#include "qcommon.h"
#include "g_hud.h"
#include "scr_vm.h"
#include "cmd.h"
#include "server.h"
#include "server_public.h"
#include "maxmind_geoip.h"
#include "q_platform.h"
#include "g_sv_shared.h"
#include "cvar.h"
#include "misc.h"
#include "sec_crypto.h"
#include "sv_auth.h"
#include "cscr_stringlist.h"
#include "bg.h"
#include "client_dedicated.h"

#include "sapi.h"
#include <string.h>
#include <time.h>
#include "plugin_handler.h"
#include "scr_vm_functions.h"
#include "tomcrypt/tomcrypt_misc.h"

static qboolean g_isLocStringPrecached[MAX_LOCALIZEDSTRINGS] = {qfalse};
extern char* var_typename[];


extern char* var_typename[];

/*
============
PlayerCmd_GetUid

Returns the players Uid. Will only work with valid defined authserver or if another cod4-plugin is loaded with uid support.
If no UID is defined this function will return -1
Usage: int = self getUid();
============
*/

void PlayerCmd_GetUid(scr_entref_t arg)
{

    Com_PrintError(CON_CHANNEL_SCRIPT,"Removed script function getuid called");
    Scr_AddInt(0);
}

/*
============
PlayerCmd_GetSteamid

Returns the players steamid in 64Bit format as string. Will only work for players having Steam running.
If no steam is running the return value is "0"
Usage: string = self getsteamid();
============
*/

void PlayerCmd_GetSteamID(scr_entref_t arg)
{

    gentity_t *gentity;
    int entityNum = 0;
    uint64_t steamid;
    mvabuf;
    char str[128];

    if (arg.classnum)
    {

        Scr_ObjectError("Not an entity");
    }
    else
    {

        entityNum = arg.entnum;
        gentity = &g_entities[entityNum];

        if (!gentity->client)
        {
            Scr_ObjectError(va("Entity: %i is not a player", entityNum));
        }
    }
    if (Scr_GetNumParam())
    {
        Scr_Error("Usage: self getsteamid()\n");
    }

    steamid = svs.clients[entityNum].steamid;

    SV_SApiSteamIDToString(steamid, str, sizeof(str));

    Scr_AddString(str);
}

void PlayerCmd_GetSteamID64(scr_entref_t arg)
{

    gentity_t *gentity;
    int entityNum = 0;
    uint64_t steamid;
    mvabuf;
    char str[128];

    if (arg.classnum)
    {

        Scr_ObjectError("Not an entity");
    }
    else
    {

        entityNum = arg.entnum;
        gentity = &g_entities[entityNum];

        if (!gentity->client)
        {
            Scr_ObjectError(va("Entity: %i is not a player", entityNum));
        }
    }
    if (Scr_GetNumParam())
    {
        Scr_Error("Usage: self getsteamid()\n");
    }

    steamid = svs.clients[entityNum].steamid;

    SV_SApiSteamIDTo64String(steamid, str, sizeof(str));

    Scr_AddString(str);
}

/*
============
PlayerCmd_GetPlayerID

Returns the players playerid in 64Bit format as string.
Usage: string = self getplayerid();
============
*/

void PlayerCmd_GetPlayerID(scr_entref_t arg)
{

    gentity_t *gentity;
    int entityNum = 0;
    uint64_t playerid;
    mvabuf;
    char str[128];

    if (arg.classnum)
    {

        Scr_ObjectError("Not an entity");
    }
    else
    {

        entityNum = arg.entnum;
        gentity = &g_entities[entityNum];

        if (!gentity->client)
        {
            Scr_ObjectError(va("Entity: %i is not a player", entityNum));
        }
    }
    if (Scr_GetNumParam())
    {
        Scr_Error("Usage: self getplayerid()\n");
    }

    playerid = svs.clients[entityNum].playerid;

    SV_SApiSteamIDToString(playerid, str, sizeof(str));

    Scr_AddString(str);
}

/*
============
PlayerCmd_GetPlayerID

Returns the players playerid in 64Bit format as string.
Usage: string = self getplayerid();
============
*/

void PlayerCmd_GetPlayerID64(scr_entref_t arg)
{

    gentity_t *gentity;
    int entityNum = 0;
    uint64_t playerid;
    mvabuf;
    char str[128];

    if (arg.classnum)
    {

        Scr_ObjectError("Not an entity");
    }
    else
    {

        entityNum = arg.entnum;
        gentity = &g_entities[entityNum];

        if (!gentity->client)
        {
            Scr_ObjectError(va("Entity: %i is not a player", entityNum));
        }
    }
    if (Scr_GetNumParam())
    {
        Scr_Error("Usage: self getplayerid()\n");
    }

    playerid = svs.clients[entityNum].playerid;

    SV_SApiSteamIDTo64String(playerid, str, sizeof(str));

    Scr_AddString(str);
}

/*
============
PlayerCmd_GetGuid

Returns the players Guid.
Usage: string = self getGuid();
============
*/

void PlayerCmd_GetGuid(scr_entref_t arg)
{

    gentity_t *gentity;
    int entityNum = 0;
    const char *guid;
    char buf[128];
    mvabuf;

    if (arg.classnum)
    {

        Scr_ObjectError("Not an entity");
    }
    else
    {

        entityNum = arg.entnum;
        gentity = &g_entities[entityNum];

        if (!gentity->client)
        {
            Scr_ObjectError(va("Entity: %i is not a player", entityNum));
        }
    }
    if (Scr_GetNumParam())
    {
        Scr_Error("Usage: self getGuid()\n");
    }

    guid = SV_GetGuid(entityNum, buf, sizeof(buf));

    if (guid == NULL)
    {
        Scr_AddString("");
        return;
    }

    Scr_AddString(guid);
}

/*
============
PlayerCmd_SetUid

Sets the players Uid.
Usage: int = self setUid(uid <integer>);
============
*/

void PlayerCmd_SetUid(scr_entref_t arg)
{
    Com_PrintError(CON_CHANNEL_SCRIPT,"Removed script function setuid called");
    Scr_AddInt(0);
}

void PlayerCmd_GetPower(scr_entref_t arg)
{

    gentity_t *gentity;
    int entityNum = 0;
    int power;
    client_t *cl;
    mvabuf;

    if (arg.classnum)
    {

        Scr_ObjectError("Not an entity");
    }
    else
    {

        entityNum = arg.entnum;
        gentity = &g_entities[entityNum];

        if (!gentity->client)
        {
            Scr_ObjectError(va("Entity: %i is not a player", entityNum));
        }
    }
    if (Scr_GetNumParam())
    {
        Scr_Error("Usage: self getPower()\n");
    }
    cl = &svs.clients[entityNum];

    power = cl->power;

    Scr_AddInt(power);
}

void PlayerCmd_SetPower(scr_entref_t arg)
{

    gentity_t *gentity;
    int entityNum = 0;
    int power;
    client_t *cl;
    mvabuf;

    if (arg.classnum)
    {

        Scr_ObjectError("Not an entity");
    }
    else
    {

        entityNum = arg.entnum;
        gentity = &g_entities[entityNum];

        if (!gentity->client)
        {
            Scr_ObjectError(va("Entity: %i is not a player", entityNum));
        }
    }
    if (Scr_GetNumParam() != 1)
    {
        Scr_Error("Usage: self setPower(<integer>)\n");
    }
    cl = &svs.clients[entityNum];

    power = Scr_GetInt(0);

    if (power < 1 || power > 100)
    {
        Scr_Error("setPower: has to be in range between 1 and 100\n");
    }

    cl->power = power;
}

void PlayerCmd_SetStat(scr_entref_t arg)
{
    gentity_t *gentity;
    int entityNum;
    int numparms, index, value;
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
            Scr_Error("setstat: entity must be a player entity");
            return;
        }
    }

    numparms = Scr_GetNumParam();

    if (numparms != 2)
    {
        Scr_Error(va("setstat: takes 2 arguments, got %i.\n", numparms));
        return;
    }

    index = Scr_GetInt(0);
    value = Scr_GetInt(1);

    if ((unsigned int)index > 3499)
    {
        Scr_ParamError(0, va("setstat: invalid index %i", index));
        return;
    }
    if (index <= 1999 && (unsigned int)value > 255)
    {
        Scr_ParamError(1, va("setstat: index %i is a byte value, and you're trying to set it to %i", index, value));
        return;
    }
    SV_SetClientStat(gentity->s.number, index, value);
}

void PlayerCmd_GetStat(scr_entref_t arg)
{
    gentity_t *gentity;
    int stat;
    int index;
    mvabuf;
    int entityNum;

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
            Scr_Error("getstat: entity must be a player entity");
            return;
        }
    }
    index = Scr_GetInt(0);
    if ((unsigned int)index > 3499)
    {
        Scr_Error(va("getstat: invalid index %i", index));
        return;
    }
    if (gentity->client->sess.connected <= 0)
    {
        Scr_Error("getstat: called on a disconnected player");
        return;
    }
    stat = SV_GetClientStat(gentity->s.number, index);
    Scr_AddInt(stat);
    return;
}

/*
============
PlayerCmd_GetUserinfo

Returns the requested players userinfo value.
Example: name = self getuserinfo("name");
Example: myucvar = self getuserinfo("myucvar");
myucvar has to be set onto the players computer prior with setu myucvar "" so it can be queried in userinfo
The userinfo will automatically update if myucvar changes onto the client computer. This can be used to transfer text from client to server.
Usage: string = self getUserinfo(userinfo key <string>);
============
*/

void PlayerCmd_GetUserinfo(scr_entref_t arg)
{

    gentity_t *gentity;
    int entityNum = 0;
    client_t *cl;
    mvabuf;

    if (arg.classnum)
    {

        Scr_ObjectError("Not an entity");
    }
    else
    {

        entityNum = arg.entnum;
        gentity = &g_entities[entityNum];

        if (!gentity->client)
        {
            Scr_ObjectError(va("Entity: %i is not a player", entityNum));
        }
    }
    if (Scr_GetNumParam() != 1)
    {
        Scr_Error("Usage: self getUserinfo( <string> )\n");
    }

    char *u_key = Scr_GetString(0);

    cl = &svs.clients[entityNum];

    char *value = Info_ValueForKey(cl->userinfo, u_key);

    Scr_AddString(value);
}

/*
============
PlayerCmd_GetPing

Returns the current measured scoreboard ping of this player.
Usage: int = self getPing();
============
*/

void PlayerCmd_GetPing(scr_entref_t arg)
{

    gentity_t *gentity;
    int entityNum = 0;
    client_t *cl;
    mvabuf;

    if (arg.classnum)
    {

        Scr_ObjectError("Not an entity");
    }
    else
    {

        entityNum = arg.entnum;
        gentity = &g_entities[entityNum];

        if (!gentity->client)
        {
            Scr_ObjectError(va("Entity: %i is not a player", entityNum));
        }
    }
    if (Scr_GetNumParam())
    {
        Scr_Error("Usage: self getPing()\n");
    }

    cl = &svs.clients[entityNum];

    Scr_AddInt(cl->ping);
}

/*
============
PlayerCmd_SetGravity

Changes the value of gravity for this player.
Usage: self setgravity( <int> );
============
*/

void PlayerCmd_SetGravity(scr_entref_t arg)
{

    gentity_t *gentity;
    int entityNum = 0;
    int gravity;
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
        Scr_Error("Usage: self setgravity( <integer> )\n");
    }

    gravity = Scr_GetInt(0);

    if (gravity < 1 || gravity > 50000)
    {
        Scr_Error("setgravity range is between 1 and 50000\n");
        return;
    }

    gentity->client->ps.gravity = gravity;
    SV_SendServerCommandNoLoss(&svs.clients[entityNum], va("v g_gravity \"%d\"", gravity));
}

/*
============
PlayerCmd_SetGroundReferenceEnt

The ground entity's rotation will be added onto the player's view.
In particular, this will cause the player's yaw to rotate around the
entity's z-axis instead of the world z-axis. You only need to call
this function once. After that, any rotation that the reference entity
undergoes will affect the player. Setting it back to 0 (worldspawn)
should disable all further effects.

Usage:	self SetGroundReferenceEnt( <other entity id> );
		self SetGroundReferenceEnt( other GetEntityNumber() );
============
*/
void PlayerCmd_SetGroundReferenceEnt(scr_entref_t arg)
{
    gentity_t *gentity, *groundRefEnt;
    int entityNum = 0;
    int otherEntityNum = 0;
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
        Scr_Error("Usage: self SetGroundReferenceEnt( <entity id> )\n");
    }

    otherEntityNum = Scr_GetInt(0);
    if (otherEntityNum >= 1024 || otherEntityNum < 0)
    {
        Scr_Error("SetGroundReferenceEnt must be in range 0-1023\n");
        return;
    }

    groundRefEnt = &g_entities[entityNum];
    if (groundRefEnt->client)
    {
        Scr_ObjectError(va("player entity %i can not be a ground reference entity", otherEntityNum));
        return;
    }

    /*
	if( !groundRefEnt->inuse ){
		Scr_ObjectError(va("SetGroundReferenceEnt: entity %i does not exist", otherEntityNum));
		return;
	}
*/

    gentity->s.groundEntityNum = otherEntityNum;
}

/*
============
PlayerCmd_SetJumpHeight

Changes the value of jump_height for this player.
Usage: self setjumpheight( <int> );
============
*/

void PlayerCmd_SetJumpHeight(scr_entref_t arg)
{

    gentity_t *gentity;
    int entityNum = 0;
    int height;

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
        Scr_Error("Usage: self setjumpheight( <integer> )\n");
    }

    height = Scr_GetInt(0);

    if (height < 0 || height > 50000)
    {
        Scr_Error("setjumpheight range is between 1 and 50000\n");
        return;
    }
    gentity->client->jumpHeight = height;
    SV_GameSendServerCommand(entityNum, 1, va("v jump_height \"%d\"", height));
}

/*
============
PlayerCmd_SetMoveSpeed

Changes the value of movement speed for this player.
Usage: self setmovespeed( <int> );
============
*/

void PlayerCmd_SetMoveSpeed(scr_entref_t arg)
{

    gentity_t *gentity;
    int entityNum = 0;
    int speed;
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
        Scr_Error("Usage: self setmovespeed( <integer> )\n");
    }

    speed = Scr_GetInt(0);

    if (speed <= 0 || speed > 50000)
    {
        Scr_Error("setmovespeed range is between 0 and 50000\n");
        return;
    }
    gentity->client->sess.moveSpeedScaleMultiplier = speed / g_speed->integer;
    Com_PrintWarning(CON_CHANNEL_SCRIPT, "PlayerCmd_SetMoveSpeed() is deprecated! Please use setmovespeedscale(speed / 190)\n");
}

/*
============
PlayerCmd_GetGeoLocation
resolves country from IP address
============
*/

typedef enum {
    SCR_GEOIP_CODE,
    SCR_GEOIP_CODE3,
    SCR_GEOIP_COUNTRYNAME,
    SCR_GEOIP_CONTINENT,
    SCR_GEOIP_INDEX
} scr_geoip_type_t;

void PlayerCmd_GetGeoLocation(scr_entref_t arg)
{

    gentity_t *gentity;
    int entityNum = 0;
    int rettype;
    int locIndex;
    const char *countryname;
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
        Scr_Error("Usage: self getgeolocation( <integer> )\n");
    }

    rettype = Scr_GetInt(0);

    locIndex = _GeoIP_seek_record(BigLong(*(unsigned long *)&svs.clients[entityNum].netchan.remoteAddress.ip));

    switch (rettype)
    {
    case SCR_GEOIP_CODE:
        countryname = _GeoIP_country_code(locIndex);
        break;

    case SCR_GEOIP_CODE3:
        countryname = _GeoIP_country_code3(locIndex);
        break;

    case SCR_GEOIP_COUNTRYNAME:
        countryname = _GeoIP_country_name(locIndex);
        break;

    case SCR_GEOIP_CONTINENT:
        countryname = _GeoIP_continent_name(locIndex);
        break;

    default:
        Scr_AddInt(locIndex);
        return;
    }
    Scr_AddString(countryname);
}

void PlayerCmd_Usercall(scr_entref_t arg) {
    gentity_t *gentity;
    int entityNum = 0;
    mvabuf;

    if (arg.classnum) {
        Scr_ObjectError("Not an entity");
        return;
    }

    entityNum = arg.entnum;
    gentity = &g_entities[entityNum];

    if (!gentity->client) {
        Scr_ObjectError(va("Entity: %i is not a player", entityNum));
        return;
    }

    if (Scr_GetNumParam() < 1) {
        Scr_Error("Usage: self usercall(<syscall_name>, ...)\n");
        return;
    }
    char* methodName = Scr_GetString(0);
    PHandler_Event(PLUGINS_ONSCRUSERCALLMETHOD, methodName, entityNum);
}

void Scr_Usercall() {
    if (Scr_GetNumParam() < 1) {
        Scr_Error("Usage: usercall(<syscall_name>, ...)\n");
        return;
    }
    char* functionName = Scr_GetString(0);
    PHandler_Event(PLUGINS_ONSCRUSERCALLFUNCTION, functionName);
}

/*
============
GScr_StrTokByPixLen

Returns an array of the string that got sperated in tokens.
It will count the width of given string and will tokenize it so that it will never exceed the given limit.
This function tries to separate the string so that words remains complete
Usage: array = StrTokByPixLen(string <string>, codPixelCount <float>);
============
*/

#define MAX_LINEBREAKS 32

void GScr_StrTokByPixLen()
{

    char buffer[2048];
    char *string = buffer;

    if (Scr_GetNumParam() != 2)
    {
        Scr_Error("Usage: StrTokByPixLen(<string>, <float>)");
    }
    char *src = Scr_GetString(0);
    if (!src)
        return;
    else
        Q_strncpyz(buffer, src, sizeof(buffer));

    char *countstring = string;
    char *lastWordSpace = string;

    int lineBreakIndex = 0;

    int lWSHalfPixelCounter = 0;
    int halfPixelCounter = 0;

    int maxHalfPixel = 2.0 * Scr_GetFloat(1);

    Scr_MakeArray();

    while (*countstring)
    {
        switch (*countstring)
        {

        case '\'':
            halfPixelCounter += 2;
            break;

        case 'i':
        case 'j':
        case 'l':
        case '.':
        case ',':
        case ':':
        case ';':
        case '_':
        case '%':
            halfPixelCounter += 4;
            break;

        case 'f':
        case 'I':
        case '-':
        case '|':
            halfPixelCounter += 5;
            break;

        case 't':
        case 'r':
        case '!':
        case '/':
        case '\\':
        case '"':
            halfPixelCounter += 6;
            break;

        case '(':
        case ')':
        case '[':
        case ']':
            halfPixelCounter += 7;
            break;

        case 'T':
        case '{':
        case '}':
        case '*':
            halfPixelCounter += 8;
            break;

        case 'a':
        case 'c':
        case 'g':
        case 'k':
        case 's':
        case 'v':
        case 'x':
        case 'z':
        case 'F':
        case 'J':
        case 'L':
        case 'Y':
        case 'Z':
            halfPixelCounter += 9;
            break;

        case ' ': /*Save the positions of the last recent wordspacer*/
            lWSHalfPixelCounter = halfPixelCounter;
            lastWordSpace = countstring;
        case 'd':
        case 'h':
        case 'n':
        case 'A':
        case 'P':
        case 'S':
        case 'V':
        case 'X':
        case '?':
            halfPixelCounter += 10;
            break;

        case 'B':
        case 'D':
        case 'G':
        case 'K':
        case 'O':
        case 'Q':
        case 'R':
        case 'U':
        case '0':
        case '1':
        case '2':
        case '3':
        case '4':
        case '5':
        case '6':
        case '7':
        case '8':
        case '9':
        case '$':
        case '<':
        case '>':
        case '=':
        case '+':
        case '^':
        case '~':
            halfPixelCounter += 11;
            break;

        case 'H':
        case 'N':
        case '#':
            halfPixelCounter += 12;
            break;

        case 'w':
        case '&':
            halfPixelCounter += 13;
            break;

        case 'W':
        case 'M':
        case '@':
            halfPixelCounter += 14;
            break;

        case 'm':
            halfPixelCounter += 15;

        default:
            halfPixelCounter += 12;
        }

        if (halfPixelCounter >= maxHalfPixel)
        {
            if (lineBreakIndex >= MAX_LINEBREAKS)
            {
                break; //Cut here - no overrun
            }
            if (lWSHalfPixelCounter >= maxHalfPixel / 3)
            {                          //we have a space between words inside the upper half string length
                *lastWordSpace = 0;    //terminate it
                Scr_AddString(string); //setting the beginning of string in our array
                Scr_AddArray();

                string = &lastWordSpace[1];
                countstring = &lastWordSpace[1];
                lWSHalfPixelCounter = 0;
                halfPixelCounter = 0;
            }
            else
            {                     //we couln't find a space inside the upper half string length
                *countstring = 0; //Mhh it is complicated to seperate the complete string here. We will just thrash one character
                Scr_AddString(string);
                Scr_AddArray();

                string = &countstring[1];
                countstring = &countstring[1];
                lWSHalfPixelCounter = 0;
                halfPixelCounter = 0;
            }
            lineBreakIndex++;
        }
        else
        {
            countstring++;
        }
    }
    if (*string)
    {
        Scr_AddString(string);
        Scr_AddArray();
    }
}

/*
============
GScr_StrTokByLen

Returns an array of the string that got sperated in tokens.
It will count the number of characters of given string and will tokenize it so that it will never exceed the given limit.
This function tries to separate the string so that words remains complete
Usage: array = StrTokByLen(string <string>, maxcharacter count <int>);
============
*/

void GScr_StrTokByLen()
{

    char buffer[2048];
    unsigned char lastColor = '7';
    char *outputstr = buffer;

    if (Scr_GetNumParam() != 2)
    {
        Scr_Error("Usage: StrTokByLen(<string>, <int>)");
    }
    char *src = Scr_GetString(0);

    char *inputstr = src;

    int lineBreakIndex = 0;
    int i = 0;
    int j = 0;
    int overflowcnt = 2;
    int lSCounter = 0;
    int lSCounterReal = 0;
    int limit = Scr_GetInt(1);

    Scr_MakeArray();
    outputstr[0] = '^';
    outputstr[1] = lastColor;
    outputstr[2] = 0;

    while (inputstr[i])
    {

        if (overflowcnt >= (sizeof(buffer) - 4))
        {
            outputstr[i] = 0;
            outputstr[i + 1] = 0;
            outputstr[i + 2] = 0;
            break;
        }

        if (inputstr[i] == ' ')
        { /*Save the positions of the last recent wordspacer*/
            lSCounter = i;
            lSCounterReal = j;
        }

        if (inputstr[i] == '^' && inputstr[i + 1] >= '0' && inputstr[i + 1] <= '9')
        {
            outputstr[i + 2] = inputstr[i];
            i++;
            lastColor = inputstr[i];
            outputstr[i + 2] = inputstr[i];
            i++;
            overflowcnt += 2;
            continue;
        }

        if (j >= limit)
        {
            if (lineBreakIndex >= MAX_LINEBREAKS)
            {
                break; //Cut here - no overrun
            }

            if (lSCounterReal >= (limit / 2))
            { //we have a space between words inside the upper half string length
                outputstr[lSCounter + 2] = 0;
                Scr_AddString(outputstr); //setting the beginning of string in our array
                Scr_AddArray();

                inputstr = &inputstr[lSCounter + 1];
                outputstr = &outputstr[i + 3];
                outputstr[0] = '^';
                outputstr[1] = lastColor;
                outputstr[2] = 0;
                overflowcnt += 3;

                lSCounter = 0;
                lSCounterReal = 0;
                i = 0;
                j = 0;
            }
            else
            {                         //we couln't find a space inside the upper half string length
                outputstr[i + 2] = 0; //Exception if broken inside colorcode is needed
                Scr_AddString(outputstr);
                Scr_AddArray();

                inputstr = &inputstr[i];
                outputstr = &outputstr[i + 3];
                outputstr[0] = '^';
                outputstr[1] = lastColor;
                outputstr[2] = 0;
                overflowcnt += 3;

                lSCounter = 0;
                lSCounterReal = 0;
                i = 0;
                j = 0;
            }
            lineBreakIndex++;
        }
        else
        {
            j++;
            outputstr[i + 2] = inputstr[i];
            i++;
            overflowcnt++;
        }
    }

    if (outputstr[2])
    {
        outputstr[i + 2] = 0;
        Scr_AddString(outputstr);
        Scr_AddArray();
    }
}

/*
============
GScr_StrPixLen

This function measures the average length of a given string if it would getting printed
Usage: float = StrPixLen(string <string>);
============
*/

void GScr_StrPixLen()
{

    if (Scr_GetNumParam() != 1)
    {
        Scr_Error("Usage: StrPixLen(<string>)");
    }
    char *string = Scr_GetString(0);

    int halfPixelCounter = 0;

    while (*string)
    {
        switch (*string)
        {

        case '\'':
            halfPixelCounter += 2;
            break;

        case 'i':
        case 'j':
        case 'l':
        case '.':
        case ',':
        case ':':
        case ';':
        case '_':
        case '%':
            halfPixelCounter += 4;
            break;

        case 'f':
        case 'I':
        case '-':
        case '|':
            halfPixelCounter += 5;
            break;

        case 't':
        case 'r':
        case '!':
        case '/':
        case '\\':
        case '"':
            halfPixelCounter += 6;
            break;

        case '(':
        case ')':
        case '[':
        case ']':
            halfPixelCounter += 7;
            break;

        case 'T':
        case '{':
        case '}':
        case '*':
            halfPixelCounter += 8;
            break;

        case 'a':
        case 'c':
        case 'g':
        case 'k':
        case 's':
        case 'v':
        case 'x':
        case 'z':
        case 'F':
        case 'J':
        case 'L':
        case 'Y':
        case 'Z':
            halfPixelCounter += 9;
            break;

        case ' ': /*Save the positions of the last recent wordspacer*/
        case 'd':
        case 'h':
        case 'n':
        case 'A':
        case 'P':
        case 'S':
        case 'V':
        case 'X':
        case '?':
            halfPixelCounter += 10;
            break;

        case 'B':
        case 'D':
        case 'G':
        case 'K':
        case 'O':
        case 'Q':
        case 'R':
        case 'U':
        case '0':
        case '1':
        case '2':
        case '3':
        case '4':
        case '5':
        case '6':
        case '7':
        case '8':
        case '9':
        case '$':
        case '<':
        case '>':
        case '=':
        case '+':
        case '^':
        case '~':
            halfPixelCounter += 11;
            break;

        case 'H':
        case 'N':
        case '#':
            halfPixelCounter += 12;
            break;

        case 'w':
        case '&':
            halfPixelCounter += 13;
            break;

        case 'W':
        case 'M':
        case '@':
            halfPixelCounter += 14;
            break;

        case 'm':
            halfPixelCounter += 15;

        default:
            halfPixelCounter += 12;
        }
        string++;
    }
    float result = (float)halfPixelCounter / 2.0;

    Scr_AddFloat(result);
}

/*
============
GScr_StrColorStrip

Cleans the given string from all colorscodes.
Usage: string = StrColorStrip(string <string>);
============
*/

void GScr_StrColorStrip()
{

    char buffer[2048];

    if (Scr_GetNumParam() != 1)
    {
        Scr_Error("Usage:string = StrColorStrip(<string>)\n");
    }

    char *string = Scr_GetString(0);

    int i, j;

    for (i = 0, j = 0; string[i]; ++i)
    {
        if (string[i] == '^' && string[i + 1] >= '0' && string[i + 1] <= '9')
        {
            ++i;
        }else{
            buffer[j] = string[i];
            ++j;
        }
    }
    Scr_AddString(buffer);
}

/*
============
GScr_StrRepl
This functions finds in a given mainstring all occurrences of a given searchstring and replace those with a given replacementstring
This function returns the resulting string. The mainstring will stay unaffected.

Usage: string = GScr_StrRepl(mainstring <string>, search <string>, replacement <string>);
============
*/

void GScr_StrRepl()
{

    char buffer[2048];

    if (Scr_GetNumParam() != 3)
    {
        Scr_Error("Usage: StrReplace(<string>, <string>, <string>)\n");
    }

    char *string = Scr_GetString(0);
    char *find = Scr_GetString(1);
    char *replacement = Scr_GetString(2);

    Q_strnrepl(buffer, sizeof(buffer), string, find, replacement);
    buffer[sizeof(buffer) - 1] = 0;

    Scr_AddString(buffer);
}


/*
============
GScr_Pow

Calculate a number with exponent.
Usage: float = pow(base <float>, exponent <float>);
============
*/

void GScr_Pow()
{
    float base, exponent;
    
    if (Scr_GetNumParam() != 2)
    {
        Scr_Error("Usage: pow(<float> ,<float>)");
        return;
    }

    base = Scr_GetFloat(0);
    exponent = Scr_GetFloat(1);
    
    Scr_AddFloat(powf(base, exponent));
}

/*
============
GScr_GetRealTime

Returns the current time in seconds since 01/01/2012 UTC
Usage: int = getRealTime();
============
*/

void GScr_GetRealTime()
{

    if (Scr_GetNumParam())
    {
        Scr_Error("Usage: getRealTime()\n");
    }
    Scr_AddInt(Com_GetRealtime() - 1325376000);
}

/*
============
GScr_TimeToString

Returns the current unix style time
Usage: string = TimeToString(int <realtime>, int <UTC/Local>, string <format>)
============
realtime is the value you can retrive with getRealTime()
UTC/Local: a value of 0 means the time will be displayed in UTC timezone
UTC/Local: a value of 1 means the time will be displayed in Local timezone
format: this is a string to describe how the time will be displayed. For more informations see
for the C function: strftime()
For example here: http://cplusplus.com/reference/ctime/strftime
*/

void GScr_TimeToString()
{
    char timestring[128];
    char *format;
    struct tm *time_s;
    int zone;

    if (Scr_GetNumParam() != 3)
    {
        Scr_Error("Usage: TimeToString(<realtime>, <UTC/Local>, <format>)\n");
    }

    time_t time = Scr_GetInt(0) + 1325376000;
    zone = Scr_GetInt(1);
    format = Scr_GetString(2);

    if (zone)
        time_s = gmtime(&time);
    else
        time_s = localtime(&time);

    strftime(timestring, sizeof(timestring), format, time_s);

    Scr_AddString(timestring);
}

/*
============
GScr_SHA256

This function calculates the SHA256 sum of the given input textstring
Usage: string = sha256(string <input>);
============
*/

void GScr_SHA256()
{

    char hash[129];
    unsigned long size;

    if (Scr_GetNumParam() != 1)
    {
        Scr_Error("Usage: sha256(<input text>)\n");
    }

    char *input = Scr_GetString(0);

    size = sizeof(hash);

    if (!Sec_HashMemory(SEC_HASH_SHA256, input, strlen(input), hash, &size, qfalse))
    {
        hash[0] = '\0';
    }
    Scr_AddString(hash);
}

/*
============
GScr_CbufExecText

Execute the given command on server as console command and returns the response as string
Usage: string = exec(string <string>);
============
*/
char cmd_exec_redirect_buf[1024];

void GScr_CbufExecRedirect(char *data, qboolean lastcommand)
{
    if (cmd_exec_redirect_buf[0] == '\0')
    {
        Q_strncpyz(cmd_exec_redirect_buf, data, sizeof(cmd_exec_redirect_buf));
    }
}

void GScr_CbufAddTextEx()
{

    char string[1024];
    char outputbuf[1024];

    if (Scr_GetNumParam() != 1)
    {
        Scr_Error("Usage: execex(<string>)\n");
    }
    Com_sprintf(string, sizeof(string), "%s\n", Scr_GetString(0));

    cmd_exec_redirect_buf[0] = '\0';

    if (!Q_stricmpn(string, "map", 3) || !Q_stricmpn(string, "fast_restart", 12))
    {

        Cbuf_AddText(string);
    }
    else
    {

        Com_BeginRedirect(outputbuf, sizeof(outputbuf), GScr_CbufExecRedirect);
        Cmd_ExecuteSingleCommand(0, 0, string);
        Com_EndRedirect();
        cmd_exec_redirect_buf[sizeof(cmd_exec_redirect_buf) - 1] = '\0';
    }

    Scr_AddString(cmd_exec_redirect_buf);
}

void GScr_CbufAddText()
{

    char string[1024];

    if (Scr_GetNumParam() != 1)
    {
        Scr_Error("Usage: exec(<string>)\n");
    }
    Com_sprintf(string, sizeof(string), "%s\n", Scr_GetString(0));

    Cbuf_AddText(string);
}

/*
============
GScr_FS_FOpen

Opens a file(name) inside current FS_GameDir. Mode is selectable. It can be either "read", "write", "append".
It returns on success an integer greater 0. This is the filehandle.
Usage: int = FS_FOpen(string <filename>, string <mode>)
============
*/

void GScr_FS_FOpen()
{

    fileHandle_t fh = 0;

    if (Scr_GetNumParam() != 2)
        Scr_Error("Usage: FS_FOpen(<filename>, <mode>)\n");

    char *filename = Scr_GetString(0);
    char *mode = Scr_GetString(1);

    if (!Q_stricmp(mode, "read"))
    {
        fh = Scr_OpenScriptFile(filename, SCR_FH_FILE, FS_READ);
    }
    else if (!Q_stricmp(mode, "write"))
    {
        fh = Scr_OpenScriptFile(filename, SCR_FH_FILE, FS_WRITE);
    }
    else if (!Q_stricmp(mode, "append"))
    {
        fh = Scr_OpenScriptFile(filename, SCR_FH_FILE, FS_APPEND);
    }
    else
    {
        Scr_Error("FS_FOpen(): invalid mode. Valid modes are: read, write, append\n");
    }

    if (!fh)
    {
        Com_DPrintf(CON_CHANNEL_SCRIPT,"Scr_FS_FOpen() failed\n");
    }
    Scr_AddInt(fh);
}

/*
============
GScr_FS_FClose

Closes an already opened file. Opened files need to be closed after usage
This function returns nothing. It needs a filehandle as argument
Usage: FS_FClose(int <filehandle>)
============
*/

void GScr_FS_FClose()
{

    if (Scr_GetNumParam() != 1)
        Scr_Error("Usage: FS_FClose(<filehandle>)\n");

    fileHandle_t fh = Scr_GetInt(0);

    Scr_CloseScriptFile(fh);
}

/*
============
GScr_FS_FCloseAll

Closes all opened files with one call. Opened files need to be closed after usage
This function returns nothing. It needs no arguments
Usage: FS_FCloseAll()
============
*/

void GScr_FS_FCloseAll()
{

    int i;

    for (i = 1; i <= MAX_SCRIPT_FILEHANDLES; i++)
    {
        Scr_CloseScriptFile(i);
    }
}

/*
============
GScr_FS_TestFile

This function only test whether a filename exists. It must be a file inside the FS_GameDir.
This function returns true if file exists otherwise false.
Usage: FS_TestFile(string <filename>)
============
*/

void GScr_FS_TestFile()
{

    int fileExists;

    if (Scr_GetNumParam() != 1)
        Scr_Error("Usage: FS_TestFile(<filename>)\n");

    char *filename = Scr_GetString(0);
    fileExists = Scr_FileExists(filename);

    Scr_AddBool(fileExists);
}

/*
============
GScr_FS_ReadLine

This function reads a line from opened file and return a string.
This function returns undefined if file can not be read or is at end of file.
Otherwise it just returns the line as string without the terminating \n character
Usage: FS_ReadFile(int <filehandle>)
============
*/

void GScr_FS_ReadLine()
{
    char buffer[8192];
    int ret;

    if (Scr_GetNumParam() != 1)
        Scr_Error("Usage: FS_ReadLine(<filehandle>)\n");

    fileHandle_t fh = Scr_GetInt(0);

    *buffer = 0;

    ret = Scr_FS_ReadLine(buffer, sizeof(buffer), fh);
    if (ret < 1)
        Scr_AddUndefined();

    else if (*buffer == 0)
        Scr_AddString("");

    else
    {
        int len = strlen(buffer);

        if (buffer[len - 1] == '\n')
            buffer[len - 1] = 0;

        Scr_AddString(buffer);
    }
}

/*
============
GScr_FS_WriteLine

This function writes/append a line to an opened file.


This function returns "" if file can not be read or is already at end of file.
It returns " " if an empty line got read. Otherwise it just returns the line
Usage: FS_WriteLine(int <filehandle>, string <data>)
============
*/

void GScr_FS_WriteLine()
{
    int ret;
    char buffer[2048];

    if (Scr_GetNumParam() != 2)
        Scr_Error("Usage: FS_WriteLine(<filehandle>, <data>)\n");

    fileHandle_t fh = Scr_GetInt(0);
    char *data = Scr_GetString(1);

    Com_sprintf(buffer, sizeof(buffer), "%s\n", data);

    ret = Scr_FS_Write(buffer, strlen(buffer), fh);

    if (!ret)
    {
        Com_DPrintf(CON_CHANNEL_SCRIPT,"^2Scr_FS_WriteLine() failed\n");
        Scr_AddBool(qfalse);
    }
    else
    {
        Scr_AddBool(qtrue);
    }
}

/*
============
GScr_FS_Remove

This function deletes a file.

This function returns true on success otherwise it returns false.
Usage: FS_Remove(string <filename>)
============
*/

void GScr_FS_Remove()
{

    if (Scr_GetNumParam() != 1)
        Scr_Error("Usage: FS_Delete(<filename>)\n");

    char *qpath = Scr_GetString(0);

    if (Scr_FS_AlreadyOpened(qpath))
    {
        Scr_Error("FS_Remove: Tried to delete an opened file!\n");
        Scr_AddBool(qfalse);
        return;
    }

    if (FS_HomeRemove(qpath))
    {
        Scr_AddBool(qtrue);
    }
    else
    {

        Scr_AddBool(qfalse);
    }
}

/*
============
GScr_FS_InitParamList

Returns a handle to the Parameter list
Usage: int = FS_InitParamList(string <filename>, bool indexed_list)
============
*/

/*
#define MAX_PARAMLISTS 4

void GScr_FS_InitParamList(){

    char* filename;
    qboolean type;
    int i;
	mvabuf;

    if(Scr_GetNumParam() != 2)
        Scr_Error("FS_InitParamList(string <filename>, bool <indexed_list>)\n");

    filename = Scr_GetString(0);

    type = Scr_GetBool(1);

    //See if we have this list maybe already loaded



    if(scr_fopencount == MAX_SCRIPT_FILEHANDLES -1){
        Scr_Error(va("FS_FOpen(): Exceeded limit of %i opened files\n", MAX_SCRIPT_FILEHANDLES), false);
    }

    if(Q_stricmp(mode, "read")){
        ret = FS_FOpenFileRead(filename, &fh);
        if(ret == -1){
            Scr_AddInt(0);
        }else{

            Scr_AddScriptFileHandle(fh);
            Scr_AddInt(ret);
        }

    }else if(Q_stricmp(mode, "write")){
        fh = FS_FOpenFileWrite(filename);
        if(fh > 0)
            Scr_AddScriptFileHandle(fh);

        Scr_AddInt(fh);

    }else if(Q_stricmp(mode, "append")){
        fh = FS_FOpenFileAppend(filename);
        if(fh > 0)
            Scr_AddScriptFileHandle(fh);

        Scr_AddInt(fh);

    }else{
        Scr_Error("FS_FOpen(): invalid mode. Valid modes are: read, write, append\n");
    }


    Com_sprintf(buffer, sizeof(buffer), "%s\n", data);


    ret = FS_Write(buffer, strlen(buffer), fh);

    if(!ret)
        Scr_AddBool(qfalse);
    else{
        Scr_AddBool(qtrue);
    }
}

*/

//static int scr_fopencount;
//static int scr_fileHandles[MAX_SCRIPT_FILEHANDLES];

typedef union {
    int step;
    byte cbyte;
} paramlist_index_t;

/*
============
GScr_FS_WriteParamList

Usage: FS_WriteParamList(string <filename>)
============
*/
/*

void GScr_FS_WriteParamList(){
    int ret;
    char buffer[2048];

    if(Scr_GetNumParam() != 2)
        Scr_Error("Usage: FS_WriteLine(<filehandle>, <data>)\n");

    fileHandle_t fh = Scr_GetInt(0);
    char* data = Scr_GetString(1);

    if(fh >= MAX_FILE_HANDLES || fh < 1){
        Scr_Error("FS_ReadLine: Bad filehandle\n");
        return;
    }

    Com_sprintf(buffer, sizeof(buffer), "%s\n", data);


    ret = FS_Write(buffer, strlen(buffer), fh);

    if(!ret)
        Scr_AddBool(qfalse);
    else{
        Scr_AddBool(qtrue);
    }
}


*/

/*
============
GScr_FS_ReadParamList

Usage: FS_ReadParamList(string <filename>)
============
*/

/*
============
GScr_FS_UnloadParamList

Usage: FS_UnloadParamList(string <filename>)
============
*/

/*
============
GScr_SpawnBot

Usage: entity = AddTestClient()
============
*/

void GScr_SpawnBot()
{
	gentity_t *clEnt;
	
	if ( Scr_GetNumParam() == 1 )
        {
       	 	char *string = Scr_GetString( 0 );
		char name[36];
		int i, j;
		
		for( i = 0, j = 0; string[i] && j < sizeof(name) - 1; ++i )
		{
			if( (byte)string[i] >= 0x20 )
			{
				name[j] = string[i];
				++j;
			}
		}
		name[j] = '\0';
		
		if ( strlen( name ) < 3 )
		{
			Scr_Error( "AddTestClient(): Name must be atleast 3 characters long\n" );
		}
		
		clEnt = (gentity_t *)SV_AddBotClient( name );
        }
	else
	{
		clEnt = (gentity_t *)SV_AddBotClient( NULL );
	}

        if (clEnt)
            	Scr_AddEntity(clEnt);
}

/*
============
GScr_RemoveAllBots

Usage: removeAllTestClients()
============
*/

void GScr_RemoveAllBots()
{
    SV_RemoveAllBots();
}

/*
============
GScr_RemoveBot

Usage: entity = removeTestClient()
============
*/

void GScr_RemoveBot()
{
    gentity_t *clEnt;
    clEnt = (gentity_t *)SV_RemoveBot();

    if (clEnt)
        Scr_AddEntity(clEnt);
}

void GScr_KickClient()
{

    client_t *cl;
    int clnum;
    char reason[128];

    int paramCount = Scr_GetNumParam();
    if (paramCount != 1 && paramCount != 2)
        Scr_Error("Usage: kick(<clientid>, [<reason>])\n");

    clnum = Scr_GetInt(0);
    if (paramCount == 2)
        Com_sprintf(reason, sizeof(reason), "%s\n", Scr_GetString(1));

    if (clnum < 0 || clnum >= g_maxclients->integer)
        Scr_Error("kick(): Out of range client id\n");

    cl = &svs.clients[clnum];

    if (paramCount == 2)
        SV_DropClient(cl, reason);
    else
        SV_DropClient(cl, "Player kicked by scriptadmin\n");
}

void GScr_BanClient()
{
    client_t *cl;
    baninfo_t baninfo;

    if (Scr_GetNumParam() != 1)
        Scr_Error("Usage: ban(<clientid>)\n");

    int clnum = Scr_GetInt(0);

    if (clnum < 0 || clnum >= g_maxclients->integer)
        Scr_Error("ban(): Out of range client id\n");

    cl = &svs.clients[clnum];
    if (cl->state < CS_PRIMED)
    {
        return;
    }
    SV_AddBanForClient(cl, -1, "Banned by scriptadmin\n");
    SV_DropClient(cl, baninfo.message);
}

void PlayerCmd_spawn(scr_entref_t arg)
{

    gentity_t *gentity = NULL;
    vec3_t position;
    vec3_t direction;
    mvabuf;

    int entityNum = 0;

    if (arg.classnum)
    {

        Scr_ObjectError("Not an entity");
    }
    else
    {

        entityNum = arg.entnum;
        gentity = &g_entities[entityNum];

        if (!gentity->client)
        {
            Scr_ObjectError(va("Entity: %i is not a player", entityNum));
        }
    }

    Scr_GetVector(0, position);
    Scr_GetVector(1, direction);

    ClientSpawn(gentity, position, direction);
}


void GScr_NewHudElem()
{
    game_hudelem_t *element = HudElem_Alloc(1023, 0);
    if(element)
    {
        Scr_AddHudElem(element);
        return;
    }
    Scr_Error("GScr_NewHudElem: Exceeded limit of Hudelems");
}

void GScr_NewClientHudElem()
{
    gentity_t *ent = Scr_GetEntity(0);

    if (ent->client == NULL)
    {
        Scr_ParamError(0, "GScr_NewClientHudElem: Entity is not a client");
    }
    game_hudelem_t *element = HudElem_Alloc(ent->s.number, 0);
    if(element)
    {
        Scr_AddHudElem(element);
        return;
    }
    Scr_Error("GScr_NewClientHudElem: Exceeded limit of Hudelems");
}

static qboolean Scr_CanFreeLocalizedConfigString(unsigned int index)
{
    int i = 0;
    mvabuf;

    /* Index not set + fast return from function */
    if (!index)
        return qfalse;

    /* Overflow protection */
    if (index >= MAX_CONFIGSTRINGS)
    {
        Scr_Error(va("localized configstring index must be between 0 and %d",
                     MAX_CONFIGSTRINGS - 1));
        return qfalse;
    }

    /* Better not to free precached strings... + fast return */
    if (g_isLocStringPrecached[index] == qtrue)
        return qfalse;

    /* Check all script hud elements if index in use SLOOOOW :C */
    while (i < 1024)
    {
        game_hudelem_t *elem = &g_hudelems[i];
        if (elem->elem.text &&
            elem->elem.text == index)
            return qfalse;
        ++i;
    }

    return qtrue;
}

void HECmd_SetText(scr_entref_t entnum)
{
    char buffer[1024];

    if (entnum.classnum != 1)
    {
        Scr_ObjectError("G_HudSetText: Not a hud element");
        return;
    }

    game_hudelem_t *element = &g_hudelems[entnum.entnum];

    int cs_index = element->elem.text;
	
    HudElem_ClearTypeSettings(element);

    /* Must be set to 0 before calling Scr_CanFreeLocalizedConfigString() */
    element->elem.text = 0;

    /* Attempt to avoid CS overflow using "SetText()" */
    if (Scr_CanFreeLocalizedConfigString(cs_index))
        SV_SetConfigstring(cs_index + CS_LOCALIZEDSTRINGS, "");

    Scr_ConstructMessageString(0, Scr_GetNumParam() -1, "Hud Elem String", buffer, sizeof(buffer));
    element->elem.type = HE_TYPE_TEXT;
    element->elem.text = G_LocalizedStringIndex(buffer);
}

void HECmd_SetPulseFX(scr_entref_t hud_elem_num)
{
	game_hudelem_t *hudelem_t = NULL;
	int speed;
	int decayStart;
	int decayDuration;

	if (Scr_GetNumParam() != 3)
		Scr_Error("USAGE: <hudelem> SetPulseFX( <speed>, <decayStart>, <decayDuration> );");

	if (hud_elem_num.classnum != 1)
	{
		Scr_ObjectError("not a hud element");
		return;
	}
	hudelem_t = &g_hudelems[hud_elem_num.entnum];

	speed = Scr_GetInt(0);
	if (speed < 0)
	{
		Scr_ParamError(0, va("Time (%i) must be greater than zero.", speed));
		return;
	}

	decayStart = Scr_GetInt(1);
	if (decayStart < 0)
	{
		Scr_ParamError(0, va("Time (%i) must be greater than zero.", decayStart));
		return;
	}

	decayDuration = Scr_GetInt(2);
	if (decayDuration < 0)
	{
		Scr_ParamError(0, va("Time (%i) must be greater than zero.", decayDuration));
		return;
	}

	hudelem_t->elem.fxBirthTime = level.time;
	hudelem_t->elem.fxLetterTime = speed;
	hudelem_t->elem.fxDecayStartTime = decayStart;
	hudelem_t->elem.fxDecayDuration = decayDuration;
}

void HECmd_ScaleOverTime(scr_entref_t hud_elem_num)
{
    game_hudelem_t *hudelem_t = NULL;
    if (hud_elem_num.classnum == 1)
    {
        hudelem_t = &g_hudelems[hud_elem_num.entnum];
    }
    else
    {
        Scr_ObjectError("not a hud element");
        hudelem_t = 0;
    }

    if (Scr_GetNumParam() != 3)
    {
        Scr_Error("hudelem scaleOverTime(time_in_seconds, new_width, new_height)");
    }

    float time = Scr_GetFloat(0);
    if (time <= 0.0)
    {
        Scr_ParamError(0, va("scale time %g <= 0", time));
    }
    else if (time > 60.0)
    {
        Scr_ParamError(0, va("scale time %g > 60", time));
    }

    int newWidth = Scr_GetInt(1u);
    int newHeight = Scr_GetInt(2u);

    extern level_locals_t level;
    hudelem_t->elem.scaleStartTime = level.time;
    int roundedTimeMs = floorf((float)(time * 1000.0) + 0.5);
    hudelem_t->elem.scaleTime = roundedTimeMs;
    hudelem_t->elem.fromWidth = hudelem_t->elem.width;
    hudelem_t->elem.fromHeight = hudelem_t->elem.height;
    hudelem_t->elem.width = newWidth;
    hudelem_t->elem.height = newHeight;

    // Bug fix: it doesn't contain the correct value of the hudelem so needs to be overwritten
    // otherwise.. you get a 'jumpy' scaleovertime
    hudelem_t->elem.fromAlignOrg = hudelem_t->elem.alignOrg;
    hudelem_t->elem.fromAlignScreen = hudelem_t->elem.alignScreen;
}

void GScr_MakeCvarServerInfo(void)
{
    const char *var_name;
    cvar_t *var;
    const char *newstringval;
    signed int i;
    int num_args;
    char buffer_out[1024];
    char buffer[1024];

    var_name = Scr_GetString(0);
    var = Cvar_FindVar(var_name);
    if (var)
    {
        Cvar_AddFlags(var, 0x100u);
        return;
    }

    if (Scr_GetType(1) == 3)
    {
        num_args = Scr_GetNumParam();
        Scr_ConstructMessageString(1, num_args - 1, "Dvar Value", buffer, sizeof(buffer));
        newstringval = buffer;
    }
    else
    {
        newstringval = Scr_GetString(1);
    }
    for (i = 0; i < sizeof(buffer) - 1 && newstringval[i]; i++)
    {
        buffer_out[i] = I_CleanChar(newstringval[i]);
        if (buffer_out[i] == '\"')
            buffer_out[i] = '\'';
    }
    buffer_out[i] = 0;
    Cvar_RegisterString(var_name, newstringval, 0x4100u, "Script defined user info cvar");
}

void GScr_SetCvar()
{
    const char *newstringval;
    const char *var_name;
    char buffer[8192];
    mvabuf;

    var_name = Scr_GetString(0);
    if (Scr_GetType(1) == 3)
    {
        Scr_ConstructMessageString(1, Scr_GetNumParam() - 1, "Dvar Value", buffer, 0x400u);
        newstringval = buffer;
    }
    else
    {
        newstringval = Scr_GetString(1);
    }
    if (Cvar_ValidateString(var_name))
    {
        Cvar_SetAllowCheatOnly(var_name, newstringval);
        if (Scr_GetNumParam() > 2 && Scr_GetInt(2))
        {
            Cvar_AddFlagsByName(var_name, 0x400u);
        }
    }
    else
    {
        Scr_Error(va("Cvar %s has an invalid cvar name", var_name));
    }
}

void GScr_GetCvarFloat()
{
    const char *stringval;

    if (Scr_GetNumParam() != 1)
    {
        Scr_Error("Usage: getcvarfloat( <cvarname> )");
    }
    stringval = Cvar_GetVariantString(Scr_GetString(0));
    Scr_AddFloat(atof(stringval));
}

void GScr_GetCvarInt()
{
    const char *stringval;

    if (Scr_GetNumParam() != 1)
    {
        Scr_Error("Usage: getcvarint(<cvarname>)");
    }
    stringval = Cvar_GetVariantString(Scr_GetString(0));
    Scr_AddInt(atoi(stringval));
}

void GScr_GetCvar()
{
    const char *stringval;
    const char *querystr;
    char promod_fool_names[1024];
    char promod_fool_sums[1024];

    if (Scr_GetNumParam() != 1)
    {
        Scr_Error("Usage: getcvar(<cvarname>)");
    }

    querystr = Scr_GetString(0);

    stringval = Cvar_GetVariantString(querystr);

    if (!Q_stricmpn(querystr, "sv_iwd", 6))
    {
        Cvar_VariableStringBuffer("sv_iwdNames", promod_fool_names, sizeof(promod_fool_names));
        Cvar_VariableStringBuffer("sv_iwds", promod_fool_sums, sizeof(promod_fool_sums));

        char *ptr_names = promod_fool_names;
        char *ptr_sums = promod_fool_sums;
        int len;
        /* 1st get the number of IWDs */
        while (*ptr_names && *ptr_sums)
        {
            if (*ptr_names == ' ' && *ptr_sums == ' ')
            {
                ptr_names++;
                ptr_sums++;

                if (!Q_stricmpn(ptr_names, "xbase_", 6) || !Q_stricmpn(ptr_names, "jcod4x_", 7))
                {
                    len = Q_strichr(ptr_names, ' ');
                    if (len == -1)
                    {
                        Scr_AddString(stringval);
                        return;
                    }
                    Q_bstrcpy(ptr_names, &ptr_names[len + 0]);

                    len = Q_strichr(ptr_sums, ' ');
                    if (len == -1)
                    {
                        Scr_AddString(stringval);
                        return;
                    }
                    Q_bstrcpy(ptr_sums, &ptr_sums[len + 0]);
                }
            }
            if (*ptr_names != ' ')
                ptr_names++;

            if (*ptr_sums != ' ')
                ptr_sums++;
        }

        if (!Q_stricmp(querystr, "sv_iwdNames"))
        {
            Scr_AddString(promod_fool_names);
            return;
        }
        if (!Q_stricmp(querystr, "sv_iwds"))
        {
            Scr_AddString(promod_fool_sums);
            return;
        }
    }

    Scr_AddString(stringval);
}

void GScr_IsCvarDefined()
{
    const char *var_name;
    qboolean defined;

    if (Scr_GetNumParam() != 1)
        Scr_Error("Usage: IsCvarDefined <cvarname>");

    var_name = Scr_GetString(0);
    defined = Cvar_IsDefined(var_name); //@florczakraf Please pay attention about critical sections. I am not sure if direct access is safe as you used it.

    Scr_AddBool(defined);
}

void GScr_ScriptCommandCB()
{
    char buffer[1024];

    if (!com_sv_running || !com_sv_running->boolean)
        return;

    if (Cmd_Argc() == 1)
    {
        Scr_ScriptCommand(Cmd_GetInvokerClnum(), Cmd_Argv(0), "");
    }
    else
    {

        Cmd_Argsv(1, buffer, sizeof(buffer));

        Scr_ScriptCommand(Cmd_GetInvokerClnum(), Cmd_Argv(0), buffer);
    }
}

void GScr_AddScriptCommand()
{

    if (Scr_GetNumParam() != 2)
    {
        Scr_Error("Usage: addScriptCommand <commandname> <default powerpoints is number between 1 and 100>");
        return;
    }
    const char *command = Scr_GetString(0);
    int defaultpower = Scr_GetInt(1);

    if (command[0] == '\0')
    {
        Scr_Error("addScriptCommand: empty command");
        return;
    }

    Cmd_AddCommandGeneric(command, NULL, GScr_ScriptCommandCB, qfalse, defaultpower);
}

void GScr_Spawn()
{

    int spawnflags;
    int strindex;
    gentity_t *gentity;
    vec3_t origin;
    mvabuf;

    strindex = Scr_GetConstString(0);

    Scr_GetVector(1, origin);

    if (Scr_GetNumParam() > 2)
        spawnflags = Scr_GetInt(2);
    else
        spawnflags = 0;

    gentity = G_Spawn();

    Scr_SetString(&gentity->classname, (unsigned short)strindex);

    gentity->r.currentOrigin[0] = origin[0];
    gentity->r.currentOrigin[1] = origin[1];
    gentity->r.currentOrigin[2] = origin[2];

    gentity->spawnflags = spawnflags;

    if (G_CallSpawnEntity(gentity))
    {
        Scr_AddEntity(gentity);
    }
    else
    {

        Scr_Error(va("unable to spawn \"%s\" entity", SL_ConvertToString(strindex)));
    }
}


void GScr_SpawnHelicopter()
{
    const char *vehicleInfoName;
    const char *model;
    gentity_t *newent;
    gentity_t *ownerent;
    vec3_t rotation;
    vec3_t position;

    ownerent = Scr_GetEntity(0);

    if (!ownerent->client)
    {
        Scr_ParamError(0, "Owner entity is not a player");
    }
    Scr_GetVector(1, position);
    Scr_GetVector(2, rotation);
    vehicleInfoName = Scr_GetString(3);
    model = Scr_GetString(4);

    newent = G_Spawn();

    Scr_SetString(&newent->classname, (unsigned short)scr_const.script_vehicle);

    newent->r.currentOrigin[0] = position[0];
    newent->r.currentOrigin[1] = position[1];
    newent->r.currentOrigin[2] = position[2];
    newent->r.currentAngles[0] = rotation[0];
    newent->r.currentAngles[1] = rotation[1];
    newent->r.currentAngles[2] = rotation[2];

    G_SpawnHelicopter(newent, ownerent, vehicleInfoName, model);

    Scr_AddEntity(newent);
}

const char *Scr_GetPlayername(gentity_t *gent)
{
    if (gent->s.number < 0 || gent->s.number >= MAX_CLIENTS)
    {
        Com_PrintError(CON_CHANNEL_SCRIPT,"Scr_GetPlayername() Bad entity\n");
        return "";
    }
    return svs.clients[gent->s.number].name;
}

/*
void GScr_SpawnVehicle()
{

	int spawnflags;
	gentity_t *gentity;
	vec3_t origin;
	char vehTypeStr[MAX_QPATH];
	char vehModel[MAX_QPATH];

	Scr_GetVector(0, origin);

	if ( Scr_GetNumParam() != 4 )
	{
		Scr_Error("Usage: spawnvehicle <origin>, <spawnflags>, <vehicletype>, <xmodel>");
		return;
	}

	spawnflags = Scr_GetInt(1);

	gentity = G_Spawn();

	Scr_SetString((unsigned short*)&gentity->classname, (unsigned short)stringIndex.script_vehicle);

	gentity->r.currentOrigin[0] = origin[0];
	gentity->r.currentOrigin[1] = origin[1];
	gentity->r.currentOrigin[2] = origin[2];

	gentity->spawnflags = spawnflags;

        Q_strncpyz(vehTypeStr, Scr_GetString(2), sizeof(vehTypeStr));
        Q_strncpyz(vehModel, Scr_GetString(3), sizeof(vehModel));

        G_SetModel(gentity, vehModel);
//	G_VehCollmapSpawner( gentity );
	SpawnVehicle( gentity, vehTypeStr );
//	gentity->s.eType = 12;
//	gentity->r.contents = 0x2080;
	Scr_AddEntity( gentity );
}
*/

void GScr_VectorAdd()
{

    vec3_t vec;
    float x, y, z;

    if (Scr_GetNumParam() != 4)
    {
        Scr_Error("Usage: vectoradd <vector>, <x>, <y>, <z>");
        return;
    }

    Scr_GetVector(0, vec);
    x = Scr_GetFloat(1);
    y = Scr_GetFloat(2);
    z = Scr_GetFloat(3);

    vec[0] += x;
    vec[1] += y;
    vec[2] += z;

    Scr_AddVector(vec);
}

/*
void ScrCmd_SetStance(scr_entref_t arg){

    gentity_t* gentity;
    int entityNum = 0;
    short strindex;
    mvabuf;

    if(arg.classnum){

        Scr_ObjectError("Not an entity");
        return;

    }else{

        entityNum = arg.entnum;
        gentity = &g_entities[entityNum];

        if(!gentity->client){
            Scr_ObjectError(va("Entity: %i is not a player", entityNum));
            return;
        }
    }

    if(Scr_GetNumParam() != 1){
        Scr_Error("Usage: self setstance( <\"crouch\" | \"prone\" | \"stand\"> )\n");
    }

    strindex = Scr_GetConstString(0);

    if(strindex == scr_const.prone){

	gentity->client->ps.stance = 1;

    }else if(strindex == scr_const.crouch){

	gentity->client->ps.stance = 2;

    }else if(strindex == scr_const.stand){

	gentity->client->ps.stance = 3;

    }else{

        Scr_Error(va("Illegal stance string: '%s'." ,SL_ConvertToString(strindex)), false);
    }

}
*/

void PlayerCmd_ForwardButtonPressed(scr_entref_t object)
{
    if (Scr_GetNumParam())
        Scr_Error("Usage: <client> ForwardButtonPressed()\n");

    client_t *cl = VM_GetClientForEntRef(object);

    if (!cl)
        Scr_ObjectError("not a client\n");

    Scr_AddBool(cl->lastUsercmd.forwardmove > 0 ? qtrue : qfalse);
}

void PlayerCmd_BackButtonPressed(scr_entref_t object)
{
    if (Scr_GetNumParam())
        Scr_Error("Usage: <client> BackButtonPressed()\n");

    client_t *cl = VM_GetClientForEntRef(object);

    if (!cl)
        Scr_ObjectError("not a client\n");

    Scr_AddBool(cl->lastUsercmd.forwardmove < 0 ? qtrue : qfalse);
}

void PlayerCmd_MoveLeftButtonPressed(scr_entref_t object)
{
    if (Scr_GetNumParam())
        Scr_Error("Usage: <client> MoveLeftButtonPressed()\n");

    client_t *cl = VM_GetClientForEntRef(object);

    if (!cl)
        Scr_ObjectError("not a client\n");

    Scr_AddBool(cl->lastUsercmd.rightmove < 0 ? qtrue : qfalse);
}

void PlayerCmd_MoveRightButtonPressed(scr_entref_t object)
{
    if (Scr_GetNumParam())
        Scr_Error("Usage: <client> MoveRightButtonPressed()\n");

    client_t *cl = VM_GetClientForEntRef(object);

    if (!cl)
        Scr_ObjectError("not a client\n");

    Scr_AddBool(cl->lastUsercmd.rightmove > 0 ? qtrue : qfalse);
}

void PlayerCmd_SprintButtonPressed(scr_entref_t object)
{
    if (Scr_GetNumParam())
        Scr_Error("Usage: <client> SprintButtonPressed()\n");

    client_t *cl = VM_GetClientForEntRef(object);

    if (!cl)
        Scr_ObjectError("not a client\n");

    Scr_AddBool(cl->lastUsercmd.buttons & KEY_MASK_SPRINT ? qtrue : qfalse);
}

void PlayerCmd_ReloadButtonPressed(scr_entref_t object)
{
    if (Scr_GetNumParam())
        Scr_Error("Usage: <client> ReloadButtonPressed()\n");

    client_t *cl = VM_GetClientForEntRef(object);

    if (!cl)
        Scr_ObjectError("not a client\n");

    Scr_AddBool(cl->lastUsercmd.buttons & KEY_MASK_RELOAD ? qtrue : qfalse);
}

void PlayerCmd_LeanLeftButtonPressed(scr_entref_t object)
{
    if (Scr_GetNumParam())
        Scr_Error("Usage: <client> LeanLeftButtonPressed()\n");

    client_t *cl = VM_GetClientForEntRef(object);

    if (!cl)
        Scr_ObjectError("not a client\n");

    Scr_AddBool(cl->lastUsercmd.buttons & KEY_MASK_LEANLEFT ? qtrue : qfalse);
}

void PlayerCmd_LeanRightButtonPressed(scr_entref_t object)
{
    if (Scr_GetNumParam())
        Scr_Error("Usage: <client> LeanRightButtonPressed()\n");

    client_t *cl = VM_GetClientForEntRef(object);

    if (!cl)
        Scr_ObjectError("not a client\n");

    Scr_AddBool(cl->lastUsercmd.buttons & KEY_MASK_LEANRIGHT ? qtrue : qfalse);
}

void PlayerCmd_IsProning(scr_entref_t object)
{
    if (Scr_GetNumParam())
        Scr_Error("Usage: <client> IsProning()\n");

    client_t *cl = VM_GetClientForEntRef(object);

    if (!cl)
        Scr_ObjectError("not a client\n");

    Scr_AddBool(cl->lastUsercmd.buttons & KEY_MASK_PRONE ? qtrue : qfalse);
}

void PlayerCmd_IsCrouching(scr_entref_t object)
{
    if (Scr_GetNumParam())
        Scr_Error("Usage: <client> IsCrouching()\n");

    client_t *cl = VM_GetClientForEntRef(object);

    if (!cl)
        Scr_ObjectError("not a client\n");

    Scr_AddBool(cl->lastUsercmd.buttons & KEY_MASK_CROUCH ? qtrue : qfalse);
}

void PlayerCmd_IsStanding(scr_entref_t object)
{
    if (Scr_GetNumParam())
        Scr_Error("Usage: <client> IsStanding()\n");

    client_t *cl = VM_GetClientForEntRef(object);

    if (!cl)
        Scr_ObjectError("not a client\n");

    Scr_AddBool(!(cl->lastUsercmd.buttons & KEY_MASK_CROUCH) && !(cl->lastUsercmd.buttons & KEY_MASK_PRONE) ? qtrue : qfalse);
}

void PlayerCmd_JumpButtonPressed(scr_entref_t object)
{
    if (Scr_GetNumParam())
        Scr_Error("Usage: <client> JumpButtonPressed()\n");

    client_t *cl = VM_GetClientForEntRef(object);

    if (!cl)
        Scr_ObjectError("not a client\n");

    Scr_AddBool(cl->lastUsercmd.buttons & KEY_MASK_JUMP ? qtrue : qfalse);
}

void PlayerCmd_IsInADS(scr_entref_t object)
{
    if (Scr_GetNumParam())
        Scr_Error("Usage: <client> IsInADS()\n");

    client_t *cl = VM_GetClientForEntRef(object);

    if (!cl)
        Scr_ObjectError("not a client\n");

    Scr_AddBool(cl->lastUsercmd.buttons & KEY_MASK_ADS_MODE ? qtrue : qfalse);
}

void PlayerCmd_HoldBreathButtonPressed(scr_entref_t object)
{
    if (Scr_GetNumParam())
        Scr_Error("Usage: <client> HoldBreathButtonPressed()\n");

    client_t *cl = VM_GetClientForEntRef(object);

    if (!cl)
        Scr_ObjectError("not a client\n");

    Scr_AddBool(cl->lastUsercmd.buttons & KEY_MASK_HOLDBREATH ? qtrue : qfalse);
}

void PlayerCmd_AimButtonPressed(scr_entref_t object)
{
    if (Scr_GetNumParam())
        Scr_Error("Usage: <client> AimButtonPressed()\n");

    client_t *cl = VM_GetClientForEntRef(object);

    if (!cl)
        Scr_ObjectError("not a client\n");

    Scr_AddBool(cl->lastUsercmd.buttons & KEY_MASK_ADS ? qtrue : qfalse);
}

void PlayerCmd_GetCountedFPS(scr_entref_t arg)
{
    if (Scr_GetNumParam())
        Scr_Error("Usage: <player entity> GetCountedFPS()\n");

    client_t *cl = VM_GetClientForEntRef(arg);

    if (!cl)
        Scr_ObjectError("not a client\n");

    Scr_AddInt(cl->clFPS);
}

static void PlayerCmd_GetSteamGroupMembershipCallback(int clientnum, uint64_t steamid, uint64_t groupid, uint64_t reference, bool m_bMember, bool m_bOfficer)
{
    char sidstring[128], gidstring[128];
    uint32_t romaddress = (reference >> 32) & 0xffffffff;
    uint32_t oldserverid = reference & 0xffffffff;

    uint32_t currentsvbaseid = sv_serverid->integer & 0xffffff00;

    if (oldserverid != currentsvbaseid || clientnum < 0 || clientnum >= sv_maxclients->integer)
    {
        return; //Server restarted or changed game/map --> VM state has changed
    }

    Scr_AddBool(m_bOfficer);

    Scr_AddBool(m_bMember);

    SV_SApiSteamIDTo64String(groupid, gidstring, sizeof(gidstring));
    Scr_AddString(gidstring);

    SV_SApiSteamIDTo64String(steamid, sidstring, sizeof(sidstring));
    Scr_AddString(sidstring);

    unsigned short threadid = Scr_ExecEntThread(&g_entities[clientnum], romaddress, 4);
    Scr_FreeThread(threadid);
}

void PlayerCmd_GetSteamGroupMembership(scr_entref_t arg)
{
    gentity_t *gentity;
    int entityNum = 0;
    mvabuf;

    if (arg.classnum)
    {
        Scr_ObjectError("Not an entity");
    }
    else
    {
        entityNum = arg.entnum;
        gentity = &g_entities[entityNum];

        if (!gentity->client)
        {
            Scr_ObjectError(va("Entity: %i is not a player", entityNum));
        }
    }

    if (Scr_GetNumParam() != 2)
    {
        Scr_Error("Usage: self steamGroupMembershipQuery(<steamgroupid>, <::callbackfunction(<sid>, <gid>, <member>, <officer>)>)");
        return;
    }

    const char *sgid = Scr_GetString(0);
    uint64_t gid = SV_SApiStringToID(sgid);
    uint32_t vmromaddress = Scr_GetFunc(1);

    if (gid == 0 || vmromaddress == 0)
    {
        Scr_AddBool(qfalse);
        return;
    }

    uint32_t serverbaseid = sv_serverid->integer & 0xffffff00;
    uint64_t reference = ((uint64_t)vmromaddress << 32) | (uint64_t)serverbaseid;

    qboolean status = SV_SApiGetGroupMemberStatusByClientNum(entityNum, gid, reference, PlayerCmd_GetSteamGroupMembershipCallback);

    Scr_AddBool(status);
}

void Scr_PrecacheString_f()
{
    const char *locStrName = NULL;

    if (level.initializing == qfalse)
        Scr_Error("precacheString must be called before any wait statements "
                  "in the gametype or level script\n");

    locStrName = Scr_GetIString(0);
    if (locStrName[0])
        g_isLocStringPrecached[G_LocalizedStringIndex(locStrName)] = qtrue;
}

void Scr_Destroy_f(scr_entref_t hud_elem_num)
{
    if (hud_elem_num.classnum != 1)
    {
        Scr_ObjectError("not a hud element");
        return;
    }

    game_hudelem_t *hud_elem = &g_hudelems[hud_elem_num.entnum];

    int cs_index = hud_elem->elem.text;

    /* Must be set to 0 before calling Scr_CanFreeLocalizedConfigString() */
    hud_elem->elem.text = 0;

    /* Keep CS clear if assigned using 'settext' script command */
    if (Scr_CanFreeLocalizedConfigString(cs_index))
        SV_SetConfigstring(CS_LOCALIZEDSTRINGS + cs_index, "");

    Scr_FreeHudElem(hud_elem);
    hud_elem->elem.type = 0;
}

void Scr_IsArray_f()
{
    if (Scr_GetNumParam() != 1)
    {
        Scr_Error("usage: isArray(<variable>)");
        return;
    }

    Scr_AddBool(Scr_GetType(0) == 1 ? qtrue : qfalse);
}


/* GetTagInfoForEntity
 *
 *
 * Returns qtrue if bone has been found in current entity model.
 * Origin vector can be accessed using 'DOBJ_PART_CACHE.vectorSet.origin'.
 *
 * Based on 0x080BFFB6. Similar functionality (except script error messages).
 */
qboolean GScr_UpdateTagInternal2(gentity_t *ent, unsigned int tagName, cached_tag_mat_t *cachedTag, qboolean showScriptError)
{
    // Here used some kind of caching.
    // Checked if latest requested tag is the same as previous - just return from function.
    // Find tag origin otherwise.

    if ( ent->s.number == cachedTag->entnum && level.time == cachedTag->time && tagName == cachedTag->name )
    {
            return qtrue;
    }

    if (SV_DObjExists(ent))
    {
        if (G_DObjGetWorldTagMatrix(ent, tagName, cachedTag->tagMat))
        {
            cachedTag->entnum = ent->s.number;
            cachedTag->time = level.time;
            Scr_SetString(&cachedTag->name, tagName);
            return qtrue;
        }
        if (showScriptError){
            SV_DObjDumpInfo(ent);
        }
    }
    return qfalse;
}

void PlayerCmd_GetSpectatorClient(scr_entref_t arg)
{
    gentity_t *gentity = NULL;
    int entityNum = 0;		
    mvabuf;		
		
    if (arg.classnum)		
    {		
        Scr_ObjectError("Not an entity");		
    }		
    else		
    {		
        entityNum = arg.entnum;
        gentity = &g_entities[entityNum];		
		
        if (!gentity->client)		
        {		
            Scr_ObjectError(va("Entity: %i is not a player", entityNum));		
        }		
    }		
    if (Scr_GetNumParam())		
    {		
        Scr_Error("Usage: self getSpectatorClient()\n");		
    }		
		
    // Player isn't spectating anyone.		
    if (gentity->client->spectatorClient == -1)		
    {		
        Scr_AddUndefined();		
    }		
    else		
    {		
        Scr_AddEntity(&g_entities[gentity->client->spectatorClient]);		
    }		
}

void PlayerCmd_SetVelocity(scr_entref_t arg)
{
    gclient_t *cl = VM_GetGClientForEntRef(arg);
    float velocity[3];
    if (!cl)
    {
        Scr_ObjectError("Not a client");
        return;
    }
    if (Scr_GetNumParam() != 1)
    {
        Scr_Error("usage: <player> setVelocity(<vec origin>);");
        return;
    }
    Scr_GetVector(0, velocity);
    cl->ps.velocity[0] = velocity[0];
    cl->ps.velocity[1] = velocity[1];
    cl->ps.velocity[2] = velocity[2];
}

void GScr_ArrayTest()
{
    // Does nothing for now.
    // To be implemented with other script function name.
    //Scr_GetArrayId(0);
}


void ScrCmd_LogString(scr_entref_t arg)
{

}

void Scr_LogString()
{

}


void __cdecl PlayerCmd_GetXuid(scr_entref_t arg)
{
    gentity_t *pSelf;
    char svcmd[128];

    if (Scr_GetNumParam())
    {
        Scr_Error("Usage: <client> getXuid()\n");
    }
    if (arg.classnum)
    {

        Scr_ObjectError("Not an entity");
        return;
    }
    else
    {
        pSelf = &g_entities[arg.entnum];
    }

    if ( pSelf->client )
    {
        Com_sprintf(svcmd, sizeof(svcmd), "%llx", SV_GetPlayerXuid(pSelf->client->sess.cs.clientIndex));
        Scr_AddString(svcmd);
    }
    else
    {
        Scr_AddString("0");
    }
}
void GScr_Base64Encode()
{
    char encoded[1024] = {'\0'};
    if (Scr_GetNumParam() != 1)
    {
        Scr_Error("Usage: encoded = base64Encode(\"String to be encoded\");");
        return;
    }

    char* toEncode = Scr_GetString(0);
    unsigned long encodedLen = sizeof(encoded);
    base64_encode((byte*)toEncode, strlen(toEncode), (byte*)encoded, &encodedLen);
    encoded[sizeof(encoded) - 1] = '\0';
    Scr_AddString(encoded);
}

void GScr_Base64Decode()
{
    char decoded[1024] = {'\0'};
    if (Scr_GetNumParam() != 1)
    {
        Scr_Error("Usage: decoded = base64Decode(\"bla-bla-bla too lazy to write proper example==\");");
        return;
    }

    char* toDecode = Scr_GetString(0);
    unsigned long decodedLen = sizeof(decoded);
    base64_decode((byte*)toDecode, strlen(toDecode), (byte*)decoded, &decodedLen);
    decoded[sizeof(decoded) - 1] = '\0';
    Scr_AddString(decoded);
}

void GScr_IsEntity()
{
    if (Scr_GetNumParam() != 1)
    {
        Scr_Error("Usage: if (isEntity(testVariable)) { ... }");
        return;
    }

    Scr_AddBool(Scr_GetType(0) == 20);
}

void GScr_IsVector()
{
    if (Scr_GetNumParam() != 1)
    {
        Scr_Error("Usage: if (isVector(testVariable)) { ... }");
        return;
    }

    Scr_AddBool(Scr_GetType(0) == 4);
}

void GScr_IsString()
{
    if (Scr_GetNumParam() != 1)
    {
        Scr_Error("Usage: if (isString(testVariable)) { ... }");
        return;
    }

    Scr_AddInt(Scr_GetType(0) == 2);
}

void GScr_IsFloat()
{
    if (Scr_GetNumParam() != 1)
    {
        Scr_Error("Usage: if (isFloat(testVariable)) { ... }");
        return;
    }

    Scr_AddBool(Scr_GetType(0) == 5);
}

void GScr_IsInt()
{
    if (Scr_GetNumParam() != 1)
    {
        Scr_Error("Usage: if (isInt(testVariable)) { ... }");
        return;
    }

    Scr_AddBool(Scr_GetType(0) == 6);
}

void GScr_Float()
{
    mvabuf;

    if (Scr_GetNumParam() != 1)
    {
        Scr_Error("Usage: floatVal = float(<float, int, bool or string>);");
        return;
    }

    int varType = Scr_GetType(0);
    if (varType == 5)
        Scr_AddFloat(Scr_GetFloat(0));
    else if (varType == 6)
        Scr_AddFloat(1.0 * Scr_GetInt(0));
    else if (varType == 2)
    {
        char* strFloat = Scr_GetString(0);
        double result = 0.0;
        if ( isdigit(strFloat[0]) || (strFloat[0] == '-' && isdigit(strFloat[1])))
            result = atof(strFloat);
        Scr_AddFloat((float)result);
    }
    else
        Scr_ParamError(0, va("cannot cast %s to float", var_typename[varType]));
}

bool __cdecl SV_SetBrushModel(struct gentity_s *ent);

void GScr_CloneBrushModelToScriptModel(scr_entref_t scriptModelEntNum)
{
    // Common checks.
    if (Scr_GetNumParam() != 1)
        Scr_Error("usage: <scriptModelEnt> CloneBrushModelToScriptModel(<brushModelEnt>)");

    // Object checks.
    gentity_t* scriptEnt = VM_GetGEntityForNum(scriptModelEntNum);
    if (scriptEnt->classname != (unsigned short)scr_const.script_model)
        Scr_ObjectError("passed entity is not a script_model entity");

    if (scriptEnt->s.eType != 6)
        Scr_ObjectError("passed entity type is not 6 (TODO: what is it?)");

    // Arguments checks.
    gentity_t* brushEnt = Scr_GetEntity(0);
    if (brushEnt->classname != (unsigned short)scr_const.script_brushmodel && brushEnt->classname != (unsigned short)scr_const.script_model && brushEnt->classname != (unsigned short)scr_const.script_origin && brushEnt->classname != (unsigned short)scr_const.light)
        Scr_ParamError(0, "brush model entity classname must be one of {script_brushmodel, script_model, script_origin, light}");

    if (!brushEnt->s.index)
        Scr_ParamError(0, "brush model entity has no collision model");

    // Let's do this...
    SV_UnlinkEntity(scriptEnt);
    scriptEnt->s.index = brushEnt->s.index;
    int contents = scriptEnt->r.contents;
    SV_SetBrushModel(scriptEnt);
    scriptEnt->r.contents |= contents;
    SV_LinkEntity(scriptEnt);
}

void PlayerCmd_SetStance(scr_entref_t playerEntNum)
{
    if (Scr_GetNumParam() != 1)
    Scr_Error("usage: <client> setStance(<string stance>);");

    // Object check.
    gclient_t* cl = VM_GetGClientForEntityNumber(playerEntNum);
    if (!cl)
        Scr_ObjectError("entity is not a client");

    // Param check.
    short stanceIdx = Scr_GetConstString(0);
    if (stanceIdx != (unsigned short)scr_const.stand && stanceIdx != (unsigned short)scr_const.crouch && stanceIdx != (unsigned short)scr_const.prone)
        Scr_ParamError(0, "stance must be one of {stand, crouch, prone}");

    BGEvent event = stanceIdx == (unsigned short)scr_const.stand ? EV_STANCE_FORCE_STAND : stanceIdx == (unsigned short)scr_const.crouch ? EV_STANCE_FORCE_CROUCH : EV_STANCE_FORCE_PRONE;
    BG_AddPredictableEventToPlayerstate(event, 0, cl);
}



void GScr_Print3D()
{
  signed int duration;
  vec3_t origin;
  vec3_t rgb;
  float scale;
  vec4_t color;
  const char *text;

  duration = 1;
  scale = 1.0;
  color[0] = 1.0;
  color[1] = 1.0;
  color[2] = 1.0;
  color[3] = 1.0;
  switch ( Scr_GetNumParam( ) )
  {
    case 6u:
      duration = Scr_GetInt(5u);
    case 5u:
      scale = Scr_GetFloat(4u);
    case 4u:
      color[3] = Scr_GetFloat(3u);
    case 3u:
      Scr_GetVector(2u, rgb);
      VectorCopy(rgb, color);
    case 2u:
      text = Scr_GetString(1u);
      Scr_GetVector(0, origin);
      CL_AddDebugString(origin, color, scale, text, duration);
      break;
    default:
      Scr_Error("illegal call to print3d()");
      break;
  }
}

//printstar(<point>, <starcolor>, <staralpha>, <duration>, <text>, <textcolor>, <textalpha>, <textscale>);

void GScr_PrintDebugStar()
{
  signed int duration;
  vec3_t point;
  vec3_t rgb;
  float scale;
  vec4_t starColor, textColor;
  const char *text;

  duration = 1;
  scale = 1.0;
  text = NULL;
  starColor[0] = 1.0;
  starColor[1] = 1.0;
  starColor[2] = 1.0;
  starColor[3] = 1.0;

  textColor[0] = 1.0;
  textColor[1] = 1.0;
  textColor[2] = 1.0;
  textColor[3] = 1.0;

  switch ( Scr_GetNumParam( ) )
  {

    case 8u:
      scale = Scr_GetFloat(7u);

    case 7u:
      textColor[3] = Scr_GetFloat(6u);
    case 6u:
      Scr_GetVector(5u, rgb);
      VectorCopy(rgb, textColor);


    case 5u:
      text = Scr_GetString(4u);

    case 4u:
      duration = Scr_GetInt(3u);

    case 3u:
      starColor[3] = Scr_GetFloat(2u);
    case 2u:
      Scr_GetVector(1u, rgb);
      VectorCopy(rgb, starColor);

    case 1u:
      Scr_GetVector(0, point);
      CL_AddDebugStarWithText(point, starColor, textColor, text, scale, duration);
      break;
    default:
      Scr_Error("illegal call to printstar()");
      break;
  }
}


void EntityCmd_GetHandlerType(scr_entref_t arg)
{

    gentity_t *gentity;
    int entityNum = 0;

    if (arg.classnum)
    {

        Scr_ObjectError("Not an entity");
        return;
    }
    else
    {

        entityNum = arg.entnum;
        gentity = &g_entities[entityNum];
    }

    Scr_AddInt(gentity->handler);
}


void GScr_StrCtrlStrip()
{
	if( Scr_GetNumParam() != 1 )
	{
		Scr_Error( "Usage: string = StrCtrlStrip ( <string> )" );
	}

	char *string = Scr_GetString( 0 );
	char buffer[ 1024 ];
	
	int i, j;
	for( i = 0, j = 0; string[ i ]; ++i )
	{
		if( (byte)string[ i ] >= 0x20 )
		{
			buffer[ j ] = string[ i ];
			++j;
		}
	}
	buffer[ j ] = '\0';
	
	Scr_AddString( buffer );
}

void GScr_ToUpper()
{
	if( Scr_GetNumParam() != 1 )
	{
		Scr_Error( "Usage: string = ToUpper ( <string> )" );
	}

	char *string = Scr_GetString( 0 );
	char buffer[ 1024 ];
	
	int i;
	for( i = 0; string[ i ]; ++i )
	{
		if ( (byte)string[ i ] > 0x60 && (byte)string[ i ] < 0x7B )
			buffer[ i ] = (char)( (byte)string[ i ] & 0x5F );
		else
			buffer[ i ] = string[ i ];
	}
	buffer[ i ] = '\0';
	
	Scr_AddString( buffer );
}

int GScr_FetchAndReplaceInternal(const char* argnum, char* output, int maxoutlen)
{
    if(!isInteger(argnum, 1))
    {
        Scr_ParamError(0, "strreplace expects an integer after && or expects escaping by useing \\& instead.");
    }
    int arg = atoi(argnum);
    if(arg == 0)
    {
        Scr_ParamError(0, "strreplace expects an integer after && which is in range between 1 and 9.");
    }
    if( Scr_GetNumParam() < arg +1 )
	{
        Scr_ParamError(0, "strreplace expects as many additional arguments as your integer after && says so.");
    }
    const char* s = Scr_GetString(arg);
    Q_strncpyz(output, s, maxoutlen);
    return strlen(s);
}

void GScr_StrReplace()
{
    char assemblybuf[1024];
    int assemblypos = 0;
    int srcpos = 0;
    char argnum[2] = { 0 };

	if( Scr_GetNumParam() < 1 )
	{
		Scr_Error( "Usage: string =  strreplace( <string>, <string>,...)" );
	}

    char *mainstring = Scr_GetString( 0 );
    while(mainstring[srcpos] != 0)
    {
        if(mainstring[srcpos] == '&' && mainstring[srcpos+1] == '&' && mainstring[srcpos+2] != 0)
        {
            argnum[0] = mainstring[srcpos+2];
            assemblypos += GScr_FetchAndReplaceInternal(argnum, assemblybuf + assemblypos, sizeof(assemblybuf) - (assemblypos +1));
            srcpos += 3;
            continue;
        }
        //Escaping
        if(mainstring[srcpos] == '\\' && mainstring[srcpos+1] == '&')
        {
            srcpos++;
        }
        if(sizeof(assemblybuf) <= assemblypos +1)
        {
            break;
        }
        assemblybuf[assemblypos] = mainstring[srcpos];
        srcpos++;
        assemblypos++;
    }
    assemblybuf[assemblypos] = 0;
    Scr_AddString(assemblybuf);
}
