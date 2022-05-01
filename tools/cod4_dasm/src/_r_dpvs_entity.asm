;Imports of r_dpvs_entity:
	extern rgp
	extern _Z14BoxOnPlaneSidePKfS0_PK8cplane_s
	extern _Z22R_UpdateSceneEntBoundsP14GfxSceneEntityPS0_PPK6DObj_si
	extern _Z19CG_UsedDObjCalcPosePK7cpose_t
	extern _Z9CG_CullInPK7cpose_t
	extern _Z15R_SkinSceneDObjP14GfxSceneEntityS0_PK6DObj_sP11DObjAnimMati

;Exports of r_dpvs_entity:
	global _Z16R_BoundsInCell_rP7mnode_tiPKfS2_
	global _Z31R_AddEntitySurfacesInFrustumCmdPv


SECTION .text


;R_BoundsInCell_r(mnode_t*, int, float const*, float const*)
_Z16R_BoundsInCell_rP7mnode_tiPKfS2_:
_Z16R_BoundsInCell_rP7mnode_tiPKfS2__80:
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
_Z16R_BoundsInCell_rP7mnode_tiPKfS2__70:
	movzx ecx, word [esi]
	movzx eax, cx
	mov edx, eax
	sub edx, [ebp-0x4c]
	js _Z16R_BoundsInCell_rP7mnode_tiPKfS2__10
_Z16R_BoundsInCell_rP7mnode_tiPKfS2__30:
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
	call _Z14BoxOnPlaneSidePKfS0_PK8cplane_s
	cmp eax, 0x3
	jz _Z16R_BoundsInCell_rP7mnode_tiPKfS2__20
	lea edx, [eax-0x1]
	movzx eax, word [esi+0x2]
	lea eax, [eax+eax-0x4]
	imul edx, eax
	lea esi, [edx+esi+0x4]
	movzx ecx, word [esi]
	movzx eax, cx
	mov edx, eax
	sub edx, [ebp-0x4c]
	jns _Z16R_BoundsInCell_rP7mnode_tiPKfS2__30
_Z16R_BoundsInCell_rP7mnode_tiPKfS2__10:
	test cx, cx
	jz _Z16R_BoundsInCell_rP7mnode_tiPKfS2__40
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
_Z16R_BoundsInCell_rP7mnode_tiPKfS2__20:
	movzx edx, byte [ebx+0x10]
	movzx eax, word [esi+0x2]
	lea eax, [esi+eax*2]
	mov [ebp-0x50], eax
	cmp edx, 0x2
	ja _Z16R_BoundsInCell_rP7mnode_tiPKfS2__50
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
	ja _Z16R_BoundsInCell_rP7mnode_tiPKfS2__60
_Z16R_BoundsInCell_rP7mnode_tiPKfS2__100:
	mov eax, [ebp-0x48]
	mov [ebp-0x30], eax
	mov eax, [ebp-0x44]
	mov [ebp-0x2c], eax
	mov eax, [ebp-0x40]
	mov [ebp-0x28], eax
	mov esi, [ebp-0x50]
	jmp _Z16R_BoundsInCell_rP7mnode_tiPKfS2__70
_Z16R_BoundsInCell_rP7mnode_tiPKfS2__50:
	lea eax, [esi+0x4]
	lea edx, [ebp-0x30]
	mov [esp], edx
	mov ecx, edi
	mov edx, [ebp-0x54]
	call _Z16R_BoundsInCell_rP7mnode_tiPKfS2__80
	test eax, eax
	jnz _Z16R_BoundsInCell_rP7mnode_tiPKfS2__90
	mov esi, [ebp-0x50]
	jmp _Z16R_BoundsInCell_rP7mnode_tiPKfS2__70
_Z16R_BoundsInCell_rP7mnode_tiPKfS2__60:
	lea ecx, [ebp-0x3c]
	lea eax, [esi+0x4]
	lea edx, [ebp-0x30]
	mov [esp], edx
	mov edx, [ebp-0x54]
	call _Z16R_BoundsInCell_rP7mnode_tiPKfS2__80
	test eax, eax
	jz _Z16R_BoundsInCell_rP7mnode_tiPKfS2__100
_Z16R_BoundsInCell_rP7mnode_tiPKfS2__90:
	mov eax, 0x1
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16R_BoundsInCell_rP7mnode_tiPKfS2__40:
	xor eax, eax
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;R_AddEntitySurfacesInFrustumCmd(void*)
_Z31R_AddEntitySurfacesInFrustumCmdPv:
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
	call _Z22R_UpdateSceneEntBoundsP14GfxSceneEntityPS0_PPK6DObj_si
	mov [ebp-0x2c], eax
	test eax, eax
	jz _Z31R_AddEntitySurfacesInFrustumCmdPv_10
	mov esi, [ebp+0x8]
	mov edx, [esi+0x4]
	movzx edi, word [esi+0x8]
	mov esi, [ebp-0x1c]
	lea ebx, [esi+0x30]
	test edi, edi
	jle _Z31R_AddEntitySurfacesInFrustumCmdPv_20
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
	jae _Z31R_AddEntitySurfacesInFrustumCmdPv_30
	mov ecx, 0x1
_Z31R_AddEntitySurfacesInFrustumCmdPv_40:
	add edx, 0x14
	cmp ecx, edi
	jz _Z31R_AddEntitySurfacesInFrustumCmdPv_20
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
	jb _Z31R_AddEntitySurfacesInFrustumCmdPv_40
_Z31R_AddEntitySurfacesInFrustumCmdPv_30:
	mov eax, [esi+0x74]
	mov [esp], eax
	call _Z19CG_UsedDObjCalcPosePK7cpose_t
_Z31R_AddEntitySurfacesInFrustumCmdPv_60:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z31R_AddEntitySurfacesInFrustumCmdPv_20:
	lea ecx, [esi+0x3c]
	mov eax, rgp
	mov eax, [eax+0x20a0]
	mov eax, [eax+0xf8]
	mov esi, [ebp+0x8]
	movzx edx, word [esi+0xa]
	mov [esp], ecx
	mov ecx, ebx
	call _Z16R_BoundsInCell_rP7mnode_tiPKfS2_
	test eax, eax
	jnz _Z31R_AddEntitySurfacesInFrustumCmdPv_50
	mov esi, [ebp-0x1c]
	jmp _Z31R_AddEntitySurfacesInFrustumCmdPv_30
_Z31R_AddEntitySurfacesInFrustumCmdPv_10:
	mov eax, [ebp-0x1c]
	test eax, eax
	jz _Z31R_AddEntitySurfacesInFrustumCmdPv_60
	mov eax, [eax+0x74]
	mov [esp], eax
	call _Z19CG_UsedDObjCalcPosePK7cpose_t
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z31R_AddEntitySurfacesInFrustumCmdPv_50:
	mov eax, [ebp-0x1c]
	mov eax, [eax+0x74]
	mov [esp], eax
	call _Z9CG_CullInPK7cpose_t
	mov dword [esp+0x10], 0x0
	mov eax, [ebp-0x2c]
	mov [esp+0xc], eax
	mov eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov edx, [ebp-0x30]
	mov [esp], edx
	call _Z15R_SkinSceneDObjP14GfxSceneEntityS0_PK6DObj_sP11DObjAnimMati
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

