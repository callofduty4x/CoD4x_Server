;Imports of r_light:
	extern DB_FindXAssetHeader
	extern R_LoadLightDef
	extern Q_stricmp
	extern Com_Printf
	extern Com_Error
	extern useFastFile
	extern rgp
	extern PointToBoxDistSq
	extern r_spotLightShadows
	extern scene
	extern R_BoxSurfaces
	extern R_EndCmdBuf
	extern R_AddBspDrawSurfs
	extern R_InitBspDrawSurf
	extern frontEndDataOut
	extern R_AddDObjSurfaces
	extern R_AddXModelSurfaces
	extern r_spotLightEntityShadows
	extern DynEnt_GetClientPose
	extern DynEnt_GetEntityDef
	extern R_AddBModelSurfaces
	extern R_GetBrushModel
	extern r_dlightLimit
	extern rg
	extern R_InitStaticModelDrawSurf
	extern R_BoxStaticModels
	extern XModelGetSurfaces
	extern R_GetStaticModelId
	extern XModelGetSkins
	extern R_AllocDrawSurf
	extern R_AddDelayedStaticModelDrawSurf
	extern r_spotLightSModelShadows
	extern R_EmitDrawSurfList
	extern R_ReverseSortDrawSurfs
	extern R_InitDrawSurfListInfo
	extern comWorld
	extern memmove

;Exports of r_light:
	global g_staticModelLightCallback
	global lightGlob
	global R_RegisterLightDef_FastFile
	global R_RegisterLightDef_LoadObj
	global R_SortBspLightSurfaces
	global R_AllowBspOmniLight
	global R_AllowStaticModelOmniLight
	global R_BoxInPlanes
	global R_AllowStaticModelSpotLight
	global R_AllowBspSpotLightShadows
	global R_AllowBspSpotLight
	global _ZZ22R_GetBspOmniLightSurfsPK8GfxLightiP18GfxBspDrawSurfDataE9allowSurf
	global R_GetBspOmniLightSurfs
	global R_CalcSpotLightPlanes
	global _ZZ22R_GetBspSpotLightSurfsPK8GfxLightiP18GfxBspDrawSurfDataE9allowSurf
	global R_GetBspSpotLightSurfs
	global R_EnumLightDefs
	global R_InitLightDefs
	global R_GetBspLightSurfs
	global R_RegisterLightDef
	global R_ShutdownLightDefs
	global R_GetSceneEntLightSurfs
	global R_GetPointLightPartitions
	global R_GetStaticModelLightSurfs
	global R_EmitPointLightPartitionSurfs
	global R_EmitShadowedLightPartitionSurfs
	global _ZSt13__adjust_heapIPP10GfxSurfaceiS1_PFhS1_S1_EEvT_T0_S6_T1_T2_
	global _ZSt16__insertion_sortIPP10GfxSurfacePFhS1_S1_EEvT_S5_T0_
	global _ZSt16__introsort_loopIPP10GfxSurfaceiPFhS1_S1_EEvT_S5_T0_T1_


SECTION .text


;R_RegisterLightDef_FastFile(char const*)
R_RegisterLightDef_FastFile:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x11
	call DB_FindXAssetHeader
	leave
	ret
	nop


;R_RegisterLightDef_LoadObj(char const*)
R_RegisterLightDef_LoadObj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov eax, [lightGlob]
	test eax, eax
	jg R_RegisterLightDef_LoadObj_10
R_RegisterLightDef_LoadObj_50:
	cmp eax, 0x40
	jz R_RegisterLightDef_LoadObj_20
R_RegisterLightDef_LoadObj_90:
	mov [esp], edi
	call R_LoadLightDef
	mov edx, eax
	test eax, eax
	jz R_RegisterLightDef_LoadObj_30
	mov eax, [lightGlob]
	mov [eax*4+lightGlob+0x4], edx
	add eax, 0x1
	mov [lightGlob], eax
R_RegisterLightDef_LoadObj_70:
	mov eax, edx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_RegisterLightDef_LoadObj_10:
	xor esi, esi
	mov ebx, lightGlob
	jmp R_RegisterLightDef_LoadObj_40
R_RegisterLightDef_LoadObj_60:
	add esi, 0x1
	mov eax, [lightGlob]
	add ebx, 0x4
	cmp esi, eax
	jge R_RegisterLightDef_LoadObj_50
R_RegisterLightDef_LoadObj_40:
	mov eax, [ebx+0x4]
	mov eax, [eax]
	mov [esp+0x4], eax
	mov [esp], edi
	call Q_stricmp
	test eax, eax
	jnz R_RegisterLightDef_LoadObj_60
	mov edx, [esi*4+lightGlob+0x4]
	jmp R_RegisterLightDef_LoadObj_70
R_RegisterLightDef_LoadObj_20:
	mov dword [esp+0x4], _cstring_loaded_light_def
	mov dword [esp], 0x8
	call Com_Printf
	mov eax, [lightGlob]
	test eax, eax
	jg R_RegisterLightDef_LoadObj_80
R_RegisterLightDef_LoadObj_120:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_cant_load_light_
	mov dword [esp], 0x2
	call Com_Error
	jmp R_RegisterLightDef_LoadObj_90
R_RegisterLightDef_LoadObj_30:
	mov dword [esp+0x4], _cstring_light_dynamic
	mov [esp], edi
	call Q_stricmp
	test eax, eax
	jz R_RegisterLightDef_LoadObj_100
R_RegisterLightDef_LoadObj_130:
	mov eax, useFastFile
	mov eax, [eax]
	mov ecx, R_RegisterLightDef_FastFile
	cmp byte [eax+0xc], 0x0
	mov eax, R_RegisterLightDef_LoadObj
	cmovz ecx, eax
	mov dword [ebp+0x8], _cstring_light_dynamic
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp ecx
R_RegisterLightDef_LoadObj_80:
	xor esi, esi
	mov ebx, lightGlob
R_RegisterLightDef_LoadObj_110:
	mov eax, [ebx+0x4]
	mov eax, [eax]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring___s
	mov dword [esp], 0x8
	call Com_Printf
	add esi, 0x1
	mov eax, [lightGlob]
	add ebx, 0x4
	cmp esi, eax
	jl R_RegisterLightDef_LoadObj_110
	jmp R_RegisterLightDef_LoadObj_120
R_RegisterLightDef_LoadObj_100:
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_cant_load_the_de
	mov dword [esp], 0x2
	call Com_Error
	jmp R_RegisterLightDef_LoadObj_130


;R_SortBspLightSurfaces(GfxSurface*, GfxSurface*)
R_SortBspLightSurfaces:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	cmp [ebp+0x8], eax
	setb al
	movzx eax, al
	pop ebp
	ret
	nop


;R_AllowBspOmniLight(int, void*)
R_AllowBspOmniLight:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ecx, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov eax, [ebx]
	cmp byte [eax+ecx], 0x0
	jnz R_AllowBspOmniLight_10
	xor eax, eax
	add esp, 0x24
	pop ebx
	pop ebp
	ret
R_AllowBspOmniLight_10:
	mov eax, rgp
	mov edx, [eax+0x20a0]
	lea eax, [ecx+ecx*2]
	shl eax, 0x4
	add eax, [edx+0x294]
	lea edx, [eax+0x24]
	mov [esp+0x8], edx
	add eax, 0x18
	mov [esp+0x4], eax
	lea eax, [ebx+0x4]
	mov [esp], eax
	call PointToBoxDistSq
	fstp dword [ebp-0xc]
	movss xmm0, dword [ebx+0x10]
	xor eax, eax
	ucomiss xmm0, [ebp-0xc]
	setae al
	add esp, 0x24
	pop ebx
	pop ebp
	ret


;R_AllowStaticModelOmniLight(int)
R_AllowStaticModelOmniLight:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x8]
	mov eax, [g_staticModelLightCallback]
	cmp byte [eax+ebx], 0x0
	jnz R_AllowStaticModelOmniLight_10
	xor eax, eax
	add esp, 0x24
	pop ebx
	pop ebp
	ret
R_AllowStaticModelOmniLight_10:
	mov eax, rgp
	mov ecx, [eax+0x20a0]
	lea edx, [ebx*4]
	mov eax, ebx
	shl eax, 0x5
	sub eax, edx
	add eax, [ecx+0x290]
	lea edx, [eax+0xc]
	mov [esp+0x8], edx
	mov [esp+0x4], eax
	mov dword [esp], g_staticModelLightCallback+0x4
	call PointToBoxDistSq
	fstp dword [ebp-0xc]
	movss xmm0, dword [g_staticModelLightCallback+0x10]
	xor eax, eax
	ucomiss xmm0, [ebp-0xc]
	setae al
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;R_BoxInPlanes(float const (*) [4], float const*, float const*)
R_BoxInPlanes:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x28
	mov ebx, eax
	movss xmm0, dword [edx]
	movss [ebp-0x28], xmm0
	movss xmm0, dword [edx+0x4]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [edx+0x8]
	movss [ebp-0x18], xmm0
	movss xmm0, dword [ecx+0x8]
	movss [ebp-0x14], xmm0
	movss xmm0, dword [ecx+0x4]
	movss [ebp-0x10], xmm0
	movss xmm0, dword [ecx]
	movss [ebp-0x8], xmm0
	xor edx, edx
	pxor xmm4, xmm4
R_BoxInPlanes_100:
	lea eax, [edx+ebx]
	movss xmm0, dword [eax]
	movss [ebp-0x2c], xmm0
	mulss xmm0, [ebp-0x28]
	movss [ebp-0x24], xmm0
	movss xmm7, dword [eax+0x4]
	movss xmm0, dword [ebp-0x20]
	mulss xmm0, xmm7
	movss [ebp-0x1c], xmm0
	movss xmm1, dword [ebp-0x24]
	addss xmm1, xmm0
	movss xmm5, dword [eax+0x8]
	movss xmm3, dword [ebp-0x18]
	mulss xmm3, xmm5
	movss xmm2, dword [eax+0xc]
	movaps xmm0, xmm1
	addss xmm0, xmm3
	addss xmm0, xmm2
	ucomiss xmm0, xmm4
	jb R_BoxInPlanes_10
	movaps xmm6, xmm4
R_BoxInPlanes_180:
	mulss xmm5, [ebp-0x14]
	addss xmm1, xmm5
	addss xmm1, xmm2
	ucomiss xmm1, xmm4
	jb R_BoxInPlanes_20
	movaps xmm0, xmm4
R_BoxInPlanes_170:
	addss xmm6, xmm0
	mulss xmm7, [ebp-0x10]
	movss [ebp-0xc], xmm7
	movss xmm1, dword [ebp-0x24]
	addss xmm1, xmm7
	movaps xmm0, xmm3
	addss xmm0, xmm1
	addss xmm0, xmm2
	ucomiss xmm0, xmm4
	jb R_BoxInPlanes_30
	movaps xmm0, xmm4
R_BoxInPlanes_160:
	addss xmm6, xmm0
	addss xmm1, xmm5
	addss xmm1, xmm2
	ucomiss xmm1, xmm4
	jb R_BoxInPlanes_40
	movaps xmm0, xmm4
R_BoxInPlanes_150:
	addss xmm6, xmm0
	movss xmm7, dword [ebp-0x2c]
	mulss xmm7, [ebp-0x8]
	movss xmm1, dword [ebp-0x1c]
	addss xmm1, xmm7
	movaps xmm0, xmm3
	addss xmm0, xmm1
	addss xmm0, xmm2
	ucomiss xmm0, xmm4
	jb R_BoxInPlanes_50
	movaps xmm0, xmm4
R_BoxInPlanes_140:
	addss xmm6, xmm0
	addss xmm1, xmm5
	addss xmm1, xmm2
	ucomiss xmm1, xmm4
	jb R_BoxInPlanes_60
	movaps xmm0, xmm4
R_BoxInPlanes_130:
	addss xmm6, xmm0
	movss xmm1, dword [ebp-0xc]
	addss xmm1, xmm7
	addss xmm3, xmm1
	addss xmm3, xmm2
	ucomiss xmm3, xmm4
	jb R_BoxInPlanes_70
	movaps xmm0, xmm4
R_BoxInPlanes_120:
	movaps xmm3, xmm0
	addss xmm3, xmm6
	addss xmm5, xmm1
	addss xmm2, xmm5
	ucomiss xmm2, xmm4
	jb R_BoxInPlanes_80
	movaps xmm0, xmm4
	addss xmm0, xmm3
	ucomiss xmm0, xmm4
	jz R_BoxInPlanes_90
R_BoxInPlanes_110:
	add edx, 0x10
	cmp edx, 0x60
	jnz R_BoxInPlanes_100
	mov eax, 0x1
	add esp, 0x28
	pop ebx
	pop ebp
	ret
R_BoxInPlanes_80:
	movss xmm0, dword [_float_1_00000000]
	addss xmm0, xmm3
	ucomiss xmm0, xmm4
	jnz R_BoxInPlanes_110
R_BoxInPlanes_90:
	jp R_BoxInPlanes_110
	xor eax, eax
	add esp, 0x28
	pop ebx
	pop ebp
	ret
R_BoxInPlanes_70:
	movss xmm0, dword [_float_1_00000000]
	jmp R_BoxInPlanes_120
R_BoxInPlanes_60:
	movss xmm0, dword [_float_1_00000000]
	jmp R_BoxInPlanes_130
R_BoxInPlanes_50:
	movss xmm0, dword [_float_1_00000000]
	jmp R_BoxInPlanes_140
R_BoxInPlanes_40:
	movss xmm0, dword [_float_1_00000000]
	jmp R_BoxInPlanes_150
R_BoxInPlanes_30:
	movss xmm0, dword [_float_1_00000000]
	jmp R_BoxInPlanes_160
R_BoxInPlanes_20:
	movss xmm0, dword [_float_1_00000000]
	jmp R_BoxInPlanes_170
R_BoxInPlanes_10:
	movss xmm6, dword [_float_1_00000000]
	jmp R_BoxInPlanes_180
	nop


;R_AllowStaticModelSpotLight(int)
R_AllowStaticModelSpotLight:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, [g_staticModelLightCallback]
	cmp byte [eax+edx], 0x0
	jnz R_AllowStaticModelSpotLight_10
	xor eax, eax
	pop ebp
	ret
R_AllowStaticModelSpotLight_10:
	mov eax, rgp
	mov ecx, [eax+0x20a0]
	lea eax, [edx*4]
	shl edx, 0x5
	sub edx, eax
	add edx, [ecx+0x290]
	lea ecx, [edx+0xc]
	mov eax, g_staticModelLightCallback+0x14
	pop ebp
	jmp R_BoxInPlanes


;R_AllowBspSpotLightShadows(int, void*)
R_AllowBspSpotLightShadows:
	push ebp
	mov ebp, esp
	push ebx
	mov edx, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov eax, r_spotLightShadows
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz R_AllowBspSpotLightShadows_10
	xor eax, eax
	pop ebx
	pop ebp
	ret
R_AllowBspSpotLightShadows_10:
	mov eax, rgp
	mov eax, [eax+0x20a0]
	lea edx, [edx+edx*2]
	shl edx, 0x4
	add edx, [eax+0x294]
	lea ecx, [edx+0x24]
	add edx, 0x18
	lea eax, [ebx+0x4]
	pop ebx
	pop ebp
	jmp R_BoxInPlanes
	nop


