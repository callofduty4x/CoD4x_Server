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


#include "q3files.h"
//#include "surfaceflags.h"

typedef struct {
	vec3_t xyz;
	vec3_t normal;
	byte color[4];
	float st[2];
	float lightmap[2];
    vec3_t tangent;
    vec3_t binormal;
} iw3_drawVert_t;

extern int iw3_nummodels;
extern q3_dmodel_t     *iw3_dmodels; //[Q3_MAX_MAP_MODELS];

extern int iw3_numShaders;
extern q3_dshader_t    *iw3_dshaders; //[Q3_MAX_MAP_SHADERS];

extern int iw3_entdatasize;
extern char            *iw3_dentdata; //[Q3_MAX_MAP_ENTSTRING];

extern int iw3_numleafs;
extern q3_dleaf_t      *iw3_dleafs; //[Q3_MAX_MAP_LEAFS];

extern int iw3_numplanes;
extern q3_dplane_t     *iw3_dplanes; //[Q3_MAX_MAP_PLANES];

extern int iw3_numnodes;
extern q3_dnode_t      *iw3_dnodes; //[Q3_MAX_MAP_NODES];

extern int iw3_numleafsurfaces;
extern int             *iw3_dleafsurfaces; //[Q3_MAX_MAP_LEAFFACES];

extern int iw3_numleafbrushes;
extern int             *iw3_dleafbrushes; //[Q3_MAX_MAP_LEAFBRUSHES];

extern int iw3_numbrushes;
extern q3_dbrush_t     *iw3_dbrushes; //[Q3_MAX_MAP_BRUSHES];

extern int iw3_numbrushsides;
extern q3_dbrushside_t *iw3_dbrushsides; //[IW3_MAX_MAP_BRUSHSIDES];

extern int iw3_numLightBytes;
extern byte            *iw3_lightBytes; //[Q3_MAX_MAP_LIGHTING];

extern int iw3_numGridPoints;
extern byte            *iw3_gridData; //[Q3_MAX_MAP_LIGHTGRID];

extern int iw3_numVisBytes;
extern byte            *iw3_visBytes; //[Q3_MAX_MAP_VISIBILITY];

extern int iw3_numDrawVerts;
extern iw3_drawVert_t   *iw3_drawVerts; //[Q3_MAX_MAP_DRAW_VERTS];

extern int iw3_numDrawIndexes;
extern uint16_t         *iw3_drawIndexes; //[Q3_MAX_MAP_DRAW_INDEXES];

extern int iw3_numDrawSurfaces;
extern q3_dsurface_t   *iw3_drawSurfaces; //[Q3_MAX_MAP_DRAW_SURFS];

extern int iw3_numFogs;
extern q3_dfog_t       *iw3_dfogs; //[Q3_MAX_MAP_FOGS];

extern char iw3_dbrushsidetextured[IW3_MAX_MAP_BRUSHSIDES];


void IW3_LoadFastfile( struct quakefile_s *qf );
void IW3_FreeMaxBSP( void );
void IW3_ParseEntities( void );
