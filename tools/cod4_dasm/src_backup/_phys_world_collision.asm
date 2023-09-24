;Imports of phys_world_collision:
	extern _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results
	extern _Z39Phys_CollideOrientedBrushModelWithBrushPK8cbrush_tPK7objInfoP7Results
	extern _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results
	extern _Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results
	extern _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results
	extern dGeomGetClassData
	extern _Z20CM_ClipHandleToModelj
	extern dGeomGetRotation
	extern dGeomGetPosition
	extern cm
	extern _Z35Phys_CollideCapsuleWithTriangleListPKtPA3_KfjPK7objInfoiP7Results
	extern _Z31Phys_CollideBoxWithTriangleListPKtPA3_KfjPK7objInfoiP7Results
	extern _Z46Phys_CollideOrientedBrushModelWithTriangleListPKtPA3_KfiPK7objInfoiP7Results
	extern _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results
	extern _Z36Phys_CollideCylinderWithTriangleListPKtPA3_KfjPK7objInfoiP7Results
	extern phys_narrowObjMaxLength
	extern dGeomGetBody
	extern dBodyGetPosition
	extern _Z15MatrixTransposePA3_KfPA3_f
	extern dGeomGetClass
	extern _Z16CM_BoxLeafnums_rP10leafList_si
	extern _Z12Sys_GetValuei
	extern _Z16RadiusFromBoundsPKfS0_
	extern phys_collUseEntities
	extern _Z15CM_AreaEntitiesPKfS0_Piii
	extern _Z16MatrixIdentity33PA3_f
	extern g_entities
	extern ODE_CollideCapsuleBox
	extern dGeomBoxGetLengths
	extern ODE_CreateGeom
	extern dCreateGeomClass
	extern dInfiniteAABB
	extern Phys_GetWorldGeom
	extern physGlob
	extern dInitUserGeom

;Exports of phys_world_collision:
	global _Z20Phys_TestGeomInBrushPK8cbrush_tPv
	global _Z17dGetColliderWorldi
	global _Z20Phys_GetColliderNulli
	global _Z22Phys_GetBrushmodelAABBP6dxGeomPf
	global _Z17Phys_GetBrushAABBP6dxGeomPf
	global _Z20Phys_GetCylinderAABBP6dxGeomPf
	global _Z19Phys_GetCapsuleAABBP6dxGeomPf
	global _Z31CM_PositionGeomTestInAabbTree_rP17CollisionAabbTreePK7objInfoP7Results
	global _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi
	global _Z20Phys_CreateBrushGeomP7dxSpaceP6dxBodyPK8cbrush_tPKf
	global _Z22Phys_CreateCapsuleGeomP7dxSpaceP6dxBodyPK17GeomStateCylinder
	global _Z23Phys_CreateCylinderGeomP7dxSpaceP6dxBodyPK17GeomStateCylinder
	global _Z23Phys_InitBrushGeomClassv
	global _Z23Phys_InitWorldCollisionv
	global _Z25Phys_CreateBrushmodelGeomP7dxSpaceP6dxBodytPKf
	global _Z25Phys_InitCapsuleGeomClassv
	global _Z26Phys_InitCylinderGeomClassv
	global _Z28Phys_InitBrushmodelGeomClassv
	global _Z29Phys_GetSurfaceFlagsFromBrushPK8cbrush_ti
	global _Z32CM_ForEachBrushInLeafBrushNode_rP16cLeafBrushNode_sPKfS2_hiPFvPK8cbrush_tPvES6_


SECTION .text


;Phys_TestGeomInBrush(cbrush_t const*, void*)
_Z20Phys_TestGeomInBrushPK8cbrush_tPv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov ecx, [ebp+0xc]
	mov edx, [ecx+0x4]
	mov eax, [edx+0x4]
	cmp eax, [edx+0x8]
	jge _Z20Phys_TestGeomInBrushPK8cbrush_tPv_10
	mov ecx, [ecx]
	cmp dword [ecx+0x34], 0x5
	jbe _Z20Phys_TestGeomInBrushPK8cbrush_tPv_20
_Z20Phys_TestGeomInBrushPK8cbrush_tPv_10:
	leave
	ret
_Z20Phys_TestGeomInBrushPK8cbrush_tPv_20:
	mov eax, [ecx+0x34]
	jmp dword [eax*4+_Z20Phys_TestGeomInBrushPK8cbrush_tPv_jumptab_0]
_Z20Phys_TestGeomInBrushPK8cbrush_tPv_30:
	mov [esp+0x8], edx
	mov [esp+0x4], ecx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z24Phys_CollideBoxWithBrushPK8cbrush_tPK7objInfoP7Results
	leave
	ret
_Z20Phys_TestGeomInBrushPK8cbrush_tPv_40:
	mov [esp+0x8], edx
	mov [esp+0x4], ecx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z39Phys_CollideOrientedBrushModelWithBrushPK8cbrush_tPK7objInfoP7Results
	leave
	ret
_Z20Phys_TestGeomInBrushPK8cbrush_tPv_50:
	mov [esp+0xc], edx
	mov [esp+0x8], ecx
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [ecx+0x8c]
	mov [esp], eax
	call _Z34Phys_CollideOrientedBrushWithBrushPK8cbrush_tS1_PK7objInfoP7Results
	leave
	ret
_Z20Phys_TestGeomInBrushPK8cbrush_tPv_60:
	mov [esp+0x8], edx
	mov [esp+0x4], ecx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results
	leave
	ret
_Z20Phys_TestGeomInBrushPK8cbrush_tPv_70:
	mov [esp+0x8], edx
	mov [esp+0x4], ecx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results
	leave
	ret
	nop
	
	
_Z20Phys_TestGeomInBrushPK8cbrush_tPv_jumptab_0:
	dd _Z20Phys_TestGeomInBrushPK8cbrush_tPv_10
	dd _Z20Phys_TestGeomInBrushPK8cbrush_tPv_30
	dd _Z20Phys_TestGeomInBrushPK8cbrush_tPv_40
	dd _Z20Phys_TestGeomInBrushPK8cbrush_tPv_50
	dd _Z20Phys_TestGeomInBrushPK8cbrush_tPv_60
	dd _Z20Phys_TestGeomInBrushPK8cbrush_tPv_70


;dGetColliderWorld(int)
_Z17dGetColliderWorldi:
	push ebp
	mov ebp, esp
	mov eax, _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi
	pop ebp
	ret


;Phys_GetColliderNull(int)
_Z20Phys_GetColliderNulli:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	ret
	nop


;Phys_GetBrushmodelAABB(dxGeom*, float*)
_Z22Phys_GetBrushmodelAABBP6dxGeomPf:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov [esp], eax
	call dGeomGetClassData
	movzx eax, word [eax]
	mov [esp], eax
	call _Z20CM_ClipHandleToModelj
	mov edx, [eax+0x18]
	xor edx, 0x80000000
	mov [ebx], edx
	mov [ebx+0x4], edx
	mov [ebx+0x8], edx
	mov eax, [eax+0x18]
	mov [ebx+0xc], eax
	mov [ebx+0x10], eax
	mov [ebx+0x14], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;Phys_GetBrushAABB(dxGeom*, float*)
_Z17Phys_GetBrushAABBP6dxGeomPf:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	mov edx, 0xff7fffff
	mov [eax], edx
	mov [eax+0x4], edx
	mov [eax+0x8], edx
	mov edx, 0x7f7fffff
	mov [eax+0xc], edx
	mov [eax+0x10], edx
	mov [eax+0x14], edx
	pop ebp
	ret
	nop


;Phys_GetCylinderAABB(dxGeom*, float*)
_Z20Phys_GetCylinderAABBP6dxGeomPf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov eax, [ebp+0x8]
	mov [esp], eax
	call dGeomGetClassData
	mov [ebp-0x5c], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call dGeomGetRotation
	mov esi, eax
	xor edi, edi
_Z20Phys_GetCylinderAABBP6dxGeomPf_20:
	mov ecx, esi
	lea edx, [ebp+edi*4-0x54]
	mov ebx, 0x3