;R_AllowBspSpotLight(int, void*)
R_AllowBspSpotLight:
	push ebp
	mov ebp, esp
	push ebx
	mov edx, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov eax, [ebx]
	cmp byte [eax+edx], 0x0
	jnz R_AllowBspSpotLight_10
	xor eax, eax
	pop ebx
	pop ebp
	ret
R_AllowBspSpotLight_10:
	mov eax, rgp
	mov eax, [eax+0x20a0]
	lea edx, [edx+edx*2]
	shl edx, 0x4
	add edx, [eax+0x294]
	lea ecx, [edx+0x24]
	add edx, 0x18
	lea eax, [ebx+0x4]
	pop ebx
	pop ebp
	jmp R_BoxInPlanes


;R_GetBspOmniLightSurfs(GfxLight const*, int, GfxBspDrawSurfData*)
R_GetBspOmniLightSurfs:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov edx, [ebp+0x8]
	mov eax, rgp
	mov eax, [eax+0x20a0]
	mov ecx, [eax+0x27c]
	mov eax, [eax+0x2a0]
	mov [ebp-0x68], eax
	movss xmm3, dword [edx+0x1c]
	movaps xmm0, xmm3
	subss xmm0, [edx+0x28]
	movss [ebp-0x30], xmm0
	movss xmm2, dword [edx+0x20]
	movaps xmm0, xmm2
	subss xmm0, [edx+0x28]
	movss [ebp-0x2c], xmm0
	movss xmm1, dword [edx+0x24]
	movaps xmm0, xmm1
	subss xmm0, [edx+0x28]
	movss [ebp-0x28], xmm0
	movaps xmm0, xmm3
	addss xmm0, [edx+0x28]
	movss [ebp-0x3c], xmm0
	addss xmm2, [edx+0x28]
	movss [ebp-0x38], xmm2
	addss xmm1, [edx+0x28]
	movss [ebp-0x34], xmm1
	mov eax, [ebp+0xc]
	shl eax, 0xd
	mov ebx, [ebp+0xc]
	lea esi, [eax+ebx*4]
	mov eax, scene
	mov [ebp-0x6c], eax
	lea ebx, [esi+eax+0x114a00]
	lea edi, [ebx+0x58]
	lea eax, [ebx+0x1058]
	mov [ebp-0x1c], eax
	mov [ebp-0x50], ecx
	lea ecx, [edx+0x1c]
	movss [ebp-0x4c], xmm3
	mov eax, [ecx+0x4]
	mov [ebp-0x48], eax
	mov eax, [ecx+0x8]
	mov [ebp-0x44], eax
	movss xmm0, dword [edx+0x28]
	mulss xmm0, xmm0
	movss [ebp-0x40], xmm0
	mov dword [esp+0x1c], 0x1
	lea eax, [ebp-0x24]
	mov [esp+0x18], eax
	mov dword [esp+0x14], 0x400
	lea eax, [ebp-0x1c]
	mov [esp+0x10], eax
	lea eax, [ebp-0x50]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _ZZ22R_GetBspOmniLightSurfsPK8GfxLightiP18GfxBspDrawSurfDataE9allowSurf
	lea eax, [ebp-0x3c]
	mov [esp+0x4], eax
	lea eax, [ebp-0x30]
	mov [esp], eax
	call R_BoxSurfaces
	mov eax, [ebp-0x24]
	test eax, eax
	jnz R_GetBspOmniLightSurfs_10
	mov edx, [ebp-0x6c]
	mov dword [esi+edx+0x114a54], 0x0
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_GetBspOmniLightSurfs_10:
	mov ecx, [ebp+0x10]
	mov [ecx+0x10], edi
	lea eax, [ebx+0x2058]
	mov [ecx+0x14], eax
	mov ebx, [ebp-0x1c]
	mov eax, [ebp-0x24]
	lea eax, [ebx+eax*4]
	mov [ebp-0x64], eax
	cmp ebx, eax
	jz R_GetBspOmniLightSurfs_20
	mov esi, eax
	sub esi, ebx
	mov eax, esi
	sar eax, 0x2
	cmp eax, 0x1
	jz R_GetBspOmniLightSurfs_30
	xor edx, edx
R_GetBspOmniLightSurfs_40:
	add edx, 0x1
	sar eax, 1
	cmp eax, 0x1
	jnz R_GetBspOmniLightSurfs_40
	lea eax, [edx+edx]
R_GetBspOmniLightSurfs_120:
	mov dword [esp+0xc], R_SortBspLightSurfaces
	mov [esp+0x8], eax
	mov eax, [ebp-0x64]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZSt16__introsort_loopIPP10GfxSurfaceiPFhS1_S1_EEvT_S5_T0_T1_
	cmp esi, 0x43
	jle R_GetBspOmniLightSurfs_50
	lea edx, [ebx+0x40]
	mov [ebp-0x5c], edx
	mov dword [esp+0x8], R_SortBspLightSurfaces
	mov [esp+0x4], edx
	mov [esp], ebx
	call _ZSt16__insertion_sortIPP10GfxSurfacePFhS1_S1_EEvT_S5_T0_
	mov ecx, [ebp-0x5c]
	cmp [ebp-0x64], ecx
	jz R_GetBspOmniLightSurfs_20
	mov ebx, ecx
	mov edi, ecx
R_GetBspOmniLightSurfs_80:
	mov ebx, [ebx]
	mov [ebp-0x60], ebx
	mov ebx, [ebp-0x5c]
	sub ebx, 0x4
	jmp R_GetBspOmniLightSurfs_60
R_GetBspOmniLightSurfs_70:
	mov [edi], esi
	mov edi, ebx
	sub ebx, 0x4
R_GetBspOmniLightSurfs_60:
	mov esi, [ebx]
	mov [esp+0x4], esi
	mov eax, [ebp-0x60]
	mov [esp], eax
	call R_SortBspLightSurfaces
	test al, al
	jnz R_GetBspOmniLightSurfs_70
	mov edx, [ebp-0x60]
	mov [edi], edx
	add dword [ebp-0x5c], 0x4
	mov ecx, [ebp-0x5c]
	cmp [ebp-0x64], ecx
	jz R_GetBspOmniLightSurfs_20
	mov ebx, [ebp-0x5c]
	mov edi, [ebp-0x5c]
	jmp R_GetBspOmniLightSurfs_80
R_GetBspOmniLightSurfs_50:
	mov dword [esp+0x8], R_SortBspLightSurfaces
	mov esi, [ebp-0x64]
	mov [esp+0x4], esi
	mov [esp], ebx
	call _ZSt16__insertion_sortIPP10GfxSurfacePFhS1_S1_EEvT_S5_T0_
R_GetBspOmniLightSurfs_20:
	mov ebx, [ebp-0x24]
	test ebx, ebx
	jnz R_GetBspOmniLightSurfs_90
R_GetBspOmniLightSurfs_110:
	mov ebx, [ebp+0x10]
	mov [esp], ebx
	call R_EndCmdBuf
	mov ebx, scene
	mov eax, [ebp+0xc]
	shl eax, 0xd
	mov esi, [ebp+0xc]
	lea ecx, [eax+esi*4]
	lea edx, [ecx+ebx+0x114a58]
	mov esi, [ebp+0x10]
	mov eax, [esi+0x10]
	sub eax, edx
	sar eax, 0x3
	mov [ecx+ebx+0x114a54], eax
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_GetBspOmniLightSurfs_90:
	xor ebx, ebx
	lea edi, [ebp-0x20]
	mov esi, rgp
R_GetBspOmniLightSurfs_100:
	mov ecx, [esi+0x20a0]
	mov eax, [ebp-0x1c]
	mov edx, [eax+ebx*4]
	sub edx, [ecx+0x294]
	sar edx, 0x4
	lea eax, [edx+edx*4]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	mov ecx, eax
	shl ecx, 0x8
	add eax, ecx
	mov ecx, eax
	shl ecx, 0x10
	add eax, ecx
	lea eax, [edx+eax*2]
	mov [ebp-0x20], ax
	mov ecx, [ebp-0x68]
	mov edx, [ecx+eax*8+0x4]
	mov eax, [ecx+eax*8]
	mov ecx, [ebp+0x10]
	mov [esp+0x10], ecx
	mov dword [esp+0xc], 0x1
	mov [esp+0x8], edi
	mov [esp], eax
	mov [esp+0x4], edx
	call R_AddBspDrawSurfs
	add ebx, 0x1
	cmp ebx, [ebp-0x24]
	jb R_GetBspOmniLightSurfs_100
	jmp R_GetBspOmniLightSurfs_110
R_GetBspOmniLightSurfs_30:
	and eax, 0xffffff00
	jmp R_GetBspOmniLightSurfs_120
	nop


;R_CalcSpotLightPlanes(GfxLight const*, float (*) [4])
R_CalcSpotLightPlanes:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov ebx, eax
	lea eax, [eax+0x10]
	mov [ebp-0x58], eax
	movss xmm2, dword [ebx+0x10]
	movss xmm6, dword [_data16_80000000]
	movaps xmm0, xmm2
	xorps xmm0, xmm6
	movss [ebp-0x3c], xmm0
	lea eax, [ebx+0x14]
	mov [ebp-0x54], eax
	movss xmm1, dword [ebx+0x14]
	movaps xmm0, xmm1
	xorps xmm0, xmm6
	movss [ebp-0x40], xmm0
	lea edi, [ebx+0x18]
	movss xmm0, dword [ebx+0x18]
	movaps xmm3, xmm0
	xorps xmm3, xmm6
	movss [ebp-0x44], xmm3
	movss [edx], xmm2
	movss [edx+0x4], xmm1
	movss [edx+0x8], xmm0
	mov eax, scene
	movss xmm2, dword [eax+0x114a50]
	lea eax, [ebx+0x1c]
	mov [ebp-0x50], eax
	lea ecx, [ebx+0x20]
	mov [ebp-0x4c], ecx
	lea eax, [ebx+0x24]
	mov [ebp-0x48], eax
	movss xmm1, dword [ebp-0x3c]
	mulss xmm1, xmm2
	addss xmm1, [ebx+0x1c]
	mulss xmm1, [edx]
	movss xmm0, dword [ebp-0x40]
	mulss xmm0, xmm2
	addss xmm0, [ebx+0x20]
	mulss xmm0, [edx+0x4]
	addss xmm1, xmm0
	mulss xmm2, xmm3
	addss xmm2, [ebx+0x24]
	mulss xmm2, [edx+0x8]
	addss xmm1, xmm2
	xorps xmm1, xmm6
	movss [edx+0xc], xmm1
	mov eax, ebx
	xor esi, esi
	mov ecx, 0x1
	movss xmm2, dword [_data16_7fffffff]
R_CalcSpotLightPlanes_10:
	movss xmm1, dword [eax+0x14]
	andps xmm1, xmm2
	movss xmm0, dword [ebx+esi*4+0x10]
	andps xmm0, xmm2
	ucomiss xmm0, xmm1
	cmova esi, ecx
	add ecx, 0x1
	add eax, 0x4
	cmp ecx, 0x3
	jnz R_CalcSpotLightPlanes_10
	pxor xmm5, xmm5
	movss [ebp-0x30], xmm5
	movss [ebp-0x2c], xmm5
	movss [ebp-0x28], xmm5
	movss xmm7, dword [_float_1_00000000]
	movss [ebp+esi*4-0x30], xmm7
	lea eax, [ebp-0x24]
	mov ecx, [ebp-0x54]
	movss xmm3, dword [ecx]
	movaps xmm4, xmm3
	mulss xmm4, [ebp-0x28]
	movss xmm2, dword [edi]
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x2c]
	subss xmm4, xmm0
	movss [ebp-0x24], xmm4
	lea esi, [ebp-0x20]
	mulss xmm2, [ebp-0x30]
	mov ecx, [ebp-0x58]
	movss xmm0, dword [ecx]
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x28]
	subss xmm2, xmm1
	movss [ebp-0x20], xmm2
	lea ecx, [ebp-0x1c]
	mulss xmm0, [ebp-0x2c]
	mulss xmm3, [ebp-0x30]
	subss xmm0, xmm3
	movss [ebp-0x1c], xmm0
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	mulss xmm2, xmm2
	addss xmm1, xmm2
	mulss xmm0, xmm0
	addss xmm1, xmm0
	sqrtss xmm1, xmm1
	movaps xmm0, xmm1
	xorps xmm0, xmm6
	ucomiss xmm0, xmm5
	jb R_CalcSpotLightPlanes_20
	movaps xmm1, xmm7
R_CalcSpotLightPlanes_40:
	movaps xmm2, xmm4
	mulss xmm2, xmm1
	movss [eax], xmm2
	movaps xmm0, xmm1
	mulss xmm0, [esi]
	movss [esi], xmm0
	mulss xmm1, [ecx]
	movss [ecx], xmm1
	movss xmm3, dword [eax+0x4]
	movaps xmm4, xmm3
	mulss xmm4, [edi]
	movss xmm1, dword [eax+0x8]
	movaps xmm0, xmm1
	mov eax, [ebp-0x54]
	mulss xmm0, [eax]
	subss xmm4, xmm0
	movss [ebp-0x30], xmm4
	mov ecx, [ebp-0x58]
	mulss xmm1, [ecx]
	movaps xmm0, xmm2
	mulss xmm0, [edi]
	subss xmm1, xmm0
	movss [ebp-0x2c], xmm1
	mulss xmm2, [eax]
	mulss xmm3, [ecx]
	subss xmm2, xmm3
	movss [ebp-0x28], xmm2
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm1, xmm0
	movaps xmm0, xmm1
	xorps xmm0, xmm6
	ucomiss xmm0, xmm5
	jb R_CalcSpotLightPlanes_30
	movaps xmm1, xmm7
