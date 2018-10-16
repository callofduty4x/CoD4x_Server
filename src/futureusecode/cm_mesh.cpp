



void CM_TraceCapsuleThroughBorder(traceWork_t *tw, CollisionBorder *border, trace_t *trace)
{
	vec3_t endpos;
	float edgeZ;
	vec3_t edgePoint;
	float traceDeltaDot;
	float t;
	float c;
	float deltaDotOffset;
	float discriminant;
	float radius;
	vec2_t offset;
	float s;
	float offsetLenSq;

	traceDeltaDot = (tw->delta[0] * border->distEq[0]) + (tw->delta[1] * border->distEq[1]);
	if ( traceDeltaDot >= 0.0 )
	{
		return;
	}
	radius = tw->radius + 0.125;
	t = (radius - (((tw->extents.start[0] * border->distEq[0]) + (tw->extents.start[1] * border->distEq[1])) - border->distEq[2])) / traceDeltaDot;
	if ( t >= trace->fraction || -radius > (t * tw->deltaLen) )
	{
		return;
	}
	VectorMA(tw->extents.start, t, tw->delta, endpos);
	s = border->distEq[1] * endpos[0] - border->distEq[0] * endpos[1] - border->start;

	if ( s < 0.0 )
	{
		offset[0] = tw->extents.start[0] - ((border->distEq[1] * border->start) + (border->distEq[0] * border->distEq[2]));  
		offset[1] = tw->extents.start[1] - ((border->distEq[1] * border->distEq[2]) - (border->distEq[0] * border->start));
		deltaDotOffset = (tw->delta[0] * offset[0]) + (tw->delta[1] * offset[1]);
		if ( deltaDotOffset >= 0.0 )
		{
		  return;
		}
		offsetLenSq = (offset[0] * offset[0]) + (offset[1] * offset[1]);
		c = offsetLenSq - (radius * radius);
		if ( c < 0.0 )
		{
			edgepoint[2] = border->zBase;
			
			assertx(tw->offsetZ == tw->size[2] - tw->radius, "tw->offsetZ: %f, tw->size[2]: %f, tw->radius: %f", tw->offsetZ, tw->size[2], tw->radius);
			assert(tw->offsetZ >= 0);

	
			if ( fabs(edgepoint[2] - tw->extents.start[2]) <= tw->offsetZ )
			{
				trace->normal[0] = border->distEq[0];
				trace->normal[1] = border->distEq[1];
				trace->normal[2] = 0.0;

				trace->walkable = 0;
				trace->fraction = 0.0;
				if ( (tw->radius * tw->radius) > offsetLenSq )
				{
					trace->startsolid = 1;
				}
				assertx(Vec3IsNormalized( trace->normal ), "(%g %g %g) len %g", trace->normal[0], trace->normal[1], trace->normal[2], Abs(trace->normal));			
			}
			return;
		}
		discriminant = deltaDotOffset * deltaDotOffset - tw->deltaLenSq * c;
		if ( discriminant < 0.0 )
		{
		  return;
		}

		assertx(tw->deltaLenSq > 0.0f, "(tw->deltaLenSq) = %g", tw->deltaLenSq);

		t = (-deltaDotOffset - fsqrt(discriminant)) / tw->deltaLenSq;
		if ( t >= trace->fraction || t <= 0.0 )
		{
		  return;
		}
		VectorMA(tw->extents.start, t, tw->delta, endpos);
		s = 0.0;
	}
	else if ( s > border->length )
	{
		offset[0] = tw->extents.start[0] - (((border->start + border->length) * border->distEq[1]) + (border->distEq[0] * border->distEq[2]));
		offset[1] = tw->extents.start[1] - ((border->distEq[1] * border->distEq[2]) - ((border->start + border->length) * border->distEq[0]));
		deltaDotOffset = (tw->delta[0] * offset[0]) + (tw->delta[1] * offset[1]);
		
		if ( deltaDotOffset >= 0.0 )
		{
			return;
		}
		offsetLenSq = offset[0] * offset[0] + offset[1] * offset[1];
		c = offsetLenSq - (radius * radius);
		if ( c < 0.0 )
		{
			edgepoint[2] = border->zSlope * border->length + border->zBase;
			
			assertx(tw->offsetZ == tw->size[2] - tw->radius, "tw->offsetZ: %f, tw->size[2]: %f, tw->radius: %f", tw->offsetZ, tw->size[2], tw->radius);
			assert(tw->offsetZ >= 0);
	
			if ( fabs(tw->extents.start[2] - edgepoint[2]) <= tw->offsetZ )
			{
				trace->normal[0] = border->distEq[0];
				trace->normal[1] = border->distEq[1];
				trace->normal[2] = 0.0;

				assertx(Vec3IsNormalized( trace->normal ), "(%g %g %g) len %g", trace->normal[0], trace->normal[1], trace->normal[2], Abs(trace->normal));
				
				trace->walkable = 0;
				trace->fraction = 0.0;
				if ( tw->radius * tw->radius > offsetLenSq )
				{
					trace->startsolid = 1;
				}
			}
			return;
		}
		
		discriminant = deltaDotOffset * deltaDotOffset - tw->deltaLenSq * c;
		if ( discriminant < 0.0 )
		{
		  return;
		}

		assertx(tw->deltaLenSq > 0.0f, "(tw->deltaLenSq) = %g", tw->deltaLenSq);

		t = -deltaDotOffset - fsqrt(discriminant)) / tw->deltaLenSq;
		if( t >= trace->fraction || t <= 0.0)
		{
			return;
		}
		VectorMA(tw->extents.start, t, tw->delta, endpos);
		s = border->length;
	}else{
		if ( t < 0.0 )
		{
			t = 0.0;
		}
	}
    
	edgeZ = s * border->zSlope + border->zBase - endpos[2];
    
	
	assertx(tw->offsetZ == tw->size[2] - tw->radius, "tw->offsetZ: %f, tw->size[2]: %f, tw->radius: %f", tw->offsetZ, tw->size[2], tw->radius);
	assert(tw->offsetZ >= 0);
	
    if ( edgeZ <= tw->offsetZ )
    {
		if ( -tw->offsetZ <= edgeZ )
		{
			trace->fraction = t;			

			assertx(trace->fraction >= 0 && trace->fraction <= 1.0f, "(trace->fraction) = %g", trace->fraction);

			trace->walkable = 0;
			trace->normal[0] = border->distEq[0];
			trace->normal[1] = border->distEq[1];
			trace->normal[2] = 0.0;

			assertx(Vec3IsNormalized( trace->normal ), "(%g %g %g) len %g", trace->normal[0], trace->normal[1], trace->normal[2], Abs(trace->normal));

			return;
		}
		if ( edgeZ > -tw->offsetZ - tw->radius) )
		{
			CM_TraceSphereThroughBorder(tw, border, -tw->offsetZ, trace);
		}
    }
    else if ( (tw->offsetZ + tw->radius) > edgeZ )
    {
      CM_TraceSphereThroughBorder(tw, border, tw->offsetZ, trace);
    }
    return;
  
}





