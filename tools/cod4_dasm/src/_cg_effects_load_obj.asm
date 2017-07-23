;Imports of cg_effects_load_obj:
	extern Q_stricmp
	extern FS_GetFileList
	extern qsort
	extern va
	extern FS_FOpenFileByMode
	extern Hunk_AllocateTempMemoryHigh
	extern FS_Read
	extern FS_FCloseFile
	extern Com_BeginParseSession
	extern Com_SetCSV
	extern Com_Parse
	extern Com_EndParseSession
	extern Hunk_ClearTempMemoryHigh
	extern Com_ParseOnLine
	extern Com_SurfaceTypeFromName
	extern Hunk_AllocateTempMemory
	extern strcpy
	extern Com_SkipRestOfLine
	extern Com_PrintError
	extern DB_FindXAssetHeader
	extern memset
	extern Com_sprintf
	extern Hunk_AllocAlignInternal
	extern FX_Register
	extern Hunk_ClearTempMemory
	extern Com_SurfaceTypeToName
	extern Com_Printf
	extern useFastFile

;Exports of cg_effects_load_obj:
	global g_TypeName
	global g_FleshTypeName
	global CG_FleshTypeToName
	global compare_impact_files
	global CG_RegisterImpactEffectsForDir
	global CG_RegisterImpactEffects_FastFile
	global CG_RegisterImpactEffects_LoadObj
	global CG_RegisterImpactEffects


SECTION .text


;CG_FleshTypeToName(int)
CG_FleshTypeToName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax*4+g_FleshTypeName]
	pop ebp
	ret
	nop


;compare_impact_files(void const*, void const*)
compare_impact_files:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	mov eax, [eax]
	mov [ebp+0xc], eax
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [ebp+0x8], eax
	pop ebp
	jmp Q_stricmp
	nop


;CG_RegisterImpactEffectsForDir(char const*, EffectFile*, char*)
CG_RegisterImpactEffectsForDir:
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
	call FS_GetFileList
	mov [ebp-0x4040], eax
	test eax, eax
	jz CG_RegisterImpactEffectsForDir_10
	cmp eax, 0x1001
	mov eax, 0x1000
	cmovb eax, [ebp-0x4040]
	mov [ebp-0x4040], eax
	mov [ebp-0x404c], ebx
	xor edx, edx
	mov esi, 0xffffffff
	xor ebx, ebx
	cld
CG_RegisterImpactEffectsForDir_20:
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
	jnz CG_RegisterImpactEffectsForDir_20
	mov dword [esp+0xc], compare_impact_files
	mov dword [esp+0x8], 0x4
	mov edx, [ebp-0x4040]
	mov [esp+0x4], edx
	lea eax, [ebp-0x4020]
	mov [esp], eax
	call qsort
	mov esi, [ebp-0x4040]
	test esi, esi
	jnz CG_RegisterImpactEffectsForDir_30
CG_RegisterImpactEffectsForDir_10:
	add esp, 0x406c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_RegisterImpactEffectsForDir_30:
	mov dword [ebp-0x402c], 0x0
	mov edx, [ebp-0x402c]
CG_RegisterImpactEffectsForDir_100:
	mov eax, [ebp+edx*4-0x4020]
	mov [esp+0x8], eax
	mov eax, [ebp-0x4044]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_ss
	call va
	mov [ebp-0x4030], eax
	mov dword [esp+0x8], 0x0
	lea edx, [ebp-0x1c]
	mov [esp+0x4], edx
	mov [esp], eax
	call FS_FOpenFileByMode
	mov esi, eax
	test eax, eax
	js CG_RegisterImpactEffectsForDir_40
	lea eax, [eax+0x1]
	mov [esp], eax
	call Hunk_AllocateTempMemoryHigh
	mov ebx, eax
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov [esp], ebx
	call FS_Read
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FCloseFile
	mov byte [ebx+esi], 0x0
	mov eax, [ebp-0x4030]
	mov [esp], eax
	call Com_BeginParseSession
	mov dword [esp], 0x1
	call Com_SetCSV
	mov [ebp-0x20], ebx
	lea edx, [ebp-0x20]
	mov [esp], edx
	call Com_Parse
	mov edi, eax
	mov ebx, [ebp-0x20]
	test ebx, ebx
	jz CG_RegisterImpactEffectsForDir_50
