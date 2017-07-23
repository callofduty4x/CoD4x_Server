;Imports of ragdoll_update:
	extern Phys_JointDestroy
	extern memset
	extern Phys_ObjDestroy
	extern Ragdoll_BodyDef
	extern Ragdoll_BodyDObj
	extern DObjGetBoneIndex
	extern Com_PrintWarning
	extern Ragdoll_BodyBoneOrientations
	extern Ragdoll_QuatMul
	extern Phys_ObjSetOrientation
	extern vec3_origin
	extern QuatToAxis
	extern CM_BoxTrace
	extern Ragdoll_BodyPose
	extern Phys_ObjSetContactCentroid
	extern Ragdoll_BodyPrevBoneOrientations
	extern Ragdoll_QuatNormalize
	extern Ragdoll_QuatMulInvSecond
	extern Ragdoll_QuatToAxisAngle
	extern Ragdoll_QuatPointRotate
	extern ragdoll_rotvel_scale
	extern Phys_ObjSetAngularVelocityRaw
	extern Phys_ObjSetVelocity
	extern Ragdoll_CountPhysicsBodies
	extern ragdoll_max_simulating
	extern ragdoll_max_life
	extern Phys_ObjIsAsleep
	extern ragdoll_jointlerp_time
	extern Phys_SetHingeParams
	extern Phys_SetAngularMotorParams
	extern Phys_ObjGetCenterOfMass
	extern Phys_ObjGetPosition
	extern AxisTranspose
	extern AnglesToAxis
	extern DObjGetBasePoseMatrix
	extern Ragdoll_Mat33ToQuat
	extern Vec3Rotate
	extern Phys_ObjCreate
	extern Phys_CreateBallAndSocket
	extern Phys_CreateAngularMotor
	extern Phys_CreateHinge
	extern Phys_ObjAddGeomCylinderDirection
	extern Phys_ObjAddGeomCapsule
	extern Phys_ObjAddGeomBox
	extern MatrixMultiply43
	extern AxisToQuat
	extern CG_DObjCalcBone
	extern DObjGetRotTransArray
	extern Ragdoll_QuatLerp
	extern Phys_ObjGetInterpolatedState
	extern cgArray
	extern ragdollInited
	extern ragdoll_enable
	extern cg_paused
	extern ragdollBodies
	extern Phys_SetCollisionCallback
	extern Phys_RunToTime
	extern CL_GetFirstActiveLocalClient
	extern flrand
	extern ragdoll_explode_upbias
	extern ragdoll_explode_force
	extern Phys_ObjAddForce
	extern ragdoll_self_collision_scale
	extern Vec3NormalizeTo
	extern Phys_AddCollisionContact

;Exports of ragdoll_update:
	global stateEntries
	global Ragdoll_EnterDead
	global Ragdoll_ExitDead
	global Ragdoll_ExitDObjWait
	global Ragdoll_UpdateDObjWait
	global Ragdoll_UpdateVelocityCapture
	global Ragdoll_EnterTunnelTest
	global Ragdoll_EnterRunning
	global Ragdoll_UpdateRunning
	global Ragdoll_EnterIdle
	global Ragdoll_ExitIdle
	global quatZRot
	global Ragdoll_ValidateBodyObj
	global Ragdoll_BodyCenterOfMass
	global Ragdoll_CreateBodyPhysics
	global Ragdoll_SnapshotBaseLerpOffsets
	global Ragdoll_SnapshotBaseLerpBones
	global Ragdoll_SnapshotBonePositions
	global Ragdoll_SnapshotAnimOrientations
	global Ragdoll_Update
	global Ragdoll_BodyNewState
	global Ragdoll_ExplosionEvent
	global Ragdoll_ValidatePrecalcBoneDef
	global Ragdoll_GenerateAllSelfCollisionContacts
	global ragdollTime


SECTION .text


;Ragdoll_EnterDead(RagdollBody*, BodyState, BodyState)
Ragdoll_EnterDead:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov eax, [edi+0x20c]
	test eax, eax
	jle Ragdoll_EnterDead_10
	mov ebx, edi
	xor esi, esi
	jmp Ragdoll_EnterDead_20
Ragdoll_EnterDead_40:
	mov eax, [ebx+0x214]
	test eax, eax
	jnz Ragdoll_EnterDead_30
Ragdoll_EnterDead_50:
	add esi, 0x1
	add ebx, 0x8
	cmp esi, [edi+0x20c]
	jge Ragdoll_EnterDead_10
Ragdoll_EnterDead_20:
	mov eax, [ebx+0x210]
	test eax, eax
	jz Ragdoll_EnterDead_40
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call Phys_JointDestroy
	mov eax, [ebx+0x214]
	test eax, eax
	jz Ragdoll_EnterDead_50
Ragdoll_EnterDead_30:
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call Phys_JointDestroy
	add esi, 0x1
	add ebx, 0x8
	cmp esi, [edi+0x20c]
	jl Ragdoll_EnterDead_20
Ragdoll_EnterDead_10:
	lea eax, [edi+0x210]
	mov dword [esp+0x8], 0xe0
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	mov esi, [edi+0x34]
	test esi, esi
	jle Ragdoll_EnterDead_60
	mov ebx, edi
	xor esi, esi
	jmp Ragdoll_EnterDead_70
Ragdoll_EnterDead_80:
	mov dword [ebx+0x40], 0x0
	add esi, 0x1
	add ebx, 0x1c
	cmp esi, [edi+0x34]
	jge Ragdoll_EnterDead_60
Ragdoll_EnterDead_70:
	mov eax, [ebx+0x40]
	test eax, eax
	jz Ragdoll_EnterDead_80
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call Phys_ObjDestroy
	mov dword [ebx+0x40], 0x0
	add esi, 0x1
	add ebx, 0x1c
	cmp esi, [edi+0x34]
	jl Ragdoll_EnterDead_70
Ragdoll_EnterDead_60:
	mov ebx, [edi]
	mov dword [esp+0x8], 0x9d4
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call memset
	mov [edi], ebx
	mov eax, 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop
	add [eax], al


;Ragdoll_ExitDead(RagdollBody*, BodyState, BodyState)
Ragdoll_ExitDead:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call Ragdoll_BodyDef
	mov edx, [eax+0x4]
	mov [ebx+0x34], edx
	mov edx, [eax+0x430]
	mov [ebx+0x1c0], edx
	mov eax, [eax+0x554]
	mov [ebx+0x20c], eax
	mov eax, 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;Ragdoll_ExitDObjWait(RagdollBody*, BodyState, BodyState)
Ragdoll_ExitDObjWait:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edi, [ebp+0x8]
	mov edx, [ebp+0x10]
	test edx, edx
	jnz Ragdoll_ExitDObjWait_10
Ragdoll_ExitDObjWait_60:
	mov eax, 0x1
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Ragdoll_ExitDObjWait_10:
	mov [esp], edi
	call Ragdoll_BodyDef
	mov [ebp-0x28], eax
	mov [esp], edi
	call Ragdoll_BodyDObj
	mov [ebp-0x24], eax
	lea ebx, [edi+0x38]
	mov esi, [ebp-0x28]
	add esi, 0x8
	mov eax, [edi+0x34]
	test eax, eax
	jg Ragdoll_ExitDObjWait_20
Ragdoll_ExitDObjWait_80:
	lea ebx, [edi+0x1c4]
	mov eax, [edi+0x1c0]
	test eax, eax
	jle Ragdoll_ExitDObjWait_30
	mov esi, [ebp-0x28]
	mov dword [ebp-0x1c], 0x0
Ragdoll_ExitDObjWait_50:
	lea eax, [ebx+0x4]
	mov byte [ebx+0x4], 0x0
	mov [esp+0x8], eax
	mov eax, [esi+0x448]
	mov [esp+0x4], eax
	mov eax, [ebp-0x24]
	mov [esp], eax
	call DObjGetBoneIndex
	test eax, eax
	jz Ragdoll_ExitDObjWait_40
	cmp byte [ebx+0x4], 0xff
	jz Ragdoll_ExitDObjWait_40
	mov eax, [esi+0x44c]
	mov [ebx], eax
	add dword [ebp-0x1c], 0x1
	add ebx, 0x8
	add esi, 0x20
	mov edx, [ebp-0x1c]
	cmp edx, [edi+0x1c0]
	jl Ragdoll_ExitDObjWait_50
Ragdoll_ExitDObjWait_30:
	mov eax, edi
	call Ragdoll_SnapshotBaseLerpOffsets
	jmp Ragdoll_ExitDObjWait_60
Ragdoll_ExitDObjWait_20:
	mov dword [ebp-0x2c], 0x0
	jmp Ragdoll_ExitDObjWait_70
Ragdoll_ExitDObjWait_90:
	mov edx, [ebp-0x20]
	mov [esp+0x8], edx
	mov [esp+0x4], eax
	mov eax, [ebp-0x24]
	mov [esp], eax
	call DObjGetBoneIndex
	test eax, eax
	jz Ragdoll_ExitDObjWait_40
	cmp byte [ebx+0x4], 0xff
	jz Ragdoll_ExitDObjWait_40
Ragdoll_ExitDObjWait_100:
	add dword [ebp-0x2c], 0x1
	add ebx, 0x1c
	add esi, 0x4c
	mov edx, [ebp-0x2c]
	cmp [edi+0x34], edx
	jle Ragdoll_ExitDObjWait_80
Ragdoll_ExitDObjWait_70:
	mov eax, [esi+0x44]
	mov [ebx], eax
	lea eax, [ebx+0x5]
	mov [ebp-0x20], eax
	mov byte [ebx+0x5], 0x0
	lea eax, [ebx+0x4]
	mov byte [ebx+0x4], 0x0
	mov [esp+0x8], eax
	mov eax, [esi+0x28]
	mov [esp+0x4], eax
	mov edx, [ebp-0x24]
	mov [esp], edx
	call DObjGetBoneIndex
	test eax, eax
	jz Ragdoll_ExitDObjWait_40
	cmp byte [ebx+0x4], 0xff
	jz Ragdoll_ExitDObjWait_40
	mov eax, [esi+0x2c]
	cmp eax, 0xffffffff
	jnz Ragdoll_ExitDObjWait_90
	mov byte [ebx+0x5], 0x0
	jmp Ragdoll_ExitDObjWait_100
Ragdoll_ExitDObjWait_40:
	xor eax, eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Ragdoll_UpdateDObjWait(RagdollBody*)
Ragdoll_UpdateDObjWait:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	cmp dword [esi+0x2c], 0x3
	jle Ragdoll_UpdateDObjWait_10
	mov eax, [esi+0xc]
	test eax, eax
	jz Ragdoll_UpdateDObjWait_20
	mov eax, [esi+0x8]
Ragdoll_UpdateDObjWait_80:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_ragdoll_activati
	mov dword [esp], 0x14
	call Com_PrintWarning
	mov ebx, [esi+0x24]
	test ebx, ebx
	jz Ragdoll_UpdateDObjWait_30
	lea eax, [ebx+ebx*2]
	mov eax, [eax*4+stateEntries+0x4]
	test eax, eax
	jz Ragdoll_UpdateDObjWait_40
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov [esp], esi
	call eax
	test al, al
	jz Ragdoll_UpdateDObjWait_30
Ragdoll_UpdateDObjWait_40:
	mov dword [esi+0x24], 0x0
	mov eax, [stateEntries]
	test eax, eax
	jz Ragdoll_UpdateDObjWait_50
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov [esp], esi
	call eax
	test al, al
	jz Ragdoll_UpdateDObjWait_60
Ragdoll_UpdateDObjWait_50:
	mov dword [esi+0x2c], 0x0
	mov dword [esi+0x28], 0x0
Ragdoll_UpdateDObjWait_30:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Ragdoll_UpdateDObjWait_10:
	mov eax, esi
	call Ragdoll_ValidateBodyObj
	test al, al
	jz Ragdoll_UpdateDObjWait_30
	mov ebx, [esi+0x24]
	cmp ebx, 0x2
	jz Ragdoll_UpdateDObjWait_30
	lea eax, [ebx+ebx*2]
	mov eax, [eax*4+stateEntries+0x4]
	test eax, eax
	jz Ragdoll_UpdateDObjWait_70
	mov dword [esp+0x8], 0x2
	mov [esp+0x4], ebx
	mov [esp], esi
	call eax
	test al, al
	jz Ragdoll_UpdateDObjWait_30
Ragdoll_UpdateDObjWait_70:
	mov dword [esi+0x24], 0x2
	mov eax, [stateEntries+0x18]
	test eax, eax
	jz Ragdoll_UpdateDObjWait_50
	mov dword [esp+0x8], 0x2
	mov [esp+0x4], ebx
	mov [esp], esi
	call eax
	test al, al
	jnz Ragdoll_UpdateDObjWait_50
	cmp dword [esi+0x24], 0x2
	jnz Ragdoll_UpdateDObjWait_30
	mov [esi+0x24], ebx
	jmp Ragdoll_UpdateDObjWait_30
Ragdoll_UpdateDObjWait_60:
	mov eax, [esi+0x24]
	test eax, eax
	jnz Ragdoll_UpdateDObjWait_30
	mov [esi+0x24], ebx
	jmp Ragdoll_UpdateDObjWait_30
Ragdoll_UpdateDObjWait_20:
	xor eax, eax
	jmp Ragdoll_UpdateDObjWait_80


;Ragdoll_UpdateVelocityCapture(RagdollBody*)
Ragdoll_UpdateVelocityCapture:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov esi, [ebx+0x2c]
	test esi, esi
	jle Ragdoll_UpdateVelocityCapture_10
	mov eax, [ebx+0x28]
	mov [ebx+0x30], eax
	xor dword [ebx+0x2f0], 0x1
	mov [esp], ebx
	call Ragdoll_BodyBoneOrientations
	mov edx, eax
	mov eax, ebx
	call Ragdoll_SnapshotAnimOrientations
	mov esi, [ebx+0x24]
	cmp esi, 0x3
	jz Ragdoll_UpdateVelocityCapture_20
	lea eax, [esi+esi*2]
	mov eax, [eax*4+stateEntries+0x4]
	test eax, eax
	jz Ragdoll_UpdateVelocityCapture_30
	mov dword [esp+0x8], 0x3
	mov [esp+0x4], esi
	mov [esp], ebx
	call eax
	test al, al
	jz Ragdoll_UpdateVelocityCapture_20
Ragdoll_UpdateVelocityCapture_30:
	mov dword [ebx+0x24], 0x3
	mov eax, [stateEntries+0x24]
	test eax, eax
	jz Ragdoll_UpdateVelocityCapture_40
	mov dword [esp+0x8], 0x3
	mov [esp+0x4], esi
	mov [esp], ebx
	call eax
	test al, al
	jnz Ragdoll_UpdateVelocityCapture_40
	cmp dword [ebx+0x24], 0x3
	jnz Ragdoll_UpdateVelocityCapture_20
	mov [ebx+0x24], esi
Ragdoll_UpdateVelocityCapture_20:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Ragdoll_UpdateVelocityCapture_40:
	mov dword [ebx+0x2c], 0x0
	mov dword [ebx+0x28], 0x0
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Ragdoll_UpdateVelocityCapture_10:
	xor dword [ebx+0x2f0], 0x1
	mov [esp], ebx
	call Ragdoll_BodyBoneOrientations
	mov edx, eax
	mov eax, ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp Ragdoll_SnapshotAnimOrientations
	nop


;Ragdoll_EnterTunnelTest(RagdollBody*, BodyState, BodyState)
Ragdoll_EnterTunnelTest:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x13c
	mov eax, [ebp+0x8]
	call Ragdoll_CreateBodyPhysics
	test al, al
	jnz Ragdoll_EnterTunnelTest_10
	mov eax, [ebp+0x8]
	mov ebx, [eax+0x24]
	test ebx, ebx
	jz Ragdoll_EnterTunnelTest_20
	lea eax, [ebx+ebx*2]
	mov eax, [eax*4+stateEntries+0x4]
	test eax, eax
	jz Ragdoll_EnterTunnelTest_30
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call eax
	test al, al
	jz Ragdoll_EnterTunnelTest_20
Ragdoll_EnterTunnelTest_30:
	mov ecx, [ebp+0x8]
	mov dword [ecx+0x24], 0x0
	mov eax, [stateEntries]
	test eax, eax
	jz Ragdoll_EnterTunnelTest_40
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov [esp], ecx
	call eax
	test al, al
	jnz Ragdoll_EnterTunnelTest_40
	mov eax, [ebp+0x8]
	mov edi, [eax+0x24]
	test edi, edi
	jnz Ragdoll_EnterTunnelTest_20
	mov [eax+0x24], ebx
	xor eax, eax
	jmp Ragdoll_EnterTunnelTest_50
Ragdoll_EnterTunnelTest_20:
	xor eax, eax
Ragdoll_EnterTunnelTest_50:
	add esp, 0x13c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Ragdoll_EnterTunnelTest_40:
	mov edx, [ebp+0x8]
	mov dword [edx+0x2c], 0x0
	mov dword [edx+0x28], 0x0
	xor eax, eax
	add esp, 0x13c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Ragdoll_EnterTunnelTest_10:
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call Ragdoll_BodyBoneOrientations
	mov ebx, eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Ragdoll_BodyDef
	mov edx, [ebp+0x8]
	add edx, 0x38
	mov [ebp-0xf0], edx
	lea edi, [eax+0x8]
	mov ecx, [ebp+0x8]
	mov esi, [ecx+0x34]
	test esi, esi
	jle Ragdoll_EnterTunnelTest_60
	mov esi, edx
	mov dword [ebp-0x120], 0x0
	jmp Ragdoll_EnterTunnelTest_70
Ragdoll_EnterTunnelTest_90:
	mov eax, [ebx+0x10]
	mov [ebp-0x40], eax
	mov eax, [edx+0x4]
	mov [ebp-0x3c], eax
	mov eax, [edx+0x8]
	mov [ebp-0x38], eax
	mov eax, [edx+0xc]
	mov [ebp-0x34], eax
	mov eax, [esi+0x8]
	test eax, eax
	jnz Ragdoll_EnterTunnelTest_80
