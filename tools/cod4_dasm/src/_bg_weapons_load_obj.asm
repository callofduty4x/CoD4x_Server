;Imports of bg_weapons_load_obj:
	extern _Z26G_ParseWeaponAccurayGraphsP9WeaponDef
	extern _Z19DB_FindXAssetHeader10XAssetTypePKc
	extern _Z26Hunk_AllocLowAlignInternalii
	extern strcpy
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z9I_stricmpPKcS0_
	extern SL_GetStringOfSize
	extern SL_ConvertToLowercase
	extern _Z9Com_ParsePPKc
	extern _Z16Com_PrintWarningiPKcz
	extern _Z21SL_GetLowercaseStringPKcj
	extern _Z21Hunk_AllocLowInternali
	extern _Z11Com_sprintfPciPKcz
	extern _Z18Com_FindSoundAliasPKc
	extern _Z21Com_SurfaceTypeToNamei
	extern _Z8I_strcmpPKcS0_
	extern _Z19BG_InitWeaponStringiPKc
	extern _Z19Com_LoadRawTextFilePKc
	extern _Z21Com_BeginParseSessionPKc
	extern _Z18Hunk_AllocInternali
	extern _Z19Com_EndParseSessionv
	extern _Z21Com_UnloadRawTextFilePKc
	extern useFastFile
	extern _Z18FS_FOpenFileByModePKcPi8fsMode_t
	extern _Z7FS_ReadPvii
	extern memset
	extern _Z13FS_FCloseFilei
	extern _Z13Info_ValidatePKc
	extern _Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E
	extern _Z8I_strlwrPc

;Exports of bg_weapons_load_obj:
	global bg_defaultWeaponDefs
	global weaponDefFields
	global weapIconRatioNames
	global ammoCounterClipNames
	global overlayInterfaceNames
	global stickinessNames
	global guidedMissileNames
	global activeReticleNames
	global g_playerAnimTypeNames
	global g_playerAnimTypeNamesCount
	global offhandClassNames
	global szProjectileExplosionNames
	global szWeapStanceNames
	global impactTypeNames
	global penetrateTypeNames
	global szWeapFireTypeNames
	global szWeapInventoryTypeNames
	global szWeapOverlayReticleNames
	global szWeapClassNames
	global szWeapTypeNames
	global _Z31BG_LoadDefaultWeaponDef_LoadObjv
	global _Z32BG_LoadDefaultWeaponDef_FastFilev
	global _Z16SetConfigString2PhPKc
	global _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci
	global _Z15SetConfigStringPPcPKc
	global _Z20BG_GetWeaponTypeName10weapType_t
	global _Z20BG_LoadWeaponStringsv
	global _Z21BG_GetWeaponClassName11weapClass_t
	global _Z22BG_LoadPlayerAnimTypesv
	global _Z23BG_LoadDefaultWeaponDefv
	global _Z24BG_LoadWeaponDefInternalPKcS0_
	global _Z25BG_ClearSurfaceTypeSoundsv
	global _Z29BG_GetWeaponInventoryTypeName19weapInventoryType_t
	global surfaceTypeSoundListCount
	global surfaceTypeSoundLists


SECTION .text


;BG_LoadDefaultWeaponDef_LoadObj()
_Z31BG_LoadDefaultWeaponDef_LoadObjv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [bg_defaultWeaponDefs], _cstring_null
	mov edx, weaponDefFields+0x8
	mov ecx, weapIconRatioNames+0x8
_Z31BG_LoadDefaultWeaponDef_LoadObjv_20:
	mov eax, [edx]
	test eax, eax
	jnz _Z31BG_LoadDefaultWeaponDef_LoadObjv_10
	mov eax, [edx-0x4]
	mov dword [eax+bg_defaultWeaponDefs], _cstring_null
_Z31BG_LoadDefaultWeaponDef_LoadObjv_10:
	add edx, 0xc
	cmp ecx, edx
	jnz _Z31BG_LoadDefaultWeaponDef_LoadObjv_20
	mov dword [bg_defaultWeaponDefs], _cstring_none
	mov dword [bg_defaultWeaponDefs+0x76c], _cstring_noweaponaccu
	mov dword [bg_defaultWeaponDefs+0x770], _cstring_noweaponaccu
	mov dword [bg_defaultWeaponDefs+0x420], 0x3fe00000
	mov dword [esp], bg_defaultWeaponDefs
	call _Z26G_ParseWeaponAccurayGraphsP9WeaponDef
	mov eax, bg_defaultWeaponDefs
	leave
	ret
	nop


;BG_LoadDefaultWeaponDef_FastFile()
_Z32BG_LoadDefaultWeaponDef_FastFilev:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], _cstring_none
	mov dword [esp], 0x17
	call _Z19DB_FindXAssetHeader10XAssetTypePKc
	leave
	ret


;SetConfigString2(unsigned char*, char const*)
_Z16SetConfigString2PhPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0xc]
	cmp byte [esi], 0x0
	jnz _Z16SetConfigString2PhPKc_10
	mov eax, [ebp+0x8]
	mov dword [eax], _cstring_null
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16SetConfigString2PhPKc_10:
	mov dword [esp+0x4], 0x1
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	not ecx
	mov [esp], ecx
	call _Z26Hunk_AllocLowAlignInternalii
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
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci:
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
	ja _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_10
	jmp dword [eax*4+_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_jumptab_0]
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_10:
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_bad_field_type_i
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	xor eax, eax
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_40:
	add esp, 0x18c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1240:
	xor edi, edi
	mov ebx, szWeapTypeNames
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_30:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_20
	add edi, 0x1
	add ebx, 0x4
	cmp edi, 0x4
	jnz _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_30
	mov ebx, 0xffffffff
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1150:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_unknown_weapon_t
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_780:
	mov ecx, [ebp+0x8]
	mov [ecx+0x12c], ebx
	mov eax, 0x1
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_40
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1250:
	xor edi, edi
	mov ebx, szWeapClassNames
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_60:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_50
	add edi, 0x1
	add ebx, 0x4
	cmp edi, 0xa
	jnz _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_60
	mov ebx, 0xffffffff
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1040:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_unknown_weapon_c
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_620:
	mov ecx, [ebp+0x8]
	mov [ecx+0x130], ebx
	mov eax, 0x1
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_40
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1260:
	xor edi, edi
	mov ebx, szWeapOverlayReticleNames
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_80:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_70
	add edi, 0x1
	add ebx, 0x4
	cmp edi, 0x2
	jnz _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_80
	mov ebx, 0xffffffff
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1230:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_unknown_weapon_o
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1030:
	mov ecx, [ebp+0x8]
	mov [ecx+0x438], ebx
	mov eax, 0x1
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_40
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1270:
	xor edi, edi
	mov ebx, penetrateTypeNames
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_100:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_90
	add edi, 0x1
	add ebx, 0x4
	cmp edi, 0x4
	jnz _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_100
	mov ebx, 0xffffffff
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1100:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_unknown_penetrat
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_820:
	mov ecx, [ebp+0x8]
	mov [ecx+0x134], ebx
	mov eax, 0x1
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_40
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1290:
	xor edi, edi
	mov ebx, szWeapStanceNames
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_120:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_110
	add edi, 0x1
	add ebx, 0x4
	cmp edi, 0x3
	jnz _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_120
	mov ebx, 0xffffffff
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1200:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_unknown_weapon_s
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_970:
	mov ecx, [ebp+0x8]
	mov [ecx+0x148], ebx
	mov eax, 0x1
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_40
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1300:
	xor edi, edi
	mov ebx, szProjectileExplosionNames
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_140:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_130
	add edi, 0x1
	add ebx, 0x4
	cmp edi, 0x7
	jnz _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_140
	mov ebx, 0xffffffff
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1080:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_unknown_projecti
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_660:
	mov ecx, [ebp+0x8]
	mov [ecx+0x588], ebx
	mov eax, 0x1
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_40
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1280:
	xor edi, edi
	mov ebx, impactTypeNames
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_160:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_150
	add edi, 0x1
	add ebx, 0x4
	cmp edi, 0x9
	jnz _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_160
	mov ebx, 0xffffffff
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1060:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_unknown_impact_t
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_640:
	mov ecx, [ebp+0x8]
	mov [ecx+0x138], ebx
	mov eax, 0x1
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_40
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1310:
	xor edi, edi
	mov ebx, offhandClassNames
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_180:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_170
	add edi, 0x1
	add ebx, 0x4
	cmp edi, 0x4
	jnz _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_180
	mov ebx, 0xffffffff
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1130:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_unknown_offhand_
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_800:
	mov ecx, [ebp+0x8]
	mov [ecx+0x144], ebx
	mov eax, 0x1
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_40
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1320:
	mov eax, [g_playerAnimTypeNamesCount]
	mov [ebp-0x174], eax
	test eax, eax
	jle _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_190
	xor edi, edi
	mov ebx, g_playerAnimTypeNames
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_210:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_200
	add edi, 0x1
	add ebx, 0x4
	cmp [ebp-0x174], edi
	jnz _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_210
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_190:
	mov edi, 0xffffffff
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_840:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_unknown_playeran
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_830:
	mov ecx, [ebp+0x8]
	mov [ecx+0x128], edi
	mov eax, 0x1
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_40
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1390:
	xor edi, edi
	mov ebx, szWeapFireTypeNames
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_230:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_220
	add edi, 0x1
	add ebx, 0x4
	cmp edi, 0x5
	jnz _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_230
	mov ebx, 0xffffffff
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1090:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_unknown_weapon_f
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_700:
	mov ecx, [ebp+0x8]
	mov [ecx+0x140], ebx
	mov eax, 0x1
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_40
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1400:
	xor edi, edi
	mov ebx, ammoCounterClipNames
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_250:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_240
	add edi, 0x1
	add ebx, 0x4
	cmp edi, 0x7
	jnz _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_250
	mov ebx, 0xffffffff
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1070:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_unknown_ammocoun
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_680:
	mov ecx, [ebp+0x8]
	mov [ecx+0x31c], ebx
	mov eax, 0x1
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_40
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1350:
	cmp byte [esi], 0x0
	jnz _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_260
	mov dword [ebp-0x170], 0x0
	mov eax, [ebp-0x170]
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_600:
	mov ecx, [ebp+0x8]
	mov [ecx+0x208], eax
	mov eax, 0x1
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_40
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1360:
	xor edi, edi
	mov ebx, stickinessNames
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_280:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_270
	add edi, 0x1
	add ebx, 0x4
	cmp edi, 0x4
	jnz _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_280
	mov ebx, 0xffffffff
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1120:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_unknown_weapon_s1
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_760:
	mov ecx, [ebp+0x8]
	mov [ecx+0x5a4], ebx
	mov eax, 0x1
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_40
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1430:
	xor edi, edi
	mov ebx, weapIconRatioNames
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_300:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_290
	add edi, 0x1
	add ebx, 0x4
	cmp edi, 0x3
	jnz _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_300
	mov ebx, 0xffffffff
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1210:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_unknown_icon_rat
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_930:
	mov ecx, [ebp+0x8]
	mov [ecx+0x51c], ebx
	mov eax, 0x1
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_40
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1440:
	xor edi, edi
	mov ebx, weapIconRatioNames
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_320:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_310
	add edi, 0x1
	add ebx, 0x4
	cmp edi, 0x3
	jnz _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_320
	mov ebx, 0xffffffff
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1160:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_unknown_icon_rat
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_890:
	mov ecx, [ebp+0x8]
	mov [ecx+0x528], ebx
	mov eax, 0x1
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_40
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1330:
	xor edi, edi
	mov ebx, activeReticleNames
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_340:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_330
	add edi, 0x1
	add ebx, 0x4
	cmp edi, 0x3
	jnz _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_340
	mov ebx, 0xffffffff
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1170:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_unknown_activere
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1010:
	mov ecx, [ebp+0x8]
	mov [ecx+0x230], ebx
	mov eax, 0x1
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_40
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1340:
	xor edi, edi
	mov ebx, guidedMissileNames
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_360:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_350
	add edi, 0x1
	add ebx, 0x4
	cmp edi, 0x4
	jnz _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_360
	mov ebx, 0xffffffff
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1140:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_unknown_guided_m
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_720:
	mov ecx, [ebp+0x8]
	mov [ecx+0x6b8], ebx
	mov eax, 0x1
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_40
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1410:
	xor edi, edi
	mov ebx, weapIconRatioNames
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_380:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_370
	add edi, 0x1
	add ebx, 0x4
	cmp edi, 0x3
	jnz _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_380
	mov ebx, 0xffffffff
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1190:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_unknown_icon_rat
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_950:
	mov ecx, [ebp+0x8]
	mov [ecx+0x310], ebx
	mov eax, 0x1
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_40
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1420:
	xor edi, edi
	mov ebx, weapIconRatioNames
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_400:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_390
	add edi, 0x1
	add ebx, 0x4
	cmp edi, 0x3
	jnz _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_400
	mov ebx, 0xffffffff
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1180:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_unknown_icon_rat
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_910:
	mov ecx, [ebp+0x8]
	mov [ecx+0x318], ebx
	mov eax, 0x1
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_40
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1370:
	xor edi, edi
	mov ebx, overlayInterfaceNames
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_420:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_410
	add edi, 0x1
	add ebx, 0x4
	cmp edi, 0x3
	jnz _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_420
	mov ebx, 0xffffffff
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1220:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_unknown_weapon_a
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_990:
	mov ecx, [ebp+0x8]
	mov [ecx+0x43c], ebx
	mov eax, 0x1
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_40
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1380:
	xor edi, edi
	mov ebx, szWeapInventoryTypeNames
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_440:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_430
	add edi, 0x1
	add ebx, 0x4
	cmp edi, 0x4
	jnz _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_440
	mov ebx, 0xffffffff
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1110:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_unknown_weapon_i
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_740:
	mov ecx, [ebp+0x8]
	mov [ecx+0x13c], ebx
	mov eax, 0x1
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_40
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1450:
	mov [ebp-0x1c], esi
	mov esi, [ebp+0x8]
	mov dword [ebp-0x178], 0x0
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_450
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_470:
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
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_450:
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call _Z9Com_ParsePPKc
	mov ebx, eax
	mov eax, [ebp-0x1c]
	test eax, eax
	jz _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_460
	cmp dword [ebp-0x178], 0x7
	jle _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_470
	mov dword [esp+0x10], 0x8
	mov edx, [ebp-0x178]
	mov [esp+0xc], edx
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_maximum_hide_tag
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_470
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1460:
	mov [ebp-0x1c], esi
	mov byte [ebp-0x5c], 0x0
	xor esi, esi
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_540:
	lea edx, [ebp-0x1c]
	mov [esp], edx
	call _Z9Com_ParsePPKc
	mov ebx, eax
	mov edi, [ebp-0x1c]
	test edi, edi
	jz _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_480
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_520:
	cmp esi, 0xf
	jg _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_490
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_550:
	cmp byte [ebp-0x5c], 0x0
	jnz _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_500
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	lea eax, [ecx-0x1]
	cmp eax, 0x3e
	jg _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_510
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_560:
	mov [esp+0x4], ebx
	lea eax, [ebp-0x5c]
	mov [esp], eax
	call strcpy
	lea edx, [ebp-0x1c]
	mov [esp], edx
	call _Z9Com_ParsePPKc
	mov ebx, eax
	mov edi, [ebp-0x1c]
	test edi, edi
	jnz _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_520
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_480:
	cmp byte [ebp-0x5c], 0x0
	jnz _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_530
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_460:
	mov eax, 0x1
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_40
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_530:
	lea eax, [ebp-0x5c]
	mov [esp+0xc], eax
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_notetracktosound
	mov dword [esp], 0x0
	call _Z16Com_PrintWarningiPKcz
	mov eax, 0x1
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_40
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_500:
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x5c]
	mov [esp], eax
	call _Z21SL_GetLowercaseStringPKcj
	mov ecx, [ebp+0x8]
	mov [ecx+esi*2+0xe8], ax
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call _Z21SL_GetLowercaseStringPKcj
	mov edx, [ebp+0x8]
	mov [edx+esi*2+0x108], ax
	add esi, 0x1
	mov byte [ebp-0x5c], 0x0
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_540
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_490:
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x10
	mov dword [esp+0x4], _cstring_max_notetracktos
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_550
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_510:
	mov dword [esp+0x10], 0x3f
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_notetracktosound1
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_560
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_260:
	mov eax, [surfaceTypeSoundListCount]
	test eax, eax
	jg _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_570
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_860:
	cmp eax, 0x10
	jz _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_580
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1050:
	mov dword [esp], 0x74
	call _Z21Hunk_AllocLowInternali
	mov [ebp-0x170], eax
	mov [esp+0xc], esi
	mov dword [esp+0x8], _cstring_s_default
	mov dword [esp+0x4], 0x100
	lea eax, [ebp-0x15c]
	mov [esp], eax
	call _Z11Com_sprintfPciPKcz
	lea edx, [ebp-0x15c]
	mov [esp], edx
	call _Z18Com_FindSoundAliasPKc
	mov [ebp-0x16c], eax
	xor edi, edi
	mov ebx, [ebp-0x170]
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_590:
	mov [esp], edi
	call _Z21Com_SurfaceTypeToNamei
	mov [esp+0x10], eax
	mov [esp+0xc], esi
	mov dword [esp+0x8], _cstring_s_s
	mov dword [esp+0x4], 0x100
	lea ecx, [ebp-0x15c]
	mov [esp], ecx
	call _Z11Com_sprintfPciPKcz
	lea eax, [ebp-0x15c]
	mov [esp], eax
	call _Z18Com_FindSoundAliasPKc
	test eax, eax
	cmovz eax, [ebp-0x16c]
	mov [ebx], eax
	add edi, 0x1
	add ebx, 0x4
	cmp edi, 0x1d
	jnz _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_590
	mov ebx, [surfaceTypeSoundListCount]
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	not ecx
	mov [esp], ecx
	call _Z21Hunk_AllocLowInternali
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
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_600
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_50:
	test edi, edi
	js _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_610
	mov ebx, edi
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_620
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_150:
	test edi, edi
	js _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_630
	mov ebx, edi
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_640
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_130:
	test edi, edi
	js _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_650
	mov ebx, edi
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_660
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_240:
	test edi, edi
	js _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_670
	mov ebx, edi
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_680
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_220:
	test edi, edi
	js _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_690
	mov ebx, edi
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_700
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_350:
	test edi, edi
	js _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_710
	mov ebx, edi
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_720
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_430:
	test edi, edi
	js _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_730
	mov ebx, edi
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_740
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_270:
	test edi, edi
	js _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_750
	mov ebx, edi
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_760
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_20:
	test edi, edi
	js _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_770
	mov ebx, edi
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_780
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_170:
	test edi, edi
	js _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_790
	mov ebx, edi
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_800
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_90:
	test edi, edi
	js _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_810
	mov ebx, edi
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_820
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_200:
	test edi, edi
	jns _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_830
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_840
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_570:
	xor edi, edi
	mov ebx, surfaceTypeSoundLists
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_850
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_870:
	add edi, 0x1
	mov eax, [surfaceTypeSoundListCount]
	add ebx, 0x8
	cmp edi, eax
	jge _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_860
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_850:
	mov [esp+0x4], esi
	mov eax, [ebx]
	mov [esp], eax
	call _Z8I_strcmpPKcS0_
	test eax, eax
	jnz _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_870
	mov edi, [edi*8+surfaceTypeSoundLists+0x4]
	mov [ebp-0x170], edi
	mov eax, edi
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_600
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_310:
	test edi, edi
	js _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_880
	mov ebx, edi
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_890
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_390:
	test edi, edi
	js _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_900
	mov ebx, edi
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_910
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_290:
	test edi, edi
	js _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_920
	mov ebx, edi
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_930
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_370:
	test edi, edi
	js _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_940
	mov ebx, edi
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_950
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_110:
	test edi, edi
	js _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_960
	mov ebx, edi
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_970
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_410:
	test edi, edi
	js _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_980
	mov ebx, edi
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_990
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_330:
	test edi, edi
	js _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1000
	mov ebx, edi
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1010
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_70:
	test edi, edi
	js _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1020
	mov ebx, edi
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1030
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_610:
	mov ebx, edi
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1040
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_580:
	mov dword [esp+0x8], 0x10
	mov dword [esp+0x4], _cstring_exceeded_max_sur
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1050
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_630:
	mov ebx, edi
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1060
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_670:
	mov ebx, edi
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1070
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_650:
	mov ebx, edi
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1080
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_690:
	mov ebx, edi
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1090
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_810:
	mov ebx, edi
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1100
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_730:
	mov ebx, edi
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1110
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_750:
	mov ebx, edi
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1120
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_790:
	mov ebx, edi
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1130
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_710:
	mov ebx, edi
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1140
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_770:
	mov ebx, edi
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1150
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_880:
	mov ebx, edi
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1160
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1000:
	mov ebx, edi
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1170
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_900:
	mov ebx, edi
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1180
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_940:
	mov ebx, edi
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1190
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_960:
	mov ebx, edi
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1200
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_920:
	mov ebx, edi
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1210
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_980:
	mov ebx, edi
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1220
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1020:
	mov ebx, edi
	jmp _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1230
	add [eax], al
	
	
_Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_jumptab_0:
	dd _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1240
	dd _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1250
	dd _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1260
	dd _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1270
	dd _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1280
	dd _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1290
	dd _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1300
	dd _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1310
	dd _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1320
	dd _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1330
	dd _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1340
	dd _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1350
	dd _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1360
	dd _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1370
	dd _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1380
	dd _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1390
	dd _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1400
	dd _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1410
	dd _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1420
	dd _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1430
	dd _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1440
	dd _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1450
	dd _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci_1460


;SetConfigString(char**, char const*)
_Z15SetConfigStringPPcPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0xc]
	cmp byte [esi], 0x0
	jnz _Z15SetConfigStringPPcPKc_10
	mov eax, [ebp+0x8]
	mov dword [eax], _cstring_null
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15SetConfigStringPPcPKc_10:
	mov dword [esp+0x4], 0x1
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	not ecx
	mov [esp], ecx
	call _Z26Hunk_AllocLowAlignInternalii
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
_Z20BG_GetWeaponTypeName10weapType_t:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax*4+szWeapTypeNames]
	pop ebp
	ret
	nop


;BG_LoadWeaponStrings()
_Z20BG_LoadWeaponStringsv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [g_playerAnimTypeNamesCount]
	test eax, eax
	jnz _Z20BG_LoadWeaponStringsv_10
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z20BG_LoadWeaponStringsv_10:
	xor ebx, ebx
	mov esi, g_playerAnimTypeNames
_Z20BG_LoadWeaponStringsv_20:
	mov eax, [esi]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z19BG_InitWeaponStringiPKc
	add ebx, 0x1
	add esi, 0x4
	cmp [g_playerAnimTypeNamesCount], ebx
	ja _Z20BG_LoadWeaponStringsv_20
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;BG_GetWeaponClassName(weapClass_t)
_Z21BG_GetWeaponClassName11weapClass_t:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax*4+szWeapClassNames]
	pop ebp
	ret
	nop


;BG_LoadPlayerAnimTypes()
_Z22BG_LoadPlayerAnimTypesv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov dword [g_playerAnimTypeNamesCount], 0x0
	mov dword [esp], _cstring_mpplayeranimtype
	call _Z19Com_LoadRawTextFilePKc
	mov [ebp-0x2c], eax
	test eax, eax
	jz _Z22BG_LoadPlayerAnimTypesv_10
_Z22BG_LoadPlayerAnimTypesv_50:
	mov [ebp-0x1c], eax
	mov dword [esp], _cstring_bg_animparseanim
	call _Z21Com_BeginParseSessionPKc
	jmp _Z22BG_LoadPlayerAnimTypesv_20
_Z22BG_LoadPlayerAnimTypesv_40:
	mov ebx, [g_playerAnimTypeNamesCount]
	cld
	mov ecx, 0xffffffff
	mov edi, esi
	xor eax, eax
	repne scasb
	not ecx
	mov [esp], ecx
	call _Z18Hunk_AllocInternali
	mov [ebx*4+g_playerAnimTypeNames], eax
	mov [esp+0x4], esi
	mov eax, [g_playerAnimTypeNamesCount]
	mov eax, [eax*4+g_playerAnimTypeNames]
	mov [esp], eax
	call strcpy
	add dword [g_playerAnimTypeNamesCount], 0x1
_Z22BG_LoadPlayerAnimTypesv_20:
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call _Z9Com_ParsePPKc
	mov esi, eax
	test eax, eax
	jz _Z22BG_LoadPlayerAnimTypesv_30
	cmp byte [eax], 0x0
	jz _Z22BG_LoadPlayerAnimTypesv_30
	cmp dword [g_playerAnimTypeNamesCount], 0x3f
	jbe _Z22BG_LoadPlayerAnimTypesv_40
	mov dword [esp+0x4], _cstring_player_anim_type
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z22BG_LoadPlayerAnimTypesv_40
_Z22BG_LoadPlayerAnimTypesv_30:
	call _Z19Com_EndParseSessionv
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call _Z21Com_UnloadRawTextFilePKc
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22BG_LoadPlayerAnimTypesv_10:
	mov dword [esp+0x8], _cstring_mpplayeranimtype
	mov dword [esp+0x4], _cstring_couldnt_load_fil
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov eax, [ebp-0x2c]
	jmp _Z22BG_LoadPlayerAnimTypesv_50


;BG_LoadDefaultWeaponDef()
_Z23BG_LoadDefaultWeaponDefv:
	push ebp
	mov ebp, esp
	mov eax, useFastFile
	mov eax, [eax]
	mov ecx, _Z32BG_LoadDefaultWeaponDef_FastFilev
	cmp byte [eax+0xc], 0x0
	mov eax, _Z31BG_LoadDefaultWeaponDef_LoadObjv
	cmovz ecx, eax
	pop ebp
	jmp ecx


;BG_LoadWeaponDefInternal(char const*, char const*)
_Z24BG_LoadWeaponDefInternalPKcS0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x289c
	mov dword [esp], 0x878
	call _Z21Hunk_AllocLowInternali
	mov [ebp-0x287c], eax
	mov dword [eax], _cstring_null
	mov edx, weaponDefFields+0x8
	mov ecx, weapIconRatioNames+0x8
_Z24BG_LoadWeaponDefInternalPKcS0__20:
	mov ebx, [edx]
	test ebx, ebx
	jnz _Z24BG_LoadWeaponDefInternalPKcS0__10
	mov eax, [edx-0x4]
	mov ebx, [ebp-0x287c]
	mov dword [eax+ebx], _cstring_null
_Z24BG_LoadWeaponDefInternalPKcS0__10:
	add edx, 0xc
	cmp ecx, edx
	jnz _Z24BG_LoadWeaponDefInternalPKcS0__20
	mov edi, [ebp+0xc]
	mov [esp+0x10], edi
	mov eax, [ebp+0x8]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_weaponsss
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
	mov [ebp-0x286c], eax
	test eax, eax
	js _Z24BG_LoadWeaponDefInternalPKcS0__30
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xa
	lea ebx, [ebp-0x285c]
	mov [esp], ebx
	call _Z7FS_ReadPvii
	mov byte [ebp-0x2852], 0x0
	mov dword [ebp-0x2880], _cstring_weaponfile
	mov ebx, 0xa
	cld
	lea esi, [ebp-0x285c]
	mov edi, _cstring_weaponfile
	mov ecx, ebx
	repe cmpsb
	mov eax, 0x0
	jz _Z24BG_LoadWeaponDefInternalPKcS0__40
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_Z24BG_LoadWeaponDefInternalPKcS0__40:
	test eax, eax
	jnz _Z24BG_LoadWeaponDefInternalPKcS0__50
	mov ebx, [ebp-0x286c]
	sub ebx, 0xa
	cmp ebx, 0x27ff
	ja _Z24BG_LoadWeaponDefInternalPKcS0__60
	mov dword [esp+0x8], 0x2800
	mov dword [esp+0x4], 0x0
	lea edi, [ebp-0x285c]
	mov [esp], edi
	call memset
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], edi
	call _Z7FS_ReadPvii
	mov byte [ebp+ebx-0x285c], 0x0
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z13FS_FCloseFilei
	mov [esp], edi
	call _Z13Info_ValidatePKc
	test eax, eax
	jz _Z24BG_LoadWeaponDefInternalPKcS0__70
	mov ebx, [ebp+0xc]
	cmp byte [ebx], 0x0
	jnz _Z24BG_LoadWeaponDefInternalPKcS0__80
	mov edi, [ebp-0x287c]
	mov dword [edi], _cstring_null
