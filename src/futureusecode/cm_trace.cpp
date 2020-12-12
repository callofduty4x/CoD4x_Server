#include "cm_local.h"
#include "cm_public.h"
#include "sys_thread.h"

col_context_t::col_context_t( )
{
  mask = 0;
  prims = 0;
  nprims = 0;
  ignoreEntParams = 0;
  passEntityNum1 = 1023;
  passEntityNum0 = 1023;
  passEntityNum1 = 1023;
  locational = 0;
  staticmodels = 0;
  priorityMap = 0;
  collide_entity_func = 0;
}

col_context_t::col_context_t(int _mask)
{
  mask = _mask;
  prims = 0;
  nprims = 0;
  ignoreEntParams = 0;
  passEntityNum1 = 1023;
  passEntityNum0 = 1023;
  locational = 0;
  staticmodels = 0;
  priorityMap = 0;
  collide_entity_func = 0;
}

void col_context_t::init_locational(int ent0)
{
  passEntityNum0 = ent0;
  locational = 1;
  staticmodels = 1;
}

void col_context_t::init_locational(int ent0, int ent1)
{
  passEntityNum0 = ent0;
  passEntityNum1 = ent1;
  locational = 1;
  staticmodels = 1;
}


int16_t Trace_GetEntityHitId(trace_t *trace)
{
  assert(trace != NULL);

  if ( trace->hitType != TRACE_HITTYPE_DYNENT_MODEL && trace->hitType != TRACE_HITTYPE_DYNENT_BRUSH )
  {
    if ( trace->hitType == TRACE_HITTYPE_GLASS )
    {
      return 1022;
    }
	
	if ( trace->hitType == TRACE_HITTYPE_ENTITY )
    {
        return trace->hitId;
    }
    return 1023;
  }
  return 1022;

}


int16_t Trace_GetDynEntHitId(trace_t *trace, DynEntityDrawType *drawType)
{
  int16_t dynEntId;

  assert(trace != NULL);
  assert(drawType != NULL);

  dynEntId = -1;
  if ( trace->hitType == TRACE_HITTYPE_DYNENT_MODEL )
  {
    *drawType = DYNENT_DRAW_MODEL;
    dynEntId = trace->hitId;
    assertx((uint16_t)dynEntId < (unsigned int)cm.dynEntCount[0], "dynEntId doesn't index cm.dynEntCount[DynEntGetClientCollType( DYNENT_DRAW_MODEL )]\n\t%i not in [0, %i)", (uint16_t)dynEntId, cm.dynEntCount[0]);
  }
  if ( trace->hitType == TRACE_HITTYPE_DYNENT_BRUSH )
  {
    *drawType = DYNENT_DRAW_BRUSH;
    dynEntId = trace->hitId;
    assertx((uint16_t)dynEntId < (unsigned int)cm.dynEntCount[1], "dynEntId doesn't index cm.dynEntCount[DynEntGetClientCollType( DYNENT_DRAW_BRUSH )]\n\t%i not in [0, %i)", (uint16_t)dynEntId, cm.dynEntCount[1]);
  }
  return dynEntId;
}

int Trace_GetGlassHitId(trace_t *trace)
{
  int id;

  assert(trace != NULL);
   
  id = -1;
  if ( trace->hitType == TRACE_HITTYPE_GLASS )
  {
    id = trace->hitId;
  }
  return id;
}


clipMap_t *__cdecl CM_GetClipMap()
{
  return &cm;
}


void CM_GetBox(cbrush_t **box_brush, cmodel_t **box_model, PhysGeomList ***geoms)
{
  TraceThreadInfo *value;

  value = (TraceThreadInfo *)Sys_GetValue(3);
  
  assert(value != NULL);
  assertx(value->box_model->leaf.brushContents == ~0, "(value->box_model->leaf.brushContents) = %i", value->box_model->leaf.brushContents);
  assertx(value->box_model->leaf.terrainContents == 0, "(value->box_model->leaf.terrainContents) = %i", value->box_model->leaf.terrainContents);

  *box_brush = value->box_brush;
  *box_model = value->box_model;
  if ( geoms )
  {
    *geoms = value->geoms;
  }
}


clipHandle_t CM_TempBoxModel(const float *mins, const float *maxs, int contents)
{
  cbrush_t *box_brush;
  cmodel_t *box_model;

  CM_GetBox(&box_brush, &box_model, 0);
  VectorCopy(mins, box_model->mins);
  VectorCopy(maxs, box_model->maxs);
  VectorCopy(mins, box_brush->mins);
  VectorCopy(maxs, box_brush->maxs);
  box_brush->contents = contents;

  return CAPSULE_MODEL_HANDLE;
}


int CM_TempBrushModel(PhysGeomList *geoms)
{
  cbrush_t *box_brush;
  cmodel_t *box_model;
  PhysGeomList **geoms_model;

  CM_GetBox(&box_brush, &box_model, &geoms_model);
  *geoms_model = geoms;
  return TEMP_BRUSH_MODEL_HANDLE;
}


bool CM_ClipHandleIsValid(unsigned int handle)
{
  if ( handle >= cm.numSubModels )
  {
    if ( handle == CAPSULE_MODEL_HANDLE )
    {
      return 1;
    }
    return handle == TEMP_BRUSH_MODEL_HANDLE;
  }
  return 1;
}


cmodel_t* CM_ClipHandleToModel( clipHandle_t  handle)
{
  cbrush_t *box_brush;
  cmodel_t *box_model;
  
  if ( handle < 0 ) {
	Com_Error( ERR_DROP, "CM_ClipHandleToModel: bad handle %i", handle );
  }
  if ( handle >= cm.numSubModels )
  {
    assertx(handle == CAPSULE_MODEL_HANDLE || handle == TEMP_BRUSH_MODEL_HANDLE, "handle: %d, cm.numSubModels: %d", handle, cm.numSubModels);

    CM_GetBox(&box_brush, &box_model, 0);
    return box_model;
  }
  return &cm.cmodels[handle];
}


int CM_ContentsOfModel(unsigned int handle)
{
  cmodel_t *c;

  c = CM_ClipHandleToModel(handle);
  return c->leaf.terrainContents | c->leaf.brushContents;
}



void CM_PositionTest(traceWork_t *tw, trace_t *trace, col_context_t *context)
{
  leafList_s ll;
  uint16_t leafs[1024];
  int j;
  cbrush_t *brush;
  int i;
  col_prim_t *prim;

  if ( context->nprims )
  {
    prim = context->prims;
    for(i = 0, prim = context->prims; i < context->nprims && !trace->allsolid; ++i, ++prim )
    {
      if ( prim->type )
      {
		assert(prim->type == COL_BRUSH);

        brush = prim->brush;
        if ( tw->contents & brush->contents )
        {
          CM_TestBoxInBrush(tw, brush, trace);
        }
      }
      else
      {
        CM_MeshTest(tw, prim->tree, trace);
      }
    }
	return;
  }
  
  if ( !trace->allsolid )
  {
	VectorSubstract(tw->extents.start, tw->size, ll.bounds[0]);
	VectorSubstract(tw->extents.start, tw->size, ll.bounds[1]);
    for ( j = 0; j < 3; ++j )
    {
      ll.bounds[0][j] = ll.bounds[0][j] - 1.0;
      ll.bounds[1][j] = ll.bounds[1][j] + 1.0;
    }
    ll.count = 0;
    ll.maxcount = 1024;
    ll.list = leafs;
    ll.lastLeaf = 0;
    ll.overflowed = 0;
    CM_BoxLeafnums_r(&ll, 0);
    if ( ll.count )
    {
      for ( j = 0; j < ll.count && !trace->allsolid; ++j )
      {
        CM_TestInLeaf(tw, &cm.leafs[leafs[j]], trace);
      }
    }
  }
}

/*
================
CM_TraceThroughLeaf
================
*/

void CM_TraceThroughLeaf(traceWork_t *tw, cLeaf_t *leaf, trace_t *trace)
{
	int i;

	if(trace->fraction == 0.0)
	{
		return;
	}
	
	if((leaf->brushContents & tw->contents) && CM_TraceThroughLeafBrushNode(leaf, tw, trace))
	{
		return;
	}
  
    if ( !(leaf->terrainContents & tw->contents) )
	{
		return;
	}
	
	for(i = 0; i < leaf->collAabbCount && trace->fraction != 0.0; ++i)
	{
        CM_TraceThroughAabbTree(tw, &cm.aabbTrees[i + leaf->firstCollAabbIndex], trace);
	}
}




void CM_SetAxialCullOnly(traceWork_t *tw)
{
  vec3_t d;
  float c;
  float s;

  VectorSubstract(tw->bounds[1], tw->bounds[0], d);
  
  s = tw->size[1] * tw->size[0] * tw->size[2];
  c = s * 16.0 * tw->deltaLen;
  tw->axialCullOnly = d[0] * d[1] * d[2] < c;
}

void CM_BoxTrace( trace_t *results, const vec3_t start, const vec3_t end, const vec3_t mins, const vec3_t maxs,
#ifndef BLACKOPS
				clipHandle_t model,
#endif
				int brushmask,
#ifdef BLACKOPS
				col_context_t *context
#endif
){

    memset(results, 0, sizeof(trace_t));
    results->fraction = 1.0;
#ifdef BLACKOPS
	results->boneIndex = 254;
	clipHandle_t model = 0;
#endif
	CM_Trace( results, start, end, mins, maxs, model, brushmask
#ifdef BLACKOPS
	, context
#endif
	);
}


void CM_TraceCapsuleThroughCapsule(traceWork_t *tw, trace_t *trace)
{
	vec3_t top, bottom, starttop, startbottom, endtop, endbottom;

	// test trace bounds vs. capsule bounds
	if ( tw->bounds[0][0] > threadInfo.box_model->maxs[0] + RADIUS_EPSILON
		 || tw->bounds[0][1] > threadInfo.box_model->maxs[1] + RADIUS_EPSILON
		 || tw->bounds[0][2] > threadInfo.box_model->maxs[2] + RADIUS_EPSILON
		 || tw->bounds[1][0] < threadInfo.box_model->mins[0] - RADIUS_EPSILON
		 || tw->bounds[1][1] < threadInfo.box_model->mins[1] - RADIUS_EPSILON
		 || tw->bounds[1][2] < threadInfo.box_model->mins[2] - RADIUS_EPSILON
		 ) {
		return;
	}
	
	// top origin and bottom origin of each sphere at start and end of trace
	VectorCopy(tw->extents.start, starttop);
	starttop[2] += tw->offsetZ;

	VectorCopy(tw->extents.start, startbottom);
	startbottom[2] -= tw->offsetZ;

	VectorCopy(tw->extents.end, endtop);
	endtop[2] += tw->offsetZ;

	VectorCopy(tw->extents.end, endbottom);
	endbottom[2] -= tw->offsetZ;
	
	for ( i = 0; i < 3; ++i )
    {
		offset[i] = (tw->threadInfo.box_model->mins[i] + tw->threadInfo.box_model->maxs[i]) * 0.5;
	}
	halfwidth = tw->threadInfo.box_model->maxs[0] - offset[0];
	halfheight = tw->threadInfo.box_model->maxs[2] - offset[2];
	
	radius = ( halfwidth > halfheight ) ? halfheight : halfwidth;
	offs = halfheight - radius;
		
	VectorCopy( offset, top );
	top[2] += offs;
	VectorCopy( offset, bottom );
	bottom[2] -= offs;

	if ( top[2] >= startbottom[2] && bottom[2] > starttop[2])
	{
		if ( !CM_TraceSphereThroughSphere(tw, starttop, endtop, bottom, radius, result) || tw->delta[2] <= 0.0 )
			return;
	}
	else if (top[2] < startbottom[2] && (!CM_TraceSphereThroughSphere(tw, startbottom, endbottom, top, radius, result) || tw->delta[2] >= 0.0 ))
	{
		return;
	}

	if ( CM_TraceCylinderThroughCylinder(tw, offset, offs, radius, result) )
	{
		if ( top[2] >= endbottom[2] )
		{
		  if ( bottom[2] > endtop[2] && starttop[2] >= bottom[2] )
		  {
			CM_TraceSphereThroughSphere(tw, starttop, endtop, bottom, radius, result);
		  }
		}
		else if ( startbottom[2] <= top[2] )
		{
		  CM_TraceSphereThroughSphere(tw, startbottom, endbottom, top, radius, result);
		}
	}	
	
}


