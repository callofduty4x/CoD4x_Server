;Imports of com_sndalias_load_obj:
	extern strcpy
	extern Com_GetDefaultSoundAliasVolumeFalloffCurve
	extern Com_GetDefaultSoundAliasSpeakerMap
	extern tolower
	extern Com_PrintError
	extern strcmp
	extern Q_stricmp
	extern Com_Parse
	extern atof
	extern FS_ReadFile
	extern Com_BeginParseSession
	extern Com_ParseOnLine
	extern Com_SkipRestOfLine
	extern Com_EndParseSession
	extern FS_FreeFile
	extern Com_Error
	extern Com_PrintWarning
	extern FS_Write
	extern __maskrune
	extern atoi
	extern Com_RegisterSoundAliasVolumeFalloffCurve
	extern strstr
	extern Com_RegisterSoundAliasSpeakerMap
	extern Hunk_AllocateTempMemory
	extern memcpy
	extern sprintf
	extern Com_SetCSV
	extern Com_sprintf
	extern FS_FOpenFileByMode
	extern FS_Read
	extern FS_FCloseFile
	extern memset
	extern FS_FOpenFileRead
	extern Com_AllocateTempSoundMemory
	extern Cmd_AddCommand
	extern snd_touchStreamFilesOnLoad
	extern fs_copyfiles
	extern FS_TouchFile
	extern Com_InitSoundAliasHash
	extern Com_AllocSoundMemory
	extern Com_AddAliasList
	extern Com_GetFilenameSubString
	extern Q_strlwr
	extern SND_LoadSoundFile
	extern fs_homepath
	extern FS_BuildOSPath
	extern fopen
	extern fclose
	extern fs_gamedir
	extern fs_basepath
	extern FS_CopyFile
	extern FS_FileExists
	extern Com_Printf
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
	extern FS_Remove
	extern Hunk_ClearTempMemory
	extern FS_FOpenFileWrite
	extern Q_strncmp
	extern strchr
	extern va
	extern I_strupr
	extern Com_UngetToken

;Exports of com_sndalias_load_obj:
	global g_pszSndAliasKeyNames
	global saLoadObjGlob
	global g_spkrMapParseBuffer
	global sa_spkrMapIdentifierValues
	global sa_spkrMapIdentifierStrings
	global Com_LoadSoundAliasDefaults
	global Com_SoundAliasLoadSpec
	global Com_RefreshVolumeModGroups_f
	global AliasNameCompare
	global Com_SortTempSoundAliases_r
	global FileNameTypeCompare
	global Com_ParseChannelMapEntry
	global _ZZ32Com_GetSubtitleStringEdReferencePKcE11szReference
	global Com_GetSubtitleStringEdReference
	global Com_WriteStringEdReferenceToFile
	global Com_IsValidAliasName
	global Com_LoadSoundAliasField
	global _ZZ22Com_LoadSoundAliasFilePKcS0_S0_E32Com_RefreshVolumeModGroups_f_VAR
	global Com_InitSoundAlias
	global Com_InitEntChannels
	global Com_LoadSpkrMapFile
	global Com_LoadSoundAliasFile
	global Com_LoadSoundAliasSounds
	global Com_LoadVolumeFalloffCurve
	global Com_MakeSoundAliasesPermanent
	global Com_WriteLocalizedSoundAliasFiles
	global Com_InitDefaultSoundAliasSpeakerMap
	global Com_ProcessSoundAliasFileLocalization
	global Com_InitDefaultSoundAliasVolumeFalloffCurve


SECTION .text


;Com_LoadSoundAliasDefaults(snd_alias_build_s*, char const*, char const*)
Com_LoadSoundAliasDefaults:
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
	jz Com_LoadSoundAliasDefaults_10
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
Com_LoadSoundAliasDefaults_10:
	test eax, eax
	setnz byte [ebx+0x193]
	mov byte [ebx+0x18d], 0x0
	mov byte [ebx+0x18e], 0x0
	mov byte [ebx+0x18f], 0x0
	mov byte [ebx+0x190], 0x0
	mov dword [ebx+0x178], 0x3f800000
	mov dword [ebx+0x188], 0x0
	call Com_GetDefaultSoundAliasVolumeFalloffCurve
	mov [ebx+0x170], eax
	call Com_GetDefaultSoundAliasSpeakerMap
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
Com_SoundAliasLoadSpec:
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
	jz Com_SoundAliasLoadSpec_10
	mov [ebp-0x13c], ecx
	mov byte [ebp-0x120], 0x1
	mov edi, [ebp-0x128]
	cmp byte [edi], 0x21
	jz Com_SoundAliasLoadSpec_20
Com_SoundAliasLoadSpec_340:
	mov byte [ebp-0x11f], 0x1
Com_SoundAliasLoadSpec_350:
	mov byte [ebp-0x11e], 0x0
	mov byte [ebp-0x11d], 0x0
	mov byte [ebp-0x11c], 0x0
	mov byte [ebp-0x11b], 0x0
	mov byte [ebp-0x11a], 0x0
	mov byte [ebp-0x119], 0x0
	mov eax, [ebp-0x13c]
	movzx ebx, byte [eax]
Com_SoundAliasLoadSpec_170:
	cmp bl, 0x20
	jz Com_SoundAliasLoadSpec_30
Com_SoundAliasLoadSpec_160:
	test bl, bl
	jz Com_SoundAliasLoadSpec_40
	cmp bl, 0x21
	jz Com_SoundAliasLoadSpec_50
Com_SoundAliasLoadSpec_120:
	test bl, bl
	jz Com_SoundAliasLoadSpec_60
	xor esi, esi
	jmp Com_SoundAliasLoadSpec_70
Com_SoundAliasLoadSpec_100:
	mov edx, [ebp-0x13c]
	movsx eax, byte [edx]
	mov [esp], eax
	call tolower
	mov [esi+ebp-0x118], al
	add esi, 0x1
	cmp esi, 0x100
	jz Com_SoundAliasLoadSpec_80
Com_SoundAliasLoadSpec_110:
	add dword [ebp-0x13c], 0x1
	mov edx, [ebp-0x13c]
	movzx ebx, byte [edx]
	cmp bl, 0x20
	jz Com_SoundAliasLoadSpec_90
	test bl, bl
	jz Com_SoundAliasLoadSpec_90
Com_SoundAliasLoadSpec_70:
	cmp bl, 0x21
	jnz Com_SoundAliasLoadSpec_100
	mov edi, [ebp-0x12c]
	mov [esp+0xc], edi
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_sound_alia
	mov dword [esp], 0x9
	call Com_PrintError
	mov edx, [ebp-0x13c]
	movsx eax, byte [edx]
	mov [esp], eax
	call tolower
	mov [esi+ebp-0x118], al
	add esi, 0x1
	cmp esi, 0x100
	jnz Com_SoundAliasLoadSpec_110
Com_SoundAliasLoadSpec_80:
	mov edi, [ebp-0x12c]
	mov [esp+0xc], edi
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_sound_alia1
	mov dword [esp], 0x9
	call Com_PrintError
	jmp Com_SoundAliasLoadSpec_110
Com_SoundAliasLoadSpec_50:
	mov edi, [ebp-0x12c]
	mov [esp+0xc], edi
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_sound_alia
	mov dword [esp], 0x9
	call Com_PrintError
	mov edx, [ebp-0x13c]
	movzx ebx, byte [edx]
	cmp bl, 0x20
	jnz Com_SoundAliasLoadSpec_120
Com_SoundAliasLoadSpec_60:
	xor esi, esi
Com_SoundAliasLoadSpec_90:
	mov byte [ebp+esi-0x118], 0x0
	mov dword [ebp-0x130], _cstring_all_sp
	mov ecx, 0x7
	cld
	lea esi, [ebp-0x118]
	mov edi, _cstring_all_sp
	repe cmpsb
	mov edx, 0x0
	jz Com_SoundAliasLoadSpec_130
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
Com_SoundAliasLoadSpec_130:
	test edx, edx
	jnz Com_SoundAliasLoadSpec_140
	mov eax, [ebp-0x128]
	mov [esp+0x4], eax
	lea edx, [ebp-0x118]
	mov [esp], edx
	call strcmp
	test eax, eax
	jnz Com_SoundAliasLoadSpec_150
	mov byte [ebp-0x11d], 0x1
	mov byte [ebp-0x119], 0x1
	cmp bl, 0x20
	jnz Com_SoundAliasLoadSpec_160
Com_SoundAliasLoadSpec_30:
	add dword [ebp-0x13c], 0x1
	mov edx, [ebp-0x13c]
	movzx ebx, byte [edx]
	jmp Com_SoundAliasLoadSpec_170
Com_SoundAliasLoadSpec_140:
	mov dword [ebp-0x134], _cstring_all_mp
	mov ecx, 0x7
	cld
	lea esi, [ebp-0x118]
	mov edi, _cstring_all_mp
	repe cmpsb
	mov edx, 0x0
	jz Com_SoundAliasLoadSpec_180
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
Com_SoundAliasLoadSpec_180:
	test edx, edx
	jnz Com_SoundAliasLoadSpec_190
	mov eax, [ebp-0x128]
	mov [esp+0x4], eax
	lea edx, [ebp-0x118]
	mov [esp], edx
	call strcmp
	test eax, eax
	jnz Com_SoundAliasLoadSpec_200
	mov byte [ebp-0x11c], 0x1
	mov byte [ebp-0x119], 0x1
	jmp Com_SoundAliasLoadSpec_170
Com_SoundAliasLoadSpec_150:
	mov byte [ebp-0x11d], 0x1
	jmp Com_SoundAliasLoadSpec_170
Com_SoundAliasLoadSpec_190:
	mov dword [ebp-0x138], _cstring_menu
	mov ecx, 0x5
	cld
	lea esi, [ebp-0x118]
	mov edi, _cstring_menu
	repe cmpsb
	mov edx, 0x0
	jz Com_SoundAliasLoadSpec_210
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
Com_SoundAliasLoadSpec_210:
	test edx, edx
	jnz Com_SoundAliasLoadSpec_220
	mov byte [ebp-0x11b], 0x1
Com_SoundAliasLoadSpec_230:
	mov eax, [ebp-0x124]
	mov [esp+0x4], eax
	lea edx, [ebp-0x118]
	mov [esp], edx
	call strcmp
	test eax, eax
	jnz Com_SoundAliasLoadSpec_170
	mov byte [ebp-0x11a], 0x1
	jmp Com_SoundAliasLoadSpec_170
Com_SoundAliasLoadSpec_200:
	mov byte [ebp-0x11c], 0x1
	jmp Com_SoundAliasLoadSpec_170
Com_SoundAliasLoadSpec_220:
	mov byte [ebp-0x11e], 0x1
	jmp Com_SoundAliasLoadSpec_230
Com_SoundAliasLoadSpec_40:
	cmp byte [ebp-0x11d], 0x0
	jz Com_SoundAliasLoadSpec_240
	cmp byte [ebp-0x11c], 0x0
	jnz Com_SoundAliasLoadSpec_250
Com_SoundAliasLoadSpec_240:
	cmp byte [ebp-0x11b], 0x0
	jz Com_SoundAliasLoadSpec_260
	cmp byte [ebp-0x11d], 0x0
	jnz Com_SoundAliasLoadSpec_270
	cmp byte [ebp-0x11c], 0x0
	jz Com_SoundAliasLoadSpec_280
Com_SoundAliasLoadSpec_270:
	mov edx, [ebp-0x12c]
	mov [esp+0xc], edx
	mov edi, [ebp+0x8]
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_error_sound_alia2
	mov dword [esp], 0x9
	call Com_PrintError
Com_SoundAliasLoadSpec_360:
	cmp byte [ebp-0x11a], 0x0
	jnz Com_SoundAliasLoadSpec_290
	mov eax, [ebp-0x124]
	cmp byte [eax], 0x0
	jnz Com_SoundAliasLoadSpec_300
Com_SoundAliasLoadSpec_290:
	movzx eax, byte [ebp-0x120]
Com_SoundAliasLoadSpec_390:
	add esp, 0x14c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_SoundAliasLoadSpec_260:
	cmp byte [ebp-0x11a], 0x0
	jnz Com_SoundAliasLoadSpec_290
	cmp byte [ebp-0x119], 0x0
	jnz Com_SoundAliasLoadSpec_310
	cmp byte [ebp-0x11e], 0x0
	jz Com_SoundAliasLoadSpec_320
	mov edx, [ebp-0x124]
	cmp byte [edx], 0x0
	jnz Com_SoundAliasLoadSpec_330
Com_SoundAliasLoadSpec_380:
	xor eax, eax
	add esp, 0x14c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_SoundAliasLoadSpec_10:
	mov edx, ecx
	add edx, 0x1
	mov [ebp-0x13c], edx
	mov byte [ebp-0x120], 0x0
	mov edi, [ebp-0x128]
	cmp byte [edi], 0x21
	jnz Com_SoundAliasLoadSpec_340
Com_SoundAliasLoadSpec_20:
	add dword [ebp-0x128], 0x1
	mov byte [ebp-0x11f], 0x0
	jmp Com_SoundAliasLoadSpec_350
Com_SoundAliasLoadSpec_280:
	cmp byte [ebp-0x11e], 0x0
	jz Com_SoundAliasLoadSpec_360
	jmp Com_SoundAliasLoadSpec_270
Com_SoundAliasLoadSpec_250:
	mov edi, [ebp-0x12c]
	mov [esp+0xc], edi
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_sound_alia3
	mov dword [esp], 0x9
	call Com_PrintError
	jmp Com_SoundAliasLoadSpec_240
Com_SoundAliasLoadSpec_330:
	mov edi, _cstring_menu
	mov ecx, 0x5
	cld
	mov esi, edx
	repe cmpsb
	mov edx, 0x0
	jz Com_SoundAliasLoadSpec_370
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
Com_SoundAliasLoadSpec_370:
	test edx, edx
	jz Com_SoundAliasLoadSpec_380
Com_SoundAliasLoadSpec_300:
	xor byte [ebp-0x120], 0x1
	jmp Com_SoundAliasLoadSpec_290
Com_SoundAliasLoadSpec_310:
	cmp byte [ebp-0x11f], 0x0
	jz Com_SoundAliasLoadSpec_380
	cmp byte [ebp-0x120], 0x0
	jz Com_SoundAliasLoadSpec_380
Com_SoundAliasLoadSpec_410:
	mov eax, 0x1
	jmp Com_SoundAliasLoadSpec_390
Com_SoundAliasLoadSpec_320:
	cmp byte [ebp-0x11f], 0x0
	jz Com_SoundAliasLoadSpec_380
	cmp byte [ebp-0x120], 0x0
	jz Com_SoundAliasLoadSpec_400
	cmp byte [ebp-0x11d], 0x0
	jnz Com_SoundAliasLoadSpec_380
	cmp byte [ebp-0x11c], 0x0
	jnz Com_SoundAliasLoadSpec_380
	mov eax, 0x1
	jmp Com_SoundAliasLoadSpec_390
Com_SoundAliasLoadSpec_400:
	cmp byte [ebp-0x11d], 0x0
	jnz Com_SoundAliasLoadSpec_410
	cmp byte [ebp-0x11c], 0x0
	jz Com_SoundAliasLoadSpec_380
	mov eax, 0x1
	jmp Com_SoundAliasLoadSpec_390
	nop


;Com_RefreshVolumeModGroups_f()
Com_RefreshVolumeModGroups_f:
	push ebp
	mov ebp, esp
	mov byte [saLoadObjGlob+0x888], 0x0
	pop ebp
	ret


;AliasNameCompare(snd_alias_build_s*, snd_alias_build_s*)
AliasNameCompare:
	push ebp
	mov ebp, esp
	add dword [ebp+0xc], 0x40
	mov eax, [ebp+0x8]
	add eax, 0x40
	mov [ebp+0x8], eax
	pop ebp
	jmp Q_stricmp


;Com_SortTempSoundAliases_r(snd_alias_build_s*, int*, int (*)(snd_alias_build_s*, snd_alias_build_s*), unsigned char)
Com_SortTempSoundAliases_r:
Com_SortTempSoundAliases_r_30:
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
	jz Com_SortTempSoundAliases_r_10
	mov eax, ecx
	shr eax, 0x1f
	add eax, ecx
	sar eax, 1
	mov [ebp-0x1c], eax
	sub ecx, eax
	mov [ebp-0x20], ecx
	mov edi, [ebp-0x2c]
	test eax, eax
	jg Com_SortTempSoundAliases_r_20
	mov esi, edi
Com_SortTempSoundAliases_r_150:
	movzx ebx, byte [ebp-0x35]
	lea edx, [ebp-0x1c]
	mov [esp], ebx
	mov ecx, [ebp-0x34]
	mov eax, edi
	call Com_SortTempSoundAliases_r_30
	mov edi, eax
	lea edx, [ebp-0x20]
	mov [esp], ebx
	mov ecx, [ebp-0x34]
	mov eax, esi
	call Com_SortTempSoundAliases_r_30
	mov ebx, eax
	mov edx, [ebp-0x30]
	mov dword [edx], 0x0
	mov dword [ebp-0x2c], 0x0
	lea esi, [ebp-0x2c]
	mov edx, [ebp-0x1c]
Com_SortTempSoundAliases_r_180:
	cmp byte [ebp-0x35], 0x0
	jnz Com_SortTempSoundAliases_r_40
	jmp Com_SortTempSoundAliases_r_50
Com_SortTempSoundAliases_r_80:
	mov [esi], ebx
	mov ebx, [ebx+0x198]
	sub dword [ebp-0x20], 0x1
	mov edx, [ebp-0x1c]
Com_SortTempSoundAliases_r_90:
	mov eax, [ebp-0x30]
	add dword [eax], 0x1
	mov esi, [esi]
	add esi, 0x198
Com_SortTempSoundAliases_r_50:
	test edx, edx
	jz Com_SortTempSoundAliases_r_60
	mov eax, [ebp-0x20]
	test eax, eax
	jz Com_SortTempSoundAliases_r_70
	mov [esp+0x4], ebx
	mov [esp], edi
	call dword [ebp-0x34]
	test eax, eax
	jg Com_SortTempSoundAliases_r_80
	mov [esi], edi
	mov edi, [edi+0x198]
	mov edx, [ebp-0x1c]
	sub edx, 0x1
	mov [ebp-0x1c], edx
	jmp Com_SortTempSoundAliases_r_90
Com_SortTempSoundAliases_r_120:
	mov [esi], ebx
	mov ebx, [ebx+0x198]
	sub dword [ebp-0x20], 0x1
	mov edx, [ebp-0x1c]
Com_SortTempSoundAliases_r_130:
	mov eax, [ebp-0x30]
	add dword [eax], 0x1
	mov esi, [esi]
	add esi, 0x198
