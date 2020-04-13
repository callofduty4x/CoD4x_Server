;Imports of g_utils_mp:
	extern MT_Alloc
	extern Scr_SetString
	extern SV_DObjExists
	extern SV_DObjGetBoneIndex
	extern level
	extern SL_FindLowercaseString
	extern scr_const
	extern SV_GetConfigstringConst
	extern SetClientViewAngle
	extern MT_Free
	extern G_VehUnlinkPlayer
	extern XModelBad
	extern Com_SafeServerDObjFree
	extern Com_ServerDObjCreate
	extern DObjSetHidePartBits
	extern SV_UnlinkEntity
	extern SV_DObjGetTree
	extern XAnimClearTree
	extern G_FreeTurret
	extern Scr_FreeEntity
	extern memset
	extern PlayerCorpse_Free
	extern CCS_IsConfigStringIndexConstant
	extern CCS_GetConstConfigStringIndex
	extern CCS_GetConfigStringNumForConstIndex
	extern SV_XModelGet
	extern SV_SetConfigstring
	extern va
	extern Scr_Error
	extern Com_Error
	extern Com_PrintWarning
	extern SV_LinkEntity
	extern AnglesToAxis
	extern MatrixTranspose
	extern MatrixMultiply
	extern MatrixInverseOrthogonal43
	extern MatrixMultiply43
	extern g_entities
	extern Com_GetServerDObj
	extern SV_DObjCreateSkelForBone
	extern DObjGetHierarchyBits
	extern entityHandlers
	extern DObjCalcSkel
	extern SV_DObjCreateSkelForBones
	extern AxisToAngles
	extern vectoyaw
	extern MatrixTransformVector43
	extern strcpy
	extern Q_strlwr
	extern SL_ConvertToString
	extern useFastFile
	extern DB_ReplaceModel
	extern Hunk_OverrideDataForFile
	extern Com_Printf
	extern Missile_FreeAttractorRefs
	extern AxisClear
	extern XModelGetStaticBounds
	extern SL_GetString
	extern g_scr_data
	extern Scr_ExecEntThread
	extern Scr_FreeThread
	extern SV_DObjGetMatrixArray
	extern BG_AddPredictableEventToPlayerstate
	extern SV_DObjUpdateServerTime
	extern loc_warnings
	extern loc_warningsAsErrors
	extern SL_FindString
	extern ms_rand
	extern SV_LocateGameData
	extern G_DObjCalcBone
	extern G_FreeEntity


;Exports of g_utils_mp:
	global cached_models
	global _ZZ22G_LocalizedStringIndexPKcE12origErrorMsg
	global G_EntLinkToInternal
	global G_AddEvent
	global G_SetModel
	global G_TagIndex
	global G_EntAttach
	global G_EntDetach
	global G_EntLinkTo
	global G_EntUnlink
	global G_ModelName
	global G_SetOrigin
	global G_XModelBad
	global G_DObjUpdate
	global G_ModelIndex
	global G_TempEntity
	global G_CalcTagAxis
	global G_EffectIndex
	global G_GeneralLink
	global G_InitGentity
	global G_DObjCalcPose
	global G_EntDetachAll
	global _Z14G_SafeDObjFreeP9gentity_s
	global G_SetFixedLink
	global G_MaterialIndex
	global G_OverrideModel
	global G_PrintEntities
	global G_FreeEntityRefs
	global G_GetModelBounds
	global G_PlaySoundAlias
	global G_SetConstString
	global G_AnimScriptSound
	global G_BroadcastEntity
	global G_FreeEntityDelay
	global G_ShellShockIndex
	global G_SoundAliasIndex
	global G_SpawnPlayerClone
	global G_CalcTagParentAxis
	global G_DObjGetWorldTagPos
	global G_AddPredictableEvent
	global G_EntLinkToWithOffset
	global G_DObjUpdateServerTime
	global G_FreeEntityAfterEvent
	global G_LocalizedStringIndex
	global G_DObjGetLocalTagMatrix
	global G_FindConfigstringIndex
	global G_DObjGetWorldBoneIndexPos
	global G_DObjGetLocalBoneIndexMatrix
	global G_DObjGetWorldBoneIndexMatrix
	global G_Find
	global G_rand
	global G_Spawn
	global G_irand
	global G_flrand
	global G_random
	global G_crandom


SECTION .text


;G_EntLinkToInternal(gentity_s*, gentity_s*, unsigned int)
G_EntLinkToInternal:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, eax
	mov [ebp-0x20], edx
	mov edi, ecx
	mov [esp], eax
	call G_EntUnlink
	test edi, edi
	jnz G_EntLinkToInternal_10
	mov dword [ebp-0x1c], 0xffffffff
G_EntLinkToInternal_90:
	cmp esi, [ebp-0x20]
	jz G_EntLinkToInternal_20
	mov ecx, [ebp-0x20]
	mov eax, [ecx+0x218]
	test eax, eax
	jz G_EntLinkToInternal_30
G_EntLinkToInternal_40:
	mov eax, [eax]
	cmp esi, eax
	jz G_EntLinkToInternal_20
	mov eax, [eax+0x218]
	test eax, eax
	jnz G_EntLinkToInternal_40
G_EntLinkToInternal_30:
	mov dword [esp+0x4], 0x11
	mov dword [esp], 0x70
	call MT_Alloc
	mov ebx, eax
	mov eax, [ebp-0x20]
	mov [ebx], eax
	mov word [ebx+0x8], 0x0
	mov [esp+0x4], edi
	lea eax, [ebx+0x8]
	mov [esp], eax
	call Scr_SetString
	mov edx, [ebp-0x20]
	mov eax, [edx+0x21c]
	mov [ebx+0x4], eax
	mov ecx, [ebp-0x1c]
	mov [ebx+0xc], ecx
	lea edi, [ebx+0x10]
	cld
	xor eax, eax
	mov ecx, 0xc
	rep stosd
	mov edx, [ebp-0x20]
	mov [edx+0x21c], esi
	mov [esi+0x218], ebx
	lea edi, [ebx+0x40]
	mov cl, 0xc
	rep stosd
	mov eax, [esi+0x15c]
	test eax, eax
	jz G_EntLinkToInternal_50
	mov edx, [eax+0x4]
	test edx, edx
	jz G_EntLinkToInternal_60
	cmp edx, 0x7
	jz G_EntLinkToInternal_70
G_EntLinkToInternal_50:
	mov eax, 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_EntLinkToInternal_10:
	mov eax, [ebp-0x20]
	mov [esp], eax
	call SV_DObjExists
	test eax, eax
	jnz G_EntLinkToInternal_80
G_EntLinkToInternal_20:
	xor eax, eax
G_EntLinkToInternal_100:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_EntLinkToInternal_60:
	mov dword [eax+0x4], 0x1
	jmp G_EntLinkToInternal_50
G_EntLinkToInternal_80:
	mov [esp+0x4], edi
	mov edx, [ebp-0x20]
	mov [esp], edx
	call SV_DObjGetBoneIndex
	mov [ebp-0x1c], eax
	test eax, eax
	jns G_EntLinkToInternal_90
	xor eax, eax
	jmp G_EntLinkToInternal_100
G_EntLinkToInternal_70:
	mov dword [eax+0x4], 0x8
	jmp G_EntLinkToInternal_50


;G_AddEvent(gentity_s*, int, unsigned int)
G_AddEvent:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov ecx, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x10]
	mov edx, [ecx+0x15c]
	test edx, edx
	jz G_AddEvent_10
	mov eax, [edx+0xb4]
	and eax, 0x3
	mov [edx+eax*4+0xb8], ebx
	mov edx, [ecx+0x15c]
	mov eax, [edx+0xb4]
	and eax, 0x3
	mov [edx+eax*4+0xc8], esi
	mov edx, [ecx+0x15c]
	mov eax, [edx+0xb4]
	add eax, 0x1
	and eax, 0xff
	mov [edx+0xb4], eax
	mov eax, level
	mov edx, [eax+0x1ec]
	mov [ecx+0x184], edx
	mov eax, [eax+0x1ec]
	mov [ecx+0x158], eax
	pop ebx
	pop esi
	pop ebp
	ret
G_AddEvent_10:
	mov eax, [ecx+0xa0]
	mov edx, eax
	and edx, 0x3
	mov [ecx+edx*4+0xa4], ebx
	mov [ecx+edx*4+0xb4], esi
	add eax, 0x1
	and eax, 0xff
	mov [ecx+0xa0], eax
	mov eax, level
	mov edx, [eax+0x1ec]
	mov [ecx+0x184], edx
	mov eax, [eax+0x1ec]
	mov [ecx+0x158], eax
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;G_SetModel(gentity_s*, char const*)
G_SetModel:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, [ebp+0xc]
	cmp byte [eax], 0x0
	jnz G_SetModel_10
	mov word [ebx+0x168], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
G_SetModel_10:
	mov [esp], eax
	call G_ModelIndex
	mov [ebx+0x168], ax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	add [eax], al


;G_TagIndex(char const*)
G_TagIndex:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x20
	mov dword [esp+0x4], 0x8ea
	mov eax, [ebp+0x8]
	mov [esp], eax
	call G_FindConfigstringIndex
	leave
	ret
	nop


;G_EntAttach(gentity_s*, char const*, unsigned int, int)
G_EntAttach:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov eax, edi
	xor esi, esi
	mov dword [ebp-0x1c], 0x1
	lea ebx, [edi+0x246]
	jmp G_EntAttach_10
G_EntAttach_30:
	add esi, 0x1
	add ebx, 0x2
	add eax, 0x2
	cmp esi, 0x13
	jz G_EntAttach_20