void CM_TransformedBoxTraceRotated(trace_t *results, const float *start, const float *end, const float *mins, const float *maxs, clipHandle_t model, int brushmask, const float *origin, const float (*matrix)[3])
{
  col_context_t context;
  vec3_t transpose[3];
  float halfheight;
  vec3_t symetricSize[2];
  vec3_t offset;
  vec3_t end_l;
  vec3_t start_l;
  int i;
  float oldFraction;

  col_context_t::col_context_t(&context);
  
  assert(mins != NULL);
  assert(max != NULL);

  for ( i = 0; i < 3; ++i )
  {
    offset[i] = (mins[i] + maxs[i]) * 0.5;
    symetricSize[0][i] = mins[i] - offset[i];
    symetricSize[1][i] = maxs[i] - offset[i];
    start_l[i] = start[i] + offset[i];
    end_l[i] = end[i] + offset[i];
  }
  VectorSubstract(start_l, origin, start_l);
  VectorSubstract(end_l, origin, end_l);
  halfheight = symetricSize[1][2];
  RotatePoint(start_l, matrix);
  RotatePoint(end_l, matrix);
  oldFraction = results->fraction;
  CM_Trace(results, start_l, end_l, symetricSize[0], symetricSize[1], model, brushmask, &context);
  if ( oldFraction > results->fraction )
  {
    TransposeMatrix(matrix, transpose);
    RotatePoint(results->normal, transpose);
  }
}

void TransposeMatrix(const float (*matrix)[3], float (*transpose)[3])
{
  int j;
  int i;

  for ( i = 0; i < 3; ++i )
  {
    for ( j = 0; j < 3; ++j )
    {
      *(&(*transpose)[3 * i] + j) = *(&(*matrix)[3 * j] + i);
    }
  }
}

void RotatePoint(float *point, const float (*mat)[3])
{
  vec3_t tvec;

  VectorCopy(point, tvec);

  point[0] = (*mat)[0] * tvec[0] + (*mat)[1] * tvec[1] + (*mat)[2] * tvec[2];
  point[1] = (*mat)[3] * tvec[0] + (*mat)[4] * tvec[1] + (*mat)[5] * tvec[2];
  point[2] = (*mat)[6] * tvec[0] + (*mat)[7] * tvec[1] + (*mat)[8] * tvec[2];
}

void CM_TransformedBoxTrace(trace_t *results, const float *start, const float *end, const float *mins, const float *maxs, unsigned int model, int brushmask, const float *origin, const float *angles)
{
  vec3_t matrix[3];
  float halfwidth;
  col_context_t context;
  float halfheight;
  vec3_t symetricSize[2];
  vec3_t offset;
  vec3_t end_l;
  vec3_t start_l;
  int i;
  float oldFraction;

  col_context_t::col_context_t(&context);
  assert(mins != NULL);
  assert(maxs != NULL);

  if ( 0.0 != *angles || 0.0 != angles[1] || 0.0 != angles[2] )
  {
    AnglesToAxis(angles, matrix);
    CM_TransformedBoxTraceRotated(results, start, end, mins, maxs, model, brushmask, origin, matrix);
  }
  else
  {
    for ( i = 0; i < 3; ++i )
    {
      offset[i] = (mins[i] + maxs[i]) * 0.5;
      symetricSize[0][i] = mins[i] - offset[i];
      symetricSize[1][i] = maxs[i] - offset[i];
      start_l[i] = start[i] + offset[i];
      end_l[i] = end[i] + offset[i];
    }
	VectorSubstract(start_l, origin, start_l);
	VectorSubstract(end_l, origin, end_l);	
    halfwidth = symetricSize[1][0];
    halfheight = symetricSize[1][2];
    oldFraction = results->fraction;
    CM_Trace(results, start_l, end_l, symetricSize[0], symetricSize[1], model, brushmask, &context);
  }
}

void CM_TransformedBoxTraceExternal(trace_t *results, const float *start, const float *end, const float *mins, const float *maxs, unsigned int model, int brushmask, const float *origin, const float *angles)
{
  memset(results, 0, sizeof(trace_t));
  results->fraction = 0.0;
  CM_TransformedBoxTrace(results, start, end, mins, maxs, model, brushmask, origin, angles);
}



int CM_SightTraceThroughBrush(traceWork_t *tw, cbrush_t *brush, int brushNum, trace_t *trace)
{

  float d1;
  cbrushside_t *side;
  int j;
  cplane_s *plane;
  float enterFrac;
  float delta;
  float frac;
  float dist;
  float sign;
  float d2;
  float *bounds;
  int index;
  float leaveFrac;
  int i;

  side = 0;
  
  assert(!IS_NAN((tw->extents.start)[0]) && !IS_NAN((tw->extents.start)[1]) && !IS_NAN((tw->extents.start)[2]));
  assert(!IS_NAN((tw->extents.end)[0]) && !IS_NAN((tw->extents.end)[1]) && !IS_NAN((tw->extents.end)[2]));

  enterFrac = 0.0;
  leaveFrac = 1.0;
  sign = -1.0;
  bounds = brush->mins;
  for ( index = 0; ; index = 1 )
  {
	assert(!IS_NAN((bounds)[0]) && !IS_NAN((bounds)[1]) && !IS_NAN((bounds)[2]));
	assert(!IS_NAN((tw->radiusOffset)[0]) && !IS_NAN((tw->radiusOffset)[1]) && !IS_NAN((tw->radiusOffset)[2]));

    for ( j = 0; j < 3; ++j )
    {
      d1 = (tw->extents.start[j] - bounds[j]) * sign - tw->radiusOffset[j];
      d2 = (tw->extents.end[j] - bounds[j]) * sign - tw->radiusOffset[j];
	  
	  assert(!IS_NAN(d1));
	  assert(!IS_NAN(d2));

      if ( d1 <= 0.0 )
      {
        if ( d2 > 0.0 )
        {
          frac = (d1 * tw->extents.invDelta[j]) * sign;
          if ( enterFrac >= frac )
          {
            return 0;
          }
          if ( frac - leaveFrac < 0.0 )
          {
            leaveFrac = (d1 * tw->extents.invDelta[j]) * sign;
          }
        }
      }
      else
      {
        if ( d2 > 0.0 )
        {
          return 0;
        }
        frac = d1 * tw->extents.invDelta[j] * sign;
        if ( frac >= leaveFrac )
        {
          return 0;
        }
        if ( enterFrac - frac < 0.0 )
        {
          enterFrac = d1 * tw->extents.invDelta[j] * sign;
        }
      }
    }
    if ( index )
    {
      break;
    }
    sign = 1.0;
    bounds = brush->maxs;
  }
  i = brush->numsides;
  if ( i )
  {
    side = brush->sides;
  }

  assert(i >= 0);

  while ( i )
  {
    plane = side->plane;
	assert(!IS_NAN(plane->dist));
	assert(!IS_NAN(tw->radius));
	assert(!IS_NAN((plane->normal)[0]) && !IS_NAN((plane->normal)[1]) && !IS_NAN((plane->normal)[2]));
	assert(!IS_NAN(tw->offsetZ));

    dist = plane->dist + tw->radius + fabs(plane->normal[2] * tw->offsetZ);
    
	assert(!IS_NAN(dist));

    d1 = DotProduct(tw->extents.start, plane->normal) - dist;
    d2 = DotProduct(tw->extents.end, plane->normal) - dist;
	
	assert(!IS_NAN(d1));
	assert(!IS_NAN(d2));

    if ( d1 <= 0.0 )
    {
      if ( d2 > 0.0 )
      {
        delta = d1 - d2;
		assert(delta < 0);

        if ( d1 > leaveFrac * delta )
        {
          leaveFrac = d1 / delta;
          if ( enterFrac >= leaveFrac )
          {
            return 0;
          }
        }
      }
    }
    else
    {
      delta = d1 - d2;
	  assert(!IS_NAN(delta));
      if ( d2 > 0.0 )
      {
        return 0;
      }

	  assert(delta > 0);

      if ( d1 > enterFrac * delta )
      {
        enterFrac = d1 / delta;
        if ( enterFrac >= leaveFrac )
        {
          return 0;
        }
      }
    }
    --i;
    ++side;
  }
  trace->cflags = brush->contents;
  trace->fraction = enterFrac;
  trace->sflags = 0;
  return brushNum + 1;
}


int CM_SightTracePointThroughBrush(TraceExtents *extents, cbrush_t *brush)
{
  float d1;
  cbrushside_t *side;
  int j;
  cplane_s *plane;
  float enterFrac;
  float delta;
  float frac;
  float dist;
  float sign;
  float d2;
  float *bounds;
  int index;
  float leaveFrac;
  int i;

  side = 0;
  
  assert(!IS_NAN((tw->extents.start)[0]) && !IS_NAN((tw->extents.start)[1]) && !IS_NAN((tw->extents.start)[2]));
  assert(!IS_NAN((tw->extents.end)[0]) && !IS_NAN((tw->extents.end)[1]) && !IS_NAN((tw->extents.end)[2]));

  enterFrac = 0.0;
  leaveFrac = 1.0;
  sign = -1.0;
  bounds = brush->mins;
  for ( index = 0; ; index = 1 )
  {
	assert(!IS_NAN((bounds)[0]) && !IS_NAN((bounds)[1]) && !IS_NAN((bounds)[2]));

    for ( j = 0; j < 3; ++j )
    {
      d1 = (extents->start[j] - bounds[j]) * sign;
      d2 = (extents->end[j] - bounds[j]) * sign;
	  
	  assert(!IS_NAN(d1));
	  assert(!IS_NAN(d2));

      if ( d1 <= 0.0 )
      {
        if ( d2 > 0.0 )
        {
          frac = (d1 * tw->extents.invDelta[j]) * sign;
          if ( enterFrac >= frac )
          {
            return 0;
          }
          if ( frac - leaveFrac < 0.0 )
          {
            leaveFrac = (d1 * tw->extents.invDelta[j]) * sign;
          }
        }
      }
      else
      {
        if ( d2 > 0.0 )
        {
          return 0;
        }
        frac = d1 * tw->extents.invDelta[j] * sign;
        if ( frac >= leaveFrac )
        {
          return 0;
        }
        if ( enterFrac - frac < 0.0 )
        {
          enterFrac = d1 * tw->extents.invDelta[j] * sign;
        }
      }
    }
    if ( index )
    {
      break;
    }
    sign = 1.0;
    bounds = brush->maxs;
  }
  i = brush->numsides;
  if ( i )
  {
    side = brush->sides;
  }
  
  assert(i >= 0);

  while ( i )
  {
	plane = side->plane;
	assert(!IS_NAN(plane->dist));
	assert(!IS_NAN((plane->normal)[0]) && !IS_NAN((plane->normal)[1]) && !IS_NAN((plane->normal)[2]));

    dist = plane->dist;
    
	assert(!IS_NAN(dist));

    d1 = DotProduct(tw->extents.start, plane->normal) - dist;
    d2 = DotProduct(tw->extents.end, plane->normal) - dist;
	

	assert(!IS_NAN(d1));
	assert(!IS_NAN(d2));

    if ( d1 <= 0.0 )
    {
      if ( d2 > 0.0 )
      {
        delta = d1 - d2;
		assert(delta < 0);

        if ( d1 > leaveFrac * delta )
        {
          leaveFrac = d1 / delta;
          if ( enterFrac >= leaveFrac )
          {
            return 0;
          }
        }
      }
    }
    else
    {
      delta = d1 - d2;
	  assert(!IS_NAN(delta));
      if ( d2 > 0.0 )
      {
        return 0;
      }

	  assert(delta > 0);

      if ( d1 > enterFrac * delta )
      {
        enterFrac = d1 / delta;
        if ( enterFrac >= leaveFrac )
        {
          return 0;
        }
      }
    }
    --i;
    ++side;
  }
  return 1;
}


