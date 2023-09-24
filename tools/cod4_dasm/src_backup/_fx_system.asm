;Imports of fx_system:
	extern _Z24Sys_EnterCriticalSection15CriticalSection
	extern _Z15Phys_ObjDestroy9PhysWorldi
	extern _Z24Sys_LeaveCriticalSection15CriticalSection
	extern fx_cull_elem_spawn
	extern fx_randomTable
	extern _Z14UnitQuatToAxisPKfPA3_f
	extern _Z17FX_GetSpawnOriginPK14FxSpatialFramePK9FxElemDefiPf
	extern _Z20FX_OffsetSpawnOriginPK14FxSpatialFramePK9FxElemDefiPf
	extern _Z19FX_CreateImpactMarkiPK9FxElemDefPK14FxSpatialFrameij
	extern _Z13FX_CullSpherePK8FxCamerajPKff
	extern _Z18R_WarnOncePerFrame14GfxWarningTypez
	extern _Z17FX_GetOrientationPK9FxElemDefPK14FxSpatialFrameS4_iP13orientation_t
	extern _Z27FX_OrientationPosToWorldPosPK13orientation_tPKfPf
	extern _Z14FX_GetElemAxisPK9FxElemDefiPK13orientation_tfPA3_f
	extern _Z10AxisToQuatPA3_KfPf
	extern _Z20FX_GetVelocityAtTimePK9FxElemDefiffPK13orientation_tPKfPf
	extern _Z14Phys_ObjCreate9PhysWorldPKfS1_S1_PK10PhysPreset
	extern _Z18Com_FindSoundAliasPKc
	extern _Z22SND_AnyActiveListenersv
	extern _Z16Sys_IsMainThreadv
	extern _Z17CG_PlaySoundAliasiiPKfP16snd_alias_list_t
	extern _Z23RotatePointAroundVectorPfPKfS1_f
	extern _Z16Com_PrintWarningiPKcz
	extern _Z18CG_AddFXSoundAliasiPKfP16snd_alias_list_t
	extern _Z30Phys_ObjSetCollisionFromXModelPK6XModel9PhysWorldi
	extern _Z26Phys_ObjSetAngularVelocityiPKf
	extern memset
	extern _Z16FX_RegisterDvarsv
	extern _Z13FX_InitRandomv
	extern _Z18FX_InitMarksSystemP13FxMarksSystem
	extern fx_cull_effect_spawn
	extern _Z17FX_StartNewEffectP8FxSystemP8FxEffect
	extern _Z7ms_randv
	extern _Z27R_GetAverageLightingAtPointPKfPh
	extern _Z22FX_GetBoltTemporalBitsii
	extern _Z16FX_UnregisterAllv
	extern _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3_
	extern _Z15FX_BeginLoopingP8FxSystemP8FxEffectiiPK14FxSpatialFrameS5_ii
	extern _Z17FX_TriggerOneShotP8FxSystemP8FxEffectiiPK14FxSpatialFramei
	extern iInterlockedCompareExchange
	extern _Z23FX_SortNewElemsInEffectP8FxSystemP8FxEffect
	extern _Z24FX_SpawnAllFutureLoopingP8FxSystemP8FxEffectiiPK14FxSpatialFrameS5_ii
	extern fx_enable
	extern _Z21FX_GetBoneOrientationiiiP13orientation_t
	extern fx_visMinTraceDist
	extern iInterlockedDecrement
	extern _Z24FX_GetOriginForTrailElemP8FxEffectPK9FxElemDefPK14FxSpatialFrameiPfS7_S7_

;Exports of fx_system:
	global fx_systemBufferPool
	global fx_systemPool
	global _Z24FX_EffectAffectsGameplayPK11FxEffectDef
	global _Z23FX_RemoveAllEffectElemsP8FxSystemP8FxEffect
	global _Z11FX_FreeElemP8FxSystemtP8FxEffectj
	global _Z12FX_GetSystemi
	global _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi
	global _Z13FX_InitSystemi
	global _Z13FX_KillEffectP8FxSystemP8FxEffect
	global _Z13FX_StopEffectP8FxSystemP8FxEffect
	global _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj
	global _Z16FX_FreeTrailElemP8FxSystemtP8FxEffectP7FxTrail
	global _Z16FX_KillEffectDefiPK11FxEffectDef
	global _Z17FX_DelRefToEffectP8FxSystemP8FxEffect
	global _Z17FX_KillAllEffectsi
	global _Z17FX_RelocateSystemP8FxSystemi
	global _Z17FX_ShutdownSystemi
	global _Z18FX_RetriggerEffectiP8FxEffecti
	global _Z19FX_GetSystemBuffersi
	global _Z19FX_PlayBoltedEffectiPK11FxEffectDefiii
	global _Z20FX_FreeSpotLightElemP8FxSystemtP8FxEffect
	global _Z20FX_LinkSystemBuffersP8FxSystemP15FxSystemBuffers
	global _Z20FX_ThroughWithEffectiP8FxEffect
	global _Z21FX_PlayOrientedEffectiPK11FxEffectDefiPKfPA3_S2_
	global _Z22FX_GetClientVisibilityiPKfS0_
	global _Z22FX_SpawnOrientedEffectiPK11FxEffectDefiPKfPA3_S2_j
	global _Z22FX_SpawnTrailElem_CullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif
	global _Z23FX_RunGarbageCollectionP8FxSystem
	global _Z24FX_SpawnTrailElem_NoCullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif
	global _Z27FX_EffectNoLongerReferencedP8FxSystemP8FxEffect
	global _Z35FX_PlayOrientedEffectWithMarkEntityiPK11FxEffectDefiPKfPA3_S2_j
	global fx_marksSystemPool
	global fx_serverVisClient


SECTION .text


;FX_EffectAffectsGameplay(FxEffectDef const*)
_Z24FX_EffectAffectsGameplayPK11FxEffectDef:
_Z24FX_EffectAffectsGameplayPK11FxEffectDef_60:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov [ebp-0x2c], eax
	mov edx, eax
	mov eax, [eax+0x10]
	add eax, [edx+0x14]
	add eax, [edx+0x18]
	mov [ebp-0x28], eax
	jz _Z24FX_EffectAffectsGameplayPK11FxEffectDef_10
	mov eax, [ebp-0x2c]
	mov ebx, [eax+0x1c]
	test byte [ebx+0x1], 0x10
	jnz _Z24FX_EffectAffectsGameplayPK11FxEffectDef_20
	mov byte [ebp-0x1d], 0x0
	mov dword [ebp-0x24], 0x0
	mov dword [ebp-0x1c], 0xfc
	jmp _Z24FX_EffectAffectsGameplayPK11FxEffectDef_30
_Z24FX_EffectAffectsGameplayPK11FxEffectDef_90:
	add dword [ebp-0x24], 0x1
	mov edx, [ebp-0x24]
	cmp [ebp-0x28], edx
	jbe _Z24FX_EffectAffectsGameplayPK11FxEffectDef_40
	mov ebx, [ebp-0x1c]
	mov eax, [ebp-0x2c]
	add ebx, [eax+0x1c]
	add dword [ebp-0x1c], 0xfc
	test byte [ebx+0x1], 0x10
	jnz _Z24FX_EffectAffectsGameplayPK11FxEffectDef_20
_Z24FX_EffectAffectsGameplayPK11FxEffectDef_30:
	mov eax, [ebx+0xdc]
	test eax, eax
	jz _Z24FX_EffectAffectsGameplayPK11FxEffectDef_50
	call _Z24FX_EffectAffectsGameplayPK11FxEffectDef_60
	test al, al
	jnz _Z24FX_EffectAffectsGameplayPK11FxEffectDef_20
_Z24FX_EffectAffectsGameplayPK11FxEffectDef_50:
	mov eax, [ebx+0xd8]
	test eax, eax
	jz _Z24FX_EffectAffectsGameplayPK11FxEffectDef_70
	call _Z24FX_EffectAffectsGameplayPK11FxEffectDef_60
	test al, al
	jnz _Z24FX_EffectAffectsGameplayPK11FxEffectDef_20
_Z24FX_EffectAffectsGameplayPK11FxEffectDef_70:
	mov eax, [ebx+0xe0]
	test eax, eax
	jz _Z24FX_EffectAffectsGameplayPK11FxEffectDef_80
	call _Z24FX_EffectAffectsGameplayPK11FxEffectDef_60
	test al, al
	jnz _Z24FX_EffectAffectsGameplayPK11FxEffectDef_20
_Z24FX_EffectAffectsGameplayPK11FxEffectDef_80:
	cmp byte [ebx+0xb0], 0xa
	jnz _Z24FX_EffectAffectsGameplayPK11FxEffectDef_90
	movzx edx, byte [ebx+0xb1]
	cmp dl, 0x1
	jz _Z24FX_EffectAffectsGameplayPK11FxEffectDef_100
	mov eax, [ebx+0xbc]
	test dl, dl
	jz _Z24FX_EffectAffectsGameplayPK11FxEffectDef_90
	mov esi, eax
	xor edi, edi
	jmp _Z24FX_EffectAffectsGameplayPK11FxEffectDef_110
_Z24FX_EffectAffectsGameplayPK11FxEffectDef_120:
	add edi, 0x1
	add esi, 0x4
	movzx eax, byte [ebx+0xb1]
	cmp eax, edi
	jbe _Z24FX_EffectAffectsGameplayPK11FxEffectDef_90
_Z24FX_EffectAffectsGameplayPK11FxEffectDef_110:
	mov eax, [esi]
	call _Z24FX_EffectAffectsGameplayPK11FxEffectDef_60
	test al, al
	jz _Z24FX_EffectAffectsGameplayPK11FxEffectDef_120
	mov byte [ebp-0x1d], 0x1
	jmp _Z24FX_EffectAffectsGameplayPK11FxEffectDef_90
_Z24FX_EffectAffectsGameplayPK11FxEffectDef_100:
	mov eax, [ebx+0xbc]
	call _Z24FX_EffectAffectsGameplayPK11FxEffectDef_60
	test al, al
	jz _Z24FX_EffectAffectsGameplayPK11FxEffectDef_90
_Z24FX_EffectAffectsGameplayPK11FxEffectDef_20:
	mov eax, 0x1
_Z24FX_EffectAffectsGameplayPK11FxEffectDef_130:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24FX_EffectAffectsGameplayPK11FxEffectDef_10:
	xor eax, eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24FX_EffectAffectsGameplayPK11FxEffectDef_40:
	movzx eax, byte [ebp-0x1d]
	jmp _Z24FX_EffectAffectsGameplayPK11FxEffectDef_130
	nop
	add [eax], al


;FX_RemoveAllEffectElems(FxSystem*, FxEffect*)
_Z23FX_RemoveAllEffectElemsP8FxSystemP8FxEffect:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov [ebp-0x1c], eax
	mov [ebp-0x20], edx
	mov eax, [edx+0x4]
	add eax, 0x1
	mov [edx+0x4], eax
	mov [esp+0x4], edx
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z13FX_StopEffectP8FxSystemP8FxEffect
	xor ebx, ebx
_Z23FX_RemoveAllEffectElemsP8FxSystemP8FxEffect_40:
	mov edx, [ebp-0x20]
	movzx eax, word [edx+ebx*2+0x8]
	cmp ax, 0xffff
	jnz _Z23FX_RemoveAllEffectElemsP8FxSystemP8FxEffect_10
	jmp _Z23FX_RemoveAllEffectElemsP8FxSystemP8FxEffect_20
_Z23FX_RemoveAllEffectElemsP8FxSystemP8FxEffect_30:
	mov edx, edi
_Z23FX_RemoveAllEffectElemsP8FxSystemP8FxEffect_10:
	mov [esp+0xc], ebx
	mov [esp+0x8], edx
	movzx eax, ax
	mov [esp+0x4], eax
	mov ecx, [ebp-0x1c]
	mov [esp], ecx
	call _Z11FX_FreeElemP8FxSystemtP8FxEffectj
	mov edi, [ebp-0x20]
	movzx eax, word [edi+ebx*2+0x8]
	cmp ax, 0xffff
	jnz _Z23FX_RemoveAllEffectElemsP8FxSystemP8FxEffect_30
_Z23FX_RemoveAllEffectElemsP8FxSystemP8FxEffect_20:
	add ebx, 0x1
	cmp ebx, 0x3
	jnz _Z23FX_RemoveAllEffectElemsP8FxSystemP8FxEffect_40
	mov ecx, [ebp-0x20]
	movzx eax, word [ecx+0x10]
	cmp ax, 0xffff
	jz _Z23FX_RemoveAllEffectElemsP8FxSystemP8FxEffect_50
_Z23FX_RemoveAllEffectElemsP8FxSystemP8FxEffect_120:
	movzx eax, ax
	lea esi, [eax*4]
	mov edi, [ebp-0x1c]
	add esi, [edi+0x178]
	movzx eax, word [esi+0x2]
	cmp ax, 0xffff
	jnz _Z23FX_RemoveAllEffectElemsP8FxSystemP8FxEffect_60
	jmp _Z23FX_RemoveAllEffectElemsP8FxSystemP8FxEffect_70
_Z23FX_RemoveAllEffectElemsP8FxSystemP8FxEffect_90:
	movzx eax, word [ebx+0x14]
	mov [esi+0x2], ax
	cld
	mov ecx, 0x8
	mov edi, ebx
	xor eax, eax
	rep stosd
	mov eax, ebx
	mov edx, [ebp-0x1c]
	sub eax, [edx+0x17c]
	sar eax, 0x5
	mov ecx, edx
	mov edx, [edx+0x188]
	mov [ebx], edx
	mov [ecx+0x188], eax
	mov edi, [ebp-0x20]
	mov eax, [edi+0x4]
	sub ax, 0x1
	jz _Z23FX_RemoveAllEffectElemsP8FxSystemP8FxEffect_80
	mov edx, edi
_Z23FX_RemoveAllEffectElemsP8FxSystemP8FxEffect_110:
	mov eax, [edx+0x4]
	sub eax, 0x1
	mov [edx+0x4], eax
	mov eax, [edx+0x4]
	mov ecx, [ebp-0x1c]
	mov eax, [ecx+0x198]
	sub eax, 0x1
	mov [ecx+0x198], eax
	movzx eax, word [esi+0x2]
	cmp ax, 0xffff
	jz _Z23FX_RemoveAllEffectElemsP8FxSystemP8FxEffect_70
_Z23FX_RemoveAllEffectElemsP8FxSystemP8FxEffect_60:
	mov edx, eax
	movzx eax, ax
	lea ebx, [eax*4]
	mov eax, [ebp-0x1c]
	add ebx, [eax+0x17c]
	cmp dx, [esi+0x4]
	jnz _Z23FX_RemoveAllEffectElemsP8FxSystemP8FxEffect_90
	mov word [esi+0x4], 0xffff
	jmp _Z23FX_RemoveAllEffectElemsP8FxSystemP8FxEffect_90
_Z23FX_RemoveAllEffectElemsP8FxSystemP8FxEffect_80:
	movzx eax, word [edi+0x14]
	lea edx, [eax*4]
	add edx, [ecx+0x170]
	mov eax, [edi+0x4]
	test eax, 0x10000000
	jz _Z23FX_RemoveAllEffectElemsP8FxSystemP8FxEffect_100
_Z23FX_RemoveAllEffectElemsP8FxSystemP8FxEffect_160:
	mov eax, [ebp-0x1c]
	mov byte [eax+0x9dd], 0x1
	mov edx, [ebp-0x20]
	jmp _Z23FX_RemoveAllEffectElemsP8FxSystemP8FxEffect_110
_Z23FX_RemoveAllEffectElemsP8FxSystemP8FxEffect_70:
	movzx eax, word [esi]
	cmp ax, 0xffff
	jnz _Z23FX_RemoveAllEffectElemsP8FxSystemP8FxEffect_120
_Z23FX_RemoveAllEffectElemsP8FxSystemP8FxEffect_50:
	mov edi, [ebp-0x1c]
	mov eax, [edi+0x9c0]
	test eax, eax
	jle _Z23FX_RemoveAllEffectElemsP8FxSystemP8FxEffect_130
	movzx eax, word [edi+0x9c4]
	shl eax, 0x2
	add eax, [edi+0x170]
	cmp [ebp-0x20], eax
	jz _Z23FX_RemoveAllEffectElemsP8FxSystemP8FxEffect_140
_Z23FX_RemoveAllEffectElemsP8FxSystemP8FxEffect_130:
	mov edi, [ebp-0x20]
	mov eax, [edi+0x4]
	sub ax, 0x1
	jz _Z23FX_RemoveAllEffectElemsP8FxSystemP8FxEffect_150
	mov eax, [edi+0x4]
	sub eax, 0x1
	mov [edi+0x4], eax
	mov eax, [edi+0x4]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23FX_RemoveAllEffectElemsP8FxSystemP8FxEffect_100:
	mov eax, [edx+0x4]
	mov eax, [edx+0x4]
	sub eax, 0x20000
	mov [edx+0x4], eax
	mov [esp+0x4], edx
	mov [esp], ecx
	call _Z17FX_DelRefToEffectP8FxSystemP8FxEffect
	jmp _Z23FX_RemoveAllEffectElemsP8FxSystemP8FxEffect_160
_Z23FX_RemoveAllEffectElemsP8FxSystemP8FxEffect_150:
	movzx eax, word [edi+0x14]
	lea edx, [eax*4]
	mov eax, [ebp-0x1c]
	add edx, [eax+0x170]
	mov eax, [edi+0x4]
	test eax, 0x10000000
	jz _Z23FX_RemoveAllEffectElemsP8FxSystemP8FxEffect_170
_Z23FX_RemoveAllEffectElemsP8FxSystemP8FxEffect_180:
	mov ecx, [ebp-0x1c]
	mov byte [ecx+0x9dd], 0x1
	mov edi, [ebp-0x20]
	mov eax, [edi+0x4]
	sub eax, 0x1
	mov [edi+0x4], eax
	mov eax, [edi+0x4]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23FX_RemoveAllEffectElemsP8FxSystemP8FxEffect_170:
	mov eax, [edx+0x4]
	mov eax, [edx+0x4]
	sub eax, 0x20000
	mov [edx+0x4], eax
	mov [esp+0x4], edx
	mov edx, [ebp-0x1c]
	mov [esp], edx
	call _Z17FX_DelRefToEffectP8FxSystemP8FxEffect
	jmp _Z23FX_RemoveAllEffectElemsP8FxSystemP8FxEffect_180
