;Imports of bg_weapons_load_obj:
	extern G_ParseWeaponAccurayGraphs
	extern DB_FindXAssetHeaderReal
	extern Hunk_AllocLowAlignInternal
	extern strcpy
	extern Com_Error
	extern Q_stricmp
	extern SL_GetStringOfSize
	extern SL_ConvertToLowercase
	extern Com_Parse
	extern Com_PrintWarning
	extern SL_GetLowercaseString
	extern Hunk_AllocLowInternal
	extern Com_sprintf
	extern Com_FindSoundAlias
	extern Com_SurfaceTypeToName
	extern strcmp
	extern BG_InitWeaponString
	extern Com_LoadRawTextFile
	extern Com_BeginParseSession
	extern Hunk_AllocInternal
	extern Com_EndParseSession
	extern Com_UnloadRawTextFile
	extern useFastFile
	extern FS_FOpenFileByMode
	extern FS_Read
	extern memset
	extern FS_FCloseFile
	extern Info_Validate
	extern ParseConfigStringToStruct
	extern Q_strlwr
	extern bg_defaultWeaponDefs
	extern g_playerAnimTypeNames
	extern g_playerAnimTypeNamesCount
	extern surfaceTypeSoundListCount
	extern surfaceTypeSoundLists
	extern weaponDefFields
	extern weapIconRatioNames
	extern ammoCounterClipNames
	extern overlayInterfaceNames
	extern stickinessNames
	extern guidedMissileNames
	extern activeReticleNames
	extern offhandClassNames
	extern szProjectileExplosionNames
	extern szWeapStanceNames
	extern impactTypeNames
	extern penetrateTypeNames
	extern szWeapFireTypeNames
	extern szWeapInventoryTypeNames
	extern szWeapOverlayReticleNames
	extern szWeapClassNames
	extern szWeapTypeNames

;Exports of bg_weapons_load_obj:
	global BG_LoadDefaultWeaponDef_LoadObj
	global BG_LoadDefaultWeaponDef_FastFile
	global SetConfigString2
	global BG_ParseWeaponDefSpecificFieldType
	global SetConfigString
	global BG_GetWeaponTypeName
	global BG_LoadWeaponStrings
	global BG_GetWeaponClassName
	global BG_LoadPlayerAnimTypes
	global BG_LoadDefaultWeaponDef
	global BG_LoadWeaponDefInternal
	global BG_ClearSurfaceTypeSounds
	global BG_GetWeaponInventoryTypeName


SECTION .text


;BG_LoadDefaultWeaponDef_LoadObj()
BG_LoadDefaultWeaponDef_LoadObj:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [bg_defaultWeaponDefs], _cstring_null
	mov edx, weaponDefFields+0x8
	xor ecx, ecx
BG_LoadDefaultWeaponDef_LoadObj_20:
	mov eax, [edx]
	test eax, eax
	jnz BG_LoadDefaultWeaponDef_LoadObj_10
	mov eax, [edx-0x4]
	mov dword [eax+bg_defaultWeaponDefs], _cstring_null
BG_LoadDefaultWeaponDef_LoadObj_10:
	add edx, 0xc
	cmp ecx, 502
	jnz BG_LoadDefaultWeaponDef_LoadObj_20
	mov dword [bg_defaultWeaponDefs], _cstring_none
	mov dword [bg_defaultWeaponDefs+0x76c], _cstring_noweaponaccu
	mov dword [bg_defaultWeaponDefs+0x770], _cstring_noweaponaccu
	mov dword [bg_defaultWeaponDefs+0x420], 0x3fe00000
	mov dword [esp], bg_defaultWeaponDefs
	call G_ParseWeaponAccurayGraphs
	mov eax, bg_defaultWeaponDefs
	leave
	ret
	nop


;BG_LoadDefaultWeaponDef_FastFile()
BG_LoadDefaultWeaponDef_FastFile:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], _cstring_none
	mov dword [esp], 0x17
	call DB_FindXAssetHeaderReal
	leave
	ret


;SetConfigString2(unsigned char*, char const*)
SetConfigString2:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0xc]
	cmp byte [esi], 0x0
	jnz SetConfigString2_10
	mov eax, [ebp+0x8]
	mov dword [eax], _cstring_null
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SetConfigString2_10:
	mov dword [esp+0x4], 0x1
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	not ecx
	mov [esp], ecx
	call Hunk_AllocLowAlignInternal
	mov ebx, eax
	mov [esp+0x4], esi
	mov [esp], eax
	call strcpy
	mov eax, [ebp+0x8]
	mov [eax], ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;BG_ParseWeaponDefSpecificFieldType(unsigned char*, char const*, int)
BG_ParseWeaponDefSpecificFieldType:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x18c
	mov esi, [ebp+0xc]
	mov edx, [ebp+0x10]
	lea eax, [edx-0xc]
	cmp eax, 0x16
	ja BG_ParseWeaponDefSpecificFieldType_10
	jmp dword [eax*4+BG_ParseWeaponDefSpecificFieldType_jumptab_0]
BG_ParseWeaponDefSpecificFieldType_10:
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_bad_field_type_i
	mov dword [esp], 0x2
	call Com_Error
	xor eax, eax
BG_ParseWeaponDefSpecificFieldType_40:
	add esp, 0x18c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
BG_ParseWeaponDefSpecificFieldType_1240:
	xor edi, edi
	mov ebx, szWeapTypeNames
BG_ParseWeaponDefSpecificFieldType_30:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], esi
	call Q_stricmp
	test eax, eax
	jz BG_ParseWeaponDefSpecificFieldType_20
	add edi, 0x1
	add ebx, 0x4
	cmp edi, 0x4
	jnz BG_ParseWeaponDefSpecificFieldType_30
	mov ebx, 0xffffffff
BG_ParseWeaponDefSpecificFieldType_1150:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_unknown_weapon_t
	mov dword [esp], 0x2
	call Com_Error
BG_ParseWeaponDefSpecificFieldType_780:
	mov ecx, [ebp+0x8]
	mov [ecx+0x12c], ebx
	mov eax, 0x1
	jmp BG_ParseWeaponDefSpecificFieldType_40
BG_ParseWeaponDefSpecificFieldType_1250:
	xor edi, edi
	mov ebx, szWeapClassNames
BG_ParseWeaponDefSpecificFieldType_60:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], esi
	call Q_stricmp
	test eax, eax
	jz BG_ParseWeaponDefSpecificFieldType_50
	add edi, 0x1
	add ebx, 0x4
	cmp edi, 0xa
	jnz BG_ParseWeaponDefSpecificFieldType_60
	mov ebx, 0xffffffff
BG_ParseWeaponDefSpecificFieldType_1040:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_unknown_weapon_c
	mov dword [esp], 0x2
	call Com_Error
BG_ParseWeaponDefSpecificFieldType_620:
	mov ecx, [ebp+0x8]
	mov [ecx+0x130], ebx
	mov eax, 0x1
	jmp BG_ParseWeaponDefSpecificFieldType_40
BG_ParseWeaponDefSpecificFieldType_1260:
	xor edi, edi
	mov ebx, szWeapOverlayReticleNames
BG_ParseWeaponDefSpecificFieldType_80:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], esi
	call Q_stricmp
	test eax, eax
	jz BG_ParseWeaponDefSpecificFieldType_70
	add edi, 0x1
	add ebx, 0x4
	cmp edi, 0x2
	jnz BG_ParseWeaponDefSpecificFieldType_80
	mov ebx, 0xffffffff
BG_ParseWeaponDefSpecificFieldType_1230:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_unknown_weapon_o
	mov dword [esp], 0x2
	call Com_Error
BG_ParseWeaponDefSpecificFieldType_1030:
	mov ecx, [ebp+0x8]
	mov [ecx+0x438], ebx
	mov eax, 0x1
	jmp BG_ParseWeaponDefSpecificFieldType_40
BG_ParseWeaponDefSpecificFieldType_1270:
	xor edi, edi
	mov ebx, penetrateTypeNames
