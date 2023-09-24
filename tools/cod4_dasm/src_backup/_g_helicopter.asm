;Imports of g_helicopter:
	extern _Z18VEH_GetVehicleInfos
	extern vehHelicopterRightStickDeadzone
	extern _Z12AngleVectorsPKfPfS1_S1_
	extern _Z15Vec3NormalizeToPKfPf
	extern vehHelicopterDecelerationSide
	extern vehHelicopterDecelerationFwd
	extern _Z9DiffTrackffff
	extern vehHelicopterMaxYawRate
	extern vehHelicopterMaxYawAccel
	extern vehHelicopterYawOnLeftStick
	extern vehHelicopterMaxAccel
	extern vehHelicopterMaxSpeed
	extern vehHelicopterTiltFromVelocity
	extern vehHelicopterTiltFromControllerAxes
	extern vehHelicopterTiltFromAcceleration
	extern vehHelicopterTiltFromDeceleration
	extern vehHelicopterTiltFromFwdAndYaw_VelAtMaxTilt
	extern vehHelicopterTiltFromFwdAndYaw
	extern vehHelicopterTiltMomentum
	extern vehHelicopterTiltSpeed
	extern _Z32MatrixTransposeTransformVector43PKfPA3_S_Pf
	extern vehHelicopterMaxPitch
	extern vehHelicopterMaxRoll
	extern vehHelicopterHoverSpeedThreshold
	extern floorf
	extern vehHelicopterSoftCollisions
	extern vehHelicopterLookaheadTime
	extern _Z13VEH_SlideMoveP9gentity_si
	extern vec3_origin
	extern _Z15VEH_ClearGroundP9gentity_s
	extern vehHelicopterStrafeDeadzone
	extern vehHelicopterScaleMovement
	extern level
	extern _Z7G_irandii
	extern vehHelicopterJitterJerkyness
	extern _Z13Scr_AddVectorPKf
	extern scr_const
	extern _Z10Scr_NotifyP9gentity_stj
	extern vehHelicopterMaxSpeedVertical
	extern vehHelicopterMaxAccelVertical
	extern _Z8G_flrandff
	extern _Z14G_TraceCapsuleP7trace_tPKfS2_S2_S2_ii

;Exports of g_helicopter:
	global _Z23VEH_UpdateClientChopperP9gentity_s
	global _Z26VEH_CheckForPredictedCrashP9gentity_s


SECTION .text


;VEH_UpdateClientChopper(gentity_s*)
_Z23VEH_UpdateClientChopperP9gentity_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x27c
	mov byte [ebp-0x1c], 0x0
	mov byte [ebp-0x1b], 0x0
	mov byte [ebp-0x1a], 0x0
	mov byte [ebp-0x19], 0x0
	mov eax, [ebp+0x8]
	mov eax, [eax+0x164]
	mov [ebp-0x1fc], eax
	add eax, 0xc0
	mov [ebp-0x1f8], eax
	mov edx, [ebp-0x1fc]
	movsx eax, word [edx+0x1bc]
	mov [esp], eax
	call _Z18VEH_GetVehicleInfos
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+0x164]
	mov [ebp-0x1e0], ecx
	mov esi, ecx
	add esi, 0xc0
	movsx eax, word [ecx+0x1bc]
	mov [esp], eax
	call _Z18VEH_GetVehicleInfos
	mov eax, [ebp-0x1e0]
	movss xmm0, dword [eax+0x2c8]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jbe _Z23VEH_UpdateClientChopperP9gentity_s_10
	mov edx, eax
	mov eax, [eax+0x2d0]
	mov [ebp-0x70], eax
	mov [ebp-0x6c], eax
	mov [ebp-0x68], eax
	mov eax, [edx+0x2d4]
	mov [ebp-0x7c], eax
	mov [ebp-0x78], eax
	mov [ebp-0x74], eax
_Z23VEH_UpdateClientChopperP9gentity_s_470:
	mov edx, 0x1
	lea ebx, [ebp-0x108]
	lea ecx, [ebp-0x1c]
	movss xmm1, dword [_float_127_00000000]
_Z23VEH_UpdateClientChopperP9gentity_s_20:
	movsx eax, byte [edx+ecx-0x1]
	cvtsi2ss xmm0, eax
	divss xmm0, xmm1
	movss [ebx+edx*4-0x4], xmm0
	add edx, 0x1
	cmp edx, 0x5
	jnz _Z23VEH_UpdateClientChopperP9gentity_s_20
	movzx eax, byte [ebp-0x1c]
	test al, al
	jnz _Z23VEH_UpdateClientChopperP9gentity_s_30
	cmp byte [ebp-0x1b], 0x0
	jnz _Z23VEH_UpdateClientChopperP9gentity_s_30
	movss xmm4, dword [_data16_7fffffff]
	pxor xmm2, xmm2
_Z23VEH_UpdateClientChopperP9gentity_s_310:
	movss xmm0, dword [ebp-0x100]
	movaps xmm1, xmm0
	andps xmm1, xmm4
	mov eax, vehHelicopterRightStickDeadzone
	mov eax, [eax]
	cmpss xmm1, [eax+0xc], 0x5
	andps xmm0, xmm1
	orps xmm0, xmm2
	movss [ebp-0x100], xmm0
	movss xmm1, dword [ebp-0xfc]
	movaps xmm0, xmm1
	andps xmm0, xmm4
	cmpss xmm0, [eax+0xc], 0x5
	andps xmm1, xmm0
	orps xmm1, xmm2
	movss [ebp-0xfc], xmm1
	mov edx, 0x1
	mov eax, 0x4
_Z23VEH_UpdateClientChopperP9gentity_s_60:
	movss xmm1, dword [eax+ebp-0x74]
	pxor xmm0, xmm0
	ucomiss xmm1, xmm0
	jp _Z23VEH_UpdateClientChopperP9gentity_s_40
	jz _Z23VEH_UpdateClientChopperP9gentity_s_50
_Z23VEH_UpdateClientChopperP9gentity_s_40:
	movss xmm0, dword [eax+ebp-0x80]
	divss xmm0, xmm1
	movss [eax+ebp-0xfc], xmm0
