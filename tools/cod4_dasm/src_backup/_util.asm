;Imports of util:
	extern _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif

;Exports of util:
	global _Z16dxProcessIslandsP7dxWorldf
	global _Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3_


SECTION .text


;dxProcessIslands(dxWorld*, float)
_Z16dxProcessIslandsP7dxWorldf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x503c
	mov eax, [ebp+0x8]
	mov esi, [eax+0x8]
	test esi, esi
	jle _Z16dxProcessIslandsP7dxWorldf_10
	mov edx, [eax]
	mov eax, edx
	test edx, edx
	jnz _Z16dxProcessIslandsP7dxWorldf_20
	jmp _Z16dxProcessIslandsP7dxWorldf_30
_Z16dxProcessIslandsP7dxWorldf_50:
	mov edx, [edx+0x4]
	test edx, edx
	jz _Z16dxProcessIslandsP7dxWorldf_40
_Z16dxProcessIslandsP7dxWorldf_20:
	mov ecx, [edx+0x18]
	mov eax, ecx
	and eax, 0x14
	cmp eax, 0x10
	jnz _Z16dxProcessIslandsP7dxWorldf_50
	lea eax, [edx+0x130]
	movss xmm1, dword [eax+0x4]
	movss xmm2, dword [eax+0x8]
	movss xmm0, dword [edx+0x130]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	ucomiss xmm0, [edx+0xc8]
	ja _Z16dxProcessIslandsP7dxWorldf_60
	lea eax, [edx+0x140]
	movss xmm1, dword [eax+0x4]
	movss xmm2, dword [eax+0x8]
	movss xmm0, dword [edx+0x140]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	ucomiss xmm0, [edx+0xcc]
	jbe _Z16dxProcessIslandsP7dxWorldf_70
_Z16dxProcessIslandsP7dxWorldf_60:
	mov eax, [edx+0xd4]
	mov [edx+0xdc], eax
	mov eax, [edx+0xd0]
	mov [edx+0xd8], eax
_Z16dxProcessIslandsP7dxWorldf_290:
	mov ebx, [edx+0xdc]
	test ebx, ebx
	jns _Z16dxProcessIslandsP7dxWorldf_50
	pxor xmm0, xmm0
	ucomiss xmm0, [edx+0xd8]
	jbe _Z16dxProcessIslandsP7dxWorldf_50
	or ecx, 0x4
	mov [edx+0x18], ecx
	jmp _Z16dxProcessIslandsP7dxWorldf_50
_Z16dxProcessIslandsP7dxWorldf_230:
	mov ecx, [ebp-0x1c]
	test ecx, ecx
	jle _Z16dxProcessIslandsP7dxWorldf_80
	xor edx, edx
_Z16dxProcessIslandsP7dxWorldf_90:
	mov eax, [ebp+edx*4-0x820]
	mov dword [eax+0x10], 0x1
	add edx, 0x1
	mov ecx, [ebp-0x1c]
	cmp edx, ecx
	jl _Z16dxProcessIslandsP7dxWorldf_90
_Z16dxProcessIslandsP7dxWorldf_80:
	movss xmm0, dword [ebp+0xc]
	movss [esp+0x14], xmm0
	mov eax, [ebp-0x20]
	mov [esp+0x10], eax
	mov [esp+0xc], edi
	mov [esp+0x8], ecx
	lea eax, [ebp-0x820]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif
_Z16dxProcessIslandsP7dxWorldf_150:
	mov eax, [esi+0x4]
	mov esi, eax
	test eax, eax
	jnz _Z16dxProcessIslandsP7dxWorldf_100
_Z16dxProcessIslandsP7dxWorldf_10:
	add esp, 0x503c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16dxProcessIslandsP7dxWorldf_40:
	mov edx, [ebp+0x8]
	mov eax, [edx]
_Z16dxProcessIslandsP7dxWorldf_30:
	mov dword [ebp-0x1c], 0x0
	mov dword [ebp-0x20], 0x0
	test eax, eax
	jz _Z16dxProcessIslandsP7dxWorldf_110
