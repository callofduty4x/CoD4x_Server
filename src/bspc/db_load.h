#ifndef _DB_LOAD_H_
#define _DB_LOAD_H_

#ifdef __cplusplus
extern "C"{
#endif
void DB_Init();
void __cdecl DB_InitThread();
void __cdecl DB_ReleaseXAssets();
void __cdecl DB_ShutdownXAssets();
void __cdecl DB_ShutdownXAssetPools();
bool __cdecl DB_DiscardBspWeapons();
#define DBFILE_BUFFER_SIZE 0x80000
bool __cdecl DB_TryLoadXFileInternal(const char *filename, signed int zoneFlags, char* g_fileBuf);


#ifdef __cplusplus
};
#endif

#endif