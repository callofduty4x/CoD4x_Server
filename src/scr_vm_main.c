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
#include "scr_vm.h"
#include "scr_vm_functions.h"
#include "qcommon_io.h"
#include "cvar.h"
#include "cmd.h"
#include "misc.h"
#include "sys_main.h"
#include "sv_bots.h"
//#include "scr_vm_classfunc.h"
#include "stringed_interface.h"
#include "cscr_stringlist.h"
#include "cscr_variable.h"
#include "cscr_animtree.h"
#include "cscr_parser.h"

#include <stdarg.h>
#include <ctype.h>

typedef struct
{
    char *name;
    xfunction_t offset;
    qboolean developer;
} v_function_t;


void __cdecl GScr_AddFieldsForEntity();


void Scr_AddStockFunctions()
{
	Scr_AddFunction("createprintchannel", GScr_CreatePrintChannel, 1 );
	Scr_AddFunction("setprintchannel", GScr_printChannelSet, 1 );
	Scr_AddFunction("print", print, 0 );
	Scr_AddFunction("println", println, 1 );
	Scr_AddFunction("iprintln", iprintln, 0 );
	Scr_AddFunction("iprintlnbold", iprintlnbold, 0 );
	Scr_AddFunction("print3d", GScr_Print3D, 1 );
	Scr_AddFunction("printstar", GScr_PrintDebugStar, 1 );
	Scr_AddFunction("line", GScr_line, 1 );
	Scr_AddFunction("getent", Scr_GetEnt, 0 );
	Scr_AddFunction("getentarray", Scr_GetEntArray, 0 );
	Scr_AddFunction("spawnplane", GScr_SpawnPlane, 0 );
	Scr_AddFunction("spawnturret", GScr_SpawnTurret, 0 );
	Scr_AddFunction("precacheturret", GScr_PrecacheTurret, 0 );
	Scr_AddFunction("spawnstruct", Scr_AddStruct, 0 );
	Scr_AddFunction("assert", assertCmd, 1 );
	Scr_AddFunction("assertex", assertexCmd, 1 );
	Scr_AddFunction("assertmsg", assertmsgCmd, 1 );
	Scr_AddFunction("isdefined", GScr_IsDefined, 0 );
	Scr_AddFunction("isstring", GScr_IsString, 0 );
	Scr_AddFunction("isalive", GScr_IsAlive, 0 );
	Scr_AddFunction("gettime", GScr_GetTime, 0 );
	Scr_AddFunction("getentbynum", Scr_GetEntByNum, 0 );
	Scr_AddFunction("getweaponmodel", Scr_GetWeaponModel, 0 );
	Scr_AddFunction("getanimlength", GScr_GetAnimLength, 0 );
	Scr_AddFunction("animhasnotetrack", GScr_AnimHasNotetrack, 0 );
	Scr_AddFunction("getnotetracktimes", GScr_GetNotetrackTimes, 0 );
	Scr_AddFunction("getbrushmodelcenter", GScr_GetBrushModelCenter, 0 );
	Scr_AddFunction("objective_add", Scr_Objective_Add, 0 );
	Scr_AddFunction("objective_delete", Scr_Objective_Delete, 0 );
	Scr_AddFunction("objective_state", Scr_Objective_State, 0 );
	Scr_AddFunction("objective_icon", Scr_Objective_Icon, 0 );
	Scr_AddFunction("float", GScr_Float, 0); // like int(...) but to convert to floating point number.
	Scr_AddFunction("objective_position", Scr_Objective_Position, 0 );
	Scr_AddFunction("objective_onentity", Scr_Objective_OnEntity, 0 );
	Scr_AddFunction("objective_current", Scr_Objective_Current, 0 );
	Scr_AddFunction("missile_createattractorent", Scr_MissileCreateAttractorEnt, 0 );
	Scr_AddFunction("missile_createattractororigin", Scr_MissileCreateAttractorOrigin, 0 );
	Scr_AddFunction("missile_createrepulsorent", Scr_MissileCreateRepulsorEnt, 0 );
	Scr_AddFunction("missile_createrepulsororigin", Scr_MissileCreateRepulsorOrigin, 0 );
	Scr_AddFunction("missile_deleteattractor", Scr_MissileDeleteAttractor, 0 );
	Scr_AddFunction("bullettrace", Scr_BulletTrace, 0 );
	Scr_AddFunction("bullettracepassed", Scr_BulletTracePassed, 0 );
	Scr_AddFunction("sighttracepassed", Scr_SightTracePassed, 0 );
	Scr_AddFunction("physicstrace", Scr_PhysicsTrace, 0 );
	Scr_AddFunction("playerphysicstrace", Scr_PlayerPhysicsTrace, 0 );
	Scr_AddFunction("getmovedelta", GScr_GetMoveDelta, 0 );
	Scr_AddFunction("getangledelta", GScr_GetAngleDelta, 0 );
	Scr_AddFunction("getnorthyaw", GScr_GetNorthYaw, 0 );
	Scr_AddFunction("randomint", Scr_RandomInt, 0 );
	Scr_AddFunction("randomfloat", Scr_RandomFloat, 0 );
	Scr_AddFunction("randomintrange", Scr_RandomIntRange, 0 );
	Scr_AddFunction("randomfloatrange", Scr_RandomFloatRange, 0 );
	Scr_AddFunction("sin", GScr_sin, 0 );
	Scr_AddFunction("cos", GScr_cos, 0 );
	Scr_AddFunction("tan", GScr_tan, 0 );
	Scr_AddFunction("asin", GScr_asin, 0 );
	Scr_AddFunction("acos", GScr_acos, 0 );
	Scr_AddFunction("atan", GScr_atan, 0 );
	Scr_AddFunction("int", GScr_CastInt, 0 );
	Scr_AddFunction("abs", GScr_abs, 0 );
	Scr_AddFunction("min", GScr_min, 0 );
	Scr_AddFunction("max", GScr_max, 0 );
	Scr_AddFunction("floor", GScr_floor, 0 );
	Scr_AddFunction("ceil", GScr_ceil, 0 );
	Scr_AddFunction("sqrt", GScr_sqrt, 0 );
	Scr_AddFunction("vectorfromlinetopoint", GScr_VectorFromLineToPoint, 0 );
	Scr_AddFunction("pointonsegmentnearesttopoint", GScr_PointOnSegmentNearestToPoint, 0 );
	Scr_AddFunction("isweapondetonationtimed",GScr_IsWeaponDetonationTimed, 0);
	Scr_AddFunction("distance", Scr_Distance, 0 );
	Scr_AddFunction("distance2d", Scr_Distance2D, 0 );
	Scr_AddFunction("distancesquared", Scr_DistanceSquared, 0 );
	Scr_AddFunction("length", Scr_Length, 0 );
	Scr_AddFunction("lengthsquared", Scr_LengthSquared, 0 );
	Scr_AddFunction("closer", Scr_Closer, 0 );
	Scr_AddFunction("vectordot", Scr_VectorDot, 0 );
	Scr_AddFunction("vectornormalize", Scr_VectorNormalize, 0 );
	Scr_AddFunction("vectortoangles", Scr_VectorToAngles, 0 );
	Scr_AddFunction("vectorlerp", Scr_VectorLerp, 0 );
	Scr_AddFunction("anglestoup", Scr_AnglesToUp, 0 );
	Scr_AddFunction("anglestoright", Scr_AnglesToRight, 0 );
	Scr_AddFunction("anglestoforward", Scr_AnglesToForward, 0 );
	Scr_AddFunction("combineangles", Scr_CombineAngles, 0 );
	Scr_AddFunction("issubstr", Scr_IsSubStr, 0 );
	Scr_AddFunction("getsubstr", Scr_GetSubStr, 0 );
	Scr_AddFunction("tolower", Scr_ToLower, 0 );
	Scr_AddFunction("strtok", Scr_StrTok, 0 );
	Scr_AddFunction("musicplay", Scr_MusicPlay, 0 );
	Scr_AddFunction("musicstop", Scr_MusicStop, 0 );
	Scr_AddFunction("soundfade", Scr_SoundFade, 0 );
	Scr_AddFunction("ambientplay", Scr_AmbientPlay, 0 );
	Scr_AddFunction("ambientstop", Scr_AmbientStop, 0 );
	Scr_AddFunction("precachemodel", Scr_PrecacheModel, 0 );
	Scr_AddFunction("precacheshellshock", Scr_PrecacheShellShock, 0 );
	Scr_AddFunction("precacheitem", Scr_PrecacheItem, 0 );
	Scr_AddFunction("precacheshader", Scr_PrecacheShader, 0 );
	//Scr_AddFunction("precachestring", Scr_PrecacheString, 0 );
	Scr_AddFunction("precacherumble", Scr_PrecacheRumble, 0 );
	Scr_AddFunction("loadfx", Scr_LoadFX, 0 );
	Scr_AddFunction("playfx", Scr_PlayFX, 0 );
	Scr_AddFunction("playfxontag", Scr_PlayFXOnTag, 0 );
	Scr_AddFunction("playloopedfx", Scr_PlayLoopedFX, 0 );
	Scr_AddFunction("spawnfx", Scr_SpawnFX, 0 );
	Scr_AddFunction("triggerfx", Scr_TriggerFX, 0 );
	Scr_AddFunction("physicsexplosionsphere", Scr_PhysicsExplosionSphere, 0 );
	Scr_AddFunction("physicsexplosioncylinder", Scr_PhysicsExplosionCylinder, 0 );
	Scr_AddFunction("physicsjolt", Scr_PhysicsRadiusJolt, 0 );
	Scr_AddFunction("physicsjitter", Scr_PhysicsRadiusJitter, 0 );
	Scr_AddFunction("setexpfog", Scr_SetExponentialFog, 0 );
	Scr_AddFunction("grenadeexplosioneffect", Scr_GrenadeExplosionEffect, 0 );
	Scr_AddFunction("radiusdamage", GScr_RadiusDamage, 0 );
	Scr_AddFunction("setplayerignoreradiusdamage", GScr_SetPlayerIgnoreRadiusDamage, 0 );
	Scr_AddFunction("getnumparts", GScr_GetNumParts, 0 );
	Scr_AddFunction("getpartname", GScr_GetPartName, 0 );
	Scr_AddFunction("earthquake", GScr_Earthquake, 0 );
	Scr_AddFunction("newteamhudelem", GScr_NewTeamHudElem, 0 );
	Scr_AddFunction("resettimeout", Scr_ResetTimeout, 0 );
	Scr_AddFunction("weaponfiretime", GScr_WeaponFireTime, 0 );
	Scr_AddFunction("isweaponcliponly", GScr_IsWeaponClipOnly, 0 );
	Scr_AddFunction("weaponclipsize", GScr_WeaponClipSize, 0 );
	Scr_AddFunction("weaponissemiauto", GScr_WeaponIsSemiAuto, 0 );
	Scr_AddFunction("weaponisboltaction", GScr_WeaponIsBoltAction, 0 );
	Scr_AddFunction("weapontype", GScr_WeaponType, 0 );
	Scr_AddFunction("weaponclass", GScr_WeaponClass, 0 );
	Scr_AddFunction("weaponinventorytype", GScr_WeaponInventoryType, 0 );
	Scr_AddFunction("weaponstartammo", GScr_WeaponStartAmmo, 0 );
	Scr_AddFunction("weaponmaxammo", GScr_WeaponMaxAmmo, 0 );
	Scr_AddFunction("weaponaltweaponname", GScr_WeaponAltWeaponName, 0 );
	Scr_AddFunction("isplayer", GScr_IsPlayer, 0 );
	Scr_AddFunction("isplayernumber", GScr_IsPlayerNumber, 0 );
	Scr_AddFunction("setwinningplayer", GScr_SetWinningPlayer, 0 );
	Scr_AddFunction("setwinningteam", GScr_SetWinningTeam, 0 );
	Scr_AddFunction("announcement", GScr_Announcement, 0 );
	Scr_AddFunction("clientannouncement", GScr_ClientAnnouncement, 0 );
	Scr_AddFunction("getteamscore", GScr_GetTeamScore, 0 );
	Scr_AddFunction("setteamscore", GScr_SetTeamScore, 0 );
	Scr_AddFunction("setclientnamemode", GScr_SetClientNameMode, 0 );
	Scr_AddFunction("updateclientnames", GScr_UpdateClientNames, 0 );
	Scr_AddFunction("getteamplayersalive", GScr_GetTeamPlayersAlive, 0 );
	Scr_AddFunction("objective_team", GScr_Objective_Team, 0 );
	Scr_AddFunction("logprint", GScr_LogPrint, 0 );
	Scr_AddFunction("worldentnumber", GScr_WorldEntNumber, 0 );
	Scr_AddFunction("obituary", GScr_Obituary, 0 );
	Scr_AddFunction("positionwouldtelefrag", GScr_positionWouldTelefrag, 0 );
	Scr_AddFunction("getstarttime", GScr_getStartTime, 0 );
	Scr_AddFunction("precachemenu", GScr_PrecacheMenu, 0 );
	Scr_AddFunction("precachestatusicon", GScr_PrecacheStatusIcon, 0 );
	Scr_AddFunction("precacheheadicon", GScr_PrecacheHeadIcon, 0 );
	Scr_AddFunction("precachelocationselector", GScr_PrecacheLocationSelector, 0 );
	Scr_AddFunction("map_restart", GScr_MapRestart, 0 );
	Scr_AddFunction("exitlevel", GScr_ExitLevel, 0 );
	Scr_AddFunction("setarchive", GScr_SetArchive, 0 );
	Scr_AddFunction("allclientsprint", GScr_AllClientsPrint, 0 );
	Scr_AddFunction("clientprint", GScr_ClientPrint, 0 );
	Scr_AddFunction("mapexists", GScr_MapExists, 0 );
	Scr_AddFunction("isvalidgametype", GScr_IsValidGameType, 0 );
	Scr_AddFunction("matchend", GScr_MatchEnd, 0 );
	Scr_AddFunction("setplayerteamrank", GScr_SetPlayerTeamRank, 0 );
	Scr_AddFunction("sendranks", GScr_SendXboxLiveRanks, 0 );
	Scr_AddFunction("endparty", GScr_EndXboxLiveLobby, 0 );
	Scr_AddFunction("setteamradar", GScr_SetTeamRadar, 0 );
	Scr_AddFunction("getteamradar", GScr_GetTeamRadar, 0 );
	Scr_AddFunction("getassignedteam", GScr_GetAssignedTeam, 0 );
	Scr_AddFunction("setvotestring", GScr_SetVoteString, 0 );
	Scr_AddFunction("setvotetime", GScr_SetVoteTime, 0 );
	Scr_AddFunction("setvoteyescount", GScr_SetVoteYesCount, 0 );
	Scr_AddFunction("setvotenocount", GScr_SetVoteNoCount, 0 );
	Scr_AddFunction("fprintfields", GScr_FPrintFields, 1 );
	Scr_AddFunction("fgetarg", GScr_FGetArg, 1 );
	//Scr_AddFunction("kick", GScr_KickPlayer, 0 );
	//Scr_AddFunction("ban", GScr_BanPlayer, 0 );
	Scr_AddFunction("map", GScr_LoadMap, 0 );
	Scr_AddFunction("playrumbleonposition", Scr_PlayRumbleOnPosition, 0 );
	Scr_AddFunction("playrumblelooponposition", Scr_PlayRumbleLoopOnPosition, 0 );
	Scr_AddFunction("stopallrumbles", Scr_StopAllRumbles, 0 );
	Scr_AddFunction("soundexists", ScrCmd_SoundExists, 0 );
	Scr_AddFunction("issplitscreen", Scr_IsSplitscreen, 0 );
	Scr_AddFunction("setminimap", GScr_SetMiniMap, 0 );
	Scr_AddFunction("setmapcenter", GScr_SetMapCenter, 0 );
	Scr_AddFunction("setgameendtime", GScr_SetGameEndTime, 0 );
	Scr_AddFunction("getarraykeys", GScr_GetArrayKeys, 0 );
	Scr_AddFunction("searchforonlinegames", GScr_SearchForOnlineGames, 0 );
	Scr_AddFunction("quitlobby", GScr_QuitLobby, 0 );
	Scr_AddFunction("quitparty", GScr_QuitParty, 0 );
	Scr_AddFunction("startparty", GScr_StartParty, 0 );
	Scr_AddFunction("startprivatematch", GScr_StartPrivateMatch, 0 );
	Scr_AddFunction("visionsetnaked", Scr_VisionSetNaked, 0 );
	Scr_AddFunction("visionsetnight", Scr_VisionSetNight, 0 );
	Scr_AddFunction("tablelookup", Scr_TableLookup, 0 );
	Scr_AddFunction("tablelookupistring", Scr_TableLookupIString, 0 );
	Scr_AddFunction("endlobby", GScr_EndLobby, 0 );
	Scr_AddFunction("logstring", Scr_LogString, 0);

    //User edited functions
    Scr_AddFunction("spawn", GScr_Spawn, 0);
    //	Scr_AddFunction("spawnvehicle", GScr_SpawnVehicle, 0);
    Scr_AddFunction("spawnhelicopter", GScr_SpawnHelicopter, 0);
    Scr_AddFunction("getdvar", GScr_GetCvar, 0);
    Scr_AddFunction("getdvarint", GScr_GetCvarInt, 0);
    Scr_AddFunction("getdvarfloat", GScr_GetCvarFloat, 0);
    Scr_AddFunction("setdvar", GScr_SetCvar, 0);
    Scr_AddFunction("vectoradd", GScr_VectorAdd, 0);
    Scr_AddFunction("precachestring", Scr_PrecacheString_f, 0);
    Scr_AddFunction("newhudelem", GScr_NewHudElem, 0);
    Scr_AddFunction("newclienthudelem", GScr_NewClientHudElem, 0);
    Scr_AddFunction("addtestclient", GScr_SpawnBot, 0);
    Scr_AddFunction("removetestclient", GScr_RemoveBot, 0);
    Scr_AddFunction("removealltestclients", GScr_RemoveAllBots, 0);
    Scr_AddFunction("makedvarserverinfo", GScr_MakeCvarServerInfo, 0);
    Scr_AddFunction("openfile", GScr_FS_FOpen, 0);
    Scr_AddFunction("closefile", GScr_FS_FClose, 0);
    Scr_AddFunction("fprintln", GScr_FS_WriteLine, 0);
    Scr_AddFunction("freadln", GScr_FS_ReadLine, 0);
    Scr_AddFunction("kick", GScr_KickClient, 0);
    Scr_AddFunction("ban", GScr_BanClient, 0);
    Scr_AddFunction("fs_fopen", GScr_FS_FOpen, 0);
    Scr_AddFunction("fs_fclose", GScr_FS_FClose, 0);
    Scr_AddFunction("fs_fcloseall", GScr_FS_FCloseAll, 0);
    Scr_AddFunction("fs_testfile", GScr_FS_TestFile, 0);
    Scr_AddFunction("fs_readline", GScr_FS_ReadLine, 0);
    Scr_AddFunction("fs_writeline", GScr_FS_WriteLine, 0);
    Scr_AddFunction("fs_remove", GScr_FS_Remove, 0);
    Scr_AddFunction("getrealtime", GScr_GetRealTime, 0);
    Scr_AddFunction("timetostring", GScr_TimeToString, 0);
    Scr_AddFunction("strtokbypixlen", GScr_StrTokByPixLen, 0);
    Scr_AddFunction("strpixlen", GScr_StrPixLen, 0);
    Scr_AddFunction("strcolorstrip", GScr_StrColorStrip, 0);
    Scr_AddFunction("strrepl", GScr_StrRepl, 0);
    Scr_AddFunction("strtokbylen", GScr_StrTokByLen, 0);
    Scr_AddFunction("exec", GScr_CbufAddText, 0);
    Scr_AddFunction("execex", GScr_CbufAddTextEx, 0);
    Scr_AddFunction("sha256", GScr_SHA256, 0);
    Scr_AddFunction("addscriptcommand", GScr_AddScriptCommand, 0);
    Scr_AddFunction("isarray", Scr_IsArray_f, qfalse); // http://zeroy.com/script/variables/isarray.htm
    Scr_AddFunction("iscvardefined", GScr_IsCvarDefined, 0);
    Scr_AddFunction("arraytest", GScr_ArrayTest, 1);

    Scr_AddFunction("base64encode", GScr_Base64Encode, 0);
    Scr_AddFunction("base64decode", GScr_Base64Decode, 0);
    Scr_AddFunction("isentity", GScr_IsEntity, 0);
    Scr_AddFunction("isvector", GScr_IsVector, 0);
    Scr_AddFunction("isfloat", GScr_IsFloat, 0);
    Scr_AddFunction("isint", GScr_IsInt, 0);
    Scr_AddFunction("pow", GScr_Pow, 0);
	Scr_AddFunction("strctrlstrip", GScr_StrCtrlStrip, 0 );
	Scr_AddFunction("toupper", GScr_ToUpper, 0 );
	Scr_AddFunction("strreplace", GScr_StrReplace, 0 );
    Scr_AddFunction("usercall", Scr_Usercall, 0);
}

