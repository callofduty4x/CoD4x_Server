;Imports of ragdoll_update:
	extern _Z17Phys_JointDestroy9PhysWorldi
	extern memset
	extern _Z15Phys_ObjDestroy9PhysWorldi
	extern _Z15Ragdoll_BodyDefP11RagdollBody
	extern _Z16Ragdoll_BodyDObjP11RagdollBody
	extern _Z16DObjGetBoneIndexPK6DObj_sjPh
	extern _Z16Com_PrintWarningiPKcz
	extern _Z28Ragdoll_BodyBoneOrientationsP11RagdollBody
	extern _Z15Ragdoll_QuatMulPKfS0_Pf
	extern _Z22Phys_ObjSetOrientation9PhysWorldiPKfS1_
	extern vec3_origin
	extern _Z10QuatToAxisPKfPA3_f
	extern _Z11CM_BoxTraceP7trace_tPKfS2_S2_S2_ji
	extern _Z16Ragdoll_BodyPoseP11RagdollBody
	extern _Z26Phys_ObjSetContactCentroidiPKf
	extern _Z32Ragdoll_BodyPrevBoneOrientationsP11RagdollBody
	extern _Z21Ragdoll_QuatNormalizePf
	extern _Z24Ragdoll_QuatMulInvSecondPKfS0_Pf
	extern _Z23Ragdoll_QuatToAxisAnglePKfPf
	extern _Z23Ragdoll_QuatPointRotatePKfS0_Pf
	extern ragdoll_rotvel_scale
	extern _Z29Phys_ObjSetAngularVelocityRawiPKf
	extern _Z19Phys_ObjSetVelocityiPKf
	extern _Z26Ragdoll_CountPhysicsBodiesv
	extern ragdoll_max_simulating
	extern ragdoll_max_life
	extern _Z16Phys_ObjIsAsleepi
	extern ragdoll_jointlerp_time
	extern _Z19Phys_SetHingeParams9PhysWorldiffff
	extern _Z26Phys_SetAngularMotorParams9PhysWorldiPKfS1_S1_S1_
	extern _Z23Phys_ObjGetCenterOfMassiPf
	extern _Z19Phys_ObjGetPositioniPfPA3_f
	extern _Z13AxisTransposePA3_KfPA3_f
	extern _Z12AnglesToAxisPKfPA3_f
	extern _Z21DObjGetBasePoseMatrixPK6DObj_shP11DObjAnimMat
	extern _Z19Ragdoll_Mat33ToQuatPA3_KfPf
	extern _Z10Vec3RotatePKfPA3_S_Pf
	extern _Z14Phys_ObjCreate9PhysWorldPKfS1_S1_PK10PhysPreset
	extern _Z24Phys_CreateBallAndSocket9PhysWorldiiPKf
	extern _Z23Phys_CreateAngularMotor9PhysWorldiiiPA3_KfPS0_S3_S3_S3_
	extern _Z16Phys_CreateHinge9PhysWorldiiPKfS1_ffff
	extern _Z32Phys_ObjAddGeomCylinderDirection9PhysWorldiiffPKf
	extern _Z22Phys_ObjAddGeomCapsule9PhysWorldiiffPKf
	extern _Z18Phys_ObjAddGeomBox9PhysWorldiPKfS1_
	extern _Z16MatrixMultiply43PA3_KfS1_PA3_f
	extern _Z10AxisToQuatPA3_KfPf
	extern _Z15CG_DObjCalcBonePK7cpose_tP6DObj_si
	extern _Z20DObjGetRotTransArrayPK6DObj_s
	extern _Z16Ragdoll_QuatLerpPKfS0_fPf
	extern _Z28Phys_ObjGetInterpolatedState9PhysWorldiPfS0_
	extern cgArray
	extern ragdollInited
	extern ragdoll_enable
	extern cg_paused
	extern ragdollBodies
	extern _Z25Phys_SetCollisionCallback9PhysWorldPFvvE
	extern _Z14Phys_RunToTimei9PhysWorldi
	extern _Z28CL_GetFirstActiveLocalClientv
	extern _Z6flrandff
	extern ragdoll_explode_upbias
	extern ragdoll_explode_force
	extern _Z16Phys_ObjAddForce9PhysWorldiPKfS1_
	extern ragdoll_self_collision_scale
	extern _Z15Vec3NormalizeToPKfPf
	extern _Z24Phys_AddCollisionContact9PhysWorldPK11PhysContactii

;Exports of ragdoll_update:
	global stateEntries
	global _Z17Ragdoll_EnterDeadP11RagdollBody9BodyStateS1_
	global _Z16Ragdoll_ExitDeadP11RagdollBody9BodyStateS1_
	global _Z20Ragdoll_ExitDObjWaitP11RagdollBody9BodyStateS1_
	global _Z22Ragdoll_UpdateDObjWaitP11RagdollBody
	global _Z29Ragdoll_UpdateVelocityCaptureP11RagdollBody
	global _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1_
	global _Z20Ragdoll_EnterRunningP11RagdollBody9BodyStateS1_
	global _Z21Ragdoll_UpdateRunningP11RagdollBody
	global _Z17Ragdoll_EnterIdleP11RagdollBody9BodyStateS1_
	global _Z16Ragdoll_ExitIdleP11RagdollBody9BodyStateS1_
	global quatZRot
	global _Z23Ragdoll_ValidateBodyObjP11RagdollBody
	global _Z24Ragdoll_BodyCenterOfMassP11RagdollBodyPf
	global _Z25Ragdoll_CreateBodyPhysicsP11RagdollBody
	global _Z31Ragdoll_SnapshotBaseLerpOffsetsP11RagdollBody
	global _Z29Ragdoll_SnapshotBaseLerpBonesP11RagdollBodyP15BoneOrientation
	global _Z29Ragdoll_SnapshotBonePositionsP11RagdollBodyP15BoneOrientation
	global _Z32Ragdoll_SnapshotAnimOrientationsP11RagdollBodyP15BoneOrientation
	global _Z14Ragdoll_Updatei
	global _Z20Ragdoll_BodyNewStateP11RagdollBody9BodyState
	global _Z22Ragdoll_ExplosionEventihPKfffS0_f
	global _Z30Ragdoll_ValidatePrecalcBoneDefP10RagdollDefP7BoneDef
	global _Z40Ragdoll_GenerateAllSelfCollisionContactsv
	global ragdollTime


SECTION .text


;Ragdoll_EnterDead(RagdollBody*, BodyState, BodyState)
_Z17Ragdoll_EnterDeadP11RagdollBody9BodyStateS1_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov eax, [edi+0x20c]
	test eax, eax
	jle _Z17Ragdoll_EnterDeadP11RagdollBody9BodyStateS1__10
	mov ebx, edi
	xor esi, esi
	jmp _Z17Ragdoll_EnterDeadP11RagdollBody9BodyStateS1__20
_Z17Ragdoll_EnterDeadP11RagdollBody9BodyStateS1__40:
	mov eax, [ebx+0x214]
	test eax, eax
	jnz _Z17Ragdoll_EnterDeadP11RagdollBody9BodyStateS1__30
_Z17Ragdoll_EnterDeadP11RagdollBody9BodyStateS1__50:
	add esi, 0x1
	add ebx, 0x8
	cmp esi, [edi+0x20c]
	jge _Z17Ragdoll_EnterDeadP11RagdollBody9BodyStateS1__10
_Z17Ragdoll_EnterDeadP11RagdollBody9BodyStateS1__20:
	mov eax, [ebx+0x210]
	test eax, eax
	jz _Z17Ragdoll_EnterDeadP11RagdollBody9BodyStateS1__40
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call _Z17Phys_JointDestroy9PhysWorldi
	mov eax, [ebx+0x214]
	test eax, eax
	jz _Z17Ragdoll_EnterDeadP11RagdollBody9BodyStateS1__50
_Z17Ragdoll_EnterDeadP11RagdollBody9BodyStateS1__30:
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call _Z17Phys_JointDestroy9PhysWorldi
	add esi, 0x1
	add ebx, 0x8
	cmp esi, [edi+0x20c]
	jl _Z17Ragdoll_EnterDeadP11RagdollBody9BodyStateS1__20
_Z17Ragdoll_EnterDeadP11RagdollBody9BodyStateS1__10:
	lea eax, [edi+0x210]
	mov dword [esp+0x8], 0xe0
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	mov esi, [edi+0x34]
	test esi, esi
	jle _Z17Ragdoll_EnterDeadP11RagdollBody9BodyStateS1__60
	mov ebx, edi
	xor esi, esi
	jmp _Z17Ragdoll_EnterDeadP11RagdollBody9BodyStateS1__70
_Z17Ragdoll_EnterDeadP11RagdollBody9BodyStateS1__80:
	mov dword [ebx+0x40], 0x0
	add esi, 0x1
	add ebx, 0x1c
	cmp esi, [edi+0x34]
	jge _Z17Ragdoll_EnterDeadP11RagdollBody9BodyStateS1__60
_Z17Ragdoll_EnterDeadP11RagdollBody9BodyStateS1__70:
	mov eax, [ebx+0x40]
	test eax, eax
	jz _Z17Ragdoll_EnterDeadP11RagdollBody9BodyStateS1__80
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call _Z15Phys_ObjDestroy9PhysWorldi
	mov dword [ebx+0x40], 0x0
	add esi, 0x1
	add ebx, 0x1c
	cmp esi, [edi+0x34]
	jl _Z17Ragdoll_EnterDeadP11RagdollBody9BodyStateS1__70
_Z17Ragdoll_EnterDeadP11RagdollBody9BodyStateS1__60:
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
_Z16Ragdoll_ExitDeadP11RagdollBody9BodyStateS1_:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call _Z15Ragdoll_BodyDefP11RagdollBody
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
_Z20Ragdoll_ExitDObjWaitP11RagdollBody9BodyStateS1_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edi, [ebp+0x8]
	mov edx, [ebp+0x10]
	test edx, edx
	jnz _Z20Ragdoll_ExitDObjWaitP11RagdollBody9BodyStateS1__10
_Z20Ragdoll_ExitDObjWaitP11RagdollBody9BodyStateS1__60:
	mov eax, 0x1
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20Ragdoll_ExitDObjWaitP11RagdollBody9BodyStateS1__10:
	mov [esp], edi
	call _Z15Ragdoll_BodyDefP11RagdollBody
	mov [ebp-0x28], eax
	mov [esp], edi
	call _Z16Ragdoll_BodyDObjP11RagdollBody
	mov [ebp-0x24], eax
	lea ebx, [edi+0x38]
	mov esi, [ebp-0x28]
	add esi, 0x8
	mov eax, [edi+0x34]
	test eax, eax
	jg _Z20Ragdoll_ExitDObjWaitP11RagdollBody9BodyStateS1__20
_Z20Ragdoll_ExitDObjWaitP11RagdollBody9BodyStateS1__80:
	lea ebx, [edi+0x1c4]
	mov eax, [edi+0x1c0]
	test eax, eax
	jle _Z20Ragdoll_ExitDObjWaitP11RagdollBody9BodyStateS1__30
	mov esi, [ebp-0x28]
	mov dword [ebp-0x1c], 0x0
_Z20Ragdoll_ExitDObjWaitP11RagdollBody9BodyStateS1__50:
	lea eax, [ebx+0x4]
	mov byte [ebx+0x4], 0x0
	mov [esp+0x8], eax
	mov eax, [esi+0x448]
	mov [esp+0x4], eax
	mov eax, [ebp-0x24]
	mov [esp], eax
	call _Z16DObjGetBoneIndexPK6DObj_sjPh
	test eax, eax
	jz _Z20Ragdoll_ExitDObjWaitP11RagdollBody9BodyStateS1__40
	cmp byte [ebx+0x4], 0xff
	jz _Z20Ragdoll_ExitDObjWaitP11RagdollBody9BodyStateS1__40
	mov eax, [esi+0x44c]
	mov [ebx], eax
	add dword [ebp-0x1c], 0x1
	add ebx, 0x8
	add esi, 0x20
	mov edx, [ebp-0x1c]
	cmp edx, [edi+0x1c0]
	jl _Z20Ragdoll_ExitDObjWaitP11RagdollBody9BodyStateS1__50
_Z20Ragdoll_ExitDObjWaitP11RagdollBody9BodyStateS1__30:
	mov eax, edi
	call _Z31Ragdoll_SnapshotBaseLerpOffsetsP11RagdollBody
	jmp _Z20Ragdoll_ExitDObjWaitP11RagdollBody9BodyStateS1__60
_Z20Ragdoll_ExitDObjWaitP11RagdollBody9BodyStateS1__20:
	mov dword [ebp-0x2c], 0x0
	jmp _Z20Ragdoll_ExitDObjWaitP11RagdollBody9BodyStateS1__70
_Z20Ragdoll_ExitDObjWaitP11RagdollBody9BodyStateS1__90:
	mov edx, [ebp-0x20]
	mov [esp+0x8], edx
	mov [esp+0x4], eax
	mov eax, [ebp-0x24]
	mov [esp], eax
	call _Z16DObjGetBoneIndexPK6DObj_sjPh
	test eax, eax
	jz _Z20Ragdoll_ExitDObjWaitP11RagdollBody9BodyStateS1__40
	cmp byte [ebx+0x4], 0xff
	jz _Z20Ragdoll_ExitDObjWaitP11RagdollBody9BodyStateS1__40
_Z20Ragdoll_ExitDObjWaitP11RagdollBody9BodyStateS1__100:
	add dword [ebp-0x2c], 0x1
	add ebx, 0x1c
	add esi, 0x4c
	mov edx, [ebp-0x2c]
	cmp [edi+0x34], edx
	jle _Z20Ragdoll_ExitDObjWaitP11RagdollBody9BodyStateS1__80
_Z20Ragdoll_ExitDObjWaitP11RagdollBody9BodyStateS1__70:
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
	call _Z16DObjGetBoneIndexPK6DObj_sjPh
	test eax, eax
	jz _Z20Ragdoll_ExitDObjWaitP11RagdollBody9BodyStateS1__40
	cmp byte [ebx+0x4], 0xff
	jz _Z20Ragdoll_ExitDObjWaitP11RagdollBody9BodyStateS1__40
	mov eax, [esi+0x2c]
	cmp eax, 0xffffffff
	jnz _Z20Ragdoll_ExitDObjWaitP11RagdollBody9BodyStateS1__90
	mov byte [ebx+0x5], 0x0
	jmp _Z20Ragdoll_ExitDObjWaitP11RagdollBody9BodyStateS1__100
