;Imports of rb_light:
	extern _Z18R_WarnOncePerFrame14GfxWarningTypez
	extern memmove
	extern floorf
	extern r_vc_makelog
	extern r_showLightGrid
	extern vec3_origin
	extern _Z16CM_BoxSightTraceiPKfS0_S0_S0_ji
	extern memset
	extern colorBlue
	extern frontEndDataOut
	extern _Z13R_AddDebugBoxP12DebugGlobalsPKfS2_S2_
	extern colorWhite
	extern colorRed
	extern colorGreen
	extern colorOrange
	extern colorYellow
	extern iInterlockedExchangeAdd
	extern comWorld
	extern _Z30Com_CanPrimaryLightAffectPointPK15ComPrimaryLightPKf
	extern memcpy
	extern _Z9Com_Error11errorParm_tPKcz
	extern r_showMissingLightGrid
	extern Z_VirtualAllocInternal
	extern _Z18Com_StripExtensionPKcPc
	extern FS_ReadFile
	extern FS_FreeFile
	extern rgp
	extern _Z12FS_WriteFilePKcPKvi
	extern Z_VirtualFreeInternal
	extern _Z10Com_MemsetPvii
	extern _Z31CullBoxFromConicSectionOfSpherePKfS0_ffS0_S0_
	extern _Z17CullBoxFromSpherePKffS0_S0_
	extern Hunk_AllocateTempMemory
	extern _Z16XModelGetNumLodsPK6XModel
	extern _Z17XModelGetSurfacesPK6XModelPP8XSurfacei
	extern Hunk_FreeTempMemory
	extern _Z19XSurfaceGetNumVertsPK8XSurface
	extern _Z16XSurfaceGetVertsPK8XSurfacePfS2_S2_
	extern r_vc_showlog
	extern _Z20R_CullPointAndRadiusPKffPK9DpvsPlanei
	extern _Z16R_AddDebugStringP12DebugGlobalsPKfS2_fPKc

;Exports of rb_light:
	global s_vc_log
	global s_lightGridSliceDelta
	global s_lightGridRowDelta
	global _Z20R_SortedHistoryEntryiii19GfxSortedHistoryAdd
	global _Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj
	global _Z20R_SetLightGridColorsPK18GfxLightGridColorshPh
	global _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj
	global _Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation
	global _Z21R_InitLightVisHistoryPKc
	global _Z21R_SaveLightVisHistoryv
	global _Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion
	global _Z25R_GetPrimaryLightFromGridPK12GfxLightGridPKfh
	global _Z25R_ShowLightVisCachePointsPKfPK9DpvsPlanei
	global _Z26R_SetLightGridSampleDeltasii
	global _Z27R_ApplyLightGridColorsPatchPK21GfxModelLightingPatchPh
	global _Z27R_GetAverageLightingAtPointPKfPh


SECTION .text


;R_SortedHistoryEntry(int, int, int, GfxSortedHistoryAdd)
_Z20R_SortedHistoryEntryiii19GfxSortedHistoryAdd:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov [ebp-0x2c], eax
	mov [ebp-0x24], edx
	mov [ebp-0x28], ecx
	mov eax, [s_vc_log+0x4]
	mov [ebp-0x20], eax
	mov ebx, eax
	sub ebx, 0x1
	js _Z20R_SortedHistoryEntryiii19GfxSortedHistoryAdd_10
	mov edx, [s_vc_log]
	mov [ebp-0x1c], edx
	xor esi, esi
	mov edi, edx
	jmp _Z20R_SortedHistoryEntryiii19GfxSortedHistoryAdd_20
_Z20R_SortedHistoryEntryiii19GfxSortedHistoryAdd_60:
	lea esi, [edx+0x1]
	cmp ebx, esi
	jl _Z20R_SortedHistoryEntryiii19GfxSortedHistoryAdd_30
_Z20R_SortedHistoryEntryiii19GfxSortedHistoryAdd_70:
	mov edi, [ebp-0x1c]
_Z20R_SortedHistoryEntryiii19GfxSortedHistoryAdd_20:
	lea edx, [ebx+esi]
	sar edx, 1
	lea ecx, [edx+edx*2]
	lea ecx, [edi+ecx*2]
	movzx eax, word [ecx]
	mov edi, [ebp-0x2c]
	sub edi, eax
	mov eax, edi
	jnz _Z20R_SortedHistoryEntryiii19GfxSortedHistoryAdd_40
	movzx eax, word [ecx+0x2]
	mov edi, [ebp-0x24]
	sub edi, eax
	mov eax, edi
	jnz _Z20R_SortedHistoryEntryiii19GfxSortedHistoryAdd_40
	movzx eax, word [ecx+0x4]
	mov ecx, [ebp-0x28]
	sub ecx, eax
	mov eax, ecx
	jz _Z20R_SortedHistoryEntryiii19GfxSortedHistoryAdd_50
_Z20R_SortedHistoryEntryiii19GfxSortedHistoryAdd_40:
	test eax, eax
	jns _Z20R_SortedHistoryEntryiii19GfxSortedHistoryAdd_60
	lea ebx, [edx-0x1]
	cmp ebx, esi
	jge _Z20R_SortedHistoryEntryiii19GfxSortedHistoryAdd_70
_Z20R_SortedHistoryEntryiii19GfxSortedHistoryAdd_30:
	mov eax, [ebp+0x8]
	test eax, eax
	jnz _Z20R_SortedHistoryEntryiii19GfxSortedHistoryAdd_80
	mov edx, 0xffffffff
_Z20R_SortedHistoryEntryiii19GfxSortedHistoryAdd_50:
	mov eax, edx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20R_SortedHistoryEntryiii19GfxSortedHistoryAdd_80:
	cmp dword [ebp-0x20], 0xfffff
	jle _Z20R_SortedHistoryEntryiii19GfxSortedHistoryAdd_90
	mov dword [esp], 0x25
	call _Z18R_WarnOncePerFrame14GfxWarningTypez
	mov edx, 0xffffffff
	jmp _Z20R_SortedHistoryEntryiii19GfxSortedHistoryAdd_50
_Z20R_SortedHistoryEntryiii19GfxSortedHistoryAdd_10:
	xor esi, esi
	jmp _Z20R_SortedHistoryEntryiii19GfxSortedHistoryAdd_30
_Z20R_SortedHistoryEntryiii19GfxSortedHistoryAdd_90:
	lea ebx, [esi+esi*2]
	add ebx, ebx
	sub [ebp-0x20], esi
	mov edi, [ebp-0x20]
	lea eax, [edi+edi*2]
	add eax, eax
	mov [esp+0x8], eax
	mov eax, [s_vc_log]
	add eax, ebx
	mov [esp+0x4], eax
	add eax, 0x6
	mov [esp], eax
	call memmove
	mov eax, [s_vc_log]
	movzx edx, word [ebp-0x2c]
	mov [ebx+eax], dx
	mov eax, [s_vc_log]
	movzx ecx, word [ebp-0x24]
	mov [ebx+eax+0x2], cx
	mov eax, [s_vc_log]
	movzx edi, word [ebp-0x28]
	mov [ebx+eax+0x4], di
	add dword [s_vc_log+0x4], 0x1
	mov edx, esi
	jmp _Z20R_SortedHistoryEntryiii19GfxSortedHistoryAdd_50
	nop


;R_GetLightGridSampleEntryQuad(GfxLightGrid const*, unsigned int const*, GfxLightGridEntry const**, unsigned int*)
_Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x44
	mov esi, eax
	mov [ebp-0x48], edx
	mov edi, ecx
	mov eax, [eax+0x14]
	movzx edx, word [esi+eax*2+0x8]
	mov ebx, [ebp-0x48]
	mov ecx, [ebx+eax*4]
	sub ecx, edx
	movzx eax, word [esi+eax*2+0xe]
	sub eax, edx
	add eax, 0x1
	cmp ecx, eax
	jae _Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_10
	mov eax, [esi+0x1c]
	movzx eax, word [eax+ecx*2]
	cmp ax, 0xffff
	jz _Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_10
	movzx edx, ax
	mov eax, [esi+0x24]
	lea edx, [eax+edx*4]
	mov [ebp-0x34], edx
	mov eax, [esi+0x18]
	movzx edx, word [edx]
	mov ecx, [ebp-0x48]
	mov ebx, [ecx+eax*4]
	sub ebx, edx
	mov edx, [ebp-0x34]
	movzx eax, word [edx+0x4]
	mov ecx, [ecx+0x8]
	sub ecx, eax
	mov [ebp-0x3c], ecx
	lea ecx, [ebx+0x1]
	movzx eax, word [edx+0x2]
	cmp ecx, eax
	ja _Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_10
	movzx eax, word [edx+0x6]
	mov [ebp-0x42], ax
	mov edx, [ebp-0x3c]
	add edx, 0x1
	movzx eax, ax
	cmp edx, eax
	jbe _Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_20
	mov dword [edi], 0x0
	mov dword [edi+0x4], 0x0
	mov dword [edi+0x8], 0x0
	mov dword [edi+0xc], 0x0
	mov edx, [ebp-0x34]
	movzx eax, word [edx+0x4]
	mov ecx, [ebp-0x48]
	cmp [ecx+0x8], eax
	jae _Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_30
	mov ebx, [ebp+0x8]
	mov dword [ebx], 0x0
	jmp _Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_30
_Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_10:
	mov dword [edi], 0x0
	mov dword [edi+0x4], 0x0
	mov dword [edi+0x8], 0x0
	mov dword [edi+0xc], 0x0
_Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_30:
	add esp, 0x44
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_20:
	mov eax, [ebp-0x34]
	mov eax, [eax+0x8]
	mov [ebp-0x10], eax
	mov edx, [ebp-0x34]
	add edx, 0xc
	mov [ebp-0x14], edx
	cmp ebx, 0xffffffff
	jz _Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_40
	cmp word [ebp-0x42], 0x100
	sbb eax, eax
	add eax, 0x4
	mov [ebp-0x2c], eax
	mov edx, [ebp-0x34]
	movzx eax, byte [edx+0xc]
	movzx edx, al
	cmp ebx, edx
	jae _Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_50
_Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_140:
	mov eax, [ebp-0x14]
	add eax, 0x1
	mov [ebp-0x40], eax
	mov edx, [ebp-0x14]
	cmp byte [edx+0x1], 0x0
	jz _Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_60
	mov eax, edx
	movzx edx, byte [edx+0x2]
	cmp word [ebp-0x42], 0xff
	jbe _Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_70
	movzx eax, byte [eax+0x3]
	mov [ebp-0x50], eax
	shl eax, 0x8
	add edx, eax
_Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_70:
	cmp edx, [ebp-0x3c]
	jbe _Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_80
	mov eax, [ebp+0x8]
	mov dword [eax], 0x0
_Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_80:
	mov eax, [ebp-0x3c]
	sub eax, edx
	mov [ebp-0x18], eax
	mov eax, [ebp-0x14]
	movzx edx, byte [eax+0x1]
	imul ebx, edx
	mov eax, [ebp-0x10]
	add eax, ebx
	mov ebx, [ebp-0x18]
	add ebx, eax
	cmp [ebp-0x18], edx
	jb _Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_90
	xor eax, eax
_Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_250:
	mov [edi], eax
	lea edx, [edi+0x4]
	mov eax, [ebp-0x18]
	add eax, 0x1
	mov [ebp-0x28], eax
	mov eax, [ebp-0x40]
	movzx eax, byte [eax]
	cmp [ebp-0x28], eax
	jb _Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_100
	xor eax, eax
_Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_240:
	mov [edx], eax
	mov edx, [ebp-0x14]
	movzx eax, byte [edx]
	cmp eax, ecx
	jbe _Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_110
	mov ecx, [ebp-0x40]
	movzx eax, byte [ecx]
	lea ecx, [ebx+eax]
	lea edx, [edi+0x8]
	cmp [ebp-0x18], eax
	jb _Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_120
	xor eax, eax
_Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_290:
	mov [edx], eax
	lea edx, [edi+0xc]
	mov ebx, [ebp-0x40]
	movzx eax, byte [ebx]
	cmp [ebp-0x28], eax
	jb _Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_130
	xor eax, eax
	mov [edx], eax
	jmp _Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_30
_Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_50:
	sub ebx, edx
	mov edx, [ebp-0x14]
	movzx ecx, byte [edx+0x1]
	movzx eax, al
	movzx edx, cl
	imul eax, edx
	add [ebp-0x10], eax
	mov eax, 0x2
	test cl, cl
	cmovnz eax, [ebp-0x2c]
	add [ebp-0x14], eax
	mov ecx, [ebp-0x14]
	movzx eax, byte [ecx]
	movzx edx, al
	cmp edx, ebx
	jbe _Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_50
	lea ecx, [ebx+0x1]
	jmp _Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_140
_Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_60:
	mov dword [edi], 0x0
	mov dword [edi+0x4], 0x0
	movzx ebx, byte [edx+0x3]
	test bl, bl
	jz _Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_150
	mov eax, [ebp-0x14]
	movzx edx, byte [eax+0x4]
	mov eax, [ebp-0x34]
	cmp word [eax+0x6], 0xff
	jbe _Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_160
	mov eax, [ebp-0x14]
	movzx eax, byte [eax+0x5]
	mov [ebp-0x50], eax
	shl eax, 0x8
	add edx, eax
_Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_160:
	movzx eax, bl
	lea eax, [edx+eax]
	cmp [ebp-0x3c], eax
	jae _Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_150
	mov edx, [ebp+0x8]
	mov dword [edx], 0x0
_Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_150:
	mov ebx, [ebp-0x14]
	movzx eax, byte [ebx]
	cmp ecx, eax
	jb _Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_170
_Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_110:
	mov eax, [esi+0x18]
	mov edx, [ebp-0x48]
	mov ecx, [edx+eax*4]
	add ecx, 0x1
	mov ebx, [ebp-0x34]
	movzx eax, word [ebx]
	movzx edx, word [ebx+0x2]
	add eax, edx
	cmp ecx, eax
	jz _Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_170
	mov eax, [ebp-0x40]
	movzx ecx, byte [eax]
	mov edx, [ebp-0x14]
	movzx eax, byte [edx]
	movzx edx, cl
	imul eax, edx
	add eax, [ebp-0x10]
	mov [ebp-0x30], eax
	mov eax, 0x2
	test cl, cl
	cmovnz eax, [ebp-0x2c]
	mov ebx, [ebp-0x14]
	lea ecx, [eax+ebx]
	movzx ebx, byte [ecx+0x2]
	mov eax, [ebp-0x34]
	cmp word [eax+0x6], 0xff
	jbe _Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_180
	movzx eax, byte [ecx+0x3]
	shl eax, 0x8
	add ebx, eax
_Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_180:
	mov edx, [ebp-0x3c]
	sub edx, ebx
	mov ebx, [ebp-0x30]
	add ebx, edx
	mov [ebp-0x38], ebx
	lea ebx, [edi+0x8]
	lea eax, [ecx+0x1]
	mov [ebp-0x24], eax
	movzx eax, byte [ecx+0x1]
	cmp edx, eax
	jb _Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_190
	xor eax, eax
_Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_280:
	mov [ebx], eax
	lea ecx, [edi+0xc]
	add edx, 0x1
	mov ebx, [ebp-0x24]
	movzx eax, byte [ebx]
	cmp edx, eax
	jb _Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_200
	xor eax, eax
	mov [ecx], eax
	jmp _Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_30
_Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_40:
	mov dword [edi], 0x0
	mov dword [edi+0x4], 0x0
	movzx ebx, byte [edx+0x2]
	mov ecx, [ebp-0x34]
	cmp word [ecx+0x6], 0xff
	jbe _Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_210
	movzx eax, byte [edx+0x3]
	shl eax, 0x8
	add ebx, eax
_Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_210:
	mov edx, [ebp-0x3c]
	sub edx, ebx
	mov eax, [ebp-0x10]
	add eax, edx
	mov [ebp-0x1c], eax
	lea ecx, [edi+0x8]
	mov [ebp-0x4c], ecx
	mov eax, [ebp-0x34]
	add eax, 0xd
	mov [ebp-0x20], eax
	mov ecx, [ebp-0x34]
	movzx ecx, byte [ecx+0xd]
	cmp edx, ecx
	jb _Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_220
	xor eax, eax
_Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_270:
	mov ecx, [ebp-0x4c]
	mov [ecx], eax
	lea ecx, [edi+0xc]
	add edx, 0x1
	mov edi, [ebp-0x20]
	movzx eax, byte [edi]
	cmp edx, eax
	jb _Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_230
	xor eax, eax
_Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_260:
	mov [ecx], eax
	cmp ebx, [ebp-0x3c]
	jbe _Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_30
	mov ecx, [ebp+0x8]
	mov dword [ecx], 0x0
	jmp _Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_30
_Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_170:
	mov dword [edi+0x8], 0x0
	mov dword [edi+0xc], 0x0
	jmp _Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_30
_Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_100:
	mov eax, [esi+0x2c]
	lea eax, [eax+ebx*4+0x4]
	jmp _Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_240
_Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_90:
	mov eax, [esi+0x2c]
	lea eax, [eax+ebx*4]
	jmp _Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_250
_Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_230:
	mov eax, [esi+0x2c]
	mov edx, [ebp-0x1c]
	lea eax, [eax+edx*4+0x4]
	jmp _Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_260
_Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_220:
	mov eax, [esi+0x2c]
	mov ecx, [ebp-0x1c]
	lea eax, [eax+ecx*4]
	jmp _Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_270
_Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_200:
	mov eax, [esi+0x2c]
	mov edi, [ebp-0x38]
	lea eax, [eax+edi*4+0x4]
	mov [ecx], eax
	jmp _Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_30
_Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_190:
	mov eax, [esi+0x2c]
	mov ecx, [ebp-0x38]
	lea eax, [eax+ecx*4]
	jmp _Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_280
_Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_130:
	mov eax, [esi+0x2c]
	lea eax, [eax+ecx*4+0x4]
	mov [edx], eax
	jmp _Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_30
_Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_120:
	mov eax, [esi+0x2c]
	lea eax, [eax+ecx*4]
	jmp _Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj_290


