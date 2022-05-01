;Imports of ms_qsort:

;Exports of ms_qsort:
	global _Z8ms_qsortPvmmPFiPKvS1_E


SECTION .text


;ms_qsort(void*, unsigned long, unsigned long, int (*)(void const*, void const*))
_Z8ms_qsortPvmmPFiPKvS1_E:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x12c
	mov eax, [ebp+0xc]
	cmp eax, 0x1
	jbe _Z8ms_qsortPvmmPFiPKvS1_E_10
	mov edx, [ebp+0x8]
	mov [ebp-0x11c], edx
	sub eax, 0x1
	imul eax, [ebp+0x10]
	add eax, edx
	mov [ebp-0x118], eax
	mov eax, [ebp+0x10]
	sub eax, 0x1
	mov [ebp-0x110], eax
	mov dword [ebp-0x114], 0x0
	mov eax, [ebp-0x118]
_Z8ms_qsortPvmmPFiPKvS1_E_290:
	sub eax, [ebp-0x11c]
	xor edx, edx
	div dword [ebp+0x10]
	add eax, 0x1
	cmp eax, 0x8
	ja _Z8ms_qsortPvmmPFiPKvS1_E_20
_Z8ms_qsortPvmmPFiPKvS1_E_80:
	mov eax, [ebp-0x118]
	cmp [ebp-0x11c], eax
	jae _Z8ms_qsortPvmmPFiPKvS1_E_30
	mov edi, [ebp-0x11c]
	add edi, [ebp+0x10]
_Z8ms_qsortPvmmPFiPKvS1_E_70:
	cmp [ebp-0x118], edi
	jae _Z8ms_qsortPvmmPFiPKvS1_E_40
	mov esi, [ebp-0x11c]
_Z8ms_qsortPvmmPFiPKvS1_E_240:
	cmp [ebp-0x118], esi
	jz _Z8ms_qsortPvmmPFiPKvS1_E_50
	cmp dword [ebp-0x110], 0xffffffff
	jz _Z8ms_qsortPvmmPFiPKvS1_E_50
	mov ecx, esi
	mov ebx, [ebp-0x118]
	mov edx, [ebp-0x110]
	lea esi, [edx+esi+0x1]
_Z8ms_qsortPvmmPFiPKvS1_E_60:
	movzx edx, byte [ecx]
	movzx eax, byte [ebx]
	mov [ecx], al
	add ecx, 0x1
	mov [ebx], dl
	add ebx, 0x1
	cmp ecx, esi
	jnz _Z8ms_qsortPvmmPFiPKvS1_E_60
_Z8ms_qsortPvmmPFiPKvS1_E_50:
	mov eax, [ebp+0x10]
	sub [ebp-0x118], eax
	mov edx, [ebp-0x118]
	cmp [ebp-0x11c], edx
	jb _Z8ms_qsortPvmmPFiPKvS1_E_70
_Z8ms_qsortPvmmPFiPKvS1_E_30:
	sub dword [ebp-0x114], 0x1
	js _Z8ms_qsortPvmmPFiPKvS1_E_10
	mov edx, [ebp-0x114]
	mov edx, [ebp+edx*4-0x90]
	mov [ebp-0x11c], edx
	mov eax, [ebp-0x114]
	mov eax, [ebp+eax*4-0x108]
	mov [ebp-0x118], eax
	sub eax, [ebp-0x11c]
	xor edx, edx
	div dword [ebp+0x10]
	add eax, 0x1
	cmp eax, 0x8
	jbe _Z8ms_qsortPvmmPFiPKvS1_E_80
_Z8ms_qsortPvmmPFiPKvS1_E_20:
	shr eax, 1
	imul eax, [ebp+0x10]
	add eax, [ebp-0x11c]
	mov [ebp-0x10c], eax
	mov [esp+0x4], eax
	mov edx, [ebp-0x11c]
	mov [esp], edx
	call dword [ebp+0x14]
	test eax, eax
	jle _Z8ms_qsortPvmmPFiPKvS1_E_90
	mov eax, [ebp-0x10c]
	cmp [ebp-0x11c], eax
	jz _Z8ms_qsortPvmmPFiPKvS1_E_90
	cmp dword [ebp-0x110], 0xffffffff
	jz _Z8ms_qsortPvmmPFiPKvS1_E_90
	mov ecx, [ebp-0x11c]
	mov ebx, [ebp-0x10c]
	mov eax, [ebp-0x110]
	lea esi, [ecx+eax+0x1]
_Z8ms_qsortPvmmPFiPKvS1_E_100:
	movzx edx, byte [ecx]
	movzx eax, byte [ebx]
	mov [ecx], al
	add ecx, 0x1
	mov [ebx], dl
	add ebx, 0x1
	cmp esi, ecx
	jnz _Z8ms_qsortPvmmPFiPKvS1_E_100
