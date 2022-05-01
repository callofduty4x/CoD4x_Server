;Imports of r_bsp:
	extern _Z19R_LoadWorldInternalPKc
	extern rgp
	extern _Z19DB_FindXAssetHeader10XAssetTypePKc
	extern memcpy
	extern r_lightTweakSunLight
	extern r_lightTweakDiffuseFraction
	extern _Z13Dvar_SetFloatPK6dvar_sf
	extern r_lightTweakSunColor
	extern _Z14ColorNormalizePKfPf
	extern r_lightTweakSunDirection
	extern _Z18Dvar_ClearModifiedPK6dvar_s
	extern _Z21R_InitLightVisHistoryPKc
	extern useFastFile
	extern r_lightTweakAmbient
	extern r_lightTweakAmbientColor
	extern _Z13Dvar_SetColorPK6dvar_sffff
	extern r_lightTweakSunDiffuseColor
	extern _Z12Dvar_SetVec3PK6dvar_sfff
	extern _Z21Dvar_ChangeResetValuePK6dvar_s9DvarValue
	extern _Z40R_InterpretSunLightParseParamsIntoLightsP19SunLightParseParamsP8GfxLight
	extern _Z10R_FlushSunv
	extern _Z20R_ResetShadowCookiesv
	extern _Z25R_InitStaticModelLightingj
	extern _Z20R_ResetModelLightingv
	extern _Z15RB_SetBspImagesv
	extern _Z19DynEntCl_InitFilterv
	extern _Z30R_GenerateShadowMapCasterCellsv
	extern _Z25R_CreateWorldVertexBufferPP22IDirect3DVertexBuffer9PKvj
	extern _Z23R_FlushStaticModelCachev
	extern _Z24R_FreeStaticVertexBufferP22IDirect3DVertexBuffer9
	extern sm_enable
	extern sm_sunSampleSizeNear
	extern _Z12Dvar_SetBoolPK6dvar_sh
	extern _Z21R_GenerateReflectionsPKcP18GfxReflectionProbej

;Exports of r_bsp:
	global _Z21R_SetWorldPtr_LoadObjPKc
	global _Z22R_SetWorldPtr_FastFilePKc
	global _Z26R_CopyParseParamsFromDvarsP19SunLightParseParams
	global _Z11R_LoadWorldPKcPii
	global _Z13R_ReloadWorldv
	global _Z14R_ReleaseWorldv
	global _Z15R_ShutdownWorldv
	global _Z23R_UpdateLightsFromDvarsv
	global _Z24R_BspGenerateReflectionsv
	global s_world


SECTION .text


;R_SetWorldPtr_LoadObj(char const*)
_Z21R_SetWorldPtr_LoadObjPKc:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z19R_LoadWorldInternalPKc
	mov edx, rgp
	mov [edx+0x20a0], eax
	leave
	ret
	nop


;R_SetWorldPtr_FastFile(char const*)
_Z22R_SetWorldPtr_FastFilePKc:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x10
	call _Z19DB_FindXAssetHeader10XAssetTypePKc
	mov edx, rgp
	mov [edx+0x20a0], eax
	mov dword [edx+0x2000], 0x1
	leave
	ret
	nop


;R_CopyParseParamsFromDvars(SunLightParseParams*)
_Z26R_CopyParseParamsFromDvarsP19SunLightParseParams:
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
	jae _Z26R_CopyParseParamsFromDvarsP19SunLightParseParams_10
	subss xmm0, xmm2
	subss xmm1, xmm2
	divss xmm0, xmm1
	movss [esi+0x50], xmm0
_Z26R_CopyParseParamsFromDvarsP19SunLightParseParams_30:
	mov eax, [esi+0x50]
	mov [esp+0x4], eax
	mov eax, r_lightTweakDiffuseFraction
	mov eax, [eax]
	mov [esp], eax
	call _Z13Dvar_SetFloatPK6dvar_sf
	lea ebx, [esi+0x58]
	mov eax, r_lightTweakSunColor
	mov edx, [eax]
	mov ecx, 0x1