Com_SortTempSoundAliases_r_40:
	test edx, edx
	jz Com_SortTempSoundAliases_r_60
	mov ecx, [ebp-0x20]
	test ecx, ecx
	jz Com_SortTempSoundAliases_r_70
	mov [esp+0x4], ebx
	mov [esp], edi
	call dword [ebp-0x34]
	test eax, eax
	jnz Com_SortTempSoundAliases_r_100
	mov eax, [edi+0x104]
	sub eax, [ebx+0x104]
	jz Com_SortTempSoundAliases_r_110
Com_SortTempSoundAliases_r_100:
	test eax, eax
	jg Com_SortTempSoundAliases_r_120
	mov [esi], edi
	mov edi, [edi+0x198]
	mov edx, [ebp-0x1c]
	sub edx, 0x1
	mov [ebp-0x1c], edx
	jmp Com_SortTempSoundAliases_r_130
Com_SortTempSoundAliases_r_20:
	mov esi, edi
	xor edx, edx
Com_SortTempSoundAliases_r_140:
	add edx, 0x1
	mov esi, [esi+0x198]
	cmp eax, edx
	jnz Com_SortTempSoundAliases_r_140
	jmp Com_SortTempSoundAliases_r_150
Com_SortTempSoundAliases_r_110:
	mov [esp+0x4], ebx
	mov [esp], edi
	call Q_stricmp
	cmp eax, 0x0
	jz Com_SortTempSoundAliases_r_160
	jl Com_SortTempSoundAliases_r_170
	mov ebx, [ebx+0x198]
	sub dword [ebp-0x20], 0x1
	mov edx, [ebp-0x1c]
	jmp Com_SortTempSoundAliases_r_180
Com_SortTempSoundAliases_r_60:
	mov [esi], ebx
	mov edx, [ebp-0x30]
	mov eax, [edx]
	add eax, [ebp-0x20]
	mov [edx], eax
Com_SortTempSoundAliases_r_190:
	mov eax, [ebp-0x2c]
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_SortTempSoundAliases_r_70:
	mov [esi], edi
	mov eax, [ebp-0x30]
	add [eax], edx
	jmp Com_SortTempSoundAliases_r_190
Com_SortTempSoundAliases_r_10:
	mov eax, [ebp-0x2c]
	mov dword [eax+0x198], 0x0
	mov eax, [ebp-0x2c]
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_SortTempSoundAliases_r_160:
	lea eax, [edi+0x40]
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_error_sound_alia4
	mov dword [esp], 0x9
	call Com_PrintError
	mov edi, [edi+0x198]
	mov edx, [ebp-0x1c]
	sub edx, 0x1
	mov [ebp-0x1c], edx
	mov ebx, [ebx+0x198]
	sub dword [ebp-0x20], 0x1
	jmp Com_SortTempSoundAliases_r_180
Com_SortTempSoundAliases_r_170:
	mov edi, [edi+0x198]
	mov edx, [ebp-0x1c]
	sub edx, 0x1
	mov [ebp-0x1c], edx
	jmp Com_SortTempSoundAliases_r_180


;FileNameTypeCompare(snd_alias_build_s*, snd_alias_build_s*)
FileNameTypeCompare:
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
	call Q_stricmp
	test eax, eax
	jnz FileNameTypeCompare_10
	mov eax, [esi+0x16c]
	sub eax, [ebx+0x16c]
	jz FileNameTypeCompare_20
FileNameTypeCompare_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
FileNameTypeCompare_20:
	lea eax, [ebx+0x40]
	mov [ebp+0xc], eax
	lea eax, [esi+0x40]
	mov [ebp+0x8], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp Q_stricmp


;Com_ParseChannelMapEntry(char const*, MSSChannelMap*, SA_SPKRMAPIDENTIFIERS, SA_SPKRMAPIDENTIFIERS)
Com_ParseChannelMapEntry:
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
	call Com_Parse
	mov ebx, eax
	mov eax, [esi*4+sa_spkrMapIdentifierStrings]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jz Com_ParseChannelMapEntry_10
	mov eax, [esi*4+sa_spkrMapIdentifierStrings]
Com_ParseChannelMapEntry_70:
	mov [esp+0x10], eax
	mov [esp+0xc], ebx
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_error_spkrmap_pa
	mov dword [esp], 0x9
	call Com_PrintError
	xor eax, eax
Com_ParseChannelMapEntry_90:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_ParseChannelMapEntry_10:
	mov dword [esp], g_spkrMapParseBuffer
	call Com_Parse
	mov ebx, eax
	mov edx, [ebp+0x8]
	mov eax, [edx*4+sa_spkrMapIdentifierStrings]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz Com_ParseChannelMapEntry_20
	mov dword [esp], g_spkrMapParseBuffer
	call Com_Parse
	cmp byte [eax], 0x0
	jz Com_ParseChannelMapEntry_30
	mov [esp], eax
	call atof
	fstp qword [ebp-0x20]
	cvtsd2ss xmm0, [ebp-0x20]
	ucomiss xmm0, [_float_0_00000000]
	jp Com_ParseChannelMapEntry_40
	jb Com_ParseChannelMapEntry_50
Com_ParseChannelMapEntry_40:
	ucomiss xmm0, [_float_1_00000000]
	jbe Com_ParseChannelMapEntry_60
Com_ParseChannelMapEntry_50:
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_error_spkrmap_pa1
	mov dword [esp], 0x9
	call Com_PrintError
	xor eax, eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_ParseChannelMapEntry_20:
	mov edx, [ebp+0x8]
	mov eax, [edx*4+sa_spkrMapIdentifierStrings]
	jmp Com_ParseChannelMapEntry_70
Com_ParseChannelMapEntry_30:
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_error_spkrmap_pa2
	mov dword [esp], 0x9
	call Com_PrintError
	xor eax, eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_ParseChannelMapEntry_60:
	mov eax, [ebp+0x8]
	mov edi, [eax*4+sa_spkrMapIdentifierValues]
	mov ecx, [esi*4+sa_spkrMapIdentifierValues]
	mov eax, edi
	shl eax, 0x4
	mov edx, [ebp-0x24]
	add edx, eax
	lea ebx, [edx+0x4]
	cmp ecx, [ebx+0x4]
	jl Com_ParseChannelMapEntry_80
	lea eax, [ecx+0x1]
	mov [ebx+0x4], eax
Com_ParseChannelMapEntry_80:
	movss [ebx+ecx*4+0x8], xmm0
	mov [edx+0x4], edi
	mov eax, 0x1
	jmp Com_ParseChannelMapEntry_90


;Com_GetSubtitleStringEdReference(char const*)
Com_GetSubtitleStringEdReference:
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
	js Com_GetSubtitleStringEdReference_10
	mov dword [esp], _cstring_soundaliasessubt
	call Com_BeginParseSession
	mov eax, [ebp-0x1c]
	mov [ebp-0x20], eax
	lea eax, [ebp-0x20]
	mov [esp], eax
	call Com_Parse
	mov edi, [ebp-0x20]
	test edi, edi
	jz Com_GetSubtitleStringEdReference_20
Com_GetSubtitleStringEdReference_90:
	mov edi, _cstring_reference
	mov ecx, 0xa
	cld
	mov esi, eax
	repe cmpsb
	mov edx, 0x0
	jz Com_GetSubtitleStringEdReference_30
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
Com_GetSubtitleStringEdReference_30:
	test edx, edx
	jnz Com_GetSubtitleStringEdReference_40
	lea eax, [ebp-0x20]
	mov [esp], eax
	call Com_ParseOnLine
	mov [esp+0x4], eax
	mov dword [esp], _ZZ32Com_GetSubtitleStringEdReferencePKcE11szReference
	call strcpy
	lea eax, [ebp-0x20]
	mov [esp], eax
	call Com_SkipRestOfLine
Com_GetSubtitleStringEdReference_70:
	lea eax, [ebp-0x20]
	mov [esp], eax
	call Com_Parse
	mov ebx, eax
	mov esi, [ebp-0x20]
	test esi, esi
	jz Com_GetSubtitleStringEdReference_50
Com_GetSubtitleStringEdReference_100:
	mov ecx, 0xd
	cld
	mov esi, ebx
	mov edi, _cstring_lang_english
	repe cmpsb
	mov eax, 0x0
	jz Com_GetSubtitleStringEdReference_60
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
Com_GetSubtitleStringEdReference_60:
	test eax, eax
	jnz Com_GetSubtitleStringEdReference_70
	lea eax, [ebp-0x20]
	mov [esp], eax
	call Com_ParseOnLine
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz Com_GetSubtitleStringEdReference_80
Com_GetSubtitleStringEdReference_40:
	lea eax, [ebp-0x20]
	mov [esp], eax
	call Com_SkipRestOfLine
	lea eax, [ebp-0x20]
	mov [esp], eax
	call Com_Parse
	mov edi, [ebp-0x20]
	test edi, edi
	jnz Com_GetSubtitleStringEdReference_90
Com_GetSubtitleStringEdReference_20:
	call Com_EndParseSession
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FreeFile
	xor eax, eax
Com_GetSubtitleStringEdReference_110:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_GetSubtitleStringEdReference_50:
	mov dword [esp+0x8], _cstring_soundaliasessubt
	mov dword [esp+0x4], _cstring_stringed_file_s_
	mov dword [esp], 0x2
	call Com_Error
	jmp Com_GetSubtitleStringEdReference_100
Com_GetSubtitleStringEdReference_80:
	call Com_EndParseSession
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
Com_GetSubtitleStringEdReference_10:
	mov dword [esp+0x8], _cstring_soundaliasessubt
	mov dword [esp+0x4], _cstring_warning_could_no
	mov dword [esp], 0x9
	call Com_PrintWarning
	xor eax, eax
	jmp Com_GetSubtitleStringEdReference_110
	nop


;Com_WriteStringEdReferenceToFile(char const*, char const*, int)
Com_WriteStringEdReferenceToFile:
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
	call FS_Write
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
	call FS_Write
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x17
	mov dword [esp], _cstring_lang_english____
	call FS_Write
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
	call FS_Write
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x5
	mov dword [esp], _cstring_
	call FS_Write
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Com_IsValidAliasName(char const*)
Com_IsValidAliasName:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	movzx eax, byte [ebx]
	cmp al, 0x1f
	jle Com_IsValidAliasName_10
	movsx edx, al
	test edx, 0xffffff80
	jnz Com_IsValidAliasName_20
	mov eax, [0xd5cc084]
	test dword [eax+edx*4+0x34], 0x500
	setnz al
	movzx eax, al
	test eax, eax
	jnz Com_IsValidAliasName_30
Com_IsValidAliasName_40:
	cmp byte [ebx], 0x5f
	jz Com_IsValidAliasName_30
Com_IsValidAliasName_10:
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Com_IsValidAliasName_20:
	mov dword [esp+0x4], 0x500
	mov [esp], edx
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	test eax, eax
	jz Com_IsValidAliasName_40
Com_IsValidAliasName_30:
	lea edx, [ebx+0x1]
	movzx eax, byte [ebx+0x1]
	test al, al
	jz Com_IsValidAliasName_50
	cmp al, 0x1f
	jle Com_IsValidAliasName_10
	mov ebx, edx
	jmp Com_IsValidAliasName_60
Com_IsValidAliasName_80:
	mov eax, [0xd5cc084]
	test dword [eax+edx*4+0x34], 0x500
	setnz al
	movzx eax, al
Com_IsValidAliasName_90:
	test eax, eax
	jnz Com_IsValidAliasName_70
	cmp byte [ebx], 0x5f
	jnz Com_IsValidAliasName_10
Com_IsValidAliasName_70:
	movzx eax, byte [ebx+0x1]
	test al, al
	jz Com_IsValidAliasName_50
	add ebx, 0x1
	cmp al, 0x1f
	jle Com_IsValidAliasName_10
Com_IsValidAliasName_60:
	movsx edx, al
	test edx, 0xffffff80
	jz Com_IsValidAliasName_80
	mov dword [esp+0x4], 0x500
	mov [esp], edx
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	jmp Com_IsValidAliasName_90
Com_IsValidAliasName_50:
	mov eax, 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;Com_LoadSoundAliasField(char const*, char const*, char const*, char const*, snd_alias_members_t, char*, snd_alias_build_s*)
Com_LoadSoundAliasField:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x40bc
	mov esi, ecx
	mov edi, [ebp+0xc]
	test edi, edi
	jz Com_LoadSoundAliasField_10
	mov ebx, [ebp+0x10]
	lea ecx, [edi+ebx]
	cmp byte [ecx], 0x0
	jnz Com_LoadSoundAliasField_20
	mov byte [ecx], 0x1
	cmp edi, 0x19
	ja Com_LoadSoundAliasField_10
	jmp dword [edi*4+Com_LoadSoundAliasField_jumptab_0]
Com_LoadSoundAliasField_500:
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call atof
	fstp qword [ebp-0x4040]
	cvtsd2ss xmm2, [ebp-0x4040]
	pxor xmm3, xmm3
	ucomiss xmm3, xmm2
	ja Com_LoadSoundAliasField_30
	movss xmm4, dword [_float_1_00000000]
	ucomiss xmm2, xmm4
	jbe Com_LoadSoundAliasField_40
Com_LoadSoundAliasField_30:
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
	call Com_PrintError
	mov eax, [ebp+0x14]
	mov byte [eax+0x192], 0x1
	movss xmm4, dword [_float_1_00000000]
	movss xmm3, dword [ebp-0x4098]
	movss xmm2, dword [ebp-0x4088]
Com_LoadSoundAliasField_40:
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
	jnz Com_LoadSoundAliasField_10
	movss [eax+0x150], xmm1
Com_LoadSoundAliasField_10:
	add esp, 0x40bc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_LoadSoundAliasField_20:
	mov eax, [edi*4+g_pszSndAliasKeyNames]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_error_sound_alia6
	mov dword [esp], 0x9
	call Com_PrintError
	mov eax, [ebp+0x14]
	mov byte [eax+0x192], 0x1
	add esp, 0x40bc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_LoadSoundAliasField_460:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp+0x8]
	repne scasb
	not ecx
	sub ecx, 0x1
	cmp ecx, 0x40
	jbe Com_LoadSoundAliasField_50
	mov dword [esp+0x14], 0x3f
	mov edx, [ebp+0x8]
	mov [esp+0x10], edx
	mov eax, [g_pszSndAliasKeyNames+0x4]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_error_sound_alia7
	mov dword [esp], 0x9
	call Com_PrintError
	mov ecx, [ebp+0x14]
	mov byte [ecx+0x192], 0x1
Com_LoadSoundAliasField_280:
	mov edx, [ebp+0x14]
	cmp byte [edx+0x192], 0x0
	jnz Com_LoadSoundAliasField_10
	mov ecx, [ebp+0x8]
	mov [esp+0x4], ecx
	mov eax, edx
	add eax, 0x40
	mov [esp], eax
	call strcpy
	jmp Com_LoadSoundAliasField_10
Com_LoadSoundAliasField_700:
	mov edx, [ebp+0x8]
	mov [esp], edx
	call atof
	fstp qword [ebp-0x4020]
	cvtsd2ss xmm2, [ebp-0x4020]
	pxor xmm3, xmm3
	ucomiss xmm3, xmm2
	ja Com_LoadSoundAliasField_60
	movss xmm4, dword [_float_1_00000000]
	ucomiss xmm2, xmm4
	jbe Com_LoadSoundAliasField_70
Com_LoadSoundAliasField_60:
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
	call Com_PrintError
	mov eax, [ebp+0x14]
	mov byte [eax+0x192], 0x1
	movss xmm4, dword [_float_1_00000000]
	movss xmm3, dword [ebp-0x4098]
	movss xmm2, dword [ebp-0x4088]
Com_LoadSoundAliasField_70:
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
	jmp Com_LoadSoundAliasField_10
Com_LoadSoundAliasField_660:
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call atoi
	mov ebx, [ebp+0x14]
	mov [ebx+0x188], eax
	jmp Com_LoadSoundAliasField_10
Com_LoadSoundAliasField_650:
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Com_RegisterSoundAliasVolumeFalloffCurve
	mov edx, [ebp+0x14]
	mov [edx+0x170], eax
	jmp Com_LoadSoundAliasField_10
Com_LoadSoundAliasField_640:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp+0x8]
	repne scasb
	not ecx
	sub ecx, 0x1
	cmp ecx, 0x40
	jbe Com_LoadSoundAliasField_80
	mov dword [esp+0x14], 0x3f
	mov edx, [ebp+0x8]
	mov [esp+0x10], edx
	mov eax, [g_pszSndAliasKeyNames+0x4c]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_error_sound_alia7
	mov dword [esp], 0x9
	call Com_PrintError
	mov ecx, [ebp+0x14]
	mov byte [ecx+0x192], 0x1
Com_LoadSoundAliasField_270:
	mov edx, [ebp+0x14]
	cmp byte [edx+0x192], 0x0
	jnz Com_LoadSoundAliasField_10
	mov ecx, [ebp+0x8]
	mov [esp+0x4], ecx
	mov eax, edx
	add eax, 0xc0
	mov [esp], eax
	call strcpy
	jmp Com_LoadSoundAliasField_10
Com_LoadSoundAliasField_630:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp+0x8]
	repne scasb
	not ecx
	sub ecx, 0x1
	cmp ecx, 0x40
	jbe Com_LoadSoundAliasField_90
	mov dword [esp+0x14], 0x3f
	mov ebx, [ebp+0x8]
	mov [esp+0x10], ebx
	mov eax, [g_pszSndAliasKeyNames+0x48]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_error_sound_alia7
	mov dword [esp], 0x9
	call Com_PrintError
	mov eax, [ebp+0x14]
	mov byte [eax+0x192], 0x1
Com_LoadSoundAliasField_290:
	mov ebx, [ebp+0x14]
	cmp byte [ebx+0x192], 0x0
	jnz Com_LoadSoundAliasField_10
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, ebx
	sub eax, 0xffffff80
	mov [esp], eax
	call strcpy
	jmp Com_LoadSoundAliasField_10
Com_LoadSoundAliasField_680:
	mov dword [esp+0x4], _cstring_fulldrylevel
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call strstr
	test eax, eax
	jz Com_LoadSoundAliasField_100
	mov ebx, [ebp+0x14]
	mov byte [ebx+0x18f], 0x1
Com_LoadSoundAliasField_100:
	mov dword [esp+0x4], _cstring_nowetlevel
	mov eax, [ebp+0x8]
	mov [esp], eax
	call strstr
	test eax, eax
	jz Com_LoadSoundAliasField_10
	mov edx, [ebp+0x14]
	mov byte [edx+0x190], 0x1
	jmp Com_LoadSoundAliasField_10
Com_LoadSoundAliasField_690:
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call atof
	fstp qword [ebp-0x4028]
	cvtsd2ss xmm2, [ebp-0x4028]
	pxor xmm3, xmm3
	ucomiss xmm3, xmm2
	ja Com_LoadSoundAliasField_110
	movss xmm4, dword [_float_1_00000000]
	ucomiss xmm2, xmm4
	jbe Com_LoadSoundAliasField_120
