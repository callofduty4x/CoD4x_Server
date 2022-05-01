;Imports of r_staticmodelcache:
	extern rgp
	extern rg
	extern g_OptimizeVBTransfers
	extern gfxBuf
	extern _Z26R_AllocDynamicVertexBufferPP22IDirect3DVertexBuffer9iPKc
	extern dx_ctx
	extern frontEndDataOut
	extern _Z14R_AddWorkerCmd13WorkerCmdTypePv
	extern _Z17XModelGetSurfacesPK6XModelPP8XSurfacei
	extern _Z18XModelGetSurfCountPK6XModeli
	extern _Z18R_SyncRenderThreadv
	extern _Z10Com_PrintfiPKcz
	extern _Z16XModelGetNumLodsPK6XModel
	extern _Z16XModelGetLodInfoPK6XModeli
	extern _Z19XSurfaceGetNumVertsPK8XSurface
	extern alwaysfails
	extern _Z36R_GetPackedStaticModelLightingCoordsjP20PackedLightingCoords

;Exports of r_staticmodelcache:
	global _GLOBAL__I__Z26R_SkinCachedStaticModelCmdP24SkinCachedStaticModelCmd
	global s_cache
	global _Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii
	global _Z22SMC_GetFreeBlockOfSizejj
	global _Z20R_UncacheStaticModelj
	global _Z21R_GetCachedSModelSurfj
	global _Z22R_InitStaticModelCachev
	global _Z23R_FlushStaticModelCachev
	global _Z25R_CacheStaticModelSurfacejjPK13XModelLodInfo
	global _Z25R_StaticModelCacheFlush_fv
	global _Z25R_StaticModelCacheStats_fv
	global _Z26R_ShutdownStaticModelCachev
	global _Z26R_SkinCachedStaticModelCmdP24SkinCachedStaticModelCmd
	global _Z30R_ClearAllStaticModelCacheRefsv


SECTION .text


;global constructors keyed to R_SkinCachedStaticModelCmd(SkinCachedStaticModelCmd*)
_GLOBAL__I__Z26R_SkinCachedStaticModelCmdP24SkinCachedStaticModelCmd:
	push ebp
	mov ebp, esp
	mov edx, 0xffff
	mov eax, 0x1
	pop ebp
	jmp _Z41__static_initialization_and_destruction_0ii


;__static_initialization_and_destruction_0(int, int)
_Z41__static_initialization_and_destruction_0ii:
	push ebp
	mov ebp, esp
	cmp edx, 0xffff
	jz _Z41__static_initialization_and_destruction_0ii_10
_Z41__static_initialization_and_destruction_0ii_20:
	pop ebp
	ret
_Z41__static_initialization_and_destruction_0ii_10:
	sub eax, 0x1
	jnz _Z41__static_initialization_and_destruction_0ii_20
	mov eax, [g_fltMin__uint4]
	mov [g_fltMin], eax
	mov eax, [g_fltMin__uint4+0x4]
	mov [g_fltMin+0x4], eax
	mov eax, [g_fltMin__uint4+0x8]
	mov [g_fltMin+0x8], eax
	mov eax, [g_fltMin__uint4+0xc]
	mov [g_fltMin+0xc], eax
	mov eax, [g_negativeZero__uint4]
	mov [g_negativeZero], eax
	mov eax, [g_negativeZero__uint4+0x4]
	mov [g_negativeZero+0x4], eax
	mov eax, [g_negativeZero__uint4+0x8]
	mov [g_negativeZero+0x8], eax
	mov eax, [g_negativeZero__uint4+0xc]
	mov [g_negativeZero+0xc], eax
	mov eax, [g_inc__uint4]
	mov [g_inc], eax
	mov eax, [g_inc__uint4+0x4]
	mov [g_inc+0x4], eax
	mov eax, [g_inc__uint4+0x8]
	mov [g_inc+0x8], eax
	mov eax, [g_inc__uint4+0xc]
	mov [g_inc+0xc], eax
	mov eax, [g_swizzleXYZW__uint4]
	mov [g_swizzleXYZW], eax
	mov eax, [g_swizzleXYZW__uint4+0x4]
	mov [g_swizzleXYZW+0x4], eax
	mov eax, [g_swizzleXYZW__uint4+0x8]
	mov [g_swizzleXYZW+0x8], eax
	mov eax, [g_swizzleXYZW__uint4+0xc]
	mov [g_swizzleXYZW+0xc], eax
	mov eax, [g_swizzleYXZW__uint4]
	mov [g_swizzleYXZW], eax
	mov eax, [g_swizzleYXZW__uint4+0x4]
	mov [g_swizzleYXZW+0x4], eax
	mov eax, [g_swizzleYXZW__uint4+0x8]
	mov [g_swizzleYXZW+0x8], eax
	mov eax, [g_swizzleYXZW__uint4+0xc]
	mov [g_swizzleYXZW+0xc], eax
	mov eax, [g_swizzleXZYW__uint4]
	mov [g_swizzleXZYW], eax
	mov eax, [g_swizzleXZYW__uint4+0x4]
	mov [g_swizzleXZYW+0x4], eax
	mov eax, [g_swizzleXZYW__uint4+0x8]
	mov [g_swizzleXZYW+0x8], eax
	mov eax, [g_swizzleXZYW__uint4+0xc]
	mov [g_swizzleXZYW+0xc], eax
	mov eax, [g_swizzleYXWZ__uint4]
	mov [g_swizzleYXWZ], eax
	mov eax, [g_swizzleYXWZ__uint4+0x4]
	mov [g_swizzleYXWZ+0x4], eax
	mov eax, [g_swizzleYXWZ__uint4+0x8]
	mov [g_swizzleYXWZ+0x8], eax
	mov eax, [g_swizzleYXWZ__uint4+0xc]
	mov [g_swizzleYXWZ+0xc], eax
	mov eax, [g_swizzleXAZC__uint4]
	mov [g_swizzleXAZC], eax
	mov eax, [g_swizzleXAZC__uint4+0x4]
	mov [g_swizzleXAZC+0x4], eax
	mov eax, [g_swizzleXAZC__uint4+0x8]
	mov [g_swizzleXAZC+0x8], eax
	mov eax, [g_swizzleXAZC__uint4+0xc]
	mov [g_swizzleXAZC+0xc], eax
	mov eax, [g_swizzleYBWD__uint4]
	mov [g_swizzleYBWD], eax
	mov eax, [g_swizzleYBWD__uint4+0x4]
	mov [g_swizzleYBWD+0x4], eax
	mov eax, [g_swizzleYBWD__uint4+0x8]
	mov [g_swizzleYBWD+0x8], eax
	mov eax, [g_swizzleYBWD__uint4+0xc]
	mov [g_swizzleYBWD+0xc], eax
	mov eax, [g_swizzleXYAB__uint4]
	mov [g_swizzleXYAB], eax
	mov eax, [g_swizzleXYAB__uint4+0x4]
	mov [g_swizzleXYAB+0x4], eax
	mov eax, [g_swizzleXYAB__uint4+0x8]
	mov [g_swizzleXYAB+0x8], eax
	mov eax, [g_swizzleXYAB__uint4+0xc]
	mov [g_swizzleXYAB+0xc], eax
	mov eax, [g_swizzleZWCD__uint4]
	mov [g_swizzleZWCD], eax
	mov eax, [g_swizzleZWCD__uint4+0x4]
	mov [g_swizzleZWCD+0x4], eax
	mov eax, [g_swizzleZWCD__uint4+0x8]
	mov [g_swizzleZWCD+0x8], eax
	mov eax, [g_swizzleZWCD__uint4+0xc]
	mov [g_swizzleZWCD+0xc], eax
	mov eax, [g_swizzleXYZA__uint4]
	mov [g_swizzleXYZA], eax
	mov eax, [g_swizzleXYZA__uint4+0x4]
	mov [g_swizzleXYZA+0x4], eax
	mov eax, [g_swizzleXYZA__uint4+0x8]
	mov [g_swizzleXYZA+0x8], eax
	mov eax, [g_swizzleXYZA__uint4+0xc]
	mov [g_swizzleXYZA+0xc], eax
	mov eax, [g_swizzleYZXW__uint4]
	mov [g_swizzleYZXW], eax
	mov eax, [g_swizzleYZXW__uint4+0x4]
	mov [g_swizzleYZXW+0x4], eax
	mov eax, [g_swizzleYZXW__uint4+0x8]
	mov [g_swizzleYZXW+0x8], eax
	mov eax, [g_swizzleYZXW__uint4+0xc]
	mov [g_swizzleYZXW+0xc], eax
	mov eax, [g_swizzleZXYW__uint4]
	mov [g_swizzleZXYW], eax
	mov eax, [g_swizzleZXYW__uint4+0x4]
	mov [g_swizzleZXYW+0x4], eax
	mov eax, [g_swizzleZXYW__uint4+0x8]
	mov [g_swizzleZXYW+0x8], eax
	mov eax, [g_swizzleZXYW__uint4+0xc]
	mov [g_swizzleZXYW+0xc], eax
	mov eax, [g_swizzleWABW__uint4]
	mov [g_swizzleWABW], eax
	mov eax, [g_swizzleWABW__uint4+0x4]
	mov [g_swizzleWABW+0x4], eax
	mov eax, [g_swizzleWABW__uint4+0x8]
	mov [g_swizzleWABW+0x8], eax
	mov eax, [g_swizzleWABW__uint4+0xc]
	mov [g_swizzleWABW+0xc], eax
	mov eax, [g_swizzleZWAW__uint4]
	mov [g_swizzleZWAW], eax
	mov eax, [g_swizzleZWAW__uint4+0x4]
	mov [g_swizzleZWAW+0x4], eax
	mov eax, [g_swizzleZWAW__uint4+0x8]
	mov [g_swizzleZWAW+0x8], eax
	mov eax, [g_swizzleZWAW__uint4+0xc]
	mov [g_swizzleZWAW+0xc], eax
	mov eax, [g_swizzleYZWA__uint4]
	mov [g_swizzleYZWA], eax
	mov eax, [g_swizzleYZWA__uint4+0x4]
	mov [g_swizzleYZWA+0x4], eax
	mov eax, [g_swizzleYZWA__uint4+0x8]
	mov [g_swizzleYZWA+0x8], eax
	mov eax, [g_swizzleYZWA__uint4+0xc]
	mov [g_swizzleYZWA+0xc], eax
	mov eax, [g_swizzleXXXX__uint4]
	mov [g_swizzleXXXX], eax
	mov eax, [g_swizzleXXXX__uint4+0x4]
	mov [g_swizzleXXXX+0x4], eax
	mov eax, [g_swizzleXXXX__uint4+0x8]
	mov [g_swizzleXXXX+0x8], eax
	mov eax, [g_swizzleXXXX__uint4+0xc]
	mov [g_swizzleXXXX+0xc], eax
	mov eax, [g_swizzleYYYY__uint4]
	mov [g_swizzleYYYY], eax
	mov eax, [g_swizzleYYYY__uint4+0x4]
	mov [g_swizzleYYYY+0x4], eax
	mov eax, [g_swizzleYYYY__uint4+0x8]
	mov [g_swizzleYYYY+0x8], eax
	mov eax, [g_swizzleYYYY__uint4+0xc]
	mov [g_swizzleYYYY+0xc], eax
	mov eax, [g_swizzleZZZZ__uint4]
	mov [g_swizzleZZZZ], eax
	mov eax, [g_swizzleZZZZ__uint4+0x4]
	mov [g_swizzleZZZZ+0x4], eax
	mov eax, [g_swizzleZZZZ__uint4+0x8]
	mov [g_swizzleZZZZ+0x8], eax
	mov eax, [g_swizzleZZZZ__uint4+0xc]
	mov [g_swizzleZZZZ+0xc], eax
	mov eax, [g_swizzleWWWW__uint4]
	mov [g_swizzleWWWW], eax
	mov eax, [g_swizzleWWWW__uint4+0x4]
	mov [g_swizzleWWWW+0x4], eax
	mov eax, [g_swizzleWWWW__uint4+0x8]
	mov [g_swizzleWWWW+0x8], eax
	mov eax, [g_swizzleWWWW__uint4+0xc]
	mov [g_swizzleWWWW+0xc], eax
	mov eax, [g_selectX__uint4]
	mov [g_selectX], eax
	mov eax, [g_selectX__uint4+0x4]
	mov [g_selectX+0x4], eax
	mov eax, [g_selectX__uint4+0x8]
	mov [g_selectX+0x8], eax
	mov eax, [g_selectX__uint4+0xc]
	mov [g_selectX+0xc], eax
	mov eax, [g_selectY__uint4]
	mov [g_selectY], eax
	mov eax, [g_selectY__uint4+0x4]
	mov [g_selectY+0x4], eax
	mov eax, [g_selectY__uint4+0x8]
	mov [g_selectY+0x8], eax
	mov eax, [g_selectY__uint4+0xc]
	mov [g_selectY+0xc], eax
	mov eax, [g_selectZ__uint4]
	mov [g_selectZ], eax
	mov eax, [g_selectZ__uint4+0x4]
	mov [g_selectZ+0x4], eax
	mov eax, [g_selectZ__uint4+0x8]
	mov [g_selectZ+0x8], eax
	mov eax, [g_selectZ__uint4+0xc]
	mov [g_selectZ+0xc], eax
	mov eax, [g_selectW__uint4]
	mov [g_selectW], eax
	mov eax, [g_selectW__uint4+0x4]
	mov [g_selectW+0x4], eax
	mov eax, [g_selectW__uint4+0x8]
	mov [g_selectW+0x8], eax
	mov eax, [g_selectW__uint4+0xc]
	mov [g_selectW+0xc], eax
	mov eax, [g_keepYZW__uint4]
	mov [g_keepYZW], eax
	mov eax, [g_keepYZW__uint4+0x4]
	mov [g_keepYZW+0x4], eax
	mov eax, [g_keepYZW__uint4+0x8]
	mov [g_keepYZW+0x8], eax
	mov eax, [g_keepYZW__uint4+0xc]
	mov [g_keepYZW+0xc], eax
	mov eax, [g_keepXZW__uint4]
	mov [g_keepXZW], eax
	mov eax, [g_keepXZW__uint4+0x4]
	mov [g_keepXZW+0x4], eax
	mov eax, [g_keepXZW__uint4+0x8]
	mov [g_keepXZW+0x8], eax
	mov eax, [g_keepXZW__uint4+0xc]
	mov [g_keepXZW+0xc], eax
	mov eax, [g_keepXYW__uint4]
	mov [g_keepXYW], eax
	mov eax, [g_keepXYW__uint4+0x4]
	mov [g_keepXYW+0x4], eax
	mov eax, [g_keepXYW__uint4+0x8]
	mov [g_keepXYW+0x8], eax
	mov eax, [g_keepXYW__uint4+0xc]
	mov [g_keepXYW+0xc], eax
	mov eax, [g_keepXYZ__uint4]
	mov [g_keepXYZ], eax
	mov eax, [g_keepXYZ__uint4+0x4]
	mov [g_keepXYZ+0x4], eax
	mov eax, [g_keepXYZ__uint4+0x8]
	mov [g_keepXYZ+0x8], eax
	mov eax, [g_keepXYZ__uint4+0xc]
	mov [g_keepXYZ+0xc], eax
	mov eax, [g_keepXY__uint4]
	mov [g_keepXY], eax
	mov eax, [g_keepXY__uint4+0x4]
	mov [g_keepXY+0x4], eax
	mov eax, [g_keepXY__uint4+0x8]
	mov [g_keepXY+0x8], eax
	mov eax, [g_keepXY__uint4+0xc]
	mov [g_keepXY+0xc], eax
	mov eax, [g_keepZW__uint4]
	mov [g_keepZW], eax
	mov eax, [g_keepZW__uint4+0x4]
	mov [g_keepZW+0x4], eax
	mov eax, [g_keepZW__uint4+0x8]
	mov [g_keepZW+0x8], eax
	mov eax, [g_keepZW__uint4+0xc]
	mov [g_keepZW+0xc], eax
	mov eax, [g_keepX__uint4]
	mov [g_keepX], eax
	mov eax, [g_keepX__uint4+0x4]
	mov [g_keepX+0x4], eax
	mov eax, [g_keepX__uint4+0x8]
	mov [g_keepX+0x8], eax
	mov eax, [g_keepX__uint4+0xc]
	mov [g_keepX+0xc], eax
	mov eax, [g_keepZ__uint4]
	mov [g_keepZ], eax
	mov eax, [g_keepZ__uint4+0x4]
	mov [g_keepZ+0x4], eax
	mov eax, [g_keepZ__uint4+0x8]
	mov [g_keepZ+0x8], eax
	mov eax, [g_keepZ__uint4+0xc]
	mov [g_keepZ+0xc], eax
	pop ebp
	ret