_Z20Ragdoll_ExitDObjWaitP11RagdollBody9BodyStateS1__40:
	xor eax, eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Ragdoll_UpdateDObjWait(RagdollBody*)
_Z22Ragdoll_UpdateDObjWaitP11RagdollBody:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	cmp dword [esi+0x2c], 0x3
	jle _Z22Ragdoll_UpdateDObjWaitP11RagdollBody_10
	mov eax, [esi+0xc]
	test eax, eax
	jz _Z22Ragdoll_UpdateDObjWaitP11RagdollBody_20
	mov eax, [esi+0x8]
_Z22Ragdoll_UpdateDObjWaitP11RagdollBody_80:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_ragdoll_activati
	mov dword [esp], 0x14
	call _Z16Com_PrintWarningiPKcz
	mov ebx, [esi+0x24]
	test ebx, ebx
	jz _Z22Ragdoll_UpdateDObjWaitP11RagdollBody_30
	lea eax, [ebx+ebx*2]
	mov eax, [eax*4+stateEntries+0x4]
	test eax, eax
	jz _Z22Ragdoll_UpdateDObjWaitP11RagdollBody_40
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov [esp], esi
	call eax
	test al, al
	jz _Z22Ragdoll_UpdateDObjWaitP11RagdollBody_30
_Z22Ragdoll_UpdateDObjWaitP11RagdollBody_40:
	mov dword [esi+0x24], 0x0
	mov eax, [stateEntries]
	test eax, eax
	jz _Z22Ragdoll_UpdateDObjWaitP11RagdollBody_50
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov [esp], esi
	call eax
	test al, al
	jz _Z22Ragdoll_UpdateDObjWaitP11RagdollBody_60
_Z22Ragdoll_UpdateDObjWaitP11RagdollBody_50:
	mov dword [esi+0x2c], 0x0
	mov dword [esi+0x28], 0x0
_Z22Ragdoll_UpdateDObjWaitP11RagdollBody_30:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z22Ragdoll_UpdateDObjWaitP11RagdollBody_10:
	mov eax, esi
	call _Z23Ragdoll_ValidateBodyObjP11RagdollBody
	test al, al
	jz _Z22Ragdoll_UpdateDObjWaitP11RagdollBody_30
	mov ebx, [esi+0x24]
	cmp ebx, 0x2
	jz _Z22Ragdoll_UpdateDObjWaitP11RagdollBody_30
	lea eax, [ebx+ebx*2]
	mov eax, [eax*4+stateEntries+0x4]
	test eax, eax
	jz _Z22Ragdoll_UpdateDObjWaitP11RagdollBody_70
	mov dword [esp+0x8], 0x2
	mov [esp+0x4], ebx
	mov [esp], esi
	call eax
	test al, al
	jz _Z22Ragdoll_UpdateDObjWaitP11RagdollBody_30
_Z22Ragdoll_UpdateDObjWaitP11RagdollBody_70:
	mov dword [esi+0x24], 0x2
	mov eax, [stateEntries+0x18]
	test eax, eax
	jz _Z22Ragdoll_UpdateDObjWaitP11RagdollBody_50
	mov dword [esp+0x8], 0x2
	mov [esp+0x4], ebx
	mov [esp], esi
	call eax
	test al, al
	jnz _Z22Ragdoll_UpdateDObjWaitP11RagdollBody_50
	cmp dword [esi+0x24], 0x2
	jnz _Z22Ragdoll_UpdateDObjWaitP11RagdollBody_30
	mov [esi+0x24], ebx
	jmp _Z22Ragdoll_UpdateDObjWaitP11RagdollBody_30
_Z22Ragdoll_UpdateDObjWaitP11RagdollBody_60:
	mov eax, [esi+0x24]
	test eax, eax
	jnz _Z22Ragdoll_UpdateDObjWaitP11RagdollBody_30
	mov [esi+0x24], ebx
	jmp _Z22Ragdoll_UpdateDObjWaitP11RagdollBody_30
_Z22Ragdoll_UpdateDObjWaitP11RagdollBody_20:
	xor eax, eax
	jmp _Z22Ragdoll_UpdateDObjWaitP11RagdollBody_80


;Ragdoll_UpdateVelocityCapture(RagdollBody*)
_Z29Ragdoll_UpdateVelocityCaptureP11RagdollBody:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov esi, [ebx+0x2c]
	test esi, esi
	jle _Z29Ragdoll_UpdateVelocityCaptureP11RagdollBody_10
	mov eax, [ebx+0x28]
	mov [ebx+0x30], eax
	xor dword [ebx+0x2f0], 0x1
	mov [esp], ebx
	call _Z28Ragdoll_BodyBoneOrientationsP11RagdollBody
	mov edx, eax
	mov eax, ebx
	call _Z32Ragdoll_SnapshotAnimOrientationsP11RagdollBodyP15BoneOrientation
	mov esi, [ebx+0x24]
	cmp esi, 0x3
	jz _Z29Ragdoll_UpdateVelocityCaptureP11RagdollBody_20
	lea eax, [esi+esi*2]
	mov eax, [eax*4+stateEntries+0x4]
	test eax, eax
	jz _Z29Ragdoll_UpdateVelocityCaptureP11RagdollBody_30
	mov dword [esp+0x8], 0x3
	mov [esp+0x4], esi
	mov [esp], ebx
	call eax
	test al, al
	jz _Z29Ragdoll_UpdateVelocityCaptureP11RagdollBody_20
_Z29Ragdoll_UpdateVelocityCaptureP11RagdollBody_30:
	mov dword [ebx+0x24], 0x3
	mov eax, [stateEntries+0x24]
	test eax, eax
	jz _Z29Ragdoll_UpdateVelocityCaptureP11RagdollBody_40
	mov dword [esp+0x8], 0x3
	mov [esp+0x4], esi
	mov [esp], ebx
	call eax
	test al, al
	jnz _Z29Ragdoll_UpdateVelocityCaptureP11RagdollBody_40
	cmp dword [ebx+0x24], 0x3
	jnz _Z29Ragdoll_UpdateVelocityCaptureP11RagdollBody_20
	mov [ebx+0x24], esi
_Z29Ragdoll_UpdateVelocityCaptureP11RagdollBody_20:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z29Ragdoll_UpdateVelocityCaptureP11RagdollBody_40:
	mov dword [ebx+0x2c], 0x0
	mov dword [ebx+0x28], 0x0
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z29Ragdoll_UpdateVelocityCaptureP11RagdollBody_10:
	xor dword [ebx+0x2f0], 0x1
	mov [esp], ebx
	call _Z28Ragdoll_BodyBoneOrientationsP11RagdollBody
	mov edx, eax
	mov eax, ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _Z32Ragdoll_SnapshotAnimOrientationsP11RagdollBodyP15BoneOrientation
	nop


;Ragdoll_EnterTunnelTest(RagdollBody*, BodyState, BodyState)
_Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x13c
	mov eax, [ebp+0x8]
	call _Z25Ragdoll_CreateBodyPhysicsP11RagdollBody
	test al, al
	jnz _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__10
	mov eax, [ebp+0x8]
	mov ebx, [eax+0x24]
	test ebx, ebx
	jz _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__20
	lea eax, [ebx+ebx*2]
	mov eax, [eax*4+stateEntries+0x4]
	test eax, eax
	jz _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__30
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call eax
	test al, al
	jz _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__20
_Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__30:
	mov ecx, [ebp+0x8]
	mov dword [ecx+0x24], 0x0
	mov eax, [stateEntries]
	test eax, eax
	jz _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__40
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov [esp], ecx
	call eax
	test al, al
	jnz _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__40
	mov eax, [ebp+0x8]
	mov edi, [eax+0x24]
	test edi, edi
	jnz _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__20
	mov [eax+0x24], ebx
	xor eax, eax
	jmp _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__50
_Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__20:
	xor eax, eax
_Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__50:
	add esp, 0x13c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__40:
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
_Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__10:
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z28Ragdoll_BodyBoneOrientationsP11RagdollBody
	mov ebx, eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z15Ragdoll_BodyDefP11RagdollBody
	mov edx, [ebp+0x8]
	add edx, 0x38
	mov [ebp-0xf0], edx
	lea edi, [eax+0x8]
	mov ecx, [ebp+0x8]
	mov esi, [ecx+0x34]
	test esi, esi
	jle _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__60
	mov esi, edx
	mov dword [ebp-0x120], 0x0
	jmp _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__70
_Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__90:
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
	jnz _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__80
_Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__100:
	add dword [ebp-0x120], 0x1
	add esi, 0x1c
	add edi, 0x4c
	add ebx, 0x20
	mov eax, [ebp-0x120]
	mov ecx, [ebp+0x8]
	cmp [ecx+0x34], eax
	jle _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__60
_Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__70:
	lea edx, [ebx+0x10]
	cmp byte [edi+0x34], 0x0
	jz _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__90
	lea eax, [ebp-0x40]
	mov [esp+0x8], eax
	mov dword [esp+0x4], quatZRot
	mov [esp], edx
	call _Z15Ragdoll_QuatMulPKfS0_Pf
	mov eax, [esi+0x8]
	test eax, eax
	jz _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__100
_Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__80:
	lea edx, [ebp-0x40]
	mov [esp+0xc], edx
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call _Z22Phys_ObjSetOrientation9PhysWorldiPKfS1_
	add dword [ebp-0x120], 0x1
	add esi, 0x1c
	add edi, 0x4c
	add ebx, 0x20
	mov eax, [ebp-0x120]
	mov ecx, [ebp+0x8]
	cmp [ecx+0x34], eax
	jg _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__70
_Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__60:
	mov eax, [ecx+0x30]
	test eax, eax
	jnz _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__110
_Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__330:
	mov ebx, [ebp+0x8]
_Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__440:
	mov [esp], ebx
	call _Z15Ragdoll_BodyDefP11RagdollBody
	add eax, 0x8
	mov [ebp-0x108], eax
	mov [esp], ebx
	call _Z28Ragdoll_BodyBoneOrientationsP11RagdollBody
	mov [ebp-0xec], eax
	mov edx, [ebx+0x34]
	test edx, edx
	jle _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__120
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
_Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__250:
	mov eax, [ebx+0x8]
	test eax, eax
	jz _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__130
	mov eax, [ebp-0x108]
	cmp byte [eax+0x34], 0x0
	jnz _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__140
	mov eax, [esi]
	mov [ebp-0x50], eax
	mov eax, [esi+0x4]
	mov [ebp-0x4c], eax
	mov eax, [esi+0x8]
	mov [ebp-0x48], eax
	mov eax, [esi+0xc]
	mov [ebp-0x44], eax
_Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__420:
	lea eax, [ebp-0x8c]
	mov [esp+0x4], eax
	lea ecx, [ebp-0x50]
	mov [esp], ecx
	call _Z10QuatToAxisPKfPA3_f
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
	jle _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__150
	mov eax, edx
	xor edx, edx
	mov dword [ebp-0x104], 0x0
	jmp _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__160
_Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__180:
	add edx, 0x1
	add eax, 0x1c
	mov ecx, [ebp+0x8]
	cmp [ecx+0x34], edx
	jle _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__170
_Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__160:
	mov ecx, [ebp-0xf8]
	cmp ecx, [eax+0x38]
	jnz _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__180
	cmp dword [ebp-0x104], 0x6
	jz _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__190
	mov ebx, [ebp-0x104]
	mov [ebp+ebx*4-0x68], edx
	add ebx, 0x1
	mov [ebp-0x104], ebx
	add edx, 0x1
	add eax, 0x1c
	mov ecx, [ebp+0x8]
	cmp [ecx+0x34], edx
	jg _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__160
_Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__170:
	cmp dword [ebp-0x104], 0x1
	jle _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__150
_Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__190:
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
_Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__220:
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
	call _Z11CM_BoxTraceP7trace_tPKfS2_S2_S2_ji
	cmp byte [ebp-0xbb], 0x0
	jnz _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__200
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0xe4]
	jp _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__210
	jnz _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__210
_Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__400:
	add edi, 0x1
	cmp [ebp-0x104], edi
	jg _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__220
_Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__150:
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
	call _Z11CM_BoxTraceP7trace_tPKfS2_S2_S2_ji
	cmp byte [ebp-0xbb], 0x0
	jnz _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__230
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0xe4]
	jp _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__240
	jnz _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__240
_Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__130:
	add dword [ebp-0xf8], 0x1
	add dword [ebp-0xf4], 0x1c
	add dword [ebp-0x108], 0x4c
	add dword [ebp-0x10c], 0x20
	add esi, 0x20
	mov edx, [ebp-0xf8]
	mov eax, [ebp+0x8]
	cmp edx, [eax+0x34]
	jge _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__120
	mov ebx, [ebp-0xf4]
	jmp _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__250
_Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__120:
	mov esi, 0x1
_Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__410:
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z16Ragdoll_BodyPoseP11RagdollBody
	mov ebx, eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z28Ragdoll_BodyBoneOrientationsP11RagdollBody
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
	call _Z28Ragdoll_BodyBoneOrientationsP11RagdollBody
	mov edx, eax
	mov eax, ebx
	call _Z29Ragdoll_SnapshotBaseLerpBonesP11RagdollBodyP15BoneOrientation
	lea edx, [ebp-0x24]
	mov eax, ebx
	call _Z24Ragdoll_BodyCenterOfMassP11RagdollBodyPf
	mov eax, [ebx+0x34]
	test eax, eax
	jle _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__260
	xor ebx, ebx
	jmp _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__270
_Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__280:
	add ebx, 0x1
	add dword [ebp-0xf0], 0x1c
	mov eax, [ebp+0x8]
	cmp ebx, [eax+0x34]
	jge _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__260
_Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__270:
	mov edx, [ebp-0xf0]
	mov eax, [edx+0x8]
	test eax, eax
	jz _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__280
	lea ecx, [ebp-0x24]
	mov [esp+0x4], ecx
	mov [esp], eax
	call _Z26Phys_ObjSetContactCentroidiPKf
	add ebx, 0x1
	add dword [ebp-0xf0], 0x1c
	mov eax, [ebp+0x8]
	cmp ebx, [eax+0x34]
	jl _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__270
_Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__260:
	mov edx, esi
	test dl, dl
	jz _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__290
	mov ecx, [ebp+0x8]
	mov ebx, [ecx+0x24]
	cmp ebx, 0x4
	jz _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__300
	lea eax, [ebx+ebx*2]
	mov eax, [eax*4+stateEntries+0x4]
	test eax, eax
	jz _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__310
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], ebx
	mov [esp], ecx
	call eax
	test al, al
	jz _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__300
_Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__310:
	mov eax, [ebp+0x8]
	mov dword [eax+0x24], 0x4
	mov eax, [stateEntries+0x30]
	test eax, eax
	jz _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__320
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], ebx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call eax
	test al, al
	jnz _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__320
	mov ecx, [ebp+0x8]
	cmp dword [ecx+0x24], 0x4
	jnz _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__300
	mov [ecx+0x24], ebx
	mov eax, 0x1
	jmp _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__50
_Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__110:
	cvtsi2ss xmm0, eax
	movss xmm1, dword [_float_1000_00000000]
	divss xmm1, xmm0
	movss [ebp-0x110], xmm1
	mov [esp], ecx
	call _Z28Ragdoll_BodyBoneOrientationsP11RagdollBody
	mov esi, eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z32Ragdoll_BodyPrevBoneOrientationsP11RagdollBody
	mov ebx, eax
	mov edx, [ebp+0x8]
	mov ecx, [edx+0x34]
	test ecx, ecx
	jle _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__330
	mov edi, [ebp-0xf0]
	mov dword [ebp-0x11c], 0x0
	jmp _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__340
_Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__360:
	mov eax, [ebx+0x10]
	mov [ebp-0x68], eax
	mov eax, [ebx+0x14]
	mov [ebp-0x64], eax
	mov eax, [ebx+0x18]
	mov [ebp-0x60], eax
	mov eax, [ebx+0x1c]
	mov [ebp-0x5c], eax
_Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__370:
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
	call _Z21Ragdoll_QuatNormalizePf
	lea edx, [ebp-0x68]
	mov [esp], edx
	call _Z21Ragdoll_QuatNormalizePf
	lea ecx, [ebp-0x8c]
	mov [esp+0x8], ecx
	lea eax, [ebp-0x68]
	mov [esp+0x4], eax
	lea edx, [ebp-0x50]
	mov [esp], edx
	call _Z24Ragdoll_QuatMulInvSecondPKfS0_Pf
	lea ecx, [ebp-0x8c]
	mov [esp], ecx
	call _Z21Ragdoll_QuatNormalizePf
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	lea edx, [ebp-0x8c]
	mov [esp], edx
	call _Z23Ragdoll_QuatToAxisAnglePKfPf
	lea ecx, [ebp-0x40]
	mov [esp+0x8], ecx
	lea eax, [ebp-0x50]
	mov [esp+0x4], eax
	lea edx, [ebp-0x30]
	mov [esp], edx
	call _Z23Ragdoll_QuatPointRotatePKfS0_Pf
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
	call _Z29Phys_ObjSetAngularVelocityRawiPKf
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov eax, [edi+0x8]
	mov [esp], eax
	call _Z19Phys_ObjSetVelocityiPKf
	add dword [ebp-0x11c], 0x1
	add esi, 0x20
	add ebx, 0x20
	add edi, 0x1c
	mov ecx, [ebp-0x11c]
	mov edx, [ebp+0x8]
	cmp [edx+0x34], ecx
	jle _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__350
_Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__340:
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
	jae _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__360
	jp _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__360
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
	jmp _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__370
_Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__320:
	mov ebx, [ebp+0x8]
	mov dword [ebx+0x2c], 0x0
	mov dword [ebx+0x28], 0x0
	mov eax, 0x1
	jmp _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__50
_Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__290:
	mov eax, [ebp+0x8]
	mov ebx, [eax+0x24]
	test ebx, ebx
	jz _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__300
	lea eax, [ebx+ebx*2]
	mov eax, [eax*4+stateEntries+0x4]
	test eax, eax
	jz _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__380
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call eax
	test al, al
	jz _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__300
_Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__380:
	mov ecx, [ebp+0x8]
	mov dword [ecx+0x24], 0x0
	mov eax, [stateEntries]
	test eax, eax
	jz _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__390
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov [esp], ecx
	call eax
	test al, al
	jnz _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__390
	mov eax, [ebp+0x8]
	mov edi, [eax+0x24]
	test edi, edi
	jnz _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__300
	mov [eax+0x24], ebx
	mov eax, 0x1
	jmp _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__50
_Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__390:
	mov edx, [ebp+0x8]
	mov dword [edx+0x2c], 0x0
	mov dword [edx+0x28], 0x0
	mov eax, 0x1
	jmp _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__50
_Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__300:
	mov eax, 0x1
	add esp, 0x13c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__200:
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
	call _Z11CM_BoxTraceP7trace_tPKfS2_S2_S2_ji
	cmp byte [ebp-0x8f], 0x0
	jz _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__400
_Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__430:
	xor esi, esi
	jmp _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__410
_Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__140:
	lea edx, [ebp-0x50]
	mov [esp+0x8], edx
	mov dword [esp+0x4], quatZRot
	mov [esp], esi
	call _Z15Ragdoll_QuatMulPKfS0_Pf
	jmp _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__420
_Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__210:
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
	call _Z11CM_BoxTraceP7trace_tPKfS2_S2_S2_ji
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0xb8]
	jnz _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__430
	jnp _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__400
	xor esi, esi
	jmp _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__410
_Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__240:
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
	call _Z11CM_BoxTraceP7trace_tPKfS2_S2_S2_ji
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0xb8]
	jnz _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__430
	jnp _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__130
	xor esi, esi
	jmp _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__410
_Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__230:
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
	call _Z11CM_BoxTraceP7trace_tPKfS2_S2_S2_ji
	cmp byte [ebp-0x8f], 0x0
	jz _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__130
	xor esi, esi
	jmp _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__410
_Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__350:
	mov ebx, edx
	jmp _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1__440
	nop


;Ragdoll_EnterRunning(RagdollBody*, BodyState, BodyState)
_Z20Ragdoll_EnterRunningP11RagdollBody9BodyStateS1_:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	call _Z26Ragdoll_CountPhysicsBodiesv
	mov edx, ragdoll_max_simulating
	mov edx, [edx]
	cmp eax, [edx+0xc]
	jl _Z20Ragdoll_EnterRunningP11RagdollBody9BodyStateS1__10
	cmp dword [ebp+0xc], 0x5
	jz _Z20Ragdoll_EnterRunningP11RagdollBody9BodyStateS1__20
	mov ebx, [esi+0x24]
	test ebx, ebx
	jz _Z20Ragdoll_EnterRunningP11RagdollBody9BodyStateS1__30
	lea eax, [ebx+ebx*2]
	mov eax, [eax*4+stateEntries+0x4]
	test eax, eax
	jz _Z20Ragdoll_EnterRunningP11RagdollBody9BodyStateS1__40
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov [esp], esi
	call eax
	test al, al
	jz _Z20Ragdoll_EnterRunningP11RagdollBody9BodyStateS1__30
_Z20Ragdoll_EnterRunningP11RagdollBody9BodyStateS1__40:
	mov dword [esi+0x24], 0x0
	mov eax, [stateEntries]
	test eax, eax
	jz _Z20Ragdoll_EnterRunningP11RagdollBody9BodyStateS1__50
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov [esp], esi
	call eax
	test al, al
	jnz _Z20Ragdoll_EnterRunningP11RagdollBody9BodyStateS1__50
	mov eax, [esi+0x24]
	test eax, eax
	jnz _Z20Ragdoll_EnterRunningP11RagdollBody9BodyStateS1__30
_Z20Ragdoll_EnterRunningP11RagdollBody9BodyStateS1__90:
	mov [esi+0x24], ebx
	xor eax, eax
	jmp _Z20Ragdoll_EnterRunningP11RagdollBody9BodyStateS1__60
_Z20Ragdoll_EnterRunningP11RagdollBody9BodyStateS1__20:
	mov ebx, [esi+0x24]
	cmp ebx, 0x5
	jz _Z20Ragdoll_EnterRunningP11RagdollBody9BodyStateS1__30
	lea eax, [ebx+ebx*2]
	mov eax, [eax*4+stateEntries+0x4]
	test eax, eax
	jz _Z20Ragdoll_EnterRunningP11RagdollBody9BodyStateS1__70
	mov dword [esp+0x8], 0x5
	mov [esp+0x4], ebx
	mov [esp], esi
	call eax
	test al, al
	jz _Z20Ragdoll_EnterRunningP11RagdollBody9BodyStateS1__30
_Z20Ragdoll_EnterRunningP11RagdollBody9BodyStateS1__70:
	mov dword [esi+0x24], 0x5
	mov eax, [stateEntries+0x3c]
	test eax, eax
	jz _Z20Ragdoll_EnterRunningP11RagdollBody9BodyStateS1__50
	mov dword [esp+0x8], 0x5
	mov [esp+0x4], ebx
	mov [esp], esi
	call eax
	test al, al
	jz _Z20Ragdoll_EnterRunningP11RagdollBody9BodyStateS1__80
_Z20Ragdoll_EnterRunningP11RagdollBody9BodyStateS1__50:
	mov dword [esi+0x2c], 0x0
	mov dword [esi+0x28], 0x0
	xor eax, eax
_Z20Ragdoll_EnterRunningP11RagdollBody9BodyStateS1__60:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z20Ragdoll_EnterRunningP11RagdollBody9BodyStateS1__80:
	cmp dword [esi+0x24], 0x5
	jz _Z20Ragdoll_EnterRunningP11RagdollBody9BodyStateS1__90
_Z20Ragdoll_EnterRunningP11RagdollBody9BodyStateS1__30:
	xor eax, eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z20Ragdoll_EnterRunningP11RagdollBody9BodyStateS1__10:
	mov eax, 0x1
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;Ragdoll_UpdateRunning(RagdollBody*)
_Z21Ragdoll_UpdateRunningP11RagdollBody:
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
	jg _Z21Ragdoll_UpdateRunningP11RagdollBody_10
	mov eax, [edi+0x34]
	test eax, eax
	jg _Z21Ragdoll_UpdateRunningP11RagdollBody_20
_Z21Ragdoll_UpdateRunningP11RagdollBody_10:
	mov ebx, [edi+0x24]
	cmp ebx, 0x5
	jz _Z21Ragdoll_UpdateRunningP11RagdollBody_30
	lea eax, [ebx+ebx*2]
	mov eax, [eax*4+stateEntries+0x4]
	test eax, eax
	jz _Z21Ragdoll_UpdateRunningP11RagdollBody_40
	mov dword [esp+0x8], 0x5
	mov [esp+0x4], ebx
	mov [esp], edi
	call eax
	test al, al
	jz _Z21Ragdoll_UpdateRunningP11RagdollBody_30
_Z21Ragdoll_UpdateRunningP11RagdollBody_40:
	mov dword [edi+0x24], 0x5
	mov eax, [stateEntries+0x3c]
	test eax, eax
	jz _Z21Ragdoll_UpdateRunningP11RagdollBody_50
	mov dword [esp+0x8], 0x5
	mov [esp+0x4], ebx
	mov [esp], edi
	call eax
	test al, al
	jnz _Z21Ragdoll_UpdateRunningP11RagdollBody_50
	cmp dword [edi+0x24], 0x5
	jz _Z21Ragdoll_UpdateRunningP11RagdollBody_60
_Z21Ragdoll_UpdateRunningP11RagdollBody_30:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21Ragdoll_UpdateRunningP11RagdollBody_50:
	mov dword [edi+0x2c], 0x0
	mov dword [edi+0x28], 0x0
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21Ragdoll_UpdateRunningP11RagdollBody_20:
	mov esi, edi
	xor ebx, ebx
_Z21Ragdoll_UpdateRunningP11RagdollBody_80:
	mov eax, [esi+0x40]
	mov [esp], eax
	call _Z16Phys_ObjIsAsleepi
	test al, al
	jz _Z21Ragdoll_UpdateRunningP11RagdollBody_70
	add ebx, 0x1
	add esi, 0x1c
	cmp ebx, [edi+0x34]
	jl _Z21Ragdoll_UpdateRunningP11RagdollBody_80
	jmp _Z21Ragdoll_UpdateRunningP11RagdollBody_10
_Z21Ragdoll_UpdateRunningP11RagdollBody_60:
	mov [edi+0x24], ebx
	jmp _Z21Ragdoll_UpdateRunningP11RagdollBody_30
_Z21Ragdoll_UpdateRunningP11RagdollBody_70:
	mov [esp], edi
	call _Z28Ragdoll_BodyBoneOrientationsP11RagdollBody
	mov edx, eax
	mov eax, edi
	call _Z29Ragdoll_SnapshotBonePositionsP11RagdollBodyP15BoneOrientation
	mov [esp], edi
	call _Z15Ragdoll_BodyDefP11RagdollBody
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
	jle _Z21Ragdoll_UpdateRunningP11RagdollBody_90
	mov dword [ebp-0x30], 0x0
	jmp _Z21Ragdoll_UpdateRunningP11RagdollBody_100
_Z21Ragdoll_UpdateRunningP11RagdollBody_120:
	cmp eax, 0x2
	jz _Z21Ragdoll_UpdateRunningP11RagdollBody_110
_Z21Ragdoll_UpdateRunningP11RagdollBody_130:
	add dword [ebp-0x30], 0x1
	add ebx, 0x54
	add esi, 0x8
	mov eax, [ebp-0x30]
	mov edx, [ebp-0x2c]
	cmp eax, [edx+0x554]
	jge _Z21Ragdoll_UpdateRunningP11RagdollBody_90
_Z21Ragdoll_UpdateRunningP11RagdollBody_100:
	mov eax, [ebx+0x4]
	cmp eax, 0x1
	jnz _Z21Ragdoll_UpdateRunningP11RagdollBody_120
	movaps xmm0, xmm2
	mulss xmm0, [ebx+0x48]
	mov edx, [esi]
	test edx, edx
	jz _Z21Ragdoll_UpdateRunningP11RagdollBody_130
	mov eax, [ebx+0x3c]
	mov [esp+0x14], eax
	mov eax, [ebx+0x30]
	mov [esp+0x10], eax
	movss [esp+0xc], xmm0
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], edx
	mov dword [esp], 0x2
	movss [ebp-0x48], xmm2
	call _Z19Phys_SetHingeParams9PhysWorldiffff
	movss xmm2, dword [ebp-0x48]
	jmp _Z21Ragdoll_UpdateRunningP11RagdollBody_130