int CM_SightTraceThroughTree(traceWork_t *tw, int num, const float *p1_, const float *p2, trace_t *trace)
{

  float v7;
  float v8;
  cNode_t *node;
  int side;
  float diff;
  cplane_s *plane;
  float t1;
  float frac;
  vec3_t p1;
  float offset;
  float t2;
  float frac2;
  float absDiff;
  float invDist;
  int hitNum;
  vec3_t mid;

  VectorCopy(p1_, p1);

  while ( 1 )
  {
    while ( 1 )
    {
      while ( 1 )
      {
        if ( num < 0 )
        {
          return CM_SightTraceThroughLeaf(tw, &cm.leafs[-1 - num], trace);
        }
        node = &cm.nodes[num];
        plane = cm.nodes[num].plane;
        if ( plane->type >= 3 )
        {
          t1 = DotProduct(plane->normal, p1) - plane->dist;
          t2 = DotProduct(plane->normal, p2) - plane->dist;
          offset = tw->isPoint ? 0.125 : tw->boundingRadius + 0.125;
        }
        else
        {
          t1 = p1[plane->type] - plane->dist;
          t2 = p2[plane->type] - plane->dist;
          offset = tw->size[plane->type] + 0.125;
        }
        if ( min(t2, t1) < offset )
        {
          break;
        }
        num = node->children[0];
      }
      if ( -offset < max(t1, t2) )
      {
        break;
      }
      num = node->children[1];
    }
    diff = t2 - t1;
    absDiff = fabs(diff);

	//if( absDiff <= TRACE_EPSILON)
    if ( absDiff <= 0.00000047683716 )
    {
      side = 0;
      frac = 1.0;
      frac2 = 0.0;
    }
    else
    {
      if ( diff < 0.0 )
      {
        v8 = t1;
      }
      else
      {
        v8 = -t1;
      }
      invDist = 1.0 / absDiff;
      frac2 = (v8 - offset) * (1.0 / absDiff);
      frac = (v8 + offset) * (1.0 / absDiff);
      side = diff >= 0.0;
    }
	assert(frac >= 0);

    v7 = max(1.0, frac);
    mid[0] = (p2[0] - p1[0]) * v7 + p1[0];
    mid[1] = (p2[1] - p1[1]) * v7 + p1[1];
    mid[2] = (p2[2] - p1[2]) * v7 + p1[2];
    hitNum = CM_SightTraceThroughTree(tw, node->children[side], p1, mid, trace);
    if ( hitNum )
    {
      break;
    }
	assertx(frac2 <= 1.0f, "(frac2) = %g", frac2);
    
	frac2 = max(frac2, 0.0);


    p1[0] = (p2[0] - p1[0]) * frac2 + p1[0];
    p1[1] = (p2[1] - p1[1]) * frac2 + p1[1];
    p1[2] = (p2[2] - p1[2]) * frac2 + p1[2];
    num = node->children[side ^ 1];
  }
  return hitNum;
}


int CM_SightTraceThroughLeaf(traceWork_t *tw, cLeaf_s *leaf, trace_t *trace)
{
	int result;
	int hitnum;
	int k;

	if ( tw->contents & leaf->brushContents && (hitnum = CM_SightTraceThroughLeafBrushNode(tw, leaf, trace)) != 0 )
	{
		return hitnum;
	}

	assert(trace->fraction == 1.0f);

    if ( tw->contents & leaf->terrainContents )
    {
      for ( k = 0; k < leaf->collAabbCount; ++k )
      {
        __builtin_prefetch(&cm.aabbTrees[k + leaf->firstCollAabbIndex]);
        CM_SightTraceThroughAabbTree(tw, &cm.aabbTrees[k + leaf->firstCollAabbIndex], trace);
        if ( trace->fraction != 1.0 )
        {
          return leaf->firstCollAabbIndex + k + cm.numBrushes + 1;
        }
      }
    }
    return 0;
}

int CM_SightTraceThroughLeafBrushNode(traceWork_t *tw, cLeaf_s *leaf, trace_t *trace)
{
  vec3_t absmin;
  cLeafBrushNode_s *leafNode;
  vec3_t absmax;

  assert(leaf->leafBrushNode != NULL);

  VectorSubstract(leaf->mins, tw->size, absmin);
  VectorAdd(leaf->maxs, tw->size, absmax);

  if ( intersect_extents_aabb(&tw->extents, absmin, absmax, 1.0) )
  {
    leafNode = &cm.leafbrushNodes[leaf->leafBrushNode];
    return CM_SightTraceThroughLeafBrushNode_r(tw, leafNode, tw->extents.start, tw->extents.end, trace);
  }
  return 0;
}

int CM_SightTraceThroughLeafBrushNode_r(traceWork_t *tw, cLeafBrushNode_s *remoteNode, const float *p1_, const float *p2, trace_t *trace)
{
  float v8;
  uint16_t *brushes;
  int side;
  float diff;
  float t1;
  float frac;
  int k;
  vec3_t p1;
  float offset;
  float tmax;
  float t2;
  float frac2;
  float absDiff;
  float invDist; 
  int hitNum;
  float tmin;
  int brushnum;
  vec3_t mid;

  assert(remoteNode != NULL);

  VectorCopy(p1_, p1);

  while ( 1 )
  {
    if ( !(tw->contents & remoteNode->contents) )
    {
      return 0;
    }
    if ( remoteNode->leafBrushCount )
    {
		if ( remoteNode->leafBrushCount <= 0 )
		{
			hitNum = CM_SightTraceThroughLeafBrushNode_r(tw, remoteNode + 1, p1, p2, trace);
			if ( hitNum )
			{
			  return hitNum;
			}
		}else{
			break;
		}
    }
    t1 = p1[remoteNode->axis] - remoteNode->data.children.dist;
    t2 = p2[remoteNode->axis] - remoteNode->data.children.dist;
    offset = tw->size[remoteNode->axis] + 0.125 - remoteNode->data.children.range;

    tmax = max(t1, t2);
    tmin = min(t1, t2);
    
	if ( tmin < offset )
    {
      if ( -offset < tmax )
      {
        diff = t2 - t1;
        absDiff = abs(diff);
		//if( absDiff <= TRACE_EPSILON)
        if ( absDiff <= 0.00000047683716 )
        {
          side = 0;
          frac = 1.0;
          frac2 = 0.0;
        }
        else
        {
          if ( diff < 0.0 )
          {
            v8 = t1;
          }
          else
          {
            v8 = -t1;
          }
          invDist = 1.0 / absDiff;
          frac2 = (v8 - offset) * (1.0 / absDiff);
          frac = (v8 + offset) * (1.0 / absDiff);
          side = diff >= 0.0;
        }
		assert(frac >= 0);
		
        frac = min(frac, 1.0);
        mid[0] = (p2[0] - p1[0]) * frac + p1[0];
        mid[1] = (p2[1] - p1[1]) * frac + p1[1];
        mid[2] = (p2[2] - p1[2]) * frac + p1[2];
        hitNum = CM_SightTraceThroughLeafBrushNode_r(tw, &remoteNode[remoteNode->data.children.childOffset[side]], p1, mid, trace);
        if ( hitNum )
        {
          return hitNum;
        }
		
		assertx(frac2 <= 1.0001f, "(frac2) = %g", frac2);

        frac2 = max(frac2, 0.0);
 
		p1[0] = (p2[0] - p1[0]) * frac2 + p1[0];
        p1[1] = (p2[1] - p1[1]) * frac2 + p1[1];
        p1[2] = (p2[2] - p1[2]) * frac2 + p1[2];
        remoteNode += remoteNode->data.children.childOffset[1 - side];
      }
      else
      {
        remoteNode += remoteNode->data.children.childOffset[1];
      }
    }
    else
    {
      if ( -offset >= tmax )
      {
        return 0;
      }
      remoteNode += remoteNode->data.children.childOffset[0];
    }
  }
  brushes = remoteNode->data.leaf.brushes;
  for ( k = 0; k < remoteNode->leafBrushCount; ++k )
  {
    brushnum = brushes[k];
    if ( tw->contents & cm.brushes[brushnum].contents )
    {
      hitNum = CM_SightTraceThroughBrush(tw, &cm.brushes[brushnum], brushnum, trace);
      if ( hitNum )
      {
        return hitNum;
      }
    }
  }
  return 0;
}

int CM_BoxSightTrace(int oldHitNum, const float *start, const float *end, const float *mins, const float *maxs, unsigned int model, int brushmask)
{
  vec3_t dir;
  cmodel_t *cmod;
  traceWork_t tw;
  vec3_t offset;
  trace_t trace;
  vec3_t hitPos; 
  int i;
  int hitNum; 
  int oldHitNuma; 

  traceWork_t::traceWork_t(&tw);
  
  VectorClear(trace.normal);

  assert(cm.numNodes != 0);
  assert(mins != NULL);
  assert(maxs != NULL); 

  cmod = CM_ClipHandleToModel(model);
  
  trace.fraction = 1.0;
  trace.startsolid = 0;
  trace.allsolid = 0;
  tw.contents = brushmask;
  
  for ( i = 0; i < 3; ++i )
  {
	assert(maxs[i] >= mins[i]);

    offset[i] = (mins[i] + maxs[i]) * 0.5;
    tw.size[i] = maxs[i] - offset[i];
    tw.extents.start[i] = start[i] + offset[i];
    tw.extents.end[i] = end[i] + offset[i];
    tw.midpoint[i] = (tw.extents.start[i] + tw.extents.end[i]) * 0.5;
    tw.delta[i] = tw.extents.end[i] - tw.extents.start[i];
    tw.halfDelta[i] = 0.5 * tw.delta.vec.v[i];
    tw.halfDeltaAbs[i] = fabs(tw.halfDelta[i]);
  }
  CM_CalcTraceExtents(&tw.extents);
  tw.deltaLenSq = VectorLengthSquared(tw.delta);
  tw.deltaLen = fsqrt(tw.deltaLenSq);
  if ( tw.size[0] <= tw.size[2] )
  {
    tw.radius = tw.size[0];
  }
  else
  {
    tw.radius = tw.size[2];
  }
  tw.boundingRadius = Abs(tw.size);
  tw.offsetZ = tw.size[2] - tw.radius;
  for ( i = 0; i < 2; ++i )
  {
    if ( tw.extents.end[i] <= tw.extents.start[i] )
    {
      tw.bounds[0][i] = tw.extents.end[i] - tw.radius;
      tw.bounds[1][i] = tw.extents.start[i] + tw.radius;
    }
    else
    {
      tw.bounds[0][i] = tw.extents.start[i] - tw.radius;
      tw.bounds[1][i] = tw.extents.end[i] + tw.radius;
    }
  }
  assert(tw.offsetZ >= 0);
  if ( tw.extents.end[2] <= tw.extents.start[2] )
  {
    tw.bounds[0][2] = tw.extents.end[2] - tw.offsetZ - tw.radius;
    tw.bounds[1][2] = tw.extents.start[2] + tw.offsetZ + tw.radius;
  }
  else
  {
    tw.bounds[0][2] = tw.extents.start.vec.v[2] - tw.offsetZ - tw.radius;
    tw.bounds[1][2] = tw.extents.end.vec.v[2] + tw.offsetZ + tw.radius;
  }
  CM_SetAxialCullOnly(&tw);
  assert(tw.size[0] >= 0);
  assert(tw.size[1] >= 0);
  assert(tw.size[2] >= 0);

  if ( tw.size[0] + tw.size[1] + tw.size[2] != 0.0 )
  {
    tw.isPoint = 0;
  }
  else
  {
    tw.isPoint = 1;
  }
  tw.doublesided = 0;

  assert(tw.offsetZ >= 0);

  tw.radiusOffset[0] = tw.radius;
  tw.radiusOffset[1] = tw.radius;
  tw.radiusOffset[2] = tw.radius + tw.offsetZ;
  CM_GetTraceThreadInfo(&tw.threadInfo);
  if ( model )
  {
    if ( model == CAPSULE_MODEL_HANDLE )
    {
      if ( tw.contents & tw.threadInfo.box_brush->contents )
      {
        hitNum = CM_SightTraceCapsuleThroughCapsule(&tw, &trace);
      }
      else
      {
        hitNum = 0;
      }
    }
    else if ( model == TEMP_BRUSH_MODEL_HANDLE )
    {
      hitNum = CM_SightTraceThroughTempBrush(&tw, &trace);
    }
    else
    {
      hitNum = CM_SightTraceThroughLeaf(&tw, &cmod->leaf, &trace);
    }
  }
  else
  {
    hitNum = 0;
    if ( oldHitNum > 0 )
    {
      oldHitNuma = oldHitNum - 1;
      if ( oldHitNuma < cm.numBrushes )
      {
        hitNum = CM_SightTraceThroughBrush(&tw, &cm.brushes[oldHitNuma], oldHitNuma, &trace);
      }
    }
    if ( !hitNum )
    {
      hitNum = CM_SightTraceThroughTree(&tw, 0, tw.extents.start, tw.extents.end, &trace);
    }
  }
  VectorSubstract(end, start, dir);
  VectorMA(start, trace.fraction, dir, hitPos);

  return hitNum;
}