G_EntAttach_10:
	cmp word [eax+0x220], 0x0
	jnz G_EntAttach_30
	mov eax, [ebp+0xc]
	mov [esp], eax
	call G_ModelIndex
	test eax, eax
	jnz G_EntAttach_40
G_EntAttach_20:
	xor eax, eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_EntAttach_40:
	mov [edi+esi*2+0x220], ax
	mov ecx, [ebp+0x10]
	mov [esp+0x4], ecx
	mov [esp], ebx
	call Scr_SetString
	mov eax, [ebp+0x14]
	test eax, eax
	jnz G_EntAttach_50
	mov [esp], edi
	call G_DObjUpdate
	mov eax, 0x1
G_EntAttach_60:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_EntAttach_50:
	mov ecx, esi
	shl dword [ebp-0x1c], cl
	mov eax, [ebp-0x1c]
	or [edi+0x178], eax
	mov [esp], edi
	call G_DObjUpdate
	mov eax, 0x1
	jmp G_EntAttach_60


;G_EntDetach(gentity_s*, char const*, unsigned int)
G_EntDetach:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, [ebp+0xc]
	mov [esp], eax
	call SL_FindLowercaseString
	mov edi, eax
	test eax, eax
	jz G_EntDetach_10
	mov eax, scr_const
	movzx eax, word [eax]
	cmp edi, eax
	jz G_EntDetach_10
	mov ebx, [ebp+0x8]
	xor esi, esi
	jmp G_EntDetach_20
G_EntDetach_30:
	add esi, 0x1
	add ebx, 0x2
	cmp esi, 0x13
	jz G_EntDetach_10
G_EntDetach_20:
	movzx eax, word [ebx+0x246]
	cmp eax, [ebp+0x10]
	jnz G_EntDetach_30
	movzx eax, word [ebx+0x220]
	add eax, 0x33e
	mov [esp], eax
	call SV_GetConfigstringConst
	cmp edi, eax
	jnz G_EntDetach_30
	mov eax, [ebp+0x8]
	mov word [eax+esi*2+0x220], 0x0
	lea ebx, [esi+esi]
	lea edi, [ebx+eax+0x246]
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call Scr_SetString
	cmp esi, 0x11
	jg G_EntDetach_40
	mov eax, [ebp+0x8]
	lea eax, [eax+esi*2+0x222]
	mov [ebp-0x2c], eax
	mov edx, [ebp+0x8]
	lea ebx, [ebx+edx+0x220]
	mov [ebp-0x1c], ebx
	sub [ebp-0x1c], eax
	sub edi, eax
	mov [ebp-0x20], edi
	mov ecx, eax
	jmp G_EntDetach_50
G_EntDetach_70:
	mov eax, 0x1
	mov ecx, esi
	shl eax, cl
	or edx, eax
	mov eax, [ebp+0x8]
	mov [eax+0x178], edx
G_EntDetach_80:
	add dword [ebp-0x2c], 0x2
	cmp ebx, 0x12
	jz G_EntDetach_60
	mov esi, ebx
	mov ecx, [ebp-0x2c]
G_EntDetach_50:
	lea ebx, [esi+0x1]
	movzx eax, word [ecx]
	mov edx, [ebp-0x1c]
	mov [ecx+edx], ax
	movzx eax, word [ecx+0x26]
	mov edx, [ebp-0x20]
	mov [ecx+edx], ax
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x178]
	mov edi, 0x1
	mov ecx, ebx
	shl edi, cl
	test edi, edx
	jnz G_EntDetach_70
	mov eax, 0x1
	mov ecx, esi
	shl eax, cl
	not eax
	and edx, eax
	mov eax, [ebp+0x8]
	mov [eax+0x178], edx
	jmp G_EntDetach_80
G_EntDetach_10:
	xor eax, eax
G_EntDetach_90:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_EntDetach_40:
	mov edi, 0x1
	mov ecx, esi
	shl edi, cl
G_EntDetach_100:
	mov edx, [ebp+0x8]
	mov word [edx+esi*2+0x220], 0x0
	mov word [edx+esi*2+0x246], 0x0
	not edi
	and [edx+0x178], edi
	mov [esp], edx
	call G_DObjUpdate
	mov eax, 0x1
	jmp G_EntDetach_90
G_EntDetach_60:
	mov esi, 0x12
	jmp G_EntDetach_100


;G_EntLinkTo(gentity_s*, gentity_s*, unsigned int)
G_EntLinkTo:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	mov eax, ebx
	call G_EntLinkToInternal
	test eax, eax
	jz G_EntLinkTo_10
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call G_CalcTagAxis
	mov eax, 0x1
G_EntLinkTo_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;G_EntUnlink(gentity_s*)
G_EntUnlink:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x218]
	mov [ebp-0x2c], eax
	test eax, eax
	jz G_EntUnlink_10
	lea edx, [ebx+0x18]
	mov eax, [ebx+0x13c]
	mov [ebx+0x18], eax
	mov eax, [ebx+0x140]
	mov [edx+0x4], eax
	mov eax, [ebx+0x144]
	mov [edx+0x8], eax
	mov dword [ebx+0xc], 0x0
	mov dword [ebx+0x10], 0x0
	mov dword [ebx+0x14], 0x0
	lea eax, [ebx+0x24]
	xor esi, esi
	mov [ebx+0x24], esi
	mov [eax+0x4], esi
	mov [eax+0x8], esi
	lea edx, [ebx+0x3c]
	mov eax, [ebx+0x148]
	mov [ebx+0x3c], eax
	mov eax, [ebx+0x14c]
	mov [edx+0x4], eax
	mov eax, [ebx+0x150]
	mov [edx+0x8], eax
	mov dword [ebx+0x30], 0x0
	mov dword [ebx+0x34], 0x0
	mov dword [ebx+0x38], 0x0
	lea eax, [ebx+0x48]
	mov [ebx+0x48], esi
	mov [eax+0x4], esi
	mov [eax+0x8], esi
	mov edx, [ebp-0x2c]
	mov edi, [edx]
	mov edx, [ebx+0x15c]
	test edx, edx
	jz G_EntUnlink_20
	mov eax, [edx+0x108]
	mov [ebp-0x24], eax
	mov eax, [edx+0x10c]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], esi
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov [esp], ebx
	call SetClientViewAngle
	mov [ebx+0x148], esi
	movzx edx, word [edi+0x170]
	mov eax, scr_const
	cmp dx, [eax+0xf8]
	jz G_EntUnlink_30
G_EntUnlink_20:
	mov eax, [edi+0x21c]
	cmp ebx, eax
	jz G_EntUnlink_40
G_EntUnlink_50:
	mov edx, [eax+0x218]
	mov eax, [edx+0x4]
	cmp ebx, eax
	jnz G_EntUnlink_50
	mov ecx, [ebp-0x2c]
	mov eax, [ecx+0x4]
	mov [edx+0x4], eax
G_EntUnlink_90:
	mov dword [ebx+0x218], 0x0
	mov eax, [ebx+0x15c]
	test eax, eax
	jz G_EntUnlink_60
	mov edx, [eax+0x4]
	cmp edx, 0x1
	jz G_EntUnlink_70
	cmp edx, 0x8
	jz G_EntUnlink_80
G_EntUnlink_60:
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x2c]
	add eax, 0x8
	mov [esp], eax
	call Scr_SetString
	mov dword [esp+0x4], 0x70
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call MT_Free
G_EntUnlink_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_EntUnlink_70:
	mov dword [eax+0x4], 0x0
	jmp G_EntUnlink_60
G_EntUnlink_80:
	mov dword [eax+0x4], 0x7
	jmp G_EntUnlink_60
G_EntUnlink_30:
	mov [esp+0x4], ebx
	mov [esp], edi
	call G_VehUnlinkPlayer
	jmp G_EntUnlink_20
G_EntUnlink_40:
	mov edx, [ebp-0x2c]
	mov eax, [edx+0x4]
	mov [edi+0x21c], eax
	jmp G_EntUnlink_90
	nop


;G_ModelName(int)
G_ModelName:
	push ebp
	mov ebp, esp
	add dword [ebp+0x8], 0x33e
	pop ebp
	jmp SV_GetConfigstringConst


;G_SetOrigin(gentity_s*, float const*)
G_SetOrigin:
	push ebp
	mov ebp, esp
	push ebx
	mov edx, [ebp+0x8]
	mov ebx, [ebp+0xc]
	lea ecx, [edx+0x18]
	mov eax, [ebx]
	mov [edx+0x18], eax
	mov eax, [ebx+0x4]
	mov [ecx+0x4], eax
	mov eax, [ebx+0x8]
	mov [ecx+0x8], eax
	mov dword [edx+0xc], 0x0
	mov dword [edx+0x10], 0x0
	mov dword [edx+0x14], 0x0
	lea ecx, [edx+0x24]
	xor eax, eax
	mov [edx+0x24], eax
	mov [ecx+0x4], eax
	mov [ecx+0x8], eax
	lea ecx, [edx+0x13c]
	mov eax, [ebx]
	mov [edx+0x13c], eax
	mov eax, [ebx+0x4]
	mov [ecx+0x4], eax
	mov eax, [ebx+0x8]
	mov [ecx+0x8], eax
	pop ebx
	pop ebp
	ret


;G_XModelBad(int)
G_XModelBad:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax*4+cached_models]
	mov [ebp+0x8], eax
	pop ebp
	jmp XModelBad


;G_DObjUpdate(gentity_s*)
G_DObjUpdate:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x12c
	mov eax, [ebp+0x8]
	mov edi, [eax+0x15c]
	test edi, edi
	jz G_DObjUpdate_10