_Z24BG_LoadWeaponDefInternalPKcS0__100:
	mov dword [esp+0x18], _Z16SetConfigString2PhPKc
	mov dword [esp+0x14], _Z34BG_ParseWeaponDefSpecificFieldTypePhPKci
	mov dword [esp+0x10], 0x23
	lea ecx, [ebp-0x285c]
	mov [esp+0xc], ecx
	mov dword [esp+0x8], 0x1f6
	mov dword [esp+0x4], weaponDefFields
	mov ebx, [ebp-0x287c]
	mov [esp], ebx
	call _Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E
	test eax, eax
	jnz _Z24BG_LoadWeaponDefInternalPKcS0__90
_Z24BG_LoadWeaponDefInternalPKcS0__240:
	mov dword [ebp-0x287c], 0x0
_Z24BG_LoadWeaponDefInternalPKcS0__250:
	mov eax, [ebp-0x287c]
	add esp, 0x289c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24BG_LoadWeaponDefInternalPKcS0__80:
	mov dword [esp+0x4], 0x1
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp+0xc]
	repne scasb
	not ecx
	mov [esp], ecx
	call _Z26Hunk_AllocLowAlignInternalii
	mov ebx, eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call strcpy
	mov edx, [ebp-0x287c]
	mov [edx], ebx
	jmp _Z24BG_LoadWeaponDefInternalPKcS0__100
_Z24BG_LoadWeaponDefInternalPKcS0__70:
	lea ecx, [ebp-0x5c]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_warning_s_is_not
	mov dword [esp], 0x11
	call _Z16Com_PrintWarningiPKcz
	mov dword [ebp-0x287c], 0x0
	mov eax, [ebp-0x287c]
	add esp, 0x289c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24BG_LoadWeaponDefInternalPKcS0__60:
	mov dword [esp+0x10], 0xa
	mov edx, [ebp-0x286c]
	mov [esp+0xc], edx
	lea ecx, [ebp-0x5c]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_warning_s_is_too
	mov dword [esp], 0x11
	call _Z16Com_PrintWarningiPKcz
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z13FS_FCloseFilei
	mov dword [ebp-0x287c], 0x0
	mov eax, [ebp-0x287c]
	add esp, 0x289c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24BG_LoadWeaponDefInternalPKcS0__90:
	mov dword [esp+0x4], _cstring_defaultweapon_mp
	mov edi, [ebp+0xc]
	mov [esp], edi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z24BG_LoadWeaponDefInternalPKcS0__110
	mov ecx, [ebx+0x214]
	test ecx, ecx
	jz _Z24BG_LoadWeaponDefInternalPKcS0__120
_Z24BG_LoadWeaponDefInternalPKcS0__350:
	mov eax, [ebp-0x287c]
	mov edx, [eax+0x218]
	test edx, edx
	jnz _Z24BG_LoadWeaponDefInternalPKcS0__130
	mov edx, eax
	mov eax, [eax+0x210]
	mov [edx+0x218], eax
_Z24BG_LoadWeaponDefInternalPKcS0__130:
	mov ecx, [ebp-0x287c]
	mov eax, [ecx+0x1f0]
	test eax, eax
	jnz _Z24BG_LoadWeaponDefInternalPKcS0__140
	mov dword [esp], _cstring_weap_raise
	call _Z18Com_FindSoundAliasPKc
	mov ebx, [ebp-0x287c]
	mov [ebx+0x1f0], eax
_Z24BG_LoadWeaponDefInternalPKcS0__140:
	mov edi, [ebp-0x287c]
	mov eax, [edi+0x200]
	test eax, eax
	jnz _Z24BG_LoadWeaponDefInternalPKcS0__150
	mov dword [esp], _cstring_weap_putaway
	call _Z18Com_FindSoundAliasPKc
	mov [edi+0x200], eax
_Z24BG_LoadWeaponDefInternalPKcS0__150:
	mov eax, [ebp-0x287c]
	mov eax, [eax+0x154]
	test eax, eax
	jnz _Z24BG_LoadWeaponDefInternalPKcS0__160
	mov dword [esp], _cstring_weap_pickup
	call _Z18Com_FindSoundAliasPKc
	mov edx, [ebp-0x287c]
	mov [edx+0x154], eax
_Z24BG_LoadWeaponDefInternalPKcS0__160:
	mov ecx, [ebp-0x287c]
	mov eax, [ecx+0x15c]
	test eax, eax
	jnz _Z24BG_LoadWeaponDefInternalPKcS0__170
	mov dword [esp], _cstring_weap_ammo_pickup
	call _Z18Com_FindSoundAliasPKc
	mov ebx, [ebp-0x287c]
	mov [ebx+0x15c], eax
_Z24BG_LoadWeaponDefInternalPKcS0__170:
	mov edi, [ebp-0x287c]
	mov eax, [edi+0x190]
	test eax, eax
	jnz _Z24BG_LoadWeaponDefInternalPKcS0__110
	mov dword [esp], _cstring_weap_dryfire_smg
	call _Z18Com_FindSoundAliasPKc
	mov [edi+0x190], eax
_Z24BG_LoadWeaponDefInternalPKcS0__110:
	mov edx, [ebp-0x287c]
	mov eax, [edx+0x484]
	test eax, eax
	jle _Z24BG_LoadWeaponDefInternalPKcS0__180
	cvtsi2ss xmm1, eax
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	movss [edx+0x7f8], xmm0
_Z24BG_LoadWeaponDefInternalPKcS0__340:
	mov ebx, [ebp-0x287c]
	mov eax, [ebx+0x488]
	test eax, eax
	jle _Z24BG_LoadWeaponDefInternalPKcS0__190
	cvtsi2ss xmm1, eax
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	movss [ebx+0x7fc], xmm0
_Z24BG_LoadWeaponDefInternalPKcS0__330:
	pxor xmm0, xmm0
	mov eax, [ebp-0x287c]
	ucomiss xmm0, [eax+0x808]
	jae _Z24BG_LoadWeaponDefInternalPKcS0__200
_Z24BG_LoadWeaponDefInternalPKcS0__320:
	pxor xmm0, xmm0
	mov eax, [ebp-0x287c]
	ucomiss xmm0, [eax+0x80c]
	jae _Z24BG_LoadWeaponDefInternalPKcS0__210
_Z24BG_LoadWeaponDefInternalPKcS0__300:
	mov eax, [ebp-0x287c]
	movss xmm0, dword [eax+0x410]
	ucomiss xmm0, [_float_15000_00000000]
	ja _Z24BG_LoadWeaponDefInternalPKcS0__220
_Z24BG_LoadWeaponDefInternalPKcS0__290:
	mov edx, [ebp-0x287c]
	cmp dword [edx+0x12c], 0x2
	jz _Z24BG_LoadWeaponDefInternalPKcS0__230
_Z24BG_LoadWeaponDefInternalPKcS0__280:
	mov ebx, [ebp-0x287c]
	mov [esp], ebx
	call _Z26G_ParseWeaponAccurayGraphsP9WeaponDef
	test al, al
	jz _Z24BG_LoadWeaponDefInternalPKcS0__240
	mov eax, [ebx+0x324]
	mov [esp], eax
	call _Z8I_strlwrPc
	mov eax, [ebx+0x32c]
	mov [esp], eax
	call _Z8I_strlwrPc
	jmp _Z24BG_LoadWeaponDefInternalPKcS0__250
_Z24BG_LoadWeaponDefInternalPKcS0__30:
	lea ecx, [ebp-0x5c]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_warning_could_no
	mov dword [esp], 0x11
	call _Z16Com_PrintWarningiPKcz
	mov dword [ebp-0x287c], 0x0
	jmp _Z24BG_LoadWeaponDefInternalPKcS0__250
