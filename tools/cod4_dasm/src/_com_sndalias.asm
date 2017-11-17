;Imports of com_sndalias:
	extern Com_LoadSpkrMapFile
	extern Com_Error
	extern Com_InitDefaultSoundAliasSpeakerMap
	extern FS_ListFiles
	extern strncpy
	extern FS_FreeFileList
	extern Cmd_AddCommand
	extern DB_FindXAssetHeader
	extern DB_IsXAssetDefault
	extern Com_PrintError
	extern Q_stricmp
	extern tolower
	extern Com_Printf
	extern StreamFileNameGetName
	extern SND_GetSoundFileSize
	extern Q_strncpyz
	extern SND_IsMultiChannel
	extern useFastFile
	extern Com_PrintWarning
	extern varXStringPtr
	extern Load_XStringPtr
	extern Hunk_AllocInternal
	extern Q_stricmpn
	extern Com_StripExtension
	extern Q_strlwr
	extern Hunk_HideTempMemory
	extern Com_InitSoundAlias
	extern Com_InitEntChannels
	extern Com_MakeSoundAliasesPermanent
	extern Hunk_ClearTempMemory
	extern Hunk_ShowTempMemory
	extern Com_LoadSoundAliasSounds
	extern snd_errorOnMissing
	extern va
	extern strcpy
	extern com_sv_running
	extern memset
	extern Com_InitDefaultSoundAliasVolumeFalloffCurve
	extern Com_LoadVolumeFalloffCurve
	extern Com_LoadSoundAliasFile
	extern SND_StopSounds
	extern Cmd_RemoveCommand
	extern Hunk_AllocateTempMemory
	extern GraphGetValueFromFraction

;Exports of com_sndalias:
	global g_sa
	global Com_RefreshSpeakerMaps_f
	global _ZZ19Com_InitSpeakerMapsvE28Com_RefreshSpeakerMaps_f_VAR
	global Com_InitSpeakerMaps
	global Com_TryFindSoundAlias_FastFile
	global Com_FindSoundAlias_FastFile
	global Com_FindSoundAliasNoErrors_FastFile
	global Com_FindSoundAliasNoErrors_LoadObj
	global _ZZ20Com_LoadSoundAliasesPKcS0_18snd_alias_system_tE19Com_SoundList_f_VAR
	global Com_SoundList_f
	global Com_TryFindSoundAlias_LoadObj
	global Com_FindSoundAlias_LoadObj
	global Com_LoadedSoundList
	global Com_StreamedSoundList
	global Com_AddAliasList
	global Com_GetSpeakerMap
	global Com_FindSoundAlias
	global Com_PickSoundAlias
	global SND_GetAliasOffset
	global Load_SndAliasCustom
	global Com_AllocSoundMemory
	global Com_GetSoundFileName
	global Com_LoadSoundAliases
	global Com_TryFindSoundAlias
	global Com_InitSoundAliasHash
	global Com_UnloadSoundAliases
	global SND_GetAliasWithOffset
	global Com_FindSoundAliasNoErrors
	global Com_PickSoundAliasFromList
	global Com_AllocateTempSoundMemory
	global Com_GetVolumeFalloffCurveValue
	global Com_AliasNameRefersToSingleAlias
	global Com_RegisterSoundAliasSpeakerMap
	global Com_GetDefaultSoundAliasSpeakerMap
	global Com_RegisterSoundAliasVolumeFalloffCurve
	global Com_GetDefaultSoundAliasVolumeFalloffCurve


SECTION .text


;Com_RefreshSpeakerMaps_f()
Com_RefreshSpeakerMaps_f:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [g_sa+0xaf4]
	cmp byte [eax], 0x0
	jnz Com_RefreshSpeakerMaps_f_10
Com_RefreshSpeakerMaps_f_30:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Com_RefreshSpeakerMaps_f_10:
	mov ebx, g_sa
	mov esi, g_sa+0xab0
	jmp Com_RefreshSpeakerMaps_f_20
Com_RefreshSpeakerMaps_f_40:
	add esi, 0x1d8
	mov eax, [ebx+0xccc]
	add ebx, 0x1d8
	cmp byte [eax], 0x0
	jz Com_RefreshSpeakerMaps_f_30
