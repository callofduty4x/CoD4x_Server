;Imports of ode:
	extern _ZN13dxSimpleSpaceC1Ev
	extern dMassSetZero
	extern _ZN6dxGeomC2EP7dxSpaceiP6dxBody
	extern _ZTV10dxUserGeom
	extern __cxa_atexit
	extern _Unwind_Resume
	extern _ZTV6dxGeom
	extern _Z9Pool_InitPvP10pooldata_tjj
	extern _Z24Sys_EnterCriticalSection15CriticalSection
	extern _Z10Pool_AllocP10pooldata_t
	extern _Z24Sys_LeaveCriticalSection15CriticalSection
	extern dMassSetParameters
	extern dSetZero
	extern dRSetIdentity
	extern dGeomGetBodyNext
	extern ODE_GeomDestruct
	extern _Z9Pool_FreePvP10pooldata_t
	extern memcpy
	extern dInvertPDMatrix3
	extern dMessage
	extern dGeomMoved
	extern dQfromR
	extern dNormalize4
	extern dRfromQ
	extern _Z9jointInitP7dxJoint
	extern _Z16dxProcessIslandsP7dxWorldf

;Exports of ode:
	global _GLOBAL__I_odeGlob
	global _ZZ12dBodySetMassE12__FUNCTION__
	global ODE_WorldGetBodyCount
	global _Z8ODE_Initv
	global dAreConnectedExcluding
	global dBodyAddForceAtPos
	global dBodyCreate
	global dBodyDestroy
	global dBodyDisable
	global dBodyEnable
	global dBodyGetAngularVel
	global dBodyGetData
	global dBodyGetLinearVel
	global dBodyGetMass
	global dBodyGetPointVel
	global dBodyGetPosition
	global dBodyGetRotation
	global dBodyIsEnabled
	global dBodySetAngularVel
	global dBodySetData
	global dBodySetFiniteRotationMode
	global dBodySetLinearVel
	global dBodySetMass
	global dBodySetPosition
	global dBodySetRotation
	global dGetContactJointGroup
	global dJointAttach
	global dJointCreateAMotor
	global dJointCreateBall
	global dJointCreateContact
	global dJointCreateHinge
	global dJointDestroy
	global dJointGroupDestroy
	global dJointGroupEmpty
	global dWorldCreate
	global dWorldDestroy
	global dWorldQuickStep
	global dWorldSetAutoDisableAngularThreshold
	global dWorldSetAutoDisableFlag
	global dWorldSetAutoDisableLinearThreshold
	global dWorldSetAutoDisableSteps
	global dWorldSetAutoDisableTime
	global dWorldSetCFM
	global dWorldSetContactMaxCorrectingVel
	global dWorldSetContactSurfaceLayer
	global dWorldSetERP
	global dWorldSetGravity
	global dWorldSetQuickStepNumIterations
	global odeGlob


SECTION .text


;global constructors keyed to odeGlob
_GLOBAL__I_odeGlob:
	push ebp
	mov ebp, esp
	mov edx, 0xffff
	mov eax, 0x1
	pop ebp
	jmp _Z41__static_initialization_and_destruction_0ii


;__static_initialization_and_destruction_0(int, int)
_Z41__static_initialization_and_destruction_0ii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	cmp edx, 0xffff
	jz _Z41__static_initialization_and_destruction_0ii_10
_Z41__static_initialization_and_destruction_0ii_20:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z41__static_initialization_and_destruction_0ii_10:
	sub eax, 0x1
	jnz _Z41__static_initialization_and_destruction_0ii_20
	mov esi, odeGlob+0x30330
	mov edi, 0x2
	mov ebx, 0x1
_Z41__static_initialization_and_destruction_0ii_30:
	mov [esp], esi
	call _ZN13dxSimpleSpaceC1Ev
	add esi, 0x64
	mov edi, ebx
	lea ebx, [ebx-0x1]
	cmp ebx, 0xfffffffe
	jnz _Z41__static_initialization_and_destruction_0ii_30
	mov ebx, odeGlob+0x234470
_Z41__static_initialization_and_destruction_0ii_40:
	lea eax, [ebx+0x20]
	mov [esp], eax
	call dMassSetZero
	add ebx, 0x150
	cmp ebx, odeGlob+0x25e470
	jnz _Z41__static_initialization_and_destruction_0ii_40
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], odeGlob+0x2c6480
	call _ZN6dxGeomC2EP7dxSpaceiP6dxBody
	mov eax, _ZTV10dxUserGeom
	add eax, 0x8
	mov [odeGlob+0x2c6480], eax
	mov eax, [0xd5cc00c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov dword [esp], __tcf_0
	call __cxa_atexit
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	mov [ebp-0x1c], eax
	mov eax, 0x2
	sub eax, edi
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	lea eax, [eax*4+odeGlob+0x30330]
	cmp eax, odeGlob+0x30330
	jz _Z41__static_initialization_and_destruction_0ii_50
	lea ebx, [eax-0x64]
	mov esi, ebx
_Z41__static_initialization_and_destruction_0ii_60:
	mov eax, [esi]
	mov [esp], ebx
	call dword [eax]
	sub esi, 0x64
	cmp ebx, odeGlob+0x30330
	jz _Z41__static_initialization_and_destruction_0ii_50
	sub ebx, 0x64
	jmp _Z41__static_initialization_and_destruction_0ii_60
	mov [ebp-0x1c], eax
	mov ebx, odeGlob+0x3045c
_Z41__static_initialization_and_destruction_0ii_70:
	sub ebx, 0x64
	mov eax, [ebx]
	mov [esp], ebx
	call dword [eax]
	cmp ebx, odeGlob+0x30330
	jnz _Z41__static_initialization_and_destruction_0ii_70
_Z41__static_initialization_and_destruction_0ii_50:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Unwind_Resume
	nop


;__tcf_0
__tcf_0:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, _ZTV6dxGeom
	add eax, 0x8
	mov [odeGlob+0x2c6480], eax
	mov ebx, odeGlob+0x3045c
__tcf_0_10:
	sub ebx, 0x64
	mov eax, [ebx]
	mov [esp], ebx
	call dword [eax]
	cmp ebx, odeGlob+0x30330
	jnz __tcf_0_10
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;ODE_WorldGetBodyCount
ODE_WorldGetBodyCount:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x8]
	pop ebp
	ret
	nop