_Z23VEH_UpdateClientChopperP9gentity_s_330:
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x4
	jnz _Z23VEH_UpdateClientChopperP9gentity_s_60
	movss xmm0, dword [ebp-0x70]
	mulss xmm0, [ebp-0x108]
	movss [ebp-0x40], xmm0
	movss xmm0, dword [ebp-0x6c]
	mulss xmm0, [ebp-0x104]
	movss [ebp-0x3c], xmm0
	movss xmm0, dword [ebp-0x68]
	mulss xmm0, [ebp-0x100]
	movss [ebp-0x38], xmm0
	mov dword [ebp-0x60], 0x0
	mov eax, [esi+0x24]
	mov [ebp-0x64], eax
	mov eax, [esi+0x2c]
	mov [ebp-0x5c], eax
	lea eax, [ebp-0x58]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x64]
	mov [esp], eax
	call _Z12AngleVectorsPKfPfS1_S1_
	movss xmm1, dword [ebp-0x38]
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x58]
	addss xmm0, [ebp-0x40]
	movss [ebp-0x40], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x54]
	addss xmm0, [ebp-0x3c]
	movss [ebp-0x3c], xmm0
	mulss xmm1, [ebp-0x50]
	movss [ebp-0x38], xmm1
	lea eax, [ebp-0x4c]
	mov [esp+0x4], eax
	lea eax, [ebp-0x40]
	mov [esp], eax
	call _Z15Vec3NormalizeToPKfPf
	fstp dword [ebp-0x1dc]
	lea edx, [esi+0x84]
	mov [ebp-0x1f4], edx
	movss xmm6, dword [ebp-0x4c]
	lea ecx, [esi+0x88]
	mov [ebp-0x1d8], ecx
	movss xmm2, dword [esi+0x88]
	movss xmm4, dword [ebp-0x48]
	movss xmm3, dword [edx+0x8]
	movss xmm5, dword [ebp-0x44]
	movaps xmm0, xmm6
	mulss xmm0, [esi+0x84]
	movss [ebp-0x1d4], xmm0
	movaps xmm0, xmm2
	mulss xmm0, xmm4
	addss xmm0, [ebp-0x1d4]
	movss [ebp-0x1d4], xmm0
	movaps xmm0, xmm3
	mulss xmm0, xmm5
	addss xmm0, [ebp-0x1d4]
	movss [ebp-0x1d4], xmm0
	movaps xmm1, xmm0
	xorps xmm1, [_data16_80000000]
	movaps xmm0, xmm6
	mulss xmm0, xmm1
	addss xmm0, [esi+0x84]
	movss [ebp-0xa0], xmm0
	movaps xmm0, xmm4
	mulss xmm0, xmm1
	addss xmm2, xmm0
	movss [ebp-0x9c], xmm2
	mulss xmm1, xmm5
	addss xmm3, xmm1
	movss [ebp-0x98], xmm3
	mulss xmm6, [ebp-0x1d4]
	movss [ebp-0x94], xmm6
	mulss xmm4, [ebp-0x1d4]
	movss [ebp-0x90], xmm4
	mulss xmm5, [ebp-0x1d4]
	movss [ebp-0x8c], xmm5
	mov eax, vehHelicopterDecelerationSide
	mov eax, [eax]
	mov edx, [eax+0xc]
	mov eax, vehHelicopterDecelerationFwd
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [ebp-0x2c], eax
	mov [ebp-0x28], edx
	mov dword [ebp-0x34], 0x0
	mov dword [ebp-0x30], 0x0
	mov dword [ebp-0x24], 0x0
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x174], 0x1
	lea edi, [ebp-0x24]
	lea eax, [ebp-0x30]
	mov [ebp-0x204], eax
	mov ebx, 0x4
_Z23VEH_UpdateClientChopperP9gentity_s_80:
	movss xmm0, dword [ebx+ebp-0xfc]
	movss [ebp-0x1f0], xmm0
	mulss xmm0, [ebx+ebp-0x30]
	movss [ebp-0x1ec], xmm0
	movss xmm1, dword [ebx+ebp-0xa4]
	movss [ebp-0x1e8], xmm1
	mov dword [esp+0xc], 0x3d4ccccd
	movss [esp+0x8], xmm0
	movss [esp+0x4], xmm1
	mov dword [esp], 0x0
	call _Z9DiffTrackffff
	fstp dword [ebp-0x26c]
	movss xmm1, dword [ebp-0x26c]
	subss xmm1, [ebp-0x1e8]
	divss xmm1, dword [_float_0_05000000]
	movss [ebx+edi-0x4], xmm1
	movss xmm2, dword [ebp-0x1dc]
	ucomiss xmm2, [ebp-0x1d4]
	jbe _Z23VEH_UpdateClientChopperP9gentity_s_70
	movss xmm3, dword [ebx+ebp-0x98]
	movss [ebp-0x170], xmm3
	mov dword [esp+0xc], 0x3d4ccccd
	movss xmm4, dword [ebp-0x1f0]
	movss [esp+0x8], xmm4
	movss [esp+0x4], xmm3
	mov eax, [ebx+ebp-0x44]
	mov [esp], eax
	call _Z9DiffTrackffff
	fstp dword [ebp-0x26c]
	movss xmm0, dword [ebp-0x26c]
	subss xmm0, [ebp-0x170]
	divss xmm0, dword [_float_0_05000000]
	addss xmm0, [ebx+ebp-0x38]
	movss [ebx+ebp-0x38], xmm0
	movss xmm5, dword [ebx+edi-0x4]
	movaps xmm6, xmm0
_Z23VEH_UpdateClientChopperP9gentity_s_340:
	movaps xmm4, xmm5
	addss xmm4, xmm6
	movss xmm2, dword [ebx+ebp-0x80]
	movaps xmm3, xmm2
	xorps xmm3, [_data16_80000000]
	movaps xmm0, xmm4
	subss xmm0, xmm2
	pxor xmm1, xmm1
	cmpss xmm1, xmm0, 0x6
	movaps xmm0, xmm4
	andps xmm0, xmm1
	andnps xmm1, xmm2
	orps xmm1, xmm0
	movaps xmm0, xmm3
	subss xmm0, xmm4
	pxor xmm4, xmm4
	cmpss xmm4, xmm0, 0x6
	movaps xmm0, xmm4
	andps xmm1, xmm4
	andnps xmm0, xmm3
	orps xmm0, xmm1
	movss [ebx+ebp-0xec], xmm0
	movaps xmm0, xmm5
	subss xmm0, xmm2
	pxor xmm1, xmm1
	cmpss xmm1, xmm0, 0x6
	movaps xmm0, xmm5
	andps xmm0, xmm1
	andnps xmm1, xmm2
	orps xmm1, xmm0
	movaps xmm0, xmm3
	subss xmm0, xmm5
	pxor xmm5, xmm5
	cmpss xmm5, xmm0, 0x6
	movaps xmm0, xmm5
	andps xmm1, xmm5
	andnps xmm0, xmm3
	orps xmm0, xmm1
	movss [ebx+edi-0x4], xmm0
	movaps xmm0, xmm6
	subss xmm0, xmm2
	pxor xmm1, xmm1
	cmpss xmm1, xmm0, 0x2
	andps xmm2, xmm1
	andnps xmm1, xmm6
	orps xmm1, xmm2
	movaps xmm0, xmm3
	subss xmm0, xmm6
	pxor xmm2, xmm2
	cmpss xmm2, xmm0, 0x2
	movaps xmm0, xmm2
	andps xmm3, xmm2
	andnps xmm0, xmm1
	orps xmm0, xmm3
	mov eax, [ebp-0x204]
	movss [eax-0x4], xmm0
	add dword [ebp-0x174], 0x1
	add ebx, 0x4
	add eax, 0x4
	mov [ebp-0x204], eax
	cmp dword [ebp-0x174], 0x3
	jnz _Z23VEH_UpdateClientChopperP9gentity_s_80
	mov dword [esp+0xc], 0x3d4ccccd
	mov eax, [ebp-0xf0]
	mov [esp+0x8], eax
	mov eax, [esi+0x8c]
	mov [esp+0x4], eax
	mov eax, [ebp-0x38]
	mov [esp], eax
	call _Z9DiffTrackffff
	fstp dword [ebp-0x26c]
	movss xmm0, dword [ebp-0x26c]
	subss xmm0, [esi+0x8c]
	divss xmm0, dword [_float_0_05000000]
	movss xmm2, dword [ebp-0x74]
	movaps xmm3, xmm2
	xorps xmm3, [_data16_80000000]
	movaps xmm1, xmm0
	subss xmm1, xmm2
	pxor xmm4, xmm4
	cmpss xmm4, xmm1, 0x2
	movaps xmm1, xmm4
	andps xmm2, xmm4
	andnps xmm1, xmm0
	orps xmm1, xmm2
	movaps xmm5, xmm3
	subss xmm5, xmm0
	pxor xmm2, xmm2
	cmpss xmm2, xmm5, 0x2
	movaps xmm0, xmm2
	andps xmm3, xmm2
	andnps xmm0, xmm1
	orps xmm0, xmm3
	movss [ebp-0xe0], xmm0
	mov eax, vehHelicopterMaxYawRate
	mov eax, [eax]
	movss xmm2, dword [eax+0xc]
	mov ebx, vehHelicopterMaxYawAccel
	mov eax, [ebx]
	movss xmm5, dword [eax+0xc]
	divss xmm5, xmm2
	movaps xmm4, xmm2
	mulss xmm4, [ebp-0xfc]
	movss xmm0, dword [ebp-0x108]
	mulss xmm0, [ebp-0x104]
	mov eax, vehHelicopterYawOnLeftStick
	mov eax, [eax]
	mulss xmm0, [eax+0xc]
	subss xmm4, xmm0
	movaps xmm3, xmm2
	xorps xmm3, [_data16_80000000]
	movaps xmm0, xmm4
	subss xmm0, xmm2
	pxor xmm1, xmm1
	cmpss xmm1, xmm0, 0x2
	andps xmm2, xmm1
	andnps xmm1, xmm4
	orps xmm1, xmm2
	movaps xmm0, xmm3
	subss xmm0, xmm4
	pxor xmm4, xmm4
	cmpss xmm4, xmm0, 0x2
	movaps xmm0, xmm4
	andps xmm3, xmm4
	andnps xmm0, xmm1
	orps xmm0, xmm3
	mov dword [esp+0xc], 0x3d4ccccd
	movss [esp+0x8], xmm5
	mov eax, [esi+0x94]
	mov [esp+0x4], eax
	movss [esp], xmm0
	call _Z9DiffTrackffff
	fstp dword [ebp-0x26c]
	movss xmm0, dword [ebp-0x26c]
	subss xmm0, [esi+0x94]
	divss xmm0, dword [_float_0_05000000]
	mov eax, [ebx]
	movss xmm1, dword [eax+0xc]
	movss xmm5, dword [_data16_80000000]
	xorps xmm5, xmm1
	movss [ebp-0x16c], xmm5
	movaps xmm2, xmm0
	subss xmm2, xmm1
	pxor xmm3, xmm3
	cmpss xmm3, xmm2, 0x2
	movaps xmm2, xmm3
	andps xmm1, xmm3
	andnps xmm2, xmm0
	orps xmm2, xmm1
	movaps xmm4, xmm5
	subss xmm4, xmm0
	pxor xmm5, xmm5
	cmpss xmm5, xmm4, 0x2
	movaps xmm0, xmm5
	movss xmm1, dword [ebp-0x16c]
	andps xmm1, xmm5
	andnps xmm0, xmm2
	orps xmm0, xmm1
	movss [ebp-0x16c], xmm0
	mov eax, vehHelicopterMaxAccel
	mov edi, [eax]
	mov eax, vehHelicopterMaxSpeed
	mov eax, [eax]
	mov ebx, 0x1
	movss xmm1, dword [_float_17_60000038]
