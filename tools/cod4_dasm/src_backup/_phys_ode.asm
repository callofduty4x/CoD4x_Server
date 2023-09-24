;Imports of phys_ode:
	extern dBodyGetData
	extern ODE_BodyGetFirstGeom
	extern dGeomEnable
	extern dGeomGetBodyNext
	extern dBodyDisable
	extern dGeomDisable
	extern dBodyIsEnabled
	extern dBodyGetRotation
	extern dBodyGetPosition
	extern _Z17AxisTransformVec3PA3_KfPS_Pf
	extern dBodySetPosition
	extern dGeomGetClass
	extern ODE_GeomTransformGetOffset
	extern ODE_GeomTransformSetOffset
	extern dMassSetZero
	extern dBodyGetMass
	extern cgMedia
	extern _Z19SND_AddPhysicsSoundP16snd_alias_list_tPKf
	extern dBodyGetPointVel
	extern ODE_WorldGetBodyCount
	extern colorGreen
	extern _Z16CG_DrawStringExtPK15ScreenPlacementffPKcPKfiifi
	extern _Z2vaPKcz
	extern _Z14CM_ModelBoundsjPfS_
	extern ODE_GeomGetAAContainedBox
	extern _Z11CM_BoxTraceP7trace_tPKfS2_S2_S2_ji
	extern dBodySetLinearVel
	extern dBodySetAngularVel
	extern dMassSetSphereTotal
	extern dCreateGeomTransform
	extern dGeomTransformSetGeom
	extern vec3_origin
	extern ODE_GeomTransformSetRotation
	extern dBodySetMass
	extern _Z14Com_PrintErroriPKcz
	extern dMassSetCylinderTotal
	extern _Z23Phys_CreateCylinderGeomP7dxSpaceP6dxBodyPK17GeomStateCylinder
	extern _Z16Com_PrintWarningiPKcz
	extern dMassSetParameters
	extern _Z20Phys_CreateBrushGeomP7dxSpaceP6dxBodyPK8cbrush_tPKf
	extern dMassSetCappedCylinderTotal
	extern _Z22Phys_CreateCapsuleGeomP7dxSpaceP6dxBodyPK17GeomStateCylinder
	extern _Z25Phys_CreateBrushmodelGeomP7dxSpaceP6dxBodytPKf
	extern dMassSetBoxTotal
	extern dCreateBox
	extern dWorldSetAutoDisableLinearThreshold
	extern dWorldSetAutoDisableAngularThreshold
	extern dWorldSetAutoDisableTime
	extern dBodyCreate
	extern _Z24Sys_EnterCriticalSection15CriticalSection
	extern _Z10Pool_AllocP10pooldata_t
	extern _Z24Sys_LeaveCriticalSection15CriticalSection
	extern memset
	extern dBodySetData
	extern dBodySetRotation
	extern dBodySetFiniteRotationMode
	extern dGeomGetBody
	extern dAreConnectedExcluding
	extern dCollide
	extern _Z30Phys_CreateJointForEachContactP11ContactListP6dxBodyS2_PK18dSurfaceParameters9PhysWorld
	extern _Z19Phys_ReduceContactsP6dxBodyPK11ContactListPS1_
	extern _Z16MemFile_ReadDataP10MemoryFileiPv
	extern dBodyGetLinearVel
	extern dBodyGetAngularVel
	extern _Z17MemFile_WriteDataP10MemoryFileiPKv
	extern _Z17Cmd_RemoveCommandPKc
	extern dJointGroupDestroy
	extern dSpaceDestroy
	extern dWorldDestroy
	extern dCloseODE
	extern _Z10QuatToAxisPKfPA3_f
	extern _Z18PIXBeginNamedEventiPKcz
	extern dWorldSetGravity
	extern ODE_CollideSimpleSpaceWithGeomNoAABBTest
	extern dWorldQuickStep
	extern dWorldSetCFM
	extern dWorldSetERP
	extern dWorldSetContactMaxCorrectingVel
	extern dWorldSetContactSurfaceLayer
	extern dWorldSetQuickStepNumIterations
	extern dSpaceCollide
	extern _Z12Dvar_SetBoolPK6dvar_sh
	extern dBodyDestroy
	extern _Z9Pool_FreePvP10pooldata_t
	extern dJointCreateHinge
	extern dJointAttach
	extern dJointSetHingeAnchor
	extern dJointSetHingeAxis
	extern dBodyAddForceAtPos
	extern dBodyEnable
	extern dJointDestroy
	extern _Z8AxisCopyPA3_KfPA3_f
	extern dJointSetHingeParam
	extern dGeomMoved
	extern dJointGroupEmpty
	extern dJointCreateAMotor
	extern dJointSetAMotorMode
	extern dJointSetAMotorNumAxes
	extern dJointSetAMotorAxis
	extern dJointCreateBall
	extern dJointSetBallAnchor
	extern dJointSetAMotorParam
	extern _Z10AxisToQuatPA3_KfPf
	extern _Z8QuatLerpPKfS0_fPf
	extern _Z13Vec4NormalizePf
	extern dGeomGetClassData
	extern _Z20ShrinkBoundsToHeightPfS_
	extern _Z20CM_ClipHandleToModelj
	extern _Z15XModelGetBoundsPK6XModelPfS2_
	extern _Z9Pool_InitPvP10pooldata_tjj
	extern _Z8ODE_Initv
	extern dWorldCreate
	extern dGetSimpleSpace
	extern dGetContactJointGroup
	extern dWorldSetAutoDisableFlag
	extern dWorldSetAutoDisableSteps
	extern _Z18Dvar_RegisterFloatPKcffftS0_
	extern _Z17Dvar_RegisterBoolPKchtS0_
	extern _Z16Dvar_RegisterIntPKciiitS0_
	extern _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	extern _Z28Phys_InitBrushmodelGeomClassv
	extern _Z23Phys_InitBrushGeomClassv
	extern _Z26Phys_InitCylinderGeomClassv
	extern _Z25Phys_InitCapsuleGeomClassv
	extern _Z23Phys_InitWorldCollisionv

;Exports of phys_ode:
	global physInited
	global g_phys_maxMsecStep
	global g_phys_minMsecStep
	global _Z15Phys_EnableGeomP6dxBody
	global _Z23Phys_DisableBodyAndGeomP6dxBody
	global _Z21Phys_ObjCountIfActiveP6dxBody
	global _Z29Phys_AdjustForNewCenterOfMassP6dxBodyPKf
	global _Z23Phys_PlayCollisionSoundiP6dxBodyiP11ContactList
	global _Z11Phys_Stop_fv
	global _Z9Phys_Go_fv
	global _Z26Phys_DrawDebugTextForWorldjPKcPfS1_fPK15ScreenPlacement
	global _ZZ9Phys_InitvE13Phys_Go_f_VAR
	global _ZZ9Phys_InitvE15Phys_Stop_f_VAR
	global _Z21Phys_DoBodyOncePerRunP6dxBody
	global _Z21Phys_BodyGrabSnapshotP6dxBody
	global _Z26Phys_BodyAddGeomAndSetMass9PhysWorldP6dxBodyfPK9GeomStatePKf
	global _Z24Phys_CreateBodyFromState9PhysWorldPK9BodyState
	global Phys_NearCallback
	global _Z12Phys_ObjLoad9PhysWorldP10MemoryFile
	global _Z12Phys_ObjSaveiP10MemoryFile
	global _Z13Phys_Shutdownv
	global _Z14Phys_ObjCreate9PhysWorldPKfS1_S1_PK10PhysPreset
	global _Z14Phys_RunToTimei9PhysWorldi
	global _Z15Phys_InitJointsv
	global _Z15Phys_ObjDestroy9PhysWorldi
	global _Z16Phys_CreateHinge9PhysWorldiiPKfS1_ffff
	global _Z16Phys_ObjAddForce9PhysWorldiPKfS1_
	global _Z16Phys_ObjIsAsleepi
	global _Z17Phys_JointDestroy9PhysWorldi
	global _Z18Phys_DrawDebugTextPK15ScreenPlacement
	global _Z18Phys_ObjAddGeomBox9PhysWorldiPKfS1_
	global _Z18Phys_ObjCreateAxis9PhysWorldPKfPA3_S0_S1_PK10PhysPreset
	global _Z19Phys_ObjGetPositioniPfPA3_f
	global _Z19Phys_ObjSetVelocityiPKf
	global _Z19Phys_SetHingeParams9PhysWorldiffff
	global _Z20Phys_AddJitterRegion9PhysWorldPKfffff
	global _Z20Phys_ObjAddGeomBrush9PhysWorldiPK8cbrush_tPK8PhysMass
	global _Z20Phys_ObjBulletImpact9PhysWorldiPKfS1_ff
	global _Z20dxPostProcessIslands9PhysWorld
	global _Z22Phys_ObjAddGeomCapsule9PhysWorldiiffPKf
	global _Z22Phys_ObjSetOrientation9PhysWorldiPKfS1_
	global _Z23Phys_CreateAngularMotor9PhysWorldiiiPA3_KfPS0_S3_S3_S3_
	global _Z23Phys_ObjAddGeomCylinder9PhysWorldiPKfS1_
	global _Z23Phys_ObjGetCenterOfMassiPf
	global _Z24Phys_CreateBallAndSocket9PhysWorldiiPKf
	global _Z25Phys_ObjAddGeomBoxRotated9PhysWorldiPKfS1_PA3_S0_
	global _Z25Phys_ObjAddGeomBrushModel9PhysWorlditPK8PhysMass
	global _Z25Phys_ObjSetInertialTensoriPK8PhysMass
	global _Z25Phys_SetCollisionCallback9PhysWorldPFvvE
	global _Z26Phys_ObjSetAngularVelocityiPKf
	global _Z26Phys_ObjSetContactCentroidiPKf
	global _Z26Phys_SetAngularMotorParams9PhysWorldiPKfS1_S1_S1_
	global _Z28Phys_ObjGetInterpolatedState9PhysWorldiPfS0_
	global _Z29Phys_ObjSetAngularVelocityRawiPKf
	global _Z30Phys_GeomUserGetAAContainedBoxP6dxGeomPfS1_
	global _Z30Phys_ObjAddGeomCylinderRotated9PhysWorldiiffPKfPA3_S0_
	global _Z30Phys_ObjSetCollisionFromXModelPK6XModel9PhysWorldi
	global _Z32Phys_ObjAddGeomCylinderDirection9PhysWorldiiffPKf
	global _Z9Phys_Initv
	global phys_drawDebugInfo
	global phys_gravityChangeWakeupRadius
	global phys_drawCollisionObj
	global phys_drawCollisionWorld
	global g_phys_msecStep
	global physGlob
	global phys_contact_cfm
	global phys_contact_erp
	global phys_drawcontacts
	global phys_jitterMaxMass
	global phys_noIslands
	global phys_autoDisableAngular
	global phys_autoDisableLinear
	global phys_autoDisableTime
	global phys_bulletSpinScale
	global phys_bulletUpBias
	global phys_cfm
	global phys_collUseEntities
	global phys_contact_cfm_ragdoll
	global phys_contact_erp_ragdoll
	global phys_csl
	global phys_dragAngular
	global phys_dragLinear
	global phys_drawAwake
	global phys_drawAwakeTooLong
	global phys_dumpcontacts
	global phys_erp
	global phys_frictionScale
	global phys_gravity
	global phys_interBodyCollision
	global phys_joint_cfm
	global phys_joint_stop_cfm
	global phys_joint_stop_erp
	global phys_mcv
	global phys_mcv_ragdoll
	global phys_minImpactMomentum
	global phys_narrowObjMaxLength
	global phys_qsi
	global phys_reorderConst
	global phys_visibleTris


SECTION .text


;Phys_EnableGeom(dxBody*)
_Z15Phys_EnableGeomP6dxBody:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call dBodyGetData
	mov [esp], ebx
	call ODE_BodyGetFirstGeom
	mov ebx, eax
	test eax, eax
	jz _Z15Phys_EnableGeomP6dxBody_10
_Z15Phys_EnableGeomP6dxBody_20:
	mov [esp], ebx
	call dGeomEnable
	mov [esp], ebx
	call dGeomGetBodyNext
	mov ebx, eax
	test eax, eax
	jnz _Z15Phys_EnableGeomP6dxBody_20
_Z15Phys_EnableGeomP6dxBody_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;Phys_DisableBodyAndGeom(dxBody*)
_Z23Phys_DisableBodyAndGeomP6dxBody:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call dBodyGetData
	mov eax, [eax+0xc]
	mov [esp], eax
	call dBodyDisable
	mov [esp], ebx
	call ODE_BodyGetFirstGeom
	mov ebx, eax
	test eax, eax
	jz _Z23Phys_DisableBodyAndGeomP6dxBody_10
_Z23Phys_DisableBodyAndGeomP6dxBody_20:
	mov [esp], ebx
	call dGeomDisable
	mov [esp], ebx
	call dGeomGetBodyNext
	mov ebx, eax
	test eax, eax
	jnz _Z23Phys_DisableBodyAndGeomP6dxBody_20
_Z23Phys_DisableBodyAndGeomP6dxBody_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;Phys_ObjCountIfActive(dxBody*)
_Z21Phys_ObjCountIfActiveP6dxBody:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call dBodyIsEnabled
	mov edx, [physGlob+0xbab4]
	cmp al, 0x1
	sbb edx, 0xffffffff
	mov [physGlob+0xbab4], edx
	leave
	ret
	add [eax], al


;Phys_AdjustForNewCenterOfMass(dxBody*, float const*)
_Z29Phys_AdjustForNewCenterOfMassP6dxBodyPKf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov [ebp-0x8c], eax
	mov [ebp-0x90], edx
	mov [esp], eax
	call dBodyGetData
	mov [ebp-0x88], eax
	mov eax, [ebp-0x8c]
	mov [esp], eax
	call dBodyGetRotation
	mov esi, eax
	xor edi, edi
_Z29Phys_AdjustForNewCenterOfMassP6dxBodyPKf_20:
	mov ecx, esi
	lea edx, [ebp+edi*4-0x60]
	xor ebx, ebx
_Z29Phys_AdjustForNewCenterOfMassP6dxBodyPKf_10:
	mov eax, [ecx]
	mov [edx], eax
	add ebx, 0x1
	add ecx, 0x4
	add edx, 0xc
	cmp ebx, 0x3
	jnz _Z29Phys_AdjustForNewCenterOfMassP6dxBodyPKf_10
	add edi, 0x1
	add esi, 0x10
	cmp edi, 0x3
	jnz _Z29Phys_AdjustForNewCenterOfMassP6dxBodyPKf_20
	mov edx, [ebp-0x8c]
	mov [esp], edx
	call dBodyGetPosition
	movss xmm0, dword [eax]
	movss [ebp-0x6c], xmm0
	movss xmm0, dword [eax+0x4]
	movss [ebp-0x70], xmm0
	movss xmm0, dword [eax+0x8]
	movss [ebp-0x74], xmm0
	mov eax, [ebp-0x8c]
	mov [esp], eax
	call dBodyGetData
	lea edx, [ebp-0x3c]
	mov [esp+0x8], edx
	mov [esp+0x4], eax
	lea edx, [ebp-0x60]
	mov [esp], edx
	call _Z17AxisTransformVec3PA3_KfPS_Pf
	movss xmm0, dword [ebp-0x6c]
	addss xmm0, [ebp-0x3c]
	movss [ebp-0x6c], xmm0
	movss xmm0, dword [ebp-0x70]
	addss xmm0, [ebp-0x38]
	movss [ebp-0x70], xmm0
	movss xmm0, dword [ebp-0x74]
	addss xmm0, [ebp-0x34]
	movss [ebp-0x74], xmm0
	movss xmm1, dword [_data16_80000000]
	mov eax, [ebp-0x88]
	movss xmm0, dword [eax]
	movss [ebp-0x78], xmm0
	xor dword [ebp-0x78], 0x80000000
	movss xmm0, dword [eax+0x4]
	movss [ebp-0x7c], xmm0
	xor dword [ebp-0x7c], 0x80000000
	movss xmm0, dword [eax+0x8]
	movss [ebp-0x80], xmm0
	xor dword [ebp-0x80], 0x80000000
	mov eax, [ebp-0x90]
	movss xmm0, dword [eax]
	xorps xmm0, xmm1
	mov edx, [ebp-0x88]
	movss [edx], xmm0
	add eax, 0x4
	mov [ebp-0x84], eax
	mov eax, [ebp-0x90]
	movss xmm0, dword [eax+0x4]
	xorps xmm0, xmm1
	movss [edx+0x4], xmm0
	mov edi, eax
	add edi, 0x8
	movss xmm0, dword [eax+0x8]
	xorps xmm0, xmm1
	movss [edx+0x8], xmm0
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov edx, [ebp-0x90]
	mov [esp+0x4], edx
	lea eax, [ebp-0x60]
	mov [esp], eax
	call _Z17AxisTransformVec3PA3_KfPS_Pf
	movss xmm0, dword [ebp-0x6c]
	addss xmm0, [ebp-0x24]
	movss [ebp-0x6c], xmm0
	movss xmm0, dword [ebp-0x70]
	addss xmm0, [ebp-0x20]
	movss [ebp-0x70], xmm0
	movss xmm0, dword [ebp-0x74]
	addss xmm0, [ebp-0x1c]
	movss [ebp-0x74], xmm0
	movss [esp+0xc], xmm0
	movss xmm0, dword [ebp-0x70]
	movss [esp+0x8], xmm0
	movss xmm0, dword [ebp-0x6c]
	movss [esp+0x4], xmm0
	mov eax, [ebp-0x8c]
	mov [esp], eax
	call dBodySetPosition
	mov edx, [ebp-0x8c]
	mov [esp], edx
	call ODE_BodyGetFirstGeom
	mov ebx, eax
	test eax, eax
	jz _Z29Phys_AdjustForNewCenterOfMassP6dxBodyPKf_30
	lea esi, [ebp-0x30]
	jmp _Z29Phys_AdjustForNewCenterOfMassP6dxBodyPKf_40
_Z29Phys_AdjustForNewCenterOfMassP6dxBodyPKf_50:
	mov [esp], ebx
	call dGeomGetBodyNext
	mov ebx, eax
	test eax, eax
	jz _Z29Phys_AdjustForNewCenterOfMassP6dxBodyPKf_30
_Z29Phys_AdjustForNewCenterOfMassP6dxBodyPKf_40:
	mov [esp], ebx
	call dGeomGetClass
	cmp eax, 0x6
	jnz _Z29Phys_AdjustForNewCenterOfMassP6dxBodyPKf_50
	mov [esp+0x4], esi
	mov [esp], ebx
	call ODE_GeomTransformGetOffset
	movss xmm0, dword [ebp-0x78]
	addss xmm0, [ebp-0x30]
	movss xmm1, dword [ebp-0x7c]
	addss xmm1, [ebp-0x2c]
	movss xmm2, dword [ebp-0x80]
	addss xmm2, [ebp-0x28]
	mov eax, [ebp-0x90]
	subss xmm0, [eax]
	movss [ebp-0x30], xmm0
	mov edx, [ebp-0x84]
	subss xmm1, [edx]
	movss [ebp-0x2c], xmm1
	subss xmm2, [edi]
	movss [ebp-0x28], xmm2
	mov [esp+0x4], esi
	mov [esp], ebx
	call ODE_GeomTransformSetOffset
	mov [esp], ebx
	call dGeomGetBodyNext
	mov ebx, eax
	test eax, eax
	jnz _Z29Phys_AdjustForNewCenterOfMassP6dxBodyPKf_40
_Z29Phys_AdjustForNewCenterOfMassP6dxBodyPKf_30:
	mov eax, [ebp-0x88]
	add eax, 0x10
	movss xmm0, dword [ebp-0x6c]
	mov edx, [ebp-0x88]
	movss [edx+0x10], xmm0
	movss xmm0, dword [ebp-0x70]
	movss [eax+0x4], xmm0
	movss xmm0, dword [ebp-0x74]
	movss [eax+0x8], xmm0
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Phys_PlayCollisionSound(int, dxBody*, int, ContactList*)
_Z23Phys_PlayCollisionSoundiP6dxBodyiP11ContactList:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xbc
	mov [ebp-0x7c], edx
	mov [ebp-0x80], ecx
	lea ebx, [ebp-0x78]
	mov [esp], ebx
	call dMassSetZero
	xor esi, esi
	mov [ebp-0x24], esi
	mov [ebp-0x20], esi
	mov [ebp-0x1c], esi
	mov [esp+0x4], ebx
	mov eax, [ebp-0x7c]
	mov [esp], eax
	call dBodyGetMass
	mov edx, [ebp+0x8]
	mov eax, [edx+0x1800]
	pxor xmm3, xmm3
	test eax, eax
	jg _Z23Phys_PlayCollisionSoundiP6dxBodyiP11ContactList_10
_Z23Phys_PlayCollisionSoundiP6dxBodyiP11ContactList_40:
	cvtsi2ss xmm2, eax
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm2
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x24]
	movss [ebp-0x24], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x20]
	movss [ebp-0x20], xmm1
	mulss xmm0, [ebp-0x1c]
	movss [ebp-0x1c], xmm0
	divss xmm3, xmm2
	mulss xmm3, [ebp-0x78]
	mov eax, [phys_minImpactMomentum]
	movss xmm0, dword [eax+0xc]
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, xmm3
	jbe _Z23Phys_PlayCollisionSoundiP6dxBodyiP11ContactList_20
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x2c]
	and eax, 0x1f00000
	shr eax, 0x14
	mov edx, [ebp-0x80]
	shl edx, 0x3
	sub edx, [ebp-0x80]
	mov ecx, [ebp-0x80]
	lea edx, [ecx+edx*4]
	add edx, eax
	mov eax, cgMedia
	mov edx, [eax+edx*4+0x1068]
	test edx, edx
	jz _Z23Phys_PlayCollisionSoundiP6dxBodyiP11ContactList_20
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z19SND_AddPhysicsSoundP16snd_alias_list_tPKf
_Z23Phys_PlayCollisionSoundiP6dxBodyiP11ContactList_20:
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23Phys_PlayCollisionSoundiP6dxBodyiP11ContactList_10:
	xor edi, edi
	mov [ebp-0x9c], esi
	movss xmm3, dword [ebp-0x9c]
	lea esi, [ebp-0x34]
	mov ebx, edx
_Z23Phys_PlayCollisionSoundiP6dxBodyiP11ContactList_30:
	mov [esp+0x10], esi
	mov eax, [ebx+0x8]
	mov [esp+0xc], eax
	mov eax, [ebx+0x4]
	mov [esp+0x8], eax
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x7c]
	mov [esp], ecx
	movss [ebp-0x98], xmm3
	call dBodyGetPointVel
	movss xmm1, dword [ebp-0x34]
	mulss xmm1, [ebx+0x10]
	movss xmm0, dword [ebp-0x30]
	mulss xmm0, [ebx+0x14]
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0x2c]
	mulss xmm0, [ebx+0x18]
	addss xmm1, xmm0
	movss xmm3, dword [ebp-0x98]
	addss xmm3, xmm1
	movss xmm0, dword [ebp-0x24]
	addss xmm0, [ebx]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [ebp-0x20]
	addss xmm0, [ebx+0x4]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [ebp-0x1c]
	addss xmm0, [ebx+0x8]
	movss [ebp-0x1c], xmm0
	add edi, 0x1
	add ebx, 0x30
	mov edx, [ebp+0x8]
	mov eax, [edx+0x1800]
	cmp edi, eax
	jl _Z23Phys_PlayCollisionSoundiP6dxBodyiP11ContactList_30
	jmp _Z23Phys_PlayCollisionSoundiP6dxBodyiP11ContactList_40


