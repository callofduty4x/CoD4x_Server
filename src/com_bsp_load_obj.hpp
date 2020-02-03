#pragma once
#include "cm_local.hpp"


struct BspChunk
{
    LumpType type;
    unsigned int length;
};

struct BspHeader
{
    unsigned int ident; // "IBSP"
    unsigned int version;
    unsigned int chunkCount;
    BspChunk chunks[100];
};


struct comBspGlob_t
{
    char name[64];
    BspHeader* header;
    unsigned int fileSize;
    unsigned int checksum;
    LumpType loadedLumpType;
    const void* loadedLumpData;
};


extern "C"
{
    extern comBspGlob_t comBspGlob;
    void __cdecl Com_LoadBsp(const char *filename);
}
