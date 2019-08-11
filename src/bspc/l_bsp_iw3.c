/*
===========================================================================

Return to Castle Wolfenstein multiplayer GPL Source Code
Copyright (C) 1999-2010 id Software LLC, a ZeniMax Media company. 

This file is part of the Return to Castle Wolfenstein multiplayer GPL Source Code (RTCW MP Source Code).  

RTCW MP Source Code is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

RTCW MP Source Code is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with RTCW MP Source Code.  If not, see <http://www.gnu.org/licenses/>.

In addition, the RTCW MP Source Code is also subject to certain additional terms. You should have received a copy of these additional terms immediately following the terms and conditions of the GNU General Public License which accompanied the RTCW MP Source Code.  If not, please request a copy in writing from id Software at the address below.

If you have questions concerning this license or the applicable additional terms, you may contact in writing id Software LLC, c/o ZeniMax Media Inc., Suite 120, Rockville, Maryland 20850 USA.

===========================================================================
*/


#include "l_cmd.h"
#include "l_math.h"
#include "l_mem.h"
#include "l_log.h"
#include "l_poly.h"
#include "../botlib/l_script.h"
#include "l_qfiles.h"
#include "l_bsp_q3.h"
#include "l_bsp_ent.h"
#include "l_bsp_iw3.h"
#include "db_load.h"
#include "../physicalmemory.h"
#include "../xassets.h"
#include "../xassets/material.h"
#include "../xassets/gfxworld.h"
#include "../xassets/gfximage.h"
#include "../com_pack.h"



void IW3_ParseEntities( void );
void IW3_PrintBSPFileSizes( void );

void GetLeafNums( void );

//=============================================================================

#define WCONVEX_EPSILON     0.5

int iw3_nummodels;
q3_dmodel_t     *iw3_dmodels; //[MAX_MAP_MODELS];

int iw3_numShaders;
q3_dshader_t    *iw3_dshaders; //[Q3_MAX_MAP_SHADERS];

int iw3_entdatasize;
char            *iw3_dentdata; //[Q3_MAX_MAP_ENTSTRING];

int iw3_numleafs;
q3_dleaf_t      *iw3_dleafs; //[Q3_MAX_MAP_LEAFS];

int iw3_numplanes;
q3_dplane_t     *iw3_dplanes; //[Q3_MAX_MAP_PLANES];

int iw3_numnodes;
q3_dnode_t      *iw3_dnodes; //[Q3_MAX_MAP_NODES];

int iw3_numleafsurfaces;
int             *iw3_dleafsurfaces; //[Q3_MAX_MAP_LEAFFACES];

int iw3_numleafbrushes;
int             *iw3_dleafbrushes; //[Q3_MAX_MAP_LEAFBRUSHES];

int iw3_numbrushes;
q3_dbrush_t     *iw3_dbrushes; //[Q3_MAX_MAP_BRUSHES];

int iw3_numbrushsides;
q3_dbrushside_t *iw3_dbrushsides; //[IW3_MAX_MAP_BRUSHSIDES];

int iw3_numLightBytes;
byte            *iw3_lightBytes; //[Q3_MAX_MAP_LIGHTING];

int iw3_numGridPoints;
byte            *iw3_gridData; //[Q3_MAX_MAP_LIGHTGRID];

int iw3_numVisBytes;
byte            *iw3_visBytes; //[Q3_MAX_MAP_VISIBILITY];

int iw3_numDrawVerts;
iw3_drawVert_t   *iw3_drawVerts; //[Q3_MAX_MAP_DRAW_VERTS];

int iw3_numDrawIndexes;
uint16_t         *iw3_drawIndexes; //[Q3_MAX_MAP_DRAW_INDEXES];

int iw3_numDrawSurfaces;
q3_dsurface_t   *iw3_drawSurfaces; //[Q3_MAX_MAP_DRAW_SURFS];

int iw3_numFogs;
q3_dfog_t       *iw3_dfogs; //[Q3_MAX_MAP_FOGS];

char iw3_dbrushsidetextured[IW3_MAX_MAP_BRUSHSIDES];

extern qboolean forcesidesvisible;


//===========================================================================
//
// Parameter:			-
// Returns:				-
// Changes Globals:		-
//===========================================================================
void IW3_FreeMaxBSP( void ) {
	if ( iw3_dmodels ) {
		FreeMemory( iw3_dmodels );
	}
	iw3_dmodels = NULL;
	iw3_nummodels = 0;
	if ( iw3_dshaders ) {
		FreeMemory( iw3_dshaders );
	}
	iw3_dshaders = NULL;
	iw3_numShaders = 0;
	if ( iw3_dentdata ) {
		FreeMemory( iw3_dentdata );
	}
	iw3_dentdata = NULL;
	iw3_entdatasize = 0;
	if ( iw3_dleafs ) {
		FreeMemory( iw3_dleafs );
	}
	iw3_dleafs = NULL;
	iw3_numleafs = 0;
	if ( iw3_dplanes ) {
		FreeMemory( iw3_dplanes );
	}
	iw3_dplanes = NULL;
	iw3_numplanes = 0;
	if ( iw3_dnodes ) {
		FreeMemory( iw3_dnodes );
	}
	iw3_dnodes = NULL;
	iw3_numnodes = 0;
	if ( iw3_dleafsurfaces ) {
		FreeMemory( iw3_dleafsurfaces );
	}
	iw3_dleafsurfaces = NULL;
	iw3_numleafsurfaces = 0;
	if ( iw3_dleafbrushes ) {
		FreeMemory( iw3_dleafbrushes );
	}
	iw3_dleafbrushes = NULL;
	iw3_numleafbrushes = 0;
	if ( iw3_dbrushes ) {
		FreeMemory( iw3_dbrushes );
	}
	iw3_dbrushes = NULL;
	iw3_numbrushes = 0;
	if ( iw3_dbrushsides ) {
		FreeMemory( iw3_dbrushsides );
	}
	iw3_dbrushsides = NULL;
	iw3_numbrushsides = 0;
	if ( iw3_lightBytes ) {
		FreeMemory( iw3_lightBytes );
	}
	iw3_lightBytes = NULL;
	iw3_numLightBytes = 0;
	if ( iw3_gridData ) {
		FreeMemory( iw3_gridData );
	}
	iw3_gridData = NULL;
	iw3_numGridPoints = 0;
	if ( iw3_visBytes ) {
		FreeMemory( iw3_visBytes );
	}
	iw3_visBytes = NULL;
	iw3_numVisBytes = 0;
	if ( iw3_drawVerts ) {
		FreeMemory( iw3_drawVerts );
	}
	iw3_drawVerts = NULL;
	iw3_numDrawVerts = 0;
	if ( iw3_drawIndexes ) {
		FreeMemory( iw3_drawIndexes );
	}
	iw3_drawIndexes = NULL;
	iw3_numDrawIndexes = 0;
	if ( iw3_drawSurfaces ) {
		FreeMemory( iw3_drawSurfaces );
	}
	iw3_drawSurfaces = NULL;
	iw3_numDrawSurfaces = 0;
	if ( iw3_dfogs ) {
		FreeMemory( iw3_dfogs );
	}
	iw3_dfogs = NULL;
	iw3_numFogs = 0;
} //end of the function Q3_FreeMaxBSP

