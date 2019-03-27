;Imports of DynEntity_load_obj:
	extern Hunk_AllocInternal
	extern cm
	extern Com_EntityString
	extern Com_Parse
	extern Q_strncpyz
	extern Q_stricmp
	extern Com_Error
	extern Com_Memset
	extern XModelPrecache
	extern XModelGetContents
	extern AnglesToQuat
	extern qsort
	extern strcpy
	extern Com_IsLegacyXModelName
	extern Com_StripExtension
	extern atoi
	extern sscanf
	extern FX_Register
	extern XModelPiecesPrecache
	extern PhysPresetPrecache
	extern Com_PrintError

;Exports of DynEntity_load_obj:
	global dynEntProps
	global dynEntClassNames
	global DynEnt_AllocXModel
	global DynEnt_AllocXModelColl
	global DynEnt_AllocPhysPreset
	global DynEnt_AllocXModelPieces
	global DynEnt_CompareEntities
	global DynEnt_GetId
	global DynEnt_GetEntityDef
	global DynEnt_LoadEntities
	global DynEnt_GetClientPose
	global DynEnt_GetEntityColl
	global DynEnt_GetEntityCount
	global DynEnt_GetEntityProps
	global DynEnt_GetClientEntity
	global DynEnt_GetClientModelPoseList


SECTION .text


;DynEnt_AllocXModel(int)
DynEnt_AllocXModel:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Hunk_AllocInternal
	nop


;DynEnt_AllocXModelColl(int)
DynEnt_AllocXModelColl:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Hunk_AllocInternal
	nop


;DynEnt_AllocPhysPreset(int)
DynEnt_AllocPhysPreset:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Hunk_AllocInternal
	nop


;DynEnt_AllocXModelPieces(int)
DynEnt_AllocXModelPieces:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Hunk_AllocInternal
	nop


;DynEnt_CompareEntities(void const*, void const*)
DynEnt_CompareEntities:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov eax, [esi+0x20]
	mov [ebp-0x10], eax
	xor ecx, ecx
	test eax, eax
	setnz cl
	mov ebx, [edi+0x20]
	xor eax, eax
	test ebx, ebx
	setnz al
	mov edx, ecx
	sub edx, eax
	jnz DynEnt_CompareEntities_10
	mov eax, [esi]
	xor edx, edx
	cmp byte [eax*8+dynEntProps+0x4], 0x0
	setnz dl
	mov eax, [edi]
	cmp byte [eax*8+dynEntProps+0x4], 0x0
	setnz al
	movzx eax, al
	sub edx, eax
	jnz DynEnt_CompareEntities_10
	test ecx, ecx
	jz DynEnt_CompareEntities_20
	cmp [ebp-0x10], ebx
	sbb edx, edx
	or edx, 0x1
DynEnt_CompareEntities_10:
	mov eax, edx
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DynEnt_CompareEntities_20:
	movzx edx, word [esi+0x24]
	movzx eax, word [edi+0x24]
	sub edx, eax
	mov eax, edx
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;DynEnt_GetId(DynEntityDef const*, DynEntityDrawType)
DynEnt_GetId:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov ecx, cm
	mov eax, [ebp+0xc]
	sub edx, [ecx+eax*4+0xf8]
	sar edx, 0x5
	lea eax, [edx+edx*4]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	mov ecx, eax
	shl ecx, 0x8
	add eax, ecx
	mov ecx, eax
	shl ecx, 0x10
	add eax, ecx
	lea eax, [edx+eax*2]
	movzx eax, ax
	pop ebp
	ret
	nop


;DynEnt_GetEntityDef(unsigned short, DynEntityDrawType)
DynEnt_GetEntityDef:
	push ebp
	mov ebp, esp
	movzx eax, word [ebp+0x8]
	lea eax, [eax+eax*2]
	shl eax, 0x5
	mov ecx, cm
	mov edx, [ebp+0xc]
	add eax, [ecx+edx*4+0xf8]
	pop ebp
	ret
	nop