_Z8ms_qsortPvmmPFiPKvS1_E_90:
	mov edx, [ebp-0x118]
	mov [esp+0x4], edx
	mov eax, [ebp-0x11c]
	mov [esp], eax
	call dword [ebp+0x14]
	test eax, eax
	jle _Z8ms_qsortPvmmPFiPKvS1_E_110
	mov edx, [ebp-0x118]
	cmp [ebp-0x11c], edx
	jz _Z8ms_qsortPvmmPFiPKvS1_E_110
	cmp dword [ebp-0x110], 0xffffffff
	jz _Z8ms_qsortPvmmPFiPKvS1_E_110
	mov ecx, [ebp-0x11c]
	mov ebx, [ebp-0x118]
	mov edx, [ebp-0x110]
	lea esi, [ecx+edx+0x1]
_Z8ms_qsortPvmmPFiPKvS1_E_120:
	movzx edx, byte [ecx]
	movzx eax, byte [ebx]
	mov [ecx], al
	add ecx, 0x1
	mov [ebx], dl
	add ebx, 0x1
	cmp esi, ecx
	jnz _Z8ms_qsortPvmmPFiPKvS1_E_120
_Z8ms_qsortPvmmPFiPKvS1_E_110:
	mov eax, [ebp-0x118]
	mov [esp+0x4], eax
	mov edx, [ebp-0x10c]
	mov [esp], edx
	call dword [ebp+0x14]
	test eax, eax
	jle _Z8ms_qsortPvmmPFiPKvS1_E_130
	mov eax, [ebp-0x10c]
	cmp [ebp-0x118], eax
	jz _Z8ms_qsortPvmmPFiPKvS1_E_130
	cmp dword [ebp-0x110], 0xffffffff
	jz _Z8ms_qsortPvmmPFiPKvS1_E_130
	mov ecx, [ebp-0x10c]
	mov ebx, [ebp-0x118]
	mov eax, [ebp-0x110]
	lea esi, [ecx+eax+0x1]
_Z8ms_qsortPvmmPFiPKvS1_E_140:
	movzx edx, byte [ecx]
	movzx eax, byte [ebx]
	mov [ecx], al
	add ecx, 0x1
	mov [ebx], dl
	add ebx, 0x1
	cmp esi, ecx
	jnz _Z8ms_qsortPvmmPFiPKvS1_E_140
_Z8ms_qsortPvmmPFiPKvS1_E_130:
	mov edi, [ebp-0x11c]
	mov esi, [ebp-0x118]
_Z8ms_qsortPvmmPFiPKvS1_E_220:
	cmp edi, [ebp-0x10c]
	jae _Z8ms_qsortPvmmPFiPKvS1_E_150
_Z8ms_qsortPvmmPFiPKvS1_E_160:
	add edi, [ebp+0x10]
	cmp edi, [ebp-0x10c]
	jae _Z8ms_qsortPvmmPFiPKvS1_E_150
	mov edx, [ebp-0x10c]
	mov [esp+0x4], edx
	mov [esp], edi
	call dword [ebp+0x14]
	test eax, eax
	jle _Z8ms_qsortPvmmPFiPKvS1_E_160
_Z8ms_qsortPvmmPFiPKvS1_E_180:
	sub esi, [ebp+0x10]
	cmp esi, [ebp-0x10c]
	jbe _Z8ms_qsortPvmmPFiPKvS1_E_170
	mov edx, [ebp-0x10c]
	mov [esp+0x4], edx
	mov [esp], esi
	call dword [ebp+0x14]
	test eax, eax
	jg _Z8ms_qsortPvmmPFiPKvS1_E_180
_Z8ms_qsortPvmmPFiPKvS1_E_170:
	cmp esi, edi
	jb _Z8ms_qsortPvmmPFiPKvS1_E_190
	jz _Z8ms_qsortPvmmPFiPKvS1_E_200
	cmp dword [ebp-0x110], 0xffffffff
	jz _Z8ms_qsortPvmmPFiPKvS1_E_200
	mov ecx, edi
	mov ebx, esi
	mov eax, [ebp-0x110]
	lea eax, [eax+edi+0x1]
	mov [ebp-0x120], eax
_Z8ms_qsortPvmmPFiPKvS1_E_210:
	movzx edx, byte [ecx]
	movzx eax, byte [ebx]
	mov [ecx], al
	add ecx, 0x1
	mov [ebx], dl
	add ebx, 0x1
	cmp ecx, [ebp-0x120]
	jnz _Z8ms_qsortPvmmPFiPKvS1_E_210
_Z8ms_qsortPvmmPFiPKvS1_E_200:
	cmp esi, [ebp-0x10c]
	jnz _Z8ms_qsortPvmmPFiPKvS1_E_220
	mov [ebp-0x10c], edi
	cmp edi, [ebp-0x10c]
	jb _Z8ms_qsortPvmmPFiPKvS1_E_160