void Scr_AddStockMethods()
{


    //PlayerCmd

    Scr_AddMethod("usercall", PlayerCmd_Usercall, 0);
	Scr_AddMethod("giveweapon", PlayerCmd_giveWeapon, 0 );
	Scr_AddMethod("takeweapon", PlayerCmd_takeWeapon, 0 );
	Scr_AddMethod("takeallweapons", PlayerCmd_takeAllWeapons, 0 );
	Scr_AddMethod("getcurrentweapon", PlayerCmd_getCurrentWeapon, 0 );
	Scr_AddMethod("getcurrentoffhand", PlayerCmd_getCurrentOffhand, 0 );
	Scr_AddMethod("hasweapon", PlayerCmd_hasWeapon, 0 );
	Scr_AddMethod("switchtoweapon", PlayerCmd_switchToWeapon, 0 );
	Scr_AddMethod("switchtooffhand", PlayerCmd_switchToOffhand, 0 );
	Scr_AddMethod("givestartammo", PlayerCmd_giveStartAmmo, 0 );
	Scr_AddMethod("givemaxammo", PlayerCmd_giveMaxAmmo, 0 );
	Scr_AddMethod("getfractionstartammo", PlayerCmd_getFractionStartAmmo, 0 );
	Scr_AddMethod("getfractionmaxammo", PlayerCmd_getFractionMaxAmmo, 0 );
	Scr_AddMethod("setorigin", PlayerCmd_setOrigin, 0 );
	Scr_AddMethod("getvelocity", PlayerCmd_GetVelocity, 0 );
	Scr_AddMethod("setplayerangles", PlayerCmd_setAngles, 0 );
	Scr_AddMethod("getplayerangles", PlayerCmd_getAngles, 0 );
	Scr_AddMethod("usebuttonpressed", PlayerCmd_useButtonPressed, 0 );
	Scr_AddMethod("attackbuttonpressed", PlayerCmd_attackButtonPressed, 0 );
	Scr_AddMethod("meleebuttonpressed", PlayerCmd_meleeButtonPressed, 0 );
	Scr_AddMethod("fragbuttonpressed", PlayerCmd_fragButtonPressed, 0 );
	Scr_AddMethod("secondaryoffhandbuttonpressed", PlayerCmd_secondaryOffhandButtonPressed, 0 );
	Scr_AddMethod("playerads", PlayerCmd_playerADS, 0 );
	Scr_AddMethod("isonground", PlayerCmd_isOnGround, 0 );
	Scr_AddMethod("pingplayer", PlayerCmd_pingPlayer, 0 );
	Scr_AddMethod("setviewmodel", PlayerCmd_SetViewmodel, 0 );
	Scr_AddMethod("getviewmodel", PlayerCmd_GetViewmodel, 0 );
	Scr_AddMethod("setoffhandsecondaryclass", PlayerCmd_setOffhandSecondaryClass, 0 );
	Scr_AddMethod("getoffhandsecondaryclass", PlayerCmd_getOffhandSecondaryClass, 0 );
	Scr_AddMethod("beginlocationselection", PlayerCmd_BeginLocationSelection, 0 );
	Scr_AddMethod("endlocationselection", PlayerCmd_EndLocationSelection, 0 );
	Scr_AddMethod("buttonpressed", PlayerCmd_buttonPressedDEVONLY, 0 );
	Scr_AddMethod("sayall", PlayerCmd_SayAll, 0 );
	Scr_AddMethod("sayteam", PlayerCmd_SayTeam, 0 );
	Scr_AddMethod("showscoreboard", PlayerCmd_showScoreboard, 0 );
	Scr_AddMethod("setspawnweapon", PlayerCmd_setSpawnWeapon, 0 );
	Scr_AddMethod("dropitem", PlayerCmd_dropItem, 0 );
	Scr_AddMethod("finishplayerdamage", PlayerCmd_finishPlayerDamage, 0 );
	Scr_AddMethod("suicide", PlayerCmd_Suicide, 0 );
	Scr_AddMethod("openmenu", PlayerCmd_OpenMenu, 0 );
	Scr_AddMethod("openmenunomouse", PlayerCmd_OpenMenuNoMouse, 0 );
	Scr_AddMethod("closemenu", PlayerCmd_CloseMenu, 0 );
	Scr_AddMethod("closeingamemenu", PlayerCmd_CloseInGameMenu, 0 );
	Scr_AddMethod("freezecontrols", PlayerCmd_FreezeControls, 0 );
	Scr_AddMethod("disableweapons", PlayerCmd_DisableWeapons, 0 );
	Scr_AddMethod("enableweapons", PlayerCmd_EnableWeapons, 0 );
	Scr_AddMethod("setreverb", PlayerCmd_SetReverb, 0 );
	Scr_AddMethod("deactivatereverb", PlayerCmd_DeactivateReverb, 0 );
	Scr_AddMethod("setchannelvolumes", PlayerCmd_SetChannelVolumes, 0 );
	Scr_AddMethod("deactivatechannelvolumes", PlayerCmd_DeactivateChannelVolumes, 0 );
	Scr_AddMethod("setweaponammoclip", PlayerCmd_SetWeaponAmmoClip, 0 );
	Scr_AddMethod("setweaponammostock", PlayerCmd_SetWeaponAmmoStock, 0 );
	Scr_AddMethod("getweaponammoclip", PlayerCmd_GetWeaponAmmoClip, 0 );
	Scr_AddMethod("getweaponammostock", PlayerCmd_GetWeaponAmmoStock, 0 );
	Scr_AddMethod("anyammoforweaponmodes", PlayerCmd_AnyAmmoForWeaponModes, 0 );
	Scr_AddMethod("iprintln", iclientprintln, 0 );
	Scr_AddMethod("iprintlnbold", iclientprintlnbold, 0 );
	Scr_AddMethod("setentertime", PlayerCmd_setEnterTime, 0 );
	Scr_AddMethod("cloneplayer", PlayerCmd_ClonePlayer, 0 );
	Scr_AddMethod("setclientdvar", PlayerCmd_SetClientDvar, 0 );
	Scr_AddMethod("setclientdvars", PlayerCmd_SetClientDvars, 0 );
	Scr_AddMethod("playlocalsound", ScrCmd_PlayLocalSound, 0 );
	Scr_AddMethod("stoplocalsound", ScrCmd_StopLocalSound, 0 );
	Scr_AddMethod("istalking", PlayerCmd_IsTalking, 0 );
	Scr_AddMethod("allowspectateteam", PlayerCmd_AllowSpectateTeam, 0 );
	Scr_AddMethod("allowads", PlayerCmd_AllowADS, 0 );
	Scr_AddMethod("allowjump", PlayerCmd_AllowJump, 0 );
	Scr_AddMethod("allowsprint", PlayerCmd_AllowSprint, 0 );
	Scr_AddMethod("setspreadoverride", PlayerCmd_SetSpreadOverride, 0 );
	Scr_AddMethod("resetspreadoverride", PlayerCmd_ResetSpreadOverride, 0 );
	Scr_AddMethod("setactionslot", PlayerCmd_SetActionSlot, 0 );
	Scr_AddMethod("getweaponslist", PlayerCmd_GetWeaponsList, 0 );
	Scr_AddMethod("getweaponslistprimaries", PlayerCmd_GetWeaponsListPrimaries, 0 );
	Scr_AddMethod("setperk", PlayerCmd_SetPerk, 0 );
	Scr_AddMethod("hasperk", PlayerCmd_HasPerk, 0 );
	Scr_AddMethod("clearperks", PlayerCmd_ClearPerks, 0 );
	Scr_AddMethod("unsetperk", PlayerCmd_UnsetPerk, 0 );
	Scr_AddMethod("setrank", PlayerCmd_SetRank, 0 );
	Scr_AddMethod("adsbuttonpressed", PlayerCmd_adsButtonPressed, 0);

	Scr_AddMethod("updatedmscores", PlayerCmd_UpdateDMScores, 0 );


    Scr_AddMethod("getpower", PlayerCmd_GetPower, 0);
    Scr_AddMethod("setpower", PlayerCmd_SetPower, 0);
    Scr_AddMethod("setuid", PlayerCmd_SetUid, 0);
    Scr_AddMethod("spawn", PlayerCmd_spawn, 0);
    Scr_AddMethod("getguid", PlayerCmd_GetGuid, 0);
    Scr_AddMethod("getxuid", PlayerCmd_GetXuid, 0);
    Scr_AddMethod("getuid", PlayerCmd_GetUid, 0);
    Scr_AddMethod("getsteamid", PlayerCmd_GetSteamID, 0);
    Scr_AddMethod("getplayerid", PlayerCmd_GetPlayerID, 0);
    Scr_AddMethod("getsteamid64", PlayerCmd_GetSteamID, 0);
    Scr_AddMethod("getplayerid64", PlayerCmd_GetPlayerID, 0);
    Scr_AddMethod("getuserinfo", PlayerCmd_GetUserinfo, 0);
    Scr_AddMethod("getping", PlayerCmd_GetPing, 0);


    //HUD Functions

	Scr_AddMethod("settext", HECmd_SetText, 0 );
	Scr_AddMethod("clearalltextafterhudelem", HECmd_ClearAllTextAfterHudElem, 0 );
	Scr_AddMethod("setshader", HECmd_SetMaterial, 0 );
	Scr_AddMethod("settimer", HECmd_SetTimer, 0 );
	Scr_AddMethod("settimerup", HECmd_SetTimerUp, 0 );
	Scr_AddMethod("settenthstimer", HECmd_SetTenthsTimer, 0 );
	Scr_AddMethod("settenthstimerup", HECmd_SetTenthsTimerUp, 0 );
	Scr_AddMethod("setclock", HECmd_SetClock, 0 );
	Scr_AddMethod("setclockup", HECmd_SetClockUp, 0 );
	Scr_AddMethod("setvalue", HECmd_SetValue, 0 );
	Scr_AddMethod("setwaypoint", HECmd_SetWaypoint, 0 );
	Scr_AddMethod("fadeovertime", HECmd_FadeOverTime, 0 );
	Scr_AddMethod("scaleovertime", HECmd_ScaleOverTime, 0 );
	Scr_AddMethod("moveovertime", HECmd_MoveOverTime, 0 );
	Scr_AddMethod("reset", HECmd_Reset, 0 );
//	Scr_AddMethod("destroy", HECmd_Destroy, 0 );
	Scr_AddMethod("setpulsefx", HECmd_SetPulseFX, 0 );
	Scr_AddMethod("setplayernamestring", HECmd_SetPlayerNameString, 0 );
	Scr_AddMethod("setmapnamestring", HECmd_SetMapNameString, 0 );
	Scr_AddMethod("setgametypestring", HECmd_SetGameTypeString, 0 );
	Scr_AddMethod("cleartargetent", HECmd_ClearTargetEnt, 0);
	Scr_AddMethod("settargetent", HECmd_SetTargetEnt, 0 );
    Scr_AddMethod("destroy", Scr_Destroy_f, 0);


    //Scr Cmd Functions
	Scr_AddMethod("attach", ScrCmd_attach, 0 );
	Scr_AddMethod("detach", ScrCmd_detach, 0 );
	Scr_AddMethod("detachall", ScrCmd_detachAll, 0 );
	Scr_AddMethod("getattachsize", ScrCmd_GetAttachSize, 0 );
	Scr_AddMethod("getattachmodelname", ScrCmd_GetAttachModelName, 0 );
	Scr_AddMethod("getattachtagname", ScrCmd_GetAttachTagName, 0 );
	Scr_AddMethod("getattachignorecollision", ScrCmd_GetAttachIgnoreCollision, 0 );
	Scr_AddMethod("getammocount", GScr_GetAmmoCount, 0 );
	Scr_AddMethod("getclanid", ScrCmd_GetClanId, 0 );
	Scr_AddMethod("getclanname", ScrCmd_GetClanName, 0 );
	Scr_AddMethod("hidepart", ScrCmd_hidepart, 0 );
	Scr_AddMethod("showpart", ScrCmd_showpart, 0 );
	Scr_AddMethod("showallparts", ScrCmd_showallparts, 0 );
	Scr_AddMethod("linkto", ScrCmd_LinkTo, 0 );
	Scr_AddMethod("unlink", ScrCmd_Unlink, 0 );
	Scr_AddMethod("enablelinkto", ScrCmd_EnableLinkTo, 0 );
	Scr_AddMethod("getorigin", ScrCmd_GetOrigin, 0 );
	Scr_AddMethod("geteye", ScrCmd_GetEye, 0 );
	Scr_AddMethod("useby", ScrCmd_UseBy, 0 );
	Scr_AddMethod("setstablemissile", Scr_SetStableMissile, 0 );
	Scr_AddMethod("istouching", ScrCmd_IsTouching, 0 );
	Scr_AddMethod("playsound", ScrCmd_PlaySound, 0 );
	Scr_AddMethod("playsoundasmaster", ScrCmd_PlaySoundAsMaster, 0 );
	Scr_AddMethod("playsoundtoteam", ScrCmd_PlaySoundToTeam, 0 );
	Scr_AddMethod("playsoundtoplayer", ScrCmd_PlaySoundToPlayer, 0 );
	Scr_AddMethod("playloopsound", ScrCmd_PlayLoopSound, 0 );
	Scr_AddMethod("stoploopsound", ScrCmd_StopLoopSound, 0 );
	Scr_AddMethod("playrumbleonentity", ScrCmd_PlayRumbleOnEntity, 0 );
	Scr_AddMethod("playrumblelooponentity", ScrCmd_PlayRumbleLoopOnEntity, 0 );
	Scr_AddMethod("stoprumble", ScrCmd_StopRumble, 0 );
	Scr_AddMethod("delete", ScrCmd_Delete, 0 );
	Scr_AddMethod("setmodel", ScrCmd_SetModel, 0 );
	Scr_AddMethod("getnormalhealth", ScrCmd_GetNormalHealth, 0 );
	Scr_AddMethod("setnormalhealth", ScrCmd_SetNormalHealth, 0 );
	Scr_AddMethod("show", ScrCmd_Show, 0 );
	Scr_AddMethod("hide", ScrCmd_Hide, 0 );
	Scr_AddMethod("laseron", ScrCmd_LaserOn, 0 );
	Scr_AddMethod("laseroff", ScrCmd_LaserOff, 0 );
	Scr_AddMethod("showtoplayer", ScrCmd_ShowToPlayer, 0 );
	Scr_AddMethod("setcontents", ScrCmd_SetContents, 0 );
	Scr_AddMethod("getstance", ScrCmd_GetStance, 0 );
	Scr_AddMethod("setcursorhint", GScr_SetCursorHint, 0 );
	Scr_AddMethod("sethintstring", GScr_SetHintString, 0 );
	Scr_AddMethod("usetriggerrequirelookat", GScr_UseTriggerRequireLookAt, 0 );
	Scr_AddMethod("shellshock", GScr_ShellShock, 0 );
	Scr_AddMethod("gettagorigin", GScr_GetTagOrigin, 0 );
	Scr_AddMethod("gettagangles", GScr_GetTagAngles, 0 );
	Scr_AddMethod("stopshellshock", GScr_StopShellShock, 0 );
	Scr_AddMethod("setdepthoffield", GScr_SetDepthOfField, 0 );
	Scr_AddMethod("viewkick", GScr_ViewKick, 0 );
	Scr_AddMethod("localtoworldcoords", GScr_LocalToWorldCoords, 0 );
	Scr_AddMethod("setrightarc", GScr_SetRightArc, 0 );
	Scr_AddMethod("setleftarc", GScr_SetLeftArc, 0 );
	Scr_AddMethod("settoparc", GScr_SetTopArc, 0 );
	Scr_AddMethod("setbottomarc", GScr_SetBottomArc, 0 );
	Scr_AddMethod("radiusdamage", GScr_EntityRadiusDamage, 0 );
	Scr_AddMethod("detonate", GScr_Detonate, 0 );
	Scr_AddMethod("damageconetrace", GScr_DamageConeTrace, 0 );
	Scr_AddMethod("sightconetrace", GScr_SightConeTrace, 0 );
	Scr_AddMethod("getentitynumber", GScr_GetEntityNumber, 0 );
	Scr_AddMethod("enablegrenadetouchdamage", GScr_EnableGrenadeTouchDamage, 0 );
	Scr_AddMethod("disablegrenadetouchdamage", GScr_DisableGrenadeTouchDamage, 0 );
	Scr_AddMethod("enableaimassist", GScr_EnableAimAssist, 0 );
	Scr_AddMethod("disableaimassist", GScr_DisableAimAssist, 0 );
	Scr_AddMethod("placespawnpoint", GScr_PlaceSpawnPoint, 0 );
	Scr_AddMethod("updatescores", PlayerCmd_UpdateScores, 0 );
	Scr_AddMethod("setteamfortrigger", GScr_SetTeamForTrigger, 0 );
	Scr_AddMethod("clientclaimtrigger", GScr_ClientClaimTrigger, 0 );
	Scr_AddMethod("clientreleasetrigger", GScr_ClientReleaseTrigger, 0 );
	Scr_AddMethod("releaseclaimedtrigger", GScr_ReleaseClaimedTrigger, 0 );
	Scr_AddMethod("sendleaderboards", GScr_SendLeaderboards, 0 );
	Scr_AddMethod("setmovespeedscale", ScrCmd_SetMoveSpeedScale, 0 );
	Scr_AddMethod("missile_settarget", GScr_MissileSetTarget, 0 );
	Scr_AddMethod("startragdoll", GScr_StartRagdoll, 0 );
	Scr_AddMethod("isragdoll", GScr_IsRagdoll, 0 );
	Scr_AddMethod("getcorpseanim", GScr_GetCorpseAnim, 0 );
	Scr_AddMethod("itemweaponsetammo", ScrCmd_ItemWeaponSetAmmo, 0 );
	Scr_AddMethod("logstring", ScrCmd_LogString, 0 );
	Scr_AddMethod("isonladder", GScr_IsOnLadder, 0 );
	Scr_AddMethod("ismantling", GScr_IsMantling, 0 );



    //	Scr_AddMethod("setstance", ScrCmd_SetStance, 0);
    Scr_AddMethod("setjumpheight", PlayerCmd_SetJumpHeight, 0);
    Scr_AddMethod("setgravity", PlayerCmd_SetGravity, 0);
    Scr_AddMethod("setgroundreferenceent", PlayerCmd_SetGroundReferenceEnt, 0);
    Scr_AddMethod("setmovespeed", PlayerCmd_SetMoveSpeed, 0);


    Scr_AddMethod("getstat", PlayerCmd_GetStat, 0);
    Scr_AddMethod("setstat", PlayerCmd_SetStat, 0);


    //Scr Ent Functions
	Scr_AddMethod("moveto", ScriptEntCmd_MoveTo, 0 );
	Scr_AddMethod("movex", ScriptEntCmd_MoveX, 0 );
	Scr_AddMethod("movey", ScriptEntCmd_MoveY, 0 );
	Scr_AddMethod("movez", ScriptEntCmd_MoveZ, 0 );
	Scr_AddMethod("movegravity", ScriptEntCmd_GravityMove, 0 );
	Scr_AddMethod("rotateto", ScriptEntCmd_RotateTo, 0 );
	Scr_AddMethod("rotatepitch", ScriptEntCmd_RotatePitch, 0 );
	Scr_AddMethod("rotateyaw", ScriptEntCmd_RotateYaw, 0 );
	Scr_AddMethod("rotateroll", ScriptEntCmd_RotateRoll, 0 );
	Scr_AddMethod("devaddpitch", ScriptEntCmd_DevAddPitch, 1 );
	Scr_AddMethod("devaddyaw", ScriptEntCmd_DevAddYaw, 1 );
	Scr_AddMethod("devaddroll", ScriptEntCmd_DevAddRoll, 1 );
	Scr_AddMethod("vibrate", ScriptEntCmd_Vibrate, 0 );
	Scr_AddMethod("rotatevelocity", ScriptEntCmd_RotateVelocity, 0 );
	Scr_AddMethod("solid", ScriptEntCmd_Solid, 0 );
	Scr_AddMethod("notsolid", ScriptEntCmd_NotSolid, 0 );
	Scr_AddMethod("setcandamage", ScriptEntCmd_SetCanDamage, 0 );
	Scr_AddMethod("physicslaunch", ScriptEntCmd_PhysicsLaunch, 0 );


    //Helicopter Functions
	Scr_AddMethod("freehelicopter", CMD_Heli_FreeHelicopter, 0 );
	Scr_AddMethod("setspeed", CMD_VEH_SetSpeed, 0 );
	Scr_AddMethod("getspeed", CMD_VEH_GetSpeed, 0 );
	Scr_AddMethod("getspeedmph", CMD_VEH_GetSpeedMPH, 0 );
	Scr_AddMethod("resumespeed", CMD_VEH_ResumeSpeed, 0 );
	Scr_AddMethod("setyawspeed", CMD_VEH_SetYawSpeed, 0 );
	Scr_AddMethod("setmaxpitchroll", CMD_VEH_SetMaxPitchRoll, 0 );
	Scr_AddMethod("setturningability", CMD_VEH_SetTurningAbility, 0 );
	Scr_AddMethod("setairresistance", CMD_VEH_SetAirResitance, 0 );
	Scr_AddMethod("sethoverparams", CMD_VEH_SetHoverParams, 0 );
	Scr_AddMethod("setneargoalnotifydist", CMD_VEH_NearGoalNotifyDist, 0 );
	Scr_AddMethod("setvehgoalpos", CMD_VEH_SetGoalPos, 0 );
	Scr_AddMethod("setgoalyaw", CMD_VEH_SetGoalYaw, 0 );
	Scr_AddMethod("cleargoalyaw", CMD_VEH_ClearGoalYaw, 0 );
	Scr_AddMethod("settargetyaw", CMD_VEH_SetTargetYaw, 0 );
	Scr_AddMethod("cleartargetyaw", CMD_VEH_ClearTargetYaw, 0 );
	Scr_AddMethod("setlookatent", CMD_VEH_SetLookAtEnt, 0 );
	Scr_AddMethod("clearlookatent", CMD_VEH_ClearLookAtEnt, 0 );
	Scr_AddMethod("setvehweapon", CMD_VEH_SetWeapon, 0 );
	Scr_AddMethod("fireweapon", CMD_VEH_FireWeapon, 0 );
	Scr_AddMethod("setturrettargetvec", CMD_VEH_SetTurretTargetVec, 0 );
	Scr_AddMethod("setturrettargetent", CMD_VEH_SetTurretTargetEnt, 0 );
	Scr_AddMethod("clearturrettarget", CMD_VEH_ClearTurretTargetEnt, 0 );
	Scr_AddMethod("setvehicleteam", CMD_VEH_SetVehicleTeam, 0 );
	Scr_AddMethod("setdamagestage", CMD_Heli_SetDamageStage, 0 );

    // Player movement detection.
    Scr_AddMethod("forwardbuttonpressed", PlayerCmd_ForwardButtonPressed, 0);
    Scr_AddMethod("backbuttonpressed", PlayerCmd_BackButtonPressed, 0);
    Scr_AddMethod("moveleftbuttonpressed", PlayerCmd_MoveLeftButtonPressed, 0);
    Scr_AddMethod("moverightbuttonpressed", PlayerCmd_MoveRightButtonPressed, 0);
    Scr_AddMethod("sprintbuttonpressed", PlayerCmd_SprintButtonPressed, 0);
    Scr_AddMethod("reloadbuttonpressed", PlayerCmd_ReloadButtonPressed, 0);
    Scr_AddMethod("leanleftbuttonpressed", PlayerCmd_LeanLeftButtonPressed, 0);
    Scr_AddMethod("leanrightbuttonpressed", PlayerCmd_LeanRightButtonPressed, 0);
    Scr_AddMethod("isproning", PlayerCmd_IsProning, 0);
    Scr_AddMethod("iscrouching", PlayerCmd_IsCrouching, 0);
    Scr_AddMethod("isstanding", PlayerCmd_IsStanding, 0);
    Scr_AddMethod("jumpbuttonpressed", PlayerCmd_JumpButtonPressed, 0);
    Scr_AddMethod("isinads", PlayerCmd_IsInADS, 0);
    Scr_AddMethod("holdbreathbuttonpressed", PlayerCmd_HoldBreathButtonPressed, 0);
    Scr_AddMethod("aimbuttonpressed", PlayerCmd_AimButtonPressed, 0);

    Scr_AddMethod("steamgroupmembershipquery", PlayerCmd_GetSteamGroupMembership, 0);
    Scr_AddMethod("setvelocity", PlayerCmd_SetVelocity, qfalse);

    /* Bot movement */
    Scr_AddBotsMovement();

    Scr_AddMethod("getgeolocation", PlayerCmd_GetGeoLocation, 0);
    Scr_AddMethod("getcountedfps", PlayerCmd_GetCountedFPS, 0);
    Scr_AddMethod("getspectatorclient", PlayerCmd_GetSpectatorClient, 0);

    // Clone script_brushmodel settings to script_model.
    Scr_AddMethod("clonebrushmodeltoscriptmodel", GScr_CloneBrushModelToScriptModel, qfalse);
    // Force player stance.
    Scr_AddMethod("setstance", PlayerCmd_SetStance, qfalse);
    Scr_AddMethod("getentityhandlertype", EntityCmd_GetHandlerType, qtrue);
}

