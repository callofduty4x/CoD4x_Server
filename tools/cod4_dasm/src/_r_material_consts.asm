;Imports of r_material_consts:

;Exports of r_material_consts:
	global R_ComparePixelConsts


SECTION .text


;R_ComparePixelConsts(Material const**, MaterialPass const**)
R_ComparePixelConsts:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x52c
	mov dword [ebp-0x530], 0x0
	lea eax, [ebp-0xe8]
	mov [ebp-0x500], eax
R_ComparePixelConsts_40:
	mov edx, [ebp-0x530]
	lea edx, [ebp+edx*4-0x20]
	mov [ebp-0x4fc], edx
	mov dword [edx], 0x0
	mov ecx, [ebp-0x500]
	mov dword [ecx], 0x0
	mov eax, [ebp-0x530]
	mov edx, [ebp+0xc]
	mov esi, [edx+eax*4]
	movzx eax, byte [esi+0xd]
	movzx edx, byte [esi+0xc]
	add eax, edx
	mov edx, [esi+0x10]
	lea ebx, [edx+eax*8]
	movzx eax, byte [esi+0xe]
	movzx edx, al
	test al, al
	jz R_ComparePixelConsts_10
	xor eax, eax
R_ComparePixelConsts_30:
	mov edi, edx
	sub edi, eax
	cmp word [ebx], 0x4
	ja R_ComparePixelConsts_20
	add ebx, 0x8
	add eax, 0x1
	cmp edx, eax
	jnz R_ComparePixelConsts_30
R_ComparePixelConsts_10:
	add dword [ebp-0x530], 0x1
	add dword [ebp-0x500], 0x64
	cmp dword [ebp-0x530], 0x2
	jnz R_ComparePixelConsts_40
	mov ebx, [ebp-0x20]
	mov eax, ebx
	sub eax, [ebp-0x1c]
	jnz R_ComparePixelConsts_50
	test ebx, ebx
	jz R_ComparePixelConsts_60
	movzx edx, word [ebp-0x4e8]
	movzx eax, word [ebp-0x2e8]
	sub edx, eax
	mov eax, edx
	jnz R_ComparePixelConsts_50
	xor eax, eax
	jmp R_ComparePixelConsts_70
R_ComparePixelConsts_80:
	mov eax, esi
R_ComparePixelConsts_70:
	lea esi, [eax+0x1]
	cmp ebx, esi
	jz R_ComparePixelConsts_60
	lea ecx, [ebp-0x4e8]
	lea eax, [eax+eax+0x4]
	movzx edx, word [ecx+eax-0x2]
	movzx eax, word [eax+ecx+0x1fe]
	sub edx, eax
	mov eax, edx
	jz R_ComparePixelConsts_80
R_ComparePixelConsts_50:
	add esp, 0x52c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_ComparePixelConsts_60:
	mov ecx, [ebp-0xe8]
	mov eax, ecx
	sub eax, [ebp-0x84]
	jnz R_ComparePixelConsts_50
	test ecx, ecx
	jz R_ComparePixelConsts_90
	movzx edx, word [ebp-0xe4]
	movzx eax, word [ebp-0x80]
	sub edx, eax
	mov eax, edx
	jnz R_ComparePixelConsts_50
	xor edi, edi
R_ComparePixelConsts_130:
	lea eax, [edi*4]
	mov esi, [eax+ebp-0xc4]
	mov ebx, [eax+ebp-0x60]
	mov edx, 0x1
R_ComparePixelConsts_120:
	lea eax, [edx*4]
	movss xmm1, dword [esi+eax-0x4]
	movss xmm0, dword [ebx+eax-0x4]
	ucomiss xmm0, xmm1
	ja R_ComparePixelConsts_100
	ucomiss xmm1, xmm0
	ja R_ComparePixelConsts_110
	add edx, 0x1
	cmp edx, 0x5
	jnz R_ComparePixelConsts_120
	lea ebx, [edi+0x1]
	cmp ecx, ebx
	jz R_ComparePixelConsts_90
	lea eax, [edi+edi+0x4]
	movzx edx, word [ebp+eax-0xe6]
	movzx eax, word [eax+ebp-0x82]
	sub edx, eax
	mov eax, edx
	jnz R_ComparePixelConsts_50
	mov edi, ebx
	jmp R_ComparePixelConsts_130