void CM_TraceSphereThroughVertex(traceWork_t *tw, bool isWalkable, const float *sphereStart, const float *v, trace_t *trace)
{
  float v5;
  float approxRecipLen;
  float v9;
  vec3_t delta;
  float deltaLenSq;
  float a, b, c;
  float frac;
  float discriminant;


	VectorSubstract(sphereStart, v, delta);
	b = DotProduct(tw->delta, delta);
	if ( b >= 0.0 )
	{
		return;
	}
	deltaLenSq = VectorLengthSquared(delta);
	
	assertx(deltaLenSq > 0.0f, "(deltaLenSq) = %g", deltaLenSq);
	
    c = deltaLenSq - ((tw->radius + 0.125) * (tw->radius + 0.125));
    if ( c <= 0.0 )
    {
		v5 = 1.0 / fsqrt(deltaLenSq);
		VectorScale(delta, v5, trace->normal);

		trace->walkable = isWalkable;
		trace->fraction = 0.0;
		if ( (tw->radius * tw->radius) > deltaLenSq )
		{
			trace->startsolid = 1;
		}
		return;
	}
    a = tw->deltaLenSq;
    
	assertx(a > 0.0f, "(a) = %g", a);
	
	discriminant = (b * b) - (a * c);
    
    if ( b * b * 0.001 > discriminant )
    {
		return;
	}

    frac = (-fsqrt(discriminant) - b) / a;
    if ( frac >= trace->fraction )
    {
		return;
	}
	
	VectorMA(delta, frac, tw->delta, trace->normal);
	VectorScale(trace->normal, 1.0 / (tw->radius + 0.125), trace->normal);
	
    approxRecipLen = (3.0 - VectorLengthSquared(trace->normal)) * 0.5;
	
	VectorScale(trace->normal, approxRecipLen, trace->normal);

	assertxerror(Vec3IsNormalizedEpsilon(trace->normal, 0.003), "Vec3IsNormalized (%g %g %g) %g, %g %g", 
			trace->normal[0], trace->normal[1], trace->normal[2], Abs(trace->normal), tw->radius + 0.125, Abs(VectorLengthSquared(trace->normal) - 1.0) / 2.0);

	
    trace->walkable = isWalkable;
    trace->fraction = frac;
	
	assertx(trace->fraction >= 0 && trace->fraction <= 1.0f, "(trace->fraction) = %g", trace->fraction);

}




SphereEdgeTraceResult CM_TraceSphereThroughEdge(traceWork_t *tw, const float *sphereStart, const float *v0, const float *v0_v1, trace_t *trace)
{
  float v6, v7, v8, v9, t, f;
  float perpendicularLenSq;
  float scaledProjectionDist;
  float scaledProjectionDista;
  vec3_t hitDelta;
  float discriminant;
  float edgeLenSq;
  vec3_t edgeCrossDelta;
  float radius;
  float radiusSq;
  vec3_t scaledNormal;
  float tScaled;
  float fracEnter;
  vec3_t startDelta;
  float fracLeave;
  vec3_t perpendicular;
  float scaledDist;

  VectorSubstract(sphereStart, v0, startDelta);
  Vec3Cross(v0_v1, tw->delta, perpendicular);
  
  scaledDist = DotProduct(startDelta, perpendicular);
  perpendicularLenSq = VectorLengthSquared(perpendicular);

  radius = tw->radius + 0.125;
  radiusSq = radius * radius;
  discriminant = (radius * radius * perpendicularLenSq) - (scaledDist * scaledDist);
	if ( discriminant <= 0.0 )
	{
		return SPHERE_MISSES_EDGE;
	}
  
    edgeLenSq = VectorLengthSquared(v0_v1);
    f = fsqrt(edgeLenSq * discriminant) / perpendicularLenSq;
    Vec3Cross(startDelta, v0_v1, edgeCrossDelta);
    tScaled = DotProduct(edgeCrossDelta, perpendicular)
    t = tScaled / perpendicularLenSq;
    fracLeave = (tScaled / perpendicularLenSq) + f;
    
	if ( fracLeave < 0.0 )
    {
		return SPHERE_MISSES_EDGE;
	}
    fracEnter = t - f;
    if ( (t - f) >= trace->fraction )
    {
        return SPHERE_MISSES_EDGE;
	}
	
	
	if ( fracEnter >= 0.0 )
    {
		VectorMA(startDelta, fracEnter, tw->delta, hitDelta);

        v7 = DotProduct(hitDelta, v0_v1);
					   
        scaledProjectionDista = -v7;
        if ( scaledProjectionDista <= 0.0 )
		{
			return SPHERE_MAY_HIT_V0;
		}
        if ( scaledProjectionDista >= edgeLenSq )
        {
			return SPHERE_MAY_HIT_V1;
		}
		
		VectorMA(hitDelta, scaledProjectionDista / edgeLenSq, v0_v1, scaledNormal);
        
		v8 = 1.0 / radius;
        VectorScale(scaledNormal, 1.0 / radius, trace->normal);
        
		assertxerror(Vec3IsNormalizedEpsilon( trace->normal, TRACE_NORMAL_EPSILON ), "(%g %g %g) from (%g %g %g) / %g;\n\t\tdelta (%g %g %g), scale %g / %g, edge (%g %g %g)", 
									trace->normal[0], trace->normal[1], trace->normal[2],
									scaledNormal[0], scaledNormal[1], scaledNormal[2],
									radius,
									hitDelta[0], hitDelta[1], hitDelta[2],
									scaledProjectionDista,
									edgeLenSq,
									v0_v1[0], v0_v1[1], v0_v1[2]);

									
        trace->fraction = fracEnter;
        return SPHERE_HITS_EDGE;
		
    }
    else
    {
        v6 = DotProduct(startDelta, v0_v1);
        scaledProjectionDist = -v6;
        
		if ( scaledProjectionDist <= 0.0 )
        {
			return SPHERE_MAY_HIT_V0;
		}
        if ( scaledProjectionDist >= edgeLenSq )
        {
			return SPHERE_MAY_HIT_V1;
		}
		VectorMA(startDelta, scaledProjectionDist / edgeLenSq, v0_v1, scaledNormal);
		sNdeltadp = DotProduct(scaledNormal, tw->delta);
        if ( sNdeltadp >= 0.0 )
        {
			return SPHERE_MISSES_EDGE;
		}
        Vec3NormalizeTo(scaledNormal, trace->normal);
        trace->fraction = 0.0;
        v9 = edgeLenSq * (((tw->radius * tw->radius) * perpendicularLenSq) - (scaledDist * scaledDist));
		if ( v9 <= tScaled * tScaled )
		{
		  trace->startsolid = 0;
		}
		else
		{
		  trace->startsolid = 1;
		}
		return SPHERE_HITS_EDGE;  
    }
}