void Scr_InitFunctions()
{

    static qboolean initialized = qfalse;

    /*
    No longer

    //Reset everything 1st

    Scr_ClearFunctions();
    Scr_ClearMethods();
*/
    //Then add everything again

    if (!initialized)
    {
        Scr_AddStockFunctions();
        Scr_AddStockMethods();
        initialized = qtrue;
    }
}


int GScr_LoadScriptAndLabel(const char *scriptName, const char *labelName, qboolean mandatory)
{

    int fh;
    //PrecacheEntry load_buffer;

    if (!Scr_LoadScript(scriptName))
    {
        if (mandatory)
        {
            Com_Error(ERR_DROP, "Could not find script '%s'", scriptName);
        }
        else
        {
            Com_DPrintf(CON_CHANNEL_SCRIPT,"Notice: Could not find script '%s' - this part will be disabled\n", scriptName);
        }
        return 0;
    }

    fh = Scr_GetFunctionHandle(scriptName, labelName);

    if (!fh)
    {
        if (mandatory)
        {
            Com_Error(ERR_DROP, "Could not find label '%s' in script '%s'", labelName, scriptName);
        }
        else
        {
            Com_DPrintf(CON_CHANNEL_SCRIPT,"Notice: Could not find label '%s' in script '%s' - this part will be disabled\n", labelName, scriptName);
        }
        return 0;
    }

    return fh;
}

