#include "qcommon.h"
#include "cm_local.h"
#include "sys_thread.h"
#include "xassets.h"
#include "qcommon_mem.h"


cbrush_t g_box_brush[NUMTHREADS];
cmodel_t g_box_model[NUMTHREADS];
clipMap_t cm;

#ifndef BSPC
int CM_LeafCluster( int leafnum ) {
	if ( leafnum < 0 || leafnum >= cm.numLeafs ) {
		Com_PrintError(CON_CHANNEL_ERROR, "CM_LeafCluster: bad number" );
		return 0;
	}
	return cm.leafs[leafnum].cluster;
}

#endif

/*
==================
CM_InlineModel
==================
*/
clipHandle_t    CM_InlineModel( int index ) {
	if ( index < 0 || index >= cm.numSubModels ) {
		Com_Error( ERR_DROP, "CM_InlineModel: bad number" );
	}
	return index;
}

int     CM_NumInlineModels( void ) {
	return cm.numSubModels;
}

char    *CM_EntityString( void ) {
	return cm.mapEnts->entityString;
}

/*
===================
CM_TempBoxModel

To keep everything totally uniform, bounding boxes are turned into small
BSP trees instead of being compared directly.
Capsules are handled differently though.
===================
*/

clipHandle_t CM_TempBoxModel( const vec3_t mins, const vec3_t maxs, int capsule ) {

	TraceThreadInfo* tti = Sys_GetValue(3);

	struct cmodel_t* box_model = tti->box_model;
	struct cbrush_t* box_brush = tti->box_brush;

	VectorCopy( mins, box_model->mins );
	VectorCopy( maxs, box_model->maxs );

	VectorCopy( mins, box_brush->mins );
	VectorCopy( maxs, box_brush->maxs );

	return CAPSULE_MODEL_HANDLE;
}

/*
==================
CM_ClipHandleToModel
==================
*/

cmodel_t    *CM_ClipHandleToModel( clipHandle_t handle ) {

	if ( handle < 0 ) {
		Com_Error( ERR_DROP, "CM_ClipHandleToModel: bad handle %i", handle );
	}
	if ( handle < cm.numSubModels ) {
		return &cm.cmodels[handle];
	}else{
		TraceThreadInfo* tti = Sys_GetValue(3);
		cmodel_t* box_model = tti->box_model;
		return box_model;
	}

}

void SetPlaneSignbits( cplane_t *out ) {
	int bits, j;

	// for fast box on planeside test
	bits = 0;
	for ( j = 0 ; j < 3 ; j++ ) {
		if ( out->normal[j] < 0 ) {
			bits |= 1 << j;
		}
	}
	out->signbits = bits;
}

void __cdecl CM_LoadMapData_FastFile(const char *name)
{
  DB_FindXAssetHeader(ASSET_TYPE_CLIPMAP_PVS, name, true, 100);
//  assert(clipMap == &cm);
}

#ifndef BSPC

void __cdecl CM_LoadMapData_LoadObj(const char *name)
{
  if ( cm.isInUse == qfalse || Q_stricmp(cm.name, name) )
  {
    CM_LoadMapFromBsp(name, 1);
    CM_LoadStaticModels();
    DynEnt_LoadEntities(name);
  }
}

void __cdecl CM_LoadMapData(const char *name)
{
  if ( useFastFile->boolean )
  {
    CM_LoadMapData_FastFile(name);
	return;
  }
  CM_LoadMapData_LoadObj(name);

}

#else
void __cdecl CM_LoadMapData(const char *name)
{
    CM_LoadMapData_FastFile(name);
}
#endif



void __cdecl CM_InitThreadData(int threadContext)
{
  TraceThreadInfo *traceThreadInfo;
  assert(threadContext >= 0 && threadContext < NUMTHREADS);

  traceThreadInfo = &g_traceThreadInfo[threadContext];
  traceThreadInfo->checkcount.global = 0;
#ifndef BSPC
  traceThreadInfo->checkcount.partitions = (int *)Hunk_Alloc(4 * cm.partitionCount, "CM_InitThreadData", 29);
#else
	void* Hunk_Alloc(int size);
  traceThreadInfo->checkcount.partitions = (int *)Hunk_Alloc(4 * cm.partitionCount);
#endif
  traceThreadInfo->box_brush = &g_box_brush[threadContext];
  memcpy(traceThreadInfo->box_brush, cm.box_brush, sizeof(cbrush_t));
  traceThreadInfo->box_model = &g_box_model[threadContext];
  memcpy(traceThreadInfo->box_model, &cm.box_model, sizeof(cmodel_t));
//  traceThreadInfo->geoms = &g_geoms[threadContext];
//  *traceThreadInfo->geoms = 0;
}

void CM_InitAllThreadData()
{
  int workerIndex;
  for ( workerIndex = 0; workerIndex < NUMTHREADS; ++workerIndex )
  {
    CM_InitThreadData(workerIndex);
  }
}


void __cdecl CM_LoadMap(const char *name, int *checksum)
{
  if ( !name || !*name )
  {
    Com_Error(ERR_DROP, "CM_LoadMap: NULL name");
  }
 
  CM_LoadMapData(name);
  CM_InitAllThreadData();
  cm.isInUse = 1;
  *checksum = cm.checksum;
}

void __cdecl CM_Shutdown()
{
  const char *savedName;

  savedName = cm.name;
  memset(&cm, 0, sizeof(cm));
  cm.name = savedName;
  assert(!cm.isInUse);
}

void CM_Unload()
{
  if ( cm.isInUse )
  {
    Sys_Error("Cannot unload collision while it is in use");
  }
}

#ifndef BSPC

void *__cdecl CM_Hunk_Alloc(int size, const char* what)
{
  return Hunk_Alloc(size, what, 0);
}

char *__cdecl CM_Hunk_AllocateTempMemoryHigh(int size)
{
  return Hunk_AllocateTempMemoryHigh(size);
}

void __cdecl CM_Hunk_CheckTempMemoryHighClear()
{

}

void __cdecl CM_Hunk_ClearTempMemoryHigh()
{
  Hunk_ClearTempMemoryHigh();
}

#endif