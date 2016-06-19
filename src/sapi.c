#define __STDC_FORMAT_MACROS
#define __IN_EXTSAPIMODULE__

#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <inttypes.h>
#include "q_shared.h"
#include "q_platform.h"
#include "g_shared.h"
#include "server.h"
#include "sapi.h"
#include "sys_main.h"
#include "cmd.h"
#include "sha.h"
#include "g_sv_shared.h"

void (*Init)(imports_t* imports, exports_t* exports);


void SV_SApiSteamIDTo64String(uint64_t steamid, char* string, int length)
{
	if(length < 20)
	{
		if(length > 0)
		{
			string[0] = 0;
		}
		return;
	}
	sprintf(string, "%" PRIu64, steamid);
}

static uint16_t AccountTypeCharToInt(char accounttype)
{
		switch(accounttype)
		{
			case 'I':
			default:
				return 0;
			case 'U':
				return 1;
			case 'M':
				return 2;
			case 'G':
				return 3;
			case 'A':
				return 4;
			case 'P':
				return 5;
			case 'C':
				return 6;
			case 'g':
				return 7;
			case 'T':
			case 'c':
			case 'L':
				return 8;
			case 'a':
				return 10;
	}
}

static uint64_t ParseSteam3ID(const char* h)
{
		uint32_t instance;
		uint32_t accountid;
		uint32_t universe;
		uint32_t accounttypei;
		char accounttype;
		char extracheck;
		int cFieldConverted;
		char buf[128];
		char* e, *s;

		//Whitespace removal
		Q_strncpyz(buf, h, sizeof(buf));
		s = buf;

		if(strlen(s) < 5)
		{
			return 0;
		}

		while(s[0] == ' ')
		{
			++s;
		}
		e = s + strlen(s);

		while(e[-1] == ' ')
		{
			--e;
		}
		e[0] = 0;

		if(s[0] ==  '[')
		{
			if(s[strlen(s) -1] == ']')
			{
				s[strlen(s) -1] = 0;
				s++;
			}else{
				return 0;
			}
		}


		extracheck = 0;
		instance = 0;


		cFieldConverted = sscanf( s, "%c:%u:%u:%u%c", &accounttype, &universe, &accountid, &instance, &extracheck );
		if(cFieldConverted != 4 || extracheck)
		{
			cFieldConverted = sscanf( s, "%c:%u:%u%c", &accounttype, &universe, &accountid, &extracheck );

			if(accounttype == 'U' || accounttype == 'G')
			{
				instance = 1;
			}

		}
		accounttypei = AccountTypeCharToInt(accounttype);

		if(cFieldConverted == EOF || cFieldConverted != 3 || extracheck || (universe > 4 && universe != 32) || universe < 1 || accounttypei < 1 || accounttypei > 10)
		{
			return 0;
		}

		uint64_t steamid = ((uint64_t)universe << 56) | ((uint64_t)accounttypei << 52) | ((uint64_t)instance << 32) | (uint64_t)accountid;
		return steamid;
}


static uint64_t ParseLegacySteamID(const char* h)
{
	uint16_t instance;
	uint32_t lowbit;
	uint32_t highbits;
	uint64_t accountid;
	uint64_t universe;
	uint32_t accounttype;
	char extracheck;
	char buf[128];
	char* e, *s;

	//Whitespace removal
	Q_strncpyz(buf, h, sizeof(buf));
	s = buf;

	if(strlen(s) < 5)
	{
		return 0;
	}

	while(s[0] == ' ')
	{
		++s;
	}
	e = s + strlen(s);

	while(e[-1] == ' ')
	{
		--e;
	}
	e[0] = 0;


	if(strncmp(s, "STEAM_", 6))
	{
		return 0;
	}

	s = s +6;


	extracheck = 0;

	int cFieldConverted = sscanf( s, "%hu:%u:%u%c", &instance, &lowbit, &highbits, &extracheck );

	if(cFieldConverted == EOF || cFieldConverted != 3 || extracheck || (instance != 0 && instance != 1))
	{
		return 0;
	}

	accountid = ( highbits << 1 ) | lowbit;
	universe = 1;
	accounttype = 1;

	uint64_t steamid = (universe << 56) | ((uint64_t)accounttype << 52) | ((uint64_t)instance << 32) | accountid;
	return steamid;
}



