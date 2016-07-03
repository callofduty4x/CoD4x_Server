/* Converted to D from CoD4X17a_testing/src/server.h by htod */
module cod4x.server;

// MAX_CHALLENGES is made large to prevent a denial
// of service attack that could cycle all of them
// out before legitimate users connected
//C     #define	MAX_CHALLENGES	1024
// Allow a certain amount of challenges to have the same IP address
const MAX_CHALLENGES = 1024;
// to make it a bit harder to DOS one single IP address from connecting
// while not allowing a single ip to grab all challenge resources
//C     #define MAX_CHALLENGES_MULTI (MAX_CHALLENGES / 2)
const GENTITYNUM_BITS  =   10;  // JPW NERVE put q3ta default back for testing	// don't need to send any more
//#define	GENTITYNUM_BITS		11		// don't need to send any more		(SA) upped 4/21/2001 adjusted: tr_local.h (802-822), tr_main.c (1501), sv_snapshot (206)
const MAX_GENTITIES     =  ( 1 << GENTITYNUM_BITS );

// entitynums are communicated with GENTITY_BITS, so any reserved
// values thatare going to be communcated over the net need to
// also be in this range
const ENTITYNUM_NONE   =   ( MAX_GENTITIES - 1 );

/**********************************************************/

const ENTITYNUM_WORLD  =   ( MAX_GENTITIES - 2 );
const ENTITYNUM_MAX_NORMAL =   ( MAX_GENTITIES - 2 );

//C     #define CLIENT_BASE_ADDR 0x90b4f8C

const client_t* CLIENT_BASE_ADDR = cast(client_t*)0x90b4f8C;
//C     #define MAX_QPATH 64
//C     #define GENTITYNUM_BITS     10  // JPW NERVE put q3ta default back for testing	// don't need to send any more
const MAX_QPATH = 64;
//#define	GENTITYNUM_BITS		11		// don't need to send any more		(SA) upped 4/21/2001 adjusted: tr_local.h (802-822), tr_main.c (1501), sv_snapshot (206)
//C     #define MAX_GENTITIES       ( 1 << GENTITYNUM_BITS )
//C     #define	MAX_STRING_CHARS	1024
//C     #define MAX_INFO_STRING		1024
const MAX_STRING_CHARS = 1024;
//C     #define MAX_RELIABLE_COMMANDS 128
const MAX_INFO_STRING = 1024;
//C     #define MAX_NAME_LENGTH		16
const MAX_RELIABLE_COMMANDS = 128;
//C     #define MAX_DOWNLOAD_WINDOW	8
const MAX_NAME_LENGTH = 16;
//C     #define MAX_OSPATH			256
const MAX_DOWNLOAD_WINDOW = 8;
//C     #define PACKET_BACKUP		32
const MAX_OSPATH = 256;
//C     #define MAX_CLIENTS			64
const PACKET_BACKUP = 32;
//C     #define NETCHAN_UNSENTBUFFER_SIZE 0x20000
const MAX_CLIENTS = 64;
//C     #define NETCHAN_FRAGMENTBUFFER_SIZE 0x800
const NETCHAN_UNSENTBUFFER_SIZE = 0x20000;
//C     #define	MAX_ENT_CLUSTERS	16
const NETCHAN_FRAGMENTBUFFER_SIZE = 0x800;
//C     #define MAX_CLIENTS 64
const MAX_ENT_CLUSTERS = 16;
//C     #define MAX_CONFIGSTRINGS 2442

const MAX_CONFIGSTRINGS = 2442;
//C     #define COD4X17A

//C     typedef enum {
//C     	CS_FREE,		// can be reused for a new connection
//C     	CS_ZOMBIE,		// client has been disconnected, but don't reuse
				// connection for a couple seconds
//C     	CS_CONNECTED,		// has been assigned to a client_t, but no gamestate yet
//C     	CS_PRIMED,		// gamestate has been sent, but client hasn't sent a usercmd
//C     	CS_ACTIVE		// client is fully in game
//C     }clientState_t;
enum
{
    CS_FREE,
    CS_ZOMBIE,
    CS_CONNECTED,
    CS_PRIMED,
    CS_ACTIVE,
}
extern (C):
alias int clientState_t;


//*******************************************************************************

//C     struct	sharedEntity_t;

//C     typedef char byte;
//C     typedef int qboolean;
alias qboolean = int;
//C     typedef float vec_t;
alias float vec_t;
//C     typedef vec_t vec2_t[2];
alias vec_t [2]vec2_t;
//C     typedef vec_t vec3_t[3];
alias vec_t [3]vec3_t;
//C     typedef vec_t vec4_t[4];
alias vec_t [4]vec4_t;
//C     typedef vec_t vec5_t[5];
alias vec_t [5]vec5_t;
//C     typedef int clipHandle_t;
alias int clipHandle_t;

//C     typedef enum {
//C         UN_VERIFYNAME,
//C         UN_NEEDUID,
//C         UN_OK
//C     }username_t;
enum
{
    UN_VERIFYNAME,
    UN_NEEDUID,
    UN_OK,
}
alias int username_t;


//C     typedef struct
//C     {
//C     	char num;
//C     	char data[256];
//C     	int dataLen;
//C     }voices_t;
align(1) struct _N3
{align(1):
    char num;
    char [256]data;
    int dataLen;
}
alias _N3 voices_t;

//C     typedef struct{
//C     	char command[MAX_STRING_CHARS];
//C     	int cmdTime;
//C     	int cmdType;
//C     }reliableCommands_t;
align(1) struct _N4
{align(1):
    char [1024]command;
    int cmdTime;
    int cmdType;
}
alias _N4 reliableCommands_t;

//C     typedef enum {
//C     	NS_CLIENT,
//C     	NS_SERVER
//C     } netsrc_t;
enum
{
    NS_CLIENT,
    NS_SERVER,
}
alias int netsrc_t;

