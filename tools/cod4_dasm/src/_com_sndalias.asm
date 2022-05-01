;Imports of com_sndalias:
	extern _Z19Com_LoadSpkrMapFilePKcP14SpeakerMapInfo
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo
	extern FS_ListFiles
	extern strncpy
	extern FS_FreeFileList
	extern _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	extern _Z19DB_FindXAssetHeader10XAssetTypePKc
	extern _Z18DB_IsXAssetDefault10XAssetTypePKc
	extern _Z14Com_PrintErroriPKcz
	extern _Z9I_stricmpPKcS0_
	extern tolower
	extern _Z10Com_PrintfiPKcz
	extern _Z21StreamFileNameGetNamePK14StreamFileNamePci
	extern _Z20SND_GetSoundFileSizePKv
	extern _Z10I_strncpyzPcPKci
	extern _Z18SND_IsMultiChannelv
	extern useFastFile
	extern _Z16Com_PrintWarningiPKcz
	extern varXStringPtr
	extern _Z15Load_XStringPtrh
	extern _Z18Hunk_AllocInternali
	extern _Z10I_strnicmpPKcS0_i
	extern _Z18Com_StripExtensionPKcPc
	extern _Z8I_strlwrPc
	extern Hunk_HideTempMemory
	extern _Z18Com_InitSoundAliasv
	extern _Z19Com_InitEntChannelsv
	extern _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo
	extern Hunk_ClearTempMemory
	extern Hunk_ShowTempMemory
	extern _Z24Com_LoadSoundAliasSoundsP13SoundFileInfo
	extern snd_errorOnMissing
	extern _Z2vaPKcz
	extern strcpy
	extern com_sv_running
	extern memset
	extern _Z43Com_InitDefaultSoundAliasVolumeFalloffCurveP8SndCurve
	extern _Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve
	extern _Z22Com_LoadSoundAliasFilePKcS0_S0_
	extern _Z14SND_StopSounds20snd_stopsounds_arg_t
	extern _Z17Cmd_RemoveCommandPKc
	extern Hunk_AllocateTempMemory
	extern _Z25GraphGetValueFromFractioniPA2_Kff

;Exports of com_sndalias:
	global g_sa
	global _Z24Com_RefreshSpeakerMaps_fv
	global _ZZ19Com_InitSpeakerMapsvE28Com_RefreshSpeakerMaps_f_VAR
	global _Z19Com_InitSpeakerMapsv
	global _Z30Com_TryFindSoundAlias_FastFilePKc
	global _Z27Com_FindSoundAlias_FastFilePKc
	global _Z35Com_FindSoundAliasNoErrors_FastFilePKc
	global _Z34Com_FindSoundAliasNoErrors_LoadObjPKc
	global _ZZ20Com_LoadSoundAliasesPKcS0_18snd_alias_system_tE19Com_SoundList_f_VAR
	global _Z15Com_SoundList_fv
	global _Z29Com_TryFindSoundAlias_LoadObjPKc
	global _Z26Com_FindSoundAlias_LoadObjPKc
	global _Z19Com_LoadedSoundList18snd_alias_system_t
	global _Z21Com_StreamedSoundList18snd_alias_system_t
	global _Z16Com_AddAliasListPKcP16snd_alias_list_t
	global _Z17Com_GetSpeakerMapP10SpeakerMapi
	global _Z18Com_FindSoundAliasPKc
	global _Z18Com_PickSoundAliasPKc
	global _Z18SND_GetAliasOffsetPK11snd_alias_t
	global _Z19Load_SndAliasCustomPP16snd_alias_list_t
	global _Z20Com_AllocSoundMemoryiPKci
	global _Z20Com_GetSoundFileNamePK11snd_alias_tPci
	global _Z20Com_LoadSoundAliasesPKcS0_18snd_alias_system_t
	global _Z21Com_TryFindSoundAliasPKc
	global _Z22Com_InitSoundAliasHashj
	global _Z22Com_UnloadSoundAliases18snd_alias_system_t
	global _Z22SND_GetAliasWithOffsetPKci
	global _Z26Com_FindSoundAliasNoErrorsPKc
	global _Z26Com_PickSoundAliasFromListP16snd_alias_list_t
	global _Z27Com_AllocateTempSoundMemoryiPKc
	global _Z30Com_GetVolumeFalloffCurveValueP8SndCurvef
	global _Z32Com_AliasNameRefersToSingleAliasPKc
	global _Z32Com_RegisterSoundAliasSpeakerMapPKcS0_
	global _Z34Com_GetDefaultSoundAliasSpeakerMapv
	global _Z40Com_RegisterSoundAliasVolumeFalloffCurvePKcS0_
	global _Z42Com_GetDefaultSoundAliasVolumeFalloffCurvev


SECTION .text


;Com_RefreshSpeakerMaps_f()
_Z24Com_RefreshSpeakerMaps_fv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [g_sa+0xaf4]
	cmp byte [eax], 0x0
	jnz _Z24Com_RefreshSpeakerMaps_fv_10
_Z24Com_RefreshSpeakerMaps_fv_30:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z24Com_RefreshSpeakerMaps_fv_10:
	mov ebx, g_sa
	mov esi, g_sa+0xab0
	jmp _Z24Com_RefreshSpeakerMaps_fv_20
_Z24Com_RefreshSpeakerMaps_fv_40:
	add esi, 0x1d8
	mov eax, [ebx+0xccc]
	add ebx, 0x1d8
	cmp byte [eax], 0x0
	jz _Z24Com_RefreshSpeakerMaps_fv_30
