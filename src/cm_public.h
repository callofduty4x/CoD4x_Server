#ifndef __CM_PUBLIC_H__
#define __CM_PUBLIC_H__

int CM_BoxLeafnums( const vec3_t mins, const vec3_t maxs, uint16_t *list, int listsize, int *lastLeaf );
byte *CM_ClusterPVS( int cluster );
int CM_PointLeafnum( const vec3_t p );
int CM_LeafCluster( int leafnum );

#endif