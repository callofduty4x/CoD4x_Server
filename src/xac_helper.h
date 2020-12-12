#ifndef __XAC_HELPER__H__
#define __XAC_HELPER__H__
#ifndef __IN_EXTXACHLPMODULE__

#include "msg.h"
#include "server.h"
#include <stdbool.h>

void SV_PassNETMessageXAC(client_t* client, msg_t* msg);
void SV_ConnectXAC(client_t* client);
void SV_DisconnectXAC(client_t* client);
void SV_RunFrameXAC();

#endif

#if defined(__IN_EXTXACHLPMODULE__) || defined(__IN_XACMODULE__)

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

	void (*XACHLP_DropClientNoNotify)( unsigned int drop, const char *reason );
	void (*XACHLP_DropClient)( unsigned int drop, const char *reason );
	void (*XACHLP_SendReliableServerCommand)(unsigned int client, msg_t *msg);
	void (*XACHLP_AddBanForClient)(unsigned int cl, int bantime, const char* banreason);
	void (*XACHLP_ScreenshotArrived)(unsigned int cl, const char* filename);
	void (*XACHLP_ModuleArrived)(unsigned int cl, const char* filename, long checksum);

	int (*FS_SV_HomeWriteFile)( const char *qpath, const void *buffer, int size);
	unsigned int (*Sys_Milliseconds)();
	cvar_t* (*Cvar_RegisterEnum)(const char* name, const char** strings, int integer, unsigned short flags, const char* description);
	cvar_t* (*Cvar_RegisterString)(const char *var_name, const char *var_value, unsigned short flags, const char *var_description);
	cvar_t* (*Cvar_RegisterBool)(const char *var_name, qboolean var_value, unsigned short flags, const char *var_description);
	void (*Cvar_SetString)(cvar_t*, const char*);
	void (*SetClientData)(unsigned int clnum, struct clientEmu_t *emu);
	void (*GetClientData)(unsigned int clnum, struct clientEmu_t *emu);
	void (*GetGameClientData)(unsigned int clnum, struct gclientEmu_t *emu);
	void (*SetConfigstring)(int index, const char* val);
	void (*EnterWorldLock)(unsigned int client, qboolean status);
	void (*SendClientGameState)(unsigned int client);

}imports_t;


typedef struct{
	void (*TakeSS)(unsigned int num, const char* savename);
	void (*ReadSS)( unsigned int num, msg_t* msg );
	void (*Shutdown)();
	void (*Data)(unsigned int num, msg_t* msg);
	void (*Connect)(unsigned int num);
	void (*Disconnect)(unsigned int num);
	void (*RunFrame)();
	void (*InitXAC)();
	void (*PassClientMessage)(unsigned int clientnum, msg_t* msg);
}exports_t;


#endif
#endif