;ODE_Init()
_Z8ODE_Initv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0xc], 0x200
	mov dword [esp+0x8], 0x150
	mov dword [esp+0x4], odeGlob+0x25e470
	mov dword [esp], odeGlob+0x234470
	call _Z9Pool_InitPvP10pooldata_tjj
	mov dword [esp+0xc], 0x800
	mov dword [esp+0x8], 0xd0
	mov dword [esp+0x4], odeGlob+0x2c6478
	mov dword [esp], odeGlob+0x25e478
	call _Z9Pool_InitPvP10pooldata_tjj
	leave
	ret
	add [eax], al


;dAreConnectedExcluding
dAreConnectedExcluding:
	push ebp
	mov ebp, esp
	push ebx
	mov ebx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	mov eax, [ebp+0x8]
	mov edx, [eax+0x14]
	test edx, edx
	jz dAreConnectedExcluding_10
dAreConnectedExcluding_40:
	mov eax, [edx]
	cmp [eax+0x14], ecx
	jz dAreConnectedExcluding_20
	cmp [edx+0x4], ebx
	jz dAreConnectedExcluding_30
dAreConnectedExcluding_20:
	mov edx, [edx+0xc]
	test edx, edx
	jnz dAreConnectedExcluding_40
dAreConnectedExcluding_10:
	xor eax, eax
	pop ebx
	pop ebp
	ret
dAreConnectedExcluding_30:
	mov eax, 0x1
	pop ebx
	pop ebp
	ret


;dBodyAddForceAtPos
dBodyAddForceAtPos:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	movss xmm7, dword [ebp+0xc]
	movss xmm3, dword [ebp+0x10]
	movss xmm4, dword [ebp+0x14]
	movss xmm5, dword [ebp+0x18]
	movss xmm6, dword [ebp+0x1c]
	movss xmm2, dword [ebp+0x20]
	movaps xmm0, xmm7
	addss xmm0, [eax+0x98]
	movss [eax+0x98], xmm0
	movaps xmm0, xmm3
	addss xmm0, [eax+0x9c]
	movss [eax+0x9c], xmm0
	movaps xmm0, xmm4
	addss xmm0, [eax+0xa0]
	movss [eax+0xa0], xmm0
	subss xmm5, [eax+0xe0]
	subss xmm6, [eax+0xe4]
	subss xmm2, [eax+0xe8]
	movaps xmm0, xmm4
	mulss xmm0, xmm6
	movaps xmm1, xmm3
	mulss xmm1, xmm2
	subss xmm0, xmm1
	addss xmm0, [eax+0xa8]
	movss [eax+0xa8], xmm0
	mulss xmm2, xmm7
	mulss xmm4, xmm5
	subss xmm2, xmm4
	addss xmm2, [eax+0xac]
	movss [eax+0xac], xmm2
	mulss xmm3, xmm5
	mulss xmm7, xmm6
	subss xmm3, xmm7
	addss xmm3, [eax+0xb0]
	movss [eax+0xb0], xmm3
	pop ebp
	ret
	nop


;dBodyCreate
dBodyCreate:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov edi, [ebp+0x8]
	mov dword [esp], 0xb
	call _Z24Sys_EnterCriticalSection15CriticalSection
	mov dword [esp], odeGlob+0x25e470
	call _Z10Pool_AllocP10pooldata_t
	mov esi, eax
	mov dword [esp], 0xb
	call _Z24Sys_LeaveCriticalSection15CriticalSection
	test esi, esi
	jz dBodyCreate_10
	lea eax, [esi+0x20]
	mov [ebp-0x1c], eax
	mov [esp], eax
	call dMassSetZero
	mov [esi], edi
	mov dword [esi+0x4], 0x0
	mov dword [esi+0x8], 0x0
	mov dword [esi+0xc], 0x0
	mov dword [esi+0x10], 0x0
	mov dword [esi+0x14], 0x0
	mov dword [esi+0x18], 0x0
	mov dword [esi+0x1c], 0x0
	xor eax, eax
	mov [esp+0x28], eax
	mov [esp+0x24], eax
	mov [esp+0x20], eax
	mov ebx, 0x3f800000
	mov [esp+0x1c], ebx
	mov [esp+0x18], ebx
	mov [esp+0x14], ebx
	mov [esp+0x10], eax
	mov [esp+0xc], eax
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call dMassSetParameters
	mov dword [esp+0x4], 0xc
	lea eax, [esi+0x64]
	mov [esp], eax
	call dSetZero
	mov [esi+0x64], ebx
	mov [esi+0x78], ebx
	mov [esi+0x8c], ebx
	mov [esi+0x94], ebx
	mov dword [esp+0x4], 0x4
	lea eax, [esi+0xe0]
	mov [esp], eax
	call dSetZero
	mov dword [esp+0x4], 0x4
	lea eax, [esi+0xf0]
	mov [esp], eax
	call dSetZero
	mov [esi+0xf0], ebx
	lea eax, [esi+0x100]
	mov [esp], eax
	call dRSetIdentity
	mov dword [esp+0x4], 0x4
	lea eax, [esi+0x130]
	mov [esp], eax
	call dSetZero
	mov dword [esp+0x4], 0x4
	lea eax, [esi+0x140]
	mov [esp], eax
	call dSetZero
	mov dword [esp+0x4], 0x4
	lea eax, [esi+0x98]
	mov [esp], eax
	call dSetZero
	mov dword [esp+0x4], 0x4
	lea eax, [esi+0xa8]
	mov [esp], eax
	call dSetZero
	mov dword [esp+0x4], 0x4
	lea eax, [esi+0xb8]
	mov [esp], eax
	call dSetZero
	mov eax, [edi]
	mov [esi+0x4], eax
	mov [esi+0x8], edi
	mov edx, [edi]
	test edx, edx
	jz dBodyCreate_20
	lea eax, [esi+0x4]
	mov [edx+0x8], eax