_Z23VEH_UpdateClientChopperP9gentity_s_110:
	lea ecx, [ebx*4]
	lea edx, [ebp-0x70]
	add edx, ecx
	pxor xmm0, xmm0
	ucomiss xmm0, [edx-0x4]
	jae _Z23VEH_UpdateClientChopperP9gentity_s_90
	lea edx, [ebp-0x7c]
	add edx, ecx
	pxor xmm2, xmm2
	ucomiss xmm2, [edx-0x4]
	jae _Z23VEH_UpdateClientChopperP9gentity_s_100
_Z23VEH_UpdateClientChopperP9gentity_s_350:
	add ebx, 0x1
	cmp ebx, 0x3
	jnz _Z23VEH_UpdateClientChopperP9gentity_s_110
	mov dword [ebp-0xdc], 0x0
	mov eax, [esi+0x1c]
	mov [ebp-0xd8], eax
	mov dword [ebp-0xd4], 0x0
	lea edi, [ebp-0x138]
	lea eax, [ebp-0x120]
	mov [esp+0xc], eax
	lea eax, [ebp-0x12c]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	lea eax, [ebp-0xdc]
	mov [esp], eax
	call _Z12AngleVectorsPKfPfS1_S1_
	mov dword [ebp-0x114], 0x0
	mov dword [ebp-0x110], 0x0
	mov dword [ebp-0x10c], 0x0
	movss xmm4, dword [ebp-0x70]
	mov eax, vehHelicopterTiltFromVelocity
	mov ebx, [eax]
	movss xmm0, dword [esi+0x84]
	divss xmm0, xmm4
	mulss xmm0, [ebx+0xc]
	movss [ebp-0x88], xmm0
	mov eax, vehHelicopterTiltFromControllerAxes
	mov ecx, [eax]
	movss xmm1, dword [ebp-0x40]
	divss xmm1, xmm4
	mulss xmm1, [ecx+0xc]
	addss xmm1, xmm0
	movss [ebp-0x88], xmm1
	movss xmm3, dword [ebp-0x7c]
	mov eax, vehHelicopterTiltFromAcceleration
	mov edx, [eax]
	movss xmm0, dword [ebp-0x34]
	divss xmm0, xmm3
	mulss xmm0, [edx+0xc]
	addss xmm0, xmm1
	movss [ebp-0x88], xmm0
	mov eax, vehHelicopterTiltFromDeceleration
	mov eax, [eax]
	movss xmm2, dword [ebp-0x24]
	divss xmm2, xmm3
	mulss xmm2, [eax+0xc]
	addss xmm2, xmm0
	movss xmm6, dword [_float_1_00000000]
	movaps xmm0, xmm2
	subss xmm0, xmm6
	pxor xmm1, xmm1
	cmpss xmm1, xmm0, 0x6
	movaps xmm0, xmm2
	andps xmm0, xmm1
	andnps xmm1, xmm6
	orps xmm1, xmm0
	movss xmm7, dword [_float__1_00000000]
	movaps xmm0, xmm7
	subss xmm0, xmm2
	pxor xmm3, xmm3
	cmpss xmm3, xmm0, 0x6
	movaps xmm0, xmm3
	andps xmm1, xmm3
	andnps xmm0, xmm7
	orps xmm0, xmm1
	movss [ebp-0x88], xmm0
	movss xmm2, dword [ebp-0x6c]
	movss xmm0, dword [esi+0x88]
	divss xmm0, xmm2
	mulss xmm0, [ebx+0xc]
	movss [ebp-0x84], xmm0
	movss xmm1, dword [ebp-0x3c]
	divss xmm1, xmm2
	mulss xmm1, [ecx+0xc]
	addss xmm1, xmm0
	movss [ebp-0x84], xmm1
	movss xmm2, dword [ebp-0x78]
	movss xmm0, dword [ebp-0x30]
	divss xmm0, xmm2
	mulss xmm0, [edx+0xc]
	addss xmm0, xmm1
	movss [ebp-0x84], xmm0
	movss xmm1, dword [ebp-0x20]
	divss xmm1, xmm2
	mulss xmm1, [eax+0xc]
	addss xmm1, xmm0
	movss [ebp-0x84], xmm1
	movss xmm3, dword [esi+0x84]
	pxor xmm5, xmm5
	ucomiss xmm3, xmm5
	jbe _Z23VEH_UpdateClientChopperP9gentity_s_120
	movss xmm2, dword [esi+0x94]
	movaps xmm0, xmm2
	andps xmm0, [_data16_7fffffff]
	ucomiss xmm0, xmm5
	jbe _Z23VEH_UpdateClientChopperP9gentity_s_130
	divss xmm3, xmm4
	mov eax, vehHelicopterTiltFromFwdAndYaw_VelAtMaxTilt
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	ucomiss xmm0, xmm3
	ja _Z23VEH_UpdateClientChopperP9gentity_s_140
	movaps xmm0, xmm6
