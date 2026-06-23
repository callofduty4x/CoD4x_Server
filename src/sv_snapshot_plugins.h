#ifndef SV_SNAPSHOT_PLUGINS_H
#define SV_SNAPSHOT_PLUGINS_H

#include "player.h"
#include "server.h"

typedef enum
{
	SNAPSHOT_PATCH_MODIFY = 0,
	SNAPSHOT_PATCH_APPEND = 1
} snapshotPatchMode_t;

typedef qboolean (*pluginSnapshotPlayerStatePatch_fn)(client_t *client, playerState_t *framePs, int archiveTime);
typedef qboolean (*pluginSnapshotEntityPatch_fn)(client_t *client, playerState_t *framePs, entityState_t *entState,
	int archiveTime, snapshotPatchMode_t mode);
typedef qboolean (*pluginSnapshotClientStatePatch_fn)(client_t *client, playerState_t *framePs, clientState_t *cs,
	int csClientIndex, int archiveTime, snapshotPatchMode_t mode);

#ifdef __cplusplus
extern "C" {
#endif

cachedSnapshot_t *SV_QueryCachedSnapshot(int *pArchiveTime);

void SV_SnapshotPatchPlayerState(client_t *client, playerState_t *framePs, int archiveTime);
void SV_SnapshotPatchEntity(client_t *client, playerState_t *framePs, entityState_t *entState, int archiveTime);
void SV_SnapshotAppendOwnEntity(client_t *client, clientSnapshot_t *frame, playerState_t *ps, int archiveTime);
void SV_SnapshotPatchClientState(client_t *client, playerState_t *framePs, clientState_t *cs, int csClientIndex, int archiveTime);
void SV_SnapshotAppendOwnClient(client_t *client, clientSnapshot_t *frame, playerState_t *ps, int archiveTime);

int SV_GetArchivedClientEntityState(int clientNum, int *pArchiveTime, entityState_t *entState);
int SV_GetArchivedClientState(int clientNum, int *pArchiveTime, clientState_t *cs);

void PHandler_RegisterSnapshotPlayerStatePatch(int pluginId, pluginSnapshotPlayerStatePatch_fn callback);
void PHandler_UnregisterSnapshotPlayerStatePatch(int pluginId);
qboolean PHandler_CallSnapshotPlayerStatePatch(client_t *client, playerState_t *framePs, int archiveTime);
void PHandler_RegisterSnapshotEntityPatch(int pluginId, pluginSnapshotEntityPatch_fn callback);
void PHandler_UnregisterSnapshotEntityPatch(int pluginId);
qboolean PHandler_CallSnapshotEntityPatch(client_t *client, playerState_t *framePs, entityState_t *entState,
	int archiveTime, snapshotPatchMode_t mode);
void PHandler_RegisterSnapshotClientStatePatch(int pluginId, pluginSnapshotClientStatePatch_fn callback);
void PHandler_UnregisterSnapshotClientStatePatch(int pluginId);
qboolean PHandler_CallSnapshotClientStatePatch(client_t *client, playerState_t *framePs, clientState_t *cs,
	int csClientIndex, int archiveTime, snapshotPatchMode_t mode);

#ifdef __cplusplus
}
#endif

#endif