//===========================================================================
//
// Parameter:				-
// Returns:					-
// Changes Globals:		-
//===========================================================================
void IW3_PlaneFromPoints( vec3_t p0, vec3_t p1, vec3_t p2, vec3_t normal, float *dist ) {
	vec3_t t1, t2;

	VectorSubtract( p0, p1, t1 );
	VectorSubtract( p2, p1, t2 );
	CrossProduct( t1, t2, normal );
	VectorNormalize( normal );

	*dist = DotProduct( p0, normal );
} //end of the function PlaneFromPoints
//===========================================================================
//
// Parameter:				-
// Returns:					-
// Changes Globals:		-
//===========================================================================
void IW3_SurfacePlane( q3_dsurface_t *surface, vec3_t normal, float *dist ) {
	int i;
	float *p0, *p1, *p2;
	vec3_t t1, t2;

	p0 = iw3_drawVerts[surface->firstVert].xyz;
	for ( i = 1; i < surface->numVerts - 1; i++ )
	{
		p1 = iw3_drawVerts[surface->firstVert + ( ( i ) % surface->numVerts )].xyz;
		p2 = iw3_drawVerts[surface->firstVert + ( ( i + 1 ) % surface->numVerts )].xyz;
		VectorSubtract( p0, p1, t1 );
		VectorSubtract( p2, p1, t2 );
		CrossProduct( t1, t2, normal );
		VectorNormalize( normal );
		if ( VectorLength( normal ) ) {
			break;
		}
	} //end for*/
/*
	float dot;
	for (i = 0; i < surface->numVerts; i++)
	{
		p0 = iw3_drawVerts[surface->firstVert + ((i) % surface->numVerts)].xyz;
		p1 = iw3_drawVerts[surface->firstVert + ((i+1) % surface->numVerts)].xyz;
		p2 = iw3_drawVerts[surface->firstVert + ((i+2) % surface->numVerts)].xyz;
		VectorSubtract(p0, p1, t1);
		VectorSubtract(p2, p1, t2);
		VectorNormalize(t1);
		VectorNormalize(t2);
		dot = DotProduct(t1, t2);
		if (dot > -0.9 && dot < 0.9 &&
			VectorLength(t1) > 0.1 && VectorLength(t2) > 0.1) break;
	} //end for
	CrossProduct(t1, t2, normal);
	VectorNormalize(normal);
*/
	if ( VectorLength( normal ) < 0.9 ) {
		printf( "surface %d bogus normal vector %f %f %f\n", surface - iw3_drawSurfaces, normal[0], normal[1], normal[2] );
		printf( "t1 = %f %f %f, t2 = %f %f %f\n", t1[0], t1[1], t1[2], t2[0], t2[1], t2[2] );
		for ( i = 0; i < surface->numVerts; i++ )
		{
			p1 = iw3_drawVerts[surface->firstVert + ( ( i ) % surface->numVerts )].xyz;
			Log_Print( "p%d = %f %f %f\n", i, p1[0], p1[1], p1[2] );
		} //end for
	} //end if
	*dist = DotProduct( p0, normal );
} //end of the function Q3_SurfacePlane
//===========================================================================
//
// Parameter:				-
// Returns:					-
// Changes Globals:		-
//===========================================================================
q3_dplane_t *iw3_surfaceplanes;

void IW3_CreatePlanarSurfacePlanes( void ) {
	int i;
	q3_dsurface_t *surface;

	Log_Print( "creating planar surface planes...\n" );
	iw3_surfaceplanes = (q3_dplane_t *) GetClearedMemory( iw3_numDrawSurfaces * sizeof( q3_dplane_t ) );

	for ( i = 0; i < iw3_numDrawSurfaces; i++ )
	{
		surface = &iw3_drawSurfaces[i];
		if ( surface->surfaceType != MST_PLANAR ) {
			continue;
		}
		IW3_SurfacePlane( surface, iw3_surfaceplanes[i].normal, &iw3_surfaceplanes[i].dist );
		//Log_Print("normal = %f %f %f, dist = %f\n", iw3_surfaceplanes[i].normal[0],
		//											iw3_surfaceplanes[i].normal[1],
		//											iw3_surfaceplanes[i].normal[2], iw3_surfaceplanes[i].dist);
	} //end for
} //end of the function Q3_CreatePlanarSurfacePlanes
//===========================================================================
//
// Parameter:				-
// Returns:					-
// Changes Globals:		-
//===========================================================================
/*
void Q3_SurfacePlane(q3_dsurface_t *surface, vec3_t normal, float *dist)
{
	//take the plane information from the lightmap vector
	//VectorCopy(surface->lightmapVecs[2], normal);
	//calculate plane dist with first surface vertex
	//dist = DotProduct(iw3_drawVerts[surface->firstVert].xyz, normal);
	Q3_PlaneFromPoints(iw3_drawVerts[surface->firstVert].xyz,
						iw3_drawVerts[surface->firstVert+1].xyz,
						iw3_drawVerts[surface->firstVert+2].xyz, normal, dist);
} //end of the function Q3_SurfacePlane
*/
//===========================================================================
// returns the amount the face and the winding overlap
//
// Parameter:				-
// Returns:					-
// Changes Globals:		-
//===========================================================================
float IW3_FaceOnWinding( q3_dsurface_t *surface, winding_t *winding ) {
	int i;
	float dist, area;
	q3_dplane_t plane;
	vec_t *v1, *v2;
	vec3_t normal, edgevec;
	winding_t *w;

	//copy the winding before chopping
	w = CopyWinding( winding );
	//retrieve the surface plane
	IW3_SurfacePlane( surface, plane.normal, &plane.dist );
	//chop the winding with the surface edge planes
	for ( i = 0; i < surface->numVerts && w; i++ )
	{
		v1 = iw3_drawVerts[surface->firstVert + ( ( i ) % surface->numVerts )].xyz;
		v2 = iw3_drawVerts[surface->firstVert + ( ( i + 1 ) % surface->numVerts )].xyz;
		//create a plane through the edge from v1 to v2, orthogonal to the
		//surface plane and with the normal vector pointing inward
		VectorSubtract( v2, v1, edgevec );
		CrossProduct( edgevec, plane.normal, normal );
		VectorNormalize( normal );
		dist = DotProduct( normal, v1 );
		//
		ChopWindingInPlace( &w, normal, dist, -0.1 ); //CLIP_EPSILON
	} //end for
	if ( w ) {
		area = WindingArea( w );
		FreeWinding( w );
		return area;
	} //end if
	return 0;
} //end of the function Q3_FaceOnWinding
//===========================================================================
// creates a winding for the given brush side on the given brush
//
// Parameter:				-
// Returns:					-
// Changes Globals:		-
//===========================================================================
winding_t *IW3_BrushSideWinding( q3_dbrush_t *brush, q3_dbrushside_t *baseside ) {
	int i;
	q3_dplane_t *baseplane, *plane;
	winding_t *w;
	q3_dbrushside_t *side;

	//create a winding for the brush side with the given planenumber
	baseplane = &iw3_dplanes[baseside->planeNum];
	w = BaseWindingForPlane( baseplane->normal, baseplane->dist );
	for ( i = 0; i < brush->numSides && w; i++ )
	{
		side = &iw3_dbrushsides[brush->firstSide + i];
		//don't chop with the base plane
		if ( side->planeNum == baseside->planeNum ) {
			continue;
		}
		//also don't use planes that are almost equal
		plane = &iw3_dplanes[side->planeNum];
		if ( DotProduct( baseplane->normal, plane->normal ) > 0.999
			 && fabs( baseplane->dist - plane->dist ) < 0.01 ) {
			continue;
		}
		//
		plane = &iw3_dplanes[side->planeNum ^ 1];
		ChopWindingInPlace( &w, plane->normal, plane->dist, -0.1 ); //CLIP_EPSILON);
	} //end for
	return w;
} //end of the function Q3_BrushSideWinding
//===========================================================================
// fix screwed brush texture references
//
// Parameter:				-
// Returns:					-
// Changes Globals:		-
//===========================================================================
qboolean WindingIsTiny( winding_t *w );