_Z23VEH_UpdateClientChopperP9gentity_s_480:
	xorps xmm2, [_data16_80000000]
	mov eax, vehHelicopterMaxYawRate
	mov eax, [eax]
	divss xmm2, dword [eax+0xc]
	mov eax, vehHelicopterTiltFromFwdAndYaw
	mov eax, [eax]
	mulss xmm0, [eax+0xc]
	mulss xmm2, xmm0
	addss xmm1, xmm2
	movss [ebp-0x84], xmm1
_Z23VEH_UpdateClientChopperP9gentity_s_120:
	movaps xmm0, xmm1
	subss xmm0, xmm6
	pxor xmm2, xmm2
	cmpss xmm2, xmm0, 0x6
	movaps xmm0, xmm2
	movaps xmm2, xmm1
	andps xmm2, xmm0
	andnps xmm0, xmm6
	orps xmm0, xmm2
	movaps xmm3, xmm7
	subss xmm3, xmm1
	movaps xmm1, xmm3
	pxor xmm3, xmm3
	cmpss xmm3, xmm1, 0x6
	andps xmm0, xmm3
	andnps xmm3, xmm7
	orps xmm3, xmm0
	movss [ebp-0x84], xmm3
	mov dword [ebp-0x80], 0x0
	movss xmm1, dword [ebp-0x88]
	lea ecx, [esi+0xe0]
	mov eax, vehHelicopterTiltMomentum
	mov eax, [eax]
	movss xmm5, dword [eax+0xc]
	mov eax, vehHelicopterTiltSpeed
	mov eax, [eax]
	movss xmm4, dword [eax+0xc]
	divss xmm4, xmm5
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x138]
	movaps xmm2, xmm3
	mulss xmm2, [ebp-0x12c]
	addss xmm0, xmm2
	pxor xmm2, xmm2
	mulss xmm2, [ebp-0x120]
	addss xmm0, xmm2
	subss xmm0, [esi+0xe0]
	mulss xmm0, xmm4
	mulss xmm1, [ebp-0x134]
	mulss xmm3, [ebp-0x128]
	addss xmm1, xmm3
	pxor xmm2, xmm2
	mulss xmm2, [ebp-0x11c]
	addss xmm1, xmm2
	subss xmm1, [esi+0xe4]
	mulss xmm1, xmm4
	movaps xmm4, xmm7
	divss xmm4, xmm5
	movaps xmm5, xmm4
	movss xmm4, dword [esi+0xf0]
	movss xmm3, dword [esi+0xec]
	movaps xmm2, xmm5
	mulss xmm2, xmm3
	addss xmm0, xmm2
	movss xmm2, dword [_float_0_05000000]
	mulss xmm0, xmm2
	addss xmm0, xmm3
	movss [esi+0xec], xmm0
	mulss xmm5, xmm4
	addss xmm1, xmm5
	mulss xmm1, xmm2
	addss xmm1, xmm4
	movss [esi+0xf0], xmm1
	addss xmm4, xmm1
	movss xmm0, dword [_float_0_50000000]
	mulss xmm4, xmm0
	addss xmm3, [esi+0xec]
	mulss xmm3, xmm0
	mulss xmm3, xmm2
	addss xmm3, [esi+0xe0]
	movss [esi+0xe0], xmm3
	mulss xmm4, xmm2
	addss xmm4, [esi+0xe4]
	movss [ecx+0x4], xmm4
	mov eax, esi
	xor edx, edx
_Z23VEH_UpdateClientChopperP9gentity_s_170:
	movss xmm0, dword [eax+0xe0]
	ucomiss xmm0, xmm6
	jbe _Z23VEH_UpdateClientChopperP9gentity_s_150
	mov dword [eax+0xe0], 0x3f800000
	movss xmm0, dword [eax+0xec]
	pxor xmm5, xmm5
	ucomiss xmm0, xmm5
	jbe _Z23VEH_UpdateClientChopperP9gentity_s_160
_Z23VEH_UpdateClientChopperP9gentity_s_360:
	mov dword [eax+0xec], 0x0
_Z23VEH_UpdateClientChopperP9gentity_s_160:
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x2
	jnz _Z23VEH_UpdateClientChopperP9gentity_s_170
	lea eax, [ebp-0x88]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov [esp], ecx
	call _Z32MatrixTransposeTransformVector43PKfPA3_S_Pf
	mov eax, vehHelicopterMaxPitch
	mov eax, [eax]
	movss xmm1, dword [ebp-0x88]
	movss [ebp-0x1c0], xmm1
	mulss xmm1, [eax+0xc]
	movss [ebp-0x1c0], xmm1
	mov eax, vehHelicopterMaxRoll
	mov eax, [eax]
	movss xmm2, dword [ebp-0x84]
	movss [ebp-0x1c4], xmm2
	mulss xmm2, [eax+0xc]
	movss [ebp-0x1c4], xmm2
	mov eax, [ebp-0x1f4]
	movss xmm1, dword [eax]
	mov edx, [ebp-0x1d8]
	movss xmm0, dword [edx]
	mulss xmm1, xmm1
	mulss xmm0, xmm0
	addss xmm1, xmm0
	mov eax, vehHelicopterHoverSpeedThreshold
	mov eax, [eax]
	movss xmm2, dword [eax+0xc]
	movaps xmm0, xmm2
	mulss xmm0, xmm2
	ucomiss xmm0, xmm1
	ja _Z23VEH_UpdateClientChopperP9gentity_s_180
_Z23VEH_UpdateClientChopperP9gentity_s_380:
	movss xmm0, dword [_float_0_05000000]
	movss xmm1, dword [ebp-0x16c]
	mulss xmm1, xmm0
	mov eax, [ebp-0x1f8]
	addss xmm1, [eax+0x94]
	movss [eax+0x94], xmm1
	mulss xmm0, xmm1
	addss xmm0, [eax+0x28]
	mulss xmm0, [_float_0_00277778]
	movaps xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	movss [ebp-0x218], xmm0
	call floorf
	fstp dword [ebp-0x200]
	movss xmm0, dword [ebp-0x218]
	subss xmm0, [ebp-0x200]
	mulss xmm0, [_float_360_00000000]
	mov edx, [ebp-0x1f8]
	movss [edx+0x1c], xmm0
	movss xmm0, dword [ebp-0x1c0]
	movss [edx+0x18], xmm0
	movss xmm1, dword [ebp-0x1c4]
	movss [edx+0x20], xmm1
	pxor xmm4, xmm4
	movss [ebp-0xb8], xmm4
	mov eax, [edx+0x1c]
	mov [ebp-0xb4], eax
	movss [ebp-0xb0], xmm4
	lea eax, [ebp-0x150]
	mov [esp+0xc], eax
	lea eax, [ebp-0x15c]
	mov [esp+0x8], eax
	lea eax, [ebp-0x168]
	mov [esp+0x4], eax
	lea eax, [ebp-0xb8]
	mov [esp], eax
	movss [ebp-0x238], xmm4
	call _Z12AngleVectorsPKfPfS1_S1_
	movss xmm4, dword [ebp-0x238]
	movss [ebp-0x144], xmm4
	movss [ebp-0x140], xmm4
	movss [ebp-0x13c], xmm4
	movss xmm3, dword [ebp-0xe8]
	movss xmm1, dword [ebp-0xe4]
	movss xmm2, dword [ebp-0xe0]
	movaps xmm7, xmm3
	mulss xmm7, [ebp-0x168]
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x15c]
	addss xmm7, xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x150]
	addss xmm7, xmm0
	movaps xmm6, xmm3
	mulss xmm6, [ebp-0x164]
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x158]
	addss xmm6, xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x14c]
	addss xmm6, xmm0
	movaps xmm5, xmm3
	mulss xmm5, [ebp-0x160]
	mulss xmm1, [ebp-0x154]
	addss xmm5, xmm1
	mulss xmm2, [ebp-0x148]
	addss xmm5, xmm2
	mov eax, vehHelicopterSoftCollisions
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z23VEH_UpdateClientChopperP9gentity_s_190
	mov edx, [ebp+0x8]
	mov edi, [edx+0x164]
	add edi, 0xc0
	ucomiss xmm4, [edi+0x78]
	jnz _Z23VEH_UpdateClientChopperP9gentity_s_200
	jp _Z23VEH_UpdateClientChopperP9gentity_s_200
	ucomiss xmm4, [edi+0x7c]
	jz _Z23VEH_UpdateClientChopperP9gentity_s_210