R_ComparePixelConsts_20:
	mov dword [ebp-0x504], 0x0
	mov ecx, [ebp-0x530]
	shl ecx, 0x8
	mov [ebp-0x534], ecx
	cmp word [ebx], 0x5
	jnz R_ComparePixelConsts_140
R_ComparePixelConsts_150:
	mov edx, [ebp-0x4fc]
	mov eax, [edx]
	mov ecx, [ebp-0x534]
	add ecx, eax
	movzx edx, word [ebx+0x4]
	mov [ebp+ecx*2-0x4e8], dx
	add eax, 0x1
	mov ecx, [ebp-0x4fc]
	mov [ecx], eax
	add ebx, 0x8
	add dword [ebp-0x504], 0x1
	cmp [ebp-0x504], edi
	jz R_ComparePixelConsts_10
	cmp word [ebx], 0x5
	jz R_ComparePixelConsts_150
R_ComparePixelConsts_140:
	mov edx, [ebp-0x530]
	lea eax, [edx+edx*4]
	lea eax, [eax+eax*4]
	lea eax, [ebp+eax*4-0xe8]
	mov [ebp-0x51c], eax
	mov ecx, [ebp+0x8]
	mov ebx, [ecx+edx*4]
	mov dword [eax], 0x0
	movzx eax, byte [esi+0xe]
	movzx ecx, al
	test al, al
	jz R_ComparePixelConsts_10
	movzx eax, byte [esi+0xd]
	movzx edx, byte [esi+0xc]
	add eax, edx
	mov edx, [esi+0x10]
	lea edi, [edx+eax*8]
	xor eax, eax
R_ComparePixelConsts_170:
	mov edx, ecx
	sub edx, eax
	mov [ebp-0x4f4], edx
	cmp word [edi], 0x5
	ja R_ComparePixelConsts_160
	add edi, 0x8
	add eax, 0x1
	cmp ecx, eax
	jnz R_ComparePixelConsts_170
	jmp R_ComparePixelConsts_10
R_ComparePixelConsts_90:
	xor eax, eax
	jmp R_ComparePixelConsts_50
R_ComparePixelConsts_160:
	mov ebx, [ebx+0x48]
	mov [ebp-0x52c], ebx
	mov dword [ebp-0x508], 0x0
	mov eax, [ebp-0x4f4]
R_ComparePixelConsts_240:
	sub eax, [ebp-0x508]
	mov [ebp-0x4f8], eax
	cmp word [edi], 0x6
	jnz R_ComparePixelConsts_180
	mov ebx, [edi+0x4]
	mov ecx, [ebp-0x52c]
	cmp ebx, [ecx]
	jz R_ComparePixelConsts_190
	add ecx, 0x20
	mov edx, ecx
	jmp R_ComparePixelConsts_200
R_ComparePixelConsts_210:
	add ecx, 0x20
R_ComparePixelConsts_200:
	mov [ebp-0x52c], ecx
	mov eax, [edx]
	add edx, 0x20
	cmp ebx, eax
	jnz R_ComparePixelConsts_210
R_ComparePixelConsts_190:
	add ecx, 0x10
	mov [ebp-0x528], ecx
	movzx eax, word [edi+0x2]
	mov [ebp-0x524], eax
	mov edx, [ebp-0x51c]
	mov edx, [edx]
	mov [ebp-0x538], edx
	mov [ebp-0x520], edx
	test edx, edx
	jz R_ComparePixelConsts_220
	mov ecx, edx
	sub ecx, 0x1
	mov [ebp-0x4f0], ecx
	mov eax, [ebp-0x51c]
	movzx esi, word [eax+ecx*2+0x4]
	movzx eax, si
	cmp eax, [ebp-0x524]
	ja R_ComparePixelConsts_230
R_ComparePixelConsts_260:
	mov edx, [ebp-0x520]
R_ComparePixelConsts_220:
	movzx eax, word [ebp-0x524]
	mov ecx, [ebp-0x51c]
	mov [ecx+edx*2+0x4], ax
	mov eax, [ebp-0x528]
	mov [ecx+edx*4+0x24], eax
	add dword [ebp-0x538], 0x1
	mov edx, [ebp-0x538]
	mov [ecx], edx
	add edi, 0x8
	add dword [ebp-0x508], 0x1
	mov ecx, [ebp-0x4f4]
	cmp [ebp-0x508], ecx
	jz R_ComparePixelConsts_10
	mov eax, ecx
	jmp R_ComparePixelConsts_240
