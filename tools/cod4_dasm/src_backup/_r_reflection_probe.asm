;Imports of r_reflection_probe:
	extern pow
	extern memset
	extern _Z19R_InitPrimaryLightsP8GfxLight
	extern _Z18R_BeginCubemapShotii
	extern _Z12R_BeginFramev
	extern _Z20R_BeginSharedCmdListv
	extern _Z22R_ClearClientCmdList2Dv
	extern _Z12R_ClearScenei
	extern _Z14FX_BeginUpdatei
	extern _Z14R_SetLodOriginPK8refdef_s
	extern _Z17R_GetFarPlaneDistv
	extern _Z22FX_SetNextUpdateCameraiPK8refdef_sf
	extern _Z16FX_FillUpdateCmdiP5FxCmd
	extern _Z23R_UpdateSpotLightEffectP5FxCmd
	extern _Z27R_UpdateNonDependentEffectsP5FxCmd
	extern _Z24R_UpdateRemainingEffectsP5FxCmd
	extern _Z13R_RenderScenePK8refdef_s
	extern _Z10R_EndFramev
	extern _Z21R_IssueRenderCommandsj
	extern _Z16R_EndCubemapShot11CubemapShot
	extern _Z40R_CreateReflectionRawDataFromCubemapShotP22DiskGfxReflectionProbei
	extern _Z9I_stricmpPKcS0_
	extern _Z14Com_PrintErroriPKcz
	extern _Z11Com_LoadBspPKc
	extern _Z17Com_GetBspVersionv
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z14Com_GetBspLump8LumpTypejPj
	extern _Z12Com_SaveLump8LumpTypePKvj19ComSaveLumpBehavior
	extern _Z12Dvar_SetBoolPK6dvar_sh
	extern Z_MallocInternal
	extern Z_FreeInternal
	extern _Z14Sys_NormalExitv
	extern exit
	extern memcpy
	extern Hunk_AllocateTempMemory
	extern _Z2vaPKcz
	extern _Z11Image_AllocPKchhi
	extern _Z18Image_GenerateCubeP8GfxImagePA15_PKhi10_D3DFORMATj
	extern Hunk_FreeTempMemory
	extern _Z18FS_FOpenFileByModePKcPi8fsMode_t
	extern Hunk_AllocateTempMemoryHigh
	extern _Z7FS_ReadPvii
	extern _Z13FS_FCloseFilei
	extern _Z21Com_BeginParseSessionPKc
	extern _Z10Com_SetCSVi
	extern _Z9Com_ParsePPKc
	extern _Z18Com_SkipRestOfLinePPKc
	extern _Z10I_strncpyzPcPKci
	extern _Z20Com_ParseFloatOnLinePPKc
	extern _Z19Com_EndParseSessionv
	extern Hunk_ClearTempMemoryHigh
	extern _Z17Dvar_RegisterBoolPKchtS0_
	extern _Z43Material_PreventOverrideTechniqueGenerationv

;Exports of r_reflection_probe:
	global s_numColorCorrectionDataEntries
	global s_colorCorrectionDataEntries
	global r_reflectionProbeGenerateExit
	global r_reflectionProbeRegenerateAll
	global _ZZ18R_VerifyFieldNamesPPKcS0_E6fields
	global _Z23R_ColorCorrectBGRAPixelPK19ColorCorrectionDataPKhPh
	global _Z27R_GenerateReflectionRawDataP22DiskGfxReflectionProbe
	global _Z25R_FindColorCorrectionDataPKc
	global _Z21R_GenerateReflectionsPKcP18GfxReflectionProbej
	global _Z23R_CalcCubeMapViewValuesP8refdef_s11CubemapShoti
	global _Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii
	global _Z30R_ReflectionProbeRegisterDvarsv
	global r_reflectionProbeGenerate


SECTION .text


;R_ColorCorrectBGRAPixel(ColorCorrectionData const*, unsigned char const*, unsigned char*)
_Z23R_ColorCorrectBGRAPixelPK19ColorCorrectionDataPKhPh:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov edi, [ebp+0x8]
	movss xmm0, dword [edi+0x40]
	movss [ebp-0x38], xmm0
	movss xmm1, dword [edi+0x50]
	movss [ebp-0x34], xmm1
	cvtss2sd xmm2, [edi+0x48]
	movsd [ebp-0x30], xmm2
	mov esi, 0x1
	pxor xmm5, xmm5
_Z23R_ColorCorrectBGRAPixelPK19ColorCorrectionDataPKhPh_20:
	mov edx, [ebp+0xc]
	movzx eax, byte [esi+edx-0x1]
	cvtsi2ss xmm0, eax
	divss xmm0, dword [_float_255_00000000]
	subss xmm0, [ebp-0x38]
	divss xmm0, dword [ebp-0x34]
	ucomiss xmm0, xmm5
	jb _Z23R_ColorCorrectBGRAPixelPK19ColorCorrectionDataPKhPh_10
	cvtss2sd xmm0, xmm0
