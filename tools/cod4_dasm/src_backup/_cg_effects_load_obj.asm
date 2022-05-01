;Imports of cg_effects_load_obj:
	extern _Z9I_stricmpPKcS0_
	extern _Z14FS_GetFileListPKcS0_16FsListBehavior_ePci
	extern qsort
	extern _Z2vaPKcz
	extern _Z18FS_FOpenFileByModePKcPi8fsMode_t
	extern Hunk_AllocateTempMemoryHigh
	extern _Z7FS_ReadPvii
	extern _Z13FS_FCloseFilei
	extern _Z21Com_BeginParseSessionPKc
	extern _Z10Com_SetCSVi
	extern _Z9Com_ParsePPKc
	extern _Z19Com_EndParseSessionv
	extern Hunk_ClearTempMemoryHigh
	extern _Z15Com_ParseOnLinePPKc
	extern _Z23Com_SurfaceTypeFromNamePKc
	extern Hunk_AllocateTempMemory
	extern strcpy
	extern _Z18Com_SkipRestOfLinePPKc
	extern _Z14Com_PrintErroriPKcz
	extern _Z19DB_FindXAssetHeader10XAssetTypePKc
	extern memset
	extern _Z11Com_sprintfPciPKcz
	extern _Z23Hunk_AllocAlignInternalii
	extern _Z11FX_RegisterPKc
	extern Hunk_ClearTempMemory
	extern _Z21Com_SurfaceTypeToNamei
	extern _Z10Com_PrintfiPKcz
	extern useFastFile

;Exports of cg_effects_load_obj:
	global g_TypeName
	global g_FleshTypeName
	global _Z18CG_FleshTypeToNamei
	global _Z20compare_impact_filesPKvS0_
	global _Z30CG_RegisterImpactEffectsForDirPKcP10EffectFilePc
	global _Z33CG_RegisterImpactEffects_FastFilePKc
	global _Z32CG_RegisterImpactEffects_LoadObjPKc
	global _Z24CG_RegisterImpactEffectsPKc


SECTION .text


;CG_FleshTypeToName(int)
_Z18CG_FleshTypeToNamei:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax*4+g_FleshTypeName]
	pop ebp
	ret
	nop


;compare_impact_files(void const*, void const*)
_Z20compare_impact_filesPKvS0_:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	mov eax, [eax]
	mov [ebp+0xc], eax
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [ebp+0x8], eax
	pop ebp
	jmp _Z9I_stricmpPKcS0_
	nop


;CG_RegisterImpactEffectsForDir(char const*, EffectFile*, char*)
_Z30CG_RegisterImpactEffectsForDirPKcP10EffectFilePc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x406c
	mov [ebp-0x4044], eax
	mov [ebp-0x4048], edx
	mov ebx, ecx
	mov dword [esp+0x10], 0x10000
	mov [esp+0xc], ecx
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_csv
	mov [esp], eax
	call _Z14FS_GetFileListPKcS0_16FsListBehavior_ePci
	mov [ebp-0x4040], eax
	test eax, eax
	jz _Z30CG_RegisterImpactEffectsForDirPKcP10EffectFilePc_10
	cmp eax, 0x1001
	mov eax, 0x1000
	cmovb eax, [ebp-0x4040]
	mov [ebp-0x4040], eax
	mov [ebp-0x404c], ebx
	xor edx, edx
	mov esi, 0xffffffff
	xor ebx, ebx
	cld
_Z30CG_RegisterImpactEffectsForDirPKcP10EffectFilePc_20:
	mov eax, [ebp-0x404c]
	mov [ebp+edx*4-0x4020], eax
	mov ecx, esi
	mov edi, eax
	mov eax, ebx
	repne scasb
	not ecx
	add [ebp-0x404c], ecx
	add edx, 0x1
	cmp [ebp-0x4040], edx
	jnz _Z30CG_RegisterImpactEffectsForDirPKcP10EffectFilePc_20
	mov dword [esp+0xc], _Z20compare_impact_filesPKvS0_
	mov dword [esp+0x8], 0x4
	mov edx, [ebp-0x4040]
	mov [esp+0x4], edx
	lea eax, [ebp-0x4020]
	mov [esp], eax
	call qsort
	mov esi, [ebp-0x4040]
	test esi, esi
	jnz _Z30CG_RegisterImpactEffectsForDirPKcP10EffectFilePc_30
_Z30CG_RegisterImpactEffectsForDirPKcP10EffectFilePc_10:
	add esp, 0x406c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z30CG_RegisterImpactEffectsForDirPKcP10EffectFilePc_30:
	mov dword [ebp-0x402c], 0x0
	mov edx, [ebp-0x402c]