void IW3_FindVisibleBrushSides( void ) {
	int i, j, k, we, numtextured, numsides;
	float dot;
	q3_dplane_t *plane;
	q3_dbrushside_t *brushside;
	q3_dbrush_t *brush;
	q3_dsurface_t *surface;
	winding_t *w;

	memset( iw3_dbrushsidetextured, false, IW3_MAX_MAP_BRUSHSIDES );

	if(IW3_MAX_MAP_BRUSHSIDES <= iw3_numbrushsides)
	{
		Error("Exceeded brushsides limit. Increase IW3_MAX_MAP_BRUSHSIDES.");
	}

	//
	numsides = 0;
	//create planes for the planar surfaces
	IW3_CreatePlanarSurfacePlanes();
	Log_Print( "searching visible brush sides...\n" );
	Log_Print( "%6d brush sides", numsides );
	//go over all the brushes
	for ( i = 0; i < iw3_numbrushes; i++ )
	{
		brush = &iw3_dbrushes[i];
		//go over all the sides of the brush
		for ( j = 0; j < brush->numSides; j++ )
		{
			qprintf( "\r%6d", numsides++ );
			brushside = &iw3_dbrushsides[brush->firstSide + j];
			//
			w = IW3_BrushSideWinding( brush, brushside );
			if ( !w ) {
				iw3_dbrushsidetextured[brush->firstSide + j] = true;
				continue;
			} //end if
			else
			{
				//RemoveEqualPoints(w, 0.2);
				if ( WindingIsTiny( w ) ) {
					FreeWinding( w );
					iw3_dbrushsidetextured[brush->firstSide + j] = true;
					continue;
				} //end if
				else
				{
					we = WindingError( w );
					if ( we == WE_NOTENOUGHPOINTS
						 || we == WE_SMALLAREA
						 || we == WE_POINTBOGUSRANGE
//						|| we == WE_NONCONVEX
						 ) {
						FreeWinding( w );
						iw3_dbrushsidetextured[brush->firstSide + j] = true;
						continue;
					} //end if
				} //end else
			} //end else
			if ( WindingArea( w ) < 20 ) {
				iw3_dbrushsidetextured[brush->firstSide + j] = true;
				continue;
			} //end if
			  //find a face for texturing this brush
			for ( k = 0; k < iw3_numDrawSurfaces; k++ )
			{
				surface = &iw3_drawSurfaces[k];
				if ( surface->surfaceType != MST_PLANAR ) {
					continue;
				}
				//
				//Q3_SurfacePlane(surface, plane.normal, &plane.dist);
				plane = &iw3_surfaceplanes[k];
				//the surface plane and the brush side plane should be pretty much the same
				if ( fabs( fabs( plane->dist ) - fabs( iw3_dplanes[brushside->planeNum].dist ) ) > 5 ) {
					continue;
				}
				dot = DotProduct( plane->normal, iw3_dplanes[brushside->planeNum].normal );
				if ( dot > -0.9 && dot < 0.9 ) {
					continue;
				}
				//if the face is partly or totally on the brush side
				if ( IW3_FaceOnWinding( surface, w ) ) {
					iw3_dbrushsidetextured[brush->firstSide + j] = true;
					//Log_Write("IW3_FaceOnWinding");
					break;
				} //end if
			} //end for
			FreeWinding( w );
		} //end for
	} //end for
	qprintf( "\r%6d brush sides\n", numsides );
	numtextured = 0;
	for ( i = 0; i < iw3_numbrushsides; i++ )
	{
		if ( forcesidesvisible ) {
			iw3_dbrushsidetextured[i] = true;
		}
		if ( iw3_dbrushsidetextured[i] ) {
			numtextured++;
		}
	} //end for
	Log_Print( "%d brush sides textured out of %d\n", numtextured, iw3_numbrushsides );
} //end of the function Q3_FindVisibleBrushSides

/*
=============
IW3_SwapBlock

If all values are 32 bits, this can be used to swap everything
=============
*/
void IW3_SwapBlock( int *block, int sizeOfBlock ) {
	int i;

	sizeOfBlock >>= 2;
	for ( i = 0 ; i < sizeOfBlock ; i++ ) {
		block[i] = LittleLong( block[i] );
	}
} //end of the function IW3_SwapBlock

/*
=============
IW3_CopyLump
=============
*/
int IW3_CopyLump( void* cmdata, int count, void **dest, int size ) {
	int length;

	length = count * size;

	if ( length % size ) {
		Error( "IW3_LoadBSPFile: odd lump size" );
	}

	*dest = GetMemory( length );

	memcpy( *dest, cmdata, length );

	return length / size;
}


typedef struct
{
	uint32_t count;
	uint32_t first;
}findNode_t;

findNode_t __cdecl CM_FindLeafBrushNode_r(cLeafBrushNode_t *node, bool findLeafBrush)
{
  findNode_t found, ret;
  found.count = 0;
  found.first = 0xFFFF;
  assert ( node != NULL );
  unsigned int firstbrush;

  if ( node->leafBrushCount <= 0 )
  {
    if ( node->leafBrushCount == -1)
    {
	    ret = CM_FindLeafBrushNode_r(node + 1, findLeafBrush);
		found.count += ret.count;
		if(ret.first < found.first)
		{
			found.first = ret.first;
		}
	}
	//Look for front-child and back-child node
    ret = CM_FindLeafBrushNode_r(node + node->data.children.childOffset[0], findLeafBrush);
	found.count += ret.count;
	if(ret.first < found.first)
	{
		found.first = ret.first;
	}
    ret = CM_FindLeafBrushNode_r(node + node->data.children.childOffset[1], findLeafBrush);
	found.count += ret.count;
	if(ret.first < found.first)
	{
		found.first = ret.first;
	}
	return found;
  }
  found.count = node->leafBrushCount;
  if(findLeafBrush)
  {
	firstbrush = node->data.leaf.brushes - cm.leafbrushes;
	if(firstbrush + found.count > cm.numLeafBrushes)
	{
		Error("Invalid leafbrush index/count");
	}
	found.first = firstbrush;
	assert(cm.leafbrushes[found.first] == node->data.leaf.brushes[0]);
  }else{
	firstbrush = node->data.leaf.brushes[0];
	if(firstbrush + found.count > cm.numBrushes)
	{
		Error("Invalid brush index/count");
	}
	found.first = firstbrush;
  }
  return found;
}



int IW3_DumpSubmodels(q3_dmodel_t **pout, int size ) {
	int length;
	int i, j;

	findNode_t found;


	if ( cm.numSubModels < 1 ) {
		Error("Map with no models" );
		return 0;
	}

	length = cm.numSubModels * size;
	*pout = GetMemory( length );
	q3_dmodel_t *out = *pout;
	q3_dmodel_t *worldmodel = *pout;

	if ( cm.numSubModels > IW3_MAX_MAP_MODELS ) {
		Error( "IW3_MAX_MAP_MODELS exceeded" );
		return 0;
	}

	cmodel_t* in = cm.cmodels;
	found.first = 0;
	found.count = 0;

	for ( i = 0 ; i < cm.numSubModels ; i++, in++, out++ )
	{
		for ( j = 0 ; j < 3 ; j++ )
		{   // spread the mins / maxs by a pixel
			out->mins[j] = in->mins[j] + 1; //Signs inverted
			out->maxs[j] = in->maxs[j] - 1;
		}

		if ( i == 0 ) {
			continue;   // world model does not contain our info directly. 
									//We have to hack it from next model back into worldmodel 
		}

		out->firstSurface = in->leaf.firstCollAabbIndex;
		out->numSurfaces = in->leaf.collAabbCount;

		if((unsigned int)in->leaf.leafBrushNode >= cm.numLeafBrushes)
		{
			Error( "IW3_DumpSubmodels: Invalid leafBrushNode %d referenced", in->leaf.leafBrushNode);
			return 0;
		}


		if(in->leaf.leafBrushNode == 0)
		{
			assert(!in->leaf.brushContents);
			out->numBrushes = 0;
			out->firstBrush = found.first + found.count; //Using the older data here
		}else{
			cLeafBrushNode_t *node = &cm.leafbrushNodes[in->leaf.leafBrushNode];
			found = CM_FindLeafBrushNode_r(node, false);
			out->firstBrush = found.first;
			out->numBrushes = found.count;
		}
		if(i == 1)
		{
			//Hack to write data back into worldmodel
			worldmodel->firstBrush = 0;
			worldmodel->firstSurface = 0;
			worldmodel->numBrushes = found.first; //First brush of 2nd model must be count for first
			worldmodel->numSurfaces = in->leaf.firstCollAabbIndex; //same as above
		}
	}
	return i;
}

//ME NOTE: changed from 0.00001
#define NORMAL_EPSILON  0.000000001
//ME NOTE: changed from 0.01
#define DIST_EPSILON    0.000000002

