;Imports of ragdoll_controller:
	extern ragdollBodies
	extern DObjGetRotTransArray
	extern R_GetLocalClientNum
	extern cgArray
	extern DObjSetSkelRotTransIndex

;Exports of ragdoll_controller:
	global Ragdoll_HandleBody
	global Ragdoll_DoControllers
	global Ragdoll_BodyBoneOrientations
	global Ragdoll_BodyPrevBoneOrientations


SECTION .text


;Ragdoll_HandleBody(int)
Ragdoll_HandleBody:
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
Ragdoll_DoControllers:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, [ebp+0x8]
	cmp byte [eax+0xc], 0x0
	jz Ragdoll_DoControllers_10
	mov edx, [eax+0x10]
	test edx, edx
	jnz Ragdoll_DoControllers_20
	mov edx, [eax+0x14]
	test edx, edx
	jz Ragdoll_DoControllers_10
Ragdoll_DoControllers_50:
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*4]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edx, ragdollBodies
	lea edi, [edx+eax*4-0x9d4]
	cmp dword [edi+0x24], 0x2
	jle Ragdoll_DoControllers_10
	mov eax, [ebp+0xc]
	mov [esp], eax
	call DObjGetRotTransArray
	mov [ebp-0x38], eax
	test eax, eax
	jz Ragdoll_DoControllers_10
	call R_GetLocalClientNum
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
	jg Ragdoll_DoControllers_30
Ragdoll_DoControllers_100:
	lea edx, [edi+0x1c4]
	mov [ebp-0x30], edx
	mov eax, [edi+0x1c0]
	test eax, eax
	jg Ragdoll_DoControllers_40
Ragdoll_DoControllers_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Ragdoll_DoControllers_20:
	mov eax, [eax+0x14]
	test eax, eax
	cmovnz edx, eax
	jmp Ragdoll_DoControllers_50
Ragdoll_DoControllers_40:
	mov dword [ebp-0x1c], 0x0
	jmp Ragdoll_DoControllers_60
Ragdoll_DoControllers_80:
	movss xmm0, dword [_float_2_00000000]
	divss xmm0, xmm3
	movss [edx+0x1c], xmm0
Ragdoll_DoControllers_70:
	add dword [ebp-0x1c], 0x1
	add dword [ebp-0x30], 0x8
	add esi, 0x20
	mov edx, [ebp-0x1c]
	cmp edx, [edi+0x1c0]
	jge Ragdoll_DoControllers_10
Ragdoll_DoControllers_60:
	mov eax, [ebp-0x30]
	movzx ebx, byte [eax+0x4]
	mov [esp+0x8], ebx
	mov edx, [ebp+0x10]
	mov [esp+0x4], edx
	mov eax, [ebp+0xc]
	mov [esp], eax
	call DObjSetSkelRotTransIndex
	test al, al
	jz Ragdoll_DoControllers_70
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
	jp Ragdoll_DoControllers_80
	jnz Ragdoll_DoControllers_80
	mov dword [edx+0xc], 0x3f800000
	mov dword [edx+0x1c], 0x40000000
	jmp Ragdoll_DoControllers_70
Ragdoll_DoControllers_30:
	mov dword [ebp-0x2c], 0x0
	jmp Ragdoll_DoControllers_90
Ragdoll_DoControllers_120:
	movss xmm0, dword [_float_2_00000000]
	divss xmm0, xmm3
	movss [edx+0x1c], xmm0
Ragdoll_DoControllers_110:
	add dword [ebp-0x2c], 0x1
	add dword [ebp-0x34], 0x1c
	add esi, 0x20
	mov eax, [ebp-0x2c]
	cmp [edi+0x34], eax
	jle Ragdoll_DoControllers_100
Ragdoll_DoControllers_90:
	mov edx, [ebp-0x34]
	movzx ebx, byte [edx+0x4]
	mov [esp+0x8], ebx
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov edx, [ebp+0xc]
	mov [esp], edx
	call DObjSetSkelRotTransIndex
	test al, al
	jz Ragdoll_DoControllers_110
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
	jp Ragdoll_DoControllers_120
	jnz Ragdoll_DoControllers_120
	mov dword [edx+0xc], 0x3f800000
	mov dword [edx+0x1c], 0x40000000
	jmp Ragdoll_DoControllers_110


;Ragdoll_BodyBoneOrientations(RagdollBody*)
Ragdoll_BodyBoneOrientations:
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
Ragdoll_BodyPrevBoneOrientations:
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