//C     typedef enum {
//C     	NA_BAD = 0,					// an address lookup failed
//C     	NA_BOT = 0,
//C     	NA_LOOPBACK = 2,
//C     	NA_BROADCAST = 3,
//C     	NA_IP = 4,
//C     	NA_IP6 = 5,
//C     	NA_TCP = 6,
//C     	NA_TCP6 = 7,
//C     	NA_MULTICAST6 = 8,
//C     	NA_UNSPEC = 9,
//C     	NA_DOWN = 10,
//C     } netadrtype_t;
enum
{
    NA_BAD,
    NA_BOT = 0,
    NA_LOOPBACK = 2,
    NA_BROADCAST,
    NA_IP,
    NA_IP6,
    NA_TCP,
    NA_TCP6,
    NA_MULTICAST6,
    NA_UNSPEC,
    NA_DOWN,
}
alias int netadrtype_t;

//C     typedef align(1) struct { align(1)://Not Known
//C     		byte offHandIndex;
//C     		byte field_16;
//C     		byte field_17;
//C     		int field_18;
//C     		int field_1C;
//C     	} usercmd_t;
struct usercmd_t
{
	byte[32] dummy;
}

//C     typedef align(1) struct { align(1):
//C     	netadrtype_t	type;
//C     	int				scope_id;
//C     	unsigned short	port;
//C     	int				sock;	//Socket FD. 0 = any socket
//C         union{
//C     	    byte	ip[4];
//C     	    byte	ipx[10];
//C     	    byte	ip6[16];
//C     	};

//C     }netadr_t;
align(1) struct netadr_t
{align(1):
    netadrtype_t type;
    int scope_id;
    ushort port;
    int sock;
    union
	{
		byte [4]ip;
		byte [10]ipx;
		byte [16]ip6;
	}
}

//C     typedef align(1) struct { align(1):
	// sequencing variables
//C     	int			outgoingSequence;
//C     	netsrc_t	sock;
//C     	int			dropped;			// between last packet and previous
//C     	int			incomingSequence;

	//Remote address
//C     	netadr_t	remoteAddress;			// (0x10)
//C     	unsigned short			qport;			// qport value to write when transmitting (0x24)
//C     	unsigned short			upperqport;
	// incoming fragment assembly buffer
//C     	int			fragmentSequence;
//C     	int			fragmentLength;	
//C     	byte		*fragmentBuffer; // Old: (0x30)
//C     	int			fragmentBufferSize;

	// outgoing fragment buffer
	// we need to space out the sending of large fragmented messages
//C     	qboolean	unsentFragments;
//C     	int			unsentFragmentStart;
//C     	int			unsentLength;
//C     	byte		*unsentBuffer; //Old: (0x44)
//C     	int			unsentBufferSize;
//C     } netchan_t;
align(1) struct netchan_t
{
align(1): 
    int outgoingSequence;
    netsrc_t sock;
    int dropped;
    int incomingSequence;
    netadr_t remoteAddress;
    ushort qport;
    ushort upperqport;
    int fragmentSequence;
    int fragmentLength;
    byte *fragmentBuffer;
    int fragmentBufferSize;
    qboolean unsentFragments;
    int unsentFragmentStart;
    int unsentLength;
    byte *unsentBuffer;
    int unsentBufferSize;
}

//C     typedef enum {
//C     	TR_STATIONARY,
//C     	TR_INTERPOLATE,				// non-parametric, but interpolate between snapshots
//C     	TR_LINEAR,
//C     	TR_LINEAR_STOP,
//C     	TR_SINE,					// value = base + sin( time / duration ) * delta
//C     	TR_GRAVITY
//C     } trType_t;
enum
{
    TR_STATIONARY,
    TR_INTERPOLATE,
    TR_LINEAR,
    TR_LINEAR_STOP,
    TR_SINE,
    TR_GRAVITY,
}
alias int trType_t;

//C     typedef align(1) struct { align(1):
//C     	trType_t	trType;
//C     	int		trTime;
//C     	int		trDuration;			// if non 0, trTime + trDuration = stop time
//C     	vec3_t		trBase;
//C     	vec3_t		trDelta;			// velocity, etc
//C     } trajectory_t;
align(1) struct _N11
{
    trType_t trType;
    int trTime;
    int trDuration;
    vec3_t trBase;
    vec3_t trDelta;
}
alias _N11 trajectory_t;


//C     typedef struct{
//C     	int	cullDist;
//C     	int	period;
//C     }lerp_loopFx_t;
align(1) struct _N12
{
    int cullDist;
    int period;
}
alias _N12 lerp_loopFx_t;


//C     typedef struct{
//C     	int	bodyPitch;
//C     	int	bodyRoll;
//C     	int	steerYaw;
//C     	int	materialTime;
//C     	int	gunPitch;
//C     	int	gunYaw;
//C     	int	teamAndOwnerIndex;
//C     }lerp_vehicle_t;
align(1) struct _N13
{
align(1):
    int bodyPitch;
    int bodyRoll;
    int steerYaw;
    int materialTime;
    int gunPitch;
    int gunYaw;
    int teamAndOwnerIndex;
}
alias _N13 lerp_vehicle_t;


//C     typedef struct{
//C     	int	lerp;
//C     }lerp_soundBlend_t;
align(1) struct _N14
{align(1):
    int lerp;
}
alias _N14 lerp_soundBlend_t;


//C     typedef struct{
//C     	int	launchTime;
//C     }lerp_missile_t;
align(1) struct _N15
{align(1):
    int launchTime;
}
alias _N15 lerp_missile_t;


//C     typedef struct{
//C     	int	leanf;
//C     	int	movementDir;
//C     }lerp_player_t;
align(1) struct _N16
{align(1):
    int leanf;
    int movementDir;
}
alias _N16 lerp_player_t;


//C     typedef struct{
//C     	int	data[6];
//C     }lerp_anonymous_t;
align(1) struct _N17
{align(1):
    int [6]data;
}
alias _N17 lerp_anonymous_t;

