;Imports of com_sndalias_load_obj:
	extern strcpy
	extern _Z42Com_GetDefaultSoundAliasVolumeFalloffCurvev
	extern _Z34Com_GetDefaultSoundAliasSpeakerMapv
	extern tolower
	extern _Z14Com_PrintErroriPKcz
	extern strcmp
	extern _Z9I_stricmpPKcS0_
	extern _Z9Com_ParsePPKc
	extern atof
	extern FS_ReadFile
	extern _Z21Com_BeginParseSessionPKc
	extern _Z15Com_ParseOnLinePPKc
	extern _Z18Com_SkipRestOfLinePPKc
	extern _Z19Com_EndParseSessionv
	extern FS_FreeFile
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z16Com_PrintWarningiPKcz
	extern _Z8FS_WritePKvii
	extern __maskrune
	extern atoi
	extern _Z40Com_RegisterSoundAliasVolumeFalloffCurvePKcS0_
	extern strstr
	extern _Z32Com_RegisterSoundAliasSpeakerMapPKcS0_
	extern Hunk_AllocateTempMemory
	extern memcpy
	extern sprintf
	extern _Z10Com_SetCSVi
	extern _Z11Com_sprintfPciPKcz
	extern _Z18FS_FOpenFileByModePKcPi8fsMode_t
	extern _Z7FS_ReadPvii
	extern _Z13FS_FCloseFilei
	extern memset
	extern _Z16FS_FOpenFileReadPKcPi
	extern _Z27Com_AllocateTempSoundMemoryiPKc
	extern _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	extern snd_touchStreamFilesOnLoad
	extern fs_copyfiles
	extern _Z12FS_TouchFilePKc
	extern _Z22Com_InitSoundAliasHashj
	extern _Z20Com_AllocSoundMemoryiPKci
	extern _Z16Com_AddAliasListPKcP16snd_alias_list_t
	extern _Z24Com_GetFilenameSubStringPKc
	extern _Z8I_strlwrPc
	extern _Z17SND_LoadSoundFilePKc
	extern fs_homepath
	extern _Z14FS_BuildOSPathPKcS0_S0_Pc
	extern fopen
	extern fclose
	extern fs_gamedir
	extern fs_basepath
	extern _Z11FS_CopyFilePcS_
	extern _Z13FS_FileExistsPKc
	extern _Z10Com_PrintfiPKcz
	extern FS_ListFiles
	extern Hunk_HideTempMemory
	extern Hunk_ShowTempMemory
	extern FS_FreeFileList
	extern FS_FileOpenReadBinary
	extern FS_FileGetFileSize
	extern malloc
	extern FS_FileRead
	extern FS_FileClose
	extern FS_FileOpenWriteBinary
	extern FS_FileWrite
	extern free
	extern _Z9FS_RemovePKc
	extern Hunk_ClearTempMemory
	extern _Z17FS_FOpenFileWritePKc
	extern _Z9I_strncmpPKcS0_i
	extern strchr
	extern _Z2vaPKcz
	extern _Z8I_struprPc
	extern _Z14Com_UngetTokenv

;Exports of com_sndalias_load_obj:
	global g_pszSndAliasKeyNames
	global saLoadObjGlob
	global g_spkrMapParseBuffer
	global sa_spkrMapIdentifierValues
	global sa_spkrMapIdentifierStrings
	global _Z26Com_LoadSoundAliasDefaultsP17snd_alias_build_sPKcS2_
	global _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0_
	global _Z28Com_RefreshVolumeModGroups_fv
	global _Z16AliasNameCompareP17snd_alias_build_sS0_
	global _Z26Com_SortTempSoundAliases_rP17snd_alias_build_sPiPFiS0_S0_Eh
	global _Z19FileNameTypeCompareP17snd_alias_build_sS0_
	global _Z24Com_ParseChannelMapEntryPKcP13MSSChannelMap21SA_SPKRMAPIDENTIFIERSS3_
	global _ZZ32Com_GetSubtitleStringEdReferencePKcE11szReference
	global _Z32Com_GetSubtitleStringEdReferencePKc
	global _Z32Com_WriteStringEdReferenceToFilePKcS0_i
	global _Z20Com_IsValidAliasNamePKc
	global _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s
	global _ZZ22Com_LoadSoundAliasFilePKcS0_S0_E32Com_RefreshVolumeModGroups_f_VAR
	global _Z18Com_InitSoundAliasv
	global _Z19Com_InitEntChannelsv
	global _Z19Com_LoadSpkrMapFilePKcP14SpeakerMapInfo
	global _Z22Com_LoadSoundAliasFilePKcS0_S0_
	global _Z24Com_LoadSoundAliasSoundsP13SoundFileInfo
	global _Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve
	global _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo
	global _Z33Com_WriteLocalizedSoundAliasFilesv
	global _Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo
	global _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0_
	global _Z43Com_InitDefaultSoundAliasVolumeFalloffCurveP8SndCurve


SECTION .text


;Com_LoadSoundAliasDefaults(snd_alias_build_s*, char const*, char const*)
_Z26Com_LoadSoundAliasDefaultsP17snd_alias_build_sPKcS2_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov ebx, eax
	mov esi, ecx
	mov [esp+0x4], edx
	mov [esp], eax
	call strcpy
	mov byte [ebx+0x40], 0x0
	mov byte [ebx+0x80], 0x0
	mov byte [ebx+0xc0], 0x0
	mov dword [ebx+0x104], 0x0
	mov byte [ebx+0x108], 0x0
	mov dword [ebx+0x100], 0x0
	mov dword [ebx+0x14c], 0x3f800000
	mov dword [ebx+0x150], 0x3f800000
	mov dword [ebx+0x154], 0x3f800000
	mov dword [ebx+0x158], 0x3f800000
	mov dword [ebx+0x15c], 0x3f800000
	mov dword [ebx+0x160], 0x42f00000
	xor eax, eax
	mov [ebx+0x164], eax
	mov dword [ebx+0x168], 0x0
	mov dword [ebx+0x16c], 0x1
	mov byte [ebx+0x18c], 0x0
	mov byte [ebx+0x191], 0x0
	mov dword [ebx+0x17c], 0x3f800000
	mov [ebx+0x180], eax
	mov [ebx+0x184], eax
	mov byte [ebx+0x192], 0x0
	mov [ebp-0x4c], esi
	mov dword [ebp-0x1c], _cstring_menu
	mov dword [ebp-0x30], 0x5
	cld
	mov edi, _cstring_menu
	mov ecx, 0x5
	repe cmpsb
	mov eax, 0x0
	jz _Z26Com_LoadSoundAliasDefaultsP17snd_alias_build_sPKcS2__10
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_Z26Com_LoadSoundAliasDefaultsP17snd_alias_build_sPKcS2__10:
	test eax, eax
	setnz byte [ebx+0x193]
	mov byte [ebx+0x18d], 0x0
	mov byte [ebx+0x18e], 0x0
	mov byte [ebx+0x18f], 0x0
	mov byte [ebx+0x190], 0x0
	mov dword [ebx+0x178], 0x3f800000
	mov dword [ebx+0x188], 0x0
	call _Z42Com_GetDefaultSoundAliasVolumeFalloffCurvev
	mov [ebx+0x170], eax
	call _Z34Com_GetDefaultSoundAliasSpeakerMapv
	mov [ebx+0x174], eax
	mov dword [ebx+0x198], 0x0
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Com_SoundAliasLoadSpec(char const*, char const*, char const*, char const*)
_Z22Com_SoundAliasLoadSpecPKcS0_S0_S0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x14c
	mov [ebp-0x124], eax
	mov [ebp-0x128], edx
	mov [ebp-0x12c], ecx
	cmp byte [ecx], 0x21
	jz _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__10
	mov [ebp-0x13c], ecx
	mov byte [ebp-0x120], 0x1
	mov edi, [ebp-0x128]
	cmp byte [edi], 0x21
	jz _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__20
_Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__340:
	mov byte [ebp-0x11f], 0x1
_Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__350:
	mov byte [ebp-0x11e], 0x0
	mov byte [ebp-0x11d], 0x0
	mov byte [ebp-0x11c], 0x0
	mov byte [ebp-0x11b], 0x0
	mov byte [ebp-0x11a], 0x0
	mov byte [ebp-0x119], 0x0
	mov eax, [ebp-0x13c]
	movzx ebx, byte [eax]
_Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__170:
	cmp bl, 0x20
	jz _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__30
_Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__160:
	test bl, bl
	jz _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__40
	cmp bl, 0x21
	jz _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__50
_Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__120:
	test bl, bl
	jz _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__60
	xor esi, esi
	jmp _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__70
_Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__100:
	mov edx, [ebp-0x13c]
	movsx eax, byte [edx]
	mov [esp], eax
	call tolower
	mov [esi+ebp-0x118], al
	add esi, 0x1
	cmp esi, 0x100
	jz _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__80
_Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__110:
	add dword [ebp-0x13c], 0x1
	mov edx, [ebp-0x13c]
	movzx ebx, byte [edx]
	cmp bl, 0x20
	jz _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__90
	test bl, bl
	jz _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__90
_Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__70:
	cmp bl, 0x21
	jnz _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__100
	mov edi, [ebp-0x12c]
	mov [esp+0xc], edi
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_sound_alia
	mov dword [esp], 0x9
	call _Z14Com_PrintErroriPKcz
	mov edx, [ebp-0x13c]
	movsx eax, byte [edx]
	mov [esp], eax
	call tolower
	mov [esi+ebp-0x118], al
	add esi, 0x1
	cmp esi, 0x100
	jnz _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__110
_Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__80:
	mov edi, [ebp-0x12c]
	mov [esp+0xc], edi
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_sound_alia1
	mov dword [esp], 0x9
	call _Z14Com_PrintErroriPKcz
	jmp _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__110
_Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__50:
	mov edi, [ebp-0x12c]
	mov [esp+0xc], edi
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_sound_alia
	mov dword [esp], 0x9
	call _Z14Com_PrintErroriPKcz
	mov edx, [ebp-0x13c]
	movzx ebx, byte [edx]
	cmp bl, 0x20
	jnz _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__120
_Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__60:
	xor esi, esi
_Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__90:
	mov byte [ebp+esi-0x118], 0x0
	mov dword [ebp-0x130], _cstring_all_sp
	mov ecx, 0x7
	cld
	lea esi, [ebp-0x118]
	mov edi, _cstring_all_sp
	repe cmpsb
	mov edx, 0x0
	jz _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__130
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__130:
	test edx, edx
	jnz _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__140
	mov eax, [ebp-0x128]
	mov [esp+0x4], eax
	lea edx, [ebp-0x118]
	mov [esp], edx
	call strcmp
	test eax, eax
	jnz _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__150
	mov byte [ebp-0x11d], 0x1
	mov byte [ebp-0x119], 0x1
	cmp bl, 0x20
	jnz _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__160
_Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__30:
	add dword [ebp-0x13c], 0x1
	mov edx, [ebp-0x13c]
	movzx ebx, byte [edx]
	jmp _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__170
_Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__140:
	mov dword [ebp-0x134], _cstring_all_mp
	mov ecx, 0x7
	cld
	lea esi, [ebp-0x118]
	mov edi, _cstring_all_mp
	repe cmpsb
	mov edx, 0x0
	jz _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__180
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__180:
	test edx, edx
	jnz _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__190
	mov eax, [ebp-0x128]
	mov [esp+0x4], eax
	lea edx, [ebp-0x118]
	mov [esp], edx
	call strcmp
	test eax, eax
	jnz _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__200
	mov byte [ebp-0x11c], 0x1
	mov byte [ebp-0x119], 0x1
	jmp _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__170
_Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__150:
	mov byte [ebp-0x11d], 0x1
	jmp _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__170
_Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__190:
	mov dword [ebp-0x138], _cstring_menu
	mov ecx, 0x5
	cld
	lea esi, [ebp-0x118]
	mov edi, _cstring_menu
	repe cmpsb
	mov edx, 0x0
	jz _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__210
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__210:
	test edx, edx
	jnz _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__220
	mov byte [ebp-0x11b], 0x1
_Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__230:
	mov eax, [ebp-0x124]
	mov [esp+0x4], eax
	lea edx, [ebp-0x118]
	mov [esp], edx
	call strcmp
	test eax, eax
	jnz _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__170
	mov byte [ebp-0x11a], 0x1
	jmp _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__170
_Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__200:
	mov byte [ebp-0x11c], 0x1
	jmp _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__170
_Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__220:
	mov byte [ebp-0x11e], 0x1
	jmp _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__230
_Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__40:
	cmp byte [ebp-0x11d], 0x0
	jz _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__240
	cmp byte [ebp-0x11c], 0x0
	jnz _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__250
_Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__240:
	cmp byte [ebp-0x11b], 0x0
	jz _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__260
	cmp byte [ebp-0x11d], 0x0
	jnz _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__270
	cmp byte [ebp-0x11c], 0x0
	jz _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__280
_Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__270:
	mov edx, [ebp-0x12c]
	mov [esp+0xc], edx
	mov edi, [ebp+0x8]
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_error_sound_alia2
	mov dword [esp], 0x9
	call _Z14Com_PrintErroriPKcz
_Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__360:
	cmp byte [ebp-0x11a], 0x0
	jnz _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__290
	mov eax, [ebp-0x124]
	cmp byte [eax], 0x0
	jnz _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__300
_Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__290:
	movzx eax, byte [ebp-0x120]
_Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__390:
	add esp, 0x14c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__260:
	cmp byte [ebp-0x11a], 0x0
	jnz _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__290
	cmp byte [ebp-0x119], 0x0
	jnz _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__310
	cmp byte [ebp-0x11e], 0x0
	jz _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__320
	mov edx, [ebp-0x124]
	cmp byte [edx], 0x0
	jnz _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__330
_Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__380:
	xor eax, eax
	add esp, 0x14c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__10:
	mov edx, ecx
	add edx, 0x1
	mov [ebp-0x13c], edx
	mov byte [ebp-0x120], 0x0
	mov edi, [ebp-0x128]
	cmp byte [edi], 0x21
	jnz _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__340
_Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__20:
	add dword [ebp-0x128], 0x1
	mov byte [ebp-0x11f], 0x0
	jmp _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__350
_Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__280:
	cmp byte [ebp-0x11e], 0x0
	jz _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__360
	jmp _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__270
_Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__250:
	mov edi, [ebp-0x12c]
	mov [esp+0xc], edi
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_sound_alia3
	mov dword [esp], 0x9
	call _Z14Com_PrintErroriPKcz
	jmp _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__240
_Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__330:
	mov edi, _cstring_menu
	mov ecx, 0x5
	cld
	mov esi, edx
	repe cmpsb
	mov edx, 0x0
	jz _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__370
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__370:
	test edx, edx
	jz _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__380
_Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__300:
	xor byte [ebp-0x120], 0x1
	jmp _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__290
_Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__310:
	cmp byte [ebp-0x11f], 0x0
	jz _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__380
	cmp byte [ebp-0x120], 0x0
	jz _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__380
_Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__410:
	mov eax, 0x1
	jmp _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__390
_Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__320:
	cmp byte [ebp-0x11f], 0x0
	jz _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__380
	cmp byte [ebp-0x120], 0x0
	jz _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__400
	cmp byte [ebp-0x11d], 0x0
	jnz _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__380
	cmp byte [ebp-0x11c], 0x0
	jnz _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__380
	mov eax, 0x1
	jmp _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__390
_Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__400:
	cmp byte [ebp-0x11d], 0x0
	jnz _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__410
	cmp byte [ebp-0x11c], 0x0
	jz _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__380
	mov eax, 0x1
	jmp _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0__390
	nop


;Com_RefreshVolumeModGroups_f()
_Z28Com_RefreshVolumeModGroups_fv:
	push ebp
	mov ebp, esp
	mov byte [saLoadObjGlob+0x888], 0x0
	pop ebp
	ret


;AliasNameCompare(snd_alias_build_s*, snd_alias_build_s*)
_Z16AliasNameCompareP17snd_alias_build_sS0_:
	push ebp
	mov ebp, esp
	add dword [ebp+0xc], 0x40
	mov eax, [ebp+0x8]
	add eax, 0x40
	mov [ebp+0x8], eax
	pop ebp
	jmp _Z9I_stricmpPKcS0_


;Com_SortTempSoundAliases_r(snd_alias_build_s*, int*, int (*)(snd_alias_build_s*, snd_alias_build_s*), unsigned char)
_Z26Com_SortTempSoundAliases_rP17snd_alias_build_sPiPFiS0_S0_Eh:
_Z26Com_SortTempSoundAliases_rP17snd_alias_build_sPiPFiS0_S0_Eh_30:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov [ebp-0x2c], eax
	mov [ebp-0x30], edx
	mov [ebp-0x34], ecx
	movzx eax, byte [ebp+0x8]
	mov [ebp-0x35], al
	mov ecx, [edx]
	cmp ecx, 0x1
	jz _Z26Com_SortTempSoundAliases_rP17snd_alias_build_sPiPFiS0_S0_Eh_10
	mov eax, ecx
	shr eax, 0x1f
	add eax, ecx
	sar eax, 1
	mov [ebp-0x1c], eax
	sub ecx, eax
	mov [ebp-0x20], ecx
	mov edi, [ebp-0x2c]
	test eax, eax
	jg _Z26Com_SortTempSoundAliases_rP17snd_alias_build_sPiPFiS0_S0_Eh_20
	mov esi, edi
_Z26Com_SortTempSoundAliases_rP17snd_alias_build_sPiPFiS0_S0_Eh_150:
	movzx ebx, byte [ebp-0x35]
	lea edx, [ebp-0x1c]
	mov [esp], ebx
	mov ecx, [ebp-0x34]
	mov eax, edi
	call _Z26Com_SortTempSoundAliases_rP17snd_alias_build_sPiPFiS0_S0_Eh_30
	mov edi, eax
	lea edx, [ebp-0x20]
	mov [esp], ebx
	mov ecx, [ebp-0x34]
	mov eax, esi
	call _Z26Com_SortTempSoundAliases_rP17snd_alias_build_sPiPFiS0_S0_Eh_30
	mov ebx, eax
	mov edx, [ebp-0x30]
	mov dword [edx], 0x0
	mov dword [ebp-0x2c], 0x0
	lea esi, [ebp-0x2c]
	mov edx, [ebp-0x1c]
_Z26Com_SortTempSoundAliases_rP17snd_alias_build_sPiPFiS0_S0_Eh_180:
	cmp byte [ebp-0x35], 0x0
	jnz _Z26Com_SortTempSoundAliases_rP17snd_alias_build_sPiPFiS0_S0_Eh_40
	jmp _Z26Com_SortTempSoundAliases_rP17snd_alias_build_sPiPFiS0_S0_Eh_50
_Z26Com_SortTempSoundAliases_rP17snd_alias_build_sPiPFiS0_S0_Eh_80:
	mov [esi], ebx
	mov ebx, [ebx+0x198]
	sub dword [ebp-0x20], 0x1
	mov edx, [ebp-0x1c]
_Z26Com_SortTempSoundAliases_rP17snd_alias_build_sPiPFiS0_S0_Eh_90:
	mov eax, [ebp-0x30]
	add dword [eax], 0x1
	mov esi, [esi]
	add esi, 0x198
_Z26Com_SortTempSoundAliases_rP17snd_alias_build_sPiPFiS0_S0_Eh_50:
	test edx, edx
	jz _Z26Com_SortTempSoundAliases_rP17snd_alias_build_sPiPFiS0_S0_Eh_60
	mov eax, [ebp-0x20]
	test eax, eax
	jz _Z26Com_SortTempSoundAliases_rP17snd_alias_build_sPiPFiS0_S0_Eh_70
	mov [esp+0x4], ebx
	mov [esp], edi
	call dword [ebp-0x34]
	test eax, eax
	jg _Z26Com_SortTempSoundAliases_rP17snd_alias_build_sPiPFiS0_S0_Eh_80
	mov [esi], edi
	mov edi, [edi+0x198]
	mov edx, [ebp-0x1c]
	sub edx, 0x1
	mov [ebp-0x1c], edx
	jmp _Z26Com_SortTempSoundAliases_rP17snd_alias_build_sPiPFiS0_S0_Eh_90
_Z26Com_SortTempSoundAliases_rP17snd_alias_build_sPiPFiS0_S0_Eh_120:
	mov [esi], ebx
	mov ebx, [ebx+0x198]
	sub dword [ebp-0x20], 0x1
	mov edx, [ebp-0x1c]
_Z26Com_SortTempSoundAliases_rP17snd_alias_build_sPiPFiS0_S0_Eh_130:
	mov eax, [ebp-0x30]
	add dword [eax], 0x1
	mov esi, [esi]
	add esi, 0x198
_Z26Com_SortTempSoundAliases_rP17snd_alias_build_sPiPFiS0_S0_Eh_40:
	test edx, edx
	jz _Z26Com_SortTempSoundAliases_rP17snd_alias_build_sPiPFiS0_S0_Eh_60
	mov ecx, [ebp-0x20]
	test ecx, ecx
	jz _Z26Com_SortTempSoundAliases_rP17snd_alias_build_sPiPFiS0_S0_Eh_70
	mov [esp+0x4], ebx
	mov [esp], edi
	call dword [ebp-0x34]
	test eax, eax
	jnz _Z26Com_SortTempSoundAliases_rP17snd_alias_build_sPiPFiS0_S0_Eh_100
	mov eax, [edi+0x104]
	sub eax, [ebx+0x104]
	jz _Z26Com_SortTempSoundAliases_rP17snd_alias_build_sPiPFiS0_S0_Eh_110
_Z26Com_SortTempSoundAliases_rP17snd_alias_build_sPiPFiS0_S0_Eh_100:
	test eax, eax
	jg _Z26Com_SortTempSoundAliases_rP17snd_alias_build_sPiPFiS0_S0_Eh_120
	mov [esi], edi
	mov edi, [edi+0x198]
	mov edx, [ebp-0x1c]
	sub edx, 0x1
	mov [ebp-0x1c], edx
	jmp _Z26Com_SortTempSoundAliases_rP17snd_alias_build_sPiPFiS0_S0_Eh_130
_Z26Com_SortTempSoundAliases_rP17snd_alias_build_sPiPFiS0_S0_Eh_20:
	mov esi, edi
	xor edx, edx