_Z23FX_RemoveAllEffectElemsP8FxSystemP8FxEffect_140:
	mov eax, edi
	movzx edi, word [edi+0x9c6]
	lea ebx, [edi*4]
	add ebx, [eax+0x174]
	cld
	mov ecx, 0xa
	xor eax, eax
	mov edi, ebx
	rep stosd
	mov ecx, ebx
	mov eax, [ebp-0x1c]
	sub ecx, [eax+0x174]
	sar ecx, 0x3
	lea eax, [ecx+ecx*2]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	mov edx, eax
	shl edx, 0x10
	add eax, edx
	lea eax, [ecx+eax*4]
	mov ecx, [ebp-0x1c]
	mov edx, [ecx+0x184]
	mov [ebx], edx
	mov [ecx+0x184], eax
	mov edi, [ebp-0x20]
	mov eax, [edi+0x4]
	sub ax, 0x1
	jz _Z23FX_RemoveAllEffectElemsP8FxSystemP8FxEffect_190
	mov edx, edi
_Z23FX_RemoveAllEffectElemsP8FxSystemP8FxEffect_210:
	mov eax, [edx+0x4]
	sub eax, 0x1
	mov [edx+0x4], eax
	mov eax, [edx+0x4]
	mov ecx, [ebp-0x1c]
	mov eax, [ecx+0x194]
	sub eax, 0x1
	mov [ecx+0x194], eax
	mov eax, [ecx+0x9c0]
	sub eax, 0x1
	mov [ecx+0x9c0], eax
	jmp _Z23FX_RemoveAllEffectElemsP8FxSystemP8FxEffect_130
_Z23FX_RemoveAllEffectElemsP8FxSystemP8FxEffect_190:
	movzx eax, word [edi+0x14]
	lea edx, [eax*4]
	add edx, [ecx+0x170]
	mov eax, [edi+0x4]
	test eax, 0x10000000
	jnz _Z23FX_RemoveAllEffectElemsP8FxSystemP8FxEffect_200
	mov eax, [edx+0x4]
	mov eax, [edx+0x4]
	sub eax, 0x20000
	mov [edx+0x4], eax
	mov [esp+0x4], edx
	mov [esp], ecx
	call _Z17FX_DelRefToEffectP8FxSystemP8FxEffect
_Z23FX_RemoveAllEffectElemsP8FxSystemP8FxEffect_200:
	mov eax, [ebp-0x1c]
	mov byte [eax+0x9dd], 0x1
	mov edx, [ebp-0x20]
	jmp _Z23FX_RemoveAllEffectElemsP8FxSystemP8FxEffect_210
	nop


;FX_FreeElem(FxSystem*, unsigned short, FxEffect*, unsigned int)
_Z11FX_FreeElemP8FxSystemtP8FxEffectj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov edi, [ebp+0x14]
	movzx edx, word [ebp+0xc]
	movzx eax, dx
	lea ebx, [eax*4]
	add ebx, [esi+0x174]
	test edi, edi
	jnz _Z11FX_FreeElemP8FxSystemtP8FxEffectj_10
	mov eax, [ebp+0x10]
	cmp dx, [eax+0xe]
	jz _Z11FX_FreeElemP8FxSystemtP8FxEffectj_20
_Z11FX_FreeElemP8FxSystemtP8FxEffectj_10:
	movzx ecx, word [ebx+0x4]
	cmp cx, 0xffff
	jz _Z11FX_FreeElemP8FxSystemtP8FxEffectj_30
	movzx eax, cx
	shl eax, 0x2
	add eax, [esi+0x174]
	movzx edx, word [ebx+0x6]
	mov [eax+0x6], dx
_Z11FX_FreeElemP8FxSystemtP8FxEffectj_30:
	movzx eax, word [ebx+0x6]
	cmp ax, 0xffff
	jz _Z11FX_FreeElemP8FxSystemtP8FxEffectj_40
	movzx eax, ax
	shl eax, 0x2
	add eax, [esi+0x174]
	mov [eax+0x4], cx
_Z11FX_FreeElemP8FxSystemtP8FxEffectj_90:
	mov edx, [ebp+0x10]
	mov eax, [edx]
	movzx edx, byte [ebx]
	lea ecx, [edx*4]
	shl edx, 0x8
	sub edx, ecx
	add edx, [eax+0x1c]
	cmp byte [edx+0xb0], 0x5
	jz _Z11FX_FreeElemP8FxSystemtP8FxEffectj_50
_Z11FX_FreeElemP8FxSystemtP8FxEffectj_80:
	cld
	mov ecx, 0xa
	xor eax, eax
	mov edi, ebx
	rep stosd
	mov ecx, ebx
	sub ecx, [esi+0x174]
	sar ecx, 0x3
	lea eax, [ecx+ecx*2]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	mov edx, eax
	shl edx, 0x10
	add eax, edx
	lea eax, [ecx+eax*4]
	mov edx, [esi+0x184]
	mov [ebx], edx
	mov [esi+0x184], eax
	mov ecx, [ebp+0x10]
	mov eax, [ecx+0x4]
	sub ax, 0x1
	jz _Z11FX_FreeElemP8FxSystemtP8FxEffectj_60
	mov edx, ecx
	mov eax, [edx+0x4]
	sub eax, 0x1
	mov [edx+0x4], eax
	mov eax, [edx+0x4]
	mov eax, [esi+0x194]
	sub eax, 0x1
	mov [esi+0x194], eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11FX_FreeElemP8FxSystemtP8FxEffectj_60:
	movzx eax, word [ecx+0x14]
	lea edx, [eax*4]
	add edx, [esi+0x170]
	mov eax, [ecx+0x4]
	test eax, 0x10000000
	jz _Z11FX_FreeElemP8FxSystemtP8FxEffectj_70
_Z11FX_FreeElemP8FxSystemtP8FxEffectj_100:
	mov byte [esi+0x9dd], 0x1
	mov edx, [ebp+0x10]
	mov eax, [edx+0x4]
	sub eax, 0x1
	mov [edx+0x4], eax
	mov eax, [edx+0x4]
	mov eax, [esi+0x194]
	sub eax, 0x1
	mov [esi+0x194], eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11FX_FreeElemP8FxSystemtP8FxEffectj_50:
	test byte [edx+0x3], 0x8
	jz _Z11FX_FreeElemP8FxSystemtP8FxEffectj_80
	mov eax, [ebx+0x18]
	test eax, eax
	jz _Z11FX_FreeElemP8FxSystemtP8FxEffectj_80
	mov dword [esp], 0xb
	call _Z24Sys_EnterCriticalSection15CriticalSection
	mov eax, [ebx+0x18]
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call _Z15Phys_ObjDestroy9PhysWorldi
	mov dword [esp], 0xb
	call _Z24Sys_LeaveCriticalSection15CriticalSection
	jmp _Z11FX_FreeElemP8FxSystemtP8FxEffectj_80
_Z11FX_FreeElemP8FxSystemtP8FxEffectj_40:
	mov eax, [ebp+0x10]
	mov [eax+edi*2+0x8], cx
	jmp _Z11FX_FreeElemP8FxSystemtP8FxEffectj_90
_Z11FX_FreeElemP8FxSystemtP8FxEffectj_20:
	mov edx, eax
	movzx eax, word [ebx+0x4]
	mov [edx+0xe], ax
	jmp _Z11FX_FreeElemP8FxSystemtP8FxEffectj_10
_Z11FX_FreeElemP8FxSystemtP8FxEffectj_70:
	mov eax, [edx+0x4]
	mov eax, [edx+0x4]
	sub eax, 0x20000
	mov [edx+0x4], eax
	mov [esp+0x4], edx
	mov [esp], esi
	call _Z17FX_DelRefToEffectP8FxSystemP8FxEffect
	jmp _Z11FX_FreeElemP8FxSystemtP8FxEffectj_100
	nop


;FX_GetSystem(int)
_Z12FX_GetSystemi:
	push ebp
	mov ebp, esp
	mov eax, fx_systemPool
	pop ebp
	ret