/**************** Mandatory *************************/

struct gameTypeScript_t
{
  char pszScript[64];
  char pszName[64];
  int bTeamBased;
};

struct scr_gametype_data_t
{
  int main;
  int startupgametype;
  int playerconnect;
  int playerdisconnect;
  int playerdamage;
  int playerkilled;
  int votecalled;
  int playervote;
  int playerlaststand;
  int iNumGameTypes;
  struct gameTypeScript_t list[32];
};

#pragma pack(push, 4)
struct corpseInfo_t
{
  struct XAnimTree_s *tree;
  int entnum;
  int time;
  struct clientInfo_t ci;
  byte falling;
  byte pad[3];
};
#pragma pack(pop)

struct scr_data_t
{
  int levelscript;
  int gametypescript;
  struct scr_gametype_data_t gametype;
  int delete;
  int initstructs;
  int createstruct;
  struct corpseInfo_t playerCorpseInfo[8];
};

extern struct scr_data_t g_scr_data;


int script_CallBacks_new[8];

void GScr_LoadGameTypeScript(void)
{

    /**************** Mandatory *************************/
    char gametype_path[64];

    Cvar_RegisterString("g_gametype", "dm", CVAR_LATCH | CVAR_SERVERINFO, "Current game type");

    Com_sprintf(gametype_path, sizeof(gametype_path), "maps/mp/gametypes/%s", sv_g_gametype->string);

    /* Don't raise a fatal error when we couldn't find this gametype script */
    g_scr_data.gametype.main = GScr_LoadScriptAndLabel(gametype_path, "main", 0);
    if (g_scr_data.gametype.main == 0)
    {
        Com_PrintError(CON_CHANNEL_SCRIPT,"Could not find script: %s\n", gametype_path);
        Com_Printf(CON_CHANNEL_SCRIPT,"The gametype %s is not available! Will load gametype dm\n", sv_g_gametype->string);

        Cvar_SetString(sv_g_gametype, "dm");
        Com_sprintf(gametype_path, sizeof(gametype_path), "maps/mp/gametypes/%s", sv_g_gametype->string);
        /* If we can not find gametype dm a fatal error gets raised */
        g_scr_data.gametype.main = GScr_LoadScriptAndLabel(gametype_path, "main", 1);
    }
    g_scr_data.gametype.startupgametype = GScr_LoadScriptAndLabel("maps/mp/gametypes/_callbacksetup", "CodeCallback_StartGameType", 1);
    g_scr_data.gametype.playerconnect = GScr_LoadScriptAndLabel("maps/mp/gametypes/_callbacksetup", "CodeCallback_PlayerConnect", 1);
    g_scr_data.gametype.playerdisconnect = GScr_LoadScriptAndLabel("maps/mp/gametypes/_callbacksetup", "CodeCallback_PlayerDisconnect", 1);
    g_scr_data.gametype.playerdamage = GScr_LoadScriptAndLabel("maps/mp/gametypes/_callbacksetup", "CodeCallback_PlayerDamage", 1);
    g_scr_data.gametype.playerkilled = GScr_LoadScriptAndLabel("maps/mp/gametypes/_callbacksetup", "CodeCallback_PlayerKilled", 1);
    g_scr_data.gametype.playerlaststand = GScr_LoadScriptAndLabel("maps/mp/gametypes/_callbacksetup", "CodeCallback_PlayerLastStand", 1);

    /**************** Additional *************************/
    script_CallBacks_new[SCR_CB_SCRIPTCOMMAND] = GScr_LoadScriptAndLabel("maps/mp/gametypes/_callbacksetup", "CodeCallback_ScriptCommand", 0);
}


