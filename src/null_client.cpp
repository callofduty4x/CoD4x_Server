#include "q_shared.h"
#include "sys_thread.h"
#include "cvar.h"

//#define COMPILER_GCC
#define DX_TO_GL_ABSTRACTION
#define POSIX
#include "togl/rendermechanism.h"
#include "qcommon_io.h"
#include "xassets.h"
#include "qcommon_mem.h"
#include "xassets/xmodel.h"
#include "xassets/gfxworld.h"


cvar_t* r_reflectionProbeGenerate;
cvar_t* r_modelVertColor;
struct GfxWorld s_world;
byte cgMedia[0x27C0]; 


extern "C"
{

void R_RegisterDvars()
{
	r_modelVertColor = Cvar_RegisterBool("r_modelVertColor", qfalse, CVAR_ROM, "Set to 0 to replace all model vertex colors with white when loaded");
}

void R_ReflectionProbeRegisterDvars()
{
	r_reflectionProbeGenerate = Cvar_RegisterBool("r_reflectionProbeGenerate", qfalse, CVAR_ROM, "Probe reflections");
}

/*
void XAnimFreeList(){};
void XAnimFree(){};
*/
//void XModelPartsFree(){};
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

struct Material *__cdecl Material_RegisterHandle(const char *name, int imageTrack)
{
	return NULL;
}

void __cdecl Material_DirtySort()
{
}

void __cdecl Load_Texture(struct GfxImageLoadDef **remoteLoadDef, struct GfxImage *image)
{
    //image->texture.basemap = 0;
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
    if(**varXStringPtr < (char*)0x1000)
    {
	__asm__("int $3");
    }
    Com_Printf(CON_CHANNEL_SYSTEM, "Load_SndAliasCustom NAme: %s\n", **varXStringPtr);
    XAssetHeader xah = DB_FindXAssetHeader(ASSET_TYPE_SOUND, **varXStringPtr);
    *name = xah.sound;
  }
}

void __cdecl Load_SetSoundData(byte **arg0, MssSound *a1)
{
}

void __cdecl Material_UploadShaders(struct MaterialTechniqueSet *techset)
{
}

void __cdecl Image_Release(struct GfxImage *image)
{
}

void __cdecl Material_ReleaseTechniqueSetResources(struct MaterialTechniqueSet *techniqueSet)
{
}

void Material_OverrideTechniqueSets()
{
}

void Material_ClearShaderUploadList(void)
{
}

void __cdecl Material_OriginalRemapTechniqueSet(MaterialTechniqueSet *mt)
{
}

void __cdecl Sys_FastFileBlockedCallback()
{
}

void __cdecl Load_PicmipWater(struct water_t **water)
{
}

void* __cdecl Hunk_AllocXModelPrecache(int size)
{
  return Hunk_Alloc(size, "Hunk_AllocXModelPrecache", 22);
}

void* __cdecl Hunk_AllocXModelPrecacheColl(int size)
{
  return Hunk_Alloc(size, "Hunk_AllocXModelPrecacheColl", 28);
}

XModel *__cdecl R_RegisterModel(const char *name)
{
  return XModelPrecache(name, Hunk_AllocXModelPrecache, Hunk_AllocXModelPrecacheColl);
}


double __cdecl R_GetBaseLodDist(const float *origin)
{
    return 0;
}

double __cdecl R_GetAdjustedLodDist(float dist, enum XModelLodRampType lodRampType)
{
    return 0;
}

struct FxEffectDef *__cdecl FX_Register(const char *name)
{
    return NULL;
}

struct snd_alias_t* __cdecl Com_FindSoundAlias(const char *name)
{
    return NULL;
}

void __cdecl CG_DebugLine(const float *start, const float *end, const float *color, int depthTest, int duration)
{
}

void __cdecl CG_DebugBox(const float *origin, const float *mins, const float *maxs, float yaw, const float *color, int depthTest, int duration)
{
}

void __cdecl CG_DrawStringExt(struct ScreenPlacement *scrPlace, float x, float y, const char *string, const float *setColor, int forceColor, int shadow, float charHeight)
{
}

void PIXBeginNamedEvent(int Color, const char *Name, ...)
{
}

void __cdecl CG_VisionSetMyChanges()
{
}

void __cdecl CL_AddDebugLine(const float *start, const float *end, const float *color, int depthTest, int duration)
{
}
void __cdecl CL_AddDebugStarWithText(const float *point, const float *starColor, const float *textColor, const char *string, float fontsize, int duration)
{
}

void __cdecl CL_AddDebugStar(const float *point, const float *color, int duration)
{
}

void __cdecl CL_AddDebugString(const float *xyz, const float *color, float scale, const char *text, int duration)
{
}

int SND_GetEntChannelCount(void)
{
    return 0;
}

int __cdecl FS_GetModList(char *listbuf, int bufsize)
{
    return 0;
}

void CL_ShutdownHunkUsers()
{
}

void SND_ShutdownChannels()
{
}

void __cdecl CG_TraceCapsule(struct trace_t *results, const float *start, const float *mins, const float *maxs, const float *end, int passEntityNum, int contentMask)
{

}

const char* SND_GetEntChannelName(int index)
{
    return "server";
}

void Com_UnloadSoundAliases()
{

}
void Com_LoadSoundAliases()
{

}


XAssetHeader* Com_TryFindSoundAlias(const char* name)
{
    return (XAssetHeader*)-1;
}

void SND_AddPhysicsSound(snd_alias_list_t *a1, float *a2)
{

}

}

class OpaqueContextRef
{
};

class MacDisplay
{
    static OpaqueContextRef* GetSharedContext();
    static void SetCurrentContext(OpaqueContextRef*);
};


OpaqueContextRef* MacDisplay::GetSharedContext()
{
    return NULL;
}

void MacDisplay::SetCurrentContext(OpaqueContextRef* ctx)
{

}
