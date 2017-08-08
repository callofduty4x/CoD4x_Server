;Imports of cg_client_side_effects_mp:
	extern Q_strncpyz
	extern Com_PrintError
	extern DB_FindXAssetHeader
	extern FS_ReadFile
	extern FS_FreeFile
	extern sscanf
	extern __maskrune
	extern Q_strncmp
	extern Com_FindSoundAlias
	extern strcmp
	extern FX_Register
	extern AnglesToAxis
	extern FX_SpawnOrientedEffect
	extern CG_PlaySoundAlias
	extern Cvar_VariableString
	extern Com_sprintf
	extern useFastFile
	extern Cvar_RegisterBool

;Exports of cg_client_side_effects_mp:
	global g_clientEntSounds
	global g_clientEntSoundCount
	global g_effectDefMapEntries
	global g_effectDefMap
	global CG_ParseString
	global _ZZ39CG_CopyClientSideSoundEntityOrientationiPfPA3_fE8zeroVec3
	global CG_LoadClientEffectMapping_FastFile
	global CG_LoadClientEffectMapping_LoadObj
	global CG_LoadClientEffects_FastFile
	global CG_LoadClientEffects_LoadObj
	global CG_ParseVec3Finish
	global CG_ParseClientEffects
	global CG_ParseClientEffectMapping
	global CG_AddClientSideSounds
	global CG_StartClientSideEffects
	global CG_ClientSideEffectsRegisterDvars
	global CG_CopyClientSideSoundEntityOrientation
	global cg_clientSideEffects


SECTION .text


;CG_ParseString(char const*, char*, unsigned int)
CG_ParseString:
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
	jz CG_ParseString_10
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], eax
	lea ebx, [ebp-0x98]
	mov [esp], ebx
	call Q_strncpyz
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_expected_a_quote
	mov dword [esp], 0x1
	call Com_PrintError
CG_ParseString_10:
	movzx edx, byte [esi+0x1]
	cmp dl, 0x22
	jz CG_ParseString_20
	test dl, dl
	jnz CG_ParseString_30
CG_ParseString_20:
	xor ecx, ecx
	xor eax, eax
CG_ParseString_50:
	cmp edi, ecx
	jz CG_ParseString_40
	mov edx, [ebp-0x9c]
	mov byte [ecx+edx], 0x0
	lea eax, [esi+eax+0x2]
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_ParseString_30:
	test edi, edi
	jz CG_ParseString_40
	xor ecx, ecx
CG_ParseString_60:
	mov eax, [ebp-0x9c]
	mov [eax+ecx], dl
	add ecx, 0x1
	mov eax, ecx
	movzx edx, byte [esi+ecx+0x1]
	cmp dl, 0x22
	jz CG_ParseString_50
	test dl, dl
	jz CG_ParseString_50
	cmp ecx, edi
	jnz CG_ParseString_60
CG_ParseString_40:
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], esi
	lea ebx, [ebp-0x98]
	mov [esp], ebx
	call Q_strncpyz
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_string_was_longe
	mov dword [esp], 0x1
	call Com_PrintError
	xor eax, eax
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;CG_LoadClientEffectMapping_FastFile(char const*)
CG_LoadClientEffectMapping_FastFile:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov [esp+0x4], ebx
	mov dword [esp], 0x1f
	call DB_FindXAssetHeader
	test eax, eax
	jz CG_LoadClientEffectMapping_FastFile_10
	mov eax, [eax+0x8]
	add esp, 0x14
	pop ebx
	pop ebp
	jmp CG_ParseClientEffectMapping
CG_LoadClientEffectMapping_FastFile_10:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_file_not_found_s
	mov dword [esp], 0x1
	call Com_PrintError
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	add [eax], al


;CG_LoadClientEffectMapping_LoadObj(char const*)
CG_LoadClientEffectMapping_LoadObj:
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
	js CG_LoadClientEffectMapping_LoadObj_10
	mov eax, [ebp-0xc]
	call CG_ParseClientEffectMapping
	mov eax, [ebp-0xc]
	mov [esp], eax
	call FS_FreeFile
	add esp, 0x24
	pop ebx
	pop ebp
	ret
CG_LoadClientEffectMapping_LoadObj_10:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_file_not_found_s
	mov dword [esp], 0x1
	call Com_PrintError
	add esp, 0x24
	pop ebx
	pop ebp
	ret


;CG_LoadClientEffects_FastFile(int, char const*)
CG_LoadClientEffects_FastFile:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov [esp+0x4], ebx
	mov dword [esp], 0x1f
	call DB_FindXAssetHeader
	test eax, eax
	jz CG_LoadClientEffects_FastFile_10
	mov edx, [eax+0x8]
	mov eax, esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp CG_ParseClientEffects
CG_LoadClientEffects_FastFile_10:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_file_not_found_s
	mov dword [esp], 0x1
	call Com_PrintError
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;CG_LoadClientEffects_LoadObj(int, char const*)
CG_LoadClientEffects_LoadObj:
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
	js CG_LoadClientEffects_LoadObj_10
	mov edx, [ebp-0xc]
	mov eax, [ebp+0x8]
	call CG_ParseClientEffects
	mov eax, [ebp-0xc]
	mov [esp], eax
	call FS_FreeFile
	add esp, 0x24
	pop ebx
	pop ebp
	ret
CG_LoadClientEffects_LoadObj_10:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_file_not_found_s
	mov dword [esp], 0x1
	call Com_PrintError
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;CG_ParseVec3Finish(char const*, float*)
CG_ParseVec3Finish:
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
	jnz CG_ParseVec3Finish_10
	movzx eax, byte [ebx]
	cmp al, 0xa
	jz CG_ParseVec3Finish_20
CG_ParseVec3Finish_30:
	cmp al, 0xd
	jz CG_ParseVec3Finish_20
	test al, al
	jz CG_ParseVec3Finish_20
	add ebx, 0x1
	movzx eax, byte [ebx]
	cmp al, 0xa
	jnz CG_ParseVec3Finish_30