Com_RefreshSpeakerMaps_f_20:
	mov [esp+0x4], esi
	mov [esp], eax
	call Com_LoadSpkrMapFile
	test al, al
	jnz Com_RefreshSpeakerMaps_f_40
	mov eax, [ebx+0xaf4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_failed_to_load_s
	mov dword [esp], 0x2
	call Com_Error
	jmp Com_RefreshSpeakerMaps_f_40


;Com_InitSpeakerMaps()
Com_InitSpeakerMaps:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov dword [esp], g_sa+0x8d8
	call Com_InitDefaultSoundAliasSpeakerMap
	mov dword [esp+0x10], 0xa
	lea eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_spkrmap
	mov dword [esp], _cstring_soundaliases
	call FS_ListFiles
	mov [ebp-0x70], eax
	mov eax, [ebp-0x1c]
	cmp eax, 0xf
	jg Com_InitSpeakerMaps_10
Com_InitSpeakerMaps_70:
	mov dword [ebp-0x6c], 0x0
	mov esi, g_sa+0x8d8
	mov ebx, [ebp-0x70]
Com_InitSpeakerMaps_40:
	mov eax, [ebp-0x6c]
	cmp eax, [ebp-0x1c]
	jge Com_InitSpeakerMaps_20
Com_InitSpeakerMaps_50:
	mov edx, [ebx]
	cld
	mov ecx, 0xffffffff
	mov edi, edx
	xor eax, eax
	repne scasb
	not ecx
	lea edi, [ecx-0x9]
	cmp edi, 0x3f
	jg Com_InitSpeakerMaps_30
Com_InitSpeakerMaps_60:
	mov [esp+0x8], edi
	mov eax, [ebx]
	mov [esp+0x4], eax
	lea eax, [ebp-0x5c]
	mov [esp], eax
	call strncpy
	mov byte [ebp+edi-0x5c], 0x0
	add dword [ebp-0x6c], 0x1
	add ebx, 0x4
	add esi, 0x1d8
	mov [esp+0x4], esi
	lea eax, [ebp-0x5c]
	mov [esp], eax
	call Com_LoadSpkrMapFile
	test al, al
	jnz Com_InitSpeakerMaps_40
	mov eax, [ebx-0x4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_failed_to_load_s
	mov dword [esp], 0x2
	call Com_Error
	mov eax, [ebp-0x6c]
	cmp eax, [ebp-0x1c]
	jl Com_InitSpeakerMaps_50
Com_InitSpeakerMaps_20:
	mov dword [esp+0x4], 0xa
	mov eax, [ebp-0x70]
	mov [esp], eax
	call FS_FreeFileList
	mov dword [esp+0x8], _ZZ19Com_InitSpeakerMapsvE28Com_RefreshSpeakerMaps_f_VAR
	mov dword [esp+0x4], Com_RefreshSpeakerMaps_f
	mov dword [esp], _cstring_snd_refreshspeak
	call Cmd_AddCommand
	mov byte [g_sa+0x8d4], 0x1
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_InitSpeakerMaps_30:
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_speaker_map_s_na
	mov dword [esp], 0x2
	call Com_Error
	jmp Com_InitSpeakerMaps_60
Com_InitSpeakerMaps_10:
	mov dword [esp+0xc], 0xf
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_snd_alias_curve_
	mov dword [esp], 0x2
	call Com_Error
	jmp Com_InitSpeakerMaps_70
	nop


;Com_TryFindSoundAlias_FastFile(char const*)
Com_TryFindSoundAlias_FastFile:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov [esp+0x4], esi
	mov dword [esp], 0x7
	call DB_FindXAssetHeader
	mov ebx, eax
	mov [esp+0x4], esi
	mov dword [esp], 0x7
	call DB_IsXAssetDefault
	test al, al
	mov eax, 0x0
	cmovnz ebx, eax
	mov eax, ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;Com_FindSoundAlias_FastFile(char const*)
Com_FindSoundAlias_FastFile:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov [esp+0x4], ebx
	mov dword [esp], 0x7
	call DB_FindXAssetHeader
	mov esi, eax
	mov [esp+0x4], ebx
	mov dword [esp], 0x7
	call DB_IsXAssetDefault
	test al, al
	jnz Com_FindSoundAlias_FastFile_10
Com_FindSoundAlias_FastFile_20:
	mov eax, esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Com_FindSoundAlias_FastFile_10:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_missing_soundali
	mov dword [esp], 0xa
	call Com_PrintError
	xor esi, esi
	jmp Com_FindSoundAlias_FastFile_20


;Com_FindSoundAliasNoErrors_FastFile(char const*)
Com_FindSoundAliasNoErrors_FastFile:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov [esp+0x4], esi
	mov dword [esp], 0x7
	call DB_FindXAssetHeader
	mov ebx, eax
	mov [esp+0x4], esi
	mov dword [esp], 0x7
	call DB_IsXAssetDefault
	test al, al
	mov eax, 0x0
	cmovnz ebx, eax
	mov eax, ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;Com_FindSoundAliasNoErrors_LoadObj(char const*)
Com_FindSoundAliasNoErrors_LoadObj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	movzx eax, byte [edi]
	test al, al
	jnz Com_FindSoundAliasNoErrors_LoadObj_10
	xor ebx, ebx
Com_FindSoundAliasNoErrors_LoadObj_60:
	mov eax, ebx
	xor edx, edx
	div dword [g_sa+0xc]
	mov ebx, edx
	lea esi, [edx*4]
	mov eax, [g_sa+0x10]
	mov eax, [eax+esi]
	test eax, eax
	jz Com_FindSoundAliasNoErrors_LoadObj_20
Com_FindSoundAliasNoErrors_LoadObj_40:
	mov eax, [eax]
	mov [esp+0x4], eax
	mov [esp], edi
	call Q_stricmp
	test eax, eax
	jz Com_FindSoundAliasNoErrors_LoadObj_30
	lea eax, [ebx+0x1]
	xor edx, edx
	div dword [g_sa+0xc]
	mov ebx, edx
	lea esi, [edx*4]
	mov eax, [g_sa+0x10]
	mov eax, [eax+esi]
	test eax, eax
	jnz Com_FindSoundAliasNoErrors_LoadObj_40
Com_FindSoundAliasNoErrors_LoadObj_20:
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_FindSoundAliasNoErrors_LoadObj_10:
	mov esi, edi
	xor ebx, ebx
Com_FindSoundAliasNoErrors_LoadObj_50:
	movsx eax, al
	mov [esp], eax
	call tolower
	mov edx, ebx
	shl edx, 0x5
	lea ebx, [edx+ebx]
	xor ebx, eax
	movzx eax, byte [esi+0x1]
	add esi, 0x1
	test al, al
	jnz Com_FindSoundAliasNoErrors_LoadObj_50
	jmp Com_FindSoundAliasNoErrors_LoadObj_60
Com_FindSoundAliasNoErrors_LoadObj_30:
	mov eax, [g_sa+0x10]
	mov eax, [eax+esi]
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Com_SoundList_f()
Com_SoundList_f:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], _cstring_________________
	mov dword [esp], 0x0
	call Com_Printf
	xor eax, eax
	call Com_StreamedSoundList
	mov dword [esp+0x4], _cstring_________________1
	mov dword [esp], 0x0
	call Com_Printf
	mov eax, 0x1
	call Com_StreamedSoundList
	mov dword [esp+0x4], _cstring_________________2
	mov dword [esp], 0x0
	call Com_Printf
	xor eax, eax
	call Com_LoadedSoundList
	mov dword [esp+0x4], _cstring_________________3
	mov dword [esp], 0x0
	call Com_Printf
	mov eax, 0x1
	call Com_LoadedSoundList
	mov dword [esp+0x4], _cstring_
	mov dword [esp], 0x0
	call Com_Printf
	leave
	ret


;Com_TryFindSoundAlias_LoadObj(char const*)
Com_TryFindSoundAlias_LoadObj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	movzx eax, byte [edi]
	test al, al
	jnz Com_TryFindSoundAlias_LoadObj_10
	xor ebx, ebx
Com_TryFindSoundAlias_LoadObj_60:
	mov eax, ebx
	xor edx, edx
	div dword [g_sa+0xc]
	mov ebx, edx
	lea esi, [edx*4]
	mov eax, [g_sa+0x10]
	mov eax, [eax+esi]
	test eax, eax
	jz Com_TryFindSoundAlias_LoadObj_20
Com_TryFindSoundAlias_LoadObj_40:
	mov eax, [eax]
	mov [esp+0x4], eax
	mov [esp], edi
	call Q_stricmp
	test eax, eax
	jz Com_TryFindSoundAlias_LoadObj_30
	lea eax, [ebx+0x1]
	xor edx, edx
	div dword [g_sa+0xc]
	mov ebx, edx
	lea esi, [edx*4]
	mov eax, [g_sa+0x10]
	mov eax, [eax+esi]
	test eax, eax
	jnz Com_TryFindSoundAlias_LoadObj_40
Com_TryFindSoundAlias_LoadObj_20:
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_TryFindSoundAlias_LoadObj_10:
	mov esi, edi
	xor ebx, ebx
Com_TryFindSoundAlias_LoadObj_50:
	movsx eax, al
	mov [esp], eax
	call tolower
	mov edx, ebx
	shl edx, 0x5
	lea ebx, [edx+ebx]
	xor ebx, eax
	movzx eax, byte [esi+0x1]
	add esi, 0x1
	test al, al
	jnz Com_TryFindSoundAlias_LoadObj_50
	jmp Com_TryFindSoundAlias_LoadObj_60
Com_TryFindSoundAlias_LoadObj_30:
	mov eax, [g_sa+0x10]
	mov eax, [eax+esi]
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Com_FindSoundAlias_LoadObj(char const*)
Com_FindSoundAlias_LoadObj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	movzx eax, byte [edi]
	test al, al
	jnz Com_FindSoundAlias_LoadObj_10
	xor ebx, ebx
Com_FindSoundAlias_LoadObj_60:
	mov eax, ebx
	jmp Com_FindSoundAlias_LoadObj_20
Com_FindSoundAlias_LoadObj_40:
	mov eax, [eax]
	mov [esp+0x4], eax
	mov [esp], edi
	call Q_stricmp
	test eax, eax
	jz Com_FindSoundAlias_LoadObj_30
	lea eax, [ebx+0x1]
Com_FindSoundAlias_LoadObj_20:
	xor edx, edx
	div dword [g_sa+0xc]
	mov ebx, edx
	lea esi, [edx*4]
	mov eax, [g_sa+0x10]
	mov eax, [eax+esi]
	test eax, eax
	jnz Com_FindSoundAlias_LoadObj_40
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_missing_soundali
	mov dword [esp], 0xa
	call Com_PrintError
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_FindSoundAlias_LoadObj_30:
	mov eax, [g_sa+0x10]
	mov eax, [eax+esi]
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_FindSoundAlias_LoadObj_10:
	mov esi, edi
	xor ebx, ebx
Com_FindSoundAlias_LoadObj_50:
	movsx eax, al
	mov [esp], eax
	call tolower
	mov edx, ebx
	shl edx, 0x5
	lea ebx, [edx+ebx]
	xor ebx, eax
	movzx eax, byte [esi+0x1]
	add esi, 0x1
	test al, al
	jnz Com_FindSoundAlias_LoadObj_50
	jmp Com_FindSoundAlias_LoadObj_60


;Com_LoadedSoundList(snd_alias_system_t)
Com_LoadedSoundList:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xbc
	cmp byte [eax+g_sa], 0x0
	jz Com_LoadedSoundList_10
	lea eax, [eax+eax*2]
	shl eax, 0x2
	mov edx, [eax+g_sa+0x18]
	mov [ebp-0xa0], edx
	mov ebx, [eax+g_sa+0x1c]
	pxor xmm0, xmm0
	test ebx, ebx
	jle Com_LoadedSoundList_20
	mov ebx, edx
	xor esi, esi
	mov dword [ebp-0x9c], 0x0
	mov [ebp-0xa4], eax
	jmp Com_LoadedSoundList_30
Com_LoadedSoundList_50:
	add esi, 0x1
	add ebx, 0x5c
	mov eax, [ebp-0xa4]
	cmp [eax+g_sa+0x1c], esi
	jle Com_LoadedSoundList_40
Com_LoadedSoundList_30:
	mov eax, [ebx+0x30]
	and eax, 0xc0
	cmp eax, 0x40
	jnz Com_LoadedSoundList_50
	test esi, esi
	jle Com_LoadedSoundList_60
	mov edx, [ebp-0xa0]
	xor ecx, ecx
	jmp Com_LoadedSoundList_70
Com_LoadedSoundList_80:
	add ecx, 0x1
	add edx, 0x5c
	cmp esi, ecx
	jz Com_LoadedSoundList_60
Com_LoadedSoundList_70:
	mov eax, [edx+0x30]
	and eax, 0xc0
	cmp eax, 0x40
	jnz Com_LoadedSoundList_80
	mov eax, [edx+0x10]
	cmp eax, [ebx+0x10]
	jz Com_LoadedSoundList_50
	add ecx, 0x1
	add edx, 0x5c
	cmp esi, ecx
	jnz Com_LoadedSoundList_70
Com_LoadedSoundList_60:
	lea edi, [ebx+0x10]
	mov eax, [ebx+0x10]
	cmp byte [eax], 0x1
	jz Com_LoadedSoundList_90
	mov dword [esp+0x8], 0x80
	lea edx, [ebp-0x98]
	mov [esp+0x4], edx
	add eax, 0x4
	mov [esp], eax
	call StreamFileNameGetName
Com_LoadedSoundList_110:
	mov eax, [edi]
	cmp byte [eax+0x1], 0x0
	jz Com_LoadedSoundList_100
	mov eax, [eax+0x4]
	add eax, 0x4
	mov [esp], eax
	call SND_GetSoundFileSize
	add [ebp-0x9c], eax
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_00097656]
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	lea eax, [ebp-0x98]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_64s_71f_kb
	mov dword [esp], 0x9
	call Com_Printf
	add esi, 0x1
	add ebx, 0x5c
	mov eax, [ebp-0xa4]
	cmp [eax+g_sa+0x1c], esi
	jg Com_LoadedSoundList_30
