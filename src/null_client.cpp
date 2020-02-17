#include "null_client.hpp"
#include "qshared.hpp"
#include "sys_thread.hpp"
#include "cvar.hpp"
#include "cl_dedicated.hpp"
#include "db_load.hpp"



#ifdef _WIN32
#include <d3d9.h>
#endif


#include "qcommon_io.hpp"
#include "xassets.hpp"
#include "qcommon_mem.hpp"
#include "xassets/xmodel.hpp"
#include "xassets/gfxworld.hpp"


struct GfxWorld s_world;

extern "C"
{
    cvar_s* r_reflectionProbeGenerate;
    cvar_s* r_modelVertColor;
    byte cgMedia[0x27C0];

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
void *CDECL R_AllocStaticVertexBuffer(IDirect3DVertexBuffer9 **a1, int a2)
{
	return NULL;
}

void R_ShowDirtyDiscError()
{
	Com_PrintError(CON_CHANNEL_FILES,"Error reading fastfile?\n");
}

void *CDECL R_AllocStaticIndexBuffer(IDirect3DIndexBuffer9 **ib, int sizeInBytes)
{
	return NULL;
}

void CDECL R_SyncRenderThread()
{

}


void CDECL R_FinishStaticVertexBuffer(IDirect3DVertexBuffer9 *vb)
{
}

void CDECL R_FinishStaticIndexBuffer(IDirect3DIndexBuffer9 *ib)
{
}

void CDECL R_EnumImages(void (CDECL *func)(union XAssetHeader, void *), void *data)
{
}

void CDECL R_EnumMaterials(void (CDECL *func)(union XAssetHeader, void *), void *data)
{
}

void CDECL R_EnumTechniqueSets(void (CDECL *func)(union XAssetHeader, void *), void *data)
{
}

void CDECL R_ShutdownStreams()
{
}

void CDECL RB_UnbindAllImages()
{
}

void CDECL R_DelayLoadImage(union XAssetHeader header)
{
}

void CDECL R_ClearAllStaticModelCacheRefs()
{
}

void CDECL R_UnloadWorld()
{
}

void CDECL RB_ClearPixelShader()
{
}

void CDECL RB_ClearVertexShader()
{
}

void CDECL RB_ClearVertexDecl()
{
}

void CDECL DB_LoadSounds()
{
}

void CDECL DB_SaveSounds()
{
}

Material* CDECL Material_RegisterHandle(const char *name, int imageTrack)
{
	return NULL;
}

void CDECL Material_DirtySort()
{
}

void CDECL Load_Texture(struct GfxImageLoadDef **remoteLoadDef, struct GfxImage *image)
{
    //image->texture.basemap = 0;
}

void CDECL Load_VertexBuffer(IDirect3DVertexBuffer9 **vb, void *bufferData, int sizeInBytes)
{
    *vb = 0;
}

void CDECL Load_BuildVertexDecl(struct MaterialVertexDeclaration **mtlVertDecl)
{
}

void CDECL Load_CreateMaterialVertexShader(struct GfxVertexShaderLoadDef *loadDef, struct MaterialVertexShader *mtlShader)
{
}

void CDECL Load_CreateMaterialPixelShader(struct GfxPixelShaderLoadDef *loadDef, struct MaterialPixelShader *mtlShader)
{
}

void CDECL Load_SndAliasCustom(snd_alias_list_t **name)
{
  if ( *name )
  {
    varXStringPtr = (char***)name;
    Load_XStringPtr(0);
    XAssetHeader xah = DB_FindXAssetHeader(ASSET_TYPE_SOUND, **varXStringPtr, true, 100);
    *name = xah.sound;
  }
}

void CDECL Load_SetSoundData(byte **data, MssSound *sound)
{
    sound->data = NULL;
}

void CDECL Material_UploadShaders(struct MaterialTechniqueSet *techset)
{
}

void CDECL Image_Release(struct GfxImage *image)
{
}

void CDECL Material_ReleaseTechniqueSetResources(struct MaterialTechniqueSet *techniqueSet)
{
}

void Material_OverrideTechniqueSets()
{
}

void Material_ClearShaderUploadList(void)
{
}

void CDECL Material_OriginalRemapTechniqueSet(MaterialTechniqueSet *mt)
{
}

void CDECL Sys_FastFileBlockedCallback()
{
}

void CDECL Load_PicmipWater(struct water_t **water)
{
}

void* CDECL Hunk_AllocXModelPrecache(int size)
{
  return Hunk_Alloc(size, "Hunk_AllocXModelPrecache", 22);
}

void* CDECL Hunk_AllocXModelPrecacheColl(int size)
{
  return Hunk_Alloc(size, "Hunk_AllocXModelPrecacheColl", 28);
}

XModel *CDECL R_RegisterModel(const char *name)
{
  return XModelPrecache(name, Hunk_AllocXModelPrecache, Hunk_AllocXModelPrecacheColl);
}


double CDECL R_GetBaseLodDist(const float *origin)
{
    return 0;
}

double CDECL R_GetAdjustedLodDist(float dist, enum XModelLodRampType lodRampType)
{
    return 0;
}

FxEffectDef *CDECL FX_Register(const char *name)
{
    return NULL;
}

snd_alias_list_t* CDECL Com_FindSoundAlias(const char *name)
{
    return NULL;
}

void CDECL CG_DebugLine(const float *start, const float *end, const float *color, int depthTest, int duration)
{
    CL_AddDebugLine(start, end, color, depthTest, duration);
}

void CDECL CG_DebugBox(const float *origin, const float *mins, const float *maxs, float yaw, const float *color, int depthTest, int duration)
{
}

void CDECL CG_DrawStringExt(struct ScreenPlacement *scrPlace, float x, float y, const char *string, const float *setColor, int forceColor, int shadow, float charHeight)
{
}

void PIXBeginNamedEvent(int Color, const char *Name, ...)
{
}

void CDECL CG_VisionSetMyChanges()
{
}


int SND_GetEntChannelCount(void)
{
    return 0;
}

int CDECL FS_GetModList(char *listbuf, int bufsize)
{
    return 0;
}

void CL_ShutdownHunkUsers()
{
}

void SND_ShutdownChannels()
{
}

void CG_TraceCapsule(trace_t* results, const float *start, const float *mins, const float *maxs, const float *end, int passEntityNum, int contentMask)
{}

const char* SND_GetEntChannelName(int index)
{
    return "server";
}

void CDECL Com_UnloadSoundAliases(snd_alias_system_t type)
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


void CDECL R_ReleaseDXDeviceOwnership()
{

}


void R_UnlockVertexBuffer(IDirect3DVertexBuffer9* vertexbuf){}
void R_FreeStaticVertexBuffer(IDirect3DVertexBuffer9* vertexbuf){}
void R_UnlockIndexBuffer(IDirect3DIndexBuffer9* indexbuf){}
void R_FreeStaticIndexBuffer(IDirect3DIndexBuffer9* indexbuf){}
void Material_DirtyTechniqueSetOverrides(){}

};