;FX_SpawnElem(FxSystem*, FxEffect*, int, FxSpatialFrame const*, int, float, int)
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x11c
	mov eax, [ebp+0xc]
	mov edx, [eax]
	mov eax, [ebp+0x10]
	shl eax, 0x2
	mov edi, [ebp+0x10]
	shl edi, 0x8
	sub edi, eax
	add edi, [edx+0x1c]
	mov eax, fx_cull_elem_spawn
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_10
	mov ebx, [ebp+0x14]
	add ebx, 0x10
	mov ecx, [ebp+0x8]
	add ecx, 0xb0
	movss xmm3, dword [edi+0x10]
	pxor xmm4, xmm4
	ucomiss xmm3, xmm4
	jp _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_20
	jnz _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_20
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_220:
	test byte [edi], 0x4
	jnz _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_30
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_10:
	mov edx, [ebp+0x18]
	add edx, [edi+0x28]
	mov [ebp-0xd0], edx
	mov ecx, [edi+0x2c]
	mov [ebp-0xdc], ecx
	test ecx, ecx
	jz _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_40
	mov ebx, [ebp+0xc]
	movzx esi, word [ebx+0x12]
	movzx eax, si
	add eax, edx
	mov edx, [ebp+0x20]
	lea ecx, [edx+edx*8]
	lea ecx, [edx+ecx*4]
	lea ecx, [eax+ecx*8]
	mov edx, 0x11a3019b
	mov eax, ecx
	mul edx
	mov eax, ecx
	sub eax, edx
	shr eax, 1
	add edx, eax
	shr edx, 0x8
	mov ebx, edx
	shl ebx, 0x5
	mov eax, edx
	shl eax, 0x9
	sub eax, ebx
	sub eax, edx
	sub ecx, eax
	movzx ecx, cx
	lea ecx, [ecx*4+0x48]
	add ecx, fx_randomTable
	mov eax, [ebp-0xdc]
	add eax, 0x1
	movzx edx, word [ecx]
	imul eax, edx
	sar eax, 0x10
	add [ebp-0xd0], eax
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_190:
	movzx ecx, byte [ebp+0x20]
	mov [ebp-0xd5], cl
	movzx edx, si
	add edx, [ebp-0xd0]
	movzx eax, cl
	lea ecx, [eax+eax*8]
	lea ecx, [eax+ecx*4]
	lea ecx, [edx+ecx*8]
	mov edx, 0x11a3019b
	mov eax, ecx
	mul edx
	mov eax, ecx
	sub eax, edx
	shr eax, 1
	add edx, eax
	shr edx, 0x8
	mov ebx, edx
	shl ebx, 0x5
	mov eax, edx
	shl eax, 0x9
	sub eax, ebx
	sub eax, edx
	sub ecx, eax
	movzx ecx, cx
	mov [ebp-0xd4], ecx
	movzx eax, byte [edi+0xb0]
	cmp al, 0xa
	jz _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_50
	cmp al, 0x9
	jz _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_60
	cmp al, 0x8
	jz _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_70
	mov eax, [edi+0xd8]
	test eax, eax
	jz _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_80
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_230:
	mov eax, [ebp+0x8]
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_240:
	mov edx, [eax+0x174]
	mov ecx, eax
	mov eax, [eax+0x184]
	cmp eax, 0xffffffff
	jz _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_90
	lea eax, [eax+eax*4]
	lea eax, [edx+eax*8]
	mov [ebp-0xc0], eax
	mov ebx, eax
	mov eax, [eax]
	mov [ecx+0x184], eax
	mov eax, [ecx+0x194]
	add eax, 0x1
	mov [ecx+0x194], eax
	test ebx, ebx
	jz _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_90
	mov edx, [ebp+0xc]
	mov eax, [edx+0x4]
	add eax, 0x1
	mov [edx+0x4], eax
	movzx ecx, byte [ebp+0x10]
	mov ebx, [ebp-0xc0]
	mov [ebx], cl
	movzx eax, byte [ebp-0xd5]
	mov [ebx+0x1], al
	mov byte [ebx+0x2], 0xff
	mov byte [ebx+0x3], 0x0
	mov edx, [ebp-0xd0]
	mov [ebx+0x8], edx
	add ebx, 0x18
	mov [ebp-0xe0], ebx
	mov ebx, [edi]
	and ebx, 0xc0
	cmp ebx, 0x40
	jz _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_100
	cmp ebx, 0xc0
	jz _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_110
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_250:
	lea eax, [ebp-0x84]
	mov [esp+0x4], eax
	mov eax, [ebp+0x14]
	mov [esp], eax
	call _Z14UnitQuatToAxisPKfPA3_f
	mov edx, [ebp-0xe0]
	mov [esp+0xc], edx
	mov ecx, [ebp-0xd4]
	mov [esp+0x8], ecx
	mov [esp+0x4], edi
	mov eax, [ebp+0x14]
	mov [esp], eax
	call _Z17FX_GetSpawnOriginPK14FxSpatialFramePK9FxElemDefiPf
	mov edx, [ebp-0xe0]
	mov [esp+0xc], edx
	mov ecx, [ebp-0xd4]
	mov [esp+0x8], ecx
	mov [esp+0x4], edi
	mov eax, [ebp+0x14]
	mov [esp], eax
	call _Z20FX_OffsetSpawnOriginPK14FxSpatialFramePK9FxElemDefiPf
	cmp ebx, 0x80
	jz _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_120
	cmp ebx, 0x40
	jz _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_120
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_330:
	mov eax, [ebp-0xc0]
	mov dword [eax+0xc], 0x0
	mov dword [eax+0x10], 0x0
	mov dword [eax+0x14], 0x0
	cmp byte [edi+0xb0], 0x3
	jz _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_130
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_390:
	mov edx, [ebp-0xc0]
	mov word [edx+0x6], 0xffff
	movzx eax, byte [edi+0xb0]
	cmp al, 0x7
	jz _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_140
	cmp al, 0x3
	ja _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_150
	mov dword [ebp-0xcc], 0x0
	mov edx, [ebp-0xcc]
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_340:
	mov ecx, [ebp+0xc]
	movzx eax, word [ecx+edx*2+0x8]
	mov ebx, [ebp-0xc0]
	mov [ebx+0x4], ax
	mov eax, ebx
	mov edx, [ebp+0x8]
	sub eax, [edx+0x174]
	js _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_160
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_460:
	sar eax, 0x2
	movzx edx, ax
	mov ecx, [ebp-0xcc]
	mov ebx, [ebp+0xc]
	mov [ebx+ecx*2+0x8], dx
	mov ecx, [ebp-0xc0]
	movzx eax, word [ecx+0x4]
	cmp ax, 0xffff
	jz _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_170
	movzx eax, ax
	shl eax, 0x2
	mov ebx, [ebp+0x8]
	add eax, [ebx+0x174]
	mov [eax+0x6], dx
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_170:
	cmp byte [edi+0xb0], 0x5
	jz _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_180
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_210:
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_40:
	mov edx, [ebp+0xc]
	movzx esi, word [edx+0x12]
	jmp _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_190
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_60:
	mov edx, [ebp+0xc]
	mov eax, [edx+0x18]
	and eax, 0xffe000
	cmp eax, 0xffe000
	jz _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_200
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_260:
	mov edx, 0x3ff
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_270:
	mov ebx, [ebp+0x8]
	movzx eax, byte [ebx+0x9df]
	mov [esp+0x10], edx
	mov edx, [ebp-0xd4]
	mov [esp+0xc], edx
	mov ecx, [ebp+0x14]
	mov [esp+0x8], ecx
	mov [esp+0x4], edi
	movzx eax, al
	mov [esp], eax
	call _Z19FX_CreateImpactMarkiPK9FxElemDefPK14FxSpatialFrameij
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_20:
	mov edx, [ebp+0x8]
	movss xmm0, dword [edx+0xb0]
	mov eax, [ebp+0x14]
	subss xmm0, [eax+0x10]
	movss xmm1, dword [edx+0xb4]
	subss xmm1, [eax+0x14]
	movss xmm2, dword [edx+0xb8]
	subss xmm2, [eax+0x18]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	subss xmm0, [edi+0xc]
	ucomiss xmm4, xmm0
	ja _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_210
	ucomiss xmm0, xmm3
	ja _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_210
	jmp _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_220
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_30:
	mov eax, [edi+0x24]
	mov edx, [ecx+0x94]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov [esp+0x4], edx
	mov [esp], ecx
	call _Z13FX_CullSpherePK8FxCamerajPKff
	test al, al
	jnz _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_210
	jmp _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_10
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_80:
	mov eax, [edi+0xdc]
	test eax, eax
	jnz _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_230
	mov eax, [edi+0xe0]
	test eax, eax
	jnz _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_230
	mov ecx, [ebp-0xd4]
	lea eax, [ecx*4+0x44]
	add eax, fx_randomTable
	mov edx, [edi+0x34]
	add edx, 0x1
	movzx eax, word [eax]
	imul edx, eax
	sar edx, 0x10
	add edx, [edi+0x30]
	add edx, [ebp-0xd0]
	mov ebx, [ebp+0x8]
	cmp edx, [ebx+0x9d0]
	jle _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_210
	mov eax, ebx
	jmp _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_240
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_100:
	mov ecx, [ebp+0xc]
	add ecx, 0x28
	mov [ebp+0x14], ecx
	jmp _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_250
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_200:
	movzx edx, word [edx+0x18]
	mov eax, edx
	and ax, 0xfff
	cmp ax, 0xfff
	jz _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_260
	and edx, 0xfff
	jmp _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_270
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_90:
	mov dword [esp], 0x21
	call _Z18R_WarnOncePerFrame14GfxWarningTypez
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_50:
	lea edx, [ebp-0x3c]
	mov [esp+0xc], edx
	mov [esp+0x8], ecx
	mov [esp+0x4], edi
	mov ecx, [ebp+0x14]
	mov [esp], ecx
	call _Z17FX_GetSpawnOriginPK14FxSpatialFramePK9FxElemDefiPf
	lea ebx, [ebp-0x3c]
	mov [esp+0xc], ebx
	mov eax, [ebp-0xd4]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov edx, [ebp+0x14]
	mov [esp], edx
	call _Z20FX_OffsetSpawnOriginPK14FxSpatialFramePK9FxElemDefiPf
	movzx edx, byte [edi+0xb1]
	cmp dl, 0x1
	jz _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_280
	mov ebx, [ebp-0xd4]
	lea eax, [ebx*4+0x54]
	add eax, fx_randomTable
	movzx edx, dl
	movzx eax, word [eax]
	imul edx, eax
	sar edx, 0x10
	shl edx, 0x2
	add edx, [edi+0xbc]
	mov edx, [edx]
	mov [ebp-0xc8], edx
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_480:
	lea ebx, [ebp-0x60]
	mov [esp+0x4], ebx
	mov eax, [ebp+0x14]
	mov [esp], eax
	call _Z14UnitQuatToAxisPKfPA3_f
	test byte [edi], 0x8
	jnz _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_290
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_470:
	movzx esi, byte [edi+0xf8]
	cmp esi, 0xfe
	jle _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_300
	mov esi, 0xff
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_430:
	mov ecx, [ebp+0xc]
	mov edx, [ecx+0x18]
	mov eax, edx
	and eax, 0xffe000
	cmp eax, 0xffe000
	jz _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_310
	mov edi, ecx
	movzx eax, word [ecx+0x14]
	mov ecx, edx
	shr ecx, 0xd
	and ecx, 0x7ff
	movzx edx, word [edi+0x18]
	and edx, 0xfff
	mov dword [esp+0x24], 0x3ff
	mov [esp+0x20], eax
	mov [esp+0x1c], esi
	mov [esp+0x18], ecx
	mov [esp+0x14], edx
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_450:
	mov [esp+0x10], ebx
	lea eax, [ebp-0x3c]
	mov [esp+0xc], eax
	mov edx, [ebp-0xd0]
	mov [esp+0x8], edx
	mov ecx, [ebp-0xc8]
	mov [esp+0x4], ecx
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj
	mov ebx, eax
	test eax, eax
	jz _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_210
	mov eax, [eax+0x4]
	sub ax, 0x1
	jz _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_320
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_500:
	mov eax, [ebx+0x4]
	sub eax, 0x1
	mov [ebx+0x4], eax
	mov eax, [ebx+0x4]
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_120:
	mov ecx, [ebp-0xe0]
	movss xmm2, dword [ecx]
	mov ebx, [ebp+0x14]
	subss xmm2, [ebx+0x10]
	movss xmm3, dword [ecx+0x4]
	subss xmm3, [ebx+0x14]
	movss xmm4, dword [ecx+0x8]
	subss xmm4, [ebx+0x18]
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x84]
	movaps xmm1, xmm3
	mulss xmm1, [ebp-0x80]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [ebp-0x7c]
	addss xmm0, xmm1
	movss [ecx], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x78]
	movaps xmm1, xmm3
	mulss xmm1, [ebp-0x74]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [ebp-0x70]
	addss xmm0, xmm1
	movss [ecx+0x4], xmm0
	mulss xmm2, [ebp-0x6c]
	mulss xmm3, [ebp-0x68]
	addss xmm2, xmm3
	mulss xmm4, [ebp-0x64]
	addss xmm2, xmm4
	movss [ecx+0x8], xmm2
	jmp _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_330
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_150:
	cmp al, 0x4
	setz al
	movzx eax, al
	add eax, 0x1
	mov [ebp-0xcc], eax
	mov edx, eax
	jmp _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_340
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_180:
	mov eax, [ebp-0xc0]
	mov word [eax+0x24], 0x0
	test byte [edi+0x3], 0x8
	jz _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_210
	mov eax, [ebp+0xc]
	add eax, 0x44
	mov edx, [ebp+0xc]
	add edx, 0x28
	lea esi, [ebp-0xb4]
	mov [esp+0x10], esi
	mov ecx, [ebp-0xd4]
	mov [esp+0xc], ecx
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], edi
	call _Z17FX_GetOrientationPK9FxElemDefPK14FxSpatialFrameS4_iP13orientation_t
	lea ebx, [ebp-0x3c]
	mov [esp+0x8], ebx
	mov eax, [ebp-0xe0]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z27FX_OrientationPosToWorldPosPK13orientation_tPKfPf
	lea ebx, [ebp-0x60]
	mov [esp+0x10], ebx
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], esi
	mov edx, [ebp-0xd4]
	mov [esp+0x4], edx
	mov [esp], edi
	call _Z14FX_GetElemAxisPK9FxElemDefiPK13orientation_tfPA3_f
	lea ecx, [ebp-0x84]
	mov [esp+0x4], ecx
	mov [esp], ebx
	call _Z10AxisToQuatPA3_KfPf
	mov ebx, [edi+0x30]
	mov eax, [edi+0x34]
	mov [ebp-0xec], eax
	mov edx, fx_randomTable
	mov [ebp-0xbc], edx
	mov ecx, [ebp-0xd4]
	movzx edx, word [edx+ecx*4+0x44]
	mov ecx, [ebp-0xc0]
	add ecx, 0xc
	lea eax, [ebp-0x24]
	mov [esp+0x18], eax
	mov [esp+0x14], ecx
	mov [esp+0x10], esi
	mov dword [esp+0xc], 0x0
	mov eax, [ebp-0xec]
	add eax, 0x1
	imul eax, edx
	sar eax, 0x10
	add ebx, eax
	cvtsi2ss xmm0, ebx
	movss [esp+0x8], xmm0
	mov edx, [ebp-0xd4]
	mov [esp+0x4], edx
	mov [esp], edi
	call _Z20FX_GetVelocityAtTimePK9FxElemDefiffPK13orientation_tPKfPf
	movss xmm0, dword [edi+0x7c]
	mov ecx, [ebp-0xd4]
	mov ebx, [ebp-0xbc]
	mulss xmm0, [ebx+ecx*4+0xc]
	addss xmm0, [edi+0x78]
	movss xmm1, dword [_float_1000_00000000]
	mulss xmm0, xmm1
	movss [ebp-0x30], xmm0
	movss xmm0, dword [edi+0x84]
	mulss xmm0, [ebx+ecx*4+0x10]
	addss xmm0, [edi+0x80]
	mulss xmm0, xmm1
	movss [ebp-0x2c], xmm0
	movss xmm0, dword [edi+0x8c]
	mulss xmm0, [ebx+ecx*4+0x14]
	addss xmm0, [edi+0x88]
	mulss xmm0, xmm1
	movss [ebp-0x28], xmm0
	mov dword [esp], 0xb
	call _Z24Sys_EnterCriticalSection15CriticalSection
	movzx eax, byte [edi+0xb1]
	cmp al, 0x1
	jz _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_350
	movzx eax, al
	mov ecx, [ebp-0xd4]
	mov ebx, [ebp-0xbc]
	movzx edx, word [ebx+ecx*4+0x54]
	imul eax, edx
	sar eax, 0x10
	shl eax, 0x2
	add eax, [edi+0xbc]
	mov ebx, [eax]
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_540:
	mov eax, [ebx+0xd4]
	mov [esp+0x10], eax
	lea edi, [ebp-0x24]
	mov [esp+0xc], edi
	lea eax, [ebp-0x84]
	mov [esp+0x8], eax
	lea edx, [ebp-0x3c]
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call _Z14Phys_ObjCreate9PhysWorldPKfS1_S1_PK10PhysPreset
	mov ecx, [ebp-0xc0]
	mov [ecx+0x18], eax
	test eax, eax
	jnz _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_360
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_530:
	mov dword [esp], 0xb
	call _Z24Sys_LeaveCriticalSection15CriticalSection
	mov edi, [ebp-0xc0]
	mov eax, [edi+0x18]
	test eax, eax
	jnz _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_210
	mov edx, [ebp+0x8]
	mov eax, [edx+0x174]
	mov ecx, [ebp-0xcc]
	mov [esp+0xc], ecx
	mov ebx, [ebp+0xc]
	mov [esp+0x8], ebx
	sub edi, eax
	mov eax, edi
	js _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_370
	mov edi, edx
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_560:
	sar eax, 0x2
	movzx eax, ax
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z11FX_FreeElemP8FxSystemtP8FxEffectj
	jmp _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_210
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_140:
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x9c0]
	add eax, 0x1
	mov [ecx+0x9c0], eax
	mov eax, edx
	sub eax, [ecx+0x174]
	js _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_380
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_520:
	sar eax, 0x2
	mov ebx, [ebp+0x8]
	mov [ebx+0x9c6], ax
	jmp _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_210
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_130:
	mov eax, [edi+0xf4]
	cvtsi2ss xmm0, dword [eax+0x4]
	movss xmm1, dword [ebp+0x1c]
	divss xmm1, xmm0
	mov eax, [ebp-0xc0]
	movss [eax+0x24], xmm1
	jmp _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_390
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_70:
	mov ebx, [ebp+0x8]
	movzx ebx, byte [ebx+0x9df]
	mov [ebp-0xc4], ebx
	lea eax, [ebp-0x3c]
	mov [esp+0xc], eax
	mov edx, [ebp-0xd4]
	mov [esp+0x8], edx
	mov [esp+0x4], edi
	mov ecx, [ebp+0x14]
	mov [esp], ecx
	call _Z17FX_GetSpawnOriginPK14FxSpatialFramePK9FxElemDefiPf
	lea ebx, [ebp-0x3c]
	mov [esp+0xc], ebx
	mov eax, [ebp-0xd4]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov edx, [ebp+0x14]
	mov [esp], edx
	call _Z20FX_OffsetSpawnOriginPK14FxSpatialFramePK9FxElemDefiPf
	movzx edx, byte [edi+0xb1]
	cmp dl, 0x1
	jz _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_400
	mov ecx, [ebp-0xd4]
	lea eax, [ecx*4+0x54]
	add eax, fx_randomTable
	movzx edx, dl
	movzx eax, word [eax]
	imul edx, eax
	sar edx, 0x10
	shl edx, 0x2
	add edx, [edi+0xbc]
	mov ebx, [edx]
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_510:
	mov [esp], ebx
	call _Z18Com_FindSoundAliasPKc
	mov esi, eax
	test eax, eax
	jz _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_410
	call _Z22SND_AnyActiveListenersv
	test al, al
	jz _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_210
	call _Z16Sys_IsMainThreadv
	test al, al
	jz _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_420
	mov [esp+0xc], esi
	lea ebx, [ebp-0x3c]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x3fe
	mov edi, [ebp-0xc4]
	mov [esp], edi
	call _Z17CG_PlaySoundAliasiiPKfP16snd_alias_list_t
	jmp _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_210
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_300:
	test esi, esi
	mov eax, 0x0
	cmovle esi, eax
	jmp _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_430
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_310:
	movzx edx, word [ecx+0x18]
	mov eax, edx
	and ax, 0xfff
	cmp ax, 0xfff
	jz _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_440
	and edx, 0xfff
	movzx eax, word [ecx+0x14]
	mov [esp+0x24], edx
	mov [esp+0x20], eax
	mov [esp+0x1c], esi
	mov dword [esp+0x18], 0x7ff
	mov dword [esp+0x14], 0xfff
	jmp _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_450
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_110:
	xor eax, eax
	mov edx, [ebp-0xc0]
	mov [edx+0x18], eax
	mov [edx+0x1c], eax
	mov [edx+0x20], eax
	jmp _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_330
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_440:
	movzx eax, word [ecx+0x14]
	mov dword [esp+0x24], 0x3ff
	mov [esp+0x20], eax
	mov [esp+0x1c], esi
	mov dword [esp+0x18], 0x7ff
	mov dword [esp+0x14], 0xfff
	jmp _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_450
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_160:
	add eax, 0x3
	jmp _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_460
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_290:
	movss xmm0, dword [_float_360_00000000]
	mov eax, fx_randomTable
	mov edx, [ebp-0xd4]
	mulss xmm0, [eax+edx*4+0x60]
	lea ebx, [ebp-0x84]
	mov eax, [ebp-0x60]
	mov [ebp-0x84], eax
	mov eax, [ebp-0x5c]
	mov [ebp-0x80], eax
	mov eax, [ebp-0x58]
	mov [ebp-0x7c], eax
	lea eax, [ebp-0x54]
	lea edx, [ebp-0x78]
	movss [esp+0xc], xmm0
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], edx
	call _Z23RotatePointAroundVectorPfPKfS1_f
	movss xmm3, dword [ebp-0x80]
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x70]
	movss xmm2, dword [ebp-0x7c]
	movaps xmm1, xmm2
	mulss xmm1, [ebp-0x74]
	subss xmm0, xmm1
	movss [ebp-0x6c], xmm0
	mulss xmm2, [ebp-0x78]
	movss xmm0, dword [ebp-0x84]
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x70]
	subss xmm2, xmm1
	movss [ebp-0x68], xmm2
	mulss xmm0, [ebp-0x74]
	mulss xmm3, [ebp-0x78]
	subss xmm0, xmm3
	movss [ebp-0x64], xmm0
	jmp _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_470
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_280:
	mov ecx, [edi+0xbc]
	mov [ebp-0xc8], ecx
	jmp _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_480
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_320:
	movzx eax, word [ebx+0x14]
	lea edx, [eax*4]
	mov edi, [ebp+0x8]
	add edx, [edi+0x170]
	mov eax, [ebx+0x4]
	test eax, 0x10000000
	jz _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_490
	mov eax, edi
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_550:
	mov byte [eax+0x9dd], 0x1
	jmp _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_500
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_400:
	mov ebx, [edi+0xbc]
	jmp _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_510
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_380:
	add eax, 0x3
	jmp _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_520
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_410:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_failed_to_find_s
	mov dword [esp], 0x15
	call _Z16Com_PrintWarningiPKcz
	jmp _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_210
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_420:
	mov [esp+0x8], esi
	lea eax, [ebp-0x3c]
	mov [esp+0x4], eax
	mov edx, [ebp-0xc4]
	mov [esp], edx
	call _Z18CG_AddFXSoundAliasiPKfP16snd_alias_list_t
	jmp _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_210
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_360:
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call _Z30Phys_ObjSetCollisionFromXModelPK6XModel9PhysWorldi
	mov ebx, [ebp-0xc0]
	mov edx, [ebx+0x18]
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z26Phys_ObjSetAngularVelocityiPKf
	jmp _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_530
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_350:
	mov ebx, [edi+0xbc]
	jmp _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_540
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_490:
	mov eax, [edx+0x4]
	mov eax, [edx+0x4]
	sub eax, 0x20000
	mov [edx+0x4], eax
	mov [esp+0x4], edx
	mov [esp], edi
	call _Z17FX_DelRefToEffectP8FxSystemP8FxEffect
	mov eax, [ebp+0x8]
	jmp _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_550
_Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_370:
	add eax, 0x3
	mov edi, [ebp+0x8]
	jmp _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi_560
	nop


;FX_InitSystem(int)
_Z13FX_InitSystemi:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [esp+0x8], 0xa60
	mov dword [esp+0x4], 0x0
	mov dword [esp], fx_systemPool
	call memset
	mov dword [esp+0x8], 0x47480
	mov dword [esp+0x4], 0x0
	mov dword [esp], fx_systemBufferPool
	call memset
	mov dword [fx_systemPool+0x174], fx_systemBufferPool+0x20000
	mov dword [fx_systemPool+0x170], fx_systemBufferPool
	mov dword [fx_systemPool+0x178], fx_systemBufferPool+0x34000
	mov dword [fx_systemPool+0x17c], fx_systemBufferPool+0x34400
	mov dword [fx_systemPool+0x1a4], fx_systemBufferPool+0x44400
	mov dword [fx_systemPool+0x180], fx_systemBufferPool+0x46420
	call _Z16FX_RegisterDvarsv
	call _Z13FX_InitRandomv
	xor edx, edx
	mov ecx, fx_systemPool
	jmp _Z13FX_InitSystemi_10
_Z13FX_InitSystemi_30:
	sar eax, 0x2
	mov [ecx+0x1bc], ax
	sub edx, 0xffffff80
	add ecx, 0x2
	cmp edx, 0x20000
	jz _Z13FX_InitSystemi_20
_Z13FX_InitSystemi_10:
	mov eax, edx
	test edx, edx
	jns _Z13FX_InitSystemi_30
	lea eax, [edx+0x3]
	sar eax, 0x2
	mov [ecx+0x1bc], ax
	sub edx, 0xffffff80
	add ecx, 0x2
	cmp edx, 0x20000
	jnz _Z13FX_InitSystemi_10
_Z13FX_InitSystemi_20:
	mov dword [fx_systemPool+0x1b0], 0x0
	mov dword [fx_systemPool+0x1b4], 0x0
	mov dword [fx_systemPool+0x1b8], 0x0
	mov dword [fx_systemPool+0x9cc], 0x0
	mov dword [fx_systemPool+0x190], 0x0
	mov ecx, [fx_systemPool+0x174]
	mov dword [fx_systemPool+0x184], 0x0
	mov eax, ecx
	xor edx, edx
_Z13FX_InitSystemi_40:
	add edx, 0x1
	mov [eax], edx
	add eax, 0x28
	cmp edx, 0x7ff
	jnz _Z13FX_InitSystemi_40
	mov dword [ecx+0x13fd8], 0xffffffff
	mov dword [fx_systemPool+0x194], 0x0
	mov ecx, [fx_systemPool+0x17c]
	mov dword [fx_systemPool+0x188], 0x0
	mov eax, ecx
	xor dx, dx
_Z13FX_InitSystemi_50:
	add edx, 0x1
	mov [eax], edx
	add eax, 0x20
	cmp edx, 0x7ff
	jnz _Z13FX_InitSystemi_50
	mov dword [ecx+0xffe0], 0xffffffff
	mov dword [fx_systemPool+0x198], 0x0
	mov ecx, [fx_systemPool+0x178]
	mov dword [fx_systemPool+0x18c], 0x0
	mov eax, ecx
	xor dx, dx