G_DObjUpdate_40:
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_DObjUpdate_10:
	mov eax, [eax]
	mov [esp], eax
	call Com_SafeServerDObjFree
	mov ecx, [ebp+0x8]
	movzx eax, word [ecx+0x168]
	movzx edx, ax
	test ax, ax
	jnz G_DObjUpdate_20
	mov eax, [ecx+0x21c]
	test eax, eax
	jnz G_DObjUpdate_30
	jmp G_DObjUpdate_40
G_DObjUpdate_50:
	mov dword [ecx+0xc], 0xffffffff
G_DObjUpdate_60:
	test ebx, ebx
	jz G_DObjUpdate_40
	mov eax, ebx
G_DObjUpdate_30:
	mov ecx, [eax+0x218]
	mov ebx, [ecx+0x4]
	cmp word [ecx+0x8], 0x0
	jz G_DObjUpdate_50
	mov [esp], eax
	call G_EntUnlink
	jmp G_DObjUpdate_60
G_DObjUpdate_20:
	mov eax, [edx*4+cached_models]
	mov [ebp-0x118], eax
	mov word [ebp-0x114], 0x0
	mov byte [ebp-0x112], 0x0
	mov eax, [ecx+0x4]
	test eax, eax
	jz G_DObjUpdate_70
	cmp eax, 0x6
	jz G_DObjUpdate_80
	cmp eax, 0xd
	jz G_DObjUpdate_80
	cmp eax, 0xb
	jz G_DObjUpdate_80
	cmp eax, 0xe
	jz G_DObjUpdate_90
	cmp eax, 0xc
	jz G_DObjUpdate_90
G_DObjUpdate_160:
	mov ebx, [ebp+0x8]
	mov edx, 0x1
	jmp G_DObjUpdate_100
G_DObjUpdate_120:
	add edx, 0x1
	mov [ebp-0x11c], edx
	shl edx, 0x3
	mov eax, [esi*4+cached_models]
	mov [ebp+edx-0x120], eax
	movzx eax, word [ebx+0x246]
	mov [ebp+edx-0x11c], ax
	mov eax, 0x1
	mov ecx, edi
	shl eax, cl
	mov ecx, [ebp+0x8]
	test [ecx+0x178], eax
	setnz byte [ebp+edx-0x11a]
	mov edx, [ebp-0x11c]
	add ebx, 0x2
	cmp edx, 0x14
	jz G_DObjUpdate_110
G_DObjUpdate_100:
	lea edi, [edx-0x1]
	movzx eax, word [ebx+0x220]
	movzx esi, ax
	test ax, ax
	jnz G_DObjUpdate_120
G_DObjUpdate_110:
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	movzx eax, dx
	mov [esp+0x4], eax
	lea eax, [ebp-0x118]
	mov [esp], eax
	call Com_ServerDObjCreate
	mov edx, [ebp+0x8]
	add edx, 0xe4
	mov [esp+0x4], edx
	mov [esp], eax
	call DObjSetHidePartBits
	mov edx, [ebp+0x8]
	mov esi, [edx+0x21c]
	test esi, esi
	jnz G_DObjUpdate_130
	jmp G_DObjUpdate_40
G_DObjUpdate_140:
	mov dword [ebx+0xc], 0xffffffff
G_DObjUpdate_150:
	test edi, edi
	jz G_DObjUpdate_40
	mov esi, edi
G_DObjUpdate_130:
	mov ebx, [esi+0x218]
	mov edi, [ebx+0x4]
	movzx eax, word [ebx+0x8]
	test ax, ax
	jz G_DObjUpdate_140
	movzx eax, ax
	mov [esp+0x4], eax
	mov eax, [ebx]
	mov [esp], eax
	call SV_DObjGetBoneIndex
	mov [ebx+0xc], eax
	test eax, eax
	jns G_DObjUpdate_150
	mov [esp], esi
	call G_EntUnlink
	jmp G_DObjUpdate_150
G_DObjUpdate_70:
	mov eax, ecx
G_DObjUpdate_170:
	mov [eax+0x88], edx
	jmp G_DObjUpdate_160
G_DObjUpdate_80:
	mov eax, [ebp+0x8]
	jmp G_DObjUpdate_170
G_DObjUpdate_90:
	mov ecx, [ebp+0x8]
	mov [ecx+0xd8], edx
	jmp G_DObjUpdate_160
	nop



;G_ModelIndex(char const*)
G_ModelIndex:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov eax, [ebp+0x8]
	cmp byte [eax], 0x0
	jnz G_ModelIndex_10
	xor ebx, ebx
G_ModelIndex_30:
	mov eax, ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_ModelIndex_10:
	mov [esp], eax
	call SL_FindLowercaseString
	mov esi, eax
	mov eax, level
	mov eax, [eax+0x1c]
	test eax, eax
	jnz G_ModelIndex_20
G_ModelIndex_100:
	mov ebx, 0x1
G_ModelIndex_40:
	lea eax, [ebx+0x33e]
	mov [esp], eax
	call SV_GetConfigstringConst
	cmp esi, eax
	jz G_ModelIndex_30
	add ebx, 0x1
	cmp ebx, 0x200
	jnz G_ModelIndex_40
	mov ebx, level
	mov edi, [ebx+0x1c]
	test edi, edi
	jz G_ModelIndex_50
G_ModelIndex_120:
	mov ebx, 0x1
	mov edi, scr_const
	jmp G_ModelIndex_60
G_ModelIndex_80:
	add ebx, 0x1
	cmp ebx, 0x200
	jz G_ModelIndex_70
G_ModelIndex_60:
	lea esi, [ebx+0x33e]
	mov [esp], esi
	call SV_GetConfigstringConst
	movzx edx, word [edi]
	cmp eax, edx
	jnz G_ModelIndex_80
	mov [esp], esi
	call CCS_IsConfigStringIndexConstant
	test eax, eax
	jnz G_ModelIndex_80
	jmp G_ModelIndex_90
G_ModelIndex_20:
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CCS_GetConstConfigStringIndex
	test eax, eax
	js G_ModelIndex_100
	mov [esp], eax
	call CCS_GetConfigStringNumForConstIndex
	lea ebx, [eax-0x33e]
	cmp ebx, 0x1ff
	ja G_ModelIndex_100
	mov [esp], eax
	call SV_GetConfigstringConst
	cmp esi, eax
	jz G_ModelIndex_30
G_ModelIndex_90:
	cmp ebx, 0x200
	jz G_ModelIndex_110
	lea esi, [ebx+0x33e]
G_ModelIndex_130:
	mov eax, [ebp+0x8]
	mov [esp], eax
	call SV_XModelGet
	mov [ebx*4+cached_models], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], esi
	call SV_SetConfigstring
	jmp G_ModelIndex_30
G_ModelIndex_50:
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_model_s_not_prec
	call va
	mov [esp], eax
	call Scr_Error
	mov esi, [ebx+0x1c]
	test esi, esi
	jnz G_ModelIndex_120
G_ModelIndex_110:
	mov dword [esp+0x4], _cstring_g_modelindex_ove
	mov dword [esp], 0x2
	call Com_Error
	mov ebx, 0x200
	mov esi, 0x53e
	jmp G_ModelIndex_130
G_ModelIndex_70:
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_abandoni
	mov dword [esp], 0xe
	call Com_PrintWarning
	mov bx, 0x1
	mov edi, scr_const
	jmp G_ModelIndex_140
G_ModelIndex_150:
	add ebx, 0x1
	cmp ebx, 0x200
	jz G_ModelIndex_110
G_ModelIndex_140:
	lea esi, [ebx+0x33e]
	mov [esp], esi
	call SV_GetConfigstringConst
	movzx edx, word [edi]
	cmp eax, edx
	jnz G_ModelIndex_150
	jmp G_ModelIndex_130


;G_TempEntity(float const*, int)
G_TempEntity:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	call G_Spawn
	mov ebx, eax
	mov eax, [ebp+0xc]
	add eax, 0x11
	mov [ebx+0x4], eax
	mov eax, scr_const
	movzx eax, word [eax+0xb6]
	mov [esp+0x4], eax
	lea eax, [ebx+0x170]
	mov [esp], eax
	call Scr_SetString
	mov edx, level
	mov eax, [edx+0x1ec]
	mov [ebx+0x184], eax
	mov eax, [edx+0x1ec]
	mov [ebx+0x158], eax
	mov dword [ebx+0x188], 0x1
	cvttss2si eax, [esi]
	cvtsi2ss xmm2, eax
	cvttss2si eax, [esi+0x4]
	cvtsi2ss xmm1, eax
	cvttss2si eax, [esi+0x8]
	cvtsi2ss xmm0, eax
	lea eax, [ebx+0x18]
	movss [ebx+0x18], xmm2
	movss [eax+0x4], xmm1
	movss [eax+0x8], xmm0
	mov dword [ebx+0xc], 0x0
	mov dword [ebx+0x10], 0x0
	mov dword [ebx+0x14], 0x0
	lea edx, [ebx+0x24]
	xor eax, eax
	mov [ebx+0x24], eax
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	lea eax, [ebx+0x13c]
	movss [ebx+0x13c], xmm2
	movss [eax+0x4], xmm1
	movss [eax+0x8], xmm0
	mov [esp], ebx
	call SV_LinkEntity
	mov eax, ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop
	add [eax], al