int CM_SightTraceThroughTempBrush(traceWork_t *tw, trace_t *trace)
{
  cbrush_t **info;
  unsigned int i;
  PhysGeomList *geoms;

  geoms = *tw->threadInfo.geoms;
  for ( i = 0; i < geoms->count; ++i )
  {
    info = &geoms->geoms[i].brush;
    if ( *info && tw->contents & (*info)->contents && CM_SightTraceThroughBrush(tw, *info, 1, trace) )
    {
      return -1;
    }
  }
  return 0;
}


int CM_SightTraceCapsuleThroughCapsule(traceWork_t *tw, trace_t *trace)
{
  float v3;
  vec3_t endtop;
  vec3_t starttop;
  float halfwidth;
  vec3_t top;
  float offs;
  float halfheight;
  vec3_t symetricSize[2];
  float radius;
  vec3_t offset;
  vec3_t endbottom;
  vec3_t startbottom;
  int i;
  vec3_t bottom;

  if ( tw->bounds[0][0] > tw->threadInfo.box_model->maxs[0] + 1.0 || tw->bounds[0][1] > tw->threadInfo.box_model->maxs[1] + 1.0 || tw->bounds[0][2] > tw->threadInfo.box_model->maxs[2] + 1.0
	|| tw->threadInfo.box_model->mins[0] - 1.0 > tw->bounds[1][0] || tw->threadInfo.box_model->mins[1] - 1.0 > tw->bounds[1][1] || tw->threadInfo.box_model->mins[2] - 1.0 > tw->bounds[1][2] )
  {
    return 0;
  }
  
  VectorCopy(tw->extents.start, starttop);
  starttop[2] += tw->offsetZ;
  VectorCopy(tw->extents.start, startbottom);
  startbottom[2] -= tw->offsetZ;
  VectorCopy(tw->extents.end, endtop);
  endtop[2] += tw->offsetZ;
  VectorCopy(tw->extents.end, endbottom);
  endbottom[2] -= tw->offsetZ;
  
  for ( i = 0; i < 3; ++i )
  {
    offset[i] = (tw->threadInfo.box_model->mins[i] + tw->threadInfo.box_model->maxs[i]) * 0.5;
    symetricSize[0][i] = tw->threadInfo.box_model->mins[i] - offset[i];
    symetricSize[1][i] = tw->threadInfo.box_model->maxs[i] - offset[i];
  }
  halfwidth = symetricSize[1][0];
  halfheight = symetricSize[1][2];
  if ( symetricSize[1][0] <= symetricSize[1][2] )
  {
    radius = halfwidth;
  }
  else
  {
    radius = halfheight;
  }
  offs = halfheight - radius;
  
  VectorCopy(offset, top);
  top[2] += (halfheight - radius);
  VectorCopy(offset, bottom);
  bottom[2] -= (halfheight - radius);
  
  if ( startbottom[2] <= top[2] )
  {
    if ( bottom[2] > starttop[2] )
    {
      if ( !CM_SightTraceSphereThroughSphere(tw, starttop, endtop, bottom, radius, trace) )
      {
        return -1;
      }
      if ( tw->delta[2] <= 0.0 )
      {
        return 0;
      }
    }
  }
  else
  {
    if ( !CM_SightTraceSphereThroughSphere(tw, startbottom, endbottom, top, radius, trace) )
    {
      return -1;
    }
    if ( tw->delta[2] >= 0.0 )
    {
      return 0;
    }
  }
  if ( !CM_SightTraceCylinderThroughCylinder(tw, offset, offs, radius, trace) )
  {
    return -1;
  }
  if ( endbottom[2] <= top[2] )
  {
    if ( bottom[2] > endtop[2] && starttop[2] >= bottom[2] && !CM_SightTraceSphereThroughSphere(tw, starttop, endtop, bottom, radius, trace) )
    {
      return -1;
    }
  }
  else if ( top[2] >= startbottom[2] && !CM_SightTraceSphereThroughSphere(tw, startbottom, endbottom, top, radius, trace) )
  {
    return -1;
  }
  return 0;
}


int CM_SightTraceSphereThroughSphere(traceWork_t *tw, const float *vStart, const float *vEnd, const float *vStationary, float radius, trace_t *trace)
{
    float fDiscriminant;
    float fC;
    float fB;
    float fA;
    vec3_t vNormal;
    vec3_t vDelta;
    float fDeltaLen;

    VectorSubstract(vStart, vStationary, vDelta);

    fC = VectorLengthSquared(vDelta) - Square(radius + tw->radius);
    if ( fC > 0.0 )
    {
      fB = DotProduct(tw->delta, vDelta);
      if ( fB < 0.0 )
      {
        fA = tw->deltaLenSq;
        fDiscriminant = Square(fB) - (fA * fC);
        if ( fDiscriminant >= 0.0 )
        {
          fDeltaLen = Vec3NormalizeTo(vDelta, vNormal);
          if((-fB - fsqrt(fDiscriminant)) / fA + (fB * 0.125) / fDeltaLen >= trace->fraction)
          {
            return 1;
          }else{
            return 0;
          }
        }
      }
      return 1;
    }
    return 0;
}


int CM_SightTraceCylinderThroughCylinder(traceWork_t *tw, const float *vStationary, float fStationaryHalfHeight, float radius, trace_t *trace)
{
  float fDiscriminant;
  float fEntry;
  float fHitHeight;
  float fEpsilon;
  float fTotalHeight;
  float fC;
  float fB;
  float fA;
  vec3_t vNormal;
  vec3_t vDelta;
  float fDeltaLen;

  VectorSubstract(tw->extents.start, vStationary, vDelta);

  fC = Square(vDelta[0]) + Square(vDelta[1]) - Square(radius + tw->radius);
  if ( fC > 0.0 )
  {
    fB = tw->delta[0] * vDelta[0] + tw->delta[1] * vDelta[1];
    if ( fB < 0.0 )
    {
      fA = Square(tw->delta[0]) + Square(tw->delta[1]);
      fDiscriminant = Square(fB) - (fA * fC);
      if ( fDiscriminant >= 0.0 )
      {
        vDelta[2] = 0.0;
        fDeltaLen = Vec3NormalizeTo(vDelta, vNormal);
        fEpsilon = (fB * 0.125) / fDeltaLen;
        fEntry = ((-fB - fsqrt(fDiscriminant)) / fA) + fEpsilon;
        if ( fEntry < trace->fraction )
        {
          fTotalHeight = tw->size[2] - tw->radius + fStationaryHalfHeight;
          fHitHeight = (fEntry - fEpsilon) * tw->delta[2] + tw->extents.start[2] - vStationary[2];
          assert(fTotalHeight >= 0);
          if(fabs(fHitHeight) > fTotalHeight)
		  {
			  return 1;
		  }else{
			  return 0;
		  }
        }
      }
    }
    return 1;
  }
  fTotalHeight = tw->size[2] - tw->radius + fStationaryHalfHeight;
  assert(fTotalHeight >= 0);
  if(fabs(vDelta[2]) > fTotalHeight)
  {
	return 1;
  }
  return 0;
}


int CM_SightTracePoint(int oldHitNum, const float *start, const float *end, col_context_t *context)
{
	dmaterial_t *materialInfo;
	CollisionAabbTree *tree;
	col_prim_t *prim;
	traceWork_t tw;
	trace_t trace;
	int i;
	vec3_t mn;
	int hitNum;
	int brushmask;

	traceWork_t::traceWork_t(&tw);
	hitNum = 0;
  
	VectorClear(trace.normal);

	brushmask = context->mask;

	VectorCopy(start, tw.extents.start);
	VectorCopy(end, tw.extents.end);

	CM_CalcTraceExtents(&tw.extents);
  
	if ( oldHitNum > 0 && (oldHitNum -1) < cm.numBrushes && CM_SightTracePointThroughBrush(&tw.extents, &cm.brushes[oldHitNum - 1]) )
	{
		return oldHitNum;
	}

    trace.fraction = 1.0;
    trace.startsolid = 0;
    trace.allsolid = 0;
    for ( i = 0; i < 3; ++i )
    {
      tw.size[i] = 0.0;
      tw.midpoint[i] = (tw.extents.start[i] + tw.extents.end[i]) * 0.5;
      tw.delta[i] = tw.extents.end[i] - tw.extents.start[i];
      tw.halfDelta[i] = 0.5 * tw.delta[i];
      tw.halfDeltaAbs[i] = fabs(tw.halfDelta[i]);
    }
    tw.contents = brushmask;
    tw.deltaLenSq = VectorLengthSquared(tw.delta);
    tw.deltaLen = fsqrt(tw.deltaLenSq);
    tw.radius = 0.0;
    tw.boundingRadius = 0.0;
    tw.offsetZ = 0.0;
    for ( i = 0; i < 3; ++i )
    {
      if ( tw.extents.end[i] <= tw.extents.start[i] )
      {
        tw.bounds[0][i] = tw.extents.end[i];
        tw.bounds[1][i] = tw.extents.start[i];
      }
      else
      {
        tw.bounds[0][i] = tw.extents.start[i];
        tw.bounds[1][i] = tw.extents.end[i];
      }
    }
    tw.axialCullOnly = 0;
    tw.isPoint = 1;
    tw.doublesided = 0;
	VectorClear(tw.radiusOffset);

    CM_GetTraceThreadInfo(&tw.threadInfo);

    if ( context->nprims )
    {
	  __builtin_prefetch(context->prims);
	  __builtin_prefetch(context->prims->tree);
      for ( i = 0; i < context->nprims; ++i )
      {
		prim = context->prims +i;
		if(i + 1 < context->nprims)
		{
			__builtin_prefetch(context->prims[i + 1].tree);
		}
        if ( prim->type )
        {
          if ( brushmask & prim->brush->contents )
          {
            hitNum = CM_SightTraceThroughBrush(&tw, prim->brush, prim->brush - cm.brushes, &trace);
            if ( hitNum )
            {
              return hitNum;
            }
          }
        }
        else
        {
          tree = prim->tree;
          materialInfo = &cm.materials[tree->materialIndex];
          VectorSubstract(tree->origin, tree->halfSize, mn);
          if ( brushmask & materialInfo->contentFlags )
          {
            if ( !(tree->origin[0] + tree->halfSize[0] < tw.bounds[0][0] || tree->origin[1] + tree->halfSize[1] < tw.bounds[0][1]
					|| tree->origin[2] + tree->halfSize[2] < tw.bounds[0][2] || tw.bounds[1][0] < mn[0]
					|| tw.bounds[1][1] < mn[1] || tw.bounds[1][2] < mn[2]) )
            {
              CM_SightTraceThroughAabbTree(&tw, tree, &trace);
              if ( trace.fraction < 1.0 )
              {
                return cm.numBrushes + 1;
              }
            }
          }
        }
      }
    }
    else
    {
      hitNum = CM_SightTraceThroughTree(&tw, 0, tw.extents.start, tw.extents.end, &trace);
    }
	
	return hitNum;
}