;Phys_Stop_f()
_Z11Phys_Stop_fv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [physGlob]
	mov ebx, [eax]
	test ebx, ebx
	jz _Z11Phys_Stop_fv_10
_Z11Phys_Stop_fv_20:
	mov [esp], ebx
	call _Z23Phys_DisableBodyAndGeomP6dxBody
	mov eax, [ebx+0x4]
	mov ebx, eax
	test eax, eax
	jnz _Z11Phys_Stop_fv_20
_Z11Phys_Stop_fv_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;Phys_Go_f()
_Z9Phys_Go_fv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [physGlob]
	mov ebx, [eax]
	test ebx, ebx
	jz _Z9Phys_Go_fv_10
_Z9Phys_Go_fv_20:
	mov [esp], ebx
	call _Z15Phys_EnableGeomP6dxBody
	mov eax, [ebx+0x4]
	mov ebx, eax
	test eax, eax
	jnz _Z9Phys_Go_fv_20
_Z9Phys_Go_fv_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;Phys_DrawDebugTextForWorld(unsigned int, char const*, float*, float*, float, ScreenPlacement const*)
_Z26Phys_DrawDebugTextForWorldjPKcPfS1_fPK15ScreenPlacement:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov ebx, eax
	mov [ebp-0x1c], edx
	mov [ebp-0x20], ecx
	mov esi, [ebp+0x8]
	movss [ebp-0x24], xmm0
	mov dword [physGlob+0xbab4], 0x0
	mov eax, [eax*4+physGlob]
	mov [esp], eax
	call ODE_WorldGetBodyCount
	mov edi, eax
	mov eax, [ebx*4+physGlob]
	mov ebx, [eax]
	test ebx, ebx
	jz _Z26Phys_DrawDebugTextForWorldjPKcPfS1_fPK15ScreenPlacement_10
_Z26Phys_DrawDebugTextForWorldjPKcPfS1_fPK15ScreenPlacement_20:
	mov [esp], ebx
	call _Z21Phys_ObjCountIfActiveP6dxBody
	mov eax, [ebx+0x4]
	mov ebx, eax
	test eax, eax
	jnz _Z26Phys_DrawDebugTextForWorldjPKcPfS1_fPK15ScreenPlacement_20
_Z26Phys_DrawDebugTextForWorldjPKcPfS1_fPK15ScreenPlacement_10:
	mov dword [esp+0x20], 0x0
	movss xmm0, dword [ebp-0x24]
	movss [esp+0x1c], xmm0
	mov dword [esp+0x18], 0x1
	mov dword [esp+0x14], 0x0
	mov ebx, colorGreen
	mov [esp+0x10], ebx
	mov eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov eax, [esi]
	mov [esp+0x8], eax
	mov edx, [ebp-0x20]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z16CG_DrawStringExtPK15ScreenPlacementffPKcPKfiifi
	movss xmm0, dword [ebp-0x24]
	addss xmm0, [esi]
	movss [esi], xmm0
	mov eax, [physGlob+0xbab4]
	mov [esp+0x4], eax
	mov dword [esp], _cstring____awake_i
	call _Z2vaPKcz
	mov dword [esp+0x20], 0x0
	movss xmm0, dword [ebp-0x24]
	movss [esp+0x1c], xmm0
	mov dword [esp+0x18], 0x1
	mov dword [esp+0x14], 0x0
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov eax, [esi]
	mov [esp+0x8], eax
	mov edx, [ebp-0x20]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z16CG_DrawStringExtPK15ScreenPlacementffPKcPKfiifi
	movss xmm0, dword [ebp-0x24]
	addss xmm0, [esi]
	movss [esi], xmm0
	sub edi, [physGlob+0xbab4]
	mov [esp+0x4], edi
	mov dword [esp], _cstring____asleep_i
	call _Z2vaPKcz
	mov dword [esp+0x20], 0x0
	movss xmm0, dword [ebp-0x24]
	movss [esp+0x1c], xmm0
	mov dword [esp+0x18], 0x1
	mov dword [esp+0x14], 0x0
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov eax, [esi]
	mov [esp+0x8], eax
	mov edx, [ebp-0x20]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z16CG_DrawStringExtPK15ScreenPlacementffPKcPKfiifi
	movss xmm0, dword [ebp-0x24]
	addss xmm0, [esi]
	movss [esi], xmm0
	mov eax, [physGlob+0xbab4]
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Phys_DoBodyOncePerRun(dxBody*)
_Z21Phys_DoBodyOncePerRunP6dxBody:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	mov edi, [ebp+0x8]
	mov [esp], edi
	call dBodyIsEnabled
	test al, al
	jnz _Z21Phys_DoBodyOncePerRunP6dxBody_10
_Z21Phys_DoBodyOncePerRunP6dxBody_90:
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21Phys_DoBodyOncePerRunP6dxBody_10:
	mov [esp], edi
	call dBodyIsEnabled
	test al, al
	jnz _Z21Phys_DoBodyOncePerRunP6dxBody_20
_Z21Phys_DoBodyOncePerRunP6dxBody_50:
	mov ebx, edi
	mov esi, 0x1
_Z21Phys_DoBodyOncePerRunP6dxBody_40:
	lea eax, [ebp-0x50]
	mov [esp+0x8], eax
	lea eax, [ebp-0x5c]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z14CM_ModelBoundsjPfS_
	movss xmm1, dword [ebx+0xe0]
	lea eax, [esi*4]
	ucomiss xmm1, [ebp+eax-0x54]
	ja _Z21Phys_DoBodyOncePerRunP6dxBody_30
	movss xmm0, dword [ebp+eax-0x60]
	ucomiss xmm0, xmm1
	ja _Z21Phys_DoBodyOncePerRunP6dxBody_30
	add esi, 0x1
	add ebx, 0x4
	cmp esi, 0x4
	jnz _Z21Phys_DoBodyOncePerRunP6dxBody_40
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21Phys_DoBodyOncePerRunP6dxBody_20:
	mov [esp], edi
	call dBodyGetData
	mov esi, eax
	mov [esp], edi
	call ODE_BodyGetFirstGeom
	mov edx, eax
	test eax, eax
	jz _Z21Phys_DoBodyOncePerRunP6dxBody_50
	lea eax, [ebp-0x2c]
	mov [esp+0x8], eax
	lea eax, [ebp-0x50]
	mov [esp+0x4], eax
	mov [esp], edx
	call ODE_GeomGetAAContainedBox
	movss xmm3, dword [ebp-0x2c]
	mov eax, [phys_csl]
	movss xmm0, dword [eax+0xc]
	addss xmm0, xmm0
	ucomiss xmm0, xmm3
	jbe _Z21Phys_DoBodyOncePerRunP6dxBody_60
	mov eax, 0xba83126f
	mov [ebp-0x38], eax
	mov [ebp-0x34], eax
	mov [ebp-0x30], eax
	mov eax, 0x3a83126f
	mov [ebp-0x44], eax
	mov [ebp-0x40], eax
	mov [ebp-0x3c], eax
	mov byte [ebp-0x89], 0x1
_Z21Phys_DoBodyOncePerRunP6dxBody_120:
	mov [esp], edi
	call dBodyGetPosition
	mov edx, [eax]
	mov [ebp-0x5c], edx
	mov edx, [eax+0x4]
	mov [ebp-0x58], edx
	movss xmm5, dword [eax+0x8]
	movss [ebp-0x54], xmm5
	lea ebx, [esi+0x10]
	movss xmm0, dword [esi+0x10]
	ucomiss xmm0, [ebp-0x5c]
	jnz _Z21Phys_DoBodyOncePerRunP6dxBody_70
	jp _Z21Phys_DoBodyOncePerRunP6dxBody_70
	movss xmm0, dword [ebx+0x4]
	ucomiss xmm0, [ebp-0x58]
	jnz _Z21Phys_DoBodyOncePerRunP6dxBody_70
	jp _Z21Phys_DoBodyOncePerRunP6dxBody_70
	ucomiss xmm5, [ebx+0x8]
	jnz _Z21Phys_DoBodyOncePerRunP6dxBody_70
	jp _Z21Phys_DoBodyOncePerRunP6dxBody_70
	mov eax, [esi+0x4c]
	test eax, eax
	jz _Z21Phys_DoBodyOncePerRunP6dxBody_70
	sub eax, 0x1
	jnz _Z21Phys_DoBodyOncePerRunP6dxBody_50
_Z21Phys_DoBodyOncePerRunP6dxBody_70:
	mov dword [esp+0x18], 0x2806c91
	mov dword [esp+0x14], 0x0
	lea eax, [ebp-0x44]
	mov [esp+0x10], eax
	lea eax, [ebp-0x38]
	mov [esp+0xc], eax
	lea eax, [ebp-0x5c]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	lea eax, [ebp-0x88]
	mov [esp], eax
	call _Z11CM_BoxTraceP7trace_tPKfS2_S2_S2_ji
	cmp byte [ebp-0x5f], 0x1
	sbb eax, eax
	not eax
	add eax, 0x2
	mov [esi+0x4c], eax
	movss xmm4, dword [ebp-0x88]
	ucomiss xmm4, [_float_1_00000000]
	jae _Z21Phys_DoBodyOncePerRunP6dxBody_50
	jp _Z21Phys_DoBodyOncePerRunP6dxBody_50
	cmp byte [ebp-0x5f], 0x0
	jnz _Z21Phys_DoBodyOncePerRunP6dxBody_50
	cmp byte [ebp-0x89], 0x0
	jnz _Z21Phys_DoBodyOncePerRunP6dxBody_80
	lea esi, [ebx+0x4]
	lea ecx, [ebx+0x8]
	movss xmm3, dword [ebp-0x5c]
	movss xmm6, dword [ebp-0x58]
	movss xmm5, dword [ebp-0x54]
_Z21Phys_DoBodyOncePerRunP6dxBody_140:
	movss xmm0, dword [ebx]
	subss xmm3, xmm0
	mulss xmm3, xmm4
	addss xmm3, xmm0
	movss [ebp-0x5c], xmm3
	movss xmm0, dword [esi]
	movaps xmm1, xmm6
	subss xmm1, xmm0
	mulss xmm1, xmm4
	addss xmm1, xmm0
	movss [ebp-0x58], xmm1
	movss xmm2, dword [ecx]
	movaps xmm0, xmm5
	subss xmm0, xmm2
	mulss xmm0, xmm4
	addss xmm0, xmm2
	movss [ebp-0x54], xmm0
	movss [esp+0xc], xmm0
	movss [esp+0x8], xmm1
	movss [esp+0x4], xmm3
	mov [esp], edi
	call dBodySetPosition
	movss xmm0, dword [_float_0_00100000]
	ucomiss xmm0, [ebp-0x88]
	jbe _Z21Phys_DoBodyOncePerRunP6dxBody_50
	xor ebx, ebx
	mov [esp+0xc], ebx
	mov [esp+0x8], ebx
	mov [esp+0x4], ebx
	mov [esp], edi
	call dBodySetLinearVel
	mov [esp+0xc], ebx
	mov [esp+0x8], ebx
	mov [esp+0x4], ebx
	mov [esp], edi
	call dBodySetAngularVel
	jmp _Z21Phys_DoBodyOncePerRunP6dxBody_50
_Z21Phys_DoBodyOncePerRunP6dxBody_30:
	mov [esp], edi
	call dBodyDisable
	jmp _Z21Phys_DoBodyOncePerRunP6dxBody_90
_Z21Phys_DoBodyOncePerRunP6dxBody_60:
	movss xmm0, dword [_float_0_20000000]
	movss xmm1, dword [ebp-0x50]
	mulss xmm1, xmm0
	movss [ebp-0x38], xmm1
	movss xmm1, dword [ebp-0x4c]
	mulss xmm1, xmm0
	movss [ebp-0x34], xmm1
	movss xmm1, dword [ebp-0x48]
	mulss xmm1, xmm0
	movss [ebp-0x30], xmm1
	movaps xmm1, xmm3
	mulss xmm1, xmm0
	movss [ebp-0x44], xmm1
	movss xmm1, dword [ebp-0x28]
	mulss xmm1, xmm0
	movss [ebp-0x40], xmm1
	mulss xmm0, [ebp-0x24]
	movss [ebp-0x3c], xmm0
	movss xmm2, dword [eax+0xc]
	movaps xmm1, xmm3
	subss xmm1, [ebp-0x44]
	movaps xmm0, xmm2
	addss xmm0, xmm2
	ucomiss xmm0, xmm1
	jbe _Z21Phys_DoBodyOncePerRunP6dxBody_100
	movaps xmm1, xmm2
	mulss xmm1, [_float__2_00000000]
	addss xmm1, xmm3
	movss xmm2, dword [_float_0_00100000]
	movaps xmm0, xmm1
	subss xmm0, xmm2
	ucomiss xmm0, [_float_0_00000000]
	jb _Z21Phys_DoBodyOncePerRunP6dxBody_110
	movaps xmm0, xmm1
	xorps xmm0, [_data16_80000000]
_Z21Phys_DoBodyOncePerRunP6dxBody_130:
	movss [ebp-0x44], xmm1
	movss [ebp-0x40], xmm1
	movss [ebp-0x3c], xmm1
	movss [ebp-0x38], xmm0
	movss [ebp-0x34], xmm0
	movss [ebp-0x30], xmm0
_Z21Phys_DoBodyOncePerRunP6dxBody_100:
	mov byte [ebp-0x89], 0x0
	jmp _Z21Phys_DoBodyOncePerRunP6dxBody_120
_Z21Phys_DoBodyOncePerRunP6dxBody_110:
	movaps xmm1, xmm2
	movss xmm0, dword [_float__0_00100000]
	jmp _Z21Phys_DoBodyOncePerRunP6dxBody_130
_Z21Phys_DoBodyOncePerRunP6dxBody_80:
	movss xmm3, dword [ebp-0x5c]
	movaps xmm0, xmm3
	subss xmm0, [ebx]
	lea esi, [ebx+0x4]
	movss xmm6, dword [ebp-0x58]
	movaps xmm2, xmm6
	subss xmm2, [ebx+0x4]
	lea ecx, [ebx+0x8]
	movss xmm5, dword [ebp-0x54]
	movaps xmm1, xmm5
	subss xmm1, [ebx+0x8]
	mulss xmm0, xmm0
	mulss xmm2, xmm2
	addss xmm0, xmm2
	mulss xmm1, xmm1
	addss xmm0, xmm1
	movss [ebp-0x1c], xmm0
	mov edx, [ebp-0x1c]
	sar edx, 1
	mov eax, 0x5f3759df
	sub eax, edx
	mov [ebp-0x20], eax
	movss xmm2, dword [ebp-0x20]
	mulss xmm0, [_float_0_50000000]
	mulss xmm0, xmm2
	mulss xmm0, xmm2
	movss xmm1, dword [_float_1_50000000]
	subss xmm1, xmm0
	mulss xmm1, xmm2
	movss [ebp-0x1c], xmm1
	movss xmm0, dword [_float__0_50000000]
	mulss xmm0, [ebp-0x2c]
	mulss xmm1, xmm0
	addss xmm4, xmm1
	pxor xmm0, xmm0
	movaps xmm1, xmm0
	subss xmm1, xmm4
	movaps xmm2, xmm0
	cmpss xmm2, xmm1, 0x6
	andps xmm4, xmm2
	orps xmm4, xmm0
	movss [ebp-0x88], xmm4
	jmp _Z21Phys_DoBodyOncePerRunP6dxBody_140
	nop


;Phys_BodyGrabSnapshot(dxBody*)
_Z21Phys_BodyGrabSnapshotP6dxBody:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0x8]
	mov [esp], esi
	call dBodyGetData
	mov ebx, eax
	lea edi, [eax+0x10]
	mov [esp], esi
	call dBodyGetPosition
	mov edx, [eax]
	mov [ebx+0x10], edx
	mov edx, [eax+0x4]
	mov [edi+0x4], edx
	mov eax, [eax+0x8]
	mov [edi+0x8], eax
	add ebx, 0x1c
	mov [ebp-0x1c], ebx
	mov [esp], esi
	call dBodyGetRotation
	mov edi, eax
	xor ebx, ebx
_Z21Phys_BodyGrabSnapshotP6dxBody_20:
	mov ecx, edi
	mov eax, [ebp-0x1c]
	lea edx, [eax+ebx*4]
	mov esi, 0x3
_Z21Phys_BodyGrabSnapshotP6dxBody_10:
	mov eax, [ecx]
	mov [edx], eax
	add ecx, 0x4
	add edx, 0xc
	sub esi, 0x1
	jnz _Z21Phys_BodyGrabSnapshotP6dxBody_10
	add ebx, 0x1
	add edi, 0x10
	cmp ebx, 0x3
	jnz _Z21Phys_BodyGrabSnapshotP6dxBody_20
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Phys_BodyAddGeomAndSetMass(PhysWorld, dxBody*, float, GeomState const*, float const*)
_Z26Phys_BodyAddGeomAndSetMass9PhysWorldP6dxBodyfPK9GeomStatePKf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	mov ebx, eax
	mov edi, edx
	mov esi, ecx
	lea eax, [ebp-0x5c]
	mov [esp], eax
	movss [ebp-0x88], xmm0
	call dMassSetZero
	mov [esp], edi
	call dBodyGetData
	mov edx, [ebp+0x8]
	mov eax, edi
	call _Z29Phys_AdjustForNewCenterOfMassP6dxBodyPKf
	cmp dword [esi], 0x5
	movss xmm7, dword [ebp-0x88]
	ja _Z26Phys_BodyAddGeomAndSetMass9PhysWorldP6dxBodyfPK9GeomStatePKf_10
	mov eax, [esi]
	jmp dword [eax*4+_Z26Phys_BodyAddGeomAndSetMass9PhysWorldP6dxBodyfPK9GeomStatePKf_jumptab_0]
_Z26Phys_BodyAddGeomAndSetMass9PhysWorldP6dxBodyfPK9GeomStatePKf_60:
	mov dword [esp+0x8], 0x3f800000
	movss [esp+0x4], xmm7
	lea eax, [ebp-0x5c]
	mov [esp], eax
	call dMassSetSphereTotal
_Z26Phys_BodyAddGeomAndSetMass9PhysWorldP6dxBodyfPK9GeomStatePKf_10:
	mov dword [ebp-0x6c], 0x0
