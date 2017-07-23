#include "qcommon.h"
#include "cm_local.h"
#include "sys_thread.h"


int CM_LeafCluster( int leafnum ) {
	if ( leafnum < 0 || leafnum >= cm.numLeafs ) {
		Com_PrintError(CON_CHANNEL_ERROR, "CM_LeafCluster: bad number" );
		return 0;
	}
	return cm.leafs[leafnum].cluster;
}

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

	cmodel_t* box_model = tti->box_model;
	cbrush_t* box_brush = tti->box_brush;

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

