#include "q_shared.h"
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





int CM_PointContentsLeafBrushNode_r(const float *p, cLeafBrushNode_t *node)
{
  int contents;
  cbrush_t *b;
  signed int i, k, u;
  float d;

  contents = 0;
  while ( node->leafBrushCount <= 0 )
  {
//retry_2:
	if ( node->leafBrushCount < 0 )
	{
		contents |= CM_PointContentsLeafBrushNode_r(p, node + 1);
	}
    if ( node->data.children.dist < (double)p[node->axis] )
      node += node->data.children.childOffset[0];
    else
      node += node->data.children.childOffset[1];
  }

  for (k=0 ; k < node->leafBrushCount; k++)
  {
	int brushnum = node->data.leaf.brushes[k];
    b = &cm.brushes[brushnum];
    for(u = 0; b->mins[u] <= p[u] && b->maxs[u] >= p[u] && u < 3; ++u);
    if ( u >= 3 )
    {
		// see if the point is in the brush
        for ( i = 0 ; i < b->numsides ; i++ ) {
            d = DotProduct( p, b->sides[i].plane->normal );
            if ( d > b->sides[i].plane->dist ) {
                break;
            }
        }
        if ( i == b->numsides ) {
            contents |= b->contents;
        }
    }
//miss:
  }
  return contents;
}


int CM_PointContents(const float *p, unsigned int model)
{

	cLeaf_t *leaf;
	signed int i;

	if ( model )
	{
		cmodel_t* c = CM_ClipHandleToModel(model);
		leaf = &c->leaf;
	}
	else
	{
		int leafnum = CM_PointLeafnum(p);
		leaf = &cm.leafs[leafnum];
	}

	if ( !leaf->leafBrushNode )
	{
		return 0;
	}

	for(i = 0; i < 3; ++i)
	{
		if ( leaf->mins[i] >= p[i] || p[i] >= leaf->maxs[i] )
		{
			return 0;
		}

	}

	return CM_PointContentsLeafBrushNode_r(p, &cm.leafbrushNodes[leaf->leafBrushNode]);

}

/*
==================
CM_TransformedPointContents

Handles offseting and rotation of the end points for moving and
rotating entities
==================
*/
int CM_TransformedPointContents( const vec3_t p, clipHandle_t model, const vec3_t origin, const vec3_t angles ) {
	vec3_t p_l;
	vec3_t temp;
	vec3_t axis[3];

	// subtract origin offset
	VectorSubtract( p, origin, p_l );

	// rotate start and end into the models frame of reference
	if ( angles[0] || angles[1] || angles[2] )
	{
		AnglesToAxis(angles, axis);

		VectorCopy( p_l, temp );
		p_l[0] = DotProduct( temp, axis[0] );
		p_l[1] = DotProduct( temp, axis[1] );
		p_l[2] = DotProduct( temp, axis[2] );
	}

	return CM_PointContents( p_l, model );
}

// This one used among others but it should not be in file called "test"
qboolean __cdecl CM_ClipHandleIsValid(unsigned int handle)
{
  if ( handle >= cm.numSubModels )
  {
    if ( handle == BOX_MODEL_HANDLE )
    {
      return qtrue;
    }
    return qfalse;
  }
  return qtrue;
}