;SMC_FreeCachedSurface_r(static_model_tree_t*, static_model_leaf_t*, int, int)
_Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii:
_Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_90:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov edi, eax
	mov [ebp-0x40], edx
	mov ebx, ecx
	cmp word [eax+ecx*4+0xc], 0x0
	jnz _Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_10
_Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_330:
	lea eax, [ebx+0x1]
	movzx ecx, byte [ebp+0x8]
	shl eax, cl
_Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_290:
	lea eax, [edx+eax*8-0x100]
	mov ecx, [eax+0x4]
	mov edx, [eax]
	mov [ecx], edx
	mov eax, [eax]
	mov [eax+0x4], ecx
_Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_310:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_10:
	mov word [eax+ecx*4+0xc], 0x0
	cmp byte [eax+ecx*4+0xe], 0x0
	jnz _Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_20
	mov edx, [ebp+0x8]
	sub edx, 0x3
	mov [ebp-0x20], edx
	mov ecx, [ebp+0x8]
	sub ecx, 0x2
	mov [ebp-0x1c], ecx
	mov ecx, edx
	jmp _Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_30
_Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_130:
	mov esi, [ebp-0x3c]
	add esi, 0x2
	mov eax, esi
	shl eax, cl
	mov edx, [ebp-0x40]
	lea eax, [edx+eax*8-0x100]
	mov ecx, [eax+0x4]
	mov edx, [eax]
	mov [ecx], edx
	mov eax, [eax]
	mov [eax+0x4], ecx
_Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_160:
	cmp word [edi+esi*4+0xc], 0x0
	jz _Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_40
	mov word [edi+esi*4+0xc], 0x0
	cmp byte [edi+esi*4+0xe], 0x0
	jnz _Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_50
	add esi, esi
	mov [ebp-0x28], esi
	mov ebx, esi
	add ebx, 0x1
	cmp word [edi+ebx*4+0xc], 0x0
	jnz _Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_60
	add esi, 0x2
	mov eax, esi
	movzx ecx, byte [ebp-0x1c]
	shl eax, cl
	mov edx, [ebp-0x40]
	lea eax, [edx+eax*8-0x100]
	mov ecx, [eax+0x4]
	mov edx, [eax]
	mov [ecx], edx
	mov eax, [eax]
	mov [eax+0x4], ecx
_Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_200:
	cmp word [edi+esi*4+0xc], 0x0
	jz _Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_70
	mov word [edi+esi*4+0xc], 0x0
	cmp byte [edi+esi*4+0xe], 0x0
	jnz _Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_80
	lea ebx, [esi+esi]
	lea ecx, [ebx+0x1]
	mov eax, [ebp-0x20]
	mov [esp], eax
	mov edx, [ebp-0x40]
	mov eax, edi
	call _Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_90
	lea esi, [ebx+0x2]
	cmp word [edi+esi*4+0xc], 0x0
	jz _Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_100
	mov word [edi+esi*4+0xc], 0x0
	cmp byte [edi+esi*4+0xe], 0x0
	jnz _Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_110
	mov ecx, [ebp-0x20]
	sub ecx, 0x1
	mov [ebp+0x8], ecx
	lea ebx, [esi+esi]
	lea ecx, [ebx+0x1]
	mov eax, [ebp+0x8]
	mov [esp], eax
	mov edx, [ebp-0x40]
	mov eax, edi
	call _Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_90
	add ebx, 0x2
	cmp word [edi+ebx*4+0xc], 0x0
	jz _Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_120
	mov word [edi+ebx*4+0xc], 0x0
	sub dword [ebp-0x20], 0x4
	sub dword [ebp-0x1c], 0x4
	cmp byte [edi+ebx*4+0xe], 0x0
	jnz _Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_20
	mov ecx, [ebp-0x20]
_Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_30:
	add ecx, 0x2
	mov [ebp-0x38], ecx
	add ebx, ebx
	mov [ebp-0x3c], ebx
	add ebx, 0x1
	cmp word [edi+ebx*4+0xc], 0x0
	jz _Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_130
	mov word [edi+ebx*4+0xc], 0x0
	cmp byte [edi+ebx*4+0xe], 0x0
	jz _Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_140
	mov esi, [ebp-0x3c]
	add esi, 0x2
	mov eax, esi
	movzx ecx, byte [ebp-0x38]
	shl eax, cl
	mov edx, [ebp-0x40]
	lea eax, [edx+eax*8-0x100]
	mov [ebp-0x30], eax
	movzx edx, word [eax+0x6]
	cmp dx, 0xffff
	jz _Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_150
	mov eax, rgp
	mov ecx, [eax+0x20a0]
	movzx eax, dx
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov eax, [ebp-0x30]
	movzx eax, word [eax+0x4]
	mov [ebp-0x4c], eax
	add eax, eax
	lea edx, [eax+edx*4]
	add edx, [ecx+0x29c]
	mov word [edx+0x3c], 0x0
	mov edx, [ebp-0x30]
	mov word [edx+0x6], 0xffff
_Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_150:
	mov byte [edi+ebx*4+0xe], 0x0
	jmp _Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_160
_Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_20:
	lea eax, [ebx+0x1]
	movzx ecx, byte [ebp+0x8]
	shl eax, cl
	mov edx, [ebp-0x40]
	lea esi, [edx+eax*8-0x100]
	movzx edx, word [esi+0x6]
	cmp dx, 0xffff
	jz _Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_170
	mov eax, rgp
	mov ecx, [eax+0x20a0]
	movzx eax, dx
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	movzx eax, word [esi+0x4]
	add eax, eax
	lea edx, [eax+edx*4]
	add edx, [ecx+0x29c]
	mov word [edx+0x3c], 0x0
	mov word [esi+0x6], 0xffff
_Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_170:
	mov byte [edi+ebx*4+0xe], 0x0
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_60:
	mov word [edi+ebx*4+0xc], 0x0
	cmp byte [edi+ebx*4+0xe], 0x0
	jz _Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_180
	mov esi, [ebp-0x28]
	add esi, 0x2
	mov eax, esi
	movzx ecx, byte [ebp-0x1c]
	shl eax, cl
	mov edx, [ebp-0x40]
	lea eax, [edx+eax*8-0x100]
	mov [ebp-0x24], eax
	movzx edx, word [eax+0x6]
	cmp dx, 0xffff
	jz _Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_190
	mov eax, rgp
	mov ecx, [eax+0x20a0]
	movzx eax, dx
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov eax, [ebp-0x24]
	movzx eax, word [eax+0x4]
	mov [ebp-0x4c], eax
	add eax, eax
	lea edx, [eax+edx*4]
	add edx, [ecx+0x29c]
	mov word [edx+0x3c], 0x0
	mov edx, [ebp-0x24]
	mov word [edx+0x6], 0xffff
_Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_190:
	mov byte [edi+ebx*4+0xe], 0x0
	jmp _Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_200
_Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_140:
	add ebx, ebx
	mov [ebp-0x34], ebx
	mov esi, ebx
	add esi, 0x1
	cmp word [edi+esi*4+0xc], 0x0
	jz _Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_210
	mov word [edi+esi*4+0xc], 0x0
	cmp byte [edi+esi*4+0xe], 0x0
	jz _Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_220
	mov ebx, [ebp-0x34]
	add ebx, 0x2
	mov eax, ebx
	movzx ecx, byte [ebp-0x1c]
	shl eax, cl
	mov edx, [ebp-0x40]
	lea eax, [edx+eax*8-0x100]
	mov [ebp-0x2c], eax
	movzx edx, word [eax+0x6]
	cmp dx, 0xffff
	jz _Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_230
	mov eax, rgp
	mov ecx, [eax+0x20a0]
	movzx eax, dx
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov eax, [ebp-0x2c]
	movzx eax, word [eax+0x4]
	mov [ebp-0x4c], eax
	add eax, eax
	lea edx, [eax+edx*4]
	add edx, [ecx+0x29c]
	mov word [edx+0x3c], 0x0
	mov edx, [ebp-0x2c]
	mov word [edx+0x6], 0xffff
_Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_230:
	mov byte [edi+esi*4+0xe], 0x0
	cmp word [edi+ebx*4+0xc], 0x0
	jz _Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_240
_Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_270:
	mov word [edi+ebx*4+0xc], 0x0
	cmp byte [edi+ebx*4+0xe], 0x0
	jz _Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_250
	mov eax, [ebp-0x34]
	add eax, 0x3
	movzx ecx, byte [ebp-0x1c]
	shl eax, cl
	mov edx, [ebp-0x40]
	lea esi, [edx+eax*8-0x100]
	movzx edx, word [esi+0x6]
	cmp dx, 0xffff
	jz _Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_260
	mov eax, rgp
	mov ecx, [eax+0x20a0]
	movzx eax, dx
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	movzx eax, word [esi+0x4]
	add eax, eax
	lea edx, [eax+edx*4]
	add edx, [ecx+0x29c]
	mov word [edx+0x3c], 0x0
	mov word [esi+0x6], 0xffff
_Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_260:
	mov byte [edi+ebx*4+0xe], 0x0
	mov esi, [ebp-0x3c]
	add esi, 0x2
	jmp _Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_160
_Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_210:
	add ebx, 0x2
	mov eax, ebx
	movzx ecx, byte [ebp-0x1c]
	shl eax, cl
	mov edx, [ebp-0x40]
	lea eax, [edx+eax*8-0x100]
	mov ecx, [eax+0x4]
	mov edx, [eax]
	mov [ecx], edx
	mov eax, [eax]
	mov [eax+0x4], ecx
_Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_280:
	cmp word [edi+ebx*4+0xc], 0x0
	jnz _Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_270
_Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_240:
	mov eax, [ebp-0x34]
	add eax, 0x3
	movzx ecx, byte [ebp-0x1c]
	shl eax, cl
	mov edx, [ebp-0x40]
	lea eax, [edx+eax*8-0x100]
	mov ecx, [eax+0x4]
	mov edx, [eax]
	mov [ecx], edx
	mov eax, [eax]
	mov [eax+0x4], ecx
	mov esi, [ebp-0x3c]
	add esi, 0x2
	jmp _Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_160
_Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_180:
	add ebx, ebx
	lea ecx, [ebx+0x1]
	mov eax, [ebp-0x20]
	mov [esp], eax
	mov edx, [ebp-0x40]
	mov eax, edi
	call _Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_90
	lea ecx, [ebx+0x2]
	mov edx, [ebp-0x20]
	mov [esp], edx
	mov edx, [ebp-0x40]
	mov eax, edi
	call _Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_90
	mov esi, [ebp-0x28]
	add esi, 0x2
	jmp _Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_200
_Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_250:
	add ebx, ebx
	lea ecx, [ebx+0x1]
	mov eax, [ebp-0x20]
	mov [esp], eax
	mov edx, [ebp-0x40]
	mov eax, edi
	call _Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_90
	lea ecx, [ebx+0x2]
	mov edx, [ebp-0x20]
	mov [esp], edx
	mov edx, [ebp-0x40]
	mov eax, edi
	call _Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_90
	mov esi, [ebp-0x3c]
	add esi, 0x2
	jmp _Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_160
_Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_220:
	lea ebx, [esi+esi]
	lea ecx, [ebx+0x1]
	mov eax, [ebp-0x20]
	mov [esp], eax
	mov edx, [ebp-0x40]
	mov eax, edi
	call _Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_90
	lea ecx, [ebx+0x2]
	mov edx, [ebp-0x20]
	mov [esp], edx
	mov edx, [ebp-0x40]
	mov eax, edi
	call _Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_90
	mov ebx, [ebp-0x34]
	add ebx, 0x2
	jmp _Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_280
_Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_40:
	mov eax, [ebp-0x3c]
	add eax, 0x3
	movzx ecx, byte [ebp-0x38]
	shl eax, cl
	mov edx, [ebp-0x40]
	jmp _Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_290
_Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_50:
	mov eax, [ebp-0x3c]
	add eax, 0x3
	movzx ecx, byte [ebp-0x38]
_Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_320:
	shl eax, cl
	mov edx, [ebp-0x40]
	lea ebx, [edx+eax*8-0x100]
	movzx edx, word [ebx+0x6]
	cmp dx, 0xffff
	jz _Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_300
	mov eax, rgp
	mov ecx, [eax+0x20a0]
	movzx eax, dx
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	movzx eax, word [ebx+0x4]
	add eax, eax
	lea edx, [eax+edx*4]
	add edx, [ecx+0x29c]
	mov word [edx+0x3c], 0x0
	mov word [ebx+0x6], 0xffff
_Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_300:
	mov byte [edi+esi*4+0xe], 0x0
	jmp _Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_310
_Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_70:
	mov eax, [ebp-0x28]
	add eax, 0x3
	movzx ecx, byte [ebp-0x1c]
	shl eax, cl
	mov edx, [ebp-0x40]
	jmp _Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_290
_Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_80:
	mov eax, [ebp-0x28]
	add eax, 0x3
	movzx ecx, byte [ebp-0x1c]
	jmp _Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_320
_Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_100:
	lea eax, [ebx+0x3]
	movzx ecx, byte [ebp-0x20]
	shl eax, cl
	mov edx, [ebp-0x40]
	jmp _Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_290
_Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_110:
	lea eax, [ebx+0x3]
	movzx ecx, byte [ebp-0x20]
	jmp _Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_320
_Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_120:
	mov edx, [ebp-0x40]
	jmp _Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii_330


;SMC_GetFreeBlockOfSize(unsigned int, unsigned int)
_Z22SMC_GetFreeBlockOfSizejj:
_Z22SMC_GetFreeBlockOfSizejj_150:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, eax
	mov [ebp-0x1c], edx
	test edx, edx
	jnz _Z22SMC_GetFreeBlockOfSizejj_10
	mov ebx, [eax*8+s_cache+0x410c0]
	mov eax, rg
	mov eax, [eax+0x15c]
	sub eax, [ebx+0x8]
	cmp eax, 0x3
	jbe _Z22SMC_GetFreeBlockOfSizejj_20
	mov ecx, ebx
	sub ecx, s_cache
	sar ecx, 0x3
	mov eax, ecx
	shl eax, 0x5
	mov edx, ecx
	shl edx, 0xa
	sub edx, eax
	add edx, ecx
	mov eax, edx
	shl eax, 0xf
	sub eax, edx
	shl eax, 0x5
	add eax, ecx
	shl eax, 0x8
	lea ecx, [eax+0x21000]
	lea edi, [ecx+s_cache]
	cmp word [ebx+0xc], 0x0
	jz _Z22SMC_GetFreeBlockOfSizejj_30
	mov word [ebx+0xc], 0x0
	cmp byte [ebx+0xe], 0x0
	jz _Z22SMC_GetFreeBlockOfSizejj_40
	movzx edx, word [edi+0x6]
	cmp dx, 0xffff
	jz _Z22SMC_GetFreeBlockOfSizejj_50
	mov eax, rgp
	mov ecx, [eax+0x20a0]
	movzx eax, dx
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	movzx eax, word [edi+0x4]
	add eax, eax
	lea edx, [eax+edx*4]
	add edx, [ecx+0x29c]
	mov word [edx+0x3c], 0x0
	mov word [edi+0x6], 0xffff
_Z22SMC_GetFreeBlockOfSizejj_50:
	mov byte [ebx+0xe], 0x0
	jmp _Z22SMC_GetFreeBlockOfSizejj_60
_Z22SMC_GetFreeBlockOfSizejj_10:
	sub edx, 0x1
	lea eax, [eax+eax*2]
	lea eax, [edx+eax*2]
	lea ebx, [eax*8+s_cache+0x41000]
	cmp ebx, [ebx+0x4]
	jz _Z22SMC_GetFreeBlockOfSizejj_70
_Z22SMC_GetFreeBlockOfSizejj_160:
	mov ebx, [ebx+0x4]
	mov eax, [ebx+0x4]
	mov edx, [ebx]
	mov [eax], edx
	mov edx, [ebx]
	mov [edx+0x4], eax
	mov eax, ebx
	sub eax, s_cache+0x21000
	js _Z22SMC_GetFreeBlockOfSizejj_80
_Z22SMC_GetFreeBlockOfSizejj_130:
	sar eax, 0x8
	mov edi, eax
	shl edi, 0x8
	lea edx, [edi+eax*8]
	lea ecx, [edx+s_cache]
	cmp dword [ebp-0x1c], 0x1
	jz _Z22SMC_GetFreeBlockOfSizejj_90
_Z22SMC_GetFreeBlockOfSizejj_120:
	add edi, s_cache+0x21000
	lea eax, [esi+esi*2]
	mov edx, [ebp-0x1c]
	lea eax, [edx+eax*2]
	lea esi, [eax*8+s_cache+0x41000]
	mov [ebx], esi
	mov eax, [esi+0x4]
	mov [ebx+0x4], eax
	mov [esi+0x4], ebx
	mov eax, [ebx+0x4]
	mov [eax], ebx
	mov edx, ebx
	sub edx, edi
	js _Z22SMC_GetFreeBlockOfSizejj_100