BG_ParseWeaponDefSpecificFieldType_100:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], esi
	call Q_stricmp
	test eax, eax
	jz BG_ParseWeaponDefSpecificFieldType_90
	add edi, 0x1
	add ebx, 0x4
	cmp edi, 0x4
	jnz BG_ParseWeaponDefSpecificFieldType_100
	mov ebx, 0xffffffff
BG_ParseWeaponDefSpecificFieldType_1100:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_unknown_penetrat
	mov dword [esp], 0x2
	call Com_Error
BG_ParseWeaponDefSpecificFieldType_820:
	mov ecx, [ebp+0x8]
	mov [ecx+0x134], ebx
	mov eax, 0x1
	jmp BG_ParseWeaponDefSpecificFieldType_40
BG_ParseWeaponDefSpecificFieldType_1290:
	xor edi, edi
	mov ebx, szWeapStanceNames
BG_ParseWeaponDefSpecificFieldType_120:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], esi
	call Q_stricmp
	test eax, eax
	jz BG_ParseWeaponDefSpecificFieldType_110
	add edi, 0x1
	add ebx, 0x4
	cmp edi, 0x3
	jnz BG_ParseWeaponDefSpecificFieldType_120
	mov ebx, 0xffffffff
BG_ParseWeaponDefSpecificFieldType_1200:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_unknown_weapon_s
	mov dword [esp], 0x2
	call Com_Error
BG_ParseWeaponDefSpecificFieldType_970:
	mov ecx, [ebp+0x8]
	mov [ecx+0x148], ebx
	mov eax, 0x1
	jmp BG_ParseWeaponDefSpecificFieldType_40
BG_ParseWeaponDefSpecificFieldType_1300:
	xor edi, edi
	mov ebx, szProjectileExplosionNames
BG_ParseWeaponDefSpecificFieldType_140:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], esi
	call Q_stricmp
	test eax, eax
	jz BG_ParseWeaponDefSpecificFieldType_130
	add edi, 0x1
	add ebx, 0x4
	cmp edi, 0x7
	jnz BG_ParseWeaponDefSpecificFieldType_140
	mov ebx, 0xffffffff
BG_ParseWeaponDefSpecificFieldType_1080:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_unknown_projecti
	mov dword [esp], 0x2
	call Com_Error
BG_ParseWeaponDefSpecificFieldType_660:
	mov ecx, [ebp+0x8]
	mov [ecx+0x588], ebx
	mov eax, 0x1
	jmp BG_ParseWeaponDefSpecificFieldType_40
BG_ParseWeaponDefSpecificFieldType_1280:
	xor edi, edi
	mov ebx, impactTypeNames
BG_ParseWeaponDefSpecificFieldType_160:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], esi
	call Q_stricmp
	test eax, eax
	jz BG_ParseWeaponDefSpecificFieldType_150
	add edi, 0x1
	add ebx, 0x4
	cmp edi, 0x9
	jnz BG_ParseWeaponDefSpecificFieldType_160
	mov ebx, 0xffffffff
BG_ParseWeaponDefSpecificFieldType_1060:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_unknown_impact_t
	mov dword [esp], 0x2
	call Com_Error
BG_ParseWeaponDefSpecificFieldType_640:
	mov ecx, [ebp+0x8]
	mov [ecx+0x138], ebx
	mov eax, 0x1
	jmp BG_ParseWeaponDefSpecificFieldType_40
BG_ParseWeaponDefSpecificFieldType_1310:
	xor edi, edi
	mov ebx, offhandClassNames
BG_ParseWeaponDefSpecificFieldType_180:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], esi
	call Q_stricmp
	test eax, eax
	jz BG_ParseWeaponDefSpecificFieldType_170
	add edi, 0x1
	add ebx, 0x4
	cmp edi, 0x4
	jnz BG_ParseWeaponDefSpecificFieldType_180
	mov ebx, 0xffffffff
BG_ParseWeaponDefSpecificFieldType_1130:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_unknown_offhand_
	mov dword [esp], 0x2
	call Com_Error
BG_ParseWeaponDefSpecificFieldType_800:
	mov ecx, [ebp+0x8]
	mov [ecx+0x144], ebx
	mov eax, 0x1
	jmp BG_ParseWeaponDefSpecificFieldType_40
BG_ParseWeaponDefSpecificFieldType_1320:
	mov eax, [g_playerAnimTypeNamesCount]
	mov [ebp-0x174], eax
	test eax, eax
	jle BG_ParseWeaponDefSpecificFieldType_190
	xor edi, edi
	mov ebx, g_playerAnimTypeNames
BG_ParseWeaponDefSpecificFieldType_210:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], esi
	call Q_stricmp
	test eax, eax
	jz BG_ParseWeaponDefSpecificFieldType_200
	add edi, 0x1
	add ebx, 0x4
	cmp [ebp-0x174], edi
	jnz BG_ParseWeaponDefSpecificFieldType_210
BG_ParseWeaponDefSpecificFieldType_190:
	mov edi, 0xffffffff
BG_ParseWeaponDefSpecificFieldType_840:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_unknown_playeran
	mov dword [esp], 0x2
	call Com_Error
BG_ParseWeaponDefSpecificFieldType_830:
	mov ecx, [ebp+0x8]
	mov [ecx+0x128], edi
	mov eax, 0x1
	jmp BG_ParseWeaponDefSpecificFieldType_40
BG_ParseWeaponDefSpecificFieldType_1390:
	xor edi, edi
	mov ebx, szWeapFireTypeNames
BG_ParseWeaponDefSpecificFieldType_230:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], esi
	call Q_stricmp
	test eax, eax
	jz BG_ParseWeaponDefSpecificFieldType_220
	add edi, 0x1
	add ebx, 0x4
	cmp edi, 0x5
	jnz BG_ParseWeaponDefSpecificFieldType_230
	mov ebx, 0xffffffff
BG_ParseWeaponDefSpecificFieldType_1090:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_unknown_weapon_f
	mov dword [esp], 0x2
	call Com_Error
BG_ParseWeaponDefSpecificFieldType_700:
	mov ecx, [ebp+0x8]
	mov [ecx+0x140], ebx
	mov eax, 0x1
	jmp BG_ParseWeaponDefSpecificFieldType_40
BG_ParseWeaponDefSpecificFieldType_1400:
	xor edi, edi
	mov ebx, ammoCounterClipNames
BG_ParseWeaponDefSpecificFieldType_250:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], esi
	call Q_stricmp
	test eax, eax
	jz BG_ParseWeaponDefSpecificFieldType_240
	add edi, 0x1
	add ebx, 0x4
	cmp edi, 0x7
	jnz BG_ParseWeaponDefSpecificFieldType_250
	mov ebx, 0xffffffff
BG_ParseWeaponDefSpecificFieldType_1070:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_unknown_ammocoun
	mov dword [esp], 0x2
	call Com_Error
BG_ParseWeaponDefSpecificFieldType_680:
	mov ecx, [ebp+0x8]
	mov [ecx+0x31c], ebx
	mov eax, 0x1
	jmp BG_ParseWeaponDefSpecificFieldType_40
BG_ParseWeaponDefSpecificFieldType_1350:
	cmp byte [esi], 0x0
	jnz BG_ParseWeaponDefSpecificFieldType_260
	mov dword [ebp-0x170], 0x0
	mov eax, [ebp-0x170]
BG_ParseWeaponDefSpecificFieldType_600:
	mov ecx, [ebp+0x8]
	mov [ecx+0x208], eax
	mov eax, 0x1
	jmp BG_ParseWeaponDefSpecificFieldType_40
BG_ParseWeaponDefSpecificFieldType_1360:
	xor edi, edi
	mov ebx, stickinessNames
BG_ParseWeaponDefSpecificFieldType_280:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], esi
	call Q_stricmp
	test eax, eax
	jz BG_ParseWeaponDefSpecificFieldType_270
	add edi, 0x1
	add ebx, 0x4
	cmp edi, 0x4
	jnz BG_ParseWeaponDefSpecificFieldType_280
	mov ebx, 0xffffffff
