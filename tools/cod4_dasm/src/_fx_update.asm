;Imports of fx_update:
	extern cg_entitiesArray
	extern FX_StopEffect
	extern AxisToQuat
	extern fx_randomTable
	extern floorf
	extern ceilf
	extern FX_OrientationPosToWorldPos
	extern CM_BoxTrace
	extern FX_OrientationPosFromWorldPos
	extern Vec3Basis_RightHanded
	extern FX_SpawnEffect
	extern FX_EffectNoLongerReferenced
	extern FX_GetVelocityAtTime
	extern FX_GetOrientation
	extern ms_rand
	extern Vec4Normalize
	extern PerpendicularVector
	extern FX_SortNewElemsInEffect
	extern FX_RunGarbageCollection
	extern FX_GetSystem
	extern memset
	extern FX_KillEffect
	extern InterlockedCompareExchange
	extern FX_SpawnElem
	extern fx_enable
	extern memcpy
	extern Sys_EnterCriticalSection
	extern Phys_RunToTime
	extern Sys_LeaveCriticalSection
	extern FX_BeginMarks
	extern FX_Beam_Begin
	extern FX_PostLight_Begin
	extern FX_SpriteBegin
	extern FX_SpawnTrailElem_NoCull
	extern FX_SpawnTrailElem_Cull
	extern CG_AddSceneTracerBeams
	extern CG_GenerateSceneVerts
	extern fx_draw
	extern FX_DrawSpotLight
	extern FX_FreeSpotLightElem
	extern InterlockedExchange
	extern Com_GetClientDObj
	extern DObjNumBones
	extern CG_GetPose
	extern CG_DObjGetWorldBoneMatrix
	extern CG_GetDObjOrientation
	extern AxisCopy
	extern FX_FreeElem
	extern FX_FreeTrailElem
	extern FX_GetOriginForTrailElem
	extern FX_SortEffects
	extern FX_DrawNonSpriteElems

;Exports of fx_update:
	global FX_UpdateEffectBolt
	global FX_LimitStabilizeTimeForElemDef_Recurse
	global FX_IntegrateVelocity
	global FX_NextElementPosition
	global FX_UpdateElementPosition_CollidingStep
	global FX_UpdateElement
	global FX_Update
	global FX_RewindTo
	global FX_EndUpdate
	global FX_RunPhysics
	global FX_BeginUpdate
	global FX_BeginLooping
	global FX_FillUpdateCmd
	global FX_StartNewEffect
	global FX_TriggerOneShot
	global FX_UpdateRemaining
	global FX_UpdateSpotLight
	global FX_SetNextUpdateTime
	global FX_GetBoneOrientation
	global FX_UpdateNonDependent
	global FX_GetBoltTemporalBits
	global FX_SetNextUpdateCamera
	global FX_UpdateEffectPartial
	global FX_AddNonSpriteDrawSurfs
	global FX_SpawnAllFutureLooping


SECTION .text


;FX_UpdateEffectBolt(FxSystem*, FxEffect*)
FX_UpdateEffectBolt:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov edi, eax
	mov ebx, edx
	mov esi, [edx+0x18]
	mov eax, esi
	and eax, cg_entitiesArray+0x77a0
	cmp eax, cg_entitiesArray+0x77a0
	jz FX_UpdateEffectBolt_10
	movzx eax, byte [edi+0x9df]
	mov [ebp-0x4c], eax
	movzx ecx, word [edx+0x18]
	mov eax, ecx
	and eax, 0xfff
	cmp eax, 0x3fd
	jle FX_UpdateEffectBolt_20
FX_UpdateEffectBolt_40:
	xor edx, edx
	movzx eax, byte [ebx+0x19]
	shr al, 0x4
	and eax, 0x1
	cmp edx, eax
	jz FX_UpdateEffectBolt_30
FX_UpdateEffectBolt_50:
	mov [esp+0x4], ebx
	mov [esp], edi
	call FX_StopEffect
	or dword [ebx+0x18], cg_entitiesArray+0x77a0
	or word [ebx+0x18], 0xfff
FX_UpdateEffectBolt_10:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_UpdateEffectBolt_20:
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	add eax, cg_entitiesArray
	mov eax, [eax+0xd4]
	test al, 0x2
	jz FX_UpdateEffectBolt_40
	mov edx, 0x1
	movzx eax, byte [ebx+0x19]
	shr al, 0x4
	and eax, 0x1
	cmp edx, eax
	jnz FX_UpdateEffectBolt_50
FX_UpdateEffectBolt_30:
	mov eax, esi
	shr eax, 0xd
	and eax, 0x7ff
	and ecx, 0xfff
	lea edx, [ebp-0x48]
	mov [esp+0xc], edx
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov eax, [ebp-0x4c]
	mov [esp], eax
	call FX_GetBoneOrientation
	test al, al
	jz FX_UpdateEffectBolt_50
	mov eax, [ebp-0x48]
	mov [ebx+0x54], eax
	mov eax, [ebp-0x44]
	mov [ebx+0x58], eax
	mov eax, [ebp-0x40]
	mov [ebx+0x5c], eax
	lea eax, [ebx+0x44]
	mov [esp+0x4], eax
	lea eax, [ebp-0x3c]
	mov [esp], eax
	call AxisToQuat
	jmp FX_UpdateEffectBolt_10


;FX_LimitStabilizeTimeForElemDef_Recurse(FxElemDef const*, unsigned char, int)
FX_LimitStabilizeTimeForElemDef_Recurse:
FX_LimitStabilizeTimeForElemDef_Recurse_80:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov [ebp-0x6c], eax
	mov edi, ecx
	mov eax, edx
	mov ecx, [ebp-0x6c]
	movzx edx, byte [ecx+0xb0]
	cmp dl, 0x3
	jz FX_LimitStabilizeTimeForElemDef_Recurse_10
	mov ecx, [ecx+0x30]
	mov [ebp-0x68], ecx
	mov ecx, [ebp-0x6c]
	mov ecx, [ecx+0x34]
	add [ebp-0x68], ecx
	mov ecx, [ebp-0x6c]
	mov ecx, [ecx+0x28]
	add [ebp-0x68], ecx
	mov ecx, [ebp-0x6c]
	mov ecx, [ecx+0x2c]
	add [ebp-0x68], ecx
	test al, al
	jnz FX_LimitStabilizeTimeForElemDef_Recurse_20
FX_LimitStabilizeTimeForElemDef_Recurse_120:
	cmp edi, [ebp-0x68]
	jle FX_LimitStabilizeTimeForElemDef_Recurse_10
	cmp dl, 0xa
	jz FX_LimitStabilizeTimeForElemDef_Recurse_30
FX_LimitStabilizeTimeForElemDef_Recurse_170:
	mov ecx, [ebp-0x68]
FX_LimitStabilizeTimeForElemDef_Recurse_360:
	mov [ebp-0x64], ecx
	mov eax, [ebp-0x6c]
FX_LimitStabilizeTimeForElemDef_Recurse_350:
	mov esi, [eax+0xdc]
	test esi, esi
	jz FX_LimitStabilizeTimeForElemDef_Recurse_40
	mov eax, [esi+0x10]
	add eax, [esi+0x14]
	add eax, [esi+0x18]
	mov [ebp-0x4c], eax
	jnz FX_LimitStabilizeTimeForElemDef_Recurse_50
	xor ebx, ebx
FX_LimitStabilizeTimeForElemDef_Recurse_140:
	mov ecx, [ebp-0x68]
	lea eax, [ebx+ecx]
	cmp [ebp-0x64], eax
	cmovge eax, [ebp-0x64]
	cmp eax, edi
	jge FX_LimitStabilizeTimeForElemDef_Recurse_10
	mov [ebp-0x64], eax
	mov eax, [ebp-0x6c]
FX_LimitStabilizeTimeForElemDef_Recurse_40:
	mov esi, [eax+0xd8]
	test esi, esi
	jz FX_LimitStabilizeTimeForElemDef_Recurse_60
	mov eax, [esi+0x10]
	add eax, [esi+0x14]
	add eax, [esi+0x18]
	mov [ebp-0x44], eax
	jz FX_LimitStabilizeTimeForElemDef_Recurse_70
	mov dword [ebp-0x40], 0x0
	xor ebx, ebx
	mov dword [ebp-0x30], 0x0
FX_LimitStabilizeTimeForElemDef_Recurse_100:
	mov eax, [ebp-0x30]
	add eax, [esi+0x1c]
	mov ecx, edi
	mov edx, 0x1
	call FX_LimitStabilizeTimeForElemDef_Recurse_80
	cmp ebx, eax
	cmovl ebx, eax
	cmp ebx, edi
	jge FX_LimitStabilizeTimeForElemDef_Recurse_90
	add dword [ebp-0x40], 0x1
	add dword [ebp-0x30], 0xfc
	mov ecx, [ebp-0x40]
	cmp [ebp-0x44], ecx
	jnz FX_LimitStabilizeTimeForElemDef_Recurse_100
	add ebx, [ebp-0x68]
	cmp [ebp-0x64], ebx
	mov edx, [ebp-0x64]
	cmovl edx, ebx
	mov [ebp-0x1c], edx
	cmp edx, edi
	jl FX_LimitStabilizeTimeForElemDef_Recurse_110
FX_LimitStabilizeTimeForElemDef_Recurse_10:
	mov eax, edi
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_LimitStabilizeTimeForElemDef_Recurse_20:
	mov ecx, [ebp-0x6c]
	mov eax, [ecx+0x8]
	test eax, eax
	jle FX_LimitStabilizeTimeForElemDef_Recurse_120
	cmp eax, 0x7fffffff
	jz FX_LimitStabilizeTimeForElemDef_Recurse_10
	sub eax, 0x1
	imul eax, [ecx+0x4]
	add [ebp-0x68], eax
	jmp FX_LimitStabilizeTimeForElemDef_Recurse_120
FX_LimitStabilizeTimeForElemDef_Recurse_50:
	mov dword [ebp-0x48], 0x0
	xor ebx, ebx
	mov dword [ebp-0x2c], 0x0
	jmp FX_LimitStabilizeTimeForElemDef_Recurse_130
FX_LimitStabilizeTimeForElemDef_Recurse_150:
	add dword [ebp-0x48], 0x1
	add dword [ebp-0x2c], 0xfc
	mov edx, [ebp-0x48]
	cmp [ebp-0x4c], edx
	jz FX_LimitStabilizeTimeForElemDef_Recurse_140
FX_LimitStabilizeTimeForElemDef_Recurse_130:
	mov eax, [ebp-0x2c]
	add eax, [esi+0x1c]
	mov ecx, edi
	mov edx, 0x1
	call FX_LimitStabilizeTimeForElemDef_Recurse_80
	cmp ebx, eax
	cmovl ebx, eax
	cmp ebx, edi
	jl FX_LimitStabilizeTimeForElemDef_Recurse_150
	mov ebx, edi
	jmp FX_LimitStabilizeTimeForElemDef_Recurse_140
FX_LimitStabilizeTimeForElemDef_Recurse_30:
	mov edx, [ebp-0x6c]
	movzx eax, byte [edx+0xb1]
	cmp al, 0x1
	jz FX_LimitStabilizeTimeForElemDef_Recurse_160
	mov edx, [edx+0xbc]
	test al, al
	jz FX_LimitStabilizeTimeForElemDef_Recurse_170
	mov [ebp-0x24], edx
	mov eax, [ebp-0x68]
	mov [ebp-0x64], eax
	mov dword [ebp-0x60], 0x0
	jmp FX_LimitStabilizeTimeForElemDef_Recurse_180
FX_LimitStabilizeTimeForElemDef_Recurse_200:
	xor ebx, ebx
FX_LimitStabilizeTimeForElemDef_Recurse_220:
	cmp [ebp-0x64], ebx
	cmovge ebx, [ebp-0x64]
	mov [ebp-0x64], ebx
	cmp ebx, edi
	jge FX_LimitStabilizeTimeForElemDef_Recurse_10
	add dword [ebp-0x60], 0x1
	add dword [ebp-0x24], 0x4
	mov edx, [ebp-0x6c]
	movzx eax, byte [edx+0xb1]
	cmp [ebp-0x60], eax
	jge FX_LimitStabilizeTimeForElemDef_Recurse_190
	mov edx, [ebp-0x24]
FX_LimitStabilizeTimeForElemDef_Recurse_180:
	mov esi, [edx]
	mov eax, [esi+0x10]
	add eax, [esi+0x14]
	add eax, [esi+0x18]
	mov [ebp-0x54], eax
	jz FX_LimitStabilizeTimeForElemDef_Recurse_200
	mov dword [ebp-0x50], 0x0
	xor ebx, ebx
	mov dword [ebp-0x28], 0x0
	jmp FX_LimitStabilizeTimeForElemDef_Recurse_210
FX_LimitStabilizeTimeForElemDef_Recurse_230:
	add dword [ebp-0x50], 0x1
	add dword [ebp-0x28], 0xfc
	mov ecx, [ebp-0x50]
	cmp [ebp-0x54], ecx
	jz FX_LimitStabilizeTimeForElemDef_Recurse_220
FX_LimitStabilizeTimeForElemDef_Recurse_210:
	mov eax, [ebp-0x28]
	add eax, [esi+0x1c]
	mov ecx, edi
	mov edx, 0x1
	call FX_LimitStabilizeTimeForElemDef_Recurse_80
	cmp ebx, eax
	cmovl ebx, eax
	cmp ebx, edi
	jl FX_LimitStabilizeTimeForElemDef_Recurse_230
	mov ebx, edi
	jmp FX_LimitStabilizeTimeForElemDef_Recurse_220
FX_LimitStabilizeTimeForElemDef_Recurse_70:
	xor ebx, ebx
FX_LimitStabilizeTimeForElemDef_Recurse_300:
	add ebx, [ebp-0x68]
	cmp [ebp-0x64], ebx
	mov edx, [ebp-0x64]
	cmovl edx, ebx
	mov [ebp-0x1c], edx
	cmp edx, edi
	jge FX_LimitStabilizeTimeForElemDef_Recurse_10
FX_LimitStabilizeTimeForElemDef_Recurse_110:
	mov ecx, [ebp-0x6c]
	mov esi, [ecx+0xe0]
	test esi, esi
	jz FX_LimitStabilizeTimeForElemDef_Recurse_240
	mov eax, [esi+0x10]
	add eax, [esi+0x14]
	add eax, [esi+0x18]
	mov [ebp-0x3c], eax
	jnz FX_LimitStabilizeTimeForElemDef_Recurse_250
	xor ebx, ebx
FX_LimitStabilizeTimeForElemDef_Recurse_280:
	mov edx, [ebp-0x68]
	lea ecx, [ebx+edx]
	cmp [ebp-0x1c], ecx
	jl FX_LimitStabilizeTimeForElemDef_Recurse_260
FX_LimitStabilizeTimeForElemDef_Recurse_240:
	mov edi, [ebp-0x1c]
	mov eax, edi
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_LimitStabilizeTimeForElemDef_Recurse_260:
	mov edi, ecx
	jmp FX_LimitStabilizeTimeForElemDef_Recurse_10
FX_LimitStabilizeTimeForElemDef_Recurse_250:
	xor ebx, ebx
	mov dword [ebp-0x38], 0x0
	mov dword [ebp-0x34], 0x0
	jmp FX_LimitStabilizeTimeForElemDef_Recurse_270
FX_LimitStabilizeTimeForElemDef_Recurse_290:
	add dword [ebp-0x38], 0x1
	add dword [ebp-0x34], 0xfc
	mov eax, [ebp-0x38]
	cmp [ebp-0x3c], eax
	jz FX_LimitStabilizeTimeForElemDef_Recurse_280
FX_LimitStabilizeTimeForElemDef_Recurse_270:
	mov eax, [ebp-0x34]
	add eax, [esi+0x1c]
	mov ecx, edi
	mov edx, 0x1
	call FX_LimitStabilizeTimeForElemDef_Recurse_80
	cmp ebx, eax
	cmovl ebx, eax
	cmp ebx, edi
	jl FX_LimitStabilizeTimeForElemDef_Recurse_290
	mov ebx, edi
	jmp FX_LimitStabilizeTimeForElemDef_Recurse_280
FX_LimitStabilizeTimeForElemDef_Recurse_60:
	mov edx, [ebp-0x64]
	mov [ebp-0x1c], edx
	jmp FX_LimitStabilizeTimeForElemDef_Recurse_110
FX_LimitStabilizeTimeForElemDef_Recurse_90:
	mov ebx, edi
	jmp FX_LimitStabilizeTimeForElemDef_Recurse_300
FX_LimitStabilizeTimeForElemDef_Recurse_160:
	mov ebx, [edx+0xbc]
	mov eax, [ebx+0x10]
	add eax, [ebx+0x14]
	add eax, [ebx+0x18]
	mov [ebp-0x5c], eax
	jz FX_LimitStabilizeTimeForElemDef_Recurse_310
	mov dword [ebp-0x58], 0x0
	mov dword [ebp-0x20], 0x0
	xor esi, esi
FX_LimitStabilizeTimeForElemDef_Recurse_320:
	mov eax, esi
	add eax, [ebx+0x1c]
	mov ecx, edi
	mov edx, 0x1
	call FX_LimitStabilizeTimeForElemDef_Recurse_80
	cmp [ebp-0x20], eax
	cmovge eax, [ebp-0x20]
	mov [ebp-0x20], eax
	cmp eax, edi
	jge FX_LimitStabilizeTimeForElemDef_Recurse_10
	add dword [ebp-0x58], 0x1
	add esi, 0xfc
	mov ecx, [ebp-0x58]
	cmp [ebp-0x5c], ecx
	jnz FX_LimitStabilizeTimeForElemDef_Recurse_320
	jmp FX_LimitStabilizeTimeForElemDef_Recurse_330
FX_LimitStabilizeTimeForElemDef_Recurse_310:
	mov dword [ebp-0x20], 0x0
FX_LimitStabilizeTimeForElemDef_Recurse_330:
	mov eax, [ebp-0x68]
	cmp [ebp-0x20], eax
	jle FX_LimitStabilizeTimeForElemDef_Recurse_340
	cmp edi, [ebp-0x20]
	jle FX_LimitStabilizeTimeForElemDef_Recurse_10
	mov edx, [ebp-0x20]
	mov [ebp-0x64], edx
	mov eax, [ebp-0x6c]
	jmp FX_LimitStabilizeTimeForElemDef_Recurse_350
FX_LimitStabilizeTimeForElemDef_Recurse_190:
	mov eax, edx
	jmp FX_LimitStabilizeTimeForElemDef_Recurse_350
FX_LimitStabilizeTimeForElemDef_Recurse_340:
	mov ecx, eax
	jmp FX_LimitStabilizeTimeForElemDef_Recurse_360
	nop