_Z24Com_RefreshSpeakerMaps_fv_20:
	mov [esp+0x4], esi
	mov [esp], eax
	call _Z19Com_LoadSpkrMapFilePKcP14SpeakerMapInfo
	test al, al
	jnz _Z24Com_RefreshSpeakerMaps_fv_40
	mov eax, [ebx+0xaf4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_failed_to_load_s
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z24Com_RefreshSpeakerMaps_fv_40


;Com_InitSpeakerMaps()
_Z19Com_InitSpeakerMapsv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov dword [esp], g_sa+0x8d8
	call _Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo
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
	jg _Z19Com_InitSpeakerMapsv_10
_Z19Com_InitSpeakerMapsv_70:
	mov dword [ebp-0x6c], 0x0
	mov esi, g_sa+0x8d8
	mov ebx, [ebp-0x70]
_Z19Com_InitSpeakerMapsv_40:
	mov eax, [ebp-0x6c]
	cmp eax, [ebp-0x1c]
	jge _Z19Com_InitSpeakerMapsv_20
_Z19Com_InitSpeakerMapsv_50:
	mov edx, [ebx]
	cld
	mov ecx, 0xffffffff
	mov edi, edx
	xor eax, eax
	repne scasb
	not ecx
	lea edi, [ecx-0x9]
	cmp edi, 0x3f
	jg _Z19Com_InitSpeakerMapsv_30
_Z19Com_InitSpeakerMapsv_60:
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
	call _Z19Com_LoadSpkrMapFilePKcP14SpeakerMapInfo
	test al, al
	jnz _Z19Com_InitSpeakerMapsv_40
	mov eax, [ebx-0x4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_failed_to_load_s
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov eax, [ebp-0x6c]
	cmp eax, [ebp-0x1c]
	jl _Z19Com_InitSpeakerMapsv_50
_Z19Com_InitSpeakerMapsv_20:
	mov dword [esp+0x4], 0xa
	mov eax, [ebp-0x70]
	mov [esp], eax
	call FS_FreeFileList
	mov dword [esp+0x8], _ZZ19Com_InitSpeakerMapsvE28Com_RefreshSpeakerMaps_f_VAR
	mov dword [esp+0x4], _Z24Com_RefreshSpeakerMaps_fv
	mov dword [esp], _cstring_snd_refreshspeak
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov byte [g_sa+0x8d4], 0x1
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19Com_InitSpeakerMapsv_30:
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_speaker_map_s_na
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z19Com_InitSpeakerMapsv_60
_Z19Com_InitSpeakerMapsv_10:
	mov dword [esp+0xc], 0xf
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_snd_alias_curve_
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z19Com_InitSpeakerMapsv_70
	nop


;Com_TryFindSoundAlias_FastFile(char const*)
_Z30Com_TryFindSoundAlias_FastFilePKc:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov [esp+0x4], esi
	mov dword [esp], 0x7
	call _Z19DB_FindXAssetHeader10XAssetTypePKc
	mov ebx, eax
	mov [esp+0x4], esi
	mov dword [esp], 0x7
	call _Z18DB_IsXAssetDefault10XAssetTypePKc
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
_Z27Com_FindSoundAlias_FastFilePKc:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov [esp+0x4], ebx
	mov dword [esp], 0x7
	call _Z19DB_FindXAssetHeader10XAssetTypePKc
	mov esi, eax
	mov [esp+0x4], ebx
	mov dword [esp], 0x7
	call _Z18DB_IsXAssetDefault10XAssetTypePKc
	test al, al
	jnz _Z27Com_FindSoundAlias_FastFilePKc_10
_Z27Com_FindSoundAlias_FastFilePKc_20:
	mov eax, esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z27Com_FindSoundAlias_FastFilePKc_10:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_missing_soundali
	mov dword [esp], 0xa
	call _Z14Com_PrintErroriPKcz
	xor esi, esi
	jmp _Z27Com_FindSoundAlias_FastFilePKc_20


;Com_FindSoundAliasNoErrors_FastFile(char const*)
_Z35Com_FindSoundAliasNoErrors_FastFilePKc:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov [esp+0x4], esi
	mov dword [esp], 0x7
	call _Z19DB_FindXAssetHeader10XAssetTypePKc
	mov ebx, eax
	mov [esp+0x4], esi
	mov dword [esp], 0x7
	call _Z18DB_IsXAssetDefault10XAssetTypePKc
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
_Z34Com_FindSoundAliasNoErrors_LoadObjPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	movzx eax, byte [edi]
	test al, al
	jnz _Z34Com_FindSoundAliasNoErrors_LoadObjPKc_10
	xor ebx, ebx
_Z34Com_FindSoundAliasNoErrors_LoadObjPKc_60:
	mov eax, ebx
	xor edx, edx
	div dword [g_sa+0xc]
	mov ebx, edx
	lea esi, [edx*4]
	mov eax, [g_sa+0x10]
	mov eax, [eax+esi]
	test eax, eax
	jz _Z34Com_FindSoundAliasNoErrors_LoadObjPKc_20
_Z34Com_FindSoundAliasNoErrors_LoadObjPKc_40:
	mov eax, [eax]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z34Com_FindSoundAliasNoErrors_LoadObjPKc_30
	lea eax, [ebx+0x1]
	xor edx, edx
	div dword [g_sa+0xc]
	mov ebx, edx
	lea esi, [edx*4]
	mov eax, [g_sa+0x10]
	mov eax, [eax+esi]
	test eax, eax
	jnz _Z34Com_FindSoundAliasNoErrors_LoadObjPKc_40
_Z34Com_FindSoundAliasNoErrors_LoadObjPKc_20:
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z34Com_FindSoundAliasNoErrors_LoadObjPKc_10:
	mov esi, edi
	xor ebx, ebx
_Z34Com_FindSoundAliasNoErrors_LoadObjPKc_50:
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
	jnz _Z34Com_FindSoundAliasNoErrors_LoadObjPKc_50
	jmp _Z34Com_FindSoundAliasNoErrors_LoadObjPKc_60
_Z34Com_FindSoundAliasNoErrors_LoadObjPKc_30:
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
_Z15Com_SoundList_fv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], _cstring_________________
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	xor eax, eax
	call _Z21Com_StreamedSoundList18snd_alias_system_t
	mov dword [esp+0x4], _cstring_________________1
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov eax, 0x1
	call _Z21Com_StreamedSoundList18snd_alias_system_t
	mov dword [esp+0x4], _cstring_________________2
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	xor eax, eax
	call _Z19Com_LoadedSoundList18snd_alias_system_t
	mov dword [esp+0x4], _cstring_________________3
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov eax, 0x1
	call _Z19Com_LoadedSoundList18snd_alias_system_t
	mov dword [esp+0x4], _cstring_
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	leave
	ret


;Com_TryFindSoundAlias_LoadObj(char const*)
_Z29Com_TryFindSoundAlias_LoadObjPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	movzx eax, byte [edi]
	test al, al
	jnz _Z29Com_TryFindSoundAlias_LoadObjPKc_10
	xor ebx, ebx
_Z29Com_TryFindSoundAlias_LoadObjPKc_60:
	mov eax, ebx
	xor edx, edx
	div dword [g_sa+0xc]
	mov ebx, edx
	lea esi, [edx*4]
	mov eax, [g_sa+0x10]
	mov eax, [eax+esi]
	test eax, eax
	jz _Z29Com_TryFindSoundAlias_LoadObjPKc_20
_Z29Com_TryFindSoundAlias_LoadObjPKc_40:
	mov eax, [eax]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z29Com_TryFindSoundAlias_LoadObjPKc_30
	lea eax, [ebx+0x1]
	xor edx, edx
	div dword [g_sa+0xc]
	mov ebx, edx
	lea esi, [edx*4]
	mov eax, [g_sa+0x10]
	mov eax, [eax+esi]
	test eax, eax
	jnz _Z29Com_TryFindSoundAlias_LoadObjPKc_40
_Z29Com_TryFindSoundAlias_LoadObjPKc_20:
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z29Com_TryFindSoundAlias_LoadObjPKc_10:
	mov esi, edi
	xor ebx, ebx
_Z29Com_TryFindSoundAlias_LoadObjPKc_50:
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
	jnz _Z29Com_TryFindSoundAlias_LoadObjPKc_50
	jmp _Z29Com_TryFindSoundAlias_LoadObjPKc_60
_Z29Com_TryFindSoundAlias_LoadObjPKc_30:
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
_Z26Com_FindSoundAlias_LoadObjPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	movzx eax, byte [edi]
	test al, al
	jnz _Z26Com_FindSoundAlias_LoadObjPKc_10
	xor ebx, ebx
_Z26Com_FindSoundAlias_LoadObjPKc_60:
	mov eax, ebx
	jmp _Z26Com_FindSoundAlias_LoadObjPKc_20
_Z26Com_FindSoundAlias_LoadObjPKc_40:
	mov eax, [eax]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z26Com_FindSoundAlias_LoadObjPKc_30
	lea eax, [ebx+0x1]
_Z26Com_FindSoundAlias_LoadObjPKc_20:
	xor edx, edx
	div dword [g_sa+0xc]
	mov ebx, edx
	lea esi, [edx*4]
	mov eax, [g_sa+0x10]
	mov eax, [eax+esi]
	test eax, eax
	jnz _Z26Com_FindSoundAlias_LoadObjPKc_40
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_missing_soundali
	mov dword [esp], 0xa
	call _Z14Com_PrintErroriPKcz
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26Com_FindSoundAlias_LoadObjPKc_30:
	mov eax, [g_sa+0x10]
	mov eax, [eax+esi]
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26Com_FindSoundAlias_LoadObjPKc_10:
	mov esi, edi
	xor ebx, ebx
_Z26Com_FindSoundAlias_LoadObjPKc_50:
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
	jnz _Z26Com_FindSoundAlias_LoadObjPKc_50
	jmp _Z26Com_FindSoundAlias_LoadObjPKc_60


;Com_LoadedSoundList(snd_alias_system_t)
_Z19Com_LoadedSoundList18snd_alias_system_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xbc
	cmp byte [eax+g_sa], 0x0
	jz _Z19Com_LoadedSoundList18snd_alias_system_t_10
	lea eax, [eax+eax*2]
	shl eax, 0x2
	mov edx, [eax+g_sa+0x18]
	mov [ebp-0xa0], edx
	mov ebx, [eax+g_sa+0x1c]
	pxor xmm0, xmm0
	test ebx, ebx
	jle _Z19Com_LoadedSoundList18snd_alias_system_t_20
	mov ebx, edx
	xor esi, esi
	mov dword [ebp-0x9c], 0x0
	mov [ebp-0xa4], eax
	jmp _Z19Com_LoadedSoundList18snd_alias_system_t_30
_Z19Com_LoadedSoundList18snd_alias_system_t_50:
	add esi, 0x1
	add ebx, 0x5c
	mov eax, [ebp-0xa4]
	cmp [eax+g_sa+0x1c], esi
	jle _Z19Com_LoadedSoundList18snd_alias_system_t_40
_Z19Com_LoadedSoundList18snd_alias_system_t_30:
	mov eax, [ebx+0x30]
	and eax, 0xc0
	cmp eax, 0x40
	jnz _Z19Com_LoadedSoundList18snd_alias_system_t_50
	test esi, esi
	jle _Z19Com_LoadedSoundList18snd_alias_system_t_60
	mov edx, [ebp-0xa0]
	xor ecx, ecx
	jmp _Z19Com_LoadedSoundList18snd_alias_system_t_70
_Z19Com_LoadedSoundList18snd_alias_system_t_80:
	add ecx, 0x1
	add edx, 0x5c
	cmp esi, ecx
	jz _Z19Com_LoadedSoundList18snd_alias_system_t_60
_Z19Com_LoadedSoundList18snd_alias_system_t_70:
	mov eax, [edx+0x30]
	and eax, 0xc0
	cmp eax, 0x40
	jnz _Z19Com_LoadedSoundList18snd_alias_system_t_80
	mov eax, [edx+0x10]
	cmp eax, [ebx+0x10]
	jz _Z19Com_LoadedSoundList18snd_alias_system_t_50
	add ecx, 0x1
	add edx, 0x5c
	cmp esi, ecx
	jnz _Z19Com_LoadedSoundList18snd_alias_system_t_70
_Z19Com_LoadedSoundList18snd_alias_system_t_60:
	lea edi, [ebx+0x10]
	mov eax, [ebx+0x10]
	cmp byte [eax], 0x1
	jz _Z19Com_LoadedSoundList18snd_alias_system_t_90
	mov dword [esp+0x8], 0x80
	lea edx, [ebp-0x98]
	mov [esp+0x4], edx
	add eax, 0x4
	mov [esp], eax
	call _Z21StreamFileNameGetNamePK14StreamFileNamePci
_Z19Com_LoadedSoundList18snd_alias_system_t_110:
	mov eax, [edi]
	cmp byte [eax+0x1], 0x0
	jz _Z19Com_LoadedSoundList18snd_alias_system_t_100
	mov eax, [eax+0x4]
	add eax, 0x4
	mov [esp], eax
	call _Z20SND_GetSoundFileSizePKv
	add [ebp-0x9c], eax
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_00097656]
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	lea eax, [ebp-0x98]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_64s_71f_kb
	mov dword [esp], 0x9
	call _Z10Com_PrintfiPKcz
	add esi, 0x1
	add ebx, 0x5c
	mov eax, [ebp-0xa4]
	cmp [eax+g_sa+0x1c], esi
	jg _Z19Com_LoadedSoundList18snd_alias_system_t_30