BG_ParseWeaponDefSpecificFieldType_1120:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_unknown_weapon_s1
	mov dword [esp], 0x2
	call Com_Error
BG_ParseWeaponDefSpecificFieldType_760:
	mov ecx, [ebp+0x8]
	mov [ecx+0x5a4], ebx
	mov eax, 0x1
	jmp BG_ParseWeaponDefSpecificFieldType_40
BG_ParseWeaponDefSpecificFieldType_1430:
	xor edi, edi
	mov ebx, weapIconRatioNames
BG_ParseWeaponDefSpecificFieldType_300:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], esi
	call Q_stricmp
	test eax, eax
	jz BG_ParseWeaponDefSpecificFieldType_290
	add edi, 0x1
	add ebx, 0x4
	cmp edi, 0x3
	jnz BG_ParseWeaponDefSpecificFieldType_300
	mov ebx, 0xffffffff
BG_ParseWeaponDefSpecificFieldType_1210:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_unknown_icon_rat
	mov dword [esp], 0x2
	call Com_Error
BG_ParseWeaponDefSpecificFieldType_930:
	mov ecx, [ebp+0x8]
	mov [ecx+0x51c], ebx
	mov eax, 0x1
	jmp BG_ParseWeaponDefSpecificFieldType_40
BG_ParseWeaponDefSpecificFieldType_1440:
	xor edi, edi
	mov ebx, weapIconRatioNames
BG_ParseWeaponDefSpecificFieldType_320:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], esi
	call Q_stricmp
	test eax, eax
	jz BG_ParseWeaponDefSpecificFieldType_310
	add edi, 0x1
	add ebx, 0x4
	cmp edi, 0x3
	jnz BG_ParseWeaponDefSpecificFieldType_320
	mov ebx, 0xffffffff
BG_ParseWeaponDefSpecificFieldType_1160:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_unknown_icon_rat
	mov dword [esp], 0x2
	call Com_Error
BG_ParseWeaponDefSpecificFieldType_890:
	mov ecx, [ebp+0x8]
	mov [ecx+0x528], ebx
	mov eax, 0x1
	jmp BG_ParseWeaponDefSpecificFieldType_40
BG_ParseWeaponDefSpecificFieldType_1330:
	xor edi, edi
	mov ebx, activeReticleNames
BG_ParseWeaponDefSpecificFieldType_340:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], esi
	call Q_stricmp
	test eax, eax
	jz BG_ParseWeaponDefSpecificFieldType_330
	add edi, 0x1
	add ebx, 0x4
	cmp edi, 0x3
	jnz BG_ParseWeaponDefSpecificFieldType_340
	mov ebx, 0xffffffff
BG_ParseWeaponDefSpecificFieldType_1170:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_unknown_activere
	mov dword [esp], 0x2
	call Com_Error
BG_ParseWeaponDefSpecificFieldType_1010:
	mov ecx, [ebp+0x8]
	mov [ecx+0x230], ebx
	mov eax, 0x1
	jmp BG_ParseWeaponDefSpecificFieldType_40
BG_ParseWeaponDefSpecificFieldType_1340:
	xor edi, edi
	mov ebx, guidedMissileNames
BG_ParseWeaponDefSpecificFieldType_360:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], esi
	call Q_stricmp
	test eax, eax
	jz BG_ParseWeaponDefSpecificFieldType_350
	add edi, 0x1
	add ebx, 0x4
	cmp edi, 0x4
	jnz BG_ParseWeaponDefSpecificFieldType_360
	mov ebx, 0xffffffff
BG_ParseWeaponDefSpecificFieldType_1140:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_unknown_guided_m
	mov dword [esp], 0x2
	call Com_Error
BG_ParseWeaponDefSpecificFieldType_720:
	mov ecx, [ebp+0x8]
	mov [ecx+0x6b8], ebx
	mov eax, 0x1
	jmp BG_ParseWeaponDefSpecificFieldType_40
BG_ParseWeaponDefSpecificFieldType_1410:
	xor edi, edi
	mov ebx, weapIconRatioNames
BG_ParseWeaponDefSpecificFieldType_380:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], esi
	call Q_stricmp
	test eax, eax
	jz BG_ParseWeaponDefSpecificFieldType_370
	add edi, 0x1
	add ebx, 0x4
	cmp edi, 0x3
	jnz BG_ParseWeaponDefSpecificFieldType_380
	mov ebx, 0xffffffff
BG_ParseWeaponDefSpecificFieldType_1190:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_unknown_icon_rat
	mov dword [esp], 0x2
	call Com_Error
BG_ParseWeaponDefSpecificFieldType_950:
	mov ecx, [ebp+0x8]
	mov [ecx+0x310], ebx
	mov eax, 0x1
	jmp BG_ParseWeaponDefSpecificFieldType_40
BG_ParseWeaponDefSpecificFieldType_1420:
	xor edi, edi
	mov ebx, weapIconRatioNames
BG_ParseWeaponDefSpecificFieldType_400:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], esi
	call Q_stricmp
	test eax, eax
	jz BG_ParseWeaponDefSpecificFieldType_390
	add edi, 0x1
	add ebx, 0x4
	cmp edi, 0x3
	jnz BG_ParseWeaponDefSpecificFieldType_400
	mov ebx, 0xffffffff
BG_ParseWeaponDefSpecificFieldType_1180:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_unknown_icon_rat
	mov dword [esp], 0x2
	call Com_Error
BG_ParseWeaponDefSpecificFieldType_910:
	mov ecx, [ebp+0x8]
	mov [ecx+0x318], ebx
	mov eax, 0x1
	jmp BG_ParseWeaponDefSpecificFieldType_40
BG_ParseWeaponDefSpecificFieldType_1370:
	xor edi, edi
	mov ebx, overlayInterfaceNames
BG_ParseWeaponDefSpecificFieldType_420:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], esi
	call Q_stricmp
	test eax, eax
	jz BG_ParseWeaponDefSpecificFieldType_410
	add edi, 0x1
	add ebx, 0x4
	cmp edi, 0x3
	jnz BG_ParseWeaponDefSpecificFieldType_420
	mov ebx, 0xffffffff
BG_ParseWeaponDefSpecificFieldType_1220:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_unknown_weapon_a
	mov dword [esp], 0x2
	call Com_Error
BG_ParseWeaponDefSpecificFieldType_990:
	mov ecx, [ebp+0x8]
	mov [ecx+0x43c], ebx
	mov eax, 0x1
	jmp BG_ParseWeaponDefSpecificFieldType_40
BG_ParseWeaponDefSpecificFieldType_1380:
	xor edi, edi
	mov ebx, szWeapInventoryTypeNames
BG_ParseWeaponDefSpecificFieldType_440:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], esi
	call Q_stricmp
	test eax, eax
	jz BG_ParseWeaponDefSpecificFieldType_430
	add edi, 0x1
	add ebx, 0x4
	cmp edi, 0x4
	jnz BG_ParseWeaponDefSpecificFieldType_440
	mov ebx, 0xffffffff
BG_ParseWeaponDefSpecificFieldType_1110:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_unknown_weapon_i
	mov dword [esp], 0x2
	call Com_Error
BG_ParseWeaponDefSpecificFieldType_740:
	mov ecx, [ebp+0x8]
	mov [ecx+0x13c], ebx
	mov eax, 0x1
	jmp BG_ParseWeaponDefSpecificFieldType_40
BG_ParseWeaponDefSpecificFieldType_1450:
	mov [ebp-0x1c], esi
	mov esi, [ebp+0x8]
	mov dword [ebp-0x178], 0x0
	jmp BG_ParseWeaponDefSpecificFieldType_450
