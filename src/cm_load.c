#include "qcommon.h"
#include "cm_local.h"


int CM_LeafCluster( int leafnum ) {
	if ( leafnum < 0 || leafnum >= cm.numLeafs ) {
		Com_PrintError( "CM_LeafCluster: bad number" );
		return 0;
	}
	return cm.leafs[leafnum].cluster;
}