Com_LoadSoundAliasField_110:
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
	call Com_PrintError
	mov eax, [ebp+0x14]
	mov byte [eax+0x192], 0x1
	movss xmm4, dword [_float_1_00000000]
	movss xmm3, dword [ebp-0x4098]
	movss xmm2, dword [ebp-0x4088]
Com_LoadSoundAliasField_120:
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
	jmp Com_LoadSoundAliasField_10
Com_LoadSoundAliasField_670:
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Com_RegisterSoundAliasSpeakerMap
	mov edx, [ebp+0x14]
	mov [edx+0x174], eax
	jmp Com_LoadSoundAliasField_10
Com_LoadSoundAliasField_620:
	mov dword [esp+0x4], _cstring_master
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call Q_stricmp
	test eax, eax
	jnz Com_LoadSoundAliasField_130
	mov ebx, [ebp+0x14]
	mov byte [ebx+0x18d], 0x1
	mov byte [ebx+0x18e], 0x0
	jmp Com_LoadSoundAliasField_10
Com_LoadSoundAliasField_610:
	mov [esp], esi
	mov ecx, [ebp+0x8]
	call Com_SoundAliasLoadSpec
	mov edx, [ebp+0x14]
	mov [edx+0x193], al
	jmp Com_LoadSoundAliasField_10
Com_LoadSoundAliasField_540:
	mov edx, [ebp+0x8]
	mov [esp], edx
	call atof
	fstp qword [ebp-0x4060]
	cvtsd2ss xmm0, [ebp-0x4060]
	mov ecx, [ebp+0x14]
	movss [ecx+0x15c], xmm0
	jmp Com_LoadSoundAliasField_10
Com_LoadSoundAliasField_530:
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call atof
	fstp qword [ebp-0x4068]
	cvtsd2ss xmm0, [ebp-0x4068]
	mov ebx, [ebp+0x14]
	movss [ebx+0x158], xmm0
	mov eax, [ebp+0x10]
	cmp byte [eax+0x9], 0x0
	jnz Com_LoadSoundAliasField_10
	movss [ebx+0x15c], xmm0
	jmp Com_LoadSoundAliasField_10
Com_LoadSoundAliasField_520:
	xor ebx, ebx
	mov edi, saLoadObjGlob+0x8
	mov dword [ebp-0x4070], 0x0
	jmp Com_LoadSoundAliasField_140
Com_LoadSoundAliasField_160:
	add ebx, 0x1
	add dword [ebp-0x4070], 0x44
	add edi, 0x44
	cmp ebx, 0x20
	jz Com_LoadSoundAliasField_150
Com_LoadSoundAliasField_140:
	mov [esp+0x4], edi
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call Q_stricmp
	test eax, eax
	jnz Com_LoadSoundAliasField_160
	mov edx, [ebp-0x4070]
	mov eax, [edx+saLoadObjGlob+0x48]
Com_LoadSoundAliasField_300:
	mov edx, [ebp+0x14]
	mov [edx+0x154], eax
	jmp Com_LoadSoundAliasField_10
Com_LoadSoundAliasField_510:
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call atof
	fstp qword [ebp-0x4038]
	cvtsd2ss xmm2, [ebp-0x4038]
	pxor xmm3, xmm3
	ucomiss xmm3, xmm2
	ja Com_LoadSoundAliasField_170
	movss xmm4, dword [_float_1_00000000]
	ucomiss xmm2, xmm4
	jbe Com_LoadSoundAliasField_180
Com_LoadSoundAliasField_170:
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
	call Com_PrintError
	mov eax, [ebp+0x14]
	mov byte [eax+0x192], 0x1
	movss xmm4, dword [_float_1_00000000]
	movss xmm3, dword [ebp-0x4098]
	movss xmm2, dword [ebp-0x4088]
Com_LoadSoundAliasField_180:
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
	jmp Com_LoadSoundAliasField_10
Com_LoadSoundAliasField_580:
	mov dword [esp+0x4], _cstring_streamed
	mov edx, [ebp+0x8]
	mov [esp], edx
	call Q_stricmp
	test eax, eax
	jnz Com_LoadSoundAliasField_190
	mov ecx, [ebp+0x14]
	mov dword [ecx+0x16c], 0x2
	jmp Com_LoadSoundAliasField_10
Com_LoadSoundAliasField_570:
	mov ebx, [saLoadObjGlob+0x188c]
	test ebx, ebx
	jg Com_LoadSoundAliasField_200
Com_LoadSoundAliasField_380:
	lea ecx, [ebp-0x4018]
	mov [esp+0x10], ecx
	mov ebx, [ebp+0x8]
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_error_sound_alia8
	mov dword [esp], 0x9
	call Com_PrintError
	mov eax, [ebp+0x14]
	mov byte [eax+0x192], 0x1
	jmp Com_LoadSoundAliasField_10
Com_LoadSoundAliasField_560:
	mov eax, [ebp+0x8]
	mov [esp], eax
	call atof
	fstp qword [ebp-0x4050]
	cvtsd2ss xmm0, [ebp-0x4050]
	mov edx, [ebp+0x14]
	movss [edx+0x164], xmm0
	jmp Com_LoadSoundAliasField_10
Com_LoadSoundAliasField_550:
	mov eax, [ebp+0x8]
	mov [esp], eax
	call atof
	fstp qword [ebp-0x4058]
	cvtsd2ss xmm0, [ebp-0x4058]
	mov edx, [ebp+0x14]
	movss [edx+0x160], xmm0
	jmp Com_LoadSoundAliasField_10
Com_LoadSoundAliasField_600:
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call atof
	fstp qword [ebp-0x4048]
	cvtsd2ss xmm0, [ebp-0x4048]
	mov eax, [ebp+0x14]
	movss [eax+0x17c], xmm0
	jmp Com_LoadSoundAliasField_10
Com_LoadSoundAliasField_590:
	mov dword [esp+0x4], _cstring_looping
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz Com_LoadSoundAliasField_210
	mov eax, [ebp+0x14]
	mov byte [eax+0x18c], 0x1
	jmp Com_LoadSoundAliasField_10
Com_LoadSoundAliasField_480:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp+0x8]
	repne scasb
	not ecx
	sub ecx, 0x1
	cmp ecx, 0x40
	ja Com_LoadSoundAliasField_220
Com_LoadSoundAliasField_330:
	mov eax, [ebp+0x14]
	cmp byte [eax+0x192], 0x0
	jnz Com_LoadSoundAliasField_10
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	add eax, 0x108
	mov [esp], eax
	call strcpy
	jmp Com_LoadSoundAliasField_10
Com_LoadSoundAliasField_490:
	mov edx, [ebp+0x8]
	movzx eax, byte [edx]
	cmp al, 0x0
	jz Com_LoadSoundAliasField_230
	jl Com_LoadSoundAliasField_240
	xor eax, eax
Com_LoadSoundAliasField_260:
	add eax, 0x1
	mov ebx, eax
	mov ecx, [ebp+0x8]
	movzx edx, byte [ecx+eax]
	cmp dl, 0x0
	jz Com_LoadSoundAliasField_250
	jge Com_LoadSoundAliasField_260
Com_LoadSoundAliasField_450:
	movzx eax, dl
	mov [esp+0x14], eax
	movsx eax, dl
	mov [esp+0x10], eax
	mov ecx, [ebp+0x8]
	mov [esp+0xc], ecx
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_error_sound_alia9
	mov dword [esp], 0x9
	call Com_PrintError
	mov ebx, [ebp+0x14]
	mov byte [ebx+0x192], 0x1
	jmp Com_LoadSoundAliasField_10
Com_LoadSoundAliasField_470:
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call atoi
	mov edx, [ebp+0x14]
	mov [edx+0x104], eax
	jmp Com_LoadSoundAliasField_10
Com_LoadSoundAliasField_80:
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call Com_IsValidAliasName
	test eax, eax
	mov eax, [ebp+0x14]
	setz byte [eax+0x192]
	jmp Com_LoadSoundAliasField_270
Com_LoadSoundAliasField_50:
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call Com_IsValidAliasName
	test eax, eax
	mov eax, [ebp+0x14]
	setz byte [eax+0x192]
	jmp Com_LoadSoundAliasField_280
Com_LoadSoundAliasField_90:
	mov edx, [ebp+0x8]
	mov [esp], edx
	call Com_IsValidAliasName
	test eax, eax
	mov ecx, [ebp+0x14]
	setz byte [ecx+0x192]
	jmp Com_LoadSoundAliasField_290
Com_LoadSoundAliasField_150:
	mov ebx, [ebp+0x8]
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_sound_alias_file
	mov dword [esp], 0x2
	call Com_Error
	xor eax, eax
	jmp Com_LoadSoundAliasField_300
Com_LoadSoundAliasField_130:
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
	jp Com_LoadSoundAliasField_310
	jb Com_LoadSoundAliasField_320
Com_LoadSoundAliasField_310:
	ucomiss xmm0, [_float_1_00000000]
	jbe Com_LoadSoundAliasField_10
Com_LoadSoundAliasField_320:
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x20], 0x3ff00000
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x18], 0x0
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_error_sound_alia10
	mov dword [esp], 0x9
	call Com_PrintError
	mov ebx, [ebp+0x14]
	mov byte [ebx+0x192], 0x1
	jmp Com_LoadSoundAliasField_10
Com_LoadSoundAliasField_220:
	mov dword [esp+0x14], 0x3f
	mov ecx, [ebp+0x8]
	mov [esp+0x10], ecx
	mov eax, [g_pszSndAliasKeyNames+0xc]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_error_sound_alia7
	mov dword [esp], 0x9
	call Com_PrintError
	mov ebx, [ebp+0x14]
	mov byte [ebx+0x192], 0x1
	jmp Com_LoadSoundAliasField_330
Com_LoadSoundAliasField_210:
	mov dword [esp+0x4], _cstring_rlooping
	mov edx, [ebp+0x8]
	mov [esp], edx
	call Q_stricmp
	test eax, eax
	jnz Com_LoadSoundAliasField_340
	mov ecx, [ebp+0x14]
	mov byte [ecx+0x18c], 0x1
	mov byte [ecx+0x191], 0x1
	jmp Com_LoadSoundAliasField_10
Com_LoadSoundAliasField_230:
	mov edx, 0x1
	xor esi, esi
	xor ebx, ebx
Com_LoadSoundAliasField_430:
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
	jmp Com_LoadSoundAliasField_10
Com_LoadSoundAliasField_190:
	mov dword [esp+0x4], _cstring_loaded
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz Com_LoadSoundAliasField_350
	mov eax, [ebp+0x14]
	mov dword [eax+0x16c], 0x1
	jmp Com_LoadSoundAliasField_10
Com_LoadSoundAliasField_200:
	xor ebx, ebx
Com_LoadSoundAliasField_370:
	mov eax, ebx
	shl eax, 0x6
	add eax, saLoadObjGlob+0x889
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz Com_LoadSoundAliasField_360
	add ebx, 0x1
	cmp ebx, [saLoadObjGlob+0x188c]
	jl Com_LoadSoundAliasField_370
	mov edi, [saLoadObjGlob+0x188c]
	test edi, edi
	jle Com_LoadSoundAliasField_380
	xor edi, edi
	xor ebx, ebx
	mov dword [ebp-0x406c], saLoadObjGlob+0x889
	jmp Com_LoadSoundAliasField_390
Com_LoadSoundAliasField_410:
	jz Com_LoadSoundAliasField_400
Com_LoadSoundAliasField_420:
	add edi, 0x1
	add dword [ebp-0x406c], 0x40
	cmp [saLoadObjGlob+0x188c], edi
	jle Com_LoadSoundAliasField_380
Com_LoadSoundAliasField_390:
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
	jge Com_LoadSoundAliasField_410
	lea eax, [ebp-0x4018]
	add eax, ebx
	mov word [eax], 0x202c
	mov byte [eax+0x2], 0x0
	add ebx, 0x2
	jmp Com_LoadSoundAliasField_420
Com_LoadSoundAliasField_250:
	lea edx, [eax+0x1]
	mov esi, eax
	jmp Com_LoadSoundAliasField_430
Com_LoadSoundAliasField_400:
	lea eax, [ebp-0x4018]
	add eax, ebx
	mov dword [eax], 0x20726f20
	mov byte [eax+0x4], 0x0
	add ebx, 0x4
	jmp Com_LoadSoundAliasField_420
Com_LoadSoundAliasField_360:
	mov ecx, [ebp+0x14]
	mov [ecx+0x168], ebx
	jmp Com_LoadSoundAliasField_10
Com_LoadSoundAliasField_350:
	mov edx, [ebp+0x8]
	mov [esp+0xc], edx
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_error_sound_alia11
	mov dword [esp], 0x9
	call Com_PrintError
	mov ecx, [ebp+0x14]
	mov byte [ecx+0x192], 0x1
	jmp Com_LoadSoundAliasField_10
Com_LoadSoundAliasField_340:
	mov dword [esp+0x4], _cstring_nonlooping
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz Com_LoadSoundAliasField_440
	mov eax, [ebp+0x14]
	mov byte [eax+0x18c], 0x0
	jmp Com_LoadSoundAliasField_10
Com_LoadSoundAliasField_240:
	mov edx, eax
	jmp Com_LoadSoundAliasField_450
Com_LoadSoundAliasField_440:
	mov edx, [ebp+0x8]
	mov [esp+0xc], edx
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_error_sound_alia12
	mov dword [esp], 0x9
	call Com_PrintError
	mov ecx, [ebp+0x14]
	mov byte [ecx+0x192], 0x1
	jmp Com_LoadSoundAliasField_10
	
	
Com_LoadSoundAliasField_jumptab_0:
	dd Com_LoadSoundAliasField_10
	dd Com_LoadSoundAliasField_460
	dd Com_LoadSoundAliasField_470
	dd Com_LoadSoundAliasField_480
	dd Com_LoadSoundAliasField_490
	dd Com_LoadSoundAliasField_500
	dd Com_LoadSoundAliasField_510
	dd Com_LoadSoundAliasField_520
	dd Com_LoadSoundAliasField_530
	dd Com_LoadSoundAliasField_540
	dd Com_LoadSoundAliasField_550
	dd Com_LoadSoundAliasField_560
	dd Com_LoadSoundAliasField_570
	dd Com_LoadSoundAliasField_580
	dd Com_LoadSoundAliasField_590
	dd Com_LoadSoundAliasField_600
	dd Com_LoadSoundAliasField_610
	dd Com_LoadSoundAliasField_620
	dd Com_LoadSoundAliasField_630
	dd Com_LoadSoundAliasField_640
	dd Com_LoadSoundAliasField_650
	dd Com_LoadSoundAliasField_660
	dd Com_LoadSoundAliasField_670
	dd Com_LoadSoundAliasField_680
	dd Com_LoadSoundAliasField_690
	dd Com_LoadSoundAliasField_700


;Com_InitSoundAlias()
Com_InitSoundAlias:
	push ebp
	mov ebp, esp
	mov dword [saLoadObjGlob], 0x0
	mov dword [saLoadObjGlob+0x4], 0x0
	pop ebp
	ret
	nop


;Com_InitEntChannels()
Com_InitEntChannels:
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
	js Com_InitEntChannels_10
Com_InitEntChannels_120:
	mov eax, [ebp-0x1c]
	mov [ebp-0x20], eax
	mov dword [saLoadObjGlob+0x188c], 0x0
	mov dword [esp], _cstring_soundaliaseschan
	call Com_BeginParseSession
	mov dword [esp], 0x1
	call Com_SetCSV
	jmp Com_InitEntChannels_20
Com_InitEntChannels_70:
	movzx eax, byte [ebx]
	test al, al
	jz Com_InitEntChannels_30
	cmp al, 0x23
	jz Com_InitEntChannels_30
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	sub ecx, 0x1
	cmp ecx, 0x40
	ja Com_InitEntChannels_40
Com_InitEntChannels_110:
	mov eax, [saLoadObjGlob+0x188c]
	test eax, eax
	jg Com_InitEntChannels_50
Com_InitEntChannels_90:
	mov [esp+0x4], ebx
	shl eax, 0x6
	add eax, saLoadObjGlob+0x889
	mov [esp], eax
	call strcpy
	mov eax, [saLoadObjGlob+0x188c]
	add eax, 0x1
	mov [saLoadObjGlob+0x188c], eax
	cmp eax, 0x40
	jg Com_InitEntChannels_60
Com_InitEntChannels_30:
	lea eax, [ebp-0x20]
	mov [esp], eax
	call Com_SkipRestOfLine
Com_InitEntChannels_20:
	lea eax, [ebp-0x20]
	mov [esp], eax
	call Com_Parse
	mov ebx, eax
	mov eax, [ebp-0x20]
	test eax, eax
	jnz Com_InitEntChannels_70
	call Com_EndParseSession
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_InitEntChannels_60:
	call Com_EndParseSession
	mov dword [esp+0xc], _cstring_soundaliaseschan
	mov dword [esp+0x8], 0x40
	mov dword [esp+0x4], _cstring_exceeded_max_num
	mov dword [esp], 0x2
	call Com_Error
	jmp Com_InitEntChannels_30
Com_InitEntChannels_50:
	xor esi, esi
	mov edi, saLoadObjGlob+0x889
	jmp Com_InitEntChannels_80
Com_InitEntChannels_100:
	add esi, 0x1
	add edi, 0x40
	mov eax, [saLoadObjGlob+0x188c]
	cmp esi, eax
	jge Com_InitEntChannels_90
Com_InitEntChannels_80:
	mov [esp+0x4], ebx
	mov [esp], edi
	call Q_stricmp
	test eax, eax
	jnz Com_InitEntChannels_100
	call Com_EndParseSession
	mov dword [esp+0xc], _cstring_soundaliaseschan
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_duplicate_channe
	mov dword [esp], 0x2
	call Com_Error
	jmp Com_InitEntChannels_100
Com_InitEntChannels_40:
	call Com_EndParseSession
	mov dword [esp+0x10], _cstring_soundaliaseschan
	mov [esp+0xc], ebx
	mov dword [esp+0x8], 0x40
	mov dword [esp+0x4], _cstring_channel_name_too
	mov dword [esp], 0x2
	call Com_Error
	jmp Com_InitEntChannels_110
Com_InitEntChannels_10:
	mov dword [esp+0x8], _cstring_soundaliaseschan
	mov dword [esp+0x4], _cstring_unable_to_load_e
	mov dword [esp], 0x2
	call Com_Error
	jmp Com_InitEntChannels_120
	nop