void CM_TraceSphereThroughBorder(traceWork_t *tw, CollisionBorder *border, float offsetZ, trace_t *trace)
{
  vec3_t v0;
  SphereEdgeTraceResult result;
  vec3_t sphereStart;
  vec3_t v1;
  vec3_t v0_v1;

  v0[0] = (border->distEq[1] * border->start) + (border->distEq[0] * border->distEq[2]);
  v0[1] = (border->distEq[1] * border->distEq[2]) - (border->distEq[0] * border->start);
  v0[2] = border->zBase;
  v1[0] = ((border->start + border->length) * border->distEq[1]) + (border->distEq[0] * border->distEq[2]);
  v1[1] = (border->distEq[1] * border->distEq[2]) - ((border->start + border->length) * border->distEq[0]);
  v1[2] = (border->zSlope * border->length) + border->zBase;
  
  VectorSubstract(v0, v1, v0_v1);
  VectorCopy(tw->extents.start, sphereStart);
  sphereStart[2] = tw->extents.start[2] + offsetZ;

  result = CM_TraceSphereThroughEdge(tw, sphereStart, v0, v0_v1, trace);
  if ( result == SPHERE_MAY_HIT_V0 )
  {
    CM_TraceSphereThroughVertex(tw, 0, sphereStart, v0, trace);
  }
  else if ( result == SPHERE_MAY_HIT_V1 )
  {
    CM_TraceSphereThroughVertex(tw, 0, sphereStart, v1, trace);
  }
}




bool sub_4EFCB0(int idx, int triIndex)
{
  return (cm.triEdgeIsWalkable[(idx + 3 * triIndex) >> 3] & (unsigned __int8)(1 << ((idx + 3 * triIndex) & 7))) != 0;
}

