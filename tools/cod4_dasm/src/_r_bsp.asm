;Imports of r_bsp:
	extern R_LoadWorldInternal
	extern rgp
	extern DB_FindXAssetHeader
	extern memcpy
	extern r_lightTweakSunLight
	extern r_lightTweakDiffuseFraction
	extern Cvar_SetFloat
	extern r_lightTweakSunColor
	extern ColorNormalize
	extern r_lightTweakSunDirection
	extern Cvar_ClearModified
	extern R_InitLightVisHistory
	extern useFastFile
	extern r_lightTweakAmbient
	extern r_lightTweakAmbientColor
	extern Cvar_SetColor
	extern r_lightTweakSunDiffuseColor
	extern Cvar_SetVec3
	extern Cvar_ChangeResetValue
	extern R_InterpretSunLightParseParamsIntoLights
	extern R_FlushSun
	extern R_ResetShadowCookies
	extern R_InitStaticModelLighting
	extern R_ResetModelLighting
	extern RB_SetBspImages
	extern DynEntCl_InitFilter
	extern R_GenerateShadowMapCasterCells
	extern R_CreateWorldVertexBuffer
	extern R_FlushStaticModelCache
	extern R_FreeStaticVertexBuffer
	extern sm_enable
	extern sm_sunSampleSizeNear
	extern Cvar_SetBool
	extern R_GenerateReflections

;Exports of r_bsp:
	global R_SetWorldPtr_LoadObj
	global R_SetWorldPtr_FastFile
	global R_CopyParseParamsFromDvars
	global R_LoadWorld
	global R_ReloadWorld
	global R_ReleaseWorld
	global R_ShutdownWorld
	global R_UpdateLightsFromDvars
	global R_BspGenerateReflections
	global s_world


SECTION .text


;R_SetWorldPtr_LoadObj(char const*)
R_SetWorldPtr_LoadObj:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call R_LoadWorldInternal
	mov edx, rgp
	mov [edx+0x20a0], eax
	leave
	ret
	nop


;R_SetWorldPtr_FastFile(char const*)
R_SetWorldPtr_FastFile:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x10
	call DB_FindXAssetHeader
	mov edx, rgp
	mov [edx+0x20a0], eax
	mov dword [edx+0x2000], 0x1
	leave
	ret
	nop


;R_CopyParseParamsFromDvars(SunLightParseParams*)
R_CopyParseParamsFromDvars:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, eax
	mov eax, rgp
	mov eax, [eax+0x20a0]
	add eax, 0x48
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], eax
	mov [esp], esi
	call memcpy
	movss xmm2, dword [esi+0x40]
	movss xmm0, dword [esi+0x54]
	subss xmm0, xmm2
	mulss xmm0, [esi+0x50]
	addss xmm0, xmm2
	mov ebx, r_lightTweakSunLight
	mov eax, [ebx]
	movss xmm1, dword [eax+0xc]
	movss [esi+0x54], xmm1
	ucomiss xmm0, xmm1
	jae R_CopyParseParamsFromDvars_10
	subss xmm0, xmm2
	subss xmm1, xmm2
	divss xmm0, xmm1
	movss [esi+0x50], xmm0
R_CopyParseParamsFromDvars_30:
	mov eax, [esi+0x50]
	mov [esp+0x4], eax
	mov eax, r_lightTweakDiffuseFraction
	mov eax, [eax]
	mov [esp], eax
	call Cvar_SetFloat
	lea ebx, [esi+0x58]
	mov eax, r_lightTweakSunColor
	mov edx, [eax]
	mov ecx, 0x1
R_CopyParseParamsFromDvars_20:
	movzx eax, byte [edx+0xc]
	cvtsi2ss xmm0, eax
	movss [ebx+ecx*4-0x4], xmm0
	add ecx, 0x1
	add edx, 0x1
	cmp ecx, 0x4
	jnz R_CopyParseParamsFromDvars_20
	mov [esp+0x4], ebx
	mov [esp], ebx
	call ColorNormalize
	fstp st0
	mov byte [esi+0x70], 0x1
	lea ecx, [esi+0x74]
	mov eax, r_lightTweakSunDirection
	mov eax, [eax]
	lea edx, [eax+0xc]
	mov eax, [eax+0xc]
	mov [esi+0x74], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