;FX_IntegrateVelocity(FxUpdateElem const*, float, float, float*, float*)
FX_IntegrateVelocity:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	mov ebx, eax
	movaps xmm2, xmm0
	movaps xmm3, xmm1
	mov [ebp-0x3c], edx
	mov [ebp-0x40], ecx
	mov eax, [eax]
	mov ecx, [eax]
	mov eax, [ebx+0x4]
	lea edx, [eax*4]
	mov esi, eax
	shl esi, 0x8
	sub esi, edx
	add esi, [ecx+0x1c]
	mov edx, [ebx+0x3c]
	mov eax, fx_randomTable
	movss xmm5, dword [eax+edx*4]
	movss xmm6, dword [eax+edx*4+0x4]
	movss xmm7, dword [eax+edx*4+0x8]
	movss xmm0, dword [ebx+0x44]
	movss [ebp-0x2c], xmm0
	mov eax, [esi+0xb4]
	mov [ebp-0x28], eax
	movzx eax, byte [esi+0xb2]
	movzx edx, al
	sub al, 0x1
	jz FX_IntegrateVelocity_10
	cvtsi2ss xmm0, edx
	movss [ebp-0x38], xmm0
	mulss xmm2, xmm0
	movss [ebp-0x34], xmm2
	movss [esp], xmm2
	movss [ebp-0x68], xmm1
	movss [ebp-0x88], xmm5
	movss [ebp-0x98], xmm6
	movss [ebp-0xa8], xmm7
	call floorf
	fstp dword [ebp-0x44]
	cvttss2si edi, [ebp-0x44]
	cvtsi2ss xmm0, edi
	movss xmm4, dword [ebp-0x34]
	subss xmm4, xmm0
	movss xmm3, dword [ebp-0x68]
	mulss xmm3, [ebp-0x38]
	movss [ebp-0x30], xmm3
	movss [esp], xmm3
	movss [ebp-0x78], xmm4
	call ceilf
	fstp dword [ebp-0x48]
	cvttss2si eax, [ebp-0x48]
	sub eax, 0x1
	cvtsi2ss xmm0, eax
	movss xmm2, dword [ebp-0x30]
	subss xmm2, xmm0
	cmp edi, eax
	movss xmm4, dword [ebp-0x78]
	movss xmm5, dword [ebp-0x88]
	movss xmm6, dword [ebp-0x98]
	movss xmm7, dword [ebp-0xa8]
	jz FX_IntegrateVelocity_20
	lea eax, [eax+eax*2]
	shl eax, 0x5
	add eax, [ebp-0x28]
	mov [ebp-0x20], eax
	lea eax, [edi+edi*2]
	shl eax, 0x5
	mov edi, [ebp-0x28]
	add edi, eax
	lea edx, [ebx+0xc]
	movss xmm0, dword [ebp-0x2c]
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x24], xmm0
	mulss xmm0, xmm4
	movss xmm1, dword [_float_0_50000000]
	mulss xmm4, xmm1
	mulss xmm4, xmm0
	subss xmm0, xmm4
	movss [ebp-0x1c], xmm0
	movss xmm0, dword [ebp-0x2c]
	mulss xmm0, xmm2
	movaps xmm3, xmm1
	mulss xmm3, xmm2
	mulss xmm3, xmm0
	movaps xmm2, xmm0
	subss xmm2, xmm3
	mov ebx, [esi]
	test ebx, 0x1000000
	jnz FX_IntegrateVelocity_30
FX_IntegrateVelocity_70:
	mov eax, [ebp-0x40]
	mov [esp+0x8], eax
	mov ecx, [ebp-0x3c]
	mov [esp+0x4], ecx
	mov [esp], edx
	movss [ebp-0x58], xmm2
	movss [ebp-0x68], xmm3
	movss [ebp-0x78], xmm4
	movss [ebp-0x88], xmm5
	movss [ebp-0x98], xmm6
	movss [ebp-0xa8], xmm7
	call FX_OrientationPosToWorldPos
	and ebx, 0x2000000
	movss xmm2, dword [ebp-0x58]
	movss xmm3, dword [ebp-0x68]
	movss xmm4, dword [ebp-0x78]
	movss xmm5, dword [ebp-0x88]
	movss xmm6, dword [ebp-0x98]
	movss xmm7, dword [ebp-0xa8]
	jz FX_IntegrateVelocity_40
	mov edx, [ebp-0x20]
	add edx, 0x90
	mov eax, [ebp-0x20]
	add eax, 0x30
	movaps xmm0, xmm5
	mulss xmm0, [eax+0x24]
	addss xmm0, [eax+0x18]
	mulss xmm0, [ebp-0x2c]
	mov ecx, [ebp-0x40]
	addss xmm0, [ecx]
	movss [ecx], xmm0
	movaps xmm1, xmm5
	mulss xmm1, [eax+0xc]
	mov ecx, [ebp-0x20]
	addss xmm1, [ecx+0x30]
	mulss xmm1, xmm2
	addss xmm1, xmm0
	mov ecx, [ebp-0x40]
	movss [ecx], xmm1
	movaps xmm0, xmm5
	mulss xmm0, [edx+0xc]
	mov ecx, [ebp-0x20]
	addss xmm0, [ecx+0x90]
	mulss xmm0, xmm3
	addss xmm1, xmm0
	mov ecx, [ebp-0x40]
	movss [ecx], xmm1
	movaps xmm0, xmm6
	mulss xmm0, [eax+0x28]
	addss xmm0, [eax+0x1c]
	mulss xmm0, [ebp-0x2c]
	addss xmm0, [ecx+0x4]
	movss [ecx+0x4], xmm0
	movaps xmm1, xmm6
	mulss xmm1, [eax+0x10]
	addss xmm1, [eax+0x4]
	mulss xmm1, xmm2
	addss xmm1, xmm0
	movss [ecx+0x4], xmm1
	movaps xmm0, xmm6
	mulss xmm0, [edx+0x10]
	addss xmm0, [edx+0x4]
	mulss xmm0, xmm3
	addss xmm1, xmm0
	movss [ecx+0x4], xmm1
	movaps xmm0, xmm7
	mulss xmm0, [eax+0x2c]
	addss xmm0, [eax+0x20]
	mulss xmm0, [ebp-0x2c]
	addss xmm0, [ecx+0x8]
	movss [ecx+0x8], xmm0
	movaps xmm1, xmm7
	mulss xmm1, [eax+0x14]
	addss xmm1, [eax+0x8]
	mulss xmm1, xmm2
	addss xmm1, xmm0
	movss [ecx+0x8], xmm1
	movaps xmm0, xmm7
	mulss xmm0, [edx+0x14]
	addss xmm0, [edx+0x8]
	mulss xmm3, xmm0
	addss xmm1, xmm3
	movss [ecx+0x8], xmm1
	lea edx, [edi+0x90]
	lea eax, [edi+0x30]
	movaps xmm1, xmm5
	mulss xmm1, [eax+0x24]
	addss xmm1, [eax+0x18]
	mulss xmm1, [ebp-0x24]
	addss xmm1, [ecx]
	movss [ecx], xmm1
	movaps xmm0, xmm5
	mulss xmm0, [eax+0xc]
	addss xmm0, [edi+0x30]
	mulss xmm0, [ebp-0x1c]
	addss xmm0, xmm1
	movss [ecx], xmm0
	mulss xmm5, [edx+0xc]
	addss xmm5, [edi+0x90]
	mulss xmm5, xmm4
	addss xmm0, xmm5
	movss [ecx], xmm0
	movaps xmm1, xmm6
	mulss xmm1, [eax+0x28]
	addss xmm1, [eax+0x1c]
	mulss xmm1, [ebp-0x24]
	addss xmm1, [ecx+0x4]
	movss [ecx+0x4], xmm1
	movaps xmm0, xmm6
	mulss xmm0, [eax+0x10]
	addss xmm0, [eax+0x4]
	mulss xmm0, [ebp-0x1c]
	addss xmm0, xmm1
	movss [ecx+0x4], xmm0
	mulss xmm6, [edx+0x10]
	addss xmm6, [edx+0x4]
	mulss xmm6, xmm4
	addss xmm0, xmm6
	movss [ecx+0x4], xmm0
	movaps xmm1, xmm7
	mulss xmm1, [eax+0x2c]
	addss xmm1, [eax+0x20]
	mulss xmm1, [ebp-0x24]
	addss xmm1, [ecx+0x8]
	movss [ecx+0x8], xmm1
	movaps xmm0, xmm7
	mulss xmm0, [eax+0x14]
	addss xmm0, [eax+0x8]
	mulss xmm0, [ebp-0x1c]
	addss xmm0, xmm1
FX_IntegrateVelocity_60:
	movss [ecx+0x8], xmm0
	mulss xmm7, [edx+0x14]
	addss xmm7, [edx+0x8]
	mulss xmm4, xmm7
	addss xmm0, xmm4
	movss [ecx+0x8], xmm0
FX_IntegrateVelocity_40:
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_IntegrateVelocity_10:
	lea edx, [ebx+0xc]
	movaps xmm4, xmm0
	mulss xmm4, [_float_0_50000000]
	movaps xmm0, xmm1
	mulss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	subss xmm0, xmm1
	mulss xmm4, xmm0
	subss xmm3, xmm2
	movaps xmm2, xmm3
	mulss xmm2, [ebp-0x2c]
	subss xmm2, xmm4
	mov ebx, [esi]
	test ebx, 0x1000000
	jz FX_IntegrateVelocity_50
	mov eax, [ebp-0x28]
	add eax, 0x60
	movaps xmm1, xmm5
	mov ecx, [ebp-0x28]
	mulss xmm1, [ecx+0xc]
	addss xmm1, [ecx]
	mulss xmm1, xmm2
	mov ecx, [ebp-0x3c]
	addss xmm1, [ecx]
	movss [ecx], xmm1
	movaps xmm0, xmm5
	mulss xmm0, [eax+0xc]
	mov ecx, [ebp-0x28]
	addss xmm0, [ecx+0x60]
	mulss xmm0, xmm4
	addss xmm1, xmm0
	mov ecx, [ebp-0x3c]
	movss [ecx], xmm1
	movaps xmm1, xmm6
	mov ecx, [ebp-0x28]
	mulss xmm1, [ecx+0x10]
	addss xmm1, [ecx+0x4]
	mulss xmm1, xmm2
	mov ecx, [ebp-0x3c]
	addss xmm1, [ecx+0x4]
	movss [ecx+0x4], xmm1
	movaps xmm0, xmm6
	mulss xmm0, [eax+0x10]
	addss xmm0, [eax+0x4]
	mulss xmm0, xmm4
	addss xmm1, xmm0
	movss [ecx+0x4], xmm1
	movaps xmm1, xmm7
	mov ecx, [ebp-0x28]
	mulss xmm1, [ecx+0x14]
	addss xmm1, [ecx+0x8]
	mulss xmm1, xmm2
	mov ecx, [ebp-0x3c]
	addss xmm1, [ecx+0x8]
	movss [ecx+0x8], xmm1
	movaps xmm0, xmm7
	mulss xmm0, [eax+0x14]
	addss xmm0, [eax+0x8]
	mulss xmm0, xmm4
	addss xmm1, xmm0
	movss [ecx+0x8], xmm1
FX_IntegrateVelocity_50:
	mov eax, [ebp-0x40]
	mov [esp+0x8], eax
	mov ecx, [ebp-0x3c]
	mov [esp+0x4], ecx
	mov [esp], edx
	movss [ebp-0x58], xmm2
	movss [ebp-0x78], xmm4
	movss [ebp-0x88], xmm5
	movss [ebp-0x98], xmm6
	movss [ebp-0xa8], xmm7
	call FX_OrientationPosToWorldPos
	and ebx, 0x2000000
	movss xmm2, dword [ebp-0x58]
	movss xmm4, dword [ebp-0x78]
	movss xmm5, dword [ebp-0x88]
	movss xmm6, dword [ebp-0x98]
	movss xmm7, dword [ebp-0xa8]
	jz FX_IntegrateVelocity_40
	mov edx, [ebp-0x28]
	add edx, 0x90
	mov eax, [ebp-0x28]
	add eax, 0x30
	movaps xmm0, xmm5
	mulss xmm0, [eax+0xc]
	mov ecx, [ebp-0x28]
	addss xmm0, [ecx+0x30]
	mulss xmm0, xmm2
	mov ecx, [ebp-0x40]
	addss xmm0, [ecx]
	movss [ecx], xmm0
	mulss xmm5, [edx+0xc]
	mov ecx, [ebp-0x28]
	addss xmm5, [ecx+0x90]
	mulss xmm5, xmm4
	addss xmm0, xmm5
	mov ecx, [ebp-0x40]
	movss [ecx], xmm0
	movaps xmm0, xmm6
	mulss xmm0, [eax+0x10]
	addss xmm0, [eax+0x4]
	mulss xmm0, xmm2
	addss xmm0, [ecx+0x4]
	movss [ecx+0x4], xmm0
	mulss xmm6, [edx+0x10]
	addss xmm6, [edx+0x4]
	mulss xmm6, xmm4
	addss xmm0, xmm6
	movss [ecx+0x4], xmm0
	movaps xmm0, xmm7
	mulss xmm0, [eax+0x14]
	addss xmm0, [eax+0x8]
	mulss xmm0, xmm2
	addss xmm0, [ecx+0x8]
	jmp FX_IntegrateVelocity_60
FX_IntegrateVelocity_30:
	mov eax, [ebp-0x20]
	add eax, 0x60
	movaps xmm0, xmm5
	mov ecx, [ebp-0x20]
	mulss xmm0, [ecx+0x24]
	addss xmm0, [ecx+0x18]
	mulss xmm0, [ebp-0x2c]
	mov ecx, [ebp-0x3c]
	addss xmm0, [ecx]
	movss [ecx], xmm0
	movaps xmm1, xmm5
	mov ecx, [ebp-0x20]
	mulss xmm1, [ecx+0xc]
	addss xmm1, [ecx]
	mulss xmm1, xmm2
	addss xmm1, xmm0
	mov ecx, [ebp-0x3c]
	movss [ecx], xmm1
	movaps xmm0, xmm5
	mulss xmm0, [eax+0xc]
	mov ecx, [ebp-0x20]
	addss xmm0, [ecx+0x60]
	mulss xmm0, xmm3
	addss xmm1, xmm0
	mov ecx, [ebp-0x3c]
	movss [ecx], xmm1
	movaps xmm0, xmm6
	mov ecx, [ebp-0x20]
	mulss xmm0, [ecx+0x28]
	addss xmm0, [ecx+0x1c]
	mulss xmm0, [ebp-0x2c]
	mov ecx, [ebp-0x3c]
	addss xmm0, [ecx+0x4]
	movss [ecx+0x4], xmm0
	movaps xmm1, xmm6
	mov ecx, [ebp-0x20]
	mulss xmm1, [ecx+0x10]
	addss xmm1, [ecx+0x4]
	mulss xmm1, xmm2
	addss xmm1, xmm0
	mov ecx, [ebp-0x3c]
	movss [ecx+0x4], xmm1
	movaps xmm0, xmm6
	mulss xmm0, [eax+0x10]
	addss xmm0, [eax+0x4]
	mulss xmm0, xmm3
	addss xmm1, xmm0
	movss [ecx+0x4], xmm1
	movaps xmm0, xmm7
	mov ecx, [ebp-0x20]
	mulss xmm0, [ecx+0x2c]
	addss xmm0, [ecx+0x20]
	mulss xmm0, [ebp-0x2c]
	mov ecx, [ebp-0x3c]
	addss xmm0, [ecx+0x8]
	movss [ecx+0x8], xmm0
	movaps xmm1, xmm7
	mov ecx, [ebp-0x20]
	mulss xmm1, [ecx+0x14]
	addss xmm1, [ecx+0x8]
	mulss xmm1, xmm2
	addss xmm1, xmm0
	mov ecx, [ebp-0x3c]
	movss [ecx+0x8], xmm1
	movaps xmm0, xmm7
	mulss xmm0, [eax+0x14]
	addss xmm0, [eax+0x8]
	mulss xmm0, xmm3
	addss xmm1, xmm0
	movss [ecx+0x8], xmm1
	lea eax, [edi+0x60]
	movaps xmm0, xmm5
	mulss xmm0, [edi+0x24]
	addss xmm0, [edi+0x18]
	mulss xmm0, [ebp-0x24]
	addss xmm0, [ecx]
	movss [ecx], xmm0
	movaps xmm1, xmm5
	mulss xmm1, [edi+0xc]
	addss xmm1, [edi]
	mulss xmm1, [ebp-0x1c]
	addss xmm1, xmm0
	movss [ecx], xmm1
	movaps xmm0, xmm5
	mulss xmm0, [eax+0xc]
	addss xmm0, [edi+0x60]
	mulss xmm0, xmm4
	addss xmm1, xmm0
	movss [ecx], xmm1
	movaps xmm0, xmm6
	mulss xmm0, [edi+0x28]
	addss xmm0, [edi+0x1c]
	mulss xmm0, [ebp-0x24]
	addss xmm0, [ecx+0x4]
	movss [ecx+0x4], xmm0
	movaps xmm1, xmm6
	mulss xmm1, [edi+0x10]
	addss xmm1, [edi+0x4]
	mulss xmm1, [ebp-0x1c]
	addss xmm1, xmm0
	movss [ecx+0x4], xmm1
	movaps xmm0, xmm6
	mulss xmm0, [eax+0x10]
	addss xmm0, [eax+0x4]
	mulss xmm0, xmm4
	addss xmm1, xmm0
	movss [ecx+0x4], xmm1
	movaps xmm0, xmm7
	mulss xmm0, [edi+0x2c]
	addss xmm0, [edi+0x20]
	mulss xmm0, [ebp-0x24]
	addss xmm0, [ecx+0x8]
	movss [ecx+0x8], xmm0
	movaps xmm1, xmm7
	mulss xmm1, [edi+0x14]
	addss xmm1, [edi+0x8]
	mulss xmm1, [ebp-0x1c]
	addss xmm1, xmm0
	movss [ecx+0x8], xmm1
	movaps xmm0, xmm7
	mulss xmm0, [eax+0x14]
	addss xmm0, [eax+0x8]
	mulss xmm0, xmm4
	addss xmm1, xmm0
	movss [ecx+0x8], xmm1
	jmp FX_IntegrateVelocity_70
FX_IntegrateVelocity_20:
	lea eax, [edi+edi*2]
	shl eax, 0x5
	mov edi, [ebp-0x28]
	add edi, eax
	lea edx, [ebx+0xc]
	movss xmm3, dword [ebp-0x2c]
	mulss xmm3, [_float_0_50000000]
	movaps xmm0, xmm2
	mulss xmm0, xmm2
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	subss xmm0, xmm1
	mulss xmm3, xmm0
	subss xmm2, xmm4
	mulss xmm2, [ebp-0x2c]
	subss xmm2, xmm3
	mov ebx, [esi]
	test ebx, 0x1000000
	jz FX_IntegrateVelocity_80
	lea eax, [edi+0x60]
	movaps xmm1, xmm5
	mulss xmm1, [edi+0xc]
	addss xmm1, [edi]
	mulss xmm1, xmm2
	mov ecx, [ebp-0x3c]
	addss xmm1, [ecx]
	movss [ecx], xmm1
	movaps xmm0, xmm5
	mulss xmm0, [eax+0xc]
	addss xmm0, [edi+0x60]
	mulss xmm0, xmm3
	addss xmm1, xmm0
	movss [ecx], xmm1
	movaps xmm1, xmm6
	mulss xmm1, [edi+0x10]
	addss xmm1, [edi+0x4]
	mulss xmm1, xmm2
	addss xmm1, [ecx+0x4]
	movss [ecx+0x4], xmm1
	movaps xmm0, xmm6
	mulss xmm0, [eax+0x10]
	addss xmm0, [eax+0x4]
	mulss xmm0, xmm3
	addss xmm1, xmm0
	movss [ecx+0x4], xmm1
	movaps xmm1, xmm7
	mulss xmm1, [edi+0x14]
	addss xmm1, [edi+0x8]
	mulss xmm1, xmm2
	addss xmm1, [ecx+0x8]
	movss [ecx+0x8], xmm1
	movaps xmm0, xmm7
	mulss xmm0, [eax+0x14]
	addss xmm0, [eax+0x8]
	mulss xmm0, xmm3
	addss xmm1, xmm0
	movss [ecx+0x8], xmm1
FX_IntegrateVelocity_80:
	mov eax, [ebp-0x40]
	mov [esp+0x8], eax
	mov ecx, [ebp-0x3c]
	mov [esp+0x4], ecx
	mov [esp], edx
	movss [ebp-0x58], xmm2
	movss [ebp-0x68], xmm3
	movss [ebp-0x88], xmm5
	movss [ebp-0x98], xmm6
	movss [ebp-0xa8], xmm7
	call FX_OrientationPosToWorldPos
	and ebx, 0x2000000
	movss xmm2, dword [ebp-0x58]
	movss xmm3, dword [ebp-0x68]
	movss xmm5, dword [ebp-0x88]
	movss xmm6, dword [ebp-0x98]
	movss xmm7, dword [ebp-0xa8]
	jz FX_IntegrateVelocity_40
	lea edx, [edi+0x90]
	lea eax, [edi+0x30]
	movaps xmm0, xmm5
	mulss xmm0, [eax+0xc]
	addss xmm0, [edi+0x30]
	mulss xmm0, xmm2
	mov ecx, [ebp-0x40]
	addss xmm0, [ecx]
	movss [ecx], xmm0
	mulss xmm5, [edx+0xc]
	addss xmm5, [edi+0x90]
	mulss xmm5, xmm3
	addss xmm0, xmm5
	movss [ecx], xmm0
	movaps xmm0, xmm6
	mulss xmm0, [eax+0x10]
	addss xmm0, [eax+0x4]
	mulss xmm0, xmm2
	addss xmm0, [ecx+0x4]
	movss [ecx+0x4], xmm0
	mulss xmm6, [edx+0x10]
	addss xmm6, [edx+0x4]
	mulss xmm6, xmm3
	addss xmm0, xmm6
	movss [ecx+0x4], xmm0
	movaps xmm0, xmm7
	mulss xmm0, [eax+0x14]
	addss xmm0, [eax+0x8]
	mulss xmm0, xmm2
	addss xmm0, [ecx+0x8]
	movss [ecx+0x8], xmm0
	mulss xmm7, [edx+0x14]
	addss xmm7, [edx+0x8]
	mulss xmm3, xmm7
	addss xmm0, xmm3
	movss [ecx+0x8], xmm0
	jmp FX_IntegrateVelocity_40