_Z21Ragdoll_UpdateRunningP11RagdollBody_90:
	lea edx, [ebp-0x24]
	mov eax, edi
	call _Z24Ragdoll_BodyCenterOfMassP11RagdollBodyPf
	lea ebx, [edi+0x38]
	mov eax, [edi+0x34]
	test eax, eax
	jle _Z21Ragdoll_UpdateRunningP11RagdollBody_30
	xor esi, esi
	jmp _Z21Ragdoll_UpdateRunningP11RagdollBody_140
_Z21Ragdoll_UpdateRunningP11RagdollBody_150:
	add esi, 0x1
	add ebx, 0x1c
	cmp esi, [edi+0x34]
	jge _Z21Ragdoll_UpdateRunningP11RagdollBody_30
_Z21Ragdoll_UpdateRunningP11RagdollBody_140:
	mov eax, [ebx+0x8]
	test eax, eax
	jz _Z21Ragdoll_UpdateRunningP11RagdollBody_150
	lea edx, [ebp-0x24]
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z26Phys_ObjSetContactCentroidiPKf
	jmp _Z21Ragdoll_UpdateRunningP11RagdollBody_150
_Z21Ragdoll_UpdateRunningP11RagdollBody_110:
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
	jz _Z21Ragdoll_UpdateRunningP11RagdollBody_130
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
	call _Z26Phys_SetAngularMotorParams9PhysWorldiPKfS1_S1_S1_
	movss xmm2, dword [ebp-0x48]
	jmp _Z21Ragdoll_UpdateRunningP11RagdollBody_130
	add [eax], al


;Ragdoll_EnterIdle(RagdollBody*, BodyState, BodyState)
_Z17Ragdoll_EnterIdleP11RagdollBody9BodyStateS1_:
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
	jbe _Z17Ragdoll_EnterIdleP11RagdollBody9BodyStateS1__10
_Z17Ragdoll_EnterIdleP11RagdollBody9BodyStateS1__100:
	mov esi, [edi+0x20c]
	test esi, esi
	jle _Z17Ragdoll_EnterIdleP11RagdollBody9BodyStateS1__20
	mov ebx, edi
	xor esi, esi
	jmp _Z17Ragdoll_EnterIdleP11RagdollBody9BodyStateS1__30
_Z17Ragdoll_EnterIdleP11RagdollBody9BodyStateS1__50:
	mov eax, [ebx+0x214]
	test eax, eax
	jnz _Z17Ragdoll_EnterIdleP11RagdollBody9BodyStateS1__40
_Z17Ragdoll_EnterIdleP11RagdollBody9BodyStateS1__60:
	add esi, 0x1
	add ebx, 0x8
	cmp [edi+0x20c], esi
	jle _Z17Ragdoll_EnterIdleP11RagdollBody9BodyStateS1__20
_Z17Ragdoll_EnterIdleP11RagdollBody9BodyStateS1__30:
	mov eax, [ebx+0x210]
	test eax, eax
	jz _Z17Ragdoll_EnterIdleP11RagdollBody9BodyStateS1__50
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call _Z17Phys_JointDestroy9PhysWorldi
	mov eax, [ebx+0x214]
	test eax, eax
	jz _Z17Ragdoll_EnterIdleP11RagdollBody9BodyStateS1__60
_Z17Ragdoll_EnterIdleP11RagdollBody9BodyStateS1__40:
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call _Z17Phys_JointDestroy9PhysWorldi
	add esi, 0x1
	add ebx, 0x8
	cmp [edi+0x20c], esi
	jg _Z17Ragdoll_EnterIdleP11RagdollBody9BodyStateS1__30
_Z17Ragdoll_EnterIdleP11RagdollBody9BodyStateS1__20:
	lea eax, [edi+0x210]
	mov dword [esp+0x8], 0xe0
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	mov ebx, [edi+0x34]
	test ebx, ebx
	jle _Z17Ragdoll_EnterIdleP11RagdollBody9BodyStateS1__70
	mov ebx, edi
	xor esi, esi
	jmp _Z17Ragdoll_EnterIdleP11RagdollBody9BodyStateS1__80
_Z17Ragdoll_EnterIdleP11RagdollBody9BodyStateS1__90:
	mov dword [ebx+0x40], 0x0
	add esi, 0x1
	add ebx, 0x1c
	cmp esi, [edi+0x34]
	jge _Z17Ragdoll_EnterIdleP11RagdollBody9BodyStateS1__70
_Z17Ragdoll_EnterIdleP11RagdollBody9BodyStateS1__80:
	mov eax, [ebx+0x40]
	test eax, eax
	jz _Z17Ragdoll_EnterIdleP11RagdollBody9BodyStateS1__90
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call _Z15Phys_ObjDestroy9PhysWorldi
	mov dword [ebx+0x40], 0x0
	add esi, 0x1
	add ebx, 0x1c
	cmp esi, [edi+0x34]
	jl _Z17Ragdoll_EnterIdleP11RagdollBody9BodyStateS1__80
_Z17Ragdoll_EnterIdleP11RagdollBody9BodyStateS1__70:
	mov eax, 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17Ragdoll_EnterIdleP11RagdollBody9BodyStateS1__10:
	mov [esp], edi
	call _Z28Ragdoll_BodyBoneOrientationsP11RagdollBody
	mov edx, eax
	mov eax, edi
	call _Z29Ragdoll_SnapshotBonePositionsP11RagdollBodyP15BoneOrientation
	jmp _Z17Ragdoll_EnterIdleP11RagdollBody9BodyStateS1__100


;Ragdoll_ExitIdle(RagdollBody*, BodyState, BodyState)
_Z16Ragdoll_ExitIdleP11RagdollBody9BodyStateS1_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, [ebp+0x8]
	cmp dword [ebp+0x10], 0x1
	jbe _Z16Ragdoll_ExitIdleP11RagdollBody9BodyStateS1__10
	mov eax, ebx
	call _Z23Ragdoll_ValidateBodyObjP11RagdollBody
	test al, al
	jz _Z16Ragdoll_ExitIdleP11RagdollBody9BodyStateS1__20
	cmp dword [ebx+0x24], 0x2
	jg _Z16Ragdoll_ExitIdleP11RagdollBody9BodyStateS1__30
_Z16Ragdoll_ExitIdleP11RagdollBody9BodyStateS1__20:
	xor eax, eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16Ragdoll_ExitIdleP11RagdollBody9BodyStateS1__30:
	call _Z26Ragdoll_CountPhysicsBodiesv
	mov edx, ragdoll_max_simulating
	mov edx, [edx]
	cmp eax, [edx+0xc]
	jge _Z16Ragdoll_ExitIdleP11RagdollBody9BodyStateS1__20
	mov eax, ebx
	call _Z25Ragdoll_CreateBodyPhysicsP11RagdollBody
	test al, al
	jz _Z16Ragdoll_ExitIdleP11RagdollBody9BodyStateS1__20
	mov [esp], ebx
	call _Z28Ragdoll_BodyBoneOrientationsP11RagdollBody
	mov esi, eax
	mov [esp], ebx
	call _Z15Ragdoll_BodyDefP11RagdollBody
	lea edx, [ebx+0x38]
	mov [ebp-0x2c], edx
	lea edi, [eax+0x8]
	mov eax, [ebx+0x34]
	test eax, eax
	jle _Z16Ragdoll_ExitIdleP11RagdollBody9BodyStateS1__10
	mov dword [ebp-0x30], 0x0
	jmp _Z16Ragdoll_ExitIdleP11RagdollBody9BodyStateS1__40
_Z16Ragdoll_ExitIdleP11RagdollBody9BodyStateS1__60:
	mov eax, [esi+0x10]
	mov [ebp-0x28], eax
	mov eax, [edx+0x4]
	mov [ebp-0x24], eax
	mov eax, [edx+0x8]
	mov [ebp-0x20], eax
	mov eax, [edx+0xc]
	mov [ebp-0x1c], eax
_Z16Ragdoll_ExitIdleP11RagdollBody9BodyStateS1__70:
	mov edx, [ebp-0x2c]
	mov eax, [edx+0x8]
	test eax, eax
	jnz _Z16Ragdoll_ExitIdleP11RagdollBody9BodyStateS1__50
_Z16Ragdoll_ExitIdleP11RagdollBody9BodyStateS1__80:
	add dword [ebp-0x30], 0x1
	add dword [ebp-0x2c], 0x1c
	add edi, 0x4c
	add esi, 0x20
	mov eax, [ebp-0x30]
	cmp eax, [ebx+0x34]
	jge _Z16Ragdoll_ExitIdleP11RagdollBody9BodyStateS1__10
_Z16Ragdoll_ExitIdleP11RagdollBody9BodyStateS1__40:
	lea edx, [esi+0x10]
	cmp byte [edi+0x34], 0x0
	jz _Z16Ragdoll_ExitIdleP11RagdollBody9BodyStateS1__60
	lea eax, [ebp-0x28]
	mov [esp+0x8], eax
	mov dword [esp+0x4], quatZRot
	mov [esp], edx
	call _Z15Ragdoll_QuatMulPKfS0_Pf
	jmp _Z16Ragdoll_ExitIdleP11RagdollBody9BodyStateS1__70
_Z16Ragdoll_ExitIdleP11RagdollBody9BodyStateS1__10:
	mov eax, 0x1
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16Ragdoll_ExitIdleP11RagdollBody9BodyStateS1__50:
	lea edx, [ebp-0x28]
	mov [esp+0xc], edx
	mov [esp+0x8], esi
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call _Z22Phys_ObjSetOrientation9PhysWorldiPKfS1_
	jmp _Z16Ragdoll_ExitIdleP11RagdollBody9BodyStateS1__80
	nop


;Ragdoll_ValidateBodyObj(RagdollBody*)
_Z23Ragdoll_ValidateBodyObjP11RagdollBody:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov esi, eax
	mov [esp], eax
	call _Z15Ragdoll_BodyDefP11RagdollBody
	mov [ebp-0x30], eax
	mov [esp], esi
	call _Z16Ragdoll_BodyDObjP11RagdollBody
	mov [ebp-0x2c], eax
	test eax, eax
	jz _Z23Ragdoll_ValidateBodyObjP11RagdollBody_10
	mov ebx, [ebp-0x30]
	add ebx, 0x8
	mov edx, [esi+0x34]
	test edx, edx
	jg _Z23Ragdoll_ValidateBodyObjP11RagdollBody_20
_Z23Ragdoll_ValidateBodyObjP11RagdollBody_70:
	mov ebx, [ebp-0x30]
	add ebx, 0x434
	mov eax, [esi+0x1c0]
	test eax, eax
	jg _Z23Ragdoll_ValidateBodyObjP11RagdollBody_30
_Z23Ragdoll_ValidateBodyObjP11RagdollBody_50:
	mov eax, 0x1
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23Ragdoll_ValidateBodyObjP11RagdollBody_30:
	xor edi, edi
_Z23Ragdoll_ValidateBodyObjP11RagdollBody_40:
	mov byte [ebp-0x19], 0x0
	lea edx, [ebp-0x19]
	mov [esp+0x8], edx
	mov eax, [ebx+0x14]
	mov [esp+0x4], eax
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call _Z16DObjGetBoneIndexPK6DObj_sjPh
	test eax, eax
	jz _Z23Ragdoll_ValidateBodyObjP11RagdollBody_10
	cmp byte [ebp-0x19], 0xff
	jz _Z23Ragdoll_ValidateBodyObjP11RagdollBody_10
	add edi, 0x1
	add ebx, 0x20
	cmp edi, [esi+0x1c0]
	jl _Z23Ragdoll_ValidateBodyObjP11RagdollBody_40
	jmp _Z23Ragdoll_ValidateBodyObjP11RagdollBody_50
_Z23Ragdoll_ValidateBodyObjP11RagdollBody_20:
	xor edi, edi
	jmp _Z23Ragdoll_ValidateBodyObjP11RagdollBody_60
_Z23Ragdoll_ValidateBodyObjP11RagdollBody_80:
	cmp byte [ebp-0x19], 0xff
	jz _Z23Ragdoll_ValidateBodyObjP11RagdollBody_10
	add edi, 0x1
	add ebx, 0x4c
	cmp [esi+0x34], edi
	jle _Z23Ragdoll_ValidateBodyObjP11RagdollBody_70
_Z23Ragdoll_ValidateBodyObjP11RagdollBody_60:
	mov byte [ebp-0x19], 0x0
	lea eax, [ebp-0x19]
	mov [esp+0x8], eax
	mov eax, [ebx+0x28]
	mov [esp+0x4], eax
	mov edx, [ebp-0x2c]
	mov [esp], edx
	call _Z16DObjGetBoneIndexPK6DObj_sjPh
	test eax, eax
	jz _Z23Ragdoll_ValidateBodyObjP11RagdollBody_10
	cmp byte [ebp-0x19], 0xff
	jz _Z23Ragdoll_ValidateBodyObjP11RagdollBody_10
	mov byte [ebp-0x19], 0x0
	mov eax, [ebx+0x2c]
	test eax, eax
	jz _Z23Ragdoll_ValidateBodyObjP11RagdollBody_80
	lea edx, [ebp-0x19]
	mov [esp+0x8], edx
	mov [esp+0x4], eax
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call _Z16DObjGetBoneIndexPK6DObj_sjPh
	test eax, eax
	jnz _Z23Ragdoll_ValidateBodyObjP11RagdollBody_80
_Z23Ragdoll_ValidateBodyObjP11RagdollBody_10:
	xor eax, eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;Ragdoll_BodyCenterOfMass(RagdollBody*, float*)