;DynEnt_LoadEntities()
DynEnt_LoadEntities:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x32c
	mov eax, cm
	mov dword [eax+0xf8], 0x0
	mov dword [eax+0xfc], 0x0
	mov dword [eax+0x100], 0x0
	mov dword [eax+0x104], 0x0
	mov dword [eax+0x108], 0x0
	mov dword [eax+0x10c], 0x0
	mov dword [eax+0x110], 0x0
	mov dword [eax+0x114], 0x0
	mov dword [eax+0xf4], 0x0
	mov dword [esp], 0x0
	call Com_EntityString
	mov [ebp-0x20], eax
	mov dword [ebp-0x2f8], 0x0
	lea esi, [ebp-0x20]
DynEnt_LoadEntities_20:
	mov [esp], esi
	call Com_Parse
	mov ebx, [ebp-0x20]
	test ebx, ebx
	jz DynEnt_LoadEntities_10
	cmp byte [eax], 0x7b
	jnz DynEnt_LoadEntities_10
	lea edi, [ebp-0x120]
DynEnt_LoadEntities_30:
	mov [esp], esi
	call Com_Parse
	mov ecx, [ebp-0x20]
	test ecx, ecx
	jz DynEnt_LoadEntities_20
	cmp byte [eax], 0x7d
	jz DynEnt_LoadEntities_20
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], eax
	mov [esp], edi
	call Q_strncpyz
	mov [esp], esi
	call Com_Parse
	mov edx, [ebp-0x20]
	test edx, edx
	jz DynEnt_LoadEntities_20
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], eax
	lea eax, [ebp-0xe0]
	mov [esp], eax
	call Q_strncpyz
	mov dword [esp+0x4], _cstring_classname
	mov [esp], edi
	call Q_stricmp
	test eax, eax
	jnz DynEnt_LoadEntities_30
	mov ebx, dynEntClassNames
	mov eax, [ebx]
	mov [esp+0x4], eax
	lea edx, [ebp-0xe0]
	mov [esp], edx
	call Q_stricmp
	test eax, eax
	jz DynEnt_LoadEntities_40
DynEnt_LoadEntities_50:
	add ebx, 0x4
	cmp ebx, dynEntClassNames+0x8
	jz DynEnt_LoadEntities_30
	mov eax, [ebx]
	mov [esp+0x4], eax
	lea edx, [ebp-0xe0]
	mov [esp], edx
	call Q_stricmp
	test eax, eax
	jnz DynEnt_LoadEntities_50
DynEnt_LoadEntities_40:
	add dword [ebp-0x2f8], 0x1
	jmp DynEnt_LoadEntities_30
DynEnt_LoadEntities_10:
	cmp dword [ebp-0x2f8], 0xfff
	jg DynEnt_LoadEntities_60
	mov esi, [ebp-0x2f8]
	test esi, esi
	jnz DynEnt_LoadEntities_70