;FX_NextElementPosition(FxUpdateElem*, int, int)
FX_NextElementPosition:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, eax
	mov [ebp-0x2c], edx
	mov edi, ecx
	mov edx, [eax+0x60]
	mov eax, [edx]
	mov [ebp-0x24], eax
	mov eax, [edx+0x4]
	mov [ebp-0x20], eax
	mov eax, [edx+0x8]
	mov [ebp-0x1c], eax
	lea esi, [ebx+0x68]
	mov ecx, [ebx+0x48]
	movss xmm2, dword [ebx+0x44]
	lea edx, [ebp-0x24]
	mov eax, edi
	sub eax, ecx
	cvtsi2ss xmm1, eax
	mov eax, [ebp-0x2c]
	sub eax, ecx
	cvtsi2ss xmm0, eax
	mov ecx, esi
	divss xmm1, xmm2
	divss xmm0, xmm2
	mov eax, ebx
	call FX_IntegrateVelocity
	sub edi, [ebp-0x2c]
	cvtsi2ss xmm2, edi
	mulss xmm2, [_float_0_00100000]
	mov eax, [ebx+0x64]
	movaps xmm0, xmm2
	mulss xmm0, [eax]
	addss xmm0, [ebx+0x68]
	movss [ebx+0x68], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x4]
	addss xmm0, [esi+0x4]
	movss [esi+0x4], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x8]
	addss xmm0, [esi+0x8]
	movss [esi+0x8], xmm0
	mov eax, [ebx]
	mov ecx, [eax]
	mov eax, [ebx+0x4]
	lea edx, [eax*4]
	shl eax, 0x8
	sub eax, edx
	add eax, [ecx+0x1c]
	mov ecx, [ebx+0x3c]
	mov edx, fx_randomTable
	movss xmm1, dword [edx+ecx*4+0x3c]
	mulss xmm1, [eax+0x9c]
	addss xmm1, [eax+0x98]
	mulss xmm1, [_float_800_00000000]
	mulss xmm1, xmm2
	mov eax, [ebx+0x64]
	movss xmm0, dword [eax+0x8]
	subss xmm0, xmm1
	movss [eax+0x8], xmm0
	mulss xmm2, xmm1
	mulss xmm2, [_float__0_50000000]
	addss xmm2, [ebx+0x70]
	movss [ebx+0x70], xmm2
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;FX_UpdateElementPosition_CollidingStep(FxSystem*, FxUpdateElem*, int, int, float*)
FX_UpdateElementPosition_CollidingStep:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xdc
	mov [ebp-0x98], eax
	mov esi, edx
	mov [ebp-0x9c], ecx
	mov eax, [edx]
	mov ecx, [eax]
	mov eax, [edx+0x4]
	lea edx, [eax*4]
	mov ebx, eax
	shl ebx, 0x8
	sub ebx, edx
	add ebx, [ecx+0x1c]
	cmp byte [ebx+0xfa], 0x0
	jz FX_UpdateElementPosition_CollidingStep_10
	mov dword [ebp-0x94], 0xc11
FX_UpdateElementPosition_CollidingStep_40:
	lea edi, [esi+0x68]
	lea eax, [esi+0xc]
	mov [ebp-0xa8], eax
	mov edx, [ebp-0x9c]
FX_UpdateElementPosition_CollidingStep_120:
	mov byte [esi+0x74], 0x0
	mov ecx, [ebp+0x8]
	mov eax, esi
	call FX_NextElementPosition
	mov edx, [ebp-0x94]
	mov [esp+0x18], edx
	mov dword [esp+0x14], 0x0
	lea eax, [ebx+0xcc]
	mov [esp+0x10], eax
	lea eax, [ebx+0xc0]
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov ecx, [ebp+0xc]
	mov [esp+0x4], ecx
	lea eax, [ebp-0x74]
	mov [esp], eax
	call CM_BoxTrace
	cmp word [ebp-0x4c], 0x0
	jnz FX_UpdateElementPosition_CollidingStep_20
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0x74]
	jnz FX_UpdateElementPosition_CollidingStep_30
	jp FX_UpdateElementPosition_CollidingStep_30
FX_UpdateElementPosition_CollidingStep_20:
	lea edx, [edi+0x4]
	mov [ebp-0x84], edx
	lea ecx, [edi+0x8]
	mov [ebp-0x80], ecx
FX_UpdateElementPosition_CollidingStep_110:
	mov eax, [esi+0x60]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	lea eax, [esi+0xc]
	mov [esp], eax
	call FX_OrientationPosFromWorldPos
	mov eax, [edi]
	mov edx, [ebp+0xc]
	mov [edx], eax
	mov ecx, [ebp-0x84]
	mov eax, [ecx]
	mov [edx+0x4], eax
	mov edx, [ebp-0x80]
	mov eax, [edx]
	mov ecx, [ebp+0xc]
	mov [ecx+0x8], eax
	mov eax, 0x1
FX_UpdateElementPosition_CollidingStep_180:
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_UpdateElementPosition_CollidingStep_10:
	mov dword [ebp-0x94], 0x811
	jmp FX_UpdateElementPosition_CollidingStep_40
FX_UpdateElementPosition_CollidingStep_30:
	movss xmm4, dword [ebp-0x68]
	ucomiss xmm4, [_float_0_69999999]
	jbe FX_UpdateElementPosition_CollidingStep_50
	mov byte [esi+0x74], 0x1
FX_UpdateElementPosition_CollidingStep_50:
	mov eax, [esi]
	mov ecx, [eax]
	mov eax, [esi+0x4]
	lea edx, [eax*4]
	mov ebx, eax
	shl ebx, 0x8
	sub ebx, edx
	add ebx, [ecx+0x1c]
	movss xmm2, dword [ebp-0x74]
	mov eax, [ebp+0xc]
	movss xmm1, dword [eax]
	movss xmm0, dword [edi]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [edi], xmm1
	lea edx, [edi+0x4]
	mov [ebp-0x84], edx
	movss xmm1, dword [eax+0x4]
	movss xmm0, dword [edi+0x4]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [edi+0x4], xmm1
	lea ecx, [edi+0x8]
	mov [ebp-0x80], ecx
	movss xmm1, dword [eax+0x8]
	movss xmm0, dword [edi+0x8]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm1, xmm2
	movss [edi+0x8], xmm1
	mov eax, [ebp+0x8]
	sub eax, [ebp-0x9c]
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x74]
	movss [esp], xmm0
	movss [ebp-0xb8], xmm4
	call floorf
	fstp dword [ebp-0xa0]
	cvttss2si eax, [ebp-0xa0]
	add eax, [ebp-0x9c]
	mov [ebp-0x7c], eax
	test byte [ebx+0x1], 0x2
	movss xmm4, dword [ebp-0xb8]
	jnz FX_UpdateElementPosition_CollidingStep_60
	cmp eax, [esi+0x4c]
	jnz FX_UpdateElementPosition_CollidingStep_70
FX_UpdateElementPosition_CollidingStep_60:
	mov ebx, [ebx+0xd8]
	test ebx, ebx
	jz FX_UpdateElementPosition_CollidingStep_80
	mov eax, [ebp-0x70]
	mov [ebp-0x48], eax
	mov eax, [ebp-0x6c]
	mov [ebp-0x44], eax
	movss [ebp-0x40], xmm4
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	lea eax, [ebp-0x3c]
	mov [esp+0x4], eax
	lea eax, [ebp-0x48]
	mov [esp], eax
	call Vec3Basis_RightHanded
	mov dword [esp+0x24], 0x3ff
	mov eax, [esi]
	movzx eax, word [eax+0x14]
	mov [esp+0x20], eax
	mov dword [esp+0x1c], 0xff
	mov dword [esp+0x18], 0x7ff
	mov dword [esp+0x14], 0xfff
	lea edx, [ebp-0x48]
	mov [esp+0x10], edx
	mov [esp+0xc], edi
	mov ecx, [ebp-0x7c]
	mov [esp+0x8], ecx
	mov [esp+0x4], ebx
	mov eax, [ebp-0x98]
	mov [esp], eax
	call FX_SpawnEffect
	mov ebx, eax
	test eax, eax
	jz FX_UpdateElementPosition_CollidingStep_80
	mov eax, [eax+0x4]
	sub ax, 0x1
	jnz FX_UpdateElementPosition_CollidingStep_90
	mov [esp+0x4], ebx
	mov edx, [ebp-0x98]
	mov [esp], edx
	call FX_EffectNoLongerReferenced
FX_UpdateElementPosition_CollidingStep_90:
	mov eax, [ebx+0x4]
	sub eax, 0x1
	mov [ebx+0x4], eax
	mov eax, [ebx+0x4]
FX_UpdateElementPosition_CollidingStep_80:
	mov eax, [esi]
	mov ecx, [eax]
	mov eax, [esi+0x4]
	lea edx, [eax*4]
	mov ebx, eax
	shl ebx, 0x8
	sub ebx, edx
	add ebx, [ecx+0x1c]
	test byte [ebx+0x1], 0x2
	jnz FX_UpdateElementPosition_CollidingStep_100
	mov eax, [ebp+0x8]
	cmp [ebp-0x7c], eax
	jz FX_UpdateElementPosition_CollidingStep_110
	mov edx, [ebp-0x7c]
	mov [ebp-0x9c], edx
	jmp FX_UpdateElementPosition_CollidingStep_120
FX_UpdateElementPosition_CollidingStep_70:
	mov edx, [esi+0x64]
	mov eax, [esi+0x3c]
	mov ecx, fx_randomTable
	movss xmm0, dword [ecx+eax*4+0x3c]
	mulss xmm0, [ebx+0x9c]
	addss xmm0, [ebx+0x98]
	mulss xmm0, [_float_0_80000001]
	mov eax, [ebp+0x8]
	sub eax, [ebp-0x7c]
	cvtsi2ss xmm1, eax
	mulss xmm0, xmm1
	addss xmm0, [edx+0x8]
	movss [edx+0x8], xmm0
	lea eax, [ebp-0x24]
	mov [esp+0x18], eax
	mov eax, [esi+0x64]
	mov [esp+0x14], eax
	mov eax, [ebp-0xa8]
	mov [esp+0x10], eax
	mov eax, [ebp-0x7c]
	sub eax, [esi+0x48]
	cvtsi2ss xmm0, eax
	movss [esp+0xc], xmm0
	mov eax, [esi+0x44]
	mov [esp+0x8], eax
	mov eax, [esi+0x3c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call FX_GetVelocityAtTime
	mov eax, [esi+0x3c]
	mov edx, fx_randomTable
	movss xmm0, dword [edx+eax*4+0x40]
	mulss xmm0, [ebx+0xa4]
	addss xmm0, [ebx+0xa0]
	movss xmm1, dword [ebp-0x24]
	movaps xmm2, xmm0
	mulss xmm2, xmm1
	movss [ebp-0x88], xmm2
	movss xmm3, dword [ebp-0x20]
	movaps xmm2, xmm0
	mulss xmm2, xmm3
	movss [ebp-0x8c], xmm2
	movss xmm2, dword [ebp-0x1c]
	mulss xmm0, xmm2
	movss [ebp-0x90], xmm0
	mov ebx, [ebx+0xd8]
	test ebx, ebx
	jz FX_UpdateElementPosition_CollidingStep_130
	mulss xmm1, xmm1
	mulss xmm3, xmm3
	addss xmm1, xmm3
	mulss xmm2, xmm2
	addss xmm1, xmm2
	ucomiss xmm1, [_float_1_00000000]
	ja FX_UpdateElementPosition_CollidingStep_140
FX_UpdateElementPosition_CollidingStep_130:
	mov ecx, [ebp-0x7c]
	cmp [ebp-0x9c], ecx
	jnz FX_UpdateElementPosition_CollidingStep_150
	mov eax, [ebp-0x9c]
	add eax, 0x1
	mov [ebp-0x7c], eax
	movss xmm0, dword [ebp-0x88]
	mulss xmm0, xmm0
	movss xmm1, dword [ebp-0x8c]
	mulss xmm1, xmm1
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x90]
	mulss xmm1, xmm1
	addss xmm0, xmm1
	ucomiss xmm0, [_float_1_00000000]
	jbe FX_UpdateElementPosition_CollidingStep_160
FX_UpdateElementPosition_CollidingStep_150:
	movss xmm4, dword [ebp-0x68]
FX_UpdateElementPosition_CollidingStep_170:
	movss xmm3, dword [ebp-0x70]
	movss xmm2, dword [ebp-0x6c]
	movss xmm0, dword [ebp-0x88]
	mulss xmm0, xmm3
	movss xmm1, dword [ebp-0x8c]
	mulss xmm1, xmm2
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x90]
	mulss xmm1, xmm4
	addss xmm0, xmm1
	mulss xmm0, [_float__2_00000000]
	mulss xmm2, xmm0
	addss xmm2, [ebp-0x8c]
	subss xmm2, [ebp-0x20]
	movss [ebp-0x8c], xmm2
	mulss xmm4, xmm0
	addss xmm4, [ebp-0x90]
	movaps xmm1, xmm4
	subss xmm1, [ebp-0x1c]
	movss [ebp-0x90], xmm1
	mov eax, [esi+0x64]
	mulss xmm3, xmm0
	addss xmm3, [ebp-0x88]
	movaps xmm2, xmm3
	subss xmm2, [ebp-0x24]
	movss [ebp-0x88], xmm2
	addss xmm2, [eax]
	movss [eax], xmm2
	movss xmm0, dword [ebp-0x8c]
	addss xmm0, [eax+0x4]
	movss [eax+0x4], xmm0
	addss xmm1, [eax+0x8]
	movss [eax+0x8], xmm1
	mov eax, [esi+0x60]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov eax, [ebp-0xa8]
	mov [esp], eax
	call FX_OrientationPosFromWorldPos
	mov eax, [edi]
	mov edx, [ebp+0xc]
	mov [edx], eax
	mov ecx, [ebp-0x84]
	mov eax, [ecx]
	mov [edx+0x4], eax
	mov edx, [ebp-0x80]
	mov eax, [edx]
	mov ecx, [ebp+0xc]
	mov [ecx+0x8], eax
	jmp FX_UpdateElementPosition_CollidingStep_80
FX_UpdateElementPosition_CollidingStep_160:
	jp FX_UpdateElementPosition_CollidingStep_150
	movss xmm4, dword [ebp-0x68]
	ucomiss xmm4, [_float_0_69999999]
	jbe FX_UpdateElementPosition_CollidingStep_170
	cvtsi2ss xmm0, eax
	cvtsi2ss xmm1, dword [esi+0x48]
	subss xmm0, xmm1
	mulss xmm0, [_float_255_00000000]
	divss xmm0, dword [esi+0x44]
	subss xmm0, [_float_0_25000000]
	movss [esp], xmm0
	call ceilf
	fstp dword [ebp-0xa4]
	cvttss2si eax, [ebp-0xa4]
	mov [esi+0x8], eax
	mov edx, [ebp+0x8]
	mov [ebp-0x7c], edx
	jmp FX_UpdateElementPosition_CollidingStep_80
FX_UpdateElementPosition_CollidingStep_100:
	xor eax, eax
	jmp FX_UpdateElementPosition_CollidingStep_180
FX_UpdateElementPosition_CollidingStep_140:
	mov eax, [ebp-0x70]
	mov [ebp-0x48], eax
	mov eax, [ebp-0x6c]
	mov [ebp-0x44], eax
	mov eax, [ebp-0x68]
	mov [ebp-0x40], eax
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	lea eax, [ebp-0x3c]
	mov [esp+0x4], eax
	lea eax, [ebp-0x48]
	mov [esp], eax
	call Vec3Basis_RightHanded
	mov dword [esp+0x24], 0x3ff
	mov eax, [esi]
	movzx eax, word [eax+0x14]
	mov [esp+0x20], eax
	mov dword [esp+0x1c], 0xff
	mov dword [esp+0x18], 0x7ff
	mov dword [esp+0x14], 0xfff
	lea edx, [ebp-0x48]
	mov [esp+0x10], edx
	mov [esp+0xc], edi
	mov ecx, [ebp-0x7c]
	mov [esp+0x8], ecx
	mov [esp+0x4], ebx
	mov eax, [ebp-0x98]
	mov [esp], eax
	call FX_SpawnEffect
	mov ebx, eax
	test eax, eax
	jz FX_UpdateElementPosition_CollidingStep_130
	mov eax, [eax+0x4]
	sub ax, 0x1
	jnz FX_UpdateElementPosition_CollidingStep_190
	mov [esp+0x4], ebx
	mov edx, [ebp-0x98]
	mov [esp], edx
	call FX_EffectNoLongerReferenced
FX_UpdateElementPosition_CollidingStep_190:
	mov eax, [ebx+0x4]
	sub eax, 0x1
	mov [ebx+0x4], eax
	mov eax, [ebx+0x4]
	jmp FX_UpdateElementPosition_CollidingStep_130


;FX_UpdateElement(FxSystem*, FxEffect*, FxElem*, int, int)
FX_UpdateElement:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1bc
	mov [ebp-0x168], eax
	mov [ebp-0x16c], ecx
	mov eax, ecx
	add eax, 0x18
	mov [ebp-0x160], eax
	movzx eax, byte [ecx+0x1]
	mov [ebp-0x15c], eax
	mov edi, [ecx+0x8]
	movzx ebx, byte [ecx+0x2]
	movzx ecx, byte [ecx]
	mov [ebp-0x180], edx
	mov [ebp-0x148], edx
	mov eax, [ebp+0x8]
	mov [ebp-0xf8], eax
	mov eax, [ebp+0xc]
	mov [ebp-0xf4], eax
	mov [ebp-0x100], edi
	cmp edi, eax
	jle FX_UpdateElement_10
	mov dword [ebp-0x164], 0x1
	mov eax, [ebp-0x164]
FX_UpdateElement_180:
	add esp, 0x1bc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_UpdateElement_10:
	mov esi, ecx
	mov [ebp-0x144], ecx
	mov [ebp-0x140], ebx
	movzx eax, word [edx+0x12]
	lea eax, [edi+eax]
	mov edx, [ebp-0x15c]
	lea ebx, [edx+edx*8]
	lea ebx, [edx+ebx*4]
	lea ebx, [eax+ebx*8]
	mov edx, 0x11a3019b
	mov eax, ebx
	mul edx
	mov eax, ebx
	sub eax, edx
	shr eax, 1
	add edx, eax
	shr edx, 0x8
	mov ecx, edx
	shl ecx, 0x5
	mov eax, edx
	shl eax, 0x9
	sub eax, ecx
	sub eax, edx
	sub ebx, eax
	movzx ebx, bx
	mov [ebp-0x10c], ebx
	mov edx, [ebp-0x15c]
	mov [ebp-0x108], edx
	mov eax, [ebp-0x180]
	mov edx, [eax]
	lea eax, [esi*4]
	mov ecx, esi
	shl ecx, 0x8
	sub ecx, eax
	add ecx, [edx+0x1c]
	mov eax, [ecx+0x34]
	add eax, 0x1
	mov edx, fx_randomTable
	movzx edx, word [edx+ebx*4+0x44]
	imul eax, edx
	sar eax, 0x10
	add eax, [ecx+0x30]
	lea ebx, [eax+edi]
	mov [ebp-0xfc], ebx
	cvtsi2ss xmm0, eax
	movss [ebp-0x104], xmm0
	mov edx, [ebp-0x160]
	mov [ebp-0xe8], edx
	cmp [ebp-0xf4], ebx
	jl FX_UpdateElement_20
	mov edx, [ebp-0x180]
	mov eax, [edx]
	mov ecx, [eax+0x1c]
	lea edx, [esi*4]
	mov eax, esi
	shl eax, 0x8
	sub eax, edx
	mov eax, [eax+ecx+0xe0]
	test eax, eax
	jz FX_UpdateElement_30
	mov [ebp-0xf4], ebx
	mov edx, ebx
	mov ecx, [ebp-0x100]
	cmp [ebp-0xf8], ecx
	mov eax, [ebp-0xf8]
	cmovl eax, ecx
	mov [ebp-0xf8], eax
	cmp eax, edx
	jnz FX_UpdateElement_40
