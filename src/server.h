/*
===========================================================================
    Copyright (C) 2010-2013  Ninja and TheKelm
    Copyright (C) 1999-2005 Id Software, Inc.

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



#ifndef __SERVER_H__
#define __SERVER_H__

#include "q_shared.h"
#include "qcommon.h"
#include "sys_net.h"
#include "netchan.h"
#include "entity.h"
#include "player.h"
#include "filesystem.h"
#include "g_hud.h"
#include "g_public.h"
#include "sys_cod4defs.h"
#include "cvar.h"
#include "net_game_conf.h"

#include "net_reliabletransport.h"
#include "cm_public.h"

#include <time.h>


extern struct cm_world_t cm_world;

#define MAX_VOICEPACKETS 40

#define ARCHIVEDSSBUF_SIZE 0x1000000

typedef struct{
	netreliablemsg_t *netstate;
	msg_t recvbuffer;
}reliableprotocol_t;



typedef enum {
	CS_FREE,		// can be reused for a new connection
	CS_ZOMBIE,		// client has been disconnected, but don't reuse
				// connection for a couple seconds
	CS_CONNECTED,		// has been assigned to a client_t, but no gamestate yet
	CS_PRIMED,		// gamestate has been sent, but client hasn't sent a usercmd
	CS_ACTIVE		// client is fully in game
}clientConnectState_t;


//*******************************************************************************

typedef struct {//(0x2146c);
	playerState_t	ps;			//0x2146c
	int		num_entities;
	int		num_clients;		// (0x2f68)
	int		first_entity;		// (0x2f6c)into the circular sv_packet_entities[]
	int		first_client;
							// the entities MUST be in increasing state number
							// order, otherwise the delta compression will fail
	unsigned int	messageSent;		// (0x243e0 | 0x2f74) time the message was transmitted
	unsigned int	messageAcked;		// (0x243e4 | 0x2f78) time the message was acked
	int		messageSize;		// (0x243e8 | 0x2f7c)   used to rate drop packets
	int		var_03;
} clientSnapshot_t;//size: 0x2f84


/* 7472 */
typedef struct
{
  int svFlags;
  int clientMask[2];
  vec3_t absmin;
  vec3_t absmax;
}archivedEntityShared_t;

/* 7473 */
typedef struct archivedEntity_s
{
  entityState_t s;
  archivedEntityShared_t r;
}archivedEntity_t;


typedef struct svEntity_s {
	uint16_t worldSector;
	uint16_t nextEntityInWorldSector;
	archivedEntity_t		baseline;		// 0x04  for delta compression of initial sighting
	int			numClusters;		// if -1, use headnode instead
	int			clusternums[MAX_ENT_CLUSTERS];
	int			lastCluster;		// if all the clusters don't fit in clusternums
	int			linkcontents;
	float		linkmin[2];
	float		linkmax[2];
}svEntity_t; //size: 0x178

#include "cm_public.h"



typedef enum {
    UN_VERIFYNAME,
    UN_NEEDUID,
    UN_OK
}username_t;
#pragma pack(1)


struct client_s
{
	clientConnectState_t	state;
	int					unksnapshotvar;		// must timeout a few frames in a row so debugging doesn't break
	int					deltaMessage;		// frame last client usercmd message
	qboolean			rateDelayed;		// true if nextSnapshotTime was set based on rate instead of snapshotMsec
	netchan_t			netchan;
	//DemoData
	fileHandleData_t	demofile;
	qboolean			demorecording;
	qboolean			demowaiting;
	char				demoName[MAX_QPATH];
	int					demoArchiveIndex;
	int					demoMaxDeltaFrames;
	int					demoDeltaFrameCount;
	qboolean				undercover;
	int					bantime;
	int					clienttimeout;
	int					power;
	int					msgType;
	int					enteredWorldTime;
	unsigned int		clFrames;
	unsigned int		clFrameCalcTime;
	unsigned int		clFPS;
	float			jumpHeight;
	qboolean		needPassword;
	unsigned int	connectedTime;
	char			xversion[8];
	int				protocol;
	qboolean		needupdate;
	qboolean		updateconnOK;
	unsigned int	updateBeginTime;
	reliableprotocol_t	reliablemsg;
	msg_t			incommingrmsg;
	uint64_t		steamid;
	uint64_t		steamidPending;
	uint64_t		clanid;
	uint64_t		clanidPending;
	uint64_t		playerid;
	int			steamstatus;
	int			isMember; //Steam group membership. 
	//If sv_steamgroup is set up this variable will be 0 if membership status is still unknown.
	//It will be -1 if he is not a member or 1 if he is a member or 2 if he is an officer
	int			mutelevel; //1 = voice blocked; 2 = chat and voice blocked

