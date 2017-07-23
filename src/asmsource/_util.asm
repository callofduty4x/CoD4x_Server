;Imports of util:
	extern dxQuickStepper

;Exports of util:
	global dxProcessIslands
	global ODE_BreakupIslandIfTooBig


SECTION .text


;dxProcessIslands(dxWorld*, float)
dxProcessIslands:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x503c
	mov eax, [ebp+0x8]
	mov esi, [eax+0x8]
	test esi, esi
	jle dxProcessIslands_10
	mov edx, [eax]
	mov eax, edx
	test edx, edx
	jnz dxProcessIslands_20
	jmp dxProcessIslands_30
dxProcessIslands_50:
	mov edx, [edx+0x4]
	test edx, edx
	jz dxProcessIslands_40
dxProcessIslands_20:
	mov ecx, [edx+0x18]
	mov eax, ecx
	and eax, 0x14
	cmp eax, 0x10
	jnz dxProcessIslands_50
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
	ja dxProcessIslands_60
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
	jbe dxProcessIslands_70
dxProcessIslands_60:
	mov eax, [edx+0xd4]
	mov [edx+0xdc], eax
	mov eax, [edx+0xd0]
	mov [edx+0xd8], eax
dxProcessIslands_290:
	mov ebx, [edx+0xdc]
	test ebx, ebx
	jns dxProcessIslands_50
	pxor xmm0, xmm0
	ucomiss xmm0, [edx+0xd8]
	jbe dxProcessIslands_50
	or ecx, 0x4
	mov [edx+0x18], ecx
	jmp dxProcessIslands_50
dxProcessIslands_230:
	mov ecx, [ebp-0x1c]
	test ecx, ecx
	jle dxProcessIslands_80
	xor edx, edx
dxProcessIslands_90:
	mov eax, [ebp+edx*4-0x820]
	mov dword [eax+0x10], 0x1
	add edx, 0x1
	mov ecx, [ebp-0x1c]
	cmp edx, ecx
	jl dxProcessIslands_90
dxProcessIslands_80:
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
	call dxQuickStepper
dxProcessIslands_150:
	mov eax, [esi+0x4]
	mov esi, eax
	test eax, eax
	jnz dxProcessIslands_100
dxProcessIslands_10:
	add esp, 0x503c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
dxProcessIslands_40:
	mov edx, [ebp+0x8]
	mov eax, [edx]
dxProcessIslands_30:
	mov dword [ebp-0x1c], 0x0
	mov dword [ebp-0x20], 0x0
	test eax, eax
	jz dxProcessIslands_110
dxProcessIslands_120:
	mov dword [eax+0x10], 0x0
	mov eax, [eax+0x4]
	test eax, eax
	jnz dxProcessIslands_120
dxProcessIslands_110:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x4]
	test eax, eax
	jz dxProcessIslands_130
dxProcessIslands_140:
	mov dword [eax+0x10], 0x0
	mov eax, [eax+0x4]
	test eax, eax
	jnz dxProcessIslands_140
	mov eax, [ebp+0x8]
dxProcessIslands_300:
	mov esi, [eax]
	test esi, esi
	jz dxProcessIslands_10
	lea edi, [ebp-0x5020]
dxProcessIslands_100:
	mov ecx, [esi+0x10]
	test ecx, ecx
	jnz dxProcessIslands_150
	test byte [esi+0x18], 0x4
	jnz dxProcessIslands_150
	mov dword [esi+0x10], 0x1
	mov [ebp-0x820], esi
	mov dword [ebp-0x1c], 0x1
	mov dword [ebp-0x20], 0x0
	mov edx, esi
	xor ebx, ebx
dxProcessIslands_200:
	mov ecx, [edx+0x14]
	test ecx, ecx
	jz dxProcessIslands_160
dxProcessIslands_180:
	mov eax, [ecx]
	mov edx, [eax+0x10]
	test edx, edx
	jnz dxProcessIslands_170
	mov dword [eax+0x10], 0x1
	mov eax, [ebp-0x20]
	mov edx, [ecx]
	mov [ebp+eax*4-0x5020], edx
	add eax, 0x1
	mov [ebp-0x20], eax
	mov eax, [ecx+0x4]
	test eax, eax
	jz dxProcessIslands_170
	mov edx, [eax+0x10]
	test edx, edx
	jnz dxProcessIslands_170
	mov dword [eax+0x10], 0x1
	and dword [eax+0x18], 0xfffffffb
	mov [ebp+ebx*4-0x1020], eax
	add ebx, 0x1
dxProcessIslands_170:
	mov ecx, [ecx+0xc]
	test ecx, ecx
	jnz dxProcessIslands_180
dxProcessIslands_160:
	test ebx, ebx
	jz dxProcessIslands_190
	sub ebx, 0x1
	mov edx, [ebp+ebx*4-0x1020]
	mov eax, [ebp-0x1c]
	mov [ebp+eax*4-0x820], edx
	add eax, 0x1
	mov [ebp-0x1c], eax
	jmp dxProcessIslands_200