_Z16dxProcessIslandsP7dxWorldf_120:
	mov dword [eax+0x10], 0x0
	mov eax, [eax+0x4]
	test eax, eax
	jnz _Z16dxProcessIslandsP7dxWorldf_120
_Z16dxProcessIslandsP7dxWorldf_110:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x4]
	test eax, eax
	jz _Z16dxProcessIslandsP7dxWorldf_130
_Z16dxProcessIslandsP7dxWorldf_140:
	mov dword [eax+0x10], 0x0
	mov eax, [eax+0x4]
	test eax, eax
	jnz _Z16dxProcessIslandsP7dxWorldf_140
	mov eax, [ebp+0x8]
_Z16dxProcessIslandsP7dxWorldf_300:
	mov esi, [eax]
	test esi, esi
	jz _Z16dxProcessIslandsP7dxWorldf_10
	lea edi, [ebp-0x5020]
_Z16dxProcessIslandsP7dxWorldf_100:
	mov ecx, [esi+0x10]
	test ecx, ecx
	jnz _Z16dxProcessIslandsP7dxWorldf_150
	test byte [esi+0x18], 0x4
	jnz _Z16dxProcessIslandsP7dxWorldf_150
	mov dword [esi+0x10], 0x1
	mov [ebp-0x820], esi
	mov dword [ebp-0x1c], 0x1
	mov dword [ebp-0x20], 0x0
	mov edx, esi
	xor ebx, ebx
_Z16dxProcessIslandsP7dxWorldf_200:
	mov ecx, [edx+0x14]
	test ecx, ecx
	jz _Z16dxProcessIslandsP7dxWorldf_160
_Z16dxProcessIslandsP7dxWorldf_180:
	mov eax, [ecx]
	mov edx, [eax+0x10]
	test edx, edx
	jnz _Z16dxProcessIslandsP7dxWorldf_170
	mov dword [eax+0x10], 0x1
	mov eax, [ebp-0x20]
	mov edx, [ecx]
	mov [ebp+eax*4-0x5020], edx
	add eax, 0x1
	mov [ebp-0x20], eax
	mov eax, [ecx+0x4]
	test eax, eax
	jz _Z16dxProcessIslandsP7dxWorldf_170
	mov edx, [eax+0x10]
	test edx, edx
	jnz _Z16dxProcessIslandsP7dxWorldf_170
	mov dword [eax+0x10], 0x1
	and dword [eax+0x18], 0xfffffffb
	mov [ebp+ebx*4-0x1020], eax
	add ebx, 0x1
_Z16dxProcessIslandsP7dxWorldf_170:
	mov ecx, [ecx+0xc]
	test ecx, ecx
	jnz _Z16dxProcessIslandsP7dxWorldf_180
_Z16dxProcessIslandsP7dxWorldf_160:
	test ebx, ebx
	jz _Z16dxProcessIslandsP7dxWorldf_190
	sub ebx, 0x1
	mov edx, [ebp+ebx*4-0x1020]
	mov eax, [ebp-0x1c]
	mov [ebp+eax*4-0x820], edx
	add eax, 0x1
	mov [ebp-0x1c], eax
	jmp _Z16dxProcessIslandsP7dxWorldf_200
_Z16dxProcessIslandsP7dxWorldf_190:
	lea eax, [ebp-0x20]
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	lea edx, [ebp-0x820]
	mov [esp], edx
	call _Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3_
	mov eax, [ebp-0x1c]
	test eax, eax
	jle _Z16dxProcessIslandsP7dxWorldf_210
	xor edx, edx
_Z16dxProcessIslandsP7dxWorldf_220:
	mov eax, [ebp+edx*4-0x820]
	mov [eax+0x10], edx
	add edx, 0x1
	cmp edx, [ebp-0x1c]
	jl _Z16dxProcessIslandsP7dxWorldf_220
_Z16dxProcessIslandsP7dxWorldf_210:
	mov eax, [ebp-0x20]
	test eax, eax
	jle _Z16dxProcessIslandsP7dxWorldf_230
	mov ebx, 0x1
	lea ecx, [edi+0x4]
	jmp _Z16dxProcessIslandsP7dxWorldf_240