_Z26R_CopyParseParamsFromDvarsP19SunLightParseParams_20:
	movzx eax, byte [edx+0xc]
	cvtsi2ss xmm0, eax
	movss [ebx+ecx*4-0x4], xmm0
	add ecx, 0x1
	add edx, 0x1
	cmp ecx, 0x4
	jnz _Z26R_CopyParseParamsFromDvarsP19SunLightParseParams_20
	mov [esp+0x4], ebx
	mov [esp], ebx
	call _Z14ColorNormalizePKfPf
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
_Z26R_CopyParseParamsFromDvarsP19SunLightParseParams_10:
	movss [esi+0x54], xmm0
	mov dword [esi+0x50], 0x3f800000
	movss [esp+0x4], xmm0
	mov eax, [ebx]
	mov [esp], eax
	call _Z13Dvar_SetFloatPK6dvar_sf
	mov eax, [ebx]
	mov [esp], eax
	call _Z18Dvar_ClearModifiedPK6dvar_s
	jmp _Z26R_CopyParseParamsFromDvarsP19SunLightParseParams_30


;R_LoadWorld(char const*, int*, int)
_Z11R_LoadWorldPKcPii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x12c
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov [esp], ebx
	call _Z21R_InitLightVisHistoryPKc
	mov eax, useFastFile
	mov eax, [eax]
	mov edx, _Z22R_SetWorldPtr_FastFilePKc
	cmp byte [eax+0xc], 0x0
	mov eax, _Z21R_SetWorldPtr_LoadObjPKc
	cmovz edx, eax
	mov [esp], ebx
	call edx
	test esi, esi
	jz _Z11R_LoadWorldPKcPii_10
	mov edx, rgp
	mov eax, [edx+0x20a0]
	mov eax, [eax+0x170]
	mov [esi], eax
	mov ecx, edx
_Z11R_LoadWorldPKcPii_90:
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
	call _Z13Dvar_SetFloatPK6dvar_sf
	mov eax, [ebx+0x50]
	mov [esp+0x4], eax
	mov edx, r_lightTweakDiffuseFraction
	mov eax, [edx]
	mov [esp], eax
	call _Z13Dvar_SetFloatPK6dvar_sf
	mov eax, [ebx+0x54]
	mov [esp+0x4], eax
	mov ecx, r_lightTweakSunLight
	mov eax, [ecx]
	mov [esp], eax
	call _Z13Dvar_SetFloatPK6dvar_sf
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
	call _Z13Dvar_SetColorPK6dvar_sffff
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
	call _Z13Dvar_SetColorPK6dvar_sffff
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
	call _Z13Dvar_SetColorPK6dvar_sffff
	mov eax, [ebx+0x7c]
	mov [esp+0xc], eax
	mov eax, [ebx+0x78]
	mov [esp+0x8], eax
	mov eax, [ebx+0x74]
	mov [esp+0x4], eax
	mov ecx, r_lightTweakSunDirection
	mov eax, [ecx]
	mov [esp], eax
	call _Z12Dvar_SetVec3PK6dvar_sfff
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
	call _Z21Dvar_ChangeResetValuePK6dvar_s9DvarValue
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
	call _Z21Dvar_ChangeResetValuePK6dvar_s9DvarValue
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
	call _Z21Dvar_ChangeResetValuePK6dvar_s9DvarValue
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
	call _Z21Dvar_ChangeResetValuePK6dvar_s9DvarValue
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
	call _Z21Dvar_ChangeResetValuePK6dvar_s9DvarValue
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
	call _Z21Dvar_ChangeResetValuePK6dvar_s9DvarValue
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
	call _Z21Dvar_ChangeResetValuePK6dvar_s9DvarValue
	mov edi, [ebp+0x10]
	test edi, edi
	jnz _Z11R_LoadWorldPKcPii_20
