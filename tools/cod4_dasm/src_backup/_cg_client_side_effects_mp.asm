;Imports of cg_client_side_effects_mp:
	extern _Z10I_strncpyzPcPKci
	extern _Z14Com_PrintErroriPKcz
	extern _Z19DB_FindXAssetHeader10XAssetTypePKc
	extern FS_ReadFile
	extern FS_FreeFile
	extern sscanf
	extern __maskrune
	extern _Z9I_strncmpPKcS0_i
	extern _Z18Com_FindSoundAliasPKc
	extern _Z8I_strcmpPKcS0_
	extern _Z11FX_RegisterPKc
	extern _Z12AnglesToAxisPKfPA3_f
	extern _Z22FX_SpawnOrientedEffectiPK11FxEffectDefiPKfPA3_S2_j
	extern _Z17CG_PlaySoundAliasiiPKfP16snd_alias_list_t
	extern _Z14Dvar_GetStringPKc
	extern _Z11Com_sprintfPciPKcz
	extern useFastFile
	extern _Z17Dvar_RegisterBoolPKchtS0_

;Exports of cg_client_side_effects_mp:
	global g_clientEntSounds
	global g_clientEntSoundCount
	global g_effectDefMapEntries
	global g_effectDefMap
	global _Z14CG_ParseStringPKcPcj
	global _ZZ39CG_CopyClientSideSoundEntityOrientationiPfPA3_fE8zeroVec3
	global _Z35CG_LoadClientEffectMapping_FastFilePKc
	global _Z34CG_LoadClientEffectMapping_LoadObjPKc
	global _Z29CG_LoadClientEffects_FastFileiPKc
	global _Z28CG_LoadClientEffects_LoadObjiPKc
	global _Z18CG_ParseVec3FinishPKcPf
	global _Z21CG_ParseClientEffectsiPKc
	global _Z27CG_ParseClientEffectMappingPKc
	global _Z22CG_AddClientSideSoundsi
	global _Z25CG_StartClientSideEffectsi
	global _Z33CG_ClientSideEffectsRegisterDvarsv
	global _Z39CG_CopyClientSideSoundEntityOrientationiPfPA3_f
	global cg_clientSideEffects


SECTION .text


;CG_ParseString(char const*, char*, unsigned int)
_Z14CG_ParseStringPKcPcj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	mov esi, eax
	mov [ebp-0x9c], edx
	mov edi, ecx
	cmp byte [eax], 0x22
	jz _Z14CG_ParseStringPKcPcj_10
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], eax
	lea ebx, [ebp-0x98]
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_expected_a_quote
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
_Z14CG_ParseStringPKcPcj_10:
	movzx edx, byte [esi+0x1]
	cmp dl, 0x22
	jz _Z14CG_ParseStringPKcPcj_20
	test dl, dl
	jnz _Z14CG_ParseStringPKcPcj_30
_Z14CG_ParseStringPKcPcj_20:
	xor ecx, ecx
	xor eax, eax
_Z14CG_ParseStringPKcPcj_50:
	cmp edi, ecx
	jz _Z14CG_ParseStringPKcPcj_40
	mov edx, [ebp-0x9c]
	mov byte [ecx+edx], 0x0
	lea eax, [esi+eax+0x2]
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14CG_ParseStringPKcPcj_30:
	test edi, edi
	jz _Z14CG_ParseStringPKcPcj_40
	xor ecx, ecx
_Z14CG_ParseStringPKcPcj_60:
	mov eax, [ebp-0x9c]
	mov [eax+ecx], dl
	add ecx, 0x1
	mov eax, ecx
	movzx edx, byte [esi+ecx+0x1]
	cmp dl, 0x22
	jz _Z14CG_ParseStringPKcPcj_50
	test dl, dl
	jz _Z14CG_ParseStringPKcPcj_50
	cmp ecx, edi
	jnz _Z14CG_ParseStringPKcPcj_60
_Z14CG_ParseStringPKcPcj_40:
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], esi
	lea ebx, [ebp-0x98]
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_string_was_longe
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	xor eax, eax
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;CG_LoadClientEffectMapping_FastFile(char const*)
_Z35CG_LoadClientEffectMapping_FastFilePKc:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov [esp+0x4], ebx
	mov dword [esp], 0x1f
	call _Z19DB_FindXAssetHeader10XAssetTypePKc
	test eax, eax
	jz _Z35CG_LoadClientEffectMapping_FastFilePKc_10
	mov eax, [eax+0x8]
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z27CG_ParseClientEffectMappingPKc
_Z35CG_LoadClientEffectMapping_FastFilePKc_10:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_file_not_found_s
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	add [eax], al


;CG_LoadClientEffectMapping_LoadObj(char const*)
_Z34CG_LoadClientEffectMapping_LoadObjPKc:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x8]
	lea eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call FS_ReadFile
	test eax, eax
	js _Z34CG_LoadClientEffectMapping_LoadObjPKc_10
	mov eax, [ebp-0xc]
	call _Z27CG_ParseClientEffectMappingPKc
	mov eax, [ebp-0xc]
	mov [esp], eax
	call FS_FreeFile
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_Z34CG_LoadClientEffectMapping_LoadObjPKc_10:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_file_not_found_s
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	add esp, 0x24
	pop ebx
	pop ebp
	ret


;CG_LoadClientEffects_FastFile(int, char const*)
_Z29CG_LoadClientEffects_FastFileiPKc:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov [esp+0x4], ebx
	mov dword [esp], 0x1f
	call _Z19DB_FindXAssetHeader10XAssetTypePKc
	test eax, eax
	jz _Z29CG_LoadClientEffects_FastFileiPKc_10
	mov edx, [eax+0x8]
	mov eax, esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _Z21CG_ParseClientEffectsiPKc
_Z29CG_LoadClientEffects_FastFileiPKc_10:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_file_not_found_s
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;CG_LoadClientEffects_LoadObj(int, char const*)
_Z28CG_LoadClientEffects_LoadObjiPKc:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0xc]
	lea eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call FS_ReadFile
	test eax, eax
	js _Z28CG_LoadClientEffects_LoadObjiPKc_10
	mov edx, [ebp-0xc]
	mov eax, [ebp+0x8]
	call _Z21CG_ParseClientEffectsiPKc
	mov eax, [ebp-0xc]
	mov [esp], eax
	call FS_FreeFile
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_Z28CG_LoadClientEffects_LoadObjiPKc_10:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_file_not_found_s
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;CG_ParseVec3Finish(char const*, float*)
_Z18CG_ParseVec3FinishPKcPf:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0xa0
	mov ebx, eax
	lea eax, [edx+0x8]
	mov [esp+0x10], eax
	lea eax, [edx+0x4]
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_f_f_f
	mov [esp], ebx
	call sscanf
	cmp eax, 0x3
	jnz _Z18CG_ParseVec3FinishPKcPf_10
	movzx eax, byte [ebx]
	cmp al, 0xa
	jz _Z18CG_ParseVec3FinishPKcPf_20
_Z18CG_ParseVec3FinishPKcPf_30:
	cmp al, 0xd
	jz _Z18CG_ParseVec3FinishPKcPf_20
	test al, al
	jz _Z18CG_ParseVec3FinishPKcPf_20
	add ebx, 0x1
	movzx eax, byte [ebx]
	cmp al, 0xa
	jnz _Z18CG_ParseVec3FinishPKcPf_30
_Z18CG_ParseVec3FinishPKcPf_20:
	mov esi, [0xd5cc084]
	jmp _Z18CG_ParseVec3FinishPKcPf_40