_Z16dxProcessIslandsP7dxWorldf_260:
	mov eax, [eax+0x10]
	mov [edx+0x24], eax
	mov edx, [ecx-0x4]
	mov eax, [edx+0x30]
	test eax, eax
	jz _Z16dxProcessIslandsP7dxWorldf_250
_Z16dxProcessIslandsP7dxWorldf_270:
	mov eax, [eax+0x10]
_Z16dxProcessIslandsP7dxWorldf_280:
	mov [edx+0x34], eax
	mov eax, ebx
	add ebx, 0x1
	add ecx, 0x4
	cmp eax, [ebp-0x20]
	jge _Z16dxProcessIslandsP7dxWorldf_230
_Z16dxProcessIslandsP7dxWorldf_240:
	mov edx, [ecx-0x4]
	mov eax, [edx+0x20]
	test eax, eax
	jnz _Z16dxProcessIslandsP7dxWorldf_260
	mov eax, 0xffffffff
	mov [edx+0x24], eax
	mov edx, [ecx-0x4]
	mov eax, [edx+0x30]
	test eax, eax
	jnz _Z16dxProcessIslandsP7dxWorldf_270
_Z16dxProcessIslandsP7dxWorldf_250:
	mov eax, 0xffffffff
	jmp _Z16dxProcessIslandsP7dxWorldf_280
_Z16dxProcessIslandsP7dxWorldf_70:
	sub dword [edx+0xdc], 0x1
	movss xmm0, dword [edx+0xd8]
	subss xmm0, [ebp+0xc]
	movss [edx+0xd8], xmm0
	jmp _Z16dxProcessIslandsP7dxWorldf_290
_Z16dxProcessIslandsP7dxWorldf_130:
	mov eax, edx
	jmp _Z16dxProcessIslandsP7dxWorldf_300


;ODE_BreakupIslandIfTooBig(dxBody* const*, int*, dxJoint**, int*)
_Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x18
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	mov eax, [ebp+0xc]
	mov edx, [eax]
	mov ecx, edx
	cmp edx, 0xd
	jg _Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__10
	mov ebx, [ebp+0x14]
	cmp dword [ebx], 0x49
	jle _Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__20
_Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__190:
	sub ecx, edx
	test ecx, ecx
	jle _Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__30
	mov ebx, [ebp+0x14]
	mov eax, [ebx]
	mov ebx, [ebp+0x10]
	lea eax, [ebx+eax*4]
	mov [ebp-0x14], eax
	mov [ebp-0x1c], ecx
	mov eax, [ebp+0x8]
	lea edx, [eax+edx*4]
	mov [ebp-0x24], edx
	mov [ebp-0x20], edx
	mov [ebp-0x18], ecx
	mov ecx, [ebp-0x14]
	cmp ebx, ecx
	jz _Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__40
	mov [ebp-0x10], ebx
_Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__220:
	mov esi, [ebx]
	mov eax, [ebp-0x18]
	test eax, eax
	jle _Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__50
	mov edi, [esi+0x20]
	xor ecx, ecx
	xor ebx, ebx
	jmp _Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__60
_Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__80:
	lea eax, [ebx+0x1]
	cmp edx, [esi+0x30]
	cmovz ebx, eax
	add ecx, 0x1
	cmp [ebp-0x18], ecx
	jz _Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__70
_Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__60:
	mov eax, [ebp-0x24]
	mov edx, [eax+ecx*4]
	cmp edi, edx
	jnz _Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__80
	add ebx, 0x1
	add ecx, 0x1
	cmp [ebp-0x18], ecx
	jnz _Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__60
_Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__70:
	cmp ebx, 0x2
	jnz _Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__90
_Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__200:
	mov dword [esi+0x10], 0x0
	mov eax, 0x1
	test al, al
	jz _Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__100
_Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__170:
	sub dword [ebp-0x14], 0x4
	mov edx, [ebp-0x10]
	cmp [ebp-0x14], edx
	jz _Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__110
_Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__250:
	mov ecx, [ebp-0x14]
	mov esi, [ecx]
	mov ebx, [ebp-0x18]
	test ebx, ebx
	jle _Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__120
	mov edi, [esi+0x20]
	xor ecx, ecx
	xor ebx, ebx
	jmp _Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__130
_Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__150:
	lea eax, [ebx+0x1]
	cmp edx, [esi+0x30]
	cmovz ebx, eax
	add ecx, 0x1
	cmp [ebp-0x18], ecx
	jz _Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__140
_Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__130:
	mov eax, [ebp-0x24]
	mov edx, [eax+ecx*4]
	cmp edi, edx
	jnz _Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__150
	add ebx, 0x1
	add ecx, 0x1
	cmp [ebp-0x18], ecx
	jnz _Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__130
_Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__140:
	cmp ebx, 0x2
	jnz _Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__160
_Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__230:
	mov dword [esi+0x10], 0x0
	mov eax, 0x1
	test al, al
	jnz _Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__170
_Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__240:
	mov ecx, [ebp-0x10]
	mov edx, [ecx]
	mov ebx, [ebp-0x14]
	mov eax, [ebx]
	mov [ecx], eax
	mov [ebx], edx
	add ecx, 0x4
	mov [ebp-0x10], ecx
	mov edx, ecx
	cmp [ebp-0x14], edx
	jnz _Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__180
_Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__210:
	mov eax, edx
	sub eax, [ebp+0x10]
	sar eax, 0x2
	mov ebx, [ebp+0x14]
	mov [ebx], eax
_Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__30:
	mov eax, [ebp+0x14]
	cmp dword [eax], 0x49
	jle _Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__20
	mov eax, [ebp+0xc]
	mov ecx, [eax]
	lea edx, [ecx-0x1]
	mov [eax], edx
	mov ebx, [ebp+0x8]
	mov eax, [ebx+edx*4]
	mov dword [eax+0x10], 0x0
	mov eax, [ebp+0xc]
	mov edx, [eax]
	jmp _Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__190
_Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__20:
	add esp, 0x18
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__90:
	sub ebx, 0x1
	jnz _Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__50
	mov eax, [esi+0x10]
	test eax, eax
	jz _Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__200
	mov eax, [esi+0x30]
	test eax, eax
	jz _Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__200
	test edi, edi
	jz _Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__200
_Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__50:
	xor eax, eax
	test al, al
	jnz _Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__170
_Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__100:
	add dword [ebp-0x10], 0x4
	mov edx, [ebp-0x10]
	cmp [ebp-0x14], edx
	jz _Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__210
_Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__180:
	mov ebx, edx
	jmp _Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__220
_Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__160:
	sub ebx, 0x1
	jnz _Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__120
	mov ecx, [esi+0x10]
	test ecx, ecx
	jz _Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__230
	mov edx, [esi+0x30]
	test edx, edx
	jz _Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__230
	test edi, edi
	jz _Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__230
_Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__120:
	xor eax, eax
	test al, al
	jz _Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__240
	sub dword [ebp-0x14], 0x4
	mov edx, [ebp-0x10]
	cmp [ebp-0x14], edx
	jnz _Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__250
_Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__110:
	mov eax, [ebp-0x14]
	sub eax, [ebp+0x10]
_Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__260:
	sar eax, 0x2
	mov ebx, [ebp+0x14]
	mov [ebx], eax
	jmp _Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__30
_Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__40:
	xor eax, eax
	jmp _Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__260
_Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__10:
	cmp edx, 0xe
	jle _Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__190
	mov eax, [ebp+0xc]
_Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__270:
	sub edx, 0x1
	mov [eax], edx
	mov ebx, [ebp+0x8]
	mov eax, [ebx+edx*4]
	mov dword [eax+0x10], 0x0
	mov eax, [ebp+0xc]
	mov edx, [eax]
	cmp edx, 0xe
	jg _Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__270
	jmp _Z25ODE_BreakupIslandIfTooBigPKP6dxBodyPiPP7dxJointS3__190


;Initialized global or static variables of util:
SECTION .data


;Initialized constant data of util:
SECTION .rdata


;Zero initialized global or static variables of util:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

