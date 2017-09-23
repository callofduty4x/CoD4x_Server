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
#include "scr_vm_classfunc.h"

#include <stdarg.h>

typedef struct
{
    char *name;
    xfunction_t offset;
    qboolean developer;
} v_function_t;

#define G_SCR_DATA_ADDR (void *)0x8583ba0

char *var_typename[] =
    {
        "undefined",
        "object",
        "string",
        "localized string",
        "vector",
        "float",
        "int",
        "codepos",
        "precodepos",
        "function",
        "stack",
        "animation",
        "developer codepos",
        "include codepos",
        "thread",
        "thread",
        "thread",
        "thread",
        "struct",
        "removed entity",
        "entity",
        "array",
        "removed thread"};

// Original: 0x08215780
// Last element must be zeroed.
// Warning: max 64 elements in array. Hardcoded into VM structures.
// How to understand?
//   name is the name of script field.
//   offset is the address in gclient_t structure.
//   type is the type of variable.
//   setter is the function pointer to be called when trying to set variable (self.statusicon = "something")
//   getter is the function pointer to be called when trying to get variable (iprintln(self.statusicon))
// Some notes: (based on Scr_GetClientField, 0x080C89D8)
//   - if offset is 0 then setter/getter should be set. Offset 0 still can be used (rarely).
//     getter/setter will be called with passed client_field_t value.
//   - if getter/setter is 0 then field will be get from/set to specified offset and type from client_t structure.
client_fields_t fields[] = {
    {"name", 0, F_LSTRING, ClientScr_ReadOnly, ClientScr_GetName},
    {"sessionteam", 0, F_STRING, ClientScr_SetSessionTeam, ClientScr_GetSessionTeam},
    {"sessionstate", 0, F_STRING, ClientScr_SetSessionState, ClientScr_GetSessionState},
    {"maxhealth", 0x2FE8, F_INT, ClientScr_SetMaxHealth, 0},
    {"score", 0x2F78, F_INT, ClientScr_SetScore, 0},
    {"deaths", 0x2F7C, F_INT, 0, 0},
    {"statusicon", 0, F_STRING, ClientScr_SetStatusIcon, ClientScr_GetStatusIcon},
    {"headicon", 0, F_STRING, ClientScr_SetHeadIcon, ClientScr_GetHeadIcon},
    {"headiconteam", 0, F_STRING, ClientScr_SetHeadIconTeam, ClientScr_GetHeadIconTeam},
    {"kills", 0x2F80, F_INT, 0, 0},
    {"assists", 0x2F84, F_INT, 0, 0},
    {"hasradar", 0x3178, F_INT, 0, 0},
    {"spectatorclient", 0x2F68, F_INT, ClientScr_SetSpectatorClient, ClientScr_GetSpectatorClient},
    {"killcamentity", 0x2F6C, F_INT, ClientScr_SetKillcamEntity, 0},
    {"archivetime", 0x2F74, F_FLOAT, ClientScr_SetArchiveTime, ClientScr_GetArchiveTime},
    {"psoffsettime", 0x3070, F_INT, ClientScr_SetPSOffsetTime, ClientScr_GetPSOffsetTime},
    {"pers", 0x2F88, F_MODEL, ClientScr_ReadOnly, 0},
    {0, 0, 0, 0, 0}
};

// Original: 0x082202A0
// This array used in patch inside cod4loader routines.
// If you have decompiled one of mentioned there functions, make sure
//   to remove patch.
// Appears to have max 16384 elements.
ent_field_t fields_1[] = {
    {"classname", 0x170, F_STRING, Scr_ReadOnlyField},
    {"origin", 0x13C, F_VECTOR, Scr_SetOrigin},
    {"model", 0x168, F_MODEL, Scr_ReadOnlyField},
    {"spawnflags", 0x17C, F_INT, Scr_ReadOnlyField},
    {"target", 0x172, F_STRING, 0},
    {"targetname", 0x174, F_STRING, 0},
    {"count", 0x1AC, F_INT, 0},
    {"health", 0x1A0, F_INT, Scr_SetHealth},
    {"dmg", 0x1A8, F_INT, 0},
    {"angles", 0x148, F_VECTOR, Scr_SetAngles},
    {0, 0, 0, 0}
};

ent_field_t* __internalGet_fields_1()
{
    return fields_1;
}