_Z18CG_ParseVec3FinishPKcPf_60:
	mov eax, [esi+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
	test eax, eax
	jz _Z18CG_ParseVec3FinishPKcPf_50
_Z18CG_ParseVec3FinishPKcPf_70:
	cmp byte [ebx], 0x0
	jz _Z18CG_ParseVec3FinishPKcPf_50
	add ebx, 0x1
_Z18CG_ParseVec3FinishPKcPf_40:
	movsx eax, byte [ebx]
	test eax, 0xffffff80
	jz _Z18CG_ParseVec3FinishPKcPf_60
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	test eax, eax
	jnz _Z18CG_ParseVec3FinishPKcPf_70
_Z18CG_ParseVec3FinishPKcPf_50:
	mov eax, ebx
	add esp, 0xa0
	pop ebx
	pop esi
	pop ebp
	ret
_Z18CG_ParseVec3FinishPKcPf_10:
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], ebx
	lea ebx, [ebp-0x88]
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_expected_3_float
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	xor ebx, ebx
	mov eax, ebx
	add esp, 0xa0
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;CG_ParseClientEffects(int, char const*)
_Z21CG_ParseClientEffectsiPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3fc
	mov [ebp-0x3dc], eax
	mov ebx, edx
	mov dword [esp+0x8], 0x25
	mov [esp+0x4], edx
	mov dword [esp], _cstring__createfx_genera
	call _Z9I_strncmpPKcS0_i
	test eax, eax
	jnz _Z21CG_ParseClientEffectsiPKc_10
	add ebx, 0x25
	jz _Z21CG_ParseClientEffectsiPKc_20
	mov esi, [0xd5cc084]
	jmp _Z21CG_ParseClientEffectsiPKc_30
_Z21CG_ParseClientEffectsiPKc_50:
	mov eax, [esi+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
	test eax, eax
	jz _Z21CG_ParseClientEffectsiPKc_40
_Z21CG_ParseClientEffectsiPKc_60:
	cmp byte [ebx], 0x0
	jz _Z21CG_ParseClientEffectsiPKc_40
	add ebx, 0x1
_Z21CG_ParseClientEffectsiPKc_30:
	movsx eax, byte [ebx]
	test eax, 0xffffff80
	jz _Z21CG_ParseClientEffectsiPKc_50
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	test eax, eax
	jnz _Z21CG_ParseClientEffectsiPKc_60
_Z21CG_ParseClientEffectsiPKc_40:
	mov dword [esp+0x8], 0x6
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_main
	call _Z9I_strncmpPKcS0_i
	test eax, eax
	jnz _Z21CG_ParseClientEffectsiPKc_70
	add ebx, 0x6
	jz _Z21CG_ParseClientEffectsiPKc_20
	mov esi, [0xd5cc084]
	jmp _Z21CG_ParseClientEffectsiPKc_80
_Z21CG_ParseClientEffectsiPKc_100:
	mov eax, [esi+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
	test eax, eax
	jz _Z21CG_ParseClientEffectsiPKc_90
_Z21CG_ParseClientEffectsiPKc_110:
	cmp byte [ebx], 0x0
	jz _Z21CG_ParseClientEffectsiPKc_90
	add ebx, 0x1
_Z21CG_ParseClientEffectsiPKc_80:
	movsx eax, byte [ebx]
	test eax, 0xffffff80
	jz _Z21CG_ParseClientEffectsiPKc_100
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	test eax, eax
	jnz _Z21CG_ParseClientEffectsiPKc_110
_Z21CG_ParseClientEffectsiPKc_90:
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_
	call _Z9I_strncmpPKcS0_i
	test eax, eax
	jnz _Z21CG_ParseClientEffectsiPKc_120
	mov edi, ebx
	add edi, 0x1
	jz _Z21CG_ParseClientEffectsiPKc_20
	mov ebx, [0xd5cc084]
	jmp _Z21CG_ParseClientEffectsiPKc_130
_Z21CG_ParseClientEffectsiPKc_150:
	mov eax, [ebx+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
	test eax, eax
	jz _Z21CG_ParseClientEffectsiPKc_140
_Z21CG_ParseClientEffectsiPKc_160:
	cmp byte [edi], 0x0
	jz _Z21CG_ParseClientEffectsiPKc_140
	add edi, 0x1
_Z21CG_ParseClientEffectsiPKc_130:
	movsx eax, byte [edi]
	test eax, 0xffffff80
	jz _Z21CG_ParseClientEffectsiPKc_150
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	test eax, eax
	jnz _Z21CG_ParseClientEffectsiPKc_160
_Z21CG_ParseClientEffectsiPKc_140:
	mov dword [esp+0x8], 0x2
	mov [esp+0x4], edi
	mov dword [esp], _cstring_1
	call _Z9I_strncmpPKcS0_i
	test eax, eax
	jz _Z21CG_ParseClientEffectsiPKc_170
	test edi, edi
	jz _Z21CG_ParseClientEffectsiPKc_180
_Z21CG_ParseClientEffectsiPKc_400:
	movzx eax, byte [edi]
	cmp al, 0x7d
	jz _Z21CG_ParseClientEffectsiPKc_180
	test al, al
	jnz _Z21CG_ParseClientEffectsiPKc_190
_Z21CG_ParseClientEffectsiPKc_180:
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], edi
	mov dword [esp], _cstring_2
	call _Z9I_strncmpPKcS0_i
	test eax, eax
	jnz _Z21CG_ParseClientEffectsiPKc_200
	mov ebx, edi
	add ebx, 0x1
	jz _Z21CG_ParseClientEffectsiPKc_20
	movzx eax, byte [edi+0x1]
	cmp al, 0xa
	jz _Z21CG_ParseClientEffectsiPKc_210
_Z21CG_ParseClientEffectsiPKc_220:
	cmp al, 0xd
	jz _Z21CG_ParseClientEffectsiPKc_210
	test al, al
	jz _Z21CG_ParseClientEffectsiPKc_210
	add ebx, 0x1
	movzx eax, byte [ebx]
	cmp al, 0xa
	jnz _Z21CG_ParseClientEffectsiPKc_220
_Z21CG_ParseClientEffectsiPKc_210:
	mov esi, [0xd5cc084]
	jmp _Z21CG_ParseClientEffectsiPKc_230
_Z21CG_ParseClientEffectsiPKc_250:
	mov eax, [esi+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
_Z21CG_ParseClientEffectsiPKc_260:
	test eax, eax
	jz _Z21CG_ParseClientEffectsiPKc_240
	cmp byte [ebx], 0x0
	jz _Z21CG_ParseClientEffectsiPKc_240
	add ebx, 0x1
_Z21CG_ParseClientEffectsiPKc_230:
	movsx eax, byte [ebx]
	test eax, 0xffffff80
	jz _Z21CG_ParseClientEffectsiPKc_250
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	jmp _Z21CG_ParseClientEffectsiPKc_260
_Z21CG_ParseClientEffectsiPKc_530:
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], ebx
	lea ebx, [ebp-0xd8]
_Z21CG_ParseClientEffectsiPKc_940:
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	mov dword [esp+0xc], _cstring_entv_soundalias_
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unexpected_text_
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
_Z21CG_ParseClientEffectsiPKc_20:
	add esp, 0x3fc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21CG_ParseClientEffectsiPKc_10:
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], ebx
	lea ebx, [ebp-0xd8]
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	mov dword [esp+0xc], _cstring__createfx_genera
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unexpected_text_
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	add esp, 0x3fc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21CG_ParseClientEffectsiPKc_70:
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], ebx
	lea ebx, [ebp-0xd8]
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	mov dword [esp+0xc], _cstring_main
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unexpected_text_
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	add esp, 0x3fc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21CG_ParseClientEffectsiPKc_570:
	mov eax, [ebp-0x3dc]
	test eax, eax
	jnz _Z21CG_ParseClientEffectsiPKc_270
	mov eax, [g_clientEntSoundCount]
	cmp eax, 0x80
	jz _Z21CG_ParseClientEffectsiPKc_280
	mov ebx, eax
	shl ebx, 0x4
	lea edx, [ebx+g_clientEntSounds]
	mov eax, [ebp-0x34]
	mov [ebx+g_clientEntSounds], eax
	mov eax, [ebp-0x30]
	mov [edx+0x4], eax
	mov eax, [ebp-0x2c]
	mov [edx+0x8], eax
	mov [esp], esi
	call _Z18Com_FindSoundAliasPKc
	mov [ebx+g_clientEntSounds+0xc], eax
	add dword [g_clientEntSoundCount], 0x1
