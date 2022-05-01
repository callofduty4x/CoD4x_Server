;Imports of ragdoll_controller:
	extern ragdollBodies
	extern _Z20DObjGetRotTransArrayPK6DObj_s
	extern _Z19R_GetLocalClientNumv
	extern cgArray
	extern _Z24DObjSetSkelRotTransIndexPK6DObj_sPKii

;Exports of ragdoll_controller:
	global _Z18Ragdoll_HandleBodyi
	global _Z21Ragdoll_DoControllersPK7cpose_tPK6DObj_sPi
	global _Z28Ragdoll_BodyBoneOrientationsP11RagdollBody
	global _Z32Ragdoll_BodyPrevBoneOrientationsP11RagdollBody


SECTION .text


;Ragdoll_HandleBody(int)
_Z18Ragdoll_HandleBodyi:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*4]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edx, ragdollBodies
	lea eax, [edx+eax*4-0x9d4]
	pop ebp
	ret


;Ragdoll_DoControllers(cpose_t const*, DObj_s const*, int*)
_Z21Ragdoll_DoControllersPK7cpose_tPK6DObj_sPi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, [ebp+0x8]
	cmp byte [eax+0xc], 0x0
	jz _Z21Ragdoll_DoControllersPK7cpose_tPK6DObj_sPi_10
	mov edx, [eax+0x10]
	test edx, edx
	jnz _Z21Ragdoll_DoControllersPK7cpose_tPK6DObj_sPi_20
	mov edx, [eax+0x14]
	test edx, edx
	jz _Z21Ragdoll_DoControllersPK7cpose_tPK6DObj_sPi_10
_Z21Ragdoll_DoControllersPK7cpose_tPK6DObj_sPi_50:
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*4]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edx, ragdollBodies
	lea edi, [edx+eax*4-0x9d4]
	cmp dword [edi+0x24], 0x2
	jle _Z21Ragdoll_DoControllersPK7cpose_tPK6DObj_sPi_10
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z20DObjGetRotTransArrayPK6DObj_s
	mov [ebp-0x38], eax
	test eax, eax
	jz _Z21Ragdoll_DoControllersPK7cpose_tPK6DObj_sPi_10
	call _Z19R_GetLocalClientNumv
	mov eax, cgArray
	movss xmm0, dword [eax+0x49310]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [eax+0x49314]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [eax+0x49318]
	movss [ebp-0x28], xmm0
	lea eax, [edi+0x38]
	mov [ebp-0x34], eax
	mov edx, [edi+0x2f0]
	lea eax, [edx+edx*2]
	shl eax, 0x3
	sub eax, edx
	shl eax, 0x5
	lea esi, [eax+edi+0x2f4]
	mov edx, [edi+0x34]
	test edx, edx
	jg _Z21Ragdoll_DoControllersPK7cpose_tPK6DObj_sPi_30
_Z21Ragdoll_DoControllersPK7cpose_tPK6DObj_sPi_100:
	lea edx, [edi+0x1c4]
	mov [ebp-0x30], edx
	mov eax, [edi+0x1c0]
	test eax, eax
	jg _Z21Ragdoll_DoControllersPK7cpose_tPK6DObj_sPi_40
_Z21Ragdoll_DoControllersPK7cpose_tPK6DObj_sPi_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21Ragdoll_DoControllersPK7cpose_tPK6DObj_sPi_20:
	mov eax, [eax+0x14]
	test eax, eax
	cmovnz edx, eax
	jmp _Z21Ragdoll_DoControllersPK7cpose_tPK6DObj_sPi_50
_Z21Ragdoll_DoControllersPK7cpose_tPK6DObj_sPi_40:
	mov dword [ebp-0x1c], 0x0
	jmp _Z21Ragdoll_DoControllersPK7cpose_tPK6DObj_sPi_60
_Z21Ragdoll_DoControllersPK7cpose_tPK6DObj_sPi_80:
	movss xmm0, dword [_float_2_00000000]
	divss xmm0, xmm3
	movss [edx+0x1c], xmm0
_Z21Ragdoll_DoControllersPK7cpose_tPK6DObj_sPi_70:
	add dword [ebp-0x1c], 0x1
	add dword [ebp-0x30], 0x8
	add esi, 0x20
	mov edx, [ebp-0x1c]
	cmp edx, [edi+0x1c0]
	jge _Z21Ragdoll_DoControllersPK7cpose_tPK6DObj_sPi_10
