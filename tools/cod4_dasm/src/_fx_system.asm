;Imports of fx_system:
	extern Sys_EnterCriticalSection
	extern Phys_ObjDestroy
	extern Sys_LeaveCriticalSection
	extern fx_cull_elem_spawn
	extern fx_randomTable
	extern UnitQuatToAxis
	extern FX_GetSpawnOrigin
	extern FX_OffsetSpawnOrigin
	extern cg_entitiesArray
	extern FX_CreateImpactMark
	extern FX_CullSphere
	extern R_WarnOncePerFrame
	extern FX_GetOrientation
	extern FX_OrientationPosToWorldPos
	extern FX_GetElemAxis
	extern AxisToQuat
	extern FX_GetVelocityAtTime
	extern Phys_ObjCreate
	extern Com_FindSoundAlias
	extern SND_AnyActiveListeners
	extern Sys_IsMainThread
	extern CG_PlaySoundAlias
	extern RotatePointAroundVector
	extern Com_PrintWarning
	extern CG_AddFXSoundAlias
	extern Phys_ObjSetCollisionFromXModel
	extern Phys_ObjSetAngularVelocity
	extern memset
	extern FX_RegisterDvars
	extern FX_InitRandom
	extern FX_InitMarksSystem
	extern fx_cull_effect_spawn
	extern FX_StartNewEffect
	extern ms_rand
	extern R_GetAverageLightingAtPoint
	extern FX_GetBoltTemporalBits
	extern FX_UnregisterAll
	extern FX_UpdateEffectPartial
	extern FX_BeginLooping
	extern FX_TriggerOneShot
	extern InterlockedCompareExchange
	extern FX_SortNewElemsInEffect
	extern FX_SpawnAllFutureLooping
	extern fx_enable
	extern FX_GetBoneOrientation
	extern fx_visMinTraceDist
	extern InterlockedDecrement
	extern FX_GetOriginForTrailElem

;Exports of fx_system:
	global fx_systemBufferPool
	global fx_systemPool
	global FX_EffectAffectsGameplay
	global FX_RemoveAllEffectElems
	global FX_FreeElem
	global FX_GetSystem
	global FX_SpawnElem
	global FX_InitSystem
	global FX_KillEffect
	global FX_StopEffect
	global FX_SpawnEffect
	global FX_FreeTrailElem
	global FX_KillEffectDef
	global FX_DelRefToEffect
	global FX_KillAllEffects
	global FX_RelocateSystem
	global FX_ShutdownSystem
	global FX_RetriggerEffect
	global FX_GetSystemBuffers
	global FX_PlayBoltedEffect
	global FX_FreeSpotLightElem
	global FX_LinkSystemBuffers
	global FX_ThroughWithEffect
	global FX_PlayOrientedEffect
	global FX_GetClientVisibility
	global FX_SpawnOrientedEffect
	global FX_SpawnTrailElem_Cull
	global FX_RunGarbageCollection
	global FX_SpawnTrailElem_NoCull
	global FX_EffectNoLongerReferenced
	global FX_PlayOrientedEffectWithMarkEntity
	global fx_marksSystemPool
	global fx_serverVisClient


SECTION .text


;FX_EffectAffectsGameplay(FxEffectDef const*)
FX_EffectAffectsGameplay:
FX_EffectAffectsGameplay_60:
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
	jz FX_EffectAffectsGameplay_10
	mov eax, [ebp-0x2c]
	mov ebx, [eax+0x1c]
	test byte [ebx+0x1], 0x10
	jnz FX_EffectAffectsGameplay_20
	mov byte [ebp-0x1d], 0x0
	mov dword [ebp-0x24], 0x0
	mov dword [ebp-0x1c], 0xfc
	jmp FX_EffectAffectsGameplay_30
FX_EffectAffectsGameplay_90:
	add dword [ebp-0x24], 0x1
	mov edx, [ebp-0x24]
	cmp [ebp-0x28], edx
	jbe FX_EffectAffectsGameplay_40
	mov ebx, [ebp-0x1c]
	mov eax, [ebp-0x2c]
	add ebx, [eax+0x1c]
	add dword [ebp-0x1c], 0xfc
	test byte [ebx+0x1], 0x10
	jnz FX_EffectAffectsGameplay_20
FX_EffectAffectsGameplay_30:
	mov eax, [ebx+0xdc]
	test eax, eax
	jz FX_EffectAffectsGameplay_50
	call FX_EffectAffectsGameplay_60
	test al, al
	jnz FX_EffectAffectsGameplay_20
FX_EffectAffectsGameplay_50:
	mov eax, [ebx+0xd8]
	test eax, eax
	jz FX_EffectAffectsGameplay_70
	call FX_EffectAffectsGameplay_60
	test al, al
	jnz FX_EffectAffectsGameplay_20
FX_EffectAffectsGameplay_70:
	mov eax, [ebx+0xe0]
	test eax, eax
	jz FX_EffectAffectsGameplay_80
	call FX_EffectAffectsGameplay_60
	test al, al
	jnz FX_EffectAffectsGameplay_20
FX_EffectAffectsGameplay_80:
	cmp byte [ebx+0xb0], 0xa
	jnz FX_EffectAffectsGameplay_90
	movzx edx, byte [ebx+0xb1]
	cmp dl, 0x1
	jz FX_EffectAffectsGameplay_100
	mov eax, [ebx+0xbc]
	test dl, dl
	jz FX_EffectAffectsGameplay_90
	mov esi, eax
	xor edi, edi
	jmp FX_EffectAffectsGameplay_110
FX_EffectAffectsGameplay_120:
	add edi, 0x1
	add esi, 0x4
	movzx eax, byte [ebx+0xb1]
	cmp eax, edi
	jbe FX_EffectAffectsGameplay_90
FX_EffectAffectsGameplay_110:
	mov eax, [esi]
	call FX_EffectAffectsGameplay_60
	test al, al
	jz FX_EffectAffectsGameplay_120
	mov byte [ebp-0x1d], 0x1
	jmp FX_EffectAffectsGameplay_90
FX_EffectAffectsGameplay_100:
	mov eax, [ebx+0xbc]
	call FX_EffectAffectsGameplay_60
	test al, al
	jz FX_EffectAffectsGameplay_90
FX_EffectAffectsGameplay_20:
	mov eax, 0x1
FX_EffectAffectsGameplay_130:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_EffectAffectsGameplay_10:
	xor eax, eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_EffectAffectsGameplay_40:
	movzx eax, byte [ebp-0x1d]
	jmp FX_EffectAffectsGameplay_130
	nop
	add [eax], al


;FX_RemoveAllEffectElems(FxSystem*, FxEffect*)
FX_RemoveAllEffectElems:
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
	call FX_StopEffect
	xor ebx, ebx
FX_RemoveAllEffectElems_40:
	mov edx, [ebp-0x20]
	movzx eax, word [edx+ebx*2+0x8]
	cmp ax, 0xffff
	jnz FX_RemoveAllEffectElems_10
	jmp FX_RemoveAllEffectElems_20
FX_RemoveAllEffectElems_30:
	mov edx, edi
FX_RemoveAllEffectElems_10:
	mov [esp+0xc], ebx
	mov [esp+0x8], edx
	movzx eax, ax
	mov [esp+0x4], eax
	mov ecx, [ebp-0x1c]
	mov [esp], ecx
	call FX_FreeElem
	mov edi, [ebp-0x20]
	movzx eax, word [edi+ebx*2+0x8]
	cmp ax, 0xffff
	jnz FX_RemoveAllEffectElems_30
FX_RemoveAllEffectElems_20:
	add ebx, 0x1
	cmp ebx, 0x3
	jnz FX_RemoveAllEffectElems_40
	mov ecx, [ebp-0x20]
	movzx eax, word [ecx+0x10]
	cmp ax, 0xffff
	jz FX_RemoveAllEffectElems_50
FX_RemoveAllEffectElems_120:
	movzx eax, ax
	lea esi, [eax*4]
	mov edi, [ebp-0x1c]
	add esi, [edi+0x178]
	movzx eax, word [esi+0x2]
	cmp ax, 0xffff
	jnz FX_RemoveAllEffectElems_60
	jmp FX_RemoveAllEffectElems_70
FX_RemoveAllEffectElems_90:
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
	jz FX_RemoveAllEffectElems_80
	mov edx, edi
FX_RemoveAllEffectElems_110:
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
	jz FX_RemoveAllEffectElems_70
FX_RemoveAllEffectElems_60:
	mov edx, eax
	movzx eax, ax
	lea ebx, [eax*4]
	mov eax, [ebp-0x1c]
	add ebx, [eax+0x17c]
	cmp dx, [esi+0x4]
	jnz FX_RemoveAllEffectElems_90
	mov word [esi+0x4], 0xffff
	jmp FX_RemoveAllEffectElems_90
FX_RemoveAllEffectElems_80:
	movzx eax, word [edi+0x14]
	lea edx, [eax*4]
	add edx, [ecx+0x170]
	mov eax, [edi+0x4]
	test eax, 0x10000000
	jz FX_RemoveAllEffectElems_100
FX_RemoveAllEffectElems_160:
	mov eax, [ebp-0x1c]
	mov byte [eax+0x9dd], 0x1
	mov edx, [ebp-0x20]
	jmp FX_RemoveAllEffectElems_110
FX_RemoveAllEffectElems_70:
	movzx eax, word [esi]
	cmp ax, 0xffff
	jnz FX_RemoveAllEffectElems_120
FX_RemoveAllEffectElems_50:
	mov edi, [ebp-0x1c]
	mov eax, [edi+0x9c0]
	test eax, eax
	jle FX_RemoveAllEffectElems_130
	movzx eax, word [edi+0x9c4]
	shl eax, 0x2
	add eax, [edi+0x170]
	cmp [ebp-0x20], eax
	jz FX_RemoveAllEffectElems_140
FX_RemoveAllEffectElems_130:
	mov edi, [ebp-0x20]
	mov eax, [edi+0x4]
	sub ax, 0x1
	jz FX_RemoveAllEffectElems_150
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
FX_RemoveAllEffectElems_100:
	mov eax, [edx+0x4]
	mov eax, [edx+0x4]
	sub eax, 0x20000
	mov [edx+0x4], eax
	mov [esp+0x4], edx
	mov [esp], ecx
	call FX_DelRefToEffect
	jmp FX_RemoveAllEffectElems_160
FX_RemoveAllEffectElems_150:
	movzx eax, word [edi+0x14]
	lea edx, [eax*4]
	mov eax, [ebp-0x1c]
	add edx, [eax+0x170]
	mov eax, [edi+0x4]
	test eax, 0x10000000
	jz FX_RemoveAllEffectElems_170
FX_RemoveAllEffectElems_180:
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
FX_RemoveAllEffectElems_170:
	mov eax, [edx+0x4]
	mov eax, [edx+0x4]
	sub eax, 0x20000
	mov [edx+0x4], eax
	mov [esp+0x4], edx
	mov edx, [ebp-0x1c]
	mov [esp], edx
	call FX_DelRefToEffect
	jmp FX_RemoveAllEffectElems_180