_Z26Com_SortTempSoundAliases_rP17snd_alias_build_sPiPFiS0_S0_Eh_140:
	add edx, 0x1
	mov esi, [esi+0x198]
	cmp eax, edx
	jnz _Z26Com_SortTempSoundAliases_rP17snd_alias_build_sPiPFiS0_S0_Eh_140
	jmp _Z26Com_SortTempSoundAliases_rP17snd_alias_build_sPiPFiS0_S0_Eh_150
_Z26Com_SortTempSoundAliases_rP17snd_alias_build_sPiPFiS0_S0_Eh_110:
	mov [esp+0x4], ebx
	mov [esp], edi
	call _Z9I_stricmpPKcS0_
	cmp eax, 0x0
	jz _Z26Com_SortTempSoundAliases_rP17snd_alias_build_sPiPFiS0_S0_Eh_160
	jl _Z26Com_SortTempSoundAliases_rP17snd_alias_build_sPiPFiS0_S0_Eh_170
	mov ebx, [ebx+0x198]
	sub dword [ebp-0x20], 0x1
	mov edx, [ebp-0x1c]
	jmp _Z26Com_SortTempSoundAliases_rP17snd_alias_build_sPiPFiS0_S0_Eh_180
_Z26Com_SortTempSoundAliases_rP17snd_alias_build_sPiPFiS0_S0_Eh_60:
	mov [esi], ebx
	mov edx, [ebp-0x30]
	mov eax, [edx]
	add eax, [ebp-0x20]
	mov [edx], eax
_Z26Com_SortTempSoundAliases_rP17snd_alias_build_sPiPFiS0_S0_Eh_190:
	mov eax, [ebp-0x2c]
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26Com_SortTempSoundAliases_rP17snd_alias_build_sPiPFiS0_S0_Eh_70:
	mov [esi], edi
	mov eax, [ebp-0x30]
	add [eax], edx
	jmp _Z26Com_SortTempSoundAliases_rP17snd_alias_build_sPiPFiS0_S0_Eh_190
_Z26Com_SortTempSoundAliases_rP17snd_alias_build_sPiPFiS0_S0_Eh_10:
	mov eax, [ebp-0x2c]
	mov dword [eax+0x198], 0x0
	mov eax, [ebp-0x2c]
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26Com_SortTempSoundAliases_rP17snd_alias_build_sPiPFiS0_S0_Eh_160:
	lea eax, [edi+0x40]
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_error_sound_alia4
	mov dword [esp], 0x9
	call _Z14Com_PrintErroriPKcz
	mov edi, [edi+0x198]
	mov edx, [ebp-0x1c]
	sub edx, 0x1
	mov [ebp-0x1c], edx
	mov ebx, [ebx+0x198]
	sub dword [ebp-0x20], 0x1
	jmp _Z26Com_SortTempSoundAliases_rP17snd_alias_build_sPiPFiS0_S0_Eh_180
_Z26Com_SortTempSoundAliases_rP17snd_alias_build_sPiPFiS0_S0_Eh_170:
	mov edi, [edi+0x198]
	mov edx, [ebp-0x1c]
	sub edx, 0x1
	mov [ebp-0x1c], edx
	jmp _Z26Com_SortTempSoundAliases_rP17snd_alias_build_sPiPFiS0_S0_Eh_180


;FileNameTypeCompare(snd_alias_build_s*, snd_alias_build_s*)
_Z19FileNameTypeCompareP17snd_alias_build_sS0_:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	lea eax, [ebx+0x108]
	mov [esp+0x4], eax
	lea eax, [esi+0x108]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z19FileNameTypeCompareP17snd_alias_build_sS0__10
	mov eax, [esi+0x16c]
	sub eax, [ebx+0x16c]
	jz _Z19FileNameTypeCompareP17snd_alias_build_sS0__20
_Z19FileNameTypeCompareP17snd_alias_build_sS0__10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z19FileNameTypeCompareP17snd_alias_build_sS0__20:
	lea eax, [ebx+0x40]
	mov [ebp+0xc], eax
	lea eax, [esi+0x40]
	mov [ebp+0x8], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _Z9I_stricmpPKcS0_


;Com_ParseChannelMapEntry(char const*, MSSChannelMap*, SA_SPKRMAPIDENTIFIERS, SA_SPKRMAPIDENTIFIERS)
_Z24Com_ParseChannelMapEntryPKcP13MSSChannelMap21SA_SPKRMAPIDENTIFIERSS3_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edi, eax
	mov [ebp-0x24], edx
	mov esi, ecx
	mov dword [esp], g_spkrMapParseBuffer
	call _Z9Com_ParsePPKc
	mov ebx, eax
	mov eax, [esi*4+sa_spkrMapIdentifierStrings]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z24Com_ParseChannelMapEntryPKcP13MSSChannelMap21SA_SPKRMAPIDENTIFIERSS3__10
	mov eax, [esi*4+sa_spkrMapIdentifierStrings]
_Z24Com_ParseChannelMapEntryPKcP13MSSChannelMap21SA_SPKRMAPIDENTIFIERSS3__70:
	mov [esp+0x10], eax
	mov [esp+0xc], ebx
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_error_spkrmap_pa
	mov dword [esp], 0x9
	call _Z14Com_PrintErroriPKcz
	xor eax, eax
_Z24Com_ParseChannelMapEntryPKcP13MSSChannelMap21SA_SPKRMAPIDENTIFIERSS3__90:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24Com_ParseChannelMapEntryPKcP13MSSChannelMap21SA_SPKRMAPIDENTIFIERSS3__10:
	mov dword [esp], g_spkrMapParseBuffer
	call _Z9Com_ParsePPKc
	mov ebx, eax
	mov edx, [ebp+0x8]
	mov eax, [edx*4+sa_spkrMapIdentifierStrings]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z24Com_ParseChannelMapEntryPKcP13MSSChannelMap21SA_SPKRMAPIDENTIFIERSS3__20
	mov dword [esp], g_spkrMapParseBuffer
	call _Z9Com_ParsePPKc
	cmp byte [eax], 0x0
	jz _Z24Com_ParseChannelMapEntryPKcP13MSSChannelMap21SA_SPKRMAPIDENTIFIERSS3__30
	mov [esp], eax
	call atof
	fstp qword [ebp-0x20]
	cvtsd2ss xmm0, [ebp-0x20]
	ucomiss xmm0, [_float_0_00000000]
	jp _Z24Com_ParseChannelMapEntryPKcP13MSSChannelMap21SA_SPKRMAPIDENTIFIERSS3__40
	jb _Z24Com_ParseChannelMapEntryPKcP13MSSChannelMap21SA_SPKRMAPIDENTIFIERSS3__50
_Z24Com_ParseChannelMapEntryPKcP13MSSChannelMap21SA_SPKRMAPIDENTIFIERSS3__40:
	ucomiss xmm0, [_float_1_00000000]
	jbe _Z24Com_ParseChannelMapEntryPKcP13MSSChannelMap21SA_SPKRMAPIDENTIFIERSS3__60
_Z24Com_ParseChannelMapEntryPKcP13MSSChannelMap21SA_SPKRMAPIDENTIFIERSS3__50:
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_error_spkrmap_pa1
	mov dword [esp], 0x9
	call _Z14Com_PrintErroriPKcz
	xor eax, eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24Com_ParseChannelMapEntryPKcP13MSSChannelMap21SA_SPKRMAPIDENTIFIERSS3__20:
	mov edx, [ebp+0x8]
	mov eax, [edx*4+sa_spkrMapIdentifierStrings]
	jmp _Z24Com_ParseChannelMapEntryPKcP13MSSChannelMap21SA_SPKRMAPIDENTIFIERSS3__70
_Z24Com_ParseChannelMapEntryPKcP13MSSChannelMap21SA_SPKRMAPIDENTIFIERSS3__30:
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_error_spkrmap_pa2
	mov dword [esp], 0x9
	call _Z14Com_PrintErroriPKcz
	xor eax, eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24Com_ParseChannelMapEntryPKcP13MSSChannelMap21SA_SPKRMAPIDENTIFIERSS3__60:
	mov eax, [ebp+0x8]
	mov edi, [eax*4+sa_spkrMapIdentifierValues]
	mov ecx, [esi*4+sa_spkrMapIdentifierValues]
	mov eax, edi
	shl eax, 0x4
	mov edx, [ebp-0x24]
	add edx, eax
	lea ebx, [edx+0x4]
	cmp ecx, [ebx+0x4]
	jl _Z24Com_ParseChannelMapEntryPKcP13MSSChannelMap21SA_SPKRMAPIDENTIFIERSS3__80
	lea eax, [ecx+0x1]
	mov [ebx+0x4], eax
_Z24Com_ParseChannelMapEntryPKcP13MSSChannelMap21SA_SPKRMAPIDENTIFIERSS3__80:
	movss [ebx+ecx*4+0x8], xmm0
	mov [edx+0x4], edi
	mov eax, 0x1
	jmp _Z24Com_ParseChannelMapEntryPKcP13MSSChannelMap21SA_SPKRMAPIDENTIFIERSS3__90


;Com_GetSubtitleStringEdReference(char const*)
_Z32Com_GetSubtitleStringEdReferencePKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_soundaliasessubt
	call FS_ReadFile
	test eax, eax
	js _Z32Com_GetSubtitleStringEdReferencePKc_10
	mov dword [esp], _cstring_soundaliasessubt
	call _Z21Com_BeginParseSessionPKc
	mov eax, [ebp-0x1c]
	mov [ebp-0x20], eax
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z9Com_ParsePPKc
	mov edi, [ebp-0x20]
	test edi, edi
	jz _Z32Com_GetSubtitleStringEdReferencePKc_20
_Z32Com_GetSubtitleStringEdReferencePKc_90:
	mov edi, _cstring_reference
	mov ecx, 0xa
	cld
	mov esi, eax
	repe cmpsb
	mov edx, 0x0
	jz _Z32Com_GetSubtitleStringEdReferencePKc_30
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z32Com_GetSubtitleStringEdReferencePKc_30:
	test edx, edx
	jnz _Z32Com_GetSubtitleStringEdReferencePKc_40
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z15Com_ParseOnLinePPKc
	mov [esp+0x4], eax
	mov dword [esp], _ZZ32Com_GetSubtitleStringEdReferencePKcE11szReference
	call strcpy
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z18Com_SkipRestOfLinePPKc
_Z32Com_GetSubtitleStringEdReferencePKc_70:
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z9Com_ParsePPKc
	mov ebx, eax
	mov esi, [ebp-0x20]
	test esi, esi
	jz _Z32Com_GetSubtitleStringEdReferencePKc_50
_Z32Com_GetSubtitleStringEdReferencePKc_100:
	mov ecx, 0xd
	cld
	mov esi, ebx
	mov edi, _cstring_lang_english
	repe cmpsb
	mov eax, 0x0
	jz _Z32Com_GetSubtitleStringEdReferencePKc_60
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_Z32Com_GetSubtitleStringEdReferencePKc_60:
	test eax, eax
	jnz _Z32Com_GetSubtitleStringEdReferencePKc_70
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z15Com_ParseOnLinePPKc
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z32Com_GetSubtitleStringEdReferencePKc_80
_Z32Com_GetSubtitleStringEdReferencePKc_40:
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z18Com_SkipRestOfLinePPKc
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z9Com_ParsePPKc
	mov edi, [ebp-0x20]
	test edi, edi
	jnz _Z32Com_GetSubtitleStringEdReferencePKc_90
_Z32Com_GetSubtitleStringEdReferencePKc_20:
	call _Z19Com_EndParseSessionv
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FreeFile
	xor eax, eax
_Z32Com_GetSubtitleStringEdReferencePKc_110:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z32Com_GetSubtitleStringEdReferencePKc_50:
	mov dword [esp+0x8], _cstring_soundaliasessubt
	mov dword [esp+0x4], _cstring_stringed_file_s_
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z32Com_GetSubtitleStringEdReferencePKc_100
_Z32Com_GetSubtitleStringEdReferencePKc_80:
	call _Z19Com_EndParseSessionv
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FreeFile
	mov eax, _ZZ32Com_GetSubtitleStringEdReferencePKcE11szReference
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z32Com_GetSubtitleStringEdReferencePKc_10:
	mov dword [esp+0x8], _cstring_soundaliasessubt
	mov dword [esp+0x4], _cstring_warning_could_no
	mov dword [esp], 0x9
	call _Z16Com_PrintWarningiPKcz
	xor eax, eax
	jmp _Z32Com_GetSubtitleStringEdReferencePKc_110
	nop


;Com_WriteStringEdReferenceToFile(char const*, char const*, int)
_Z32Com_WriteStringEdReferenceToFilePKcS0_i:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov [ebp-0x1c], eax
	mov esi, edx
	mov ebx, ecx
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x14
	mov dword [esp], _cstring_reference_______
	call _Z8FS_WritePKvii
	mov [esp+0x8], ebx
	mov edx, [ebp-0x1c]
	cld
	mov ecx, 0xffffffff
	mov edi, edx
	xor eax, eax
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [esp+0x4], ecx
	mov [esp], edx
	call _Z8FS_WritePKvii
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x17
	mov dword [esp], _cstring_lang_english____
	call _Z8FS_WritePKvii
	mov [esp+0x8], ebx
	mov edi, esi
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [esp+0x4], ecx
	mov [esp], esi
	call _Z8FS_WritePKvii
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x5
	mov dword [esp], _cstring_
	call _Z8FS_WritePKvii
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Com_IsValidAliasName(char const*)
_Z20Com_IsValidAliasNamePKc:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	movzx eax, byte [ebx]
	cmp al, 0x1f
	jle _Z20Com_IsValidAliasNamePKc_10
	movsx edx, al
	test edx, 0xffffff80
	jnz _Z20Com_IsValidAliasNamePKc_20
	mov eax, [0xd5cc084]
	test dword [eax+edx*4+0x34], 0x500
	setnz al
	movzx eax, al
	test eax, eax
	jnz _Z20Com_IsValidAliasNamePKc_30
_Z20Com_IsValidAliasNamePKc_40:
	cmp byte [ebx], 0x5f
	jz _Z20Com_IsValidAliasNamePKc_30
_Z20Com_IsValidAliasNamePKc_10:
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z20Com_IsValidAliasNamePKc_20:
	mov dword [esp+0x4], 0x500
	mov [esp], edx
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	test eax, eax
	jz _Z20Com_IsValidAliasNamePKc_40
_Z20Com_IsValidAliasNamePKc_30:
	lea edx, [ebx+0x1]
	movzx eax, byte [ebx+0x1]
	test al, al
	jz _Z20Com_IsValidAliasNamePKc_50
	cmp al, 0x1f
	jle _Z20Com_IsValidAliasNamePKc_10
	mov ebx, edx
	jmp _Z20Com_IsValidAliasNamePKc_60
_Z20Com_IsValidAliasNamePKc_80:
	mov eax, [0xd5cc084]
	test dword [eax+edx*4+0x34], 0x500
	setnz al
	movzx eax, al
_Z20Com_IsValidAliasNamePKc_90:
	test eax, eax
	jnz _Z20Com_IsValidAliasNamePKc_70
	cmp byte [ebx], 0x5f
	jnz _Z20Com_IsValidAliasNamePKc_10
_Z20Com_IsValidAliasNamePKc_70:
	movzx eax, byte [ebx+0x1]
	test al, al
	jz _Z20Com_IsValidAliasNamePKc_50
	add ebx, 0x1
	cmp al, 0x1f
	jle _Z20Com_IsValidAliasNamePKc_10