_Z30CG_RegisterImpactEffectsForDirPKcP10EffectFilePc_100:
	mov eax, [ebp+edx*4-0x4020]
	mov [esp+0x8], eax
	mov eax, [ebp-0x4044]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_ss
	call _Z2vaPKcz
	mov [ebp-0x4030], eax
	mov dword [esp+0x8], 0x0
	lea edx, [ebp-0x1c]
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z18FS_FOpenFileByModePKcPi8fsMode_t
	mov esi, eax
	test eax, eax
	js _Z30CG_RegisterImpactEffectsForDirPKcP10EffectFilePc_40
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
	mov eax, [ebp-0x4030]
	mov [esp], eax
	call _Z21Com_BeginParseSessionPKc
	mov dword [esp], 0x1
	call _Z10Com_SetCSVi
	mov [ebp-0x20], ebx
	lea edx, [ebp-0x20]
	mov [esp], edx
	call _Z9Com_ParsePPKc
	mov edi, eax
	mov ebx, [ebp-0x20]
	test ebx, ebx
	jz _Z30CG_RegisterImpactEffectsForDirPKcP10EffectFilePc_50
_Z30CG_RegisterImpactEffectsForDirPKcP10EffectFilePc_170:
	movzx eax, byte [eax]
	test al, al
	jz _Z30CG_RegisterImpactEffectsForDirPKcP10EffectFilePc_60
	cmp al, 0x23
	jz _Z30CG_RegisterImpactEffectsForDirPKcP10EffectFilePc_60
	xor esi, esi
	mov ebx, g_TypeName
_Z30CG_RegisterImpactEffectsForDirPKcP10EffectFilePc_80:
	mov [esp+0x4], edi
	mov eax, [ebx]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z30CG_RegisterImpactEffectsForDirPKcP10EffectFilePc_70
	add esi, 0x1
	add ebx, 0x4
	cmp esi, 0xc
	jnz _Z30CG_RegisterImpactEffectsForDirPKcP10EffectFilePc_80
	mov edx, [ebp-0x4030]
	mov [esp+0x8], edx
	mov [esp+0x4], edi
	mov dword [esp], _cstring_unknown_effect_t
	call _Z2vaPKcz
	mov ebx, eax
_Z30CG_RegisterImpactEffectsForDirPKcP10EffectFilePc_180:
	call _Z19Com_EndParseSessionv
	call Hunk_ClearTempMemoryHigh
	test ebx, ebx
	jnz _Z30CG_RegisterImpactEffectsForDirPKcP10EffectFilePc_90
_Z30CG_RegisterImpactEffectsForDirPKcP10EffectFilePc_40:
	add dword [ebp-0x402c], 0x1
	mov edx, [ebp-0x402c]
	cmp [ebp-0x4040], edx
	jnz _Z30CG_RegisterImpactEffectsForDirPKcP10EffectFilePc_100
	add esp, 0x406c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z30CG_RegisterImpactEffectsForDirPKcP10EffectFilePc_70:
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z15Com_ParseOnLinePPKc
	mov edi, eax
	cmp byte [eax], 0x0
	jz _Z30CG_RegisterImpactEffectsForDirPKcP10EffectFilePc_110
	mov [esp], eax
	call _Z23Com_SurfaceTypeFromNamePKc
	mov [ebp-0x403c], eax
	mov dword [ebp-0x4038], 0x0
	mov ebx, g_FleshTypeName
_Z30CG_RegisterImpactEffectsForDirPKcP10EffectFilePc_130:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z30CG_RegisterImpactEffectsForDirPKcP10EffectFilePc_120
	add dword [ebp-0x4038], 0x1
	add ebx, 0x4
	cmp dword [ebp-0x4038], 0x4
	jnz _Z30CG_RegisterImpactEffectsForDirPKcP10EffectFilePc_130
	mov dword [ebp-0x4038], 0xffffffff
_Z30CG_RegisterImpactEffectsForDirPKcP10EffectFilePc_120:
	mov ecx, [ebp-0x403c]
	test ecx, ecx
	js _Z30CG_RegisterImpactEffectsForDirPKcP10EffectFilePc_140