_Z22SMC_GetFreeBlockOfSizejj_140:
	sar edx, 0x3
	mov ecx, 0x5
	sub ecx, [ebp-0x1c]
	mov eax, 0x1
	shl eax, cl
	lea eax, [edx+eax]
	lea eax, [edi+eax*8]
	mov [eax], esi
	mov [eax+0x4], ebx
	mov [esi+0x4], eax
	mov edx, [eax+0x4]
	mov [edx], eax
	mov eax, 0x1
_Z22SMC_GetFreeBlockOfSizejj_170:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22SMC_GetFreeBlockOfSizejj_20:
	xor eax, eax
	movzx eax, al
_Z22SMC_GetFreeBlockOfSizejj_110:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22SMC_GetFreeBlockOfSizejj_30:
	mov eax, [edi+0x4]
	mov edx, [ecx+s_cache]
	mov [eax], edx
	mov edx, [ecx+s_cache]
	mov [edx+0x4], eax
_Z22SMC_GetFreeBlockOfSizejj_60:
	mov edx, [ebx+0x4]
	mov eax, [ebx]
	mov [edx], eax
	mov eax, [ebx]
	mov [eax+0x4], edx
	lea eax, [esi+esi*2]
	shl eax, 0x4
	add eax, s_cache+0x41000
	mov [edi], eax
	mov edx, [eax+0x4]
	mov [edi+0x4], edx
	mov [eax+0x4], edi
	mov eax, [edi+0x4]
	mov [eax], edi
	mov eax, 0x1
	movzx eax, al
	jmp _Z22SMC_GetFreeBlockOfSizejj_110
_Z22SMC_GetFreeBlockOfSizejj_90:
	lea eax, [esi*8+s_cache+0x410c0]
	mov [edx+s_cache], eax
	mov edx, [eax+0x4]
	mov [ecx+0x4], edx
	mov [eax+0x4], ecx
	mov eax, [ecx+0x4]
	mov [eax], ecx
	jmp _Z22SMC_GetFreeBlockOfSizejj_120
_Z22SMC_GetFreeBlockOfSizejj_80:
	add eax, 0xff
	jmp _Z22SMC_GetFreeBlockOfSizejj_130
_Z22SMC_GetFreeBlockOfSizejj_100:
	add edx, 0x7
	jmp _Z22SMC_GetFreeBlockOfSizejj_140
_Z22SMC_GetFreeBlockOfSizejj_70:
	mov eax, esi
	call _Z22SMC_GetFreeBlockOfSizejj_150
	test al, al
	jnz _Z22SMC_GetFreeBlockOfSizejj_160
	xor eax, eax
	jmp _Z22SMC_GetFreeBlockOfSizejj_170
_Z22SMC_GetFreeBlockOfSizejj_40:
	mov dword [esp], 0x4
	mov ecx, 0x1
	mov edx, edi
	mov eax, ebx
	call _Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii
	mov dword [esp], 0x4
	mov ecx, 0x2
	mov edx, edi
	mov eax, ebx
	call _Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii
	jmp _Z22SMC_GetFreeBlockOfSizejj_60


;R_UncacheStaticModel(unsigned int)
_Z20R_UncacheStaticModelj:
	push ebp
	mov ebp, esp
	push ebx
	mov edx, [ebp+0x8]
	mov eax, rgp
	mov ecx, [eax+0x20a0]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	mov edx, [ecx+0x29c]
	lea edx, [edx+eax*4]
	mov ebx, 0x4
_Z20R_UncacheStaticModelj_20:
	movzx eax, word [edx+0x3c]
	movzx ecx, ax
	test ax, ax
	jz _Z20R_UncacheStaticModelj_10
	mov word [ecx*8+s_cache+0x20ffe], 0xffff
	mov word [edx+0x3c], 0x0
_Z20R_UncacheStaticModelj_10:
	add edx, 0x2
	sub ebx, 0x1
	jnz _Z20R_UncacheStaticModelj_20
	pop ebx
	pop ebp
	ret
	nop


;R_GetCachedSModelSurf(unsigned int)
_Z21R_GetCachedSModelSurfj:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	lea eax, [eax*8+s_cache+0x20ff8]
	pop ebp
	ret
	nop


;R_InitStaticModelCache()
_Z22R_InitStaticModelCachev:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, g_OptimizeVBTransfers
	mov byte [ebx], 0x1
	mov dword [esp+0x8], _cstring_static_model_cac
	mov dword [esp+0x4], 0x800000
	mov eax, gfxBuf
	add eax, 0xc
	mov [esp], eax
	call _Z26R_AllocDynamicVertexBufferPP22IDirect3DVertexBuffer9iPKc
	mov byte [ebx], 0x0
	xor ebx, ebx
	mov ecx, 0x21000
_Z22R_InitStaticModelCachev_20:
	lea eax, [ecx+s_cache]
	mov edx, 0x20
_Z22R_InitStaticModelCachev_10:
	mov word [eax+0x6], 0xffff
	add eax, 0x8
	sub edx, 0x1
	jnz _Z22R_InitStaticModelCachev_10
	add ebx, 0x1
	add ecx, 0x100
	cmp ebx, 0x200
	jnz _Z22R_InitStaticModelCachev_20
	mov dword [ebp-0x1c], 0x0
	mov edi, s_cache
	mov esi, s_cache+0x41000
	mov dword [ebp-0x20], 0x41000
	mov dword [ebp-0x24], s_cache+0x410c0
	mov dword [ebp-0x28], 0x0
_Z22R_InitStaticModelCachev_60:
	mov eax, [ebp-0x24]
	mov [edi+0x410c0], eax
	mov [edi+0x410c4], eax
	mov edx, [ebp-0x20]
	add edx, s_cache
	xor ecx, ecx
	mov eax, [ebp-0x28]
	add eax, s_cache+0x41000
_Z22R_InitStaticModelCachev_30:
	mov [edx], eax
	mov [edx+0x4], eax
	add ecx, 0x1
	add eax, 0x8
	add edx, 0x8
	cmp ecx, 0x6
	jnz _Z22R_InitStaticModelCachev_30
	xor ebx, ebx
	mov eax, [ebp-0x1c]
	shl eax, 0xf
	lea ecx, [eax+0x21000]
	mov edx, [esi+0x4]
	jmp _Z22R_InitStaticModelCachev_40
_Z22R_InitStaticModelCachev_50:
	mov edx, eax
_Z22R_InitStaticModelCachev_40:
	lea eax, [ecx+s_cache]
	mov [ecx+s_cache], esi
	mov [ecx+s_cache+0x4], edx
	mov [esi+0x4], eax
	mov edx, [ecx+s_cache+0x4]
	mov [edx], eax
	add ebx, 0x1
	add ecx, 0x100
	cmp ebx, 0x80
	jnz _Z22R_InitStaticModelCachev_50
	add dword [ebp-0x1c], 0x1
	add dword [ebp-0x28], 0x30
	add dword [ebp-0x24], 0x8
	add dword [ebp-0x20], 0x30
	add esi, 0x30
	add edi, 0x8
	cmp dword [ebp-0x1c], 0x4
	jnz _Z22R_InitStaticModelCachev_60
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;R_FlushStaticModelCache()
_Z23R_FlushStaticModelCachev:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [s_cache+0x410c4]
	test eax, eax
	jz _Z23R_FlushStaticModelCachev_10
	xor edi, edi
	jmp _Z23R_FlushStaticModelCachev_20
_Z23R_FlushStaticModelCachev_40:
	mov eax, [ebx+0x4]
	mov edx, [ecx+s_cache]
	mov [eax], edx
	mov edx, [ecx+s_cache]
	mov [edx+0x4], eax
_Z23R_FlushStaticModelCachev_70:
	mov eax, [edi*8+s_cache+0x410c4]
	mov ecx, [eax+0x4]
	mov edx, [eax]
	mov [ecx], edx
	mov eax, [eax]
	mov [eax+0x4], ecx
	lea eax, [edi+edi*2]
	shl eax, 0x4
	add eax, s_cache+0x41000
	mov [ebx], eax
	mov edx, [eax+0x4]
	mov [ebx+0x4], edx
	mov [eax+0x4], ebx
	mov eax, [ebx+0x4]
	mov [eax], ebx
_Z23R_FlushStaticModelCachev_20:
	mov esi, [edi*8+s_cache+0x410c4]
	lea eax, [edi*8+s_cache+0x410c0]
	cmp esi, eax
	jz _Z23R_FlushStaticModelCachev_30
	mov ecx, esi
	sub ecx, s_cache
	sar ecx, 0x3
	mov eax, ecx
	shl eax, 0x5
	mov edx, ecx
	shl edx, 0xa
	sub edx, eax
	add edx, ecx
	mov eax, edx
	shl eax, 0xf
	sub eax, edx
	shl eax, 0x5
	add eax, ecx
	shl eax, 0x8
	lea ecx, [eax+0x21000]
	lea ebx, [ecx+s_cache]
	cmp word [esi+0xc], 0x0
	jz _Z23R_FlushStaticModelCachev_40
	mov word [esi+0xc], 0x0
	cmp byte [esi+0xe], 0x0
	jz _Z23R_FlushStaticModelCachev_50
	movzx edx, word [ebx+0x6]
	cmp dx, 0xffff
	jz _Z23R_FlushStaticModelCachev_60
	mov eax, rgp
	mov ecx, [eax+0x20a0]
	movzx eax, dx
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	movzx eax, word [ebx+0x4]
	add eax, eax
	lea edx, [eax+edx*4]
	add edx, [ecx+0x29c]
	mov word [edx+0x3c], 0x0
	mov word [ebx+0x6], 0xffff
_Z23R_FlushStaticModelCachev_60:
	mov byte [esi+0xe], 0x0
	jmp _Z23R_FlushStaticModelCachev_70
_Z23R_FlushStaticModelCachev_30:
	add edi, 0x1
	cmp edi, 0x3
	jbe _Z23R_FlushStaticModelCachev_20
	xor ebx, ebx
	mov ecx, 0x21000
_Z23R_FlushStaticModelCachev_90:
	lea eax, [ecx+s_cache]
	mov edx, 0x20
_Z23R_FlushStaticModelCachev_80:
	mov word [eax+0x6], 0xffff
	add eax, 0x8
	sub edx, 0x1
	jnz _Z23R_FlushStaticModelCachev_80
	add ebx, 0x1
	add ecx, 0x100
	cmp ebx, 0x200
	jnz _Z23R_FlushStaticModelCachev_90
	mov dword [ebp-0x1c], 0x0
	mov edi, s_cache
	mov esi, s_cache+0x41000
	mov dword [ebp-0x20], 0x41000
	mov dword [ebp-0x24], s_cache+0x410c0
	mov dword [ebp-0x28], 0x0
_Z23R_FlushStaticModelCachev_130:
	mov eax, [ebp-0x24]
	mov [edi+0x410c0], eax
	mov [edi+0x410c4], eax
	mov edx, [ebp-0x20]
	add edx, s_cache
	xor ecx, ecx
	mov eax, [ebp-0x28]
	add eax, s_cache+0x41000