_Z24Ragdoll_BodyCenterOfMassP11RagdollBodyPf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov [ebp-0x34], eax
	mov esi, edx
	mov [esp], eax
	call _Z15Ragdoll_BodyDefP11RagdollBody
	mov edi, [ebp-0x34]
	add edi, 0x38
	lea ebx, [eax+0x8]
	mov eax, [ebp-0x34]
	mov ecx, [eax+0x34]
	test ecx, ecx
	jg _Z24Ragdoll_BodyCenterOfMassP11RagdollBodyPf_10
	movss xmm1, dword [_float_ inf]
_Z24Ragdoll_BodyCenterOfMassP11RagdollBodyPf_60:
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
_Z24Ragdoll_BodyCenterOfMassP11RagdollBodyPf_10:
	mov dword [ebp-0x30], 0x0
	pxor xmm0, xmm0
	movss [ebp-0x2c], xmm0
	jmp _Z24Ragdoll_BodyCenterOfMassP11RagdollBodyPf_20
_Z24Ragdoll_BodyCenterOfMassP11RagdollBodyPf_40:
	add dword [ebp-0x30], 0x1
	add edi, 0x1c
	add ebx, 0x4c
	mov edx, [ebp-0x30]
	mov eax, [ebp-0x34]
	cmp edx, [eax+0x34]
	jge _Z24Ragdoll_BodyCenterOfMassP11RagdollBodyPf_30
_Z24Ragdoll_BodyCenterOfMassP11RagdollBodyPf_50:
	movss xmm0, dword [ebp-0x2c]
_Z24Ragdoll_BodyCenterOfMassP11RagdollBodyPf_20:
	addss xmm0, [ebx+0x3c]
	movss [ebp-0x2c], xmm0
	mov eax, [edi+0x8]
	test eax, eax
	jz _Z24Ragdoll_BodyCenterOfMassP11RagdollBodyPf_40
	lea edx, [ebp-0x24]
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z23Phys_ObjGetCenterOfMassiPf
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
	jl _Z24Ragdoll_BodyCenterOfMassP11RagdollBodyPf_50
_Z24Ragdoll_BodyCenterOfMassP11RagdollBodyPf_30:
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, dword [ebp-0x2c]
	jmp _Z24Ragdoll_BodyCenterOfMassP11RagdollBodyPf_60


;Ragdoll_CreateBodyPhysics(RagdollBody*)
_Z25Ragdoll_CreateBodyPhysicsP11RagdollBody:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x16c
	mov [ebp-0x130], eax
	mov [esp], eax
	call _Z15Ragdoll_BodyDefP11RagdollBody
	mov edx, [ebp-0x130]
	mov ecx, [edx+0x34]
	test ecx, ecx
	jg _Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_10
	mov ecx, edx
_Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_280:
	mov [esp], ecx
	call _Z15Ragdoll_BodyDefP11RagdollBody
	mov edx, [ebp-0x130]
	mov edx, [edx+0x20c]
	test edx, edx
	jle _Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_20
	mov dword [ebp-0x11c], 0x0
	lea edi, [eax+0x550]
	mov eax, [ebp-0x130]
	add eax, 0x210
	mov [ebp-0x138], eax
	mov ecx, [ebp-0x130]
_Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_90:
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
	jz _Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_30
	lea eax, [edx*4]
	shl edx, 0x5
	sub edx, eax
	lea edx, [edx+ecx+0x38]
	mov [ebp-0x110], edx
_Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_220:
	mov edx, [ebp-0x114]
	mov eax, [edx+0x8]
	test eax, eax
	jz _Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_40
	lea ecx, [ebp-0x8c]
	mov [esp+0x8], ecx
	lea edx, [ebp-0x3c]
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z19Phys_ObjGetPositioniPfPA3_f
	lea ecx, [ebp-0xd4]
	mov [esp+0x4], ecx
	lea eax, [ebp-0x8c]
	mov [esp], eax
	call _Z13AxisTransposePA3_KfPA3_f
	mov eax, [edi+0x10]
	test eax, eax
	jz _Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_50
	mov eax, [edi+0x10]
	test eax, eax
	jg _Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_60
_Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_180:
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
	jz _Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_70
	cmp eax, 0x2
	jz _Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_80
_Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_210:
	add dword [ebp-0x11c], 0x1
	add dword [ebp-0x138], 0x8
	add edi, 0x54
	mov eax, [ebp-0x11c]
	mov ecx, [ebp-0x130]
	cmp [ecx+0x20c], eax
	jg _Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_90
_Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_20:
	mov eax, 0x1
	add esp, 0x16c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_10:
	mov esi, edx
	mov dword [ebp-0x12c], 0x0
	add eax, 0x8
	mov [ebp-0x13c], eax
	add edx, 0x30
	mov [ebp-0x140], edx
	add esi, 0x48
	mov ecx, [ebp-0x130]
_Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_400:
	mov [esp], ecx
	call _Z15Ragdoll_BodyDefP11RagdollBody
	mov eax, [ebp-0x130]
	mov [esp], eax
	call _Z16Ragdoll_BodyDObjP11RagdollBody
	mov edi, eax
	test eax, eax
	jz _Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_100
	mov byte [esi-0xc], 0x0
	mov byte [esi-0xb], 0x0
	mov eax, [ebp-0x140]
	add eax, 0xc
	mov [esp+0x8], eax
	mov edx, [ebp-0x13c]
	mov eax, [edx+0x28]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z16DObjGetBoneIndexPK6DObj_sjPh
	test eax, eax
	jz _Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_100
	cmp byte [esi-0xc], 0xff
	jz _Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_100
	mov ecx, [ebp-0x13c]
	mov edx, [ecx+0x2c]
	test edx, edx
	jnz _Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_110
	mov byte [esi-0xb], 0x0
_Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_230:
	mov eax, [ebp-0x130]
	mov [esp], eax
	call _Z16Ragdoll_BodyPoseP11RagdollBody
	mov ebx, eax
	lea edx, [ebp-0x8c]
	mov [esp+0x4], edx
	lea eax, [eax+0x28]
	mov [esp], eax
	call _Z12AnglesToAxisPKfPA3_f
	lea ecx, [ebp-0xd4]
	mov [esp+0x4], ecx
	lea eax, [ebp-0x8c]
	mov [esp], eax
	call _Z13AxisTransposePA3_KfPA3_f
	lea edx, [ebx+0x1c]
	mov [ebp-0x128], edx
	lea ecx, [ebp-0x8c]
	mov [esp+0x8], ecx
	movzx eax, byte [esi-0xc]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z21DObjGetBasePoseMatrixPK6DObj_shP11DObjAnimMat
	lea eax, [ebp-0xb0]
	mov [ebp-0x134], eax
	mov [esp+0x4], eax
	lea edx, [ebp-0xd4]
	mov [esp], edx
	call _Z19Ragdoll_Mat33ToQuatPA3_KfPf
	lea ecx, [ebp-0x58]
	mov [esp+0x8], ecx
	lea eax, [ebp-0x8c]
	mov [esp+0x4], eax
	mov edx, [ebp-0x134]
	mov [esp], edx
	call _Z15Ragdoll_QuatMulPKfS0_Pf
	lea ecx, [ebp-0x24]
	mov [esp+0x8], ecx
	lea eax, [ebp-0xd4]
	mov [esp+0x4], eax
	lea eax, [ebp-0x7c]
	mov [esp], eax
	call _Z10Vec3RotatePKfPA3_S_Pf
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
	jnz _Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_120
	mov eax, [ebp-0x58]
	mov [ebp-0x68], eax
	mov eax, [ebp-0x54]
	mov [ebp-0x64], eax
	mov eax, [ebp-0x50]
	mov [ebp-0x60], eax
	mov eax, [ebp-0x4c]
	mov [ebp-0x5c], eax
	lea ebx, [ebp-0x68]
_Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_300:
	movzx eax, byte [esi-0xb]
	test al, al
	jnz _Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_130
	mov eax, [ebp-0x24]
	mov [ebp-0x30], eax
	mov eax, [ebp-0x20]
	mov [ebp-0x2c], eax
	mov eax, [ebp-0x1c]
	mov [ebp-0x28], eax
_Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_290:
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
	call _Z14Phys_ObjCreate9PhysWorldPKfS1_S1_PK10PhysPreset
	mov edx, eax
	mov [esi-0x8], eax
	test eax, eax
	jnz _Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_140
	mov dword [esp+0x4], _cstring_ragdoll_failed_t
	mov dword [esp], 0xe
	call _Z16Com_PrintWarningiPKcz
_Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_100:
	mov ecx, [ebp-0x130]
	mov ebx, [ecx+0x34]
	test ebx, ebx
	jle _Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_150
	mov ebx, ecx
	xor esi, esi
	jmp _Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_160
_Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_170:
	mov dword [ebx+0x40], 0x0
	add esi, 0x1
	add ebx, 0x1c
	mov ecx, [ebp-0x130]
	cmp [ecx+0x34], esi
	jle _Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_150
_Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_160:
	mov eax, [ebx+0x40]
	test eax, eax
	jz _Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_170
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call _Z15Phys_ObjDestroy9PhysWorldi
	mov dword [ebx+0x40], 0x0
	add esi, 0x1
	add ebx, 0x1c
	mov ecx, [ebp-0x130]
	cmp [ecx+0x34], esi
	jg _Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_160
_Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_150:
	xor eax, eax
_Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_390:
	add esp, 0x16c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_50:
	mov dword [edi+0x14], 0x0
	mov dword [edi+0x18], 0x0
	mov dword [edi+0x1c], 0x3f800000
	mov dword [edi+0x50], 0x0
	mov dword [edi+0x38], 0xbfc90fdb
	mov dword [edi+0x44], 0x3fc90fdb
	mov dword [edi+0x10], 0x1
	mov eax, [edi+0x10]
	test eax, eax
	jle _Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_180
_Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_60:
	mov dword [ebp-0x10c], 0x0
	lea edx, [ebp-0xb0]
	mov [ebp-0x134], edx
	mov ebx, [ebp-0x118]
	add ebx, 0xc
	xor esi, esi
	mov eax, edx
	jmp _Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_190
_Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_200:
	mov eax, [ebp-0x134]
_Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_190:
	add eax, esi
	mov [esp+0x8], eax
	lea ecx, [ebp-0xd4]
	mov [esp+0x4], ecx
	mov [esp], ebx
	call _Z10Vec3RotatePKfPA3_S_Pf
	add dword [ebp-0x10c], 0x1
	add esi, 0xc
	add ebx, 0xc
	mov eax, [ebp-0x10c]
	cmp [edi+0x10], eax
	jg _Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_200
	jmp _Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_180
_Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_80:
	lea ecx, [ebp-0x3c]
	mov [esp+0xc], ecx
	mov edx, [ebp-0x110]
	mov eax, [edx+0x8]
	mov [esp+0x8], eax
	mov ecx, [ebp-0x114]
	mov eax, [ecx+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call _Z24Phys_CreateBallAndSocket9PhysWorldiiPKf
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
	call _Z23Phys_CreateAngularMotor9PhysWorldiiiPA3_KfPS0_S3_S3_S3_
	mov edx, [ebp-0x138]
	mov [edx+0x4], eax
	jmp _Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_210
_Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_70:
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
	call _Z16Phys_CreateHinge9PhysWorldiiPKfS1_ffff
	mov edx, [ebp-0x138]
	mov [edx], eax
	mov dword [edx+0x4], 0x0
	jmp _Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_210
_Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_30:
	mov dword [ebp-0x110], 0x0
	jmp _Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_220
_Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_110:
	mov eax, [ebp-0x140]
	add eax, 0xd
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], edi
	call _Z16DObjGetBoneIndexPK6DObj_sjPh
	test eax, eax
	jz _Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_100
	cmp byte [esi-0xc], 0xff
	jnz _Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_230
	jmp _Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_100
_Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_140:
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
	jz _Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_240
	cmp eax, 0x5
	jz _Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_250
	cmp eax, 0x1
	jz _Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_260
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_ragdoll_unknown_
	mov dword [esp], 0xe
	call _Z16Com_PrintWarningiPKcz
_Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_310:
	add dword [ebp-0x12c], 0x1
	add dword [ebp-0x140], 0x1c
	add esi, 0x1c
	add dword [ebp-0x13c], 0x4c
	mov edx, [ebp-0x12c]
	mov eax, [ebp-0x130]
	cmp edx, [eax+0x34]
	jl _Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_270
	mov ecx, eax
	jmp _Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_280
_Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_130:
	lea ecx, [ebp-0xb0]
	mov [esp+0x8], ecx
	movzx eax, al
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z21DObjGetBasePoseMatrixPK6DObj_shP11DObjAnimMat
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	lea eax, [ebp-0xd4]
	mov [esp+0x4], eax
	lea eax, [ebp-0xa0]
	mov [esp], eax
	call _Z10Vec3RotatePKfPA3_S_Pf
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
	jmp _Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_290
_Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_120:
	lea ebx, [ebp-0x68]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], quatZRot
	lea edx, [ebp-0x58]
	mov [esp], edx
	call _Z15Ragdoll_QuatMulPKfS0_Pf
	jmp _Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_300
_Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_240:
	mov [esp+0x14], esi
	movss [esp+0x10], xmm0
	mov eax, [ecx+0x30]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], edx
	mov dword [esp], 0x2
	call _Z32Phys_ObjAddGeomCylinderDirection9PhysWorldiiffPKf
	jmp _Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_310
_Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_250:
	mov [esp+0x14], esi
	movss [esp+0x10], xmm0
	mov ecx, [ebp-0x13c]
	mov eax, [ecx+0x30]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], edx
	mov dword [esp], 0x2
	call _Z22Phys_ObjAddGeomCapsule9PhysWorldiiffPKf
	jmp _Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_310
_Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_260:
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
	call _Z18Phys_ObjAddGeomBox9PhysWorldiPKfS1_
	jmp _Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_310
_Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_40:
	mov edx, [ebp-0x130]
	mov esi, [edx+0x34]
	test esi, esi
	jle _Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_320
	mov ebx, edx
	xor esi, esi
_Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_340:
	mov eax, [ebx+0x40]
	test eax, eax
	jz _Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_330
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call _Z15Phys_ObjDestroy9PhysWorldi
_Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_330:
	mov dword [ebx+0x40], 0x0
	add esi, 0x1
	add ebx, 0x1c
	mov edx, [ebp-0x130]
	cmp esi, [edx+0x34]
	jl _Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_340
_Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_320:
	mov ecx, [ebp-0x130]
	mov edi, [ecx+0x20c]
	test edi, edi
	jle _Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_350
	mov ebx, ecx
	xor esi, esi
_Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_380:
	mov eax, [ebx+0x210]
	test eax, eax
	jz _Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_360
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call _Z17Phys_JointDestroy9PhysWorldi
_Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_360:
	mov eax, [ebx+0x214]
	test eax, eax
	jz _Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_370
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call _Z17Phys_JointDestroy9PhysWorldi
_Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_370:
	add esi, 0x1
	add ebx, 0x8
	mov eax, [ebp-0x130]
	cmp esi, [eax+0x20c]
	jl _Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_380
_Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_350:
	mov eax, [ebp-0x130]
	add eax, 0x210
	mov dword [esp+0x8], 0xe0
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	xor eax, eax
	jmp _Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_390
_Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_270:
	mov ecx, eax
	jmp _Z25Ragdoll_CreateBodyPhysicsP11RagdollBody_400
	nop


;Ragdoll_SnapshotBaseLerpOffsets(RagdollBody*)
_Z31Ragdoll_SnapshotBaseLerpOffsetsP11RagdollBody:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x11c
	mov [ebp-0x108], eax
	mov [esp], eax
	call _Z15Ragdoll_BodyDefP11RagdollBody
	mov [ebp-0x104], eax
	mov eax, [ebp-0x108]
	mov [esp], eax
	call _Z16Ragdoll_BodyDObjP11RagdollBody
	mov [ebp-0x100], eax
	mov edi, [ebp-0x108]
	add edi, 0x1c4
	mov esi, [ebp-0x108]
	add esi, 0x8b4
	mov edx, [ebp-0x104]
	mov eax, [edx+0x430]
	test eax, eax
	jg _Z31Ragdoll_SnapshotBaseLerpOffsetsP11RagdollBody_10
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z31Ragdoll_SnapshotBaseLerpOffsetsP11RagdollBody_10:
	mov dword [ebp-0xfc], 0x0
_Z31Ragdoll_SnapshotBaseLerpOffsetsP11RagdollBody_20:
	mov ebx, [edi]
	lea eax, [ebp-0x38]
	mov [esp+0x8], eax
	movzx eax, byte [edi+0x4]
	mov [esp+0x4], eax
	mov edx, [ebp-0x100]
	mov [esp], edx
	call _Z21DObjGetBasePoseMatrixPK6DObj_shP11DObjAnimMat
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
	call _Z21DObjGetBasePoseMatrixPK6DObj_shP11DObjAnimMat
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
	call _Z16MatrixMultiply43PA3_KfS1_PA3_f
	lea eax, [esi+0x10]
	mov [esp+0x4], eax
	lea edx, [ebp-0xe8]
	mov [esp], edx
	call _Z10AxisToQuatPA3_KfPf
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
	jl _Z31Ragdoll_SnapshotBaseLerpOffsetsP11RagdollBody_20
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Ragdoll_SnapshotBaseLerpBones(RagdollBody*, BoneOrientation*)
_Z29Ragdoll_SnapshotBaseLerpBonesP11RagdollBodyP15BoneOrientation:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1ac
	mov [ebp-0x160], eax
	mov ebx, edx
	mov [esp], eax
	call _Z15Ragdoll_BodyDefP11RagdollBody
	mov [ebp-0x15c], eax
	mov eax, [ebp-0x160]
	mov [esp], eax
	call _Z16Ragdoll_BodyDObjP11RagdollBody
	mov [ebp-0x158], eax
	test eax, eax
	jz _Z29Ragdoll_SnapshotBaseLerpBonesP11RagdollBodyP15BoneOrientation_10
	mov edx, [ebp-0x160]
	mov [esp], edx
	call _Z16Ragdoll_BodyPoseP11RagdollBody
	mov [ebp-0x154], eax
	test eax, eax
	jz _Z29Ragdoll_SnapshotBaseLerpBonesP11RagdollBodyP15BoneOrientation_10
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
	jle _Z29Ragdoll_SnapshotBaseLerpBonesP11RagdollBodyP15BoneOrientation_10
	mov [ebp-0x130], eax
	mov dword [ebp-0x144], 0x0
	add edx, 0x8c4
	mov [ebp-0x164], edx
	mov edx, eax
	jmp _Z29Ragdoll_SnapshotBaseLerpBonesP11RagdollBodyP15BoneOrientation_20
_Z29Ragdoll_SnapshotBaseLerpBonesP11RagdollBodyP15BoneOrientation_60:
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
_Z29Ragdoll_SnapshotBaseLerpBonesP11RagdollBodyP15BoneOrientation_70:
	mov ebx, [ebp-0x14c]
	add ebx, 0x10
	mov eax, [ebp-0x12c]
	add eax, 0x10
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov [esp], ebx
	call _Z15Ragdoll_QuatMulPKfS0_Pf
	lea esi, [ebp-0x8c]
	mov [esp+0x4], esi
	mov [esp], ebx
	call _Z10QuatToAxisPKfPA3_f
	lea ebx, [ebp-0x68]
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z13AxisTransposePA3_KfPA3_f
	mov edx, [ebp-0x12c]
	mov [esp+0x8], edx
	mov [esp+0x4], ebx
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _Z10Vec3RotatePKfPA3_S_Pf
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
	jle _Z29Ragdoll_SnapshotBaseLerpBonesP11RagdollBodyP15BoneOrientation_10
	mov edx, [ebp-0x130]
_Z29Ragdoll_SnapshotBaseLerpBonesP11RagdollBodyP15BoneOrientation_20:
	mov eax, [edx+0x450]
	test eax, eax
	jle _Z29Ragdoll_SnapshotBaseLerpBonesP11RagdollBodyP15BoneOrientation_30
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
_Z29Ragdoll_SnapshotBaseLerpBonesP11RagdollBodyP15BoneOrientation_80:
	mov eax, [ebp-0x150]
	movzx esi, byte [eax+0x4]
	mov ebx, [eax]
	mov [esp], edx
	call _Z28Ragdoll_BodyBoneOrientationsP11RagdollBody
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
	call _Z15CG_DObjCalcBonePK7cpose_tP6DObj_si
	mov eax, [ebp-0x158]
	mov [esp], eax
	call _Z20DObjGetRotTransArrayPK6DObj_s
	test eax, eax
	jz _Z29Ragdoll_SnapshotBaseLerpBonesP11RagdollBodyP15BoneOrientation_40
	shl ebx, 0x5
	lea esi, [eax+ebx]
_Z29Ragdoll_SnapshotBaseLerpBonesP11RagdollBodyP15BoneOrientation_90:
	mov edx, edi
	movzx ebx, dl
	mov [esp+0x8], ebx
	mov eax, [ebp-0x158]
	mov [esp+0x4], eax
	mov edx, [ebp-0x154]
	mov [esp], edx
	call _Z15CG_DObjCalcBonePK7cpose_tP6DObj_si
	mov eax, [ebp-0x158]
	mov [esp], eax
	call _Z20DObjGetRotTransArrayPK6DObj_s
	test eax, eax
	jz _Z29Ragdoll_SnapshotBaseLerpBonesP11RagdollBodyP15BoneOrientation_50
	shl ebx, 0x5
	add eax, ebx
_Z29Ragdoll_SnapshotBaseLerpBonesP11RagdollBodyP15BoneOrientation_50:
	test esi, esi
	jz _Z29Ragdoll_SnapshotBaseLerpBonesP11RagdollBodyP15BoneOrientation_10
	test eax, eax
	jz _Z29Ragdoll_SnapshotBaseLerpBonesP11RagdollBodyP15BoneOrientation_10
	cmp esi, eax
	jz _Z29Ragdoll_SnapshotBaseLerpBonesP11RagdollBodyP15BoneOrientation_10
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
	call _Z16MatrixMultiply43PA3_KfS1_PA3_f
	lea edx, [ebp-0x44]
	mov [esp+0x4], edx
	mov [esp], ebx
	call _Z10AxisToQuatPA3_KfPf
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
	ja _Z29Ragdoll_SnapshotBaseLerpBonesP11RagdollBodyP15BoneOrientation_60
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
	call _Z16Ragdoll_QuatLerpPKfS0_fPf
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
	jmp _Z29Ragdoll_SnapshotBaseLerpBonesP11RagdollBodyP15BoneOrientation_70
_Z29Ragdoll_SnapshotBaseLerpBonesP11RagdollBodyP15BoneOrientation_10:
	add esp, 0x1ac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z29Ragdoll_SnapshotBaseLerpBonesP11RagdollBodyP15BoneOrientation_30:
	movss xmm0, dword [_float_1_00000000]
	movss [ebp-0x148], xmm0
	mov edx, [ebp-0x160]
	jmp _Z29Ragdoll_SnapshotBaseLerpBonesP11RagdollBodyP15BoneOrientation_80
_Z29Ragdoll_SnapshotBaseLerpBonesP11RagdollBodyP15BoneOrientation_40:
	xor esi, esi
	jmp _Z29Ragdoll_SnapshotBaseLerpBonesP11RagdollBodyP15BoneOrientation_90


;Ragdoll_SnapshotBonePositions(RagdollBody*, BoneOrientation*)
_Z29Ragdoll_SnapshotBonePositionsP11RagdollBodyP15BoneOrientation:
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
	jbe _Z29Ragdoll_SnapshotBonePositionsP11RagdollBodyP15BoneOrientation_10
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z29Ragdoll_SnapshotBonePositionsP11RagdollBodyP15BoneOrientation_10:
	mov [esp], edx
	call _Z15Ragdoll_BodyDefP11RagdollBody
	mov edi, [ebp-0x30]
	add edi, 0x38
	lea esi, [eax+0x8]
	mov eax, [ebp-0x30]
	mov ebx, [eax+0x34]
	test ebx, ebx
	jg _Z29Ragdoll_SnapshotBonePositionsP11RagdollBodyP15BoneOrientation_20
_Z29Ragdoll_SnapshotBonePositionsP11RagdollBodyP15BoneOrientation_60:
	mov edx, [ebp-0x34]
	call _Z29Ragdoll_SnapshotBaseLerpBonesP11RagdollBodyP15BoneOrientation
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z29Ragdoll_SnapshotBonePositionsP11RagdollBodyP15BoneOrientation_20:
	mov ebx, [ebp-0x34]
	mov dword [ebp-0x2c], 0x0
	jmp _Z29Ragdoll_SnapshotBonePositionsP11RagdollBodyP15BoneOrientation_30
_Z29Ragdoll_SnapshotBonePositionsP11RagdollBodyP15BoneOrientation_50:
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
	jle _Z29Ragdoll_SnapshotBonePositionsP11RagdollBodyP15BoneOrientation_40
