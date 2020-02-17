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
void *CCDECL R_AllocStaticVertexBuffer(IDirect3DVertexBuffer9 **a1, int a2)
{
	return NULL;
}

void R_ShowDirtyDiscError()
{
	Com_PrintError(CON_CHANNEL_FILES,"Error reading fastfile?\n");
}

void *CCDECL R_AllocStaticIndexBuffer(IDirect3DIndexBuffer9 **ib, int sizeInBytes)
{
	return NULL;
}

void CCDECL R_SyncRenderThread()
{

}


void CCDECL R_FinishStaticVertexBuffer(IDirect3DVertexBuffer9 *vb)
{
}

void CCDECL R_FinishStaticIndexBuffer(IDirect3DIndexBuffer9 *ib)
{
}

void CCDECL R_EnumImages(void (CCDECL *func)(union XAssetHeader, void *), void *data)
{
}

void CCDECL R_EnumMaterials(void (CCDECL *func)(union XAssetHeader, void *), void *data)
{
}

void CCDECL R_EnumTechniqueSets(void (CCDECL *func)(union XAssetHeader, void *), void *data)
{
}

void CCDECL R_ShutdownStreams()
{
}

void CCDECL RB_UnbindAllImages()
{
}

void CCDECL R_DelayLoadImage(union XAssetHeader header)
{
}

void CCDECL R_ClearAllStaticModelCacheRefs()
{
}

void CCDECL R_UnloadWorld()
{
}

void CCDECL RB_ClearPixelShader()
{
}

void CCDECL RB_ClearVertexShader()
{
}

void CCDECL RB_ClearVertexDecl()
{
}

void CCDECL DB_LoadSounds()
{
}

void CCDECL DB_SaveSounds()
{
}

Material* CCDECL Material_RegisterHandle(const char *name, int imageTrack)
{
	return NULL;
}

void CCDECL Material_DirtySort()
{
}

void CCDECL Load_Texture(struct GfxImageLoadDef **remoteLoadDef, struct GfxImage *image)
{
    //image->texture.basemap = 0;
}

void CCDECL Load_VertexBuffer(IDirect3DVertexBuffer9 **vb, void *bufferData, int sizeInBytes)
{
    *vb = 0;
}

void CCDECL Load_BuildVertexDecl(struct MaterialVertexDeclaration **mtlVertDecl)
{
}

void CCDECL Load_CreateMaterialVertexShader(struct GfxVertexShaderLoadDef *loadDef, struct MaterialVertexShader *mtlShader)
{
}

void CCDECL Load_CreateMaterialPixelShader(struct GfxPixelShaderLoadDef *loadDef, struct MaterialPixelShader *mtlShader)
{
}

void CCDECL Load_SndAliasCustom(snd_alias_list_t **name)
{
  if ( *name )
  {
    varXStringPtr = (char***)name;
    Load_XStringPtr(0);
    XAssetHeader xah = DB_FindXAssetHeader(ASSET_TYPE_SOUND, **varXStringPtr, true, 100);
    *name = xah.sound;
  }
}

void CCDECL Load_SetSoundData(byte **data, MssSound *sound)
{
    sound->data = NULL;
}

void CCDECL Material_UploadShaders(struct MaterialTechniqueSet *techset)
{
}

void CCDECL Image_Release(struct GfxImage *image)
{
}

void CCDECL Material_ReleaseTechniqueSetResources(struct MaterialTechniqueSet *techniqueSet)
{
}

void Material_OverrideTechniqueSets()
{
}

void Material_ClearShaderUploadList(void)
{
}

void CCDECL Material_OriginalRemapTechniqueSet(MaterialTechniqueSet *mt)
{
}

void CCDECL Sys_FastFileBlockedCallback()
{
}

void CCDECL Load_PicmipWater(struct water_t **water)
{
}

void* CCDECL Hunk_AllocXModelPrecache(int size)
{
  return Hunk_Alloc(size, "Hunk_AllocXModelPrecache", 22);
}

void* CCDECL Hunk_AllocXModelPrecacheColl(int size)
{
  return Hunk_Alloc(size, "Hunk_AllocXModelPrecacheColl", 28);
}

XModel *CCDECL R_RegisterModel(const char *name)
{
  return XModelPrecache(name, Hunk_AllocXModelPrecache, Hunk_AllocXModelPrecacheColl);
}


double CCDECL R_GetBaseLodDist(const float *origin)
{
    return 0;
}

double CCDECL R_GetAdjustedLodDist(float dist, enum XModelLodRampType lodRampType)
{
    return 0;
}

FxEffectDef *CCDECL FX_Register(const char *name)
{
    return NULL;
}

snd_alias_list_t* CCDECL Com_FindSoundAlias(const char *name)
{
    return NULL;
}

void CCDECL CG_DebugLine(const float *start, const float *end, const float *color, int depthTest, int duration)
{
    CL_AddDebugLine(start, end, color, depthTest, duration);
}

void CCDECL CG_DebugBox(const float *origin, const float *mins, const float *maxs, float yaw, const float *color, int depthTest, int duration)
{
}

void CCDECL CG_DrawStringExt(struct ScreenPlacement *scrPlace, float x, float y, const char *string, const float *setColor, int forceColor, int shadow, float charHeight)
{
}

void PIXBeginNamedEvent(int Color, const char *Name, ...)
{
}

void CCDECL CG_VisionSetMyChanges()
{
}


int SND_GetEntChannelCount(void)
{
    return 0;
}

int CCDECL FS_GetModList(char *listbuf, int bufsize)
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

void CCDECL Com_UnloadSoundAliases(snd_alias_system_t type)
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


void CCDECL R_ReleaseDXDeviceOwnership()
{

}


void R_UnlockVertexBuffer(IDirect3DVertexBuffer9* vertexbuf){}
void R_FreeStaticVertexBuffer(IDirect3DVertexBuffer9* vertexbuf){}
void R_UnlockIndexBuffer(IDirect3DIndexBuffer9* indexbuf){}
void R_FreeStaticIndexBuffer(IDirect3DIndexBuffer9* indexbuf){}
void Material_DirtyTechniqueSetOverrides(){}

};