_Z19Com_LoadedSoundList18snd_alias_system_t_40:
	cvtsi2ss xmm0, dword [ebp-0x9c]
_Z19Com_LoadedSoundList18snd_alias_system_t_20:
	mulss xmm0, [_float_0_00000095]
	cvtss2sd xmm0, xmm0
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_total_usage_73f_
	mov dword [esp], 0x9
	call _Z10Com_PrintfiPKcz
_Z19Com_LoadedSoundList18snd_alias_system_t_10:
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19Com_LoadedSoundList18snd_alias_system_t_100:
	lea edx, [ebp-0x98]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_64s_failed_to_lo
	mov dword [esp], 0x9
	call _Z10Com_PrintfiPKcz
	jmp _Z19Com_LoadedSoundList18snd_alias_system_t_50
_Z19Com_LoadedSoundList18snd_alias_system_t_90:
	mov dword [esp+0x8], 0x80
	mov eax, [eax+0x4]
	mov eax, [eax]
	mov [esp+0x4], eax
	lea eax, [ebp-0x98]
	mov [esp], eax
	call _Z10I_strncpyzPcPKci
	jmp _Z19Com_LoadedSoundList18snd_alias_system_t_110
	nop


;Com_StreamedSoundList(snd_alias_system_t)
_Z21Com_StreamedSoundList18snd_alias_system_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	cmp byte [eax+g_sa], 0x0
	jz _Z21Com_StreamedSoundList18snd_alias_system_t_10
	lea eax, [eax+eax*2]
	shl eax, 0x2
	mov edx, [eax+g_sa+0x18]
	mov [ebp-0xa0], edx
	mov esi, [eax+g_sa+0x1c]
	test esi, esi
	jle _Z21Com_StreamedSoundList18snd_alias_system_t_10
	mov ebx, edx
	xor esi, esi
	mov [ebp-0xa4], eax
	jmp _Z21Com_StreamedSoundList18snd_alias_system_t_20
