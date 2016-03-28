#include "q_math.h"
#include "cm_local.h"


/*
==================
CM_PointLeafnum_r

==================
*/


int CM_PointLeafnum_r( const vec3_t p, int num ) {
	float d;
	cNode_t     *node;
	cplane_t    *plane;

	while ( num >= 0 )
	{
		node = cm.nodes + num;
		plane = node->plane;

		if ( plane->type < 3 ) {
			d = p[plane->type] - plane->dist;
		} else {
			d = DotProduct( plane->normal, p ) - plane->dist;
		}
		if ( d < 0 ) {
			num = node->children[1];
		} else {
			num = node->children[0];
		}
	}

	return -1 - num;
}

int CM_PointLeafnum( const vec3_t p ) {

	return CM_PointLeafnum_r( p, 0 );
}

/*
===============================================================================

PVS

===============================================================================
*/

byte    *CM_ClusterPVS( int cluster ) {
	if ( /*cluster < 0 || cluster >= cm.numClusters || */!cm.vised ) {
		return cm.visibility;
	}

	return cm.visibility + cluster * cm.clusterBytes;
}


/*
======================================================================

LEAF LISTING

======================================================================
*/


void CM_StoreLeafs( leafList_t *ll, int nodenum ) {
	int leafNum;

	leafNum = -1 - nodenum;

	// store the lastLeaf even if the list is overflowed
	if ( cm.leafs[ leafNum ].cluster != -1 ) {
		ll->lastLeaf = leafNum;
	}

	if ( ll->count >= ll->maxcount ) {
		ll->overflowed = qtrue;
		return;
	}
	ll->list[ ll->count++ ] = leafNum;
}



/*
=============
CM_BoxLeafnums

Fills in a list of all the leafs touched
=============
*/
void CM_BoxLeafnums_r( leafList_t *ll, int nodenum ) {
	cplane_t    *plane;
	cNode_t     *node;
	int s;

	
	while ( nodenum >= 0 )
	{
		node = &cm.nodes[nodenum];
		plane = node->plane;
		s = BoxOnPlaneSide( ll->bounds[0], ll->bounds[1], plane );
		if ( s == 1 )
		{
		  nodenum = node->children[0];
		}
		else
		{
			if ( s != 2 )
			{
				CM_BoxLeafnums_r(ll, node->children[0]);
			}
			nodenum = node->children[1];
		}
	}
	
	CM_StoreLeafs( ll, nodenum );

}



/*
==================
CM_BoxLeafnums
==================
*/
int CM_BoxLeafnums( const vec3_t mins, const vec3_t maxs, uint16_t *list, int listsize, int *lastLeaf ) {
	leafList_t ll;

	VectorCopy( mins, ll.bounds[0] );
	VectorCopy( maxs, ll.bounds[1] );
	ll.count = 0;
	ll.maxcount = listsize;
	ll.list = list;
	ll.lastLeaf = 0;
	ll.overflowed = qfalse;

	CM_BoxLeafnums_r( &ll, 0 );

	*lastLeaf = ll.lastLeaf;
	return ll.count;
}


