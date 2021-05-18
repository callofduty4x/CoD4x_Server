#ifndef __G_PUBLIC_H__
#define __G_PUBLIC_H__

#include "player.h"

// entity->svFlags
// the server does not know how to interpret most of the values
// in entityStates (level eType), so the game must explicitly flag
// special server behaviors
#define SVF_NOCLIENT            0x00000001  // don't send entity to clients, even if it has effects
#define SVF_DISK		0x00000040
/*
#define SVF_VISDUMMY            0x00000004  // this ent is a "visibility dummy" and needs it's master to be sent to clients that can see it even if they can't see the master ent
#define SVF_BOT                 0x00000008
// Wolfenstein
#define SVF_CASTAI              0x00000010
// done.
#define SVF_BROADCAST           0x00000020  // send to all connected clients
#define SVF_USE_CURRENT_ORIGIN  0x00000080  // entity->r.currentOrigin instead of entity->s.origin
											// for link position (missiles and movers)
// Ridah
#define SVF_NOFOOTSTEPS         0x00000100
// done.
// MrE:
#define SVF_CAPSULE             0x00000200  // use capsule for collision detection

#define SVF_VISDUMMY_MULTIPLE   0x00000400  // so that one vis dummy can add to snapshot multiple speakers

// recent id changes
#define SVF_SINGLECLIENT        0x00000800  // only send to a single client (entityShared_t->singleClient)
#define SVF_NOSERVERINFO        0x00001000  // don't send CS_SERVERINFO updates to this client
											// so that it can be updated for ping tools without
											// lagging clients
#define SVF_NOTSINGLECLIENT     0x00002000  // send entity to everyone but one client
											// (entityShared_t->singleClient)
*/
#define MAX_VOICE_PACKET_DATA 256

struct VoicePacket_t
{
  char talker;
  char data[MAX_VOICE_PACKET_DATA];
  int dataSize;
};


struct CEntPlayerInfo
{
  struct clientControllers_s *control;
  byte tag[6];
};

#ifdef __cplusplus
extern "C"{
#endif
float __cdecl G_GetFogOpaqueDistSqrd();
void __cdecl ClientDisconnect(int clientNum);
void __cdecl G_SetLastServerTime(int clientNum, int lastServerTime);
void __cdecl ClientThink(int clientNum);
int __cdecl G_GetSavePersist();
void __cdecl G_ResetEntityParsePoint();
void __cdecl G_InitGame(int levelTime, int randomSeed, int restart, int savepersist, int framerate);
void __cdecl G_ShutdownGame(int freeScripts);
qboolean __cdecl ConsoleCommand();
const char *__cdecl CS_DisplayName(clientState_t *cs, int type);
void CS_SetPlayerName(clientState_t *cs, const char* name);
qboolean OnSameTeam( gentity_t *ent1, gentity_t *ent2 );


#ifdef __cplusplus
}
#endif

void __cdecl G_BroadcastVoice(struct gentity_s *talker, struct VoicePacket_t *voicePacket);

#endif