BG_ParseWeaponDefSpecificFieldType_470:
	mov dword [esp+0xc], 0xa
	cld
	mov ecx, 0xffffffff
	mov edi, ebx
	xor eax, eax
	repne scasb
	not ecx
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call SL_GetStringOfSize
	mov [esi+0xd8], ax
	mov dword [esp+0x8], 0xa
	mov dword [esp+0x4], 0x0
	movzx eax, ax
	mov [esp], eax
	call SL_ConvertToLowercase
	mov [esi+0xd8], ax
	add dword [ebp-0x178], 0x1
	add esi, 0x2
BG_ParseWeaponDefSpecificFieldType_450:
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call Com_Parse
	mov ebx, eax
	mov eax, [ebp-0x1c]
	test eax, eax
	jz BG_ParseWeaponDefSpecificFieldType_460
	cmp dword [ebp-0x178], 0x7
	jle BG_ParseWeaponDefSpecificFieldType_470
	mov dword [esp+0x10], 0x8
	mov edx, [ebp-0x178]
	mov [esp+0xc], edx
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_maximum_hide_tag
	mov dword [esp], 0x2
	call Com_Error
	jmp BG_ParseWeaponDefSpecificFieldType_470
BG_ParseWeaponDefSpecificFieldType_1460:
	mov [ebp-0x1c], esi
	mov byte [ebp-0x5c], 0x0
	xor esi, esi
BG_ParseWeaponDefSpecificFieldType_540:
	lea edx, [ebp-0x1c]
	mov [esp], edx
	call Com_Parse
	mov ebx, eax
	mov edi, [ebp-0x1c]
	test edi, edi
	jz BG_ParseWeaponDefSpecificFieldType_480
BG_ParseWeaponDefSpecificFieldType_520:
	cmp esi, 0xf
	jg BG_ParseWeaponDefSpecificFieldType_490
BG_ParseWeaponDefSpecificFieldType_550:
	cmp byte [ebp-0x5c], 0x0
	jnz BG_ParseWeaponDefSpecificFieldType_500
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	lea eax, [ecx-0x1]
	cmp eax, 0x3e
	jg BG_ParseWeaponDefSpecificFieldType_510
BG_ParseWeaponDefSpecificFieldType_560:
	mov [esp+0x4], ebx
	lea eax, [ebp-0x5c]
	mov [esp], eax
	call strcpy
	lea edx, [ebp-0x1c]
	mov [esp], edx
	call Com_Parse
	mov ebx, eax
	mov edi, [ebp-0x1c]
	test edi, edi
	jnz BG_ParseWeaponDefSpecificFieldType_520
BG_ParseWeaponDefSpecificFieldType_480:
	cmp byte [ebp-0x5c], 0x0
	jnz BG_ParseWeaponDefSpecificFieldType_530
BG_ParseWeaponDefSpecificFieldType_460:
	mov eax, 0x1
	jmp BG_ParseWeaponDefSpecificFieldType_40
BG_ParseWeaponDefSpecificFieldType_530:
	lea eax, [ebp-0x5c]
	mov [esp+0xc], eax
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_notetracktosound
	mov dword [esp], 0x0
	call Com_PrintWarning
	mov eax, 0x1
	jmp BG_ParseWeaponDefSpecificFieldType_40
BG_ParseWeaponDefSpecificFieldType_500:
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x5c]
	mov [esp], eax
	call SL_GetLowercaseString
	mov ecx, [ebp+0x8]
	mov [ecx+esi*2+0xe8], ax
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call SL_GetLowercaseString
	mov edx, [ebp+0x8]
	mov [edx+esi*2+0x108], ax
	add esi, 0x1
	mov byte [ebp-0x5c], 0x0
	jmp BG_ParseWeaponDefSpecificFieldType_540
BG_ParseWeaponDefSpecificFieldType_490:
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x10
	mov dword [esp+0x4], _cstring_max_notetracktos
	mov dword [esp], 0x2
	call Com_Error
	jmp BG_ParseWeaponDefSpecificFieldType_550
BG_ParseWeaponDefSpecificFieldType_510:
	mov dword [esp+0x10], 0x3f
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_notetracktosound1
	mov dword [esp], 0x2
	call Com_Error
	jmp BG_ParseWeaponDefSpecificFieldType_560
BG_ParseWeaponDefSpecificFieldType_260:
	mov eax, [surfaceTypeSoundListCount]
	test eax, eax
	jg BG_ParseWeaponDefSpecificFieldType_570
BG_ParseWeaponDefSpecificFieldType_860:
	cmp eax, 0x10
	jz BG_ParseWeaponDefSpecificFieldType_580
BG_ParseWeaponDefSpecificFieldType_1050:
	mov dword [esp], 0x74
	call Hunk_AllocLowInternal
	mov [ebp-0x170], eax
	mov [esp+0xc], esi
	mov dword [esp+0x8], _cstring_s_default
	mov dword [esp+0x4], 0x100
	lea eax, [ebp-0x15c]
	mov [esp], eax
	call Com_sprintf
	lea edx, [ebp-0x15c]
	mov [esp], edx
	call Com_FindSoundAlias
	mov [ebp-0x16c], eax
	xor edi, edi
	mov ebx, [ebp-0x170]
BG_ParseWeaponDefSpecificFieldType_590:
	mov [esp], edi
	call Com_SurfaceTypeToName
	mov [esp+0x10], eax
	mov [esp+0xc], esi
	mov dword [esp+0x8], _cstring_s_s
	mov dword [esp+0x4], 0x100
	lea ecx, [ebp-0x15c]
	mov [esp], ecx
	call Com_sprintf
	lea eax, [ebp-0x15c]
	mov [esp], eax
	call Com_FindSoundAlias
	test eax, eax
	cmovz eax, [ebp-0x16c]
	mov [ebx], eax
	add edi, 0x1
	add ebx, 0x4
	cmp edi, 0x1d
	jnz BG_ParseWeaponDefSpecificFieldType_590
	mov ebx, [surfaceTypeSoundListCount]
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	not ecx
	mov [esp], ecx
	call Hunk_AllocLowInternal
	mov [ebx*8+surfaceTypeSoundLists], eax
	mov [esp+0x4], esi
	mov eax, [surfaceTypeSoundListCount]
	mov eax, [eax*8+surfaceTypeSoundLists]
	mov [esp], eax
	call strcpy
	mov eax, [surfaceTypeSoundListCount]
	mov edx, [ebp-0x170]
	mov [eax*8+surfaceTypeSoundLists+0x4], edx
	add eax, 0x1
	mov [surfaceTypeSoundListCount], eax
	mov eax, edx
	jmp BG_ParseWeaponDefSpecificFieldType_600
BG_ParseWeaponDefSpecificFieldType_50:
	test edi, edi
	js BG_ParseWeaponDefSpecificFieldType_610
	mov ebx, edi
	jmp BG_ParseWeaponDefSpecificFieldType_620
BG_ParseWeaponDefSpecificFieldType_150:
	test edi, edi
	js BG_ParseWeaponDefSpecificFieldType_630
	mov ebx, edi
	jmp BG_ParseWeaponDefSpecificFieldType_640
BG_ParseWeaponDefSpecificFieldType_130:
	test edi, edi
	js BG_ParseWeaponDefSpecificFieldType_650
	mov ebx, edi
	jmp BG_ParseWeaponDefSpecificFieldType_660
BG_ParseWeaponDefSpecificFieldType_240:
	test edi, edi
	js BG_ParseWeaponDefSpecificFieldType_670
	mov ebx, edi
	jmp BG_ParseWeaponDefSpecificFieldType_680
BG_ParseWeaponDefSpecificFieldType_220:
	test edi, edi
	js BG_ParseWeaponDefSpecificFieldType_690
	mov ebx, edi
	jmp BG_ParseWeaponDefSpecificFieldType_700
BG_ParseWeaponDefSpecificFieldType_350:
	test edi, edi
	js BG_ParseWeaponDefSpecificFieldType_710
	mov ebx, edi
	jmp BG_ParseWeaponDefSpecificFieldType_720