R_CalcSpotLightPlanes_50:
	mulss xmm4, xmm1
	movss [ebp-0x30], xmm4
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x2c]
	movss [ebp-0x2c], xmm0
	mulss xmm1, [ebp-0x28]
	movss [ebp-0x28], xmm1
	movss xmm1, dword [ebx+0x2c]
	movaps xmm0, xmm1
	mulss xmm0, xmm1
	movaps xmm3, xmm7
	subss xmm3, xmm0
	sqrtss xmm3, xmm3
	xorps xmm3, xmm6
	lea eax, [edx+0x10]
	movss xmm4, dword [ebp-0x3c]
	mulss xmm4, xmm3
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x30]
	addss xmm0, xmm4
	movss [edx+0x10], xmm0
	movss xmm5, dword [ebp-0x40]
	mulss xmm5, xmm3
	movaps xmm2, xmm1
	mulss xmm2, [ebp-0x2c]
	addss xmm2, xmm5
	movss [eax+0x4], xmm2
	mulss xmm3, [ebp-0x44]
	mulss xmm1, [ebp-0x28]
	addss xmm1, xmm3
	movss [eax+0x8], xmm1
	movss xmm0, dword [edx+0x10]
	mov ecx, [ebp-0x50]
	mulss xmm0, [ecx]
	mov ecx, [ebp-0x4c]
	mulss xmm2, [ecx]
	addss xmm0, xmm2
	mov ecx, [ebp-0x48]
	mulss xmm1, [ecx]
	addss xmm0, xmm1
	xorps xmm0, xmm6
	movss [eax+0xc], xmm0
	movss xmm1, dword [ebx+0x2c]
	lea eax, [edx+0x20]
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x24]
	addss xmm0, xmm4
	movss [edx+0x20], xmm0
	movaps xmm2, xmm1
	mulss xmm2, [ebp-0x20]
	addss xmm2, xmm5
	movss [eax+0x4], xmm2
	mulss xmm1, [ebp-0x1c]
	addss xmm1, xmm3
	movss [eax+0x8], xmm1
	movss xmm0, dword [edx+0x20]
	mov ecx, [ebp-0x50]
	mulss xmm0, [ecx]
	mov ecx, [ebp-0x4c]
	mulss xmm2, [ecx]
	addss xmm0, xmm2
	mov ecx, [ebp-0x48]
	mulss xmm1, [ecx]
	addss xmm0, xmm1
	xorps xmm0, xmm6
	movss [eax+0xc], xmm0
	movss xmm1, dword [ebx+0x2c]
	xorps xmm1, xmm6
	lea eax, [edx+0x30]
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x30]
	addss xmm0, xmm4
	movss [edx+0x30], xmm0
	movaps xmm2, xmm1
	mulss xmm2, [ebp-0x2c]
	addss xmm2, xmm5
	movss [eax+0x4], xmm2
	mulss xmm1, [ebp-0x28]
	addss xmm1, xmm3
	movss [eax+0x8], xmm1
	movss xmm0, dword [edx+0x30]
	mov ecx, [ebp-0x50]
	mulss xmm0, [ecx]
	mov ecx, [ebp-0x4c]
	mulss xmm2, [ecx]
	addss xmm0, xmm2
	mov ecx, [ebp-0x48]
	mulss xmm1, [ecx]
	addss xmm0, xmm1
	xorps xmm0, xmm6
	movss [eax+0xc], xmm0
	movss xmm1, dword [ebx+0x2c]
	xorps xmm1, xmm6
	lea eax, [edx+0x40]
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x24]
	addss xmm4, xmm0
	movss [edx+0x40], xmm4
	movaps xmm2, xmm1
	mulss xmm2, [ebp-0x20]
	addss xmm2, xmm5
	movss [eax+0x4], xmm2
	mulss xmm1, [ebp-0x1c]
	addss xmm1, xmm3
	movss [eax+0x8], xmm1
	movss xmm0, dword [edx+0x40]
	mov ecx, [ebp-0x50]
	mulss xmm0, [ecx]
	mov ecx, [ebp-0x4c]
	mulss xmm2, [ecx]
	addss xmm0, xmm2
	mov ecx, [ebp-0x48]
	mulss xmm1, [ecx]
	addss xmm0, xmm1
	xorps xmm0, xmm6
	movss [eax+0xc], xmm0
	movss xmm1, dword [ebx+0x28]
	movss xmm0, dword [ebp-0x3c]
	mulss xmm0, xmm1
	mov eax, [ebp-0x50]
	addss xmm0, [eax]
	movss xmm2, dword [ebp-0x40]
	mulss xmm2, xmm1
	mov ecx, [ebp-0x4c]
	addss xmm2, [ecx]
	mulss xmm1, [ebp-0x44]
	mov eax, [ebp-0x48]
	addss xmm1, [eax]
	lea eax, [edx+0x50]
	movss xmm3, dword [ebp-0x3c]
	movss [edx+0x50], xmm3
	movss xmm3, dword [ebp-0x40]
	movss [eax+0x4], xmm3
	movss xmm3, dword [ebp-0x44]
	movss [eax+0x8], xmm3
	mulss xmm0, [ebp-0x3c]
	mulss xmm2, [ebp-0x40]
	addss xmm0, xmm2
	mulss xmm1, xmm3
	addss xmm0, xmm1
	xorps xmm0, xmm6
	movss [eax+0xc], xmm0
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_CalcSpotLightPlanes_20:
	movaps xmm0, xmm7
	divss xmm0, xmm1
	movaps xmm1, xmm0
	jmp R_CalcSpotLightPlanes_40
R_CalcSpotLightPlanes_30:
	movaps xmm0, xmm7
	divss xmm0, xmm1
	movaps xmm1, xmm0
	jmp R_CalcSpotLightPlanes_50
	nop


;R_GetBspSpotLightSurfs(GfxLight const*, int, GfxBspDrawSurfData*)
R_GetBspSpotLightSurfs:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xec
	mov eax, [ebp+0x8]
	mov edx, rgp
	mov edx, [edx+0x20a0]
	mov ecx, [edx+0x27c]
	mov edx, [edx+0x2a0]
	mov [ebp-0xcc], edx
	movss xmm3, dword [eax+0x1c]
	movaps xmm0, xmm3
	subss xmm0, [eax+0x28]
	movss [ebp-0x38], xmm0
	movss xmm2, dword [eax+0x20]
	movaps xmm0, xmm2
	subss xmm0, [eax+0x28]
	movss [ebp-0x34], xmm0
	movss xmm1, dword [eax+0x24]
	movaps xmm0, xmm1
	subss xmm0, [eax+0x28]
	movss [ebp-0x30], xmm0
	addss xmm3, [eax+0x28]
	movss [ebp-0x44], xmm3
	addss xmm2, [eax+0x28]
	movss [ebp-0x40], xmm2
	addss xmm1, [eax+0x28]
	movss [ebp-0x3c], xmm1
	mov edx, [ebp+0xc]
	shl edx, 0xd
	mov ebx, [ebp+0xc]
	lea esi, [edx+ebx*4]
	mov edx, scene
	mov [ebp-0xd4], edx
	lea edi, [esi+edx+0x114a00]
	lea ebx, [edi+0x58]
	mov [ebp-0xac], ebx
	lea edx, [edi+0x1058]
	mov [ebp-0x24], edx
	mov ebx, [ebp-0xd4]
	lea edx, [esi+ebx+0x11ca00]
	lea ebx, [edx+0x68]
	mov [ebp-0xb0], ebx
	add edx, 0x1068
	mov [ebp-0x20], edx
	mov [ebp-0xa8], ecx
	lea ebx, [ebp-0xa8]
	lea edx, [ebp-0xa4]
	call R_CalcSpotLightPlanes
	mov dword [esp+0x1c], 0x2
	lea eax, [ebp-0x2c]
	mov [esp+0x18], eax
	mov dword [esp+0x14], 0x400
	lea eax, [ebp-0x24]
	mov [esp+0x10], eax
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _ZZ22R_GetBspSpotLightSurfsPK8GfxLightiP18GfxBspDrawSurfDataE9allowSurf
	lea eax, [ebp-0x44]
	mov [esp+0x4], eax
	lea eax, [ebp-0x38]
	mov [esp], eax
	call R_BoxSurfaces
	mov eax, [ebp-0x2c]
	test eax, eax
	jz R_GetBspSpotLightSurfs_10
	mov edx, [ebp-0xd4]
	mov [esi+edx+0x114a54], eax
	mov ebx, [ebp-0xac]
	mov ecx, [ebp+0x10]
	mov [ecx+0x10], ebx
	lea eax, [edi+0x2058]
	mov [ecx+0x14], eax
	mov ebx, [ebp-0x24]
	mov eax, [ebp-0x2c]
	lea eax, [ebx+eax*4]
	mov [ebp-0xc8], eax
	cmp ebx, eax
	jz R_GetBspSpotLightSurfs_20
	mov esi, eax
	sub esi, ebx
	mov eax, esi
	sar eax, 0x2
	cmp eax, 0x1
	jz R_GetBspSpotLightSurfs_30
	xor edx, edx
R_GetBspSpotLightSurfs_40:
	add edx, 0x1
	sar eax, 1
	cmp eax, 0x1
	jnz R_GetBspSpotLightSurfs_40
	lea eax, [edx+edx]
R_GetBspSpotLightSurfs_240:
	mov dword [esp+0xc], R_SortBspLightSurfaces
	mov [esp+0x8], eax
	mov eax, [ebp-0xc8]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZSt16__introsort_loopIPP10GfxSurfaceiPFhS1_S1_EEvT_S5_T0_T1_
	cmp esi, 0x43
	jle R_GetBspSpotLightSurfs_50
	lea edx, [ebx+0x40]
	mov [ebp-0xc0], edx
	mov dword [esp+0x8], R_SortBspLightSurfaces
	mov [esp+0x4], edx
	mov [esp], ebx
	call _ZSt16__insertion_sortIPP10GfxSurfacePFhS1_S1_EEvT_S5_T0_
	mov ecx, [ebp-0xc0]
	cmp [ebp-0xc8], ecx
	jz R_GetBspSpotLightSurfs_20
	mov ebx, ecx
	mov edi, ecx
R_GetBspSpotLightSurfs_80:
	mov ebx, [ebx]
	mov [ebp-0xc4], ebx
	mov ebx, [ebp-0xc0]
	sub ebx, 0x4
	jmp R_GetBspSpotLightSurfs_60
R_GetBspSpotLightSurfs_70:
	mov [edi], esi
	mov edi, ebx
	sub ebx, 0x4
R_GetBspSpotLightSurfs_60:
	mov esi, [ebx]
	mov [esp+0x4], esi
	mov eax, [ebp-0xc4]
	mov [esp], eax
	call R_SortBspLightSurfaces
	test al, al
	jnz R_GetBspSpotLightSurfs_70
	mov edx, [ebp-0xc4]
	mov [edi], edx
	add dword [ebp-0xc0], 0x4
	mov ecx, [ebp-0xc0]
	cmp [ebp-0xc8], ecx
	jz R_GetBspSpotLightSurfs_20
	mov ebx, [ebp-0xc0]
	mov edi, [ebp-0xc0]
	jmp R_GetBspSpotLightSurfs_80
R_GetBspSpotLightSurfs_50:
	mov dword [esp+0x8], R_SortBspLightSurfaces
	mov esi, [ebp-0xc8]
	mov [esp+0x4], esi
	mov [esp], ebx
	call _ZSt16__insertion_sortIPP10GfxSurfacePFhS1_S1_EEvT_S5_T0_
R_GetBspSpotLightSurfs_20:
	mov eax, [ebp-0x2c]
	test eax, eax
	jnz R_GetBspSpotLightSurfs_90
R_GetBspSpotLightSurfs_230:
	mov ebx, [ebp+0x10]
	mov [esp], ebx
	call R_EndCmdBuf
	mov ebx, scene
	mov eax, [ebp+0xc]
	shl eax, 0xd
	mov esi, [ebp+0xc]
	lea ecx, [eax+esi*4]
	lea edx, [ecx+ebx+0x114a58]
	mov esi, [ebp+0x10]
	mov eax, [esi+0x10]
	sub eax, edx
	sar eax, 0x3
	mov [ecx+ebx+0x114a54], eax
R_GetBspSpotLightSurfs_190:
	mov edx, [ebp-0x28]
	test edx, edx
	jz R_GetBspSpotLightSurfs_100
	mov eax, [ebp+0xc]
	shl eax, 0xd
	mov ecx, [ebp+0xc]
	lea eax, [eax+ecx*4]
	mov [eax+ebx+0x11ca64], edx
	mov ebx, [ebp+0x10]
	add ebx, 0x18
	mov [ebp-0xd0], ebx
	mov esi, [ebp-0xb0]
	mov [ebx+0x10], esi
	mov eax, esi
	add eax, 0x2000
	mov [ebx+0x14], eax
	mov ebx, [ebp-0x20]
	mov eax, [ebp-0x28]
	lea eax, [ebx+eax*4]
	mov [ebp-0xbc], eax
	cmp ebx, eax
	jz R_GetBspSpotLightSurfs_110
	mov esi, eax
	sub esi, ebx
	mov eax, esi
	sar eax, 0x2
	cmp eax, 0x1
	jz R_GetBspSpotLightSurfs_120
	xor edx, edx
R_GetBspSpotLightSurfs_130:
	add edx, 0x1
	sar eax, 1
	cmp eax, 0x1
	jnz R_GetBspSpotLightSurfs_130
	lea eax, [edx+edx]
R_GetBspSpotLightSurfs_250:
	mov dword [esp+0xc], R_SortBspLightSurfaces
	mov [esp+0x8], eax
	mov eax, [ebp-0xbc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZSt16__introsort_loopIPP10GfxSurfaceiPFhS1_S1_EEvT_S5_T0_T1_
	cmp esi, 0x43
	jle R_GetBspSpotLightSurfs_140
	lea edx, [ebx+0x40]
	mov [ebp-0xb4], edx
	mov dword [esp+0x8], R_SortBspLightSurfaces
	mov [esp+0x4], edx
	mov [esp], ebx
	call _ZSt16__insertion_sortIPP10GfxSurfacePFhS1_S1_EEvT_S5_T0_
	mov ecx, [ebp-0xb4]
	cmp [ebp-0xbc], ecx
	jz R_GetBspSpotLightSurfs_110
	mov ebx, ecx
	mov edi, ecx
R_GetBspSpotLightSurfs_170:
	mov ebx, [ebx]
	mov [ebp-0xb8], ebx
	mov ebx, [ebp-0xb4]
	sub ebx, 0x4
	jmp R_GetBspSpotLightSurfs_150
R_GetBspSpotLightSurfs_160:
	mov [edi], esi
	mov edi, ebx
	sub ebx, 0x4
R_GetBspSpotLightSurfs_150:
	mov esi, [ebx]
	mov [esp+0x4], esi
	mov eax, [ebp-0xb8]
	mov [esp], eax
	call R_SortBspLightSurfaces
	test al, al
	jnz R_GetBspSpotLightSurfs_160
	mov edx, [ebp-0xb8]
	mov [edi], edx
	add dword [ebp-0xb4], 0x4
	mov ecx, [ebp-0xb4]
	cmp [ebp-0xbc], ecx
	jz R_GetBspSpotLightSurfs_110
	mov ebx, [ebp-0xb4]
	mov edi, [ebp-0xb4]
	jmp R_GetBspSpotLightSurfs_170
R_GetBspSpotLightSurfs_140:
	mov dword [esp+0x8], R_SortBspLightSurfaces
	mov esi, [ebp-0xbc]
	mov [esp+0x4], esi
	mov [esp], ebx
	call _ZSt16__insertion_sortIPP10GfxSurfacePFhS1_S1_EEvT_S5_T0_
R_GetBspSpotLightSurfs_110:
	mov eax, [ebp-0x28]
	test eax, eax
	jnz R_GetBspSpotLightSurfs_180
R_GetBspSpotLightSurfs_210:
	mov ebx, [ebp-0xd0]
	mov [esp], ebx
	call R_EndCmdBuf
	mov ebx, scene
	mov eax, [ebp+0xc]
	shl eax, 0xd
	mov esi, [ebp+0xc]
	lea ecx, [eax+esi*4]
	lea edx, [ecx+ebx+0x11ca68]
	mov esi, [ebp-0xd0]
	mov eax, [esi+0x10]
	sub eax, edx
	sar eax, 0x3
	mov [ecx+ebx+0x11ca64], eax
	add esp, 0xec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_GetBspSpotLightSurfs_100:
	mov eax, [ebp+0xc]
	shl eax, 0xd
	mov edx, [ebp+0xc]
	lea eax, [eax+edx*4]
	mov dword [eax+ebx+0x11ca64], 0x0
	add esp, 0xec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_GetBspSpotLightSurfs_10:
	mov eax, [ebp-0xd4]
	mov dword [esi+eax+0x114a54], 0x0
	mov ebx, eax
	jmp R_GetBspSpotLightSurfs_190
R_GetBspSpotLightSurfs_180:
	xor ebx, ebx
	lea edi, [ebp-0x1c]
	mov esi, rgp
R_GetBspSpotLightSurfs_200:
	mov ecx, [esi+0x20a0]
	mov eax, [ebp-0x20]
	mov edx, [eax+ebx*4]
	sub edx, [ecx+0x294]
	sar edx, 0x4
	lea eax, [edx+edx*4]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	mov ecx, eax
	shl ecx, 0x8
	add eax, ecx
	mov ecx, eax
	shl ecx, 0x10
	add eax, ecx
	lea eax, [edx+eax*2]
	mov [ebp-0x1c], ax
	mov ecx, [ebp-0xcc]
	mov edx, [ecx+eax*8+0x4]
	mov eax, [ecx+eax*8]
	mov ecx, [ebp-0xd0]
	mov [esp+0x10], ecx
	mov dword [esp+0xc], 0x1
	mov [esp+0x8], edi
	mov [esp], eax
	mov [esp+0x4], edx
	call R_AddBspDrawSurfs
	add ebx, 0x1
	cmp ebx, [ebp-0x28]
	jb R_GetBspSpotLightSurfs_200
	jmp R_GetBspSpotLightSurfs_210
R_GetBspSpotLightSurfs_90:
	xor ebx, ebx
	lea edi, [ebp-0x1c]
	mov esi, rgp
R_GetBspSpotLightSurfs_220:
	mov ecx, [esi+0x20a0]
	mov eax, [ebp-0x24]
	mov edx, [eax+ebx*4]
	sub edx, [ecx+0x294]
	sar edx, 0x4
	lea eax, [edx+edx*4]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	mov ecx, eax
	shl ecx, 0x8
	add eax, ecx
	mov ecx, eax
	shl ecx, 0x10
	add eax, ecx
	lea eax, [edx+eax*2]
	mov [ebp-0x1c], ax
	mov ecx, [ebp-0xcc]
	mov edx, [ecx+eax*8+0x4]
	mov eax, [ecx+eax*8]
	mov ecx, [ebp+0x10]
	mov [esp+0x10], ecx
	mov dword [esp+0xc], 0x1
	mov [esp+0x8], edi
	mov [esp], eax
	mov [esp+0x4], edx
	call R_AddBspDrawSurfs
	add ebx, 0x1
	cmp ebx, [ebp-0x2c]
	jb R_GetBspSpotLightSurfs_220
	jmp R_GetBspSpotLightSurfs_230
R_GetBspSpotLightSurfs_30:
	and eax, 0xffffff00
	jmp R_GetBspSpotLightSurfs_240
R_GetBspSpotLightSurfs_120:
	and eax, 0xffffff00
	jmp R_GetBspSpotLightSurfs_250


;R_EnumLightDefs(void (*)(XAssetHeader, void*), void*)
R_EnumLightDefs:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0xc]
	mov eax, [lightGlob]
	test eax, eax
	jg R_EnumLightDefs_10
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_EnumLightDefs_10:
	xor esi, esi
	mov ebx, lightGlob