R_CopyParseParamsFromDvars_10:
	movss [esi+0x54], xmm0
	mov dword [esi+0x50], 0x3f800000
	movss [esp+0x4], xmm0
	mov eax, [ebx]
	mov [esp], eax
	call Cvar_SetFloat
	mov eax, [ebx]
	mov [esp], eax
	call Cvar_ClearModified
	jmp R_CopyParseParamsFromDvars_30


;R_LoadWorld(char const*, int*, int)
R_LoadWorld:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x12c
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov [esp], ebx
	call R_InitLightVisHistory
	mov eax, useFastFile
	mov eax, [eax]
	mov edx, R_SetWorldPtr_FastFile
	cmp byte [eax+0xc], 0x0
	mov eax, R_SetWorldPtr_LoadObj
	cmovz edx, eax
	mov [esp], ebx
	call edx
	test esi, esi
	jz R_LoadWorld_10
	mov edx, rgp
	mov eax, [edx+0x20a0]
	mov eax, [eax+0x170]
	mov [esi], eax
	mov ecx, edx
R_LoadWorld_90:
	mov ebx, [ecx+0x20a0]
	add ebx, 0x48
	mov edx, r_lightTweakSunDirection
	mov eax, [edx]
	lea edx, [eax+0xc]
	movss xmm0, dword [eax+0xc]
	movss [ebp-0x10c], xmm0
	movss xmm0, dword [edx+0x4]
	movss [ebp-0x110], xmm0
	movss xmm0, dword [edx+0x8]
	movss [ebp-0x114], xmm0
	mov eax, [ebx+0x40]
	mov [esp+0x4], eax
	mov edi, r_lightTweakAmbient
	mov eax, [edi]
	mov [esp], eax
	call Cvar_SetFloat
	mov eax, [ebx+0x50]
	mov [esp+0x4], eax
	mov edx, r_lightTweakDiffuseFraction
	mov eax, [edx]
	mov [esp], eax
	call Cvar_SetFloat
	mov eax, [ebx+0x54]
	mov [esp+0x4], eax
	mov ecx, r_lightTweakSunLight
	mov eax, [ecx]
	mov [esp], eax
	call Cvar_SetFloat
	mov esi, 0x3f800000
	mov [esp+0x10], esi
	mov eax, [ebx+0x4c]
	mov [esp+0xc], eax
	mov eax, [ebx+0x48]
	mov [esp+0x8], eax
	mov eax, [ebx+0x44]
	mov [esp+0x4], eax
	mov edx, r_lightTweakAmbientColor
	mov eax, [edx]
	mov [esp], eax
	call Cvar_SetColor
	mov [esp+0x10], esi
	mov eax, [ebx+0x60]
	mov [esp+0xc], eax
	mov eax, [ebx+0x5c]
	mov [esp+0x8], eax
	mov eax, [ebx+0x58]
	mov [esp+0x4], eax
	mov ecx, r_lightTweakSunColor
	mov eax, [ecx]
	mov [esp], eax
	call Cvar_SetColor
	mov [esp+0x10], esi
	mov eax, [ebx+0x6c]
	mov [esp+0xc], eax
	mov eax, [ebx+0x68]
	mov [esp+0x8], eax
	mov eax, [ebx+0x64]
	mov [esp+0x4], eax
	mov edx, r_lightTweakSunDiffuseColor
	mov eax, [edx]
	mov [esp], eax
	call Cvar_SetColor
	mov eax, [ebx+0x7c]
	mov [esp+0xc], eax
	mov eax, [ebx+0x78]
	mov [esp+0x8], eax
	mov eax, [ebx+0x74]
	mov [esp+0x4], eax
	mov ecx, r_lightTweakSunDirection
	mov eax, [ecx]
	mov [esp], eax
	call Cvar_SetVec3
	mov eax, [edi]
	mov esi, [eax+0xc]
	mov [ebp-0x88], esi
	mov ebx, [eax+0x10]
	mov [ebp-0x84], ebx
	mov ecx, [eax+0x14]
	mov [ebp-0x80], ecx
	mov edx, [eax+0x18]
	mov [ebp-0x7c], edx
	mov [esp+0x4], esi
	mov [esp+0x8], ebx
	mov [esp+0xc], ecx
	mov [esp+0x10], edx
	mov [esp], eax
	call Cvar_ChangeResetValue
	mov edx, r_lightTweakDiffuseFraction
	mov eax, [edx]
	mov esi, [eax+0xc]
	mov [ebp-0x78], esi
	mov ebx, [eax+0x10]
	mov [ebp-0x74], ebx
	mov ecx, [eax+0x14]
	mov [ebp-0x70], ecx
	mov edx, [eax+0x18]
	mov [ebp-0x6c], edx
	mov [esp+0x4], esi
	mov [esp+0x8], ebx
	mov [esp+0xc], ecx
	mov [esp+0x10], edx
	mov [esp], eax
	call Cvar_ChangeResetValue
	mov ecx, r_lightTweakSunLight
	mov eax, [ecx]
	mov esi, [eax+0xc]
	mov [ebp-0x68], esi
	mov ebx, [eax+0x10]
	mov [ebp-0x64], ebx
	mov ecx, [eax+0x14]
	mov [ebp-0x60], ecx
	mov edx, [eax+0x18]
	mov [ebp-0x5c], edx
	mov [esp+0x4], esi
	mov [esp+0x8], ebx
	mov [esp+0xc], ecx
	mov [esp+0x10], edx
	mov [esp], eax
	call Cvar_ChangeResetValue
	mov edx, r_lightTweakAmbientColor
	mov eax, [edx]
	mov esi, [eax+0xc]
	mov [ebp-0x58], esi
	mov ebx, [eax+0x10]
	mov [ebp-0x54], ebx
	mov ecx, [eax+0x14]
	mov [ebp-0x50], ecx
	mov edx, [eax+0x18]
	mov [ebp-0x4c], edx
	mov [esp+0x4], esi
	mov [esp+0x8], ebx
	mov [esp+0xc], ecx
	mov [esp+0x10], edx
	mov [esp], eax
	call Cvar_ChangeResetValue
	mov ecx, r_lightTweakSunColor
	mov eax, [ecx]
	mov esi, [eax+0xc]
	mov [ebp-0x48], esi
	mov ebx, [eax+0x10]
	mov [ebp-0x44], ebx
	mov ecx, [eax+0x14]
	mov [ebp-0x40], ecx
	mov edx, [eax+0x18]
	mov [ebp-0x3c], edx
	mov [esp+0x4], esi
	mov [esp+0x8], ebx
	mov [esp+0xc], ecx
	mov [esp+0x10], edx
	mov [esp], eax
	call Cvar_ChangeResetValue
	mov edx, r_lightTweakSunDiffuseColor
	mov eax, [edx]
	mov esi, [eax+0xc]
	mov [ebp-0x38], esi
	mov ebx, [eax+0x10]
	mov [ebp-0x34], ebx
	mov ecx, [eax+0x14]
	mov [ebp-0x30], ecx
	mov edx, [eax+0x18]
	mov [ebp-0x2c], edx
	mov [esp+0x4], esi
	mov [esp+0x8], ebx
	mov [esp+0xc], ecx
	mov [esp+0x10], edx
	mov [esp], eax
	call Cvar_ChangeResetValue
	mov ecx, r_lightTweakSunDirection
	mov eax, [ecx]
	mov esi, [eax+0xc]
	mov [ebp-0x28], esi
	mov ebx, [eax+0x10]
	mov [ebp-0x24], ebx
	mov ecx, [eax+0x14]
	mov [ebp-0x20], ecx
	mov edx, [eax+0x18]
	mov [ebp-0x1c], edx
	mov [esp+0x4], esi
	mov [esp+0x8], ebx
	mov [esp+0xc], ecx
	mov [esp+0x10], edx
	mov [esp], eax
	call Cvar_ChangeResetValue
	mov edi, [ebp+0x10]
	test edi, edi
	jnz R_LoadWorld_20
