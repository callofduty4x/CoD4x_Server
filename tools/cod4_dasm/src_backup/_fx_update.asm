;Imports of fx_update:
	extern _Z13FX_StopEffectP8FxSystemP8FxEffect
	extern cg_entitiesArray
	extern _Z10AxisToQuatPA3_KfPf
	extern fx_randomTable
	extern floorf
	extern ceilf
	extern _Z27FX_OrientationPosToWorldPosPK13orientation_tPKfPf
	extern _Z11CM_BoxTraceP7trace_tPKfS2_S2_S2_ji
	extern _Z29FX_OrientationPosFromWorldPosPK13orientation_tPKfPf
	extern _Z21Vec3Basis_RightHandedPKfPfS1_
	extern _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj
	extern _Z27FX_EffectNoLongerReferencedP8FxSystemP8FxEffect
	extern _Z20FX_GetVelocityAtTimePK9FxElemDefiffPK13orientation_tPKfPf
	extern _Z17FX_GetOrientationPK9FxElemDefPK14FxSpatialFrameS4_iP13orientation_t
	extern _Z7ms_randv
	extern _Z13Vec4NormalizePf
	extern _Z19PerpendicularVectorPKfPf
	extern _Z23FX_SortNewElemsInEffectP8FxSystemP8FxEffect
	extern _Z23FX_RunGarbageCollectionP8FxSystem
	extern _Z12FX_GetSystemi
	extern memset
	extern _Z13FX_KillEffectP8FxSystemP8FxEffect
	extern iInterlockedCompareExchange
	extern _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi
	extern fx_enable
	extern memcpy
	extern _Z24Sys_EnterCriticalSection15CriticalSection
	extern _Z14Phys_RunToTimei9PhysWorldi
	extern _Z24Sys_LeaveCriticalSection15CriticalSection
	extern _Z13FX_BeginMarksi
	extern _Z13FX_Beam_Beginv
	extern _Z18FX_PostLight_Beginv
	extern _Z14FX_SpriteBeginv
	extern _Z24FX_SpawnTrailElem_NoCullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif
	extern _Z22FX_SpawnTrailElem_CullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif
	extern _Z22CG_AddSceneTracerBeamsi
	extern _Z21CG_GenerateSceneVertsi
	extern fx_draw
	extern _Z16FX_DrawSpotLightP8FxSystem
	extern _Z20FX_FreeSpotLightElemP8FxSystemtP8FxEffect
	extern iInterlockedExchange
	extern _Z17Com_GetClientDObjii
	extern _Z12DObjNumBonesPK6DObj_s
	extern _Z10CG_GetPoseii
	extern _Z25CG_DObjGetWorldBoneMatrixPK7cpose_tP6DObj_siPA3_fPf
	extern _Z21CG_GetDObjOrientationiiPA3_fPf
	extern _Z8AxisCopyPA3_KfPA3_f
	extern _Z11FX_FreeElemP8FxSystemtP8FxEffectj
	extern _Z16FX_FreeTrailElemP8FxSystemtP8FxEffectP7FxTrail
	extern _Z24FX_GetOriginForTrailElemP8FxEffectPK9FxElemDefPK14FxSpatialFrameiPfS7_S7_
	extern _Z14FX_SortEffectsP8FxSystem
	extern _Z21FX_DrawNonSpriteElemsP8FxSystem

;Exports of fx_update:
	global _Z19FX_UpdateEffectBoltP8FxSystemP8FxEffect
	global _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi
	global _Z20FX_IntegrateVelocityPK12FxUpdateElemffPfS2_
	global _Z22FX_NextElementPositionP12FxUpdateElemii
	global _Z38FX_UpdateElementPosition_CollidingStepP8FxSystemP12FxUpdateElemiiPf
	global _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii
	global _Z9FX_UpdateP8FxSystemih
	global _Z11FX_RewindToii
	global _Z12FX_EndUpdatei
	global _Z13FX_RunPhysicsi
	global _Z14FX_BeginUpdatei
	global _Z15FX_BeginLoopingP8FxSystemP8FxEffectiiPK14FxSpatialFrameS5_ii
	global _Z16FX_FillUpdateCmdiP5FxCmd
	global _Z17FX_StartNewEffectP8FxSystemP8FxEffect
	global _Z17FX_TriggerOneShotP8FxSystemP8FxEffectiiPK14FxSpatialFramei
	global _Z18FX_UpdateRemainingP5FxCmd
	global _Z18FX_UpdateSpotLightP5FxCmd
	global _Z20FX_SetNextUpdateTimeii
	global _Z21FX_GetBoneOrientationiiiP13orientation_t
	global _Z21FX_UpdateNonDependentP5FxCmd
	global _Z22FX_GetBoltTemporalBitsii
	global _Z22FX_SetNextUpdateCameraiPK8refdef_sf
	global _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3_
	global _Z24FX_AddNonSpriteDrawSurfsP5FxCmd
	global _Z24FX_SpawnAllFutureLoopingP8FxSystemP8FxEffectiiPK14FxSpatialFrameS5_ii


SECTION .text


;FX_UpdateEffectBolt(FxSystem*, FxEffect*)
_Z19FX_UpdateEffectBoltP8FxSystemP8FxEffect:
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
	and eax, 0xffe000
	cmp eax, 0xffe000
	jz _Z19FX_UpdateEffectBoltP8FxSystemP8FxEffect_10
	movzx eax, byte [edi+0x9df]
	mov [ebp-0x4c], eax
	movzx ecx, word [edx+0x18]
	mov eax, ecx
	and eax, 0xfff
	cmp eax, 0x3fd
	jle _Z19FX_UpdateEffectBoltP8FxSystemP8FxEffect_20
_Z19FX_UpdateEffectBoltP8FxSystemP8FxEffect_40:
	xor edx, edx
	movzx eax, byte [ebx+0x19]
	shr al, 0x4
	and eax, 0x1
	cmp edx, eax
	jz _Z19FX_UpdateEffectBoltP8FxSystemP8FxEffect_30
_Z19FX_UpdateEffectBoltP8FxSystemP8FxEffect_50:
	mov [esp+0x4], ebx
	mov [esp], edi
	call _Z13FX_StopEffectP8FxSystemP8FxEffect
	or dword [ebx+0x18], cg_entitiesArray+0x77a0
	or word [ebx+0x18], 0xfff
_Z19FX_UpdateEffectBoltP8FxSystemP8FxEffect_10:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19FX_UpdateEffectBoltP8FxSystemP8FxEffect_20:
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	add eax, cg_entitiesArray
	mov eax, [eax+0xd4]
	test al, 0x2
	jz _Z19FX_UpdateEffectBoltP8FxSystemP8FxEffect_40
	mov edx, 0x1
	movzx eax, byte [ebx+0x19]
	shr al, 0x4
	and eax, 0x1
	cmp edx, eax
	jnz _Z19FX_UpdateEffectBoltP8FxSystemP8FxEffect_50
_Z19FX_UpdateEffectBoltP8FxSystemP8FxEffect_30:
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
	call _Z21FX_GetBoneOrientationiiiP13orientation_t
	test al, al
	jz _Z19FX_UpdateEffectBoltP8FxSystemP8FxEffect_50
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
	call _Z10AxisToQuatPA3_KfPf
	jmp _Z19FX_UpdateEffectBoltP8FxSystemP8FxEffect_10


;FX_LimitStabilizeTimeForElemDef_Recurse(FxElemDef const*, unsigned char, int)
_Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi:
_Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_80:
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
	jz _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_10
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
	jnz _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_20
_Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_120:
	cmp edi, [ebp-0x68]
	jle _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_10
	cmp dl, 0xa
	jz _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_30
_Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_170:
	mov ecx, [ebp-0x68]
_Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_360:
	mov [ebp-0x64], ecx
	mov eax, [ebp-0x6c]
_Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_350:
	mov esi, [eax+0xdc]
	test esi, esi
	jz _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_40
	mov eax, [esi+0x10]
	add eax, [esi+0x14]
	add eax, [esi+0x18]
	mov [ebp-0x4c], eax
	jnz _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_50
	xor ebx, ebx
_Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_140:
	mov ecx, [ebp-0x68]
	lea eax, [ebx+ecx]
	cmp [ebp-0x64], eax
	cmovge eax, [ebp-0x64]
	cmp eax, edi
	jge _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_10
	mov [ebp-0x64], eax
	mov eax, [ebp-0x6c]
_Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_40:
	mov esi, [eax+0xd8]
	test esi, esi
	jz _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_60
	mov eax, [esi+0x10]
	add eax, [esi+0x14]
	add eax, [esi+0x18]
	mov [ebp-0x44], eax
	jz _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_70
	mov dword [ebp-0x40], 0x0
	xor ebx, ebx
	mov dword [ebp-0x30], 0x0
_Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_100:
	mov eax, [ebp-0x30]
	add eax, [esi+0x1c]
	mov ecx, edi
	mov edx, 0x1
	call _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_80
	cmp ebx, eax
	cmovl ebx, eax
	cmp ebx, edi
	jge _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_90
	add dword [ebp-0x40], 0x1
	add dword [ebp-0x30], 0xfc
	mov ecx, [ebp-0x40]
	cmp [ebp-0x44], ecx
	jnz _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_100
	add ebx, [ebp-0x68]
	cmp [ebp-0x64], ebx
	mov edx, [ebp-0x64]
	cmovl edx, ebx
	mov [ebp-0x1c], edx
	cmp edx, edi
	jl _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_110
_Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_10:
	mov eax, edi
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_20:
	mov ecx, [ebp-0x6c]
	mov eax, [ecx+0x8]
	test eax, eax
	jle _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_120
	cmp eax, 0x7fffffff
	jz _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_10
	sub eax, 0x1
	imul eax, [ecx+0x4]
	add [ebp-0x68], eax
	jmp _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_120
_Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_50:
	mov dword [ebp-0x48], 0x0
	xor ebx, ebx
	mov dword [ebp-0x2c], 0x0
	jmp _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_130
_Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_150:
	add dword [ebp-0x48], 0x1
	add dword [ebp-0x2c], 0xfc
	mov edx, [ebp-0x48]
	cmp [ebp-0x4c], edx
	jz _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_140
_Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_130:
	mov eax, [ebp-0x2c]
	add eax, [esi+0x1c]
	mov ecx, edi
	mov edx, 0x1
	call _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_80
	cmp ebx, eax
	cmovl ebx, eax
	cmp ebx, edi
	jl _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_150
	mov ebx, edi
	jmp _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_140
_Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_30:
	mov edx, [ebp-0x6c]
	movzx eax, byte [edx+0xb1]
	cmp al, 0x1
	jz _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_160
	mov edx, [edx+0xbc]
	test al, al
	jz _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_170
	mov [ebp-0x24], edx
	mov eax, [ebp-0x68]
	mov [ebp-0x64], eax
	mov dword [ebp-0x60], 0x0
	jmp _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_180
_Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_200:
	xor ebx, ebx
_Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_220:
	cmp [ebp-0x64], ebx
	cmovge ebx, [ebp-0x64]
	mov [ebp-0x64], ebx
	cmp ebx, edi
	jge _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_10
	add dword [ebp-0x60], 0x1
	add dword [ebp-0x24], 0x4
	mov edx, [ebp-0x6c]
	movzx eax, byte [edx+0xb1]
	cmp [ebp-0x60], eax
	jge _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_190
	mov edx, [ebp-0x24]
_Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_180:
	mov esi, [edx]
	mov eax, [esi+0x10]
	add eax, [esi+0x14]
	add eax, [esi+0x18]
	mov [ebp-0x54], eax
	jz _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_200
	mov dword [ebp-0x50], 0x0
	xor ebx, ebx
	mov dword [ebp-0x28], 0x0
	jmp _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_210
_Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_230:
	add dword [ebp-0x50], 0x1
	add dword [ebp-0x28], 0xfc
	mov ecx, [ebp-0x50]
	cmp [ebp-0x54], ecx
	jz _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_220
_Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_210:
	mov eax, [ebp-0x28]
	add eax, [esi+0x1c]
	mov ecx, edi
	mov edx, 0x1
	call _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_80
	cmp ebx, eax
	cmovl ebx, eax
	cmp ebx, edi
	jl _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_230
	mov ebx, edi
	jmp _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_220
_Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_70:
	xor ebx, ebx
_Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_300:
	add ebx, [ebp-0x68]
	cmp [ebp-0x64], ebx
	mov edx, [ebp-0x64]
	cmovl edx, ebx
	mov [ebp-0x1c], edx
	cmp edx, edi
	jge _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_10
_Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_110:
	mov ecx, [ebp-0x6c]
	mov esi, [ecx+0xe0]
	test esi, esi
	jz _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_240
	mov eax, [esi+0x10]
	add eax, [esi+0x14]
	add eax, [esi+0x18]
	mov [ebp-0x3c], eax
	jnz _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_250
	xor ebx, ebx
_Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_280:
	mov edx, [ebp-0x68]
	lea ecx, [ebx+edx]
	cmp [ebp-0x1c], ecx
	jl _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_260
_Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_240:
	mov edi, [ebp-0x1c]
	mov eax, edi
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_260:
	mov edi, ecx
	jmp _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_10
_Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_250:
	xor ebx, ebx
	mov dword [ebp-0x38], 0x0
	mov dword [ebp-0x34], 0x0
	jmp _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_270
_Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_290:
	add dword [ebp-0x38], 0x1
	add dword [ebp-0x34], 0xfc
	mov eax, [ebp-0x38]
	cmp [ebp-0x3c], eax
	jz _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_280
_Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_270:
	mov eax, [ebp-0x34]
	add eax, [esi+0x1c]
	mov ecx, edi
	mov edx, 0x1
	call _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_80
	cmp ebx, eax
	cmovl ebx, eax
	cmp ebx, edi
	jl _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_290
	mov ebx, edi
	jmp _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_280
_Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_60:
	mov edx, [ebp-0x64]
	mov [ebp-0x1c], edx
	jmp _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_110
_Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_90:
	mov ebx, edi
	jmp _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_300
_Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_160:
	mov ebx, [edx+0xbc]
	mov eax, [ebx+0x10]
	add eax, [ebx+0x14]
	add eax, [ebx+0x18]
	mov [ebp-0x5c], eax
	jz _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_310
	mov dword [ebp-0x58], 0x0
	mov dword [ebp-0x20], 0x0
	xor esi, esi
_Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_320:
	mov eax, esi
	add eax, [ebx+0x1c]
	mov ecx, edi
	mov edx, 0x1
	call _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_80
	cmp [ebp-0x20], eax
	cmovge eax, [ebp-0x20]
	mov [ebp-0x20], eax
	cmp eax, edi
	jge _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_10
	add dword [ebp-0x58], 0x1
	add esi, 0xfc
	mov ecx, [ebp-0x58]
	cmp [ebp-0x5c], ecx
	jnz _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_320
	jmp _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_330
_Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_310:
	mov dword [ebp-0x20], 0x0
_Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_330:
	mov eax, [ebp-0x68]
	cmp [ebp-0x20], eax
	jle _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_340
	cmp edi, [ebp-0x20]
	jle _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_10
	mov edx, [ebp-0x20]
	mov [ebp-0x64], edx
	mov eax, [ebp-0x6c]
	jmp _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_350
_Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_190:
	mov eax, edx
	jmp _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_350
_Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_340:
	mov ecx, eax
	jmp _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi_360
	nop


;FX_IntegrateVelocity(FxUpdateElem const*, float, float, float*, float*)
_Z20FX_IntegrateVelocityPK12FxUpdateElemffPfS2_:
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
	jz _Z20FX_IntegrateVelocityPK12FxUpdateElemffPfS2__10
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
	jz _Z20FX_IntegrateVelocityPK12FxUpdateElemffPfS2__20
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
	jnz _Z20FX_IntegrateVelocityPK12FxUpdateElemffPfS2__30
_Z20FX_IntegrateVelocityPK12FxUpdateElemffPfS2__70:
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
	call _Z27FX_OrientationPosToWorldPosPK13orientation_tPKfPf
	and ebx, 0x2000000
	movss xmm2, dword [ebp-0x58]
	movss xmm3, dword [ebp-0x68]
	movss xmm4, dword [ebp-0x78]
	movss xmm5, dword [ebp-0x88]
	movss xmm6, dword [ebp-0x98]
	movss xmm7, dword [ebp-0xa8]
	jz _Z20FX_IntegrateVelocityPK12FxUpdateElemffPfS2__40
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
_Z20FX_IntegrateVelocityPK12FxUpdateElemffPfS2__60:
	movss [ecx+0x8], xmm0
	mulss xmm7, [edx+0x14]
	addss xmm7, [edx+0x8]
	mulss xmm4, xmm7
	addss xmm0, xmm4
	movss [ecx+0x8], xmm0
_Z20FX_IntegrateVelocityPK12FxUpdateElemffPfS2__40:
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20FX_IntegrateVelocityPK12FxUpdateElemffPfS2__10:
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
	jz _Z20FX_IntegrateVelocityPK12FxUpdateElemffPfS2__50
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
_Z20FX_IntegrateVelocityPK12FxUpdateElemffPfS2__50:
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
	call _Z27FX_OrientationPosToWorldPosPK13orientation_tPKfPf
	and ebx, 0x2000000
	movss xmm2, dword [ebp-0x58]
	movss xmm4, dword [ebp-0x78]
	movss xmm5, dword [ebp-0x88]
	movss xmm6, dword [ebp-0x98]
	movss xmm7, dword [ebp-0xa8]
	jz _Z20FX_IntegrateVelocityPK12FxUpdateElemffPfS2__40
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
	jmp _Z20FX_IntegrateVelocityPK12FxUpdateElemffPfS2__60
_Z20FX_IntegrateVelocityPK12FxUpdateElemffPfS2__30:
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
	jmp _Z20FX_IntegrateVelocityPK12FxUpdateElemffPfS2__70
_Z20FX_IntegrateVelocityPK12FxUpdateElemffPfS2__20:
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
	jz _Z20FX_IntegrateVelocityPK12FxUpdateElemffPfS2__80
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
_Z20FX_IntegrateVelocityPK12FxUpdateElemffPfS2__80:
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
	call _Z27FX_OrientationPosToWorldPosPK13orientation_tPKfPf
	and ebx, 0x2000000
	movss xmm2, dword [ebp-0x58]
	movss xmm3, dword [ebp-0x68]
	movss xmm5, dword [ebp-0x88]
	movss xmm6, dword [ebp-0x98]
	movss xmm7, dword [ebp-0xa8]
	jz _Z20FX_IntegrateVelocityPK12FxUpdateElemffPfS2__40
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
	jmp _Z20FX_IntegrateVelocityPK12FxUpdateElemffPfS2__40


;FX_NextElementPosition(FxUpdateElem*, int, int)
_Z22FX_NextElementPositionP12FxUpdateElemii:
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
	call _Z20FX_IntegrateVelocityPK12FxUpdateElemffPfS2_
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
_Z38FX_UpdateElementPosition_CollidingStepP8FxSystemP12FxUpdateElemiiPf:
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
	jz _Z38FX_UpdateElementPosition_CollidingStepP8FxSystemP12FxUpdateElemiiPf_10
	mov dword [ebp-0x94], 0xc11
_Z38FX_UpdateElementPosition_CollidingStepP8FxSystemP12FxUpdateElemiiPf_40:
	lea edi, [esi+0x68]
	lea eax, [esi+0xc]
	mov [ebp-0xa8], eax
	mov edx, [ebp-0x9c]
_Z38FX_UpdateElementPosition_CollidingStepP8FxSystemP12FxUpdateElemiiPf_120:
	mov byte [esi+0x74], 0x0
	mov ecx, [ebp+0x8]
	mov eax, esi
	call _Z22FX_NextElementPositionP12FxUpdateElemii
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
	call _Z11CM_BoxTraceP7trace_tPKfS2_S2_S2_ji
	cmp word [ebp-0x4c], 0x0
	jnz _Z38FX_UpdateElementPosition_CollidingStepP8FxSystemP12FxUpdateElemiiPf_20
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0x74]
	jnz _Z38FX_UpdateElementPosition_CollidingStepP8FxSystemP12FxUpdateElemiiPf_30
	jp _Z38FX_UpdateElementPosition_CollidingStepP8FxSystemP12FxUpdateElemiiPf_30
_Z38FX_UpdateElementPosition_CollidingStepP8FxSystemP12FxUpdateElemiiPf_20:
	lea edx, [edi+0x4]
	mov [ebp-0x84], edx
	lea ecx, [edi+0x8]
	mov [ebp-0x80], ecx
_Z38FX_UpdateElementPosition_CollidingStepP8FxSystemP12FxUpdateElemiiPf_110:
	mov eax, [esi+0x60]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	lea eax, [esi+0xc]
	mov [esp], eax
	call _Z29FX_OrientationPosFromWorldPosPK13orientation_tPKfPf
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
_Z38FX_UpdateElementPosition_CollidingStepP8FxSystemP12FxUpdateElemiiPf_180:
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z38FX_UpdateElementPosition_CollidingStepP8FxSystemP12FxUpdateElemiiPf_10:
	mov dword [ebp-0x94], 0x811
	jmp _Z38FX_UpdateElementPosition_CollidingStepP8FxSystemP12FxUpdateElemiiPf_40
_Z38FX_UpdateElementPosition_CollidingStepP8FxSystemP12FxUpdateElemiiPf_30:
	movss xmm4, dword [ebp-0x68]
	ucomiss xmm4, [_float_0_69999999]
	jbe _Z38FX_UpdateElementPosition_CollidingStepP8FxSystemP12FxUpdateElemiiPf_50
	mov byte [esi+0x74], 0x1
_Z38FX_UpdateElementPosition_CollidingStepP8FxSystemP12FxUpdateElemiiPf_50:
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
	jnz _Z38FX_UpdateElementPosition_CollidingStepP8FxSystemP12FxUpdateElemiiPf_60
	cmp eax, [esi+0x4c]
	jnz _Z38FX_UpdateElementPosition_CollidingStepP8FxSystemP12FxUpdateElemiiPf_70
_Z38FX_UpdateElementPosition_CollidingStepP8FxSystemP12FxUpdateElemiiPf_60:
	mov ebx, [ebx+0xd8]
	test ebx, ebx
	jz _Z38FX_UpdateElementPosition_CollidingStepP8FxSystemP12FxUpdateElemiiPf_80
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
	call _Z21Vec3Basis_RightHandedPKfPfS1_
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
	call _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj
	mov ebx, eax
	test eax, eax
	jz _Z38FX_UpdateElementPosition_CollidingStepP8FxSystemP12FxUpdateElemiiPf_80
	mov eax, [eax+0x4]
	sub ax, 0x1
	jnz _Z38FX_UpdateElementPosition_CollidingStepP8FxSystemP12FxUpdateElemiiPf_90
	mov [esp+0x4], ebx
	mov edx, [ebp-0x98]
	mov [esp], edx
	call _Z27FX_EffectNoLongerReferencedP8FxSystemP8FxEffect