_Z20Com_IsValidAliasNamePKc_60:
	movsx edx, al
	test edx, 0xffffff80
	jz _Z20Com_IsValidAliasNamePKc_80
	mov dword [esp+0x4], 0x500
	mov [esp], edx
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	jmp _Z20Com_IsValidAliasNamePKc_90
_Z20Com_IsValidAliasNamePKc_50:
	mov eax, 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;Com_LoadSoundAliasField(char const*, char const*, char const*, char const*, snd_alias_members_t, char*, snd_alias_build_s*)
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x40bc
	mov esi, ecx
	mov edi, [ebp+0xc]
	test edi, edi
	jz _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_10
	mov ebx, [ebp+0x10]
	lea ecx, [edi+ebx]
	cmp byte [ecx], 0x0
	jnz _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_20
	mov byte [ecx], 0x1
	cmp edi, 0x19
	ja _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_10
	jmp dword [edi*4+_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_jumptab_0]
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_500:
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call atof
	fstp qword [ebp-0x4040]
	cvtsd2ss xmm2, [ebp-0x4040]
	pxor xmm3, xmm3
	ucomiss xmm3, xmm2
	ja _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_30
	movss xmm4, dword [_float_1_00000000]
	ucomiss xmm2, xmm4
	jbe _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_40
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_30:
	mov dword [esp+0x20], 0x0
	mov dword [esp+0x24], 0x3ff00000
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x1c], 0x0
	cvtss2sd xmm0, xmm2
	movsd [esp+0x10], xmm0
	mov eax, [g_pszSndAliasKeyNames+0x14]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_error_sound_alia5
	mov dword [esp], 0x9
	movss [ebp-0x4088], xmm2
	movss [ebp-0x4098], xmm3
	call _Z14Com_PrintErroriPKcz
	mov eax, [ebp+0x14]
	mov byte [eax+0x192], 0x1
	movss xmm4, dword [_float_1_00000000]
	movss xmm3, dword [ebp-0x4098]
	movss xmm2, dword [ebp-0x4088]
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_40:
	movaps xmm0, xmm2
	subss xmm0, xmm4
	movaps xmm1, xmm3
	cmpss xmm1, xmm0, 0x6
	movaps xmm0, xmm1
	movaps xmm1, xmm2
	andps xmm1, xmm0
	andnps xmm0, xmm4
	orps xmm0, xmm1
	movaps xmm1, xmm3
	subss xmm1, xmm2
	movaps xmm2, xmm3
	cmpss xmm2, xmm1, 0x6
	movaps xmm1, xmm2
	andps xmm0, xmm2
	andnps xmm1, xmm3
	orps xmm1, xmm0
	mov eax, [ebp+0x14]
	movss [eax+0x14c], xmm1
	mov edx, [ebp+0x10]
	cmp byte [edx+0x6], 0x0
	jnz _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_10
	movss [eax+0x150], xmm1
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_10:
	add esp, 0x40bc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_20:
	mov eax, [edi*4+g_pszSndAliasKeyNames]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_error_sound_alia6
	mov dword [esp], 0x9
	call _Z14Com_PrintErroriPKcz
	mov eax, [ebp+0x14]
	mov byte [eax+0x192], 0x1
	add esp, 0x40bc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_460:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp+0x8]
	repne scasb
	not ecx
	sub ecx, 0x1
	cmp ecx, 0x40
	jbe _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_50
	mov dword [esp+0x14], 0x3f
	mov edx, [ebp+0x8]
	mov [esp+0x10], edx
	mov eax, [g_pszSndAliasKeyNames+0x4]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_error_sound_alia7
	mov dword [esp], 0x9
	call _Z14Com_PrintErroriPKcz
	mov ecx, [ebp+0x14]
	mov byte [ecx+0x192], 0x1
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_280:
	mov edx, [ebp+0x14]
	cmp byte [edx+0x192], 0x0
	jnz _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_10
	mov ecx, [ebp+0x8]
	mov [esp+0x4], ecx
	mov eax, edx
	add eax, 0x40
	mov [esp], eax
	call strcpy
	jmp _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_10
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_700:
	mov edx, [ebp+0x8]
	mov [esp], edx
	call atof
	fstp qword [ebp-0x4020]
	cvtsd2ss xmm2, [ebp-0x4020]
	pxor xmm3, xmm3
	ucomiss xmm3, xmm2
	ja _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_60
	movss xmm4, dword [_float_1_00000000]
	ucomiss xmm2, xmm4
	jbe _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_70
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_60:
	mov dword [esp+0x20], 0x0
	mov dword [esp+0x24], 0x3ff00000
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x1c], 0x0
	cvtss2sd xmm0, xmm2
	movsd [esp+0x10], xmm0
	mov eax, [g_pszSndAliasKeyNames+0x64]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_error_sound_alia5
	mov dword [esp], 0x9
	movss [ebp-0x4088], xmm2
	movss [ebp-0x4098], xmm3
	call _Z14Com_PrintErroriPKcz
	mov eax, [ebp+0x14]
	mov byte [eax+0x192], 0x1
	movss xmm4, dword [_float_1_00000000]
	movss xmm3, dword [ebp-0x4098]
	movss xmm2, dword [ebp-0x4088]
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_70:
	movaps xmm0, xmm2
	subss xmm0, xmm4
	movaps xmm1, xmm3
	cmpss xmm1, xmm0, 0x6
	movaps xmm0, xmm2
	andps xmm0, xmm1
	andnps xmm1, xmm4
	orps xmm1, xmm0
	movaps xmm0, xmm3
	subss xmm0, xmm2
	movaps xmm2, xmm3
	cmpss xmm2, xmm0, 0x6
	movaps xmm0, xmm2
	andps xmm1, xmm2
	andnps xmm0, xmm3
	orps xmm0, xmm1
	mov eax, [ebp+0x14]
	movss [eax+0x184], xmm0
	jmp _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_10
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_660:
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call atoi
	mov ebx, [ebp+0x14]
	mov [ebx+0x188], eax
	jmp _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_10
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_650:
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z40Com_RegisterSoundAliasVolumeFalloffCurvePKcS0_
	mov edx, [ebp+0x14]
	mov [edx+0x170], eax
	jmp _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_10
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_640:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp+0x8]
	repne scasb
	not ecx
	sub ecx, 0x1
	cmp ecx, 0x40
	jbe _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_80
	mov dword [esp+0x14], 0x3f
	mov edx, [ebp+0x8]
	mov [esp+0x10], edx
	mov eax, [g_pszSndAliasKeyNames+0x4c]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_error_sound_alia7
	mov dword [esp], 0x9
	call _Z14Com_PrintErroriPKcz
	mov ecx, [ebp+0x14]
	mov byte [ecx+0x192], 0x1
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_270:
	mov edx, [ebp+0x14]
	cmp byte [edx+0x192], 0x0
	jnz _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_10
	mov ecx, [ebp+0x8]
	mov [esp+0x4], ecx
	mov eax, edx
	add eax, 0xc0
	mov [esp], eax
	call strcpy
	jmp _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_10
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_630:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp+0x8]
	repne scasb
	not ecx
	sub ecx, 0x1
	cmp ecx, 0x40
	jbe _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_90
	mov dword [esp+0x14], 0x3f
	mov ebx, [ebp+0x8]
	mov [esp+0x10], ebx
	mov eax, [g_pszSndAliasKeyNames+0x48]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_error_sound_alia7
	mov dword [esp], 0x9
	call _Z14Com_PrintErroriPKcz
	mov eax, [ebp+0x14]
	mov byte [eax+0x192], 0x1
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_290:
	mov ebx, [ebp+0x14]
	cmp byte [ebx+0x192], 0x0
	jnz _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_10
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, ebx
	sub eax, 0xffffff80
	mov [esp], eax
	call strcpy
	jmp _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_10
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_680:
	mov dword [esp+0x4], _cstring_fulldrylevel
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call strstr
	test eax, eax
	jz _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_100
	mov ebx, [ebp+0x14]
	mov byte [ebx+0x18f], 0x1
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_100:
	mov dword [esp+0x4], _cstring_nowetlevel
	mov eax, [ebp+0x8]
	mov [esp], eax
	call strstr
	test eax, eax
	jz _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_10
	mov edx, [ebp+0x14]
	mov byte [edx+0x190], 0x1
	jmp _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_10
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_690:
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call atof
	fstp qword [ebp-0x4028]
	cvtsd2ss xmm2, [ebp-0x4028]
	pxor xmm3, xmm3
	ucomiss xmm3, xmm2
	ja _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_110
	movss xmm4, dword [_float_1_00000000]
	ucomiss xmm2, xmm4
	jbe _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_120
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_110:
	mov dword [esp+0x20], 0x0
	mov dword [esp+0x24], 0x3ff00000
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x1c], 0x0
	cvtss2sd xmm0, xmm2
	movsd [esp+0x10], xmm0
	mov eax, [g_pszSndAliasKeyNames+0x60]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_error_sound_alia5
	mov dword [esp], 0x9
	movss [ebp-0x4088], xmm2
	movss [ebp-0x4098], xmm3
	call _Z14Com_PrintErroriPKcz
	mov eax, [ebp+0x14]
	mov byte [eax+0x192], 0x1
	movss xmm4, dword [_float_1_00000000]
	movss xmm3, dword [ebp-0x4098]
	movss xmm2, dword [ebp-0x4088]
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_120:
	movaps xmm0, xmm2
	subss xmm0, xmm4
	movaps xmm1, xmm3
	cmpss xmm1, xmm0, 0x6
	movaps xmm0, xmm2
	andps xmm0, xmm1
	andnps xmm1, xmm4
	orps xmm1, xmm0
	movaps xmm0, xmm3
	subss xmm0, xmm2
	movaps xmm2, xmm3
	cmpss xmm2, xmm0, 0x6
	movaps xmm0, xmm2
	andps xmm1, xmm2
	andnps xmm0, xmm3
	orps xmm0, xmm1
	mov eax, [ebp+0x14]
	movss [eax+0x180], xmm0
	jmp _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_10
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_670:
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z32Com_RegisterSoundAliasSpeakerMapPKcS0_
	mov edx, [ebp+0x14]
	mov [edx+0x174], eax
	jmp _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_10
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_620:
	mov dword [esp+0x4], _cstring_master
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_130
	mov ebx, [ebp+0x14]
	mov byte [ebx+0x18d], 0x1
	mov byte [ebx+0x18e], 0x0
	jmp _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_10
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_610:
	mov [esp], esi
	mov ecx, [ebp+0x8]
	call _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0_
	mov edx, [ebp+0x14]
	mov [edx+0x193], al
	jmp _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_10
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_540:
	mov edx, [ebp+0x8]
	mov [esp], edx
	call atof
	fstp qword [ebp-0x4060]
	cvtsd2ss xmm0, [ebp-0x4060]
	mov ecx, [ebp+0x14]
	movss [ecx+0x15c], xmm0
	jmp _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_10
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_530:
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call atof
	fstp qword [ebp-0x4068]
	cvtsd2ss xmm0, [ebp-0x4068]
	mov ebx, [ebp+0x14]
	movss [ebx+0x158], xmm0
	mov eax, [ebp+0x10]
	cmp byte [eax+0x9], 0x0
	jnz _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_10
	movss [ebx+0x15c], xmm0
	jmp _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_10
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_520:
	xor ebx, ebx
	mov edi, saLoadObjGlob+0x8
	mov dword [ebp-0x4070], 0x0
	jmp _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_140
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_160:
	add ebx, 0x1
	add dword [ebp-0x4070], 0x44
	add edi, 0x44
	cmp ebx, 0x20
	jz _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_150
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_140:
	mov [esp+0x4], edi
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_160
	mov edx, [ebp-0x4070]
	mov eax, [edx+saLoadObjGlob+0x48]
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_300:
	mov edx, [ebp+0x14]
	mov [edx+0x154], eax
	jmp _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_10
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_510:
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call atof
	fstp qword [ebp-0x4038]
	cvtsd2ss xmm2, [ebp-0x4038]
	pxor xmm3, xmm3
	ucomiss xmm3, xmm2
	ja _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_170
	movss xmm4, dword [_float_1_00000000]
	ucomiss xmm2, xmm4
	jbe _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_180
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_170:
	mov dword [esp+0x20], 0x0
	mov dword [esp+0x24], 0x3ff00000
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x1c], 0x0
	cvtss2sd xmm0, xmm2
	movsd [esp+0x10], xmm0
	mov eax, [g_pszSndAliasKeyNames+0x18]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_error_sound_alia5
	mov dword [esp], 0x9
	movss [ebp-0x4088], xmm2
	movss [ebp-0x4098], xmm3
	call _Z14Com_PrintErroriPKcz
	mov eax, [ebp+0x14]
	mov byte [eax+0x192], 0x1
	movss xmm4, dword [_float_1_00000000]
	movss xmm3, dword [ebp-0x4098]
	movss xmm2, dword [ebp-0x4088]
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_180:
	movaps xmm0, xmm2
	subss xmm0, xmm4
	movaps xmm1, xmm3
	cmpss xmm1, xmm0, 0x6
	movaps xmm0, xmm2
	andps xmm0, xmm1
	andnps xmm1, xmm4
	orps xmm1, xmm0
	movaps xmm0, xmm3
	subss xmm0, xmm2
	movaps xmm2, xmm3
	cmpss xmm2, xmm0, 0x6
	movaps xmm0, xmm2
	andps xmm1, xmm2
	andnps xmm0, xmm3
	orps xmm0, xmm1
	mov eax, [ebp+0x14]
	movss [eax+0x150], xmm0
	jmp _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_10
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_580:
	mov dword [esp+0x4], _cstring_streamed
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_190
	mov ecx, [ebp+0x14]
	mov dword [ecx+0x16c], 0x2
	jmp _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_10
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_570:
	mov ebx, [saLoadObjGlob+0x188c]
	test ebx, ebx
	jg _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_200
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_380:
	lea ecx, [ebp-0x4018]
	mov [esp+0x10], ecx
	mov ebx, [ebp+0x8]
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_error_sound_alia8
	mov dword [esp], 0x9
	call _Z14Com_PrintErroriPKcz
	mov eax, [ebp+0x14]
	mov byte [eax+0x192], 0x1
	jmp _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_10
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_560:
	mov eax, [ebp+0x8]
	mov [esp], eax
	call atof
	fstp qword [ebp-0x4050]
	cvtsd2ss xmm0, [ebp-0x4050]
	mov edx, [ebp+0x14]
	movss [edx+0x164], xmm0
	jmp _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_10
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_550:
	mov eax, [ebp+0x8]
	mov [esp], eax
	call atof
	fstp qword [ebp-0x4058]
	cvtsd2ss xmm0, [ebp-0x4058]
	mov edx, [ebp+0x14]
	movss [edx+0x160], xmm0
	jmp _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_10
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_600:
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call atof
	fstp qword [ebp-0x4048]
	cvtsd2ss xmm0, [ebp-0x4048]
	mov eax, [ebp+0x14]
	movss [eax+0x17c], xmm0
	jmp _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_10
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_590:
	mov dword [esp+0x4], _cstring_looping
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_210
	mov eax, [ebp+0x14]
	mov byte [eax+0x18c], 0x1
	jmp _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_10
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_480:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp+0x8]
	repne scasb
	not ecx
	sub ecx, 0x1
	cmp ecx, 0x40
	ja _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_220
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_330:
	mov eax, [ebp+0x14]
	cmp byte [eax+0x192], 0x0
	jnz _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_10
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	add eax, 0x108
	mov [esp], eax
	call strcpy
	jmp _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_10
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_490:
	mov edx, [ebp+0x8]
	movzx eax, byte [edx]
	cmp al, 0x0
	jz _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_230
	jl _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_240
	xor eax, eax
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_260:
	add eax, 0x1
	mov ebx, eax
	mov ecx, [ebp+0x8]
	movzx edx, byte [ecx+eax]
	cmp dl, 0x0
	jz _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_250
	jge _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_260
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_450:
	movzx eax, dl
	mov [esp+0x14], eax
	movsx eax, dl
	mov [esp+0x10], eax
	mov ecx, [ebp+0x8]
	mov [esp+0xc], ecx
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_error_sound_alia9
	mov dword [esp], 0x9
	call _Z14Com_PrintErroriPKcz
	mov ebx, [ebp+0x14]
	mov byte [ebx+0x192], 0x1
	jmp _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_10
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_470:
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call atoi
	mov edx, [ebp+0x14]
	mov [edx+0x104], eax
	jmp _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_10
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_80:
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call _Z20Com_IsValidAliasNamePKc
	test eax, eax
	mov eax, [ebp+0x14]
	setz byte [eax+0x192]
	jmp _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_270
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_50:
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call _Z20Com_IsValidAliasNamePKc
	test eax, eax
	mov eax, [ebp+0x14]
	setz byte [eax+0x192]
	jmp _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_280
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_90:
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z20Com_IsValidAliasNamePKc
	test eax, eax
	mov ecx, [ebp+0x14]
	setz byte [ecx+0x192]
	jmp _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_290
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_150:
	mov ebx, [ebp+0x8]
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_sound_alias_file
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	xor eax, eax
	jmp _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_300
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_130:
	mov eax, [ebp+0x14]
	mov byte [eax+0x18d], 0x0
	mov byte [eax+0x18e], 0x1
	mov edx, [ebp+0x8]
	mov [esp], edx
	call atof
	fstp qword [ebp-0x4030]
	cvtsd2ss xmm0, [ebp-0x4030]
	mov ecx, [ebp+0x14]
	movss [ecx+0x178], xmm0
	ucomiss xmm0, [_float_0_00000000]
	jp _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_310
	jb _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_320
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_310:
	ucomiss xmm0, [_float_1_00000000]
	jbe _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_10
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_320:
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x20], 0x3ff00000
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x18], 0x0
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_error_sound_alia10
	mov dword [esp], 0x9
	call _Z14Com_PrintErroriPKcz
	mov ebx, [ebp+0x14]
	mov byte [ebx+0x192], 0x1
	jmp _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_10
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_220:
	mov dword [esp+0x14], 0x3f
	mov ecx, [ebp+0x8]
	mov [esp+0x10], ecx
	mov eax, [g_pszSndAliasKeyNames+0xc]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_error_sound_alia7
	mov dword [esp], 0x9
	call _Z14Com_PrintErroriPKcz
	mov ebx, [ebp+0x14]
	mov byte [ebx+0x192], 0x1
	jmp _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_330
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_210:
	mov dword [esp+0x4], _cstring_rlooping
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_340
	mov ecx, [ebp+0x14]
	mov byte [ecx+0x18c], 0x1
	mov byte [ecx+0x191], 0x1
	jmp _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_10
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_230:
	mov edx, 0x1
	xor esi, esi
	xor ebx, ebx
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_430:
	mov [esp], edx
	call Hunk_AllocateTempMemory
	mov edx, [ebp+0x14]
	mov [edx+0x100], eax
	mov [esp+0x8], esi
	mov ecx, [ebp+0x8]
	mov [esp+0x4], ecx
	mov [esp], eax
	call memcpy
	mov edx, [ebp+0x14]
	mov eax, [edx+0x100]
	mov byte [eax+ebx], 0x0
	jmp _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_10
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_190:
	mov dword [esp+0x4], _cstring_loaded
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_350
	mov eax, [ebp+0x14]
	mov dword [eax+0x16c], 0x1
	jmp _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_10
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_200:
	xor ebx, ebx
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_370:
	mov eax, ebx
	shl eax, 0x6
	add eax, saLoadObjGlob+0x889
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_360
	add ebx, 0x1
	cmp ebx, [saLoadObjGlob+0x188c]
	jl _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_370
	mov edi, [saLoadObjGlob+0x188c]
	test edi, edi
	jle _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_380
	xor edi, edi
	xor ebx, ebx
	mov dword [ebp-0x406c], saLoadObjGlob+0x889
	jmp _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_390
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_410:
	jz _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_400
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_420:
	add edi, 0x1
	add dword [ebp-0x406c], 0x40
	cmp [saLoadObjGlob+0x188c], edi
	jle _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_380
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_390:
	mov edx, [ebp-0x406c]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_s
	lea eax, [ebp-0x4018]
	add eax, ebx
	mov [esp], eax
	call sprintf
	add ebx, eax
	mov eax, [saLoadObjGlob+0x188c]
	sub eax, 0x2
	cmp edi, eax
	jge _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_410
	lea eax, [ebp-0x4018]
	add eax, ebx
	mov word [eax], 0x202c
	mov byte [eax+0x2], 0x0
	add ebx, 0x2
	jmp _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_420
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_250:
	lea edx, [eax+0x1]
	mov esi, eax
	jmp _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_430
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_400:
	lea eax, [ebp-0x4018]
	add eax, ebx
	mov dword [eax], 0x20726f20
	mov byte [eax+0x4], 0x0
	add ebx, 0x4
	jmp _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_420
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_360:
	mov ecx, [ebp+0x14]
	mov [ecx+0x168], ebx
	jmp _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_10
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_350:
	mov edx, [ebp+0x8]
	mov [esp+0xc], edx
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_error_sound_alia11
	mov dword [esp], 0x9
	call _Z14Com_PrintErroriPKcz
	mov ecx, [ebp+0x14]
	mov byte [ecx+0x192], 0x1
	jmp _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_10
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_340:
	mov dword [esp+0x4], _cstring_nonlooping
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_440
	mov eax, [ebp+0x14]
	mov byte [eax+0x18c], 0x0
	jmp _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_10
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_240:
	mov edx, eax
	jmp _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_450
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_440:
	mov edx, [ebp+0x8]
	mov [esp+0xc], edx
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_error_sound_alia12
	mov dword [esp], 0x9
	call _Z14Com_PrintErroriPKcz
	mov ecx, [ebp+0x14]
	mov byte [ecx+0x192], 0x1
	jmp _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_10
	
	
_Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_jumptab_0:
	dd _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_10
	dd _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_460
	dd _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_470
	dd _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_480
	dd _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_490
	dd _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_500
	dd _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_510
	dd _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_520
	dd _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_530
	dd _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_540
	dd _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_550
	dd _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_560
	dd _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_570
	dd _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_580
	dd _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_590
	dd _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_600
	dd _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_610
	dd _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_620
	dd _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_630
	dd _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_640
	dd _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_650
	dd _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_660
	dd _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_670
	dd _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_680
	dd _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_690
	dd _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s_700


;Com_InitSoundAlias()
_Z18Com_InitSoundAliasv:
	push ebp
	mov ebp, esp
	mov dword [saLoadObjGlob], 0x0
	mov dword [saLoadObjGlob+0x4], 0x0
	pop ebp
	ret
	nop


;Com_InitEntChannels()
_Z19Com_InitEntChannelsv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_soundaliaseschan
	call FS_ReadFile
	test eax, eax
	js _Z19Com_InitEntChannelsv_10
_Z19Com_InitEntChannelsv_120:
	mov eax, [ebp-0x1c]
	mov [ebp-0x20], eax
	mov dword [saLoadObjGlob+0x188c], 0x0
	mov dword [esp], _cstring_soundaliaseschan
	call _Z21Com_BeginParseSessionPKc
	mov dword [esp], 0x1
	call _Z10Com_SetCSVi
	jmp _Z19Com_InitEntChannelsv_20
_Z19Com_InitEntChannelsv_70:
	movzx eax, byte [ebx]
	test al, al
	jz _Z19Com_InitEntChannelsv_30
	cmp al, 0x23
	jz _Z19Com_InitEntChannelsv_30
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	sub ecx, 0x1
	cmp ecx, 0x40
	ja _Z19Com_InitEntChannelsv_40
_Z19Com_InitEntChannelsv_110:
	mov eax, [saLoadObjGlob+0x188c]
	test eax, eax
	jg _Z19Com_InitEntChannelsv_50
_Z19Com_InitEntChannelsv_90:
	mov [esp+0x4], ebx
	shl eax, 0x6
	add eax, saLoadObjGlob+0x889
	mov [esp], eax
	call strcpy
	mov eax, [saLoadObjGlob+0x188c]
	add eax, 0x1
	mov [saLoadObjGlob+0x188c], eax
	cmp eax, 0x40
	jg _Z19Com_InitEntChannelsv_60
_Z19Com_InitEntChannelsv_30:
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z18Com_SkipRestOfLinePPKc
_Z19Com_InitEntChannelsv_20:
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z9Com_ParsePPKc
	mov ebx, eax
	mov eax, [ebp-0x20]
	test eax, eax
	jnz _Z19Com_InitEntChannelsv_70
	call _Z19Com_EndParseSessionv
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19Com_InitEntChannelsv_60:
	call _Z19Com_EndParseSessionv
	mov dword [esp+0xc], _cstring_soundaliaseschan
	mov dword [esp+0x8], 0x40
	mov dword [esp+0x4], _cstring_exceeded_max_num
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z19Com_InitEntChannelsv_30
_Z19Com_InitEntChannelsv_50:
	xor esi, esi
	mov edi, saLoadObjGlob+0x889
	jmp _Z19Com_InitEntChannelsv_80
_Z19Com_InitEntChannelsv_100:
	add esi, 0x1
	add edi, 0x40
	mov eax, [saLoadObjGlob+0x188c]
	cmp esi, eax
	jge _Z19Com_InitEntChannelsv_90
_Z19Com_InitEntChannelsv_80:
	mov [esp+0x4], ebx
	mov [esp], edi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z19Com_InitEntChannelsv_100
	call _Z19Com_EndParseSessionv
	mov dword [esp+0xc], _cstring_soundaliaseschan
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_duplicate_channe
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z19Com_InitEntChannelsv_100
_Z19Com_InitEntChannelsv_40:
	call _Z19Com_EndParseSessionv
	mov dword [esp+0x10], _cstring_soundaliaseschan
	mov [esp+0xc], ebx
	mov dword [esp+0x8], 0x40
	mov dword [esp+0x4], _cstring_channel_name_too
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z19Com_InitEntChannelsv_110
_Z19Com_InitEntChannelsv_10:
	mov dword [esp+0x8], _cstring_soundaliaseschan
	mov dword [esp+0x4], _cstring_unable_to_load_e
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z19Com_InitEntChannelsv_120
	nop


;Com_LoadSpkrMapFile(char const*, SpeakerMapInfo*)
_Z19Com_LoadSpkrMapFilePKcP14SpeakerMapInfo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x206c
	mov eax, [ebp+0xc]
	mov dword [eax+0x48], 0x2
	mov dword [eax+0x110], 0x2
	mov dword [eax+0xac], 0x6
	mov dword [eax+0x174], 0x6
	mov [eax+0x44], eax
	mov edx, [ebp+0x8]
	mov [esp+0xc], edx
	mov dword [esp+0x8], _cstring_soundaliasessspk
	mov dword [esp+0x4], 0x40
	lea eax, [ebp-0x5c]
	mov [esp], eax
	call _Z11Com_sprintfPciPKcz
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	lea edx, [ebp-0x5c]
	mov [esp], edx
	call _Z18FS_FOpenFileByModePKcPi8fsMode_t
	mov ebx, eax
	test eax, eax
	jle _Z19Com_LoadSpkrMapFilePKcP14SpeakerMapInfo_10
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x7
	lea edx, [ebp-0x205c]
	mov [esp], edx
	call _Z7FS_ReadPvii
	mov byte [ebp-0x2055], 0x0
	mov edi, _cstring_spkrmap
	mov ecx, 0x7
	cld
	lea esi, [ebp-0x205c]
	repe cmpsb
	mov eax, 0x0
	jz _Z19Com_LoadSpkrMapFilePKcP14SpeakerMapInfo_20
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_Z19Com_LoadSpkrMapFilePKcP14SpeakerMapInfo_20:
	test eax, eax
	jnz _Z19Com_LoadSpkrMapFilePKcP14SpeakerMapInfo_30
	lea esi, [ebx-0x7]
	cmp esi, 0x1fff
	jle _Z19Com_LoadSpkrMapFilePKcP14SpeakerMapInfo_40
	lea edx, [ebp-0x5c]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_error_s_is_too_l
	mov dword [esp], 0x9
	call _Z14Com_PrintErroriPKcz
_Z19Com_LoadSpkrMapFilePKcP14SpeakerMapInfo_60:
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo
	xor eax, eax
_Z19Com_LoadSpkrMapFilePKcP14SpeakerMapInfo_80:
	add esp, 0x206c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19Com_LoadSpkrMapFilePKcP14SpeakerMapInfo_40:
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	lea edx, [ebp-0x205c]
	mov [esp], edx
	call _Z7FS_ReadPvii
	mov byte [ebp+esi-0x205c], 0x0
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z13FS_FCloseFilei
	lea eax, [ebp-0x205c]
	mov [g_spkrMapParseBuffer], eax
	lea edx, [ebp-0x5c]
	mov [esp], edx
	call _Z21Com_BeginParseSessionPKc
	mov ebx, [ebp+0xc]
	add ebx, 0x48
	mov dword [esp], 0x3
	xor ecx, ecx
	mov edx, ebx
	lea eax, [ebp-0x5c]
	call _Z24Com_ParseChannelMapEntryPKcP13MSSChannelMap21SA_SPKRMAPIDENTIFIERSS3_
	test al, al
	jnz _Z19Com_LoadSpkrMapFilePKcP14SpeakerMapInfo_50