DynEnt_LoadEntities_270:
	add esp, 0x32c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DynEnt_LoadEntities_60:
	mov dword [esp+0xc], 0xfff
	mov eax, [ebp-0x2f8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_found_d_dyn_enti
	mov dword [esp], 0x2
	call Com_Error
DynEnt_LoadEntities_70:
	mov edx, [ebp-0x2f8]
	lea eax, [edx+edx*2]
	shl eax, 0x5
	mov [esp], eax
	call Hunk_AllocInternal
	mov [ebp-0x2fc], eax
	mov dword [esp], 0x0
	call Com_EntityString
	mov [ebp-0x1c], eax
	mov dword [ebp-0x2f4], 0x0
DynEnt_LoadEntities_140:
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call Com_Parse
	mov ebx, [ebp-0x1c]
	test ebx, ebx
	jz DynEnt_LoadEntities_80
DynEnt_LoadEntities_260:
	cmp byte [eax], 0x7b
	jnz DynEnt_LoadEntities_80
	mov dword [esp+0x8], 0x1c0
	mov dword [esp+0x4], 0x0
	lea edx, [ebp-0x2e0]
	mov [esp], edx
	call Com_Memset
	xor ebx, ebx
	lea edi, [ebp-0x60]
DynEnt_LoadEntities_320:
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call Com_Parse
	mov ecx, [ebp-0x1c]
	test ecx, ecx
	jz DynEnt_LoadEntities_90
DynEnt_LoadEntities_130:
	cmp byte [eax], 0x7d
	jz DynEnt_LoadEntities_90
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], eax
	lea edx, [ebp-0xa0]
	mov [esp], edx
	call Q_strncpyz
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call Com_Parse
	mov edx, [ebp-0x1c]
	test edx, edx
	jz DynEnt_LoadEntities_90
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], eax
	mov [esp], edi
	call Q_strncpyz
	mov dword [esp+0x4], _cstring_classname
	lea edx, [ebp-0xa0]
	mov [esp], edx
	call Q_stricmp
	test eax, eax
	jnz DynEnt_LoadEntities_100
	mov ebx, dynEntClassNames
	mov esi, dynEntClassNames+0x8
DynEnt_LoadEntities_120:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], edi
	call Q_stricmp
	test eax, eax
	jz DynEnt_LoadEntities_110
	add ebx, 0x4
	cmp esi, ebx
	jnz DynEnt_LoadEntities_120
	xor ebx, ebx
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call Com_Parse
	mov ecx, [ebp-0x1c]
	test ecx, ecx
	jnz DynEnt_LoadEntities_130
DynEnt_LoadEntities_90:
	test bl, bl
	jz DynEnt_LoadEntities_140
	mov edx, [ebp-0x2f4]
	lea eax, [edx+edx*2]
	shl eax, 0x5
	mov ebx, [ebp-0x2fc]
	add ebx, eax
	mov dword [esp+0x8], 0x60
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call Com_Memset
	cmp byte [ebp-0x2e0], 0x0
	jnz DynEnt_LoadEntities_150
	mov dword [ebx], 0x1
DynEnt_LoadEntities_410:
	cmp byte [ebp-0x2a0], 0x2a
	jz DynEnt_LoadEntities_160
	mov dword [esp+0x8], DynEnt_AllocXModelColl
	mov dword [esp+0x4], DynEnt_AllocXModel
	lea esi, [ebp-0x2a0]
	mov [esp], esi
	call XModelPrecache
	mov [ebx+0x20], eax
	test eax, eax
	jz DynEnt_LoadEntities_170
	mov [esp], eax
	call XModelGetContents
	mov [ebx+0x5c], eax
	mov eax, [ebx+0x20]
	cmp word [eax+0xc6], 0x0
	js DynEnt_LoadEntities_180
	cmp byte [ebp-0x260], 0x2a
	jz DynEnt_LoadEntities_190
DynEnt_LoadEntities_450:
	cmp byte [ebp-0x220], 0x0
	jnz DynEnt_LoadEntities_200
DynEnt_LoadEntities_460:
	cmp byte [ebp-0x1e0], 0x0
	jnz DynEnt_LoadEntities_210
DynEnt_LoadEntities_470:
	mov dword [ebx+0x30], 0x0
	mov eax, [ebx]
	cmp byte [eax*8+dynEntProps+0x6], 0x0
	jz DynEnt_LoadEntities_220
	mov eax, [ebx+0x20]
	test eax, eax
	jz DynEnt_LoadEntities_230
	mov eax, [eax+0xd4]
	test eax, eax
	jz DynEnt_LoadEntities_230
	mov [ebx+0x30], eax
DynEnt_LoadEntities_230:
	cmp byte [ebp-0x1a0], 0x0
	jnz DynEnt_LoadEntities_240
