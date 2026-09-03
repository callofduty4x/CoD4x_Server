#include "q_shared.h"
#include "server.h"
#include "plugin_handler.h"
#include "plugin_snapshot_patching.h"

#include <string.h>

static pluginSnapshotPlayerStatePatch_fn snapshotPlayerStatePatches[MAX_PLUGINS];
static pluginSnapshotEntityPatch_fn snapshotEntityPatches[MAX_PLUGINS];
static pluginSnapshotClientStatePatch_fn snapshotClientStatePatches[MAX_PLUGINS];

static void SV_InsertSortedSnapshotEntity(clientSnapshot_t *frame, const entityState_t *entState)
{
	int insertAt;
	int i;
	entityState_t *slot;

	insertAt = frame->num_entities;
	for(i = 0; i < frame->num_entities; i++)
	{
		slot = &svs.snapshotEntities[(frame->first_entity + i) % svs.numSnapshotEntities];
		if(slot->number == entState->number)
		{
			*slot = *entState;
			return;
		}
		if(slot->number > entState->number)
		{
			insertAt = i;
			break;
		}
	}

	if(insertAt < frame->num_entities)
	{
		for(i = frame->num_entities; i > insertAt; i--)
		{
			*(&svs.snapshotEntities[(frame->first_entity + i) % svs.numSnapshotEntities]) =
				*(&svs.snapshotEntities[(frame->first_entity + i - 1) % svs.numSnapshotEntities]);
		}
	}

	*(&svs.snapshotEntities[(frame->first_entity + insertAt) % svs.numSnapshotEntities]) = *entState;
}

static void SV_InsertSortedSnapshotClient(clientSnapshot_t *frame, const clientState_t *clientState)
{
	int insertAt;
	int i;
	clientState_t *slot;

	insertAt = frame->num_clients;
	for(i = 0; i < frame->num_clients; i++)
	{
		slot = &svs.snapshotClients[(frame->first_client + i) % svs.numSnapshotClients];
		if(slot->clientIndex == clientState->clientIndex)
		{
			*slot = *clientState;
			return;
		}
		if(slot->clientIndex > clientState->clientIndex)
		{
			insertAt = i;
			break;
		}
	}

	if(insertAt < frame->num_clients)
	{
		for(i = frame->num_clients; i > insertAt; i--)
		{
			*(&svs.snapshotClients[(frame->first_client + i) % svs.numSnapshotClients]) =
				*(&svs.snapshotClients[(frame->first_client + i - 1) % svs.numSnapshotClients]);
		}
	}

	*(&svs.snapshotClients[(frame->first_client + insertAt) % svs.numSnapshotClients]) = *clientState;
}

static void SV_AppendSnapshotEntity(client_t *client, clientSnapshot_t *frame, playerState_t *ps,
	entityState_t *entState, int archiveTime, int pluginId)
{
	pluginSnapshotEntityPatch_fn callback;

	callback = snapshotEntityPatches[pluginId];
	if(!callback)
	{
		return;
	}

	pluginFunctions.hasControl = pluginId;
	if(callback(client, ps, entState, archiveTime, SNAPSHOT_PATCH_APPEND))
	{
		SV_InsertSortedSnapshotEntity(frame, entState);

		svs.nextSnapshotEntities++;
		if(svs.nextSnapshotEntities >= 0x7FFFFFFE)
		{
			Com_Error(ERR_FATAL, "svs.nextSnapshotEntities wrapped");
		}
		frame->num_entities++;
	}
	pluginFunctions.hasControl = PLUGIN_UNKNOWN;
}

static void SV_AppendSnapshotClient(client_t *client, clientSnapshot_t *frame, playerState_t *ps,
	clientState_t *clientState, int archiveTime, int pluginId)
{
	pluginSnapshotClientStatePatch_fn callback;

	callback = snapshotClientStatePatches[pluginId];
	if(!callback)
	{
		return;
	}

	pluginFunctions.hasControl = pluginId;
	if(callback(client, ps, clientState, -1, archiveTime, SNAPSHOT_PATCH_APPEND))
	{
		SV_InsertSortedSnapshotClient(frame, clientState);

		svs.nextSnapshotClients++;
		if(svs.nextSnapshotClients >= 0x7FFFFFFE)
		{
			Com_Error(ERR_FATAL, "svs.nextSnapshotClients wrapped");
		}
		frame->num_clients++;
	}
	pluginFunctions.hasControl = PLUGIN_UNKNOWN;
}