;R_SetLightGridColors(GfxLightGridColors const*, unsigned char, unsigned char*)
_Z20R_SetLightGridColorsPK18GfxLightGridColorshPh:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4
	shl edx, 0x18
	movzx esi, byte [eax]
	shl esi, 0x10
	movzx ebx, byte [eax+0x1]
	shl ebx, 0x8
	or esi, ebx
	movzx ebx, byte [eax+0x2]
	or esi, ebx
	or esi, edx
	mov [ecx], esi
	movzx esi, byte [eax+0x3]
	shl esi, 0x10
	movzx ebx, byte [eax+0x4]
	shl ebx, 0x8
	or esi, ebx
	movzx ebx, byte [eax+0x5]
	or esi, ebx
	or esi, edx
	mov [ecx+0x4], esi
	movzx esi, byte [eax+0x6]
	shl esi, 0x10
	movzx ebx, byte [eax+0x7]
	shl ebx, 0x8
	or esi, ebx
	movzx ebx, byte [eax+0x8]
	or esi, ebx
	or esi, edx
	mov [ecx+0x8], esi
	movzx esi, byte [eax+0x9]
	shl esi, 0x10
	movzx ebx, byte [eax+0xa]
	shl ebx, 0x8
	or esi, ebx
	movzx ebx, byte [eax+0xb]
	or esi, ebx
	or esi, edx
	mov [ecx+0xc], esi
	mov ebx, [s_lightGridRowDelta]
	mov [ebp-0x10], ebx
	add ecx, ebx
	movzx esi, byte [eax+0xc]
	shl esi, 0x10
	movzx ebx, byte [eax+0xd]
	shl ebx, 0x8
	or esi, ebx
	movzx ebx, byte [eax+0xe]
	or esi, ebx
	or esi, edx
	mov [ecx], esi
	movzx esi, byte [eax+0xf]
	shl esi, 0x10
	movzx ebx, byte [eax+0x10]
	shl ebx, 0x8
	or esi, ebx
	movzx ebx, byte [eax+0x11]
	or esi, ebx
	or esi, edx
	mov [ecx+0x4], esi
	movzx esi, byte [eax+0x12]
	shl esi, 0x10
	movzx ebx, byte [eax+0x13]
	shl ebx, 0x8
	or esi, ebx
	movzx ebx, byte [eax+0x14]
	or esi, ebx
	or esi, edx
	mov [ecx+0x8], esi
	movzx esi, byte [eax+0x15]
	shl esi, 0x10
	movzx ebx, byte [eax+0x16]
	shl ebx, 0x8
	or esi, ebx
	movzx ebx, byte [eax+0x17]
	or esi, ebx
	or esi, edx
	mov [ecx+0xc], esi
	add ecx, [ebp-0x10]
	movzx esi, byte [eax+0x18]
	shl esi, 0x10
	movzx ebx, byte [eax+0x19]
	shl ebx, 0x8
	or esi, ebx
	movzx ebx, byte [eax+0x1a]
	or esi, ebx
	or esi, edx
	mov [ecx], esi
	movzx esi, byte [eax+0x1b]
	shl esi, 0x10
	movzx ebx, byte [eax+0x1c]
	shl ebx, 0x8
	or esi, ebx
	movzx ebx, byte [eax+0x1d]
	or esi, ebx
	or esi, edx
	mov [ecx+0x4], esi
	movzx esi, byte [eax+0x1e]
	shl esi, 0x10
	movzx ebx, byte [eax+0x1f]
	shl ebx, 0x8
	or esi, ebx
	movzx ebx, byte [eax+0x20]
	or esi, ebx
	or esi, edx
	mov [ecx+0x8], esi
	movzx esi, byte [eax+0x21]
	shl esi, 0x10
	movzx ebx, byte [eax+0x22]
	shl ebx, 0x8
	or esi, ebx
	movzx ebx, byte [eax+0x23]
	or esi, ebx
	or esi, edx
	mov [ecx+0xc], esi
	add ecx, [ebp-0x10]
	movzx esi, byte [eax+0x24]
	shl esi, 0x10
	movzx ebx, byte [eax+0x25]
	shl ebx, 0x8
	or esi, ebx
	movzx ebx, byte [eax+0x26]
	or esi, ebx
	or esi, edx
	mov [ecx], esi
	movzx esi, byte [eax+0x27]
	shl esi, 0x10
	movzx ebx, byte [eax+0x28]
	shl ebx, 0x8
	or esi, ebx
	movzx ebx, byte [eax+0x29]
	or esi, ebx
	or esi, edx
	mov [ecx+0x4], esi
	movzx esi, byte [eax+0x2a]
	shl esi, 0x10
	movzx ebx, byte [eax+0x2b]
	shl ebx, 0x8
	or esi, ebx
	movzx ebx, byte [eax+0x2c]
	or esi, ebx
	or esi, edx
	mov [ecx+0x8], esi
	movzx esi, byte [eax+0x2d]
	shl esi, 0x10
	movzx ebx, byte [eax+0x2e]
	shl ebx, 0x8
	or esi, ebx
	movzx ebx, byte [eax+0x2f]
	or esi, ebx
	or esi, edx
	mov [ecx+0xc], esi
	mov edi, [s_lightGridSliceDelta]
	add ecx, edi
	movzx esi, byte [eax+0x30]
	shl esi, 0x10
	movzx ebx, byte [eax+0x31]
	shl ebx, 0x8
	or esi, ebx
	movzx ebx, byte [eax+0x32]
	or esi, ebx
	or esi, edx
	mov [ecx], esi
	movzx esi, byte [eax+0x33]
	shl esi, 0x10
	movzx ebx, byte [eax+0x34]
	shl ebx, 0x8
	or esi, ebx
	movzx ebx, byte [eax+0x35]
	or esi, ebx
	or esi, edx
	mov [ecx+0x4], esi
	movzx esi, byte [eax+0x36]
	shl esi, 0x10
	movzx ebx, byte [eax+0x37]
	shl ebx, 0x8
	or esi, ebx
	movzx ebx, byte [eax+0x38]
	or esi, ebx
	or esi, edx
	mov [ecx+0x8], esi
	movzx esi, byte [eax+0x39]
	shl esi, 0x10
	movzx ebx, byte [eax+0x3a]
	shl ebx, 0x8
	or esi, ebx
	movzx ebx, byte [eax+0x3b]
	or esi, ebx
	or esi, edx
	mov [ecx+0xc], esi
	add ecx, [ebp-0x10]
	movzx esi, byte [eax+0x3c]
	shl esi, 0x10
	movzx ebx, byte [eax+0x3d]
	shl ebx, 0x8
	or esi, ebx
	movzx ebx, byte [eax+0x3e]
	or esi, ebx
	or esi, edx
	mov [ecx], esi
	movzx esi, byte [eax]
	shl esi, 0x10
	movzx ebx, byte [eax+0x1]
	shl ebx, 0x8
	or esi, ebx
	movzx ebx, byte [eax+0x2]
	or esi, ebx
	or esi, edx
	mov [ecx+0x4], esi
	movzx esi, byte [eax+0x9]
	shl esi, 0x10
	movzx ebx, byte [eax+0xa]
	shl ebx, 0x8
	or esi, ebx
	movzx ebx, byte [eax+0xb]
	or esi, ebx
	or esi, edx
	mov [ecx+0x8], esi
	movzx esi, byte [eax+0x3f]
	shl esi, 0x10
	movzx ebx, byte [eax+0x40]
	shl ebx, 0x8
	or esi, ebx
	movzx ebx, byte [eax+0x41]
	or esi, ebx
	or esi, edx
	mov [ecx+0xc], esi
	add ecx, [ebp-0x10]
	movzx esi, byte [eax+0x42]
	shl esi, 0x10
	movzx ebx, byte [eax+0x43]
	shl ebx, 0x8
	or esi, ebx
	movzx ebx, byte [eax+0x44]
	or esi, ebx
	or esi, edx
	mov [ecx], esi
	movzx esi, byte [eax+0x24]
	shl esi, 0x10
	movzx ebx, byte [eax+0x25]
	shl ebx, 0x8
	or esi, ebx
	movzx ebx, byte [eax+0x26]
	or esi, ebx
	or esi, edx
	mov [ecx+0x4], esi
	movzx esi, byte [eax+0x2d]
	shl esi, 0x10
	movzx ebx, byte [eax+0x2e]
	shl ebx, 0x8
	or esi, ebx
	movzx ebx, byte [eax+0x2f]
	or esi, ebx
	or esi, edx
	mov [ecx+0x8], esi
	movzx esi, byte [eax+0x45]
	shl esi, 0x10
	movzx ebx, byte [eax+0x46]
	shl ebx, 0x8
	or esi, ebx
	movzx ebx, byte [eax+0x47]
	or esi, ebx
	or esi, edx
	mov [ecx+0xc], esi
	add ecx, [ebp-0x10]
	movzx esi, byte [eax+0x48]
	shl esi, 0x10
	movzx ebx, byte [eax+0x49]
	shl ebx, 0x8
	or esi, ebx
	movzx ebx, byte [eax+0x4a]
	or esi, ebx
	or esi, edx
	mov [ecx], esi
	movzx esi, byte [eax+0x4b]
	shl esi, 0x10
	movzx ebx, byte [eax+0x4c]
	shl ebx, 0x8
	or esi, ebx
	movzx ebx, byte [eax+0x4d]
	or esi, ebx
	or esi, edx
	mov [ecx+0x4], esi
	movzx esi, byte [eax+0x4e]
	shl esi, 0x10
	movzx ebx, byte [eax+0x4f]
	shl ebx, 0x8
	or esi, ebx
	movzx ebx, byte [eax+0x50]
	or esi, ebx
	or esi, edx
	mov [ecx+0x8], esi
	movzx esi, byte [eax+0x51]
	shl esi, 0x10
	movzx ebx, byte [eax+0x52]
	shl ebx, 0x8
	or esi, ebx
	movzx ebx, byte [eax+0x53]
	or esi, ebx
	or esi, edx
	mov [ecx+0xc], esi
	lea ecx, [edi+ecx]
	movzx esi, byte [eax+0x54]
	shl esi, 0x10
	movzx ebx, byte [eax+0x55]
	shl ebx, 0x8
	or esi, ebx
	movzx ebx, byte [eax+0x56]
	or esi, ebx
	or esi, edx
	mov [ecx], esi
	movzx esi, byte [eax+0x57]
	shl esi, 0x10
	movzx ebx, byte [eax+0x58]
	shl ebx, 0x8
	or esi, ebx
	movzx ebx, byte [eax+0x59]
	or esi, ebx
	or esi, edx
	mov [ecx+0x4], esi
	movzx esi, byte [eax+0x5a]
	shl esi, 0x10
	movzx ebx, byte [eax+0x5b]
	shl ebx, 0x8
	or esi, ebx
	movzx ebx, byte [eax+0x5c]
	or esi, ebx
	or esi, edx
	mov [ecx+0x8], esi
	movzx esi, byte [eax+0x5d]
	shl esi, 0x10
	movzx ebx, byte [eax+0x5e]
	shl ebx, 0x8
	or esi, ebx
	movzx ebx, byte [eax+0x5f]
	or esi, ebx
	or esi, edx
	mov [ecx+0xc], esi
	add ecx, [ebp-0x10]
	movzx esi, byte [eax+0x60]
	shl esi, 0x10
	movzx ebx, byte [eax+0x61]
	shl ebx, 0x8
	or esi, ebx
	movzx ebx, byte [eax+0x62]
	or esi, ebx
	or esi, edx
	mov [ecx], esi
	movzx esi, byte [eax+0x78]
	shl esi, 0x10
	movzx ebx, byte [eax+0x79]
	shl ebx, 0x8
	or esi, ebx
	movzx ebx, byte [eax+0x7a]
	or esi, ebx
	or esi, edx
	mov [ecx+0x4], esi
	movzx esi, byte [eax+0x81]
	shl esi, 0x10
	movzx ebx, byte [eax+0x82]
	shl ebx, 0x8
	or esi, ebx
	movzx ebx, byte [eax+0x83]
	or esi, ebx
	or esi, edx
	mov [ecx+0x8], esi
	movzx esi, byte [eax+0x63]
	shl esi, 0x10
	movzx ebx, byte [eax+0x64]
	shl ebx, 0x8
	or esi, ebx
	movzx ebx, byte [eax+0x65]
	or esi, ebx
	or esi, edx
	mov [ecx+0xc], esi
	add ecx, [ebp-0x10]
	movzx esi, byte [eax+0x66]
	shl esi, 0x10
	movzx ebx, byte [eax+0x67]
	shl ebx, 0x8
	or esi, ebx
	movzx ebx, byte [eax+0x68]
	or esi, ebx
	or esi, edx
	mov [ecx], esi
	movzx esi, byte [eax+0x9c]
	shl esi, 0x10
	movzx ebx, byte [eax+0x9d]
	shl ebx, 0x8
	or esi, ebx
	movzx ebx, byte [eax+0x9e]
	or esi, ebx
	or esi, edx
	mov [ecx+0x4], esi
	movzx esi, byte [eax+0xa5]
	shl esi, 0x10
	movzx ebx, byte [eax+0xa6]
	shl ebx, 0x8
	or esi, ebx
	movzx ebx, byte [eax+0xa7]
	or esi, ebx
	or esi, edx
	mov [ecx+0x8], esi
	movzx esi, byte [eax+0x69]
	shl esi, 0x10
	movzx ebx, byte [eax+0x6a]
	shl ebx, 0x8
	or esi, ebx
	movzx ebx, byte [eax+0x6b]
	or esi, ebx
	or esi, edx
	mov [ecx+0xc], esi
	add ecx, [ebp-0x10]
	movzx esi, byte [eax+0x6c]
	shl esi, 0x10
	movzx ebx, byte [eax+0x6d]
	shl ebx, 0x8
	or esi, ebx
	movzx ebx, byte [eax+0x6e]
	or esi, ebx
	or esi, edx
	mov [ecx], esi
	movzx esi, byte [eax+0x6f]
	shl esi, 0x10
	movzx ebx, byte [eax+0x70]
	shl ebx, 0x8
	or esi, ebx
	movzx ebx, byte [eax+0x71]
	or esi, ebx
	or esi, edx
	mov [ecx+0x4], esi
	movzx esi, byte [eax+0x72]
	shl esi, 0x10
	movzx ebx, byte [eax+0x73]
	shl ebx, 0x8
	or esi, ebx
	movzx ebx, byte [eax+0x74]
	or esi, ebx
	or esi, edx
	mov [ecx+0x8], esi
	movzx esi, byte [eax+0x75]
	shl esi, 0x10
	movzx ebx, byte [eax+0x76]
	shl ebx, 0x8
	or esi, ebx
	movzx ebx, byte [eax+0x77]
	or esi, ebx
	or esi, edx
	mov [ecx+0xc], esi
	add edi, ecx
	movzx ebx, byte [eax+0x78]
	shl ebx, 0x10
	movzx ecx, byte [eax+0x79]
	shl ecx, 0x8
	or ebx, ecx
	movzx ecx, byte [eax+0x7a]
	or ebx, ecx
	or ebx, edx
	mov [edi], ebx
	movzx ebx, byte [eax+0x7b]
	shl ebx, 0x10
	movzx ecx, byte [eax+0x7c]
	shl ecx, 0x8
	or ebx, ecx
	movzx ecx, byte [eax+0x7d]
	or ebx, ecx
	or ebx, edx
	mov [edi+0x4], ebx
	movzx ebx, byte [eax+0x7e]
	shl ebx, 0x10
	movzx ecx, byte [eax+0x7f]
	shl ecx, 0x8
	or ebx, ecx
	movzx ecx, byte [eax+0x80]
	or ebx, ecx
	or ebx, edx
	mov [edi+0x8], ebx
	movzx ebx, byte [eax+0x81]
	shl ebx, 0x10
	movzx ecx, byte [eax+0x82]
	shl ecx, 0x8
	or ebx, ecx
	movzx ecx, byte [eax+0x83]
	or ebx, ecx
	or ebx, edx
	mov [edi+0xc], ebx
	add edi, [ebp-0x10]
	movzx ebx, byte [eax+0x84]
	shl ebx, 0x10
	movzx ecx, byte [eax+0x85]
	shl ecx, 0x8
	or ebx, ecx
	movzx ecx, byte [eax+0x86]
	or ebx, ecx
	or ebx, edx
	mov [edi], ebx
	movzx ebx, byte [eax+0x87]
	shl ebx, 0x10
	movzx ecx, byte [eax+0x88]
	shl ecx, 0x8
	or ebx, ecx
	movzx ecx, byte [eax+0x89]
	or ebx, ecx
	or ebx, edx
	mov [edi+0x4], ebx
	movzx ebx, byte [eax+0x8a]
	shl ebx, 0x10
	movzx ecx, byte [eax+0x8b]
	shl ecx, 0x8
	or ebx, ecx
	movzx ecx, byte [eax+0x8c]
	or ebx, ecx
	or ebx, edx
	mov [edi+0x8], ebx
	movzx ebx, byte [eax+0x8d]
	shl ebx, 0x10
	movzx ecx, byte [eax+0x8e]
	shl ecx, 0x8
	or ebx, ecx
	movzx ecx, byte [eax+0x8f]
	or ebx, ecx
	or ebx, edx
	mov [edi+0xc], ebx
	add edi, [ebp-0x10]
	movzx ebx, byte [eax+0x90]
	shl ebx, 0x10
	movzx ecx, byte [eax+0x91]
	shl ecx, 0x8
	or ebx, ecx
	movzx ecx, byte [eax+0x92]
	or ebx, ecx
	or ebx, edx
	mov [edi], ebx
	movzx ebx, byte [eax+0x93]
	shl ebx, 0x10
	movzx ecx, byte [eax+0x94]
	shl ecx, 0x8
	or ebx, ecx
	movzx ecx, byte [eax+0x95]
	or ebx, ecx
	or ebx, edx
	mov [edi+0x4], ebx
	movzx ebx, byte [eax+0x96]
	shl ebx, 0x10
	movzx ecx, byte [eax+0x97]
	shl ecx, 0x8
	or ebx, ecx
	movzx ecx, byte [eax+0x98]
	or ebx, ecx
	or ebx, edx
	mov [edi+0x8], ebx
	movzx ebx, byte [eax+0x99]
	shl ebx, 0x10
	movzx ecx, byte [eax+0x9a]
	shl ecx, 0x8
	or ebx, ecx
	movzx ecx, byte [eax+0x9b]
	or ebx, ecx
	or ebx, edx
	mov [edi+0xc], ebx
	mov esi, [ebp-0x10]
	add esi, edi
	movzx ebx, byte [eax+0x9c]
	shl ebx, 0x10
	movzx ecx, byte [eax+0x9d]
	shl ecx, 0x8
	or ebx, ecx
	movzx ecx, byte [eax+0x9e]
	or ebx, ecx
	or ebx, edx
	mov [esi], ebx
	movzx ebx, byte [eax+0x9f]
	shl ebx, 0x10
	movzx ecx, byte [eax+0xa0]
	shl ecx, 0x8
	or ebx, ecx
	movzx ecx, byte [eax+0xa1]
	or ebx, ecx
	or ebx, edx
	mov [esi+0x4], ebx
	movzx ebx, byte [eax+0xa2]
	shl ebx, 0x10
	movzx ecx, byte [eax+0xa3]
	shl ecx, 0x8
	or ebx, ecx
	movzx ecx, byte [eax+0xa4]
	or ebx, ecx
	or ebx, edx
	mov [esi+0x8], ebx
	movzx ebx, byte [eax+0xa5]
	shl ebx, 0x10
	movzx ecx, byte [eax+0xa6]
	shl ecx, 0x8
	or ebx, ecx
	movzx eax, byte [eax+0xa7]
	or ebx, eax
	or edx, ebx
	mov [esi+0xc], edx
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;R_LightGridLookup(GfxLightGrid const*, float const*, float*, GfxLightGridEntry const**, unsigned int*)
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xbc
	mov [ebp-0x74], eax
	mov [ebp-0x78], edx
	mov esi, ecx
	mov edi, [ebp+0xc]
	mov eax, [edx]
	mov [esp], eax
	call floorf
	fstp dword [ebp-0x7c]
	cvttss2si eax, [ebp-0x7c]
	add eax, 0x20000
	sar eax, 0x5
	mov [ebp-0x38], eax
	mov eax, [ebp-0x78]
	add eax, 0x4
	mov [ebp-0x70], eax
	mov edx, [ebp-0x78]
	mov eax, [edx+0x4]
	mov [esp], eax
	call floorf
	fstp dword [ebp-0x80]
	cvttss2si eax, [ebp-0x80]
	add eax, 0x20000
	sar eax, 0x5
	mov [ebp-0x34], eax
	mov ecx, [ebp-0x78]
	add ecx, 0x8
	mov [ebp-0x6c], ecx
	mov edx, [ebp-0x78]
	mov eax, [edx+0x8]
	mov [esp], eax
	call floorf
	fstp dword [ebp-0x84]
	cvttss2si eax, [ebp-0x84]
	lea ecx, [eax+0x20000]
	sar ecx, 0x6
	mov [ebp-0x30], ecx
	mov edx, [ebp-0x74]
	mov eax, [edx+0x14]
	movss xmm3, dword [_float_131072_00000000]
	mov edx, [ebp-0x78]
	movss xmm1, dword [edx+eax*4]
	addss xmm1, xmm3
	movss xmm2, dword [_float_0_03125000]
	mulss xmm1, xmm2
	mov edx, [ebp+eax*4-0x38]
	test edx, edx
	js _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_10
	cvtsi2ss xmm0, edx
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_550:
	movaps xmm6, xmm1
	subss xmm6, xmm0
	mov edx, [ebp-0x74]
	mov eax, [edx+0x18]
	mov edx, [ebp-0x78]
	movss xmm0, dword [edx+eax*4]
	addss xmm0, xmm3
	mulss xmm0, xmm2
	mov edx, [ebp+eax*4-0x38]
	test edx, edx
	js _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_20
	cvtsi2ss xmm1, edx
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_570:
	movaps xmm7, xmm0
	subss xmm7, xmm1
	mov eax, [ebp-0x6c]
	movss xmm0, dword [eax]
	addss xmm0, xmm3
	mulss xmm0, [_float_0_01562500]
	test ecx, ecx
	js _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_30
	cvtsi2ss xmm3, ecx
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_560:
	subss xmm0, xmm3
	movaps xmm3, xmm0
	movss xmm2, dword [_float_1_00000000]
	movaps xmm4, xmm2
	subss xmm4, xmm7
	movaps xmm5, xmm2
	subss xmm5, xmm0
	movaps xmm1, xmm4
	mulss xmm1, xmm5
	subss xmm2, xmm6
	movaps xmm0, xmm1
	mulss xmm0, xmm2
	movss [esi], xmm0
	mulss xmm1, xmm6
	movss [esi+0x10], xmm1
	movaps xmm0, xmm3
	mulss xmm0, xmm4
	movaps xmm1, xmm2
	mulss xmm1, xmm0
	movss [esi+0x4], xmm1
	mulss xmm0, xmm6
	movss [esi+0x14], xmm0
	movaps xmm0, xmm7
	mulss xmm0, xmm5
	movaps xmm1, xmm2
	mulss xmm1, xmm0
	movss [esi+0x8], xmm1
	mulss xmm0, xmm6
	movss [esi+0x18], xmm0
	movaps xmm0, xmm7
	mulss xmm0, xmm3
	mulss xmm2, xmm0
	movss [esi+0xc], xmm2
	mulss xmm6, xmm0
	movss [esi+0x1c], xmm6
	mov dword [edi], 0x1
	lea ebx, [ebp-0x38]
	mov [esp], edi
	mov ecx, [ebp+0x8]
	mov edx, ebx
	mov eax, [ebp-0x74]
	call _Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj
	mov edx, [ebp-0x74]
	mov eax, [edx+0x14]
	add dword [ebp+eax*4-0x38], 0x1
	mov ecx, [ebp+0x8]
	add ecx, 0x10
	mov [esp], edi
	mov edx, ebx
	mov eax, [ebp-0x74]
	call _Z29R_GetLightGridSampleEntryQuadPK12GfxLightGridPKjPPK17GfxLightGridEntryPj
	mov ecx, [ebp-0x74]
	mov eax, [ecx+0x14]
	sub dword [ebp+eax*4-0x38], 0x1
	mov eax, r_vc_makelog
	mov eax, [eax]
	mov edx, [eax+0xc]
	test edx, edx
	jz _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_40
	mov eax, [ecx+0x14]
	test eax, eax
	jz _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_50
	mov dword [ebp-0x58], 0x2
	mov edi, 0x4
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_260:
	xor ebx, ebx
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_60:
	mov ecx, ebx
	and ecx, 0x1
	add ecx, [ebp-0x30]
	xor edx, edx
	test ebx, edi
	setnz dl
	add edx, [ebp-0x34]
	xor eax, eax
	test [ebp-0x58], ebx
	setnz al
	add eax, [ebp-0x38]
	mov dword [esp], 0x1
	call _Z20R_SortedHistoryEntryiii19GfxSortedHistoryAdd
	add ebx, 0x1
	cmp ebx, 0x8
	jnz _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_60
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_40:
	mov edi, esi
	mov byte [ebp-0x61], 0x0
	pxor xmm0, xmm0
	movss [ebp-0x60], xmm0
	mov byte [ebp-0x62], 0x0
	mov dword [ebp-0x68], 0x0
	mov dword [ebp-0x5c], 0x1
	mov ebx, [ebp+0x8]
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_130:
	mov esi, [ebx]
	test esi, esi
	jz _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_70
	movss xmm0, dword [_float_0_00100000]
	ucomiss xmm0, [edi]
	ja _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_80
	movzx eax, byte [esi+0x3]
	test [ebp-0x5c], eax
	jnz _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_90
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_220:
	xor edx, edx
	xor eax, eax
	mov ecx, [ebp-0x68]
	mov [ebp+ecx-0x20], al
	test dl, dl
	jnz _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_100
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_230:
	cmp byte [ebp-0x62], 0x0
	jz _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_110
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_240:
	movss xmm0, dword [edi]
	movzx ecx, byte [esi+0x2]
	movzx eax, byte [ebp-0x61]
	mov edx, ecx
	test al, al
	jz _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_120
	test cl, cl
	jz _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_70
	add al, 0x1
	jz _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_120
	add dl, 0x1
	jz _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_70
	ucomiss xmm0, [ebp-0x60]
	ja _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_120
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_70:
	add dword [ebp-0x68], 0x1
	add ebx, 0x4
	shl dword [ebp-0x5c], 1
	add edi, 0x4
	cmp dword [ebp-0x68], 0x8
	jnz _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_130
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_250:
	mov eax, r_showLightGrid
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_140
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_370:
	movzx eax, byte [ebp-0x61]
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_90:
	mov edx, [ebp-0x38]
	test edx, edx
	js _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_150
	cvtsi2ss xmm0, edx
	movss xmm5, dword [_float_32_00000000]
	mulss xmm0, xmm5
	movss xmm3, dword [_float_131072_00000000]
	subss xmm0, xmm3
	movss [ebp-0x2c], xmm0
	mov edx, [ebp-0x34]
	test edx, edx
	js _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_160
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_500:
	cvtsi2ss xmm0, edx
	mulss xmm0, xmm5
	subss xmm0, xmm3
	movss [ebp-0x28], xmm0
	mov edx, [ebp-0x30]
	test edx, edx
	js _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_170
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_510:
	cvtsi2ss xmm0, edx
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_520:
	movss xmm2, dword [_float_64_00000000]
	mulss xmm0, xmm2
	subss xmm0, xmm3
	movss [ebp-0x24], xmm0
	mov edx, [ebp-0x74]
	mov eax, [edx+0x14]
	movss xmm1, dword [ebp+eax*4-0x2c]
	pxor xmm0, xmm0
	test byte [ebp-0x68], 0x4
	jz _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_180
	movaps xmm0, xmm5
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_180:
	addss xmm0, xmm1
	movss [ebp+eax*4-0x2c], xmm0
	mov ecx, [ebp-0x74]
	mov eax, [ecx+0x18]
	movss xmm0, dword [ebp+eax*4-0x2c]
	pxor xmm1, xmm1
	test byte [ebp-0x68], 0x2
	jz _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_190
	movaps xmm1, xmm5
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_190:
	addss xmm0, xmm1
	movss [ebp+eax*4-0x2c], xmm0
	movss xmm0, dword [ebp-0x24]
	pxor xmm1, xmm1
	test byte [ebp-0x68], 0x1
	jz _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_200
	movaps xmm1, xmm2
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_200:
	movaps xmm7, xmm1
	addss xmm7, xmm0
	movss [ebp-0x24], xmm7
	movss xmm5, dword [ebp-0x2c]
	mov eax, [ebp-0x78]
	movss xmm2, dword [eax]
	subss xmm2, xmm5
	movss xmm6, dword [ebp-0x28]
	mov edx, [ebp-0x70]
	movss xmm3, dword [edx]
	subss xmm3, xmm6
	mov ecx, [ebp-0x6c]
	movss xmm4, dword [ecx]
	subss xmm4, xmm7
	movaps xmm0, xmm2
	mulss xmm0, xmm2
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	addss xmm0, xmm1
	sqrtss xmm0, xmm0
	movss [ebp-0x9c], xmm0
	xorps xmm0, [_data16_80000000]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jb _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_210
	movss xmm0, dword [_float_1_00000000]
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_530:
	mulss xmm2, xmm0
	mulss xmm2, [_float_0_01000000]
	addss xmm5, xmm2
	movss [ebp-0x44], xmm5
	mulss xmm3, xmm0
	mulss xmm3, [_float_0_01000000]
	addss xmm6, xmm3
	movss [ebp-0x40], xmm6
	mulss xmm0, xmm4
	mulss xmm0, [_float_0_01000000]
	addss xmm7, xmm0
	movss [ebp-0x3c], xmm7
	mov dword [esp+0x18], 0x2001
	mov dword [esp+0x14], 0x0
	mov eax, vec3_origin
	mov [esp+0x10], eax
	mov [esp+0xc], eax
	lea eax, [ebp-0x44]
	mov [esp+0x8], eax
	mov eax, [ebp-0x78]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z16CM_BoxSightTraceiPKfS0_S0_S0_ji
	test eax, eax
	jz _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_220
	mov edx, 0x1
	mov eax, 0x1
	mov ecx, [ebp-0x68]
	mov [ebp+ecx-0x20], al
	test dl, dl
	jz _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_230
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_100:
	cmp byte [ebp-0x62], 0x0
	jz _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_240
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_80:
	mov dword [ebx], 0x0
	add dword [ebp-0x68], 0x1
	add ebx, 0x4
	shl dword [ebp-0x5c], 1
	add edi, 0x4
	cmp dword [ebp-0x68], 0x8
	jnz _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_130
	jmp _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_250
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_120:
	mov [ebp-0x61], cl
	movss [ebp-0x60], xmm0
	add dword [ebp-0x68], 0x1
	add ebx, 0x4
	shl dword [ebp-0x5c], 1
	add edi, 0x4
	cmp dword [ebp-0x68], 0x8
	jnz _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_130
	jmp _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_250
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_50:
	mov dword [ebp-0x58], 0x4
	mov edi, 0x2
	jmp _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_260
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_110:
	movss xmm0, dword [edi]
	movss [ebp-0x60], xmm0
	movzx eax, byte [esi+0x2]
	mov [ebp-0x61], al
	mov eax, [ebp-0x68]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov edx, [ebp+0x8]
	mov [esp], edx
	call memset
	mov byte [ebp-0x62], 0x1
	add dword [ebp-0x68], 0x1
	add ebx, 0x4
	shl dword [ebp-0x5c], 1
	add edi, 0x4
	cmp dword [ebp-0x68], 0x8
	jnz _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_130
	jmp _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_250
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_140:
	movzx ecx, byte [ebp-0x62]
	mov [ebp-0x51], cl
	mov eax, [ebp-0x78]
	movss xmm4, dword [eax]
	movss xmm3, dword [_float_0_50000000]
	movaps xmm0, xmm4
	subss xmm0, xmm3
	movss [ebp-0x44], xmm0
	mov edx, [ebp-0x70]
	movss xmm2, dword [edx]
	movaps xmm0, xmm2
	subss xmm0, xmm3
	movss [ebp-0x40], xmm0
	mov ecx, [ebp-0x6c]
	movss xmm1, dword [ecx]
	movaps xmm0, xmm1
	subss xmm0, xmm3
	movss [ebp-0x3c], xmm0
	addss xmm4, xmm3
	movss [ebp-0x2c], xmm4
	addss xmm2, xmm3
	movss [ebp-0x28], xmm2
	addss xmm1, xmm3
	movss [ebp-0x24], xmm1
	mov eax, colorBlue
	mov [esp+0xc], eax
	lea eax, [ebp-0x2c]
	mov [esp+0x8], eax
	lea edx, [ebp-0x44]
	mov [esp+0x4], edx
	mov eax, frontEndDataOut
	mov eax, [eax]
	add eax, 0x11e71c
	mov [esp], eax
	call _Z13R_AddDebugBoxP12DebugGlobalsPKfS2_S2_
	mov edx, [ebp-0x38]
	test edx, edx
	js _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_270
	cvtsi2ss xmm0, edx
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_720:
	movss xmm5, dword [_float_32_00000000]
	movaps xmm4, xmm0
	mulss xmm4, xmm5
	movss xmm3, dword [_float_131072_00000000]
	subss xmm4, xmm3
	mov edx, [ebp-0x34]
	test edx, edx
	js _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_280
	cvtsi2ss xmm0, edx
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_710:
	movaps xmm2, xmm0
	mulss xmm2, xmm5
	subss xmm2, xmm3
	mov edx, [ebp-0x30]
	test edx, edx
	js _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_290
	cvtsi2ss xmm0, edx
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_700:
	movss xmm1, dword [_float_64_00000000]
	mulss xmm0, xmm1
	subss xmm0, xmm3
	movss [ebp-0x2c], xmm4
	movss [ebp-0x28], xmm2
	movss [ebp-0x24], xmm0
	addss xmm4, xmm5
	movss [ebp-0x44], xmm4
	addss xmm5, xmm2
	movss [ebp-0x40], xmm5
	addss xmm0, xmm1
	movss [ebp-0x3c], xmm0
	mov eax, colorWhite
	mov [esp+0xc], eax
	lea ecx, [ebp-0x44]
	mov [esp+0x8], ecx
	lea eax, [ebp-0x2c]
	mov [esp+0x4], eax
	mov eax, frontEndDataOut
	mov eax, [eax]
	add eax, 0x11e71c
	mov [esp], eax
	call _Z13R_AddDebugBoxP12DebugGlobalsPKfS2_S2_
	mov edx, [ebp-0x74]
	mov eax, [edx+0x14]
	test eax, eax
	jnz _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_300
	mov dword [ebp-0x50], 0x4
	mov dword [ebp-0x4c], 0x2
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_540:
	xor edi, edi
	jmp _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_310
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_390:
	cmp byte [ebp+edi-0x20], 0x0
	jz _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_320
	cmp byte [ebp-0x51], 0x0
	jz _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_330
	test edx, edx
	js _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_340
	cvtsi2ss xmm0, edx
	movss xmm5, dword [_float_32_00000000]
	movaps xmm4, xmm0
	mulss xmm4, xmm5
	movss xmm3, dword [_float_131072_00000000]
	subss xmm4, xmm3
	test ebx, ebx
	js _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_350
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_610:
	cvtsi2ss xmm0, ebx
	movaps xmm2, xmm0
	mulss xmm2, xmm5
	subss xmm2, xmm3
	test esi, esi
	js _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_360
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_620:
	cvtsi2ss xmm1, esi
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_630:
	mulss xmm1, [_float_64_00000000]
	subss xmm1, xmm3
	movaps xmm0, xmm4
	subss xmm0, [_float_1_10000002]
	movss [ebp-0x44], xmm0
	movaps xmm0, xmm2
	subss xmm0, [_float_1_10000002]
	movss [ebp-0x40], xmm0
	movaps xmm0, xmm1
	subss xmm0, [_float_1_10000002]
	movss [ebp-0x3c], xmm0
	addss xmm4, [_float_1_10000002]
	movss [ebp-0x2c], xmm4
	movaps xmm0, xmm2
	addss xmm0, [_float_1_10000002]
	movss [ebp-0x28], xmm0
	addss xmm1, [_float_1_10000002]
	movss [ebp-0x24], xmm1
	mov eax, colorRed
	mov [esp+0xc], eax
	lea eax, [ebp-0x2c]
	mov [esp+0x8], eax
	lea edx, [ebp-0x44]
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_430:
	mov [esp+0x4], edx
	mov ecx, frontEndDataOut
	mov eax, [ecx]
	add eax, 0x11e71c
	mov [esp], eax
	call _Z13R_AddDebugBoxP12DebugGlobalsPKfS2_S2_
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_380:
	add edi, 0x1
	cmp edi, 0x8
	jz _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_370
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_310:
	mov eax, [ebp+0x8]
	mov ecx, [eax+edi*4]
	test ecx, ecx
	jz _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_380
	xor edx, edx
	test [ebp-0x50], edi
	setnz dl
	add edx, [ebp-0x38]
	xor ebx, ebx
	test [ebp-0x4c], edi
	setnz bl
	add ebx, [ebp-0x34]
	mov esi, edi
	and esi, 0x1
	add esi, [ebp-0x30]
	movzx eax, byte [ecx+0x3]
	mov ecx, edi
	sar eax, cl
	test al, 0x1
	jnz _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_390
	test edx, edx
	js _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_400
	cvtsi2ss xmm0, edx
	movss xmm5, dword [_float_32_00000000]
	movaps xmm4, xmm0
	mulss xmm4, xmm5
	movss xmm3, dword [_float_131072_00000000]
	subss xmm4, xmm3
	test ebx, ebx
	js _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_410
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_580:
	cvtsi2ss xmm0, ebx
	movaps xmm2, xmm0
	mulss xmm2, xmm5
	subss xmm2, xmm3
	test esi, esi
	js _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_420
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_590:
	cvtsi2ss xmm1, esi
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_600:
	mulss xmm1, [_float_64_00000000]
	subss xmm1, xmm3
	movaps xmm0, xmm4
	subss xmm0, [_float_0_89999998]
	movss [ebp-0x44], xmm0
	movaps xmm0, xmm2
	subss xmm0, [_float_0_89999998]
	movss [ebp-0x40], xmm0
	movaps xmm0, xmm1
	subss xmm0, [_float_0_89999998]
	movss [ebp-0x3c], xmm0
	addss xmm4, [_float_0_89999998]
	movss [ebp-0x2c], xmm4
	movaps xmm0, xmm2
	addss xmm0, [_float_0_89999998]
	movss [ebp-0x28], xmm0
	addss xmm1, [_float_0_89999998]
	movss [ebp-0x24], xmm1
	mov eax, colorGreen
	mov [esp+0xc], eax
	lea eax, [ebp-0x2c]
	mov [esp+0x8], eax
	lea edx, [ebp-0x44]
	jmp _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_430
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_330:
	test edx, edx
	js _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_440
	cvtsi2ss xmm0, edx
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_660:
	movss xmm5, dword [_float_32_00000000]
	movaps xmm4, xmm0
	mulss xmm4, xmm5
	movss xmm3, dword [_float_131072_00000000]
	subss xmm4, xmm3
	test ebx, ebx
	js _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_450
	cvtsi2ss xmm0, ebx
	movaps xmm2, xmm0
	mulss xmm2, xmm5
	subss xmm2, xmm3
	test esi, esi
	js _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_460
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_640:
	cvtsi2ss xmm1, esi
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_650:
	mulss xmm1, [_float_64_00000000]
	subss xmm1, xmm3
	movaps xmm0, xmm4
	subss xmm0, [_float_1_10000002]
	movss [ebp-0x2c], xmm0
	movaps xmm0, xmm2
	subss xmm0, [_float_1_10000002]
	movss [ebp-0x28], xmm0
	movaps xmm0, xmm1
	subss xmm0, [_float_1_10000002]
	movss [ebp-0x24], xmm0
	addss xmm4, [_float_1_10000002]
	movss [ebp-0x44], xmm4
	movaps xmm0, xmm2
	addss xmm0, [_float_1_10000002]
	movss [ebp-0x40], xmm0
	addss xmm1, [_float_1_10000002]
	movss [ebp-0x3c], xmm1
	mov eax, colorOrange
	mov [esp+0xc], eax
	lea eax, [ebp-0x44]
	mov [esp+0x8], eax
	lea edx, [ebp-0x2c]
	jmp _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_430
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_320:
	test edx, edx
	js _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_470
	cvtsi2ss xmm0, edx
	movss xmm5, dword [_float_32_00000000]
	movaps xmm4, xmm0
	mulss xmm4, xmm5
	movss xmm3, dword [_float_131072_00000000]
	subss xmm4, xmm3
	test ebx, ebx
	js _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_480
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_670:
	cvtsi2ss xmm0, ebx
	movaps xmm2, xmm0
	mulss xmm2, xmm5
	subss xmm2, xmm3
	test esi, esi
	js _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_490
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_680:
	cvtsi2ss xmm1, esi
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_690:
	mulss xmm1, [_float_64_00000000]
	subss xmm1, xmm3
	movaps xmm0, xmm4
	subss xmm0, [_float_1_00000000]
	movss [ebp-0x2c], xmm0
	movaps xmm0, xmm2
	subss xmm0, [_float_1_00000000]
	movss [ebp-0x28], xmm0
	movaps xmm0, xmm1
	subss xmm0, [_float_1_00000000]
	movss [ebp-0x24], xmm0
	addss xmm4, [_float_1_00000000]
	movss [ebp-0x44], xmm4
	movaps xmm0, xmm2
	addss xmm0, [_float_1_00000000]
	movss [ebp-0x40], xmm0
	addss xmm1, [_float_1_00000000]
	movss [ebp-0x3c], xmm1
	mov eax, colorYellow
	mov [esp+0xc], eax
	lea eax, [ebp-0x44]
	mov [esp+0x8], eax
	lea edx, [ebp-0x2c]
	jmp _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_430
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_150:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	movss xmm5, dword [_float_32_00000000]
	mulss xmm0, xmm5
	movss xmm3, dword [_float_131072_00000000]
	subss xmm0, xmm3
	movss [ebp-0x2c], xmm0
	mov edx, [ebp-0x34]
	test edx, edx
	jns _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_500
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_160:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	mulss xmm0, xmm5
	subss xmm0, xmm3
	movss [ebp-0x28], xmm0
	mov edx, [ebp-0x30]
	test edx, edx
	jns _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_510
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_170:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_520
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_210:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, dword [ebp-0x9c]
	jmp _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_530
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_300:
	mov dword [ebp-0x50], 0x2
	mov dword [ebp-0x4c], 0x4
	jmp _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_540
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_10:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_550
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_30:
	mov eax, ecx
	shr eax, 1
	and ecx, 0x1
	or eax, ecx
	cvtsi2ss xmm3, eax
	addss xmm3, xmm3
	jmp _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_560
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_20:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm1, eax
	addss xmm1, xmm1
	jmp _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_570
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_400:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	movss xmm5, dword [_float_32_00000000]
	movaps xmm4, xmm0
	mulss xmm4, xmm5
	movss xmm3, dword [_float_131072_00000000]
	subss xmm4, xmm3
	test ebx, ebx
	jns _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_580
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_410:
	mov eax, ebx
	shr eax, 1
	and ebx, 0x1
	or eax, ebx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	movaps xmm2, xmm0
	mulss xmm2, xmm5
	subss xmm2, xmm3
	test esi, esi
	jns _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_590
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_420:
	mov eax, esi
	shr eax, 1
	and esi, 0x1
	or eax, esi
	cvtsi2ss xmm1, eax
	addss xmm1, xmm1
	jmp _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_600
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_340:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	movss xmm5, dword [_float_32_00000000]
	movaps xmm4, xmm0
	mulss xmm4, xmm5
	movss xmm3, dword [_float_131072_00000000]
	subss xmm4, xmm3
	test ebx, ebx
	jns _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_610
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_350:
	mov eax, ebx
	shr eax, 1
	and ebx, 0x1
	or eax, ebx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	movaps xmm2, xmm0
	mulss xmm2, xmm5
	subss xmm2, xmm3
	test esi, esi
	jns _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_620
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_360:
	mov eax, esi
	shr eax, 1
	and esi, 0x1
	or eax, esi
	cvtsi2ss xmm1, eax
	addss xmm1, xmm1
	jmp _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_630
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_450:
	mov eax, ebx
	shr eax, 1
	and ebx, 0x1
	or eax, ebx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	movaps xmm2, xmm0
	mulss xmm2, xmm5
	subss xmm2, xmm3
	test esi, esi
	jns _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_640
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_460:
	mov eax, esi
	shr eax, 1
	and esi, 0x1
	or eax, esi
	cvtsi2ss xmm1, eax
	addss xmm1, xmm1
	jmp _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_650
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_440:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_660
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_470:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	movss xmm5, dword [_float_32_00000000]
	movaps xmm4, xmm0
	mulss xmm4, xmm5
	movss xmm3, dword [_float_131072_00000000]
	subss xmm4, xmm3
	test ebx, ebx
	jns _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_670
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_480:
	mov eax, ebx
	shr eax, 1
	and ebx, 0x1
	or eax, ebx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	movaps xmm2, xmm0
	mulss xmm2, xmm5
	subss xmm2, xmm3
	test esi, esi
	jns _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_680
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_490:
	mov eax, esi
	shr eax, 1
	and esi, 0x1
	or eax, esi
	cvtsi2ss xmm1, eax
	addss xmm1, xmm1
	jmp _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_690
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_290:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_700
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_280:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_710
_Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_270:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj_720
	nop


