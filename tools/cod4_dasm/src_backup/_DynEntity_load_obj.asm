;Imports of DynEntity_load_obj:
	extern _Z18Hunk_AllocInternali
	extern cm
	extern _Z16Com_EntityStringPi
	extern _Z9Com_ParsePPKc
	extern _Z10I_strncpyzPcPKci
	extern _Z9I_stricmpPKcS0_
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z10Com_MemsetPvii
	extern _Z14XModelPrecachePKcPFPviES3_
	extern _Z17XModelGetContentsPK6XModel
	extern _Z12AnglesToQuatPKfPf
	extern qsort
	extern strcpy
	extern _Z22Com_IsLegacyXModelNamePKc
	extern _Z18Com_StripExtensionPKcPc
	extern atoi
	extern sscanf
	extern _Z11FX_RegisterPKc
	extern _Z20XModelPiecesPrecachePKcPFPviE
	extern _Z18PhysPresetPrecachePKcPFPviE
	extern _Z14Com_PrintErroriPKcz

;Exports of DynEntity_load_obj:
	global dynEntProps
	global dynEntClassNames
	global _Z18DynEnt_AllocXModeli
	global _Z22DynEnt_AllocXModelColli
	global _Z22DynEnt_AllocPhysPreseti
	global _Z24DynEnt_AllocXModelPiecesi
	global _Z22DynEnt_CompareEntitiesPKvS0_
	global _Z12DynEnt_GetIdPK12DynEntityDef17DynEntityDrawType
	global _Z19DynEnt_GetEntityDeft17DynEntityDrawType
	global _Z19DynEnt_LoadEntitiesv
	global _Z20DynEnt_GetClientPoset17DynEntityDrawType
	global _Z20DynEnt_GetEntityColl17DynEntityCollTypet
	global _Z21DynEnt_GetEntityCount17DynEntityCollType
	global _Z21DynEnt_GetEntityProps13DynEntityType
	global _Z22DynEnt_GetClientEntityt17DynEntityDrawType
	global _Z29DynEnt_GetClientModelPoseListv


SECTION .text


;DynEnt_AllocXModel(int)
_Z18DynEnt_AllocXModeli:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z18Hunk_AllocInternali
	nop


;DynEnt_AllocXModelColl(int)
_Z22DynEnt_AllocXModelColli:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z18Hunk_AllocInternali
	nop


;DynEnt_AllocPhysPreset(int)
_Z22DynEnt_AllocPhysPreseti:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z18Hunk_AllocInternali
	nop


;DynEnt_AllocXModelPieces(int)
_Z24DynEnt_AllocXModelPiecesi:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z18Hunk_AllocInternali
	nop


;DynEnt_CompareEntities(void const*, void const*)
_Z22DynEnt_CompareEntitiesPKvS0_:
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
	jnz _Z22DynEnt_CompareEntitiesPKvS0__10
	mov eax, [esi]
	xor edx, edx
	cmp byte [eax*8+dynEntProps+0x4], 0x0
	setnz dl
	mov eax, [edi]
	cmp byte [eax*8+dynEntProps+0x4], 0x0
	setnz al
	movzx eax, al
	sub edx, eax
	jnz _Z22DynEnt_CompareEntitiesPKvS0__10
	test ecx, ecx
	jz _Z22DynEnt_CompareEntitiesPKvS0__20
	cmp [ebp-0x10], ebx
	sbb edx, edx
	or edx, 0x1
_Z22DynEnt_CompareEntitiesPKvS0__10:
	mov eax, edx
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22DynEnt_CompareEntitiesPKvS0__20:
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
_Z12DynEnt_GetIdPK12DynEntityDef17DynEntityDrawType:
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
_Z19DynEnt_GetEntityDeft17DynEntityDrawType:
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
_Z19DynEnt_LoadEntitiesv:
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
	call _Z16Com_EntityStringPi
	mov [ebp-0x20], eax
	mov dword [ebp-0x2f8], 0x0
	lea esi, [ebp-0x20]