dBodyCreate_20:
	mov [edi], esi
	add dword [edi+0x8], 0x1
	mov edx, [esi]
	mov eax, [edx+0x3c]
	mov [esi+0xc8], eax
	mov eax, [edx+0x40]
	mov [esi+0xcc], eax
	mov eax, [edx+0x44]
	mov [esi+0xd0], eax
	mov eax, [edx+0x48]
	mov [esi+0xd4], eax
	mov edx, [edx+0x4c]
	test edx, edx
	jnz dBodyCreate_30
	and dword [esi+0x18], 0xffffffef
dBodyCreate_40:
	mov eax, [esi+0xd4]
	mov [esi+0xdc], eax
	mov eax, [esi+0xd0]
	mov [esi+0xd8], eax
dBodyCreate_10:
	mov eax, esi
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
dBodyCreate_30:
	or dword [esi+0x18], 0x10
	jmp dBodyCreate_40
	mov [esp], eax
	call _Unwind_Resume
	nop


;dBodyDestroy
dBodyDestroy:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x8]
	mov [ebp-0x20], eax
	mov ebx, [eax+0x1c]
	test ebx, ebx
	jnz dBodyDestroy_10
	jmp dBodyDestroy_20
dBodyDestroy_30:
	mov ebx, esi
dBodyDestroy_10:
	mov [esp], ebx
	call dGeomGetBodyNext
	mov esi, eax
	mov [esp], ebx
	call ODE_GeomDestruct
	test esi, esi
	jnz dBodyDestroy_30
dBodyDestroy_20:
	mov edx, [ebp-0x20]
	mov ebx, [edx+0x14]
	test ebx, ebx
	jz dBodyDestroy_40
dBodyDestroy_110:
	mov ecx, [ebx]
	lea eax, [ecx+0x1c]
	mov edx, 0x20
	cmp eax, ebx
	mov eax, 0x10
	cmovnz edx, eax
	mov dword [ecx+edx+0x10], 0x0
	mov eax, [ebx+0xc]
	mov [ebp-0x1c], eax
	mov dword [ebx+0xc], 0x0
	mov esi, ecx
	lea edi, [ecx+0x20]
dBodyDestroy_90:
	mov ebx, [esi+0x20]
	test ebx, ebx
	jz dBodyDestroy_50
	mov edx, [ebx+0x14]
	test edx, edx
	jz dBodyDestroy_50
	cmp ecx, [edx]
	jnz dBodyDestroy_60
	jmp dBodyDestroy_70
dBodyDestroy_80:
	mov edx, eax
dBodyDestroy_60:
	mov eax, [edx+0xc]
	test eax, eax
	jz dBodyDestroy_50
	cmp [eax], ecx
	jnz dBodyDestroy_80
	mov eax, [eax+0xc]
	mov [edx+0xc], eax
dBodyDestroy_50:
	add esi, 0x10
	cmp esi, edi
	jnz dBodyDestroy_90
	mov dword [ecx+0x20], 0x0
	mov dword [ecx+0x28], 0x0
	mov dword [ecx+0x30], 0x0
	mov dword [ecx+0x38], 0x0
	mov eax, [ebp-0x1c]
	test eax, eax
	jz dBodyDestroy_100
	mov ebx, [ebp-0x1c]
	jmp dBodyDestroy_110
dBodyDestroy_70:
	mov eax, [edx+0xc]
	mov [ebx+0x14], eax
	jmp dBodyDestroy_50
dBodyDestroy_100:
	mov ecx, [ebp-0x20]
dBodyDestroy_130:
	mov edx, [ecx+0x4]
	test edx, edx
	jz dBodyDestroy_120
	mov eax, [ecx+0x8]
	mov [edx+0x8], eax
	mov ecx, [ebp-0x20]
dBodyDestroy_120:
	mov eax, [ecx+0x8]
	mov [eax], edx
	mov dword [ecx+0x4], 0x0
	mov dword [ecx+0x8], 0x0
	mov eax, [ecx]
	sub dword [eax+0x8], 0x1
	mov dword [esp], 0xb
	call _Z24Sys_EnterCriticalSection15CriticalSection
	mov dword [esp+0x4], odeGlob+0x25e470
	mov eax, [ebp-0x20]
	mov [esp], eax
	call _Z9Pool_FreePvP10pooldata_t
	mov dword [ebp+0x8], 0xb
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z24Sys_LeaveCriticalSection15CriticalSection
dBodyDestroy_40:
	mov ecx, edx
	jmp dBodyDestroy_130
	nop


;dBodyDisable
dBodyDisable:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	or dword [eax+0x18], 0x4
	pop ebp
	ret


;dBodyEnable
dBodyEnable:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	and dword [eax+0x18], 0xfffffffb
	mov edx, [eax+0xd4]
	mov [eax+0xdc], edx
	mov edx, [eax+0xd0]
	mov [eax+0xd8], edx
	pop ebp
	ret


;dBodyGetAngularVel
dBodyGetAngularVel:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	add eax, 0x140
	pop ebp
	ret
	nop


;dBodyGetData
dBodyGetData:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0xc]
	pop ebp
	ret
	nop


;dBodyGetLinearVel
dBodyGetLinearVel:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	add eax, 0x130
	pop ebp
	ret
	nop


;dBodyGetMass
dBodyGetMass:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	add eax, 0x20
	mov dword [esp+0x8], 0x44
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call memcpy
	leave
	ret
	nop