;R_GetLightingAtPoint(GfxLightGrid const*, float const*, unsigned int, unsigned short, GfxModelLightExtrapolation)
_Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x11c
	movzx eax, word [ebp+0x14]
	mov [ebp-0xda], ax
	lea ecx, [ebp-0x78]
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	lea eax, [ebp-0x58]
	mov [esp], eax
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	call _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj
	movzx edx, al
	mov [ebp-0xc4], edx
	add al, 0x1
	jz _Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_10
	mov ebx, [ebp+0x8]
	cmp byte [ebx], 0x0
	jnz _Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_20
	mov eax, [ebp-0xc4]
	mov edx, [ebp-0xc4]
_Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_150:
	shl eax, 0x6
	lea eax, [eax+edx*4]
	mov [ebp-0xe0], eax
	mov dword [ebp-0xc8], 0x0
	pxor xmm0, xmm0
	movss [ebp-0xd4], xmm0
	movss [ebp-0xd0], xmm0
	movss [ebp-0xcc], xmm0
	mov dword [ebp-0xd8], 0x0
	xor esi, esi
	lea eax, [ebp-0x98]
	mov [ebp-0xf8], eax
	lea edx, [ebp-0x38]
	mov [ebp-0xfc], edx
_Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_100:
	mov ebx, [esi+ebp-0x58]
	test ebx, ebx
	jz _Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_30
	movzx edx, byte [ebx+0x2]
	movzx eax, dl
	cmp [ebp-0xc4], eax
	jz _Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_40
	test dl, dl
	jz _Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_50
	add dl, 0x1
	jz _Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_60
_Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_160:
	movss xmm0, dword [esi+ebp-0x78]
	movss xmm1, dword [ebp-0xd4]
	addss xmm1, xmm0
	movss [ebp-0xd4], xmm1
	movzx edi, word [ebx]
	mov eax, [ebp-0xc8]
	test eax, eax
	jz _Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_70
	movzx ebx, di
	cmp [ebp-0x38], di
	jz _Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_80
	lea ecx, [ebp-0x36]
	xor edx, edx
_Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_90:
	add edx, 0x1
	cmp edx, [ebp-0xc8]
	jz _Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_70
	movzx eax, word [ecx]
	add ecx, 0x2
	cmp eax, ebx
	jnz _Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_90
	lea eax, [edx*4]
_Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_210:
	addss xmm0, [ebp+eax-0x98]
	movss [ebp+eax-0x98], xmm0
_Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_30:
	add dword [ebp-0xd8], 0x1
	add esi, 0x4
	cmp dword [ebp-0xd8], 0x8
	jnz _Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_100
	mov edi, [ebp-0xc8]
	test edi, edi
	jnz _Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_110
	mov esi, [ebp-0x1c]
	movzx edx, word [ebp-0xda]
	cmp dword [ebp+0x18], 0x1
	jz _Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_120
_Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_380:
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x30]
	cmp esi, eax
	jb _Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_130
	sub eax, 0x1
	mov [ebp-0xb8], eax
	movzx edx, dx
	mov [ebp-0xe8], edx
	mov eax, frontEndDataOut
	mov esi, [eax]
	lea eax, [esi+0x118228]
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call iInterlockedExchangeAdd
	mov ebx, eax
	cmp eax, 0xfff
	ja _Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_140
_Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_370:
	lea edx, [ebx+ebx*4]
	lea edx, [esi+edx*8+0xf0220]
	lea ebx, [edx+0x8]
	cld
	mov ecx, 0xa
	xor eax, eax
	mov edi, ebx
	rep stosd
	movzx eax, word [ebp-0xe8]
	mov [edx+0x8], ax
	mov byte [ebx+0x2], 0xff
	mov byte [ebx+0x3], 0x1
	movzx edx, word [ebp-0xb8]
	mov [ebx+0x18], dx
	xor eax, eax
_Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_330:
	movzx eax, al
	mov [ebp-0xc4], eax
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_20:
	mov edi, [ebp-0xc4]
	cmp edi, [ebx+0x4]
	cmovnz edi, [ebp+0x10]
	mov [ebp-0xc4], edi
	mov eax, edi
	mov edx, edi
	jmp _Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_150
_Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_70:
	mov eax, [ebp-0xfc]
	mov [eax], di
	mov edx, [ebp-0xf8]
	movss [edx], xmm0
	add dword [ebp-0xc8], 0x1
	add eax, 0x2
	mov [ebp-0xfc], eax
	add edx, 0x4
	mov [ebp-0xf8], edx
	jmp _Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_30
_Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_60:
	mov eax, [ebp-0xc4]
	test eax, eax
	jz _Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_160
_Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_50:
	mov eax, comWorld
	mov edi, [ebp-0xe0]
	add edi, [eax+0xc]
	cmp byte [edi], 0x1
	jz _Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_170
	mov eax, [ebp+0xc]
	movss xmm0, dword [eax]
	movss [ebp-0xc0], xmm0
	mulss xmm0, [_float_0_03125000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x10c]
	movss xmm0, dword [ebp-0x10c]
	mulss xmm0, [_float_32_00000000]
	movss [ebp-0x28], xmm0
	mov eax, [ebp+0xc]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [_float_0_03125000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x10c]
	movss xmm0, dword [ebp-0x10c]
	mulss xmm0, [_float_32_00000000]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [ebp-0xc0]
	mulss xmm0, [_float_0_01562500]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x10c]
	movss xmm0, dword [ebp-0x10c]
	movss xmm2, dword [_float_64_00000000]
	mulss xmm0, xmm2
	movss [ebp-0x20], xmm0
	mov edx, [ebp+0x8]
	mov eax, [edx+0x14]
	movss xmm1, dword [ebp+eax*4-0x28]
	pxor xmm0, xmm0
	test byte [ebp-0xd8], 0x4
	jz _Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_180
	movss xmm0, dword [_float_32_00000000]
_Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_180:
	addss xmm0, xmm1
	movss [ebp+eax*4-0x28], xmm0
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x18]
	movss xmm0, dword [ebp+eax*4-0x28]
	pxor xmm1, xmm1
	test byte [ebp-0xd8], 0x2
	jz _Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_190
	movss xmm1, dword [_float_32_00000000]
_Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_190:
	addss xmm0, xmm1
	movss [ebp+eax*4-0x28], xmm0
	movss xmm0, dword [ebp-0x20]
	pxor xmm1, xmm1
	test byte [ebp-0xd8], 0x1
	jz _Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_200
	movaps xmm1, xmm2
_Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_200:
	addss xmm0, xmm1
	movss [ebp-0x20], xmm0
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z30Com_CanPrimaryLightAffectPointPK15ComPrimaryLightPKf
	test al, al
	jz _Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_160
_Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_170:
	movss xmm0, dword [ebp-0xcc]
	addss xmm0, [esi+ebp-0x78]
	movss [ebp-0xcc], xmm0
	jmp _Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_160
_Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_40:
	movss xmm0, dword [ebp-0xd0]
	addss xmm0, [esi+ebp-0x78]
	movss [ebp-0xd0], xmm0
	jmp _Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_160
_Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_80:
	xor eax, eax
	jmp _Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_210
_Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_110:
	mov esi, [ebp-0xc4]
	test esi, esi
	jnz _Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_220
	pxor xmm0, xmm0
	movss [ebp-0x9c], xmm0
_Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_310:
	cmp dword [ebp-0xc8], 0x1
	jz _Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_230
_Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_340:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, dword [ebp-0xd4]
	movss [ebp-0xa8], xmm0
	movzx eax, word [ebp-0xda]
	mov [ebp-0xf4], eax
	mov eax, frontEndDataOut
	mov esi, [eax]
	lea eax, [esi+0x118228]
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call iInterlockedExchangeAdd
	mov ebx, eax
	cmp eax, 0xfff
	ja _Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_240
_Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_400:
	lea edx, [ebx+ebx*4]
	lea edx, [esi+edx*8+0xf0220]
	lea ecx, [edx+0x8]
	mov [ebp-0xb0], ecx
	cld
	mov ecx, 0xa
	xor eax, eax
	mov edi, [ebp-0xb0]
	rep stosd
	movzx ebx, word [ebp-0xf4]
	mov [edx+0x8], bx
	movss xmm2, dword [_float_0_50000000]
	movss xmm0, dword [ebp-0x9c]
	addss xmm0, xmm2
	cvttss2si eax, xmm0
	mov ecx, [ebp-0xb0]
	mov [ecx+0x2], al
	movzx ebx, byte [ebp-0xc8]
	mov [ecx+0x3], bl
	add edx, 0x10
	mov [ebp-0xac], edx
	movss xmm1, dword [ebp-0xa8]
	mulss xmm1, [_float_256_00000000]
	mov word [ebp-0x9e], 0x0
	mov dword [ebp-0xa4], 0x0
	xor edi, edi
	lea esi, [ebp-0x98]
	xor edx, edx
	jmp _Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_250
_Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_270:
	mov [ebp-0x114], ebx
	add edi, 0x1
	add esi, 0x4
	add edx, 0x2
	cmp [ebp-0xc8], edi
	jz _Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_260
_Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_250:
	mov eax, [ebp-0xac]
	add eax, edx
	mov [ebp-0x114], eax
	movss xmm0, dword [esi]
	mulss xmm0, xmm1
	addss xmm0, xmm2
	cvttss2si eax, xmm0
	mov ecx, [ebp-0x114]
	mov [ecx], ax
	add [ebp-0x9e], ax
	mov ebx, [ebp-0xa4]
	mov ecx, [ebp-0xac]
	lea ebx, [ecx+ebx*2]
	mov [ebp-0x110], ebx
	cmp [ebx], ax
	jae _Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_270
	mov [ebp-0xa4], edi
	add edi, 0x1
	add esi, 0x4
	add edx, 0x2
	cmp [ebp-0xc8], edi
	jnz _Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_250
_Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_260:
	mov edx, [ebp-0x114]
	movzx eax, word [edx]
	sub ax, [ebp-0x9e]
	add ax, 0x100
	mov [edx], ax
	mov ecx, [ebp-0xb0]
	add ecx, 0x18
	mov eax, [ebp-0xc8]
	add eax, eax
	lea edx, [ebp-0x38]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ecx
	call memcpy
	mov eax, [ebp-0xc4]
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_10:
	mov ecx, [ebp+0x8]
	movzx ecx, byte [ecx+0x4]
	mov [ebp-0xc4], ecx
	mov eax, ecx
	mov edx, ecx
	jmp _Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_150
_Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_220:
	pxor xmm0, xmm0
	movss xmm1, dword [ebp-0xcc]
	ucomiss xmm1, xmm0
	jp _Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_280
	jnz _Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_280
	movss xmm1, dword [ebp-0xd0]
	ucomiss xmm1, xmm0
	jp _Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_290
	jz _Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_300
_Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_290:
	movss xmm0, dword [_float_255_00000000]
	movss [ebp-0x9c], xmm0
	jmp _Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_310
_Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_130:
	movzx edx, dx
	mov [ebp-0xec], edx
	mov eax, frontEndDataOut
	mov edi, [eax]
	lea eax, [edi+0x118228]
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call iInterlockedExchangeAdd
	mov ebx, eax
	cmp eax, 0xfff
	ja _Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_320
_Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_360:
	lea edx, [ebx+ebx*4]
	lea edx, [edi+edx*8+0xf0220]
	lea ebx, [edx+0x8]
	cld
	mov ecx, 0xa
	xor eax, eax
	mov edi, ebx
	rep stosd
	movzx eax, word [ebp-0xec]
	mov [edx+0x8], ax
	mov byte [ebx+0x2], 0xff
	mov byte [ebx+0x3], 0x1
	mov [ebx+0x18], si
	mov edx, [ebp+0x8]
	movzx eax, byte [edx+0x4]
	jmp _Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_330
_Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_280:
	movss xmm0, dword [ebp-0xd0]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xd0]
	divss xmm1, xmm0
_Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_300:
	mulss xmm1, [_float_255_00000000]
	movss [ebp-0x9c], xmm1
	cmp dword [ebp-0xc8], 0x1
	jnz _Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_340
_Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_230:
	movzx eax, word [ebp-0x38]
	mov [ebp-0xb4], eax
	movzx edx, word [ebp-0xda]
	mov [ebp-0xf0], edx
	mov eax, frontEndDataOut
	mov esi, [eax]
	lea eax, [esi+0x118228]
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call iInterlockedExchangeAdd
	mov ebx, eax
	cmp eax, 0xfff
	ja _Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_350
_Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_410:
	lea edx, [ebx+ebx*4]
	lea edx, [esi+edx*8+0xf0220]
	lea ebx, [edx+0x8]
	cld
	mov ecx, 0xa
	xor eax, eax
	mov edi, ebx
	rep stosd
	movzx eax, word [ebp-0xf0]
	mov [edx+0x8], ax
	movss xmm0, dword [ebp-0x9c]
	addss xmm0, [_float_0_50000000]
	cvttss2si eax, xmm0
	mov [ebx+0x2], al
	mov byte [ebx+0x3], 0x1
	movzx eax, word [ebp-0xb4]
	mov [ebx+0x18], ax
	mov eax, [ebp-0xc4]
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_320:
	mov dword [esp+0x4], _cstring_modellightingpat
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_360
_Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_140:
	mov dword [esp+0x4], _cstring_modellightingpat
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_370
_Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_120:
	test esi, esi
	jnz _Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_380
	mov eax, r_showMissingLightGrid
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_380
	mov ecx, [ebp+0x8]
	mov ebx, [ecx+0x30]
	sub ebx, 0x1
	mov [ebp-0xbc], ebx
	movzx edx, dx
	mov [ebp-0xe4], edx
	mov eax, frontEndDataOut
	mov esi, [eax]
	lea eax, [esi+0x118228]
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call iInterlockedExchangeAdd
	mov ebx, eax
	cmp eax, 0xfff
	ja _Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_390
_Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_420:
	lea eax, [ebx+ebx*4]
	lea esi, [esi+eax*8+0xf0220]
	lea ebx, [esi+0x8]
	cld
	mov ecx, 0xa
	mov edi, ebx
	mov eax, [ebp-0xc8]
	rep stosd
	movzx eax, word [ebp-0xe4]
	mov [esi+0x8], ax
	mov byte [ebx+0x2], 0xff
	mov byte [ebx+0x3], 0x1
	movzx edx, word [ebp-0xbc]
	mov [ebx+0x18], dx
	xor eax, eax
	jmp _Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_330
_Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_240:
	mov dword [esp+0x4], _cstring_modellightingpat
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_400
_Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_350:
	mov dword [esp+0x4], _cstring_modellightingpat
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_410
_Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_390:
	mov dword [esp+0x4], _cstring_modellightingpat
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z20R_GetLightingAtPointPK12GfxLightGridPKfjt26GfxModelLightExtrapolation_420
	nop


;R_InitLightVisHistory(char const*)
_Z21R_InitLightVisHistoryPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov dword [s_vc_log], 0x0
	mov dword [s_vc_log+0x4], 0x0
	mov edi, r_vc_makelog
	mov eax, [edi]
	mov eax, [eax+0xc]
	test eax, eax
	jnz _Z21R_InitLightVisHistoryPKc_10
_Z21R_InitLightVisHistoryPKc_20:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21R_InitLightVisHistoryPKc_10:
	mov dword [esp], 0x600000
	call Z_VirtualAllocInternal
	mov [s_vc_log], eax
	mov eax, [edi]
	cmp dword [eax+0xc], 0x2
	jnz _Z21R_InitLightVisHistoryPKc_20
	lea ebx, [ebp-0x5c]
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z18Com_StripExtensionPKcPc
	xor esi, esi
	cld
	mov ecx, 0xffffffff
	mov edi, ebx
	mov eax, esi
	repne scasb
	not ecx
	add ecx, 0x4
	cmp ecx, 0x3f
	ja _Z21R_InitLightVisHistoryPKc_30
_Z21R_InitLightVisHistoryPKc_50:
	cld
	mov ecx, 0xffffffff
	mov edi, ebx
	mov eax, esi
	repne scasb
	not ecx
	lea ecx, [ecx+ebx-0x1]
	mov dword [ecx], 0x6972672e
	mov word [ecx+0x4], 0x64
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call FS_ReadFile
	mov ecx, eax
	test eax, eax
	js _Z21R_InitLightVisHistoryPKc_20
	mov esi, 0xaaaaaaab
	mul esi
	shr edx, 0x2
	lea edx, [edx+edx*2]
	add edx, edx
	cmp ecx, edx
	jnz _Z21R_InitLightVisHistoryPKc_40
	mov ebx, 0x600000
	cmp ecx, 0x600001
	cmovl ebx, ecx
	mov [esp+0x8], ebx
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov eax, [s_vc_log]
	mov [esp], eax
	call memcpy
	mov eax, ebx
	mul esi
	shr edx, 0x2
	mov [s_vc_log+0x4], edx
_Z21R_InitLightVisHistoryPKc_40:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FreeFile
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21R_InitLightVisHistoryPKc_30:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_light_grid_log_f
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z21R_InitLightVisHistoryPKc_50


;R_SaveLightVisHistory()
_Z21R_SaveLightVisHistoryv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov edx, [s_vc_log]
	test edx, edx
	jz _Z21R_SaveLightVisHistoryv_10
	mov eax, rgp
	mov eax, [eax+0x20a0]
	test eax, eax
	jz _Z21R_SaveLightVisHistoryv_10
	lea ebx, [ebp-0x58]
	mov [esp+0x4], ebx
	mov eax, [eax]
	mov [esp], eax
	call _Z18Com_StripExtensionPKcPc
	xor esi, esi
	cld
	mov ecx, 0xffffffff
	mov edi, ebx
	mov eax, esi
	repne scasb
	not ecx
	add ecx, 0x4
	cmp ecx, 0x3f
	ja _Z21R_SaveLightVisHistoryv_20
