#pragma once
#include <cstdint>


struct gentity_s;

class EntHandle
{
public:
    bool isDefined();
    gentity_s* ent();
    int entnum();
    void setEnt(gentity_s* ent);
    static void Shutdown();
    static void Init();

    uint16_t number;
    uint16_t infoIndex;
};

void __cdecl EntHandleDissociate(gentity_s* ent);
unsigned int __cdecl GScr_AllocString(const char *s);

extern "C"
{
    void __cdecl EntHandle_setEnt(EntHandle* self, gentity_s* Ent_);
    void __cdecl EntHandle_Init();
    void __cdecl EntHandle_Shutdown();
}
