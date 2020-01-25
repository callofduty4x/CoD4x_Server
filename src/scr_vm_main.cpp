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

#include "scr_vm_main.hpp"
#include "qshared.hpp"
#include "scr_vm.hpp"
#include "scr_vm_functions.hpp"
#include "qcommon_io.hpp"
#include "cvar.hpp"
#include "cmd.hpp"
#include "misc.hpp"
#include "sys_main.hpp"
#include "sv_bots.hpp"
//#include "scr_vm_classfunc.h"
#include "stringed_interface.hpp"
#include "cscr_stringlist.hpp"
#include "cscr_variable.hpp"
#include "cscr_animtree.hpp"
#include "cscr_parser.hpp"
#include "g_main_mp.hpp"
#include "qvsnprintf.hpp"


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
    Scr_AddFunction("createprintchannel", GScr_CreatePrintChannel, qtrue);
    Scr_AddFunction("setprintchannel", GScr_printChannelSet, qtrue);
    Scr_AddFunction("print", print, qfalse);
    Scr_AddFunction("println", println, qtrue);
    Scr_AddFunction("iprintln", iprintln, qfalse);
    Scr_AddFunction("iprintlnbold", iprintlnbold, qfalse);
    Scr_AddFunction("print3d", GScr_Print3D, qtrue);
    Scr_AddFunction("printstar", GScr_PrintDebugStar, qtrue);
    Scr_AddFunction("line", GScr_line, qtrue);
    Scr_AddFunction("getent", Scr_GetEnt, qfalse);
    Scr_AddFunction("getentarray", Scr_GetEntArray, qfalse);
    Scr_AddFunction("spawnplane", GScr_SpawnPlane, qfalse);
    Scr_AddFunction("spawnturret", GScr_SpawnTurret, qfalse);
    Scr_AddFunction("precacheturret", GScr_PrecacheTurret, qfalse);
    Scr_AddFunction("spawnstruct", Scr_AddStruct, qfalse);
    Scr_AddFunction("assert", assertCmd, qtrue);
    Scr_AddFunction("assertex", assertexCmd, qtrue);
    Scr_AddFunction("assertmsg", assertmsgCmd, qtrue);
    Scr_AddFunction("isdefined", GScr_IsDefined, qfalse);
    Scr_AddFunction("isstring", GScr_IsString, qfalse);
    Scr_AddFunction("isalive", GScr_IsAlive, qfalse);
    Scr_AddFunction("gettime", GScr_GetTime, qfalse);
    Scr_AddFunction("getentbynum", Scr_GetEntByNum, qfalse);
    Scr_AddFunction("getweaponmodel", Scr_GetWeaponModel, qfalse);
    Scr_AddFunction("getanimlength", GScr_GetAnimLength, qfalse);
    Scr_AddFunction("animhasnotetrack", GScr_AnimHasNotetrack, qfalse);
    Scr_AddFunction("getnotetracktimes", GScr_GetNotetrackTimes, qfalse);
    Scr_AddFunction("getbrushmodelcenter", GScr_GetBrushModelCenter, qfalse);
    Scr_AddFunction("objective_add", Scr_Objective_Add, qfalse);
    Scr_AddFunction("objective_delete", Scr_Objective_Delete, qfalse);
    Scr_AddFunction("objective_state", Scr_Objective_State, qfalse);
    Scr_AddFunction("objective_icon", Scr_Objective_Icon, qfalse);
    Scr_AddFunction("float", GScr_Float, qfalse); // like int(...) but to convert to floating point number.
    Scr_AddFunction("objective_position", Scr_Objective_Position, qfalse);
    Scr_AddFunction("objective_onentity", Scr_Objective_OnEntity, qfalse);
    Scr_AddFunction("objective_current", Scr_Objective_Current, qfalse);
    Scr_AddFunction("missile_createattractorent", Scr_MissileCreateAttractorEnt, qfalse);
    Scr_AddFunction("missile_createattractororigin", Scr_MissileCreateAttractorOrigin, qfalse);
    Scr_AddFunction("missile_createrepulsorent", Scr_MissileCreateRepulsorEnt, qfalse);
    Scr_AddFunction("missile_createrepulsororigin", Scr_MissileCreateRepulsorOrigin, qfalse);
    Scr_AddFunction("missile_deleteattractor", Scr_MissileDeleteAttractor, qfalse);
    Scr_AddFunction("bullettrace", Scr_BulletTrace, qfalse);
    Scr_AddFunction("bullettracepassed", Scr_BulletTracePassed, qfalse);
    Scr_AddFunction("sighttracepassed", Scr_SightTracePassed, qfalse);
    Scr_AddFunction("physicstrace", Scr_PhysicsTrace, qfalse);
    Scr_AddFunction("playerphysicstrace", Scr_PlayerPhysicsTrace, qfalse);
    Scr_AddFunction("getmovedelta", GScr_GetMoveDelta, qfalse);
    Scr_AddFunction("getangledelta", GScr_GetAngleDelta, qfalse);
    Scr_AddFunction("getnorthyaw", GScr_GetNorthYaw, qfalse);
    Scr_AddFunction("randomint", Scr_RandomInt, qfalse);
    Scr_AddFunction("randomfloat", Scr_RandomFloat, qfalse);
    Scr_AddFunction("randomintrange", Scr_RandomIntRange, qfalse);
    Scr_AddFunction("randomfloatrange", Scr_RandomFloatRange, qfalse);
    Scr_AddFunction("sin", GScr_sin, qfalse);
    Scr_AddFunction("cos", GScr_cos, qfalse);
    Scr_AddFunction("tan", GScr_tan, qfalse);
    Scr_AddFunction("asin", GScr_asin, qfalse);
    Scr_AddFunction("acos", GScr_acos, qfalse);
    Scr_AddFunction("atan", GScr_atan, qfalse);
    Scr_AddFunction("int", GScr_CastInt, qfalse);
    Scr_AddFunction("abs", GScr_abs, qfalse);
    Scr_AddFunction("min", GScr_min, qfalse);
    Scr_AddFunction("max", GScr_max, qfalse);
    Scr_AddFunction("floor", GScr_floor, qfalse);
    Scr_AddFunction("ceil", GScr_ceil, qfalse);
    Scr_AddFunction("sqrt", GScr_sqrt, qfalse);
    Scr_AddFunction("vectorfromlinetopoint", GScr_VectorFromLineToPoint, qfalse);
    Scr_AddFunction("pointonsegmentnearesttopoint", GScr_PointOnSegmentNearestToPoint, qfalse);
    Scr_AddFunction("isweapondetonationtimed",GScr_IsWeaponDetonationTimed, qfalse);
    Scr_AddFunction("distance", Scr_Distance, qfalse);
    Scr_AddFunction("distance2d", Scr_Distance2D, qfalse);
    Scr_AddFunction("distancesquared", Scr_DistanceSquared, qfalse);
    Scr_AddFunction("length", Scr_Length, qfalse);
    Scr_AddFunction("lengthsquared", Scr_LengthSquared, qfalse);
    Scr_AddFunction("closer", Scr_Closer, qfalse);
    Scr_AddFunction("vectordot", Scr_VectorDot, qfalse);
    Scr_AddFunction("vectornormalize", Scr_VectorNormalize, qfalse);
    Scr_AddFunction("vectortoangles", Scr_VectorToAngles, qfalse);
    Scr_AddFunction("vectorlerp", Scr_VectorLerp, qfalse);
    Scr_AddFunction("anglestoup", Scr_AnglesToUp, qfalse);
    Scr_AddFunction("anglestoright", Scr_AnglesToRight, qfalse);
    Scr_AddFunction("anglestoforward", Scr_AnglesToForward, qfalse);
    Scr_AddFunction("combineangles", Scr_CombineAngles, qfalse);
    Scr_AddFunction("issubstr", Scr_IsSubStr, qfalse);
    Scr_AddFunction("getsubstr", Scr_GetSubStr, qfalse);
    Scr_AddFunction("tolower", Scr_ToLower, qfalse);
    Scr_AddFunction("strtok", Scr_StrTok, qfalse);
    Scr_AddFunction("musicplay", Scr_MusicPlay, qfalse);
    Scr_AddFunction("musicstop", Scr_MusicStop, qfalse);
    Scr_AddFunction("soundfade", Scr_SoundFade, qfalse);
    Scr_AddFunction("ambientplay", Scr_AmbientPlay, qfalse);
    Scr_AddFunction("ambientstop", Scr_AmbientStop, qfalse);
    Scr_AddFunction("precachemodel", Scr_PrecacheModel, qfalse);
    Scr_AddFunction("precacheshellshock", Scr_PrecacheShellShock, qfalse);
    Scr_AddFunction("precacheitem", Scr_PrecacheItem, qfalse);
    Scr_AddFunction("precacheshader", Scr_PrecacheShader, qfalse);
    //Scr_AddFunction("precachestring", Scr_PrecacheString, qfalse);
    Scr_AddFunction("precacherumble", Scr_PrecacheRumble, qfalse);
    Scr_AddFunction("loadfx", Scr_LoadFX, qfalse);
    Scr_AddFunction("playfx", Scr_PlayFX, qfalse);
    Scr_AddFunction("playfxontag", Scr_PlayFXOnTag, qfalse);
    Scr_AddFunction("playloopedfx", Scr_PlayLoopedFX, qfalse);
    Scr_AddFunction("spawnfx", Scr_SpawnFX, qfalse);
    Scr_AddFunction("triggerfx", Scr_TriggerFX, qfalse);
    Scr_AddFunction("physicsexplosionsphere", Scr_PhysicsExplosionSphere, qfalse);
    Scr_AddFunction("physicsexplosioncylinder", Scr_PhysicsExplosionCylinder, qfalse);
    Scr_AddFunction("physicsjolt", Scr_PhysicsRadiusJolt, qfalse);
    Scr_AddFunction("physicsjitter", Scr_PhysicsRadiusJitter, qfalse);
    Scr_AddFunction("setexpfog", Scr_SetExponentialFog, qfalse);
    Scr_AddFunction("grenadeexplosioneffect", Scr_GrenadeExplosionEffect, qfalse);
    Scr_AddFunction("radiusdamage", GScr_RadiusDamage, qfalse);
    Scr_AddFunction("setplayerignoreradiusdamage", GScr_SetPlayerIgnoreRadiusDamage, qfalse);
    Scr_AddFunction("getnumparts", GScr_GetNumParts, qfalse);
    Scr_AddFunction("getpartname", GScr_GetPartName, qfalse);
    Scr_AddFunction("earthquake", GScr_Earthquake, qfalse);
    Scr_AddFunction("newteamhudelem", GScr_NewTeamHudElem, qfalse);
    Scr_AddFunction("resettimeout", Scr_ResetTimeout, qfalse);
    Scr_AddFunction("weaponfiretime", GScr_WeaponFireTime, qfalse);
    Scr_AddFunction("isweaponcliponly", GScr_IsWeaponClipOnly, qfalse);
    Scr_AddFunction("weaponclipsize", GScr_WeaponClipSize, qfalse);
    Scr_AddFunction("weaponissemiauto", GScr_WeaponIsSemiAuto, qfalse);
    Scr_AddFunction("weaponisboltaction", GScr_WeaponIsBoltAction, qfalse);
    Scr_AddFunction("weapontype", GScr_WeaponType, qfalse);
    Scr_AddFunction("weaponclass", GScr_WeaponClass, qfalse);
    Scr_AddFunction("weaponinventorytype", GScr_WeaponInventoryType, qfalse);
    Scr_AddFunction("weaponstartammo", GScr_WeaponStartAmmo, qfalse);
    Scr_AddFunction("weaponmaxammo", GScr_WeaponMaxAmmo, qfalse);
    Scr_AddFunction("weaponaltweaponname", GScr_WeaponAltWeaponName, qfalse);
    Scr_AddFunction("isplayer", GScr_IsPlayer, qfalse);
    Scr_AddFunction("isplayernumber", GScr_IsPlayerNumber, qfalse);
    Scr_AddFunction("setwinningplayer", GScr_SetWinningPlayer, qfalse);
    Scr_AddFunction("setwinningteam", GScr_SetWinningTeam, qfalse);
    Scr_AddFunction("announcement", GScr_Announcement, qfalse);
    Scr_AddFunction("clientannouncement", GScr_ClientAnnouncement, qfalse);
    Scr_AddFunction("getteamscore", GScr_GetTeamScore, qfalse);
    Scr_AddFunction("setteamscore", GScr_SetTeamScore, qfalse);
    Scr_AddFunction("setclientnamemode", GScr_SetClientNameMode, qfalse);
    Scr_AddFunction("updateclientnames", GScr_UpdateClientNames, qfalse);
    Scr_AddFunction("getteamplayersalive", GScr_GetTeamPlayersAlive, qfalse);
    Scr_AddFunction("objective_team", GScr_Objective_Team, qfalse);
    Scr_AddFunction("logprint", GScr_LogPrint, qfalse);
    Scr_AddFunction("worldentnumber", GScr_WorldEntNumber, qfalse);
    Scr_AddFunction("obituary", GScr_Obituary, qfalse);
    Scr_AddFunction("positionwouldtelefrag", GScr_positionWouldTelefrag, qfalse);
    Scr_AddFunction("getstarttime", GScr_getStartTime, qfalse);
    Scr_AddFunction("precachemenu", GScr_PrecacheMenu, qfalse);
    Scr_AddFunction("precachestatusicon", GScr_PrecacheStatusIcon, qfalse);
    Scr_AddFunction("precacheheadicon", GScr_PrecacheHeadIcon, qfalse);
    Scr_AddFunction("precachelocationselector", GScr_PrecacheLocationSelector, qfalse);
    Scr_AddFunction("map_restart", GScr_MapRestart, qfalse);
    Scr_AddFunction("exitlevel", GScr_ExitLevel, qfalse);
    Scr_AddFunction("setarchive", GScr_SetArchive, qfalse);
    Scr_AddFunction("allclientsprint", GScr_AllClientsPrint, qfalse);
    Scr_AddFunction("clientprint", GScr_ClientPrint, qfalse);
    Scr_AddFunction("mapexists", GScr_MapExists, qfalse);
    Scr_AddFunction("isvalidgametype", GScr_IsValidGameType, qfalse);
    Scr_AddFunction("matchend", GScr_MatchEnd, qfalse);
    Scr_AddFunction("setplayerteamrank", GScr_SetPlayerTeamRank, qfalse);
    Scr_AddFunction("sendranks", GScr_SendXboxLiveRanks, qfalse);
    Scr_AddFunction("endparty", GScr_EndXboxLiveLobby, qfalse);
    Scr_AddFunction("setteamradar", GScr_SetTeamRadar, qfalse);
    Scr_AddFunction("getteamradar", GScr_GetTeamRadar, qfalse);
    Scr_AddFunction("getassignedteam", GScr_GetAssignedTeam, qfalse);
    Scr_AddFunction("setvotestring", GScr_SetVoteString, qfalse);
    Scr_AddFunction("setvotetime", GScr_SetVoteTime, qfalse);
    Scr_AddFunction("setvoteyescount", GScr_SetVoteYesCount, qfalse);
    Scr_AddFunction("setvotenocount", GScr_SetVoteNoCount, qfalse);
    Scr_AddFunction("fprintfields", GScr_FPrintFields, qtrue);
    Scr_AddFunction("fgetarg", GScr_FGetArg, qtrue);
    //Scr_AddFunction("kick", GScr_KickPlayer, qfalse);
    //Scr_AddFunction("ban", GScr_BanPlayer, qfalse);
    Scr_AddFunction("map", GScr_LoadMap, qfalse);
    Scr_AddFunction("playrumbleonposition", Scr_PlayRumbleOnPosition, qfalse);
    Scr_AddFunction("playrumblelooponposition", Scr_PlayRumbleLoopOnPosition, qfalse);
    Scr_AddFunction("stopallrumbles", Scr_StopAllRumbles, qfalse);
    Scr_AddFunction("soundexists", ScrCmd_SoundExists, qfalse);
    Scr_AddFunction("issplitscreen", Scr_IsSplitscreen, qfalse);
    Scr_AddFunction("setminimap", GScr_SetMiniMap, qfalse);
    Scr_AddFunction("setmapcenter", GScr_SetMapCenter, qfalse);
    Scr_AddFunction("setgameendtime", GScr_SetGameEndTime, qfalse);
    Scr_AddFunction("getarraykeys", GScr_GetArrayKeys, qfalse);
    Scr_AddFunction("searchforonlinegames", GScr_SearchForOnlineGames, qfalse);
    Scr_AddFunction("quitlobby", GScr_QuitLobby, qfalse);
    Scr_AddFunction("quitparty", GScr_QuitParty, qfalse);
    Scr_AddFunction("startparty", GScr_StartParty, qfalse);
    Scr_AddFunction("startprivatematch", GScr_StartPrivateMatch, qfalse);
    Scr_AddFunction("visionsetnaked", Scr_VisionSetNaked, qfalse);
    Scr_AddFunction("visionsetnight", Scr_VisionSetNight, qfalse);
    Scr_AddFunction("tablelookup", Scr_TableLookup, qfalse);
    Scr_AddFunction("tablelookupistring", Scr_TableLookupIString, qfalse);
    Scr_AddFunction("endlobby", GScr_EndLobby, qfalse);
    Scr_AddFunction("logstring", Scr_LogString, qfalse);

    //User edited functions
    Scr_AddFunction("spawn", GScr_Spawn, qfalse);
    //	Scr_AddFunction("spawnvehicle", GScr_SpawnVehicle, qfalse);
    Scr_AddFunction("spawnhelicopter", GScr_SpawnHelicopter, qfalse);
    Scr_AddFunction("getdvar", GScr_GetCvar, qfalse);
    Scr_AddFunction("getdvarint", GScr_GetCvarInt, qfalse);
    Scr_AddFunction("getdvarfloat", GScr_GetCvarFloat, qfalse);
    Scr_AddFunction("setdvar", GScr_SetCvar, qfalse);
    Scr_AddFunction("vectoradd", GScr_VectorAdd, qfalse);
    Scr_AddFunction("precachestring", Scr_PrecacheString_f, qfalse);
    Scr_AddFunction("newhudelem", GScr_NewHudElem, qfalse);
    Scr_AddFunction("newclienthudelem", GScr_NewClientHudElem, qfalse);
    Scr_AddFunction("addtestclient", GScr_SpawnBot, qfalse);
    Scr_AddFunction("removetestclient", GScr_RemoveBot, qfalse);
    Scr_AddFunction("removealltestclients", GScr_RemoveAllBots, qfalse);
    Scr_AddFunction("makedvarserverinfo", GScr_MakeCvarServerInfo, qfalse);
    Scr_AddFunction("openfile", GScr_FS_FOpen, qfalse);
    Scr_AddFunction("closefile", GScr_FS_FClose, qfalse);
    Scr_AddFunction("fprintln", GScr_FS_WriteLine, qfalse);
    Scr_AddFunction("freadln", GScr_FS_ReadLine, qfalse);
    Scr_AddFunction("kick", GScr_KickClient, qfalse);
    Scr_AddFunction("ban", GScr_BanClient, qfalse);
    Scr_AddFunction("fs_fopen", GScr_FS_FOpen, qfalse);
    Scr_AddFunction("fs_fclose", GScr_FS_FClose, qfalse);
    Scr_AddFunction("fs_fcloseall", GScr_FS_FCloseAll, qfalse);
    Scr_AddFunction("fs_testfile", GScr_FS_TestFile, qfalse);
    Scr_AddFunction("fs_readline", GScr_FS_ReadLine, qfalse);
    Scr_AddFunction("fs_writeline", GScr_FS_WriteLine, qfalse);
    Scr_AddFunction("fs_remove", GScr_FS_Remove, qfalse);
    Scr_AddFunction("getrealtime", GScr_GetRealTime, qfalse);
    Scr_AddFunction("timetostring", GScr_TimeToString, qfalse);
    Scr_AddFunction("strtokbypixlen", GScr_StrTokByPixLen, qfalse);
    Scr_AddFunction("strpixlen", GScr_StrPixLen, qfalse);
    Scr_AddFunction("strcolorstrip", GScr_StrColorStrip, qfalse);
    Scr_AddFunction("strrepl", GScr_StrRepl, qfalse);
    Scr_AddFunction("strtokbylen", GScr_StrTokByLen, qfalse);
    Scr_AddFunction("exec", GScr_CbufAddText, qfalse);
    Scr_AddFunction("execex", GScr_CbufAddTextEx, qfalse);
    Scr_AddFunction("sha256", GScr_SHA256, qfalse);
    Scr_AddFunction("addscriptcommand", GScr_AddScriptCommand, qfalse);
    Scr_AddFunction("isarray", Scr_IsArray_f, qfalse); // http://zeroy.com/script/variables/isarray.htm
    Scr_AddFunction("iscvardefined", GScr_IsCvarDefined, qfalse);
    Scr_AddFunction("arraytest", GScr_ArrayTest, qtrue);

    Scr_AddFunction("base64encode", GScr_Base64Encode, qfalse);
    Scr_AddFunction("base64decode", GScr_Base64Decode, qfalse);
    Scr_AddFunction("isentity", GScr_IsEntity, qfalse);
    Scr_AddFunction("isvector", GScr_IsVector, qfalse);
    Scr_AddFunction("isfloat", GScr_IsFloat, qfalse);
    Scr_AddFunction("isint", GScr_IsInt, qfalse);
    Scr_AddFunction("pow", GScr_Pow, qfalse);
    Scr_AddFunction("strctrlstrip", GScr_StrCtrlStrip, qfalse);
    Scr_AddFunction("toupper", GScr_ToUpper, qfalse);
}