;dBodyGetPointVel
dBodyGetPointVel:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	movss xmm4, dword [ebp+0xc]
	movss xmm2, dword [ebp+0x10]
	movss xmm3, dword [ebp+0x14]
	mov ecx, [ebp+0x18]
	subss xmm4, [edx+0xe0]
	subss xmm2, [edx+0xe4]
	subss xmm3, [edx+0xe8]
	mov eax, [edx+0x130]
	mov [ecx], eax
	mov eax, [edx+0x134]
	mov [ecx+0x4], eax
	mov eax, [edx+0x138]
	mov [ecx+0x8], eax
	movaps xmm0, xmm3
	mulss xmm0, [edx+0x144]
	movaps xmm1, xmm2
	mulss xmm1, [edx+0x148]
	subss xmm0, xmm1
	addss xmm0, [ecx]
	movss [ecx], xmm0
	movaps xmm0, xmm4
	mulss xmm0, [edx+0x148]
	mulss xmm3, [edx+0x140]
	subss xmm0, xmm3
	addss xmm0, [ecx+0x4]
	movss [ecx+0x4], xmm0
	mulss xmm2, [edx+0x140]
	mulss xmm4, [edx+0x144]
	subss xmm2, xmm4
	addss xmm2, [ecx+0x8]
	movss [ecx+0x8], xmm2
	pop ebp
	ret
	nop


;dBodyGetPosition
dBodyGetPosition:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	add eax, 0xe0
	pop ebp
	ret
	nop


;dBodyGetRotation
dBodyGetRotation:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	add eax, 0x100
	pop ebp
	ret
	nop
	add [eax], al


;dBodyIsEnabled
dBodyIsEnabled:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x18]
	xor eax, 0x4
	shr eax, 0x2
	and eax, 0x1
	pop ebp
	ret


;dBodySetAngularVel
dBodySetAngularVel:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov [edx+0x140], eax
	mov eax, [ebp+0x10]
	mov [edx+0x144], eax
	mov eax, [ebp+0x14]
	mov [edx+0x148], eax
	pop ebp
	ret
	nop


;dBodySetData
dBodySetData:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov [eax+0xc], edx
	pop ebp
	ret


;dBodySetFiniteRotationMode
dBodySetFiniteRotationMode:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x18]
	and edx, 0xfffffffc
	mov [ecx+0x18], edx
	mov eax, [ebp+0xc]
	test eax, eax
	jz dBodySetFiniteRotationMode_10
	mov eax, edx
	or eax, 0x1
	mov [ecx+0x18], eax
	pxor xmm0, xmm0
	ucomiss xmm0, [ecx+0xb8]
	jnz dBodySetFiniteRotationMode_20
	jp dBodySetFiniteRotationMode_20
	ucomiss xmm0, [ecx+0xbc]
	jnz dBodySetFiniteRotationMode_20
	jp dBodySetFiniteRotationMode_20
	ucomiss xmm0, [ecx+0xc0]
	jp dBodySetFiniteRotationMode_20
	jz dBodySetFiniteRotationMode_10
dBodySetFiniteRotationMode_20:
	or edx, 0x3
	mov [ecx+0x18], edx
dBodySetFiniteRotationMode_10:
	pop ebp
	ret
	nop


;dBodySetLinearVel
dBodySetLinearVel:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov [edx+0x130], eax
	mov eax, [ebp+0x10]
	mov [edx+0x134], eax
	mov eax, [ebp+0x14]
	mov [edx+0x138], eax
	pop ebp
	ret
	nop


;dBodySetMass
dBodySetMass:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	lea edx, [ebx+0x20]
	mov dword [esp+0x8], 0x44
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
	lea esi, [ebx+0x64]
	mov [esp+0x4], esi
	lea eax, [ebx+0x34]
	mov [esp], eax
	call dInvertPDMatrix3
	test eax, eax
	jnz dBodySetMass_10
	mov dword [esp+0x8], _cstring_dbodysetmass
	mov dword [esp+0x4], _cstring_inertia_must_be_
	mov dword [esp], 0x2
	call dMessage
	mov [esp], esi
	call dRSetIdentity
dBodySetMass_10:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, dword [ebx+0x20]
	movss [ebx+0x94], xmm0
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;dBodySetPosition
dBodySetPosition:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov edx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov [edx+0xe0], eax
	mov eax, [ebp+0x10]
	mov [edx+0xe4], eax
	mov eax, [ebp+0x14]
	mov [edx+0xe8], eax
	mov ebx, [edx+0x1c]
	test ebx, ebx
	jz dBodySetPosition_10
dBodySetPosition_20:
	mov [esp], ebx
	call dGeomMoved
	mov [esp], ebx
	call dGeomGetBodyNext
	mov ebx, eax
	test eax, eax
	jnz dBodySetPosition_20
dBodySetPosition_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;dBodySetRotation
dBodySetRotation:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov ebx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	lea esi, [ebp-0x18]
	mov [esp], esi
	call dQfromR
	mov [esp], esi
	call dNormalize4
	mov eax, [ebp-0x18]
	mov [ebx+0xf0], eax
	mov eax, [ebp-0x14]
	mov [ebx+0xf4], eax
	mov eax, [ebp-0x10]
	mov [ebx+0xf8], eax
	mov eax, [ebp-0xc]
	mov [ebx+0xfc], eax
	lea eax, [ebx+0xf0]
	mov [esp+0x4], eax
	lea eax, [ebx+0x100]
	mov [esp], eax
	call dRfromQ
	mov ebx, [ebx+0x1c]
	test ebx, ebx
	jz dBodySetRotation_10
dBodySetRotation_20:
	mov [esp], ebx
	call dGeomMoved
	mov [esp], ebx
	call dGeomGetBodyNext
	mov ebx, eax
	test eax, eax
	jnz dBodySetRotation_20
dBodySetRotation_10:
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
	nop
	add [eax], al


;dGetContactJointGroup
dGetContactJointGroup:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*4]
	lea edx, [eax+edx*2]
	shl edx, 0xc
	add edx, eax
	lea edx, [edx*4+odeGlob+0x30450]
	lea eax, [edx+0xc]
	mov dword [edx+0xc], 0x0
	pop ebp
	ret
	nop


;dJointAttach
dJointAttach:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov eax, [ebx+0x20]
	test eax, eax
	jz dJointAttach_10
dJointAttach_100:
	mov esi, ebx
	lea eax, [ebx+0x20]
	mov [ebp-0x10], eax