_Z19Com_LoadSpkrMapFilePKcP14SpeakerMapInfo_70:
	call _Z19Com_EndParseSessionv
	mov dword [g_spkrMapParseBuffer], 0x0
	jmp _Z19Com_LoadSpkrMapFilePKcP14SpeakerMapInfo_60
_Z19Com_LoadSpkrMapFilePKcP14SpeakerMapInfo_30:
	lea eax, [ebp-0x5c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_s_does_not
	mov dword [esp], 0x9
	call _Z14Com_PrintErroriPKcz
	jmp _Z19Com_LoadSpkrMapFilePKcP14SpeakerMapInfo_60
_Z19Com_LoadSpkrMapFilePKcP14SpeakerMapInfo_10:
	lea eax, [ebp-0x5c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_could_not_
	mov dword [esp], 0x9
	call _Z14Com_PrintErroriPKcz
	jmp _Z19Com_LoadSpkrMapFilePKcP14SpeakerMapInfo_60
_Z19Com_LoadSpkrMapFilePKcP14SpeakerMapInfo_50:
	mov dword [esp], 0x4
	xor ecx, ecx
	mov edx, ebx
	lea eax, [ebp-0x5c]
	call _Z24Com_ParseChannelMapEntryPKcP13MSSChannelMap21SA_SPKRMAPIDENTIFIERSS3_
	test al, al
	jz _Z19Com_LoadSpkrMapFilePKcP14SpeakerMapInfo_70
	mov ebx, [ebp+0xc]
	add ebx, 0x110
	mov dword [esp], 0x3
	mov ecx, 0x1
	mov edx, ebx
	lea eax, [ebp-0x5c]
	call _Z24Com_ParseChannelMapEntryPKcP13MSSChannelMap21SA_SPKRMAPIDENTIFIERSS3_
	test al, al
	jz _Z19Com_LoadSpkrMapFilePKcP14SpeakerMapInfo_70
	mov dword [esp], 0x3
	mov ecx, 0x2
	mov edx, ebx
	lea eax, [ebp-0x5c]
	call _Z24Com_ParseChannelMapEntryPKcP13MSSChannelMap21SA_SPKRMAPIDENTIFIERSS3_
	test al, al
	jz _Z19Com_LoadSpkrMapFilePKcP14SpeakerMapInfo_70
	mov dword [esp], 0x4
	mov ecx, 0x1
	mov edx, ebx
	lea eax, [ebp-0x5c]
	call _Z24Com_ParseChannelMapEntryPKcP13MSSChannelMap21SA_SPKRMAPIDENTIFIERSS3_
	test al, al
	jz _Z19Com_LoadSpkrMapFilePKcP14SpeakerMapInfo_70
	mov dword [esp], 0x4
	mov ecx, 0x2
	mov edx, ebx
	lea eax, [ebp-0x5c]
	call _Z24Com_ParseChannelMapEntryPKcP13MSSChannelMap21SA_SPKRMAPIDENTIFIERSS3_
	test al, al
	jz _Z19Com_LoadSpkrMapFilePKcP14SpeakerMapInfo_70
	mov ebx, [ebp+0xc]
	add ebx, 0xac
	mov dword [esp], 0x3
	xor ecx, ecx
	mov edx, ebx
	lea eax, [ebp-0x5c]
	call _Z24Com_ParseChannelMapEntryPKcP13MSSChannelMap21SA_SPKRMAPIDENTIFIERSS3_
	test al, al
	jz _Z19Com_LoadSpkrMapFilePKcP14SpeakerMapInfo_70
	mov dword [esp], 0x4
	xor ecx, ecx
	mov edx, ebx
	lea eax, [ebp-0x5c]
	call _Z24Com_ParseChannelMapEntryPKcP13MSSChannelMap21SA_SPKRMAPIDENTIFIERSS3_
	test al, al
	jz _Z19Com_LoadSpkrMapFilePKcP14SpeakerMapInfo_70
	mov dword [esp], 0x5
	xor ecx, ecx
	mov edx, ebx
	lea eax, [ebp-0x5c]
	call _Z24Com_ParseChannelMapEntryPKcP13MSSChannelMap21SA_SPKRMAPIDENTIFIERSS3_
	test al, al
	jz _Z19Com_LoadSpkrMapFilePKcP14SpeakerMapInfo_70
	mov dword [esp], 0x6
	xor ecx, ecx
	mov edx, ebx
	lea eax, [ebp-0x5c]
	call _Z24Com_ParseChannelMapEntryPKcP13MSSChannelMap21SA_SPKRMAPIDENTIFIERSS3_
	test al, al
	jz _Z19Com_LoadSpkrMapFilePKcP14SpeakerMapInfo_70
	mov dword [esp], 0x7
	xor ecx, ecx
	mov edx, ebx
	lea eax, [ebp-0x5c]
	call _Z24Com_ParseChannelMapEntryPKcP13MSSChannelMap21SA_SPKRMAPIDENTIFIERSS3_
	test al, al
	jz _Z19Com_LoadSpkrMapFilePKcP14SpeakerMapInfo_70
	mov dword [esp], 0x8
	xor ecx, ecx
	mov edx, ebx
	lea eax, [ebp-0x5c]
	call _Z24Com_ParseChannelMapEntryPKcP13MSSChannelMap21SA_SPKRMAPIDENTIFIERSS3_
	test al, al
	jz _Z19Com_LoadSpkrMapFilePKcP14SpeakerMapInfo_70
	mov ebx, [ebp+0xc]
	add ebx, 0x174
	mov dword [esp], 0x3
	mov ecx, 0x1
	mov edx, ebx
	lea eax, [ebp-0x5c]
	call _Z24Com_ParseChannelMapEntryPKcP13MSSChannelMap21SA_SPKRMAPIDENTIFIERSS3_
	test al, al
	jz _Z19Com_LoadSpkrMapFilePKcP14SpeakerMapInfo_70
	mov dword [esp], 0x3
	mov ecx, 0x2
	mov edx, ebx
	lea eax, [ebp-0x5c]
	call _Z24Com_ParseChannelMapEntryPKcP13MSSChannelMap21SA_SPKRMAPIDENTIFIERSS3_
	test al, al
	jz _Z19Com_LoadSpkrMapFilePKcP14SpeakerMapInfo_70
	mov dword [esp], 0x4
	mov ecx, 0x1
	mov edx, ebx
	lea eax, [ebp-0x5c]
	call _Z24Com_ParseChannelMapEntryPKcP13MSSChannelMap21SA_SPKRMAPIDENTIFIERSS3_
	test al, al
	jz _Z19Com_LoadSpkrMapFilePKcP14SpeakerMapInfo_70
	mov dword [esp], 0x4
	mov ecx, 0x2
	mov edx, ebx
	lea eax, [ebp-0x5c]
	call _Z24Com_ParseChannelMapEntryPKcP13MSSChannelMap21SA_SPKRMAPIDENTIFIERSS3_
	test al, al
	jz _Z19Com_LoadSpkrMapFilePKcP14SpeakerMapInfo_70
	mov dword [esp], 0x5
	mov ecx, 0x1
	mov edx, ebx
	lea eax, [ebp-0x5c]
	call _Z24Com_ParseChannelMapEntryPKcP13MSSChannelMap21SA_SPKRMAPIDENTIFIERSS3_
	test al, al
	jz _Z19Com_LoadSpkrMapFilePKcP14SpeakerMapInfo_70
	mov dword [esp], 0x5
	mov ecx, 0x2
	mov edx, ebx
	lea eax, [ebp-0x5c]
	call _Z24Com_ParseChannelMapEntryPKcP13MSSChannelMap21SA_SPKRMAPIDENTIFIERSS3_
	test al, al
	jz _Z19Com_LoadSpkrMapFilePKcP14SpeakerMapInfo_70
	mov dword [esp], 0x6
	mov ecx, 0x1
	mov edx, ebx
	lea eax, [ebp-0x5c]
	call _Z24Com_ParseChannelMapEntryPKcP13MSSChannelMap21SA_SPKRMAPIDENTIFIERSS3_
	test al, al
	jz _Z19Com_LoadSpkrMapFilePKcP14SpeakerMapInfo_70
	mov dword [esp], 0x6
	mov ecx, 0x2
	mov edx, ebx
	lea eax, [ebp-0x5c]
	call _Z24Com_ParseChannelMapEntryPKcP13MSSChannelMap21SA_SPKRMAPIDENTIFIERSS3_
	test al, al
	jz _Z19Com_LoadSpkrMapFilePKcP14SpeakerMapInfo_70
	mov dword [esp], 0x7
	mov ecx, 0x1
	mov edx, ebx
	lea eax, [ebp-0x5c]
	call _Z24Com_ParseChannelMapEntryPKcP13MSSChannelMap21SA_SPKRMAPIDENTIFIERSS3_
	test al, al
	jz _Z19Com_LoadSpkrMapFilePKcP14SpeakerMapInfo_70
	mov dword [esp], 0x7
	mov ecx, 0x2
	mov edx, ebx
	lea eax, [ebp-0x5c]
	call _Z24Com_ParseChannelMapEntryPKcP13MSSChannelMap21SA_SPKRMAPIDENTIFIERSS3_
	test al, al
	jz _Z19Com_LoadSpkrMapFilePKcP14SpeakerMapInfo_70
	mov dword [esp], 0x8
	mov ecx, 0x1
	mov edx, ebx
	lea eax, [ebp-0x5c]
	call _Z24Com_ParseChannelMapEntryPKcP13MSSChannelMap21SA_SPKRMAPIDENTIFIERSS3_
	test al, al
	jz _Z19Com_LoadSpkrMapFilePKcP14SpeakerMapInfo_70
	mov dword [esp], 0x8
	mov ecx, 0x2
	mov edx, ebx
	lea eax, [ebp-0x5c]
	call _Z24Com_ParseChannelMapEntryPKcP13MSSChannelMap21SA_SPKRMAPIDENTIFIERSS3_
	test al, al
	jz _Z19Com_LoadSpkrMapFilePKcP14SpeakerMapInfo_70
	call _Z19Com_EndParseSessionv
	mov dword [g_spkrMapParseBuffer], 0x0
	mov edx, [ebp+0x8]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x40
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z11Com_sprintfPciPKcz
	mov eax, 0x1
	jmp _Z19Com_LoadSpkrMapFilePKcP14SpeakerMapInfo_80
	nop


;Com_LoadSoundAliasFile(char const*, char const*, char const*)
_Z22Com_LoadSoundAliasFilePKcS0_S0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x26ac
	mov dword [esp+0x8], 0x19c
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x264]
	mov [esp], eax
	call memset
	mov edx, [ebp+0x10]
	mov [esp+0xc], edx
	mov dword [esp+0x8], _cstring_soundaliasess
	mov dword [esp+0x4], 0x40
	lea edi, [ebp-0x85]
	mov [esp], edi
	call _Z11Com_sprintfPciPKcz
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], edi
	call FS_ReadFile
	test eax, eax
	js _Z22Com_LoadSoundAliasFilePKcS0_S0__10
	cmp byte [saLoadObjGlob+0x888], 0x0
	jnz _Z22Com_LoadSoundAliasFilePKcS0_S0__20
	cmp byte [saLoadObjGlob+0x1890], 0x0
	jz _Z22Com_LoadSoundAliasFilePKcS0_S0__30
_Z22Com_LoadSoundAliasFilePKcS0_S0__420:
	mov dword [ebp-0xc5], 0x6e756f73
	mov dword [ebp-0xc1], 0x696c6164
	mov dword [ebp-0xbd], 0x73657361
	mov dword [ebp-0xb9], 0x6c6f762f
	mov dword [ebp-0xb5], 0x6d656d75
	mov dword [ebp-0xb1], 0x7267646f
	mov dword [ebp-0xad], 0x7370756f
	mov dword [ebp-0xa9], 0x6665642e
	mov byte [ebp-0xa5], 0x0
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	lea edx, [ebp-0xc5]
	mov [esp], edx
	call _Z16FS_FOpenFileReadPKcPi
	mov ebx, eax
	cmp eax, 0x0
	jl _Z22Com_LoadSoundAliasFilePKcS0_S0__40
	jnz _Z22Com_LoadSoundAliasFilePKcS0_S0__50
	mov eax, [ebp-0x24]
	mov [esp], eax
	call _Z13FS_FCloseFilei
	lea eax, [ebp-0xc5]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_s_is_empty
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z22Com_LoadSoundAliasFilePKcS0_S0__460:
	mov byte [saLoadObjGlob+0x888], 0x1
_Z22Com_LoadSoundAliasFilePKcS0_S0__20:
	lea eax, [ebp-0x85]
	mov [esp], eax
	call _Z21Com_BeginParseSessionPKc
	mov dword [esp], 0x1
	call _Z10Com_SetCSVi
	mov eax, [ebp-0x1c]
	mov [ebp-0x20], eax
	xor esi, esi
_Z22Com_LoadSoundAliasFilePKcS0_S0__190:
	lea edx, [ebp-0x20]
	mov [esp], edx
	call _Z9Com_ParsePPKc
	mov [ebp-0x268c], eax
	mov edx, [ebp-0x20]
	test edx, edx
	jz _Z22Com_LoadSoundAliasFilePKcS0_S0__60
	movzx eax, byte [eax]
	test al, al
	jz _Z22Com_LoadSoundAliasFilePKcS0_S0__70
	cmp al, 0x23
	jz _Z22Com_LoadSoundAliasFilePKcS0_S0__70
	test esi, esi
	jnz _Z22Com_LoadSoundAliasFilePKcS0_S0__80
	mov dword [ebp-0x2678], 0x0
	mov dword [ebp-0x2674], 0x0
	mov dword [ebp-0x2670], 0x1
_Z22Com_LoadSoundAliasFilePKcS0_S0__150:
	mov edx, [ebp-0x2670]
	lea eax, [ebp+edx*4-0x664]
	lea edi, [eax-0x4]
	mov [ebp-0x266c], edi
	mov dword [eax-0x4], 0x0
	mov esi, 0x1
	mov ebx, g_pszSndAliasKeyNames
	jmp _Z22Com_LoadSoundAliasFilePKcS0_S0__90
_Z22Com_LoadSoundAliasFilePKcS0_S0__110:
	add esi, 0x1
	add ebx, 0x4
	cmp esi, 0x1d
	jz _Z22Com_LoadSoundAliasFilePKcS0_S0__100
_Z22Com_LoadSoundAliasFilePKcS0_S0__90:
	mov eax, [ebp-0x268c]
	mov [esp+0x4], eax
	mov eax, [ebx+0x4]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z22Com_LoadSoundAliasFilePKcS0_S0__110
	mov edx, [ebp-0x266c]
	mov [edx], esi
	cmp esi, 0x1
	jz _Z22Com_LoadSoundAliasFilePKcS0_S0__120
	cmp esi, 0x3
	jz _Z22Com_LoadSoundAliasFilePKcS0_S0__130
_Z22Com_LoadSoundAliasFilePKcS0_S0__100:
	mov esi, [ebp-0x2670]
	cmp esi, 0x100
	jz _Z22Com_LoadSoundAliasFilePKcS0_S0__140
_Z22Com_LoadSoundAliasFilePKcS0_S0__170:
	mov eax, [ebp-0x20]
	test eax, eax
	jz _Z22Com_LoadSoundAliasFilePKcS0_S0__140
	lea edi, [esi+0x1]
	mov [ebp-0x2670], edi
	cmp byte [eax], 0xa
	jz _Z22Com_LoadSoundAliasFilePKcS0_S0__140
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z15Com_ParseOnLinePPKc
	mov [ebp-0x268c], eax
	jmp _Z22Com_LoadSoundAliasFilePKcS0_S0__150
_Z22Com_LoadSoundAliasFilePKcS0_S0__240:
	mov eax, [saLoadObjGlob]
	test eax, eax
	jz _Z22Com_LoadSoundAliasFilePKcS0_S0__160
	add eax, 0x40
_Z22Com_LoadSoundAliasFilePKcS0_S0__510:
	mov [esp+0x14], eax
	lea eax, [ebp-0x15c]
	mov [esp+0x10], eax
	lea eax, [ebp-0x224]
	mov [esp+0xc], eax
	mov edi, [ebp+0x10]
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_error_sound_alia13
	mov dword [esp], 0x9
	call _Z14Com_PrintErroriPKcz
_Z22Com_LoadSoundAliasFilePKcS0_S0__60:
	call _Z19Com_EndParseSessionv
_Z22Com_LoadSoundAliasFilePKcS0_S0__10:
	add esp, 0x26ac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22Com_LoadSoundAliasFilePKcS0_S0__120:
	mov dword [ebp-0x2678], 0x1
	mov esi, [ebp-0x2670]
	cmp esi, 0x100
	jnz _Z22Com_LoadSoundAliasFilePKcS0_S0__170
_Z22Com_LoadSoundAliasFilePKcS0_S0__140:
	mov eax, [ebp-0x2678]
	test eax, eax
	jz _Z22Com_LoadSoundAliasFilePKcS0_S0__180
	mov eax, [ebp-0x2674]
	test eax, eax
	jz _Z22Com_LoadSoundAliasFilePKcS0_S0__180
_Z22Com_LoadSoundAliasFilePKcS0_S0__260:
	lea edx, [ebp-0x20]
	mov [esp], edx
	call _Z18Com_SkipRestOfLinePPKc
	jmp _Z22Com_LoadSoundAliasFilePKcS0_S0__190
_Z22Com_LoadSoundAliasFilePKcS0_S0__130:
	mov dword [ebp-0x2674], 0x1
	jmp _Z22Com_LoadSoundAliasFilePKcS0_S0__100
_Z22Com_LoadSoundAliasFilePKcS0_S0__70:
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z18Com_SkipRestOfLinePPKc
	jmp _Z22Com_LoadSoundAliasFilePKcS0_S0__190
_Z22Com_LoadSoundAliasFilePKcS0_S0__80:
	cld
	xor eax, eax
	mov ecx, 0x7
	lea edi, [ebp-0x45]
	rep stosd
	stosb
	mov ecx, [ebp+0x8]
	mov edx, [ebp+0x10]
	lea eax, [ebp-0x264]
	call _Z26Com_LoadSoundAliasDefaultsP17snd_alias_build_sPKcS2_
	xor ebx, ebx
	mov eax, [ebp-0x268c]
	jmp _Z22Com_LoadSoundAliasFilePKcS0_S0__200
_Z22Com_LoadSoundAliasFilePKcS0_S0__220:
	add ebx, 0x1
	cmp esi, ebx
	jz _Z22Com_LoadSoundAliasFilePKcS0_S0__210
_Z22Com_LoadSoundAliasFilePKcS0_S0__230:
	lea edx, [ebp-0x20]
	mov [esp], edx
	call _Z15Com_ParseOnLinePPKc
	mov [ebp-0x268c], eax
_Z22Com_LoadSoundAliasFilePKcS0_S0__200:
	cmp byte [eax], 0x0
	jz _Z22Com_LoadSoundAliasFilePKcS0_S0__220
	lea edx, [ebp-0x264]
	mov [esp+0xc], edx
	lea edi, [ebp-0x45]
	mov [esp+0x8], edi
	mov eax, [ebp+ebx*4-0x664]
	mov [esp+0x4], eax
	mov eax, [ebp-0x268c]
	mov [esp], eax
	mov ecx, [ebp+0x10]
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	call _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s
	add ebx, 0x1
	cmp esi, ebx
	jnz _Z22Com_LoadSoundAliasFilePKcS0_S0__230
_Z22Com_LoadSoundAliasFilePKcS0_S0__210:
	cmp byte [ebp-0x44], 0x0
	jz _Z22Com_LoadSoundAliasFilePKcS0_S0__240
	cmp byte [ebp-0x42], 0x0
	jz _Z22Com_LoadSoundAliasFilePKcS0_S0__240
	cmp byte [ebp-0x35], 0x0
	jz _Z22Com_LoadSoundAliasFilePKcS0_S0__250
_Z22Com_LoadSoundAliasFilePKcS0_S0__380:
	cmp byte [ebp-0xd1], 0x0
	jz _Z22Com_LoadSoundAliasFilePKcS0_S0__260
	cmp byte [ebp-0xd2], 0x0
	jnz _Z22Com_LoadSoundAliasFilePKcS0_S0__260
	movss xmm0, dword [ebp-0x10c]
	movss xmm1, dword [ebp-0x108]
	ucomiss xmm0, xmm1
	ja _Z22Com_LoadSoundAliasFilePKcS0_S0__270
_Z22Com_LoadSoundAliasFilePKcS0_S0__400:
	pxor xmm2, xmm2
	ucomiss xmm2, xmm0
	jae _Z22Com_LoadSoundAliasFilePKcS0_S0__280
	movss xmm1, dword [ebp-0x118]
	movss xmm0, dword [ebp-0x114]
	ucomiss xmm1, xmm0
	ja _Z22Com_LoadSoundAliasFilePKcS0_S0__290
_Z22Com_LoadSoundAliasFilePKcS0_S0__390:
	ucomiss xmm2, xmm1
	ja _Z22Com_LoadSoundAliasFilePKcS0_S0__300
	ucomiss xmm2, [ebp-0x100]
	jnz _Z22Com_LoadSoundAliasFilePKcS0_S0__310
	jp _Z22Com_LoadSoundAliasFilePKcS0_S0__310
	movss xmm1, dword [ebp-0x104]
	movaps xmm0, xmm1
	mulss xmm0, [_float_5_00000000]
	movss [ebp-0x100], xmm0
_Z22Com_LoadSoundAliasFilePKcS0_S0__410:
	movss xmm0, dword [ebp-0x100]
	ucomiss xmm1, xmm0
	jae _Z22Com_LoadSoundAliasFilePKcS0_S0__320
	ucomiss xmm2, xmm1
	jae _Z22Com_LoadSoundAliasFilePKcS0_S0__330
	movss xmm0, dword [ebp-0x110]
	movss xmm1, dword [_float_1_00000000]
	ucomiss xmm0, xmm1
	jp _Z22Com_LoadSoundAliasFilePKcS0_S0__340
	jz _Z22Com_LoadSoundAliasFilePKcS0_S0__350
_Z22Com_LoadSoundAliasFilePKcS0_S0__340:
	mulss xmm0, [ebp-0x118]
	ucomiss xmm2, xmm0
	ja _Z22Com_LoadSoundAliasFilePKcS0_S0__360
	movaps xmm3, xmm1
	minss xmm3, xmm0
	movaps xmm0, xmm3