void Scr_AddStockMethods()
{


    //PlayerCmd

    Scr_AddMethod("giveweapon", PlayerCmd_giveWeapon, qfalse);
    Scr_AddMethod("takeweapon", PlayerCmd_takeWeapon, qfalse);
    Scr_AddMethod("takeallweapons", PlayerCmd_takeAllWeapons, qfalse);
    Scr_AddMethod("getcurrentweapon", PlayerCmd_getCurrentWeapon, qfalse);
    Scr_AddMethod("getcurrentoffhand", PlayerCmd_getCurrentOffhand, qfalse);
    Scr_AddMethod("hasweapon", PlayerCmd_hasWeapon, qfalse);
    Scr_AddMethod("switchtoweapon", PlayerCmd_switchToWeapon, qfalse);
    Scr_AddMethod("switchtooffhand", PlayerCmd_switchToOffhand, qfalse);
    Scr_AddMethod("givestartammo", PlayerCmd_giveStartAmmo, qfalse);
    Scr_AddMethod("givemaxammo", PlayerCmd_giveMaxAmmo, qfalse);
    Scr_AddMethod("getfractionstartammo", PlayerCmd_getFractionStartAmmo, qfalse);
    Scr_AddMethod("getfractionmaxammo", PlayerCmd_getFractionMaxAmmo, qfalse);
    Scr_AddMethod("setorigin", PlayerCmd_setOrigin, qfalse);
    Scr_AddMethod("getvelocity", PlayerCmd_GetVelocity, qfalse);
    Scr_AddMethod("setplayerangles", PlayerCmd_setAngles, qfalse);
    Scr_AddMethod("getplayerangles", PlayerCmd_getAngles, qfalse);
    Scr_AddMethod("usebuttonpressed", PlayerCmd_useButtonPressed, qfalse);
    Scr_AddMethod("attackbuttonpressed", PlayerCmd_attackButtonPressed, qfalse);
    Scr_AddMethod("meleebuttonpressed", PlayerCmd_meleeButtonPressed, qfalse);
    Scr_AddMethod("fragbuttonpressed", PlayerCmd_fragButtonPressed, qfalse);
    Scr_AddMethod("secondaryoffhandbuttonpressed", PlayerCmd_secondaryOffhandButtonPressed, qfalse);
    Scr_AddMethod("playerads", PlayerCmd_playerADS, qfalse);
    Scr_AddMethod("isonground", PlayerCmd_isOnGround, qfalse);
    Scr_AddMethod("pingplayer", PlayerCmd_pingPlayer, qfalse);
    Scr_AddMethod("setviewmodel", PlayerCmd_SetViewmodel, qfalse);
    Scr_AddMethod("getviewmodel", PlayerCmd_GetViewmodel, qfalse);
    Scr_AddMethod("setoffhandsecondaryclass", PlayerCmd_setOffhandSecondaryClass, qfalse);
    Scr_AddMethod("getoffhandsecondaryclass", PlayerCmd_getOffhandSecondaryClass, qfalse);
    Scr_AddMethod("beginlocationselection", PlayerCmd_BeginLocationSelection, qfalse);
    Scr_AddMethod("endlocationselection", PlayerCmd_EndLocationSelection, qfalse);
    Scr_AddMethod("buttonpressed", PlayerCmd_buttonPressedDEVONLY, qfalse);
    Scr_AddMethod("sayall", PlayerCmd_SayAll, qfalse);
    Scr_AddMethod("sayteam", PlayerCmd_SayTeam, qfalse);
    Scr_AddMethod("showscoreboard", PlayerCmd_showScoreboard, qfalse);
    Scr_AddMethod("setspawnweapon", PlayerCmd_setSpawnWeapon, qfalse);
    Scr_AddMethod("dropitem", PlayerCmd_dropItem, qfalse);
    Scr_AddMethod("finishplayerdamage", PlayerCmd_finishPlayerDamage, qfalse);
    Scr_AddMethod("suicide", PlayerCmd_Suicide, qfalse);
    Scr_AddMethod("openmenu", PlayerCmd_OpenMenu, qfalse);
    Scr_AddMethod("openmenunomouse", PlayerCmd_OpenMenuNoMouse, qfalse);
    Scr_AddMethod("closemenu", PlayerCmd_CloseMenu, qfalse);
    Scr_AddMethod("closeingamemenu", PlayerCmd_CloseInGameMenu, qfalse);
    Scr_AddMethod("freezecontrols", PlayerCmd_FreezeControls, qfalse);
    Scr_AddMethod("disableweapons", PlayerCmd_DisableWeapons, qfalse);
    Scr_AddMethod("enableweapons", PlayerCmd_EnableWeapons, qfalse);
    Scr_AddMethod("setreverb", PlayerCmd_SetReverb, qfalse);
    Scr_AddMethod("deactivatereverb", PlayerCmd_DeactivateReverb, qfalse);
    Scr_AddMethod("setchannelvolumes", PlayerCmd_SetChannelVolumes, qfalse);
    Scr_AddMethod("deactivatechannelvolumes", PlayerCmd_DeactivateChannelVolumes, qfalse);
    Scr_AddMethod("setweaponammoclip", PlayerCmd_SetWeaponAmmoClip, qfalse);
    Scr_AddMethod("setweaponammostock", PlayerCmd_SetWeaponAmmoStock, qfalse);
    Scr_AddMethod("getweaponammoclip", PlayerCmd_GetWeaponAmmoClip, qfalse);
    Scr_AddMethod("getweaponammostock", PlayerCmd_GetWeaponAmmoStock, qfalse);
    Scr_AddMethod("anyammoforweaponmodes", PlayerCmd_AnyAmmoForWeaponModes, qfalse);
    Scr_AddMethod("iprintln", iclientprintln, qfalse);
    Scr_AddMethod("iprintlnbold", iclientprintlnbold, qfalse);
    Scr_AddMethod("setentertime", PlayerCmd_setEnterTime, qfalse);
    Scr_AddMethod("cloneplayer", PlayerCmd_ClonePlayer, qfalse);
    Scr_AddMethod("setclientdvar", PlayerCmd_SetClientDvar, qfalse);
    Scr_AddMethod("setclientdvars", PlayerCmd_SetClientDvars, qfalse);
    Scr_AddMethod("playlocalsound", ScrCmd_PlayLocalSound, qfalse);
    Scr_AddMethod("stoplocalsound", ScrCmd_StopLocalSound, qfalse);
    Scr_AddMethod("istalking", PlayerCmd_IsTalking, qfalse);
    Scr_AddMethod("allowspectateteam", PlayerCmd_AllowSpectateTeam, qfalse);
    Scr_AddMethod("allowads", PlayerCmd_AllowADS, qfalse);
    Scr_AddMethod("allowjump", PlayerCmd_AllowJump, qfalse);
    Scr_AddMethod("allowsprint", PlayerCmd_AllowSprint, qfalse);
    Scr_AddMethod("setspreadoverride", PlayerCmd_SetSpreadOverride, qfalse);
    Scr_AddMethod("resetspreadoverride", PlayerCmd_ResetSpreadOverride, qfalse);
    Scr_AddMethod("setactionslot", PlayerCmd_SetActionSlot, qfalse);
    Scr_AddMethod("getweaponslist", PlayerCmd_GetWeaponsList, qfalse);
    Scr_AddMethod("getweaponslistprimaries", PlayerCmd_GetWeaponsListPrimaries, qfalse);
    Scr_AddMethod("setperk", PlayerCmd_SetPerk, qfalse);
    Scr_AddMethod("hasperk", PlayerCmd_HasPerk, qfalse);
    Scr_AddMethod("clearperks", PlayerCmd_ClearPerks, qfalse);
    Scr_AddMethod("unsetperk", PlayerCmd_UnsetPerk, qfalse);
    Scr_AddMethod("setrank", PlayerCmd_SetRank, qfalse);
    Scr_AddMethod("adsbuttonpressed", PlayerCmd_adsButtonPressed, qfalse);

    Scr_AddMethod("updatedmscores", PlayerCmd_UpdateDMScores, qfalse);


    Scr_AddMethod("getpower", PlayerCmd_GetPower, qfalse);
    Scr_AddMethod("setpower", PlayerCmd_SetPower, qfalse);
    Scr_AddMethod("setuid", PlayerCmd_SetUid, qfalse);
    Scr_AddMethod("spawn", PlayerCmd_spawn, qfalse);
    Scr_AddMethod("getguid", PlayerCmd_GetGuid, qfalse);
    Scr_AddMethod("getxuid", PlayerCmd_GetXuid, qfalse);
    Scr_AddMethod("getuid", PlayerCmd_GetUid, qfalse);
    Scr_AddMethod("getsteamid", PlayerCmd_GetSteamID, qfalse);
    Scr_AddMethod("getplayerid", PlayerCmd_GetPlayerID, qfalse);
    Scr_AddMethod("getsteamid64", PlayerCmd_GetSteamID, qfalse);
    Scr_AddMethod("getplayerid64", PlayerCmd_GetPlayerID, qfalse);
    Scr_AddMethod("getuserinfo", PlayerCmd_GetUserinfo, qfalse);
    Scr_AddMethod("getping", PlayerCmd_GetPing, qfalse);


    //HUD Functions

    Scr_AddMethod("settext", HECmd_SetText, qfalse);
    Scr_AddMethod("clearalltextafterhudelem", HECmd_ClearAllTextAfterHudElem, qfalse);
    Scr_AddMethod("setshader", HECmd_SetMaterial, qfalse);
    Scr_AddMethod("settimer", HECmd_SetTimer, qfalse);
    Scr_AddMethod("settimerup", HECmd_SetTimerUp, qfalse);
    Scr_AddMethod("settenthstimer", HECmd_SetTenthsTimer, qfalse);
    Scr_AddMethod("settenthstimerup", HECmd_SetTenthsTimerUp, qfalse);
    Scr_AddMethod("setclock", HECmd_SetClock, qfalse);
    Scr_AddMethod("setclockup", HECmd_SetClockUp, qfalse);
    Scr_AddMethod("setvalue", HECmd_SetValue, qfalse);
    Scr_AddMethod("setwaypoint", HECmd_SetWaypoint, qfalse);
    Scr_AddMethod("fadeovertime", HECmd_FadeOverTime, qfalse);
    Scr_AddMethod("scaleovertime", HECmd_ScaleOverTime, qfalse);
    Scr_AddMethod("moveovertime", HECmd_MoveOverTime, qfalse);
    Scr_AddMethod("reset", HECmd_Reset, qfalse);
//	Scr_AddMethod("destroy", HECmd_Destroy, qfalse);
    Scr_AddMethod("setpulsefx", HECmd_SetPulseFX, qfalse);
    Scr_AddMethod("setplayernamestring", HECmd_SetPlayerNameString, qfalse);
    Scr_AddMethod("setmapnamestring", HECmd_SetMapNameString, qfalse);
    Scr_AddMethod("setgametypestring", HECmd_SetGameTypeString, qfalse);
    Scr_AddMethod("cleartargetent", HECmd_ClearTargetEnt, qfalse);
    Scr_AddMethod("settargetent", HECmd_SetTargetEnt, qfalse);
    Scr_AddMethod("destroy", Scr_Destroy_f, qfalse);


    //Scr Cmd Functions
    Scr_AddMethod("attach", ScrCmd_attach, qfalse);
    Scr_AddMethod("detach", ScrCmd_detach, qfalse);
    Scr_AddMethod("detachall", ScrCmd_detachAll, qfalse);
    Scr_AddMethod("getattachsize", ScrCmd_GetAttachSize, qfalse);
    Scr_AddMethod("getattachmodelname", ScrCmd_GetAttachModelName, qfalse);
    Scr_AddMethod("getattachtagname", ScrCmd_GetAttachTagName, qfalse);
    Scr_AddMethod("getattachignorecollision", ScrCmd_GetAttachIgnoreCollision, qfalse);
    Scr_AddMethod("getammocount", GScr_GetAmmoCount, qfalse);
    Scr_AddMethod("getclanid", ScrCmd_GetClanId, qfalse);
    Scr_AddMethod("getclanname", ScrCmd_GetClanName, qfalse);
    Scr_AddMethod("hidepart", ScrCmd_hidepart, qfalse);
    Scr_AddMethod("showpart", ScrCmd_showpart, qfalse);
    Scr_AddMethod("showallparts", ScrCmd_showallparts, qfalse);
    Scr_AddMethod("linkto", ScrCmd_LinkTo, qfalse);
    Scr_AddMethod("unlink", ScrCmd_Unlink, qfalse);
    Scr_AddMethod("enablelinkto", ScrCmd_EnableLinkTo, qfalse);
    Scr_AddMethod("getorigin", ScrCmd_GetOrigin, qfalse);
    Scr_AddMethod("geteye", ScrCmd_GetEye, qfalse);
    Scr_AddMethod("useby", ScrCmd_UseBy, qfalse);
    Scr_AddMethod("setstablemissile", Scr_SetStableMissile, qfalse);
    Scr_AddMethod("istouching", ScrCmd_IsTouching, qfalse);
    Scr_AddMethod("playsound", ScrCmd_PlaySound, qfalse);
    Scr_AddMethod("playsoundasmaster", ScrCmd_PlaySoundAsMaster, qfalse);
    Scr_AddMethod("playsoundtoteam", ScrCmd_PlaySoundToTeam, qfalse);
    Scr_AddMethod("playsoundtoplayer", ScrCmd_PlaySoundToPlayer, qfalse);
    Scr_AddMethod("playloopsound", ScrCmd_PlayLoopSound, qfalse);
    Scr_AddMethod("stoploopsound", ScrCmd_StopLoopSound, qfalse);
    Scr_AddMethod("playrumbleonentity", ScrCmd_PlayRumbleOnEntity, qfalse);
    Scr_AddMethod("playrumblelooponentity", ScrCmd_PlayRumbleLoopOnEntity, qfalse);
    Scr_AddMethod("stoprumble", ScrCmd_StopRumble, qfalse);
    Scr_AddMethod("delete", ScrCmd_Delete, qfalse);
    Scr_AddMethod("setmodel", ScrCmd_SetModel, qfalse);
    Scr_AddMethod("getnormalhealth", ScrCmd_GetNormalHealth, qfalse);
    Scr_AddMethod("setnormalhealth", ScrCmd_SetNormalHealth, qfalse);
    Scr_AddMethod("show", ScrCmd_Show, qfalse);
    Scr_AddMethod("hide", ScrCmd_Hide, qfalse);
    Scr_AddMethod("laseron", ScrCmd_LaserOn, qfalse);
    Scr_AddMethod("laseroff", ScrCmd_LaserOff, qfalse);
    Scr_AddMethod("showtoplayer", ScrCmd_ShowToPlayer, qfalse);
    Scr_AddMethod("setcontents", ScrCmd_SetContents, qfalse);
    Scr_AddMethod("getstance", ScrCmd_GetStance, qfalse);
    Scr_AddMethod("setcursorhint", GScr_SetCursorHint, qfalse);
    Scr_AddMethod("sethintstring", GScr_SetHintString, qfalse);
    Scr_AddMethod("usetriggerrequirelookat", GScr_UseTriggerRequireLookAt, qfalse);
    Scr_AddMethod("shellshock", GScr_ShellShock, qfalse);
    Scr_AddMethod("gettagorigin", GScr_GetTagOrigin, qfalse);
    Scr_AddMethod("gettagangles", GScr_GetTagAngles, qfalse);
    Scr_AddMethod("stopshellshock", GScr_StopShellShock, qfalse);
    Scr_AddMethod("setdepthoffield", GScr_SetDepthOfField, qfalse);
    Scr_AddMethod("viewkick", GScr_ViewKick, qfalse);
    Scr_AddMethod("localtoworldcoords", GScr_LocalToWorldCoords, qfalse);
    Scr_AddMethod("setrightarc", GScr_SetRightArc, qfalse);
    Scr_AddMethod("setleftarc", GScr_SetLeftArc, qfalse);
    Scr_AddMethod("settoparc", GScr_SetTopArc, qfalse);
    Scr_AddMethod("setbottomarc", GScr_SetBottomArc, qfalse);
    Scr_AddMethod("radiusdamage", GScr_EntityRadiusDamage, qfalse);
    Scr_AddMethod("detonate", GScr_Detonate, qfalse);
    Scr_AddMethod("damageconetrace", GScr_DamageConeTrace, qfalse);
    Scr_AddMethod("sightconetrace", GScr_SightConeTrace, qfalse);
    Scr_AddMethod("getentitynumber", GScr_GetEntityNumber, qfalse);
    Scr_AddMethod("enablegrenadetouchdamage", GScr_EnableGrenadeTouchDamage, qfalse);
    Scr_AddMethod("disablegrenadetouchdamage", GScr_DisableGrenadeTouchDamage, qfalse);
    Scr_AddMethod("enableaimassist", GScr_EnableAimAssist, qfalse);
    Scr_AddMethod("disableaimassist", GScr_DisableAimAssist, qfalse);
    Scr_AddMethod("placespawnpoint", GScr_PlaceSpawnPoint, qfalse);
    Scr_AddMethod("updatescores", PlayerCmd_UpdateScores, qfalse);
    Scr_AddMethod("setteamfortrigger", GScr_SetTeamForTrigger, qfalse);
    Scr_AddMethod("clientclaimtrigger", GScr_ClientClaimTrigger, qfalse);
    Scr_AddMethod("clientreleasetrigger", GScr_ClientReleaseTrigger, qfalse);
    Scr_AddMethod("releaseclaimedtrigger", GScr_ReleaseClaimedTrigger, qfalse);
    Scr_AddMethod("sendleaderboards", GScr_SendLeaderboards, qfalse);
    Scr_AddMethod("setmovespeedscale", ScrCmd_SetMoveSpeedScale, qfalse);
    Scr_AddMethod("missile_settarget", GScr_MissileSetTarget, qfalse);
    Scr_AddMethod("startragdoll", GScr_StartRagdoll, qfalse);
    Scr_AddMethod("isragdoll", GScr_IsRagdoll, qfalse);
    Scr_AddMethod("getcorpseanim", GScr_GetCorpseAnim, qfalse);
    Scr_AddMethod("itemweaponsetammo", ScrCmd_ItemWeaponSetAmmo, qfalse);
    Scr_AddMethod("logstring", ScrCmd_LogString, qfalse);
    Scr_AddMethod("isonladder", GScr_IsOnLadder, qfalse);
    Scr_AddMethod("ismantling", GScr_IsMantling, qfalse);



    //	Scr_AddMethod("setstance", ScrCmd_SetStance, qfalse);
    Scr_AddMethod("setjumpheight", PlayerCmd_SetJumpHeight, qfalse);
    Scr_AddMethod("setgravity", PlayerCmd_SetGravity, qfalse);
    Scr_AddMethod("setgroundreferenceent", PlayerCmd_SetGroundReferenceEnt, qfalse);
    Scr_AddMethod("setmovespeed", PlayerCmd_SetMoveSpeed, qfalse);


    Scr_AddMethod("getstat", PlayerCmd_GetStat, qfalse);
    Scr_AddMethod("setstat", PlayerCmd_SetStat, qfalse);


    //Scr Ent Functions
    Scr_AddMethod("moveto", ScriptEntCmd_MoveTo, qfalse);
    Scr_AddMethod("movex", ScriptEntCmd_MoveX, qfalse);
    Scr_AddMethod("movey", ScriptEntCmd_MoveY, qfalse);
    Scr_AddMethod("movez", ScriptEntCmd_MoveZ, qfalse);
    Scr_AddMethod("movegravity", ScriptEntCmd_GravityMove, qfalse);
    Scr_AddMethod("rotateto", ScriptEntCmd_RotateTo, qfalse);
    Scr_AddMethod("rotatepitch", ScriptEntCmd_RotatePitch, qfalse);
    Scr_AddMethod("rotateyaw", ScriptEntCmd_RotateYaw, qfalse);
    Scr_AddMethod("rotateroll", ScriptEntCmd_RotateRoll, qfalse);
    Scr_AddMethod("devaddpitch", ScriptEntCmd_DevAddPitch, qtrue);
    Scr_AddMethod("devaddyaw", ScriptEntCmd_DevAddYaw, qtrue);
    Scr_AddMethod("devaddroll", ScriptEntCmd_DevAddRoll, qtrue);
    Scr_AddMethod("vibrate", ScriptEntCmd_Vibrate, qfalse);
    Scr_AddMethod("rotatevelocity", ScriptEntCmd_RotateVelocity, qfalse);
    Scr_AddMethod("solid", ScriptEntCmd_Solid, qfalse);
    Scr_AddMethod("notsolid", ScriptEntCmd_NotSolid, qfalse);
    Scr_AddMethod("setcandamage", ScriptEntCmd_SetCanDamage, qfalse);
    Scr_AddMethod("physicslaunch", ScriptEntCmd_PhysicsLaunch, qfalse);


    //Helicopter Functions
    Scr_AddMethod("freehelicopter", CMD_Heli_FreeHelicopter, qfalse);
    Scr_AddMethod("setspeed", CMD_VEH_SetSpeed, qfalse);
    Scr_AddMethod("getspeed", CMD_VEH_GetSpeed, qfalse);
    Scr_AddMethod("getspeedmph", CMD_VEH_GetSpeedMPH, qfalse);
    Scr_AddMethod("resumespeed", CMD_VEH_ResumeSpeed, qfalse);
    Scr_AddMethod("setyawspeed", CMD_VEH_SetYawSpeed, qfalse);
    Scr_AddMethod("setmaxpitchroll", CMD_VEH_SetMaxPitchRoll, qfalse);
    Scr_AddMethod("setturningability", CMD_VEH_SetTurningAbility, qfalse);
    Scr_AddMethod("setairresistance", CMD_VEH_SetAirResitance, qfalse);
    Scr_AddMethod("sethoverparams", CMD_VEH_SetHoverParams, qfalse);
    Scr_AddMethod("setneargoalnotifydist", CMD_VEH_NearGoalNotifyDist, qfalse);
    Scr_AddMethod("setvehgoalpos", CMD_VEH_SetGoalPos, qfalse);
    Scr_AddMethod("setgoalyaw", CMD_VEH_SetGoalYaw, qfalse);
    Scr_AddMethod("cleargoalyaw", CMD_VEH_ClearGoalYaw, qfalse);
    Scr_AddMethod("settargetyaw", CMD_VEH_SetTargetYaw, qfalse);
    Scr_AddMethod("cleartargetyaw", CMD_VEH_ClearTargetYaw, qfalse);
    Scr_AddMethod("setlookatent", CMD_VEH_SetLookAtEnt, qfalse);
    Scr_AddMethod("clearlookatent", CMD_VEH_ClearLookAtEnt, qfalse);
    Scr_AddMethod("setvehweapon", CMD_VEH_SetWeapon, qfalse);
    Scr_AddMethod("fireweapon", CMD_VEH_FireWeapon, qfalse);
    Scr_AddMethod("setturrettargetvec", CMD_VEH_SetTurretTargetVec, qfalse);
    Scr_AddMethod("setturrettargetent", CMD_VEH_SetTurretTargetEnt, qfalse);
    Scr_AddMethod("clearturrettarget", CMD_VEH_ClearTurretTargetEnt, qfalse);
    Scr_AddMethod("setvehicleteam", CMD_VEH_SetVehicleTeam, qfalse);
    Scr_AddMethod("setdamagestage", CMD_Heli_SetDamageStage, qfalse);

    // Player movement detection.
    Scr_AddMethod("forwardbuttonpressed", PlayerCmd_ForwardButtonPressed, qfalse);
    Scr_AddMethod("backbuttonpressed", PlayerCmd_BackButtonPressed, qfalse);
    Scr_AddMethod("moveleftbuttonpressed", PlayerCmd_MoveLeftButtonPressed, qfalse);
    Scr_AddMethod("moverightbuttonpressed", PlayerCmd_MoveRightButtonPressed, qfalse);
    Scr_AddMethod("sprintbuttonpressed", PlayerCmd_SprintButtonPressed, qfalse);
    Scr_AddMethod("reloadbuttonpressed", PlayerCmd_ReloadButtonPressed, qfalse);
    Scr_AddMethod("leanleftbuttonpressed", PlayerCmd_LeanLeftButtonPressed, qfalse);
    Scr_AddMethod("leanrightbuttonpressed", PlayerCmd_LeanRightButtonPressed, qfalse);
    Scr_AddMethod("isproning", PlayerCmd_IsProning, qfalse);
    Scr_AddMethod("iscrouching", PlayerCmd_IsCrouching, qfalse);
    Scr_AddMethod("isstanding", PlayerCmd_IsStanding, qfalse);
    Scr_AddMethod("jumpbuttonpressed", PlayerCmd_JumpButtonPressed, qfalse);
    Scr_AddMethod("isinads", PlayerCmd_IsInADS, qfalse);
    Scr_AddMethod("holdbreathbuttonpressed", PlayerCmd_HoldBreathButtonPressed, qfalse);
    Scr_AddMethod("aimbuttonpressed", PlayerCmd_AimButtonPressed, qfalse);

    Scr_AddMethod("steamgroupmembershipquery", PlayerCmd_GetSteamGroupMembership, qfalse);
    Scr_AddMethod("setvelocity", PlayerCmd_SetVelocity, qfalse);

    /* Bot movement */
    Scr_AddBotsMovement();

    Scr_AddMethod("getgeolocation", PlayerCmd_GetGeoLocation, qfalse);
    Scr_AddMethod("getcountedfps", PlayerCmd_GetCountedFPS, qfalse);
    Scr_AddMethod("getspectatorclient", PlayerCmd_GetSpectatorClient, qfalse);

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
  int del;
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
    g_scr_data.gametype.main = GScr_LoadScriptAndLabel(gametype_path, "main", qfalse);
    if (g_scr_data.gametype.main == 0)
    {
        Com_PrintError(CON_CHANNEL_SCRIPT,"Could not find script: %s\n", gametype_path);
        Com_Printf(CON_CHANNEL_SCRIPT,"The gametype %s is not available! Will load gametype dm\n", sv_g_gametype->string);

        Cvar_SetString(sv_g_gametype, "dm");
        Com_sprintf(gametype_path, sizeof(gametype_path), "maps/mp/gametypes/%s", sv_g_gametype->string);
        /* If we can not find gametype dm a fatal error gets raised */
        g_scr_data.gametype.main = GScr_LoadScriptAndLabel(gametype_path, "main", qtrue);
    }
    g_scr_data.gametype.startupgametype = GScr_LoadScriptAndLabel("maps/mp/gametypes/_callbacksetup", "CodeCallback_StartGameType", qtrue);
    g_scr_data.gametype.playerconnect = GScr_LoadScriptAndLabel("maps/mp/gametypes/_callbacksetup", "CodeCallback_PlayerConnect", qtrue);
    g_scr_data.gametype.playerdisconnect = GScr_LoadScriptAndLabel("maps/mp/gametypes/_callbacksetup", "CodeCallback_PlayerDisconnect", qtrue);
    g_scr_data.gametype.playerdamage = GScr_LoadScriptAndLabel("maps/mp/gametypes/_callbacksetup", "CodeCallback_PlayerDamage", qtrue);
    g_scr_data.gametype.playerkilled = GScr_LoadScriptAndLabel("maps/mp/gametypes/_callbacksetup", "CodeCallback_PlayerKilled", qtrue);
    g_scr_data.gametype.playerlaststand = GScr_LoadScriptAndLabel("maps/mp/gametypes/_callbacksetup", "CodeCallback_PlayerLastStand", qtrue);

    /**************** Additional *************************/
    script_CallBacks_new[SCR_CB_SCRIPTCOMMAND] = GScr_LoadScriptAndLabel("maps/mp/gametypes/_callbacksetup", "CodeCallback_ScriptCommand", qfalse);
}


