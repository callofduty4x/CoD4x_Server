#pragma once

#include "q_platform.hpp"

struct gentity_s;
struct VoicePacket_t;

extern "C"
{
    void __cdecl ClientSpawn(gentity_s* ent, const float *spawn_origin, const float *spawn_angles);
    const char* __cdecl ClientConnect(int clnum, short clscriptid);
    void __cdecl ClientBegin( int clientNum );
    void __cdecl G_BroadcastVoice(gentity_s* talker, VoicePacket_t* voicePacket);
}
