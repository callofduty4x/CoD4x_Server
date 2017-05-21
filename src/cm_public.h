#ifndef __CM_PUBLIC_H__
#define __CM_PUBLIC_H__

int CM_BoxLeafnums( const vec3_t mins, const vec3_t maxs, uint16_t *list, int listsize, int *lastLeaf );
byte *CM_ClusterPVS( int cluster );
int CM_PointLeafnum( const vec3_t p );
int CM_LeafCluster( int leafnum );
char *CM_EntityString( void );
void CM_ModelBounds( clipHandle_t model, vec3_t mins, vec3_t maxs );
clipHandle_t CM_InlineModel( int index );
int CM_NumInlineModels( void );
int CM_PointContents(const float *p, unsigned int model);
void SetPlaneSignbits( cplane_t *out );
int CM_TransformedPointContents( const vec3_t p, clipHandle_t model, const vec3_t origin, const vec3_t angles );

#endif