Ragdoll_EnterTunnelTest_100:
	add dword [ebp-0x120], 0x1
	add esi, 0x1c
	add edi, 0x4c
	add ebx, 0x20
	mov eax, [ebp-0x120]
	mov ecx, [ebp+0x8]
	cmp [ecx+0x34], eax
	jle Ragdoll_EnterTunnelTest_60
Ragdoll_EnterTunnelTest_70:
	lea edx, [ebx+0x10]
	cmp byte [edi+0x34], 0x0
	jz Ragdoll_EnterTunnelTest_90
	lea eax, [ebp-0x40]
	mov [esp+0x8], eax
	mov dword [esp+0x4], quatZRot
	mov [esp], edx
	call Ragdoll_QuatMul
	mov eax, [esi+0x8]
	test eax, eax
	jz Ragdoll_EnterTunnelTest_100
Ragdoll_EnterTunnelTest_80:
	lea edx, [ebp-0x40]
	mov [esp+0xc], edx
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call Phys_ObjSetOrientation
	add dword [ebp-0x120], 0x1
	add esi, 0x1c
	add edi, 0x4c
	add ebx, 0x20
	mov eax, [ebp-0x120]
	mov ecx, [ebp+0x8]
	cmp [ecx+0x34], eax
	jg Ragdoll_EnterTunnelTest_70
Ragdoll_EnterTunnelTest_60:
	mov eax, [ecx+0x30]
	test eax, eax
	jnz Ragdoll_EnterTunnelTest_110
Ragdoll_EnterTunnelTest_330:
	mov ebx, [ebp+0x8]
Ragdoll_EnterTunnelTest_440:
	mov [esp], ebx
	call Ragdoll_BodyDef
	add eax, 0x8
	mov [ebp-0x108], eax
	mov [esp], ebx
	call Ragdoll_BodyBoneOrientations
	mov [ebp-0xec], eax
	mov edx, [ebx+0x34]
	test edx, edx
	jle Ragdoll_EnterTunnelTest_120
	mov edx, eax
	mov eax, [ebp-0xf0]
	mov [ebp-0xf4], eax
	mov [ebp-0x10c], edx
	mov dword [ebp-0xf8], 0x0
	mov ecx, vec3_origin
	mov [ebp-0x124], ecx
	mov esi, edx
	add esi, 0x10
	mov ebx, eax
Ragdoll_EnterTunnelTest_250:
	mov eax, [ebx+0x8]
	test eax, eax
	jz Ragdoll_EnterTunnelTest_130
	mov eax, [ebp-0x108]
	cmp byte [eax+0x34], 0x0
	jnz Ragdoll_EnterTunnelTest_140
	mov eax, [esi]
	mov [ebp-0x50], eax
	mov eax, [esi+0x4]
	mov [ebp-0x4c], eax
	mov eax, [esi+0x8]
	mov [ebp-0x48], eax
	mov eax, [esi+0xc]
	mov [ebp-0x44], eax
Ragdoll_EnterTunnelTest_420:
	lea eax, [ebp-0x8c]
	mov [esp+0x4], eax
	lea ecx, [ebp-0x50]
	mov [esp], ecx
	call QuatToAxis
	mov eax, [esi-0x10]
	mov [ebp-0x24], eax
	mov ebx, [ebp-0x10c]
	add ebx, 0x4
	mov [ebp-0x100], ebx
	mov eax, [esi-0xc]
	mov [ebp-0x20], eax
	mov eax, [ebp-0x10c]
	add eax, 0x8
	mov [ebp-0xfc], eax
	mov eax, [esi-0x8]
	mov [ebp-0x1c], eax
	mov edx, [ebp+0x8]
	mov eax, [edx+0x34]
	test eax, eax
	jle Ragdoll_EnterTunnelTest_150
	mov eax, edx
	xor edx, edx
	mov dword [ebp-0x104], 0x0
	jmp Ragdoll_EnterTunnelTest_160
Ragdoll_EnterTunnelTest_180:
	add edx, 0x1
	add eax, 0x1c
	mov ecx, [ebp+0x8]
	cmp [ecx+0x34], edx
	jle Ragdoll_EnterTunnelTest_170
Ragdoll_EnterTunnelTest_160:
	mov ecx, [ebp-0xf8]
	cmp ecx, [eax+0x38]
	jnz Ragdoll_EnterTunnelTest_180
	cmp dword [ebp-0x104], 0x6
	jz Ragdoll_EnterTunnelTest_190
	mov ebx, [ebp-0x104]
	mov [ebp+ebx*4-0x68], edx
	add ebx, 0x1
	mov [ebp-0x104], ebx
	add edx, 0x1
	add eax, 0x1c
	mov ecx, [ebp+0x8]
	cmp [ecx+0x34], edx
	jg Ragdoll_EnterTunnelTest_160
Ragdoll_EnterTunnelTest_170:
	cmp dword [ebp-0x104], 0x1
	jle Ragdoll_EnterTunnelTest_150
Ragdoll_EnterTunnelTest_190:
	mov ebx, [ebp-0xf4]
	movss xmm0, dword [ebx+0xc]
	mulss xmm0, [_float_0_50000000]
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x8c]
	addss xmm1, [ebp-0x24]
	movss [ebp-0x30], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x88]
	addss xmm1, [ebp-0x20]
	movss [ebp-0x2c], xmm1
	mulss xmm0, [ebp-0x84]
	addss xmm0, [ebp-0x1c]
	movss [ebp-0x28], xmm0
	xor edi, edi
Ragdoll_EnterTunnelTest_220:
	mov eax, [ebp+edi*4-0x68]
	shl eax, 0x5
	mov ebx, [ebp-0xec]
	add ebx, eax
	mov dword [esp+0x18], 0x2806c91
	mov dword [esp+0x14], 0x0
	mov eax, vec3_origin
	mov [esp+0x10], eax
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	lea edx, [ebp-0x30]
	mov [esp+0x4], edx
	lea ecx, [ebp-0xe4]
	mov [esp], ecx
	call CM_BoxTrace
	cmp byte [ebp-0xbb], 0x0
	jnz Ragdoll_EnterTunnelTest_200
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0xe4]
	jp Ragdoll_EnterTunnelTest_210
	jnz Ragdoll_EnterTunnelTest_210
Ragdoll_EnterTunnelTest_400:
	add edi, 0x1
	cmp [ebp-0x104], edi
	jg Ragdoll_EnterTunnelTest_220
Ragdoll_EnterTunnelTest_150:
	mov eax, [ebp-0xf4]
	movss xmm0, dword [eax+0xc]
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x8c]
	addss xmm1, [esi-0x10]
	movss [ebp-0x40], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x88]
	mov edx, [ebp-0x100]
	addss xmm1, [edx]
	movss [ebp-0x3c], xmm1
	mulss xmm0, [ebp-0x84]
	mov ecx, [ebp-0xfc]
	addss xmm0, [ecx]
	movss [ebp-0x38], xmm0
	mov dword [esp+0x18], 0x2806c91
	mov dword [esp+0x14], 0x0
	mov ebx, [ebp-0x124]
	mov [esp+0x10], ebx
	mov [esp+0xc], ebx
	lea eax, [ebp-0x40]
	mov [esp+0x8], eax
	lea edx, [ebp-0x24]
	mov [esp+0x4], edx
	lea ecx, [ebp-0xe4]
	mov [esp], ecx
	call CM_BoxTrace
	cmp byte [ebp-0xbb], 0x0
	jnz Ragdoll_EnterTunnelTest_230
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0xe4]
	jp Ragdoll_EnterTunnelTest_240
	jnz Ragdoll_EnterTunnelTest_240
Ragdoll_EnterTunnelTest_130:
	add dword [ebp-0xf8], 0x1
	add dword [ebp-0xf4], 0x1c
	add dword [ebp-0x108], 0x4c
	add dword [ebp-0x10c], 0x20
	add esi, 0x20
	mov edx, [ebp-0xf8]
	mov eax, [ebp+0x8]
	cmp edx, [eax+0x34]
	jge Ragdoll_EnterTunnelTest_120
	mov ebx, [ebp-0xf4]
	jmp Ragdoll_EnterTunnelTest_250
Ragdoll_EnterTunnelTest_120:
	mov esi, 0x1
Ragdoll_EnterTunnelTest_410:
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call Ragdoll_BodyPose
	mov ebx, eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Ragdoll_BodyBoneOrientations
	mov ecx, [ebp+0x8]
	add ecx, 0x14
	lea edx, [ebx+0x1c]
	movss xmm0, dword [ebx+0x1c]
	subss xmm0, [eax]
	mov ebx, [ebp+0x8]
	movss [ebx+0x14], xmm0
	movss xmm0, dword [edx+0x4]
	subss xmm0, [eax+0x4]
	movss [ecx+0x4], xmm0
	movss xmm0, dword [edx+0x8]
	subss xmm0, [eax+0x8]
	movss [ecx+0x8], xmm0
	mov [esp], ebx
	call Ragdoll_BodyBoneOrientations
	mov edx, eax
	mov eax, ebx
	call Ragdoll_SnapshotBaseLerpBones
	lea edx, [ebp-0x24]
	mov eax, ebx
	call Ragdoll_BodyCenterOfMass
	mov eax, [ebx+0x34]
	test eax, eax
	jle Ragdoll_EnterTunnelTest_260
	xor ebx, ebx
	jmp Ragdoll_EnterTunnelTest_270
Ragdoll_EnterTunnelTest_280:
	add ebx, 0x1
	add dword [ebp-0xf0], 0x1c
	mov eax, [ebp+0x8]
	cmp ebx, [eax+0x34]
	jge Ragdoll_EnterTunnelTest_260
Ragdoll_EnterTunnelTest_270:
	mov edx, [ebp-0xf0]
	mov eax, [edx+0x8]
	test eax, eax
	jz Ragdoll_EnterTunnelTest_280
	lea ecx, [ebp-0x24]
	mov [esp+0x4], ecx
	mov [esp], eax
	call Phys_ObjSetContactCentroid
	add ebx, 0x1
	add dword [ebp-0xf0], 0x1c
	mov eax, [ebp+0x8]
	cmp ebx, [eax+0x34]
	jl Ragdoll_EnterTunnelTest_270
Ragdoll_EnterTunnelTest_260:
	mov edx, esi
	test dl, dl
	jz Ragdoll_EnterTunnelTest_290
	mov ecx, [ebp+0x8]
	mov ebx, [ecx+0x24]
	cmp ebx, 0x4
	jz Ragdoll_EnterTunnelTest_300
	lea eax, [ebx+ebx*2]
	mov eax, [eax*4+stateEntries+0x4]
	test eax, eax
	jz Ragdoll_EnterTunnelTest_310
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], ebx
	mov [esp], ecx
	call eax
	test al, al
	jz Ragdoll_EnterTunnelTest_300
Ragdoll_EnterTunnelTest_310:
	mov eax, [ebp+0x8]
	mov dword [eax+0x24], 0x4
	mov eax, [stateEntries+0x30]
	test eax, eax
	jz Ragdoll_EnterTunnelTest_320
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], ebx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call eax
	test al, al
	jnz Ragdoll_EnterTunnelTest_320
	mov ecx, [ebp+0x8]
	cmp dword [ecx+0x24], 0x4
	jnz Ragdoll_EnterTunnelTest_300
	mov [ecx+0x24], ebx
	mov eax, 0x1
	jmp Ragdoll_EnterTunnelTest_50
Ragdoll_EnterTunnelTest_110:
	cvtsi2ss xmm0, eax
	movss xmm1, dword [_float_1000_00000000]
	divss xmm1, xmm0
	movss [ebp-0x110], xmm1
	mov [esp], ecx
	call Ragdoll_BodyBoneOrientations
	mov esi, eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Ragdoll_BodyPrevBoneOrientations
	mov ebx, eax
	mov edx, [ebp+0x8]
	mov ecx, [edx+0x34]
	test ecx, ecx
	jle Ragdoll_EnterTunnelTest_330
	mov edi, [ebp-0xf0]
	mov dword [ebp-0x11c], 0x0
	jmp Ragdoll_EnterTunnelTest_340
Ragdoll_EnterTunnelTest_360:
	mov eax, [ebx+0x10]
	mov [ebp-0x68], eax
	mov eax, [ebx+0x14]
	mov [ebp-0x64], eax
	mov eax, [ebx+0x18]
	mov [ebp-0x60], eax
	mov eax, [ebx+0x1c]
	mov [ebp-0x5c], eax
Ragdoll_EnterTunnelTest_370:
	mov eax, [edx]
	mov [ebp-0x50], eax
	mov eax, [ecx]
	mov [ebp-0x4c], eax
	mov edx, [ebp-0x118]
	mov eax, [edx]
	mov [ebp-0x48], eax
	mov ecx, [ebp-0x114]
	mov eax, [ecx]
	mov [ebp-0x44], eax
	lea eax, [ebp-0x50]
	mov [esp], eax
	call Ragdoll_QuatNormalize
	lea edx, [ebp-0x68]
	mov [esp], edx
	call Ragdoll_QuatNormalize
	lea ecx, [ebp-0x8c]
	mov [esp+0x8], ecx
	lea eax, [ebp-0x68]
	mov [esp+0x4], eax
	lea edx, [ebp-0x50]
	mov [esp], edx
	call Ragdoll_QuatMulInvSecond
	lea ecx, [ebp-0x8c]
	mov [esp], ecx
	call Ragdoll_QuatNormalize
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	lea edx, [ebp-0x8c]
	mov [esp], edx
	call Ragdoll_QuatToAxisAngle
	lea ecx, [ebp-0x40]
	mov [esp+0x8], ecx
	lea eax, [ebp-0x50]
	mov [esp+0x4], eax
	lea edx, [ebp-0x30]
	mov [esp], edx
	call Ragdoll_QuatPointRotate
	mov eax, ragdoll_rotvel_scale
	mov eax, [eax]
	movss xmm0, dword [ebp-0x110]
	mulss xmm0, [eax+0xc]
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x40]
	movss [ebp-0x30], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x3c]
	movss [ebp-0x2c], xmm1
	mulss xmm0, [ebp-0x38]
	movss [ebp-0x28], xmm0
	movss xmm0, dword [ebp-0x110]
	mulss xmm0, [ebp-0x24]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [ebp-0x110]
	mulss xmm0, [ebp-0x20]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [ebp-0x110]
	mulss xmm0, [ebp-0x1c]
	movss [ebp-0x1c], xmm0
	lea ecx, [ebp-0x30]
	mov [esp+0x4], ecx
	mov eax, [edi+0x8]
	mov [esp], eax
	call Phys_ObjSetAngularVelocityRaw
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov eax, [edi+0x8]
	mov [esp], eax
	call Phys_ObjSetVelocity
	add dword [ebp-0x11c], 0x1
	add esi, 0x20
	add ebx, 0x20
	add edi, 0x1c
	mov ecx, [ebp-0x11c]
	mov edx, [ebp+0x8]
	cmp [edx+0x34], ecx
	jle Ragdoll_EnterTunnelTest_350
Ragdoll_EnterTunnelTest_340:
	movss xmm0, dword [esi]
	subss xmm0, [ebx]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [esi+0x4]
	subss xmm0, [ebx+0x4]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [esi+0x8]
	subss xmm0, [ebx+0x8]
	movss [ebp-0x1c], xmm0
	lea edx, [esi+0x10]
	lea ecx, [esi+0x14]
	lea eax, [esi+0x18]
	mov [ebp-0x118], eax
	lea eax, [esi+0x1c]
	mov [ebp-0x114], eax
	movss xmm1, dword [esi+0x10]
	mulss xmm1, [ebx+0x10]
	movss xmm0, dword [esi+0x14]
	mulss xmm0, [ebx+0x14]
	addss xmm1, xmm0
	movss xmm0, dword [esi+0x18]
	mulss xmm0, [ebx+0x18]
	addss xmm1, xmm0
	movss xmm0, dword [esi+0x1c]
	mulss xmm0, [ebx+0x1c]
	addss xmm1, xmm0
	ucomiss xmm1, [_float_0_00000000]
	jae Ragdoll_EnterTunnelTest_360
	jp Ragdoll_EnterTunnelTest_360
	movss xmm0, dword [ebx+0x10]
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x68], xmm0
	movss xmm0, dword [ebx+0x14]
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x64], xmm0
	movss xmm0, dword [ebx+0x18]
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x60], xmm0
	movss xmm0, dword [ebx+0x1c]
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x5c], xmm0
	jmp Ragdoll_EnterTunnelTest_370
Ragdoll_EnterTunnelTest_320:
	mov ebx, [ebp+0x8]
	mov dword [ebx+0x2c], 0x0
	mov dword [ebx+0x28], 0x0
	mov eax, 0x1
	jmp Ragdoll_EnterTunnelTest_50
Ragdoll_EnterTunnelTest_290:
	mov eax, [ebp+0x8]
	mov ebx, [eax+0x24]
	test ebx, ebx
	jz Ragdoll_EnterTunnelTest_300
	lea eax, [ebx+ebx*2]
	mov eax, [eax*4+stateEntries+0x4]
	test eax, eax
	jz Ragdoll_EnterTunnelTest_380
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call eax
	test al, al
	jz Ragdoll_EnterTunnelTest_300
Ragdoll_EnterTunnelTest_380:
	mov ecx, [ebp+0x8]
	mov dword [ecx+0x24], 0x0
	mov eax, [stateEntries]
	test eax, eax
	jz Ragdoll_EnterTunnelTest_390
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov [esp], ecx
	call eax
	test al, al
	jnz Ragdoll_EnterTunnelTest_390
	mov eax, [ebp+0x8]
	mov edi, [eax+0x24]
	test edi, edi
	jnz Ragdoll_EnterTunnelTest_300
	mov [eax+0x24], ebx
	mov eax, 0x1
	jmp Ragdoll_EnterTunnelTest_50