	char		name[36];
	char		clantag[16];

	char*		commandWhitelist[32];

	int 		configDataAcknowledge; //New: to determine which config data updates the client has not yet received
	vec3_t		predictedOrigin;
	int			predictedOriginServerTime;

	const char*		delayDropMsg;
	char			userinfo[MAX_INFO_STRING];		// name, etc 
	reliableCommands_t	reliableCommands[MAX_RELIABLE_COMMANDS];
	int			reliableSequence;	// last added reliable message, not necesarily sent or acknowledged yet
	int			reliableAcknowledge;	// last acknowledged reliable message
	int			reliableSent;		// last sent reliable message, not necesarily acknowledged yet
	int			messageAcknowledge;	//
	int			gamestateMessageNum;	// netchan->outgoingSequence of gamestate
	int			challenge;
	usercmd_t		lastUsercmd;
	int			lastClientCommand;	// reliable client message sequence
	char			lastClientCommandString[MAX_STRING_CHARS];
	gentity_t		*gentity;
	int			wwwDl_var01;
	// downloading
	char			downloadName[MAX_QPATH]; // if not empty string, we are downloading
	fileHandle_t		download;		// file being downloaded
 	int			downloadSize;		// total bytes (can't use EOF because of paks)
 	int			downloadCount;		// bytes sent
	int			downloadClientBlock;	// Current block we send to client
	int			downloadCurrentBlock;	// current block number
	int			downloadXmitBlock;	// last block we xmited
	int			downloadBeginOffset;
	int			downloadNumBytes;
	int			downloadBlockSize;
	qboolean		downloadEOF;		// We have sent the EOF block
	int			downloadSendTime;	// time we last got an ack from the client
	char			wwwDownloadURL[MAX_OSPATH]; // URL from where the client should download the current file

	qboolean		wwwDownload;		
	qboolean		wwwDownloadStarted;	
	qboolean		wwwDlAck;		
	qboolean		wwwDl_failed;
	int			nextReliableTime;	//  svs.time when another reliable command will be allowed
	int			floodprotect;		
	int			lastPacketTime;		// svs.time when packet was last received
	int			lastConnectTime;	// svs.time when connection started
	int			nextSnapshotTime;	// send another snapshot when svs.time >= nextSnapshotTime
	int			timeoutCount;
	clientSnapshot_t	frames[PACKET_BACKUP];	//updates can be delta'd from here
	int			ping;		
	int			rate;		// bytes / second
	int			snapshotMsec;	// requests a snapshot every snapshotMsec unless rate choked
	int			unknown6;
	int			pureAuthentic;
	byte			unsentBuffer[NETCHAN_UNSENTBUFFER_SIZE];
	byte			fragmentBuffer[NETCHAN_FRAGMENTBUFFER_SIZE];
	char			legacy_pbguid[33];
	byte			pad;
	short			scriptId;
	int			canNotReliable;
	int			serverId;
	struct VoicePacket_t	voicePackets[MAX_VOICEPACKETS];
	int			voicePacketCount;
	byte			muteList[MAX_CLIENTS];
	byte			sendVoice;
	byte			receivedstats;
	byte			gamestateSent;
	byte			hasValidPassword;
	stats_t			stats;
	int 			localization; // loc_language
	qboolean		lockedout;
};//0x0a563c

typedef struct client_s client_t;


#define	MAX_STREAM_SERVERS	6
#define	MAX_MASTER_SERVERS	2	// max recipients for heartbeat packets
// this structure will be cleared only when the game dll changes


typedef struct{
int	challengeslot;
int	firsttime;
int	lasttime;
int	attempts;
}connectqueue_t;	//For fair queuing players who wait for an empty slot