FX_UpdateElement_50:
	xor eax, eax
	cmp edx, [ebp-0xfc]
	setl al
	mov [ebp-0x164], eax
	add esp, 0x1bc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_UpdateElement_20:
	mov edx, [ebp-0xf4]
	mov ecx, [ebp-0x100]
	cmp [ebp-0xf8], ecx
	mov eax, [ebp-0xf8]
	cmovl eax, ecx
	mov [ebp-0xf8], eax
	cmp eax, edx
	jz FX_UpdateElement_50
FX_UpdateElement_40:
	sub edx, ecx
	cvtsi2ss xmm0, edx
	movss [ebp-0xf0], xmm0
	divss xmm0, dword [ebp-0x104]
	movss [ebp-0xec], xmm0
	mov edx, [ebp-0x148]
	lea eax, [ebp-0x13c]
	mov [esp+0x10], eax
	mov eax, [ebp-0x10c]
	mov [esp+0xc], eax
	lea eax, [edx+0x44]
	mov [esp+0x8], eax
	lea eax, [edx+0x28]
	mov [esp+0x4], eax
	mov ecx, [edx]
	mov eax, [ebp-0x144]
	lea edx, [eax*4]
	shl eax, 0x8
	sub eax, edx
	add eax, [ecx+0x1c]
	mov [esp], eax
	call FX_GetOrientation
	mov dword [ebp-0x164], 0x1
	mov edx, [ebp-0x16c]
	mov eax, [edx+0x18]
	mov [ebp-0x24], eax
	mov edx, [ebp-0x160]
	mov eax, [edx+0x4]
	mov [ebp-0x20], eax
	mov eax, [edx+0x8]
	mov [ebp-0x1c], eax
	mov eax, [ebp-0x16c]
	mov edx, [eax+0x18]
	add eax, 0xc
	mov [ebp-0xe4], eax
	mov [ebp-0xd0], edx
	mov byte [ebp-0xd4], 0x0
	mov edx, [ebp-0x148]
	mov [ebp-0x180], edx
	mov edx, [edx]
	mov esi, [ebp-0x144]
	lea eax, [esi*4]
	mov ecx, esi
	shl ecx, 0x8
	sub ecx, eax
	add ecx, [edx+0x1c]
	cmp byte [ecx+0xb0], 0x5
	jz FX_UpdateElement_60
	mov eax, [ecx]
FX_UpdateElement_190:
	test ah, 0x1
	jz FX_UpdateElement_70
	cmp dword [ebp-0x140], 0xff
	jz FX_UpdateElement_80
	lea eax, [ebp-0xe0]
	mov [esp+0x8], eax
	mov eax, [ebp-0xe8]
	mov [esp+0x4], eax
	lea eax, [ebp-0x13c]
	mov [esp], eax
	call FX_OrientationPosToWorldPos
FX_UpdateElement_230:
	mov dword [ebp-0x164], 0x1
	mov edx, [ebp-0x148]
	mov [ebp-0x180], edx
	mov esi, [ebp-0x144]
	mov eax, edx
FX_UpdateElement_200:
	mov edx, [eax]
	lea eax, [esi*4]
	mov edi, esi
	shl edi, 0x8
	sub edi, eax
	add edi, [edx+0x1c]
	mov eax, [edi+0xe0]
	test eax, eax
	jz FX_UpdateElement_90
	mov esi, [ebp-0x180]
	add esi, 0x60
	lea ebx, [ebp-0xcc]
	mov [esp+0x10], ebx
	mov eax, [ebp-0x10c]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov edx, [ebp-0x180]
	add edx, 0x28
	mov [ebp-0x17c], edx
	mov [esp+0x4], edx
	mov [esp], edi
	call FX_GetOrientation
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov [esp], ebx
	call FX_OrientationPosToWorldPos
	mov eax, [edi]
	and eax, 0xc0
	jnz FX_UpdateElement_100
	pxor xmm4, xmm4
	movss [ebp-0x40], xmm4
	movss [ebp-0x3c], xmm4
	movss [ebp-0x38], xmm4
	mov dword [ebp-0x34], 0x3f800000
	mov ecx, [ebp-0x180]
FX_UpdateElement_350:
	mov eax, [ebp-0xe0]
	mov [ebp-0x4c], eax
	mov eax, [ebp-0xdc]
	mov [ebp-0x48], eax
	mov eax, [ebp-0xd8]
	mov [ebp-0x44], eax
	add ecx, 0x44
	mov eax, [edi]
	and eax, 0xc0
	jnz FX_UpdateElement_110
	pxor xmm4, xmm4
	movss [ebp-0x5c], xmm4
	movss [ebp-0x58], xmm4
	movss [ebp-0x54], xmm4
	movss xmm5, dword [_float_1_00000000]
	movss [ebp-0x50], xmm5
FX_UpdateElement_320:
	mov eax, [ebp-0x16c]
	movzx ebx, byte [eax+0x3]
	movss xmm3, dword [ebp-0x4c]
	subss xmm3, [ebp-0x30]
	movss [ebp-0x9c], xmm3
	lea edx, [ebp-0x98]
	movss xmm1, dword [ebp-0x48]
	subss xmm1, [ebp-0x2c]
	movss [ebp-0x98], xmm1
	lea eax, [ebp-0x94]
	movss xmm0, dword [ebp-0x44]
	subss xmm0, [ebp-0x28]
	movss [ebp-0x94], xmm0
	movaps xmm2, xmm3
	mulss xmm2, xmm3
	mulss xmm1, xmm1
	addss xmm2, xmm1
	mulss xmm0, xmm0
	addss xmm2, xmm0
	sqrtss xmm2, xmm2
	movss [ebp-0x14c], xmm2
	movss xmm2, dword [_data16_80000000]
	movss xmm0, dword [ebp-0x14c]
	xorps xmm0, xmm2
	ucomiss xmm0, xmm4
	jb FX_UpdateElement_120
	movaps xmm1, xmm5
FX_UpdateElement_380:
	mulss xmm3, xmm1
	movss [ebp-0x9c], xmm3
	movaps xmm0, xmm1
	mulss xmm0, [edx]
	movss [edx], xmm0
	mulss xmm1, [eax]
	movss [eax], xmm1
	movss xmm1, dword [ebp-0x14c]
	ucomiss xmm1, xmm4
	jnz FX_UpdateElement_130
	jp FX_UpdateElement_130
	movzx eax, bl
FX_UpdateElement_290:
	mov edx, [ebp-0x16c]
	mov [edx+0x3], al
	mov eax, [ebp-0xf4]
	cmp eax, [ebp-0xfc]
	jz FX_UpdateElement_140
	mov eax, [ebp-0x148]
	mov [ebp-0x180], eax
	mov esi, [ebp-0x144]
	mov edx, eax
FX_UpdateElement_240:
	lea eax, [esi*4]
	mov edi, esi
	shl edi, 0x8
	sub edi, eax
	mov eax, [edx]
	add edi, [eax+0x1c]
	mov ebx, [ebp-0x164]
	test ebx, ebx
	jnz FX_UpdateElement_150
	mov ecx, [edi+0xdc]
	test ecx, ecx
	jz FX_UpdateElement_160
	lea ebx, [ebp-0xcc]
	mov [esp+0x10], ebx
	mov eax, [ebp-0x10c]
	mov [esp+0xc], eax
	mov eax, edx
	add eax, 0x60
	mov [esp+0x8], eax
	sub eax, 0x38
	mov [esp+0x4], eax
	mov [esp], edi
	call FX_GetOrientation
	lea esi, [ebp-0x30]
	mov [esp+0x8], esi
	mov eax, [ebp-0xe8]
	mov [esp+0x4], eax
	mov [esp], ebx
	call FX_OrientationPosToWorldPos
	mov dword [esp+0x24], 0x3ff
	mov eax, [ebp-0x148]
	movzx eax, word [eax+0x14]
	mov [esp+0x20], eax
	mov dword [esp+0x1c], 0xff
	mov dword [esp+0x18], 0x7ff
	mov dword [esp+0x14], 0xfff
	lea eax, [ebp-0xc0]
	mov [esp+0x10], eax
	mov [esp+0xc], esi
	mov eax, [ebp-0xf8]
	mov [esp+0x8], eax
	mov eax, [edi+0xdc]
	mov [esp+0x4], eax
	mov eax, [ebp-0x168]
	mov [esp], eax
	call FX_SpawnEffect
	mov ebx, eax
	test eax, eax
	jz FX_UpdateElement_160
	mov eax, [eax+0x4]
	sub ax, 0x1
	jz FX_UpdateElement_170
FX_UpdateElement_440:
	mov eax, [ebx+0x4]
	sub eax, 0x1
	mov [ebx+0x4], eax
	mov eax, [ebx+0x4]
	mov eax, [ebp-0x164]
	jmp FX_UpdateElement_180
FX_UpdateElement_60:
	mov eax, [ecx]
	test eax, 0x8000000
	jz FX_UpdateElement_190
	mov eax, [ebp-0x180]
	jmp FX_UpdateElement_200
FX_UpdateElement_150:
	mov eax, [ebp-0x140]
	cmp eax, 0xff
	jz FX_UpdateElement_210
FX_UpdateElement_360:
	mov edx, [ebp-0x16c]
	mov [edx+0x2], al
	mov eax, [ebp-0x164]
	add esp, 0x1bc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_UpdateElement_70:
	test eax, 0x6000000
	jnz FX_UpdateElement_220
	mov esi, [ebp-0x100]
	movss xmm2, dword [ebp-0x104]
	lea eax, [ebp-0x148]
	lea ecx, [ebp-0xe0]
	mov edx, [ebp-0xe8]
	mov ebx, [ebp-0xf4]
	sub ebx, esi
	cvtsi2ss xmm1, ebx
	mov ebx, [ebp-0xf8]
	sub ebx, esi
	cvtsi2ss xmm0, ebx
	divss xmm1, xmm2
	divss xmm0, xmm2
	call FX_IntegrateVelocity
	jmp FX_UpdateElement_230
FX_UpdateElement_140:
	mov eax, [ebp-0x148]
	mov [ebp-0x180], eax
	mov esi, [ebp-0x144]
FX_UpdateElement_30:
	mov dword [ebp-0x164], 0x0
	mov edx, [ebp-0x180]
	jmp FX_UpdateElement_240
FX_UpdateElement_90:
	mov edx, [ebp-0x180]
	jmp FX_UpdateElement_240
FX_UpdateElement_130:
	mov eax, [ebp-0x148]
	mov ecx, [eax]
	mov eax, [ebp-0x144]
	lea edx, [eax*4]
	mov esi, eax
	shl esi, 0x8
	sub esi, edx
	add esi, [ecx+0x1c]
	mov edx, [ebp-0x10c]
	mov eax, fx_randomTable
	movss xmm0, dword [eax+edx*4+0x50]
	movss [ebp-0x158], xmm0
	mulss xmm0, [esi+0xe8]
	movss [ebp-0x158], xmm0
	addss xmm0, [esi+0xe4]
	movss [ebp-0x158], xmm0
	addss xmm0, [esi+0xec]
	movss [ebp-0x158], xmm0
	addss xmm0, [esi+0xf0]
	movss [ebp-0x154], xmm0
	movzx eax, bl
	cvtsi2ss xmm1, eax
	mulss xmm0, xmm1
	mulss xmm0, [_float_0_00390625]
	movss [ebp-0x150], xmm0
	xor dword [ebp-0x150], 0x80000000
	lea edi, [ebp-0x9c]
	jmp FX_UpdateElement_250
FX_UpdateElement_280:
	mov eax, [ebx+0x4]
	sub eax, 0x1
	mov [ebx+0x4], eax
	mov eax, [ebx+0x4]
FX_UpdateElement_270:
	mov eax, [ebp-0x148]
	mov ecx, [eax]
	mov eax, [ebp-0x144]
	lea edx, [eax*4]
	mov esi, eax
	shl esi, 0x8
	sub esi, edx
	add esi, [ecx+0x1c]
FX_UpdateElement_250:
	call ms_rand
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_00003052]
	mulss xmm0, [esi+0xf0]
	addss xmm0, [ebp-0x158]
	addss xmm0, [ebp-0x150]
	ucomiss xmm0, [ebp-0x14c]
	ja FX_UpdateElement_260
	pxor xmm1, xmm1
	cmpss xmm1, xmm0, 0x6
	andnps xmm1, xmm0
	pxor xmm0, xmm0
	orps xmm1, xmm0
	movss [ebp-0x150], xmm1
	movaps xmm2, xmm1
	divss xmm2, dword [ebp-0x14c]
	mov ebx, [ebp-0xf8]
	mov eax, [ebp-0xf4]
	sub eax, ebx
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm2
	movss [esp], xmm0
	movss [ebp-0x198], xmm2
	call floorf
	fstp dword [ebp-0x174]
	cvttss2si eax, [ebp-0x174]
	add ebx, eax
	movss xmm1, dword [ebp-0x30]
	movss xmm0, dword [ebp-0x4c]
	subss xmm0, xmm1
	movss xmm2, dword [ebp-0x198]
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x68], xmm1
	movss xmm1, dword [ebp-0x2c]
	movss xmm0, dword [ebp-0x48]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x64], xmm1
	movss xmm1, dword [ebp-0x28]
	movss xmm0, dword [ebp-0x44]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x60], xmm1
	movss xmm1, dword [ebp-0x40]
	movss xmm0, dword [ebp-0x5c]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x78], xmm1
	movss xmm1, dword [ebp-0x3c]
	movss xmm0, dword [ebp-0x58]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x74], xmm1
	movss xmm1, dword [ebp-0x38]
	movss xmm0, dword [ebp-0x54]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x70], xmm1
	movss xmm1, dword [ebp-0x34]
	movss xmm0, dword [ebp-0x50]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm1, xmm2
	movss [ebp-0x6c], xmm1
	lea eax, [ebp-0x78]
	mov [esp], eax
	call Vec4Normalize
	fstp st0
	lea eax, [ebp-0x90]
	mov [esp+0x4], eax
	mov [esp], edi
	call PerpendicularVector
	movss xmm3, dword [ebp-0x98]
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x88]
	movss xmm2, dword [ebp-0x94]
	movaps xmm1, xmm2
	mulss xmm1, [ebp-0x8c]
	subss xmm0, xmm1
	movss [ebp-0x84], xmm0
	mulss xmm2, [ebp-0x90]
	movss xmm0, dword [ebp-0x9c]
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x88]
	subss xmm2, xmm1
	movss [ebp-0x80], xmm2
	mulss xmm0, [ebp-0x8c]
	mulss xmm3, [ebp-0x90]
	subss xmm0, xmm3
	movss [ebp-0x7c], xmm0
	mov dword [esp+0x24], 0x3ff
	mov eax, [ebp-0x148]
	movzx eax, word [eax+0x14]
	mov [esp+0x20], eax
	mov dword [esp+0x1c], 0xff
	mov dword [esp+0x18], 0x7ff
	mov dword [esp+0x14], 0xfff
	mov [esp+0x10], edi
	lea eax, [ebp-0x68]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov eax, [esi+0xe0]
	mov [esp+0x4], eax
	mov eax, [ebp-0x168]
	mov [esp], eax
	call FX_SpawnEffect
	mov ebx, eax
	test eax, eax
	jz FX_UpdateElement_270
	mov eax, [eax+0x4]
	sub ax, 0x1
	jnz FX_UpdateElement_280
	mov [esp+0x4], ebx
	mov edx, [ebp-0x168]
	mov [esp], edx
	call FX_EffectNoLongerReferenced
	jmp FX_UpdateElement_280
FX_UpdateElement_260:
	movss xmm0, dword [ebp-0x14c]
	subss xmm0, [ebp-0x150]
	mulss xmm0, [_float_256_00000000]
	divss xmm0, dword [ebp-0x154]
	movss [ebp-0x14c], xmm0
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x170]
	cvttss2si eax, [ebp-0x170]
	movzx eax, al
	jmp FX_UpdateElement_290
FX_UpdateElement_110:
	cmp eax, 0x40
	jz FX_UpdateElement_300
	add eax, 0xffffff80
	jz FX_UpdateElement_310
	lea eax, [ebp-0x5c]
	mov [esp+0x4], eax
	lea eax, [ebp-0x130]
	mov [esp], eax
	call AxisToQuat
	pxor xmm4, xmm4
	movss xmm5, dword [_float_1_00000000]
	jmp FX_UpdateElement_320
FX_UpdateElement_100:
	cmp eax, 0x40
	jz FX_UpdateElement_330
	add eax, 0xffffff80
	jz FX_UpdateElement_340
	lea eax, [ebp-0x40]
	mov [esp+0x4], eax
	lea eax, [ebp-0xc0]
	mov [esp], eax
	call AxisToQuat
	mov ecx, [ebp-0x180]
	jmp FX_UpdateElement_350
FX_UpdateElement_160:
	mov dword [ebp-0x164], 0x0
	mov eax, [ebp-0x164]
	jmp FX_UpdateElement_180
FX_UpdateElement_220:
	mov ecx, [ebp-0xf4]
	mov edx, [ebp-0xf8]
	lea eax, [ebp-0x148]
	call FX_NextElementPosition
	mov eax, [ebp-0xe8]
	mov [esp+0x8], eax
	lea eax, [ebp-0xe0]
	mov [esp+0x4], eax
	lea eax, [ebp-0x13c]
	mov [esp], eax
	call FX_OrientationPosFromWorldPos
	jmp FX_UpdateElement_230
FX_UpdateElement_310:
	mov edx, [ebp-0x180]
	mov eax, [edx+0x44]
	mov [ebp-0x5c], eax
	mov eax, [ecx+0x4]
	mov [ebp-0x58], eax
	mov eax, [ecx+0x8]
	mov [ebp-0x54], eax
	mov eax, [ecx+0xc]
	mov [ebp-0x50], eax
	pxor xmm4, xmm4
	movss xmm5, dword [_float_1_00000000]
	jmp FX_UpdateElement_320
FX_UpdateElement_340:
	mov edx, [ebp-0x180]
	mov eax, [edx+0x60]
	mov [ebp-0x40], eax
	mov eax, [esi+0x4]
	mov [ebp-0x3c], eax
	mov eax, [esi+0x8]
	mov [ebp-0x38], eax
	mov eax, [esi+0xc]
	mov [ebp-0x34], eax
	mov ecx, edx
	jmp FX_UpdateElement_350
FX_UpdateElement_210:
	mov edx, [ebp-0x160]
	movss xmm0, dword [edx]
	ucomiss xmm0, [ebp-0x24]
	jnz FX_UpdateElement_360
	jp FX_UpdateElement_360
	movss xmm0, dword [edx+0x4]
	ucomiss xmm0, [ebp-0x20]
	jnz FX_UpdateElement_360
	jp FX_UpdateElement_360
	movss xmm0, dword [edx+0x8]
	ucomiss xmm0, [ebp-0x1c]
	jnz FX_UpdateElement_360
	jp FX_UpdateElement_360
	test byte [edi+0x1], 0x1
	jz FX_UpdateElement_370
	cmp byte [ebp-0xd4], 0x0
	jz FX_UpdateElement_360
FX_UpdateElement_370:
	cvtsi2ss xmm0, dword [ebp-0xf4]
	cvtsi2ss xmm1, dword [ebp-0x100]
	subss xmm0, xmm1
	mulss xmm0, [_float_255_00000000]
	divss xmm0, dword [ebp-0x104]
	subss xmm0, [_float_0_25000000]
	movss [esp], xmm0
	call ceilf
	fstp dword [ebp-0x178]
	cvttss2si eax, [ebp-0x178]
	jmp FX_UpdateElement_360
FX_UpdateElement_120:
	movaps xmm1, xmm5
	divss xmm1, dword [ebp-0x14c]
	jmp FX_UpdateElement_380
FX_UpdateElement_80:
	lea esi, [ebp-0x40]
	mov [esp+0x8], esi
	mov eax, [ebp-0xe8]
	mov [esp+0x4], eax
	lea eax, [ebp-0x13c]
	mov [esp], eax
	call FX_OrientationPosToWorldPos
	mov ebx, [ebp-0xf8]
	lea ecx, [ebx+0x32]
	mov eax, [ebp-0xf4]
	cmp eax, ecx
	jle FX_UpdateElement_390
	mov eax, ebx
	mov ebx, ecx
	lea edi, [ebp-0x148]
	jmp FX_UpdateElement_400