_Z23VEH_UpdateClientChopperP9gentity_s_200:
	movss xmm0, dword [edi+0x78]
	movss [ebp-0x1b4], xmm0
	movss xmm1, dword [edi+0x7c]
	movss [ebp-0x1b8], xmm1
	movss xmm2, dword [edi+0x80]
	movss [ebp-0x1bc], xmm2
	mov edx, vehHelicopterLookaheadTime
	mov eax, [edx]
	movss xmm0, dword [eax+0xc]
	movss xmm1, dword [_float_0_05000000]
	divss xmm0, xmm1
	movaps xmm2, xmm0
	mulss xmm2, [edi+0x78]
	movss [edi+0x78], xmm2
	movaps xmm3, xmm0
	mulss xmm3, [edi+0x7c]
	movss [edi+0x7c], xmm3
	mulss xmm0, [edi+0x80]
	movss [edi+0x80], xmm0
	mulss xmm2, xmm1
	movss [ebp-0x1ac], xmm2
	addss xmm2, [edi]
	movss [ebp-0x1ac], xmm2
	mulss xmm3, xmm1
	movss [ebp-0x1b0], xmm3
	addss xmm3, [edi+0x4]
	movss [ebp-0x1b0], xmm3
	mulss xmm1, xmm0
	addss xmm1, [edi+0x8]
	mov ecx, [ebp+0x8]
	mov ebx, [ecx+0x164]
	lea eax, [ebx+0xc0]
	mov [ebp-0x1c8], eax
	movss xmm0, dword [ebx+0xc0]
	movss [ebp-0x19c], xmm0
	movss xmm2, dword [ebx+0xc4]
	movss [ebp-0x1a0], xmm2
	movss xmm3, dword [ebx+0xc8]
	movss [ebp-0x1a4], xmm3
	lea esi, [ebx+0x138]
	movss xmm4, dword [ebx+0x138]
	movss [ebp-0x190], xmm4
	movss xmm0, dword [esi+0x4]
	movss [ebp-0x194], xmm0
	movss xmm2, dword [esi+0x8]
	movss [ebp-0x198], xmm2
	mov dword [esp+0x4], 0x0
	mov [esp], ecx
	movss [ebp-0x228], xmm1
	movss [ebp-0x248], xmm5
	movss [ebp-0x258], xmm6
	movss [ebp-0x268], xmm7
	call _Z13VEH_SlideMoveP9gentity_si
	movss xmm2, dword [ebx+0xc0]
	movss xmm3, dword [ebx+0xc4]
	movss xmm4, dword [ebx+0xc8]
	movss [ebp-0x1a8], xmm4
	movss xmm0, dword [ebp-0x19c]
	movss [ebx+0xc0], xmm0
	movss xmm0, dword [ebp-0x1a0]
	mov edx, [ebp-0x1c8]
	movss [edx+0x4], xmm0
	movss xmm4, dword [ebp-0x1a4]
	movss [edx+0x8], xmm4
	movss xmm0, dword [ebp-0x190]
	movss [ebx+0x138], xmm0
	movss xmm4, dword [ebp-0x194]
	movss [esi+0x4], xmm4
	movss xmm0, dword [ebp-0x198]
	movss [esi+0x8], xmm0
	movss xmm4, dword [ebp-0x1b4]
	movss [edi+0x78], xmm4
	movss xmm0, dword [ebp-0x1b8]
	movss [edi+0x7c], xmm0
	movss xmm4, dword [ebp-0x1bc]
	movss [edi+0x80], xmm4
	test eax, eax
	movss xmm1, dword [ebp-0x228]
	movss xmm5, dword [ebp-0x248]
	movss xmm6, dword [ebp-0x258]
	movss xmm7, dword [ebp-0x268]
	jz _Z23VEH_UpdateClientChopperP9gentity_s_190
	movss xmm0, dword [ebp-0x1ac]
	subss xmm0, xmm2
	movss [ebp-0x184], xmm0
	movss xmm4, dword [ebp-0x1b0]
	subss xmm4, xmm3
	movss [ebp-0x188], xmm4
	subss xmm1, [ebp-0x1a8]
	movss [ebp-0x18c], xmm1
	movaps xmm1, xmm0
	mulss xmm1, xmm0
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0x18c]
	mulss xmm0, xmm0
	addss xmm1, xmm0
	ucomiss xmm1, [_float_1_00000000]
	jp _Z23VEH_UpdateClientChopperP9gentity_s_220
	jb _Z23VEH_UpdateClientChopperP9gentity_s_190
_Z23VEH_UpdateClientChopperP9gentity_s_220:
	movaps xmm0, xmm4
	movss xmm4, dword [ebp-0x184]
	mulss xmm4, xmm7
	mulss xmm0, xmm6
	addss xmm4, xmm0
	movss xmm0, dword [ebp-0x18c]
	mulss xmm0, xmm5
	addss xmm4, xmm0
	divss xmm4, xmm1
	ucomiss xmm4, [_float_0_00000000]
	jbe _Z23VEH_UpdateClientChopperP9gentity_s_230
	movaps xmm0, xmm4
	xorps xmm0, [_data16_80000000]
	movss xmm1, dword [ebp-0x184]
	mulss xmm1, xmm0
	addss xmm7, xmm1
	movss xmm4, dword [ebp-0x188]
	mulss xmm4, xmm0
	addss xmm6, xmm4
	mulss xmm0, [ebp-0x18c]
	addss xmm5, xmm0
_Z23VEH_UpdateClientChopperP9gentity_s_230:
	subss xmm2, [edi]
	subss xmm3, [edi+0x4]
	movss xmm0, dword [ebp-0x1a8]
	subss xmm0, [edi+0x8]
	movss [ebp-0x1a8], xmm0
	mov edx, vehHelicopterLookaheadTime
	mov eax, [edx]
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, dword [eax+0xc]
	mulss xmm2, xmm0
	subss xmm2, [edi+0x78]
	movss xmm1, dword [_float_20_00000000]
	mulss xmm2, xmm1
	addss xmm7, xmm2
	mulss xmm3, xmm0
	subss xmm3, [edi+0x7c]
	mulss xmm3, xmm1
	addss xmm6, xmm3
	mulss xmm0, [ebp-0x1a8]
	movss [ebp-0x1a8], xmm0
	subss xmm0, [edi+0x80]
	mulss xmm1, xmm0
	addss xmm5, xmm1