dxProcessIslands_190:
	lea eax, [ebp-0x20]
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	lea edx, [ebp-0x820]
	mov [esp], edx
	call ODE_BreakupIslandIfTooBig
	mov eax, [ebp-0x1c]
	test eax, eax
	jle dxProcessIslands_210
	xor edx, edx
dxProcessIslands_220:
	mov eax, [ebp+edx*4-0x820]
	mov [eax+0x10], edx
	add edx, 0x1
	cmp edx, [ebp-0x1c]
	jl dxProcessIslands_220
dxProcessIslands_210:
	mov eax, [ebp-0x20]
	test eax, eax
	jle dxProcessIslands_230
	mov ebx, 0x1
	lea ecx, [edi+0x4]
	jmp dxProcessIslands_240
dxProcessIslands_260:
	mov eax, [eax+0x10]
	mov [edx+0x24], eax
	mov edx, [ecx-0x4]
	mov eax, [edx+0x30]
	test eax, eax
	jz dxProcessIslands_250
dxProcessIslands_270:
	mov eax, [eax+0x10]
dxProcessIslands_280:
	mov [edx+0x34], eax
	mov eax, ebx
	add ebx, 0x1
	add ecx, 0x4
	cmp eax, [ebp-0x20]
	jge dxProcessIslands_230
dxProcessIslands_240:
	mov edx, [ecx-0x4]
	mov eax, [edx+0x20]
	test eax, eax
	jnz dxProcessIslands_260
	mov eax, 0xffffffff
	mov [edx+0x24], eax
	mov edx, [ecx-0x4]
	mov eax, [edx+0x30]
	test eax, eax
	jnz dxProcessIslands_270
dxProcessIslands_250:
	mov eax, 0xffffffff
	jmp dxProcessIslands_280
dxProcessIslands_70:
	sub dword [edx+0xdc], 0x1
	movss xmm0, dword [edx+0xd8]
	subss xmm0, [ebp+0xc]
	movss [edx+0xd8], xmm0
	jmp dxProcessIslands_290
dxProcessIslands_130:
	mov eax, edx
	jmp dxProcessIslands_300


;ODE_BreakupIslandIfTooBig(dxBody* const*, int*, dxJoint**, int*)
ODE_BreakupIslandIfTooBig:
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
	jg ODE_BreakupIslandIfTooBig_10
	mov ebx, [ebp+0x14]
	cmp dword [ebx], 0x49
	jle ODE_BreakupIslandIfTooBig_20
ODE_BreakupIslandIfTooBig_190:
	sub ecx, edx
	test ecx, ecx
	jle ODE_BreakupIslandIfTooBig_30
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
	jz ODE_BreakupIslandIfTooBig_40
	mov [ebp-0x10], ebx
ODE_BreakupIslandIfTooBig_220:
	mov esi, [ebx]
	mov eax, [ebp-0x18]
	test eax, eax
	jle ODE_BreakupIslandIfTooBig_50
	mov edi, [esi+0x20]
	xor ecx, ecx
	xor ebx, ebx
	jmp ODE_BreakupIslandIfTooBig_60
ODE_BreakupIslandIfTooBig_80:
	lea eax, [ebx+0x1]
	cmp edx, [esi+0x30]
	cmovz ebx, eax
	add ecx, 0x1
	cmp [ebp-0x18], ecx
	jz ODE_BreakupIslandIfTooBig_70
ODE_BreakupIslandIfTooBig_60:
	mov eax, [ebp-0x24]
	mov edx, [eax+ecx*4]
	cmp edi, edx
	jnz ODE_BreakupIslandIfTooBig_80
	add ebx, 0x1
	add ecx, 0x1
	cmp [ebp-0x18], ecx
	jnz ODE_BreakupIslandIfTooBig_60
ODE_BreakupIslandIfTooBig_70:
	cmp ebx, 0x2
	jnz ODE_BreakupIslandIfTooBig_90
ODE_BreakupIslandIfTooBig_200:
	mov dword [esi+0x10], 0x0
	mov eax, 0x1
	test al, al
	jz ODE_BreakupIslandIfTooBig_100
ODE_BreakupIslandIfTooBig_170:
	sub dword [ebp-0x14], 0x4
	mov edx, [ebp-0x10]
	cmp [ebp-0x14], edx
	jz ODE_BreakupIslandIfTooBig_110
ODE_BreakupIslandIfTooBig_250:
	mov ecx, [ebp-0x14]
	mov esi, [ecx]
	mov ebx, [ebp-0x18]
	test ebx, ebx
	jle ODE_BreakupIslandIfTooBig_120
	mov edi, [esi+0x20]
	xor ecx, ecx
	xor ebx, ebx
	jmp ODE_BreakupIslandIfTooBig_130
