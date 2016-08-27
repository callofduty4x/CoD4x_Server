#ifndef __IN_EXTSAPIMODULE__

#include "msg.h"
#include "server.h"

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
//void SV_SApiReadModules( client_t* cl, msg_t* msg );
//void SV_SApiRequestModules( client_t* cl, msg_t* msg );
void SV_SApiSendModuleRequest(client_t* cl);
void SV_SApiProcessModules( client_t* cl, msg_t* msg );

uint64_t SV_SApiGUID2PlayerID(const char* guid);

#endif

#if defined(__IN_EXTSAPIMODULE__) || defined(__IN_SAPIMODULE__)

typedef struct{
	void (*Com_Printf)( const char *fmt, ... );
	void (*Com_DPrintf)( const char *fmt, ... );
  void (*Com_PrintError)( const char *fmt, ... );
  void (*Com_PrintWarning)( const char *fmt, ... );
  void (*Com_Quit_f)( );
  void (*Com_Error)( int code, const char *fmt, ... );
	int (*Cvar_VariableIntegerValue)( const char *var_name );
	const char *(*Cvar_VariableStringBuffer)( const char *var_name, char *buf, int sizebuf );
#ifndef __cplusplus
	void (*SV_DropClientNoNotify)( client_t *drop, const char *reason );
	void (*SV_DropClient)( client_t *drop, const char *reason );
	void (*SV_SendReliableServerCommand)(client_t* client, msg_t *msg);
	void (*SV_AddBanForClient)(client_t* cl, int bantime, const char* banreason);
	void (*SV_ScreenshotArrived)(client_t* cl, const char* filename);
    void (*SV_ModuleArrived)(client_t* cl, const char* filename, long checksum);
#else
	void (*SV_DropClientNoNotify)( void *drop, const char *reason );
	void (*SV_DropClient)( void *drop, const char *reason );
	void (*SV_SendReliableServerCommand)(void* client, void *msg);
	void (*SV_AddBanForClient)(void* cl, int bantime, const char* banreason);
	void (*SV_ScreenshotArrived)(void* cl, const char* filename);
    void (*SV_ModuleArrived)(void* cl, const char* filename, long checksum);
#endif
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

}imports_t;


#ifdef __SERVER_H__
typedef struct{
	void (*TakeSS)(client_t* cl, const char* savename);
	void (*ReadSS)( client_t* cl, msg_t* msg );
    void (*SendModuleRequest)(client_t* cl);
    void (*ProcessModules)(client_t* cl, msg_t* msg);
	void (*Shutdown)();
	void (*Data)(client_t* cl, msg_t* msg);
	int (*Connect)(client_t* client);
	void (*NotifyDisconnect)(client_t* drop);
	void (*RunFrame)();
}exports_t;
#endif


#endif