_Z19DynEnt_LoadEntitiesv_20:
	mov [esp], esi
	call _Z9Com_ParsePPKc
	mov ebx, [ebp-0x20]
	test ebx, ebx
	jz _Z19DynEnt_LoadEntitiesv_10
	cmp byte [eax], 0x7b
	jnz _Z19DynEnt_LoadEntitiesv_10
	lea edi, [ebp-0x120]
_Z19DynEnt_LoadEntitiesv_30:
	mov [esp], esi
	call _Z9Com_ParsePPKc
	mov ecx, [ebp-0x20]
	test ecx, ecx
	jz _Z19DynEnt_LoadEntitiesv_20
	cmp byte [eax], 0x7d
	jz _Z19DynEnt_LoadEntitiesv_20
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z10I_strncpyzPcPKci
	mov [esp], esi
	call _Z9Com_ParsePPKc
	mov edx, [ebp-0x20]
	test edx, edx
	jz _Z19DynEnt_LoadEntitiesv_20
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], eax
	lea eax, [ebp-0xe0]
	mov [esp], eax
	call _Z10I_strncpyzPcPKci
	mov dword [esp+0x4], _cstring_classname
	mov [esp], edi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z19DynEnt_LoadEntitiesv_30
	mov ebx, dynEntClassNames
	mov eax, [ebx]
	mov [esp+0x4], eax
	lea edx, [ebp-0xe0]
	mov [esp], edx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z19DynEnt_LoadEntitiesv_40
_Z19DynEnt_LoadEntitiesv_50:
	add ebx, 0x4
	cmp ebx, dynEntClassNames+0x8
	jz _Z19DynEnt_LoadEntitiesv_30
	mov eax, [ebx]
	mov [esp+0x4], eax
	lea edx, [ebp-0xe0]
	mov [esp], edx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z19DynEnt_LoadEntitiesv_50
_Z19DynEnt_LoadEntitiesv_40:
	add dword [ebp-0x2f8], 0x1
	jmp _Z19DynEnt_LoadEntitiesv_30
_Z19DynEnt_LoadEntitiesv_10:
	cmp dword [ebp-0x2f8], 0xfff
	jg _Z19DynEnt_LoadEntitiesv_60
	mov esi, [ebp-0x2f8]
	test esi, esi
	jnz _Z19DynEnt_LoadEntitiesv_70
_Z19DynEnt_LoadEntitiesv_270:
	add esp, 0x32c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19DynEnt_LoadEntitiesv_60:
	mov dword [esp+0xc], 0xfff
	mov eax, [ebp-0x2f8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_found_d_dyn_enti
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z19DynEnt_LoadEntitiesv_70:
	mov edx, [ebp-0x2f8]
	lea eax, [edx+edx*2]
	shl eax, 0x5
	mov [esp], eax
	call _Z18Hunk_AllocInternali
	mov [ebp-0x2fc], eax
	mov dword [esp], 0x0
	call _Z16Com_EntityStringPi
	mov [ebp-0x1c], eax
	mov dword [ebp-0x2f4], 0x0
_Z19DynEnt_LoadEntitiesv_140:
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call _Z9Com_ParsePPKc
	mov ebx, [ebp-0x1c]
	test ebx, ebx
	jz _Z19DynEnt_LoadEntitiesv_80
_Z19DynEnt_LoadEntitiesv_260:
	cmp byte [eax], 0x7b
	jnz _Z19DynEnt_LoadEntitiesv_80
	mov dword [esp+0x8], 0x1c0
	mov dword [esp+0x4], 0x0
	lea edx, [ebp-0x2e0]
	mov [esp], edx
	call _Z10Com_MemsetPvii
	xor ebx, ebx
	lea edi, [ebp-0x60]
_Z19DynEnt_LoadEntitiesv_320:
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call _Z9Com_ParsePPKc
	mov ecx, [ebp-0x1c]
	test ecx, ecx
	jz _Z19DynEnt_LoadEntitiesv_90
_Z19DynEnt_LoadEntitiesv_130:
	cmp byte [eax], 0x7d
	jz _Z19DynEnt_LoadEntitiesv_90
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], eax
	lea edx, [ebp-0xa0]
	mov [esp], edx
	call _Z10I_strncpyzPcPKci
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call _Z9Com_ParsePPKc
	mov edx, [ebp-0x1c]
	test edx, edx
	jz _Z19DynEnt_LoadEntitiesv_90
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z10I_strncpyzPcPKci
	mov dword [esp+0x4], _cstring_classname
	lea edx, [ebp-0xa0]
	mov [esp], edx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z19DynEnt_LoadEntitiesv_100
	mov ebx, dynEntClassNames
	mov esi, dynEntClassNames+0x8