void SV_SnapshotPatchPlayerState(client_t *client, playerState_t *framePs, int archiveTime)
{
	PHandler_CallSnapshotPlayerStatePatch(client, framePs, archiveTime);
}

void SV_SnapshotPatchEntity(client_t *client, playerState_t *framePs, entityState_t *entState, int archiveTime)
{
	PHandler_CallSnapshotEntityPatch(client, framePs, entState, archiveTime, SNAPSHOT_PATCH_MODIFY);
}

void SV_SnapshotAppendOwnEntity(client_t *client, clientSnapshot_t *frame, playerState_t *ps, int archiveTime)
{
	entityState_t entState;
	int pluginId;

	for(pluginId = 0; pluginId < MAX_PLUGINS; pluginId++)
	{
		if(!snapshotEntityPatches[pluginId])
		{
			continue;
		}

		memset(&entState, 0, sizeof(entState));
		SV_AppendSnapshotEntity(client, frame, ps, &entState, archiveTime, pluginId);
	}
}

void SV_SnapshotPatchClientState(client_t *client, playerState_t *framePs, clientState_t *cs, int csClientIndex, int archiveTime)
{
	PHandler_CallSnapshotClientStatePatch(client, framePs, cs, csClientIndex, archiveTime, SNAPSHOT_PATCH_MODIFY);
}

void SV_SnapshotAppendOwnClient(client_t *client, clientSnapshot_t *frame, playerState_t *ps, int archiveTime)
{
	clientState_t clientState;
	int pluginId;

	for(pluginId = 0; pluginId < MAX_PLUGINS; pluginId++)
	{
		if(!snapshotClientStatePatches[pluginId])
		{
			continue;
		}

		memset(&clientState, 0, sizeof(clientState));
		SV_AppendSnapshotClient(client, frame, ps, &clientState, archiveTime, pluginId);
	}
}

void PHandler_RegisterSnapshotPlayerStatePatch(int pluginId, pluginSnapshotPlayerStatePatch_fn callback)
{
	if(pluginId < 0 || pluginId >= MAX_PLUGINS)
	{
		return;
	}
	snapshotPlayerStatePatches[pluginId] = callback;
}

void PHandler_UnregisterSnapshotPlayerStatePatch(int pluginId)
{
	if(pluginId < 0 || pluginId >= MAX_PLUGINS)
	{
		return;
	}
	snapshotPlayerStatePatches[pluginId] = NULL;
}

qboolean PHandler_CallSnapshotPlayerStatePatch(client_t *client, playerState_t *framePs, int archiveTime)
{
	qboolean patched;
	int pluginId;

	if(!client || !framePs)
	{
		return qfalse;
	}

	patched = qfalse;
	for(pluginId = 0; pluginId < MAX_PLUGINS; pluginId++)
	{
		if(!snapshotPlayerStatePatches[pluginId])
		{
			continue;
		}

		pluginFunctions.hasControl = pluginId;
		if(snapshotPlayerStatePatches[pluginId](client, framePs, archiveTime))
		{
			patched = qtrue;
		}
		pluginFunctions.hasControl = PLUGIN_UNKNOWN;
	}

	return patched;
}

void PHandler_RegisterSnapshotEntityPatch(int pluginId, pluginSnapshotEntityPatch_fn callback)
{
	if(pluginId < 0 || pluginId >= MAX_PLUGINS)
	{
		return;
	}
	snapshotEntityPatches[pluginId] = callback;
}

void PHandler_UnregisterSnapshotEntityPatch(int pluginId)
{
	if(pluginId < 0 || pluginId >= MAX_PLUGINS)
	{
		return;
	}
	snapshotEntityPatches[pluginId] = NULL;
}

