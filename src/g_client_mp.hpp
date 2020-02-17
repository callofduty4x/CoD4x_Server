#pragma once

#include "q_platform.hpp"

struct gentity_s;
struct VoicePacket_t;

extern "C"
{
    void CDECL ClientSpawn(gentity_s* ent, const float *spawn_origin, const float *spawn_angles);
    const char* CDECL ClientConnect(int clnum, short clscriptid);
    void CDECL ClientBegin( int clientNum );
    void CDECL G_BroadcastVoice(gentity_s* talker, VoicePacket_t* voicePacket);
}