_Z19DynEnt_LoadEntitiesv_120:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z19DynEnt_LoadEntitiesv_110
	add ebx, 0x4
	cmp esi, ebx
	jnz _Z19DynEnt_LoadEntitiesv_120
	xor ebx, ebx
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call _Z9Com_ParsePPKc
	mov ecx, [ebp-0x1c]
	test ecx, ecx
	jnz _Z19DynEnt_LoadEntitiesv_130
_Z19DynEnt_LoadEntitiesv_90:
	test bl, bl
	jz _Z19DynEnt_LoadEntitiesv_140
	mov edx, [ebp-0x2f4]
	lea eax, [edx+edx*2]
	shl eax, 0x5
	mov ebx, [ebp-0x2fc]
	add ebx, eax
	mov dword [esp+0x8], 0x60
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call _Z10Com_MemsetPvii
	cmp byte [ebp-0x2e0], 0x0
	jnz _Z19DynEnt_LoadEntitiesv_150
	mov dword [ebx], 0x1
_Z19DynEnt_LoadEntitiesv_410:
	cmp byte [ebp-0x2a0], 0x2a
	jz _Z19DynEnt_LoadEntitiesv_160
	mov dword [esp+0x8], _Z22DynEnt_AllocXModelColli
	mov dword [esp+0x4], _Z18DynEnt_AllocXModeli
	lea esi, [ebp-0x2a0]
	mov [esp], esi
	call _Z14XModelPrecachePKcPFPviES3_
	mov [ebx+0x20], eax
	test eax, eax
	jz _Z19DynEnt_LoadEntitiesv_170
	mov [esp], eax
	call _Z17XModelGetContentsPK6XModel
	mov [ebx+0x5c], eax
	mov eax, [ebx+0x20]
	cmp word [eax+0xc6], 0x0
	js _Z19DynEnt_LoadEntitiesv_180
	cmp byte [ebp-0x260], 0x2a
	jz _Z19DynEnt_LoadEntitiesv_190
_Z19DynEnt_LoadEntitiesv_450:
	cmp byte [ebp-0x220], 0x0
	jnz _Z19DynEnt_LoadEntitiesv_200
_Z19DynEnt_LoadEntitiesv_460:
	cmp byte [ebp-0x1e0], 0x0
	jnz _Z19DynEnt_LoadEntitiesv_210
_Z19DynEnt_LoadEntitiesv_470:
	mov dword [ebx+0x30], 0x0
	mov eax, [ebx]
	cmp byte [eax*8+dynEntProps+0x6], 0x0
	jz _Z19DynEnt_LoadEntitiesv_220
	mov eax, [ebx+0x20]
	test eax, eax
	jz _Z19DynEnt_LoadEntitiesv_230
	mov eax, [eax+0xd4]
	test eax, eax
	jz _Z19DynEnt_LoadEntitiesv_230
	mov [ebx+0x30], eax
_Z19DynEnt_LoadEntitiesv_230:
	cmp byte [ebp-0x1a0], 0x0
	jnz _Z19DynEnt_LoadEntitiesv_240