Ragdoll_EnterTunnelTest_390:
	mov edx, [ebp+0x8]
	mov dword [edx+0x2c], 0x0
	mov dword [edx+0x28], 0x0
	mov eax, 0x1
	jmp Ragdoll_EnterTunnelTest_50
Ragdoll_EnterTunnelTest_300:
	mov eax, 0x1
	add esp, 0x13c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Ragdoll_EnterTunnelTest_200:
	mov dword [esp+0x18], 0x2806c91
	mov dword [esp+0x14], 0x0
	mov eax, vec3_origin
	mov [esp+0x10], eax
	mov [esp+0xc], eax
	lea edx, [ebp-0x30]
	mov [esp+0x8], edx
	mov [esp+0x4], ebx
	lea ecx, [ebp-0xb8]
	mov [esp], ecx
	call CM_BoxTrace
	cmp byte [ebp-0x8f], 0x0
	jz Ragdoll_EnterTunnelTest_400
Ragdoll_EnterTunnelTest_430:
	xor esi, esi
	jmp Ragdoll_EnterTunnelTest_410
Ragdoll_EnterTunnelTest_140:
	lea edx, [ebp-0x50]
	mov [esp+0x8], edx
	mov dword [esp+0x4], quatZRot
	mov [esp], esi
	call Ragdoll_QuatMul
	jmp Ragdoll_EnterTunnelTest_420
Ragdoll_EnterTunnelTest_210:
	mov dword [esp+0x18], 0x2806c91
	mov dword [esp+0x14], 0x0
	mov eax, vec3_origin
	mov [esp+0x10], eax
	mov [esp+0xc], eax
	lea edx, [ebp-0x30]
	mov [esp+0x8], edx
	mov [esp+0x4], ebx
	lea ecx, [ebp-0xb8]
	mov [esp], ecx
	call CM_BoxTrace
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0xb8]
	jnz Ragdoll_EnterTunnelTest_430
	jnp Ragdoll_EnterTunnelTest_400
	xor esi, esi
	jmp Ragdoll_EnterTunnelTest_410
Ragdoll_EnterTunnelTest_240:
	mov dword [esp+0x18], 0x2806c91
	mov dword [esp+0x14], 0x0
	mov eax, [ebp-0x124]
	mov [esp+0x10], eax
	mov [esp+0xc], eax
	lea edx, [ebp-0x24]
	mov [esp+0x8], edx
	lea ecx, [ebp-0x40]
	mov [esp+0x4], ecx
	lea eax, [ebp-0xb8]
	mov [esp], eax
	call CM_BoxTrace
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0xb8]
	jnz Ragdoll_EnterTunnelTest_430
	jnp Ragdoll_EnterTunnelTest_130
	xor esi, esi
	jmp Ragdoll_EnterTunnelTest_410
Ragdoll_EnterTunnelTest_230:
	mov dword [esp+0x18], 0x2806c91
	mov dword [esp+0x14], 0x0
	mov [esp+0x10], ebx
	mov [esp+0xc], ebx
	lea ebx, [ebp-0x24]
	mov [esp+0x8], ebx
	lea eax, [ebp-0x40]
	mov [esp+0x4], eax
	lea eax, [ebp-0xb8]
	mov [esp], eax
	call CM_BoxTrace
	cmp byte [ebp-0x8f], 0x0
	jz Ragdoll_EnterTunnelTest_130
	xor esi, esi
	jmp Ragdoll_EnterTunnelTest_410
Ragdoll_EnterTunnelTest_350:
	mov ebx, edx
	jmp Ragdoll_EnterTunnelTest_440
	nop


;Ragdoll_EnterRunning(RagdollBody*, BodyState, BodyState)
Ragdoll_EnterRunning:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	call Ragdoll_CountPhysicsBodies
	mov edx, ragdoll_max_simulating
	mov edx, [edx]
	cmp eax, [edx+0xc]
	jl Ragdoll_EnterRunning_10
	cmp dword [ebp+0xc], 0x5
	jz Ragdoll_EnterRunning_20
	mov ebx, [esi+0x24]
	test ebx, ebx
	jz Ragdoll_EnterRunning_30
	lea eax, [ebx+ebx*2]
	mov eax, [eax*4+stateEntries+0x4]
	test eax, eax
	jz Ragdoll_EnterRunning_40
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov [esp], esi
	call eax
	test al, al
	jz Ragdoll_EnterRunning_30
Ragdoll_EnterRunning_40:
	mov dword [esi+0x24], 0x0
	mov eax, [stateEntries]
	test eax, eax
	jz Ragdoll_EnterRunning_50
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov [esp], esi
	call eax
	test al, al
	jnz Ragdoll_EnterRunning_50
	mov eax, [esi+0x24]
	test eax, eax
	jnz Ragdoll_EnterRunning_30
Ragdoll_EnterRunning_90:
	mov [esi+0x24], ebx
	xor eax, eax
	jmp Ragdoll_EnterRunning_60
Ragdoll_EnterRunning_20:
	mov ebx, [esi+0x24]
	cmp ebx, 0x5
	jz Ragdoll_EnterRunning_30
	lea eax, [ebx+ebx*2]
	mov eax, [eax*4+stateEntries+0x4]
	test eax, eax
	jz Ragdoll_EnterRunning_70
	mov dword [esp+0x8], 0x5
	mov [esp+0x4], ebx
	mov [esp], esi
	call eax
	test al, al
	jz Ragdoll_EnterRunning_30
Ragdoll_EnterRunning_70:
	mov dword [esi+0x24], 0x5
	mov eax, [stateEntries+0x3c]
	test eax, eax
	jz Ragdoll_EnterRunning_50
	mov dword [esp+0x8], 0x5
	mov [esp+0x4], ebx
	mov [esp], esi
	call eax
	test al, al
	jz Ragdoll_EnterRunning_80
Ragdoll_EnterRunning_50:
	mov dword [esi+0x2c], 0x0
	mov dword [esi+0x28], 0x0
	xor eax, eax
Ragdoll_EnterRunning_60:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Ragdoll_EnterRunning_80:
	cmp dword [esi+0x24], 0x5
	jz Ragdoll_EnterRunning_90
Ragdoll_EnterRunning_30:
	xor eax, eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Ragdoll_EnterRunning_10:
	mov eax, 0x1
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;Ragdoll_UpdateRunning(RagdollBody*)
Ragdoll_UpdateRunning:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov edi, [ebp+0x8]
	mov eax, ragdoll_max_life
	mov edx, [eax]
	mov eax, [edi+0x28]
	cmp eax, [edx+0xc]
	jg Ragdoll_UpdateRunning_10
	mov eax, [edi+0x34]
	test eax, eax
	jg Ragdoll_UpdateRunning_20
Ragdoll_UpdateRunning_10:
	mov ebx, [edi+0x24]
	cmp ebx, 0x5
	jz Ragdoll_UpdateRunning_30
	lea eax, [ebx+ebx*2]
	mov eax, [eax*4+stateEntries+0x4]
	test eax, eax
	jz Ragdoll_UpdateRunning_40
	mov dword [esp+0x8], 0x5
	mov [esp+0x4], ebx
	mov [esp], edi
	call eax
	test al, al
	jz Ragdoll_UpdateRunning_30
Ragdoll_UpdateRunning_40:
	mov dword [edi+0x24], 0x5
	mov eax, [stateEntries+0x3c]
	test eax, eax
	jz Ragdoll_UpdateRunning_50
	mov dword [esp+0x8], 0x5
	mov [esp+0x4], ebx
	mov [esp], edi
	call eax
	test al, al
	jnz Ragdoll_UpdateRunning_50
	cmp dword [edi+0x24], 0x5
	jz Ragdoll_UpdateRunning_60
Ragdoll_UpdateRunning_30:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Ragdoll_UpdateRunning_50:
	mov dword [edi+0x2c], 0x0
	mov dword [edi+0x28], 0x0
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Ragdoll_UpdateRunning_20:
	mov esi, edi
	xor ebx, ebx
Ragdoll_UpdateRunning_80:
	mov eax, [esi+0x40]
	mov [esp], eax
	call Phys_ObjIsAsleep
	test al, al
	jz Ragdoll_UpdateRunning_70
	add ebx, 0x1
	add esi, 0x1c
	cmp ebx, [edi+0x34]
	jl Ragdoll_UpdateRunning_80
	jmp Ragdoll_UpdateRunning_10
Ragdoll_UpdateRunning_60:
	mov [edi+0x24], ebx
	jmp Ragdoll_UpdateRunning_30
Ragdoll_UpdateRunning_70:
	mov [esp], edi
	call Ragdoll_BodyBoneOrientations
	mov edx, eax
	mov eax, edi
	call Ragdoll_SnapshotBonePositions
	mov [esp], edi
	call Ragdoll_BodyDef
	mov [ebp-0x2c], eax
	mov ebx, eax
	add ebx, 0x558
	lea esi, [edi+0x210]
	cvtsi2ss xmm1, dword [edi+0x28]
	mov eax, ragdoll_jointlerp_time
	mov eax, [eax]
	cvtsi2ss xmm0, dword [eax+0xc]
	divss xmm1, xmm0
	movss xmm2, dword [_float_1_00000000]
	subss xmm2, xmm1
	mulss xmm2, xmm2
	mulss xmm2, [_float_0_89999998]
	addss xmm2, [_float_0_10000000]
	mov eax, [ebp-0x2c]
	mov eax, [eax+0x554]
	test eax, eax
	jle Ragdoll_UpdateRunning_90
	mov dword [ebp-0x30], 0x0
	jmp Ragdoll_UpdateRunning_100
Ragdoll_UpdateRunning_120:
	cmp eax, 0x2
	jz Ragdoll_UpdateRunning_110
Ragdoll_UpdateRunning_130:
	add dword [ebp-0x30], 0x1
	add ebx, 0x54
	add esi, 0x8
	mov eax, [ebp-0x30]
	mov edx, [ebp-0x2c]
	cmp eax, [edx+0x554]
	jge Ragdoll_UpdateRunning_90
Ragdoll_UpdateRunning_100:
	mov eax, [ebx+0x4]
	cmp eax, 0x1
	jnz Ragdoll_UpdateRunning_120
	movaps xmm0, xmm2
	mulss xmm0, [ebx+0x48]
	mov edx, [esi]
	test edx, edx
	jz Ragdoll_UpdateRunning_130
	mov eax, [ebx+0x3c]
	mov [esp+0x14], eax
	mov eax, [ebx+0x30]
	mov [esp+0x10], eax
	movss [esp+0xc], xmm0
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], edx
	mov dword [esp], 0x2
	movss [ebp-0x48], xmm2
	call Phys_SetHingeParams
	movss xmm2, dword [ebp-0x48]
	jmp Ragdoll_UpdateRunning_130
Ragdoll_UpdateRunning_90:
	lea edx, [ebp-0x24]
	mov eax, edi
	call Ragdoll_BodyCenterOfMass
	lea ebx, [edi+0x38]
	mov eax, [edi+0x34]
	test eax, eax
	jle Ragdoll_UpdateRunning_30
	xor esi, esi
	jmp Ragdoll_UpdateRunning_140
Ragdoll_UpdateRunning_150:
	add esi, 0x1
	add ebx, 0x1c
	cmp esi, [edi+0x34]
	jge Ragdoll_UpdateRunning_30
Ragdoll_UpdateRunning_140:
	mov eax, [ebx+0x8]
	test eax, eax
	jz Ragdoll_UpdateRunning_150
	lea edx, [ebp-0x24]
	mov [esp+0x4], edx
	mov [esp], eax
	call Phys_ObjSetContactCentroid
	jmp Ragdoll_UpdateRunning_150
Ragdoll_UpdateRunning_110:
	lea eax, [ebx+0x48]
	movaps xmm0, xmm2
	mulss xmm0, [ebx+0x48]
	movss [ebp-0x24], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x4]
	movss [ebp-0x20], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x8]
	movss [ebp-0x1c], xmm0
	mov edx, [esi+0x4]
	test edx, edx
	jz Ragdoll_UpdateRunning_130
	lea eax, [ebx+0x3c]
	mov [esp+0x14], eax
	lea eax, [ebx+0x30]
	mov [esp+0x10], eax
	lea eax, [ebp-0x24]
	mov [esp+0xc], eax
	mov eax, vec3_origin
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x2
	movss [ebp-0x48], xmm2
	call Phys_SetAngularMotorParams
	movss xmm2, dword [ebp-0x48]
	jmp Ragdoll_UpdateRunning_130
	add [eax], al


;Ragdoll_EnterIdle(RagdollBody*, BodyState, BodyState)
Ragdoll_EnterIdle:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov eax, [edi+0x24]
	sub eax, 0x3
	cmp eax, 0x1
	jbe Ragdoll_EnterIdle_10
Ragdoll_EnterIdle_100:
	mov esi, [edi+0x20c]
	test esi, esi
	jle Ragdoll_EnterIdle_20
	mov ebx, edi
	xor esi, esi
	jmp Ragdoll_EnterIdle_30
Ragdoll_EnterIdle_50:
	mov eax, [ebx+0x214]
	test eax, eax
	jnz Ragdoll_EnterIdle_40
Ragdoll_EnterIdle_60:
	add esi, 0x1
	add ebx, 0x8
	cmp [edi+0x20c], esi
	jle Ragdoll_EnterIdle_20
Ragdoll_EnterIdle_30:
	mov eax, [ebx+0x210]
	test eax, eax
	jz Ragdoll_EnterIdle_50
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call Phys_JointDestroy
	mov eax, [ebx+0x214]
	test eax, eax
	jz Ragdoll_EnterIdle_60
Ragdoll_EnterIdle_40:
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call Phys_JointDestroy
	add esi, 0x1
	add ebx, 0x8
	cmp [edi+0x20c], esi
	jg Ragdoll_EnterIdle_30
Ragdoll_EnterIdle_20:
	lea eax, [edi+0x210]
	mov dword [esp+0x8], 0xe0
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	mov ebx, [edi+0x34]
	test ebx, ebx
	jle Ragdoll_EnterIdle_70
	mov ebx, edi
	xor esi, esi
	jmp Ragdoll_EnterIdle_80
Ragdoll_EnterIdle_90:
	mov dword [ebx+0x40], 0x0
	add esi, 0x1
	add ebx, 0x1c
	cmp esi, [edi+0x34]
	jge Ragdoll_EnterIdle_70
Ragdoll_EnterIdle_80:
	mov eax, [ebx+0x40]
	test eax, eax
	jz Ragdoll_EnterIdle_90
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call Phys_ObjDestroy
	mov dword [ebx+0x40], 0x0
	add esi, 0x1
	add ebx, 0x1c
	cmp esi, [edi+0x34]
	jl Ragdoll_EnterIdle_80
Ragdoll_EnterIdle_70:
	mov eax, 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Ragdoll_EnterIdle_10:
	mov [esp], edi
	call Ragdoll_BodyBoneOrientations
	mov edx, eax
	mov eax, edi
	call Ragdoll_SnapshotBonePositions
	jmp Ragdoll_EnterIdle_100


;Ragdoll_ExitIdle(RagdollBody*, BodyState, BodyState)
Ragdoll_ExitIdle:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, [ebp+0x8]
	cmp dword [ebp+0x10], 0x1
	jbe Ragdoll_ExitIdle_10
	mov eax, ebx
	call Ragdoll_ValidateBodyObj
	test al, al
	jz Ragdoll_ExitIdle_20
	cmp dword [ebx+0x24], 0x2
	jg Ragdoll_ExitIdle_30
Ragdoll_ExitIdle_20:
	xor eax, eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Ragdoll_ExitIdle_30:
	call Ragdoll_CountPhysicsBodies
	mov edx, ragdoll_max_simulating
	mov edx, [edx]
	cmp eax, [edx+0xc]
	jge Ragdoll_ExitIdle_20
	mov eax, ebx
	call Ragdoll_CreateBodyPhysics
	test al, al
	jz Ragdoll_ExitIdle_20
	mov [esp], ebx
	call Ragdoll_BodyBoneOrientations
	mov esi, eax
	mov [esp], ebx
	call Ragdoll_BodyDef
	lea edx, [ebx+0x38]
	mov [ebp-0x2c], edx
	lea edi, [eax+0x8]
	mov eax, [ebx+0x34]
	test eax, eax
	jle Ragdoll_ExitIdle_10
	mov dword [ebp-0x30], 0x0
	jmp Ragdoll_ExitIdle_40
Ragdoll_ExitIdle_60:
	mov eax, [esi+0x10]
	mov [ebp-0x28], eax
	mov eax, [edx+0x4]
	mov [ebp-0x24], eax
	mov eax, [edx+0x8]
	mov [ebp-0x20], eax
	mov eax, [edx+0xc]
	mov [ebp-0x1c], eax
Ragdoll_ExitIdle_70:
	mov edx, [ebp-0x2c]
	mov eax, [edx+0x8]
	test eax, eax
	jnz Ragdoll_ExitIdle_50
Ragdoll_ExitIdle_80:
	add dword [ebp-0x30], 0x1
	add dword [ebp-0x2c], 0x1c
	add edi, 0x4c
	add esi, 0x20
	mov eax, [ebp-0x30]
	cmp eax, [ebx+0x34]
	jge Ragdoll_ExitIdle_10
Ragdoll_ExitIdle_40:
	lea edx, [esi+0x10]
	cmp byte [edi+0x34], 0x0
	jz Ragdoll_ExitIdle_60
	lea eax, [ebp-0x28]
	mov [esp+0x8], eax
	mov dword [esp+0x4], quatZRot
	mov [esp], edx
	call Ragdoll_QuatMul
	jmp Ragdoll_ExitIdle_70
Ragdoll_ExitIdle_10:
	mov eax, 0x1
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Ragdoll_ExitIdle_50:
	lea edx, [ebp-0x28]
	mov [esp+0xc], edx
	mov [esp+0x8], esi
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call Phys_ObjSetOrientation
	jmp Ragdoll_ExitIdle_80
	nop