void CM_TraceCapsuleThroughTriangle(traceWork_t *tw, int triIndex, const unsigned __int16 *indices, trace_t *trace)
{
	const float *v0, *v1, *v2;
	float hitDist;
	vec3_t normal, triNormalScaledByAreaX2, start_v0;
	vec3_t v0_v1, v0_v2, v1_v2;
 	const float *vertToCheck;
	float hitFrac;
	bool missedEdge;
	SphereEdgeTraceResult edgeTraceResult;
 	float areaX2;
	float startDist;
	vec3_t sphereStart;
	vec3_t tracePlaneScaledNormal;
	float projTriAreaScaledByTraceLenX2;
	float negativeV;
	float u;
	vec3_t shiftedStart;
	bool startSolid;
	float hitDist;
	bool isWalkable;	
	
	v0 = cm.verts[*indices];
	v1 = cm.verts[indices[1]];
	v2 = cm.verts[indices[2]];
	
	VectorSubstract(v0, v1, v0_v1);
	VectorSubstract(v0, v2, v0_v2);
	Vec3Cross(v0_v2, v0_v1, triNormalScaledByAreaX2);
	projTriAreaScaledByTraceLenX2 = DotProduct(tw->delta, triNormalScaledByAreaX2);
	if ( projTriAreaScaledByTraceLenX2 >= 0.0 )
	{
		return;
	}
	
	areaX2 = Vec3NormalizeTo(triNormalScaledByAreaX2, normal);
	VectorCopy(tw->extents.start, sphereStart);
	
	if ( normal[2] < 0.0 )
	{
		sphereStart[2] = sphereStart[2] + tw->offsetZ;
	}else{
		sphereStart[2] = sphereStart[2] - tw->offsetZ;
	}
	VectorMA(sphereStart, -tw->radius, normal, shiftedStart);
    VectorSubstract(shiftedStart, v0, start_v0);
	hitDist = DotProduct(start_v0, normal);
	
	if ( hitDist >= 0.0 )
    {
      hitFrac = -((histDist - 0.125) * areaX2 / projTriAreaScaledByTraceLenX2);
      if ( trace->fraction <= hitFrac )
	  {
        return;
	  }
	  startSolid = 0;
    }else{
		VectorSubstract(sphereStart, v0, start_v0);
		startDist = DotProduct(start_v0, normal);
		if ((startDist * startDist) >= (tw->radius * tw->radius) )
		{
			return;
		}
		VectorMA(start_v0, -startDist, normal, start_v0);
		hitFrac = 0.0;
		startSolid = 1;
	}
	
	Vec3Cross(tw->delta, start_v0, tracePlaneScaledNormal);
    
	missedEdge = 0;
    isWalkable = 1;
    vertToCheck = 0;
    negativeV = DotProduct(tracePlaneScaledNormal, v0_v1);
	
	if ( negativeV < 0.0 )
    {
      missedEdge = 1;
      edgeTraceResult = CM_TraceSphereThroughEdge(tw, sphereStart, v0, v0_v1, trace);
      if ( edgeTraceResult == SPHERE_HITS_EDGE )
      {
        trace->walkable = sub_4EFCB0(2, triIndex);
        return;
      }
      if ( edgeTraceResult != SPHERE_MISSES_EDGE )
      {
        if ( edgeTraceResult == SPHERE_MAY_HIT_V0 )
          vertToCheck = v0;
        else
          vertToCheck = v1;
	  
        isWalkable &= sub_4EFCB0(2, triIndex);
      }
    }
	u = DotProduct(tracePlaneScaledNormal, v0_v2);
    if ( u > 0.0 )
    {
      missedEdge = 1;
      edgeTraceResult = CM_TraceSphereThroughEdge(tw, sphereStart, v0, v0_v2, trace);
      if ( edgeTraceResult == SPHERE_HITS_EDGE )
      {
        trace->walkable = sub_4EFCB0(1, triIndex);
        return;
      }
      if ( edgeTraceResult != SPHERE_MISSES_EDGE )
      {
        if ( edgeTraceResult == SPHERE_MAY_HIT_V0 )
          vertToCheck = v0;
        else
          vertToCheck = v2;

		isWalkable &= sub_4EFCB0(1, triIndex);
      }
    }
	if ( projTriAreaScaledByTraceLenX2 > (u - negativeV) )
    {
      missedEdge = 1;
	  VectorSubstract(v1, v2, v1_v2);

      edgeTraceResult = CM_TraceSphereThroughEdge(tw, sphereStart, v1, v1_v2, trace);
      if ( edgeTraceResult == SPHERE_HITS_EDGE )
      {
        trace->walkable = sub_4EFCB0(0, triIndex);
        return;
      }
      if ( edgeTraceResult != SPHERE_MISSES_EDGE )
      {
        if ( edgeTraceResult == SPHERE_MAY_HIT_V0 )
          vertToCheck = v1;
        else
          vertToCheck = v2;

		isWalkable &= sub_4EFCB0(0, triIndex);
      }
    }
	if ( missedEdge )
    {
		if ( vertToCheck )
		{
			CM_TraceSphereThroughVertex(tw, isWalkable, sphereStart, vertToCheck, trace);
		}
		return;
	}
	VectorCopy(normal, trace->normal);
	trace->walkable = 0;
    trace->fraction = max(0.0, hitFrac);
    trace->startsolid = startSolid;
	
	assertx(Vec3IsNormalized( trace->normal ), "(%g %g %g) len %g", trace->normal[0], trace->normal[1], trace->normal[2], Abs(trace->normal));
	assertx(trace->fraction >= 0 && trace->fraction <= 1.0f, "(trace->fraction) = %g", trace->fraction);

}




void CM_TracePointThroughTriangle(traceWork_t *tw, const uint16_t *indices, trace_t *trace)
{
  float *ivert0;
  float *ivert1;
  float *ivert2;
  vec3_t v8;
  float projTriAreaScaledByTraceLenX2;
  float t;
  float v;
  float v15;
  vec3_t triNormalScaledByAreaX2;
  vec3_t v23;

  ivert0 = cm.verts[indices[0]];
  ivert1 = cm.verts[indices[1]];
  ivert2 = cm.verts[indices[2]];

  VectorSubstract(ivert0, ivert1, v19);
  VectorSubstract(ivert0, ivert2, v16);
  
  Vec3Cross(v16, v19, triNormalScaledByAreaX2);

  projTriAreaScaledByTraceLenX2 = DotProduct(tw->delta, triNormalScaledByAreaX2);
  if(projTriAreaScaledByTraceLenX2 >= 0.0)
  {
	  return;
  }
	VectorSubstract(ivert0, tw->extents.start, v23)
    t = DotProduct(triNormalScaledByAreaX2, v23);
	if ( t > 0.0 || trace->fraction * projTriAreaScaledByTraceLenX2 >= t )
	{
		return;
	}
	Vec3Cross(tw->delta, v23, tracePlaneScaledNormal);
	v = DotProduct(tracePlaneScaledNormal, v19);
    if ( v > 0.0 || projTriAreaScaledByTraceLenX2 > v )
    {
		return;
	}
    negativeU = DotProduct(tracePlaneScaledNormal, v16);
    if ( negativeU < 0.0 || v - negativeU < projTriAreaScaledByTraceLenX2 )
    {
		return;
    }
	trace->walkable = 0;
    Vec3NormalizeTo(triNormalScaledByAreaX2, trace->normal);
    trace->fraction = t / projTriAreaScaledByTraceLenX2;
	
	assertx(trace->fraction >= 0 && trace->fraction <= 1.0f, "(trace->fraction) = %g", trace->fraction);

}




void CM_TraceThroughAabbTree(traceWork_t *tw, CollisionAabbTree *aabbTree, trace_t *trace)
{
  dmaterial_t *materialInfo;
  float oldFraction;

  materialInfo = &cm.materials[aabbTree->materialIndex];
  if ( tw->contents & materialInfo->contentFlags )
  {
    oldFraction = trace->fraction;
    CM_TraceThroughAabbTree_r(tw, aabbTree, trace);
    if ( oldFraction > trace->fraction )
    {
      trace->sflags = materialInfo->surfaceFlags;
      trace->cflags = materialInfo->contentFlags;
#ifndef BLACKOPS
      trace->material = materialInfo->material;
#endif
    }
  }
}