CG_ParseVec3Finish_20:
	mov esi, [0xd5cc084]
	jmp CG_ParseVec3Finish_40
CG_ParseVec3Finish_60:
	mov eax, [esi+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
	test eax, eax
	jz CG_ParseVec3Finish_50
CG_ParseVec3Finish_70:
	cmp byte [ebx], 0x0
	jz CG_ParseVec3Finish_50
	add ebx, 0x1
CG_ParseVec3Finish_40:
	movsx eax, byte [ebx]
	test eax, 0xffffff80
	jz CG_ParseVec3Finish_60
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	test eax, eax
	jnz CG_ParseVec3Finish_70
CG_ParseVec3Finish_50:
	mov eax, ebx
	add esp, 0xa0
	pop ebx
	pop esi
	pop ebp
	ret
CG_ParseVec3Finish_10:
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], ebx
	lea ebx, [ebp-0x88]
	mov [esp], ebx
	call Q_strncpyz
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_expected_3_float
	mov dword [esp], 0x1
	call Com_PrintError
	xor ebx, ebx
	mov eax, ebx
	add esp, 0xa0
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;CG_ParseClientEffects(int, char const*)
CG_ParseClientEffects:
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
	call Q_strncmp
	test eax, eax
	jnz CG_ParseClientEffects_10
	add ebx, 0x25
	jz CG_ParseClientEffects_20
	mov esi, [0xd5cc084]
	jmp CG_ParseClientEffects_30
CG_ParseClientEffects_50:
	mov eax, [esi+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
	test eax, eax
	jz CG_ParseClientEffects_40
CG_ParseClientEffects_60:
	cmp byte [ebx], 0x0
	jz CG_ParseClientEffects_40
	add ebx, 0x1
CG_ParseClientEffects_30:
	movsx eax, byte [ebx]
	test eax, 0xffffff80
	jz CG_ParseClientEffects_50
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	test eax, eax
	jnz CG_ParseClientEffects_60
CG_ParseClientEffects_40:
	mov dword [esp+0x8], 0x6
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_main
	call Q_strncmp
	test eax, eax
	jnz CG_ParseClientEffects_70
	add ebx, 0x6
	jz CG_ParseClientEffects_20
	mov esi, [0xd5cc084]
	jmp CG_ParseClientEffects_80
CG_ParseClientEffects_100:
	mov eax, [esi+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
	test eax, eax
	jz CG_ParseClientEffects_90
CG_ParseClientEffects_110:
	cmp byte [ebx], 0x0
	jz CG_ParseClientEffects_90
	add ebx, 0x1
CG_ParseClientEffects_80:
	movsx eax, byte [ebx]
	test eax, 0xffffff80
	jz CG_ParseClientEffects_100
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	test eax, eax
	jnz CG_ParseClientEffects_110
CG_ParseClientEffects_90:
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_
	call Q_strncmp
	test eax, eax
	jnz CG_ParseClientEffects_120
	mov edi, ebx
	add edi, 0x1
	jz CG_ParseClientEffects_20
	mov ebx, [0xd5cc084]
	jmp CG_ParseClientEffects_130
CG_ParseClientEffects_150:
	mov eax, [ebx+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
	test eax, eax
	jz CG_ParseClientEffects_140
CG_ParseClientEffects_160:
	cmp byte [edi], 0x0
	jz CG_ParseClientEffects_140
	add edi, 0x1
CG_ParseClientEffects_130:
	movsx eax, byte [edi]
	test eax, 0xffffff80
	jz CG_ParseClientEffects_150
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	test eax, eax
	jnz CG_ParseClientEffects_160
CG_ParseClientEffects_140:
	mov dword [esp+0x8], 0x2
	mov [esp+0x4], edi
	mov dword [esp], _cstring_1
	call Q_strncmp
	test eax, eax
	jz CG_ParseClientEffects_170
	test edi, edi
	jz CG_ParseClientEffects_180
CG_ParseClientEffects_400:
	movzx eax, byte [edi]
	cmp al, 0x7d
	jz CG_ParseClientEffects_180
	test al, al
	jnz CG_ParseClientEffects_190
CG_ParseClientEffects_180:
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], edi
	mov dword [esp], _cstring_2
	call Q_strncmp
	test eax, eax
	jnz CG_ParseClientEffects_200
	mov ebx, edi
	add ebx, 0x1
	jz CG_ParseClientEffects_20
	movzx eax, byte [edi+0x1]
	cmp al, 0xa
	jz CG_ParseClientEffects_210
CG_ParseClientEffects_220:
	cmp al, 0xd
	jz CG_ParseClientEffects_210
	test al, al
	jz CG_ParseClientEffects_210
	add ebx, 0x1
	movzx eax, byte [ebx]
	cmp al, 0xa
	jnz CG_ParseClientEffects_220
CG_ParseClientEffects_210:
	mov esi, [0xd5cc084]
	jmp CG_ParseClientEffects_230
CG_ParseClientEffects_250:
	mov eax, [esi+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
CG_ParseClientEffects_260:
	test eax, eax
	jz CG_ParseClientEffects_240
	cmp byte [ebx], 0x0
	jz CG_ParseClientEffects_240
	add ebx, 0x1
CG_ParseClientEffects_230:
	movsx eax, byte [ebx]
	test eax, 0xffffff80
	jz CG_ParseClientEffects_250
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	jmp CG_ParseClientEffects_260
CG_ParseClientEffects_530:
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], ebx
	lea ebx, [ebp-0xd8]
CG_ParseClientEffects_940:
	mov [esp], ebx
	call Q_strncpyz
	mov dword [esp+0xc], _cstring_entv_soundalias_
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unexpected_text_
	mov dword [esp], 0x1
	call Com_PrintError
CG_ParseClientEffects_20:
	add esp, 0x3fc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_ParseClientEffects_10:
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], ebx
	lea ebx, [ebp-0xd8]
	mov [esp], ebx
	call Q_strncpyz
	mov dword [esp+0xc], _cstring__createfx_genera
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unexpected_text_
	mov dword [esp], 0x1
	call Com_PrintError
	add esp, 0x3fc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_ParseClientEffects_70:
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], ebx
	lea ebx, [ebp-0xd8]
	mov [esp], ebx
	call Q_strncpyz
	mov dword [esp+0xc], _cstring_main
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unexpected_text_
	mov dword [esp], 0x1
	call Com_PrintError
	add esp, 0x3fc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_ParseClientEffects_570:
	mov eax, [ebp-0x3dc]
	test eax, eax
	jnz CG_ParseClientEffects_270
	mov eax, [g_clientEntSoundCount]
	cmp eax, 0x80
	jz CG_ParseClientEffects_280
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
	call Com_FindSoundAlias
	mov [ebx+g_clientEntSounds+0xc], eax
	add dword [g_clientEntSoundCount], 0x1