Com_LoadedSoundList_40:
	cvtsi2ss xmm0, dword [ebp-0x9c]
Com_LoadedSoundList_20:
	mulss xmm0, [_float_0_00000095]
	cvtss2sd xmm0, xmm0
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_total_usage_73f_
	mov dword [esp], 0x9
	call Com_Printf
Com_LoadedSoundList_10:
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_LoadedSoundList_100:
	lea edx, [ebp-0x98]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_64s_failed_to_lo
	mov dword [esp], 0x9
	call Com_Printf
	jmp Com_LoadedSoundList_50
Com_LoadedSoundList_90:
	mov dword [esp+0x8], 0x80
	mov eax, [eax+0x4]
	mov eax, [eax]
	mov [esp+0x4], eax
	lea eax, [ebp-0x98]
	mov [esp], eax
	call Q_strncpyz
	jmp Com_LoadedSoundList_110
	nop


;Com_StreamedSoundList(snd_alias_system_t)
Com_StreamedSoundList:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	cmp byte [eax+g_sa], 0x0
	jz Com_StreamedSoundList_10
	lea eax, [eax+eax*2]
	shl eax, 0x2
	mov edx, [eax+g_sa+0x18]
	mov [ebp-0xa0], edx
	mov esi, [eax+g_sa+0x1c]
	test esi, esi
	jle Com_StreamedSoundList_10
	mov ebx, edx
	xor esi, esi
	mov [ebp-0xa4], eax
	jmp Com_StreamedSoundList_20
Com_StreamedSoundList_30:
	add esi, 0x1
	add ebx, 0x5c
	mov eax, [ebp-0xa4]
	cmp esi, [eax+g_sa+0x1c]
	jge Com_StreamedSoundList_10
Com_StreamedSoundList_20:
	mov eax, [ebx+0x30]
	and eax, 0xc0
	add eax, 0xffffff80
	jnz Com_StreamedSoundList_30
	test esi, esi
	jle Com_StreamedSoundList_40
	mov edx, [ebp-0xa0]
	xor ecx, ecx
	jmp Com_StreamedSoundList_50
Com_StreamedSoundList_60:
	add ecx, 0x1
	add edx, 0x5c
	cmp esi, ecx
	jz Com_StreamedSoundList_40
Com_StreamedSoundList_50:
	mov eax, [edx+0x30]
	and eax, 0xc0
	add eax, 0xffffff80
	jnz Com_StreamedSoundList_60
	mov eax, [edx+0x10]
	cmp eax, [ebx+0x10]
	jz Com_StreamedSoundList_30
	add ecx, 0x1
	add edx, 0x5c
	cmp esi, ecx
	jnz Com_StreamedSoundList_50
Com_StreamedSoundList_40:
	lea eax, [ebx+0x10]
	mov [ebp-0x9c], eax
	mov eax, [ebx+0x10]
	cmp byte [eax], 0x1
	jz Com_StreamedSoundList_70
	mov dword [esp+0x8], 0x80
	lea edi, [ebp-0x98]
	mov [esp+0x4], edi
	add eax, 0x4
	mov [esp], eax
	call StreamFileNameGetName
