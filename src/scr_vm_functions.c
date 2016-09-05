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
#include "maxmind_geoip.h"
#include "q_platform.h"
#include "g_sv_shared.h"
#include "cvar.h"
#include "misc.h"
#include "sec_crypto.h"
#include "sv_auth.h"
#include "sapi.h"

#include <string.h>
#include <time.h>
#include "plugin_handler.h"


/*
============
PlayerCmd_GetUid

Returns the players Uid. Will only work with valid defined authserver or if another cod4-plugin is loaded with uid support.
If no UID is defined this function will return -1
Usage: int = self getUid();
============
*/

void PlayerCmd_GetUid(scr_entref_t arg){

    Com_PrintError("Removed script function getuid called");
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

void PlayerCmd_GetSteamID(scr_entref_t arg){

    gentity_t* gentity;
    int entityNum = 0;
    uint64_t steamid;
    mvabuf;
    char str[128];

    if(HIWORD(arg)){

        Scr_ObjectError("Not an entity");

    }else{

        entityNum = LOWORD(arg);
        gentity = &g_entities[entityNum];

        if(!gentity->client){
            Scr_ObjectError(va("Entity: %i is not a player", entityNum));
        }
    }
    if(Scr_GetNumParam()){
        Scr_Error("Usage: self getsteamid()\n");
    }

    steamid = svs.clients[entityNum].steamid;

    SV_SApiSteamIDToString(steamid, str, sizeof(str));

    Scr_AddString(str);
}

/*
============
PlayerCmd_GetPlayerID

Returns the players playerid in 64Bit format as string.
Usage: string = self getplayerid();
============
*/

void PlayerCmd_GetPlayerID(scr_entref_t arg){

    gentity_t* gentity;
    int entityNum = 0;
    uint64_t playerid;
    mvabuf;
    char str[128];

    if(HIWORD(arg)){

        Scr_ObjectError("Not an entity");

    }else{

        entityNum = LOWORD(arg);
        gentity = &g_entities[entityNum];

        if(!gentity->client){
            Scr_ObjectError(va("Entity: %i is not a player", entityNum));
        }
    }
    if(Scr_GetNumParam()){
        Scr_Error("Usage: self getplayerid()\n");
    }

    playerid = svs.clients[entityNum].playerid;

    SV_SApiSteamIDToString(playerid, str, sizeof(str));

    Scr_AddString(str);
}

/*
============
PlayerCmd_GetGuid

Returns the players Guid.
Usage: string = self getGuid();
============
*/

void PlayerCmd_GetGuid(scr_entref_t arg){

    gentity_t* gentity;
    int entityNum = 0;
    const char* guid;
    char buf[128];
	mvabuf;


    if(HIWORD(arg)){

        Scr_ObjectError("Not an entity");

    }else{

        entityNum = LOWORD(arg);
        gentity = &g_entities[entityNum];

        if(!gentity->client){
            Scr_ObjectError(va("Entity: %i is not a player", entityNum));
        }
    }
    if(Scr_GetNumParam()){
        Scr_Error("Usage: self getGuid()\n");
    }

    guid = SV_GetGuid(entityNum, buf, sizeof(buf));

    if(guid == NULL)
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

void PlayerCmd_SetUid(scr_entref_t arg){
    Com_PrintError("Removed script function setuid called");
		Scr_AddInt( 0 );
}



void PlayerCmd_GetPower(scr_entref_t arg){

    gentity_t* gentity;
    int entityNum = 0;
    int power;
    client_t *cl;
	mvabuf;


    if(HIWORD(arg)){

        Scr_ObjectError("Not an entity");

    }else{

        entityNum = LOWORD(arg);
        gentity = &g_entities[entityNum];

        if(!gentity->client){
            Scr_ObjectError(va("Entity: %i is not a player", entityNum));
        }
    }
    if(Scr_GetNumParam()){
        Scr_Error("Usage: self getPower()\n");
    }
    cl = &svs.clients[entityNum];

    power = cl->power;

    Scr_AddInt(power);
}


void PlayerCmd_SetPower(scr_entref_t arg){

    gentity_t* gentity;
    int entityNum = 0;
    int power;
    client_t *cl;
	mvabuf;


    if(HIWORD(arg)){

        Scr_ObjectError("Not an entity");

    }else{

        entityNum = LOWORD(arg);
        gentity = &g_entities[entityNum];

        if(!gentity->client){
            Scr_ObjectError(va("Entity: %i is not a player", entityNum));
        }
    }
    if(Scr_GetNumParam() != 1){
        Scr_Error("Usage: self setPower(<integer>)\n");
    }
    cl = &svs.clients[entityNum];

    power = Scr_GetInt(0);

    if(power < 1 || power > 100)
    {
        Scr_Error("setPower: has to be in range between 1 and 100\n");
    }

    cl->power = power;

}

void PlayerCmd_SetStat(scr_entref_t arg)
{
  gentity_t* gentity;
  int entityNum;
  int numparms, index, value;
    mvabuf;

    if(HIWORD(arg)){

        Scr_ObjectError("Not an entity");
        return;
    }else{

        entityNum = LOWORD(arg);
        gentity = &g_entities[entityNum];

        if(!gentity->client){
            Scr_Error("setstat: entity must be a player entity");
            return;
        }
    }

    numparms = Scr_GetNumParam();

    if ( numparms != 2 )
    {
      Scr_Error(va("setstat: takes 2 arguments, got %i.\n", numparms));
      return;
    }

    index = Scr_GetInt(0);
    value = Scr_GetInt(1);

    if ( (unsigned int)index > 3499 )
    {
        Scr_ParamError(0, va("setstat: invalid index %i", index));
        return;
    }
    if ( index <= 1999 && (unsigned int)value > 255 )
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

    if(HIWORD(arg)){

        Scr_ObjectError("Not an entity");
        return;
    }else{

        entityNum = LOWORD(arg);
        gentity = &g_entities[entityNum];

        if(!gentity->client){
            Scr_Error("getstat: entity must be a player entity");
            return;
        }
    }
	index = Scr_GetInt(0);
	if ( (unsigned int)index > 3499 )
	{
		Scr_Error(va("getstat: invalid index %i", index));
		return;
	}
	if ( gentity->client->sess.connected <= 0 )
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

void PlayerCmd_GetUserinfo(scr_entref_t arg){

    gentity_t* gentity;
    int entityNum = 0;
    client_t *cl;
	mvabuf;


    if(HIWORD(arg)){

        Scr_ObjectError("Not an entity");

    }else{

        entityNum = LOWORD(arg);
        gentity = &g_entities[entityNum];

        if(!gentity->client){
            Scr_ObjectError(va("Entity: %i is not a player", entityNum));
        }
    }
    if(Scr_GetNumParam() != 1){
        Scr_Error("Usage: self getUserinfo( <string> )\n");
    }

    char* u_key = Scr_GetString(0);

    cl = &svs.clients[entityNum];

    char* value = Info_ValueForKey(cl->userinfo, u_key);

    Scr_AddString(value);
}


/*
============
PlayerCmd_GetPing

Returns the current measured scoreboard ping of this player.
Usage: int = self getPing();
============
*/

void PlayerCmd_GetPing(scr_entref_t arg){

    gentity_t* gentity;
    int entityNum = 0;
    client_t *cl;
	mvabuf;


    if(HIWORD(arg)){

        Scr_ObjectError("Not an entity");

    }else{

        entityNum = LOWORD(arg);
        gentity = &g_entities[entityNum];

        if(!gentity->client){
            Scr_ObjectError(va("Entity: %i is not a player", entityNum));
        }
    }
    if(Scr_GetNumParam()){
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


void PlayerCmd_SetGravity(scr_entref_t arg){

    gentity_t* gentity;
    int entityNum = 0;
    int gravity;
	mvabuf;


    if(HIWORD(arg)){

        Scr_ObjectError("Not an entity");
        return;

    }else{

        entityNum = LOWORD(arg);
        gentity = &g_entities[entityNum];

        if(!gentity->client){
            Scr_ObjectError(va("Entity: %i is not a player", entityNum));
            return;
        }
    }

    if(Scr_GetNumParam() != 1){
        Scr_Error("Usage: self setgravity( <integer> )\n");
    }

    gravity = Scr_GetInt(0);

    if(gravity < 1 || gravity > 50000){
        Scr_Error("setgravity range is between 1 and 50000\n");
        return;
    }

    Pmove_ExtendedTurnOn();

    svs.clients[entityNum].gravity = gravity;
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
	gentity_t* gentity, *groundRefEnt;
    int entityNum = 0;
	int otherEntityNum = 0;
	mvabuf;

    if(HIWORD(arg)){
        Scr_ObjectError("Not an entity");
        return;

    }else{
        entityNum = LOWORD(arg);
        gentity = &g_entities[entityNum];

        if(!gentity->client){
            Scr_ObjectError(va("Entity: %i is not a player", entityNum));
            return;
        }
    }

    if(Scr_GetNumParam() != 1){
        Scr_Error("Usage: self SetGroundReferenceEnt( <entity id> )\n");
    }

	otherEntityNum = Scr_GetInt(0);
    if( otherEntityNum >= 1024 || otherEntityNum < 0 ){
        Scr_Error( "SetGroundReferenceEnt must be in range 0-1023\n" );
        return;
    }

	groundRefEnt = &g_entities[entityNum];
	if( groundRefEnt->client ){
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


void PlayerCmd_SetJumpHeight(scr_entref_t arg){

    gentity_t* gentity;
    int entityNum = 0;
    int height;
	mvabuf;

    if(HIWORD(arg)){

        Scr_ObjectError("Not an entity");
        return;

    }else{

        entityNum = LOWORD(arg);
        gentity = &g_entities[entityNum];

        if(!gentity->client){
            Scr_ObjectError(va("Entity: %i is not a player", entityNum));
            return;
        }
    }

    if(Scr_GetNumParam() != 1){
        Scr_Error("Usage: self setjumpheight( <integer> )\n");
    }

    height = Scr_GetInt(0);

    if(height < 0 || height > 50000){
        Scr_Error("setjumpheight range is between 1 and 50000\n");
        return;
    }

    Pmove_ExtendedTurnOn();

    svs.clients[entityNum].jumpHeight = height;
    SV_SendServerCommandNoLoss(&svs.clients[entityNum], va("v jump_height \"%d\"", height));
}


/*
============
PlayerCmd_SetMoveSpeed

Changes the value of movement speed for this player.
Usage: self setmovespeed( <int> );
============
*/


void PlayerCmd_SetMoveSpeed(scr_entref_t arg){

    gentity_t* gentity;
    int entityNum = 0;
    int speed;
	mvabuf;

    if(HIWORD(arg)){

        Scr_ObjectError("Not an entity");
        return;

    }else{

        entityNum = LOWORD(arg);
        gentity = &g_entities[entityNum];

        if(!gentity->client){
            Scr_ObjectError(va("Entity: %i is not a player", entityNum));
            return;
        }
    }

    if(Scr_GetNumParam() != 1){
        Scr_Error("Usage: self setmovespeed( <integer> )\n");
    }

    speed = Scr_GetInt(0);

    if(speed < 0 || speed > 50000){
        Scr_Error("setmovespeed range is between 0 and 50000\n");
        return;
    }

    Pmove_ExtendedTurnOn();

    svs.clients[entityNum].playerMoveSpeed = speed;
}


/*
============
PlayerCmd_GetGeoLocation
resolves country from IP address
============
*/

typedef enum{
    SCR_GEOIP_CODE,
    SCR_GEOIP_CODE3,
    SCR_GEOIP_COUNTRYNAME,
    SCR_GEOIP_CONTINENT,
    SCR_GEOIP_INDEX
}scr_geoip_type_t;



void PlayerCmd_GetGeoLocation(scr_entref_t arg){

    gentity_t* gentity;
    int entityNum = 0;
    int rettype;
    int locIndex;
    const char* countryname;
	mvabuf;

    if(HIWORD(arg)){

        Scr_ObjectError("Not an entity");
        return;

    }else{

        entityNum = LOWORD(arg);
        gentity = &g_entities[entityNum];

        if(!gentity->client){
            Scr_ObjectError(va("Entity: %i is not a player", entityNum));
            return;
        }
    }

    if(Scr_GetNumParam() != 1){
        Scr_Error("Usage: self getgeolocation( <integer> )\n");
    }

    rettype = Scr_GetInt(0);

    locIndex = _GeoIP_seek_record(BigLong(*(unsigned long*)&svs.clients[entityNum].netchan.remoteAddress.ip));

    switch(rettype){
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

void GScr_StrTokByPixLen(){

    char buffer[2048];
    char *string = buffer;

    if(Scr_GetNumParam() != 2){
        Scr_Error("Usage: StrTokByPixLen(<string>, <float>)");
    }
    char* src = Scr_GetString(0);
    if(!src)
        return;
    else
        Q_strncpyz(buffer, src, sizeof(buffer));

    char* countstring = string;
    char* lastWordSpace = string;

    int lineBreakIndex = 0;

    int lWSHalfPixelCounter = 0;
    int halfPixelCounter = 0;

    int maxHalfPixel = 2.0 * Scr_GetFloat(1);

    Scr_MakeArray();

    while( *countstring ){
        switch(*countstring){

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

        if(halfPixelCounter >= maxHalfPixel){
            if(lineBreakIndex >= MAX_LINEBREAKS){
                break; //Cut here - no overrun
            }
            if(lWSHalfPixelCounter >= maxHalfPixel / 3){ //we have a space between words inside the upper half string length
                *lastWordSpace = 0;			//terminate it
                Scr_AddString(string);	//setting the beginning of string in our array
                Scr_AddArray();

                string = &lastWordSpace[1];
                countstring = &lastWordSpace[1];
                lWSHalfPixelCounter = 0;
                halfPixelCounter = 0;

            }else{ 					//we couln't find a space inside the upper half string length
                *countstring = 0;			//Mhh it is complicated to seperate the complete string here. We will just thrash one character
                Scr_AddString(string);
                Scr_AddArray();

                string = &countstring[1];
                countstring = &countstring[1];
                lWSHalfPixelCounter = 0;
                halfPixelCounter = 0;
            }
            lineBreakIndex++;
        }else{
            countstring++;
        }
    }
    if(*string){
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

void GScr_StrTokByLen(){

    char buffer[2048];
    unsigned char lastColor = '7';
    char *outputstr = buffer;

    if(Scr_GetNumParam() != 2){
        Scr_Error("Usage: StrTokByLen(<string>, <int>)");
    }
    char* src = Scr_GetString(0);

    char* inputstr = src;

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


    while( inputstr[i]){

        if(overflowcnt >= (sizeof(buffer) -4)){
            outputstr[i] = 0;
            outputstr[i+1] = 0;
            outputstr[i+2] = 0;
            break;
        }

        if( inputstr[i] == ' '){ /*Save the positions of the last recent wordspacer*/
            lSCounter = i;
            lSCounterReal = j;
        }

        if(inputstr[i] == '^' && inputstr[i+1] >= '0' && inputstr[i+1] <= '9'){
            outputstr[i+2] = inputstr[i];
            i++;
            lastColor = inputstr[i];
            outputstr[i+2] = inputstr[i];
            i++;
            overflowcnt += 2;
            continue;
        }


        if( j >= limit){
            if(lineBreakIndex >= MAX_LINEBREAKS){
                break; //Cut here - no overrun
            }


            if(lSCounterReal >= (limit / 2)){ //we have a space between words inside the upper half string length
                outputstr[lSCounter+2] = 0;
                Scr_AddString(outputstr);	//setting the beginning of string in our array
                Scr_AddArray();

                inputstr = &inputstr[lSCounter+1];
                outputstr = &outputstr[i+3];
                outputstr[0] = '^';
                outputstr[1] = lastColor;
                outputstr[2] = 0;
                overflowcnt += 3;

                lSCounter = 0;
                lSCounterReal = 0;
                i = 0;
                j = 0;

            }else{ 	//we couln't find a space inside the upper half string length
                outputstr[i+2] = 0; //Exception if broken inside colorcode is needed
                Scr_AddString(outputstr);
                Scr_AddArray();

                inputstr = &inputstr[i];
                outputstr = &outputstr[i+3];
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
        }else{
            j++;
            outputstr[i+2] = inputstr[i];
            i++;
            overflowcnt++;

        }
    }


    if( outputstr[2] ){
        outputstr[i+2] = 0;
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

void GScr_StrPixLen(){

    if(Scr_GetNumParam() != 1){
        Scr_Error("Usage: StrPixLen(<string>)");
    }
    char* string = Scr_GetString(0);

    int halfPixelCounter = 0;

    while( *string ){
        switch(*string){

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

Directly cleans the given string from all colorscodes. The original string will be modified!
If it is required that the original string remains you need to create a copy of string prior with copystr()
Usage: void = StrColorStrip(string <string>);
============
*/

void GScr_StrColorStrip(){

    char buffer[2048];

    if(Scr_GetNumParam() != 1){
        Scr_Error("Usage: StrColorStrip(<string>)\n");
    }

    char* string = Scr_GetString(0);

    int i;

    Q_strncpyz(buffer, string, sizeof(buffer));

    for(i=0; buffer[i]; i++){
        if(buffer[i] == '^' && buffer[i+1] >= '0' && buffer[i+1] <= '9'){
            buffer[i+1] = '7';
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

void GScr_StrRepl(){

    char buffer[2048];

    if(Scr_GetNumParam() != 3){
        Scr_Error("Usage: StrReplace(<string>, <string>, <string>)\n");
    }

    char* string = Scr_GetString(0);
    char* find = Scr_GetString(1);
    char* replacement = Scr_GetString(2);

    Q_strnrepl(buffer, sizeof(buffer), string, find, replacement);
    buffer[sizeof(buffer) -1] = 0;

    Scr_AddString(buffer);
}


/*
============
GScr_CopyString

Creates a real copy of the given string and returns the location of the newly created copy
Usage: string = CopyStr(string <string>);
============
*/

void GScr_CopyString(){

    if(Scr_GetNumParam() != 1){
        Scr_Error("Usage: CopyStr(<string>)\n");
    }
    Scr_AddString(Scr_GetString(0));
}



/*
============
GScr_GetRealTime

Returns the current time in seconds since 01/01/2012 UTC
Usage: int = getRealTime();
============
*/

void GScr_GetRealTime(){

    if(Scr_GetNumParam()){
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

void GScr_TimeToString(){
    char timestring[128];
    char* format;
    struct tm *time_s;
    int zone;

    if(Scr_GetNumParam() != 3){
        Scr_Error("Usage: TimeToString(<realtime>, <UTC/Local>, <format>)\n");
    }

    time_t time = Scr_GetInt(0) + 1325376000;
    zone = Scr_GetInt(1);
    format = Scr_GetString(2);

    if(zone)
        time_s = gmtime( &time );
    else
        time_s = localtime( &time );

    strftime( timestring, sizeof(timestring), format, time_s );

    Scr_AddString(timestring);
}


/*
============
GScr_SHA256

This function calculates the SHA256 sum of the given input textstring
Usage: string = sha256(string <input>);
============
*/

void GScr_SHA256(){

    char hash[129];
    unsigned long size;

    if(Scr_GetNumParam() != 1){
        Scr_Error("Usage: sha256(<input text>)\n");
    }

    char* input = Scr_GetString(0);

    size = sizeof(hash);

    if(!Sec_HashMemory(SEC_HASH_SHA256, input, strlen(input), hash, &size, qfalse))
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

void GScr_CbufExecRedirect(char* data, qboolean lastcommand)
{
    if(cmd_exec_redirect_buf[0] == '\0')
    {
        Q_strncpyz(cmd_exec_redirect_buf, data, sizeof(cmd_exec_redirect_buf));
    }
}

void GScr_CbufAddTextEx(){

    char string[1024];
    char outputbuf[1024];

    if(Scr_GetNumParam() != 1){
        Scr_Error("Usage: execex(<string>)\n");
    }
    Com_sprintf(string, sizeof(string), "%s\n",Scr_GetString(0));

    cmd_exec_redirect_buf[0] = '\0';

    if(!Q_stricmpn(string, "map", 3) || !Q_stricmpn(string, "fast_restart", 12))
    {

        Cbuf_AddText( string );

    }else{

        Com_BeginRedirect(outputbuf, sizeof(outputbuf), GScr_CbufExecRedirect);
        Cmd_ExecuteSingleCommand(0,0, string);
        Com_EndRedirect();
        cmd_exec_redirect_buf[sizeof(cmd_exec_redirect_buf) -1] = '\0';

    }

    Scr_AddString( cmd_exec_redirect_buf );
}

void GScr_CbufAddText(){

    char string[1024];

    if(Scr_GetNumParam() != 1){
        Scr_Error("Usage: exec(<string>)\n");
    }
    Com_sprintf(string, sizeof(string), "%s\n",Scr_GetString(0));


    Cbuf_AddText( string );

}



/*
============
GScr_FS_FOpen

Opens a file(name) inside current FS_GameDir. Mode is selectable. It can be either "read", "write", "append".
It returns on success an integer greater 0. This is the filehandle.
Usage: int = FS_FOpen(string <filename>, string <mode>)
============
*/

void GScr_FS_FOpen(){

    fileHandle_t fh = 0;

    if(Scr_GetNumParam() != 2)
        Scr_Error("Usage: FS_FOpen(<filename>, <mode>)\n");

    char* filename = Scr_GetString(0);
    char* mode = Scr_GetString(1);


    if(!Q_stricmp(mode, "read")){
        fh = Scr_OpenScriptFile( filename, SCR_FH_FILE, FS_READ);
    }else if(!Q_stricmp(mode, "write")){
        fh = Scr_OpenScriptFile( filename, SCR_FH_FILE, FS_WRITE);
    }else if(!Q_stricmp(mode, "append")){
        fh = Scr_OpenScriptFile( filename, SCR_FH_FILE, FS_APPEND);
    }else{
        Scr_Error("FS_FOpen(): invalid mode. Valid modes are: read, write, append\n");
    }

    if(!fh){
            Com_DPrintf("Scr_FS_FOpen() failed\n");
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

void GScr_FS_FClose(){

    if(Scr_GetNumParam() != 1)
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

void GScr_FS_FCloseAll(){

    int i;

    for(i=0; i < MAX_SCRIPT_FILEHANDLES; i++)
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

void GScr_FS_TestFile(){

    int fileExists;

    if(Scr_GetNumParam() != 1)
        Scr_Error("Usage: FS_TestFile(<filename>)\n");

    char* filename = Scr_GetString(0);
    fileExists = Scr_FileExists( filename );

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

void GScr_FS_ReadLine(){
    char buffer[8192];
    int ret;

    if(Scr_GetNumParam() != 1)
        Scr_Error("Usage: FS_ReadLine(<filehandle>)\n");

    fileHandle_t fh = Scr_GetInt(0);

    *buffer = 0;

    ret = Scr_FS_ReadLine(buffer, sizeof(buffer), fh);
    if(ret < 1 )
        Scr_AddUndefined();

    else if(*buffer == 0)
        Scr_AddString("");

    else{
        int len = strlen(buffer);

        if(buffer[len -1] == '\n')
            buffer[len -1] = 0;

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

void GScr_FS_WriteLine(){
    int ret;
    char buffer[2048];

    if(Scr_GetNumParam() != 2)
        Scr_Error("Usage: FS_WriteLine(<filehandle>, <data>)\n");

    fileHandle_t fh = Scr_GetInt(0);
    char* data = Scr_GetString(1);

    Com_sprintf(buffer, sizeof(buffer), "%s\n", data);

    ret = Scr_FS_Write(buffer, strlen(buffer), fh);

    if(!ret)
    {
        Com_DPrintf("^2Scr_FS_WriteLine() failed\n");
        Scr_AddBool(qfalse);
    }else{
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

void GScr_FS_Remove(){

    if(Scr_GetNumParam() != 1)
        Scr_Error("Usage: FS_Delete(<filename>)\n");

    char* qpath = Scr_GetString(0);

    if(!Scr_FS_AlreadyOpened(qpath))
    {
            Scr_Error("FS_Remove: Tried to delete an opened file!\n");
            Scr_AddBool(qfalse);
            return;
    }

    if(FS_HomeRemove(qpath))
    {
        Scr_AddBool(qtrue);

    }else{

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
        Scr_Error(va("FS_FOpen(): Exceeded limit of %i opened files\n", MAX_SCRIPT_FILEHANDLES));
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

typedef union{
    int step;
    byte cbyte;
}paramlist_index_t;

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

void GScr_SpawnBot(){

	gentity_t *clEnt;

	clEnt = (gentity_t*)SV_AddBotClient();

	if(clEnt)
		Scr_AddEntity(clEnt);
}

/*
============
GScr_RemoveAllBots

Usage: removeAllTestClients()
============
*/


void GScr_RemoveAllBots(){
	SV_RemoveAllBots();
}

/*
============
GScr_RemoveBot

Usage: entity = removeTestClient()
============
*/

void GScr_RemoveBot(){
	gentity_t *clEnt;
	clEnt = (gentity_t*)SV_RemoveBot();

	if(clEnt)
		Scr_AddEntity(clEnt);
}



void GScr_KickClient()
{

    client_t *cl;
    int clnum;
    char reason[128];

    int paramCount = Scr_GetNumParam();
    if(paramCount != 1 && paramCount != 2)
        Scr_Error("Usage: kick(<clientid>, [<reason>])\n");

    clnum = Scr_GetInt(0);
    if(paramCount == 2)
        Com_sprintf(reason, sizeof(reason), "%s\n", Scr_GetString(1));

    if(clnum < 0 || clnum >= g_maxclients->integer)
        Scr_Error("kick(): Out of range client id\n");

    cl = &svs.clients[clnum];

    if(paramCount == 2)
        SV_DropClient(cl, reason);
    else
        SV_DropClient(cl, "Player kicked by scriptadmin\n");
}

void GScr_BanClient()
{
    client_t *cl;
    baninfo_t baninfo;

    if(Scr_GetNumParam() != 1)
        Scr_Error("Usage: ban(<clientid>)\n");

    int clnum = Scr_GetInt(0);

    if(clnum < 0 || clnum >= g_maxclients->integer)
        Scr_Error("ban(): Out of range client id\n");

    cl = &svs.clients[clnum];
    if(cl->state < CS_PRIMED)
    {
      return;
    }
    SV_AddBanForClient(cl, -1, "Banned by scriptadmin\n");
    SV_DropClient(cl, baninfo.message);
}


void PlayerCmd_spawn(scr_entref_t arg){

    gentity_t* gentity = NULL;
    vec3_t position;
    vec3_t direction;
	mvabuf;

    int entityNum = 0;

    if(HIWORD(arg)){

        Scr_ObjectError("Not an entity");

    }else{

        entityNum = LOWORD(arg);
        gentity = &g_entities[entityNum];

        if(!gentity->client){
            Scr_ObjectError(va("Entity: %i is not a player", entityNum));
        }
    }

    Scr_GetVector(0, position);
    Scr_GetVector(1, direction);

    ClientSpawn(gentity, position, direction);

}


void GScr_NewHudElem(){

    int i;
    game_hudelem_t* element = g_hudelems;

    for(i = 0; i < MAX_HUDELEMS; i++, element++)
    {
        if(element->inuse)
            continue;

        element->inuse = qtrue;
        element->x = 0;
        element->y = 0;
        element->var_03 = 0;
        element->var_04 = 1023;
        element->fonttype = 0;
        element->align = 0;
        element->screenalign = 0;

        element->color.red = 255;
        element->color.green = 255;
        element->color.blue = 255;
        element->color.alpha = 255;

        element->glowcolor.red = 0;
        element->glowcolor.green = 0;
        element->glowcolor.blue = 0;
        element->glowcolor.alpha = 0;

        element->fadecolor.red = 0;
        element->fadecolor.green = 0;
        element->fadecolor.blue = 0;
        element->fadecolor.alpha = 0;

        element->fadestarttime = 0;
        element->fadetime = 0;
        element->var_13 = 0;
        element->sort = 0;
        element->displayoption = 0;
        element->var_34 = 0;
        element->var_35 = 0;
        element->var_36 = 0;
        element->var_37 = 0;
        element->var_38 = 0;
        element->movestarttime = 0;
        element->movingtime = 0;
        element->fontscale = 0;
        element->archived = 1;
        element->var_14 = 0;
        element->var_15 = 0;
        element->var_16 = 0;
        element->movex = 0;
        element->movey = 0;
        element->movealign = 0;
        element->movescralign = 0;
        element->var_18 = 0;
        element->var_19 = 0;
        element->var_20 = 0;
        element->var_21 = 0;
        element->var_28 = 0;
        element->var_29 = 0;
        element->var_30 = 0;
        element->hudTextConfigStringIndex = 0;
        element->entitynum = 1023;
        element->teamnum = 0;
        Scr_AddHudElem(element);
        return;
    }
    Scr_Error("GScr_NewHudElem: Exceeded limit of Hudelems");

}

void GScr_NewClientHudElem(){

    int i;
    gentity_t *ent = Scr_GetEntity(0);
    game_hudelem_t* element = g_hudelems;

    if(ent->client == NULL){
        Scr_ParamError(0, "GScr_NewClientHudElem: Entity is not a client");

    }



    for(i = 0; i < MAX_HUDELEMS; i++, element++)
    {
        if(element->inuse)
            continue;

        element->inuse = qtrue;
        element->x = 0;
        element->y = 0;
        element->var_03 = 0;
        element->var_04 = 1023;
        element->fonttype = 0;
        element->align = 0;
        element->screenalign = 0;

        element->color.red = 255;
        element->color.green = 255;
        element->color.blue = 255;
        element->color.alpha = 255;

        element->glowcolor.red = 0;
        element->glowcolor.green = 0;
        element->glowcolor.blue = 0;
        element->glowcolor.alpha = 0;

        element->fadecolor.red = 0;
        element->fadecolor.green = 0;
        element->fadecolor.blue = 0;
        element->fadecolor.alpha = 0;

        element->fadestarttime = 0;
        element->fadetime = 0;
        element->var_13 = 0;
        element->sort = 0;
        element->displayoption = 0;
        element->var_34 = 0;
        element->var_35 = 0;
        element->var_36 = 0;
        element->var_37 = 0;
        element->var_38 = 0;
        element->movestarttime = 0;
        element->movingtime = 0;
        element->fontscale = 0;
        element->archived = 1;
        element->var_14 = 0;
        element->var_15 = 0;
        element->var_16 = 0;
        element->movex = 0;
        element->movey = 0;
        element->movealign = 0;
        element->movescralign = 0;
        element->var_18 = 0;
        element->var_19 = 0;
        element->var_20 = 0;
        element->var_21 = 0;
        element->var_28 = 0;
        element->var_29 = 0;
        element->var_30 = 0;
        element->hudTextConfigStringIndex = 0;
        element->entitynum = ent->s.number;
        element->teamnum = 0;
        Scr_AddHudElem(element);
        return;
    }
    Scr_Error("GScr_NewHudElem: Exceeded limit of Hudelems");
}


void HECmd_SetText(scr_entref_t entnum){

    char buffer[1024];

    if(HIWORD(entnum) != 1)
    {
        Scr_ObjectError("G_HudSetText: Not a hud element");
        return;
    }

    game_hudelem_t* element = &g_hudelems[LOWORD(entnum)];

    element->var_14 = 0;
    element->var_15 = 0;
    element->var_16 = 0;

    element->movex = 0;
    element->movey = 0;
    element->movealign = 0;
    element->movescralign = 0;

    element->var_18 = 0;
    element->var_19 = 0;
    element->var_20 = 0;
    element->var_21 = 0;

    element->var_28 = 0;
    element->var_29 = 0;
    element->var_30 = 0;

    element->hudTextConfigStringIndex = 0;

    Scr_ConstructMessageString(0,0, "Hud Elem String", buffer, sizeof(buffer));
    element->inuse = qtrue;
    element->hudTextConfigStringIndex = G_LocalizedStringIndex(buffer);

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
	if ( var )
	{
		Cvar_AddFlags(var, 0x100u);
		return;
	}

    if ( Scr_GetType(1) == 3 )
    {
		num_args = Scr_GetNumParam();
		Scr_ConstructMessageString(1, num_args - 1, "Dvar Value", buffer, sizeof(buffer));
		newstringval = buffer;
    }
    else
    {
		newstringval = Scr_GetString(1);
    }
	for(i = 0; i < sizeof(buffer) -1 && newstringval[i]; i++)
    {
		buffer_out[i] = I_CleanChar(newstringval[i]);
		if ( buffer_out[i] == '\"' )
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
  if ( Scr_GetType(1) == 3 )
  {
    Scr_ConstructMessageString(1, Scr_GetNumParam() - 1, "Dvar Value", buffer, 0x400u);
    newstringval = buffer;
  }
  else
  {
    newstringval = Scr_GetString(1);
  }
  if (Cvar_ValidateString(var_name) )
  {
    Cvar_SetAllowCheatOnly(var_name, newstringval);
    if ( Scr_GetNumParam() > 2 && Scr_GetInt(2) )
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

  if(Scr_GetNumParam() != 1)
  {
	Scr_Error("Usage: getcvarfloat <cvarname>");
  }
  stringval = Cvar_GetVariantString(Scr_GetString(0));
  Scr_AddFloat(atof(stringval));
}

void  GScr_GetCvarInt()
{
  const char *stringval;

  if(Scr_GetNumParam() != 1)
  {
	Scr_Error("Usage: getcvarint <cvarname>");
  }
  stringval = Cvar_GetVariantString(Scr_GetString(0));
  Scr_AddInt(atoi(stringval));
}


void  GScr_GetCvar()
{
  const char *stringval;
  const char *querystr;
  char promod_fool_names[1024];
  char promod_fool_sums[1024];

  if(Scr_GetNumParam() != 1)
  {
	Scr_Error("Usage: getcvar <cvarname>");
  }

  querystr = Scr_GetString(0);

  stringval = Cvar_GetVariantString(querystr);

  if( !Q_stricmpn( querystr, "sv_iwd" , 6) )
  {
    Cvar_VariableStringBuffer("sv_iwdNames", promod_fool_names, sizeof( promod_fool_names ));
    Cvar_VariableStringBuffer("sv_iwds", promod_fool_sums, sizeof( promod_fool_sums ));

    char* ptr_names = promod_fool_names;
    char* ptr_sums = promod_fool_sums;
    int len;
    /* 1st get the number of IWDs */
    while(*ptr_names && *ptr_sums)
    {
        if(*ptr_names == ' ' && *ptr_sums == ' ')
        {
            ptr_names++;
            ptr_sums++;

            if(!Q_stricmpn(ptr_names, "xbase_", 6))
            {
                len = Q_strichr(ptr_names, ' ');
                if(len == -1)
                {
                    Scr_AddString(stringval);
                    return;
                }
                Q_bstrcpy(ptr_names, &ptr_names[len +1]);

                len = Q_strichr(ptr_sums, ' ');
                if(len == -1)
                {
                    Scr_AddString(stringval);
                    return;
                }
                Q_bstrcpy(ptr_sums, &ptr_sums[len +1]);
            }
        }
        if(*ptr_names != ' ')
            ptr_names++;

        if(*ptr_sums != ' ')
            ptr_sums++;
    }

    if(!Q_stricmp( querystr, "sv_iwdNames") )
    {
        Scr_AddString(promod_fool_names);
        return;
    }
    if(!Q_stricmp( querystr, "sv_iwds") )
    {
        Scr_AddString(promod_fool_sums);
        return;
    }
  }

  Scr_AddString(stringval);
}


void GScr_ScriptCommandCB()
{
    char buffer[1024];

    if(!com_sv_running || !com_sv_running->boolean )
        return;

    if(Cmd_Argc() == 1)
    {
        Scr_ScriptCommand(Cmd_GetInvokerClnum(), Cmd_Argv(0), "");

    }else{

        Cmd_Argsv(1, buffer, sizeof(buffer));

        Scr_ScriptCommand(Cmd_GetInvokerClnum(), Cmd_Argv(0), buffer);
    }
}



void GScr_AddScriptCommand()
{

    if(Scr_GetNumParam() != 2)
    {
        Scr_Error("Usage: addScriptCommand <commandname> <default powerpoints is number between 1 and 100>");
        return;
    }
    const char* command = Scr_GetString(0);
    int defaultpower = Scr_GetInt(1);

    if(command[0] == '\0')
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

	strindex = Scr_GetConstString( 0 );

	Scr_GetVector(1, origin);

	if ( Scr_GetNumParam() > 2 )
		spawnflags = Scr_GetInt(2);
	else
		spawnflags = 0;

	gentity = G_Spawn();

	Scr_SetString(&gentity->classname, (unsigned short)strindex);

	gentity->r.currentOrigin[0] = origin[0];
	gentity->r.currentOrigin[1] = origin[1];
	gentity->r.currentOrigin[2] = origin[2];

	gentity->spawnflags = spawnflags;

	if ( G_CallSpawnEntity( gentity ) )
	{
		Scr_AddEntity( gentity );
	}
	else
	{

		Scr_Error( va("unable to spawn \"%s\" entity", SL_ConvertToString(strindex) ));
	}
}


void GScr_SpawnHelicopter()
{
  const char *type;
  const char *model;
  gentity_t *newent;
  gentity_t *ownerent;
  vec3_t rotation;
  vec3_t position;

  ownerent = Scr_GetEntity(0);

  if ( !ownerent->client )
  {
    Scr_ParamError(0, "Owner entity is not a player");
  }
  Scr_GetVector(1, position);
  Scr_GetVector(2, rotation);
  type = Scr_GetString(3);
  model = Scr_GetString(4);

  newent = G_Spawn();

  Scr_SetString(&newent->classname, (unsigned short)stringIndex.script_vehicle);

  newent->r.currentOrigin[0] = position[0];
  newent->r.currentOrigin[1] = position[1];
  newent->r.currentOrigin[2] = position[2];
  newent->r.currentAngles[0] = rotation[0];
  newent->r.currentAngles[1] = rotation[1];
  newent->r.currentAngles[2] = rotation[2];

  G_SpawnHelicopter(newent, ownerent, type, model);

  Scr_AddEntity(newent);
}

void __cdecl ClientScr_GetName(gclient_t *gclient)
{
	if(gclient->sess.cs.clientIndex < 0 || gclient->sess.cs.clientIndex >= MAX_CLIENTS)
	{
    	    Com_PrintError("ClientScr_GetName() Bad entity\n");
	    Scr_AddString("");
        return;
	}
//	Com_Printf("ClientScr_GetName(): Name: %s for%d  %d\n", gclient->sess.newnetname,gclient->ps.clientNum, gclient->sess.cs.clientIndex, gclient->ps.clientNum);
	Scr_AddString(svs.clients[gclient->sess.cs.clientIndex].name);
//	Scr_AddString(gclient->sess.newnetname);

}

const char* Scr_GetPlayername(gentity_t* gent)
{
	if(gent->s.number < 0 || gent->s.number >= MAX_CLIENTS)
	{
        Com_PrintError("Scr_GetPlayername() Bad entity\n");
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

	if ( Scr_GetNumParam() != 4 )
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

	Scr_AddVector( vec );
}




/*
void ScrCmd_SetStance(scr_entref_t arg){

    gentity_t* gentity;
    int entityNum = 0;
    short strindex;
    mvabuf;

    if(HIWORD(arg)){

        Scr_ObjectError("Not an entity");
        return;

    }else{

        entityNum = LOWORD(arg);
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

    if(strindex == stringIndex.prone){

	gentity->client->ps.stance = 1;

    }else if(strindex == stringIndex.crouch){

	gentity->client->ps.stance = 2;

    }else if(strindex == stringIndex.stand){

	gentity->client->ps.stance = 3;

    }else{

        Scr_Error(va("Illegal stance string: '%s'." ,SL_ConvertToString(strindex)));
    }

}
*/

void PlayerCmd_ForwardButtonPressed(scr_entref_t object)
{
	if(Scr_GetNumParam())
		Scr_Error("Usage: <client> ForwardButtonPressed()\n");

	client_t* cl = VM_GetClientForEntityNumber(object);

	if(!cl)
		Scr_Error("Error: passed entity is not a client's entity\n");

	Scr_AddBool(cl->lastUsercmd.forwardmove == KEY_MASK_FORWARD ? qtrue : qfalse);
}

void PlayerCmd_BackButtonPressed(scr_entref_t object)
{
	if(Scr_GetNumParam())
		Scr_Error("Usage: <client> BackButtonPressed()\n");

	client_t* cl = VM_GetClientForEntityNumber(object);

	if(!cl)
		Scr_Error("Error: passed entity is not a client's entity\n");

	Scr_AddBool(cl->lastUsercmd.forwardmove == KEY_MASK_BACK ? qtrue : qfalse);
}

void PlayerCmd_MoveLeftButtonPressed(scr_entref_t object)
{
	if(Scr_GetNumParam())
		Scr_Error("Usage: <client> MoveLeftButtonPressed()\n");

	client_t* cl = VM_GetClientForEntityNumber(object);

	if(!cl)
		Scr_Error("Error: passed entity is not a client's entity\n");

	Scr_AddBool(cl->lastUsercmd.rightmove == KEY_MASK_MOVELEFT ? qtrue : qfalse);
}

void PlayerCmd_MoveRightButtonPressed(scr_entref_t object)
{
	if(Scr_GetNumParam())
		Scr_Error("Usage: <client> MoveRightButtonPressed()\n");

	client_t* cl = VM_GetClientForEntityNumber(object);

	if(!cl)
		Scr_Error("Error: passed entity is not a client's entity\n");

	Scr_AddBool(cl->lastUsercmd.rightmove == KEY_MASK_MOVERIGHT ? qtrue : qfalse);
}

void PlayerCmd_SprintButtonPressed(scr_entref_t object)
{
	if(Scr_GetNumParam())
		Scr_Error("Usage: <client> SprintButtonPressed()\n");

	client_t* cl = VM_GetClientForEntityNumber(object);

	if(!cl)
		Scr_Error("Error: passed entity is not a client's entity\n");

	Scr_AddBool(cl->lastUsercmd.buttons & KEY_MASK_SPRINT ? qtrue : qfalse);
}

void PlayerCmd_ReloadButtonPressed(scr_entref_t object)
{
	if(Scr_GetNumParam())
		Scr_Error("Usage: <client> ReloadButtonPressed()\n");

	client_t* cl = VM_GetClientForEntityNumber(object);

	if(!cl)
		Scr_Error("Error: passed entity is not a client's entity\n");

	Scr_AddBool(cl->lastUsercmd.buttons & KEY_MASK_RELOAD ? qtrue : qfalse);
}

void PlayerCmd_LeanLeftButtonPressed(scr_entref_t object)
{
	if(Scr_GetNumParam())
		Scr_Error("Usage: <client> LeanLeftButtonPressed()\n");

	client_t* cl = VM_GetClientForEntityNumber(object);

	if(!cl)
		Scr_Error("Error: passed entity is not a client's entity\n");

	Scr_AddBool(cl->lastUsercmd.buttons & KEY_MASK_LEANLEFT ? qtrue : qfalse);
}

void PlayerCmd_LeanRightButtonPressed(scr_entref_t object)
{
	if(Scr_GetNumParam())
		Scr_Error("Usage: <client> LeanRightButtonPressed()\n");

	client_t* cl = VM_GetClientForEntityNumber(object);

	if(!cl)
		Scr_Error("Error: passed entity is not a client's entity\n");

	Scr_AddBool(cl->lastUsercmd.buttons & KEY_MASK_LEANRIGHT ? qtrue : qfalse);
}

void PlayerCmd_IsProning(scr_entref_t object)
{
	if(Scr_GetNumParam())
		Scr_Error("Usage: <client> IsProning()\n");

	client_t* cl = VM_GetClientForEntityNumber(object);

	if(!cl)
		Scr_Error("Error: passed entity is not a client's entity\n");

	Scr_AddBool(cl->lastUsercmd.buttons & KEY_MASK_PRONE ? qtrue : qfalse);
}

void PlayerCmd_IsCrouching(scr_entref_t object)
{
	if(Scr_GetNumParam())
		Scr_Error("Usage: <client> IsCrouching()\n");

	client_t* cl = VM_GetClientForEntityNumber(object);

	if(!cl)
		Scr_Error("Error: passed entity is not a client's entity\n");

	Scr_AddBool(cl->lastUsercmd.buttons & KEY_MASK_CROUCH ? qtrue : qfalse);
}

void PlayerCmd_IsStanding(scr_entref_t object)
{
	if(Scr_GetNumParam())
		Scr_Error("Usage: <client> IsStanding()\n");

	client_t* cl = VM_GetClientForEntityNumber(object);

	if(!cl)
		Scr_Error("Error: passed entity is not a client's entity\n");

	Scr_AddBool(!(cl->lastUsercmd.buttons & KEY_MASK_CROUCH) && !(cl->lastUsercmd.buttons & KEY_MASK_PRONE) ? qtrue : qfalse);
}

void PlayerCmd_JumpButtonPressed(scr_entref_t object)
{
	if(Scr_GetNumParam())
		Scr_Error("Usage: <client> JumpButtonPressed()\n");

	client_t* cl = VM_GetClientForEntityNumber(object);

	if(!cl)
		Scr_Error("Error: passed entity is not a client's entity\n");

	Scr_AddBool(cl->lastUsercmd.buttons & KEY_MASK_JUMP ? qtrue : qfalse);
}

void PlayerCmd_IsInADS(scr_entref_t object)
{
	if(Scr_GetNumParam())
		Scr_Error("Usage: <client> IsInADS()\n");

	client_t* cl = VM_GetClientForEntityNumber(object);

	if(!cl)
		Scr_Error("Error: passed entity is not a client's entity\n");

	Scr_AddBool(cl->lastUsercmd.buttons & KEY_MASK_ADS_MODE ? qtrue : qfalse);
}

void PlayerCmd_HoldBreathButtonPressed(scr_entref_t object)
{
	if(Scr_GetNumParam())
		Scr_Error("Usage: <client> HoldBreathButtonPressed_M()\n");

	client_t* cl = VM_GetClientForEntityNumber(object);

	if(!cl)
		Scr_Error("Error: passed entity is not a client's entity\n");

	Scr_AddBool(cl->lastUsercmd.buttons & KEY_MASK_HOLDBREATH ? qtrue : qfalse);
}

void PlayerCmd_ADSButtonPressed(scr_entref_t object)
{
	if(Scr_GetNumParam())
		Scr_Error("Usage: <client> ADSButtonPressed_M()\n");

	client_t* cl = VM_GetClientForEntityNumber(object);

	if(!cl)
		Scr_Error("Error: passed entity is not a client's entity\n");

	Scr_AddBool(cl->lastUsercmd.buttons & KEY_MASK_ADS ? qtrue : qfalse);
}

void PlayerCmd_GetCountedFPS(scr_entref_t arg)
{
	if(Scr_GetNumParam())
		Scr_Error("Usage: <player entity> GetCountedFPS()\n");

	client_t* cl = VM_GetClientForEntityNumber(arg);

	if(!cl)
		Scr_Error("Error: passed entity is not a client's entity\n");

	Scr_AddInt(cl->clFPS);
}

void PlayerCmd_GetSpectatorClient(scr_entref_t arg)
{
    gentity_t* gentity;
    int entityNum = 0;
    mvabuf;

    if(HIWORD(arg)){
        Scr_ObjectError("Not an entity");
    }else{
        entityNum = LOWORD(arg);
        gentity = &g_entities[entityNum];

        if(!gentity->client){
            Scr_ObjectError(va("Entity: %i is not a player", entityNum));
        }
    }
    if(Scr_GetNumParam()){
        Scr_Error("Usage: self getSpectatorClient()\n");
    }

    // Player isn't spectating anyone.
    if(gentity->client->spectatorClient == -1) {
        Scr_AddUndefined();
    }
    else {
        Scr_AddEntity(&g_entities[gentity->client->spectatorClient]);
    }
}

/*
//Delete me once we have an example function
void GScr_TestCodePos()
{
	if ( Scr_GetNumParam() != 1 )
	{
		Scr_Error("Usage: codepostest <function>");
		return;
	}

  uint32_t vmromaddress = Scr_GetFunc(0);
  short threadid = Scr_ExecThread( vmromaddress, 0);
  Scr_FreeThread( threadid );

}
*/