;Ragdoll_ValidateBodyObj(RagdollBody*)
Ragdoll_ValidateBodyObj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov esi, eax
	mov [esp], eax
	call Ragdoll_BodyDef
	mov [ebp-0x30], eax
	mov [esp], esi
	call Ragdoll_BodyDObj
	mov [ebp-0x2c], eax
	test eax, eax
	jz Ragdoll_ValidateBodyObj_10
	mov ebx, [ebp-0x30]
	add ebx, 0x8
	mov edx, [esi+0x34]
	test edx, edx
	jg Ragdoll_ValidateBodyObj_20
Ragdoll_ValidateBodyObj_70:
	mov ebx, [ebp-0x30]
	add ebx, 0x434
	mov eax, [esi+0x1c0]
	test eax, eax
	jg Ragdoll_ValidateBodyObj_30
Ragdoll_ValidateBodyObj_50:
	mov eax, 0x1
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Ragdoll_ValidateBodyObj_30:
	xor edi, edi
Ragdoll_ValidateBodyObj_40:
	mov byte [ebp-0x19], 0x0
	lea edx, [ebp-0x19]
	mov [esp+0x8], edx
	mov eax, [ebx+0x14]
	mov [esp+0x4], eax
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call DObjGetBoneIndex
	test eax, eax
	jz Ragdoll_ValidateBodyObj_10
	cmp byte [ebp-0x19], 0xff
	jz Ragdoll_ValidateBodyObj_10
	add edi, 0x1
	add ebx, 0x20
	cmp edi, [esi+0x1c0]
	jl Ragdoll_ValidateBodyObj_40
	jmp Ragdoll_ValidateBodyObj_50
Ragdoll_ValidateBodyObj_20:
	xor edi, edi
	jmp Ragdoll_ValidateBodyObj_60
Ragdoll_ValidateBodyObj_80:
	cmp byte [ebp-0x19], 0xff
	jz Ragdoll_ValidateBodyObj_10
	add edi, 0x1
	add ebx, 0x4c
	cmp [esi+0x34], edi
	jle Ragdoll_ValidateBodyObj_70
Ragdoll_ValidateBodyObj_60:
	mov byte [ebp-0x19], 0x0
	lea eax, [ebp-0x19]
	mov [esp+0x8], eax
	mov eax, [ebx+0x28]
	mov [esp+0x4], eax
	mov edx, [ebp-0x2c]
	mov [esp], edx
	call DObjGetBoneIndex
	test eax, eax
	jz Ragdoll_ValidateBodyObj_10
	cmp byte [ebp-0x19], 0xff
	jz Ragdoll_ValidateBodyObj_10
	mov byte [ebp-0x19], 0x0
	mov eax, [ebx+0x2c]
	test eax, eax
	jz Ragdoll_ValidateBodyObj_80
	lea edx, [ebp-0x19]
	mov [esp+0x8], edx
	mov [esp+0x4], eax
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call DObjGetBoneIndex
	test eax, eax
	jnz Ragdoll_ValidateBodyObj_80
Ragdoll_ValidateBodyObj_10:
	xor eax, eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;Ragdoll_BodyCenterOfMass(RagdollBody*, float*)
Ragdoll_BodyCenterOfMass:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov [ebp-0x34], eax
	mov esi, edx
	mov [esp], eax
	call Ragdoll_BodyDef
	mov edi, [ebp-0x34]
	add edi, 0x38
	lea ebx, [eax+0x8]
	mov eax, [ebp-0x34]
	mov ecx, [eax+0x34]
	test ecx, ecx
	jg Ragdoll_BodyCenterOfMass_10
	movss xmm1, dword [_float_ inf]
Ragdoll_BodyCenterOfMass_60:
	movaps xmm0, xmm1
	mulss xmm0, [esi]
	movss [esi], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [esi+0x4]
	movss [esi+0x4], xmm0
	mulss xmm1, [esi+0x8]
	movss [esi+0x8], xmm1
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Ragdoll_BodyCenterOfMass_10:
	mov dword [ebp-0x30], 0x0
	pxor xmm0, xmm0
	movss [ebp-0x2c], xmm0
	jmp Ragdoll_BodyCenterOfMass_20
Ragdoll_BodyCenterOfMass_40:
	add dword [ebp-0x30], 0x1
	add edi, 0x1c
	add ebx, 0x4c
	mov edx, [ebp-0x30]
	mov eax, [ebp-0x34]
	cmp edx, [eax+0x34]
	jge Ragdoll_BodyCenterOfMass_30
Ragdoll_BodyCenterOfMass_50:
	movss xmm0, dword [ebp-0x2c]
Ragdoll_BodyCenterOfMass_20:
	addss xmm0, [ebx+0x3c]
	movss [ebp-0x2c], xmm0
	mov eax, [edi+0x8]
	test eax, eax
	jz Ragdoll_BodyCenterOfMass_40
	lea edx, [ebp-0x24]
	mov [esp+0x4], edx
	mov [esp], eax
	call Phys_ObjGetCenterOfMass
	movss xmm0, dword [ebx+0x3c]
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x24]
	addss xmm1, [esi]
	movss [esi], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x20]
	addss xmm1, [esi+0x4]
	movss [esi+0x4], xmm1
	mulss xmm0, [ebp-0x1c]
	addss xmm0, [esi+0x8]
	movss [esi+0x8], xmm0
	add dword [ebp-0x30], 0x1
	add edi, 0x1c
	add ebx, 0x4c
	mov edx, [ebp-0x30]
	mov eax, [ebp-0x34]
	cmp edx, [eax+0x34]
	jl Ragdoll_BodyCenterOfMass_50
Ragdoll_BodyCenterOfMass_30:
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, dword [ebp-0x2c]
	jmp Ragdoll_BodyCenterOfMass_60


;Ragdoll_CreateBodyPhysics(RagdollBody*)
Ragdoll_CreateBodyPhysics:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x16c
	mov [ebp-0x130], eax
	mov [esp], eax
	call Ragdoll_BodyDef
	mov edx, [ebp-0x130]
	mov ecx, [edx+0x34]
	test ecx, ecx
	jg Ragdoll_CreateBodyPhysics_10
	mov ecx, edx
Ragdoll_CreateBodyPhysics_280:
	mov [esp], ecx
	call Ragdoll_BodyDef
	mov edx, [ebp-0x130]
	mov edx, [edx+0x20c]
	test edx, edx
	jle Ragdoll_CreateBodyPhysics_20
	mov dword [ebp-0x11c], 0x0
	lea edi, [eax+0x550]
	mov eax, [ebp-0x130]
	add eax, 0x210
	mov [ebp-0x138], eax
	mov ecx, [ebp-0x130]
Ragdoll_CreateBodyPhysics_90:
	lea edx, [edi+0x8]
	mov [ebp-0x118], edx
	movzx eax, byte [edi+0x8]
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	lea eax, [eax+ecx+0x30]
	lea edx, [eax+0x8]
	mov [ebp-0x114], edx
	mov edx, [eax+0x8]
	cmp edx, 0xffffffff
	jz Ragdoll_CreateBodyPhysics_30
	lea eax, [edx*4]
	shl edx, 0x5
	sub edx, eax
	lea edx, [edx+ecx+0x38]
	mov [ebp-0x110], edx
Ragdoll_CreateBodyPhysics_220:
	mov edx, [ebp-0x114]
	mov eax, [edx+0x8]
	test eax, eax
	jz Ragdoll_CreateBodyPhysics_40
	lea ecx, [ebp-0x8c]
	mov [esp+0x8], ecx
	lea edx, [ebp-0x3c]
	mov [esp+0x4], edx
	mov [esp], eax
	call Phys_ObjGetPosition
	lea ecx, [ebp-0xd4]
	mov [esp+0x4], ecx
	lea eax, [ebp-0x8c]
	mov [esp], eax
	call AxisTranspose
	mov eax, [edi+0x10]
	test eax, eax
	jz Ragdoll_CreateBodyPhysics_50
	mov eax, [edi+0x10]
	test eax, eax
	jg Ragdoll_CreateBodyPhysics_60
Ragdoll_CreateBodyPhysics_180:
	movss xmm1, dword [edi+0x50]
	mulss xmm1, [_float_15_00000000]
	movss [ebp-0x48], xmm1
	movss xmm0, dword [edi+0x54]
	mulss xmm0, [_float_15_00000000]
	movss [ebp-0x44], xmm0
	movss xmm0, dword [edi+0x58]
	mulss xmm0, [_float_15_00000000]
	movss [ebp-0x40], xmm0
	mov eax, [edi+0xc]
	cmp eax, 0x1
	jz Ragdoll_CreateBodyPhysics_70
	cmp eax, 0x2
	jz Ragdoll_CreateBodyPhysics_80
Ragdoll_CreateBodyPhysics_210:
	add dword [ebp-0x11c], 0x1
	add dword [ebp-0x138], 0x8
	add edi, 0x54
	mov eax, [ebp-0x11c]
	mov ecx, [ebp-0x130]
	cmp [ecx+0x20c], eax
	jg Ragdoll_CreateBodyPhysics_90
Ragdoll_CreateBodyPhysics_20:
	mov eax, 0x1
	add esp, 0x16c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Ragdoll_CreateBodyPhysics_10:
	mov esi, edx
	mov dword [ebp-0x12c], 0x0
	add eax, 0x8
	mov [ebp-0x13c], eax
	add edx, 0x30
	mov [ebp-0x140], edx
	add esi, 0x48
	mov ecx, [ebp-0x130]
Ragdoll_CreateBodyPhysics_400:
	mov [esp], ecx
	call Ragdoll_BodyDef
	mov eax, [ebp-0x130]
	mov [esp], eax
	call Ragdoll_BodyDObj
	mov edi, eax
	test eax, eax
	jz Ragdoll_CreateBodyPhysics_100
	mov byte [esi-0xc], 0x0
	mov byte [esi-0xb], 0x0
	mov eax, [ebp-0x140]
	add eax, 0xc
	mov [esp+0x8], eax
	mov edx, [ebp-0x13c]
	mov eax, [edx+0x28]
	mov [esp+0x4], eax
	mov [esp], edi
	call DObjGetBoneIndex
	test eax, eax
	jz Ragdoll_CreateBodyPhysics_100
	cmp byte [esi-0xc], 0xff
	jz Ragdoll_CreateBodyPhysics_100
	mov ecx, [ebp-0x13c]
	mov edx, [ecx+0x2c]
	test edx, edx
	jnz Ragdoll_CreateBodyPhysics_110
	mov byte [esi-0xb], 0x0
Ragdoll_CreateBodyPhysics_230:
	mov eax, [ebp-0x130]
	mov [esp], eax
	call Ragdoll_BodyPose
	mov ebx, eax
	lea edx, [ebp-0x8c]
	mov [esp+0x4], edx
	lea eax, [eax+0x28]
	mov [esp], eax
	call AnglesToAxis
	lea ecx, [ebp-0xd4]
	mov [esp+0x4], ecx
	lea eax, [ebp-0x8c]
	mov [esp], eax
	call AxisTranspose
	lea edx, [ebx+0x1c]
	mov [ebp-0x128], edx
	lea ecx, [ebp-0x8c]
	mov [esp+0x8], ecx
	movzx eax, byte [esi-0xc]
	mov [esp+0x4], eax
	mov [esp], edi
	call DObjGetBasePoseMatrix
	lea eax, [ebp-0xb0]
	mov [ebp-0x134], eax
	mov [esp+0x4], eax
	lea edx, [ebp-0xd4]
	mov [esp], edx
	call Ragdoll_Mat33ToQuat
	lea ecx, [ebp-0x58]
	mov [esp+0x8], ecx
	lea eax, [ebp-0x8c]
	mov [esp+0x4], eax
	mov edx, [ebp-0x134]
	mov [esp], edx
	call Ragdoll_QuatMul
	lea ecx, [ebp-0x24]
	mov [esp+0x8], ecx
	lea eax, [ebp-0xd4]
	mov [esp+0x4], eax
	lea eax, [ebp-0x7c]
	mov [esp], eax
	call Vec3Rotate
	movss xmm0, dword [ebx+0x1c]
	addss xmm0, [ebp-0x24]
	movss [ebp-0x24], xmm0
	lea edx, [ebx+0x20]
	mov [ebp-0x124], edx
	movss xmm0, dword [ebx+0x20]
	addss xmm0, [ebp-0x20]
	movss [ebp-0x20], xmm0
	lea ecx, [ebx+0x24]
	mov [ebp-0x120], ecx
	movss xmm0, dword [ebx+0x24]
	addss xmm0, [ebp-0x1c]
	movss [ebp-0x1c], xmm0
	mov eax, [ebp-0x13c]
	cmp byte [eax+0x34], 0x0
	jnz Ragdoll_CreateBodyPhysics_120
	mov eax, [ebp-0x58]
	mov [ebp-0x68], eax
	mov eax, [ebp-0x54]
	mov [ebp-0x64], eax
	mov eax, [ebp-0x50]
	mov [ebp-0x60], eax
	mov eax, [ebp-0x4c]
	mov [ebp-0x5c], eax
	lea ebx, [ebp-0x68]
Ragdoll_CreateBodyPhysics_300:
	movzx eax, byte [esi-0xb]
	test al, al
	jnz Ragdoll_CreateBodyPhysics_130
	mov eax, [ebp-0x24]
	mov [ebp-0x30], eax
	mov eax, [ebp-0x20]
	mov [ebp-0x2c], eax
	mov eax, [ebp-0x1c]
	mov [ebp-0x28], eax
Ragdoll_CreateBodyPhysics_290:
	mov dword [ebp-0xf4], 0x0
	mov eax, 0x3f800000
	mov [ebp-0xec], eax
	mov [ebp-0xe8], eax
	mov edx, [ebp-0x13c]
	mov eax, [edx+0x40]
	mov [ebp-0xf0], eax
	mov eax, [edx+0x3c]
	mov [ebp-0xf8], eax
	mov dword [ebp-0x100], _cstring_ragdoll_bone
	mov dword [ebp-0xfc], 0x0
	mov dword [ebp-0xe4], 0x0
	mov eax, [edx+0x44]
	mov [esi-0x10], eax
	lea eax, [ebp-0x100]
	mov [esp+0x10], eax
	mov eax, vec3_origin
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	lea ecx, [ebp-0x24]
	mov [esp+0x4], ecx
	mov dword [esp], 0x2
	call Phys_ObjCreate
	mov edx, eax
	mov [esi-0x8], eax
	test eax, eax
	jnz Ragdoll_CreateBodyPhysics_140
	mov dword [esp+0x4], _cstring_ragdoll_failed_t
	mov dword [esp], 0xe
	call Com_PrintWarning
Ragdoll_CreateBodyPhysics_100:
	mov ecx, [ebp-0x130]
	mov ebx, [ecx+0x34]
	test ebx, ebx
	jle Ragdoll_CreateBodyPhysics_150
	mov ebx, ecx
	xor esi, esi
	jmp Ragdoll_CreateBodyPhysics_160
Ragdoll_CreateBodyPhysics_170:
	mov dword [ebx+0x40], 0x0
	add esi, 0x1
	add ebx, 0x1c
	mov ecx, [ebp-0x130]
	cmp [ecx+0x34], esi
	jle Ragdoll_CreateBodyPhysics_150
Ragdoll_CreateBodyPhysics_160:
	mov eax, [ebx+0x40]
	test eax, eax
	jz Ragdoll_CreateBodyPhysics_170
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call Phys_ObjDestroy
	mov dword [ebx+0x40], 0x0
	add esi, 0x1
	add ebx, 0x1c
	mov ecx, [ebp-0x130]
	cmp [ecx+0x34], esi
	jg Ragdoll_CreateBodyPhysics_160
Ragdoll_CreateBodyPhysics_150:
	xor eax, eax
Ragdoll_CreateBodyPhysics_390:
	add esp, 0x16c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Ragdoll_CreateBodyPhysics_50:
	mov dword [edi+0x14], 0x0
	mov dword [edi+0x18], 0x0
	mov dword [edi+0x1c], 0x3f800000
	mov dword [edi+0x50], 0x0
	mov dword [edi+0x38], 0xbfc90fdb
	mov dword [edi+0x44], 0x3fc90fdb
	mov dword [edi+0x10], 0x1
	mov eax, [edi+0x10]
	test eax, eax
	jle Ragdoll_CreateBodyPhysics_180
Ragdoll_CreateBodyPhysics_60:
	mov dword [ebp-0x10c], 0x0
	lea edx, [ebp-0xb0]
	mov [ebp-0x134], edx
	mov ebx, [ebp-0x118]
	add ebx, 0xc
	xor esi, esi
	mov eax, edx
	jmp Ragdoll_CreateBodyPhysics_190
Ragdoll_CreateBodyPhysics_200:
	mov eax, [ebp-0x134]
Ragdoll_CreateBodyPhysics_190:
	add eax, esi
	mov [esp+0x8], eax
	lea ecx, [ebp-0xd4]
	mov [esp+0x4], ecx
	mov [esp], ebx
	call Vec3Rotate
	add dword [ebp-0x10c], 0x1
	add esi, 0xc
	add ebx, 0xc
	mov eax, [ebp-0x10c]
	cmp [edi+0x10], eax
	jg Ragdoll_CreateBodyPhysics_200
	jmp Ragdoll_CreateBodyPhysics_180