//Inserts a new plane if not yet defined or finds a plane
int IW3_PlaneByNormalDist(vec3_t normal, vec_t dist)
{
	int i;
	q3_dplane_t* p;
	for(i = 0; i < iw3_numplanes; i++)
	{
		p = &iw3_dplanes[i];

		if (fabs( p->normal[0] - normal[0] ) < NORMAL_EPSILON
				&& fabs( p->normal[1] - normal[1] ) < NORMAL_EPSILON
				&& fabs( p->normal[2] - normal[2] ) < NORMAL_EPSILON
				&& fabs( p->dist - dist ) < DIST_EPSILON ) {
			break;
		}
	}
	if(i < iw3_numplanes)
	{
		return i;
	}
	p = &iw3_dplanes[iw3_numplanes];

	VectorCopy(normal, p->normal); 
	p->dist = dist;

	++iw3_numplanes;

	if(iw3_numplanes > cm.planeCount + 6 * (uint32_t)cm.numBrushes)
	{
		Error("max plane storagecount exceeded!");
	}
	return i;
}


int IW3_DumpPlanes(q3_dplane_t** pout, int size)
{
	int length;
	int i;
	q3_dplane_t* out;

	if ( cm.planeCount < 1 ) {
		Error("Map with no planes" );
		return 0;
	}

	length = cm.planeCount * size;
	length += (6 * (uint32_t)cm.numBrushes) * size; //have space for boundingbox sides
	*pout = GetMemory( length );
	out = *pout;
	cplane_t* in = cm.planes;

	for(i = 0; i < cm.planeCount; i++, in++, out++)
	{
		VectorCopy(in->normal, out->normal); 
		out->dist = in->dist;
	}
	return i;
}


signed int IW3_RoundToAbsInt(float z)
{
	if(z > 0)
	{
		return (int)ceilf(z);
	}else if(z < 0){
		return (int)floorf(z);
	}
	return 0;
}


int IW3_DumpLeafs( q3_dleaf_t** pout, int size )
{
	int length;
	int i, j;
	findNode_t found;

	if ( cm.numLeafs < 1 ) {
		Error("Map with no leafs" );
		return 0;
	}
	length = cm.numLeafs * size;
	*pout = GetMemory( length );
	q3_dleaf_t* out = *pout;
	cLeaf_t* in = cm.leafs;
	found.first = 0;
	found.count = 0;

	for(i = 0; i < cm.numLeafs; i++, in++, out++)
	{
		out->cluster = in->cluster;
		out->firstLeafSurface = in->firstCollAabbIndex;
		out->numLeafSurfaces = in->collAabbCount;
		out->firstLeafBrush = 0;
		out->numLeafBrushes = 0;

		if(in->leafBrushNode == 0)
		{
			assert(!in->brushContents);
			out->numLeafBrushes = 0;
			out->firstLeafBrush = found.first + found.count; //Using the older data here
		}else{
			cLeafBrushNode_t *node = &cm.leafbrushNodes[in->leafBrushNode];
			found = CM_FindLeafBrushNode_r(node, true);
			out->firstLeafBrush = found.first;
			out->numLeafBrushes = found.count;
		}


		for ( j = 0 ; j < 3 ; j++ )
		{
			out->mins[j] = IW3_RoundToAbsInt(in->mins[j] + 0.120); //Signs inverted
			out->maxs[j] = IW3_RoundToAbsInt(in->maxs[j] - 0.120);
		}
	}
	return i;
}


int IW3_DumpNodes( q3_dnode_t** pout, int size )
{
	int length;
	int i, j;

	if ( cm.numNodes < 1 ) {
		Error("Map with no nodes" );
		return 0;
	}
	length = cm.numNodes * size;
	*pout = GetMemory( length );
	q3_dnode_t* out = *pout;
	cNode_t* in = cm.nodes;

	for(i = 0; i < cm.numNodes; i++, in++, out++)
	{
		out->planeNum = in->plane - cm.planes;
		out->children[0] = in->children[0];
		out->children[1] = in->children[1];
		for ( j = 0 ; j < 3 ; j++ )
		{
			out->mins[j] = 0e-99;
			out->maxs[j] = 0e-99;
		}
	}
	return i;
}

int IW3_DumpLeafBrushes(int** pout, int size)
{
	int length;
	int i;
	int* out;

	if ( cm.numLeafBrushes < 1 ) {
		Error("Map with no leaf-brushes" );
		return 0;
	}

	length = cm.numLeafBrushes * size;
	*pout = GetMemory( length );
	out = *pout;

	for(i = 0; i < cm.numLeafBrushes; i++)
	{
		out[i] = cm.leafbrushes[i];
	  assert(out[i] < (signed int)cm.numBrushes);
	}
	return i;
}

int IW3_FindSuitableShader(cbrush_t* b)
{
	int i, k;

	for(k = 0; k < 2; ++k)
	{
		for(i = 0; i < 3; ++i)
		{
			unsigned int shader = b->axialMaterialNum[k][i];
			if(shader >= cm.numMaterials)
			{
				Error("IW3_DumpBrushes: Out of range shader index.");
			}

			if(b->contents == cm.materials[shader].contentFlags)
			{
				return shader;
			}
		}
	}

	for(i = 0; i < b->numsides; ++i)
	{
		unsigned int shader = b->sides[i].materialNum;
		if(shader >= cm.numMaterials)
		{
			Error("IW3_DumpBrushes: Out of range shader index.");
		}

		if(b->contents == cm.materials[shader].contentFlags)
		{
			return shader;
		}
	}

	for(i = 0; i < cm.numMaterials; ++i)
	{
		if(b->contents == cm.materials[i].contentFlags)
		{
			return i;
		}
	}
	Error("IW3_DumpBrushes: No shader with wanted contentflags found.");
	return 0;
}



int IW3_DumpBrushes( q3_dbrush_t** pout, int size )
{
	int length, sidescounter;
	int i;

	if ( cm.numBrushes < 1 ) {
		Error("Map with no brushes" );
		return 0;
	}
	length = cm.numBrushes * size;
	*pout = GetMemory( length );
	q3_dbrush_t* out = *pout;
	cbrush_t* in = cm.brushes;

	for(i = 0, sidescounter = 0; i < cm.numBrushes; i++, in++, out++)
	{
		out->numSides = in->numsides + 6;
		//We can not really know anymore which shader was used for this.
		//So all we can do is to find some shader which does match the content flags.
		//At first it appears to make sense to check all the materials of the associated brush sides.
		//Then just pick the first best matching shader when nothing was found in sides
		out->shaderNum = IW3_FindSuitableShader(in);

		out->firstSide = sidescounter; //Will dump the brushsides in same order
		sidescounter += out->numSides;
	}
	return i;
}



int IW3_DumpBrushSides( q3_dbrushside_t** pout, int size )
{
	int i, j, k, z, numsides;
	cbrush_t* in = cm.brushes;

	for(i = 0, numsides = 0; i < cm.numBrushes; ++i, ++in)
	{
		numsides += 6;
		numsides += in->numsides;
	}

	int length = numsides * size;
	*pout = GetMemory( length );
	q3_dbrushside_t* out = *pout;

	in = cm.brushes;
	
	int y;

	for(i = 0, y = 0; i < cm.numBrushes; i++, in++)
	{
		q3_dplane_t bbox[2][3];
		vec3_t normal;
		vec_t dist;
		
		for ( z = 0 ; z < 3 ; z++ )
		{
			VectorClear( normal );
			normal[z] = 1;
			dist = in->maxs[z];

			VectorCopy(normal, bbox[0][z].normal);
			bbox[0][z].dist = dist;

			normal[z] = -1;
			dist = -in->mins[z];

			VectorCopy(normal, bbox[1][z].normal);
			bbox[1][z].dist = dist;
		}

		for(j = 0; j < 2; ++j)
		{
			for(k = 0; k < 3; ++k, ++out)
			{
				out->planeNum = IW3_PlaneByNormalDist(bbox[j][k].normal, bbox[j][k].dist);
				out->shaderNum = in->axialMaterialNum[j][k];
				++y;
			}
		}
		for(k = 0; k < in->numsides; ++k, ++out)
		{
			out->planeNum = in->sides[k].plane - cm.planes;
			out->shaderNum = in->sides[k].materialNum;
			++y;
		}
	}
	assert(y == numsides);
	return y;
}