R_EnumLightDefs_20:
	mov eax, [ebx+0x4]
	mov [esp+0x4], edi
	mov [esp], eax
	call dword [ebp+0x8]
	add esi, 0x1
	add ebx, 0x4
	cmp esi, [lightGlob]
	jl R_EnumLightDefs_20
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;R_InitLightDefs()
R_InitLightDefs:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, useFastFile
	mov eax, [eax]
	mov edx, R_RegisterLightDef_FastFile
	cmp byte [eax+0xc], 0x0
	mov eax, R_RegisterLightDef_LoadObj
	cmovz edx, eax
	mov dword [esp], _cstring_light_dynamic
	call edx
	mov edx, rgp
	mov [edx+0x202c], eax
	leave
	ret
	nop


;R_GetBspLightSurfs(GfxLight const**, int)
R_GetBspLightSurfs:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov edi, [ebp+0xc]
	lea esi, [ebp-0x48]
	mov [esp], esi
	call R_InitBspDrawSurf
	lea eax, [ebp-0x30]
	mov [esp], eax
	call R_InitBspDrawSurf
	test edi, edi
	jle R_GetBspLightSurfs_10
	xor ebx, ebx
	jmp R_GetBspLightSurfs_20
R_GetBspLightSurfs_30:
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov [esp], eax
	call R_GetBspSpotLightSurfs
	add ebx, 0x1
	cmp edi, ebx
	jz R_GetBspLightSurfs_10
R_GetBspLightSurfs_20:
	mov edx, [ebp+0x8]
	mov eax, [edx+ebx*4]
	cmp byte [eax], 0x3
	jnz R_GetBspLightSurfs_30
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov [esp], eax
	call R_GetBspOmniLightSurfs
	add ebx, 0x1
	cmp edi, ebx
	jnz R_GetBspLightSurfs_20
R_GetBspLightSurfs_10:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;R_RegisterLightDef(char const*)
R_RegisterLightDef:
	push ebp
	mov ebp, esp
	mov eax, useFastFile
	mov eax, [eax]
	mov ecx, R_RegisterLightDef_FastFile
	cmp byte [eax+0xc], 0x0
	mov eax, R_RegisterLightDef_LoadObj
	cmovz ecx, eax
	pop ebp
	jmp ecx


;R_ShutdownLightDefs()
R_ShutdownLightDefs:
	push ebp
	mov ebp, esp
	mov dword [lightGlob], 0x0
	pop ebp
	ret
	nop


;R_GetSceneEntLightSurfs(GfxLight const**, int)
R_GetSceneEntLightSurfs:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2ac
	mov esi, [ebp+0xc]
	test esi, esi
	jle R_GetSceneEntLightSurfs_10
	xor ebx, ebx
	lea esi, [ebp-0x198]
	jmp R_GetSceneEntLightSurfs_20
R_GetSceneEntLightSurfs_30:
	add ebx, 0x1
	add esi, 0x60
	cmp [ebp+0xc], ebx
	jz R_GetSceneEntLightSurfs_10
R_GetSceneEntLightSurfs_20:
	mov edx, [ebp+0x8]
	mov eax, [edx+ebx*4]
	cmp byte [eax], 0x2
	jnz R_GetSceneEntLightSurfs_30
	mov edx, esi
	call R_CalcSpotLightPlanes
	add ebx, 0x1
	add esi, 0x60
	cmp [ebp+0xc], ebx
	jnz R_GetSceneEntLightSurfs_20
R_GetSceneEntLightSurfs_10:
	mov ecx, scene
	mov ebx, [ecx+0x12b42c]
	mov [ebp-0x20c], ebx
	test ebx, ebx
	jz R_GetSceneEntLightSurfs_40
	mov dword [ebp-0x210], 0x0
	mov [ebp-0x280], ecx
	mov dword [ebp-0x284], 0x12b400
	mov [ebp-0x28c], ecx
	mov eax, [ebp-0x210]
	jmp R_GetSceneEntLightSurfs_50
R_GetSceneEntLightSurfs_60:
	add dword [ebp-0x210], 0x1
	add dword [ebp-0x284], 0x7c
	mov eax, [ebp-0x210]
	cmp [ebp-0x20c], eax
	jbe R_GetSceneEntLightSurfs_40
R_GetSceneEntLightSurfs_50:
	cmp byte [ecx+eax+0x13ac30], 0x1
	jnz R_GetSceneEntLightSurfs_60
	mov eax, [ebp-0x284]
	add eax, ecx
	lea edx, [eax+0x30]
	mov [ebp-0x204], edx
	lea ebx, [eax+0x60]
	mov [ebp-0x1f8], ebx
	mov ebx, [ebp+0xc]
	test ebx, ebx
	jle R_GetSceneEntLightSurfs_60
	mov dword [ebp-0x1ac], 0x0
	add eax, 0x6c
	mov [ebp-0x224], eax
	mov eax, [ebp-0x28c]
	mov [ebp-0x270], eax
	add ecx, 0x11ca00
	mov [ebp-0x274], ecx
	mov dword [ebp-0x278], 0x0
	lea edx, [ebp-0x198]
	mov [ebp-0x27c], edx
	mov ecx, [ebp-0x1ac]
	jmp R_GetSceneEntLightSurfs_70
R_GetSceneEntLightSurfs_110:
	mov ecx, [ebp-0x224]
	mov edx, [ebp-0x1f8]
	mov eax, [ebp-0x27c]
	call R_BoxInPlanes
	test eax, eax
	jz R_GetSceneEntLightSurfs_80
	mov eax, frontEndDataOut
	mov edx, [eax]
	mov ecx, [ebp-0x204]
	movzx eax, word [ecx+0x6c]
	test byte [edx+eax*8+0x118260], 0x8
	jnz R_GetSceneEntLightSurfs_80
	mov edx, ecx
R_GetSceneEntLightSurfs_120:
	mov ebx, [ebp-0x278]
	mov eax, [ebp-0x270]
	lea esi, [ebx+eax+0x114a00]
	mov ebx, [esi+0x54]
	lea ebx, [esi+ebx*8+0x58]
	lea eax, [esi+0x2058]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x16
	mov [esp], edx
	call R_AddDObjSurfaces
	sub eax, ebx
	sar eax, 0x3
	add [esi+0x54], eax
	cmp byte [edi], 0x2
	jz R_GetSceneEntLightSurfs_90
R_GetSceneEntLightSurfs_80:
	add dword [ebp-0x1ac], 0x1
	add dword [ebp-0x27c], 0x60
	add dword [ebp-0x278], 0x2004
	add dword [ebp-0x274], 0x2004
	mov ebx, [ebp-0x1ac]
	cmp [ebp+0xc], ebx
	jz R_GetSceneEntLightSurfs_100
	mov ecx, ebx
R_GetSceneEntLightSurfs_70:
	mov ebx, [ebp+0x8]
	mov edi, [ebx+ecx*4]
	cmp byte [edi], 0x3
	jnz R_GetSceneEntLightSurfs_110
	mov eax, [ebp-0x224]
	mov [esp+0x8], eax
	mov edx, [ebp-0x1f8]
	mov [esp+0x4], edx
	lea eax, [edi+0x1c]
	mov [esp], eax
	call PointToBoxDistSq
	fstp dword [ebp-0x1d8]
	movss xmm0, dword [edi+0x28]
	mulss xmm0, xmm0
	movss xmm1, dword [ebp-0x1d8]
	ucomiss xmm1, xmm0
	ja R_GetSceneEntLightSurfs_80
	mov edx, [ebp-0x204]
	jmp R_GetSceneEntLightSurfs_120
R_GetSceneEntLightSurfs_40:
	mov edx, [ecx+0x13ba30]
	mov [ebp-0x1cc], edx
	test edx, edx
	jz R_GetSceneEntLightSurfs_130
	mov dword [ebp-0x1bc], 0x0
	mov dword [ebp-0x26c], 0x13ba00
	mov ebx, [ebp-0x1bc]
	jmp R_GetSceneEntLightSurfs_140
R_GetSceneEntLightSurfs_150:
	add dword [ebp-0x1bc], 0x1
	add dword [ebp-0x26c], 0x48
	mov eax, [ebp-0x1bc]
	cmp [ebp-0x1cc], eax
	jbe R_GetSceneEntLightSurfs_130
	mov ebx, eax
R_GetSceneEntLightSurfs_140:
	cmp byte [ecx+ebx+0x14da34], 0x1
	jnz R_GetSceneEntLightSurfs_150
	mov eax, [ebp-0x26c]
	add eax, ecx
	lea edx, [eax+0x34]
	mov [ebp-0x200], edx
	mov edx, [ebp+0xc]
	test edx, edx
	jle R_GetSceneEntLightSurfs_150
	mov dword [ebp-0x1a8], 0x0
	add eax, 0x50
	mov [ebp-0x228], eax
	lea ebx, [ecx+0x11ca00]
	mov [ebp-0x260], ebx
	mov dword [ebp-0x264], 0x0
	lea eax, [ebp-0x198]
	mov [ebp-0x268], eax
	mov edx, [ebp-0x1a8]
	mov ebx, [ebp+0x8]
	mov edi, [ebx+edx*4]
	cmp byte [edi], 0x3
	jz R_GetSceneEntLightSurfs_160
R_GetSceneEntLightSurfs_200:
	mov eax, [ebp-0x200]
	movss xmm5, dword [eax+0x30]
	movss xmm4, dword [eax+0x1c]
	mov edx, [ebp-0x228]
	movss xmm3, dword [edx+0x4]
	movss xmm2, dword [edx+0x8]
	xor edx, edx
	pxor xmm6, xmm6
R_GetSceneEntLightSurfs_180:
	mov ebx, [ebp-0x268]
	lea eax, [edx+ebx]
	movaps xmm0, xmm4
	mulss xmm0, [eax]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, [eax+0x8]
	addss xmm0, xmm1
	addss xmm0, [eax+0xc]
	subss xmm0, xmm5
	ucomiss xmm0, xmm6
	ja R_GetSceneEntLightSurfs_170
	add edx, 0x10
	cmp edx, 0x60
	jnz R_GetSceneEntLightSurfs_180
R_GetSceneEntLightSurfs_210:
	mov eax, [ebp-0x264]
	lea esi, [eax+ecx+0x114a00]
	mov ebx, [esi+0x54]
	lea ebx, [esi+ebx*8+0x58]
	lea eax, [esi+0x2058]
	mov [esp+0x10], eax
	mov [esp+0xc], ebx
	mov dword [esp+0x8], 0x16
	mov edx, [ebp-0x200]
	mov eax, [edx+0x4]
	mov [esp+0x4], eax
	mov [esp], edx
	call R_AddXModelSurfaces
	sub eax, ebx
	sar eax, 0x3
	add [esi+0x54], eax
	cmp byte [edi], 0x2
	jz R_GetSceneEntLightSurfs_190
R_GetSceneEntLightSurfs_220:
	mov ecx, scene
R_GetSceneEntLightSurfs_170:
	add dword [ebp-0x1a8], 0x1
	add dword [ebp-0x268], 0x60
	add dword [ebp-0x264], 0x2004
	add dword [ebp-0x260], 0x2004
	mov ebx, [ebp-0x1a8]
	cmp [ebp+0xc], ebx
	jz R_GetSceneEntLightSurfs_150
	mov edx, ebx
	mov ebx, [ebp+0x8]
	mov edi, [ebx+edx*4]
	cmp byte [edi], 0x3
	jnz R_GetSceneEntLightSurfs_200
R_GetSceneEntLightSurfs_160:
	lea eax, [edi+0x1c]
	mov edx, [ebp-0x200]
	movss xmm0, dword [edx+0x1c]
	subss xmm0, [edi+0x1c]
	mov ebx, [ebp-0x228]
	movss xmm1, dword [ebx+0x4]
	subss xmm1, [eax+0x4]
	movss xmm2, dword [ebx+0x8]
	subss xmm2, [eax+0x8]
	movss xmm3, dword [edi+0x28]
	addss xmm3, [edx+0x30]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	mulss xmm3, xmm3
	ucomiss xmm0, xmm3
	ja R_GetSceneEntLightSurfs_170
	jmp R_GetSceneEntLightSurfs_210
R_GetSceneEntLightSurfs_190:
	mov eax, r_spotLightShadows
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz R_GetSceneEntLightSurfs_220
	mov eax, r_spotLightEntityShadows
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz R_GetSceneEntLightSurfs_220
	mov ecx, [ebp-0x260]
	mov ebx, [ecx+0x64]
	lea ebx, [ecx+ebx*8+0x68]
	mov eax, ecx
	add eax, 0x2068
	mov [esp+0x10], eax
	mov [esp+0xc], ebx
	mov dword [esp+0x8], 0x16
	mov edx, [ebp-0x200]
	mov eax, [edx+0x4]
	mov [esp+0x4], eax
	mov [esp], edx
	call R_AddXModelSurfaces
	sub eax, ebx
	sar eax, 0x3
	mov ecx, [ebp-0x260]
	add [ecx+0x64], eax
	mov ecx, scene
	jmp R_GetSceneEntLightSurfs_170