R_LoadWorld_80:
	lea ebx, [ebp-0x108]
	mov eax, ebx
	call R_CopyParseParamsFromDvars
	mov ecx, rgp
	mov eax, [ecx+0x20a0]
	mov eax, [eax+0xc8]
	mov [esp+0x4], eax
	mov [esp], ebx
	call R_InterpretSunLightParseParamsIntoLights
	mov eax, rgp
	mov edx, [eax+0x20a0]
	lea ebx, [edx+0xcc]
	mov eax, [edx+0xc8]
	lea ecx, [eax+0x4]
	mov eax, [eax+0x4]
	mov [edx+0xcc], eax
	mov eax, [ecx+0x4]
	mov [ebx+0x4], eax
	mov eax, [ecx+0x8]
	mov [ebx+0x8], eax
	call R_FlushSun
	call R_ResetShadowCookies
	mov edx, rgp
	mov eax, [edx+0x20a0]
	mov eax, [eax+0x244]
	mov [esp], eax
	call R_InitStaticModelLighting
	call R_ResetModelLighting
	call RB_SetBspImages
	call DynEntCl_InitFilter
	call R_GenerateShadowMapCasterCells
	mov ecx, rgp
	mov eax, [ecx+0x20a0]
	mov esi, [eax+0xe4]
	test esi, esi
	jz R_LoadWorld_30
	xor ebx, ebx