Com_StreamedSoundList_90:
	mov edx, [ebp-0x9c]
	mov eax, [edx]
	cmp byte [eax+0x1], 0x0
	jz Com_StreamedSoundList_80
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_64s
	mov dword [esp], 0x9
	call Com_Printf
	add esi, 0x1
	add ebx, 0x5c
	mov eax, [ebp-0xa4]
	cmp esi, [eax+g_sa+0x1c]
	jl Com_StreamedSoundList_20
Com_StreamedSoundList_10:
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_StreamedSoundList_80:
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_64s_file_not_fou
	mov dword [esp], 0x9
	call Com_Printf
	jmp Com_StreamedSoundList_30
Com_StreamedSoundList_70:
	mov dword [esp+0x8], 0x80
	mov eax, [eax+0x4]
	mov eax, [eax]
	mov [esp+0x4], eax
	lea edi, [ebp-0x98]
	mov [esp], edi
	call Q_strncpyz
	jmp Com_StreamedSoundList_90
	nop


;Com_AddAliasList(char const*, snd_alias_list_t*)
Com_AddAliasList:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	movzx eax, byte [edi]
	test al, al
	jnz Com_AddAliasList_10
	xor ebx, ebx
Com_AddAliasList_60:
	mov eax, ebx
	xor edx, edx
	div dword [g_sa+0xc]
	mov ebx, edx
	lea ecx, [edx*4]
	mov edx, [g_sa+0x10]
	mov eax, [edx+ecx]
	test eax, eax
	jz Com_AddAliasList_20
Com_AddAliasList_40:
	mov eax, [eax]
	mov [esp+0x4], eax
	mov [esp], edi
	call Q_stricmp
	test eax, eax
	jz Com_AddAliasList_30
	lea eax, [ebx+0x1]
	xor edx, edx
	div dword [g_sa+0xc]
	mov ebx, edx
	lea ecx, [edx*4]
	mov edx, [g_sa+0x10]
	mov eax, [edx+ecx]
	test eax, eax
	jnz Com_AddAliasList_40
Com_AddAliasList_20:
	add dword [g_sa+0x8], 0x1
	mov eax, [ebp+0xc]
	mov [ecx+edx], eax
	mov eax, 0x1
Com_AddAliasList_30:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_AddAliasList_10:
	mov esi, edi
	xor ebx, ebx
Com_AddAliasList_50:
	movsx eax, al
	mov [esp], eax
	call tolower
	mov edx, ebx
	shl edx, 0x5
	lea ebx, [edx+ebx]
	xor ebx, eax
	movzx eax, byte [esi+0x1]
	add esi, 0x1
	test al, al
	jnz Com_AddAliasList_50
	jmp Com_AddAliasList_60
	nop


;Com_GetSpeakerMap(SpeakerMap*, int)
Com_GetSpeakerMap:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	xor ebx, ebx
	cmp dword [ebp+0xc], 0x2
	setz bl
	call SND_IsMultiChannel
	movzx edx, al
	lea edx, [edx+edx*4]
	lea edx, [edx+edx*4]
	lea eax, [ebx*4]
	add eax, ebx
	lea eax, [eax+eax*4]
	shl eax, 0x3
	lea edx, [eax+edx*4]
	mov eax, [ebp+0x8]
	lea eax, [eax+edx+0x8]
	add esp, 0x4
	pop ebx
	pop ebp
	ret
	nop


;Com_FindSoundAlias(char const*)
Com_FindSoundAlias:
	push ebp
	mov ebp, esp
	mov eax, useFastFile
	mov eax, [eax]
	mov ecx, Com_FindSoundAlias_FastFile
	cmp byte [eax+0xc], 0x0
	mov eax, Com_FindSoundAlias_LoadObj
	cmovz ecx, eax
	pop ebp
	jmp ecx


;Com_PickSoundAlias(char const*)
Com_PickSoundAlias:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, useFastFile
	mov eax, [eax]
	mov edx, Com_FindSoundAlias_FastFile
	cmp byte [eax+0xc], 0x0
	mov eax, Com_FindSoundAlias_LoadObj
	cmovz edx, eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call edx
	mov [ebp-0x24], eax
	test eax, eax
	jz Com_PickSoundAlias_10
	mov edi, [eax+0x8]
	test edi, edi
	jz Com_PickSoundAlias_20
	mov eax, [eax+0x4]
	mov [ebp-0x1c], eax
	movss xmm2, dword [eax+0x38]
	mov edi, [eax+0x14]
	mov ecx, eax
	add ecx, 0x70
	mov [ebp-0x20], eax
	mov ebx, eax
	xor esi, esi
	movss xmm3, dword [_float_32768_00000000]
	add esi, 0x1
	mov edx, [ebp-0x24]
	mov eax, [edx+0x8]
	cmp eax, esi
	jz Com_PickSoundAlias_30
Com_PickSoundAlias_50:
	add ebx, 0x5c
	addss xmm2, [ecx+0x24]
	mov edx, [g_sa+0x4]
	lea eax, [edx+edx*2]
	lea eax, [edx+eax*4]
	shl eax, 0x4
	add eax, edx
	shl eax, 0x8
	sub eax, edx
	lea eax, [edx+eax*4+0x269ec3]
	mov [g_sa+0x4], eax
	sar eax, 0x10
	and eax, 0x7fff
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm2
	movss xmm1, dword [ecx+0x24]
	mulss xmm1, xmm3
	ucomiss xmm1, xmm0
	mov eax, [ebp-0x20]
	cmova eax, ebx
	mov [ebp-0x20], eax
	mov eax, [ecx]
	cmp eax, edi
	jle Com_PickSoundAlias_40
	mov edi, eax
Com_PickSoundAlias_40:
	add ecx, 0x5c
	add esi, 0x1
	mov edx, [ebp-0x24]
	mov eax, [edx+0x8]
	cmp eax, esi
	jnz Com_PickSoundAlias_50
Com_PickSoundAlias_30:
	cmp esi, 0x2
	jg Com_PickSoundAlias_60
Com_PickSoundAlias_80:
	mov edx, [ebp-0x20]
Com_PickSoundAlias_70:
	lea eax, [edi+0x1]
	mov [edx+0x14], eax
	mov eax, [ebp-0x20]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_PickSoundAlias_60:
	mov edx, [ebp-0x20]
	mov ebx, [edx+0x14]
	cmp ebx, edi
	jnz Com_PickSoundAlias_70
	test eax, eax
	jle Com_PickSoundAlias_80
	pxor xmm2, xmm2
	xor ecx, ecx
Com_PickSoundAlias_100:
	mov eax, [ebp-0x1c]
	cmp ebx, [eax+0x14]
	jz Com_PickSoundAlias_90
	addss xmm2, [eax+0x38]
	mov edx, [g_sa+0x4]
	lea eax, [edx+edx*2]
	lea eax, [edx+eax*4]
	shl eax, 0x4
	add eax, edx
	shl eax, 0x8
	sub eax, edx
	lea eax, [edx+eax*4+0x269ec3]
	mov [g_sa+0x4], eax
	sar eax, 0x10
	and eax, 0x7fff
	cvtsi2ss xmm1, eax
	mulss xmm1, xmm2
	movss xmm0, dword [_float_32768_00000000]
	mov edx, [ebp-0x1c]
	mulss xmm0, [edx+0x38]
	ucomiss xmm0, xmm1
	cmovbe edx, [ebp-0x20]
	mov [ebp-0x20], edx