R_GetSceneEntLightSurfs_130:
	mov edx, [ecx+0x154c38]
	mov [ebp-0x1c8], edx
	mov edx, rgp
	mov eax, [edx+0x20a0]
	mov eax, [eax+0x2c4]
	mov [ebp-0x208], eax
	mov edi, [ebp-0x1c8]
	test edi, edi
	jz R_GetSceneEntLightSurfs_230
	mov dword [ebp-0x1b8], 0x0
	mov dword [ebp-0x1e0], 0x0
	jmp R_GetSceneEntLightSurfs_240
R_GetSceneEntLightSurfs_260:
	add dword [ebp-0x1b8], 0x1
	add dword [ebp-0x1e0], 0x6
	mov ebx, [ebp-0x1b8]
	cmp [ebp-0x1c8], ebx
	jz R_GetSceneEntLightSurfs_250
	mov edx, rgp
R_GetSceneEntLightSurfs_240:
	mov eax, [edx+0x20a0]
	mov ecx, [ebp-0x1e0]
	add ecx, [eax+0x224]
	mov [ebp-0x1ec], ecx
	movzx ebx, word [ecx+0x4]
	mov [ebp-0x214], ebx
	mov eax, [ebp-0x208]
	cmp byte [eax+ebx], 0x1
	jnz R_GetSceneEntLightSurfs_260
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call DynEnt_GetClientPose
	mov [ebp-0x1e4], eax
	mov esi, [ebp+0xc]
	test esi, esi
	jle R_GetSceneEntLightSurfs_260
	mov dword [ebp-0x1a4], 0x0
	lea edx, [eax+0x10]
	mov [ebp-0x21c], edx
	mov ecx, scene
	mov [ebp-0x250], ecx
	mov ebx, ecx
	add ebx, 0x11ca00
	mov [ebp-0x254], ebx
	mov dword [ebp-0x258], 0x0
	lea eax, [ebp-0x198]
	mov [ebp-0x25c], eax
	mov edx, [ebp-0x1a4]
	mov ecx, [ebp+0x8]
	mov edi, [ecx+edx*4]
	cmp byte [edi], 0x3
	jz R_GetSceneEntLightSurfs_270
R_GetSceneEntLightSurfs_310:
	mov ecx, [ebp-0x1e4]
	movss xmm5, dword [ecx+0x1c]
	movss xmm4, dword [ecx+0x10]
	mov ebx, [ebp-0x21c]
	movss xmm3, dword [ebx+0x4]
	movss xmm2, dword [ebx+0x8]
	xor edx, edx
	pxor xmm6, xmm6
R_GetSceneEntLightSurfs_290:
	mov eax, [ebp-0x25c]
	add eax, edx
	movaps xmm0, xmm4
	mulss xmm0, [eax]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, [eax+0x8]
	addss xmm0, xmm1
	addss xmm0, [eax+0xc]
	subss xmm0, xmm5
	ucomiss xmm0, xmm6
	ja R_GetSceneEntLightSurfs_280
	add edx, 0x10
	cmp edx, 0x60
	jnz R_GetSceneEntLightSurfs_290
R_GetSceneEntLightSurfs_320:
	mov eax, [ebp-0x258]
	mov edx, [ebp-0x250]
	lea ebx, [eax+edx+0x114a00]
	mov esi, [ebx+0x54]
	lea esi, [ebx+esi*8+0x58]
	mov dword [esp+0x4], 0x0
	mov ecx, [ebp-0x214]
	mov [esp], ecx
	call DynEnt_GetEntityDef
	lea edx, [ebx+0x2058]
	mov [esp+0x10], edx
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x16
	mov eax, [eax+0x20]
	mov [esp+0x4], eax
	mov eax, [ebp-0x1ec]
	mov [esp], eax
	call R_AddXModelSurfaces
	sub eax, esi
	sar eax, 0x3
	add [ebx+0x54], eax
	cmp byte [edi], 0x2
	jz R_GetSceneEntLightSurfs_300
R_GetSceneEntLightSurfs_280:
	add dword [ebp-0x1a4], 0x1
	add dword [ebp-0x25c], 0x60
	add dword [ebp-0x258], 0x2004
	add dword [ebp-0x254], 0x2004
	mov ecx, [ebp-0x1a4]
	cmp [ebp+0xc], ecx
	jz R_GetSceneEntLightSurfs_260
	mov edx, ecx
	mov ecx, [ebp+0x8]
	mov edi, [ecx+edx*4]
	cmp byte [edi], 0x3
	jnz R_GetSceneEntLightSurfs_310
R_GetSceneEntLightSurfs_270:
	lea eax, [edi+0x1c]
	mov ebx, [ebp-0x1e4]
	movss xmm0, dword [ebx+0x10]
	subss xmm0, [edi+0x1c]
	mov edx, [ebp-0x21c]
	movss xmm1, dword [edx+0x4]
	subss xmm1, [eax+0x4]
	movss xmm2, dword [edx+0x8]
	subss xmm2, [eax+0x8]
	movss xmm3, dword [edi+0x28]
	addss xmm3, [ebx+0x1c]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	mulss xmm3, xmm3
	ucomiss xmm0, xmm3
	ja R_GetSceneEntLightSurfs_280
	jmp R_GetSceneEntLightSurfs_320
R_GetSceneEntLightSurfs_250:
	mov ecx, scene
R_GetSceneEntLightSurfs_230:
	mov eax, [ecx+0x14f634]
	mov [ebp-0x1c4], eax
	test eax, eax
	jz R_GetSceneEntLightSurfs_330
	mov dword [ebp-0x1b4], 0x0
	mov dword [ebp-0x24c], 0x14f600
	mov edx, scene
	mov [ebp-0x288], edx
	mov ebx, [ebp-0x1b4]
	jmp R_GetSceneEntLightSurfs_340
R_GetSceneEntLightSurfs_350:
	add dword [ebp-0x1b4], 0x1
	add dword [ebp-0x24c], 0x28
	mov eax, [ebp-0x1b4]
	cmp [ebp-0x1c4], eax
	jbe R_GetSceneEntLightSurfs_330
	mov ebx, eax
R_GetSceneEntLightSurfs_340:
	cmp byte [ecx+ebx+0x154638], 0x1
	jnz R_GetSceneEntLightSurfs_350
	mov eax, [ebp-0x24c]
	lea eax, [eax+ecx+0x38]
	mov [ebp-0x1fc], eax
	mov edx, [eax+0x4]
	mov [ebp-0x1d4], edx
	mov ebx, [ebp+0xc]
	test ebx, ebx
	jle R_GetSceneEntLightSurfs_350
	mov dword [ebp-0x1a0], 0x0
	lea ebx, [edx+0xc]
	mov [ebp-0x218], ebx
	mov eax, [ebp-0x288]
	mov [ebp-0x23c], eax
	add ecx, 0x11ca00
	mov [ebp-0x240], ecx
	mov dword [ebp-0x244], 0x0
	lea edx, [ebp-0x198]
	mov [ebp-0x248], edx
	mov ecx, [ebp-0x1a0]
	jmp R_GetSceneEntLightSurfs_360
R_GetSceneEntLightSurfs_400:
	mov ecx, [ebp-0x218]
	mov edx, [ebp-0x1d4]
	mov eax, [ebp-0x248]
	call R_BoxInPlanes
	test eax, eax
	jz R_GetSceneEntLightSurfs_370
R_GetSceneEntLightSurfs_410:
	mov eax, [ebp-0x244]
	mov edx, [ebp-0x23c]
	lea esi, [eax+edx+0x114a00]
	mov ebx, [esi+0x54]
	lea ebx, [esi+ebx*8+0x58]
	lea eax, [esi+0x2058]
	mov [esp+0x10], eax
	mov [esp+0xc], ebx
	mov dword [esp+0x8], 0x16
	mov ecx, [ebp-0x1fc]
	mov eax, [ecx+0x4]
	mov [esp+0x4], eax
	mov [esp], ecx
	call R_AddBModelSurfaces
	sub eax, ebx
	sar eax, 0x3
	add [esi+0x54], eax
	cmp byte [edi], 0x2
	jz R_GetSceneEntLightSurfs_380
R_GetSceneEntLightSurfs_370:
	add dword [ebp-0x1a0], 0x1
	add dword [ebp-0x248], 0x60
	add dword [ebp-0x244], 0x2004
	add dword [ebp-0x240], 0x2004
	mov ebx, [ebp-0x1a0]
	cmp [ebp+0xc], ebx
	jz R_GetSceneEntLightSurfs_390
	mov ecx, ebx
R_GetSceneEntLightSurfs_360:
	mov ebx, [ebp+0x8]
	mov edi, [ebx+ecx*4]
	cmp byte [edi], 0x3
	jnz R_GetSceneEntLightSurfs_400
	mov eax, [ebp-0x218]
	mov [esp+0x8], eax
	mov edx, [ebp-0x1d4]
	mov [esp+0x4], edx
	lea eax, [edi+0x1c]
	mov [esp], eax
	call PointToBoxDistSq
	fstp dword [ebp-0x1dc]
	movss xmm0, dword [edi+0x28]
	mulss xmm0, xmm0
	movss xmm1, dword [ebp-0x1dc]
	ucomiss xmm1, xmm0
	ja R_GetSceneEntLightSurfs_370
	jmp R_GetSceneEntLightSurfs_410
R_GetSceneEntLightSurfs_330:
	mov ecx, [ecx+0x154c3c]
	mov [ebp-0x1c0], ecx
	mov edx, rgp
	mov eax, [edx+0x20a0]
	mov eax, [eax+0x2d0]
	mov [ebp-0x1d0], eax
	test ecx, ecx
	jz R_GetSceneEntLightSurfs_420
	mov dword [ebp-0x1b0], 0x0
	jmp R_GetSceneEntLightSurfs_430
R_GetSceneEntLightSurfs_440:
	add dword [ebp-0x1b0], 0x1
	mov ebx, [ebp-0x1b0]
	cmp [ebp-0x1c0], ebx
	jz R_GetSceneEntLightSurfs_420
	mov edx, rgp
R_GetSceneEntLightSurfs_430:
	mov eax, [edx+0x20a0]
	mov eax, [eax+0x228]
	mov edx, [ebp-0x1b0]
	lea eax, [eax+edx*4]
	mov [ebp-0x1e8], eax
	movzx eax, word [eax+0x2]
	mov ebx, [ebp-0x1d0]
	cmp byte [ebx+eax], 0x1
	jnz R_GetSceneEntLightSurfs_440
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call DynEnt_GetEntityDef
	movzx eax, word [eax+0x24]
	mov [esp], eax
	call R_GetBrushModel
	mov [ebp-0x1f0], eax
	mov edx, [ebp+0xc]
	test edx, edx
	jle R_GetSceneEntLightSurfs_440
	mov dword [ebp-0x19c], 0x0
	add eax, 0xc
	mov [ebp-0x220], eax
	mov edx, scene
	mov [ebp-0x22c], edx
	mov ecx, edx
	add ecx, 0x11ca00
	mov [ebp-0x230], ecx
	mov dword [ebp-0x234], 0x0
	lea ebx, [ebp-0x198]
	mov [ebp-0x238], ebx
	mov eax, [ebp-0x19c]
	jmp R_GetSceneEntLightSurfs_450
R_GetSceneEntLightSurfs_480:
	mov ecx, [ebp-0x220]
	mov edx, [ebp-0x1f0]
	mov eax, [ebp-0x238]
	call R_BoxInPlanes
	test eax, eax
	jz R_GetSceneEntLightSurfs_460
R_GetSceneEntLightSurfs_490:
	mov eax, [ebp-0x234]
	mov edx, [ebp-0x22c]
	lea esi, [eax+edx+0x114a00]
	mov ebx, [esi+0x54]
	lea ebx, [esi+ebx*8+0x58]
	lea eax, [esi+0x2058]
	mov [esp+0x10], eax
	mov [esp+0xc], ebx
	mov dword [esp+0x8], 0x16
	mov ecx, [ebp-0x1f0]
	mov [esp+0x4], ecx
	mov eax, [ebp-0x1e8]
	mov [esp], eax
	call R_AddBModelSurfaces
	sub eax, ebx
	sar eax, 0x3
	add [esi+0x54], eax
	cmp byte [edi], 0x2
	jz R_GetSceneEntLightSurfs_470
R_GetSceneEntLightSurfs_460:
	add dword [ebp-0x19c], 0x1
	add dword [ebp-0x238], 0x60
	add dword [ebp-0x234], 0x2004
	add dword [ebp-0x230], 0x2004
	mov ecx, [ebp-0x19c]
	cmp [ebp+0xc], ecx
	jz R_GetSceneEntLightSurfs_440
	mov eax, ecx
R_GetSceneEntLightSurfs_450:
	mov edx, [ebp+0x8]
	mov edi, [edx+eax*4]
	cmp byte [edi], 0x3
	jnz R_GetSceneEntLightSurfs_480
	mov ecx, [ebp-0x220]
	mov [esp+0x8], ecx
	mov ebx, [ebp-0x1f0]
	mov [esp+0x4], ebx
	lea eax, [edi+0x1c]
	mov [esp], eax
	call PointToBoxDistSq
	fstp dword [ebp-0x1f4]
	movss xmm0, dword [edi+0x28]
	mulss xmm0, xmm0
	movss xmm1, dword [ebp-0x1f4]
	ucomiss xmm1, xmm0
	ja R_GetSceneEntLightSurfs_460
	jmp R_GetSceneEntLightSurfs_490
R_GetSceneEntLightSurfs_420:
	add esp, 0x2ac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_GetSceneEntLightSurfs_380:
	mov eax, r_spotLightShadows
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz R_GetSceneEntLightSurfs_370
	mov eax, r_spotLightEntityShadows
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz R_GetSceneEntLightSurfs_370
	mov eax, [ebp-0x240]
	mov ebx, [eax+0x64]
	lea ebx, [eax+ebx*8+0x68]
	add eax, 0x2068
	mov [esp+0x10], eax
	mov [esp+0xc], ebx
	mov dword [esp+0x8], 0x16
	mov edx, [ebp-0x1fc]
	mov eax, [edx+0x4]
	mov [esp+0x4], eax
	mov [esp], edx
	call R_AddBModelSurfaces
	sub eax, ebx
	sar eax, 0x3
	mov ecx, [ebp-0x240]
	add [ecx+0x64], eax
	jmp R_GetSceneEntLightSurfs_370
R_GetSceneEntLightSurfs_390:
	mov ecx, scene
	jmp R_GetSceneEntLightSurfs_350
R_GetSceneEntLightSurfs_100:
	mov ecx, [ebp-0x280]
	jmp R_GetSceneEntLightSurfs_60
R_GetSceneEntLightSurfs_90:
	mov eax, r_spotLightShadows
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz R_GetSceneEntLightSurfs_80
	mov eax, r_spotLightEntityShadows
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz R_GetSceneEntLightSurfs_80
	mov ecx, frontEndDataOut
	mov edx, [ecx]
	mov ebx, [ebp-0x204]
	movzx eax, word [ebx+0x6c]
	test byte [edx+eax*8+0x118260], 0x1
	jnz R_GetSceneEntLightSurfs_80
	mov edx, ebx
	mov eax, [ebp-0x274]
	mov ebx, [eax+0x64]
	lea ebx, [eax+ebx*8+0x68]
	add eax, 0x2068
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x16
	mov [esp], edx
	call R_AddDObjSurfaces
	sub eax, ebx
	sar eax, 0x3
	mov ecx, [ebp-0x274]
	add [ecx+0x64], eax
	jmp R_GetSceneEntLightSurfs_80