FX_RemoveAllEffectElems_140:
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
	jz FX_RemoveAllEffectElems_190
	mov edx, edi
FX_RemoveAllEffectElems_210:
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
	jmp FX_RemoveAllEffectElems_130
FX_RemoveAllEffectElems_190:
	movzx eax, word [edi+0x14]
	lea edx, [eax*4]
	add edx, [ecx+0x170]
	mov eax, [edi+0x4]
	test eax, 0x10000000
	jnz FX_RemoveAllEffectElems_200
	mov eax, [edx+0x4]
	mov eax, [edx+0x4]
	sub eax, 0x20000
	mov [edx+0x4], eax
	mov [esp+0x4], edx
	mov [esp], ecx
	call FX_DelRefToEffect
FX_RemoveAllEffectElems_200:
	mov eax, [ebp-0x1c]
	mov byte [eax+0x9dd], 0x1
	mov edx, [ebp-0x20]
	jmp FX_RemoveAllEffectElems_210
	nop


;FX_FreeElem(FxSystem*, unsigned short, FxEffect*, unsigned int)
FX_FreeElem:
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
	jnz FX_FreeElem_10
	mov eax, [ebp+0x10]
	cmp dx, [eax+0xe]
	jz FX_FreeElem_20
FX_FreeElem_10:
	movzx ecx, word [ebx+0x4]
	cmp cx, 0xffff
	jz FX_FreeElem_30
	movzx eax, cx
	shl eax, 0x2
	add eax, [esi+0x174]
	movzx edx, word [ebx+0x6]
	mov [eax+0x6], dx
FX_FreeElem_30:
	movzx eax, word [ebx+0x6]
	cmp ax, 0xffff
	jz FX_FreeElem_40
	movzx eax, ax
	shl eax, 0x2
	add eax, [esi+0x174]
	mov [eax+0x4], cx
FX_FreeElem_90:
	mov edx, [ebp+0x10]
	mov eax, [edx]
	movzx edx, byte [ebx]
	lea ecx, [edx*4]
	shl edx, 0x8
	sub edx, ecx
	add edx, [eax+0x1c]
	cmp byte [edx+0xb0], 0x5
	jz FX_FreeElem_50
FX_FreeElem_80:
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
	jz FX_FreeElem_60
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
FX_FreeElem_60:
	movzx eax, word [ecx+0x14]
	lea edx, [eax*4]
	add edx, [esi+0x170]
	mov eax, [ecx+0x4]
	test eax, 0x10000000
	jz FX_FreeElem_70
FX_FreeElem_100:
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
FX_FreeElem_50:
	test byte [edx+0x3], 0x8
	jz FX_FreeElem_80
	mov eax, [ebx+0x18]
	test eax, eax
	jz FX_FreeElem_80
	mov dword [esp], 0xb
	call Sys_EnterCriticalSection
	mov eax, [ebx+0x18]
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call Phys_ObjDestroy
	mov dword [esp], 0xb
	call Sys_LeaveCriticalSection
	jmp FX_FreeElem_80
FX_FreeElem_40:
	mov eax, [ebp+0x10]
	mov [eax+edi*2+0x8], cx
	jmp FX_FreeElem_90
FX_FreeElem_20:
	mov edx, eax
	movzx eax, word [ebx+0x4]
	mov [edx+0xe], ax
	jmp FX_FreeElem_10
FX_FreeElem_70:
	mov eax, [edx+0x4]
	mov eax, [edx+0x4]
	sub eax, 0x20000
	mov [edx+0x4], eax
	mov [esp+0x4], edx
	mov [esp], esi
	call FX_DelRefToEffect
	jmp FX_FreeElem_100
	nop


;FX_GetSystem(int)
FX_GetSystem:
	push ebp
	mov ebp, esp
	mov eax, fx_systemPool
	pop ebp
	ret


;FX_SpawnElem(FxSystem*, FxEffect*, int, FxSpatialFrame const*, int, float, int)
FX_SpawnElem:
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
	jz FX_SpawnElem_10
	mov ebx, [ebp+0x14]
	add ebx, 0x10
	mov ecx, [ebp+0x8]
	add ecx, 0xb0
	movss xmm3, dword [edi+0x10]
	pxor xmm4, xmm4
	ucomiss xmm3, xmm4
	jp FX_SpawnElem_20
	jnz FX_SpawnElem_20
FX_SpawnElem_220:
	test byte [edi], 0x4
	jnz FX_SpawnElem_30
FX_SpawnElem_10:
	mov edx, [ebp+0x18]
	add edx, [edi+0x28]
	mov [ebp-0xd0], edx
	mov ecx, [edi+0x2c]
	mov [ebp-0xdc], ecx
	test ecx, ecx
	jz FX_SpawnElem_40
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
FX_SpawnElem_190:
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
	jz FX_SpawnElem_50
	cmp al, 0x9
	jz FX_SpawnElem_60
	cmp al, 0x8
	jz FX_SpawnElem_70
	mov eax, [edi+0xd8]
	test eax, eax
	jz FX_SpawnElem_80
FX_SpawnElem_230:
	mov eax, [ebp+0x8]
FX_SpawnElem_240:
	mov edx, [eax+0x174]
	mov ecx, eax
	mov eax, [eax+0x184]
	cmp eax, 0xffffffff
	jz FX_SpawnElem_90
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
	jz FX_SpawnElem_90
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
	jz FX_SpawnElem_100
	cmp ebx, 0xc0
	jz FX_SpawnElem_110
FX_SpawnElem_250:
	lea eax, [ebp-0x84]
	mov [esp+0x4], eax
	mov eax, [ebp+0x14]
	mov [esp], eax
	call UnitQuatToAxis
	mov edx, [ebp-0xe0]
	mov [esp+0xc], edx
	mov ecx, [ebp-0xd4]
	mov [esp+0x8], ecx
	mov [esp+0x4], edi
	mov eax, [ebp+0x14]
	mov [esp], eax
	call FX_GetSpawnOrigin
	mov edx, [ebp-0xe0]
	mov [esp+0xc], edx
	mov ecx, [ebp-0xd4]
	mov [esp+0x8], ecx
	mov [esp+0x4], edi
	mov eax, [ebp+0x14]
	mov [esp], eax
	call FX_OffsetSpawnOrigin
	cmp ebx, 0x80
	jz FX_SpawnElem_120
	cmp ebx, 0x40
	jz FX_SpawnElem_120
FX_SpawnElem_330:
	mov eax, [ebp-0xc0]
	mov dword [eax+0xc], 0x0
	mov dword [eax+0x10], 0x0
	mov dword [eax+0x14], 0x0
	cmp byte [edi+0xb0], 0x3
	jz FX_SpawnElem_130
FX_SpawnElem_390:
	mov edx, [ebp-0xc0]
	mov word [edx+0x6], 0xffff
	movzx eax, byte [edi+0xb0]
	cmp al, 0x7
	jz FX_SpawnElem_140
	cmp al, 0x3
	ja FX_SpawnElem_150
	mov dword [ebp-0xcc], 0x0
	mov edx, [ebp-0xcc]
FX_SpawnElem_340:
	mov ecx, [ebp+0xc]
	movzx eax, word [ecx+edx*2+0x8]
	mov ebx, [ebp-0xc0]
	mov [ebx+0x4], ax
	mov eax, ebx
	mov edx, [ebp+0x8]
	sub eax, [edx+0x174]
	js FX_SpawnElem_160
FX_SpawnElem_460:
	sar eax, 0x2
	movzx edx, ax
	mov ecx, [ebp-0xcc]
	mov ebx, [ebp+0xc]
	mov [ebx+ecx*2+0x8], dx
	mov ecx, [ebp-0xc0]
	movzx eax, word [ecx+0x4]
	cmp ax, 0xffff
	jz FX_SpawnElem_170
	movzx eax, ax
	shl eax, 0x2
	mov ebx, [ebp+0x8]
	add eax, [ebx+0x174]
	mov [eax+0x6], dx
FX_SpawnElem_170:
	cmp byte [edi+0xb0], 0x5
	jz FX_SpawnElem_180
FX_SpawnElem_210:
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_SpawnElem_40:
	mov edx, [ebp+0xc]
	movzx esi, word [edx+0x12]
	jmp FX_SpawnElem_190
FX_SpawnElem_60:
	mov edx, [ebp+0xc]
	mov eax, [edx+0x18]
	and eax, cg_entitiesArray+0x77a0
	cmp eax, cg_entitiesArray+0x77a0
	jz FX_SpawnElem_200
FX_SpawnElem_260:
	mov edx, 0x3ff
FX_SpawnElem_270:
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
	call FX_CreateImpactMark
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_SpawnElem_20:
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
	ja FX_SpawnElem_210
	ucomiss xmm0, xmm3
	ja FX_SpawnElem_210
	jmp FX_SpawnElem_220
FX_SpawnElem_30:
	mov eax, [edi+0x24]
	mov edx, [ecx+0x94]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov [esp+0x4], edx
	mov [esp], ecx
	call FX_CullSphere
	test al, al
	jnz FX_SpawnElem_210
	jmp FX_SpawnElem_10
FX_SpawnElem_80:
	mov eax, [edi+0xdc]
	test eax, eax
	jnz FX_SpawnElem_230
	mov eax, [edi+0xe0]
	test eax, eax
	jnz FX_SpawnElem_230
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
	jle FX_SpawnElem_210
	mov eax, ebx
	jmp FX_SpawnElem_240
FX_SpawnElem_100:
	mov ecx, [ebp+0xc]
	add ecx, 0x28
	mov [ebp+0x14], ecx
	jmp FX_SpawnElem_250
FX_SpawnElem_200:
	movzx edx, word [edx+0x18]
	mov eax, edx
	and ax, 0xfff
	cmp ax, 0xfff
	jz FX_SpawnElem_260
	and edx, 0xfff
	jmp FX_SpawnElem_270
FX_SpawnElem_90:
	mov dword [esp], 0x21
	call R_WarnOncePerFrame
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_SpawnElem_50:
	lea edx, [ebp-0x3c]
	mov [esp+0xc], edx
	mov [esp+0x8], ecx
	mov [esp+0x4], edi
	mov ecx, [ebp+0x14]
	mov [esp], ecx
	call FX_GetSpawnOrigin
	lea ebx, [ebp-0x3c]
	mov [esp+0xc], ebx
	mov eax, [ebp-0xd4]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov edx, [ebp+0x14]
	mov [esp], edx
	call FX_OffsetSpawnOrigin
	movzx edx, byte [edi+0xb1]
	cmp dl, 0x1
	jz FX_SpawnElem_280
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
FX_SpawnElem_480:
	lea ebx, [ebp-0x60]
	mov [esp+0x4], ebx
	mov eax, [ebp+0x14]
	mov [esp], eax
	call UnitQuatToAxis
	test byte [edi], 0x8
	jnz FX_SpawnElem_290