_Z26Phys_BodyAddGeomAndSetMass9PhysWorldP6dxBodyfPK9GeomStatePKf_40:
	cmp byte [esi+0x4], 0x0
	jz _Z26Phys_BodyAddGeomAndSetMass9PhysWorldP6dxBodyfPK9GeomStatePKf_20
	mov ecx, [ebp-0x6c]
	test ecx, ecx
	jz _Z26Phys_BodyAddGeomAndSetMass9PhysWorldP6dxBodyfPK9GeomStatePKf_20
	mov [esp+0x4], edi
	mov eax, [ebx*4+physGlob+0x270]
	mov [esp], eax
	call dCreateGeomTransform
	mov ebx, eax
	test eax, eax
	jz _Z26Phys_BodyAddGeomAndSetMass9PhysWorldP6dxBodyfPK9GeomStatePKf_30
	mov eax, [ebp-0x6c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call dGeomTransformSetGeom
	lea eax, [esi+0x8]
	mov [esp+0x8], eax
	mov eax, vec3_origin
	mov [esp+0x4], eax
	mov [esp], ebx
	call ODE_GeomTransformSetRotation
_Z26Phys_BodyAddGeomAndSetMass9PhysWorldP6dxBodyfPK9GeomStatePKf_20:
	lea eax, [ebp-0x5c]
	mov [esp+0x4], eax
	mov [esp], edi
	call dBodySetMass
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26Phys_BodyAddGeomAndSetMass9PhysWorldP6dxBodyfPK9GeomStatePKf_30:
	mov dword [esp+0x4], _cstring_maximum_number_o
	mov dword [esp], 0x14
	call _Z14Com_PrintErroriPKcz
	lea eax, [ebp-0x5c]
	mov [esp+0x4], eax
	mov [esp], edi
	call dBodySetMass
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26Phys_BodyAddGeomAndSetMass9PhysWorldP6dxBodyfPK9GeomStatePKf_100:
	mov eax, [esi+0x34]
	mov [esp+0x10], eax
	mov eax, [esi+0x30]
	mov [esp+0xc], eax
	mov eax, [esi+0x2c]
	mov [esp+0x8], eax
	movss [esp+0x4], xmm7
	lea eax, [ebp-0x5c]
	mov [esp], eax
	call dMassSetCylinderTotal
	lea eax, [esi+0x2c]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov eax, [ebx*4+physGlob+0x270]
	mov [esp], eax
	call _Z23Phys_CreateCylinderGeomP7dxSpaceP6dxBodyPK17GeomStateCylinder
	mov [ebp-0x6c], eax
	test eax, eax
	jnz _Z26Phys_BodyAddGeomAndSetMass9PhysWorldP6dxBodyfPK9GeomStatePKf_40
_Z26Phys_BodyAddGeomAndSetMass9PhysWorldP6dxBodyfPK9GeomStatePKf_50:
	mov dword [esp+0x4], _cstring_maximum_number_o
	mov dword [esp], 0x14
	call _Z16Com_PrintWarningiPKcz
	jmp _Z26Phys_BodyAddGeomAndSetMass9PhysWorldP6dxBodyfPK9GeomStatePKf_40
_Z26Phys_BodyAddGeomAndSetMass9PhysWorldP6dxBodyfPK9GeomStatePKf_90:
	lea eax, [esi+0x3c]
	lea edx, [esi+0x30]
	movaps xmm6, xmm7
	mulss xmm6, [eax+0x8]
	movaps xmm0, xmm7
	mulss xmm0, [eax+0x4]
	movss [esp+0x24], xmm0
	movaps xmm1, xmm7
	mulss xmm1, [esi+0x3c]
	movss [esp+0x20], xmm1
	movss xmm0, dword [edx+0x8]
	pxor xmm5, xmm5
	movss xmm4, dword [_float_100_00000000]
	movaps xmm3, xmm5
	cmpss xmm3, xmm0, 0x1
	andps xmm0, xmm3
	andnps xmm3, xmm4
	orps xmm3, xmm0
	mulss xmm3, xmm7
	movss xmm0, dword [edx+0x4]
	movaps xmm2, xmm5
	cmpss xmm2, xmm0, 0x1
	andps xmm0, xmm2
	andnps xmm2, xmm4
	orps xmm2, xmm0
	mulss xmm2, xmm7
	movss xmm1, dword [esi+0x30]
	movaps xmm0, xmm5
	cmpss xmm0, xmm1, 0x1
	andps xmm1, xmm0
	andnps xmm0, xmm4
	orps xmm0, xmm1
	movss [esp+0x28], xmm6
	movss [esp+0x1c], xmm3
	movss [esp+0x18], xmm2
	mulss xmm0, xmm7
	movss [esp+0x14], xmm0
	movss [esp+0x10], xmm5
	movss [esp+0xc], xmm5
	movss [esp+0x8], xmm5
	movss [esp+0x4], xmm7
	lea eax, [ebp-0x5c]
	mov [esp], eax
	call dMassSetParameters
	mov eax, [ebp+0x8]
	mov [esp+0xc], eax
	mov eax, [esi+0x2c]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov eax, [ebx*4+physGlob+0x270]
	mov [esp], eax
	call _Z20Phys_CreateBrushGeomP7dxSpaceP6dxBodyPK8cbrush_tPKf
	mov [ebp-0x6c], eax
	test eax, eax
	jnz _Z26Phys_BodyAddGeomAndSetMass9PhysWorldP6dxBodyfPK9GeomStatePKf_40
	jmp _Z26Phys_BodyAddGeomAndSetMass9PhysWorldP6dxBodyfPK9GeomStatePKf_50
_Z26Phys_BodyAddGeomAndSetMass9PhysWorldP6dxBodyfPK9GeomStatePKf_110:
	mov eax, [esi+0x34]
	mov [esp+0x10], eax
	mov eax, [esi+0x30]
	mov [esp+0xc], eax
	mov eax, [esi+0x2c]
	mov [esp+0x8], eax
	movss [esp+0x4], xmm7
	lea eax, [ebp-0x5c]
	mov [esp], eax
	call dMassSetCappedCylinderTotal
	lea eax, [esi+0x2c]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov eax, [ebx*4+physGlob+0x270]
	mov [esp], eax
	call _Z22Phys_CreateCapsuleGeomP7dxSpaceP6dxBodyPK17GeomStateCylinder
	mov [ebp-0x6c], eax
	test eax, eax
	jnz _Z26Phys_BodyAddGeomAndSetMass9PhysWorldP6dxBodyfPK9GeomStatePKf_40
	jmp _Z26Phys_BodyAddGeomAndSetMass9PhysWorldP6dxBodyfPK9GeomStatePKf_50
_Z26Phys_BodyAddGeomAndSetMass9PhysWorldP6dxBodyfPK9GeomStatePKf_80:
	lea eax, [esi+0x3c]
	lea edx, [esi+0x30]
	movaps xmm6, xmm7
	mulss xmm6, [eax+0x8]
	movaps xmm0, xmm7
	mulss xmm0, [eax+0x4]
	movss [esp+0x24], xmm0
	movaps xmm1, xmm7
	mulss xmm1, [esi+0x3c]
	movss [esp+0x20], xmm1
	movss xmm0, dword [edx+0x8]
	pxor xmm5, xmm5
	movss xmm4, dword [_float_100_00000000]
	movaps xmm3, xmm5
	cmpss xmm3, xmm0, 0x1
	andps xmm0, xmm3
	andnps xmm3, xmm4
	orps xmm3, xmm0
	mulss xmm3, xmm7
	movss xmm0, dword [edx+0x4]
	movaps xmm2, xmm5
	cmpss xmm2, xmm0, 0x1
	andps xmm0, xmm2
	andnps xmm2, xmm4
	orps xmm2, xmm0
	mulss xmm2, xmm7
	movss xmm1, dword [esi+0x30]
	movaps xmm0, xmm5
	cmpss xmm0, xmm1, 0x1
	andps xmm1, xmm0
	andnps xmm0, xmm4
	orps xmm0, xmm1
	movss [esp+0x28], xmm6
	movss [esp+0x1c], xmm3
	movss [esp+0x18], xmm2
	mulss xmm0, xmm7
	movss [esp+0x14], xmm0
	movss [esp+0x10], xmm5
	movss [esp+0xc], xmm5
	movss [esp+0x8], xmm5
	movss [esp+0x4], xmm7
	lea eax, [ebp-0x5c]
	mov [esp], eax
	call dMassSetParameters
	mov eax, [ebp+0x8]
	mov [esp+0xc], eax
	movzx eax, word [esi+0x2c]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov eax, [ebx*4+physGlob+0x270]
	mov [esp], eax
	call _Z25Phys_CreateBrushmodelGeomP7dxSpaceP6dxBodytPKf
	mov [ebp-0x6c], eax
	test eax, eax
	jnz _Z26Phys_BodyAddGeomAndSetMass9PhysWorldP6dxBodyfPK9GeomStatePKf_40
	jmp _Z26Phys_BodyAddGeomAndSetMass9PhysWorldP6dxBodyfPK9GeomStatePKf_50
_Z26Phys_BodyAddGeomAndSetMass9PhysWorldP6dxBodyfPK9GeomStatePKf_70:
	mov eax, [esi+0x34]
	mov [esp+0x10], eax
	mov eax, [esi+0x30]
	mov [esp+0xc], eax
	mov eax, [esi+0x2c]
	mov [esp+0x8], eax
	movss [esp+0x4], xmm7
	lea eax, [ebp-0x5c]
	mov [esp], eax
	call dMassSetBoxTotal
	mov eax, [esi+0x34]
	mov [esp+0x10], eax
	mov eax, [esi+0x30]
	mov [esp+0xc], eax
	mov eax, [esi+0x2c]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov eax, [ebx*4+physGlob+0x270]
	mov [esp], eax
	call dCreateBox
	mov [ebp-0x6c], eax
	test eax, eax
	jnz _Z26Phys_BodyAddGeomAndSetMass9PhysWorldP6dxBodyfPK9GeomStatePKf_40
	jmp _Z26Phys_BodyAddGeomAndSetMass9PhysWorldP6dxBodyfPK9GeomStatePKf_50
	nop
	
	
_Z26Phys_BodyAddGeomAndSetMass9PhysWorldP6dxBodyfPK9GeomStatePKf_jumptab_0:
	dd _Z26Phys_BodyAddGeomAndSetMass9PhysWorldP6dxBodyfPK9GeomStatePKf_60
	dd _Z26Phys_BodyAddGeomAndSetMass9PhysWorldP6dxBodyfPK9GeomStatePKf_70
	dd _Z26Phys_BodyAddGeomAndSetMass9PhysWorldP6dxBodyfPK9GeomStatePKf_80
	dd _Z26Phys_BodyAddGeomAndSetMass9PhysWorldP6dxBodyfPK9GeomStatePKf_90
	dd _Z26Phys_BodyAddGeomAndSetMass9PhysWorldP6dxBodyfPK9GeomStatePKf_100
	dd _Z26Phys_BodyAddGeomAndSetMass9PhysWorldP6dxBodyfPK9GeomStatePKf_110


;Phys_CreateBodyFromState(PhysWorld, BodyState const*)
_Z24Phys_CreateBodyFromState9PhysWorldPK9BodyState:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xcc
	mov [ebp-0xb8], eax
	mov [ebp-0xbc], edx
	mov eax, [phys_autoDisableLinear]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov edx, [ebp-0xb8]
	mov eax, [edx*4+physGlob]
	mov [esp], eax
	call dWorldSetAutoDisableLinearThreshold
	mov eax, [phys_autoDisableAngular]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov ecx, [ebp-0xb8]
	mov eax, [ecx*4+physGlob]
	mov [esp], eax
	call dWorldSetAutoDisableAngularThreshold
	mov eax, [phys_autoDisableTime]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov edx, [ebp-0xb8]
	mov eax, [edx*4+physGlob]
	mov [esp], eax
	call dWorldSetAutoDisableTime
	mov ecx, [ebp-0xb8]
	mov eax, [ecx*4+physGlob]
	mov [esp], eax
	call dBodyCreate
	mov [ebp-0xb4], eax
	test eax, eax
	jz _Z24Phys_CreateBodyFromState9PhysWorldPK9BodyState_10
	cmp dword [ebp-0xb8], 0x2
	jz _Z24Phys_CreateBodyFromState9PhysWorldPK9BodyState_20
_Z24Phys_CreateBodyFromState9PhysWorldPK9BodyState_70:
	mov dword [esp], 0xb
	call _Z24Sys_EnterCriticalSection15CriticalSection
	mov dword [esp], physGlob+0xba88
	call _Z10Pool_AllocP10pooldata_t
	mov [ebp-0xb0], eax
	mov dword [esp], 0xb
	call _Z24Sys_LeaveCriticalSection15CriticalSection
	mov dword [esp+0x8], 0x5c
	mov dword [esp+0x4], 0x0
	mov edx, [ebp-0xb0]
	mov [esp], edx
	call memset
	mov ecx, [ebp-0xb0]
	mov [esp+0x4], ecx
	mov eax, [ebp-0xb4]
	mov [esp], eax
	call dBodySetData
	mov edx, [ebp-0xbc]
	mov eax, [edx+0x8]
	mov [esp+0xc], eax
	mov eax, [edx+0x4]
	mov [esp+0x8], eax
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp-0xb4]
	mov [esp], ecx
	call dBodySetPosition
	mov edx, [ebp-0xbc]
	mov eax, [edx+0x38]
	mov [esp+0xc], eax
	mov eax, [edx+0x34]
	mov [esp+0x8], eax
	mov eax, [edx+0x30]
	mov [esp+0x4], eax
	mov ecx, [ebp-0xb4]
	mov [esp], ecx
	call dBodySetLinearVel
	mov edx, [ebp-0xbc]
	mov eax, [edx+0x44]
	mov [esp+0xc], eax
	mov eax, [edx+0x40]
	mov [esp+0x8], eax
	mov eax, [edx+0x3c]
	mov [esp+0x4], eax
	mov ecx, [ebp-0xb4]
	mov [esp], ecx
	call dBodySetAngularVel
	mov eax, [ebp-0xbc]
	add eax, 0xc
	mov [ebp-0xac], eax
	xor edi, edi
	xor esi, esi
_Z24Phys_CreateBodyFromState9PhysWorldPK9BodyState_50:
	mov ecx, esi
	lea edx, [eax+edi*4]
	xor ebx, ebx
_Z24Phys_CreateBodyFromState9PhysWorldPK9BodyState_30:
	mov eax, [edx]
	mov [ebp+ecx-0x54], eax
	add ebx, 0x1
	add ecx, 0x4
	add edx, 0xc
	cmp ebx, 0x3
	jnz _Z24Phys_CreateBodyFromState9PhysWorldPK9BodyState_30
	mov dword [esi+ebp-0x48], 0x0
	add edi, 0x1
	add esi, 0x10
	cmp edi, 0x3
	jz _Z24Phys_CreateBodyFromState9PhysWorldPK9BodyState_40
	mov eax, [ebp-0xac]
	jmp _Z24Phys_CreateBodyFromState9PhysWorldPK9BodyState_50
_Z24Phys_CreateBodyFromState9PhysWorldPK9BodyState_40:
	lea edx, [ebp-0x54]
	mov [esp+0x4], edx
	mov ecx, [ebp-0xb4]
	mov [esp], ecx
	call dBodySetRotation
	movss xmm2, dword [_data16_80000000]
	mov eax, [ebp-0xbc]
	movss xmm1, dword [eax+0x48]
	movaps xmm0, xmm1
	xorps xmm0, xmm2
	movss [ebp-0x24], xmm0
	movss xmm0, dword [eax+0x4c]
	xorps xmm0, xmm2
	movss [ebp-0x20], xmm0
	movss xmm0, dword [eax+0x50]
	xorps xmm0, xmm2
	movss [ebp-0x1c], xmm0
	mov byte [ebp-0x98], 0x0
	mov dword [ebp-0x9c], 0x0
	mov edx, [ebp-0xb0]
	movss [edx], xmm1
	mov ecx, [ebp-0xbc]
	mov eax, [ecx+0x4c]
	mov [edx+0x4], eax
	mov eax, [ecx+0x50]
	mov [edx+0x8], eax
	lea ecx, [ebp-0x9c]
	mov eax, [ebp-0xbc]
	movss xmm0, dword [eax+0x54]
	lea eax, [ebp-0x24]
	mov [esp], eax
	mov edx, [ebp-0xb4]
	mov eax, [ebp-0xb8]
	call _Z26Phys_BodyAddGeomAndSetMass9PhysWorldP6dxBodyfPK9GeomStatePKf
	mov ecx, [ebp-0xb4]
	mov edx, [ebp-0xb0]
	mov [edx+0xc], ecx
	mov edx, [ebp-0xb0]
	add edx, 0x10
	mov ecx, [ebp-0xbc]
	mov eax, [ecx]
	mov ecx, [ebp-0xb0]
	mov [ecx+0x10], eax
	mov ecx, [ebp-0xbc]
	mov eax, [ecx+0x4]
	mov [edx+0x4], eax
	mov eax, [ecx+0x8]
	mov [edx+0x8], eax
	mov edx, [ebp-0xb0]
	add edx, 0x1c
	mov ecx, [ebp-0xac]
	mov eax, [ecx]
	mov ecx, [ebp-0xb0]
	mov [ecx+0x1c], eax
	mov ecx, [ebp-0xac]
	mov eax, [ecx+0x4]
	mov [edx+0x4], eax
	mov eax, [ecx+0x8]
	mov [edx+0x8], eax
	mov eax, [ecx+0xc]
	mov [edx+0xc], eax
	mov eax, [ecx+0x10]
	mov [edx+0x10], eax
	mov eax, [ecx+0x14]
	mov [edx+0x14], eax
	mov eax, [ecx+0x18]
	mov [edx+0x18], eax
	mov eax, [ecx+0x1c]
	mov [edx+0x1c], eax
	mov eax, [ecx+0x20]
	mov [edx+0x20], eax
	mov edx, [ebp-0xbc]
	mov eax, [edx+0x5c]
	mov ecx, [ebp-0xb0]
	mov [ecx+0x48], eax
	mov eax, [edx+0x58]
	mov [ecx+0x44], eax
	mov eax, [edx+0x60]
	mov [ecx+0x4c], eax
	mov eax, [edx+0x68]
	mov [ecx+0x40], eax
	cmp byte [edx+0x6c], 0x0
	jnz _Z24Phys_CreateBodyFromState9PhysWorldPK9BodyState_60
	mov eax, [ebp-0xb4]
	mov [esp], eax
	call dBodyDisable
_Z24Phys_CreateBodyFromState9PhysWorldPK9BodyState_60:
	mov eax, [ebp-0xb4]
	add esp, 0xcc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24Phys_CreateBodyFromState9PhysWorldPK9BodyState_20:
	mov dword [esp+0x4], 0x1
	mov eax, [ebp-0xb4]
	mov [esp], eax
	call dBodySetFiniteRotationMode
	jmp _Z24Phys_CreateBodyFromState9PhysWorldPK9BodyState_70
_Z24Phys_CreateBodyFromState9PhysWorldPK9BodyState_10:
	mov dword [esp+0x8], 0x200
	mov dword [esp+0x4], _cstring_maximum_number_o1
	mov dword [esp], 0x14
	call _Z16Com_PrintWarningiPKcz
	jmp _Z24Phys_CreateBodyFromState9PhysWorldPK9BodyState_60
	nop


;Phys_NearCallback
Phys_NearCallback:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x309c
	mov edi, [ebp+0x10]
	mov eax, [ebp+0x8]
	mov eax, [eax+0x4]
	mov [ebp-0x3060], eax
	mov ebx, [ebp+0xc]
	mov [esp], ebx
	call dGeomGetBody
	mov esi, eax
	mov [esp], edi
	call dGeomGetBody
	mov ebx, eax
	test esi, esi
	jz Phys_NearCallback_10
	test eax, eax
	jz Phys_NearCallback_10
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov [esp], esi
	call dAreConnectedExcluding
	test eax, eax
	jnz Phys_NearCallback_20
Phys_NearCallback_10:
	mov dword [esp+0x10], 0x30
	lea eax, [ebp-0x1848]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], edi
	mov eax, [ebp+0xc]
	mov [esp], eax
	call dCollide
	mov [ebp-0x48], eax
	test esi, esi
	jz Phys_NearCallback_30
	xor edi, edi
	test ebx, ebx
	cmovz edi, esi
Phys_NearCallback_150:
	test eax, eax
	jle Phys_NearCallback_40
	test esi, esi
	jz Phys_NearCallback_50
	mov [esp], esi
	call dBodyGetData
	mov [ebp-0x305c], eax
	movss xmm4, dword [eax+0x48]
	movss xmm2, dword [_float_1_00000000]
	movaps xmm0, xmm2
	subss xmm0, xmm4
	pxor xmm3, xmm3
	movaps xmm1, xmm3
	cmpss xmm1, xmm0, 0x2
	movaps xmm0, xmm1
	movaps xmm1, xmm4
	andps xmm1, xmm0
	movaps xmm4, xmm0
	andnps xmm4, xmm2
	orps xmm4, xmm1
	addss xmm3, [eax+0x44]
	test ebx, ebx
	jz Phys_NearCallback_60
Phys_NearCallback_100:
	mov [esp], ebx
	movss [ebp-0x3078], xmm3
	movss [ebp-0x3088], xmm4
	call dBodyGetData
	mov [ebp-0x305c], eax
	movss xmm2, dword [eax+0x48]
	movss xmm4, dword [ebp-0x3088]
	movaps xmm0, xmm4
	subss xmm0, xmm2
	pxor xmm1, xmm1
	cmpss xmm1, xmm0, 0x2
	movaps xmm0, xmm2
	andps xmm0, xmm1
	movaps xmm2, xmm1
	andnps xmm2, xmm4
	orps xmm2, xmm0
	movss xmm3, dword [ebp-0x3078]
	addss xmm3, [eax+0x44]
	mov dword [ebp-0x44], 0x301c
	cmp dword [ebp-0x3060], 0x2
	jz Phys_NearCallback_70
Phys_NearCallback_110:
	mov eax, [phys_contact_cfm]
	mov eax, [eax+0xc]
	mov [ebp-0x2c], eax
	cmp dword [ebp-0x3060], 0x2
	jz Phys_NearCallback_80
Phys_NearCallback_120:
	mov eax, [phys_contact_erp]
	mov eax, [eax+0xc]
Phys_NearCallback_130:
	mov [ebp-0x30], eax
	mov eax, [phys_frictionScale]
	mulss xmm3, [eax+0xc]
	movss [ebp-0x40], xmm3
	mov dword [ebp-0x3c], 0x0
	movss [ebp-0x38], xmm2
	mov dword [ebp-0x34], 0x3dcccccd
	cmp dword [ebp-0x48], 0x4
	jg Phys_NearCallback_90
	mov eax, [ebp-0x3060]
	mov [esp+0x10], eax
	lea eax, [ebp-0x44]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	lea ebx, [ebp-0x1848]
Phys_NearCallback_140:
	mov [esp], ebx
	call _Z30Phys_CreateJointForEachContactP11ContactListP6dxBodyS2_PK18dSurfaceParameters9PhysWorld
	mov eax, [ebp-0x305c]
	mov ecx, [eax+0x40]
	test edi, edi
	cmovz edi, esi
	mov [esp], ebx
	mov edx, edi
	mov ebx, [ebp+0x8]
	mov eax, [ebx]
	call _Z23Phys_PlayCollisionSoundiP6dxBodyiP11ContactList
Phys_NearCallback_20:
	add esp, 0x309c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Phys_NearCallback_50:
	mov dword [ebp-0x305c], 0x0
	pxor xmm3, xmm3
	movss xmm4, dword [_float_1_00000000]
	test ebx, ebx
	jnz Phys_NearCallback_100
Phys_NearCallback_60:
	movaps xmm2, xmm4
	mov dword [ebp-0x44], 0x301c
	cmp dword [ebp-0x3060], 0x2
	jnz Phys_NearCallback_110
Phys_NearCallback_70:
	mov eax, [phys_contact_cfm_ragdoll]
	mov eax, [eax+0xc]
	mov [ebp-0x2c], eax
	cmp dword [ebp-0x3060], 0x2
	jnz Phys_NearCallback_120
Phys_NearCallback_80:
	mov eax, [phys_contact_erp_ragdoll]
	mov eax, [eax+0xc]
	jmp Phys_NearCallback_130
Phys_NearCallback_90:
	lea eax, [ebp-0x304c]
	mov [esp+0x8], eax
	lea eax, [ebp-0x1848]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z19Phys_ReduceContactsP6dxBodyPK11ContactListPS1_
	mov eax, [ebp-0x3060]
	mov [esp+0x10], eax
	lea eax, [ebp-0x44]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	lea ebx, [ebp-0x304c]
	jmp Phys_NearCallback_140
Phys_NearCallback_40:
	test edi, edi
	jz Phys_NearCallback_20
	mov [esp], edi
	call dBodyGetData
	mov dword [eax+0x4c], 0x2
	add esp, 0x309c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Phys_NearCallback_30:
	mov edi, ebx
	jmp Phys_NearCallback_150


;Phys_ObjLoad(PhysWorld, MemoryFile*)
_Z12Phys_ObjLoad9PhysWorldP10MemoryFile:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x84
	lea ebx, [ebp-0x78]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x70
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z16MemFile_ReadDataP10MemoryFileiPv
	mov edx, ebx
	mov eax, [ebp+0x8]
	call _Z24Phys_CreateBodyFromState9PhysWorldPK9BodyState
	add esp, 0x84
	pop ebx
	pop ebp
	ret
	nop