//C     typedef align(1) struct { align(1):
//C     	int		eFlags;
//C     	trajectory_t	pos;	// for calculating position	0x0c
//C     	trajectory_t	apos;	// for calculating angles	0x30
//C     	union{
//C     		lerp_anonymous_t	anonymous;
//C     		lerp_player_t		player;
//C     		lerp_missile_t		missile;
//C     		lerp_soundBlend_t	soundBlend;
//C     		lerp_loopFx_t		loopFx;
//C     		lerp_vehicle_t		vehicle;
//C     	}u;
union _N19
{
    lerp_anonymous_t anonymous;
    lerp_player_t player;
    lerp_missile_t missile;
    lerp_soundBlend_t soundBlend;
    lerp_loopFx_t loopFx;
    lerp_vehicle_t vehicle;
}
//C     }lerp_t;
align(1) struct _N18
{align(1):
    int eFlags;
    trajectory_t pos;
    trajectory_t apos;
    _N19 u;
}
alias _N18 lerp_t;

// entityState_t is the information conveyed from the server
// in an update message about entities that the client will
// need to render in some way
// Different eTypes may use the information in different ways
// The messages are delta compressed, so it doesn't really matter if
// the structure size is fairly large

//C     typedef align(1) struct { align(1)://Confirmed names and offsets but not types

//C     	int		number;			// entity index	//0x00
//C     	int		eType;			// entityType_t	//0x04

//C     	lerp_t		lerp;

//C     	int		time2;			//0x70


//C     	int		otherEntityNum;		//0x74 shotgun sources, etc
//C     	int		attackerEntityNum;	//0x78

//C     	int		groundEntityNum;	//0x7c -1 = in air

//C     	int		loopSound;		//0x80 constantly loop this sound
//C     	int		surfType;		//0x84


//C     	clipHandle_t	index;			//0x88
//C     	int		clientNum;		//0x8c 0 to (MAX_CLIENTS - 1), for players and corpses
//C     	int		iHeadIcon;		//0x90
//C     	int		iHeadIconTeam;		//0x94

//C     	int		solid;			//0x98 for client side prediction, trap_linkentity sets this properly	0x98

//C     	int		eventParm;		//0x9c impulse events -- muzzle flashes, footsteps, etc
//C     	int		eventSequence;		//0xa0

//C     	vec4_t		events;			//0xa4
//C     	vec4_t		eventParms;		//0xb4

	// for players
//C     	int		weapon;			//0xc4 determines weapon and flash model, etc
//C     	int		weaponModel;		//0xc8
//C     	int		legsAnim;		//0xcc mask off ANIM_TOGGLEBIT
//C     	int		torsoAnim;		//0xd0 mask off ANIM_TOGGLEBIT

//C     	union{
//C     		int	helicopterStage;	//0xd4
//C     	}un1;
union _N20
{
    int helicopterStage;
}
//C     	int		un2;			//0xd8
//C     	int		fTorsoPitch;		//0xdc
//C     	int		fWaistPitch;		//0xe0
//C     	vec4_t		partBits;		//0xe4
//C     } entityState_t;	//sizeof(entityState_t): 0xf4
align(1) struct entityState_s
{align(1):
    int number;
    int eType;
    lerp_t lerp;
    int time2;
    int otherEntityNum;
    int attackerEntityNum;
    int groundEntityNum;
    int loopSound;
    int surfType;
    clipHandle_t index;
    int clientNum;
    int iHeadIcon;
    int iHeadIconTeam;
    int solid;
    int eventParm;
    int eventSequence;
    vec4_t events;
    vec4_t eventParms;
    int weapon;
    int weaponModel;
    int legsAnim;
    int torsoAnim;
    _N20 un1;
    int un2;
    int fTorsoPitch;
    int fWaistPitch;
    vec4_t partBits;
}
alias entityState_s entityState_t;


//C     typedef align(1) struct { align(1):
	//entityState_t	s;				//Duplicated struct is removed
//C     	byte		linked;				//0xf4 qfalse if not in any good cluster

//C     	byte		bmodel;				//0xf5 if false, assume an explicit mins / maxs bounding box
							// only set by trap_SetBrushModel
//C     	short		unknown1;
//C     	int		unknown2[4];

//C     	vec3_t		mins, maxs;		//0x108  //0x114  from SharedEntity_t

//C     	int		contents;		// CONTENTS_TRIGGER, CONTENTS_SOLID, CONTENTS_BODY, etc
						// a non-solid entity should set to 0

//C     	vec3_t		absmin, absmax;		//0x124  //0x130 derived from mins/maxs and origin + rotation

	// currentOrigin will be used for all collision detection and world linking.
	// it will not necessarily be the same as the trajectory evaluation for the current
	// time, because each entity must be moved one at a time after time is advanced
	// to avoid simultanious collision issues
//C     	vec3_t		currentOrigin;		//0x13c
//C     	vec3_t		currentAngles;		//0x148

	// when a trace call is made and passEntityNum != ENTITYNUM_NONE,
	// an ent will be excluded from testing if:
	// ent->s.number == passEntityNum	(don't interact with self)
	// ent->r.ownerNum == passEntityNum	(don't interact with your own missiles)
	// entity[ent->r.ownerNum].r.ownerNum == passEntityNum	(don't interact with other missiles from owner)
//C     	short			ownerNum;	//0x154
//C     	short			unknown3;
//C     	int			eventTime;
//C     } entityShared_t;
align(1) struct _N21
{align(1):
    byte linked;
    byte bmodel;
    short unknown1;
    int [4]unknown2;
    vec3_t mins;
    vec3_t maxs;
    int contents;
    vec3_t absmin;
    vec3_t absmax;
    vec3_t currentOrigin;
    vec3_t currentAngles;
    short ownerNum;
    short unknown3;
    int eventTime;
}
alias _N21 entityShared_t;


// the server looks at a sharedEntity, which is the start of the game's gentity_t structure
//C     typedef align(1) struct { align(1):
//C     	entityState_t	s;				// communicated by server to clients
//C     	entityShared_t	r;				// shared by both the server system and game
//C     } sharedEntity_t;
align(1) struct _N22
{align(1):
    entityState_t s;
    entityShared_t r;
}
alias _N22 sharedEntity_t;

