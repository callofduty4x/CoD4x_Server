module functions;

import std.string;
import cod4x.functions;
import misc;

int Plugin_Milliseconds() {
	return cod4x.functions.Plugin_Milliseconds();
}

auto Plugin_GetPlayerUID(int slot)
{
	return cod4x.functions.Plugin_GetPlayerUID(slot);
}

auto Plugin_GetPlayerName(int slot)
{
	char* rawname = cod4x.functions.Plugin_GetPlayerName(slot);
	import std.conv : to;
	return fromStringz(rawname).to!string;
}

GUID Plugin_GetPlayerGUID(int slot)
{
	immutable(char)* erg = cod4x.functions.Plugin_GetPlayerGUID(slot);
	GUID g;
	for(int i = 0; i < 32; i++)
		g[i] = *(erg+i);
	return g;
}

void Plugin_Printf(string str)
{
	cod4x.functions.Plugin_Printf(str.toStringz());
}

void Plugin_Printf(string str, int i)
{
	cod4x.functions.Plugin_Printf(str.toStringz(), i);
}

void Plugin_ChatPrintf(int slot, string str)
{
	cod4x.functions.Plugin_ChatPrintf(slot, str.toStringz());
}

void Plugin_BoldPrintf(int slot, string str)
{
	cod4x.functions.Plugin_BoldPrintf(slot, str.toStringz());
}

void Plugin_DropClient(int slot, string reason)
{
	cod4x.functions.Plugin_DropClient(slot, reason.toStringz());
}

string Plugin_Cvar_GetString(string var)
{
	immutable(char)* arg = toStringz(var);
	immutable(char)* erg = cod4x.functions.Plugin_Cvar_GetString(arg);
	return fromStringz(erg);
}

int Plugin_Cvar_VariableIntegerValue(string var)
{
	immutable(char)* arg = toStringz(var);
	return cod4x.functions.Plugin_Cvar_VariableIntegerValue(arg);
}
/*
Mimi please fix
string Plugin_Cvar_VariableString(string var)
{
	immutable(char)* arg = toStringz(var);
	char* erg = cod4x.functions.Plugin_Cvar_VariableString(arg);

	import std.conv;
	return fromStringz(erg).to!string;
}
*/
/*void Plugin_Cvar_SetString(string var, string val)
{
	import std.conv;
	cod4x.functions.Plugin_Cvar_SetString(toStringz(var), toStringz(val));
}*/

void Plugin_Exec(string cmd)
{
	char* arg = cast(char*)toStringz(cmd);
	Plugin_Cbuf_AddText(arg);
}

void Plugin_Scr_AddString(string str)
{
	cod4x.functions.Plugin_Scr_AddString(str.toStringz);
}

void Plugin_Scr_AddInt(int value)
{
	cod4x.functions.Plugin_Scr_AddInt(value);
}

void PluginNotifyPlayer(int slot, ushort str, int args)
{
	cod4x.server.gentity_t* ent = cod4x.functions.Plugin_GetGentityForEntityNum(slot);
	cod4x.functions.Plugin_Scr_Notify(ent, str, args);
}

/*void PluginNotifyLevel(ushort str, int args)
{
	cod4x.functions.Plugin_Scr_Notify(str, args);
}*/

ushort Plugin_Scr_AllocString(string message)
{
	return cod4x.functions.Plugin_Scr_AllocString(message.toStringz);
}

/*void PluginNotifyPlayer(int slot, ushort str, int args)
{
	cod4x.server.gentity_t* ent = cod4x.functions.Plugin_GetGentityForEntityNum(slot);
	cod4x.functions.Plugin_Scr_Notify(ent, str, args);
}*/

/*void Plugin_Scr_NotifyLevel(ushort str, int numArgs)
{
	cod4x.functions.Plugin_Scr_NotifyLevel(str, numArgs);
}*/

void Cvar_RegisterString(string variable, string value, string desc)
{
    cod4x.functions.Plugin_Cvar_RegisterString(variable.toStringz,value.toStringz,0,desc.toStringz);
}
