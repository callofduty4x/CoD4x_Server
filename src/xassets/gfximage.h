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
typedef unsigned int _D3DFORMAT;
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

struct GfxImageLoadDef
{
  char levelCount;
  char flags;
  uint16_t dimensions[3];
  _D3DFORMAT format;
  int resourceSize;
  byte data[1]; //Dummy. This will be resourceSize bytes.
};


union GfxTexture
{
  struct IDirect3DBaseTexture9 *basemap;
  struct IDirect3DTexture9 *map;
  struct IDirect3DVolumeTexture9 *volmap;	// if GfxImageLoadDef::flags & 8
  struct IDirect3DCubeTexture9 *cubemap;	// if GfxImageLoadDef::flags & 4
  struct GfxImageLoadDef *loadDef;			//Initial type - getting overridden on loading
};

struct Picmip
{
	byte platform[2];
};


typedef struct GfxImage
{
  MapType_t mapType;
  union GfxTexture texture;
  struct Picmip picmip;
  byte noPicmip;
  byte semantic;
  byte flags;
  byte field_05;
  unsigned short field_06;
  int cardMemoryAmounts[2];
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