;Phys_ObjSave(int, MemoryFile*)
_Z12Phys_ObjSaveiP10MemoryFile:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xec
	lea eax, [ebp-0x5c]
	mov [esp], eax
	call dMassSetZero
	mov edx, [ebp+0x8]
	mov [esp], edx
	call dBodyGetData
	mov [ebp-0xe0], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call dBodyGetPosition
	mov edx, [eax]
	mov [ebp-0xcc], edx
	mov edx, [eax+0x4]
	mov [ebp-0xc8], edx
	mov eax, [eax+0x8]
	mov [ebp-0xc4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call dBodyGetRotation
	mov esi, eax
	mov dword [ebp-0xdc], 0x0
	lea edi, [ebp-0xcc]
_Z12Phys_ObjSaveiP10MemoryFile_20:
	mov ecx, esi
	lea edx, [edi+0xc]
	mov ebx, 0x3
_Z12Phys_ObjSaveiP10MemoryFile_10:
	mov eax, [ecx]
	mov [edx], eax
	add ecx, 0x4
	add edx, 0xc
	sub ebx, 0x1
	jnz _Z12Phys_ObjSaveiP10MemoryFile_10
	add dword [ebp-0xdc], 0x1
	add edi, 0x4
	add esi, 0x10
	cmp dword [ebp-0xdc], 0x3
	jnz _Z12Phys_ObjSaveiP10MemoryFile_20
	mov eax, [ebp+0x8]
	mov [esp], eax
	call dBodyGetLinearVel
	mov edx, [eax]
	mov [ebp-0x9c], edx
	mov edx, [eax+0x4]
	mov [ebp-0x98], edx
	mov eax, [eax+0x8]
	mov [ebp-0x94], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call dBodyGetAngularVel
	mov edx, [eax]
	mov [ebp-0x90], edx
	mov edx, [eax+0x4]
	mov [ebp-0x8c], edx
	mov eax, [eax+0x8]
	mov [ebp-0x88], eax
	mov edx, [ebp-0xe0]
	mov eax, [edx]
	mov [ebp-0x84], eax
	mov eax, [edx+0x4]
	mov [ebp-0x80], eax
	mov eax, [edx+0x8]
	mov [ebp-0x7c], eax
	lea eax, [ebp-0x5c]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call dBodyGetMass
	mov eax, [ebp-0x5c]
	mov [ebp-0x78], eax
	mov edx, [ebp-0xe0]
	mov eax, [edx+0x48]
	mov [ebp-0x70], eax
	mov eax, [edx+0x44]
	mov [ebp-0x74], eax
	mov eax, [edx+0x4c]
	mov [ebp-0x6c], eax
	mov eax, [edx+0x40]
	mov [ebp-0x64], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call dBodyIsEnabled
	mov [ebp-0x60], al
	lea edx, [ebp-0xcc]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x70
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z17MemFile_WriteDataP10MemoryFileiPKv
	add esp, 0xec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Phys_Shutdown()
_Z13Phys_Shutdownv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	cmp byte [physInited], 0x0
	jnz _Z13Phys_Shutdownv_10
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z13Phys_Shutdownv_10:
	mov dword [esp], _cstring_phys_stop
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_phys_go
	call _Z17Cmd_RemoveCommandPKc
	mov ebx, physGlob+0x27c
_Z13Phys_Shutdownv_50:
	mov eax, [ebx]
	test eax, eax
	jz _Z13Phys_Shutdownv_20
	mov [esp], eax
	call dJointGroupDestroy
	mov dword [ebx], 0x0
_Z13Phys_Shutdownv_20:
	mov eax, [ebx-0xc]
	test eax, eax
	jz _Z13Phys_Shutdownv_30
	mov [esp], eax
	call dSpaceDestroy
	mov dword [ebx-0xc], 0x0
_Z13Phys_Shutdownv_30:
	mov eax, [ebx-0x27c]
	test eax, eax
	jz _Z13Phys_Shutdownv_40
	mov [esp], eax
	call dWorldDestroy
	mov dword [ebx-0x27c], 0x0
_Z13Phys_Shutdownv_40:
	add ebx, 0x4
	cmp ebx, physGlob+0x288
	jnz _Z13Phys_Shutdownv_50
	call dCloseODE
	mov dword [physGlob+0xba90], 0x0
	mov byte [physInited], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	add [eax], al


;Phys_ObjCreate(PhysWorld, float const*, float const*, float const*, PhysPreset const*)
_Z14Phys_ObjCreate9PhysWorldPKfS1_S1_PK10PhysPreset:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x54
	lea ebx, [ebp-0x2c]
	mov [esp+0x4], ebx
	mov eax, [ebp+0x10]
	mov [esp], eax
	call _Z10QuatToAxisPKfPA3_f
	mov eax, [ebp+0x18]
	mov [esp+0x10], eax
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z18Phys_ObjCreateAxis9PhysWorldPKfPA3_S0_S1_PK10PhysPreset
	add esp, 0x54
	pop ebx
	pop ebp
	ret
	nop


;Phys_RunToTime(int, PhysWorld, int)
_Z14Phys_RunToTimei9PhysWorldi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edx, [ebp+0xc]
	lea eax, [edx+edx*2]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	lea esi, [eax*4]
	lea ebx, [esi+physGlob]
	lea edi, [ebx+0xc]
	mov dword [esp+0x4], _cstring_phys_runtotime
	mov dword [esp], 0xffffffff
	call _Z18PIXBeginNamedEventiPKcz
	mov ecx, [ebx+0xc]
	cmp ecx, [ebp+0x10]
	jle _Z14Phys_RunToTimei9PhysWorldi_10
	mov edx, [edi+0x4]
	cmp ecx, edx
	jl _Z14Phys_RunToTimei9PhysWorldi_20
_Z14Phys_RunToTimei9PhysWorldi_270:
	mov edx, [ebp+0xc]
	lea eax, [edx+edx*2]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	shl eax, 0x2
	mov edx, [ebp+0x10]
	mov [eax+physGlob+0xc], edx
	mov [eax+physGlob+0x10], edx
	mov dword [eax+physGlob+0x14], 0x3f800000
	mov edx, [edi+0x4]
	mov eax, [ebp+0xc]
	mov eax, [eax*4+physGlob]
	mov [ebp-0x34], eax
	cmp [ebp+0x10], edx
	jg _Z14Phys_RunToTimei9PhysWorldi_30
_Z14Phys_RunToTimei9PhysWorldi_50:
	mov eax, [edi]
	cmp edx, eax
	jle _Z14Phys_RunToTimei9PhysWorldi_40
_Z14Phys_RunToTimei9PhysWorldi_250:
	sub [ebp+0x10], eax
	cvtsi2ss xmm0, dword [ebp+0x10]
	sub edx, eax
	cvtsi2ss xmm1, edx
	divss xmm0, xmm1
	movss [edi+0x8], xmm0
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14Phys_RunToTimei9PhysWorldi_10:
	mov edx, [edi+0x4]
_Z14Phys_RunToTimei9PhysWorldi_260:
	mov eax, [ebp+0xc]
	mov eax, [eax*4+physGlob]
	mov [ebp-0x34], eax
	cmp [ebp+0x10], edx
	jle _Z14Phys_RunToTimei9PhysWorldi_50
_Z14Phys_RunToTimei9PhysWorldi_30:
	mov [edi], edx
	mov ebx, [eax]
	test ebx, ebx
	jz _Z14Phys_RunToTimei9PhysWorldi_60
_Z14Phys_RunToTimei9PhysWorldi_70:
	mov [esp], ebx
	call _Z21Phys_BodyGrabSnapshotP6dxBody
	mov eax, [ebx+0x4]
	mov ebx, eax
	test eax, eax
	jnz _Z14Phys_RunToTimei9PhysWorldi_70
	mov edx, [edi+0x4]
_Z14Phys_RunToTimei9PhysWorldi_60:
	mov dword [ebp-0x30], 0x2
	jmp _Z14Phys_RunToTimei9PhysWorldi_80
_Z14Phys_RunToTimei9PhysWorldi_160:
	mov eax, [physGlob+0xbaac]
	test eax, eax
	jz _Z14Phys_RunToTimei9PhysWorldi_90
	mov [esp], eax
	call dGeomEnable
_Z14Phys_RunToTimei9PhysWorldi_90:
	mov eax, [physGlob+0xbab0]
	mov [esp], eax
	call dGeomDisable
_Z14Phys_RunToTimei9PhysWorldi_180:
	mov eax, [phys_gravity]
	movss xmm0, dword [eax+0xc]
	xorps xmm0, [_data16_80000000]
	movaps xmm1, xmm0
	mulss xmm1, [physGlob+0x23ccc]
	movss [esp+0xc], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [physGlob+0x23cc8]
	movss [esp+0x8], xmm1
	mulss xmm0, [physGlob+0x23cc4]
	movss [esp+0x4], xmm0
	mov [esp], ebx
	call dWorldSetGravity
	mov eax, [phys_interBodyCollision]
	cmp byte [eax+0xc], 0x0
	jnz _Z14Phys_RunToTimei9PhysWorldi_100
_Z14Phys_RunToTimei9PhysWorldi_190:
	mov ecx, [ebp-0x1c]
	lea eax, [ecx+ecx*2]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov eax, [eax*4+physGlob+0x18]
	test eax, eax
	jz _Z14Phys_RunToTimei9PhysWorldi_110
	call eax
	mov ecx, [ebp-0x1c]
_Z14Phys_RunToTimei9PhysWorldi_110:
	mov edx, [ebp+0x8]
	mov [ebp-0x24], edx
	mov [ebp-0x20], ecx
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov eax, [physGlob+0xbab0]
	mov [esp+0x4], eax
	mov eax, [ecx*4+physGlob+0x270]
	mov [esp], eax
	call ODE_CollideSimpleSpaceWithGeomNoAABBTest
	movss xmm0, dword [ebp-0x2c]
	movss [esp+0x4], xmm0
	mov [esp], ebx
	call dWorldQuickStep
	mov byte [physGlob+0xbaa8], 0x0
	add [edi+0x4], esi
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z20dxPostProcessIslands9PhysWorld
	mov edx, [ebp+0x10]
	cmp edx, [edi+0x4]
	jle _Z14Phys_RunToTimei9PhysWorldi_120
	mov edx, [edi+0x4]
_Z14Phys_RunToTimei9PhysWorldi_80:
	mov eax, [ebp+0x10]
	sub eax, edx
	xor edx, edx
	div dword [ebp-0x30]
	mov esi, eax
	mov edx, [ebp+0xc]
	mov eax, [edx*4+g_phys_msecStep]
	cmp esi, eax
	cmovle esi, eax
	sub dword [ebp-0x30], 0x1
	test esi, esi
	js _Z14Phys_RunToTimei9PhysWorldi_130
	cvtsi2ss xmm0, esi
_Z14Phys_RunToTimei9PhysWorldi_220:
	mulss xmm0, [_float_0_00100000]
	movss [ebp-0x2c], xmm0
	mov eax, [ebp+0xc]
	mov [ebp-0x1c], eax
	mov ebx, [eax*4+physGlob]
	movss [ebx+0x50], xmm0
	mov eax, [phys_dumpcontacts]
	cmp byte [eax+0xc], 0x0
	jnz _Z14Phys_RunToTimei9PhysWorldi_140
_Z14Phys_RunToTimei9PhysWorldi_200:
	mov eax, [phys_cfm]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call dWorldSetCFM
	mov eax, [phys_erp]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call dWorldSetERP
	cmp dword [ebp-0x1c], 0x2
	jz _Z14Phys_RunToTimei9PhysWorldi_150
	mov eax, [phys_mcv]
	mov eax, [eax+0xc]
_Z14Phys_RunToTimei9PhysWorldi_210:
	mov [esp+0x4], eax
	mov [esp], ebx
	call dWorldSetContactMaxCorrectingVel
	mov eax, [phys_csl]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call dWorldSetContactSurfaceLayer
	mov eax, [phys_qsi]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call dWorldSetQuickStepNumIterations
	mov eax, [phys_autoDisableLinear]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call dWorldSetAutoDisableLinearThreshold
	mov eax, [phys_autoDisableAngular]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call dWorldSetAutoDisableAngularThreshold
	mov eax, [phys_autoDisableTime]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call dWorldSetAutoDisableTime
	mov eax, [phys_visibleTris]
	cmp byte [eax+0xc], 0x0
	jnz _Z14Phys_RunToTimei9PhysWorldi_160
	mov eax, [physGlob+0xbaac]
	test eax, eax
	jz _Z14Phys_RunToTimei9PhysWorldi_170
	mov [esp], eax
	call dGeomDisable
_Z14Phys_RunToTimei9PhysWorldi_170:
	mov eax, [physGlob+0xbab0]
	mov [esp], eax
	call dGeomEnable
	jmp _Z14Phys_RunToTimei9PhysWorldi_180
_Z14Phys_RunToTimei9PhysWorldi_100:
	mov dword [esp+0x8], Phys_NearCallback
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov eax, [ebp-0x1c]
	mov eax, [eax*4+physGlob+0x270]
	mov [esp], eax
	call dSpaceCollide
	jmp _Z14Phys_RunToTimei9PhysWorldi_190
_Z14Phys_RunToTimei9PhysWorldi_140:
	mov byte [physGlob+0xbaa8], 0x1
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call _Z12Dvar_SetBoolPK6dvar_sh
	jmp _Z14Phys_RunToTimei9PhysWorldi_200
_Z14Phys_RunToTimei9PhysWorldi_150:
	mov eax, [phys_mcv_ragdoll]
	mov eax, [eax+0xc]
	jmp _Z14Phys_RunToTimei9PhysWorldi_210
_Z14Phys_RunToTimei9PhysWorldi_130:
	mov eax, esi
	shr eax, 1
	mov edx, esi
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _Z14Phys_RunToTimei9PhysWorldi_220
_Z14Phys_RunToTimei9PhysWorldi_120:
	mov eax, [ebp-0x34]
	mov ebx, [eax]
	test ebx, ebx
	jz _Z14Phys_RunToTimei9PhysWorldi_230
_Z14Phys_RunToTimei9PhysWorldi_240:
	mov [esp], ebx
	call _Z21Phys_DoBodyOncePerRunP6dxBody
	mov eax, [ebx+0x4]
	mov ebx, eax
	test eax, eax
	jnz _Z14Phys_RunToTimei9PhysWorldi_240
_Z14Phys_RunToTimei9PhysWorldi_230:
	mov edx, [edi+0x4]
	mov eax, [edi]
	cmp edx, eax
	jg _Z14Phys_RunToTimei9PhysWorldi_250
_Z14Phys_RunToTimei9PhysWorldi_40:
	mov dword [edi+0x8], 0x3f800000
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14Phys_RunToTimei9PhysWorldi_20:
	mov eax, [ebp+0x10]
	sub eax, ecx
	cvtsi2ss xmm1, eax
	mov eax, edx
	sub eax, ecx
	cvtsi2ss xmm0, eax
	divss xmm1, xmm0
	ucomiss xmm1, [esi+physGlob+0x14]
	jae _Z14Phys_RunToTimei9PhysWorldi_260
	ucomiss xmm1, [_float_0_00000000]
	jb _Z14Phys_RunToTimei9PhysWorldi_270
	ucomiss xmm1, [_float_1_00000000]
	ja _Z14Phys_RunToTimei9PhysWorldi_270
	jp _Z14Phys_RunToTimei9PhysWorldi_270
	movss [esi+physGlob+0x14], xmm1
	jmp _Z14Phys_RunToTimei9PhysWorldi_260


;Phys_InitJoints()
_Z15Phys_InitJointsv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov dword [esp+0x8], 0x8d00
	mov dword [esp+0x4], 0x0
	mov dword [esp], physGlob+0xbabc
	call memset
	mov dword [physGlob+0xbab8], 0xffffffff
	mov edi, 0xbf
	mov ebx, 0x8c44
	mov esi, physGlob+0x146f4
_Z15Phys_InitJointsv_10:
	lea eax, [esi+0xc]
	mov dword [esp+0x8], 0xbc
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	mov eax, [physGlob+0xbab8]
	mov [ebx+physGlob+0xbabc], eax
	mov eax, ebx
	sar eax, 0x2
	imul eax, eax, 0x677d46cf
	mov [physGlob+0xbab8], eax
	sub edi, 0x1
	sub esi, 0xbc
	sub ebx, 0xbc
	cmp edi, 0xffffffff
	jnz _Z15Phys_InitJointsv_10
	mov dword [esp+0x8], 0x3c00
	mov dword [esp+0x4], 0x0
	mov dword [esp], physGlob+0x147c0
	call memset
	mov dword [physGlob+0x147bc], 0xffffffff
	mov edi, 0x9f
	mov ebx, 0x3ba0
	mov esi, physGlob+0x18350
_Z15Phys_InitJointsv_20:
	lea eax, [esi+0x10]
	mov dword [esp+0x8], 0x60
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	mov eax, [physGlob+0x147bc]
	mov [ebx+physGlob+0x147c0], eax
	mov ecx, ebx
	sar ecx, 0x5
	lea eax, [ecx+ecx*4]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	mov edx, eax
	shl edx, 0x10
	add eax, edx
	lea eax, [ecx+eax*2]
	mov [physGlob+0x147bc], eax
	sub edi, 0x1
	sub esi, 0x60
	sub ebx, 0x60
	cmp edi, 0xffffffff
	jnz _Z15Phys_InitJointsv_20
	mov dword [esp+0x8], 0xb900
	mov dword [esp+0x4], 0x0
	mov dword [esp], physGlob+0x183c4
	call memset
	mov dword [physGlob+0x183c0], 0xffffffff
	mov edi, 0x9f
	mov ebx, 0xb7d8
	mov esi, physGlob+0x23b98
_Z15Phys_InitJointsv_30:
	lea eax, [esi+0x4]
	mov dword [esp+0x8], 0x128
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	mov eax, [physGlob+0x183c0]
	mov [ebx+physGlob+0x183c4], eax
	mov edx, ebx
	sar edx, 0x3
	lea eax, [edx+edx*2]
	lea eax, [eax+eax*8]
	lea eax, [edx+eax*4]
	mov edx, eax
	shl edx, 0x6
	add eax, edx
	mov edx, eax
	shl edx, 0x12
	sub eax, edx
	mov [physGlob+0x183c0], eax
	sub edi, 0x1
	sub esi, 0x128
	sub ebx, 0x128
	cmp edi, 0xffffffff
	jnz _Z15Phys_InitJointsv_30
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Phys_ObjDestroy(PhysWorld, int)
_Z15Phys_ObjDestroy9PhysWorldi:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0xc]
	mov [esp], ebx
	call dBodyGetData
	mov esi, eax
	mov [esp], ebx
	call dBodyDestroy
	mov dword [esp], 0xb
	call _Z24Sys_EnterCriticalSection15CriticalSection
	mov dword [esp+0x4], physGlob+0xba88
	mov [esp], esi
	call _Z9Pool_FreePvP10pooldata_t
	mov dword [ebp+0x8], 0xb
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _Z24Sys_LeaveCriticalSection15CriticalSection
	nop


;Phys_CreateHinge(PhysWorld, int, int, float const*, float const*, float, float, float, float)
_Z16Phys_CreateHinge9PhysWorldiiPKfS1_ffff:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0x14]
	mov edi, [ebp+0x18]
	mov edx, [physGlob+0xbab8]
	cmp edx, 0xffffffff
	jz _Z16Phys_CreateHinge9PhysWorldiiPKfS1_ffff_10
	lea eax, [edx+edx*2]
	shl eax, 0x4
	sub eax, edx
	lea eax, [eax*4+physGlob+0xbab0]
	mov edx, [eax+0xc]
	mov [physGlob+0xbab8], edx
	add eax, 0xc
	jz _Z16Phys_CreateHinge9PhysWorldiiPKfS1_ffff_10
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov eax, [edx*4+physGlob]
	mov [esp], eax
	call dJointCreateHinge
	mov ebx, eax
	test eax, eax
	jz _Z16Phys_CreateHinge9PhysWorldiiPKfS1_ffff_20
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], ebx
	call dJointAttach
	mov eax, [esi+0x8]
	mov [esp+0xc], eax
	mov eax, [esi+0x4]
	mov [esp+0x8], eax
	mov eax, [esi]
	mov [esp+0x4], eax
	mov [esp], ebx
	call dJointSetHingeAnchor
	mov eax, [edi+0x8]
	mov [esp+0xc], eax
	mov eax, [edi+0x4]
	mov [esp+0x8], eax
	mov eax, [edi]
	mov [esp+0x4], eax
	mov [esp], ebx
	call dJointSetHingeAxis
	movss xmm0, dword [ebp+0x28]
	movss [esp+0x14], xmm0
	movss xmm0, dword [ebp+0x24]
	movss [esp+0x10], xmm0
	movss xmm0, dword [ebp+0x20]
	movss [esp+0xc], xmm0
	movss xmm0, dword [ebp+0x1c]
	movss [esp+0x8], xmm0
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z19Phys_SetHingeParams9PhysWorldiffff
_Z16Phys_CreateHinge9PhysWorldiiPKfS1_ffff_20:
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16Phys_CreateHinge9PhysWorldiiPKfS1_ffff_10:
	mov dword [esp+0x8], 0xc0
	mov dword [esp+0x4], _cstring_physics_out_of_h
	mov dword [esp], 0x14
	call _Z16Com_PrintWarningiPKcz
	xor ebx, ebx
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Phys_ObjAddForce(PhysWorld, int, float const*, float const*)
_Z16Phys_ObjAddForce9PhysWorldiPKfS1_:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0xc]
	mov edx, [ebp+0x10]
	mov ecx, [ebp+0x14]
	mov eax, [ebp+0x8]
	cvtsi2ss xmm0, dword [eax*4+g_phys_msecStep]
	movss xmm1, dword [_float_1000_00000000]
	divss xmm1, xmm0
	mov eax, [edx+0x8]
	mov [esp+0x18], eax
	mov eax, [edx+0x4]
	mov [esp+0x14], eax
	mov eax, [edx]
	mov [esp+0x10], eax
	movaps xmm0, xmm1
	mulss xmm0, [ecx+0x8]
	movss [esp+0xc], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ecx+0x4]
	movss [esp+0x8], xmm0
	mulss xmm1, [ecx]
	movss [esp+0x4], xmm1
	mov [esp], ebx
	call dBodyAddForceAtPos
	mov [ebp+0x8], ebx
	add esp, 0x24
	pop ebx
	pop ebp
	jmp dBodyEnable
	nop


;Phys_ObjIsAsleep(int)
_Z16Phys_ObjIsAsleepi:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call dBodyIsEnabled
	test al, al
	setz al
	movzx eax, al
	leave
	ret
	nop


;Phys_JointDestroy(PhysWorld, int)
_Z17Phys_JointDestroy9PhysWorldi:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0xc]
	mov [esp], ebx
	call dJointDestroy
	cmp ebx, physGlob+0xbabc
	jb _Z17Phys_JointDestroy9PhysWorldi_10
	cmp ebx, physGlob+0x147bc
	jb _Z17Phys_JointDestroy9PhysWorldi_20
_Z17Phys_JointDestroy9PhysWorldi_10:
	xor eax, eax
	test eax, eax
	jnz _Z17Phys_JointDestroy9PhysWorldi_30
_Z17Phys_JointDestroy9PhysWorldi_110:
	cmp ebx, physGlob+0x147c0
	jae _Z17Phys_JointDestroy9PhysWorldi_40
_Z17Phys_JointDestroy9PhysWorldi_90:
	xor eax, eax
	test eax, eax
	jnz _Z17Phys_JointDestroy9PhysWorldi_50
_Z17Phys_JointDestroy9PhysWorldi_100:
	cmp ebx, physGlob+0x183c4
	jb _Z17Phys_JointDestroy9PhysWorldi_60
	cmp ebx, physGlob+0x23cc4
	jb _Z17Phys_JointDestroy9PhysWorldi_70
_Z17Phys_JointDestroy9PhysWorldi_60:
	xor eax, eax
_Z17Phys_JointDestroy9PhysWorldi_120:
	test eax, eax
	jz _Z17Phys_JointDestroy9PhysWorldi_80
	mov dword [esp+0x8], 0x128
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call memset
	mov eax, [physGlob+0x183c0]
	mov [ebx], eax
	mov edx, ebx
	sub edx, physGlob+0x183c4
	sar edx, 0x3
	lea eax, [edx+edx*2]
	lea eax, [eax+eax*8]
	lea eax, [edx+eax*4]
	mov edx, eax
	shl edx, 0x6
	add eax, edx
	mov edx, eax
	shl edx, 0x12
	sub eax, edx
	mov [physGlob+0x183c0], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z17Phys_JointDestroy9PhysWorldi_40:
	cmp ebx, physGlob+0x183c0
	jae _Z17Phys_JointDestroy9PhysWorldi_90
	mov eax, 0x1
	test eax, eax
	jz _Z17Phys_JointDestroy9PhysWorldi_100