_Z22Com_LoadSoundAliasFilePKcS0_S0__530:
	movss [ebp-0x118], xmm0
	movss xmm0, dword [ebp-0x114]
	mulss xmm0, [ebp-0x110]
	ucomiss xmm2, xmm0
	ja _Z22Com_LoadSoundAliasFilePKcS0_S0__370
	minss xmm1, xmm0
	movaps xmm0, xmm1
_Z22Com_LoadSoundAliasFilePKcS0_S0__520:
	movss [ebp-0x114], xmm0
_Z22Com_LoadSoundAliasFilePKcS0_S0__350:
	mov dword [esp+0x4], _cstring_com_addbuildsoun
	mov dword [esp], 0x19c
	call _Z27Com_AllocateTempSoundMemoryiPKc
	mov ebx, eax
	mov dword [esp+0x8], 0x19c
	lea eax, [ebp-0x264]
	mov [esp+0x4], eax
	mov [esp], ebx
	call memcpy
	mov eax, [saLoadObjGlob]
	mov [ebx+0x198], eax
	mov [saLoadObjGlob], ebx
	add dword [saLoadObjGlob+0x4], 0x1
	jmp _Z22Com_LoadSoundAliasFilePKcS0_S0__260
_Z22Com_LoadSoundAliasFilePKcS0_S0__250:
	mov eax, [ebp+0x10]
	mov [esp], eax
	mov ecx, _cstring_null
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	call _Z22Com_SoundAliasLoadSpecPKcS0_S0_S0_
	mov [ebp-0xd1], al
	jmp _Z22Com_LoadSoundAliasFilePKcS0_S0__380
_Z22Com_LoadSoundAliasFilePKcS0_S0__290:
	movss [ebp-0x114], xmm1
	movss [ebp-0x118], xmm0
	movaps xmm1, xmm0
	jmp _Z22Com_LoadSoundAliasFilePKcS0_S0__390
_Z22Com_LoadSoundAliasFilePKcS0_S0__270:
	movss [ebp-0x108], xmm0
	movaps xmm0, xmm1
	movss [ebp-0x10c], xmm1
	jmp _Z22Com_LoadSoundAliasFilePKcS0_S0__400
_Z22Com_LoadSoundAliasFilePKcS0_S0__310:
	movss xmm1, dword [ebp-0x104]
	jmp _Z22Com_LoadSoundAliasFilePKcS0_S0__410
_Z22Com_LoadSoundAliasFilePKcS0_S0__30:
	mov dword [esp+0x8], _ZZ22Com_LoadSoundAliasFilePKcS0_S0_E32Com_RefreshVolumeModGroups_f_VAR
	mov dword [esp+0x4], _Z28Com_RefreshVolumeModGroups_fv
	mov dword [esp], _cstring_snd_refreshvolum
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov byte [saLoadObjGlob+0x1890], 0x1
	jmp _Z22Com_LoadSoundAliasFilePKcS0_S0__420
_Z22Com_LoadSoundAliasFilePKcS0_S0__180:
	mov edx, [ebp+0x10]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_error_sound_alia14
	mov dword [esp], 0x9
	call _Z14Com_PrintErroriPKcz
	call _Z19Com_EndParseSessionv
	jmp _Z22Com_LoadSoundAliasFilePKcS0_S0__10
_Z22Com_LoadSoundAliasFilePKcS0_S0__50:
	mov eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xf
	lea edx, [ebp-0x2664]
	mov [esp], edx
	call _Z7FS_ReadPvii
	mov byte [ebp-0x2655], 0x0
	mov edi, _cstring_volumemodgroups
	mov ecx, 0xf
	cld
	lea esi, [ebp-0x2664]
	repe cmpsb
	mov eax, 0x0
	jz _Z22Com_LoadSoundAliasFilePKcS0_S0__430
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_Z22Com_LoadSoundAliasFilePKcS0_S0__430:
	test eax, eax
	jnz _Z22Com_LoadSoundAliasFilePKcS0_S0__440
	sub ebx, 0xf
	cmp ebx, 0x1fff
	jle _Z22Com_LoadSoundAliasFilePKcS0_S0__450
	mov eax, [ebp-0x24]
	mov [esp], eax
	call _Z13FS_FCloseFilei
	lea eax, [ebp-0xc5]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_s_is_too_l1
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z22Com_LoadSoundAliasFilePKcS0_S0__460
_Z22Com_LoadSoundAliasFilePKcS0_S0__320:
	cvtss2sd xmm0, xmm0
	movsd [esp+0x14], xmm0
	cvtss2sd xmm1, xmm1
	movsd [esp+0xc], xmm1
	lea eax, [ebp-0x224]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_sound_alia15
	mov dword [esp], 0x9
	call _Z14Com_PrintErroriPKcz
	jmp _Z22Com_LoadSoundAliasFilePKcS0_S0__260
_Z22Com_LoadSoundAliasFilePKcS0_S0__300:
	cvtss2sd xmm1, xmm1
	movsd [esp+0xc], xmm1
	lea eax, [ebp-0x224]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_sound_alia16
	mov dword [esp], 0x9
	call _Z14Com_PrintErroriPKcz
	jmp _Z22Com_LoadSoundAliasFilePKcS0_S0__260
_Z22Com_LoadSoundAliasFilePKcS0_S0__280:
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	lea eax, [ebp-0x224]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_sound_alia17
	mov dword [esp], 0x9
	call _Z14Com_PrintErroriPKcz
	jmp _Z22Com_LoadSoundAliasFilePKcS0_S0__260
_Z22Com_LoadSoundAliasFilePKcS0_S0__450:
	mov dword [esp+0x8], 0x2000
	mov dword [esp+0x4], 0x0
	lea edi, [ebp-0x2664]
	mov [esp], edi
	call memset
	mov eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], edi
	call _Z7FS_ReadPvii
	mov byte [ebp+ebx-0x2664], 0x0
	mov eax, [ebp-0x24]
	mov [esp], eax
	call _Z13FS_FCloseFilei
	lea edx, [ebp-0xc5]
	mov [esp], edx
	call _Z21Com_BeginParseSessionPKc
	mov [ebp-0x28], edi
	xor edi, edi
	mov esi, saLoadObjGlob+0x48
	xor ebx, ebx
_Z22Com_LoadSoundAliasFilePKcS0_S0__500:
	lea eax, [ebp-0x28]
	mov [esp], eax
	call _Z9Com_ParsePPKc
	movzx edx, byte [eax]
	test dl, dl
	jz _Z22Com_LoadSoundAliasFilePKcS0_S0__470
	cmp dl, 0x7d
	jz _Z22Com_LoadSoundAliasFilePKcS0_S0__470
	cmp edi, 0x20
	jz _Z22Com_LoadSoundAliasFilePKcS0_S0__480
	lea edx, [ebx+saLoadObjGlob+0x8]
	mov [ebp-0x2684], edx
	mov [esp+0x4], eax
	mov [esp], edx
	call strcpy
	lea eax, [ebp-0x28]
	mov [esp], eax
	call _Z9Com_ParsePPKc
	movzx edx, byte [eax]
	test dl, dl
	jz _Z22Com_LoadSoundAliasFilePKcS0_S0__490
	add esi, 0x44
	add ebx, 0x44
	cmp dl, 0x7d
	jz _Z22Com_LoadSoundAliasFilePKcS0_S0__490
	mov [esp], eax
	call atof
	fstp qword [ebp-0x2680]
	cvtsd2ss xmm0, [ebp-0x2680]
	movss [esi-0x44], xmm0
	add edi, 0x1
	jmp _Z22Com_LoadSoundAliasFilePKcS0_S0__500
_Z22Com_LoadSoundAliasFilePKcS0_S0__330:
	cvtss2sd xmm1, xmm1
	movsd [esp+0xc], xmm1
	lea eax, [ebp-0x224]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_sound_alia18
	mov dword [esp], 0x9
	call _Z14Com_PrintErroriPKcz
	jmp _Z22Com_LoadSoundAliasFilePKcS0_S0__260
_Z22Com_LoadSoundAliasFilePKcS0_S0__440:
	mov eax, [ebp-0x24]
	mov [esp], eax
	call _Z13FS_FCloseFilei
	lea edi, [ebp-0xc5]
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_error_s_does_not1
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z22Com_LoadSoundAliasFilePKcS0_S0__460
_Z22Com_LoadSoundAliasFilePKcS0_S0__490:
	call _Z19Com_EndParseSessionv
	mov edx, [ebp-0x2684]
	mov [esp+0xc], edx
	lea edi, [ebp-0xc5]
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_error_volumemodg
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z22Com_LoadSoundAliasFilePKcS0_S0__460
_Z22Com_LoadSoundAliasFilePKcS0_S0__480:
	call _Z19Com_EndParseSessionv
	mov dword [esp+0x10], 0x20
	mov dword [esp+0xc], 0x20
	lea edx, [ebp-0xc5]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_error_volumemodg1
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z22Com_LoadSoundAliasFilePKcS0_S0__460
_Z22Com_LoadSoundAliasFilePKcS0_S0__470:
	call _Z19Com_EndParseSessionv
	jmp _Z22Com_LoadSoundAliasFilePKcS0_S0__460
_Z22Com_LoadSoundAliasFilePKcS0_S0__160:
	mov eax, _cstring_null
	jmp _Z22Com_LoadSoundAliasFilePKcS0_S0__510
_Z22Com_LoadSoundAliasFilePKcS0_S0__40:
	lea edi, [ebp-0xc5]
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_error_could_not_1
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z22Com_LoadSoundAliasFilePKcS0_S0__460
_Z22Com_LoadSoundAliasFilePKcS0_S0__370:
	movaps xmm0, xmm2
	jmp _Z22Com_LoadSoundAliasFilePKcS0_S0__520
_Z22Com_LoadSoundAliasFilePKcS0_S0__360:
	movaps xmm0, xmm2
	jmp _Z22Com_LoadSoundAliasFilePKcS0_S0__530


;Com_LoadSoundAliasSounds(SoundFileInfo*)
_Z24Com_LoadSoundAliasSoundsP13SoundFileInfo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x13c
	mov eax, [ebp+0x8]
	mov ecx, [eax]
	test ecx, ecx
	jle _Z24Com_LoadSoundAliasSoundsP13SoundFileInfo_10
	xor edi, edi
	mov dword [ebp-0x11c], 0x0
	xor esi, esi
	jmp _Z24Com_LoadSoundAliasSoundsP13SoundFileInfo_20
_Z24Com_LoadSoundAliasSoundsP13SoundFileInfo_70:
	mov eax, snd_touchStreamFilesOnLoad
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z24Com_LoadSoundAliasSoundsP13SoundFileInfo_30
	mov eax, fs_copyfiles
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z24Com_LoadSoundAliasSoundsP13SoundFileInfo_40
_Z24Com_LoadSoundAliasSoundsP13SoundFileInfo_30:
	mov eax, [ebx+0x8]
	mov [esp+0x10], eax
	mov eax, [ebx+0x4]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_soundss
	mov dword [esp+0x4], 0x100
	lea eax, [ebp-0x118]
	mov [esp], eax
	call _Z11Com_sprintfPciPKcz
	lea eax, [ebp-0x118]
	mov [esp], eax
	call _Z12FS_TouchFilePKc
	mov [ebx+0x1], al
	test al, al
	jz _Z24Com_LoadSoundAliasSoundsP13SoundFileInfo_50
_Z24Com_LoadSoundAliasSoundsP13SoundFileInfo_40:
	add edi, 0x1
	add esi, 0xc
	mov eax, [ebp+0x8]
	cmp [eax], edi
	jle _Z24Com_LoadSoundAliasSoundsP13SoundFileInfo_60
_Z24Com_LoadSoundAliasSoundsP13SoundFileInfo_20:
	mov ebx, esi
	mov eax, [ebp+0x8]
	add ebx, [eax+0x4]
	cmp byte [ebx], 0x1
	jnz _Z24Com_LoadSoundAliasSoundsP13SoundFileInfo_70
	cmp byte [ebx+0x1], 0x0
	jnz _Z24Com_LoadSoundAliasSoundsP13SoundFileInfo_40
	add dword [ebp-0x11c], 0x1
	add edi, 0x1
	add esi, 0xc
	mov eax, [ebp+0x8]
	cmp [eax], edi
	jg _Z24Com_LoadSoundAliasSoundsP13SoundFileInfo_20
_Z24Com_LoadSoundAliasSoundsP13SoundFileInfo_60:
	mov eax, [ebp-0x11c]
	add esp, 0x13c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24Com_LoadSoundAliasSoundsP13SoundFileInfo_50:
	lea eax, [ebp-0x118]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_streamed_s
	mov dword [esp], 0x9
	call _Z14Com_PrintErroriPKcz
	jmp _Z24Com_LoadSoundAliasSoundsP13SoundFileInfo_40
_Z24Com_LoadSoundAliasSoundsP13SoundFileInfo_10:
	mov dword [ebp-0x11c], 0x0
	mov eax, [ebp-0x11c]
	add esp, 0x13c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Com_LoadVolumeFalloffCurve(char const*, SndCurve*)
_Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x208c
	mov eax, [ebp+0x8]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_soundaliasessvfc
	mov dword [esp+0x4], 0x40
	lea edx, [ebp-0x60]
	mov [esp], edx
	call _Z11Com_sprintfPciPKcz
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	lea eax, [ebp-0x60]
	mov [esp], eax
	call _Z16FS_FOpenFileReadPKcPi
	mov ebx, eax
	cmp eax, 0x0
	jl _Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve_10
	jz _Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve_20
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x8
	lea edx, [ebp-0x2060]
	mov [esp], edx
	call _Z7FS_ReadPvii
	mov byte [ebp-0x2058], 0x0
	mov edi, _cstring_sndcurve
	mov ecx, 0x8
	cld
	lea esi, [ebp-0x2060]
	repe cmpsb
	mov eax, 0x0
	jz _Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve_30
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve_30:
	test eax, eax
	jnz _Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve_40
	lea esi, [ebx-0x8]
	cmp esi, 0x1fff
	jg _Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve_50
	mov dword [esp+0x8], 0x2000
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x2060]
	mov [esp], eax
	call memset
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	lea edx, [ebp-0x2060]
	mov [esp], edx
	call _Z7FS_ReadPvii
	mov byte [ebp+esi-0x2060], 0x0
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z13FS_FCloseFilei
	lea eax, [ebp-0x2060]
	mov [ebp-0x20], eax
	lea edx, [ebp-0x60]
	mov [esp], edx
	call _Z21Com_BeginParseSessionPKc
	lea edi, [ebp-0x20]
	mov [esp], edi
	call _Z9Com_ParsePPKc
	mov [esp], eax
	call atoi
	mov edx, [ebp+0xc]
	mov [edx+0x4], eax
	cmp eax, 0x1
	jle _Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve_60
	cmp eax, 0x8
	jle _Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve_70
	call _Z19Com_EndParseSessionv
	mov dword [esp+0x10], 0x8
	mov edx, [ebp+0xc]
	mov eax, [edx+0x4]
	mov [esp+0xc], eax
	lea eax, [ebp-0x60]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_sndcurve_p
	mov dword [esp], 0x9
	call _Z14Com_PrintErroriPKcz
	xor eax, eax
	jmp _Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve_80
_Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve_20:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z13FS_FCloseFilei
	lea eax, [ebp-0x60]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_sndcurve_f
	mov dword [esp], 0x9
	call _Z14Com_PrintErroriPKcz
	xor eax, eax
_Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve_80:
	add esp, 0x208c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve_50:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z13FS_FCloseFilei
	lea edx, [ebp-0x60]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_error_s_is_too_l2
	mov dword [esp], 0x9
	call _Z14Com_PrintErroriPKcz
	xor eax, eax
	add esp, 0x208c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve_40:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z13FS_FCloseFilei
	lea eax, [ebp-0x60]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_s_does_not2
	mov dword [esp], 0x9
	call _Z14Com_PrintErroriPKcz
	xor eax, eax
	add esp, 0x208c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve_10:
	lea edx, [ebp-0x60]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_error_could_not_2
	mov dword [esp], 0x9
	call _Z14Com_PrintErroriPKcz
	xor eax, eax
	add esp, 0x208c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve_70:
	mov ebx, [ebp+0xc]
	xor esi, esi
	jmp _Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve_90
_Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve_130:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x2078]
	cvtsd2ss xmm0, [ebp-0x2078]
	movss [ebx+0x8], xmm0
	pxor xmm1, xmm1
	ucomiss xmm1, xmm0
	ja _Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve_100
	ucomiss xmm0, [_float_1_00000000]
	ja _Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve_100
	mov [esp], edi
	call _Z9Com_ParsePPKc
	movzx edx, byte [eax]
	test dl, dl
	jz _Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve_110
	cmp dl, 0x7d
	jz _Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve_110
	mov [esp], eax
	call atof
	fstp qword [ebp-0x2070]
	cvtsd2ss xmm0, [ebp-0x2070]
	movss [ebx+0xc], xmm0
	pxor xmm1, xmm1
	ucomiss xmm1, xmm0
	ja _Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve_120
	add ebx, 0x8
	ucomiss xmm0, [_float_1_00000000]
	ja _Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve_120
	add esi, 0x1
_Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve_90:
	mov [esp], edi
	call _Z9Com_ParsePPKc
	movzx edx, byte [eax]
	test dl, dl
	jz _Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve_110
	cmp dl, 0x7d
	jz _Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve_110
	cmp esi, 0x8
	jnz _Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve_130
	call _Z19Com_EndParseSessionv
	mov dword [esp+0x10], 0x8
	mov dword [esp+0xc], 0x8
	lea eax, [ebp-0x60]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_sndcurve_p1
	mov dword [esp], 0x9
	call _Z14Com_PrintErroriPKcz
	xor eax, eax
	jmp _Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve_80
_Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve_60:
	call _Z19Com_EndParseSessionv
	mov edx, [ebp+0xc]
	mov eax, [edx+0x4]
	mov [esp+0xc], eax
	lea eax, [ebp-0x60]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_sndcurve_p2
	mov dword [esp], 0x9
	call _Z14Com_PrintErroriPKcz
	xor eax, eax
	jmp _Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve_80
_Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve_110:
	call _Z19Com_EndParseSessionv
	mov edx, [ebp+0xc]
	mov eax, [edx+0x4]
	cmp eax, esi
	jz _Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve_140
	mov [esp+0x10], esi
	mov [esp+0xc], eax
	lea eax, [ebp-0x60]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_sndcurve_p3
	mov dword [esp], 0x9
	call _Z14Com_PrintErroriPKcz
	xor eax, eax
	jmp _Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve_80
_Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve_140:
	sub eax, 0x1
	pxor xmm1, xmm1
	ucomiss xmm1, [edx+0x8]
	jnz _Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve_150
	jp _Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve_150
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [edx+0xc]
	jnz _Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve_160
	jp _Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve_160
	ucomiss xmm0, [edx+eax*8+0x8]
	jnz _Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve_160
	jp _Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve_160
	ucomiss xmm1, [edx+eax*8+0xc]
	jnz _Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve_160
	jp _Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve_160
_Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve_180:
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov [edx], eax
	mov eax, 0x1
	jmp _Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve_80
_Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve_100:
	call _Z19Com_EndParseSessionv
	mov eax, [ebp+0xc]
	cvtss2sd xmm0, [eax+esi*8+0x8]
_Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve_170:
	movsd [esp+0xc], xmm0
	lea edx, [ebp-0x60]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_error_sndcurve_p4
	mov dword [esp], 0x9
	call _Z14Com_PrintErroriPKcz
	xor eax, eax
	jmp _Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve_80
_Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve_120:
	call _Z19Com_EndParseSessionv
	mov eax, [ebp+0xc]
	cvtss2sd xmm0, [eax+esi*8+0xc]
	jmp _Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve_170
_Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve_160:
	mov edx, [ebp+0xc]
_Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve_150:
	mov dword [edx+0x8], 0x0
	mov dword [edx+0xc], 0x3f800000
	mov dword [edx+eax*8+0x8], 0x3f800000
	mov dword [edx+eax*8+0xc], 0x0
	lea eax, [ebp-0x60]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning7_sndcurv
	mov dword [esp], 0x9
	call _Z16Com_PrintWarningiPKcz
	jmp _Z26Com_LoadVolumeFalloffCurvePKcP8SndCurve_180


;Com_MakeSoundAliasesPermanent(snd_alias_list_t*, SoundFileInfo*)
_Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov eax, [ebp+0xc]
	mov dword [eax], 0x0
	mov edx, [ebp+0x8]
	mov dword [edx+0x8], 0x0
	mov edx, [saLoadObjGlob+0x4]
	test edx, edx
	jnz _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_10
_Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_20:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_10:
	mov dword [esp], 0x1
	mov ecx, _Z16AliasNameCompareP17snd_alias_build_sS0_
	mov edx, saLoadObjGlob+0x4
	mov eax, [saLoadObjGlob]
	call _Z26Com_SortTempSoundAliases_rP17snd_alias_build_sPiPFiS0_S0_Eh
	mov [saLoadObjGlob], eax
	test eax, eax
	jz _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_20
	mov dword [esp], 0x0
	mov ecx, _Z19FileNameTypeCompareP17snd_alias_build_sS0_
	mov edx, saLoadObjGlob+0x4
	call _Z26Com_SortTempSoundAliases_rP17snd_alias_build_sPiPFiS0_S0_Eh
	mov ebx, eax
	mov [saLoadObjGlob], eax
	test eax, eax
	jz _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_20
	mov dword [ebp-0x40], 0x0
	mov dword [ebp-0x48], 0x0
	mov dword [ebp-0x50], 0x0
	mov dword [ebp-0x34], 0x0
_Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_70:
	lea ecx, [ebx+0x108]
	mov [ebp-0x24], ecx
	cld
	mov ecx, 0xffffffff
	mov edi, [ebp-0x24]
	xor eax, eax
	repne scasb
	mov esi, ecx
	not esi
	mov eax, [ebp-0x48]
	test eax, eax
	jz _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_30
	mov eax, [ebx+0x16c]
	mov edi, [ebp-0x48]
	cmp eax, [edi+0x16c]
	jz _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_40
_Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_30:
	xor edi, edi
	mov eax, [ebp-0x50]
	test eax, eax
	jz _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_50
_Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_280:
	mov edx, [ebp-0x24]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x50]
	mov [esp], ecx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_50
	mov eax, edi
	test al, al
	jz _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_60
	mov ecx, [ebp-0x48]
	mov [ebx+0x194], ecx
_Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_290:
	mov ebx, [ebx+0x198]
	test ebx, ebx
	jnz _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_70
	mov dword [esp], 0x1
	mov ecx, _Z16AliasNameCompareP17snd_alias_build_sS0_
	mov edx, saLoadObjGlob+0x4
	mov eax, [saLoadObjGlob]
	call _Z26Com_SortTempSoundAliases_rP17snd_alias_build_sPiPFiS0_S0_Eh
	mov esi, eax
	mov [saLoadObjGlob], eax
	test eax, eax
	jz _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_20
	mov dword [ebp-0x2c], 0x0
	mov dword [ebp-0x30], 0x0
_Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_110:
	lea edi, [esi+0x40]
	mov [ebp-0x28], edi
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	mov ebx, ecx
	not ebx
	mov eax, [ebp-0x2c]
	test eax, eax
	jz _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_80
	mov edi, [ebp-0x28]
	mov [esp+0x4], edi
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_90
_Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_80:
	add dword [ebp-0x30], 0x1
	add [ebp-0x40], ebx
	mov edx, [ebp-0x28]
	mov [ebp-0x2c], edx
_Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_90:
	mov edx, [esi+0x100]
	test edx, edx
	jz _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_100
	cld
	mov ecx, 0xffffffff
	mov edi, edx
	xor eax, eax
	repne scasb
	not ecx
	add [ebp-0x40], ecx
_Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_100:
	mov esi, [esi+0x198]
	test esi, esi
	jnz _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_110
	mov edx, [ebp-0x30]
	mov [esp], edx
	call _Z22Com_InitSoundAliasHashj
	mov dword [esp+0x8], 0xf
	mov dword [esp+0x4], _cstring__aliases
	mov edx, [saLoadObjGlob+0x4]
	lea eax, [edx+edx*2]
	shl eax, 0x3
	sub eax, edx
	shl eax, 0x2
	mov [esp], eax
	call _Z20Com_AllocSoundMemoryiPKci
	mov ecx, [ebp+0x8]
	mov [ecx+0x4], eax
	mov dword [esp+0x8], 0xf
	mov dword [esp+0x4], _cstring__sound_files
	mov edi, [ebp-0x34]
	lea eax, [edi+edi*2]
	shl eax, 0x2
	mov [esp], eax
	call _Z20Com_AllocSoundMemoryiPKci
	mov edx, [ebp+0xc]
	mov [edx+0x4], eax
	mov dword [esp+0x8], 0xf
	mov dword [esp+0x4], _cstring__strings
	mov ecx, [ebp-0x40]
	mov [esp], ecx
	call _Z20Com_AllocSoundMemoryiPKci
	mov [ebp-0x1c], eax
	mov esi, [saLoadObjGlob]
	test esi, esi
	jz _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_20
	mov dword [ebp-0x38], 0x0
	lea ebx, [esi+0x40]
	mov edx, [ebp-0x1c]
_Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_270:
	mov [esp+0x4], ebx
	mov [esp], edx
	call strcpy
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp-0x1c]
	repne scasb
	not ecx
	add ecx, [ebp-0x1c]
	mov [ebp-0x20], ecx
_Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_260:
	mov eax, [esi+0x100]
	test eax, eax
	jz _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_120
	mov [esp+0x4], eax
	mov edi, [ebp-0x20]
	mov [esp], edi
	call strcpy
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp-0x20]
	repne scasb
	not ecx
	add ecx, [ebp-0x20]
	mov [ebp-0x44], ecx
	mov eax, [ebp-0x20]
	mov [ebp-0x4c], eax
_Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_360:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x8]
	lea edx, [eax+eax*2]
	shl edx, 0x3
	sub edx, eax
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x4]
	lea ebx, [eax+edx*4]
	mov eax, [ebp-0x38]
	test eax, eax
	jz _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_130
	mov edi, [ebp-0x1c]
	mov [esp+0x4], edi
	mov edx, [ebp-0x38]
	mov eax, [edx+0x4]
	mov eax, [eax]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_140
_Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_130:
	mov dword [esp+0x8], 0xf
	mov dword [esp+0x4], _cstring__alias_list
	mov dword [esp], 0xc
	call _Z20Com_AllocSoundMemoryiPKci
	mov [ebp-0x38], eax
	mov [esp+0x4], eax
	mov ecx, [ebp-0x1c]
	mov [esp], ecx
	call _Z16Com_AddAliasListPKcP16snd_alias_list_t
	test al, al
	jz _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_150
	mov ecx, [ebp-0x1c]
	mov edx, [ebp-0x38]
	mov [edx], ecx
	mov [edx+0x4], ebx
_Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_140:
	mov eax, [esi+0x194]
	test eax, eax
	jz _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_160
	mov eax, [eax+0x148]
	mov [ebp-0x3c], eax
	mov edi, [ebp-0x44]
	mov [ebp-0x20], edi
	mov edi, eax
_Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_420:
	mov [esi+0x148], edi
	mov eax, [ebp-0x1c]
	mov [ebx], eax
	cmp byte [esi+0x80], 0x0
	jnz _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_170
	mov dword [ebx+0x8], 0x0
_Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_380:
	cmp byte [esi+0xc0], 0x0
	jnz _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_180
	mov dword [ebx+0xc], 0x0
_Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_370:
	mov ecx, [ebp-0x3c]
	mov [ebx+0x10], ecx
	mov edi, [ebp-0x4c]
	mov [ebx+0x4], edi
	mov dword [ebx+0x14], 0x0
	mov eax, [esi+0x14c]
	mov [ebx+0x18], eax
	mov eax, [esi+0x150]
	mov [ebx+0x1c], eax
	mov eax, [esi+0x158]
	mov [ebx+0x20], eax
	mov eax, [esi+0x15c]
	mov [ebx+0x24], eax
	mov eax, [esi+0x160]
	mov [ebx+0x28], eax
	mov eax, [esi+0x164]
	mov [ebx+0x2c], eax
	mov edx, [ebx+0x30]
	and dh, 0xc0
	mov eax, [esi+0x168]
	shl eax, 0x8
	or edx, eax
	mov [ebx+0x30], edx
	and dl, 0x3f
	mov eax, [esi+0x16c]
	shl eax, 0x6
	or edx, eax
	mov [ebx+0x30], edx
	mov eax, [esi+0x170]
	mov [ebx+0x48], eax
	mov eax, [esi+0x174]
	mov [ebx+0x58], eax
	cmp byte [esi+0x18c], 0x0
	jz _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_190
	or edx, 0x1
	mov [ebx+0x30], edx
_Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_350:
	cmp byte [esi+0x191], 0x0
	jz _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_200
	mov edx, [ebx+0x30]
	or edx, 0x20
	mov [ebx+0x30], edx
_Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_340:
	cmp byte [esi+0x18d], 0x0
	jz _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_210
	or edx, 0x2
	mov [ebx+0x30], edx
_Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_330:
	cmp byte [esi+0x18e], 0x0
	jz _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_220
	or edx, 0x4
	mov [ebx+0x30], edx
_Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_320:
	cmp byte [esi+0x18f], 0x0
	jz _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_230
	or edx, 0x8
	mov [ebx+0x30], edx
_Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_310:
	cmp byte [esi+0x190], 0x0
	jz _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_240
	or edx, 0x10
	mov [ebx+0x30], edx
_Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_300:
	mov eax, [esi+0x178]
	mov [ebx+0x34], eax
	mov eax, [esi+0x17c]
	mov [ebx+0x38], eax
	mov eax, [esi+0x180]
	mov [ebx+0x3c], eax
	mov eax, [esi+0x184]
	mov [ebx+0x40], eax
	mov eax, [esi+0x188]
	mov [ebx+0x44], eax
	mov eax, [ebp+0x8]
	add dword [eax+0x8], 0x1
	mov edx, [ebp-0x38]
	add dword [edx+0x8], 0x1
_Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_390:
	mov esi, [esi+0x198]
	test esi, esi
	jz _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_20
	mov eax, [ebp-0x1c]
	test eax, eax
	jz _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_250
	lea ebx, [esi+0x40]
	mov [esp+0x4], ebx
	mov edi, [ebp-0x1c]
	mov [esp], edi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_260
	mov eax, [ebp-0x20]
	mov [ebp-0x1c], eax
	mov edx, eax
	jmp _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_270
_Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_40:
	mov edi, 0x1
	mov eax, [ebp-0x50]
	test eax, eax
	jnz _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_280
_Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_50:
	mov dword [ebx+0x194], 0x0
	add [ebp-0x40], esi
	add dword [ebp-0x34], 0x1
	mov [ebp-0x48], ebx
	mov edx, [ebp-0x24]
	mov [ebp-0x50], edx
	jmp _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_290
_Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_60:
	mov eax, _cstring_loaded
	mov edx, _cstring_streamed
	cmp dword [ebx+0x16c], 0x2
	mov ecx, edx
	cmovnz ecx, eax
	mov edi, [ebp-0x48]
	cmp dword [edi+0x16c], 0x2
	cmovnz edx, eax
	mov eax, edi
	add eax, 0x40
	mov [esp+0x18], eax
	mov [esp+0x14], edx
	lea eax, [ebx+0x40]
	mov [esp+0x10], eax
	mov [esp+0xc], ecx
	mov eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_sound_fi
	mov dword [esp], 0x9
	call _Z16Com_PrintWarningiPKcz
	mov dword [ebx+0x194], 0x0
	add [ebp-0x40], esi
	add dword [ebp-0x34], 0x1
	mov [ebp-0x48], ebx
	mov edx, [ebp-0x24]
	mov [ebp-0x50], edx
	jmp _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_290
_Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_240:
	and edx, 0xffffffef
	mov [ebx+0x30], edx
	jmp _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_300
_Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_230:
	and edx, 0xfffffff7
	mov [ebx+0x30], edx
	jmp _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_310
_Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_220:
	and edx, 0xfffffffb
	mov [ebx+0x30], edx
	jmp _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_320
_Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_210:
	and edx, 0xfffffffd
	mov [ebx+0x30], edx
	jmp _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_330
_Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_200:
	mov edx, [ebx+0x30]
	and edx, 0xffffffdf
	mov [ebx+0x30], edx
	jmp _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_340
_Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_190:
	and edx, 0xfffffffe
	mov [ebx+0x30], edx
	jmp _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_350
_Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_120:
	mov ecx, [ebp-0x20]
	mov [ebp-0x44], ecx
	mov dword [ebp-0x4c], 0x0
	jmp _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_360
_Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_180:
	lea ecx, [esi+0xc0]
	mov [ebp-0x5c], ecx
	mov dword [esp+0x8], 0xf
	mov dword [esp+0x4], _cstring__chain_alias_str
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp-0x5c]
	repne scasb
	not ecx
	mov [esp], ecx
	call _Z20Com_AllocSoundMemoryiPKci
	mov [ebx+0xc], eax
	mov edx, [ebp-0x5c]
	mov [esp+0x4], edx
	mov [esp], eax
	call strcpy
	jmp _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_370
_Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_170:
	lea edx, [esi+0x80]
	mov [ebp-0x5c], edx
	mov dword [esp+0x8], 0xf
	mov dword [esp+0x4], _cstring__secondary_alias
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, edx
	repne scasb
	not ecx
	mov [esp], ecx
	call _Z20Com_AllocSoundMemoryiPKci
	mov [ebx+0x8], eax
	mov edx, [ebp-0x5c]
	mov [esp+0x4], edx
	mov [esp], eax
	call strcpy
	jmp _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_380
_Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_150:
	mov edi, [ebp-0x1c]
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_error_alias_s_al
	mov dword [esp], 0x9
	call _Z14Com_PrintErroriPKcz
	mov eax, [ebp-0x44]
	mov [ebp-0x20], eax
	mov dword [ebp-0x38], 0x0
	jmp _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_390
_Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_160:
	lea eax, [esi+0x108]
	mov [esp+0x4], eax
	mov eax, [ebp-0x44]
	mov [esp], eax
	call strcpy
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp-0x44]
	repne scasb
	not ecx
	add ecx, [ebp-0x44]
	mov [ebp-0x20], ecx
	mov edx, [ebp+0xc]
	mov eax, [edx]
	lea eax, [eax+eax*2]
	mov edx, [edx+0x4]
	lea eax, [edx+eax*4]
	mov [ebp-0x3c], eax
	mov eax, [esi+0x16c]
	mov edi, [ebp-0x3c]
	mov [edi], al
	sub eax, 0x1
	jz _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_400
	mov ecx, [ebp-0x3c]
	mov byte [ecx+0x1], 0x1
	mov edi, [ebp-0x44]
	mov [esp], edi
	call _Z24Com_GetFilenameSubStringPKc
	cmp edi, eax
	jz _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_410
	mov byte [eax-0x1], 0x0
	mov edi, [ebp-0x44]
_Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_450:
	mov edx, [ebp-0x3c]
	mov [edx+0x4], edi
	mov [edx+0x8], eax
_Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_440:
	mov ecx, [ebp+0xc]
	add dword [ecx], 0x1
	mov edi, [ebp-0x3c]
	jmp _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_420
_Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_250:
	lea ebx, [esi+0x40]
	mov eax, [ebp-0x20]
	mov [ebp-0x1c], eax
	mov edx, eax
	jmp _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_270
_Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_400:
	mov eax, [ebp-0x44]
	mov [esp], eax
	call _Z8I_strlwrPc
	mov edx, [ebp-0x44]
	mov [esp], edx
	call _Z17SND_LoadSoundFilePKc
	mov [edi+0x4], eax
	test eax, eax
	jz _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_430
	mov byte [edi+0x1], 0x1
	jmp _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_440
_Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_410:
	mov edi, _cstring_null
	jmp _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_450
_Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_430:
	mov ecx, [ebp-0x3c]
	mov byte [ecx+0x1], 0x0
	mov dword [esp+0x8], 0xf
	mov dword [esp+0x4], _cstring__loaded
	mov dword [esp], 0x2c
	call _Z20Com_AllocSoundMemoryiPKci
	mov edi, [ebp-0x3c]
	mov [edi+0x4], eax
	mov edx, [ebp-0x44]
	mov [eax], edx
	jmp _Z29Com_MakeSoundAliasesPermanentP16snd_alias_list_tP13SoundFileInfo_440
	nop