_Z21Com_StreamedSoundList18snd_alias_system_t_30:
	add esi, 0x1
	add ebx, 0x5c
	mov eax, [ebp-0xa4]
	cmp esi, [eax+g_sa+0x1c]
	jge _Z21Com_StreamedSoundList18snd_alias_system_t_10
_Z21Com_StreamedSoundList18snd_alias_system_t_20:
	mov eax, [ebx+0x30]
	and eax, 0xc0
	add eax, 0xffffff80
	jnz _Z21Com_StreamedSoundList18snd_alias_system_t_30
	test esi, esi
	jle _Z21Com_StreamedSoundList18snd_alias_system_t_40
	mov edx, [ebp-0xa0]
	xor ecx, ecx
	jmp _Z21Com_StreamedSoundList18snd_alias_system_t_50
_Z21Com_StreamedSoundList18snd_alias_system_t_60:
	add ecx, 0x1
	add edx, 0x5c
	cmp esi, ecx
	jz _Z21Com_StreamedSoundList18snd_alias_system_t_40
_Z21Com_StreamedSoundList18snd_alias_system_t_50:
	mov eax, [edx+0x30]
	and eax, 0xc0
	add eax, 0xffffff80
	jnz _Z21Com_StreamedSoundList18snd_alias_system_t_60
	mov eax, [edx+0x10]
	cmp eax, [ebx+0x10]
	jz _Z21Com_StreamedSoundList18snd_alias_system_t_30
	add ecx, 0x1
	add edx, 0x5c
	cmp esi, ecx
	jnz _Z21Com_StreamedSoundList18snd_alias_system_t_50
_Z21Com_StreamedSoundList18snd_alias_system_t_40:
	lea eax, [ebx+0x10]
	mov [ebp-0x9c], eax
	mov eax, [ebx+0x10]
	cmp byte [eax], 0x1
	jz _Z21Com_StreamedSoundList18snd_alias_system_t_70
	mov dword [esp+0x8], 0x80
	lea edi, [ebp-0x98]
	mov [esp+0x4], edi
	add eax, 0x4
	mov [esp], eax
	call _Z21StreamFileNameGetNamePK14StreamFileNamePci
_Z21Com_StreamedSoundList18snd_alias_system_t_90:
	mov edx, [ebp-0x9c]
	mov eax, [edx]
	cmp byte [eax+0x1], 0x0
	jz _Z21Com_StreamedSoundList18snd_alias_system_t_80
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_64s
	mov dword [esp], 0x9
	call _Z10Com_PrintfiPKcz
	add esi, 0x1
	add ebx, 0x5c
	mov eax, [ebp-0xa4]
	cmp esi, [eax+g_sa+0x1c]
	jl _Z21Com_StreamedSoundList18snd_alias_system_t_20
_Z21Com_StreamedSoundList18snd_alias_system_t_10:
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21Com_StreamedSoundList18snd_alias_system_t_80:
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_64s_file_not_fou
	mov dword [esp], 0x9
	call _Z10Com_PrintfiPKcz
	jmp _Z21Com_StreamedSoundList18snd_alias_system_t_30
_Z21Com_StreamedSoundList18snd_alias_system_t_70:
	mov dword [esp+0x8], 0x80
	mov eax, [eax+0x4]
	mov eax, [eax]
	mov [esp+0x4], eax
	lea edi, [ebp-0x98]
	mov [esp], edi
	call _Z10I_strncpyzPcPKci
	jmp _Z21Com_StreamedSoundList18snd_alias_system_t_90
	nop


;Com_AddAliasList(char const*, snd_alias_list_t*)
_Z16Com_AddAliasListPKcP16snd_alias_list_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	movzx eax, byte [edi]
	test al, al
	jnz _Z16Com_AddAliasListPKcP16snd_alias_list_t_10
	xor ebx, ebx
_Z16Com_AddAliasListPKcP16snd_alias_list_t_60:
	mov eax, ebx
	xor edx, edx
	div dword [g_sa+0xc]
	mov ebx, edx
	lea ecx, [edx*4]
	mov edx, [g_sa+0x10]
	mov eax, [edx+ecx]
	test eax, eax
	jz _Z16Com_AddAliasListPKcP16snd_alias_list_t_20
_Z16Com_AddAliasListPKcP16snd_alias_list_t_40:
	mov eax, [eax]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z16Com_AddAliasListPKcP16snd_alias_list_t_30
	lea eax, [ebx+0x1]
	xor edx, edx
	div dword [g_sa+0xc]
	mov ebx, edx
	lea ecx, [edx*4]
	mov edx, [g_sa+0x10]
	mov eax, [edx+ecx]
	test eax, eax
	jnz _Z16Com_AddAliasListPKcP16snd_alias_list_t_40
_Z16Com_AddAliasListPKcP16snd_alias_list_t_20:
	add dword [g_sa+0x8], 0x1
	mov eax, [ebp+0xc]
	mov [ecx+edx], eax
	mov eax, 0x1
_Z16Com_AddAliasListPKcP16snd_alias_list_t_30:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16Com_AddAliasListPKcP16snd_alias_list_t_10:
	mov esi, edi
	xor ebx, ebx
_Z16Com_AddAliasListPKcP16snd_alias_list_t_50:
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
	jnz _Z16Com_AddAliasListPKcP16snd_alias_list_t_50
	jmp _Z16Com_AddAliasListPKcP16snd_alias_list_t_60
	nop


;Com_GetSpeakerMap(SpeakerMap*, int)
_Z17Com_GetSpeakerMapP10SpeakerMapi:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	xor ebx, ebx
	cmp dword [ebp+0xc], 0x2
	setz bl
	call _Z18SND_IsMultiChannelv
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
_Z18Com_FindSoundAliasPKc:
	push ebp
	mov ebp, esp
	mov eax, useFastFile
	mov eax, [eax]
	mov ecx, _Z27Com_FindSoundAlias_FastFilePKc
	cmp byte [eax+0xc], 0x0
	mov eax, _Z26Com_FindSoundAlias_LoadObjPKc
	cmovz ecx, eax
	pop ebp
	jmp ecx


;Com_PickSoundAlias(char const*)
_Z18Com_PickSoundAliasPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, useFastFile
	mov eax, [eax]
	mov edx, _Z27Com_FindSoundAlias_FastFilePKc
	cmp byte [eax+0xc], 0x0
	mov eax, _Z26Com_FindSoundAlias_LoadObjPKc
	cmovz edx, eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call edx
	mov [ebp-0x24], eax
	test eax, eax
	jz _Z18Com_PickSoundAliasPKc_10
	mov edi, [eax+0x8]
	test edi, edi
	jz _Z18Com_PickSoundAliasPKc_20
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
	jz _Z18Com_PickSoundAliasPKc_30
