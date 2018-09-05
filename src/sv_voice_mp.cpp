#include "q_shared.h"
#include "server.h"
#include "g_public.h"

void SV_WriteClientVoiceData(msg_t *msg, client_s *client)
{
	int i;

  assert(client->voicePacketCount >= 0 && client->voicePacketCount <= MAX_VOICEPACKETS);

	MSG_WriteByte(msg, client->voicePacketCount);

	for(i = 0; i < client->voicePacketCount; i++)
	{
		MSG_WriteByte( msg, client->voicePackets[i].talker );
		MSG_WriteByte( msg, client->voicePackets[i].dataSize );
		MSG_WriteData( msg, client->voicePackets[i].data, client->voicePackets[i].dataSize );
	}
}

bool __cdecl SV_VoiceEnabled()
{
  return sv_voice->boolean;
}




extern "C"
{

bool __cdecl SV_ClientHasClientMuted(int listener, int talker)
{
    assert(listener < sv_maxclients->integer);
    assert(talker < sv_maxclients->integer);
    return svs.clients[listener].muteList[talker];
}


void __cdecl SV_QueueVoicePacket(int talkerNum, int clientNum, VoicePacket_t *voicePacket)
{
  client_s *client;

  assert(talkerNum >= 0 && talkerNum < sv_maxclients->integer);
  assert(clientNum >= 0 && clientNum < sv_maxclients->integer);

  client = &svs.clients[clientNum];
  if ( svs.clients[clientNum].voicePacketCount < 40 )
  {
    client->voicePackets[client->voicePacketCount].dataSize = voicePacket->dataSize;
    memcpy(client->voicePackets[client->voicePacketCount].data, voicePacket->data, voicePacket->dataSize);

    client->voicePackets[client->voicePacketCount].talker = talkerNum;
    client->voicePacketCount++;
  }
}



void SV_SendClientVoiceData(client_s *client)
{
    msg_t msg;
    byte buff[0x20000];

    if ( client->state < CS_ACTIVE || client->voicePacketCount == 0)
    {
	return;
    }
    MSG_Init(&msg, buff, sizeof(buff));
    MSG_WriteString(&msg, "v");
    SV_WriteClientVoiceData(&msg, client);
    if ( msg.overflowed )
    {
		Com_PrintWarning(CON_CHANNEL_SERVER, "WARNING: voice msg overflowed for %s\n", client->name);
		return;
    }
    NET_OutOfBandData(NS_SERVER, &client->netchan.remoteAddress, msg.data, msg.cursize);
    client->voicePacketCount = 0;
}


bool __cdecl SV_ClientWantsVoiceData(int clientNum)
{
  assert(clientNum >= 0 && clientNum < sv_maxclients->integer);

  return svs.clients[clientNum].sendVoice;
}


void __cdecl SV_UserVoice(client_t *cl, msg_t *msg)
{
  int packet;
  VoicePacket_t voicePacket;
  int packetCount;

  if ( SV_VoiceEnabled() )
  {
    packetCount = MSG_ReadByte(msg);
    assert(cl->gentity != NULL);

    for ( packet = 0; packet < packetCount; ++packet )
    {
      voicePacket.dataSize = MSG_ReadByte(msg);
      if ( voicePacket.dataSize <= 0 || voicePacket.dataSize > 256 )
      {
        Com_Printf(CON_CHANNEL_SERVER, "Received invalid voice packet of size %i from %s\n", voicePacket.dataSize, cl->name);
        return;
      }

      assert(voicePacket.dataSize <= MAX_VOICE_PACKET_DATA);
      assert(msg->data != NULL);

      MSG_ReadData(msg, voicePacket.data, voicePacket.dataSize);
      G_BroadcastVoice(cl->gentity, &voicePacket);
    }
  }
}


void __cdecl SV_PreGameUserVoice(client_t *cl, msg_t *msg)
{
  int packet;
  VoicePacket_t voicePacket;
  int otherPlayer;
  int talker;
  int packetCount;

  if ( SV_VoiceEnabled() )
  {
    talker = cl - svs.clients;
    packetCount = MSG_ReadByte(msg);
    for ( packet = 0; packet < packetCount; ++packet )
    {
      voicePacket.dataSize = MSG_ReadShort(msg);
      if ( voicePacket.dataSize <= 0 || voicePacket.dataSize > MAX_VOICE_PACKET_DATA )
      {
        Com_Printf(CON_CHANNEL_SERVER, "Received invalid voice packet of size %i from %s\n", voicePacket.dataSize, cl->name);
        return;
      }

      assert(msg->data != NULL);

      MSG_ReadData(msg, voicePacket.data, voicePacket.dataSize);
      for ( otherPlayer = 0; otherPlayer < sv_maxclients->integer; ++otherPlayer )
      {
        if ( otherPlayer != talker && svs.clients[otherPlayer].state >= CS_CONNECTED && !SV_ClientHasClientMuted(otherPlayer, talker)
          && SV_ClientWantsVoiceData(otherPlayer) )
        {
          SV_QueueVoicePacket(talker, otherPlayer, &voicePacket);
        }
      }
    }
  }
}

}