_Z23R_ColorCorrectBGRAPixelPK19ColorCorrectionDataPKhPh_80:
	lea ebx, [esi*4]
	movsd xmm1, qword [ebp-0x30]
	movsd [esp+0x8], xmm1
	movsd [esp], xmm0
	movss [ebp-0x58], xmm5
	call pow
	fstp qword [ebp-0x40]
	cvtsd2ss xmm2, [ebp-0x40]
	movss [ebp+ebx-0x28], xmm2
	add esi, 0x1
	cmp esi, 0x4
	movss xmm5, dword [ebp-0x58]
	jnz _Z23R_ColorCorrectBGRAPixelPK19ColorCorrectionDataPKhPh_20
	movss xmm2, dword [edi+0x4c]
	movss xmm1, dword [_float_0_11400000]
	mulss xmm1, [ebp-0x24]
	movss xmm0, dword [_float_0_58700001]
	mulss xmm0, [ebp-0x20]
	addss xmm1, xmm0
	movss xmm0, dword [_float_0_29899999]
	mulss xmm0, [ebp-0x1c]
	addss xmm1, xmm0
	movss xmm6, dword [_float_1_00000000]
	movaps xmm0, xmm6
	subss xmm0, xmm2
	mulss xmm1, xmm0
	mov edx, 0x1
	lea eax, [ebp-0x24]
	add eax, 0x4
_Z23R_ColorCorrectBGRAPixelPK19ColorCorrectionDataPKhPh_30:
	movaps xmm0, xmm2
	mulss xmm0, [eax-0x4]
	addss xmm0, xmm1
	movss [eax-0x4], xmm0
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x4
	jnz _Z23R_ColorCorrectBGRAPixelPK19ColorCorrectionDataPKhPh_30
	movss xmm4, dword [_float_0_10000000]
	mov dl, 0x1
	movss xmm3, dword [_float_4_00000000]
	lea eax, [ebp-0x24]
	add eax, 0x4
_Z23R_ColorCorrectBGRAPixelPK19ColorCorrectionDataPKhPh_40:
	movss xmm2, dword [eax-0x4]
	movaps xmm0, xmm3
	subss xmm0, xmm2
	movaps xmm1, xmm5
	cmpss xmm1, xmm0, 0x2
	movaps xmm0, xmm1
	movaps xmm1, xmm2
	andps xmm1, xmm0
	movaps xmm2, xmm0
	andnps xmm2, xmm3
	orps xmm2, xmm1
	movss [eax-0x4], xmm2
	maxss xmm2, xmm4
	movaps xmm4, xmm2
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x4
	jnz _Z23R_ColorCorrectBGRAPixelPK19ColorCorrectionDataPKhPh_40
	mov ecx, 0x1
	lea edx, [ebp-0x24]
	add edx, 0x4
_Z23R_ColorCorrectBGRAPixelPK19ColorCorrectionDataPKhPh_60:
	movss xmm1, dword [edx-0x4]
	divss xmm1, xmm4
	movaps xmm0, xmm1
	subss xmm0, xmm6
	movaps xmm2, xmm5
	cmpss xmm2, xmm0, 0x6
	movaps xmm0, xmm2
	movaps xmm2, xmm1
	andps xmm2, xmm0
	movaps xmm3, xmm0
	andnps xmm3, xmm6
	orps xmm3, xmm2
	movaps xmm0, xmm5
	subss xmm0, xmm1
	ucomiss xmm0, xmm5
	jb _Z23R_ColorCorrectBGRAPixelPK19ColorCorrectionDataPKhPh_50
	movaps xmm0, xmm5
	movaps xmm3, xmm5
_Z23R_ColorCorrectBGRAPixelPK19ColorCorrectionDataPKhPh_70:
	movss [edx-0x4], xmm3
	cvttss2si eax, xmm0
	mov ebx, [ebp+0x10]
	mov [ebx+ecx-0x1], al
	add ecx, 0x1
	add edx, 0x4
	cmp ecx, 0x4
	jnz _Z23R_ColorCorrectBGRAPixelPK19ColorCorrectionDataPKhPh_60
	mulss xmm4, [_float_0_25000000]
	mulss xmm4, [_float_255_00000000]
	cvttss2si eax, xmm4
	mov [ebx+0x3], al
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23R_ColorCorrectBGRAPixelPK19ColorCorrectionDataPKhPh_50:
	movaps xmm0, xmm3
	mulss xmm0, [_float_255_00000000]
	jmp _Z23R_ColorCorrectBGRAPixelPK19ColorCorrectionDataPKhPh_70
_Z23R_ColorCorrectBGRAPixelPK19ColorCorrectionDataPKhPh_10:
	pxor xmm0, xmm0
	jmp _Z23R_ColorCorrectBGRAPixelPK19ColorCorrectionDataPKhPh_80


;R_GenerateReflectionRawData(DiskGfxReflectionProbe*)
_Z27R_GenerateReflectionRawDataP22DiskGfxReflectionProbe:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x40dc
	mov [ebp-0x40cc], eax
	lea edi, [ebp-0x40bc]
	mov dword [esp+0x8], 0x4098
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call memset
	mov edx, [ebp-0x40cc]
	mov eax, [edx]
	mov [ebp-0x40a4], eax
	mov eax, [edx+0x4]
	mov [ebp-0x40a0], eax
	mov eax, [edx+0x8]
	mov [ebp-0x409c], eax
	mov dword [ebp-0x28], 0x0
	mov dword [ebp-0x4068], 0x0
	mov dword [ebp-0x4060], 0x0
	mov byte [ebp-0x2c], 0x0
	lea eax, [ebp-0x3ffc]
	mov [esp], eax
	call _Z19R_InitPrimaryLightsP8GfxLight
	mov ebx, 0x1
	lea esi, [ebp-0x24]