dJointAttach_60:
	mov ecx, [esi+0x20]
	test ecx, ecx
	jz dJointAttach_20
	mov edx, [ecx+0x14]
	test edx, edx
	jz dJointAttach_20
	cmp ebx, [edx]
	jnz dJointAttach_30
	jmp dJointAttach_40
dJointAttach_50:
	mov edx, eax
dJointAttach_30:
	mov eax, [edx+0xc]
	test eax, eax
	jz dJointAttach_20
	cmp [eax], ebx
	jnz dJointAttach_50
	mov eax, [eax+0xc]
	mov [edx+0xc], eax
dJointAttach_20:
	add esi, 0x10
	cmp [ebp-0x10], esi
	jnz dJointAttach_60
	mov dword [ebx+0x20], 0x0
	mov dword [ebx+0x28], 0x0
	mov dword [ebx+0x30], 0x0
	mov dword [ebx+0x38], 0x0
dJointAttach_110:
	test edi, edi
	jz dJointAttach_70
	and dword [ebx+0x18], 0xfffffffd
	mov [ebx+0x20], edi
	mov edx, [ebp+0x10]
	mov [ebx+0x30], edx
	test edi, edi
	jz dJointAttach_80
dJointAttach_120:
	mov eax, [edi+0x14]
	mov [ebx+0x38], eax
	lea eax, [ebx+0x2c]
	mov [edi+0x14], eax
	mov esi, [ebp+0x10]
	test esi, esi
	jz dJointAttach_90
dJointAttach_130:
	mov edx, [ebp+0x10]
	mov eax, [edx+0x14]
	mov [ebx+0x28], eax
	lea eax, [ebx+0x1c]
	mov [edx+0x14], eax
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
dJointAttach_40:
	mov eax, [edx+0xc]
	mov [ecx+0x14], eax
	jmp dJointAttach_20
dJointAttach_10:
	mov eax, [ebx+0x30]
	test eax, eax
	jnz dJointAttach_100
	jmp dJointAttach_110
dJointAttach_70:
	or dword [ebx+0x18], 0x2
	mov edi, [ebp+0x10]
	mov dword [ebp+0x10], 0x0
	mov [ebx+0x20], edi
	mov edx, [ebp+0x10]
	mov [ebx+0x30], edx
	test edi, edi
	jnz dJointAttach_120
dJointAttach_80:
	mov dword [ebx+0x38], 0x0
	mov esi, [ebp+0x10]
	test esi, esi
	jnz dJointAttach_130
dJointAttach_90:
	mov dword [ebx+0x28], 0x0
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;dJointCreateAMotor
dJointCreateAMotor:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ecx, [ebp+0x8]
	mov ebx, [ebp+0xc]
	cmp dword [ecx+0xc], 0xfff
	jg dJointCreateAMotor_10
	mov [ebx], ecx
	mov dword [ebx+0x4], 0x0
	mov dword [ebx+0x8], 0x0
	mov dword [ebx+0xc], 0x0
	mov dword [ebx+0x10], 0x0
	mov dword [ebx+0x14], 0x0
	mov dword [ebx+0x18], 0x0
	mov [ebx+0x1c], ebx
	mov dword [ebx+0x20], 0x0
	mov dword [ebx+0x28], 0x0
	mov [ebx+0x2c], ebx
	mov dword [ebx+0x30], 0x0
	mov dword [ebx+0x38], 0x0
	lea edx, [ecx+0x4]
	mov eax, [ecx+0x4]
	mov [ebx+0x4], eax
	mov [ebx+0x8], edx
	mov edx, [ecx+0x4]
	test edx, edx
	jz dJointCreateAMotor_20
	lea eax, [ebx+0x4]
	mov [edx+0x8], eax
dJointCreateAMotor_20:
	mov [ecx+0x4], ebx
	add dword [ecx+0xc], 0x1
	mov dword [ebx+0x14], 0x8
	mov [esp], ebx
	call _Z9jointInitP7dxJoint
	mov eax, ebx
	add esp, 0x14
	pop ebx
	pop ebp
	ret
dJointCreateAMotor_10:
	xor ebx, ebx
	mov eax, ebx
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;dJointCreateBall
dJointCreateBall:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ecx, [ebp+0x8]
	mov ebx, [ebp+0xc]
	cmp dword [ecx+0xc], 0xfff
	jg dJointCreateBall_10
	mov [ebx], ecx
	mov dword [ebx+0x4], 0x0
	mov dword [ebx+0x8], 0x0
	mov dword [ebx+0xc], 0x0
	mov dword [ebx+0x10], 0x0
	mov dword [ebx+0x14], 0x0
	mov dword [ebx+0x18], 0x0
	mov [ebx+0x1c], ebx
	mov dword [ebx+0x20], 0x0
	mov dword [ebx+0x28], 0x0
	mov [ebx+0x2c], ebx
	mov dword [ebx+0x30], 0x0
	mov dword [ebx+0x38], 0x0
	lea edx, [ecx+0x4]
	mov eax, [ecx+0x4]
	mov [ebx+0x4], eax
	mov [ebx+0x8], edx
	mov edx, [ecx+0x4]
	test edx, edx
	jz dJointCreateBall_20
	lea eax, [ebx+0x4]
	mov [edx+0x8], eax
dJointCreateBall_20:
	mov [ecx+0x4], ebx
	add dword [ecx+0xc], 0x1
	mov dword [ebx+0x14], 0x1
	mov [esp], ebx
	call _Z9jointInitP7dxJoint
	mov eax, ebx
	add esp, 0x14
	pop ebx
	pop ebp
	ret
dJointCreateBall_10:
	xor ebx, ebx
	mov eax, ebx
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;dJointCreateContact
dJointCreateContact:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ecx, [ebp+0x8]
	cmp dword [ecx+0xc], 0xfff
	jle dJointCreateContact_10
dJointCreateContact_20:
	xor ebx, ebx
dJointCreateContact_40:
	mov eax, ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