void Scr_AddStockFunctions()
{
    Scr_AddFunction("createprintchannel", (void *)0x80bf832, 0);
    Scr_AddFunction("setprintchannel", (void *)0x80bf75c, 0);
    Scr_AddFunction("print", (void *)0x80bf706, 0);
    Scr_AddFunction("println", (void *)0x80c267e, 1);
    Scr_AddFunction("iprintln", (void *)0x80c2b8a, 0);
    Scr_AddFunction("iprintlnbold", (void *)0x80c2c14, 0);
    Scr_AddFunction("print3d", (void *)0x80c0c7e, 0);
    Scr_AddFunction("line", (void *)0x80bac00, 1);
    Scr_AddFunction("logstring", (void *)0x80bac06, 0);
    Scr_AddFunction("getent", (void *)0x80c7c72, 0);
    Scr_AddFunction("getentarray", (void *)0x80c7b44, 0);
    Scr_AddFunction("spawn", /* (void*)0x80bf638 */ GScr_Spawn, 0);
    //	Scr_AddFunction("spawnvehicle", GScr_SpawnVehicle, 0);
    Scr_AddFunction("spawnplane", (void *)0x80c0fde, 0);
    Scr_AddFunction("spawnturret", (void *)0x80c0f52, 0);
    Scr_AddFunction("precacheturret", (void *)0x80bcd46, 0);
    Scr_AddFunction("spawnstruct", (void *)0x815f09a, 0);
    Scr_AddFunction("spawnhelicopter", GScr_SpawnHelicopter, 0);
    Scr_AddFunction("assert", (void *)0x80bb0fc, 1);
    Scr_AddFunction("assertex", (void *)0x80bb2e0, 1);
    Scr_AddFunction("assertmsg", (void *)0x80bb2b4, 1);
    Scr_AddFunction("isdefined", (void *)0x80bbf2c, 0);
    Scr_AddFunction("isstring", (void *)0x80bbf06, 0);
    Scr_AddFunction("isalive", (void *)0x80bbeaa, 0);
    Scr_AddFunction("getdvar", GScr_GetCvar, 0);
    Scr_AddFunction("getdvarint", GScr_GetCvarInt, 0);
    Scr_AddFunction("getdvarfloat", GScr_GetCvarFloat, 0);
    Scr_AddFunction("setdvar", GScr_SetCvar, 0);
    Scr_AddFunction("gettime", (void *)0x80bb514, 0);
    Scr_AddFunction("getentbynum", (void *)0x80bbf96, 0);
    Scr_AddFunction("getweaponmodel", (void *)0x80bf490, 0);
    Scr_AddFunction("getanimlength", (void *)0x80bf416, 0);
    Scr_AddFunction("animhasnotetrack", (void *)0x80bf3aa, 0);
    Scr_AddFunction("getnotetracktimes", (void *)0x80bf346, 0);
    Scr_AddFunction("getbrushmodelcenter", (void *)0x80c199a, 0);
    Scr_AddFunction("objective_add", (void *)0x80c2234, 0);
    Scr_AddFunction("objective_delete", (void *)0x80c1da4, 0);
    Scr_AddFunction("objective_state", (void *)0x80c210a, 0);
    Scr_AddFunction("objective_icon", (void *)0x80be226, 0);
    Scr_AddFunction("objective_position", (void *)0x80c17ca, 0);
    Scr_AddFunction("objective_onentity", (void *)0x80c1716, 0);
    Scr_AddFunction("objective_current", (void *)0x80bef76, 0);
    Scr_AddFunction("missile_createattractorent", (void *)0x8093486, 0);
    Scr_AddFunction("missile_createattractororigin", (void *)0x8096c28, 0);
    Scr_AddFunction("missile_createrepulsorent", (void *)0x8096b5c, 0);
    Scr_AddFunction("missile_createrepulsororigin", (void *)0x8096a80, 0);
    Scr_AddFunction("missile_deleteattractor", (void *)0x80933b0, 0);
    Scr_AddFunction("bullettrace", (void *)0x80c65fa, 0);
    Scr_AddFunction("bullettracepassed", (void *)0x80bee92, 0);
    Scr_AddFunction("sighttracepassed", (void *)0x80c0198, 0);
    Scr_AddFunction("physicstrace", (void *)0x80be7b2, 0);
    Scr_AddFunction("playerphysicstrace", (void *)0x80c1e6a, 0);
    Scr_AddFunction("getmovedelta", (void *)0x80bec78, 0);
    Scr_AddFunction("getangledelta", (void *)0x80bed82, 0);
    Scr_AddFunction("getnorthyaw", (void *)0x80c1f0e, 0);
    Scr_AddFunction("randomint", (void *)0x80bec22, 0);
    Scr_AddFunction("randomfloat", (void *)0x80beb8a, 0);
    Scr_AddFunction("randomintrange", (void *)0x80bebb6, 0);
    Scr_AddFunction("randomfloatrange", (void *)0x80beb12, 0);
    Scr_AddFunction("sin", (void *)0x80beae6, 0);
    Scr_AddFunction("cos", (void *)0x80beaba, 0);
    Scr_AddFunction("tan", (void *)0x80bda00, 0);
    Scr_AddFunction("asin", (void *)0x80bea50, 0);
    Scr_AddFunction("acos", (void *)0x80be9e6, 0);
    Scr_AddFunction("atan", (void *)0x80be9ba, 0);
    Scr_AddFunction("int", (void *)0x80c1f56, 0);
    Scr_AddFunction("abs", (void *)0x80bd9e2, 0);
    Scr_AddFunction("min", (void *)0x80bd9a2, 0);
    Scr_AddFunction("max", (void *)0x80bd962, 0);
    Scr_AddFunction("floor", (void *)0x80bd92c, 0);
    Scr_AddFunction("ceil", (void *)0x80bd8f6, 0);
    Scr_AddFunction("sqrt", (void *)0x80be97e, 0);
    Scr_AddFunction("vectorfromlinetopoint", (void *)0x80c19fc, 0);
    Scr_AddFunction("pointonsegmentnearesttopoint", (void *)0x80c1c58, 0);
    Scr_AddFunction("distance", (void *)0x80c23dc, 0);
    Scr_AddFunction("distance2d", (void *)0x80be934, 0);
    Scr_AddFunction("distancesquared", (void *)0x80c2016, 0);
    Scr_AddFunction("length", (void *)0x80bde88, 0);
    Scr_AddFunction("lengthsquared", (void *)0x80c1c1c, 0);
    Scr_AddFunction("closer", (void *)0x80c206e, 0);
    Scr_AddFunction("vectordot", (void *)0x80c1bca, 0);
    Scr_AddFunction("vectornormalize", (void *)0x80c69aa, 0);
    Scr_AddFunction("vectortoangles", (void *)0x80be762, 0);
    Scr_AddFunction("vectorlerp", (void *)0x80be6da, 0);
    Scr_AddFunction("vectoradd", GScr_VectorAdd, 0);
    Scr_AddFunction("anglestoup", (void *)0x80be8ea, 0);
    Scr_AddFunction("anglestoright", (void *)0x80be8a0, 0);
    Scr_AddFunction("anglestoforward", (void *)0x80be856, 0);
    Scr_AddFunction("combineangles", (void *)0x80be652, 0);
    Scr_AddFunction("issubstr", (void *)0x80be60e, 0);
    Scr_AddFunction("getsubstr", (void *)0x80bb1de, 0);
    Scr_AddFunction("tolower", (void *)0x80be59c, 0);
    Scr_AddFunction("strtok", (void *)0x80be3d0, 0);
    Scr_AddFunction("musicplay", (void *)0x80bbe0c, 0);
    Scr_AddFunction("musicstop", (void *)0x80c1642, 0);
    Scr_AddFunction("soundfade", (void *)0x80bbd94, 0);
    Scr_AddFunction("ambientplay", (void *)0x80c1536, 0);
    Scr_AddFunction("ambientstop", (void *)0x80c146c, 0);
    Scr_AddFunction("precachemodel", (void *)0x80be37c, 0);
    Scr_AddFunction("precacheshellshock", (void *)0x80be308, 0);
    Scr_AddFunction("precacheitem", (void *)0x80be28a, 0);
    Scr_AddFunction("precacheshader", (void *)0x80be126, 0);
    Scr_AddFunction("precachestring", Scr_PrecacheString_f, 0);
    Scr_AddFunction("precacherumble", (void *)0x80bb010, 0);
    Scr_AddFunction("loadfx", (void *)0x80be064, 0);
    Scr_AddFunction("playfx", (void *)0x80c6a38, 0);
    Scr_AddFunction("playfxontag", (void *)0x80bdec6, 0);
    Scr_AddFunction("playloopedfx", (void *)0x80c6fe8, 0);
    Scr_AddFunction("spawnfx", (void *)0x80c6d1e, 0);
    Scr_AddFunction("triggerfx", (void *)0x80c13b0, 0);
    Scr_AddFunction("physicsexplosionsphere", (void *)0x80bd00e, 0);
    Scr_AddFunction("physicsexplosioncylinder", (void *)0x80bcd78, 0);
    Scr_AddFunction("physicsjolt", (void *)0x80bcf16, 0);
    Scr_AddFunction("physicsjitter", (void *)0x80bce34, 0);
    Scr_AddFunction("setexpfog", (void *)0x80bdc1e, 0);
    Scr_AddFunction("grenadeexplosioneffect", (void *)0x80c0d86, 0);
    Scr_AddFunction("radiusdamage", (void *)0x80bdc12, 0);
    Scr_AddFunction("setplayerignoreradiusdamage", (void *)0x80bb0e2, 0);
    Scr_AddFunction("getnumparts", (void *)0x80c00d8, 0);
    Scr_AddFunction("getpartname", (void *)0x80c0104, 0);
    Scr_AddFunction("earthquake", (void *)0x80c112e, 0);
    Scr_AddFunction("newhudelem", GScr_NewHudElem, 0);
    Scr_AddFunction("newclienthudelem", GScr_NewClientHudElem, 0);
    Scr_AddFunction("newteamhudelem", (void *)0x808f95e, 0);
    Scr_AddFunction("resettimeout", (void *)0x815d050, 0);
    Scr_AddFunction("weaponfiretime", (void *)0x80bda62, 0);
    Scr_AddFunction("isweaponcliponly", (void *)0x80bd8b8, 0);
    Scr_AddFunction("isweapondetonationtimed", (void *)0x80bd59e, 0);
    Scr_AddFunction("weaponclipsize", (void *)0x80bd710, 0);
    Scr_AddFunction("weaponissemiauto", (void *)0x80bd6c0, 0);
    Scr_AddFunction("weaponisboltaction", (void *)0x80bd676, 0);
    Scr_AddFunction("weapontype", (void *)0x80bd866, 0);
    Scr_AddFunction("weaponclass", (void *)0x80bd81a, 0);
    Scr_AddFunction("weaponinventorytype", (void *)0x80bd7c8, 0);
    Scr_AddFunction("weaponstartammo", (void *)0x80bd62c, 0);
    Scr_AddFunction("weaponmaxammo", (void *)0x80bd5e2, 0);
    Scr_AddFunction("weaponaltweaponname", (void *)0x80bd75a, 0);
    Scr_AddFunction("isplayer", (void *)0x80bbe50, 0);
    Scr_AddFunction("isplayernumber", (void *)0x80bb4b6, 0);
    Scr_AddFunction("setwinningplayer", (void *)0x80bd504, 0);
    Scr_AddFunction("setwinningteam", (void *)0x80bd412, 0);
    Scr_AddFunction("announcement", (void *)0x80c0758, 0);
    Scr_AddFunction("clientannouncement", (void *)0x80c06d4, 0);
    Scr_AddFunction("getteamscore", (void *)0x80bbac0, 0);
    Scr_AddFunction("setteamscore", (void *)0x80bbcdc, 0);
    Scr_AddFunction("setclientnamemode", (void *)0x80bb88e, 0);
    Scr_AddFunction("updateclientnames", (void *)0x80bd356, 0);
    Scr_AddFunction("getteamplayersalive", (void *)0x80bb9f8, 0);
    Scr_AddFunction("objective_team", (void *)0x80bbb3a, 0);
    Scr_AddFunction("logprint", (void *)0x80bd1ac, 0);
    Scr_AddFunction("worldentnumber", (void *)0x80bb500, 0);
    Scr_AddFunction("obituary", (void *)0x80bd0ca, 0);
    Scr_AddFunction("positionwouldtelefrag", (void *)0x80c18a6, 0);
    Scr_AddFunction("getstarttime", (void *)0x80bb4ea, 0);
    Scr_AddFunction("precachemenu", (void *)0x80bcc4e, 0);
    Scr_AddFunction("precachestatusicon", (void *)0x80bc932, 0);
    Scr_AddFunction("precacheheadicon", (void *)0x80bc614, 0);
    Scr_AddFunction("precachelocationselector", (void *)0x80bc4a6, 0);
    Scr_AddFunction("map_restart", (void *)0x80bb6d2, 0);
    Scr_AddFunction("exitlevel", (void *)0x80bbfe2, 0);
    Scr_AddFunction("addtestclient", GScr_SpawnBot, 0);
    Scr_AddFunction("removetestclient", GScr_RemoveBot, 0);
    Scr_AddFunction("removealltestclients", GScr_RemoveAllBots, 0);
    Scr_AddFunction("makedvarserverinfo", GScr_MakeCvarServerInfo, 0);
    Scr_AddFunction("setarchive", (void *)0x80bb034, 0);
    Scr_AddFunction("allclientsprint", (void *)0x80bbc8c, 0);
    Scr_AddFunction("clientprint", (void *)0x80bbc20, 0);
    Scr_AddFunction("mapexists", (void *)0x80bb556, 0);
    Scr_AddFunction("isvalidgametype", (void *)0x80c25f8, 0);
    Scr_AddFunction("matchend", (void *)0x80bb04c, 0);
    Scr_AddFunction("setplayerteamrank", (void *)0x80bb052, 0);
    Scr_AddFunction("sendranks", (void *)0x80bb058, 0);
    Scr_AddFunction("endparty", (void *)0x80bb05e, 0);
    Scr_AddFunction("setteamradar", (void *)0x80bb958, 0);
    Scr_AddFunction("getteamradar", (void *)0x80bb8d8, 0);
    Scr_AddFunction("getassignedteam", (void *)0x80bb48e, 0);
    Scr_AddFunction("setvotestring", (void *)0x80bb7e0, 0);
    Scr_AddFunction("setvotetime", (void *)0x80bb73e, 0);
    Scr_AddFunction("setvoteyescount", (void *)0x80bb360, 0);
    Scr_AddFunction("setvotenocount", (void *)0x80bb320, 0);
    Scr_AddFunction("openfile", GScr_FS_FOpen, 0);
    Scr_AddFunction("closefile", GScr_FS_FClose, 0);
    Scr_AddFunction("fprintln", GScr_FS_WriteLine, 0);
    Scr_AddFunction("fprintfields", (void *)0x80c1c16, 1);
    Scr_AddFunction("freadln", GScr_FS_ReadLine, 0);
    Scr_AddFunction("fgetarg", (void *)0x80bb02e, 1);
    Scr_AddFunction("kick", GScr_KickClient, 0);
    Scr_AddFunction("ban", GScr_BanClient, 0);
    Scr_AddFunction("map", (void *)0x80bb628, 0);
    Scr_AddFunction("playrumbleonposition", (void *)0x80bb03a, 0);
    Scr_AddFunction("playrumblelooponposition", (void *)0x80bb040, 0);
    Scr_AddFunction("stopallrumbles", (void *)0x80bb046, 0);
    Scr_AddFunction("soundexists", (void *)0x80bb52a, 0);
    Scr_AddFunction("issplitscreen", (void *)0x80bb4a2, 0);
    Scr_AddFunction("setminimap", (void *)0x80c2436, 0);
    Scr_AddFunction("setmapcenter", (void *)0x80bb450, 0);
    Scr_AddFunction("setgameendtime", (void *)0x80bb41e, 0);
    Scr_AddFunction("getarraykeys", (void *)0x80bb3c4, 0);
    Scr_AddFunction("searchforonlinegames", (void *)0x80bb06a, 0);
    Scr_AddFunction("quitlobby", (void *)0x80bb070, 0);
    Scr_AddFunction("quitparty", (void *)0x80bb076, 0);
    Scr_AddFunction("startparty", (void *)0x80bb07c, 0);
    Scr_AddFunction("startprivatematch", (void *)0x80bb082, 0);
    Scr_AddFunction("visionsetnaked", (void *)0x80c12f8, 0);
    Scr_AddFunction("visionsetnight", (void *)0x80c1240, 0);
    Scr_AddFunction("tablelookup", (void *)0x80bb122, 0);
    Scr_AddFunction("tablelookupistring", (void *)0x80c1b0e, 0);
    Scr_AddFunction("endlobby", (void *)0x80bb088, 0);
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
    Scr_AddFunction("copystr", GScr_CopyString, 0);
    Scr_AddFunction("strrepl", GScr_StrRepl, 0);
    Scr_AddFunction("strtokbylen", GScr_StrTokByLen, 0);
    Scr_AddFunction("exec", GScr_CbufAddText, 0);
    Scr_AddFunction("execex", GScr_CbufAddTextEx, 0);
    Scr_AddFunction("sha256", GScr_SHA256, 0);
    Scr_AddFunction("addscriptcommand", GScr_AddScriptCommand, 0);
    Scr_AddFunction("isarray", Scr_IsArray_f, qfalse); // http://zeroy.com/script/variables/isarray.htm
                                                       /*Scr_AddFunction("codepostest", GScr_TestCodePos, 0);*/
    Scr_AddFunction("iscvardefined", GScr_IsCvarDefined, 0);
    Scr_AddFunction("arraytest", GScr_ArrayTest, 1);
    Scr_AddFunction("base64encode", GScr_Base64Encode, 0);
    Scr_AddFunction("base64decode", GScr_Base64Decode, 0);
    Scr_AddFunction("isentity", GScr_IsEntity, 0);
    Scr_AddFunction("isvector", GScr_IsVector, 0);
    Scr_AddFunction("isstring", GScr_IsString, 0);
    Scr_AddFunction("isfloat", GScr_IsFloat, 0);
    Scr_AddFunction("isint", GScr_IsInt, 0);
    Scr_AddFunction("float", GScr_Float, 0); // like int(...) but to convert to floating point number.
}