R_GetSceneEntLightSurfs_300:
	mov eax, r_spotLightShadows
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz R_GetSceneEntLightSurfs_280
	mov eax, r_spotLightEntityShadows
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz R_GetSceneEntLightSurfs_280
	mov edx, [ebp-0x254]
	mov ebx, [edx+0x64]
	lea ebx, [edx+ebx*8+0x68]
	mov dword [esp+0x4], 0x0
	mov ecx, [ebp-0x214]
	mov [esp], ecx
	call DynEnt_GetEntityDef
	mov edx, [ebp-0x254]
	add edx, 0x2068
	mov [esp+0x10], edx
	mov [esp+0xc], ebx
	mov dword [esp+0x8], 0x16
	mov eax, [eax+0x20]
	mov [esp+0x4], eax
	mov eax, [ebp-0x1ec]
	mov [esp], eax
	call R_AddXModelSurfaces
	sub eax, ebx
	sar eax, 0x3
	mov edx, [ebp-0x254]
	add [edx+0x64], eax
	jmp R_GetSceneEntLightSurfs_280
R_GetSceneEntLightSurfs_470:
	mov eax, r_spotLightShadows
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz R_GetSceneEntLightSurfs_460
	mov eax, r_spotLightEntityShadows
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz R_GetSceneEntLightSurfs_460
	mov edx, [ebp-0x230]
	mov ebx, [edx+0x64]
	lea ebx, [edx+ebx*8+0x68]
	mov eax, edx
	add eax, 0x2068
	mov [esp+0x10], eax
	mov [esp+0xc], ebx
	mov dword [esp+0x8], 0x16
	mov ecx, [ebp-0x1f0]
	mov [esp+0x4], ecx
	mov eax, [ebp-0x1e8]
	mov [esp], eax
	call R_AddBModelSurfaces
	sub eax, ebx
	sar eax, 0x3
	mov edx, [ebp-0x230]
	add [edx+0x64], eax
	jmp R_GetSceneEntLightSurfs_460
	nop


;R_GetPointLightPartitions(GfxLight const**)
R_GetPointLightPartitions:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xcc
	mov eax, scene
	mov ecx, [eax+0x11422c]
	test ecx, ecx
	jg R_GetPointLightPartitions_10
	mov dword [ebp-0xa0], 0x0
R_GetPointLightPartitions_210:
	mov eax, r_dlightLimit
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [ebp-0x9c], eax
	mov edx, [ebp-0xa0]
	cmp eax, edx
	jge R_GetPointLightPartitions_20
	mov [ebp-0xbc], eax
	lea ecx, [ebp-0x98]
	mov [ebp-0xb4], ecx
	mov esi, ecx
	mov ebx, [ebp-0xa0]
R_GetPointLightPartitions_140:
	mov edi, [esi]
	mov dword [ebp-0xb8], 0x0
R_GetPointLightPartitions_100:
	mov ecx, rg
	lea eax, [edi+0x1c]
	mov [ebp-0xcc], eax
R_GetPointLightPartitions_50:
	add dword [ebp-0xb8], 0x1
	cmp ebx, [ebp-0xb8]
	jle R_GetPointLightPartitions_30
	mov esi, [ebp-0xb8]
	mov eax, [ebp-0xb4]
	mov edx, [eax+esi*4]
	movzx eax, byte [edx]
	cmp al, [edi]
	jz R_GetPointLightPartitions_40
	cmp al, 0x2
	setz al
	movzx eax, al
R_GetPointLightPartitions_150:
	test eax, eax
	jnz R_GetPointLightPartitions_50
R_GetPointLightPartitions_30:
	cmp ebx, [ebp-0xb8]
	jl R_GetPointLightPartitions_60
	mov eax, rg
	movss xmm0, dword [eax+0x144]
	movss [ebp-0xac], xmm0
	movss xmm0, dword [eax+0x148]
	movss [ebp-0xa8], xmm0
	movss xmm0, dword [eax+0x14c]
	movss [ebp-0xa4], xmm0
	mov eax, [ebp-0xb4]
	lea ecx, [eax+ebx*4-0x4]
	lea edx, [edi+0x1c]
	mov [ebp-0xb0], edx
	jmp R_GetPointLightPartitions_70
R_GetPointLightPartitions_90:
	cmp al, 0x2
	setz al
	movzx eax, al
	sub ecx, 0x4
	test eax, eax
	jz R_GetPointLightPartitions_80
R_GetPointLightPartitions_70:
	sub ebx, 0x1
	cmp ebx, [ebp-0xb8]
	jl R_GetPointLightPartitions_60
	mov esi, ecx
	mov edx, [ecx]
	movzx eax, byte [edi]
	cmp al, [edx]
	jnz R_GetPointLightPartitions_90
	movss xmm6, dword [edi+0x28]
	movss xmm4, dword [edx+0x28]
	movss xmm3, dword [ebp-0xac]
	subss xmm3, [edi+0x1c]
	movss xmm5, dword [ebp-0xa8]
	mov eax, [ebp-0xb0]
	subss xmm5, [eax+0x4]
	movss xmm7, dword [ebp-0xa4]
	subss xmm7, [eax+0x8]
	lea eax, [edx+0x1c]
	movss xmm0, dword [ebp-0xac]
	subss xmm0, [edx+0x1c]
	movss xmm1, dword [ebp-0xa8]
	subss xmm1, [eax+0x4]
	movss xmm2, dword [ebp-0xa4]
	subss xmm2, [eax+0x8]
	mulss xmm6, xmm6
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	mulss xmm6, xmm0
	mulss xmm4, xmm4
	mulss xmm3, xmm3
	mulss xmm5, xmm5
	addss xmm3, xmm5
	mulss xmm7, xmm7
	addss xmm3, xmm7
	mulss xmm4, xmm3
	xor eax, eax
	ucomiss xmm6, xmm4
	setae al
	sub ecx, 0x4
	test eax, eax
	jnz R_GetPointLightPartitions_70
R_GetPointLightPartitions_80:
	mov edx, [ebp-0xb8]
	mov ecx, [ebp-0xb4]
	lea eax, [ecx+edx*4]
	mov ecx, [eax]
	mov edx, [esi]
	mov [eax], edx
	mov [esi], ecx
	jmp R_GetPointLightPartitions_100
R_GetPointLightPartitions_60:
	mov edx, [ebp-0xb8]
	cmp [ebp-0xa0], edx
	jz R_GetPointLightPartitions_110
	cmp [ebp-0xbc], edx
	jz R_GetPointLightPartitions_120
R_GetPointLightPartitions_160:
	jle R_GetPointLightPartitions_130
	mov ecx, [ebp-0xb4]
	lea ecx, [ecx+edx*4]
	mov [ebp-0xb4], ecx
	sub [ebp-0xa0], edx
	sub [ebp-0xbc], edx
	mov esi, ecx
	mov ebx, [ebp-0xa0]
	jmp R_GetPointLightPartitions_140
R_GetPointLightPartitions_40:
	movss xmm7, dword [edx+0x28]
	movss xmm6, dword [edi+0x28]
	lea eax, [edx+0x1c]
	movss xmm0, dword [ecx+0x144]
	movaps xmm3, xmm0
	subss xmm3, [edx+0x1c]
	movss xmm1, dword [ecx+0x148]
	movaps xmm4, xmm1
	subss xmm4, [eax+0x4]
	movss xmm2, dword [ecx+0x14c]
	movaps xmm5, xmm2
	subss xmm5, [eax+0x8]
	subss xmm0, [edi+0x1c]
	mov edx, [ebp-0xcc]
	subss xmm1, [edx+0x4]
	subss xmm2, [edx+0x8]
	mulss xmm7, xmm7
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	mulss xmm7, xmm0
	mulss xmm6, xmm6
	mulss xmm3, xmm3
	mulss xmm4, xmm4
	addss xmm3, xmm4
	mulss xmm5, xmm5
	addss xmm3, xmm5
	mulss xmm6, xmm3
	xor eax, eax
	ucomiss xmm7, xmm6
	setae al
	jmp R_GetPointLightPartitions_150
R_GetPointLightPartitions_130:
	mov ebx, [ebp-0xb8]
	mov [ebp-0xa0], ebx
	mov esi, [ebp-0xb4]
	jmp R_GetPointLightPartitions_140
R_GetPointLightPartitions_110:
	mov esi, [ebp-0xb4]
	mov ecx, [esi]
	lea edx, [esi+ebx*4]
	mov eax, [edx]
	mov [esi], eax
	mov [edx], ecx
	mov eax, [ebp-0xa0]
	sub eax, 0x1
	mov [ebp-0xb8], eax
	mov edx, eax
	cmp [ebp-0xbc], edx
	jnz R_GetPointLightPartitions_160
R_GetPointLightPartitions_120:
	mov ebx, [ebp-0x9c]
	mov [ebp-0xa0], ebx
R_GetPointLightPartitions_20:
	mov eax, [ebp-0xa0]
	test eax, eax
	jle R_GetPointLightPartitions_170
	xor edx, edx
	mov esi, scene
	lea ecx, [esi+0x114a54]
R_GetPointLightPartitions_180:
	mov eax, [ebp+edx*4-0x98]
	mov ebx, [ebp+0x8]
	mov [ebx+edx*4], eax
	mov dword [ecx], 0x0
	add edx, 0x1
	add ecx, 0x2004
	cmp [ebp-0xa0], edx
	jnz R_GetPointLightPartitions_180
R_GetPointLightPartitions_170:
	mov eax, [ebp-0xa0]
	add esp, 0xcc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_GetPointLightPartitions_10:
	xor edx, edx
	mov dword [ebp-0xa0], 0x0
	lea ebx, [eax+0x114a30]
	add eax, 0x114230
R_GetPointLightPartitions_200:
	cmp byte [edx+ebx], 0x0
	jnz R_GetPointLightPartitions_190
	mov esi, [ebp-0xa0]
	mov [ebp+esi*4-0x98], eax
	add esi, 0x1
	mov [ebp-0xa0], esi
R_GetPointLightPartitions_190:
	add edx, 0x1
	add eax, 0x40
	cmp ecx, edx
	jnz R_GetPointLightPartitions_200
	jmp R_GetPointLightPartitions_210
	nop


;R_GetStaticModelLightSurfs(GfxLight const**, int)
R_GetStaticModelLightSurfs:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8ac
	lea eax, [ebp-0x50]
	mov [esp], eax
	call R_InitStaticModelDrawSurf
	lea edx, [ebp-0x68]
	mov [esp], edx
	call R_InitStaticModelDrawSurf
	mov eax, rgp
	mov edx, [eax+0x20a0]
	mov eax, [edx+0x270]
	mov [g_staticModelLightCallback], eax
	mov edx, [edx+0x288]
	mov [ebp-0x878], edx
	mov eax, [ebp+0xc]
	test eax, eax
	jle R_GetStaticModelLightSurfs_10
	mov dword [ebp-0x890], 0x0
	mov ecx, scene
	mov ebx, ecx
	add ecx, 0x114a54
	mov [ebp-0x86c], ecx
	jmp R_GetStaticModelLightSurfs_20
R_GetStaticModelLightSurfs_40:
	lea ecx, [ebp-0x50]
	mov [esp], ecx
	call R_EndCmdBuf
	mov eax, [ebp-0x890]
	shl eax, 0xd
	mov esi, [ebp-0x890]
	lea ebx, [eax+esi*4]
	mov esi, scene
	lea edx, [ebx+esi+0x114a58]
	mov eax, [ebp-0x40]
	sub eax, edx
	sar eax, 0x3
	mov edx, [ebp-0x86c]
	mov [edx], eax
	lea ecx, [ebp-0x68]
	mov [esp], ecx
	call R_EndCmdBuf
	lea ebx, [ebx+esi+0x11ca68]
	mov eax, [ebp-0x58]
	sub eax, ebx
	sar eax, 0x3
	mov edx, [ebp-0x86c]
	mov [edx+0x8010], eax
	add dword [ebp-0x890], 0x1
	add edx, 0x2004
	mov [ebp-0x86c], edx
	mov ecx, [ebp-0x890]
	cmp [ebp+0xc], ecx
	jz R_GetStaticModelLightSurfs_10
	mov ebx, esi
R_GetStaticModelLightSurfs_20:
	mov esi, [ebp-0x890]
	mov eax, [ebp+0x8]
	mov esi, [eax+esi*4]
	mov [ebp-0x88c], esi
	movss xmm0, dword [esi+0x1c]
	subss xmm0, [esi+0x28]
	movss [ebp-0x38], xmm0
	movss xmm0, dword [esi+0x20]
	subss xmm0, [esi+0x28]
	movss [ebp-0x34], xmm0
	movss xmm0, dword [esi+0x24]
	subss xmm0, [esi+0x28]
	movss [ebp-0x30], xmm0
	movss xmm0, dword [esi+0x1c]
	addss xmm0, [esi+0x28]
	movss [ebp-0x2c], xmm0
	movss xmm0, dword [esi+0x20]
	addss xmm0, [esi+0x28]
	movss [ebp-0x28], xmm0
	movss xmm0, dword [esi+0x24]
	addss xmm0, [esi+0x28]
	movss [ebp-0x24], xmm0
	mov eax, [ebp-0x890]
	shl eax, 0xd
	mov edx, [ebp-0x890]
	lea ecx, [eax+edx*4]
	lea edx, [ecx+ebx+0x114a00]
	mov esi, [ebp-0x86c]
	mov eax, [esi]
	lea eax, [edx+eax*8+0x58]
	mov [ebp-0x40], eax
	add edx, 0x2058
	mov [ebp-0x3c], edx
	mov eax, [ebp-0x88c]
	cmp byte [eax], 0x3
	jz R_GetStaticModelLightSurfs_30
	lea edx, [ecx+ebx+0x11ca00]
	mov ecx, [ebp-0x86c]
	mov eax, [ecx+0x8010]
	lea eax, [edx+eax*8+0x68]
	mov [ebp-0x58], eax
	add edx, 0x2068
	mov [ebp-0x54], edx
	mov edx, g_staticModelLightCallback+0x14
	mov eax, [ebp-0x88c]
	call R_CalcSpotLightPlanes
	mov dword [esp+0x10], 0x400
	lea esi, [ebp-0x868]
	mov [esp+0xc], esi
	mov dword [esp+0x8], R_AllowStaticModelSpotLight
R_GetStaticModelLightSurfs_90:
	lea eax, [ebp-0x2c]
	mov [esp+0x4], eax
	lea edx, [ebp-0x38]
	mov [esp], edx
	call R_BoxStaticModels
	mov [ebp-0x888], eax
	mov eax, [ebp-0x888]
	test eax, eax
	jle R_GetStaticModelLightSurfs_40
	mov dword [ebp-0x884], 0x0
	mov ecx, [ebp-0x884]