;G_CalcTagAxis(gentity_s*, int)
G_CalcTagAxis:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xbc
	mov esi, [ebp+0x8]
	lea edi, [ebp-0x78]
	mov [esp+0x4], edi
	mov [esp], esi
	call G_CalcTagParentAxis
	lea eax, [ebp-0x48]
	mov [esp+0x4], eax
	lea eax, [esi+0x148]
	mov [esp], eax
	call AnglesToAxis
	mov eax, [esi+0x218]
	mov [ebp-0xac], eax
	mov ebx, [ebp+0xc]
	test ebx, ebx
	jz G_CalcTagAxis_10
	lea ebx, [ebp-0xa8]
	mov [esp+0x4], ebx
	mov [esp], edi
	call MatrixTranspose
	mov eax, [ebp-0xac]
	add eax, 0x10
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	lea eax, [ebp-0x48]
	mov [esp], eax
	call MatrixMultiply
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_CalcTagAxis_10:
	lea ebx, [ebp-0xa8]
	mov [esp+0x4], ebx
	mov [esp], edi
	call MatrixInverseOrthogonal43
	lea edx, [esi+0x13c]
	mov eax, [esi+0x13c]
	mov [ebp-0x24], eax
	mov eax, [edx+0x4]
	mov [ebp-0x20], eax
	mov eax, [edx+0x8]
	mov [ebp-0x1c], eax
	mov eax, [ebp-0xac]
	add eax, 0x10
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	lea eax, [ebp-0x48]
	mov [esp], eax
	call MatrixMultiply43
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop
	add [eax], al


;G_EffectIndex(char const*)
G_EffectIndex:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov dword [esp+0x10], _cstring_effect
	mov eax, level
	mov eax, [eax+0x1c]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x64
	mov dword [esp+0x4], 0x63e
	mov eax, [ebp+0x8]
	mov [esp], eax
	call G_FindConfigstringIndex
	leave
	ret
	nop


;G_GeneralLink(gentity_s*)
G_GeneralLink:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call G_SetFixedLink
	lea edx, [ebx+0x18]
	mov eax, [ebx+0x13c]
	mov [ebx+0x18], eax
	mov eax, [ebx+0x140]
	mov [edx+0x4], eax
	mov eax, [ebx+0x144]
	mov [edx+0x8], eax
	xor edx, edx
	lea ecx, [ebx+0x3c]
	mov eax, [ebx+0x148]
	mov [ebx+0x3c], eax
	mov eax, [ebx+0x14c]
	mov [ecx+0x4], eax
	mov eax, [ebx+0x150]
	mov [ecx+0x8], eax
	mov dword [ebx+0xc], 0x1
	mov [ebx+0x24], edx
	mov [ebx+0x28], edx
	mov [ebx+0x2c], edx
	mov dword [ebx+0x10], 0x0
	mov dword [ebx+0x14], 0x0
	mov dword [ebx+0x30], 0x1
	mov [ebx+0x48], edx
	mov [ebx+0x4c], edx
	mov [ebx+0x50], edx
	mov dword [ebx+0x34], 0x0
	mov dword [ebx+0x38], 0x0
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp SV_LinkEntity
	nop


;G_InitGentity(gentity_s*)
G_InitGentity:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [ebx+0x270], 0x0
	mov byte [ebx+0x100], 0x1
	mov eax, scr_const
	movzx eax, word [eax+0x56]
	mov [esp+0x4], eax
	lea eax, [ebx+0x170]
	mov [esp], eax
	call Scr_SetString
	mov eax, ebx
	sub eax, g_entities
	sar eax, 0x2
	imul eax, eax, 0x2c0685b5
	mov [ebx], eax
	mov dword [ebx+0x184], 0x0
	mov dword [ebx+0x188], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;G_DObjCalcPose(gentity_s*, int*)
G_DObjCalcPose:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov eax, [ebx]
	mov [esp], eax
	call Com_GetServerDObj
	mov edi, eax
	mov [esp+0x4], esi
	mov [esp], eax
	call SV_DObjCreateSkelForBones
	test eax, eax
	jnz G_DObjCalcPose_10
	movzx eax, byte [ebx+0x16e]
	lea eax, [eax+eax*4]
	shl eax, 0x3
	add eax, entityHandlers
	mov eax, [eax+0x1c]
	test eax, eax
	jz G_DObjCalcPose_20
	mov [esp+0x4], esi
	mov [esp], ebx
	call eax
G_DObjCalcPose_20:
	mov [ebp+0xc], esi
	mov [ebp+0x8], edi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp DObjCalcSkel
G_DObjCalcPose_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;G_EntDetachAll(gentity_s*)
G_EntDetachAll:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x8]
	mov [ebp-0x1c], eax
	mov esi, eax
	xor edi, edi
	mov ebx, eax
	add ebx, 0x246
G_EntDetachAll_10:
	mov word [esi+0x220], 0x0
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call Scr_SetString
	add edi, 0x1
	add ebx, 0x2
	add esi, 0x2
	cmp edi, 0x13
	jnz G_EntDetachAll_10
	mov eax, [ebp-0x1c]
	mov dword [eax+0x178], 0x0
	mov [ebp+0x8], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp G_DObjUpdate


;G_SafeDObjFree(gentity_s*)
_Z14G_SafeDObjFreeP9gentity_s:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [ebp+0x8], eax
	pop ebp
	jmp Com_SafeServerDObjFree
	nop


;G_SetFixedLink(gentity_s*, int)
G_SetFixedLink:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	lea edi, [ebp-0x78]
	mov [esp+0x4], edi
	mov [esp], esi
	call G_CalcTagParentAxis
	mov edx, [esi+0x218]
	cmp ebx, 0x1
	jz G_SetFixedLink_10
	cmp ebx, 0x2
	jz G_SetFixedLink_20
	test ebx, ebx
	jz G_SetFixedLink_30
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_SetFixedLink_30:
	lea ebx, [ebp-0x48]
	mov [esp+0x8], ebx
	mov [esp+0x4], edi
	lea eax, [edx+0x10]
	mov [esp], eax
	call MatrixMultiply43
	lea edx, [esi+0x13c]
	mov eax, [ebp-0x24]
	mov [esi+0x13c], eax
	mov eax, [ebp-0x20]
	mov [edx+0x4], eax
	mov eax, [ebp-0x1c]
	mov [edx+0x8], eax
	lea eax, [esi+0x148]
	mov [esp+0x4], eax
	mov [esp], ebx
	call AxisToAngles
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_SetFixedLink_10:
	lea ebx, [ebp-0x48]
	mov [esp+0x8], ebx
	mov [esp+0x4], edi
	lea eax, [edx+0x10]
	mov [esp], eax
	call MatrixMultiply43
	lea edx, [esi+0x13c]
	mov eax, [ebp-0x24]
	mov [esi+0x13c], eax
	mov eax, [ebp-0x20]
	mov [edx+0x4], eax
	mov eax, [ebp-0x1c]
	mov [edx+0x8], eax
	mov [esp], ebx
	call vectoyaw
	fstp dword [esi+0x14c]
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_SetFixedLink_20:
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	lea eax, [edx+0x34]
	mov [esp], eax
	call MatrixTransformVector43
	lea edx, [esi+0x13c]
	mov eax, [ebp-0x24]
	mov [esi+0x13c], eax
	mov eax, [ebp-0x20]
	mov [edx+0x4], eax
	mov eax, [ebp-0x1c]
	mov [edx+0x8], eax
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;G_MaterialIndex(char const*)
G_MaterialIndex:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x64
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x48]
	mov [esp], ebx
	call strcpy
	mov [esp], ebx
	call Q_strlwr
	mov dword [esp+0x10], _cstring_material
	mov eax, level
	mov eax, [eax+0x1c]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x100
	mov dword [esp+0x4], 0x7d2
	mov [esp], ebx
	call G_FindConfigstringIndex
	add esp, 0x64
	pop ebx
	pop ebp
	ret
	nop


;G_OverrideModel(int, char const*)
G_OverrideModel:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	lea eax, [esi+0x33e]
	mov [esp], eax
	call SV_GetConfigstringConst
	mov [esp], eax
	call SL_ConvertToString
	mov ebx, eax
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz G_OverrideModel_10
	mov [ebp+0xc], edi
	mov [ebp+0x8], ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp DB_ReplaceModel
G_OverrideModel_10:
	mov [esp], edi
	call SV_XModelGet
	mov [esi*4+cached_models], eax
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov dword [esp], 0x5
	call Hunk_OverrideDataForFile
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;G_PrintEntities()
G_PrintEntities:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov eax, level
	mov edx, [eax+0xc]
	test edx, edx
	jle G_PrintEntities_10
	xor esi, esi
	mov ebx, g_entities
	mov edi, eax
	jmp G_PrintEntities_20
G_PrintEntities_30:
	mov eax, _cstring_null
G_PrintEntities_40:
	movsd xmm0, qword [ebp-0x30]
	movsd [esp+0x20], xmm0
	movsd xmm0, qword [ebp-0x28]
	movsd [esp+0x18], xmm0
	movsd xmm0, qword [ebp-0x20]
	movsd [esp+0x10], xmm0
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_4i_s_origin_f_f_
	mov dword [esp], 0xf
	call Com_Printf
	add esi, 0x1
	add ebx, 0x274
	cmp esi, [edi+0xc]
	jge G_PrintEntities_10
G_PrintEntities_20:
	cvtss2sd xmm0, [ebx+0x144]
	movsd [ebp-0x30], xmm0
	cvtss2sd xmm0, [ebx+0x140]
	movsd [ebp-0x28], xmm0
	cvtss2sd xmm0, [ebx+0x13c]
	movsd [ebp-0x20], xmm0
	movzx eax, word [ebx+0x170]
	test ax, ax
	jz G_PrintEntities_30
	movzx eax, ax
	mov [esp], eax
	call SL_ConvertToString
	jmp G_PrintEntities_40