DynEnt_LoadEntities_480:
	mov eax, [ebx+0x30]
	test eax, eax
	jz DynEnt_LoadEntities_250
DynEnt_LoadEntities_220:
	lea edx, [ebx+0x14]
	mov eax, [ebp-0x160]
	mov [ebx+0x14], eax
	mov eax, [ebp-0x15c]
	mov [edx+0x4], eax
	mov eax, [ebp-0x158]
	mov [edx+0x8], eax
	lea eax, [ebx+0x4]
	mov [esp+0x4], eax
	lea eax, [ebp-0x154]
	mov [esp], eax
	call AnglesToQuat
	lea edx, [ebx+0x38]
	mov eax, [ebp-0x144]
	mov [ebx+0x38], eax
	mov eax, [ebp-0x140]
	mov [edx+0x4], eax
	mov eax, [ebp-0x13c]
	mov [edx+0x8], eax
	lea edx, [ebx+0x44]
	mov eax, [ebp-0x138]
	mov [ebx+0x44], eax
	mov eax, [ebp-0x134]
	mov [edx+0x4], eax
	mov eax, [ebp-0x130]
	mov [edx+0x8], eax
	lea edx, [ebx+0x50]
	mov eax, [ebp-0x12c]
	mov [ebx+0x50], eax
	mov eax, [ebp-0x128]
	mov [edx+0x4], eax
	mov eax, [ebp-0x124]
	mov [edx+0x8], eax
	mov eax, [ebp-0x148]
	mov [ebx+0x34], eax
	add dword [ebp-0x2f4], 0x1
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call Com_Parse
	mov ebx, [ebp-0x1c]
	test ebx, ebx
	jnz DynEnt_LoadEntities_260
DynEnt_LoadEntities_80:
	mov eax, [ebp-0x2f4]
	test eax, eax
	jz DynEnt_LoadEntities_270
	mov dword [esp+0xc], DynEnt_CompareEntities
	mov dword [esp+0x8], 0x60
	mov eax, [ebp-0x2f4]
	mov [esp+0x4], eax
	mov edx, [ebp-0x2fc]
	mov [esp], edx
	call qsort
	mov edi, [ebp-0x2f4]
	test edi, edi
	jg DynEnt_LoadEntities_280
	mov ebx, cm
DynEnt_LoadEntities_500:
	mov dword [ebp-0x2ec], 0x0
	mov [ebp-0x2f0], ebx
	mov edi, ebx
	movzx eax, word [edi+0xf4]
	test ax, ax
	jnz DynEnt_LoadEntities_290
DynEnt_LoadEntities_300:
	add dword [ebp-0x2ec], 0x1
	add edi, 0x2
	add dword [ebp-0x2f0], 0x4
	cmp dword [ebp-0x2ec], 0x2
	jz DynEnt_LoadEntities_270
	movzx eax, word [edi+0xf4]
	test ax, ax
	jz DynEnt_LoadEntities_300
DynEnt_LoadEntities_290:
	movzx ebx, ax
	shl ebx, 0x5
	mov [esp], ebx
	call Hunk_AllocInternal
	mov esi, eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call Com_Memset
	mov eax, [ebp-0x2f0]
	mov [eax+0x100], esi
	movzx ebx, word [edi+0xf4]
	lea ebx, [ebx+ebx*2]
	shl ebx, 0x2
	mov [esp], ebx
	call Hunk_AllocInternal
	mov esi, eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call Com_Memset
	mov edx, [ebp-0x2f0]
	mov [edx+0x108], esi
	movzx ebx, word [edi+0xf4]
	lea ebx, [ebx+ebx*4]
	shl ebx, 0x2
	mov [esp], ebx
	call Hunk_AllocInternal
	mov esi, eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call Com_Memset
	mov eax, [ebp-0x2f0]
	mov [eax+0x110], esi
	jmp DynEnt_LoadEntities_300