FX_SpawnElem_470:
	movzx esi, byte [edi+0xf8]
	cmp esi, 0xfe
	jle FX_SpawnElem_300
	mov esi, 0xff
FX_SpawnElem_430:
	mov ecx, [ebp+0xc]
	mov edx, [ecx+0x18]
	mov eax, edx
	and eax, cg_entitiesArray+0x77a0
	cmp eax, cg_entitiesArray+0x77a0
	jz FX_SpawnElem_310
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
FX_SpawnElem_450:
	mov [esp+0x10], ebx
	lea eax, [ebp-0x3c]
	mov [esp+0xc], eax
	mov edx, [ebp-0xd0]
	mov [esp+0x8], edx
	mov ecx, [ebp-0xc8]
	mov [esp+0x4], ecx
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call FX_SpawnEffect
	mov ebx, eax
	test eax, eax
	jz FX_SpawnElem_210
	mov eax, [eax+0x4]
	sub ax, 0x1
	jz FX_SpawnElem_320
FX_SpawnElem_500:
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
FX_SpawnElem_120:
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
	jmp FX_SpawnElem_330
FX_SpawnElem_150:
	cmp al, 0x4
	setz al
	movzx eax, al
	add eax, 0x1
	mov [ebp-0xcc], eax
	mov edx, eax
	jmp FX_SpawnElem_340
FX_SpawnElem_180:
	mov eax, [ebp-0xc0]
	mov word [eax+0x24], 0x0
	test byte [edi+0x3], 0x8
	jz FX_SpawnElem_210
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
	call FX_GetOrientation
	lea ebx, [ebp-0x3c]
	mov [esp+0x8], ebx
	mov eax, [ebp-0xe0]
	mov [esp+0x4], eax
	mov [esp], esi
	call FX_OrientationPosToWorldPos
	lea ebx, [ebp-0x60]
	mov [esp+0x10], ebx
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], esi
	mov edx, [ebp-0xd4]
	mov [esp+0x4], edx
	mov [esp], edi
	call FX_GetElemAxis
	lea ecx, [ebp-0x84]
	mov [esp+0x4], ecx
	mov [esp], ebx
	call AxisToQuat
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
	call FX_GetVelocityAtTime
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
	call Sys_EnterCriticalSection
	movzx eax, byte [edi+0xb1]
	cmp al, 0x1
	jz FX_SpawnElem_350
	movzx eax, al
	mov ecx, [ebp-0xd4]
	mov ebx, [ebp-0xbc]
	movzx edx, word [ebx+ecx*4+0x54]
	imul eax, edx
	sar eax, 0x10
	shl eax, 0x2
	add eax, [edi+0xbc]
	mov ebx, [eax]
FX_SpawnElem_540:
	mov eax, [ebx+0xd4]
	mov [esp+0x10], eax
	lea edi, [ebp-0x24]
	mov [esp+0xc], edi
	lea eax, [ebp-0x84]
	mov [esp+0x8], eax
	lea edx, [ebp-0x3c]
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Phys_ObjCreate
	mov ecx, [ebp-0xc0]
	mov [ecx+0x18], eax
	test eax, eax
	jnz FX_SpawnElem_360
FX_SpawnElem_530:
	mov dword [esp], 0xb
	call Sys_LeaveCriticalSection
	mov edi, [ebp-0xc0]
	mov eax, [edi+0x18]
	test eax, eax
	jnz FX_SpawnElem_210
	mov edx, [ebp+0x8]
	mov eax, [edx+0x174]
	mov ecx, [ebp-0xcc]
	mov [esp+0xc], ecx
	mov ebx, [ebp+0xc]
	mov [esp+0x8], ebx
	sub edi, eax
	mov eax, edi
	js FX_SpawnElem_370
	mov edi, edx
FX_SpawnElem_560:
	sar eax, 0x2
	movzx eax, ax
	mov [esp+0x4], eax
	mov [esp], edi
	call FX_FreeElem
	jmp FX_SpawnElem_210
FX_SpawnElem_140:
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x9c0]
	add eax, 0x1
	mov [ecx+0x9c0], eax
	mov eax, edx
	sub eax, [ecx+0x174]
	js FX_SpawnElem_380
FX_SpawnElem_520:
	sar eax, 0x2
	mov ebx, [ebp+0x8]
	mov [ebx+0x9c6], ax
	jmp FX_SpawnElem_210
FX_SpawnElem_130:
	mov eax, [edi+0xf4]
	cvtsi2ss xmm0, dword [eax+0x4]
	movss xmm1, dword [ebp+0x1c]
	divss xmm1, xmm0
	mov eax, [ebp-0xc0]
	movss [eax+0x24], xmm1
	jmp FX_SpawnElem_390
FX_SpawnElem_70:
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
	call FX_GetSpawnOrigin
	lea ebx, [ebp-0x3c]
	mov [esp+0xc], ebx
	mov eax, [ebp-0xd4]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov edx, [ebp+0x14]
	mov [esp], edx
	call FX_OffsetSpawnOrigin
	movzx edx, byte [edi+0xb1]
	cmp dl, 0x1
	jz FX_SpawnElem_400
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
FX_SpawnElem_510:
	mov [esp], ebx
	call Com_FindSoundAlias
	mov esi, eax
	test eax, eax
	jz FX_SpawnElem_410
	call SND_AnyActiveListeners
	test al, al
	jz FX_SpawnElem_210
	call Sys_IsMainThread
	test al, al
	jz FX_SpawnElem_420
	mov [esp+0xc], esi
	lea ebx, [ebp-0x3c]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x3fe
	mov edi, [ebp-0xc4]
	mov [esp], edi
	call CG_PlaySoundAlias
	jmp FX_SpawnElem_210
FX_SpawnElem_300:
	test esi, esi
	mov eax, 0x0
	cmovle esi, eax
	jmp FX_SpawnElem_430
FX_SpawnElem_310:
	movzx edx, word [ecx+0x18]
	mov eax, edx
	and ax, 0xfff
	cmp ax, 0xfff
	jz FX_SpawnElem_440
	and edx, 0xfff
	movzx eax, word [ecx+0x14]
	mov [esp+0x24], edx
	mov [esp+0x20], eax
	mov [esp+0x1c], esi
	mov dword [esp+0x18], 0x7ff
	mov dword [esp+0x14], 0xfff
	jmp FX_SpawnElem_450
FX_SpawnElem_110:
	xor eax, eax
	mov edx, [ebp-0xc0]
	mov [edx+0x18], eax
	mov [edx+0x1c], eax
	mov [edx+0x20], eax
	jmp FX_SpawnElem_330
FX_SpawnElem_440:
	movzx eax, word [ecx+0x14]
	mov dword [esp+0x24], 0x3ff
	mov [esp+0x20], eax
	mov [esp+0x1c], esi
	mov dword [esp+0x18], 0x7ff
	mov dword [esp+0x14], 0xfff
	jmp FX_SpawnElem_450
FX_SpawnElem_160:
	add eax, 0x3
	jmp FX_SpawnElem_460
FX_SpawnElem_290:
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
	call RotatePointAroundVector
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
	jmp FX_SpawnElem_470
FX_SpawnElem_280:
	mov ecx, [edi+0xbc]
	mov [ebp-0xc8], ecx
	jmp FX_SpawnElem_480
FX_SpawnElem_320:
	movzx eax, word [ebx+0x14]
	lea edx, [eax*4]
	mov edi, [ebp+0x8]
	add edx, [edi+0x170]
	mov eax, [ebx+0x4]
	test eax, 0x10000000
	jz FX_SpawnElem_490
	mov eax, edi
FX_SpawnElem_550:
	mov byte [eax+0x9dd], 0x1
	jmp FX_SpawnElem_500
FX_SpawnElem_400:
	mov ebx, [edi+0xbc]
	jmp FX_SpawnElem_510
FX_SpawnElem_380:
	add eax, 0x3
	jmp FX_SpawnElem_520
FX_SpawnElem_410:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_failed_to_find_s
	mov dword [esp], 0x15
	call Com_PrintWarning
	jmp FX_SpawnElem_210
FX_SpawnElem_420:
	mov [esp+0x8], esi
	lea eax, [ebp-0x3c]
	mov [esp+0x4], eax
	mov edx, [ebp-0xc4]
	mov [esp], edx
	call CG_AddFXSoundAlias
	jmp FX_SpawnElem_210
FX_SpawnElem_360:
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call Phys_ObjSetCollisionFromXModel
	mov ebx, [ebp-0xc0]
	mov edx, [ebx+0x18]
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov [esp], edx
	call Phys_ObjSetAngularVelocity
	jmp FX_SpawnElem_530
FX_SpawnElem_350:
	mov ebx, [edi+0xbc]
	jmp FX_SpawnElem_540
FX_SpawnElem_490:
	mov eax, [edx+0x4]
	mov eax, [edx+0x4]
	sub eax, 0x20000
	mov [edx+0x4], eax
	mov [esp+0x4], edx
	mov [esp], edi
	call FX_DelRefToEffect
	mov eax, [ebp+0x8]
	jmp FX_SpawnElem_550
FX_SpawnElem_370:
	add eax, 0x3
	mov edi, [ebp+0x8]
	jmp FX_SpawnElem_560
	nop


;FX_InitSystem(int)
FX_InitSystem:
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
	call FX_RegisterDvars
	call FX_InitRandom
	xor edx, edx
	mov ecx, fx_systemPool
	jmp FX_InitSystem_10
FX_InitSystem_30:
	sar eax, 0x2
	mov [ecx+0x1bc], ax
	sub edx, 0xffffff80
	add ecx, 0x2
	cmp edx, 0x20000
	jz FX_InitSystem_20
FX_InitSystem_10:
	mov eax, edx
	test edx, edx
	jns FX_InitSystem_30
	lea eax, [edx+0x3]
	sar eax, 0x2
	mov [ecx+0x1bc], ax
	sub edx, 0xffffff80
	add ecx, 0x2
	cmp edx, 0x20000
	jnz FX_InitSystem_10
FX_InitSystem_20:
	mov dword [fx_systemPool+0x1b0], 0x0
	mov dword [fx_systemPool+0x1b4], 0x0
	mov dword [fx_systemPool+0x1b8], 0x0
	mov dword [fx_systemPool+0x9cc], 0x0
	mov dword [fx_systemPool+0x190], 0x0
	mov ecx, [fx_systemPool+0x174]
	mov dword [fx_systemPool+0x184], 0x0
	mov eax, ecx
	xor edx, edx