FX_UpdateElement_420:
	mov eax, ebx
	mov ebx, ecx
FX_UpdateElement_400:
	mov [esp+0x4], esi
	mov [esp], ebx
	mov ecx, eax
	mov edx, edi
	mov eax, [ebp-0x168]
	call FX_UpdateElementPosition_CollidingStep
	test eax, eax
	jz FX_UpdateElement_410
	lea ecx, [ebx+0x32]
	mov eax, [ebp-0xf4]
	cmp eax, ecx
	jg FX_UpdateElement_420
FX_UpdateElement_430:
	mov [esp+0x4], esi
	mov [esp], eax
	mov ecx, ebx
	mov edx, edi
	mov eax, [ebp-0x168]
	call FX_UpdateElementPosition_CollidingStep
	mov [ebp-0x164], eax
	mov eax, [ebp-0x148]
	mov [ebp-0x180], eax
	mov esi, [ebp-0x144]
	jmp FX_UpdateElement_200
FX_UpdateElement_300:
	mov edx, [ebp-0x180]
	mov eax, [edx+0x28]
	mov [ebp-0x5c], eax
	mov edx, [ebp-0x17c]
	mov eax, [edx+0x4]
	mov [ebp-0x58], eax
	mov eax, [edx+0x8]
	mov [ebp-0x54], eax
	mov eax, [edx+0xc]
	mov [ebp-0x50], eax
	pxor xmm4, xmm4
	movss xmm5, dword [_float_1_00000000]
	jmp FX_UpdateElement_320
FX_UpdateElement_330:
	mov edx, [ebp-0x180]
	mov eax, [edx+0x28]
	mov [ebp-0x40], eax
	mov edx, [ebp-0x17c]
	mov eax, [edx+0x4]
	mov [ebp-0x3c], eax
	mov eax, [edx+0x8]
	mov [ebp-0x38], eax
	mov eax, [edx+0xc]
	mov [ebp-0x34], eax
	mov ecx, [ebp-0x180]
	jmp FX_UpdateElement_350
FX_UpdateElement_390:
	lea edi, [ebp-0x148]
	jmp FX_UpdateElement_430
FX_UpdateElement_170:
	mov [esp+0x4], ebx
	mov edx, [ebp-0x168]
	mov [esp], edx
	call FX_EffectNoLongerReferenced
	jmp FX_UpdateElement_440
FX_UpdateElement_410:
	mov dword [ebp-0x164], 0x0
	mov eax, [ebp-0x148]
	mov [ebp-0x180], eax
	mov esi, [ebp-0x144]
	jmp FX_UpdateElement_200
	nop


;FX_Update(FxSystem*, int, unsigned char)
FX_Update:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov esi, eax
	mov edi, [eax+0x1b0]
	mov eax, [eax+0x1b4]
	cmp edi, eax
	jz FX_Update_10
	mov [ebp-0x29], cl
	jmp FX_Update_20
FX_Update_40:
	mov eax, [ebx+0x18]
	and eax, cg_entitiesArray+0x77a0
	cmp eax, cg_entitiesArray+0x77a0
	jz FX_Update_30
FX_Update_50:
	add edi, 0x1
	mov eax, [esi+0x1b4]
	cmp edi, eax
	jz FX_Update_10
FX_Update_20:
	mov eax, edi
	and eax, 0x3ff
	movzx edx, word [esi+eax*2+0x1bc]
	mov eax, [esi+0x170]
	lea ebx, [eax+edx*4]
	cmp byte [ebp-0x29], 0x0
	jnz FX_Update_40
FX_Update_30:
	mov edx, [ebx+0x1c]
	mov eax, [esi+0x9d8]
	mov [ebx+0x1c], eax
	cmp edx, [esi+0x9d8]
	jz FX_Update_50
	mov eax, [ebx+0x4]
	test ax, ax
	jz FX_Update_50
	mov eax, [ebx+0x24]
	cmp eax, [esi+0x9d0]
	jg FX_Update_50
	mov edx, ebx
	mov eax, esi
	call FX_UpdateEffectBolt
	lea edx, [ebx+0x70]
	lea eax, [ebx+0x54]
	movss xmm0, dword [ebx+0x54]
	subss xmm0, [ebx+0x70]
	movss xmm1, dword [eax+0x4]
	subss xmm1, [edx+0x4]
	movss xmm2, dword [eax+0x8]
	subss xmm2, [edx+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	movss [ebp-0x30], xmm0
	addss xmm0, [ebx+0x7c]
	movss [ebp-0x30], xmm0
	xor eax, eax
FX_Update_60:
	mov word [ebp+eax*2-0x1e], 0xffff
	add eax, 0x1
	cmp eax, 0x3
	jnz FX_Update_60
	mov dword [esp+0x24], 0x0
	mov dword [esp+0x20], 0x0
	lea eax, [ebp-0x1e]
	mov [esp+0x1c], eax
	lea eax, [ebx+0x8]
	mov [esp+0x18], eax
	movss xmm0, dword [ebp-0x30]
	movss [esp+0x14], xmm0
	mov eax, [ebx+0x7c]
	mov [esp+0x10], eax
	mov eax, [esi+0x9d0]
	mov [esp+0xc], eax
	mov eax, [ebx+0x24]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], esi
	call FX_UpdateEffectPartial
	mov [esp+0x4], ebx
	mov [esp], esi
	call FX_SortNewElemsInEffect
	mov eax, [ebx+0x44]
	mov [ebx+0x60], eax
	mov eax, [ebx+0x48]
	mov [ebx+0x64], eax
	mov eax, [ebx+0x4c]
	mov [ebx+0x68], eax
	mov eax, [ebx+0x50]
	mov [ebx+0x6c], eax
	mov eax, [ebx+0x54]
	mov [ebx+0x70], eax
	mov eax, [ebx+0x58]
	mov [ebx+0x74], eax
	mov eax, [ebx+0x5c]
	mov [ebx+0x78], eax
	movss xmm0, dword [ebp-0x30]
	movss [ebx+0x7c], xmm0
	jmp FX_Update_50
FX_Update_10:
	cmp byte [esi+0x9dd], 0x0
	jz FX_Update_70
	mov [esp], esi
	call FX_RunGarbageCollection
FX_Update_70:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;FX_RewindTo(int, int)
FX_RewindTo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x10dc
	mov edi, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov [esp], eax
	call FX_GetSystem
	mov [ebp-0x10c0], eax
	cmp [eax+0x9d0], edi
	jg FX_RewindTo_10
FX_RewindTo_210:
	add esp, 0x10dc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_RewindTo_10:
	mov [eax+0x9d0], edi
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x98]
	mov [esp], eax
	call memset
	mov edx, [ebp-0x10c0]
	mov ebx, [edx+0x1b0]
	mov eax, [edx+0x1b4]
	cmp ebx, eax
	jz FX_RewindTo_20
	xor esi, esi
	mov edx, [ebp-0x10c0]
	jmp FX_RewindTo_30
FX_RewindTo_60:
	mov edx, ecx
FX_RewindTo_30:
	mov eax, ebx
	and eax, 0x3ff
	movzx ecx, word [edx+eax*2+0x1bc]
	movzx eax, cx
	lea edx, [eax*4]
	mov eax, [ebp-0x10c0]
	add edx, [eax+0x170]
	mov [ebp+esi*4-0x1098], edx
	mov eax, [edx+0x4]
	test ax, ax
	jz FX_RewindTo_40
	cmp edi, [edx+0x20]
	jle FX_RewindTo_40
	cmp cx, [edx+0x14]
	jz FX_RewindTo_50
FX_RewindTo_40:
	add ebx, 0x1
	mov ecx, [ebp-0x10c0]
	mov eax, [ecx+0x1b4]
	add esi, 0x1
	cmp ebx, eax
	jnz FX_RewindTo_60
	mov [ebp-0x10b8], esi
	test esi, esi
	jle FX_RewindTo_70
	xor ebx, ebx
	jmp FX_RewindTo_80
FX_RewindTo_90:
	add ebx, 0x1
	cmp ebx, esi
	jz FX_RewindTo_70
FX_RewindTo_80:
	mov edx, [ebp+ebx*4-0x1098]
	mov eax, [edx+0x4]
	test ax, ax
	jz FX_RewindTo_90
	mov [esp+0x4], edx
	mov eax, [ebp-0x10c0]
	mov [esp], eax
	call FX_KillEffect
	add ebx, 0x1
	cmp ebx, esi
	jnz FX_RewindTo_80
FX_RewindTo_70:
	mov edx, [ebp-0x10c0]
	cmp byte [edx+0x9dd], 0x0
	jnz FX_RewindTo_100
FX_RewindTo_280:
	mov eax, [ebp-0x10b8]
	test eax, eax
	jle FX_RewindTo_110
	mov dword [ebp-0x109c], 0x0
FX_RewindTo_200:
	mov edx, [ebp-0x109c]
	sar edx, 0x5
	mov ecx, [ebp-0x109c]
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [ebp+edx*4-0x98], eax
	jz FX_RewindTo_120
	mov ecx, [ebp-0x109c]
	mov ecx, [ebp+ecx*4-0x1098]
	mov [ebp-0x10bc], ecx
	mov esi, [ecx+0x20]
	mov [ecx+0x24], esi
	mov ebx, [ecx]
	mov edi, [ebx+0xc]
	test edi, edi
	jz FX_RewindTo_130
	mov esi, ecx
	add esi, 0x4
FX_RewindTo_140:
	mov ebx, [esi]
	mov [esp+0x8], ebx
	mov eax, ebx
	or eax, 0x10000
	mov [esp+0x4], eax
	mov [esp], esi
	call InterlockedCompareExchange
	cmp ebx, eax
	jnz FX_RewindTo_140
	mov esi, [ebp-0x10bc]
	mov ebx, [esi]
	mov edx, [ebp-0x10c0]
	mov eax, [edx+0x9d0]
	mov edx, [esi+0x20]
	mov ecx, esi
	add ecx, 0x44
	add esi, 0x28
	mov [ebp-0x10b4], esi
	mov esi, [ebx+0x10]
	mov [esp+0x1c], eax
	mov [esp+0x18], edx
	mov [esp+0x14], ecx
	mov ecx, [ebp-0x10b4]
	mov [esp+0x10], ecx
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x0
	mov esi, [ebp-0x10bc]
	mov [esp+0x4], esi
	mov eax, [ebp-0x10c0]
	mov [esp], eax
	call FX_BeginLooping
	mov edx, [esi+0x20]
	mov [ebp-0x10b0], edx
	mov edx, [ebx+0x10]
	mov ecx, [ebx+0x14]
	add ecx, edx
	cmp edx, ecx
	jz FX_RewindTo_150
	lea eax, [edx*4]
	mov ebx, edx
	shl ebx, 0x8
	sub ebx, eax
	mov [ebp-0x10a4], ebx
	mov edi, edx
	mov [ebp-0x10c4], ecx
	jmp FX_RewindTo_160
FX_RewindTo_170:
	add edi, 0x1
	add dword [ebp-0x10a4], 0xfc
	cmp [ebp-0x10c4], edi
	jz FX_RewindTo_150
FX_RewindTo_160:
	mov esi, [ebp-0x10bc]
	mov eax, [esi]
	mov eax, [eax+0x1c]
	add eax, [ebp-0x10a4]
	cmp byte [eax+0xb0], 0x3
	jz FX_RewindTo_170
	mov esi, [eax+0x4]
	mov edx, [eax+0x8]
	test edx, edx
	jz FX_RewindTo_180
	mov ecx, [ebp-0x10bc]
	movzx eax, word [ecx+0x12]
	lea eax, [eax*4+0x4c]
	add eax, fx_randomTable
	add edx, 0x1
	movzx eax, word [eax]
	imul edx, eax
	sar edx, 0x10
	add esi, edx
FX_RewindTo_180:
	test esi, esi
	jle FX_RewindTo_170
	xor ebx, ebx
FX_RewindTo_190:
	mov [esp+0x18], ebx
	mov dword [esp+0x14], 0x0
	mov eax, [ebp-0x10b0]
	mov [esp+0x10], eax
	mov edx, [ebp-0x10b4]
	mov [esp+0xc], edx
	mov [esp+0x8], edi
	mov ecx, [ebp-0x10bc]
	mov [esp+0x4], ecx
	mov eax, [ebp-0x10c0]
	mov [esp], eax
	call FX_SpawnElem
	add ebx, 0x1
	cmp esi, ebx
	jnz FX_RewindTo_190
	add edi, 0x1
	add dword [ebp-0x10a4], 0xfc
	cmp [ebp-0x10c4], edi
	jnz FX_RewindTo_160
FX_RewindTo_150:
	mov edx, [ebp-0x10bc]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x10c0]
	mov [esp], ecx
	call FX_SortNewElemsInEffect
FX_RewindTo_120:
	add dword [ebp-0x109c], 0x1
	mov ecx, [ebp-0x10b8]
	cmp [ebp-0x109c], ecx
	jnz FX_RewindTo_200
FX_RewindTo_110:
	mov ebx, [ebp-0x10c0]
	cmp byte [ebx+0x9dd], 0x0
	jz FX_RewindTo_210
	mov [esp], ebx
	call FX_RunGarbageCollection
	add esp, 0x10dc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_RewindTo_130:
	mov edx, [ebp-0x10c0]
	mov eax, [edx+0x9d0]
	mov edx, [ebp-0x10bc]
	add edx, 0x44
	mov ecx, [ebp-0x10bc]
	add ecx, 0x28
	mov [ebp-0x10ac], ecx
	mov ecx, [ebx+0x10]
	mov [esp+0x1c], eax
	mov [esp+0x18], esi
	mov [esp+0x14], edx
	mov esi, [ebp-0x10ac]
	mov [esp+0x10], esi
	mov [esp+0xc], ecx
	mov dword [esp+0x8], 0x0
	mov eax, [ebp-0x10bc]
	mov [esp+0x4], eax
	mov edx, [ebp-0x10c0]
	mov [esp], edx
	call FX_BeginLooping
	mov ecx, [ebp-0x10bc]
	mov ecx, [ecx+0x20]
	mov [ebp-0x10a8], ecx
	mov edx, [ebx+0x10]
	mov ecx, [ebx+0x14]
	add ecx, edx
	cmp edx, ecx
	jz FX_RewindTo_220
	lea eax, [edx*4]
	mov ebx, edx
	shl ebx, 0x8
	sub ebx, eax
	mov [ebp-0x10a0], ebx
	mov edi, edx
	mov [ebp-0x10c8], ecx
	jmp FX_RewindTo_230
FX_RewindTo_240:
	add edi, 0x1
	add dword [ebp-0x10a0], 0xfc
	cmp edi, [ebp-0x10c8]
	jz FX_RewindTo_220
FX_RewindTo_230:
	mov esi, [ebp-0x10bc]
	mov eax, [esi]
	mov eax, [eax+0x1c]
	add eax, [ebp-0x10a0]
	cmp byte [eax+0xb0], 0x3
	jz FX_RewindTo_240
	mov esi, [eax+0x4]
	mov edx, [eax+0x8]
	test edx, edx
	jz FX_RewindTo_250
	mov ecx, [ebp-0x10bc]
	movzx eax, word [ecx+0x12]
	lea eax, [eax*4+0x4c]
	add eax, fx_randomTable
	add edx, 0x1
	movzx eax, word [eax]
	imul edx, eax
	sar edx, 0x10
	add esi, edx
FX_RewindTo_250:
	test esi, esi
	jle FX_RewindTo_240
	xor ebx, ebx
FX_RewindTo_260:
	mov [esp+0x18], ebx
	mov dword [esp+0x14], 0x0
	mov eax, [ebp-0x10a8]
	mov [esp+0x10], eax
	mov edx, [ebp-0x10ac]
	mov [esp+0xc], edx
	mov [esp+0x8], edi
	mov ecx, [ebp-0x10bc]
	mov [esp+0x4], ecx
	mov eax, [ebp-0x10c0]
	mov [esp], eax
	call FX_SpawnElem
	add ebx, 0x1
	cmp esi, ebx
	jnz FX_RewindTo_260
	add edi, 0x1
	add dword [ebp-0x10a0], 0xfc
	cmp edi, [ebp-0x10c8]
	jnz FX_RewindTo_230
FX_RewindTo_220:
	mov edx, [ebp-0x10bc]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x10c0]
	mov [esp], ecx
	call FX_SortNewElemsInEffect
	mov ebx, [ebp-0x10bc]
	mov eax, [ebx+0x4]
	sub ax, 0x1
	jz FX_RewindTo_270
	mov edx, ebx
FX_RewindTo_290:
	mov eax, [edx+0x4]
	sub eax, 0x1
	mov [edx+0x4], eax
	mov eax, [edx+0x4]
	add dword [ebp-0x109c], 0x1
	mov ecx, [ebp-0x10b8]
	cmp [ebp-0x109c], ecx
	jnz FX_RewindTo_200
	jmp FX_RewindTo_110
FX_RewindTo_50:
	mov eax, [edx+0x4]
	add eax, 0x1
	mov [edx+0x4], eax
	mov eax, esi
	sar eax, 0x5
	mov ecx, esi
	and ecx, 0x1f
	mov edx, 0x1
	shl edx, cl
	or [ebp+eax*4-0x98], edx
	jmp FX_RewindTo_40
FX_RewindTo_100:
	mov [esp], edx
	call FX_RunGarbageCollection
	jmp FX_RewindTo_280
FX_RewindTo_20:
	mov dword [ebp-0x10b8], 0x0
	jmp FX_RewindTo_70
FX_RewindTo_270:
	mov [esp+0x4], ebx
	mov esi, [ebp-0x10c0]
	mov [esp], esi
	call FX_EffectNoLongerReferenced
	mov edx, [ebp-0x10bc]
	jmp FX_RewindTo_290


;FX_EndUpdate(int)
FX_EndUpdate:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, fx_enable
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz FX_EndUpdate_10
	leave
	ret
FX_EndUpdate_10:
	mov eax, [ebp+0x8]
	mov [esp], eax
	call FX_GetSystem
	lea edx, [eax+0xb0]
	mov dword [esp+0x8], 0xb0
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
	leave
	ret