Ragdoll_CreateBodyPhysics_80:
	lea ecx, [ebp-0x3c]
	mov [esp+0xc], ecx
	mov edx, [ebp-0x110]
	mov eax, [edx+0x8]
	mov [esp+0x8], eax
	mov ecx, [ebp-0x114]
	mov eax, [ecx+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call Phys_CreateBallAndSocket
	mov edx, [ebp-0x138]
	mov [edx], eax
	mov eax, [ebp-0x118]
	add eax, 0x3c
	mov [esp+0x20], eax
	mov eax, [ebp-0x118]
	add eax, 0x30
	mov [esp+0x1c], eax
	lea eax, [ebp-0x48]
	mov [esp+0x18], eax
	mov eax, vec3_origin
	mov [esp+0x14], eax
	lea ecx, [ebp-0xb0]
	mov [esp+0x10], ecx
	mov eax, [edi+0x10]
	mov [esp+0xc], eax
	mov edx, [ebp-0x110]
	mov eax, [edx+0x8]
	mov [esp+0x8], eax
	mov ecx, [ebp-0x114]
	mov eax, [ecx+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call Phys_CreateAngularMotor
	mov edx, [ebp-0x138]
	mov [edx+0x4], eax
	jmp Ragdoll_CreateBodyPhysics_210
Ragdoll_CreateBodyPhysics_70:
	mov eax, [edi+0x44]
	mov [esp+0x20], eax
	mov eax, [edi+0x38]
	mov [esp+0x1c], eax
	movss [esp+0x18], xmm1
	mov dword [esp+0x14], 0x0
	lea edx, [ebp-0xb0]
	mov [esp+0x10], edx
	lea ecx, [ebp-0x3c]
	mov [esp+0xc], ecx
	mov edx, [ebp-0x110]
	mov eax, [edx+0x8]
	mov [esp+0x8], eax
	mov ecx, [ebp-0x114]
	mov eax, [ecx+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call Phys_CreateHinge
	mov edx, [ebp-0x138]
	mov [edx], eax
	mov dword [edx+0x4], 0x0
	jmp Ragdoll_CreateBodyPhysics_210
Ragdoll_CreateBodyPhysics_30:
	mov dword [ebp-0x110], 0x0
	jmp Ragdoll_CreateBodyPhysics_220
Ragdoll_CreateBodyPhysics_110:
	mov eax, [ebp-0x140]
	add eax, 0xd
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], edi
	call DObjGetBoneIndex
	test eax, eax
	jz Ragdoll_CreateBodyPhysics_100
	cmp byte [esi-0xc], 0xff
	jnz Ragdoll_CreateBodyPhysics_230
	jmp Ragdoll_CreateBodyPhysics_100
Ragdoll_CreateBodyPhysics_140:
	movss xmm0, dword [ebp-0x30]
	subss xmm0, [ebp-0x24]
	movss xmm1, dword [ebp-0x2c]
	subss xmm1, [ebp-0x20]
	movss xmm2, dword [ebp-0x28]
	subss xmm2, [ebp-0x1c]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm2, xmm0
	movss [esi-0x4], xmm2
	movaps xmm0, xmm2
	mulss xmm0, [_float_0_50000000]
	movss [esi], xmm0
	mov dword [esi+0x4], 0x0
	mov dword [esi+0x8], 0x0
	mov ecx, [ebp-0x13c]
	mov eax, [ecx+0x48]
	cmp eax, 0x4
	jz Ragdoll_CreateBodyPhysics_240
	cmp eax, 0x5
	jz Ragdoll_CreateBodyPhysics_250
	cmp eax, 0x1
	jz Ragdoll_CreateBodyPhysics_260
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_ragdoll_unknown_
	mov dword [esp], 0xe
	call Com_PrintWarning
Ragdoll_CreateBodyPhysics_310:
	add dword [ebp-0x12c], 0x1
	add dword [ebp-0x140], 0x1c
	add esi, 0x1c
	add dword [ebp-0x13c], 0x4c
	mov edx, [ebp-0x12c]
	mov eax, [ebp-0x130]
	cmp edx, [eax+0x34]
	jl Ragdoll_CreateBodyPhysics_270
	mov ecx, eax
	jmp Ragdoll_CreateBodyPhysics_280
Ragdoll_CreateBodyPhysics_130:
	lea ecx, [ebp-0xb0]
	mov [esp+0x8], ecx
	movzx eax, al
	mov [esp+0x4], eax
	mov [esp], edi
	call DObjGetBasePoseMatrix
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	lea eax, [ebp-0xd4]
	mov [esp+0x4], eax
	lea eax, [ebp-0xa0]
	mov [esp], eax
	call Vec3Rotate
	mov edx, [ebp-0x128]
	movss xmm0, dword [edx]
	addss xmm0, [ebp-0x30]
	movss [ebp-0x30], xmm0
	mov ecx, [ebp-0x124]
	movss xmm0, dword [ecx]
	addss xmm0, [ebp-0x2c]
	movss [ebp-0x2c], xmm0
	mov eax, [ebp-0x120]
	movss xmm0, dword [eax]
	addss xmm0, [ebp-0x28]
	movss [ebp-0x28], xmm0
	jmp Ragdoll_CreateBodyPhysics_290
Ragdoll_CreateBodyPhysics_120:
	lea ebx, [ebp-0x68]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], quatZRot
	lea edx, [ebp-0x58]
	mov [esp], edx
	call Ragdoll_QuatMul
	jmp Ragdoll_CreateBodyPhysics_300
Ragdoll_CreateBodyPhysics_240:
	mov [esp+0x14], esi
	movss [esp+0x10], xmm0
	mov eax, [ecx+0x30]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], edx
	mov dword [esp], 0x2
	call Phys_ObjAddGeomCylinderDirection
	jmp Ragdoll_CreateBodyPhysics_310
Ragdoll_CreateBodyPhysics_250:
	mov [esp+0x14], esi
	movss [esp+0x10], xmm0
	mov ecx, [ebp-0x13c]
	mov eax, [ecx+0x30]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], edx
	mov dword [esp], 0x2
	call Phys_ObjAddGeomCapsule
	jmp Ragdoll_CreateBodyPhysics_310
Ragdoll_CreateBodyPhysics_260:
	movss xmm0, dword [ecx+0x30]
	movaps xmm1, xmm0
	xorps xmm1, [_data16_80000000]
	mov dword [ebp-0x48], 0x0
	movss [ebp-0x44], xmm1
	movss [ebp-0x40], xmm1
	movss [ebp-0x38], xmm0
	movss [ebp-0x34], xmm0
	movss [ebp-0x3c], xmm2
	lea eax, [ebp-0x3c]
	mov [esp+0xc], eax
	lea eax, [ebp-0x48]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x2
	call Phys_ObjAddGeomBox
	jmp Ragdoll_CreateBodyPhysics_310
Ragdoll_CreateBodyPhysics_40:
	mov edx, [ebp-0x130]
	mov esi, [edx+0x34]
	test esi, esi
	jle Ragdoll_CreateBodyPhysics_320
	mov ebx, edx
	xor esi, esi
Ragdoll_CreateBodyPhysics_340:
	mov eax, [ebx+0x40]
	test eax, eax
	jz Ragdoll_CreateBodyPhysics_330
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call Phys_ObjDestroy
Ragdoll_CreateBodyPhysics_330:
	mov dword [ebx+0x40], 0x0
	add esi, 0x1
	add ebx, 0x1c
	mov edx, [ebp-0x130]
	cmp esi, [edx+0x34]
	jl Ragdoll_CreateBodyPhysics_340
Ragdoll_CreateBodyPhysics_320:
	mov ecx, [ebp-0x130]
	mov edi, [ecx+0x20c]
	test edi, edi
	jle Ragdoll_CreateBodyPhysics_350
	mov ebx, ecx
	xor esi, esi
Ragdoll_CreateBodyPhysics_380:
	mov eax, [ebx+0x210]
	test eax, eax
	jz Ragdoll_CreateBodyPhysics_360
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call Phys_JointDestroy
Ragdoll_CreateBodyPhysics_360:
	mov eax, [ebx+0x214]
	test eax, eax
	jz Ragdoll_CreateBodyPhysics_370
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call Phys_JointDestroy
Ragdoll_CreateBodyPhysics_370:
	add esi, 0x1
	add ebx, 0x8
	mov eax, [ebp-0x130]
	cmp esi, [eax+0x20c]
	jl Ragdoll_CreateBodyPhysics_380
Ragdoll_CreateBodyPhysics_350:
	mov eax, [ebp-0x130]
	add eax, 0x210
	mov dword [esp+0x8], 0xe0
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	xor eax, eax
	jmp Ragdoll_CreateBodyPhysics_390
Ragdoll_CreateBodyPhysics_270:
	mov ecx, eax
	jmp Ragdoll_CreateBodyPhysics_400
	nop


;Ragdoll_SnapshotBaseLerpOffsets(RagdollBody*)
Ragdoll_SnapshotBaseLerpOffsets:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x11c
	mov [ebp-0x108], eax
	mov [esp], eax
	call Ragdoll_BodyDef
	mov [ebp-0x104], eax
	mov eax, [ebp-0x108]
	mov [esp], eax
	call Ragdoll_BodyDObj
	mov [ebp-0x100], eax
	mov edi, [ebp-0x108]
	add edi, 0x1c4
	mov esi, [ebp-0x108]
	add esi, 0x8b4
	mov edx, [ebp-0x104]
	mov eax, [edx+0x430]
	test eax, eax
	jg Ragdoll_SnapshotBaseLerpOffsets_10
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Ragdoll_SnapshotBaseLerpOffsets_10:
	mov dword [ebp-0xfc], 0x0
Ragdoll_SnapshotBaseLerpOffsets_20:
	mov ebx, [edi]
	lea eax, [ebp-0x38]
	mov [esp+0x8], eax
	movzx eax, byte [edi+0x4]
	mov [esp+0x4], eax
	mov edx, [ebp-0x100]
	mov [esp], edx
	call DObjGetBasePoseMatrix
	lea eax, [ebp-0x58]
	mov [esp+0x8], eax
	lea eax, [ebx*4]
	shl ebx, 0x5
	sub ebx, eax
	mov edx, [ebp-0x108]
	movzx eax, byte [ebx+edx+0x3c]
	mov [esp+0x4], eax
	mov eax, [ebp-0x100]
	mov [esp], eax
	call DObjGetBasePoseMatrix
	movss xmm1, dword [ebp-0x3c]
	movaps xmm3, xmm1
	mulss xmm3, [ebp-0x58]
	movaps xmm5, xmm1
	mulss xmm5, [ebp-0x54]
	mulss xmm1, [ebp-0x50]
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x58]
	movss [ebp-0xf8], xmm0
	movss xmm6, dword [ebp-0x54]
	movaps xmm4, xmm3
	mulss xmm4, xmm6
	movss xmm2, dword [ebp-0x50]
	movaps xmm7, xmm3
	mulss xmm7, xmm2
	movss xmm0, dword [ebp-0x4c]
	mulss xmm3, xmm0
	mulss xmm6, xmm5
	movss [ebp-0xf4], xmm6
	movaps xmm6, xmm5
	mulss xmm6, xmm2
	mulss xmm5, xmm0
	mulss xmm2, xmm1
	mulss xmm1, xmm0
	movss [ebp-0x10c], xmm1
	movss xmm0, dword [ebp-0xf4]
	addss xmm0, xmm2
	movss xmm1, dword [_float_1_00000000]
	subss xmm1, xmm0
	movss [ebp-0x88], xmm1
	movaps xmm0, xmm4
	subss xmm0, [ebp-0x10c]
	movss [ebp-0x84], xmm0
	movaps xmm0, xmm7
	addss xmm0, xmm5
	movss [ebp-0x80], xmm0
	addss xmm4, [ebp-0x10c]
	movss [ebp-0x7c], xmm4
	addss xmm2, [ebp-0xf8]
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, xmm2
	movss [ebp-0x78], xmm0
	movaps xmm0, xmm6
	subss xmm0, xmm3
	movss [ebp-0x74], xmm0
	subss xmm7, xmm5
	movss [ebp-0x70], xmm7
	addss xmm3, xmm6
	movss [ebp-0x6c], xmm3
	movss xmm0, dword [ebp-0xf8]
	addss xmm0, [ebp-0xf4]
	movss [ebp-0xf8], xmm0
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, [ebp-0xf8]
	movss [ebp-0x68], xmm0
	movss xmm2, dword [ebp-0x48]
	movss xmm3, dword [ebp-0x44]
	movss xmm4, dword [ebp-0x40]
	movaps xmm0, xmm2
	mulss xmm0, xmm1
	movaps xmm1, xmm3
	mulss xmm1, [ebp-0x7c]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, xmm7
	addss xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x64], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x84]
	movaps xmm1, xmm3
	mulss xmm1, [ebp-0x78]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [ebp-0x6c]
	addss xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x60], xmm0
	mulss xmm2, [ebp-0x80]
	mulss xmm3, [ebp-0x74]
	addss xmm2, xmm3
	mulss xmm4, [ebp-0x68]
	addss xmm2, xmm4
	xorps xmm2, [_data16_80000000]
	movss [ebp-0x5c], xmm2
	movss xmm1, dword [ebp-0x1c]
	movaps xmm3, xmm1
	mulss xmm3, [ebp-0x38]
	movaps xmm5, xmm1
	mulss xmm5, [ebp-0x34]
	mulss xmm1, [ebp-0x30]
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x38]
	movss [ebp-0xf0], xmm0
	movss xmm6, dword [ebp-0x34]
	movaps xmm4, xmm3
	mulss xmm4, xmm6
	movss xmm2, dword [ebp-0x30]
	movaps xmm7, xmm3
	mulss xmm7, xmm2
	movss xmm0, dword [ebp-0x2c]
	mulss xmm3, xmm0
	mulss xmm6, xmm5
	movss [ebp-0xec], xmm6
	movaps xmm6, xmm5
	mulss xmm6, xmm2
	mulss xmm5, xmm0
	mulss xmm2, xmm1
	mulss xmm1, xmm0
	movss [ebp-0x10c], xmm1
	movss xmm0, dword [ebp-0xec]
	addss xmm0, xmm2
	movss xmm1, dword [_float_1_00000000]
	subss xmm1, xmm0
	movss [ebp-0xb8], xmm1
	movss xmm0, dword [ebp-0x10c]
	addss xmm0, xmm4
	movss [ebp-0xb4], xmm0
	movaps xmm0, xmm7
	subss xmm0, xmm5
	movss [ebp-0xb0], xmm0
	subss xmm4, [ebp-0x10c]
	movss [ebp-0xac], xmm4
	addss xmm2, [ebp-0xf0]
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, xmm2
	movss [ebp-0xa8], xmm0
	movaps xmm0, xmm3
	addss xmm0, xmm6
	movss [ebp-0xa4], xmm0
	addss xmm7, xmm5
	movss [ebp-0xa0], xmm7
	subss xmm6, xmm3
	movss [ebp-0x9c], xmm6
	movss xmm0, dword [ebp-0xf0]
	addss xmm0, [ebp-0xec]
	movss [ebp-0xf0], xmm0
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, [ebp-0xf0]
	movss [ebp-0x98], xmm0
	mov eax, [ebp-0x28]
	mov [ebp-0x94], eax
	mov eax, [ebp-0x24]
	mov [ebp-0x90], eax
	mov eax, [ebp-0x20]
	mov [ebp-0x8c], eax
	lea eax, [ebp-0xe8]
	mov [esp+0x8], eax
	lea edx, [ebp-0x88]
	mov [esp+0x4], edx
	lea eax, [ebp-0xb8]
	mov [esp], eax
	call MatrixMultiply43
	lea eax, [esi+0x10]
	mov [esp+0x4], eax
	lea edx, [ebp-0xe8]
	mov [esp], edx
	call AxisToQuat
	mov eax, [ebp-0xc4]
	mov [esi], eax
	mov eax, [ebp-0xc0]
	mov [esi+0x4], eax
	mov eax, [ebp-0xbc]
	mov [esi+0x8], eax
	add dword [ebp-0xfc], 0x1
	add edi, 0x8
	add esi, 0x20
	mov edx, [ebp-0xfc]
	mov eax, [ebp-0x104]
	cmp edx, [eax+0x430]
	jl Ragdoll_SnapshotBaseLerpOffsets_20
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Ragdoll_SnapshotBaseLerpBones(RagdollBody*, BoneOrientation*)
Ragdoll_SnapshotBaseLerpBones:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1ac
	mov [ebp-0x160], eax
	mov ebx, edx
	mov [esp], eax
	call Ragdoll_BodyDef
	mov [ebp-0x15c], eax
	mov eax, [ebp-0x160]
	mov [esp], eax
	call Ragdoll_BodyDObj
	mov [ebp-0x158], eax
	test eax, eax
	jz Ragdoll_SnapshotBaseLerpBones_10
	mov edx, [ebp-0x160]
	mov [esp], edx
	call Ragdoll_BodyPose
	mov [ebp-0x154], eax
	test eax, eax
	jz Ragdoll_SnapshotBaseLerpBones_10
	mov eax, [ebp-0x160]
	add eax, 0x1c4
	mov [ebp-0x150], eax
	mov edx, [ebp-0x160]
	mov eax, [edx+0x34]
	shl eax, 0x5
	add eax, ebx
	mov [ebp-0x12c], eax
	mov eax, [ebp-0x15c]
	mov ecx, [eax+0x430]
	test ecx, ecx
	jle Ragdoll_SnapshotBaseLerpBones_10
	mov [ebp-0x130], eax
	mov dword [ebp-0x144], 0x0
	add edx, 0x8c4
	mov [ebp-0x164], edx
	mov edx, eax
	jmp Ragdoll_SnapshotBaseLerpBones_20
Ragdoll_SnapshotBaseLerpBones_60:
	mov edx, [ebp-0x164]
	mov eax, [edx]
	mov [ebp-0x34], eax
	mov eax, [edx+0x4]
	mov [ebp-0x30], eax
	mov eax, [edx+0x8]
	mov [ebp-0x2c], eax
	mov eax, [edx+0xc]
	mov [ebp-0x28], eax
	mov eax, [edx-0x10]
	mov [ebp-0x24], eax
	mov eax, [edx-0xc]
	mov [ebp-0x20], eax
	mov eax, [edx-0x8]
	mov [ebp-0x1c], eax
	lea esi, [ebp-0x34]