_Z17Phys_JointDestroy9PhysWorldi_50:
	mov dword [esp+0x8], 0x60
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call memset
	mov eax, [physGlob+0x147bc]
	mov [ebx], eax
	mov ecx, ebx
	sub ecx, physGlob+0x147c0
	sar ecx, 0x5
	lea eax, [ecx+ecx*4]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	mov edx, eax
	shl edx, 0x10
	add eax, edx
	lea eax, [ecx+eax*2]
	mov [physGlob+0x147bc], eax
_Z17Phys_JointDestroy9PhysWorldi_80:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z17Phys_JointDestroy9PhysWorldi_20:
	mov eax, 0x1
	test eax, eax
	jz _Z17Phys_JointDestroy9PhysWorldi_110
_Z17Phys_JointDestroy9PhysWorldi_30:
	mov dword [esp+0x8], 0xbc
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call memset
	mov eax, [physGlob+0xbab8]
	mov [ebx], eax
	sub ebx, physGlob+0xbabc
	sar ebx, 0x2
	imul eax, ebx, 0x677d46cf
	mov [physGlob+0xbab8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z17Phys_JointDestroy9PhysWorldi_70:
	mov eax, 0x1
	jmp _Z17Phys_JointDestroy9PhysWorldi_120
	nop


;Phys_DrawDebugText(ScreenPlacement const*)
_Z18Phys_DrawDebugTextPK15ScreenPlacement:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov dword [ebp-0x1c], 0x0
	mov dword [ebp-0x20], 0x42900000
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x20]
	mov [esp], ebx
	movss xmm0, dword [_float_12_00000000]
	lea ecx, [ebp-0x1c]
	mov edx, _cstring_dynent_objects
	xor eax, eax
	call _Z26Phys_DrawDebugTextForWorldjPKcPfS1_fPK15ScreenPlacement
	mov esi, eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], ebx
	movss xmm0, dword [_float_12_00000000]
	lea ecx, [ebp-0x1c]
	mov edx, _cstring_fx_objects
	mov eax, 0x1
	call _Z26Phys_DrawDebugTextForWorldjPKcPfS1_fPK15ScreenPlacement
	lea edi, [esi+eax]
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], ebx
	movss xmm0, dword [_float_12_00000000]
	lea ecx, [ebp-0x1c]
	mov edx, _cstring_ragdoll_objects
	mov eax, 0x2
	call _Z26Phys_DrawDebugTextForWorldjPKcPfS1_fPK15ScreenPlacement
	lea eax, [edi+eax]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_total_objects_aw
	call _Z2vaPKcz
	mov dword [esp+0x20], 0x0
	mov dword [esp+0x1c], 0x41400000
	mov dword [esp+0x18], 0x1
	mov dword [esp+0x14], 0x0
	mov edx, colorGreen
	mov [esp+0x10], edx
	mov [esp+0xc], eax
	mov eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z16CG_DrawStringExtPK15ScreenPlacementffPKcPKfiifi
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Phys_ObjAddGeomBox(PhysWorld, int, float const*, float const*)
_Z18Phys_ObjAddGeomBox9PhysWorldiPKfS1_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xbc
	mov edi, [ebp+0xc]
	mov esi, [ebp+0x10]
	mov ebx, [ebp+0x14]
	lea eax, [ebp-0x68]
	mov [esp], eax
	call dMassSetZero
	mov dword [ebp-0xb0], 0x1
	movss xmm0, dword [esi]
	addss xmm0, [ebx]
	movss xmm1, dword [_float_0_50000000]
	mulss xmm0, xmm1
	movss [ebp-0x24], xmm0
	movss xmm0, dword [esi+0x4]
	addss xmm0, [ebx+0x4]
	mulss xmm0, xmm1
	movss [ebp-0x20], xmm0
	movss xmm0, dword [esi+0x8]
	addss xmm0, [ebx+0x8]
	mulss xmm0, xmm1
	movss [ebp-0x1c], xmm0
	movss xmm0, dword [ebx]
	subss xmm0, [esi]
	movss [ebp-0x84], xmm0
	movss xmm0, dword [ebx+0x4]
	subss xmm0, [esi+0x4]
	movss [ebp-0x80], xmm0
	movss xmm0, dword [ebx+0x8]
	subss xmm0, [esi+0x8]
	movss [ebp-0x7c], xmm0
	mov byte [ebp-0xac], 0x0
	lea eax, [ebp-0x68]
	mov [esp+0x4], eax
	mov [esp], edi
	call dBodyGetMass
	lea ecx, [ebp-0xb0]
	lea eax, [ebp-0x24]
	mov [esp], eax
	movss xmm0, dword [ebp-0x68]
	mov edx, edi
	mov eax, [ebp+0x8]
	call _Z26Phys_BodyAddGeomAndSetMass9PhysWorldP6dxBodyfPK9GeomStatePKf
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Phys_ObjCreateAxis(PhysWorld, float const*, float const (*) [3], float const*, PhysPreset const*)
_Z18Phys_ObjCreateAxis9PhysWorldPKfPA3_S0_S1_PK10PhysPreset:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov edi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x14]
	lea eax, [ebp-0x7c]
	mov [esp+0x4], eax
	mov eax, [ebp+0x10]
	mov [esp], eax
	call _Z8AxisCopyPA3_KfPA3_f
	mov eax, [ebx]
	mov [ebp-0x88], eax
	mov eax, [ebx+0x4]
	mov [ebp-0x84], eax
	mov eax, [ebx+0x8]
	mov [ebp-0x80], eax
	mov eax, [esi]
	mov [ebp-0x58], eax
	mov eax, [esi+0x4]
	mov [ebp-0x54], eax
	mov eax, [esi+0x8]
	mov [ebp-0x50], eax
	xor eax, eax
	mov [ebp-0x4c], eax
	mov [ebp-0x48], eax
	mov [ebp-0x44], eax
	mov [ebp-0x40], eax
	mov [ebp-0x3c], eax
	mov [ebp-0x38], eax
	mov edx, [ebp+0x18]
	mov eax, [edx+0x8]
	mov [ebp-0x34], eax
	mov eax, [edx+0xc]
	mov [ebp-0x2c], eax
	mov eax, [edx+0x10]
	mov [ebp-0x30], eax
	mov dword [ebp-0x28], 0x0
	lea eax, [edi+edi*2]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov eax, [eax*4+physGlob+0x10]
	mov [ebp-0x24], eax
	mov edx, [ebp+0x18]
	mov eax, [edx+0x4]
	mov [ebp-0x20], eax
	mov byte [ebp-0x1c], 0x1
	lea edx, [ebp-0x88]
	mov eax, edi
	call _Z24Phys_CreateBodyFromState9PhysWorldPK9BodyState
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Phys_ObjGetPosition(int, float*, float (*) [3])
_Z19Phys_ObjGetPositioniPfPA3_f:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, [ebp+0x8]
	mov [esp], eax
	call dBodyGetPosition
	mov [ebp-0x2c], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call dBodyGetRotation
	mov esi, eax
	xor edi, edi
_Z19Phys_ObjGetPositioniPfPA3_f_20:
	mov ecx, esi
	mov eax, [ebp+0x10]
	lea edx, [eax+edi*4]
	mov ebx, 0x3
_Z19Phys_ObjGetPositioniPfPA3_f_10:
	mov eax, [ecx]
	mov [edx], eax
	add ecx, 0x4
	add edx, 0xc
	sub ebx, 0x1
	jnz _Z19Phys_ObjGetPositioniPfPA3_f_10
	add edi, 0x1
	add esi, 0x10
	cmp edi, 0x3
	jnz _Z19Phys_ObjGetPositioniPfPA3_f_20
	mov edx, [ebp-0x2c]
	mov eax, [edx]
	mov edx, [ebp+0xc]
	mov [edx], eax
	mov edx, [ebp-0x2c]
	mov eax, [edx+0x4]
	mov edx, [ebp+0xc]
	mov [edx+0x4], eax
	mov edx, [ebp-0x2c]
	mov eax, [edx+0x8]
	mov edx, [ebp+0xc]
	mov [edx+0x8], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call dBodyGetData
	lea edx, [ebp-0x24]
	mov [esp+0x8], edx
	mov [esp+0x4], eax
	mov edx, [ebp+0x10]
	mov [esp], edx
	call _Z17AxisTransformVec3PA3_KfPS_Pf
	movss xmm0, dword [ebp-0x24]
	mov eax, [ebp+0xc]
	addss xmm0, [eax]
	movss [eax], xmm0
	movss xmm0, dword [ebp-0x20]
	addss xmm0, [eax+0x4]
	movss [eax+0x4], xmm0
	movss xmm0, dword [ebp-0x1c]
	addss xmm0, [eax+0x8]
	movss [eax+0x8], xmm0
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Phys_ObjSetVelocity(int, float const*)
_Z19Phys_ObjSetVelocityiPKf:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0xc]
	mov eax, [edx+0x8]
	mov [esp+0xc], eax
	mov eax, [edx+0x4]
	mov [esp+0x8], eax
	mov eax, [edx]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call dBodySetLinearVel
	leave
	ret


;Phys_SetHingeParams(PhysWorld, int, float, float, float, float)
_Z19Phys_SetHingeParams9PhysWorldiffff:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x14]
	mov edi, [ebp+0x18]
	movss xmm0, dword [ebp+0x1c]
	movss [ebp-0x1c], xmm0
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2
	mov [esp], ebx
	call dJointSetHingeParam
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x3
	mov [esp], ebx
	call dJointSetHingeParam
	mov dword [esp+0x8], 0x3f666666
	mov dword [esp+0x4], 0x4
	mov [esp], ebx
	call dJointSetHingeParam
	mov eax, [phys_joint_cfm]
	mov eax, [eax+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x6
	mov [esp], ebx
	call dJointSetHingeParam
	mov eax, [phys_joint_stop_cfm]
	mov eax, [eax+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x8
	mov [esp], ebx
	call dJointSetHingeParam
	mov eax, [phys_joint_stop_erp]
	mov eax, [eax+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x7
	mov [esp], ebx
	call dJointSetHingeParam
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call dJointSetHingeParam
	movss xmm0, dword [ebp-0x1c]
	movss [ebp+0x10], xmm0
	mov dword [ebp+0xc], 0x1
	mov [ebp+0x8], ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp dJointSetHingeParam
	nop


;Phys_AddJitterRegion(PhysWorld, float const*, float, float, float, float)
_Z20Phys_AddJitterRegion9PhysWorldPKfffff:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0x8]
	movss xmm0, dword [ebp+0x10]
	movss xmm1, dword [ebp+0x14]
	lea eax, [ebx+ebx*2]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	lea eax, [eax*4+physGlob]
	lea ecx, [eax+0xc]
	mov edx, [ecx+0x10]
	cmp edx, 0x4
	jle _Z20Phys_AddJitterRegion9PhysWorldPKfffff_10
	lea esi, [eax+0xb4]
_Z20Phys_AddJitterRegion9PhysWorldPKfffff_50:
	mov edx, [ebp+0xc]
	mov eax, [edx]
	mov [esi], eax
	mov edi, edx
	add edi, 0x4
	mov eax, [edx+0x4]
	mov [esi+0x4], eax
	mov eax, [edx+0x8]
	mov [esi+0x8], eax
	movss [esi+0x14], xmm0
	movss [esi+0x18], xmm1
	mulss xmm0, xmm0
	movss [esi+0xc], xmm0
	mulss xmm1, xmm1
	movss [esi+0x10], xmm1
	mov eax, [ebp+0x18]
	mov [esi+0x1c], eax
	mov eax, [ebp+0x1c]
	mov [esi+0x20], eax
	mov eax, [ebx*4+physGlob]
	mov ebx, [eax]
	test ebx, ebx
	jnz _Z20Phys_AddJitterRegion9PhysWorldPKfffff_20
	jmp _Z20Phys_AddJitterRegion9PhysWorldPKfffff_30
_Z20Phys_AddJitterRegion9PhysWorldPKfffff_40:
	mov eax, [ebx+0x4]
	mov ebx, eax
	test eax, eax
	jz _Z20Phys_AddJitterRegion9PhysWorldPKfffff_30
_Z20Phys_AddJitterRegion9PhysWorldPKfffff_20:
	mov [esp], ebx
	call dBodyGetPosition
	movss xmm0, dword [eax]
	mov edx, [ebp+0xc]
	subss xmm0, [edx]
	movss xmm1, dword [eax+0x4]
	subss xmm1, [edi]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	addss xmm0, [_float_0_00000000]
	ucomiss xmm0, [esi+0x10]
	ja _Z20Phys_AddJitterRegion9PhysWorldPKfffff_40
	mov [esp], ebx
	call dBodyEnable
	mov eax, [ebx+0x4]
	mov ebx, eax
	test eax, eax
	jnz _Z20Phys_AddJitterRegion9PhysWorldPKfffff_20
_Z20Phys_AddJitterRegion9PhysWorldPKfffff_30:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20Phys_AddJitterRegion9PhysWorldPKfffff_10:
	lea eax, [edx+edx*8]
	lea esi, [ecx+eax*4+0x18]
	lea eax, [edx+0x1]
	mov [ecx+0x10], eax
	jmp _Z20Phys_AddJitterRegion9PhysWorldPKfffff_50
	nop


;Phys_ObjAddGeomBrush(PhysWorld, int, cbrush_t const*, PhysMass const*)
_Z20Phys_ObjAddGeomBrush9PhysWorldiPK8cbrush_tPK8PhysMass:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	mov edi, [ebp+0xc]
	mov ebx, [ebp+0x14]
	lea esi, [ebp-0x5c]
	mov [esp], esi
	call dMassSetZero
	mov dword [ebp-0xa4], 0x3
	mov eax, [ebp+0x10]
	mov [ebp-0x78], eax
	lea edx, [ebx+0xc]
	mov eax, [ebx+0xc]
	mov [ebp-0x74], eax
	mov eax, [edx+0x4]
	mov [ebp-0x70], eax
	mov eax, [edx+0x8]
	mov [ebp-0x6c], eax
	lea edx, [ebx+0x18]
	mov eax, [ebx+0x18]
	mov [ebp-0x68], eax
	mov eax, [edx+0x4]
	mov [ebp-0x64], eax
	mov eax, [edx+0x8]
	mov [ebp-0x60], eax
	mov byte [ebp-0xa0], 0x0
	mov [esp+0x4], esi
	mov [esp], edi
	call dBodyGetMass
	lea ecx, [ebp-0xa4]
	mov [esp], ebx
	movss xmm0, dword [ebp-0x5c]
	mov edx, edi
	mov eax, [ebp+0x8]
	call _Z26Phys_BodyAddGeomAndSetMass9PhysWorldP6dxBodyfPK9GeomStatePKf
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Phys_ObjBulletImpact(PhysWorld, int, float const*, float const*, float, float)
_Z20Phys_ObjBulletImpact9PhysWorldiPKfS1_ff:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x12c
	mov esi, [ebp+0x10]
	mov ebx, [ebp+0x14]
	lea eax, [ebp-0xa4]
	mov [esp], eax
	call dMassSetZero
	mov eax, [ebp+0xc]
	mov [esp], eax
	call dBodyGetPosition
	movss xmm0, dword [eax]
	movss [ebp-0xd0], xmm0
	movss xmm1, dword [eax+0x4]
	movss [ebp-0xd4], xmm1
	movss xmm0, dword [eax+0x8]
	movss [ebp-0xd8], xmm0
	movss xmm4, dword [ebx]
	movss xmm5, dword [ebx+0x4]
	movss xmm2, dword [ebx+0x8]
	movss xmm6, dword [esi]
	movss xmm7, dword [esi+0x4]
	movss xmm1, dword [esi+0x8]
	movss [ebp-0xcc], xmm1
	mov eax, [phys_bulletUpBias]
	addss xmm2, [eax+0xc]
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	movaps xmm1, xmm5
	mulss xmm1, xmm5
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	addss xmm0, xmm1
	sqrtss xmm3, xmm0
	movaps xmm0, xmm3
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, [_float_0_00000000]
	jb _Z20Phys_ObjBulletImpact9PhysWorldiPKfS1_ff_10
	movss xmm0, dword [_float_1_00000000]
_Z20Phys_ObjBulletImpact9PhysWorldiPKfS1_ff_120:
	mulss xmm4, xmm0
	movss [ebp-0xac], xmm4
	mulss xmm5, xmm0
	movss [ebp-0xb0], xmm5
	mulss xmm2, xmm0
	movss [ebp-0xb4], xmm2
	movaps xmm0, xmm6
	subss xmm0, [ebp-0xd0]
	movss [ebp-0xb8], xmm0
	movaps xmm1, xmm7
	subss xmm1, [ebp-0xd4]
	movss [ebp-0xbc], xmm1
	movss xmm0, dword [ebp-0xcc]
	subss xmm0, [ebp-0xd8]
	movss [ebp-0xc0], xmm0
	mov eax, [phys_bulletSpinScale]
	movss xmm0, dword [eax+0xc]
	movss xmm1, dword [ebp-0xb8]
	mulss xmm1, xmm0
	addss xmm6, xmm1
	movss [ebp-0xb8], xmm6
	movss xmm1, dword [ebp-0xbc]
	mulss xmm1, xmm0
	addss xmm7, xmm1
	movss [ebp-0xbc], xmm7
	mulss xmm0, [ebp-0xc0]
	movss xmm1, dword [ebp-0xcc]
	addss xmm1, xmm0
	movss [ebp-0xc0], xmm1
	mov eax, [ebp+0xc]
	mov [esp], eax
	call dBodyGetLinearVel
	movss xmm0, dword [ebp-0xac]
	mulss xmm0, [eax]
	movss xmm1, dword [ebp-0xb0]
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xb4]
	mulss xmm1, [eax+0x8]
	addss xmm0, xmm1
	movss xmm1, dword [ebp+0x18]
	subss xmm1, xmm0
	movss [ebp-0xdc], xmm1
	lea eax, [ebp-0xa4]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call dBodyGetMass
	movss xmm3, dword [ebp-0xb8]
	subss xmm3, [ebp-0xd0]
	movss xmm1, dword [ebp-0xbc]
	subss xmm1, [ebp-0xd4]
	movss xmm2, dword [ebp-0xc0]
	subss xmm2, [ebp-0xd8]
	movss xmm4, dword [ebp-0xb4]
	mulss xmm4, xmm1
	movss xmm0, dword [ebp-0xb0]
	mulss xmm0, xmm2
	subss xmm4, xmm0
	movss xmm5, dword [ebp-0xac]
	mulss xmm5, xmm2
	movss xmm0, dword [ebp-0xb4]
	mulss xmm0, xmm3
	subss xmm5, xmm0
	movss xmm2, dword [ebp-0xb0]
	mulss xmm2, xmm3
	mulss xmm1, [ebp-0xac]
	subss xmm2, xmm1
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	movaps xmm1, xmm5
	mulss xmm1, xmm5
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	addss xmm0, xmm1
	sqrtss xmm7, xmm0
	movaps xmm0, xmm7
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, [_float_0_00000000]
	jb _Z20Phys_ObjBulletImpact9PhysWorldiPKfS1_ff_20
	movss xmm0, dword [_float_1_00000000]
_Z20Phys_ObjBulletImpact9PhysWorldiPKfS1_ff_110:
	movaps xmm6, xmm4
	mulss xmm6, xmm0
	mulss xmm5, xmm0
	movss [ebp-0xc4], xmm5
	mulss xmm2, xmm0
	movss [ebp-0xc8], xmm2
	xor esi, esi
	lea edi, [ebp-0x60]
_Z20Phys_ObjBulletImpact9PhysWorldiPKfS1_ff_40:
	mov ecx, esi
	shl ecx, 0x4
	lea edx, [edi+esi*4]
	xor ebx, ebx
_Z20Phys_ObjBulletImpact9PhysWorldiPKfS1_ff_30:
	mov eax, [ebp+ecx-0x90]
	mov [edx], eax
	add ebx, 0x1
	add ecx, 0x4
	add edx, 0xc
	cmp ebx, 0x3
	jnz _Z20Phys_ObjBulletImpact9PhysWorldiPKfS1_ff_30
	add esi, 0x1
	cmp esi, 0x3
	jnz _Z20Phys_ObjBulletImpact9PhysWorldiPKfS1_ff_40
	mov eax, [ebp+0xc]
	mov [esp], eax
	movss [ebp-0x108], xmm6
	movss [ebp-0x118], xmm7
	call dBodyGetRotation
	mov esi, eax
	xor edi, edi
	movss xmm7, dword [ebp-0x118]
	movss xmm6, dword [ebp-0x108]
_Z20Phys_ObjBulletImpact9PhysWorldiPKfS1_ff_60:
	mov ecx, esi
	lea edx, [ebp+edi*4-0x3c]
	mov ebx, 0x3
_Z20Phys_ObjBulletImpact9PhysWorldiPKfS1_ff_50:
	mov eax, [ecx]
	mov [edx], eax
	add ecx, 0x4
	add edx, 0xc
	sub ebx, 0x1
	jnz _Z20Phys_ObjBulletImpact9PhysWorldiPKfS1_ff_50
	add edi, 0x1
	add esi, 0x10
	cmp edi, 0x3
	jnz _Z20Phys_ObjBulletImpact9PhysWorldiPKfS1_ff_60
	movaps xmm3, xmm6
	mulss xmm3, [ebp-0x3c]
	movss xmm0, dword [ebp-0xc4]
	mulss xmm0, [ebp-0x30]
	addss xmm3, xmm0
	movss xmm0, dword [ebp-0xc8]
	mulss xmm0, [ebp-0x24]
	addss xmm3, xmm0
	movaps xmm4, xmm6
	mulss xmm4, [ebp-0x38]
	movss xmm0, dword [ebp-0xc4]
	mulss xmm0, [ebp-0x2c]
	addss xmm4, xmm0
	movss xmm0, dword [ebp-0xc8]
	mulss xmm0, [ebp-0x20]
	addss xmm4, xmm0
	movaps xmm2, xmm6
	mulss xmm2, [ebp-0x34]
	movss xmm0, dword [ebp-0xc4]
	mulss xmm0, [ebp-0x28]
	addss xmm2, xmm0
	movss xmm0, dword [ebp-0xc8]
	mulss xmm0, [ebp-0x1c]
	addss xmm2, xmm0
	movaps xmm5, xmm3
	mulss xmm5, [ebp-0x60]
	movaps xmm0, xmm4
	mulss xmm0, [ebp-0x54]
	addss xmm5, xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x48]
	addss xmm5, xmm0
	mulss xmm5, xmm3
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x5c]
	movaps xmm1, xmm4
	mulss xmm1, [ebp-0x50]
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, [ebp-0x44]
	addss xmm0, xmm1
	mulss xmm0, xmm4
	addss xmm5, xmm0
	mulss xmm3, [ebp-0x58]
	mulss xmm4, [ebp-0x4c]
	addss xmm3, xmm4
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x40]
	addss xmm3, xmm0
	mulss xmm2, xmm3
	addss xmm5, xmm2
	mov eax, [ebp+0xc]
	mov [esp], eax
	movss [ebp-0xf8], xmm5
	movss [ebp-0x108], xmm6
	movss [ebp-0x118], xmm7
	call dBodyGetAngularVel
	movss xmm6, dword [ebp-0x108]
	mulss xmm6, [eax]
	movss xmm0, dword [ebp-0xc4]
	mulss xmm0, [eax+0x4]
	addss xmm6, xmm0
	movss xmm1, dword [ebp-0xc8]
	mulss xmm1, [eax+0x8]
	addss xmm6, xmm1
	movss xmm7, dword [ebp-0x118]
	mulss xmm6, xmm7
	movss xmm1, dword [ebp-0xdc]
	subss xmm1, xmm6
	addss xmm1, xmm1
	movss xmm3, dword [_float_0_50000000]
	mulss xmm1, xmm3
	movss xmm5, dword [ebp-0xf8]
	ucomiss xmm1, [_float_0_00000000]
	jp _Z20Phys_ObjBulletImpact9PhysWorldiPKfS1_ff_70
	jbe _Z20Phys_ObjBulletImpact9PhysWorldiPKfS1_ff_80