G_PrintEntities_10:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;G_FreeEntityRefs(gentity_s*)
G_FreeEntityRefs:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xc
	mov eax, [ebp+0x8]
	mov [ebp-0x14], eax
	mov ebx, [eax]
	mov eax, [eax+0x180]
	mov [ebp-0x18], eax
	test eax, 0x400000
	jz G_FreeEntityRefs_10
	mov eax, level
	mov eax, [eax+0xc]
	mov [ebp-0x10], eax
	test eax, eax
	jle G_FreeEntityRefs_10
	xor ecx, ecx
	mov edi, g_entities
	xor esi, esi
G_FreeEntityRefs_40:
	lea eax, [esi+ecx]
	lea edx, [eax+edi]
	cmp byte [edx+0x100], 0x0
	jz G_FreeEntityRefs_20
	cmp word [edx+0x154], 0x0
	jz G_FreeEntityRefs_20
	movzx eax, word [edx+0x154]
	sub eax, 0x1
	cmp eax, ebx
	jz G_FreeEntityRefs_30
G_FreeEntityRefs_20:
	add ecx, 0x1
	add esi, 0x273
	cmp [ebp-0x10], ecx
	jnz G_FreeEntityRefs_40
G_FreeEntityRefs_10:
	test dword [ebp-0x18], 0x100000
	jz G_FreeEntityRefs_50
	mov eax, level
	mov esi, [eax+0xc]
	test esi, esi
	jg G_FreeEntityRefs_60
G_FreeEntityRefs_50:
	test dword [ebp-0x18], 0x200000
	jz G_FreeEntityRefs_70
	xor edx, edx
	mov edi, g_entities
	xor ecx, ecx
	jmp G_FreeEntityRefs_80
G_FreeEntityRefs_100:
	add edx, 0x1
	add ecx, 0x273
	cmp edx, 0x40
	jz G_FreeEntityRefs_90
G_FreeEntityRefs_80:
	lea eax, [ecx+edx]
	add eax, edi
	cmp byte [eax+0x100], 0x0
	jz G_FreeEntityRefs_100
	mov eax, [eax+0x15c]
	cmp ebx, [eax+0x5a8]
	jnz G_FreeEntityRefs_100
	mov dword [eax+0x5a8], 0x3ff
	add edx, 0x1
	add ecx, 0x273
	cmp edx, 0x40
	jnz G_FreeEntityRefs_80
G_FreeEntityRefs_90:
	mov eax, [ebp-0x14]
	mov eax, [eax+0x180]
	mov [ebp-0x18], eax
G_FreeEntityRefs_70:
	test dword [ebp-0x18], 0x800000
	jnz G_FreeEntityRefs_110
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_FreeEntityRefs_60:
	xor edx, edx
	mov edi, g_entities
	xor ecx, ecx
	jmp G_FreeEntityRefs_120
G_FreeEntityRefs_130:
	add edx, 0x1
	add ecx, 0x273
	cmp edx, esi
	jz G_FreeEntityRefs_50
G_FreeEntityRefs_120:
	lea eax, [ecx+edx]
	add eax, edi
	cmp byte [eax+0x100], 0x0
	jz G_FreeEntityRefs_130
	cmp ebx, [eax+0x7c]
	jnz G_FreeEntityRefs_130
	mov dword [eax+0x7c], 0x3ff
	jmp G_FreeEntityRefs_130
G_FreeEntityRefs_110:
	mov eax, [ebp-0x14]
	mov [ebp+0x8], eax
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Missile_FreeAttractorRefs
G_FreeEntityRefs_30:
	cmp dword [edx+0x4], 0xb
	jnz G_FreeEntityRefs_20
	mov byte [edx+0x16c], 0x0
	jmp G_FreeEntityRefs_10
	nop


;G_GetModelBounds(int, float*, float*)
G_GetModelBounds:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x40
	mov eax, [ebp+0x8]
	mov esi, [eax*4+cached_models]
	lea ebx, [ebp-0x2c]
	mov [esp], ebx
	call AxisClear
	mov eax, [ebp+0x10]
	mov [esp+0xc], eax
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], esi
	call XModelGetStaticBounds
	test eax, eax
	setnz al
	movzx eax, al
	add esp, 0x40
	pop ebx
	pop esi
	pop ebp
	ret


;G_PlaySoundAlias(gentity_s*, unsigned char)
G_PlaySoundAlias:
	push ebp
	mov ebp, esp
	push ebx
	mov ecx, [ebp+0x8]
	movzx eax, byte [ebp+0xc]
	test al, al
	jz G_PlaySoundAlias_10
	movzx ebx, al
	mov edx, [ecx+0x15c]
	test edx, edx
	jz G_PlaySoundAlias_20
	mov eax, [edx+0xb4]
	and eax, 0x3
	mov dword [edx+eax*4+0xb8], 0x3
	mov edx, [ecx+0x15c]
	mov eax, [edx+0xb4]
	and eax, 0x3
	mov [edx+eax*4+0xc8], ebx
	mov edx, [ecx+0x15c]
	mov eax, [edx+0xb4]
	add eax, 0x1
	and eax, 0xff
	mov [edx+0xb4], eax
G_PlaySoundAlias_30:
	mov eax, level
	mov edx, [eax+0x1ec]
	mov [ecx+0x184], edx
	mov eax, [eax+0x1ec]
	mov [ecx+0x158], eax
G_PlaySoundAlias_10:
	pop ebx
	pop ebp
	ret
G_PlaySoundAlias_20:
	mov eax, [ecx+0xa0]
	mov edx, eax
	and edx, 0x3
	mov dword [ecx+edx*4+0xa4], 0x3
	mov [ecx+edx*4+0xb4], ebx
	add eax, 0x1
	and eax, 0xff
	mov [ecx+0xa0], eax
	jmp G_PlaySoundAlias_30
	nop
	add [eax], al


