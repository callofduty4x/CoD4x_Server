#ifndef __IN_EXTSAPIMODULE__

#include "msg.h"
#include "server.h"
#include <stdbool.h>

void SV_InitSApi();
void SV_SApiShutdown();
void SV_RunSApiFrame();
void SV_NotifySApiDisconnect(client_t* drop);
int SV_ConnectSApi(client_t* client);
void SV_SApiData(client_t* cl, msg_t* msg);
void SV_SApiTakeSS(client_t* cl, const char* savename);
void SV_SApiReadSS( client_t* cl, msg_t* msg );
void SV_SApiClearSS(client_t* cl);
void SV_SApiSteamIDToString(uint64_t steamid, char* string, int length);
void SV_SApiSteamIDTo64String(uint64_t steamid, char* string, int length);
uint64_t SV_SApiStringToID(const char* steamidstring);
qboolean SV_SApiSteamIDIndividual(uint64_t steamid);
qboolean SV_SApiSteamIDIndividualSteamOnly(uint64_t steamid);
void SV_SApiSteamIDTo3IDString(uint64_t steamid, char* string, int length);
//void SV_SApiReadModules( client_t* cl, msg_t* msg );
//void SV_SApiRequestModules( client_t* cl, msg_t* msg );
void SV_SApiSendModuleRequest(client_t* cl);
void SV_SApiProcessModules( client_t* cl, msg_t* msg );
qboolean SV_SApiGetGroupMemberStatusByClientNum(int clnum, uint64_t groupid, uint64_t reference, void (*callback)(int clientnum, uint64_t steamid, uint64_t groupid, uint64_t reference, bool m_bMember, bool m_bOfficer));

uint64_t SV_SApiGUID2PlayerID(const char* guid);

uint32_t SV_SApiGetAuthenticationTicket(unsigned char* data, int *buflen, uint64_t *steamid);
void SV_SApiCancelAuthenticationTicket(uint32_t ticket);
#endif

#if defined(__IN_EXTSAPIMODULE__) || defined(__IN_SAPIMODULE__)

#ifdef __GNUC__
#define __packed __attribute__((__packed__))
#else
#define __packed
#endif 

struct __packed clientEmu_t
{
	//Large members first. GCC is error prone in packaging...
	uint64_t playerid;
	uint64_t steamid;
	uint64_t clanid;
	uint64_t steamidPending;
	uint64_t clanidPending;
	int challenge;
	int steamstatus;
	char *name;
	int maxnamelen;
	int isMember;
	char* clantag;
	int maxclantaglen;
	char* legacy_pbguid;
	int maxguidlen;
	bool isBot;
	bool inLevel;
	bool isConnected;
	bool hasValidPassword;
};

struct gclientEmu_t
{
	int buttons;
	vec3_t origin;
	vec3_t viewangles;
};

typedef struct{
	void (*Com_Printf)( const char *fmt, ... );
	void (*Com_DPrintf)( const char *fmt, ... );
  void (*Com_PrintError)( const char *fmt, ... );
  void (*Com_PrintWarning)( const char *fmt, ... );
  void (*Com_Quit_f)( );
  void (*Com_Error)( int code, const char *fmt, ... );
	int (*Cvar_VariableIntegerValue)( const char *var_name );
	const char *(*Cvar_VariableStringBuffer)( const char *var_name, char *buf, int sizebuf );

	void (*SAPI_DropClientNoNotify)( unsigned int drop, const char *reason );
	void (*SAPI_DropClient)( unsigned int drop, const char *reason );
	void (*SAPI_SendReliableServerCommand)(unsigned int client, msg_t *msg);
	void (*SAPI_AddBanForClient)(unsigned int cl, int bantime, const char* banreason);
	void (*SAPI_ScreenshotArrived)(unsigned int cl, const char* filename);
    void (*SAPI_ModuleArrived)(unsigned int cl, const char* filename, long checksum);

	int (*FS_SV_HomeWriteFile)( const char *qpath, const void *buffer, int size);
	unsigned int (*Sys_Milliseconds)();
	int (*pkcs_5_alg2)(const unsigned char *password, unsigned long password_len,
	                const unsigned char *salt,     unsigned long salt_len,
	                int iteration_count,           int hash_idx,
	                unsigned char *out,            unsigned long *outlen);
	int (*find_hash)(const char* name);
	cvar_t* (*Cvar_RegisterEnum)(const char* name, const char** strings, int integer, unsigned short flags, const char* description);
	cvar_t* (*Cvar_RegisterString)(const char *var_name, const char *var_value, unsigned short flags, const char *var_description);
	cvar_t* (*Cvar_RegisterBool)(const char *var_name, qboolean var_value, unsigned short flags, const char *var_description);
	void (*Cvar_SetString)(cvar_t*, const char*);
	void (*SetClientData)(unsigned int clnum, struct clientEmu_t *emu);
	void (*GetClientData)(unsigned int clnum, struct clientEmu_t *emu);
	void (*GetGameClientData)(unsigned int clnum, struct gclientEmu_t *emu);
}imports_t;


typedef struct{
	void (*TakeSS)(unsigned int num, const char* savename);
	void (*ReadSS)( unsigned int num, msg_t* msg );
    void (*SendModuleRequest)(unsigned int num);
    void (*ProcessModules)(unsigned int num, msg_t* msg);
	void (*Shutdown)();
	void (*Data)(unsigned int num, msg_t* msg);
	int (*Connect)(unsigned int num);
	void (*NotifyDisconnect)(unsigned int num);
	void (*RunFrame)();
	bool (*SteamGetGroupMemberStatusByClientNum)(int clnum, uint64_t groupid, uint64_t reference, void (*callback)(int clientnum, uint64_t steamid, uint64_t groupid, uint64_t reference, bool m_bMember, bool m_bOfficer)); //reference is user configurable variable passed back to callback
	uint32_t (*GetAuthenticationTicket)(unsigned char* data, int *buflen, uint64_t* steamid); //To authenticate this server towards other servers
	void (*CancelAuthenticationTicket)(uint32_t ticket); //To authenticate this server towards other servers
}exports_t;


#endif