CG_RegisterImpactEffectsForDir_170:
	movzx eax, byte [eax]
	test al, al
	jz CG_RegisterImpactEffectsForDir_60
	cmp al, 0x23
	jz CG_RegisterImpactEffectsForDir_60
	xor esi, esi
	mov ebx, g_TypeName
CG_RegisterImpactEffectsForDir_80:
	mov [esp+0x4], edi
	mov eax, [ebx]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz CG_RegisterImpactEffectsForDir_70
	add esi, 0x1
	add ebx, 0x4
	cmp esi, 0xc
	jnz CG_RegisterImpactEffectsForDir_80
	mov edx, [ebp-0x4030]
	mov [esp+0x8], edx
	mov [esp+0x4], edi
	mov dword [esp], _cstring_unknown_effect_t
	call va
	mov ebx, eax
CG_RegisterImpactEffectsForDir_180:
	call Com_EndParseSession
	call Hunk_ClearTempMemoryHigh
	test ebx, ebx
	jnz CG_RegisterImpactEffectsForDir_90
CG_RegisterImpactEffectsForDir_40:
	add dword [ebp-0x402c], 0x1
	mov edx, [ebp-0x402c]
	cmp [ebp-0x4040], edx
	jnz CG_RegisterImpactEffectsForDir_100
	add esp, 0x406c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_RegisterImpactEffectsForDir_70:
	lea eax, [ebp-0x20]
	mov [esp], eax
	call Com_ParseOnLine
	mov edi, eax
	cmp byte [eax], 0x0
	jz CG_RegisterImpactEffectsForDir_110
	mov [esp], eax
	call Com_SurfaceTypeFromName
	mov [ebp-0x403c], eax
	mov dword [ebp-0x4038], 0x0
	mov ebx, g_FleshTypeName
CG_RegisterImpactEffectsForDir_130:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], edi
	call Q_stricmp
	test eax, eax
	jz CG_RegisterImpactEffectsForDir_120
	add dword [ebp-0x4038], 0x1
	add ebx, 0x4
	cmp dword [ebp-0x4038], 0x4
	jnz CG_RegisterImpactEffectsForDir_130
	mov dword [ebp-0x4038], 0xffffffff
CG_RegisterImpactEffectsForDir_120:
	mov ecx, [ebp-0x403c]
	test ecx, ecx
	js CG_RegisterImpactEffectsForDir_140
CG_RegisterImpactEffectsForDir_190:
	lea edx, [ebp-0x20]
	mov [esp], edx
	call Com_ParseOnLine
	mov [ebp-0x4034], eax
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp-0x4034]
	repne scasb
	not ecx
	lea eax, [ecx-0x1]
	cmp eax, 0x3f
	jg CG_RegisterImpactEffectsForDir_150
	mov [esp], ecx
	call Hunk_AllocateTempMemory
	mov ebx, eax
	mov eax, [ebp-0x4034]
	mov [esp+0x4], eax
	mov [esp], ebx
	call strcpy
	mov eax, [ebp-0x403c]
	test eax, eax
	js CG_RegisterImpactEffectsForDir_160
	lea eax, [esi*8]
	sub eax, esi
	lea eax, [esi+eax*4]
	add eax, [ebp-0x403c]
	mov edx, [ebp-0x4048]
	mov [edx+eax*4], ebx
CG_RegisterImpactEffectsForDir_60:
	lea eax, [ebp-0x20]
	mov [esp], eax
	call Com_SkipRestOfLine
CG_RegisterImpactEffectsForDir_200:
	lea edx, [ebp-0x20]
	mov [esp], edx
	call Com_Parse
	mov edi, eax
	mov ebx, [ebp-0x20]
	test ebx, ebx
	jnz CG_RegisterImpactEffectsForDir_170
CG_RegisterImpactEffectsForDir_50:
	xor ebx, ebx
	jmp CG_RegisterImpactEffectsForDir_180
CG_RegisterImpactEffectsForDir_140:
	mov edx, [ebp-0x4038]
	test edx, edx
	jns CG_RegisterImpactEffectsForDir_190
	mov edx, [ebp-0x4030]
	mov [esp+0x8], edx
	mov [esp+0x4], edi
	mov dword [esp], _cstring_unknown_surfacef
	call va
	mov ebx, eax
	jmp CG_RegisterImpactEffectsForDir_180