DynEnt_LoadEntities_100:
	mov dword [esp+0x4], _cstring_type
	lea eax, [ebp-0xa0]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz DynEnt_LoadEntities_310
	mov [esp+0x4], edi
	lea edx, [ebp-0x2e0]
	mov [esp], edx
	call strcpy
	jmp DynEnt_LoadEntities_320
DynEnt_LoadEntities_310:
	mov dword [esp+0x4], _cstring_model
	lea eax, [ebp-0xa0]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz DynEnt_LoadEntities_330
	mov [esp], edi
	call Com_IsLegacyXModelName
	test eax, eax
	jz DynEnt_LoadEntities_340
	lea eax, [ebp-0x59]
	mov [esp+0x4], eax
	lea eax, [ebp-0x2a0]
	mov [esp], eax
	call strcpy
	jmp DynEnt_LoadEntities_320
DynEnt_LoadEntities_330:
	mov dword [esp+0x4], _cstring_physicsmodel
	lea edx, [ebp-0xa0]
	mov [esp], edx
	call Q_stricmp
	test eax, eax
	jnz DynEnt_LoadEntities_350
	mov [esp], edi
	call Com_IsLegacyXModelName
	test eax, eax
	jz DynEnt_LoadEntities_360
	lea eax, [ebp-0x59]
	mov [esp+0x4], eax
	lea eax, [ebp-0x260]
	mov [esp], eax
	call strcpy
	jmp DynEnt_LoadEntities_320
DynEnt_LoadEntities_110:
	mov ebx, 0x1
	jmp DynEnt_LoadEntities_320
DynEnt_LoadEntities_340:
	mov [esp+0x4], edi
	lea eax, [ebp-0x2a0]
	mov [esp], eax
	call strcpy
	jmp DynEnt_LoadEntities_320
DynEnt_LoadEntities_350:
	mov dword [esp+0x4], _cstring_destroyefx
	lea eax, [ebp-0xa0]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz DynEnt_LoadEntities_370
	lea eax, [ebp-0x220]
	mov [esp+0x4], eax
	mov [esp], edi
	call Com_StripExtension
	jmp DynEnt_LoadEntities_320
DynEnt_LoadEntities_360:
	mov [esp+0x4], edi
	lea eax, [ebp-0x260]
	mov [esp], eax
	call strcpy
	jmp DynEnt_LoadEntities_320
DynEnt_LoadEntities_370:
	mov dword [esp+0x4], _cstring_destroypieces
	lea edx, [ebp-0xa0]
	mov [esp], edx
	call Q_stricmp
	test eax, eax
	jnz DynEnt_LoadEntities_380
	lea eax, [ebp-0x1e0]
	mov [esp+0x4], eax
	mov [esp], edi
	call Com_StripExtension
	jmp DynEnt_LoadEntities_320
DynEnt_LoadEntities_150:
	xor edi, edi
	mov esi, dynEntProps
DynEnt_LoadEntities_400:
	mov eax, [esi]
	mov [esp+0x4], eax
	lea eax, [ebp-0x2e0]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz DynEnt_LoadEntities_390
	add edi, 0x1
	add esi, 0x8
	cmp edi, 0x3
	jnz DynEnt_LoadEntities_400
	xor eax, eax
DynEnt_LoadEntities_520:
	mov [ebx], eax
	test eax, eax
	jnz DynEnt_LoadEntities_410
	lea edx, [ebp-0x2e0]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_invalid_dyn_enti
	mov dword [esp], 0x2
	call Com_Error
	jmp DynEnt_LoadEntities_140
DynEnt_LoadEntities_380:
	mov dword [esp+0x4], _cstring_origin
	lea eax, [ebp-0xa0]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz DynEnt_LoadEntities_420
	mov dword [esp+0x4], _cstring_angles
	lea edx, [ebp-0xa0]
	mov [esp], edx
	call Q_stricmp
	test eax, eax
	jz DynEnt_LoadEntities_430
	mov dword [esp+0x4], _cstring_health
	lea eax, [ebp-0xa0]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz DynEnt_LoadEntities_440
	mov [esp], edi
	call atoi
	mov [ebp-0x148], eax
	jmp DynEnt_LoadEntities_320