_Z20Phys_ObjBulletImpact9PhysWorldiPKfS1_ff_70:
	movss xmm0, dword [ebp-0xa4]
	movaps xmm2, xmm0
	addss xmm2, xmm3
	ucomiss xmm7, [_float_0_00000000]
	jp _Z20Phys_ObjBulletImpact9PhysWorldiPKfS1_ff_90
	jnz _Z20Phys_ObjBulletImpact9PhysWorldiPKfS1_ff_90
_Z20Phys_ObjBulletImpact9PhysWorldiPKfS1_ff_100:
	mulss xmm0, [ebp+0x1c]
	mulss xmm0, xmm1
	divss xmm0, xmm2
	mov eax, [ebp+0x8]
	cvtsi2ss xmm1, dword [eax*4+g_phys_msecStep]
	movss xmm2, dword [_float_1000_00000000]
	divss xmm2, xmm1
	movss xmm1, dword [ebp-0xc0]
	movss [esp+0x18], xmm1
	movss xmm1, dword [ebp-0xbc]
	movss [esp+0x14], xmm1
	movss xmm1, dword [ebp-0xb8]
	movss [esp+0x10], xmm1
	movss xmm1, dword [ebp-0xb4]
	mulss xmm1, xmm0
	movss [ebp-0xb4], xmm1
	mulss xmm1, xmm2
	movss [esp+0xc], xmm1
	movss xmm1, dword [ebp-0xb0]
	mulss xmm1, xmm0
	movss [ebp-0xb0], xmm1
	mulss xmm1, xmm2
	movss [esp+0x8], xmm1
	mulss xmm0, [ebp-0xac]
	mulss xmm2, xmm0
	movss [esp+0x4], xmm2
	mov eax, [ebp+0xc]
	mov [esp], eax
	call dBodyAddForceAtPos
	mov eax, [ebp+0xc]
	mov [esp], eax
	call dBodyEnable
_Z20Phys_ObjBulletImpact9PhysWorldiPKfS1_ff_80:
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20Phys_ObjBulletImpact9PhysWorldiPKfS1_ff_90:
	mulss xmm7, xmm7
	mulss xmm7, xmm0
	mulss xmm7, xmm3
	divss xmm7, xmm5
	addss xmm2, xmm7
	jmp _Z20Phys_ObjBulletImpact9PhysWorldiPKfS1_ff_100
_Z20Phys_ObjBulletImpact9PhysWorldiPKfS1_ff_20:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm7
	jmp _Z20Phys_ObjBulletImpact9PhysWorldiPKfS1_ff_110
_Z20Phys_ObjBulletImpact9PhysWorldiPKfS1_ff_10:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm3
	jmp _Z20Phys_ObjBulletImpact9PhysWorldiPKfS1_ff_120


;dxPostProcessIslands(PhysWorld)
_Z20dxPostProcessIslands9PhysWorld:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, [ebp+0x8]
	mov edi, [eax*4+physGlob]
	mov esi, [edi]
	test esi, esi
	jz _Z20dxPostProcessIslands9PhysWorld_10
_Z20dxPostProcessIslands9PhysWorld_40:
	test byte [esi+0x18], 0x4
	jnz _Z20dxPostProcessIslands9PhysWorld_20
	lea eax, [esi+0x98]
	mov dword [esi+0x98], 0x0
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
	lea eax, [esi+0xa8]
	mov dword [esi+0xa8], 0x0
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
	mov ebx, [esi+0x1c]
	test ebx, ebx
	jz _Z20dxPostProcessIslands9PhysWorld_20
_Z20dxPostProcessIslands9PhysWorld_30:
	mov [esp], ebx
	call dGeomMoved
	mov [esp], ebx
	call dGeomGetBodyNext
	mov ebx, eax
	test eax, eax
	jnz _Z20dxPostProcessIslands9PhysWorld_30
_Z20dxPostProcessIslands9PhysWorld_20:
	mov eax, [esi+0x4]
	mov esi, eax
	test eax, eax
	jnz _Z20dxPostProcessIslands9PhysWorld_40
	mov edx, [ebp+0x8]
_Z20dxPostProcessIslands9PhysWorld_110:
	mov eax, [edx*4+physGlob+0x27c]
	mov [esp], eax
	call dJointGroupEmpty
	mov ecx, [ebp+0x8]
	lea eax, [ecx+ecx*2]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov dword [eax*4+physGlob+0x1c], 0x0
	movss xmm0, dword [edi+0x50]
	movss [ebp-0x1c], xmm0
	mov ebx, [edi]
	test ebx, ebx
	jz _Z20dxPostProcessIslands9PhysWorld_50
	xor esi, esi
	pxor xmm3, xmm3
_Z20dxPostProcessIslands9PhysWorld_80:
	mov [esp], ebx
	movss [ebp-0x38], xmm3
	call dBodyIsEnabled
	test al, al
	movss xmm3, dword [ebp-0x38]
	jz _Z20dxPostProcessIslands9PhysWorld_60
	cmp dword [ebp+0x8], 0x2
	jz _Z20dxPostProcessIslands9PhysWorld_70
	mov eax, [phys_dragLinear]
	movss xmm0, dword [ebp-0x1c]
	mulss xmm0, [eax+0xc]
	movss xmm1, dword [_float_1_00000000]
	subss xmm1, xmm0
	movaps xmm0, xmm1
	movaps xmm1, xmm3
	cmpss xmm1, xmm0, 0x2
	andps xmm0, xmm1
	orps xmm0, xmm3
	lea eax, [ebx+0x130]
	movaps xmm1, xmm0
	mulss xmm1, [ebx+0x130]
	movss [ebx+0x130], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [eax+0x4]
	movss [eax+0x4], xmm1
	mulss xmm0, [eax+0x8]
	movss [eax+0x8], xmm0
	mov eax, [phys_dragAngular]
	movss xmm0, dword [ebp-0x1c]
	mulss xmm0, [eax+0xc]
	movss xmm1, dword [_float_1_00000000]
	subss xmm1, xmm0
	movaps xmm0, xmm1
	movaps xmm1, xmm3
	cmpss xmm1, xmm0, 0x2
	andps xmm0, xmm1
	orps xmm0, xmm3
	lea eax, [ebx+0x140]
	movaps xmm1, xmm0
	mulss xmm1, [ebx+0x140]
	movss [ebx+0x140], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [eax+0x4]
	movss [eax+0x4], xmm1
	mulss xmm0, [eax+0x8]
	movss [eax+0x8], xmm0
_Z20dxPostProcessIslands9PhysWorld_90:
	add esi, 0x1
_Z20dxPostProcessIslands9PhysWorld_60:
	mov eax, [ebx+0x4]
	mov ebx, eax
	test eax, eax
	jnz _Z20dxPostProcessIslands9PhysWorld_80
	lea eax, [esi-0x20]
_Z20dxPostProcessIslands9PhysWorld_100:
	cvtsi2ss xmm1, eax
	divss xmm1, dword [_float_18_00000000]
	movss xmm4, dword [_float_1_00000000]
	movaps xmm0, xmm1
	subss xmm0, xmm4
	pxor xmm2, xmm2
	movaps xmm3, xmm2
	cmpss xmm3, xmm0, 0x6
	movaps xmm0, xmm3
	movaps xmm3, xmm1
	andps xmm3, xmm0
	andnps xmm0, xmm4
	orps xmm0, xmm3
	movaps xmm3, xmm2
	subss xmm3, xmm1
	movaps xmm1, xmm3
	movaps xmm3, xmm2
	cmpss xmm3, xmm1, 0x6
	andps xmm0, xmm3
	orps xmm0, xmm2
	mov eax, [ebp+0x8]
	mov edx, [eax*4+g_phys_minMsecStep]
	mov ecx, eax
	mov eax, [eax*4+g_phys_maxMsecStep]
	sub eax, edx
	cvtsi2ss xmm1, eax
	mulss xmm0, xmm1
	cvttss2si eax, xmm0
	add edx, eax
	mov [ecx*4+g_phys_msecStep], edx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20dxPostProcessIslands9PhysWorld_70:
	lea eax, [ebx+0x140]
	movss xmm1, dword [ebx+0x144]
	mulss xmm1, [_float__0_01000000]
	movss xmm2, dword [ebx+0x148]
	mulss xmm2, [_float__0_01000000]
	movss xmm0, dword [ebx+0x140]
	mulss xmm0, [_float__0_01000000]
	addss xmm0, [ebx+0x140]
	movss [ebx+0x140], xmm0
	addss xmm1, [ebx+0x144]
	movss [eax+0x4], xmm1
	addss xmm2, [ebx+0x148]
	movss [eax+0x8], xmm2
	jmp _Z20dxPostProcessIslands9PhysWorld_90
_Z20dxPostProcessIslands9PhysWorld_50:
	mov eax, 0xffffffe0
	jmp _Z20dxPostProcessIslands9PhysWorld_100
_Z20dxPostProcessIslands9PhysWorld_10:
	mov edx, eax
	jmp _Z20dxPostProcessIslands9PhysWorld_110


;Phys_ObjAddGeomCapsule(PhysWorld, int, int, float, float, float const*)
_Z22Phys_ObjAddGeomCapsule9PhysWorldiiffPKf:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0xa0
	mov esi, [ebp+0xc]
	lea ebx, [ebp-0x4c]
	mov [esp], ebx
	call dMassSetZero
	mov dword [ebp-0x94], 0x5
	mov eax, [ebp+0x10]
	add eax, 0x1
	mov [ebp-0x68], eax
	mov eax, [ebp+0x14]
	mov [ebp-0x64], eax
	mov eax, [ebp+0x18]
	mov [ebp-0x60], eax
	mov byte [ebp-0x90], 0x0
	mov [esp+0x4], ebx
	mov [esp], esi
	call dBodyGetMass
	lea ecx, [ebp-0x94]
	mov eax, [ebp+0x1c]
	mov [esp], eax
	movss xmm0, dword [ebp-0x4c]
	mov edx, esi
	mov eax, [ebp+0x8]
	call _Z26Phys_BodyAddGeomAndSetMass9PhysWorldP6dxBodyfPK9GeomStatePKf
	add esp, 0xa0
	pop ebx
	pop esi
	pop ebp
	ret


;Phys_ObjSetOrientation(PhysWorld, int, float const*, float const*)
_Z22Phys_ObjSetOrientation9PhysWorldiPKfS1_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xec
	mov eax, [ebp+0xc]
	mov [esp], eax
	call dBodyGetData
	mov [ebp-0xac], eax
	lea edx, [ebp-0x78]
	mov [esp+0x8], edx
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z19Phys_ObjGetPositioniPfPA3_f
	mov edx, [ebp+0xc]
	mov [esp], edx
	call dBodyGetRotation
	mov esi, eax
	xor edi, edi
_Z22Phys_ObjSetOrientation9PhysWorldiPKfS1__20:
	mov ecx, esi
	lea edx, [ebp+edi*4-0x78]
	mov ebx, 0x3
_Z22Phys_ObjSetOrientation9PhysWorldiPKfS1__10:
	mov eax, [ecx]
	mov [edx], eax
	add ecx, 0x4
	add edx, 0xc
	sub ebx, 0x1
	jnz _Z22Phys_ObjSetOrientation9PhysWorldiPKfS1__10
	add edi, 0x1
	add esi, 0x10
	cmp edi, 0x3
	jnz _Z22Phys_ObjSetOrientation9PhysWorldiPKfS1__20
	lea eax, [ebp-0x54]
	mov [esp+0x4], eax
	mov eax, [ebp+0x14]
	mov [esp], eax
	call _Z10QuatToAxisPKfPA3_f
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov edx, [ebp-0xac]
	mov [esp+0x4], edx
	lea eax, [ebp-0x54]
	mov [esp], eax
	call _Z17AxisTransformVec3PA3_KfPS_Pf
	mov edx, [ebp+0x10]
	movss xmm2, dword [edx]
	subss xmm2, [ebp-0x24]
	movss xmm1, dword [edx+0x4]
	subss xmm1, [ebp-0x20]
	movss xmm0, dword [edx+0x8]
	subss xmm0, [ebp-0x1c]
	xor di, di
	xor esi, esi
_Z22Phys_ObjSetOrientation9PhysWorldiPKfS1__40:
	mov ecx, esi
	lea edx, [ebp+edi*4-0x54]
	xor ebx, ebx
_Z22Phys_ObjSetOrientation9PhysWorldiPKfS1__30:
	mov eax, [edx]
	mov [ebp+ecx-0xa8], eax
	add ebx, 0x1
	add ecx, 0x4
	add edx, 0xc
	cmp ebx, 0x3
	jnz _Z22Phys_ObjSetOrientation9PhysWorldiPKfS1__30
	mov dword [esi+ebp-0x9c], 0x0
	add edi, 0x1
	add esi, 0x10
	cmp edi, 0x3
	jnz _Z22Phys_ObjSetOrientation9PhysWorldiPKfS1__40
	mov eax, [ebp-0xac]
	add eax, 0x10
	mov edx, [ebp-0xac]
	movss [edx+0x10], xmm2
	movss [eax+0x4], xmm1
	movss [eax+0x8], xmm0
	mov eax, edx
	add eax, 0x1c
	mov [esp+0x4], eax
	lea eax, [ebp-0x54]
	mov [esp], eax
	movss [ebp-0xc8], xmm0
	movss [ebp-0xd8], xmm1
	movss [ebp-0xe8], xmm2
	call _Z8AxisCopyPA3_KfPA3_f
	movss xmm0, dword [ebp-0xc8]
	movss [esp+0xc], xmm0
	movss xmm1, dword [ebp-0xd8]
	movss [esp+0x8], xmm1
	movss xmm2, dword [ebp-0xe8]
	movss [esp+0x4], xmm2
	mov edx, [ebp+0xc]
	mov [esp], edx
	call dBodySetPosition
	lea eax, [ebp-0xa8]
	mov [esp+0x4], eax
	mov edx, [ebp+0xc]
	mov [esp], edx
	call dBodySetRotation
	add esp, 0xec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Phys_CreateAngularMotor(PhysWorld, int, int, int, float const (*) [3], float const*, float const*, float const*, float const*)
_Z23Phys_CreateAngularMotor9PhysWorldiiiPA3_KfPS0_S3_S3_S3_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov esi, [ebp+0x18]
	mov edx, [physGlob+0x183c0]
	cmp edx, 0xffffffff
	jz _Z23Phys_CreateAngularMotor9PhysWorldiiiPA3_KfPS0_S3_S3_S3__10
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*4]
	lea eax, [eax*8+physGlob+0x183c0]
	mov edx, [eax+0x4]
	mov [physGlob+0x183c0], edx
	add eax, 0x4
	jz _Z23Phys_CreateAngularMotor9PhysWorldiiiPA3_KfPS0_S3_S3_S3__10
	mov [esp+0x4], eax
	mov eax, [edi*4+physGlob]
	mov [esp], eax
	call dJointCreateAMotor
	mov ebx, eax
	test eax, eax
	jz _Z23Phys_CreateAngularMotor9PhysWorldiiiPA3_KfPS0_S3_S3_S3__20
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call dJointAttach
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call dJointSetAMotorMode
	mov dword [esp+0x4], 0x3
	mov [esp], ebx
	call dJointSetAMotorNumAxes
	mov edx, [ebp+0x10]
	test edx, edx
	jz _Z23Phys_CreateAngularMotor9PhysWorldiiiPA3_KfPS0_S3_S3_S3__30
	lea edx, [esi+0x18]
	mov eax, [edx+0x8]
	mov [esp+0x14], eax
	mov eax, [edx+0x4]
	mov [esp+0x10], eax
	mov eax, [esi+0x18]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x2
	mov dword [esp+0x4], 0x2
	mov [esp], ebx
	call dJointSetAMotorAxis
_Z23Phys_CreateAngularMotor9PhysWorldiiiPA3_KfPS0_S3_S3_S3__60:
	mov eax, [ebp+0xc]
	test eax, eax
	jz _Z23Phys_CreateAngularMotor9PhysWorldiiiPA3_KfPS0_S3_S3_S3__40
	mov eax, [esi+0x8]
	mov [esp+0x14], eax
	mov eax, [esi+0x4]
	mov [esp+0x10], eax
	mov eax, [esi]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call dJointSetAMotorAxis
_Z23Phys_CreateAngularMotor9PhysWorldiiiPA3_KfPS0_S3_S3_S3__50:
	mov eax, [ebp+0x28]
	mov [esp+0x14], eax
	mov eax, [ebp+0x24]
	mov [esp+0x10], eax
	mov eax, [ebp+0x20]
	mov [esp+0xc], eax
	mov eax, [ebp+0x1c]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], edi
	call _Z26Phys_SetAngularMotorParams9PhysWorldiPKfS1_S1_S1_
_Z23Phys_CreateAngularMotor9PhysWorldiiiPA3_KfPS0_S3_S3_S3__20:
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23Phys_CreateAngularMotor9PhysWorldiiiPA3_KfPS0_S3_S3_S3__10:
	mov dword [esp+0x8], 0xa0
	mov dword [esp+0x4], _cstring_physics_out_of_a
	mov dword [esp], 0x14
	call _Z16Com_PrintWarningiPKcz
	xor ebx, ebx
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23Phys_CreateAngularMotor9PhysWorldiiiPA3_KfPS0_S3_S3_S3__40:
	mov eax, [esi+0x8]
	mov [esp+0x14], eax
	mov eax, [esi+0x4]
	mov [esp+0x10], eax
	mov eax, [esi]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call dJointSetAMotorAxis
	jmp _Z23Phys_CreateAngularMotor9PhysWorldiiiPA3_KfPS0_S3_S3_S3__50
_Z23Phys_CreateAngularMotor9PhysWorldiiiPA3_KfPS0_S3_S3_S3__30:
	lea edx, [esi+0x18]
	mov eax, [edx+0x8]
	mov [esp+0x14], eax
	mov eax, [edx+0x4]
	mov [esp+0x10], eax
	mov eax, [esi+0x18]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x2
	mov [esp], ebx
	call dJointSetAMotorAxis
	jmp _Z23Phys_CreateAngularMotor9PhysWorldiiiPA3_KfPS0_S3_S3_S3__60


;Phys_ObjAddGeomCylinder(PhysWorld, int, float const*, float const*)
_Z23Phys_ObjAddGeomCylinder9PhysWorldiPKfS1_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xbc
	mov edi, [ebp+0xc]
	mov esi, [ebp+0x10]
	mov ebx, [ebp+0x14]
	lea eax, [ebp-0x68]
	mov [esp], eax
	call dMassSetZero
	mov dword [ebp-0xb0], 0x4
	movss xmm0, dword [esi]
	addss xmm0, [ebx]
	movss xmm5, dword [_float_0_50000000]
	mulss xmm0, xmm5
	movss [ebp-0x24], xmm0
	movss xmm0, dword [esi+0x4]
	addss xmm0, [ebx+0x4]
	mulss xmm0, xmm5
	movss [ebp-0x20], xmm0
	movss xmm0, dword [esi+0x8]
	addss xmm0, [ebx+0x8]
	mulss xmm0, xmm5
	movss [ebp-0x1c], xmm0
	movss xmm1, dword [ebx]
	subss xmm1, [esi]
	movss xmm2, dword [ebx+0x4]
	subss xmm2, [esi+0x4]
	movss xmm3, dword [ebx+0x8]
	subss xmm3, [esi+0x8]
	mov dword [ebp-0x84], 0x3
	movaps xmm4, xmm1
	subss xmm4, xmm2
	pxor xmm0, xmm0
	cmpss xmm0, xmm4, 0x2
	andps xmm1, xmm0
	andnps xmm0, xmm2
	orps xmm0, xmm1
	mulss xmm0, xmm5
	movss [ebp-0x80], xmm0
	mulss xmm3, xmm5
	movss [ebp-0x7c], xmm3
	mov byte [ebp-0xac], 0x0
	lea eax, [ebp-0x68]
	mov [esp+0x4], eax
	mov [esp], edi
	call dBodyGetMass
	lea ecx, [ebp-0xb0]
	lea eax, [ebp-0x24]
	mov [esp], eax
	movss xmm0, dword [ebp-0x68]
	mov edx, edi
	mov eax, [ebp+0x8]
	call _Z26Phys_BodyAddGeomAndSetMass9PhysWorldP6dxBodyfPK9GeomStatePKf
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Phys_ObjGetCenterOfMass(int, float*)
_Z23Phys_ObjGetCenterOfMassiPf:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov [esp], eax
	call dBodyGetPosition
	mov edx, [eax]
	mov [ebx], edx
	mov edx, [eax+0x4]
	mov [ebx+0x4], edx
	mov eax, [eax+0x8]
	mov [ebx+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;Phys_CreateBallAndSocket(PhysWorld, int, int, float const*)
_Z24Phys_CreateBallAndSocket9PhysWorldiiPKf:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x14]
	mov eax, [physGlob+0x147bc]
	cmp eax, 0xffffffff
	jz _Z24Phys_CreateBallAndSocket9PhysWorldiiPKf_10
	lea eax, [eax+eax*2]
	shl eax, 0x5
	add eax, physGlob+0x147b0
	mov edx, [eax+0x10]
	mov [physGlob+0x147bc], edx
	add eax, 0x10
	jz _Z24Phys_CreateBallAndSocket9PhysWorldiiPKf_10
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov eax, [edx*4+physGlob]
	mov [esp], eax
	call dJointCreateBall
	mov ebx, eax
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], ebx
	call dJointAttach
	mov eax, [esi+0x8]
	mov [esp+0xc], eax
	mov eax, [esi+0x4]
	mov [esp+0x8], eax
	mov eax, [esi]
	mov [esp+0x4], eax
	mov [esp], ebx
	call dJointSetBallAnchor
	mov eax, ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z24Phys_CreateBallAndSocket9PhysWorldiiPKf_10:
	mov dword [esp+0x8], 0xa0
	mov dword [esp+0x4], _cstring_physics_out_of_b
	mov dword [esp], 0x14
	call _Z16Com_PrintWarningiPKcz
	xor eax, eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;Phys_ObjAddGeomBoxRotated(PhysWorld, int, float const*, float const*, float const (*) [3])