#define VIS_HEADER  8
int IW3_DumpVisBytes(byte** pout, int size)
{
	if(!cm.vised)
	{
		return 0;
	}
	int length = (unsigned)cm.numClusters * (unsigned)cm.clusterBytes + VIS_HEADER;
	*pout = GetMemory( length );	
	byte* out = *pout;

  ( (int *)out )[0] = cm.numClusters;
  ( (int *)out )[1] = cm.clusterBytes;

	memcpy(out + VIS_HEADER, cm.visibility, (unsigned)cm.numClusters * (unsigned)cm.clusterBytes);
	return length;
}


void Byte4CopyBgraToVertexColor(const byte *rgbaFrom, byte *nativeTo)
{
    *(uint32_t*)nativeTo = *(uint32_t*)rgbaFrom;
    
}

int IW3_DumpDrawVerts( iw3_drawVert_t** pout, int size )
{
	int i;
	int length = s_world.vertexCount * size;
	*pout = GetMemory( length );
	iw3_drawVert_t* out = *pout;

	struct GfxWorldVertex* in = s_world.vd.vertices;

	for(i = 0; i < s_world.vertexCount; ++i, ++in, ++out)
	{
		VectorCopy(in->xyz, out->xyz);
		vec2_copy(in->texCoord, out->st);
		vec2_copy(in->lmapCoord, out->lightmap);
		Vec3UnpackUnitVec(in->normal, out->normal);
		Vec3UnpackUnitVec(in->tangent, out->tangent);
		Byte4CopyBgraToVertexColor(in->color.array, out->color);
		VectorClear(out->binormal);
	}
	return i;
}

int IW3_FindShaderNumByName(const char* name)
{
	int i;
	for(i = 0; i < cm.numMaterials; ++i)
	{
		if(Q_stricmp(cm.materials[i].material, name) == 0)
		{
			return i;
		}
	}
	return -1;
}


int IW3_DumpDrawSurfaces( q3_dsurface_t** pout, int size )
{
	int i, j, z;
	int length = s_world.surfaceCount * size;
	*pout = GetMemory( length );
	q3_dsurface_t* out = *pout;

	struct GfxSurface* in = s_world.dpvs.surfaces;

	FILE* fp = fopen("dump.obj", "wb");
  z = 0;
	for(i = 0; i < s_world.surfaceCount; ++i, ++in, ++out)
	{
		char matname[1024];
		Q_strncpyz(matname, in->material->info.name, sizeof(matname));

		char* f = strrchr(matname, '/');
		if(f)
		{
			*f = '\0';
			++f;
		}else{
			f = matname;
		}


		out->shaderNum = IW3_FindShaderNumByName(f);
		if(out->shaderNum == -1)
		{
			qprintf("@%d Surface material %s is not in list of cm.materials!\n", i, f);
		}
		out->firstVert = in->tris.firstVertex;
		out->numVerts = in->tris.vertexCount;

		uint16_t* indices = &s_world.indices[in->tris.baseIndex];
		struct GfxWorldVertex* triVerts0 = &s_world.vd.vertices[in->tris.firstVertex];

		fprintf(fp, "o Surface%d\n", i);

		for(j = 0; j < in->tris.triCount; ++j, z += 3)
		{
			float* vect;
			//qprintf("triangle %d\n", j);

			vect = triVerts0[*indices].xyz;
			fprintf(fp, "v %g %g %g\n", vect[0], vect[1], vect[2]);
			indices++;
			
			vect = triVerts0[*indices].xyz;
			fprintf(fp, "v %g %g %g\n", vect[0], vect[1], vect[2]);
			indices++;
			
			vect = triVerts0[*indices].xyz;
			fprintf(fp, "v %g %g %g\n", vect[0], vect[1], vect[2]);
			indices++;
			fprintf(fp, "f %d %d %d\n\n", z+1, z+2, z+3);
		}
		qprintf("%d NumVerts: %d\n", i, out->numVerts);
		out->surfaceType = MST_TRIANGLE_SOUP; //CoD4 has only triangle surfaces
		out->numIndexes = in->tris.triCount * 3;
		out->firstIndex = in->tris.baseIndex; //has to be based on s_world.draw.indices 
		out->lightmapNum = in->lightmapIndex; //is lmapMergeInfo based index. Not going to be valid without tricks
		out->surfaceType = MST_TRIANGLE_SOUP;
//		printf("%d Lightmap num: %d\n", i, out->lightmapNum);
		//in->primaryLightIndex;
	}
	fclose(fp);
	return i;
}


typedef struct
{
	bool active;
	vec3_t tri[3];
}iw3_triangle_t;

typedef struct
{
	iw3_triangle_t *tris;
	int numtris;
}iw3_tripartition_t;

iw3_tripartition_t *iw3_partitions;


bool IsBadTriangle(float** tri)
{
	if(VectorCompare(tri[0], tri[1]) || VectorCompare(tri[0], tri[2]) || VectorCompare(tri[1], tri[2]))
	{
		return true;
	}
	return false;
}

bool AreNeighbourTriangles(iw3_triangle_t* tri1, iw3_triangle_t* tri2)
{
	int connectingpts = 0;
	if(VectorCompare(tri1->tri[0], tri2->tri[0]) || VectorCompare(tri1->tri[0], tri2->tri[1]) || VectorCompare(tri1->tri[0], tri2->tri[2]))
	{
		++connectingpts;
	}
	if(VectorCompare(tri1->tri[1], tri2->tri[0]) || VectorCompare(tri1->tri[1], tri2->tri[1]) || VectorCompare(tri1->tri[1], tri2->tri[2]))
	{
		++connectingpts;
	}
	if(connectingpts == 2)
	{
		return true;
	}
	if(connectingpts == 0)
	{
		return false;
	}
	if(VectorCompare(tri1->tri[2], tri2->tri[0]) || VectorCompare(tri1->tri[2], tri2->tri[1]) || VectorCompare(tri1->tri[2], tri2->tri[2]))
	{
		return true;
	}
	return false;
}

bool IsDegeneratedTriangle(iw3_triangle_t* tri, iw3_tripartition_t* part)
{
	int i;
	//If this triangle has no other triangle with 2 connecting points in same partition it is degenerated 
	for(i = 0; i < part->numtris; ++i)
	{
		if(tri == &part->tris[i])
		{
			continue;
		}
		if(AreNeighbourTriangles(tri, &part->tris[i]))
		{
			return false;
		}
	}
	return true;
}


bool CompareTriangle(vec3_t* tri1, vec3_t* tri2)
{
	if(!VectorCompare(tri1[0], tri2[0]) && !VectorCompare(tri1[0], tri2[1]) && !VectorCompare(tri1[0], tri2[2]))
	{
		return false;
	}
	if(!VectorCompare(tri1[1], tri2[0]) && !VectorCompare(tri1[1], tri2[1]) && !VectorCompare(tri1[1], tri2[2]))
	{
		return false;
	}
	if(!VectorCompare(tri1[2], tri2[0]) && !VectorCompare(tri1[2], tri2[1]) && !VectorCompare(tri1[2], tri2[2]))
	{
		return false;
	}
	return true;
}


void RemoveDuplicateTriangle(iw3_triangle_t* tri)
{
	int triIndex;
	int i;
	
	for(i = 0; i < cm.partitionCount; ++i)
	{
		iw3_tripartition_t *part = &iw3_partitions[i];

		for(triIndex = 0; triIndex < part->numtris; ++triIndex)
		{
			if(tri == &part->tris[triIndex])
			{
				continue;
			}
			if(CompareTriangle(tri->tri, part->tris[triIndex].tri))
			{
				part->tris[triIndex].active = false;
			}
		}
	}
}



void IW3_RemoveDuplicateTriangles()
{
	int triIndex;
	int i;

	for(i = 0; i < cm.partitionCount; ++i)
	{
		iw3_tripartition_t *part = &iw3_partitions[i];

		for(triIndex = 0; triIndex < part->numtris; ++triIndex)
		{
			if(!part->tris[triIndex].active)
			{
				continue;
			}
			RemoveDuplicateTriangle(&part->tris[triIndex]);
		}
	}
}