_Z38FX_UpdateElementPosition_CollidingStepP8FxSystemP12FxUpdateElemiiPf_90:
	mov eax, [ebx+0x4]
	sub eax, 0x1
	mov [ebx+0x4], eax
	mov eax, [ebx+0x4]
_Z38FX_UpdateElementPosition_CollidingStepP8FxSystemP12FxUpdateElemiiPf_80:
	mov eax, [esi]
	mov ecx, [eax]
	mov eax, [esi+0x4]
	lea edx, [eax*4]
	mov ebx, eax
	shl ebx, 0x8
	sub ebx, edx
	add ebx, [ecx+0x1c]
	test byte [ebx+0x1], 0x2
	jnz _Z38FX_UpdateElementPosition_CollidingStepP8FxSystemP12FxUpdateElemiiPf_100
	mov eax, [ebp+0x8]
	cmp [ebp-0x7c], eax
	jz _Z38FX_UpdateElementPosition_CollidingStepP8FxSystemP12FxUpdateElemiiPf_110
	mov edx, [ebp-0x7c]
	mov [ebp-0x9c], edx
	jmp _Z38FX_UpdateElementPosition_CollidingStepP8FxSystemP12FxUpdateElemiiPf_120
_Z38FX_UpdateElementPosition_CollidingStepP8FxSystemP12FxUpdateElemiiPf_70:
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
	call _Z20FX_GetVelocityAtTimePK9FxElemDefiffPK13orientation_tPKfPf
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
	jz _Z38FX_UpdateElementPosition_CollidingStepP8FxSystemP12FxUpdateElemiiPf_130
	mulss xmm1, xmm1
	mulss xmm3, xmm3
	addss xmm1, xmm3
	mulss xmm2, xmm2
	addss xmm1, xmm2
	ucomiss xmm1, [_float_1_00000000]
	ja _Z38FX_UpdateElementPosition_CollidingStepP8FxSystemP12FxUpdateElemiiPf_140
_Z38FX_UpdateElementPosition_CollidingStepP8FxSystemP12FxUpdateElemiiPf_130:
	mov ecx, [ebp-0x7c]
	cmp [ebp-0x9c], ecx
	jnz _Z38FX_UpdateElementPosition_CollidingStepP8FxSystemP12FxUpdateElemiiPf_150
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
	jbe _Z38FX_UpdateElementPosition_CollidingStepP8FxSystemP12FxUpdateElemiiPf_160
_Z38FX_UpdateElementPosition_CollidingStepP8FxSystemP12FxUpdateElemiiPf_150:
	movss xmm4, dword [ebp-0x68]
_Z38FX_UpdateElementPosition_CollidingStepP8FxSystemP12FxUpdateElemiiPf_170:
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
	call _Z29FX_OrientationPosFromWorldPosPK13orientation_tPKfPf
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
	jmp _Z38FX_UpdateElementPosition_CollidingStepP8FxSystemP12FxUpdateElemiiPf_80
_Z38FX_UpdateElementPosition_CollidingStepP8FxSystemP12FxUpdateElemiiPf_160:
	jp _Z38FX_UpdateElementPosition_CollidingStepP8FxSystemP12FxUpdateElemiiPf_150
	movss xmm4, dword [ebp-0x68]
	ucomiss xmm4, [_float_0_69999999]
	jbe _Z38FX_UpdateElementPosition_CollidingStepP8FxSystemP12FxUpdateElemiiPf_170
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
	jmp _Z38FX_UpdateElementPosition_CollidingStepP8FxSystemP12FxUpdateElemiiPf_80
_Z38FX_UpdateElementPosition_CollidingStepP8FxSystemP12FxUpdateElemiiPf_100:
	xor eax, eax
	jmp _Z38FX_UpdateElementPosition_CollidingStepP8FxSystemP12FxUpdateElemiiPf_180
_Z38FX_UpdateElementPosition_CollidingStepP8FxSystemP12FxUpdateElemiiPf_140:
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
	call _Z21Vec3Basis_RightHandedPKfPfS1_
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
	call _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj
	mov ebx, eax
	test eax, eax
	jz _Z38FX_UpdateElementPosition_CollidingStepP8FxSystemP12FxUpdateElemiiPf_130
	mov eax, [eax+0x4]
	sub ax, 0x1
	jnz _Z38FX_UpdateElementPosition_CollidingStepP8FxSystemP12FxUpdateElemiiPf_190
	mov [esp+0x4], ebx
	mov edx, [ebp-0x98]
	mov [esp], edx
	call _Z27FX_EffectNoLongerReferencedP8FxSystemP8FxEffect
_Z38FX_UpdateElementPosition_CollidingStepP8FxSystemP12FxUpdateElemiiPf_190:
	mov eax, [ebx+0x4]
	sub eax, 0x1
	mov [ebx+0x4], eax
	mov eax, [ebx+0x4]
	jmp _Z38FX_UpdateElementPosition_CollidingStepP8FxSystemP12FxUpdateElemiiPf_130


;FX_UpdateElement(FxSystem*, FxEffect*, FxElem*, int, int)
_Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii:
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
	jle _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_10
	mov dword [ebp-0x164], 0x1
	mov eax, [ebp-0x164]
_Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_180:
	add esp, 0x1bc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_10:
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
	jl _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_20
	mov edx, [ebp-0x180]
	mov eax, [edx]
	mov ecx, [eax+0x1c]
	lea edx, [esi*4]
	mov eax, esi
	shl eax, 0x8
	sub eax, edx
	mov eax, [eax+ecx+0xe0]
	test eax, eax
	jz _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_30
	mov [ebp-0xf4], ebx
	mov edx, ebx
	mov ecx, [ebp-0x100]
	cmp [ebp-0xf8], ecx
	mov eax, [ebp-0xf8]
	cmovl eax, ecx
	mov [ebp-0xf8], eax
	cmp eax, edx
	jnz _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_40
_Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_50:
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
_Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_20:
	mov edx, [ebp-0xf4]
	mov ecx, [ebp-0x100]
	cmp [ebp-0xf8], ecx
	mov eax, [ebp-0xf8]
	cmovl eax, ecx
	mov [ebp-0xf8], eax
	cmp eax, edx
	jz _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_50
_Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_40:
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
	call _Z17FX_GetOrientationPK9FxElemDefPK14FxSpatialFrameS4_iP13orientation_t
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
	jz _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_60
	mov eax, [ecx]
_Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_190:
	test ah, 0x1
	jz _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_70
	cmp dword [ebp-0x140], 0xff
	jz _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_80
	lea eax, [ebp-0xe0]
	mov [esp+0x8], eax
	mov eax, [ebp-0xe8]
	mov [esp+0x4], eax
	lea eax, [ebp-0x13c]
	mov [esp], eax
	call _Z27FX_OrientationPosToWorldPosPK13orientation_tPKfPf
_Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_230:
	mov dword [ebp-0x164], 0x1
	mov edx, [ebp-0x148]
	mov [ebp-0x180], edx
	mov esi, [ebp-0x144]
	mov eax, edx
_Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_200:
	mov edx, [eax]
	lea eax, [esi*4]
	mov edi, esi
	shl edi, 0x8
	sub edi, eax
	add edi, [edx+0x1c]
	mov eax, [edi+0xe0]
	test eax, eax
	jz _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_90
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
	call _Z17FX_GetOrientationPK9FxElemDefPK14FxSpatialFrameS4_iP13orientation_t
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z27FX_OrientationPosToWorldPosPK13orientation_tPKfPf
	mov eax, [edi]
	and eax, 0xc0
	jnz _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_100
	pxor xmm4, xmm4
	movss [ebp-0x40], xmm4
	movss [ebp-0x3c], xmm4
	movss [ebp-0x38], xmm4
	mov dword [ebp-0x34], 0x3f800000
	mov ecx, [ebp-0x180]
_Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_350:
	mov eax, [ebp-0xe0]
	mov [ebp-0x4c], eax
	mov eax, [ebp-0xdc]
	mov [ebp-0x48], eax
	mov eax, [ebp-0xd8]
	mov [ebp-0x44], eax
	add ecx, 0x44
	mov eax, [edi]
	and eax, 0xc0
	jnz _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_110
	pxor xmm4, xmm4
	movss [ebp-0x5c], xmm4
	movss [ebp-0x58], xmm4
	movss [ebp-0x54], xmm4
	movss xmm5, dword [_float_1_00000000]
	movss [ebp-0x50], xmm5
_Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_320:
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
	jb _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_120
	movaps xmm1, xmm5
_Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_380:
	mulss xmm3, xmm1
	movss [ebp-0x9c], xmm3
	movaps xmm0, xmm1
	mulss xmm0, [edx]
	movss [edx], xmm0
	mulss xmm1, [eax]
	movss [eax], xmm1
	movss xmm1, dword [ebp-0x14c]
	ucomiss xmm1, xmm4
	jnz _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_130
	jp _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_130
	movzx eax, bl
_Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_290:
	mov edx, [ebp-0x16c]
	mov [edx+0x3], al
	mov eax, [ebp-0xf4]
	cmp eax, [ebp-0xfc]
	jz _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_140
	mov eax, [ebp-0x148]
	mov [ebp-0x180], eax
	mov esi, [ebp-0x144]
	mov edx, eax
_Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_240:
	lea eax, [esi*4]
	mov edi, esi
	shl edi, 0x8
	sub edi, eax
	mov eax, [edx]
	add edi, [eax+0x1c]
	mov ebx, [ebp-0x164]
	test ebx, ebx
	jnz _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_150
	mov ecx, [edi+0xdc]
	test ecx, ecx
	jz _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_160
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
	call _Z17FX_GetOrientationPK9FxElemDefPK14FxSpatialFrameS4_iP13orientation_t
	lea esi, [ebp-0x30]
	mov [esp+0x8], esi
	mov eax, [ebp-0xe8]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z27FX_OrientationPosToWorldPosPK13orientation_tPKfPf
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
	call _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj
	mov ebx, eax
	test eax, eax
	jz _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_160
	mov eax, [eax+0x4]
	sub ax, 0x1
	jz _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_170
_Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_440:
	mov eax, [ebx+0x4]
	sub eax, 0x1
	mov [ebx+0x4], eax
	mov eax, [ebx+0x4]
	mov eax, [ebp-0x164]
	jmp _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_180
_Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_60:
	mov eax, [ecx]
	test eax, 0x8000000
	jz _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_190
	mov eax, [ebp-0x180]
	jmp _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_200
_Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_150:
	mov eax, [ebp-0x140]
	cmp eax, 0xff
	jz _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_210
_Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_360:
	mov edx, [ebp-0x16c]
	mov [edx+0x2], al
	mov eax, [ebp-0x164]
	add esp, 0x1bc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_70:
	test eax, 0x6000000
	jnz _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_220
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
	call _Z20FX_IntegrateVelocityPK12FxUpdateElemffPfS2_
	jmp _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_230
_Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_140:
	mov eax, [ebp-0x148]
	mov [ebp-0x180], eax
	mov esi, [ebp-0x144]
_Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_30:
	mov dword [ebp-0x164], 0x0
	mov edx, [ebp-0x180]
	jmp _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_240
_Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_90:
	mov edx, [ebp-0x180]
	jmp _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_240
_Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_130:
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
	jmp _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_250
_Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_280:
	mov eax, [ebx+0x4]
	sub eax, 0x1
	mov [ebx+0x4], eax
	mov eax, [ebx+0x4]
_Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_270:
	mov eax, [ebp-0x148]
	mov ecx, [eax]
	mov eax, [ebp-0x144]
	lea edx, [eax*4]
	mov esi, eax
	shl esi, 0x8
	sub esi, edx
	add esi, [ecx+0x1c]
_Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_250:
	call _Z7ms_randv
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_00003052]
	mulss xmm0, [esi+0xf0]
	addss xmm0, [ebp-0x158]
	addss xmm0, [ebp-0x150]
	ucomiss xmm0, [ebp-0x14c]
	ja _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_260
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
	call _Z13Vec4NormalizePf
	fstp st0
	lea eax, [ebp-0x90]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z19PerpendicularVectorPKfPf
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
	call _Z14FX_SpawnEffectP8FxSystemPK11FxEffectDefiPKfPA3_S4_iiitj
	mov ebx, eax
	test eax, eax
	jz _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_270
	mov eax, [eax+0x4]
	sub ax, 0x1
	jnz _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_280
	mov [esp+0x4], ebx
	mov edx, [ebp-0x168]
	mov [esp], edx
	call _Z27FX_EffectNoLongerReferencedP8FxSystemP8FxEffect
	jmp _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_280
_Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_260:
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
	jmp _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_290
_Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_110:
	cmp eax, 0x40
	jz _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_300
	add eax, 0xffffff80
	jz _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_310
	lea eax, [ebp-0x5c]
	mov [esp+0x4], eax
	lea eax, [ebp-0x130]
	mov [esp], eax
	call _Z10AxisToQuatPA3_KfPf
	pxor xmm4, xmm4
	movss xmm5, dword [_float_1_00000000]
	jmp _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_320
_Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_100:
	cmp eax, 0x40
	jz _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_330
	add eax, 0xffffff80
	jz _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_340
	lea eax, [ebp-0x40]
	mov [esp+0x4], eax
	lea eax, [ebp-0xc0]
	mov [esp], eax
	call _Z10AxisToQuatPA3_KfPf
	mov ecx, [ebp-0x180]
	jmp _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_350
_Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_160:
	mov dword [ebp-0x164], 0x0
	mov eax, [ebp-0x164]
	jmp _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_180
_Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_220:
	mov ecx, [ebp-0xf4]
	mov edx, [ebp-0xf8]
	lea eax, [ebp-0x148]
	call _Z22FX_NextElementPositionP12FxUpdateElemii
	mov eax, [ebp-0xe8]
	mov [esp+0x8], eax
	lea eax, [ebp-0xe0]
	mov [esp+0x4], eax
	lea eax, [ebp-0x13c]
	mov [esp], eax
	call _Z29FX_OrientationPosFromWorldPosPK13orientation_tPKfPf
	jmp _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_230
_Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_310:
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
	jmp _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_320
_Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_340:
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
	jmp _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_350
_Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_210:
	mov edx, [ebp-0x160]
	movss xmm0, dword [edx]
	ucomiss xmm0, [ebp-0x24]
	jnz _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_360
	jp _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_360
	movss xmm0, dword [edx+0x4]
	ucomiss xmm0, [ebp-0x20]
	jnz _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_360
	jp _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_360
	movss xmm0, dword [edx+0x8]
	ucomiss xmm0, [ebp-0x1c]
	jnz _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_360
	jp _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_360
	test byte [edi+0x1], 0x1
	jz _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_370
	cmp byte [ebp-0xd4], 0x0
	jz _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_360
_Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_370:
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
	jmp _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_360
_Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_120:
	movaps xmm1, xmm5
	divss xmm1, dword [ebp-0x14c]
	jmp _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_380
_Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_80:
	lea esi, [ebp-0x40]
	mov [esp+0x8], esi
	mov eax, [ebp-0xe8]
	mov [esp+0x4], eax
	lea eax, [ebp-0x13c]
	mov [esp], eax
	call _Z27FX_OrientationPosToWorldPosPK13orientation_tPKfPf
	mov ebx, [ebp-0xf8]
	lea ecx, [ebx+0x32]
	mov eax, [ebp-0xf4]
	cmp eax, ecx
	jle _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_390
	mov eax, ebx
	mov ebx, ecx
	lea edi, [ebp-0x148]
	jmp _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_400
_Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_420:
	mov eax, ebx
	mov ebx, ecx
_Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_400:
	mov [esp+0x4], esi
	mov [esp], ebx
	mov ecx, eax
	mov edx, edi
	mov eax, [ebp-0x168]
	call _Z38FX_UpdateElementPosition_CollidingStepP8FxSystemP12FxUpdateElemiiPf
	test eax, eax
	jz _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_410
	lea ecx, [ebx+0x32]
	mov eax, [ebp-0xf4]
	cmp eax, ecx
	jg _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_420
_Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_430:
	mov [esp+0x4], esi
	mov [esp], eax
	mov ecx, ebx
	mov edx, edi
	mov eax, [ebp-0x168]
	call _Z38FX_UpdateElementPosition_CollidingStepP8FxSystemP12FxUpdateElemiiPf
	mov [ebp-0x164], eax
	mov eax, [ebp-0x148]
	mov [ebp-0x180], eax
	mov esi, [ebp-0x144]
	jmp _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_200
_Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_300:
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
	jmp _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_320
_Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_330:
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
	jmp _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_350
_Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_390:
	lea edi, [ebp-0x148]
	jmp _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_430
_Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_170:
	mov [esp+0x4], ebx
	mov edx, [ebp-0x168]
	mov [esp], edx
	call _Z27FX_EffectNoLongerReferencedP8FxSystemP8FxEffect
	jmp _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_440
_Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_410:
	mov dword [ebp-0x164], 0x0
	mov eax, [ebp-0x148]
	mov [ebp-0x180], eax
	mov esi, [ebp-0x144]
	jmp _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii_200
	nop


;FX_Update(FxSystem*, int, unsigned char)
_Z9FX_UpdateP8FxSystemih:
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
	jz _Z9FX_UpdateP8FxSystemih_10
	mov [ebp-0x29], cl
	jmp _Z9FX_UpdateP8FxSystemih_20
_Z9FX_UpdateP8FxSystemih_40:
	mov eax, [ebx+0x18]
	and eax, 0xffe000
	cmp eax, 0xffe000
	jz _Z9FX_UpdateP8FxSystemih_30
_Z9FX_UpdateP8FxSystemih_50:
	add edi, 0x1
	mov eax, [esi+0x1b4]
	cmp edi, eax
	jz _Z9FX_UpdateP8FxSystemih_10
_Z9FX_UpdateP8FxSystemih_20:
	mov eax, edi
	and eax, 0x3ff
	movzx edx, word [esi+eax*2+0x1bc]
	mov eax, [esi+0x170]
	lea ebx, [eax+edx*4]
	cmp byte [ebp-0x29], 0x0
	jnz _Z9FX_UpdateP8FxSystemih_40
_Z9FX_UpdateP8FxSystemih_30:
	mov edx, [ebx+0x1c]
	mov eax, [esi+0x9d8]
	mov [ebx+0x1c], eax
	cmp edx, [esi+0x9d8]
	jz _Z9FX_UpdateP8FxSystemih_50
	mov eax, [ebx+0x4]
	test ax, ax
	jz _Z9FX_UpdateP8FxSystemih_50
	mov eax, [ebx+0x24]
	cmp eax, [esi+0x9d0]
	jg _Z9FX_UpdateP8FxSystemih_50
	mov edx, ebx
	mov eax, esi
	call _Z19FX_UpdateEffectBoltP8FxSystemP8FxEffect
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
_Z9FX_UpdateP8FxSystemih_60:
	mov word [ebp+eax*2-0x1e], 0xffff
	add eax, 0x1
	cmp eax, 0x3
	jnz _Z9FX_UpdateP8FxSystemih_60
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
	call _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3_
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z23FX_SortNewElemsInEffectP8FxSystemP8FxEffect
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
	jmp _Z9FX_UpdateP8FxSystemih_50
_Z9FX_UpdateP8FxSystemih_10:
	cmp byte [esi+0x9dd], 0x0
	jz _Z9FX_UpdateP8FxSystemih_70
	mov [esp], esi
	call _Z23FX_RunGarbageCollectionP8FxSystem
_Z9FX_UpdateP8FxSystemih_70:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;FX_RewindTo(int, int)
_Z11FX_RewindToii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x10dc
	mov edi, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z12FX_GetSystemi
	mov [ebp-0x10c0], eax
	cmp [eax+0x9d0], edi
	jg _Z11FX_RewindToii_10
_Z11FX_RewindToii_210:
	add esp, 0x10dc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11FX_RewindToii_10:
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
	jz _Z11FX_RewindToii_20
	xor esi, esi
	mov edx, [ebp-0x10c0]
	jmp _Z11FX_RewindToii_30
_Z11FX_RewindToii_60:
	mov edx, ecx
_Z11FX_RewindToii_30:
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
	jz _Z11FX_RewindToii_40
	cmp edi, [edx+0x20]
	jle _Z11FX_RewindToii_40
	cmp cx, [edx+0x14]
	jz _Z11FX_RewindToii_50
_Z11FX_RewindToii_40:
	add ebx, 0x1
	mov ecx, [ebp-0x10c0]
	mov eax, [ecx+0x1b4]
	add esi, 0x1
	cmp ebx, eax
	jnz _Z11FX_RewindToii_60
	mov [ebp-0x10b8], esi
	test esi, esi
	jle _Z11FX_RewindToii_70
	xor ebx, ebx
	jmp _Z11FX_RewindToii_80
_Z11FX_RewindToii_90:
	add ebx, 0x1
	cmp ebx, esi
	jz _Z11FX_RewindToii_70
_Z11FX_RewindToii_80:
	mov edx, [ebp+ebx*4-0x1098]
	mov eax, [edx+0x4]
	test ax, ax
	jz _Z11FX_RewindToii_90
	mov [esp+0x4], edx
	mov eax, [ebp-0x10c0]
	mov [esp], eax
	call _Z13FX_KillEffectP8FxSystemP8FxEffect
	add ebx, 0x1
	cmp ebx, esi
	jnz _Z11FX_RewindToii_80
_Z11FX_RewindToii_70:
	mov edx, [ebp-0x10c0]
	cmp byte [edx+0x9dd], 0x0
	jnz _Z11FX_RewindToii_100
_Z11FX_RewindToii_280:
	mov eax, [ebp-0x10b8]
	test eax, eax
	jle _Z11FX_RewindToii_110
	mov dword [ebp-0x109c], 0x0
_Z11FX_RewindToii_200:
	mov edx, [ebp-0x109c]
	sar edx, 0x5
	mov ecx, [ebp-0x109c]
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [ebp+edx*4-0x98], eax
	jz _Z11FX_RewindToii_120
	mov ecx, [ebp-0x109c]
	mov ecx, [ebp+ecx*4-0x1098]
	mov [ebp-0x10bc], ecx
	mov esi, [ecx+0x20]
	mov [ecx+0x24], esi
	mov ebx, [ecx]
	mov edi, [ebx+0xc]
	test edi, edi
	jz _Z11FX_RewindToii_130
	mov esi, ecx
	add esi, 0x4
_Z11FX_RewindToii_140:
	mov ebx, [esi]
	mov [esp+0x8], ebx
	mov eax, ebx
	or eax, 0x10000
	mov [esp+0x4], eax
	mov [esp], esi
	call iInterlockedCompareExchange
	cmp ebx, eax
	jnz _Z11FX_RewindToii_140
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
	call _Z15FX_BeginLoopingP8FxSystemP8FxEffectiiPK14FxSpatialFrameS5_ii
	mov edx, [esi+0x20]
	mov [ebp-0x10b0], edx
	mov edx, [ebx+0x10]
	mov ecx, [ebx+0x14]
	add ecx, edx
	cmp edx, ecx
	jz _Z11FX_RewindToii_150
	lea eax, [edx*4]
	mov ebx, edx
	shl ebx, 0x8
	sub ebx, eax
	mov [ebp-0x10a4], ebx
	mov edi, edx
	mov [ebp-0x10c4], ecx
	jmp _Z11FX_RewindToii_160