uint64_t ParseSteam64ID(const char* h)
{
	char buf[128];
	char* e, *s;
	uint32_t accounttype, universe;

	//Whitespace removal
	Q_strncpyz(buf, h, sizeof(buf));
	s = buf;

	if(strlen(s) < 5)
	{
		return 0;
	}

	while(s[0] == ' ')
	{
		++s;
	}
	e = s + strlen(s);

	while(e[-1] == ' ')
	{
		--e;
	}
	e[0] = 0;

	if(!isInteger(s, 0))
	{
		return 0;
	}

	uint64_t steamid = strtoull(s, NULL, 10);

	//Basic verify
	accounttype = (steamid & 0xF0000000000000ULL) >> 52;
	universe = (steamid & 0xFF00000000000000ULL) >> 56;

	if((universe > 4 && universe != 32) || universe < 1 || accounttype < 1 || accounttype > 10)
	{
		return 0;
	}
	return steamid;
}

qboolean SV_SApiSteamIDIndividual(uint64_t steamid)
{
	uint32_t accounttype, universe, instance;

	//Basic verify
	accounttype = (steamid & 0xF0000000000000ULL) >> 52;
	universe = (steamid & 0xFF00000000000000ULL) >> 56;
	instance = (steamid & 0xFFFFF00000000ULL) >> 32;

	if((universe != 1 && universe != 32) || accounttype != 1 || instance != 1)
	{
		return qfalse;
	}
	return qtrue;
}

qboolean SV_SApiSteamIDIndividualSteamOnly(uint64_t steamid)
{
	uint32_t accounttype, universe, instance;

	//Basic verify
	accounttype = (steamid & 0xF0000000000000ULL) >> 52;
	universe = (steamid & 0xFF00000000000000ULL) >> 56;
	instance = (steamid & 0xFFFFF00000000ULL) >> 32;

	if(universe != 1 || accounttype != 1 || instance != 1)
	{
		return qfalse;
	}
	return qtrue;
}


uint64_t SV_SApiStringToID(const char* string)
{
	//detect type:
	uint64_t si;
	si = ParseLegacySteamID(string);
	if( si )
	{
		return si;
	}
	si = ParseSteam3ID(string);
	if( si )
	{
		return si;
	}
	return ParseSteam64ID(string);
}

char accounttypechars[] = {'I', 'U', 'M', 'G', 'A', 'P', 'C', 'g', 'T', ' ', 'a'};

void SV_SApiSteamIDToString(uint64_t steamid, char* string, int length)
{
	uint32_t accounttype, universe, accountid;

	accounttype = (steamid & 0xF0000000000000ULL) >> 52;
	universe = (steamid & 0xFF00000000000000ULL) >> 56;
	//instance = (steamid & 0xFFFFF00000000ULL) >> 32;
	accountid = (steamid & 0xFFFFFFFFULL);

	if((universe > 4 && universe != 32) || universe < 1 || accounttype < 1 || accounttype > 10)
	{
		Q_strncpyz(string, "[I:0:0]", length);
		return;
	}
	Com_sprintf(string, length, "[%c:%u:%u]", accounttypechars[accounttype], universe, accountid);
}