void __cdecl GScr_LoadScripts(void)
{
    char mappath[MAX_QPATH];
    cvar_t *mapname;
    int i;

    Scr_BeginLoadScripts();
    Scr_InitFunctions();

    g_scr_data.delete = GScr_LoadScriptAndLabel("codescripts/delete", "main", 1);
    g_scr_data.initstructs = GScr_LoadScriptAndLabel("codescripts/struct", "initstructs", 1);
    g_scr_data.createstruct = GScr_LoadScriptAndLabel("codescripts/struct", "createstruct", 1);

    GScr_LoadGameTypeScript();

    mapname = Cvar_RegisterString("mapname", "", CVAR_LATCH | CVAR_SYSTEMINFO, "The current map name");

    Com_sprintf(mappath, sizeof(mappath), "maps/mp/%s", mapname->string);

    g_scr_data.levelscript = GScr_LoadScriptAndLabel(mappath, "main", qfalse);

    for (i = 0; i < 4; ++i)
        Scr_SetClassMap(i);

    GScr_AddFieldsForEntity();
//    GScr_AddFieldsForClient(); Already called by GScr_AddFieldsForEntity() and dup call makes assert fail
    GScr_AddFieldsForHudElems();
    GScr_AddFieldsForRadiant();
    Scr_EndLoadScripts();
}