_Z20Phys_GetCylinderAABBP6dxGeomPf_10:
	mov eax, [ecx]
	mov [edx], eax
	add ecx, 0x4
	add edx, 0xc
	sub ebx, 0x1
	jnz _Z20Phys_GetCylinderAABBP6dxGeomPf_10
	add edi, 0x1
	add esi, 0x10
	cmp edi, 0x3
	jnz _Z20Phys_GetCylinderAABBP6dxGeomPf_20
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call dGeomGetPosition
	mov edx, [eax]
	mov [ebp-0x24], edx
	mov edx, [eax+0x4]
	mov [ebp-0x20], edx
	mov eax, [eax+0x8]
	mov [ebp-0x1c], eax
	mov eax, [ebp-0x5c]
	mov eax, [eax]
	mov [ebp-0x6c], eax
	mov esi, eax
	sub esi, 0x1
	mov ecx, [ebp-0x5c]
	mov edx, [ecx+0x8]
	mov [ebp+esi*4-0x30], edx
	mov ebx, [ecx+0x4]
	mov edi, 0x55555556
	imul edi
	mov ecx, [ebp-0x6c]
	sar ecx, 0x1f
	sub edx, ecx
	lea edx, [edx+edx*2]
	mov eax, [ebp-0x6c]
	sub eax, edx
	mov [ebp+eax*4-0x30], ebx
	mov edx, [ebp-0x6c]
	add edx, 0x1
	mov [ebp-0x6c], edx
	mov eax, edx
	imul edi
	mov ecx, edx
	mov eax, [ebp-0x6c]
	cdq
	sub ecx, edx
	lea edx, [ecx+ecx*2]
	sub eax, edx
	mov [ebp-0x6c], eax
	mov [ebp+eax*4-0x30], ebx
	mov edi, 0x1
	movss xmm3, dword [_data16_7fffffff]
	mov ebx, [ebp+0xc]
	add ebx, 0x8
_Z20Phys_GetCylinderAABBP6dxGeomPf_30:
	lea eax, [edi*4]
	movss xmm1, dword [ebp+eax-0x34]
	movaps xmm2, xmm1
	mulss xmm2, [ebp+esi*4-0x54]
	andps xmm2, xmm3
	movaps xmm0, xmm1
	mulss xmm0, [ebp+esi*4-0x48]
	andps xmm0, xmm3
	addss xmm2, xmm0
	mulss xmm1, [ebp+esi*4-0x3c]
	andps xmm1, xmm3
	addss xmm2, xmm1
	movss xmm1, dword [ebp+eax-0x28]
	movaps xmm0, xmm1
	subss xmm0, xmm2
	movss [ebx-0x8], xmm0
	addss xmm2, xmm1
	movss [ebx-0x4], xmm2
	lea ecx, [esi+0x1]
	mov eax, 0x55555556
	imul ecx
	mov eax, ecx
	sar eax, 0x1f
	sub edx, eax
	lea edx, [edx+edx*2]
	mov esi, ecx
	sub esi, edx
	add edi, 0x1
	add ebx, 0x8
	cmp edi, 0x4
	jnz _Z20Phys_GetCylinderAABBP6dxGeomPf_30
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Phys_GetCapsuleAABB(dxGeom*, float*)
_Z19Phys_GetCapsuleAABBP6dxGeomPf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov eax, [ebp+0x8]
	mov [esp], eax
	call dGeomGetClassData
	mov [ebp-0x5c], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call dGeomGetRotation
	mov esi, eax
	xor edi, edi
_Z19Phys_GetCapsuleAABBP6dxGeomPf_20:
	mov ecx, esi
	lea edx, [ebp+edi*4-0x54]
	mov ebx, 0x3
_Z19Phys_GetCapsuleAABBP6dxGeomPf_10:
	mov eax, [ecx]
	mov [edx], eax
	add ecx, 0x4
	add edx, 0xc
	sub ebx, 0x1
	jnz _Z19Phys_GetCapsuleAABBP6dxGeomPf_10
	add edi, 0x1
	add esi, 0x10
	cmp edi, 0x3
	jnz _Z19Phys_GetCapsuleAABBP6dxGeomPf_20
	mov eax, [ebp+0x8]
	mov [esp], eax
	call dGeomGetPosition
	mov edx, [eax]
	mov [ebp-0x24], edx
	mov edx, [eax+0x4]
	mov [ebp-0x20], edx
	mov eax, [eax+0x8]
	mov [ebp-0x1c], eax
	mov eax, [ebp-0x5c]
	mov ecx, [eax]
	lea esi, [ecx-0x1]
	movss xmm1, dword [eax+0x4]
	movaps xmm0, xmm1
	addss xmm0, xmm1
	addss xmm0, [eax+0x8]
	movss [ebp+esi*4-0x30], xmm0
	mov ebx, 0x55555556
	mov eax, ecx
	imul ebx
	mov eax, ecx
	sar eax, 0x1f
	sub edx, eax
	lea edx, [edx+edx*2]
	mov eax, ecx
	sub eax, edx
	movss [ebp+eax*4-0x30], xmm1
	add ecx, 0x1
	mov eax, ecx
	imul ebx
	mov eax, ecx
	sar eax, 0x1f
	sub edx, eax
	lea eax, [edx+edx*2]
	sub ecx, eax
	movss [ebp+ecx*4-0x30], xmm1
	mov di, 0x1
	movss xmm3, dword [_data16_7fffffff]
	mov ebx, [ebp+0xc]
	add ebx, 0x8
_Z19Phys_GetCapsuleAABBP6dxGeomPf_30:
	lea eax, [edi*4]
	movss xmm1, dword [ebp+eax-0x34]
	movaps xmm2, xmm1
	mulss xmm2, [ebp+esi*4-0x54]
	andps xmm2, xmm3
	movaps xmm0, xmm1
	mulss xmm0, [ebp+esi*4-0x48]
	andps xmm0, xmm3
	addss xmm2, xmm0
	mulss xmm1, [ebp+esi*4-0x3c]
	andps xmm1, xmm3
	addss xmm2, xmm1
	movss xmm1, dword [ebp+eax-0x28]
	movaps xmm0, xmm1
	subss xmm0, xmm2
	movss [ebx-0x8], xmm0
	addss xmm2, xmm1
	movss [ebx-0x4], xmm2
	lea ecx, [esi+0x1]
	mov eax, 0x55555556
	imul ecx
	mov eax, ecx
	sar eax, 0x1f
	sub edx, eax
	lea edx, [edx+edx*2]
	mov esi, ecx
	sub esi, edx
	add edi, 0x1
	add ebx, 0x8
	cmp edi, 0x4
	jnz _Z19Phys_GetCapsuleAABBP6dxGeomPf_30
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;CM_PositionGeomTestInAabbTree_r(CollisionAabbTree*, objInfo const*, Results*)
_Z31CM_PositionGeomTestInAabbTree_rP17CollisionAabbTreePK7objInfoP7Results:
_Z31CM_PositionGeomTestInAabbTree_rP17CollisionAabbTreePK7objInfoP7Results_40:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov esi, eax
	mov ebx, edx
	mov edi, ecx
	lea ecx, [eax+0xc]
	lea eax, [edx+0x38]
	movss xmm5, dword [eax+0x4]
	subss xmm5, [esi+0x4]
	movss xmm6, dword [eax+0x8]
	subss xmm6, [esi+0x8]
	lea edx, [edx+0x18]
	lea eax, [ebx+0x24]
	movss xmm4, dword [eax+0x4]
	subss xmm4, [edx+0x4]
	movss xmm1, dword [_float_0_50000000]
	mulss xmm4, xmm1
	addss xmm4, [ecx+0x4]
	movss xmm3, dword [eax+0x8]
	subss xmm3, [edx+0x8]
	mulss xmm3, xmm1
	addss xmm3, [ecx+0x8]
	movss xmm0, dword [ebx+0x24]
	subss xmm0, [ebx+0x18]
	mulss xmm0, xmm1
	addss xmm0, [esi+0xc]
	movss xmm1, dword [ebx+0x38]
	subss xmm1, [esi]
	movss xmm2, dword [_data16_7fffffff]
	andps xmm1, xmm2
	ucomiss xmm1, xmm0
	ja _Z31CM_PositionGeomTestInAabbTree_rP17CollisionAabbTreePK7objInfoP7Results_10
	andps xmm5, xmm2
	ucomiss xmm5, xmm4
	jbe _Z31CM_PositionGeomTestInAabbTree_rP17CollisionAabbTreePK7objInfoP7Results_20
_Z31CM_PositionGeomTestInAabbTree_rP17CollisionAabbTreePK7objInfoP7Results_10:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z31CM_PositionGeomTestInAabbTree_rP17CollisionAabbTreePK7objInfoP7Results_20:
	andps xmm6, xmm2
	ucomiss xmm6, xmm3
	ja _Z31CM_PositionGeomTestInAabbTree_rP17CollisionAabbTreePK7objInfoP7Results_10
	movzx edx, word [esi+0x1a]
	test dx, dx
	jz _Z31CM_PositionGeomTestInAabbTree_rP17CollisionAabbTreePK7objInfoP7Results_30
	mov eax, [esi+0x1c]
	shl eax, 0x5
	mov [ebp-0x20], eax
	mov eax, cm
	mov ecx, [eax+0x80]
	add [ebp-0x20], ecx
	test dx, dx
	jz _Z31CM_PositionGeomTestInAabbTree_rP17CollisionAabbTreePK7objInfoP7Results_10
	mov dword [ebp-0x24], 0x0