;Com_LoadSpkrMapFile(char const*, SpeakerMapInfo*)
Com_LoadSpkrMapFile:
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
	call Com_sprintf
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	lea edx, [ebp-0x5c]
	mov [esp], edx
	call FS_FOpenFileByMode
	mov ebx, eax
	test eax, eax
	jle Com_LoadSpkrMapFile_10
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x7
	lea edx, [ebp-0x205c]
	mov [esp], edx
	call FS_Read
	mov byte [ebp-0x2055], 0x0
	mov edi, _cstring_spkrmap
	mov ecx, 0x7
	cld
	lea esi, [ebp-0x205c]
	repe cmpsb
	mov eax, 0x0
	jz Com_LoadSpkrMapFile_20
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
Com_LoadSpkrMapFile_20:
	test eax, eax
	jnz Com_LoadSpkrMapFile_30
	lea esi, [ebx-0x7]
	cmp esi, 0x1fff
	jle Com_LoadSpkrMapFile_40
	lea edx, [ebp-0x5c]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_error_s_is_too_l
	mov dword [esp], 0x9
	call Com_PrintError
Com_LoadSpkrMapFile_60:
	mov eax, [ebp+0xc]
	mov [esp], eax
	call Com_InitDefaultSoundAliasSpeakerMap
	xor eax, eax
Com_LoadSpkrMapFile_80:
	add esp, 0x206c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_LoadSpkrMapFile_40:
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	lea edx, [ebp-0x205c]
	mov [esp], edx
	call FS_Read
	mov byte [ebp+esi-0x205c], 0x0
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FCloseFile
	lea eax, [ebp-0x205c]
	mov [g_spkrMapParseBuffer], eax
	lea edx, [ebp-0x5c]
	mov [esp], edx
	call Com_BeginParseSession
	mov ebx, [ebp+0xc]
	add ebx, 0x48
	mov dword [esp], 0x3
	xor ecx, ecx
	mov edx, ebx
	lea eax, [ebp-0x5c]
	call Com_ParseChannelMapEntry
	test al, al
	jnz Com_LoadSpkrMapFile_50
Com_LoadSpkrMapFile_70:
	call Com_EndParseSession
	mov dword [g_spkrMapParseBuffer], 0x0
	jmp Com_LoadSpkrMapFile_60
Com_LoadSpkrMapFile_30:
	lea eax, [ebp-0x5c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_s_does_not
	mov dword [esp], 0x9
	call Com_PrintError
	jmp Com_LoadSpkrMapFile_60
Com_LoadSpkrMapFile_10:
	lea eax, [ebp-0x5c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_could_not_
	mov dword [esp], 0x9
	call Com_PrintError
	jmp Com_LoadSpkrMapFile_60
Com_LoadSpkrMapFile_50:
	mov dword [esp], 0x4
	xor ecx, ecx
	mov edx, ebx
	lea eax, [ebp-0x5c]
	call Com_ParseChannelMapEntry
	test al, al
	jz Com_LoadSpkrMapFile_70
	mov ebx, [ebp+0xc]
	add ebx, 0x110
	mov dword [esp], 0x3
	mov ecx, 0x1
	mov edx, ebx
	lea eax, [ebp-0x5c]
	call Com_ParseChannelMapEntry
	test al, al
	jz Com_LoadSpkrMapFile_70
	mov dword [esp], 0x3
	mov ecx, 0x2
	mov edx, ebx
	lea eax, [ebp-0x5c]
	call Com_ParseChannelMapEntry
	test al, al
	jz Com_LoadSpkrMapFile_70
	mov dword [esp], 0x4
	mov ecx, 0x1
	mov edx, ebx
	lea eax, [ebp-0x5c]
	call Com_ParseChannelMapEntry
	test al, al
	jz Com_LoadSpkrMapFile_70
	mov dword [esp], 0x4
	mov ecx, 0x2
	mov edx, ebx
	lea eax, [ebp-0x5c]
	call Com_ParseChannelMapEntry
	test al, al
	jz Com_LoadSpkrMapFile_70
	mov ebx, [ebp+0xc]
	add ebx, 0xac
	mov dword [esp], 0x3
	xor ecx, ecx
	mov edx, ebx
	lea eax, [ebp-0x5c]
	call Com_ParseChannelMapEntry
	test al, al
	jz Com_LoadSpkrMapFile_70
	mov dword [esp], 0x4
	xor ecx, ecx
	mov edx, ebx
	lea eax, [ebp-0x5c]
	call Com_ParseChannelMapEntry
	test al, al
	jz Com_LoadSpkrMapFile_70
	mov dword [esp], 0x5
	xor ecx, ecx
	mov edx, ebx
	lea eax, [ebp-0x5c]
	call Com_ParseChannelMapEntry
	test al, al
	jz Com_LoadSpkrMapFile_70
	mov dword [esp], 0x6
	xor ecx, ecx
	mov edx, ebx
	lea eax, [ebp-0x5c]
	call Com_ParseChannelMapEntry
	test al, al
	jz Com_LoadSpkrMapFile_70
	mov dword [esp], 0x7
	xor ecx, ecx
	mov edx, ebx
	lea eax, [ebp-0x5c]
	call Com_ParseChannelMapEntry
	test al, al
	jz Com_LoadSpkrMapFile_70
	mov dword [esp], 0x8
	xor ecx, ecx
	mov edx, ebx
	lea eax, [ebp-0x5c]
	call Com_ParseChannelMapEntry
	test al, al
	jz Com_LoadSpkrMapFile_70
	mov ebx, [ebp+0xc]
	add ebx, 0x174
	mov dword [esp], 0x3
	mov ecx, 0x1
	mov edx, ebx
	lea eax, [ebp-0x5c]
	call Com_ParseChannelMapEntry
	test al, al
	jz Com_LoadSpkrMapFile_70
	mov dword [esp], 0x3
	mov ecx, 0x2
	mov edx, ebx
	lea eax, [ebp-0x5c]
	call Com_ParseChannelMapEntry
	test al, al
	jz Com_LoadSpkrMapFile_70
	mov dword [esp], 0x4
	mov ecx, 0x1
	mov edx, ebx
	lea eax, [ebp-0x5c]
	call Com_ParseChannelMapEntry
	test al, al
	jz Com_LoadSpkrMapFile_70
	mov dword [esp], 0x4
	mov ecx, 0x2
	mov edx, ebx
	lea eax, [ebp-0x5c]
	call Com_ParseChannelMapEntry
	test al, al
	jz Com_LoadSpkrMapFile_70
	mov dword [esp], 0x5
	mov ecx, 0x1
	mov edx, ebx
	lea eax, [ebp-0x5c]
	call Com_ParseChannelMapEntry
	test al, al
	jz Com_LoadSpkrMapFile_70
	mov dword [esp], 0x5
	mov ecx, 0x2
	mov edx, ebx
	lea eax, [ebp-0x5c]
	call Com_ParseChannelMapEntry
	test al, al
	jz Com_LoadSpkrMapFile_70
	mov dword [esp], 0x6
	mov ecx, 0x1
	mov edx, ebx
	lea eax, [ebp-0x5c]
	call Com_ParseChannelMapEntry
	test al, al
	jz Com_LoadSpkrMapFile_70
	mov dword [esp], 0x6
	mov ecx, 0x2
	mov edx, ebx
	lea eax, [ebp-0x5c]
	call Com_ParseChannelMapEntry
	test al, al
	jz Com_LoadSpkrMapFile_70
	mov dword [esp], 0x7
	mov ecx, 0x1
	mov edx, ebx
	lea eax, [ebp-0x5c]
	call Com_ParseChannelMapEntry
	test al, al
	jz Com_LoadSpkrMapFile_70
	mov dword [esp], 0x7
	mov ecx, 0x2
	mov edx, ebx
	lea eax, [ebp-0x5c]
	call Com_ParseChannelMapEntry
	test al, al
	jz Com_LoadSpkrMapFile_70
	mov dword [esp], 0x8
	mov ecx, 0x1
	mov edx, ebx
	lea eax, [ebp-0x5c]
	call Com_ParseChannelMapEntry
	test al, al
	jz Com_LoadSpkrMapFile_70
	mov dword [esp], 0x8
	mov ecx, 0x2
	mov edx, ebx
	lea eax, [ebp-0x5c]
	call Com_ParseChannelMapEntry
	test al, al
	jz Com_LoadSpkrMapFile_70
	call Com_EndParseSession
	mov dword [g_spkrMapParseBuffer], 0x0
	mov edx, [ebp+0x8]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x40
	mov eax, [ebp+0xc]
	mov [esp], eax
	call Com_sprintf
	mov eax, 0x1
	jmp Com_LoadSpkrMapFile_80
	nop


;Com_LoadSoundAliasFile(char const*, char const*, char const*)
Com_LoadSoundAliasFile:
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
	call Com_sprintf
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], edi
	call FS_ReadFile
	test eax, eax
	js Com_LoadSoundAliasFile_10
	cmp byte [saLoadObjGlob+0x888], 0x0
	jnz Com_LoadSoundAliasFile_20
	cmp byte [saLoadObjGlob+0x1890], 0x0
	jz Com_LoadSoundAliasFile_30
Com_LoadSoundAliasFile_420:
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
	call FS_FOpenFileRead
	mov ebx, eax
	cmp eax, 0x0
	jl Com_LoadSoundAliasFile_40
	jnz Com_LoadSoundAliasFile_50
	mov eax, [ebp-0x24]
	mov [esp], eax
	call FS_FCloseFile
	lea eax, [ebp-0xc5]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_s_is_empty
	mov dword [esp], 0x2
	call Com_Error
Com_LoadSoundAliasFile_460:
	mov byte [saLoadObjGlob+0x888], 0x1
Com_LoadSoundAliasFile_20:
	lea eax, [ebp-0x85]
	mov [esp], eax
	call Com_BeginParseSession
	mov dword [esp], 0x1
	call Com_SetCSV
	mov eax, [ebp-0x1c]
	mov [ebp-0x20], eax
	xor esi, esi
Com_LoadSoundAliasFile_190:
	lea edx, [ebp-0x20]
	mov [esp], edx
	call Com_Parse
	mov [ebp-0x268c], eax
	mov edx, [ebp-0x20]
	test edx, edx
	jz Com_LoadSoundAliasFile_60
	movzx eax, byte [eax]
	test al, al
	jz Com_LoadSoundAliasFile_70
	cmp al, 0x23
	jz Com_LoadSoundAliasFile_70
	test esi, esi
	jnz Com_LoadSoundAliasFile_80
	mov dword [ebp-0x2678], 0x0
	mov dword [ebp-0x2674], 0x0
	mov dword [ebp-0x2670], 0x1
Com_LoadSoundAliasFile_150:
	mov edx, [ebp-0x2670]
	lea eax, [ebp+edx*4-0x664]
	lea edi, [eax-0x4]
	mov [ebp-0x266c], edi
	mov dword [eax-0x4], 0x0
	mov esi, 0x1
	mov ebx, g_pszSndAliasKeyNames
	jmp Com_LoadSoundAliasFile_90
Com_LoadSoundAliasFile_110:
	add esi, 0x1
	add ebx, 0x4
	cmp esi, 0x1d
	jz Com_LoadSoundAliasFile_100
Com_LoadSoundAliasFile_90:
	mov eax, [ebp-0x268c]
	mov [esp+0x4], eax
	mov eax, [ebx+0x4]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz Com_LoadSoundAliasFile_110
	mov edx, [ebp-0x266c]
	mov [edx], esi
	cmp esi, 0x1
	jz Com_LoadSoundAliasFile_120
	cmp esi, 0x3
	jz Com_LoadSoundAliasFile_130
Com_LoadSoundAliasFile_100:
	mov esi, [ebp-0x2670]
	cmp esi, 0x100
	jz Com_LoadSoundAliasFile_140
Com_LoadSoundAliasFile_170:
	mov eax, [ebp-0x20]
	test eax, eax
	jz Com_LoadSoundAliasFile_140
	lea edi, [esi+0x1]
	mov [ebp-0x2670], edi
	cmp byte [eax], 0xa
	jz Com_LoadSoundAliasFile_140
	lea eax, [ebp-0x20]
	mov [esp], eax
	call Com_ParseOnLine
	mov [ebp-0x268c], eax
	jmp Com_LoadSoundAliasFile_150
Com_LoadSoundAliasFile_240:
	mov eax, [saLoadObjGlob]
	test eax, eax
	jz Com_LoadSoundAliasFile_160
	add eax, 0x40
Com_LoadSoundAliasFile_510:
	mov [esp+0x14], eax
	lea eax, [ebp-0x15c]
	mov [esp+0x10], eax
	lea eax, [ebp-0x224]
	mov [esp+0xc], eax
	mov edi, [ebp+0x10]
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_error_sound_alia13
	mov dword [esp], 0x9
	call Com_PrintError
Com_LoadSoundAliasFile_60:
	call Com_EndParseSession
Com_LoadSoundAliasFile_10:
	add esp, 0x26ac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_LoadSoundAliasFile_120:
	mov dword [ebp-0x2678], 0x1
	mov esi, [ebp-0x2670]
	cmp esi, 0x100
	jnz Com_LoadSoundAliasFile_170
Com_LoadSoundAliasFile_140:
	mov eax, [ebp-0x2678]
	test eax, eax
	jz Com_LoadSoundAliasFile_180
	mov eax, [ebp-0x2674]
	test eax, eax
	jz Com_LoadSoundAliasFile_180
Com_LoadSoundAliasFile_260:
	lea edx, [ebp-0x20]
	mov [esp], edx
	call Com_SkipRestOfLine
	jmp Com_LoadSoundAliasFile_190
Com_LoadSoundAliasFile_130:
	mov dword [ebp-0x2674], 0x1
	jmp Com_LoadSoundAliasFile_100
Com_LoadSoundAliasFile_70:
	lea eax, [ebp-0x20]
	mov [esp], eax
	call Com_SkipRestOfLine
	jmp Com_LoadSoundAliasFile_190
Com_LoadSoundAliasFile_80:
	cld
	xor eax, eax
	mov ecx, 0x7
	lea edi, [ebp-0x45]
	rep stosd
	stosb
	mov ecx, [ebp+0x8]
	mov edx, [ebp+0x10]
	lea eax, [ebp-0x264]
	call Com_LoadSoundAliasDefaults
	xor ebx, ebx
	mov eax, [ebp-0x268c]
	jmp Com_LoadSoundAliasFile_200
Com_LoadSoundAliasFile_220:
	add ebx, 0x1
	cmp esi, ebx
	jz Com_LoadSoundAliasFile_210
Com_LoadSoundAliasFile_230:
	lea edx, [ebp-0x20]
	mov [esp], edx
	call Com_ParseOnLine
	mov [ebp-0x268c], eax
Com_LoadSoundAliasFile_200:
	cmp byte [eax], 0x0
	jz Com_LoadSoundAliasFile_220
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
	call Com_LoadSoundAliasField
	add ebx, 0x1
	cmp esi, ebx
	jnz Com_LoadSoundAliasFile_230
Com_LoadSoundAliasFile_210:
	cmp byte [ebp-0x44], 0x0
	jz Com_LoadSoundAliasFile_240
	cmp byte [ebp-0x42], 0x0
	jz Com_LoadSoundAliasFile_240
	cmp byte [ebp-0x35], 0x0
	jz Com_LoadSoundAliasFile_250
Com_LoadSoundAliasFile_380:
	cmp byte [ebp-0xd1], 0x0
	jz Com_LoadSoundAliasFile_260
	cmp byte [ebp-0xd2], 0x0
	jnz Com_LoadSoundAliasFile_260
	movss xmm0, dword [ebp-0x10c]
	movss xmm1, dword [ebp-0x108]
	ucomiss xmm0, xmm1
	ja Com_LoadSoundAliasFile_270
Com_LoadSoundAliasFile_400:
	pxor xmm2, xmm2
	ucomiss xmm2, xmm0
	jae Com_LoadSoundAliasFile_280
	movss xmm1, dword [ebp-0x118]
	movss xmm0, dword [ebp-0x114]
	ucomiss xmm1, xmm0
	ja Com_LoadSoundAliasFile_290
Com_LoadSoundAliasFile_390:
	ucomiss xmm2, xmm1
	ja Com_LoadSoundAliasFile_300
	ucomiss xmm2, [ebp-0x100]
	jnz Com_LoadSoundAliasFile_310
	jp Com_LoadSoundAliasFile_310
	movss xmm1, dword [ebp-0x104]
	movaps xmm0, xmm1
	mulss xmm0, [_float_5_00000000]
	movss [ebp-0x100], xmm0
Com_LoadSoundAliasFile_410:
	movss xmm0, dword [ebp-0x100]
	ucomiss xmm1, xmm0
	jae Com_LoadSoundAliasFile_320
	ucomiss xmm2, xmm1
	jae Com_LoadSoundAliasFile_330
	movss xmm0, dword [ebp-0x110]
	movss xmm1, dword [_float_1_00000000]
	ucomiss xmm0, xmm1
	jp Com_LoadSoundAliasFile_340
	jz Com_LoadSoundAliasFile_350
Com_LoadSoundAliasFile_340:
	mulss xmm0, [ebp-0x118]
	ucomiss xmm2, xmm0
	ja Com_LoadSoundAliasFile_360
	movaps xmm3, xmm1
	minss xmm3, xmm0
	movaps xmm0, xmm3
Com_LoadSoundAliasFile_530:
	movss [ebp-0x118], xmm0
	movss xmm0, dword [ebp-0x114]
	mulss xmm0, [ebp-0x110]
	ucomiss xmm2, xmm0
	ja Com_LoadSoundAliasFile_370
	minss xmm1, xmm0
	movaps xmm0, xmm1
Com_LoadSoundAliasFile_520:
	movss [ebp-0x114], xmm0
Com_LoadSoundAliasFile_350:
	mov dword [esp+0x4], _cstring_com_addbuildsoun
	mov dword [esp], 0x19c
	call Com_AllocateTempSoundMemory
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
	jmp Com_LoadSoundAliasFile_260
Com_LoadSoundAliasFile_250:
	mov eax, [ebp+0x10]
	mov [esp], eax
	mov ecx, _cstring_null
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	call Com_SoundAliasLoadSpec
	mov [ebp-0xd1], al
	jmp Com_LoadSoundAliasFile_380
Com_LoadSoundAliasFile_290:
	movss [ebp-0x114], xmm1
	movss [ebp-0x118], xmm0
	movaps xmm1, xmm0
	jmp Com_LoadSoundAliasFile_390
Com_LoadSoundAliasFile_270:
	movss [ebp-0x108], xmm0
	movaps xmm0, xmm1
	movss [ebp-0x10c], xmm1
	jmp Com_LoadSoundAliasFile_400
Com_LoadSoundAliasFile_310:
	movss xmm1, dword [ebp-0x104]
	jmp Com_LoadSoundAliasFile_410
Com_LoadSoundAliasFile_30:
	mov dword [esp+0x8], _ZZ22Com_LoadSoundAliasFilePKcS0_S0_E32Com_RefreshVolumeModGroups_f_VAR
	mov dword [esp+0x4], Com_RefreshVolumeModGroups_f
	mov dword [esp], _cstring_snd_refreshvolum
	call Cmd_AddCommand
	mov byte [saLoadObjGlob+0x1890], 0x1
	jmp Com_LoadSoundAliasFile_420
Com_LoadSoundAliasFile_180:
	mov edx, [ebp+0x10]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_error_sound_alia14
	mov dword [esp], 0x9
	call Com_PrintError
	call Com_EndParseSession
	jmp Com_LoadSoundAliasFile_10
Com_LoadSoundAliasFile_50:
	mov eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xf
	lea edx, [ebp-0x2664]
	mov [esp], edx
	call FS_Read
	mov byte [ebp-0x2655], 0x0
	mov edi, _cstring_volumemodgroups
	mov ecx, 0xf
	cld
	lea esi, [ebp-0x2664]
	repe cmpsb
	mov eax, 0x0
	jz Com_LoadSoundAliasFile_430
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
Com_LoadSoundAliasFile_430:
	test eax, eax
	jnz Com_LoadSoundAliasFile_440
	sub ebx, 0xf
	cmp ebx, 0x1fff
	jle Com_LoadSoundAliasFile_450
	mov eax, [ebp-0x24]
	mov [esp], eax
	call FS_FCloseFile
	lea eax, [ebp-0xc5]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_s_is_too_l1
	mov dword [esp], 0x2
	call Com_Error
	jmp Com_LoadSoundAliasFile_460
Com_LoadSoundAliasFile_320:
	cvtss2sd xmm0, xmm0
	movsd [esp+0x14], xmm0
	cvtss2sd xmm1, xmm1
	movsd [esp+0xc], xmm1
	lea eax, [ebp-0x224]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_sound_alia15
	mov dword [esp], 0x9
	call Com_PrintError
	jmp Com_LoadSoundAliasFile_260
Com_LoadSoundAliasFile_300:
	cvtss2sd xmm1, xmm1
	movsd [esp+0xc], xmm1
	lea eax, [ebp-0x224]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_sound_alia16
	mov dword [esp], 0x9
	call Com_PrintError
	jmp Com_LoadSoundAliasFile_260
Com_LoadSoundAliasFile_280:
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	lea eax, [ebp-0x224]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_sound_alia17
	mov dword [esp], 0x9
	call Com_PrintError
	jmp Com_LoadSoundAliasFile_260
Com_LoadSoundAliasFile_450:
	mov dword [esp+0x8], 0x2000
	mov dword [esp+0x4], 0x0
	lea edi, [ebp-0x2664]
	mov [esp], edi
	call memset
	mov eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], edi
	call FS_Read
	mov byte [ebp+ebx-0x2664], 0x0
	mov eax, [ebp-0x24]
	mov [esp], eax
	call FS_FCloseFile
	lea edx, [ebp-0xc5]
	mov [esp], edx
	call Com_BeginParseSession
	mov [ebp-0x28], edi
	xor edi, edi
	mov esi, saLoadObjGlob+0x48
	xor ebx, ebx
