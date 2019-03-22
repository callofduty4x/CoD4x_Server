;Imports of db_registry:
	extern strcmp

;Exports of db_registry:
	global DB_InitPoolHeaderHandler
	global DB_FreeXAssetHeaderHandler
	global DB_AllocXAssetHeaderHandler
	global DB_DynamicCloneXAssetHandler
SECTION .text

;DB_DynamicCloneMenu(XAssetHeader, XAssetHeader, int)
DB_DynamicCloneMenu:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edx, [ebp+0x8]
	mov eax, [edx+0x50]
	mov edx, [ebp+0xc]
	mov [edx+0x50], eax
	mov eax, [edx+0xa4]
	test eax, eax
	jle DB_DynamicCloneMenu_10
	mov dword [ebp-0x1c], 0x0
	mov edx, [ebp+0xc]
DB_DynamicCloneMenu_70:
	mov eax, [edx+0x118]
	mov edx, [ebp-0x1c]
	mov edi, [eax+edx*4]
	mov eax, [edi]
	mov [ebp-0x28], eax
	test eax, eax
	jz DB_DynamicCloneMenu_20
	mov edx, [ebp+0x8]
	mov edx, [edx+0xa4]
	mov [ebp-0x24], edx
	test edx, edx
	jle DB_DynamicCloneMenu_20
	mov eax, [ebp+0x8]
	mov eax, [eax+0x118]
	mov [ebp-0x20], eax
	xor ebx, ebx
	mov edx, eax
	jmp DB_DynamicCloneMenu_30
DB_DynamicCloneMenu_60:
	mov edx, [ebp-0x20]
DB_DynamicCloneMenu_30:
	mov esi, [edx+ebx*4]
	mov eax, [esi]
	test eax, eax
	jz DB_DynamicCloneMenu_40
	mov edx, [ebp-0x28]
	mov [esp+0x4], edx
	mov [esp], eax
	call strcmp
	test eax, eax
	jz DB_DynamicCloneMenu_50
DB_DynamicCloneMenu_40:
	add ebx, 0x1
	cmp ebx, [ebp-0x24]
	jnz DB_DynamicCloneMenu_60
DB_DynamicCloneMenu_20:
	and dword [edi+0x50], 0xfffffffd
	add dword [ebp-0x1c], 0x1
	mov eax, [ebp-0x1c]
	mov edx, [ebp+0xc]
	cmp [edx+0xa4], eax
	jg DB_DynamicCloneMenu_70
DB_DynamicCloneMenu_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DB_DynamicCloneMenu_50:
	mov eax, [esi+0x50]
	mov [edi+0x50], eax
	and dword [edi+0x50], 0xfffffffd
	add dword [ebp-0x1c], 0x1
	mov eax, [ebp-0x1c]
	mov edx, [ebp+0xc]
	cmp [edx+0xa4], eax
	jg DB_DynamicCloneMenu_70
	jmp DB_DynamicCloneMenu_10
	nop
	

;void DB_InitPool<XModelPieces>(void*, int)
DB_InitPool_XModelPieces:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	lea eax, [esi+0x4]
	mov [esi], eax
	mov ebx, [ebp+0xc]
	sub ebx, 0x1
	test ebx, ebx
	jle DB_InitPool_XModelPieces_10
	mov edx, esi
	xor ecx, ecx
DB_InitPool_XModelPieces_20:
	add ecx, 0x1
	add eax, 0xc
	mov [edx+0x4], eax
	add edx, 0xc
	cmp ecx, ebx
	jnz DB_InitPool_XModelPieces_20