Com_PickSoundAlias_90:
	add dword [ebp-0x1c], 0x5c
	add ecx, 0x1
	mov eax, [ebp-0x24]
	cmp [eax+0x8], ecx
	jg Com_PickSoundAlias_100
	jmp Com_PickSoundAlias_80
Com_PickSoundAlias_20:
	mov eax, [eax]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_sound_not_loaded
	mov dword [esp], 0x9
	call Com_PrintWarning
Com_PickSoundAlias_10:
	mov dword [ebp-0x20], 0x0
	mov eax, [ebp-0x20]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;SND_GetAliasOffset(snd_alias_t const*)
SND_GetAliasOffset:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov ecx, [ebx]
	mov eax, useFastFile
	mov eax, [eax]
	mov edx, Com_FindSoundAlias_FastFile
	cmp byte [eax+0xc], 0x0
	mov eax, Com_FindSoundAlias_LoadObj
	cmovz edx, eax
	mov [esp], ecx
	call edx
	mov edx, [eax+0x4]
	mov ecx, [eax+0x8]
	test ecx, ecx
	jle SND_GetAliasOffset_10
	cmp ebx, edx
	jz SND_GetAliasOffset_10
	xor eax, eax
SND_GetAliasOffset_20:
	add edx, 0x5c
	add eax, 0x1
	cmp ecx, eax
	jz SND_GetAliasOffset_10
	cmp ebx, edx
	jnz SND_GetAliasOffset_20
	add esp, 0x14
	pop ebx
	pop ebp
	ret
SND_GetAliasOffset_10:
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;Load_SndAliasCustom(snd_alias_list_t**)
Load_SndAliasCustom:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov eax, [esi]
	test eax, eax
	jz Load_SndAliasCustom_10
	mov ebx, varXStringPtr
	mov [ebx], esi
	mov dword [esp], 0x0
	call Load_XStringPtr
	mov eax, [ebx]
	mov eax, [eax]
	mov eax, [eax]
	mov [esp+0x4], eax
	mov dword [esp], 0x7
	call DB_FindXAssetHeader
	mov [esi], eax
Load_SndAliasCustom_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;Com_AllocSoundMemory(int, char const*, int)
Com_AllocSoundMemory:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Hunk_AllocInternal
	nop


;Com_GetSoundFileName(snd_alias_t const*, char*, int)
Com_GetSoundFileName:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0xc]
	mov edx, [ebp+0x10]
	mov eax, [ebp+0x8]
	mov eax, [eax+0x10]
	cmp byte [eax], 0x1
	jz Com_GetSoundFileName_10
	mov [ebp+0x10], edx
	mov [ebp+0xc], ecx
	add eax, 0x4
	mov [ebp+0x8], eax
	pop ebp
	jmp StreamFileNameGetName
Com_GetSoundFileName_10:
	mov eax, [eax+0x4]
	mov eax, [eax]
	mov [ebp+0xc], eax
	mov [ebp+0x8], ecx
	pop ebp
	jmp Q_strncpyz
	nop


;Com_LoadSoundAliases(char const*, char const*, snd_alias_system_t)
Com_LoadSoundAliases:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	cmp byte [g_sa+0x50], 0x0
	jz Com_LoadSoundAliases_10
Com_LoadSoundAliases_180:
	cmp byte [g_sa+0x8d4], 0x0
	jz Com_LoadSoundAliases_20
Com_LoadSoundAliases_130:
	mov dword [esp+0x8], 0x8
	mov dword [esp+0x4], _cstring_mapsmp
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Q_stricmpn
	test eax, eax
	jnz Com_LoadSoundAliases_30
	lea edx, [ebp-0x60]
	mov [esp+0x4], edx
	mov eax, [ebp+0x8]
	add eax, 0x8
	mov [esp], eax
	call Com_StripExtension
Com_LoadSoundAliases_120:
	lea eax, [ebp-0x60]
	mov [esp], eax
	call Q_strlwr
	cmp dword [ebp+0x10], 0x1
	jz Com_LoadSoundAliases_40
Com_LoadSoundAliases_100:
	mov dword [esp+0x10], 0xa
	lea eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_csv
	mov dword [esp], _cstring_soundaliases
	call FS_ListFiles
	mov esi, eax
	mov edi, [ebp-0x1c]
	test edi, edi
	jz Com_LoadSoundAliases_50
	call Hunk_HideTempMemory
	mov edi, eax
	call Com_InitSoundAlias
	call Com_InitEntChannels
	mov ebx, [ebp-0x1c]
	test ebx, ebx
	jg Com_LoadSoundAliases_60
Com_LoadSoundAliases_200:
	mov edx, [ebp+0x10]
	lea eax, [edx*8+g_sa+0x38]
	mov [esp+0x4], eax
	lea eax, [edx+edx*2]
	lea eax, [eax*4+g_sa+0x14]
	mov [esp], eax
	call Com_MakeSoundAliasesPermanent
	call Hunk_ClearTempMemory
	mov [esp], edi
	call Hunk_ShowTempMemory
	mov dword [esp+0x4], 0xa
	mov [esp], esi
	call FS_FreeFileList
	cmp dword [ebp+0x10], 0x1
	jbe Com_LoadSoundAliases_70
Com_LoadSoundAliases_110:
	mov edi, [ebp+0x10]
	mov byte [edi+g_sa], 0x1
	cmp edi, 0x1
	ja Com_LoadSoundAliases_80
	lea eax, [edi*8+g_sa+0x38]
	mov [esp], eax
	call Com_LoadSoundAliasSounds
	mov edx, eax
	test eax, eax
	jz Com_LoadSoundAliases_80
	mov eax, snd_errorOnMissing
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz Com_LoadSoundAliases_80
	mov [esp+0x4], edx
	mov dword [esp], _cstring_i_sound_files_ar
	call va
	cmp edi, 0x1
	sbb edx, edx
	add edx, 0x2
	mov [esp+0x4], eax
	mov [esp], edx
	call Com_Error
	jmp Com_LoadSoundAliases_80
Com_LoadSoundAliases_30:
	mov dword [esp+0x8], 0x5
	mov dword [esp+0x4], _cstring_maps
	mov edi, [ebp+0x8]
	mov [esp], edi
	call Q_stricmpn
	test eax, eax
	jz Com_LoadSoundAliases_90
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	lea edi, [ebp-0x60]
	mov [esp], edi
	call strcpy
	lea eax, [ebp-0x60]
	mov [esp], eax
	call Q_strlwr
	cmp dword [ebp+0x10], 0x1
	jnz Com_LoadSoundAliases_100
Com_LoadSoundAliases_40:
	mov eax, com_sv_running
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz Com_LoadSoundAliases_100
	mov eax, [g_sa+0x2c]
	mov [g_sa+0x20], eax
	mov eax, [g_sa+0x30]
	mov [g_sa+0x24], eax
	mov eax, [g_sa+0x34]
	mov [g_sa+0x28], eax
	mov eax, [g_sa+0x48]
	mov edx, [g_sa+0x4c]
	mov [g_sa+0x40], eax
	mov [g_sa+0x44], edx