_Z27R_GenerateReflectionRawDataP22DiskGfxReflectionProbe_10:
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x100
	call _Z18R_BeginCubemapShotii
	call _Z12R_BeginFramev
	call _Z20R_BeginSharedCmdListv
	call _Z22R_ClearClientCmdList2Dv
	mov dword [esp], 0x0
	call _Z12R_ClearScenei
	mov dword [esp], 0x0
	call _Z14FX_BeginUpdatei
	mov dword [esp+0x8], 0x100
	mov [esp+0x4], ebx
	mov [esp], edi
	call _Z23R_CalcCubeMapViewValuesP8refdef_s11CubemapShoti
	mov [esp], edi
	call _Z14R_SetLodOriginPK8refdef_s
	call _Z17R_GetFarPlaneDistv
	fstp dword [esp+0x8]
	mov [esp+0x4], edi
	mov dword [esp], 0x0
	call _Z22FX_SetNextUpdateCameraiPK8refdef_sf
	mov [esp+0x4], esi
	mov dword [esp], 0x0
	call _Z16FX_FillUpdateCmdiP5FxCmd
	mov [esp], esi
	call _Z23R_UpdateSpotLightEffectP5FxCmd
	mov [esp], esi
	call _Z27R_UpdateNonDependentEffectsP5FxCmd
	mov [esp], esi
	call _Z24R_UpdateRemainingEffectsP5FxCmd
	mov [esp], edi
	call _Z13R_RenderScenePK8refdef_s
	call _Z10R_EndFramev
	mov dword [esp], 0xffffffff
	call _Z21R_IssueRenderCommandsj
	mov [esp], ebx
	call _Z16R_EndCubemapShot11CubemapShot
	add ebx, 0x1
	cmp ebx, 0x7
	jnz _Z27R_GenerateReflectionRawDataP22DiskGfxReflectionProbe_10
	mov dword [esp+0x4], 0x40
	mov eax, [ebp-0x40cc]
	mov [esp], eax
	call _Z40R_CreateReflectionRawDataFromCubemapShotP22DiskGfxReflectionProbei
	add esp, 0x40dc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop
	add [eax], al


;R_FindColorCorrectionData(char const*)
_Z25R_FindColorCorrectionDataPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, eax
	cmp byte [eax], 0x0
	jz _Z25R_FindColorCorrectionDataPKc_10
	mov ebx, [s_numColorCorrectionDataEntries]
	test ebx, ebx
	jle _Z25R_FindColorCorrectionDataPKc_20
	xor ebx, ebx
_Z25R_FindColorCorrectionDataPKc_40:
	mov [esp+0x4], edi
	lea eax, [ebx+ebx*4]
	lea eax, [ebx+eax*4]
	lea esi, [eax*4+s_colorCorrectionDataEntries]
	mov [esp], esi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z25R_FindColorCorrectionDataPKc_30
	add ebx, 0x1
	cmp ebx, [s_numColorCorrectionDataEntries]
	jl _Z25R_FindColorCorrectionDataPKc_40
_Z25R_FindColorCorrectionDataPKc_20:
	mov dword [esp+0xc], s_colorCorrectionDataEntries
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_r_findcolorcorre
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	mov eax, s_colorCorrectionDataEntries
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25R_FindColorCorrectionDataPKc_10:
	mov ecx, [s_numColorCorrectionDataEntries]
	test ecx, ecx
	jle _Z25R_FindColorCorrectionDataPKc_50
	xor ebx, ebx
_Z25R_FindColorCorrectionDataPKc_60:
	mov dword [esp+0x4], _cstring_default
	lea eax, [ebx+ebx*4]
	lea eax, [ebx+eax*4]
	lea esi, [eax*4+s_colorCorrectionDataEntries]
	mov [esp], esi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z25R_FindColorCorrectionDataPKc_30
	add ebx, 0x1
	cmp ebx, [s_numColorCorrectionDataEntries]
	jl _Z25R_FindColorCorrectionDataPKc_60
_Z25R_FindColorCorrectionDataPKc_50:
	mov dword [esp+0xc], s_colorCorrectionDataEntries
	mov dword [esp+0x8], _cstring_default
	mov dword [esp+0x4], _cstring_r_findcolorcorre
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	mov eax, s_colorCorrectionDataEntries
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25R_FindColorCorrectionDataPKc_30:
	mov eax, esi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;R_GenerateReflections(char const*, GfxReflectionProbe*, unsigned int)
_Z21R_GenerateReflectionsPKcP18GfxReflectionProbej:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x14c
	mov eax, [r_reflectionProbeGenerate]
	cmp byte [eax+0xc], 0x0
	jnz _Z21R_GenerateReflectionsPKcP18GfxReflectionProbej_10
	add esp, 0x14c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21R_GenerateReflectionsPKcP18GfxReflectionProbej_10:
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z11Com_LoadBspPKc
	call _Z17Com_GetBspVersionv
	cmp eax, 0x16
	jz _Z21R_GenerateReflectionsPKcP18GfxReflectionProbej_20
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x16
	mov dword [esp+0x4], _cstring_you_can_only_gen
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z21R_GenerateReflectionsPKcP18GfxReflectionProbej_20:
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x20044
	mov dword [esp], 0x29
	call _Z14Com_GetBspLump8LumpTypejPj
	mov [ebp-0x134], eax
	mov edx, [ebp+0x10]
	test edx, edx
	jnz _Z21R_GenerateReflectionsPKcP18GfxReflectionProbej_30
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x29
	call _Z12Com_SaveLump8LumpTypePKvj19ComSaveLumpBehavior