#define MAX_TRANSCMDS 32
typedef struct{
	char cmdname[32];
	char cmdargument[1024];
}translatedCmds_t;

typedef struct archivedSnapshot_s
{
  int start;
  int size;
}archivedSnapshot_t;

typedef struct cachedSnapshot_s
{
  int archivedFrame;
  int time;
  int num_entities;
  int first_entity;
  int num_clients;
  int first_client;
  int usesDelta;
}cachedSnapshot_t;


typedef struct cachedClient_s
{
  int playerStateExists;
  clientState_t cs;
  playerState_t ps;
}cachedClient_t;

typedef struct{
	int time;
	char guid[32];
}banlist_t;

#define MAX_SNAPSHOT_ENTITIES	1024
#define MAX_CONFIGDATACACHE 4096
#define NUM_ARCHIVED_FRAMES 1200

typedef struct {//0x8c51780

	cachedSnapshot_t cachedSnapshotFrames[512];
	archivedEntity_t cachedSnapshotEntities[16384];

	qboolean	initialized;				//0x90b4f80 sv_init has completed

	int		time;					// will be strictly increasing across level changes
	int		timeResidual;				// Used for remainder of the integer division of frametime / 1000 and prodive exact timing for svs.time

	int		snapFlagServerBit;			// ^= SNAPFLAG_SERVERCOUNT every SV_SpawnServer()

	client_t	clients[MAX_CLIENTS];				// [sv_maxclients->integer];



	int		numSnapshotEntities;		//0xba0de8c sv_maxclients->integer*PACKET_BACKUP*MAX_PACKET_ENTITIES
	int		numSnapshotClients;
	int		nextSnapshotEntities;		//0xba0de94 next snapshotEntities to use
	int		nextSnapshotClients;

	entityState_t snapshotEntities[0x2A000];
	clientState_t snapshotClients[0x20000];

	int nextArchivedSnapshotFrames; //0xee95e9c

	archivedSnapshot_t archivedSnapshotFrames[NUM_ARCHIVED_FRAMES];
	byte archivedSnapshotBuffer[ARCHIVEDSSBUF_SIZE];
	int nextArchivedSnapshotBuffer;
	int nextCachedSnapshotEntities; //0x10e98420
	int nextCachedSnapshotClients;
	int nextCachedSnapshotFrames;
	cachedClient_t cachedSnapshotClients[4096];

	int numCachedSnapshotEntities;
	int numCachedSnapshotClients;
	int archivedEntityCount;
	int nextArchivedSnapshotErrorTime; //stop error message flooding which can stall the whole server

	int nextStatusResponseTime;

	vec3_t mapCenter;

	unsigned long long	nextHeartbeatTime;
	netadr_t		authorizeAddress;			// ??? for rcon return messages
	client_t		*redirectClient;		//used for SV_ExecuteRemoteControlCmd()
	netadr_t		redirectAddress;
	int				secret;
	unsigned int	frameNextSecond;
	unsigned int	frameNextTenSeconds;
	connectqueue_t	connectqueue[11];
	//An array which contains a part of the update history for configdata
	int				changedConfigData[MAX_CONFIGDATACACHE];
	int				configDataSequence;
	char			commandWhitelistBuf[1024];
	char			sysrestartmessage[1024];
	bool			isIdleHost;
	int				migrationChallenge;
	char			migrationAddr[32];
	msg_t			migrationMsg;
	int			migrationMsgCrc;
	byte			migrationPacketReceivedBits[32];
}serverStatic_t; //Size: 0xb227580


typedef struct {
	qboolean		cmdSystemInitialized;
	int			randint;
	translatedCmds_t	translatedCmd[MAX_TRANSCMDS];
	int			challenge;
	int			useuids;
	int			masterserver_messageid;
	int			masterServer_id;
	char			masterServer_challengepassword[33];
	netadr_t		masterServer_adr;
}permServerStatic_t;


typedef enum {
	SS_DEAD,			// no map loaded
	SS_LOADING,			// spawning level entities
	SS_GAME				// actively running
} serverState_t;




#define MAX_BPS_WINDOW 20

#pragma pack(push, 1)