CG_RegisterImpactEffectsForDir_160:
	mov edx, [ebp-0x4038]
	lea eax, [edx+esi*4]
	mov edx, [ebp-0x4048]
	mov [edx+eax*4+0x570], ebx
	lea eax, [ebp-0x20]
	mov [esp], eax
	call Com_SkipRestOfLine
	jmp CG_RegisterImpactEffectsForDir_200
CG_RegisterImpactEffectsForDir_90:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_s
	mov dword [esp], 0x15
	call Com_PrintError
	jmp CG_RegisterImpactEffectsForDir_10
CG_RegisterImpactEffectsForDir_110:
	mov eax, [ebp-0x4030]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_missing_surfacef
	call va
	mov ebx, eax
	jmp CG_RegisterImpactEffectsForDir_180
CG_RegisterImpactEffectsForDir_150:
	mov dword [esp+0xc], 0x3f
	mov edx, [ebp-0x4030]
	mov [esp+0x8], edx
	mov eax, [ebp-0x4034]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_effect_filename_
	call va
	mov ebx, eax
	jmp CG_RegisterImpactEffectsForDir_180


;CG_RegisterImpactEffects_FastFile(char const*)
CG_RegisterImpactEffects_FastFile:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], 0x1a
	call DB_FindXAssetHeader
	leave
	ret


;CG_RegisterImpactEffects_LoadObj(char const*)
CG_RegisterImpactEffects_LoadObj:
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
	call CG_RegisterImpactEffectsForDir
	test ebx, ebx
	jz CG_RegisterImpactEffects_LoadObj_10
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_fxmapss
	mov dword [esp+0x4], 0x40
	lea ebx, [ebp-0x58]
	mov [esp], ebx
	call Com_sprintf
	mov ecx, esi
	mov edx, edi
	mov eax, ebx
	call CG_RegisterImpactEffectsForDir
CG_RegisterImpactEffects_LoadObj_10:
	mov dword [esp+0x4], 0x4
	mov dword [esp], 0x8
	call Hunk_AllocAlignInternal
	mov [ebp-0x6b0], eax
	mov dword [esp+0x4], 0x4
	mov dword [esp], 0x630
	call Hunk_AllocAlignInternal
	mov edx, [ebp-0x6b0]
	mov [edx+0x4], eax
	mov dword [ebp-0x6b4], 0x0
	mov dword [ebp-0x6b8], 0x0
	mov dword [ebp-0x698], 0x0
	mov dword [ebp-0x694], g_TypeName
	mov [ebp-0x690], edi
	lea eax, [ebp-0x118]
	mov [ebp-0x6bc], eax
CG_RegisterImpactEffects_LoadObj_90:
	mov esi, [ebp-0x698]
	mov edx, [ebp-0x6b0]
	add esi, [edx+0x4]
	mov eax, [ebp-0x694]
	mov eax, [eax]
	mov [ebp-0x6ac], eax
	mov dword [ebp-0x6a8], 0x0
	xor ebx, ebx
	jmp CG_RegisterImpactEffects_LoadObj_20
CG_RegisterImpactEffects_LoadObj_50:
	mov dword [esi+ebx*4], 0x0
	add ebx, 0x1
	cmp ebx, 0x1d
	jz CG_RegisterImpactEffects_LoadObj_30
CG_RegisterImpactEffects_LoadObj_20:
	mov eax, [edi+ebx*4]
	test eax, eax
	jz CG_RegisterImpactEffects_LoadObj_40
	cmp byte [eax], 0x0
	jz CG_RegisterImpactEffects_LoadObj_50
	mov [esp], eax
	call FX_Register
	mov [esi+ebx*4], eax
	add ebx, 0x1
	cmp ebx, 0x1d
	jnz CG_RegisterImpactEffects_LoadObj_20
CG_RegisterImpactEffects_LoadObj_30:
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
CG_RegisterImpactEffects_LoadObj_80:
	mov edx, [ebp-0x6bc]
	mov eax, [edx+ebx*4]
	test eax, eax
	jz CG_RegisterImpactEffects_LoadObj_60
CG_RegisterImpactEffects_LoadObj_130:
	cmp byte [eax], 0x0
	jnz CG_RegisterImpactEffects_LoadObj_70
	test esi, esi
	cmovnz eax, esi
	cmp byte [eax], 0x0
	jnz CG_RegisterImpactEffects_LoadObj_70
	mov eax, [ebp-0x6a4]
	mov dword [eax+ebx*4], 0x0