_Z23VEH_UpdateClientChopperP9gentity_s_190:
	mov ebx, [ebp-0x1f8]
	add ebx, 0x78
	movss xmm0, dword [_float_0_05000000]
	mulss xmm7, xmm0
	mov ecx, [ebp-0x1f8]
	addss xmm7, [ecx+0x78]
	movss [ecx+0x78], xmm7
	mov edi, ecx
	add edi, 0x7c
	mulss xmm6, xmm0
	addss xmm6, [ecx+0x7c]
	movss [ebx+0x4], xmm6
	mov esi, ecx
	sub esi, 0xffffff80
	mulss xmm5, xmm0
	addss xmm5, [ecx+0x80]
	movss [ebx+0x8], xmm5
	mov eax, vec3_origin
	movss xmm0, dword [ecx+0x78]
	ucomiss xmm0, [eax]
	jnz _Z23VEH_UpdateClientChopperP9gentity_s_240
	jp _Z23VEH_UpdateClientChopperP9gentity_s_240
	movss xmm0, dword [ecx+0x7c]
	ucomiss xmm0, [eax+0x4]
	jnz _Z23VEH_UpdateClientChopperP9gentity_s_240
	jp _Z23VEH_UpdateClientChopperP9gentity_s_240
	movss xmm0, dword [ecx+0x80]
	ucomiss xmm0, [eax+0x8]
	jz _Z23VEH_UpdateClientChopperP9gentity_s_250
_Z23VEH_UpdateClientChopperP9gentity_s_240:
	mov eax, [ebx]
	mov [ebp-0xc4], eax
	mov eax, [edi]
	mov [ebp-0xc0], eax
	mov eax, [esi]
	mov [ebp-0xbc], eax
	mov edx, [ebp-0x1f8]
	movss xmm0, dword [edx]
	movss [ebp-0x178], xmm0
	movss xmm1, dword [edx+0x4]
	movss [ebp-0x17c], xmm1
	movss xmm2, dword [edx+0x8]
	movss [ebp-0x180], xmm2
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z15VEH_ClearGroundP9gentity_s
	mov dword [esp+0x4], 0x0
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z13VEH_SlideMoveP9gentity_si
	test eax, eax
	jnz _Z23VEH_UpdateClientChopperP9gentity_s_260
_Z23VEH_UpdateClientChopperP9gentity_s_460:
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z26VEH_CheckForPredictedCrashP9gentity_s
	mov eax, [ebp-0x1f8]
	add eax, 0x84
	mov [esp+0x8], eax
	lea ecx, [ebp-0x168]
	mov [esp+0x4], ecx
	mov [esp], ebx
	call _Z32MatrixTransposeTransformVector43PKfPA3_S_Pf
	movss xmm0, dword [ebx]
	movss xmm1, dword [edi]
	movss xmm2, dword [esi]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	mov eax, [ebp-0x1fc]
	movss [eax+0x25c], xmm0
	cmp byte [ebp-0x1a], 0x0
	jle _Z23VEH_UpdateClientChopperP9gentity_s_270
	mov esi, 0x3d4ccccd
	mov [esp+0xc], esi
	mov ebx, 0x40800000
	mov [esp+0x8], ebx
	mov edx, [ebp-0x1fc]
	mov eax, [edx+0x2e4]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z9DiffTrackffff
	mov ecx, [ebp-0x1fc]
	fstp dword [ecx+0x2e4]
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov eax, [ecx+0x2e8]
	mov [esp+0x4], eax
	mov dword [esp], 0x3f800000
	call _Z9DiffTrackffff
	mov eax, [ebp-0x1fc]
	fstp dword [eax+0x2e8]
	add esp, 0x27c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23VEH_UpdateClientChopperP9gentity_s_30:
	movsx ebx, al
	movsx edx, byte [ebp-0x1b]
	mov eax, ebx
	imul eax, ebx
	mov ecx, edx
	imul ecx, edx
	add eax, ecx
	cvtsi2ss xmm0, eax
	sqrtss xmm1, xmm0
	mov ecx, ebx
	mov eax, ebx
	neg eax
	cmp ebx, 0xffffffff
	cmovle ecx, eax
	mov eax, edx
	neg eax
	cmp edx, 0xffffffff
	cmovle edx, eax
	cmp ecx, edx
	cmovl ecx, edx
	test ecx, ecx
	jnz _Z23VEH_UpdateClientChopperP9gentity_s_280
	movss xmm1, dword [ebp-0x104]
_Z23VEH_UpdateClientChopperP9gentity_s_320:
	movss xmm4, dword [_data16_7fffffff]
	movaps xmm0, xmm1
	andps xmm0, xmm4
	mov eax, vehHelicopterStrafeDeadzone
	mov eax, [eax]
	cmpss xmm0, [eax+0xc], 0x5
	movaps xmm2, xmm1
	andps xmm2, xmm0
	pxor xmm0, xmm0
	orps xmm2, xmm0
	movss [ebp-0x104], xmm2
	mov eax, vehHelicopterScaleMovement
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z23VEH_UpdateClientChopperP9gentity_s_290
	movss xmm5, dword [ebp-0x108]
	movaps xmm3, xmm5
	andps xmm3, xmm4
	movaps xmm0, xmm2
	andps xmm0, xmm4
	ucomiss xmm3, xmm0
	ja _Z23VEH_UpdateClientChopperP9gentity_s_300
	movaps xmm1, xmm0
	subss xmm1, xmm3
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, xmm1
	mulss xmm5, xmm0
	movss [ebp-0x108], xmm5
	pxor xmm2, xmm2
	jmp _Z23VEH_UpdateClientChopperP9gentity_s_310
_Z23VEH_UpdateClientChopperP9gentity_s_280:
	cvtsi2ss xmm0, ecx
	divss xmm0, xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x108]
	movss [ebp-0x108], xmm1
	mulss xmm0, [ebp-0x104]
	movss [ebp-0x104], xmm0
	movaps xmm1, xmm0
	jmp _Z23VEH_UpdateClientChopperP9gentity_s_320
_Z23VEH_UpdateClientChopperP9gentity_s_50:
	mov dword [eax+ebp-0xfc], 0x3f800000
	jmp _Z23VEH_UpdateClientChopperP9gentity_s_330
_Z23VEH_UpdateClientChopperP9gentity_s_70:
	movss xmm5, dword [ebx+ebp-0x98]
	movss [ebp-0x1e4], xmm5
	mov dword [esp+0xc], 0x3d4ccccd
	movss xmm0, dword [ebp-0x1ec]
	movss [esp+0x8], xmm0
	movss [esp+0x4], xmm5
	mov eax, [ebx+ebp-0x44]
	mov [esp], eax
	movss [ebp-0x228], xmm1
	call _Z9DiffTrackffff
	fstp dword [ebp-0x26c]
	movss xmm0, dword [ebp-0x26c]
	subss xmm0, [ebp-0x1e4]
	divss xmm0, dword [_float_0_05000000]
	movss xmm1, dword [ebp-0x228]
	addss xmm0, xmm1
	movss [ebx+edi-0x4], xmm0
	movaps xmm5, xmm0
	movss xmm6, dword [ebx+ebp-0x38]
	jmp _Z23VEH_UpdateClientChopperP9gentity_s_340
_Z23VEH_UpdateClientChopperP9gentity_s_90:
	movss xmm0, dword [eax+0xc]
	mulss xmm0, xmm1
	movss [edx-0x4], xmm0
	lea edx, [ebp-0x7c]
	add edx, ecx
	pxor xmm2, xmm2
	ucomiss xmm2, [edx-0x4]
	jb _Z23VEH_UpdateClientChopperP9gentity_s_350
_Z23VEH_UpdateClientChopperP9gentity_s_100:
	movss xmm0, dword [edi+0xc]
	mulss xmm0, xmm1
	movss [edx-0x4], xmm0
	jmp _Z23VEH_UpdateClientChopperP9gentity_s_350
_Z23VEH_UpdateClientChopperP9gentity_s_150:
	ucomiss xmm7, xmm0
	jbe _Z23VEH_UpdateClientChopperP9gentity_s_160
	mov dword [eax+0xe0], 0xbf800000
	pxor xmm0, xmm0
	ucomiss xmm0, [eax+0xec]
	jbe _Z23VEH_UpdateClientChopperP9gentity_s_160
	jmp _Z23VEH_UpdateClientChopperP9gentity_s_360