R_LoadWorld_40:
	mov ecx, [eax+0xec]
	mov edx, [eax+0xe8]
	mov eax, ebx
	shl eax, 0x4
	mov eax, [eax+edx+0xc]
	mov eax, [eax+0x4]
	mov [ecx+ebx*4], eax
	add ebx, 0x1
	mov edx, rgp
	mov eax, [edx+0x20a0]
	cmp [eax+0xe4], ebx
	ja R_LoadWorld_40
	mov ecx, edx
R_LoadWorld_70:
	mov eax, [ecx+0x20a0]
	mov ebx, [eax+0x108]
	test ebx, ebx
	jle R_LoadWorld_50
	xor esi, esi
R_LoadWorld_60:
	lea edx, [esi*4]
	mov ecx, edx
	add ecx, [eax+0x148]
	lea ebx, [esi*8]
	mov eax, [eax+0x10c]
	mov eax, [eax+ebx]
	mov eax, [eax+0x4]
	mov [ecx], eax
	mov ecx, rgp
	mov eax, [ecx+0x20a0]
	add edx, [eax+0x14c]
	mov eax, [eax+0x10c]
	mov eax, [eax+ebx+0x4]
	mov eax, [eax+0x4]
	mov [edx], eax
	add esi, 0x1
	mov eax, [ecx+0x20a0]
	cmp [eax+0x108], esi
	jg R_LoadWorld_60
R_LoadWorld_50:
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_LoadWorld_30:
	mov ecx, rgp
	jmp R_LoadWorld_70
R_LoadWorld_20:
	movss xmm0, dword [ebp-0x114]
	movss [esp+0xc], xmm0
	movss xmm0, dword [ebp-0x110]
	movss [esp+0x8], xmm0
	movss xmm0, dword [ebp-0x10c]
	movss [esp+0x4], xmm0
	mov edx, r_lightTweakSunDirection
	mov eax, [edx]
	mov [esp], eax
	call Cvar_SetVec3
	jmp R_LoadWorld_80
R_LoadWorld_10:
	mov ecx, rgp
	jmp R_LoadWorld_90


;R_ReloadWorld()
R_ReloadWorld:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [s_world+0x30]
	test edx, edx
	jnz R_ReloadWorld_10
R_ReloadWorld_30:
	mov eax, [s_world+0x3c]
	test eax, eax
	jnz R_ReloadWorld_20
	leave
	ret
R_ReloadWorld_20:
	mov [esp+0x8], eax
	mov eax, [s_world+0x40]
	mov [esp+0x4], eax
	mov dword [esp], s_world+0x44
	call R_CreateWorldVertexBuffer
	leave
	ret
R_ReloadWorld_10:
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*2]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov eax, [s_world+0x34]
	mov [esp+0x4], eax
	mov dword [esp], s_world+0x38
	call R_CreateWorldVertexBuffer
	jmp R_ReloadWorld_30


;R_ReleaseWorld()
R_ReleaseWorld:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, rgp
	mov ecx, [eax+0x20a0]
	test ecx, ecx
	jz R_ReleaseWorld_10
	call R_ResetModelLighting
	call R_FlushStaticModelCache
R_ReleaseWorld_10:
	mov edx, [s_world+0x30]
	test edx, edx
	jnz R_ReleaseWorld_20
R_ReleaseWorld_40:
	mov eax, [s_world+0x3c]
	test eax, eax
	jnz R_ReleaseWorld_30
	leave
	ret
R_ReleaseWorld_30:
	mov eax, [s_world+0x44]
	mov [esp], eax
	call R_FreeStaticVertexBuffer
	mov dword [s_world+0x44], 0x0
	leave
	ret