_Z23R_FlushStaticModelCachev_100:
	mov [edx], eax
	mov [edx+0x4], eax
	add ecx, 0x1
	add eax, 0x8
	add edx, 0x8
	cmp ecx, 0x6
	jnz _Z23R_FlushStaticModelCachev_100
	xor ebx, ebx
	mov eax, [ebp-0x1c]
	shl eax, 0xf
	lea ecx, [eax+0x21000]
	mov edx, [esi+0x4]
	jmp _Z23R_FlushStaticModelCachev_110
_Z23R_FlushStaticModelCachev_120:
	mov edx, eax
_Z23R_FlushStaticModelCachev_110:
	lea eax, [ecx+s_cache]
	mov [ecx+s_cache], esi
	mov [ecx+s_cache+0x4], edx
	mov [esi+0x4], eax
	mov edx, [ecx+s_cache+0x4]
	mov [edx], eax
	add ebx, 0x1
	add ecx, 0x100
	cmp ebx, 0x80
	jnz _Z23R_FlushStaticModelCachev_120
	add dword [ebp-0x1c], 0x1
	add dword [ebp-0x28], 0x30
	add dword [ebp-0x24], 0x8
	add dword [ebp-0x20], 0x30
	add esi, 0x30
	add edi, 0x8
	cmp dword [ebp-0x1c], 0x4
	jnz _Z23R_FlushStaticModelCachev_130
_Z23R_FlushStaticModelCachev_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23R_FlushStaticModelCachev_50:
	mov dword [esp], 0x4
	mov ecx, 0x1
	mov edx, ebx
	mov eax, esi
	call _Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii
	mov dword [esp], 0x4
	mov ecx, 0x2
	mov edx, ebx
	mov eax, esi
	call _Z23SMC_FreeCachedSurface_rP19static_model_tree_tP19static_model_leaf_tii
	jmp _Z23R_FlushStaticModelCachev_70
	nop


;R_CacheStaticModelSurface(unsigned int, unsigned int, XModelLodInfo const*)
_Z25R_CacheStaticModelSurfacejjPK13XModelLodInfo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov eax, dx_ctx
	cmp byte [eax+0x2c6c], 0x0
	jnz _Z25R_CacheStaticModelSurfacejjPK13XModelLodInfo_10
	mov edx, [ebp+0xc]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	shl eax, 0x2
	mov [ebp-0x50], eax
	mov eax, rgp
	mov edx, [eax+0x20a0]
	mov ecx, [ebp+0x10]
	movzx eax, byte [ecx+0x18]
	add eax, eax
	add eax, [edx+0x29c]
	mov ebx, [ebp-0x50]
	movzx eax, word [eax+ebx+0x3c]
	test ax, ax
	jnz _Z25R_CacheStaticModelSurfacejjPK13XModelLodInfo_20
	movzx eax, byte [ecx+0x1a]
	mov [ebp-0x54], eax
	mov dword [ebp-0x48], 0x1
	mov ecx, eax
	shl dword [ebp-0x48], cl
	mov eax, frontEndDataOut
	mov eax, [eax]
	cmp dword [eax+0xf0220], 0x100
	jz _Z25R_CacheStaticModelSurfacejjPK13XModelLodInfo_10
	mov eax, [eax+0xf0224]
	add eax, [ebp-0x48]
	cmp eax, 0x2000
	ja _Z25R_CacheStaticModelSurfacejjPK13XModelLodInfo_10
	mov dword [ebp-0x44], 0x9
	mov ebx, [ebp-0x54]
	sub [ebp-0x44], ebx
	mov edi, [ebp+0x8]
	lea eax, [edi+edi*2]
	mov edx, [ebp-0x44]
	lea eax, [edx+eax*2]
	lea ebx, [eax*8+s_cache+0x41000]
	cmp ebx, [ebx+0x4]
	jz _Z25R_CacheStaticModelSurfacejjPK13XModelLodInfo_30
_Z25R_CacheStaticModelSurfacejjPK13XModelLodInfo_140:
	mov ecx, [ebx+0x4]
	mov eax, [ecx+0x4]
	mov edx, [ecx]
	mov [eax], edx
	mov edx, [ecx]
	mov [edx+0x4], eax
	mov eax, ecx
	sub eax, s_cache+0x21000
	js _Z25R_CacheStaticModelSurfacejjPK13XModelLodInfo_40
_Z25R_CacheStaticModelSurfacejjPK13XModelLodInfo_170:
	sar eax, 0x8
	mov [ebp-0x58], eax
	mov esi, eax
	shl esi, 0x8
	lea edx, [esi+eax*8]
	lea ebx, [edx+s_cache]
	mov eax, [ebp-0x44]
	test eax, eax
	jnz _Z25R_CacheStaticModelSurfacejjPK13XModelLodInfo_50
	mov edi, [ebp+0x8]
	lea eax, [edi*8+s_cache+0x410c0]
	mov [edx+s_cache], eax
	mov edx, [eax+0x4]
	mov [ebx+0x4], edx
	mov [eax+0x4], ebx
	mov eax, [ebx+0x4]
	mov [eax], ebx
_Z25R_CacheStaticModelSurfacejjPK13XModelLodInfo_50:
	lea edi, [esi+s_cache+0x21000]
	mov eax, ecx
	sub eax, edi
	js _Z25R_CacheStaticModelSurfacejjPK13XModelLodInfo_60
_Z25R_CacheStaticModelSurfacejjPK13XModelLodInfo_160:
	mov esi, eax
	sar esi, 0x3
	lea eax, [esi+0x20]
	mov ecx, 0x5
	sub ecx, [ebp-0x44]
	shr eax, cl
	lea edx, [eax-0x1]
	mov byte [ebx+edx*4+0xe], 0x1
	mov eax, 0x1
	movzx ecx, byte [ebp-0x54]
	shl eax, cl
	add [ebx+edx*4+0xc], ax
	test edx, edx
	jz _Z25R_CacheStaticModelSurfacejjPK13XModelLodInfo_70
_Z25R_CacheStaticModelSurfacejjPK13XModelLodInfo_80:
	sub edx, 0x1
	shr edx, 1
	add [ebx+edx*4+0xc], ax
	test edx, edx
	jnz _Z25R_CacheStaticModelSurfacejjPK13XModelLodInfo_80
_Z25R_CacheStaticModelSurfacejjPK13XModelLodInfo_70:
	mov edx, [ebp-0x58]
	shl edx, 0x5
	lea eax, [esi+edx]
	shl eax, 0x4
	mov [edi+esi*8], eax
	lea edx, [edx+esi+0x1]
	movzx edi, dx
	test di, di
	jz _Z25R_CacheStaticModelSurfacejjPK13XModelLodInfo_10
	mov ecx, frontEndDataOut
	mov edx, [ecx]
	mov eax, [edx+0xf0220]
	mov [edx+eax*2+0xf0020], di
	mov eax, [ecx]
	add dword [eax+0xf0220], 0x1
	movzx eax, di
	lea esi, [eax*8+0x20ff8]
	lea ebx, [esi+s_cache]
	mov [ebp-0x4c], ebx
	mov [ebp-0x40], eax
	mov eax, rgp
	mov eax, [eax+0x20a0]
	mov [ebp-0x6c], eax
	mov edx, [ebp+0x10]
	movzx edx, byte [edx+0x18]
	mov ebx, [ebp-0x50]
	lea eax, [ebx+edx*2]
	mov edx, [ebp-0x6c]
	add eax, [edx+0x29c]
	movzx ebx, word [ebp-0x40]
	mov [eax+0x3c], bx
	movzx edx, word [ebp+0xc]
	mov eax, [ebp-0x4c]
	mov [eax+0x6], dx
	mov ebx, [ebp+0x10]
	movzx eax, byte [ebx+0x18]
	mov edx, [ebp-0x4c]
	mov [edx+0x4], ax
	mov [ebp-0x1c], di
	mov eax, [ecx]
	movzx edx, word [eax+0xf0224]
	mov [ebp-0x1a], dx
	mov ecx, [ebp-0x48]
	add [eax+0xf0224], ecx
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov dword [esp], 0xf
	call _Z14R_AddWorkerCmd13WorkerCmdTypePv
	mov esi, [esi+s_cache]
	mov [ebp-0x3c], esi
	mov ebx, rgp
	mov eax, [ebx+0x20a0]
	mov edi, [ebp-0x4c]
	movzx edx, word [edi+0x6]
	mov ecx, [eax+0x29c]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	mov esi, [ecx+eax*4+0x38]
	movzx ebx, word [edi+0x4]
	mov [esp+0x8], ebx
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z17XModelGetSurfacesPK6XModelPP8XSurfacei
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z18XModelGetSurfCountPK6XModeli
	mov [ebp-0x38], eax
	test eax, eax
	jz _Z25R_CacheStaticModelSurfacejjPK13XModelLodInfo_90
	mov eax, [ebp-0x3c]
	shl eax, 0x2
	mov [ebp-0x30], eax
	mov dword [ebp-0x34], 0x0
	mov dword [ebp-0x2c], 0x0
_Z25R_CacheStaticModelSurfacejjPK13XModelLodInfo_110:
	mov ecx, [ebp-0x2c]
	add ecx, [ebp-0x20]
	movzx eax, word [ebp-0x3c]
	add ax, [ecx+0xa]
	movzx eax, ax
	mov esi, eax
	shl esi, 0x10
	or esi, eax
	mov ebx, [ecx+0xc]
	movzx eax, word [ecx+0x8]
	lea eax, [eax+eax*2]
	add eax, [ebp-0x30]
	mov edi, gfxBuf
	mov edx, [edi+0x8]
	lea edx, [edx+eax*2]
	movzx eax, word [ecx+0x4]
	shr ax, 1
	movzx edi, ax
	xor ecx, ecx
_Z25R_CacheStaticModelSurfacejjPK13XModelLodInfo_100:
	mov eax, esi
	add eax, [ebx]
	mov [edx], eax
	mov eax, esi
	add eax, [ebx+0x4]
	mov [edx+0x4], eax
	mov eax, esi
	add eax, [ebx+0x8]
	mov [edx+0x8], eax
	add edx, 0xc
	add ebx, 0xc
	add ecx, 0x1
	cmp edi, ecx
	jnz _Z25R_CacheStaticModelSurfacejjPK13XModelLodInfo_100
	add dword [ebp-0x34], 0x1
	add dword [ebp-0x2c], 0x38
	mov eax, [ebp-0x34]
	cmp [ebp-0x38], eax
	jnz _Z25R_CacheStaticModelSurfacejjPK13XModelLodInfo_110
_Z25R_CacheStaticModelSurfacejjPK13XModelLodInfo_90:
	mov eax, [ebp-0x4c]
	sub eax, s_cache+0x21000
	js _Z25R_CacheStaticModelSurfacejjPK13XModelLodInfo_120