_Z21Ragdoll_DoControllersPK7cpose_tPK6DObj_sPi_60:
	mov eax, [ebp-0x30]
	movzx ebx, byte [eax+0x4]
	mov [esp+0x8], ebx
	mov edx, [ebp+0x10]
	mov [esp+0x4], edx
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z24DObjSetSkelRotTransIndexPK6DObj_sPKii
	test al, al
	jz _Z21Ragdoll_DoControllersPK7cpose_tPK6DObj_sPi_70
	shl ebx, 0x5
	mov edx, [ebp-0x38]
	add edx, ebx
	lea eax, [edx+0x10]
	movss xmm0, dword [esi]
	subss xmm0, [ebp-0x20]
	movss [edx+0x10], xmm0
	movss xmm0, dword [esi+0x4]
	subss xmm0, [ebp-0x24]
	movss [eax+0x4], xmm0
	movss xmm0, dword [esi+0x8]
	subss xmm0, [ebp-0x28]
	movss [eax+0x8], xmm0
	lea eax, [esi+0x10]
	movss xmm3, dword [esi+0x10]
	movss [edx], xmm3
	movss xmm0, dword [eax+0x4]
	movss [edx+0x4], xmm0
	movss xmm1, dword [eax+0x8]
	movss [edx+0x8], xmm1
	movss xmm2, dword [eax+0xc]
	movss [edx+0xc], xmm2
	mulss xmm3, xmm3
	mulss xmm0, xmm0
	addss xmm3, xmm0
	mulss xmm1, xmm1
	addss xmm3, xmm1
	mulss xmm2, xmm2
	addss xmm3, xmm2
	ucomiss xmm3, [_float_0_00000000]
	jp _Z21Ragdoll_DoControllersPK7cpose_tPK6DObj_sPi_80
	jnz _Z21Ragdoll_DoControllersPK7cpose_tPK6DObj_sPi_80
	mov dword [edx+0xc], 0x3f800000
	mov dword [edx+0x1c], 0x40000000
	jmp _Z21Ragdoll_DoControllersPK7cpose_tPK6DObj_sPi_70
_Z21Ragdoll_DoControllersPK7cpose_tPK6DObj_sPi_30:
	mov dword [ebp-0x2c], 0x0
	jmp _Z21Ragdoll_DoControllersPK7cpose_tPK6DObj_sPi_90
_Z21Ragdoll_DoControllersPK7cpose_tPK6DObj_sPi_120:
	movss xmm0, dword [_float_2_00000000]
	divss xmm0, xmm3
	movss [edx+0x1c], xmm0
_Z21Ragdoll_DoControllersPK7cpose_tPK6DObj_sPi_110:
	add dword [ebp-0x2c], 0x1
	add dword [ebp-0x34], 0x1c
	add esi, 0x20
	mov eax, [ebp-0x2c]
	cmp [edi+0x34], eax
	jle _Z21Ragdoll_DoControllersPK7cpose_tPK6DObj_sPi_100
_Z21Ragdoll_DoControllersPK7cpose_tPK6DObj_sPi_90:
	mov edx, [ebp-0x34]
	movzx ebx, byte [edx+0x4]
	mov [esp+0x8], ebx
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov edx, [ebp+0xc]
	mov [esp], edx
	call _Z24DObjSetSkelRotTransIndexPK6DObj_sPKii
	test al, al
	jz _Z21Ragdoll_DoControllersPK7cpose_tPK6DObj_sPi_110
	shl ebx, 0x5
	mov edx, [ebp-0x38]
	add edx, ebx
	lea eax, [edx+0x10]
	movss xmm0, dword [esi]
	subss xmm0, [ebp-0x20]
	movss [edx+0x10], xmm0
	movss xmm0, dword [esi+0x4]
	subss xmm0, [ebp-0x24]
	movss [eax+0x4], xmm0
	movss xmm0, dword [esi+0x8]
	subss xmm0, [ebp-0x28]
	movss [eax+0x8], xmm0
	lea eax, [esi+0x10]
	movss xmm3, dword [esi+0x10]
	movss [edx], xmm3
	movss xmm0, dword [eax+0x4]
	movss [edx+0x4], xmm0
	movss xmm1, dword [eax+0x8]
	movss [edx+0x8], xmm1
	movss xmm2, dword [eax+0xc]
	movss [edx+0xc], xmm2
	mulss xmm3, xmm3
	mulss xmm0, xmm0
	addss xmm3, xmm0
	mulss xmm1, xmm1
	addss xmm3, xmm1
	mulss xmm2, xmm2
	addss xmm3, xmm2
	ucomiss xmm3, [_float_0_00000000]
	jp _Z21Ragdoll_DoControllersPK7cpose_tPK6DObj_sPi_120
	jnz _Z21Ragdoll_DoControllersPK7cpose_tPK6DObj_sPi_120
	mov dword [edx+0xc], 0x3f800000
	mov dword [edx+0x1c], 0x40000000
	jmp _Z21Ragdoll_DoControllersPK7cpose_tPK6DObj_sPi_110


;Ragdoll_BodyBoneOrientations(RagdollBody*)
_Z28Ragdoll_BodyBoneOrientationsP11RagdollBody:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x2f0]
	lea eax, [edx+edx*2]
	shl eax, 0x3
	sub eax, edx
	shl eax, 0x5
	lea eax, [eax+ecx+0x2f4]
	pop ebp
	ret


;Ragdoll_BodyPrevBoneOrientations(RagdollBody*)
_Z32Ragdoll_BodyPrevBoneOrientationsP11RagdollBody:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x2f0]
	xor edx, 0x1
	lea eax, [edx+edx*2]
	shl eax, 0x3
	sub eax, edx
	shl eax, 0x5
	lea eax, [eax+ecx+0x2f4]
	pop ebp
	ret
	nop


;Initialized global or static variables of ragdoll_controller:
SECTION .data


;Initialized constant data of ragdoll_controller:
SECTION .rdata


;Zero initialized global or static variables of ragdoll_controller:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_float_2_00000000:		dd 0x40000000	; 2
_float_0_00000000:		dd 0x0	; 0

