#define __STDC_FORMAT_MACROS
#define __IN_EXTSAPIMODULE__

#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <stdbool.h>
#include <inttypes.h>
#include "q_shared.h"
#include "q_platform.h"
#include "g_shared.h"
#include "server.h"
#include "sapi.h"
#include "sys_main.h"
#include "cmd.h"
#include "sec_crypto.h"
#include "g_sv_shared.h"

cvar_t* sv_usesteam64id;

int (*Init)(imports_t* sapi_imports, exports_t* exports);


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

		if(cFieldConverted == EOF || cFieldConverted != 3 || extracheck || (universe > 4 && (universe < 32 || universe >= 40)) || universe < 1 || accounttypei < 1 || accounttypei > 10)
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

	if((universe > 4 && (universe < 32 || universe >= 40)) || universe < 1 || accounttype < 1 || accounttype > 10)
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

	if((universe != 1 && (universe < 32 || universe >= 40)) || accounttype != 1 || instance != 1)
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

void SV_SApiSteamIDTo3IDString(uint64_t steamid, char* string, int length)
{

	uint32_t accounttype, universe, accountid;

	accounttype = (steamid & 0xF0000000000000ULL) >> 52;
	universe = (steamid & 0xFF00000000000000ULL) >> 56;
	//instance = (steamid & 0xFFFFF00000000ULL) >> 32;
	accountid = (steamid & 0xFFFFFFFFULL);

	if((universe > 4 && (universe < 32 || universe >= 40)) || universe < 1 || accounttype < 1 || accounttype > 10)
	{
		Q_strncpyz(string, "[I:0:0]", length);
		return;
	}
	Com_sprintf(string, length, "[%c:%u:%u]", accounttypechars[accounttype], universe, accountid);
}


void SV_SApiSteamIDToString(uint64_t steamid, char* string, int length)
{
	if(sv_usesteam64id && sv_usesteam64id->boolean)
	{
		SV_SApiSteamIDTo64String(steamid, string, length);
	}else{
		SV_SApiSteamIDTo3IDString(steamid, string, length);
	}
}

/**
   Execute LTC_PKCS #5 v2
   @param password          The input password (or key)
   @param password_len      The length of the password (octets)
   @param salt              The salt (or nonce)
   @param salt_len          The length of the salt (octets)
   @param iteration_count   # of iterations desired for LTC_PKCS #5 v2 [read specs for more]
   @param hash_idx          The index of the hash desired
   @param out               [out] The destination for this algorithm
   @param outlen            [in/out] The max size and resulting size of the algorithm output
   @return CRYPT_OK if successful
*/
/*
Copied from libtomcrypt so here a sleep can be included for less blocking the main thread while this function is operating
*/