_Z13FX_InitSystemi_60:
	add edx, 0x1
	mov [eax], edx
	add eax, 0x8
	cmp edx, 0x7f
	jnz _Z13FX_InitSystemi_60
	mov dword [ecx+0x3f8], 0xffffffff
	mov dword [fx_systemPool+0x19c], 0x0
	mov dword [fx_systemPool+0x9bc], 0x0
	mov dword [fx_systemPool+0x9c0], 0x0
	mov dword [fx_systemPool+0x1a0], 0x0
	mov eax, [fx_systemPool+0x1a4]
	mov dword [eax+0x1000], 0x0
	mov eax, [fx_systemPool+0x1a4]
	mov [fx_systemPool+0x1a8], eax
	add eax, 0x1010
	mov [fx_systemPool+0x1ac], eax
	mov dword [fx_systemPool+0x9d0], 0x0
	mov dword [fx_systemPool+0x9d4], 0xffffffff
	mov dword [fx_systemPool+0xbc], 0x1
	mov dword [fx_systemPool+0x144], 0x0
	mov dword [fx_systemPool+0x9d8], 0x1
	mov dword [esp], fx_marksSystemPool
	call _Z18FX_InitMarksSystemP13FxMarksSystem
	mov [fx_systemPool+0x9df], bl
	mov byte [fx_systemPool+0x9dc], 0x1
	mov [fx_serverVisClient], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;FX_KillEffect(FxSystem*, FxEffect*)
_Z13FX_KillEffectP8FxSystemP8FxEffect:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov eax, [esi+0x4]
	add eax, 0x1
	mov [esi+0x4], eax
	mov edx, esi
	mov eax, edi
	call _Z23FX_RemoveAllEffectElemsP8FxSystemP8FxEffect
	mov eax, [esi+0x4]
	test eax, 0x7fe0000
	jz _Z13FX_KillEffectP8FxSystemP8FxEffect_10
	mov eax, esi
	sub eax, [edi+0x170]
	js _Z13FX_KillEffectP8FxSystemP8FxEffect_20
	shr eax, 0x2
	mov [ebp-0x28], ax
	mov ebx, [edi+0x1b0]
	mov eax, [esi+0x4]
	test eax, 0x7fe0000
	jnz _Z13FX_KillEffectP8FxSystemP8FxEffect_30
_Z13FX_KillEffectP8FxSystemP8FxEffect_70:
	cmp byte [edi+0x9dd], 0x0
	jnz _Z13FX_KillEffectP8FxSystemP8FxEffect_40
_Z13FX_KillEffectP8FxSystemP8FxEffect_10:
	mov eax, [esi+0x4]
	sub ax, 0x1
	jz _Z13FX_KillEffectP8FxSystemP8FxEffect_50
	mov eax, [esi+0x4]
	sub eax, 0x1
	mov [esi+0x4], eax
	mov eax, [esi+0x4]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13FX_KillEffectP8FxSystemP8FxEffect_80:
	mov eax, [edx+0x4]
	test ax, ax
	jz _Z13FX_KillEffectP8FxSystemP8FxEffect_60
	mov eax, edi
	call _Z23FX_RemoveAllEffectElemsP8FxSystemP8FxEffect
_Z13FX_KillEffectP8FxSystemP8FxEffect_60:
	add ebx, 0x1
	mov eax, [esi+0x4]
	test eax, 0x7fe0000
	jz _Z13FX_KillEffectP8FxSystemP8FxEffect_70
_Z13FX_KillEffectP8FxSystemP8FxEffect_30:
	mov eax, ebx
	and eax, 0x3ff
	movzx eax, word [edi+eax*2+0x1bc]
	cmp [ebp-0x28], ax
	jz _Z13FX_KillEffectP8FxSystemP8FxEffect_60
	movzx edx, ax
	mov eax, [edi+0x170]
	lea edx, [eax+edx*4]
	movzx eax, word [ebp-0x28]
	cmp ax, [edx+0x14]
	jnz _Z13FX_KillEffectP8FxSystemP8FxEffect_60
	jmp _Z13FX_KillEffectP8FxSystemP8FxEffect_80
_Z13FX_KillEffectP8FxSystemP8FxEffect_50:
	movzx eax, word [esi+0x14]
	mov edx, [edi+0x170]
	lea edx, [edx+eax*4]
	mov eax, [esi+0x4]
	test eax, 0x10000000
	jz _Z13FX_KillEffectP8FxSystemP8FxEffect_90
_Z13FX_KillEffectP8FxSystemP8FxEffect_100:
	mov byte [edi+0x9dd], 0x1
	mov eax, [esi+0x4]
	sub eax, 0x1
	mov [esi+0x4], eax
	mov eax, [esi+0x4]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13FX_KillEffectP8FxSystemP8FxEffect_40:
	mov [esp], edi
	call _Z23FX_RunGarbageCollectionP8FxSystem
	jmp _Z13FX_KillEffectP8FxSystemP8FxEffect_10
_Z13FX_KillEffectP8FxSystemP8FxEffect_20:
	add eax, 0x3
	shr eax, 0x2
	mov [ebp-0x28], ax
	mov ebx, [edi+0x1b0]
	mov eax, [esi+0x4]
	test eax, 0x7fe0000
	jz _Z13FX_KillEffectP8FxSystemP8FxEffect_70
	jmp _Z13FX_KillEffectP8FxSystemP8FxEffect_30
_Z13FX_KillEffectP8FxSystemP8FxEffect_90:
	mov eax, [edx+0x4]
	mov eax, [edx+0x4]
	sub eax, 0x20000
	mov [edx+0x4], eax
	mov [esp+0x4], edx
	mov [esp], edi
	call _Z17FX_DelRefToEffectP8FxSystemP8FxEffect
	jmp _Z13FX_KillEffectP8FxSystemP8FxEffect_100
	nop


;FX_StopEffect(FxSystem*, FxEffect*)
_Z13FX_StopEffectP8FxSystemP8FxEffect:
_Z13FX_StopEffectP8FxSystemP8FxEffect_120:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov eax, [esi+0x4]
	test ax, ax
	jz _Z13FX_StopEffectP8FxSystemP8FxEffect_10
	mov eax, [esi+0x4]
	add eax, 0x1
	mov [esi+0x4], eax
	mov eax, [esi+0x4]
	test eax, 0x10000
	jz _Z13FX_StopEffectP8FxSystemP8FxEffect_20
	mov eax, [esi+0x4]
	and eax, 0xfffeffff
	mov [esi+0x4], eax
	mov eax, [esi+0x4]
	sub ax, 0x1
	jz _Z13FX_StopEffectP8FxSystemP8FxEffect_30
_Z13FX_StopEffectP8FxSystemP8FxEffect_160:
	mov eax, [esi+0x4]
	sub eax, 0x1
	mov [esi+0x4], eax
	mov eax, [esi+0x4]
_Z13FX_StopEffectP8FxSystemP8FxEffect_20:
	mov eax, [esi+0x4]
	test eax, 0x7fe0000
	jz _Z13FX_StopEffectP8FxSystemP8FxEffect_40
	mov eax, esi
	sub eax, [edi+0x170]
	js _Z13FX_StopEffectP8FxSystemP8FxEffect_50
_Z13FX_StopEffectP8FxSystemP8FxEffect_170:
	shr eax, 0x2
	mov [ebp-0x28], ax
	mov ebx, [edi+0x1b0]
	mov eax, [edi+0x1b4]
	cmp eax, ebx
	jz _Z13FX_StopEffectP8FxSystemP8FxEffect_60
_Z13FX_StopEffectP8FxSystemP8FxEffect_90:
	mov eax, ebx
	and eax, 0x3ff
	movzx eax, word [edi+eax*2+0x1bc]
	cmp [ebp-0x28], ax
	jz _Z13FX_StopEffectP8FxSystemP8FxEffect_70
	movzx edx, ax
	mov eax, [edi+0x170]
	lea eax, [eax+edx*4]
	movzx edx, word [ebp-0x28]
	cmp dx, [eax+0x14]
	jz _Z13FX_StopEffectP8FxSystemP8FxEffect_80
_Z13FX_StopEffectP8FxSystemP8FxEffect_70:
	add ebx, 0x1
	mov eax, [edi+0x1b4]
	cmp eax, ebx
	jnz _Z13FX_StopEffectP8FxSystemP8FxEffect_90
_Z13FX_StopEffectP8FxSystemP8FxEffect_60:
	cmp byte [edi+0x9dd], 0x0
	jnz _Z13FX_StopEffectP8FxSystemP8FxEffect_100
_Z13FX_StopEffectP8FxSystemP8FxEffect_40:
	mov eax, [esi+0x4]
	sub ax, 0x1
	jz _Z13FX_StopEffectP8FxSystemP8FxEffect_110
_Z13FX_StopEffectP8FxSystemP8FxEffect_140:
	mov eax, [esi+0x4]
	sub eax, 0x1
	mov [esi+0x4], eax
	mov eax, [esi+0x4]
_Z13FX_StopEffectP8FxSystemP8FxEffect_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13FX_StopEffectP8FxSystemP8FxEffect_80:
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z13FX_StopEffectP8FxSystemP8FxEffect_120
	jmp _Z13FX_StopEffectP8FxSystemP8FxEffect_70
_Z13FX_StopEffectP8FxSystemP8FxEffect_110:
	movzx eax, word [esi+0x14]
	mov edx, [edi+0x170]
	lea edx, [edx+eax*4]
	mov eax, [esi+0x4]
	test eax, 0x10000000
	jz _Z13FX_StopEffectP8FxSystemP8FxEffect_130
_Z13FX_StopEffectP8FxSystemP8FxEffect_180:
	mov byte [edi+0x9dd], 0x1
	jmp _Z13FX_StopEffectP8FxSystemP8FxEffect_140
_Z13FX_StopEffectP8FxSystemP8FxEffect_100:
	mov [esp], edi
	call _Z23FX_RunGarbageCollectionP8FxSystem
	mov eax, [esi+0x4]
	sub ax, 0x1
	jnz _Z13FX_StopEffectP8FxSystemP8FxEffect_140
	jmp _Z13FX_StopEffectP8FxSystemP8FxEffect_110
_Z13FX_StopEffectP8FxSystemP8FxEffect_30:
	movzx eax, word [esi+0x14]
	mov edx, [edi+0x170]
	lea edx, [edx+eax*4]
	mov eax, [esi+0x4]
	test eax, 0x10000000
	jz _Z13FX_StopEffectP8FxSystemP8FxEffect_150
_Z13FX_StopEffectP8FxSystemP8FxEffect_190:
	mov byte [edi+0x9dd], 0x1
	jmp _Z13FX_StopEffectP8FxSystemP8FxEffect_160
_Z13FX_StopEffectP8FxSystemP8FxEffect_50:
	add eax, 0x3
	jmp _Z13FX_StopEffectP8FxSystemP8FxEffect_170
_Z13FX_StopEffectP8FxSystemP8FxEffect_130:
	mov eax, [edx+0x4]
	mov eax, [edx+0x4]
	sub eax, 0x20000
	mov [edx+0x4], eax
	mov [esp+0x4], edx
	mov [esp], edi
	call _Z17FX_DelRefToEffectP8FxSystemP8FxEffect
	jmp _Z13FX_StopEffectP8FxSystemP8FxEffect_180
_Z13FX_StopEffectP8FxSystemP8FxEffect_150:
	mov eax, [edx+0x4]
	mov eax, [edx+0x4]
	sub eax, 0x20000
	mov [edx+0x4], eax
	mov [esp+0x4], edx
	mov [esp], edi
	call _Z17FX_DelRefToEffectP8FxSystemP8FxEffect
	jmp _Z13FX_StopEffectP8FxSystemP8FxEffect_190
	nop


;FX_SpawnEffect(FxSystem*, FxEffectDef const*, int, float const*, float const (*) [3], int, int, int, unsigned short, unsigned int)
_Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	movzx eax, word [ebp+0x28]
	mov [ebp-0x38], ax
	mov eax, fx_cull_effect_spawn
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_10
_Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_310:
	mov edx, [ebp+0xc]
	mov eax, [edx+0x10]
	add eax, [edx+0x18]
	mov esi, eax
	add esi, [edx+0x14]
	jz _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_20
	mov ebx, [edx+0x1c]
	cmp byte [ebx+0xb0], 0x7
	jz _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_30
	xor ecx, ecx
	mov edx, 0xfc
_Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_40:
	add ecx, 0x1
	cmp esi, ecx
	jz _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_20
	movzx eax, byte [edx+ebx+0xb0]
	add edx, 0xfc
	cmp al, 0x7
	jnz _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_40
_Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_30:
	mov byte [ebp-0x29], 0x1
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x9bc]
	test eax, eax
	jg _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_50
	mov edx, ecx
	mov eax, [edx+0x1b8]
	mov edx, [edx+0x1b0]
	sub eax, edx
	cmp eax, 0x400
	jz _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_60
_Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_220:
	mov eax, [ebp+0x8]
	mov edx, [eax+0x1b8]
	mov ecx, eax
	mov eax, [eax+0x1b8]
	add eax, 0x1
	mov [ecx+0x1b8], eax
	and edx, 0x3ff
	movzx edx, word [ecx+edx*2+0x1bc]
	mov [ebp-0x36], dx
	movzx eax, dx
	lea edi, [eax*4]
	add edi, [ecx+0x170]
	mov eax, [ebp+0xc]
	mov [edi], eax
	mov edx, [ebp+0xc]
	mov eax, [edx+0xc]
	cmp eax, 0x1
	sbb eax, eax
	and eax, 0xfffeffff
	add eax, 0x10002
	mov [edi+0x4], eax
	xor eax, eax
_Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_70:
	mov word [edi+eax*2+0x8], 0xffff
	add eax, 0x1
	cmp eax, 0x3
	jnz _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_70
	mov word [edi+0xe], 0xffff
	mov ecx, [ebp+0xc]
	test byte [ecx+0x4], 0x1
	jnz _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_80
	mov word [edi+0x16], 0xff
_Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_250:
	mov edx, [ebp+0x10]
	mov [edi+0x20], edx
	mov [edi+0x24], edx
	mov dword [edi+0x7c], 0x0
	mov eax, [ebp+0xc]
	call _Z24FX_EffectAffectsGameplayPK11FxEffectDef
	test al, al
	jz _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_90
	mov edx, [edi+0x20]
	lea eax, [edx+edx*2]
	lea eax, [edx+eax*4]
	shl eax, 0x4
	add eax, edx
	shl eax, 0x8
	sub eax, edx
	lea eax, [edx+eax*4+0x269ec3]
	shr eax, 0x11
	mov ecx, eax
	shl ecx, 0x5
	mov edx, eax
	shl edx, 0x9
	sub edx, ecx
	sub edx, eax
	shr edx, 0xf
	mov [edi+0x12], dx
_Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_240:
	mov word [edi+0x10], 0xffff
	mov edx, [edi]
	mov eax, [edx+0x10]
	add eax, [edx+0x18]
	add eax, [edx+0x14]
	mov [ebp-0x30], eax
	jz _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_100
	xor ebx, ebx
	xor esi, esi
	jmp _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_110
_Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_120:
	add ebx, 0x1
	add esi, 0xfc
	cmp [ebp-0x30], ebx
	jz _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_100
_Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_140:
	mov edx, [edi]
_Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_110:
	mov eax, [edx+0x1c]
	add eax, esi
	cmp byte [eax+0xb0], 0x3
	jnz _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_120
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+0x178]
	mov [ebp-0x4c], ecx
	mov edx, [ebp+0x8]
	mov eax, [edx+0x18c]
	cmp eax, 0xffffffff
	jz _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_100
	lea edx, [ecx+eax*8]
	mov eax, [edx]
	mov ecx, [ebp+0x8]
	mov [ecx+0x18c], eax
	mov ecx, [ecx+0x19c]
	mov [ebp-0x3c], ecx
	add ecx, 0x1
	mov eax, [ebp+0x8]
	mov [eax+0x19c], ecx
	test edx, edx
	jz _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_100
	movzx ecx, word [edi+0x10]
	mov [ebp-0x2c], cx
	mov eax, edx
	sub eax, [ebp-0x4c]
	js _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_130
_Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_280:
	sar eax, 0x2
	mov [edi+0x10], ax
	mov byte [edx+0x7], 0x0
	mov word [edx+0x4], 0xffff
	mov word [edx+0x2], 0xffff
	mov [edx+0x6], bl
	movzx eax, word [ebp-0x2c]
	mov [edx], ax
	add ebx, 0x1
	add esi, 0xfc
	cmp [ebp-0x30], ebx
	jnz _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_140
_Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_100:
	cmp byte [ebp-0x29], 0x0
	jz _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_150
	mov edx, [edi]
	mov eax, [edx+0x10]
	add eax, [edx+0x18]
	mov esi, eax
	add esi, [edx+0x14]
	jz _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_150
	xor ebx, ebx
	xor ecx, ecx
	jmp _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_160
_Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_170:
	add ebx, 0x1
	add ecx, 0xfc
	cmp esi, ebx
	jz _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_150
_Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_190:
	mov edx, [edi]
_Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_160:
	mov eax, [edx+0x1c]
	add eax, ecx
	cmp byte [eax+0xb0], 0x7
	jnz _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_170
	mov edx, [ebp+0x8]
	mov eax, [edx+0x9bc]
	add eax, 0x1
	mov [edx+0x9bc], eax
	mov eax, edi
	sub eax, [edx+0x170]
	js _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_180
_Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_270:
	sar eax, 0x2
	mov edx, [ebp+0x8]
	mov [edx+0x9c4], ax
	add ebx, 0x1
	add ecx, 0xfc
	cmp esi, ebx
	jnz _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_190
_Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_150:
	cmp word [ebp-0x38], 0xffff
	jz _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_200
	movzx eax, word [ebp-0x38]
	mov [edi+0x14], ax
	movzx edx, ax
	shl edx, 0x2
	mov ecx, [ebp+0x8]
	add edx, [ecx+0x170]
	mov eax, [edx+0x4]
	add eax, 0x1
	mov [edx+0x4], eax
	mov eax, [edx+0x4]
	mov eax, [edx+0x4]
	add eax, 0x20000
	mov [edx+0x4], eax
_Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_260:
	and dword [ebp+0x20], 0x7ff
	shl dword [ebp+0x20], 0xd
	mov eax, [edi+0x18]
	and eax, 0xff001fff
	or eax, [ebp+0x20]
	mov [edi+0x18], eax
	and byte [edi+0x19], 0xef
	cmp dword [ebp+0x2c], 0x3ff
	jz _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_210
	movzx edx, word [ebp+0x2c]
	and dx, 0xfff
	movzx eax, word [edi+0x18]
	and ax, 0xf000
	or eax, edx
	mov [edi+0x18], ax
_Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_290:
	movzx eax, byte [ebp+0x24]
	mov [edi+0x1b], al
	mov edx, [ebp+0x14]
	mov eax, [edx]
	mov [edi+0x38], eax
	mov eax, [edx+0x4]
	mov [edi+0x3c], eax
	mov eax, [edx+0x8]
	mov [edi+0x40], eax
	lea eax, [edi+0x28]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x18]
	mov [esp], ecx
	call _Z10AxisToQuatPA3_KfPf
	mov eax, [edi+0x28]
	mov [edi+0x60], eax
	mov edx, [edi+0x2c]
	mov [edi+0x64], edx
	mov esi, [edi+0x30]
	mov [edi+0x68], esi
	mov ebx, [edi+0x34]
	mov [edi+0x6c], ebx
	mov ecx, [edi+0x38]
	mov [edi+0x70], ecx
	mov edx, [edi+0x3c]
	mov [edi+0x74], edx
	mov eax, [edi+0x40]
	mov [edi+0x78], eax
	mov eax, [edi+0x28]
	mov [edi+0x44], eax
	mov eax, [edi+0x2c]
	mov [edi+0x48], eax
	mov [edi+0x4c], esi
	mov [edi+0x50], ebx
	mov [edi+0x54], ecx
	mov [edi+0x58], edx
	mov edx, [edi+0x40]
	mov [edi+0x5c], edx
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x1b8]
	mov [ecx+0x1b4], eax
	mov [esp+0x4], edi
	mov [esp], ecx
	call _Z17FX_StartNewEffectP8FxSystemP8FxEffect
_Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_350:
	mov eax, edi
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_20:
	mov byte [ebp-0x29], 0x0
	mov edx, [ebp+0x8]
	mov eax, [edx+0x1b8]
	mov edx, [edx+0x1b0]
	sub eax, edx
	cmp eax, 0x400
	jnz _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_220
_Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_60:
	xor edi, edi
_Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_330:
	mov eax, edi
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_90:
	call _Z7ms_randv
	mov ecx, eax
	shl ecx, 0x5
	mov edx, eax
	shl edx, 0x9
	sub edx, ecx
	sub edx, eax
	mov eax, edx
	js _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_230
_Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_340:
	sar eax, 0xf
	mov [edi+0x12], ax
	jmp _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_240
_Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_80:
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov eax, [ebp+0x14]
	mov [esp], eax
	call _Z27R_GetAverageLightingAtPointPKfPh
	movzx edx, byte [ebp-0x1c]
	shr edx, 0x3
	movzx ecx, byte [ebp-0x1b]
	and ecx, 0xf8
	shl ecx, 0x3
	movzx eax, byte [ebp-0x1a]
	and eax, 0xf8
	shl eax, 0x8
	or edx, ecx
	or edx, eax
	mov [edi+0x16], dx
	jmp _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_250
_Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_200:
	movzx ecx, word [ebp-0x36]
	mov [edi+0x14], cx
	mov eax, [edi+0x4]
	or eax, 0x10000000
	mov [edi+0x4], eax
	jmp _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_260
_Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_180:
	add eax, 0x3
	jmp _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_270
_Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_130:
	add eax, 0x3
	jmp _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_280
_Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_210:
	movzx edx, word [ebp+0x1c]
	and dx, 0xfff
	movzx eax, word [edi+0x18]
	and ax, 0xf000
	or eax, edx
	mov [edi+0x18], ax
	mov edx, [ebp+0x8]
	movzx eax, byte [edx+0x9df]
	mov ecx, [ebp+0x1c]
	mov [esp+0x4], ecx
	movzx eax, al
	mov [esp], eax
	call _Z22FX_GetBoltTemporalBitsii
	and al, 0x1
	shl al, 0x4
	movzx edx, byte [edi+0x19]
	and dl, 0xef
	or dl, al
	mov [edi+0x19], dl
	jmp _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_290
_Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_10:
	mov edi, [ebp+0x8]
	add edi, 0xb0
	mov edx, [ebp+0xc]
	mov ebx, [edx+0x14]
	add ebx, [edx+0x10]
	mov eax, [edx+0x1c]
	test ebx, ebx
	jle _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_60
	mov esi, eax
	mov dword [ebp-0x34], 0x0
_Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_320:
	movss xmm3, dword [esi+0x10]
	pxor xmm0, xmm0
	ucomiss xmm3, xmm0
	jp _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_300
	jnz _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_300
_Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_370:
	test byte [esi], 0x4
	jz _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_310
	mov eax, [esi+0x24]
	mov edx, [edi+0x94]
	mov [esp+0xc], eax
	mov eax, [ebp+0x14]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], edi
	call _Z13FX_CullSpherePK8FxCamerajPKff
	test al, al
	jz _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_310
_Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_360:
	add dword [ebp-0x34], 0x1
	add esi, 0xfc
	cmp ebx, [ebp-0x34]
	jnz _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_320
	xor edi, edi
	jmp _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_330
_Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_230:
	add eax, 0x7fff
	jmp _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_340
_Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_50:
	mov dword [esp], 0x20
	call _Z18R_WarnOncePerFrame14GfxWarningTypez
	xor edi, edi
	jmp _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_350
_Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_300:
	movss xmm0, dword [edi]
	mov eax, [ebp+0x14]
	subss xmm0, [eax]
	movss xmm1, dword [edi+0x4]
	subss xmm1, [eax+0x4]
	movss xmm2, dword [edi+0x8]
	subss xmm2, [eax+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	subss xmm0, [esi+0xc]
	pxor xmm1, xmm1
	ucomiss xmm1, xmm0
	ja _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_360
	ucomiss xmm0, xmm3
	ja _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_360
	jmp _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj_370
	add [eax], al


;FX_FreeTrailElem(FxSystem*, unsigned short, FxEffect*, FxTrail*)
_Z16FX_FreeTrailElemP8FxSystemtP8FxEffectP7FxTrail:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov ecx, [ebp+0x14]
	movzx edx, word [ebp+0xc]
	movzx eax, dx
	lea ebx, [eax*4]
	add ebx, [esi+0x17c]
	cmp dx, [ecx+0x4]
	jz _Z16FX_FreeTrailElemP8FxSystemtP8FxEffectP7FxTrail_10
_Z16FX_FreeTrailElemP8FxSystemtP8FxEffectP7FxTrail_40:
	movzx eax, word [ebx+0x14]
	mov [ecx+0x2], ax
	cld
	mov ecx, 0x8
	xor eax, eax
	mov edi, ebx
	rep stosd
	mov eax, ebx
	sub eax, [esi+0x17c]
	sar eax, 0x5
	mov edx, [esi+0x188]
	mov [ebx], edx
	mov [esi+0x188], eax
	mov edx, [ebp+0x10]
	mov eax, [edx+0x4]
	sub ax, 0x1
	jz _Z16FX_FreeTrailElemP8FxSystemtP8FxEffectP7FxTrail_20
	mov eax, [edx+0x4]
	sub eax, 0x1
	mov [edx+0x4], eax
	mov eax, [edx+0x4]
	mov eax, [esi+0x198]
	sub eax, 0x1
	mov [esi+0x198], eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16FX_FreeTrailElemP8FxSystemtP8FxEffectP7FxTrail_20:
	mov ecx, edx
	movzx eax, word [edx+0x14]
	lea edx, [eax*4]
	add edx, [esi+0x170]
	mov eax, [ecx+0x4]
	test eax, 0x10000000
	jz _Z16FX_FreeTrailElemP8FxSystemtP8FxEffectP7FxTrail_30
_Z16FX_FreeTrailElemP8FxSystemtP8FxEffectP7FxTrail_50:
	mov byte [esi+0x9dd], 0x1
	mov edx, [ebp+0x10]
	mov eax, [edx+0x4]
	sub eax, 0x1
	mov [edx+0x4], eax
	mov eax, [edx+0x4]
	mov eax, [esi+0x198]
	sub eax, 0x1
	mov [esi+0x198], eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16FX_FreeTrailElemP8FxSystemtP8FxEffectP7FxTrail_10:
	mov word [ecx+0x4], 0xffff
	jmp _Z16FX_FreeTrailElemP8FxSystemtP8FxEffectP7FxTrail_40
_Z16FX_FreeTrailElemP8FxSystemtP8FxEffectP7FxTrail_30:
	mov eax, [edx+0x4]
	mov eax, [edx+0x4]
	sub eax, 0x20000
	mov [edx+0x4], eax
	mov [esp+0x4], edx
	mov [esp], esi
	call _Z17FX_DelRefToEffectP8FxSystemP8FxEffect
	jmp _Z16FX_FreeTrailElemP8FxSystemtP8FxEffectP7FxTrail_50


;FX_KillEffectDef(int, FxEffectDef const*)
_Z16FX_KillEffectDefiPK11FxEffectDef:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0xc]
	mov ebx, [fx_systemPool+0x1b0]
	mov eax, [fx_systemPool+0x1b8]
	cmp ebx, eax
	jnz _Z16FX_KillEffectDefiPK11FxEffectDef_10
	jmp _Z16FX_KillEffectDefiPK11FxEffectDef_20
_Z16FX_KillEffectDefiPK11FxEffectDef_30:
	add ebx, 0x1
	mov eax, [fx_systemPool+0x1b8]
	cmp eax, ebx
	jz _Z16FX_KillEffectDefiPK11FxEffectDef_20
_Z16FX_KillEffectDefiPK11FxEffectDef_10:
	mov eax, ebx
	and eax, 0x3ff
	movzx edx, word [eax+eax+fx_systemPool+0x1bc]
	mov eax, [fx_systemPool+0x170]
	lea edx, [eax+edx*4]
	cmp [edx], esi
	jnz _Z16FX_KillEffectDefiPK11FxEffectDef_30
	mov eax, [edx+0x4]
	test ax, ax
	jz _Z16FX_KillEffectDefiPK11FxEffectDef_30
	mov [esp+0x4], edx
	mov dword [esp], fx_systemPool
	call _Z13FX_KillEffectP8FxSystemP8FxEffect
	add ebx, 0x1
	mov eax, [fx_systemPool+0x1b8]
	cmp eax, ebx
	jnz _Z16FX_KillEffectDefiPK11FxEffectDef_10
_Z16FX_KillEffectDefiPK11FxEffectDef_20:
	cmp byte [fx_systemPool+0x9dd], 0x0
	jnz _Z16FX_KillEffectDefiPK11FxEffectDef_40
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z16FX_KillEffectDefiPK11FxEffectDef_40:
	mov dword [ebp+0x8], fx_systemPool
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _Z23FX_RunGarbageCollectionP8FxSystem
	nop


;FX_DelRefToEffect(FxSystem*, FxEffect*)
_Z17FX_DelRefToEffectP8FxSystemP8FxEffect:
_Z17FX_DelRefToEffectP8FxSystemP8FxEffect_260:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edi, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov eax, [esi+0x4]
	sub ax, 0x1
	jz _Z17FX_DelRefToEffectP8FxSystemP8FxEffect_10
	mov eax, [esi+0x4]
	sub eax, 0x1
	mov [esi+0x4], eax
	mov eax, [esi+0x4]
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17FX_DelRefToEffectP8FxSystemP8FxEffect_10:
	movzx eax, word [esi+0x14]
	mov edx, [edi+0x170]
	lea ebx, [edx+eax*4]
	mov eax, [esi+0x4]
	test eax, 0x10000000
	jnz _Z17FX_DelRefToEffectP8FxSystemP8FxEffect_20
	mov eax, [ebx+0x4]
	mov eax, [ebx+0x4]
	sub eax, 0x20000
	mov [ebx+0x4], eax
	mov eax, [ebx+0x4]
	sub ax, 0x1
	jz _Z17FX_DelRefToEffectP8FxSystemP8FxEffect_30
_Z17FX_DelRefToEffectP8FxSystemP8FxEffect_60:
	mov eax, [ebx+0x4]
	sub eax, 0x1
	mov [ebx+0x4], eax
	mov eax, [ebx+0x4]
_Z17FX_DelRefToEffectP8FxSystemP8FxEffect_20:
	mov byte [edi+0x9dd], 0x1
	mov eax, [esi+0x4]
	sub eax, 0x1
	mov [esi+0x4], eax
	mov eax, [esi+0x4]
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17FX_DelRefToEffectP8FxSystemP8FxEffect_30:
	movzx eax, word [ebx+0x14]
	mov edx, [edi+0x170]
	lea eax, [edx+eax*4]
	mov [ebp-0x34], eax
	mov eax, [ebx+0x4]
	test eax, 0x10000000
	jnz _Z17FX_DelRefToEffectP8FxSystemP8FxEffect_40
	mov edx, [ebp-0x34]
	mov eax, [edx+0x4]
	mov eax, [edx+0x4]
	sub eax, 0x20000
	mov [edx+0x4], eax
	mov eax, [edx+0x4]
	sub ax, 0x1
	jz _Z17FX_DelRefToEffectP8FxSystemP8FxEffect_50
_Z17FX_DelRefToEffectP8FxSystemP8FxEffect_90:
	mov edx, [ebp-0x34]
	mov eax, [edx+0x4]
	sub eax, 0x1
	mov [edx+0x4], eax
	mov eax, [edx+0x4]
_Z17FX_DelRefToEffectP8FxSystemP8FxEffect_40:
	mov byte [edi+0x9dd], 0x1
	jmp _Z17FX_DelRefToEffectP8FxSystemP8FxEffect_60
_Z17FX_DelRefToEffectP8FxSystemP8FxEffect_50:
	movzx eax, word [edx+0x14]
	mov edx, [edi+0x170]
	lea eax, [edx+eax*4]
	mov [ebp-0x30], eax
	mov ecx, [ebp-0x34]
	mov eax, [ecx+0x4]
	test eax, 0x10000000
	jnz _Z17FX_DelRefToEffectP8FxSystemP8FxEffect_70
	mov edx, [ebp-0x30]
	mov eax, [edx+0x4]
	mov eax, [edx+0x4]
	sub eax, 0x20000
	mov [edx+0x4], eax
	mov eax, [edx+0x4]
	sub ax, 0x1
	jz _Z17FX_DelRefToEffectP8FxSystemP8FxEffect_80
_Z17FX_DelRefToEffectP8FxSystemP8FxEffect_120:
	mov ecx, [ebp-0x30]
	mov eax, [ecx+0x4]
	sub eax, 0x1
	mov [ecx+0x4], eax
	mov eax, [ecx+0x4]
_Z17FX_DelRefToEffectP8FxSystemP8FxEffect_70:
	mov byte [edi+0x9dd], 0x1
	jmp _Z17FX_DelRefToEffectP8FxSystemP8FxEffect_90
_Z17FX_DelRefToEffectP8FxSystemP8FxEffect_80:
	movzx eax, word [edx+0x14]
	mov edx, [edi+0x170]
	lea eax, [edx+eax*4]
	mov [ebp-0x2c], eax
	mov ecx, [ebp-0x30]
	mov eax, [ecx+0x4]
	test eax, 0x10000000
	jnz _Z17FX_DelRefToEffectP8FxSystemP8FxEffect_100
	mov edx, [ebp-0x2c]
	mov eax, [edx+0x4]
	mov eax, [edx+0x4]
	sub eax, 0x20000
	mov [edx+0x4], eax
	mov eax, [edx+0x4]
	sub ax, 0x1
	jz _Z17FX_DelRefToEffectP8FxSystemP8FxEffect_110
_Z17FX_DelRefToEffectP8FxSystemP8FxEffect_150:
	mov edx, [ebp-0x2c]
	mov eax, [edx+0x4]
	sub eax, 0x1
	mov [edx+0x4], eax
	mov eax, [edx+0x4]
_Z17FX_DelRefToEffectP8FxSystemP8FxEffect_100:
	mov byte [edi+0x9dd], 0x1
	jmp _Z17FX_DelRefToEffectP8FxSystemP8FxEffect_120
_Z17FX_DelRefToEffectP8FxSystemP8FxEffect_110:
	movzx eax, word [edx+0x14]
	mov edx, [edi+0x170]
	lea eax, [edx+eax*4]
	mov [ebp-0x28], eax
	mov ecx, [ebp-0x2c]
	mov eax, [ecx+0x4]
	test eax, 0x10000000
	jnz _Z17FX_DelRefToEffectP8FxSystemP8FxEffect_130
	mov edx, [ebp-0x28]
	mov eax, [edx+0x4]
	mov eax, [edx+0x4]
	sub eax, 0x20000
	mov [edx+0x4], eax
	mov eax, [edx+0x4]
	sub ax, 0x1
	jz _Z17FX_DelRefToEffectP8FxSystemP8FxEffect_140
_Z17FX_DelRefToEffectP8FxSystemP8FxEffect_180:
	mov ecx, [ebp-0x28]
	mov eax, [ecx+0x4]
	sub eax, 0x1
	mov [ecx+0x4], eax
	mov eax, [ecx+0x4]
_Z17FX_DelRefToEffectP8FxSystemP8FxEffect_130:
	mov byte [edi+0x9dd], 0x1
	jmp _Z17FX_DelRefToEffectP8FxSystemP8FxEffect_150
_Z17FX_DelRefToEffectP8FxSystemP8FxEffect_140:
	movzx eax, word [edx+0x14]
	mov edx, [edi+0x170]
	lea eax, [edx+eax*4]
	mov [ebp-0x24], eax
	mov ecx, [ebp-0x28]
	mov eax, [ecx+0x4]
	test eax, 0x10000000
	jnz _Z17FX_DelRefToEffectP8FxSystemP8FxEffect_160
	mov edx, [ebp-0x24]
	mov eax, [edx+0x4]
	mov eax, [edx+0x4]
	sub eax, 0x20000
	mov [edx+0x4], eax
	mov eax, [edx+0x4]
	sub ax, 0x1
	jz _Z17FX_DelRefToEffectP8FxSystemP8FxEffect_170