Com_LoadSoundAliases_70:
	cmp word [g_sa], 0x0
	jnz Com_LoadSoundAliases_110
	mov dword [esp+0x8], _ZZ20Com_LoadSoundAliasesPKcS0_18snd_alias_system_tE19Com_SoundList_f_VAR
	mov dword [esp+0x4], Com_SoundList_f
	mov dword [esp], _cstring_snd_list
	call Cmd_AddCommand
	jmp Com_LoadSoundAliases_110
Com_LoadSoundAliases_50:
	mov dword [esp+0x4], _cstring_warning_cant_fin
	mov dword [esp], 0x9
	call Com_PrintWarning
Com_LoadSoundAliases_80:
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_LoadSoundAliases_90:
	lea eax, [ebp-0x60]
	mov [esp+0x4], eax
	mov eax, edi
	add eax, 0x5
	mov [esp], eax
	call Com_StripExtension
	jmp Com_LoadSoundAliases_120
Com_LoadSoundAliases_20:
	call Com_InitSpeakerMaps
	jmp Com_LoadSoundAliases_130
Com_LoadSoundAliases_10:
	mov dword [esp+0x8], 0x480
	mov dword [esp+0x4], 0x0
	mov dword [esp], g_sa+0x54
	call memset
	mov dword [esp], g_sa+0x54
	call Com_InitDefaultSoundAliasVolumeFalloffCurve
	mov dword [esp+0x10], 0xa
	lea eax, [ebp-0x20]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_vfcurve
	mov dword [esp], _cstring_soundaliases
	call FS_ListFiles
	mov [ebp-0x70], eax
	mov eax, [ebp-0x20]
	cmp eax, 0xf
	jg Com_LoadSoundAliases_140
Com_LoadSoundAliases_210:
	mov dword [ebp-0x6c], 0x0
	mov dword [ebp-0x74], g_sa+0x54
	mov ebx, [ebp-0x70]
	mov esi, g_sa+0x4d4
Com_LoadSoundAliases_160:
	mov edx, [ebp-0x6c]
	cmp edx, [ebp-0x20]
	jge Com_LoadSoundAliases_150