_Z11FX_RewindToii_170:
	add edi, 0x1
	add dword [ebp-0x10a4], 0xfc
	cmp [ebp-0x10c4], edi
	jz _Z11FX_RewindToii_150
_Z11FX_RewindToii_160:
	mov esi, [ebp-0x10bc]
	mov eax, [esi]
	mov eax, [eax+0x1c]
	add eax, [ebp-0x10a4]
	cmp byte [eax+0xb0], 0x3
	jz _Z11FX_RewindToii_170
	mov esi, [eax+0x4]
	mov edx, [eax+0x8]
	test edx, edx
	jz _Z11FX_RewindToii_180
	mov ecx, [ebp-0x10bc]
	movzx eax, word [ecx+0x12]
	lea eax, [eax*4+0x4c]
	add eax, fx_randomTable
	add edx, 0x1
	movzx eax, word [eax]
	imul edx, eax
	sar edx, 0x10
	add esi, edx
_Z11FX_RewindToii_180:
	test esi, esi
	jle _Z11FX_RewindToii_170
	xor ebx, ebx
_Z11FX_RewindToii_190:
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
	call _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi
	add ebx, 0x1
	cmp esi, ebx
	jnz _Z11FX_RewindToii_190
	add edi, 0x1
	add dword [ebp-0x10a4], 0xfc
	cmp [ebp-0x10c4], edi
	jnz _Z11FX_RewindToii_160
_Z11FX_RewindToii_150:
	mov edx, [ebp-0x10bc]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x10c0]
	mov [esp], ecx
	call _Z23FX_SortNewElemsInEffectP8FxSystemP8FxEffect
_Z11FX_RewindToii_120:
	add dword [ebp-0x109c], 0x1
	mov ecx, [ebp-0x10b8]
	cmp [ebp-0x109c], ecx
	jnz _Z11FX_RewindToii_200
_Z11FX_RewindToii_110:
	mov ebx, [ebp-0x10c0]
	cmp byte [ebx+0x9dd], 0x0
	jz _Z11FX_RewindToii_210
	mov [esp], ebx
	call _Z23FX_RunGarbageCollectionP8FxSystem
	add esp, 0x10dc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11FX_RewindToii_130:
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
	call _Z15FX_BeginLoopingP8FxSystemP8FxEffectiiPK14FxSpatialFrameS5_ii
	mov ecx, [ebp-0x10bc]
	mov ecx, [ecx+0x20]
	mov [ebp-0x10a8], ecx
	mov edx, [ebx+0x10]
	mov ecx, [ebx+0x14]
	add ecx, edx
	cmp edx, ecx
	jz _Z11FX_RewindToii_220
	lea eax, [edx*4]
	mov ebx, edx
	shl ebx, 0x8
	sub ebx, eax
	mov [ebp-0x10a0], ebx
	mov edi, edx
	mov [ebp-0x10c8], ecx
	jmp _Z11FX_RewindToii_230
_Z11FX_RewindToii_240:
	add edi, 0x1
	add dword [ebp-0x10a0], 0xfc
	cmp edi, [ebp-0x10c8]
	jz _Z11FX_RewindToii_220
_Z11FX_RewindToii_230:
	mov esi, [ebp-0x10bc]
	mov eax, [esi]
	mov eax, [eax+0x1c]
	add eax, [ebp-0x10a0]
	cmp byte [eax+0xb0], 0x3
	jz _Z11FX_RewindToii_240
	mov esi, [eax+0x4]
	mov edx, [eax+0x8]
	test edx, edx
	jz _Z11FX_RewindToii_250
	mov ecx, [ebp-0x10bc]
	movzx eax, word [ecx+0x12]
	lea eax, [eax*4+0x4c]
	add eax, fx_randomTable
	add edx, 0x1
	movzx eax, word [eax]
	imul edx, eax
	sar edx, 0x10
	add esi, edx
_Z11FX_RewindToii_250:
	test esi, esi
	jle _Z11FX_RewindToii_240
	xor ebx, ebx
_Z11FX_RewindToii_260:
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
	call _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi
	add ebx, 0x1
	cmp esi, ebx
	jnz _Z11FX_RewindToii_260
	add edi, 0x1
	add dword [ebp-0x10a0], 0xfc
	cmp edi, [ebp-0x10c8]
	jnz _Z11FX_RewindToii_230
_Z11FX_RewindToii_220:
	mov edx, [ebp-0x10bc]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x10c0]
	mov [esp], ecx
	call _Z23FX_SortNewElemsInEffectP8FxSystemP8FxEffect
	mov ebx, [ebp-0x10bc]
	mov eax, [ebx+0x4]
	sub ax, 0x1
	jz _Z11FX_RewindToii_270
	mov edx, ebx
_Z11FX_RewindToii_290:
	mov eax, [edx+0x4]
	sub eax, 0x1
	mov [edx+0x4], eax
	mov eax, [edx+0x4]
	add dword [ebp-0x109c], 0x1
	mov ecx, [ebp-0x10b8]
	cmp [ebp-0x109c], ecx
	jnz _Z11FX_RewindToii_200
	jmp _Z11FX_RewindToii_110
_Z11FX_RewindToii_50:
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
	jmp _Z11FX_RewindToii_40
_Z11FX_RewindToii_100:
	mov [esp], edx
	call _Z23FX_RunGarbageCollectionP8FxSystem
	jmp _Z11FX_RewindToii_280
_Z11FX_RewindToii_20:
	mov dword [ebp-0x10b8], 0x0
	jmp _Z11FX_RewindToii_70
_Z11FX_RewindToii_270:
	mov [esp+0x4], ebx
	mov esi, [ebp-0x10c0]
	mov [esp], esi
	call _Z27FX_EffectNoLongerReferencedP8FxSystemP8FxEffect
	mov edx, [ebp-0x10bc]
	jmp _Z11FX_RewindToii_290


;FX_EndUpdate(int)
_Z12FX_EndUpdatei:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, fx_enable
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z12FX_EndUpdatei_10
	leave
	ret
_Z12FX_EndUpdatei_10:
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z12FX_GetSystemi
	lea edx, [eax+0xb0]
	mov dword [esp+0x8], 0xb0
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
	leave
	ret


;FX_RunPhysics(int)
_Z13FX_RunPhysicsi:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov [esp], esi
	call _Z12FX_GetSystemi
	mov ebx, eax
	mov dword [esp], 0xb
	call _Z24Sys_EnterCriticalSection15CriticalSection
	mov eax, [ebx+0x9d0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call _Z14Phys_RunToTimei9PhysWorldi
	mov dword [ebp+0x8], 0xb
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _Z24Sys_LeaveCriticalSection15CriticalSection
	nop


;FX_BeginUpdate(int)
_Z14FX_BeginUpdatei:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z13FX_BeginMarksi
	call _Z13FX_Beam_Beginv
	call _Z18FX_PostLight_Beginv
	leave
	jmp _Z14FX_SpriteBeginv
	nop


;FX_BeginLooping(FxSystem*, FxEffect*, int, int, FxSpatialFrame const*, FxSpatialFrame const*, int, int)
_Z15FX_BeginLoopingP8FxSystemP8FxEffectiiPK14FxSpatialFrameS5_ii:
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
	jz _Z15FX_BeginLoopingP8FxSystemP8FxEffectiiPK14FxSpatialFrameS5_ii_10
	mov edi, eax
	mov eax, [ebp+0x10]
	shl eax, 0x2
	mov esi, [ebp+0x10]
	shl esi, 0x8
	sub esi, eax
	mov ebx, [ebp+0x10]
_Z15FX_BeginLoopingP8FxSystemP8FxEffectiiPK14FxSpatialFrameS5_ii_30:
	mov edx, [ebp+0xc]
	mov eax, [edx]
	mov eax, [eax+0x1c]
	cmp byte [esi+eax+0xb0], 0x3
	jz _Z15FX_BeginLoopingP8FxSystemP8FxEffectiiPK14FxSpatialFrameS5_ii_20
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
	call _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi
_Z15FX_BeginLoopingP8FxSystemP8FxEffectiiPK14FxSpatialFrameS5_ii_20:
	add ebx, 0x1
	add esi, 0xfc
	cmp edi, ebx
	jnz _Z15FX_BeginLoopingP8FxSystemP8FxEffectiiPK14FxSpatialFrameS5_ii_30
_Z15FX_BeginLoopingP8FxSystemP8FxEffectiiPK14FxSpatialFrameS5_ii_10:
	mov ecx, [ebp+0xc]
	movzx edx, word [ecx+0x10]
	cmp dx, 0xffff
	jz _Z15FX_BeginLoopingP8FxSystemP8FxEffectiiPK14FxSpatialFrameS5_ii_40
	mov eax, [ebp+0x24]
	sub eax, [ebp+0x20]
	cvtsi2ss xmm0, eax
	movss [ebp-0x58], xmm0
	mov eax, [ebp+0x1c]
	lea esi, [eax+0x10]
	mov ecx, [ebp+0x18]
	lea edi, [ecx+0x10]
	jmp _Z15FX_BeginLoopingP8FxSystemP8FxEffectiiPK14FxSpatialFrameS5_ii_50
_Z15FX_BeginLoopingP8FxSystemP8FxEffectiiPK14FxSpatialFrameS5_ii_60:
	movzx edx, word [ebx]
	cmp dx, 0xffff
	jz _Z15FX_BeginLoopingP8FxSystemP8FxEffectiiPK14FxSpatialFrameS5_ii_40
_Z15FX_BeginLoopingP8FxSystemP8FxEffectiiPK14FxSpatialFrameS5_ii_50:
	movzx edx, dx
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x178]
	lea ebx, [eax+edx*4]
	movsx eax, byte [ebx+0x6]
	cmp [ebp+0x10], eax
	jg _Z15FX_BeginLoopingP8FxSystemP8FxEffectiiPK14FxSpatialFrameS5_ii_60
	cmp [ebp-0x50], eax
	jle _Z15FX_BeginLoopingP8FxSystemP8FxEffectiiPK14FxSpatialFrameS5_ii_60
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
	call _Z24FX_SpawnTrailElem_NoCullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif
	mov edx, [ebp+0x24]
	cmp [ebp+0x20], edx
	jge _Z15FX_BeginLoopingP8FxSystemP8FxEffectiiPK14FxSpatialFrameS5_ii_70
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
	ja _Z15FX_BeginLoopingP8FxSystemP8FxEffectiiPK14FxSpatialFrameS5_ii_80
_Z15FX_BeginLoopingP8FxSystemP8FxEffectiiPK14FxSpatialFrameS5_ii_110:
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
	call _Z24FX_SpawnTrailElem_NoCullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif
	movzx edx, word [ebx]
	cmp dx, 0xffff
	jnz _Z15FX_BeginLoopingP8FxSystemP8FxEffectiiPK14FxSpatialFrameS5_ii_50
_Z15FX_BeginLoopingP8FxSystemP8FxEffectiiPK14FxSpatialFrameS5_ii_40:
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15FX_BeginLoopingP8FxSystemP8FxEffectiiPK14FxSpatialFrameS5_ii_70:
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
	call _Z24FX_SpawnTrailElem_NoCullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif
	jmp _Z15FX_BeginLoopingP8FxSystemP8FxEffectiiPK14FxSpatialFrameS5_ii_60
_Z15FX_BeginLoopingP8FxSystemP8FxEffectiiPK14FxSpatialFrameS5_ii_80:
	movss [ebp-0x44], xmm0
	mov dword [ebp-0x48], 0x0
	jmp _Z15FX_BeginLoopingP8FxSystemP8FxEffectiiPK14FxSpatialFrameS5_ii_90