dJointCreateContact_10:
	mov eax, [ebp+0xc]
	mov edx, [eax]
	cmp edx, 0xfff
	ja dJointCreateContact_20
	mov ebx, eax
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	lea esi, [ebx+eax*4]
	lea eax, [edx+0x1]
	mov [ebx], eax
	lea ebx, [esi+0x4]
	mov [esi+0x4], ecx
	mov dword [ebx+0x4], 0x0
	mov dword [ebx+0x8], 0x0
	mov dword [ebx+0xc], 0x0
	mov dword [ebx+0x10], 0x0
	mov dword [ebx+0x14], 0x0
	mov dword [ebx+0x18], 0x0
	mov [ebx+0x1c], ebx
	mov dword [ebx+0x20], 0x0
	mov dword [ebx+0x28], 0x0
	mov [ebx+0x2c], ebx
	mov dword [ebx+0x30], 0x0
	mov dword [ebx+0x38], 0x0
	lea edx, [ecx+0x4]
	mov eax, [ecx+0x4]
	mov [ebx+0x4], eax
	mov [ebx+0x8], edx
	mov edx, [ecx+0x4]
	test edx, edx
	jz dJointCreateContact_30
	lea eax, [esi+0x8]
	mov [edx+0x8], eax
dJointCreateContact_30:
	mov [ecx+0x4], ebx
	add dword [ecx+0xc], 0x1
	mov dword [ebx+0x14], 0x4
	mov [esp], ebx
	call _Z9jointInitP7dxJoint
	or dword [ebx+0x18], 0x1
	mov edx, [ebp+0x10]
	mov eax, [edx]
	mov [ebx+0x44], eax
	mov eax, [edx+0x4]
	mov [ebx+0x48], eax
	mov eax, [edx+0x8]
	mov [ebx+0x4c], eax
	mov eax, [edx+0xc]
	mov [ebx+0x50], eax
	mov eax, [edx+0x10]
	mov [ebx+0x54], eax
	mov eax, [edx+0x14]
	mov [ebx+0x58], eax
	mov eax, [edx+0x18]
	mov [ebx+0x5c], eax
	mov eax, [edx+0x1c]
	mov [ebx+0x60], eax
	mov eax, [edx+0x20]
	mov [ebx+0x64], eax
	mov eax, [edx+0x24]
	mov [ebx+0x68], eax
	mov eax, [edx+0x28]
	mov [ebx+0x6c], eax
	mov edx, [ebp+0x14]
	mov eax, [edx]
	mov [ebx+0x70], eax
	mov eax, [edx+0x4]
	mov [ebx+0x74], eax
	mov eax, [edx+0x8]
	mov [ebx+0x78], eax
	mov eax, [edx+0xc]
	mov [ebx+0x7c], eax
	mov eax, [edx+0x10]
	mov [ebx+0x80], eax
	mov eax, [edx+0x14]
	mov [ebx+0x84], eax
	mov eax, [edx+0x18]
	mov [ebx+0x88], eax
	mov eax, [edx+0x1c]
	mov [ebx+0x8c], eax
	mov eax, [edx+0x20]
	mov [ebx+0x90], eax
	mov eax, [edx+0x24]
	mov [ebx+0x94], eax
	mov eax, [edx+0x28]
	mov [ebx+0x98], eax
	jmp dJointCreateContact_40


;dJointCreateHinge
dJointCreateHinge:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ecx, [ebp+0x8]
	mov ebx, [ebp+0xc]
	cmp dword [ecx+0xc], 0xfff
	jg dJointCreateHinge_10
	mov [ebx], ecx
	mov dword [ebx+0x4], 0x0
	mov dword [ebx+0x8], 0x0
	mov dword [ebx+0xc], 0x0
	mov dword [ebx+0x10], 0x0
	mov dword [ebx+0x14], 0x0
	mov dword [ebx+0x18], 0x0
	mov [ebx+0x1c], ebx
	mov dword [ebx+0x20], 0x0
	mov dword [ebx+0x28], 0x0
	mov [ebx+0x2c], ebx
	mov dword [ebx+0x30], 0x0
	mov dword [ebx+0x38], 0x0
	lea edx, [ecx+0x4]
	mov eax, [ecx+0x4]
	mov [ebx+0x4], eax
	mov [ebx+0x8], edx
	mov edx, [ecx+0x4]
	test edx, edx
	jz dJointCreateHinge_20
	lea eax, [ebx+0x4]
	mov [edx+0x8], eax
dJointCreateHinge_20:
	mov [ecx+0x4], ebx
	add dword [ecx+0xc], 0x1
	mov dword [ebx+0x14], 0x2
	mov [esp], ebx
	call _Z9jointInitP7dxJoint
	mov eax, ebx
	add esp, 0x14
	pop ebx
	pop ebp
	ret
dJointCreateHinge_10:
	xor ebx, ebx
	mov eax, ebx
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;dJointDestroy
dJointDestroy:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov ebx, [ebp+0x8]
	test byte [ebx+0x18], 0x1
	jnz dJointDestroy_10
	mov esi, ebx
	lea edi, [ebx+0x20]
dJointDestroy_60:
	mov ecx, [esi+0x20]
	test ecx, ecx
	jz dJointDestroy_20
	mov edx, [ecx+0x14]
	test edx, edx
	jz dJointDestroy_20
	cmp ebx, [edx]
	jnz dJointDestroy_30
	jmp dJointDestroy_40
dJointDestroy_50:
	mov edx, eax
dJointDestroy_30:
	mov eax, [edx+0xc]
	test eax, eax
	jz dJointDestroy_20
	cmp [eax], ebx
	jnz dJointDestroy_50
	mov eax, [eax+0xc]
	mov [edx+0xc], eax
dJointDestroy_20:
	add esi, 0x10
	cmp edi, esi
	jnz dJointDestroy_60
	mov dword [ebx+0x20], 0x0
	mov dword [ebx+0x28], 0x0
	mov dword [ebx+0x30], 0x0
	mov dword [ebx+0x38], 0x0
	mov edx, [ebx+0x4]
	test edx, edx
	jz dJointDestroy_70
	mov eax, [ebx+0x8]
	mov [edx+0x8], eax