_Z21CG_ParseClientEffectsiPKc_270:
	test edi, edi
	jz _Z21CG_ParseClientEffectsiPKc_180
_Z21CG_ParseClientEffectsiPKc_810:
	movzx eax, byte [edi]
	cmp al, 0x7d
	jz _Z21CG_ParseClientEffectsiPKc_180
	test al, al
	jz _Z21CG_ParseClientEffectsiPKc_180
_Z21CG_ParseClientEffectsiPKc_190:
	mov dword [esp+0x8], 0x2b
	mov [esp+0x4], edi
	mov dword [esp], _cstring_ent__mapsmp_crea
	call _Z9I_strncmpPKcS0_i
	test eax, eax
	jnz _Z21CG_ParseClientEffectsiPKc_290
	mov dword [esp+0x8], 0x2b
	mov [esp+0x4], edi
	mov dword [esp], _cstring_ent__mapsmp_crea
	call _Z9I_strncmpPKcS0_i
	test eax, eax
	jnz _Z21CG_ParseClientEffectsiPKc_300
	mov ebx, edi
	add ebx, 0x2b
	jz _Z21CG_ParseClientEffectsiPKc_20
	mov esi, [0xd5cc084]
	jmp _Z21CG_ParseClientEffectsiPKc_310
_Z21CG_ParseClientEffectsiPKc_330:
	mov eax, [esi+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
_Z21CG_ParseClientEffectsiPKc_340:
	test eax, eax
	jz _Z21CG_ParseClientEffectsiPKc_320
	cmp byte [ebx], 0x0
	jz _Z21CG_ParseClientEffectsiPKc_320
	add ebx, 0x1
_Z21CG_ParseClientEffectsiPKc_310:
	movsx eax, byte [ebx]
	test eax, 0xffffff80
	jz _Z21CG_ParseClientEffectsiPKc_330
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	jmp _Z21CG_ParseClientEffectsiPKc_340
_Z21CG_ParseClientEffectsiPKc_170:
	mov dword [esp+0x8], 0x2
	mov [esp+0x4], edi
	mov dword [esp], _cstring_1
	call _Z9I_strncmpPKcS0_i
	test eax, eax
	jnz _Z21CG_ParseClientEffectsiPKc_350
	add edi, 0x2
	jz _Z21CG_ParseClientEffectsiPKc_360
	movzx eax, byte [edi]
	cmp al, 0xa
	jz _Z21CG_ParseClientEffectsiPKc_370
_Z21CG_ParseClientEffectsiPKc_380:
	cmp al, 0xd
	jz _Z21CG_ParseClientEffectsiPKc_370
	test al, al
	jz _Z21CG_ParseClientEffectsiPKc_370
	add edi, 0x1
	movzx eax, byte [edi]
	cmp al, 0xa
	jnz _Z21CG_ParseClientEffectsiPKc_380
_Z21CG_ParseClientEffectsiPKc_370:
	mov ebx, [0xd5cc084]
	jmp _Z21CG_ParseClientEffectsiPKc_390
_Z21CG_ParseClientEffectsiPKc_410:
	mov eax, [ebx+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
_Z21CG_ParseClientEffectsiPKc_420:
	test eax, eax
	jz _Z21CG_ParseClientEffectsiPKc_400
	cmp byte [edi], 0x0
	jz _Z21CG_ParseClientEffectsiPKc_400
	add edi, 0x1
_Z21CG_ParseClientEffectsiPKc_390:
	movsx eax, byte [edi]
	test eax, 0xffffff80
	jz _Z21CG_ParseClientEffectsiPKc_410
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	jmp _Z21CG_ParseClientEffectsiPKc_420
_Z21CG_ParseClientEffectsiPKc_290:
	mov dword [esp+0x8], 0x2d
	mov [esp+0x4], edi
	mov dword [esp], _cstring_ent__mapsmp_util
	call _Z9I_strncmpPKcS0_i
	test eax, eax
	jnz _Z21CG_ParseClientEffectsiPKc_430
	mov dword [esp+0x8], 0x2d
	mov [esp+0x4], edi
	mov dword [esp], _cstring_ent__mapsmp_util
	call _Z9I_strncmpPKcS0_i
	test eax, eax
	jnz _Z21CG_ParseClientEffectsiPKc_440
	mov ebx, edi
	add ebx, 0x2d
	jz _Z21CG_ParseClientEffectsiPKc_20
	movzx eax, byte [edi+0x2d]
	cmp al, 0xa
	jz _Z21CG_ParseClientEffectsiPKc_450
_Z21CG_ParseClientEffectsiPKc_460:
	cmp al, 0xd
	jz _Z21CG_ParseClientEffectsiPKc_450
	test al, al
	jz _Z21CG_ParseClientEffectsiPKc_450
	add ebx, 0x1
	movzx eax, byte [ebx]
	cmp al, 0xa
	jnz _Z21CG_ParseClientEffectsiPKc_460
_Z21CG_ParseClientEffectsiPKc_450:
	mov esi, [0xd5cc084]
	jmp _Z21CG_ParseClientEffectsiPKc_470
_Z21CG_ParseClientEffectsiPKc_490:
	mov eax, [esi+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
_Z21CG_ParseClientEffectsiPKc_500:
	test eax, eax
	jz _Z21CG_ParseClientEffectsiPKc_480
	cmp byte [ebx], 0x0
	jz _Z21CG_ParseClientEffectsiPKc_480
	add ebx, 0x1
_Z21CG_ParseClientEffectsiPKc_470:
	movsx eax, byte [ebx]
	test eax, 0xffffff80
	jz _Z21CG_ParseClientEffectsiPKc_490
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	jmp _Z21CG_ParseClientEffectsiPKc_500
_Z21CG_ParseClientEffectsiPKc_320:
	mov dword [esp+0x8], 0x15
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_entv_origin___
	call _Z9I_strncmpPKcS0_i
	test eax, eax
	jnz _Z21CG_ParseClientEffectsiPKc_510
	mov eax, ebx
	add eax, 0x15
	jz _Z21CG_ParseClientEffectsiPKc_20
	lea edx, [ebp-0x34]
	call _Z18CG_ParseVec3FinishPKcPf
	mov ebx, eax
	test eax, eax
	jz _Z21CG_ParseClientEffectsiPKc_20
	mov dword [esp+0x8], 0x15
	mov [esp+0x4], eax
	mov dword [esp], _cstring_entv_angles___
	call _Z9I_strncmpPKcS0_i
	test eax, eax
	jnz _Z21CG_ParseClientEffectsiPKc_520
	mov eax, ebx
	add eax, 0x15
	jz _Z21CG_ParseClientEffectsiPKc_20
	lea edx, [ebp-0x28]
	call _Z18CG_ParseVec3FinishPKcPf
	mov ebx, eax
	test eax, eax
	jz _Z21CG_ParseClientEffectsiPKc_20
	mov dword [esp+0x8], 0x18
	mov [esp+0x4], eax
	mov dword [esp], _cstring_entv_soundalias_
	call _Z9I_strncmpPKcS0_i
	test eax, eax
	jnz _Z21CG_ParseClientEffectsiPKc_530
	mov eax, ebx
	add eax, 0x18
	jz _Z21CG_ParseClientEffectsiPKc_20
	lea esi, [ebp-0x3d8]
	mov ecx, 0x100
	mov edx, esi
	call _Z14CG_ParseStringPKcPcj
	mov edi, eax
	test eax, eax
	jz _Z21CG_ParseClientEffectsiPKc_20
	movzx eax, byte [edi]
	cmp al, 0xa
	jz _Z21CG_ParseClientEffectsiPKc_540
_Z21CG_ParseClientEffectsiPKc_550:
	cmp al, 0xd
	jz _Z21CG_ParseClientEffectsiPKc_540
	test al, al
	jz _Z21CG_ParseClientEffectsiPKc_540
	add edi, 0x1
	movzx eax, byte [edi]
	cmp al, 0xa
	jnz _Z21CG_ParseClientEffectsiPKc_550
_Z21CG_ParseClientEffectsiPKc_540:
	mov ebx, [0xd5cc084]
	jmp _Z21CG_ParseClientEffectsiPKc_560
_Z21CG_ParseClientEffectsiPKc_580:
	mov eax, [ebx+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
_Z21CG_ParseClientEffectsiPKc_590:
	test eax, eax
	jz _Z21CG_ParseClientEffectsiPKc_570
	cmp byte [edi], 0x0
	jz _Z21CG_ParseClientEffectsiPKc_570
	add edi, 0x1
_Z21CG_ParseClientEffectsiPKc_560:
	movsx eax, byte [edi]
	test eax, 0xffffff80
	jz _Z21CG_ParseClientEffectsiPKc_580
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	jmp _Z21CG_ParseClientEffectsiPKc_590
_Z21CG_ParseClientEffectsiPKc_480:
	mov dword [esp+0x8], 0x15
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_entv_origin___
	call _Z9I_strncmpPKcS0_i
	test eax, eax
	jnz _Z21CG_ParseClientEffectsiPKc_600
	mov eax, ebx
	add eax, 0x15
	jz _Z21CG_ParseClientEffectsiPKc_20
	lea edx, [ebp-0x34]
	call _Z18CG_ParseVec3FinishPKcPf
	mov ebx, eax
	test eax, eax
	jz _Z21CG_ParseClientEffectsiPKc_20
	mov dword [esp+0x8], 0x15
	mov [esp+0x4], eax
	mov dword [esp], _cstring_entv_angles___
	call _Z9I_strncmpPKcS0_i
	test eax, eax
	jnz _Z21CG_ParseClientEffectsiPKc_610
	mov eax, ebx
	add eax, 0x15
	jz _Z21CG_ParseClientEffectsiPKc_20
	lea edx, [ebp-0x28]
	call _Z18CG_ParseVec3FinishPKcPf
	mov ebx, eax
	test eax, eax
	jz _Z21CG_ParseClientEffectsiPKc_20
	mov dword [esp+0x8], 0x12
	mov [esp+0x4], eax
	mov dword [esp], _cstring_entv_fxid___
	call _Z9I_strncmpPKcS0_i
	test eax, eax
	jnz _Z21CG_ParseClientEffectsiPKc_620
	mov eax, ebx
	add eax, 0x12
	jz _Z21CG_ParseClientEffectsiPKc_20
	mov ecx, 0x100
	lea edx, [ebp-0x2d8]
	call _Z14CG_ParseStringPKcPcj
	mov ebx, eax
	test eax, eax
	jz _Z21CG_ParseClientEffectsiPKc_20
	movzx eax, byte [ebx]
	cmp al, 0xa
	jz _Z21CG_ParseClientEffectsiPKc_630
_Z21CG_ParseClientEffectsiPKc_640:
	cmp al, 0xd
	jz _Z21CG_ParseClientEffectsiPKc_630
	test al, al
	jz _Z21CG_ParseClientEffectsiPKc_630
	add ebx, 0x1
	movzx eax, byte [ebx]
	cmp al, 0xa
	jnz _Z21CG_ParseClientEffectsiPKc_640
_Z21CG_ParseClientEffectsiPKc_630:
	mov esi, [0xd5cc084]
	jmp _Z21CG_ParseClientEffectsiPKc_650
_Z21CG_ParseClientEffectsiPKc_670:
	mov eax, [esi+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
_Z21CG_ParseClientEffectsiPKc_680:
	test eax, eax
	jz _Z21CG_ParseClientEffectsiPKc_660
	cmp byte [ebx], 0x0
	jz _Z21CG_ParseClientEffectsiPKc_660
	add ebx, 0x1
_Z21CG_ParseClientEffectsiPKc_650:
	movsx eax, byte [ebx]
	test eax, 0xffffff80
	jz _Z21CG_ParseClientEffectsiPKc_670
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	jmp _Z21CG_ParseClientEffectsiPKc_680
_Z21CG_ParseClientEffectsiPKc_240:
	cmp byte [ebx], 0x0
	jz _Z21CG_ParseClientEffectsiPKc_20
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], ebx
	lea ebx, [ebp-0x158]
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unexpected_data_
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	jmp _Z21CG_ParseClientEffectsiPKc_20
_Z21CG_ParseClientEffectsiPKc_660:
	mov dword [esp+0x8], 0x13
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_entv_delay___
	call _Z9I_strncmpPKcS0_i
	test eax, eax
	jnz _Z21CG_ParseClientEffectsiPKc_690
	mov edi, ebx
	add edi, 0x13
	jz _Z21CG_ParseClientEffectsiPKc_20
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_f
	mov [esp], edi
	call sscanf
	sub eax, 0x1
	jnz _Z21CG_ParseClientEffectsiPKc_700
	movzx eax, byte [ebx+0x13]
	cmp al, 0xa
	jz _Z21CG_ParseClientEffectsiPKc_710
_Z21CG_ParseClientEffectsiPKc_720:
	cmp al, 0xd
	jz _Z21CG_ParseClientEffectsiPKc_710
	test al, al
	jz _Z21CG_ParseClientEffectsiPKc_710
	add edi, 0x1
	movzx eax, byte [edi]
	cmp al, 0xa
	jnz _Z21CG_ParseClientEffectsiPKc_720
_Z21CG_ParseClientEffectsiPKc_710:
	mov ebx, [0xd5cc084]
	jmp _Z21CG_ParseClientEffectsiPKc_730
_Z21CG_ParseClientEffectsiPKc_750:
	mov eax, [ebx+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
_Z21CG_ParseClientEffectsiPKc_760:
	test eax, eax
	jz _Z21CG_ParseClientEffectsiPKc_740
	cmp byte [edi], 0x0
	jz _Z21CG_ParseClientEffectsiPKc_740
	add edi, 0x1
_Z21CG_ParseClientEffectsiPKc_730:
	movsx eax, byte [edi]
	test eax, 0xffffff80
	jz _Z21CG_ParseClientEffectsiPKc_750
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	jmp _Z21CG_ParseClientEffectsiPKc_760
_Z21CG_ParseClientEffectsiPKc_740:
	mov dword [esp+0x8], 0x18
	mov [esp+0x4], edi
	mov dword [esp], _cstring_entv_soundalias_
	call _Z9I_strncmpPKcS0_i
	test eax, eax
	jz _Z21CG_ParseClientEffectsiPKc_770
_Z21CG_ParseClientEffectsiPKc_890:
	mov ecx, [g_effectDefMapEntries]
	test ecx, ecx
	jle _Z21CG_ParseClientEffectsiPKc_780
	xor ebx, ebx
	mov esi, g_effectDefMap
_Z21CG_ParseClientEffectsiPKc_800:
	lea eax, [ebp-0x2d8]
	mov [esp+0x4], eax
	mov eax, ebx
	shl eax, 0x7
	mov [ebp-0x3e0], eax
	mov [esp], esi
	call _Z8I_strcmpPKcS0_
	test eax, eax
	jz _Z21CG_ParseClientEffectsiPKc_790
	add ebx, 0x1
	sub esi, 0xffffff80
	cmp ebx, [g_effectDefMapEntries]
	jl _Z21CG_ParseClientEffectsiPKc_800
_Z21CG_ParseClientEffectsiPKc_780:
	lea eax, [ebp-0x2d8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_couldnt_find_s_i
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
_Z21CG_ParseClientEffectsiPKc_910:
	test edi, edi
	jnz _Z21CG_ParseClientEffectsiPKc_810
	jmp _Z21CG_ParseClientEffectsiPKc_20
_Z21CG_ParseClientEffectsiPKc_120:
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], ebx
	lea ebx, [ebp-0xd8]
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	mov dword [esp+0xc], _cstring_
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unexpected_text_
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	add esp, 0x3fc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21CG_ParseClientEffectsiPKc_200:
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], edi
	lea ebx, [ebp-0xd8]
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	mov dword [esp+0xc], _cstring_2
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unexpected_text_
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	jmp _Z21CG_ParseClientEffectsiPKc_20
_Z21CG_ParseClientEffectsiPKc_350:
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], edi
	lea ebx, [ebp-0xd8]
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	mov dword [esp+0xc], _cstring_1
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unexpected_text_
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
_Z21CG_ParseClientEffectsiPKc_360:
	xor edi, edi
	jmp _Z21CG_ParseClientEffectsiPKc_180
_Z21CG_ParseClientEffectsiPKc_770:
	mov dword [esp+0x8], 0x18
	mov [esp+0x4], edi
	mov dword [esp], _cstring_entv_soundalias_
	call _Z9I_strncmpPKcS0_i
	test eax, eax
	jnz _Z21CG_ParseClientEffectsiPKc_820
	mov eax, edi
	add eax, 0x18
	jz _Z21CG_ParseClientEffectsiPKc_20
	lea esi, [ebp-0x3d8]
	mov ecx, 0x100
	mov edx, esi
	call _Z14CG_ParseStringPKcPcj
	mov edi, eax
	test eax, eax
	jz _Z21CG_ParseClientEffectsiPKc_20
	movzx eax, byte [edi]
	cmp al, 0xa
	jz _Z21CG_ParseClientEffectsiPKc_830
_Z21CG_ParseClientEffectsiPKc_840:
	cmp al, 0xd
	jz _Z21CG_ParseClientEffectsiPKc_830
	test al, al
	jz _Z21CG_ParseClientEffectsiPKc_830
	add edi, 0x1
	movzx eax, byte [edi]
	cmp al, 0xa
	jnz _Z21CG_ParseClientEffectsiPKc_840
_Z21CG_ParseClientEffectsiPKc_830:
	mov ebx, [0xd5cc084]
	jmp _Z21CG_ParseClientEffectsiPKc_850
_Z21CG_ParseClientEffectsiPKc_870:
	mov eax, [ebx+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
_Z21CG_ParseClientEffectsiPKc_880:
	test eax, eax
	jz _Z21CG_ParseClientEffectsiPKc_860
	cmp byte [edi], 0x0
	jz _Z21CG_ParseClientEffectsiPKc_860
	add edi, 0x1
_Z21CG_ParseClientEffectsiPKc_850:
	movsx eax, byte [edi]
	test eax, 0xffffff80
	jz _Z21CG_ParseClientEffectsiPKc_870
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	jmp _Z21CG_ParseClientEffectsiPKc_880
_Z21CG_ParseClientEffectsiPKc_860:
	mov ebx, [ebp-0x3dc]
	test ebx, ebx
	jnz _Z21CG_ParseClientEffectsiPKc_890
	mov eax, [g_clientEntSoundCount]
	cmp eax, 0x80
	jz _Z21CG_ParseClientEffectsiPKc_900
	mov ebx, eax
	shl ebx, 0x4
	lea edx, [ebx+g_clientEntSounds]
	mov eax, [ebp-0x34]
	mov [ebx+g_clientEntSounds], eax
	mov eax, [ebp-0x30]
	mov [edx+0x4], eax
	mov eax, [ebp-0x2c]
	mov [edx+0x8], eax
	mov [esp], esi
	call _Z18Com_FindSoundAliasPKc
	mov [ebx+g_clientEntSounds+0xc], eax
	add dword [g_clientEntSoundCount], 0x1
	jmp _Z21CG_ParseClientEffectsiPKc_890
_Z21CG_ParseClientEffectsiPKc_790:
	mov dword [esp+0x8], 0x40
	mov eax, [ebp-0x3e0]
	add eax, g_effectDefMap+0x40
	mov [esp+0x4], eax
	lea ebx, [ebp-0xd8]
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	mov [esp], ebx
	call _Z11FX_RegisterPKc
	mov esi, eax
	lea ebx, [ebp-0x58]
	mov [esp+0x4], ebx
	lea eax, [ebp-0x28]
	mov [esp], eax
	call _Z12AnglesToAxisPKfPA3_f
	mov dword [esp+0x14], 0x3ff
	mov [esp+0x10], ebx
	lea eax, [ebp-0x34]
	mov [esp+0xc], eax
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [ebp-0x1c]
	cvttss2si eax, xmm0
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov eax, [ebp-0x3dc]
	mov [esp], eax
	call _Z22FX_SpawnOrientedEffectiPK11FxEffectDefiPKfPA3_S2_j
	jmp _Z21CG_ParseClientEffectsiPKc_910
_Z21CG_ParseClientEffectsiPKc_280:
	mov dword [esp+0x4], _cstring_too_many_client_
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	jmp _Z21CG_ParseClientEffectsiPKc_270
_Z21CG_ParseClientEffectsiPKc_900:
	mov dword [esp+0x4], _cstring_too_many_client_
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	jmp _Z21CG_ParseClientEffectsiPKc_890
_Z21CG_ParseClientEffectsiPKc_610:
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], ebx
	lea ebx, [ebp-0x1d8]
_Z21CG_ParseClientEffectsiPKc_920:
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	mov dword [esp+0xc], _cstring_entv_angles___
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unexpected_text_
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	jmp _Z21CG_ParseClientEffectsiPKc_20
_Z21CG_ParseClientEffectsiPKc_600:
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], ebx
	lea ebx, [ebp-0x1d8]
_Z21CG_ParseClientEffectsiPKc_930:
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	mov dword [esp+0xc], _cstring_entv_origin___
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unexpected_text_
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	jmp _Z21CG_ParseClientEffectsiPKc_20
_Z21CG_ParseClientEffectsiPKc_520:
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], ebx
	lea ebx, [ebp-0xd8]
	jmp _Z21CG_ParseClientEffectsiPKc_920
_Z21CG_ParseClientEffectsiPKc_620:
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], ebx
	lea ebx, [ebp-0x1d8]
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	mov dword [esp+0xc], _cstring_entv_fxid___
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unexpected_text_
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	jmp _Z21CG_ParseClientEffectsiPKc_20
_Z21CG_ParseClientEffectsiPKc_430:
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], edi
	lea ebx, [ebp-0x158]
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_expected_ent__ma
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	jmp _Z21CG_ParseClientEffectsiPKc_20
_Z21CG_ParseClientEffectsiPKc_300:
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], edi
	lea ebx, [ebp-0xd8]
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	mov dword [esp+0xc], _cstring_ent__mapsmp_crea
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unexpected_text_
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	jmp _Z21CG_ParseClientEffectsiPKc_20
_Z21CG_ParseClientEffectsiPKc_510:
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], ebx
	lea ebx, [ebp-0xd8]
	jmp _Z21CG_ParseClientEffectsiPKc_930
