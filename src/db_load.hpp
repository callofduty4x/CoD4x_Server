#pragma once
#include "db_registry.hpp"

#define XBLOCK_COUNT_IW3 9
#define XBLOCK_COUNT_T5 7
#define XBLOCK_COUNT XBLOCK_COUNT_IW3
#define DM_MEMORY_PHYSICAL 2
#define DEFLATE_BUFFER_SIZE 0x8000
#define DBFILE_BUFFER_SIZE 0x80000
#define FASTFILE_VERSION 5
#define XASSET_ENTRY_POOL_SIZE 32768

struct IDirect3DVertexBuffer9;
struct IDirect3DIndexBuffer9;

struct XBlock
{
    byte* data;
    unsigned int size;
};


struct XZoneMemory
{
    XBlock blocks[XBLOCK_COUNT];
    int allocVertexBuffer;
    int allocIndexBuffer;
    IDirect3DVertexBuffer9* vertexBufferHandle;
    IDirect3DIndexBuffer9* indexBufferHandle;
};


struct XZoneInfoInternal
{
    char name[64];
    int flags;
};


struct XZone
{
    XZoneInfoInternal zoneinfo;
    int index;
    XZoneMemory zonememory;
    int zoneSize;
    int ff_dir;
};

extern char*** varXStringPtr;

void DB_InitThread();
void DB_ReleaseXAssets();
void DB_ShutdownXAssets();
void DB_ShutdownXAssetPools();

extern "C"
{
    extern XAnimParts g_XAnimPartsPool[4096];
    extern XZone g_zones[33];
    extern uint8_t g_zoneHandles[sizeof(g_zones)/sizeof(g_zones[0])];
    extern XAssetEntryPoolEntry g_assetEntryPool[32768];
    extern uint16_t db_hashTable[32768];
    extern unsigned int g_zoneIndex;
    extern int g_poolSize[ASSET_TYPE_COUNT];

    /*
    float* varfloat;
    int16_t* varshort;
    byte* varbyte;
    XModel* varXModel;
    */

    extern void* DB_XAssetPool[ASSET_TYPE_COUNT];

    // Safest way is to define size of variables according to ASM code...
    // Of course types can be safely (almost) changed according to cod4a code...
    extern XAsset* varXAsset;
    extern XAssetList* varXAssetList;
    extern char varBrushWrapper[0x10];
    extern void* varByteVec;
    extern char varCollisionAabbTree[0x8];
    extern void* varCollisionBorder;
    extern void* varCollisionPartition;
    extern void* varComPrimaryLight;
    extern void* varComWorld;
    extern void* varComWorldPtr;
    extern const char* varConstChar;
    extern void* varDObjAnimMat;
    extern char varDWORD[0x10];
    extern void* varDynEntityClient;
    extern void* varDynEntityColl;
    extern char varDynEntityDef[0xC];
    extern void* varDynEntityPose;
    extern void* varFont;
    extern void* varFontHandle;
    extern void* varFxEffectDef;
    extern void* varFxEffectDefRef;
    extern void* varFxElemDef;
    extern void* varFxElemMarkVisuals;
    extern void* varFxElemVisuals;

    bool __cdecl DB_DiscardBspWeapons();
}