_Z17FX_DelRefToEffectP8FxSystemP8FxEffect_210:
	mov edx, [ebp-0x24]
	mov eax, [edx+0x4]
	sub eax, 0x1
	mov [edx+0x4], eax
	mov eax, [edx+0x4]
_Z17FX_DelRefToEffectP8FxSystemP8FxEffect_160:
	mov byte [edi+0x9dd], 0x1
	jmp _Z17FX_DelRefToEffectP8FxSystemP8FxEffect_180
_Z17FX_DelRefToEffectP8FxSystemP8FxEffect_170:
	movzx eax, word [edx+0x14]
	mov edx, [edi+0x170]
	lea eax, [edx+eax*4]
	mov [ebp-0x20], eax
	mov ecx, [ebp-0x24]
	mov eax, [ecx+0x4]
	test eax, 0x10000000
	jnz _Z17FX_DelRefToEffectP8FxSystemP8FxEffect_190
	mov edx, [ebp-0x20]
	mov eax, [edx+0x4]
	mov eax, [edx+0x4]
	sub eax, 0x20000
	mov [edx+0x4], eax
	mov eax, [edx+0x4]
	sub ax, 0x1
	jz _Z17FX_DelRefToEffectP8FxSystemP8FxEffect_200
_Z17FX_DelRefToEffectP8FxSystemP8FxEffect_240:
	mov ecx, [ebp-0x20]
	mov eax, [ecx+0x4]
	sub eax, 0x1
	mov [ecx+0x4], eax
	mov eax, [ecx+0x4]
_Z17FX_DelRefToEffectP8FxSystemP8FxEffect_190:
	mov byte [edi+0x9dd], 0x1
	jmp _Z17FX_DelRefToEffectP8FxSystemP8FxEffect_210
_Z17FX_DelRefToEffectP8FxSystemP8FxEffect_200:
	movzx eax, word [edx+0x14]
	mov edx, [edi+0x170]
	lea eax, [edx+eax*4]
	mov [ebp-0x1c], eax
	mov ecx, [ebp-0x20]
	mov eax, [ecx+0x4]
	test eax, 0x10000000
	jnz _Z17FX_DelRefToEffectP8FxSystemP8FxEffect_220
	mov edx, [ebp-0x1c]
	mov eax, [edx+0x4]
	mov eax, [edx+0x4]
	sub eax, 0x20000
	mov [edx+0x4], eax
	mov eax, [edx+0x4]
	sub ax, 0x1
	jz _Z17FX_DelRefToEffectP8FxSystemP8FxEffect_230
_Z17FX_DelRefToEffectP8FxSystemP8FxEffect_270:
	mov edx, [ebp-0x1c]
	mov eax, [edx+0x4]
	sub eax, 0x1
	mov [edx+0x4], eax
	mov eax, [edx+0x4]
_Z17FX_DelRefToEffectP8FxSystemP8FxEffect_220:
	mov byte [edi+0x9dd], 0x1
	jmp _Z17FX_DelRefToEffectP8FxSystemP8FxEffect_240
_Z17FX_DelRefToEffectP8FxSystemP8FxEffect_230:
	movzx eax, word [edx+0x14]
	mov edx, [edi+0x170]
	lea edx, [edx+eax*4]
	mov ecx, [ebp-0x1c]
	mov eax, [ecx+0x4]
	test eax, 0x10000000
	jnz _Z17FX_DelRefToEffectP8FxSystemP8FxEffect_250
	mov eax, [edx+0x4]
	mov eax, [edx+0x4]
	sub eax, 0x20000
	mov [edx+0x4], eax
	mov [esp+0x4], edx
	mov [esp], edi
	call _Z17FX_DelRefToEffectP8FxSystemP8FxEffect_260
_Z17FX_DelRefToEffectP8FxSystemP8FxEffect_250:
	mov byte [edi+0x9dd], 0x1
	jmp _Z17FX_DelRefToEffectP8FxSystemP8FxEffect_270


;FX_KillAllEffects(int)
_Z17FX_KillAllEffectsi:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	cmp byte [fx_systemPool+0x9dc], 0x0
	jz _Z17FX_KillAllEffectsi_10
	mov ebx, [fx_systemPool+0x1b0]
	mov eax, [fx_systemPool+0x1b4]
	cmp eax, ebx
	jnz _Z17FX_KillAllEffectsi_20
_Z17FX_KillAllEffectsi_40:
	cmp byte [fx_systemPool+0x9dd], 0x0
	jnz _Z17FX_KillAllEffectsi_30
_Z17FX_KillAllEffectsi_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z17FX_KillAllEffectsi_60:
	mov [esp+0x4], edx
	mov dword [esp], fx_systemPool
	call _Z13FX_KillEffectP8FxSystemP8FxEffect
_Z17FX_KillAllEffectsi_50:
	add ebx, 0x1
	mov eax, [fx_systemPool+0x1b4]
	cmp eax, ebx
	jz _Z17FX_KillAllEffectsi_40
_Z17FX_KillAllEffectsi_20:
	mov eax, ebx
	and eax, 0x3ff
	movzx edx, word [eax+eax+fx_systemPool+0x1bc]
	mov eax, [fx_systemPool+0x170]
	lea edx, [eax+edx*4]
	mov eax, [edx+0x4]
	test ax, ax
	jz _Z17FX_KillAllEffectsi_50
	jmp _Z17FX_KillAllEffectsi_60
_Z17FX_KillAllEffectsi_30:
	mov dword [ebp+0x8], fx_systemPool
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z23FX_RunGarbageCollectionP8FxSystem


;FX_RelocateSystem(FxSystem*, int)
_Z17FX_RelocateSystemP8FxSystemi:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, [ebp+0xc]
	test eax, eax
	jz _Z17FX_RelocateSystemP8FxSystemi_10
	add [edx+0x1a8], eax
	add [edx+0x1ac], eax
_Z17FX_RelocateSystemP8FxSystemi_10:
	pop ebp
	ret
	nop


;FX_ShutdownSystem(int)
_Z17FX_ShutdownSystemi:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0xa60
	mov dword [esp+0x4], 0x0
	mov dword [esp], fx_systemPool
	call memset
	mov dword [esp+0x8], 0x47480
	mov dword [esp+0x4], 0x0
	mov dword [esp], fx_systemBufferPool
	call memset
	leave
	jmp _Z16FX_UnregisterAllv
	add [eax], al


;FX_RetriggerEffect(int, FxEffect*, int)
_Z18FX_RetriggerEffectiP8FxEffecti:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov edi, [ebp+0xc]
	mov eax, [edi+0x4]
	add eax, 0x1
	mov [edi+0x4], eax
	mov eax, [edi+0x4]
	test eax, 0x10000
	jnz _Z18FX_RetriggerEffectiP8FxEffecti_10
	lea esi, [edi+0x44]
_Z18FX_RetriggerEffectiP8FxEffecti_130:
	xor edx, edx
_Z18FX_RetriggerEffectiP8FxEffecti_20:
	movzx eax, word [edi+edx*2+0x8]
	mov [ebp+edx*2-0x1e], ax
	add edx, 0x1
	cmp edx, 0x3
	jnz _Z18FX_RetriggerEffectiP8FxEffecti_20
	movzx eax, word [edi+0x10]
	cmp ax, 0xffff
	jz _Z18FX_RetriggerEffectiP8FxEffecti_30
	lea ecx, [ebp-0x34]
	mov ebx, [fx_systemPool+0x178]
_Z18FX_RetriggerEffectiP8FxEffecti_40:
	movzx eax, ax
	lea eax, [ebx+eax*4]
	movzx edx, word [eax+0x4]
	mov [ecx], dx
	movzx eax, word [eax]
	add ecx, 0x2
	cmp ax, 0xffff
	jnz _Z18FX_RetriggerEffectiP8FxEffecti_40
_Z18FX_RetriggerEffectiP8FxEffecti_30:
	mov eax, [edi+0x24]
	mov [ebp-0x40], eax
	cmp [ebp+0x10], eax
	jle _Z18FX_RetriggerEffectiP8FxEffecti_50
	mov eax, 0x1
	lea edx, [ebp-0x24]
_Z18FX_RetriggerEffectiP8FxEffecti_60:
	mov word [edx+eax*2-0x2], 0xffff
	add eax, 0x1
	cmp eax, 0x4
	jnz _Z18FX_RetriggerEffectiP8FxEffecti_60
	lea eax, [ebp-0x34]
	mov [esp+0x24], eax
	mov dword [esp+0x20], 0x0
	mov [esp+0x1c], edx
	lea eax, [ebp-0x1e]
	mov [esp+0x18], eax
	xor eax, eax
	mov [esp+0x14], eax
	mov [esp+0x10], eax
	mov edx, [ebp+0x10]
	mov [esp+0xc], edx
	mov ecx, [ebp-0x40]
	mov [esp+0x8], ecx
	mov [esp+0x4], edi
	mov dword [esp], fx_systemPool
	call _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3_
_Z18FX_RetriggerEffectiP8FxEffecti_50:
	mov eax, [ebp+0x10]
	mov [edi+0x20], eax
	mov dword [edi+0x7c], 0x0
	mov eax, [edi]
	mov eax, [eax+0x10]
	mov edx, [ebp+0x10]
	mov [esp+0x1c], edx
	mov [esp+0x18], edx
	mov [esp+0x14], esi
	mov [esp+0x10], esi
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], edi
	mov dword [esp], fx_systemPool
	call _Z15FX_BeginLoopingP8FxSystemP8FxEffectiiPK14FxSpatialFrameS5_ii
	mov eax, [edi]
	mov edx, [eax+0x14]
	mov eax, [eax+0x10]
	mov ecx, [ebp+0x10]
	mov [esp+0x14], ecx
	mov [esp+0x10], esi
	mov [esp+0xc], edx
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov dword [esp], fx_systemPool
	call _Z17FX_TriggerOneShotP8FxSystemP8FxEffectiiPK14FxSpatialFramei
	mov eax, [edi]
	mov eax, [eax+0xc]
	test eax, eax
	setnz byte [ebp-0x39]
	cmp byte [ebp-0x39], 0x0
	jz _Z18FX_RetriggerEffectiP8FxEffecti_70
	lea esi, [edi+0x4]
_Z18FX_RetriggerEffectiP8FxEffecti_80:
	mov ebx, [esi]
	mov [esp+0x8], ebx
	mov eax, ebx
	or eax, 0x10000
	mov [esp+0x4], eax
	mov [esp], esi
	call iInterlockedCompareExchange
	cmp ebx, eax
	jnz _Z18FX_RetriggerEffectiP8FxEffecti_80
_Z18FX_RetriggerEffectiP8FxEffecti_70:
	mov eax, [ebp+0x10]
	cmp [ebp-0x40], eax
	jg _Z18FX_RetriggerEffectiP8FxEffecti_90
_Z18FX_RetriggerEffectiP8FxEffecti_120:
	mov [esp+0x4], edi
	mov dword [esp], fx_systemPool
	call _Z23FX_SortNewElemsInEffectP8FxSystemP8FxEffect
	cmp byte [ebp-0x39], 0x0
	jnz _Z18FX_RetriggerEffectiP8FxEffecti_100
	mov eax, [edi+0x4]
	sub ax, 0x1
	jz _Z18FX_RetriggerEffectiP8FxEffecti_110
_Z18FX_RetriggerEffectiP8FxEffecti_150:
	mov eax, [edi+0x4]
	sub eax, 0x1
	mov [edi+0x4], eax
	mov eax, [edi+0x4]
_Z18FX_RetriggerEffectiP8FxEffecti_100:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18FX_RetriggerEffectiP8FxEffecti_90:
	lea edx, [edi+0x8]
	mov ecx, [edi+0x24]
	mov ebx, [edi+0x20]
	mov dword [esp+0x24], 0x0
	lea eax, [ebp-0x34]
	mov [esp+0x20], eax
	lea eax, [ebp-0x1e]
	mov [esp+0x1c], eax
	mov [esp+0x18], edx
	xor eax, eax
	mov [esp+0x14], eax
	mov [esp+0x10], eax
	mov [esp+0xc], ecx
	mov [esp+0x8], ebx
	mov [esp+0x4], edi
	mov dword [esp], fx_systemPool
	call _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3_
	jmp _Z18FX_RetriggerEffectiP8FxEffecti_120
_Z18FX_RetriggerEffectiP8FxEffecti_10:
	mov edx, [edi+0x24]
	mov ecx, [edi+0x20]
	lea esi, [edi+0x44]
	lea ebx, [edi+0x60]
	mov eax, [edi]
	mov eax, [eax+0x10]
	mov [esp+0x1c], edx
	mov [esp+0x18], ecx
	mov [esp+0x14], esi
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], edi
	mov dword [esp], fx_systemPool
	call _Z24FX_SpawnAllFutureLoopingP8FxSystemP8FxEffectiiPK14FxSpatialFrameS5_ii
	mov [esp+0x4], edi
	mov dword [esp], fx_systemPool
	call _Z13FX_StopEffectP8FxSystemP8FxEffect
	jmp _Z18FX_RetriggerEffectiP8FxEffecti_130
_Z18FX_RetriggerEffectiP8FxEffecti_110:
	movzx eax, word [edi+0x14]
	mov edx, [fx_systemPool+0x170]
	lea edx, [edx+eax*4]
	mov eax, [edi+0x4]
	test eax, 0x10000000
	jz _Z18FX_RetriggerEffectiP8FxEffecti_140
_Z18FX_RetriggerEffectiP8FxEffecti_160:
	mov byte [fx_systemPool+0x9dd], 0x1
	jmp _Z18FX_RetriggerEffectiP8FxEffecti_150
_Z18FX_RetriggerEffectiP8FxEffecti_140:
	mov eax, [edx+0x4]
	mov eax, [edx+0x4]
	sub eax, 0x20000
	mov [edx+0x4], eax
	mov [esp+0x4], edx
	mov dword [esp], fx_systemPool
	call _Z17FX_DelRefToEffectP8FxSystemP8FxEffect
	jmp _Z18FX_RetriggerEffectiP8FxEffecti_160


;FX_GetSystemBuffers(int)
_Z19FX_GetSystemBuffersi:
	push ebp
	mov ebp, esp
	mov eax, fx_systemBufferPool
	pop ebp
	ret


;FX_PlayBoltedEffect(int, FxEffectDef const*, int, int, int)
_Z19FX_PlayBoltedEffectiPK11FxEffectDefiii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov esi, [ebp+0xc]
	mov eax, fx_enable
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z19FX_PlayBoltedEffectiPK11FxEffectDefiii_10
_Z19FX_PlayBoltedEffectiPK11FxEffectDefiii_20:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19FX_PlayBoltedEffectiPK11FxEffectDefiii_10:
	lea edi, [ebp-0x48]
	mov [esp+0xc], edi
	mov eax, [ebp+0x18]
	mov [esp+0x8], eax
	mov eax, [ebp+0x14]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z21FX_GetBoneOrientationiiiP13orientation_t
	test al, al
	jz _Z19FX_PlayBoltedEffectiPK11FxEffectDefiii_20
	mov ebx, [esi+0x10]
	add ebx, [esi+0x14]
	test ebx, ebx
	jle _Z19FX_PlayBoltedEffectiPK11FxEffectDefiii_30
	mov edx, [esi+0x1c]
	cmp byte [edx+0xb0], 0x3
	jz _Z19FX_PlayBoltedEffectiPK11FxEffectDefiii_40
	mov eax, [edx]
	and eax, 0xc0
	add eax, 0xffffff80
	jz _Z19FX_PlayBoltedEffectiPK11FxEffectDefiii_40
	add edx, 0xfc
	xor ecx, ecx
	jmp _Z19FX_PlayBoltedEffectiPK11FxEffectDefiii_50
_Z19FX_PlayBoltedEffectiPK11FxEffectDefiii_60:
	cmp byte [edx+0xb0], 0x3
	jz _Z19FX_PlayBoltedEffectiPK11FxEffectDefiii_40
	mov eax, [edx]
	and eax, 0xc0
	add edx, 0xfc
	add eax, 0xffffff80
	jz _Z19FX_PlayBoltedEffectiPK11FxEffectDefiii_40
_Z19FX_PlayBoltedEffectiPK11FxEffectDefiii_50:
	add ecx, 0x1
	cmp ebx, ecx
	jnz _Z19FX_PlayBoltedEffectiPK11FxEffectDefiii_60
_Z19FX_PlayBoltedEffectiPK11FxEffectDefiii_30:
	mov dword [ebp+0x14], 0xfff
	mov dword [ebp+0x18], 0x7ff
_Z19FX_PlayBoltedEffectiPK11FxEffectDefiii_40:
	mov dword [esp+0x24], 0x3ff
	mov dword [esp+0x20], 0xffff
	mov dword [esp+0x1c], 0xff
	mov eax, [ebp+0x18]
	mov [esp+0x18], eax
	mov eax, [ebp+0x14]
	mov [esp+0x14], eax
	lea eax, [ebp-0x3c]
	mov [esp+0x10], eax
	mov [esp+0xc], edi
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov dword [esp], fx_systemPool
	call _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj
	mov ebx, eax
	test eax, eax
	jz _Z19FX_PlayBoltedEffectiPK11FxEffectDefiii_20
	mov eax, [eax+0x4]
	sub ax, 0x1
	jz _Z19FX_PlayBoltedEffectiPK11FxEffectDefiii_70
_Z19FX_PlayBoltedEffectiPK11FxEffectDefiii_90:
	mov eax, [ebx+0x4]
	sub eax, 0x1
	mov [ebx+0x4], eax
	mov eax, [ebx+0x4]
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19FX_PlayBoltedEffectiPK11FxEffectDefiii_70:
	movzx eax, word [ebx+0x14]
	mov edx, [fx_systemPool+0x170]
	lea edx, [edx+eax*4]
	mov eax, [ebx+0x4]
	test eax, 0x10000000
	jz _Z19FX_PlayBoltedEffectiPK11FxEffectDefiii_80