typedef struct {//0x13e78d00
	serverState_t		state;
	int			timeResidual;		// <= 1000 / sv_frame->value
	int			frameusec;		// Frameusec set every Level-startup to the desired value from sv_fps    Replaces: byte inFrame; byte smp; byte allowNetPackets;
	qboolean		restarting;		// if true, send configstring changes during SS_LOADING
	int			start_frameTime;		//restartedServerId;	serverId before a map_restart
	int			checksumFeed;		// 0x14 the feed key that we use to compute the pure checksum strings
	// https://zerowing.idsoftware.com/bugzilla/show_bug.cgi?id=475
	// the serverId associated with the current checksumFeed (always <= serverId)
/*	int			checksumFeedServerId;
	int			snapshotCounter;	// incremented for each snapshot built

	int			nextFrameTime;		// when time > nextFrameTime, process world
	struct cmodel_s		*models[MAX_MODELS];*/
	byte			unk[0x800];

	uint16_t			emptyConfigString;		//0x13e79518
	uint16_t			configstrings[MAX_CONFIGSTRINGS]; //(0x13e7951a)

	short			unk3; //0x13e7a82e
	svEntity_t		svEntities[MAX_GENTITIES]; //0x1b30 (0x13e7a830) size: 0x5e000

	// the game virtual machine will update these on init and changes
	gentity_t		*gentities;	//0x5fb30  (0x13ed8830)
	int			gentitySize;	//0x5fb34  (0x13ed8834)
	int			num_entities;		// current number, <= MAX_GENTITIES

	playerState_t		*gameClients;		//0x5fb3c
	int			gameClientSize;		//0x5fb40 (13ed8840)will be > sizeof(playerState_t) due to game private data
/*
	int				restartTime;
	int				time;*/

	int			skelTimeStamp;
	int			skelMemPos;
	int			bpsWindow[MAX_BPS_WINDOW];
	int			bpsWindowSteps;
	int			bpsTotalBytes;
	int			bpsMaxBytes;
	int			ubpsWindow[MAX_BPS_WINDOW];
	int			ubpsTotalBytes;
	int			ubpsMaxBytes;
	float		ucompAve;
	int			ucompNum;
	char		gametype[MAX_QPATH]; //(0x13ed8908)
	byte		killserver;
	byte		pad3[3];
	const char* killreason;
} server_t;//Size: 0x5fc50

#pragma pack(pop)


typedef struct{//13F18F80
    client_t	*clients;
    int			time;
    int			snapFlagServerBit;// ^= SNAPFLAG_SERVERCOUNT every SV_SpawnServer()
    int			numSnapshotEntities;	//sv_maxclients->integer*PACKET_BACKUP*MAX_PACKET_ENTITIES
    int			numSnapshotClients;
    int			nextSnapshotEntities;	//next snapshotEntities to use
    int			nextSnapshotClients;
    entityState_t	*snapshotEntities;
    clientState_t	*snapshotClients;
    svEntity_t		*svEntities;	

    vec3_t mapCenter;
    archivedEntity_t *cachedSnapshotEntities;
    cachedClient_t *cachedSnapshotClients;
    byte *archivedSnapshotBuffer;
    cachedSnapshot_t *cachedSnapshotFrames;
    int nextCachedSnapshotFrames;
    int nextArchivedSnapshotFrames;
    int nextCachedSnapshotEntities;
    int nextCachedSnapshotClients;
    int numCachedSnapshotEntities;
    int numCachedSnapshotClients;
    int num_entities;
    int archivedEntityCount;
    int maxclients;
    int fps;
    qboolean clientArchive;
    gentity_t *gentities;
    int gentitySize;
    clientState_t *firstClientState;
    playerState_t *firstPlayerState;
    int physicsTime;
    int clientSize;
}svsHeader_t;


extern server_t sv;
extern serverStatic_t svs;
extern svsHeader_t svsHeader;



typedef struct
{
  int numSnapshotEntities;
  int snapshotEntities[MAX_SNAPSHOT_ENTITIES];
}snapshotEntityNumbers_t;



typedef struct
{
  const float *mins;
  const float *maxs;
  int *list;
  int count;
  int maxcount;
  int contentmask;
}areaParms_t;

/* 7561 */
struct worldContents_s
{
  int contentsStaticModels;
  int contentsEntities;
  int linkcontentsEntities;
  uint16_t entities;
  uint16_t staticModels;
};