DynEnt_LoadEntities_420:
	lea eax, [ebp-0x158]
	mov [esp+0x10], eax
	lea eax, [ebp-0x15c]
	mov [esp+0xc], eax
	lea eax, [ebp-0x160]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_f_f_f
	mov [esp], edi
	call sscanf
	jmp DynEnt_LoadEntities_320
DynEnt_LoadEntities_160:
	lea eax, [ebp-0x29f]
	mov [esp], eax
	call atoi
	mov [ebx+0x24], ax
	lea eax, [eax+eax*8]
	mov edx, cm
	mov ecx, [edx+0x88]
	mov edx, [ecx+eax*8+0x20]
	or edx, [ecx+eax*8+0x24]
	mov [ebx+0x5c], edx
	cmp byte [ebp-0x260], 0x2a
	jnz DynEnt_LoadEntities_450
DynEnt_LoadEntities_190:
	lea eax, [ebp-0x25f]
	mov [esp], eax
	call atoi
	mov [ebx+0x26], ax
	cmp byte [ebp-0x220], 0x0
	jz DynEnt_LoadEntities_460
DynEnt_LoadEntities_200:
	lea esi, [ebp-0x220]
	mov [esp], esi
	call FX_Register
	mov [ebx+0x28], eax
	test eax, eax
	jnz DynEnt_LoadEntities_460
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_couldnt_find_fx_
	mov dword [esp], 0x2
	call Com_Error
	jmp DynEnt_LoadEntities_140
DynEnt_LoadEntities_210:
	mov dword [esp+0x4], DynEnt_AllocXModelPieces
	lea esi, [ebp-0x1e0]
	mov [esp], esi
	call XModelPiecesPrecache
	mov [ebx+0x2c], eax
	test eax, eax
	jnz DynEnt_LoadEntities_470
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_couldnt_find_pie
	mov dword [esp], 0x2
	call Com_Error
	jmp DynEnt_LoadEntities_140
DynEnt_LoadEntities_170:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_couldnt_find_xmo
	mov dword [esp], 0x2
	call Com_Error
	jmp DynEnt_LoadEntities_140
DynEnt_LoadEntities_240:
	mov dword [esp+0x4], DynEnt_AllocPhysPreset
	lea eax, [ebp-0x1a0]
	mov [esp], eax
	call PhysPresetPrecache
	mov [ebx+0x30], eax
	jmp DynEnt_LoadEntities_480
DynEnt_LoadEntities_280:
	mov edx, [ebp-0x2fc]
	xor ecx, ecx
	mov ebx, cm
	jmp DynEnt_LoadEntities_490
DynEnt_LoadEntities_510:
	add word [ebx+eax*2+0xf4], 0x1
	add ecx, 0x1
	add edx, 0x60
	cmp ecx, [ebp-0x2f4]
	jz DynEnt_LoadEntities_500
DynEnt_LoadEntities_490:
	xor eax, eax
	cmp dword [edx+0x20], 0x0
	setz al
	mov esi, [ebx+eax*4+0xf8]
	test esi, esi
	jnz DynEnt_LoadEntities_510
	mov [ebx+eax*4+0xf8], edx
	jmp DynEnt_LoadEntities_510
DynEnt_LoadEntities_430:
	lea eax, [ebp-0x14c]
	mov [esp+0x10], eax
	lea eax, [ebp-0x150]
	mov [esp+0xc], eax
	lea eax, [ebp-0x154]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_f_f_f
	mov [esp], edi
	call sscanf
	jmp DynEnt_LoadEntities_320
DynEnt_LoadEntities_180:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_dyn_entity_xmode
	mov dword [esp], 0x0
	call Com_PrintError
	jmp DynEnt_LoadEntities_140