_Z11R_LoadWorldPKcPii_80:
	lea ebx, [ebp-0x108]
	mov eax, ebx
	call _Z26R_CopyParseParamsFromDvarsP19SunLightParseParams
	mov ecx, rgp
	mov eax, [ecx+0x20a0]
	mov eax, [eax+0xc8]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z40R_InterpretSunLightParseParamsIntoLightsP19SunLightParseParamsP8GfxLight
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
	call _Z10R_FlushSunv
	call _Z20R_ResetShadowCookiesv
	mov edx, rgp
	mov eax, [edx+0x20a0]
	mov eax, [eax+0x244]
	mov [esp], eax
	call _Z25R_InitStaticModelLightingj
	call _Z20R_ResetModelLightingv
	call _Z15RB_SetBspImagesv
	call _Z19DynEntCl_InitFilterv
	call _Z30R_GenerateShadowMapCasterCellsv
	mov ecx, rgp
	mov eax, [ecx+0x20a0]
	mov esi, [eax+0xe4]
	test esi, esi
	jz _Z11R_LoadWorldPKcPii_30
	xor ebx, ebx
_Z11R_LoadWorldPKcPii_40:
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
	ja _Z11R_LoadWorldPKcPii_40
	mov ecx, edx
_Z11R_LoadWorldPKcPii_70:
	mov eax, [ecx+0x20a0]
	mov ebx, [eax+0x108]
	test ebx, ebx
	jle _Z11R_LoadWorldPKcPii_50
	xor esi, esi
_Z11R_LoadWorldPKcPii_60:
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
	jg _Z11R_LoadWorldPKcPii_60
_Z11R_LoadWorldPKcPii_50:
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11R_LoadWorldPKcPii_30:
	mov ecx, rgp
	jmp _Z11R_LoadWorldPKcPii_70
_Z11R_LoadWorldPKcPii_20:
	movss xmm0, dword [ebp-0x114]
	movss [esp+0xc], xmm0
	movss xmm0, dword [ebp-0x110]
	movss [esp+0x8], xmm0
	movss xmm0, dword [ebp-0x10c]
	movss [esp+0x4], xmm0
	mov edx, r_lightTweakSunDirection
	mov eax, [edx]
	mov [esp], eax
	call _Z12Dvar_SetVec3PK6dvar_sfff
	jmp _Z11R_LoadWorldPKcPii_80
_Z11R_LoadWorldPKcPii_10:
	mov ecx, rgp
	jmp _Z11R_LoadWorldPKcPii_90


;R_ReloadWorld()
_Z13R_ReloadWorldv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [s_world+0x30]
	test edx, edx
	jnz _Z13R_ReloadWorldv_10
_Z13R_ReloadWorldv_30:
	mov eax, [s_world+0x3c]
	test eax, eax
	jnz _Z13R_ReloadWorldv_20
	leave
	ret
_Z13R_ReloadWorldv_20:
	mov [esp+0x8], eax
	mov eax, [s_world+0x40]
	mov [esp+0x4], eax
	mov dword [esp], s_world+0x44
	call _Z25R_CreateWorldVertexBufferPP22IDirect3DVertexBuffer9PKvj
	leave
	ret
_Z13R_ReloadWorldv_10:
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*2]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov eax, [s_world+0x34]
	mov [esp+0x4], eax
	mov dword [esp], s_world+0x38
	call _Z25R_CreateWorldVertexBufferPP22IDirect3DVertexBuffer9PKvj
	jmp _Z13R_ReloadWorldv_30


;R_ReleaseWorld()
_Z14R_ReleaseWorldv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, rgp
	mov ecx, [eax+0x20a0]
	test ecx, ecx
	jz _Z14R_ReleaseWorldv_10
	call _Z20R_ResetModelLightingv
	call _Z23R_FlushStaticModelCachev
_Z14R_ReleaseWorldv_10:
	mov edx, [s_world+0x30]
	test edx, edx
	jnz _Z14R_ReleaseWorldv_20
_Z14R_ReleaseWorldv_40:
	mov eax, [s_world+0x3c]
	test eax, eax
	jnz _Z14R_ReleaseWorldv_30
	leave
	ret