_Z19FX_PlayBoltedEffectiPK11FxEffectDefiii_100:
	mov byte [fx_systemPool+0x9dd], 0x1
	jmp _Z19FX_PlayBoltedEffectiPK11FxEffectDefiii_90
_Z19FX_PlayBoltedEffectiPK11FxEffectDefiii_80:
	mov eax, [edx+0x4]
	mov eax, [edx+0x4]
	sub eax, 0x20000
	mov [edx+0x4], eax
	mov [esp+0x4], edx
	mov dword [esp], fx_systemPool
	call _Z17FX_DelRefToEffectP8FxSystemP8FxEffect
	jmp _Z19FX_PlayBoltedEffectiPK11FxEffectDefiii_100


;FX_FreeSpotLightElem(FxSystem*, unsigned short, FxEffect*)
_Z20FX_FreeSpotLightElemP8FxSystemtP8FxEffect:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0x10]
	movzx edi, word [ebx+0x9c6]
	shl edi, 0x2
	mov [ebp-0x1c], edi
	mov eax, [ebx+0x174]
	add edi, eax
	mov [ebp-0x1c], edi
	cld
	mov ecx, 0xa
	xor eax, eax
	rep stosd
	mov ecx, [ebp-0x1c]
	sub ecx, [ebx+0x174]
	sar ecx, 0x3
	lea eax, [ecx+ecx*2]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	mov edx, eax
	shl edx, 0x10
	add eax, edx
	lea eax, [ecx+eax*4]
	mov edx, [ebx+0x184]
	mov ecx, [ebp-0x1c]
	mov [ecx], edx
	mov [ebx+0x184], eax
	mov eax, [esi+0x4]
	sub ax, 0x1
	jz _Z20FX_FreeSpotLightElemP8FxSystemtP8FxEffect_10
_Z20FX_FreeSpotLightElemP8FxSystemtP8FxEffect_30:
	mov eax, [esi+0x4]
	sub eax, 0x1
	mov [esi+0x4], eax
	mov eax, [esi+0x4]
	mov eax, [ebx+0x194]
	sub eax, 0x1
	mov [ebx+0x194], eax
	mov eax, [ebx+0x9c0]
	sub eax, 0x1
	mov [ebx+0x9c0], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20FX_FreeSpotLightElemP8FxSystemtP8FxEffect_10:
	movzx eax, word [esi+0x14]
	lea edx, [eax*4]
	add edx, [ebx+0x170]
	mov eax, [esi+0x4]
	test eax, 0x10000000
	jz _Z20FX_FreeSpotLightElemP8FxSystemtP8FxEffect_20
_Z20FX_FreeSpotLightElemP8FxSystemtP8FxEffect_40:
	mov byte [ebx+0x9dd], 0x1
	jmp _Z20FX_FreeSpotLightElemP8FxSystemtP8FxEffect_30
_Z20FX_FreeSpotLightElemP8FxSystemtP8FxEffect_20:
	mov eax, [edx+0x4]
	mov eax, [edx+0x4]
	sub eax, 0x20000
	mov [edx+0x4], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call _Z17FX_DelRefToEffectP8FxSystemP8FxEffect
	jmp _Z20FX_FreeSpotLightElemP8FxSystemtP8FxEffect_40


;FX_LinkSystemBuffers(FxSystem*, FxSystemBuffers*)
_Z20FX_LinkSystemBuffersP8FxSystemP15FxSystemBuffers:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ebp+0xc]
	lea edx, [eax+0x20000]
	mov [ecx+0x174], edx
	mov [ecx+0x170], eax
	lea edx, [eax+0x34000]
	mov [ecx+0x178], edx
	lea edx, [eax+0x34400]
	mov [ecx+0x17c], edx
	lea edx, [eax+0x44400]
	mov [ecx+0x1a4], edx
	add eax, 0x46420
	mov [ecx+0x180], eax
	pop ebp
	ret


;FX_ThroughWithEffect(int, FxEffect*)
_Z20FX_ThroughWithEffectiP8FxEffect:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0xc]
	cmp byte [fx_systemPool+0x9dc], 0x0
	jnz _Z20FX_ThroughWithEffectiP8FxEffect_10
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z20FX_ThroughWithEffectiP8FxEffect_10:
	mov [esp+0x4], ebx
	mov dword [esp], fx_systemPool
	call _Z13FX_KillEffectP8FxSystemP8FxEffect
	mov eax, [ebx+0x4]
	sub ax, 0x1
	jz _Z20FX_ThroughWithEffectiP8FxEffect_20
_Z20FX_ThroughWithEffectiP8FxEffect_40:
	mov eax, [ebx+0x4]
	sub eax, 0x1
	mov [ebx+0x4], eax
	mov eax, [ebx+0x4]
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z20FX_ThroughWithEffectiP8FxEffect_20:
	movzx eax, word [ebx+0x14]
	mov edx, [fx_systemPool+0x170]
	lea edx, [edx+eax*4]
	mov eax, [ebx+0x4]
	test eax, 0x10000000
	jz _Z20FX_ThroughWithEffectiP8FxEffect_30
_Z20FX_ThroughWithEffectiP8FxEffect_50:
	mov byte [fx_systemPool+0x9dd], 0x1
	jmp _Z20FX_ThroughWithEffectiP8FxEffect_40
_Z20FX_ThroughWithEffectiP8FxEffect_30:
	mov eax, [edx+0x4]
	mov eax, [edx+0x4]
	sub eax, 0x20000
	mov [edx+0x4], eax
	mov [esp+0x4], edx
	mov dword [esp], fx_systemPool
	call _Z17FX_DelRefToEffectP8FxSystemP8FxEffect
	jmp _Z20FX_ThroughWithEffectiP8FxEffect_50


;FX_PlayOrientedEffect(int, FxEffectDef const*, int, float const*, float const (*) [3])
_Z21FX_PlayOrientedEffectiPK11FxEffectDefiPKfPA3_S2_:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	mov eax, fx_enable
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z21FX_PlayOrientedEffectiPK11FxEffectDefiPKfPA3_S2__10
_Z21FX_PlayOrientedEffectiPK11FxEffectDefiPKfPA3_S2__20:
	add esp, 0x34
	pop ebx
	pop ebp
	ret
_Z21FX_PlayOrientedEffectiPK11FxEffectDefiPKfPA3_S2__10:
	mov dword [esp+0x24], 0x3ff
	mov dword [esp+0x20], 0xffff
	mov dword [esp+0x1c], 0xff
	mov dword [esp+0x18], 0x7ff
	mov dword [esp+0x14], 0xfff
	mov eax, [ebp+0x18]
	mov [esp+0x10], eax
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov dword [esp], fx_systemPool
	call _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj
	mov ebx, eax
	test eax, eax
	jz _Z21FX_PlayOrientedEffectiPK11FxEffectDefiPKfPA3_S2__20
	mov eax, [eax+0x4]
	sub ax, 0x1
	jz _Z21FX_PlayOrientedEffectiPK11FxEffectDefiPKfPA3_S2__30
_Z21FX_PlayOrientedEffectiPK11FxEffectDefiPKfPA3_S2__50:
	mov eax, [ebx+0x4]
	sub eax, 0x1
	mov [ebx+0x4], eax
	mov eax, [ebx+0x4]
	add esp, 0x34
	pop ebx
	pop ebp
	ret
_Z21FX_PlayOrientedEffectiPK11FxEffectDefiPKfPA3_S2__30:
	movzx eax, word [ebx+0x14]
	mov edx, [fx_systemPool+0x170]
	lea edx, [edx+eax*4]
	mov eax, [ebx+0x4]
	test eax, 0x10000000
	jz _Z21FX_PlayOrientedEffectiPK11FxEffectDefiPKfPA3_S2__40
_Z21FX_PlayOrientedEffectiPK11FxEffectDefiPKfPA3_S2__60:
	mov byte [fx_systemPool+0x9dd], 0x1
	jmp _Z21FX_PlayOrientedEffectiPK11FxEffectDefiPKfPA3_S2__50
_Z21FX_PlayOrientedEffectiPK11FxEffectDefiPKfPA3_S2__40:
	mov eax, [edx+0x4]
	mov eax, [edx+0x4]
	sub eax, 0x20000
	mov [edx+0x4], eax
	mov [esp+0x4], edx
	mov dword [esp], fx_systemPool
	call _Z17FX_DelRefToEffectP8FxSystemP8FxEffect
	jmp _Z21FX_PlayOrientedEffectiPK11FxEffectDefiPKfPA3_S2__60
	nop


;FX_GetClientVisibility(int, float const*, float const*)
_Z22FX_GetClientVisibilityiPKfS0_:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	mov ebx, [fx_systemPool+0x1a8]
	test ebx, ebx
	jz _Z22FX_GetClientVisibilityiPKfS0__10
	mov eax, [ebx+0x1000]
	test eax, eax
	jnz _Z22FX_GetClientVisibilityiPKfS0__20
_Z22FX_GetClientVisibilityiPKfS0__10:
	mov esi, 0x3f800000
	mov [ebp-0x2c], esi
	fld dword [ebp-0x2c]
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
_Z22FX_GetClientVisibilityiPKfS0__20:
	movss xmm0, dword [edx]
	movss [ebp-0x18], xmm0
	movss xmm4, dword [ecx]
	subss xmm4, xmm0
	movss xmm7, dword [edx+0x4]
	movss xmm3, dword [ecx+0x4]
	subss xmm3, xmm7
	movss xmm6, dword [edx+0x8]
	movss xmm2, dword [ecx+0x8]
	subss xmm2, xmm6
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	movaps xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, [_float_0_00000000]
	jb _Z22FX_GetClientVisibilityiPKfS0__30
	movss xmm5, dword [_float_1_00000000]
	movaps xmm0, xmm5
_Z22FX_GetClientVisibilityiPKfS0__70:
	mulss xmm4, xmm0
	movss [ebp-0xc], xmm4
	mulss xmm3, xmm0
	movss [ebp-0x10], xmm3
	mulss xmm2, xmm0
	movss [ebp-0x14], xmm2
	mov eax, fx_visMinTraceDist
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	ucomiss xmm0, xmm1
	ja _Z22FX_GetClientVisibilityiPKfS0__40
	mulss xmm1, [_float_0_50000000]
	movss [ebp-0x1c], xmm1
	mov eax, [ebx+0x1000]
	test eax, eax
	jle _Z22FX_GetClientVisibilityiPKfS0__40
	movss [ebp-0x2c], xmm5
	mov esi, [ebp-0x2c]
	xor ecx, ecx
	mov edx, ebx
_Z22FX_GetClientVisibilityiPKfS0__60:
	movss xmm2, dword [edx]
	movss xmm4, dword [edx+0x4]
	movss xmm5, dword [edx+0x8]
	movaps xmm3, xmm2
	subss xmm3, [ebp-0x18]
	mulss xmm3, [ebp-0xc]
	movaps xmm0, xmm4
	subss xmm0, xmm7
	mulss xmm0, [ebp-0x10]
	addss xmm3, xmm0
	movaps xmm0, xmm5
	subss xmm0, xmm6
	mulss xmm0, [ebp-0x14]
	addss xmm3, xmm0
	movaps xmm0, xmm3
	subss xmm0, [ebp-0x1c]
	andps xmm0, [_data16_7fffffff]
	ucomiss xmm0, [ebp-0x1c]
	ja _Z22FX_GetClientVisibilityiPKfS0__50
	movss xmm1, dword [ebp-0xc]
	mulss xmm1, xmm3
	addss xmm1, [ebp-0x18]
	subss xmm1, xmm2
	movss xmm0, dword [ebp-0x10]
	mulss xmm0, xmm3
	addss xmm0, xmm7
	subss xmm0, xmm4
	mulss xmm3, [ebp-0x14]
	addss xmm3, xmm6
	subss xmm3, xmm5
	movzx eax, word [edx+0xc]
	cvtsi2ss xmm2, eax
	mulss xmm2, [_float_0_06250000]
	mulss xmm1, xmm1
	mulss xmm0, xmm0
	addss xmm1, xmm0
	mulss xmm3, xmm3
	addss xmm1, xmm3
	mulss xmm2, xmm2
	ucomiss xmm1, xmm2
	jae _Z22FX_GetClientVisibilityiPKfS0__50
	movzx eax, word [edx+0xe]
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_00001526]
	mov [ebp-0x2c], esi
	movss xmm1, dword [ebp-0x2c]
	mulss xmm1, xmm0
	movss [ebp-0x2c], xmm1
	mov esi, [ebp-0x2c]
_Z22FX_GetClientVisibilityiPKfS0__50:
	add ecx, 0x1
	add edx, 0x10
	mov eax, [ebx+0x1000]
	cmp eax, ecx
	jg _Z22FX_GetClientVisibilityiPKfS0__60
	mov [ebp-0x2c], esi
	fld dword [ebp-0x2c]
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
_Z22FX_GetClientVisibilityiPKfS0__40:
	movss [ebp-0x2c], xmm5
	mov esi, [ebp-0x2c]
	mov [ebp-0x2c], esi
	fld dword [ebp-0x2c]
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
_Z22FX_GetClientVisibilityiPKfS0__30:
	movss xmm5, dword [_float_1_00000000]
	movaps xmm0, xmm5
	divss xmm0, xmm1
	jmp _Z22FX_GetClientVisibilityiPKfS0__70


;FX_SpawnOrientedEffect(int, FxEffectDef const*, int, float const*, float const (*) [3], unsigned int)
_Z22FX_SpawnOrientedEffectiPK11FxEffectDefiPKfPA3_S2_j:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	mov eax, fx_enable
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z22FX_SpawnOrientedEffectiPK11FxEffectDefiPKfPA3_S2_j_10
	xor eax, eax
	leave
	ret
_Z22FX_SpawnOrientedEffectiPK11FxEffectDefiPKfPA3_S2_j_10:
	mov eax, [ebp+0x1c]
	mov [esp+0x24], eax
	mov dword [esp+0x20], 0xffff
	mov dword [esp+0x1c], 0xff
	mov dword [esp+0x18], 0x7ff
	mov dword [esp+0x14], 0xfff
	mov eax, [ebp+0x18]
	mov [esp+0x10], eax
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov dword [esp], fx_systemPool
	call _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj
	leave
	ret


;FX_SpawnTrailElem_Cull(FxSystem*, FxEffect*, FxTrail*, FxSpatialFrame const*, int, float)
_Z22FX_SpawnTrailElem_CullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov [ebp-0x14], eax
	mov edx, [ebp+0xc]
	mov [ebp-0x18], edx
	mov ebx, [ebp+0x10]
	mov edi, [ebp+0x14]
	mov eax, [ebp+0x18]
	mov [ebp-0x1c], eax
	movss xmm0, dword [ebp+0x1c]
	movss [ebp-0x20], xmm0
	mov eax, [edx]
	movsx edx, byte [ebx+0x6]
	lea ecx, [edx*4]
	shl edx, 0x8
	sub edx, ecx
	add edx, [eax+0x1c]
	movzx eax, byte [ebx+0x7]
	mov [ebp-0xd], al
	lea esi, [edi+0x10]
	mov eax, [ebp-0x14]
	add eax, 0xb0
	movzx ecx, byte [ebp-0xd]
	movss xmm3, dword [edx+0xc]
	addss xmm3, [edx+0x10]
	ucomiss xmm3, [_float_0_00000000]
	jp _Z22FX_SpawnTrailElem_CullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif_10
	jz _Z22FX_SpawnTrailElem_CullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif_20
_Z22FX_SpawnTrailElem_CullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif_10:
	test cl, cl
	jnz _Z22FX_SpawnTrailElem_CullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif_30
_Z22FX_SpawnTrailElem_CullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif_50:
	movss xmm0, dword [ebp-0x20]
_Z22FX_SpawnTrailElem_CullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif_20:
	movss [ebp+0x1c], xmm0
	mov eax, [ebp-0x1c]
	mov [ebp+0x18], eax
	mov [ebp+0x14], edi
	mov [ebp+0x10], ebx
	mov edx, [ebp-0x18]
	mov [ebp+0xc], edx
	mov eax, [ebp-0x14]
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z24FX_SpawnTrailElem_NoCullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif
_Z22FX_SpawnTrailElem_CullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif_30:
	test cl, 0x1
	jz _Z22FX_SpawnTrailElem_CullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif_40
	movss xmm0, dword [_float_1_00000000]