#define MAX_CALLSCRIPTSTACKDEPTH 200

__cdecl unsigned int Scr_LoadScriptInternal(const char *scriptname, PrecacheEntry *precache, int entriesCount)
{

    sval_u result;

    char filepath[MAX_QPATH];
    const char *oldFilename;
    void *scr_buffer_handle;

    const char* oldSourceBuf;
    int oldAnimTreeNames;
    unsigned int handle;
    unsigned int variable;
    unsigned int object;

    int i;
    static unsigned int callScriptStackPtr = 0;
    static char callScriptStackNames[MAX_QPATH * (MAX_CALLSCRIPTSTACKDEPTH + 1)];

    Q_strncpyz(&callScriptStackNames[MAX_QPATH * callScriptStackPtr], scriptname, MAX_QPATH);

    if (callScriptStackPtr >= MAX_CALLSCRIPTSTACKDEPTH)
    {
        Com_Printf(CON_CHANNEL_SCRIPT,"Called too many scripts in chain\nThe scripts are:\n");
        for (i = MAX_CALLSCRIPTSTACKDEPTH; i >= 0; --i)
        {
            Com_Printf(CON_CHANNEL_SCRIPT,"*%d: %s\n", i, &callScriptStackNames[MAX_QPATH * i]);
        }
        Com_Error(ERR_FATAL, "CallscriptStack overflowed");
        return 0;
    }

    ++callScriptStackPtr;

    handle = Scr_CreateCanonicalFilename(scriptname);

    if (FindVariable(gScrCompilePub.loadedscripts, handle))
    {
        --callScriptStackPtr;

        SL_RemoveRefToString(handle);
        variable = FindVariable(gScrCompilePub.scriptsPos, handle);

        if (variable)
        {
            return FindObject(variable);
        }
        return 0;
    }
    else
    {

        variable = GetNewVariable(gScrCompilePub.loadedscripts, handle);

        SL_RemoveRefToString(handle);

        oldSourceBuf = gScrParserPub.sourceBuf;

        /*
        Try to load our extended scriptfile (gsx) first.
        This allows to create mod- and mapscripts with our extended functionality
        while it is still possible to fall back to default script if our extended functionality is not available.
        */

        Com_sprintf(filepath, sizeof(filepath), "%s.gsx", SL_ConvertToString(handle));
        scr_buffer_handle = Scr_AddSourceBuffer(SL_ConvertToString(handle), filepath, TempMalloc(0), 1);
        if (!scr_buffer_handle)
        {
            /*
        If no extended script was found just load traditional script (gsc)
        */
            Com_sprintf(filepath, sizeof(filepath), "%s.gsc", SL_ConvertToString(handle));
            scr_buffer_handle = Scr_AddSourceBuffer(SL_ConvertToString(handle), filepath, TempMalloc(0), 1);
        }

        if (!scr_buffer_handle)
        {
            --callScriptStackPtr;
            return 0;
        }
		
		Scr_ScriptPreCompile( scr_buffer_handle, filepath );

        oldAnimTreeNames = gScrAnimPub.animTreeNames;
        gScrAnimPub.animTreeNames = 0;
        gScrCompilePub.far_function_count = 0;
        Scr_InitAllocNode();
        oldFilename = gScrParserPub.scriptfilename;
        gScrParserPub.scriptfilename = filepath;
        gScrCompilePub.in_ptr = "+";
        gScrCompilePub.parseBuf = scr_buffer_handle;
        ScriptParse(&result, 0);

        object = SGetObjectA(GetVariable(gScrCompilePub.scriptsPos, handle));

        ScriptCompile(result, object, variable, precache, entriesCount);

        gScrParserPub.scriptfilename = oldFilename;
        gScrParserPub.sourceBuf = oldSourceBuf;
        gScrAnimPub.animTreeNames = oldAnimTreeNames;

        --callScriptStackPtr;

        return object;
    }
}