_Z21CG_ParseClientEffectsiPKc_440:
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], edi
	lea ebx, [ebp-0x1d8]
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	mov dword [esp+0xc], _cstring_ent__mapsmp_util
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unexpected_text_
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	jmp _Z21CG_ParseClientEffectsiPKc_20
_Z21CG_ParseClientEffectsiPKc_700:
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], edi
	lea ebx, [ebp-0x1d8]
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_expected_a_float
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	jmp _Z21CG_ParseClientEffectsiPKc_20
_Z21CG_ParseClientEffectsiPKc_690:
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], ebx
	lea ebx, [ebp-0x1d8]
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	mov dword [esp+0xc], _cstring_entv_delay___
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unexpected_text_
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	jmp _Z21CG_ParseClientEffectsiPKc_20
_Z21CG_ParseClientEffectsiPKc_820:
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], edi
	lea ebx, [ebp-0x1d8]
	jmp _Z21CG_ParseClientEffectsiPKc_940
	nop


;CG_ParseClientEffectMapping(char const*)
_Z27CG_ParseClientEffectMappingPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x13c
	mov dword [g_effectDefMapEntries], 0x0
	mov ebx, eax
	mov esi, [0xd5cc084]
	jmp _Z27CG_ParseClientEffectMappingPKc_10
