#ifndef _DB_LOAD_H_
#define _DB_LOAD_H_

void __cdecl DB_InitThread();
void __cdecl DB_ReleaseXAssets();
void __cdecl DB_ShutdownXAssets();
void __cdecl DB_ShutdownXAssetPools();
bool __cdecl DB_DiscardBspWeapons();
#endif