int pkcs_5_alg2_200sleep(const unsigned char *password, unsigned long password_len,
                const unsigned char *salt,     unsigned long salt_len,
                int iteration_count,           int hash_idx,
                unsigned char *out,            unsigned long *outlen)
{
   int err, itts, i;
   ulong32  blkno;
   unsigned long stored, left, x, y;
   unsigned char *buf[2];
   hmac_state    *hmac;

   LTC_ARGCHK(password != NULL);
   LTC_ARGCHK(salt     != NULL);
   LTC_ARGCHK(out      != NULL);
   LTC_ARGCHK(outlen   != NULL);

   /* test hash IDX */
   if ((err = hash_is_valid(hash_idx)) != CRYPT_OK) {
      return err;
   }

   buf[0] = XMALLOC(MAXBLOCKSIZE * 2);
   hmac   = XMALLOC(sizeof(hmac_state));
   if (hmac == NULL || buf[0] == NULL) {
      if (hmac != NULL) {
         XFREE(hmac);
      }
      if (buf[0] != NULL) {
         XFREE(buf[0]);
      }
      return CRYPT_MEM;
   }
   /* buf[1] points to the second block of MAXBLOCKSIZE bytes */
   buf[1] = buf[0] + MAXBLOCKSIZE;

   left   = *outlen;
   blkno  = 1;
   stored = 0;
   while (left != 0) {
       /* process block number blkno */
       zeromem(buf[0], MAXBLOCKSIZE*2);

       /* store current block number and increment for next pass */
       STORE32H(blkno, buf[1]);
       ++blkno;

       /* get PRF(P, S||int(blkno)) */
       if ((err = hmac_init(hmac, hash_idx, password, password_len)) != CRYPT_OK) {
          goto LBL_ERR;
       }
       if ((err = hmac_process(hmac, salt, salt_len)) != CRYPT_OK) {
          goto LBL_ERR;
       }
       if ((err = hmac_process(hmac, buf[1], 4)) != CRYPT_OK) {
          goto LBL_ERR;
       }
       x = MAXBLOCKSIZE;
       if ((err = hmac_done(hmac, buf[0], &x)) != CRYPT_OK) {
          goto LBL_ERR;
       }

       /* now compute repeated and XOR it in buf[1] */
       XMEMCPY(buf[1], buf[0], x);
       for (itts = 1; itts < iteration_count; ++itts) {
          for(i = 0; i < 200; ++i)
          {
             if ((err = hmac_memory(hash_idx, password, password_len, buf[0], x, buf[0], &x)) != CRYPT_OK) {
                goto LBL_ERR;
             }
             for (y = 0; y < x; y++) {
                 buf[1][y] ^= buf[0][y];
             }
          }
          Sys_SleepSec(0);
       }

       /* now emit upto x bytes of buf[1] to output */
       for (y = 0; y < x && left != 0; ++y) {
           out[stored++] = buf[1][y];
           --left;
       }
   }
   *outlen = stored;

   err = CRYPT_OK;
LBL_ERR:
   XFREE(hmac);
   XFREE(buf[0]);

   return err;
}


static const unsigned char playerid_salt[] =
{
		0x83, 0xf3, 0x65, 0x90, 0x6c, 0x75, 0x33, 0xe1, 0x81, 0xaf, 0xc1, 0x44, 0xe1, 0x3e, 0xf0, 0x66,
		0x77, 0xec, 0x0e, 0x62, 0x6a, 0xe2, 0xf3, 0xba, 0x58, 0x1a, 0x72, 0x62, 0x2a, 0xc4, 0xcc, 0x61,
		0x49, 0x4b, 0xf5, 0xb9, 0x49, 0xea, 0x2b, 0xdf, 0x0f, 0x99, 0xe2, 0x8e, 0xb8, 0x7e, 0x50, 0x63,
		0xc6, 0xd5, 0x44, 0xdd, 0x0b, 0x56, 0x96, 0x19, 0x94, 0x76, 0x98, 0x90, 0x17, 0xb2, 0x66, 0xfa,
		0x23, 0x7c, 0xcd, 0x31, 0x49, 0x4b, 0x85, 0x31, 0xc2, 0xfe, 0x86, 0x3d, 0x80, 0xcd, 0xe5, 0x3a,
		0xe9, 0x43, 0xc3, 0x7c, 0x19, 0xc3, 0x9c, 0xbe, 0x19, 0x33, 0x5c, 0x22, 0x34, 0x16, 0xc9, 0xc2,
		0xce, 0xd2, 0x25, 0x2d, 0x5f, 0x2e, 0x32, 0x81, 0x97, 0xcf, 0x14, 0x96, 0x6b, 0x15, 0x59, 0xce,
		0xbd, 0x36, 0xdb, 0xbc, 0x23, 0x16, 0x74, 0x68, 0xa1, 0x4f, 0x0c, 0x46, 0xbc, 0x1e, 0x19, 0x12,
		0x8a, 0x86, 0x16, 0x2d, 0xe9, 0x3f, 0x22, 0x49, 0x0d, 0xaa, 0x6e, 0x15, 0x47, 0xe8, 0x19, 0x17,
		0xa2, 0xf1, 0xcc, 0xca, 0x49, 0x38, 0xa0, 0xa7, 0xb3, 0xcc, 0x92, 0xb5, 0x7c, 0x0c, 0xd4, 0x25,
		0x6a, 0x3e, 0x55, 0xc4, 0x72, 0x39, 0x81, 0x22, 0x0d, 0x1a, 0xc7, 0x1e, 0xf4, 0x96, 0xe4, 0xc6,
		0x6d, 0x6c, 0x43, 0x81, 0xcf, 0x64, 0x49, 0xa1, 0x10, 0x73, 0x46, 0x7a, 0x05, 0xdb, 0xdb, 0xd4,
		0x94, 0x3f, 0x04, 0x52, 0xd8, 0x23, 0x9d, 0x85, 0x59, 0x3a, 0x29, 0xfc, 0xfc, 0xd5, 0x06, 0xc9,
		0xdf, 0x58, 0xc3, 0x7e, 0x49, 0xe4, 0xbe, 0x79, 0x37, 0x97, 0x51, 0xc2, 0xf0, 0x0c, 0x38, 0x6f,
		0x96, 0x58, 0xaf, 0xb0, 0x43, 0x10, 0x41, 0x57, 0xef, 0xc6, 0xfa, 0x40, 0x6f, 0xa4, 0xc5, 0xc6,
		0x67, 0x08, 0xd3, 0x65, 0x0f, 0xb0, 0xa4, 0x4d, 0x54, 0xe4, 0x87, 0xc7, 0x0f, 0x52, 0xe2, 0xc6
};