_Z21R_GenerateReflectionsPKcP18GfxReflectionProbej_100:
	mov edx, [r_reflectionProbeGenerate]
	cmp byte [edx+0xc], 0x0
	jz _Z21R_GenerateReflectionsPKcP18GfxReflectionProbej_40
	mov eax, [r_reflectionProbeGenerateExit]
	cmp byte [eax+0xc], 0x0
	jnz _Z21R_GenerateReflectionsPKcP18GfxReflectionProbej_50
_Z21R_GenerateReflectionsPKcP18GfxReflectionProbej_40:
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call _Z12Dvar_SetBoolPK6dvar_sh
	add esp, 0x14c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21R_GenerateReflectionsPKcP18GfxReflectionProbej_30:
	mov eax, [ebp+0x10]
	shl eax, 0x4
	mov edx, [ebp+0x10]
	shl edx, 0xf
	add eax, edx
	add eax, [ebp+0x10]
	shl eax, 0x2
	mov [ebp-0x13c], eax
	mov [esp], eax
	call Z_MallocInternal
	mov [ebp-0x130], eax
	mov edi, [ebp-0x1c]
	test edi, edi
	jnz _Z21R_GenerateReflectionsPKcP18GfxReflectionProbej_60
_Z21R_GenerateReflectionsPKcP18GfxReflectionProbej_120:
	test edi, edi
	jle _Z21R_GenerateReflectionsPKcP18GfxReflectionProbej_70
	mov ebx, [ebp-0x130]
	xor esi, esi
	jmp _Z21R_GenerateReflectionsPKcP18GfxReflectionProbej_80
_Z21R_GenerateReflectionsPKcP18GfxReflectionProbej_90:
	add esi, 0x1
	add ebx, 0x20044
	cmp edi, esi
	jz _Z21R_GenerateReflectionsPKcP18GfxReflectionProbej_70
_Z21R_GenerateReflectionsPKcP18GfxReflectionProbej_80:
	cmp byte [esi+ebp-0x11b], 0x0
	jz _Z21R_GenerateReflectionsPKcP18GfxReflectionProbej_90
	mov eax, ebx
	call _Z27R_GenerateReflectionRawDataP22DiskGfxReflectionProbe
	add esi, 0x1
	add ebx, 0x20044
	cmp edi, esi
	jnz _Z21R_GenerateReflectionsPKcP18GfxReflectionProbej_80
_Z21R_GenerateReflectionsPKcP18GfxReflectionProbej_70:
	mov dword [esp+0xc], 0x0
	mov edi, [ebp-0x13c]
	mov [esp+0x8], edi
	mov eax, [ebp-0x130]
	mov [esp+0x4], eax
	mov dword [esp], 0x29
	call _Z12Com_SaveLump8LumpTypePKvj19ComSaveLumpBehavior
	mov dword [esp+0xc], 0x0
	mov edx, [ebp+0x10]
	mov [esp+0x8], edx
	mov edi, [ebp-0x130]
	mov [esp+0x4], edi
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii
	mov [esp], edi
	call Z_FreeInternal
	jmp _Z21R_GenerateReflectionsPKcP18GfxReflectionProbej_100
_Z21R_GenerateReflectionsPKcP18GfxReflectionProbej_50:
	call _Z14Sys_NormalExitv
	mov dword [esp], 0x0
	call exit
_Z21R_GenerateReflectionsPKcP18GfxReflectionProbej_60:
	mov edx, [ebp-0x134]
	mov [ebp-0x12c], edx
	mov ebx, eax
	mov esi, [ebp+0xc]
	mov dword [ebp-0x138], 0x0
	mov eax, edx
	mov edi, edx
	jmp _Z21R_GenerateReflectionsPKcP18GfxReflectionProbej_110
_Z21R_GenerateReflectionsPKcP18GfxReflectionProbej_130:
	mov eax, [ebp-0x138]
	mov byte [eax+ebp-0x11b], 0x1
_Z21R_GenerateReflectionsPKcP18GfxReflectionProbej_160:
	add dword [ebp-0x138], 0x1
	mov edi, [ebp-0x1c]
	add dword [ebp-0x12c], 0x20044
	add ebx, 0x20044
	add esi, 0x10
	cmp [ebp-0x138], edi
	jae _Z21R_GenerateReflectionsPKcP18GfxReflectionProbej_120
	mov eax, [ebp-0x12c]
	mov edi, [ebp-0x12c]
_Z21R_GenerateReflectionsPKcP18GfxReflectionProbej_110:
	lea ecx, [ebx+0xc]
	add eax, 0xc
	mov edx, [edi+0xc]
	mov [ebx+0xc], edx
	mov edx, [eax+0x4]
	mov [ecx+0x4], edx
	mov edx, [eax+0x8]
	mov [ecx+0x8], edx
	mov edx, [eax+0xc]
	mov [ecx+0xc], edx
	mov edx, [eax+0x10]
	mov [ecx+0x10], edx
	mov edx, [eax+0x14]
	mov [ecx+0x14], edx
	mov edx, [eax+0x18]
	mov [ecx+0x18], edx
	mov edx, [eax+0x1c]
	mov [ecx+0x1c], edx
	mov edx, [eax+0x20]
	mov [ecx+0x20], edx
	mov edx, [eax+0x24]
	mov [ecx+0x24], edx
	mov edx, [eax+0x28]
	mov [ecx+0x28], edx
	mov edx, [eax+0x2c]
	mov [ecx+0x2c], edx
	mov edx, [eax+0x30]
	mov [ecx+0x30], edx
	mov edx, [eax+0x34]
	mov [ecx+0x34], edx
	mov edx, [eax+0x38]
	mov [ecx+0x38], edx
	mov eax, [eax+0x3c]
	mov [ecx+0x3c], eax
	movss xmm1, dword [esi]
	movss [ebx], xmm1
	mov eax, [esi+0x4]
	mov [ebx+0x4], eax
	mov eax, [esi+0x8]
	mov [ebx+0x8], eax
	mov eax, [r_reflectionProbeRegenerateAll]
	cmp byte [eax+0xc], 0x0
	jnz _Z21R_GenerateReflectionsPKcP18GfxReflectionProbej_130
	mov eax, [ebp+0x10]
	test eax, eax
	jle _Z21R_GenerateReflectionsPKcP18GfxReflectionProbej_140
	xor ecx, ecx
	xor edx, edx
