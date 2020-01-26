#pragma once

void DB_InitThread();
void DB_ReleaseXAssets();
void DB_ShutdownXAssets();
void DB_ShutdownXAssetPools();

extern "C"
{
    bool __cdecl DB_DiscardBspWeapons();
}