R_ComparePixelConsts_230:
	mov eax, [ebp-0x4f0]
	mov edx, [ebp-0x51c]
	lea ebx, [edx+eax*2+0x4]
	lea ecx, [edx+eax*4+0x24]
	xor edx, edx
	jmp R_ComparePixelConsts_250
R_ComparePixelConsts_270:
	mov eax, [ebp-0x4f0]
R_ComparePixelConsts_250:
	sub eax, edx
	mov [ebp-0x520], eax
	mov [ebx+0x2], si
	mov eax, [ecx]
	mov [ecx+0x4], eax
	cmp edx, [ebp-0x4f0]
	jz R_ComparePixelConsts_260
	movzx esi, word [ebx-0x2]
	add edx, 0x1
	sub ebx, 0x2
	sub ecx, 0x4
	movzx eax, si
	cmp eax, [ebp-0x524]
	ja R_ComparePixelConsts_270
	jmp R_ComparePixelConsts_260
R_ComparePixelConsts_180:
	mov dword [ebp-0x50c], 0x0
	jmp R_ComparePixelConsts_280
R_ComparePixelConsts_300:
	mov edx, eax
	sub edx, 0x1
	mov [ebp-0x510], edx
	mov ecx, [ebp-0x51c]
	movzx esi, word [ecx+edx*2+0x4]
	movzx eax, si
	cmp eax, [ebp-0x514]
	ja R_ComparePixelConsts_290
	mov edx, [ebp-0x4ec]
R_ComparePixelConsts_310:
	movzx eax, word [ebp-0x514]
	mov [ecx+edx*2+0x4], ax
	mov eax, [ebp-0x518]
	mov [ecx+edx*4+0x24], eax
	mov eax, [ebp-0x538]
	add eax, 0x1
	mov [ecx], eax
	add edi, 0x8
	add dword [ebp-0x50c], 0x1
	mov edx, [ebp-0x4f8]
	cmp [ebp-0x50c], edx
	jz R_ComparePixelConsts_10
R_ComparePixelConsts_280:
	cmp word [edi], 0x7
	jnz R_ComparePixelConsts_10
	mov edx, [edi+0x4]
	mov [ebp-0x518], edx
	movzx ecx, word [edi+0x2]
	mov [ebp-0x514], ecx
	mov eax, [ebp-0x51c]
	mov eax, [eax]
	mov [ebp-0x538], eax
	mov [ebp-0x4ec], eax
	test eax, eax
	jnz R_ComparePixelConsts_300
	mov edx, eax
	mov ecx, [ebp-0x51c]
	jmp R_ComparePixelConsts_310
R_ComparePixelConsts_290:
	mov ecx, [ebp-0x510]
	mov eax, [ebp-0x51c]
	lea ebx, [eax+ecx*2+0x4]
	lea ecx, [eax+ecx*4+0x24]
	xor edx, edx
R_ComparePixelConsts_330:
	mov eax, [ebp-0x510]
	sub eax, edx
	mov [ebp-0x4ec], eax
	mov [ebx+0x2], si
	mov eax, [ecx]
	mov [ecx+0x4], eax
	cmp edx, [ebp-0x510]
	jz R_ComparePixelConsts_320
	movzx esi, word [ebx-0x2]
	add edx, 0x1
	sub ebx, 0x2
	sub ecx, 0x4
	movzx eax, si
	cmp eax, [ebp-0x514]
	ja R_ComparePixelConsts_330
R_ComparePixelConsts_320:
	mov edx, [ebp-0x4ec]
	mov ecx, [ebp-0x51c]
	jmp R_ComparePixelConsts_310
R_ComparePixelConsts_110:
	mov eax, 0x1
	jmp R_ComparePixelConsts_50
R_ComparePixelConsts_100:
	mov eax, 0xffffffff
	jmp R_ComparePixelConsts_50
	nop


;Initialized global or static variables of r_material_consts:
SECTION .data


;Initialized constant data of r_material_consts:
SECTION .rdata


;Zero initialized global or static variables of r_material_consts:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