_Z21R_SaveLightVisHistoryv_30:
	cld
	mov ecx, 0xffffffff
	mov edi, ebx
	mov eax, esi
	repne scasb
	not ecx
	lea ecx, [ecx+ebx-0x1]
	mov dword [ecx], 0x6972672e
	mov word [ecx+0x4], 0x64
	mov eax, [s_vc_log+0x4]
	lea eax, [eax+eax*2]
	add eax, eax
	mov [esp+0x8], eax
	mov eax, [s_vc_log]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z12FS_WriteFilePKcPKvi
	mov eax, [s_vc_log]
	mov [esp], eax
	call Z_VirtualFreeInternal
	mov dword [s_vc_log], 0x0
	mov dword [s_vc_log+0x4], 0x0
_Z21R_SaveLightVisHistoryv_10:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21R_SaveLightVisHistoryv_20:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_light_grid_log_f
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z21R_SaveLightVisHistoryv_30
	nop


;R_GetPrimaryLightForModel(XModel const*, float const*, float const (*) [3], float, float const*, float const*, GfxLightRegion const*)
_Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5bc
	mov eax, [ebp+0x18]
	mov edx, [ebp+0x1c]
	movss xmm2, dword [eax]
	addss xmm2, [edx]
	movss xmm3, dword [_float_0_50000000]
	mulss xmm2, xmm3
	movss [ebp-0x28], xmm2
	movss xmm1, dword [eax+0x4]
	addss xmm1, [edx+0x4]
	mulss xmm1, xmm3
	movss [ebp-0x24], xmm1
	movss xmm0, dword [eax+0x8]
	addss xmm0, [edx+0x8]
	mulss xmm0, xmm3
	movss [ebp-0x20], xmm0
	subss xmm2, [eax]
	movss [ebp-0x34], xmm2
	subss xmm1, [eax+0x4]
	movss [ebp-0x30], xmm1
	subss xmm0, [eax+0x8]
	movss [ebp-0x2c], xmm0
	mov eax, comWorld
	mov eax, [eax+0x8]
	mov [ebp-0x574], eax
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x133]
	mov [esp], eax
	call _Z10Com_MemsetPvii
	mov esi, [ebp-0x574]
	test esi, esi
	jz _Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_10
	xor ebx, ebx
	mov dword [ebp-0x578], 0x0
	xor esi, esi
	lea edi, [ebp-0x34]
	jmp _Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_20
_Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_60:
	movss xmm0, dword [edx+0x34]
	ucomiss xmm0, [_float_0_00000000]
	jb _Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_30
	mov [esp+0x14], edi
	lea ecx, [ebp-0x28]
	mov [esp+0x10], ecx
	mov eax, [edx+0x28]
	mov [esp+0xc], eax
	movss [esp+0x8], xmm0
	lea eax, [edx+0x10]
	mov [esp+0x4], eax
	lea eax, [edx+0x1c]
	mov [esp], eax
	call _Z31CullBoxFromConicSectionOfSpherePKfS0_ffS0_S0_
	movzx eax, al
_Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_70:
	test eax, eax
	jnz _Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_40
	mov byte [ebx+ebp-0x133], 0x1
	add dword [ebp-0x578], 0x1
_Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_40:
	add ebx, 0x1
	add esi, 0x44
	cmp [ebp-0x574], ebx
	jz _Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_50
_Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_20:
	mov eax, comWorld
	mov edx, esi
	add edx, [eax+0xc]
	movzx eax, byte [edx]
	cmp al, 0x1
	jbe _Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_40
	cmp al, 0x2
	jz _Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_60
_Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_30:
	mov [esp+0xc], edi
	lea eax, [ebp-0x28]
	mov [esp+0x8], eax
	mov eax, [edx+0x28]
	mov [esp+0x4], eax
	lea eax, [edx+0x1c]
	mov [esp], eax
	call _Z17CullBoxFromSpherePKffS0_S0_
	movzx eax, al
	jmp _Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_70
_Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_50:
	mov ebx, [ebp-0x578]
	test ebx, ebx
	jnz _Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_80
_Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_10:
	xor eax, eax
	add esp, 0x5bc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_80:
	mov dword [esp], 0x60000
	call Hunk_AllocateTempMemory
	mov [ebp-0x58c], eax
	mov eax, [ebp-0x574]
	shl eax, 0x2
	lea edx, [ebp-0x530]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call memset
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z16XModelGetNumLodsPK6XModel
	sub eax, 0x1
	mov [esp+0x8], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z17XModelGetSurfacesPK6XModelPP8XSurfacei
	mov [ebp-0x588], eax
	test eax, eax
	jnz _Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_90
	xor ebx, ebx
_Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_250:
	mov eax, [ebp-0x58c]
	mov [esp], eax
	call Hunk_FreeTempMemory
	movzx eax, bl
	add esp, 0x5bc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_90:
	xor ebx, ebx
	mov dword [ebp-0x584], 0x0
	mov dword [ebp-0x570], 0x0
	mov dword [ebp-0x548], 0x0
	mov eax, [ebp+0x10]
	add eax, 0xc
	mov [ebp-0x590], eax
	mov edx, [ebp+0x10]
	add edx, 0x18
	mov [ebp-0x594], edx
	mov ecx, [ebp+0xc]
	add ecx, 0x4
	mov [ebp-0x598], ecx
	mov eax, [ebp+0xc]
	add eax, 0x8
	mov [ebp-0x59c], eax
_Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_240:
	mov eax, [ebp-0x548]
	add eax, [ebp-0x1c]
	mov [esp], eax
	call _Z19XSurfaceGetNumVertsPK8XSurface
	mov [ebp-0x580], eax
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov edx, [ebp-0x58c]
	mov [esp+0x4], edx
	mov eax, [ebp-0x548]
	add eax, [ebp-0x1c]
	mov [esp], eax
	call _Z16XSurfaceGetVertsPK8XSurfacePfS2_S2_
	mov ecx, [ebp-0x580]
	test ecx, ecx
	jz _Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_100
	mov eax, comWorld
	mov eax, [eax+0xc]
	mov [ebp-0x564], eax
	mov ecx, [ebp-0x58c]
	mov [ebp-0x54c], ecx
	mov [ebp-0x56c], ebx
	mov dword [ebp-0x57c], 0x0
	movss xmm4, dword [_data16_7fffffff]
	mov eax, ecx
_Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_210:
	movss xmm3, dword [eax]
	movss xmm1, dword [eax+0x4]
	movss xmm2, dword [eax+0x8]
	movaps xmm0, xmm3
	mov edx, [ebp+0x10]
	mulss xmm0, [edx]
	movss [ebp-0x53c], xmm0
	movaps xmm0, xmm1
	mov eax, [ebp-0x590]
	mulss xmm0, [eax]
	addss xmm0, [ebp-0x53c]
	movss [ebp-0x53c], xmm0
	movaps xmm0, xmm2
	mov edx, [ebp-0x594]
	mulss xmm0, [edx]
	addss xmm0, [ebp-0x53c]
	mulss xmm0, [ebp+0x14]
	movss [ebp-0x53c], xmm0
	mov ecx, [ebp+0xc]
	addss xmm0, [ecx]
	movss [ebp-0x53c], xmm0
	movaps xmm0, xmm3
	mov eax, [ebp+0x10]
	mulss xmm0, [eax+0x4]
	movss [ebp-0x540], xmm0
	movaps xmm0, xmm1
	mov eax, [ebp-0x590]
	mulss xmm0, [eax+0x4]
	addss xmm0, [ebp-0x540]
	movss [ebp-0x540], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [edx+0x4]
	addss xmm0, [ebp-0x540]
	mulss xmm0, [ebp+0x14]
	movss [ebp-0x540], xmm0
	mov edx, [ebp-0x598]
	addss xmm0, [edx]
	movss [ebp-0x540], xmm0
	mov ecx, [ebp+0x10]
	mulss xmm3, [ecx+0x8]
	movss [ebp-0x544], xmm3
	mulss xmm1, [eax+0x8]
	addss xmm1, xmm3
	movss [ebp-0x544], xmm1
	mov eax, [ebp-0x594]
	mulss xmm2, [eax+0x8]
	addss xmm2, xmm1
	movaps xmm0, xmm2
	mulss xmm0, [ebp+0x14]
	movss [ebp-0x544], xmm0
	mov eax, [ebp-0x59c]
	addss xmm0, [eax]
	movss [ebp-0x544], xmm0
	mov ebx, [ebp-0x564]
	mov edx, [ebp+0x20]
	mov [ebp-0x550], edx
	xor edi, edi
_Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_170:
	cmp byte [edi+ebp-0x133], 0x0
	jz _Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_110
	lea eax, [ebx+0x1c]
	movss xmm5, dword [ebp-0x53c]
	subss xmm5, [ebx+0x1c]
	movss xmm6, dword [ebp-0x540]
	subss xmm6, [eax+0x4]
	movss xmm7, dword [ebp-0x544]
	subss xmm7, [eax+0x8]
	movaps xmm1, xmm5
	mulss xmm1, xmm5
	movaps xmm0, xmm6
	mulss xmm0, xmm6
	addss xmm1, xmm0
	movaps xmm0, xmm7
	mulss xmm0, xmm7
	addss xmm1, xmm0
	movss xmm0, dword [ebx+0x28]
	mulss xmm0, xmm0
	ucomiss xmm1, xmm0
	ja _Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_110
	cmp byte [ebx], 0x2
	jz _Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_120
_Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_230:
	mov eax, [ebp-0x550]
	mov eax, [eax]
	mov [ebp-0x568], eax
	test eax, eax
	jz _Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_130
	mov edx, [ebp-0x550]
	mov ecx, [edx+0x4]
	xor esi, esi
_Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_160:
	movaps xmm0, xmm5
	subss xmm0, [ecx]
	andps xmm0, xmm4
	ucomiss xmm0, [ecx+0x24]
	jae _Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_140
	movaps xmm0, xmm6
	subss xmm0, [ecx+0x4]
	andps xmm0, xmm4
	ucomiss xmm0, [ecx+0x28]
	jae _Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_140
	movaps xmm0, xmm7
	subss xmm0, [ecx+0x8]
	andps xmm0, xmm4
	ucomiss xmm0, [ecx+0x2c]
	jae _Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_140
	movaps xmm0, xmm5
	addss xmm0, xmm6
	subss xmm0, [ecx+0xc]
	andps xmm0, xmm4
	ucomiss xmm0, [ecx+0x30]
	jae _Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_140
	movaps xmm0, xmm5
	subss xmm0, xmm6
	subss xmm0, [ecx+0x10]
	andps xmm0, xmm4
	ucomiss xmm0, [ecx+0x34]
	jae _Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_140
	movaps xmm0, xmm5
	addss xmm0, xmm7
	subss xmm0, [ecx+0x14]
	andps xmm0, xmm4
	ucomiss xmm0, [ecx+0x38]
	jae _Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_140
	movaps xmm0, xmm5
	subss xmm0, xmm7
	subss xmm0, [ecx+0x18]
	andps xmm0, xmm4
	ucomiss xmm0, [ecx+0x3c]
	jae _Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_140
	movaps xmm0, xmm6
	addss xmm0, xmm7
	subss xmm0, [ecx+0x1c]
	andps xmm0, xmm4
	ucomiss xmm0, [ecx+0x40]
	jae _Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_140
	movaps xmm0, xmm6
	subss xmm0, xmm7
	subss xmm0, [ecx+0x20]
	andps xmm0, xmm4
	ucomiss xmm0, [ecx+0x44]
	jae _Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_140
	mov eax, [ecx+0x48]
	mov [ebp-0x560], eax
	test eax, eax
	jz _Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_130
	mov eax, [ecx+0x4c]
	movaps xmm0, xmm5
	mulss xmm0, [eax]
	movaps xmm1, xmm6
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm7
	mulss xmm1, [eax+0x8]
	addss xmm0, xmm1
	subss xmm0, [eax+0xc]
	andps xmm0, xmm4
	ucomiss xmm0, [eax+0x10]
	jb _Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_150
_Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_140:
	add esi, 0x1
	add ecx, 0x50
	cmp [ebp-0x568], esi
	jnz _Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_160
_Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_110:
	add edi, 0x1
	add ebx, 0x44
	add dword [ebp-0x550], 0x8
	cmp [ebp-0x574], edi
	jnz _Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_170
	xor edi, edi
_Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_130:
	mov ebx, [ebp+edi*4-0x530]
	add ebx, 0x1
	mov [ebp+edi*4-0x530], ebx
	test edi, edi
	jz _Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_180
	cmp [ebp-0x56c], ebx
	jae _Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_180
	cmp dword [ebp-0x578], 0x1
	jz _Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_190
	mov [ebp-0x56c], ebx
	mov [ebp-0x570], edi
_Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_180:
	add dword [ebp-0x57c], 0x1
	add dword [ebp-0x54c], 0xc
	mov edx, [ebp-0x57c]
	cmp [ebp-0x580], edx
	jbe _Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_200
	mov eax, [ebp-0x54c]
	jmp _Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_210
_Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_120:
	movss xmm3, dword [ebx+0x34]
	lea eax, [ebx+0x10]
	movaps xmm2, xmm5
	mulss xmm2, [ebx+0x10]
	movaps xmm0, xmm6
	mulss xmm0, [eax+0x4]
	addss xmm2, xmm0
	movaps xmm0, xmm7
	mulss xmm0, [eax+0x8]
	addss xmm2, xmm0
	pxor xmm0, xmm0
	ucomiss xmm0, xmm3
	ja _Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_220
	pxor xmm0, xmm0
	ucomiss xmm2, xmm0
	ja _Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_110
	mulss xmm2, xmm2
	mulss xmm3, xmm3
	mulss xmm1, xmm3
	ucomiss xmm1, xmm2
	ja _Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_110
	jmp _Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_230
_Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_200:
	mov ebx, [ebp-0x56c]
_Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_100:
	add dword [ebp-0x584], 0x1
	add dword [ebp-0x548], 0x38
	mov ecx, [ebp-0x584]
	cmp [ebp-0x588], ecx
	ja _Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_240
	mov ebx, [ebp-0x570]
	jmp _Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_250
_Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_220:
	ucomiss xmm2, xmm0
	jbe _Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_230
	mulss xmm2, xmm2
	mulss xmm3, xmm3
	mulss xmm1, xmm3
	ucomiss xmm2, xmm1
	ja _Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_110
	jmp _Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_230
_Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_190:
	mov [ebp-0x570], edi
	jmp _Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_100
_Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_150:
	lea edx, [eax+0x14]
	mov [ebp-0x558], edx
	add eax, 0x20
	mov [ebp-0x554], eax
	mov dword [ebp-0x55c], 0x0
_Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_260:
	add dword [ebp-0x55c], 0x1
	mov eax, [ebp-0x560]
	cmp [ebp-0x55c], eax
	jz _Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_130
	mov eax, [ebp-0x558]
	mov edx, [ebp-0x554]
	add dword [ebp-0x558], 0x14
	add dword [ebp-0x554], 0x14
	movaps xmm0, xmm7
	mulss xmm0, [eax+0x8]
	movaps xmm1, xmm5
	mulss xmm1, [eax]
	movaps xmm2, xmm6
	mulss xmm2, [eax+0x4]
	addss xmm1, xmm2
	addss xmm0, xmm1
	subss xmm0, [edx]
	andps xmm0, xmm4
	ucomiss xmm0, [edx+0x4]
	jb _Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_260
	jmp _Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion_140
	nop


;R_GetPrimaryLightFromGrid(GfxLightGrid const*, float const*, unsigned char)
_Z25R_GetPrimaryLightFromGridPK12GfxLightGridPKfh:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov esi, [ebp+0x10]
	mov edi, esi
	lea ecx, [ebp-0x5c]
	lea ebx, [ebp-0x1c]
	mov [esp+0x4], ebx
	lea ebx, [ebp-0x3c]
	mov [esp], ebx
	call _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj
	cmp al, 0xff
	cmovz eax, esi
	mov edx, 0x1
	movzx ecx, al
	mov esi, ecx
_Z25R_GetPrimaryLightFromGridPK12GfxLightGridPKfh_30:
	mov eax, [ebx+edx*4-0x4]
	test eax, eax
	jz _Z25R_GetPrimaryLightFromGridPK12GfxLightGridPKfh_10
	movzx eax, byte [eax+0x2]
	cmp al, 0xff
	jz _Z25R_GetPrimaryLightFromGridPK12GfxLightGridPKfh_10
	test al, al
	jz _Z25R_GetPrimaryLightFromGridPK12GfxLightGridPKfh_20
	movzx eax, al
	cmp eax, ecx
	jz _Z25R_GetPrimaryLightFromGridPK12GfxLightGridPKfh_20
