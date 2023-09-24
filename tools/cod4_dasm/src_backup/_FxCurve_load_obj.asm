;Imports of FxCurve_load_obj:
	extern _Z23Hunk_AllocAlignInternalii
	extern memcpy

;Exports of FxCurve_load_obj:
	global _Z30FxCurve_AllocAndCreateWithKeysPKfii


SECTION .text


;FxCurve_AllocAndCreateWithKeys(float const*, int, int)
_Z30FxCurve_AllocAndCreateWithKeysPKfii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0xc]
	add eax, 0x1
	mov [ebp-0x1c], eax
	pxor xmm0, xmm0
	mov edx, [ebp+0x8]
	ucomiss xmm0, [edx]
	setnz bl
	setp al
	or bl, al
	mov edx, [ebp+0x10]
	lea eax, [edx*4-0x4]
	imul eax, [ebp-0x1c]
	movss xmm0, dword [_float_1_00000000]
	mov edi, [ebp+0x8]
	ucomiss xmm0, [edi+eax]
	setnz al
	mov edi, eax
	setp al
	or edi, eax
	mov dword [esp+0x4], 0x4
	mov edx, edi
	movzx eax, dl
	movzx edx, bl
	add edx, [ebp+0x10]
	add eax, edx
	imul eax, [ebp-0x1c]
	lea eax, [eax*4+0x8]
	mov [esp], eax
	call _Z23Hunk_AllocAlignInternalii
	mov esi, eax
	mov eax, [ebp+0xc]
	mov [esi], eax
	test bl, bl
	jnz _Z30FxCurve_AllocAndCreateWithKeysPKfii_10
	xor ebx, ebx
	xor eax, eax
_Z30FxCurve_AllocAndCreateWithKeysPKfii_70:
	lea edx, [esi+eax*4+0x8]
	mov eax, [ebp-0x1c]
	imul eax, [ebp+0x10]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
	mov edx, [ebp+0x10]
	lea eax, [ebx+edx]
	mov ebx, edi
	test bl, bl
	jz _Z30FxCurve_AllocAndCreateWithKeysPKfii_20
	imul eax, [ebp-0x1c]
	mov dword [esi+eax*4+0x8], 0x3f800000
	mov edx, [ebp+0xc]
	test edx, edx
	jz _Z30FxCurve_AllocAndCreateWithKeysPKfii_30
	xor ecx, ecx
	lea edx, [esi+eax*4+0x8]
	mov ebx, 0x4
_Z30FxCurve_AllocAndCreateWithKeysPKfii_40:
	mov edi, [ebp+0x8]
	mov eax, [edi+ecx*4+0x4]
	mov [edx+ebx], eax
	add ecx, 0x1
	add edx, 0x4
	cmp [ebp+0xc], ecx
	jnz _Z30FxCurve_AllocAndCreateWithKeysPKfii_40
_Z30FxCurve_AllocAndCreateWithKeysPKfii_30:
	mov eax, [ebp+0x10]
	mov [esi+0x4], eax
	mov eax, esi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z30FxCurve_AllocAndCreateWithKeysPKfii_10:
	mov dword [esi+0x8], 0x0
	mov ecx, [ebp+0xc]
	test ecx, ecx
	jz _Z30FxCurve_AllocAndCreateWithKeysPKfii_50
	mov edx, esi
	xor ecx, ecx
_Z30FxCurve_AllocAndCreateWithKeysPKfii_60:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+ecx*4+0x4]
	mov [edx+0xc], eax
	add ecx, 0x1
	add edx, 0x4
	cmp ecx, [ebp+0xc]
	jnz _Z30FxCurve_AllocAndCreateWithKeysPKfii_60
_Z30FxCurve_AllocAndCreateWithKeysPKfii_50:
	mov eax, [ebp-0x1c]
	mov ebx, 0x1
	jmp _Z30FxCurve_AllocAndCreateWithKeysPKfii_70
_Z30FxCurve_AllocAndCreateWithKeysPKfii_20:
	mov eax, edx
	mov [esi+0x4], eax
	mov eax, esi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Initialized global or static variables of FxCurve_load_obj:
SECTION .data


;Initialized constant data of FxCurve_load_obj:
SECTION .rdata


;Zero initialized global or static variables of FxCurve_load_obj:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1