_Z30CG_RegisterImpactEffectsForDirPKcP10EffectFilePc_190:
	lea edx, [ebp-0x20]
	mov [esp], edx
	call _Z15Com_ParseOnLinePPKc
	mov [ebp-0x4034], eax
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp-0x4034]
	repne scasb
	not ecx
	lea eax, [ecx-0x1]
	cmp eax, 0x3f
	jg _Z30CG_RegisterImpactEffectsForDirPKcP10EffectFilePc_150
	mov [esp], ecx
	call Hunk_AllocateTempMemory
	mov ebx, eax
	mov eax, [ebp-0x4034]
	mov [esp+0x4], eax
	mov [esp], ebx
	call strcpy
	mov eax, [ebp-0x403c]
	test eax, eax
	js _Z30CG_RegisterImpactEffectsForDirPKcP10EffectFilePc_160
	lea eax, [esi*8]
	sub eax, esi
	lea eax, [esi+eax*4]
	add eax, [ebp-0x403c]
	mov edx, [ebp-0x4048]
	mov [edx+eax*4], ebx
_Z30CG_RegisterImpactEffectsForDirPKcP10EffectFilePc_60:
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z18Com_SkipRestOfLinePPKc
_Z30CG_RegisterImpactEffectsForDirPKcP10EffectFilePc_200:
	lea edx, [ebp-0x20]
	mov [esp], edx
	call _Z9Com_ParsePPKc
	mov edi, eax
	mov ebx, [ebp-0x20]
	test ebx, ebx
	jnz _Z30CG_RegisterImpactEffectsForDirPKcP10EffectFilePc_170
_Z30CG_RegisterImpactEffectsForDirPKcP10EffectFilePc_50:
	xor ebx, ebx
	jmp _Z30CG_RegisterImpactEffectsForDirPKcP10EffectFilePc_180
_Z30CG_RegisterImpactEffectsForDirPKcP10EffectFilePc_140:
	mov edx, [ebp-0x4038]
	test edx, edx
	jns _Z30CG_RegisterImpactEffectsForDirPKcP10EffectFilePc_190
	mov edx, [ebp-0x4030]
	mov [esp+0x8], edx
	mov [esp+0x4], edi
	mov dword [esp], _cstring_unknown_surfacef
	call _Z2vaPKcz
	mov ebx, eax
	jmp _Z30CG_RegisterImpactEffectsForDirPKcP10EffectFilePc_180
_Z30CG_RegisterImpactEffectsForDirPKcP10EffectFilePc_160:
	mov edx, [ebp-0x4038]
	lea eax, [edx+esi*4]
	mov edx, [ebp-0x4048]
	mov [edx+eax*4+0x570], ebx
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z18Com_SkipRestOfLinePPKc
	jmp _Z30CG_RegisterImpactEffectsForDirPKcP10EffectFilePc_200
_Z30CG_RegisterImpactEffectsForDirPKcP10EffectFilePc_90:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_s
	mov dword [esp], 0x15
	call _Z14Com_PrintErroriPKcz
	jmp _Z30CG_RegisterImpactEffectsForDirPKcP10EffectFilePc_10
_Z30CG_RegisterImpactEffectsForDirPKcP10EffectFilePc_110:
	mov eax, [ebp-0x4030]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_missing_surfacef
	call _Z2vaPKcz
	mov ebx, eax
	jmp _Z30CG_RegisterImpactEffectsForDirPKcP10EffectFilePc_180
_Z30CG_RegisterImpactEffectsForDirPKcP10EffectFilePc_150:
	mov dword [esp+0xc], 0x3f
	mov edx, [ebp-0x4030]
	mov [esp+0x8], edx
	mov eax, [ebp-0x4034]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_effect_filename_
	call _Z2vaPKcz
	mov ebx, eax
	jmp _Z30CG_RegisterImpactEffectsForDirPKcP10EffectFilePc_180


;CG_RegisterImpactEffects_FastFile(char const*)
_Z33CG_RegisterImpactEffects_FastFilePKc:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], 0x1a
	call _Z19DB_FindXAssetHeader10XAssetTypePKc
	leave
	ret


;CG_RegisterImpactEffects_LoadObj(char const*)
_Z32CG_RegisterImpactEffects_LoadObjPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6cc
	mov ebx, [ebp+0x8]
	mov dword [esp], 0x10000
	call Hunk_AllocateTempMemory
	mov esi, eax
	lea edi, [ebp-0x688]
	mov dword [esp+0x8], 0x630
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call memset
	mov ecx, esi
	mov edx, edi
	mov eax, _cstring_fx
	call _Z30CG_RegisterImpactEffectsForDirPKcP10EffectFilePc
	test ebx, ebx
	jz _Z32CG_RegisterImpactEffects_LoadObjPKc_10
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_fxmapss
	mov dword [esp+0x4], 0x40
	lea ebx, [ebp-0x58]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	mov ecx, esi
	mov edx, edi
	mov eax, ebx
	call _Z30CG_RegisterImpactEffectsForDirPKcP10EffectFilePc