//C     typedef struct gentity_s gentity_t;
alias gentity_s gentity_t;


align(1) struct gentity_s
{align(1):
    entityState_t s;
    entityShared_t r;
    gclient_s *client;
    qboolean inuse;
    int vehicle;
    int field_168;
    int field_16C;
    int classname;
    int field_174;
    int field_178;
    int spawnflags;
    char [244]unknown;
}

align(1) struct client_t { 
align(1)://90b4f8c
	clientState_t		state;
	int			unksnapshotvar;		// must timeout a few frames in a row so debugging doesn't break
	int			deltaMessage;		// (0x8) frame last client usercmd message
	qboolean		rateDelayed;		// true if nextSnapshotTime was set based on rate instead of snapshotMsec
	netchan_t		netchan;	//(0x10)
	//DemoData
	byte[284]	demofile;
	qboolean		demorecording;
	qboolean		demowaiting;
	char[MAX_QPATH]			demoName;
	int			demoArchiveIndex;
	int			demoMaxDeltaFrames;
	int			demoDeltaFrameCount;

	int			authentication;
	qboolean		playerauthorized;
	qboolean		noPb;
	username_t		usernamechanged;
	int			bantime;
	int			clienttimeout;
	int			uid;
	char			OS;
	int			power;
	char[33]			originguid;
	qboolean		firstSpawn;
	void		*hudMsg;
	int			msgType;
	uint		currentAd;
	int			enteredWorldTime;
	byte[MAX_GENTITIES / 8]			entityNotSolid;//One bit for entity
	byte[MAX_GENTITIES / 8]			entityInvisible;//One bit for entity
	uint		clFrames;
	uint		clFrameCalcTime;
	uint		clFPS;
	float			jumpHeight;
	int			gravity;
	int			playerMoveSpeed;
	qboolean		needPassword;
	qboolean		needPasswordNotified;
	char[32]			loginname;
	//Free Space
	qboolean		enteredWorldForFirstTime;
	uint		connectedTime;
	char[8]			xversion;
	int			protocol;
	qboolean		needupdate;
	qboolean		updateconnOK;
	byte[110]			dummy767;	
	byte[518]			free;

	char[64]			name;

	int			unknownUsercmd1;	//0x63c
	int			unknownUsercmd2;	//0x640
	int			unknownUsercmd3;	//0x644
	int			unknownUsercmd4;	//0x648

	const char*		delayDropMsg;		//0x64c
	char[MAX_INFO_STRING]			userinfo;		// name, etc (0x650)
	reliableCommands_t[MAX_RELIABLE_COMMANDS]	reliableCommands;	// (0xa50)
	int			reliableSequence;	// (0x20e50)last added reliable message, not necesarily sent or acknowledged yet
	int			reliableAcknowledge;	// (0x20e54)last acknowledged reliable message
	int			reliableSent;		// last sent reliable message, not necesarily acknowledged yet
	int			messageAcknowledge;	// (0x20e5c)
	int			gamestateMessageNum;	// (0x20e60) netchan->outgoingSequence of gamestate
	int			challenge; //0x20e64
//Unknown where the offset error is
	usercmd_t		lastUsercmd;		//(0x20e68)
	int			lastClientCommand;	//(0x20e88) reliable client message sequence
	char[MAX_STRING_CHARS]			lastClientCommandString; //(0x20e8c)
	void		*gentity;		//(0x2128c)

	char[MAX_NAME_LENGTH]			shortname;	//(0x21290) extracted from userinfo, high bits masked
	int			wwwDl_var01;
	// downloading
	char[MAX_QPATH]			downloadName; //(0x212a4) if not empty string, we are downloading
	int		download;		//(0x212e4) file being downloaded
 	int			downloadSize;		//(0x212e8) total bytes (can't use EOF because of paks)
 	int			downloadCount;		//(0x212ec) bytes sent
	int			downloadClientBlock;	//(0x212f0) last block we sent to the client, awaiting ack
	int			downloadCurrentBlock;	//(0x212f4) current block number
	int			downloadXmitBlock;	//(0x212f8) last block we xmited
	byte *[MAX_DOWNLOAD_WINDOW]downloadBlocks;	//(0x212fc) the buffers for the download blocks
	int[MAX_DOWNLOAD_WINDOW]			downloadBlockSize;	//(0x2131c)
	qboolean		downloadEOF;		//(0x2133c) We have sent the EOF block
	int			downloadSendTime;	//(0x21340) time we last got an ack from the client
	char[MAX_OSPATH]			wwwDownloadURL; //(0x21344) URL from where the client should download the current file

	qboolean		wwwDownload;		// (0x21444)
	qboolean		wwwDownloadStarted;	// (0x21448)
	qboolean		wwwDl_var02;		// (0x2144c)
	qboolean		wwwDl_var03;
	int			nextReliableTime;	// (0x21454) svs.time when another reliable command will be allowed
	int			floodprotect;		// (0x21458)
	int			lastPacketTime;		// (0x2145c)svs.time when packet was last received
	int			lastConnectTime;	// (0x21460)svs.time when connection started
	int			nextSnapshotTime;	// (0x21464) send another snapshot when svs.time >= nextSnapshotTime
	int			timeoutCount;
	byte[0x2f84][PACKET_BACKUP]	frames;	// (0x2146c) updates can be delta'd from here
	int			ping;		//(0x804ec)
	int			rate;		//(0x804f0)		// bytes / second
	int			snapshotMsec;	//(0x804f4)	// requests a snapshot every snapshotMsec unless rate choked
	int			unknown6;
	int			pureAuthentic; 	//(0x804fc)
	byte[NETCHAN_UNSENTBUFFER_SIZE]			unsentBuffer; //(0x80500)
	byte[NETCHAN_FRAGMENTBUFFER_SIZE]			fragmentBuffer; //(0xa0500)
	char[33]			pbguid; //0xa0d00
	byte			pad;
	short			clscriptid; //0xa0d22
	int			canNotReliable; 
	int			serverId; //0xa0d28
	voices_t[40]		voicedata;
	int			unsentVoiceData;//(0xa35f4)
	byte[MAX_CLIENTS]			mutedClients;
	byte			hasVoip;//(0xa3638)
	byte[8192]			stats;		//(0xa3639)
	byte			receivedstats;		//(0xa5639)
	byte			dummy1;
	byte			dummy2;
};//0x0a563c