int CM_TransformedBoxSightTrace(int hitNum, const float *start, const float *end, const float *mins, const float *maxs, unsigned int model, int brushmask, const float *origin, const float *angles)
{
  vec3_t matrix[3];
  float halfwidth;
  float halfheight;
  vec3_t symetricSize[2];9
  vec3_t offset;
  vec3_t end_l;
  vec3_t start_l;
  int rotated;
  int i;

  assert(mins != NULL);
  assert(maxs != NULL); 

  for ( i = 0; i < 3; ++i )
  {
    offset[i] = (mins[i] + maxs[i]) * 0.5;
    symetricSize[0][i] = mins[i] - offset[i];
    symetricSize[1][i] = maxs[i] - offset[i];
    start_l[i] = start[i] + offset[i];
    end_l[i] = end[i] + offset[i];
  }
  VectorSubstract(start_l, origin, start_l);
  VectorSubstract(end_l, origin, end_l);

  rotated = 0;
  if(angles[0] != 0.0 || angles[1] != 0.0 || angles[2] != 0.0)
  {
    rotated = 1;
  }
  halfwidth = symetricSize[1][0];
  halfheight = symetricSize[1][2];
  if ( rotated )
  {
    AnglesToAxis(angles, matrix);
    RotatePoint(start_l, matrix);
    RotatePoint(end_l, matrix);
  }
  return CM_BoxSightTrace(hitNum, start_l, end_l, symetricSize[0], symetricSize[1], model, brushmask);
}

int CM_TracePointDown(const float *start, const float *end, int contentmask, int surf_type, float *endpos, float *fraction, float *normal)
{

  traceWork_t tw;
  vec4_t start_;
  int i;
  trace_t results;
  vec4_t end_;

  VectorClear(results.normal);

  traceWork_t::traceWork_t(&tw);
  assert(start != NULL);
  assert(end != NULL);
  assert(!IS_NAN((start)[0]) && !IS_NAN((start)[1]) && !IS_NAN((start)[2]));
  assert(!IS_NAN((end)[0]) && !IS_NAN((end)[1]) && !IS_NAN((end)[2]));

  memset(&results, 0, sizeof(results));
  results.fraction = 1.0;
  
  assert(cm.numNodes != NULL);

  tw.contents = contentmask;
  for ( i = 0; i < 3; ++i )
  {
    tw.size.vec.v[i] = 0.0;
    tw.extents.start[i] = start[i];
    tw.extents.end[i] = end[i];
    tw.midpoint[i] = (tw.extents.start[i] + tw.extents.end[i]) * 0.5;
    tw.delta[i] = tw.extents.end[i] - tw.extents.start[i];
    tw.halfDelta[i] = 0.5 * tw.delta[i];
    tw.halfDeltaAbs[i] = fabs(tw.halfDelta[i]);
  }
  CM_CalcTraceExtents(&tw.extents);
  tw.deltaLenSq = VectorLengthSquared(tw.delta);
  tw.deltaLen = fsqrt(tw.deltaLenSq);
  tw.radius = 0.0;
  tw.boundingRadius = 0.0;
  tw.offsetZ = 0.0;
  VectorCopy(tw.extents.start, tw.bounds[0]);
  VectorCopy(tw.extents.start, tw.bounds[1]);

  if ( tw.extents.end[2] <= tw.extents.start[2] )
  {
    tw.bounds[0][2] = tw.extents.end[2];
    tw.bounds[1][2] = tw.extents.start[2];
  }
  else
  {
    tw.bounds[0][2] = tw.extents.start[2];
    tw.bounds[1][2] = tw.extents.end[2];
  }
  CM_SetAxialCullOnly(&tw);
  CM_GetTraceThreadInfo(&tw.threadInfo);
  tw.isPoint = 1;
  tw.doublesided = 0;
  
  VectorClear(tw.radiusOffset);
  
  start_[0] = tw.extents.start[0];
  start_[1] = tw.extents.start[1];  
  start_[2] = tw.extents.start[2];
  start_[3] = 0.0;
  
  end_[0] = tw.extents.end[0];
  end_[1] = tw.extents.end[1];
  end_[2] = tw.extents.end[2];
  end_[3] = results.fraction;
  
  CM_TraceThroughTree(&tw, 0, start_, end_, &results);
  if ( fraction )
  {
    *fraction = results.fraction;
  }
  if ( normal )
  {
	VectorCopy(results.normal, normal);
  }
  if ( results.fraction != 1.0 && surf_type & results.sflags )
  {
	VectorMA(start, results.fraction, tw.delta, endpos);
    return results.sflags;
  }
  if ( results.startsolid )
  {
	VectorCopy(start, endpos);
    return results.sflags;
  }
  return 0;

}


/*
double CM_GetWaterHeight(const float *pos, float z_up, float z_down)
{
  vec3_t p;
  pointtrace_t clip;
  trace_t trace;
  svEntity_s *check;
  vec3_t start;
  vec3_t end;
  float waterHeight;
  vec3_t hitPos;
  int surfType;
  int entnum;

  waterHeight = R_WaterSimulationGetHeight(pos);

  VectorCopy(pos, start);
  start[2] += z_up;
  VectorCopy(pos, end);
  end[2] += z_down;
  
  entnum = waterbrush_entity->current.integer;
  if ( entnum > 0 )
  {
    TraceExtents::TraceExtents(&clip.extents);
    memset(&trace, 0, sizeof(trace));
    trace.fraction = 1.0;
    check = (svEntity_s *)((char *)&unk_97E8B28 + 360 * entnum);
    clip.contentmask = -1;
	VectorCopy(start, clip.extents.start);
	VectorCopy(end, clip.extents.end);
    CM_CalcTraceExtents(&clip.extents);
    clip.bLocational = 0;
    clip.ignoreEntParams = 0;
    SV_TracePointToEntity(&clip, check, &trace);
    if ( trace.fraction < 1.0 )
    {
      Vec3Lerp(start, end, trace.fraction, p);
      if ( p[2] > waterHeight )
      {
        waterHeight = p[2];
      }
    }
  }
  surfType = CM_TracePointDown(start, end, 32, 0x3F00000, hitPos, 0, 0);
  if ( surfType )
  {
    if ( hitPos[2] - waterHeight >= 0.0 )
    {
      waterHeight = hitPos[2];
    }
  }
  return waterHeight;
}
*/

bool CM_TestPointInBrushModel(const float *point, int brushmodel, const float *trans)
{
  cplane_s *cp;
  unsigned int i;
  cbrush_t *brush;
  vec3_t p;

  cmodel_t* cmod = CM_ClipHandleToModel(brushmodel);
  brush = &cm.brushes[*cm.leafbrushNodes[cmod->leaf.leafBrushNode].data.leaf.brushes];
  VectorSubstract(point, trans, p);

  if ( p[0] < brush->maxs[0] && p[1] < brush->maxs[1] && p[2] < brush->maxs[2] )
  {
    if ( brush->mins[0] < p[0] && brush->mins[1] < p[1] && brush->mins[2] < p[2] )
    {
      for ( i = 0; i < brush->numsides; ++i )
      {
        cp = brush->sides[i].plane;
        if ( DotProduct(p, cp->normal) > cp->dist )
        {
          return 0;
        }
      }
      return 1;
    }
  }
  return 0;
}

void CM_CalcTraceExtents(TraceExtents *extents)
{
  int i;
  float diff;

  for ( i = 0; i < 3; ++i )
  {
	diff = extents->start[i] - extents->end[i];
    if ( diff != 0.0 )
    {
      extents->invDelta[i] = 1.0 / diff;
    }
    else
    {
      extents->invDelta[i] = 0.0;
    }
  }
}


int CM_TraceSphereThroughSphere(traceWork_t *tw, const float *vStart, const float *vEnd, const float *vStationary, float radius, trace_t *trace)
{
	vec3_t vDelta;
	float dr;
	float fDiscriminant;
	float fDeltaLen;
	vec3_t vNormal;
	float fEntry;
	float sqd;
	float fB;
	float fRadiusSqrd;

  VectorSubstract(vStart, vStationary, vDelta);
  sqd = VectorLengthSquared(vDelta);

  dr = tw->radius + radius;
  fRadiusSqrd = dr * dr;
  s = sqd - fRadiusSqrd;
  
  fC = VectorLengthSquared(vDelta) - fRadiusSqrd;
  
	if ( fC > 0.0 )
	{
		fB = DotProduct(vDelta, tw->delta);
		if ( fB >= 0.0)
		{
			return 1;
		}
		fA = tw->deltaLenSq;
		
		assertx(fA > 0.0f, "(tw->deltaLenSq) = %g", tw->deltaLenSq);
		

		fDiscriminant = fB * fB - s * tw->deltaLenSq;
		if(fDiscriminant < 0.0)
		{
			return 1;
		}

		fDeltaLen = Vec3NormalizeTo(vDelta, vNormal);
		fEntry = fDeltaLen * 0.125 / fB + (-fB - fsqrt(fDiscriminant)) / fA;
		
		if(trace->fraction <= fEntry)
		{
			return 1;
		}
		trace->fraction = max(fEntry, 0.0);

		assertx(trace->fraction < 0.0 || trace->fraction > 1.0, "(trace->fraction) = %g", trace->fraction);

		VectorCopy(vNormal, trace->normal);
		trace->cflags = tw->threadInfo.box_brush->contents;
		trace->walkable = 0;
		trace->sflags = 0;
		return 0;
	}

	trace->startsolid = 1;
    trace->walkable = 0;
    trace->fraction = 0.0;
    trace->cflags = tw->threadInfo.box_brush->contents;
    trace->sflags = 0;

    Vec3NormalizeTo(vDelta, trace->normal);

    VectorSubstract(vEnd, vStationary, vDelta);
    if ( fRadiusSqrd >= VectorLengthSquared(vDelta) )
	{
      trace->allsolid = 1;
    }
	return 0;

}