_Z19DynEnt_LoadEntitiesv_480:
	mov eax, [ebx+0x30]
	test eax, eax
	jz _Z19DynEnt_LoadEntitiesv_250
_Z19DynEnt_LoadEntitiesv_220:
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
	call _Z12AnglesToQuatPKfPf
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
	call _Z9Com_ParsePPKc
	mov ebx, [ebp-0x1c]
	test ebx, ebx
	jnz _Z19DynEnt_LoadEntitiesv_260
_Z19DynEnt_LoadEntitiesv_80:
	mov eax, [ebp-0x2f4]
	test eax, eax
	jz _Z19DynEnt_LoadEntitiesv_270
	mov dword [esp+0xc], _Z22DynEnt_CompareEntitiesPKvS0_
	mov dword [esp+0x8], 0x60
	mov eax, [ebp-0x2f4]
	mov [esp+0x4], eax
	mov edx, [ebp-0x2fc]
	mov [esp], edx
	call qsort
	mov edi, [ebp-0x2f4]
	test edi, edi
	jg _Z19DynEnt_LoadEntitiesv_280
	mov ebx, cm
_Z19DynEnt_LoadEntitiesv_500:
	mov dword [ebp-0x2ec], 0x0
	mov [ebp-0x2f0], ebx
	mov edi, ebx
	movzx eax, word [edi+0xf4]
	test ax, ax
	jnz _Z19DynEnt_LoadEntitiesv_290
_Z19DynEnt_LoadEntitiesv_300:
	add dword [ebp-0x2ec], 0x1
	add edi, 0x2
	add dword [ebp-0x2f0], 0x4
	cmp dword [ebp-0x2ec], 0x2
	jz _Z19DynEnt_LoadEntitiesv_270
	movzx eax, word [edi+0xf4]
	test ax, ax
	jz _Z19DynEnt_LoadEntitiesv_300
_Z19DynEnt_LoadEntitiesv_290:
	movzx ebx, ax
	shl ebx, 0x5
	mov [esp], ebx
	call _Z18Hunk_AllocInternali
	mov esi, eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call _Z10Com_MemsetPvii
	mov eax, [ebp-0x2f0]
	mov [eax+0x100], esi
	movzx ebx, word [edi+0xf4]
	lea ebx, [ebx+ebx*2]
	shl ebx, 0x2
	mov [esp], ebx
	call _Z18Hunk_AllocInternali
	mov esi, eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call _Z10Com_MemsetPvii
	mov edx, [ebp-0x2f0]
	mov [edx+0x108], esi
	movzx ebx, word [edi+0xf4]
	lea ebx, [ebx+ebx*4]
	shl ebx, 0x2
	mov [esp], ebx
	call _Z18Hunk_AllocInternali
	mov esi, eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call _Z10Com_MemsetPvii
	mov eax, [ebp-0x2f0]
	mov [eax+0x110], esi
	jmp _Z19DynEnt_LoadEntitiesv_300
_Z19DynEnt_LoadEntitiesv_100:
	mov dword [esp+0x4], _cstring_type
	lea eax, [ebp-0xa0]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z19DynEnt_LoadEntitiesv_310
	mov [esp+0x4], edi
	lea edx, [ebp-0x2e0]
	mov [esp], edx
	call strcpy
	jmp _Z19DynEnt_LoadEntitiesv_320
_Z19DynEnt_LoadEntitiesv_310:
	mov dword [esp+0x4], _cstring_model
	lea eax, [ebp-0xa0]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z19DynEnt_LoadEntitiesv_330
	mov [esp], edi
	call _Z22Com_IsLegacyXModelNamePKc
	test eax, eax
	jz _Z19DynEnt_LoadEntitiesv_340
	lea eax, [ebp-0x59]
	mov [esp+0x4], eax
	lea eax, [ebp-0x2a0]
	mov [esp], eax
	call strcpy
	jmp _Z19DynEnt_LoadEntitiesv_320