void CM_TraceThroughAabbTree_work(traceWork_t *tw, CollisionAabbTree *aabbTree, trace_t *trace)
{
  CollisionBorder *borders;
  vec3_t v0_v2;
  vec3_t v0_v1;
  bool hit;
  dmaterial_t *materialInfo;
  uint16_t *indices;
  int checkStamp;
  int borderIndex;
  const float *v0;
  const float *v2;
  int partitionIndex;
  const float *v1;
  int triIndex;
  float orig_frac;
  CollisionPartition *partition;

  orig_frac = trace->fraction;
  partitionIndex = aabbTree->u.partitionIndex;
  checkStamp = tw->threadInfo.checkcount.global;
  if ( tw->threadInfo.checkcount.partitions && tw->threadInfo.checkcount.partitions[partitionIndex] != checkStamp )
  {
    tw->threadInfo.checkcount.partitions[partitionIndex] = checkStamp;
    partition = &cm.partitions[partitionIndex];
    if ( tw->isPoint )
    {
      indices = &cm.triIndices[3 * partition->firstTri];
      materialInfo = &cm.materials[aabbTree->materialIndex];
      if ( !tw->doublesided || materialInfo->contentFlags & CONTENTS_WATER )
      {
        for ( triIndex = 0; triIndex < partition->triCount; ++triIndex )
        {
          CM_TracePointThroughTriangle(tw, &indices[3 * triIndex], trace);
        }
      }
      else
      {
        hit = 0;
        for ( triIndex = 0; triIndex < partition->triCount; ++triIndex )
        {
          v0 = cm.verts[indices[3 * triIndex]];
          v1 = cm.verts[indices[3 * triIndex + 1]];
          v2 = cm.verts[indices[3 * triIndex + 2]];
          if ( trace_point_through_triangle(tw->extents.start, tw->delta, v0, v1, v2, trace->fraction, &trace->fraction) )
          {
            hit = 1;
            VectorSubstract(v0, v1, v0_v1);
            VectorSubstract(v0, v2, v0_v2);
            Vec3Cross(v0_v2, v0_v1, trace->normal);
          }
        }
        if ( hit )
        {
			Vec3Normalize(trace->normal);
			if ( DotProduct(trace->normal, tw->delta) > 0.0 )
			{
				VectorInverse(trace->normal);
			}
        }
      }
    }
    else
    {
      indices = &cm.triIndices[3 * partition->firstTri];
      for ( triIndex = 0; triIndex < partition->triCount; ++triIndex )
      {
        CM_TraceCapsuleThroughTriangle(tw, triIndex, &indices[3 * triIndex], trace);
      }
      if ( (tw->delta[0] != 0.0 || tw->delta[1] != 0.0) && tw->offsetZ != 0.0)
      {
          if ( partition->borderCount )
          {
            borders = partition->borders;
            for ( borderIndex = 0; borderIndex < partition->borderCount; ++borderIndex )
            {
              CM_TraceCapsuleThroughBorder(tw, &borders[borderIndex], trace);
            }
          }
      }
    }
    if ( orig_frac > trace->fraction )
    {
      trace->hitPartition = partitionIndex;
    }
  }
}


void CM_TraceThroughAabbTree_r(traceWork_t *tw, CollisionAabbTree *aabbTree, trace_t *trace)
{

  CollisionAabbTree *localTree;
  CollisionAabbTree *now;
  CollisionAabbTree *child;
  CollisionAabbTree *stack[128];
  unsigned int sp;



  if ( !CM_CullBox(tw, aabbTree->origin, aabbTree->halfSize) )
  {
    for(sp = 1, stack[0] = aabbTree; sp; --sp)
    {
      aabbTree = stack[sp];
      if ( aabbTree->childCount )
      {
        child = &cm.aabbTrees[aabbTree->u.firstChildIndex];
        now = &child[aabbTree->childCount];
        do
        {
          --now;
          localTree = now;
          
          if ( !CM_CullBox(tw, localTree->origin, localTree->halfSize) )
          {
            assertx(sp < (sizeof( stack ) / (sizeof( stack[0] ) * (sizeof( stack ) != 4 || sizeof( stack[0] ) <= 4))), "(sp) = %i", sp);
            stack[sp] = localTree;
			sp++;
          }
        }
        while ( now != child );
      }
      else
      {
        CM_TraceThroughAabbTree_work(tw, aabbTree, trace);
      }
    }
  }
}