_Z25R_CacheStaticModelSurfacejjPK13XModelLodInfo_180:
	mov edx, eax
	sar edx, 0x8
	mov eax, edx
	shl eax, 0x8
	lea edx, [eax+edx*8]
	lea ecx, [edx+s_cache]
	mov eax, rg
	mov eax, [eax+0x15c]
	mov [ecx+0x8], eax
	mov ebx, [ecx+0x4]
	mov eax, [edx+s_cache]
	mov [ebx], eax
	mov eax, [edx+s_cache]
	mov [eax+0x4], ebx
	mov ebx, [ebp+0x8]
	lea eax, [ebx*8+s_cache+0x410c0]
	mov [edx+s_cache], eax
	mov edx, [eax+0x4]
	mov [ecx+0x4], edx
	mov [eax+0x4], ecx
	mov eax, [ecx+0x4]
	mov [eax], ecx
	mov eax, [ebp-0x40]
	jmp _Z25R_CacheStaticModelSurfacejjPK13XModelLodInfo_130
_Z25R_CacheStaticModelSurfacejjPK13XModelLodInfo_30:
	mov eax, edi
	call _Z22SMC_GetFreeBlockOfSizejj
	test al, al
	jnz _Z25R_CacheStaticModelSurfacejjPK13XModelLodInfo_140
_Z25R_CacheStaticModelSurfacejjPK13XModelLodInfo_10:
	mov dword [ebp-0x40], 0x0
	mov eax, [ebp-0x40]
_Z25R_CacheStaticModelSurfacejjPK13XModelLodInfo_130:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25R_CacheStaticModelSurfacejjPK13XModelLodInfo_20:
	movzx esi, ax
	lea edx, [esi*8-0x8]
	lea eax, [edx+0xff]
	cmp edx, 0xffffffff
	cmovg eax, edx
	sar eax, 0x8
	mov edx, eax
	shl edx, 0x8
	lea ebx, [edx+eax*8]
	lea ecx, [ebx+s_cache]
	mov eax, rg
	mov eax, [eax+0x15c]
	cmp [ecx+0x8], eax
	jz _Z25R_CacheStaticModelSurfacejjPK13XModelLodInfo_150
	mov [ecx+0x8], eax
	mov edx, [ecx+0x4]
	mov eax, [ebx+s_cache]
	mov [edx], eax
	mov eax, [ebx+s_cache]
	mov [eax+0x4], edx
	mov edi, [ebp+0x8]
	lea eax, [edi*8+s_cache+0x410c0]
	mov [ebx+s_cache], eax
	mov edx, [eax+0x4]
	mov [ecx+0x4], edx
	mov [eax+0x4], ecx
	mov eax, [ecx+0x4]
	mov [eax], ecx
_Z25R_CacheStaticModelSurfacejjPK13XModelLodInfo_150:
	mov [ebp-0x40], esi
	mov eax, esi
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25R_CacheStaticModelSurfacejjPK13XModelLodInfo_60:
	add eax, 0x7
	jmp _Z25R_CacheStaticModelSurfacejjPK13XModelLodInfo_160
_Z25R_CacheStaticModelSurfacejjPK13XModelLodInfo_40:
	add eax, 0xff
	jmp _Z25R_CacheStaticModelSurfacejjPK13XModelLodInfo_170
_Z25R_CacheStaticModelSurfacejjPK13XModelLodInfo_120:
	add eax, 0xff
	jmp _Z25R_CacheStaticModelSurfacejjPK13XModelLodInfo_180


;R_StaticModelCacheFlush_f()
_Z25R_StaticModelCacheFlush_fv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	call _Z18R_SyncRenderThreadv
	mov edx, rgp
	mov eax, [edx+0x20a0]
	test eax, eax
	jz _Z25R_StaticModelCacheFlush_fv_10
	mov eax, [eax+0x244]
	mov [ebp-0x1c], eax
	test eax, eax
	jz _Z25R_StaticModelCacheFlush_fv_10
	xor edi, edi
	xor esi, esi
_Z25R_StaticModelCacheFlush_fv_40:
	mov edx, rgp
	mov eax, [edx+0x20a0]
	mov edx, esi
	add edx, [eax+0x29c]
	mov ebx, 0x4
_Z25R_StaticModelCacheFlush_fv_30:
	movzx eax, word [edx+0x3c]
	movzx ecx, ax
	test ax, ax
	jz _Z25R_StaticModelCacheFlush_fv_20
	mov word [ecx*8+s_cache+0x20ffe], 0xffff
	mov word [edx+0x3c], 0x0
_Z25R_StaticModelCacheFlush_fv_20:
	add edx, 0x2
	sub ebx, 0x1
	jnz _Z25R_StaticModelCacheFlush_fv_30
	add edi, 0x1
	add esi, 0x4c
	cmp [ebp-0x1c], edi
	jnz _Z25R_StaticModelCacheFlush_fv_40
_Z25R_StaticModelCacheFlush_fv_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;R_StaticModelCacheStats_f()
_Z25R_StaticModelCacheStats_fv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov eax, rgp
	mov eax, [eax+0x20a0]
	test eax, eax
	jz _Z25R_StaticModelCacheStats_fv_10
	mov esi, [eax+0x244]
	test esi, esi
	jnz _Z25R_StaticModelCacheStats_fv_20
	mov dword [ebp-0x44], 0x0
	mov dword [ebp-0x40], 0x0
	pxor xmm1, xmm1
_Z25R_StaticModelCacheStats_fv_110:
	movaps xmm0, xmm1
	mulss xmm0, [_float_100_00000000]
	mulss xmm0, [_float_0_00000381]
	cvtss2sd xmm0, xmm0
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_2f_of_cache_is_c
	mov dword [esp], 0x8
	movss [ebp-0x58], xmm1
	call _Z10Com_PrintfiPKcz
	mov edx, [ebp-0x44]
	test edx, edx
	movss xmm1, dword [ebp-0x58]
	jnz _Z25R_StaticModelCacheStats_fv_30
_Z25R_StaticModelCacheStats_fv_10:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25R_StaticModelCacheStats_fv_30:
	mov eax, [ebp-0x40]
	test eax, eax
	js _Z25R_StaticModelCacheStats_fv_40
	cvtsi2ss xmm0, dword [ebp-0x40]
_Z25R_StaticModelCacheStats_fv_120:
	mulss xmm0, [_float_100_00000000]
	divss xmm0, xmm1
	cvtss2sd xmm0, xmm0
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_2f_allocated_cac
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25R_StaticModelCacheStats_fv_20:
	mov dword [ebp-0x48], 0x0
	mov dword [ebp-0x44], 0x0
	mov dword [ebp-0x40], 0x0
	mov dword [ebp-0x30], 0x0
_Z25R_StaticModelCacheStats_fv_90:
	mov edx, [ebp-0x30]
	add edx, [eax+0x29c]
	mov [ebp-0x2c], edx
	mov eax, [edx+0x38]
	mov [esp], eax
	call _Z16XModelGetNumLodsPK6XModel
	mov [ebp-0x38], eax
	test eax, eax
	jz _Z25R_StaticModelCacheStats_fv_50
	mov edi, [ebp-0x2c]
	mov dword [ebp-0x3c], 0x0
	jmp _Z25R_StaticModelCacheStats_fv_60
_Z25R_StaticModelCacheStats_fv_70:
	add dword [ebp-0x3c], 0x1
	add edi, 0x2
	mov eax, [ebp-0x3c]
	cmp [ebp-0x38], eax
	jbe _Z25R_StaticModelCacheStats_fv_50
_Z25R_StaticModelCacheStats_fv_60:
	cmp word [edi+0x3c], 0x0
	jz _Z25R_StaticModelCacheStats_fv_70
	mov eax, [ebp-0x3c]
	mov [esp+0x4], eax
	mov edx, [ebp-0x2c]
	mov eax, [edx+0x38]
	mov [esp], eax
	call _Z16XModelGetLodInfoPK6XModeli
	movzx ecx, byte [eax+0x1a]
	mov eax, 0x1
	shl eax, cl
	add [ebp-0x44], eax
	mov eax, [ebp-0x3c]
	mov [esp+0x4], eax
	mov edx, [ebp-0x2c]
	mov eax, [edx+0x38]
	mov [esp], eax
	call _Z18XModelGetSurfCountPK6XModeli
	mov [ebp-0x34], eax
	mov eax, [ebp-0x3c]
	mov [esp+0x8], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov edx, [ebp-0x2c]
	mov eax, [edx+0x38]
	mov [esp], eax
	call _Z17XModelGetSurfacesPK6XModelPP8XSurfacei
	mov ebx, [ebp-0x34]
	test ebx, ebx
	jz _Z25R_StaticModelCacheStats_fv_70
	xor esi, esi
	xor ebx, ebx
_Z25R_StaticModelCacheStats_fv_80:
	mov eax, ebx
	add eax, [ebp-0x1c]
	mov [esp], eax
	call _Z19XSurfaceGetNumVertsPK8XSurface
	add [ebp-0x40], eax
	add esi, 0x1
	add ebx, 0x38
	cmp [ebp-0x34], esi
	jnz _Z25R_StaticModelCacheStats_fv_80
	add dword [ebp-0x3c], 0x1
	add edi, 0x2
	mov eax, [ebp-0x3c]
	cmp [ebp-0x38], eax
	ja _Z25R_StaticModelCacheStats_fv_60
_Z25R_StaticModelCacheStats_fv_50:
	add dword [ebp-0x48], 0x1
	mov eax, rgp
	mov eax, [eax+0x20a0]
	add dword [ebp-0x30], 0x4c
	mov edx, [ebp-0x48]
	cmp edx, [eax+0x244]
	jb _Z25R_StaticModelCacheStats_fv_90
	mov ecx, [ebp-0x44]
	test ecx, ecx
	js _Z25R_StaticModelCacheStats_fv_100
	cvtsi2ss xmm1, dword [ebp-0x44]
	jmp _Z25R_StaticModelCacheStats_fv_110
_Z25R_StaticModelCacheStats_fv_40:
	mov eax, [ebp-0x40]
	shr eax, 1
	and dword [ebp-0x40], 0x1
	or eax, [ebp-0x40]
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _Z25R_StaticModelCacheStats_fv_120
_Z25R_StaticModelCacheStats_fv_100:
	mov eax, [ebp-0x44]
	shr eax, 1
	mov edx, [ebp-0x44]
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm1, eax
	addss xmm1, xmm1
	jmp _Z25R_StaticModelCacheStats_fv_110


;R_ShutdownStaticModelCache()
_Z26R_ShutdownStaticModelCachev:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	call _Z23R_FlushStaticModelCachev
	mov ebx, gfxBuf
	mov eax, [ebx+0xc]
	test eax, eax
	jz _Z26R_ShutdownStaticModelCachev_10
	mov edi, alwaysfails
	mov esi, ebx
	jmp _Z26R_ShutdownStaticModelCachev_20
_Z26R_ShutdownStaticModelCachev_30:
	mov ebx, esi
_Z26R_ShutdownStaticModelCachev_20:
	mov eax, [ebx+0xc]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov dword [ebx+0xc], 0x0
	mov eax, [edi]
	test eax, eax
	jnz _Z26R_ShutdownStaticModelCachev_30