_Z18Com_PickSoundAliasPKc_50:
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
	jle _Z18Com_PickSoundAliasPKc_40
	mov edi, eax
_Z18Com_PickSoundAliasPKc_40:
	add ecx, 0x5c
	add esi, 0x1
	mov edx, [ebp-0x24]
	mov eax, [edx+0x8]
	cmp eax, esi
	jnz _Z18Com_PickSoundAliasPKc_50
_Z18Com_PickSoundAliasPKc_30:
	cmp esi, 0x2
	jg _Z18Com_PickSoundAliasPKc_60
_Z18Com_PickSoundAliasPKc_80:
	mov edx, [ebp-0x20]
_Z18Com_PickSoundAliasPKc_70:
	lea eax, [edi+0x1]
	mov [edx+0x14], eax
	mov eax, [ebp-0x20]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18Com_PickSoundAliasPKc_60:
	mov edx, [ebp-0x20]
	mov ebx, [edx+0x14]
	cmp ebx, edi
	jnz _Z18Com_PickSoundAliasPKc_70
	test eax, eax
	jle _Z18Com_PickSoundAliasPKc_80
	pxor xmm2, xmm2
	xor ecx, ecx
_Z18Com_PickSoundAliasPKc_100:
	mov eax, [ebp-0x1c]
	cmp ebx, [eax+0x14]
	jz _Z18Com_PickSoundAliasPKc_90
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
_Z18Com_PickSoundAliasPKc_90:
	add dword [ebp-0x1c], 0x5c
	add ecx, 0x1
	mov eax, [ebp-0x24]
	cmp [eax+0x8], ecx
	jg _Z18Com_PickSoundAliasPKc_100
	jmp _Z18Com_PickSoundAliasPKc_80
_Z18Com_PickSoundAliasPKc_20:
	mov eax, [eax]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_sound_not_loaded
	mov dword [esp], 0x9
	call _Z16Com_PrintWarningiPKcz
_Z18Com_PickSoundAliasPKc_10:
	mov dword [ebp-0x20], 0x0
	mov eax, [ebp-0x20]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;SND_GetAliasOffset(snd_alias_t const*)
_Z18SND_GetAliasOffsetPK11snd_alias_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov ecx, [ebx]
	mov eax, useFastFile
	mov eax, [eax]
	mov edx, _Z27Com_FindSoundAlias_FastFilePKc
	cmp byte [eax+0xc], 0x0
	mov eax, _Z26Com_FindSoundAlias_LoadObjPKc
	cmovz edx, eax
	mov [esp], ecx
	call edx
	mov edx, [eax+0x4]
	mov ecx, [eax+0x8]
	test ecx, ecx
	jle _Z18SND_GetAliasOffsetPK11snd_alias_t_10
	cmp ebx, edx
	jz _Z18SND_GetAliasOffsetPK11snd_alias_t_10
	xor eax, eax
_Z18SND_GetAliasOffsetPK11snd_alias_t_20:
	add edx, 0x5c
	add eax, 0x1
	cmp ecx, eax
	jz _Z18SND_GetAliasOffsetPK11snd_alias_t_10
	cmp ebx, edx
	jnz _Z18SND_GetAliasOffsetPK11snd_alias_t_20
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z18SND_GetAliasOffsetPK11snd_alias_t_10:
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;Load_SndAliasCustom(snd_alias_list_t**)
_Z19Load_SndAliasCustomPP16snd_alias_list_t:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov eax, [esi]
	test eax, eax
	jz _Z19Load_SndAliasCustomPP16snd_alias_list_t_10
	mov ebx, varXStringPtr
	mov [ebx], esi
	mov dword [esp], 0x0
	call _Z15Load_XStringPtrh
	mov eax, [ebx]
	mov eax, [eax]
	mov eax, [eax]
	mov [esp+0x4], eax
	mov dword [esp], 0x7
	call _Z19DB_FindXAssetHeader10XAssetTypePKc
	mov [esi], eax
_Z19Load_SndAliasCustomPP16snd_alias_list_t_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;Com_AllocSoundMemory(int, char const*, int)
_Z20Com_AllocSoundMemoryiPKci:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z18Hunk_AllocInternali
	nop


;Com_GetSoundFileName(snd_alias_t const*, char*, int)
_Z20Com_GetSoundFileNamePK11snd_alias_tPci:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0xc]
	mov edx, [ebp+0x10]
	mov eax, [ebp+0x8]
	mov eax, [eax+0x10]
	cmp byte [eax], 0x1
	jz _Z20Com_GetSoundFileNamePK11snd_alias_tPci_10
	mov [ebp+0x10], edx
	mov [ebp+0xc], ecx
	add eax, 0x4
	mov [ebp+0x8], eax
	pop ebp
	jmp _Z21StreamFileNameGetNamePK14StreamFileNamePci
_Z20Com_GetSoundFileNamePK11snd_alias_tPci_10:
	mov eax, [eax+0x4]
	mov eax, [eax]
	mov [ebp+0xc], eax
	mov [ebp+0x8], ecx
	pop ebp
	jmp _Z10I_strncpyzPcPKci
	nop


;Com_LoadSoundAliases(char const*, char const*, snd_alias_system_t)
_Z20Com_LoadSoundAliasesPKcS0_18snd_alias_system_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	cmp byte [g_sa+0x50], 0x0
	jz _Z20Com_LoadSoundAliasesPKcS0_18snd_alias_system_t_10
_Z20Com_LoadSoundAliasesPKcS0_18snd_alias_system_t_180:
	cmp byte [g_sa+0x8d4], 0x0
	jz _Z20Com_LoadSoundAliasesPKcS0_18snd_alias_system_t_20
_Z20Com_LoadSoundAliasesPKcS0_18snd_alias_system_t_130:
	mov dword [esp+0x8], 0x8
	mov dword [esp+0x4], _cstring_mapsmp
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z10I_strnicmpPKcS0_i
	test eax, eax
	jnz _Z20Com_LoadSoundAliasesPKcS0_18snd_alias_system_t_30
	lea edx, [ebp-0x60]
	mov [esp+0x4], edx
	mov eax, [ebp+0x8]
	add eax, 0x8
	mov [esp], eax
	call _Z18Com_StripExtensionPKcPc
_Z20Com_LoadSoundAliasesPKcS0_18snd_alias_system_t_120:
	lea eax, [ebp-0x60]
	mov [esp], eax
	call _Z8I_strlwrPc
	cmp dword [ebp+0x10], 0x1
	jz _Z20Com_LoadSoundAliasesPKcS0_18snd_alias_system_t_40
_Z20Com_LoadSoundAliasesPKcS0_18snd_alias_system_t_100:
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
	jz _Z20Com_LoadSoundAliasesPKcS0_18snd_alias_system_t_50
	call Hunk_HideTempMemory
	mov edi, eax
	call _Z18Com_InitSoundAliasv
	call _Z19Com_InitEntChannelsv
	mov ebx, [ebp-0x1c]
	test ebx, ebx
	jg _Z20Com_LoadSoundAliasesPKcS0_18snd_alias_system_t_60