void IW3_FindLoneTriangles()
{
	int triIndex;
	int i;
	int numlonetris = 0;
	//count them first
	for(i = 0; i < cm.partitionCount; ++i)
	{
		iw3_tripartition_t *part = &iw3_partitions[i];

		for(triIndex = 0; triIndex < part->numtris; ++triIndex)
		{
			if(!part->tris[triIndex].active)
			{
				continue;
			}
			if(IsDegeneratedTriangle(&part->tris[triIndex], part))
			{
				++numlonetris;
			}

		}
	}
	qprintf("Found %d lone tris\n", numlonetris);

	iw3_partitions[cm.partitionCount].tris = malloc(numlonetris * sizeof(iw3_triangle_t)); //Lone triangles are here
	iw3_partitions[cm.partitionCount].numtris = 0;
	// numlonetris;

	//after we got the memory we copy them out and delete them from original unit
	for(i = 0; i < cm.partitionCount; ++i)
	{
		iw3_tripartition_t *part = &iw3_partitions[i];

		for(triIndex = 0; triIndex < part->numtris; ++triIndex)
		{
			if(!part->tris[triIndex].active)
			{
				continue;
			}
			if(IsDegeneratedTriangle(&part->tris[triIndex], part))
			{
				memcpy(&iw3_partitions[cm.partitionCount].tris[iw3_partitions[cm.partitionCount].numtris] , &part->tris[triIndex], sizeof(iw3_triangle_t));
				part->tris[triIndex].active = false;
				iw3_partitions[cm.partitionCount].numtris++;
			}

		}
	}

}

void IW3_InsertLoneTris()
{
	int i, j;
	iw3_tripartition_t *lonetris = &iw3_partitions[cm.partitionCount];
	iw3_triangle_t *lonetri;
	for(i = 0, lonetri = lonetris->tris; i < lonetris->numtris; ++i, ++lonetri)
	{
		for(j = 0; j < cm.partitionCount; ++j)
		{
			iw3_tripartition_t *part = &iw3_partitions[j];

			if(!IsDegeneratedTriangle(lonetri, part))
			{
				iw3_triangle_t *newtris = malloc((part->numtris +1 )* sizeof(iw3_triangle_t));
				memcpy(newtris, iw3_partitions[j].tris, part->numtris * sizeof(iw3_triangle_t));
				free(iw3_partitions[j].tris);
				iw3_partitions[j].tris = newtris;
				part = &iw3_partitions[j];
				memcpy(&part->tris[part->numtris], lonetri, sizeof(iw3_triangle_t));
				++part->numtris;
				lonetri->active = false;
			}
		}
	}


}




void IW3_DumpCollisionVerts()
{
	int triIndex, i, z, j;

	for(triIndex = 0; triIndex < cm.triCount; ++triIndex)
	{
			float *tri[3];
			uint16_t* indices = &cm.triIndices[3 * triIndex];
			tri[0] = cm.verts[indices[0]];
			tri[1] = cm.verts[indices[1]];
			tri[2] = cm.verts[indices[2]];
			if(IsBadTriangle(tri))
			{
				Error("Bad triangle found\n");
			}
	}


	iw3_partitions = malloc((cm.partitionCount + 1) * sizeof(iw3_tripartition_t));
	
	for(i = 0; i < cm.partitionCount; ++i)
	{
		CollisionPartition_t* partition = &cm.partitions[i];

		iw3_partitions[i].tris = malloc(partition->triCount * sizeof(iw3_triangle_t));
		iw3_partitions[i].numtris = partition->triCount;

		for(triIndex = partition->firstTri, j = 0; triIndex < partition->firstTri + partition->triCount; ++triIndex, ++j)
		{
			float* vect;
			uint16_t* indices = &cm.triIndices[3 * triIndex];
			vect = cm.verts[indices[0]];
			VectorCopy(vect, iw3_partitions[i].tris[j].tri[0]);

			vect = cm.verts[indices[1]];
			VectorCopy(vect, iw3_partitions[i].tris[j].tri[1]);

			vect = cm.verts[indices[2]];
			VectorCopy(vect, iw3_partitions[i].tris[j].tri[2]);

			iw3_partitions[i].tris[j].active = true;
		}

	}

	IW3_RemoveDuplicateTriangles();
	IW3_FindLoneTriangles(); 
	IW3_InsertLoneTris();

	FILE* fp = fopen("collisionverts.obj", "wb");

	for(z = 0, i = 0; i < cm.partitionCount + 1; ++i)
	{
		fprintf(fp, "o Mesh%d\n", i);
		iw3_tripartition_t *part = &iw3_partitions[i];

		for(triIndex = 0; triIndex < part->numtris; ++triIndex)
		{
			float* vect;

			if(!part->tris[triIndex].active)
			{
				continue;
			}

			vect = part->tris[triIndex].tri[0];
			fprintf(fp, "v %g %g %g\n", vect[0], vect[1], vect[2]);

			vect = part->tris[triIndex].tri[1];
			fprintf(fp, "v %g %g %g\n", vect[0], vect[1], vect[2]);

			vect = part->tris[triIndex].tri[2];
			fprintf(fp, "v %g %g %g\n", vect[0], vect[1], vect[2]);

			fprintf(fp, "f %d %d %d\n\n", z+1, z+2, z+3);
			z += 3;
		}
	}

	fclose(fp);

}



struct __attribute__((aligned(1),packed)) TGA_HEADER{
   char  idlength;
   char  colourmaptype;
   char  datatypecode;
   short int colourmaporigin;
   short int colourmaplength;
   char  colourmapdepth;
   short int x_origin;
   short int y_origin;
   short width;
   short height;
   char  bitsperpixel;
   char  imagedescriptor;
};

int IW3_DumpLightMaps()
{
	int i;
	struct GfxLightmapArray* in = s_world.lightmaps;

	for(i = 0; i < s_world.lightmapCount; ++i, ++in)
	{
		struct GfxImage* primary = in->primary;
		struct GfxImage* secondary = in->secondary;
		struct GfxImageLoadDef* pritex = primary->texture.loadDef;
		struct GfxImageLoadDef* sectex = secondary->texture.loadDef;

		printf("%d %d %d Pri Lightmap %s size %d\n", pritex->dimensions[0], pritex->dimensions[1], pritex->dimensions[2],
		primary->name, pritex->resourceSize);
		printf("%d %d %d Sec Lightmap %s size %d\n", sectex->dimensions[0], sectex->dimensions[1], sectex->dimensions[2],
		secondary->name, sectex->resourceSize);

		int height = pritex->dimensions[0];
		int width = pritex->dimensions[1];

		char header[18];
		memset( header, 0, 18 );
		header[2] = 3; //monochrom uncompressed
		header[12] = width & 255;
		header[13] = width >> 8;
		header[14] = height & 255;
		header[15] = height >> 8;
		header[16] = 8; // pixel size
		header[17] = 32;

		FILE* f = fopen("lightmap0_primary.tga", "wb");
		if(f)
		{
			fwrite(&header, 1, 18, f);
			fwrite(pritex->data, 1, pritex->resourceSize, f);
			fclose(f);
		}

	}
	return 0;

}

int IW3_DumpEntityString( char** iw3_dentdata, int size )
{

	printf("EntStr: %s\n", cm.mapEnts->entityString);
/*
	int i;
	int length = s_world.surfaceCount * size;
	*pout = GetMemory( length );
	q3_dsurface_t* out = *pout;
*/

	return 0;
}