CG_RegisterImpactEffects_LoadObj_110:
	add ebx, 0x1
	cmp ebx, 0x4
	jnz CG_RegisterImpactEffects_LoadObj_80
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
	jnz CG_RegisterImpactEffects_LoadObj_90
	test eax, eax
	jnz CG_RegisterImpactEffects_LoadObj_100
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
CG_RegisterImpactEffects_LoadObj_40:
	mov [esp], ebx
	call Com_SurfaceTypeToName
	mov [esp+0xc], eax
	mov edx, [ebp-0x6ac]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_no_entry_for_eff
	mov dword [esp], 0x15
	call Com_Printf
	add dword [ebp-0x6a8], 0x1
	jmp CG_RegisterImpactEffects_LoadObj_50
CG_RegisterImpactEffects_LoadObj_70:
	mov [esp], eax
	call FX_Register
	mov edx, [ebp-0x6a4]
	mov [edx+ebx*4], eax
	jmp CG_RegisterImpactEffects_LoadObj_110
CG_RegisterImpactEffects_LoadObj_60:
	test esi, esi
	jz CG_RegisterImpactEffects_LoadObj_120
	mov eax, esi
	jmp CG_RegisterImpactEffects_LoadObj_130
CG_RegisterImpactEffects_LoadObj_120:
	mov [esp], ebx
	call CG_FleshTypeToName
	mov [esp+0xc], eax
	mov eax, [ebp-0x6a0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_no_entry_for_eff
	mov dword [esp], 0x15
	call Com_Printf
	add dword [ebp-0x69c], 0x1
	mov edx, [ebp-0x6a4]
	mov dword [edx+ebx*4], 0x0
	jmp CG_RegisterImpactEffects_LoadObj_110
CG_RegisterImpactEffects_LoadObj_100:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_i_missing_
	mov dword [esp], 0x15
	call Com_PrintError
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
CG_RegisterImpactEffects:
	push ebp
	mov ebp, esp
	mov eax, useFastFile
	mov eax, [eax]
	mov ecx, CG_RegisterImpactEffects_FastFile
	cmp byte [eax+0xc], 0x0
	mov eax, CG_RegisterImpactEffects_LoadObj
	cmovz ecx, eax
	pop ebp
	jmp ecx


;Initialized global or static variables of cg_effects_load_obj:
SECTION .data


;Initialized constant data of cg_effects_load_obj:
SECTION .rdata
g_TypeName: dd _cstring_bullet_small_nor, _cstring_bullet_small_exi, _cstring_bullet_large_nor, _cstring_bullet_large_exi, _cstring_shotgun_normal, _cstring_shotgun_exit, _cstring_bullet_ap_normal, _cstring_bullet_ap_exit, _cstring_grenade_bounce, _cstring_grenade_explode, _cstring_rocket_explode, _cstring_projectile_dud
g_FleshTypeName: dd _cstring_flesh_body_nonfa, _cstring_flesh_body_fatal, _cstring_flesh_head_nonfa, _cstring_flesh_head_fatal


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
_cstring_bullet_small_nor:		db "bullet_small_normal",0
_cstring_bullet_small_exi:		db "bullet_small_exit",0
_cstring_bullet_large_nor:		db "bullet_large_normal",0
_cstring_bullet_large_exi:		db "bullet_large_exit",0
_cstring_shotgun_normal:		db "shotgun_normal",0
_cstring_shotgun_exit:		db "shotgun_exit",0
_cstring_bullet_ap_normal:		db "bullet_ap_normal",0
_cstring_bullet_ap_exit:		db "bullet_ap_exit",0
_cstring_grenade_bounce:		db "grenade_bounce",0
_cstring_grenade_explode:		db "grenade_explode",0
_cstring_rocket_explode:		db "rocket_explode",0
_cstring_projectile_dud:		db "projectile_dud",0
_cstring_flesh_body_nonfa:		db "flesh_body_nonfatal",0
_cstring_flesh_body_fatal:		db "flesh_body_fatal",0
_cstring_flesh_head_nonfa:		db "flesh_head_nonfatal",0
_cstring_flesh_head_fatal:		db "flesh_head_fatal",0



;All constant floats and doubles:
SECTION .rdata