_Z8ms_qsortPvmmPFiPKvS1_E_150:
	add edi, [ebp+0x10]
	cmp [ebp-0x118], edi
	jb _Z8ms_qsortPvmmPFiPKvS1_E_180
	mov eax, [ebp-0x10c]
	mov [esp+0x4], eax
	mov [esp], edi
	call dword [ebp+0x14]
	test eax, eax
	jle _Z8ms_qsortPvmmPFiPKvS1_E_150
	jmp _Z8ms_qsortPvmmPFiPKvS1_E_180
_Z8ms_qsortPvmmPFiPKvS1_E_40:
	mov ebx, edi
	mov esi, [ebp-0x11c]
_Z8ms_qsortPvmmPFiPKvS1_E_230:
	mov [esp+0x4], esi
	mov [esp], ebx
	call dword [ebp+0x14]
	test eax, eax
	cmovg esi, ebx
	add ebx, [ebp+0x10]
	cmp [ebp-0x118], ebx
	jae _Z8ms_qsortPvmmPFiPKvS1_E_230
	jmp _Z8ms_qsortPvmmPFiPKvS1_E_240
_Z8ms_qsortPvmmPFiPKvS1_E_190:
	mov ebx, [ebp+0x10]
	add ebx, esi
	cmp ebx, [ebp-0x10c]
	jbe _Z8ms_qsortPvmmPFiPKvS1_E_250
_Z8ms_qsortPvmmPFiPKvS1_E_260:
	sub ebx, [ebp+0x10]
	cmp ebx, [ebp-0x10c]
	jbe _Z8ms_qsortPvmmPFiPKvS1_E_250
	mov edx, [ebp-0x10c]
	mov [esp+0x4], edx
	mov [esp], ebx
	call dword [ebp+0x14]
	test eax, eax
	jz _Z8ms_qsortPvmmPFiPKvS1_E_260
_Z8ms_qsortPvmmPFiPKvS1_E_300:
	mov edx, ebx
	sub edx, [ebp-0x11c]
	mov eax, [ebp-0x118]
	sub eax, edi
	cmp edx, eax
	jl _Z8ms_qsortPvmmPFiPKvS1_E_270
_Z8ms_qsortPvmmPFiPKvS1_E_310:
	cmp [ebp-0x11c], ebx
	jae _Z8ms_qsortPvmmPFiPKvS1_E_280
	mov eax, [ebp-0x11c]
	mov edx, [ebp-0x114]
	mov [ebp+edx*4-0x90], eax
	mov [ebp+edx*4-0x108], ebx
	add edx, 0x1
	mov [ebp-0x114], edx
_Z8ms_qsortPvmmPFiPKvS1_E_280:
	cmp [ebp-0x118], edi
	jbe _Z8ms_qsortPvmmPFiPKvS1_E_30
	mov [ebp-0x11c], edi
	mov eax, [ebp-0x118]
	jmp _Z8ms_qsortPvmmPFiPKvS1_E_290
_Z8ms_qsortPvmmPFiPKvS1_E_250:
	sub ebx, [ebp+0x10]
	cmp [ebp-0x11c], ebx
	jae _Z8ms_qsortPvmmPFiPKvS1_E_300
	mov eax, [ebp-0x10c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call dword [ebp+0x14]
	test eax, eax
	jz _Z8ms_qsortPvmmPFiPKvS1_E_250
	mov edx, ebx
	sub edx, [ebp-0x11c]
	mov eax, [ebp-0x118]
	sub eax, edi
	cmp edx, eax
	jge _Z8ms_qsortPvmmPFiPKvS1_E_310
_Z8ms_qsortPvmmPFiPKvS1_E_270:
	cmp [ebp-0x118], edi
	jbe _Z8ms_qsortPvmmPFiPKvS1_E_320
	mov edx, [ebp-0x114]
	mov [ebp+edx*4-0x90], edi
	mov eax, [ebp-0x118]
	mov [ebp+edx*4-0x108], eax
	add edx, 0x1
	mov [ebp-0x114], edx
_Z8ms_qsortPvmmPFiPKvS1_E_320:
	cmp [ebp-0x11c], ebx
	jae _Z8ms_qsortPvmmPFiPKvS1_E_30
	mov [ebp-0x118], ebx
	mov eax, ebx
	jmp _Z8ms_qsortPvmmPFiPKvS1_E_290
_Z8ms_qsortPvmmPFiPKvS1_E_10:
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;Initialized global or static variables of ms_qsort:
SECTION .data


;Initialized constant data of ms_qsort:
SECTION .rdata


;Zero initialized global or static variables of ms_qsort:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