/*
=============
Q3_LoadBSPFile
=============
*/
void IW3_LoadFastfile( struct quakefile_s *qf ) {

	char bspfilename[1024];
	char basename[1024];

	PMem_Init();
	DB_Init();

	if(qf == NULL){
		return;
	}

    char *g_fileBuf = (char*)malloc(DBFILE_BUFFER_SIZE);

	//filename, flags, buffer 
    if ( !DB_TryLoadXFileInternal(qf->filename, 0, g_fileBuf) )
    {
		Error( "%s is not a valid CoD4-PC Fastfile", qf->filename );
		return;
    }
    free(g_fileBuf);

	if(strlen(qf->filename) >= sizeof(basename))
	{
		Error( "Filename exceeds limit" );
		return;
	}

	ExtractFileBase(qf->filename, basename);
	strlower(basename);

	Com_sprintf(bspfilename, sizeof(bspfilename), "maps/mp/%s.d3dbsp", basename);

	//Find the clipMap_t header - This is kind of CM_LoadMap()
	union XAssetHeader d3dbsp = DB_FindXAssetHeader(ASSET_TYPE_CLIPMAP_PVS, bspfilename, false, 100);
	if(&cm != d3dbsp.clipMap){
		Error( "Could not find needed asset %s in %s\n", bspfilename, qf->filename);
	}

	qprintf("-- Begin dumping lumps from clipMap and gfxWorld --\n");

	//When we got until here we have a loaded clipmap. Next step is to extract the ClipMap into BSP-Lumps

	iw3_numShaders = IW3_CopyLump( cm.materials, cm.numMaterials, (void *) &iw3_dshaders, sizeof( q3_dshader_t ) ); //Called materials in IWx
	iw3_nummodels = IW3_DumpSubmodels( &iw3_dmodels, sizeof( q3_dmodel_t ) );
	iw3_numplanes = IW3_DumpPlanes( &iw3_dplanes, sizeof( q3_dplane_t ) ); //Important step to do early as leaf and brushsides depend on this
	iw3_numleafs = IW3_DumpLeafs( &iw3_dleafs, sizeof( q3_dleaf_t ) );
	iw3_numnodes = IW3_DumpNodes( &iw3_dnodes, sizeof( q3_dnode_t ) );
	iw3_numleafsurfaces = IW3_CopyLump( cm.leafsurfaces, cm.numLeafSurfaces, (void *) &iw3_dleafsurfaces, sizeof( iw3_dleafsurfaces[0] ) );
	iw3_numleafbrushes = IW3_DumpLeafBrushes( &iw3_dleafbrushes, sizeof( iw3_dleafbrushes[0] ) );
	iw3_numbrushes = IW3_DumpBrushes(&iw3_dbrushes, sizeof( q3_dbrush_t ));
	iw3_numbrushsides = IW3_DumpBrushSides( &iw3_dbrushsides, sizeof( q3_dbrushside_t ) );
	iw3_numVisBytes = IW3_DumpVisBytes( &iw3_visBytes, 1 );
	iw3_numDrawVerts = IW3_DumpDrawVerts( &iw3_drawVerts, sizeof( iw3_drawVert_t ) );
	iw3_numDrawSurfaces = IW3_DumpDrawSurfaces( &iw3_drawSurfaces, sizeof( q3_dsurface_t ) );
	iw3_numDrawIndexes = IW3_CopyLump( s_world.indices, s_world.indexCount, (void *) &iw3_drawIndexes, sizeof( iw3_drawIndexes[0] ) );
	iw3_entdatasize = IW3_CopyLump( cm.mapEnts->entityString, cm.mapEnts->numEntityChars, (void *) &iw3_dentdata, 1 );
IW3_DumpCollisionVerts();
/*
	Ignore lightmaps and fog. Too difficult.
	iw3_numLightBytes = IW3_DumpLightMaps();
	iw3_numFogs = IW3_CopyLump( header, Q3_LUMP_FOGS, (void *) &iw3_dfogs, sizeof( q3_dfog_t ) );
	iw3_numLightBytes = IW3_CopyLump( header, Q3_LUMP_LIGHTMAPS, (void *) &iw3_lightBytes, 1 );
	iw3_numGridPoints = IW3_CopyLump( header, Q3_LUMP_LIGHTGRID, (void *) &iw3_gridData, 8 );

*/

	IW3_FindVisibleBrushSides();
	IW3_PrintBSPFileSizes();
}


//============================================================================


/*
=============
Q3_SwapBSPFile

Byte swaps all data in a bsp file.
=============
*/
void IW3_SwapBSPFile( void ) {
	int i;

	// models
	IW3_SwapBlock( (int *)iw3_dmodels, iw3_nummodels * sizeof( iw3_dmodels[0] ) );

	// shaders (don't swap the name)
	for ( i = 0 ; i < iw3_numShaders ; i++ ) {
		iw3_dshaders[i].contentFlags = LittleLong( iw3_dshaders[i].contentFlags );
		iw3_dshaders[i].surfaceFlags = LittleLong( iw3_dshaders[i].surfaceFlags );
	}

	// planes
	IW3_SwapBlock( (int *)iw3_dplanes, iw3_numplanes * sizeof( iw3_dplanes[0] ) );

	// nodes
	IW3_SwapBlock( (int *)iw3_dnodes, iw3_numnodes * sizeof( iw3_dnodes[0] ) );

	// leafs
	IW3_SwapBlock( (int *)iw3_dleafs, iw3_numleafs * sizeof( iw3_dleafs[0] ) );

	// leaffaces
	IW3_SwapBlock( (int *)iw3_dleafsurfaces, iw3_numleafsurfaces * sizeof( iw3_dleafsurfaces[0] ) );

	// leafbrushes
	IW3_SwapBlock( (int *)iw3_dleafbrushes, iw3_numleafbrushes * sizeof( iw3_dleafbrushes[0] ) );

	// brushes
	IW3_SwapBlock( (int *)iw3_dbrushes, iw3_numbrushes * sizeof( iw3_dbrushes[0] ) );

	// brushsides
	IW3_SwapBlock( (int *)iw3_dbrushsides, iw3_numbrushsides * sizeof( iw3_dbrushsides[0] ) );

	// vis
	( (int *)&iw3_visBytes )[0] = LittleLong( ( (int *)&iw3_visBytes )[0] );
	( (int *)&iw3_visBytes )[1] = LittleLong( ( (int *)&iw3_visBytes )[1] );

	// drawverts (don't swap colors )
	for ( i = 0 ; i < iw3_numDrawVerts ; i++ ) {
		iw3_drawVerts[i].lightmap[0] = LittleFloat( iw3_drawVerts[i].lightmap[0] );
		iw3_drawVerts[i].lightmap[1] = LittleFloat( iw3_drawVerts[i].lightmap[1] );
		iw3_drawVerts[i].st[0] = LittleFloat( iw3_drawVerts[i].st[0] );
		iw3_drawVerts[i].st[1] = LittleFloat( iw3_drawVerts[i].st[1] );
		iw3_drawVerts[i].xyz[0] = LittleFloat( iw3_drawVerts[i].xyz[0] );
		iw3_drawVerts[i].xyz[1] = LittleFloat( iw3_drawVerts[i].xyz[1] );
		iw3_drawVerts[i].xyz[2] = LittleFloat( iw3_drawVerts[i].xyz[2] );
		iw3_drawVerts[i].normal[0] = LittleFloat( iw3_drawVerts[i].normal[0] );
		iw3_drawVerts[i].normal[1] = LittleFloat( iw3_drawVerts[i].normal[1] );
		iw3_drawVerts[i].normal[2] = LittleFloat( iw3_drawVerts[i].normal[2] );
	}

	// drawindexes
	IW3_SwapBlock( (int *)iw3_drawIndexes, iw3_numDrawIndexes * sizeof( iw3_drawIndexes[0] ) );

	// drawsurfs
	IW3_SwapBlock( (int *)iw3_drawSurfaces, iw3_numDrawSurfaces * sizeof( iw3_drawSurfaces[0] ) );

	// fogs
	for ( i = 0 ; i < iw3_numFogs ; i++ ) {
		iw3_dfogs[i].brushNum = LittleLong( iw3_dfogs[i].brushNum );
	}
}


/*
=============
IW3_AddLump
=============
*/
void IW3_AddLump( FILE *bspfile, q3_dheader_t *header, int lumpnum, void *data, int len ) {
	q3_lump_t *lump;

	lump = &header->lumps[lumpnum];

	lump->fileofs = LittleLong( ftell( bspfile ) );
	lump->filelen = LittleLong( len );
	SafeWrite( bspfile, data, ( len + 3 ) & ~3 );
}