CG_ParseClientEffects_270:
	test edi, edi
	jz CG_ParseClientEffects_180
CG_ParseClientEffects_810:
	movzx eax, byte [edi]
	cmp al, 0x7d
	jz CG_ParseClientEffects_180
	test al, al
	jz CG_ParseClientEffects_180
CG_ParseClientEffects_190:
	mov dword [esp+0x8], 0x2b
	mov [esp+0x4], edi
	mov dword [esp], _cstring_ent__mapsmp_crea
	call Q_strncmp
	test eax, eax
	jnz CG_ParseClientEffects_290
	mov dword [esp+0x8], 0x2b
	mov [esp+0x4], edi
	mov dword [esp], _cstring_ent__mapsmp_crea
	call Q_strncmp
	test eax, eax
	jnz CG_ParseClientEffects_300
	mov ebx, edi
	add ebx, 0x2b
	jz CG_ParseClientEffects_20
	mov esi, [0xd5cc084]
	jmp CG_ParseClientEffects_310
CG_ParseClientEffects_330:
	mov eax, [esi+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
CG_ParseClientEffects_340:
	test eax, eax
	jz CG_ParseClientEffects_320
	cmp byte [ebx], 0x0
	jz CG_ParseClientEffects_320
	add ebx, 0x1
CG_ParseClientEffects_310:
	movsx eax, byte [ebx]
	test eax, 0xffffff80
	jz CG_ParseClientEffects_330
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	jmp CG_ParseClientEffects_340
CG_ParseClientEffects_170:
	mov dword [esp+0x8], 0x2
	mov [esp+0x4], edi
	mov dword [esp], _cstring_1
	call Q_strncmp
	test eax, eax
	jnz CG_ParseClientEffects_350
	add edi, 0x2
	jz CG_ParseClientEffects_360
	movzx eax, byte [edi]
	cmp al, 0xa
	jz CG_ParseClientEffects_370
CG_ParseClientEffects_380:
	cmp al, 0xd
	jz CG_ParseClientEffects_370
	test al, al
	jz CG_ParseClientEffects_370
	add edi, 0x1
	movzx eax, byte [edi]
	cmp al, 0xa
	jnz CG_ParseClientEffects_380
CG_ParseClientEffects_370:
	mov ebx, [0xd5cc084]
	jmp CG_ParseClientEffects_390
CG_ParseClientEffects_410:
	mov eax, [ebx+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
CG_ParseClientEffects_420:
	test eax, eax
	jz CG_ParseClientEffects_400
	cmp byte [edi], 0x0
	jz CG_ParseClientEffects_400
	add edi, 0x1
CG_ParseClientEffects_390:
	movsx eax, byte [edi]
	test eax, 0xffffff80
	jz CG_ParseClientEffects_410
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	jmp CG_ParseClientEffects_420
CG_ParseClientEffects_290:
	mov dword [esp+0x8], 0x2d
	mov [esp+0x4], edi
	mov dword [esp], _cstring_ent__mapsmp_util
	call Q_strncmp
	test eax, eax
	jnz CG_ParseClientEffects_430
	mov dword [esp+0x8], 0x2d
	mov [esp+0x4], edi
	mov dword [esp], _cstring_ent__mapsmp_util
	call Q_strncmp
	test eax, eax
	jnz CG_ParseClientEffects_440
	mov ebx, edi
	add ebx, 0x2d
	jz CG_ParseClientEffects_20
	movzx eax, byte [edi+0x2d]
	cmp al, 0xa
	jz CG_ParseClientEffects_450
CG_ParseClientEffects_460:
	cmp al, 0xd
	jz CG_ParseClientEffects_450
	test al, al
	jz CG_ParseClientEffects_450
	add ebx, 0x1
	movzx eax, byte [ebx]
	cmp al, 0xa
	jnz CG_ParseClientEffects_460
CG_ParseClientEffects_450:
	mov esi, [0xd5cc084]
	jmp CG_ParseClientEffects_470
CG_ParseClientEffects_490:
	mov eax, [esi+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
CG_ParseClientEffects_500:
	test eax, eax
	jz CG_ParseClientEffects_480
	cmp byte [ebx], 0x0
	jz CG_ParseClientEffects_480
	add ebx, 0x1
CG_ParseClientEffects_470:
	movsx eax, byte [ebx]
	test eax, 0xffffff80
	jz CG_ParseClientEffects_490
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	jmp CG_ParseClientEffects_500
CG_ParseClientEffects_320:
	mov dword [esp+0x8], 0x15
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_entv_origin___
	call Q_strncmp
	test eax, eax
	jnz CG_ParseClientEffects_510
	mov eax, ebx
	add eax, 0x15
	jz CG_ParseClientEffects_20
	lea edx, [ebp-0x34]
	call CG_ParseVec3Finish
	mov ebx, eax
	test eax, eax
	jz CG_ParseClientEffects_20
	mov dword [esp+0x8], 0x15
	mov [esp+0x4], eax
	mov dword [esp], _cstring_entv_angles___
	call Q_strncmp
	test eax, eax
	jnz CG_ParseClientEffects_520
	mov eax, ebx
	add eax, 0x15
	jz CG_ParseClientEffects_20
	lea edx, [ebp-0x28]
	call CG_ParseVec3Finish
	mov ebx, eax
	test eax, eax
	jz CG_ParseClientEffects_20
	mov dword [esp+0x8], 0x18
	mov [esp+0x4], eax
	mov dword [esp], _cstring_entv_soundalias_
	call Q_strncmp
	test eax, eax
	jnz CG_ParseClientEffects_530
	mov eax, ebx
	add eax, 0x18
	jz CG_ParseClientEffects_20
	lea esi, [ebp-0x3d8]
	mov ecx, 0x100
	mov edx, esi
	call CG_ParseString
	mov edi, eax
	test eax, eax
	jz CG_ParseClientEffects_20
	movzx eax, byte [edi]
	cmp al, 0xa
	jz CG_ParseClientEffects_540
CG_ParseClientEffects_550:
	cmp al, 0xd
	jz CG_ParseClientEffects_540
	test al, al
	jz CG_ParseClientEffects_540
	add edi, 0x1
	movzx eax, byte [edi]
	cmp al, 0xa
	jnz CG_ParseClientEffects_550
CG_ParseClientEffects_540:
	mov ebx, [0xd5cc084]
	jmp CG_ParseClientEffects_560
CG_ParseClientEffects_580:
	mov eax, [ebx+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
CG_ParseClientEffects_590:
	test eax, eax
	jz CG_ParseClientEffects_570
	cmp byte [edi], 0x0
	jz CG_ParseClientEffects_570
	add edi, 0x1
CG_ParseClientEffects_560:
	movsx eax, byte [edi]
	test eax, 0xffffff80
	jz CG_ParseClientEffects_580
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	jmp CG_ParseClientEffects_590
CG_ParseClientEffects_480:
	mov dword [esp+0x8], 0x15
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_entv_origin___
	call Q_strncmp
	test eax, eax
	jnz CG_ParseClientEffects_600
	mov eax, ebx
	add eax, 0x15
	jz CG_ParseClientEffects_20
	lea edx, [ebp-0x34]
	call CG_ParseVec3Finish
	mov ebx, eax
	test eax, eax
	jz CG_ParseClientEffects_20
	mov dword [esp+0x8], 0x15
	mov [esp+0x4], eax
	mov dword [esp], _cstring_entv_angles___
	call Q_strncmp
	test eax, eax
	jnz CG_ParseClientEffects_610
	mov eax, ebx
	add eax, 0x15
	jz CG_ParseClientEffects_20
	lea edx, [ebp-0x28]
	call CG_ParseVec3Finish
	mov ebx, eax
	test eax, eax
	jz CG_ParseClientEffects_20
	mov dword [esp+0x8], 0x12
	mov [esp+0x4], eax
	mov dword [esp], _cstring_entv_fxid___
	call Q_strncmp
	test eax, eax
	jnz CG_ParseClientEffects_620
	mov eax, ebx
	add eax, 0x12
	jz CG_ParseClientEffects_20
	mov ecx, 0x100
	lea edx, [ebp-0x2d8]
	call CG_ParseString
	mov ebx, eax
	test eax, eax
	jz CG_ParseClientEffects_20
	movzx eax, byte [ebx]
	cmp al, 0xa
	jz CG_ParseClientEffects_630
CG_ParseClientEffects_640:
	cmp al, 0xd
	jz CG_ParseClientEffects_630
	test al, al
	jz CG_ParseClientEffects_630
	add ebx, 0x1
	movzx eax, byte [ebx]
	cmp al, 0xa
	jnz CG_ParseClientEffects_640
CG_ParseClientEffects_630:
	mov esi, [0xd5cc084]
	jmp CG_ParseClientEffects_650
CG_ParseClientEffects_670:
	mov eax, [esi+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
CG_ParseClientEffects_680:
	test eax, eax
	jz CG_ParseClientEffects_660
	cmp byte [ebx], 0x0
	jz CG_ParseClientEffects_660
	add ebx, 0x1
CG_ParseClientEffects_650:
	movsx eax, byte [ebx]
	test eax, 0xffffff80
	jz CG_ParseClientEffects_670
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	jmp CG_ParseClientEffects_680
CG_ParseClientEffects_240:
	cmp byte [ebx], 0x0
	jz CG_ParseClientEffects_20
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], ebx
	lea ebx, [ebp-0x158]
	mov [esp], ebx
	call Q_strncpyz
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unexpected_data_
	mov dword [esp], 0x1
	call Com_PrintError
	jmp CG_ParseClientEffects_20
CG_ParseClientEffects_660:
	mov dword [esp+0x8], 0x13
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_entv_delay___
	call Q_strncmp
	test eax, eax
	jnz CG_ParseClientEffects_690
	mov edi, ebx
	add edi, 0x13
	jz CG_ParseClientEffects_20
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_f
	mov [esp], edi
	call sscanf
	sub eax, 0x1
	jnz CG_ParseClientEffects_700
	movzx eax, byte [ebx+0x13]
	cmp al, 0xa
	jz CG_ParseClientEffects_710
CG_ParseClientEffects_720:
	cmp al, 0xd
	jz CG_ParseClientEffects_710
	test al, al
	jz CG_ParseClientEffects_710
	add edi, 0x1
	movzx eax, byte [edi]
	cmp al, 0xa
	jnz CG_ParseClientEffects_720
CG_ParseClientEffects_710:
	mov ebx, [0xd5cc084]
	jmp CG_ParseClientEffects_730
CG_ParseClientEffects_750:
	mov eax, [ebx+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
CG_ParseClientEffects_760:
	test eax, eax
	jz CG_ParseClientEffects_740
	cmp byte [edi], 0x0
	jz CG_ParseClientEffects_740
	add edi, 0x1
CG_ParseClientEffects_730:
	movsx eax, byte [edi]
	test eax, 0xffffff80
	jz CG_ParseClientEffects_750
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	jmp CG_ParseClientEffects_760
CG_ParseClientEffects_740:
	mov dword [esp+0x8], 0x18
	mov [esp+0x4], edi
	mov dword [esp], _cstring_entv_soundalias_
	call Q_strncmp
	test eax, eax
	jz CG_ParseClientEffects_770
CG_ParseClientEffects_890:
	mov ecx, [g_effectDefMapEntries]
	test ecx, ecx
	jle CG_ParseClientEffects_780
	xor ebx, ebx
	mov esi, g_effectDefMap
CG_ParseClientEffects_800:
	lea eax, [ebp-0x2d8]
	mov [esp+0x4], eax
	mov eax, ebx
	shl eax, 0x7
	mov [ebp-0x3e0], eax
	mov [esp], esi
	call strcmp
	test eax, eax
	jz CG_ParseClientEffects_790
	add ebx, 0x1
	sub esi, 0xffffff80
	cmp ebx, [g_effectDefMapEntries]
	jl CG_ParseClientEffects_800
CG_ParseClientEffects_780:
	lea eax, [ebp-0x2d8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_couldnt_find_s_i
	mov dword [esp], 0x1
	call Com_PrintError
CG_ParseClientEffects_910:
	test edi, edi
	jnz CG_ParseClientEffects_810
	jmp CG_ParseClientEffects_20
CG_ParseClientEffects_120:
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], ebx
	lea ebx, [ebp-0xd8]
	mov [esp], ebx
	call Q_strncpyz
	mov dword [esp+0xc], _cstring_
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unexpected_text_
	mov dword [esp], 0x1
	call Com_PrintError
	add esp, 0x3fc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_ParseClientEffects_200:
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], edi
	lea ebx, [ebp-0xd8]
	mov [esp], ebx
	call Q_strncpyz
	mov dword [esp+0xc], _cstring_2
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unexpected_text_
	mov dword [esp], 0x1
	call Com_PrintError
	jmp CG_ParseClientEffects_20
CG_ParseClientEffects_350:
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], edi
	lea ebx, [ebp-0xd8]
	mov [esp], ebx
	call Q_strncpyz
	mov dword [esp+0xc], _cstring_1
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unexpected_text_
	mov dword [esp], 0x1
	call Com_PrintError
CG_ParseClientEffects_360:
	xor edi, edi
	jmp CG_ParseClientEffects_180
CG_ParseClientEffects_770:
	mov dword [esp+0x8], 0x18
	mov [esp+0x4], edi
	mov dword [esp], _cstring_entv_soundalias_
	call Q_strncmp
	test eax, eax
	jnz CG_ParseClientEffects_820
	mov eax, edi
	add eax, 0x18
	jz CG_ParseClientEffects_20
	lea esi, [ebp-0x3d8]
	mov ecx, 0x100
	mov edx, esi
	call CG_ParseString
	mov edi, eax
	test eax, eax
	jz CG_ParseClientEffects_20
	movzx eax, byte [edi]
	cmp al, 0xa
	jz CG_ParseClientEffects_830
CG_ParseClientEffects_840:
	cmp al, 0xd
	jz CG_ParseClientEffects_830
	test al, al
	jz CG_ParseClientEffects_830
	add edi, 0x1
	movzx eax, byte [edi]
	cmp al, 0xa
	jnz CG_ParseClientEffects_840
CG_ParseClientEffects_830:
	mov ebx, [0xd5cc084]
	jmp CG_ParseClientEffects_850
CG_ParseClientEffects_870:
	mov eax, [ebx+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
CG_ParseClientEffects_880:
	test eax, eax
	jz CG_ParseClientEffects_860
	cmp byte [edi], 0x0
	jz CG_ParseClientEffects_860
	add edi, 0x1
CG_ParseClientEffects_850:
	movsx eax, byte [edi]
	test eax, 0xffffff80
	jz CG_ParseClientEffects_870
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	jmp CG_ParseClientEffects_880
CG_ParseClientEffects_860:
	mov ebx, [ebp-0x3dc]
	test ebx, ebx
	jnz CG_ParseClientEffects_890
	mov eax, [g_clientEntSoundCount]
	cmp eax, 0x80
	jz CG_ParseClientEffects_900
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
	call Com_FindSoundAlias
	mov [ebx+g_clientEntSounds+0xc], eax
	add dword [g_clientEntSoundCount], 0x1
	jmp CG_ParseClientEffects_890
CG_ParseClientEffects_790:
	mov dword [esp+0x8], 0x40
	mov eax, [ebp-0x3e0]
	add eax, g_effectDefMap+0x40
	mov [esp+0x4], eax
	lea ebx, [ebp-0xd8]
	mov [esp], ebx
	call Q_strncpyz
	mov [esp], ebx
	call FX_Register
	mov esi, eax
	lea ebx, [ebp-0x58]
	mov [esp+0x4], ebx
	lea eax, [ebp-0x28]
	mov [esp], eax
	call AnglesToAxis
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
	call FX_SpawnOrientedEffect
	jmp CG_ParseClientEffects_910
CG_ParseClientEffects_280:
	mov dword [esp+0x4], _cstring_too_many_client_
	mov dword [esp], 0x1
	call Com_PrintError
	jmp CG_ParseClientEffects_270
CG_ParseClientEffects_900:
	mov dword [esp+0x4], _cstring_too_many_client_
	mov dword [esp], 0x1
	call Com_PrintError
	jmp CG_ParseClientEffects_890
CG_ParseClientEffects_610:
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], ebx
	lea ebx, [ebp-0x1d8]
CG_ParseClientEffects_920:
	mov [esp], ebx
	call Q_strncpyz
	mov dword [esp+0xc], _cstring_entv_angles___
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unexpected_text_
	mov dword [esp], 0x1
	call Com_PrintError
	jmp CG_ParseClientEffects_20
CG_ParseClientEffects_600:
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], ebx
	lea ebx, [ebp-0x1d8]
CG_ParseClientEffects_930:
	mov [esp], ebx
	call Q_strncpyz
	mov dword [esp+0xc], _cstring_entv_origin___
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unexpected_text_
	mov dword [esp], 0x1
	call Com_PrintError
	jmp CG_ParseClientEffects_20
CG_ParseClientEffects_520:
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], ebx
	lea ebx, [ebp-0xd8]
	jmp CG_ParseClientEffects_920
CG_ParseClientEffects_620:
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], ebx
	lea ebx, [ebp-0x1d8]
	mov [esp], ebx
	call Q_strncpyz
	mov dword [esp+0xc], _cstring_entv_fxid___
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unexpected_text_
	mov dword [esp], 0x1
	call Com_PrintError
	jmp CG_ParseClientEffects_20