;FX_RunPhysics(int)
FX_RunPhysics:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov [esp], esi
	call FX_GetSystem
	mov ebx, eax
	mov dword [esp], 0xb
	call Sys_EnterCriticalSection
	mov eax, [ebx+0x9d0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call Phys_RunToTime
	mov dword [ebp+0x8], 0xb
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp Sys_LeaveCriticalSection
	nop


;FX_BeginUpdate(int)
FX_BeginUpdate:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call FX_BeginMarks
	call FX_Beam_Begin
	call FX_PostLight_Begin
	leave
	jmp FX_SpriteBegin
	nop


;FX_BeginLooping(FxSystem*, FxEffect*, int, int, FxSpatialFrame const*, FxSpatialFrame const*, int, int)
FX_BeginLooping:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov eax, [ebp+0x10]
	add eax, [ebp+0x14]
	mov [ebp-0x50], eax
	cmp [ebp+0x10], eax
	jz FX_BeginLooping_10
	mov edi, eax
	mov eax, [ebp+0x10]
	shl eax, 0x2
	mov esi, [ebp+0x10]
	shl esi, 0x8
	sub esi, eax
	mov ebx, [ebp+0x10]
FX_BeginLooping_30:
	mov edx, [ebp+0xc]
	mov eax, [edx]
	mov eax, [eax+0x1c]
	cmp byte [esi+eax+0xb0], 0x3
	jz FX_BeginLooping_20
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov ecx, [ebp+0x20]
	mov [esp+0x10], ecx
	mov eax, [ebp+0x18]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov [esp+0x4], edx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call FX_SpawnElem
FX_BeginLooping_20:
	add ebx, 0x1
	add esi, 0xfc
	cmp edi, ebx
	jnz FX_BeginLooping_30
FX_BeginLooping_10:
	mov ecx, [ebp+0xc]
	movzx edx, word [ecx+0x10]
	cmp dx, 0xffff
	jz FX_BeginLooping_40
	mov eax, [ebp+0x24]
	sub eax, [ebp+0x20]
	cvtsi2ss xmm0, eax
	movss [ebp-0x58], xmm0
	mov eax, [ebp+0x1c]
	lea esi, [eax+0x10]
	mov ecx, [ebp+0x18]
	lea edi, [ecx+0x10]
	jmp FX_BeginLooping_50
FX_BeginLooping_60:
	movzx edx, word [ebx]
	cmp dx, 0xffff
	jz FX_BeginLooping_40
FX_BeginLooping_50:
	movzx edx, dx
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x178]
	lea ebx, [eax+edx*4]
	movsx eax, byte [ebx+0x6]
	cmp [ebp+0x10], eax
	jg FX_BeginLooping_60
	cmp [ebp-0x50], eax
	jle FX_BeginLooping_60
	mov dword [esp+0x14], 0x0
	mov eax, [ebp+0x20]
	mov [esp+0x10], eax
	mov edx, [ebp+0x18]
	mov [esp+0xc], edx
	mov [esp+0x8], ebx
	mov ecx, [ebp+0xc]
	mov [esp+0x4], ecx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call FX_SpawnTrailElem_NoCull
	mov edx, [ebp+0x24]
	cmp [ebp+0x20], edx
	jge FX_BeginLooping_70
	mov ecx, [ebp+0xc]
	movss xmm0, dword [ecx+0x7c]
	movss [ebp-0x4c], xmm0
	mov edx, [ecx]
	movsx eax, byte [ebx+0x6]
	mov ecx, [edx+0x1c]
	lea edx, [eax*4]
	shl eax, 0x8
	sub eax, edx
	mov eax, [eax+ecx+0xf4]
	cvtsi2ss xmm0, dword [eax+0x8]
	movss xmm1, dword [ebp-0x4c]
	divss xmm1, xmm0
	movss [ebp-0x3c], xmm1
	pxor xmm1, xmm1
	divss xmm1, xmm0
	movss [esp], xmm1
	movss [ebp-0x68], xmm1
	call floorf
	fstp dword [ebp-0x54]
	movss xmm0, dword [ebp-0x68]
	subss xmm0, [ebp-0x54]
	movss xmm1, dword [_float_1_00000000]
	subss xmm1, xmm0
	movss [ebp-0x40], xmm1
	movss xmm0, dword [ebp-0x3c]
	ucomiss xmm0, xmm1
	ja FX_BeginLooping_80
FX_BeginLooping_110:
	mov dword [esp+0x14], 0x0
	mov eax, [ebp+0x24]
	mov [esp+0x10], eax
	mov edx, [ebp+0x1c]
	mov [esp+0xc], edx
	mov [esp+0x8], ebx
	mov ecx, [ebp+0xc]
	mov [esp+0x4], ecx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call FX_SpawnTrailElem_NoCull
	movzx edx, word [ebx]
	cmp dx, 0xffff
	jnz FX_BeginLooping_50
FX_BeginLooping_40:
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_BeginLooping_70:
	mov dword [esp+0x14], 0x0
	mov edx, [ebp+0x20]
	mov [esp+0x10], edx
	mov ecx, [ebp+0x18]
	mov [esp+0xc], ecx
	mov [esp+0x8], ebx
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call FX_SpawnTrailElem_NoCull
	jmp FX_BeginLooping_60
FX_BeginLooping_80:
	movss [ebp-0x44], xmm0
	mov dword [ebp-0x48], 0x0
	jmp FX_BeginLooping_90
FX_BeginLooping_100:
	mov dword [ebp-0x40], 0x3f800000
FX_BeginLooping_90:
	movss xmm1, dword [ebp-0x48]
	addss xmm1, [ebp-0x40]
	movss [ebp-0x48], xmm1
	movaps xmm2, xmm1
	divss xmm2, dword [ebp-0x3c]
	mov eax, [ebp+0x18]
	movss xmm1, dword [eax+0x10]
	mov edx, [ebp+0x1c]
	movss xmm0, dword [edx+0x10]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x24], xmm1
	movss xmm1, dword [edi+0x4]
	movss xmm0, dword [esi+0x4]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x20], xmm1
	movss xmm1, dword [edi+0x8]
	movss xmm0, dword [esi+0x8]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x1c], xmm1
	movss xmm1, dword [eax]
	movss xmm0, dword [edx]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x34], xmm1
	movss xmm1, dword [eax+0x4]
	movss xmm0, dword [edx+0x4]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x30], xmm1
	movss xmm1, dword [eax+0x8]
	movss xmm0, dword [edx+0x8]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x2c], xmm1
	movss xmm1, dword [eax+0xc]
	movss xmm0, dword [edx+0xc]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x28], xmm1
	lea ecx, [ebp-0x34]
	mov [esp], ecx
	movss [ebp-0x78], xmm2
	call Vec4Normalize
	fstp st0
	movss xmm2, dword [ebp-0x78]
	movss xmm0, dword [ebp-0x4c]
	mulss xmm0, xmm2
	addss xmm0, [_float_0_00000000]
	movss [esp+0x14], xmm0
	mulss xmm2, [ebp-0x58]
	cvttss2si eax, xmm2
	add eax, [ebp+0x20]
	mov [esp+0x10], eax
	lea eax, [ebp-0x34]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call FX_SpawnTrailElem_Cull
	movss xmm0, dword [ebp-0x44]
	subss xmm0, [ebp-0x40]
	movss [ebp-0x44], xmm0
	ucomiss xmm0, [_float_1_00000000]
	ja FX_BeginLooping_100
	jmp FX_BeginLooping_110


;FX_FillUpdateCmd(int, FxCmd*)
FX_FillUpdateCmd:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov [esp], esi
	call FX_GetSystem
	mov [ebx], eax
	mov [ebx+0x4], esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;FX_StartNewEffect(FxSystem*, FxEffect*)
FX_StartNewEffect:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov eax, [ebp+0x8]
	mov [ebp-0x2c], eax
	mov edx, [ebp+0xc]
	mov [ebp-0x30], edx
	mov ebx, [edx]
	add edx, 0x28
	mov [ebp-0x28], edx
	mov eax, [eax+0x9d0]
	mov [esp+0x1c], eax
	mov edx, [ebp-0x30]
	mov eax, [edx+0x20]
	mov [esp+0x18], eax
	mov eax, edx
	add eax, 0x44
	mov [esp+0x14], eax
	mov ecx, [ebp-0x28]
	mov [esp+0x10], ecx
	mov eax, [ebx+0x10]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], edx
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call FX_BeginLooping
	mov edx, [ebp-0x30]
	mov edx, [edx+0x20]
	mov [ebp-0x24], edx
	mov edx, [ebx+0x10]
	mov ecx, edx
	add ecx, [ebx+0x14]
	cmp edx, ecx
	jz FX_StartNewEffect_10
	lea eax, [edx*4]
	mov ebx, edx
	shl ebx, 0x8
	sub ebx, eax
	mov [ebp-0x1c], ebx
	mov edi, edx
	mov eax, fx_randomTable
	mov [ebp-0x20], eax
	mov [ebp-0x34], ecx
	jmp FX_StartNewEffect_20
FX_StartNewEffect_30:
	add edi, 0x1
	add dword [ebp-0x1c], 0xfc
	cmp [ebp-0x34], edi
	jz FX_StartNewEffect_10
FX_StartNewEffect_20:
	mov edx, [ebp-0x30]
	mov eax, [edx]
	mov eax, [eax+0x1c]
	add eax, [ebp-0x1c]
	cmp byte [eax+0xb0], 0x3
	jz FX_StartNewEffect_30
	mov esi, [eax+0x4]
	mov eax, [eax+0x8]
	test eax, eax
	jz FX_StartNewEffect_40
	add eax, 0x1
	movzx edx, word [edx+0x12]
	mov ebx, [ebp-0x20]
	movzx edx, word [ebx+edx*4+0x4c]
	imul eax, edx
	sar eax, 0x10
	add esi, eax
FX_StartNewEffect_40:
	test esi, esi
	jle FX_StartNewEffect_30
	xor ebx, ebx
FX_StartNewEffect_50:
	mov [esp+0x18], ebx
	mov dword [esp+0x14], 0x0
	mov eax, [ebp-0x24]
	mov [esp+0x10], eax
	mov edx, [ebp-0x28]
	mov [esp+0xc], edx
	mov [esp+0x8], edi
	mov ecx, [ebp-0x30]
	mov [esp+0x4], ecx
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call FX_SpawnElem
	add ebx, 0x1
	cmp esi, ebx
	jnz FX_StartNewEffect_50
	add edi, 0x1
	add dword [ebp-0x1c], 0xfc
	cmp [ebp-0x34], edi
	jnz FX_StartNewEffect_20
FX_StartNewEffect_10:
	mov edx, [ebp-0x30]
	mov [ebp+0xc], edx
	mov ecx, [ebp-0x2c]
	mov [ebp+0x8], ecx
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp FX_SortNewElemsInEffect


;FX_TriggerOneShot(FxSystem*, FxEffect*, int, int, FxSpatialFrame const*, int)
FX_TriggerOneShot:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edx, [ebp+0x10]
	mov ecx, edx
	add ecx, [ebp+0x14]
	cmp edx, ecx
	jz FX_TriggerOneShot_10
	lea eax, [edx*4]
	mov ebx, edx
	shl ebx, 0x8
	sub ebx, eax
	mov [ebp-0x1c], ebx
	mov edi, edx
	mov eax, fx_randomTable
	mov [ebp-0x20], eax
	mov [ebp-0x24], ecx
	jmp FX_TriggerOneShot_20
FX_TriggerOneShot_30:
	add edi, 0x1
	add dword [ebp-0x1c], 0xfc
	cmp [ebp-0x24], edi
	jz FX_TriggerOneShot_10
FX_TriggerOneShot_20:
	mov edx, [ebp+0xc]
	mov eax, [edx]
	mov eax, [eax+0x1c]
	add eax, [ebp-0x1c]
	cmp byte [eax+0xb0], 0x3
	jz FX_TriggerOneShot_30
	mov esi, [eax+0x4]
	mov eax, [eax+0x8]
	test eax, eax
	jz FX_TriggerOneShot_40
	add eax, 0x1
	movzx edx, word [edx+0x12]
	mov ebx, [ebp-0x20]
	movzx edx, word [ebx+edx*4+0x4c]
	imul eax, edx
	sar eax, 0x10
	add esi, eax
FX_TriggerOneShot_40:
	test esi, esi
	jle FX_TriggerOneShot_30
	xor ebx, ebx
FX_TriggerOneShot_50:
	mov [esp+0x18], ebx
	mov dword [esp+0x14], 0x0
	mov eax, [ebp+0x1c]
	mov [esp+0x10], eax
	mov edx, [ebp+0x18]
	mov [esp+0xc], edx
	mov [esp+0x8], edi
	mov ecx, [ebp+0xc]
	mov [esp+0x4], ecx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call FX_SpawnElem
	add ebx, 0x1
	cmp esi, ebx
	jnz FX_TriggerOneShot_50
	add edi, 0x1
	add dword [ebp-0x1c], 0xfc
	cmp [ebp-0x24], edi
	jnz FX_TriggerOneShot_20
FX_TriggerOneShot_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;FX_UpdateRemaining(FxCmd*)
FX_UpdateRemaining:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, fx_enable
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz FX_UpdateRemaining_10
	mov edx, [ebx+0x4]
	xor ecx, ecx
	mov eax, [ebx]
	call FX_Update
FX_UpdateRemaining_10:
	mov eax, [ebx+0x4]
	mov [esp], eax
	call CG_AddSceneTracerBeams
	mov eax, [ebx+0x4]
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp CG_GenerateSceneVerts


;FX_UpdateSpotLight(FxCmd*)
FX_UpdateSpotLight:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov eax, fx_enable
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz FX_UpdateSpotLight_10
	mov eax, [ebp+0x8]
	mov esi, [eax]
	mov eax, [esi+0x9bc]
	test eax, eax
	jle FX_UpdateSpotLight_20
	movzx eax, word [esi+0x9c4]
	mov edx, [esi+0x170]
	lea ebx, [edx+eax*4]
	mov eax, [ebx+0x4]
	test ax, ax
	jnz FX_UpdateSpotLight_30
FX_UpdateSpotLight_20:
	cmp byte [esi+0x9dd], 0x0
	jnz FX_UpdateSpotLight_40
	mov eax, fx_draw
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz FX_UpdateSpotLight_50
FX_UpdateSpotLight_10:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_UpdateSpotLight_50:
	mov [esp], esi
	call FX_DrawSpotLight
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_UpdateSpotLight_30:
	mov eax, [ebx+0x24]
	cmp eax, [esi+0x9d0]
	jg FX_UpdateSpotLight_20
	mov edx, ebx
	mov eax, esi
	call FX_UpdateEffectBolt
	movzx eax, word [ebx+0x18]
	and eax, 0xfff
	mov [esi+0x9c8], ax
	lea edx, [ebx+0x70]
	lea eax, [ebx+0x54]
	movss xmm0, dword [ebx+0x54]
	subss xmm0, [ebx+0x70]
	movss xmm1, dword [eax+0x4]
	subss xmm1, [edx+0x4]
	movss xmm2, dword [eax+0x8]
	subss xmm2, [edx+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	movss [ebp-0x2c], xmm0
	addss xmm0, [ebx+0x7c]
	movss [ebp-0x2c], xmm0
	xor eax, eax
FX_UpdateSpotLight_60:
	mov word [ebp+eax*2-0x1e], 0xffff
	add eax, 0x1
	cmp eax, 0x3
	jnz FX_UpdateSpotLight_60
	mov edi, [esi+0x9d0]
	mov edx, [ebx+0x24]
	mov eax, [esi+0x9c0]
	test eax, eax
	jnz FX_UpdateSpotLight_70
FX_UpdateSpotLight_80:
	mov dword [esp+0x24], 0x0
	mov dword [esp+0x20], 0x0
	lea eax, [ebp-0x1e]
	mov [esp+0x1c], eax
	lea eax, [ebx+0x8]
	mov [esp+0x18], eax
	movss xmm0, dword [ebp-0x2c]
	movss [esp+0x14], xmm0
	mov eax, [ebx+0x7c]
	mov [esp+0x10], eax
	mov eax, [esi+0x9d0]
	mov [esp+0xc], eax
	mov eax, [ebx+0x24]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], esi
	call FX_UpdateEffectPartial
	mov [esp+0x4], ebx
	mov [esp], esi
	call FX_SortNewElemsInEffect
	mov eax, [ebx+0x44]
	mov [ebx+0x60], eax
	mov eax, [ebx+0x48]
	mov [ebx+0x64], eax
	mov eax, [ebx+0x4c]
	mov [ebx+0x68], eax
	mov eax, [ebx+0x50]
	mov [ebx+0x6c], eax
	mov eax, [ebx+0x54]
	mov [ebx+0x70], eax
	mov eax, [ebx+0x58]
	mov [ebx+0x74], eax
	mov eax, [ebx+0x5c]
	mov [ebx+0x78], eax
	movss xmm0, dword [ebp-0x2c]
	movss [ebx+0x7c], xmm0
	jmp FX_UpdateSpotLight_20
FX_UpdateSpotLight_40:
	mov [esp], esi
	call FX_RunGarbageCollection
	mov eax, fx_draw
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz FX_UpdateSpotLight_10
	jmp FX_UpdateSpotLight_50
FX_UpdateSpotLight_70:
	movzx ecx, word [esi+0x9c6]
	mov eax, [esi+0x174]
	lea ecx, [eax+ecx*4]
	mov [esp+0x4], edi
	mov [esp], edx
	mov edx, ebx
	mov eax, esi
	call FX_UpdateElement
	test eax, eax
	jnz FX_UpdateSpotLight_80
	mov [esp+0x8], ebx
	movzx eax, word [esi+0x9c6]
	mov [esp+0x4], eax
	mov [esp], esi
	call FX_FreeSpotLightElem
	jmp FX_UpdateSpotLight_80
	add [eax], al


;FX_SetNextUpdateTime(int, int)
FX_SetNextUpdateTime:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov [esp], eax
	call FX_GetSystem
	mov ebx, eax
	lea eax, [eax+0xc]
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call InterlockedExchange
	lea eax, [ebx+0x9d4]
	mov [esp+0x4], esi
	mov [esp], eax
	call InterlockedExchange
	mov [ebx+0x9d0], esi
	mov edx, [ebx+0x9d8]
	add edx, 0x1
	mov eax, 0x1
	test edx, edx
	cmovg eax, edx
	mov [ebx+0x9d8], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;FX_GetBoneOrientation(int, int, int, orientation_t*)
FX_GetBoneOrientation:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0xc]
	mov edi, [ebp+0x10]
	cmp esi, 0x3fd
	jg FX_GetBoneOrientation_10
	lea edx, [esi*4]
	mov eax, esi
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edx, cg_entitiesArray
	cmp byte [edx+eax+0x1c0], 0x0
	jz FX_GetBoneOrientation_20
FX_GetBoneOrientation_10:
	test edi, edi
	js FX_GetBoneOrientation_30
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], esi
	call Com_GetClientDObj
	mov ebx, eax
	test eax, eax
	jz FX_GetBoneOrientation_20
	mov [esp], eax
	call DObjNumBones
	cmp edi, eax
	jl FX_GetBoneOrientation_40
FX_GetBoneOrientation_20:
	xor eax, eax
FX_GetBoneOrientation_50:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_GetBoneOrientation_40:
	mov [esp+0x4], esi
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_GetPose
	mov edx, [ebp+0x14]
	mov [esp+0x10], edx
	add edx, 0xc
	mov [esp+0xc], edx
	mov [esp+0x8], edi
	mov [esp+0x4], ebx
	mov [esp], eax
	call CG_DObjGetWorldBoneMatrix
	test eax, eax
	jz FX_GetBoneOrientation_20
	mov eax, 0x1
	jmp FX_GetBoneOrientation_50
FX_GetBoneOrientation_30:
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	add eax, 0xc
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_GetDObjOrientation
	mov eax, 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;FX_UpdateNonDependent(FxCmd*)
FX_UpdateNonDependent:
	push ebp
	mov ebp, esp
	push ebx
	mov edx, [ebp+0x8]
	mov ebx, [edx]
	mov eax, fx_enable
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz FX_UpdateNonDependent_10
	pop ebx
	pop ebp
	ret
FX_UpdateNonDependent_10:
	mov edx, [edx+0x4]
	mov ecx, 0x1
	mov eax, ebx
	pop ebx
	pop ebp
	jmp FX_Update


;FX_GetBoltTemporalBits(int, int)
FX_GetBoltTemporalBits:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	cmp eax, 0x3fd
	jg FX_GetBoltTemporalBits_10
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	add eax, cg_entitiesArray
	mov eax, [eax+0xd4]
	test al, 0x2
	jz FX_GetBoltTemporalBits_10
	mov eax, 0x1
	pop ebp
	ret
FX_GetBoltTemporalBits_10:
	xor eax, eax
	pop ebp
	ret
	nop