Ragdoll_SnapshotBaseLerpBones_70:
	mov ebx, [ebp-0x14c]
	add ebx, 0x10
	mov eax, [ebp-0x12c]
	add eax, 0x10
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov [esp], ebx
	call Ragdoll_QuatMul
	lea esi, [ebp-0x8c]
	mov [esp+0x4], esi
	mov [esp], ebx
	call QuatToAxis
	lea ebx, [ebp-0x68]
	mov [esp+0x4], ebx
	mov [esp], esi
	call AxisTranspose
	mov edx, [ebp-0x12c]
	mov [esp+0x8], edx
	mov [esp+0x4], ebx
	lea eax, [ebp-0x24]
	mov [esp], eax
	call Vec3Rotate
	mov eax, [ebp-0x14c]
	movss xmm0, dword [eax]
	mov edx, [ebp-0x12c]
	addss xmm0, [edx]
	movss [edx], xmm0
	movss xmm0, dword [eax+0x4]
	addss xmm0, [edx+0x4]
	movss [edx+0x4], xmm0
	movss xmm0, dword [eax+0x8]
	addss xmm0, [edx+0x8]
	movss [edx+0x8], xmm0
	add dword [ebp-0x144], 0x1
	add dword [ebp-0x150], 0x8
	add dword [ebp-0x164], 0x20
	add edx, 0x20
	mov [ebp-0x12c], edx
	add dword [ebp-0x130], 0x20
	mov edx, [ebp-0x144]
	mov eax, [ebp-0x15c]
	cmp [eax+0x430], edx
	jle Ragdoll_SnapshotBaseLerpBones_10
	mov edx, [ebp-0x130]
Ragdoll_SnapshotBaseLerpBones_20:
	mov eax, [edx+0x450]
	test eax, eax
	jle Ragdoll_SnapshotBaseLerpBones_30
	mov edx, [ebp-0x160]
	cvtsi2ss xmm1, dword [edx+0x28]
	cvtsi2ss xmm0, eax
	divss xmm1, xmm0
	movss xmm3, dword [_float_1_00000000]
	movaps xmm0, xmm1
	subss xmm0, xmm3
	pxor xmm2, xmm2
	cmpss xmm2, xmm0, 0x6
	movaps xmm0, xmm2
	movaps xmm2, xmm1
	andps xmm2, xmm0
	andnps xmm0, xmm3
	orps xmm0, xmm2
	movss [ebp-0x148], xmm0
	pxor xmm0, xmm0
	subss xmm0, xmm1
	pxor xmm1, xmm1
	cmpss xmm1, xmm0, 0x6
	movss xmm2, dword [ebp-0x148]
	andps xmm2, xmm1
	pxor xmm0, xmm0
	orps xmm2, xmm0
	movss [ebp-0x148], xmm2
Ragdoll_SnapshotBaseLerpBones_80:
	mov eax, [ebp-0x150]
	movzx esi, byte [eax+0x4]
	mov ebx, [eax]
	mov [esp], edx
	call Ragdoll_BodyBoneOrientations
	mov edx, ebx
	shl edx, 0x5
	add eax, edx
	mov [ebp-0x14c], eax
	shl ebx, 0x2
	sub edx, ebx
	mov eax, [ebp-0x160]
	movzx edi, byte [edx+eax+0x3c]
	mov edx, esi
	movzx ebx, dl
	mov [esp+0x8], ebx
	mov eax, [ebp-0x158]
	mov [esp+0x4], eax
	mov edx, [ebp-0x154]
	mov [esp], edx
	call CG_DObjCalcBone
	mov eax, [ebp-0x158]
	mov [esp], eax
	call DObjGetRotTransArray
	test eax, eax
	jz Ragdoll_SnapshotBaseLerpBones_40
	shl ebx, 0x5
	lea esi, [eax+ebx]
Ragdoll_SnapshotBaseLerpBones_90:
	mov edx, edi
	movzx ebx, dl
	mov [esp+0x8], ebx
	mov eax, [ebp-0x158]
	mov [esp+0x4], eax
	mov edx, [ebp-0x154]
	mov [esp], edx
	call CG_DObjCalcBone
	mov eax, [ebp-0x158]
	mov [esp], eax
	call DObjGetRotTransArray
	test eax, eax
	jz Ragdoll_SnapshotBaseLerpBones_50
	shl ebx, 0x5
	add eax, ebx
Ragdoll_SnapshotBaseLerpBones_50:
	test esi, esi
	jz Ragdoll_SnapshotBaseLerpBones_10
	test eax, eax
	jz Ragdoll_SnapshotBaseLerpBones_10
	cmp esi, eax
	jz Ragdoll_SnapshotBaseLerpBones_10
	movss xmm1, dword [eax+0x1c]
	movaps xmm3, xmm1
	mulss xmm3, [eax]
	movaps xmm5, xmm1
	mulss xmm5, [eax+0x4]
	mulss xmm1, [eax+0x8]
	movaps xmm0, xmm3
	mulss xmm0, [eax]
	movss [ebp-0x140], xmm0
	movss xmm6, dword [eax+0x4]
	movaps xmm4, xmm3
	mulss xmm4, xmm6
	movss xmm2, dword [eax+0x8]
	movaps xmm7, xmm3
	mulss xmm7, xmm2
	movss xmm0, dword [eax+0xc]
	mulss xmm3, xmm0
	mulss xmm6, xmm5
	movss [ebp-0x13c], xmm6
	movaps xmm6, xmm5
	mulss xmm6, xmm2
	mulss xmm5, xmm0
	mulss xmm2, xmm1
	mulss xmm1, xmm0
	movss [ebp-0x19c], xmm1
	movss xmm0, dword [ebp-0x13c]
	addss xmm0, xmm2
	movss xmm1, dword [_float_1_00000000]
	subss xmm1, xmm0
	movss [ebp-0xbc], xmm1
	movaps xmm0, xmm4
	subss xmm0, [ebp-0x19c]
	movss [ebp-0xb8], xmm0
	movaps xmm0, xmm7
	addss xmm0, xmm5
	movss [ebp-0xb4], xmm0
	addss xmm4, [ebp-0x19c]
	movss [ebp-0xb0], xmm4
	addss xmm2, [ebp-0x140]
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, xmm2
	movss [ebp-0xac], xmm0
	movaps xmm0, xmm6
	subss xmm0, xmm3
	movss [ebp-0xa8], xmm0
	subss xmm7, xmm5
	movss [ebp-0xa4], xmm7
	addss xmm3, xmm6
	movss [ebp-0xa0], xmm3
	movss xmm2, dword [ebp-0x140]
	addss xmm2, [ebp-0x13c]
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, xmm2
	movss [ebp-0x9c], xmm0
	movss xmm1, dword [eax+0x10]
	mulss xmm1, [ebp-0xbc]
	movss xmm0, dword [eax+0x14]
	mulss xmm0, xmm4
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x18]
	mulss xmm0, xmm7
	addss xmm1, xmm0
	xorps xmm1, [_data16_80000000]
	movss [ebp-0x98], xmm1
	movss xmm1, dword [eax+0x10]
	mulss xmm1, [ebp-0xb8]
	movss xmm0, dword [eax+0x14]
	mulss xmm0, [ebp-0xac]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x18]
	mulss xmm0, xmm3
	addss xmm1, xmm0
	xorps xmm1, [_data16_80000000]
	movss [ebp-0x94], xmm1
	movss xmm1, dword [eax+0x10]
	mulss xmm1, [ebp-0xb4]
	movss xmm0, dword [eax+0x14]
	mulss xmm0, [ebp-0xa8]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x18]
	mulss xmm0, [ebp-0x9c]
	addss xmm1, xmm0
	xorps xmm1, [_data16_80000000]
	movss [ebp-0x90], xmm1
	movss xmm1, dword [esi+0x1c]
	movaps xmm3, xmm1
	mulss xmm3, [esi]
	movaps xmm5, xmm1
	mulss xmm5, [esi+0x4]
	mulss xmm1, [esi+0x8]
	movaps xmm0, xmm3
	mulss xmm0, [esi]
	movss [ebp-0x138], xmm0
	movss xmm6, dword [esi+0x4]
	movaps xmm4, xmm3
	mulss xmm4, xmm6
	movss xmm2, dword [esi+0x8]
	movaps xmm7, xmm3
	mulss xmm7, xmm2
	movss xmm0, dword [esi+0xc]
	mulss xmm3, xmm0
	mulss xmm6, xmm5
	movss [ebp-0x134], xmm6
	movaps xmm6, xmm5
	mulss xmm6, xmm2
	mulss xmm5, xmm0
	mulss xmm2, xmm1
	mulss xmm1, xmm0
	movss [ebp-0x19c], xmm1
	movss xmm0, dword [ebp-0x134]
	addss xmm0, xmm2
	movss xmm1, dword [_float_1_00000000]
	subss xmm1, xmm0
	movss [ebp-0xec], xmm1
	movss xmm0, dword [ebp-0x19c]
	addss xmm0, xmm4
	movss [ebp-0xe8], xmm0
	movaps xmm0, xmm7
	subss xmm0, xmm5
	movss [ebp-0xe4], xmm0
	subss xmm4, [ebp-0x19c]
	movss [ebp-0xe0], xmm4
	addss xmm2, [ebp-0x138]
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, xmm2
	movss [ebp-0xdc], xmm0
	movaps xmm0, xmm3
	addss xmm0, xmm6
	movss [ebp-0xd8], xmm0
	addss xmm7, xmm5
	movss [ebp-0xd4], xmm7
	subss xmm6, xmm3
	movss [ebp-0xd0], xmm6
	movss xmm2, dword [ebp-0x138]
	addss xmm2, [ebp-0x134]
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, xmm2
	movss [ebp-0xcc], xmm0
	lea edx, [esi+0x10]
	mov eax, [esi+0x10]
	mov [ebp-0xc8], eax
	mov eax, [edx+0x4]
	mov [ebp-0xc4], eax
	mov eax, [edx+0x8]
	mov [ebp-0xc0], eax
	lea ebx, [ebp-0x11c]
	mov [esp+0x8], ebx
	lea eax, [ebp-0xbc]
	mov [esp+0x4], eax
	lea eax, [ebp-0xec]
	mov [esp], eax
	call MatrixMultiply43
	lea edx, [ebp-0x44]
	mov [esp+0x4], edx
	mov [esp], ebx
	call AxisToQuat
	movss xmm2, dword [ebp-0xf8]
	movss xmm3, dword [ebp-0xf4]
	movss xmm4, dword [ebp-0xf0]
	movaps xmm0, xmm2
	mulss xmm0, xmm2
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	addss xmm0, xmm1
	sqrtss xmm0, xmm0
	ucomiss xmm0, [_float_400_00000000]
	ja Ragdoll_SnapshotBaseLerpBones_60
	lea esi, [ebp-0x34]
	mov [esp+0xc], esi
	movss xmm0, dword [ebp-0x148]
	movss [esp+0x8], xmm0
	mov eax, [ebp-0x164]
	mov [esp+0x4], eax
	lea edx, [ebp-0x44]
	mov [esp], edx
	movss [ebp-0x178], xmm2
	movss [ebp-0x188], xmm3
	movss [ebp-0x198], xmm4
	call Ragdoll_QuatLerp
	mov eax, [ebp-0x164]
	movss xmm0, dword [eax-0x10]
	movss xmm2, dword [ebp-0x178]
	subss xmm0, xmm2
	mulss xmm0, [ebp-0x148]
	addss xmm2, xmm0
	movss [ebp-0x24], xmm2
	movss xmm0, dword [eax-0xc]
	movss xmm3, dword [ebp-0x188]
	subss xmm0, xmm3
	mulss xmm0, [ebp-0x148]
	addss xmm3, xmm0
	movss [ebp-0x20], xmm3
	movss xmm0, dword [eax-0x8]
	movss xmm4, dword [ebp-0x198]
	subss xmm0, xmm4
	mulss xmm0, [ebp-0x148]
	addss xmm4, xmm0
	movss [ebp-0x1c], xmm4
	jmp Ragdoll_SnapshotBaseLerpBones_70
Ragdoll_SnapshotBaseLerpBones_10:
	add esp, 0x1ac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Ragdoll_SnapshotBaseLerpBones_30:
	movss xmm0, dword [_float_1_00000000]
	movss [ebp-0x148], xmm0
	mov edx, [ebp-0x160]
	jmp Ragdoll_SnapshotBaseLerpBones_80
Ragdoll_SnapshotBaseLerpBones_40:
	xor esi, esi
	jmp Ragdoll_SnapshotBaseLerpBones_90


;Ragdoll_SnapshotBonePositions(RagdollBody*, BoneOrientation*)
Ragdoll_SnapshotBonePositions:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov [ebp-0x30], eax
	mov [ebp-0x34], edx
	mov edx, eax
	mov eax, [eax+0x24]
	sub eax, 0x3
	cmp eax, 0x1
	jbe Ragdoll_SnapshotBonePositions_10
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Ragdoll_SnapshotBonePositions_10:
	mov [esp], edx
	call Ragdoll_BodyDef
	mov edi, [ebp-0x30]
	add edi, 0x38
	lea esi, [eax+0x8]
	mov eax, [ebp-0x30]
	mov ebx, [eax+0x34]
	test ebx, ebx
	jg Ragdoll_SnapshotBonePositions_20
Ragdoll_SnapshotBonePositions_60:
	mov edx, [ebp-0x34]
	call Ragdoll_SnapshotBaseLerpBones
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Ragdoll_SnapshotBonePositions_20:
	mov ebx, [ebp-0x34]
	mov dword [ebp-0x2c], 0x0
	jmp Ragdoll_SnapshotBonePositions_30
Ragdoll_SnapshotBonePositions_50:
	mov eax, [ebp-0x28]
	mov [ebx+0x10], eax
	mov eax, [ebp-0x24]
	mov [edx+0x4], eax
	mov eax, [ebp-0x20]
	mov [edx+0x8], eax
	mov eax, [ebp-0x1c]
	mov [edx+0xc], eax
	add dword [ebp-0x2c], 0x1
	add edi, 0x1c
	add ebx, 0x20
	add esi, 0x4c
	mov eax, [ebp-0x2c]
	mov edx, [ebp-0x30]
	cmp [edx+0x34], eax
	jle Ragdoll_SnapshotBonePositions_40