_Z25R_GetPrimaryLightFromGridPK12GfxLightGridPKfh_10:
	add edx, 0x1
	cmp edx, 0x9
	jnz _Z25R_GetPrimaryLightFromGridPK12GfxLightGridPKfh_30
	mov edx, edi
	movzx eax, dl
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25R_GetPrimaryLightFromGridPK12GfxLightGridPKfh_20:
	mov eax, esi
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;R_ShowLightVisCachePoints(float const*, DpvsPlane const*, int)
_Z25R_ShowLightVisCachePointsPKfPK9DpvsPlanei:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov ebx, [ebp+0x8]
	mov eax, [s_vc_log]
	test eax, eax
	jz _Z25R_ShowLightVisCachePointsPKfPK9DpvsPlanei_10
	mov eax, r_vc_showlog
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [ebp-0x34], eax
	test eax, eax
	jle _Z25R_ShowLightVisCachePointsPKfPK9DpvsPlanei_10
	movss xmm0, dword [ebx]
	addss xmm0, [_float_131072_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x50]
	cvttss2si eax, [ebp-0x50]
	sar eax, 0x5
	mov [ebp-0x44], eax
	movss xmm0, dword [ebx+0x4]
	addss xmm0, [_float_131072_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x54]
	cvttss2si eax, [ebp-0x54]
	sar eax, 0x5
	mov [ebp-0x40], eax
	movss xmm0, dword [ebx+0x8]
	addss xmm0, [_float_131072_00000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x58]
	cvttss2si ecx, [ebp-0x58]
	sar ecx, 0x6
	mov eax, [ebp-0x44]
	test eax, eax
	js _Z25R_ShowLightVisCachePointsPKfPK9DpvsPlanei_20
	cvtsi2ss xmm0, dword [ebp-0x44]
	movss xmm1, dword [_float_32_00000000]
	mulss xmm0, xmm1
	subss xmm0, [_float_131072_00000000]
	movss [ebp-0x24], xmm0
	mov eax, [ebp-0x40]
	test eax, eax
	js _Z25R_ShowLightVisCachePointsPKfPK9DpvsPlanei_30
_Z25R_ShowLightVisCachePointsPKfPK9DpvsPlanei_180:
	cvtsi2ss xmm0, dword [ebp-0x40]
	mulss xmm0, xmm1
	subss xmm0, [_float_131072_00000000]
	movss [ebp-0x20], xmm0
	test ecx, ecx
	js _Z25R_ShowLightVisCachePointsPKfPK9DpvsPlanei_40
_Z25R_ShowLightVisCachePointsPKfPK9DpvsPlanei_190:
	cvtsi2ss xmm0, ecx
_Z25R_ShowLightVisCachePointsPKfPK9DpvsPlanei_200:
	mulss xmm0, [_float_64_00000000]
	subss xmm0, [_float_131072_00000000]
	movss [ebp-0x1c], xmm0
	mov eax, [ebp-0x34]
	neg eax
	mov [ebp-0x2c], eax
	sub ecx, 0x1
	mov [ebp-0x30], ecx
	mov dword [ebp-0x38], 0xffffffff
_Z25R_ShowLightVisCachePointsPKfPK9DpvsPlanei_140:
	cmp dword [ebp-0x30], 0x1000
	ja _Z25R_ShowLightVisCachePointsPKfPK9DpvsPlanei_50
	mov eax, [ebp-0x2c]
	cmp [ebp-0x34], eax
	jl _Z25R_ShowLightVisCachePointsPKfPK9DpvsPlanei_50
	mov edi, [ebp-0x30]
	test edi, edi
	js _Z25R_ShowLightVisCachePointsPKfPK9DpvsPlanei_60
	cvtsi2ss xmm0, dword [ebp-0x30]
_Z25R_ShowLightVisCachePointsPKfPK9DpvsPlanei_170:
	mulss xmm0, [_float_64_00000000]
	subss xmm0, [_float_131072_00000000]
	movss [ebp-0x48], xmm0
	mov edi, [ebp-0x40]
	add edi, [ebp-0x2c]
	mov eax, [ebp-0x2c]
	mov [ebp-0x3c], eax
_Z25R_ShowLightVisCachePointsPKfPK9DpvsPlanei_130:
	cmp edi, 0x2000
	ja _Z25R_ShowLightVisCachePointsPKfPK9DpvsPlanei_70
	test edi, edi
	js _Z25R_ShowLightVisCachePointsPKfPK9DpvsPlanei_80
	cvtsi2ss xmm0, edi
_Z25R_ShowLightVisCachePointsPKfPK9DpvsPlanei_160:
	mulss xmm0, [_float_32_00000000]
	subss xmm0, [_float_131072_00000000]
	movss [ebp-0x4c], xmm0
	mov ebx, [ebp-0x44]
	add ebx, [ebp-0x2c]
	mov esi, [ebp-0x2c]
	jmp _Z25R_ShowLightVisCachePointsPKfPK9DpvsPlanei_90
_Z25R_ShowLightVisCachePointsPKfPK9DpvsPlanei_100:
	add esi, 0x1
	add ebx, 0x1
	cmp [ebp-0x34], esi
	jl _Z25R_ShowLightVisCachePointsPKfPK9DpvsPlanei_70
_Z25R_ShowLightVisCachePointsPKfPK9DpvsPlanei_90:
	cmp ebx, 0x2000
	ja _Z25R_ShowLightVisCachePointsPKfPK9DpvsPlanei_100
	test ebx, ebx
	js _Z25R_ShowLightVisCachePointsPKfPK9DpvsPlanei_110
	cvtsi2ss xmm0, ebx
_Z25R_ShowLightVisCachePointsPKfPK9DpvsPlanei_150:
	mulss xmm0, [_float_32_00000000]
	subss xmm0, [_float_131072_00000000]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [ebp-0x4c]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [ebp-0x48]
	movss [ebp-0x1c], xmm0
	mov eax, [ebp+0x10]
	mov [esp+0xc], eax
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _Z20R_CullPointAndRadiusPKffPK9DpvsPlanei
	test al, al
	jnz _Z25R_ShowLightVisCachePointsPKfPK9DpvsPlanei_100
	mov dword [esp], 0x0
	mov ecx, [ebp-0x30]
	mov edx, edi
	mov eax, ebx
	call _Z20R_SortedHistoryEntryiii19GfxSortedHistoryAdd
	test eax, eax
	jns _Z25R_ShowLightVisCachePointsPKfPK9DpvsPlanei_100
	cmp dword [ebp-0x38], 0x1
	jbe _Z25R_ShowLightVisCachePointsPKfPK9DpvsPlanei_120
	mov eax, colorYellow
_Z25R_ShowLightVisCachePointsPKfPK9DpvsPlanei_210:
	mov dword [esp+0x10], _cstring_
	mov dword [esp+0xc], 0x3f800000
	mov [esp+0x8], eax
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov eax, frontEndDataOut
	mov eax, [eax]
	add eax, 0x11e71c
	mov [esp], eax
	call _Z16R_AddDebugStringP12DebugGlobalsPKfS2_fPKc
	add esi, 0x1
	add ebx, 0x1
	cmp [ebp-0x34], esi
	jge _Z25R_ShowLightVisCachePointsPKfPK9DpvsPlanei_90
_Z25R_ShowLightVisCachePointsPKfPK9DpvsPlanei_70:
	add dword [ebp-0x3c], 0x1
	add edi, 0x1
	mov eax, [ebp-0x3c]
	cmp [ebp-0x34], eax
	jge _Z25R_ShowLightVisCachePointsPKfPK9DpvsPlanei_130
_Z25R_ShowLightVisCachePointsPKfPK9DpvsPlanei_50:
	add dword [ebp-0x38], 0x1
	add dword [ebp-0x30], 0x1
	cmp dword [ebp-0x38], 0x2
	jnz _Z25R_ShowLightVisCachePointsPKfPK9DpvsPlanei_140
_Z25R_ShowLightVisCachePointsPKfPK9DpvsPlanei_10:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25R_ShowLightVisCachePointsPKfPK9DpvsPlanei_110:
	mov eax, ebx
	shr eax, 1
	mov edx, ebx
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _Z25R_ShowLightVisCachePointsPKfPK9DpvsPlanei_150
_Z25R_ShowLightVisCachePointsPKfPK9DpvsPlanei_80:
	mov eax, edi
	shr eax, 1
	mov edx, edi
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _Z25R_ShowLightVisCachePointsPKfPK9DpvsPlanei_160
_Z25R_ShowLightVisCachePointsPKfPK9DpvsPlanei_60:
	mov eax, [ebp-0x30]
	shr eax, 1
	mov edx, [ebp-0x30]
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _Z25R_ShowLightVisCachePointsPKfPK9DpvsPlanei_170
_Z25R_ShowLightVisCachePointsPKfPK9DpvsPlanei_20:
	mov eax, [ebp-0x44]
	shr eax, 1
	mov edx, [ebp-0x44]
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	movss xmm1, dword [_float_32_00000000]
	mulss xmm0, xmm1
	subss xmm0, [_float_131072_00000000]
	movss [ebp-0x24], xmm0
	mov eax, [ebp-0x40]
	test eax, eax
	jns _Z25R_ShowLightVisCachePointsPKfPK9DpvsPlanei_180
_Z25R_ShowLightVisCachePointsPKfPK9DpvsPlanei_30:
	mov eax, [ebp-0x40]
	shr eax, 1
	mov edx, [ebp-0x40]
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	mulss xmm0, xmm1
	subss xmm0, [_float_131072_00000000]
	movss [ebp-0x20], xmm0
	test ecx, ecx
	jns _Z25R_ShowLightVisCachePointsPKfPK9DpvsPlanei_190
_Z25R_ShowLightVisCachePointsPKfPK9DpvsPlanei_40:
	mov eax, ecx
	shr eax, 1
	mov edx, ecx
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _Z25R_ShowLightVisCachePointsPKfPK9DpvsPlanei_200
_Z25R_ShowLightVisCachePointsPKfPK9DpvsPlanei_120:
	mov eax, colorGreen
	jmp _Z25R_ShowLightVisCachePointsPKfPK9DpvsPlanei_210


;R_SetLightGridSampleDeltas(int, int)
_Z26R_SetLightGridSampleDeltasii:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov [s_lightGridRowDelta], eax
	lea eax, [eax+eax*2]
	sub edx, eax
	mov [s_lightGridSliceDelta], edx
	pop ebp
	ret
	nop


;R_ApplyLightGridColorsPatch(GfxModelLightingPatch const*, unsigned char*)
_Z27R_ApplyLightGridColorsPatchPK21GfxModelLightingPatchPh:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x21c
	mov edx, [ebp+0x8]
	movzx eax, byte [edx+0x3]
	cmp al, 0x1
	jz _Z27R_ApplyLightGridColorsPatchPK21GfxModelLightingPatchPh_10
	movzx eax, al
	mov [ebp-0x228], eax
	add edx, 0x8
	mov [ebp-0x224], edx
	mov ecx, [ebp+0x8]
	add ecx, 0x18
	mov [ebp-0x220], ecx
	mov eax, rgp
	mov eax, [eax+0x20a0]
	add eax, 0x110
	mov [ebp-0x21c], eax
	mov ebx, [ebp+0x8]
	movzx ecx, word [ebx+0x8]
	movzx eax, word [ebx+0x18]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*4]
	mov ebx, [ebp-0x21c]
	mov eax, [ebx+0x34]
	lea edi, [eax+edx*8]
	mov esi, 0x8
	lea ebx, [ebp-0x200]
_Z27R_ApplyLightGridColorsPatchPK21GfxModelLightingPatchPh_20:
	lea edx, [edi+esi]
	movzx eax, byte [edx-0x8]
	imul eax, ecx
	mov [ebx-0x10], ax
	movzx eax, byte [edx-0x7]
	imul eax, ecx
	mov [ebx-0xe], ax
	movzx eax, byte [edx-0x6]
	imul eax, ecx
	mov [ebx-0xc], ax
	movzx eax, byte [edx-0x5]
	imul eax, ecx
	mov [ebx-0xa], ax
	movzx eax, byte [edx-0x4]
	imul eax, ecx
	mov [ebx-0x8], ax
	movzx eax, byte [edx-0x3]
	imul eax, ecx
	mov [ebx-0x6], ax
	movzx eax, byte [edx-0x2]
	imul eax, ecx
	mov [ebx-0x4], ax
	movzx eax, byte [edx-0x1]
	imul eax, ecx
	mov [ebx-0x2], ax
	add esi, 0x8
	add ebx, 0x10
	cmp esi, 0xb0
	jnz _Z27R_ApplyLightGridColorsPatchPK21GfxModelLightingPatchPh_20
	mov edi, 0x1
	lea esi, [ebp-0xc0]
_Z27R_ApplyLightGridColorsPatchPK21GfxModelLightingPatchPh_40:
	lea eax, [edi+edi]
	mov edx, [ebp-0x224]
	movzx ebx, word [edx+eax]
	mov ecx, [ebp-0x220]
	movzx eax, word [ecx+eax]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*4]
	mov ecx, [ebp-0x21c]
	mov eax, [ecx+0x34]
	lea ecx, [eax+edx*8]
	lea edx, [ebp-0x210]
_Z27R_ApplyLightGridColorsPatchPK21GfxModelLightingPatchPh_30:
	movzx eax, byte [ecx]
	imul eax, ebx
	add [edx], ax
	movzx eax, byte [ecx+0x1]
	imul eax, ebx
	add [edx+0x2], ax
	movzx eax, byte [ecx+0x2]
	imul eax, ebx
	add [edx+0x4], ax
	movzx eax, byte [ecx+0x3]
	imul eax, ebx
	add [edx+0x6], ax
	movzx eax, byte [ecx+0x4]
	imul eax, ebx
	add [edx+0x8], ax
	movzx eax, byte [ecx+0x5]
	imul eax, ebx
	add [edx+0xa], ax
	movzx eax, byte [ecx+0x6]
	imul eax, ebx
	add [edx+0xc], ax
	movzx eax, byte [ecx+0x7]
	imul eax, ebx
	add [edx+0xe], ax
	add edx, 0x10
	add ecx, 0x8
	cmp edx, esi
	jnz _Z27R_ApplyLightGridColorsPatchPK21GfxModelLightingPatchPh_30
	add edi, 0x1
	cmp [ebp-0x228], edi
	ja _Z27R_ApplyLightGridColorsPatchPK21GfxModelLightingPatchPh_40
	mov ebx, 0x8
	lea ecx, [ebp-0x210]
	add ecx, 0x10
_Z27R_ApplyLightGridColorsPatchPK21GfxModelLightingPatchPh_50:
	lea edx, [ebx+esi]
	movzx eax, word [ecx-0x10]
	add eax, 0x7f
	sar eax, 0x8
	mov [edx-0x8], al
	movzx eax, word [ecx-0xe]
	add eax, 0x7f
	sar eax, 0x8
	mov [edx-0x7], al
	movzx eax, word [ecx-0xc]
	add eax, 0x7f
	sar eax, 0x8
	mov [edx-0x6], al
	movzx eax, word [ecx-0xa]
	add eax, 0x7f
	sar eax, 0x8
	mov [edx-0x5], al
	movzx eax, word [ecx-0x8]
	add eax, 0x7f
	sar eax, 0x8
	mov [edx-0x4], al
	movzx eax, word [ecx-0x6]
	add eax, 0x7f
	sar eax, 0x8
	mov [edx-0x3], al
	movzx eax, word [ecx-0x4]
	add eax, 0x7f
	sar eax, 0x8
	mov [edx-0x2], al
	movzx eax, word [ecx-0x2]
	add eax, 0x7f
	sar eax, 0x8
	mov [edx-0x1], al
	add ebx, 0x8
	add ecx, 0x10
	cmp ebx, 0xb0
	jnz _Z27R_ApplyLightGridColorsPatchPK21GfxModelLightingPatchPh_50
	mov ebx, [ebp+0x8]
	movzx edx, byte [ebx+0x2]
	mov ecx, [ebp+0xc]
	mov eax, esi
	call _Z20R_SetLightGridColorsPK18GfxLightGridColorshPh
	add esp, 0x21c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z27R_ApplyLightGridColorsPatchPK21GfxModelLightingPatchPh_10:
	mov ecx, edx
	movzx edx, byte [edx+0x2]
	mov eax, rgp
	mov ebx, [eax+0x20a0]
	movzx ecx, word [ecx+0x18]
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	mov ecx, [ebx+0x144]
	lea eax, [ecx+eax*8]
	mov ecx, [ebp+0xc]
	call _Z20R_SetLightGridColorsPK18GfxLightGridColorshPh
	add esp, 0x21c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;R_GetAverageLightingAtPoint(float const*, unsigned char*)