_Z32CG_RegisterImpactEffects_LoadObjPKc_10:
	mov dword [esp+0x4], 0x4
	mov dword [esp], 0x8
	call _Z23Hunk_AllocAlignInternalii
	mov [ebp-0x6b0], eax
	mov dword [esp+0x4], 0x4
	mov dword [esp], 0x630
	call _Z23Hunk_AllocAlignInternalii
	mov edx, [ebp-0x6b0]
	mov [edx+0x4], eax
	mov dword [ebp-0x6b4], 0x0
	mov dword [ebp-0x6b8], 0x0
	mov dword [ebp-0x698], 0x0
	mov dword [ebp-0x694], g_TypeName
	mov [ebp-0x690], edi
	lea eax, [ebp-0x118]
	mov [ebp-0x6bc], eax
_Z32CG_RegisterImpactEffects_LoadObjPKc_90:
	mov esi, [ebp-0x698]
	mov edx, [ebp-0x6b0]
	add esi, [edx+0x4]
	mov eax, [ebp-0x694]
	mov eax, [eax]
	mov [ebp-0x6ac], eax
	mov dword [ebp-0x6a8], 0x0
	xor ebx, ebx
	jmp _Z32CG_RegisterImpactEffects_LoadObjPKc_20
_Z32CG_RegisterImpactEffects_LoadObjPKc_50:
	mov dword [esi+ebx*4], 0x0
	add ebx, 0x1
	cmp ebx, 0x1d
	jz _Z32CG_RegisterImpactEffects_LoadObjPKc_30
_Z32CG_RegisterImpactEffects_LoadObjPKc_20:
	mov eax, [edi+ebx*4]
	test eax, eax
	jz _Z32CG_RegisterImpactEffects_LoadObjPKc_40
	cmp byte [eax], 0x0
	jz _Z32CG_RegisterImpactEffects_LoadObjPKc_50
	mov [esp], eax
	call _Z11FX_RegisterPKc
	mov [esi+ebx*4], eax
	add ebx, 0x1
	cmp ebx, 0x1d
	jnz _Z32CG_RegisterImpactEffects_LoadObjPKc_20
_Z32CG_RegisterImpactEffects_LoadObjPKc_30:
	mov eax, [ebp-0x6a8]
	add eax, [ebp-0x6b4]
	mov [ebp-0x68c], eax
	mov edx, [ebp-0x690]
	mov esi, [edx+0x1c]
	mov eax, [ebp-0x698]
	mov edx, [ebp-0x6b0]
	add eax, [edx+0x4]
	add eax, 0x74
	mov [ebp-0x6a4], eax
	mov eax, [ebp-0x694]
	mov eax, [eax]
	mov [ebp-0x6a0], eax
	mov dword [ebp-0x69c], 0x0
	and ebx, 0xffffff00
_Z32CG_RegisterImpactEffects_LoadObjPKc_80:
	mov edx, [ebp-0x6bc]
	mov eax, [edx+ebx*4]
	test eax, eax
	jz _Z32CG_RegisterImpactEffects_LoadObjPKc_60
_Z32CG_RegisterImpactEffects_LoadObjPKc_130:
	cmp byte [eax], 0x0
	jnz _Z32CG_RegisterImpactEffects_LoadObjPKc_70
	test esi, esi
	cmovnz eax, esi
	cmp byte [eax], 0x0
	jnz _Z32CG_RegisterImpactEffects_LoadObjPKc_70
	mov eax, [ebp-0x6a4]
	mov dword [eax+ebx*4], 0x0
