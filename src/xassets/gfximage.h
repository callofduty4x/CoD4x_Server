#ifndef __GFXIMAGE_H__
#define __GFXIMAGE_H__

/*
d3d9.h must be included before this file if used at all
*/

typedef struct IDirect3DBaseTexture9           D3DBaseTexture;
typedef struct IDirect3DTexture9               D3DTexture;
typedef struct IDirect3DVolumeTexture9         D3DVolumeTexture;
typedef struct IDirect3DCubeTexture9           D3DCubeTexture;
typedef struct IDirect3DSurface9			   D3DSurface;

#ifndef DIRECT3D_VERSION
typedef unsigned int D3DFORMAT;

#endif

typedef enum MapType_s
{
  MAPTYPE_NONE = 0x0,
  MAPTYPE_INVALID1 = 0x1,
  MAPTYPE_INVALID2 = 0x2,
  MAPTYPE_2D = 0x3,
  MAPTYPE_3D = 0x4,
  MAPTYPE_CUBE = 0x5,
  MAPTYPE_COUNT = 0x6,
}MapType_t;

typedef union
{
	D3DBaseTexture *basemap;
	D3DTexture *map;
	D3DVolumeTexture *volmap;	// if GfxImageLoadDef::flags & 8
	D3DCubeTexture *cubemap;	// if GfxImageLoadDef::flags & 4
	struct GfxImageLoadDef_t *loadDef;
}GfxTexture_t;
 
struct GfxImageLoadDef_t
{
	char levelCount;
	char flags;
	short dimensions[3];
	D3DFORMAT format;
	GfxTexture_t texture;
};

typedef struct
{
	struct GfxImageLoadDef_t *loadDef;
}GfxTextureLoad_t;


typedef struct GfxImage
{
	MapType_t mapType;
	GfxTextureLoad_t texture;
	byte array_00[2];
	byte field_02;
	byte field_03;	
	byte flags;
	byte field_05;
	unsigned short field_06;
	int array_08[2];
	unsigned short width;
	unsigned short height;
	unsigned short depth;
	byte category;
	byte streaming;
	const char *name;
}GfxImage_t;

struct GfxLightImage
{
  struct GfxImage *image;
  char samplerState;
  char pad[3];
};


struct GfxLightDef
{
  const char *name;
  struct GfxLightImage attenuation;
  int lmapLookupStart;
};


#endif