_Z26R_ShutdownStaticModelCachev_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;R_SkinCachedStaticModelCmd(SkinCachedStaticModelCmd*)
_Z26R_SkinCachedStaticModelCmdP24SkinCachedStaticModelCmd:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x14c
	mov dword [ebp-0x130], 0x0
	mov dword [ebp-0x134], 0x0
	mov ecx, [ebp+0x8]
	movzx eax, word [ecx+0x2]
	shl eax, 0x5
	mov edx, frontEndDataOut
	mov edx, [edx]
	lea eax, [eax+edx+0xb0020]
	mov [ebp-0x120], eax
	movzx eax, word [ecx]
	lea eax, [eax*8+s_cache+0x20ff8]
	mov [ebp-0x12c], eax
	mov eax, rgp
	mov edx, [eax+0x20a0]
	mov ecx, [ebp-0x12c]
	movzx eax, word [ecx+0x6]
	lea ebx, [eax+eax*8]
	lea ebx, [eax+ebx*2]
	mov eax, [edx+0x29c]
	lea ebx, [eax+ebx*4]
	lea eax, [ebx+0x10]
	movss xmm3, dword [ebx+0x10]
	movss [ebp-0x6c], xmm3
	movss xmm4, dword [eax+0x4]
	movss [ebp-0x68], xmm4
	movss xmm5, dword [eax+0x8]
	movss [ebp-0x64], xmm5
	pxor xmm2, xmm2
	movss [ebp-0x60], xmm2
	lea eax, [ebx+0x1c]
	movss xmm6, dword [ebx+0x1c]
	movss [ebp-0x5c], xmm6
	movss xmm7, dword [eax+0x4]
	movss [ebp-0x58], xmm7
	movss xmm0, dword [eax+0x8]
	movss [ebp-0x138], xmm0
	movss [ebp-0x54], xmm0
	movss [ebp-0x50], xmm2
	lea eax, [ebx+0x28]
	movss xmm0, dword [ebx+0x28]
	movss [ebp-0x13c], xmm0
	movss [ebp-0x4c], xmm0
	movss xmm0, dword [eax+0x4]
	movss [ebp-0x140], xmm0
	movss [ebp-0x48], xmm0
	movss xmm0, dword [eax+0x8]
	movss [ebp-0x144], xmm0
	movss [ebp-0x44], xmm0
	movss [ebp-0x40], xmm2
	movss xmm1, dword [ebx+0x34]
	movaps xmm0, xmm1
	mulss xmm0, xmm3
	movss [ebp-0xac], xmm0
	movaps xmm0, xmm1
	mulss xmm0, xmm4
	movss [ebp-0xa8], xmm0
	movaps xmm0, xmm1
	mulss xmm0, xmm5
	movss [ebp-0xa4], xmm0
	movaps xmm0, xmm1
	mulss xmm0, xmm2
	movss [ebp-0xa0], xmm0
	movaps xmm0, xmm1
	mulss xmm0, xmm6
	movss [ebp-0x9c], xmm0
	movaps xmm0, xmm1
	mulss xmm0, xmm7
	movss [ebp-0x98], xmm0
	movss xmm0, dword [ebp-0x138]
	mulss xmm0, xmm1
	movss [ebp-0x94], xmm0
	movaps xmm0, xmm1
	mulss xmm0, xmm2
	movss [ebp-0x90], xmm0
	movss xmm0, dword [ebp-0x13c]
	mulss xmm0, xmm1
	movss [ebp-0x8c], xmm0
	movss xmm0, dword [ebp-0x140]
	mulss xmm0, xmm1
	movss [ebp-0x88], xmm0
	movss xmm0, dword [ebp-0x144]
	mulss xmm0, xmm1
	movss [ebp-0x84], xmm0
	mulss xmm1, xmm2
	movss [ebp-0x80], xmm1
	lea edx, [ebx+0x4]
	mov eax, [ebx+0x4]
	mov [ebp-0x7c], eax
	mov eax, [edx+0x4]
	mov [ebp-0x78], eax
	mov eax, [edx+0x8]
	mov [ebp-0x74], eax
	movss [ebp-0x70], xmm2
	movss [ebp-0x28], xmm3
	mov eax, 0x47000000
	mov [ebp-0x24], eax
	fld dword [ebp-0x28]
	fmul dword [ebp-0x24]
	fistp dword [ebp-0x2c]
	mov edx, [ebp-0x2c]
	mov [ebp-0xc4], edx
	movss [ebp-0x2c], xmm4
	mov [ebp-0x24], eax
	fld dword [ebp-0x2c]
	fmul dword [ebp-0x24]
	fistp dword [ebp-0x28]
	mov ecx, [ebp-0x28]
	mov [ebp-0xc8], ecx
	movss [ebp-0x28], xmm5
	mov [ebp-0x24], eax
	fld dword [ebp-0x28]
	fmul dword [ebp-0x24]
	fistp dword [ebp-0x2c]
	mov edx, [ebp-0x2c]
	mov [ebp-0xcc], edx
	movss [ebp-0x2c], xmm6
	mov [ebp-0x24], eax
	fld dword [ebp-0x2c]
	fmul dword [ebp-0x24]
	fistp dword [ebp-0x28]
	mov ecx, [ebp-0x28]
	mov [ebp-0xd0], ecx
	movss [ebp-0x28], xmm7
	mov [ebp-0x24], eax
	fld dword [ebp-0x28]
	fmul dword [ebp-0x24]
	fistp dword [ebp-0x2c]
	mov edx, [ebp-0x2c]
	mov [ebp-0xd4], edx
	movss xmm0, dword [ebp-0x138]
	movss [ebp-0x2c], xmm0
	mov [ebp-0x24], eax
	fld dword [ebp-0x2c]
	fmul dword [ebp-0x24]
	fistp dword [ebp-0x28]
	mov edx, [ebp-0x28]
	mov [ebp-0xd8], edx
	movss xmm0, dword [ebp-0x13c]
	movss [ebp-0x28], xmm0
	mov [ebp-0x24], eax
	fld dword [ebp-0x28]
	fmul dword [ebp-0x24]
	fistp dword [ebp-0x2c]
	mov edx, [ebp-0x2c]
	mov [ebp-0xdc], edx
	movss xmm0, dword [ebp-0x140]
	movss [ebp-0x2c], xmm0
	mov [ebp-0x24], eax
	fld dword [ebp-0x2c]
	fmul dword [ebp-0x24]
	fistp dword [ebp-0x28]
	mov edx, [ebp-0x28]
	mov [ebp-0xe0], edx
	movss xmm0, dword [ebp-0x144]
	movss [ebp-0x2c], xmm0
	mov [ebp-0x24], eax
	fld dword [ebp-0x2c]
	fmul dword [ebp-0x24]
	fistp dword [ebp-0x28]
	mov eax, [ebp-0x28]
	mov [ebp-0xe4], eax
	mov edx, [ebp-0x12c]
	movzx eax, word [edx+0x4]
	mov [esp+0x4], eax
	mov eax, [ebx+0x38]
	mov [esp], eax
	call _Z18XModelGetSurfCountPK6XModeli
	mov [ebp-0x128], eax
	mov ecx, [ebp-0x12c]
	movzx eax, word [ecx+0x4]
	mov [esp+0x8], eax
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov eax, [ebx+0x38]
	mov [esp], eax
	call _Z17XModelGetSurfacesPK6XModelPP8XSurfacei
	mov edi, [ebp-0x128]
	test edi, edi
	jnz _Z26R_SkinCachedStaticModelCmdP24SkinCachedStaticModelCmd_10
	add esp, 0x14c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26R_SkinCachedStaticModelCmdP24SkinCachedStaticModelCmd_10:
	movss xmm0, dword [ebp-0xac]
	movss [ebp-0x114], xmm0
	movss xmm0, dword [ebp-0x9c]
	movss [ebp-0x110], xmm0
	movss xmm0, dword [ebp-0x8c]
	movss [ebp-0x10c], xmm0
	movss xmm0, dword [ebp-0x7c]
	movss [ebp-0x108], xmm0
	movss xmm0, dword [ebp-0xa8]
	movss [ebp-0x104], xmm0
	movss xmm0, dword [ebp-0x98]
	movss [ebp-0x100], xmm0
	movss xmm0, dword [ebp-0x88]
	movss [ebp-0xfc], xmm0
	movss xmm0, dword [ebp-0x78]
	movss [ebp-0xf8], xmm0
	movss xmm0, dword [ebp-0xa4]
	movss [ebp-0xf4], xmm0
	movss xmm0, dword [ebp-0x94]
	movss [ebp-0xf0], xmm0
	movss xmm0, dword [ebp-0x84]
	movss [ebp-0xec], xmm0
	movss xmm0, dword [ebp-0x74]
	movss [ebp-0xe8], xmm0
	mov dword [ebp-0x124], 0x0
	mov dword [ebp-0xbc], 0x0
_Z26R_SkinCachedStaticModelCmdP24SkinCachedStaticModelCmd_50:
	mov edx, [ebp-0xbc]
	add edx, [ebp-0x20]
	movzx eax, word [edx+0xa]
	shl eax, 0x5
	mov edi, [ebp-0x120]
	add edi, eax
	movzx ebx, word [edx+0x2]
	movzx eax, bx
	mov [ebp-0x11c], eax
	mov esi, [edx+0x1c]
	lea edx, [ebp-0x1c]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x12c]
	movzx eax, word [ecx+0x6]
	mov [esp], eax
	call _Z36R_GetPackedStaticModelLightingCoordsjP20PackedLightingCoords
	test bx, bx
	jz _Z26R_SkinCachedStaticModelCmdP24SkinCachedStaticModelCmd_20
	mov [ebp-0xc0], edi
	mov edi, esi
	mov dword [ebp-0x118], 0x0
	mov eax, [ebp-0xc0]
	jmp _Z26R_SkinCachedStaticModelCmdP24SkinCachedStaticModelCmd_30
_Z26R_SkinCachedStaticModelCmdP24SkinCachedStaticModelCmd_40:
	mov eax, edx