_Z27CG_ParseClientEffectMappingPKc_30:
	mov eax, [esi+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
	test eax, eax
	jz _Z27CG_ParseClientEffectMappingPKc_20
_Z27CG_ParseClientEffectMappingPKc_40:
	cmp byte [ebx], 0x0
	jz _Z27CG_ParseClientEffectMappingPKc_20
	add ebx, 0x1
_Z27CG_ParseClientEffectMappingPKc_10:
	movsx eax, byte [ebx]
	test eax, 0xffffff80
	jz _Z27CG_ParseClientEffectMappingPKc_30
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	test eax, eax
	jnz _Z27CG_ParseClientEffectMappingPKc_40
_Z27CG_ParseClientEffectMappingPKc_20:
	cmp byte [ebx], 0x0
	jz _Z27CG_ParseClientEffectMappingPKc_50
_Z27CG_ParseClientEffectMappingPKc_490:
	mov dword [esp+0x8], 0xe
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_level_effect
	call _Z9I_strncmpPKcS0_i
	test eax, eax
	jz _Z27CG_ParseClientEffectMappingPKc_60
	movzx eax, byte [ebx]
	cmp al, 0xa
	jz _Z27CG_ParseClientEffectMappingPKc_70
_Z27CG_ParseClientEffectMappingPKc_80:
	cmp al, 0xd
	jz _Z27CG_ParseClientEffectMappingPKc_70
	test al, al
	jz _Z27CG_ParseClientEffectMappingPKc_70
	add ebx, 0x1
	movzx eax, byte [ebx]
	cmp al, 0xa
	jnz _Z27CG_ParseClientEffectMappingPKc_80
_Z27CG_ParseClientEffectMappingPKc_70:
	mov esi, [0xd5cc084]
	jmp _Z27CG_ParseClientEffectMappingPKc_90
_Z27CG_ParseClientEffectMappingPKc_100:
	mov eax, [esi+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
_Z27CG_ParseClientEffectMappingPKc_110:
	test eax, eax
	jz _Z27CG_ParseClientEffectMappingPKc_20
	cmp byte [ebx], 0x0
	jz _Z27CG_ParseClientEffectMappingPKc_20
	add ebx, 0x1
_Z27CG_ParseClientEffectMappingPKc_90:
	movsx eax, byte [ebx]
	test eax, 0xffffff80
	jz _Z27CG_ParseClientEffectMappingPKc_100
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	jmp _Z27CG_ParseClientEffectMappingPKc_110
_Z27CG_ParseClientEffectMappingPKc_60:
	mov dword [esp+0x8], 0xe
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_level_effect
	call _Z9I_strncmpPKcS0_i
	test eax, eax
	jnz _Z27CG_ParseClientEffectMappingPKc_120
	add ebx, 0xe
	jz _Z27CG_ParseClientEffectMappingPKc_50
	mov esi, [0xd5cc084]
	jmp _Z27CG_ParseClientEffectMappingPKc_130
_Z27CG_ParseClientEffectMappingPKc_150:
	mov eax, [esi+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
	test eax, eax
	jz _Z27CG_ParseClientEffectMappingPKc_140
_Z27CG_ParseClientEffectMappingPKc_160:
	cmp byte [ebx], 0x0
	jz _Z27CG_ParseClientEffectMappingPKc_140
	add ebx, 0x1
_Z27CG_ParseClientEffectMappingPKc_130:
	movsx eax, byte [ebx]
	test eax, 0xffffff80
	jz _Z27CG_ParseClientEffectMappingPKc_150
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	test eax, eax
	jnz _Z27CG_ParseClientEffectMappingPKc_160
_Z27CG_ParseClientEffectMappingPKc_140:
	mov ecx, 0x40
	lea edx, [ebp-0x58]
	mov eax, ebx
	call _Z14CG_ParseStringPKcPcj
	mov ebx, eax
	test eax, eax
	jnz _Z27CG_ParseClientEffectMappingPKc_170
	jmp _Z27CG_ParseClientEffectMappingPKc_50
_Z27CG_ParseClientEffectMappingPKc_190:
	mov eax, [0xd5cc084]
	mov eax, [eax+edx*4+0x34]
	shr eax, 0xe
	and eax, 0x1
	test eax, eax
	jz _Z27CG_ParseClientEffectMappingPKc_180
_Z27CG_ParseClientEffectMappingPKc_200:
	cmp byte [ebx], 0x0
	jz _Z27CG_ParseClientEffectMappingPKc_180
	add ebx, 0x1
_Z27CG_ParseClientEffectMappingPKc_170:
	movsx edx, byte [ebx]
	test edx, 0xffffff80
	jz _Z27CG_ParseClientEffectMappingPKc_190
	mov dword [esp+0x4], 0x4000
	mov [esp], edx
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	test eax, eax
	jnz _Z27CG_ParseClientEffectMappingPKc_200
_Z27CG_ParseClientEffectMappingPKc_180:
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_3
	call _Z9I_strncmpPKcS0_i
	test eax, eax
	jnz _Z27CG_ParseClientEffectMappingPKc_210
	add ebx, 0x1
	jz _Z27CG_ParseClientEffectMappingPKc_50
	mov esi, [0xd5cc084]
	jmp _Z27CG_ParseClientEffectMappingPKc_220
_Z27CG_ParseClientEffectMappingPKc_240:
	mov eax, [esi+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
	test eax, eax
	jz _Z27CG_ParseClientEffectMappingPKc_230
_Z27CG_ParseClientEffectMappingPKc_250:
	cmp byte [ebx], 0x0
	jz _Z27CG_ParseClientEffectMappingPKc_230
	add ebx, 0x1
_Z27CG_ParseClientEffectMappingPKc_220:
	movsx eax, byte [ebx]
	test eax, 0xffffff80
	jz _Z27CG_ParseClientEffectMappingPKc_240
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	test eax, eax
	jnz _Z27CG_ParseClientEffectMappingPKc_250
_Z27CG_ParseClientEffectMappingPKc_230:
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_4
	call _Z9I_strncmpPKcS0_i
	test eax, eax
	jnz _Z27CG_ParseClientEffectMappingPKc_260
	add ebx, 0x1
	jz _Z27CG_ParseClientEffectMappingPKc_50
	mov esi, [0xd5cc084]
	jmp _Z27CG_ParseClientEffectMappingPKc_270
_Z27CG_ParseClientEffectMappingPKc_290:
	mov eax, [esi+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
	test eax, eax
	jz _Z27CG_ParseClientEffectMappingPKc_280
_Z27CG_ParseClientEffectMappingPKc_300:
	cmp byte [ebx], 0x0
	jz _Z27CG_ParseClientEffectMappingPKc_280
	add ebx, 0x1
_Z27CG_ParseClientEffectMappingPKc_270:
	movsx eax, byte [ebx]
	test eax, 0xffffff80
	jz _Z27CG_ParseClientEffectMappingPKc_290
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	test eax, eax
	jnz _Z27CG_ParseClientEffectMappingPKc_300
_Z27CG_ParseClientEffectMappingPKc_280:
	mov dword [esp+0x8], 0x6
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_loadfx
	call _Z9I_strncmpPKcS0_i
	test eax, eax
	jnz _Z27CG_ParseClientEffectMappingPKc_310
	add ebx, 0x6
	jz _Z27CG_ParseClientEffectMappingPKc_50
	mov esi, [0xd5cc084]
	jmp _Z27CG_ParseClientEffectMappingPKc_320
_Z27CG_ParseClientEffectMappingPKc_340:
	mov eax, [esi+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
	test eax, eax
	jz _Z27CG_ParseClientEffectMappingPKc_330
_Z27CG_ParseClientEffectMappingPKc_350:
	cmp byte [ebx], 0x0
	jz _Z27CG_ParseClientEffectMappingPKc_330
	add ebx, 0x1
_Z27CG_ParseClientEffectMappingPKc_320:
	movsx eax, byte [ebx]
	test eax, 0xffffff80
	jz _Z27CG_ParseClientEffectMappingPKc_340
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	test eax, eax
	jnz _Z27CG_ParseClientEffectMappingPKc_350
_Z27CG_ParseClientEffectMappingPKc_330:
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_5
	call _Z9I_strncmpPKcS0_i
	test eax, eax
	jnz _Z27CG_ParseClientEffectMappingPKc_360
	add ebx, 0x1
	jz _Z27CG_ParseClientEffectMappingPKc_50
	mov esi, [0xd5cc084]
	jmp _Z27CG_ParseClientEffectMappingPKc_370
_Z27CG_ParseClientEffectMappingPKc_390:
	mov eax, [esi+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
	test eax, eax
	jz _Z27CG_ParseClientEffectMappingPKc_380
_Z27CG_ParseClientEffectMappingPKc_400:
	cmp byte [ebx], 0x0
	jz _Z27CG_ParseClientEffectMappingPKc_380
	add ebx, 0x1
_Z27CG_ParseClientEffectMappingPKc_370:
	movsx eax, byte [ebx]
	test eax, 0xffffff80
	jz _Z27CG_ParseClientEffectMappingPKc_390
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	test eax, eax
	jnz _Z27CG_ParseClientEffectMappingPKc_400
_Z27CG_ParseClientEffectMappingPKc_380:
	mov ecx, 0x40
	lea edx, [ebp-0x98]
	mov eax, ebx
	call _Z14CG_ParseStringPKcPcj
	mov ebx, eax
	test eax, eax
	jz _Z27CG_ParseClientEffectMappingPKc_50
	movzx eax, byte [ebx]
	cmp al, 0xa
	jz _Z27CG_ParseClientEffectMappingPKc_410
_Z27CG_ParseClientEffectMappingPKc_420:
	cmp al, 0xd
	jz _Z27CG_ParseClientEffectMappingPKc_410
	test al, al
	jz _Z27CG_ParseClientEffectMappingPKc_410
	add ebx, 0x1
	movzx eax, byte [ebx]
	cmp al, 0xa
	jnz _Z27CG_ParseClientEffectMappingPKc_420
_Z27CG_ParseClientEffectMappingPKc_410:
	mov esi, [0xd5cc084]
	jmp _Z27CG_ParseClientEffectMappingPKc_430
_Z27CG_ParseClientEffectMappingPKc_450:
	mov eax, [esi+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
	test eax, eax
	jz _Z27CG_ParseClientEffectMappingPKc_440
_Z27CG_ParseClientEffectMappingPKc_460:
	cmp byte [ebx], 0x0
	jz _Z27CG_ParseClientEffectMappingPKc_440
	add ebx, 0x1
_Z27CG_ParseClientEffectMappingPKc_430:
	movsx eax, byte [ebx]
	test eax, 0xffffff80
	jz _Z27CG_ParseClientEffectMappingPKc_450
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	test eax, eax
	jnz _Z27CG_ParseClientEffectMappingPKc_460
_Z27CG_ParseClientEffectMappingPKc_440:
	mov eax, [g_effectDefMapEntries]
	test eax, eax
	jg _Z27CG_ParseClientEffectMappingPKc_470
_Z27CG_ParseClientEffectMappingPKc_510:
	cmp eax, 0x20
	jz _Z27CG_ParseClientEffectMappingPKc_480
	mov dword [esp+0x8], 0x40
	lea edx, [ebp-0x58]
	mov [esp+0x4], edx
	shl eax, 0x7
	add eax, g_effectDefMap
	mov [esp], eax
	call _Z10I_strncpyzPcPKci
	mov dword [esp+0x8], 0x40
	lea eax, [ebp-0x98]
	mov [esp+0x4], eax
	mov eax, [g_effectDefMapEntries]
	shl eax, 0x7
	add eax, g_effectDefMap+0x40
	mov [esp], eax
	call _Z10I_strncpyzPcPKci
	add dword [g_effectDefMapEntries], 0x1
	cmp byte [ebx], 0x0
	jnz _Z27CG_ParseClientEffectMappingPKc_490
_Z27CG_ParseClientEffectMappingPKc_50:
	add esp, 0x13c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z27CG_ParseClientEffectMappingPKc_470:
	xor esi, esi
	jmp _Z27CG_ParseClientEffectMappingPKc_500
_Z27CG_ParseClientEffectMappingPKc_520:
	add esi, 0x1
	mov eax, [g_effectDefMapEntries]
	cmp esi, eax
	jge _Z27CG_ParseClientEffectMappingPKc_510
_Z27CG_ParseClientEffectMappingPKc_500:
	lea eax, [ebp-0x58]
	mov [esp+0x4], eax
	mov edi, esi
	shl edi, 0x7
	lea edx, [edi+g_effectDefMap]
	mov [ebp-0x11c], edx
	mov [esp], edx
	call _Z8I_strcmpPKcS0_
	test eax, eax
	jnz _Z27CG_ParseClientEffectMappingPKc_520
	lea esi, [edi+g_effectDefMap+0x40]
	lea eax, [ebp-0x98]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z8I_strcmpPKcS0_
	test eax, eax
	jz _Z27CG_ParseClientEffectMappingPKc_20
	lea edx, [ebp-0x98]
	mov [esp+0x10], edx
	mov [esp+0xc], esi
	mov eax, [ebp-0x11c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_tried_to_remap_s
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	jmp _Z27CG_ParseClientEffectMappingPKc_20
_Z27CG_ParseClientEffectMappingPKc_480:
	lea edx, [ebp-0x98]
	mov [esp+0xc], edx
	lea eax, [ebp-0x58]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_failed_to_added_
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	jmp _Z27CG_ParseClientEffectMappingPKc_20
_Z27CG_ParseClientEffectMappingPKc_360:
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], ebx
	lea ebx, [ebp-0x118]
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	mov dword [esp+0xc], _cstring_5
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unexpected_text_
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	jmp _Z27CG_ParseClientEffectMappingPKc_50
_Z27CG_ParseClientEffectMappingPKc_120:
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], ebx
	lea ebx, [ebp-0x118]
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	mov dword [esp+0xc], _cstring_level_effect
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unexpected_text_
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	jmp _Z27CG_ParseClientEffectMappingPKc_50
_Z27CG_ParseClientEffectMappingPKc_210:
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], ebx
	lea ebx, [ebp-0x118]
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	mov dword [esp+0xc], _cstring_3
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unexpected_text_
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	jmp _Z27CG_ParseClientEffectMappingPKc_50
_Z27CG_ParseClientEffectMappingPKc_260:
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], ebx
	lea ebx, [ebp-0x118]
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	mov dword [esp+0xc], _cstring_4
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unexpected_text_
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	jmp _Z27CG_ParseClientEffectMappingPKc_50
_Z27CG_ParseClientEffectMappingPKc_310:
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], ebx
	lea ebx, [ebp-0x118]
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	mov dword [esp+0xc], _cstring_loadfx
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unexpected_text_
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	jmp _Z27CG_ParseClientEffectMappingPKc_50
	nop


;CG_AddClientSideSounds(int)
_Z22CG_AddClientSideSoundsi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov eax, [g_clientEntSoundCount]
	test eax, eax
	jg _Z22CG_AddClientSideSoundsi_10
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22CG_AddClientSideSoundsi_10:
	xor esi, esi
	mov ebx, g_clientEntSounds
_Z22CG_AddClientSideSoundsi_20:
	mov eax, [ebx+0xc]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	lea eax, [esi+0x400]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z17CG_PlaySoundAliasiiPKfP16snd_alias_list_t
	add esi, 0x1
	add ebx, 0x10
	cmp [g_clientEntSoundCount], esi
	jg _Z22CG_AddClientSideSoundsi_20
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CG_StartClientSideEffects(int)
_Z25CG_StartClientSideEffectsi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x11c
	xor eax, eax
	mov edx, [ebp+0x8]
	test edx, edx
	cmovnz eax, [g_clientEntSoundCount]
	mov [g_clientEntSoundCount], eax
	mov eax, [cg_clientSideEffects]
	cmp byte [eax+0xc], 0x0
	jz _Z25CG_StartClientSideEffectsi_10
	mov dword [esp], _cstring_mapname
	call _Z14Dvar_GetStringPKc
	mov edi, eax
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_mapsmps_fxgsc
	mov dword [esp+0x4], 0x100
	lea ebx, [ebp-0x118]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	mov esi, useFastFile
	mov eax, [esi]
	mov edx, _Z35CG_LoadClientEffectMapping_FastFilePKc
	cmp byte [eax+0xc], 0x0
	mov eax, _Z34CG_LoadClientEffectMapping_LoadObjPKc
	cmovz edx, eax
	mov [esp], ebx
	call edx
	mov [esp+0xc], edi
	mov dword [esp+0x8], _cstring_mapscreatefxs_fx
	mov dword [esp+0x4], 0x100
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	mov eax, [esi]
	mov edx, _Z29CG_LoadClientEffects_FastFileiPKc
	cmp byte [eax+0xc], 0x0
	mov eax, _Z28CG_LoadClientEffects_LoadObjiPKc
	cmovz edx, eax
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call edx
_Z25CG_StartClientSideEffectsi_10:
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;CG_ClientSideEffectsRegisterDvars()
_Z33CG_ClientSideEffectsRegisterDvarsv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0xc], _cstring_enable_loading__
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_clientsideeffect
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [cg_clientSideEffects], eax
	leave
	ret
	nop


;CG_CopyClientSideSoundEntityOrientation(int, float*, float (*) [3])
_Z39CG_CopyClientSideSoundEntityOrientationiPfPA3_f:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0xc]
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov dword [esp], _ZZ39CG_CopyClientSideSoundEntityOrientationiPfPA3_fE8zeroVec3
	call _Z12AnglesToAxisPKfPA3_f
	mov eax, [ebp+0x8]
	shl eax, 0x4
	lea edx, [eax+g_clientEntSounds]
	mov eax, [eax+g_clientEntSounds]
	mov [ebx], eax
	mov eax, [edx+0x4]
	mov [ebx+0x4], eax
	mov eax, [edx+0x8]
	mov [ebx+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;Initialized global or static variables of cg_client_side_effects_mp:
SECTION .data


;Initialized constant data of cg_client_side_effects_mp:
SECTION .rdata


;Zero initialized global or static variables of cg_client_side_effects_mp:
SECTION .bss
g_clientEntSounds: resb 0x800
g_clientEntSoundCount: resb 0x4
g_effectDefMapEntries: resb 0x1c
g_effectDefMap: resb 0x1000
_ZZ39CG_CopyClientSideSoundEntityOrientationiPfPA3_fE8zeroVec3: resb 0x60
cg_clientSideEffects: resb 0x80


;All cstrings:
SECTION .rdata
_cstring_expected_a_quote:		db "Expected a quoted string instead of ",27h,"%s",27h,0ah,0
_cstring_string_was_longe:		db "String was longer than expected ",27h,"%s",27h,0ah,0
_cstring_file_not_found_s:		db "file not found: %s",0ah,0
_cstring_f_f_f:		db "%f, %f, %f",0
_cstring_expected_3_float:		db "Expected 3 floats instead of ",27h,"%s",27h,0ah,0
_cstring__createfx_genera:		db "//_createfx generated. Do not touch!!",0
_cstring_main:		db "main()",0
_cstring_:		db "{",0
_cstring_1:		db "//",0
_cstring_2:		db "}",0
_cstring_entv_soundalias_:		db "ent.v[ ",22h,"soundalias",22h," ] = ",0
_cstring_unexpected_text_:		db "Unexpected text ",27h,"%s",27h," when trying to find ",27h,"%s",27h," in map",27h,"s effect file",0ah,0
_cstring_ent__mapsmp_crea:		db "ent = maps",5ch,"mp",5ch,"_createfx::createLoopSound();",0
_cstring_ent__mapsmp_util:		db "ent = maps",5ch,"mp",5ch,"_utility::createOneshotEffect( ",0
_cstring_entv_origin___:		db "ent.v[ ",22h,"origin",22h," ] = (",0
_cstring_entv_angles___:		db "ent.v[ ",22h,"angles",22h," ] = (",0
_cstring_entv_fxid___:		db "ent.v[ ",22h,"fxid",22h," ] = ",0
_cstring_unexpected_data_:		db "Unexpected data after parsing ",27h,"%s",27h," map",27h,"s effect file",0ah,0
_cstring_entv_delay___:		db "ent.v[ ",22h,"delay",22h," ] = ",0
_cstring_f:		db "%f",0
_cstring_couldnt_find_s_i:		db "Couldn",27h,"t find ",27h,"%s",27h," in _fx.gsc map.",0ah,0
_cstring_too_many_client_:		db "Too many client ent sounds.  Increase MAX_CLIENT_ENT_SOUNDS.",0ah,0
_cstring_expected_ent__ma:		db "Expected ",27h,"ent = maps",5ch,"mp",5ch,"_createfx::createLoopSound();",27h," or ",27h,"ent = maps",5ch,"mp",5ch,"_utility::createOneshotEffect",27h," instead of ",27h,"%s",27h," in map",27h,"s effect file",0ah,0
_cstring_expected_a_float:		db "Expected a float instead of ",27h,"%s",27h,0ah,0
_cstring_level_effect:		db "level._effect[",0
_cstring_3:		db "]",0
_cstring_4:		db "=",0
_cstring_loadfx:		db "loadfx",0
_cstring_5:		db "(",0
_cstring_tried_to_remap_s:		db "Tried to remap ",27h,"%s",27h," to ",27h,"%s",27h," previously mapped to ",27h,"%s",27h,0ah,0
_cstring_failed_to_added_:		db "Failed to added mapping from ",27h,"%s",27h," to ",27h,"%s",27h,".  Increase MAX_CLIENT_EFFECT_DEFS.",0ah,0
_cstring_mapname:		db "mapname",0
_cstring_mapsmps_fxgsc:		db "maps/mp/%s_fx.gsc",0
_cstring_mapscreatefxs_fx:		db "maps/createfx/%s_fx.gsc",0
_cstring_enable_loading__:		db "Enable loading _fx.gsc files on the client",0
_cstring_clientsideeffect:		db "clientSideEffects",0



;All constant floats and doubles:
SECTION .rdata
_float_1000_00000000:		dd 0x447a0000	; 1000

