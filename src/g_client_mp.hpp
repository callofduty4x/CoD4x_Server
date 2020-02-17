#pragma once

#include "q_platform.hpp"

struct gentity_s;
struct VoicePacket_t;

extern "C"
{
    void CCDECL ClientSpawn(gentity_s* ent, const float *spawn_origin, const float *spawn_angles);
    const char* CCDECL ClientConnect(int clnum, short clscriptid);
    void CCDECL ClientBegin( int clientNum );
    void CCDECL G_BroadcastVoice(gentity_s* talker, VoicePacket_t* voicePacket);
}