Com_LoadSoundAliasFile_500:
	lea eax, [ebp-0x28]
	mov [esp], eax
	call Com_Parse
	movzx edx, byte [eax]
	test dl, dl
	jz Com_LoadSoundAliasFile_470
	cmp dl, 0x7d
	jz Com_LoadSoundAliasFile_470
	cmp edi, 0x20
	jz Com_LoadSoundAliasFile_480
	lea edx, [ebx+saLoadObjGlob+0x8]
	mov [ebp-0x2684], edx
	mov [esp+0x4], eax
	mov [esp], edx
	call strcpy
	lea eax, [ebp-0x28]
	mov [esp], eax
	call Com_Parse
	movzx edx, byte [eax]
	test dl, dl
	jz Com_LoadSoundAliasFile_490
	add esi, 0x44
	add ebx, 0x44
	cmp dl, 0x7d
	jz Com_LoadSoundAliasFile_490
	mov [esp], eax
	call atof
	fstp qword [ebp-0x2680]
	cvtsd2ss xmm0, [ebp-0x2680]
	movss [esi-0x44], xmm0
	add edi, 0x1
	jmp Com_LoadSoundAliasFile_500
Com_LoadSoundAliasFile_330:
	cvtss2sd xmm1, xmm1
	movsd [esp+0xc], xmm1
	lea eax, [ebp-0x224]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_sound_alia18
	mov dword [esp], 0x9
	call Com_PrintError
	jmp Com_LoadSoundAliasFile_260
Com_LoadSoundAliasFile_440:
	mov eax, [ebp-0x24]
	mov [esp], eax
	call FS_FCloseFile
	lea edi, [ebp-0xc5]
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_error_s_does_not1
	mov dword [esp], 0x2
	call Com_Error
	jmp Com_LoadSoundAliasFile_460
Com_LoadSoundAliasFile_490:
	call Com_EndParseSession
	mov edx, [ebp-0x2684]
	mov [esp+0xc], edx
	lea edi, [ebp-0xc5]
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_error_volumemodg
	mov dword [esp], 0x2
	call Com_Error
	jmp Com_LoadSoundAliasFile_460
Com_LoadSoundAliasFile_480:
	call Com_EndParseSession
	mov dword [esp+0x10], 0x20
	mov dword [esp+0xc], 0x20
	lea edx, [ebp-0xc5]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_error_volumemodg1
	mov dword [esp], 0x2
	call Com_Error
	jmp Com_LoadSoundAliasFile_460
Com_LoadSoundAliasFile_470:
	call Com_EndParseSession
	jmp Com_LoadSoundAliasFile_460
Com_LoadSoundAliasFile_160:
	mov eax, _cstring_null
	jmp Com_LoadSoundAliasFile_510
Com_LoadSoundAliasFile_40:
	lea edi, [ebp-0xc5]
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_error_could_not_1
	mov dword [esp], 0x2
	call Com_Error
	jmp Com_LoadSoundAliasFile_460
Com_LoadSoundAliasFile_370:
	movaps xmm0, xmm2
	jmp Com_LoadSoundAliasFile_520
Com_LoadSoundAliasFile_360:
	movaps xmm0, xmm2
	jmp Com_LoadSoundAliasFile_530


;Com_LoadSoundAliasSounds(SoundFileInfo*)
Com_LoadSoundAliasSounds:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x13c
	mov eax, [ebp+0x8]
	mov ecx, [eax]
	test ecx, ecx
	jle Com_LoadSoundAliasSounds_10
	xor edi, edi
	mov dword [ebp-0x11c], 0x0
	xor esi, esi
	jmp Com_LoadSoundAliasSounds_20
Com_LoadSoundAliasSounds_70:
	mov eax, snd_touchStreamFilesOnLoad
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz Com_LoadSoundAliasSounds_30
	mov eax, fs_copyfiles
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz Com_LoadSoundAliasSounds_40
Com_LoadSoundAliasSounds_30:
	mov eax, [ebx+0x8]
	mov [esp+0x10], eax
	mov eax, [ebx+0x4]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_soundss
	mov dword [esp+0x4], 0x100
	lea eax, [ebp-0x118]
	mov [esp], eax
	call Com_sprintf
	lea eax, [ebp-0x118]
	mov [esp], eax
	call FS_TouchFile
	mov [ebx+0x1], al
	test al, al
	jz Com_LoadSoundAliasSounds_50
Com_LoadSoundAliasSounds_40:
	add edi, 0x1
	add esi, 0xc
	mov eax, [ebp+0x8]
	cmp [eax], edi
	jle Com_LoadSoundAliasSounds_60
Com_LoadSoundAliasSounds_20:
	mov ebx, esi
	mov eax, [ebp+0x8]
	add ebx, [eax+0x4]
	cmp byte [ebx], 0x1
	jnz Com_LoadSoundAliasSounds_70
	cmp byte [ebx+0x1], 0x0
	jnz Com_LoadSoundAliasSounds_40
	add dword [ebp-0x11c], 0x1
	add edi, 0x1
	add esi, 0xc
	mov eax, [ebp+0x8]
	cmp [eax], edi
	jg Com_LoadSoundAliasSounds_20
Com_LoadSoundAliasSounds_60:
	mov eax, [ebp-0x11c]
	add esp, 0x13c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_LoadSoundAliasSounds_50:
	lea eax, [ebp-0x118]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_streamed_s
	mov dword [esp], 0x9
	call Com_PrintError
	jmp Com_LoadSoundAliasSounds_40
Com_LoadSoundAliasSounds_10:
	mov dword [ebp-0x11c], 0x0
	mov eax, [ebp-0x11c]
	add esp, 0x13c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Com_LoadVolumeFalloffCurve(char const*, SndCurve*)
Com_LoadVolumeFalloffCurve:
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
	call Com_sprintf
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	lea eax, [ebp-0x60]
	mov [esp], eax
	call FS_FOpenFileRead
	mov ebx, eax
	cmp eax, 0x0
	jl Com_LoadVolumeFalloffCurve_10
	jz Com_LoadVolumeFalloffCurve_20
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x8
	lea edx, [ebp-0x2060]
	mov [esp], edx
	call FS_Read
	mov byte [ebp-0x2058], 0x0
	mov edi, _cstring_sndcurve
	mov ecx, 0x8
	cld
	lea esi, [ebp-0x2060]
	repe cmpsb
	mov eax, 0x0
	jz Com_LoadVolumeFalloffCurve_30
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
Com_LoadVolumeFalloffCurve_30:
	test eax, eax
	jnz Com_LoadVolumeFalloffCurve_40
	lea esi, [ebx-0x8]
	cmp esi, 0x1fff
	jg Com_LoadVolumeFalloffCurve_50
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
	call FS_Read
	mov byte [ebp+esi-0x2060], 0x0
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FCloseFile
	lea eax, [ebp-0x2060]
	mov [ebp-0x20], eax
	lea edx, [ebp-0x60]
	mov [esp], edx
	call Com_BeginParseSession
	lea edi, [ebp-0x20]
	mov [esp], edi
	call Com_Parse
	mov [esp], eax
	call atoi
	mov edx, [ebp+0xc]
	mov [edx+0x4], eax
	cmp eax, 0x1
	jle Com_LoadVolumeFalloffCurve_60
	cmp eax, 0x8
	jle Com_LoadVolumeFalloffCurve_70
	call Com_EndParseSession
	mov dword [esp+0x10], 0x8
	mov edx, [ebp+0xc]
	mov eax, [edx+0x4]
	mov [esp+0xc], eax
	lea eax, [ebp-0x60]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_sndcurve_p
	mov dword [esp], 0x9
	call Com_PrintError
	xor eax, eax
	jmp Com_LoadVolumeFalloffCurve_80
Com_LoadVolumeFalloffCurve_20:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FCloseFile
	lea eax, [ebp-0x60]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_sndcurve_f
	mov dword [esp], 0x9
	call Com_PrintError
	xor eax, eax
Com_LoadVolumeFalloffCurve_80:
	add esp, 0x208c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_LoadVolumeFalloffCurve_50:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FCloseFile
	lea edx, [ebp-0x60]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_error_s_is_too_l2
	mov dword [esp], 0x9
	call Com_PrintError
	xor eax, eax
	add esp, 0x208c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_LoadVolumeFalloffCurve_40:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FCloseFile
	lea eax, [ebp-0x60]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_s_does_not2
	mov dword [esp], 0x9
	call Com_PrintError
	xor eax, eax
	add esp, 0x208c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_LoadVolumeFalloffCurve_10:
	lea edx, [ebp-0x60]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_error_could_not_2
	mov dword [esp], 0x9
	call Com_PrintError
	xor eax, eax
	add esp, 0x208c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_LoadVolumeFalloffCurve_70:
	mov ebx, [ebp+0xc]
	xor esi, esi
	jmp Com_LoadVolumeFalloffCurve_90
Com_LoadVolumeFalloffCurve_130:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x2078]
	cvtsd2ss xmm0, [ebp-0x2078]
	movss [ebx+0x8], xmm0
	pxor xmm1, xmm1
	ucomiss xmm1, xmm0
	ja Com_LoadVolumeFalloffCurve_100
	ucomiss xmm0, [_float_1_00000000]
	ja Com_LoadVolumeFalloffCurve_100
	mov [esp], edi
	call Com_Parse
	movzx edx, byte [eax]
	test dl, dl
	jz Com_LoadVolumeFalloffCurve_110
	cmp dl, 0x7d
	jz Com_LoadVolumeFalloffCurve_110
	mov [esp], eax
	call atof
	fstp qword [ebp-0x2070]
	cvtsd2ss xmm0, [ebp-0x2070]
	movss [ebx+0xc], xmm0
	pxor xmm1, xmm1
	ucomiss xmm1, xmm0
	ja Com_LoadVolumeFalloffCurve_120
	add ebx, 0x8
	ucomiss xmm0, [_float_1_00000000]
	ja Com_LoadVolumeFalloffCurve_120
	add esi, 0x1
Com_LoadVolumeFalloffCurve_90:
	mov [esp], edi
	call Com_Parse
	movzx edx, byte [eax]
	test dl, dl
	jz Com_LoadVolumeFalloffCurve_110
	cmp dl, 0x7d
	jz Com_LoadVolumeFalloffCurve_110
	cmp esi, 0x8
	jnz Com_LoadVolumeFalloffCurve_130
	call Com_EndParseSession
	mov dword [esp+0x10], 0x8
	mov dword [esp+0xc], 0x8
	lea eax, [ebp-0x60]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_sndcurve_p1
	mov dword [esp], 0x9
	call Com_PrintError
	xor eax, eax
	jmp Com_LoadVolumeFalloffCurve_80
Com_LoadVolumeFalloffCurve_60:
	call Com_EndParseSession
	mov edx, [ebp+0xc]
	mov eax, [edx+0x4]
	mov [esp+0xc], eax
	lea eax, [ebp-0x60]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_sndcurve_p2
	mov dword [esp], 0x9
	call Com_PrintError
	xor eax, eax
	jmp Com_LoadVolumeFalloffCurve_80
Com_LoadVolumeFalloffCurve_110:
	call Com_EndParseSession
	mov edx, [ebp+0xc]
	mov eax, [edx+0x4]
	cmp eax, esi
	jz Com_LoadVolumeFalloffCurve_140
	mov [esp+0x10], esi
	mov [esp+0xc], eax
	lea eax, [ebp-0x60]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_sndcurve_p3
	mov dword [esp], 0x9
	call Com_PrintError
	xor eax, eax
	jmp Com_LoadVolumeFalloffCurve_80
Com_LoadVolumeFalloffCurve_140:
	sub eax, 0x1
	pxor xmm1, xmm1
	ucomiss xmm1, [edx+0x8]
	jnz Com_LoadVolumeFalloffCurve_150
	jp Com_LoadVolumeFalloffCurve_150
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [edx+0xc]
	jnz Com_LoadVolumeFalloffCurve_160
	jp Com_LoadVolumeFalloffCurve_160
	ucomiss xmm0, [edx+eax*8+0x8]
	jnz Com_LoadVolumeFalloffCurve_160
	jp Com_LoadVolumeFalloffCurve_160
	ucomiss xmm1, [edx+eax*8+0xc]
	jnz Com_LoadVolumeFalloffCurve_160
	jp Com_LoadVolumeFalloffCurve_160
Com_LoadVolumeFalloffCurve_180:
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov [edx], eax
	mov eax, 0x1
	jmp Com_LoadVolumeFalloffCurve_80
Com_LoadVolumeFalloffCurve_100:
	call Com_EndParseSession
	mov eax, [ebp+0xc]
	cvtss2sd xmm0, [eax+esi*8+0x8]
Com_LoadVolumeFalloffCurve_170:
	movsd [esp+0xc], xmm0
	lea edx, [ebp-0x60]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_error_sndcurve_p4
	mov dword [esp], 0x9
	call Com_PrintError
	xor eax, eax
	jmp Com_LoadVolumeFalloffCurve_80
Com_LoadVolumeFalloffCurve_120:
	call Com_EndParseSession
	mov eax, [ebp+0xc]
	cvtss2sd xmm0, [eax+esi*8+0xc]
	jmp Com_LoadVolumeFalloffCurve_170
Com_LoadVolumeFalloffCurve_160:
	mov edx, [ebp+0xc]
Com_LoadVolumeFalloffCurve_150:
	mov dword [edx+0x8], 0x0
	mov dword [edx+0xc], 0x3f800000
	mov dword [edx+eax*8+0x8], 0x3f800000
	mov dword [edx+eax*8+0xc], 0x0
	lea eax, [ebp-0x60]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning7_sndcurv
	mov dword [esp], 0x9
	call Com_PrintWarning
	jmp Com_LoadVolumeFalloffCurve_180


;Com_MakeSoundAliasesPermanent(snd_alias_list_t*, SoundFileInfo*)
Com_MakeSoundAliasesPermanent:
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
	jnz Com_MakeSoundAliasesPermanent_10
Com_MakeSoundAliasesPermanent_20:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_MakeSoundAliasesPermanent_10:
	mov dword [esp], 0x1
	mov ecx, AliasNameCompare
	mov edx, saLoadObjGlob+0x4
	mov eax, [saLoadObjGlob]
	call Com_SortTempSoundAliases_r
	mov [saLoadObjGlob], eax
	test eax, eax
	jz Com_MakeSoundAliasesPermanent_20
	mov dword [esp], 0x0
	mov ecx, FileNameTypeCompare
	mov edx, saLoadObjGlob+0x4
	call Com_SortTempSoundAliases_r
	mov ebx, eax
	mov [saLoadObjGlob], eax
	test eax, eax
	jz Com_MakeSoundAliasesPermanent_20
	mov dword [ebp-0x40], 0x0
	mov dword [ebp-0x48], 0x0
	mov dword [ebp-0x50], 0x0
	mov dword [ebp-0x34], 0x0
Com_MakeSoundAliasesPermanent_70:
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
	jz Com_MakeSoundAliasesPermanent_30
	mov eax, [ebx+0x16c]
	mov edi, [ebp-0x48]
	cmp eax, [edi+0x16c]
	jz Com_MakeSoundAliasesPermanent_40
Com_MakeSoundAliasesPermanent_30:
	xor edi, edi
	mov eax, [ebp-0x50]
	test eax, eax
	jz Com_MakeSoundAliasesPermanent_50
Com_MakeSoundAliasesPermanent_280:
	mov edx, [ebp-0x24]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x50]
	mov [esp], ecx
	call Q_stricmp
	test eax, eax
	jnz Com_MakeSoundAliasesPermanent_50
	mov eax, edi
	test al, al
	jz Com_MakeSoundAliasesPermanent_60
	mov ecx, [ebp-0x48]
	mov [ebx+0x194], ecx