void CM_TraceThroughPartition(traceWork_t *tw, int partitionIndex, trace_t *trace)
{
  vec3_t v0_v2;
  vec3_t v0_v1;
  bool hit;
  int checkStamp;
  int borderIndex;
  const float *v0;
  const float *v2;
  unsigned __int16 *indices;
  const float *v1;
  int triIndex;
  CollisionPartition *partition;

  checkStamp = tw->threadInfo.checkcount.global;
  if ( tw->threadInfo.checkcount.partitions && tw->threadInfo.checkcount.partitions[partitionIndex] != checkStamp )
  {
    tw->threadInfo.checkcount.partitions[partitionIndex] = checkStamp;
    partition = &cm.partitions[partitionIndex];
    indices = &cm.triIndices[3 * cm.partitions[partitionIndex].firstTri];
    if ( tw->isPoint )
    {
      if ( tw->doublesided )
      {
        hit = 0;
        for ( triIndex = partition->firstTri; triIndex < partition->firstTri + partition->triCount; ++triIndex )
        {
          v0 = cm.verts[indices[3 * triIndex]];
          v1 = cm.verts[indices[3 * triIndex + 1]];
          v2 = cm.verts[indices[3 * triIndex + 2]];
          if ( trace_point_through_triangle(tw->extents.start, tw->delta, v0, v1, v2, trace->fraction, &trace->fraction) )
          {
            hit = 1;
			VectorSubstract(v0, v1, v0_v1);
			VectorSubstract(v0, v2, v0_v2);
            Vec3Cross(v0_v2, v0_v1, trace->normal.vec.v);
          }
        }
        if ( hit )
        {
          Vec3Normalize(trace->normal);
          if ( DotProduct(trace->normal, tw->delta) > 0.0 )
          {
			VectorInverse(trace->normal);
          }
        }
      }
      else
      {
        for ( triIndex = partition->firstTri; triIndex < partition->firstTri + partition->triCount; ++triIndex )
        {
          CM_TracePointThroughTriangle(tw, &cm.triIndices[3 * triIndex], trace);
        }
      }
    }
    else
    {
      for ( triIndex = partition->firstTri; triIndex < partition->firstTri + partition->triCount; ++triIndex )
      {
        CM_TraceCapsuleThroughTriangle(tw, triIndex, &cm.triIndices[3 * triIndex], trace);
      }
      if ( (tw->delta[0] != 0.0 || tw->delta[1] != 0.0) && tw->offsetZ != 0.0 )
      {
          for ( borderIndex = 0; borderIndex < partition->borderCount; ++borderIndex )
          {
            CM_TraceCapsuleThroughBorder(tw, &partition->borders[borderIndex], trace);
          }
      }
    }
  }
}




void CM_MeshTestInLeaf(traceWork_t *tw, cLeaf_s *leaf, trace_t *trace)
{
  dmaterial_t *materialInfo;
  int k;
  CollisionAabbTree *aabbTree;

  
  assert(!tw->isPoint);
  assert(!trace->allsolid);
  
  for ( k = 0; k < leaf->collAabbCount; ++k )
  {
    aabbTree = &cm.aabbTrees[k + leaf->firstCollAabbIndex];
    materialInfo = &cm.materials[aabbTree->materialIndex];
    if ( materialInfo->contentFlags & tw->contents )
    {
      CM_PositionTestInAabbTree_r(tw, aabbTree, trace);
      if ( trace->allsolid )
      {
        trace->sflags = materialInfo->surfaceFlags;
        trace->cflags = materialInfo->contentFlags;
#ifndef BLACKOPS
        trace->material = materialInfo;
#endif
		return;
      }
    }
  }
}




void CM_PositionTestInAabbTree_r(traceWork_t *tw, CollisionAabbTree *aabbTree, trace_t *trace)
{
  int checkStamp;
  int childIndex;
  int triCount;
  unsigned __int16 *indices;
  int partitionIndex;
  CollisionAabbTree *child;
  CollisionPartition *partition;


  if ( !CM_CullBox(tw, aabbTree->origin, aabbTree->halfSize) )
  {
    if ( aabbTree->childCount )
    {
      child = &cm.aabbTrees[aabbTree->u.firstChildIndex];
      childIndex = 0;
      while ( childIndex < aabbTree->childCount )
      {
        CM_PositionTestInAabbTree_r(tw, child, trace);
        if ( trace->startsolid )
        {
          break;
        }
        ++childIndex;
        ++child;
      }
    }
    else
    {
      partitionIndex = aabbTree->u.firstChildIndex;
      checkStamp = tw->threadInfo.checkcount.global;
      if ( tw->threadInfo.checkcount.partitions && tw->threadInfo.checkcount.partitions[partitionIndex] != checkStamp )
      {
        tw->threadInfo.checkcount.partitions[partitionIndex] = checkStamp;
        partition = &cm.partitions[partitionIndex];
        indices = &cm.triIndices[3 * cm.partitions[partitionIndex].firstTri];
        for ( triCount = cm.partitions[partitionIndex].triCount; triCount; --triCount )
        {
          CM_PositionTestCapsuleInTriangle(tw, indices, trace);
          if ( trace->startsolid )
          {
            break;
          }
          indices += 3;
        }
      }
    }
  }
}




void CM_PositionTestCapsuleInTriangle(traceWork_t *tw, uint16_t *indices, trace_t *trace)
{
  vec3_t start;
  vec3_t end;
  float distSq;

  if ( tw->offsetZ != 0.0 )
  {
	VectorCopy(tw->extents.start, start);
    start[0] = tw->extents.start[0];
    start[1] = tw->extents.start[1];
    start[2] += tw->offsetZ;
    end[2] -= tw->offsetZ
    if ( CM_DoesCapsuleIntersectTriangle(start, end, Square(tw->radius), indices) )
    {
      trace->fraction = 0.0;
      trace->startsolid = 1;
      trace->allsolid = 1;
    }
  }
  else
  {
    distSq = CM_DistanceSquaredFromPointToTriangle(tw->extents.start, indices);
    if ( Square(tw->radius) > distSq )
    {
      trace->fraction = 0.0;
      trace->startsolid = 1;
      trace->allsolid = 1;
    }
  }
}



double CM_DistanceSquaredFromPointToTriangle(const float *pt, const unsigned __int16 *indices)
{
  float a11, a00;
  const float *v0, *v2, *v1;
  vec3_t e0, e1;
  vec3_t ptOnTri;

  v0 = cm.verts[*indices];
  v1 = cm.verts[indices[1]];
  v2 = cm.verts[indices[2]];

  VectorSubstract(v1, v0, e0);
  VectorSubstract(v2, v0, e1);
  a00 = VectorLengthSquared( e0 );
  a11 = VectorLengthSquared( e1 );
  CM_ClosestPointOnTri(pt, v0, e0, e1, a00, DotProduct(e0, e1), a11, ptOnTri);
  return Vec3DistanceSq(pt, ptOnTri);
}