FX_InitSystem_40:
	add edx, 0x1
	mov [eax], edx
	add eax, 0x28
	cmp edx, 0x7ff
	jnz FX_InitSystem_40
	mov dword [ecx+0x13fd8], 0xffffffff
	mov dword [fx_systemPool+0x194], 0x0
	mov ecx, [fx_systemPool+0x17c]
	mov dword [fx_systemPool+0x188], 0x0
	mov eax, ecx
	xor dx, dx
FX_InitSystem_50:
	add edx, 0x1
	mov [eax], edx
	add eax, 0x20
	cmp edx, 0x7ff
	jnz FX_InitSystem_50
	mov dword [ecx+0xffe0], 0xffffffff
	mov dword [fx_systemPool+0x198], 0x0
	mov ecx, [fx_systemPool+0x178]
	mov dword [fx_systemPool+0x18c], 0x0
	mov eax, ecx
	xor dx, dx
FX_InitSystem_60:
	add edx, 0x1
	mov [eax], edx
	add eax, 0x8
	cmp edx, 0x7f
	jnz FX_InitSystem_60
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
	call FX_InitMarksSystem
	mov [fx_systemPool+0x9df], bl
	mov byte [fx_systemPool+0x9dc], 0x1
	mov [fx_serverVisClient], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;FX_KillEffect(FxSystem*, FxEffect*)
FX_KillEffect:
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
	call FX_RemoveAllEffectElems
	mov eax, [esi+0x4]
	test eax, 0x7fe0000
	jz FX_KillEffect_10
	mov eax, esi
	sub eax, [edi+0x170]
	js FX_KillEffect_20
	shr eax, 0x2
	mov [ebp-0x28], ax
	mov ebx, [edi+0x1b0]
	mov eax, [esi+0x4]
	test eax, 0x7fe0000
	jnz FX_KillEffect_30
FX_KillEffect_70:
	cmp byte [edi+0x9dd], 0x0
	jnz FX_KillEffect_40
FX_KillEffect_10:
	mov eax, [esi+0x4]
	sub ax, 0x1
	jz FX_KillEffect_50
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
FX_KillEffect_80:
	mov eax, [edx+0x4]
	test ax, ax
	jz FX_KillEffect_60
	mov eax, edi
	call FX_RemoveAllEffectElems
FX_KillEffect_60:
	add ebx, 0x1
	mov eax, [esi+0x4]
	test eax, 0x7fe0000
	jz FX_KillEffect_70
FX_KillEffect_30:
	mov eax, ebx
	and eax, 0x3ff
	movzx eax, word [edi+eax*2+0x1bc]
	cmp [ebp-0x28], ax
	jz FX_KillEffect_60
	movzx edx, ax
	mov eax, [edi+0x170]
	lea edx, [eax+edx*4]
	movzx eax, word [ebp-0x28]
	cmp ax, [edx+0x14]
	jnz FX_KillEffect_60
	jmp FX_KillEffect_80
FX_KillEffect_50:
	movzx eax, word [esi+0x14]
	mov edx, [edi+0x170]
	lea edx, [edx+eax*4]
	mov eax, [esi+0x4]
	test eax, 0x10000000
	jz FX_KillEffect_90
FX_KillEffect_100:
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
FX_KillEffect_40:
	mov [esp], edi
	call FX_RunGarbageCollection
	jmp FX_KillEffect_10
FX_KillEffect_20:
	add eax, 0x3
	shr eax, 0x2
	mov [ebp-0x28], ax
	mov ebx, [edi+0x1b0]
	mov eax, [esi+0x4]
	test eax, 0x7fe0000
	jz FX_KillEffect_70
	jmp FX_KillEffect_30
FX_KillEffect_90:
	mov eax, [edx+0x4]
	mov eax, [edx+0x4]
	sub eax, 0x20000
	mov [edx+0x4], eax
	mov [esp+0x4], edx
	mov [esp], edi
	call FX_DelRefToEffect
	jmp FX_KillEffect_100
	nop


;FX_StopEffect(FxSystem*, FxEffect*)
FX_StopEffect:
FX_StopEffect_120:
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
	jz FX_StopEffect_10
	mov eax, [esi+0x4]
	add eax, 0x1
	mov [esi+0x4], eax
	mov eax, [esi+0x4]
	test eax, 0x10000
	jz FX_StopEffect_20
	mov eax, [esi+0x4]
	and eax, 0xfffeffff
	mov [esi+0x4], eax
	mov eax, [esi+0x4]
	sub ax, 0x1
	jz FX_StopEffect_30
FX_StopEffect_160:
	mov eax, [esi+0x4]
	sub eax, 0x1
	mov [esi+0x4], eax
	mov eax, [esi+0x4]
FX_StopEffect_20:
	mov eax, [esi+0x4]
	test eax, 0x7fe0000
	jz FX_StopEffect_40
	mov eax, esi
	sub eax, [edi+0x170]
	js FX_StopEffect_50
FX_StopEffect_170:
	shr eax, 0x2
	mov [ebp-0x28], ax
	mov ebx, [edi+0x1b0]
	mov eax, [edi+0x1b4]
	cmp eax, ebx
	jz FX_StopEffect_60
FX_StopEffect_90:
	mov eax, ebx
	and eax, 0x3ff
	movzx eax, word [edi+eax*2+0x1bc]
	cmp [ebp-0x28], ax
	jz FX_StopEffect_70
	movzx edx, ax
	mov eax, [edi+0x170]
	lea eax, [eax+edx*4]
	movzx edx, word [ebp-0x28]
	cmp dx, [eax+0x14]
	jz FX_StopEffect_80
FX_StopEffect_70:
	add ebx, 0x1
	mov eax, [edi+0x1b4]
	cmp eax, ebx
	jnz FX_StopEffect_90
FX_StopEffect_60:
	cmp byte [edi+0x9dd], 0x0
	jnz FX_StopEffect_100
FX_StopEffect_40:
	mov eax, [esi+0x4]
	sub ax, 0x1
	jz FX_StopEffect_110
FX_StopEffect_140:
	mov eax, [esi+0x4]
	sub eax, 0x1
	mov [esi+0x4], eax
	mov eax, [esi+0x4]
FX_StopEffect_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_StopEffect_80:
	mov [esp+0x4], eax
	mov [esp], edi
	call FX_StopEffect_120
	jmp FX_StopEffect_70
FX_StopEffect_110:
	movzx eax, word [esi+0x14]
	mov edx, [edi+0x170]
	lea edx, [edx+eax*4]
	mov eax, [esi+0x4]
	test eax, 0x10000000
	jz FX_StopEffect_130
FX_StopEffect_180:
	mov byte [edi+0x9dd], 0x1
	jmp FX_StopEffect_140
FX_StopEffect_100:
	mov [esp], edi
	call FX_RunGarbageCollection
	mov eax, [esi+0x4]
	sub ax, 0x1
	jnz FX_StopEffect_140
	jmp FX_StopEffect_110
FX_StopEffect_30:
	movzx eax, word [esi+0x14]
	mov edx, [edi+0x170]
	lea edx, [edx+eax*4]
	mov eax, [esi+0x4]
	test eax, 0x10000000
	jz FX_StopEffect_150
FX_StopEffect_190:
	mov byte [edi+0x9dd], 0x1
	jmp FX_StopEffect_160
FX_StopEffect_50:
	add eax, 0x3
	jmp FX_StopEffect_170
FX_StopEffect_130:
	mov eax, [edx+0x4]
	mov eax, [edx+0x4]
	sub eax, 0x20000
	mov [edx+0x4], eax
	mov [esp+0x4], edx
	mov [esp], edi
	call FX_DelRefToEffect
	jmp FX_StopEffect_180
FX_StopEffect_150:
	mov eax, [edx+0x4]
	mov eax, [edx+0x4]
	sub eax, 0x20000
	mov [edx+0x4], eax
	mov [esp+0x4], edx
	mov [esp], edi
	call FX_DelRefToEffect
	jmp FX_StopEffect_190
	nop


;FX_SpawnEffect(FxSystem*, FxEffectDef const*, int, float const*, float const (*) [3], int, int, int, unsigned short, unsigned int)
FX_SpawnEffect:
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
	jnz FX_SpawnEffect_10
FX_SpawnEffect_310:
	mov edx, [ebp+0xc]
	mov eax, [edx+0x10]
	add eax, [edx+0x18]
	mov esi, eax
	add esi, [edx+0x14]
	jz FX_SpawnEffect_20
	mov ebx, [edx+0x1c]
	cmp byte [ebx+0xb0], 0x7
	jz FX_SpawnEffect_30
	xor ecx, ecx
	mov edx, 0xfc
FX_SpawnEffect_40:
	add ecx, 0x1
	cmp esi, ecx
	jz FX_SpawnEffect_20
	movzx eax, byte [edx+ebx+0xb0]
	add edx, 0xfc
	cmp al, 0x7
	jnz FX_SpawnEffect_40
FX_SpawnEffect_30:
	mov byte [ebp-0x29], 0x1
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x9bc]
	test eax, eax
	jg FX_SpawnEffect_50
	mov edx, ecx
	mov eax, [edx+0x1b8]
	mov edx, [edx+0x1b0]
	sub eax, edx
	cmp eax, 0x400
	jz FX_SpawnEffect_60
FX_SpawnEffect_220:
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
FX_SpawnEffect_70:
	mov word [edi+eax*2+0x8], 0xffff
	add eax, 0x1
	cmp eax, 0x3
	jnz FX_SpawnEffect_70
	mov word [edi+0xe], 0xffff
	mov ecx, [ebp+0xc]
	test byte [ecx+0x4], 0x1
	jnz FX_SpawnEffect_80
	mov word [edi+0x16], 0xff
FX_SpawnEffect_250:
	mov edx, [ebp+0x10]
	mov [edi+0x20], edx
	mov [edi+0x24], edx
	mov dword [edi+0x7c], 0x0
	mov eax, [ebp+0xc]
	call FX_EffectAffectsGameplay
	test al, al
	jz FX_SpawnEffect_90
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
FX_SpawnEffect_240:
	mov word [edi+0x10], 0xffff
	mov edx, [edi]
	mov eax, [edx+0x10]
	add eax, [edx+0x18]
	add eax, [edx+0x14]
	mov [ebp-0x30], eax
	jz FX_SpawnEffect_100
	xor ebx, ebx
	xor esi, esi
	jmp FX_SpawnEffect_110
FX_SpawnEffect_120:
	add ebx, 0x1
	add esi, 0xfc
	cmp [ebp-0x30], ebx
	jz FX_SpawnEffect_100
FX_SpawnEffect_140:
	mov edx, [edi]
FX_SpawnEffect_110:
	mov eax, [edx+0x1c]
	add eax, esi
	cmp byte [eax+0xb0], 0x3
	jnz FX_SpawnEffect_120
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+0x178]
	mov [ebp-0x4c], ecx
	mov edx, [ebp+0x8]
	mov eax, [edx+0x18c]
	cmp eax, 0xffffffff
	jz FX_SpawnEffect_100
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
	jz FX_SpawnEffect_100
	movzx ecx, word [edi+0x10]
	mov [ebp-0x2c], cx
	mov eax, edx
	sub eax, [ebp-0x4c]
	js FX_SpawnEffect_130