_Z25Phys_ObjAddGeomBoxRotated9PhysWorldiPKfS1_PA3_S0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	mov edi, [ebp+0xc]
	mov esi, [ebp+0x14]
	mov ebx, [ebp+0x18]
	lea eax, [ebp-0x5c]
	mov [esp], eax
	call dMassSetZero
	mov dword [ebp-0xa4], 0x1
	movss xmm0, dword [esi]
	addss xmm0, xmm0
	movss [ebp-0x78], xmm0
	movss xmm0, dword [esi+0x4]
	addss xmm0, xmm0
	movss [ebp-0x74], xmm0
	movss xmm0, dword [esi+0x8]
	addss xmm0, xmm0
	movss [ebp-0x70], xmm0
	mov byte [ebp-0xa0], 0x1
	mov eax, [ebx]
	mov [ebp-0x9c], eax
	lea esi, [ebp-0xa4]
	mov eax, [ebx+0x4]
	mov [ebp-0x98], eax
	mov eax, [ebx+0x8]
	mov [ebp-0x94], eax
	lea edx, [ebx+0xc]
	mov eax, [ebx+0xc]
	mov [ebp-0x90], eax
	mov eax, [edx+0x4]
	mov [ebp-0x8c], eax
	mov eax, [edx+0x8]
	mov [ebp-0x88], eax
	lea edx, [ebx+0x18]
	mov eax, [ebx+0x18]
	mov [ebp-0x84], eax
	mov eax, [edx+0x4]
	mov [ebp-0x80], eax
	mov eax, [edx+0x8]
	mov [ebp-0x7c], eax
	lea eax, [ebp-0x5c]
	mov [esp+0x4], eax
	mov [esp], edi
	call dBodyGetMass
	mov eax, [ebp+0x10]
	mov [esp], eax
	mov ecx, esi
	movss xmm0, dword [ebp-0x5c]
	mov edx, edi
	mov eax, [ebp+0x8]
	call _Z26Phys_BodyAddGeomAndSetMass9PhysWorldP6dxBodyfPK9GeomStatePKf
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Phys_ObjAddGeomBrushModel(PhysWorld, int, unsigned short, PhysMass const*)
_Z25Phys_ObjAddGeomBrushModel9PhysWorlditPK8PhysMass:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	mov edi, [ebp+0xc]
	mov esi, [ebp+0x10]
	mov ebx, [ebp+0x14]
	lea eax, [ebp-0x5c]
	mov [esp], eax
	call dMassSetZero
	mov dword [ebp-0xa4], 0x2
	mov [ebp-0x78], si
	lea edx, [ebx+0xc]
	mov eax, [ebx+0xc]
	mov [ebp-0x74], eax
	mov eax, [edx+0x4]
	mov [ebp-0x70], eax
	mov eax, [edx+0x8]
	mov [ebp-0x6c], eax
	lea edx, [ebx+0x18]
	mov eax, [ebx+0x18]
	mov [ebp-0x68], eax
	mov eax, [edx+0x4]
	mov [ebp-0x64], eax
	mov eax, [edx+0x8]
	mov [ebp-0x60], eax
	mov byte [ebp-0xa0], 0x0
	lea eax, [ebp-0x5c]
	mov [esp+0x4], eax
	mov [esp], edi
	call dBodyGetMass
	lea ecx, [ebp-0xa4]
	mov [esp], ebx
	movss xmm0, dword [ebp-0x5c]
	mov edx, edi
	mov eax, [ebp+0x8]
	call _Z26Phys_BodyAddGeomAndSetMass9PhysWorldP6dxBodyfPK9GeomStatePKf
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Phys_ObjSetInertialTensor(int, PhysMass const*)
_Z25Phys_ObjSetInertialTensoriPK8PhysMass:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov edi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	lea esi, [ebp-0x5c]
	mov [esp], esi
	call dMassSetZero
	mov [esp+0x4], esi
	mov [esp], edi
	call dBodyGetMass
	lea eax, [ebx+0x18]
	lea edx, [ebx+0xc]
	movss xmm4, dword [ebp-0x5c]
	movaps xmm7, xmm4
	mulss xmm7, [eax+0x8]
	movaps xmm0, xmm4
	mulss xmm0, [eax+0x4]
	movss [esp+0x24], xmm0
	movaps xmm1, xmm4
	mulss xmm1, [ebx+0x18]
	movss [esp+0x20], xmm1
	movss xmm0, dword [edx+0x8]
	pxor xmm6, xmm6
	movss xmm5, dword [_float_100_00000000]
	movaps xmm3, xmm6
	cmpss xmm3, xmm0, 0x1
	andps xmm0, xmm3
	andnps xmm3, xmm5
	orps xmm3, xmm0
	mulss xmm3, xmm4
	movss xmm0, dword [edx+0x4]
	movaps xmm2, xmm6
	cmpss xmm2, xmm0, 0x1
	andps xmm0, xmm2
	andnps xmm2, xmm5
	orps xmm2, xmm0
	mulss xmm2, xmm4
	movss xmm1, dword [ebx+0xc]
	movaps xmm0, xmm6
	cmpss xmm0, xmm1, 0x1
	andps xmm1, xmm0
	andnps xmm0, xmm5
	orps xmm0, xmm1
	movss [esp+0x28], xmm7
	movss [esp+0x1c], xmm3
	movss [esp+0x18], xmm2
	mulss xmm0, xmm4
	movss [esp+0x14], xmm0
	movss [esp+0x10], xmm6
	movss [esp+0xc], xmm6
	movss [esp+0x8], xmm6
	movss [esp+0x4], xmm4
	mov [esp], esi
	call dMassSetParameters
	mov [esp+0x4], esi
	mov [esp], edi
	call dBodySetMass
	mov edx, ebx
	mov eax, edi
	call _Z29Phys_AdjustForNewCenterOfMassP6dxBodyPKf
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Phys_SetCollisionCallback(PhysWorld, void (*)())
_Z25Phys_SetCollisionCallback9PhysWorldPFvvE:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	lea eax, [eax+eax*2]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edx, [ebp+0xc]
	mov [eax*4+physGlob+0x18], edx
	pop ebp
	ret


;Phys_ObjSetAngularVelocity(int, float const*)
_Z26Phys_ObjSetAngularVelocityiPKf:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0xc]
	mov eax, [edx+0x4]
	mov [esp+0xc], eax
	mov eax, [edx]
	mov [esp+0x8], eax
	mov eax, [edx+0x8]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call dBodySetAngularVel
	leave
	ret


;Phys_ObjSetContactCentroid(int, float const*)
_Z26Phys_ObjSetContactCentroidiPKf:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov [esp], eax
	call dBodyGetData
	lea ecx, [eax+0x50]
	mov edx, [ebx]
	mov [eax+0x50], edx
	mov eax, [ebx+0x4]
	mov [ecx+0x4], eax
	mov eax, [ebx+0x8]
	mov [ecx+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;Phys_SetAngularMotorParams(PhysWorld, int, float const*, float const*, float const*, float const*)
_Z26Phys_SetAngularMotorParams9PhysWorldiPKfS1_S1_S1_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0xc]
	xor esi, esi
	mov dword [ebp-0x1c], 0x1
_Z26Phys_SetAngularMotorParams9PhysWorldiPKfS1_S1_S1__10:
	mov ebx, [ebp-0x1c]
	shl ebx, 0x2
	mov edx, [ebp+0x18]
	mov eax, [edx+ebx-0x4]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov [esp], edi
	call dJointSetAMotorParam
	mov edx, [ebp+0x1c]
	mov eax, [edx+ebx-0x4]
	mov [esp+0x8], eax
	lea eax, [esi+0x1]
	mov [esp+0x4], eax
	mov [esp], edi
	call dJointSetAMotorParam
	mov edx, [ebp+0x10]
	mov eax, [edx+ebx-0x4]
	mov [esp+0x8], eax
	lea eax, [esi+0x2]
	mov [esp+0x4], eax
	mov [esp], edi
	call dJointSetAMotorParam
	mov edx, [ebp+0x14]
	mov eax, [edx+ebx-0x4]
	mov [esp+0x8], eax
	lea eax, [esi+0x3]
	mov [esp+0x4], eax
	mov [esp], edi
	call dJointSetAMotorParam
	mov dword [esp+0x8], 0x3f666666
	lea eax, [esi+0x4]
	mov [esp+0x4], eax
	mov [esp], edi
	call dJointSetAMotorParam
	mov eax, [phys_joint_cfm]
	mov eax, [eax+0xc]
	mov [esp+0x8], eax
	lea eax, [esi+0x6]
	mov [esp+0x4], eax
	mov [esp], edi
	call dJointSetAMotorParam
	mov eax, [phys_joint_stop_cfm]
	mov eax, [eax+0xc]
	mov [esp+0x8], eax
	lea eax, [esi+0x8]
	mov [esp+0x4], eax
	mov [esp], edi
	call dJointSetAMotorParam
	mov eax, [phys_joint_stop_erp]
	mov eax, [eax+0xc]
	mov [esp+0x8], eax
	lea eax, [esi+0x7]
	mov [esp+0x4], eax
	mov [esp], edi
	call dJointSetAMotorParam
	add esi, 0x100
	add dword [ebp-0x1c], 0x1
	cmp esi, 0x300
	jnz _Z26Phys_SetAngularMotorParams9PhysWorldiPKfS1_S1_S1__10
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Phys_ObjGetInterpolatedState(PhysWorld, int, float*, float*)
_Z28Phys_ObjGetInterpolatedState9PhysWorldiPfS0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xdc
	mov edi, [ebp+0x8]
	lea edi, [edi+edi*2]
	mov eax, edi
	shl eax, 0x4
	add edi, eax
	lea edi, [edi*4+physGlob]
	mov eax, [ebp+0xc]
	mov [esp], eax
	call dBodyGetData
	mov esi, eax
	lea ebx, [eax+0x1c]
	lea eax, [eax+0x10]
	mov [ebp-0x9c], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call dBodyGetData
	lea edx, [ebp-0x30]
	mov [esp+0x8], edx
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z17AxisTransformVec3PA3_KfPS_Pf
	movss xmm2, dword [ebp-0x30]
	addss xmm2, [esi+0x10]
	movss xmm3, dword [ebp-0x2c]
	mov eax, [ebp-0x9c]
	addss xmm3, [eax+0x4]
	movss xmm4, dword [ebp-0x28]
	addss xmm4, [eax+0x8]
	mov eax, [esi+0x1c]
	mov [ebp-0x74], eax
	mov eax, [ebx+0x4]
	mov [ebp-0x70], eax
	mov eax, [ebx+0x8]
	mov [ebp-0x6c], eax
	mov eax, [ebx+0xc]
	mov [ebp-0x68], eax
	mov eax, [ebx+0x10]
	mov [ebp-0x64], eax
	mov eax, [ebx+0x14]
	mov [ebp-0x60], eax
	mov eax, [ebx+0x18]
	mov [ebp-0x5c], eax
	mov eax, [ebx+0x1c]
	mov [ebp-0x58], eax
	mov eax, [ebx+0x20]
	mov [ebp-0x54], eax
	lea eax, [ebp-0x98]
	mov [esp+0x8], eax
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	movss [ebp-0xb8], xmm2
	movss [ebp-0xc8], xmm3
	movss [ebp-0xd8], xmm4
	call _Z19Phys_ObjGetPositioniPfPA3_f
	movss xmm1, dword [edi+0x14]
	movss xmm0, dword [ebp-0x24]
	movss xmm2, dword [ebp-0xb8]
	subss xmm0, xmm2
	mulss xmm0, xmm1
	addss xmm2, xmm0
	mov eax, [ebp+0x10]
	movss [eax], xmm2
	movss xmm0, dword [ebp-0x20]
	movss xmm3, dword [ebp-0xc8]
	subss xmm0, xmm3
	mulss xmm0, xmm1
	addss xmm3, xmm0
	movss [eax+0x4], xmm3
	movss xmm0, dword [ebp-0x1c]
	movss xmm4, dword [ebp-0xd8]
	subss xmm0, xmm4
	mulss xmm1, xmm0
	addss xmm4, xmm1
	movss [eax+0x8], xmm4
	lea esi, [ebp-0x40]
	mov [esp+0x4], esi
	lea eax, [ebp-0x74]
	mov [esp], eax
	call _Z10AxisToQuatPA3_KfPf
	lea ebx, [ebp-0x50]
	mov [esp+0x4], ebx
	lea eax, [ebp-0x98]
	mov [esp], eax
	call _Z10AxisToQuatPA3_KfPf
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	mov eax, [edi+0x14]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z8QuatLerpPKfS0_fPf
	mov eax, [ebp+0x14]
	mov [esp], eax
	call _Z13Vec4NormalizePf
	fstp st0
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Phys_ObjSetAngularVelocityRaw(int, float const*)
_Z29Phys_ObjSetAngularVelocityRawiPKf:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0xc]
	mov eax, [edx+0x8]
	mov [esp+0xc], eax
	mov eax, [edx+0x4]
	mov [esp+0x8], eax
	mov eax, [edx]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call dBodySetAngularVel
	leave
	ret


;Phys_GeomUserGetAAContainedBox(dxGeom*, float*, float*)
_Z30Phys_GeomUserGetAAContainedBoxP6dxGeomPfS1_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov edi, [ebp+0x10]
	mov [esp], ebx
	call dGeomGetClass
	cmp eax, 0xc
	jz _Z30Phys_GeomUserGetAAContainedBoxP6dxGeomPfS1__10
	jle _Z30Phys_GeomUserGetAAContainedBoxP6dxGeomPfS1__20
	cmp eax, 0xd
	jz _Z30Phys_GeomUserGetAAContainedBoxP6dxGeomPfS1__30
	cmp eax, 0xe
	jnz _Z30Phys_GeomUserGetAAContainedBoxP6dxGeomPfS1__40
	mov [esp], ebx
	call dGeomGetClassData
	movss xmm0, dword [eax+0x4]
	movaps xmm1, xmm0
	mulss xmm1, [_float_0_70710677]
	addss xmm0, xmm0
	addss xmm0, [eax+0x8]
	minss xmm0, xmm1
	movaps xmm1, xmm0
	xorps xmm0, [_data16_80000000]
	movss [esi], xmm0
	movss [esi+0x4], xmm0
	movss [esi+0x8], xmm0
	movss [edi], xmm1
	movss [edi+0x4], xmm1
	movss [edi+0x8], xmm1
	jmp _Z30Phys_GeomUserGetAAContainedBoxP6dxGeomPfS1__40
_Z30Phys_GeomUserGetAAContainedBoxP6dxGeomPfS1__20:
	cmp eax, 0xb
	jz _Z30Phys_GeomUserGetAAContainedBoxP6dxGeomPfS1__50
_Z30Phys_GeomUserGetAAContainedBoxP6dxGeomPfS1__40:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z30Phys_GeomUserGetAAContainedBoxP6dxGeomPfS1__10:
	mov [esp], ebx
	call dGeomGetClassData
	mov eax, [eax]
	movss xmm0, dword [_float_0_01000000]
	movss xmm1, dword [eax]
	mulss xmm1, xmm0
	movss [esi], xmm1
	movss xmm1, dword [eax+0x4]
	mulss xmm1, xmm0
	movss [esi+0x4], xmm1
	movss xmm1, dword [eax+0x8]
	mulss xmm1, xmm0
	movss [esi+0x8], xmm1
	lea edx, [eax+0x10]
	movss xmm1, dword [eax+0x10]
_Z30Phys_GeomUserGetAAContainedBoxP6dxGeomPfS1__60:
	mulss xmm1, xmm0
	movss [edi], xmm1
	movss xmm1, dword [edx+0x4]
	mulss xmm1, xmm0
	movss [edi+0x4], xmm1
	mulss xmm0, [edx+0x8]
	movss [edi+0x8], xmm0
	mov [ebp+0xc], edi
	mov [ebp+0x8], esi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z20ShrinkBoundsToHeightPfS_
_Z30Phys_GeomUserGetAAContainedBoxP6dxGeomPfS1__30:
	mov [esp], ebx
	call dGeomGetClassData
	movss xmm0, dword [_float_0_70710677]
	mulss xmm0, [eax+0x4]
	movss xmm1, dword [eax+0x8]
	minss xmm1, xmm0
	movaps xmm0, xmm1
	xorps xmm1, [_data16_80000000]
	movss [esi], xmm1
	movss [esi+0x4], xmm1
	movss [esi+0x8], xmm1
	movss [edi], xmm0
	movss [edi+0x4], xmm0
	movss [edi+0x8], xmm0
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z30Phys_GeomUserGetAAContainedBoxP6dxGeomPfS1__50:
	mov [esp], ebx
	call dGeomGetClassData
	movzx eax, word [eax]
	mov [esp], eax
	call _Z20CM_ClipHandleToModelj
	movss xmm0, dword [_float_0_01000000]
	movss xmm1, dword [eax]
	mulss xmm1, xmm0
	movss [esi], xmm1
	movss xmm1, dword [eax+0x4]
	mulss xmm1, xmm0
	movss [esi+0x4], xmm1
	movss xmm1, dword [eax+0x8]
	mulss xmm1, xmm0
	movss [esi+0x8], xmm1
	lea edx, [eax+0xc]
	movss xmm1, dword [eax+0xc]
	jmp _Z30Phys_GeomUserGetAAContainedBoxP6dxGeomPfS1__60
	nop


;Phys_ObjAddGeomCylinderRotated(PhysWorld, int, int, float, float, float const*, float const (*) [3])
_Z30Phys_ObjAddGeomCylinderRotated9PhysWorldiiffPKfPA3_S0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	mov edi, [ebp+0xc]
	mov ebx, [ebp+0x20]
	lea esi, [ebp-0x5c]
	mov [esp], esi
	call dMassSetZero
	mov dword [ebp-0xa4], 0x4
	mov eax, [ebp+0x10]
	add eax, 0x1
	mov [ebp-0x78], eax
	mov eax, [ebp+0x14]
	mov [ebp-0x74], eax
	mov eax, [ebp+0x18]
	mov [ebp-0x70], eax
	mov byte [ebp-0xa0], 0x1
	mov eax, [ebx]
	mov [ebp-0x9c], eax
	mov eax, [ebx+0x4]
	mov [ebp-0x98], eax
	mov eax, [ebx+0x8]
	mov [ebp-0x94], eax
	lea edx, [ebx+0xc]
	mov eax, [ebx+0xc]
	mov [ebp-0x90], eax
	mov eax, [edx+0x4]
	mov [ebp-0x8c], eax
	mov eax, [edx+0x8]
	mov [ebp-0x88], eax
	lea edx, [ebx+0x18]
	mov eax, [ebx+0x18]
	mov [ebp-0x84], eax
	mov eax, [edx+0x4]
	mov [ebp-0x80], eax
	mov eax, [edx+0x8]
	mov [ebp-0x7c], eax
	mov [esp+0x4], esi
	mov [esp], edi
	call dBodyGetMass
	mov eax, [ebp+0x1c]
	mov [esp], eax
	lea ecx, [ebp-0xa4]
	movss xmm0, dword [ebp-0x5c]
	mov edx, edi
	mov eax, [ebp+0x8]
	call _Z26Phys_BodyAddGeomAndSetMass9PhysWorldP6dxBodyfPK9GeomStatePKf
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Phys_ObjSetCollisionFromXModel(XModel const*, PhysWorld, int)
_Z30Phys_ObjSetCollisionFromXModelPK6XModel9PhysWorldi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov eax, [ebp+0x8]
	mov esi, [eax+0xd8]
	test esi, esi
	jz _Z30Phys_ObjSetCollisionFromXModelPK6XModel9PhysWorldi_10
	mov ebx, [esi+0x4]
	mov edi, [esi]
	test edi, edi
	jz _Z30Phys_ObjSetCollisionFromXModelPK6XModel9PhysWorldi_20
	xor edi, edi
	lea eax, [esi+0x8]
	mov [ebp-0x3c], eax
	jmp _Z30Phys_ObjSetCollisionFromXModelPK6XModel9PhysWorldi_30
_Z30Phys_ObjSetCollisionFromXModelPK6XModel9PhysWorldi_50:
	mov edx, [ebp-0x3c]
	mov [esp+0xc], edx
	mov [esp+0x8], eax
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov edx, [ebp+0xc]
	mov [esp], edx
	call _Z20Phys_ObjAddGeomBrush9PhysWorldiPK8cbrush_tPK8PhysMass
_Z30Phys_ObjSetCollisionFromXModelPK6XModel9PhysWorldi_80:
	add edi, 0x1
	add ebx, 0x44
	cmp [esi], edi
	jbe _Z30Phys_ObjSetCollisionFromXModelPK6XModel9PhysWorldi_40
_Z30Phys_ObjSetCollisionFromXModelPK6XModel9PhysWorldi_30:
	mov eax, [ebx]
	test eax, eax
	jnz _Z30Phys_ObjSetCollisionFromXModelPK6XModel9PhysWorldi_50
	cmp dword [ebx+0x4], 0x1
	jz _Z30Phys_ObjSetCollisionFromXModelPK6XModel9PhysWorldi_60
	lea eax, [ebx+0x8]
	mov [esp+0x18], eax
	lea eax, [ebx+0x2c]
	mov [esp+0x14], eax
	mov eax, [ebx+0x38]
	mov [esp+0x10], eax
	mov eax, [ebx+0x3c]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov edx, [ebp+0xc]
	mov [esp], edx
	call _Z30Phys_ObjAddGeomCylinderRotated9PhysWorldiiffPKfPA3_S0_
	add edi, 0x1
	add ebx, 0x44
	cmp [esi], edi
	ja _Z30Phys_ObjSetCollisionFromXModelPK6XModel9PhysWorldi_30
_Z30Phys_ObjSetCollisionFromXModelPK6XModel9PhysWorldi_40:
	mov eax, [ebp-0x3c]
	jmp _Z30Phys_ObjSetCollisionFromXModelPK6XModel9PhysWorldi_70
_Z30Phys_ObjSetCollisionFromXModelPK6XModel9PhysWorldi_20:
	add esi, 0x8
	mov [ebp-0x3c], esi
	mov eax, esi
_Z30Phys_ObjSetCollisionFromXModelPK6XModel9PhysWorldi_70:
	mov [esp+0x4], eax
	mov edx, [ebp+0x10]
	mov [esp], edx
	call _Z25Phys_ObjSetInertialTensoriPK8PhysMass
_Z30Phys_ObjSetCollisionFromXModelPK6XModel9PhysWorldi_130:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z30Phys_ObjSetCollisionFromXModelPK6XModel9PhysWorldi_60:
	lea eax, [ebx+0x8]
	mov [esp+0x10], eax
	lea eax, [ebx+0x38]
	mov [esp+0xc], eax
	lea eax, [ebx+0x2c]
	mov [esp+0x8], eax
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov edx, [ebp+0xc]
	mov [esp], edx
	call _Z25Phys_ObjAddGeomBoxRotated9PhysWorldiPKfS1_PA3_S0_
	jmp _Z30Phys_ObjSetCollisionFromXModelPK6XModel9PhysWorldi_80