Ragdoll_SnapshotBonePositions_30:
	lea edx, [ebp-0x28]
	mov [esp+0xc], edx
	mov [esp+0x8], ebx
	mov eax, [edi+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call Phys_ObjGetInterpolatedState
	lea edx, [ebx+0x10]
	cmp byte [esi+0x34], 0x0
	jz Ragdoll_SnapshotBonePositions_50
	mov [esp+0x8], edx
	mov dword [esp+0x4], quatZRot
	lea eax, [ebp-0x28]
	mov [esp], eax
	call Ragdoll_QuatMul
	add dword [ebp-0x2c], 0x1
	add edi, 0x1c
	add ebx, 0x20
	add esi, 0x4c
	mov eax, [ebp-0x2c]
	mov edx, [ebp-0x30]
	cmp [edx+0x34], eax
	jg Ragdoll_SnapshotBonePositions_30
Ragdoll_SnapshotBonePositions_40:
	mov eax, edx
	jmp Ragdoll_SnapshotBonePositions_60


;Ragdoll_SnapshotAnimOrientations(RagdollBody*, BoneOrientation*)
Ragdoll_SnapshotAnimOrientations:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov [ebp-0x2c], eax
	mov esi, edx
	mov [esp], eax
	call Ragdoll_BodyDef
	mov ebx, eax
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call Ragdoll_BodyDObj
	mov [ebp-0x1c], eax
	mov edx, [ebp-0x2c]
	mov [esp], edx
	call Ragdoll_BodyPose
	mov [ebp-0x20], eax
	test ebx, ebx
	jz Ragdoll_SnapshotAnimOrientations_10
	mov ecx, [ebp-0x1c]
	test ecx, ecx
	jz Ragdoll_SnapshotAnimOrientations_10
	test eax, eax
	jz Ragdoll_SnapshotAnimOrientations_10
	mov eax, [ebp-0x2c]
	add eax, 0x38
	mov [ebp-0x24], eax
	mov edx, [ebp-0x2c]
	mov eax, [edx+0x34]
	test eax, eax
	jg Ragdoll_SnapshotAnimOrientations_20
Ragdoll_SnapshotAnimOrientations_30:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Ragdoll_SnapshotAnimOrientations_10:
	mov eax, [ebp-0x2c]
	mov ebx, [eax+0x24]
	test ebx, ebx
	jz Ragdoll_SnapshotAnimOrientations_30
	lea eax, [ebx+ebx*2]
	mov eax, [eax*4+stateEntries+0x4]
	test eax, eax
	jz Ragdoll_SnapshotAnimOrientations_40
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov edx, [ebp-0x2c]
	mov [esp], edx
	call eax
	test al, al
	jz Ragdoll_SnapshotAnimOrientations_30
Ragdoll_SnapshotAnimOrientations_40:
	mov eax, [ebp-0x2c]
	mov dword [eax+0x24], 0x0
	mov eax, [stateEntries]
	test eax, eax
	jz Ragdoll_SnapshotAnimOrientations_50
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov edx, [ebp-0x2c]
	mov [esp], edx
	call eax
	test al, al
	jnz Ragdoll_SnapshotAnimOrientations_50
	mov eax, [ebp-0x2c]
	mov edx, [eax+0x24]
	test edx, edx
	jnz Ragdoll_SnapshotAnimOrientations_30
	mov [eax+0x24], ebx
	jmp Ragdoll_SnapshotAnimOrientations_30
Ragdoll_SnapshotAnimOrientations_20:
	mov dword [ebp-0x28], 0x0
Ragdoll_SnapshotAnimOrientations_70:
	lea edi, [esi+0x10]
	mov eax, [ebp-0x24]
	movzx ebx, byte [eax+0x4]
	mov [esp+0x8], ebx
	mov edx, [ebp-0x1c]
	mov [esp+0x4], edx
	mov eax, [ebp-0x20]
	mov [esp], eax
	call CG_DObjCalcBone
	mov edx, [ebp-0x1c]
	mov [esp], edx
	call DObjGetRotTransArray
	test eax, eax
	jz Ragdoll_SnapshotAnimOrientations_60
	shl ebx, 0x5
	mov edx, eax
	add edx, ebx
	jz Ragdoll_SnapshotAnimOrientations_60
	mov eax, [edx]
	mov [esi+0x10], eax
	mov eax, [edx+0x4]
	mov [edi+0x4], eax
	mov eax, [edx+0x8]
	mov [edi+0x8], eax
	mov eax, [edx+0xc]
	mov [edi+0xc], eax
	lea eax, [edx+0x10]
	movss xmm0, dword [edx+0x10]
	mov edx, cgArray
	addss xmm0, [edx+0x49310]
	movss [esi], xmm0
	movss xmm0, dword [eax+0x4]
	addss xmm0, [edx+0x49314]
	movss [esi+0x4], xmm0
	movss xmm0, dword [eax+0x8]
	addss xmm0, [edx+0x49318]
	movss [esi+0x8], xmm0
Ragdoll_SnapshotAnimOrientations_60:
	add dword [ebp-0x28], 0x1
	add dword [ebp-0x24], 0x1c
	add esi, 0x20
	mov edx, [ebp-0x28]
	mov eax, [ebp-0x2c]
	cmp edx, [eax+0x34]
	jl Ragdoll_SnapshotAnimOrientations_70
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Ragdoll_SnapshotAnimOrientations_50:
	mov edx, [ebp-0x2c]
	mov dword [edx+0x2c], 0x0
	mov dword [edx+0x28], 0x0
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Ragdoll_Update(int)
Ragdoll_Update:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov eax, ragdollInited
	cmp byte [eax], 0x0
	jz Ragdoll_Update_10
	mov eax, ragdoll_enable
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz Ragdoll_Update_10
	mov eax, cg_paused
	mov eax, [eax]
	test eax, eax
	jz Ragdoll_Update_10
	mov eax, [eax+0xc]
	test eax, eax
	jnz Ragdoll_Update_10
	mov eax, [ebp+0x8]
	add [ragdollTime], eax
	xor edi, edi
	mov esi, ragdollBodies
Ragdoll_Update_50:
	mov eax, [esi]
	test eax, eax
	jle Ragdoll_Update_20
Ragdoll_Update_40:
	mov ebx, [esi+0x24]
	lea eax, [ebx+ebx*2]
	mov eax, [eax*4+stateEntries+0x8]
	test eax, eax
	jz Ragdoll_Update_30
	mov [esp], esi
	call eax
Ragdoll_Update_30:
	cmp ebx, [esi+0x24]
	jnz Ragdoll_Update_40
	add dword [esi+0x2c], 0x1
	mov eax, [ebp+0x8]
	add [esi+0x28], eax
Ragdoll_Update_20:
	add edi, 0x1
	add esi, 0x9d4
	cmp edi, 0x20
	jnz Ragdoll_Update_50
	mov dword [esp+0x4], Ragdoll_GenerateAllSelfCollisionContacts
	mov dword [esp], 0x2
	call Phys_SetCollisionCallback
	mov eax, [ragdollTime]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2
	mov dword [esp], 0x0
	call Phys_RunToTime
Ragdoll_Update_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Ragdoll_BodyNewState(RagdollBody*, BodyState)
Ragdoll_BodyNewState:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov ebx, [edi+0x24]
	cmp ebx, esi
	jz Ragdoll_BodyNewState_10
	lea eax, [ebx+ebx*2]
	mov eax, [eax*4+stateEntries+0x4]
	test eax, eax
	jz Ragdoll_BodyNewState_20
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov [esp], edi
	call eax
	test al, al
	jz Ragdoll_BodyNewState_30
Ragdoll_BodyNewState_20:
	mov [edi+0x24], esi
	lea eax, [esi+esi*2]
	mov eax, [eax*4+stateEntries]
	test eax, eax
	jz Ragdoll_BodyNewState_40
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov [esp], edi
	call eax
	test al, al
	jnz Ragdoll_BodyNewState_40
	cmp esi, [edi+0x24]
	jz Ragdoll_BodyNewState_50
Ragdoll_BodyNewState_30:
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Ragdoll_BodyNewState_40:
	mov dword [edi+0x2c], 0x0
	mov dword [edi+0x28], 0x0
Ragdoll_BodyNewState_10:
	mov eax, 0x1
Ragdoll_BodyNewState_60:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Ragdoll_BodyNewState_50:
	mov [edi+0x24], ebx
	xor eax, eax
	jmp Ragdoll_BodyNewState_60


;Ragdoll_ExplosionEvent(int, unsigned char, float const*, float, float, float const*, float)
Ragdoll_ExplosionEvent:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	movzx eax, byte [ebp+0xc]
	mov [ebp-0x61], al
	call CL_GetFirstActiveLocalClient
	cmp eax, [ebp+0x8]
	jz Ragdoll_ExplosionEvent_10
Ragdoll_ExplosionEvent_30:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Ragdoll_ExplosionEvent_10:
	pxor xmm0, xmm0
	movss xmm1, dword [ebp+0x18]
	ucomiss xmm1, xmm0
	jp Ragdoll_ExplosionEvent_20
	jz Ragdoll_ExplosionEvent_30
Ragdoll_ExplosionEvent_20:
	mulss xmm1, xmm1
	movss [ebp-0x44], xmm1
	movss xmm1, dword [ebp+0x14]
	mulss xmm1, xmm1
	movss [ebp-0x48], xmm1
	movss xmm1, dword [ebp-0x44]
	ucomiss xmm1, [ebp-0x48]
	ja Ragdoll_ExplosionEvent_40
	movss [ebp-0x40], xmm0
Ragdoll_ExplosionEvent_110:
	xor esi, esi
	mov ebx, ragdollBodies
	jmp Ragdoll_ExplosionEvent_50
Ragdoll_ExplosionEvent_60:
	add esi, 0x1
	add ebx, 0x9d4
	cmp esi, 0x20
	jz Ragdoll_ExplosionEvent_30
Ragdoll_ExplosionEvent_50:
	mov edi, [ebx]
	test edi, edi
	jle Ragdoll_ExplosionEvent_60
	cmp dword [ebx+0x24], 0x3
	jle Ragdoll_ExplosionEvent_60
	mov [esp], ebx
	call Ragdoll_BodyBoneOrientations
	movss xmm4, dword [eax]
	movss xmm2, dword [eax+0x4]
	movss xmm3, dword [eax+0x8]
	cmp byte [ebp-0x61], 0x0
	jz Ragdoll_ExplosionEvent_70
	mov eax, [ebp+0x10]
	movss xmm1, dword [eax+0x4]
	subss xmm1, xmm2
	movss xmm0, dword [eax]
	subss xmm0, xmm4
	pxor xmm2, xmm2
Ragdoll_ExplosionEvent_120:
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	addss xmm0, xmm2
	ucomiss xmm0, [ebp-0x44]
	jae Ragdoll_ExplosionEvent_60
	cmp dword [ebx+0x24], 0x5
	jnz Ragdoll_ExplosionEvent_80
	mov eax, [stateEntries+0x40]
	test eax, eax
	jz Ragdoll_ExplosionEvent_90
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x5
	mov [esp], ebx
	call eax
	test al, al
	jz Ragdoll_ExplosionEvent_60
Ragdoll_ExplosionEvent_90:
	mov dword [ebx+0x24], 0x4
	mov eax, [stateEntries+0x30]
	test eax, eax
	jz Ragdoll_ExplosionEvent_100
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x5
	mov [esp], ebx
	call eax
	test al, al
	jnz Ragdoll_ExplosionEvent_100
	cmp dword [ebx+0x24], 0x4
	jnz Ragdoll_ExplosionEvent_60
	mov dword [ebx+0x24], 0x5
	jmp Ragdoll_ExplosionEvent_60
Ragdoll_ExplosionEvent_40:
	movaps xmm0, xmm1
	subss xmm0, [ebp-0x48]
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm0
	movss [ebp-0x40], xmm1
	jmp Ragdoll_ExplosionEvent_110
Ragdoll_ExplosionEvent_70:
	movaps xmm0, xmm4
	mov edx, [ebp+0x10]
	subss xmm0, [edx]
	movaps xmm1, xmm2
	subss xmm1, [edx+0x4]
	movaps xmm2, xmm3
	subss xmm2, [edx+0x8]
	mulss xmm2, xmm2
	jmp Ragdoll_ExplosionEvent_120
Ragdoll_ExplosionEvent_100:
	mov dword [ebx+0x2c], 0x0
	mov dword [ebx+0x28], 0x0
Ragdoll_ExplosionEvent_80:
	mov dword [ebx+0x28], 0x0
	mov eax, [ebx+0x34]
	cvtsi2ss xmm0, eax
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm0
	movss [ebp-0x3c], xmm1
	test eax, eax
	jle Ragdoll_ExplosionEvent_60
	mov dword [ebp-0x4c], 0x0
	lea edi, [ebx+0x38]
	jmp Ragdoll_ExplosionEvent_130
Ragdoll_ExplosionEvent_140:
	add dword [ebp-0x4c], 0x1
	add edi, 0x1c
	mov edx, [ebp-0x4c]
	cmp [ebx+0x34], edx
	jle Ragdoll_ExplosionEvent_60
Ragdoll_ExplosionEvent_130:
	mov eax, [edi+0x8]
	test eax, eax
	jz Ragdoll_ExplosionEvent_140
	lea edx, [ebp-0x30]
	mov [esp+0x4], edx
	mov [esp], eax
	call Phys_ObjGetCenterOfMass
	movss xmm0, dword [ebp-0x30]
	movss [ebp-0x60], xmm0
	mov dword [esp+0x4], 0x3f800000
	mov dword [esp], 0xbf800000
	call flrand
	fstp dword [ebp-0x5c]
	movss xmm1, dword [ebp-0x60]
	addss xmm1, [ebp-0x5c]
	movss [ebp-0x30], xmm1
	movss xmm0, dword [ebp-0x2c]
	movss [ebp-0x58], xmm0
	mov dword [esp+0x4], 0x3f800000
	mov dword [esp], 0xbf800000
	call flrand
	fstp dword [ebp-0x54]
	movss xmm1, dword [ebp-0x58]
	addss xmm1, [ebp-0x54]
	movss [ebp-0x2c], xmm1
	movss xmm0, dword [ebp-0x28]
	movss [ebp-0x50], xmm0
	mov dword [esp+0x4], 0x3f800000
	mov dword [esp], 0xbf800000
	call flrand
	fstp dword [ebp-0x6c]
	movss xmm0, dword [ebp-0x6c]
	addss xmm0, [ebp-0x50]
	movss [ebp-0x28], xmm0
	movss xmm3, dword [ebp-0x30]
	mov eax, [ebp+0x10]
	subss xmm3, [eax]
	movss xmm2, dword [ebp-0x2c]
	subss xmm2, [eax+0x4]
	movaps xmm4, xmm0
	subss xmm4, [eax+0x8]
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	movaps xmm0, xmm2
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	addss xmm1, xmm0
	ucomiss xmm1, [ebp-0x44]
	jae Ragdoll_ExplosionEvent_140
	ucomiss xmm1, [ebp-0x48]
	ja Ragdoll_ExplosionEvent_150
	movss xmm5, dword [ebp+0x20]
Ragdoll_ExplosionEvent_230:
	mov edx, [ebp+0x1c]
	movss xmm1, dword [edx]
	mov ecx, vec3_origin
	ucomiss xmm1, [ecx]
	jnz Ragdoll_ExplosionEvent_160
	jp Ragdoll_ExplosionEvent_160
	mov eax, edx
	add eax, 0x4
	movss xmm0, dword [ecx+0x4]
	ucomiss xmm0, [edx+0x4]
	jp Ragdoll_ExplosionEvent_170
	jnz Ragdoll_ExplosionEvent_170
	mov edx, [ebp+0x1c]
	add edx, 0x8
	mov ecx, vec3_origin
	movss xmm0, dword [ecx+0x8]
	mov ecx, [ebp+0x1c]
	ucomiss xmm0, [ecx+0x8]
	jnz Ragdoll_ExplosionEvent_180
	jp Ragdoll_ExplosionEvent_180
	movss [ebp-0x24], xmm3
	movss [ebp-0x20], xmm2
	movss [ebp-0x1c], xmm4
	cmp byte [ebp-0x61], 0x0
	jz Ragdoll_ExplosionEvent_190
	pxor xmm7, xmm7
	movss [ebp-0x1c], xmm7
	movaps xmm2, xmm7
Ragdoll_ExplosionEvent_250:
	movss xmm3, dword [ebp-0x24]
	movss xmm0, dword [ebp-0x20]
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	mulss xmm0, xmm0
	addss xmm1, xmm0
	mulss xmm2, xmm2
	addss xmm1, xmm2
	sqrtss xmm1, xmm1
	movss xmm4, dword [_data16_80000000]
	movaps xmm0, xmm1
	xorps xmm0, xmm4
	ucomiss xmm0, xmm7
	jb Ragdoll_ExplosionEvent_200
	movss xmm6, dword [_float_1_00000000]
	movaps xmm1, xmm6
Ragdoll_ExplosionEvent_260:
	mulss xmm3, xmm1
	movss [ebp-0x24], xmm3
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x20]
	movss [ebp-0x20], xmm0
	mulss xmm1, [ebp-0x1c]
	movss [ebp-0x1c], xmm1
	jmp Ragdoll_ExplosionEvent_210
Ragdoll_ExplosionEvent_160:
	mov eax, edx
	add eax, 0x4
	mov edx, [ebp+0x1c]
Ragdoll_ExplosionEvent_170:
	add edx, 0x8
Ragdoll_ExplosionEvent_180:
	movss [ebp-0x24], xmm1
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov eax, [edx]
	mov [ebp-0x1c], eax
	pxor xmm7, xmm7
	movss xmm6, dword [_float_1_00000000]
	movss xmm4, dword [_data16_80000000]
	movss xmm1, dword [ebp-0x1c]
	movss xmm3, dword [ebp-0x24]
	movss xmm0, dword [ebp-0x20]
Ragdoll_ExplosionEvent_210:
	mov eax, ragdoll_explode_upbias
	mov eax, [eax]
	addss xmm1, [eax+0xc]
	movss [ebp-0x1c], xmm1
	movaps xmm2, xmm3
	mulss xmm2, xmm3
	mulss xmm0, xmm0
	addss xmm2, xmm0
	mulss xmm1, xmm1
	addss xmm2, xmm1
	sqrtss xmm2, xmm2
	movaps xmm0, xmm2
	xorps xmm0, xmm4
	ucomiss xmm0, xmm7
	jb Ragdoll_ExplosionEvent_220