_Z20Com_LoadSoundAliasesPKcS0_18snd_alias_system_t_200:
	mov edx, [ebp+0x10]
	lea eax, [edx*8+g_sa+0x38]
	mov [esp+0x4], eax
	lea eax, [edx+edx*2]
	lea eax, [eax*4+g_sa+0x14]
	mov [esp], eax
	call _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo
	call Hunk_ClearTempMemory
	mov [esp], edi
	call Hunk_ShowTempMemory
	mov dword [esp+0x4], 0xa
	mov [esp], esi
	call FS_FreeFileList
	cmp dword [ebp+0x10], 0x1
	jbe _Z20Com_LoadSoundAliasesPKcS0_18snd_alias_system_t_70
_Z20Com_LoadSoundAliasesPKcS0_18snd_alias_system_t_110:
	mov edi, [ebp+0x10]
	mov byte [edi+g_sa], 0x1
	cmp edi, 0x1
	ja _Z20Com_LoadSoundAliasesPKcS0_18snd_alias_system_t_80
	lea eax, [edi*8+g_sa+0x38]
	mov [esp], eax
	call _Z24Com_LoadSoundAliasSoundsP13SoundFileInfo
	mov edx, eax
	test eax, eax
	jz _Z20Com_LoadSoundAliasesPKcS0_18snd_alias_system_t_80
	mov eax, snd_errorOnMissing
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z20Com_LoadSoundAliasesPKcS0_18snd_alias_system_t_80
	mov [esp+0x4], edx
	mov dword [esp], _cstring_i_sound_files_ar
	call _Z2vaPKcz
	cmp edi, 0x1
	sbb edx, edx
	add edx, 0x2
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z20Com_LoadSoundAliasesPKcS0_18snd_alias_system_t_80
_Z20Com_LoadSoundAliasesPKcS0_18snd_alias_system_t_30:
	mov dword [esp+0x8], 0x5
	mov dword [esp+0x4], _cstring_maps
	mov edi, [ebp+0x8]
	mov [esp], edi
	call _Z10I_strnicmpPKcS0_i
	test eax, eax
	jz _Z20Com_LoadSoundAliasesPKcS0_18snd_alias_system_t_90
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	lea edi, [ebp-0x60]
	mov [esp], edi
	call strcpy
	lea eax, [ebp-0x60]
	mov [esp], eax
	call _Z8I_strlwrPc
	cmp dword [ebp+0x10], 0x1
	jnz _Z20Com_LoadSoundAliasesPKcS0_18snd_alias_system_t_100
_Z20Com_LoadSoundAliasesPKcS0_18snd_alias_system_t_40:
	mov eax, com_sv_running
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z20Com_LoadSoundAliasesPKcS0_18snd_alias_system_t_100
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
_Z20Com_LoadSoundAliasesPKcS0_18snd_alias_system_t_70:
	cmp word [g_sa], 0x0
	jnz _Z20Com_LoadSoundAliasesPKcS0_18snd_alias_system_t_110
	mov dword [esp+0x8], _ZZ20Com_LoadSoundAliasesPKcS0_18snd_alias_system_tE19Com_SoundList_f_VAR
	mov dword [esp+0x4], _Z15Com_SoundList_fv
	mov dword [esp], _cstring_snd_list
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	jmp _Z20Com_LoadSoundAliasesPKcS0_18snd_alias_system_t_110
_Z20Com_LoadSoundAliasesPKcS0_18snd_alias_system_t_50:
	mov dword [esp+0x4], _cstring_warning_cant_fin
	mov dword [esp], 0x9
	call _Z16Com_PrintWarningiPKcz
_Z20Com_LoadSoundAliasesPKcS0_18snd_alias_system_t_80:
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20Com_LoadSoundAliasesPKcS0_18snd_alias_system_t_90:
	lea eax, [ebp-0x60]
	mov [esp+0x4], eax
	mov eax, edi
	add eax, 0x5
	mov [esp], eax
	call _Z18Com_StripExtensionPKcPc
	jmp _Z20Com_LoadSoundAliasesPKcS0_18snd_alias_system_t_120
_Z20Com_LoadSoundAliasesPKcS0_18snd_alias_system_t_20:
	call _Z19Com_InitSpeakerMapsv
	jmp _Z20Com_LoadSoundAliasesPKcS0_18snd_alias_system_t_130
_Z20Com_LoadSoundAliasesPKcS0_18snd_alias_system_t_10:
	mov dword [esp+0x8], 0x480
	mov dword [esp+0x4], 0x0
	mov dword [esp], g_sa+0x54
	call memset
	mov dword [esp], g_sa+0x54
	call _Z43Com_InitDefaultSoundAliasVolumeFalloffCurveP8SndCurve
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
	jg _Z20Com_LoadSoundAliasesPKcS0_18snd_alias_system_t_140
_Z20Com_LoadSoundAliasesPKcS0_18snd_alias_system_t_210:
	mov dword [ebp-0x6c], 0x0
	mov dword [ebp-0x74], g_sa+0x54
	mov ebx, [ebp-0x70]
	mov esi, g_sa+0x4d4
_Z20Com_LoadSoundAliasesPKcS0_18snd_alias_system_t_160:
	mov edx, [ebp-0x6c]
	cmp edx, [ebp-0x20]
	jge _Z20Com_LoadSoundAliasesPKcS0_18snd_alias_system_t_150