void Scr_ScriptPreCompile( void *scr_buffer_handle, char *filepath )
{
	char * p = strstr( scr_buffer_handle, "#if" );
	while( p != NULL )
	{
		if( *( p - 1 ) == '/' )
		{
			p = strstr( p + 1, "#if" );
			continue;
		}
		
		char * end = strchr( p, '\n' );
		if( end )
			*end = '\0';

		Cmd_TokenizeString( p );
		const char * func = Cmd_Argv( 1 );
		const char * arg = Cmd_Argv( 2 );
		
		qboolean result = qfalse;
		qboolean negated = qfalse;
		
		if( *func == '!' )
		{
			++func;
			negated = qtrue;
		}

		if( !Q_stricmp( func, "isSyscallDefined" ) )
		{
			if( !negated )
			{
				if( Scr_IsSyscallDefined( arg ) )
				{
					memcpy( p, "//#", 3 );
					result = qtrue;
				}
				else
				{
					memcpy( p, "/*#", 3 );
				}
			}
			else
			{
				if( Scr_IsSyscallDefined( arg ) )
				{
					memcpy( p, "/*#", 3 );
				}
				else
				{
					memcpy( p, "//#", 3 );
					result = qtrue;
				}
			}
		}
		else
		{
			Com_Error( ERR_SCRIPT, "****** Script Pre-Compile Error ******\nUnknown macro function: %s \n%s", func, filepath );
		}
			
		Cmd_EndTokenizedString();

		if( end )
			*end = '\n';

		char * el = strstr( p, "#else" );
		p = strstr( p, "#endif" );
			
		if( p == NULL )
		{
			Com_Error( ERR_SCRIPT, "****** Script Pre-Compile Error ******\nExpected #endif, none found\n%s", filepath );
		}
			
		int pos1, pos2;
		pos1 = pos2 = 0;
		if( el != NULL )
		{
			pos1 = p - (char *)scr_buffer_handle;
			pos2 = el - (char *)scr_buffer_handle;
			if( pos2 < pos1 )
			{
				if( result )
				{
					memcpy( el, "/*#el", 5 );
				}
				else
				{
					memcpy( el, "#el*/", 5 );
				}
			}
		}
			
		if( el == NULL || pos2 > pos1 )
		{
			if( result )
			{
				memcpy( p, "//#eif", 6 );
			}
			else
			{
				memcpy( p, "#eif*/", 6 );
			}
		}
		else
		{
			if( result )
			{
				memcpy( p, "#eif*/", 6 );
			}
			else
			{
				memcpy( p, "//#eif", 6 );
			}
		}

		p = strstr( p, "#if" );
	}
}