_Z15FX_BeginLoopingP8FxSystemP8FxEffectiiPK14FxSpatialFrameS5_ii_100:
	mov dword [ebp-0x40], 0x3f800000
_Z15FX_BeginLoopingP8FxSystemP8FxEffectiiPK14FxSpatialFrameS5_ii_90:
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
	call _Z13Vec4NormalizePf
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
	call _Z22FX_SpawnTrailElem_CullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif
	movss xmm0, dword [ebp-0x44]
	subss xmm0, [ebp-0x40]
	movss [ebp-0x44], xmm0
	ucomiss xmm0, [_float_1_00000000]
	ja _Z15FX_BeginLoopingP8FxSystemP8FxEffectiiPK14FxSpatialFrameS5_ii_100
	jmp _Z15FX_BeginLoopingP8FxSystemP8FxEffectiiPK14FxSpatialFrameS5_ii_110


;FX_FillUpdateCmd(int, FxCmd*)
_Z16FX_FillUpdateCmdiP5FxCmd:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov [esp], esi
	call _Z12FX_GetSystemi
	mov [ebx], eax
	mov [ebx+0x4], esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;FX_StartNewEffect(FxSystem*, FxEffect*)
_Z17FX_StartNewEffectP8FxSystemP8FxEffect:
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
	call _Z15FX_BeginLoopingP8FxSystemP8FxEffectiiPK14FxSpatialFrameS5_ii
	mov edx, [ebp-0x30]
	mov edx, [edx+0x20]
	mov [ebp-0x24], edx
	mov edx, [ebx+0x10]
	mov ecx, edx
	add ecx, [ebx+0x14]
	cmp edx, ecx
	jz _Z17FX_StartNewEffectP8FxSystemP8FxEffect_10
	lea eax, [edx*4]
	mov ebx, edx
	shl ebx, 0x8
	sub ebx, eax
	mov [ebp-0x1c], ebx
	mov edi, edx
	mov eax, fx_randomTable
	mov [ebp-0x20], eax
	mov [ebp-0x34], ecx
	jmp _Z17FX_StartNewEffectP8FxSystemP8FxEffect_20
_Z17FX_StartNewEffectP8FxSystemP8FxEffect_30:
	add edi, 0x1
	add dword [ebp-0x1c], 0xfc
	cmp [ebp-0x34], edi
	jz _Z17FX_StartNewEffectP8FxSystemP8FxEffect_10
_Z17FX_StartNewEffectP8FxSystemP8FxEffect_20:
	mov edx, [ebp-0x30]
	mov eax, [edx]
	mov eax, [eax+0x1c]
	add eax, [ebp-0x1c]
	cmp byte [eax+0xb0], 0x3
	jz _Z17FX_StartNewEffectP8FxSystemP8FxEffect_30
	mov esi, [eax+0x4]
	mov eax, [eax+0x8]
	test eax, eax
	jz _Z17FX_StartNewEffectP8FxSystemP8FxEffect_40
	add eax, 0x1
	movzx edx, word [edx+0x12]
	mov ebx, [ebp-0x20]
	movzx edx, word [ebx+edx*4+0x4c]
	imul eax, edx
	sar eax, 0x10
	add esi, eax
_Z17FX_StartNewEffectP8FxSystemP8FxEffect_40:
	test esi, esi
	jle _Z17FX_StartNewEffectP8FxSystemP8FxEffect_30
	xor ebx, ebx
_Z17FX_StartNewEffectP8FxSystemP8FxEffect_50:
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
	call _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi
	add ebx, 0x1
	cmp esi, ebx
	jnz _Z17FX_StartNewEffectP8FxSystemP8FxEffect_50
	add edi, 0x1
	add dword [ebp-0x1c], 0xfc
	cmp [ebp-0x34], edi
	jnz _Z17FX_StartNewEffectP8FxSystemP8FxEffect_20
_Z17FX_StartNewEffectP8FxSystemP8FxEffect_10:
	mov edx, [ebp-0x30]
	mov [ebp+0xc], edx
	mov ecx, [ebp-0x2c]
	mov [ebp+0x8], ecx
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z23FX_SortNewElemsInEffectP8FxSystemP8FxEffect


;FX_TriggerOneShot(FxSystem*, FxEffect*, int, int, FxSpatialFrame const*, int)
_Z17FX_TriggerOneShotP8FxSystemP8FxEffectiiPK14FxSpatialFramei:
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
	jz _Z17FX_TriggerOneShotP8FxSystemP8FxEffectiiPK14FxSpatialFramei_10
	lea eax, [edx*4]
	mov ebx, edx
	shl ebx, 0x8
	sub ebx, eax
	mov [ebp-0x1c], ebx
	mov edi, edx
	mov eax, fx_randomTable
	mov [ebp-0x20], eax
	mov [ebp-0x24], ecx
	jmp _Z17FX_TriggerOneShotP8FxSystemP8FxEffectiiPK14FxSpatialFramei_20
_Z17FX_TriggerOneShotP8FxSystemP8FxEffectiiPK14FxSpatialFramei_30:
	add edi, 0x1
	add dword [ebp-0x1c], 0xfc
	cmp [ebp-0x24], edi
	jz _Z17FX_TriggerOneShotP8FxSystemP8FxEffectiiPK14FxSpatialFramei_10
_Z17FX_TriggerOneShotP8FxSystemP8FxEffectiiPK14FxSpatialFramei_20:
	mov edx, [ebp+0xc]
	mov eax, [edx]
	mov eax, [eax+0x1c]
	add eax, [ebp-0x1c]
	cmp byte [eax+0xb0], 0x3
	jz _Z17FX_TriggerOneShotP8FxSystemP8FxEffectiiPK14FxSpatialFramei_30
	mov esi, [eax+0x4]
	mov eax, [eax+0x8]
	test eax, eax
	jz _Z17FX_TriggerOneShotP8FxSystemP8FxEffectiiPK14FxSpatialFramei_40
	add eax, 0x1
	movzx edx, word [edx+0x12]
	mov ebx, [ebp-0x20]
	movzx edx, word [ebx+edx*4+0x4c]
	imul eax, edx
	sar eax, 0x10
	add esi, eax
_Z17FX_TriggerOneShotP8FxSystemP8FxEffectiiPK14FxSpatialFramei_40:
	test esi, esi
	jle _Z17FX_TriggerOneShotP8FxSystemP8FxEffectiiPK14FxSpatialFramei_30
	xor ebx, ebx
_Z17FX_TriggerOneShotP8FxSystemP8FxEffectiiPK14FxSpatialFramei_50:
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
	call _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi
	add ebx, 0x1
	cmp esi, ebx
	jnz _Z17FX_TriggerOneShotP8FxSystemP8FxEffectiiPK14FxSpatialFramei_50
	add edi, 0x1
	add dword [ebp-0x1c], 0xfc
	cmp [ebp-0x24], edi
	jnz _Z17FX_TriggerOneShotP8FxSystemP8FxEffectiiPK14FxSpatialFramei_20
_Z17FX_TriggerOneShotP8FxSystemP8FxEffectiiPK14FxSpatialFramei_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;FX_UpdateRemaining(FxCmd*)
_Z18FX_UpdateRemainingP5FxCmd:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, fx_enable
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z18FX_UpdateRemainingP5FxCmd_10
	mov edx, [ebx+0x4]
	xor ecx, ecx
	mov eax, [ebx]
	call _Z9FX_UpdateP8FxSystemih
_Z18FX_UpdateRemainingP5FxCmd_10:
	mov eax, [ebx+0x4]
	mov [esp], eax
	call _Z22CG_AddSceneTracerBeamsi
	mov eax, [ebx+0x4]
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z21CG_GenerateSceneVertsi


;FX_UpdateSpotLight(FxCmd*)
_Z18FX_UpdateSpotLightP5FxCmd:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov eax, fx_enable
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z18FX_UpdateSpotLightP5FxCmd_10
	mov eax, [ebp+0x8]
	mov esi, [eax]
	mov eax, [esi+0x9bc]
	test eax, eax
	jle _Z18FX_UpdateSpotLightP5FxCmd_20
	movzx eax, word [esi+0x9c4]
	mov edx, [esi+0x170]
	lea ebx, [edx+eax*4]
	mov eax, [ebx+0x4]
	test ax, ax
	jnz _Z18FX_UpdateSpotLightP5FxCmd_30
_Z18FX_UpdateSpotLightP5FxCmd_20:
	cmp byte [esi+0x9dd], 0x0
	jnz _Z18FX_UpdateSpotLightP5FxCmd_40
	mov eax, fx_draw
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z18FX_UpdateSpotLightP5FxCmd_50
_Z18FX_UpdateSpotLightP5FxCmd_10:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18FX_UpdateSpotLightP5FxCmd_50:
	mov [esp], esi
	call _Z16FX_DrawSpotLightP8FxSystem
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18FX_UpdateSpotLightP5FxCmd_30:
	mov eax, [ebx+0x24]
	cmp eax, [esi+0x9d0]
	jg _Z18FX_UpdateSpotLightP5FxCmd_20
	mov edx, ebx
	mov eax, esi
	call _Z19FX_UpdateEffectBoltP8FxSystemP8FxEffect
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
_Z18FX_UpdateSpotLightP5FxCmd_60:
	mov word [ebp+eax*2-0x1e], 0xffff
	add eax, 0x1
	cmp eax, 0x3
	jnz _Z18FX_UpdateSpotLightP5FxCmd_60
	mov edi, [esi+0x9d0]
	mov edx, [ebx+0x24]
	mov eax, [esi+0x9c0]
	test eax, eax
	jnz _Z18FX_UpdateSpotLightP5FxCmd_70
_Z18FX_UpdateSpotLightP5FxCmd_80:
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
	call _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3_
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z23FX_SortNewElemsInEffectP8FxSystemP8FxEffect
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
	jmp _Z18FX_UpdateSpotLightP5FxCmd_20
_Z18FX_UpdateSpotLightP5FxCmd_40:
	mov [esp], esi
	call _Z23FX_RunGarbageCollectionP8FxSystem
	mov eax, fx_draw
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z18FX_UpdateSpotLightP5FxCmd_10
	jmp _Z18FX_UpdateSpotLightP5FxCmd_50
_Z18FX_UpdateSpotLightP5FxCmd_70:
	movzx ecx, word [esi+0x9c6]
	mov eax, [esi+0x174]
	lea ecx, [eax+ecx*4]
	mov [esp+0x4], edi
	mov [esp], edx
	mov edx, ebx
	mov eax, esi
	call _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii
	test eax, eax
	jnz _Z18FX_UpdateSpotLightP5FxCmd_80
	mov [esp+0x8], ebx
	movzx eax, word [esi+0x9c6]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z20FX_FreeSpotLightElemP8FxSystemtP8FxEffect
	jmp _Z18FX_UpdateSpotLightP5FxCmd_80
	add [eax], al


;FX_SetNextUpdateTime(int, int)
_Z20FX_SetNextUpdateTimeii:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z12FX_GetSystemi
	mov ebx, eax
	lea eax, [eax+0xc]
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call iInterlockedExchange
	lea eax, [ebx+0x9d4]
	mov [esp+0x4], esi
	mov [esp], eax
	call iInterlockedExchange
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
_Z21FX_GetBoneOrientationiiiP13orientation_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0xc]
	mov edi, [ebp+0x10]
	cmp esi, 0x3fd
	jg _Z21FX_GetBoneOrientationiiiP13orientation_t_10
	lea edx, [esi*4]
	mov eax, esi
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edx, cg_entitiesArray
	cmp byte [edx+eax+0x1c0], 0x0
	jz _Z21FX_GetBoneOrientationiiiP13orientation_t_20