_Z23VEH_UpdateClientChopperP9gentity_s_290:
	movaps xmm2, xmm0
	jmp _Z23VEH_UpdateClientChopperP9gentity_s_310
_Z23VEH_UpdateClientChopperP9gentity_s_180:
	sqrtss xmm0, xmm1
	movaps xmm1, xmm2
	subss xmm1, xmm0
	divss xmm1, xmm2
	movss [ebp-0x1d0], xmm1
	mov ebx, [ebp-0x1e0]
	add ebx, 0x1e8
	mov eax, [ebp-0x1e0]
	mov edx, [eax+0x1e8]
	test edx, edx
	jnz _Z23VEH_UpdateClientChopperP9gentity_s_370
	mov eax, [ebx+0x4]
	test eax, eax
	jnz _Z23VEH_UpdateClientChopperP9gentity_s_370
_Z23VEH_UpdateClientChopperP9gentity_s_440:
	movss xmm0, dword [ebp-0x1d0]
	mov eax, [ebp-0x1e0]
	mulss xmm0, [eax+0x218]
	addss xmm0, [ebp-0x1c0]
	movss [ebp-0x1c0], xmm0
	movss xmm0, dword [ebp-0x1d0]
	mulss xmm0, [eax+0x220]
	movss xmm1, dword [ebp-0x1c4]
	addss xmm1, xmm0
	movss [ebp-0x1c4], xmm1
	jmp _Z23VEH_UpdateClientChopperP9gentity_s_380
_Z23VEH_UpdateClientChopperP9gentity_s_370:
	mov esi, level
	mov eax, [esi+0x1ec]
	cmp eax, [ebx+0x8]
	jle _Z23VEH_UpdateClientChopperP9gentity_s_390
	cvtsi2ss xmm0, edx
	ucomiss xmm0, [_float_0_05000000]
	jae _Z23VEH_UpdateClientChopperP9gentity_s_400
	jp _Z23VEH_UpdateClientChopperP9gentity_s_400
	mov edx, [ebp-0x1e0]
	mov dword [edx+0x1e8], 0x32
_Z23VEH_UpdateClientChopperP9gentity_s_400:
	mov eax, [ebx+0x4]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x1e0]
	mov eax, [ecx+0x1e8]
	mov [esp], eax
	call _Z7G_irandii
	mov [ebp-0x1cc], eax
	add eax, [esi+0x1ec]
	mov [ebx+0x8], eax
	mov esi, ebx
	xor edi, edi
_Z23VEH_UpdateClientChopperP9gentity_s_420:
	movss xmm0, dword [esi+0xc]
	ucomiss xmm0, [_float_0_00000000]
	jp _Z23VEH_UpdateClientChopperP9gentity_s_410
	jnz _Z23VEH_UpdateClientChopperP9gentity_s_410
_Z23VEH_UpdateClientChopperP9gentity_s_500:
	add edi, 0x1
	add esi, 0x4
	cmp edi, 0x3
	jnz _Z23VEH_UpdateClientChopperP9gentity_s_420
	lea edx, [ebx+0x18]
	lea eax, [ebx+0x24]
	movss xmm0, dword [ebp-0xac]
	subss xmm0, [ebx+0x24]
	movss [ebx+0x18], xmm0
	movss xmm0, dword [ebp-0xa8]
	subss xmm0, [eax+0x4]
	movss [ebx+0x1c], xmm0
	movss xmm0, dword [ebp-0xa4]
	subss xmm0, [eax+0x8]
	movss [ebx+0x20], xmm0
	cvtsi2ss xmm1, dword [ebp-0x1cc]
	movss xmm0, dword [_float_50_00000000]
	divss xmm0, xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebx+0x18]
	movss [ebx+0x18], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [edx+0x4]
	movss [ebx+0x1c], xmm1
	mulss xmm0, [edx+0x8]
	movss [ebx+0x20], xmm0
_Z23VEH_UpdateClientChopperP9gentity_s_490:
	movss xmm0, dword [ebx+0x24]
	addss xmm0, [ebx+0x18]
	movss [ebx+0x24], xmm0
	movss xmm0, dword [eax+0x4]
	addss xmm0, [edx+0x4]
	movss [eax+0x4], xmm0
	movss xmm0, dword [eax+0x8]
	addss xmm0, [edx+0x8]
	movss [eax+0x8], xmm0
	xor esi, esi
	mov edi, vehHelicopterJitterJerkyness
_Z23VEH_UpdateClientChopperP9gentity_s_430:
	mov dword [esp+0xc], 0x3d4ccccd
	mov eax, [edi]
	mov eax, [eax+0xc]
	mov [esp+0x8], eax
	mov eax, [ebx+0x30]
	mov [esp+0x4], eax
	mov eax, [ebx+0x24]
	mov [esp], eax
	call _Z9DiffTrackffff
	fstp dword [ebx+0x30]
	add esi, 0x1
	add ebx, 0x4
	cmp esi, 0x3
	jnz _Z23VEH_UpdateClientChopperP9gentity_s_430
	jmp _Z23VEH_UpdateClientChopperP9gentity_s_440
_Z23VEH_UpdateClientChopperP9gentity_s_260:
	movss xmm0, dword [_float_0_05000000]
	movss xmm1, dword [ebp-0xc4]
	mulss xmm1, xmm0
	addss xmm1, [ebp-0x178]
	movss [ebp-0xd0], xmm1
	movss xmm1, dword [ebp-0xc0]
	mulss xmm1, xmm0
	addss xmm1, [ebp-0x17c]
	movss [ebp-0xcc], xmm1
	mulss xmm0, [ebp-0xbc]
	addss xmm0, [ebp-0x180]
	movss [ebp-0xc8], xmm0
	mov eax, [ebp-0x1f8]
	movss xmm3, dword [eax]
	subss xmm3, [ebp-0xd0]
	movss [ebp-0xd0], xmm3
	movss xmm1, dword [eax+0x4]
	subss xmm1, [ebp-0xcc]
	movss [ebp-0xcc], xmm1
	movss xmm0, dword [eax+0x8]
	subss xmm0, [ebp-0xc8]
	movss [ebp-0xc8], xmm0
	movaps xmm2, xmm3
	mulss xmm2, xmm3
	mulss xmm1, xmm1
	addss xmm2, xmm1
	mulss xmm0, xmm0
	addss xmm2, xmm0
	sqrtss xmm2, xmm2
	movaps xmm0, xmm2
	xorps xmm0, [_data16_80000000]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jb _Z23VEH_UpdateClientChopperP9gentity_s_450
	movss xmm1, dword [_float_1_00000000]
_Z23VEH_UpdateClientChopperP9gentity_s_510:
	mulss xmm3, xmm1
	movss [ebp-0xd0], xmm3
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0xcc]
	movss [ebp-0xcc], xmm0
	mulss xmm1, [ebp-0xc8]
	movss [ebp-0xc8], xmm1
	pxor xmm3, xmm3
	ucomiss xmm2, xmm3
	jbe _Z23VEH_UpdateClientChopperP9gentity_s_460
	lea eax, [ebp-0xd0]
	mov [esp], eax
	call _Z13Scr_AddVectorPKf
	lea eax, [ebp-0xc4]
	mov [esp], eax
	call _Z13Scr_AddVectorPKf
	mov dword [esp+0x8], 0x2
	mov eax, scr_const
	movzx eax, word [eax+0x11a]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z10Scr_NotifyP9gentity_stj
	jmp _Z23VEH_UpdateClientChopperP9gentity_s_460