Com_MakeSoundAliasesPermanent_290:
	mov ebx, [ebx+0x198]
	test ebx, ebx
	jnz Com_MakeSoundAliasesPermanent_70
	mov dword [esp], 0x1
	mov ecx, AliasNameCompare
	mov edx, saLoadObjGlob+0x4
	mov eax, [saLoadObjGlob]
	call Com_SortTempSoundAliases_r
	mov esi, eax
	mov [saLoadObjGlob], eax
	test eax, eax
	jz Com_MakeSoundAliasesPermanent_20
	mov dword [ebp-0x2c], 0x0
	mov dword [ebp-0x30], 0x0
Com_MakeSoundAliasesPermanent_110:
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
	jz Com_MakeSoundAliasesPermanent_80
	mov edi, [ebp-0x28]
	mov [esp+0x4], edi
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz Com_MakeSoundAliasesPermanent_90
Com_MakeSoundAliasesPermanent_80:
	add dword [ebp-0x30], 0x1
	add [ebp-0x40], ebx
	mov edx, [ebp-0x28]
	mov [ebp-0x2c], edx
Com_MakeSoundAliasesPermanent_90:
	mov edx, [esi+0x100]
	test edx, edx
	jz Com_MakeSoundAliasesPermanent_100
	cld
	mov ecx, 0xffffffff
	mov edi, edx
	xor eax, eax
	repne scasb
	not ecx
	add [ebp-0x40], ecx
Com_MakeSoundAliasesPermanent_100:
	mov esi, [esi+0x198]
	test esi, esi
	jnz Com_MakeSoundAliasesPermanent_110
	mov edx, [ebp-0x30]
	mov [esp], edx
	call Com_InitSoundAliasHash
	mov dword [esp+0x8], 0xf
	mov dword [esp+0x4], _cstring__aliases
	mov edx, [saLoadObjGlob+0x4]
	lea eax, [edx+edx*2]
	shl eax, 0x3
	sub eax, edx
	shl eax, 0x2
	mov [esp], eax
	call Com_AllocSoundMemory
	mov ecx, [ebp+0x8]
	mov [ecx+0x4], eax
	mov dword [esp+0x8], 0xf
	mov dword [esp+0x4], _cstring__sound_files
	mov edi, [ebp-0x34]
	lea eax, [edi+edi*2]
	shl eax, 0x2
	mov [esp], eax
	call Com_AllocSoundMemory
	mov edx, [ebp+0xc]
	mov [edx+0x4], eax
	mov dword [esp+0x8], 0xf
	mov dword [esp+0x4], _cstring__strings
	mov ecx, [ebp-0x40]
	mov [esp], ecx
	call Com_AllocSoundMemory
	mov [ebp-0x1c], eax
	mov esi, [saLoadObjGlob]
	test esi, esi
	jz Com_MakeSoundAliasesPermanent_20
	mov dword [ebp-0x38], 0x0
	lea ebx, [esi+0x40]
	mov edx, [ebp-0x1c]
Com_MakeSoundAliasesPermanent_270:
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
Com_MakeSoundAliasesPermanent_260:
	mov eax, [esi+0x100]
	test eax, eax
	jz Com_MakeSoundAliasesPermanent_120
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
Com_MakeSoundAliasesPermanent_360:
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
	jz Com_MakeSoundAliasesPermanent_130
	mov edi, [ebp-0x1c]
	mov [esp+0x4], edi
	mov edx, [ebp-0x38]
	mov eax, [edx+0x4]
	mov eax, [eax]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz Com_MakeSoundAliasesPermanent_140
Com_MakeSoundAliasesPermanent_130:
	mov dword [esp+0x8], 0xf
	mov dword [esp+0x4], _cstring__alias_list
	mov dword [esp], 0xc
	call Com_AllocSoundMemory
	mov [ebp-0x38], eax
	mov [esp+0x4], eax
	mov ecx, [ebp-0x1c]
	mov [esp], ecx
	call Com_AddAliasList
	test al, al
	jz Com_MakeSoundAliasesPermanent_150
	mov ecx, [ebp-0x1c]
	mov edx, [ebp-0x38]
	mov [edx], ecx
	mov [edx+0x4], ebx
Com_MakeSoundAliasesPermanent_140:
	mov eax, [esi+0x194]
	test eax, eax
	jz Com_MakeSoundAliasesPermanent_160
	mov eax, [eax+0x148]
	mov [ebp-0x3c], eax
	mov edi, [ebp-0x44]
	mov [ebp-0x20], edi
	mov edi, eax
Com_MakeSoundAliasesPermanent_420:
	mov [esi+0x148], edi
	mov eax, [ebp-0x1c]
	mov [ebx], eax
	cmp byte [esi+0x80], 0x0
	jnz Com_MakeSoundAliasesPermanent_170
	mov dword [ebx+0x8], 0x0
Com_MakeSoundAliasesPermanent_380:
	cmp byte [esi+0xc0], 0x0
	jnz Com_MakeSoundAliasesPermanent_180
	mov dword [ebx+0xc], 0x0
Com_MakeSoundAliasesPermanent_370:
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
	jz Com_MakeSoundAliasesPermanent_190
	or edx, 0x1
	mov [ebx+0x30], edx
Com_MakeSoundAliasesPermanent_350:
	cmp byte [esi+0x191], 0x0
	jz Com_MakeSoundAliasesPermanent_200
	mov edx, [ebx+0x30]
	or edx, 0x20
	mov [ebx+0x30], edx
Com_MakeSoundAliasesPermanent_340:
	cmp byte [esi+0x18d], 0x0
	jz Com_MakeSoundAliasesPermanent_210
	or edx, 0x2
	mov [ebx+0x30], edx
Com_MakeSoundAliasesPermanent_330:
	cmp byte [esi+0x18e], 0x0
	jz Com_MakeSoundAliasesPermanent_220
	or edx, 0x4
	mov [ebx+0x30], edx
Com_MakeSoundAliasesPermanent_320:
	cmp byte [esi+0x18f], 0x0
	jz Com_MakeSoundAliasesPermanent_230
	or edx, 0x8
	mov [ebx+0x30], edx
Com_MakeSoundAliasesPermanent_310:
	cmp byte [esi+0x190], 0x0
	jz Com_MakeSoundAliasesPermanent_240
	or edx, 0x10
	mov [ebx+0x30], edx
Com_MakeSoundAliasesPermanent_300:
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
Com_MakeSoundAliasesPermanent_390:
	mov esi, [esi+0x198]
	test esi, esi
	jz Com_MakeSoundAliasesPermanent_20
	mov eax, [ebp-0x1c]
	test eax, eax
	jz Com_MakeSoundAliasesPermanent_250
	lea ebx, [esi+0x40]
	mov [esp+0x4], ebx
	mov edi, [ebp-0x1c]
	mov [esp], edi
	call Q_stricmp
	test eax, eax
	jz Com_MakeSoundAliasesPermanent_260
	mov eax, [ebp-0x20]
	mov [ebp-0x1c], eax
	mov edx, eax
	jmp Com_MakeSoundAliasesPermanent_270
Com_MakeSoundAliasesPermanent_40:
	mov edi, 0x1
	mov eax, [ebp-0x50]
	test eax, eax
	jnz Com_MakeSoundAliasesPermanent_280
Com_MakeSoundAliasesPermanent_50:
	mov dword [ebx+0x194], 0x0
	add [ebp-0x40], esi
	add dword [ebp-0x34], 0x1
	mov [ebp-0x48], ebx
	mov edx, [ebp-0x24]
	mov [ebp-0x50], edx
	jmp Com_MakeSoundAliasesPermanent_290
Com_MakeSoundAliasesPermanent_60:
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
	call Com_PrintWarning
	mov dword [ebx+0x194], 0x0
	add [ebp-0x40], esi
	add dword [ebp-0x34], 0x1
	mov [ebp-0x48], ebx
	mov edx, [ebp-0x24]
	mov [ebp-0x50], edx
	jmp Com_MakeSoundAliasesPermanent_290
Com_MakeSoundAliasesPermanent_240:
	and edx, 0xffffffef
	mov [ebx+0x30], edx
	jmp Com_MakeSoundAliasesPermanent_300
Com_MakeSoundAliasesPermanent_230:
	and edx, 0xfffffff7
	mov [ebx+0x30], edx
	jmp Com_MakeSoundAliasesPermanent_310
Com_MakeSoundAliasesPermanent_220:
	and edx, 0xfffffffb
	mov [ebx+0x30], edx
	jmp Com_MakeSoundAliasesPermanent_320
Com_MakeSoundAliasesPermanent_210:
	and edx, 0xfffffffd
	mov [ebx+0x30], edx
	jmp Com_MakeSoundAliasesPermanent_330
Com_MakeSoundAliasesPermanent_200:
	mov edx, [ebx+0x30]
	and edx, 0xffffffdf
	mov [ebx+0x30], edx
	jmp Com_MakeSoundAliasesPermanent_340
Com_MakeSoundAliasesPermanent_190:
	and edx, 0xfffffffe
	mov [ebx+0x30], edx
	jmp Com_MakeSoundAliasesPermanent_350
Com_MakeSoundAliasesPermanent_120:
	mov ecx, [ebp-0x20]
	mov [ebp-0x44], ecx
	mov dword [ebp-0x4c], 0x0
	jmp Com_MakeSoundAliasesPermanent_360
Com_MakeSoundAliasesPermanent_180:
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
	call Com_AllocSoundMemory
	mov [ebx+0xc], eax
	mov edx, [ebp-0x5c]
	mov [esp+0x4], edx
	mov [esp], eax
	call strcpy
	jmp Com_MakeSoundAliasesPermanent_370
Com_MakeSoundAliasesPermanent_170:
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
	call Com_AllocSoundMemory
	mov [ebx+0x8], eax
	mov edx, [ebp-0x5c]
	mov [esp+0x4], edx
	mov [esp], eax
	call strcpy
	jmp Com_MakeSoundAliasesPermanent_380
Com_MakeSoundAliasesPermanent_150:
	mov edi, [ebp-0x1c]
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_error_alias_s_al
	mov dword [esp], 0x9
	call Com_PrintError
	mov eax, [ebp-0x44]
	mov [ebp-0x20], eax
	mov dword [ebp-0x38], 0x0
	jmp Com_MakeSoundAliasesPermanent_390
Com_MakeSoundAliasesPermanent_160:
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
	jz Com_MakeSoundAliasesPermanent_400
	mov ecx, [ebp-0x3c]
	mov byte [ecx+0x1], 0x1
	mov edi, [ebp-0x44]
	mov [esp], edi
	call Com_GetFilenameSubString
	cmp edi, eax
	jz Com_MakeSoundAliasesPermanent_410
	mov byte [eax-0x1], 0x0
	mov edi, [ebp-0x44]
Com_MakeSoundAliasesPermanent_450:
	mov edx, [ebp-0x3c]
	mov [edx+0x4], edi
	mov [edx+0x8], eax
Com_MakeSoundAliasesPermanent_440:
	mov ecx, [ebp+0xc]
	add dword [ecx], 0x1
	mov edi, [ebp-0x3c]
	jmp Com_MakeSoundAliasesPermanent_420
Com_MakeSoundAliasesPermanent_250:
	lea ebx, [esi+0x40]
	mov eax, [ebp-0x20]
	mov [ebp-0x1c], eax
	mov edx, eax
	jmp Com_MakeSoundAliasesPermanent_270
Com_MakeSoundAliasesPermanent_400:
	mov eax, [ebp-0x44]
	mov [esp], eax
	call Q_strlwr
	mov edx, [ebp-0x44]
	mov [esp], edx
	call SND_LoadSoundFile
	mov [edi+0x4], eax
	test eax, eax
	jz Com_MakeSoundAliasesPermanent_430
	mov byte [edi+0x1], 0x1
	jmp Com_MakeSoundAliasesPermanent_440
Com_MakeSoundAliasesPermanent_410:
	mov edi, _cstring_null
	jmp Com_MakeSoundAliasesPermanent_450
Com_MakeSoundAliasesPermanent_430:
	mov ecx, [ebp-0x3c]
	mov byte [ecx+0x1], 0x0
	mov dword [esp+0x8], 0xf
	mov dword [esp+0x4], _cstring__loaded
	mov dword [esp], 0x2c
	call Com_AllocSoundMemory
	mov edi, [ebp-0x3c]
	mov [edi+0x4], eax
	mov edx, [ebp-0x44]
	mov [eax], edx
	jmp Com_MakeSoundAliasesPermanent_440
	nop