_Z32CG_RegisterImpactEffects_LoadObjPKc_110:
	add ebx, 0x1
	cmp ebx, 0x4
	jnz _Z32CG_RegisterImpactEffects_LoadObjPKc_80
	mov eax, [ebp-0x68c]
	add eax, [ebp-0x69c]
	mov [ebp-0x6b4], eax
	add dword [ebp-0x6b8], 0x1
	add edi, 0x74
	add dword [ebp-0x6bc], 0x10
	add dword [ebp-0x698], 0x84
	add dword [ebp-0x694], 0x4
	add dword [ebp-0x690], 0x74
	cmp dword [ebp-0x6b8], 0xc
	jnz _Z32CG_RegisterImpactEffects_LoadObjPKc_90
	test eax, eax
	jnz _Z32CG_RegisterImpactEffects_LoadObjPKc_100
	mov edx, [ebp-0x6b0]
	mov dword [edx], _cstring_null
	call Hunk_ClearTempMemory
	mov eax, [ebp-0x6b0]
	add esp, 0x6cc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z32CG_RegisterImpactEffects_LoadObjPKc_40:
	mov [esp], ebx
	call _Z21Com_SurfaceTypeToNamei
	mov [esp+0xc], eax
	mov edx, [ebp-0x6ac]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_no_entry_for_eff
	mov dword [esp], 0x15
	call _Z10Com_PrintfiPKcz
	add dword [ebp-0x6a8], 0x1
	jmp _Z32CG_RegisterImpactEffects_LoadObjPKc_50
_Z32CG_RegisterImpactEffects_LoadObjPKc_70:
	mov [esp], eax
	call _Z11FX_RegisterPKc
	mov edx, [ebp-0x6a4]
	mov [edx+ebx*4], eax
	jmp _Z32CG_RegisterImpactEffects_LoadObjPKc_110
_Z32CG_RegisterImpactEffects_LoadObjPKc_60:
	test esi, esi
	jz _Z32CG_RegisterImpactEffects_LoadObjPKc_120
	mov eax, esi
	jmp _Z32CG_RegisterImpactEffects_LoadObjPKc_130
_Z32CG_RegisterImpactEffects_LoadObjPKc_120:
	mov [esp], ebx
	call _Z18CG_FleshTypeToNamei
	mov [esp+0xc], eax
	mov eax, [ebp-0x6a0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_no_entry_for_eff
	mov dword [esp], 0x15
	call _Z10Com_PrintfiPKcz
	add dword [ebp-0x69c], 0x1
	mov edx, [ebp-0x6a4]
	mov dword [edx+ebx*4], 0x0
	jmp _Z32CG_RegisterImpactEffects_LoadObjPKc_110
_Z32CG_RegisterImpactEffects_LoadObjPKc_100:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_i_missing_
	mov dword [esp], 0x15
	call _Z14Com_PrintErroriPKcz
	call Hunk_ClearTempMemory
	mov dword [ebp-0x6b0], 0x0
	mov eax, [ebp-0x6b0]
	add esp, 0x6cc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;CG_RegisterImpactEffects(char const*)
_Z24CG_RegisterImpactEffectsPKc:
	push ebp
	mov ebp, esp
	mov eax, useFastFile
	mov eax, [eax]
	mov ecx, _Z33CG_RegisterImpactEffects_FastFilePKc
	cmp byte [eax+0xc], 0x0
	mov eax, _Z32CG_RegisterImpactEffects_LoadObjPKc
	cmovz ecx, eax
	pop ebp
	jmp ecx


;Initialized global or static variables of cg_effects_load_obj:
SECTION .data


;Initialized constant data of cg_effects_load_obj:
SECTION .rdata
g_TypeName: dd 0x2f06dc, 0x2f06f0, 0x2f0704, 0x2f0718, 0x2f072c, 0x2f073c, 0x2f074c, 0x2f0760, 0x2ed824, 0x2ed834, 0x2ed844, 0x2ed854
g_FleshTypeName: dd 0x2f0770, 0x2f0784, 0x2f0798, 0x2f07ac


;Zero initialized global or static variables of cg_effects_load_obj:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_csv:		db "csv",0
_cstring_ss:		db "%s/%s",0
_cstring_unknown_effect_t:		db "unknown effect type ",27h,"%s",27h," in first column of file ",27h,"%s",27h,0
_cstring_unknown_surfacef:		db "unknown surface/flesh type ",27h,"%s",27h," in second column of file ",27h,"%s",27h,0
_cstring_error_s:		db "ERROR: %s",0
_cstring_missing_surfacef:		db "missing surface/flesh type in second column of file ",27h,"%s",27h,0
_cstring_effect_filename_:		db "effect filename ",27h,"%s",27h," in third column of file ",27h,"%s",27h," is longer than %i characters",0
_cstring_null:		db 0
_cstring_fx:		db "fx",0
_cstring_fxmapss:		db "fx/maps/%s",0
_cstring_no_entry_for_eff:		db "no entry for effect type ",27h,"%s",27h," on surface/flesh type ",27h,"%s",27h,0ah,0
_cstring_error_i_missing_:		db "ERROR: %i missing entries in effect CSV files (see console for details)",0



;All constant floats and doubles:
SECTION .rdata