CG_ParseClientEffects_430:
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], edi
	lea ebx, [ebp-0x158]
	mov [esp], ebx
	call Q_strncpyz
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_expected_ent__ma
	mov dword [esp], 0x1
	call Com_PrintError
	jmp CG_ParseClientEffects_20
CG_ParseClientEffects_300:
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], edi
	lea ebx, [ebp-0xd8]
	mov [esp], ebx
	call Q_strncpyz
	mov dword [esp+0xc], _cstring_ent__mapsmp_crea
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unexpected_text_
	mov dword [esp], 0x1
	call Com_PrintError
	jmp CG_ParseClientEffects_20
CG_ParseClientEffects_510:
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], ebx
	lea ebx, [ebp-0xd8]
	jmp CG_ParseClientEffects_930
CG_ParseClientEffects_440:
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], edi
	lea ebx, [ebp-0x1d8]
	mov [esp], ebx
	call Q_strncpyz
	mov dword [esp+0xc], _cstring_ent__mapsmp_util
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unexpected_text_
	mov dword [esp], 0x1
	call Com_PrintError
	jmp CG_ParseClientEffects_20
CG_ParseClientEffects_700:
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], edi
	lea ebx, [ebp-0x1d8]
	mov [esp], ebx
	call Q_strncpyz
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_expected_a_float
	mov dword [esp], 0x1
	call Com_PrintError
	jmp CG_ParseClientEffects_20