;Com_WriteLocalizedSoundAliasFiles()
Com_WriteLocalizedSoundAliasFiles:
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
	call FS_BuildOSPath
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
	jz Com_WriteLocalizedSoundAliasFiles_10
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
	call FS_BuildOSPath
	lea eax, [ebp-0x21c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call FS_CopyFile
	mov dword [esp], _cstring_soundaliasessubt
	call FS_FileExists
	test eax, eax
	jz Com_WriteLocalizedSoundAliasFiles_20
	mov dword [esp+0x4], _cstring_localizing_sound
	mov dword [esp], 0x9
	call Com_Printf
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_writing_to_strin
	mov dword [esp], 0x9
	call Com_Printf
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
	jnz Com_WriteLocalizedSoundAliasFiles_30
	mov dword [esp+0x4], _cstring_warning_cant_fin
	mov dword [esp], 0x9
	call Com_PrintWarning
	add esp, 0x24c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_WriteLocalizedSoundAliasFiles_20:
	mov dword [esp+0x8], _cstring_soundaliasessubt
	mov dword [esp+0x4], _cstring_warning_could_no1
	mov dword [esp], 0x9
	call Com_PrintWarning
	add esp, 0x24c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_WriteLocalizedSoundAliasFiles_30:
	call Hunk_HideTempMemory
	mov [ebp-0x22c], eax
	mov ecx, [ebp-0x1c]
	test ecx, ecx
	jg Com_WriteLocalizedSoundAliasFiles_40
Com_WriteLocalizedSoundAliasFiles_100:
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
	jz Com_WriteLocalizedSoundAliasFiles_50
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
	jz Com_WriteLocalizedSoundAliasFiles_60
	mov dword [esp+0x4], _cstring_short_read_in_co
	mov dword [esp], 0x1
	call Com_Error
Com_WriteLocalizedSoundAliasFiles_60:
	mov [esp], edi
	call FS_FileClose
	mov [esp], ebx
	call FS_FileOpenWriteBinary
	mov ebx, eax
	test eax, eax
	jz Com_WriteLocalizedSoundAliasFiles_70
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov eax, [ebp-0x230]
	mov [esp], eax
	call FS_FileWrite
	cmp esi, eax
	jz Com_WriteLocalizedSoundAliasFiles_80
	mov dword [esp+0x4], _cstring_short_write_in_c
	mov dword [esp], 0x1
	call Com_Error
Com_WriteLocalizedSoundAliasFiles_80:
	mov [esp], ebx
	call FS_FileClose
Com_WriteLocalizedSoundAliasFiles_70:
	mov eax, [ebp-0x230]
	mov [esp], eax
	call free
Com_WriteLocalizedSoundAliasFiles_50:
	lea eax, [ebp-0x21c]
	mov [esp], eax
	call FS_Remove
	mov dword [esp+0x4], _cstring_done
	mov dword [esp], 0x9
	call Com_Printf
	add esp, 0x24c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_WriteLocalizedSoundAliasFiles_40:
	xor edi, edi
Com_WriteLocalizedSoundAliasFiles_90:
	lea eax, [ebp-0x21c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_all_mp
	mov eax, [esi+edi*4]
	mov [esp], eax
	call Com_ProcessSoundAliasFileLocalization
	call Hunk_ClearTempMemory
	add edi, 0x1
	cmp edi, [ebp-0x1c]
	jl Com_WriteLocalizedSoundAliasFiles_90
	mov eax, [ebp-0x22c]
	jmp Com_WriteLocalizedSoundAliasFiles_100
Com_WriteLocalizedSoundAliasFiles_10:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_warning_can_not_
	mov dword [esp], 0x9
	call Com_PrintWarning
	add esp, 0x24c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Com_InitDefaultSoundAliasSpeakerMap(SpeakerMapInfo*)
Com_InitDefaultSoundAliasSpeakerMap:
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
	jle Com_InitDefaultSoundAliasSpeakerMap_10
Com_InitDefaultSoundAliasSpeakerMap_470:
	mov ebx, 0x3f000000
	mov [eax+0x8], ebx
	mov dword [edx+0x4c], 0x0
	lea eax, [edx+0x5c]
	mov esi, [eax+0x4]
	test esi, esi
	jle Com_InitDefaultSoundAliasSpeakerMap_20
Com_InitDefaultSoundAliasSpeakerMap_460:
	mov [eax+0x8], ebx
	mov dword [edx+0x5c], 0x1
	lea eax, [edx+0x114]
	mov ecx, [eax+0x4]
	test ecx, ecx
	jle Com_InitDefaultSoundAliasSpeakerMap_30
Com_InitDefaultSoundAliasSpeakerMap_450:
	mov esi, 0x3f800000
	mov [eax+0x8], esi
	mov dword [edx+0x114], 0x0
	cmp dword [eax+0x4], 0x1
	jle Com_InitDefaultSoundAliasSpeakerMap_40
Com_InitDefaultSoundAliasSpeakerMap_440:
	xor ecx, ecx
	mov [eax+0xc], ecx
	mov dword [edx+0x114], 0x0
	lea eax, [edx+0x124]
	cmp dword [eax+0x4], 0x0
	jle Com_InitDefaultSoundAliasSpeakerMap_50
Com_InitDefaultSoundAliasSpeakerMap_430:
	mov [eax+0x8], ecx
	mov dword [edx+0x124], 0x1
	cmp dword [eax+0x4], 0x1
	jle Com_InitDefaultSoundAliasSpeakerMap_60
Com_InitDefaultSoundAliasSpeakerMap_420:
	mov [eax+0xc], esi
	mov dword [edx+0x124], 0x1
	lea eax, [edx+0xb0]
	mov esi, [eax+0x4]
	test esi, esi
	jle Com_InitDefaultSoundAliasSpeakerMap_70
Com_InitDefaultSoundAliasSpeakerMap_410:
	mov [eax+0x8], ebx
	mov dword [edx+0xb0], 0x0
	lea eax, [edx+0xc0]
	mov esi, [eax+0x4]
	test esi, esi
	jle Com_InitDefaultSoundAliasSpeakerMap_80
Com_InitDefaultSoundAliasSpeakerMap_400:
	mov [eax+0x8], ebx
	mov dword [edx+0xc0], 0x1
	lea eax, [edx+0xd0]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jle Com_InitDefaultSoundAliasSpeakerMap_90
Com_InitDefaultSoundAliasSpeakerMap_390:
	mov [eax+0x8], ecx
	mov dword [edx+0xd0], 0x2
	lea eax, [edx+0xe0]
	mov esi, [eax+0x4]
	test esi, esi
	jle Com_InitDefaultSoundAliasSpeakerMap_100
Com_InitDefaultSoundAliasSpeakerMap_380:
	mov [eax+0x8], ecx
	mov dword [edx+0xe0], 0x3
	lea eax, [edx+0xf0]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jle Com_InitDefaultSoundAliasSpeakerMap_110
Com_InitDefaultSoundAliasSpeakerMap_370:
	mov [eax+0x8], ecx
	mov dword [edx+0xf0], 0x4
	lea eax, [edx+0x100]
	mov esi, [eax+0x4]
	test esi, esi
	jle Com_InitDefaultSoundAliasSpeakerMap_120
Com_InitDefaultSoundAliasSpeakerMap_360:
	mov [eax+0x8], ecx
	mov dword [edx+0x100], 0x5
	lea ecx, [edx+0x174]
	lea eax, [edx+0x178]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jle Com_InitDefaultSoundAliasSpeakerMap_130
Com_InitDefaultSoundAliasSpeakerMap_350:
	mov dword [eax+0x8], 0x3f800000
	mov dword [edx+0x178], 0x0
	cmp dword [eax+0x4], 0x1
	jle Com_InitDefaultSoundAliasSpeakerMap_140
Com_InitDefaultSoundAliasSpeakerMap_340:
	mov dword [eax+0xc], 0x0
	mov dword [edx+0x178], 0x0
	lea eax, [edx+0x188]
	mov esi, [eax+0x4]
	test esi, esi
	jle Com_InitDefaultSoundAliasSpeakerMap_150
Com_InitDefaultSoundAliasSpeakerMap_330:
	mov dword [eax+0x8], 0x0
	mov dword [edx+0x188], 0x1
	cmp dword [eax+0x4], 0x1
	jle Com_InitDefaultSoundAliasSpeakerMap_160
Com_InitDefaultSoundAliasSpeakerMap_320:
	mov dword [eax+0xc], 0x3f800000
	mov dword [edx+0x188], 0x1
	lea eax, [edx+0x198]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jle Com_InitDefaultSoundAliasSpeakerMap_170
Com_InitDefaultSoundAliasSpeakerMap_310:
	mov dword [eax+0x8], 0x0
	mov dword [edx+0x198], 0x2
	cmp dword [eax+0x4], 0x1
	jle Com_InitDefaultSoundAliasSpeakerMap_180
Com_InitDefaultSoundAliasSpeakerMap_300:
	mov dword [eax+0xc], 0x0
	mov dword [edx+0x198], 0x2
	lea eax, [edx+0x1a8]
	mov esi, [eax+0x4]
	test esi, esi
	jle Com_InitDefaultSoundAliasSpeakerMap_190
Com_InitDefaultSoundAliasSpeakerMap_290:
	mov dword [eax+0x8], 0x0
	mov dword [edx+0x1a8], 0x3
	cmp dword [eax+0x4], 0x1
	jle Com_InitDefaultSoundAliasSpeakerMap_200
Com_InitDefaultSoundAliasSpeakerMap_280:
	mov dword [eax+0xc], 0x0
	mov dword [edx+0x1a8], 0x3
	lea eax, [edx+0x1b8]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jle Com_InitDefaultSoundAliasSpeakerMap_210
Com_InitDefaultSoundAliasSpeakerMap_270:
	mov dword [eax+0x8], 0x0
	mov dword [edx+0x1b8], 0x4
	cmp dword [eax+0x4], 0x1
	jle Com_InitDefaultSoundAliasSpeakerMap_220
Com_InitDefaultSoundAliasSpeakerMap_260:
	mov dword [eax+0xc], 0x0
	mov dword [edx+0x1b8], 0x4
	lea eax, [ecx+0x54]
	mov edx, [eax+0x4]
	test edx, edx
	jle Com_InitDefaultSoundAliasSpeakerMap_230
Com_InitDefaultSoundAliasSpeakerMap_250:
	mov dword [eax+0x8], 0x0
	mov dword [ecx+0x54], 0x5
	cmp dword [eax+0x4], 0x1
	jg Com_InitDefaultSoundAliasSpeakerMap_240
	mov dword [eax+0x4], 0x2
Com_InitDefaultSoundAliasSpeakerMap_240:
	mov dword [eax+0xc], 0x0
	mov dword [ecx+0x54], 0x5
	pop ebx
	pop esi
	pop ebp
	ret
Com_InitDefaultSoundAliasSpeakerMap_230:
	mov dword [eax+0x4], 0x1
	jmp Com_InitDefaultSoundAliasSpeakerMap_250
Com_InitDefaultSoundAliasSpeakerMap_220:
	mov dword [eax+0x4], 0x2
	jmp Com_InitDefaultSoundAliasSpeakerMap_260
Com_InitDefaultSoundAliasSpeakerMap_210:
	mov dword [eax+0x4], 0x1
	jmp Com_InitDefaultSoundAliasSpeakerMap_270
Com_InitDefaultSoundAliasSpeakerMap_200:
	mov dword [eax+0x4], 0x2
	jmp Com_InitDefaultSoundAliasSpeakerMap_280
Com_InitDefaultSoundAliasSpeakerMap_190:
	mov dword [eax+0x4], 0x1
	jmp Com_InitDefaultSoundAliasSpeakerMap_290
Com_InitDefaultSoundAliasSpeakerMap_180:
	mov dword [eax+0x4], 0x2
	jmp Com_InitDefaultSoundAliasSpeakerMap_300
Com_InitDefaultSoundAliasSpeakerMap_170:
	mov dword [eax+0x4], 0x1
	jmp Com_InitDefaultSoundAliasSpeakerMap_310
Com_InitDefaultSoundAliasSpeakerMap_160:
	mov dword [eax+0x4], 0x2
	jmp Com_InitDefaultSoundAliasSpeakerMap_320
Com_InitDefaultSoundAliasSpeakerMap_150:
	mov dword [eax+0x4], 0x1
	jmp Com_InitDefaultSoundAliasSpeakerMap_330
Com_InitDefaultSoundAliasSpeakerMap_140:
	mov dword [eax+0x4], 0x2
	jmp Com_InitDefaultSoundAliasSpeakerMap_340
Com_InitDefaultSoundAliasSpeakerMap_130:
	mov dword [eax+0x4], 0x1
	jmp Com_InitDefaultSoundAliasSpeakerMap_350
Com_InitDefaultSoundAliasSpeakerMap_120:
	mov dword [eax+0x4], 0x1
	jmp Com_InitDefaultSoundAliasSpeakerMap_360
Com_InitDefaultSoundAliasSpeakerMap_110:
	mov dword [eax+0x4], 0x1
	jmp Com_InitDefaultSoundAliasSpeakerMap_370
Com_InitDefaultSoundAliasSpeakerMap_100:
	mov dword [eax+0x4], 0x1
	jmp Com_InitDefaultSoundAliasSpeakerMap_380
Com_InitDefaultSoundAliasSpeakerMap_90:
	mov dword [eax+0x4], 0x1
	jmp Com_InitDefaultSoundAliasSpeakerMap_390
Com_InitDefaultSoundAliasSpeakerMap_80:
	mov dword [eax+0x4], 0x1
	jmp Com_InitDefaultSoundAliasSpeakerMap_400
Com_InitDefaultSoundAliasSpeakerMap_70:
	mov dword [eax+0x4], 0x1
	jmp Com_InitDefaultSoundAliasSpeakerMap_410
Com_InitDefaultSoundAliasSpeakerMap_60:
	mov dword [eax+0x4], 0x2
	jmp Com_InitDefaultSoundAliasSpeakerMap_420
Com_InitDefaultSoundAliasSpeakerMap_50:
	mov dword [eax+0x4], 0x1
	jmp Com_InitDefaultSoundAliasSpeakerMap_430
Com_InitDefaultSoundAliasSpeakerMap_40:
	mov dword [eax+0x4], 0x2
	jmp Com_InitDefaultSoundAliasSpeakerMap_440
Com_InitDefaultSoundAliasSpeakerMap_30:
	mov dword [eax+0x4], 0x1
	jmp Com_InitDefaultSoundAliasSpeakerMap_450
Com_InitDefaultSoundAliasSpeakerMap_20:
	mov dword [eax+0x4], 0x1
	jmp Com_InitDefaultSoundAliasSpeakerMap_460
Com_InitDefaultSoundAliasSpeakerMap_10:
	mov dword [eax+0x4], 0x1
	jmp Com_InitDefaultSoundAliasSpeakerMap_470


;Com_ProcessSoundAliasFileLocalization(char const*, char const*, char const*)
Com_ProcessSoundAliasFileLocalization:
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
	call Com_sprintf
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
	call FS_BuildOSPath
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_processing_sound
	mov dword [esp], 0x9
	call Com_Printf
	mov dword [esp+0x4], _cstring_r
	mov [esp], ebx
	call fopen
	test eax, eax
	jz Com_ProcessSoundAliasFileLocalization_10
	mov [esp], eax
	call fclose
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	lea edi, [ebp-0x545]
	mov [esp], edi
	call FS_ReadFile
	test eax, eax
	js Com_ProcessSoundAliasFileLocalization_20
	mov dword [esp], _cstring_soundaliasestemp
	call FS_FOpenFileWrite
	mov [ebp-0x8414], eax
	test eax, eax
	jz Com_ProcessSoundAliasFileLocalization_30
	lea edx, [ebp-0x545]
	mov [esp], edx
	call Com_BeginParseSession
	mov dword [esp], 0x1
	call Com_SetCSV
	mov eax, [ebp-0x20]
	mov [ebp-0x28], eax
	mov dword [ebp-0x841c], 0x0
	mov dword [ebp-0x8418], 0x0
	mov ecx, eax
Com_ProcessSoundAliasFileLocalization_210:
	mov [ebp-0x8434], ecx
	mov eax, ecx
	test ecx, ecx
	jz Com_ProcessSoundAliasFileLocalization_40
	cmp byte [ecx], 0xd
	jz Com_ProcessSoundAliasFileLocalization_50
	mov edi, [ebp-0x8434]
	cmp byte [edi], 0xa
	jz Com_ProcessSoundAliasFileLocalization_60
Com_ProcessSoundAliasFileLocalization_160:
	lea ecx, [ebp-0x28]
	mov [esp], ecx
	call Com_Parse
	mov [ebp-0x8440], eax
	mov edx, [ebp-0x28]
	test edx, edx
	jz Com_ProcessSoundAliasFileLocalization_40
Com_ProcessSoundAliasFileLocalization_170:
	mov dword [esp+0x4], _cstring_chateau
	mov [esp], eax
	call Q_stricmp
	mov edi, [ebp-0x8440]
	movzx eax, byte [edi]
	test al, al
	jz Com_ProcessSoundAliasFileLocalization_70
	cmp al, 0x23
	jz Com_ProcessSoundAliasFileLocalization_70
	mov eax, [ebp-0x841c]
	test eax, eax
	jnz Com_ProcessSoundAliasFileLocalization_80
	mov dword [ebp-0x8410], 0x0
	mov dword [ebp-0x840c], 0x0
	mov dword [ebp-0x83fc], 0x1
Com_ProcessSoundAliasFileLocalization_150:
	mov edx, [ebp-0x83fc]
	lea eax, [ebp+edx*4-0xbe4]
	lea ecx, [eax-0x4]
	mov [ebp-0x83f8], ecx
	mov dword [eax-0x4], 0x0
	mov esi, 0x1
	mov ebx, g_pszSndAliasKeyNames
	jmp Com_ProcessSoundAliasFileLocalization_90
Com_ProcessSoundAliasFileLocalization_110:
	add esi, 0x1
	add ebx, 0x4
	cmp esi, 0x1d
	jz Com_ProcessSoundAliasFileLocalization_100
Com_ProcessSoundAliasFileLocalization_90:
	mov edi, [ebp-0x8440]
	mov [esp+0x4], edi
	mov eax, [ebx+0x4]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz Com_ProcessSoundAliasFileLocalization_110
	mov eax, [ebp-0x83f8]
	mov [eax], esi
	cmp esi, 0x1
	jz Com_ProcessSoundAliasFileLocalization_120
	cmp esi, 0x3
	jz Com_ProcessSoundAliasFileLocalization_130
Com_ProcessSoundAliasFileLocalization_100:
	mov edx, [ebp-0x83fc]
	mov [ebp-0x841c], edx
	cmp edx, 0x100
	jz Com_ProcessSoundAliasFileLocalization_140
	mov eax, [ebp-0x28]
	test eax, eax
	jz Com_ProcessSoundAliasFileLocalization_140
	add edx, 0x1
	mov [ebp-0x83fc], edx
	cmp byte [eax], 0xa
	jz Com_ProcessSoundAliasFileLocalization_140
	lea ecx, [ebp-0x28]
	mov [esp], ecx
	call Com_ParseOnLine
	mov [ebp-0x8440], eax
	jmp Com_ProcessSoundAliasFileLocalization_150
Com_ProcessSoundAliasFileLocalization_30:
	mov dword [esp+0x8], _cstring_soundaliasestemp
	mov dword [esp+0x4], _cstring_warning_could_no2
	mov dword [esp], 0x9
	call Com_PrintWarning
	add esp, 0x845c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_ProcessSoundAliasFileLocalization_50:
	add eax, 0x1
	mov [ebp-0x28], eax
	cmp byte [eax], 0xd
	jz Com_ProcessSoundAliasFileLocalization_50
	mov [ebp-0x8434], eax
	mov edi, eax
	cmp byte [edi], 0xa
	jnz Com_ProcessSoundAliasFileLocalization_160
Com_ProcessSoundAliasFileLocalization_60:
	mov eax, edi
	add eax, 0x1
	mov [ebp-0x28], eax
	mov eax, [ebp-0x8414]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2
	mov dword [esp], _cstring_1
	call FS_Write
	mov edx, [ebp-0x28]
	mov [ebp-0x8434], edx
	lea ecx, [ebp-0x28]
	mov [esp], ecx
	call Com_Parse
	mov [ebp-0x8440], eax
	mov edx, [ebp-0x28]
	test edx, edx
	jnz Com_ProcessSoundAliasFileLocalization_170
Com_ProcessSoundAliasFileLocalization_40:
	call Com_EndParseSession
	mov edi, [ebp-0x8414]
	mov [esp], edi
	call FS_FCloseFile
	lea edi, [ebp-0x345]
	mov [esp+0xc], edi
	mov dword [esp+0x8], _cstring_soundaliasestemp
	mov ebx, fs_gamedir
	mov [esp+0x4], ebx
	mov esi, fs_basepath
	mov eax, [esi]
	mov eax, [eax+0xc]
	mov [esp], eax
	call FS_BuildOSPath
	lea eax, [ebp-0x445]
	mov [esp+0xc], eax
	lea edx, [ebp-0x545]
	mov [esp+0x8], edx
	mov [esp+0x4], ebx
	mov eax, [esi]
	mov eax, [eax+0xc]
	mov [esp], eax
	call FS_BuildOSPath
	mov eax, [ebp-0x8418]
	test eax, eax
	jnz Com_ProcessSoundAliasFileLocalization_180
Com_ProcessSoundAliasFileLocalization_500:
	mov [esp], edi
	call FS_Remove
	mov edi, [ebp-0x8418]
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_localized_i_soun
	mov dword [esp], 0x9
	call Com_Printf
	add esp, 0x845c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_ProcessSoundAliasFileLocalization_120:
	mov dword [ebp-0x8410], 0x1
	jmp Com_ProcessSoundAliasFileLocalization_100
Com_ProcessSoundAliasFileLocalization_140:
	mov eax, [ebp-0x8410]
	test eax, eax
	jz Com_ProcessSoundAliasFileLocalization_190
	mov edi, [ebp-0x840c]
	test edi, edi
	jnz Com_ProcessSoundAliasFileLocalization_70
Com_ProcessSoundAliasFileLocalization_190:
	mov edi, [ebp+0x8]
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_sound_alias_file1
	mov dword [esp], 0x2
	call Com_Error
Com_ProcessSoundAliasFileLocalization_70:
	lea eax, [ebp-0x28]
	mov [esp], eax
	call Com_SkipRestOfLine
	mov edx, [ebp-0x8434]
	cmp byte [edx], 0xa
	jz Com_ProcessSoundAliasFileLocalization_200
Com_ProcessSoundAliasFileLocalization_430:
	mov edi, [ebp-0x8414]
	mov [esp+0x8], edi
	mov eax, [ebp-0x28]
	sub eax, [ebp-0x8434]
	mov [esp+0x4], eax
	mov eax, [ebp-0x8434]
	mov [esp], eax
	call FS_Write
	mov ecx, [ebp-0x28]
	jmp Com_ProcessSoundAliasFileLocalization_210
Com_ProcessSoundAliasFileLocalization_130:
	mov dword [ebp-0x840c], 0x1
	jmp Com_ProcessSoundAliasFileLocalization_100
Com_ProcessSoundAliasFileLocalization_80:
	cld
	mov ecx, 0x7
	lea edi, [ebp-0x45]
	xor eax, eax
	rep stosd
	stosb
	mov ecx, _cstring_menu
	mov edx, [ebp+0x8]
	lea eax, [ebp-0x7e4]
	call Com_LoadSoundAliasDefaults
	xor esi, esi
	mov eax, [ebp-0x8440]
	jmp Com_ProcessSoundAliasFileLocalization_220
Com_ProcessSoundAliasFileLocalization_240:
	add esi, 0x1
	cmp [ebp-0x841c], esi
	jz Com_ProcessSoundAliasFileLocalization_230
Com_ProcessSoundAliasFileLocalization_250:
	lea edx, [ebp-0x28]
	mov [esp], edx
	call Com_ParseOnLine
	mov [ebp-0x8440], eax
Com_ProcessSoundAliasFileLocalization_220:
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
	jz Com_ProcessSoundAliasFileLocalization_240
	lea edi, [ebp-0x7e4]
	mov [esp+0xc], edi
	lea eax, [ebp-0x45]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], ecx
	mov ecx, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov eax, _cstring_menu
	call Com_LoadSoundAliasField
	add esi, 0x1
	cmp [ebp-0x841c], esi
	jnz Com_ProcessSoundAliasFileLocalization_250
Com_ProcessSoundAliasFileLocalization_230:
	cmp byte [ebp-0x44], 0x0
	jz Com_ProcessSoundAliasFileLocalization_260
	cmp byte [ebp-0x42], 0x0
	jz Com_ProcessSoundAliasFileLocalization_260
	cmp byte [ebp-0x41], 0x0
	jz Com_ProcessSoundAliasFileLocalization_270
Com_ProcessSoundAliasFileLocalization_420:
	cld
	mov ecx, 0xffffffff
	lea edi, [ebp-0x73e4]
	xor eax, eax
	repne scasb
	not ecx
	sub ecx, 0x1
	test ecx, ecx
	jle Com_ProcessSoundAliasFileLocalization_280
	xor ebx, ebx
Com_ProcessSoundAliasFileLocalization_310:
	movzx edx, byte [ebp+ebx-0x73e4]
	lea eax, [edx-0x41]
	cmp al, 0x19
	jbe Com_ProcessSoundAliasFileLocalization_290
	lea eax, [edx-0x30]
	cmp al, 0x9
	jbe Com_ProcessSoundAliasFileLocalization_290
	cmp dl, 0x5f
	jnz Com_ProcessSoundAliasFileLocalization_300
Com_ProcessSoundAliasFileLocalization_290:
	add ebx, 0x1
	cmp ecx, ebx
	jnz Com_ProcessSoundAliasFileLocalization_310
Com_ProcessSoundAliasFileLocalization_280:
	mov dword [esp+0x8], 0x9
	mov dword [esp+0x4], _cstring_subtitle_
	lea eax, [ebp-0x73e4]
	mov [esp], eax
	call Q_strncmp
	test eax, eax
	jz Com_ProcessSoundAliasFileLocalization_320
Com_ProcessSoundAliasFileLocalization_300:
	mov ebx, [ebp-0x841c]
	test ebx, ebx
	jle Com_ProcessSoundAliasFileLocalization_330
	mov dword [ebp-0x83f4], 0x0
	mov edi, [ebp-0x83f4]
	jmp Com_ProcessSoundAliasFileLocalization_340
Com_ProcessSoundAliasFileLocalization_390:
	cmp byte [ebp+edx-0x45], 0x0
	jz Com_ProcessSoundAliasFileLocalization_350
	cmp edx, 0x4
	jz Com_ProcessSoundAliasFileLocalization_360
	mov eax, [ebp-0x841c]
	sub eax, 0x1
	cmp [ebp-0x83f4], eax
	jz Com_ProcessSoundAliasFileLocalization_370
	shl edx, 0xa
	lea ebx, [ebp-0x83e4]
	add ebx, edx
	mov dword [esp+0x4], 0x2c
	mov [esp], ebx
	call strchr
	test eax, eax
	jz Com_ProcessSoundAliasFileLocalization_380
Com_ProcessSoundAliasFileLocalization_530:
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_s1
	call va
	mov ebx, eax
Com_ProcessSoundAliasFileLocalization_520:
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
	call FS_Write
Com_ProcessSoundAliasFileLocalization_400:
	add dword [ebp-0x83f4], 0x1
	mov edx, [ebp-0x83f4]
	cmp [ebp-0x841c], edx
	jz Com_ProcessSoundAliasFileLocalization_330
Com_ProcessSoundAliasFileLocalization_410:
	mov edi, edx
Com_ProcessSoundAliasFileLocalization_340:
	mov edx, [ebp+edi*4-0xbe4]
	test edx, edx
	jnz Com_ProcessSoundAliasFileLocalization_390
Com_ProcessSoundAliasFileLocalization_350:
	mov eax, [ebp-0x841c]
	sub eax, 0x1
	cmp [ebp-0x83f4], eax
	jz Com_ProcessSoundAliasFileLocalization_400
	mov eax, [ebp-0x8414]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_2
	call FS_Write
	add dword [ebp-0x83f4], 0x1
	mov edx, [ebp-0x83f4]
	cmp [ebp-0x841c], edx
	jnz Com_ProcessSoundAliasFileLocalization_410
Com_ProcessSoundAliasFileLocalization_330:
	mov ecx, [ebp-0x8414]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x2
	mov dword [esp], _cstring_1
	call FS_Write
	lea edi, [ebp-0x28]
	mov [esp], edi
	call Com_SkipRestOfLine
	mov ecx, [ebp-0x28]
	jmp Com_ProcessSoundAliasFileLocalization_210
Com_ProcessSoundAliasFileLocalization_260:
	mov ecx, [ebp+0x8]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_sound_alias_file2
	mov dword [esp], 0x2
	call Com_Error
	cmp byte [ebp-0x41], 0x0
	jnz Com_ProcessSoundAliasFileLocalization_420
Com_ProcessSoundAliasFileLocalization_270:
	lea eax, [ebp-0x28]
	mov [esp], eax
	call Com_SkipRestOfLine
	mov edx, [ebp-0x8414]
	mov [esp+0x8], edx
	mov eax, [ebp-0x28]
	sub eax, [ebp-0x8434]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x8434]
	mov [esp], ecx
	call FS_Write
	mov ecx, [ebp-0x28]
	jmp Com_ProcessSoundAliasFileLocalization_210