_Z31CM_PositionGeomTestInAabbTree_rP17CollisionAabbTreePK7objInfoP7Results_50:
	mov ecx, edi
	mov edx, ebx
	mov eax, [ebp-0x20]
	call _Z31CM_PositionGeomTestInAabbTree_rP17CollisionAabbTreePK7objInfoP7Results_40
	add dword [ebp-0x24], 0x1
	add dword [ebp-0x20], 0x20
	movzx eax, word [esi+0x1a]
	cmp eax, [ebp-0x24]
	jg _Z31CM_PositionGeomTestInAabbTree_rP17CollisionAabbTreePK7objInfoP7Results_50
	jmp _Z31CM_PositionGeomTestInAabbTree_rP17CollisionAabbTreePK7objInfoP7Results_10
_Z31CM_PositionGeomTestInAabbTree_rP17CollisionAabbTreePK7objInfoP7Results_30:
	movsx ecx, word [ebx+0x8]
	mov edx, [esi+0x1c]
	mov eax, [ebx+0xc]
	lea eax, [eax+edx*4]
	cmp ecx, [eax]
	jz _Z31CM_PositionGeomTestInAabbTree_rP17CollisionAabbTreePK7objInfoP7Results_10
	mov [eax], ecx
	lea edx, [edx+edx*2]
	mov ecx, cm
	mov eax, [ecx+0x78]
	lea ecx, [eax+edx*4]
	mov eax, [ecx+0x4]
	lea eax, [eax+eax*2]
	mov [ebp-0x2c], eax
	mov eax, cm
	mov edx, [eax+0x64]
	mov eax, [ebp-0x2c]
	lea edx, [edx+eax*2]
	mov [ebp-0x1c], edx
	movzx eax, word [esi+0x18]
	mov esi, cm
	mov edx, [esi+0x1c]
	lea eax, [eax+eax*8]
	mov edx, [edx+eax*8+0x40]
	cmp dword [ebx+0x34], 0x5
	ja _Z31CM_PositionGeomTestInAabbTree_rP17CollisionAabbTreePK7objInfoP7Results_10
	mov eax, [ebx+0x34]
	jmp dword [eax*4+_Z31CM_PositionGeomTestInAabbTree_rP17CollisionAabbTreePK7objInfoP7Results_jumptab_0]
_Z31CM_PositionGeomTestInAabbTree_rP17CollisionAabbTreePK7objInfoP7Results_100:
	mov [esp+0x14], edi
	mov [esp+0x10], edx
	mov [esp+0xc], ebx
	movzx eax, byte [ecx]
	mov [esp+0x8], eax
	mov edx, cm
	mov eax, [edx+0x5c]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x1c]
	mov [esp], ecx
	call _Z35Phys_CollideCapsuleWithTriangleListPKtPA3_KfjPK7objInfoiP7Results
	jmp _Z31CM_PositionGeomTestInAabbTree_rP17CollisionAabbTreePK7objInfoP7Results_10
_Z31CM_PositionGeomTestInAabbTree_rP17CollisionAabbTreePK7objInfoP7Results_60:
	mov [esp+0x14], edi
	mov [esp+0x10], edx
	mov [esp+0xc], ebx
	movzx eax, byte [ecx]
	mov [esp+0x8], eax
	mov edx, cm
	mov eax, [edx+0x5c]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x1c]
	mov [esp], ecx
	call _Z31Phys_CollideBoxWithTriangleListPKtPA3_KfjPK7objInfoiP7Results
	jmp _Z31CM_PositionGeomTestInAabbTree_rP17CollisionAabbTreePK7objInfoP7Results_10
_Z31CM_PositionGeomTestInAabbTree_rP17CollisionAabbTreePK7objInfoP7Results_70:
	mov [esp+0x14], edi
	mov [esp+0x10], edx
	mov [esp+0xc], ebx
	movzx eax, byte [ecx]
	mov [esp+0x8], eax
	mov esi, cm
	mov eax, [esi+0x5c]
	mov [esp+0x4], eax
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z46Phys_CollideOrientedBrushModelWithTriangleListPKtPA3_KfiPK7objInfoiP7Results
	jmp _Z31CM_PositionGeomTestInAabbTree_rP17CollisionAabbTreePK7objInfoP7Results_10
_Z31CM_PositionGeomTestInAabbTree_rP17CollisionAabbTreePK7objInfoP7Results_80:
	mov [esp+0x18], edi
	mov [esp+0x14], edx
	mov [esp+0x10], ebx
	movzx eax, byte [ecx]
	mov [esp+0xc], eax
	mov edx, cm
	mov eax, [edx+0x5c]
	mov [esp+0x8], eax
	mov ecx, [ebp-0x1c]
	mov [esp+0x4], ecx
	mov eax, [ebx+0x8c]
	mov [esp], eax
	call _Z41Phys_CollideOrientedBrushWithTriangleListPK8cbrush_tPKtPA3_KfiPK7objInfoiP7Results
	jmp _Z31CM_PositionGeomTestInAabbTree_rP17CollisionAabbTreePK7objInfoP7Results_10
_Z31CM_PositionGeomTestInAabbTree_rP17CollisionAabbTreePK7objInfoP7Results_90:
	mov [esp+0x14], edi
	mov [esp+0x10], edx
	mov [esp+0xc], ebx
	movzx eax, byte [ecx]
	mov [esp+0x8], eax
	mov esi, cm
	mov eax, [esi+0x5c]
	mov [esp+0x4], eax
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z36Phys_CollideCylinderWithTriangleListPKtPA3_KfjPK7objInfoiP7Results
	jmp _Z31CM_PositionGeomTestInAabbTree_rP17CollisionAabbTreePK7objInfoP7Results_10
	add [eax], al
	
	
_Z31CM_PositionGeomTestInAabbTree_rP17CollisionAabbTreePK7objInfoP7Results_jumptab_0:
	dd _Z31CM_PositionGeomTestInAabbTree_rP17CollisionAabbTreePK7objInfoP7Results_10
	dd _Z31CM_PositionGeomTestInAabbTree_rP17CollisionAabbTreePK7objInfoP7Results_60
	dd _Z31CM_PositionGeomTestInAabbTree_rP17CollisionAabbTreePK7objInfoP7Results_70
	dd _Z31CM_PositionGeomTestInAabbTree_rP17CollisionAabbTreePK7objInfoP7Results_80
	dd _Z31CM_PositionGeomTestInAabbTree_rP17CollisionAabbTreePK7objInfoP7Results_90
	dd _Z31CM_PositionGeomTestInAabbTree_rP17CollisionAabbTreePK7objInfoP7Results_100


;dCollideWorldGeom(dxGeom*, dxGeom*, int, dContactGeom*, int)
_Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1a5c
	mov eax, phys_narrowObjMaxLength
	mov eax, [eax]
	add eax, 0xc
	mov [ebp-0x1a10], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call dGeomGetBody
	mov [esp], eax
	call dBodyGetPosition
	mov edx, [eax]
	mov [ebp-0x158], edx
	mov edx, [eax+0x4]
	mov [ebp-0x154], edx
	mov eax, [eax+0x8]
	mov [ebp-0x150], eax
	mov edx, [ebp+0xc]
	mov [esp], edx
	call dGeomGetPosition
	mov edx, [eax]
	mov [ebp-0x1b8], edx
	mov edx, [eax+0x4]
	mov [ebp-0x1b4], edx
	mov eax, [eax+0x8]
	mov [ebp-0x1b0], eax
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call dGeomGetRotation
	mov esi, eax
	mov dword [ebp-0x1a0c], 0x0
	lea edi, [ebp-0x1b0]
_Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_20:
	mov ecx, esi
	lea edx, [edi+0x4]
	xor ebx, ebx
_Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_10:
	mov eax, [ecx]
	mov [edx], eax
	add ebx, 0x1
	add ecx, 0x4
	add edx, 0xc
	cmp ebx, 0x3
	jnz _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_10
	add dword [ebp-0x1a0c], 0x1
	add edi, 0x4
	add esi, 0x10
	cmp dword [ebp-0x1a0c], 0x3
	jnz _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_20
	lea eax, [ebp-0x188]
	mov [esp+0x4], eax
	lea eax, [ebp-0x1ac]
	mov [esp], eax
	call _Z15MatrixTransposePA3_KfPA3_f
	mov ebx, [ebp+0xc]
	mov [esp], ebx
	call dGeomGetClass
	cmp eax, 0xe
	ja _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_30
	jmp dword [eax*4+_Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_jumptab_0]
_Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_360:
	mov dword [ebp-0x1bc], 0x5
	mov eax, [ebp+0xc]
	mov [esp], eax
	call dGeomGetClassData
	mov ecx, eax
	mov eax, [eax]
	mov [ebp-0x1ec], eax
	mov eax, [ecx+0x4]
	mov [ebp-0x164], eax
	mov eax, [ecx+0x4]
	mov [ebp-0x160], eax
	mov eax, [ecx+0x8]
	mov [ebp-0x15c], eax
	mov edx, 0x3
_Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_50:
	mov eax, 0x3
_Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_40:
	sub eax, 0x1
	jnz _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_40
	sub edx, 0x1
	jnz _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_50
	movss xmm4, dword [ecx+0x4]
	movaps xmm3, xmm4
	addss xmm3, xmm4
	movaps xmm2, xmm3
	addss xmm2, [ecx+0x8]
	movaps xmm1, xmm4
	subss xmm1, xmm2
	pxor xmm0, xmm0
	cmpss xmm0, xmm1, 0x2
	movaps xmm1, xmm4
	andps xmm1, xmm0
	movaps xmm4, xmm0
	andnps xmm4, xmm2
	orps xmm4, xmm1
	movss [ebp-0x30], xmm4
	movss [ebp-0x2c], xmm4
	movss [ebp-0x28], xmm4
	mov edx, [ebp-0x1a10]
	movss xmm0, dword [edx]
	ucomiss xmm0, xmm3
	seta byte [ebp-0x14c]
_Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_30:
	mov ecx, [ebp-0x1b8]
	mov [ebp-0xd8], ecx
	mov edx, [ebp-0x1b4]
	mov [ebp-0xd4], edx
	mov eax, [ebp-0x1b0]
	mov [ebp-0xd0], eax
	mov [ebp-0xcc], ecx
	mov [ebp-0xc8], edx
	mov [ebp-0xc4], eax
	xor edx, edx
	movss xmm2, dword [_float_1_00000000]
	lea eax, [ebp-0xcc]
_Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_60:
	movss xmm1, dword [ebp+edx*4-0x30]
	addss xmm1, xmm2
	movss xmm0, dword [eax-0xc]
	subss xmm0, xmm1
	movss [eax-0xc], xmm0
	addss xmm1, [eax]
	movss [eax], xmm1
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x3
	jnz _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_60
	mov eax, [ebp-0xd8]
	mov [ebp-0x1d8], eax
	mov eax, [ebp-0xd4]
	mov [ebp-0x1d4], eax
	mov eax, [ebp-0xd0]
	mov [ebp-0x1d0], eax
	mov eax, [ebp-0xcc]
	mov [ebp-0x1cc], eax
	mov eax, [ebp-0xc8]
	mov [ebp-0x1c8], eax
	mov eax, [ebp-0xc4]
	mov [ebp-0x1c4], eax
	mov dword [ebp-0xe8], 0x0
	mov dword [ebp-0xe4], 0x400
	lea eax, [ebp-0x9f0]
	mov [ebp-0xdc], eax
	mov dword [ebp-0xc0], 0x0
	mov dword [ebp-0xe0], 0x0
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0xe8]
	mov [esp], eax
	call _Z16CM_BoxLeafnums_rP10leafList_si
	mov ecx, [ebp-0xe8]
	test ecx, ecx
	jnz _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_70
	xor eax, eax
_Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_190:
	add esp, 0x1a5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_70:
	mov dword [ebp-0x1f0], 0x2806c91
	mov ecx, [ebp+0x14]
	mov [ebp-0x5c], ecx
	mov dword [ebp-0x58], 0x0
	movzx eax, word [ebp+0x10]
	mov [ebp-0x54], eax
	mov ebx, [ebp+0x18]
	mov [ebp-0x50], ebx
	mov dword [esp], 0x3
	call _Z12Sys_GetValuei
	mov edx, [eax]
	add edx, 0x1
	mov [eax], edx
	mov [ebp-0x1e8], edx
	mov edx, [eax+0x4]
	mov [ebp-0x1e4], edx
	mov edx, [eax+0x8]
	mov [ebp-0x1e0], edx
	mov eax, [eax+0xc]
	mov [ebp-0x1dc], eax
	movss xmm0, dword [ebp-0x1d8]
	subss xmm0, [ebp-0x1b8]
	movss [ebp-0x74], xmm0
	lea edx, [ebp-0x74]
	movss xmm0, dword [ebp-0x1d4]
	subss xmm0, [ebp-0x1b4]
	movss [ebp-0x70], xmm0
	movss xmm0, dword [ebp-0x1d0]
	subss xmm0, [ebp-0x1b0]
	movss [ebp-0x6c], xmm0
	movss xmm0, dword [ebp-0x1cc]
	subss xmm0, [ebp-0x1b8]
	movss [ebp-0x68], xmm0
	lea eax, [ebp-0x68]
	movss xmm0, dword [ebp-0x1c8]
	subss xmm0, [ebp-0x1b4]
	movss [ebp-0x64], xmm0
	movss xmm0, dword [ebp-0x1c4]
	subss xmm0, [ebp-0x1b0]
	movss [ebp-0x60], xmm0
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z16RadiusFromBoundsPKfS0_
	fstp dword [ebp-0x1c0]
	mov edx, [ebp-0xe8]
	test edx, edx
	jle _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_80
	mov dword [ebp-0x1a14], 0x0
	mov eax, cm
	mov [ebp-0x1a18], eax
	mov edx, [ebp-0x1a14]
	mov ecx, eax
_Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_160:
	movzx eax, word [ebp+edx*2-0x9f0]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*2]
	mov eax, [ecx+0x3c]
	lea edx, [eax+edx*4]
	mov [ebp-0x1a08], edx
	mov edi, [ebp-0x1f0]
	test [edx+0x4], edi
	jz _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_90
	mov eax, edx
	xor ecx, ecx
	xor edx, edx
_Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_110:
	movss xmm0, dword [eax+0xc]
	ucomiss xmm0, [edx+ebp-0x1cc]
	jae _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_100
	movss xmm0, dword [edx+ebp-0x1d8]
	ucomiss xmm0, [eax+0x18]
	jae _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_100
	add ecx, 0x1
	add edx, 0x4
	add eax, 0x4
	cmp ecx, 0x3
	jnz _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_110
	lea ebx, [ebp-0x1f0]
	mov [ebp-0x24], ebx
	lea eax, [ebp-0x5c]
	mov [ebp-0x20], eax
	lea eax, [ebp-0x24]
	mov [esp+0x18], eax
	mov dword [esp+0x14], _Z20Phys_TestGeomInBrushPK8cbrush_tPv
	mov [esp+0x10], edi
	mov dword [esp+0xc], 0x1
	lea eax, [ebp-0x1cc]
	mov [esp+0x8], eax
	lea eax, [ebp-0x1d8]
	mov [esp+0x4], eax
	mov edx, [ebp-0x1a08]
	mov eax, [edx+0x24]
	lea eax, [eax+eax*4]
	mov ecx, cm
	mov edx, [ecx+0x44]
	lea eax, [edx+eax*4]
	mov [esp], eax
	call _Z32CM_ForEachBrushInLeafBrushNode_rP16cLeafBrushNode_sPKfS2_hiPFvPK8cbrush_tPvES6_
	mov edi, [ebp-0x1f0]
_Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_100:
	mov ebx, [ebp-0x1a08]
_Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_170:
	test [ebx+0x8], edi
	jz _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_120
	movzx eax, word [ebx+0x2]
	mov [ebp-0x1a2c], eax
	test eax, eax
	jle _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_120
	xor esi, esi
	jmp _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_130
_Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_140:
	add esi, 0x1
	cmp [ebp-0x1a2c], esi
	jle _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_120
_Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_150:
	mov edi, [ebp-0x1f0]
_Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_130:
	mov edx, [ebp-0x1a08]
	movzx eax, word [edx]
	lea ebx, [esi+eax]
	shl ebx, 0x5
	mov ecx, [ebp-0x1a18]
	add ebx, [ecx+0x80]
	movzx eax, word [ebx+0x18]
	mov edx, [ecx+0x1c]
	lea eax, [eax+eax*8]
	test [edx+eax*8+0x44], edi
	jz _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_140
	lea ecx, [ebp-0x5c]
	lea edx, [ebp-0x1f0]
	mov eax, ebx
	call _Z31CM_PositionGeomTestInAabbTree_rP17CollisionAabbTreePK7objInfoP7Results
	mov ebx, [ebp-0x1a08]
	movzx ebx, word [ebx+0x2]
	mov [ebp-0x1a2c], ebx
	add esi, 0x1
	cmp [ebp-0x1a2c], esi
	jg _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_150
_Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_120:
	add dword [ebp-0x1a14], 0x1
	mov eax, [ebp-0x1a14]
	cmp eax, [ebp-0xe8]
	jge _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_80
	mov edx, eax
	mov ecx, cm
	jmp _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_160
_Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_90:
	mov ebx, edx
	jmp _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_170
_Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_80:
	mov eax, phys_collUseEntities
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_180
_Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_210:
	mov eax, [ebp-0x58]
_Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_270:
	test eax, eax
	jle _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_190
	xor ecx, ecx
	xor edx, edx
_Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_200:
	mov eax, [ebp-0x5c]
	mov ebx, [ebp+0x8]
	mov [eax+edx+0x24], ebx
	mov eax, [ebp-0x5c]
	mov ebx, [ebp+0xc]
	mov [eax+edx+0x28], ebx
	add ecx, 0x1
	mov eax, [ebp-0x58]
	add edx, 0x30
	cmp ecx, eax
	jl _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_200
	add esp, 0x1a5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_180:
	mov eax, [ebp-0x1f0]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x400
	lea eax, [ebp-0x19f0]
	mov [esp+0x8], eax
	lea eax, [ebp-0x1cc]
	mov [esp+0x4], eax
	lea eax, [ebp-0x1d8]
	mov [esp], eax
	call _Z15CM_AreaEntitiesPKfS0_Piii
	mov [ebp-0x1a04], eax
	lea edx, [ebp-0xbc]
	mov [esp], edx
	call _Z16MatrixIdentity33PA3_f
	mov eax, [ebp-0x1a04]
	test eax, eax
	jle _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_210
	mov dword [ebp-0x1a00], 0x0
	movss xmm3, dword [_float_0_50000000]
	mov ecx, [ebp-0x1a00]
_Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_260:
	mov edx, [ebp+ecx*4-0x19f0]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	mov ecx, eax
	shl ecx, 0x5
	add eax, ecx
	add eax, edx
	add eax, g_entities
	lea edx, [eax+0x130]
	lea ecx, [eax+0x124]
	movss xmm0, dword [eax+0x130]
	addss xmm0, [eax+0x124]
	mulss xmm0, xmm3
	movss [ebp-0x24], xmm0
	movss xmm0, dword [edx+0x4]
	addss xmm0, [ecx+0x4]
	mulss xmm0, xmm3
	movss [ebp-0x20], xmm0
	movss xmm0, dword [edx+0x8]
	addss xmm0, [ecx+0x8]
	mulss xmm0, xmm3
	movss [ebp-0x1c], xmm0
	movss xmm1, dword [eax+0x130]
	subss xmm1, [eax+0x124]
	movss xmm2, dword [eax+0x138]
	subss xmm2, [eax+0x12c]
	subss xmm2, xmm1
	movss xmm0, dword [ebp-0x164]
	addss xmm0, xmm0
	movss [ebp-0x3c], xmm0
	movss xmm0, dword [ebp-0x160]
	addss xmm0, xmm0
	movss [ebp-0x38], xmm0
	movss xmm0, dword [ebp-0x15c]
	addss xmm0, xmm0
	movss [ebp-0x34], xmm0
	xor edi, edi
	xor esi, esi
_Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_230:
	mov ecx, esi
	lea edx, [ebp+edi*4-0xbc]
	xor ebx, ebx
_Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_220:
	mov eax, [edx]
	mov [ebp+ecx-0x148], eax
	add ebx, 0x1
	add ecx, 0x4
	add edx, 0xc
	cmp ebx, 0x3
	jnz _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_220
	mov dword [esi+ebp-0x13c], 0x0
	add edi, 0x1
	add esi, 0x10
	cmp edi, 0x3
	jnz _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_230
	mov dword [ebp-0x19fc], 0x0
	xor di, di
	lea esi, [ebp-0x1f0]
	add esi, 0x40
_Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_250:
	mov ecx, edi
	lea edx, [esi+0x4]
	xor ebx, ebx
_Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_240:
	mov eax, [edx]
	mov [ebp+ecx-0x118], eax
	add ebx, 0x1
	add ecx, 0x4
	add edx, 0xc
	cmp ebx, 0x3
	jnz _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_240
	mov dword [edi+ebp-0x10c], 0x0
	add dword [ebp-0x19fc], 0x1
	add esi, 0x4
	add edi, 0x10
	cmp dword [ebp-0x19fc], 0x3
	jnz _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_250
	mov ebx, [ebp-0x58]
	mov eax, [ebp-0x50]
	mov [esp+0x24], eax
	lea eax, [ebx+ebx*2]
	shl eax, 0x4
	add eax, [ebp-0x5c]
	mov [esp+0x20], eax
	mov eax, [ebp-0x54]
	sub eax, ebx
	mov [esp+0x1c], eax
	movss [esp+0x18], xmm2
	mulss xmm1, xmm3
	movss [esp+0x14], xmm1
	lea eax, [ebp-0x148]
	mov [esp+0x10], eax
	lea edx, [ebp-0x24]
	mov [esp+0xc], edx
	lea ecx, [ebp-0x3c]
	mov [esp+0x8], ecx
	lea eax, [ebp-0x118]
	mov [esp+0x4], eax
	lea edx, [ebp-0x1b8]
	mov [esp], edx
	movss [ebp-0x1a28], xmm3
	call ODE_CollideCapsuleBox
	add ebx, eax
	mov [ebp-0x58], ebx
	add dword [ebp-0x1a00], 0x1
	mov ecx, [ebp-0x1a00]
	cmp [ebp-0x1a04], ecx
	movss xmm3, dword [ebp-0x1a28]
	jnz _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_260
	mov eax, ebx
	jmp _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_270
_Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_350:
	mov dword [ebp-0x1bc], 0x4
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call dGeomGetClassData
	mov edx, [eax]
	mov [ebp-0x1ec], edx
	mov edx, [eax+0x4]
	mov [ebp-0x164], edx
	mov edx, [eax+0x4]
	mov [ebp-0x160], edx
	mov edx, [eax+0x8]
	mov [ebp-0x15c], edx
	movss xmm1, dword [eax+0x8]
	movss xmm2, dword [eax+0x4]
	movaps xmm3, xmm2
	subss xmm3, xmm1
	pxor xmm0, xmm0
	cmpss xmm0, xmm3, 0x6
	andps xmm1, xmm0
	andnps xmm0, xmm2
	orps xmm0, xmm1
	mulss xmm0, [_float_1_41421402]
	movss [ebp-0x30], xmm0
	movss [ebp-0x2c], xmm0
	movss [ebp-0x28], xmm0
	addss xmm2, xmm2
	mov ebx, [ebp-0x1a10]
	movss xmm0, dword [ebx]
	ucomiss xmm0, xmm2
	seta byte [ebp-0x14c]
	jmp _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_30
_Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_340:
	mov dword [ebp-0x1bc], 0x3
	mov eax, [ebp+0xc]
	mov [esp], eax
	call dGeomGetClassData
	mov ecx, [eax]
	mov [ebp-0x164], ecx
	lea edx, [eax+0x4]
	movss xmm1, dword [eax+0x4]
	movss xmm2, dword [edx+0x4]
	movss xmm3, dword [edx+0x8]
	movaps xmm5, xmm1
	mulss xmm5, [ebp-0x1a8]
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x19c]
	addss xmm5, xmm0
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x190]
	addss xmm5, xmm0
	movaps xmm4, xmm1
	mulss xmm4, [ebp-0x1a4]
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x198]
	addss xmm4, xmm0
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x18c]
	addss xmm4, xmm0
	mulss xmm1, [ebp-0x1ac]
	mulss xmm2, [ebp-0x1a0]
	addss xmm1, xmm2
	mulss xmm3, [ebp-0x194]
	addss xmm1, xmm3
	movss xmm0, dword [ebp-0x1b8]
	subss xmm0, xmm1
	movss [ebp-0x1b8], xmm0
	movss xmm0, dword [ebp-0x1b4]
	subss xmm0, xmm5
	movss [ebp-0x1b4], xmm0
	movss xmm0, dword [ebp-0x1b0]
	subss xmm0, xmm4
	movss [ebp-0x1b0], xmm0
	movss xmm3, dword [_data16_7fffffff]
	movss xmm0, dword [ecx+0x10]
	andps xmm0, xmm3
	maxss xmm0, [_float_0_00000000]
	movss xmm1, dword [ecx+0x14]
	andps xmm1, xmm3
	maxss xmm1, xmm0
	movss xmm0, dword [ecx+0x18]
	andps xmm0, xmm3
	maxss xmm0, xmm1
	movss xmm1, dword [ecx]
	andps xmm1, xmm3
	maxss xmm1, xmm0
	movss xmm2, dword [ecx+0x4]
	andps xmm2, xmm3
	maxss xmm2, xmm1
	movss xmm0, dword [ecx+0x8]
	andps xmm0, xmm3
	maxss xmm0, xmm2
	mulss xmm0, [_float_1_73205078]
	movss [ebp-0x30], xmm0
	movss [ebp-0x2c], xmm0
	movss [ebp-0x28], xmm0
	mov edx, [ebp-0x1a10]
	movss xmm0, dword [edx]
	ucomiss xmm0, [ecx+0x18]
	seta byte [ebp-0x14c]
	jmp _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_30
_Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_330:
	mov dword [ebp-0x1bc], 0x2
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call dGeomGetClassData
	mov ebx, eax
	movzx eax, word [eax]
	mov [esp], eax
	call _Z20CM_ClipHandleToModelj
	mov [ebp-0x164], eax
	lea edx, [ebx+0x4]
	movss xmm1, dword [ebx+0x4]
	movss xmm2, dword [edx+0x4]
	movss xmm3, dword [edx+0x8]
	movaps xmm5, xmm1
	mulss xmm5, [ebp-0x1a8]
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x19c]
	addss xmm5, xmm0
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x190]
	addss xmm5, xmm0
	movaps xmm4, xmm1
	mulss xmm4, [ebp-0x1a4]
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x198]
	addss xmm4, xmm0
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x18c]
	addss xmm4, xmm0
	mulss xmm1, [ebp-0x1ac]
	mulss xmm2, [ebp-0x1a0]
	addss xmm1, xmm2
	mulss xmm3, [ebp-0x194]
	addss xmm1, xmm3
	movss xmm0, dword [ebp-0x1b8]
	subss xmm0, xmm1
	movss [ebp-0x1b8], xmm0
	movss xmm0, dword [ebp-0x1b4]
	subss xmm0, xmm5
	movss [ebp-0x1b4], xmm0
	movss xmm0, dword [ebp-0x1b0]
	subss xmm0, xmm4
	movss [ebp-0x1b0], xmm0
	movss xmm0, dword [eax+0x18]
	movss [ebp-0x30], xmm0
	movss [ebp-0x2c], xmm0
	movss [ebp-0x28], xmm0
	mov ebx, [ebp-0x1a10]
	movss xmm1, dword [ebx]
	ucomiss xmm1, xmm0
	seta byte [ebp-0x14c]
	jmp _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_30
_Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_320:
	mov dword [ebp-0x1bc], 0x1
	lea eax, [ebp-0x4c]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call dGeomBoxGetLengths
	movss xmm2, dword [ebp-0x48]
	movss xmm4, dword [ebp-0x44]
	movss xmm1, dword [_float_0_50000000]
	movss xmm0, dword [ebp-0x4c]
	mulss xmm0, xmm1
	movss [ebp-0x164], xmm0
	mulss xmm2, xmm1
	movss [ebp-0x160], xmm2
	mulss xmm4, xmm1
	movss [ebp-0x15c], xmm4
	xor edi, edi
	movss xmm1, dword [_data16_7fffffff]
	lea ebx, [ebp-0x1f0]
	add ebx, 0x40
	xor esi, esi
_Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_290:
	lea edx, [ebx+0x4]
	lea eax, [ebp-0x98]
	add eax, esi
	mov ecx, 0x3
_Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_280:
	movss xmm0, dword [edx]
	andps xmm0, xmm1
	movss [eax], xmm0
	add edx, 0x4
	add eax, 0x4
	sub ecx, 0x1
	jnz _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_280
	add edi, 0x1
	add esi, 0xc
	add ebx, 0xc
	cmp edi, 0x3
	jnz _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_290
	movss xmm2, dword [ebp-0x164]
	movss xmm3, dword [ebp-0x160]
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x98]
	movaps xmm1, xmm3
	mulss xmm1, [ebp-0x8c]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [ebp-0x80]
	addss xmm0, xmm1
	movss [ebp-0x30], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x94]
	movaps xmm1, xmm3
	mulss xmm1, [ebp-0x88]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [ebp-0x7c]
	addss xmm0, xmm1
	movss [ebp-0x2c], xmm0
	mulss xmm2, [ebp-0x90]
	mulss xmm3, [ebp-0x84]
	addss xmm2, xmm3
	mulss xmm4, [ebp-0x78]
	addss xmm2, xmm4
	movss [ebp-0x28], xmm2
	mov edx, [ebp-0x1a10]
	movss xmm0, dword [edx]
	ucomiss xmm0, [ebp-0x4c]
	ja _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_300
	ucomiss xmm0, [ebp-0x48]
	ja _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_300
	ucomiss xmm0, [ebp-0x44]
	ja _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_300
	xor eax, eax
	jmp _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_310
_Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_300:
	mov eax, 0x1
_Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_310:
	mov [ebp-0x14c], al
	jmp _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_30
	
	
_Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_jumptab_0:
	dd _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_30
	dd _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_320
	dd _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_30
	dd _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_30
	dd _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_30
	dd _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_30
	dd _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_30
	dd _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_30
	dd _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_30
	dd _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_30
	dd _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_30
	dd _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_330
	dd _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_340
	dd _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_350
	dd _Z17dCollideWorldGeomP6dxGeomS0_iP12dContactGeomi_360


;Phys_CreateBrushGeom(dxSpace*, dxBody*, cbrush_t const*, float const*)
_Z20Phys_CreateBrushGeomP7dxSpaceP6dxBodyPK8cbrush_tPKf:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x14]
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0xc
	call ODE_CreateGeom
	mov ebx, eax
	test eax, eax
	jz _Z20Phys_CreateBrushGeomP7dxSpaceP6dxBodyPK8cbrush_tPKf_10
	mov [esp], eax
	call dGeomGetClassData
	mov edx, [ebp+0x10]
	mov [eax], edx
	lea ecx, [eax+0x4]
	mov edx, [esi]
	mov [eax+0x4], edx
	mov eax, [esi+0x4]
	mov [ecx+0x4], eax
	mov eax, [esi+0x8]
	mov [ecx+0x8], eax
_Z20Phys_CreateBrushGeomP7dxSpaceP6dxBodyPK8cbrush_tPKf_10:
	mov eax, ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;Phys_CreateCapsuleGeom(dxSpace*, dxBody*, GeomStateCylinder const*)
_Z22Phys_CreateCapsuleGeomP7dxSpaceP6dxBodyPK17GeomStateCylinder:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x10]
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0xe
	call ODE_CreateGeom
	mov ebx, eax
	test eax, eax
	jz _Z22Phys_CreateCapsuleGeomP7dxSpaceP6dxBodyPK17GeomStateCylinder_10
	mov [esp], eax
	call dGeomGetClassData
	mov edx, [esi]
	mov [eax], edx
	mov edx, [esi+0x4]
	mov [eax+0x4], edx
	mov edx, [esi+0x8]
	mov [eax+0x8], edx
_Z22Phys_CreateCapsuleGeomP7dxSpaceP6dxBodyPK17GeomStateCylinder_10:
	mov eax, ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;Phys_CreateCylinderGeom(dxSpace*, dxBody*, GeomStateCylinder const*)
_Z23Phys_CreateCylinderGeomP7dxSpaceP6dxBodyPK17GeomStateCylinder:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x10]
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0xd
	call ODE_CreateGeom
	mov ebx, eax
	test eax, eax
	jz _Z23Phys_CreateCylinderGeomP7dxSpaceP6dxBodyPK17GeomStateCylinder_10
	mov [esp], eax
	call dGeomGetClassData
	mov edx, [esi]
	mov [eax], edx
	mov edx, [esi+0x4]
	mov [eax+0x4], edx
	mov edx, [esi+0x8]
	mov [eax+0x8], edx
_Z23Phys_CreateCylinderGeomP7dxSpaceP6dxBodyPK17GeomStateCylinder_10:
	mov eax, ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;Phys_InitBrushGeomClass()
_Z23Phys_InitBrushGeomClassv:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	lea eax, [ebp-0x1c]
	mov dword [ebp-0x10], 0x0
	mov dword [ebp-0xc], 0x0
	mov dword [ebp-0x18], _Z20Phys_GetColliderNulli
	mov dword [ebp-0x14], _Z17Phys_GetBrushAABBP6dxGeomPf
	mov byte [ebp-0xc], 0x1
	mov dword [ebp-0x1c], 0x10
	mov [esp], eax
	call dCreateGeomClass
	leave
	ret