void __cdecl GScr_LoadScripts(void)
{
    char mappath[MAX_QPATH];
    cvar_t *mapname;
    int i;

    Scr_BeginLoadScripts();
    Scr_InitFunctions();

    g_scr_data.del = GScr_LoadScriptAndLabel("codescripts/delete", "main", qtrue);
    g_scr_data.initstructs = GScr_LoadScriptAndLabel("codescripts/struct", "initstructs", qtrue);
    g_scr_data.createstruct = GScr_LoadScriptAndLabel("codescripts/struct", "createstruct", qtrue);

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
        scr_buffer_handle = Scr_AddSourceBuffer(SL_ConvertToString(handle), filepath, reinterpret_cast<char*>(TempMalloc(0)), true);
        if (!scr_buffer_handle)
        {
            /*
        If no extended script was found just load traditional script (gsc)
        */
            Com_sprintf(filepath, sizeof(filepath), "%s.gsc", SL_ConvertToString(handle));
            scr_buffer_handle = Scr_AddSourceBuffer(SL_ConvertToString(handle), filepath, reinterpret_cast<char*>(TempMalloc(0)), true);
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
        gScrCompilePub.parseBuf = reinterpret_cast<const char*>(scr_buffer_handle);
        ScriptParse(&result, qfalse);

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
    char * p = strstr(reinterpret_cast<const char*>(scr_buffer_handle), "#if" );
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
					strncpy( p, "//#", 3 );
					result = qtrue;
				}
				else
				{
					strncpy( p, "/*#", 3 );
				}
			}
			else
			{
				if( Scr_IsSyscallDefined( arg ) )
				{
					strncpy( p, "/*#", 3 );
				}
				else
				{
					strncpy( p, "//#", 3 );
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
					strncpy( el, "/*#el", 5 );
				}
				else
				{
					strncpy( el, "#el*/", 5 );
				}
			}
		}
			
		if( el == NULL || pos2 > pos1 )
		{
			if( result )
			{
				strncpy( p, "//#eif", 6 );
			}
			else
			{
				strncpy( p, "#eif*/", 6 );
			}
		}
		else
		{
			if( result )
			{
				strncpy( p, "#eif*/", 6 );
			}
			else
			{
				strncpy( p, "//#eif", 6 );
			}
		}

		p = strstr( p, "#if" );
	}
}

unsigned int Scr_LoadScript(const char* scriptname)
{
    PrecacheEntry precache;

    return Scr_LoadScriptInternal(scriptname, &precache, qfalse);

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
    Scr_PrintPrevCodePos(CON_CHANNEL_DONT_FILTER, pos, a4);
    if (gScrVmPub.function_count)
    {
        for (i = gScrVmPub.function_count - 1; i > 0; --i)
        {
            Com_Printf(CON_CHANNEL_SCRIPT,"^1called from:\n");
            Scr_PrintPrevCodePos(CON_CHANNEL_DONT_FILTER, gScrVmPub.function_frame_start[i].fs.pos, gScrVmPub.function_frame_start[i].fs.localId == 0);
        }
        Com_Printf(CON_CHANNEL_SCRIPT,"^1started from:\n");
        Scr_PrintPrevCodePos(CON_CHANNEL_DONT_FILTER, gScrVmPub.function_frame_start[0].fs.pos, qtrue);
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