FX_SpawnEffect_280:
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
	jnz FX_SpawnEffect_140
FX_SpawnEffect_100:
	cmp byte [ebp-0x29], 0x0
	jz FX_SpawnEffect_150
	mov edx, [edi]
	mov eax, [edx+0x10]
	add eax, [edx+0x18]
	mov esi, eax
	add esi, [edx+0x14]
	jz FX_SpawnEffect_150
	xor ebx, ebx
	xor ecx, ecx
	jmp FX_SpawnEffect_160
FX_SpawnEffect_170:
	add ebx, 0x1
	add ecx, 0xfc
	cmp esi, ebx
	jz FX_SpawnEffect_150
FX_SpawnEffect_190:
	mov edx, [edi]
FX_SpawnEffect_160:
	mov eax, [edx+0x1c]
	add eax, ecx
	cmp byte [eax+0xb0], 0x7
	jnz FX_SpawnEffect_170
	mov edx, [ebp+0x8]
	mov eax, [edx+0x9bc]
	add eax, 0x1
	mov [edx+0x9bc], eax
	mov eax, edi
	sub eax, [edx+0x170]
	js FX_SpawnEffect_180
FX_SpawnEffect_270:
	sar eax, 0x2
	mov edx, [ebp+0x8]
	mov [edx+0x9c4], ax
	add ebx, 0x1
	add ecx, 0xfc
	cmp esi, ebx
	jnz FX_SpawnEffect_190
FX_SpawnEffect_150:
	cmp word [ebp-0x38], 0xffff
	jz FX_SpawnEffect_200
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
FX_SpawnEffect_260:
	and dword [ebp+0x20], 0x7ff
	shl dword [ebp+0x20], 0xd
	mov eax, [edi+0x18]
	and eax, 0xff001fff
	or eax, [ebp+0x20]
	mov [edi+0x18], eax
	and byte [edi+0x19], 0xef
	cmp dword [ebp+0x2c], 0x3ff
	jz FX_SpawnEffect_210
	movzx edx, word [ebp+0x2c]
	and dx, 0xfff
	movzx eax, word [edi+0x18]
	and ax, 0xf000
	or eax, edx
	mov [edi+0x18], ax
FX_SpawnEffect_290:
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
	call AxisToQuat
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
	call FX_StartNewEffect
FX_SpawnEffect_350:
	mov eax, edi
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_SpawnEffect_20:
	mov byte [ebp-0x29], 0x0
	mov edx, [ebp+0x8]
	mov eax, [edx+0x1b8]
	mov edx, [edx+0x1b0]
	sub eax, edx
	cmp eax, 0x400
	jnz FX_SpawnEffect_220
FX_SpawnEffect_60:
	xor edi, edi
FX_SpawnEffect_330:
	mov eax, edi
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_SpawnEffect_90:
	call ms_rand
	mov ecx, eax
	shl ecx, 0x5
	mov edx, eax
	shl edx, 0x9
	sub edx, ecx
	sub edx, eax
	mov eax, edx
	js FX_SpawnEffect_230
FX_SpawnEffect_340:
	sar eax, 0xf
	mov [edi+0x12], ax
	jmp FX_SpawnEffect_240
FX_SpawnEffect_80:
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov eax, [ebp+0x14]
	mov [esp], eax
	call R_GetAverageLightingAtPoint
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
	jmp FX_SpawnEffect_250
FX_SpawnEffect_200:
	movzx ecx, word [ebp-0x36]
	mov [edi+0x14], cx
	mov eax, [edi+0x4]
	or eax, 0x10000000
	mov [edi+0x4], eax
	jmp FX_SpawnEffect_260
FX_SpawnEffect_180:
	add eax, 0x3
	jmp FX_SpawnEffect_270
FX_SpawnEffect_130:
	add eax, 0x3
	jmp FX_SpawnEffect_280
FX_SpawnEffect_210:
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
	call FX_GetBoltTemporalBits
	and al, 0x1
	shl al, 0x4
	movzx edx, byte [edi+0x19]
	and dl, 0xef
	or dl, al
	mov [edi+0x19], dl
	jmp FX_SpawnEffect_290
FX_SpawnEffect_10:
	mov edi, [ebp+0x8]
	add edi, 0xb0
	mov edx, [ebp+0xc]
	mov ebx, [edx+0x14]
	add ebx, [edx+0x10]
	mov eax, [edx+0x1c]
	test ebx, ebx
	jle FX_SpawnEffect_60
	mov esi, eax
	mov dword [ebp-0x34], 0x0
FX_SpawnEffect_320:
	movss xmm3, dword [esi+0x10]
	pxor xmm0, xmm0
	ucomiss xmm3, xmm0
	jp FX_SpawnEffect_300
	jnz FX_SpawnEffect_300
FX_SpawnEffect_370:
	test byte [esi], 0x4
	jz FX_SpawnEffect_310
	mov eax, [esi+0x24]
	mov edx, [edi+0x94]
	mov [esp+0xc], eax
	mov eax, [ebp+0x14]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], edi
	call FX_CullSphere
	test al, al
	jz FX_SpawnEffect_310
FX_SpawnEffect_360:
	add dword [ebp-0x34], 0x1
	add esi, 0xfc
	cmp ebx, [ebp-0x34]
	jnz FX_SpawnEffect_320
	xor edi, edi
	jmp FX_SpawnEffect_330
FX_SpawnEffect_230:
	add eax, 0x7fff
	jmp FX_SpawnEffect_340
FX_SpawnEffect_50:
	mov dword [esp], 0x20
	call R_WarnOncePerFrame
	xor edi, edi
	jmp FX_SpawnEffect_350
FX_SpawnEffect_300:
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
	ja FX_SpawnEffect_360
	ucomiss xmm0, xmm3
	ja FX_SpawnEffect_360
	jmp FX_SpawnEffect_370
	add [eax], al


;FX_FreeTrailElem(FxSystem*, unsigned short, FxEffect*, FxTrail*)
FX_FreeTrailElem:
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
	jz FX_FreeTrailElem_10
FX_FreeTrailElem_40:
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
	jz FX_FreeTrailElem_20
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
FX_FreeTrailElem_20:
	mov ecx, edx
	movzx eax, word [edx+0x14]
	lea edx, [eax*4]
	add edx, [esi+0x170]
	mov eax, [ecx+0x4]
	test eax, 0x10000000
	jz FX_FreeTrailElem_30
FX_FreeTrailElem_50:
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
FX_FreeTrailElem_10:
	mov word [ecx+0x4], 0xffff
	jmp FX_FreeTrailElem_40
FX_FreeTrailElem_30:
	mov eax, [edx+0x4]
	mov eax, [edx+0x4]
	sub eax, 0x20000
	mov [edx+0x4], eax
	mov [esp+0x4], edx
	mov [esp], esi
	call FX_DelRefToEffect
	jmp FX_FreeTrailElem_50


;FX_KillEffectDef(int, FxEffectDef const*)
FX_KillEffectDef:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0xc]
	mov ebx, [fx_systemPool+0x1b0]
	mov eax, [fx_systemPool+0x1b8]
	cmp ebx, eax
	jnz FX_KillEffectDef_10
	jmp FX_KillEffectDef_20
FX_KillEffectDef_30:
	add ebx, 0x1
	mov eax, [fx_systemPool+0x1b8]
	cmp eax, ebx
	jz FX_KillEffectDef_20
FX_KillEffectDef_10:
	mov eax, ebx
	and eax, 0x3ff
	movzx edx, word [eax+eax+fx_systemPool+0x1bc]
	mov eax, [fx_systemPool+0x170]
	lea edx, [eax+edx*4]
	cmp [edx], esi
	jnz FX_KillEffectDef_30
	mov eax, [edx+0x4]
	test ax, ax
	jz FX_KillEffectDef_30
	mov [esp+0x4], edx
	mov dword [esp], fx_systemPool
	call FX_KillEffect
	add ebx, 0x1
	mov eax, [fx_systemPool+0x1b8]
	cmp eax, ebx
	jnz FX_KillEffectDef_10
FX_KillEffectDef_20:
	cmp byte [fx_systemPool+0x9dd], 0x0
	jnz FX_KillEffectDef_40
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
FX_KillEffectDef_40:
	mov dword [ebp+0x8], fx_systemPool
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp FX_RunGarbageCollection
	nop


;FX_DelRefToEffect(FxSystem*, FxEffect*)
FX_DelRefToEffect:
FX_DelRefToEffect_260:
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
	jz FX_DelRefToEffect_10
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
FX_DelRefToEffect_10:
	movzx eax, word [esi+0x14]
	mov edx, [edi+0x170]
	lea ebx, [edx+eax*4]
	mov eax, [esi+0x4]
	test eax, 0x10000000
	jnz FX_DelRefToEffect_20
	mov eax, [ebx+0x4]
	mov eax, [ebx+0x4]
	sub eax, 0x20000
	mov [ebx+0x4], eax
	mov eax, [ebx+0x4]
	sub ax, 0x1
	jz FX_DelRefToEffect_30
FX_DelRefToEffect_60:
	mov eax, [ebx+0x4]
	sub eax, 0x1
	mov [ebx+0x4], eax
	mov eax, [ebx+0x4]
FX_DelRefToEffect_20:
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
FX_DelRefToEffect_30:
	movzx eax, word [ebx+0x14]
	mov edx, [edi+0x170]
	lea eax, [edx+eax*4]
	mov [ebp-0x34], eax
	mov eax, [ebx+0x4]
	test eax, 0x10000000
	jnz FX_DelRefToEffect_40
	mov edx, [ebp-0x34]
	mov eax, [edx+0x4]
	mov eax, [edx+0x4]
	sub eax, 0x20000
	mov [edx+0x4], eax
	mov eax, [edx+0x4]
	sub ax, 0x1
	jz FX_DelRefToEffect_50
FX_DelRefToEffect_90:
	mov edx, [ebp-0x34]
	mov eax, [edx+0x4]
	sub eax, 0x1
	mov [edx+0x4], eax
	mov eax, [edx+0x4]
FX_DelRefToEffect_40:
	mov byte [edi+0x9dd], 0x1
	jmp FX_DelRefToEffect_60
FX_DelRefToEffect_50:
	movzx eax, word [edx+0x14]
	mov edx, [edi+0x170]
	lea eax, [edx+eax*4]
	mov [ebp-0x30], eax
	mov ecx, [ebp-0x34]
	mov eax, [ecx+0x4]
	test eax, 0x10000000
	jnz FX_DelRefToEffect_70
	mov edx, [ebp-0x30]
	mov eax, [edx+0x4]
	mov eax, [edx+0x4]
	sub eax, 0x20000
	mov [edx+0x4], eax
	mov eax, [edx+0x4]
	sub ax, 0x1
	jz FX_DelRefToEffect_80