;Com_WriteLocalizedSoundAliasFiles()
_Z33Com_WriteLocalizedSoundAliasFilesv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x24c
	lea ebx, [ebp-0x11c]
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_null
	mov dword [esp+0x4], _cstring_source_datastrin
	mov eax, fs_homepath
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp], eax
	call _Z14FS_BuildOSPathPKcS0_S0_Pc
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	mov byte [ecx+ebp-0x11e], 0x0
	mov dword [esp+0x4], _cstring_r
	mov [esp], ebx
	call fopen
	test eax, eax
	jz _Z33Com_WriteLocalizedSoundAliasFilesv_10
	mov [esp], eax
	call fclose
	lea eax, [ebp-0x21c]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_soundaliasessubt
	mov eax, fs_gamedir
	mov [esp+0x4], eax
	mov eax, fs_basepath
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp], eax
	call _Z14FS_BuildOSPathPKcS0_S0_Pc
	lea eax, [ebp-0x21c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z11FS_CopyFilePcS_
	mov dword [esp], _cstring_soundaliasessubt
	call _Z13FS_FileExistsPKc
	test eax, eax
	jz _Z33Com_WriteLocalizedSoundAliasFilesv_20
	mov dword [esp+0x4], _cstring_localizing_sound
	mov dword [esp], 0x9
	call _Z10Com_PrintfiPKcz
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_writing_to_strin
	mov dword [esp], 0x9
	call _Z10Com_PrintfiPKcz
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
	jnz _Z33Com_WriteLocalizedSoundAliasFilesv_30
	mov dword [esp+0x4], _cstring_warning_cant_fin
	mov dword [esp], 0x9
	call _Z16Com_PrintWarningiPKcz
	add esp, 0x24c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z33Com_WriteLocalizedSoundAliasFilesv_20:
	mov dword [esp+0x8], _cstring_soundaliasessubt
	mov dword [esp+0x4], _cstring_warning_could_no1
	mov dword [esp], 0x9
	call _Z16Com_PrintWarningiPKcz
	add esp, 0x24c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z33Com_WriteLocalizedSoundAliasFilesv_30:
	call Hunk_HideTempMemory
	mov [ebp-0x22c], eax
	mov ecx, [ebp-0x1c]
	test ecx, ecx
	jg _Z33Com_WriteLocalizedSoundAliasFilesv_40
_Z33Com_WriteLocalizedSoundAliasFilesv_100:
	mov [esp], eax
	call Hunk_ShowTempMemory
	mov dword [esp+0x4], 0xa
	mov [esp], esi
	call FS_FreeFileList
	lea eax, [ebp-0x21c]
	mov [esp], eax
	call FS_FileOpenReadBinary
	mov edi, eax
	test eax, eax
	jz _Z33Com_WriteLocalizedSoundAliasFilesv_50
	mov [esp], eax
	call FS_FileGetFileSize
	mov esi, eax
	mov [esp], eax
	call malloc
	mov [ebp-0x230], eax
	mov [esp+0x8], edi
	mov [esp+0x4], esi
	mov [esp], eax
	call FS_FileRead
	cmp esi, eax
	jz _Z33Com_WriteLocalizedSoundAliasFilesv_60
	mov dword [esp+0x4], _cstring_short_read_in_co
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
_Z33Com_WriteLocalizedSoundAliasFilesv_60:
	mov [esp], edi
	call FS_FileClose
	mov [esp], ebx
	call FS_FileOpenWriteBinary
	mov ebx, eax
	test eax, eax
	jz _Z33Com_WriteLocalizedSoundAliasFilesv_70
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov eax, [ebp-0x230]
	mov [esp], eax
	call FS_FileWrite
	cmp esi, eax
	jz _Z33Com_WriteLocalizedSoundAliasFilesv_80
	mov dword [esp+0x4], _cstring_short_write_in_c
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
_Z33Com_WriteLocalizedSoundAliasFilesv_80:
	mov [esp], ebx
	call FS_FileClose
_Z33Com_WriteLocalizedSoundAliasFilesv_70:
	mov eax, [ebp-0x230]
	mov [esp], eax
	call free
_Z33Com_WriteLocalizedSoundAliasFilesv_50:
	lea eax, [ebp-0x21c]
	mov [esp], eax
	call _Z9FS_RemovePKc
	mov dword [esp+0x4], _cstring_done
	mov dword [esp], 0x9
	call _Z10Com_PrintfiPKcz
	add esp, 0x24c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z33Com_WriteLocalizedSoundAliasFilesv_40:
	xor edi, edi
_Z33Com_WriteLocalizedSoundAliasFilesv_90:
	lea eax, [ebp-0x21c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_all_mp
	mov eax, [esi+edi*4]
	mov [esp], eax
	call _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0_
	call Hunk_ClearTempMemory
	add edi, 0x1
	cmp edi, [ebp-0x1c]
	jl _Z33Com_WriteLocalizedSoundAliasFilesv_90
	mov eax, [ebp-0x22c]
	jmp _Z33Com_WriteLocalizedSoundAliasFilesv_100
_Z33Com_WriteLocalizedSoundAliasFilesv_10:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_warning_can_not_
	mov dword [esp], 0x9
	call _Z16Com_PrintWarningiPKcz
	add esp, 0x24c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Com_InitDefaultSoundAliasSpeakerMap(SpeakerMapInfo*)
_Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov edx, [ebp+0x8]
	mov dword [edx+0x48], 0x2
	mov dword [edx+0x110], 0x2
	mov dword [edx+0xac], 0x6
	mov dword [edx+0x174], 0x6
	mov [edx+0x44], edx
	mov byte [edx+0x40], 0x1
	lea eax, [edx+0x4c]
	mov ecx, [eax+0x4]
	test ecx, ecx
	jle _Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_10
_Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_470:
	mov ebx, 0x3f000000
	mov [eax+0x8], ebx
	mov dword [edx+0x4c], 0x0
	lea eax, [edx+0x5c]
	mov esi, [eax+0x4]
	test esi, esi
	jle _Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_20
_Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_460:
	mov [eax+0x8], ebx
	mov dword [edx+0x5c], 0x1
	lea eax, [edx+0x114]
	mov ecx, [eax+0x4]
	test ecx, ecx
	jle _Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_30
_Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_450:
	mov esi, 0x3f800000
	mov [eax+0x8], esi
	mov dword [edx+0x114], 0x0
	cmp dword [eax+0x4], 0x1
	jle _Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_40
_Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_440:
	xor ecx, ecx
	mov [eax+0xc], ecx
	mov dword [edx+0x114], 0x0
	lea eax, [edx+0x124]
	cmp dword [eax+0x4], 0x0
	jle _Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_50
_Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_430:
	mov [eax+0x8], ecx
	mov dword [edx+0x124], 0x1
	cmp dword [eax+0x4], 0x1
	jle _Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_60
_Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_420:
	mov [eax+0xc], esi
	mov dword [edx+0x124], 0x1
	lea eax, [edx+0xb0]
	mov esi, [eax+0x4]
	test esi, esi
	jle _Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_70
_Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_410:
	mov [eax+0x8], ebx
	mov dword [edx+0xb0], 0x0
	lea eax, [edx+0xc0]
	mov esi, [eax+0x4]
	test esi, esi
	jle _Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_80
_Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_400:
	mov [eax+0x8], ebx
	mov dword [edx+0xc0], 0x1
	lea eax, [edx+0xd0]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jle _Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_90
_Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_390:
	mov [eax+0x8], ecx
	mov dword [edx+0xd0], 0x2
	lea eax, [edx+0xe0]
	mov esi, [eax+0x4]
	test esi, esi
	jle _Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_100
_Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_380:
	mov [eax+0x8], ecx
	mov dword [edx+0xe0], 0x3
	lea eax, [edx+0xf0]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jle _Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_110
_Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_370:
	mov [eax+0x8], ecx
	mov dword [edx+0xf0], 0x4
	lea eax, [edx+0x100]
	mov esi, [eax+0x4]
	test esi, esi
	jle _Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_120
_Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_360:
	mov [eax+0x8], ecx
	mov dword [edx+0x100], 0x5
	lea ecx, [edx+0x174]
	lea eax, [edx+0x178]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jle _Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_130
_Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_350:
	mov dword [eax+0x8], 0x3f800000
	mov dword [edx+0x178], 0x0
	cmp dword [eax+0x4], 0x1
	jle _Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_140
_Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_340:
	mov dword [eax+0xc], 0x0
	mov dword [edx+0x178], 0x0
	lea eax, [edx+0x188]
	mov esi, [eax+0x4]
	test esi, esi
	jle _Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_150
_Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_330:
	mov dword [eax+0x8], 0x0
	mov dword [edx+0x188], 0x1
	cmp dword [eax+0x4], 0x1
	jle _Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_160
_Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_320:
	mov dword [eax+0xc], 0x3f800000
	mov dword [edx+0x188], 0x1
	lea eax, [edx+0x198]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jle _Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_170
_Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_310:
	mov dword [eax+0x8], 0x0
	mov dword [edx+0x198], 0x2
	cmp dword [eax+0x4], 0x1
	jle _Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_180
_Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_300:
	mov dword [eax+0xc], 0x0
	mov dword [edx+0x198], 0x2
	lea eax, [edx+0x1a8]
	mov esi, [eax+0x4]
	test esi, esi
	jle _Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_190
_Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_290:
	mov dword [eax+0x8], 0x0
	mov dword [edx+0x1a8], 0x3
	cmp dword [eax+0x4], 0x1
	jle _Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_200
_Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_280:
	mov dword [eax+0xc], 0x0
	mov dword [edx+0x1a8], 0x3
	lea eax, [edx+0x1b8]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jle _Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_210
_Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_270:
	mov dword [eax+0x8], 0x0
	mov dword [edx+0x1b8], 0x4
	cmp dword [eax+0x4], 0x1
	jle _Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_220
_Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_260:
	mov dword [eax+0xc], 0x0
	mov dword [edx+0x1b8], 0x4
	lea eax, [ecx+0x54]
	mov edx, [eax+0x4]
	test edx, edx
	jle _Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_230
_Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_250:
	mov dword [eax+0x8], 0x0
	mov dword [ecx+0x54], 0x5
	cmp dword [eax+0x4], 0x1
	jg _Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_240
	mov dword [eax+0x4], 0x2
_Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_240:
	mov dword [eax+0xc], 0x0
	mov dword [ecx+0x54], 0x5
	pop ebx
	pop esi
	pop ebp
	ret
_Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_230:
	mov dword [eax+0x4], 0x1
	jmp _Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_250
_Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_220:
	mov dword [eax+0x4], 0x2
	jmp _Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_260
_Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_210:
	mov dword [eax+0x4], 0x1
	jmp _Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_270
_Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_200:
	mov dword [eax+0x4], 0x2
	jmp _Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_280
_Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_190:
	mov dword [eax+0x4], 0x1
	jmp _Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_290
_Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_180:
	mov dword [eax+0x4], 0x2
	jmp _Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_300
_Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_170:
	mov dword [eax+0x4], 0x1
	jmp _Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_310
_Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_160:
	mov dword [eax+0x4], 0x2
	jmp _Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_320
_Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_150:
	mov dword [eax+0x4], 0x1
	jmp _Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_330
_Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_140:
	mov dword [eax+0x4], 0x2
	jmp _Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_340
_Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_130:
	mov dword [eax+0x4], 0x1
	jmp _Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_350
_Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_120:
	mov dword [eax+0x4], 0x1
	jmp _Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_360
_Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_110:
	mov dword [eax+0x4], 0x1
	jmp _Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_370
_Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_100:
	mov dword [eax+0x4], 0x1
	jmp _Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_380
_Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_90:
	mov dword [eax+0x4], 0x1
	jmp _Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_390
_Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_80:
	mov dword [eax+0x4], 0x1
	jmp _Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_400
_Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_70:
	mov dword [eax+0x4], 0x1
	jmp _Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_410
_Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_60:
	mov dword [eax+0x4], 0x2
	jmp _Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_420
_Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_50:
	mov dword [eax+0x4], 0x1
	jmp _Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_430
_Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_40:
	mov dword [eax+0x4], 0x2
	jmp _Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_440
_Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_30:
	mov dword [eax+0x4], 0x1
	jmp _Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_450
_Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_20:
	mov dword [eax+0x4], 0x1
	jmp _Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_460
_Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_10:
	mov dword [eax+0x4], 0x1
	jmp _Z35Com_InitDefaultSoundAliasSpeakerMapP14SpeakerMapInfo_470


;Com_ProcessSoundAliasFileLocalization(char const*, char const*, char const*)
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x845c
	mov eax, [ebp+0x8]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_soundaliasess
	mov dword [esp+0x4], 0x100
	lea edx, [ebp-0x545]
	mov [esp], edx
	call _Z11Com_sprintfPciPKcz
	lea ebx, [ebp-0x245]
	mov [esp+0xc], ebx
	lea ecx, [ebp-0x545]
	mov [esp+0x8], ecx
	mov eax, fs_gamedir
	mov [esp+0x4], eax
	mov eax, fs_basepath
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp], eax
	call _Z14FS_BuildOSPathPKcS0_S0_Pc
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_processing_sound
	mov dword [esp], 0x9
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x4], _cstring_r
	mov [esp], ebx
	call fopen
	test eax, eax
	jz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__10
	mov [esp], eax
	call fclose
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	lea edi, [ebp-0x545]
	mov [esp], edi
	call FS_ReadFile
	test eax, eax
	js _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__20
	mov dword [esp], _cstring_soundaliasestemp
	call _Z17FS_FOpenFileWritePKc
	mov [ebp-0x8414], eax
	test eax, eax
	jz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__30
	lea edx, [ebp-0x545]
	mov [esp], edx
	call _Z21Com_BeginParseSessionPKc
	mov dword [esp], 0x1
	call _Z10Com_SetCSVi
	mov eax, [ebp-0x20]
	mov [ebp-0x28], eax
	mov dword [ebp-0x841c], 0x0
	mov dword [ebp-0x8418], 0x0
	mov ecx, eax
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__210:
	mov [ebp-0x8434], ecx
	mov eax, ecx
	test ecx, ecx
	jz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__40
	cmp byte [ecx], 0xd
	jz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__50
	mov edi, [ebp-0x8434]
	cmp byte [edi], 0xa
	jz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__60
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__160:
	lea ecx, [ebp-0x28]
	mov [esp], ecx
	call _Z9Com_ParsePPKc
	mov [ebp-0x8440], eax
	mov edx, [ebp-0x28]
	test edx, edx
	jz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__40
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__170:
	mov dword [esp+0x4], _cstring_chateau
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	mov edi, [ebp-0x8440]
	movzx eax, byte [edi]
	test al, al
	jz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__70
	cmp al, 0x23
	jz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__70
	mov eax, [ebp-0x841c]
	test eax, eax
	jnz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__80
	mov dword [ebp-0x8410], 0x0
	mov dword [ebp-0x840c], 0x0
	mov dword [ebp-0x83fc], 0x1
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__150:
	mov edx, [ebp-0x83fc]
	lea eax, [ebp+edx*4-0xbe4]
	lea ecx, [eax-0x4]
	mov [ebp-0x83f8], ecx
	mov dword [eax-0x4], 0x0
	mov esi, 0x1
	mov ebx, g_pszSndAliasKeyNames
	jmp _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__90
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__110:
	add esi, 0x1
	add ebx, 0x4
	cmp esi, 0x1d
	jz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__100
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__90:
	mov edi, [ebp-0x8440]
	mov [esp+0x4], edi
	mov eax, [ebx+0x4]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__110
	mov eax, [ebp-0x83f8]
	mov [eax], esi
	cmp esi, 0x1
	jz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__120
	cmp esi, 0x3
	jz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__130
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__100:
	mov edx, [ebp-0x83fc]
	mov [ebp-0x841c], edx
	cmp edx, 0x100
	jz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__140
	mov eax, [ebp-0x28]
	test eax, eax
	jz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__140
	add edx, 0x1
	mov [ebp-0x83fc], edx
	cmp byte [eax], 0xa
	jz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__140
	lea ecx, [ebp-0x28]
	mov [esp], ecx
	call _Z15Com_ParseOnLinePPKc
	mov [ebp-0x8440], eax
	jmp _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__150
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__30:
	mov dword [esp+0x8], _cstring_soundaliasestemp
	mov dword [esp+0x4], _cstring_warning_could_no2
	mov dword [esp], 0x9
	call _Z16Com_PrintWarningiPKcz
	add esp, 0x845c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__50:
	add eax, 0x1
	mov [ebp-0x28], eax
	cmp byte [eax], 0xd
	jz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__50
	mov [ebp-0x8434], eax
	mov edi, eax
	cmp byte [edi], 0xa
	jnz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__160
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__60:
	mov eax, edi
	add eax, 0x1
	mov [ebp-0x28], eax
	mov eax, [ebp-0x8414]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2
	mov dword [esp], _cstring_1
	call _Z8FS_WritePKvii
	mov edx, [ebp-0x28]
	mov [ebp-0x8434], edx
	lea ecx, [ebp-0x28]
	mov [esp], ecx
	call _Z9Com_ParsePPKc
	mov [ebp-0x8440], eax
	mov edx, [ebp-0x28]
	test edx, edx
	jnz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__170
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__40:
	call _Z19Com_EndParseSessionv
	mov edi, [ebp-0x8414]
	mov [esp], edi
	call _Z13FS_FCloseFilei
	lea edi, [ebp-0x345]
	mov [esp+0xc], edi
	mov dword [esp+0x8], _cstring_soundaliasestemp
	mov ebx, fs_gamedir
	mov [esp+0x4], ebx
	mov esi, fs_basepath
	mov eax, [esi]
	mov eax, [eax+0xc]
	mov [esp], eax
	call _Z14FS_BuildOSPathPKcS0_S0_Pc
	lea eax, [ebp-0x445]
	mov [esp+0xc], eax
	lea edx, [ebp-0x545]
	mov [esp+0x8], edx
	mov [esp+0x4], ebx
	mov eax, [esi]
	mov eax, [eax+0xc]
	mov [esp], eax
	call _Z14FS_BuildOSPathPKcS0_S0_Pc
	mov eax, [ebp-0x8418]
	test eax, eax
	jnz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__180
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__500:
	mov [esp], edi
	call _Z9FS_RemovePKc
	mov edi, [ebp-0x8418]
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_localized_i_soun
	mov dword [esp], 0x9
	call _Z10Com_PrintfiPKcz
	add esp, 0x845c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__120:
	mov dword [ebp-0x8410], 0x1
	jmp _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__100
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__140:
	mov eax, [ebp-0x8410]
	test eax, eax
	jz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__190
	mov edi, [ebp-0x840c]
	test edi, edi
	jnz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__70
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__190:
	mov edi, [ebp+0x8]
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_sound_alias_file1
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__70:
	lea eax, [ebp-0x28]
	mov [esp], eax
	call _Z18Com_SkipRestOfLinePPKc
	mov edx, [ebp-0x8434]
	cmp byte [edx], 0xa
	jz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__200
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__430:
	mov edi, [ebp-0x8414]
	mov [esp+0x8], edi
	mov eax, [ebp-0x28]
	sub eax, [ebp-0x8434]
	mov [esp+0x4], eax
	mov eax, [ebp-0x8434]
	mov [esp], eax
	call _Z8FS_WritePKvii
	mov ecx, [ebp-0x28]
	jmp _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__210
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__130:
	mov dword [ebp-0x840c], 0x1
	jmp _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__100
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__80:
	cld
	mov ecx, 0x7
	lea edi, [ebp-0x45]
	xor eax, eax
	rep stosd
	stosb
	mov ecx, _cstring_menu
	mov edx, [ebp+0x8]
	lea eax, [ebp-0x7e4]
	call _Z26Com_LoadSoundAliasDefaultsP17snd_alias_build_sPKcS2_
	xor esi, esi
	mov eax, [ebp-0x8440]
	jmp _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__220
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__240:
	add esi, 0x1
	cmp [ebp-0x841c], esi
	jz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__230
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__250:
	lea edx, [ebp-0x28]
	mov [esp], edx
	call _Z15Com_ParseOnLinePPKc
	mov [ebp-0x8440], eax
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__220:
	mov ebx, [ebp+esi*4-0xbe4]
	mov [esp+0x4], eax
	mov eax, ebx
	shl eax, 0xa
	lea edx, [ebp-0x83e4]
	lea eax, [edx+eax]
	mov [esp], eax
	call strcpy
	mov ecx, [ebp-0x8440]
	cmp byte [ecx], 0x0
	jz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__240
	lea edi, [ebp-0x7e4]
	mov [esp+0xc], edi
	lea eax, [ebp-0x45]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], ecx
	mov ecx, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov eax, _cstring_menu
	call _Z23Com_LoadSoundAliasFieldPKcS0_S0_S0_19snd_alias_members_tPcP17snd_alias_build_s
	add esi, 0x1
	cmp [ebp-0x841c], esi
	jnz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__250
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__230:
	cmp byte [ebp-0x44], 0x0
	jz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__260
	cmp byte [ebp-0x42], 0x0
	jz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__260
	cmp byte [ebp-0x41], 0x0
	jz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__270
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__420:
	cld
	mov ecx, 0xffffffff
	lea edi, [ebp-0x73e4]
	xor eax, eax
	repne scasb
	not ecx
	sub ecx, 0x1
	test ecx, ecx
	jle _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__280
	xor ebx, ebx
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__310:
	movzx edx, byte [ebp+ebx-0x73e4]
	lea eax, [edx-0x41]
	cmp al, 0x19
	jbe _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__290
	lea eax, [edx-0x30]
	cmp al, 0x9
	jbe _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__290
	cmp dl, 0x5f
	jnz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__300
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__290:
	add ebx, 0x1
	cmp ecx, ebx
	jnz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__310
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__280:
	mov dword [esp+0x8], 0x9
	mov dword [esp+0x4], _cstring_subtitle_
	lea eax, [ebp-0x73e4]
	mov [esp], eax
	call _Z9I_strncmpPKcS0_i
	test eax, eax
	jz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__320
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__300:
	mov ebx, [ebp-0x841c]
	test ebx, ebx
	jle _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__330
	mov dword [ebp-0x83f4], 0x0
	mov edi, [ebp-0x83f4]
	jmp _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__340
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__390:
	cmp byte [ebp+edx-0x45], 0x0
	jz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__350
	cmp edx, 0x4
	jz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__360
	mov eax, [ebp-0x841c]
	sub eax, 0x1
	cmp [ebp-0x83f4], eax
	jz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__370
	shl edx, 0xa
	lea ebx, [ebp-0x83e4]
	add ebx, edx
	mov dword [esp+0x4], 0x2c
	mov [esp], ebx
	call strchr
	test eax, eax
	jz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__380
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__530:
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_s1
	call _Z2vaPKcz
	mov ebx, eax
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__520:
	mov edx, [ebp-0x8414]
	mov [esp+0x8], edx
	cld
	mov ecx, 0xffffffff
	mov edi, ebx
	xor eax, eax
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [esp+0x4], ecx
	mov [esp], ebx
	call _Z8FS_WritePKvii
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__400:
	add dword [ebp-0x83f4], 0x1
	mov edx, [ebp-0x83f4]
	cmp [ebp-0x841c], edx
	jz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__330
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__410:
	mov edi, edx
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__340:
	mov edx, [ebp+edi*4-0xbe4]
	test edx, edx
	jnz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__390
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__350:
	mov eax, [ebp-0x841c]
	sub eax, 0x1
	cmp [ebp-0x83f4], eax
	jz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__400
	mov eax, [ebp-0x8414]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_2
	call _Z8FS_WritePKvii
	add dword [ebp-0x83f4], 0x1
	mov edx, [ebp-0x83f4]
	cmp [ebp-0x841c], edx
	jnz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__410
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__330:
	mov ecx, [ebp-0x8414]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x2
	mov dword [esp], _cstring_1
	call _Z8FS_WritePKvii
	lea edi, [ebp-0x28]
	mov [esp], edi
	call _Z18Com_SkipRestOfLinePPKc
	mov ecx, [ebp-0x28]
	jmp _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__210
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__260:
	mov ecx, [ebp+0x8]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_sound_alias_file2
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	cmp byte [ebp-0x41], 0x0
	jnz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__420
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__270:
	lea eax, [ebp-0x28]
	mov [esp], eax
	call _Z18Com_SkipRestOfLinePPKc
	mov edx, [ebp-0x8414]
	mov [esp+0x8], edx
	mov eax, [ebp-0x28]
	sub eax, [ebp-0x8434]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x8434]
	mov [esp], ecx
	call _Z8FS_WritePKvii
	mov ecx, [ebp-0x28]
	jmp _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__210
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__200:
	mov ecx, [ebp-0x8414]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_3
	call _Z8FS_WritePKvii
	jmp _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__430
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__10:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_warning_can_not_1
	mov dword [esp], 0x9
	call _Z16Com_PrintWarningiPKcz
	add esp, 0x845c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__320:
	mov dword [esp+0x8], 0x9
	mov dword [esp+0x4], _cstring_subtitle_
	lea edx, [ebp-0x73e4]
	mov [esp], edx
	call _Z9I_strncmpPKcS0_i
	test eax, eax
	jnz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__300
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_soundaliasessubt
	call FS_ReadFile
	test eax, eax
	js _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__440
	mov dword [esp], _cstring_soundaliasessubt
	call _Z21Com_BeginParseSessionPKc
	mov eax, [ebp-0x24]
	mov [ebp-0x1c], eax
	lea ebx, [ebp-0x1c]
	jmp _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__450
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__490:
	mov edi, _cstring_reference
	mov ecx, 0xa
	cld
	mov esi, eax
	repe cmpsb
	mov edx, 0x0
	jz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__460
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__460:
	test edx, edx
	jnz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__470
	mov [esp], ebx
	call _Z15Com_ParseOnLinePPKc
	mov [esp+0x4], eax
	lea ecx, [ebp-0x73db]
	mov [esp], ecx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__480
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__470:
	mov [esp], ebx
	call _Z18Com_SkipRestOfLinePPKc
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__450:
	mov [esp], ebx
	call _Z9Com_ParsePPKc
	mov esi, [ebp-0x1c]
	test esi, esi
	jnz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__490
	xor ebx, ebx
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__590:
	call _Z19Com_EndParseSessionv
	mov eax, [ebp-0x24]
	mov [esp], eax
	call FS_FreeFile
	test ebx, ebx
	jnz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__270
	jmp _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__300
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__20:
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_warning_could_no3
	mov dword [esp], 0x9
	call _Z16Com_PrintWarningiPKcz
	add esp, 0x845c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__180:
	lea ecx, [ebp-0x445]
	mov [esp+0x4], ecx
	mov [esp], edi
	call _Z11FS_CopyFilePcS_
	jmp _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__500
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__370:
	shl edx, 0xa
	lea ebx, [ebp-0x83e4]
	add ebx, edx
	mov dword [esp+0x4], 0x2c
	mov [esp], ebx
	call strchr
	test eax, eax
	jz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__510
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__580:
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_s2
	call _Z2vaPKcz
	mov ebx, eax
	jmp _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__520
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__380:
	mov dword [esp+0x4], 0x20
	mov [esp], ebx
	call strchr
	test eax, eax
	jnz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__530
	mov dword [esp+0x4], 0xa
	mov [esp], ebx
	call strchr
	test eax, eax
	jnz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__530
	mov dword [esp+0x4], 0xd
	mov [esp], ebx
	call strchr
	test eax, eax
	jnz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__530
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_s3
	call _Z2vaPKcz
	mov ebx, eax
	jmp _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__520
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__360:
	lea eax, [ebp-0x73e4]
	mov [esp], eax
	call _Z32Com_GetSubtitleStringEdReferencePKc
	test eax, eax
	jz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__540
	mov [esp+0x10], eax
	mov dword [esp+0xc], _cstring_subtitle_
	mov dword [esp+0x8], _cstring_ss
	mov dword [esp+0x4], 0x400
	lea ebx, [ebp-0xfe4]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	mov [esp], ebx
	call _Z8I_struprPc
	mov [ebp-0x83ec], eax
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__570:
	mov eax, [ebp-0x8414]
	mov [esp+0x8], eax
	cld
	mov ecx, 0xffffffff
	mov edi, [ebp-0x83ec]
	xor eax, eax
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [esp+0x4], ecx
	mov eax, [ebp-0x83ec]
	mov [esp], eax
	call _Z8FS_WritePKvii
	jmp _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__400
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__540:
	cmp byte [ebp-0x43], 0x0
	jz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__550
	lea eax, [ebp-0x7be4]
	mov [esp+0x14], eax
	lea eax, [ebp-0x7fe4]
	mov [esp+0x10], eax
	mov dword [esp+0xc], _cstring_subtitle_
	mov dword [esp+0x8], _cstring_ss_s
	mov dword [esp+0x4], 0x400
	lea ebx, [ebp-0xfe4]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__750:
	mov [esp], ebx
	call _Z8I_struprPc
	mov [ebp-0x83ec], eax
	mov dword [esp], _cstring_soundaliasestemp1
	call _Z17FS_FOpenFileWritePKc
	mov [ebp-0x8404], eax
	test eax, eax
	jnz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__560
	mov dword [esp+0x8], _cstring_soundaliasestemp1
	mov dword [esp+0x4], _cstring_warning_could_no2
	mov dword [esp], 0x9
	call _Z16Com_PrintWarningiPKcz
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__740:
	add dword [ebp-0x8418], 0x1
	jmp _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__570
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__510:
	mov dword [esp+0x4], 0x20
	mov [esp], ebx
	call strchr
	test eax, eax
	jnz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__580
	mov dword [esp+0x4], 0xa
	mov [esp], ebx
	call strchr
	test eax, eax
	jnz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__580
	mov dword [esp+0x4], 0xd
	mov [esp], ebx
	call strchr
	test eax, eax
	jnz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__580
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_s
	call _Z2vaPKcz
	mov ebx, eax
	jmp _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__520
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__440:
	mov dword [esp+0x8], _cstring_soundaliasessubt
	mov dword [esp+0x4], _cstring_warning_could_no
	mov dword [esp], 0x9
	call _Z16Com_PrintWarningiPKcz
	jmp _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__300
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__480:
	mov ebx, 0x1
	jmp _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__590
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__560:
	lea edx, [ebp-0x1c]
	mov [esp+0x4], edx
	mov dword [esp], _cstring_soundaliasessubt
	call FS_ReadFile
	test eax, eax
	js _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__600
	mov dword [esp], _cstring_soundaliasessubt
	call _Z21Com_BeginParseSessionPKc
	mov eax, [ebp-0x1c]
	mov [ebp-0x24], eax
	mov ebx, eax
	mov dword [ebp-0x8400], 0x0
	jmp _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__610
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__660:
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _Z18Com_SkipRestOfLinePPKc
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__610:
	lea edi, [ebp-0x24]
	mov [esp], edi
	call _Z9Com_ParsePPKc
	mov [ebp-0x8408], eax
	mov eax, [ebp-0x24]
	mov [ebp-0x843c], eax
	test eax, eax
	jz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__620
	mov dword [ebp-0x8424], 0xa
	cld
	mov esi, [ebp-0x8408]
	mov edi, _cstring_endmarker
	mov ecx, 0xa
	repe cmpsb
	mov eax, 0x0
	jz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__630
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__630:
	test eax, eax
	jz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__640
	mov ecx, 0xa
	cld
	mov esi, [ebp-0x8408]
	mov edi, _cstring_reference
	repe cmpsb
	mov eax, 0x0
	jz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__650
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__650:
	test eax, eax
	jnz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__660
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _Z15Com_ParseOnLinePPKc
	lea edx, [ebp-0xfdb]
	mov [esp+0x4], edx
	mov [esp], eax
	call strcmp
	test eax, eax
	jnz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__660
	mov eax, [ebp-0x24]
	cmp eax, ebx
	jbe _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__670
	mov ecx, [ebp-0x8404]
	mov [esp+0x8], ecx
	sub eax, ebx
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z8FS_WritePKvii
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__670:
	mov ecx, [ebp-0x8404]
	lea edx, [ebp-0x73e4]
	lea eax, [ebp-0xfdb]
	call _Z32Com_WriteStringEdReferenceToFilePKcS0_i
	jmp _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__680
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__720:
	mov ecx, 0xa
	cld
	mov esi, eax
	mov edi, _cstring_reference
	repe cmpsb
	mov eax, 0x0
	jz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__690
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__690:
	test eax, eax
	jz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__700
	mov ecx, 0xa
	mov esi, [ebp-0x83f0]
	mov edi, _cstring_endmarker
	repe cmpsb
	mov eax, 0x0
	jz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__710
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__710:
	test eax, eax
	jz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__700
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__680:
	mov ebx, [ebp-0x24]
	lea edi, [ebp-0x24]
	mov [esp], edi
	call _Z9Com_ParsePPKc
	mov [ebp-0x83f0], eax
	mov edx, [ebp-0x24]
	test edx, edx
	jnz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__720
	mov dword [ebp-0x8400], 0x1
	xor ebx, ebx
	jmp _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__660
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__640:
	cmp ebx, [ebp-0x843c]
	jae _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__620
	mov eax, [ebp-0x8404]
	mov [esp+0x8], eax
	sub [ebp-0x843c], ebx
	mov eax, [ebp-0x843c]
	sub eax, 0xb
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z8FS_WritePKvii
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__620:
	mov ecx, [ebp-0x8400]
	test ecx, ecx
	jnz _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__730
	mov ecx, [ebp-0x8404]
	lea edx, [ebp-0x73e4]
	lea eax, [ebp-0xfdb]
	call _Z32Com_WriteStringEdReferenceToFilePKcS0_i
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__730:
	call _Z19Com_EndParseSessionv
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FreeFile
	mov edx, [ebp-0x8404]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x11
	mov dword [esp], _cstring_endmarker1
	call _Z8FS_WritePKvii
	mov ecx, [ebp-0x8404]
	mov [esp], ecx
	call _Z13FS_FCloseFilei
	lea edi, [ebp-0x645]
	mov [esp+0xc], edi
	mov dword [esp+0x8], _cstring_soundaliasestemp1
	mov ebx, fs_gamedir
	mov [esp+0x4], ebx
	mov esi, fs_basepath
	mov eax, [esi]
	mov eax, [eax+0xc]
	mov [esp], eax
	call _Z14FS_BuildOSPathPKcS0_S0_Pc
	lea eax, [ebp-0x145]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_soundaliasessubt
	mov [esp+0x4], ebx
	mov eax, [esi]
	mov eax, [eax+0xc]
	mov [esp], eax
	call _Z14FS_BuildOSPathPKcS0_S0_Pc
	lea edx, [ebp-0x145]
	mov [esp+0x4], edx
	mov [esp], edi
	call _Z11FS_CopyFilePcS_
	mov [esp], edi
	call _Z9FS_RemovePKc
	jmp _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__740
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__600:
	mov dword [esp+0x8], _cstring_soundaliasessubt
	mov dword [esp+0x4], _cstring_warning_could_no
	mov dword [esp], 0x9
	call _Z16Com_PrintWarningiPKcz
	mov ecx, [ebp-0x8404]
	mov [esp], ecx
	call _Z13FS_FCloseFilei
	jmp _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__740
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__550:
	lea eax, [ebp-0x7fe4]
	mov [esp+0x10], eax
	mov dword [esp+0xc], _cstring_subtitle_
	mov dword [esp+0x8], _cstring_ss
	mov dword [esp+0x4], 0x400
	lea ebx, [ebp-0xfe4]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	jmp _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__750
_Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__700:
	call _Z14Com_UngetTokenv
	mov dword [ebp-0x8400], 0x1
	jmp _Z37Com_ProcessSoundAliasFileLocalizationPKcS0_S0__660
	nop


;Com_InitDefaultSoundAliasVolumeFalloffCurve(SndCurve*)
_Z43Com_InitDefaultSoundAliasVolumeFalloffCurveP8SndCurve:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov dword [eax], _cstring_null
	xor ecx, ecx
	mov [eax+0x8], ecx
	mov edx, 0x3f800000
	mov [eax+0xc], edx
	mov [eax+0x10], edx
	mov [eax+0x14], ecx
	mov dword [eax+0x4], 0x2
	pop ebp
	ret


;Initialized global or static variables of com_sndalias_load_obj:
SECTION .data
g_pszSndAliasKeyNames: dd 0x0, _cstring_name, _cstring_sequence, _cstring_file, _cstring_subtitle, _cstring_vol_min, _cstring_vol_max, _cstring_vol_mod, _cstring_pitch_min, _cstring_pitch_max, _cstring_dist_min, _cstring_dist_max, _cstring_channel, _cstring_type, _cstring_loop, _cstring_probability, _cstring_loadspec, _cstring_masterslave, _cstring_secondaryaliasna, _cstring_chainaliasname, _cstring_volumefalloffcur, _cstring_startdelay, _cstring_speakermap, _cstring_reverb, _cstring_lfe_percentage, _cstring_center_percentag, _cstring_envelop_min, _cstring_envelop_max, _cstring_envelop_percenta, 0x0, 0x0, 0x0
sa_spkrMapIdentifierValues: dd 0x0, 0x0, 0x1, 0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
sa_spkrMapIdentifierStrings: dd _cstring_monosource, _cstring_leftsource, _cstring_rightsource, _cstring_leftspeaker, _cstring_rightspeaker, _cstring_centerspeaker, _cstring_lfespeaker, _cstring_leftsurroundspea, _cstring_rightsurroundspe, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of com_sndalias_load_obj:
SECTION .rdata


;Zero initialized global or static variables of com_sndalias_load_obj:
SECTION .bss
saLoadObjGlob: resb 0x1894
g_spkrMapParseBuffer: resb 0xc
_ZZ32Com_GetSubtitleStringEdReferencePKcE11szReference: resb 0x400
_ZZ22Com_LoadSoundAliasFilePKcS0_S0_E32Com_RefreshVolumeModGroups_f_VAR: resb 0x60


;All cstrings:
SECTION .rdata
_cstring_menu:		db "menu",0
_cstring_error_sound_alia:		db "ERROR: Sound alias file %s: ",27h,"!",27h," can only be the very first character in a loadspec: %s",0ah,0
_cstring_error_sound_alia1:		db "ERROR: Sound alias file %s: Load spec token too long: %s",0ah,0
_cstring_all_sp:		db "all_sp",0
_cstring_all_mp:		db "all_mp",0
_cstring_error_sound_alia2:		db "ERROR: Sound alias file %s: ",27h,"menu",27h," load spec must be by itself: %s",0ah,0
_cstring_error_sound_alia3:		db "ERROR: Sound alias file %s: ",27h,"all_sp",27h," and ",27h,"all_mp",27h," load specs are mutually exclusive: %s",0ah,0
_cstring_error_sound_alia4:		db "ERROR: sound alias file %s: duplicate alias ",27h,"%s",27h,0ah,0
_cstring_error_spkrmap_pa:		db "ERROR: spkrMap parse failure on file ",22h,"%s",22h,": got token ",27h,"%s",27h,", expected ",27h,"%s",27h,".",0ah,0
_cstring_error_spkrmap_pa1:		db "ERROR: spkrMap parse failure on file ",22h,"%s",22h,": volume ",27h,"%f",27h," is not in the range 0-1.",0
_cstring_error_spkrmap_pa2:		db "ERROR: spkrMap parse failure on file ",22h,"%s",22h,": token ",27h,"%s",27h," is not a float value in the range 0-1.",0ah,0
_cstring_soundaliasessubt:		db "soundaliases/subtitle.st",0
_cstring_reference:		db "REFERENCE",0
_cstring_lang_english:		db "LANG_ENGLISH",0
_cstring_stringed_file_s_:		db 015h,"StringEd file %s has bad syntax",0
_cstring_warning_could_no:		db "WARNING: Could not read local copy of StringEd file %s",0ah,0
_cstring_reference_______:		db "REFERENCE           ",0
_cstring_lang_english____:		db 0dh,0ah,"LANG_ENGLISH        ",22h,0
_cstring_:		db 22h,0dh,0ah,0dh,0ah,0
_cstring_error_sound_alia5:		db "ERROR: Sound alias file %s: %s ",27h,"%f",27h," is not within the range of ",27h,"%f",27h,"-",27h,"%f",27h,".",0ah,0
_cstring_error_sound_alia6:		db "ERROR: Sound alias file %s: Duplicate entries for the ",27h,"%s",27h," column",0ah,0
_cstring_error_sound_alia7:		db "ERROR: Sound alias file %s: %s ",27h,"%s",27h," is longer than %i characters",0ah,0
_cstring_fulldrylevel:		db "fulldrylevel",0
_cstring_nowetlevel:		db "nowetlevel",0
_cstring_master:		db "master",0
_cstring_streamed:		db "streamed",0
_cstring_error_sound_alia8:		db "ERROR: Sound alias file %s: Unknown sound channel ",27h,"%s",27h,"; should be %s",0ah,0
_cstring_looping:		db "looping",0
_cstring_error_sound_alia9:		db "ERROR: Sound alias file %s: Subtitle ",27h,"%s",27h," has invalid character ",27h,"%c",27h," ascii %i",0ah,0
_cstring_sound_alias_file:		db 015h,"Sound alias file %s: Volume Mod Group ",27h,"%s",27h," not found.",0
_cstring_error_sound_alia10:		db "ERROR: Sound alias file %s: SlavePercentage",27h,"%f",27h," is not within the range of ",27h,"%f",27h,"-",27h,"%f",27h,".",0ah,0
_cstring_rlooping:		db "rlooping",0
_cstring_loaded:		db "loaded",0
_cstring_s:		db "%s",0
_cstring_error_sound_alia11:		db "ERROR: Sound alias file %s: Unknown sound type ",27h,"%s",27h,"; should be primed, streamed or loaded",0ah,0
_cstring_nonlooping:		db "nonlooping",0
_cstring_error_sound_alia12:		db "ERROR: Sound alias file %s: Unknown sound looping type ",27h,"%s",27h,"; valid values are ",27h,"looping, rlooping, nonlooping",27h,".",0ah,0
_cstring_soundaliaseschan:		db "soundaliases/channels.def",0
_cstring_exceeded_max_num:		db "exceeded max number of channels (%d) in file [%s].",0ah,0
_cstring_duplicate_channe:		db "duplicate channel name ",27h,"%s",27h," in file [%s].",0ah,0
_cstring_channel_name_too:		db "channel name too long (max chars %d): %s in file [%s].",0ah,0
_cstring_unable_to_load_e:		db "unable to load entity channel file [%s].",0ah,0
_cstring_soundaliasessspk:		db "soundaliases/%s.spkrmap",0
_cstring_spkrmap:		db "SPKRMAP",0
_cstring_error_s_is_too_l:		db "ERROR: ",22h,"%s",22h," Is too long of a spkrmap file to parse",0ah,0
_cstring_error_s_does_not:		db "ERROR: ",22h,"%s",22h," does not appear to be a spkrmap file",0ah,0
_cstring_error_could_not_:		db "ERROR: Could not load spkrmap file ",27h,"%s",27h,0ah,0
_cstring_soundaliasess:		db "soundaliases/%s",0
_cstring_error_s_is_empty:		db "ERROR: ",27h,"%s",27h," is empty",0ah,0
_cstring_error_sound_alia13:		db "ERROR: Sound alias file ",27h,"%s",27h,": alias entry missing name and/or file. Error details:",0ah,09h,"alias name: ",27h,"%s",27h,", sound file: ",27h,"%s",27h,", previous alias in file: ",27h,"%s",27h,0ah,0
_cstring_com_addbuildsoun:		db "Com_AddBuildSoundAlias",0
_cstring_null:		db 0
_cstring_snd_refreshvolum:		db "snd_refreshVolumeModGroups",0
_cstring_error_sound_alia14:		db "ERROR: Sound alias file %s: missing ",27h,"name",27h," and/or ",27h,"file",27h," columns",0ah,0
_cstring_volumemodgroups:		db "VOLUMEMODGROUPS",0
_cstring_error_s_is_too_l1:		db "ERROR: ",22h,"%s",22h," Is too long of a volumemodgroups file to parse",0ah,0
_cstring_error_sound_alia15:		db "ERROR: sound alias ",27h,"%s",27h," has dist_min %g >= dist_max %g",0ah,0
_cstring_error_sound_alia16:		db "ERROR: sound alias ",27h,"%s",27h," has vol_min %g < 0",0ah,0
_cstring_error_sound_alia17:		db "ERROR: sound alias ",27h,"%s",27h," has pitch_min %g <= 0",0ah,0
_cstring_error_sound_alia18:		db "ERROR: sound alias ",27h,"%s",27h," has dist_min %g <= 0",0ah,0
_cstring_error_s_does_not1:		db "ERROR: ",22h,"%s",22h," does not appear to be a volumemodgroups file",0ah,0
_cstring_error_volumemodg:		db "ERROR: volumemodgroups parse failure on file ",22h,"%s",22h,": groupname ",27h,"%s",27h," missing a matching value",0ah,0
_cstring_error_volumemodg1:		db "ERROR: volumemodgroups parse failure on file ",22h,"%s",22h,": groups parsed (%d) is greater than or equal to maxGroups(%d)",0ah,0
_cstring_error_could_not_1:		db "ERROR: Could not find ",27h,"%s",27h,0ah,0
_cstring_soundss:		db "sound/%s/%s",0
_cstring_error_streamed_s:		db "ERROR: Streamed sound file ",27h,"%s",27h," not found",0ah,0
_cstring_soundaliasessvfc:		db "soundaliases/%s.vfcurve",0
_cstring_sndcurve:		db "SNDCURVE",0
_cstring_error_sndcurve_p:		db "ERROR: sndcurve parse failure on file ",22h,"%s",22h,": knot count (%d) is greater than maxKnots (%d)",0ah,0
_cstring_error_sndcurve_f:		db "ERROR: sndcurve file ",27h,"%s",27h," is empty",0ah,0
_cstring_error_s_is_too_l2:		db "ERROR: ",22h,"%s",22h," Is too long of a sndcurve file to parse",0ah,0
_cstring_error_s_does_not2:		db "ERROR: ",22h,"%s",22h," does not appear to be a sndcurve file",0ah,0
_cstring_error_could_not_2:		db "ERROR: Could not load sndcurve file ",27h,"%s",27h,0ah,0
_cstring_error_sndcurve_p1:		db "ERROR: sndcurve parse failure on file ",22h,"%s",22h,": knots parsed (%d) is greater than or equal to maxKnots (%d)",0ah,0
_cstring_error_sndcurve_p2:		db "ERROR: sndcurve parse failure on file ",22h,"%s",22h,": knot count (%d) is less than 2",0ah,0
_cstring_error_sndcurve_p3:		db "ERROR: sndcurve parse failure on file ",22h,"%s",22h,": knot count (%d) does not match knots parsed (%d).",0ah,0
_cstring_error_sndcurve_p4:		db "ERROR: sndcurve parse failure on file ",22h,"%s",22h,": knot x-coord ",27h,"%f",27h," is not in the range 0-1.",0ah,0
_cstring_warning7_sndcurv:		db "WARNING^7: sndcurve parse on file ",22h,"%s",22h,": the first point must be ",27h,"0.0000 1.0000",27h," and the last point must be ",27h,"1.0000 0.0000",27h,".",0ah,"adjusting sndcurve endpoints.",0ah,0
_cstring__aliases:		db "_aliases",0
_cstring__sound_files:		db "_sound files",0
_cstring__strings:		db "_strings",0
_cstring__alias_list:		db "_alias list",0
_cstring_warning_sound_fi:		db "WARNING: sound file ",27h,"%s",27h," used as %s in alias ",27h,"%s",27h," and %s in alias ",27h,"%s",27h,0ah,0
_cstring__chain_alias_str:		db "_chain alias strings",0
_cstring__secondary_alias:		db "_secondary alias strings",0
_cstring_error_alias_s_al:		db "ERROR: alias ",27h,"%s",27h," already added - ignoring",0ah,0
_cstring__loaded:		db "_loaded",0
_cstring_source_datastrin:		db "../source_data/string_resources/subtitle.st",0
_cstring_r:		db "r+",0
_cstring_localizing_sound:		db "Localizing sound alias subtitle text...",0ah,0
_cstring_writing_to_strin:		db "Writing to StringEd file %s",0ah,0
_cstring_csv:		db "csv",0
_cstring_soundaliases:		db "soundaliases",0
_cstring_warning_cant_fin:		db "WARNING: can",27h,"t find any sound alias files (soundaliases/*.csv)",0ah,0
_cstring_warning_could_no1:		db "WARNING: Could not make local copy of StringEd file %s",0ah,0
_cstring_short_read_in_co:		db 015h,"Short read in COM_WriteFinalStringEdFile()",0ah,0
_cstring_short_write_in_c:		db 015h,"Short write in COM_WriteFinalStringEdFile()",0ah,0
_cstring_done:		db "done",0ah,0
_cstring_warning_can_not_:		db "WARNING: Can not write to StringEd file %s",0ah,0
_cstring_processing_sound:		db "Processing sound alias file %s..",0ah,0
_cstring_soundaliasestemp:		db "soundaliases/temp.csv",0
_cstring_chateau:		db "#Chateau",0
_cstring_warning_could_no2:		db "WARNING: Could not open output file %s for writing",0ah,0
_cstring_1:		db 0dh,0ah,0
_cstring_localized_i_soun:		db "Localized %i sound alias subtitles",0ah,0
_cstring_sound_alias_file1:		db 015h,"Sound alias file %s: missing ",27h,"name",27h," and/or ",27h,"file",27h," columns",0ah,0
_cstring_subtitle_:		db "SUBTITLE_",0
_cstring_s1:		db 22h,"%s",22h,",",0
_cstring_2:		db ",",0
_cstring_sound_alias_file2:		db 015h,"Sound alias file %s: alias entry missing name and/or file",0ah,0
_cstring_3:		db 0dh,0
_cstring_warning_can_not_1:		db "WARNING: Can not write to sound alias file %s",0ah,0
_cstring_warning_could_no3:		db "WARNING: Could not read sound alias file %s",0ah,0
_cstring_s2:		db 22h,"%s",22h,0
_cstring_s3:		db "%s,",0
_cstring_ss:		db "%s%s",0
_cstring_ss_s:		db "%s%s_%s",0
_cstring_soundaliasestemp1:		db "soundaliases/temp.st",0
_cstring_endmarker:		db "ENDMARKER",0
_cstring_endmarker1:		db 0dh,0ah,"ENDMARKER",0dh,0ah,0dh,0ah,0dh,0ah,0
_cstring_name:		db "name",0
_cstring_sequence:		db "sequence",0
_cstring_file:		db "file",0
_cstring_subtitle:		db "subtitle",0
_cstring_vol_min:		db "vol_min",0
_cstring_vol_max:		db "vol_max",0
_cstring_vol_mod:		db "vol_mod",0
_cstring_pitch_min:		db "pitch_min",0
_cstring_pitch_max:		db "pitch_max",0
_cstring_dist_min:		db "dist_min",0
_cstring_dist_max:		db "dist_max",0
_cstring_channel:		db "channel",0
_cstring_type:		db "type",0
_cstring_loop:		db "loop",0
_cstring_probability:		db "probability",0
_cstring_loadspec:		db "loadspec",0
_cstring_masterslave:		db "masterslave",0
_cstring_secondaryaliasna:		db "secondaryaliasname",0
_cstring_chainaliasname:		db "chainaliasname",0
_cstring_volumefalloffcur:		db "volumefalloffcurve",0
_cstring_startdelay:		db "startdelay",0
_cstring_speakermap:		db "speakermap",0
_cstring_reverb:		db "reverb",0
_cstring_lfe_percentage:		db "lfe percentage",0
_cstring_center_percentag:		db "center percentage",0
_cstring_envelop_min:		db "envelop_min",0
_cstring_envelop_max:		db "envelop_max",0
_cstring_envelop_percenta:		db "envelop percentage",0
_cstring_monosource:		db "MONOSOURCE",0
_cstring_leftsource:		db "LEFTSOURCE",0
_cstring_rightsource:		db "RIGHTSOURCE",0
_cstring_leftspeaker:		db "LEFTSPEAKER",0
_cstring_rightspeaker:		db "RIGHTSPEAKER",0
_cstring_centerspeaker:		db "CENTERSPEAKER",0
_cstring_lfespeaker:		db "LFESPEAKER",0
_cstring_leftsurroundspea:		db "LEFTSURROUNDSPEAKER",0
_cstring_rightsurroundspe:		db "RIGHTSURROUNDSPEAKER",0



;All constant floats and doubles:
SECTION .rdata
_float_0_00000000:		dd 0x0	; 0
_float_1_00000000:		dd 0x3f800000	; 1
_float_5_00000000:		dd 0x40a00000	; 5

