;Imports of r_dpvs_entity:
	extern rgp
	extern BoxOnPlaneSide
	extern R_UpdateSceneEntBounds
	extern CG_UsedDObjCalcPose
	extern CG_CullIn
	extern R_SkinSceneDObj

;Exports of r_dpvs_entity:
	global R_BoundsInCell_r
	global R_AddEntitySurfacesInFrustumCmd


SECTION .text


;R_BoundsInCell_r(mnode_t*, int, float const*, float const*)
R_BoundsInCell_r:
R_BoundsInCell_r_80:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov esi, eax
	mov [ebp-0x54], edx
	mov edx, [ebp+0x8]
	mov eax, rgp
	mov eax, [eax+0x20a0]
	mov eax, [eax+0xf0]
	add eax, 0x1
	mov [ebp-0x4c], eax
	mov eax, [ecx]
	mov [ebp-0x24], eax
	mov eax, [ecx+0x4]
	mov [ebp-0x20], eax
	mov eax, [ecx+0x8]
	mov [ebp-0x1c], eax
	mov eax, [edx]
	mov [ebp-0x30], eax
	mov eax, [edx+0x4]
	mov [ebp-0x2c], eax
	mov eax, [edx+0x8]
	mov [ebp-0x28], eax
R_BoundsInCell_r_70:
	movzx ecx, word [esi]
	movzx eax, cx
	mov edx, eax
	sub edx, [ebp-0x4c]
	js R_BoundsInCell_r_10
R_BoundsInCell_r_30:
	mov eax, rgp
	mov eax, [eax+0x20a0]
	lea edx, [edx+edx*4]
	mov eax, [eax+0xf4]
	lea ebx, [eax+edx*4]
	mov [esp+0x8], ebx
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	lea edi, [ebp-0x24]
	mov [esp], edi
	call BoxOnPlaneSide
	cmp eax, 0x3
	jz R_BoundsInCell_r_20
	lea edx, [eax-0x1]
	movzx eax, word [esi+0x2]
	lea eax, [eax+eax-0x4]
	imul edx, eax
	lea esi, [edx+esi+0x4]
	movzx ecx, word [esi]
	movzx eax, cx
	mov edx, eax
	sub edx, [ebp-0x4c]
	jns R_BoundsInCell_r_30
R_BoundsInCell_r_10:
	test cx, cx
	jz R_BoundsInCell_r_40
	sub eax, 0x1
	cmp [ebp-0x54], eax
	setz al
	movzx eax, al
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_BoundsInCell_r_20:
	movzx edx, byte [ebx+0x10]
	movzx eax, word [esi+0x2]
	lea eax, [esi+eax*2]
	mov [ebp-0x50], eax
	cmp edx, 0x2
	ja R_BoundsInCell_r_50
	movss xmm1, dword [ebx+0xc]
	mov eax, [ebp-0x24]
	mov [ebp-0x3c], eax
	mov eax, [ebp-0x20]
	mov [ebp-0x38], eax
	mov eax, [ebp-0x1c]
	mov [ebp-0x34], eax
	movss [ebp+edx*4-0x3c], xmm1
	mov eax, [ebp-0x30]
	mov [ebp-0x48], eax
	mov eax, [ebp-0x2c]
	mov [ebp-0x44], eax
	mov eax, [ebp-0x28]
	mov [ebp-0x40], eax
	movss [ebp+edx*4-0x48], xmm1
	movss xmm0, dword [ebp+edx*4-0x30]
	ucomiss xmm0, xmm1
	ja R_BoundsInCell_r_60
R_BoundsInCell_r_100:
	mov eax, [ebp-0x48]
	mov [ebp-0x30], eax
	mov eax, [ebp-0x44]
	mov [ebp-0x2c], eax
	mov eax, [ebp-0x40]
	mov [ebp-0x28], eax
	mov esi, [ebp-0x50]
	jmp R_BoundsInCell_r_70
R_BoundsInCell_r_50:
	lea eax, [esi+0x4]
	lea edx, [ebp-0x30]
	mov [esp], edx
	mov ecx, edi
	mov edx, [ebp-0x54]
	call R_BoundsInCell_r_80
	test eax, eax
	jnz R_BoundsInCell_r_90
	mov esi, [ebp-0x50]
	jmp R_BoundsInCell_r_70