void Scr_AddStockMethods()
{
    //PlayerCmd
    Scr_AddMethod("getpower", PlayerCmd_GetPower, 0);
    Scr_AddMethod("setpower", PlayerCmd_SetPower, 0);
    Scr_AddMethod("setuid", PlayerCmd_SetUid, 0);
    Scr_AddMethod("giveweapon", (void *)0x80abc48, 0);
    Scr_AddMethod("takeweapon", (void *)0x80abbb4, 0);
    Scr_AddMethod("takeallweapons", (void *)0x80abb0e, 0);
    Scr_AddMethod("getcurrentweapon", (void *)0x80ad386, 0);
    Scr_AddMethod("getcurrentoffhand", (void *)0x80aa3f2, 0);
    Scr_AddMethod("hasweapon", (void *)0x80a9098, 0);
    Scr_AddMethod("switchtoweapon", (void *)0x80ac484, 0);
    Scr_AddMethod("switchtooffhand", (void *)0x80ac37a, 0);
    Scr_AddMethod("givestartammo", (void *)0x80ac2b4, 0);
    Scr_AddMethod("givemaxammo", (void *)0x80ac1a4, 0);
    Scr_AddMethod("getfractionstartammo", (void *)0x80ac09c, 0);
    Scr_AddMethod("getfractionmaxammo", (void *)0x80abf94, 0);
    Scr_AddMethod("setorigin", (void *)0x80ace3e, 0);
    Scr_AddMethod("getvelocity", (void *)0x80ab73a, 0);
    Scr_AddMethod("setplayerangles", (void *)0x80ab7b0, 0);
    Scr_AddMethod("getplayerangles", (void *)0x80ab6c2, 0);
    Scr_AddMethod("usebuttonpressed", (void *)0x80a9b46, 0);
    Scr_AddMethod("attackbuttonpressed", (void *)0x80a9aae, 0);
    Scr_AddMethod("adsbuttonpressed", (void *)0x80a9a14, 0);
    Scr_AddMethod("meleebuttonpressed", (void *)0x80a997c, 0);
    Scr_AddMethod("fragbuttonpressed", (void *)0x80a98e2, 0);
    Scr_AddMethod("secondaryoffhandbuttonpressed", (void *)0x80a9848, 0);
    Scr_AddMethod("playerads", (void *)0x80ab916, 0);
    Scr_AddMethod("isonground", (void *)0x80a979a, 0);
    Scr_AddMethod("pingplayer", (void *)0x80a8810, 0);
    Scr_AddMethod("setviewmodel", (void *)0x80ab61a, 0);
    Scr_AddMethod("getviewmodel", (void *)0x80ab4f4, 0);
    Scr_AddMethod("setoffhandsecondaryclass", (void *)0x80a9610, 0);
    Scr_AddMethod("getoffhandsecondaryclass", (void *)0x80ab576, 0);
    Scr_AddMethod("beginlocationselection", (void *)0x80ab366, 0);
    Scr_AddMethod("endlocationselection", (void *)0x80a86b2, 0);
    Scr_AddMethod("buttonpressed", (void *)0x80a9838, 0);
    Scr_AddMethod("sayall", (void *)0x80ab296, 0);
    Scr_AddMethod("sayteam", (void *)0x80ab1c6, 0);
    Scr_AddMethod("showscoreboard", (void *)0x80ab142, 0);
    Scr_AddMethod("setspawnweapon", (void *)0x80ab052, 0);
    Scr_AddMethod("dropitem", (void *)0x80aaf2a, 0);
    Scr_AddMethod("finishplayerdamage", (void *)0x80ac58e, 0);
    Scr_AddMethod("suicide", (void *)0x80aae5c, 0);
    Scr_AddMethod("openmenu", (void *)0x80aad5c, 0);
    Scr_AddMethod("openmenunomouse", (void *)0x80aac5c, 0);
    Scr_AddMethod("closemenu", (void *)0x80a8ffa, 0);
    Scr_AddMethod("closeingamemenu", (void *)0x80a8f5c, 0);
    Scr_AddMethod("freezecontrols", (void *)0x80a89c8, 0);
    Scr_AddMethod("disableweapons", (void *)0x80a879c, 0);
    Scr_AddMethod("enableweapons", (void *)0x80a8728, 0);
    Scr_AddMethod("setreverb", (void *)0x80aa95e, 0);
    Scr_AddMethod("deactivatereverb", (void *)0x80aa848, 0);
    Scr_AddMethod("setchannelvolumes", (void *)0x80aaafe, 0);
    Scr_AddMethod("deactivatechannelvolumes", (void *)0x80aa726, 0);
    Scr_AddMethod("setweaponammoclip", (void *)0x80aa540, 0);
    Scr_AddMethod("setweaponammostock", (void *)0x80ad248, 0);
    Scr_AddMethod("getweaponammoclip", (void *)0x80aa494, 0);
    Scr_AddMethod("getweaponammostock", (void *)0x80aa638, 0);
    Scr_AddMethod("anyammoforweaponmodes", (void *)0x80aa2f8, 0);
    Scr_AddMethod("iprintln", (void *)0x80aa262, 0);
    Scr_AddMethod("iprintlnbold", (void *)0x80aa1cc, 0);
    Scr_AddMethod("spawn", PlayerCmd_spawn, 0);
    Scr_AddMethod("setentertime", (void *)0x80a8a46, 0);
    Scr_AddMethod("cloneplayer", (void *)0x80acf50, 0);
    Scr_AddMethod("setclientdvar", (void *)0x80a9f74, 0);
    Scr_AddMethod("setclientdvars", (void *)0x80a9d56, 0);
    Scr_AddMethod("playlocalsound", (void *)0x80a9c9a, 0);
    Scr_AddMethod("stoplocalsound", (void *)0x80a9bde, 0);
    Scr_AddMethod("istalking", (void *)0x80a96f8, 0);
    Scr_AddMethod("allowspectateteam", (void *)0x80a9518, 0);
    Scr_AddMethod("getguid", (void *)PlayerCmd_GetGuid, 0);
    Scr_AddMethod("getuid", PlayerCmd_GetUid, 0);
    Scr_AddMethod("getsteamid", PlayerCmd_GetSteamID, 0);
    Scr_AddMethod("getplayerid", PlayerCmd_GetPlayerID, 0);
    Scr_AddMethod("getsteamid64", PlayerCmd_GetSteamID, 0);
    Scr_AddMethod("getplayerid64", PlayerCmd_GetPlayerID, 0);
    Scr_AddMethod("getxuid", (void *)0x80a9418, 0);
    Scr_AddMethod("allowads", (void *)0x80ab852, 0);
    Scr_AddMethod("allowjump", (void *)0x80a8932, 0);
    Scr_AddMethod("allowsprint", (void *)0x80a889c, 0);
    Scr_AddMethod("setspreadoverride", (void *)0x80a9318, 0);
    Scr_AddMethod("resetspreadoverride", (void *)0x80a8bbe, 0);
    Scr_AddMethod("setactionslot", (void *)0x80a9156, 0);
    Scr_AddMethod("getweaponslist", (void *)0x80abeba, 0);
    Scr_AddMethod("getweaponslistprimaries", (void *)0x80abdd0, 0);
    Scr_AddMethod("setperk", (void *)0x80ad4ae, 0);
    Scr_AddMethod("hasperk", (void *)0x80ad576, 0);
    Scr_AddMethod("clearperks", (void *)0x80ad428, 0);
    Scr_AddMethod("unsetperk", (void *)0x80ad634, 0);
    Scr_AddMethod("updatescores", (void *)0x80a8e50, 0);
    Scr_AddMethod("updatedmscores", (void *)0x80a8c5e, 0);
    Scr_AddMethod("setrank", (void *)0x80a8ac4, 0);
    Scr_AddMethod("getuserinfo", PlayerCmd_GetUserinfo, 0);
    Scr_AddMethod("getping", PlayerCmd_GetPing, 0);
    //HUD Functions
    Scr_AddMethod("settext", HECmd_SetText, 0);
    Scr_AddMethod("clearalltextafterhudelem", (void *)0x808f768, qtrue);
    Scr_AddMethod("setshader", (void *)0x808e52e, 0);
    Scr_AddMethod("settargetent", (void *)0x808f8ea, 0);
    Scr_AddMethod("cleartargetent", (void *)0x808f718, 0);
    Scr_AddMethod("settimer", (void *)0x808f702, 0);
    Scr_AddMethod("settimerup", (void *)0x808f6ec, 0);
    Scr_AddMethod("settenthstimer", (void *)0x808f6d6, 0);
    Scr_AddMethod("settenthstimerup", (void *)0x808f6c0, 0);
    Scr_AddMethod("setclock", (void *)0x808f53e, 0);
    Scr_AddMethod("setclockup", (void *)0x808f528, 0);
    Scr_AddMethod("setvalue", (void *)0x808f1ac, 0);
    Scr_AddMethod("setwaypoint", (void *)0x808f116, 0);
    Scr_AddMethod("fadeovertime", (void *)0x808efe6, 0);
    Scr_AddMethod("scaleovertime", (void *)0x808ee86, 0);
    Scr_AddMethod("moveovertime", (void *)0x808ed56, 0);
    Scr_AddMethod("reset", (void *)0x808ebfa, 0);
    Scr_AddMethod("destroy", Scr_Destroy_f, 0);
    Scr_AddMethod("setpulsefx", (void *)0x808feb8, 0);
    Scr_AddMethod("setplayernamestring", (void *)0x808ea9e, 0);
    Scr_AddMethod("setmapnamestring", (void *)0x808e85a, 0);
    Scr_AddMethod("setgametypestring", (void *)0x808e976, 0);
    //Scr Cmd Functions
    Scr_AddMethod("attach", (void *)0x80c4360, 0);
    Scr_AddMethod("detach", (void *)0x80c3950, 0);
    Scr_AddMethod("detachall", (void *)0x80c3904, 0);
    Scr_AddMethod("getattachsize", (void *)0x80c38a8, 0);
    Scr_AddMethod("getattachmodelname", (void *)0x80c381a, 0);
    Scr_AddMethod("getattachtagname", (void *)0x80c3794, 0);
    Scr_AddMethod("getattachignorecollision", (void *)0x80c3702, 0);
    Scr_AddMethod("getammocount", (void *)0x80c4c3c, 0);
    Scr_AddMethod("getclanid", (void *)0x80bb2a4, 0);
    Scr_AddMethod("getclanname", (void *)0x80bb294, 0);
    Scr_AddMethod("hidepart", (void *)0x80c356e, 0);
    Scr_AddMethod("showpart", (void *)0x80c33d8, 0);
    Scr_AddMethod("showallparts", (void *)0x80c331c, 0);
    Scr_AddMethod("linkto", (void *)0x80c30a6, 0);
    Scr_AddMethod("unlink", (void *)0x80c305a, 0);
    Scr_AddMethod("enablelinkto", (void *)0x80c2fb8, 0);
    Scr_AddMethod("getorigin", (void *)0x80c2f54, 0);
    Scr_AddMethod("geteye", (void *)0x80c2eea, 0);
    Scr_AddMethod("useby", (void *)0x80c2e52, 0);
    Scr_AddMethod("setstablemissile", (void *)0x80c2c9e, 0);
    Scr_AddMethod("istouching", (void *)0x80c2d22, 0);
    Scr_AddMethod("playsound", (void *)0x80c6548, 0);
    Scr_AddMethod("playsoundasmaster", (void *)0x80c3e2a, 0);
    Scr_AddMethod("playsoundtoteam", (void *)0x80c3edc, 0);
    Scr_AddMethod("playsoundtoplayer", (void *)0x80c26ea, 0);
    Scr_AddMethod("playloopsound", (void *)0x80c3dc0, 0);
    Scr_AddMethod("stoploopsound", (void *)0x80c3d68, 0);
    Scr_AddMethod("playrumbleonentity", (void *)0x80bac12, 0);
    Scr_AddMethod("playrumblelooponentity", (void *)0x80bac18, 0);
    Scr_AddMethod("stoprumble", (void *)0x80bac1e, 0);
    Scr_AddMethod("delete", (void *)0x80c3cd6, 0);
    Scr_AddMethod("setmodel", (void *)0x80c3c6c, 0);
    Scr_AddMethod("getnormalhealth", (void *)0x80c3bea, 0);
    Scr_AddMethod("setnormalhealth", (void *)0x80c3aa2, 0);
    Scr_AddMethod("show", (void *)0x80c418e, 0);
    Scr_AddMethod("hide", (void *)0x80c4138, 0);
    Scr_AddMethod("laseron", (void *)0x80c40ec, 0);
    Scr_AddMethod("laseroff", (void *)0x80c40a0, 0);
    Scr_AddMethod("showtoplayer", (void *)0x80c4252, 0);
    Scr_AddMethod("setcontents", (void *)0x80c41e4, 0);
    Scr_AddMethod("getstance", (void *)0x80c42d2, 0);
    //	Scr_AddMethod("setstance", ScrCmd_SetStance, 0);
    Scr_AddMethod("setjumpheight", PlayerCmd_SetJumpHeight, 0);
    Scr_AddMethod("setgravity", PlayerCmd_SetGravity, 0);
    Scr_AddMethod("setgroundreferenceent", PlayerCmd_SetGroundReferenceEnt, 0);
    Scr_AddMethod("setmovespeed", PlayerCmd_SetMoveSpeed, 0);
    Scr_AddMethod("setcursorhint", (void *)0x80c6348, 0);
    Scr_AddMethod("sethintstring", (void *)0x80c619e, 0);
    Scr_AddMethod("usetriggerrequirelookat", (void *)0x80c613a, 0);
    Scr_AddMethod("shellshock", (void *)0x80c4a36, 0);
    Scr_AddMethod("gettagorigin", (void *)0x80c5c12, 0);
    Scr_AddMethod("gettagangles", (void *)0x80c5b94, 0);
    Scr_AddMethod("stopshellshock", (void *)0x80c49cc, 0);
    Scr_AddMethod("setdepthoffield", (void *)0x80c46f6, 0);
    Scr_AddMethod("setviewmodeldepthoffield", (void *)0x80c4636, 0);
    Scr_AddMethod("viewkick", (void *)0x80c455c, 0);
    Scr_AddMethod("localtoworldcoords", (void *)0x80c5aac, 0);
    Scr_AddMethod("setrightarc", (void *)0x80c5a32, 0);
    Scr_AddMethod("setleftarc", (void *)0x80c59ba, 0);
    Scr_AddMethod("settoparc", (void *)0x80c5940, 0);
    Scr_AddMethod("setbottomarc", (void *)0x80c58c8, 0);
    Scr_AddMethod("radiusdamage", (void *)0x80c5e32, 0);
    Scr_AddMethod("detonate", (void *)0x80c5d46, 0);
    Scr_AddMethod("damageconetrace", (void *)0x80c5d34, 0);
    Scr_AddMethod("sightconetrace", (void *)0x80c5d22, 0);
    Scr_AddMethod("getentitynumber", (void *)0x80c60ea, 0);
    Scr_AddMethod("enablegrenadetouchdamage", (void *)0x80c6082, 0);
    Scr_AddMethod("disablegrenadetouchdamage", (void *)0x80c601a, 0);
    Scr_AddMethod("enableaimassist", (void *)0x80c5ed6, 0);
    Scr_AddMethod("disableaimassist", (void *)0x80c5e78, 0);
    Scr_AddMethod("placespawnpoint", (void *)0x80c56c6, 0);
    Scr_AddMethod("setteamfortrigger", (void *)0x80c534a, 0);
    Scr_AddMethod("clientclaimtrigger", (void *)0x80c5246, 0);
    Scr_AddMethod("clientreleasetrigger", (void *)0x80c515a, 0);
    Scr_AddMethod("releaseclaimedtrigger", (void *)0x80c50b8, 0);
    Scr_AddMethod("getstat", PlayerCmd_GetStat, 0);
    Scr_AddMethod("setstat", PlayerCmd_SetStat, 0);
    Scr_AddMethod("sendleaderboards", (void *)0x80bb064, 0);
    Scr_AddMethod("setmovespeedscale", (void *)0x80c4c0e, 0);
    Scr_AddMethod("logstring", (void *)0x80bac0c, 0);
    Scr_AddMethod("missile_settarget", (void *)0x80c5f34, 0);
    Scr_AddMethod("isonladder", (void *)0x80c5040, 0);
    Scr_AddMethod("ismantling", (void *)0x80c4fc8, 0);
    Scr_AddMethod("startragdoll", (void *)0x80c4f08, 0);
    Scr_AddMethod("isragdoll", (void *)0x80c4eb4, 0);
    Scr_AddMethod("getcorpseanim", (void *)0x80c4dfc, 0);
    Scr_AddMethod("itemweaponsetammo", (void *)0x80c4c96, 0);
    //Scr Ent Functions
    Scr_AddMethod("moveto", (void *)0x809b606, 0);
    Scr_AddMethod("movex", (void *)0x809abf2, 0);
    Scr_AddMethod("movey", (void *)0x809abd6, 0);
    Scr_AddMethod("movez", (void *)0x809abba, 0);
    Scr_AddMethod("movegravity", (void *)0x809ae2a, 0);
    Scr_AddMethod("rotateto", (void *)0x809a85e, 0);
    Scr_AddMethod("rotatepitch", (void *)0x809b8c6, 0);
    Scr_AddMethod("rotateyaw", (void *)0x809b8aa, 0);
    Scr_AddMethod("rotateroll", (void *)0x809b88e, 0);
    Scr_AddMethod("devaddpitch", (void *)0x8099f60, 0);
    Scr_AddMethod("devaddyaw", (void *)0x8099f66, 0);
    Scr_AddMethod("devaddroll", (void *)0x8099f6c, 0);
    Scr_AddMethod("vibrate", (void *)0x809bad0, 0);
    Scr_AddMethod("rotatevelocity", (void *)0x809b178, 0);
    Scr_AddMethod("solid", (void *)0x809a0ac, 0);
    Scr_AddMethod("notsolid", (void *)0x8099fd2, 0);
    Scr_AddMethod("setcandamage", (void *)0x809a19e, 0);
    Scr_AddMethod("physicslaunch", (void *)0x809afb4, 0);
    //Helicopter Functions
    Scr_AddMethod("freehelicopter", (void *)0x80ba8bc, 0);
    Scr_AddMethod("setspeed", (void *)0x809d096, 0);
    Scr_AddMethod("getspeed", (void *)0x809d070, 0);
    Scr_AddMethod("getspeedmph", (void *)0x809d044, 0);
    Scr_AddMethod("resumespeed", (void *)0x809cf4a, 0);
    Scr_AddMethod("setyawspeed", (void *)0x809ce22, 0);
    Scr_AddMethod("setmaxpitchroll", (void *)0x809cd6c, 0);
    Scr_AddMethod("setturningability", (void *)0x809d0ae, 0);
    Scr_AddMethod("setairresistance", (void *)0x809cd36, 0);
    Scr_AddMethod("sethoverparams", (void *)0x809cc24, 0);
    Scr_AddMethod("setneargoalnotifydist", (void *)0x809cb42, 0);
    Scr_AddMethod("setvehgoalpos", (void *)0x809ca7c, 0);
    Scr_AddMethod("setgoalyaw", (void *)0x809ca42, 0);
    Scr_AddMethod("cleargoalyaw", (void *)0x809ca14, 0);
    Scr_AddMethod("settargetyaw", (void *)0x809c9da, 0);
    Scr_AddMethod("cleartargetyaw", (void *)0x809c9ac, 0);
    Scr_AddMethod("setlookatent", (void *)0x809c900, 0);
    Scr_AddMethod("clearlookatent", (void *)0x809c8d2, 0);
    Scr_AddMethod("setvehweapon", (void *)0x809c890, 0);
    Scr_AddMethod("fireweapon", (void *)0x809d9e2, 0);
    Scr_AddMethod("setturrettargetvec", (void *)0x809d48a, 0);
    Scr_AddMethod("setturrettargetent", (void *)0x809d550, 0);
    Scr_AddMethod("clearturrettarget", (void *)0x809d0de, 0);
    Scr_AddMethod("setvehicleteam", (void *)0x809cb72, 0);
    Scr_AddMethod("setdamagestage", (void *)0x80ba890, 0);
    Scr_AddMethod("getgeolocation", PlayerCmd_GetGeoLocation, 0);
    Scr_AddMethod("getcountedfps", PlayerCmd_GetCountedFPS, 0);
    Scr_AddMethod("getspectatorclient", PlayerCmd_GetSpectatorClient, 0);

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
    Scr_AddMethod("aimbuttonpressed", PlayerCmd_ADSButtonPressed, 0);

    Scr_AddMethod("steamgroupmembershipquery", PlayerCmd_GetSteamGroupMembership, 0);
    Scr_AddMethod("setvelocity", PlayerCmd_SetVelocity, qfalse);

    /* Bot movement */
    Scr_AddBotsMovement();

    // Clone script_brushmodel settings to script_model.
    Scr_AddMethod("clonebrushmodeltoscriptmodel", GScr_CloneBrushModelToScriptModel, qfalse);
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
    PrecacheEntry load_buffer;

    if (!Scr_LoadScript(scriptName, &load_buffer, 0))
    {
        if (mandatory)
        {
            Com_Error(ERR_DROP, "Could not find script '%s'", scriptName);
        }
        else
        {
            Com_DPrintf("Notice: Could not find script '%s' - this part will be disabled\n", scriptName);
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
            Com_DPrintf("Notice: Could not find label '%s' in script '%s' - this part will be disabled\n", labelName, scriptName);
        }
        return 0;
    }

    return fh;
}