uint64_t SV_SApiGUID2PlayerID(const char* guid)
{
	uint8_t diggest2[16];
	char digit2[3];
	int len = strlen(guid);
	int i;

	if(len != 32)
	{
		return 0;
	}

	for(i = 0; i < sizeof(diggest2); ++i)
	{
		digit2[0] = guid[2*i];
		digit2[1] = guid[2*i +1];
		digit2[2] = 0;
		diggest2[i] = strtol(digit2, NULL, 16);;
	}

	//Random account id
	uint32_t accountid;
	uint32_t universe = 32; //Custom universe 32 for HW auth players
	uint32_t accounttype = 1;
	uint32_t instance = 1;

	unsigned long outlen = sizeof(accountid);

	int hash_idx = find_hash("sha256");

	if(pkcs_5_alg2(diggest2, sizeof(diggest2), playerid_salt, sizeof(playerid_salt), 100, hash_idx, (unsigned char *)&accountid, &outlen) != CRYPT_OK) //This function is special. It sleeps
	{
		//Com_PrintError("Couldn't create hash for playerid. Player id is invalid\n");
		accountid = 0;
	}

	uint64_t steamid = ((uint64_t)universe << 56) | ((uint64_t)accounttype << 52) | ((uint64_t)instance << 32) | accountid;
	return steamid;

}



/*
=============
Com_Printf

Both client and server can use this, and it will output
to the apropriate place.

A raw string should NEVER be passed as fmt, because of "%f" type crashers.
=============
*/
void QDECL SApi_Printf( const char *fmt, ... ) {
	va_list		argptr;
	char		msg[MAXPRINTMSG];

	va_start (argptr,fmt);
	Q_vsnprintf (msg, sizeof(msg), fmt, argptr);
	va_end (argptr);

        Com_PrintMessage( CON_CHANNEL_STEAM, msg, MSG_DEFAULT);
}


/*
=============
Com_PrintWarning

Server can use this, and it will output
to the apropriate place.

A raw string should NEVER be passed as fmt, because of "%f" type crashers.
=============
*/
void QDECL SApi_PrintWarning( const char *fmt, ... ) {
	va_list		argptr;
	char		msg[MAXPRINTMSG];

	memcpy(msg,"^3Warning: ", 12);

	va_start (argptr,fmt);
	Q_vsnprintf (&msg[11], (sizeof(msg)-12), fmt, argptr);
	va_end (argptr);

        Com_PrintMessage( CON_CHANNEL_STEAM, msg, MSG_WARNING);
}