CG_ParseClientEffects_690:
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], ebx
	lea ebx, [ebp-0x1d8]
	mov [esp], ebx
	call Q_strncpyz
	mov dword [esp+0xc], _cstring_entv_delay___
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unexpected_text_
	mov dword [esp], 0x1
	call Com_PrintError
	jmp CG_ParseClientEffects_20
CG_ParseClientEffects_820:
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], edi
	lea ebx, [ebp-0x1d8]
	jmp CG_ParseClientEffects_940
	nop


;CG_ParseClientEffectMapping(char const*)
CG_ParseClientEffectMapping:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x13c
	mov dword [g_effectDefMapEntries], 0x0
	mov ebx, eax
	mov esi, [0xd5cc084]
	jmp CG_ParseClientEffectMapping_10
CG_ParseClientEffectMapping_30:
	mov eax, [esi+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
	test eax, eax
	jz CG_ParseClientEffectMapping_20
CG_ParseClientEffectMapping_40:
	cmp byte [ebx], 0x0
	jz CG_ParseClientEffectMapping_20
	add ebx, 0x1
CG_ParseClientEffectMapping_10:
	movsx eax, byte [ebx]
	test eax, 0xffffff80
	jz CG_ParseClientEffectMapping_30
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	test eax, eax
	jnz CG_ParseClientEffectMapping_40
CG_ParseClientEffectMapping_20:
	cmp byte [ebx], 0x0
	jz CG_ParseClientEffectMapping_50
CG_ParseClientEffectMapping_490:
	mov dword [esp+0x8], 0xe
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_level_effect
	call Q_strncmp
	test eax, eax
	jz CG_ParseClientEffectMapping_60
	movzx eax, byte [ebx]
	cmp al, 0xa
	jz CG_ParseClientEffectMapping_70
CG_ParseClientEffectMapping_80:
	cmp al, 0xd
	jz CG_ParseClientEffectMapping_70
	test al, al
	jz CG_ParseClientEffectMapping_70
	add ebx, 0x1
	movzx eax, byte [ebx]
	cmp al, 0xa
	jnz CG_ParseClientEffectMapping_80
CG_ParseClientEffectMapping_70:
	mov esi, [0xd5cc084]
	jmp CG_ParseClientEffectMapping_90
CG_ParseClientEffectMapping_100:
	mov eax, [esi+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
CG_ParseClientEffectMapping_110:
	test eax, eax
	jz CG_ParseClientEffectMapping_20
	cmp byte [ebx], 0x0
	jz CG_ParseClientEffectMapping_20
	add ebx, 0x1
CG_ParseClientEffectMapping_90:
	movsx eax, byte [ebx]
	test eax, 0xffffff80
	jz CG_ParseClientEffectMapping_100
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	jmp CG_ParseClientEffectMapping_110
CG_ParseClientEffectMapping_60:
	mov dword [esp+0x8], 0xe
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_level_effect
	call Q_strncmp
	test eax, eax
	jnz CG_ParseClientEffectMapping_120
	add ebx, 0xe
	jz CG_ParseClientEffectMapping_50
	mov esi, [0xd5cc084]
	jmp CG_ParseClientEffectMapping_130
CG_ParseClientEffectMapping_150:
	mov eax, [esi+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
	test eax, eax
	jz CG_ParseClientEffectMapping_140
CG_ParseClientEffectMapping_160:
	cmp byte [ebx], 0x0
	jz CG_ParseClientEffectMapping_140
	add ebx, 0x1
CG_ParseClientEffectMapping_130:
	movsx eax, byte [ebx]
	test eax, 0xffffff80
	jz CG_ParseClientEffectMapping_150
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	test eax, eax
	jnz CG_ParseClientEffectMapping_160
CG_ParseClientEffectMapping_140:
	mov ecx, 0x40
	lea edx, [ebp-0x58]
	mov eax, ebx
	call CG_ParseString
	mov ebx, eax
	test eax, eax
	jnz CG_ParseClientEffectMapping_170
	jmp CG_ParseClientEffectMapping_50
CG_ParseClientEffectMapping_190:
	mov eax, [0xd5cc084]
	mov eax, [eax+edx*4+0x34]
	shr eax, 0xe
	and eax, 0x1
	test eax, eax
	jz CG_ParseClientEffectMapping_180
CG_ParseClientEffectMapping_200:
	cmp byte [ebx], 0x0
	jz CG_ParseClientEffectMapping_180
	add ebx, 0x1
CG_ParseClientEffectMapping_170:
	movsx edx, byte [ebx]
	test edx, 0xffffff80
	jz CG_ParseClientEffectMapping_190
	mov dword [esp+0x4], 0x4000
	mov [esp], edx
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	test eax, eax
	jnz CG_ParseClientEffectMapping_200
CG_ParseClientEffectMapping_180:
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_3
	call Q_strncmp
	test eax, eax
	jnz CG_ParseClientEffectMapping_210
	add ebx, 0x1
	jz CG_ParseClientEffectMapping_50
	mov esi, [0xd5cc084]
	jmp CG_ParseClientEffectMapping_220
CG_ParseClientEffectMapping_240:
	mov eax, [esi+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
	test eax, eax
	jz CG_ParseClientEffectMapping_230
CG_ParseClientEffectMapping_250:
	cmp byte [ebx], 0x0
	jz CG_ParseClientEffectMapping_230
	add ebx, 0x1
CG_ParseClientEffectMapping_220:
	movsx eax, byte [ebx]
	test eax, 0xffffff80
	jz CG_ParseClientEffectMapping_240
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	test eax, eax
	jnz CG_ParseClientEffectMapping_250
CG_ParseClientEffectMapping_230:
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_4
	call Q_strncmp
	test eax, eax
	jnz CG_ParseClientEffectMapping_260
	add ebx, 0x1
	jz CG_ParseClientEffectMapping_50
	mov esi, [0xd5cc084]
	jmp CG_ParseClientEffectMapping_270
CG_ParseClientEffectMapping_290:
	mov eax, [esi+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
	test eax, eax
	jz CG_ParseClientEffectMapping_280
CG_ParseClientEffectMapping_300:
	cmp byte [ebx], 0x0
	jz CG_ParseClientEffectMapping_280
	add ebx, 0x1
CG_ParseClientEffectMapping_270:
	movsx eax, byte [ebx]
	test eax, 0xffffff80
	jz CG_ParseClientEffectMapping_290
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	test eax, eax
	jnz CG_ParseClientEffectMapping_300
CG_ParseClientEffectMapping_280:
	mov dword [esp+0x8], 0x6
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_loadfx
	call Q_strncmp
	test eax, eax
	jnz CG_ParseClientEffectMapping_310
	add ebx, 0x6
	jz CG_ParseClientEffectMapping_50
	mov esi, [0xd5cc084]
	jmp CG_ParseClientEffectMapping_320
CG_ParseClientEffectMapping_340:
	mov eax, [esi+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
	test eax, eax
	jz CG_ParseClientEffectMapping_330
CG_ParseClientEffectMapping_350:
	cmp byte [ebx], 0x0
	jz CG_ParseClientEffectMapping_330
	add ebx, 0x1
CG_ParseClientEffectMapping_320:
	movsx eax, byte [ebx]
	test eax, 0xffffff80
	jz CG_ParseClientEffectMapping_340
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	test eax, eax
	jnz CG_ParseClientEffectMapping_350
CG_ParseClientEffectMapping_330:
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_5
	call Q_strncmp
	test eax, eax
	jnz CG_ParseClientEffectMapping_360
	add ebx, 0x1
	jz CG_ParseClientEffectMapping_50
	mov esi, [0xd5cc084]
	jmp CG_ParseClientEffectMapping_370
CG_ParseClientEffectMapping_390:
	mov eax, [esi+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
	test eax, eax
	jz CG_ParseClientEffectMapping_380
CG_ParseClientEffectMapping_400:
	cmp byte [ebx], 0x0
	jz CG_ParseClientEffectMapping_380
	add ebx, 0x1
CG_ParseClientEffectMapping_370:
	movsx eax, byte [ebx]
	test eax, 0xffffff80
	jz CG_ParseClientEffectMapping_390
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	test eax, eax
	jnz CG_ParseClientEffectMapping_400
CG_ParseClientEffectMapping_380:
	mov ecx, 0x40
	lea edx, [ebp-0x98]
	mov eax, ebx
	call CG_ParseString
	mov ebx, eax
	test eax, eax
	jz CG_ParseClientEffectMapping_50
	movzx eax, byte [ebx]
	cmp al, 0xa
	jz CG_ParseClientEffectMapping_410
CG_ParseClientEffectMapping_420:
	cmp al, 0xd
	jz CG_ParseClientEffectMapping_410
	test al, al
	jz CG_ParseClientEffectMapping_410
	add ebx, 0x1
	movzx eax, byte [ebx]
	cmp al, 0xa
	jnz CG_ParseClientEffectMapping_420
CG_ParseClientEffectMapping_410:
	mov esi, [0xd5cc084]
	jmp CG_ParseClientEffectMapping_430
CG_ParseClientEffectMapping_450:
	mov eax, [esi+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
	test eax, eax
	jz CG_ParseClientEffectMapping_440
CG_ParseClientEffectMapping_460:
	cmp byte [ebx], 0x0
	jz CG_ParseClientEffectMapping_440
	add ebx, 0x1
CG_ParseClientEffectMapping_430:
	movsx eax, byte [ebx]
	test eax, 0xffffff80
	jz CG_ParseClientEffectMapping_450
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	test eax, eax
	jnz CG_ParseClientEffectMapping_460
CG_ParseClientEffectMapping_440:
	mov eax, [g_effectDefMapEntries]
	test eax, eax
	jg CG_ParseClientEffectMapping_470
CG_ParseClientEffectMapping_510:
	cmp eax, 0x20
	jz CG_ParseClientEffectMapping_480
	mov dword [esp+0x8], 0x40
	lea edx, [ebp-0x58]
	mov [esp+0x4], edx
	shl eax, 0x7
	add eax, g_effectDefMap
	mov [esp], eax
	call Q_strncpyz
	mov dword [esp+0x8], 0x40
	lea eax, [ebp-0x98]
	mov [esp+0x4], eax
	mov eax, [g_effectDefMapEntries]
	shl eax, 0x7
	add eax, g_effectDefMap+0x40
	mov [esp], eax
	call Q_strncpyz
	add dword [g_effectDefMapEntries], 0x1
	cmp byte [ebx], 0x0
	jnz CG_ParseClientEffectMapping_490
CG_ParseClientEffectMapping_50:
	add esp, 0x13c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_ParseClientEffectMapping_470:
	xor esi, esi
	jmp CG_ParseClientEffectMapping_500
CG_ParseClientEffectMapping_520:
	add esi, 0x1
	mov eax, [g_effectDefMapEntries]
	cmp esi, eax
	jge CG_ParseClientEffectMapping_510
CG_ParseClientEffectMapping_500:
	lea eax, [ebp-0x58]
	mov [esp+0x4], eax
	mov edi, esi
	shl edi, 0x7
	lea edx, [edi+g_effectDefMap]
	mov [ebp-0x11c], edx
	mov [esp], edx
	call strcmp
	test eax, eax
	jnz CG_ParseClientEffectMapping_520
	lea esi, [edi+g_effectDefMap+0x40]
	lea eax, [ebp-0x98]
	mov [esp+0x4], eax
	mov [esp], esi
	call strcmp
	test eax, eax
	jz CG_ParseClientEffectMapping_20
	lea edx, [ebp-0x98]
	mov [esp+0x10], edx
	mov [esp+0xc], esi
	mov eax, [ebp-0x11c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_tried_to_remap_s
	mov dword [esp], 0x1
	call Com_PrintError
	jmp CG_ParseClientEffectMapping_20
CG_ParseClientEffectMapping_480:
	lea edx, [ebp-0x98]
	mov [esp+0xc], edx
	lea eax, [ebp-0x58]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_failed_to_added_
	mov dword [esp], 0x1
	call Com_PrintError
	jmp CG_ParseClientEffectMapping_20
CG_ParseClientEffectMapping_360:
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], ebx
	lea ebx, [ebp-0x118]
	mov [esp], ebx
	call Q_strncpyz
	mov dword [esp+0xc], _cstring_5
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unexpected_text_
	mov dword [esp], 0x1
	call Com_PrintError
	jmp CG_ParseClientEffectMapping_50
CG_ParseClientEffectMapping_120:
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], ebx
	lea ebx, [ebp-0x118]
	mov [esp], ebx
	call Q_strncpyz
	mov dword [esp+0xc], _cstring_level_effect
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unexpected_text_
	mov dword [esp], 0x1
	call Com_PrintError
	jmp CG_ParseClientEffectMapping_50
CG_ParseClientEffectMapping_210:
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], ebx
	lea ebx, [ebp-0x118]
	mov [esp], ebx
	call Q_strncpyz
	mov dword [esp+0xc], _cstring_3
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unexpected_text_
	mov dword [esp], 0x1
	call Com_PrintError
	jmp CG_ParseClientEffectMapping_50
CG_ParseClientEffectMapping_260:
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], ebx
	lea ebx, [ebp-0x118]
	mov [esp], ebx
	call Q_strncpyz
	mov dword [esp+0xc], _cstring_4
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unexpected_text_
	mov dword [esp], 0x1
	call Com_PrintError
	jmp CG_ParseClientEffectMapping_50
CG_ParseClientEffectMapping_310:
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], ebx
	lea ebx, [ebp-0x118]
	mov [esp], ebx
	call Q_strncpyz
	mov dword [esp+0xc], _cstring_loadfx
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unexpected_text_
	mov dword [esp], 0x1
	call Com_PrintError
	jmp CG_ParseClientEffectMapping_50
	nop


;CG_AddClientSideSounds(int)
CG_AddClientSideSounds:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov eax, [g_clientEntSoundCount]
	test eax, eax
	jg CG_AddClientSideSounds_10
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_AddClientSideSounds_10:
	xor esi, esi
	mov ebx, g_clientEntSounds
CG_AddClientSideSounds_20:
	mov eax, [ebx+0xc]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	lea eax, [esi+0x400]
	mov [esp+0x4], eax
	mov [esp], edi
	call CG_PlaySoundAlias
	add esi, 0x1
	add ebx, 0x10
	cmp [g_clientEntSoundCount], esi
	jg CG_AddClientSideSounds_20
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CG_StartClientSideEffects(int)
CG_StartClientSideEffects:
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
	jz CG_StartClientSideEffects_10
	mov dword [esp], _cstring_mapname
	call Cvar_VariableString
	mov edi, eax
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_mapsmps_fxgsc
	mov dword [esp+0x4], 0x100
	lea ebx, [ebp-0x118]
	mov [esp], ebx
	call Com_sprintf
	mov esi, useFastFile
	mov eax, [esi]
	mov edx, CG_LoadClientEffectMapping_FastFile
	cmp byte [eax+0xc], 0x0
	mov eax, CG_LoadClientEffectMapping_LoadObj
	cmovz edx, eax
	mov [esp], ebx
	call edx
	mov [esp+0xc], edi
	mov dword [esp+0x8], _cstring_mapscreatefxs_fx
	mov dword [esp+0x4], 0x100
	mov [esp], ebx
	call Com_sprintf
	mov eax, [esi]
	mov edx, CG_LoadClientEffects_FastFile
	cmp byte [eax+0xc], 0x0
	mov eax, CG_LoadClientEffects_LoadObj
	cmovz edx, eax
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call edx
CG_StartClientSideEffects_10:
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;CG_ClientSideEffectsRegisterDvars()
CG_ClientSideEffectsRegisterDvars:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0xc], _cstring_enable_loading__
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_clientsideeffect
	call Cvar_RegisterBool
	mov [cg_clientSideEffects], eax
	leave
	ret
	nop


;CG_CopyClientSideSoundEntityOrientation(int, float*, float (*) [3])
CG_CopyClientSideSoundEntityOrientation:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0xc]
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov dword [esp], _ZZ39CG_CopyClientSideSoundEntityOrientationiPfPA3_fE8zeroVec3
	call AnglesToAxis
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