R_ReleaseWorld_20:
	mov eax, [s_world+0x38]
	mov [esp], eax
	call R_FreeStaticVertexBuffer
	mov dword [s_world+0x38], 0x0
	jmp R_ReleaseWorld_40


;R_ShutdownWorld()
R_ShutdownWorld:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, rgp
	mov eax, [ebx+0x20a0]
	test eax, eax
	jz R_ShutdownWorld_10
	call R_ResetModelLighting
	call R_FlushStaticModelCache
R_ShutdownWorld_10:
	mov eax, [s_world+0x30]
	test eax, eax
	jnz R_ShutdownWorld_20
R_ShutdownWorld_40:
	mov eax, [s_world+0x3c]
	test eax, eax
	jz R_ShutdownWorld_30
	mov eax, [s_world+0x44]
	mov [esp], eax
	call R_FreeStaticVertexBuffer
	mov dword [s_world+0x44], 0x0
R_ShutdownWorld_30:
	mov dword [ebx+0x20a0], 0x0
	mov dword [s_world+0x30], 0x0
	mov dword [s_world+0x3c], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
R_ShutdownWorld_20:
	mov eax, [s_world+0x38]
	mov [esp], eax
	call R_FreeStaticVertexBuffer
	mov dword [s_world+0x38], 0x0
	jmp R_ShutdownWorld_40


;R_UpdateLightsFromDvars()
R_UpdateLightsFromDvars:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x90
	mov eax, sm_enable
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz R_UpdateLightsFromDvars_10
	mov eax, r_lightTweakSunDirection
	mov eax, [eax]
	lea ecx, [eax+0x2c]
	lea edx, [eax+0xc]
	movss xmm0, dword [eax+0xc]
	ucomiss xmm0, [eax+0x2c]
	jz R_UpdateLightsFromDvars_20
R_UpdateLightsFromDvars_30:
	mov dword [esp+0x4], 0x3f800000
	mov eax, sm_sunSampleSizeNear
	mov eax, [eax]
	mov [esp], eax
	call Cvar_SetFloat
	mov dword [esp+0x4], 0x1
	mov eax, sm_enable
	mov eax, [eax]
	mov [esp], eax
	call Cvar_SetBool
R_UpdateLightsFromDvars_10:
	lea esi, [ebp-0x88]
	mov eax, esi
	call R_CopyParseParamsFromDvars
	mov ebx, rgp
	mov eax, [ebx+0x20a0]
	mov eax, [eax+0xc8]
	mov [esp+0x4], eax
	mov [esp], esi
	call R_InterpretSunLightParseParamsIntoLights
	mov edx, [ebx+0x20a0]
	lea ebx, [edx+0xcc]
	mov eax, [edx+0xc8]
	lea ecx, [eax+0x4]
	mov eax, [eax+0x4]
	mov [edx+0xcc], eax
	mov eax, [ecx+0x4]
	mov [ebx+0x4], eax
	mov eax, [ecx+0x8]
	mov [ebx+0x8], eax
	add esp, 0x90
	pop ebx
	pop esi
	pop ebp
	ret
R_UpdateLightsFromDvars_20:
	jp R_UpdateLightsFromDvars_30
	movss xmm0, dword [edx+0x4]
	ucomiss xmm0, [ecx+0x4]
	jnz R_UpdateLightsFromDvars_30
	jp R_UpdateLightsFromDvars_30
	movss xmm0, dword [edx+0x8]
	ucomiss xmm0, [ecx+0x8]
	jnz R_UpdateLightsFromDvars_30
	jnp R_UpdateLightsFromDvars_10
	jmp R_UpdateLightsFromDvars_30
	add [eax], al


;R_BspGenerateReflections()
R_BspGenerateReflections:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, rgp
	mov edx, [eax+0x20a0]
	mov eax, [edx+0xe4]
	sub eax, 0x1
	mov [esp+0x8], eax
	mov eax, [edx+0xe8]
	add eax, 0x10
	mov [esp+0x4], eax
	mov eax, [edx]
	mov [esp], eax
	call R_GenerateReflections
	leave
	ret
	nop
	add [eax], al


;Initialized global or static variables of r_bsp:
SECTION .data


;Initialized constant data of r_bsp:
SECTION .rdata


;Zero initialized global or static variables of r_bsp:
SECTION .bss
s_world: resb 0x300


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