void CM_ClosestPointOnTri(const float *pt, const float *v0, const float *e0, const float *e1, float a00, float a01, float a11, float *ptOnTri)
{
  float v0_pt_0;
  float v0_pt_4;
  float v0_pt_8;
  float b1;
  float det;
  float u;
  float ua;
  float v;
  float va;
  float denom;
  float b0;
  float numer;

  VectorSubstract(pt, v0, v0_pt);

  b0 = DotProduct(e0, v0_pt);
  b1 = DotProduct(e1, v0_pt);
  
  det = (a00 * a11) - (a01 * a01);
  u = (a01 * b1) - (a11 * b0);
  v = (a01 * b0) - (a00 * b1);
  
  if ( det >= (u + v) )
  {
    if ( u < 0.0 )
    {
      if ( v < 0.0 )
      {
        ua = 0.0;
        va = 0.0;
        if ( b0 >= 0.0 )
        {
          if ( b1 >= 0.0 )
          {
            goto LABEL_33;
          }
          goto region_3;
        }
        goto region_5;
      }
region_3:
      ua = 0.0;
      if ( b1 < 0.0 )
      {
        if ( (-b1) < a11 )
        {
          va = (-b1) / a11;
        }
        else
        {
          va = 0.0;
        }
      }
      else
      {
        va = 0.0;
      }
      goto LABEL_33;
    }
    if ( v >= 0.0 )
    {
      ua = u * (1.0 / det);
      va = v * (1.0 / det);
      goto LABEL_33;
    }
region_5:
    va = 0.0;
    if ( b0 < 0.0 )
    {
      if ( -b0 < a00 )
      {
        ua = (-b0) / a00;
      }
      else
      {
        ua = 1.0;
      }
    }
    else
    {
      ua = 0.0;
    }
    goto LABEL_33;
  }
  if ( u >= 0.0 )
  {
    if ( v < 0.0 )
    {
      ua = 1.0;
      va = 0.0;
      if ( (a00 + b0) > 0.0 )
      {
        goto region_5;
      }
      if ( (a00 + b0) <= (a01 + b1) )
      {
        goto LABEL_33;
      }
    }
  }
  else
  {
    ua = 0.0;
    va = 1.0;
    if ( (a11 + b1) > 0.0 )
    {
      goto region_3;
    }
    if ( (a11 + b1) <= (a01 + b0) )
    {
      goto LABEL_33;
    }
  }
  numer = ((a11 - a01) + b1) - b0;
  if ( numer >= 0.0 )
  {
    denom = (a00 - (2.0 * a01)) + a11;
    if ( numer < denom )
    {
      ua = numer / denom;
      va = 1.0 - (numer / denom);
    }
    else
    {
      ua = 1.0;
      va = 0.0;
    }
  }
  else
  {
    ua = 0.0;
    va = 1.0;
  }
LABEL_33:
	VectorMA(v0, ua, e0, ptOnTri);
	VectorMA(ptOnTri, va, e1, ptOnTri);
	return;
}





bool CM_IsPointOverTriangle(const float *pt, const float *v0, const float *e0, const float *e1, long double a00, long double a01, long double a11, long double det)
{
  vec3_t v0_pt;
  double b1;
  double u;
  double v;
  double b0;

  VectorSubstract(v0, pt, v0_pt);

  b0 = DotProduct(e0, v0_pt);
  b1 = DotProduct(e1, v0_pt);
  u = a01 * b1 - a11 * b0;
  if ( u >= 0.0 )
  {
    v = a01 * b0 - a00 * b1;
    if(v >= 0.0 && det >= u + v)
	{
		return 1;
	}
  }
  return 0;
}




bool CM_DoesCapsuleIntersectTriangle(const float *start, const float *end, float radiusSq, const uint16_t *indices)
{
  float v4;
  const float *v0;
  vec3_t v2_v0;
  long double a01;
  vec3_t scaledPlaneNormal;
  bool isEndCloseEnough;
  float distSqToEdge;
  vec3_t delta;
  long double a11;
  long double scaledPlaneDist;
  bool isStartCloseEnough;
  long double a00;
  long double det;
  const float *v2;
  vec3_t v1_v0;
  const float *v1;
  vec3_t v2_v1;
  vec3_t pt;
  long double cutoffDistSq;
  long double scaleSq;
  long double scaledDist[2];

  v0 = cm.verts[*indices];
  v1 = cm.verts[indices[1]];
  v2 = cm.verts[indices[2]];
  
  VectorSubstract(v1, v0, v1_v0);
  VectorSubstract(v2, v0, v2_v0);
  
  Vec3Cross(v1_v0, v2_v0, scaledPlaneNormal);
  scaledPlaneDist = DotProduct(v0, scaledPlaneNormal);
 
  scaledDist[0] = DotProduct(start, scaledPlaneNormal) - scaledPlaneDist;
  scaledDist[1] = DotProduct(end, scaledPlaneNormal) - scaledPlaneDist;
  if ( scaledDist[0] * scaledDist[1] >= 0.0 )
  {
    scaleSq = VectorLengthSquared(scaledPlaneNormal);
    cutoffDistSq = radiusSq * scaleSq;
	isStartCloseEnough = cutoffDistSq > Square(scaledDist[0]);
    isEndCloseEnough = cutoffDistSq > Square(scaledDist[1]);
    if ( !isEndCloseEnough && !isStartCloseEnough )
    {
      return 0;
    }
    a00 = VectorLengthSquared(v1_v0);
    a01 = DotProduct(v1_v0, v2_v0);
    a11 = VectorLengthSquared(v2_v0);
    det = a00 * a11 - a01 * a01;
  }
  else
  {
    a00 = VectorLengthSquared(v1_v0);
    a01 = DotProduct(v1_v0, v2_v0);
    a11 = VectorLengthSquared(v2_v0);
    det = a00 * a11 - a01 * a01;
    v4 = scaledDist[0] / (scaledDist[0] - scaledDist[1]);
    Vec3Lerp(start, end, v4, pt);
    if ( CM_IsPointOverTriangle(pt, v0, v1_v0, v2_v0, a00, a01, a11, det) )
    {
      return 1;
    }
    scaleSq = VectorLengthSquared(scaledPlaneNormal);
    cutoffDistSq = radiusSq * scaleSq;
    isStartCloseEnough = cutoffDistSq > Square(scaledDist[0]);
    isEndCloseEnough = cutoffDistSq > Square(scaledDist[1]);
  }
  if ( isStartCloseEnough && CM_IsPointOverTriangle(start, v0, v1_v0, v2_v0, a00, a01, a11, det) )
  {
    return 1;
  }
  else if ( isEndCloseEnough && CM_IsPointOverTriangle(end, v0, v1_v0, v2_v0, a00, a01, a11, det) )
  {
    return 1;
  }
	VectorSubstract(end, start, delta);

    distSqToEdge = CM_DistanceSquaredBetweenSegments(start, delta, v0, v1_v0);
    if ( radiusSq <= distSqToEdge )
    {
      distSqToEdge = CM_DistanceSquaredBetweenSegments(start, delta, v0, v2_v0);
      if ( radiusSq <= distSqToEdge )
      {
		VectorSubstract(v2, v1, v2_v1);
        distSqToEdge = CM_DistanceSquaredBetweenSegments(start, delta, v1, v2_v1);
        return radiusSq > distSqToEdge;
      }
      return 1;
    }
    return 1;

}