void PHandler_CallSnapshotEntityPatch(client_t *client, playerState_t *framePs, entityState_t *entState,
	int archiveTime, snapshotPatchMode_t mode)
{
	int pluginId;

	if(!client || !framePs || !entState || mode != SNAPSHOT_PATCH_MODIFY)
	{
		return;
	}

	for(pluginId = 0; pluginId < MAX_PLUGINS; pluginId++)
	{
		if(!snapshotEntityPatches[pluginId])
		{
			continue;
		}

		pluginFunctions.hasControl = pluginId;
		snapshotEntityPatches[pluginId](client, framePs, entState, archiveTime, mode);
		pluginFunctions.hasControl = PLUGIN_UNKNOWN;
	}
}

void PHandler_RegisterSnapshotClientStatePatch(int pluginId, pluginSnapshotClientStatePatch_fn callback)
{
	if(pluginId < 0 || pluginId >= MAX_PLUGINS)
	{
		return;
	}
	snapshotClientStatePatches[pluginId] = callback;
}

void PHandler_UnregisterSnapshotClientStatePatch(int pluginId)
{
	if(pluginId < 0 || pluginId >= MAX_PLUGINS)
	{
		return;
	}
	snapshotClientStatePatches[pluginId] = NULL;
}

void PHandler_CallSnapshotClientStatePatch(client_t *client, playerState_t *framePs, clientState_t *cs,
	int csClientIndex, int archiveTime, snapshotPatchMode_t mode)
{
	int pluginId;

	if(!client || !framePs || !cs || mode != SNAPSHOT_PATCH_MODIFY)
	{
		return;
	}

	for(pluginId = 0; pluginId < MAX_PLUGINS; pluginId++)
	{
		if(!snapshotClientStatePatches[pluginId])
		{
			continue;
		}

		pluginFunctions.hasControl = pluginId;
		snapshotClientStatePatches[pluginId](client, framePs, cs, csClientIndex, archiveTime, mode);
		pluginFunctions.hasControl = PLUGIN_UNKNOWN;
	}
}

int SV_GetArchivedClientEntityState(int clientNum, int *pArchiveTime, entityState_t *entState)
{
	cachedSnapshot_t *cachedSnapshot;
	unsigned int i;
	int offsettime;
	archivedEntity_t *cachedEnt;

	if(!entState || !pArchiveTime)
	{
		return 0;
	}

	cachedSnapshot = SV_QueryCachedSnapshot(pArchiveTime);
	if(!cachedSnapshot)
	{
		return 0;
	}

	offsettime = svs.time - cachedSnapshot->time;

	for(i = 0; i < cachedSnapshot->num_entities; ++i)
	{
		cachedEnt = &svs.cachedSnapshotEntities[(i + cachedSnapshot->first_entity) % svs.numCachedSnapshotEntities];
		if(cachedEnt->s.number != clientNum && cachedEnt->s.clientNum != clientNum)
		{
			continue;
		}
		if(cachedEnt->s.number >= MAX_CLIENTS && cachedEnt->s.clientNum != clientNum)
		{
			continue;
		}
		Com_Memcpy(entState, &cachedEnt->s, sizeof(entityState_t));
		if(entState->lerp.pos.trTime)
		{
			entState->lerp.pos.trTime += offsettime;
		}
		if(entState->lerp.apos.trTime)
		{
			entState->lerp.apos.trTime += offsettime;
		}
		if(entState->time2)
		{
			entState->time2 += offsettime;
		}
		if(entState->eType == 4 || entState->eType == 0 || entState->eType == 66)
		{
			entState->lerp.u.anonymous.data[0] += offsettime;
		}
		return 1;
	}
	return 0;
}

int SV_GetArchivedClientState(int clientNum, int *pArchiveTime, clientState_t *cs)
{
	cachedSnapshot_t *cachedSnapshot;
	unsigned int i;
	cachedClient_t *cachedClient;

	if(!cs || !pArchiveTime)
	{
		return 0;
	}

	cachedSnapshot = SV_QueryCachedSnapshot(pArchiveTime);
	if(!cachedSnapshot)
	{
		return 0;
	}

	for(i = 0; i < cachedSnapshot->num_clients; ++i)
	{
		cachedClient = &svs.cachedSnapshotClients[(i + cachedSnapshot->first_client) % svs.numCachedSnapshotClients];
		if(cachedClient->cs.clientIndex == clientNum)
		{
			Com_Memcpy(cs, &cachedClient->cs, sizeof(clientState_t));
			return 1;
		}
	}

	return 0;
}