unsigned int Scr_LoadScript(const char* scriptname)
{
    PrecacheEntry precache;

    return Scr_LoadScriptInternal(scriptname, &precache, 0);

}


void Scr_Sys_Error_Wrapper(const char *fmt, ...)
{
    va_list argptr;
    char com_errorMessage[4096];

    va_start(argptr, fmt);
    Q_vsnprintf(com_errorMessage, sizeof(com_errorMessage), fmt, argptr);
    va_end(argptr);

    Com_Error(ERR_SCRIPT, "%s", com_errorMessage);
}

/*
int GetArraySize(int aHandle)
{
    int size = gScrVarGlob.variables[aHandle].value.typeSize.size;
    return size;
}*/

/* only for debug */
/*
__regparm3 void VM_Notify_Hook(int entid, int constString, VariableValue *arguments)
{
    Com_Printf(CON_CHANNEL_SCRIPT,"^2Notify Entitynum: %d, EventString: %s\n", entid, SL_ConvertToString(constString));
    VM_Notify(entid, constString, arguments);
}*/



void RuntimeError_Debug(char *msg, char *pos, int a4)
{
    int i;

    Com_Printf(CON_CHANNEL_SCRIPT,"\n^1******* script runtime error *******\n%s: ", msg);
    Scr_PrintPrevCodePos(0, pos, a4);
    if (gScrVmPub.function_count)
    {
        for (i = gScrVmPub.function_count - 1; i > 0; --i)
        {
            Com_Printf(CON_CHANNEL_SCRIPT,"^1called from:\n");
            Scr_PrintPrevCodePos(0, gScrVmPub.function_frame_start[i].fs.pos, gScrVmPub.function_frame_start[i].fs.localId == 0);
        }
        Com_Printf(CON_CHANNEL_SCRIPT,"^1started from:\n");
        Scr_PrintPrevCodePos(0, gScrVmPub.function_frame_start[0].fs.pos, 1);
    }
    Com_Printf(CON_CHANNEL_SCRIPT,"^1************************************\n");
}

void RuntimeError(char *pos, int arg4, char *message, char *a4)
{
    int errtype;

    if (!gScrVarPub.developer && !gScrVmPub.terminal_error)
    {
        return;
    }

    if (gScrVmPub.debugCode)
    {
        Com_Printf(CON_CHANNEL_SCRIPT,"%s\n", message);
        if (!gScrVmPub.terminal_error)
        {
            return;
        }
    }
    else
    {
        RuntimeError_Debug(message, pos, arg4);
        if (!gScrVmPub.abort_on_error && !gScrVmPub.terminal_error)
        {
            return;
        }
    }

    if (gScrVmPub.terminal_error)
    {
        errtype = 5;
    }
    else
    {
        errtype = 4;
    }

    if (a4)
    {
        Com_Error(errtype, "script runtime error\n(see console for details)\n%s\n%s", message, a4);
    }
    else
    {
        Com_Error(errtype, "script runtime error\n(see console for details)\n%s", message);
    }
}



gentity_t *VM_GetGEntityForNum(scr_entref_t num)
{
    if (num.classnum)
    {
        Scr_Error("Not an entity");
        return NULL;
    }

    return &g_entities[num.entnum];
}

gclient_t *VM_GetGClientForEntity(gentity_t *ent)
{
    return ent->client;
}

gclient_t *VM_GetGClientForEntityNumber(scr_entref_t num)
{
    return VM_GetGClientForEntity(VM_GetGEntityForNum(num));
}

client_t *VM_GetClientForEntRef(scr_entref_t ref) //Very bad, this must go
{
    return &svs.clients[ref.entnum];
}

gentity_t *VM_GetGEntityForEntRef(scr_entref_t num)
{
    if (num.classnum)
    {
        Scr_Error("Not an entity");
        return NULL;
    }

    return &g_entities[num.entnum];
}

gclient_t *VM_GetGClientForEntRef(scr_entref_t ref)
{
    return VM_GetGClientForEntity(VM_GetGEntityForEntRef(ref));
}



void Scr_YYACError(const char* fmt, ...)
{
    va_list argptr;
    char com_errorMessage[4096];

    va_start(argptr, fmt);
    Q_vsnprintf(com_errorMessage, sizeof(com_errorMessage), fmt, argptr);
    va_end(argptr);

    Com_Error(ERR_SCRIPT, "%s", com_errorMessage);
}