R_GetStaticModelLightSurfs_80:
	movzx esi, word [ebp+ecx*2-0x868]
	mov eax, rgp
	mov eax, [eax+0x20a0]
	lea edi, [esi+esi*8]
	lea edi, [esi+edi*2]
	mov eax, [eax+0x29c]
	lea edi, [eax+edi*4]
	mov eax, esi
	sar eax, 0x4
	mov ecx, esi
	and ecx, 0xf
	add ecx, ecx
	mov edx, [ebp-0x878]
	mov ebx, [edx+eax*4]
	shr ebx, cl
	and ebx, 0x3
	mov [esp+0x8], ebx
	lea ecx, [ebp-0x1c]
	mov [esp+0x4], ecx
	mov eax, [edi+0x38]
	mov [esp], eax
	call XModelGetSurfaces
	mov [ebp-0x880], eax
	mov [esp+0x4], ebx
	mov [esp], esi
	call R_GetStaticModelId
	mov [ebp-0x872], ax
	mov esi, eax
	shr esi, 0x10
	mov [esp+0x4], ebx
	mov eax, [edi+0x38]
	mov [esp], eax
	call XModelGetSkins
	mov edi, eax
	mov [ebp-0x20], si
	mov eax, [ebp-0x880]
	test eax, eax
	jz R_GetStaticModelLightSurfs_50
	mov dword [ebp-0x87c], 0x0
	mov dword [ebp-0x870], 0x0
	jmp R_GetStaticModelLightSurfs_60
R_GetStaticModelLightSurfs_70:
	add dword [ebp-0x87c], 0x1
	add edi, 0x4
	add dword [ebp-0x870], 0x38
	mov eax, [ebp-0x87c]
	cmp [ebp-0x880], eax
	jbe R_GetStaticModelLightSurfs_50
R_GetStaticModelLightSurfs_60:
	mov edx, [edi]
	mov eax, [edx+0x40]
	mov eax, [eax+0x8]
	mov eax, [eax+0x64]
	test eax, eax
	jz R_GetStaticModelLightSurfs_70
	mov ebx, [edx+0x8]
	mov esi, [edx+0xc]
	movzx eax, word [ebp-0x872]
	and eax, 0xf
	shl eax, 0x12
	and esi, 0xffc3ffff
	or esi, eax
	mov dword [esp+0x10], 0x3
	lea eax, [ebp-0x40]
	mov [esp+0xc], eax
	mov [esp+0x4], ebx
	mov [esp+0x8], esi
	lea eax, [ebp-0x50]
	mov [esp], eax
	call R_AllocDrawSurf
	test eax, eax
	jz R_GetStaticModelLightSurfs_50
	mov dword [esp+0xc], 0x1
	lea edx, [ebp-0x20]
	mov [esp+0x8], edx
	mov eax, [ebp-0x870]
	add eax, [ebp-0x1c]
	mov [esp+0x4], eax
	lea ecx, [ebp-0x50]
	mov [esp], ecx
	call R_AddDelayedStaticModelDrawSurf
	mov eax, [ebp-0x88c]
	cmp byte [eax], 0x2
	jnz R_GetStaticModelLightSurfs_70
	mov eax, r_spotLightShadows
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz R_GetStaticModelLightSurfs_70
	mov eax, r_spotLightSModelShadows
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz R_GetStaticModelLightSurfs_70
	mov dword [esp+0x10], 0x3
	lea eax, [ebp-0x58]
	mov [esp+0xc], eax
	mov [esp+0x4], ebx
	mov [esp+0x8], esi
	lea edx, [ebp-0x68]
	mov [esp], edx
	call R_AllocDrawSurf
	test eax, eax
	jz R_GetStaticModelLightSurfs_50
	mov dword [esp+0xc], 0x1
	lea ecx, [ebp-0x20]
	mov [esp+0x8], ecx
	mov eax, [ebp-0x870]
	add eax, [ebp-0x1c]
	mov [esp+0x4], eax
	lea esi, [ebp-0x68]
	mov [esp], esi
	call R_AddDelayedStaticModelDrawSurf
	add dword [ebp-0x87c], 0x1
	add edi, 0x4
	add dword [ebp-0x870], 0x38
	mov eax, [ebp-0x87c]
	cmp [ebp-0x880], eax
	ja R_GetStaticModelLightSurfs_60
R_GetStaticModelLightSurfs_50:
	add dword [ebp-0x884], 0x1
	mov edx, [ebp-0x884]
	cmp [ebp-0x888], edx
	jz R_GetStaticModelLightSurfs_40
	mov ecx, edx
	jmp R_GetStaticModelLightSurfs_80
R_GetStaticModelLightSurfs_30:
	mov edx, eax
	add edx, 0x1c
	mov ecx, eax
	mov eax, [eax+0x1c]
	mov [g_staticModelLightCallback+0x4], eax
	mov eax, [edx+0x4]
	mov [g_staticModelLightCallback+0x8], eax
	mov eax, [edx+0x8]
	mov [g_staticModelLightCallback+0xc], eax
	movss xmm0, dword [ecx+0x28]
	mulss xmm0, xmm0
	movss [g_staticModelLightCallback+0x10], xmm0
	mov dword [esp+0x10], 0x400
	lea esi, [ebp-0x868]
	mov [esp+0xc], esi
	mov dword [esp+0x8], R_AllowStaticModelOmniLight
	jmp R_GetStaticModelLightSurfs_90
R_GetStaticModelLightSurfs_10:
	add esp, 0x8ac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;R_EmitPointLightPartitionSurfs(GfxViewInfo*, GfxLight const**, int, float const*)
R_EmitPointLightPartitionSurfs:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov eax, [ebp+0x8]
	add eax, 0x5370
	mov [ebp-0x40], eax
	mov edx, [ebp+0x10]
	test edx, edx
	jg R_EmitPointLightPartitionSurfs_10
	mov dword [ebp-0x38], 0x0
R_EmitPointLightPartitionSurfs_40:
	mov eax, [ebp-0x38]
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_EmitPointLightPartitionSurfs_10:
	mov edx, [ebp+0x14]
	add edx, 0x4
	mov [ebp-0x28], edx
	mov ecx, [ebp+0x14]
	add ecx, 0x8
	mov [ebp-0x24], ecx
	mov eax, [ebp+0x14]
	add eax, 0xc
	mov [ebp-0x20], eax
	mov dword [ebp-0x3c], 0x0
	mov dword [ebp-0x38], 0x0
	mov edx, scene
	mov ecx, edx
	add ecx, 0x114a54
	mov [ebp-0x1c], ecx
	jmp R_EmitPointLightPartitionSurfs_20
R_EmitPointLightPartitionSurfs_50:
	mov eax, 0x16
R_EmitPointLightPartitionSurfs_80:
	mov [ebx+0x8], eax
	mov eax, [ebp+0x8]
	mov [ebx+0xc], eax
	lea edx, [ebx+0x10]
	mov ecx, [ebp+0x14]
	mov eax, [ecx]
	mov [ebx+0x10], eax
	mov ecx, [ebp-0x28]
	mov eax, [ecx]
	mov [edx+0x4], eax
	mov ecx, [ebp-0x24]
	mov eax, [ecx]
	mov [edx+0x8], eax
	mov ecx, [ebp-0x20]
	mov eax, [ecx]
	mov [edx+0xc], eax
	mov [ebx+0x20], esi
	mov dword [ebx+0x24], 0x1
	mov edx, frontEndDataOut
	mov eax, [edx]
	mov eax, [eax+0x118254]
	mov [ebp-0x2c], eax
	mov [esp+0x8], ebx
	mov ecx, [ebp-0x30]
	mov [esp+0x4], ecx
	mov eax, [ebp-0x34]
	mov [esp], eax
	call R_EmitDrawSurfList
	mov edx, frontEndDataOut
	mov eax, [edx]
	mov eax, [eax+0x118254]
	mov edx, eax
	sub edx, [ebp-0x2c]
	jz R_EmitPointLightPartitionSurfs_30
	mov eax, [edi]
	mov [esi], eax
	mov eax, [edi+0x4]
	mov [esi+0x4], eax
	mov eax, [edi+0x8]
	mov [esi+0x8], eax
	mov eax, [edi+0xc]
	mov [esi+0xc], eax
	mov eax, [edi+0x10]
	mov [esi+0x10], eax
	mov eax, [edi+0x14]
	mov [esi+0x14], eax
	mov eax, [edi+0x18]
	mov [esi+0x18], eax
	mov eax, [edi+0x1c]
	mov [esi+0x1c], eax
	mov eax, [edi+0x20]
	mov [esi+0x20], eax
	mov eax, [edi+0x24]
	mov [esi+0x24], eax
	mov eax, [edi+0x28]
	mov [esi+0x28], eax
	mov eax, [edi+0x2c]
	mov [esi+0x2c], eax
	mov eax, [edi+0x30]
	mov [esi+0x30], eax
	mov eax, [edi+0x34]
	mov [esi+0x34], eax
	mov eax, [edi+0x38]
	mov [esi+0x38], eax
	mov eax, [edi+0x3c]
	mov [esi+0x3c], eax
	mov ecx, frontEndDataOut
	mov eax, [ecx]
	mov ecx, [ebp-0x2c]
	lea eax, [eax+ecx*8+0x70000]
	mov [ebx], eax
	mov [ebx+0x4], edx
	add dword [ebp-0x38], 0x1
R_EmitPointLightPartitionSurfs_30:
	add dword [ebp-0x3c], 0x1
	add dword [ebp-0x1c], 0x2004
	mov eax, [ebp-0x3c]
	cmp [ebp+0x10], eax
	jz R_EmitPointLightPartitionSurfs_40
	mov edx, scene
R_EmitPointLightPartitionSurfs_20:
	mov eax, [ebp-0x3c]
	mov ecx, [ebp+0xc]
	mov edi, [ecx+eax*4]
	shl eax, 0xd
	mov ecx, [ebp-0x3c]
	lea eax, [eax+ecx*4+0x114a00]
	lea edx, [eax+edx+0x58]
	mov [ebp-0x34], edx
	mov eax, [ebp-0x1c]
	mov eax, [eax]
	mov [ebp-0x30], eax
	mov [esp+0x4], eax
	mov [esp], edx
	call R_ReverseSortDrawSurfs
	mov edx, [ebp-0x38]
	lea eax, [edx+edx*2]
	lea eax, [edx+eax*4]
	mov ecx, [ebp-0x40]
	lea esi, [ecx+eax*8]
	lea ebx, [esi+0x40]
	mov [esp], ebx
	call R_InitDrawSurfListInfo
	cmp byte [edi], 0x2
	jnz R_EmitPointLightPartitionSurfs_50
	mov eax, r_spotLightShadows
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz R_EmitPointLightPartitionSurfs_60
	mov eax, comWorld
	mov ecx, [eax+0x8]
	mov eax, ecx
	sar eax, 0x5
	mov [ebp-0x44], eax
	mov eax, frontEndDataOut
	mov edx, [eax]
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	mov ecx, [ebp-0x44]
	test [edx+ecx*4+0x118230], eax
	jnz R_EmitPointLightPartitionSurfs_70
R_EmitPointLightPartitionSurfs_60:
	mov eax, 0x15
	jmp R_EmitPointLightPartitionSurfs_80
R_EmitPointLightPartitionSurfs_70:
	mov eax, 0x17
	jmp R_EmitPointLightPartitionSurfs_80
	nop


;R_EmitShadowedLightPartitionSurfs(GfxViewInfo*, int, GfxDrawSurf const*, GfxDrawSurfListInfo*)
R_EmitShadowedLightPartitionSurfs:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x14]
	mov edi, frontEndDataOut
	mov eax, [edi]
	mov ebx, [eax+0x118254]
	mov [esp+0x8], esi
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x10]
	mov [esp], eax
	call R_EmitDrawSurfList
	mov edx, [edi]
	mov eax, [edx+0x118254]
	sub eax, ebx
	lea ebx, [edx+ebx*8+0x70000]
	mov [esi], ebx
	mov [esi+0x4], eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;void std::__adjust_heap<GfxSurface**, int, GfxSurface*, unsigned char (*)(GfxSurface*, GfxSurface*)>(GfxSurface**, int, int, GfxSurface*, unsigned char (*)(GfxSurface*, GfxSurface*))
_ZSt13__adjust_heapIPP10GfxSurfaceiS1_PFhS1_S1_EEvT_T0_S6_T1_T2_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0xc]
	lea ebx, [eax+eax+0x2]
	cmp ebx, [ebp+0x10]
	jl _ZSt13__adjust_heapIPP10GfxSurfaceiS1_PFhS1_S1_EEvT_T0_S6_T1_T2__10
	mov edx, [ebp+0x8]
	lea esi, [edx+eax*4]
	mov edi, eax
_ZSt13__adjust_heapIPP10GfxSurfaceiS1_PFhS1_S1_EEvT_T0_S6_T1_T2__70:
	cmp [ebp+0x10], ebx
	jz _ZSt13__adjust_heapIPP10GfxSurfaceiS1_PFhS1_S1_EEvT_T0_S6_T1_T2__20
_ZSt13__adjust_heapIPP10GfxSurfaceiS1_PFhS1_S1_EEvT_T0_S6_T1_T2__100:
	lea edx, [edi-0x1]
	mov eax, edx
	shr eax, 0x1f
	lea ebx, [eax+edx]
	sar ebx, 1
	cmp edi, [ebp+0xc]
	jg _ZSt13__adjust_heapIPP10GfxSurfaceiS1_PFhS1_S1_EEvT_T0_S6_T1_T2__30
_ZSt13__adjust_heapIPP10GfxSurfaceiS1_PFhS1_S1_EEvT_T0_S6_T1_T2__40:
	mov eax, [ebp+0x14]
	mov [esi], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZSt13__adjust_heapIPP10GfxSurfaceiS1_PFhS1_S1_EEvT_T0_S6_T1_T2__50:
	mov eax, [esi]
	mov edx, [ebp+0x8]
	mov [edx+edi*4], eax
	lea edx, [ebx-0x1]
	mov eax, edx
	shr eax, 0x1f
	add eax, edx
	sar eax, 1
	cmp ebx, [ebp+0xc]
	jle _ZSt13__adjust_heapIPP10GfxSurfaceiS1_PFhS1_S1_EEvT_T0_S6_T1_T2__40
	mov edi, ebx
	mov ebx, eax
_ZSt13__adjust_heapIPP10GfxSurfaceiS1_PFhS1_S1_EEvT_T0_S6_T1_T2__30:
	mov eax, [ebp+0x8]
	lea esi, [eax+ebx*4]
	mov edx, [ebp+0x14]
	mov [esp+0x4], edx
	mov eax, [esi]
	mov [esp], eax
	call dword [ebp+0x18]
	test al, al
	jnz _ZSt13__adjust_heapIPP10GfxSurfaceiS1_PFhS1_S1_EEvT_T0_S6_T1_T2__50
	mov ecx, [ebp+0x8]
	lea esi, [ecx+edi*4]
	jmp _ZSt13__adjust_heapIPP10GfxSurfaceiS1_PFhS1_S1_EEvT_T0_S6_T1_T2__40
_ZSt13__adjust_heapIPP10GfxSurfaceiS1_PFhS1_S1_EEvT_T0_S6_T1_T2__10:
	mov [ebp-0x1c], eax
	mov edi, ebx
	jmp _ZSt13__adjust_heapIPP10GfxSurfaceiS1_PFhS1_S1_EEvT_T0_S6_T1_T2__60
_ZSt13__adjust_heapIPP10GfxSurfaceiS1_PFhS1_S1_EEvT_T0_S6_T1_T2__80:
	lea edi, [ebx-0x1]
	mov ecx, [ebp+0x8]
	lea esi, [ecx+edi*4]