DynEnt_LoadEntities_390:
	mov eax, edi
	jmp DynEnt_LoadEntities_520
DynEnt_LoadEntities_440:
	mov dword [esp+0x4], _cstring_physpreset
	lea edx, [ebp-0xa0]
	mov [esp], edx
	call Q_stricmp
	test eax, eax
	jz DynEnt_LoadEntities_530
	mov dword [esp+0x4], _cstring_centerofmass
	lea eax, [ebp-0xa0]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz DynEnt_LoadEntities_540
	lea eax, [ebp-0x13c]
	mov [esp+0x10], eax
	lea eax, [ebp-0x140]
	mov [esp+0xc], eax
	lea eax, [ebp-0x144]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_f_f_f
	mov [esp], edi
	call sscanf
	jmp DynEnt_LoadEntities_320
DynEnt_LoadEntities_250:
	mov dword [esp+0x4], DynEnt_AllocPhysPreset
	mov dword [esp], _cstring_default
	call PhysPresetPrecache
	mov [ebx+0x30], eax
	mov eax, [ebx+0x20]
	test eax, eax
	jz DynEnt_LoadEntities_550
	lea eax, [ebp-0x2a0]
	mov [esp+0x20], eax
	cvtss2sd xmm0, [ebp-0x158]
	movsd [esp+0x18], xmm0
	cvtss2sd xmm0, [ebp-0x15c]
	movsd [esp+0x10], xmm0
	cvtss2sd xmm0, [ebp-0x160]
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_error_no_physics
	mov dword [esp], 0x14
	call Com_PrintError
	jmp DynEnt_LoadEntities_220
DynEnt_LoadEntities_530:
	mov [esp+0x4], edi
	lea eax, [ebp-0x1a0]
	mov [esp], eax
	call strcpy
	jmp DynEnt_LoadEntities_320
DynEnt_LoadEntities_540:
	mov dword [esp+0x4], _cstring_momofinertia
	lea edx, [ebp-0xa0]
	mov [esp], edx
	call Q_stricmp
	test eax, eax
	jnz DynEnt_LoadEntities_560
	lea eax, [ebp-0x130]
	mov [esp+0x10], eax
	lea eax, [ebp-0x134]
	mov [esp+0xc], eax
	lea eax, [ebp-0x138]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_f_f_f
	mov [esp], edi
	call sscanf
	jmp DynEnt_LoadEntities_320
DynEnt_LoadEntities_550:
	cvtss2sd xmm0, [ebp-0x158]
	movsd [esp+0x18], xmm0
	cvtss2sd xmm0, [ebp-0x15c]
	movsd [esp+0x10], xmm0
	cvtss2sd xmm0, [ebp-0x160]
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_error_no_physics1
	mov dword [esp], 0x14
	call Com_PrintError
	jmp DynEnt_LoadEntities_220