_Z21R_GenerateReflectionsPKcP18GfxReflectionProbej_170:
	mov eax, [ebp-0x134]
	add eax, edx
	ucomiss xmm1, [eax]
	jnz _Z21R_GenerateReflectionsPKcP18GfxReflectionProbej_150
	jp _Z21R_GenerateReflectionsPKcP18GfxReflectionProbej_150
	movss xmm0, dword [ebx+0x4]
	ucomiss xmm0, [eax+0x4]
	jnz _Z21R_GenerateReflectionsPKcP18GfxReflectionProbej_150
	jp _Z21R_GenerateReflectionsPKcP18GfxReflectionProbej_150
	movss xmm0, dword [ebx+0x8]
	ucomiss xmm0, [eax+0x8]
	jnz _Z21R_GenerateReflectionsPKcP18GfxReflectionProbej_150
	jp _Z21R_GenerateReflectionsPKcP18GfxReflectionProbej_150
	lea edx, [ebx+0x4c]
	add eax, 0x4c
	mov dword [esp+0x8], 0x1fff8
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
	mov eax, 0x1
_Z21R_GenerateReflectionsPKcP18GfxReflectionProbej_180:
	xor al, 0x1
	mov edx, [ebp-0x138]
	mov [edx+ebp-0x11b], al
	jmp _Z21R_GenerateReflectionsPKcP18GfxReflectionProbej_160
_Z21R_GenerateReflectionsPKcP18GfxReflectionProbej_150:
	add ecx, 0x1
	add edx, 0x20044
	cmp [ebp+0x10], ecx
	jnz _Z21R_GenerateReflectionsPKcP18GfxReflectionProbej_170
_Z21R_GenerateReflectionsPKcP18GfxReflectionProbej_140:
	xor eax, eax
	jmp _Z21R_GenerateReflectionsPKcP18GfxReflectionProbej_180
	add [eax], al


;R_CalcCubeMapViewValues(refdef_s*, CubemapShot, int)
_Z23R_CalcCubeMapViewValuesP8refdef_s11CubemapShoti:
	push ebp
	mov ebp, esp
	push ebx
	mov ecx, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov edx, [ebp+0x10]
	mov dword [ecx], 0x0
	mov dword [ecx+0x4], 0x0
	lea eax, [edx+0x2]
	mov [ecx+0x8], eax
	mov [ecx+0xc], eax
	cvtsi2ss xmm0, eax
	cvtsi2ss xmm1, edx
	divss xmm0, xmm1
	movss [ecx+0x10], xmm0
	movss [ecx+0x14], xmm0
	mov dword [ecx+0x58], 0x0
	cmp ebx, 0x6
	ja _Z23R_CalcCubeMapViewValuesP8refdef_s11CubemapShoti_10
	jmp dword [ebx*4+_Z23R_CalcCubeMapViewValuesP8refdef_s11CubemapShoti_jumptab_0]
_Z23R_CalcCubeMapViewValuesP8refdef_s11CubemapShoti_10:
	lea eax, [ecx+0x24]
	mov dword [ecx+0x24], 0x0
	mov edx, 0x3f800000
	mov [eax+0x4], edx
	mov dword [eax+0x8], 0x0
	lea eax, [ecx+0x30]
	mov dword [ecx+0x30], 0xbf800000
	mov dword [eax+0x4], 0x0
_Z23R_CalcCubeMapViewValuesP8refdef_s11CubemapShoti_20:
	mov dword [eax+0x8], 0x0
	lea eax, [ecx+0x3c]
	mov dword [ecx+0x3c], 0x0
	mov dword [eax+0x4], 0x0
	mov [eax+0x8], edx
	pop ebx
	pop ebp
	ret
_Z23R_CalcCubeMapViewValuesP8refdef_s11CubemapShoti_30:
	lea eax, [ecx+0x24]
	mov edx, 0x3f800000
	mov [ecx+0x24], edx
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
	lea eax, [ecx+0x30]
	mov dword [ecx+0x30], 0x0
	mov [eax+0x4], edx
	jmp _Z23R_CalcCubeMapViewValuesP8refdef_s11CubemapShoti_20
_Z23R_CalcCubeMapViewValuesP8refdef_s11CubemapShoti_70:
	lea eax, [ecx+0x24]
	mov dword [ecx+0x24], 0x0
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0xbf800000
	lea eax, [ecx+0x30]
	mov dword [ecx+0x30], 0x0
	mov edx, 0x3f800000
	mov [eax+0x4], edx
	mov dword [eax+0x8], 0x0
	lea eax, [ecx+0x3c]
	mov [ecx+0x3c], edx
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
	pop ebx
	pop ebp
	ret