/*
=============
Com_PrintError

Server can use this, and it will output
to the apropriate place.

A raw string should NEVER be passed as fmt, because of "%f" type crashers.
=============
*/
void QDECL SApi_PrintError( const char *fmt, ... ) {
	va_list		argptr;
	char		msg[MAXPRINTMSG];

	memcpy(msg,"^1Error: ", 10);

	va_start (argptr,fmt);
	Q_vsnprintf (&msg[9], (sizeof(msg)-10), fmt, argptr);
	va_end (argptr);

        Com_PrintMessage( CON_CHANNEL_STEAM, msg, MSG_ERROR);
}

/*
================
Com_DPrintf

A Com_Printf that only shows up if the "developer" cvar is set
================
*/
void QDECL SApi_DPrintf( const char *fmt, ...) {
	va_list		argptr;
	char		msg[MAXPRINTMSG];
		
	if ( !Com_IsDeveloper() ) {
		return;			// don't confuse non-developers with techie stuff...
	}
	
	msg[0] = '^';
	msg[1] = '2';

	va_start (argptr,fmt);	
	Q_vsnprintf (&msg[2], (sizeof(msg)-3), fmt, argptr);
	va_end (argptr);

        Com_PrintMessage( CON_CHANNEL_STEAM, msg, MSG_DEFAULT);
}


void SAPI_DropClientNoNotify(unsigned int drop, const char *reason)
{
	if(drop >= sv_maxclients->integer)
	{
		return;
	}
	SV_DropClientNoNotify(&svs.clients[drop], reason);
}

void SAPI_DropClient(unsigned int drop, const char *reason)
{
	if(drop >= sv_maxclients->integer)
	{
		return;
	}
	SV_DropClient(&svs.clients[drop], reason);
}

void SAPI_SendReliableServerCommand(unsigned int client, msg_t *msg)
{
	if(client >= sv_maxclients->integer)
	{
		return;
	}
	SV_SendReliableServerCommand(&svs.clients[client], msg);
}

void SAPI_AddBanForClient(unsigned int cl, int bantime, const char* banreason)
{
	if(cl >= sv_maxclients->integer)
	{
		return;
	}
	SV_AddBanForClient(&svs.clients[cl], bantime, banreason);
}

void SAPI_ScreenshotArrived(unsigned int cl, const char* filename)
{
	if(cl >= sv_maxclients->integer)
	{
		return;
	}
	SV_ScreenshotArrived(&svs.clients[cl], filename);
}
void SAPI_ModuleArrived(unsigned int cl, const char* filename, long checksum)
{
	if(cl >= sv_maxclients->integer)
	{
		return;
	}
	SV_ModuleArrived(&svs.clients[cl], filename, checksum);
}

void SAPI_GetEmuClientData(unsigned int clnum, struct clientEmu_t *emu)
{
	if(clnum >= sv_maxclients->integer)
	{
		memset(emu, 0, sizeof(struct clientEmu_t));
		return;
	}
	client_t* cl = &svs.clients[clnum];
	
	emu->challenge = cl->challenge;
	emu->playerid = cl->playerid;
	emu->steamid = cl->steamid;
	emu->clanid = cl->clanid;
	emu->steamidPending = cl->steamidPending;
	emu->clanidPending = cl->clanidPending;
	emu->steamstatus = cl->steamstatus;
	emu->name = cl->name;
	emu->maxnamelen = sizeof(cl->name);
	emu->isBot = cl->netchan.remoteAddress.type == NA_BOT;
	emu->inLevel = cl->state == CS_ACTIVE;
	emu->isConnected = cl->state >= CS_CONNECTED;
	emu->isMember = cl->isMember;
	emu->hasValidPassword = cl->hasValidPassword;
	emu->clantag = cl->clantag;
	emu->maxclantaglen = sizeof(cl->clantag);
	emu->legacy_pbguid = cl->legacy_pbguid;
	emu->maxguidlen = sizeof(cl->legacy_pbguid);

}