_Z19DynEnt_LoadEntitiesv_330:
	mov dword [esp+0x4], _cstring_physicsmodel
	lea edx, [ebp-0xa0]
	mov [esp], edx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z19DynEnt_LoadEntitiesv_350
	mov [esp], edi
	call _Z22Com_IsLegacyXModelNamePKc
	test eax, eax
	jz _Z19DynEnt_LoadEntitiesv_360
	lea eax, [ebp-0x59]
	mov [esp+0x4], eax
	lea eax, [ebp-0x260]
	mov [esp], eax
	call strcpy
	jmp _Z19DynEnt_LoadEntitiesv_320
_Z19DynEnt_LoadEntitiesv_110:
	mov ebx, 0x1
	jmp _Z19DynEnt_LoadEntitiesv_320
_Z19DynEnt_LoadEntitiesv_340:
	mov [esp+0x4], edi
	lea eax, [ebp-0x2a0]
	mov [esp], eax
	call strcpy
	jmp _Z19DynEnt_LoadEntitiesv_320
_Z19DynEnt_LoadEntitiesv_350:
	mov dword [esp+0x4], _cstring_destroyefx
	lea eax, [ebp-0xa0]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z19DynEnt_LoadEntitiesv_370
	lea eax, [ebp-0x220]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z18Com_StripExtensionPKcPc
	jmp _Z19DynEnt_LoadEntitiesv_320
_Z19DynEnt_LoadEntitiesv_360:
	mov [esp+0x4], edi
	lea eax, [ebp-0x260]
	mov [esp], eax
	call strcpy
	jmp _Z19DynEnt_LoadEntitiesv_320
_Z19DynEnt_LoadEntitiesv_370:
	mov dword [esp+0x4], _cstring_destroypieces
	lea edx, [ebp-0xa0]
	mov [esp], edx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z19DynEnt_LoadEntitiesv_380
	lea eax, [ebp-0x1e0]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z18Com_StripExtensionPKcPc
	jmp _Z19DynEnt_LoadEntitiesv_320
_Z19DynEnt_LoadEntitiesv_150:
	xor edi, edi
	mov esi, dynEntProps
_Z19DynEnt_LoadEntitiesv_400:
	mov eax, [esi]
	mov [esp+0x4], eax
	lea eax, [ebp-0x2e0]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z19DynEnt_LoadEntitiesv_390
	add edi, 0x1
	add esi, 0x8
	cmp edi, 0x3
	jnz _Z19DynEnt_LoadEntitiesv_400
	xor eax, eax
_Z19DynEnt_LoadEntitiesv_520:
	mov [ebx], eax
	test eax, eax
	jnz _Z19DynEnt_LoadEntitiesv_410
	lea edx, [ebp-0x2e0]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_invalid_dyn_enti
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z19DynEnt_LoadEntitiesv_140
_Z19DynEnt_LoadEntitiesv_380:
	mov dword [esp+0x4], _cstring_origin
	lea eax, [ebp-0xa0]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z19DynEnt_LoadEntitiesv_420
	mov dword [esp+0x4], _cstring_angles
	lea edx, [ebp-0xa0]
	mov [esp], edx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z19DynEnt_LoadEntitiesv_430
	mov dword [esp+0x4], _cstring_health
	lea eax, [ebp-0xa0]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z19DynEnt_LoadEntitiesv_440
	mov [esp], edi
	call atoi
	mov [ebp-0x148], eax
	jmp _Z19DynEnt_LoadEntitiesv_320
_Z19DynEnt_LoadEntitiesv_420:
	lea eax, [ebp-0x158]
	mov [esp+0x10], eax
	lea eax, [ebp-0x15c]
	mov [esp+0xc], eax
	lea eax, [ebp-0x160]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_f_f_f
	mov [esp], edi
	call sscanf
	jmp _Z19DynEnt_LoadEntitiesv_320