_Z26R_SkinCachedStaticModelCmdP24SkinCachedStaticModelCmd_30:
	movss xmm0, dword [ebp-0x114]
	mulss xmm0, [edi]
	movss xmm1, dword [ebp-0x110]
	mulss xmm1, [edi+0x4]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x10c]
	mulss xmm1, [edi+0x8]
	addss xmm0, xmm1
	addss xmm0, [ebp-0x108]
	movss [eax], xmm0
	movss xmm0, dword [ebp-0x104]
	mulss xmm0, [edi]
	movss xmm1, dword [ebp-0x100]
	mulss xmm1, [edi+0x4]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xfc]
	mulss xmm1, [edi+0x8]
	addss xmm0, xmm1
	addss xmm0, [ebp-0xf8]
	movss [eax+0x4], xmm0
	movss xmm0, dword [ebp-0xf4]
	mulss xmm0, [edi]
	movss xmm1, dword [ebp-0xf0]
	mulss xmm1, [edi+0x4]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xec]
	mulss xmm1, [edi+0x8]
	addss xmm0, xmm1
	addss xmm0, [ebp-0xe8]
	movss [eax+0x8], xmm0
	mov eax, [edi+0x18]
	mov esi, eax
	shr esi, 0x18
	add esi, 0xc0
	movzx edx, al
	sub edx, 0x7f
	imul edx, esi
	movzx ebx, ah
	sub ebx, 0x7f
	imul ebx, esi
	shr eax, 0x10
	movzx eax, al
	sub eax, 0x7f
	imul esi, eax
	mov eax, [ebp-0xc4]
	imul eax, edx
	mov ecx, [ebp-0xd0]
	imul ecx, ebx
	add eax, ecx
	mov ecx, [ebp-0xdc]
	imul ecx, esi
	lea eax, [eax+ecx+0x3fc00000]
	sar eax, 0x17
	mov [ebp-0x130], al
	mov eax, [ebp-0xc8]
	imul eax, edx
	mov ecx, [ebp-0xd4]
	imul ecx, ebx
	add eax, ecx
	mov ecx, [ebp-0xe0]
	imul ecx, esi
	lea eax, [eax+ecx+0x3fc00000]
	sar eax, 0x17
	mov ecx, [ebp-0x130]
	mov ch, al
	imul edx, [ebp-0xcc]
	imul ebx, [ebp-0xd8]
	add edx, ebx
	imul esi, [ebp-0xe4]
	lea edx, [edx+esi+0x3fc00000]
	shr edx, 0x7
	and edx, 0xff0000
	and ecx, 0xff00ffff
	or ecx, edx
	and ecx, 0xffffff
	or ecx, 0x40000000
	mov [ebp-0x130], ecx
	mov eax, [ebp-0xc0]
	mov [eax+0x14], ecx
	mov eax, [edi+0x10]
	mov edx, [ebp-0xc0]
	mov [edx+0xc], eax
	mov eax, [edi+0x14]
	mov [edx+0x10], eax
	mov eax, [edi+0x1c]
	mov esi, eax
	shr esi, 0x18
	add esi, 0xc0
	movzx edx, al
	sub edx, 0x7f
	imul edx, esi
	movzx ebx, ah
	sub ebx, 0x7f
	imul ebx, esi
	shr eax, 0x10
	movzx eax, al
	sub eax, 0x7f
	imul esi, eax
	mov eax, [ebp-0xc4]
	imul eax, edx
	mov ecx, [ebp-0xd0]
	imul ecx, ebx
	add eax, ecx
	mov ecx, [ebp-0xdc]
	imul ecx, esi
	lea eax, [eax+ecx+0x3fc00000]
	sar eax, 0x17
	mov [ebp-0x134], al
	mov eax, [ebp-0xc8]
	imul eax, edx
	mov ecx, [ebp-0xd4]
	imul ecx, ebx
	add eax, ecx
	mov ecx, [ebp-0xe0]
	imul ecx, esi
	lea eax, [eax+ecx+0x3fc00000]
	sar eax, 0x17
	mov ecx, [ebp-0x134]
	mov ch, al
	imul edx, [ebp-0xcc]
	imul ebx, [ebp-0xd8]
	add edx, ebx
	imul esi, [ebp-0xe4]
	lea edx, [edx+esi+0x3fc00000]
	shr edx, 0x7
	and edx, 0xff0000
	and ecx, 0xff00ffff
	or ecx, edx
	and ecx, 0xffffff
	or ecx, 0x40000000
	mov [ebp-0x134], ecx
	mov eax, [ebp-0xc0]
	mov [eax+0x18], ecx
	mov eax, [edi+0xc]
	sar eax, 0x1e
	and al, 0xfe
	add al, 0x2
	mov [ebp-0x19], al
	mov eax, [ebp-0x1c]
	mov edx, [ebp-0xc0]
	mov [edx+0x1c], eax
	add dword [ebp-0x118], 0x1
	add edx, 0x20
	mov [ebp-0xc0], edx
	add edi, 0x20
	mov ecx, [ebp-0x118]
	cmp [ebp-0x11c], ecx
	ja _Z26R_SkinCachedStaticModelCmdP24SkinCachedStaticModelCmd_40
_Z26R_SkinCachedStaticModelCmdP24SkinCachedStaticModelCmd_20:
	add dword [ebp-0x124], 0x1
	add dword [ebp-0xbc], 0x38
	mov eax, [ebp-0x124]
	cmp [ebp-0x128], eax
	jnz _Z26R_SkinCachedStaticModelCmdP24SkinCachedStaticModelCmd_50
	add esp, 0x14c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;R_ClearAllStaticModelCacheRefs()
_Z30R_ClearAllStaticModelCacheRefsv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4
	mov edx, rgp
	mov eax, [edx+0x20a0]
	test eax, eax
	jz _Z30R_ClearAllStaticModelCacheRefsv_10
	mov eax, [eax+0x244]
	mov [ebp-0x10], eax
	test eax, eax
	jz _Z30R_ClearAllStaticModelCacheRefsv_10
	xor edi, edi
	xor esi, esi
_Z30R_ClearAllStaticModelCacheRefsv_40:
	mov edx, rgp
	mov eax, [edx+0x20a0]
	mov edx, esi
	add edx, [eax+0x29c]
	mov ebx, 0x4
_Z30R_ClearAllStaticModelCacheRefsv_30:
	movzx eax, word [edx+0x3c]
	movzx ecx, ax
	test ax, ax
	jz _Z30R_ClearAllStaticModelCacheRefsv_20
	mov word [ecx*8+s_cache+0x20ffe], 0xffff
	mov word [edx+0x3c], 0x0
_Z30R_ClearAllStaticModelCacheRefsv_20:
	add edx, 0x2
	sub ebx, 0x1
	jnz _Z30R_ClearAllStaticModelCacheRefsv_30
	add edi, 0x1
	add esi, 0x4c
	cmp [ebp-0x10], edi
	jnz _Z30R_ClearAllStaticModelCacheRefsv_40
_Z30R_ClearAllStaticModelCacheRefsv_10:
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Initialized global or static variables of r_staticmodelcache:
SECTION .data


;Initialized constant data of r_staticmodelcache:
SECTION .rdata
g_keepZ__uint4: dd 0x0, 0x0, 0xffffffff, 0x0
g_keepX__uint4: dd 0xffffffff, 0x0, 0x0, 0x0
g_keepZW__uint4: dd 0x0, 0x0, 0xffffffff, 0xffffffff
g_keepXY__uint4: dd 0xffffffff, 0xffffffff, 0x0, 0x0
g_keepXYZ__uint4: dd 0xffffffff, 0xffffffff, 0xffffffff, 0x0
g_keepXYW__uint4: dd 0xffffffff, 0xffffffff, 0x0, 0xffffffff
g_keepXZW__uint4: dd 0xffffffff, 0x0, 0xffffffff, 0xffffffff
g_keepYZW__uint4: dd 0x0, 0xffffffff, 0xffffffff, 0xffffffff
g_selectW__uint4: dd 0x10203, 0x4050607, 0x8090a0b, 0x1c1d1e1f
g_selectZ__uint4: dd 0x10203, 0x4050607, 0x18191a1b, 0xc0d0e0f
g_selectY__uint4: dd 0x10203, 0x14151617, 0x8090a0b, 0xc0d0e0f
g_selectX__uint4: dd 0x10111213, 0x4050607, 0x8090a0b, 0xc0d0e0f
g_swizzleWWWW__uint4: dd 0xc0d0e0f, 0xc0d0e0f, 0xc0d0e0f, 0xc0d0e0f
g_swizzleZZZZ__uint4: dd 0x8090a0b, 0x8090a0b, 0x8090a0b, 0x8090a0b
g_swizzleYYYY__uint4: dd 0x4050607, 0x4050607, 0x4050607, 0x4050607
g_swizzleXXXX__uint4: dd 0x10203, 0x10203, 0x10203, 0x10203
g_swizzleYZWA__uint4: dd 0x4050607, 0x8090a0b, 0xc0d0e0f, 0x10111213
g_swizzleZWAW__uint4: dd 0x8090a0b, 0xc0d0e0f, 0x10111213, 0xc0d0e0f
g_swizzleWABW__uint4: dd 0xc0d0e0f, 0x10111213, 0x14151617, 0xc0d0e0f
g_swizzleZXYW__uint4: dd 0x8090a0b, 0x10203, 0x4050607, 0xc0d0e0f
g_swizzleYZXW__uint4: dd 0x4050607, 0x8090a0b, 0x10203, 0xc0d0e0f
g_swizzleXYZA__uint4: dd 0x10203, 0x4050607, 0x8090a0b, 0x10111213
g_swizzleZWCD__uint4: dd 0x8090a0b, 0xc0d0e0f, 0x18191a1b, 0x1c1d1e1f
g_swizzleXYAB__uint4: dd 0x10203, 0x4050607, 0x10111213, 0x14151617
g_swizzleYBWD__uint4: dd 0x4050607, 0x14151617, 0xc0d0e0f, 0x1c1d1e1f
g_swizzleXAZC__uint4: dd 0x10203, 0x10111213, 0x8090a0b, 0x18191a1b
g_swizzleYXWZ__uint4: dd 0x4050607, 0x10203, 0xc0d0e0f, 0x8090a0b
g_swizzleXZYW__uint4: dd 0x10203, 0x8090a0b, 0x4050607, 0xc0d0e0f
g_swizzleYXZW__uint4: dd 0x4050607, 0x10203, 0x8090a0b, 0xc0d0e0f
g_swizzleXYZW__uint4: dd 0x10203, 0x4050607, 0x8090a0b, 0xc0d0e0f
g_inc__uint4: dd 0x1, 0x1, 0x1, 0x1
g_negativeZero__uint4: dd 0x80000000, 0x80000000, 0x80000000, 0x80000000
g_fltMin__uint4: dd 0x800000, 0x800000, 0x800000, 0x800000


;Zero initialized global or static variables of r_staticmodelcache:
SECTION .bss
g_keepZ: resb 0x10
g_keepX: resb 0x10
g_keepZW: resb 0x10
g_keepXY: resb 0x10
g_keepXYZ: resb 0x10
g_keepXYW: resb 0x10
g_keepXZW: resb 0x10
g_keepYZW: resb 0x10
g_selectW: resb 0x10
g_selectZ: resb 0x10
g_selectY: resb 0x10
g_selectX: resb 0x10
g_swizzleWWWW: resb 0x10
g_swizzleZZZZ: resb 0x10
g_swizzleYYYY: resb 0x10
g_swizzleXXXX: resb 0x10
g_swizzleYZWA: resb 0x10
g_swizzleZWAW: resb 0x10
g_swizzleWABW: resb 0x10
g_swizzleZXYW: resb 0x10
g_swizzleYZXW: resb 0x10
g_swizzleXYZA: resb 0x10
g_swizzleZWCD: resb 0x10
g_swizzleXYAB: resb 0x10
g_swizzleYBWD: resb 0x10
g_swizzleXAZC: resb 0x10
g_swizzleYXWZ: resb 0x10
g_swizzleXZYW: resb 0x10
g_swizzleYXZW: resb 0x10
g_swizzleXYZW: resb 0x10
g_inc: resb 0x10
g_negativeZero: resb 0x10
g_fltMin: resb 0x10
s_cache: resb 0x410e0


;All cstrings:
SECTION .rdata
_cstring_static_model_cac:		db "Static Model Cache Verts",0
_cstring_2f_of_cache_is_c:		db "%.2f%% of cache is currently allocated.",0ah,0
_cstring_2f_allocated_cac:		db "%.2f%% allocated cache vertices are used.",0ah,0



;All constant floats and doubles:
SECTION .rdata
_float_100_00000000:		dd 0x42c80000	; 100
_float_0_00000381:		dd 0x36800000	; 3.8147e-06