_Z30Phys_ObjSetCollisionFromXModelPK6XModel9PhysWorldi_10:
	lea esi, [ebp-0x30]
	mov [esp+0x8], esi
	lea ebx, [ebp-0x24]
	mov [esp+0x4], ebx
	mov [esp], eax
	call _Z15XModelGetBoundsPK6XModelPfS2_
	movss xmm0, dword [ebp-0x24]
	ucomiss xmm0, [ebp-0x30]
	jp _Z30Phys_ObjSetCollisionFromXModelPK6XModel9PhysWorldi_90
	jz _Z30Phys_ObjSetCollisionFromXModelPK6XModel9PhysWorldi_100
_Z30Phys_ObjSetCollisionFromXModelPK6XModel9PhysWorldi_90:
	movss xmm0, dword [ebp-0x20]
	ucomiss xmm0, [ebp-0x2c]
	jp _Z30Phys_ObjSetCollisionFromXModelPK6XModel9PhysWorldi_110
	jz _Z30Phys_ObjSetCollisionFromXModelPK6XModel9PhysWorldi_100
_Z30Phys_ObjSetCollisionFromXModelPK6XModel9PhysWorldi_110:
	movss xmm0, dword [ebp-0x1c]
	ucomiss xmm0, [ebp-0x28]
	jnz _Z30Phys_ObjSetCollisionFromXModelPK6XModel9PhysWorldi_120
	jp _Z30Phys_ObjSetCollisionFromXModelPK6XModel9PhysWorldi_120
_Z30Phys_ObjSetCollisionFromXModelPK6XModel9PhysWorldi_100:
	mov eax, 0xc2480000
	mov [ebp-0x24], eax
	mov [ebp-0x20], eax
	mov [ebp-0x1c], eax
	mov eax, 0x42480000
	mov [ebp-0x30], eax
	mov [ebp-0x2c], eax
	mov [ebp-0x28], eax
_Z30Phys_ObjSetCollisionFromXModelPK6XModel9PhysWorldi_120:
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov edx, [ebp+0xc]
	mov [esp], edx
	call _Z18Phys_ObjAddGeomBox9PhysWorldiPKfS1_
	jmp _Z30Phys_ObjSetCollisionFromXModelPK6XModel9PhysWorldi_130


;Phys_ObjAddGeomCylinderDirection(PhysWorld, int, int, float, float, float const*)
_Z32Phys_ObjAddGeomCylinderDirection9PhysWorldiiffPKf:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0xa0
	mov esi, [ebp+0xc]
	lea ebx, [ebp-0x4c]
	mov [esp], ebx
	call dMassSetZero
	mov dword [ebp-0x94], 0x4
	mov eax, [ebp+0x10]
	add eax, 0x1
	mov [ebp-0x68], eax
	mov eax, [ebp+0x14]
	mov [ebp-0x64], eax
	mov eax, [ebp+0x18]
	mov [ebp-0x60], eax
	mov byte [ebp-0x90], 0x0
	mov [esp+0x4], ebx
	mov [esp], esi
	call dBodyGetMass
	lea ecx, [ebp-0x94]
	mov eax, [ebp+0x1c]
	mov [esp], eax
	movss xmm0, dword [ebp-0x4c]
	mov edx, esi
	mov eax, [ebp+0x8]
	call _Z26Phys_BodyAddGeomAndSetMass9PhysWorldP6dxBodyfPK9GeomStatePKf
	add esp, 0xa0
	pop ebx
	pop esi
	pop ebp
	ret


;Phys_Init()
_Z9Phys_Initv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	cmp byte [physInited], 0x0
	jz _Z9Phys_Initv_10
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z9Phys_Initv_10:
	mov dword [esp+0x8], 0x23cd0
	mov dword [esp+0x4], 0x0
	mov dword [esp], physGlob
	call memset
	mov dword [esp+0xc], 0x200
	mov dword [esp+0x8], 0x5c
	mov dword [esp+0x4], physGlob+0xba88
	mov dword [esp], physGlob+0x288
	call _Z9Pool_InitPvP10pooldata_tjj
	call _Z8ODE_Initv
	xor esi, esi
	mov edi, physGlob
	mov ebx, physGlob+0x270
_Z9Phys_Initv_20:
	mov [esp], esi
	call dWorldCreate
	mov [ebx-0x270], eax
	mov dword [edi+0xc], 0x0
	mov dword [edi+0x10], 0x0
	mov [esp], esi
	call dGetSimpleSpace
	mov [ebx], eax
	mov [esp], esi
	call dGetContactJointGroup
	mov [ebx+0xc], eax
	mov dword [esp+0x4], 0x1
	mov eax, [ebx-0x270]
	mov [esp], eax
	call dWorldSetAutoDisableFlag
	mov dword [esp+0x4], 0x0
	mov eax, [ebx-0x270]
	mov [esp], eax
	call dWorldSetAutoDisableSteps
	mov dword [edi+0x18], 0x0
	add esi, 0x1
	add edi, 0xcc
	add ebx, 0x4
	cmp esi, 0x3
	jnz _Z9Phys_Initv_20
	mov byte [physGlob+0xbaa8], 0x0
	mov dword [esp+0x14], _cstring_physics_constrai
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x3f800000
	xor esi, esi
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x38d1b717
	mov dword [esp], _cstring_phys_cfm
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [phys_cfm], eax
	mov dword [esp+0x14], _cstring_physics_error_re
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x3f800000
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x3f4ccccd
	mov dword [esp], _cstring_phys_erp
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [phys_erp], eax
	mov dword [esp+0x14], _cstring_physics_maximum_
	mov dword [esp+0x10], 0x0
	mov edi, 0x7f7fffff
	mov [esp+0xc], edi
	mov ebx, 0xff7fffff
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x41a00000
	mov dword [esp], _cstring_phys_mcv
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [phys_mcv], eax
	mov dword [esp+0x14], _cstring_physics_maximum_1
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], edi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x447a0000
	mov dword [esp], _cstring_phys_mcv_ragdoll
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [phys_mcv_ragdoll], eax
	mov dword [esp+0x14], _cstring_physics_contact_
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], edi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x3f800000
	mov dword [esp], _cstring_phys_csl
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [phys_csl], eax
	mov dword [esp+0x14], _cstring_physics_gravity_
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], edi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0xc4480000
	mov dword [esp], _cstring_phys_gravity
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [phys_gravity], eax
	mov dword [esp+0x14], _cstring_up_bias_for_the_
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x40000000
	mov [esp+0x8], esi
	mov ebx, 0x3f000000
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_phys_bulletupbia
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [phys_bulletUpBias], eax
	mov dword [esp+0x14], _cstring_scale_of_the_eff
	mov dword [esp+0x10], 0x1000
	mov dword [esp+0xc], 0x42c80000
	mov dword [esp+0x8], 0xbf800000
	mov dword [esp+0x4], 0x40400000
	mov dword [esp], _cstring_phys_bulletspins
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [phys_bulletSpinScale], eax
	mov dword [esp+0xc], _cstring_set_to_true_to_d
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_phys_dumpcontact
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [phys_dumpcontacts], eax
	mov dword [esp+0x14], _cstring_number_of_iterat
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x7fffffff
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0xf
	mov dword [esp], _cstring_phys_qsi
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [phys_qsi], eax
	mov dword [esp+0xc], _cstring_debug_draw_conta
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_phys_drawcontact
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [phys_drawcontacts], eax
	mov dword [esp+0xc], _cstring_debug_draw_colli
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_phys_drawcollisi
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [phys_drawCollisionWorld], eax
	mov dword [esp+0xc], _cstring_debug_draw_colli1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_phys_drawcollisi1
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [phys_drawCollisionObj], eax
	mov dword [esp+0xc], _cstring_debug_draw_a_box
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_phys_drawawake
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [phys_drawAwake], eax
	mov dword [esp+0xc], _cstring_draw_an_indicato
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_phys_drawawaketo
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [phys_drawAwakeTooLong], eax
	mov dword [esp+0xc], _cstring_print_info_about
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_phys_drawdebugin
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [phys_drawDebugInfo], eax
	mov dword [esp+0xc], _cstring_visible_triangle
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_phys_visibletris
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [phys_visibleTris], eax
	mov dword [esp+0xc], _cstring_ode_solver_reord
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_phys_reordercons
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [phys_reorderConst], eax
	mov dword [esp+0xc], _cstring_make_all_contact
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_phys_noislands
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [phys_noIslands], eax
	mov dword [esp+0xc], _cstring_disable_to_turn_
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_phys_interbodyco
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [phys_interBodyCollision], eax
	mov dword [esp+0xc], _cstring_disable_to_turn_1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_phys_colluseenti
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [phys_collUseEntities], eax
	mov dword [esp+0x14], _cstring_a_body_must_have
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], edi
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x41a00000
	mov dword [esp], _cstring_phys_autodisable
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [phys_autoDisableLinear], eax
	mov dword [esp+0x14], _cstring_a_body_must_have1
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], edi
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x3f800000
	mov dword [esp], _cstring_phys_autodisable1
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [phys_autoDisableAngular], eax
	mov dword [esp+0x14], _cstring_the_amount_of_ti
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], edi
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x3f666666
	mov dword [esp], _cstring_phys_autodisable2
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [phys_autoDisableTime], eax
	mov dword [esp+0x14], _cstring_physics_constrai1
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x3f800000
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x3727c5ac
	mov dword [esp], _cstring_phys_contact_cfm
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [phys_contact_cfm], eax
	mov dword [esp+0x14], _cstring_physics_error_re1
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x3f800000
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x3f4ccccd
	mov dword [esp], _cstring_phys_contact_erp
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [phys_contact_erp], eax
	mov dword [esp+0x14], _cstring_physics_constrai1
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x3f800000
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x3a83126f
	mov dword [esp], _cstring_phys_contact_cfm1
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [phys_contact_cfm_ragdoll], eax
	mov dword [esp+0x14], _cstring_physics_error_re1
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x3f800000
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x3e99999a
	mov dword [esp], _cstring_phys_contact_erp1
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [phys_contact_erp_ragdoll], eax
	mov dword [esp+0x14], _cstring_physics_constrai2
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x3f800000
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x38d1b717
	mov dword [esp], _cstring_phys_joint_cfm
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [phys_joint_cfm], eax
	mov dword [esp+0x14], _cstring_physics_constrai3
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x3f800000
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x38d1b717
	mov dword [esp], _cstring_phys_joint_stop_
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [phys_joint_stop_cfm], eax
	mov dword [esp+0x14], _cstring_physics_error_re2
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x3f800000
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x3f4ccccd
	mov dword [esp], _cstring_phys_joint_stop_1
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [phys_joint_stop_erp], eax
	mov dword [esp+0x14], _cstring_scales_the_amoun
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], edi
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x3f800000
	mov dword [esp], _cstring_phys_frictionsca
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [phys_frictionScale], eax
	mov dword [esp+0x14], _cstring_the_amount_of_li
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], edi
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x3cf5c28f
	mov dword [esp], _cstring_phys_draglinear
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [phys_dragLinear], eax
	mov dword [esp+0x14], _cstring_the_amount_of_an
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], edi
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_phys_dragangular
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [phys_dragAngular], eax
	mov dword [esp+0x14], _cstring_the_minimum_mome
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], edi
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x437a0000
	mov dword [esp], _cstring_phys_minimpactmo
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [phys_minImpactMomentum], eax
	mov dword [esp+0x14], _cstring_maximum_mass_to_
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x3dcccccd
	mov dword [esp+0x4], 0x43480000
	mov dword [esp], _cstring_phys_jittermaxma
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [phys_jitterMaxMass], eax
	mov dword [esp+0x14], _cstring_the_radius_aroun
	mov dword [esp+0x10], 0x1000
	mov [esp+0xc], edi
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x42f00000
	mov dword [esp], _cstring_phys_gravitychan
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [phys_gravityChangeWakeupRadius], eax
	mov dword [esp+0x14], _cstring_if_a_geom_has_a_
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], edi
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x40800000
	mov dword [esp], _cstring_phys_narrowobjma
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [phys_narrowObjMaxLength], eax
	mov dword [esp+0x8], _ZZ9Phys_InitvE15Phys_Stop_f_VAR
	mov dword [esp+0x4], _Z11Phys_Stop_fv
	mov dword [esp], _cstring_phys_stop
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ9Phys_InitvE13Phys_Go_f_VAR
	mov dword [esp+0x4], _Z9Phys_Go_fv
	mov dword [esp], _cstring_phys_go
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	call _Z28Phys_InitBrushmodelGeomClassv
	call _Z23Phys_InitBrushGeomClassv
	call _Z26Phys_InitCylinderGeomClassv
	call _Z25Phys_InitCapsuleGeomClassv
	call _Z23Phys_InitWorldCollisionv
	call _Z15Phys_InitJointsv
	mov [physGlob+0x23cc4], esi
	mov [physGlob+0x23cc8], esi
	mov dword [physGlob+0x23ccc], 0xbf800000
	mov byte [physInited], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Initialized global or static variables of phys_ode:
SECTION .data
g_phys_maxMsecStep: dd 0x43, 0x43, 0x22
g_phys_minMsecStep: dd 0x11, 0x11, 0x11, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
g_phys_msecStep: dd 0x11, 0x11, 0x11


;Initialized constant data of phys_ode:
SECTION .rdata


;Zero initialized global or static variables of phys_ode:
SECTION .bss
physInited: resb 0x4
_ZZ9Phys_InitvE13Phys_Go_f_VAR: resb 0x14
_ZZ9Phys_InitvE15Phys_Stop_f_VAR: resb 0x68
phys_drawDebugInfo: resb 0x4
phys_gravityChangeWakeupRadius: resb 0x4
phys_drawCollisionObj: resb 0x4
phys_drawCollisionWorld: resb 0x4
physGlob: resb 0x23cd0
phys_contact_cfm: resb 0x4
phys_contact_erp: resb 0x4
phys_drawcontacts: resb 0x4
phys_jitterMaxMass: resb 0x4
phys_noIslands: resb 0x4
phys_autoDisableAngular: resb 0x4
phys_autoDisableLinear: resb 0x4
phys_autoDisableTime: resb 0x4
phys_bulletSpinScale: resb 0x4
phys_bulletUpBias: resb 0x4
phys_cfm: resb 0x1c
phys_collUseEntities: resb 0x4
phys_contact_cfm_ragdoll: resb 0x4
phys_contact_erp_ragdoll: resb 0x4
phys_csl: resb 0x4
phys_dragAngular: resb 0x4
phys_dragLinear: resb 0x4
phys_drawAwake: resb 0x4
phys_drawAwakeTooLong: resb 0x4
phys_dumpcontacts: resb 0x4
phys_erp: resb 0x4
phys_frictionScale: resb 0x4
phys_gravity: resb 0x4
phys_interBodyCollision: resb 0x4
phys_joint_cfm: resb 0x4
phys_joint_stop_cfm: resb 0x4
phys_joint_stop_erp: resb 0x4
phys_mcv: resb 0x4
phys_mcv_ragdoll: resb 0x4
phys_minImpactMomentum: resb 0x4
phys_narrowObjMaxLength: resb 0x4
phys_qsi: resb 0x4
phys_reorderConst: resb 0x4
phys_visibleTris: resb 0x4


;All cstrings:
SECTION .rdata
_cstring____awake_i:		db "   Awake: %i",0
_cstring____asleep_i:		db "   Asleep: %i",0
_cstring_maximum_number_o:		db "Maximum number of physics geoms exceeded",0ah,0
_cstring_maximum_number_o1:		db "Maximum number of physics bodies exceeded (more than %i)",0ah,0
_cstring_phys_stop:		db "phys_stop",0
_cstring_phys_go:		db "phys_go",0
_cstring_phys_runtotime:		db "Phys_RunToTime",0
_cstring_physics_out_of_h:		db "Physics: Out of hinge joints (%d max)",0ah,0
_cstring_dynent_objects:		db "Dynent Objects",0
_cstring_fx_objects:		db "Fx Objects",0
_cstring_ragdoll_objects:		db "Ragdoll Objects",0
_cstring_total_objects_aw:		db "Total Objects Awake: %i",0
_cstring_physics_out_of_a:		db "Physics: Out of angular motor joints (%d max)",0ah,0
_cstring_physics_out_of_b:		db "Physics: Out of ball and socket joints (%d max)",0ah,0
_cstring_physics_constrai:		db "Physics constraint force mixing magic parameter.",0
_cstring_phys_cfm:		db "phys_cfm",0
_cstring_physics_error_re:		db "Physics error reduction magic parameter.",0
_cstring_phys_erp:		db "phys_erp",0
_cstring_physics_maximum_:		db "Physics maximum correcting velocity magic parameter.",0
_cstring_phys_mcv:		db "phys_mcv",0
_cstring_physics_maximum_1:		db "Physics maximum correcting velocity magic parameter (for ragdoll).",0
_cstring_phys_mcv_ragdoll:		db "phys_mcv_ragdoll",0
_cstring_physics_contact_:		db "Physics contact surface level magic parameter.",0
_cstring_phys_csl:		db "phys_csl",0
_cstring_physics_gravity_:		db "Physics gravity in units/sec^2.",0
_cstring_phys_gravity:		db "phys_gravity",0
_cstring_up_bias_for_the_:		db "Up Bias for the direction of the bullet impact.",0
_cstring_phys_bulletupbia:		db "phys_bulletUpBias",0
_cstring_scale_of_the_eff:		db "Scale of the effective offset from the center of mass for the bullet impacts.",0
_cstring_phys_bulletspins:		db "phys_bulletSpinScale",0
_cstring_set_to_true_to_d:		db "Set to true to dump all constraints in next physics frame.",0
_cstring_phys_dumpcontact:		db "phys_dumpcontacts",0
_cstring_number_of_iterat:		db "Number of iterations that QuickStep performs per step.",0
_cstring_phys_qsi:		db "phys_qsi",0
_cstring_debug_draw_conta:		db "Debug draw contact points",0
_cstring_phys_drawcontact:		db "phys_drawcontacts",0
_cstring_debug_draw_colli:		db "Debug draw collision brushes and terrain triangles",0
_cstring_phys_drawcollisi:		db "phys_drawCollisionWorld",0
_cstring_debug_draw_colli1:		db "Debug draw collision geometry for each physics object",0
_cstring_phys_drawcollisi1:		db "phys_drawCollisionObj",0
_cstring_debug_draw_a_box:		db "Debug draw a box indicating which bodies are disabled",0
_cstring_phys_drawawake:		db "phys_drawAwake",0
_cstring_draw_an_indicato:		db "Draw an indicator showing where the objects are that have been awake too long.",0
_cstring_phys_drawawaketo:		db "phys_drawAwakeTooLong",0
_cstring_print_info_about:		db "Print info about the physics objects",0
_cstring_phys_drawdebugin:		db "phys_drawDebugInfo",0
_cstring_visible_triangle:		db "Visible triangles are used for collision",0
_cstring_phys_visibletris:		db "phys_visibleTris",0
_cstring_ode_solver_reord:		db "ODE solver reorder constraints",0
_cstring_phys_reordercons:		db "phys_reorderConst",0
_cstring_make_all_contact:		db "Make all contacts joints between an object and the world: no object-object contacts",0
_cstring_phys_noislands:		db "phys_noIslands",0
_cstring_disable_to_turn_:		db "Disable to turn off all inter-body collisions",0
_cstring_phys_interbodyco:		db "phys_interBodyCollision",0
_cstring_disable_to_turn_1:		db "Disable to turn off testing for collision against entities",0
_cstring_phys_colluseenti:		db "phys_collUseEntities",0
_cstring_a_body_must_have:		db "A body must have linear velocity less than this to be considered idle.",0
_cstring_phys_autodisable:		db "phys_autoDisableLinear",0
_cstring_a_body_must_have1:		db "A body must have angular velocity less than this to be considered idle.",0
_cstring_phys_autodisable1:		db "phys_autoDisableAngular",0
_cstring_the_amount_of_ti:		db "The amount of time a body must be idle for it to go to sleep.",0
_cstring_phys_autodisable2:		db "phys_autoDisableTime",0
_cstring_physics_constrai1:		db "Physics constraint force mixing magic parameter for contacts.",0
_cstring_phys_contact_cfm:		db "phys_contact_cfm",0
_cstring_physics_error_re1:		db "Physics error reduction magic parameter for contacts.",0
_cstring_phys_contact_erp:		db "phys_contact_erp",0
_cstring_phys_contact_cfm1:		db "phys_contact_cfm_ragdoll",0
_cstring_phys_contact_erp1:		db "phys_contact_erp_ragdoll",0
_cstring_physics_constrai2:		db "Physics constraint force mixing magic parameter for joints.",0
_cstring_phys_joint_cfm:		db "phys_joint_cfm",0
_cstring_physics_constrai3:		db "Physics constraint force mixing magic parameter for joints at their limits.",0
_cstring_phys_joint_stop_:		db "phys_joint_stop_cfm",0
_cstring_physics_error_re2:		db "Physics error reduction magic parameter for joints at their limits.",0
_cstring_phys_joint_stop_1:		db "phys_joint_stop_erp",0
_cstring_scales_the_amoun:		db "Scales the amount of physics friction globally.",0
_cstring_phys_frictionsca:		db "phys_frictionScale",0
_cstring_the_amount_of_li:		db "The amount of linear drag, applied globally",0
_cstring_phys_draglinear:		db "phys_dragLinear",0
_cstring_the_amount_of_an:		db "The amount of angular drag, applied globally",0
_cstring_phys_dragangular:		db "phys_dragAngular",0
_cstring_the_minimum_mome:		db "The minimum momentum required to trigger impact sounds",0
_cstring_phys_minimpactmo:		db "phys_minImpactMomentum",0
_cstring_maximum_mass_to_:		db "Maximum mass to jitter - jitter will fall off up to this mass",0
_cstring_phys_jittermaxma:		db "phys_jitterMaxMass",0
_cstring_the_radius_aroun:		db "The radius around the player within which objects get awakened when gravity changes",0
_cstring_phys_gravitychan:		db "phys_gravityChangeWakeupRadius",0
_cstring_if_a_geom_has_a_:		db "If a geom has a dimension less than this, then extra work will be done to prevent it from falling into cracks (like between the wall and the floor)",0
_cstring_phys_narrowobjma:		db "phys_narrowObjMaxLength",0



;All constant floats and doubles:
SECTION .rdata
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_00100000:		dd 0x3a83126f	; 0.001
_float_0_20000000:		dd 0x3e4ccccd	; 0.2
_float__2_00000000:		dd 0xc0000000	; -2
_float_0_00000000:		dd 0x0	; 0
_float__0_00100000:		dd 0xba83126f	; -0.001
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_1_50000000:		dd 0x3fc00000	; 1.5
_float__0_50000000:		dd 0xbf000000	; -0.5
_float_100_00000000:		dd 0x42c80000	; 100
_float_1000_00000000:		dd 0x447a0000	; 1000
_float_12_00000000:		dd 0x41400000	; 12
_float_18_00000000:		dd 0x41900000	; 18
_float__0_01000000:		dd 0xbc23d70a	; -0.01
_float_0_70710677:		dd 0x3f3504f3	; 0.707107
_float_0_01000000:		dd 0x3c23d70a	; 0.01