;Phys_InitWorldCollision()
_Z23Phys_InitWorldCollisionv:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	lea edx, [ebp-0x1c]
	mov dword [ebp-0x1c], 0x0
	mov dword [ebp-0x10], 0x0
	mov dword [ebp-0xc], 0x0
	mov dword [ebp-0x18], _Z17dGetColliderWorldi
	mov eax, dInfiniteAABB
	mov [ebp-0x14], eax
	mov byte [ebp-0xc], 0x0
	mov [esp], edx
	call dCreateGeomClass
	call Phys_GetWorldGeom
	mov edx, physGlob
	mov [edx+0xbab0], eax
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xf
	mov [esp], eax
	call dInitUserGeom
	leave
	ret


;Phys_CreateBrushmodelGeom(dxSpace*, dxBody*, unsigned short, float const*)
_Z25Phys_CreateBrushmodelGeomP7dxSpaceP6dxBodytPKf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x10]
	mov esi, [ebp+0x14]
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0xb
	call ODE_CreateGeom
	mov ebx, eax
	test eax, eax
	jz _Z25Phys_CreateBrushmodelGeomP7dxSpaceP6dxBodytPKf_10
	mov [esp], eax
	call dGeomGetClassData
	mov [eax], di
	lea ecx, [eax+0x4]
	mov edx, [esi]
	mov [eax+0x4], edx
	mov eax, [esi+0x4]
	mov [ecx+0x4], eax
	mov eax, [esi+0x8]
	mov [ecx+0x8], eax
_Z25Phys_CreateBrushmodelGeomP7dxSpaceP6dxBodytPKf_10:
	mov eax, ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Phys_InitCapsuleGeomClass()
_Z25Phys_InitCapsuleGeomClassv:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	lea eax, [ebp-0x1c]
	mov dword [ebp-0x10], 0x0
	mov dword [ebp-0xc], 0x0
	mov dword [ebp-0x18], _Z20Phys_GetColliderNulli
	mov dword [ebp-0x14], _Z19Phys_GetCapsuleAABBP6dxGeomPf
	mov byte [ebp-0xc], 0x1
	mov dword [ebp-0x1c], 0xc
	mov [esp], eax
	call dCreateGeomClass
	leave
	ret


;Phys_InitCylinderGeomClass()
_Z26Phys_InitCylinderGeomClassv:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	lea eax, [ebp-0x1c]
	mov dword [ebp-0x10], 0x0
	mov dword [ebp-0xc], 0x0
	mov dword [ebp-0x18], _Z20Phys_GetColliderNulli
	mov dword [ebp-0x14], _Z20Phys_GetCylinderAABBP6dxGeomPf
	mov byte [ebp-0xc], 0x1
	mov dword [ebp-0x1c], 0xc
	mov [esp], eax
	call dCreateGeomClass
	leave
	ret


;Phys_InitBrushmodelGeomClass()
_Z28Phys_InitBrushmodelGeomClassv:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	lea eax, [ebp-0x1c]
	mov dword [ebp-0x10], 0x0
	mov dword [ebp-0xc], 0x0
	mov dword [ebp-0x18], _Z20Phys_GetColliderNulli
	mov dword [ebp-0x14], _Z22Phys_GetBrushmodelAABBP6dxGeomPf
	mov byte [ebp-0xc], 0x1
	mov dword [ebp-0x1c], 0x10
	mov [esp], eax
	call dCreateGeomClass
	leave
	ret


;Phys_GetSurfaceFlagsFromBrush(cbrush_t const*, int)
_Z29Phys_GetSurfaceFlagsFromBrushPK8cbrush_ti:
	push ebp
	mov ebp, esp
	push ebx
	mov ebx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	cmp ecx, 0x5
	jg _Z29Phys_GetSurfaceFlagsFromBrushPK8cbrush_ti_10
	mov edx, ecx
	and edx, 0x1
	shr ecx, 1
	lea eax, [edx+edx]
	add eax, edx
	add eax, ecx
	movsx eax, word [ebx+eax*2+0x24]
	mov edx, cm
	mov edx, [edx+0x1c]
	lea eax, [eax+eax*8]
	mov eax, [edx+eax*8+0x40]
	pop ebx
	pop ebp
	ret
_Z29Phys_GetSurfaceFlagsFromBrushPK8cbrush_ti_10:
	lea eax, [ecx+ecx*2]
	shl eax, 0x2
	add eax, [ebx+0x20]
	mov eax, [eax-0x44]
	mov edx, cm
	mov edx, [edx+0x1c]
	lea eax, [eax+eax*8]
	mov eax, [edx+eax*8+0x40]
	pop ebx
	pop ebp
	ret


;CM_ForEachBrushInLeafBrushNode_r(cLeafBrushNode_s*, float const*, float const*, unsigned char, int, void (*)(cbrush_t const*, void*), void*)
_Z32CM_ForEachBrushInLeafBrushNode_rP16cLeafBrushNode_sPKfS2_hiPFvPK8cbrush_tPvES6_:
_Z32CM_ForEachBrushInLeafBrushNode_rP16cLeafBrushNode_sPKfS2_hiPFvPK8cbrush_tPvES6__50:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, [ebp+0x8]
	mov edi, [ebp+0xc]
	movzx esi, byte [ebp+0x14]
_Z32CM_ForEachBrushInLeafBrushNode_rP16cLeafBrushNode_sPKfS2_hiPFvPK8cbrush_tPvES6__80:
	mov eax, esi
	test al, al
	jz _Z32CM_ForEachBrushInLeafBrushNode_rP16cLeafBrushNode_sPKfS2_hiPFvPK8cbrush_tPvES6__10
	mov edx, [ebp+0x18]
	test [ebx+0x4], edx
	jz _Z32CM_ForEachBrushInLeafBrushNode_rP16cLeafBrushNode_sPKfS2_hiPFvPK8cbrush_tPvES6__20
_Z32CM_ForEachBrushInLeafBrushNode_rP16cLeafBrushNode_sPKfS2_hiPFvPK8cbrush_tPvES6__10:
	cmp word [ebx+0x2], 0x0
	jz _Z32CM_ForEachBrushInLeafBrushNode_rP16cLeafBrushNode_sPKfS2_hiPFvPK8cbrush_tPvES6__30
	jg _Z32CM_ForEachBrushInLeafBrushNode_rP16cLeafBrushNode_sPKfS2_hiPFvPK8cbrush_tPvES6__40
	mov eax, [ebp+0x20]
	mov [esp+0x18], eax
	mov edx, [ebp+0x1c]
	mov [esp+0x14], edx
	mov eax, [ebp+0x18]
	mov [esp+0x10], eax
	mov edx, esi
	movzx eax, dl
	mov [esp+0xc], eax
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	lea eax, [ebx+0x14]
	mov [esp], eax
	call _Z32CM_ForEachBrushInLeafBrushNode_rP16cLeafBrushNode_sPKfS2_hiPFvPK8cbrush_tPvES6__50
_Z32CM_ForEachBrushInLeafBrushNode_rP16cLeafBrushNode_sPKfS2_hiPFvPK8cbrush_tPvES6__30:
	movzx eax, byte [ebx]
	shl eax, 0x2
	movss xmm1, dword [ebx+0x8]
	movss xmm0, dword [eax+edi]
	ucomiss xmm0, xmm1
	ja _Z32CM_ForEachBrushInLeafBrushNode_rP16cLeafBrushNode_sPKfS2_hiPFvPK8cbrush_tPvES6__60
	mov edx, [ebp+0x10]
	movss xmm0, dword [eax+edx]
	ucomiss xmm0, xmm1
	jae _Z32CM_ForEachBrushInLeafBrushNode_rP16cLeafBrushNode_sPKfS2_hiPFvPK8cbrush_tPvES6__70
_Z32CM_ForEachBrushInLeafBrushNode_rP16cLeafBrushNode_sPKfS2_hiPFvPK8cbrush_tPvES6__90:
	movzx eax, word [ebx+0x12]
	lea eax, [eax+eax*4]
	lea ebx, [ebx+eax*4]
	mov eax, esi
	test al, al
	jz _Z32CM_ForEachBrushInLeafBrushNode_rP16cLeafBrushNode_sPKfS2_hiPFvPK8cbrush_tPvES6__10
	mov edx, [ebp+0x18]
	test [ebx+0x4], edx
	jnz _Z32CM_ForEachBrushInLeafBrushNode_rP16cLeafBrushNode_sPKfS2_hiPFvPK8cbrush_tPvES6__10