FX_DelRefToEffect_120:
	mov ecx, [ebp-0x30]
	mov eax, [ecx+0x4]
	sub eax, 0x1
	mov [ecx+0x4], eax
	mov eax, [ecx+0x4]
FX_DelRefToEffect_70:
	mov byte [edi+0x9dd], 0x1
	jmp FX_DelRefToEffect_90
FX_DelRefToEffect_80:
	movzx eax, word [edx+0x14]
	mov edx, [edi+0x170]
	lea eax, [edx+eax*4]
	mov [ebp-0x2c], eax
	mov ecx, [ebp-0x30]
	mov eax, [ecx+0x4]
	test eax, 0x10000000
	jnz FX_DelRefToEffect_100
	mov edx, [ebp-0x2c]
	mov eax, [edx+0x4]
	mov eax, [edx+0x4]
	sub eax, 0x20000
	mov [edx+0x4], eax
	mov eax, [edx+0x4]
	sub ax, 0x1
	jz FX_DelRefToEffect_110
FX_DelRefToEffect_150:
	mov edx, [ebp-0x2c]
	mov eax, [edx+0x4]
	sub eax, 0x1
	mov [edx+0x4], eax
	mov eax, [edx+0x4]
FX_DelRefToEffect_100:
	mov byte [edi+0x9dd], 0x1
	jmp FX_DelRefToEffect_120
FX_DelRefToEffect_110:
	movzx eax, word [edx+0x14]
	mov edx, [edi+0x170]
	lea eax, [edx+eax*4]
	mov [ebp-0x28], eax
	mov ecx, [ebp-0x2c]
	mov eax, [ecx+0x4]
	test eax, 0x10000000
	jnz FX_DelRefToEffect_130
	mov edx, [ebp-0x28]
	mov eax, [edx+0x4]
	mov eax, [edx+0x4]
	sub eax, 0x20000
	mov [edx+0x4], eax
	mov eax, [edx+0x4]
	sub ax, 0x1
	jz FX_DelRefToEffect_140
FX_DelRefToEffect_180:
	mov ecx, [ebp-0x28]
	mov eax, [ecx+0x4]
	sub eax, 0x1
	mov [ecx+0x4], eax
	mov eax, [ecx+0x4]
FX_DelRefToEffect_130:
	mov byte [edi+0x9dd], 0x1
	jmp FX_DelRefToEffect_150
FX_DelRefToEffect_140:
	movzx eax, word [edx+0x14]
	mov edx, [edi+0x170]
	lea eax, [edx+eax*4]
	mov [ebp-0x24], eax
	mov ecx, [ebp-0x28]
	mov eax, [ecx+0x4]
	test eax, 0x10000000
	jnz FX_DelRefToEffect_160
	mov edx, [ebp-0x24]
	mov eax, [edx+0x4]
	mov eax, [edx+0x4]
	sub eax, 0x20000
	mov [edx+0x4], eax
	mov eax, [edx+0x4]
	sub ax, 0x1
	jz FX_DelRefToEffect_170
FX_DelRefToEffect_210:
	mov edx, [ebp-0x24]
	mov eax, [edx+0x4]
	sub eax, 0x1
	mov [edx+0x4], eax
	mov eax, [edx+0x4]
FX_DelRefToEffect_160:
	mov byte [edi+0x9dd], 0x1
	jmp FX_DelRefToEffect_180
FX_DelRefToEffect_170:
	movzx eax, word [edx+0x14]
	mov edx, [edi+0x170]
	lea eax, [edx+eax*4]
	mov [ebp-0x20], eax
	mov ecx, [ebp-0x24]
	mov eax, [ecx+0x4]
	test eax, 0x10000000
	jnz FX_DelRefToEffect_190
	mov edx, [ebp-0x20]
	mov eax, [edx+0x4]
	mov eax, [edx+0x4]
	sub eax, 0x20000
	mov [edx+0x4], eax
	mov eax, [edx+0x4]
	sub ax, 0x1
	jz FX_DelRefToEffect_200
FX_DelRefToEffect_240:
	mov ecx, [ebp-0x20]
	mov eax, [ecx+0x4]
	sub eax, 0x1
	mov [ecx+0x4], eax
	mov eax, [ecx+0x4]
FX_DelRefToEffect_190:
	mov byte [edi+0x9dd], 0x1
	jmp FX_DelRefToEffect_210
FX_DelRefToEffect_200:
	movzx eax, word [edx+0x14]
	mov edx, [edi+0x170]
	lea eax, [edx+eax*4]
	mov [ebp-0x1c], eax
	mov ecx, [ebp-0x20]
	mov eax, [ecx+0x4]
	test eax, 0x10000000
	jnz FX_DelRefToEffect_220
	mov edx, [ebp-0x1c]
	mov eax, [edx+0x4]
	mov eax, [edx+0x4]
	sub eax, 0x20000
	mov [edx+0x4], eax
	mov eax, [edx+0x4]
	sub ax, 0x1
	jz FX_DelRefToEffect_230
FX_DelRefToEffect_270:
	mov edx, [ebp-0x1c]
	mov eax, [edx+0x4]
	sub eax, 0x1
	mov [edx+0x4], eax
	mov eax, [edx+0x4]
FX_DelRefToEffect_220:
	mov byte [edi+0x9dd], 0x1
	jmp FX_DelRefToEffect_240
FX_DelRefToEffect_230:
	movzx eax, word [edx+0x14]
	mov edx, [edi+0x170]
	lea edx, [edx+eax*4]
	mov ecx, [ebp-0x1c]
	mov eax, [ecx+0x4]
	test eax, 0x10000000
	jnz FX_DelRefToEffect_250
	mov eax, [edx+0x4]
	mov eax, [edx+0x4]
	sub eax, 0x20000
	mov [edx+0x4], eax
	mov [esp+0x4], edx
	mov [esp], edi
	call FX_DelRefToEffect_260
FX_DelRefToEffect_250:
	mov byte [edi+0x9dd], 0x1
	jmp FX_DelRefToEffect_270


;FX_KillAllEffects(int)
FX_KillAllEffects:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	cmp byte [fx_systemPool+0x9dc], 0x0
	jz FX_KillAllEffects_10
	mov ebx, [fx_systemPool+0x1b0]
	mov eax, [fx_systemPool+0x1b4]
	cmp eax, ebx
	jnz FX_KillAllEffects_20
FX_KillAllEffects_40:
	cmp byte [fx_systemPool+0x9dd], 0x0
	jnz FX_KillAllEffects_30
FX_KillAllEffects_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
FX_KillAllEffects_60:
	mov [esp+0x4], edx
	mov dword [esp], fx_systemPool
	call FX_KillEffect
FX_KillAllEffects_50:
	add ebx, 0x1
	mov eax, [fx_systemPool+0x1b4]
	cmp eax, ebx
	jz FX_KillAllEffects_40
FX_KillAllEffects_20:
	mov eax, ebx
	and eax, 0x3ff
	movzx edx, word [eax+eax+fx_systemPool+0x1bc]
	mov eax, [fx_systemPool+0x170]
	lea edx, [eax+edx*4]
	mov eax, [edx+0x4]
	test ax, ax
	jz FX_KillAllEffects_50
	jmp FX_KillAllEffects_60
FX_KillAllEffects_30:
	mov dword [ebp+0x8], fx_systemPool
	add esp, 0x14
	pop ebx
	pop ebp
	jmp FX_RunGarbageCollection


;FX_RelocateSystem(FxSystem*, int)
FX_RelocateSystem:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, [ebp+0xc]
	test eax, eax
	jz FX_RelocateSystem_10
	add [edx+0x1a8], eax
	add [edx+0x1ac], eax
FX_RelocateSystem_10:
	pop ebp
	ret
	nop


;FX_ShutdownSystem(int)
FX_ShutdownSystem:
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
	jmp FX_UnregisterAll
	add [eax], al


;FX_RetriggerEffect(int, FxEffect*, int)
FX_RetriggerEffect:
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
	jnz FX_RetriggerEffect_10
	lea esi, [edi+0x44]
FX_RetriggerEffect_130:
	xor edx, edx
FX_RetriggerEffect_20:
	movzx eax, word [edi+edx*2+0x8]
	mov [ebp+edx*2-0x1e], ax
	add edx, 0x1
	cmp edx, 0x3
	jnz FX_RetriggerEffect_20
	movzx eax, word [edi+0x10]
	cmp ax, 0xffff
	jz FX_RetriggerEffect_30
	lea ecx, [ebp-0x34]
	mov ebx, [fx_systemPool+0x178]
FX_RetriggerEffect_40:
	movzx eax, ax
	lea eax, [ebx+eax*4]
	movzx edx, word [eax+0x4]
	mov [ecx], dx
	movzx eax, word [eax]
	add ecx, 0x2
	cmp ax, 0xffff
	jnz FX_RetriggerEffect_40
FX_RetriggerEffect_30:
	mov eax, [edi+0x24]
	mov [ebp-0x40], eax
	cmp [ebp+0x10], eax
	jle FX_RetriggerEffect_50
	mov eax, 0x1
	lea edx, [ebp-0x24]
FX_RetriggerEffect_60:
	mov word [edx+eax*2-0x2], 0xffff
	add eax, 0x1
	cmp eax, 0x4
	jnz FX_RetriggerEffect_60
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
	call FX_UpdateEffectPartial
FX_RetriggerEffect_50:
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
	call FX_BeginLooping
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
	call FX_TriggerOneShot
	mov eax, [edi]
	mov eax, [eax+0xc]
	test eax, eax
	setnz byte [ebp-0x39]
	cmp byte [ebp-0x39], 0x0
	jz FX_RetriggerEffect_70
	lea esi, [edi+0x4]
FX_RetriggerEffect_80:
	mov ebx, [esi]
	mov [esp+0x8], ebx
	mov eax, ebx
	or eax, 0x10000
	mov [esp+0x4], eax
	mov [esp], esi
	call InterlockedCompareExchange
	cmp ebx, eax
	jnz FX_RetriggerEffect_80
FX_RetriggerEffect_70:
	mov eax, [ebp+0x10]
	cmp [ebp-0x40], eax
	jg FX_RetriggerEffect_90
FX_RetriggerEffect_120:
	mov [esp+0x4], edi
	mov dword [esp], fx_systemPool
	call FX_SortNewElemsInEffect
	cmp byte [ebp-0x39], 0x0
	jnz FX_RetriggerEffect_100
	mov eax, [edi+0x4]
	sub ax, 0x1
	jz FX_RetriggerEffect_110
FX_RetriggerEffect_150:
	mov eax, [edi+0x4]
	sub eax, 0x1
	mov [edi+0x4], eax
	mov eax, [edi+0x4]
FX_RetriggerEffect_100:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_RetriggerEffect_90:
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
	call FX_UpdateEffectPartial
	jmp FX_RetriggerEffect_120