Ragdoll_ExplosionEvent_240:
	movaps xmm2, xmm6
	mulss xmm3, xmm6
	movss [ebp-0x24], xmm3
	movaps xmm0, xmm6
	mulss xmm0, [ebp-0x20]
	movss [ebp-0x20], xmm0
	mulss xmm2, [ebp-0x1c]
	movss [ebp-0x1c], xmm2
	mov eax, ragdoll_explode_force
	mov eax, [eax]
	movaps xmm0, xmm5
	mulss xmm0, [eax+0xc]
	mulss xmm0, [ebp-0x3c]
	movaps xmm1, xmm0
	mulss xmm1, xmm3
	movss [ebp-0x24], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x20]
	movss [ebp-0x20], xmm1
	mulss xmm0, xmm2
	movss [ebp-0x1c], xmm0
	lea eax, [ebp-0x24]
	mov [esp+0xc], eax
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	mov eax, [edi+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call Phys_ObjAddForce
	jmp Ragdoll_ExplosionEvent_140
Ragdoll_ExplosionEvent_150:
	movss xmm5, dword [ebp-0x44]
	subss xmm5, xmm1
	mulss xmm5, [ebp-0x40]
	mulss xmm5, [ebp+0x20]
	jmp Ragdoll_ExplosionEvent_230
Ragdoll_ExplosionEvent_220:
	divss xmm6, xmm2
	jmp Ragdoll_ExplosionEvent_240
Ragdoll_ExplosionEvent_190:
	pxor xmm7, xmm7
	movss xmm2, dword [ebp-0x1c]
	jmp Ragdoll_ExplosionEvent_250
Ragdoll_ExplosionEvent_200:
	movss xmm6, dword [_float_1_00000000]
	movaps xmm0, xmm6
	divss xmm0, xmm1
	movaps xmm1, xmm0
	jmp Ragdoll_ExplosionEvent_260
	add [eax], al


;Ragdoll_ValidatePrecalcBoneDef(RagdollDef*, BoneDef*)
Ragdoll_ValidatePrecalcBoneDef:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov eax, [ebp+0xc]
	movss xmm0, dword [eax+0x3c]
	andps xmm0, [_data16_7fffffff]
	cvtss2sd xmm0, xmm0
	movsd xmm1, qword [_double_0_00000100]
	xor eax, eax
	ucomisd xmm1, xmm0
	setbe al
	leave
	ret


;Ragdoll_GenerateAllSelfCollisionContacts()
Ragdoll_GenerateAllSelfCollisionContacts:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x13c
	mov dword [ebp-0xc0], 0x0
	mov edi, ragdollBodies
	jmp Ragdoll_GenerateAllSelfCollisionContacts_10
Ragdoll_GenerateAllSelfCollisionContacts_30:
	add dword [ebp-0xc0], 0x1
	add edi, 0x9d4
	cmp dword [ebp-0xc0], 0x20
	jz Ragdoll_GenerateAllSelfCollisionContacts_20
Ragdoll_GenerateAllSelfCollisionContacts_10:
	mov eax, [edi+0x24]
	sub eax, 0x3
	cmp eax, 0x1
	ja Ragdoll_GenerateAllSelfCollisionContacts_30
	mov [esp], edi
	call Ragdoll_BodyDef
	mov [ebp-0xb8], eax
	mov ebx, [eax+0xe88]
	test ebx, ebx
	jle Ragdoll_GenerateAllSelfCollisionContacts_30
	mov dword [ebp-0xbc], 0x0
	mov esi, eax
	add esi, 0xe80
Ragdoll_GenerateAllSelfCollisionContacts_110:
	movzx ebx, byte [esi+0xc]
	lea eax, [ebx*4]
	shl ebx, 0x5
	sub ebx, eax
	lea ebx, [ebx+edi+0x38]
	lea eax, [ebp-0x90]
	mov [esp+0x8], eax
	lea edx, [ebp-0x54]
	mov [esp+0x4], edx
	mov eax, [ebx+0x8]
	mov [esp], eax
	call Phys_ObjGetPosition
	movss xmm1, dword [ebx+0xc]
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x90]
	addss xmm0, [ebp-0x54]
	movss [ebp-0x48], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x8c]
	addss xmm0, [ebp-0x50]
	movss [ebp-0x44], xmm0
	mulss xmm1, [ebp-0x88]
	addss xmm1, [ebp-0x4c]
	movss [ebp-0x40], xmm1
	movzx ebx, byte [esi+0xd]
	lea eax, [ebx*4]
	shl ebx, 0x5
	sub ebx, eax
	lea ebx, [ebx+edi+0x38]
	lea eax, [ebp-0x90]
	mov [esp+0x8], eax
	lea edx, [ebp-0x6c]
	mov [esp+0x4], edx
	mov eax, [ebx+0x8]
	mov [esp], eax
	call Phys_ObjGetPosition
	movss xmm1, dword [ebx+0xc]
	movaps xmm5, xmm1
	mulss xmm5, [ebp-0x90]
	addss xmm5, [ebp-0x6c]
	movss [ebp-0x60], xmm5
	movaps xmm4, xmm1
	mulss xmm4, [ebp-0x8c]
	addss xmm4, [ebp-0x68]
	movss [ebp-0x5c], xmm4
	mulss xmm1, [ebp-0x88]
	addss xmm1, [ebp-0x64]
	movss [ebp-0x58], xmm1
	movss xmm6, dword [ebp-0x48]
	subss xmm6, [ebp-0x54]
	movss [ebp-0x24], xmm6
	movss xmm3, dword [ebp-0x44]
	subss xmm3, [ebp-0x50]
	movss [ebp-0x20], xmm3
	movss xmm2, dword [ebp-0x40]
	subss xmm2, [ebp-0x4c]
	movss [ebp-0x1c], xmm2
	subss xmm5, [ebp-0x6c]
	movss [ebp-0x3c], xmm5
	movss xmm7, dword [ebp-0x68]
	subss xmm4, xmm7
	movss [ebp-0x38], xmm4
	subss xmm1, [ebp-0x64]
	movss [ebp-0x34], xmm1
	movss xmm0, dword [ebp-0x54]
	subss xmm0, [ebp-0x6c]
	movss [ebp-0xc8], xmm0
	movss [ebp-0x90], xmm0
	movss xmm0, dword [ebp-0x50]
	subss xmm0, xmm7
	movss [ebp-0xcc], xmm0
	movss [ebp-0x8c], xmm0
	movss xmm0, dword [ebp-0x4c]
	subss xmm0, [ebp-0x64]
	movss [ebp-0xa8], xmm0
	movss [ebp-0x88], xmm0
	movaps xmm0, xmm6
	mulss xmm0, xmm6
	movss [ebp-0x9c], xmm0
	movaps xmm0, xmm3
	mulss xmm0, xmm3
	addss xmm0, [ebp-0x9c]
	movss [ebp-0x9c], xmm0
	movaps xmm0, xmm2
	mulss xmm0, xmm2
	addss xmm0, [ebp-0x9c]
	movss [ebp-0x9c], xmm0
	movaps xmm7, xmm6
	mulss xmm7, xmm5
	movaps xmm0, xmm3
	mulss xmm0, xmm4
	addss xmm7, xmm0
	movaps xmm0, xmm2
	mulss xmm0, xmm1
	addss xmm7, xmm0
	movaps xmm0, xmm5
	mulss xmm0, xmm5
	movss [ebp-0xac], xmm0
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	addss xmm0, [ebp-0xac]
	movss [ebp-0xac], xmm0
	movaps xmm0, xmm1
	mulss xmm0, xmm1
	addss xmm0, [ebp-0xac]
	movss [ebp-0xac], xmm0
	mulss xmm6, [ebp-0xc8]
	mulss xmm3, [ebp-0xcc]
	addss xmm6, xmm3
	mulss xmm2, [ebp-0xa8]
	addss xmm6, xmm2
	mulss xmm5, [ebp-0xc8]
	mulss xmm4, [ebp-0xcc]
	addss xmm5, xmm4
	mulss xmm1, [ebp-0xa8]
	addss xmm5, xmm1
	movss xmm3, dword [ebp-0x9c]
	mulss xmm3, xmm0
	movaps xmm0, xmm7
	mulss xmm0, xmm7
	subss xmm3, xmm0
	cvtss2sd xmm0, xmm3
	ucomisd xmm0, [_double_0_00000100]
	jae Ragdoll_GenerateAllSelfCollisionContacts_40
	jp Ragdoll_GenerateAllSelfCollisionContacts_40
	movss xmm3, dword [_float_1_00000000]
	pxor xmm1, xmm1
Ragdoll_GenerateAllSelfCollisionContacts_140:
	movaps xmm4, xmm1
Ragdoll_GenerateAllSelfCollisionContacts_230:
	ucomiss xmm1, xmm5
	ja Ragdoll_GenerateAllSelfCollisionContacts_50
Ragdoll_GenerateAllSelfCollisionContacts_160:
	ucomiss xmm5, [ebp-0xac]
	ja Ragdoll_GenerateAllSelfCollisionContacts_60
	movaps xmm2, xmm4
	andps xmm2, [_data16_7fffffff]
	movaps xmm6, xmm5
	andps xmm6, [_data16_7fffffff]
Ragdoll_GenerateAllSelfCollisionContacts_180:
	movss xmm0, dword [_float_0_00010000]
	ucomiss xmm0, xmm2
	jbe Ragdoll_GenerateAllSelfCollisionContacts_70
	movaps xmm2, xmm1
Ragdoll_GenerateAllSelfCollisionContacts_130:
	ucomiss xmm0, xmm6
	jbe Ragdoll_GenerateAllSelfCollisionContacts_80
	movss [ebp-0xb4], xmm1
Ragdoll_GenerateAllSelfCollisionContacts_120:
	mov edx, 0x1
Ragdoll_GenerateAllSelfCollisionContacts_90:
	lea eax, [edx*4]
	movaps xmm0, xmm2
	mulss xmm0, [ebp+eax-0x28]
	addss xmm0, [ebp+eax-0x94]
	movss xmm1, dword [ebp-0xb4]
	mulss xmm1, [ebp+eax-0x40]
	subss xmm0, xmm1
	movss [ebp+eax-0x34], xmm0
	add edx, 0x1
	cmp edx, 0x4
	jnz Ragdoll_GenerateAllSelfCollisionContacts_90
	movss xmm0, dword [ebp-0x54]
	movss xmm1, dword [ebp-0x48]
	subss xmm1, xmm0
	mulss xmm1, xmm2
	addss xmm0, xmm1
	movss [ebp-0xa0], xmm0
	movss xmm0, dword [ebp-0x50]
	movss xmm5, dword [ebp-0x44]
	subss xmm5, xmm0
	mulss xmm5, xmm2
	addss xmm5, xmm0
	movss xmm0, dword [ebp-0x4c]
	movss xmm7, dword [ebp-0x40]
	subss xmm7, xmm0
	mulss xmm7, xmm2
	addss xmm7, xmm0
	movss xmm0, dword [ebp-0x6c]
	movss xmm1, dword [ebp-0x68]
	movss xmm2, dword [ebp-0x64]
	movss xmm6, dword [ebp-0x60]
	subss xmm6, xmm0
	mulss xmm6, [ebp-0xb4]
	addss xmm6, xmm0
	subss xmm6, [ebp-0xa0]
	movss xmm4, dword [ebp-0x5c]
	subss xmm4, xmm1
	mulss xmm4, [ebp-0xb4]
	addss xmm4, xmm1
	subss xmm4, xmm5
	movss xmm3, dword [ebp-0x58]
	subss xmm3, xmm2
	mulss xmm3, [ebp-0xb4]
	addss xmm3, xmm2
	subss xmm3, xmm7
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	mov eax, ragdoll_self_collision_scale
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	movzx eax, byte [esi+0xc]
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	movaps xmm2, xmm0
	mov eax, [ebp-0xb8]
	mulss xmm2, [eax+edx*4+0x38]
	movss [ebp-0xb0], xmm2
	movzx eax, byte [esi+0xd]
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov eax, [ebp-0xb8]
	mulss xmm0, [eax+edx*4+0x38]
	addss xmm2, xmm0
	movss [ebp-0xc4], xmm2
	movaps xmm2, xmm6
	mulss xmm2, xmm6
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	addss xmm2, xmm0
	addss xmm2, xmm1
	sqrtss xmm0, xmm2
	movss xmm1, dword [ebp-0xc4]
	ucomiss xmm1, xmm0
	jae Ragdoll_GenerateAllSelfCollisionContacts_100
Ragdoll_GenerateAllSelfCollisionContacts_220:
	add dword [ebp-0xbc], 0x1
	add esi, 0x2
	mov edx, [ebp-0xbc]
	cmp [eax+0xe88], edx
	jg Ragdoll_GenerateAllSelfCollisionContacts_110
	jmp Ragdoll_GenerateAllSelfCollisionContacts_30
Ragdoll_GenerateAllSelfCollisionContacts_80:
	divss xmm5, dword [ebp-0xac]
	movss [ebp-0xb4], xmm5
	jmp Ragdoll_GenerateAllSelfCollisionContacts_120
Ragdoll_GenerateAllSelfCollisionContacts_70:
	movaps xmm2, xmm4
	divss xmm2, xmm3
	jmp Ragdoll_GenerateAllSelfCollisionContacts_130
Ragdoll_GenerateAllSelfCollisionContacts_40:
	movaps xmm4, xmm7
	mulss xmm4, xmm5
	movss xmm0, dword [ebp-0xac]
	mulss xmm0, xmm6
	subss xmm4, xmm0
	movss xmm2, dword [ebp-0x9c]
	mulss xmm2, xmm5
	movaps xmm0, xmm7
	mulss xmm0, xmm6
	subss xmm2, xmm0
	pxor xmm1, xmm1
	ucomiss xmm1, xmm4
	ja Ragdoll_GenerateAllSelfCollisionContacts_140
	ucomiss xmm4, xmm3
	ja Ragdoll_GenerateAllSelfCollisionContacts_150
	movss [ebp-0xac], xmm3
	movaps xmm5, xmm2
	ucomiss xmm1, xmm5
	jbe Ragdoll_GenerateAllSelfCollisionContacts_160
Ragdoll_GenerateAllSelfCollisionContacts_50:
	ucomiss xmm6, xmm1
	jbe Ragdoll_GenerateAllSelfCollisionContacts_170
	movaps xmm5, xmm1
	movaps xmm4, xmm1
	movaps xmm2, xmm1
	movaps xmm6, xmm1
	jmp Ragdoll_GenerateAllSelfCollisionContacts_180
Ragdoll_GenerateAllSelfCollisionContacts_60:
	movaps xmm4, xmm7
	subss xmm4, xmm6
	ucomiss xmm1, xmm4
	ja Ragdoll_GenerateAllSelfCollisionContacts_190
	ucomiss xmm4, [ebp-0x9c]
	ja Ragdoll_GenerateAllSelfCollisionContacts_200
	movaps xmm2, xmm4
	andps xmm2, [_data16_7fffffff]
	movss xmm6, dword [ebp-0xac]
	andps xmm6, [_data16_7fffffff]
	movss xmm3, dword [ebp-0x9c]
	movss xmm5, dword [ebp-0xac]
	jmp Ragdoll_GenerateAllSelfCollisionContacts_180
Ragdoll_GenerateAllSelfCollisionContacts_100:
	mov [esp], edi
	movss [ebp-0xe8], xmm2
	movss [ebp-0xf8], xmm3
	movss [ebp-0x108], xmm4
	movss [ebp-0x118], xmm5
	movss [ebp-0x128], xmm6
	movss [ebp-0x138], xmm7
	call Ragdoll_BodyDef
	mov ebx, eax
	movss xmm6, dword [ebp-0x128]
	movss [ebp-0x3c], xmm6
	movss xmm4, dword [ebp-0x108]
	movss [ebp-0x38], xmm4
	movss xmm3, dword [ebp-0xf8]
	movss [ebp-0x34], xmm3
	movss xmm2, dword [ebp-0xe8]
	ucomiss xmm2, [_float_0_00200000]
	jp Ragdoll_GenerateAllSelfCollisionContacts_210
	jae Ragdoll_GenerateAllSelfCollisionContacts_210
Ragdoll_GenerateAllSelfCollisionContacts_240:
	mov eax, [ebp-0xb8]
	jmp Ragdoll_GenerateAllSelfCollisionContacts_220
Ragdoll_GenerateAllSelfCollisionContacts_150:
	addss xmm5, xmm7
	movaps xmm4, xmm3
	jmp Ragdoll_GenerateAllSelfCollisionContacts_230
Ragdoll_GenerateAllSelfCollisionContacts_200:
	movaps xmm2, xmm3
	andps xmm2, [_data16_7fffffff]
	movss xmm6, dword [ebp-0xac]
	andps xmm6, [_data16_7fffffff]
	movaps xmm4, xmm3
	movss xmm5, dword [ebp-0xac]
	jmp Ragdoll_GenerateAllSelfCollisionContacts_180
Ragdoll_GenerateAllSelfCollisionContacts_210:
	lea eax, [ebp-0x84]
	mov [esp+0x4], eax
	lea eax, [ebp-0x3c]
	mov [esp], eax
	call Vec3NormalizeTo
	fstp dword [ebp-0xa4]
	movss xmm2, dword [ebp-0xc4]
	subss xmm2, [ebp-0xa4]
	mulss xmm2, [_float_0_50000000]
	movss xmm1, dword [ebp-0xb0]
	subss xmm1, xmm2
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x84]
	addss xmm0, [ebp-0xa0]
	movss [ebp-0x90], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x80]
	movss xmm5, dword [ebp-0x118]
	addss xmm5, xmm0
	movss [ebp-0x8c], xmm5
	mulss xmm1, [ebp-0x7c]
	movss xmm7, dword [ebp-0x138]
	addss xmm7, xmm1
	movss [ebp-0x88], xmm7
	movss [ebp-0x78], xmm2
	mov dword [ebp-0x70], 0x0
	movzx eax, byte [esi+0xc]
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov eax, [ebx+edx*4+0x48]
	mov [ebp-0x74], eax
	movzx eax, byte [esi+0xc]
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov eax, [eax+edi+0x40]
	mov [esp+0xc], eax
	movzx eax, byte [esi+0xd]
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov eax, [eax+edi+0x40]
	mov [esp+0x8], eax
	lea edx, [ebp-0x90]
	mov [esp+0x4], edx
	mov dword [esp], 0x2
	call Phys_AddCollisionContact
	jmp Ragdoll_GenerateAllSelfCollisionContacts_240
Ragdoll_GenerateAllSelfCollisionContacts_190:
	movss xmm6, dword [ebp-0xac]
	andps xmm6, [_data16_7fffffff]
	movss xmm5, dword [ebp-0xac]
	movaps xmm4, xmm1
	movaps xmm2, xmm1
	jmp Ragdoll_GenerateAllSelfCollisionContacts_180
Ragdoll_GenerateAllSelfCollisionContacts_170:
	movaps xmm4, xmm6
	xorps xmm4, [_data16_80000000]
	ucomiss xmm4, [ebp-0x9c]
	ja Ragdoll_GenerateAllSelfCollisionContacts_250
	movaps xmm2, xmm4
	andps xmm2, [_data16_7fffffff]
	movss xmm3, dword [ebp-0x9c]
	movaps xmm5, xmm1
	movaps xmm6, xmm1
	jmp Ragdoll_GenerateAllSelfCollisionContacts_180
Ragdoll_GenerateAllSelfCollisionContacts_20:
	add esp, 0x13c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Ragdoll_GenerateAllSelfCollisionContacts_250:
	movaps xmm2, xmm3
	andps xmm2, [_data16_7fffffff]
	movaps xmm4, xmm3
	movaps xmm5, xmm1
	movaps xmm6, xmm1
	jmp Ragdoll_GenerateAllSelfCollisionContacts_180
	nop


;Initialized global or static variables of ragdoll_update:
SECTION .data
stateEntries: dd Ragdoll_EnterDead, Ragdoll_ExitDead, 0x0, 0x0, Ragdoll_ExitDObjWait, Ragdoll_UpdateDObjWait, 0x0, 0x0, Ragdoll_UpdateVelocityCapture, Ragdoll_EnterTunnelTest, 0x0, 0x0, Ragdoll_EnterRunning, 0x0, Ragdoll_UpdateRunning, Ragdoll_EnterIdle, Ragdoll_ExitIdle, 0x0
quatZRot: dd 0x0, 0x0, 0x3f800000, 0x0, 0x0, 0x0
ragdollTime: dd 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of ragdoll_update:
SECTION .rdata


;Zero initialized global or static variables of ragdoll_update:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_ragdoll_activati:		db "Ragdoll activation timed out waiting for dobj 0x%x",0ah,0
_cstring_ragdoll_bone:		db "ragdoll_bone",0
_cstring_ragdoll_failed_t:		db "Ragdoll: Failed to create rigid body",0ah,0
_cstring_ragdoll_unknown_:		db "Ragdoll: Unknown bone geom type %d",0ah,0



;All constant floats and doubles:
SECTION .rdata
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_1_00000000:		dd 0x3f800000	; 1
_float_1000_00000000:		dd 0x447a0000	; 1000
_float_0_00000000:		dd 0x0	; 0
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_0_89999998:		dd 0x3f666666	; 0.9
_float_0_10000000:		dd 0x3dcccccd	; 0.1
_float_ inf:		dd 0x7f800000	; inf
_float_15_00000000:		dd 0x41700000	; 15
_float_400_00000000:		dd 0x43c80000	; 400
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; OWORD
_double_0_00000100:		dq 0x3eb0c6f7a0b5ed8d	; 1e-06
_float_0_00010000:		dd 0x38d1b717	; 0.0001
_float_0_00200000:		dd 0x3b03126f	; 0.002