BG_ParseWeaponDefSpecificFieldType_430:
	test edi, edi
	js BG_ParseWeaponDefSpecificFieldType_730
	mov ebx, edi
	jmp BG_ParseWeaponDefSpecificFieldType_740
BG_ParseWeaponDefSpecificFieldType_270:
	test edi, edi
	js BG_ParseWeaponDefSpecificFieldType_750
	mov ebx, edi
	jmp BG_ParseWeaponDefSpecificFieldType_760
BG_ParseWeaponDefSpecificFieldType_20:
	test edi, edi
	js BG_ParseWeaponDefSpecificFieldType_770
	mov ebx, edi
	jmp BG_ParseWeaponDefSpecificFieldType_780
BG_ParseWeaponDefSpecificFieldType_170:
	test edi, edi
	js BG_ParseWeaponDefSpecificFieldType_790
	mov ebx, edi
	jmp BG_ParseWeaponDefSpecificFieldType_800
BG_ParseWeaponDefSpecificFieldType_90:
	test edi, edi
	js BG_ParseWeaponDefSpecificFieldType_810
	mov ebx, edi
	jmp BG_ParseWeaponDefSpecificFieldType_820
BG_ParseWeaponDefSpecificFieldType_200:
	test edi, edi
	jns BG_ParseWeaponDefSpecificFieldType_830
	jmp BG_ParseWeaponDefSpecificFieldType_840
BG_ParseWeaponDefSpecificFieldType_570:
	xor edi, edi
	mov ebx, surfaceTypeSoundLists
	jmp BG_ParseWeaponDefSpecificFieldType_850
BG_ParseWeaponDefSpecificFieldType_870:
	add edi, 0x1
	mov eax, [surfaceTypeSoundListCount]
	add ebx, 0x8
	cmp edi, eax
	jge BG_ParseWeaponDefSpecificFieldType_860
BG_ParseWeaponDefSpecificFieldType_850:
	mov [esp+0x4], esi
	mov eax, [ebx]
	mov [esp], eax
	call strcmp
	test eax, eax
	jnz BG_ParseWeaponDefSpecificFieldType_870
	mov edi, [edi*8+surfaceTypeSoundLists+0x4]
	mov [ebp-0x170], edi
	mov eax, edi
	jmp BG_ParseWeaponDefSpecificFieldType_600
BG_ParseWeaponDefSpecificFieldType_310:
	test edi, edi
	js BG_ParseWeaponDefSpecificFieldType_880
	mov ebx, edi
	jmp BG_ParseWeaponDefSpecificFieldType_890
BG_ParseWeaponDefSpecificFieldType_390:
	test edi, edi
	js BG_ParseWeaponDefSpecificFieldType_900
	mov ebx, edi
	jmp BG_ParseWeaponDefSpecificFieldType_910
BG_ParseWeaponDefSpecificFieldType_290:
	test edi, edi
	js BG_ParseWeaponDefSpecificFieldType_920
	mov ebx, edi
	jmp BG_ParseWeaponDefSpecificFieldType_930
BG_ParseWeaponDefSpecificFieldType_370:
	test edi, edi
	js BG_ParseWeaponDefSpecificFieldType_940
	mov ebx, edi
	jmp BG_ParseWeaponDefSpecificFieldType_950
BG_ParseWeaponDefSpecificFieldType_110:
	test edi, edi
	js BG_ParseWeaponDefSpecificFieldType_960
	mov ebx, edi
	jmp BG_ParseWeaponDefSpecificFieldType_970
BG_ParseWeaponDefSpecificFieldType_410:
	test edi, edi
	js BG_ParseWeaponDefSpecificFieldType_980
	mov ebx, edi
	jmp BG_ParseWeaponDefSpecificFieldType_990
BG_ParseWeaponDefSpecificFieldType_330:
	test edi, edi
	js BG_ParseWeaponDefSpecificFieldType_1000
	mov ebx, edi
	jmp BG_ParseWeaponDefSpecificFieldType_1010
BG_ParseWeaponDefSpecificFieldType_70:
	test edi, edi
	js BG_ParseWeaponDefSpecificFieldType_1020
	mov ebx, edi
	jmp BG_ParseWeaponDefSpecificFieldType_1030
BG_ParseWeaponDefSpecificFieldType_610:
	mov ebx, edi
	jmp BG_ParseWeaponDefSpecificFieldType_1040
BG_ParseWeaponDefSpecificFieldType_580:
	mov dword [esp+0x8], 0x10
	mov dword [esp+0x4], _cstring_exceeded_max_sur
	mov dword [esp], 0x2
	call Com_Error
	jmp BG_ParseWeaponDefSpecificFieldType_1050
BG_ParseWeaponDefSpecificFieldType_630:
	mov ebx, edi
	jmp BG_ParseWeaponDefSpecificFieldType_1060
BG_ParseWeaponDefSpecificFieldType_670:
	mov ebx, edi
	jmp BG_ParseWeaponDefSpecificFieldType_1070
BG_ParseWeaponDefSpecificFieldType_650:
	mov ebx, edi
	jmp BG_ParseWeaponDefSpecificFieldType_1080
BG_ParseWeaponDefSpecificFieldType_690:
	mov ebx, edi
	jmp BG_ParseWeaponDefSpecificFieldType_1090
BG_ParseWeaponDefSpecificFieldType_810:
	mov ebx, edi
	jmp BG_ParseWeaponDefSpecificFieldType_1100
BG_ParseWeaponDefSpecificFieldType_730:
	mov ebx, edi
	jmp BG_ParseWeaponDefSpecificFieldType_1110
BG_ParseWeaponDefSpecificFieldType_750:
	mov ebx, edi
	jmp BG_ParseWeaponDefSpecificFieldType_1120
BG_ParseWeaponDefSpecificFieldType_790:
	mov ebx, edi
	jmp BG_ParseWeaponDefSpecificFieldType_1130
BG_ParseWeaponDefSpecificFieldType_710:
	mov ebx, edi
	jmp BG_ParseWeaponDefSpecificFieldType_1140
BG_ParseWeaponDefSpecificFieldType_770:
	mov ebx, edi
	jmp BG_ParseWeaponDefSpecificFieldType_1150
BG_ParseWeaponDefSpecificFieldType_880:
	mov ebx, edi
	jmp BG_ParseWeaponDefSpecificFieldType_1160
BG_ParseWeaponDefSpecificFieldType_1000:
	mov ebx, edi
	jmp BG_ParseWeaponDefSpecificFieldType_1170
BG_ParseWeaponDefSpecificFieldType_900:
	mov ebx, edi
	jmp BG_ParseWeaponDefSpecificFieldType_1180
BG_ParseWeaponDefSpecificFieldType_940:
	mov ebx, edi
	jmp BG_ParseWeaponDefSpecificFieldType_1190
BG_ParseWeaponDefSpecificFieldType_960:
	mov ebx, edi
	jmp BG_ParseWeaponDefSpecificFieldType_1200
BG_ParseWeaponDefSpecificFieldType_920:
	mov ebx, edi
	jmp BG_ParseWeaponDefSpecificFieldType_1210
BG_ParseWeaponDefSpecificFieldType_980:
	mov ebx, edi
	jmp BG_ParseWeaponDefSpecificFieldType_1220
BG_ParseWeaponDefSpecificFieldType_1020:
	mov ebx, edi
	jmp BG_ParseWeaponDefSpecificFieldType_1230
	add [eax], al
	
	