R_BoundsInCell_r_60:
	lea ecx, [ebp-0x3c]
	lea eax, [esi+0x4]
	lea edx, [ebp-0x30]
	mov [esp], edx
	mov edx, [ebp-0x54]
	call R_BoundsInCell_r_80
	test eax, eax
	jz R_BoundsInCell_r_100
R_BoundsInCell_r_90:
	mov eax, 0x1
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_BoundsInCell_r_40:
	xor eax, eax
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;R_AddEntitySurfacesInFrustumCmd(void*)
R_AddEntitySurfacesInFrustumCmd:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [ebp-0x30], eax
	mov dword [esp+0xc], 0x1
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov edx, [ebp-0x30]
	mov [esp], edx
	call R_UpdateSceneEntBounds
	mov [ebp-0x2c], eax
	test eax, eax
	jz R_AddEntitySurfacesInFrustumCmd_10
	mov esi, [ebp+0x8]
	mov edx, [esi+0x4]
	movzx edi, word [esi+0x8]
	mov esi, [ebp-0x1c]
	lea ebx, [esi+0x30]
	test edi, edi
	jle R_AddEntitySurfacesInFrustumCmd_20
	movzx eax, byte [edx+0x10]
	movss xmm0, dword [ebx+eax]
	movzx eax, byte [edx+0x11]
	movss xmm1, dword [ebx+eax]
	movzx eax, byte [edx+0x12]
	movss xmm2, dword [ebx+eax]
	mulss xmm0, [edx]
	addss xmm0, [edx+0xc]
	mulss xmm1, [edx+0x4]
	addss xmm0, xmm1
	mulss xmm2, [edx+0x8]
	addss xmm0, xmm2
	pxor xmm3, xmm3
	ucomiss xmm3, xmm0
	jae R_AddEntitySurfacesInFrustumCmd_30
	mov ecx, 0x1
R_AddEntitySurfacesInFrustumCmd_40:
	add edx, 0x14
	cmp ecx, edi
	jz R_AddEntitySurfacesInFrustumCmd_20
	movzx eax, byte [edx+0x10]
	movss xmm1, dword [ebx+eax]
	movzx eax, byte [edx+0x11]
	movss xmm0, dword [ebx+eax]
	movzx eax, byte [edx+0x12]
	movss xmm2, dword [ebx+eax]
	add ecx, 0x1
	mulss xmm0, [edx+0x4]
	mulss xmm1, [edx]
	addss xmm1, [edx+0xc]
	addss xmm0, xmm1
	mulss xmm2, [edx+0x8]
	addss xmm0, xmm2
	ucomiss xmm3, xmm0
	jb R_AddEntitySurfacesInFrustumCmd_40
R_AddEntitySurfacesInFrustumCmd_30:
	mov eax, [esi+0x74]
	mov [esp], eax
	call CG_UsedDObjCalcPose
R_AddEntitySurfacesInFrustumCmd_60:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_AddEntitySurfacesInFrustumCmd_20:
	lea ecx, [esi+0x3c]
	mov eax, rgp
	mov eax, [eax+0x20a0]
	mov eax, [eax+0xf8]
	mov esi, [ebp+0x8]
	movzx edx, word [esi+0xa]
	mov [esp], ecx
	mov ecx, ebx
	call R_BoundsInCell_r
	test eax, eax
	jnz R_AddEntitySurfacesInFrustumCmd_50
	mov esi, [ebp-0x1c]
	jmp R_AddEntitySurfacesInFrustumCmd_30
R_AddEntitySurfacesInFrustumCmd_10:
	mov eax, [ebp-0x1c]
	test eax, eax
	jz R_AddEntitySurfacesInFrustumCmd_60
	mov eax, [eax+0x74]
	mov [esp], eax
	call CG_UsedDObjCalcPose
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_AddEntitySurfacesInFrustumCmd_50:
	mov eax, [ebp-0x1c]
	mov eax, [eax+0x74]
	mov [esp], eax
	call CG_CullIn
	mov dword [esp+0x10], 0x0
	mov eax, [ebp-0x2c]
	mov [esp+0xc], eax
	mov eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov edx, [ebp-0x30]
	mov [esp], edx
	call R_SkinSceneDObj
	mov eax, [ebp-0x1c]
	movzx eax, word [eax+0x6e]
	mov esi, [ebp+0x8]
	add eax, [esi+0xc]
	mov byte [eax], 0x1
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Initialized global or static variables of r_dpvs_entity:
SECTION .data


;Initialized constant data of r_dpvs_entity:
SECTION .rdata


;Zero initialized global or static variables of r_dpvs_entity:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