Com_ProcessSoundAliasFileLocalization_200:
	mov ecx, [ebp-0x8414]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_3
	call FS_Write
	jmp Com_ProcessSoundAliasFileLocalization_430
Com_ProcessSoundAliasFileLocalization_10:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_warning_can_not_1
	mov dword [esp], 0x9
	call Com_PrintWarning
	add esp, 0x845c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_ProcessSoundAliasFileLocalization_320:
	mov dword [esp+0x8], 0x9
	mov dword [esp+0x4], _cstring_subtitle_
	lea edx, [ebp-0x73e4]
	mov [esp], edx
	call Q_strncmp
	test eax, eax
	jnz Com_ProcessSoundAliasFileLocalization_300
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_soundaliasessubt
	call FS_ReadFile
	test eax, eax
	js Com_ProcessSoundAliasFileLocalization_440
	mov dword [esp], _cstring_soundaliasessubt
	call Com_BeginParseSession
	mov eax, [ebp-0x24]
	mov [ebp-0x1c], eax
	lea ebx, [ebp-0x1c]
	jmp Com_ProcessSoundAliasFileLocalization_450
Com_ProcessSoundAliasFileLocalization_490:
	mov edi, _cstring_reference
	mov ecx, 0xa
	cld
	mov esi, eax
	repe cmpsb
	mov edx, 0x0
	jz Com_ProcessSoundAliasFileLocalization_460
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
Com_ProcessSoundAliasFileLocalization_460:
	test edx, edx
	jnz Com_ProcessSoundAliasFileLocalization_470
	mov [esp], ebx
	call Com_ParseOnLine
	mov [esp+0x4], eax
	lea ecx, [ebp-0x73db]
	mov [esp], ecx
	call Q_stricmp
	test eax, eax
	jz Com_ProcessSoundAliasFileLocalization_480
Com_ProcessSoundAliasFileLocalization_470:
	mov [esp], ebx
	call Com_SkipRestOfLine
Com_ProcessSoundAliasFileLocalization_450:
	mov [esp], ebx
	call Com_Parse
	mov esi, [ebp-0x1c]
	test esi, esi
	jnz Com_ProcessSoundAliasFileLocalization_490
	xor ebx, ebx
Com_ProcessSoundAliasFileLocalization_590:
	call Com_EndParseSession
	mov eax, [ebp-0x24]
	mov [esp], eax
	call FS_FreeFile
	test ebx, ebx
	jnz Com_ProcessSoundAliasFileLocalization_270
	jmp Com_ProcessSoundAliasFileLocalization_300
Com_ProcessSoundAliasFileLocalization_20:
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_warning_could_no3
	mov dword [esp], 0x9
	call Com_PrintWarning
	add esp, 0x845c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_ProcessSoundAliasFileLocalization_180:
	lea ecx, [ebp-0x445]
	mov [esp+0x4], ecx
	mov [esp], edi
	call FS_CopyFile
	jmp Com_ProcessSoundAliasFileLocalization_500
Com_ProcessSoundAliasFileLocalization_370:
	shl edx, 0xa
	lea ebx, [ebp-0x83e4]
	add ebx, edx
	mov dword [esp+0x4], 0x2c
	mov [esp], ebx
	call strchr
	test eax, eax
	jz Com_ProcessSoundAliasFileLocalization_510
Com_ProcessSoundAliasFileLocalization_580:
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_s2
	call va
	mov ebx, eax
	jmp Com_ProcessSoundAliasFileLocalization_520
Com_ProcessSoundAliasFileLocalization_380:
	mov dword [esp+0x4], 0x20
	mov [esp], ebx
	call strchr
	test eax, eax
	jnz Com_ProcessSoundAliasFileLocalization_530
	mov dword [esp+0x4], 0xa
	mov [esp], ebx
	call strchr
	test eax, eax
	jnz Com_ProcessSoundAliasFileLocalization_530
	mov dword [esp+0x4], 0xd
	mov [esp], ebx
	call strchr
	test eax, eax
	jnz Com_ProcessSoundAliasFileLocalization_530
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_s3
	call va
	mov ebx, eax
	jmp Com_ProcessSoundAliasFileLocalization_520
Com_ProcessSoundAliasFileLocalization_360:
	lea eax, [ebp-0x73e4]
	mov [esp], eax
	call Com_GetSubtitleStringEdReference
	test eax, eax
	jz Com_ProcessSoundAliasFileLocalization_540
	mov [esp+0x10], eax
	mov dword [esp+0xc], _cstring_subtitle_
	mov dword [esp+0x8], _cstring_ss
	mov dword [esp+0x4], 0x400
	lea ebx, [ebp-0xfe4]
	mov [esp], ebx
	call Com_sprintf
	mov [esp], ebx
	call I_strupr
	mov [ebp-0x83ec], eax
Com_ProcessSoundAliasFileLocalization_570:
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
	call FS_Write
	jmp Com_ProcessSoundAliasFileLocalization_400
Com_ProcessSoundAliasFileLocalization_540:
	cmp byte [ebp-0x43], 0x0
	jz Com_ProcessSoundAliasFileLocalization_550
	lea eax, [ebp-0x7be4]
	mov [esp+0x14], eax
	lea eax, [ebp-0x7fe4]
	mov [esp+0x10], eax
	mov dword [esp+0xc], _cstring_subtitle_
	mov dword [esp+0x8], _cstring_ss_s
	mov dword [esp+0x4], 0x400
	lea ebx, [ebp-0xfe4]
	mov [esp], ebx
	call Com_sprintf
Com_ProcessSoundAliasFileLocalization_750:
	mov [esp], ebx
	call I_strupr
	mov [ebp-0x83ec], eax
	mov dword [esp], _cstring_soundaliasestemp1
	call FS_FOpenFileWrite
	mov [ebp-0x8404], eax
	test eax, eax
	jnz Com_ProcessSoundAliasFileLocalization_560
	mov dword [esp+0x8], _cstring_soundaliasestemp1
	mov dword [esp+0x4], _cstring_warning_could_no2
	mov dword [esp], 0x9
	call Com_PrintWarning
Com_ProcessSoundAliasFileLocalization_740:
	add dword [ebp-0x8418], 0x1
	jmp Com_ProcessSoundAliasFileLocalization_570
Com_ProcessSoundAliasFileLocalization_510:
	mov dword [esp+0x4], 0x20
	mov [esp], ebx
	call strchr
	test eax, eax
	jnz Com_ProcessSoundAliasFileLocalization_580
	mov dword [esp+0x4], 0xa
	mov [esp], ebx
	call strchr
	test eax, eax
	jnz Com_ProcessSoundAliasFileLocalization_580
	mov dword [esp+0x4], 0xd
	mov [esp], ebx
	call strchr
	test eax, eax
	jnz Com_ProcessSoundAliasFileLocalization_580
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_s
	call va
	mov ebx, eax
	jmp Com_ProcessSoundAliasFileLocalization_520
Com_ProcessSoundAliasFileLocalization_440:
	mov dword [esp+0x8], _cstring_soundaliasessubt
	mov dword [esp+0x4], _cstring_warning_could_no
	mov dword [esp], 0x9
	call Com_PrintWarning
	jmp Com_ProcessSoundAliasFileLocalization_300
Com_ProcessSoundAliasFileLocalization_480:
	mov ebx, 0x1
	jmp Com_ProcessSoundAliasFileLocalization_590
Com_ProcessSoundAliasFileLocalization_560:
	lea edx, [ebp-0x1c]
	mov [esp+0x4], edx
	mov dword [esp], _cstring_soundaliasessubt
	call FS_ReadFile
	test eax, eax
	js Com_ProcessSoundAliasFileLocalization_600
	mov dword [esp], _cstring_soundaliasessubt
	call Com_BeginParseSession
	mov eax, [ebp-0x1c]
	mov [ebp-0x24], eax
	mov ebx, eax
	mov dword [ebp-0x8400], 0x0
	jmp Com_ProcessSoundAliasFileLocalization_610
Com_ProcessSoundAliasFileLocalization_660:
	lea eax, [ebp-0x24]
	mov [esp], eax
	call Com_SkipRestOfLine
Com_ProcessSoundAliasFileLocalization_610:
	lea edi, [ebp-0x24]
	mov [esp], edi
	call Com_Parse
	mov [ebp-0x8408], eax
	mov eax, [ebp-0x24]
	mov [ebp-0x843c], eax
	test eax, eax
	jz Com_ProcessSoundAliasFileLocalization_620
	mov dword [ebp-0x8424], 0xa
	cld
	mov esi, [ebp-0x8408]
	mov edi, _cstring_endmarker
	mov ecx, 0xa
	repe cmpsb
	mov eax, 0x0
	jz Com_ProcessSoundAliasFileLocalization_630
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
Com_ProcessSoundAliasFileLocalization_630:
	test eax, eax
	jz Com_ProcessSoundAliasFileLocalization_640
	mov ecx, 0xa
	cld
	mov esi, [ebp-0x8408]
	mov edi, _cstring_reference
	repe cmpsb
	mov eax, 0x0
	jz Com_ProcessSoundAliasFileLocalization_650
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
Com_ProcessSoundAliasFileLocalization_650:
	test eax, eax
	jnz Com_ProcessSoundAliasFileLocalization_660
	lea eax, [ebp-0x24]
	mov [esp], eax
	call Com_ParseOnLine
	lea edx, [ebp-0xfdb]
	mov [esp+0x4], edx
	mov [esp], eax
	call strcmp
	test eax, eax
	jnz Com_ProcessSoundAliasFileLocalization_660
	mov eax, [ebp-0x24]
	cmp eax, ebx
	jbe Com_ProcessSoundAliasFileLocalization_670
	mov ecx, [ebp-0x8404]
	mov [esp+0x8], ecx
	sub eax, ebx
	mov [esp+0x4], eax
	mov [esp], ebx
	call FS_Write
Com_ProcessSoundAliasFileLocalization_670:
	mov ecx, [ebp-0x8404]
	lea edx, [ebp-0x73e4]
	lea eax, [ebp-0xfdb]
	call Com_WriteStringEdReferenceToFile
	jmp Com_ProcessSoundAliasFileLocalization_680
Com_ProcessSoundAliasFileLocalization_720:
	mov ecx, 0xa
	cld
	mov esi, eax
	mov edi, _cstring_reference
	repe cmpsb
	mov eax, 0x0
	jz Com_ProcessSoundAliasFileLocalization_690
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
Com_ProcessSoundAliasFileLocalization_690:
	test eax, eax
	jz Com_ProcessSoundAliasFileLocalization_700
	mov ecx, 0xa
	mov esi, [ebp-0x83f0]
	mov edi, _cstring_endmarker
	repe cmpsb
	mov eax, 0x0
	jz Com_ProcessSoundAliasFileLocalization_710
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
Com_ProcessSoundAliasFileLocalization_710:
	test eax, eax
	jz Com_ProcessSoundAliasFileLocalization_700
Com_ProcessSoundAliasFileLocalization_680:
	mov ebx, [ebp-0x24]
	lea edi, [ebp-0x24]
	mov [esp], edi
	call Com_Parse
	mov [ebp-0x83f0], eax
	mov edx, [ebp-0x24]
	test edx, edx
	jnz Com_ProcessSoundAliasFileLocalization_720
	mov dword [ebp-0x8400], 0x1
	xor ebx, ebx
	jmp Com_ProcessSoundAliasFileLocalization_660
Com_ProcessSoundAliasFileLocalization_640:
	cmp ebx, [ebp-0x843c]
	jae Com_ProcessSoundAliasFileLocalization_620
	mov eax, [ebp-0x8404]
	mov [esp+0x8], eax
	sub [ebp-0x843c], ebx
	mov eax, [ebp-0x843c]
	sub eax, 0xb
	mov [esp+0x4], eax
	mov [esp], ebx
	call FS_Write
Com_ProcessSoundAliasFileLocalization_620:
	mov ecx, [ebp-0x8400]
	test ecx, ecx
	jnz Com_ProcessSoundAliasFileLocalization_730
	mov ecx, [ebp-0x8404]
	lea edx, [ebp-0x73e4]
	lea eax, [ebp-0xfdb]
	call Com_WriteStringEdReferenceToFile
Com_ProcessSoundAliasFileLocalization_730:
	call Com_EndParseSession
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FreeFile
	mov edx, [ebp-0x8404]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x11
	mov dword [esp], _cstring_endmarker1
	call FS_Write
	mov ecx, [ebp-0x8404]
	mov [esp], ecx
	call FS_FCloseFile
	lea edi, [ebp-0x645]
	mov [esp+0xc], edi
	mov dword [esp+0x8], _cstring_soundaliasestemp1
	mov ebx, fs_gamedir
	mov [esp+0x4], ebx
	mov esi, fs_basepath
	mov eax, [esi]
	mov eax, [eax+0xc]
	mov [esp], eax
	call FS_BuildOSPath
	lea eax, [ebp-0x145]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_soundaliasessubt
	mov [esp+0x4], ebx
	mov eax, [esi]
	mov eax, [eax+0xc]
	mov [esp], eax
	call FS_BuildOSPath
	lea edx, [ebp-0x145]
	mov [esp+0x4], edx
	mov [esp], edi
	call FS_CopyFile
	mov [esp], edi
	call FS_Remove
	jmp Com_ProcessSoundAliasFileLocalization_740
Com_ProcessSoundAliasFileLocalization_600:
	mov dword [esp+0x8], _cstring_soundaliasessubt
	mov dword [esp+0x4], _cstring_warning_could_no
	mov dword [esp], 0x9
	call Com_PrintWarning
	mov ecx, [ebp-0x8404]
	mov [esp], ecx
	call FS_FCloseFile
	jmp Com_ProcessSoundAliasFileLocalization_740
Com_ProcessSoundAliasFileLocalization_550:
	lea eax, [ebp-0x7fe4]
	mov [esp+0x10], eax
	mov dword [esp+0xc], _cstring_subtitle_
	mov dword [esp+0x8], _cstring_ss
	mov dword [esp+0x4], 0x400
	lea ebx, [ebp-0xfe4]
	mov [esp], ebx
	call Com_sprintf
	jmp Com_ProcessSoundAliasFileLocalization_750
Com_ProcessSoundAliasFileLocalization_700:
	call Com_UngetToken
	mov dword [ebp-0x8400], 0x1
	jmp Com_ProcessSoundAliasFileLocalization_660
	nop


;Com_InitDefaultSoundAliasVolumeFalloffCurve(SndCurve*)
Com_InitDefaultSoundAliasVolumeFalloffCurve:
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