dJointDestroy_70:
	mov eax, [ebx+0x8]
	mov [eax], edx
	mov dword [ebx+0x4], 0x0
	mov dword [ebx+0x8], 0x0
	mov eax, [ebx]
	sub dword [eax+0xc], 0x1
dJointDestroy_10:
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
dJointDestroy_40:
	mov eax, [edx+0xc]
	mov [ecx+0x14], eax
	jmp dJointDestroy_20
	nop


;dJointGroupDestroy
dJointGroupDestroy:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xc
	mov eax, [ebp+0x8]
	mov edx, [eax]
	sub edx, 0x1
	js dJointGroupDestroy_10
	mov ecx, eax
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	lea eax, [ecx+eax*4]
	lea ecx, [eax+0x4]
	mov [ebp-0x10], ecx
	mov [ebp-0x14], edx
	mov edi, eax
	mov eax, ecx
dJointGroupDestroy_100:
	mov ecx, [eax]
	test ecx, ecx
	jz dJointGroupDestroy_20
	lea ecx, [edi+0x4]
	mov esi, ecx
	lea edx, [edi+0x24]
	mov [ebp-0x18], edx
dJointGroupDestroy_70:
	mov ebx, [esi+0x20]
	test ebx, ebx
	jz dJointGroupDestroy_30
	mov edx, [ebx+0x14]
	test edx, edx
	jz dJointGroupDestroy_30
	cmp [edx], ecx
	jnz dJointGroupDestroy_40
	jmp dJointGroupDestroy_50
dJointGroupDestroy_60:
	mov edx, eax
dJointGroupDestroy_40:
	mov eax, [edx+0xc]
	test eax, eax
	jz dJointGroupDestroy_30
	cmp ecx, [eax]
	jnz dJointGroupDestroy_60
	mov eax, [eax+0xc]
	mov [edx+0xc], eax
dJointGroupDestroy_30:
	add esi, 0x10
	cmp [ebp-0x18], esi
	jnz dJointGroupDestroy_70
	mov dword [ecx+0x20], 0x0
	mov dword [ecx+0x28], 0x0
	mov dword [ecx+0x30], 0x0
	mov dword [ecx+0x38], 0x0
	mov edx, [ecx+0x4]
	test edx, edx
	jz dJointGroupDestroy_80
	mov eax, [ecx+0x8]
	mov [edx+0x8], eax
dJointGroupDestroy_80:
	mov eax, [ecx+0x8]
	mov [eax], edx
	mov dword [ecx+0x4], 0x0
	mov dword [ecx+0x8], 0x0
	mov ecx, [ebp-0x10]
	mov eax, [ecx]
	sub dword [eax+0xc], 0x1
dJointGroupDestroy_20:
	sub dword [ebp-0x14], 0x1
	sub edi, 0xac
	sub dword [ebp-0x10], 0xac
	cmp dword [ebp-0x14], 0xffffffff
	jz dJointGroupDestroy_90
	mov eax, [ebp-0x10]
	jmp dJointGroupDestroy_100
dJointGroupDestroy_50:
	mov eax, [edx+0xc]
	mov [ebx+0x14], eax
	jmp dJointGroupDestroy_30
dJointGroupDestroy_90:
	mov eax, [ebp+0x8]
dJointGroupDestroy_10:
	mov dword [eax], 0x0
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;dJointGroupEmpty
dJointGroupEmpty:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xc
	mov eax, [ebp+0x8]
	mov edx, [eax]
	sub edx, 0x1
	js dJointGroupEmpty_10
	mov ecx, eax
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	lea eax, [ecx+eax*4]
	lea ecx, [eax+0x4]
	mov [ebp-0x10], ecx
	mov [ebp-0x14], edx
	mov edi, eax
	mov eax, ecx
dJointGroupEmpty_100:
	mov eax, [eax]
	test eax, eax
	jz dJointGroupEmpty_20
	lea ecx, [edi+0x4]
	mov esi, ecx
	lea edx, [edi+0x24]
	mov [ebp-0x18], edx
dJointGroupEmpty_70:
	mov ebx, [esi+0x20]
	test ebx, ebx
	jz dJointGroupEmpty_30
	mov edx, [ebx+0x14]
	test edx, edx
	jz dJointGroupEmpty_30
	cmp ecx, [edx]
	jnz dJointGroupEmpty_40
	jmp dJointGroupEmpty_50
dJointGroupEmpty_60:
	mov edx, eax
dJointGroupEmpty_40:
	mov eax, [edx+0xc]
	test eax, eax
	jz dJointGroupEmpty_30
	cmp ecx, [eax]
	jnz dJointGroupEmpty_60
	mov eax, [eax+0xc]
	mov [edx+0xc], eax
dJointGroupEmpty_30:
	add esi, 0x10
	cmp [ebp-0x18], esi
	jnz dJointGroupEmpty_70
	mov dword [ecx+0x20], 0x0
	mov dword [ecx+0x28], 0x0
	mov dword [ecx+0x30], 0x0
	mov dword [ecx+0x38], 0x0
	mov edx, [ecx+0x4]
	test edx, edx
	jz dJointGroupEmpty_80
	mov eax, [ecx+0x8]
	mov [edx+0x8], eax
dJointGroupEmpty_80:
	mov eax, [ecx+0x8]
	mov [eax], edx
	mov dword [ecx+0x4], 0x0
	mov dword [ecx+0x8], 0x0
	mov ecx, [ebp-0x10]
	mov eax, [ecx]
	sub dword [eax+0xc], 0x1
dJointGroupEmpty_20:
	sub dword [ebp-0x14], 0x1
	sub edi, 0xac
	sub dword [ebp-0x10], 0xac
	cmp dword [ebp-0x14], 0xffffffff
	jz dJointGroupEmpty_90
	mov eax, [ebp-0x10]
	jmp dJointGroupEmpty_100