FX_RetriggerEffect_10:
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
	call FX_SpawnAllFutureLooping
	mov [esp+0x4], edi
	mov dword [esp], fx_systemPool
	call FX_StopEffect
	jmp FX_RetriggerEffect_130
FX_RetriggerEffect_110:
	movzx eax, word [edi+0x14]
	mov edx, [fx_systemPool+0x170]
	lea edx, [edx+eax*4]
	mov eax, [edi+0x4]
	test eax, 0x10000000
	jz FX_RetriggerEffect_140
FX_RetriggerEffect_160:
	mov byte [fx_systemPool+0x9dd], 0x1
	jmp FX_RetriggerEffect_150
FX_RetriggerEffect_140:
	mov eax, [edx+0x4]
	mov eax, [edx+0x4]
	sub eax, 0x20000
	mov [edx+0x4], eax
	mov [esp+0x4], edx
	mov dword [esp], fx_systemPool
	call FX_DelRefToEffect
	jmp FX_RetriggerEffect_160


;FX_GetSystemBuffers(int)
FX_GetSystemBuffers:
	push ebp
	mov ebp, esp
	mov eax, fx_systemBufferPool
	pop ebp
	ret


;FX_PlayBoltedEffect(int, FxEffectDef const*, int, int, int)
FX_PlayBoltedEffect:
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
	jnz FX_PlayBoltedEffect_10
FX_PlayBoltedEffect_20:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_PlayBoltedEffect_10:
	lea edi, [ebp-0x48]
	mov [esp+0xc], edi
	mov eax, [ebp+0x18]
	mov [esp+0x8], eax
	mov eax, [ebp+0x14]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call FX_GetBoneOrientation
	test al, al
	jz FX_PlayBoltedEffect_20
	mov ebx, [esi+0x10]
	add ebx, [esi+0x14]
	test ebx, ebx
	jle FX_PlayBoltedEffect_30
	mov edx, [esi+0x1c]
	cmp byte [edx+0xb0], 0x3
	jz FX_PlayBoltedEffect_40
	mov eax, [edx]
	and eax, 0xc0
	add eax, 0xffffff80
	jz FX_PlayBoltedEffect_40
	add edx, 0xfc
	xor ecx, ecx
	jmp FX_PlayBoltedEffect_50
FX_PlayBoltedEffect_60:
	cmp byte [edx+0xb0], 0x3
	jz FX_PlayBoltedEffect_40
	mov eax, [edx]
	and eax, 0xc0
	add edx, 0xfc
	add eax, 0xffffff80
	jz FX_PlayBoltedEffect_40
FX_PlayBoltedEffect_50:
	add ecx, 0x1
	cmp ebx, ecx
	jnz FX_PlayBoltedEffect_60
FX_PlayBoltedEffect_30:
	mov dword [ebp+0x14], 0xfff
	mov dword [ebp+0x18], 0x7ff
FX_PlayBoltedEffect_40:
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
	call FX_SpawnEffect
	mov ebx, eax
	test eax, eax
	jz FX_PlayBoltedEffect_20
	mov eax, [eax+0x4]
	sub ax, 0x1
	jz FX_PlayBoltedEffect_70
FX_PlayBoltedEffect_90:
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
FX_PlayBoltedEffect_70:
	movzx eax, word [ebx+0x14]
	mov edx, [fx_systemPool+0x170]
	lea edx, [edx+eax*4]
	mov eax, [ebx+0x4]
	test eax, 0x10000000
	jz FX_PlayBoltedEffect_80
FX_PlayBoltedEffect_100:
	mov byte [fx_systemPool+0x9dd], 0x1
	jmp FX_PlayBoltedEffect_90
FX_PlayBoltedEffect_80:
	mov eax, [edx+0x4]
	mov eax, [edx+0x4]
	sub eax, 0x20000
	mov [edx+0x4], eax
	mov [esp+0x4], edx
	mov dword [esp], fx_systemPool
	call FX_DelRefToEffect
	jmp FX_PlayBoltedEffect_100


;FX_FreeSpotLightElem(FxSystem*, unsigned short, FxEffect*)
FX_FreeSpotLightElem:
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
	jz FX_FreeSpotLightElem_10
FX_FreeSpotLightElem_30:
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
FX_FreeSpotLightElem_10:
	movzx eax, word [esi+0x14]
	lea edx, [eax*4]
	add edx, [ebx+0x170]
	mov eax, [esi+0x4]
	test eax, 0x10000000
	jz FX_FreeSpotLightElem_20
FX_FreeSpotLightElem_40:
	mov byte [ebx+0x9dd], 0x1
	jmp FX_FreeSpotLightElem_30
FX_FreeSpotLightElem_20:
	mov eax, [edx+0x4]
	mov eax, [edx+0x4]
	sub eax, 0x20000
	mov [edx+0x4], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call FX_DelRefToEffect
	jmp FX_FreeSpotLightElem_40


;FX_LinkSystemBuffers(FxSystem*, FxSystemBuffers*)
FX_LinkSystemBuffers:
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
FX_ThroughWithEffect:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0xc]
	cmp byte [fx_systemPool+0x9dc], 0x0
	jnz FX_ThroughWithEffect_10
	add esp, 0x14
	pop ebx
	pop ebp
	ret
FX_ThroughWithEffect_10:
	mov [esp+0x4], ebx
	mov dword [esp], fx_systemPool
	call FX_KillEffect
	mov eax, [ebx+0x4]
	sub ax, 0x1
	jz FX_ThroughWithEffect_20
FX_ThroughWithEffect_40:
	mov eax, [ebx+0x4]
	sub eax, 0x1
	mov [ebx+0x4], eax
	mov eax, [ebx+0x4]
	add esp, 0x14
	pop ebx
	pop ebp
	ret
FX_ThroughWithEffect_20:
	movzx eax, word [ebx+0x14]
	mov edx, [fx_systemPool+0x170]
	lea edx, [edx+eax*4]
	mov eax, [ebx+0x4]
	test eax, 0x10000000
	jz FX_ThroughWithEffect_30
FX_ThroughWithEffect_50:
	mov byte [fx_systemPool+0x9dd], 0x1
	jmp FX_ThroughWithEffect_40
FX_ThroughWithEffect_30:
	mov eax, [edx+0x4]
	mov eax, [edx+0x4]
	sub eax, 0x20000
	mov [edx+0x4], eax
	mov [esp+0x4], edx
	mov dword [esp], fx_systemPool
	call FX_DelRefToEffect
	jmp FX_ThroughWithEffect_50


;FX_PlayOrientedEffect(int, FxEffectDef const*, int, float const*, float const (*) [3])
FX_PlayOrientedEffect:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	mov eax, fx_enable
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz FX_PlayOrientedEffect_10
FX_PlayOrientedEffect_20:
	add esp, 0x34
	pop ebx
	pop ebp
	ret
FX_PlayOrientedEffect_10:
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
	call FX_SpawnEffect
	mov ebx, eax
	test eax, eax
	jz FX_PlayOrientedEffect_20
	mov eax, [eax+0x4]
	sub ax, 0x1
	jz FX_PlayOrientedEffect_30
FX_PlayOrientedEffect_50:
	mov eax, [ebx+0x4]
	sub eax, 0x1
	mov [ebx+0x4], eax
	mov eax, [ebx+0x4]
	add esp, 0x34
	pop ebx
	pop ebp
	ret
FX_PlayOrientedEffect_30:
	movzx eax, word [ebx+0x14]
	mov edx, [fx_systemPool+0x170]
	lea edx, [edx+eax*4]
	mov eax, [ebx+0x4]
	test eax, 0x10000000
	jz FX_PlayOrientedEffect_40
FX_PlayOrientedEffect_60:
	mov byte [fx_systemPool+0x9dd], 0x1
	jmp FX_PlayOrientedEffect_50
FX_PlayOrientedEffect_40:
	mov eax, [edx+0x4]
	mov eax, [edx+0x4]
	sub eax, 0x20000
	mov [edx+0x4], eax
	mov [esp+0x4], edx
	mov dword [esp], fx_systemPool
	call FX_DelRefToEffect
	jmp FX_PlayOrientedEffect_60
	nop


;FX_GetClientVisibility(int, float const*, float const*)
FX_GetClientVisibility:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	mov ebx, [fx_systemPool+0x1a8]
	test ebx, ebx
	jz FX_GetClientVisibility_10
	mov eax, [ebx+0x1000]
	test eax, eax
	jnz FX_GetClientVisibility_20
FX_GetClientVisibility_10:
	mov esi, 0x3f800000
	mov [ebp-0x2c], esi
	fld dword [ebp-0x2c]
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
FX_GetClientVisibility_20:
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
	jb FX_GetClientVisibility_30
	movss xmm5, dword [_float_1_00000000]
	movaps xmm0, xmm5
FX_GetClientVisibility_70:
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
	ja FX_GetClientVisibility_40
	mulss xmm1, [_float_0_50000000]
	movss [ebp-0x1c], xmm1
	mov eax, [ebx+0x1000]
	test eax, eax
	jle FX_GetClientVisibility_40
	movss [ebp-0x2c], xmm5
	mov esi, [ebp-0x2c]
	xor ecx, ecx
	mov edx, ebx
FX_GetClientVisibility_60:
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
	ja FX_GetClientVisibility_50
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
	jae FX_GetClientVisibility_50
	movzx eax, word [edx+0xe]
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_00001526]
	mov [ebp-0x2c], esi
	movss xmm1, dword [ebp-0x2c]
	mulss xmm1, xmm0
	movss [ebp-0x2c], xmm1
	mov esi, [ebp-0x2c]
FX_GetClientVisibility_50:
	add ecx, 0x1
	add edx, 0x10
	mov eax, [ebx+0x1000]
	cmp eax, ecx
	jg FX_GetClientVisibility_60
	mov [ebp-0x2c], esi
	fld dword [ebp-0x2c]
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
FX_GetClientVisibility_40:
	movss [ebp-0x2c], xmm5
	mov esi, [ebp-0x2c]
	mov [ebp-0x2c], esi
	fld dword [ebp-0x2c]
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
FX_GetClientVisibility_30:
	movss xmm5, dword [_float_1_00000000]
	movaps xmm0, xmm5
	divss xmm0, xmm1
	jmp FX_GetClientVisibility_70


;FX_SpawnOrientedEffect(int, FxEffectDef const*, int, float const*, float const (*) [3], unsigned int)
FX_SpawnOrientedEffect:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	mov eax, fx_enable
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz FX_SpawnOrientedEffect_10
	xor eax, eax
	leave
	ret
FX_SpawnOrientedEffect_10:
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
	call FX_SpawnEffect
	leave
	ret


;FX_SpawnTrailElem_Cull(FxSystem*, FxEffect*, FxTrail*, FxSpatialFrame const*, int, float)
FX_SpawnTrailElem_Cull:
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
	jp FX_SpawnTrailElem_Cull_10
	jz FX_SpawnTrailElem_Cull_20