_Z32CM_ForEachBrushInLeafBrushNode_rP16cLeafBrushNode_sPKfS2_hiPFvPK8cbrush_tPvES6__20:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z32CM_ForEachBrushInLeafBrushNode_rP16cLeafBrushNode_sPKfS2_hiPFvPK8cbrush_tPvES6__60:
	movzx eax, word [ebx+0x10]
	lea eax, [eax+eax*4]
	lea ebx, [ebx+eax*4]
	jmp _Z32CM_ForEachBrushInLeafBrushNode_rP16cLeafBrushNode_sPKfS2_hiPFvPK8cbrush_tPvES6__80
_Z32CM_ForEachBrushInLeafBrushNode_rP16cLeafBrushNode_sPKfS2_hiPFvPK8cbrush_tPvES6__70:
	mov eax, [ebp+0x20]
	mov [esp+0x18], eax
	mov edx, [ebp+0x1c]
	mov [esp+0x14], edx
	mov eax, [ebp+0x18]
	mov [esp+0x10], eax
	mov edx, esi
	movzx eax, dl
	mov [esp+0xc], eax
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	movzx eax, word [ebx+0x10]
	lea eax, [eax+eax*4]
	lea eax, [ebx+eax*4]
	mov [esp], eax
	call _Z32CM_ForEachBrushInLeafBrushNode_rP16cLeafBrushNode_sPKfS2_hiPFvPK8cbrush_tPvES6__50
	jmp _Z32CM_ForEachBrushInLeafBrushNode_rP16cLeafBrushNode_sPKfS2_hiPFvPK8cbrush_tPvES6__90
_Z32CM_ForEachBrushInLeafBrushNode_rP16cLeafBrushNode_sPKfS2_hiPFvPK8cbrush_tPvES6__40:
	cmp word [ebx+0x2], 0x0
	jle _Z32CM_ForEachBrushInLeafBrushNode_rP16cLeafBrushNode_sPKfS2_hiPFvPK8cbrush_tPvES6__20
	mov edx, esi
	test dl, dl
	jnz _Z32CM_ForEachBrushInLeafBrushNode_rP16cLeafBrushNode_sPKfS2_hiPFvPK8cbrush_tPvES6__100
	xor esi, esi
	jmp _Z32CM_ForEachBrushInLeafBrushNode_rP16cLeafBrushNode_sPKfS2_hiPFvPK8cbrush_tPvES6__110
_Z32CM_ForEachBrushInLeafBrushNode_rP16cLeafBrushNode_sPKfS2_hiPFvPK8cbrush_tPvES6__120:
	add esi, 0x1
	movsx eax, word [ebx+0x2]
	cmp eax, esi
	jle _Z32CM_ForEachBrushInLeafBrushNode_rP16cLeafBrushNode_sPKfS2_hiPFvPK8cbrush_tPvES6__20
_Z32CM_ForEachBrushInLeafBrushNode_rP16cLeafBrushNode_sPKfS2_hiPFvPK8cbrush_tPvES6__110:
	mov eax, [ebx+0x8]
	movzx eax, word [eax+esi*2]
	lea eax, [eax+eax*4]
	shl eax, 0x4
	mov edx, cm
	add eax, [edx+0x90]
	movss xmm0, dword [edi]
	ucomiss xmm0, [eax+0x10]
	ja _Z32CM_ForEachBrushInLeafBrushNode_rP16cLeafBrushNode_sPKfS2_hiPFvPK8cbrush_tPvES6__120
	movss xmm0, dword [edi+0x4]
	ucomiss xmm0, [eax+0x14]
	ja _Z32CM_ForEachBrushInLeafBrushNode_rP16cLeafBrushNode_sPKfS2_hiPFvPK8cbrush_tPvES6__120
	movss xmm0, dword [edi+0x8]
	ucomiss xmm0, [eax+0x18]
	ja _Z32CM_ForEachBrushInLeafBrushNode_rP16cLeafBrushNode_sPKfS2_hiPFvPK8cbrush_tPvES6__120
	movss xmm0, dword [eax]
	mov edx, [ebp+0x10]
	ucomiss xmm0, [edx]
	ja _Z32CM_ForEachBrushInLeafBrushNode_rP16cLeafBrushNode_sPKfS2_hiPFvPK8cbrush_tPvES6__120
	movss xmm0, dword [eax+0x4]
	mov edx, [ebp+0x10]
	ucomiss xmm0, [edx+0x4]
	ja _Z32CM_ForEachBrushInLeafBrushNode_rP16cLeafBrushNode_sPKfS2_hiPFvPK8cbrush_tPvES6__120
	movss xmm0, dword [eax+0x8]
	mov edx, [ebp+0x10]
	ucomiss xmm0, [edx+0x8]
	ja _Z32CM_ForEachBrushInLeafBrushNode_rP16cLeafBrushNode_sPKfS2_hiPFvPK8cbrush_tPvES6__120
	mov edx, [ebp+0x20]
	mov [esp+0x4], edx
	mov [esp], eax
	call dword [ebp+0x1c]
	jmp _Z32CM_ForEachBrushInLeafBrushNode_rP16cLeafBrushNode_sPKfS2_hiPFvPK8cbrush_tPvES6__120
_Z32CM_ForEachBrushInLeafBrushNode_rP16cLeafBrushNode_sPKfS2_hiPFvPK8cbrush_tPvES6__100:
	xor esi, esi
_Z32CM_ForEachBrushInLeafBrushNode_rP16cLeafBrushNode_sPKfS2_hiPFvPK8cbrush_tPvES6__140:
	mov eax, [ebx+0x8]
	movzx eax, word [eax+esi*2]
	lea edx, [eax+eax*4]
	shl edx, 0x4
	mov eax, cm
	add edx, [eax+0x90]
	mov eax, [ebp+0x18]
	test [edx+0xc], eax
	jz _Z32CM_ForEachBrushInLeafBrushNode_rP16cLeafBrushNode_sPKfS2_hiPFvPK8cbrush_tPvES6__130
	movss xmm0, dword [edi]
	ucomiss xmm0, [edx+0x10]
	ja _Z32CM_ForEachBrushInLeafBrushNode_rP16cLeafBrushNode_sPKfS2_hiPFvPK8cbrush_tPvES6__130
	movss xmm0, dword [edi+0x4]
	ucomiss xmm0, [edx+0x14]
	ja _Z32CM_ForEachBrushInLeafBrushNode_rP16cLeafBrushNode_sPKfS2_hiPFvPK8cbrush_tPvES6__130
	movss xmm0, dword [edi+0x8]
	ucomiss xmm0, [edx+0x18]
	ja _Z32CM_ForEachBrushInLeafBrushNode_rP16cLeafBrushNode_sPKfS2_hiPFvPK8cbrush_tPvES6__130
	movss xmm0, dword [edx]
	mov eax, [ebp+0x10]
	ucomiss xmm0, [eax]
	ja _Z32CM_ForEachBrushInLeafBrushNode_rP16cLeafBrushNode_sPKfS2_hiPFvPK8cbrush_tPvES6__130
	movss xmm0, dword [edx+0x4]
	ucomiss xmm0, [eax+0x4]
	ja _Z32CM_ForEachBrushInLeafBrushNode_rP16cLeafBrushNode_sPKfS2_hiPFvPK8cbrush_tPvES6__130
	movss xmm0, dword [edx+0x8]
	ucomiss xmm0, [eax+0x8]
	ja _Z32CM_ForEachBrushInLeafBrushNode_rP16cLeafBrushNode_sPKfS2_hiPFvPK8cbrush_tPvES6__130
	mov eax, [ebp+0x20]
	mov [esp+0x4], eax
	mov [esp], edx
	call dword [ebp+0x1c]
_Z32CM_ForEachBrushInLeafBrushNode_rP16cLeafBrushNode_sPKfS2_hiPFvPK8cbrush_tPvES6__130:
	add esi, 0x1
	movsx eax, word [ebx+0x2]
	cmp eax, esi
	jg _Z32CM_ForEachBrushInLeafBrushNode_rP16cLeafBrushNode_sPKfS2_hiPFvPK8cbrush_tPvES6__140
	jmp _Z32CM_ForEachBrushInLeafBrushNode_rP16cLeafBrushNode_sPKfS2_hiPFvPK8cbrush_tPvES6__20
	nop


;Initialized global or static variables of phys_world_collision:
SECTION .data


;Initialized constant data of phys_world_collision:
SECTION .rdata


;Zero initialized global or static variables of phys_world_collision:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; OWORD
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_1_00000000:		dd 0x3f800000	; 1
_float_1_41421402:		dd 0x3fb504f7	; 1.41421
_float_0_00000000:		dd 0x0	; 0
_float_1_73205078:		dd 0x3fddb3d7	; 1.73205