_Z29Ragdoll_SnapshotBonePositionsP11RagdollBodyP15BoneOrientation_30:
	lea edx, [ebp-0x28]
	mov [esp+0xc], edx
	mov [esp+0x8], ebx
	mov eax, [edi+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call _Z28Phys_ObjGetInterpolatedState9PhysWorldiPfS0_
	lea edx, [ebx+0x10]
	cmp byte [esi+0x34], 0x0
	jz _Z29Ragdoll_SnapshotBonePositionsP11RagdollBodyP15BoneOrientation_50
	mov [esp+0x8], edx
	mov dword [esp+0x4], quatZRot
	lea eax, [ebp-0x28]
	mov [esp], eax
	call _Z15Ragdoll_QuatMulPKfS0_Pf
	add dword [ebp-0x2c], 0x1
	add edi, 0x1c
	add ebx, 0x20
	add esi, 0x4c
	mov eax, [ebp-0x2c]
	mov edx, [ebp-0x30]
	cmp [edx+0x34], eax
	jg _Z29Ragdoll_SnapshotBonePositionsP11RagdollBodyP15BoneOrientation_30
_Z29Ragdoll_SnapshotBonePositionsP11RagdollBodyP15BoneOrientation_40:
	mov eax, edx
	jmp _Z29Ragdoll_SnapshotBonePositionsP11RagdollBodyP15BoneOrientation_60


;Ragdoll_SnapshotAnimOrientations(RagdollBody*, BoneOrientation*)
_Z32Ragdoll_SnapshotAnimOrientationsP11RagdollBodyP15BoneOrientation:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov [ebp-0x2c], eax
	mov esi, edx
	mov [esp], eax
	call _Z15Ragdoll_BodyDefP11RagdollBody
	mov ebx, eax
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call _Z16Ragdoll_BodyDObjP11RagdollBody
	mov [ebp-0x1c], eax
	mov edx, [ebp-0x2c]
	mov [esp], edx
	call _Z16Ragdoll_BodyPoseP11RagdollBody
	mov [ebp-0x20], eax
	test ebx, ebx
	jz _Z32Ragdoll_SnapshotAnimOrientationsP11RagdollBodyP15BoneOrientation_10
	mov ecx, [ebp-0x1c]
	test ecx, ecx
	jz _Z32Ragdoll_SnapshotAnimOrientationsP11RagdollBodyP15BoneOrientation_10
	test eax, eax
	jz _Z32Ragdoll_SnapshotAnimOrientationsP11RagdollBodyP15BoneOrientation_10
	mov eax, [ebp-0x2c]
	add eax, 0x38
	mov [ebp-0x24], eax
	mov edx, [ebp-0x2c]
	mov eax, [edx+0x34]
	test eax, eax
	jg _Z32Ragdoll_SnapshotAnimOrientationsP11RagdollBodyP15BoneOrientation_20
_Z32Ragdoll_SnapshotAnimOrientationsP11RagdollBodyP15BoneOrientation_30:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z32Ragdoll_SnapshotAnimOrientationsP11RagdollBodyP15BoneOrientation_10:
	mov eax, [ebp-0x2c]
	mov ebx, [eax+0x24]
	test ebx, ebx
	jz _Z32Ragdoll_SnapshotAnimOrientationsP11RagdollBodyP15BoneOrientation_30
	lea eax, [ebx+ebx*2]
	mov eax, [eax*4+stateEntries+0x4]
	test eax, eax
	jz _Z32Ragdoll_SnapshotAnimOrientationsP11RagdollBodyP15BoneOrientation_40
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov edx, [ebp-0x2c]
	mov [esp], edx
	call eax
	test al, al
	jz _Z32Ragdoll_SnapshotAnimOrientationsP11RagdollBodyP15BoneOrientation_30
_Z32Ragdoll_SnapshotAnimOrientationsP11RagdollBodyP15BoneOrientation_40:
	mov eax, [ebp-0x2c]
	mov dword [eax+0x24], 0x0
	mov eax, [stateEntries]
	test eax, eax
	jz _Z32Ragdoll_SnapshotAnimOrientationsP11RagdollBodyP15BoneOrientation_50
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov edx, [ebp-0x2c]
	mov [esp], edx
	call eax
	test al, al
	jnz _Z32Ragdoll_SnapshotAnimOrientationsP11RagdollBodyP15BoneOrientation_50
	mov eax, [ebp-0x2c]
	mov edx, [eax+0x24]
	test edx, edx
	jnz _Z32Ragdoll_SnapshotAnimOrientationsP11RagdollBodyP15BoneOrientation_30
	mov [eax+0x24], ebx
	jmp _Z32Ragdoll_SnapshotAnimOrientationsP11RagdollBodyP15BoneOrientation_30
_Z32Ragdoll_SnapshotAnimOrientationsP11RagdollBodyP15BoneOrientation_20:
	mov dword [ebp-0x28], 0x0
_Z32Ragdoll_SnapshotAnimOrientationsP11RagdollBodyP15BoneOrientation_70:
	lea edi, [esi+0x10]
	mov eax, [ebp-0x24]
	movzx ebx, byte [eax+0x4]
	mov [esp+0x8], ebx
	mov edx, [ebp-0x1c]
	mov [esp+0x4], edx
	mov eax, [ebp-0x20]
	mov [esp], eax
	call _Z15CG_DObjCalcBonePK7cpose_tP6DObj_si
	mov edx, [ebp-0x1c]
	mov [esp], edx
	call _Z20DObjGetRotTransArrayPK6DObj_s
	test eax, eax
	jz _Z32Ragdoll_SnapshotAnimOrientationsP11RagdollBodyP15BoneOrientation_60
	shl ebx, 0x5
	mov edx, eax
	add edx, ebx
	jz _Z32Ragdoll_SnapshotAnimOrientationsP11RagdollBodyP15BoneOrientation_60
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
_Z32Ragdoll_SnapshotAnimOrientationsP11RagdollBodyP15BoneOrientation_60:
	add dword [ebp-0x28], 0x1
	add dword [ebp-0x24], 0x1c
	add esi, 0x20
	mov edx, [ebp-0x28]
	mov eax, [ebp-0x2c]
	cmp edx, [eax+0x34]
	jl _Z32Ragdoll_SnapshotAnimOrientationsP11RagdollBodyP15BoneOrientation_70
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z32Ragdoll_SnapshotAnimOrientationsP11RagdollBodyP15BoneOrientation_50:
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
_Z14Ragdoll_Updatei:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov eax, ragdollInited
	cmp byte [eax], 0x0
	jz _Z14Ragdoll_Updatei_10
	mov eax, ragdoll_enable
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z14Ragdoll_Updatei_10
	mov eax, cg_paused
	mov eax, [eax]
	test eax, eax
	jz _Z14Ragdoll_Updatei_10
	mov eax, [eax+0xc]
	test eax, eax
	jnz _Z14Ragdoll_Updatei_10
	mov eax, [ebp+0x8]
	add [ragdollTime], eax
	xor edi, edi
	mov esi, ragdollBodies
_Z14Ragdoll_Updatei_50:
	mov eax, [esi]
	test eax, eax
	jle _Z14Ragdoll_Updatei_20
_Z14Ragdoll_Updatei_40:
	mov ebx, [esi+0x24]
	lea eax, [ebx+ebx*2]
	mov eax, [eax*4+stateEntries+0x8]
	test eax, eax
	jz _Z14Ragdoll_Updatei_30
	mov [esp], esi
	call eax
_Z14Ragdoll_Updatei_30:
	cmp ebx, [esi+0x24]
	jnz _Z14Ragdoll_Updatei_40
	add dword [esi+0x2c], 0x1
	mov eax, [ebp+0x8]
	add [esi+0x28], eax
_Z14Ragdoll_Updatei_20:
	add edi, 0x1
	add esi, 0x9d4
	cmp edi, 0x20
	jnz _Z14Ragdoll_Updatei_50
	mov dword [esp+0x4], _Z40Ragdoll_GenerateAllSelfCollisionContactsv
	mov dword [esp], 0x2
	call _Z25Phys_SetCollisionCallback9PhysWorldPFvvE
	mov eax, [ragdollTime]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2
	mov dword [esp], 0x0
	call _Z14Phys_RunToTimei9PhysWorldi
_Z14Ragdoll_Updatei_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Ragdoll_BodyNewState(RagdollBody*, BodyState)
_Z20Ragdoll_BodyNewStateP11RagdollBody9BodyState:
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
	jz _Z20Ragdoll_BodyNewStateP11RagdollBody9BodyState_10
	lea eax, [ebx+ebx*2]
	mov eax, [eax*4+stateEntries+0x4]
	test eax, eax
	jz _Z20Ragdoll_BodyNewStateP11RagdollBody9BodyState_20
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov [esp], edi
	call eax
	test al, al
	jz _Z20Ragdoll_BodyNewStateP11RagdollBody9BodyState_30
_Z20Ragdoll_BodyNewStateP11RagdollBody9BodyState_20:
	mov [edi+0x24], esi
	lea eax, [esi+esi*2]
	mov eax, [eax*4+stateEntries]
	test eax, eax
	jz _Z20Ragdoll_BodyNewStateP11RagdollBody9BodyState_40
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov [esp], edi
	call eax
	test al, al
	jnz _Z20Ragdoll_BodyNewStateP11RagdollBody9BodyState_40
	cmp esi, [edi+0x24]
	jz _Z20Ragdoll_BodyNewStateP11RagdollBody9BodyState_50
_Z20Ragdoll_BodyNewStateP11RagdollBody9BodyState_30:
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20Ragdoll_BodyNewStateP11RagdollBody9BodyState_40:
	mov dword [edi+0x2c], 0x0
	mov dword [edi+0x28], 0x0
_Z20Ragdoll_BodyNewStateP11RagdollBody9BodyState_10:
	mov eax, 0x1
_Z20Ragdoll_BodyNewStateP11RagdollBody9BodyState_60:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20Ragdoll_BodyNewStateP11RagdollBody9BodyState_50:
	mov [edi+0x24], ebx
	xor eax, eax
	jmp _Z20Ragdoll_BodyNewStateP11RagdollBody9BodyState_60


;Ragdoll_ExplosionEvent(int, unsigned char, float const*, float, float, float const*, float)
_Z22Ragdoll_ExplosionEventihPKfffS0_f:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	movzx eax, byte [ebp+0xc]
	mov [ebp-0x61], al
	call _Z28CL_GetFirstActiveLocalClientv
	cmp eax, [ebp+0x8]
	jz _Z22Ragdoll_ExplosionEventihPKfffS0_f_10
_Z22Ragdoll_ExplosionEventihPKfffS0_f_30:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22Ragdoll_ExplosionEventihPKfffS0_f_10:
	pxor xmm0, xmm0
	movss xmm1, dword [ebp+0x18]
	ucomiss xmm1, xmm0
	jp _Z22Ragdoll_ExplosionEventihPKfffS0_f_20
	jz _Z22Ragdoll_ExplosionEventihPKfffS0_f_30
_Z22Ragdoll_ExplosionEventihPKfffS0_f_20:
	mulss xmm1, xmm1
	movss [ebp-0x44], xmm1
	movss xmm1, dword [ebp+0x14]
	mulss xmm1, xmm1
	movss [ebp-0x48], xmm1
	movss xmm1, dword [ebp-0x44]
	ucomiss xmm1, [ebp-0x48]
	ja _Z22Ragdoll_ExplosionEventihPKfffS0_f_40
	movss [ebp-0x40], xmm0
_Z22Ragdoll_ExplosionEventihPKfffS0_f_110:
	xor esi, esi
	mov ebx, ragdollBodies
	jmp _Z22Ragdoll_ExplosionEventihPKfffS0_f_50
_Z22Ragdoll_ExplosionEventihPKfffS0_f_60:
	add esi, 0x1
	add ebx, 0x9d4
	cmp esi, 0x20
	jz _Z22Ragdoll_ExplosionEventihPKfffS0_f_30
_Z22Ragdoll_ExplosionEventihPKfffS0_f_50:
	mov edi, [ebx]
	test edi, edi
	jle _Z22Ragdoll_ExplosionEventihPKfffS0_f_60
	cmp dword [ebx+0x24], 0x3
	jle _Z22Ragdoll_ExplosionEventihPKfffS0_f_60
	mov [esp], ebx
	call _Z28Ragdoll_BodyBoneOrientationsP11RagdollBody
	movss xmm4, dword [eax]
	movss xmm2, dword [eax+0x4]
	movss xmm3, dword [eax+0x8]
	cmp byte [ebp-0x61], 0x0
	jz _Z22Ragdoll_ExplosionEventihPKfffS0_f_70
	mov eax, [ebp+0x10]
	movss xmm1, dword [eax+0x4]
	subss xmm1, xmm2
	movss xmm0, dword [eax]
	subss xmm0, xmm4
	pxor xmm2, xmm2
_Z22Ragdoll_ExplosionEventihPKfffS0_f_120:
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	addss xmm0, xmm2
	ucomiss xmm0, [ebp-0x44]
	jae _Z22Ragdoll_ExplosionEventihPKfffS0_f_60
	cmp dword [ebx+0x24], 0x5
	jnz _Z22Ragdoll_ExplosionEventihPKfffS0_f_80
	mov eax, [stateEntries+0x40]
	test eax, eax
	jz _Z22Ragdoll_ExplosionEventihPKfffS0_f_90
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x5
	mov [esp], ebx
	call eax
	test al, al
	jz _Z22Ragdoll_ExplosionEventihPKfffS0_f_60
_Z22Ragdoll_ExplosionEventihPKfffS0_f_90:
	mov dword [ebx+0x24], 0x4
	mov eax, [stateEntries+0x30]
	test eax, eax
	jz _Z22Ragdoll_ExplosionEventihPKfffS0_f_100
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x5
	mov [esp], ebx
	call eax
	test al, al
	jnz _Z22Ragdoll_ExplosionEventihPKfffS0_f_100
	cmp dword [ebx+0x24], 0x4
	jnz _Z22Ragdoll_ExplosionEventihPKfffS0_f_60
	mov dword [ebx+0x24], 0x5
	jmp _Z22Ragdoll_ExplosionEventihPKfffS0_f_60
_Z22Ragdoll_ExplosionEventihPKfffS0_f_40:
	movaps xmm0, xmm1
	subss xmm0, [ebp-0x48]
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm0
	movss [ebp-0x40], xmm1
	jmp _Z22Ragdoll_ExplosionEventihPKfffS0_f_110
_Z22Ragdoll_ExplosionEventihPKfffS0_f_70:
	movaps xmm0, xmm4
	mov edx, [ebp+0x10]
	subss xmm0, [edx]
	movaps xmm1, xmm2
	subss xmm1, [edx+0x4]
	movaps xmm2, xmm3
	subss xmm2, [edx+0x8]
	mulss xmm2, xmm2
	jmp _Z22Ragdoll_ExplosionEventihPKfffS0_f_120
_Z22Ragdoll_ExplosionEventihPKfffS0_f_100:
	mov dword [ebx+0x2c], 0x0
	mov dword [ebx+0x28], 0x0
_Z22Ragdoll_ExplosionEventihPKfffS0_f_80:
	mov dword [ebx+0x28], 0x0
	mov eax, [ebx+0x34]
	cvtsi2ss xmm0, eax
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm0
	movss [ebp-0x3c], xmm1
	test eax, eax
	jle _Z22Ragdoll_ExplosionEventihPKfffS0_f_60
	mov dword [ebp-0x4c], 0x0
	lea edi, [ebx+0x38]
	jmp _Z22Ragdoll_ExplosionEventihPKfffS0_f_130
_Z22Ragdoll_ExplosionEventihPKfffS0_f_140:
	add dword [ebp-0x4c], 0x1
	add edi, 0x1c
	mov edx, [ebp-0x4c]
	cmp [ebx+0x34], edx
	jle _Z22Ragdoll_ExplosionEventihPKfffS0_f_60
_Z22Ragdoll_ExplosionEventihPKfffS0_f_130:
	mov eax, [edi+0x8]
	test eax, eax
	jz _Z22Ragdoll_ExplosionEventihPKfffS0_f_140
	lea edx, [ebp-0x30]
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z23Phys_ObjGetCenterOfMassiPf
	movss xmm0, dword [ebp-0x30]
	movss [ebp-0x60], xmm0
	mov dword [esp+0x4], 0x3f800000
	mov dword [esp], 0xbf800000
	call _Z6flrandff
	fstp dword [ebp-0x5c]
	movss xmm1, dword [ebp-0x60]
	addss xmm1, [ebp-0x5c]
	movss [ebp-0x30], xmm1
	movss xmm0, dword [ebp-0x2c]
	movss [ebp-0x58], xmm0
	mov dword [esp+0x4], 0x3f800000
	mov dword [esp], 0xbf800000
	call _Z6flrandff
	fstp dword [ebp-0x54]
	movss xmm1, dword [ebp-0x58]
	addss xmm1, [ebp-0x54]
	movss [ebp-0x2c], xmm1
	movss xmm0, dword [ebp-0x28]
	movss [ebp-0x50], xmm0
	mov dword [esp+0x4], 0x3f800000
	mov dword [esp], 0xbf800000
	call _Z6flrandff
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
	jae _Z22Ragdoll_ExplosionEventihPKfffS0_f_140
	ucomiss xmm1, [ebp-0x48]
	ja _Z22Ragdoll_ExplosionEventihPKfffS0_f_150
	movss xmm5, dword [ebp+0x20]
_Z22Ragdoll_ExplosionEventihPKfffS0_f_230:
	mov edx, [ebp+0x1c]
	movss xmm1, dword [edx]
	mov ecx, vec3_origin
	ucomiss xmm1, [ecx]
	jnz _Z22Ragdoll_ExplosionEventihPKfffS0_f_160
	jp _Z22Ragdoll_ExplosionEventihPKfffS0_f_160
	mov eax, edx
	add eax, 0x4
	movss xmm0, dword [ecx+0x4]
	ucomiss xmm0, [edx+0x4]
	jp _Z22Ragdoll_ExplosionEventihPKfffS0_f_170
	jnz _Z22Ragdoll_ExplosionEventihPKfffS0_f_170
	mov edx, [ebp+0x1c]
	add edx, 0x8
	mov ecx, vec3_origin
	movss xmm0, dword [ecx+0x8]
	mov ecx, [ebp+0x1c]
	ucomiss xmm0, [ecx+0x8]
	jnz _Z22Ragdoll_ExplosionEventihPKfffS0_f_180
	jp _Z22Ragdoll_ExplosionEventihPKfffS0_f_180
	movss [ebp-0x24], xmm3
	movss [ebp-0x20], xmm2
	movss [ebp-0x1c], xmm4
	cmp byte [ebp-0x61], 0x0
	jz _Z22Ragdoll_ExplosionEventihPKfffS0_f_190
	pxor xmm7, xmm7
	movss [ebp-0x1c], xmm7
	movaps xmm2, xmm7
_Z22Ragdoll_ExplosionEventihPKfffS0_f_250:
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
	jb _Z22Ragdoll_ExplosionEventihPKfffS0_f_200
	movss xmm6, dword [_float_1_00000000]
	movaps xmm1, xmm6
_Z22Ragdoll_ExplosionEventihPKfffS0_f_260:
	mulss xmm3, xmm1
	movss [ebp-0x24], xmm3
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x20]
	movss [ebp-0x20], xmm0
	mulss xmm1, [ebp-0x1c]
	movss [ebp-0x1c], xmm1
	jmp _Z22Ragdoll_ExplosionEventihPKfffS0_f_210