int CM_TraceCylinderThroughCylinder(traceWork_t *tw, const float *vStationary, float fStationaryHalfHeight, float radius, trace_t *trace)
{
    float dr;
    float fA;
    vec3_t vDelta;
    vec3_t vNormal;
    float fHitHeight, fC;
    float fEpsilon, fDeltaLen;
    float sqd2;
    float fB;
    float fEntry;
    float fDiscriminant;

    VectorSubstract(tw->extents.start, vStationary, vDelta);
	sqd2 = vDelta[1] * vDelta[1] + vDelta[0] * vDelta[0];
    
	dr = tw->radius + radius;
	fC = sqd2 - dr * dr;
	
	if ( fC > 0.0 )
	{
		fB = vDelta[0] * tw->delta[0] + vDelta[1] * tw->delta[1];
		if ( fB >= 0.0 )
		{
			return 1;
		}
		
		fA = tw->delta[1] * tw->delta[1] + tw->delta[0] * tw->delta[0];
		
		assertx(fA > 0.0f, "(fA) = %g", fA);

		fDiscriminant = fB * fB - fC * fA;
		if(fDiscriminant < 0.0)
		{
			return 1;
		}
		
		vDelta[2] = 0.0;
		fDeltaLen = Vec3NormalizeTo(vDelta, vNormal)
		fEpsilon = (fDeltaLen * 0.125) / fB;
		fEntry = (-fB - fsqrt(fDiscriminant)) / fA + fEpsilon;
		if ( trace->fraction <= fEntry )
		{
			return 1;
		}

		fTotalHeight = tw->size[2] - tw->radius + fStationaryHalfHeight;
		fHitHeight = (fEntry - fEpsilon) * tw->delta[2] + tw->extents.start[2] - vStationary[2];
		
		assert(fTotalHeight >= 0);

		if ( fTotalHeight < fabs(fHitHeight) )
		{
			return 1;
		}
		
		trace->fraction = max(fEntry, 0.0);
		
		assertx(trace->fraction >= 0 && trace->fraction <= 1.0f, "(trace->fraction) = %g", trace->fraction);
		
		VectorCopy(vNormal, trace->normal);
		trace->cflags = tw->threadInfo.box_brush->contents;
		trace->sflags = 0;
		trace->walkable = 0;
		return 0;
	}
  
  
	fTotalHeight = tw->size[2] - tw->radius + fStationaryHalfHeight;
	
	assert(fTotalHeight >= 0);
	
	if ( fTotalHeight < fabs(vDelta[2]) )
	{
		return 1;
	}
	trace->fraction = 0.0;
	vDelta[2] = 0.0;
	trace->startsolid = 1;
	trace->walkable = 0;
	Vec3NormalizeTo(vDelta, trace->normal);
	trace->cflags = tw->threadInfo.box_brush->contents;
	trace->sflags = 0;

	
	if ( fTotalHeight >= fabs(tw->extents.end[2] - vStationary[2]) )
	{
		trace->allsolid = 1;
	}
	return 0;
}

void CM_TraceThroughTempBrush(traceWork_t *tw, trace_t *trace)
{
	cbrush_t **info;
	unsigned int i;
	PhysGeomList *geoms;

    geoms = *tw->threadInfo.geoms;
    for ( i = 0; i < geoms->count && trace->fraction != 0.0; ++i )
    {
      info = &geoms->geoms[i].brush;
      if ( *info )
      {
        if ( tw->contents & (*info)->contents )
        {
          CM_TraceThroughBrush(tw, *info, trace);
        }
      }
    }
}



void CM_GetTraceThreadInfo(TraceThreadInfo *threadInfo)
{
	TraceThreadInfo *value;

	assert(threadInfo != NULL);
	
	value = (TraceThreadInfo *)Sys_GetValue(3);

	assert(value != NULL);

	++value->checkcount.global;
	threadInfo->checkcount.global = value->checkcount.global;
	threadInfo->checkcount.partitions = value->checkcount.partitions;
	threadInfo->box_brush = value->box_brush;
	threadInfo->box_model = value->box_model;
	threadInfo->geoms = value->geoms;
	
	assert(threadInfo->checkcount.partitions || cm.partitionCount == 0);

}



void CM_TraceThroughBrush(traceWork_t *tw, cbrush_t *brush, trace_t *trace)
{
  float d1;
  cbrushside_t *side;
  int j;
  cplane_s *plane;
  float enterFrac;
  float delta;
  bool allsolid;
  float frac;
  float dist;
  cbrushside_t *leadside;
  cbrushside_t axialSide;
  cplane_s axialPlane;
  float sign;
  float d2;
  const float *bounds;
  float f;
  int index;
  float leaveFrac;
  float offsetDotNormal;
  int i; 
  cplane_s *leadPlane;

	assert(!IS_NAN((tw->extents.start)[0]) && !IS_NAN((tw->extents.start)[1]) && !IS_NAN((tw->extents.start)[2]));
	assert(!IS_NAN((tw->extents.end)[0]) && !IS_NAN((tw->extents.end)[1]) && !IS_NAN((tw->extents.end)[2]));

  enterFrac = 0.0;
  leaveFrac = trace->fraction;
  allsolid = 1;
  leadside = 0;
  sign = 1.0;
  bounds = brush->?mins;
  index = 0;
  while ( 1 )
  {
	assert(!IS_NAN((bounds)[0]) && !IS_NAN((bounds)[1]) && !IS_NAN((bounds)[2]));
	assert(!IS_NAN((tw->radiusOffset)[0]) && !IS_NAN((tw->radiusOffset)[1]) && !IS_NAN((tw->radiusOffset)[2]));

    for ( j = 0; j < 3; ++j )
    {
		d1 = ((tw->extents.start.vec.v[j] - bounds[j]) * sign) - tw->radiusOffset.vec.v[j];
		d2 = ((tw->extents.end.vec.v[j] - bounds[j]) * sign) - tw->radiusOffset.vec.v[j];
		assert(!IS_NAN(d1));
		assert(!IS_NAN(d2));
		if ( d1 <= 0.0 )
		{
			if ( d2 > 0.0 )
			{
			  frac = (d1 * tw->extents.invDelta.vec.v[j]) * sign;
			  if ( enterFrac >= frac )
				return;
			  
			  allsolid = 0;
			  if ( (frac - leaveFrac) < 0.0 )
			  {
				leaveFrac = (d1 * tw->extents.invDelta.vec.v[j]) * sign;
			  }
			}
		}
		else
		{
			if ( d2 >= min(d1, 0.125) )
			  return;
			frac = ((d1 - 0.125) * tw->extents.invDelta.vec.v[j]) * sign;
			if ( frac >= leaveFrac )
			  return;
			if ( d2 > 0.0 )
			  allsolid = 0;
			if ( frac <= enterFrac )
			{
			  if ( leadside )
				continue;
			}
			else
			{
			  enterFrac = ((d1 - 0.125) * tw->extents.invDelta.vec.v[j]) * sign;
			}
			axialSide.cflags = brush->axial_cflags[index][j];
			axialSide.sflags = brush->axial_sflags[index][j];
			axialPlane.normal[0] = 0.0;
			axialPlane.normal[1] = 0.0;
			axialPlane.normal[2] = 0.0;
			axialPlane.normal[j] = sign;
			axialSide.plane = &axialPlane;
			leadside = &axialSide;
		}
    }
    if ( !index )
    {
      sign = 1.0;
      bounds = brush->maxs;
      index = 1;
      continue;
    }
    break;
  }
  if ( brush->numsides )
  {
    for(i = brush->numsides, side = brush->sides; i > 0; --i, ++side)
    {
		plane = side->plane;

		assert(!IS_NAN(plane->dist));
		assert(!IS_NAN(tw->radius));
		assert(!IS_NAN((plane->normal)[0]) && !IS_NAN((plane->normal)[1]) && !IS_NAN((plane->normal)[2]));
		assert(!IS_NAN(tw->offsetZ));

		offsetDotNormal = fabs(plane->normal[2] * tw->offsetZ);
		dist = (plane->dist + tw->radius) + offsetDotNormal;

		assert(!IS_NAN(dist));
		d1 = DotProduct(tw->extents.start, plane->normal) - dist;
		d2 = DotProduct(tw->extents.end, plane->normal) - dist;

		assert(!IS_NAN(d1));
		assert(!IS_NAN(d2));

		if ( d1 <= 0.0 )
		{
			if ( d2 > 0.0 )
			{
			  delta = d1 - d2;
			  assert(delta < 0);

			  if ( d1 > (leaveFrac * delta) )
			  {
				leaveFrac = d1 / delta;
				if ( enterFrac >= (d1 / delta) )
				  return;
			  }
			  allsolid = 0;
			}
		}
		else
		{
			if ( d2 >= min(d1, 0.125) )
			{
			  return;
			}
			if ( d2 > 0.0 )
			  allsolid = 0;
			delta = d1 - d2;
			
			assert(!IS_NAN(delta));
			
			assert(delta > 0);

			f = d1 - 0.125;
			if ( (d1 - 0.125) <= (enterFrac * delta) )
			{
			  if ( leadside )
				continue;
			}
			else
			{
			  enterFrac = f / delta;
			  if ( (f / delta) >= leaveFrac )
				return;
			}
			leadside = side;
		}
    }
  }
  trace->cflags = brush->contents;
  if ( leadside )
  {
    trace->fraction = enterFrac;
    
	assertx(trace->fraction >= 0 && trace->fraction <= 1.0f, "(trace->fraction) = %g", trace->fraction);

    leadPlane = leadside->plane;
	VectorCopy(leadPlane->normal, trace->normal);
    trace->sflags = leadside->sflags;
    trace->walkable = 0;
  }
  else
  {
    trace->startsolid = 1;
    if ( allsolid )
    {
      trace->allsolid = 1;
      trace->fraction = 0.0;
    }
    trace->sflags = brush->axial_sflags[1][2];
    trace->cflags = brush->axial_cflags[1][2];
  }
}



void CM_TraceThroughLeafBrushNode_r(traceWork_t *tw, cLeafBrushNode_s *node, const float *p1_, const float *p2, trace_t *trace)
{

  int side;
  float diff;
  float t1;
  float frac;
  int k;
  vec4_t p1;
  float offset;
  float tmax;
  float t2;
  float frac2;
  uint16_t *brushes;
  float absDiff;
  float invDist;
  float tmin;
  int brushnum;
  vec4_t mid;

  assert(node != NULL);

  VectorCopy4(p1_, p1);

  while ( tw->contents & node->contents )
  {
    if ( node->leafBrushCount )
    {
      if ( node->leafBrushCount > 0 )
      {
        brushes = node->data.leaf.brushes;
        for ( k = 0; k < node->leafBrushCount; ++k )
        {
          brushnum = brushes[k];
          if ( tw->contents & cm.brushes[brushnum].contents )
          {
            CM_TraceThroughBrush(tw, &cm.brushes[brushnum], trace);
          }
        }
        return;
      }
      CM_TraceThroughLeafBrushNode_r(tw, node + 1, p1, p2, trace);
    }
    t1 = p1[node->axis] - node->data.children.dist;
    t2 = p2[node->axis] - node->data.children.dist;
    offset = (tw->size[node->axis] + 0.125) - node->data.children.range;

    tmax = max(t1, t2);
    tmin = min(t1, t2);

    if ( tmin < offset )
    {
      if ( -offset < tmax )
      {
        if ( p1[3] >= trace->fraction )
        {
          return;
        }
        diff = t2 - t1;
        absDiff = fabs(t2 - t1);
        if ( absDiff <= 0.00000047683716 )
        {
          side = 0;
          frac = 1.0;
          frac2 = 0.0;
        }
        else
        {
          if ( diff < 0.0 )
          {
			frac2 = (t1 - offset) * (1.0 / absDiff);
			frac = (t1 + offset) * (1.0 / absDiff);
          }
          else
          {
			frac2 = (-t1 - offset) * (1.0 / absDiff);
			frac = (-t1 + offset) * (1.0 / absDiff);
          }
          invDist = 1.0 / absDiff;
          side = diff >= 0.0;
        }

		assertx(frac >= 0.0f, "%g, %g", frac, 0.0)

        frac = min(frac, 1.0);

        mid[0] = ((p2[0] - p1[0]) * frac) + p1[0];
        mid[1] = ((p2[1] - p1[1]) * frac) + p1[1];
        mid[2] = ((p2[2] - p1[2]) * frac) + p1[2];
        mid[3] = ((p2[3] - p1[3]) * frac) + p1[3];


        CM_TraceThroughLeafBrushNode_r(tw, &node[node->data.children.childOffset[side]], p1, mid, trace);

        assertx(frac2 <= 1.0f + TRACE_EPSILON, "%g, %g", frac2, 1.0f + TRACE_EPSILON);

        frac2 = max(frac2, 0.0);

        p1[0] = ((p2[0] - p1[0]) * frac2) + p1[0];
        p1[1] = ((p2[1] - p1[1]) * frac2) + p1[1];
        p1[2] = ((p2[2] - p1[2]) * frac2) + p1[2];
        p1[3] = ((p2[3] - p1[3]) * frac2) + p1[3];

        node += node->data.children.childOffset[1 - side];
      }
      else
      {
        node += node->data.children.childOffset[1];
      }
    }
    else
    {
      if ( COERCE_FLOAT(_mm_xor_ps(LODWORD(offset), _mask__NegFloat_)) >= tmax )
      {
        return;
      }
      node += node->data.children.childOffset[0];
    }
  }
}