align(1) struct challenge_t { align(1):
	netadr_t		adr;
	int			challenge;
	int			clientChallenge;
	int			time;				// time the last packet was sent to the autherize server
	int			pingTime;			// time the challenge response was sent to client
	int			firstTime;			// time the adr was first used, for authorize timeout checks
	char[33]			pbguid;
	qboolean		connected;
	int			ipAuthorize;
};


const MAX_STREAM_SERVERS = 6;
// this structure will be cleared only when the game dll changes
const MAX_MASTER_SERVERS = 8;


align(1) struct connectqueue_t{
align(1):
int	challengeslot;
int	firsttime;
int	lasttime;
int	attempts;
};	//For fair queuing players who wait for an empty slot



align(1) struct _N25
{
align(1):
    char[32] cmdname;
    char[1024] cmdargument;
}
alias _N25 translatedCmds_t;

/*

Some Info:
svs.nextSnapshotEntities 0x13f18f94
svs.numSnapshotEntites 0x13f18f8c
svc_snapshot = 6;
svs.snapflagServerbit 0x13f18f88  //copied from real svs. to something else

*/


//C     typedef struct{
//C         int	score; //0x2f78
//C         int	deaths; //0x2f7c
//C         int	kills; //0x2f80
//C         int	assists; //0x2f84
//C     }clientScoreboard_t;
align(1) struct _N26
{
align(1):
    int score;
    int deaths;
    int kills;
    int assists;
}
alias _N26 clientScoreboard_t;

//C     typedef struct{
//C     	int	sprintButtonUpRequired;
//C     	int	sprintDelay;
//C     	int	lastSprintStart;
//C     	int	lastSprintEnd;
//C     	int	sprintStartMaxLength;
//C     }sprintState_t;
align(1) struct _N27
{align(1):
    int sprintButtonUpRequired;
    int sprintDelay;
    int lastSprintStart;
    int lastSprintEnd;
    int sprintStartMaxLength;
}
alias _N27 sprintState_t;

//C     typedef struct{
//C     	int	yaw;
//C     	int	timer;
//C     	int	transIndex;
//C     	int	flags;
//C     }mantleState_t;
align(1) struct _N28
{align(1):
    int yaw;
    int timer;
    int transIndex;
    int flags;
}
alias _N28 mantleState_t;



//C     typedef enum {
//C     	CON_DISCONNECTED,
//C     	CON_CONNECTING,
//C     	CON_CONNECTED
//C     } clientConnected_t;
enum
{
    CON_DISCONNECTED,
    CON_CONNECTING,
    CON_CONNECTED,
}
alias int clientConnected_t;

//C     typedef enum {
//C     	SPECTATOR_NOT,
//C     	SPECTATOR_FREE,
//C     	SPECTATOR_FOLLOW,
//C     	SPECTATOR_SCOREBOARD
//C     } spectatorState_t;
enum
{
    SPECTATOR_NOT,
    SPECTATOR_FREE,
    SPECTATOR_FOLLOW,
    SPECTATOR_SCOREBOARD,
}
alias int spectatorState_t;

//C     typedef enum {
//C     	TEAM_BEGIN,     // Beginning a team game, spawn at base
//C     	TEAM_ACTIVE     // Now actively playing
//C     } playerTeamStateState_t;
enum
{
    TEAM_BEGIN,
    TEAM_ACTIVE,
}
alias int playerTeamStateState_t;

//C     typedef align(1) struct { align(1):
//C     	playerTeamStateState_t state;

//C     	int location;

//C     	int captures;
//C     	int basedefense;
//C     	int carrierdefense;
//C     	int flagrecovery;
//C     	int fragcarrier;
//C     	int assists;

//C     	float lasthurtcarrier;
//C     	float lastreturnedflag;
//C     	float flagsince;
//C     	float lastfraggedcarrier;
//C     } playerTeamState_t;
align(1) struct _N32
{align(1):
    playerTeamStateState_t state;
    int location;
    int captures;
    int basedefense;
    int carrierdefense;
    int flagrecovery;
    int fragcarrier;
    int assists;
    float lasthurtcarrier;
    float lastreturnedflag;
    float flagsince;
    float lastfraggedcarrier;
}
alias _N32 playerTeamState_t;

//C     typedef enum {
//C     	TEAM_FREE,
//C     	TEAM_RED,
//C     	TEAM_BLUE,
//C     	TEAM_SPECTATOR,
//C     	TEAM_NUM_TEAMS
//C     }team_t;
enum
{
    TEAM_FREE,
    TEAM_RED,
    TEAM_BLUE,
    TEAM_SPECTATOR,
    TEAM_NUM_TEAMS,
}
alias int team_t;

//C     #pragma pack(push, 1)

//C     typedef struct
//C     {
//C     	int buffer;
//C     	int msgsize;

//C     }svArchiveBuf_t;
align(1) struct _N34
{align(1):
    int buffer;
    int msgsize;
}
alias _N34 svArchiveBuf_t;

//C     typedef struct clientState_s
//C     {
//C     	int number;
//C     	byte b[0x60];
//C     }clientState_ts;
align(1) struct clientState_s
{align(1):
    int number;
    byte [96]b;
}
alias clientState_s clientState_ts;