_Z22Ragdoll_ExplosionEventihPKfffS0_f_160:
	mov eax, edx
	add eax, 0x4
	mov edx, [ebp+0x1c]
_Z22Ragdoll_ExplosionEventihPKfffS0_f_170:
	add edx, 0x8
_Z22Ragdoll_ExplosionEventihPKfffS0_f_180:
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
_Z22Ragdoll_ExplosionEventihPKfffS0_f_210:
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
	jb _Z22Ragdoll_ExplosionEventihPKfffS0_f_220
_Z22Ragdoll_ExplosionEventihPKfffS0_f_240:
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
	call _Z16Phys_ObjAddForce9PhysWorldiPKfS1_
	jmp _Z22Ragdoll_ExplosionEventihPKfffS0_f_140
_Z22Ragdoll_ExplosionEventihPKfffS0_f_150:
	movss xmm5, dword [ebp-0x44]
	subss xmm5, xmm1
	mulss xmm5, [ebp-0x40]
	mulss xmm5, [ebp+0x20]
	jmp _Z22Ragdoll_ExplosionEventihPKfffS0_f_230
_Z22Ragdoll_ExplosionEventihPKfffS0_f_220:
	divss xmm6, xmm2
	jmp _Z22Ragdoll_ExplosionEventihPKfffS0_f_240
_Z22Ragdoll_ExplosionEventihPKfffS0_f_190:
	pxor xmm7, xmm7
	movss xmm2, dword [ebp-0x1c]
	jmp _Z22Ragdoll_ExplosionEventihPKfffS0_f_250
_Z22Ragdoll_ExplosionEventihPKfffS0_f_200:
	movss xmm6, dword [_float_1_00000000]
	movaps xmm0, xmm6
	divss xmm0, xmm1
	movaps xmm1, xmm0
	jmp _Z22Ragdoll_ExplosionEventihPKfffS0_f_260
	add [eax], al


;Ragdoll_ValidatePrecalcBoneDef(RagdollDef*, BoneDef*)
_Z30Ragdoll_ValidatePrecalcBoneDefP10RagdollDefP7BoneDef:
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
_Z40Ragdoll_GenerateAllSelfCollisionContactsv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x13c
	mov dword [ebp-0xc0], 0x0
	mov edi, ragdollBodies
	jmp _Z40Ragdoll_GenerateAllSelfCollisionContactsv_10
_Z40Ragdoll_GenerateAllSelfCollisionContactsv_30:
	add dword [ebp-0xc0], 0x1
	add edi, 0x9d4
	cmp dword [ebp-0xc0], 0x20
	jz _Z40Ragdoll_GenerateAllSelfCollisionContactsv_20
_Z40Ragdoll_GenerateAllSelfCollisionContactsv_10:
	mov eax, [edi+0x24]
	sub eax, 0x3
	cmp eax, 0x1
	ja _Z40Ragdoll_GenerateAllSelfCollisionContactsv_30
	mov [esp], edi
	call _Z15Ragdoll_BodyDefP11RagdollBody
	mov [ebp-0xb8], eax
	mov ebx, [eax+0xe88]
	test ebx, ebx
	jle _Z40Ragdoll_GenerateAllSelfCollisionContactsv_30
	mov dword [ebp-0xbc], 0x0
	mov esi, eax
	add esi, 0xe80
_Z40Ragdoll_GenerateAllSelfCollisionContactsv_110:
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
	call _Z19Phys_ObjGetPositioniPfPA3_f
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
	call _Z19Phys_ObjGetPositioniPfPA3_f
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
	jae _Z40Ragdoll_GenerateAllSelfCollisionContactsv_40
	jp _Z40Ragdoll_GenerateAllSelfCollisionContactsv_40
	movss xmm3, dword [_float_1_00000000]
	pxor xmm1, xmm1
_Z40Ragdoll_GenerateAllSelfCollisionContactsv_140:
	movaps xmm4, xmm1
_Z40Ragdoll_GenerateAllSelfCollisionContactsv_230:
	ucomiss xmm1, xmm5
	ja _Z40Ragdoll_GenerateAllSelfCollisionContactsv_50
_Z40Ragdoll_GenerateAllSelfCollisionContactsv_160:
	ucomiss xmm5, [ebp-0xac]
	ja _Z40Ragdoll_GenerateAllSelfCollisionContactsv_60
	movaps xmm2, xmm4
	andps xmm2, [_data16_7fffffff]
	movaps xmm6, xmm5
	andps xmm6, [_data16_7fffffff]
_Z40Ragdoll_GenerateAllSelfCollisionContactsv_180:
	movss xmm0, dword [_float_0_00010000]
	ucomiss xmm0, xmm2
	jbe _Z40Ragdoll_GenerateAllSelfCollisionContactsv_70
	movaps xmm2, xmm1
_Z40Ragdoll_GenerateAllSelfCollisionContactsv_130:
	ucomiss xmm0, xmm6
	jbe _Z40Ragdoll_GenerateAllSelfCollisionContactsv_80
	movss [ebp-0xb4], xmm1
_Z40Ragdoll_GenerateAllSelfCollisionContactsv_120:
	mov edx, 0x1
_Z40Ragdoll_GenerateAllSelfCollisionContactsv_90:
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
	jnz _Z40Ragdoll_GenerateAllSelfCollisionContactsv_90
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
	jae _Z40Ragdoll_GenerateAllSelfCollisionContactsv_100
_Z40Ragdoll_GenerateAllSelfCollisionContactsv_220:
	add dword [ebp-0xbc], 0x1
	add esi, 0x2
	mov edx, [ebp-0xbc]
	cmp [eax+0xe88], edx
	jg _Z40Ragdoll_GenerateAllSelfCollisionContactsv_110
	jmp _Z40Ragdoll_GenerateAllSelfCollisionContactsv_30
_Z40Ragdoll_GenerateAllSelfCollisionContactsv_80:
	divss xmm5, dword [ebp-0xac]
	movss [ebp-0xb4], xmm5
	jmp _Z40Ragdoll_GenerateAllSelfCollisionContactsv_120
_Z40Ragdoll_GenerateAllSelfCollisionContactsv_70:
	movaps xmm2, xmm4
	divss xmm2, xmm3
	jmp _Z40Ragdoll_GenerateAllSelfCollisionContactsv_130
_Z40Ragdoll_GenerateAllSelfCollisionContactsv_40:
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
	ja _Z40Ragdoll_GenerateAllSelfCollisionContactsv_140
	ucomiss xmm4, xmm3
	ja _Z40Ragdoll_GenerateAllSelfCollisionContactsv_150
	movss [ebp-0xac], xmm3
	movaps xmm5, xmm2
	ucomiss xmm1, xmm5
	jbe _Z40Ragdoll_GenerateAllSelfCollisionContactsv_160
_Z40Ragdoll_GenerateAllSelfCollisionContactsv_50:
	ucomiss xmm6, xmm1
	jbe _Z40Ragdoll_GenerateAllSelfCollisionContactsv_170
	movaps xmm5, xmm1
	movaps xmm4, xmm1
	movaps xmm2, xmm1
	movaps xmm6, xmm1
	jmp _Z40Ragdoll_GenerateAllSelfCollisionContactsv_180
_Z40Ragdoll_GenerateAllSelfCollisionContactsv_60:
	movaps xmm4, xmm7
	subss xmm4, xmm6
	ucomiss xmm1, xmm4
	ja _Z40Ragdoll_GenerateAllSelfCollisionContactsv_190
	ucomiss xmm4, [ebp-0x9c]
	ja _Z40Ragdoll_GenerateAllSelfCollisionContactsv_200
	movaps xmm2, xmm4
	andps xmm2, [_data16_7fffffff]
	movss xmm6, dword [ebp-0xac]
	andps xmm6, [_data16_7fffffff]
	movss xmm3, dword [ebp-0x9c]
	movss xmm5, dword [ebp-0xac]
	jmp _Z40Ragdoll_GenerateAllSelfCollisionContactsv_180
_Z40Ragdoll_GenerateAllSelfCollisionContactsv_100:
	mov [esp], edi
	movss [ebp-0xe8], xmm2
	movss [ebp-0xf8], xmm3
	movss [ebp-0x108], xmm4
	movss [ebp-0x118], xmm5
	movss [ebp-0x128], xmm6
	movss [ebp-0x138], xmm7
	call _Z15Ragdoll_BodyDefP11RagdollBody
	mov ebx, eax
	movss xmm6, dword [ebp-0x128]
	movss [ebp-0x3c], xmm6
	movss xmm4, dword [ebp-0x108]
	movss [ebp-0x38], xmm4
	movss xmm3, dword [ebp-0xf8]
	movss [ebp-0x34], xmm3
	movss xmm2, dword [ebp-0xe8]
	ucomiss xmm2, [_float_0_00200000]
	jp _Z40Ragdoll_GenerateAllSelfCollisionContactsv_210
	jae _Z40Ragdoll_GenerateAllSelfCollisionContactsv_210
_Z40Ragdoll_GenerateAllSelfCollisionContactsv_240:
	mov eax, [ebp-0xb8]
	jmp _Z40Ragdoll_GenerateAllSelfCollisionContactsv_220
_Z40Ragdoll_GenerateAllSelfCollisionContactsv_150:
	addss xmm5, xmm7
	movaps xmm4, xmm3
	jmp _Z40Ragdoll_GenerateAllSelfCollisionContactsv_230
_Z40Ragdoll_GenerateAllSelfCollisionContactsv_200:
	movaps xmm2, xmm3
	andps xmm2, [_data16_7fffffff]
	movss xmm6, dword [ebp-0xac]
	andps xmm6, [_data16_7fffffff]
	movaps xmm4, xmm3
	movss xmm5, dword [ebp-0xac]
	jmp _Z40Ragdoll_GenerateAllSelfCollisionContactsv_180
_Z40Ragdoll_GenerateAllSelfCollisionContactsv_210:
	lea eax, [ebp-0x84]
	mov [esp+0x4], eax
	lea eax, [ebp-0x3c]
	mov [esp], eax
	call _Z15Vec3NormalizeToPKfPf
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
	call _Z24Phys_AddCollisionContact9PhysWorldPK11PhysContactii
	jmp _Z40Ragdoll_GenerateAllSelfCollisionContactsv_240
_Z40Ragdoll_GenerateAllSelfCollisionContactsv_190:
	movss xmm6, dword [ebp-0xac]
	andps xmm6, [_data16_7fffffff]
	movss xmm5, dword [ebp-0xac]
	movaps xmm4, xmm1
	movaps xmm2, xmm1
	jmp _Z40Ragdoll_GenerateAllSelfCollisionContactsv_180
_Z40Ragdoll_GenerateAllSelfCollisionContactsv_170:
	movaps xmm4, xmm6
	xorps xmm4, [_data16_80000000]
	ucomiss xmm4, [ebp-0x9c]
	ja _Z40Ragdoll_GenerateAllSelfCollisionContactsv_250
	movaps xmm2, xmm4
	andps xmm2, [_data16_7fffffff]
	movss xmm3, dword [ebp-0x9c]
	movaps xmm5, xmm1
	movaps xmm6, xmm1
	jmp _Z40Ragdoll_GenerateAllSelfCollisionContactsv_180
_Z40Ragdoll_GenerateAllSelfCollisionContactsv_20:
	add esp, 0x13c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z40Ragdoll_GenerateAllSelfCollisionContactsv_250:
	movaps xmm2, xmm3
	andps xmm2, [_data16_7fffffff]
	movaps xmm4, xmm3
	movaps xmm5, xmm1
	movaps xmm6, xmm1
	jmp _Z40Ragdoll_GenerateAllSelfCollisionContactsv_180
	nop


;Initialized global or static variables of ragdoll_update:
SECTION .data
stateEntries: dd _Z17Ragdoll_EnterDeadP11RagdollBody9BodyStateS1_, _Z16Ragdoll_ExitDeadP11RagdollBody9BodyStateS1_, 0x0, 0x0, _Z20Ragdoll_ExitDObjWaitP11RagdollBody9BodyStateS1_, _Z22Ragdoll_UpdateDObjWaitP11RagdollBody, 0x0, 0x0, _Z29Ragdoll_UpdateVelocityCaptureP11RagdollBody, _Z23Ragdoll_EnterTunnelTestP11RagdollBody9BodyStateS1_, 0x0, 0x0, _Z20Ragdoll_EnterRunningP11RagdollBody9BodyStateS1_, 0x0, _Z21Ragdoll_UpdateRunningP11RagdollBody, _Z17Ragdoll_EnterIdleP11RagdollBody9BodyStateS1_, _Z16Ragdoll_ExitIdleP11RagdollBody9BodyStateS1_, 0x0
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