;G_SetConstString(unsigned short*, char const*)
G_SetConstString:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call Scr_SetString
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0xc]
	mov [esp], eax
	call SL_GetString
	mov [ebx], ax
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;G_AnimScriptSound(int, snd_alias_list_t*)
G_AnimScriptSound:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x8]
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x100
	mov dword [esp+0x4], 0x53e
	mov eax, [ebp+0xc]
	mov eax, [eax]
	mov [esp], eax
	call G_FindConfigstringIndex
	lea edx, [ebx+ebx*8]
	lea edx, [ebx+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	lea ecx, [edx+ebx]
	add ecx, g_entities
	test al, al
	jz G_AnimScriptSound_10
	movzx ebx, al
	mov edx, [ecx+0x15c]
	test edx, edx
	jz G_AnimScriptSound_20
	mov eax, [edx+0xb4]
	and eax, 0x3
	mov dword [edx+eax*4+0xb8], 0x3
	mov edx, [ecx+0x15c]
	mov eax, [edx+0xb4]
	and eax, 0x3
	mov [edx+eax*4+0xc8], ebx
	mov edx, [ecx+0x15c]
	mov eax, [edx+0xb4]
	add eax, 0x1
	and eax, 0xff
	mov [edx+0xb4], eax
G_AnimScriptSound_30:
	mov eax, level
	mov eax, [eax+0x1ec]
	mov [ecx+0x184], eax
	mov [ecx+0x158], eax
G_AnimScriptSound_10:
	xor eax, eax
	add esp, 0x24
	pop ebx
	pop ebp
	ret
G_AnimScriptSound_20:
	mov eax, [ecx+0xa0]
	mov edx, eax
	and edx, 0x3
	mov dword [ecx+edx*4+0xa4], 0x3
	mov [ecx+edx*4+0xb4], ebx
	add eax, 0x1
	and eax, 0xff
	mov [ecx+0xa0], eax
	jmp G_AnimScriptSound_30


;G_BroadcastEntity(gentity_s*)
G_BroadcastEntity:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov byte [eax+0xf6], 0x8
	pop ebp
	ret
	nop


;G_FreeEntityDelay(gentity_s*)
G_FreeEntityDelay:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x0
	mov eax, g_scr_data
	mov eax, [eax+0x10b0]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Scr_ExecEntThread
	movzx eax, ax
	mov [ebp+0x8], eax
	leave
	jmp Scr_FreeThread


;G_ShellShockIndex(char const*)
G_ShellShockIndex:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x10
	mov dword [esp+0x4], 0x7a2
	mov eax, [ebp+0x8]
	mov [esp], eax
	call G_FindConfigstringIndex
	leave
	ret
	nop


;G_SoundAliasIndex(char const*)
G_SoundAliasIndex:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x100
	mov dword [esp+0x4], 0x53e
	mov eax, [ebp+0x8]
	mov [esp], eax
	call G_FindConfigstringIndex
	movzx eax, al
	leave
	ret


;G_SpawnPlayerClone()
G_SpawnPlayerClone:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, level
	mov eax, [edi+0x15d0]
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	lea esi, [edx+eax]
	add esi, [edi+0x4]
	lea ebx, [esi+0x9d00]
	add eax, 0x1
	and eax, 0x80000007
	js G_SpawnPlayerClone_10
G_SpawnPlayerClone_30:
	mov [edi+0x15d0], eax
	mov edi, [ebx+0x8]
	and edi, 0x2
	xor edi, 0x2
	cmp byte [ebx+0x100], 0x0
	jz G_SpawnPlayerClone_20
	mov [esp], ebx
	call G_FreeEntity
G_SpawnPlayerClone_20:
	mov dword [ebx+0x270], 0x0
	mov byte [ebx+0x100], 0x1
	mov eax, scr_const
	movzx eax, word [eax+0x56]
	mov [esp+0x4], eax
	lea eax, [esi+0x9e70]
	mov [esp], eax
	call Scr_SetString
	mov eax, ebx
	sub eax, g_entities
	sar eax, 0x2
	imul eax, eax, 0x2c0685b5
	mov [esi+0x9d00], eax
	mov dword [ebx+0x184], 0x0
	mov dword [ebx+0x188], 0x0
	mov [ebx+0x8], edi
	mov eax, ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_SpawnPlayerClone_10:
	sub eax, 0x1
	or eax, 0xfffffff8
	add eax, 0x1
	jmp G_SpawnPlayerClone_30


;G_CalcTagParentAxis(gentity_s*, float (*) [3])
G_CalcTagParentAxis:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov eax, [ebp+0x8]
	mov edi, [eax+0x218]
	mov esi, [edi]
	mov ecx, [edi+0xc]
	test ecx, ecx
	js G_CalcTagParentAxis_10
	lea ebx, [ebp-0x6c]
	mov [esp+0x4], ebx
	lea eax, [esi+0x148]
	mov [esp], eax
	call AnglesToAxis
	lea edx, [esi+0x13c]
	mov eax, [esi+0x13c]
	mov [ebp-0x48], eax
	mov eax, [edx+0x4]
	mov [ebp-0x44], eax
	mov eax, [edx+0x8]
	mov [ebp-0x40], eax
	mov eax, [edi+0xc]
	mov [esp+0x4], eax
	mov [esp], esi
	call G_DObjCalcBone
	mov [esp], esi
	call SV_DObjGetMatrixArray
	mov edx, eax
	mov eax, [edi+0xc]
	shl eax, 0x5
	lea esi, [edx+eax]
	movss xmm1, dword [esi+0x1c]
	movaps xmm4, xmm1
	mulss xmm4, [esi]
	movaps xmm6, xmm1
	mulss xmm6, [esi+0x4]
	mulss xmm1, [esi+0x8]
	movaps xmm0, xmm4
	mulss xmm0, [esi]
	movss [ebp-0x84], xmm0
	movss xmm3, dword [esi+0x4]
	movaps xmm5, xmm4
	mulss xmm5, xmm3
	movss xmm2, dword [esi+0x8]
	movaps xmm0, xmm4
	mulss xmm0, xmm2
	movss [ebp-0x80], xmm0
	movss xmm0, dword [esi+0xc]
	mulss xmm4, xmm0
	mulss xmm3, xmm6
	movss [ebp-0x7c], xmm3
	movaps xmm7, xmm6
	mulss xmm7, xmm2
	mulss xmm6, xmm0
	movaps xmm3, xmm1
	mulss xmm3, xmm2
	mulss xmm1, xmm0
	movss [ebp-0x8c], xmm1
	movss xmm0, dword [ebp-0x7c]
	addss xmm0, xmm3
	movss xmm2, dword [_float_1_00000000]
	movaps xmm1, xmm2
	subss xmm1, xmm0
	movss [ebp-0x3c], xmm1
	movss xmm0, dword [ebp-0x8c]
	addss xmm0, xmm5
	movss [ebp-0x38], xmm0
	movss xmm0, dword [ebp-0x80]
	subss xmm0, xmm6
	movss [ebp-0x34], xmm0
	subss xmm5, [ebp-0x8c]
	movss [ebp-0x30], xmm5
	addss xmm3, [ebp-0x84]
	movaps xmm0, xmm2
	subss xmm0, xmm3
	movss [ebp-0x2c], xmm0
	movaps xmm0, xmm4
	addss xmm0, xmm7
	movss [ebp-0x28], xmm0
	addss xmm6, [ebp-0x80]
	movss [ebp-0x24], xmm6
	subss xmm7, xmm4
	movss [ebp-0x20], xmm7
	movss xmm1, dword [ebp-0x84]
	addss xmm1, [ebp-0x7c]
	subss xmm2, xmm1
	movss [ebp-0x1c], xmm2
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	lea eax, [ebp-0x3c]
	mov [esp], eax
	call MatrixMultiply
	mov eax, [ebp+0xc]
	add eax, 0x24
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	lea eax, [esi+0x10]
	mov [esp], eax
	call MatrixTransformVector43
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_CalcTagParentAxis_10:
	mov ebx, [ebp+0xc]
	mov [esp+0x4], ebx
	lea eax, [esi+0x148]
	mov [esp], eax
	call AnglesToAxis
	mov ecx, ebx
	add ecx, 0x24
	lea edx, [esi+0x13c]
	mov eax, [esi+0x13c]
	mov [ebx+0x24], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;G_DObjGetWorldTagPos(gentity_s*, unsigned int, float*)
G_DObjGetWorldTagPos:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov esi, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], esi
	call SV_DObjGetBoneIndex
	mov ebx, eax
	test eax, eax
	js G_DObjGetWorldTagPos_10
	mov [esp+0x4], eax
	mov [esp], esi
	call G_DObjCalcBone
	mov [esp], esi
	call SV_DObjGetMatrixArray
	shl ebx, 0x5
	mov edi, eax
	add edi, ebx
	jz G_DObjGetWorldTagPos_10
	lea ebx, [ebp-0x48]
	mov [esp+0x4], ebx
	lea eax, [esi+0x148]
	mov [esp], eax
	call AnglesToAxis
	lea edx, [esi+0x13c]
	mov eax, [esi+0x13c]
	mov [ebp-0x24], eax
	mov eax, [edx+0x4]
	mov [ebp-0x20], eax
	mov eax, [edx+0x8]
	mov [ebp-0x1c], eax
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	lea eax, [edi+0x10]
	mov [esp], eax
	call MatrixTransformVector43
	mov eax, 0x1
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_DObjGetWorldTagPos_10:
	xor eax, eax
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;G_AddPredictableEvent(gentity_s*, int, unsigned int)
G_AddPredictableEvent:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0xc]
	mov edx, [ebp+0x10]
	mov eax, [ebp+0x8]
	mov eax, [eax+0x15c]
	test eax, eax
	jz G_AddPredictableEvent_10
	mov [ebp+0x10], eax
	mov [ebp+0xc], edx
	mov [ebp+0x8], ecx
	pop ebp
	jmp BG_AddPredictableEventToPlayerstate
G_AddPredictableEvent_10:
	pop ebp
	ret
	nop


;G_EntLinkToWithOffset(gentity_s*, gentity_s*, unsigned int, float const*, float const*)
G_EntLinkToWithOffset:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	mov esi, [ebp+0x14]
	mov eax, ebx
	call G_EntLinkToInternal
	test eax, eax
	jz G_EntLinkToWithOffset_10
	mov ebx, [ebx+0x218]
	lea eax, [ebx+0x10]
	mov [esp+0x4], eax
	mov eax, [ebp+0x18]
	mov [esp], eax
	call AnglesToAxis
	lea edx, [ebx+0x34]
	mov eax, [esi]
	mov [ebx+0x34], eax
	mov eax, [esi+0x4]
	mov [edx+0x4], eax
	mov eax, [esi+0x8]
	mov [edx+0x8], eax
	mov eax, 0x1
G_EntLinkToWithOffset_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;G_DObjUpdateServerTime(gentity_s*, int)
G_DObjUpdateServerTime:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov eax, level
	cvtsi2ss xmm0, dword [eax+0x1f4]
	mulss xmm0, [_float_0_00100000]
	movss [esp+0x4], xmm0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call SV_DObjUpdateServerTime
	leave
	ret
	nop


;G_FreeEntityAfterEvent(gentity_s*)
G_FreeEntityAfterEvent:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov dword [eax+0x188], 0x1
	pop ebp
	ret


;G_LocalizedStringIndex(char const*)
G_LocalizedStringIndex:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	cmp byte [edi], 0x0
	jz G_LocalizedStringIndex_10
	mov eax, level
	mov esi, [eax+0x1c]
	mov edx, [_ZZ22G_LocalizedStringIndexPKcE12origErrorMsg]
	test esi, esi
	jz G_LocalizedStringIndex_20
G_LocalizedStringIndex_60:
	mov [esp+0x10], edx
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x200
	mov dword [esp+0x4], 0x135
	mov [esp], edi
	call G_FindConfigstringIndex
	mov ebx, eax
	test eax, eax
	jnz G_LocalizedStringIndex_30
	test esi, esi
	jnz G_LocalizedStringIndex_10
	mov eax, loc_warnings
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz G_LocalizedStringIndex_10
	mov eax, loc_warningsAsErrors
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz G_LocalizedStringIndex_40
G_LocalizedStringIndex_10:
	xor ebx, ebx
G_LocalizedStringIndex_30:
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_LocalizedStringIndex_20:
	mov eax, loc_warnings
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz G_LocalizedStringIndex_50
	mov eax, loc_warningsAsErrors
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	cmovz edx, esi
	jmp G_LocalizedStringIndex_60
G_LocalizedStringIndex_50:
	mov si, 0x1
	jmp G_LocalizedStringIndex_60
G_LocalizedStringIndex_40:
	mov eax, [_ZZ22G_LocalizedStringIndexPKcE12origErrorMsg]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x200
	mov dword [esp+0x4], 0x135
	mov [esp], edi
	call G_FindConfigstringIndex
	mov ebx, eax
	test eax, eax
	jz G_LocalizedStringIndex_30
	mov [esp+0xc], edi
	mov eax, [_ZZ22G_LocalizedStringIndexPKcE12origErrorMsg]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_s_s_not_
	mov dword [esp], 0x18
	call Com_PrintWarning
	jmp G_LocalizedStringIndex_30