_Z22FX_SpawnTrailElem_CullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif_70:
	mulss xmm3, xmm0
	movss xmm0, dword [eax]
	subss xmm0, [esi]
	movss xmm1, dword [eax+0x4]
	subss xmm1, [esi+0x4]
	movss xmm2, dword [eax+0x8]
	subss xmm2, [esi+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	mulss xmm3, xmm3
	ucomiss xmm0, xmm3
	jbe _Z22FX_SpawnTrailElem_CullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif_50
	movzx eax, byte [ebp-0xd]
	add al, 0x1
	mov [ebx+0x7], al
	add esp, 0x14
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22FX_SpawnTrailElem_CullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif_40:
	movss xmm1, dword [_float_1_00000000]
	movaps xmm0, xmm1
_Z22FX_SpawnTrailElem_CullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif_60:
	addss xmm0, xmm1
	shr cl, 1
	test cl, 0x1
	jz _Z22FX_SpawnTrailElem_CullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif_60
	jmp _Z22FX_SpawnTrailElem_CullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif_70


;FX_RunGarbageCollection(FxSystem*)
_Z23FX_RunGarbageCollectionP8FxSystem:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x82c
	mov esi, [ebp+0x8]
	cmp byte [esi+0x9dd], 0x0
	jz _Z23FX_RunGarbageCollectionP8FxSystem_10
	mov byte [esi+0x9dd], 0x0
	mov edi, [esi+0x1b4]
	mov dword [ebp-0x820], 0x0
_Z23FX_RunGarbageCollectionP8FxSystem_90:
	mov eax, [esi+0x1b0]
	cmp eax, edi
	jz _Z23FX_RunGarbageCollectionP8FxSystem_20
_Z23FX_RunGarbageCollectionP8FxSystem_40:
	sub edi, 0x1
	mov eax, edi
	and eax, 0x3ff
	movzx eax, word [esi+eax*2+0x1bc]
	mov [ebp-0x822], ax
	mov [ebp-0x81a], ax
	movzx eax, ax
	lea ebx, [eax*4]
	add ebx, [esi+0x170]
	mov eax, [ebx+0x4]
	test ax, ax
	jz _Z23FX_RunGarbageCollectionP8FxSystem_30
	mov edx, [ebp-0x820]
	lea eax, [edi+edx]
	and eax, 0x3ff
	movzx edx, word [ebp-0x822]
	mov [esi+eax*2+0x1bc], dx
	mov eax, [esi+0x1b0]
	cmp eax, edi
	jnz _Z23FX_RunGarbageCollectionP8FxSystem_40
_Z23FX_RunGarbageCollectionP8FxSystem_20:
	mov edi, [ebp-0x820]
	test edi, edi
	jnz _Z23FX_RunGarbageCollectionP8FxSystem_50
_Z23FX_RunGarbageCollectionP8FxSystem_110:
	mov [esi+0x1b0], eax
_Z23FX_RunGarbageCollectionP8FxSystem_10:
	add esp, 0x82c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23FX_RunGarbageCollectionP8FxSystem_60:
	movzx eax, dx
	shl eax, 0x2
	add eax, [esi+0x178]
	movzx edx, word [eax]
	mov [ebx+0x10], dx
	mov dword [eax], 0x0
	mov dword [eax+0x4], 0x0
	mov edx, eax
	sub edx, [esi+0x178]
	sar edx, 0x3
	mov ecx, [esi+0x18c]
	mov [eax], ecx
	mov [esi+0x18c], edx
	mov eax, [esi+0x19c]
	sub eax, 0x1
	mov [esi+0x19c], eax
_Z23FX_RunGarbageCollectionP8FxSystem_30:
	movzx edx, word [ebx+0x10]
	cmp dx, 0xffff
	jnz _Z23FX_RunGarbageCollectionP8FxSystem_60
	mov eax, [esi+0x9bc]
	test eax, eax
	jz _Z23FX_RunGarbageCollectionP8FxSystem_70
	movzx eax, word [ebp-0x81a]
	cmp ax, [esi+0x9c4]
	jz _Z23FX_RunGarbageCollectionP8FxSystem_80
_Z23FX_RunGarbageCollectionP8FxSystem_70:
	movzx eax, word [ebp-0x822]
	mov edx, [ebp-0x820]
	mov [ebp+edx*2-0x818], ax
	add edx, 0x1
	mov [ebp-0x820], edx
	jmp _Z23FX_RunGarbageCollectionP8FxSystem_90
_Z23FX_RunGarbageCollectionP8FxSystem_50:
	mov edx, [ebp-0x820]
	lea edi, [ebp+edx*2-0x818]
	mov ebx, eax
	lea eax, [eax+edx]
	mov [ebp-0x828], eax
_Z23FX_RunGarbageCollectionP8FxSystem_100:
	mov edx, ebx
	and edx, 0x3ff
	movzx eax, word [edi-0x2]
	mov [esi+edx*2+0x1bc], ax
	add ebx, 0x1
	shl eax, 0x2
	add eax, [esi+0x170]
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	sub edi, 0x2
	mov eax, [ebp-0x828]
	cmp eax, ebx
	jnz _Z23FX_RunGarbageCollectionP8FxSystem_100
	jmp _Z23FX_RunGarbageCollectionP8FxSystem_110
_Z23FX_RunGarbageCollectionP8FxSystem_80:
	lea eax, [esi+0x9bc]
	mov [esp], eax
	call iInterlockedDecrement
	jmp _Z23FX_RunGarbageCollectionP8FxSystem_70
	nop


;FX_SpawnTrailElem_NoCull(FxSystem*, FxEffect*, FxTrail*, FxSpatialFrame const*, int, float)
_Z24FX_SpawnTrailElem_NoCullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov edx, [ebp+0xc]
	mov eax, [edx]
	mov ecx, [ebp+0x10]
	movsx edx, byte [ecx+0x6]
	lea ecx, [edx*4]
	mov esi, edx
	shl esi, 0x8
	sub esi, ecx
	add esi, [eax+0x1c]
	mov ebx, [esi+0x28]
	mov eax, [ebp+0x18]
	add ebx, eax
	mov [ebp-0x3c], ebx
	mov edx, [esi+0x2c]
	mov [ebp-0x40], edx
	test edx, edx
	jz _Z24FX_SpawnTrailElem_NoCullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif_10
	mov ecx, [ebp+0x10]
	movzx ecx, byte [ecx+0x7]
	mov [ebp-0x41], cl
	mov ebx, [ebp+0xc]
	movzx edi, word [ebx+0x12]
	movzx edx, di
	add edx, [ebp-0x3c]
	movsx eax, cl
	lea ecx, [eax+eax*8]
	lea ecx, [eax+ecx*4]
	lea ecx, [edx+ecx*8]
	mov edx, 0x11a3019b
	mov eax, ecx
	mul edx
	mov eax, ecx
	sub eax, edx
	shr eax, 1
	add edx, eax
	shr edx, 0x8
	mov ebx, edx
	shl ebx, 0x5
	mov eax, edx
	shl eax, 0x9
	sub eax, ebx
	sub eax, edx
	sub ecx, eax
	movzx ecx, cx
	lea ecx, [ecx*4+0x48]
	add ecx, fx_randomTable
	mov eax, [ebp-0x40]
	add eax, 0x1
	movzx edx, word [ecx]
	imul eax, edx
	sar eax, 0x10
	add [ebp-0x3c], eax
_Z24FX_SpawnTrailElem_NoCullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif_100:
	movzx edx, di
	add edx, [ebp-0x3c]
	movsx eax, byte [ebp-0x41]
	lea ecx, [eax+eax*8]
	lea ecx, [eax+ecx*4]
	lea ecx, [edx+ecx*8]
	mov edx, 0x11a3019b
	mov eax, ecx
	mul edx
	mov eax, ecx
	sub eax, edx
	shr eax, 1
	add edx, eax
	shr edx, 0x8
	mov ebx, edx
	shl ebx, 0x5
	mov eax, edx
	shl eax, 0x9
	sub eax, ebx
	sub eax, edx
	sub ecx, eax
	movzx ecx, cx
	mov ebx, [esi+0xd8]
	test ebx, ebx
	jz _Z24FX_SpawnTrailElem_NoCullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif_20
_Z24FX_SpawnTrailElem_NoCullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif_120:
	mov eax, [ebp+0x8]
_Z24FX_SpawnTrailElem_NoCullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif_130:
	mov edx, [eax+0x17c]
	mov eax, [eax+0x188]
	cmp eax, 0xffffffff
	jz _Z24FX_SpawnTrailElem_NoCullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif_30
	shl eax, 0x5
	lea ebx, [edx+eax]
	mov eax, [ebx]
	mov edx, [ebp+0x8]
	mov [edx+0x188], eax
	mov eax, [edx+0x198]
	add eax, 0x1
	mov [edx+0x198], eax
	test ebx, ebx
	jz _Z24FX_SpawnTrailElem_NoCullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif_30
	mov edx, [ebp+0xc]
	mov eax, [edx+0x4]
	add eax, 0x1
	mov [edx+0x4], eax
	lea edi, [ebp-0x30]
	lea eax, [ebp-0x24]
	mov [esp+0x18], eax
	mov [esp+0x14], edi
	mov [esp+0x10], ebx
	mov [esp+0xc], ecx
	mov ecx, [ebp+0x14]
	mov [esp+0x8], ecx
	mov [esp+0x4], esi
	mov [esp], edx
	call _Z24FX_GetOriginForTrailElemP8FxEffectPK9FxElemDefPK14FxSpatialFrameiPfS7_S7_
	mov esi, [ebp+0x8]
	mov ecx, [esi+0x17c]
	mov eax, ebx
	sub eax, ecx
	js _Z24FX_SpawnTrailElem_NoCullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif_40
_Z24FX_SpawnTrailElem_NoCullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif_140:
	sar eax, 0x2
	movzx edx, ax
	mov [ebp-0x4a], dx
	mov esi, [ebp+0x10]
	movzx eax, word [esi+0x4]
	cmp ax, 0xffff
	jz _Z24FX_SpawnTrailElem_NoCullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif_50
	movzx eax, ax
	mov [ecx+eax*4+0x14], dx
_Z24FX_SpawnTrailElem_NoCullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif_110:
	mov word [ebx+0x14], 0xffff
	movzx edx, word [ebp-0x4a]
	mov eax, [ebp+0x10]
	mov [eax+0x4], dx
	mov ecx, [ebp-0x3c]
	mov [ebx+0x10], ecx
	movss xmm0, dword [ebp+0x1c]
	movss [ebx+0xc], xmm0
	mov word [ebx+0x16], 0x0
	mov edx, [ebp+0x10]
	movzx eax, byte [edx+0x7]
	mov [ebx+0x1e], al
	add byte [edx+0x7], 0x1
	lea eax, [ebx+0x18]
	mov esi, edi
	movss xmm1, dword [_float_127_00000000]
_Z24FX_SpawnTrailElem_NoCullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif_80:
	xor ebx, ebx
_Z24FX_SpawnTrailElem_NoCullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif_70:
	movss xmm0, dword [esi+ebx*4]
	mulss xmm0, xmm1
	cvttss2si edx, xmm0
	cmp edx, 0xffffff80
	jge _Z24FX_SpawnTrailElem_NoCullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif_60
	mov ecx, 0xffffff80
_Z24FX_SpawnTrailElem_NoCullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif_90:
	mov [eax+ebx], cl
	add ebx, 0x1
	cmp ebx, 0x3
	jnz _Z24FX_SpawnTrailElem_NoCullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif_70
	add eax, 0x3
	add esi, 0xc
	lea ecx, [ebp-0x18]
	cmp ecx, esi
	jnz _Z24FX_SpawnTrailElem_NoCullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif_80
_Z24FX_SpawnTrailElem_NoCullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif_30:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24FX_SpawnTrailElem_NoCullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif_60:
	mov ecx, 0x7f
	cmp edx, 0x80
	cmovl ecx, edx
	jmp _Z24FX_SpawnTrailElem_NoCullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif_90
_Z24FX_SpawnTrailElem_NoCullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif_10:
	mov edx, [ebp+0x10]
	movzx edx, byte [edx+0x7]
	mov [ebp-0x41], dl
	mov ecx, [ebp+0xc]
	movzx edi, word [ecx+0x12]
	jmp _Z24FX_SpawnTrailElem_NoCullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif_100
_Z24FX_SpawnTrailElem_NoCullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif_50:
	mov [esi+0x2], dx
	jmp _Z24FX_SpawnTrailElem_NoCullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif_110
_Z24FX_SpawnTrailElem_NoCullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif_20:
	mov edx, [esi+0xdc]
	test edx, edx
	jnz _Z24FX_SpawnTrailElem_NoCullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif_120
	mov eax, [esi+0xe0]
	test eax, eax
	jnz _Z24FX_SpawnTrailElem_NoCullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif_120
	lea eax, [ecx*4+0x44]
	add eax, fx_randomTable
	mov edx, [esi+0x34]
	add edx, 0x1
	movzx eax, word [eax]
	imul edx, eax
	sar edx, 0x10
	add edx, [esi+0x30]
	add edx, [ebp-0x3c]
	mov ebx, [ebp+0x8]
	cmp edx, [ebx+0x9d0]
	jle _Z24FX_SpawnTrailElem_NoCullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif_30
	mov eax, ebx
	jmp _Z24FX_SpawnTrailElem_NoCullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif_130
_Z24FX_SpawnTrailElem_NoCullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif_40:
	add eax, 0x3
	jmp _Z24FX_SpawnTrailElem_NoCullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif_140
	nop


;FX_EffectNoLongerReferenced(FxSystem*, FxEffect*)
_Z27FX_EffectNoLongerReferencedP8FxSystemP8FxEffect:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ecx, [ebp+0xc]
	movzx edx, word [ecx+0x14]
	mov eax, [esi+0x170]
	lea ebx, [eax+edx*4]
	mov eax, [ecx+0x4]
	test eax, 0x10000000
	jnz _Z27FX_EffectNoLongerReferencedP8FxSystemP8FxEffect_10
	mov eax, [ebx+0x4]
	mov eax, [ebx+0x4]
	sub eax, 0x20000
	mov [ebx+0x4], eax
	mov eax, [ebx+0x4]
	sub ax, 0x1
	jz _Z27FX_EffectNoLongerReferencedP8FxSystemP8FxEffect_20
_Z27FX_EffectNoLongerReferencedP8FxSystemP8FxEffect_40:
	mov eax, [ebx+0x4]
	sub eax, 0x1
	mov [ebx+0x4], eax
	mov eax, [ebx+0x4]
_Z27FX_EffectNoLongerReferencedP8FxSystemP8FxEffect_10:
	mov byte [esi+0x9dd], 0x1
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z27FX_EffectNoLongerReferencedP8FxSystemP8FxEffect_20:
	movzx eax, word [ebx+0x14]
	mov edx, [esi+0x170]
	lea edx, [edx+eax*4]
	mov eax, [ebx+0x4]
	test eax, 0x10000000
	jz _Z27FX_EffectNoLongerReferencedP8FxSystemP8FxEffect_30
_Z27FX_EffectNoLongerReferencedP8FxSystemP8FxEffect_50:
	mov byte [esi+0x9dd], 0x1
	jmp _Z27FX_EffectNoLongerReferencedP8FxSystemP8FxEffect_40
_Z27FX_EffectNoLongerReferencedP8FxSystemP8FxEffect_30:
	mov eax, [edx+0x4]
	mov eax, [edx+0x4]
	sub eax, 0x20000
	mov [edx+0x4], eax
	mov [esp+0x4], edx
	mov [esp], esi
	call _Z17FX_DelRefToEffectP8FxSystemP8FxEffect
	jmp _Z27FX_EffectNoLongerReferencedP8FxSystemP8FxEffect_50


;FX_PlayOrientedEffectWithMarkEntity(int, FxEffectDef const*, int, float const*, float const (*) [3], unsigned int)
_Z35FX_PlayOrientedEffectWithMarkEntityiPK11FxEffectDefiPKfPA3_S2_j:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	mov eax, fx_enable
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z35FX_PlayOrientedEffectWithMarkEntityiPK11FxEffectDefiPKfPA3_S2_j_10
_Z35FX_PlayOrientedEffectWithMarkEntityiPK11FxEffectDefiPKfPA3_S2_j_20:
	add esp, 0x34
	pop ebx
	pop ebp
	ret
_Z35FX_PlayOrientedEffectWithMarkEntityiPK11FxEffectDefiPKfPA3_S2_j_10:
	mov eax, [ebp+0x1c]
	mov [esp+0x24], eax
	mov dword [esp+0x20], 0xffff
	mov dword [esp+0x1c], 0xff
	mov dword [esp+0x18], 0x7ff
	mov dword [esp+0x14], 0xfff
	mov eax, [ebp+0x18]
	mov [esp+0x10], eax
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov dword [esp], fx_systemPool
	call _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj
	mov ebx, eax
	test eax, eax
	jz _Z35FX_PlayOrientedEffectWithMarkEntityiPK11FxEffectDefiPKfPA3_S2_j_20
	mov eax, [eax+0x4]
	sub ax, 0x1
	jz _Z35FX_PlayOrientedEffectWithMarkEntityiPK11FxEffectDefiPKfPA3_S2_j_30
_Z35FX_PlayOrientedEffectWithMarkEntityiPK11FxEffectDefiPKfPA3_S2_j_50:
	mov eax, [ebx+0x4]
	sub eax, 0x1
	mov [ebx+0x4], eax
	mov eax, [ebx+0x4]
	add esp, 0x34
	pop ebx
	pop ebp
	ret
_Z35FX_PlayOrientedEffectWithMarkEntityiPK11FxEffectDefiPKfPA3_S2_j_30:
	movzx eax, word [ebx+0x14]
	mov edx, [fx_systemPool+0x170]
	lea edx, [edx+eax*4]
	mov eax, [ebx+0x4]
	test eax, 0x10000000
	jz _Z35FX_PlayOrientedEffectWithMarkEntityiPK11FxEffectDefiPKfPA3_S2_j_40
_Z35FX_PlayOrientedEffectWithMarkEntityiPK11FxEffectDefiPKfPA3_S2_j_60:
	mov byte [fx_systemPool+0x9dd], 0x1
	jmp _Z35FX_PlayOrientedEffectWithMarkEntityiPK11FxEffectDefiPKfPA3_S2_j_50
_Z35FX_PlayOrientedEffectWithMarkEntityiPK11FxEffectDefiPKfPA3_S2_j_40:
	mov eax, [edx+0x4]
	mov eax, [edx+0x4]
	sub eax, 0x20000
	mov [edx+0x4], eax
	mov [esp+0x4], edx
	mov dword [esp], fx_systemPool
	call _Z17FX_DelRefToEffectP8FxSystemP8FxEffect
	jmp _Z35FX_PlayOrientedEffectWithMarkEntityiPK11FxEffectDefiPKfPA3_S2_j_60


;Initialized global or static variables of fx_system:
SECTION .data


;Initialized constant data of fx_system:
SECTION .rdata


;Zero initialized global or static variables of fx_system:
SECTION .bss
fx_systemBufferPool: resb 0x47480
fx_systemPool: resb 0xa80
fx_marksSystemPool: resb 0x48060
fx_serverVisClient: resb 0x20


;All cstrings:
SECTION .rdata
_cstring_failed_to_find_s:		db "Failed to find sound alias ",27h,"%s",27h,0ah,0



;All constant floats and doubles:
SECTION .rdata
_float_1000_00000000:		dd 0x447a0000	; 1000
_float_360_00000000:		dd 0x43b40000	; 360
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_0_00000000:		dd 0x0	; 0
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_50000000:		dd 0x3f000000	; 0.5
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; OWORD
_float_0_06250000:		dd 0x3d800000	; 0.0625
_float_0_00001526:		dd 0x37800000	; 1.52588e-05
_float_127_00000000:		dd 0x42fe0000	; 127