/**************** Mandatory *************************/
#define g_scr_data (*((g_scr_data_t *)(G_SCR_DATA_ADDR)))

typedef struct
{
    int map; //0x8583ba0
    int unk1;
    int gametype;
    int startgametype;
    int playerconnect;
    int playerdisconnect;
    int playerdamage;
    int playerkilled;
    int unk2;
    int unk3;
    int playerlaststand; //0x8583bc8
    int unkbig[1057];
    int delete; //0x8584c50
    int initstruct;
    int createstruct;
} g_scr_data_t;

int script_CallBacks_new[8];

void GScr_LoadGameTypeScript(void)
{

    /**************** Mandatory *************************/
    char gametype_path[64];

    Cvar_RegisterString("g_gametype", "dm", CVAR_LATCH | CVAR_SERVERINFO, "Current game type");

    Com_sprintf(gametype_path, sizeof(gametype_path), "maps/mp/gametypes/%s", sv_g_gametype->string);

    /* Don't raise a fatal error when we couldn't find this gametype script */
    g_scr_data.gametype = GScr_LoadScriptAndLabel(gametype_path, "main", 0);
    if (g_scr_data.gametype == 0)
    {
        Com_PrintError("Could not find script: %s\n", gametype_path);
        Com_Printf("The gametype %s is not available! Will load gametype dm\n", sv_g_gametype->string);

        Cvar_SetString(sv_g_gametype, "dm");
        Com_sprintf(gametype_path, sizeof(gametype_path), "maps/mp/gametypes/%s", sv_g_gametype->string);
        /* If we can not find gametype dm a fatal error gets raised */
        g_scr_data.gametype = GScr_LoadScriptAndLabel(gametype_path, "main", 1);
    }

    g_scr_data.startgametype = GScr_LoadScriptAndLabel("maps/mp/gametypes/_callbacksetup", "CodeCallback_StartGameType", 1);
    g_scr_data.playerconnect = GScr_LoadScriptAndLabel("maps/mp/gametypes/_callbacksetup", "CodeCallback_PlayerConnect", 1);
    g_scr_data.playerdisconnect = GScr_LoadScriptAndLabel("maps/mp/gametypes/_callbacksetup", "CodeCallback_PlayerDisconnect", 1);
    g_scr_data.playerdamage = GScr_LoadScriptAndLabel("maps/mp/gametypes/_callbacksetup", "CodeCallback_PlayerDamage", 1);
    g_scr_data.playerkilled = GScr_LoadScriptAndLabel("maps/mp/gametypes/_callbacksetup", "CodeCallback_PlayerKilled", 1);
    g_scr_data.playerlaststand = GScr_LoadScriptAndLabel("maps/mp/gametypes/_callbacksetup", "CodeCallback_PlayerLastStand", 1);

    /**************** Additional *************************/
    script_CallBacks_new[SCR_CB_SCRIPTCOMMAND] = GScr_LoadScriptAndLabel("maps/mp/gametypes/_callbacksetup", "CodeCallback_ScriptCommand", 0);
}