;G_DObjGetLocalTagMatrix(gentity_s*, unsigned int)
G_DObjGetLocalTagMatrix:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], esi
	call SV_DObjGetBoneIndex
	mov ebx, eax
	test eax, eax
	js G_DObjGetLocalTagMatrix_10
	mov [esp+0x4], eax
	mov [esp], esi
	call G_DObjCalcBone
	mov [esp], esi
	call SV_DObjGetMatrixArray
	shl ebx, 0x5
	add eax, ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
G_DObjGetLocalTagMatrix_10:
	xor eax, eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop

;G_FindConfigstringIndex(char const*, int, int, int, char const*)
G_FindConfigstringIndex:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x10]
	mov ebx, [ebp+0x8]
	test ebx, ebx
	jz G_FindConfigstringIndex_10
	mov eax, [ebp+0x8]
	cmp byte [eax], 0x0
	jz G_FindConfigstringIndex_10
	cmp dword [ebp+0xc], 0x334
	jle G_FindConfigstringIndex_20
	mov [esp], eax
	call SL_FindLowercaseString
	mov esi, eax
	mov ecx, [ebp+0x14]
	test ecx, ecx
	jnz G_FindConfigstringIndex_30
G_FindConfigstringIndex_60:
	cmp edi, 0x1
	jg G_FindConfigstringIndex_40
G_FindConfigstringIndex_150:
	mov edx, [ebp+0x14]
	test edx, edx
	jnz G_FindConfigstringIndex_50
	mov eax, [ebp+0x18]
	test eax, eax
	jz G_FindConfigstringIndex_10
	mov ecx, [ebp+0x8]
	mov [esp+0x8], ecx
	mov eax, [ebp+0x18]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_s_s_not_precache
	call va
	mov [esp], eax
	call Scr_Error
	xor ebx, ebx
G_FindConfigstringIndex_80:
	mov eax, ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_FindConfigstringIndex_20:
	mov edx, [ebp+0x8]
	mov [esp], edx
	call SL_FindString
	mov esi, eax
	mov ecx, [ebp+0x14]
	test ecx, ecx
	jz G_FindConfigstringIndex_60
G_FindConfigstringIndex_30:
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CCS_GetConstConfigStringIndex
	test eax, eax
	js G_FindConfigstringIndex_60
	mov [esp], eax
	call CCS_GetConfigStringNumForConstIndex
	mov ebx, eax
	cmp [ebp+0xc], eax
	jg G_FindConfigstringIndex_60
	mov eax, [ebp+0xc]
	add eax, edi
	cmp ebx, eax
	jge G_FindConfigstringIndex_60
	mov [esp], ebx
	call SV_GetConfigstringConst
	cmp esi, eax
	jz G_FindConfigstringIndex_70
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], ebx
	call SV_SetConfigstring
G_FindConfigstringIndex_70:
	sub ebx, [ebp+0xc]
	jmp G_FindConfigstringIndex_80
G_FindConfigstringIndex_10:
	xor ebx, ebx
	mov eax, ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_FindConfigstringIndex_50:
	cmp edi, 0x1
	jg G_FindConfigstringIndex_90
	mov ebx, 0x1
G_FindConfigstringIndex_130:
	cmp edi, ebx
	jz G_FindConfigstringIndex_100
G_FindConfigstringIndex_170:
	mov ecx, [ebp+0x8]
	mov [esp+0x4], ecx
	mov edx, [ebp+0xc]
	lea eax, [ebx+edx]
	mov [esp], eax
	call SV_SetConfigstring
	mov eax, ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_FindConfigstringIndex_90:
	mov ebx, 0x1
	jmp G_FindConfigstringIndex_110
G_FindConfigstringIndex_120:
	add ebx, 0x1
	cmp edi, ebx
	jz G_FindConfigstringIndex_100
G_FindConfigstringIndex_110:
	mov edx, [ebp+0xc]
	lea esi, [ebx+edx]
	mov [esp], esi
	call SV_GetConfigstringConst
	mov ecx, scr_const
	movzx edx, word [ecx]
	cmp eax, edx
	jnz G_FindConfigstringIndex_120
	mov [esp], esi
	call CCS_IsConfigStringIndexConstant
	test eax, eax
	jnz G_FindConfigstringIndex_120
	jmp G_FindConfigstringIndex_130
G_FindConfigstringIndex_40:
	mov ebx, 0x1
G_FindConfigstringIndex_140:
	mov edx, [ebp+0xc]
	lea eax, [ebx+edx]
	mov [esp], eax
	call SV_GetConfigstringConst
	cmp esi, eax
	jz G_FindConfigstringIndex_80
	add ebx, 0x1
	cmp edi, ebx
	jnz G_FindConfigstringIndex_140
	jmp G_FindConfigstringIndex_150
G_FindConfigstringIndex_100:
;	mov eax, [ebp+0x8]
;	mov [esp+0x8], eax
;	mov dword [esp+0x4], _cstring_warning_abandoni
;	mov dword [esp], 0xe
;	call Com_PrintWarning
	cmp edi, 0x1
	jg G_FindConfigstringIndex_160
	mov ebx, 0x1
G_FindConfigstringIndex_190:
	cmp edi, ebx
	jnz G_FindConfigstringIndex_170
G_FindConfigstringIndex_210:
	mov dword [esp+0x4], _cstring_g_findconfigstri
	mov dword [esp], 0xf
	call Com_Printf
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_dumping_these_i_
	mov dword [esp], 0xf
	call Com_Printf
	cmp edi, 0x1
	jg G_FindConfigstringIndex_180
	mov ebx, 0x1
G_FindConfigstringIndex_230:
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov dword [esp], _cstring_g_findconfigstri1
	call va
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call Com_Error
	jmp G_FindConfigstringIndex_170
G_FindConfigstringIndex_160:
	mov ebx, 0x1
	mov esi, scr_const
G_FindConfigstringIndex_200:
	mov edx, [ebp+0xc]
	lea eax, [ebx+edx]
	mov [esp], eax
	call SV_GetConfigstringConst
	movzx edx, word [esi]
	cmp eax, edx
	jz G_FindConfigstringIndex_190
	add ebx, 0x1
	cmp edi, ebx
	jnz G_FindConfigstringIndex_200
	jmp G_FindConfigstringIndex_210
G_FindConfigstringIndex_180:
	mov ebx, 0x1
G_FindConfigstringIndex_220:
	mov ecx, [ebp+0xc]
	lea eax, [ebx+ecx]
	mov [esp], eax
	call SV_GetConfigstringConst
	mov [esp], eax
	call SL_ConvertToString
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_i_s
	mov dword [esp], 0xf
	call Com_Printf
	add ebx, 0x1
	cmp edi, ebx
	jnz G_FindConfigstringIndex_220
	mov ebx, edi
	jmp G_FindConfigstringIndex_230
	nop


;G_DObjGetWorldBoneIndexPos(gentity_s*, int, float*)
G_DObjGetWorldBoneIndexPos:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov [esp+0x4], esi
	mov [esp], ebx
	call G_DObjCalcBone
	mov [esp], ebx
	call SV_DObjGetMatrixArray
	mov edi, eax
	lea eax, [ebp-0x48]
	mov [esp+0x4], eax
	lea eax, [ebx+0x148]
	mov [esp], eax
	call AnglesToAxis
	lea edx, [ebx+0x13c]
	mov eax, [ebx+0x13c]
	mov [ebp-0x24], eax
	mov eax, [edx+0x4]
	mov [ebp-0x20], eax
	mov eax, [edx+0x8]
	mov [ebp-0x1c], eax
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	lea eax, [ebp-0x48]
	mov [esp+0x4], eax
	shl esi, 0x5
	lea eax, [edi+esi+0x10]
	mov [esp], eax
	call MatrixTransformVector43
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;G_DObjGetLocalBoneIndexMatrix(gentity_s*, int)
G_DObjGetLocalBoneIndexMatrix:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov [esp+0x4], ebx
	mov [esp], esi
	call G_DObjCalcBone
	mov [esp], esi
	call SV_DObjGetMatrixArray
	shl ebx, 0x5
	add eax, ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;G_DObjGetWorldBoneIndexMatrix(gentity_s*, int, float (*) [3])