/* 7563 */
struct worldTree_s
{
  float dist;
  uint16_t axis;
  union
  {
	uint16_t parent;
	uint16_t nextFree;
  };
  uint16_t child[2];
};

/* 7564 */
struct worldSector_s
{
  struct worldContents_s contents;
  struct worldTree_s tree;
};

/* 7565 */
struct cm_world_t
{
  float mins[3];
  float maxs[3];
  uint16_t freeHead;
  uint16_t gap;
  struct worldSector_s sectors[1024];
};




typedef struct
{
  //Player banned
  char playername[33];
  uint64_t steamid;
  uint64_t playerid;
  netadr_t adr;

  //Admin who did ban
  char adminname[33];
  uint64_t adminsteamid;

  //Details about the ban
  char message[1024];
  time_t expire;
  unsigned int duration; //minutes
	time_t created;
}baninfo_t;


extern	permServerStatic_t	psvs;	// persistant even if server does shutdown
extern	qboolean		svsHeaderValid;
struct moveclip_s;
struct trace_s;


extern cvar_t* sv_rconPassword;
extern cvar_t* sv_protocol;
extern cvar_t* sv_padPackets;
extern cvar_t* sv_demoCompletedCmd;
extern cvar_t* sv_screenshotArrivedCmd;
extern cvar_t* sv_mapDownloadCompletedCmd;
extern cvar_t* sv_wwwBaseURL;
extern cvar_t* sv_maxPing;
extern cvar_t* sv_minPing;
extern cvar_t* sv_authorizemode;
extern cvar_t* sv_privateClients;
extern cvar_t* sv_privatePassword;
extern cvar_t* sv_reconnectlimit;
extern cvar_t* sv_wwwDlDisconnected;
extern cvar_t* sv_allowDownload;
extern cvar_t* sv_wwwDownload;
extern cvar_t* sv_autodemorecord;
extern cvar_t* sv_modStats;
extern cvar_t* sv_password;
extern cvar_t* sv_mapRotation;
extern cvar_t* sv_mapRotationCurrent;
extern cvar_t* sv_randomMapRotation;
extern cvar_t* sv_cheats;
extern cvar_t* sv_consayname;
extern cvar_t* sv_contellname;
extern cvar_t* sv_maxclients;
extern cvar_t* sv_g_gametype;
extern cvar_t* sv_pure;
extern cvar_t* sv_fps;
extern cvar_t* sv_serverid;
extern cvar_t* sv_maxRate;
extern cvar_t* sv_mapname;
extern cvar_t* sv_floodProtect;
extern cvar_t* sv_showAverageBPS;
extern cvar_t* sv_hostname;
extern cvar_t* sv_shownet;
extern cvar_t* sv_legacymode;
extern cvar_t* sv_steamgroup;
extern cvar_t* sv_voice;
extern cvar_t* sv_maxDownloadRate;