void SAPI_SetEmuClientData(unsigned int clnum, struct clientEmu_t *emu)
{
	if(clnum >= sv_maxclients->integer)
	{
		return;
	}
	client_t* cl = &svs.clients[clnum];

	cl->challenge = emu->challenge;
	cl->playerid = emu->playerid;
	cl->steamid = emu->steamid;
	cl->clanid = emu->clanid;
	cl->steamidPending = emu->steamidPending;
	cl->clanidPending = emu->clanidPending;
	cl->steamstatus = emu->steamstatus;
	cl->isMember = emu->isMember;
	cl->hasValidPassword = emu->hasValidPassword;

}

void SAPI_GetGameClientData(unsigned int clnum, struct gclientEmu_t *emu)
{
	if(clnum >= sv_maxclients->integer)
	{
		memset(emu, 0, sizeof(struct gclientEmu_t));
		return;
	}
	struct gentity_s* ent = SV_GentityNum(clnum);
	if(ent->client == NULL)
	{
		memset(emu, 0, sizeof(struct gclientEmu_t));
		return;	
	}
	emu->buttons = ent->client->buttons;
	VectorCopy(ent->client->ps.origin, emu->origin);
	VectorCopy(ent->client->ps.viewangles, emu->viewangles);
}


exports_t sapi_imp;


void SV_GetSS_f();

void SV_InitSApi()
{
    cvar_t *sv_noauth = Cvar_RegisterBool("sv_noauth", qfalse, CVAR_INIT, "Start the server without client authentication. Unofficial clients will be able to join.");
    if (sv_noauth->boolean) {
        Com_PrintMessage(CON_CHANNEL_SERVER, "^1Warning: Running without client authentication. Unofficial clients will be able to join.\n", MSG_WARNING);
        return;
    }

	char errormsg[1024];
	void* hmodule;
	imports_t exports;
	exports.Com_Printf = SApi_Printf;
	exports.Com_DPrintf = SApi_DPrintf;
	exports.Com_PrintError = SApi_PrintError;
	exports.Com_PrintWarning = SApi_PrintWarning;
	exports.Com_Quit_f = Com_Quit_f;
	exports.Com_Error = Com_Error;
	exports.Cvar_VariableIntegerValue = Cvar_VariableIntegerValue;
	exports.Cvar_VariableStringBuffer = Cvar_VariableStringBuffer;
	exports.SAPI_DropClientNoNotify = SAPI_DropClientNoNotify;
	exports.SAPI_DropClient = SAPI_DropClient;
	exports.SAPI_SendReliableServerCommand = SAPI_SendReliableServerCommand;
	exports.SAPI_AddBanForClient = SAPI_AddBanForClient;
	exports.SAPI_ScreenshotArrived = SAPI_ScreenshotArrived;
	exports.SAPI_ModuleArrived = SAPI_ModuleArrived;
	exports.FS_SV_HomeWriteFile = FS_SV_HomeWriteFile;
	exports.Sys_Milliseconds = Sys_Milliseconds;
	exports.pkcs_5_alg2 = pkcs_5_alg2_200sleep;
	exports.find_hash = find_hash;
	exports.Cvar_RegisterEnum = Cvar_RegisterEnum;
	exports.Cvar_RegisterString = Cvar_RegisterString;
	exports.Cvar_RegisterBool = Cvar_RegisterBool;
	exports.Cvar_SetString = Cvar_SetString;
	exports.SetClientData = SAPI_SetEmuClientData;
	exports.GetClientData = SAPI_GetEmuClientData;
	exports.GetGameClientData = SAPI_GetGameClientData;

	sv_usesteam64id = Cvar_RegisterBool("sv_usesteam64id", qtrue, CVAR_ARCHIVE, "Display and log Steam64 id in most commands");

	hmodule = Sys_LoadLibrary("steam_api" DLL_EXT);
	if(hmodule == NULL)
	{
		Sys_LoadLibraryError(errormsg, sizeof(errormsg));
		SApi_PrintError("steam_api" DLL_EXT " not found or it was not possible to load. Error is: %s. Steam is not going to work.\n", errormsg);
		return;
	}
	char *buf;
	int len = FS_ReadFileOSPath("steam_api" DLL_EXT, (void**)&buf);
	if(len > 0)
	{
		char* topval = len + buf - 16;
		char* bottomval = buf;
		while(bottomval < topval)
		{
		    if(bottomval[0] == 'B' && strncmp(bottomval, "BeginAuthSession", 16) == 0)
		    {
			break;
		    }
		    ++bottomval;
		}
		if(bottomval == topval)
		{
			free(buf);
			Sys_CloseLibrary(hmodule);
			SApi_PrintError("Steam library is too old and causes incompatibilities with players who are using Steam with a cod4 license.\n");
			return;
		}
		free(buf);
	}
	Init = Sys_GetProcedure("Init");
	if(Init == NULL)
	{
		Sys_CloseLibrary(hmodule);
		SApi_PrintError("Init entrypoint not found. Steam is not going to work.\n");
		return;
	}
	if(Init(&exports, &sapi_imp))
	{
		sv_steamgroup = Cvar_RegisterString("sv_steamgroup", "", CVAR_ARCHIVE | CVAR_LATCH, "Steam group this server belongs to");
	}
	Cmd_AddPCommand ("getss", SV_GetSS_f, 45);
}