bool CM_TraceThroughLeafBrushNode(traceWork_t *tw, cLeaf_s *leaf, trace_t *trace)
{
  vec3_t absmax;
  vec3_t absmin;
  vec4_t start, end;

  assert(leaf->leafBrushNode != NULL);
  
  absmin[0] = leaf->mins[0] - tw->size[0];
  absmin[1] = leaf->mins[1] - tw->size[1];
  absmin[2] = leaf->mins[2] - tw->size[2];
  absmax[0] = leaf->maxs[0] + tw->size[0];
  absmax[1] = leaf->maxs[1] + tw->size[1];
  absmax[2] = leaf->maxs[2] + tw->size[2];
  
  if ( intersect_extents_aabb(&tw->extents, absmin, absmax, trace->fraction) )
  {
	start[0] = tw->extents.start[0];
    start[1] = tw->extents.start[1];
    start[2] = tw->extents.start[2];
    start[3] = 0.0;
    end[0] = tw->extents.end[0];
    end[1] = tw->extents.end[1];
    end[2] = tw->extents.end[2];
    end[3] = trace->fraction;

	CM_TraceThroughLeafBrushNode_r(tw, &cm.leafbrushNodes[leaf->leafBrushNode], start, end, trace);

	if(trace->fraction == 0.0)
	{
		return true;
	}
  }
  return false;
}




bool trace_point_through_triangle(const float *p0, const float *u0, const float *v0, const float *v1, const float *v2, const float cur_t, float *t)
{
	float b_;
	float det; //really determinant?
	vec3_t c2;
	vec3_t c1;
	vec3_t rs; 
	vec3_t cr_rs_c2; 
	const float a_;
	vec3_t c0;
	vec3_t cr_c0_c1;
	const float t_;

	assert(cur_t >= 0.0f && cur_t <= 1.0f);
	VectorSubstract(v1, v0, c0);
	VectorSubstract(v2, v0, c1);

	c2[0] = -u0[0];
	c2[1] = -u0[1];
	c2[2] = -u0[2];	
	
	Vec3Cross(c0, c1, cr_c0_c1);
    det = DotProduct(cr_c0_c1, c2);
	if ( fabs(det) < 0.000099999997 )
	{
		return 0;
	}
	VectorSubstract(p0, v0, rs);
    t_ = DotProduct(cr_c0_c1, rs) / det;
    if ( t_ < 0.0 || t_ > cur_t )
    {
		return 0;
	}
    Vec3Cross(rs, c2, cr_rs_c2);
    a_ = -DotProduct(cr_rs_c2, c1) / det;
    if ( a_ < 0.0 )
    {
		return 0;
	}
    b_ = DotProduct(cr_rs_c2, c0) / det;
    if ( b_ < 0.0 || (float)(a_ + b_) > 1.0 )
    {
        return 0;
    }
    *t = t_;

	assert(t_ >= 0.0f && t_ <= 1.0f);

    return 1;

}


bool CM_CullBox(traceWork_t *tw, const float *origin, const float *halfSize)
{
	vec3_t distorig;
	vec3_t mid;
	int i;
  
	VectorSubstract(tw->midpoint, origin, distorig);
	VectorAdd(tw->size, halfSize, mid);
    
	for(i = 0; i < 3; ++i)
	{
	  if ( tw->halfDeltaAbs[i] + mid[i] < fabs(distorig[i]) )
	  {
		  return 1;
	  }
	}

    if ( tw->axialCullOnly)
	{
		return 0;
	}
    if(tw->halfDeltaAbs[1] * mid[2] + mid[1] * tw->halfDeltaAbs[2] < fabs(tw->halfDelta[1] * distorig[2] - tw->halfDelta[2] * distorig[1]))
	{
		return 1;
	}
	if(tw->halfDeltaAbs[0] * mid[2] + mid[0] * tw->halfDeltaAbs[2] < fabs(tw->halfDelta[2] * distorig[0] - tw->halfDelta[0] * distorig[2]))
	{
		return 1;
	}
	
    if(tw->halfDeltaAbs[1] * mid[0] + tw->halfDeltaAbs[0] * mid[1] < fabs(tw->halfDelta[0] * distorig[1] - tw->halfDelta[1] * distorig[0]))
    {
        return 1;
    }
    return 0;
}



void CM_TraceThroughPrimitives(traceWork_t *tw, const float *p1_, const float *p2, trace_t *trace, col_context_t *context)
{
	cbrush_t *brush;
	float oldFraction;
	dmaterial_t *materialInfo;
	CollisionAabbTree *tree;
	int i;
	col_prim_t *prim;

    for(i = 0, prim = context->prims; i < context->nprims && !trace->allsolid && trace->fraction != 0.0; ++i, ++prim)
    {
      if ( prim->type )
      {
		assert(prim->type == COL_BRUSH);
		
        brush = prim->brush;
        if ( tw->contents & brush->contents )
        {
          CM_TraceThroughBrush(tw, brush, trace);
        }
      }
      else
      {
        tree = prim->tree;
        materialInfo = &cm.materials[tree->materialIndex];
        if ( materialInfo->contentFlags & tw->contents )
        {
          if ( !CM_CullBox(tw, tree->origin, tree->halfSize) )
          {
            oldFraction = trace->fraction;
            CM_TraceThroughPartition(tw, tree->u.firstChildIndex, trace);
            if ( oldFraction > trace->fraction )
            {
              trace->sflags = materialInfo->surfaceFlags;
              trace->cflags = materialInfo->contentFlags;
            }
          }
        }
      }
    }
}




void CM_TraceThroughTree(traceWork_t *tw, int num, const float *p1_, const float *p2, trace_t *trace)
{

  cNode_t *node;
  int side;
  float diff;
  cplane_s *plane;
  float t1;
  float frac;
  vec4_t p1;
  float offset;
  float t2;
  float frac2;
  float absDiff; 
  float invDist; 
  vec4_t mid; 

  VectorCopy4(p1_, p1);

  while ( num >= 0 )
  {
    node = &cm.nodes[num];
    plane = cm.nodes[num].plane;
    if ( plane->type >= 3 )
    {
      t1 = DotProduct(plane->normal, p1) - plane->dist;
      t2 = DotProduct(plane->normal, p2) - plane->dist;
      
	  offset = 0.125;
	  
	  if ( !tw->isPoint )
      {
        offset += tw->boundingRadius;
      }
    }
    else
    {
      t1 = p1[plane->type] - plane->dist;
      t2 = p2[plane->type] - plane->dist;
      offset = tw->size[plane->type] + 0.125;
    }
    if ( min(t2, t1) < offset )
    {
      if ( -offset < max(t1, t2) )
      {
        if ( p1[3] >= trace->fraction )
        {
          return;
        }
        diff = t2 - t1;
        absDiff = fabs(t2 - t1);
        if ( absDiff <= 0.00000047683716 )
        {
          side = 0;
          frac = 1.0;
          frac2 = 0.0;
        }
        else
        {
          if ( diff < 0.0 )
          {
			frac2 = (t1 - offset) * (1.0 / absDiff);
			frac = (t1 + offset) * (1.0 / absDiff);
          }
          else
          {
			frac2 = (-t1 - offset) * (1.0 / absDiff);
			frac = (-t1 + offset) * (1.0 / absDiff);
          }
          invDist = 1.0 / absDiff;
          side = diff >= 0.0;
        }

		assert(frac >= 0);

		frac = min(frac, 1.0)
 
        mid[0] = ((p2[0] - p1[0]) * frac) + p1[0];
        mid[1] = ((p2[1] - p1[1]) * frac) + p1[1];
        mid[2] = ((p2[2] - p1[2]) * frac) + p1[2];
        mid[3] = ((p2[3] - p1[3]) * frac) + p1[3];

        CM_TraceThroughTree(tw, node->children[side], p1, mid, trace);

        assertx(frac2 <= 1.0f, "frac = %g", frac);

		frac2 = max(frac2, 0.0);

        p1[0] = ((p2[0] - p1[0]) * frac2) + p1[0];
        p1[1] = ((p2[1] - p1[1]) * frac2) + p1[1];
        p1[2] = ((p2[2] - p1[2]) * frac2) + p1[2];
        p1[3] = ((p2[3] - p1[3]) * frac2) + p1[3];
        num = node->children[side ^ 1];
      }
      else
      {
        num = node->children[1];
      }
    }
    else
    {
      num = node->children[0];
    }
  }
  CM_TraceThroughLeaf(tw, &cm.leafs[-1 - num], trace);
}





void CM_TestCapsuleInCapsule(traceWork_t *tw, trace_t *trace)
{
  float r;
  vec3_t top;
  float offs;
  vec3_t p1;
  float symetricSize[2][3];
  float radius;
  float fTotalHalfHeight;
  vec3_t offset;
  vec3_t p2;
  vec3_t tmp;
  int i;
  vec3_t bottom;
  float fHeightDiff;

	VectorCopy(tw->extents.start, top);
	top[2] += tw->offsetZ;
	VectorCopy(tw->extents.start, bottom);
	bottom[2] -= tw->offsetZ;

	for ( i = 0; i < 3; ++i )
	{
		offset[i] = (tw->threadInfo.box_model->mins[i] + tw->threadInfo.box_model->maxs[i]) * 0.5;
		symetricSize[0][i] = tw->threadInfo.box_model->mins[i] - offset[i];
		symetricSize[1][i] = tw->threadInfo.box_model->maxs[i] - offset[i];
	}
	halfwidth = symetricSize[ 1 ][ 0 ];
	halfheight = symetricSize[ 1 ][ 2 ];
	  
	if ( halfwidth <= halfheight )
	{
		radius = halfwidth;
	}
	else
	{
		radius = halfheight;
	}
	offs = halfheight - radius;
	r = Square(tw->radius + radius);
	  
	// check if any of the spheres overlap
	VectorCopy(offset, p1);
	p1[2] += offs;
  
	VectorSubstract(p1, top, tmp);
	if ( r > VectorLengthSquared(tmp) )
	{
		trace->startsolid = 1;
		trace->allsolid = 1;
		trace->fraction = 0.0;
		trace->sflags = 0;  
		return;
	}
  	VectorSubtract(p1, bottom, tmp);
	if ( VectorLengthSquared(tmp) < r ) {
		trace->startsolid = 1;
		trace->allsolid = 1;
		trace->fraction = 0.0;
		trace->sflags = 0;
		return;
	}
	
	VectorCopy(offset, p2);
	p2[2] -= offs;
	VectorSubtract(p2, top, tmp);
	
	if ( VectorLengthSquared(tmp) < r ) {
		trace->startsolid = 1;
		trace->allsolid = 1;
		trace->fraction = 0.0;
		trace->sflags = 0;
		return;
	}
	
	VectorSubtract(p2, bottom, tmp);
	if ( VectorLengthSquared(tmp) < r ) {
		trace->startsolid = 1;
		trace->allsolid = 1;
		trace->fraction = 0.0;
		trace->sflags = 0;
		return;
	}
    
	fHeightDiff = tw->extents.start[2] - offset[2];
    fTotalHalfHeight = (offs + tw->size[2]) - tw->radius;

	assert(fTotalHalfHeight >= 0);
		  
    if ( fTotalHalfHeight >= fabs(fHeightDiff))
    {
 		// 2d coordinates
		top[2] = p1[2] = 0;
		// if the cylinders overlap
		VectorSubtract(top, p1, tmp);
		if ( VectorLengthSquared(tmp) < r )
        {
            trace->startsolid = 1;
            trace->allsolid = 1;
            trace->fraction = 0.0;
            trace->sflags = 0;
		}
    }

}