/*
=============
Q3_WriteBSPFile

Swaps the bsp file in place, so it should not be referenced again
=============
*/
void    IW3_WriteBSPFile( char *filename ) {
	q3_dheader_t outheader, *header;
	FILE        *bspfile;

	header = &outheader;
	memset( header, 0, sizeof( q3_dheader_t ) );

	IW3_SwapBSPFile();

	header->ident = LittleLong( Q3_BSP_IDENT );
	header->version = LittleLong( Q3_BSP_VERSION );

	bspfile = SafeOpenWrite( filename );
	SafeWrite( bspfile, header, sizeof( q3_dheader_t ) ); // overwritten later

	IW3_AddLump( bspfile, header, Q3_LUMP_SHADERS, iw3_dshaders, iw3_numShaders * sizeof( q3_dshader_t ) );
	IW3_AddLump( bspfile, header, Q3_LUMP_PLANES, iw3_dplanes, iw3_numplanes * sizeof( q3_dplane_t ) );
	IW3_AddLump( bspfile, header, Q3_LUMP_LEAFS, iw3_dleafs, iw3_numleafs * sizeof( q3_dleaf_t ) );
	IW3_AddLump( bspfile, header, Q3_LUMP_NODES, iw3_dnodes, iw3_numnodes * sizeof( q3_dnode_t ) );
	IW3_AddLump( bspfile, header, Q3_LUMP_BRUSHES, iw3_dbrushes, iw3_numbrushes * sizeof( q3_dbrush_t ) );
	IW3_AddLump( bspfile, header, Q3_LUMP_BRUSHSIDES, iw3_dbrushsides, iw3_numbrushsides * sizeof( q3_dbrushside_t ) );
	IW3_AddLump( bspfile, header, Q3_LUMP_LEAFSURFACES, iw3_dleafsurfaces, iw3_numleafsurfaces * sizeof( iw3_dleafsurfaces[0] ) );
	IW3_AddLump( bspfile, header, Q3_LUMP_LEAFBRUSHES, iw3_dleafbrushes, iw3_numleafbrushes * sizeof( iw3_dleafbrushes[0] ) );
	IW3_AddLump( bspfile, header, Q3_LUMP_MODELS, iw3_dmodels, iw3_nummodels * sizeof( q3_dmodel_t ) );
	IW3_AddLump( bspfile, header, Q3_LUMP_DRAWVERTS, iw3_drawVerts, iw3_numDrawVerts * sizeof( q3_drawVert_t ) );
	IW3_AddLump( bspfile, header, Q3_LUMP_SURFACES, iw3_drawSurfaces, iw3_numDrawSurfaces * sizeof( q3_dsurface_t ) );
	IW3_AddLump( bspfile, header, Q3_LUMP_VISIBILITY, iw3_visBytes, iw3_numVisBytes );
	IW3_AddLump( bspfile, header, Q3_LUMP_LIGHTMAPS, iw3_lightBytes, iw3_numLightBytes );
	IW3_AddLump( bspfile, header, Q3_LUMP_LIGHTGRID, iw3_gridData, 8 * iw3_numGridPoints );
	IW3_AddLump( bspfile, header, Q3_LUMP_ENTITIES, iw3_dentdata, iw3_entdatasize );
	IW3_AddLump( bspfile, header, Q3_LUMP_FOGS, iw3_dfogs, iw3_numFogs * sizeof( q3_dfog_t ) );
	IW3_AddLump( bspfile, header, Q3_LUMP_DRAWINDEXES, iw3_drawIndexes, iw3_numDrawIndexes * sizeof( iw3_drawIndexes[0] ) );

	fseek( bspfile, 0, SEEK_SET );
	SafeWrite( bspfile, header, sizeof( q3_dheader_t ) );
	fclose( bspfile );
}

//============================================================================

/*
=============
Q3_PrintBSPFileSizes

Dumps info about current file
=============
*/
void IW3_PrintBSPFileSizes( void ) {
	if ( !num_entities ) {
		IW3_ParseEntities();
	}

	Log_Print( "%6i models       %7i\n"
			   ,iw3_nummodels, (int)( iw3_nummodels * sizeof( q3_dmodel_t ) ) );
	Log_Print( "%6i shaders      %7i\n"
			   ,iw3_numShaders, (int)( iw3_numShaders * sizeof( q3_dshader_t ) ) );
	Log_Print( "%6i brushes      %7i\n"
			   ,iw3_numbrushes, (int)( iw3_numbrushes * sizeof( q3_dbrush_t ) ) );
	Log_Print( "%6i brushsides   %7i\n"
			   ,iw3_numbrushsides, (int)( iw3_numbrushsides * sizeof( q3_dbrushside_t ) ) );
	Log_Print( "%6i fogs         %7i\n"
			   ,iw3_numFogs, (int)( iw3_numFogs * sizeof( q3_dfog_t ) ) );
	Log_Print( "%6i planes       %7i\n"
			   ,iw3_numplanes, (int)( iw3_numplanes * sizeof( q3_dplane_t ) ) );
	Log_Print( "%6i entdata      %7i\n", num_entities, iw3_entdatasize );

	Log_Print( "\n" );

	Log_Print( "%6i nodes        %7i\n"
			   ,iw3_numnodes, (int)( iw3_numnodes * sizeof( q3_dnode_t ) ) );
	Log_Print( "%6i leafs        %7i\n"
			   ,iw3_numleafs, (int)( iw3_numleafs * sizeof( q3_dleaf_t ) ) );
	Log_Print( "%6i leafsurfaces %7i\n"
			   ,iw3_numleafsurfaces, (int)( iw3_numleafsurfaces * sizeof( iw3_dleafsurfaces[0] ) ) );
	Log_Print( "%6i leafbrushes  %7i\n"
			   ,iw3_numleafbrushes, (int)( iw3_numleafbrushes * sizeof( iw3_dleafbrushes[0] ) ) );
	Log_Print( "%6i drawverts   %8i\n"
			   ,iw3_numDrawVerts, (int)( iw3_numDrawVerts * sizeof( iw3_drawVerts[0] ) ) );
	Log_Print( "%6i drawindexes  %7i\n"
			   ,iw3_numDrawIndexes, (int)( iw3_numDrawIndexes * sizeof( iw3_drawIndexes[0] ) ) );
	Log_Print( "%6i drawsurfaces %7i\n"
			   ,iw3_numDrawSurfaces, (int)( iw3_numDrawSurfaces * sizeof( iw3_drawSurfaces[0] ) ) );

	Log_Print( "%6i lightmaps    %7i\n"
			   ,iw3_numLightBytes / ( LIGHTMAP_WIDTH * LIGHTMAP_HEIGHT * 3 ), iw3_numLightBytes );
	Log_Print( "       visibility   %7i\n"
			   , iw3_numVisBytes );
}

/*
================
Q3_ParseEntities

Parses the q3_dentdata string into entities
================
*/
void IW3_ParseEntities( void ) {
	script_t *script;

	num_entities = 0;
	script = LoadScriptMemory( iw3_dentdata, iw3_entdatasize, "*Quake3 bsp file" );
	SetScriptFlags( script, SCFL_NOSTRINGWHITESPACES |
					SCFL_NOSTRINGESCAPECHARS );

	while ( ParseEntity( script ) )
	{
	} //end while

	FreeScript( script );
} //end of the function Q3_ParseEntities


/*
================
Q3_UnparseEntities

Generates the q3_dentdata string from all the entities
================
*/
void IW3_UnparseEntities( void ) {
	char *buf, *end;
	epair_t *ep;
	char line[2048];
	int i;

	buf = iw3_dentdata;
	end = buf;
	*end = 0;

	for ( i = 0 ; i < num_entities ; i++ )
	{
		ep = entities[i].epairs;
		if ( !ep ) {
			continue;   // ent got removed

		}
		strcat( end,"{\n" );
		end += 2;

		for ( ep = entities[i].epairs ; ep ; ep = ep->next )
		{
			sprintf( line, "\"%s\" \"%s\"\n", ep->key, ep->value );
			strcat( end, line );
			end += strlen( line );
		}
		strcat( end,"}\n" );
		end += 2;

		if ( end > buf + Q3_MAX_MAP_ENTSTRING ) {
			Error( "Entity text too long" );
		}
	}
	iw3_entdatasize = end - buf + 1;
} //end of the function Q3_UnparseEntities