Com_LoadSoundAliases_170:
	add dword [ebp-0x6c], 0x1
	add esi, 0x40
	add ebx, 0x4
	add dword [ebp-0x74], 0x48
	mov edx, [ebx-0x4]
	cld
	mov ecx, 0xffffffff
	mov edi, edx
	xor eax, eax
	repne scasb
	not ecx
	sub ecx, 0x8
	mov [esp+0x8], ecx
	mov [esp+0x4], edx
	mov [esp], esi
	call Q_strncpyz
	mov eax, [ebp-0x74]
	mov [esp+0x4], eax
	mov [esp], esi
	call Com_LoadVolumeFalloffCurve
	test al, al
	jnz Com_LoadSoundAliases_160
	mov eax, [ebx-0x4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_failed_to_load_s1
	mov dword [esp], 0x1
	call Com_Error
	mov edx, [ebp-0x6c]
	cmp edx, [ebp-0x20]
	jl Com_LoadSoundAliases_170
Com_LoadSoundAliases_150:
	mov dword [esp+0x4], 0xa
	mov edi, [ebp-0x70]
	mov [esp], edi
	call FS_FreeFileList
	mov byte [g_sa+0x50], 0x1
	jmp Com_LoadSoundAliases_180
Com_LoadSoundAliases_60:
	xor ebx, ebx
Com_LoadSoundAliases_190:
	mov eax, [esi+ebx*4]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	lea eax, [ebp-0x60]
	mov [esp], eax
	call Com_LoadSoundAliasFile
	add ebx, 0x1
	cmp ebx, [ebp-0x1c]
	jl Com_LoadSoundAliases_190
	jmp Com_LoadSoundAliases_200
Com_LoadSoundAliases_140:
	mov dword [esp+0xc], 0xf
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_snd_alias_curve_
	mov dword [esp], 0x2
	call Com_Error
	jmp Com_LoadSoundAliases_210


;Com_TryFindSoundAlias(char const*)
Com_TryFindSoundAlias:
	push ebp
	mov ebp, esp
	mov eax, useFastFile
	mov eax, [eax]
	mov ecx, Com_TryFindSoundAlias_FastFile
	cmp byte [eax+0xc], 0x0
	mov eax, Com_TryFindSoundAlias_LoadObj
	cmovz ecx, eax
	pop ebp
	jmp ecx


;Com_InitSoundAliasHash(unsigned int)
Com_InitSoundAliasHash:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [g_sa+0x8], 0x0
	lea ebx, [ebx+ebx*2+0x1]
	shr ebx, 1
	mov [g_sa+0xc], ebx
	shl ebx, 0x2
	mov [esp], ebx
	call Hunk_AllocInternal
	mov [g_sa+0x10], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;Com_UnloadSoundAliases(snd_alias_system_t)
Com_UnloadSoundAliases:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	cmp byte [edi+g_sa], 0x0
	jz Com_UnloadSoundAliases_10
	cmp edi, 0x2
	jz Com_UnloadSoundAliases_20
	mov dword [esp], 0x0
	call SND_StopSounds
	lea eax, [edi+edi*2]
	shl eax, 0x2
	mov edx, [eax+g_sa+0x18]
	mov [ebp-0x1c], edx
	mov ecx, [eax+g_sa+0x1c]
	test ecx, ecx
	jle Com_UnloadSoundAliases_20
	mov esi, edx
	mov dword [ebp-0x20], 0x0
	mov [ebp-0x24], eax
	jmp Com_UnloadSoundAliases_30
Com_UnloadSoundAliases_40:
	add dword [ebp-0x20], 0x1
	add esi, 0x5c
	mov edx, [ebp-0x20]
	mov eax, [ebp-0x24]
	cmp [eax+g_sa+0x1c], edx
	jle Com_UnloadSoundAliases_20
Com_UnloadSoundAliases_30:
	mov eax, [esi+0x30]
	and eax, 0xc0
	cmp eax, 0x40
	jnz Com_UnloadSoundAliases_40
	mov eax, [ebp-0x20]
	test eax, eax
	jle Com_UnloadSoundAliases_50
	mov ebx, [esi+0x10]
	mov edx, [ebp-0x1c]
	xor ecx, ecx
	jmp Com_UnloadSoundAliases_60
Com_UnloadSoundAliases_80:
	add ecx, 0x1
	add edx, 0x5c
	cmp [ebp-0x20], ecx
	jz Com_UnloadSoundAliases_70
Com_UnloadSoundAliases_60:
	cmp [edx+0x10], ebx
	jnz Com_UnloadSoundAliases_80
	mov eax, [edx+0x30]
	and eax, 0xc0
	cmp eax, 0x40
	jnz Com_UnloadSoundAliases_80
Com_UnloadSoundAliases_70:
	mov byte [ebx+0x1], 0x0
Com_UnloadSoundAliases_110:
	add dword [ebp-0x20], 0x1
	add esi, 0x5c
	mov edx, [ebp-0x20]
	mov eax, [ebp-0x24]
	cmp [eax+g_sa+0x1c], edx
	jg Com_UnloadSoundAliases_30
Com_UnloadSoundAliases_20:
	lea eax, [edi+edi*2]
	shl eax, 0x2
	mov ebx, [eax+g_sa+0x18]
	test ebx, ebx
	jz Com_UnloadSoundAliases_90
	mov dword [eax+g_sa+0x18], 0x0
	mov dword [eax+g_sa+0x1c], 0x0
	mov eax, [g_sa+0xc]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov eax, [g_sa+0x10]
	mov [esp], eax
	call memset
	mov dword [g_sa+0x8], 0x0
Com_UnloadSoundAliases_90:
	mov byte [edi+g_sa], 0x0
	cmp edi, 0x1
	jbe Com_UnloadSoundAliases_100
Com_UnloadSoundAliases_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_UnloadSoundAliases_100:
	cmp word [g_sa], 0x0
	jnz Com_UnloadSoundAliases_10
	mov dword [ebp+0x8], _cstring_snd_list
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Cmd_RemoveCommand
Com_UnloadSoundAliases_50:
	mov ebx, [esi+0x10]
	mov byte [ebx+0x1], 0x0
	jmp Com_UnloadSoundAliases_110


;SND_GetAliasWithOffset(char const*, int)
SND_GetAliasWithOffset:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov eax, useFastFile
	mov eax, [eax]
	mov edx, Com_FindSoundAlias_FastFile
	cmp byte [eax+0xc], 0x0
	mov eax, Com_FindSoundAlias_LoadObj
	cmovz edx, eax
	mov [esp], edi
	call edx
	test eax, eax
	jz SND_GetAliasWithOffset_10
	mov ebx, [eax+0x4]
	mov ecx, [eax+0x8]
	cmp ecx, 0x0
	jle SND_GetAliasWithOffset_20
	test esi, esi
	jz SND_GetAliasWithOffset_30
	mov eax, ebx
	xor edx, edx
SND_GetAliasWithOffset_40:
	add eax, 0x5c
	add edx, 0x1
	cmp ecx, edx
	jz SND_GetAliasWithOffset_30
	cmp esi, edx
	jnz SND_GetAliasWithOffset_40
	mov ebx, eax
	mov eax, ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SND_GetAliasWithOffset_20:
	jnz SND_GetAliasWithOffset_30
SND_GetAliasWithOffset_10:
	mov [esp+0xc], esi
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_snd_getaliaswith
	mov dword [esp], 0x2
	call Com_Error
	xor ebx, ebx
SND_GetAliasWithOffset_30:
	mov eax, ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Com_FindSoundAliasNoErrors(char const*)
Com_FindSoundAliasNoErrors:
	push ebp
	mov ebp, esp
	mov eax, useFastFile
	mov eax, [eax]
	mov ecx, Com_FindSoundAliasNoErrors_FastFile
	cmp byte [eax+0xc], 0x0
	mov eax, Com_FindSoundAliasNoErrors_LoadObj
	cmovz ecx, eax
	pop ebp
	jmp ecx


;Com_PickSoundAliasFromList(snd_alias_list_t*)
Com_PickSoundAliasFromList:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ecx, [ebp+0x8]
	test ecx, ecx
	jz Com_PickSoundAliasFromList_10
	mov eax, [ebp+0x8]
	mov edx, [eax+0x8]
	test edx, edx
	jz Com_PickSoundAliasFromList_20
	mov eax, [eax+0x4]
	mov [ebp-0x20], eax
	movss xmm2, dword [eax+0x38]
	mov edi, [eax+0x14]
	mov ecx, eax
	add ecx, 0x70
	mov [ebp-0x1c], eax
	mov ebx, eax
	xor esi, esi
	movss xmm3, dword [_float_32768_00000000]
	add esi, 0x1
	mov edx, [ebp+0x8]
	mov eax, [edx+0x8]
	cmp eax, esi
	jz Com_PickSoundAliasFromList_30
Com_PickSoundAliasFromList_50:
	add ebx, 0x5c
	addss xmm2, [ecx+0x24]
	mov edx, [g_sa+0x4]
	lea eax, [edx+edx*2]
	lea eax, [edx+eax*4]
	shl eax, 0x4
	add eax, edx
	shl eax, 0x8
	sub eax, edx
	lea eax, [edx+eax*4+0x269ec3]
	mov [g_sa+0x4], eax
	sar eax, 0x10
	and eax, 0x7fff
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm2
	movss xmm1, dword [ecx+0x24]
	mulss xmm1, xmm3
	ucomiss xmm1, xmm0
	mov eax, [ebp-0x1c]
	cmova eax, ebx
	mov [ebp-0x1c], eax
	mov eax, [ecx]
	cmp eax, edi
	jle Com_PickSoundAliasFromList_40
	mov edi, eax
Com_PickSoundAliasFromList_40:
	add ecx, 0x5c
	add esi, 0x1
	mov edx, [ebp+0x8]
	mov eax, [edx+0x8]
	cmp eax, esi
	jnz Com_PickSoundAliasFromList_50
Com_PickSoundAliasFromList_30:
	cmp esi, 0x2
	jg Com_PickSoundAliasFromList_60
Com_PickSoundAliasFromList_80:
	mov edx, [ebp-0x1c]
Com_PickSoundAliasFromList_70:
	lea eax, [edi+0x1]
	mov [edx+0x14], eax
	mov eax, [ebp-0x1c]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_PickSoundAliasFromList_60:
	mov edx, [ebp-0x1c]
	mov esi, [edx+0x14]
	cmp esi, edi
	jnz Com_PickSoundAliasFromList_70
	test eax, eax
	jle Com_PickSoundAliasFromList_80
	mov ecx, [ebp-0x20]
	pxor xmm2, xmm2
	xor ebx, ebx
Com_PickSoundAliasFromList_100:
	cmp esi, [ecx+0x14]
	jz Com_PickSoundAliasFromList_90
	addss xmm2, [ecx+0x38]
	mov edx, [g_sa+0x4]
	lea eax, [edx+edx*2]
	lea eax, [edx+eax*4]
	shl eax, 0x4
	add eax, edx
	shl eax, 0x8
	sub eax, edx
	lea eax, [edx+eax*4+0x269ec3]
	mov [g_sa+0x4], eax
	sar eax, 0x10
	and eax, 0x7fff
	cvtsi2ss xmm1, eax
	mulss xmm1, xmm2
	movss xmm0, dword [_float_32768_00000000]
	mulss xmm0, [ecx+0x38]
	ucomiss xmm0, xmm1
	mov eax, [ebp-0x1c]
	cmova eax, ecx
	mov [ebp-0x1c], eax
Com_PickSoundAliasFromList_90:
	add ecx, 0x5c
	add ebx, 0x1
	mov edx, [ebp+0x8]
	cmp [edx+0x8], ebx
	jg Com_PickSoundAliasFromList_100
	jmp Com_PickSoundAliasFromList_80
Com_PickSoundAliasFromList_20:
	mov eax, [eax]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_sound_not_loaded
	mov dword [esp], 0x9
	call Com_PrintWarning
Com_PickSoundAliasFromList_10:
	mov dword [ebp-0x1c], 0x0
	mov eax, [ebp-0x1c]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Com_AllocateTempSoundMemory(int, char const*)
Com_AllocateTempSoundMemory:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Hunk_AllocateTempMemory
	nop


;Com_GetVolumeFalloffCurveValue(SndCurve*, float)
Com_GetVolumeFalloffCurveValue:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	lea eax, [edx+0x8]
	mov [esp+0x4], eax
	mov eax, [edx+0x4]
	mov [esp], eax
	call GraphGetValueFromFraction
	leave
	ret


;Com_AliasNameRefersToSingleAlias(char const*)
Com_AliasNameRefersToSingleAlias:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, useFastFile
	mov eax, [eax]
	mov edx, Com_FindSoundAlias_FastFile
	cmp byte [eax+0xc], 0x0
	mov eax, Com_FindSoundAlias_LoadObj
	cmovz edx, eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call edx
	test eax, eax
	jz Com_AliasNameRefersToSingleAlias_10
	cmp dword [eax+0x8], 0x1
	jz Com_AliasNameRefersToSingleAlias_20
Com_AliasNameRefersToSingleAlias_10:
	xor eax, eax
	leave
	ret
Com_AliasNameRefersToSingleAlias_20:
	mov eax, 0x1
	leave
	ret
	nop


;Com_RegisterSoundAliasSpeakerMap(char const*, char const*)
Com_RegisterSoundAliasSpeakerMap:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	xor esi, esi
	mov ebx, g_sa
	mov edi, g_sa+0x918
Com_RegisterSoundAliasSpeakerMap_20:
	mov eax, [ebx+0x91c]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz Com_RegisterSoundAliasSpeakerMap_10
	add esi, 0x1
	add edi, 0x1d8
	add ebx, 0x1d8
	cmp esi, 0x10
	jnz Com_RegisterSoundAliasSpeakerMap_20
	mov eax, [ebp+0x8]
	mov [esp+0xc], eax
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_sound_alias_file
	mov dword [esp], 0x2
	call Com_Error
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_RegisterSoundAliasSpeakerMap_10:
	mov eax, edi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Com_GetDefaultSoundAliasSpeakerMap()
Com_GetDefaultSoundAliasSpeakerMap:
	push ebp
	mov ebp, esp
	mov eax, g_sa+0x918
	pop ebp
	ret


;Com_RegisterSoundAliasVolumeFalloffCurve(char const*, char const*)
Com_RegisterSoundAliasVolumeFalloffCurve:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	xor esi, esi
	mov ebx, g_sa
	mov edi, g_sa+0x54
Com_RegisterSoundAliasVolumeFalloffCurve_30:
	mov eax, [ebx+0x54]
	test eax, eax
	jz Com_RegisterSoundAliasVolumeFalloffCurve_10
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz Com_RegisterSoundAliasVolumeFalloffCurve_20
Com_RegisterSoundAliasVolumeFalloffCurve_10:
	add esi, 0x1
	add edi, 0x48
	add ebx, 0x48
	cmp esi, 0x10
	jnz Com_RegisterSoundAliasVolumeFalloffCurve_30
	mov eax, [ebp+0x8]
	mov [esp+0xc], eax
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_sound_alias_file1
	mov dword [esp], 0x2
	call Com_Error
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_RegisterSoundAliasVolumeFalloffCurve_20:
	mov eax, edi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Com_GetDefaultSoundAliasVolumeFalloffCurve()
Com_GetDefaultSoundAliasVolumeFalloffCurve:
	push ebp
	mov ebp, esp
	mov eax, g_sa+0x54
	pop ebp
	ret


;Initialized global or static variables of com_sndalias:
SECTION .data


;Initialized constant data of com_sndalias:
SECTION .rdata


;Zero initialized global or static variables of com_sndalias:
SECTION .bss
g_sa: resb 0x2658
_ZZ19Com_InitSpeakerMapsvE28Com_RefreshSpeakerMaps_f_VAR: resb 0x14
_ZZ20Com_LoadSoundAliasesPKcS0_18snd_alias_system_tE19Com_SoundList_f_VAR: resb 0x14


;All cstrings:
SECTION .rdata
_cstring_failed_to_load_s:		db 015h,"Failed to load speaker map ",27h,"%s",27h,0
_cstring_spkrmap:		db "spkrmap",0
_cstring_soundaliases:		db "soundaliases",0
_cstring_snd_refreshspeak:		db "snd_refreshSpeakerMaps",0
_cstring_speaker_map_s_na:		db 015h,"Speaker map ",27h,"%s",27h," name too long",0
_cstring_snd_alias_curve_:		db 015h,"Snd_Alias Curve initialization: ",27h,".vfcurve",27h," file count (%d) exceeds maximum (%d)",0
_cstring_missing_soundali:		db "Missing soundalias ",22h,"%s",22h,".",0ah,0
_cstring_________________:		db 0ah,"________________________________________",0ah,"currently streamed menu sounds:",0ah,0
_cstring_________________1:		db 0ah,"________________________________________",0ah,"currently streamed in-game sounds:",0ah,0
_cstring_________________2:		db "________________________________________",0ah,"currently loaded menu sounds:",0ah,0
_cstring_________________3:		db 0ah,"________________________________________",0ah,"currently loaded in-game sounds:",0ah,0
_cstring_:		db 0ah,0
_cstring_64s_71f_kb:		db "%-64s %7.1f KB",0ah,0
_cstring_total_usage_73f_:		db 0ah,"total usage %7.3f MB",0ah,0
_cstring_64s_failed_to_lo:		db "%-64s FAILED TO LOAD",0ah,0
_cstring_64s:		db "%-64s",0ah,0
_cstring_64s_file_not_fou:		db "%-64s FILE NOT FOUND",0ah,0
_cstring_sound_not_loaded:		db "Sound not loaded: ",22h,"%s",22h,0ah,0
_cstring_mapsmp:		db "maps/mp/",0
_cstring_csv:		db "csv",0
_cstring_i_sound_files_ar:		db 015h,"%i sound file(s) are missing or in a bad format",0ah,0
_cstring_maps:		db "maps/",0
_cstring_snd_list:		db "snd_list",0
_cstring_warning_cant_fin:		db "WARNING: can",27h,"t find any sound alias files (soundaliases/*.csv)",0ah,0
_cstring_vfcurve:		db "vfcurve",0
_cstring_failed_to_load_s1:		db 015h,"Failed to load sndcurve file ",27h,"%s",27h,0
_cstring_snd_getaliaswith:		db "SND_GetAliasWithOffset: could not find sound alias ",27h,"%s",27h," with offset %d",0
_cstring_sound_alias_file:		db 015h,"Sound alias file %s: Speaker Map ",27h,"%s",27h," not found.",0
_cstring_sound_alias_file1:		db 015h,"Sound alias file %s: Volume Falloff Curve ",27h,"%s",27h," not found.",0



;All constant floats and doubles:
SECTION .rdata
_float_0_00097656:		dd 0x3a800000	; 0.000976562
_float_0_00000095:		dd 0x35800000	; 9.53674e-07
_float_32768_00000000:		dd 0x47000000	; 32768