;FX_SetNextUpdateCamera(int, refdef_s const*, float)
FX_SetNextUpdateCamera:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov [esp], eax
	call FX_GetSystem
	mov ebx, eax
	mov eax, [esi+0x18]
	mov [ebx], eax
	mov eax, [esi+0x1c]
	mov [ebx+0x4], eax
	mov eax, [esi+0x20]
	mov [ebx+0x8], eax
	lea eax, [ebx+0x70]
	lea edx, [esi+0x24]
	mov [esp+0x4], eax
	mov [esp], edx
	call AxisCopy
	mov eax, [esi+0x24]
	mov [ebx+0x10], eax
	mov eax, [esi+0x28]
	mov [ebx+0x14], eax
	mov eax, [esi+0x2c]
	mov [ebx+0x18], eax
	mov eax, [esi+0x48]
	mov [ebx+0x98], eax
	mov eax, [esi+0x4c]
	mov [ebx+0x9c], eax
	mov eax, [esi+0x50]
	mov [ebx+0xa0], eax
	movss xmm1, dword [esi+0x10]
	movaps xmm0, xmm1
	mulss xmm0, xmm1
	movss xmm3, dword [_float_1_00000000]
	addss xmm0, xmm3
	sqrtss xmm0, xmm0
	movaps xmm2, xmm3
	divss xmm2, xmm0
	movaps xmm4, xmm2
	mulss xmm4, xmm1
	movaps xmm0, xmm4
	mulss xmm0, [esi+0x24]
	movaps xmm1, xmm2
	mulss xmm1, [esi+0x30]
	addss xmm0, xmm1
	movss [ebx+0x20], xmm0
	movaps xmm0, xmm4
	mulss xmm0, [esi+0x28]
	movaps xmm1, xmm2
	mulss xmm1, [esi+0x34]
	addss xmm0, xmm1
	movss [ebx+0x24], xmm0
	movaps xmm0, xmm4
	mulss xmm0, [esi+0x2c]
	movaps xmm1, xmm2
	mulss xmm1, [esi+0x38]
	addss xmm0, xmm1
	movss [ebx+0x28], xmm0
	movss xmm5, dword [_data16_80000000]
	xorps xmm2, xmm5
	movaps xmm0, xmm4
	mulss xmm0, [esi+0x24]
	movaps xmm1, xmm2
	mulss xmm1, [esi+0x30]
	addss xmm0, xmm1
	movss [ebx+0x30], xmm0
	movaps xmm0, xmm4
	mulss xmm0, [esi+0x28]
	movaps xmm1, xmm2
	mulss xmm1, [esi+0x34]
	addss xmm0, xmm1
	movss [ebx+0x34], xmm0
	mulss xmm4, [esi+0x2c]
	mulss xmm2, [esi+0x38]
	addss xmm4, xmm2
	movss [ebx+0x38], xmm4
	movss xmm1, dword [esi+0x14]
	movaps xmm0, xmm1
	mulss xmm0, xmm1
	addss xmm0, xmm3
	sqrtss xmm0, xmm0
	divss xmm3, xmm0
	movaps xmm2, xmm3
	mulss xmm2, xmm1
	movaps xmm0, xmm2
	mulss xmm0, [esi+0x24]
	movaps xmm1, xmm3
	mulss xmm1, [esi+0x3c]
	addss xmm0, xmm1
	movss [ebx+0x40], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [esi+0x28]
	movaps xmm1, xmm3
	mulss xmm1, [esi+0x40]
	addss xmm0, xmm1
	movss [ebx+0x44], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [esi+0x2c]
	movaps xmm1, xmm3
	mulss xmm1, [esi+0x44]
	addss xmm0, xmm1
	movss [ebx+0x48], xmm0
	xorps xmm3, xmm5
	movaps xmm0, xmm2
	mulss xmm0, [esi+0x24]
	movaps xmm1, xmm3
	mulss xmm1, [esi+0x3c]
	addss xmm0, xmm1
	movss [ebx+0x50], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [esi+0x28]
	movaps xmm1, xmm3
	mulss xmm1, [esi+0x40]
	addss xmm0, xmm1
	movss [ebx+0x54], xmm0
	mulss xmm2, [esi+0x2c]
	mulss xmm3, [esi+0x44]
	addss xmm2, xmm3
	movss [ebx+0x58], xmm2
	mov ecx, 0x5
	mov dword [ebx+0x94], 0x5
	xor edx, edx
	lea eax, [ebx+0x10]
FX_SetNextUpdateCamera_10:
	movss xmm0, dword [eax]
	movss xmm1, dword [eax+0x4]
	movss xmm2, dword [eax+0x8]
	mulss xmm0, [ebx]
	mulss xmm1, [ebx+0x4]
	addss xmm0, xmm1
	mulss xmm2, [ebx+0x8]
	addss xmm0, xmm2
	movss [eax+0xc], xmm0
	add edx, 0x1
	add eax, 0x10
	cmp ecx, edx
	ja FX_SetNextUpdateCamera_10
	movss xmm0, dword [ebp+0x10]
	ucomiss xmm0, [_float_0_00000000]
	jbe FX_SetNextUpdateCamera_20
	movss xmm0, dword [esi+0x24]
	xorps xmm0, xmm5
	movss [ebx+0x60], xmm0
	movss xmm0, dword [esi+0x28]
	xorps xmm0, xmm5
	movss [ebx+0x64], xmm0
	movss xmm0, dword [esi+0x2c]
	xorps xmm0, xmm5
	movss [ebx+0x68], xmm0
	movss xmm0, dword [ebx+0x1c]
	xorps xmm0, xmm5
	subss xmm0, [ebp+0x10]
	movss [ebx+0x6c], xmm0
	mov dword [ebx+0x94], 0x6
FX_SetNextUpdateCamera_20:
	lea eax, [ebx+0xc]
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call InterlockedExchange
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;FX_UpdateEffectPartial(FxSystem*, FxEffect*, int, int, float, float, unsigned short*, unsigned short*, unsigned short*, unsigned short*)
FX_UpdateEffectPartial:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x19c
	mov edx, [ebp+0xc]
	mov eax, [edx+0x4]
	test eax, 0x10000
	jz FX_UpdateEffectPartial_10
	mov ecx, [edx]
	mov [ebp-0x12c], ecx
	mov [ebp-0x144], ecx
	mov ebx, [edx+0x20]
	mov [ebp-0x118], ebx
	mov eax, [ecx+0x10]
	mov [ebp-0x128], eax
	mov ebx, edx
	add ebx, 0x60
	add edx, 0x44
	mov [ebp-0x140], edx
	test eax, eax
	jz FX_UpdateEffectPartial_20
	mov edx, [ebp+0x14]
	sub edx, [ebp+0x10]
	mov [ebp-0x120], edx
	mov dword [ebp-0x11c], 0x0
	mov dword [ebp-0xdc], 0x0
	mov ecx, [ebp+0xc]
	add ecx, 0x54
	mov [ebp-0x158], ecx
	mov eax, [ebp+0xc]
	add eax, 0x70
	mov [ebp-0x15c], eax
	jmp FX_UpdateEffectPartial_30
FX_UpdateEffectPartial_60:
	mov eax, [ebp+0x10]
	mov [ebp-0xcc], eax
FX_UpdateEffectPartial_70:
	mov edi, [esi+0x4]
	sub eax, [ebp-0x118]
	cdq
	idiv edi
	add eax, 0x1
	mov [ebp-0x124], eax
	imul edi, eax
	add edi, [ebp-0x118]
	mov eax, [ebx]
	mov [ebp-0x48], eax
	mov eax, [ebx+0x4]
	mov [ebp-0x44], eax
	mov eax, [ebx+0x8]
	mov [ebp-0x40], eax
	mov eax, [ebx+0xc]
	mov [ebp-0x3c], eax
	mov eax, [ebx+0x10]
	mov [ebp-0x38], eax
	mov eax, [ebx+0x14]
	mov [ebp-0x34], eax
	mov eax, [ebx+0x18]
	mov [ebp-0x30], eax
	cmp [ebp+0x14], edi
	jl FX_UpdateEffectPartial_40
	mov ecx, [ebp-0x124]
	cmp [esi+0x8], ecx
	jg FX_UpdateEffectPartial_50
FX_UpdateEffectPartial_40:
	add dword [ebp-0x11c], 0x1
	add dword [ebp-0xdc], 0xfc
	mov eax, [ebp-0x11c]
	cmp [ebp-0x128], eax
	jz FX_UpdateEffectPartial_20
FX_UpdateEffectPartial_30:
	mov esi, [ebp-0xdc]
	mov edx, [ebp-0x144]
	add esi, [edx+0x1c]
	cmp byte [esi+0xb0], 0x3
	jz FX_UpdateEffectPartial_40
	cmp dword [ebp+0x14], 0x7fffffff
	jz FX_UpdateEffectPartial_60
	cmp dword [ebp-0x120], 0x80
	jle FX_UpdateEffectPartial_60
	mov ecx, [ebp-0x120]
	xor edx, edx
	mov eax, esi
	call FX_LimitStabilizeTimeForElemDef_Recurse
	add eax, 0x1
	mov ecx, [ebp+0xc]
	mov ecx, [ecx]
	mov [ebp-0x144], ecx
	mov esi, [ebp-0xdc]
	add esi, [ecx+0x1c]
	cmp [ebp-0x120], eax
	jle FX_UpdateEffectPartial_60
	mov edx, [ebp-0x120]
	sub edx, eax
	mov eax, edx
	add eax, [ebp+0x10]
	mov [ebp-0xcc], eax
	jmp FX_UpdateEffectPartial_70
FX_UpdateEffectPartial_20:
	mov ecx, [ebp+0xc]
	movzx edx, word [ecx+0x10]
	cmp dx, 0xffff
	jz FX_UpdateEffectPartial_80
	movss xmm0, dword [ebp+0x1c]
	subss xmm0, [ebp+0x18]
	movss [ebp-0x14c], xmm0
	mov eax, [ebp+0x14]
	sub eax, [ebp+0x10]
	cvtsi2ss xmm0, eax
	movss [ebp-0x150], xmm0
	mov eax, [ebp-0x140]
	add eax, 0x10
	mov [ebp-0x154], eax
	lea edi, [ebx+0x10]
	jmp FX_UpdateEffectPartial_90
FX_UpdateEffectPartial_110:
	movzx edx, word [esi]
	cmp dx, 0xffff
	jz FX_UpdateEffectPartial_100
FX_UpdateEffectPartial_90:
	movzx edx, dx
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x178]
	lea esi, [eax+edx*4]
	movsx ecx, byte [esi+0x6]
	test ecx, ecx
	js FX_UpdateEffectPartial_110
	cmp [ebp-0x128], ecx
	jle FX_UpdateEffectPartial_110
	mov edx, [ebp+0xc]
	mov eax, [edx]
	mov edx, [eax+0x1c]
	lea eax, [ecx*4]
	shl ecx, 0x8
	sub ecx, eax
	mov eax, [ecx+edx+0xf4]
	cvtsi2ss xmm0, dword [eax+0x8]
	movss xmm1, dword [ebp-0x14c]
	divss xmm1, xmm0
	movss [ebp-0xd8], xmm1
	movss xmm1, dword [ebp+0x18]
	divss xmm1, xmm0
	movss [esp], xmm1
	movss [ebp-0x178], xmm1
	call floorf
	fstp dword [ebp-0x138]
	movss xmm0, dword [ebp-0x178]
	subss xmm0, [ebp-0x138]
	movss xmm1, dword [_float_1_00000000]
	subss xmm1, xmm0
	movss [ebp-0x10c], xmm1
	movss xmm0, dword [ebp-0xd8]
	ucomiss xmm0, xmm1
	jbe FX_UpdateEffectPartial_110
	movss [ebp-0x110], xmm0
	pxor xmm1, xmm1
	movss [ebp-0x114], xmm1
	movaps xmm0, xmm1
	jmp FX_UpdateEffectPartial_120
FX_UpdateEffectPartial_130:
	mov dword [ebp-0x10c], 0x3f800000
	movss xmm0, dword [ebp-0x114]
FX_UpdateEffectPartial_120:
	addss xmm0, [ebp-0x10c]
	movss [ebp-0x114], xmm0
	movaps xmm2, xmm0
	divss xmm2, dword [ebp-0xd8]
	movss xmm1, dword [ebx+0x10]
	mov eax, [ebp-0x140]
	movss xmm0, dword [eax+0x10]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x38], xmm1
	movss xmm1, dword [edi+0x4]
	mov edx, [ebp-0x154]
	movss xmm0, dword [edx+0x4]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x34], xmm1
	movss xmm1, dword [edi+0x8]
	movss xmm0, dword [edx+0x8]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x30], xmm1
	movss xmm1, dword [ebx]
	movss xmm0, dword [eax]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x48], xmm1
	movss xmm1, dword [ebx+0x4]
	movss xmm0, dword [eax+0x4]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x44], xmm1
	movss xmm1, dword [ebx+0x8]
	movss xmm0, dword [eax+0x8]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x40], xmm1
	movss xmm1, dword [ebx+0xc]
	movss xmm0, dword [eax+0xc]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x3c], xmm1
	lea ecx, [ebp-0x48]
	mov [esp], ecx
	movss [ebp-0x188], xmm2
	call Vec4Normalize
	fstp st0
	movss xmm2, dword [ebp-0x188]
	movss xmm0, dword [ebp-0x14c]
	mulss xmm0, xmm2
	addss xmm0, [ebp+0x18]
	movss [esp+0x14], xmm0
	mulss xmm2, [ebp-0x150]
	cvttss2si eax, xmm2
	add eax, [ebp+0x10]
	mov [esp+0x10], eax
	lea eax, [ebp-0x48]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call FX_SpawnTrailElem_Cull
	movss xmm0, dword [ebp-0x110]
	subss xmm0, [ebp-0x10c]
	movss [ebp-0x110], xmm0
	ucomiss xmm0, [_float_1_00000000]
	ja FX_UpdateEffectPartial_130
	movzx edx, word [esi]
	cmp dx, 0xffff
	jnz FX_UpdateEffectPartial_90
FX_UpdateEffectPartial_100:
	mov edx, [ebp+0xc]
FX_UpdateEffectPartial_250:
	mov eax, [ebp+0x14]
	sub eax, [edx+0x20]
	mov ecx, [ebp-0x12c]
	cmp eax, [ecx+0xc]
	jg FX_UpdateEffectPartial_140
FX_UpdateEffectPartial_10:
	mov eax, edx
FX_UpdateEffectPartial_240:
	mov [ebp-0xe4], eax
	mov dword [ebp-0x134], 0x0
	mov ebx, eax
FX_UpdateEffectPartial_220:
	mov eax, [ebp-0x134]
	add eax, eax
	mov edx, [ebp+0x20]
	movzx esi, word [eax+edx]
	mov ecx, [ebp+0x24]
	movzx eax, word [eax+ecx]
	mov [ebp-0xd2], ax
	add ebx, 0x8
	mov [ebp-0xe0], ebx
	mov eax, [ebp-0xe4]
	movzx eax, word [eax+0x8]
	mov [ebp-0x108], ax
	cmp si, [ebp-0xd2]
	jnz FX_UpdateEffectPartial_150
	mov ecx, eax
	mov [ebp-0xd2], cx
	movzx esi, word [ebx]
	cmp cx, si
	jz FX_UpdateEffectPartial_160
FX_UpdateEffectPartial_200:
	mov [ebp-0x108], si
	jmp FX_UpdateEffectPartial_150
FX_UpdateEffectPartial_180:
	cmp [ebp-0xd2], bx
	jz FX_UpdateEffectPartial_170
FX_UpdateEffectPartial_190:
	mov esi, ebx
FX_UpdateEffectPartial_150:
	movzx edi, si
	mov edx, [ebp+0x8]
	mov eax, [edx+0x174]
	lea ebx, [eax+edi*4]
	mov ecx, [ebp+0x14]
	mov [esp+0x4], ecx
	mov eax, [ebp+0x10]
	mov [esp], eax
	mov ecx, ebx
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	call FX_UpdateElement
	movzx ebx, word [ebx+0x4]
	test eax, eax
	jnz FX_UpdateEffectPartial_180
	mov edx, [ebp-0x134]
	mov [esp+0xc], edx
	mov ecx, [ebp+0xc]
	mov [esp+0x8], ecx
	mov [esp+0x4], edi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call FX_FreeElem
	cmp si, [ebp-0x108]
	movzx edx, word [ebp-0x108]
	cmovz edx, ebx
	mov [ebp-0x108], dx
	cmp [ebp-0xd2], bx
	jnz FX_UpdateEffectPartial_190
FX_UpdateEffectPartial_170:
	movzx ecx, word [ebp-0x108]
	mov ebx, [ebp-0xe0]
	mov [ebp-0xd2], cx
	movzx esi, word [ebx]
	cmp cx, si
	jnz FX_UpdateEffectPartial_200
FX_UpdateEffectPartial_160:
	add dword [ebp-0x134], 0x1
	add dword [ebp-0xe4], 0x2
	cmp dword [ebp-0x134], 0x3
	jz FX_UpdateEffectPartial_210
	mov ebx, [ebp-0xe4]
	jmp FX_UpdateEffectPartial_220
FX_UpdateEffectPartial_50:
	mov eax, [ebp+0x14]
	sub eax, [ebp-0xcc]
	cvtsi2ss xmm0, eax
	movss [ebp-0xec], xmm0
FX_UpdateEffectPartial_230:
	mov eax, edi
	sub eax, [ebp-0xcc]
	cvtsi2ss xmm2, eax
	divss xmm2, dword [ebp-0xec]
	movss xmm1, dword [ebx+0x10]
	mov eax, [ebp-0x140]
	movss xmm0, dword [eax+0x10]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x38], xmm1
	mov edx, [ebp-0x15c]
	movss xmm1, dword [edx+0x4]
	mov ecx, [ebp-0x158]
	movss xmm0, dword [ecx+0x4]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x34], xmm1
	movss xmm1, dword [edx+0x8]
	movss xmm0, dword [ecx+0x8]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x30], xmm1
	movss xmm1, dword [ebx]
	movss xmm0, dword [eax]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x48], xmm1
	movss xmm1, dword [ebx+0x4]
	movss xmm0, dword [eax+0x4]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x44], xmm1
	movss xmm1, dword [ebx+0x8]
	movss xmm0, dword [eax+0x8]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x40], xmm1
	movss xmm1, dword [ebx+0xc]
	movss xmm0, dword [eax+0xc]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm1, xmm2
	movss [ebp-0x3c], xmm1
	lea eax, [ebp-0x48]
	mov [esp], eax
	call Vec4Normalize
	fstp st0
	mov edx, [ebp-0x124]
	mov [esp+0x18], edx
	mov dword [esp+0x14], 0x0
	mov [esp+0x10], edi
	lea ecx, [ebp-0x48]
	mov [esp+0xc], ecx
	mov eax, [ebp-0x11c]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call FX_SpawnElem
	mov eax, [ebp+0xc]
	mov eax, [eax]
	mov [ebp-0x144], eax
	mov eax, [ebp-0xdc]
	mov edx, [ebp-0x144]
	add eax, [edx+0x1c]
	add dword [ebp-0x124], 0x1
	add edi, [eax+0x4]
	cmp [ebp+0x14], edi
	jl FX_UpdateEffectPartial_40
	mov ecx, [ebp-0x124]
	cmp [eax+0x8], ecx
	jg FX_UpdateEffectPartial_230
	jmp FX_UpdateEffectPartial_40
FX_UpdateEffectPartial_140:
	mov [esp+0x4], edx
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call FX_StopEffect
	mov eax, [ebp+0xc]
	jmp FX_UpdateEffectPartial_240
FX_UpdateEffectPartial_80:
	mov edx, ecx
	jmp FX_UpdateEffectPartial_250
FX_UpdateEffectPartial_210:
	mov edx, [ebp+0xc]
	movzx eax, word [edx+0x10]
	cmp ax, 0xffff
	jz FX_UpdateEffectPartial_260
	mov dword [ebp-0xe8], 0x1
	lea ecx, [edx+0x44]
	mov [ebp-0x140], ecx
FX_UpdateEffectPartial_480:
	movzx edx, ax
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x178]
	lea edx, [eax+edx*4]
	mov [ebp-0x130], edx
	mov eax, [edx]
	mov edx, [edx+0x4]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	mov eax, [ebp+0x28]
	test eax, eax
	jz FX_UpdateEffectPartial_270
	mov ebx, [ebp-0xe8]
	mov eax, [ebp+0x28]
	movzx edx, word [eax+ebx*2-0x2]
FX_UpdateEffectPartial_550:
	mov eax, [ebp+0x2c]
	test eax, eax
	jz FX_UpdateEffectPartial_280
	mov ecx, [ebp-0xe8]
	mov ebx, [ebp+0x2c]
	movzx eax, word [ebx+ecx*2-0x2]
FX_UpdateEffectPartial_540:
	mov [ebp-0xf6], dx
	mov [ebp-0xf8], ax
	cmp dx, 0xffff
	jz FX_UpdateEffectPartial_290
	mov ecx, eax
FX_UpdateEffectPartial_530:
	cmp dx, [ebp-0x1e]
	setz byte [ebp-0xed]
	cmp dx, cx
	jz FX_UpdateEffectPartial_300
	mov word [ebp-0xd0], 0xffff
	jmp FX_UpdateEffectPartial_310
FX_UpdateEffectPartial_360:
	mov edx, [ebp-0x70]
	mov esi, [ebp-0x7c]
	cmp [ebp-0x74], esi
	mov eax, [ebp-0x74]
	cmovl eax, esi
	mov [ebp-0x74], eax
	cmp eax, edx
	jnz FX_UpdateEffectPartial_320
FX_UpdateEffectPartial_370:
	cmp edx, [ebp-0x78]
	jge FX_UpdateEffectPartial_330
FX_UpdateEffectPartial_350:
	mov byte [ebp-0xed], 0x0
