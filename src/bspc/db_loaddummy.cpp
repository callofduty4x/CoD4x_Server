#include "../xassets.h"
#include "l_cmd.h"


class IDirect3DIndexBuffer9;

extern "C"{

void __cdecl Load_Texture(struct GfxImageLoadDef **remoteLoadDef, struct GfxImage *image)
{
    //image->texture.basemap = 0;
}

void __cdecl Load_VertexBuffer(struct IDirect3DVertexBuffer9 **vb, void *bufferData, int sizeInBytes)
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
    XAssetHeader xah = DB_FindXAssetHeader(ASSET_TYPE_SOUND, **varXStringPtr);
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

void *__cdecl R_AllocStaticVertexBuffer(IDirect3DVertexBuffer9 **a1, int a2)
{
	return NULL;
}

void R_ShowDirtyDiscError()
{
	Com_PrintError(CON_CHANNEL_FILES,"Error reading fastfile?\n");
}

void *__cdecl R_AllocStaticIndexBuffer(IDirect3DIndexBuffer9 **ib, int sizeInBytes)
{
	return NULL;
}

void __cdecl R_SyncRenderThread()
{

}


void __cdecl R_FinishStaticVertexBuffer(IDirect3DVertexBuffer9 *vb)
{
}

void __cdecl R_FinishStaticIndexBuffer(IDirect3DIndexBuffer9 *ib)
{
}

void __cdecl R_EnumImages(void (__cdecl *func)(union XAssetHeader, void *), void *data)
{
}

void __cdecl R_EnumMaterials(void (__cdecl *func)(union XAssetHeader, void *), void *data)
{
}

void __cdecl R_EnumTechniqueSets(void (__cdecl *func)(union XAssetHeader, void *), void *data)
{
}

void __cdecl R_ShutdownStreams()
{
}

void __cdecl RB_UnbindAllImages()
{
}

void __cdecl R_DelayLoadImage(union XAssetHeader header)
{
}

void __cdecl R_ClearAllStaticModelCacheRefs()
{
}

void __cdecl R_UnloadWorld()
{
}

void __cdecl RB_ClearPixelShader()
{
}

void __cdecl RB_ClearVertexShader()
{
}

void __cdecl RB_ClearVertexDecl()
{
}

void __cdecl DB_LoadSounds()
{
}

void __cdecl DB_SaveSounds()
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

void __cdecl Sys_OutOfMemError(const char* filename, int line)
{
	Error("System is out of memory! Filename: %s, Line: %d\n", filename, line);
}

void __cdecl Sys_OutOfMemErrorInternal(const char* filename, int line)
{
	Sys_OutOfMemError(filename, line);
}


void __cdecl XAnimFree(int a1)
{
}

void __cdecl XAnimFreeList(int *a1)
{
}

void __cdecl XModelPartsFree(unsigned char *a1)
{
}

/*
================
return a hash value for the filename
================
*/
long FS_HashFileName( const char *fname, int hashSize ) {
	int i;
	long hash;
	char letter;

	hash = 0;
	i = 0;
	while ( fname[i] != '\0' ) {
		letter = tolower( fname[i] );
		if ( letter == '.' ) {
			break;                          // don't include extension
		}
		if ( letter == '\\' ) {
			letter = '/';                   // damn path names
		}
		if ( letter == PATH_SEP ) {
			letter = '/';                           // damn path names
		}
		hash += (long)( letter ) * ( i + 119 );
		i++;
	}
	hash = ( hash ^ ( hash >> 10 ) ^ ( hash >> 20 ) );
	hash &= ( hashSize - 1 );
	return hash;
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
	Q_vsnprintf (&msg[7], (sizeof(msg)-8), fmt, argptr);
	va_end (argptr);

  Error("%s", msg);
}



DWORD __cdecl Sys_InterlockedExchangeAdd(DWORD volatile *Addend, DWORD value)
{
	return InterlockedExchangeAdd((LONG volatile *)Addend, value);
}

DWORD __cdecl Sys_InterlockedDecrement(DWORD volatile *Addend)
{
	return InterlockedDecrement((LONG volatile *)Addend);
}
DWORD __cdecl Sys_InterlockedIncrement(DWORD volatile *Addend)
{
	return InterlockedIncrement((LONG volatile *)Addend);
}
DWORD __cdecl Sys_InterlockedCompareExchange(DWORD volatile *Destination, DWORD Exchange, DWORD Comparand)
{
	return InterlockedCompareExchange((LONG volatile *)Destination, Exchange, Comparand);
}

void Sys_SleepMSec(int msec)
{
    Sleep(msec);
}

void Sys_Sleep(int msec)
{
    Sys_SleepMSec(msec);
}

void QDECL Sys_Error( const char *fmt, ... ) {
	va_list		argptr;
	char		msg[1024];

	va_start (argptr,fmt);
	Q_vsnprintf(msg, sizeof(msg), fmt, argptr);
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

typedef int ThreadOwner;
threadid_t mainthread;


qboolean __cdecl Sys_IsMainThread( void )
{
	return Sys_ThreadisSame(mainthread);
}

qboolean Sys_ThreadisSame(threadid_t threadid)
{
	threadid_t thread = GetCurrentThreadId();

	return threadid == thread;

}

qboolean Sys_IsDatabaseReady()
{
//  return Sys_IsObjectSignaled(databaseCompletedEvent) == 1;
  return qtrue;
}

void Sys_WaitStartDatabase()
{
//  Sys_WaitForObject(wakeDatabaseEvent);
}

qboolean Sys_IsDatabaseThread()
{
//  threadid_t curtid;

//  curtid = Sys_GetCurrentThreadId();
//  return curtid == threadId[1];
  return qtrue;
}

qboolean Sys_IsServerThread()
{
  return qfalse;
}


qboolean Sys_IsRenderThread()
{
  return qfalse;
}


void Sys_WakeDatabase()
{
//  Sys_ResetEvent(databaseCompletedEvent);
}

void __cdecl Sys_SuspendDatabaseThread(ThreadOwner owner)
{
//  g_databaseThreadOwner = owner;
//  Sys_ResetEvent(resumedDatabaseEvent);
}

void __cdecl Sys_DatabaseCompleted()
{
//  Sys_SetEvent(databaseCompletedEvent);
}


void __cdecl Sys_ResumeDatabaseThread(ThreadOwner to)
{
//  g_databaseThreadOwner = 0;
//  Sys_SetEvent(resumedDatabaseEvent);
}

void Sys_WakeDatabase2()
{
//  Sys_ResetEvent(databaseCompletedEvent2);
}

qboolean __cdecl Sys_IsDatabaseReady2()
{
//  return Sys_IsObjectSignaled(databaseCompletedEvent2) == 1;
  return qtrue;
}

void __cdecl Sys_DatabaseCompleted2()
{
//  Sys_SetEvent(databaseCompletedEvent2);
}

void __cdecl Sys_SyncDatabase()
{
//  Sys_WaitForObject(databaseCompletedEvent);
}

qboolean __cdecl Sys_HaveSuspendedDatabaseThread(ThreadOwner to)
{
//  return g_databaseThreadOwner == to;
  return qfalse;
}

void __cdecl Sys_NotifyDatabase()
{
//  Sys_SetEvent(wakeDatabaseEvent);
}

void __cdecl Sys_WaitDatabaseThread()
{
//  Sys_WaitForObject(resumedDatabaseEvent);
}



};