ODE_BreakupIslandIfTooBig_150:
	lea eax, [ebx+0x1]
	cmp edx, [esi+0x30]
	cmovz ebx, eax
	add ecx, 0x1
	cmp [ebp-0x18], ecx
	jz ODE_BreakupIslandIfTooBig_140
ODE_BreakupIslandIfTooBig_130:
	mov eax, [ebp-0x24]
	mov edx, [eax+ecx*4]
	cmp edi, edx
	jnz ODE_BreakupIslandIfTooBig_150
	add ebx, 0x1
	add ecx, 0x1
	cmp [ebp-0x18], ecx
	jnz ODE_BreakupIslandIfTooBig_130
ODE_BreakupIslandIfTooBig_140:
	cmp ebx, 0x2
	jnz ODE_BreakupIslandIfTooBig_160
ODE_BreakupIslandIfTooBig_230:
	mov dword [esi+0x10], 0x0
	mov eax, 0x1
	test al, al
	jnz ODE_BreakupIslandIfTooBig_170
ODE_BreakupIslandIfTooBig_240:
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
	jnz ODE_BreakupIslandIfTooBig_180
ODE_BreakupIslandIfTooBig_210:
	mov eax, edx
	sub eax, [ebp+0x10]
	sar eax, 0x2
	mov ebx, [ebp+0x14]
	mov [ebx], eax
ODE_BreakupIslandIfTooBig_30:
	mov eax, [ebp+0x14]
	cmp dword [eax], 0x49
	jle ODE_BreakupIslandIfTooBig_20
	mov eax, [ebp+0xc]
	mov ecx, [eax]
	lea edx, [ecx-0x1]
	mov [eax], edx
	mov ebx, [ebp+0x8]
	mov eax, [ebx+edx*4]
	mov dword [eax+0x10], 0x0
	mov eax, [ebp+0xc]
	mov edx, [eax]
	jmp ODE_BreakupIslandIfTooBig_190
ODE_BreakupIslandIfTooBig_20:
	add esp, 0x18
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ODE_BreakupIslandIfTooBig_90:
	sub ebx, 0x1
	jnz ODE_BreakupIslandIfTooBig_50
	mov eax, [esi+0x10]
	test eax, eax
	jz ODE_BreakupIslandIfTooBig_200
	mov eax, [esi+0x30]
	test eax, eax
	jz ODE_BreakupIslandIfTooBig_200
	test edi, edi
	jz ODE_BreakupIslandIfTooBig_200
ODE_BreakupIslandIfTooBig_50:
	xor eax, eax
	test al, al
	jnz ODE_BreakupIslandIfTooBig_170
ODE_BreakupIslandIfTooBig_100:
	add dword [ebp-0x10], 0x4
	mov edx, [ebp-0x10]
	cmp [ebp-0x14], edx
	jz ODE_BreakupIslandIfTooBig_210
ODE_BreakupIslandIfTooBig_180:
	mov ebx, edx
	jmp ODE_BreakupIslandIfTooBig_220
ODE_BreakupIslandIfTooBig_160:
	sub ebx, 0x1
	jnz ODE_BreakupIslandIfTooBig_120
	mov ecx, [esi+0x10]
	test ecx, ecx
	jz ODE_BreakupIslandIfTooBig_230
	mov edx, [esi+0x30]
	test edx, edx
	jz ODE_BreakupIslandIfTooBig_230
	test edi, edi
	jz ODE_BreakupIslandIfTooBig_230
ODE_BreakupIslandIfTooBig_120:
	xor eax, eax
	test al, al
	jz ODE_BreakupIslandIfTooBig_240
	sub dword [ebp-0x14], 0x4
	mov edx, [ebp-0x10]
	cmp [ebp-0x14], edx
	jnz ODE_BreakupIslandIfTooBig_250
ODE_BreakupIslandIfTooBig_110:
	mov eax, [ebp-0x14]
	sub eax, [ebp+0x10]
ODE_BreakupIslandIfTooBig_260:
	sar eax, 0x2
	mov ebx, [ebp+0x14]
	mov [ebx], eax
	jmp ODE_BreakupIslandIfTooBig_30
ODE_BreakupIslandIfTooBig_40:
	xor eax, eax
	jmp ODE_BreakupIslandIfTooBig_260
ODE_BreakupIslandIfTooBig_10:
	cmp edx, 0xe
	jle ODE_BreakupIslandIfTooBig_190
	mov eax, [ebp+0xc]
ODE_BreakupIslandIfTooBig_270:
	sub edx, 0x1
	mov [eax], edx
	mov ebx, [ebp+0x8]
	mov eax, [ebx+edx*4]
	mov dword [eax+0x10], 0x0
	mov eax, [ebp+0xc]
	mov edx, [eax]
	cmp edx, 0xe
	jg ODE_BreakupIslandIfTooBig_270
	jmp ODE_BreakupIslandIfTooBig_190


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