double CM_DistanceSquaredBetweenSegments(const float *start0, const float *delta0, const float *start1, const float *delta1)
{
  double b1;
  double a01;
  double c;
  double a11;
  double numer0;
  double a00;
  double det;
  vec3_t s0_s1;
  double numer1;
  double b0;

  a00 = VectorLengthSquared(delta0);
  a01 = DotProduct(delta0, delta1);
  a11 = VectorLengthSquared(delta1);
  VectorSubstract(start0, start1, s0_s1);
  b0 = DotProduct(delta0, s0_s1);
  b1 = DotProduct(delta1, s0_s1);
  c = VectorLengthSquared(s0_s1);
  det = a00 * a11 - a01 * a01;
  numer0 = b1 * a01 - b0 * a11;
  if ( numer0 > 0.0 )
  {
    if ( numer0 < det )
    {
      numer1 = b1 * a00 - b0 * a01;
      if ( numer1 > 0.0 )
      {
        if ( numer1 < det )
        {
          return ((b0 - a01 * (numer1 * (1.0 / det)) + b0 - a01 * (numer1 * (1.0 / det)) + a00 * (numer0 * (1.0 / det))) * (numer0 * (1.0 / det))
                + (a11 * (numer1 * (1.0 / det)) - (b1 + b1)) * (numer1 * (1.0 / det)) + c);
        }
        goto t1_is_clamped_to_1;
      }
    }
    else
    {
      numer1 = b1 + a01;
      if ( b1 + a01 > 0.0 )
      {
        if ( numer1 < a11 )
        {
          return ((a11 * (numer1 / a11) - (a01 + b1 + a01 + b1)) * (numer1 / a11) + a00 + b0 + b0 + c);
        }
        goto t1_is_clamped_to_1;
      }
    }
t1_is_clamped_to_0:
    if ( b0 < 0.0 )
    {
      if ( -b0 < a00 )
      {
        return (b0 + b0 + a00 * (-b0 / a00)) * (-b0 / a00) + c;
      }
      return b0 + b0 + a00 + c;
    }
    return VectorLengthSquared(s0_s1);
  }
  if ( b1 <= 0.0 )
  {
    goto t1_is_clamped_to_0;
  }
  if ( b1 < a11 )
  {
    return ((a11 * (b1 / a11) - (b1 + b1)) * (b1 / a11) + c);
  }
t1_is_clamped_to_1:
  if ( b0 < a01 )
  {
    if ( a01 - b0 < a00 )
    {
      return (a00 * ((a01 - b0) / a00) + b0 - a01 + b0 - a01) * ((a01 - b0) / a00) + a11 - (b1 + b1) + c;
    }
	return a00 + a11 + b0 - b1 - a01 + b0 - b1 - a01 + c;
  }
  return a11 - (b1 + b1) + c;
}





void CM_MeshTest(traceWork_t *tw, CollisionAabbTree *tree, trace_t *trace)
{
  int checkStamp;
  dmaterial_t *materialInfo;
  int triCount;
  uint16_t *indices;
  int partitionIndex;
  CollisionPartition *partition;

  assert(!tw->isPoint);
  assert(!trace->allsolid);

  materialInfo = &cm.materials[tree->materialIndex];
  if ( materialInfo->contentFlags & tw->contents )
  {
    partitionIndex = tree->u.firstChildIndex;
    partition = &cm.partitions[partitionIndex];
    checkStamp = tw->threadInfo.checkcount.global;
    if ( tw->threadInfo.checkcount.partitions )
    {
      if ( tw->threadInfo.checkcount.partitions[partitionIndex] != checkStamp )
      {
        tw->threadInfo.checkcount.partitions[partitionIndex] = checkStamp;
        indices = &cm.triIndices[3 * partition->firstTri];
        for ( triCount = partition->triCount; triCount; --triCount )
        {
          CM_PositionTestCapsuleInTriangle(tw, indices, trace);
          if ( trace->startsolid )
          {
            break;
          }
          indices += 3;
        }
        if ( trace->allsolid )
        {
          trace->sflags = materialInfo->surfaceFlags;
          trace->cflags = materialInfo->contentFlags;
#ifndef BLACKOPS
		  trace->material = materialInfo->material;
#endif
        }
      }
    }
  }
}

bool Vec3IsNormalizedEpsilon(const float *v, float epsilon)
{
	if((2.0 * epsilon) > fabs(VectorLengthSquared( v ) - 1.0))
	{
		return true;
	}
	return false;
}

void CM_SightTraceThroughAabbTree(traceWork_t *tw, CollisionAabbTree *aabbTree, trace_t *trace)
{
  CM_TraceThroughAabbTree(tw, aabbTree, trace);
}