_Z14R_ReleaseWorldv_30:
	mov eax, [s_world+0x44]
	mov [esp], eax
	call _Z24R_FreeStaticVertexBufferP22IDirect3DVertexBuffer9
	mov dword [s_world+0x44], 0x0
	leave
	ret
_Z14R_ReleaseWorldv_20:
	mov eax, [s_world+0x38]
	mov [esp], eax
	call _Z24R_FreeStaticVertexBufferP22IDirect3DVertexBuffer9
	mov dword [s_world+0x38], 0x0
	jmp _Z14R_ReleaseWorldv_40


;R_ShutdownWorld()
_Z15R_ShutdownWorldv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, rgp
	mov eax, [ebx+0x20a0]
	test eax, eax
	jz _Z15R_ShutdownWorldv_10
	call _Z20R_ResetModelLightingv
	call _Z23R_FlushStaticModelCachev
_Z15R_ShutdownWorldv_10:
	mov eax, [s_world+0x30]
	test eax, eax
	jnz _Z15R_ShutdownWorldv_20
_Z15R_ShutdownWorldv_40:
	mov eax, [s_world+0x3c]
	test eax, eax
	jz _Z15R_ShutdownWorldv_30
	mov eax, [s_world+0x44]
	mov [esp], eax
	call _Z24R_FreeStaticVertexBufferP22IDirect3DVertexBuffer9
	mov dword [s_world+0x44], 0x0
_Z15R_ShutdownWorldv_30:
	mov dword [ebx+0x20a0], 0x0
	mov dword [s_world+0x30], 0x0
	mov dword [s_world+0x3c], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z15R_ShutdownWorldv_20:
	mov eax, [s_world+0x38]
	mov [esp], eax
	call _Z24R_FreeStaticVertexBufferP22IDirect3DVertexBuffer9
	mov dword [s_world+0x38], 0x0
	jmp _Z15R_ShutdownWorldv_40


;R_UpdateLightsFromDvars()
_Z23R_UpdateLightsFromDvarsv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x90
	mov eax, sm_enable
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z23R_UpdateLightsFromDvarsv_10
	mov eax, r_lightTweakSunDirection
	mov eax, [eax]
	lea ecx, [eax+0x2c]
	lea edx, [eax+0xc]
	movss xmm0, dword [eax+0xc]
	ucomiss xmm0, [eax+0x2c]
	jz _Z23R_UpdateLightsFromDvarsv_20
_Z23R_UpdateLightsFromDvarsv_30:
	mov dword [esp+0x4], 0x3f800000
	mov eax, sm_sunSampleSizeNear
	mov eax, [eax]
	mov [esp], eax
	call _Z13Dvar_SetFloatPK6dvar_sf
	mov dword [esp+0x4], 0x1
	mov eax, sm_enable
	mov eax, [eax]
	mov [esp], eax
	call _Z12Dvar_SetBoolPK6dvar_sh
_Z23R_UpdateLightsFromDvarsv_10:
	lea esi, [ebp-0x88]
	mov eax, esi
	call _Z26R_CopyParseParamsFromDvarsP19SunLightParseParams
	mov ebx, rgp
	mov eax, [ebx+0x20a0]
	mov eax, [eax+0xc8]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z40R_InterpretSunLightParseParamsIntoLightsP19SunLightParseParamsP8GfxLight
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
_Z23R_UpdateLightsFromDvarsv_20:
	jp _Z23R_UpdateLightsFromDvarsv_30
	movss xmm0, dword [edx+0x4]
	ucomiss xmm0, [ecx+0x4]
	jnz _Z23R_UpdateLightsFromDvarsv_30
	jp _Z23R_UpdateLightsFromDvarsv_30
	movss xmm0, dword [edx+0x8]
	ucomiss xmm0, [ecx+0x8]
	jnz _Z23R_UpdateLightsFromDvarsv_30
	jnp _Z23R_UpdateLightsFromDvarsv_10
	jmp _Z23R_UpdateLightsFromDvarsv_30
	add [eax], al


;R_BspGenerateReflections()
_Z24R_BspGenerateReflectionsv:
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
	call _Z21R_GenerateReflectionsPKcP18GfxReflectionProbej
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