_Z24BG_LoadWeaponDefInternalPKcS0__50:
	lea eax, [ebp-0x5c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_s_does_n
	mov dword [esp], 0x11
	call _Z16Com_PrintWarningiPKcz
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z13FS_FCloseFilei
	mov dword [ebp-0x287c], 0x0
	jmp _Z24BG_LoadWeaponDefInternalPKcS0__250
_Z24BG_LoadWeaponDefInternalPKcS0__230:
	cvtsi2ss xmm0, dword [edx+0x568]
	pxor xmm1, xmm1
	ucomiss xmm1, xmm0
	jb _Z24BG_LoadWeaponDefInternalPKcS0__260
	mov eax, [edx+0x4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_projectile_speed
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z24BG_LoadWeaponDefInternalPKcS0__260:
	mov eax, [ebp-0x287c]
	movss xmm0, dword [eax+0x814]
	ucomiss xmm0, [_float_1000000000_00000000]
	jae _Z24BG_LoadWeaponDefInternalPKcS0__270
	pxor xmm1, xmm1
	ucomiss xmm1, xmm0
	ja _Z24BG_LoadWeaponDefInternalPKcS0__270
_Z24BG_LoadWeaponDefInternalPKcS0__310:
	pxor xmm0, xmm0
	mov ecx, [ebp-0x287c]
	ucomiss xmm0, [ecx+0x810]
	jbe _Z24BG_LoadWeaponDefInternalPKcS0__280
	mov eax, [ecx+0x4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_destabilization_
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z24BG_LoadWeaponDefInternalPKcS0__280
_Z24BG_LoadWeaponDefInternalPKcS0__220:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0xc], 0x40cd4c00
	mov dword [esp+0x4], _cstring_enemy_crosshair_
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z24BG_LoadWeaponDefInternalPKcS0__290
_Z24BG_LoadWeaponDefInternalPKcS0__210:
	mov dword [eax+0x80c], 0x497423f2
	jmp _Z24BG_LoadWeaponDefInternalPKcS0__300
_Z24BG_LoadWeaponDefInternalPKcS0__270:
	mov edx, [ebp-0x287c]
	mov eax, [edx+0x4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_destabilization_1
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z24BG_LoadWeaponDefInternalPKcS0__310
_Z24BG_LoadWeaponDefInternalPKcS0__200:
	mov dword [eax+0x808], 0x497423f0
	jmp _Z24BG_LoadWeaponDefInternalPKcS0__320
_Z24BG_LoadWeaponDefInternalPKcS0__190:
	mov edi, [ebp-0x287c]
	mov dword [edi+0x7fc], 0x3b03126f
	jmp _Z24BG_LoadWeaponDefInternalPKcS0__330
_Z24BG_LoadWeaponDefInternalPKcS0__180:
	mov ecx, [ebp-0x287c]
	mov dword [ecx+0x7f8], 0x3b5a740e
	jmp _Z24BG_LoadWeaponDefInternalPKcS0__340
_Z24BG_LoadWeaponDefInternalPKcS0__120:
	mov eax, [ebx+0x20c]
	mov [ebx+0x214], eax
	jmp _Z24BG_LoadWeaponDefInternalPKcS0__350


;BG_ClearSurfaceTypeSounds()
_Z25BG_ClearSurfaceTypeSoundsv:
	push ebp
	mov ebp, esp
	mov dword [surfaceTypeSoundListCount], 0x0
	pop ebp
	ret
	nop


;BG_GetWeaponInventoryTypeName(weapInventoryType_t)
_Z29BG_GetWeaponInventoryTypeName19weapInventoryType_t:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax*4+szWeapInventoryTypeNames]
	pop ebp
	ret
	nop


;Initialized global or static variables of bg_weapons_load_obj:
SECTION .data
weaponDefFields: dd _cstring_displayname, 0x4, 0x0, _cstring_aioverlaydescrip, 0x8, 0x0, _cstring_modename, 0xd4, 0x0, _cstring_playeranimtype, 0x128, 0x14, _cstring_gunmodel, 0xc, 0x9, _cstring_gunmodel2, 0x10, 0x9, _cstring_gunmodel3, 0x14, 0x9, _cstring_gunmodel4, 0x18, 0x9, _cstring_gunmodel5, 0x1c, 0x9, _cstring_gunmodel6, 0x20, 0x9, _cstring_gunmodel7, 0x24, 0x9, _cstring_gunmodel8, 0x28, 0x9, _cstring_gunmodel9, 0x2c, 0x9, _cstring_gunmodel10, 0x30, 0x9, _cstring_gunmodel11, 0x34, 0x9, _cstring_gunmodel12, 0x38, 0x9, _cstring_gunmodel13, 0x3c, 0x9, _cstring_gunmodel14, 0x40, 0x9, _cstring_gunmodel15, 0x44, 0x9, _cstring_gunmodel16, 0x48, 0x9, _cstring_handmodel, 0x4c, 0x9, _cstring_hidetags, 0xd8, 0x21, _cstring_notetracksoundma, 0xe8, 0x22, _cstring_idleanim, 0x54, 0x0, _cstring_emptyidleanim, 0x58, 0x0, _cstring_fireanim, 0x5c, 0x0, _cstring_holdfireanim, 0x60, 0x0, _cstring_lastshotanim, 0x64, 0x0, _cstring_detonateanim, 0xb4, 0x0, _cstring_rechamberanim, 0x68, 0x0, _cstring_meleeanim, 0x6c, 0x0, _cstring_meleechargeanim, 0x70, 0x0, _cstring_reloadanim, 0x74, 0x0, _cstring_reloademptyanim, 0x78, 0x0, _cstring_reloadstartanim, 0x7c, 0x0, _cstring_reloadendanim, 0x80, 0x0, _cstring_raiseanim, 0x84, 0x0, _cstring_dropanim, 0x8c, 0x0, _cstring_firstraiseanim, 0x88, 0x0, _cstring_altraiseanim, 0x90, 0x0, _cstring_altdropanim, 0x94, 0x0, _cstring_quickraiseanim, 0x98, 0x0, _cstring_quickdropanim, 0x9c, 0x0, _cstring_emptyraiseanim, 0xa0, 0x0, _cstring_emptydropanim, 0xa4, 0x0, _cstring_sprintinanim, 0xa8, 0x0, _cstring_sprintloopanim, 0xac, 0x0, _cstring_sprintoutanim, 0xb0, 0x0, _cstring_nightvisionweara, 0xb8, 0x0, _cstring_nightvisionremov, 0xbc, 0x0, _cstring_adsfireanim, 0xc0, 0x0, _cstring_adslastshotanim, 0xc4, 0x0, _cstring_adsrechamberanim, 0xc8, 0x0, _cstring_adsupanim, 0xcc, 0x0, _cstring_adsdownanim, 0xd0, 0x0, _cstring_script, 0x7f4, 0x0, _cstring_weapontype, 0x12c, 0xc, _cstring_weaponclass, 0x130, 0xd, _cstring_penetratetype, 0x134, 0xf, _cstring_impacttype, 0x138, 0x10, _cstring_inventorytype, 0x13c, 0x1a, _cstring_firetype, 0x140, 0x1b, _cstring_offhandclass, 0x144, 0x13, _cstring_viewflasheffect, 0x14c, 0x8, _cstring_worldflasheffect, 0x150, 0x8, _cstring_pickupsound, 0x154, 0xb, _cstring_pickupsoundplaye, 0x158, 0xb, _cstring_ammopickupsound, 0x15c, 0xb, _cstring_ammopickupsoundp, 0x160, 0xb, _cstring_projectilesound, 0x164, 0xb, _cstring_pullbacksound, 0x168, 0xb, _cstring_pullbacksoundpla, 0x16c, 0xb, _cstring_firesound, 0x170, 0xb, _cstring_firesoundplayer, 0x174, 0xb, _cstring_loopfiresound, 0x178, 0xb, _cstring_loopfiresoundpla, 0x17c, 0xb, _cstring_stopfiresound, 0x180, 0xb, _cstring_stopfiresoundpla, 0x184, 0xb, _cstring_lastshotsound, 0x188, 0xb, _cstring_lastshotsoundpla, 0x18c, 0xb, _cstring_emptyfiresound, 0x190, 0xb, _cstring_emptyfiresoundpl, 0x194, 0xb, _cstring_meleeswipesound, 0x198, 0xb, _cstring_meleeswipesoundp, 0x19c, 0xb, _cstring_meleehitsound, 0x1a0, 0xb, _cstring_meleemisssound, 0x1a4, 0xb, _cstring_rechambersound, 0x1a8, 0xb, _cstring_rechambersoundpl, 0x1ac, 0xb, _cstring_reloadsound, 0x1b0, 0xb, _cstring_reloadsoundplaye, 0x1b4, 0xb, _cstring_reloademptysound, 0x1b8, 0xb, _cstring_reloademptysound1, 0x1bc, 0xb, _cstring_reloadstartsound, 0x1c0, 0xb, _cstring_reloadstartsound1, 0x1c4, 0xb, _cstring_reloadendsound, 0x1c8, 0xb, _cstring_reloadendsoundpl, 0x1cc, 0xb, _cstring_detonatesound, 0x1d0, 0xb, _cstring_detonatesoundpla, 0x1d4, 0xb, _cstring_nightvisionwears, 0x1d8, 0xb, _cstring_nightvisionwears1, 0x1dc, 0xb, _cstring_nightvisionremov1, 0x1e0, 0xb, _cstring_nightvisionremov2, 0x1e4, 0xb, _cstring_raisesound, 0x1f0, 0xb, _cstring_raisesoundplayer, 0x1f4, 0xb, _cstring_firstraisesound, 0x1f8, 0xb, _cstring_firstraisesoundp, 0x1fc, 0xb, _cstring_altswitchsound, 0x1e8, 0xb, _cstring_altswitchsoundpl, 0x1ec, 0xb, _cstring_putawaysound, 0x200, 0xb, _cstring_putawaysoundplay, 0x204, 0xb, _cstring_bouncesound, 0x208, 0x17, _cstring_viewshellejectef, 0x20c, 0x8, _cstring_worldshellejecte, 0x210, 0x8, _cstring_viewlastshotejec, 0x214, 0x8, _cstring_worldlastshoteje, 0x218, 0x8, _cstring_reticlecenter, 0x21c, 0xa, _cstring_reticleside, 0x220, 0xa, _cstring_reticlecentersiz, 0x224, 0x4, _cstring_reticlesidesize, 0x228, 0x4, _cstring_reticleminofs, 0x22c, 0x4, _cstring_activereticletyp, 0x230, 0x15, _cstring_standmovef, 0x234, 0x6, _cstring_standmover, 0x238, 0x6, _cstring_standmoveu, 0x23c, 0x6, _cstring_standrotp, 0x240, 0x6, _cstring_standroty, 0x244, 0x6, _cstring_standrotr, 0x248, 0x6, _cstring_duckedofsf, 0x24c, 0x6, _cstring_duckedofsr, 0x250, 0x6, _cstring_duckedofsu, 0x254, 0x6, _cstring_duckedmovef, 0x258, 0x6, _cstring_duckedmover, 0x25c, 0x6, _cstring_duckedmoveu, 0x260, 0x6, _cstring_duckedrotp, 0x264, 0x6, _cstring_duckedroty, 0x268, 0x6, _cstring_duckedrotr, 0x26c, 0x6, _cstring_proneofsf, 0x270, 0x6, _cstring_proneofsr, 0x274, 0x6, _cstring_proneofsu, 0x278, 0x6, _cstring_pronemovef, 0x27c, 0x6, _cstring_pronemover, 0x280, 0x6, _cstring_pronemoveu, 0x284, 0x6, _cstring_pronerotp, 0x288, 0x6, _cstring_proneroty, 0x28c, 0x6, _cstring_pronerotr, 0x290, 0x6, _cstring_posmoverate, 0x294, 0x6, _cstring_pospronemoverate, 0x298, 0x6, _cstring_standmoveminspee, 0x29c, 0x6, _cstring_duckedmoveminspe, 0x2a0, 0x6, _cstring_pronemoveminspee, 0x2a4, 0x6, _cstring_posrotrate, 0x2a8, 0x6, _cstring_pospronerotrate, 0x2ac, 0x6, _cstring_standrotminspeed, 0x2b0, 0x6, _cstring_duckedrotminspee, 0x2b4, 0x6, _cstring_pronerotminspeed, 0x2b8, 0x6, _cstring_worldmodel, 0x2bc, 0x9, _cstring_worldmodel2, 0x2c0, 0x9, _cstring_worldmodel3, 0x2c4, 0x9, _cstring_worldmodel4, 0x2c8, 0x9, _cstring_worldmodel5, 0x2cc, 0x9, _cstring_worldmodel6, 0x2d0, 0x9, _cstring_worldmodel7, 0x2d4, 0x9, _cstring_worldmodel8, 0x2d8, 0x9, _cstring_worldmodel9, 0x2dc, 0x9, _cstring_worldmodel10, 0x2e0, 0x9, _cstring_worldmodel11, 0x2e4, 0x9, _cstring_worldmodel12, 0x2e8, 0x9, _cstring_worldmodel13, 0x2ec, 0x9, _cstring_worldmodel14, 0x2f0, 0x9, _cstring_worldmodel15, 0x2f4, 0x9, _cstring_worldmodel16, 0x2f8, 0x9, _cstring_worldclipmodel, 0x2fc, 0x9, _cstring_rocketmodel, 0x300, 0x9, _cstring_knifemodel, 0x304, 0x9, _cstring_worldknifemodel, 0x308, 0x9, _cstring_hudicon, 0x30c, 0xa, _cstring_hudiconratio, 0x310, 0x1d, _cstring_ammocountericon, 0x314, 0xa, _cstring_ammocountericonr, 0x318, 0x1e, _cstring_ammocounterclip, 0x31c, 0x1c, _cstring_startammo, 0x320, 0x4, _cstring_ammoname, 0x324, 0x0, _cstring_clipname, 0x32c, 0x0, _cstring_maxammo, 0x334, 0x4, _cstring_clipsize, 0x338, 0x4, _cstring_shotcount, 0x33c, 0x4, _cstring_sharedammocapnam, 0x340, 0x0, _cstring_sharedammocap, 0x348, 0x4, _cstring_damage, 0x34c, 0x4, _cstring_playerdamage, 0x350, 0x4, _cstring_meleedamage, 0x354, 0x4, _cstring_mindamage, 0x800, 0x4, _cstring_minplayerdamage, 0x804, 0x4, _cstring_maxdamagerange, 0x808, 0x6, _cstring_mindamagerange, 0x80c, 0x6, _cstring_destabilizationr, 0x810, 0x6, _cstring_destabilizationc, 0x814, 0x6, _cstring_destabilizedista, 0x818, 0x4, _cstring_firedelay, 0x35c, 0x7, _cstring_meleedelay, 0x360, 0x7, _cstring_meleechargedelay, 0x364, 0x7, _cstring_firetime, 0x36c, 0x7, _cstring_rechambertime, 0x370, 0x7, _cstring_rechamberbolttim, 0x374, 0x7, _cstring_holdfiretime, 0x378, 0x7, _cstring_detonatetime, 0x37c, 0x7, _cstring_detonatedelay, 0x368, 0x7, _cstring_meleetime, 0x380, 0x7, _cstring_meleechargetime, 0x384, 0x7, _cstring_reloadtime, 0x388, 0x7, _cstring_reloadshowrocket, 0x38c, 0x7, _cstring_reloademptytime, 0x390, 0x7, _cstring_reloadaddtime, 0x394, 0x7, _cstring_reloadstarttime, 0x398, 0x7, _cstring_reloadstartaddti, 0x39c, 0x7, _cstring_reloadendtime, 0x3a0, 0x7, _cstring_droptime, 0x3a4, 0x7, _cstring_raisetime, 0x3a8, 0x7, _cstring_altdroptime, 0x3ac, 0x7, _cstring_altraisetime, 0x3b0, 0x7, _cstring_quickdroptime, 0x3b4, 0x7, _cstring_quickraisetime, 0x3b8, 0x7, _cstring_firstraisetime, 0x3bc, 0x7, _cstring_emptyraisetime, 0x3c0, 0x7, _cstring_emptydroptime, 0x3c4, 0x7, _cstring_sprintintime, 0x3c8, 0x7, _cstring_sprintlooptime, 0x3cc, 0x7, _cstring_sprintouttime, 0x3d0, 0x7, _cstring_nightvisionweart, 0x3d4, 0x7, _cstring_nightvisionweart1, 0x3d8, 0x7, _cstring_nightvisionweart2, 0x3dc, 0x7, _cstring_nightvisionremov3, 0x3e0, 0x7, _cstring_nightvisionremov4, 0x3e4, 0x7, _cstring_nightvisionremov5, 0x3e8, 0x7, _cstring_fusetime, 0x3ec, 0x7, _cstring_aifusetime, 0x3f0, 0x7, _cstring_requirelockontof, 0x3f4, 0x5, _cstring_noadswhenmagempt, 0x3f8, 0x5, _cstring_avoiddropcleanup, 0x3fc, 0x5, _cstring_autoaimrange, 0x400, 0x6, _cstring_aimassistrange, 0x404, 0x6, _cstring_aimassistrangead, 0x408, 0x6, _cstring_aimpadding, 0x40c, 0x6, _cstring_enemycrosshairra, 0x410, 0x6, _cstring_crosshaircolorch, 0x414, 0x5, _cstring_movespeedscale, 0x418, 0x6, _cstring_adsmovespeedscal, 0x41c, 0x6, _cstring_sprintdurationsc, 0x420, 0x6, _cstring_idlecrouchfactor, 0x49c, 0x6, _cstring_idlepronefactor, 0x4a0, 0x6, _cstring_gunmaxpitch, 0x4a4, 0x6, _cstring_gunmaxyaw, 0x4a8, 0x6, _cstring_swaymaxangle, 0x4ac, 0x6, _cstring_swaylerpspeed, 0x4b0, 0x6, _cstring_swaypitchscale, 0x4b4, 0x6, _cstring_swayyawscale, 0x4b8, 0x6, _cstring_swayhorizscale, 0x4bc, 0x6, _cstring_swayvertscale, 0x4c0, 0x6, _cstring_swayshellshocksc, 0x4c4, 0x6, _cstring_adsswaymaxangle, 0x4c8, 0x6, _cstring_adsswaylerpspeed, 0x4cc, 0x6, _cstring_adsswaypitchscal, 0x4d0, 0x6, _cstring_adsswayyawscale, 0x4d4, 0x6, _cstring_adsswayhorizscal, 0x4d8, 0x6, _cstring_adsswayvertscale, 0x4dc, 0x6, _cstring_riflebullet, 0x4e0, 0x5, _cstring_armorpiercing, 0x4e4, 0x5, _cstring_boltaction, 0x4e8, 0x5, _cstring_aimdownsight, 0x4ec, 0x5, _cstring_rechamberwhilead, 0x4f0, 0x5, _cstring_adsviewerrormin, 0x4f4, 0x6, _cstring_adsviewerrormax, 0x4f8, 0x6, _cstring_cliponly, 0x500, 0x5, _cstring_cookoffhold, 0x4fc, 0x5, _cstring_adsfire, 0x504, 0x5, _cstring_cancelautoholste, 0x508, 0x5, _cstring_suppressammorese, 0x50c, 0x5, _cstring_enhanced, 0x510, 0x5, _cstring_lasersightduring, 0x514, 0x5, _cstring_killicon, 0x518, 0xa, _cstring_killiconratio, 0x51c, 0x1f, _cstring_flipkillicon, 0x520, 0x5, _cstring_dpadicon, 0x524, 0xa, _cstring_dpadiconratio, 0x528, 0x20, _cstring_nopartialreload, 0x52c, 0x5, _cstring_segmentedreload, 0x530, 0x5, _cstring_reloadammoadd, 0x534, 0x4, _cstring_reloadstartadd, 0x538, 0x4, _cstring_altweapon, 0x53c, 0x0, _cstring_dropammomin, 0x544, 0x4, _cstring_dropammomax, 0x548, 0x4, _cstring_blocksprone, 0x54c, 0x5, _cstring_silenced, 0x550, 0x5, _cstring_explosionradius, 0x554, 0x4, _cstring_explosionradiusm, 0x558, 0x4, _cstring_explosioninnerda, 0x55c, 0x4, _cstring_explosionouterda, 0x560, 0x4, _cstring_damageconeangle, 0x564, 0x6, _cstring_projectilespeed, 0x568, 0x4, _cstring_projectilespeedu, 0x56c, 0x4, _cstring_projectilespeedf, 0x570, 0x4, _cstring_projectileactiva, 0x574, 0x4, _cstring_projectilelifeti, 0x578, 0x6, _cstring_timetoaccelerate, 0x57c, 0x6, _cstring_projectilecurvat, 0x580, 0x6, _cstring_projectilemodel, 0x584, 0x9, _cstring_projexplosiontyp, 0x588, 0x12, _cstring_projexplosioneff, 0x58c, 0x8, _cstring_projexplosioneff1, 0x590, 0x5, _cstring_projexplosionsou, 0x598, 0xb, _cstring_projdudeffect, 0x594, 0x8, _cstring_projdudsound, 0x59c, 0xb, _cstring_projimpactexplod, 0x5a0, 0x5, _cstring_stickiness, 0x5a4, 0x18, _cstring_hasdetonator, 0x5a8, 0x5, _cstring_timeddetonation, 0x5ac, 0x5, _cstring_rotate, 0x5b0, 0x5, _cstring_holdbuttontothro, 0x5b4, 0x5, _cstring_freezemovementwh, 0x5b8, 0x5, _cstring_lowammowarningth, 0x5bc, 0x6, _cstring_paralleldefaultb, 0x5c0, 0x6, _cstring_parallelbarkboun, 0x5c4, 0x6, _cstring_parallelbrickbou, 0x5c8, 0x6, _cstring_parallelcarpetbo, 0x5cc, 0x6, _cstring_parallelclothbou, 0x5d0, 0x6, _cstring_parallelconcrete, 0x5d4, 0x6, _cstring_paralleldirtboun, 0x5d8, 0x6, _cstring_parallelfleshbou, 0x5dc, 0x6, _cstring_parallelfoliageb, 0x5e0, 0x6, _cstring_parallelglassbou, 0x5e4, 0x6, _cstring_parallelgrassbou, 0x5e8, 0x6, _cstring_parallelgravelbo, 0x5ec, 0x6, _cstring_parallelicebounc, 0x5f0, 0x6, _cstring_parallelmetalbou, 0x5f4, 0x6, _cstring_parallelmudbounc, 0x5f8, 0x6, _cstring_parallelpaperbou, 0x5fc, 0x6, _cstring_parallelplasterb, 0x600, 0x6, _cstring_parallelrockboun, 0x604, 0x6, _cstring_parallelsandboun, 0x608, 0x6, _cstring_parallelsnowboun, 0x60c, 0x6, _cstring_parallelwaterbou, 0x610, 0x6, _cstring_parallelwoodboun, 0x614, 0x6, _cstring_parallelasphaltb, 0x618, 0x6, _cstring_parallelceramicb, 0x61c, 0x6, _cstring_parallelplasticb, 0x620, 0x6, _cstring_parallelrubberbo, 0x624, 0x6, _cstring_parallelcushionb, 0x628, 0x6, _cstring_parallelfruitbou, 0x62c, 0x6, _cstring_parallelpaintedm, 0x630, 0x6, _cstring_perpendiculardef, 0x634, 0x6, _cstring_perpendicularbar, 0x638, 0x6, _cstring_perpendicularbri, 0x63c, 0x6, _cstring_perpendicularcar, 0x640, 0x6, _cstring_perpendicularclo, 0x644, 0x6, _cstring_perpendicularcon, 0x648, 0x6, _cstring_perpendiculardir, 0x64c, 0x6, _cstring_perpendicularfle, 0x650, 0x6, _cstring_perpendicularfol, 0x654, 0x6, _cstring_perpendiculargla, 0x658, 0x6, _cstring_perpendiculargra, 0x65c, 0x6, _cstring_perpendiculargra1, 0x660, 0x6, _cstring_perpendicularice, 0x664, 0x6, _cstring_perpendicularmet, 0x668, 0x6, _cstring_perpendicularmud, 0x66c, 0x6, _cstring_perpendicularpap, 0x670, 0x6, _cstring_perpendicularpla, 0x674, 0x6, _cstring_perpendicularroc, 0x678, 0x6, _cstring_perpendicularsan, 0x67c, 0x6, _cstring_perpendicularsno, 0x680, 0x6, _cstring_perpendicularwat, 0x684, 0x6, _cstring_perpendicularwoo, 0x688, 0x6, _cstring_perpendicularasp, 0x68c, 0x6, _cstring_perpendicularcer, 0x61c, 0x6, _cstring_perpendicularpla1, 0x620, 0x6, _cstring_perpendicularrub, 0x624, 0x6, _cstring_perpendicularcus, 0x69c, 0x6, _cstring_perpendicularfru, 0x6a0, 0x6, _cstring_perpendicularpai, 0x6a4, 0x6, _cstring_projtraileffect, 0x6a8, 0x8, _cstring_projectilered, 0x6ac, 0x6, _cstring_projectilegreen, 0x6b0, 0x6, _cstring_projectileblue, 0x6b4, 0x6, _cstring_guidedmissiletyp, 0x6b8, 0x16, _cstring_maxsteeringaccel, 0x6bc, 0x6, _cstring_projignitiondela, 0x6c0, 0x4, _cstring_projignitioneffe, 0x6c4, 0x8, _cstring_projignitionsoun, 0x6c8, 0xb, _cstring_adstransintime, 0x484, 0x7, _cstring_adstransouttime, 0x488, 0x7, _cstring_adsidleamount, 0x48c, 0x6, _cstring_adsidlespeed, 0x494, 0x6, _cstring_adszoomfov, 0x424, 0x6, _cstring_adszoominfrac, 0x428, 0x6, _cstring_adszoomoutfrac, 0x42c, 0x6, _cstring_adsoverlayshader, 0x430, 0xa, _cstring_adsoverlayshader1, 0x434, 0xa, _cstring_adsoverlayreticl, 0x438, 0xe, _cstring_adsoverlayinterf, 0x43c, 0x19, _cstring_adsoverlaywidth, 0x440, 0x6, _cstring_adsoverlayheight, 0x444, 0x6, _cstring_adsbobfactor, 0x448, 0x6, _cstring_adsviewbobmult, 0x44c, 0x6, _cstring_adsaimpitch, 0x6cc, 0x6, _cstring_adscrosshairinfr, 0x6d0, 0x6, _cstring_adscrosshairoutf, 0x6d4, 0x6, _cstring_adsreloadtransti, 0x794, 0x7, _cstring_adsgunkickreduce, 0x6d8, 0x4, _cstring_adsgunkickreduce1, 0x6dc, 0x6, _cstring_adsgunkickpitchm, 0x6e0, 0x6, _cstring_adsgunkickpitchm1, 0x6e4, 0x6, _cstring_adsgunkickyawmin, 0x6e8, 0x6, _cstring_adsgunkickyawmax, 0x6ec, 0x6, _cstring_adsgunkickaccel, 0x6f0, 0x6, _cstring_adsgunkickspeedm, 0x6f4, 0x6, _cstring_adsgunkickspeedd, 0x6f8, 0x6, _cstring_adsgunkickstatic, 0x6fc, 0x6, _cstring_adsviewkickpitch, 0x700, 0x6, _cstring_adsviewkickpitch1, 0x704, 0x6, _cstring_adsviewkickyawmi, 0x708, 0x6, _cstring_adsviewkickyawma, 0x70c, 0x6, _cstring_adsviewkickcente, 0x710, 0x6, _cstring_adsspread, 0x71c, 0x6, _cstring_guidedmissiletyp, 0x6b8, 0x16, _cstring_hipspreadstandmi, 0x450, 0x6, _cstring_hipspreadduckedm, 0x454, 0x6, _cstring_hipspreadpronemi, 0x458, 0x6, _cstring_hipspreadmax, 0x45c, 0x6, _cstring_hipspreadduckedm1, 0x460, 0x6, _cstring_hipspreadpronema, 0x464, 0x6, _cstring_hipspreaddecayra, 0x468, 0x6, _cstring_hipspreadfireadd, 0x46c, 0x6, _cstring_hipspreadturnadd, 0x470, 0x6, _cstring_hipspreadmoveadd, 0x474, 0x6, _cstring_hipspreadduckedd, 0x478, 0x6, _cstring_hipspreadpronede, 0x47c, 0x6, _cstring_hipreticlesidepo, 0x480, 0x6, _cstring_hipidleamount, 0x490, 0x6, _cstring_hipidlespeed, 0x498, 0x6, _cstring_hipgunkickreduce, 0x720, 0x4, _cstring_hipgunkickreduce1, 0x724, 0x6, _cstring_hipgunkickpitchm, 0x728, 0x6, _cstring_hipgunkickpitchm1, 0x72c, 0x6, _cstring_hipgunkickyawmin, 0x730, 0x6, _cstring_hipgunkickyawmax, 0x734, 0x6, _cstring_hipgunkickaccel, 0x738, 0x6, _cstring_hipgunkickspeedm, 0x73c, 0x6, _cstring_hipgunkickspeedd, 0x740, 0x6, _cstring_hipgunkickstatic, 0x744, 0x6, _cstring_hipviewkickpitch, 0x748, 0x6, _cstring_hipviewkickpitch1, 0x74c, 0x6, _cstring_hipviewkickyawmi, 0x750, 0x6, _cstring_hipviewkickyawma, 0x754, 0x6, _cstring_hipviewkickcente, 0x758, 0x6, _cstring_leftarc, 0x798, 0x6, _cstring_rightarc, 0x79c, 0x6, _cstring_toparc, 0x7a0, 0x6, _cstring_bottomarc, 0x7a4, 0x6, _cstring_accuracy, 0x7a8, 0x6, _cstring_aispread, 0x7ac, 0x6, _cstring_playerspread, 0x7b0, 0x6, _cstring_maxvertturnspeed, 0x7bc, 0x6, _cstring_maxhorturnspeed, 0x7c0, 0x6, _cstring_minvertturnspeed, 0x7b4, 0x6, _cstring_minhorturnspeed, 0x7b8, 0x6, _cstring_pitchconvergence, 0x7c4, 0x6, _cstring_yawconvergenceti, 0x7c8, 0x6, _cstring_suppressiontime, 0x7cc, 0x6, _cstring_maxrange, 0x7d0, 0x6, _cstring_animhorrotateinc, 0x7d4, 0x6, _cstring_playerpositiondi, 0x7d8, 0x6, _cstring_stance, 0x148, 0x11, _cstring_usehintstring, 0x7dc, 0x0, _cstring_drophintstring, 0x7e0, 0x0, _cstring_horizviewjitter, 0x7ec, 0x6, _cstring_vertviewjitter, 0x7f0, 0x6, _cstring_fightdist, 0x764, 0x6, _cstring_maxdist, 0x768, 0x6, _cstring_aivsaiaccuracygr, 0x76c, 0x0, _cstring_aivsplayeraccura, 0x770, 0x0, _cstring_locnone, 0x81c, 0x6, _cstring_lochelmet, 0x820, 0x6, _cstring_lochead, 0x824, 0x6, _cstring_locneck, 0x828, 0x6, _cstring_loctorsoupper, 0x82c, 0x6, _cstring_loctorsolower, 0x830, 0x6, _cstring_locrightarmupper, 0x834, 0x6, _cstring_locrightarmlower, 0x83c, 0x6, _cstring_locrighthand, 0x844, 0x6, _cstring_locleftarmupper, 0x838, 0x6, _cstring_locleftarmlower, 0x840, 0x6, _cstring_loclefthand, 0x848, 0x6, _cstring_locrightlegupper, 0x84c, 0x6, _cstring_locrightleglower, 0x854, 0x6, _cstring_locrightfoot, 0x85c, 0x6, _cstring_locleftlegupper, 0x850, 0x6, _cstring_locleftleglower, 0x858, 0x6, _cstring_locleftfoot, 0x860, 0x6, _cstring_locgun, 0x864, 0x6, _cstring_firerumble, 0x868, 0x0, _cstring_meleeimpactrumbl, 0x86c, 0x0, _cstring_adsdofstart, 0x870, 0x6, _cstring_adsdofend, 0x874, 0x6
weapIconRatioNames: dd _cstring_11, _cstring_21, _cstring_41
ammoCounterClipNames: dd _cstring_none1, _cstring_magazine, _cstring_shortmagazine, _cstring_shotgun, _cstring_rocket, _cstring_beltfed, _cstring_altweapon1
overlayInterfaceNames: dd _cstring_none1, _cstring_javelin, _cstring_turret_scope
stickinessNames: dd _cstring_dont_stick, _cstring_stick_to_all, _cstring_stick_to_ground, _cstring_stick_to_ground_
guidedMissileNames: dd _cstring_none1, _cstring_sidewinder, _cstring_hellfire, _cstring_javelin
activeReticleNames: dd _cstring_none1, _cstring_piponastick, _cstring_bouncing_diamond
offhandClassNames: dd _cstring_none1, _cstring_frag_grenade, _cstring_smoke_grenade, _cstring_flash_grenade
szProjectileExplosionNames: dd _cstring_grenade, _cstring_rocket1, _cstring_flashbang, _cstring_none, _cstring_dud, _cstring_smoke, _cstring_heavy_explosive
szWeapStanceNames: dd _cstring_stand, _cstring_duck, _cstring_prone
impactTypeNames: dd _cstring_none, _cstring_bullet_small, _cstring_bullet_large, _cstring_bullet_ap, _cstring_shotgun1, _cstring_grenade_bounce, _cstring_grenade_explode, _cstring_rocket_explode, _cstring_projectile_dud
penetrateTypeNames: dd _cstring_none, _cstring_small, _cstring_medium, _cstring_large
szWeapFireTypeNames: dd _cstring_full_auto, _cstring_single_shot, _cstring_2round_burst, _cstring_3round_burst, _cstring_4round_burst
szWeapInventoryTypeNames: dd _cstring_primary, _cstring_offhand, _cstring_item, _cstring_altmode
szWeapOverlayReticleNames: dd _cstring_none, _cstring_crosshair
szWeapClassNames: dd _cstring_rifle, _cstring_mg, _cstring_smg, _cstring_spread, _cstring_pistol, _cstring_grenade, _cstring_rocketlauncher, _cstring_turret, _cstring_nonplayer, _cstring_item
szWeapTypeNames: dd _cstring_bullet, _cstring_grenade, _cstring_projectile, _cstring_binoculars, 0x0, 0x0


;Initialized constant data of bg_weapons_load_obj:
SECTION .rdata


;Zero initialized global or static variables of bg_weapons_load_obj:
SECTION .bss
bg_defaultWeaponDefs: resb 0x880
g_playerAnimTypeNames: resb 0x100
g_playerAnimTypeNamesCount: resb 0x80
surfaceTypeSoundListCount: resb 0x1c
surfaceTypeSoundLists: resb 0xe0


;All cstrings:
SECTION .rdata
_cstring_null:		db 0
_cstring_none:		db "none",0
_cstring_noweaponaccu:		db "noweapon.accu",0
_cstring_bad_field_type_i:		db 015h,"Bad field type %i in %s",0ah,0
_cstring_unknown_weapon_t:		db 015h,"Unknown weapon type ",22h,"%s",22h," in ",22h,"%s",22h,0ah,0
_cstring_unknown_weapon_c:		db 015h,"Unknown weapon class ",22h,"%s",22h," in ",22h,"%s",22h,0ah,0
_cstring_unknown_weapon_o:		db 015h,"Unknown weapon overlay reticle ",22h,"%s",22h," in ",22h,"%s",22h,0ah,0
_cstring_unknown_penetrat:		db 015h,"Unknown penetration type ",22h,"%s",22h," in ",22h,"%s",22h,0ah,0
_cstring_unknown_weapon_s:		db 015h,"Unknown weapon stance ",22h,"%s",22h," in ",22h,"%s",22h,0ah,0
_cstring_unknown_projecti:		db 015h,"Unknown projectile explosion ",22h,"%s",22h," in ",22h,"%s",22h,0ah,0
_cstring_unknown_impact_t:		db 015h,"Unknown impact type ",22h,"%s",22h," in ",22h,"%s",22h,0ah,0
_cstring_unknown_offhand_:		db 015h,"Unknown offhand class ",22h,"%s",22h," in ",22h,"%s",22h,0ah,0
_cstring_unknown_playeran:		db 015h,"Unknown playerAnimType ",22h,"%s",22h," in ",22h,"%s",22h,0ah,0
_cstring_unknown_weapon_f:		db 015h,"Unknown weapon fire type ",22h,"%s",22h," in ",22h,"%s",22h,0ah,0
_cstring_unknown_ammocoun:		db 015h,"Unknown ammoCounter clip type ",22h,"%s",22h," in ",22h,"%s",22h,0ah,0
_cstring_unknown_weapon_s1:		db 015h,"Unknown weapon stickiness ",22h,"%s",22h," in ",22h,"%s",22h,0ah,0
_cstring_unknown_icon_rat:		db 015h,"Unknown icon ratio type ",22h,"%s",22h," in ",22h,"%s",22h,0ah,0
_cstring_unknown_activere:		db 015h,"Unknown activeReticleType ",22h,"%s",22h," in ",22h,"%s",22h,0ah,0
_cstring_unknown_guided_m:		db 015h,"Unknown guided missile type ",22h,"%s",22h," in ",22h,"%s",22h,0ah,0
_cstring_unknown_weapon_a:		db 015h,"Unknown weapon ads overlay interface ",22h,"%s",22h," in ",22h,"%s",22h,0ah,0
_cstring_unknown_weapon_i:		db 015h,"Unknown weapon inventory type ",22h,"%s",22h," in ",22h,"%s",22h,0ah,0
_cstring_maximum_hide_tag:		db 015h,"maximum hide tags (%s) exceeded: %i > %i",0
_cstring_notetracktosound:		db "Notetrack-to-Sound: Weapon ",27h,"%s",27h," has bad entry; notetrack ",27h,"%s",27h," doesn",27h,"t have a corresponding sound.",0ah,0
_cstring_max_notetracktos:		db 015h,"Max notetrack-to-sound mappings (%i) exceeded with entry ",22h,"%s",22h,".",0ah,0
_cstring_notetracktosound1:		db 015h,"Notetrack-to-sound: keyname ",22h,"%s",22h," is too long (length %i/%i).",0ah,0
_cstring_s_default:		db "%s_default",0
_cstring_s_s:		db "%s_%s",0
_cstring_exceeded_max_sur:		db 015h,"Exceeded MAX_SURFACE_TYPE_SOUND_LISTS (%d)",0
_cstring_mpplayeranimtype:		db "mp/playeranimtypes.txt",0
_cstring_bg_animparseanim:		db "BG_AnimParseAnimScript",0
_cstring_player_anim_type:		db 015h,"Player anim type array size exceeded",0
_cstring_couldnt_load_fil:		db 015h,"Couldn",27h,"t load file ",27h,"%s",27h,0
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
_cstring_displayname:		db "displayName",0
_cstring_aioverlaydescrip:		db "AIOverlayDescription",0
_cstring_modename:		db "modeName",0
_cstring_playeranimtype:		db "playerAnimType",0
_cstring_gunmodel:		db "gunModel",0
_cstring_gunmodel2:		db "gunModel2",0
_cstring_gunmodel3:		db "gunModel3",0
_cstring_gunmodel4:		db "gunModel4",0
_cstring_gunmodel5:		db "gunModel5",0
_cstring_gunmodel6:		db "gunModel6",0
_cstring_gunmodel7:		db "gunModel7",0
_cstring_gunmodel8:		db "gunModel8",0
_cstring_gunmodel9:		db "gunModel9",0
_cstring_gunmodel10:		db "gunModel10",0
_cstring_gunmodel11:		db "gunModel11",0
_cstring_gunmodel12:		db "gunModel12",0
_cstring_gunmodel13:		db "gunModel13",0
_cstring_gunmodel14:		db "gunModel14",0
_cstring_gunmodel15:		db "gunModel15",0
_cstring_gunmodel16:		db "gunModel16",0
_cstring_handmodel:		db "handModel",0
_cstring_hidetags:		db "hideTags",0
_cstring_notetracksoundma:		db "notetrackSoundMap",0
_cstring_idleanim:		db "idleAnim",0
_cstring_emptyidleanim:		db "emptyIdleAnim",0
_cstring_fireanim:		db "fireAnim",0
_cstring_holdfireanim:		db "holdFireAnim",0
_cstring_lastshotanim:		db "lastShotAnim",0
_cstring_detonateanim:		db "detonateAnim",0
_cstring_rechamberanim:		db "rechamberAnim",0
_cstring_meleeanim:		db "meleeAnim",0
_cstring_meleechargeanim:		db "meleeChargeAnim",0
_cstring_reloadanim:		db "reloadAnim",0
_cstring_reloademptyanim:		db "reloadEmptyAnim",0
_cstring_reloadstartanim:		db "reloadStartAnim",0
_cstring_reloadendanim:		db "reloadEndAnim",0
_cstring_raiseanim:		db "raiseAnim",0
_cstring_dropanim:		db "dropAnim",0
_cstring_firstraiseanim:		db "firstRaiseAnim",0
_cstring_altraiseanim:		db "altRaiseAnim",0
_cstring_altdropanim:		db "altDropAnim",0
_cstring_quickraiseanim:		db "quickRaiseAnim",0
_cstring_quickdropanim:		db "quickDropAnim",0
_cstring_emptyraiseanim:		db "emptyRaiseAnim",0
_cstring_emptydropanim:		db "emptyDropAnim",0
_cstring_sprintinanim:		db "sprintInAnim",0
_cstring_sprintloopanim:		db "sprintLoopAnim",0
_cstring_sprintoutanim:		db "sprintOutAnim",0
_cstring_nightvisionweara:		db "nightVisionWearAnim",0
_cstring_nightvisionremov:		db "nightVisionRemoveAnim",0
_cstring_adsfireanim:		db "adsFireAnim",0
_cstring_adslastshotanim:		db "adsLastShotAnim",0
_cstring_adsrechamberanim:		db "adsRechamberAnim",0
_cstring_adsupanim:		db "adsUpAnim",0
_cstring_adsdownanim:		db "adsDownAnim",0
_cstring_script:		db "script",0
_cstring_weapontype:		db "weaponType",0
_cstring_weaponclass:		db "weaponClass",0
_cstring_penetratetype:		db "penetrateType",0
_cstring_impacttype:		db "impactType",0
_cstring_inventorytype:		db "inventoryType",0
_cstring_firetype:		db "fireType",0
_cstring_offhandclass:		db "offhandClass",0
_cstring_viewflasheffect:		db "viewFlashEffect",0
_cstring_worldflasheffect:		db "worldFlashEffect",0
_cstring_pickupsound:		db "pickupSound",0
_cstring_pickupsoundplaye:		db "pickupSoundPlayer",0
_cstring_ammopickupsound:		db "ammoPickupSound",0
_cstring_ammopickupsoundp:		db "ammoPickupSoundPlayer",0
_cstring_projectilesound:		db "projectileSound",0
_cstring_pullbacksound:		db "pullbackSound",0
_cstring_pullbacksoundpla:		db "pullbackSoundPlayer",0
_cstring_firesound:		db "fireSound",0
_cstring_firesoundplayer:		db "fireSoundPlayer",0
_cstring_loopfiresound:		db "loopFireSound",0
_cstring_loopfiresoundpla:		db "loopFireSoundPlayer",0
_cstring_stopfiresound:		db "stopFireSound",0
_cstring_stopfiresoundpla:		db "stopFireSoundPlayer",0
_cstring_lastshotsound:		db "lastShotSound",0
_cstring_lastshotsoundpla:		db "lastShotSoundPlayer",0
_cstring_emptyfiresound:		db "emptyFireSound",0
_cstring_emptyfiresoundpl:		db "emptyFireSoundPlayer",0
_cstring_meleeswipesound:		db "meleeSwipeSound",0
_cstring_meleeswipesoundp:		db "meleeSwipeSoundPlayer",0
_cstring_meleehitsound:		db "meleeHitSound",0
_cstring_meleemisssound:		db "meleeMissSound",0
_cstring_rechambersound:		db "rechamberSound",0
_cstring_rechambersoundpl:		db "rechamberSoundPlayer",0
_cstring_reloadsound:		db "reloadSound",0
_cstring_reloadsoundplaye:		db "reloadSoundPlayer",0
_cstring_reloademptysound:		db "reloadEmptySound",0
_cstring_reloademptysound1:		db "reloadEmptySoundPlayer",0
_cstring_reloadstartsound:		db "reloadStartSound",0
_cstring_reloadstartsound1:		db "reloadStartSoundPlayer",0
_cstring_reloadendsound:		db "reloadEndSound",0
_cstring_reloadendsoundpl:		db "reloadEndSoundPlayer",0
_cstring_detonatesound:		db "detonateSound",0
_cstring_detonatesoundpla:		db "detonateSoundPlayer",0
_cstring_nightvisionwears:		db "nightVisionWearSound",0
_cstring_nightvisionwears1:		db "nightVisionWearSoundPlayer",0
_cstring_nightvisionremov1:		db "nightVisionRemoveSound",0
_cstring_nightvisionremov2:		db "nightVisionRemoveSoundPlayer",0
_cstring_raisesound:		db "raiseSound",0
_cstring_raisesoundplayer:		db "raiseSoundPlayer",0
_cstring_firstraisesound:		db "firstRaiseSound",0
_cstring_firstraisesoundp:		db "firstRaiseSoundPlayer",0
_cstring_altswitchsound:		db "altSwitchSound",0
_cstring_altswitchsoundpl:		db "altSwitchSoundPlayer",0
_cstring_putawaysound:		db "putawaySound",0
_cstring_putawaysoundplay:		db "putawaySoundPlayer",0
_cstring_bouncesound:		db "bounceSound",0
_cstring_viewshellejectef:		db "viewShellEjectEffect",0
_cstring_worldshellejecte:		db "worldShellEjectEffect",0
_cstring_viewlastshotejec:		db "viewLastShotEjectEffect",0
_cstring_worldlastshoteje:		db "worldLastShotEjectEffect",0
_cstring_reticlecenter:		db "reticleCenter",0
_cstring_reticleside:		db "reticleSide",0
_cstring_reticlecentersiz:		db "reticleCenterSize",0
_cstring_reticlesidesize:		db "reticleSideSize",0
_cstring_reticleminofs:		db "reticleMinOfs",0
_cstring_activereticletyp:		db "activeReticleType",0
_cstring_standmovef:		db "standMoveF",0
_cstring_standmover:		db "standMoveR",0
_cstring_standmoveu:		db "standMoveU",0
_cstring_standrotp:		db "standRotP",0
_cstring_standroty:		db "standRotY",0
_cstring_standrotr:		db "standRotR",0
_cstring_duckedofsf:		db "duckedOfsF",0
_cstring_duckedofsr:		db "duckedOfsR",0
_cstring_duckedofsu:		db "duckedOfsU",0
_cstring_duckedmovef:		db "duckedMoveF",0
_cstring_duckedmover:		db "duckedMoveR",0
_cstring_duckedmoveu:		db "duckedMoveU",0
_cstring_duckedrotp:		db "duckedRotP",0
_cstring_duckedroty:		db "duckedRotY",0
_cstring_duckedrotr:		db "duckedRotR",0
_cstring_proneofsf:		db "proneOfsF",0
_cstring_proneofsr:		db "proneOfsR",0
_cstring_proneofsu:		db "proneOfsU",0
_cstring_pronemovef:		db "proneMoveF",0
_cstring_pronemover:		db "proneMoveR",0
_cstring_pronemoveu:		db "proneMoveU",0
_cstring_pronerotp:		db "proneRotP",0
_cstring_proneroty:		db "proneRotY",0
_cstring_pronerotr:		db "proneRotR",0
_cstring_posmoverate:		db "posMoveRate",0
_cstring_pospronemoverate:		db "posProneMoveRate",0
_cstring_standmoveminspee:		db "standMoveMinSpeed",0
_cstring_duckedmoveminspe:		db "duckedMoveMinSpeed",0
_cstring_pronemoveminspee:		db "proneMoveMinSpeed",0
_cstring_posrotrate:		db "posRotRate",0
_cstring_pospronerotrate:		db "posProneRotRate",0
_cstring_standrotminspeed:		db "standRotMinSpeed",0
_cstring_duckedrotminspee:		db "duckedRotMinSpeed",0
_cstring_pronerotminspeed:		db "proneRotMinSpeed",0
_cstring_worldmodel:		db "worldModel",0
_cstring_worldmodel2:		db "worldModel2",0
_cstring_worldmodel3:		db "worldModel3",0
_cstring_worldmodel4:		db "worldModel4",0
_cstring_worldmodel5:		db "worldModel5",0
_cstring_worldmodel6:		db "worldModel6",0
_cstring_worldmodel7:		db "worldModel7",0
_cstring_worldmodel8:		db "worldModel8",0
_cstring_worldmodel9:		db "worldModel9",0
_cstring_worldmodel10:		db "worldModel10",0
_cstring_worldmodel11:		db "worldModel11",0
_cstring_worldmodel12:		db "worldModel12",0
_cstring_worldmodel13:		db "worldModel13",0
_cstring_worldmodel14:		db "worldModel14",0
_cstring_worldmodel15:		db "worldModel15",0
_cstring_worldmodel16:		db "worldModel16",0
_cstring_worldclipmodel:		db "worldClipModel",0
_cstring_rocketmodel:		db "rocketModel",0
_cstring_knifemodel:		db "knifeModel",0
_cstring_worldknifemodel:		db "worldKnifeModel",0
_cstring_hudicon:		db "hudIcon",0
_cstring_hudiconratio:		db "hudIconRatio",0
_cstring_ammocountericon:		db "ammoCounterIcon",0
_cstring_ammocountericonr:		db "ammoCounterIconRatio",0
_cstring_ammocounterclip:		db "ammoCounterClip",0
_cstring_startammo:		db "startAmmo",0
_cstring_ammoname:		db "ammoName",0
_cstring_clipname:		db "clipName",0
_cstring_maxammo:		db "maxAmmo",0
_cstring_clipsize:		db "clipSize",0
_cstring_shotcount:		db "shotCount",0
_cstring_sharedammocapnam:		db "sharedAmmoCapName",0
_cstring_sharedammocap:		db "sharedAmmoCap",0
_cstring_damage:		db "damage",0
_cstring_playerdamage:		db "playerDamage",0
_cstring_meleedamage:		db "meleeDamage",0
_cstring_mindamage:		db "minDamage",0
_cstring_minplayerdamage:		db "minPlayerDamage",0
_cstring_maxdamagerange:		db "maxDamageRange",0
_cstring_mindamagerange:		db "minDamageRange",0
_cstring_destabilizationr:		db "destabilizationRateTime",0
_cstring_destabilizationc:		db "destabilizationCurvatureMax",0
_cstring_destabilizedista:		db "destabilizeDistance",0
_cstring_firedelay:		db "fireDelay",0
_cstring_meleedelay:		db "meleeDelay",0
_cstring_meleechargedelay:		db "meleeChargeDelay",0
_cstring_firetime:		db "fireTime",0
_cstring_rechambertime:		db "rechamberTime",0
_cstring_rechamberbolttim:		db "rechamberBoltTime",0
_cstring_holdfiretime:		db "holdFireTime",0
_cstring_detonatetime:		db "detonateTime",0
_cstring_detonatedelay:		db "detonateDelay",0
_cstring_meleetime:		db "meleeTime",0
_cstring_meleechargetime:		db "meleeChargeTime",0
_cstring_reloadtime:		db "reloadTime",0
_cstring_reloadshowrocket:		db "reloadShowRocketTime",0
_cstring_reloademptytime:		db "reloadEmptyTime",0
_cstring_reloadaddtime:		db "reloadAddTime",0
_cstring_reloadstarttime:		db "reloadStartTime",0
_cstring_reloadstartaddti:		db "reloadStartAddTime",0
_cstring_reloadendtime:		db "reloadEndTime",0
_cstring_droptime:		db "dropTime",0
_cstring_raisetime:		db "raiseTime",0
_cstring_altdroptime:		db "altDropTime",0
_cstring_altraisetime:		db "altRaiseTime",0
_cstring_quickdroptime:		db "quickDropTime",0
_cstring_quickraisetime:		db "quickRaiseTime",0
_cstring_firstraisetime:		db "firstRaiseTime",0
_cstring_emptyraisetime:		db "emptyRaiseTime",0
_cstring_emptydroptime:		db "emptyDropTime",0
_cstring_sprintintime:		db "sprintInTime",0
_cstring_sprintlooptime:		db "sprintLoopTime",0
_cstring_sprintouttime:		db "sprintOutTime",0
_cstring_nightvisionweart:		db "nightVisionWearTime",0
_cstring_nightvisionweart1:		db "nightVisionWearTimeFadeOutEnd",0
_cstring_nightvisionweart2:		db "nightVisionWearTimePowerUp",0
_cstring_nightvisionremov3:		db "nightVisionRemoveTime",0
_cstring_nightvisionremov4:		db "nightVisionRemoveTimePowerDown",0
_cstring_nightvisionremov5:		db "nightVisionRemoveTimeFadeInStart",0
_cstring_fusetime:		db "fuseTime",0
_cstring_aifusetime:		db "aifuseTime",0
_cstring_requirelockontof:		db "requireLockonToFire",0
_cstring_noadswhenmagempt:		db "noAdsWhenMagEmpty",0
_cstring_avoiddropcleanup:		db "avoidDropCleanup",0
_cstring_autoaimrange:		db "autoAimRange",0
_cstring_aimassistrange:		db "aimAssistRange",0
_cstring_aimassistrangead:		db "aimAssistRangeAds",0
_cstring_aimpadding:		db "aimPadding",0
_cstring_enemycrosshairra:		db "enemyCrosshairRange",0
_cstring_crosshaircolorch:		db "crosshairColorChange",0
_cstring_movespeedscale:		db "moveSpeedScale",0
_cstring_adsmovespeedscal:		db "adsMoveSpeedScale",0
_cstring_sprintdurationsc:		db "sprintDurationScale",0
_cstring_idlecrouchfactor:		db "idleCrouchFactor",0
_cstring_idlepronefactor:		db "idleProneFactor",0
_cstring_gunmaxpitch:		db "gunMaxPitch",0
_cstring_gunmaxyaw:		db "gunMaxYaw",0
_cstring_swaymaxangle:		db "swayMaxAngle",0
_cstring_swaylerpspeed:		db "swayLerpSpeed",0
_cstring_swaypitchscale:		db "swayPitchScale",0
_cstring_swayyawscale:		db "swayYawScale",0
_cstring_swayhorizscale:		db "swayHorizScale",0
_cstring_swayvertscale:		db "swayVertScale",0
_cstring_swayshellshocksc:		db "swayShellShockScale",0
_cstring_adsswaymaxangle:		db "adsSwayMaxAngle",0
_cstring_adsswaylerpspeed:		db "adsSwayLerpSpeed",0
_cstring_adsswaypitchscal:		db "adsSwayPitchScale",0
_cstring_adsswayyawscale:		db "adsSwayYawScale",0
_cstring_adsswayhorizscal:		db "adsSwayHorizScale",0
_cstring_adsswayvertscale:		db "adsSwayVertScale",0
_cstring_riflebullet:		db "rifleBullet",0
_cstring_armorpiercing:		db "armorPiercing",0
_cstring_boltaction:		db "boltAction",0
_cstring_aimdownsight:		db "aimDownSight",0
_cstring_rechamberwhilead:		db "rechamberWhileAds",0
_cstring_adsviewerrormin:		db "adsViewErrorMin",0
_cstring_adsviewerrormax:		db "adsViewErrorMax",0
_cstring_cliponly:		db "clipOnly",0
_cstring_cookoffhold:		db "cookOffHold",0
_cstring_adsfire:		db "adsFire",0
_cstring_cancelautoholste:		db "cancelAutoHolsterWhenEmpty",0
_cstring_suppressammorese:		db "suppressAmmoReserveDisplay",0
_cstring_enhanced:		db "enhanced",0
_cstring_lasersightduring:		db "laserSightDuringNightvision",0
_cstring_killicon:		db "killIcon",0
_cstring_killiconratio:		db "killIconRatio",0
_cstring_flipkillicon:		db "flipKillIcon",0
_cstring_dpadicon:		db "dpadIcon",0
_cstring_dpadiconratio:		db "dpadIconRatio",0
_cstring_nopartialreload:		db "noPartialReload",0
_cstring_segmentedreload:		db "segmentedReload",0
_cstring_reloadammoadd:		db "reloadAmmoAdd",0
_cstring_reloadstartadd:		db "reloadStartAdd",0
_cstring_altweapon:		db "altWeapon",0
_cstring_dropammomin:		db "dropAmmoMin",0
_cstring_dropammomax:		db "dropAmmoMax",0
_cstring_blocksprone:		db "blocksProne",0
_cstring_silenced:		db "silenced",0
_cstring_explosionradius:		db "explosionRadius",0
_cstring_explosionradiusm:		db "explosionRadiusMin",0
_cstring_explosioninnerda:		db "explosionInnerDamage",0
_cstring_explosionouterda:		db "explosionOuterDamage",0
_cstring_damageconeangle:		db "damageConeAngle",0
_cstring_projectilespeed:		db "projectileSpeed",0
_cstring_projectilespeedu:		db "projectileSpeedUp",0
_cstring_projectilespeedf:		db "projectileSpeedForward",0
_cstring_projectileactiva:		db "projectileActivateDist",0
_cstring_projectilelifeti:		db "projectileLifetime",0
_cstring_timetoaccelerate:		db "timeToAccelerate",0
_cstring_projectilecurvat:		db "projectileCurvature",0
_cstring_projectilemodel:		db "projectileModel",0
_cstring_projexplosiontyp:		db "projExplosionType",0
_cstring_projexplosioneff:		db "projExplosionEffect",0
_cstring_projexplosioneff1:		db "projExplosionEffectForceNormalUp",0
_cstring_projexplosionsou:		db "projExplosionSound",0
_cstring_projdudeffect:		db "projDudEffect",0
_cstring_projdudsound:		db "projDudSound",0
_cstring_projimpactexplod:		db "projImpactExplode",0
_cstring_stickiness:		db "stickiness",0
_cstring_hasdetonator:		db "hasDetonator",0
_cstring_timeddetonation:		db "timedDetonation",0
_cstring_rotate:		db "rotate",0
_cstring_holdbuttontothro:		db "holdButtonToThrow",0
_cstring_freezemovementwh:		db "freezeMovementWhenFiring",0
_cstring_lowammowarningth:		db "lowAmmoWarningThreshold",0
_cstring_paralleldefaultb:		db "parallelDefaultBounce",0
_cstring_parallelbarkboun:		db "parallelBarkBounce",0
_cstring_parallelbrickbou:		db "parallelBrickBounce",0
_cstring_parallelcarpetbo:		db "parallelCarpetBounce",0
_cstring_parallelclothbou:		db "parallelClothBounce",0
_cstring_parallelconcrete:		db "parallelConcreteBounce",0
_cstring_paralleldirtboun:		db "parallelDirtBounce",0
_cstring_parallelfleshbou:		db "parallelFleshBounce",0
_cstring_parallelfoliageb:		db "parallelFoliageBounce",0
_cstring_parallelglassbou:		db "parallelGlassBounce",0
_cstring_parallelgrassbou:		db "parallelGrassBounce",0
_cstring_parallelgravelbo:		db "parallelGravelBounce",0
_cstring_parallelicebounc:		db "parallelIceBounce",0
_cstring_parallelmetalbou:		db "parallelMetalBounce",0
_cstring_parallelmudbounc:		db "parallelMudBounce",0
_cstring_parallelpaperbou:		db "parallelPaperBounce",0
_cstring_parallelplasterb:		db "parallelPlasterBounce",0
_cstring_parallelrockboun:		db "parallelRockBounce",0
_cstring_parallelsandboun:		db "parallelSandBounce",0
_cstring_parallelsnowboun:		db "parallelSnowBounce",0
_cstring_parallelwaterbou:		db "parallelWaterBounce",0
_cstring_parallelwoodboun:		db "parallelWoodBounce",0
_cstring_parallelasphaltb:		db "parallelAsphaltBounce",0
_cstring_parallelceramicb:		db "parallelCeramicBounce",0
_cstring_parallelplasticb:		db "parallelPlasticBounce",0
_cstring_parallelrubberbo:		db "parallelRubberBounce",0
_cstring_parallelcushionb:		db "parallelCushionBounce",0
_cstring_parallelfruitbou:		db "parallelFruitBounce",0
_cstring_parallelpaintedm:		db "parallelPaintedMetalBounce",0
_cstring_perpendiculardef:		db "perpendicularDefaultBounce",0
_cstring_perpendicularbar:		db "perpendicularBarkBounce",0
_cstring_perpendicularbri:		db "perpendicularBrickBounce",0
_cstring_perpendicularcar:		db "perpendicularCarpetBounce",0
_cstring_perpendicularclo:		db "perpendicularClothBounce",0
_cstring_perpendicularcon:		db "perpendicularConcreteBounce",0
_cstring_perpendiculardir:		db "perpendicularDirtBounce",0
_cstring_perpendicularfle:		db "perpendicularFleshBounce",0
_cstring_perpendicularfol:		db "perpendicularFoliageBounce",0
_cstring_perpendiculargla:		db "perpendicularGlassBounce",0
_cstring_perpendiculargra:		db "perpendicularGrassBounce",0
_cstring_perpendiculargra1:		db "perpendicularGravelBounce",0
_cstring_perpendicularice:		db "perpendicularIceBounce",0
_cstring_perpendicularmet:		db "perpendicularMetalBounce",0
_cstring_perpendicularmud:		db "perpendicularMudBounce",0
_cstring_perpendicularpap:		db "perpendicularPaperBounce",0
_cstring_perpendicularpla:		db "perpendicularPlasterBounce",0
_cstring_perpendicularroc:		db "perpendicularRockBounce",0
_cstring_perpendicularsan:		db "perpendicularSandBounce",0
_cstring_perpendicularsno:		db "perpendicularSnowBounce",0
_cstring_perpendicularwat:		db "perpendicularWaterBounce",0
_cstring_perpendicularwoo:		db "perpendicularWoodBounce",0
_cstring_perpendicularasp:		db "perpendicularAsphaltBounce",0
_cstring_perpendicularcer:		db "perpendicularCeramicBounce",0
_cstring_perpendicularpla1:		db "perpendicularPlasticBounce",0
_cstring_perpendicularrub:		db "perpendicularRubberBounce",0
_cstring_perpendicularcus:		db "perpendicularCushionBounce",0
_cstring_perpendicularfru:		db "perpendicularFruitBounce",0
_cstring_perpendicularpai:		db "perpendicularPaintedMetalBounce",0
_cstring_projtraileffect:		db "projTrailEffect",0
_cstring_projectilered:		db "projectileRed",0
_cstring_projectilegreen:		db "projectileGreen",0
_cstring_projectileblue:		db "projectileBlue",0
_cstring_guidedmissiletyp:		db "guidedMissileType",0
_cstring_maxsteeringaccel:		db "maxSteeringAccel",0
_cstring_projignitiondela:		db "projIgnitionDelay",0
_cstring_projignitioneffe:		db "projIgnitionEffect",0
_cstring_projignitionsoun:		db "projIgnitionSound",0
_cstring_adstransintime:		db "adsTransInTime",0
_cstring_adstransouttime:		db "adsTransOutTime",0
_cstring_adsidleamount:		db "adsIdleAmount",0
_cstring_adsidlespeed:		db "adsIdleSpeed",0
_cstring_adszoomfov:		db "adsZoomFov",0
_cstring_adszoominfrac:		db "adsZoomInFrac",0
_cstring_adszoomoutfrac:		db "adsZoomOutFrac",0
_cstring_adsoverlayshader:		db "adsOverlayShader",0
_cstring_adsoverlayshader1:		db "adsOverlayShaderLowRes",0
_cstring_adsoverlayreticl:		db "adsOverlayReticle",0
_cstring_adsoverlayinterf:		db "adsOverlayInterface",0
_cstring_adsoverlaywidth:		db "adsOverlayWidth",0
_cstring_adsoverlayheight:		db "adsOverlayHeight",0
_cstring_adsbobfactor:		db "adsBobFactor",0
_cstring_adsviewbobmult:		db "adsViewBobMult",0
_cstring_adsaimpitch:		db "adsAimPitch",0
_cstring_adscrosshairinfr:		db "adsCrosshairInFrac",0
_cstring_adscrosshairoutf:		db "adsCrosshairOutFrac",0
_cstring_adsreloadtransti:		db "adsReloadTransTime",0
_cstring_adsgunkickreduce:		db "adsGunKickReducedKickBullets",0
_cstring_adsgunkickreduce1:		db "adsGunKickReducedKickPercent",0
_cstring_adsgunkickpitchm:		db "adsGunKickPitchMin",0
_cstring_adsgunkickpitchm1:		db "adsGunKickPitchMax",0
_cstring_adsgunkickyawmin:		db "adsGunKickYawMin",0
_cstring_adsgunkickyawmax:		db "adsGunKickYawMax",0
_cstring_adsgunkickaccel:		db "adsGunKickAccel",0
_cstring_adsgunkickspeedm:		db "adsGunKickSpeedMax",0
_cstring_adsgunkickspeedd:		db "adsGunKickSpeedDecay",0
_cstring_adsgunkickstatic:		db "adsGunKickStaticDecay",0
_cstring_adsviewkickpitch:		db "adsViewKickPitchMin",0
_cstring_adsviewkickpitch1:		db "adsViewKickPitchMax",0
_cstring_adsviewkickyawmi:		db "adsViewKickYawMin",0
_cstring_adsviewkickyawma:		db "adsViewKickYawMax",0
_cstring_adsviewkickcente:		db "adsViewKickCenterSpeed",0
_cstring_adsspread:		db "adsSpread",0
_cstring_hipspreadstandmi:		db "hipSpreadStandMin",0
_cstring_hipspreadduckedm:		db "hipSpreadDuckedMin",0
_cstring_hipspreadpronemi:		db "hipSpreadProneMin",0
_cstring_hipspreadmax:		db "hipSpreadMax",0
_cstring_hipspreadduckedm1:		db "hipSpreadDuckedMax",0
_cstring_hipspreadpronema:		db "hipSpreadProneMax",0
_cstring_hipspreaddecayra:		db "hipSpreadDecayRate",0
_cstring_hipspreadfireadd:		db "hipSpreadFireAdd",0
_cstring_hipspreadturnadd:		db "hipSpreadTurnAdd",0
_cstring_hipspreadmoveadd:		db "hipSpreadMoveAdd",0
_cstring_hipspreadduckedd:		db "hipSpreadDuckedDecay",0
_cstring_hipspreadpronede:		db "hipSpreadProneDecay",0
_cstring_hipreticlesidepo:		db "hipReticleSidePos",0
_cstring_hipidleamount:		db "hipIdleAmount",0
_cstring_hipidlespeed:		db "hipIdleSpeed",0
_cstring_hipgunkickreduce:		db "hipGunKickReducedKickBullets",0
_cstring_hipgunkickreduce1:		db "hipGunKickReducedKickPercent",0
_cstring_hipgunkickpitchm:		db "hipGunKickPitchMin",0
_cstring_hipgunkickpitchm1:		db "hipGunKickPitchMax",0
_cstring_hipgunkickyawmin:		db "hipGunKickYawMin",0
_cstring_hipgunkickyawmax:		db "hipGunKickYawMax",0
_cstring_hipgunkickaccel:		db "hipGunKickAccel",0
_cstring_hipgunkickspeedm:		db "hipGunKickSpeedMax",0
_cstring_hipgunkickspeedd:		db "hipGunKickSpeedDecay",0
_cstring_hipgunkickstatic:		db "hipGunKickStaticDecay",0
_cstring_hipviewkickpitch:		db "hipViewKickPitchMin",0
_cstring_hipviewkickpitch1:		db "hipViewKickPitchMax",0
_cstring_hipviewkickyawmi:		db "hipViewKickYawMin",0
_cstring_hipviewkickyawma:		db "hipViewKickYawMax",0
_cstring_hipviewkickcente:		db "hipViewKickCenterSpeed",0
_cstring_leftarc:		db "leftArc",0
_cstring_rightarc:		db "rightArc",0
_cstring_toparc:		db "topArc",0
_cstring_bottomarc:		db "bottomArc",0
_cstring_accuracy:		db "accuracy",0
_cstring_aispread:		db "aiSpread",0
_cstring_playerspread:		db "playerSpread",0
_cstring_maxvertturnspeed:		db "maxVertTurnSpeed",0
_cstring_maxhorturnspeed:		db "maxHorTurnSpeed",0
_cstring_minvertturnspeed:		db "minVertTurnSpeed",0
_cstring_minhorturnspeed:		db "minHorTurnSpeed",0
_cstring_pitchconvergence:		db "pitchConvergenceTime",0
_cstring_yawconvergenceti:		db "yawConvergenceTime",0
_cstring_suppressiontime:		db "suppressionTime",0
_cstring_maxrange:		db "maxRange",0
_cstring_animhorrotateinc:		db "animHorRotateInc",0
_cstring_playerpositiondi:		db "playerPositionDist",0
_cstring_stance:		db "stance",0
_cstring_usehintstring:		db "useHintString",0
_cstring_drophintstring:		db "dropHintString",0
_cstring_horizviewjitter:		db "horizViewJitter",0
_cstring_vertviewjitter:		db "vertViewJitter",0
_cstring_fightdist:		db "fightDist",0
_cstring_maxdist:		db "maxDist",0
_cstring_aivsaiaccuracygr:		db "aiVsAiAccuracyGraph",0
_cstring_aivsplayeraccura:		db "aiVsPlayerAccuracyGraph",0
_cstring_locnone:		db "locNone",0
_cstring_lochelmet:		db "locHelmet",0
_cstring_lochead:		db "locHead",0
_cstring_locneck:		db "locNeck",0
_cstring_loctorsoupper:		db "locTorsoUpper",0
_cstring_loctorsolower:		db "locTorsoLower",0
_cstring_locrightarmupper:		db "locRightArmUpper",0
_cstring_locrightarmlower:		db "locRightArmLower",0
_cstring_locrighthand:		db "locRightHand",0
_cstring_locleftarmupper:		db "locLeftArmUpper",0
_cstring_locleftarmlower:		db "locLeftArmLower",0
_cstring_loclefthand:		db "locLeftHand",0
_cstring_locrightlegupper:		db "locRightLegUpper",0
_cstring_locrightleglower:		db "locRightLegLower",0
_cstring_locrightfoot:		db "locRightFoot",0
_cstring_locleftlegupper:		db "locLeftLegUpper",0
_cstring_locleftleglower:		db "locLeftLegLower",0
_cstring_locleftfoot:		db "locLeftFoot",0
_cstring_locgun:		db "locGun",0
_cstring_firerumble:		db "fireRumble",0
_cstring_meleeimpactrumbl:		db "meleeImpactRumble",0
_cstring_adsdofstart:		db "adsDofStart",0
_cstring_adsdofend:		db "adsDofEnd",0
_cstring_11:		db "1:1",0
_cstring_21:		db "2:1",0
_cstring_41:		db "4:1",0
_cstring_none1:		db "None",0
_cstring_magazine:		db "Magazine",0
_cstring_shortmagazine:		db "ShortMagazine",0
_cstring_shotgun:		db "Shotgun",0
_cstring_rocket:		db "Rocket",0
_cstring_beltfed:		db "Beltfed",0
_cstring_altweapon1:		db "AltWeapon",0
_cstring_javelin:		db "Javelin",0
_cstring_turret_scope:		db "Turret Scope",0
_cstring_dont_stick:		db "Don",27h,"t stick",0
_cstring_stick_to_all:		db "Stick to all",0
_cstring_stick_to_ground:		db "Stick to ground",0
_cstring_stick_to_ground_:		db "Stick to ground, maintain yaw",0
_cstring_sidewinder:		db "Sidewinder",0
_cstring_hellfire:		db "Hellfire",0
_cstring_piponastick:		db "Pip-On-A-Stick",0
_cstring_bouncing_diamond:		db "Bouncing diamond",0
_cstring_frag_grenade:		db "Frag Grenade",0
_cstring_smoke_grenade:		db "Smoke Grenade",0
_cstring_flash_grenade:		db "Flash Grenade",0
_cstring_grenade:		db "grenade",0
_cstring_rocket1:		db "rocket",0
_cstring_flashbang:		db "flashbang",0
_cstring_dud:		db "dud",0
_cstring_smoke:		db "smoke",0
_cstring_heavy_explosive:		db "heavy explosive",0
_cstring_stand:		db "stand",0
_cstring_duck:		db "duck",0
_cstring_prone:		db "prone",0
_cstring_bullet_small:		db "bullet_small",0
_cstring_bullet_large:		db "bullet_large",0
_cstring_bullet_ap:		db "bullet_ap",0
_cstring_shotgun1:		db "shotgun",0
_cstring_grenade_bounce:		db "grenade_bounce",0
_cstring_grenade_explode:		db "grenade_explode",0
_cstring_rocket_explode:		db "rocket_explode",0
_cstring_projectile_dud:		db "projectile_dud",0
_cstring_small:		db "small",0
_cstring_medium:		db "medium",0
_cstring_large:		db "large",0
_cstring_full_auto:		db "Full Auto",0
_cstring_single_shot:		db "Single Shot",0
_cstring_2round_burst:		db "2-Round Burst",0
_cstring_3round_burst:		db "3-Round Burst",0
_cstring_4round_burst:		db "4-Round Burst",0
_cstring_primary:		db "primary",0
_cstring_offhand:		db "offhand",0
_cstring_item:		db "item",0
_cstring_altmode:		db "altmode",0
_cstring_crosshair:		db "crosshair",0
_cstring_rifle:		db "rifle",0
_cstring_mg:		db "mg",0
_cstring_smg:		db "smg",0
_cstring_spread:		db "spread",0
_cstring_pistol:		db "pistol",0
_cstring_rocketlauncher:		db "rocketlauncher",0
_cstring_turret:		db "turret",0
_cstring_nonplayer:		db "non-player",0
_cstring_bullet:		db "bullet",0
_cstring_projectile:		db "projectile",0
_cstring_binoculars:		db "binoculars",0



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1
_float_15000_00000000:		dd 0x466a6000	; 15000
_float_1000000000_00000000:		dd 0x4e6e6b28	; 1e+09