_Z19DynEnt_LoadEntitiesv_160:
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
	jnz _Z19DynEnt_LoadEntitiesv_450
_Z19DynEnt_LoadEntitiesv_190:
	lea eax, [ebp-0x25f]
	mov [esp], eax
	call atoi
	mov [ebx+0x26], ax
	cmp byte [ebp-0x220], 0x0
	jz _Z19DynEnt_LoadEntitiesv_460
_Z19DynEnt_LoadEntitiesv_200:
	lea esi, [ebp-0x220]
	mov [esp], esi
	call _Z11FX_RegisterPKc
	mov [ebx+0x28], eax
	test eax, eax
	jnz _Z19DynEnt_LoadEntitiesv_460
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_couldnt_find_fx_
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z19DynEnt_LoadEntitiesv_140
_Z19DynEnt_LoadEntitiesv_210:
	mov dword [esp+0x4], _Z24DynEnt_AllocXModelPiecesi
	lea esi, [ebp-0x1e0]
	mov [esp], esi
	call _Z20XModelPiecesPrecachePKcPFPviE
	mov [ebx+0x2c], eax
	test eax, eax
	jnz _Z19DynEnt_LoadEntitiesv_470
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_couldnt_find_pie
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z19DynEnt_LoadEntitiesv_140
_Z19DynEnt_LoadEntitiesv_170:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_couldnt_find_xmo
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z19DynEnt_LoadEntitiesv_140
_Z19DynEnt_LoadEntitiesv_240:
	mov dword [esp+0x4], _Z22DynEnt_AllocPhysPreseti
	lea eax, [ebp-0x1a0]
	mov [esp], eax
	call _Z18PhysPresetPrecachePKcPFPviE
	mov [ebx+0x30], eax
	jmp _Z19DynEnt_LoadEntitiesv_480
_Z19DynEnt_LoadEntitiesv_280:
	mov edx, [ebp-0x2fc]
	xor ecx, ecx
	mov ebx, cm
	jmp _Z19DynEnt_LoadEntitiesv_490
_Z19DynEnt_LoadEntitiesv_510:
	add word [ebx+eax*2+0xf4], 0x1
	add ecx, 0x1
	add edx, 0x60
	cmp ecx, [ebp-0x2f4]
	jz _Z19DynEnt_LoadEntitiesv_500
_Z19DynEnt_LoadEntitiesv_490:
	xor eax, eax
	cmp dword [edx+0x20], 0x0
	setz al
	mov esi, [ebx+eax*4+0xf8]
	test esi, esi
	jnz _Z19DynEnt_LoadEntitiesv_510
	mov [ebx+eax*4+0xf8], edx
	jmp _Z19DynEnt_LoadEntitiesv_510
_Z19DynEnt_LoadEntitiesv_430:
	lea eax, [ebp-0x14c]
	mov [esp+0x10], eax
	lea eax, [ebp-0x150]
	mov [esp+0xc], eax
	lea eax, [ebp-0x154]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_f_f_f
	mov [esp], edi
	call sscanf
	jmp _Z19DynEnt_LoadEntitiesv_320
_Z19DynEnt_LoadEntitiesv_180:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_dyn_entity_xmode
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z19DynEnt_LoadEntitiesv_140
_Z19DynEnt_LoadEntitiesv_390:
	mov eax, edi
	jmp _Z19DynEnt_LoadEntitiesv_520
_Z19DynEnt_LoadEntitiesv_440:
	mov dword [esp+0x4], _cstring_physpreset
	lea edx, [ebp-0xa0]
	mov [esp], edx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z19DynEnt_LoadEntitiesv_530
	mov dword [esp+0x4], _cstring_centerofmass
	lea eax, [ebp-0xa0]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z19DynEnt_LoadEntitiesv_540
	lea eax, [ebp-0x13c]
	mov [esp+0x10], eax
	lea eax, [ebp-0x140]
	mov [esp+0xc], eax
	lea eax, [ebp-0x144]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_f_f_f
	mov [esp], edi
	call sscanf
	jmp _Z19DynEnt_LoadEntitiesv_320