align(1) struct playerState_t
{
align(1):
    int commandTime;
    int pm_type;
    int bobCycle;
    int pm_flags;
    int weapFlags;
    int otherFlags;
    int pm_time;
    vec3_t origin;
    vec3_t velocity;
    int var_01;
    int var_02;
    int weaponTime;
    int weaponDelay;
    int grenadeTimeLeft;
    int throwBackGrenadeOwner;
    int throwBackGrenadeTimeLeft;
    int weaponRestrictKickTime;
    int foliageSoundTime;
    int gravity;
    int leanf;
    int speed;
    vec3_t delta_angles;
    int groundEntityNum;
    vec3_t vLadderVec;
    int jumpTime;
    float jumpOriginZ;
    int legsTimer;
    int legsAnim;
    int torsoTimer;
    int torsoAnim;
    int var_03;
    int var_04;
    int damageTimer;
    int damageDuration;
    int flinchYawAnim;
    int movementDir;
    int eFlags;
    int eventSequence;
    vec4_t events;
    vec4_t eventParms;
    int var_05;
    int clientNum;
    int offHandIndex;
    int offhandSecondary;
    int weapon;
    int weaponstate;
    int weaponShotCount;
    int fWeaponPosFrac;
    int adsDelayTime;
    int spreadOverride;
    int spreadOverrideState;
    int viewmodelIndex;
    vec3_t viewangles;
    float viewHeightTarget;
    float viewHeightCurrent;
    int viewHeightLerpTime;
    int viewHeightLerpTarget;
    int viewHeightLerpDown;
    vec2_t viewAngleClampBase;
    vec2_t viewAngleClampRange;
    int damageEvent;
    int damageYaw;
    int damagePitch;
    int damageCount;
    int [261]unk1;
    vec4_t weapons;
    vec4_t weaponold;
    vec4_t weaponrechamber;
    int proneDirection;
    int proneDirectionPitch;
    int proneTorsoPitch;
    int viewlocked;
    int viewlocked_entNum;
    int cursorHint;
    int cursorHintString;
    int cursorHintEntIndex;
    int iCompassPlayerInfo;
    int radarEnabled;
    int locationSelectionInfo;
    sprintState_t sprintState;
    int fTorsoPitch;
    int fWaistPitch;
    int holdBreathScale;
    int holdBreathTimer;
    int moveSpeedScaleMultiplier;
    mantleState_t mantleState;
    int meleeChargeYaw;
    int meleeChargeDist;
    int meleeChargeTime;
    int perks;
    vec4_t actionSlotType;
    vec4_t actionSlotParam;
    int var_06;
    int weapAnim;
    int aimSpreadScale;
    int shellshockIndex;
    int shellshockTime;
    int shellshockDuration;
    int dofNearStart;
    int dofNearEnd;
    int dofFarStart;
    int dofFarEnd;
    float dofNearBlur;
    float dofFarBlur;
    int dofViewmodelStart;
    int dofViewmodelEnd;
    int [145]unk2;
    int deltaTime;
    int killCamEntity;
    int [2480]unk3;
}



 enum serverState_t{
	SS_DEAD,			// no map loaded
	SS_LOADING,			// spawning level entities
	SS_GAME				// actively running
} ;

align(1) struct svEntity_s
{align(1):
    svEntity_s *nextEntityInWorldSector;
    entityState_t baseline;
    int numClusters;
    int [16]clusternums;
    int lastCluster;
    int areanum;
    int areanum2;
    int snapshotCounter;
    int [11]unk;
}
alias svEntity_s svEntity_t;



const MAX_BPS_WINDOW = 20;

align(1) struct server_t
{
align(1):
    serverState_t state;
    int timeResidual;
    int frameusec;
    qboolean restarting;
    int serverId;
    int checksumFeed;
    byte [2048]unk;
    ushort unkConfigIndex;
    ushort [2442]configstringIndex;
    short unk3;
    svEntity_t [1024]svEntities;
    sharedEntity_t *gentities;
    int gentitySize;
    int num_entities;
    playerState_t *gameClients;
    int gameClientSize;
    int field_5FB44;
    int field_5FB48;
    int [20]bpsWindow;
    int bpsWindowSteps;
    int bpsTotalBytes;
    int bpsMaxBytes;
    int [20]ubpsWindow;
    int ubpsTotalBytes;
    int ubpsMaxBytes;
    float ucompAve;
    int ucompNum;
    char [64]gametype;
    qboolean unk5;
    qboolean unk6;
}

//C     #pragma pack(pop)



// the auto following clients don't follow a specific client
// number, but instead follow the first two active players
//C     #define FOLLOW_ACTIVE1  -1
//C     #define FOLLOW_ACTIVE2  -2
const FOLLOW_ACTIVE1 = -1;

const FOLLOW_ACTIVE2 = -2;
// client data that stays across multiple levels or tournament restarts
// this is achieved by writing all the data to cvar strings at game shutdown
// time and reading them back at connection time.  Anything added here
// MUST be dealt with in G_InitSessionData() / G_ReadSessionData() / G_WriteSessionData()
//C     typedef align(1) struct { align(1):

//C     	int clientState;		// 0x300c
	//Most is not active
//C     	team_t sessionTeam;		//0x3010
//C     	int spectatorTime;              // for determining next-in-line to play
//C     	spectatorState_t spectatorState;
//C     	int spectatorClient_Unknown;            // for chasecam and follow mode
//C     	int wins, losses;               // tournament stats
//C     	int playerType;                 // DHM - Nerve :: for GT_WOLF
//C     	int playerWeapon;               // DHM - Nerve :: for GT_WOLF
//	int playerItem;                 // DHM - Nerve :: for GT_WOLF
//C     	int playerTagIndex;		//0x3030
//C     	int playerSkin;                 // DHM - Nerve :: for GT_WOLF
//	int spawnObjectiveIndex;         // JPW NERVE index of objective to spawn nearest to (returned from UI)
//C     	int latchPlayerType;            // DHM - Nerve :: for GT_WOLF not archived
//C     	int latchPlayerWeapon;          // DHM - Nerve :: for GT_WOLF not archived
//C     	int latchPlayerItem;            // DHM - Nerve :: for GT_WOLF not archived
//C     	int latchPlayerSkin;            // DHM - Nerve :: for GT_WOLF not archived
//C     	char netname[MAX_NAME_LENGTH];	//0x3048
//C     	int lastFollowedClient;
//C     	int rank;			//0x305c
//C     	int prestige;			//0x3060
//C     	int perkIndex;			//0x3064
//C     	int vehicleOwnerNum;		//0x3068  //Mybe vehicletype ?
//C     	int vehicleRideSlot;		//0x306c
//C     	int PSOffsetTime;		//0x3070 ???
//C     	int spectatorClient;           //0x3074 for chasecam and follow mode
//C     } clientSession_t;
align(1) struct clientSession_t
{align(1):
    int clientState;
    team_t sessionTeam;
    int spectatorTime;
    spectatorState_t spectatorState;
    int spectatorClient_Unknown;
    int wins;
    int losses;
    int playerType;
    int playerWeapon;
    int playerTagIndex;
    int playerSkin;
    int latchPlayerType;
    int latchPlayerWeapon;
    int latchPlayerItem;
    int latchPlayerSkin;
    char [16]netname;
    int lastFollowedClient;
    int rank;
    int prestige;
    int perkIndex;
    int vehicleOwnerNum;
    int vehicleRideSlot;
    int PSOffsetTime;
    int spectatorClient;
}