DynEnt_LoadEntities_560:
	mov dword [esp+0x4], _cstring_prodofinertia
	lea eax, [ebp-0xa0]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz DynEnt_LoadEntities_320
	lea eax, [ebp-0x124]
	mov [esp+0x10], eax
	lea eax, [ebp-0x128]
	mov [esp+0xc], eax
	lea eax, [ebp-0x12c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_f_f_f
	mov [esp], edi
	call sscanf
	jmp DynEnt_LoadEntities_320
	add [eax], al


;DynEnt_GetClientPose(unsigned short, DynEntityDrawType)
DynEnt_GetClientPose:
	push ebp
	mov ebp, esp
	movzx eax, word [ebp+0x8]
	shl eax, 0x5
	mov ecx, cm
	mov edx, [ebp+0xc]
	add eax, [ecx+edx*4+0x100]
	pop ebp
	ret


;DynEnt_GetEntityColl(DynEntityCollType, unsigned short)
DynEnt_GetEntityColl:
	push ebp
	mov ebp, esp
	movzx eax, word [ebp+0xc]
	lea eax, [eax+eax*4]
	mov ecx, [ebp+0x8]
	mov edx, cm
	mov edx, [edx+ecx*4+0x110]
	lea eax, [edx+eax*4]
	pop ebp
	ret
	nop
	add [eax], al


;DynEnt_GetEntityCount(DynEntityCollType)
DynEnt_GetEntityCount:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, cm
	movzx eax, word [edx+eax*2+0xf4]
	pop ebp
	ret


;DynEnt_GetEntityProps(DynEntityType)
DynEnt_GetEntityProps:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	lea eax, [eax*8+dynEntProps]
	pop ebp
	ret
	nop


;DynEnt_GetClientEntity(unsigned short, DynEntityDrawType)
DynEnt_GetClientEntity:
	push ebp
	mov ebp, esp
	movzx eax, word [ebp+0x8]
	lea eax, [eax+eax*2]
	mov ecx, [ebp+0xc]
	mov edx, cm
	mov edx, [edx+ecx*4+0x108]
	lea eax, [edx+eax*4]
	pop ebp
	ret
	nop


;DynEnt_GetClientModelPoseList()
DynEnt_GetClientModelPoseList:
	push ebp
	mov ebp, esp
	mov eax, cm
	mov eax, [eax+0x100]
	pop ebp
	ret


;Zero initialized global or static variables of DynEntity_load_obj:
SECTION .bss


;Initialized global or static variables of DynEntity_load_obj:
SECTION .data
dynEntClassNames: dd _cstring_dyn_brushmodel, _cstring_dyn_model, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of DynEntity_load_obj:
SECTION .rdata
dynEntProps: dd _cstring_invalid, 0x0, _cstring_clutter, 0x10001, _cstring_destruct, 0x1010001, 0x0, 0x0


;All cstrings:
SECTION .rdata
_cstring_classname:		db "classname",0
_cstring_found_d_dyn_enti:		db "Found [%d] Dyn Entities, Max is [%d]",0ah,0
_cstring_type:		db "type",0
_cstring_model:		db "model",0
_cstring_physicsmodel:		db "physicsmodel",0
_cstring_destroyefx:		db "destroyEfx",0
_cstring_destroypieces:		db "destroyPieces",0
_cstring_invalid_dyn_enti:		db "Invalid Dyn Entity type [%s]",0ah,0
_cstring_origin:		db "origin",0
_cstring_angles:		db "angles",0
_cstring_health:		db "health",0
_cstring_f_f_f:		db "%f %f %f",0
_cstring_couldnt_find_fx_:		db "Couldn",27h,"t find fx [%s] for Dyn Entity.",0ah,0
_cstring_couldnt_find_pie:		db "Couldn",27h,"t find pieces [%s] for Dyn Entity.",0ah,0
_cstring_couldnt_find_xmo:		db "Couldn",27h,"t find xmodel [%s] for Dyn Entity.",0ah,0
_cstring_dyn_entity_xmode:		db "Dyn Entity xmodel [%s] has no collision LOD set.",0ah,0
_cstring_physpreset:		db "physPreset",0
_cstring_centerofmass:		db "centerofmass",0
_cstring_default:		db "default",0
_cstring_error_no_physics:		db "ERROR: no physics preset specified for the DynEntity at [%.1f,%.1f,%.1f] with xModel [%s]",0ah,0
_cstring_momofinertia:		db "momofinertia",0
_cstring_error_no_physics1:		db "ERROR: no physics preset specified for the DynEntity at [%.1f,%.1f,%.1f]",0ah,0
_cstring_prodofinertia:		db "prodofinertia",0
_cstring_dyn_brushmodel:		db "dyn_brushmodel",0
_cstring_dyn_model:		db "dyn_model",0
_cstring_invalid:		db "invalid",0
_cstring_clutter:		db "clutter",0
_cstring_destruct:		db "destruct",0



;All constant floats and doubles:
SECTION .rdata