BG_ParseWeaponDefSpecificFieldType_jumptab_0:
	dd BG_ParseWeaponDefSpecificFieldType_1240
	dd BG_ParseWeaponDefSpecificFieldType_1250
	dd BG_ParseWeaponDefSpecificFieldType_1260
	dd BG_ParseWeaponDefSpecificFieldType_1270
	dd BG_ParseWeaponDefSpecificFieldType_1280
	dd BG_ParseWeaponDefSpecificFieldType_1290
	dd BG_ParseWeaponDefSpecificFieldType_1300
	dd BG_ParseWeaponDefSpecificFieldType_1310
	dd BG_ParseWeaponDefSpecificFieldType_1320
	dd BG_ParseWeaponDefSpecificFieldType_1330
	dd BG_ParseWeaponDefSpecificFieldType_1340
	dd BG_ParseWeaponDefSpecificFieldType_1350
	dd BG_ParseWeaponDefSpecificFieldType_1360
	dd BG_ParseWeaponDefSpecificFieldType_1370
	dd BG_ParseWeaponDefSpecificFieldType_1380
	dd BG_ParseWeaponDefSpecificFieldType_1390
	dd BG_ParseWeaponDefSpecificFieldType_1400
	dd BG_ParseWeaponDefSpecificFieldType_1410
	dd BG_ParseWeaponDefSpecificFieldType_1420
	dd BG_ParseWeaponDefSpecificFieldType_1430
	dd BG_ParseWeaponDefSpecificFieldType_1440
	dd BG_ParseWeaponDefSpecificFieldType_1450
	dd BG_ParseWeaponDefSpecificFieldType_1460


;SetConfigString(char**, char const*)
SetConfigString:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0xc]
	cmp byte [esi], 0x0
	jnz SetConfigString_10
	mov eax, [ebp+0x8]
	mov dword [eax], _cstring_null
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SetConfigString_10:
	mov dword [esp+0x4], 0x1
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	not ecx
	mov [esp], ecx
	call Hunk_AllocLowAlignInternal
	mov ebx, eax
	mov [esp+0x4], esi
	mov [esp], eax
	call strcpy
	mov eax, [ebp+0x8]
	mov [eax], ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;BG_GetWeaponTypeName(weapType_t)
BG_GetWeaponTypeName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax*4+szWeapTypeNames]
	pop ebp
	ret
	nop


;BG_LoadWeaponStrings()
BG_LoadWeaponStrings:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [g_playerAnimTypeNamesCount]
	test eax, eax
	jnz BG_LoadWeaponStrings_10
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
BG_LoadWeaponStrings_10:
	xor ebx, ebx
	mov esi, g_playerAnimTypeNames
BG_LoadWeaponStrings_20:
	mov eax, [esi]
	mov [esp+0x4], eax
	mov [esp], ebx
	call BG_InitWeaponString
	add ebx, 0x1
	add esi, 0x4
	cmp [g_playerAnimTypeNamesCount], ebx
	ja BG_LoadWeaponStrings_20
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;BG_GetWeaponClassName(weapClass_t)
BG_GetWeaponClassName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax*4+szWeapClassNames]
	pop ebp
	ret
	nop


;BG_LoadPlayerAnimTypes()
BG_LoadPlayerAnimTypes:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov dword [g_playerAnimTypeNamesCount], 0x0
	mov dword [esp], _cstring_mpplayeranimtype
	call Com_LoadRawTextFile
	mov [ebp-0x2c], eax
	test eax, eax
	jz BG_LoadPlayerAnimTypes_10
BG_LoadPlayerAnimTypes_50:
	mov [ebp-0x1c], eax
	mov dword [esp], _cstring_bg_animparseanim
	call Com_BeginParseSession
	jmp BG_LoadPlayerAnimTypes_20
BG_LoadPlayerAnimTypes_40:
	mov ebx, [g_playerAnimTypeNamesCount]
	cld
	mov ecx, 0xffffffff
	mov edi, esi
	xor eax, eax
	repne scasb
	not ecx
	mov [esp], ecx
	call Hunk_AllocInternal
	mov [ebx*4+g_playerAnimTypeNames], eax
	mov [esp+0x4], esi
	mov eax, [g_playerAnimTypeNamesCount]
	mov eax, [eax*4+g_playerAnimTypeNames]
	mov [esp], eax
	call strcpy
	add dword [g_playerAnimTypeNamesCount], 0x1
BG_LoadPlayerAnimTypes_20:
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call Com_Parse
	mov esi, eax
	test eax, eax
	jz BG_LoadPlayerAnimTypes_30
	cmp byte [eax], 0x0
	jz BG_LoadPlayerAnimTypes_30
	cmp dword [g_playerAnimTypeNamesCount], 0x3f
	jbe BG_LoadPlayerAnimTypes_40
	mov dword [esp+0x4], _cstring_player_anim_type
	mov dword [esp], 0x2
	call Com_Error
	jmp BG_LoadPlayerAnimTypes_40
BG_LoadPlayerAnimTypes_30:
	call Com_EndParseSession
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call Com_UnloadRawTextFile
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
BG_LoadPlayerAnimTypes_10:
	mov dword [esp+0x8], _cstring_mpplayeranimtype
	mov dword [esp+0x4], _cstring_couldnt_load_fil
	mov dword [esp], 0x2
	call Com_Error
	mov eax, [ebp-0x2c]
	jmp BG_LoadPlayerAnimTypes_50


;BG_LoadDefaultWeaponDef()
BG_LoadDefaultWeaponDef:
	push ebp
	mov ebp, esp
	mov eax, useFastFile
	mov eax, [eax]
	mov ecx, BG_LoadDefaultWeaponDef_FastFile
	cmp byte [eax+0xc], 0x0
	mov eax, BG_LoadDefaultWeaponDef_LoadObj
	cmovz ecx, eax
	pop ebp
	jmp ecx


;BG_LoadWeaponDefInternal(char const*, char const*)
BG_LoadWeaponDefInternal:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x289c
	mov dword [esp], 0x878
	call Hunk_AllocLowInternal
	mov [ebp-0x287c], eax
	mov dword [eax], _cstring_null
	mov edx, weaponDefFields+0x8
	xor ecx, ecx
BG_LoadWeaponDefInternal_20:
	mov ebx, [edx]
	test ebx, ebx
	jnz BG_LoadWeaponDefInternal_10
	mov eax, [edx-0x4]
	mov ebx, [ebp-0x287c]
	mov dword [eax+ebx], _cstring_null
BG_LoadWeaponDefInternal_10:
	add edx, 0xc
	inc ecx
	cmp ecx, 502
	jnz BG_LoadWeaponDefInternal_20
	mov edi, [ebp+0xc]
	mov [esp+0x10], edi
	mov eax, [ebp+0x8]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_weaponsss
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
	mov [ebp-0x286c], eax
	test eax, eax
	js BG_LoadWeaponDefInternal_30
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xa
	lea ebx, [ebp-0x285c]
	mov [esp], ebx
	call FS_Read
	mov byte [ebp-0x2852], 0x0
	mov dword [ebp-0x2880], _cstring_weaponfile
	mov ebx, 0xa
	cld
	lea esi, [ebp-0x285c]
	mov edi, _cstring_weaponfile
	mov ecx, ebx
	repe cmpsb
	mov eax, 0x0
	jz BG_LoadWeaponDefInternal_40
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
BG_LoadWeaponDefInternal_40:
	test eax, eax
	jnz BG_LoadWeaponDefInternal_50
	mov ebx, [ebp-0x286c]
	sub ebx, 0xa
	cmp ebx, 0x27ff
	ja BG_LoadWeaponDefInternal_60
	mov dword [esp+0x8], 0x2800
	mov dword [esp+0x4], 0x0
	lea edi, [ebp-0x285c]
	mov [esp], edi
	call memset
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], edi
	call FS_Read
	mov byte [ebp+ebx-0x285c], 0x0
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FCloseFile
	mov [esp], edi
	call Info_Validate
	test eax, eax
	jz BG_LoadWeaponDefInternal_70
	mov ebx, [ebp+0xc]
	cmp byte [ebx], 0x0
	jnz BG_LoadWeaponDefInternal_80
	mov edi, [ebp-0x287c]
	mov dword [edi], _cstring_null