uint64_t SV_SApiGUID2PlayerID(const char* guid)
{
	uint32_t digest[5];
	uint32_t workspace[80];
	char data[64];
	uint8_t diggest2[16];
	char digit2[3];
	int len = strlen(guid);
	int i, k;

	if(len != 32)
	{
		return 0;
	}

	sha_init(digest);

	for(i = 0; i < sizeof(diggest2); ++i)
	{
		digit2[i] = guid[2*i];
		digit2[i+1] = guid[2*i +1];
		digit2[i+2] = 0;
		diggest2[i] = strtol(digit2, NULL, 16);;
	}
	for(i = 0; i < sizeof(data); ++i)
	{
		data[i] = diggest2[i % 16] ^ i;
	}
	for(i = 0; i < 200*100; ++i)
	{
		sha_transform(digest, data, workspace);
		for(k = 0; k < 64; ++k)
		{
			data[k] = ((uint32_t)data[k] ^ (uint32_t)digest[k % 5]) ;
		}
	}
	uint32_t accountid = *(uint32_t*)&data[15];
	uint64_t universe = 32;
	uint64_t accounttype = 1;
	uint64_t instance = 1;
	uint64_t steamid = ((uint64_t)universe << 56) | ((uint64_t)accounttype << 52) | ((uint64_t)instance << 32) | accountid;
	return steamid;

}

exports_t imp;

void SV_GetSS_f();

void SV_InitSApi()
{
	void* hmodule;
	imports_t exports;
	FILE* steam_api;

	steam_api = fopen("steam_api" DLL_EXT, "r");
	if(!steam_api) // No steam_api exists means no steam functionality
	{
		Com_PrintError("steam_api" DLL_EXT " not found. Steam is not going to work.\n");
		return;
	}
	fclose(steam_api);
	//steam_api lib exists

	exports.Com_Printf = Com_Printf;
	exports.Com_DPrintf = Com_DPrintf;
	exports.Com_PrintError = Com_PrintError;
	exports.Com_PrintWarning = Com_PrintWarning;
	exports.Com_Quit_f = Com_Quit_f;
	exports.Com_Error = Com_Error;
	exports.Cvar_VariableIntegerValue = Cvar_VariableIntegerValue;
	exports.Cvar_VariableString = Cvar_VariableString;
	exports.SV_DropClientNoNotify = SV_DropClientNoNotify;
	exports.SV_DropClient = SV_DropClient;
	exports.SV_SendReliableServerCommand = SV_SendReliableServerCommand;
	exports.SV_AddBanForClient = SV_AddBanForClient;
	exports.SV_ScreenshotArrived = SV_ScreenshotArrived;
	exports.FS_SV_HomeWriteFile = FS_SV_HomeWriteFile;
	exports.Sys_Milliseconds = Sys_Milliseconds;

	hmodule = Sys_LoadLibrary("steam_api" DLL_EXT);
	/*if(hmodule == NULL)
	{
		Com_PrintError("steam_api.dll not found. Steam is not going to work.\n");
		return;
	}*/
	Init = Sys_GetProcedure("Init");
	if(Init == NULL)
	{
		Sys_CloseLibrary(hmodule);
		Com_PrintError("Init entrypoint not found. Steam is not going to work.\n");
		return;
	}
	Init(&exports, &imp);
	Cmd_AddPCommand ("getss", SV_GetSS_f, 45);
}

void SV_RunSApiFrame()
{
	if(imp.RunFrame)
		imp.RunFrame();
}

void SV_NotifySApiDisconnect(client_t* drop)
{
	if(imp.NotifyDisconnect)
		imp.NotifyDisconnect(drop);
}


int SV_ConnectSApi(client_t* client)
{
	if(imp.Connect)
	{
		return imp.Connect(client);
	}
	//Q_strncpyz(client->shortname, client->name, sizeof(client->shortname));
	return 1;
}


void SV_SApiData(client_t* cl, msg_t* msg)
{
	if(imp.Data)
	{
		imp.Data(cl, msg);
		if(cl->state > CS_CONNECTED)
		{
			ClientUserinfoChanged( cl - svs.clients );
		}
	}
}


void SV_SApiShutdown()
{
	if(imp.Shutdown)
		imp.Shutdown();
}


void SV_SApiReadSS( client_t* cl, msg_t* msg )
{
	if(imp.ReadSS)
		imp.ReadSS( cl, msg );
}

void SV_SApiTakeSS(client_t* cl, const char* savename)
{
	if(imp.TakeSS)
		imp.TakeSS( cl, savename );
}