void GScr_AddFieldsForEntity()
{
    int i = 0;
    ent_field_t *iterator = fields_1;
    while(iterator->name)
    {
        Scr_AddClassField(0, iterator->name, i);
        ++i;
        ++iterator;
    }
}

void GScr_AddFieldsForClient()
{
    int i = 0;
    client_fields_t *iterator = fields;
    while(iterator->name)
    {
        Scr_AddClassField(0, iterator->name, 0xc000 + i);
        ++i;
        ++iterator;
    }
}
/*

Bug in array - don't use!

void Scr_GetClientField(gclient_t* gcl, int num)
{

    client_fields_t *field = (client_fields_t *)0x8215780;

    field = &field[num];
//    client_fields_t *field = &clientField[num];


    if(field->getfun)

        field->getfun(gcl, field);

    else

        Scr_GetGenericField(gcl, field->type, field->val1);

}


void Scr_SetClientField(gclient_t* gcl, int num)
{
    client_fields_t *field = (client_fields_t *)0x8215780;

    field = &field[num];

//    client_fields_t *field = &clientField[num];

    if(field->setfun)

        field->setfun(gcl, field);

    else

        Scr_SetGenericField(gcl, field->type, field->val1);

}
*/

void __cdecl GScr_LoadScripts(void)
{
    char mappath[MAX_QPATH];
    cvar_t *mapname;
    int i;

    Scr_BeginLoadScripts();
    Scr_InitFunctions();

    g_scr_data.delete = GScr_LoadScriptAndLabel("codescripts/delete", "main", 1);
    g_scr_data.initstruct = GScr_LoadScriptAndLabel("codescripts/struct", "initstructs", 1);
    g_scr_data.createstruct = GScr_LoadScriptAndLabel("codescripts/struct", "createstruct", 1);

    GScr_LoadGameTypeScript();

    mapname = Cvar_RegisterString("mapname", "", CVAR_LATCH | CVAR_SYSTEMINFO, "The current map name");

    Com_sprintf(mappath, sizeof(mappath), "maps/mp/%s", mapname->string);

    g_scr_data.map = GScr_LoadScriptAndLabel(mappath, "main", qfalse);

    for (i = 0; i < 4; ++i)
        Scr_SetClassMap(i);

    GScr_AddFieldsForEntity();
    GScr_AddFieldsForClient();
    GScr_AddFieldsForHudElems();
    GScr_AddFieldsForRadiant();
    Scr_EndLoadScripts();
}

