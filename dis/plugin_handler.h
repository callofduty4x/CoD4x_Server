#define MAX_PLUGINS 25

typedef void convariable_t; //For plugins

#include <execinfo.h>
#include "plugins/plugin_declarations.h"
#include "elf32_parser.c"
#include "plugin_com.h"
//#include "plugin_events.c"

#define PLUGIN_MAX_MALLOCS 50
#define PLUGIN_MAX_SOCKETS 4

// plugins com
#define PLUGIN_COM_MAXNAMELEN 28 // Max 27 chars + \0
#define PLUGIN_MAX_EXPORTS 50 // Maximum count of exported functions, each takes 32B of mem = 1kB per plugin

enum {
        PLUGIN_UNKNOWN = -1
};

typedef struct{
    char name[32];
    xcommand_t xcommand;
}pluginCmd_t;

typedef struct{
    size_t size;
    void *ptr;
}pluginMem_t;

typedef struct{
    char name[PLUGIN_COM_MAXNAMELEN];
    void *(*function)();
}pluginExport_t;

typedef struct{
    int sock;
    netadr_t remote;
    qboolean (*packetEventHandler)(netadr_t *from, msg_t* msg);
}pluginTcpClientSocket_t;

typedef struct{
    int (*OnInit)();	// Initialization function
    void (*OnInfoRequest)();

	void (*OnEvent[PLUGINS_ITEMCOUNT])();
    void (*OnUnload)();	// De-initialization function

	pluginCmd_t cmd[20];
	pluginCmd_t scriptFunction[32];
	pluginCmd_t scriptMethod[32];
	int cmds;
	int scriptfunctions;
	int scriptmethods;
	
	char name[20];
	
	pluginMem_t memory[PLUGIN_MAX_MALLOCS];
	pluginTcpClientSocket_t sockets[PLUGIN_MAX_SOCKETS];
	
	pluginExport_t exportedFunctions[PLUGIN_MAX_EXPORTS];
    int exports;
	
	size_t usedMem;
	int mallocs;
    
	qboolean loaded;
    qboolean enabled;

    void *lib_handle;
    void *lib_start;
    long lib_size;

}plugin_t;

typedef struct{
	plugin_t plugins[MAX_PLUGINS];
	int loadedPlugins;
	qboolean enabled;
	qboolean initializing_plugin;
}pluginWrapper_t;

void Plugin_Load(char*,size_t);
void Plugin_Unload(int id);
void Plugin_Event(int, ...);
void Plugin_Init();
clientScoreboard_t Plugin_GetClientScoreboard(int);
int Plugin_Cmd_GetInvokerUid();
int Plugin_GetPlayerUid(int);
int Plugin_GetSlotCount();
qboolean Plugin_IsSvRunning();
char *Plugin_GetPlayerName(int);
void Plugin_AddCommand(char *, xcommand_t, int power);
void *Plugin_Malloc(int,size_t);
void Plugin_Free(int,void *);
void Plugin_FreeAll(int);
void Plugin_Error(int, char *);
qboolean Plugin_TcpConnect(int,const char *,int);
int Plugin_TcpGetData(int, int, void*, int);
qboolean Plugin_TcpSendData(int,int, void*, int);
void Plugin_TcpCloseConnection(int,int);
int Plugin_CallerID();

void *Plugin_Malloc_p(size_t);
void Plugin_Free_p(void *);
qboolean Plugin_TcpConnect_p( int, const char *);
int Plugin_TcpGetData_p(int, void *, int);
qboolean Plugin_TcpSendData_p(int, void*, int);
void Plugin_TcpCloseConnection_p(int);
qboolean Plugin_UdpSendData_p(netadr_t* to, void* data, int len);
void Plugin_ServerPacketEvent_p(netadr_t* to, void* data, int len);
void Plugin_SetPlayerUID_p(unsigned int clientslot, unsigned int uid);
unsigned int Plugin_GetPlayerUID_p(unsigned int clientslot);
const char* Plugin_GetPlayerGUID_p(unsigned int clientslot);
void Plugin_SetPlayerGUID_p(unsigned int clientslot, const char* guid);
void Plugin_SetPlayerNoPB_p(unsigned int clientslot);
int Plugin_DoesServerUseUids_p(void);
void Plugin_SetServerToUseUids_p(int useuids);
int Plugin_GetLevelTime_p(void);
int Plugin_GetServerTime_p(void);

void Plugin_LoadPlugin_f( void );
void Plugin_UnLoadPlugin_f( void );
void Plugin_PluginList_f( void );
void Plugin_PluginInfo_f( void );
void Plugin_ChatPrintf(int,char *,...);
void Plugin_BoldPrintf(int,char *,...);