G_DObjGetWorldBoneIndexMatrix:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov edi, [ebp+0x10]
	mov [esp+0x4], ebx
	mov [esp], esi
	call G_DObjCalcBone
	mov [esp], esi
	call SV_DObjGetMatrixArray
	shl ebx, 0x5
	lea ebx, [eax+ebx]
	mov [ebp-0x88], ebx
	lea ebx, [ebp-0x6c]
	mov [esp+0x4], ebx
	lea eax, [esi+0x148]
	mov [esp], eax
	call AnglesToAxis
	lea edx, [esi+0x13c]
	mov eax, [esi+0x13c]
	mov [ebp-0x48], eax
	mov eax, [edx+0x4]
	mov [ebp-0x44], eax
	mov eax, [edx+0x8]
	mov [ebp-0x40], eax
	mov eax, [ebp-0x88]
	movss xmm1, dword [eax+0x1c]
	movaps xmm4, xmm1
	mulss xmm4, [eax]
	movaps xmm6, xmm1
	mulss xmm6, [eax+0x4]
	mulss xmm1, [eax+0x8]
	movaps xmm0, xmm4
	mulss xmm0, [eax]
	movss [ebp-0x84], xmm0
	movss xmm3, dword [eax+0x4]
	movaps xmm5, xmm4
	mulss xmm5, xmm3
	movss xmm2, dword [eax+0x8]
	movaps xmm0, xmm4
	mulss xmm0, xmm2
	movss [ebp-0x80], xmm0
	movss xmm0, dword [eax+0xc]
	mulss xmm4, xmm0
	mulss xmm3, xmm6
	movss [ebp-0x7c], xmm3
	movaps xmm7, xmm6
	mulss xmm7, xmm2
	mulss xmm6, xmm0
	movaps xmm3, xmm1
	mulss xmm3, xmm2
	mulss xmm1, xmm0
	movss [ebp-0x8c], xmm1
	movss xmm0, dword [ebp-0x7c]
	addss xmm0, xmm3
	movss xmm2, dword [_float_1_00000000]
	movaps xmm1, xmm2
	subss xmm1, xmm0
	movss [ebp-0x3c], xmm1
	movss xmm0, dword [ebp-0x8c]
	addss xmm0, xmm5
	movss [ebp-0x38], xmm0
	movss xmm0, dword [ebp-0x80]
	subss xmm0, xmm6
	movss [ebp-0x34], xmm0
	subss xmm5, [ebp-0x8c]
	movss [ebp-0x30], xmm5
	addss xmm3, [ebp-0x84]
	movaps xmm0, xmm2
	subss xmm0, xmm3
	movss [ebp-0x2c], xmm0
	movaps xmm0, xmm4
	addss xmm0, xmm7
	movss [ebp-0x28], xmm0
	addss xmm6, [ebp-0x80]
	movss [ebp-0x24], xmm6
	subss xmm7, xmm4
	movss [ebp-0x20], xmm7
	movss xmm1, dword [ebp-0x84]
	addss xmm1, [ebp-0x7c]
	subss xmm2, xmm1
	movss [ebp-0x1c], xmm2
	mov [esp+0x8], edi
	mov [esp+0x4], ebx
	lea eax, [ebp-0x3c]
	mov [esp], eax
	call MatrixMultiply
	add edi, 0x24
	mov [esp+0x8], edi
	mov [esp+0x4], ebx
	mov eax, [ebp-0x88]
	add eax, 0x10
	mov [esp], eax
	call MatrixTransformVector43
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;G_Find(gentity_s*, int, unsigned short)
G_Find:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov eax, [ebp+0x8]
	movzx esi, word [ebp+0x10]
	test eax, eax
	jz G_Find_10
	lea ebx, [eax+0x274]
	mov edi, g_entities
G_Find_60:
	mov eax, level
	mov edx, [eax+0xc]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	mov ecx, eax
	shl ecx, 0x5
	add eax, ecx
	add eax, edx
	add eax, edi
	cmp ebx, eax
	jae G_Find_20
	mov ecx, ebx
	add ecx, [ebp+0xc]
G_Find_50:
	cmp byte [ebx+0x100], 0x0
	jz G_Find_30
	movzx edx, word [ecx]
	test dx, dx
	jz G_Find_30
	cmp dx, si
	jz G_Find_40
G_Find_30:
	add ebx, 0x274
	add ecx, 0x274
	cmp ebx, eax
	jb G_Find_50
G_Find_20:
	xor ebx, ebx
G_Find_40:
	mov eax, ebx
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_Find_10:
	mov ebx, g_entities
	mov edi, ebx
	jmp G_Find_60
	add [eax], al


;G_rand()
G_rand:
	push ebp
	mov ebp, esp
	pop ebp
	jmp ms_rand
	nop


;G_Spawn()
G_Spawn:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov esi, level
	mov ebx, [esi+0x10]
	test ebx, ebx
	jz G_Spawn_10
	mov eax, [esi+0x1ec]
	sub eax, [ebx+0x184]
	cmp eax, 0x1f3
	jle G_Spawn_20
G_Spawn_50:
	mov eax, [ebx+0x270]
	mov [esi+0x10], eax
	test eax, eax
	jz G_Spawn_30
G_Spawn_120:
	mov dword [ebx+0x270], 0x0
	jmp G_Spawn_40
G_Spawn_20:
	cmp dword [esi+0xc], 0x3fd
	jg G_Spawn_50
G_Spawn_10:
	cmp dword [esi+0xc], 0x3fe
	jz G_Spawn_60
G_Spawn_110:
	mov edx, [esi+0xc]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	mov ecx, eax
	shl ecx, 0x5
	add eax, ecx
	lea ebx, [eax+edx]
	add ebx, [esi+0x4]
	add edx, 0x1
	mov [esi+0xc], edx
	mov dword [esp+0x10], 0x3184
	mov eax, [esi]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x274
	mov [esp+0x4], edx
	mov eax, [esi+0x4]
	mov [esp], eax
	call SV_LocateGameData
G_Spawn_40:
	mov dword [ebx+0x270], 0x0
	mov byte [ebx+0x100], 0x1
	mov eax, scr_const
	movzx eax, word [eax+0x56]
	mov [esp+0x4], eax
	lea eax, [ebx+0x170]
	mov [esp], eax
	call Scr_SetString
	mov eax, ebx
	sub eax, g_entities
	sar eax, 0x2
	imul eax, eax, 0x2c0685b5
	mov [ebx], eax
	mov dword [ebx+0x184], 0x0
	mov dword [ebx+0x188], 0x0
	mov eax, ebx
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_Spawn_60:
	xor edi, edi
	mov ebx, g_entities
	jmp G_Spawn_70
G_Spawn_90:
	mov eax, _cstring_null
G_Spawn_100:
	movsd xmm0, qword [ebp-0x30]
	movsd [esp+0x20], xmm0
	movsd xmm0, qword [ebp-0x28]
	movsd [esp+0x18], xmm0
	movsd xmm0, qword [ebp-0x20]
	movsd [esp+0x10], xmm0
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_4i_s_origin_f_f_
	mov dword [esp], 0xf
	call Com_Printf
	add edi, 0x1
	add ebx, 0x274
	cmp edi, [esi+0xc]
	jge G_Spawn_80
G_Spawn_70:
	cvtss2sd xmm0, [ebx+0x144]
	movsd [ebp-0x30], xmm0
	cvtss2sd xmm0, [ebx+0x140]
	movsd [ebp-0x28], xmm0
	cvtss2sd xmm0, [ebx+0x13c]
	movsd [ebp-0x20], xmm0
	movzx eax, word [ebx+0x170]
	test ax, ax
	jz G_Spawn_90
	movzx eax, ax
	mov [esp], eax
	call SL_ConvertToString
	jmp G_Spawn_100
G_Spawn_80:
	mov dword [esp+0x4], _cstring_g_spawn_no_free_
	mov dword [esp], 0x2
	call Com_Error
	jmp G_Spawn_110
G_Spawn_30:
	mov dword [esi+0x14], 0x0
	jmp G_Spawn_120


;G_irand(int, int)
G_irand:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	call ms_rand
	sub ebx, esi
	imul eax, ebx
	lea edx, [eax+0x7fff]
	cmp eax, 0xffffffff
	cmovle eax, edx
	sar eax, 0xf
	lea eax, [esi+eax]
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;G_flrand(float, float)
G_flrand:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	movss xmm1, dword [ebp+0x8]
	movss [ebp-0x18], xmm1
	call ms_rand
	cvtsi2ss xmm0, eax
	movss xmm1, dword [ebp-0x18]
	movss xmm2, dword [ebp+0xc]
	subss xmm2, xmm1
	mulss xmm0, xmm2
	mulss xmm0, [_float_0_00003052]
	addss xmm1, xmm0
	movss [ebp-0x1c], xmm1
	fld dword [ebp-0x1c]
	leave
	ret
	nop


;G_random()
G_random:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	call ms_rand
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_00003052]
	movss [ebp-0xc], xmm0
	fld dword [ebp-0xc]
	leave
	ret
	nop


;G_crandom()
G_crandom:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	call ms_rand
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_00003052]
	addss xmm0, xmm0
	subss xmm0, [_float_1_00000000]
	movss [ebp-0xc], xmm0
	fld dword [ebp-0xc]
	leave
	ret
	nop


;Initialized global or static variables of g_utils_mp:
SECTION .data
_ZZ22G_LocalizedStringIndexPKcE12origErrorMsg: dd _cstring_localized_string, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of g_utils_mp:
SECTION .rdata


;Zero initialized global or static variables of g_utils_mp:
SECTION .bss
cached_models: resb 0x800


;All cstrings:
SECTION .rdata
_cstring_model_s_not_prec:		db "model ",27h,"%s",27h," not precached",0
_cstring_g_modelindex_ove:		db 15h,"G_ModelIndex: overflow",0
_cstring_warning_abandoni:		db "Warning: abandoning const config string model slot for string %s",0ah,0
_cstring_effect:		db "effect",0
_cstring_material:		db "material",0
_cstring_null:		db 0
_cstring_4i_s_origin_f_f_:		db "%4i: ",27h,"%s",27h,", origin: %f %f %f",0ah,0
_cstring_warning_s_s_not_:		db "WARNING: %s ",22h,"%s",22h," not precached",0ah,0
_cstring_s_s_not_precache:		db "%s ",22h,"%s",22h," not precached",0
_cstring_g_findconfigstri:		db "G_FindConfigstringIndex: overflow...",0ah,0
_cstring_dumping_these_i_:		db "Dumping these %i Config Strings:",0ah,0
_cstring_g_findconfigstri1:		db 15h,"G_FindConfigstringIndex: overflow (%d): ",27h,"%s",27h,0
_cstring_i_s:		db "%i: %s",0ah,0
_cstring_g_spawn_no_free_:		db 15h,"G_Spawn: no free entities",0
_cstring_localized_string:		db "localized string",0


;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_00100000:		dd 0x3a83126f	; 0.001
_float_0_00003052:		dd 0x38000000	; 3.05176e-05