typedef struct
{
    int var_08; //0x895bf08
    int unk[397];
    int var_01;          //0x895c540
    int var_02;          //0x895c544
    unsigned int var_03; //0x895c548
    unsigned int var_04; //0x895c54c
    int var_05;
    int var_06;
    char arrayunk[0x20000];
    char *var_10;            //0x897c558
    void *scr_buffer_handle; //0x897c55c
    int unk2[198039];
    char *script_filepath; //0x8a3dbbc
    int var_12;            //0x8a3dbc0
} scrStruct_t;

#define scrStruct (*((scrStruct_t *)(SCRSTRUCT_ADDR)))
#define MAX_CALLSCRIPTSTACKDEPTH 200

__cdecl unsigned int Scr_LoadScript(const char *scriptname, PrecacheEntry *precache, int iarg_02)
{

    sval_u result;

    char filepath[MAX_QPATH];
    char *old_script_filepath;
    void *scr_buffer_handle;

    int old_var12;
    int old_var08;
    unsigned int handle;
    unsigned int variable;
    unsigned int object;

    int i;
    static unsigned int callScriptStackPtr = 0;
    static char callScriptStackNames[MAX_QPATH * (MAX_CALLSCRIPTSTACKDEPTH + 1)];

    Q_strncpyz(&callScriptStackNames[MAX_QPATH * callScriptStackPtr], scriptname, MAX_QPATH);

    if (callScriptStackPtr >= MAX_CALLSCRIPTSTACKDEPTH)
    {
        Com_Printf("Called too many scripts in chain\nThe scripts are:\n");
        for (i = MAX_CALLSCRIPTSTACKDEPTH; i >= 0; --i)
        {
            Com_Printf("*%d: %s\n", i, &callScriptStackNames[MAX_QPATH * i]);
        }
        Com_Error(ERR_FATAL, "CallscriptStack overflowed");
        return 0;
    }

    ++callScriptStackPtr;

    handle = Scr_CreateCanonicalFilename(scriptname);

    if (FindVariable(scrStruct.var_03, handle))
    {
        --callScriptStackPtr;

        SL_RemoveRefToString(handle);
        variable = FindVariable(scrStruct.var_04, handle);

        if (variable)
        {
            return FindObject(variable);
        }
        return 0;
    }
    else
    {

        variable = GetNewVariable(scrStruct.var_03, handle);

        SL_RemoveRefToString(handle);

        old_var12 = scrStruct.var_12;

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

        old_var08 = scrStruct.var_08;
        scrStruct.var_08 = 0;
        scrStruct.var_02 = 0;
        Scr_InitAllocNode();
        old_script_filepath = scrStruct.script_filepath;
        scrStruct.script_filepath = filepath;
        scrStruct.var_10 = "+";
        scrStruct.scr_buffer_handle = scr_buffer_handle;
        ScriptParse(&result, 0);
        object = GetObjectA(GetVariable(scrStruct.var_04, handle));

        ScriptCompile(result, object, variable, precache, iarg_02);

        scrStruct.script_filepath = old_script_filepath;
        scrStruct.var_12 = old_var12;
        scrStruct.var_08 = old_var08;

        --callScriptStackPtr;

        return object;
    }
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

//Was only needed to extract the arrays
/*
void GetVirtualFunctionArray(){

    char buffer[1024*1024];
    char line[128];
    int i;
    char *funname;
    xfunction_t funaddr;
    int funtype;
    v_function_t *ptr;

    Com_Memset(buffer, 0, sizeof(buffer));

    for(i = 0, ptr = (v_function_t*)0x821c620; ptr->offset != NULL && i < 25; ptr++, i++){

    funname = ptr->name;
    funaddr = ptr->offset;
    funtype = ptr->developer;

    Com_sprintf(line, sizeof(line), "\t{\"%s\", (void*)%p, %x},\n", funname, funaddr, funtype);
    Q_strcat(buffer, sizeof(buffer), line);

    }

    FS_WriteFile("array.txt", buffer, strlen(buffer));
    Com_Quit_f();
}
*/

/*
void GetVirtualFunctionArray(){

    char buffer[1024*1024];
    char line[128];
    int i;
    char *funname;
    xfunction_t funaddr;
    int funtype;
    v_function_t *ptr;

    Com_Memset(buffer, 0, sizeof(buffer));

    for(i = 0, ptr = (v_function_t*)0x826e060; ptr->offset != NULL; ptr++, i++){

    funname = ptr->name;
    funaddr = ptr->offset;
    funtype = ptr->developer;

    Com_sprintf(line, sizeof(line), "\tScr_AddFunction(\"%s\", (void*)%p, %i);\n", funname, funaddr, funtype);
    Q_strcat(buffer, sizeof(buffer), line);

    }

    FS_WriteFile("array.txt", buffer, strlen(buffer));
    Com_Quit_f();
}

typedef struct{
    char *name;
    int offset;
    int bits;
    int zero;
}subnetlist_t;


typedef struct{
    subnetlist_t *sub;
    int size;
}netlist_t;




void GetDeltaEntArray(){

    char buffer[1024*1024];
    char line[128];
    netlist_t *ptr;
    subnetlist_t *subptr;
    int i, j;

    Com_Memset(buffer, 0, sizeof(buffer));

    for(j=0, ptr = (netlist_t*)0x82293c0; ptr->sub != NULL ; ptr++, j++){

    subptr = ptr->sub;
    Com_sprintf(line, sizeof(line), "netField_t entityStateFields_%i[] =\n{\n", j);
    Q_strcat(buffer, sizeof(buffer), line);

    for(i = 0; i < ptr->size; i++, subptr++)
    {
        Com_sprintf(line, sizeof(line), "\t{ NETF( %s ), %i, %i, %i},\n", subptr->name, subptr->offset, subptr->bits, subptr->zero);
        Q_strcat(buffer, sizeof(buffer), line);
    }

    Com_sprintf(line, sizeof(line), "};\n\n\n");
    Q_strcat(buffer, sizeof(buffer), line);

    }

    FS_WriteFile("array.txt", buffer, strlen(buffer));
    Com_Quit_f();
}



typedef struct{
    char *name;
    int offset;
    int bits;
    int unknown;
}netlistPlayer_t;


void GetDeltaPlayerArray(){

    char buffer[1024*1024];
    char line[128];
    netlistPlayer_t *ptr;
    int j;

    Com_Memset(buffer, 0, sizeof(buffer));

    for(j=0, ptr = (netlistPlayer_t*)0x82283c0; ptr->name != NULL; ptr++, j++){

    Com_sprintf(line, sizeof(line), "\tint\t\t%s; %i\n", ptr->name, ptr->offset);
    Q_strcat(buffer, sizeof(buffer), line);
    Com_Printf("%s\n", line);

    }

    FS_WriteFile("array.txt", buffer, strlen(buffer));
    Com_Quit_f();
}



typedef struct __attribute__((packed)){
    byte mov1;
    byte mov2;
    byte mov3;
    char* string;
    byte call1;
    byte call2;
    byte call3;
    byte call4;
    byte call5;
    byte mov11;
    byte mov12;
    short* index;
}stringindexcmd_t;


void StringIndexArray(){

    char buffer[1024*1024];
    char line[128];
    int j;
    stringindexcmd_t* ptr;


    Com_Memset(buffer, 0, sizeof(buffer));

    for(j=0, ptr = (stringindexcmd_t*)0x80a396e; ptr->mov3 != 0x90 ; ptr++, j++){

    Com_Printf("String: %s\n", ptr->string);
    Com_sprintf(line, sizeof(line), "\tshort   %s;\n", ptr->string);
    Q_strcat(buffer, sizeof(buffer), line);
    }

    FS_WriteFile("array.txt", buffer, strlen(buffer));
    Com_Quit_f();
}


void GetPlayerFieldArray(){

    char buffer[1024*1024];
    char line[128];
    scrClientFields_t *ptr;
    int j;

    Com_Memset(buffer, 0, sizeof(buffer));

    for(j=0, ptr = (scrClientFields_t*)0x8215780; ptr->name != NULL; ptr++, j++){

    Com_sprintf(line, sizeof(line), "\tScr_AddPlayerField(%s, %d, %d, %p, %p)\n", ptr->name, ptr->val1, ptr->val1, ptr->setfun, ptr->getfun);
    Q_strcat(buffer, sizeof(buffer), line);
    Com_Printf("%s\n", line);

    }

    FS_WriteFile("array.txt", buffer, strlen(buffer));
    Com_Quit_f();
}
*/
/*#include <string.h>
void GetEntityFieldArray()
{

    char buffer[1024 * 1024];
    char line[128];
    ent_field_t *ptr;
    int j;

    Com_Memset(buffer, 0, sizeof(buffer));

    Com_sprintf(line, sizeof(line), "entity_fields_t entityField[]");
    Q_strcat(buffer, sizeof(buffer), line);
    Com_Printf("%s\n", line);

    for (j = 0, ptr = (ent_field_t *)0x82202a0; ptr->name != NULL; ptr++, j++)
    {

        Com_sprintf(line, sizeof(line), "\t{ \"%s\", %d, %d, (void*)%p) },\n", ptr->name, ptr->val1, ptr->val2, ptr->setfun);
        Q_strcat(buffer, sizeof(buffer), line);
        Com_Printf("%s\n", line);
    }

    Com_sprintf(line, sizeof(line), "};\n");
    Q_strcat(buffer, sizeof(buffer), line);
    Com_Printf("%s\n", line);

    FS_WriteFile("array.txt", buffer, strlen(buffer));
    Com_Quit_f();
}
*/
/*
void GetHuffmanArray(){

    char buffer[1024*1024];
    char line[128];
    int j;
    byte* data;
    int *number;

    Com_Memset(buffer, 0, sizeof(buffer));



    if(0 < FS_ReadFile("cod_mac-bin.iwd", (void**)&data)){


        data += 0x387080;

        number = (int*)data;

        for(j=0; j < 256 ; j++){

        Com_sprintf(line, sizeof(line), "\t%d,\t\t\t//%d\n", number[j],j);
        Q_strcat(buffer, sizeof(buffer), line);

    }

    FS_WriteFile("array.txt", buffer, strlen(buffer));
    }
    Com_Quit_f();
}
*/
/*
int GetArraySize(int aHandle)
{
    int size = scrVarGlob.variables[aHandle].value.typeSize.size;
    return size;
}*/

/* only for debug */
__regparm3 void VM_Notify_Hook(int entid, int constString, VariableValue *arguments)
{
    Com_Printf("^2Notify Entitynum: %d, EventString: %s\n", entid, SL_ConvertToString(constString));
    VM_Notify(entid, constString, arguments);
}

void Scr_InitSystem()
{
    scrVarPub.timeArrayId = AllocObject();
    scrVarPub.pauseArrayId = Scr_AllocArray();
    scrVarPub.levelId = AllocObject();
    scrVarPub.animId = AllocObject();
    scrVarPub.time = 0;
    g_script_error_level = -1;
}

void Scr_ClearArguments()
{
    while (scrVmPub.outparamcount)
    {
        RemoveRefToValue(scrVmPub.top->type, scrVmPub.top->u);
        --scrVmPub.top;
        --scrVmPub.outparamcount;
    }
}

void Scr_NotifyInternal(int varNum, int constString, int numArgs)
{
    VariableValue *curArg;
    int z;
    int ctype;

    Scr_ClearArguments();
    curArg = scrVmPub.top - numArgs;
    z = scrVmPub.inparamcount - numArgs;
    if (varNum)
    {
        ctype = curArg->type;
        curArg->type = 8;
        scrVmPub.inparamcount = 0;
        VM_Notify(varNum, constString, scrVmPub.top);
        curArg->type = ctype;
    }
    while (scrVmPub.top != curArg)
    {
        RemoveRefToValue(scrVmPub.top->type, scrVmPub.top->u);
        --scrVmPub.top;
    }
    scrVmPub.inparamcount = z;
}

void Scr_NotifyLevel(int constString, unsigned int numArgs)
{
    Scr_NotifyInternal(scrVarPub.levelId, constString, numArgs);
}

void Scr_NotifyNum(int entityNum, unsigned int entType, unsigned int constString, unsigned int numArgs)
{
    int entVarNum;

    entVarNum = FindEntityId(entityNum, entType);

    Scr_NotifyInternal(entVarNum, constString, numArgs);
}

void Scr_Notify(gentity_t *ent, unsigned short constString, unsigned int numArgs)
{
    Scr_NotifyNum(ent->s.number, 0, constString, numArgs);
}

void RuntimeError_Debug(char *msg, char *pos, int a4)
{
    int i;

    Com_Printf("\n^1******* script runtime error *******\n%s: ", msg);
    Scr_PrintPrevCodePos(0, pos, a4);
    if (scrVmPub.function_count)
    {
        for (i = scrVmPub.function_count - 1; i > 0; --i)
        {
            Com_Printf("^1called from:\n");
            Scr_PrintPrevCodePos(0, scrVmPub.function_frame_start[i].fs.pos, scrVmPub.function_frame_start[i].fs.localId == 0);
        }
        Com_Printf("^1started from:\n");
        Scr_PrintPrevCodePos(0, scrVmPub.function_frame_start[0].fs.pos, 1);
    }
    Com_Printf("^1************************************\n");
}

void RuntimeError(char *pos, int arg4, char *message, char *a4)
{
    int errtype;

    if (!scrVarPub.developer && !scrVmPub.terminal_error)
    {
        return;
    }

    if (scrVmPub.debugCode)
    {
        Com_Printf("%s\n", message);
        if (!scrVmPub.terminal_error)
        {
            return;
        }
    }
    else
    {
        RuntimeError_Debug(message, pos, arg4);
        if (!scrVmPub.abort_on_error && !scrVmPub.terminal_error)
        {
            return;
        }
    }

    if (scrVmPub.terminal_error)
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

qboolean Scr_ScriptRuntimecheckInfiniteLoop()
{
    int now = Sys_Milliseconds();

    if (now - g_threadStartingTime > 6000)
    {
        Cbuf_AddText("wait 50;map_rotate\n");
        return qtrue;
        //CPU is just busy
    }
    return qfalse;
}

gentity_t *VM_GetGEntityForNum(scr_entref_t num)
{
    if (HIWORD(num))
    {
        Scr_Error("Not an entity");
        return NULL;
    }

    return &g_entities[LOWORD(num)];
}

gclient_t *VM_GetGClientForEntity(gentity_t *ent)
{
    return ent->client;
}

gclient_t *VM_GetGClientForEntityNumber(scr_entref_t num)
{
    return VM_GetGClientForEntity(VM_GetGEntityForNum(num));
}

client_t *VM_GetClientForEntityNumber(scr_entref_t num)
{
    return &svs.clients[num];
}

/*
void __cdecl sub_51D1F0()
{
  if ( !scrVarPub.evaluate && !unk_1509088 )
  {
    if ( scrVarPub.developer && scrVmGlob.loading )
    {
      scrVmPub.terminal_error = 1;
    }
    if ( scrVmPub.function_count || scrVmPub.debugCode )
    {
      longjmp(g_script_error[g_script_error_level], -1);
    }
    Sys_Error("%s", scrVarPub.error_message);
  }
  if ( scrVmPub.terminal_error )
  {
    Sys_Error("%s", scrVarPub.error_message);
  }
}

void Scr_Error(const char *error)
{
  static char errormsg[1024];
  if ( !scrVarPub.error_message )
  {
    Q_strncpyz(errormsg, error, sizeof(errormsg));
    scrVarPub.error_message = errormsg;
  }
  sub_51D1F0();
}
*/
int Scr_GetInt(unsigned int paramnum)
{
    mvabuf;
    VariableValue *var;

    if (paramnum >= scrVmPub.outparamcount)
    {
        Scr_Error(va("parameter %d does not exist", paramnum + 1));
        return 0;
    }

    var = &scrVmPub.top[-paramnum];
    if (var->type == 6)
    {
        return var->u.intValue;
    }
    scrVarPub.error_index = paramnum + 1;
    Scr_Error(va("type %s is not an int", var_typename[var->type]));
    return 0;
}

unsigned int Scr_GetObject(unsigned int paramnum)
{
    mvabuf;
    VariableValue *var;

    if (paramnum >= scrVmPub.outparamcount)
    {
        Scr_Error(va("parameter %d does not exist", paramnum + 1));
        return 0;
    }

    var = &scrVmPub.top[-paramnum];
    if (var->type == 1)
    {
        return var->u.pointerValue;
    }
    scrVarPub.error_index = paramnum + 1;
    Scr_Error(va("type %s is not an object", var_typename[var->type]));
    return 0;
}


//Use with Scr_Exce(Ent)Thread
int Scr_GetFunc(unsigned int paramnum)
{
    mvabuf;
    VariableValue *var;

    if (paramnum >= scrVmPub.outparamcount)
    {
        Scr_Error(va("parameter %d does not exist", paramnum + 1));
        return -1;
    }

    var = &scrVmPub.top[-paramnum];
    if (var->type == 9)
    {
        int vmRomAddress = var->u.codePosValue - scrVarPub.programBuffer;
        return vmRomAddress;
    }
    scrVarPub.error_index = paramnum + 1;
    Scr_Error(va("type %s is not an function", var_typename[var->type]));
    return -1;
}



unsigned int Scr_GetArrayId(unsigned int paramnum, VariableValue** v, int maxvariables)
{
    unsigned int ptr = Scr_GetObject(paramnum);
    VariableValueInternal *var;

    unsigned int hash_id = 0;
    int i = 0;

    do
    {
        if(hash_id == 0)
        {
            hash_id = scrVarGlob[ptr + 1].hash.u.prevSibling;
            if(hash_id == 0)
            {
                return 0;
            }
        }else{
            hash_id = scrVarGlob_high[var->hash.u.prevSibling].hash.id;
        }
        var = &scrVarGlob_high[hash_id];

        int type = var->w.type & 0x1f;

        v[i]->type = type;
        v[i]->u = var->u.u;

        ++i;
    }
    while ( var->hash.u.prevSibling && scrVarGlob_high[var->hash.u.prevSibling].hash.id && i < maxvariables);

    return 0;//GetArraySize(ptr);
}