void CM_TestInTempBrush(traceWork_t *tw, trace_t *trace)
{
  cbrush_t **info;
  unsigned int i;
  PhysGeomList *geoms;

  geoms = *tw->threadInfo.geoms;
  for ( i = 0; i < geoms->count; ++i )
  {
    info = &geoms->geoms[i].brush;
    if ( *info )
    {
      if ( tw->contents & (*info)->contents )
      {
        CM_TestBoxInBrush(tw, *info, trace);
        if ( trace->allsolid )
        {
          break;
        }
      }
    }
  }
}




void CM_TestBoxInBrush(traceWork_t *tw, cbrush_t *brush, trace_t *trace)
{
	float d1;
	cbrushside_t *side;
	cplane_s *plane;
	float dist;
	int i;

	assert(!IS_NAN((tw->extents.start)[0]) && !IS_NAN((tw->extents.start)[1]) && !IS_NAN((tw->extents.start)[2]));
	assert(!IS_NAN((tw->extents.end)[0]) && !IS_NAN((tw->extents.end)[1]) && !IS_NAN((tw->extents.end)[2]));

	// special test for axial
	// the first 6 brush planes are always axial
	if ( tw->bounds[0][0] >= brush->maxs[0]
		 || tw->bounds[0][1] >= brush->maxs[1]
		 || tw->bounds[0][2] >= brush->maxs[2]
		 || tw->bounds[1][0] <= brush->mins[0]
		 || tw->bounds[1][1] <= brush->mins[1]
		 || tw->bounds[1][2] <= brush->mins[2]
		 ) {
		return;
	}

    for(i = brush->numsides, assert(i >= 0); i ; --i)
    {
		plane = side->plane;
		side = brush->sides + i;
		
		assert(!IS_NAN(plane->dist));
		assert(!IS_NAN(tw->radius));
		assert(!IS_NAN((plane->normal)[0]) && !IS_NAN((plane->normal)[1]) && !IS_NAN((plane->normal)[2]));
		assert(!IS_NAN(tw->offsetZ));
	  

		dist = (plane->dist + tw->radius) + fabs(plane->normal[2] * tw->offsetZ));

		assert(!IS_NAN(dist));
	  
		d1 = DotProduct(tw->extents.start, plane->normal) - dist;
      
		assert(!IS_NAN(d1));

		if ( d1 > 0.0 )
		{
			return;
		}
    }
    trace->startsolid = 1;
    trace->allsolid = 1;
    trace->fraction = 0.0;
    trace->cflags = brush->contents;
    trace->sflags = 0;
}


void CM_TestInLeafBrushNode_r(traceWork_t *tw, cLeafBrushNode_s *node, trace_t *trace)
{
  int k;
  cbrush_t *b;
  uint16_t *brushes;

  assert(node != NULL);

  while ( tw->contents & node->contents )
  {
    if ( node->leafBrushCount )
    {
      if ( node->leafBrushCount > 0 )
      {
        brushes = node->data.leaf.brushes;
        for ( k = 0; k < node->leafBrushCount; ++k )
        {
          b = &cm.brushes[brushes[k]];
          if ( tw->contents & b->contents )
          {
            CM_TestBoxInBrush(tw, b, trace);
            if ( trace->allsolid )
            {
              break;
            }
          }
        }
        return;
      }
      CM_TestInLeafBrushNode_r(tw, node + 1, trace);
      if ( trace->allsolid )
      {
        return;
      }
    }
    if ( tw->bounds[0][node->axis] <= node->data.children.dist )
    {
      if ( tw->bounds[1][node->axis] >= node->data.children.dist )
      {
        CM_TestInLeafBrushNode_r(tw, &node[node->data.children.childOffset[0]], trace);
        if ( trace->allsolid )
        {
          return;
        }
      }
      node += node->data.children.childOffset[1];
    }
    else
    {
      node += node->data.children.childOffset[0];
    }
  }
}



qboolean CM_TestInLeafBrushNode(traceWork_t *tw, cLeaf_s *leaf, trace_t *trace)
{
  int i;
  
  assert(leaf->leafBrushNode != NULL);

  for ( i = 0; i < 3; ++i )
  {
    if ( leaf->mins[i] >= tw->bounds[1][i] )
    {
      return 0;
    }
    if ( tw->bounds[0][i] >= leaf->maxs[i] )
    {
      return 0;
    }
  }
  CM_TestInLeafBrushNode_r(tw, &cm.leafbrushNodes[leaf->leafBrushNode], trace);
  return trace->allsolid;
}



void CM_TestInLeaf(traceWork_t *tw, cLeaf_s *leaf, trace_t *trace)
{
  if ( !(tw->contents & leaf->brushContents) || !CM_TestInLeafBrushNode(tw, leaf, trace) )
  {
    if ( tw->contents & leaf->terrainContents )
    {
      CM_MeshTestInLeaf(tw, leaf, trace);
    }
  }
}




/*
==================
CM_Trace
==================
*/
void CM_Trace( trace_t *results, const vec3_t start, const vec3_t end,
			   const vec3_t mins, const vec3_t maxs, clipHandle_t model, int brushmask
#ifdef BLACKOPS
   , col_context_t *context
#endif
){
	int i;
	traceWork_t tw;
	float offset;
	cmodel_t    *cmod;
    TraceThreadInfo* tti;
/*
	PIXBeginNamedEvent(-1, "CM_Trace");
	traceWork_t::traceWork_t(&tw);
*/

	assert(cm.numNodes);
	assert(mins);
	assert(maxs);
	
	assert(!IS_NAN((end)[0]) && !IS_NAN((end)[1]) && !IS_NAN((end)[2]));



	cmod = CM_ClipHandleToModel( model );
	// set basic parms
	tw.contents = brushmask;

	// adjust so that mins and maxs are always symetric, which
	// avoids some complications with plane expanding of rotated
	// bmodels
	for ( i = 0 ; i < 3 ; i++ )
	{
		assert(maxs[i] >= mins[i]);

        offset = (mins[i] + maxs[i]) * 0.5;
        tw.size[i] = maxs[i] - offset;
        tw.extents.start[i] = start[i] + offset;
        tw.extents.end[i] = end[i] + offset;
        tw.midpoint[i] = (tw.extents.start[i] + tw.extents.end[i]) * 0.5;
        tw.delta[i] = tw.extents.end[i] - tw.extents.start[i];
        tw.halfDelta[i] = tw.delta[i] * 0.5;
        tw.halfDeltaAbs[i] = fabs(tw.halfDelta[i]);
	}

    CM_CalcTraceExtents(&tw.extents);


    tw.deltaLenSq = VectorLengthSquared(tw.delta);
    tw.deltaLen = sqrt(tw.deltaLenSq);

    if ( tw.size[2] >= tw.size[0] )
        tw.radius = tw.size[0];
    else
        tw.radius = tw.size[2];

    tw.boundingRadius = VectorLength(tw.size);
    tw.offsetZ = tw.size[2] - tw.radius;
    
    for(i = 0; i < 2; ++i)
    {
        if ( tw.extents.end[i] <= tw.extents.start[i] )
        {
            tw.bounds[0][i] = tw.extents.end[i] - tw.radius;
            tw.bounds[1][i] = tw.extents.start[i] + tw.radius;
        }
        else
        {
            tw.bounds[0][i] = tw.extents.start[i] - tw.radius;
            tw.bounds[1][i] = tw.extents.end[i] + tw.radius;
        }
    }

	assert(tw.offsetZ >= 0);

    if ( tw.extents.end[2] <= tw.extents.start[2] )
    {
        tw.bounds[0][2] = tw.extents.end[2] - tw.offsetZ - tw.radius;
        tw.bounds[1][2] = tw.radius + tw.extents.start[2] + tw.offsetZ;
    }
    else
    {
        tw.bounds[0][2] = tw.extents.start[2] - tw.offsetZ - tw.radius;
        tw.bounds[1][2] = tw.radius + tw.offsetZ + tw.extents.end[2];
    }
    
    CM_SetAxialCullOnly(&tw);
    
	CM_GetTraceThreadInfo(&tw.threadInfo);

	
	results->sflags = -1; // Valid?
#ifdef BLACKOPS
	oldSurfaceFlags = results->sflags;
	results->sflags = -1;
	tw.doublesided = doublesided_raycasts->current.enabled;
#endif
	oldFrac = results->fraction;


	if ( !VectorCompare(mins, start) )
    {

		assert(tw.size[0] >= 0);
		assert(tw.size[1] >= 0);
		assert(tw.size[2] >= 0);
		
        tw.isPoint = 1;
        if ( tw.size[1] + tw.size[0] + tw.size[2] != 0.0 )
        {
			tw.isPoint = 0;
        }

		assert(tw.offsetZ >= 0);

        tw.radiusOffset[0] = tw.radius;
        tw.radiusOffset[1] = tw.radius;
        tw.radiusOffset[2] = tw.radius + tw.offsetZ;
        if ( model )
        {
			if ( model == CAPSULE_MODEL_HANDLE )
			{
				if ( tw.contents & tw.threadInfo.box_brush->contents )
				{
					CM_TraceCapsuleThroughCapsule(&tw, results);
				}
			}
#ifdef BLACKOPS			
			else if ( model == TEMP_BRUSH_MODEL_HANDLE )
			{
				CM_TraceThroughTempBrush(&tw, results);
			}
#endif
			else
			{
				CM_TraceThroughLeaf(&tw, &cmod->leaf, results);
			}
        }
        else
        {
            vec3_t start_, end_;
			start_[0] = tw.extents.start[0];
			start_[1] = tw.extents.start[1];
			start_[2] = tw.extents.start[2];
			start_[3] = 0.0;
			end_[0] = tw.extents.end[0];
			end_[1] = tw.extents.end[1];
			end_[2] = tw.extents.end[2];
			end_[3] = results->fraction;
#ifdef BLACKOPS
			if ( context->nprims )
				CM_TraceThroughPrimitives(&tw, start_, end_, results, context);
			else
#endif
				CM_TraceThroughTree(&tw, 0, start_, end_, results);
        }
    }
    else
    {
        tw.isPoint = 0;
		
        if ( model )
        {
			if ( model == CAPSULE_MODEL_HANDLE )
			{
				if ( tw.contents & tw.threadInfo.box_brush->contents )
				{
					CM_TestCapsuleInCapsule(&tw, results);
				}
				assert(!IS_NAN(results->fraction));
			}
#ifdef BLACKOPS
			else if ( model == TEMP_BRUSH_MODEL_HANDLE )
			{
				if ( !results->allsolid )
				  CM_TestInTempBrush(&tw, results);
			}
#endif
			else
			{
				if ( !results->allsolid )
				{
					CM_TestInLeaf(&tw, &cmod->leaf, results);
				}
				assert(!IS_NAN(results->fraction));
			}
        }
        else
        {
#ifdef BLACKOPS
			CM_PositionTest(&tw, results, context);
#else
			CM_PositionTest(&tw, results);
#endif
        }
    }
    if ( !results->walkable && !results->startsolid )
    {
        results->walkable = results->normal[2] >= 0.69999999;
    }
	if ( results->fraction < oldFrac )
	{
		assert(results->sflags != SURF_INVALID);
	}
	else
	{
		assert(results->sflags == SURF_INVALID || results->fraction == oldFrac);
#ifdef BLACKOPS
		results->sflags = oldSurfaceFlags;
#endif
	}
/*	
	PIXEndNamedEvent();
*/
}