_Z20Com_LoadSoundAliasesPKcS0_18snd_alias_system_t_170:
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
	call _Z10I_strncpyzPcPKci
	mov eax, [ebp-0x74]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve
	test al, al
	jnz _Z20Com_LoadSoundAliasesPKcS0_18snd_alias_system_t_160
	mov eax, [ebx-0x4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_failed_to_load_s1
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	mov edx, [ebp-0x6c]
	cmp edx, [ebp-0x20]
	jl _Z20Com_LoadSoundAliasesPKcS0_18snd_alias_system_t_170
_Z20Com_LoadSoundAliasesPKcS0_18snd_alias_system_t_150:
	mov dword [esp+0x4], 0xa
	mov edi, [ebp-0x70]
	mov [esp], edi
	call FS_FreeFileList
	mov byte [g_sa+0x50], 0x1
	jmp _Z20Com_LoadSoundAliasesPKcS0_18snd_alias_system_t_180
_Z20Com_LoadSoundAliasesPKcS0_18snd_alias_system_t_60:
	xor ebx, ebx
_Z20Com_LoadSoundAliasesPKcS0_18snd_alias_system_t_190:
	mov eax, [esi+ebx*4]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	lea eax, [ebp-0x60]
	mov [esp], eax
	call _Z22Com_LoadSoundAliasFilePKcS0_S0_
	add ebx, 0x1
	cmp ebx, [ebp-0x1c]
	jl _Z20Com_LoadSoundAliasesPKcS0_18snd_alias_system_t_190
	jmp _Z20Com_LoadSoundAliasesPKcS0_18snd_alias_system_t_200
_Z20Com_LoadSoundAliasesPKcS0_18snd_alias_system_t_140:
	mov dword [esp+0xc], 0xf
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_snd_alias_curve_
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z20Com_LoadSoundAliasesPKcS0_18snd_alias_system_t_210


;Com_TryFindSoundAlias(char const*)
_Z21Com_TryFindSoundAliasPKc:
	push ebp
	mov ebp, esp
	mov eax, useFastFile
	mov eax, [eax]
	mov ecx, _Z30Com_TryFindSoundAlias_FastFilePKc
	cmp byte [eax+0xc], 0x0
	mov eax, _Z29Com_TryFindSoundAlias_LoadObjPKc
	cmovz ecx, eax
	pop ebp
	jmp ecx


;Com_InitSoundAliasHash(unsigned int)
_Z22Com_InitSoundAliasHashj:
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
	call _Z18Hunk_AllocInternali
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
_Z22Com_UnloadSoundAliases18snd_alias_system_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	cmp byte [edi+g_sa], 0x0
	jz _Z22Com_UnloadSoundAliases18snd_alias_system_t_10
	cmp edi, 0x2
	jz _Z22Com_UnloadSoundAliases18snd_alias_system_t_20
	mov dword [esp], 0x0
	call _Z14SND_StopSounds20snd_stopsounds_arg_t
	lea eax, [edi+edi*2]
	shl eax, 0x2
	mov edx, [eax+g_sa+0x18]
	mov [ebp-0x1c], edx
	mov ecx, [eax+g_sa+0x1c]
	test ecx, ecx
	jle _Z22Com_UnloadSoundAliases18snd_alias_system_t_20
	mov esi, edx
	mov dword [ebp-0x20], 0x0
	mov [ebp-0x24], eax
	jmp _Z22Com_UnloadSoundAliases18snd_alias_system_t_30
_Z22Com_UnloadSoundAliases18snd_alias_system_t_40:
	add dword [ebp-0x20], 0x1
	add esi, 0x5c
	mov edx, [ebp-0x20]
	mov eax, [ebp-0x24]
	cmp [eax+g_sa+0x1c], edx
	jle _Z22Com_UnloadSoundAliases18snd_alias_system_t_20
_Z22Com_UnloadSoundAliases18snd_alias_system_t_30:
	mov eax, [esi+0x30]
	and eax, 0xc0
	cmp eax, 0x40
	jnz _Z22Com_UnloadSoundAliases18snd_alias_system_t_40
	mov eax, [ebp-0x20]
	test eax, eax
	jle _Z22Com_UnloadSoundAliases18snd_alias_system_t_50
	mov ebx, [esi+0x10]
	mov edx, [ebp-0x1c]
	xor ecx, ecx
	jmp _Z22Com_UnloadSoundAliases18snd_alias_system_t_60
_Z22Com_UnloadSoundAliases18snd_alias_system_t_80:
	add ecx, 0x1
	add edx, 0x5c
	cmp [ebp-0x20], ecx
	jz _Z22Com_UnloadSoundAliases18snd_alias_system_t_70
_Z22Com_UnloadSoundAliases18snd_alias_system_t_60:
	cmp [edx+0x10], ebx
	jnz _Z22Com_UnloadSoundAliases18snd_alias_system_t_80
	mov eax, [edx+0x30]
	and eax, 0xc0
	cmp eax, 0x40
	jnz _Z22Com_UnloadSoundAliases18snd_alias_system_t_80
_Z22Com_UnloadSoundAliases18snd_alias_system_t_70:
	mov byte [ebx+0x1], 0x0
_Z22Com_UnloadSoundAliases18snd_alias_system_t_110:
	add dword [ebp-0x20], 0x1
	add esi, 0x5c
	mov edx, [ebp-0x20]
	mov eax, [ebp-0x24]
	cmp [eax+g_sa+0x1c], edx
	jg _Z22Com_UnloadSoundAliases18snd_alias_system_t_30
_Z22Com_UnloadSoundAliases18snd_alias_system_t_20:
	lea eax, [edi+edi*2]
	shl eax, 0x2
	mov ebx, [eax+g_sa+0x18]
	test ebx, ebx
	jz _Z22Com_UnloadSoundAliases18snd_alias_system_t_90
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
_Z22Com_UnloadSoundAliases18snd_alias_system_t_90:
	mov byte [edi+g_sa], 0x0
	cmp edi, 0x1
	jbe _Z22Com_UnloadSoundAliases18snd_alias_system_t_100
_Z22Com_UnloadSoundAliases18snd_alias_system_t_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22Com_UnloadSoundAliases18snd_alias_system_t_100:
	cmp word [g_sa], 0x0
	jnz _Z22Com_UnloadSoundAliases18snd_alias_system_t_10
	mov dword [ebp+0x8], _cstring_snd_list
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z17Cmd_RemoveCommandPKc
_Z22Com_UnloadSoundAliases18snd_alias_system_t_50:
	mov ebx, [esi+0x10]
	mov byte [ebx+0x1], 0x0
	jmp _Z22Com_UnloadSoundAliases18snd_alias_system_t_110


;SND_GetAliasWithOffset(char const*, int)
_Z22SND_GetAliasWithOffsetPKci:
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
	mov edx, _Z27Com_FindSoundAlias_FastFilePKc
	cmp byte [eax+0xc], 0x0
	mov eax, _Z26Com_FindSoundAlias_LoadObjPKc
	cmovz edx, eax
	mov [esp], edi
	call edx
	test eax, eax
	jz _Z22SND_GetAliasWithOffsetPKci_10
	mov ebx, [eax+0x4]
	mov ecx, [eax+0x8]
	cmp ecx, 0x0
	jle _Z22SND_GetAliasWithOffsetPKci_20
	test esi, esi
	jz _Z22SND_GetAliasWithOffsetPKci_30
	mov eax, ebx
	xor edx, edx
_Z22SND_GetAliasWithOffsetPKci_40:
	add eax, 0x5c
	add edx, 0x1
	cmp ecx, edx
	jz _Z22SND_GetAliasWithOffsetPKci_30
	cmp esi, edx
	jnz _Z22SND_GetAliasWithOffsetPKci_40
	mov ebx, eax
	mov eax, ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22SND_GetAliasWithOffsetPKci_20:
	jnz _Z22SND_GetAliasWithOffsetPKci_30
_Z22SND_GetAliasWithOffsetPKci_10:
	mov [esp+0xc], esi
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_snd_getaliaswith
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	xor ebx, ebx
_Z22SND_GetAliasWithOffsetPKci_30:
	mov eax, ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Com_FindSoundAliasNoErrors(char const*)
_Z26Com_FindSoundAliasNoErrorsPKc:
	push ebp
	mov ebp, esp
	mov eax, useFastFile
	mov eax, [eax]
	mov ecx, _Z35Com_FindSoundAliasNoErrors_FastFilePKc
	cmp byte [eax+0xc], 0x0
	mov eax, _Z34Com_FindSoundAliasNoErrors_LoadObjPKc
	cmovz ecx, eax
	pop ebp
	jmp ecx


;Com_PickSoundAliasFromList(snd_alias_list_t*)
_Z26Com_PickSoundAliasFromListP16snd_alias_list_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ecx, [ebp+0x8]
	test ecx, ecx
	jz _Z26Com_PickSoundAliasFromListP16snd_alias_list_t_10
	mov eax, [ebp+0x8]
	mov edx, [eax+0x8]
	test edx, edx
	jz _Z26Com_PickSoundAliasFromListP16snd_alias_list_t_20
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
	jz _Z26Com_PickSoundAliasFromListP16snd_alias_list_t_30
_Z26Com_PickSoundAliasFromListP16snd_alias_list_t_50:
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
	jle _Z26Com_PickSoundAliasFromListP16snd_alias_list_t_40
	mov edi, eax
_Z26Com_PickSoundAliasFromListP16snd_alias_list_t_40:
	add ecx, 0x5c
	add esi, 0x1
	mov edx, [ebp+0x8]
	mov eax, [edx+0x8]
	cmp eax, esi
	jnz _Z26Com_PickSoundAliasFromListP16snd_alias_list_t_50
_Z26Com_PickSoundAliasFromListP16snd_alias_list_t_30:
	cmp esi, 0x2
	jg _Z26Com_PickSoundAliasFromListP16snd_alias_list_t_60
_Z26Com_PickSoundAliasFromListP16snd_alias_list_t_80:
	mov edx, [ebp-0x1c]
_Z26Com_PickSoundAliasFromListP16snd_alias_list_t_70:
	lea eax, [edi+0x1]
	mov [edx+0x14], eax
	mov eax, [ebp-0x1c]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26Com_PickSoundAliasFromListP16snd_alias_list_t_60:
	mov edx, [ebp-0x1c]
	mov esi, [edx+0x14]
	cmp esi, edi
	jnz _Z26Com_PickSoundAliasFromListP16snd_alias_list_t_70
	test eax, eax
	jle _Z26Com_PickSoundAliasFromListP16snd_alias_list_t_80
	mov ecx, [ebp-0x20]
	pxor xmm2, xmm2
	xor ebx, ebx
_Z26Com_PickSoundAliasFromListP16snd_alias_list_t_100:
	cmp esi, [ecx+0x14]
	jz _Z26Com_PickSoundAliasFromListP16snd_alias_list_t_90
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
_Z26Com_PickSoundAliasFromListP16snd_alias_list_t_90:
	add ecx, 0x5c
	add ebx, 0x1
	mov edx, [ebp+0x8]
	cmp [edx+0x8], ebx
	jg _Z26Com_PickSoundAliasFromListP16snd_alias_list_t_100
	jmp _Z26Com_PickSoundAliasFromListP16snd_alias_list_t_80
_Z26Com_PickSoundAliasFromListP16snd_alias_list_t_20:
	mov eax, [eax]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_sound_not_loaded
	mov dword [esp], 0x9
	call _Z16Com_PrintWarningiPKcz
_Z26Com_PickSoundAliasFromListP16snd_alias_list_t_10:
	mov dword [ebp-0x1c], 0x0
	mov eax, [ebp-0x1c]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Com_AllocateTempSoundMemory(int, char const*)
_Z27Com_AllocateTempSoundMemoryiPKc:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Hunk_AllocateTempMemory
	nop


;Com_GetVolumeFalloffCurveValue(SndCurve*, float)
_Z30Com_GetVolumeFalloffCurveValueP8SndCurvef:
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
	call _Z25GraphGetValueFromFractioniPA2_Kff
	leave
	ret


;Com_AliasNameRefersToSingleAlias(char const*)
_Z32Com_AliasNameRefersToSingleAliasPKc:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, useFastFile
	mov eax, [eax]
	mov edx, _Z27Com_FindSoundAlias_FastFilePKc
	cmp byte [eax+0xc], 0x0
	mov eax, _Z26Com_FindSoundAlias_LoadObjPKc
	cmovz edx, eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call edx
	test eax, eax
	jz _Z32Com_AliasNameRefersToSingleAliasPKc_10
	cmp dword [eax+0x8], 0x1
	jz _Z32Com_AliasNameRefersToSingleAliasPKc_20
_Z32Com_AliasNameRefersToSingleAliasPKc_10:
	xor eax, eax
	leave
	ret
_Z32Com_AliasNameRefersToSingleAliasPKc_20:
	mov eax, 0x1
	leave
	ret
	nop


;Com_RegisterSoundAliasSpeakerMap(char const*, char const*)
_Z32Com_RegisterSoundAliasSpeakerMapPKcS0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	xor esi, esi
	mov ebx, g_sa
	mov edi, g_sa+0x918
_Z32Com_RegisterSoundAliasSpeakerMapPKcS0__20:
	mov eax, [ebx+0x91c]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z32Com_RegisterSoundAliasSpeakerMapPKcS0__10
	add esi, 0x1
	add edi, 0x1d8
	add ebx, 0x1d8
	cmp esi, 0x10
	jnz _Z32Com_RegisterSoundAliasSpeakerMapPKcS0__20
	mov eax, [ebp+0x8]
	mov [esp+0xc], eax
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_sound_alias_file
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z32Com_RegisterSoundAliasSpeakerMapPKcS0__10:
	mov eax, edi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Com_GetDefaultSoundAliasSpeakerMap()
_Z34Com_GetDefaultSoundAliasSpeakerMapv:
	push ebp
	mov ebp, esp
	mov eax, g_sa+0x918
	pop ebp
	ret


;Com_RegisterSoundAliasVolumeFalloffCurve(char const*, char const*)
_Z40Com_RegisterSoundAliasVolumeFalloffCurvePKcS0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	xor esi, esi
	mov ebx, g_sa
	mov edi, g_sa+0x54
_Z40Com_RegisterSoundAliasVolumeFalloffCurvePKcS0__30:
	mov eax, [ebx+0x54]
	test eax, eax
	jz _Z40Com_RegisterSoundAliasVolumeFalloffCurvePKcS0__10
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z40Com_RegisterSoundAliasVolumeFalloffCurvePKcS0__20
_Z40Com_RegisterSoundAliasVolumeFalloffCurvePKcS0__10:
	add esi, 0x1
	add edi, 0x48
	add ebx, 0x48
	cmp esi, 0x10
	jnz _Z40Com_RegisterSoundAliasVolumeFalloffCurvePKcS0__30
	mov eax, [ebp+0x8]
	mov [esp+0xc], eax
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_sound_alias_file1
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z40Com_RegisterSoundAliasVolumeFalloffCurvePKcS0__20:
	mov eax, edi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Com_GetDefaultSoundAliasVolumeFalloffCurve()
_Z42Com_GetDefaultSoundAliasVolumeFalloffCurvev:
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