_Z21FX_GetBoneOrientationiiiP13orientation_t_10:
	test edi, edi
	js _Z21FX_GetBoneOrientationiiiP13orientation_t_30
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z17Com_GetClientDObjii
	mov ebx, eax
	test eax, eax
	jz _Z21FX_GetBoneOrientationiiiP13orientation_t_20
	mov [esp], eax
	call _Z12DObjNumBonesPK6DObj_s
	cmp edi, eax
	jl _Z21FX_GetBoneOrientationiiiP13orientation_t_40
_Z21FX_GetBoneOrientationiiiP13orientation_t_20:
	xor eax, eax
_Z21FX_GetBoneOrientationiiiP13orientation_t_50:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21FX_GetBoneOrientationiiiP13orientation_t_40:
	mov [esp+0x4], esi
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z10CG_GetPoseii
	mov edx, [ebp+0x14]
	mov [esp+0x10], edx
	add edx, 0xc
	mov [esp+0xc], edx
	mov [esp+0x8], edi
	mov [esp+0x4], ebx
	mov [esp], eax
	call _Z25CG_DObjGetWorldBoneMatrixPK7cpose_tP6DObj_siPA3_fPf
	test eax, eax
	jz _Z21FX_GetBoneOrientationiiiP13orientation_t_20
	mov eax, 0x1
	jmp _Z21FX_GetBoneOrientationiiiP13orientation_t_50
_Z21FX_GetBoneOrientationiiiP13orientation_t_30:
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	add eax, 0xc
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z21CG_GetDObjOrientationiiPA3_fPf
	mov eax, 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;FX_UpdateNonDependent(FxCmd*)
_Z21FX_UpdateNonDependentP5FxCmd:
	push ebp
	mov ebp, esp
	push ebx
	mov edx, [ebp+0x8]
	mov ebx, [edx]
	mov eax, fx_enable
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z21FX_UpdateNonDependentP5FxCmd_10
	pop ebx
	pop ebp
	ret
_Z21FX_UpdateNonDependentP5FxCmd_10:
	mov edx, [edx+0x4]
	mov ecx, 0x1
	mov eax, ebx
	pop ebx
	pop ebp
	jmp _Z9FX_UpdateP8FxSystemih


;FX_GetBoltTemporalBits(int, int)
_Z22FX_GetBoltTemporalBitsii:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	cmp eax, 0x3fd
	jg _Z22FX_GetBoltTemporalBitsii_10
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	add eax, cg_entitiesArray
	mov eax, [eax+0xd4]
	test al, 0x2
	jz _Z22FX_GetBoltTemporalBitsii_10
	mov eax, 0x1
	pop ebp
	ret
_Z22FX_GetBoltTemporalBitsii_10:
	xor eax, eax
	pop ebp
	ret
	nop


;FX_SetNextUpdateCamera(int, refdef_s const*, float)
_Z22FX_SetNextUpdateCameraiPK8refdef_sf:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z12FX_GetSystemi
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
	call _Z8AxisCopyPA3_KfPA3_f
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
_Z22FX_SetNextUpdateCameraiPK8refdef_sf_10:
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
	ja _Z22FX_SetNextUpdateCameraiPK8refdef_sf_10
	movss xmm0, dword [ebp+0x10]
	ucomiss xmm0, [_float_0_00000000]
	jbe _Z22FX_SetNextUpdateCameraiPK8refdef_sf_20
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
_Z22FX_SetNextUpdateCameraiPK8refdef_sf_20:
	lea eax, [ebx+0xc]
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call iInterlockedExchange
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;FX_UpdateEffectPartial(FxSystem*, FxEffect*, int, int, float, float, unsigned short*, unsigned short*, unsigned short*, unsigned short*)
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x19c
	mov edx, [ebp+0xc]
	mov eax, [edx+0x4]
	test eax, 0x10000
	jz _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__10
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
	jz _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__20
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
	jmp _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__30
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__60:
	mov eax, [ebp+0x10]
	mov [ebp-0xcc], eax
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__70:
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
	jl _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__40
	mov ecx, [ebp-0x124]
	cmp [esi+0x8], ecx
	jg _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__50
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__40:
	add dword [ebp-0x11c], 0x1
	add dword [ebp-0xdc], 0xfc
	mov eax, [ebp-0x11c]
	cmp [ebp-0x128], eax
	jz _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__20
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__30:
	mov esi, [ebp-0xdc]
	mov edx, [ebp-0x144]
	add esi, [edx+0x1c]
	cmp byte [esi+0xb0], 0x3
	jz _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__40
	cmp dword [ebp+0x14], 0x7fffffff
	jz _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__60
	cmp dword [ebp-0x120], 0x80
	jle _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__60
	mov ecx, [ebp-0x120]
	xor edx, edx
	mov eax, esi
	call _Z39FX_LimitStabilizeTimeForElemDef_RecursePK9FxElemDefhi
	add eax, 0x1
	mov ecx, [ebp+0xc]
	mov ecx, [ecx]
	mov [ebp-0x144], ecx
	mov esi, [ebp-0xdc]
	add esi, [ecx+0x1c]
	cmp [ebp-0x120], eax
	jle _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__60
	mov edx, [ebp-0x120]
	sub edx, eax
	mov eax, edx
	add eax, [ebp+0x10]
	mov [ebp-0xcc], eax
	jmp _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__70
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__20:
	mov ecx, [ebp+0xc]
	movzx edx, word [ecx+0x10]
	cmp dx, 0xffff
	jz _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__80
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
	jmp _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__90
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__110:
	movzx edx, word [esi]
	cmp dx, 0xffff
	jz _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__100
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__90:
	movzx edx, dx
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x178]
	lea esi, [eax+edx*4]
	movsx ecx, byte [esi+0x6]
	test ecx, ecx
	js _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__110
	cmp [ebp-0x128], ecx
	jle _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__110
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
	jbe _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__110
	movss [ebp-0x110], xmm0
	pxor xmm1, xmm1
	movss [ebp-0x114], xmm1
	movaps xmm0, xmm1
	jmp _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__120
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__130:
	mov dword [ebp-0x10c], 0x3f800000
	movss xmm0, dword [ebp-0x114]
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__120:
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
	call _Z13Vec4NormalizePf
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
	call _Z22FX_SpawnTrailElem_CullP8FxSystemP8FxEffectP7FxTrailPK14FxSpatialFrameif
	movss xmm0, dword [ebp-0x110]
	subss xmm0, [ebp-0x10c]
	movss [ebp-0x110], xmm0
	ucomiss xmm0, [_float_1_00000000]
	ja _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__130
	movzx edx, word [esi]
	cmp dx, 0xffff
	jnz _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__90
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__100:
	mov edx, [ebp+0xc]
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__250:
	mov eax, [ebp+0x14]
	sub eax, [edx+0x20]
	mov ecx, [ebp-0x12c]
	cmp eax, [ecx+0xc]
	jg _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__140
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__10:
	mov eax, edx
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__240:
	mov [ebp-0xe4], eax
	mov dword [ebp-0x134], 0x0
	mov ebx, eax
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__220:
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
	jnz _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__150
	mov ecx, eax
	mov [ebp-0xd2], cx
	movzx esi, word [ebx]
	cmp cx, si
	jz _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__160
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__200:
	mov [ebp-0x108], si
	jmp _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__150
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__180:
	cmp [ebp-0xd2], bx
	jz _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__170
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__190:
	mov esi, ebx
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__150:
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
	call _Z16FX_UpdateElementP8FxSystemP8FxEffectP6FxElemii
	movzx ebx, word [ebx+0x4]
	test eax, eax
	jnz _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__180
	mov edx, [ebp-0x134]
	mov [esp+0xc], edx
	mov ecx, [ebp+0xc]
	mov [esp+0x8], ecx
	mov [esp+0x4], edi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z11FX_FreeElemP8FxSystemtP8FxEffectj
	cmp si, [ebp-0x108]
	movzx edx, word [ebp-0x108]
	cmovz edx, ebx
	mov [ebp-0x108], dx
	cmp [ebp-0xd2], bx
	jnz _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__190
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__170:
	movzx ecx, word [ebp-0x108]
	mov ebx, [ebp-0xe0]
	mov [ebp-0xd2], cx
	movzx esi, word [ebx]
	cmp cx, si
	jnz _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__200
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__160:
	add dword [ebp-0x134], 0x1
	add dword [ebp-0xe4], 0x2
	cmp dword [ebp-0x134], 0x3
	jz _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__210
	mov ebx, [ebp-0xe4]
	jmp _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__220
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__50:
	mov eax, [ebp+0x14]
	sub eax, [ebp-0xcc]
	cvtsi2ss xmm0, eax
	movss [ebp-0xec], xmm0
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__230:
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
	call _Z13Vec4NormalizePf
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
	call _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi
	mov eax, [ebp+0xc]
	mov eax, [eax]
	mov [ebp-0x144], eax
	mov eax, [ebp-0xdc]
	mov edx, [ebp-0x144]
	add eax, [edx+0x1c]
	add dword [ebp-0x124], 0x1
	add edi, [eax+0x4]
	cmp [ebp+0x14], edi
	jl _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__40
	mov ecx, [ebp-0x124]
	cmp [eax+0x8], ecx
	jg _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__230
	jmp _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__40
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__140:
	mov [esp+0x4], edx
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call _Z13FX_StopEffectP8FxSystemP8FxEffect
	mov eax, [ebp+0xc]
	jmp _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__240
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__80:
	mov edx, ecx
	jmp _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__250
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__210:
	mov edx, [ebp+0xc]
	movzx eax, word [edx+0x10]
	cmp ax, 0xffff
	jz _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__260
	mov dword [ebp-0xe8], 0x1
	lea ecx, [edx+0x44]
	mov [ebp-0x140], ecx
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__480:
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
	jz _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__270
	mov ebx, [ebp-0xe8]
	mov eax, [ebp+0x28]
	movzx edx, word [eax+ebx*2-0x2]
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__550:
	mov eax, [ebp+0x2c]
	test eax, eax
	jz _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__280
	mov ecx, [ebp-0xe8]
	mov ebx, [ebp+0x2c]
	movzx eax, word [ebx+ecx*2-0x2]
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__540:
	mov [ebp-0xf6], dx
	mov [ebp-0xf8], ax
	cmp dx, 0xffff
	jz _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__290
	mov ecx, eax
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__530:
	cmp dx, [ebp-0x1e]
	setz byte [ebp-0xed]
	cmp dx, cx
	jz _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__300
	mov word [ebp-0xd0], 0xffff
	jmp _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__310
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__360:
	mov edx, [ebp-0x70]
	mov esi, [ebp-0x7c]
	cmp [ebp-0x74], esi
	mov eax, [ebp-0x74]
	cmovl eax, esi
	mov [ebp-0x74], eax
	cmp eax, edx
	jnz _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__320
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__370:
	cmp edx, [ebp-0x78]
	jge _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__330
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__350:
	mov byte [ebp-0xed], 0x0
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__420:
	movzx ebx, word [ebp-0xce]
	cmp [ebp-0xf8], bx
	jz _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__340
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__430:
	movzx eax, word [ebp-0xf6]
	mov [ebp-0xd0], ax
	mov [ebp-0xf6], bx
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__310:
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
	jg _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__350
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
	jl _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__360
	mov ebx, [ebp-0x13c]
	mov eax, [ebx+0x1c]
	mov eax, [edi+eax+0xe0]
	test eax, eax
	jz _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__330
	mov [ebp-0x70], edx
	mov esi, [ebp-0x7c]
	cmp [ebp-0x74], esi
	mov eax, [ebp-0x74]
	cmovl eax, esi
	mov [ebp-0x74], eax
	cmp eax, edx
	jz _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__370
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__320:
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
	call _Z17FX_GetOrientationPK9FxElemDefPK14FxSpatialFrameS4_iP13orientation_t
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
	jz _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__380
	mov eax, [eax]
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__520:
	test ah, 0x1
	jz _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__390
	cmp dword [ebp-0xbc], 0xff
	jz _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__400
	lea eax, [ebp-0x5c]
	mov [esp+0x8], eax
	mov eax, [ebp-0x64]
	mov [esp+0x4], eax
	lea ecx, [ebp-0xb8]
	mov [esp], ecx
	call _Z27FX_OrientationPosToWorldPosPK13orientation_tPKfPf
	mov ebx, 0x1
	movss xmm1, dword [_float_0_00100000]
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__510:
	movss xmm0, dword [ebp-0x24]
	divss xmm0, xmm1
	cvttss2si eax, xmm0
	cmp eax, 0xffff8000
	jge _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__410
	mov edx, 0xffff8000
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__490:
	mov eax, [ebp-0xf4]
	mov [eax+0x16], dx
	test ebx, ebx
	jnz _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__350
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__330:
	cmp byte [ebp-0xed], 0x0
	jz _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__420
	cmp word [ebp-0xd0], 0xffff
	jz _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__420
	lea eax, [ebp-0x20]
	mov [esp+0xc], eax
	mov edx, [ebp+0xc]
	mov [esp+0x8], edx
	movzx eax, word [ebp-0xd0]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z16FX_FreeTrailElemP8FxSystemtP8FxEffectP7FxTrail
	movzx ebx, word [ebp-0xce]
	cmp [ebp-0xf8], bx
	jnz _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__430
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__340:
	cmp word [ebp-0xf6], 0xffff
	jz _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__300
	movzx edx, word [ebp-0xf6]
	cmp [ebp-0x1c], dx
	jnz _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__300
	cmp byte [ebp-0xed], 0x0
	jnz _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__440
	mov edx, [ebp+0xc]
	mov eax, [edx+0x4]
	test eax, 0x10000
	jz _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__300
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
	call _Z24FX_GetOriginForTrailElemP8FxEffectPK9FxElemDefPK14FxSpatialFrameiPfS7_S7_
	lea esi, [ebp-0x3c]
	mov edi, [ebp-0xf4]
	add edi, 0x18
	movss xmm1, dword [_float_127_00000000]
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__470:
	lea edx, [esi-0xc]
	mov ebx, edi
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__460:
	movss xmm0, dword [edx]
	mulss xmm0, xmm1
	cvttss2si eax, xmm0
	cmp eax, 0xffffff80
	jge _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__450
	mov ecx, 0xffffff80
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__600:
	mov [ebx], cl
	add edx, 0x4
	add ebx, 0x1
	cmp edx, esi
	jnz _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__460
	add esi, 0xc
	add edi, 0x3
	lea eax, [ebp-0x24]
	cmp eax, esi
	jnz _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__470
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__300:
	mov eax, [ebp-0x20]
	mov edx, [ebp-0x1c]
	mov ecx, [ebp-0x130]
	mov [ecx], eax
	mov [ecx+0x4], edx
	movzx eax, word [ebp-0x20]
	add dword [ebp-0xe8], 0x1
	cmp ax, 0xffff
	jnz _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__480
	mov ebx, [ebp+0xc]
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__620:
	mov eax, [ebp+0x14]
	mov [ebx+0x24], eax
	add esp, 0x19c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__410:
	mov edx, 0x7fff
	cmp eax, 0x8000
	cmovl edx, eax
	jmp _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__490
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__390:
	test eax, 0x6000000
	jz _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__500
	mov ecx, [ebp-0x70]
	mov edx, [ebp-0x74]
	lea esi, [ebp-0xc4]
	mov eax, esi
	call _Z22FX_NextElementPositionP12FxUpdateElemii
	mov eax, [ebp-0x64]
	mov [esp+0x8], eax
	lea eax, [ebp-0x5c]
	mov [esp+0x4], eax
	lea ecx, [ebp-0xb8]
	mov [esp], ecx
	call _Z29FX_OrientationPosFromWorldPosPK13orientation_tPKfPf
	mov ebx, 0x1
	movss xmm1, dword [_float_0_00100000]
	jmp _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__510
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__380:
	mov eax, [eax]
	test eax, 0x8000000
	jz _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__520
	jmp _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__510
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__500:
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
	call _Z20FX_IntegrateVelocityPK12FxUpdateElemffPfS2_
	mov ebx, 0x1
	movss xmm1, dword [_float_0_00100000]
	jmp _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__510
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__290:
	movzx eax, word [ebp-0x1e]
	mov [ebp-0xf6], ax
	mov edx, eax
	movzx ecx, word [ebp-0xf8]
	jmp _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__530
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__280:
	mov eax, 0xffff
	jmp _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__540
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__270:
	mov edx, 0xffff
	jmp _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__550
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__400:
	lea ebx, [ebp-0x48]
	mov [esp+0x8], ebx
	mov eax, [ebp-0x64]
	mov [esp+0x4], eax
	lea eax, [ebp-0xb8]
	mov [esp], eax
	call _Z27FX_OrientationPosToWorldPosPK13orientation_tPKfPf
	mov edx, [ebp-0x74]
	lea ebx, [edx+0x32]
	mov eax, [ebp-0x70]
	cmp eax, ebx
	jle _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__560
	lea esi, [ebp-0xc4]
	jmp _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__570
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__590:
	mov edx, ebx
	mov ebx, ecx
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__570:
	lea ecx, [ebp-0x48]
	mov [esp+0x4], ecx
	mov [esp], ebx
	mov ecx, edx
	mov edx, esi
	mov eax, [ebp+0x8]
	call _Z38FX_UpdateElementPosition_CollidingStepP8FxSystemP12FxUpdateElemiiPf
	test eax, eax
	jz _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__580
	lea ecx, [ebx+0x32]
	mov eax, [ebp-0x70]
	cmp eax, ecx
	jg _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__590
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__610:
	lea edx, [ebp-0x48]
	mov [esp+0x4], edx
	mov [esp], eax
	mov ecx, ebx
	mov edx, esi
	mov eax, [ebp+0x8]
	call _Z38FX_UpdateElementPosition_CollidingStepP8FxSystemP12FxUpdateElemiiPf
	mov ebx, eax
	movss xmm1, dword [_float_0_00100000]
	jmp _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__510
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__450:
	mov ecx, 0x7f
	cmp eax, 0x80
	cmovl ecx, eax
	jmp _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__600
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__560:
	mov ebx, edx
	lea esi, [ebp-0xc4]
	jmp _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__610
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__440:
	lea eax, [ebp-0x20]
	mov [esp+0xc], eax
	mov ecx, [ebp+0xc]
	mov [esp+0x8], ecx
	mov ebx, [ebp-0x148]
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z16FX_FreeTrailElemP8FxSystemtP8FxEffectP7FxTrail
	jmp _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__300
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__580:
	xor ebx, ebx
	movss xmm1, dword [_float_0_00100000]
	jmp _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__510
_Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__260:
	mov ebx, edx
	jmp _Z22FX_UpdateEffectPartialP8FxSystemP8FxEffectiiffPtS3_S3_S3__620


;FX_AddNonSpriteDrawSurfs(FxCmd*)
_Z24FX_AddNonSpriteDrawSurfsP5FxCmd:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov ebx, [eax]
	mov eax, fx_enable
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z24FX_AddNonSpriteDrawSurfsP5FxCmd_10
	mov eax, fx_draw
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z24FX_AddNonSpriteDrawSurfsP5FxCmd_20
_Z24FX_AddNonSpriteDrawSurfsP5FxCmd_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z24FX_AddNonSpriteDrawSurfsP5FxCmd_20:
	mov [esp], ebx
	call _Z14FX_SortEffectsP8FxSystem
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z21FX_DrawNonSpriteElemsP8FxSystem
	nop


;FX_SpawnAllFutureLooping(FxSystem*, FxEffect*, int, int, FxSpatialFrame const*, FxSpatialFrame const*, int, int)
_Z24FX_SpawnAllFutureLoopingP8FxSystemP8FxEffectiiPK14FxSpatialFrameS5_ii:
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
	jz _Z24FX_SpawnAllFutureLoopingP8FxSystemP8FxEffectiiPK14FxSpatialFrameS5_ii_10
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
	jmp _Z24FX_SpawnAllFutureLoopingP8FxSystemP8FxEffectiiPK14FxSpatialFrameS5_ii_20
_Z24FX_SpawnAllFutureLoopingP8FxSystemP8FxEffectiiPK14FxSpatialFrameS5_ii_30:
	add dword [ebp-0x44], 0x1
	add dword [ebp-0x3c], 0xfc
	mov ebx, [ebp-0x48]
	cmp [ebp-0x44], ebx
	jz _Z24FX_SpawnAllFutureLoopingP8FxSystemP8FxEffectiiPK14FxSpatialFrameS5_ii_10
_Z24FX_SpawnAllFutureLoopingP8FxSystemP8FxEffectiiPK14FxSpatialFrameS5_ii_60:
	mov ebx, [ebp-0x3c]
_Z24FX_SpawnAllFutureLoopingP8FxSystemP8FxEffectiiPK14FxSpatialFrameS5_ii_20:
	mov eax, [edi+0x1c]
	cmp dword [eax+ebx+0x8], 0x7fffffff
	jz _Z24FX_SpawnAllFutureLoopingP8FxSystemP8FxEffectiiPK14FxSpatialFrameS5_ii_30
	add ebx, eax
	cmp byte [ebx+0xb0], 0x3
	jz _Z24FX_SpawnAllFutureLoopingP8FxSystemP8FxEffectiiPK14FxSpatialFrameS5_ii_30
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
	jge _Z24FX_SpawnAllFutureLoopingP8FxSystemP8FxEffectiiPK14FxSpatialFrameS5_ii_30
	mov ebx, edx
	jmp _Z24FX_SpawnAllFutureLoopingP8FxSystemP8FxEffectiiPK14FxSpatialFrameS5_ii_40
_Z24FX_SpawnAllFutureLoopingP8FxSystemP8FxEffectiiPK14FxSpatialFrameS5_ii_50:
	mov ebx, [ebp+0x18]
_Z24FX_SpawnAllFutureLoopingP8FxSystemP8FxEffectiiPK14FxSpatialFrameS5_ii_40:
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
	call _Z13Vec4NormalizePf
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
	call _Z12FX_SpawnElemP8FxSystemP8FxEffectiPK14FxSpatialFrameifi
	mov ebx, [ebp+0xc]
	mov edi, [ebx]
	mov eax, [ebp-0x3c]
	add eax, [edi+0x1c]
	add esi, 0x1
	mov edx, [eax+0x4]
	add [ebp-0x40], edx
	cmp [eax+0x8], esi
	jg _Z24FX_SpawnAllFutureLoopingP8FxSystemP8FxEffectiiPK14FxSpatialFrameS5_ii_50
	add dword [ebp-0x44], 0x1
	add dword [ebp-0x3c], 0xfc
	mov ebx, [ebp-0x48]
	cmp [ebp-0x44], ebx
	jnz _Z24FX_SpawnAllFutureLoopingP8FxSystemP8FxEffectiiPK14FxSpatialFrameS5_ii_60
_Z24FX_SpawnAllFutureLoopingP8FxSystemP8FxEffectiiPK14FxSpatialFrameS5_ii_10:
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

