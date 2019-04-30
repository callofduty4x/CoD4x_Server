#ifdef __WIN32
#include <d3d9.h>
#endif

#include "../xassets.h"
#include "../xassets/gfxworld.h"
#include "../xassets/gfximage.h"
#include "../world.h"
#include "l_cmd.h"
#include "qbsp.h"


class IDirect3DIndexBuffer9;
ComWorld comWorld;

extern "C"{

void __cdecl Load_Texture(struct GfxImageLoadDef **remoteLoadDef, struct GfxImage *image)
{
	int size;
	struct GfxImageLoadDef *loadDef;
	loadDef = *remoteLoadDef;

	image->texture.loadDef = 0;
	if ( loadDef->resourceSize )
	{
		size = sizeof(GfxImageLoadDef) + loadDef->resourceSize -1;
	}else{
		size = sizeof(GfxImageLoadDef);
	}
	
	struct GfxImageLoadDef *outmem = (struct GfxImageLoadDef *)Hunk_Alloc(size);

	if(outmem == NULL)
	{
		Error("Out of memory to load image %s\n", image->name);
	}

	memcpy(outmem, loadDef, size);

	image->texture.loadDef = outmem;

}

void __cdecl Load_VertexBuffer(IDirect3DVertexBuffer9 **vb, void *bufferData, int sizeInBytes)
{
    *vb = 0;
}

void __cdecl Load_BuildVertexDecl(struct MaterialVertexDeclaration **mtlVertDecl)
{
}

void __cdecl Load_CreateMaterialVertexShader(struct GfxVertexShaderLoadDef *loadDef, struct MaterialVertexShader *mtlShader)
{
}

void __cdecl Load_CreateMaterialPixelShader(struct GfxPixelShaderLoadDef *loadDef, struct MaterialPixelShader *mtlShader)
{
}


void __cdecl Load_SndAliasCustom(snd_alias_list_t **name)
{
  if ( *name )
  {
    varXStringPtr = (char***)name;
    Load_XStringPtr(0);
    XAssetHeader xah = DB_FindXAssetHeader(ASSET_TYPE_SOUND, **varXStringPtr, false, 100);
    *name = xah.sound;
  }
}


void __cdecl Load_SetSoundData(byte **data, MssSound *sound)
{
    sound->data = NULL;
}

void __cdecl Load_PicmipWater(struct water_t **water)
{
}


#include <windows.h>

LPVOID __cdecl _VirtualAlloc(LPVOID address, SIZE_T dwSize, DWORD flAllocationType, DWORD flProtect)
{
    return VirtualAlloc(address, dwSize, flAllocationType, flProtect);
}

BOOL __cdecl _VirtualFree(LPVOID lpAddress, SIZE_T dwSize, DWORD dwFreeType)
{
    return VirtualFree(lpAddress, dwSize, dwFreeType);
}

DWORD __cdecl _SleepEx(DWORD dwMilliseconds, BOOL bAlertable)
{
    return SleepEx(dwMilliseconds, bAlertable);
}

BOOL __cdecl _CloseHandle(HANDLE hObject)
{
    return CloseHandle(hObject);
}

BOOL __cdecl _ReadFileEx(HANDLE hFile, LPVOID lpBuffer, DWORD nNumberOfBytesToRead, LPOVERLAPPED lpOverlapped, LPOVERLAPPED_COMPLETION_ROUTINE lpCompletionRoutine)
{
    return ReadFileEx(hFile, lpBuffer, nNumberOfBytesToRead, lpOverlapped, lpCompletionRoutine);
}

HANDLE __cdecl _CreateFileA(char *lpFileName, DWORD dwDesiredAccess, DWORD dwShareMode, LPSECURITY_ATTRIBUTES lpSecurityAttributes, DWORD dwCreationDisposition, DWORD dwFlagsAndAttributes, HANDLE hTemplateFile)
{
    return CreateFileA(lpFileName, dwDesiredAccess, dwShareMode, lpSecurityAttributes, dwCreationDisposition, dwFlagsAndAttributes, hTemplateFile);
}

DWORD __cdecl _GetFileSize(HANDLE hFile, LPDWORD lpFileSizeHigh)
{
    return GetFileSize(hFile, lpFileSizeHigh);
}

DWORD __cdecl _GetLastError()
{
    return GetLastError();
}

void Com_Memset(void* ptr, byte s, int count)
{
  memset(ptr, s, count);
}

/*
=============
Com_PrintError

Server can use this, and it will output
to the apropriate place.

A raw string should NEVER be passed as fmt, because of "%f" type crashers.
=============
*/
void QDECL Com_PrintError( conChannel_t channel, const char *fmt, ... ) {
	va_list		argptr;
	char		msg[1024];

	memcpy(msg,"Error: ", sizeof(msg));

	va_start (argptr,fmt);
	vsnprintf (&msg[7], (sizeof(msg)-8), fmt, argptr);
	va_end (argptr);

  Error("%s", msg);
}

void QDECL Com_PrintWarning( conChannel_t channel, const char *fmt, ... ) {
	va_list		argptr;
	char		msg[1024];

	memcpy(msg,"Warning: ", sizeof(msg));

	va_start (argptr,fmt);
	vsnprintf (&msg[9], (sizeof(msg)-10), fmt, argptr);
	va_end (argptr);

  printf("%s", msg);
}


void QDECL Sys_Error( const char *fmt, ... ) {
	va_list		argptr;
	char		msg[1024];

	va_start (argptr,fmt);
	vsnprintf(msg, sizeof(msg), fmt, argptr);
	va_end (argptr);

  Error("%s", msg);
}
//===========================================================================
//
// Parameter:				-
// Returns:					-
// Changes Globals:		-
//===========================================================================
int Sys_Milliseconds( void ) {
	return clock() * 1000 / CLOCKS_PER_SEC;
} //end of the function Sys_MilliSeconds

int QDECL Com_sprintf(char *dest, int size, const char *fmt, ...)
{
	int		len;
	va_list		argptr;

	va_start (argptr,fmt);
	len = vsnprintf(dest, size, fmt, argptr);
	va_end (argptr);

	if(len >= size)
		printf("Com_sprintf: Output length %d too short, require %d bytes.\n", size, len + 1);

	return len;
}

int Q_strncmp (const char *s1, const char *s2, int n) {
	int		c1, c2;

	do {
		c1 = *s1++;
		c2 = *s2++;

		if (!n--) {
			return 0;		// strings are equal until end point
		}

		if (c1 != c2) {
			return c1 < c2 ? -1 : 1;
		}
	} while (c1);

	return 0;		// strings are equal
}


void __cdecl Sys_OutOfMemError(const char* filename, int line)
{
	Error("System is out of memory! Filename: %s, Line: %d\n", filename, line);
}

void __cdecl Mark_SndCurveAsset(void* asset){}
void __cdecl Mark_GfxImageAsset(void* asset){}
void __cdecl Mark_LightDefAsset(void* asset){}
void __cdecl Mark_ScriptStringCustom(void* asset){}
void __cdecl Mark_snd_alias_list_Asset(void* asset){}
void __cdecl Mark_LoadedSoundAsset(void* asset){}
void __cdecl Mark_XModelAsset(void* asset){}
void __cdecl Mark_PhysPresetAsset(void* asset){}
void __cdecl Mark_MapEntsAsset(void* asset){}
void __cdecl Mark_FxEffectDefAsset(void* asset){}
void __cdecl Mark_StringTableAsset(void* asset){}
void __cdecl Mark_XAnimPartsAsset(void* asset){}
void __cdecl Mark_MaterialTechniqueSetAsset(void* asset){}
void __cdecl Mark_ComWorldAsset(void* asset){}
void __cdecl Mark_ClipMapAsset(void* asset){}
void __cdecl Mark_GameWorldSpAsset(void* asset){}
void __cdecl Mark_GameWorldMpAsset(void* asset){}
void __cdecl Mark_GfxWorldAsset(void* asset){}
void __cdecl Mark_FontAsset(void* asset){}
void __cdecl Mark_MenuListAsset(void* asset){}
void __cdecl Mark_MenuAsset(void* asset){}
void __cdecl Mark_LocalizeEntryAsset(void* asset){}
void __cdecl Mark_WeaponDefAsset(void* asset){}
void __cdecl Mark_RawFileAsset(void* asset){}
void __cdecl Mark_FxImpactTableAsset(void* asset){}
void __cdecl Mark_MaterialAsset(void* asset){}
void Sys_EnterCriticalSection(){};
void Sys_LeaveCriticalSection(){};


#define MAX_MAP_TEXINFO     8192

int numtexinfo;
texinfo_t texinfo[MAX_MAP_TEXINFO];

void __cdecl Load_ClipMapAsset(void **clipMap)
{
	XAssetHeader header;
	header.data = *clipMap;
	XAssetHeader headerout;
  headerout  = DB_AddXAsset(ASSET_TYPE_CLIPMAP_PVS, header);

  *clipMap = headerout.data;
}

void __cdecl Load_FxEffectDefFromName(void **fx)
{
	const char* name = (const char*)*fx;
	XAssetHeader headerout;
	if(name)
	{
	  headerout  = DB_FindXAssetHeader(ASSET_TYPE_FX, name, false, 100);
	  *fx = headerout.data;
	}
}

void __cdecl Load_XModelAsset(void **xmodel)
{
	XAssetHeader header;
	header.data = *xmodel;
	XAssetHeader headerout;
  headerout  = DB_AddXAsset(ASSET_TYPE_XMODEL, header);

  *xmodel = headerout.data;
}

void __cdecl Load_FontAsset(void **font)
{
	XAssetHeader header;
	header.data = *font;
	XAssetHeader headerout;
  headerout  = DB_AddXAsset(ASSET_TYPE_FONT, header);

  *font = headerout.data;
}



void __cdecl Load_MapEntsAsset(void **mapents)
{
	XAssetHeader header;
	header.data = *mapents;
	XAssetHeader headerout;
  headerout  = DB_AddXAsset(ASSET_TYPE_MAP_ENTS, header);

  *mapents = headerout.data;
}


void __cdecl Load_RawFileAsset(void **rawfile)
{
	XAssetHeader header;
	header.data = *rawfile;
	XAssetHeader headerout;
  headerout  = DB_AddXAsset(ASSET_TYPE_RAWFILE, header);

  *rawfile = headerout.data;
}


void __cdecl Load_ComWorldAsset(void **comworld)
{
	XAssetHeader header;
	header.data = *comworld;
	XAssetHeader headerout;
  headerout  = DB_AddXAsset(ASSET_TYPE_COMWORLD, header);

  *comworld = headerout.data;
}

void __cdecl Load_GfxWorldAsset(void **gfxworld)
{
	XAssetHeader header;
	header.data = *gfxworld;
	XAssetHeader headerout;
  headerout  = DB_AddXAsset(ASSET_TYPE_GFXWORLD, header);

  *gfxworld = headerout.data;
}

void __cdecl Load_GfxImageAsset(void **gfximg)
{
	XAssetHeader header;
	header.data = *gfximg;
	XAssetHeader headerout;
  headerout  = DB_AddXAsset(ASSET_TYPE_IMAGE, header);

  *gfximg = headerout.data;
}

void __cdecl Load_MenuListAsset(void **lmenu)
{
	XAssetHeader header;
	header.data = *lmenu;
	XAssetHeader headerout;
  headerout  = DB_AddXAsset(ASSET_TYPE_MENULIST, header);

  *lmenu = headerout.data;
}


void __cdecl Load_SndCurveAsset(void **sndcurve)
{
	XAssetHeader header;
	header.data = *sndcurve;
	XAssetHeader headerout;
  headerout  = DB_AddXAsset(ASSET_TYPE_SOUND_CURVE, header);

  *sndcurve = headerout.data;
}

void __cdecl Load_MenuAsset(void **menu)
{
	XAssetHeader header;
	header.data = *menu;
	XAssetHeader headerout;
  headerout  = DB_AddXAsset(ASSET_TYPE_MENU, header);

  *menu = headerout.data;
}

void __cdecl Load_PhysPresetAsset(void **ph)
{
	XAssetHeader header;
	header.data = *ph;
	XAssetHeader headerout;
  headerout  = DB_AddXAsset(ASSET_TYPE_PHYSPRESET, header);

  *ph = headerout.data;
}

void __cdecl Load_XAnimPartsAsset(void **xap)
{
	XAssetHeader header;
	header.data = *xap;
	XAssetHeader headerout;
  headerout  = DB_AddXAsset(ASSET_TYPE_XANIMPARTS, header);

  *xap = headerout.data;
}

void __cdecl Load_GameWorldMpAsset(void **gworld)
{
	XAssetHeader header;
	header.data = *gworld;
	XAssetHeader headerout;
  headerout  = DB_AddXAsset(ASSET_TYPE_GAMEWORLD_MP, header);

  *gworld = headerout.data;
}

void __cdecl Load_GameWorldSpAsset(void **gworld)
{
	XAssetHeader header;
	header.data = *gworld;
	XAssetHeader headerout;
  headerout  = DB_AddXAsset(ASSET_TYPE_GAMEWORLD_SP, header);

  *gworld = headerout.data;
}

void __cdecl Load_LightDefAsset(void **lightdef)
{
	XAssetHeader header;
	header.data = *lightdef;
	XAssetHeader headerout;
  headerout  = DB_AddXAsset(ASSET_TYPE_LIGHT_DEF, header);

  *lightdef = headerout.data;
}

void __cdecl Load_LoadedSoundAsset(void **loadedsnd)
{
	XAssetHeader header;
	header.data = *loadedsnd;
	XAssetHeader headerout;
  headerout  = DB_AddXAsset(ASSET_TYPE_LOADED_SOUND, header);

  *loadedsnd = headerout.data;
}

void __cdecl Load_StringTableAsset(void **strtab)
{
	XAssetHeader header;
	header.data = *strtab;
	XAssetHeader headerout;
  headerout  = DB_AddXAsset(ASSET_TYPE_STRINGTABLE, header);

  *strtab = headerout.data;
}

void __cdecl Load_FxImpactTableAsset(void **fximptab)
{
	XAssetHeader header;
	header.data = *fximptab;
	XAssetHeader headerout;
  headerout  = DB_AddXAsset(ASSET_TYPE_IMPACT_FX, header);

  *fximptab = headerout.data;
}

void __cdecl Load_LocalizeEntryAsset(void **locentry)
{
	XAssetHeader header;
	header.data = *locentry;
	XAssetHeader headerout;
  headerout  = DB_AddXAsset(ASSET_TYPE_LOCALIZE_ENTRY, header);

  *locentry = headerout.data;
}

void __cdecl Load_FxEffectDefAsset(void **fxeff)
{
	XAssetHeader header;
	header.data = *fxeff;
	XAssetHeader headerout;
  headerout  = DB_AddXAsset(ASSET_TYPE_FX, header);

  *fxeff = headerout.data;
}


void __cdecl Load_snd_alias_list_Asset(void **snd)
{
	XAssetHeader header;
	header.data = *snd;
	XAssetHeader headerout;
  headerout  = DB_AddXAsset(ASSET_TYPE_SOUND, header);

  *snd = headerout.data;
}

void __cdecl Load_MaterialTechniqueSetAsset(void **tech)
{
	XAssetHeader header;
	header.data = *tech;
	XAssetHeader headerout;
  headerout  = DB_AddXAsset(ASSET_TYPE_TECHNIQUE_SET, header);

  *tech = headerout.data;
}


};

struct GfxWorld s_world;
struct GameWorldMp gameWorldMp;