//C     #define MAX_NETNAME         16

const MAX_NETNAME = 16;
//C     #define PICKUP_ACTIVATE 0   // pickup items only when using "+activate"
//C     #define PICKUP_TOUCH    1   // pickup items when touched
const PICKUP_ACTIVATE = 0;
//C     #define PICKUP_FORCE    2   // pickup the next item when touched (and reset to PICKUP_ACTIVATE when done)
const PICKUP_TOUCH = 1;

const PICKUP_FORCE = 2;
// client data that stays across multiple respawns, but is cleared
// on each level change or team change at ClientBegin()
//C     typedef align(1) struct { align(1):

//C             enum{	STATE_PLAYING, STATE_DEAD,
//C     		STATE_SPECTATOR, STATE_INTERMISSION
//C     	}playerState;//0x2f64
enum
{
    STATE_PLAYING,
    STATE_DEAD,
    STATE_SPECTATOR,
    STATE_INTERMISSION,
}

//C     	int unknownStateVar;		//0x2f68
//C     	int unknownStateVar2;		//0x2f6c
//C     	int unknown[2];			//0x2f70

//C     	clientScoreboard_t	scoreboard;	//0x2f78
//C     	qboolean initialSpawn;          //0x2f88 the first spawn should be at a cool location
//C     	clientConnected_t connected;	//0x2f8c maybe
//C     	usercmd_t cmd;                  //0x2f90 we would lose angles if not persistant
//C     	usercmd_t oldcmd;               //0x2fb0 previous command processed by pmove()
//C     	qboolean localClient;           //0x2fd0 true if "ip" info key is "localhost"

//C     	qboolean predictItemPickup;     //0x2fd4 based on cg_predictItems userinfo
//C     	char netname[MAX_NETNAME];	//0x2fd8

//C     	int maxHealth;                  // 0x2fe8 for handicapping
//C     	int enterTime;                  // 0x2fec level.time the client entered the game
//C     	int connectTime;                // DHM - Nerve :: level.time the client first connected to the server  // N/A
//	playerTeamState_t teamState;    // status in teamplay games
//C     	int voteCount;                  // 0x2ff4 to prevent people from constantly calling votes
//C     	int teamVoteCount;              // to prevent people from constantly calling votes		// N/A

//C     	int moveSpeedScale;		// 0x2ffc

//C     	int viewModel;			// 0x3000 //Model-index

//C     	int clientCanSpectate;		// 0x3004
//C     	int freeaddr1;			// 0x3008

//C     } clientPersistant_t;
align(1) struct _N46
{align(1):
    int playerState;
    int unknownStateVar;
    int unknownStateVar2;
    int [2]unknown;
    clientScoreboard_t scoreboard;
    qboolean initialSpawn;
    clientConnected_t connected;
    usercmd_t cmd;
    usercmd_t oldcmd;
    qboolean localClient;
    qboolean predictItemPickup;
    char [16]netname;
    int maxHealth;
    int enterTime;
    int connectTime;
    int voteCount;
    int teamVoteCount;
    int moveSpeedScale;
    int viewModel;
    int clientCanSpectate;
    int freeaddr1;
}
alias _N46 clientPersistant_t;


//C     typedef align(1) struct { align(1):
//C     	vec3_t mins;
//C     	vec3_t maxs;

//C     	vec3_t origin;

//C     	int time;
//C     	int servertime;
//C     } clientMarker_t;
align(1) struct _N48
{align(1):
    vec3_t mins;
    vec3_t maxs;
    vec3_t origin;
    int time;
    int servertime;
}
alias _N48 clientMarker_t;

//C     #define MAX_CLIENT_MARKERS 10

const MAX_CLIENT_MARKERS = 10;
//C     #define LT_SPECIAL_PICKUP_MOD   3       // JPW NERVE # of times (minus one for modulo) LT must drop ammo before scoring a point
//C     #define MEDIC_SPECIAL_PICKUP_MOD    4   // JPW NERVE same thing for medic
const LT_SPECIAL_PICKUP_MOD = 3;

const MEDIC_SPECIAL_PICKUP_MOD = 4;



//C     typedef align(1) struct { align(1):
//C     void* dummy;
//C     }animModelInfo_t; //Dummy
align(1) struct _N49
{align(1):
    void *dummy;
}
alias _N49 animModelInfo_t;


//C     typedef align(1) struct { align(1):
//C     	qboolean bAutoReload; // do we predict autoreload of weapons
//C     	int blockCenterViewTime; // don't let centerview happen for a little while

	// Arnout: MG42 aiming
//C     	float varc, harc;
//C     	vec3_t centerangles;

//C     } pmoveExt_t;   // data used both in client and server - store it here
align(1) struct _N50
{align(1):
    qboolean bAutoReload;
    int blockCenterViewTime;
    float varc;
    float harc;
    vec3_t centerangles;
}
alias _N50 pmoveExt_t;