_Z23VEH_UpdateClientChopperP9gentity_s_130:
	movss xmm1, dword [ebp-0x84]
	jmp _Z23VEH_UpdateClientChopperP9gentity_s_120
_Z23VEH_UpdateClientChopperP9gentity_s_270:
	mov esi, 0x3d4ccccd
	mov [esp+0xc], esi
	mov ebx, 0x40800000
	mov [esp+0x8], ebx
	mov edx, [ebp-0x1fc]
	mov eax, [edx+0x2e4]
	mov [esp+0x4], eax
	mov dword [esp], 0x3f800000
	call _Z9DiffTrackffff
	mov ecx, [ebp-0x1fc]
	fstp dword [ecx+0x2e4]
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov eax, [ecx+0x2e8]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z9DiffTrackffff
	mov eax, [ebp-0x1fc]
	fstp dword [eax+0x2e8]
	add esp, 0x27c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23VEH_UpdateClientChopperP9gentity_s_10:
	mov eax, vehHelicopterMaxSpeedVertical
	mov eax, [eax]
	movss xmm0, dword [_float_17_60000038]
	movss xmm2, dword [eax+0xc]
	mulss xmm2, xmm0
	mov eax, vehHelicopterMaxSpeed
	mov eax, [eax]
	movss xmm1, dword [eax+0xc]
	mulss xmm1, xmm0
	movss [ebp-0x70], xmm1
	movss [ebp-0x6c], xmm1
	movss [ebp-0x68], xmm2
	mov eax, vehHelicopterMaxAccelVertical
	mov eax, [eax]
	movss xmm1, dword [eax+0xc]
	mulss xmm1, xmm0
	mov eax, vehHelicopterMaxAccel
	mov eax, [eax]
	mulss xmm0, [eax+0xc]
	movss [ebp-0x7c], xmm0
	movss [ebp-0x78], xmm0
	movss [ebp-0x74], xmm1
	jmp _Z23VEH_UpdateClientChopperP9gentity_s_470
_Z23VEH_UpdateClientChopperP9gentity_s_210:
	jp _Z23VEH_UpdateClientChopperP9gentity_s_200
	ucomiss xmm4, [edi+0x80]
	jp _Z23VEH_UpdateClientChopperP9gentity_s_200
	jz _Z23VEH_UpdateClientChopperP9gentity_s_190
	jmp _Z23VEH_UpdateClientChopperP9gentity_s_200
_Z23VEH_UpdateClientChopperP9gentity_s_300:
	movaps xmm1, xmm3
	subss xmm1, xmm0
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	movss [ebp-0x104], xmm2
	pxor xmm2, xmm2
	jmp _Z23VEH_UpdateClientChopperP9gentity_s_310
_Z23VEH_UpdateClientChopperP9gentity_s_250:
	jnp _Z23VEH_UpdateClientChopperP9gentity_s_460
	jmp _Z23VEH_UpdateClientChopperP9gentity_s_240
_Z23VEH_UpdateClientChopperP9gentity_s_140:
	divss xmm3, xmm0
	movaps xmm0, xmm3
	jmp _Z23VEH_UpdateClientChopperP9gentity_s_480
_Z23VEH_UpdateClientChopperP9gentity_s_390:
	mov eax, [ebp-0x1e0]
	lea edx, [eax+0x200]
	lea eax, [eax+0x20c]
	jmp _Z23VEH_UpdateClientChopperP9gentity_s_490
_Z23VEH_UpdateClientChopperP9gentity_s_410:
	movss [esp+0x4], xmm0
	xorps xmm0, [_data16_80000000]
	movss [esp], xmm0
	call _Z8G_flrandff
	fstp dword [ebp+edi*4-0xac]
	jmp _Z23VEH_UpdateClientChopperP9gentity_s_500
_Z23VEH_UpdateClientChopperP9gentity_s_450:
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm2
	jmp _Z23VEH_UpdateClientChopperP9gentity_s_510
	add [eax], al


;VEH_CheckForPredictedCrash(gentity_s*)
_Z26VEH_CheckForPredictedCrashP9gentity_s:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x60
	mov esi, [ebp+0x8]
	mov edx, [esi+0x164]
	add edx, 0xc0
	mov eax, vehHelicopterLookaheadTime
	mov eax, [eax]
	movss xmm1, dword [eax+0xc]
	pxor xmm0, xmm0
	ucomiss xmm1, xmm0
	jp _Z26VEH_CheckForPredictedCrashP9gentity_s_10
	jz _Z26VEH_CheckForPredictedCrashP9gentity_s_20
_Z26VEH_CheckForPredictedCrashP9gentity_s_10:
	ucomiss xmm0, [edx+0x78]
	jnz _Z26VEH_CheckForPredictedCrashP9gentity_s_30
	jp _Z26VEH_CheckForPredictedCrashP9gentity_s_30
	ucomiss xmm0, [edx+0x7c]
	jnz _Z26VEH_CheckForPredictedCrashP9gentity_s_30
	jp _Z26VEH_CheckForPredictedCrashP9gentity_s_30
	ucomiss xmm0, [edx+0x80]
	jp _Z26VEH_CheckForPredictedCrashP9gentity_s_30
	jz _Z26VEH_CheckForPredictedCrashP9gentity_s_20
_Z26VEH_CheckForPredictedCrashP9gentity_s_30:
	lea ebx, [edx+0x78]
	movaps xmm0, xmm1
	mulss xmm0, [edx+0x78]
	addss xmm0, [edx]
	movss [ebp-0x14], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebx+0x4]
	addss xmm0, [edx+0x4]
	movss [ebp-0x10], xmm0
	mulss xmm1, [ebx+0x8]
	addss xmm1, [edx+0x8]
	movss [ebp-0xc], xmm1
	mov eax, [esi+0x190]
	mov [esp+0x18], eax
	mov eax, [esi]
	mov [esp+0x14], eax
	lea eax, [ebp-0x14]
	mov [esp+0x10], eax
	lea eax, [edx+0x6c]
	mov [esp+0xc], eax
	lea eax, [edx+0x60]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	lea eax, [ebp-0x40]
	mov [esp], eax
	call _Z14G_TraceCapsuleP7trace_tPKfS2_S2_S2_ii
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0x40]
	ja _Z26VEH_CheckForPredictedCrashP9gentity_s_40
_Z26VEH_CheckForPredictedCrashP9gentity_s_20:
	add esp, 0x60
	pop ebx
	pop esi
	pop ebp
	ret
_Z26VEH_CheckForPredictedCrashP9gentity_s_40:
	lea eax, [ebp-0x3c]
	mov [esp], eax
	call _Z13Scr_AddVectorPKf
	mov [esp], ebx
	call _Z13Scr_AddVectorPKf
	mov dword [esp+0x8], 0x2
	mov eax, scr_const
	movzx eax, word [eax+0x11c]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z10Scr_NotifyP9gentity_stj
	add esp, 0x60
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;Initialized global or static variables of g_helicopter:
SECTION .data


;Initialized constant data of g_helicopter:
SECTION .rdata


;Zero initialized global or static variables of g_helicopter:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_float_127_00000000:		dd 0x42fe0000	; 127
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; OWORD
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_0_05000000:		dd 0x3d4ccccd	; 0.05
_float_17_60000038:		dd 0x418ccccd	; 17.6
_float_1_00000000:		dd 0x3f800000	; 1
_float__1_00000000:		dd 0xbf800000	; -1
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_0_00277778:		dd 0x3b360b61	; 0.00277778
_float_360_00000000:		dd 0x43b40000	; 360
_float_0_00000000:		dd 0x0	; 0
_float_20_00000000:		dd 0x41a00000	; 20
_float_50_00000000:		dd 0x42480000	; 50