#ifdef __cplusplus
extern "C"{
#endif

gentity_t *SV_GentityNum( int num );
int SV_NumForGentity( gentity_t *ent );
playerState_t *SV_GameClientNum( int num );
svEntity_t  *SV_SvEntityForGentity( gentity_t *gEnt );
gentity_t *SV_GEntityForSvEntity( svEntity_t *svEnt );
//
// sv_client.c
//
void SV_ChallengeResponse( int );

void SV_PBAuthChallengeResponse( int );

void SV_Heartbeat_f( void );

void SV_ExecuteClientCommand( client_t *cl, const char *s, qboolean clientOK, qboolean inDl );

void SV_SendClientSnapshot( client_t *cl );

qboolean SV_Acceptclient(int);
client_t* SV_ReadPackets(netadr_t *from, unsigned short qport);
void SV_VoicePacket(netadr_t *from, msg_t* msg);
void SV_UserVoice(client_t* cl, msg_t* msg);
void SV_PreGameUserVoice(client_t* cl, msg_t* msg);
//void SV_BuildClientSnapshot(client_t* cl);
void SV_ArchiveSnapshot(msg_t* msg);

void QDECL SV_SendServerCommand_IW(client_t *cl, int type, const char *fmt, ...);
void QDECL SV_SendServerCommandNoLoss(client_t *cl, const char *fmt, ...);
void QDECL SV_SendServerCommand(client_t *cl, const char *fmt, ...);

__optimize3 __regparm2 void SV_PacketEvent( netadr_t *from, msg_t *msg );

void SV_AddServerCommand( client_t *cl, int type, const char *cmd );

void Scr_SpawnBot(void);

char*	SV_IsGUID(char* guid);

void SV_Shutdown( const char* finalmsg);

void SV_WriteGameState(msg_t*, client_t*);

void SV_GetServerStaticHeader(void);

void SV_ShowClientUnAckCommands( client_t *client );


void SV_WriteDemoMessageForClient( byte *msg, int dataLen, client_t *client );
void SV_StopRecord( client_t *cl );
void SV_RecordClient( client_t* cl, char* basename );
void SV_DemoSystemShutdown( void );
void SV_WriteDemoArchive(client_t *client);

void SV_SendClientVoiceData(client_t *client);

void SV_InitCvarsOnce( void );

void SV_Init( void );

__optimize2 __regparm1 qboolean SV_Frame( unsigned int usec );

unsigned int SV_FrameUsec( void );

void SV_RemoveAllBots( void );

const char* SV_GetMapRotation( void );

void SV_AddOperatorCommands(void);

__optimize3 __regparm1 void SV_GetChallenge(netadr_t *from);
__optimize3 __regparm1 void SV_AuthorizeIpPacket( netadr_t *from );
__optimize3 __regparm1 void SV_DirectConnect( netadr_t *from );
__optimize3 __regparm2 void SV_ReceiveStats(netadr_t *from, msg_t* msg);
void SV_SetClientStat(int clientNum, signed int index, int value);
int SV_GetClientStat(int clientNum, signed int index);
void SV_UserinfoChanged( client_t *cl );
void SV_DropClient( client_t *drop, const char *reason );
void SV_DropClientNoNotify( client_t *drop, const char *reason );
void SV_DelayDropClient(client_t *client, const char *dropmsg);
__optimize3 __regparm3 void SV_UserMove( client_t *cl, msg_t *msg, qboolean delta );
void SV_ClientEnterWorld( client_t *client, usercmd_t *cmd );
void SV_WriteDownloadToClient( client_t *cl );
void SV_SendClientGameState( client_t *client );

void SV_Netchan_Decode( client_t *client, byte *data, int remaining );
void SV_Netchan_Encode( client_t *client, byte *data, int cursize );
qboolean SV_Netchan_Transmit( client_t *client, byte *data, int cursize);
qboolean SV_Netchan_TransmitNextFragment( client_t *client );
void SV_SysAuthorize(char* s);
int SV_ClientAuthMode(void);
qboolean SV_FriendlyPlayerCanBlock(void);
qboolean SV_FFAPlayerCanBlock(void);
const char* SV_GetMessageOfTheDay(void);
const char* SV_GetNextMap(void);
void QDECL SV_EnterLeaveLog( const char *fmt, ... );


qboolean SV_ClientCommand( client_t *cl, msg_t *msg, qboolean inDl);

void SV_WriteRconStatus( msg_t *msg );

void G_PrintAdvertForPlayer(client_t*);
void G_PrintRuleForPlayer(client_t*);
void G_AddRule(const char* newtext);
void G_AddAdvert(const char* newtext);
void G_SetupHudMessagesForPlayer(client_t*);


void SV_SayToPlayers(int clnum, int team, char* text);


__optimize3 __regparm2 void SV_ExecuteClientMessage( client_t *cl, msg_t *msg );

void SV_GetUserinfo( int index, char *buffer, int bufferSize );

qboolean SV_Map(const char* levelname);
void SV_MapRestart( qboolean fastrestart );

void __cdecl SV_SetConfigstring(int index, const char *text);
//SV_SetConfigstring SV_SetConfigstring = (tSV_SetConfigstring)(0x8173fda);
const char* SV_GetGuid(unsigned int clnum, char* buf, int size);
qboolean SV_ExecuteRemoteCmd(int, const char*);
qboolean SV_UseUids();
int SV_GetUid(unsigned int);
void SV_SetUid(unsigned int clnum, unsigned int uid);
gentity_t* SV_AddBotClient(char* requested_name);
gentity_t* SV_RemoveBot();
void SV_AddBan(baninfo_t* baninfo);

//sv_ingameadmin.c:
void SV_RemoteCmdInit();
void SV_RemoteCmdClearAdminList();
int SV_RemoteCmdGetClPower(client_t* cl);
int SV_RemoteCmdGetClPowerByUID(int uid);
void SV_ExecuteBroadcastedCmd(int uid, const char *msg);
qboolean SV_RemoteCmdAddAdmin(int uid, char* guid, int power);
qboolean SV_RemoteCmdInfoAddAdmin(const char* infostring);
void SV_RemoteCmdWriteAdminConfig(char* buffer, int size);
void SV_PrintAdministrativeLog( const char *fmt, ... );

void SV_RemoteCmdSetAdmin(int uid, char* guid, int power);
void SV_RemoteCmdUnsetAdmin(int uid, char* guid);
void SV_RemoteCmdSetPermission(char* command, int power);
void SV_RemoteCmdListAdmins( void );
__cdecl qboolean SV_GameCommand(void);

void SV_GetConfigstring( int index, char *buffer, int bufferSize );
int SV_GetConfigstringIndex(int num);
int SV_GetModelConfigstringIndex(int num);
extern cvar_t* sv_disableChat;
void __cdecl SV_StringUsage_f(void);
void __cdecl SV_ScriptUsage_f(void);
void __cdecl SV_BeginClientSnapshot( client_t *cl, msg_t* msg);
void __cdecl SV_EndClientSnapshot( client_t *cl, msg_t* msg);
void __cdecl SV_ClientThink( client_t *cl, usercmd_t * );
void SV_SpawnServer(const char* levelname);
void __cdecl SV_SetGametype( void );
void __cdecl SV_InitCvars( void );
void __cdecl SV_RestartGameProgs( int savepersist );
void SV_BotInitBotLib( void );
int SV_BotLibSetup( void );
int SV_BotLoadMap(const char* levelname);
void __cdecl SV_PreFrame(void);
void __cdecl SV_SendClientMessages(void);
void __cdecl SV_SetServerStaticHeader(void);
void __cdecl SV_ShutdownGameProgs(void);
void __cdecl SV_FreeClients(void);
void __cdecl SV_GameSendServerCommand(int clientnum, int svscmd_type, const char *text);
void __cdecl SV_SetConfigstring(int index, const char *text);
void __cdecl SV_FreeClient(client_t* drop);
void __cdecl SV_FreeClientScriptId(client_t *cl);
void __cdecl SV_LinkEntity(gentity_t*);
void SV_SpawnServerResetPlayers();
void serverStatus_Write();

int SV_GetPlayerUIDByHandle(const char* handle);
client_t* SV_GetPlayerClByHandle(const char* handle);
const char* SV_GetPlayerNameByHandle(const char* handle);
uint64_t SV_GetPlayerSteamIDByHandle( const char* handle);
void SV_InitGameProgs(int a1);

//sv_banlist.c
void SV_InitBanlist( void );
char* SV_PlayerIsBanned(uint64_t playerid, uint64_t steamid, netadr_t *addr, const char* name, char* message, int len);
char* SV_PlayerBannedByip(netadr_t *netadr, char* message, int len);	//Gets called in SV_DirectConnect
void SV_PlayerAddBanByip(netadr_t *remote, char *message, int expire);
void SV_RemoveBanByip(netadr_t *remote);
void SV_RemoveBan(baninfo_t* baninfo);
void SV_DumpBanlist( void );
void SV_AddBanForPlayer(uint64_t steamid, uint64_t playerid, const char* name, int bantime, const char* banreason);
void SV_AddBanForClient(client_t* cl, int bantime, const char* banreason);
const char* SV_WriteBanTimelimit(int timeleftminutes, char *outbuffer, int outbufferlen);
const char* SV_FormatBanMessage(int timeleftminutes, char *outbuffer, int outbufferlen, const char* reasonfmt, ...);


void SV_AddSafeCommands();

void SV_SetExpectedHunkUsage(const char* name);

void SV_UpdateServerCommandsToClient( client_t *client, msg_t *msg );
void SV_SendMessageToClient( msg_t *msg, client_t *client );
void SV_WriteSnapshotToClient(client_t* client, msg_t* msg);
cachedSnapshot_t* SV_GetCachedSnapshotInternal(int archivedFrame, int depth, bool expectedToSucceed);

void SV_ClipMoveToEntity(struct moveclip_s *clip, svEntity_t *entity, struct trace_s *trace);
void SV_Cmd_Init();
void SV_SteamData(client_t* cl, msg_t* msg);
void __cdecl SV_Trace(trace_t *results, const float *start, const float *mins, const float *maxs, const float *end, IgnoreEntParams *ignoreEntParams, int contentmask, int locational, char *priorityMap, int staticmodels); //0817D9F8
void SV_ClipToEntity( trace_t *trace, const vec3_t start, const vec3_t mins, const vec3_t maxs, const vec3_t end, int entityNum, int contentmask, int capsule );
void G_TraceCapsule(trace_t *results, const float *start, const float *mins, const float *maxs, const float *end, int passEntityNum, int contentmask);
int SV_PointContents( const vec3_t p, int passEntityNum, int contentmask );
qboolean SV_inPVSIgnorePortals( const vec3_t p1, const vec3_t p2 );

qboolean SV_SetupReliableMessageProtocol(client_t* client);
void SV_DisconnectReliableMessageProtocol(client_t* client);
void SV_ReceiveReliableMessages(client_t* client);
void SV_SendReliableServerCommand(client_t* client, msg_t *msg);
void SV_GenerateServerId( );
qboolean SV_RequestStats(client_t* client);
void SV_GetUsername(int clientNum, char* name, int maxlen);
void SV_CalculateChecksums();
void SV_WriteClientConfigInfo( msg_t* msg, client_t* cl, int messageNum );
void SV_UpdateClientConfigInfo(client_t* cl);
void SV_ScreenshotClient(client_t* cl, const char* name);
void SV_ScreenshotArrived(client_t* cl, const char* filename);
void SV_ModuleArrived(client_t* cl, const char* filename, long checksum);
void SV_AddBanForSteamIDGUID(uint64_t id, const char* guid, const char* name, int bantime, const char* banreason);
void SV_ClientCalcFramerate();
int SV_GetPredictedOriginAndTimeForClientNum(int clientNum, float *origin);
void SV_SetMapCenterInSVSHeader(float* center);
void SV_GetMapCenterFromSVSHeader(float* center);
qboolean SV_Loaded();
bool __cdecl SV_GetClientPositionsAtTime(int gametime, vec3_t *pos, vec3_t *angles, bool *success);
clipHandle_t SV_ClipHandleForEntity(gentity_t *touch);

const char *__cdecl SV_GetMapBaseName(const char *mapname);
void __cdecl SV_ResetSkeletonCache();
void __cdecl SV_SetUserinfo(int clientIndex, const char *val);

bool MSG_WriteDeltaArchivedEntity(snapshotInfo_t *snapInfo, msg_t *msg, const int time, archivedEntity_t *from, archivedEntity_t *to, enum DeltaFlags flags);
int MSG_ReadDeltaArchivedEntity(msg_t *msg, const int time, archivedEntity_t *from, archivedEntity_t *to, int number);
uint64_t __cdecl SV_GetPlayerXuid(unsigned int clientNum);

void __cdecl CM_UnlinkEntity(svEntity_t *ent);
void __cdecl CM_LinkEntity(svEntity_t *ent, float *absmin, float *absmax, unsigned int clipHandle);

int SV_GameGetMaxClients();
qboolean SV_FileStillActive(const char* name);
#ifdef COD4X18UPDATE
void SV_ConnectWithUpdateProxy(client_t *cl);
#endif
void SV_WriteChecksumInfo(msg_t* msg, const char* filename);
void __cdecl SV_DObjDumpInfo(gentity_t *ent);
int __cdecl SV_DObjExists(gentity_t *ent);

#ifdef __cplusplus
}
#endif


#define CS_IWDHEADERS 4861 //temporarly until we collected all language file headers
#define CS_IWDCHECKSUMHEADERS 4862 //same
void SV_ParseIWDHeader(client_t* cl, msg_t* msg);

#endif




/*

typedef struct{
    vec3_t direction1;
    vec3_t direction2;
}spawnerrortest_t;


extern spawnerrortest_t e_spawns[64];
*/