//C     typedef struct gclient_s gclient_t;
alias gclient_s gclient_t;


// this structure is cleared on each ClientSpawn(),
// except for 'client->pers' and 'client->sess'
//C     align(1) struct { align(1):
	// ps MUST be the first element, because the server expects it
//C     	playerState_t ps;               //0x00 communicated by server to clients

	// the rest of the structure is private to game

//C     	clientPersistant_t pers;	//0x2f64
//C     	clientSession_t sess;		//0x3010

//C     	qboolean noclip;		//0x3078
//C     	qboolean ufo;			//0x307c
//C     	qboolean freezeControls;	//0x3080

//C     	int lastCmdTime;                //0x3084 level.time of last usercmd_t, for EF_CONNECTION
									// we can't just use pers.lastCommand.time, because
									// of the g_sycronousclients case
	//Buttonlogic/exact addresses is not known but scope
//C     	int buttons;			//0x3088
//C     	int oldbuttons;	
//C     	int unk1;
//C     	int latched_buttons;		//0x3094

//C     	int wbuttons;
//C     	int oldwbuttons;
//C     	int latched_wbuttons;

	// sum up damage over an entire frame, so
	// shotgun blasts give a single big kick
//C     	int damage_armor;               //0x30a4 damage absorbed by armor
//C     	int damage_blood;               // damage taken out of health
//C     	int damage_knockback;           // impact damage
//C     	vec3_t damage_from;             //0x30b0 origin for vector calculation
//C     	qboolean damage_fromWorld;      //0x30bc if true, don't use the damage_from vector

//C     	int accurateCount;              // for "impressive" reward sound	N/A

//C     	int accuracy_shots;             // total number of shots		N/A
//C     	int accuracy_hits;              // total number of hits			N/A

	//
//	int lastkilled_client;          // last client that this client killed
//	int lasthurt_client;            // last client that damaged this client
//	int lasthurt_mod;               // type of damage the client did

	// timers
//	int respawnTime;                // can respawn when time > this, force after g_forcerespwan
//C     	int inactivityTime;             //0x30cc kick players when time > this
//C     	qboolean inactivityWarning;     //0x30d0 qtrue if the five second warning has been given
//C     	int playerTalkTime;		//0x30d4 ??
//C     	int rewardTime;                 // clear the EF_AWARD_IMPRESSIVE, etc when time > this  N/A
//C             vec3_t unk;			//0x30dc


//C     	int airOutTime;			//0x30e8 Unknown only reset

//C     	int lastKillTime;               // ???for multiple kill rewards
//C     	int dummy34;

//C     	qboolean fireHeld;              // ???used for hook
//C     	gentity_t   *hook;              //0x30f8 grapple hook if out

//C     	int switchTeamTime;             //0x30fc time the player switched teams



//C     	int IMtooLazy[33];
	//Not anymore resolved

	// timeResidual is used to handle events that happen every second
	// like health / armor countdowns and regeneration
/*	int timeResidual;

	float currentAimSpreadScale;

	int medicHealAmt;

	// RF, may be shared by multiple clients/characters
	animModelInfo_t *modelInfo;

	// -------------------------------------------------------------------------------------------
	// if working on a post release patch, new variables should ONLY be inserted after this point

	gentity_t   *persistantPowerup;
	int portalID;
	int ammoTimes[WP_NUM_WEAPONS];
	int invulnerabilityTime;

	gentity_t   *cameraPortal;              // grapple hook if out
	vec3_t cameraOrigin;

	int dropWeaponTime;         // JPW NERVE last time a weapon was dropped
	int limboDropWeapon;         // JPW NERVE weapon to drop in limbo
	int deployQueueNumber;         // JPW NERVE player order in reinforcement FIFO queue
	int sniperRifleFiredTime;         // JPW NERVE last time a sniper rifle was fired (for muzzle flip effects)
	float sniperRifleMuzzleYaw;       // JPW NERVE for time-dependent muzzle flip in multiplayer
	int lastBurnTime;         // JPW NERVE last time index for flamethrower burn
	int PCSpecialPickedUpCount;         // JPW NERVE used to count # of times somebody's picked up this LTs ammo (or medic health) (for scoring)
	int saved_persistant[MAX_PERSISTANT];           // DHM - Nerve :: Save ps->persistant here during Limbo

	// g_antilag.c
	int topMarker;
	clientMarker_t clientMarkers[MAX_CLIENT_MARKERS];
	clientMarker_t backupMarker;

	gentity_t       *tempHead;  // Gordon: storing a temporary head for bullet head shot detection

	pmoveExt_t pmext;*/
//C     };//Size: 0x3184
align(1) struct gclient_s
{align(1):
    playerState_t ps;
    clientPersistant_t pers;
    clientSession_t sess;
    qboolean noclip;
    qboolean ufo;
    qboolean freezeControls;
    int lastCmdTime;
    int buttons;
    int oldbuttons;
    int unk1;
    int latched_buttons;
    int wbuttons;
    int oldwbuttons;
    int latched_wbuttons;
    int damage_armor;
    int damage_blood;
    int damage_knockback;
    vec3_t damage_from;
    qboolean damage_fromWorld;
    int accurateCount;
    int accuracy_shots;
    int accuracy_hits;
    int inactivityTime;
    qboolean inactivityWarning;
    int playerTalkTime;
    int rewardTime;
    vec3_t unk;
    int airOutTime;
    int lastKillTime;
    int dummy34;
    qboolean fireHeld;
    gentity_t *hook;
    int switchTeamTime;
    //int [33]IMtooLazy;

    int[6] unknown;
    float pitch;
    float yaw;

    float delta0;
    float delta1;
    float delta2;

    float[3] animationStuff;
    int[4] padding;
    float playing; // [0,1] after spawn, stays 1 while playing, 0 when spectating
    
    float[3] vec1;
    float[3] vec2;

    int[2] someTimeCounters;
    int weisnicht;
    int alive; // == 18 alive
    int[4] unkown;
}


//C     char*	SV_IsGUID(char* guid);
char * SV_IsGUID(char *guid);