FX_UpdateEffectPartial_420:
	movzx ebx, word [ebp-0xce]
	cmp [ebp-0xf8], bx
	jz FX_UpdateEffectPartial_340
FX_UpdateEffectPartial_430:
	movzx eax, word [ebp-0xf6]
	mov [ebp-0xd0], ax
	mov [ebp-0xf6], bx
FX_UpdateEffectPartial_310:
	movzx ebx, word [ebp-0xf6]
	mov [ebp-0x148], ebx
	mov edx, [ebp+0x8]
	mov eax, [edx+0x17c]
	lea eax, [eax+ebx*4]
	mov [ebp-0xf4], eax
	movzx ecx, word [eax+0x14]
	mov [ebp-0xce], cx
	mov eax, [eax+0x10]
	movsx edi, byte [ebp-0x1a]
	mov edx, [ebp+0xc]
	mov [ebp-0xc4], edx
	mov ecx, [ebp+0x10]
	mov [ebp-0x74], ecx
	mov ebx, [ebp+0x14]
	mov [ebp-0x70], ebx
	mov esi, eax
	mov [ebp-0x7c], eax
	cmp eax, ebx
	jg FX_UpdateEffectPartial_350
	mov [ebp-0xc0], edi
	mov dword [ebp-0xbc], 0x0
	movzx ecx, word [edx+0x12]
	lea ecx, [eax+ecx]
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
	mov [ebp-0x88], ecx
	mov dword [ebp-0x84], 0x0
	mov edx, [ebp+0xc]
	mov edx, [edx]
	mov [ebp-0x13c], edx
	lea eax, [edi*4]
	shl edi, 0x8
	sub edi, eax
	mov ebx, edi
	add ebx, [edx+0x1c]
	mov eax, [ebx+0x34]
	add eax, 0x1
	mov edx, fx_randomTable
	movzx edx, word [edx+ecx*4+0x44]
	imul eax, edx
	sar eax, 0x10
	add eax, [ebx+0x30]
	lea edx, [eax+esi]
	mov [ebp-0x78], edx
	cvtsi2ss xmm0, eax
	movss [ebp-0x80], xmm0
	mov ecx, [ebp-0xf4]
	mov [ebp-0x64], ecx
	cmp [ebp-0x70], edx
	jl FX_UpdateEffectPartial_360
	mov ebx, [ebp-0x13c]
	mov eax, [ebx+0x1c]
	mov eax, [edi+eax+0xe0]
	test eax, eax
	jz FX_UpdateEffectPartial_330
	mov [ebp-0x70], edx
	mov esi, [ebp-0x7c]
	cmp [ebp-0x74], esi
	mov eax, [ebp-0x74]
	cmovl eax, esi
	mov [ebp-0x74], eax
	cmp eax, edx
	jz FX_UpdateEffectPartial_370
FX_UpdateEffectPartial_320:
	sub edx, esi
	cvtsi2ss xmm0, edx
	movss [ebp-0x6c], xmm0
	divss xmm0, dword [ebp-0x80]
	movss [ebp-0x68], xmm0
	mov edx, [ebp-0xc4]
	lea eax, [ebp-0xb8]
	mov [esp+0x10], eax
	mov eax, [ebp-0x88]
	mov [esp+0xc], eax
	lea eax, [edx+0x44]
	mov [esp+0x8], eax
	lea eax, [edx+0x28]
	mov [esp+0x4], eax
	mov ecx, [edx]
	mov eax, [ebp-0xc0]
	lea edx, [eax*4]
	shl eax, 0x8
	sub eax, edx
	add eax, [ecx+0x1c]
	mov [esp], eax
	call FX_GetOrientation
	mov ebx, 0x1
	mov edx, [ebp-0xf4]
	movsx eax, word [edx+0x16]
	cvtsi2ss xmm0, eax
	movss xmm1, dword [_float_0_00100000]
	mulss xmm0, xmm1
	xor eax, eax
	mov [ebp-0x2c], eax
	mov [ebp-0x28], eax
	movss [ebp-0x24], xmm0
	lea eax, [ebp-0x2c]
	mov [ebp-0x60], eax
	mov dword [ebp-0x4c], 0x0
	mov byte [ebp-0x50], 0x0
	mov eax, [ebp-0xc4]
	mov ecx, [eax]
	mov eax, [ebp-0xc0]
	lea edx, [eax*4]
	shl eax, 0x8
	sub eax, edx
	add eax, [ecx+0x1c]
	cmp byte [eax+0xb0], 0x5
	jz FX_UpdateEffectPartial_380
	mov eax, [eax]
FX_UpdateEffectPartial_520:
	test ah, 0x1
	jz FX_UpdateEffectPartial_390
	cmp dword [ebp-0xbc], 0xff
	jz FX_UpdateEffectPartial_400
	lea eax, [ebp-0x5c]
	mov [esp+0x8], eax
	mov eax, [ebp-0x64]
	mov [esp+0x4], eax
	lea ecx, [ebp-0xb8]
	mov [esp], ecx
	call FX_OrientationPosToWorldPos
	mov ebx, 0x1
	movss xmm1, dword [_float_0_00100000]
FX_UpdateEffectPartial_510:
	movss xmm0, dword [ebp-0x24]
	divss xmm0, xmm1
	cvttss2si eax, xmm0
	cmp eax, 0xffff8000
	jge FX_UpdateEffectPartial_410
	mov edx, 0xffff8000
FX_UpdateEffectPartial_490:
	mov eax, [ebp-0xf4]
	mov [eax+0x16], dx
	test ebx, ebx
	jnz FX_UpdateEffectPartial_350
FX_UpdateEffectPartial_330:
	cmp byte [ebp-0xed], 0x0
	jz FX_UpdateEffectPartial_420
	cmp word [ebp-0xd0], 0xffff
	jz FX_UpdateEffectPartial_420
	lea eax, [ebp-0x20]
	mov [esp+0xc], eax
	mov edx, [ebp+0xc]
	mov [esp+0x8], edx
	movzx eax, word [ebp-0xd0]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call FX_FreeTrailElem
	movzx ebx, word [ebp-0xce]
	cmp [ebp-0xf8], bx
	jnz FX_UpdateEffectPartial_430
FX_UpdateEffectPartial_340:
	cmp word [ebp-0xf6], 0xffff
	jz FX_UpdateEffectPartial_300
	movzx edx, word [ebp-0xf6]
	cmp [ebp-0x1c], dx
	jnz FX_UpdateEffectPartial_300
	cmp byte [ebp-0xed], 0x0
	jnz FX_UpdateEffectPartial_440
	mov edx, [ebp+0xc]
	mov eax, [edx+0x4]
	test eax, 0x10000
	jz FX_UpdateEffectPartial_300
	mov eax, [edx+0x7c]
	mov ecx, [ebp-0xf4]
	mov [ecx+0xc], eax
	lea eax, [ebp-0x48]
	lea ebx, [ebp-0x3c]
	mov [esp+0x18], ebx
	mov [esp+0x14], eax
	mov [esp+0x10], ecx
	mov eax, [ebp+0xc]
	movzx edx, word [eax+0x12]
	add edx, [ecx+0x10]
	movzx eax, byte [ecx+0x1e]
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
	mov [esp+0xc], ecx
	mov edx, [ebp-0x140]
	mov [esp+0x8], edx
	mov ebx, [ebp+0xc]
	mov ecx, [ebx]
	movsx eax, byte [ebp-0x1a]
	lea edx, [eax*4]
	shl eax, 0x8
	sub eax, edx
	add eax, [ecx+0x1c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call FX_GetOriginForTrailElem
	lea esi, [ebp-0x3c]
	mov edi, [ebp-0xf4]
	add edi, 0x18
	movss xmm1, dword [_float_127_00000000]
FX_UpdateEffectPartial_470:
	lea edx, [esi-0xc]
	mov ebx, edi
FX_UpdateEffectPartial_460:
	movss xmm0, dword [edx]
	mulss xmm0, xmm1
	cvttss2si eax, xmm0
	cmp eax, 0xffffff80
	jge FX_UpdateEffectPartial_450
	mov ecx, 0xffffff80
FX_UpdateEffectPartial_600:
	mov [ebx], cl
	add edx, 0x4
	add ebx, 0x1
	cmp edx, esi
	jnz FX_UpdateEffectPartial_460
	add esi, 0xc
	add edi, 0x3
	lea eax, [ebp-0x24]
	cmp eax, esi
	jnz FX_UpdateEffectPartial_470
FX_UpdateEffectPartial_300:
	mov eax, [ebp-0x20]
	mov edx, [ebp-0x1c]
	mov ecx, [ebp-0x130]
	mov [ecx], eax
	mov [ecx+0x4], edx
	movzx eax, word [ebp-0x20]
	add dword [ebp-0xe8], 0x1
	cmp ax, 0xffff
	jnz FX_UpdateEffectPartial_480
	mov ebx, [ebp+0xc]
FX_UpdateEffectPartial_620:
	mov eax, [ebp+0x14]
	mov [ebx+0x24], eax
	add esp, 0x19c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_UpdateEffectPartial_410:
	mov edx, 0x7fff
	cmp eax, 0x8000
	cmovl edx, eax
	jmp FX_UpdateEffectPartial_490
FX_UpdateEffectPartial_390:
	test eax, 0x6000000
	jz FX_UpdateEffectPartial_500
	mov ecx, [ebp-0x70]
	mov edx, [ebp-0x74]
	lea esi, [ebp-0xc4]
	mov eax, esi
	call FX_NextElementPosition
	mov eax, [ebp-0x64]
	mov [esp+0x8], eax
	lea eax, [ebp-0x5c]
	mov [esp+0x4], eax
	lea ecx, [ebp-0xb8]
	mov [esp], ecx
	call FX_OrientationPosFromWorldPos
	mov ebx, 0x1
	movss xmm1, dword [_float_0_00100000]
	jmp FX_UpdateEffectPartial_510
FX_UpdateEffectPartial_380:
	mov eax, [eax]
	test eax, 0x8000000
	jz FX_UpdateEffectPartial_520
	jmp FX_UpdateEffectPartial_510
FX_UpdateEffectPartial_500:
	mov ecx, [ebp-0x7c]
	movss xmm2, dword [ebp-0x80]
	lea esi, [ebp-0xc4]
	mov edx, [ebp-0x64]
	mov eax, [ebp-0x70]
	sub eax, ecx
	cvtsi2ss xmm1, eax
	mov eax, [ebp-0x74]
	sub eax, ecx
	cvtsi2ss xmm0, eax
	lea ecx, [ebp-0x5c]
	divss xmm1, xmm2
	divss xmm0, xmm2
	mov eax, esi
	call FX_IntegrateVelocity
	mov ebx, 0x1
	movss xmm1, dword [_float_0_00100000]
	jmp FX_UpdateEffectPartial_510
FX_UpdateEffectPartial_290:
	movzx eax, word [ebp-0x1e]
	mov [ebp-0xf6], ax
	mov edx, eax
	movzx ecx, word [ebp-0xf8]
	jmp FX_UpdateEffectPartial_530
FX_UpdateEffectPartial_280:
	mov eax, 0xffff
	jmp FX_UpdateEffectPartial_540
FX_UpdateEffectPartial_270:
	mov edx, 0xffff
	jmp FX_UpdateEffectPartial_550
FX_UpdateEffectPartial_400:
	lea ebx, [ebp-0x48]
	mov [esp+0x8], ebx
	mov eax, [ebp-0x64]
	mov [esp+0x4], eax
	lea eax, [ebp-0xb8]
	mov [esp], eax
	call FX_OrientationPosToWorldPos
	mov edx, [ebp-0x74]
	lea ebx, [edx+0x32]
	mov eax, [ebp-0x70]
	cmp eax, ebx
	jle FX_UpdateEffectPartial_560
	lea esi, [ebp-0xc4]
	jmp FX_UpdateEffectPartial_570
FX_UpdateEffectPartial_590:
	mov edx, ebx
	mov ebx, ecx
FX_UpdateEffectPartial_570:
	lea ecx, [ebp-0x48]
	mov [esp+0x4], ecx
	mov [esp], ebx
	mov ecx, edx
	mov edx, esi
	mov eax, [ebp+0x8]
	call FX_UpdateElementPosition_CollidingStep
	test eax, eax
	jz FX_UpdateEffectPartial_580
	lea ecx, [ebx+0x32]
	mov eax, [ebp-0x70]
	cmp eax, ecx
	jg FX_UpdateEffectPartial_590
FX_UpdateEffectPartial_610:
	lea edx, [ebp-0x48]
	mov [esp+0x4], edx
	mov [esp], eax
	mov ecx, ebx
	mov edx, esi
	mov eax, [ebp+0x8]
	call FX_UpdateElementPosition_CollidingStep
	mov ebx, eax
	movss xmm1, dword [_float_0_00100000]
	jmp FX_UpdateEffectPartial_510
FX_UpdateEffectPartial_450:
	mov ecx, 0x7f
	cmp eax, 0x80
	cmovl ecx, eax
	jmp FX_UpdateEffectPartial_600
FX_UpdateEffectPartial_560:
	mov ebx, edx
	lea esi, [ebp-0xc4]
	jmp FX_UpdateEffectPartial_610
FX_UpdateEffectPartial_440:
	lea eax, [ebp-0x20]
	mov [esp+0xc], eax
	mov ecx, [ebp+0xc]
	mov [esp+0x8], ecx
	mov ebx, [ebp-0x148]
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call FX_FreeTrailElem
	jmp FX_UpdateEffectPartial_300
FX_UpdateEffectPartial_580:
	xor ebx, ebx
	movss xmm1, dword [_float_0_00100000]
	jmp FX_UpdateEffectPartial_510
FX_UpdateEffectPartial_260:
	mov ebx, edx
	jmp FX_UpdateEffectPartial_620


;FX_AddNonSpriteDrawSurfs(FxCmd*)
FX_AddNonSpriteDrawSurfs:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov ebx, [eax]
	mov eax, fx_enable
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz FX_AddNonSpriteDrawSurfs_10
	mov eax, fx_draw
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz FX_AddNonSpriteDrawSurfs_20
FX_AddNonSpriteDrawSurfs_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
FX_AddNonSpriteDrawSurfs_20:
	mov [esp], ebx
	call FX_SortEffects
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp FX_DrawNonSpriteElems
	nop


;FX_SpawnAllFutureLooping(FxSystem*, FxEffect*, int, int, FxSpatialFrame const*, FxSpatialFrame const*, int, int)
FX_SpawnAllFutureLooping:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov edx, [ebp+0x10]
	mov ecx, edx
	add ecx, [ebp+0x14]
	cmp edx, ecx
	jz FX_SpawnAllFutureLooping_10
	lea eax, [edx*4]
	mov ebx, edx
	shl ebx, 0x8
	sub ebx, eax
	mov [ebp-0x3c], ebx
	mov [ebp-0x44], edx
	mov eax, [ebp+0xc]
	mov edi, [eax]
	mov eax, 0x7fffffff
	sub eax, [ebp+0x24]
	cvtsi2ss xmm0, eax
	movss [ebp-0x4c], xmm0
	mov eax, [ebp+0x1c]
	add eax, 0x10
	mov [ebp-0x50], eax
	mov edx, [ebp+0x18]
	add edx, 0x10
	mov [ebp-0x54], edx
	mov [ebp-0x48], ecx
	jmp FX_SpawnAllFutureLooping_20
FX_SpawnAllFutureLooping_30:
	add dword [ebp-0x44], 0x1
	add dword [ebp-0x3c], 0xfc
	mov ebx, [ebp-0x48]
	cmp [ebp-0x44], ebx
	jz FX_SpawnAllFutureLooping_10
FX_SpawnAllFutureLooping_60:
	mov ebx, [ebp-0x3c]
FX_SpawnAllFutureLooping_20:
	mov eax, [edi+0x1c]
	cmp dword [eax+ebx+0x8], 0x7fffffff
	jz FX_SpawnAllFutureLooping_30
	add ebx, eax
	cmp byte [ebx+0xb0], 0x3
	jz FX_SpawnAllFutureLooping_30
	mov eax, [ebx+0x4]
	mov [ebp-0x5c], eax
	mov eax, [ebp+0x24]
	sub eax, [ebp+0x20]
	cdq
	idiv dword [ebp-0x5c]
	lea esi, [eax+0x1]
	mov eax, [ebp-0x5c]
	imul eax, esi
	mov [ebp-0x5c], eax
	add eax, [ebp+0x20]
	mov [ebp-0x40], eax
	mov edx, [ebp+0x18]
	mov eax, [edx]
	mov [ebp-0x34], eax
	mov eax, [edx+0x4]
	mov [ebp-0x30], eax
	mov eax, [edx+0x8]
	mov [ebp-0x2c], eax
	mov eax, [edx+0xc]
	mov [ebp-0x28], eax
	mov eax, [edx+0x10]
	mov [ebp-0x24], eax
	mov eax, [edx+0x14]
	mov [ebp-0x20], eax
	mov eax, [edx+0x18]
	mov [ebp-0x1c], eax
	cmp esi, [ebx+0x8]
	jge FX_SpawnAllFutureLooping_30
	mov ebx, edx
	jmp FX_SpawnAllFutureLooping_40
FX_SpawnAllFutureLooping_50:
	mov ebx, [ebp+0x18]
FX_SpawnAllFutureLooping_40:
	mov eax, [ebp-0x40]
	sub eax, [ebp+0x24]
	cvtsi2ss xmm2, eax
	divss xmm2, dword [ebp-0x4c]
	movss xmm1, dword [ebx+0x10]
	mov eax, [ebp+0x1c]
	movss xmm0, dword [eax+0x10]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x24], xmm1
	mov edx, [ebp-0x54]
	movss xmm1, dword [edx+0x4]
	mov ebx, [ebp-0x50]
	movss xmm0, dword [ebx+0x4]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x20], xmm1
	movss xmm1, dword [edx+0x8]
	movss xmm0, dword [ebx+0x8]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x1c], xmm1
	mov eax, [ebp+0x18]
	movss xmm1, dword [eax]
	mov edx, [ebp+0x1c]
	movss xmm0, dword [edx]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x34], xmm1
	movss xmm1, dword [eax+0x4]
	movss xmm0, dword [edx+0x4]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x30], xmm1
	movss xmm1, dword [eax+0x8]
	movss xmm0, dword [edx+0x8]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x2c], xmm1
	movss xmm1, dword [eax+0xc]
	movss xmm0, dword [edx+0xc]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm1, xmm2
	movss [ebp-0x28], xmm1
	lea ebx, [ebp-0x34]
	mov [esp], ebx
	call Vec4Normalize
	fstp st0
	mov [esp+0x18], esi
	mov dword [esp+0x14], 0x0
	mov eax, [ebp-0x40]
	mov [esp+0x10], eax
	mov [esp+0xc], ebx
	mov ebx, [ebp-0x44]
	mov [esp+0x8], ebx
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call FX_SpawnElem
	mov ebx, [ebp+0xc]
	mov edi, [ebx]
	mov eax, [ebp-0x3c]
	add eax, [edi+0x1c]
	add esi, 0x1
	mov edx, [eax+0x4]
	add [ebp-0x40], edx
	cmp [eax+0x8], esi
	jg FX_SpawnAllFutureLooping_50
	add dword [ebp-0x44], 0x1
	add dword [ebp-0x3c], 0xfc
	mov ebx, [ebp-0x48]
	cmp [ebp-0x44], ebx
	jnz FX_SpawnAllFutureLooping_60
FX_SpawnAllFutureLooping_10:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Initialized global or static variables of fx_update:
SECTION .data


;Initialized constant data of fx_update:
SECTION .rdata


;Zero initialized global or static variables of fx_update:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_0_00100000:		dd 0x3a83126f	; 0.001
_float_800_00000000:		dd 0x44480000	; 800
_float__0_50000000:		dd 0xbf000000	; -0.5
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_69999999:		dd 0x3f333333	; 0.7
_float_0_80000001:		dd 0x3f4ccccd	; 0.8
_float__2_00000000:		dd 0xc0000000	; -2
_float_255_00000000:		dd 0x437f0000	; 255
_float_0_25000000:		dd 0x3e800000	; 0.25
_float_0_00390625:		dd 0x3b800000	; 0.00390625
_float_0_00003052:		dd 0x38000000	; 3.05176e-05
_float_256_00000000:		dd 0x43800000	; 256
_float_0_00000000:		dd 0x0	; 0
_float_127_00000000:		dd 0x42fe0000	; 127