_Z23R_CalcCubeMapViewValuesP8refdef_s11CubemapShoti_60:
	lea eax, [ecx+0x24]
	mov dword [ecx+0x24], 0x0
	mov dword [eax+0x4], 0x0
	mov edx, 0x3f800000
	mov [eax+0x8], edx
	lea eax, [ecx+0x30]
	mov dword [ecx+0x30], 0x0
	mov [eax+0x4], edx
	mov dword [eax+0x8], 0x0
	lea eax, [ecx+0x3c]
	mov dword [ecx+0x3c], 0xbf800000
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
	pop ebx
	pop ebp
	ret
_Z23R_CalcCubeMapViewValuesP8refdef_s11CubemapShoti_50:
	lea eax, [ecx+0x24]
	mov dword [ecx+0x24], 0x0
	mov dword [eax+0x4], 0xbf800000
	mov dword [eax+0x8], 0x0
	lea eax, [ecx+0x30]
	mov edx, 0x3f800000
	mov [ecx+0x30], edx
	mov dword [eax+0x4], 0x0
	jmp _Z23R_CalcCubeMapViewValuesP8refdef_s11CubemapShoti_20
_Z23R_CalcCubeMapViewValuesP8refdef_s11CubemapShoti_40:
	lea eax, [ecx+0x24]
	mov edx, 0xbf800000
	mov [ecx+0x24], edx
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
	lea eax, [ecx+0x30]
	mov dword [ecx+0x30], 0x0
	mov [eax+0x4], edx
	mov dword [eax+0x8], 0x0
	lea eax, [ecx+0x3c]
	mov dword [ecx+0x3c], 0x0
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x3f800000
	pop ebx
	pop ebp
	ret
	nop
	
	
_Z23R_CalcCubeMapViewValuesP8refdef_s11CubemapShoti_jumptab_0:
	dd _Z23R_CalcCubeMapViewValuesP8refdef_s11CubemapShoti_10
	dd _Z23R_CalcCubeMapViewValuesP8refdef_s11CubemapShoti_30
	dd _Z23R_CalcCubeMapViewValuesP8refdef_s11CubemapShoti_40
	dd _Z23R_CalcCubeMapViewValuesP8refdef_s11CubemapShoti_10
	dd _Z23R_CalcCubeMapViewValuesP8refdef_s11CubemapShoti_50
	dd _Z23R_CalcCubeMapViewValuesP8refdef_s11CubemapShoti_60
	dd _Z23R_CalcCubeMapViewValuesP8refdef_s11CubemapShoti_70


;R_GenerateReflectionImages(GfxReflectionProbe*, DiskGfxReflectionProbe const*, int, int)
_Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1bc
	mov eax, [s_numColorCorrectionDataEntries]
	test eax, eax
	jz _Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii_10
_Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii_230:
	mov dword [esp], 0x1fff8
	call Hunk_AllocateTempMemory
	mov [ebp-0x19c], eax
	mov edi, [ebp+0x10]
	test edi, edi
	jle _Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii_20
	mov edx, [ebp+0xc]
	mov [ebp-0x194], edx
	mov eax, [ebp+0x8]
	mov [ebp-0x190], eax
	mov dword [ebp-0x1a0], 0x0
_Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii_140:
	mov edi, [ebp-0x194]
	add edi, 0xc
	mov edx, [ebp-0x194]
	cmp byte [edx+0xc], 0x0
	jz _Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii_30
	mov esi, [s_numColorCorrectionDataEntries]
	test esi, esi
	jle _Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii_40
	xor ebx, ebx
	mov esi, s_colorCorrectionDataEntries
	jmp _Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii_50
_Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii_60:
	add ebx, 0x1
	add esi, 0x54
	cmp ebx, [s_numColorCorrectionDataEntries]
	jge _Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii_40
_Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii_50:
	mov [esp+0x4], edi
	mov [esp], esi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii_60
	mov edi, esi
	jmp _Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii_70
_Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii_40:
	mov dword [esp+0xc], s_colorCorrectionDataEntries
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_r_findcolorcorre
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	mov edi, s_colorCorrectionDataEntries
_Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii_70:
	mov edx, [ebp-0x194]
	mov eax, [edx]
	mov edx, [ebp-0x190]
	mov [edx], eax
	mov edx, [ebp-0x194]
	mov eax, [edx+0x4]
	mov edx, [ebp-0x190]
	mov [edx+0x4], eax
	mov edx, [ebp-0x194]
	mov eax, [edx+0x8]
	mov edx, [ebp-0x190]
	mov [edx+0x8], eax
	mov esi, [ebp-0x194]
	add esi, 0x4c
	xor ebx, ebx
_Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii_80:
	mov eax, [ebp-0x19c]
	add eax, ebx
	mov [esp+0x8], eax
	lea eax, [esi+ebx]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z23R_ColorCorrectBGRAPixelPK19ColorCorrectionDataPKhPh
	add ebx, 0x4
	cmp ebx, 0x1fff8
	jnz _Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii_80
	mov eax, [ebp+0x14]
	add eax, [ebp-0x1a0]
	mov [ebp-0x198], eax
	mov ecx, [ebp-0x19c]
	lea eax, [ebp-0x188]
_Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii_90:
	mov [eax], ecx
	add ecx, 0x4000
	add eax, 0x3c
	lea edx, [ebp-0x20]
	cmp edx, eax
	jnz _Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii_90
	xor edi, edi
	mov dword [ebp-0x1a4], 0x0
_Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii_130:
	lea edx, [ebp-0x188]
	add edx, [ebp-0x1a4]
	mov esi, 0x1
	mov eax, 0x40
	jmp _Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii_100
_Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii_120:
	mov ebx, eax
	imul ebx, eax
	mov [edx+0x4], ecx
	lea ecx, [ecx+ebx*4]
	add esi, 0x1
	add edx, 0x4
	cmp eax, 0x1
	jz _Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii_110
_Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii_100:
	sar eax, 1
	cmp eax, 0x1
	jg _Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii_120
	mov eax, 0x1
	mov ebx, 0x1
	mov [edx+0x4], ecx
	lea ecx, [ecx+ebx*4]
	add esi, 0x1
	add edx, 0x4
	cmp eax, 0x1
	jnz _Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii_100
_Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii_110:
	add edi, 0x1
	add dword [ebp-0x1a4], 0x3c
	cmp edi, 0x6
	jnz _Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii_130
	mov eax, [ebp-0x198]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_reflection_probe
	call _Z2vaPKcz
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call _Z11Image_AllocPKchhi
	mov ebx, eax
	mov [esp+0x10], esi
	mov dword [esp+0xc], 0x15
	mov dword [esp+0x8], 0x40
	lea edx, [ebp-0x188]
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z18Image_GenerateCubeP8GfxImagePA15_PKhi10_D3DFORMATj
	mov eax, [ebp-0x190]
	mov [eax+0xc], ebx
	add dword [ebp-0x1a0], 0x1
	add dword [ebp-0x194], 0x20044
	add eax, 0x10
	mov [ebp-0x190], eax
	mov edx, [ebp-0x1a0]
	cmp [ebp+0x10], edx
	jnz _Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii_140
_Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii_20:
	mov eax, [ebp-0x19c]
	mov [esp], eax
	call Hunk_FreeTempMemory
	add esp, 0x1bc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii_30:
	mov eax, _cstring_default
	call _Z25R_FindColorCorrectionDataPKc
	mov edi, eax
	jmp _Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii_70
_Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii_10:
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_reflectionsrefle
	call _Z18FS_FOpenFileByModePKcPi8fsMode_t
	mov esi, eax
	test eax, eax
	js _Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii_150
	lea eax, [eax+0x1]
	mov [esp], eax
	call Hunk_AllocateTempMemoryHigh
	mov ebx, eax
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov [esp], ebx
	call _Z7FS_ReadPvii
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z13FS_FCloseFilei
	mov byte [ebx+esi], 0x0
	mov dword [esp], _cstring_reflectionsrefle
	call _Z21Com_BeginParseSessionPKc
	mov dword [esp], 0x1
	call _Z10Com_SetCSVi
	mov [ebp-0x20], ebx
	mov eax, [_ZZ18R_VerifyFieldNamesPPKcS0_E6fields]
	test eax, eax
	jz _Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii_160
	xor esi, esi
	mov ebx, _ZZ18R_VerifyFieldNamesPPKcS0_E6fields
_Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii_180:
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z9Com_ParsePPKc
	mov edi, eax
	mov [ebp-0x18c], ebx
	mov [esp+0x4], eax
	mov eax, [ebx]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii_170
	add esi, 0x1
	add ebx, 0x4
	mov edx, [ebp-0x18c]
	mov eax, [edx+0x4]
	test eax, eax
	jnz _Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii_180
_Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii_160:
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z18Com_SkipRestOfLinePPKc
_Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii_220:
	lea edx, [ebp-0x20]
	mov [esp], edx
	call _Z9Com_ParsePPKc
	mov esi, eax
	mov eax, [ebp-0x20]
	test eax, eax
	jz _Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii_190
	mov edx, [s_numColorCorrectionDataEntries]
	cmp edx, 0x400
	jz _Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii_200
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea ebx, [eax*4+s_colorCorrectionDataEntries]
	lea eax, [edx+0x1]
	mov [s_numColorCorrectionDataEntries], eax
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	not ecx
	sub ecx, 0x1
	cmp ecx, 0x3f
	jbe _Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii_210
	mov dword [esp+0x10], 0x40
	mov [esp+0xc], esi
	mov dword [esp+0x8], _cstring_reflectionsrefle
	mov dword [esp+0x4], _cstring_r_parsecolorcorr
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
_Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii_210:
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], esi
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z20Com_ParseFloatOnLinePPKc
	fstp dword [ebx+0x40]
	lea edx, [ebp-0x20]
	mov [esp], edx
	call _Z20Com_ParseFloatOnLinePPKc
	fstp dword [ebx+0x44]
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z20Com_ParseFloatOnLinePPKc
	fstp dword [ebx+0x48]
	lea edx, [ebp-0x20]
	mov [esp], edx
	call _Z20Com_ParseFloatOnLinePPKc
	fstp dword [ebx+0x4c]
	movss xmm0, dword [ebx+0x44]
	subss xmm0, [ebx+0x40]
	movss [ebx+0x50], xmm0
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z18Com_SkipRestOfLinePPKc
	jmp _Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii_220
_Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii_170:
	mov eax, [esi*4+_ZZ18R_VerifyFieldNamesPPKcS0_E6fields]
	mov [esp+0x14], eax
	mov [esp+0x10], edi
	mov [esp+0xc], esi
	mov dword [esp+0x8], _cstring_reflectionsrefle
	mov dword [esp+0x4], _cstring_r_parsecolorcorr1
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
_Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii_190:
	call _Z19Com_EndParseSessionv
	call Hunk_ClearTempMemoryHigh
_Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii_240:
	mov eax, [s_numColorCorrectionDataEntries]
	test eax, eax
	jnz _Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii_230
	mov dword [s_numColorCorrectionDataEntries], 0x1
	mov dword [esp+0x8], 0x40
	mov dword [esp+0x4], _cstring_default
	mov dword [esp], s_colorCorrectionDataEntries
	call _Z10I_strncpyzPcPKci
	mov dword [s_colorCorrectionDataEntries+0x40], 0x0
	mov eax, 0x3f800000
	mov [s_colorCorrectionDataEntries+0x44], eax
	mov [s_colorCorrectionDataEntries+0x48], eax
	mov [s_colorCorrectionDataEntries+0x4c], eax
	mov [s_colorCorrectionDataEntries+0x50], eax
	jmp _Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii_230
_Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii_200:
	mov dword [esp+0x10], _cstring_reflectionsrefle
	mov dword [esp+0xc], 0x400
	mov dword [esp+0x8], _cstring_reflectionsrefle
	mov dword [esp+0x4], _cstring_r_parsecolorcorr2
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	jmp _Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii_190
_Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii_150:
	mov dword [esp+0x8], _cstring_reflectionsrefle
	mov dword [esp+0x4], _cstring_r_loadcolorcorre
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	jmp _Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii_240


;R_ReflectionProbeRegisterDvars()
_Z30R_ReflectionProbeRegisterDvarsv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0xc], _cstring_generate_cube_ma
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_r_reflectionprob
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_reflectionProbeGenerate], eax
	mov dword [esp+0xc], _cstring_regenerate_cube_
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_r_reflectionprob1
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_reflectionProbeRegenerateAll], eax
	mov dword [esp+0xc], _cstring_exit_when_done_g
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_r_reflectionprob2
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [r_reflectionProbeGenerateExit], eax
	mov eax, [r_reflectionProbeGenerate]
	cmp byte [eax+0xc], 0x0
	jnz _Z30R_ReflectionProbeRegisterDvarsv_10
	leave
	ret
_Z30R_ReflectionProbeRegisterDvarsv_10:
	leave
	jmp _Z43Material_PreventOverrideTechniqueGenerationv
	add [eax], al


;Initialized global or static variables of r_reflection_probe:
SECTION .data
_ZZ18R_VerifyFieldNamesPPKcS0_E6fields: dd _cstring_name, _cstring_black_level, _cstring_white_level, _cstring_gamma, _cstring_saturation, 0x0, 0x0, 0x0


;Initialized constant data of r_reflection_probe:
SECTION .rdata


;Zero initialized global or static variables of r_reflection_probe:
SECTION .bss
s_numColorCorrectionDataEntries: resb 0x20
s_colorCorrectionDataEntries: resb 0x15000
r_reflectionProbeGenerateExit: resb 0x4
r_reflectionProbeRegenerateAll: resb 0x5c
r_reflectionProbeGenerate: resb 0x7c


;All cstrings:
SECTION .rdata
_cstring_r_findcolorcorre:		db 015h,"R_FindColorCorrectionData: failed to find color correction entry ",27h,"%s",27h,".  Using ",27h,"%s",27h," instead.",0ah,0
_cstring_default:		db "default",0
_cstring_you_can_only_gen:		db "You can only generate reflections for BSP version %i, but the BSP is version %i.  You need to recompile the map.",0
_cstring_reflection_probe:		db "*reflection_probe%i",0
_cstring_reflectionsrefle:		db "reflections/reflections.csv",0
_cstring_r_parsecolorcorr:		db 015h,"R_ParseColorCorrectionData: file ",27h,"%s",27h," truncating name because ",27h,"%s",27h," is too longer than %d.",0ah,0
_cstring_r_parsecolorcorr1:		db 015h,"R_ParseColorCorrectionData: file ",27h,"%s",27h," column header %d was ",27h,"%s",27h," instead of ",27h,"%s",27h,0ah,0
_cstring_r_parsecolorcorr2:		db 015h,"R_ParseColorCorrectionData: file ",27h,"%s",27h," max color correction entires [%d] exceeded.  Ignoring the rest of the file ",27h,"%s",27h,0ah,0
_cstring_r_loadcolorcorre:		db 015h,"R_LoadColorCorrectionData: failed to open ",27h,"%s",27h,0ah,0
_cstring_generate_cube_ma:		db "Generate cube maps for reflection probes.",0
_cstring_r_reflectionprob:		db "r_reflectionProbeGenerate",0
_cstring_regenerate_cube_:		db "Regenerate cube maps for all reflection probes.",0
_cstring_r_reflectionprob1:		db "r_reflectionProbeRegenerateAll",0
_cstring_exit_when_done_g:		db "Exit when done generating reflection cubes.",0
_cstring_r_reflectionprob2:		db "r_reflectionProbeGenerateExit",0
_cstring_name:		db "name",0
_cstring_black_level:		db "black_level",0
_cstring_white_level:		db "white_level",0
_cstring_gamma:		db "gamma",0
_cstring_saturation:		db "saturation",0



;All constant floats and doubles:
SECTION .rdata
_float_255_00000000:		dd 0x437f0000	; 255
_float_0_11400000:		dd 0x3de978d5	; 0.114
_float_0_58700001:		dd 0x3f1645a2	; 0.587
_float_0_29899999:		dd 0x3e991687	; 0.299
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_10000000:		dd 0x3dcccccd	; 0.1
_float_4_00000000:		dd 0x40800000	; 4
_float_0_25000000:		dd 0x3e800000	; 0.25