_ZSt13__adjust_heapIPP10GfxSurfaceiS1_PFhS1_S1_EEvT_T0_S6_T1_T2__90:
	mov eax, [esi]
	mov edx, [ebp-0x1c]
	mov [ecx+edx*4], eax
	lea ebx, [edi+edi+0x2]
	cmp [ebp+0x10], ebx
	jle _ZSt13__adjust_heapIPP10GfxSurfaceiS1_PFhS1_S1_EEvT_T0_S6_T1_T2__70
	mov [ebp-0x1c], edi
	mov edi, ebx
_ZSt13__adjust_heapIPP10GfxSurfaceiS1_PFhS1_S1_EEvT_T0_S6_T1_T2__60:
	lea eax, [ebx*4]
	mov esi, [ebp+0x8]
	add esi, eax
	mov edx, [ebp+0x8]
	mov eax, [edx+eax-0x4]
	mov [esp+0x4], eax
	mov eax, [esi]
	mov [esp], eax
	call dword [ebp+0x18]
	test al, al
	jnz _ZSt13__adjust_heapIPP10GfxSurfaceiS1_PFhS1_S1_EEvT_T0_S6_T1_T2__80
	mov ecx, [ebp+0x8]
	jmp _ZSt13__adjust_heapIPP10GfxSurfaceiS1_PFhS1_S1_EEvT_T0_S6_T1_T2__90
_ZSt13__adjust_heapIPP10GfxSurfaceiS1_PFhS1_S1_EEvT_T0_S6_T1_T2__20:
	mov edx, [ebp+0x10]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+edx*4-0x4]
	mov [esi], eax
	mov edi, edx
	sub edi, 0x1
	lea esi, [ecx+edi*4]
	jmp _ZSt13__adjust_heapIPP10GfxSurfaceiS1_PFhS1_S1_EEvT_T0_S6_T1_T2__100


;void std::__insertion_sort<GfxSurface**, unsigned char (*)(GfxSurface*, GfxSurface*)>(GfxSurface**, GfxSurface**, unsigned char (*)(GfxSurface*, GfxSurface*))
_ZSt16__insertion_sortIPP10GfxSurfacePFhS1_S1_EEvT_S5_T0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0xc]
	cmp [ebp+0x8], eax
	jz _ZSt16__insertion_sortIPP10GfxSurfacePFhS1_S1_EEvT_S5_T0__10
	mov edx, [ebp+0x8]
	add edx, 0x4
	mov [ebp-0x1c], edx
	cmp eax, edx
	jz _ZSt16__insertion_sortIPP10GfxSurfacePFhS1_S1_EEvT_S5_T0__10
_ZSt16__insertion_sortIPP10GfxSurfacePFhS1_S1_EEvT_S5_T0__50:
	mov edi, [edx]
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov [esp], edi
	call dword [ebp+0x10]
	test al, al
	jnz _ZSt16__insertion_sortIPP10GfxSurfacePFhS1_S1_EEvT_S5_T0__20
	mov ebx, [ebp-0x1c]
	sub ebx, 0x4
	mov esi, [ebp-0x1c]
	jmp _ZSt16__insertion_sortIPP10GfxSurfacePFhS1_S1_EEvT_S5_T0__30
_ZSt16__insertion_sortIPP10GfxSurfacePFhS1_S1_EEvT_S5_T0__40:
	mov eax, [ebx]
	mov [esi], eax
	mov esi, ebx
	sub ebx, 0x4
_ZSt16__insertion_sortIPP10GfxSurfacePFhS1_S1_EEvT_S5_T0__30:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], edi
	call dword [ebp+0x10]
	test al, al
	jnz _ZSt16__insertion_sortIPP10GfxSurfacePFhS1_S1_EEvT_S5_T0__40
	mov [esi], edi
	add dword [ebp-0x1c], 0x4
	mov edx, [ebp-0x1c]
_ZSt16__insertion_sortIPP10GfxSurfacePFhS1_S1_EEvT_S5_T0__60:
	cmp [ebp+0xc], edx
	jnz _ZSt16__insertion_sortIPP10GfxSurfacePFhS1_S1_EEvT_S5_T0__50
_ZSt16__insertion_sortIPP10GfxSurfacePFhS1_S1_EEvT_S5_T0__10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZSt16__insertion_sortIPP10GfxSurfacePFhS1_S1_EEvT_S5_T0__20:
	mov ebx, [ebp-0x1c]
	add ebx, 0x4
	mov eax, [ebp-0x1c]
	sub eax, [ebp+0x8]
	and eax, 0xfffffffc
	mov [esp+0x8], eax
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov edx, ebx
	sub edx, eax
	mov [esp], edx
	call memmove
	mov eax, [ebp+0x8]
	mov [eax], edi
	mov [ebp-0x1c], ebx
	mov edx, ebx
	jmp _ZSt16__insertion_sortIPP10GfxSurfacePFhS1_S1_EEvT_S5_T0__60
	nop


;void std::__introsort_loop<GfxSurface**, int, unsigned char (*)(GfxSurface*, GfxSurface*)>(GfxSurface**, GfxSurface**, int, unsigned char (*)(GfxSurface*, GfxSurface*))
_ZSt16__introsort_loopIPP10GfxSurfaceiPFhS1_S1_EEvT_S5_T0_T1_:
_ZSt16__introsort_loopIPP10GfxSurfaceiPFhS1_S1_EEvT_S5_T0_T1__130:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov eax, [ebp+0xc]
	sub eax, [ebp+0x8]
	cmp eax, 0x43
	jle _ZSt16__introsort_loopIPP10GfxSurfaceiPFhS1_S1_EEvT_S5_T0_T1__10
	mov ecx, [ebp+0x10]
	test ecx, ecx
	jnz _ZSt16__introsort_loopIPP10GfxSurfaceiPFhS1_S1_EEvT_S5_T0_T1__20
_ZSt16__introsort_loopIPP10GfxSurfaceiPFhS1_S1_EEvT_S5_T0_T1__150:
	cmp eax, 0x7
	jle _ZSt16__introsort_loopIPP10GfxSurfaceiPFhS1_S1_EEvT_S5_T0_T1__10
	sar eax, 0x2
	mov [ebp-0x24], eax
	mov edx, eax
	sub edx, 0x2
	mov eax, edx
	shr eax, 0x1f
	lea esi, [eax+edx]
	sar esi, 1
	mov edi, [ebp+0x8]
	lea ebx, [edi+esi*4]
	xor edi, edi
	jmp _ZSt16__introsort_loopIPP10GfxSurfaceiPFhS1_S1_EEvT_S5_T0_T1__30
_ZSt16__introsort_loopIPP10GfxSurfaceiPFhS1_S1_EEvT_S5_T0_T1__40:
	add edi, 0x1
_ZSt16__introsort_loopIPP10GfxSurfaceiPFhS1_S1_EEvT_S5_T0_T1__30:
	mov eax, [ebp+0x14]
	mov [esp+0x10], eax
	mov eax, [ebx]
	mov [esp+0xc], eax
	mov edx, [ebp-0x24]
	mov [esp+0x8], edx
	mov eax, esi
	sub eax, edi
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _ZSt13__adjust_heapIPP10GfxSurfaceiS1_PFhS1_S1_EEvT_T0_S6_T1_T2_
	sub ebx, 0x4
	cmp edi, esi
	jnz _ZSt16__introsort_loopIPP10GfxSurfaceiPFhS1_S1_EEvT_S5_T0_T1__40
	mov ecx, [ebp+0xc]
	mov edi, ecx
	sub edi, [ebp+0x8]
	mov [ebp-0x2c], edi
	mov esi, edi
	sub esi, 0x4
_ZSt16__introsort_loopIPP10GfxSurfaceiPFhS1_S1_EEvT_S5_T0_T1__50:
	lea ebx, [ecx-0x4]
	mov edx, [ecx-0x4]
	mov edi, [ebp+0x8]
	mov eax, [edi]
	mov [ecx-0x4], eax
	mov eax, [ebp+0x14]
	mov [esp+0x10], eax
	mov [esp+0xc], edx
	mov eax, esi
	sar eax, 0x2
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call _ZSt13__adjust_heapIPP10GfxSurfaceiS1_PFhS1_S1_EEvT_T0_S6_T1_T2_
	mov ecx, ebx
	sub esi, 0x4
	mov eax, edi
	sub eax, [ebp+0xc]
	add eax, [ebp-0x2c]
	lea eax, [eax+esi+0x4]
	cmp eax, 0x7
	jg _ZSt16__introsort_loopIPP10GfxSurfaceiPFhS1_S1_EEvT_S5_T0_T1__50
_ZSt16__introsort_loopIPP10GfxSurfaceiPFhS1_S1_EEvT_S5_T0_T1__10:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZSt16__introsort_loopIPP10GfxSurfaceiPFhS1_S1_EEvT_S5_T0_T1__20:
	mov edx, [ebp+0x10]
	mov [ebp-0x1c], edx
	mov dword [ebp-0x20], 0x0
	mov esi, [ebp+0xc]
_ZSt16__introsort_loopIPP10GfxSurfaceiPFhS1_S1_EEvT_S5_T0_T1__140:
	sub dword [ebp-0x1c], 0x1
	mov edx, eax
	sar edx, 0x2
	mov eax, edx
	shr eax, 0x1f
	add eax, edx
	sar eax, 1
	mov edi, [ebp+0x8]
	lea ebx, [edi+eax*4]
	sub esi, 0x4
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov eax, [edi]
	mov [esp], eax
	call dword [ebp+0x14]
	test al, al
	jz _ZSt16__introsort_loopIPP10GfxSurfaceiPFhS1_S1_EEvT_S5_T0_T1__60
	mov edx, [ebp+0xc]
	mov eax, [edx-0x4]
	mov [esp+0x4], eax
	mov eax, [ebx]
	mov [esp], eax
	call dword [ebp+0x14]
	test al, al
	jz _ZSt16__introsort_loopIPP10GfxSurfaceiPFhS1_S1_EEvT_S5_T0_T1__70
_ZSt16__introsort_loopIPP10GfxSurfaceiPFhS1_S1_EEvT_S5_T0_T1__170:
	mov esi, ebx
_ZSt16__introsort_loopIPP10GfxSurfaceiPFhS1_S1_EEvT_S5_T0_T1__120:
	mov edi, [esi]
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
_ZSt16__introsort_loopIPP10GfxSurfaceiPFhS1_S1_EEvT_S5_T0_T1__110:
	mov [esp+0x4], edi
	mov eax, [esi]
	mov [esp], eax
	call dword [ebp+0x14]
	test al, al
	jnz _ZSt16__introsort_loopIPP10GfxSurfaceiPFhS1_S1_EEvT_S5_T0_T1__80
_ZSt16__introsort_loopIPP10GfxSurfaceiPFhS1_S1_EEvT_S5_T0_T1__90:
	sub ebx, 0x4
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], edi
	call dword [ebp+0x14]
	test al, al
	jnz _ZSt16__introsort_loopIPP10GfxSurfaceiPFhS1_S1_EEvT_S5_T0_T1__90
	cmp esi, ebx
	jae _ZSt16__introsort_loopIPP10GfxSurfaceiPFhS1_S1_EEvT_S5_T0_T1__100
	mov edx, [esi]
	mov eax, [ebx]
	mov [esi], eax
	mov [ebx], edx
	add esi, 0x4
	mov [esp+0x4], edi
	mov eax, [esi]
	mov [esp], eax
	call dword [ebp+0x14]
	test al, al
	jz _ZSt16__introsort_loopIPP10GfxSurfaceiPFhS1_S1_EEvT_S5_T0_T1__90
_ZSt16__introsort_loopIPP10GfxSurfaceiPFhS1_S1_EEvT_S5_T0_T1__80:
	add esi, 0x4
	jmp _ZSt16__introsort_loopIPP10GfxSurfaceiPFhS1_S1_EEvT_S5_T0_T1__110
_ZSt16__introsort_loopIPP10GfxSurfaceiPFhS1_S1_EEvT_S5_T0_T1__70:
	mov edi, [ebp+0xc]
	mov eax, [edi-0x4]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp], eax
	call dword [ebp+0x14]
	test al, al
	jnz _ZSt16__introsort_loopIPP10GfxSurfaceiPFhS1_S1_EEvT_S5_T0_T1__120
_ZSt16__introsort_loopIPP10GfxSurfaceiPFhS1_S1_EEvT_S5_T0_T1__160:
	mov esi, [ebp+0x8]
	jmp _ZSt16__introsort_loopIPP10GfxSurfaceiPFhS1_S1_EEvT_S5_T0_T1__120
_ZSt16__introsort_loopIPP10GfxSurfaceiPFhS1_S1_EEvT_S5_T0_T1__100:
	mov edi, [ebp+0x14]
	mov [esp+0xc], edi
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], esi
	call _ZSt16__introsort_loopIPP10GfxSurfaceiPFhS1_S1_EEvT_S5_T0_T1__130
	mov eax, esi
	sub eax, [ebp+0x8]
	cmp eax, 0x43
	jle _ZSt16__introsort_loopIPP10GfxSurfaceiPFhS1_S1_EEvT_S5_T0_T1__10
	add dword [ebp-0x20], 0x1
	mov [ebp+0xc], esi
	mov edx, [ebp-0x20]
	cmp [ebp+0x10], edx
	jnz _ZSt16__introsort_loopIPP10GfxSurfaceiPFhS1_S1_EEvT_S5_T0_T1__140
	jmp _ZSt16__introsort_loopIPP10GfxSurfaceiPFhS1_S1_EEvT_S5_T0_T1__150
_ZSt16__introsort_loopIPP10GfxSurfaceiPFhS1_S1_EEvT_S5_T0_T1__60:
	mov edi, [ebp+0xc]
	mov eax, [edi-0x4]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp], eax
	call dword [ebp+0x14]
	test al, al
	jnz _ZSt16__introsort_loopIPP10GfxSurfaceiPFhS1_S1_EEvT_S5_T0_T1__160
	mov eax, [edi-0x4]
	mov [esp+0x4], eax
	mov eax, [ebx]
	mov [esp], eax
	call dword [ebp+0x14]
	test al, al
	jnz _ZSt16__introsort_loopIPP10GfxSurfaceiPFhS1_S1_EEvT_S5_T0_T1__120
	jmp _ZSt16__introsort_loopIPP10GfxSurfaceiPFhS1_S1_EEvT_S5_T0_T1__170


;Initialized global or static variables of r_light:
SECTION .data
_ZZ22R_GetBspOmniLightSurfsPK8GfxLightiP18GfxBspDrawSurfDataE9allowSurf: dd R_AllowBspOmniLight
_ZZ22R_GetBspSpotLightSurfsPK8GfxLightiP18GfxBspDrawSurfDataE9allowSurf: dd R_AllowBspSpotLight, R_AllowBspSpotLightShadows, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of r_light:
SECTION .rdata


;Zero initialized global or static variables of r_light:
SECTION .bss
g_staticModelLightCallback: resb 0x80
lightGlob: resb 0x180


;All cstrings:
SECTION .rdata
_cstring_loaded_light_def:		db "Loaded light defs:",0ah,0
_cstring_cant_load_light_:		db "Can",27h,"t load light def %s; %i unique light defs already loaded",0
_cstring_light_dynamic:		db "light_dynamic",0
_cstring___s:		db "  %s",0ah,0
_cstring_cant_load_the_de:		db "Can",27h,"t load the default light def ",27h,"%s",27h,0



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; OWORD