dJointGroupEmpty_50:
	mov eax, [edx+0xc]
	mov [ebx+0x14], eax
	jmp dJointGroupEmpty_30
dJointGroupEmpty_90:
	mov eax, [ebp+0x8]
dJointGroupEmpty_10:
	mov dword [eax], 0x0
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;dWorldCreate
dWorldCreate:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov edx, [ebp+0x8]
	mov eax, edx
	shl eax, 0x4
	mov ecx, edx
	shl ecx, 0xc
	add eax, ecx
	add eax, edx
	shl eax, 0x4
	lea ebx, [eax+odeGlob]
	mov dword [eax+odeGlob], 0x0
	mov dword [ebx+0x4], 0x0
	mov dword [ebx+0x8], 0x0
	mov dword [ebx+0xc], 0x0
	mov dword [esp+0x4], 0x4
	lea eax, [ebx+0x10]
	mov [esp], eax
	call dSetZero
	mov dword [ebx+0x20], 0x3e4ccccd
	mov dword [ebx+0x24], 0x3727c5ac
	mov eax, 0x358637be
	mov [ebx+0x3c], eax
	mov [ebx+0x40], eax
	mov dword [ebx+0x48], 0xa
	xor eax, eax
	mov [ebx+0x44], eax
	mov dword [ebx+0x4c], 0x0
	mov dword [ebx+0x28], 0x14
	mov dword [ebx+0x2c], 0x3fa66666
	mov dword [ebx+0x30], 0x89abcdef
	mov dword [ebx+0x34], 0x7f7fffff
	mov [ebx+0x38], eax
	mov eax, ebx
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;dWorldDestroy
dWorldDestroy:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov ebx, [edi]
	mov dword [esp], 0xb
	call _Z24Sys_EnterCriticalSection15CriticalSection
	test ebx, ebx
	jnz dWorldDestroy_10
	jmp dWorldDestroy_20
dWorldDestroy_30:
	mov ebx, esi
dWorldDestroy_10:
	mov esi, [ebx+0x4]
	mov dword [esp+0x4], odeGlob+0x25e470
	mov [esp], ebx
	call _Z9Pool_FreePvP10pooldata_t
	test esi, esi
	jnz dWorldDestroy_30
dWorldDestroy_20:
	mov dword [esp], 0xb
	call _Z24Sys_LeaveCriticalSection15CriticalSection
	mov eax, [edi+0x4]
	test eax, eax
	jnz dWorldDestroy_40
	jmp dWorldDestroy_50
dWorldDestroy_60:
	test ebx, ebx
	jz dWorldDestroy_50
dWorldDestroy_70:
	mov eax, ebx
dWorldDestroy_40:
	mov ebx, [eax+0x4]
	test byte [eax+0x18], 0x1
	jz dWorldDestroy_60
	mov dword [eax], 0x0
	mov dword [eax+0x20], 0x0
	mov dword [eax+0x28], 0x0
	mov dword [eax+0x30], 0x0
	mov dword [eax+0x38], 0x0
	mov dword [esp+0x4], _cstring_warning_destroyi
	mov dword [esp], 0x0
	call dMessage
	test ebx, ebx
	jnz dWorldDestroy_70
dWorldDestroy_50:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;dWorldQuickStep
dWorldQuickStep:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z16dxProcessIslandsP7dxWorldf
	nop


;dWorldSetAutoDisableAngularThreshold
dWorldSetAutoDisableAngularThreshold:
	push ebp
	mov ebp, esp
	movss xmm0, dword [ebp+0xc]
	mulss xmm0, xmm0
	mov eax, [ebp+0x8]
	movss [eax+0x40], xmm0
	pop ebp
	ret


;dWorldSetAutoDisableFlag
dWorldSetAutoDisableFlag:
	push ebp
	mov ebp, esp
	xor eax, eax
	cmp dword [ebp+0xc], 0x0
	setnz al
	mov edx, [ebp+0x8]
	mov [edx+0x4c], eax
	pop ebp
	ret


;dWorldSetAutoDisableLinearThreshold
dWorldSetAutoDisableLinearThreshold:
	push ebp
	mov ebp, esp
	movss xmm0, dword [ebp+0xc]
	mulss xmm0, xmm0
	mov eax, [ebp+0x8]
	movss [eax+0x3c], xmm0
	pop ebp
	ret


;dWorldSetAutoDisableSteps
dWorldSetAutoDisableSteps:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov [eax+0x48], edx
	pop ebp
	ret


;dWorldSetAutoDisableTime
dWorldSetAutoDisableTime:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov [eax+0x44], edx
	pop ebp
	ret


;dWorldSetCFM
dWorldSetCFM:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov [eax+0x24], edx
	pop ebp
	ret


;dWorldSetContactMaxCorrectingVel
dWorldSetContactMaxCorrectingVel:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov [eax+0x34], edx
	pop ebp
	ret


;dWorldSetContactSurfaceLayer
dWorldSetContactSurfaceLayer:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov [eax+0x38], edx
	pop ebp
	ret


;dWorldSetERP
dWorldSetERP:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov [eax+0x20], edx
	pop ebp
	ret


;dWorldSetGravity
dWorldSetGravity:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov [edx+0x10], eax
	mov eax, [ebp+0x10]
	mov [edx+0x14], eax
	mov eax, [ebp+0x14]
	mov [edx+0x18], eax
	pop ebp
	ret


;dWorldSetQuickStepNumIterations
dWorldSetQuickStepNumIterations:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov [eax+0x28], edx
	pop ebp
	ret
	add [eax], al


;Initialized global or static variables of ode:
SECTION .data


;Initialized constant data of ode:
SECTION .rdata


;Zero initialized global or static variables of ode:
SECTION .bss
odeGlob: resb 0x2c6500


;All cstrings:
SECTION .rdata
_cstring_dbodysetmass:		db "dBodySetMass",0
_cstring_inertia_must_be_:		db "inertia must be positive definite in %s()",0
_cstring_warning_destroyi:		db "warning: destroying world containing grouped joints",0



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1