BG_LoadWeaponDefInternal_100:
	mov dword [esp+0x18], SetConfigString2
	mov dword [esp+0x14], BG_ParseWeaponDefSpecificFieldType
	mov dword [esp+0x10], 0x23
	lea ecx, [ebp-0x285c]
	mov [esp+0xc], ecx
	mov dword [esp+0x8], 0x1f6
	mov dword [esp+0x4], weaponDefFields
	mov ebx, [ebp-0x287c]
	mov [esp], ebx
	call ParseConfigStringToStruct
	test eax, eax
	jnz BG_LoadWeaponDefInternal_90
	lea eax, [ebp-0x5c]
	mov [esp+0x8], eax
	mov eax, _junkparse_
	mov [esp+4], eax
	mov dword [esp], 2
	call Com_Error
BG_LoadWeaponDefInternal_240:
	mov dword [ebp-0x287c], 0x0
BG_LoadWeaponDefInternal_250:
	mov eax, [ebp-0x287c]
	add esp, 0x289c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
BG_LoadWeaponDefInternal_80:
	mov dword [esp+0x4], 0x1
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp+0xc]
	repne scasb
	not ecx
	mov [esp], ecx
	call Hunk_AllocLowAlignInternal
	mov ebx, eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call strcpy
	mov edx, [ebp-0x287c]
	mov [edx], ebx
	jmp BG_LoadWeaponDefInternal_100
BG_LoadWeaponDefInternal_70:
	lea ecx, [ebp-0x5c]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_warning_s_is_not
	mov dword [esp], 0x11
	call Com_PrintWarning
	mov dword [ebp-0x287c], 0x0
	mov eax, [ebp-0x287c]
	add esp, 0x289c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
BG_LoadWeaponDefInternal_60:
	mov dword [esp+0x10], 0xa
	mov edx, [ebp-0x286c]
	mov [esp+0xc], edx
	lea ecx, [ebp-0x5c]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_warning_s_is_too
	mov dword [esp], 0x11
	call Com_PrintWarning
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FCloseFile
	mov dword [ebp-0x287c], 0x0
	mov eax, [ebp-0x287c]
	add esp, 0x289c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
BG_LoadWeaponDefInternal_90:
	mov dword [esp+0x4], _cstring_defaultweapon_mp
	mov edi, [ebp+0xc]
	mov [esp], edi
	call Q_stricmp
	test eax, eax
	jz BG_LoadWeaponDefInternal_110
	mov ecx, [ebx+0x214]
	test ecx, ecx
	jz BG_LoadWeaponDefInternal_120
BG_LoadWeaponDefInternal_350:
	mov eax, [ebp-0x287c]
	mov edx, [eax+0x218]
	test edx, edx
	jnz BG_LoadWeaponDefInternal_130
	mov edx, eax
	mov eax, [eax+0x210]
	mov [edx+0x218], eax
BG_LoadWeaponDefInternal_130:
	mov ecx, [ebp-0x287c]
	mov eax, [ecx+0x1f0]
	test eax, eax
	jnz BG_LoadWeaponDefInternal_140
	mov dword [esp], _cstring_weap_raise
	call Com_FindSoundAlias
	mov ebx, [ebp-0x287c]
	mov [ebx+0x1f0], eax
BG_LoadWeaponDefInternal_140:
	mov edi, [ebp-0x287c]
	mov eax, [edi+0x200]
	test eax, eax
	jnz BG_LoadWeaponDefInternal_150
	mov dword [esp], _cstring_weap_putaway
	call Com_FindSoundAlias
	mov [edi+0x200], eax
BG_LoadWeaponDefInternal_150:
	mov eax, [ebp-0x287c]
	mov eax, [eax+0x154]
	test eax, eax
	jnz BG_LoadWeaponDefInternal_160
	mov dword [esp], _cstring_weap_pickup
	call Com_FindSoundAlias
	mov edx, [ebp-0x287c]
	mov [edx+0x154], eax
BG_LoadWeaponDefInternal_160:
	mov ecx, [ebp-0x287c]
	mov eax, [ecx+0x15c]
	test eax, eax
	jnz BG_LoadWeaponDefInternal_170
	mov dword [esp], _cstring_weap_ammo_pickup
	call Com_FindSoundAlias
	mov ebx, [ebp-0x287c]
	mov [ebx+0x15c], eax
BG_LoadWeaponDefInternal_170:
	mov edi, [ebp-0x287c]
	mov eax, [edi+0x190]
	test eax, eax
	jnz BG_LoadWeaponDefInternal_110
	mov dword [esp], _cstring_weap_dryfire_smg
	call Com_FindSoundAlias
	mov [edi+0x190], eax
BG_LoadWeaponDefInternal_110:
	mov edx, [ebp-0x287c]
	mov eax, [edx+0x484]
	test eax, eax
	jle BG_LoadWeaponDefInternal_180
	cvtsi2ss xmm1, eax
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	movss [edx+0x7f8], xmm0
BG_LoadWeaponDefInternal_340:
	mov ebx, [ebp-0x287c]
	mov eax, [ebx+0x488]
	test eax, eax
	jle BG_LoadWeaponDefInternal_190
	cvtsi2ss xmm1, eax
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	movss [ebx+0x7fc], xmm0
BG_LoadWeaponDefInternal_330:
	pxor xmm0, xmm0
	mov eax, [ebp-0x287c]
	ucomiss xmm0, [eax+0x808]
	jae BG_LoadWeaponDefInternal_200
BG_LoadWeaponDefInternal_320:
	pxor xmm0, xmm0
	mov eax, [ebp-0x287c]
	ucomiss xmm0, [eax+0x80c]
	jae BG_LoadWeaponDefInternal_210
BG_LoadWeaponDefInternal_300:
	mov eax, [ebp-0x287c]
	movss xmm0, dword [eax+0x410]
	ucomiss xmm0, [_float_15000_00000000]
	ja BG_LoadWeaponDefInternal_220
BG_LoadWeaponDefInternal_290:
	mov edx, [ebp-0x287c]
	cmp dword [edx+0x12c], 0x2
	jz BG_LoadWeaponDefInternal_230
BG_LoadWeaponDefInternal_280:
	mov ebx, [ebp-0x287c]
	mov [esp], ebx
	call G_ParseWeaponAccurayGraphs
	test al, al
	jz BG_LoadWeaponDefInternal_240
	mov eax, [ebx+0x324]
	mov [esp], eax
	call Q_strlwr
	mov eax, [ebx+0x32c]
	mov [esp], eax
	call Q_strlwr
	jmp BG_LoadWeaponDefInternal_250
BG_LoadWeaponDefInternal_30:
	lea ecx, [ebp-0x5c]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_warning_could_no
	mov dword [esp], 0x11
	call Com_PrintWarning
	mov dword [ebp-0x287c], 0x0
	jmp BG_LoadWeaponDefInternal_250