_Z19DynEnt_LoadEntitiesv_250:
	mov dword [esp+0x4], _Z22DynEnt_AllocPhysPreseti
	mov dword [esp], _cstring_default
	call _Z18PhysPresetPrecachePKcPFPviE
	mov [ebx+0x30], eax
	mov eax, [ebx+0x20]
	test eax, eax
	jz _Z19DynEnt_LoadEntitiesv_550
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
	call _Z14Com_PrintErroriPKcz
	jmp _Z19DynEnt_LoadEntitiesv_220
_Z19DynEnt_LoadEntitiesv_530:
	mov [esp+0x4], edi
	lea eax, [ebp-0x1a0]
	mov [esp], eax
	call strcpy
	jmp _Z19DynEnt_LoadEntitiesv_320
_Z19DynEnt_LoadEntitiesv_540:
	mov dword [esp+0x4], _cstring_momofinertia
	lea edx, [ebp-0xa0]
	mov [esp], edx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z19DynEnt_LoadEntitiesv_560
	lea eax, [ebp-0x130]
	mov [esp+0x10], eax
	lea eax, [ebp-0x134]
	mov [esp+0xc], eax
	lea eax, [ebp-0x138]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_f_f_f
	mov [esp], edi
	call sscanf
	jmp _Z19DynEnt_LoadEntitiesv_320
_Z19DynEnt_LoadEntitiesv_550:
	cvtss2sd xmm0, [ebp-0x158]
	movsd [esp+0x18], xmm0
	cvtss2sd xmm0, [ebp-0x15c]
	movsd [esp+0x10], xmm0
	cvtss2sd xmm0, [ebp-0x160]
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_error_no_physics1
	mov dword [esp], 0x14
	call _Z14Com_PrintErroriPKcz
	jmp _Z19DynEnt_LoadEntitiesv_220
_Z19DynEnt_LoadEntitiesv_560:
	mov dword [esp+0x4], _cstring_prodofinertia
	lea eax, [ebp-0xa0]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z19DynEnt_LoadEntitiesv_320
	lea eax, [ebp-0x124]
	mov [esp+0x10], eax
	lea eax, [ebp-0x128]
	mov [esp+0xc], eax
	lea eax, [ebp-0x12c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_f_f_f
	mov [esp], edi
	call sscanf
	jmp _Z19DynEnt_LoadEntitiesv_320
	add [eax], al


;DynEnt_GetClientPose(unsigned short, DynEntityDrawType)
_Z20DynEnt_GetClientPoset17DynEntityDrawType:
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
_Z20DynEnt_GetEntityColl17DynEntityCollTypet:
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
_Z21DynEnt_GetEntityCount17DynEntityCollType:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, cm
	movzx eax, word [edx+eax*2+0xf4]
	pop ebp
	ret


;DynEnt_GetEntityProps(DynEntityType)
_Z21DynEnt_GetEntityProps13DynEntityType:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	lea eax, [eax*8+dynEntProps]
	pop ebp
	ret
	nop


;DynEnt_GetClientEntity(unsigned short, DynEntityDrawType)
_Z22DynEnt_GetClientEntityt17DynEntityDrawType:
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
_Z29DynEnt_GetClientModelPoseListv:
	push ebp
	mov ebp, esp
	mov eax, cm
	mov eax, [eax+0x100]
	pop ebp
	ret


;Initialized global or static variables of DynEntity_load_obj:
SECTION .data
dynEntClassNames: dd _cstring_dyn_brushmodel, _cstring_dyn_model, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of DynEntity_load_obj:
SECTION .rdata
dynEntProps: dd _cstring_invalid, 0x0, _cstring_clutter, 0x10001, _cstring_destruct, 0x1010001, 0x0, 0x0


;Zero initialized global or static variables of DynEntity_load_obj:
SECTION .bss


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