FX_SpawnTrailElem_Cull_10:
	test cl, cl
	jnz FX_SpawnTrailElem_Cull_30
FX_SpawnTrailElem_Cull_50:
	movss xmm0, dword [ebp-0x20]
FX_SpawnTrailElem_Cull_20:
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
	jmp FX_SpawnTrailElem_NoCull
FX_SpawnTrailElem_Cull_30:
	test cl, 0x1
	jz FX_SpawnTrailElem_Cull_40
	movss xmm0, dword [_float_1_00000000]
FX_SpawnTrailElem_Cull_70:
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
	jbe FX_SpawnTrailElem_Cull_50
	movzx eax, byte [ebp-0xd]
	add al, 0x1
	mov [ebx+0x7], al
	add esp, 0x14
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_SpawnTrailElem_Cull_40:
	movss xmm1, dword [_float_1_00000000]
	movaps xmm0, xmm1
FX_SpawnTrailElem_Cull_60:
	addss xmm0, xmm1
	shr cl, 1
	test cl, 0x1
	jz FX_SpawnTrailElem_Cull_60
	jmp FX_SpawnTrailElem_Cull_70


;FX_RunGarbageCollection(FxSystem*)
FX_RunGarbageCollection:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x82c
	mov esi, [ebp+0x8]
	cmp byte [esi+0x9dd], 0x0
	jz FX_RunGarbageCollection_10
	mov byte [esi+0x9dd], 0x0
	mov edi, [esi+0x1b4]
	mov dword [ebp-0x820], 0x0
FX_RunGarbageCollection_90:
	mov eax, [esi+0x1b0]
	cmp eax, edi
	jz FX_RunGarbageCollection_20
FX_RunGarbageCollection_40:
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
	jz FX_RunGarbageCollection_30
	mov edx, [ebp-0x820]
	lea eax, [edi+edx]
	and eax, 0x3ff
	movzx edx, word [ebp-0x822]
	mov [esi+eax*2+0x1bc], dx
	mov eax, [esi+0x1b0]
	cmp eax, edi
	jnz FX_RunGarbageCollection_40
FX_RunGarbageCollection_20:
	mov edi, [ebp-0x820]
	test edi, edi
	jnz FX_RunGarbageCollection_50
FX_RunGarbageCollection_110:
	mov [esi+0x1b0], eax
FX_RunGarbageCollection_10:
	add esp, 0x82c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_RunGarbageCollection_60:
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
FX_RunGarbageCollection_30:
	movzx edx, word [ebx+0x10]
	cmp dx, 0xffff
	jnz FX_RunGarbageCollection_60
	mov eax, [esi+0x9bc]
	test eax, eax
	jz FX_RunGarbageCollection_70
	movzx eax, word [ebp-0x81a]
	cmp ax, [esi+0x9c4]
	jz FX_RunGarbageCollection_80
FX_RunGarbageCollection_70:
	movzx eax, word [ebp-0x822]
	mov edx, [ebp-0x820]
	mov [ebp+edx*2-0x818], ax
	add edx, 0x1
	mov [ebp-0x820], edx
	jmp FX_RunGarbageCollection_90
FX_RunGarbageCollection_50:
	mov edx, [ebp-0x820]
	lea edi, [ebp+edx*2-0x818]
	mov ebx, eax
	lea eax, [eax+edx]
	mov [ebp-0x828], eax
FX_RunGarbageCollection_100:
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
	jnz FX_RunGarbageCollection_100
	jmp FX_RunGarbageCollection_110
FX_RunGarbageCollection_80:
	lea eax, [esi+0x9bc]
	mov [esp], eax
	call InterlockedDecrement
	jmp FX_RunGarbageCollection_70
	nop


;FX_SpawnTrailElem_NoCull(FxSystem*, FxEffect*, FxTrail*, FxSpatialFrame const*, int, float)
FX_SpawnTrailElem_NoCull:
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
	jz FX_SpawnTrailElem_NoCull_10
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
FX_SpawnTrailElem_NoCull_100:
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
	jz FX_SpawnTrailElem_NoCull_20
FX_SpawnTrailElem_NoCull_120:
	mov eax, [ebp+0x8]
FX_SpawnTrailElem_NoCull_130:
	mov edx, [eax+0x17c]
	mov eax, [eax+0x188]
	cmp eax, 0xffffffff
	jz FX_SpawnTrailElem_NoCull_30
	shl eax, 0x5
	lea ebx, [edx+eax]
	mov eax, [ebx]
	mov edx, [ebp+0x8]
	mov [edx+0x188], eax
	mov eax, [edx+0x198]
	add eax, 0x1
	mov [edx+0x198], eax
	test ebx, ebx
	jz FX_SpawnTrailElem_NoCull_30
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
	call FX_GetOriginForTrailElem
	mov esi, [ebp+0x8]
	mov ecx, [esi+0x17c]
	mov eax, ebx
	sub eax, ecx
	js FX_SpawnTrailElem_NoCull_40
FX_SpawnTrailElem_NoCull_140:
	sar eax, 0x2
	movzx edx, ax
	mov [ebp-0x4a], dx
	mov esi, [ebp+0x10]
	movzx eax, word [esi+0x4]
	cmp ax, 0xffff
	jz FX_SpawnTrailElem_NoCull_50
	movzx eax, ax
	mov [ecx+eax*4+0x14], dx
FX_SpawnTrailElem_NoCull_110:
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
FX_SpawnTrailElem_NoCull_80:
	xor ebx, ebx
FX_SpawnTrailElem_NoCull_70:
	movss xmm0, dword [esi+ebx*4]
	mulss xmm0, xmm1
	cvttss2si edx, xmm0
	cmp edx, 0xffffff80
	jge FX_SpawnTrailElem_NoCull_60
	mov ecx, 0xffffff80
FX_SpawnTrailElem_NoCull_90:
	mov [eax+ebx], cl
	add ebx, 0x1
	cmp ebx, 0x3
	jnz FX_SpawnTrailElem_NoCull_70
	add eax, 0x3
	add esi, 0xc
	lea ecx, [ebp-0x18]
	cmp ecx, esi
	jnz FX_SpawnTrailElem_NoCull_80
FX_SpawnTrailElem_NoCull_30:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_SpawnTrailElem_NoCull_60:
	mov ecx, 0x7f
	cmp edx, 0x80
	cmovl ecx, edx
	jmp FX_SpawnTrailElem_NoCull_90
FX_SpawnTrailElem_NoCull_10:
	mov edx, [ebp+0x10]
	movzx edx, byte [edx+0x7]
	mov [ebp-0x41], dl
	mov ecx, [ebp+0xc]
	movzx edi, word [ecx+0x12]
	jmp FX_SpawnTrailElem_NoCull_100
FX_SpawnTrailElem_NoCull_50:
	mov [esi+0x2], dx
	jmp FX_SpawnTrailElem_NoCull_110
FX_SpawnTrailElem_NoCull_20:
	mov edx, [esi+0xdc]
	test edx, edx
	jnz FX_SpawnTrailElem_NoCull_120
	mov eax, [esi+0xe0]
	test eax, eax
	jnz FX_SpawnTrailElem_NoCull_120
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
	jle FX_SpawnTrailElem_NoCull_30
	mov eax, ebx
	jmp FX_SpawnTrailElem_NoCull_130
FX_SpawnTrailElem_NoCull_40:
	add eax, 0x3
	jmp FX_SpawnTrailElem_NoCull_140
	nop


;FX_EffectNoLongerReferenced(FxSystem*, FxEffect*)
FX_EffectNoLongerReferenced:
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
	jnz FX_EffectNoLongerReferenced_10
	mov eax, [ebx+0x4]
	mov eax, [ebx+0x4]
	sub eax, 0x20000
	mov [ebx+0x4], eax
	mov eax, [ebx+0x4]
	sub ax, 0x1
	jz FX_EffectNoLongerReferenced_20
FX_EffectNoLongerReferenced_40:
	mov eax, [ebx+0x4]
	sub eax, 0x1
	mov [ebx+0x4], eax
	mov eax, [ebx+0x4]
FX_EffectNoLongerReferenced_10:
	mov byte [esi+0x9dd], 0x1
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
FX_EffectNoLongerReferenced_20:
	movzx eax, word [ebx+0x14]
	mov edx, [esi+0x170]
	lea edx, [edx+eax*4]
	mov eax, [ebx+0x4]
	test eax, 0x10000000
	jz FX_EffectNoLongerReferenced_30
FX_EffectNoLongerReferenced_50:
	mov byte [esi+0x9dd], 0x1
	jmp FX_EffectNoLongerReferenced_40
FX_EffectNoLongerReferenced_30:
	mov eax, [edx+0x4]
	mov eax, [edx+0x4]
	sub eax, 0x20000
	mov [edx+0x4], eax
	mov [esp+0x4], edx
	mov [esp], esi
	call FX_DelRefToEffect
	jmp FX_EffectNoLongerReferenced_50


;FX_PlayOrientedEffectWithMarkEntity(int, FxEffectDef const*, int, float const*, float const (*) [3], unsigned int)
FX_PlayOrientedEffectWithMarkEntity:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	mov eax, fx_enable
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz FX_PlayOrientedEffectWithMarkEntity_10
FX_PlayOrientedEffectWithMarkEntity_20:
	add esp, 0x34
	pop ebx
	pop ebp
	ret
FX_PlayOrientedEffectWithMarkEntity_10:
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
	call FX_SpawnEffect
	mov ebx, eax
	test eax, eax
	jz FX_PlayOrientedEffectWithMarkEntity_20
	mov eax, [eax+0x4]
	sub ax, 0x1
	jz FX_PlayOrientedEffectWithMarkEntity_30
FX_PlayOrientedEffectWithMarkEntity_50:
	mov eax, [ebx+0x4]
	sub eax, 0x1
	mov [ebx+0x4], eax
	mov eax, [ebx+0x4]
	add esp, 0x34
	pop ebx
	pop ebp
	ret
FX_PlayOrientedEffectWithMarkEntity_30:
	movzx eax, word [ebx+0x14]
	mov edx, [fx_systemPool+0x170]
	lea edx, [edx+eax*4]
	mov eax, [ebx+0x4]
	test eax, 0x10000000
	jz FX_PlayOrientedEffectWithMarkEntity_40
FX_PlayOrientedEffectWithMarkEntity_60:
	mov byte [fx_systemPool+0x9dd], 0x1
	jmp FX_PlayOrientedEffectWithMarkEntity_50
FX_PlayOrientedEffectWithMarkEntity_40:
	mov eax, [edx+0x4]
	mov eax, [edx+0x4]
	sub eax, 0x20000
	mov [edx+0x4], eax
	mov [esp+0x4], edx
	mov dword [esp], fx_systemPool
	call FX_DelRefToEffect
	jmp FX_PlayOrientedEffectWithMarkEntity_60


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