BG_LoadWeaponDefInternal_50:
	lea eax, [ebp-0x5c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_s_does_n
	mov dword [esp], 0x11
	call Com_PrintWarning
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FCloseFile
	mov dword [ebp-0x287c], 0x0
	jmp BG_LoadWeaponDefInternal_250
BG_LoadWeaponDefInternal_230:
	cvtsi2ss xmm0, dword [edx+0x568]
	pxor xmm1, xmm1
	ucomiss xmm1, xmm0
	jb BG_LoadWeaponDefInternal_260
	mov eax, [edx+0x4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_projectile_speed
	mov dword [esp], 0x2
	call Com_Error
BG_LoadWeaponDefInternal_260:
	mov eax, [ebp-0x287c]
	movss xmm0, dword [eax+0x814]
	ucomiss xmm0, [_float_1000000000_000000_float_]
	jae BG_LoadWeaponDefInternal_270
	pxor xmm1, xmm1
	ucomiss xmm1, xmm0
	ja BG_LoadWeaponDefInternal_270
BG_LoadWeaponDefInternal_310:
	pxor xmm0, xmm0
	mov ecx, [ebp-0x287c]
	ucomiss xmm0, [ecx+0x810]
	jbe BG_LoadWeaponDefInternal_280
	mov eax, [ecx+0x4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_destabilization_
	mov dword [esp], 0x2
	call Com_Error
	jmp BG_LoadWeaponDefInternal_280
BG_LoadWeaponDefInternal_220:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0xc], 0x40cd4c00
	mov dword [esp+0x4], _cstring_enemy_crosshair_
	mov dword [esp], 0x2
	call Com_Error
	jmp BG_LoadWeaponDefInternal_290
BG_LoadWeaponDefInternal_210:
	mov dword [eax+0x80c], 0x497423f2
	jmp BG_LoadWeaponDefInternal_300
BG_LoadWeaponDefInternal_270:
	mov edx, [ebp-0x287c]
	mov eax, [edx+0x4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_destabilization_1
	mov dword [esp], 0x2
	call Com_Error
	jmp BG_LoadWeaponDefInternal_310
BG_LoadWeaponDefInternal_200:
	mov dword [eax+0x808], 0x497423f0
	jmp BG_LoadWeaponDefInternal_320
BG_LoadWeaponDefInternal_190:
	mov edi, [ebp-0x287c]
	mov dword [edi+0x7fc], 0x3b03126f
	jmp BG_LoadWeaponDefInternal_330
BG_LoadWeaponDefInternal_180:
	mov ecx, [ebp-0x287c]
	mov dword [ecx+0x7f8], 0x3b5a740e
	jmp BG_LoadWeaponDefInternal_340
BG_LoadWeaponDefInternal_120:
	mov eax, [ebx+0x20c]
	mov [ebx+0x214], eax
	jmp BG_LoadWeaponDefInternal_350


;BG_ClearSurfaceTypeSounds()
BG_ClearSurfaceTypeSounds:
	push ebp
	mov ebp, esp
	mov dword [surfaceTypeSoundListCount], 0x0
	pop ebp
	ret
	nop


;BG_GetWeaponInventoryTypeName(weapInventoryType_t)
BG_GetWeaponInventoryTypeName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax*4+szWeapInventoryTypeNames]
	pop ebp
	ret
	nop


;All cstrings:
SECTION .rdata
_cstring_null:		db 0
_cstring_none:		db "none",0
_cstring_noweaponaccu:		db "noweapon.accu",0
_cstring_bad_field_type_i:		db 15h,"Bad field type %i in %s",0ah,0
_cstring_unknown_weapon_t:		db 15h,"Unknown weapon type ",22h,"%s",22h," in ",22h,"%s",22h,0ah,0
_cstring_unknown_weapon_c:		db 15h,"Unknown weapon class ",22h,"%s",22h," in ",22h,"%s",22h,0ah,0
_cstring_unknown_weapon_o:		db 15h,"Unknown weapon overlay reticle ",22h,"%s",22h," in ",22h,"%s",22h,0ah,0
_cstring_unknown_penetrat:		db 15h,"Unknown penetration type ",22h,"%s",22h," in ",22h,"%s",22h,0ah,0
_cstring_unknown_weapon_s:		db 15h,"Unknown weapon stance ",22h,"%s",22h," in ",22h,"%s",22h,0ah,0
_cstring_unknown_projecti:		db 15h,"Unknown projectile explosion ",22h,"%s",22h," in ",22h,"%s",22h,0ah,0
_cstring_unknown_impact_t:		db 15h,"Unknown impact type ",22h,"%s",22h," in ",22h,"%s",22h,0ah,0
_cstring_unknown_offhand_:		db 15h,"Unknown offhand class ",22h,"%s",22h," in ",22h,"%s",22h,0ah,0
_cstring_unknown_playeran:		db 15h,"Unknown playerAnimType ",22h,"%s",22h," in ",22h,"%s",22h,0ah,0
_cstring_unknown_weapon_f:		db 15h,"Unknown weapon fire type ",22h,"%s",22h," in ",22h,"%s",22h,0ah,0
_cstring_unknown_ammocoun:		db 15h,"Unknown ammoCounter clip type ",22h,"%s",22h," in ",22h,"%s",22h,0ah,0
_cstring_unknown_weapon_s1:		db 15h,"Unknown weapon stickiness ",22h,"%s",22h," in ",22h,"%s",22h,0ah,0
_cstring_unknown_icon_rat:		db 15h,"Unknown icon ratio type ",22h,"%s",22h," in ",22h,"%s",22h,0ah,0
_cstring_unknown_activere:		db 15h,"Unknown activeReticleType ",22h,"%s",22h," in ",22h,"%s",22h,0ah,0
_cstring_unknown_guided_m:		db 15h,"Unknown guided missile type ",22h,"%s",22h," in ",22h,"%s",22h,0ah,0
_cstring_unknown_weapon_a:		db 15h,"Unknown weapon ads overlay interface ",22h,"%s",22h," in ",22h,"%s",22h,0ah,0
_cstring_unknown_weapon_i:		db 15h,"Unknown weapon inventory type ",22h,"%s",22h," in ",22h,"%s",22h,0ah,0
_cstring_maximum_hide_tag:		db 15h,"maximum hide tags (%s) exceeded: %i > %i",0
_cstring_notetracktosound:		db "Notetrack-to-Sound: Weapon ",27h,"%s",27h," has bad entry; notetrack ",27h,"%s",27h," doesn",27h,"t have a corresponding sound.",0ah,0
_cstring_max_notetracktos:		db 15h,"Max notetrack-to-sound mappings (%i) exceeded with entry ",22h,"%s",22h,".",0ah,0
_cstring_notetracktosound1:		db 15h,"Notetrack-to-sound: keyname ",22h,"%s",22h," is too long (length %i/%i).",0ah,0
_cstring_s_default:		db "%s_default",0
_cstring_s_s:		db "%s_%s",0
_cstring_exceeded_max_sur:		db 15h,"Exceeded MAX_SURFACE_TYPE_SOUND_LISTS (%d)",0
_cstring_mpplayeranimtype:		db "mp/playeranimtypes.txt",0
_cstring_bg_animparseanim:		db "BG_AnimParseAnimScript",0
_cstring_player_anim_type:		db 15h,"Player anim type array size exceeded",0
_cstring_couldnt_load_fil:		db 15h,"Couldn",27h,"t load file ",27h,"%s",27h,0
_cstring_weaponsss:		db "weapons/%s/%s",0
_cstring_weaponfile:		db "WEAPONFILE",0
_cstring_warning_s_is_not:		db "WARNING: ",22h,"%s",22h," is not a valid weapon file",0ah,0
_cstring_warning_s_is_too:		db "WARNING: ",22h,"%s",22h," Is too long of a weapon file to parse (fileLength = %d identifierLength = %d)",0ah,0
_cstring_defaultweapon_mp:		db "defaultweapon_mp",0
_cstring_weap_raise:		db "weap_raise",0
_cstring_weap_putaway:		db "weap_putaway",0
_cstring_weap_pickup:		db "weap_pickup",0
_cstring_weap_ammo_pickup:		db "weap_ammo_pickup",0
_cstring_weap_dryfire_smg:		db "weap_dryfire_smg_npc",0
_cstring_warning_could_no:		db "WARNING: Could not load weapon file ",27h,"%s",27h,0ah,0
_cstring_warning_s_does_n:		db "WARNING: ",22h,"%s",22h," does not appear to be a weapon file",0ah,0
_cstring_projectile_speed:		db "Projectile speed for WeapType %s must be greater than 0.0",0
_cstring_destabilization_:		db "Destabilization rate time for for WeapType %s must be non-negative",0
_cstring_enemy_crosshair_:		db "Enemy crosshair ranges should be less than %f ",0
_cstring_destabilization_1:		db "Destabilization angle for for WeapType %s must be between 0 and 45 degrees",0
_junkparse_:			db "weapon ",22h,"%s",22h," file parse error. Junk in file?"



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1
_float_15000_00000000:		dd 0x466a6000	; 15000
_float_1000000000_000000_float_:		dd 0x4e6e6b28	; 1e+09