_Z27R_GetAverageLightingAtPointPKfPh:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2bc
	mov edx, [ebp+0x8]
	lea edi, [ebp-0xa0]
	mov ebx, rgp
	mov eax, [ebx+0x20a0]
	add eax, 0x110
	lea ecx, [ebp-0x20]
	mov [esp+0x4], ecx
	lea ecx, [ebp-0x60]
	mov [esp], ecx
	mov ecx, edi
	call _Z17R_LightGridLookupPK12GfxLightGridPKfPfPPK17GfxLightGridEntryPj
	sub al, 0x1
	jz _Z27R_GetAverageLightingAtPointPKfPh_10
	mov byte [ebp-0x1c], 0x0
	mov byte [ebp-0x1b], 0x0
	mov byte [ebp-0x1a], 0x0
	mov byte [ebp-0x19], 0x80
	mov [ebp-0x2a8], ebx
	pxor xmm5, xmm5
	movss xmm6, dword [_float_0_50000000]
	lea esi, [ebp-0x1c]
	movss xmm4, dword [_float_255_00000000]
	mov edx, ebx
_Z27R_GetAverageLightingAtPointPKfPh_250:
	mov eax, [edx+0x20a0]
	mov ecx, [eax+0xc8]
	add ecx, 0x4
	mov edx, 0x1
_Z27R_GetAverageLightingAtPointPKfPh_30:
	movzx eax, byte [edx+esi-0x1]
	cvtsi2ss xmm1, eax
	movzx eax, byte [ebp-0x19]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm6
	mulss xmm0, [ecx+edx*4-0x4]
	addss xmm1, xmm0
	movaps xmm0, xmm1
	subss xmm0, xmm4
	movaps xmm2, xmm5
	cmpss xmm2, xmm0, 0x6
	movaps xmm0, xmm2
	movaps xmm2, xmm1
	andps xmm2, xmm0
	movaps xmm3, xmm0
	andnps xmm3, xmm4
	orps xmm3, xmm2
	movaps xmm0, xmm5
	subss xmm0, xmm1
	ucomiss xmm0, xmm5
	jb _Z27R_GetAverageLightingAtPointPKfPh_20
	xor eax, eax
_Z27R_GetAverageLightingAtPointPKfPh_40:
	mov ebx, [ebp+0xc]
	mov [ebx+edx-0x1], al
	add edx, 0x1
	cmp edx, 0x4
	jnz _Z27R_GetAverageLightingAtPointPKfPh_30
	mov byte [ebx+0x3], 0xff
	add esp, 0x2bc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z27R_GetAverageLightingAtPointPKfPh_20:
	cvttss2si eax, xmm3
	jmp _Z27R_GetAverageLightingAtPointPKfPh_40
_Z27R_GetAverageLightingAtPointPKfPh_10:
	mov dword [ebp-0x2a4], 0x0
	pxor xmm5, xmm5
	movaps xmm2, xmm5
	movaps xmm1, xmm5
	mov esi, 0x1
	jmp _Z27R_GetAverageLightingAtPointPKfPh_50
_Z27R_GetAverageLightingAtPointPKfPh_90:
	sub bl, 0x1
	jz _Z27R_GetAverageLightingAtPointPKfPh_60
_Z27R_GetAverageLightingAtPointPKfPh_80:
	add esi, 0x1
	cmp esi, 0x9
	jz _Z27R_GetAverageLightingAtPointPKfPh_70
_Z27R_GetAverageLightingAtPointPKfPh_50:
	lea ecx, [esi*4]
	mov edx, [ebp+ecx-0x64]
	test edx, edx
	jz _Z27R_GetAverageLightingAtPointPKfPh_80
	movzx ebx, byte [edx+0x2]
	lea eax, [ebx-0x1]
	cmp al, 0xfd
	jbe _Z27R_GetAverageLightingAtPointPKfPh_90
_Z27R_GetAverageLightingAtPointPKfPh_260:
	movss xmm0, dword [edi+ecx-0x4]
	addss xmm1, xmm0
	movzx ecx, word [edx]
	mov ebx, [ebp-0x2a4]
	test ebx, ebx
	jz _Z27R_GetAverageLightingAtPointPKfPh_100
	movzx ebx, cx
	cmp [ebp-0x30], cx
	jz _Z27R_GetAverageLightingAtPointPKfPh_110
	xor edx, edx
_Z27R_GetAverageLightingAtPointPKfPh_120:
	add edx, 0x1
	cmp edx, [ebp-0x2a4]
	jz _Z27R_GetAverageLightingAtPointPKfPh_100
	movzx eax, word [ebp+edx*2-0x30]
	cmp ebx, eax
	jnz _Z27R_GetAverageLightingAtPointPKfPh_120
	lea eax, [edx*4]
_Z27R_GetAverageLightingAtPointPKfPh_270:
	lea ebx, [ebp-0x80]
	lea eax, [ebx+eax]
	addss xmm0, [eax]
	movss [eax], xmm0
	add esi, 0x1
	cmp esi, 0x9
	jnz _Z27R_GetAverageLightingAtPointPKfPh_50
_Z27R_GetAverageLightingAtPointPKfPh_70:
	mov ecx, [ebp-0x2a4]
	test ecx, ecx
	jz _Z27R_GetAverageLightingAtPointPKfPh_130
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	mulss xmm2, xmm0
	mov ecx, rgp
	mov [ebp-0x2a8], ecx
	mov ebx, [ecx+0x20a0]
	add ebx, 0x110
	mov [ebp-0x29c], ebx
	movaps xmm1, xmm0
	mulss xmm1, [_float_256_00000000]
	xor edi, edi
	mov dword [ebp-0x2a0], 0x0
	xor ecx, ecx
	xor esi, esi
	movss xmm6, dword [_float_0_50000000]
	jmp _Z27R_GetAverageLightingAtPointPKfPh_140
_Z27R_GetAverageLightingAtPointPKfPh_160:
	mov [ebp-0x2a0], ecx
	add ecx, 0x1
	add esi, 0x2
	cmp ecx, [ebp-0x2a4]
	jz _Z27R_GetAverageLightingAtPointPKfPh_150
_Z27R_GetAverageLightingAtPointPKfPh_140:
	lea eax, [ebp-0x40]
	add eax, esi
	mov [ebp-0x2ac], eax
	movaps xmm0, xmm1
	mulss xmm0, [ebp+ecx*4-0x80]
	addss xmm0, xmm6
	cvttss2si eax, xmm0
	mov [ebp+ecx*2-0x40], ax
	add edi, eax
	mov ebx, [ebp-0x2a0]
	lea edx, [ebp+ebx*2-0x40]
	cmp ax, [edx]
	ja _Z27R_GetAverageLightingAtPointPKfPh_160
	mov [ebp-0x2ac], edx
	add ecx, 0x1
	add esi, 0x2
	cmp ecx, [ebp-0x2a4]
	jnz _Z27R_GetAverageLightingAtPointPKfPh_140
_Z27R_GetAverageLightingAtPointPKfPh_150:
	mov edx, [ebp-0x2ac]
	movzx eax, word [edx]
	sub ax, di
	add ax, 0x100
	mov [edx], ax
	movzx ecx, word [ebp-0x40]
	movzx eax, word [ebp-0x30]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*4]
	mov ebx, [ebp-0x29c]
	mov eax, [ebx+0x34]
	lea edi, [eax+edx*8]
	mov esi, 0x8
	lea ebx, [ebp-0x288]
_Z27R_GetAverageLightingAtPointPKfPh_170:
	lea edx, [esi+edi]
	movzx eax, byte [edx-0x8]
	imul eax, ecx
	mov [ebx-0x10], ax
	movzx eax, byte [edx-0x7]
	imul eax, ecx
	mov [ebx-0xe], ax
	movzx eax, byte [edx-0x6]
	imul eax, ecx
	mov [ebx-0xc], ax
	movzx eax, byte [edx-0x5]
	imul eax, ecx
	mov [ebx-0xa], ax
	movzx eax, byte [edx-0x4]
	imul eax, ecx
	mov [ebx-0x8], ax
	movzx eax, byte [edx-0x3]
	imul eax, ecx
	mov [ebx-0x6], ax
	movzx eax, byte [edx-0x2]
	imul eax, ecx
	mov [ebx-0x4], ax
	movzx eax, byte [edx-0x1]
	imul eax, ecx
	mov [ebx-0x2], ax
	add esi, 0x8
	add ebx, 0x10
	cmp esi, 0xb0
	jnz _Z27R_GetAverageLightingAtPointPKfPh_170
	mov si, 0x1
_Z27R_GetAverageLightingAtPointPKfPh_190:
	lea eax, [esi+esi]
	movzx ebx, word [ebp+eax-0x40]
	movzx eax, word [ebp+eax-0x30]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*4]
	mov ecx, [ebp-0x29c]
	mov eax, [ecx+0x34]
	lea ecx, [eax+edx*8]
	lea edx, [ebp-0x298]
_Z27R_GetAverageLightingAtPointPKfPh_180:
	movzx eax, byte [ecx]
	imul eax, ebx
	add [edx], ax
	movzx eax, byte [ecx+0x1]
	imul eax, ebx
	add [edx+0x2], ax
	movzx eax, byte [ecx+0x2]
	imul eax, ebx
	add [edx+0x4], ax
	movzx eax, byte [ecx+0x3]
	imul eax, ebx
	add [edx+0x6], ax
	movzx eax, byte [ecx+0x4]
	imul eax, ebx
	add [edx+0x8], ax
	movzx eax, byte [ecx+0x5]
	imul eax, ebx
	add [edx+0xa], ax
	movzx eax, byte [ecx+0x6]
	imul eax, ebx
	add [edx+0xc], ax
	movzx eax, byte [ecx+0x7]
	imul eax, ebx
	add [edx+0xe], ax
	add edx, 0x10
	add ecx, 0x8
	lea eax, [ebp-0x148]
	cmp edx, eax
	jnz _Z27R_GetAverageLightingAtPointPKfPh_180
	add esi, 0x1
	cmp esi, [ebp-0x2a4]
	jb _Z27R_GetAverageLightingAtPointPKfPh_190
	mov ebx, 0x8
	lea ecx, [ebp-0x298]
	add ecx, 0x10
_Z27R_GetAverageLightingAtPointPKfPh_200:
	lea eax, [ebp-0x148]
	lea edx, [ebx+eax]
	movzx eax, word [ecx-0x10]
	add eax, 0x7f
	sar eax, 0x8
	mov [edx-0x8], al
	movzx eax, word [ecx-0xe]
	add eax, 0x7f
	sar eax, 0x8
	mov [edx-0x7], al
	movzx eax, word [ecx-0xc]
	add eax, 0x7f
	sar eax, 0x8
	mov [edx-0x6], al
	movzx eax, word [ecx-0xa]
	add eax, 0x7f
	sar eax, 0x8
	mov [edx-0x5], al
	movzx eax, word [ecx-0x8]
	add eax, 0x7f
	sar eax, 0x8
	mov [edx-0x4], al
	movzx eax, word [ecx-0x6]
	add eax, 0x7f
	sar eax, 0x8
	mov [edx-0x3], al
	movzx eax, word [ecx-0x4]
	add eax, 0x7f
	sar eax, 0x8
	mov [edx-0x2], al
	movzx eax, word [ecx-0x2]
	add eax, 0x7f
	sar eax, 0x8
	mov [edx-0x1], al
	add ebx, 0x8
	add ecx, 0x10
	cmp ebx, 0xb0
	jnz _Z27R_GetAverageLightingAtPointPKfPh_200
	mov eax, 0x1
_Z27R_GetAverageLightingAtPointPKfPh_210:
	mov dword [ebp+eax*4-0x44], 0x0
	add eax, 0x1
	cmp eax, 0x4
	jnz _Z27R_GetAverageLightingAtPointPKfPh_210
	xor edi, edi
	xor esi, esi
_Z27R_GetAverageLightingAtPointPKfPh_230:
	lea ecx, [ebp-0x148]
	add ecx, esi
	mov ebx, 0x1
	lea edx, [ebp-0x40]
	add edx, 0x4
_Z27R_GetAverageLightingAtPointPKfPh_220:
	movzx eax, byte [ecx]
	add [edx-0x4], eax
	add ebx, 0x1
	add edx, 0x4
	add ecx, 0x1
	cmp ebx, 0x4
	jnz _Z27R_GetAverageLightingAtPointPKfPh_220
	add edi, 0x1
	add esi, 0x3
	cmp edi, 0x38
	jnz _Z27R_GetAverageLightingAtPointPKfPh_230
	mov ecx, 0x1
	lea esi, [ebp-0x1c]
	mov ebx, 0x92492493
_Z27R_GetAverageLightingAtPointPKfPh_240:
	mov edi, [ebp+ecx*4-0x44]
	mov eax, edi
	imul ebx
	add edx, edi
	sar edx, 0x5
	mov eax, edi
	sar eax, 0x1f
	sub edx, eax
	mov [ecx+esi-0x1], dl
	add ecx, 0x1
	cmp ecx, 0x4
	jnz _Z27R_GetAverageLightingAtPointPKfPh_240
	movss xmm4, dword [_float_255_00000000]
	mulss xmm2, xmm4
	addss xmm2, xmm6
	cvttss2si eax, xmm2
	mov [ebp-0x19], al
	mov edx, [ebp-0x2a8]
	jmp _Z27R_GetAverageLightingAtPointPKfPh_250
_Z27R_GetAverageLightingAtPointPKfPh_100:
	mov eax, [ebp-0x2a4]
	mov [ebp+eax*2-0x30], cx
	movss [ebp+eax*4-0x80], xmm0
	add eax, 0x1
	mov [ebp-0x2a4], eax
	jmp _Z27R_GetAverageLightingAtPointPKfPh_80
_Z27R_GetAverageLightingAtPointPKfPh_60:
	addss xmm2, [edi+ecx-0x4]
	jmp _Z27R_GetAverageLightingAtPointPKfPh_260
_Z27R_GetAverageLightingAtPointPKfPh_130:
	mov byte [ebp-0x1c], 0x0
	mov byte [ebp-0x1b], 0x0
	mov byte [ebp-0x1a], 0x0
	mov byte [ebp-0x19], 0xff
	mov edx, rgp
	mov [ebp-0x2a8], edx
	movss xmm6, dword [_float_0_50000000]
	lea esi, [ebp-0x1c]
	movss xmm4, dword [_float_255_00000000]
	jmp _Z27R_GetAverageLightingAtPointPKfPh_250
_Z27R_GetAverageLightingAtPointPKfPh_110:
	xor eax, eax
	jmp _Z27R_GetAverageLightingAtPointPKfPh_270


;Initialized global or static variables of rb_light:
SECTION .data


;Initialized constant data of rb_light:
SECTION .rdata


;Zero initialized global or static variables of rb_light:
SECTION .bss
s_vc_log: resb 0x8
s_lightGridSliceDelta: resb 0x4
s_lightGridRowDelta: resb 0x74


;All cstrings:
SECTION .rdata
_cstring_modellightingpat:		db "modelLightingPatchList ran out of elements.",0
_cstring_light_grid_log_f:		db 015h,"light grid log filename ",27h,"%s.grid",27h," is too long",0ah,0
_cstring_:		db ".",0



;All constant floats and doubles:
SECTION .rdata
_float_131072_00000000:		dd 0x48000000	; 131072
_float_0_03125000:		dd 0x3d000000	; 0.03125
_float_0_01562500:		dd 0x3c800000	; 0.015625
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_00100000:		dd 0x3a83126f	; 0.001
_float_32_00000000:		dd 0x42000000	; 32
_float_64_00000000:		dd 0x42800000	; 64
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_0_01000000:		dd 0x3c23d70a	; 0.01
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_1_10000002:		dd 0x3f8ccccd	; 1.1
_float_0_89999998:		dd 0x3f666666	; 0.9
_float_256_00000000:		dd 0x43800000	; 256
_float_255_00000000:		dd 0x437f0000	; 255
_float_0_00000000:		dd 0x0	; 0
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; OWORD