void SV_RunSApiFrame()
{
	if(sapi_imp.RunFrame)
		sapi_imp.RunFrame();
}

void SV_NotifySApiDisconnect(client_t* drop)
{
	if(sapi_imp.NotifyDisconnect)
		sapi_imp.NotifyDisconnect(drop - svs.clients);
}



int SV_ConnectSApi(client_t* client)
{
	if(sapi_imp.Connect)
	{
		return sapi_imp.Connect(client - svs.clients);
	}
	return 1;
}


void SV_SApiData(client_t* cl, msg_t* msg)
{
	if(sapi_imp.Data)
	{
		sapi_imp.Data(cl - svs.clients, msg);
		if(cl->state > CS_CONNECTED)
		{
			ClientUserinfoChanged( cl - svs.clients );
		}
	}
}


void SV_SApiShutdown()
{
	if(sapi_imp.Shutdown)
		sapi_imp.Shutdown();
}


void SV_SApiReadSS( client_t* cl, msg_t* msg )
{
	if(sapi_imp.ReadSS)
		sapi_imp.ReadSS( cl - svs.clients, msg );
}

void SV_SApiTakeSS(client_t* cl, const char* savename)
{
	if(sapi_imp.TakeSS)
		sapi_imp.TakeSS( cl - svs.clients, savename );
}

void SV_SApiSendModuleRequest(client_t* cl)
{
    if(sapi_imp.SendModuleRequest)
	{
        sapi_imp.SendModuleRequest(cl - svs.clients);
	}
}

void SV_SApiProcessModules( client_t* cl, msg_t* msg )
{
    if(sapi_imp.ProcessModules)
        sapi_imp.ProcessModules(cl - svs.clients, msg);
}

qboolean SV_SApiGetGroupMemberStatusByClientNum(int clnum, uint64_t groupid, uint64_t reference, void (*callback)(int clientnum, uint64_t steamid, uint64_t groupid, uint64_t reference, bool m_bMember, bool m_bOfficer))
{
	if(sapi_imp.SteamGetGroupMemberStatusByClientNum)
			return sapi_imp.SteamGetGroupMemberStatusByClientNum(clnum, groupid, reference, callback);

	return qfalse;
}

uint32_t SV_SApiGetAuthenticationTicket(unsigned char* data, int *buflen, uint64_t *steamid)
{
	if(sapi_imp.GetAuthenticationTicket)
	{
		return sapi_imp.GetAuthenticationTicket(data, buflen, steamid); //To authenticate this server towards other servers
	}
	return 0;
}

void SV_SApiCancelAuthenticationTicket(uint32_t ticket)
{
	if(sapi_imp.GetAuthenticationTicket)
	{
		sapi_imp.CancelAuthenticationTicket(ticket); //To authenticate this server towards other servers
	}
}