DB_InitPool_XModelPieces_10:
	lea eax, [ebx+ebx*2]
	mov dword [esi+eax*4+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret


;void DB_InitPool<PhysPreset>(void*, int)
DB_InitPool_PhysPreset:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	lea eax, [esi+0x4]
	mov [esi], eax
	mov ebx, [ebp+0xc]
	sub ebx, 0x1
	test ebx, ebx
	jle DB_InitPool_PhysPreset_10
	mov edx, esi
	xor ecx, ecx
DB_InitPool_PhysPreset_20:
	add ecx, 0x1
	add eax, 0x2c
	mov [edx+0x4], eax
	add edx, 0x2c
	cmp ecx, ebx
	jnz DB_InitPool_PhysPreset_20
DB_InitPool_PhysPreset_10:
	lea eax, [ebx+ebx*4]
	lea eax, [ebx+eax*2]
	mov dword [esi+eax*4+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;void DB_InitPool<XAnimParts>(void*, int)
DB_InitPool_XAnimParts:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	lea eax, [esi+0x4]
	mov [esi], eax
	mov ebx, [ebp+0xc]
	sub ebx, 0x1
	test ebx, ebx
	jle DB_InitPool_XAnimParts_10
	mov edx, esi
	xor ecx, ecx
DB_InitPool_XAnimParts_20:
	add ecx, 0x1
	add eax, 0x58
	mov [edx+0x4], eax
	add edx, 0x58
	cmp ecx, ebx
	jnz DB_InitPool_XAnimParts_20
DB_InitPool_XAnimParts_10:
	lea eax, [ebx+ebx*4]
	lea eax, [ebx+eax*2]
	mov dword [esi+eax*8+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;void DB_InitPool<XModel>(void*, int)
DB_InitPool_XModel:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	lea eax, [esi+0x4]
	mov [esi], eax
	mov ebx, [ebp+0xc]
	sub ebx, 0x1
	test ebx, ebx
	jle DB_InitPool_XModel_10
	mov edx, esi
	xor ecx, ecx
DB_InitPool_XModel_20:
	add ecx, 0x1
	add eax, 0xdc
	mov [edx+0x4], eax
	add edx, 0xdc
	cmp ecx, ebx
	jnz DB_InitPool_XModel_20
DB_InitPool_XModel_10:
	lea eax, [ebx+ebx*4]
	lea eax, [ebx+eax*2]
	lea eax, [eax+eax*4]
	mov dword [esi+eax*4+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;void DB_InitPool<Material>(void*, int)
DB_InitPool_Material:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	lea eax, [esi+0x4]
	mov [esi], eax
	mov ebx, [ebp+0xc]
	sub ebx, 0x1
	test ebx, ebx
	jle DB_InitPool_Material_10
	mov edx, esi
	xor ecx, ecx
DB_InitPool_Material_20:
	add ecx, 0x1
	add eax, 0x50
	mov [edx+0x4], eax
	add edx, 0x50
	cmp ecx, ebx
	jnz DB_InitPool_Material_20
DB_InitPool_Material_10:
	lea eax, [ebx+ebx*4]
	shl eax, 0x4
	mov dword [eax+esi+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;void DB_InitPool<MaterialTechniqueSet>(void*, int)
DB_InitPool_MaterialTechniqueSet:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	lea eax, [esi+0x4]
	mov [esi], eax
	mov ebx, [ebp+0xc]
	sub ebx, 0x1
	test ebx, ebx
	jle DB_InitPool_MaterialTechniqueSet_10
	mov edx, esi
	xor ecx, ecx
DB_InitPool_MaterialTechniqueSet_20:
	add ecx, 0x1
	add eax, 0x94
	mov [edx+0x4], eax
	add edx, 0x94
	cmp ecx, ebx
	jnz DB_InitPool_MaterialTechniqueSet_20
DB_InitPool_MaterialTechniqueSet_10:
	lea eax, [ebx+ebx*8]
	lea eax, [ebx+eax*4]
	mov dword [esi+eax*4+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret


;void DB_InitPool<GfxImage>(void*, int)
DB_InitPool_GfxImage:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	lea eax, [esi+0x4]
	mov [esi], eax
	mov ebx, [ebp+0xc]
	sub ebx, 0x1
	test ebx, ebx
	jle DB_InitPool_GfxImage_10
	mov edx, esi
	xor ecx, ecx
DB_InitPool_GfxImage_20:
	add ecx, 0x1
	add eax, 0x24
	mov [edx+0x4], eax
	add edx, 0x24
	cmp ecx, ebx
	jnz DB_InitPool_GfxImage_20
DB_InitPool_GfxImage_10:
	lea eax, [ebx+ebx*8]
	mov dword [esi+eax*4+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret


;void DB_InitPool<snd_alias_list_t>(void*, int)
DB_InitPool_snd_alias_list_t:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	lea eax, [esi+0x4]
	mov [esi], eax
	mov ebx, [ebp+0xc]
	sub ebx, 0x1
	test ebx, ebx
	jle DB_InitPool_snd_alias_list_t_10
	mov edx, esi
	xor ecx, ecx
DB_InitPool_snd_alias_list_t_20:
	add ecx, 0x1
	add eax, 0xc
	mov [edx+0x4], eax
	add edx, 0xc
	cmp ecx, ebx
	jnz DB_InitPool_snd_alias_list_t_20
DB_InitPool_snd_alias_list_t_10:
	lea eax, [ebx+ebx*2]
	mov dword [esi+eax*4+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret


;void DB_InitPool<SndCurve>(void*, int)
DB_InitPool_SndCurve:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	lea eax, [esi+0x4]
	mov [esi], eax
	mov ebx, [ebp+0xc]
	sub ebx, 0x1
	test ebx, ebx
	jle DB_InitPool_SndCurve_10
	mov edx, esi
	xor ecx, ecx
DB_InitPool_SndCurve_20:
	add ecx, 0x1
	add eax, 0x48
	mov [edx+0x4], eax
	add edx, 0x48
	cmp ecx, ebx
	jnz DB_InitPool_SndCurve_20
DB_InitPool_SndCurve_10:
	lea eax, [ebx+ebx*8]
	mov dword [esi+eax*8+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret


;void DB_InitPool<LoadedSound>(void*, int)
DB_InitPool_LoadedSound:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	lea eax, [esi+0x4]
	mov [esi], eax
	mov ebx, [ebp+0xc]
	sub ebx, 0x1
	test ebx, ebx
	jle DB_InitPool_LoadedSound_10
	mov edx, esi
	xor ecx, ecx
DB_InitPool_LoadedSound_20:
	add ecx, 0x1
	add eax, 0x2c
	mov [edx+0x4], eax
	add edx, 0x2c
	cmp ecx, ebx
	jnz DB_InitPool_LoadedSound_20
DB_InitPool_LoadedSound_10:
	lea eax, [ebx+ebx*4]
	lea eax, [ebx+eax*2]
	mov dword [esi+eax*4+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;DB_InitSingleton(void*, int)
DB_InitSingleton:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;void DB_InitPool<MapEnts>(void*, int)
DB_InitPool_MapEnts:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	lea eax, [esi+0x4]
	mov [esi], eax
	mov ebx, [ebp+0xc]
	sub ebx, 0x1
	test ebx, ebx
	jle DB_InitPool_MapEnts_10
	mov edx, esi
	xor ecx, ecx
DB_InitPool_MapEnts_20:
	add ecx, 0x1
	add eax, 0xc
	mov [edx+0x4], eax
	add edx, 0xc
	cmp ecx, ebx
	jnz DB_InitPool_MapEnts_20
DB_InitPool_MapEnts_10:
	lea eax, [ebx+ebx*2]
	mov dword [esi+eax*4+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret


;void DB_InitPool<GfxLightDef>(void*, int)
DB_InitPool_GfxLightDef:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	lea eax, [esi+0x4]
	mov [esi], eax
	mov ebx, [ebp+0xc]
	sub ebx, 0x1
	test ebx, ebx
	jle DB_InitPool_GfxLightDef_10
	mov edx, esi
	xor ecx, ecx
DB_InitPool_GfxLightDef_20:
	add ecx, 0x1
	add eax, 0x10
	mov [edx+0x4], eax
	add edx, 0x10
	cmp ecx, ebx
	jnz DB_InitPool_GfxLightDef_20
DB_InitPool_GfxLightDef_10:
	shl ebx, 0x4
	mov dword [ebx+esi+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret


;void DB_InitPool<Font_s>(void*, int)
DB_InitPool_Font_s:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	lea eax, [esi+0x4]
	mov [esi], eax
	mov ebx, [ebp+0xc]
	sub ebx, 0x1
	test ebx, ebx
	jle DB_InitPool_Font_s_10
	mov edx, esi
	xor ecx, ecx
DB_InitPool_Font_s_20:
	add ecx, 0x1
	add eax, 0x18
	mov [edx+0x4], eax
	add edx, 0x18
	cmp ecx, ebx
	jnz DB_InitPool_Font_s_20
DB_InitPool_Font_s_10:
	lea eax, [ebx+ebx*2]
	mov dword [esi+eax*8+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret


;void DB_InitPool<MenuList>(void*, int)
DB_InitPool_MenuList:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	lea eax, [esi+0x4]
	mov [esi], eax
	mov ebx, [ebp+0xc]
	sub ebx, 0x1
	test ebx, ebx
	jle DB_InitPool_MenuList_10
	mov edx, esi
	xor ecx, ecx
DB_InitPool_MenuList_20:
	add ecx, 0x1
	add eax, 0xc
	mov [edx+0x4], eax
	add edx, 0xc
	cmp ecx, ebx
	jnz DB_InitPool_MenuList_20
DB_InitPool_MenuList_10:
	lea eax, [ebx+ebx*2]
	mov dword [esi+eax*4+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret


;void DB_InitPool<menuDef_t>(void*, int)
DB_InitPool_menuDef_t:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	lea eax, [esi+0x4]
	mov [esi], eax
	mov ebx, [ebp+0xc]
	sub ebx, 0x1
	test ebx, ebx
	jle DB_InitPool_menuDef_t_10
	mov edx, esi
	xor ecx, ecx
DB_InitPool_menuDef_t_20:
	add ecx, 0x1
	add eax, 0x11c
	mov [edx+0x4], eax
	add edx, 0x11c
	cmp ecx, ebx
	jnz DB_InitPool_menuDef_t_20
DB_InitPool_menuDef_t_10:
	lea eax, [ebx+ebx*8]
	shl eax, 0x3
	sub eax, ebx
	mov dword [esi+eax*4+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret


;void DB_InitPool<LocalizeEntry>(void*, int)
DB_InitPool_LocalizeEntry:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	lea eax, [esi+0x4]
	mov [esi], eax
	mov ebx, [ebp+0xc]
	sub ebx, 0x1
	test ebx, ebx
	jle DB_InitPool_LocalizeEntry_10
	mov edx, esi
	xor ecx, ecx
DB_InitPool_LocalizeEntry_20:
	add ecx, 0x1
	add eax, 0x8
	mov [edx+0x4], eax
	add edx, 0x8
	cmp ecx, ebx
	jnz DB_InitPool_LocalizeEntry_20
DB_InitPool_LocalizeEntry_10:
	mov dword [esi+ebx*8+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;void DB_InitPool<WeaponDef>(void*, int)
DB_InitPool_WeaponDef:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	lea eax, [esi+0x4]
	mov [esi], eax
	mov ebx, [ebp+0xc]
	sub ebx, 0x1
	test ebx, ebx
	jle DB_InitPool_WeaponDef_10
	mov edx, esi
	xor ecx, ecx
DB_InitPool_WeaponDef_20:
	add ecx, 0x1
	add eax, 0x878
	mov [edx+0x4], eax
	add edx, 0x878
	cmp ecx, ebx
	jnz DB_InitPool_WeaponDef_20
DB_InitPool_WeaponDef_10:
	mov eax, ebx
	shl eax, 0x4
	mov edx, ebx
	shl edx, 0x8
	add eax, edx
	sub eax, ebx
	mov dword [esi+eax*8+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret


;void DB_InitPool<FxEffectDef>(void*, int)
DB_InitPool_FxEffectDef:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	lea eax, [esi+0x4]
	mov [esi], eax
	mov ebx, [ebp+0xc]
	sub ebx, 0x1
	test ebx, ebx
	jle DB_InitPool_FxEffectDef_10
	mov edx, esi
	xor ecx, ecx
DB_InitPool_FxEffectDef_20:
	add ecx, 0x1
	add eax, 0x20
	mov [edx+0x4], eax
	add edx, 0x20
	cmp ecx, ebx
	jnz DB_InitPool_FxEffectDef_20
DB_InitPool_FxEffectDef_10:
	shl ebx, 0x5
	mov dword [ebx+esi+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret


;void DB_InitPool<FxImpactTable>(void*, int)
DB_InitPool_FxImpactTable:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	lea eax, [esi+0x4]
	mov [esi], eax
	mov ebx, [ebp+0xc]
	sub ebx, 0x1
	test ebx, ebx
	jle DB_InitPool_FxImpactTable_10
	mov edx, esi
	xor ecx, ecx
DB_InitPool_FxImpactTable_20:
	add ecx, 0x1
	add eax, 0x8
	mov [edx+0x4], eax
	add edx, 0x8
	cmp ecx, ebx
	jnz DB_InitPool_FxImpactTable_20
DB_InitPool_FxImpactTable_10:
	mov dword [esi+ebx*8+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;void DB_InitPool<RawFile>(void*, int)
DB_InitPool_RawFile:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	lea eax, [esi+0x4]
	mov [esi], eax
	mov ebx, [ebp+0xc]
	sub ebx, 0x1
	test ebx, ebx
	jle DB_InitPool_RawFile_10
	mov edx, esi
	xor ecx, ecx
DB_InitPool_RawFile_20:
	add ecx, 0x1
	add eax, 0xc
	mov [edx+0x4], eax
	add edx, 0xc
	cmp ecx, ebx
	jnz DB_InitPool_RawFile_20
DB_InitPool_RawFile_10:
	lea eax, [ebx+ebx*2]
	mov dword [esi+eax*4+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret


;void DB_InitPool<StringTable>(void*, int)
DB_InitPool_StringTable:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	lea eax, [esi+0x4]
	mov [esi], eax
	mov ebx, [ebp+0xc]
	sub ebx, 0x1
	test ebx, ebx
	jle DB_InitPool_StringTable_10
	mov edx, esi
	xor ecx, ecx
DB_InitPool_StringTable_20:
	add ecx, 0x1
	add eax, 0x10
	mov [edx+0x4], eax
	add edx, 0x10
	cmp ecx, ebx
	jnz DB_InitPool_StringTable_20
DB_InitPool_StringTable_10:
	shl ebx, 0x4
	mov dword [ebx+esi+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret



;void DB_FreeXAssetHeader<XModelPieces>(void*, XAssetHeader)
DB_FreeXAssetHeader_XModelPieces:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [eax]
	mov [eax], edx
	mov [edx], ecx
	pop ebp
	ret
	nop


;void DB_FreeXAssetHeader<PhysPreset>(void*, XAssetHeader)
DB_FreeXAssetHeader_PhysPreset:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [eax]
	mov [eax], edx
	mov [edx], ecx
	pop ebp
	ret
	nop


;void DB_FreeXAssetHeader<XAnimParts>(void*, XAssetHeader)
DB_FreeXAssetHeader_XAnimParts:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [eax]
	mov [eax], edx
	mov [edx], ecx
	pop ebp
	ret
	nop


;void DB_FreeXAssetHeader<XModel>(void*, XAssetHeader)
DB_FreeXAssetHeader_XModel:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [eax]
	mov [eax], edx
	mov [edx], ecx
	pop ebp
	ret
	nop


;void DB_FreeXAssetHeader<MaterialTechniqueSet>(void*, XAssetHeader)
DB_FreeXAssetHeader_MaterialTechniqueSet:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [eax]
	mov [eax], edx
	mov [edx], ecx
	pop ebp
	ret
	nop


;void DB_FreeXAssetHeader<GfxImage>(void*, XAssetHeader)
DB_FreeXAssetHeader_GfxImage:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [eax]
	mov [eax], edx
	mov [edx], ecx
	pop ebp
	ret
	nop


;void DB_FreeXAssetHeader<snd_alias_list_t>(void*, XAssetHeader)
DB_FreeXAssetHeader_snd_alias_list_t:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [eax]
	mov [eax], edx
	mov [edx], ecx
	pop ebp
	ret
	nop


;void DB_FreeXAssetHeader<SndCurve>(void*, XAssetHeader)
DB_FreeXAssetHeader_SndCurve:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [eax]
	mov [eax], edx
	mov [edx], ecx
	pop ebp
	ret
	nop


;void DB_FreeXAssetHeader<LoadedSound>(void*, XAssetHeader)
DB_FreeXAssetHeader_LoadedSound:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [eax]
	mov [eax], edx
	mov [edx], ecx
	pop ebp
	ret
	nop


;DB_FreeXAssetSingleton(void*, XAssetHeader)
DB_FreeXAssetSingleton:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;void DB_FreeXAssetHeader<MapEnts>(void*, XAssetHeader)
DB_FreeXAssetHeader_MapEnts:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [eax]
	mov [eax], edx
	mov [edx], ecx
	pop ebp
	ret
	nop


;void DB_FreeXAssetHeader<GfxLightDef>(void*, XAssetHeader)
DB_FreeXAssetHeader_GfxLightDef:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [eax]
	mov [eax], edx
	mov [edx], ecx
	pop ebp
	ret
	nop


;void DB_FreeXAssetHeader<Font_s>(void*, XAssetHeader)
DB_FreeXAssetHeader_Font_s:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [eax]
	mov [eax], edx
	mov [edx], ecx
	pop ebp
	ret
	nop


;void DB_FreeXAssetHeader<MenuList>(void*, XAssetHeader)
DB_FreeXAssetHeader_MenuList:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [eax]
	mov [eax], edx
	mov [edx], ecx
	pop ebp
	ret
	nop


;void DB_FreeXAssetHeader<menuDef_t>(void*, XAssetHeader)
DB_FreeXAssetHeader_menuDef_t:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [eax]
	mov [eax], edx
	mov [edx], ecx
	pop ebp
	ret
	nop


;void DB_FreeXAssetHeader<LocalizeEntry>(void*, XAssetHeader)
DB_FreeXAssetHeader_LocalizeEntry:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [eax]
	mov [eax], edx
	mov [edx], ecx
	pop ebp
	ret
	nop


;void DB_FreeXAssetHeader<WeaponDef>(void*, XAssetHeader)
DB_FreeXAssetHeader_WeaponDef:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [eax]
	mov [eax], edx
	mov [edx], ecx
	pop ebp
	ret
	nop


;void DB_FreeXAssetHeader<FxEffectDef>(void*, XAssetHeader)
DB_FreeXAssetHeader_FxEffectDef:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [eax]
	mov [eax], edx
	mov [edx], ecx
	pop ebp
	ret
	nop


;void DB_FreeXAssetHeader<FxImpactTable>(void*, XAssetHeader)
DB_FreeXAssetHeader_FxImpactTable:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [eax]
	mov [eax], edx
	mov [edx], ecx
	pop ebp
	ret
	nop


;void DB_FreeXAssetHeader<RawFile>(void*, XAssetHeader)
DB_FreeXAssetHeader_RawFile:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [eax]
	mov [eax], edx
	mov [edx], ecx
	pop ebp
	ret
	nop


;void DB_FreeXAssetHeader<StringTable>(void*, XAssetHeader)
DB_FreeXAssetHeader_StringTable:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [eax]
	mov [eax], edx
	mov [edx], ecx
	pop ebp
	ret
	nop

;DB_FreeMaterial(void*, XAssetHeader)
DB_FreeMaterial:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov eax, [ebx]
	mov [ebx], esi
	mov [esi], eax
	pop ebx
	pop esi
	pop ebp
	ret



;XAssetHeader DB_AllocXAsset<XModelPieces>(void*)
DB_AllocXAsset_XModelPieces:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz DB_AllocXAsset_XModelPieces_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
DB_AllocXAsset_XModelPieces_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<PhysPreset>(void*)
DB_AllocXAsset_PhysPreset:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz DB_AllocXAsset_PhysPreset_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
DB_AllocXAsset_PhysPreset_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<XAnimParts>(void*)
DB_AllocXAsset_XAnimParts:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz DB_AllocXAsset_XAnimParts_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
DB_AllocXAsset_XAnimParts_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<XModel>(void*)
DB_AllocXAsset_XModel:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz DB_AllocXAsset_XModel_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
DB_AllocXAsset_XModel_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;DB_AllocMaterial(void*)
DB_AllocMaterial:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov eax, [ebx]
	test eax, eax
	jz DB_AllocMaterial_10
	mov edx, eax
	mov eax, [eax]
	mov [ebx], eax
	mov eax, edx
	add esp, 0x4
	pop ebx
	pop ebp
	ret
DB_AllocMaterial_10:
	xor edx, edx
	mov eax, edx
	add esp, 0x4
	pop ebx
	pop ebp
	ret
	nop


;XAssetHeader DB_AllocXAsset<MaterialTechniqueSet>(void*)
DB_AllocXAsset_MaterialTechniqueSet:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz DB_AllocXAsset_MaterialTechniqueSet_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
DB_AllocXAsset_MaterialTechniqueSet_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<GfxImage>(void*)
DB_AllocXAsset_GfxImage:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz DB_AllocXAsset_GfxImage_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
DB_AllocXAsset_GfxImage_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<snd_alias_list_t>(void*)
DB_AllocXAsset_snd_alias_list_t:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz DB_AllocXAsset_snd_alias_list_t_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
DB_AllocXAsset_snd_alias_list_t_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<SndCurve>(void*)
DB_AllocXAsset_SndCurve:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz DB_AllocXAsset_SndCurve_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
DB_AllocXAsset_SndCurve_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<LoadedSound>(void*)
DB_AllocXAsset_LoadedSound:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz DB_AllocXAsset_LoadedSound_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
DB_AllocXAsset_LoadedSound_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;DB_AllocXAssetSingleton(void*)
DB_AllocXAssetSingleton:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<MapEnts>(void*)
DB_AllocXAsset_MapEnts:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz DB_AllocXAsset_MapEnts_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
DB_AllocXAsset_MapEnts_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<GfxLightDef>(void*)
DB_AllocXAsset_GfxLightDef:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz DB_AllocXAsset_GfxLightDef_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
DB_AllocXAsset_GfxLightDef_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<Font_s>(void*)
DB_AllocXAsset_Font_s:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz DB_AllocXAsset_Font_s_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
DB_AllocXAsset_Font_s_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<MenuList>(void*)
DB_AllocXAsset_MenuList:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz DB_AllocXAsset_MenuList_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
DB_AllocXAsset_MenuList_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<menuDef_t>(void*)
DB_AllocXAsset_menuDef_t:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz DB_AllocXAsset_menuDef_t_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
DB_AllocXAsset_menuDef_t_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<LocalizeEntry>(void*)
DB_AllocXAsset_LocalizeEntry:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz DB_AllocXAsset_LocalizeEntry_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
DB_AllocXAsset_LocalizeEntry_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<WeaponDef>(void*)
DB_AllocXAsset_WeaponDef:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz DB_AllocXAsset_WeaponDef_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
DB_AllocXAsset_WeaponDef_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<FxEffectDef>(void*)
DB_AllocXAsset_FxEffectDef:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz DB_AllocXAsset_FxEffectDef_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
DB_AllocXAsset_FxEffectDef_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<FxImpactTable>(void*)
DB_AllocXAsset_FxImpactTable:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz DB_AllocXAsset_FxImpactTable_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
DB_AllocXAsset_FxImpactTable_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<RawFile>(void*)
DB_AllocXAsset_RawFile:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz DB_AllocXAsset_RawFile_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
DB_AllocXAsset_RawFile_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<StringTable>(void*)
DB_AllocXAsset_StringTable:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz DB_AllocXAsset_StringTable_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
DB_AllocXAsset_StringTable_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;Zero initialized global or static variables of db_registry:
SECTION .bss

;Initialized global or static variables of db_registry:
SECTION .data
DB_InitPoolHeaderHandler: dd DB_InitPool_XModelPieces, DB_InitPool_PhysPreset, DB_InitPool_XAnimParts, DB_InitPool_XModel, DB_InitPool_Material, DB_InitPool_MaterialTechniqueSet, DB_InitPool_GfxImage, DB_InitPool_snd_alias_list_t, DB_InitPool_SndCurve, DB_InitPool_LoadedSound, DB_InitSingleton, DB_InitSingleton, DB_InitSingleton, DB_InitSingleton, DB_InitSingleton, DB_InitPool_MapEnts, DB_InitSingleton, DB_InitPool_GfxLightDef, 0x0, DB_InitPool_Font_s, DB_InitPool_MenuList, DB_InitPool_menuDef_t, DB_InitPool_LocalizeEntry, DB_InitPool_WeaponDef, 0x0, DB_InitPool_FxEffectDef, DB_InitPool_FxImpactTable, 0x0, 0x0, 0x0, 0x0, DB_InitPool_RawFile, DB_InitPool_StringTable, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
DB_FreeXAssetHeaderHandler: dd DB_FreeXAssetHeader_XModelPieces, DB_FreeXAssetHeader_PhysPreset, DB_FreeXAssetHeader_XAnimParts, DB_FreeXAssetHeader_XModel, DB_FreeMaterial, DB_FreeXAssetHeader_MaterialTechniqueSet, DB_FreeXAssetHeader_GfxImage, DB_FreeXAssetHeader_snd_alias_list_t, DB_FreeXAssetHeader_SndCurve, DB_FreeXAssetHeader_LoadedSound, DB_FreeXAssetSingleton, DB_FreeXAssetSingleton, DB_FreeXAssetSingleton, DB_FreeXAssetSingleton, DB_FreeXAssetSingleton, DB_FreeXAssetHeader_MapEnts, DB_FreeXAssetSingleton, DB_FreeXAssetHeader_GfxLightDef, 0x0, DB_FreeXAssetHeader_Font_s, DB_FreeXAssetHeader_MenuList, DB_FreeXAssetHeader_menuDef_t, DB_FreeXAssetHeader_LocalizeEntry, DB_FreeXAssetHeader_WeaponDef, 0x0, DB_FreeXAssetHeader_FxEffectDef, DB_FreeXAssetHeader_FxImpactTable, 0x0, 0x0, 0x0, 0x0, DB_FreeXAssetHeader_RawFile, DB_FreeXAssetHeader_StringTable, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
DB_AllocXAssetHeaderHandler: dd DB_AllocXAsset_XModelPieces, DB_AllocXAsset_PhysPreset, DB_AllocXAsset_XAnimParts, DB_AllocXAsset_XModel, DB_AllocMaterial, DB_AllocXAsset_MaterialTechniqueSet, DB_AllocXAsset_GfxImage, DB_AllocXAsset_snd_alias_list_t, DB_AllocXAsset_SndCurve, DB_AllocXAsset_LoadedSound, DB_AllocXAssetSingleton, DB_AllocXAssetSingleton, DB_AllocXAssetSingleton, DB_AllocXAssetSingleton, DB_AllocXAssetSingleton, DB_AllocXAsset_MapEnts, DB_AllocXAssetSingleton, DB_AllocXAsset_GfxLightDef, 0x0, DB_AllocXAsset_Font_s, DB_AllocXAsset_MenuList, DB_AllocXAsset_menuDef_t, DB_AllocXAsset_LocalizeEntry, DB_AllocXAsset_WeaponDef, 0x0, DB_AllocXAsset_FxEffectDef, DB_AllocXAsset_FxImpactTable, 0x0, 0x0, 0x0, 0x0, DB_AllocXAsset_RawFile, DB_AllocXAsset_StringTable, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
DB_DynamicCloneXAssetHandler: dd 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, DB_DynamicCloneMenu, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of db_registry:
SECTION .rdata

