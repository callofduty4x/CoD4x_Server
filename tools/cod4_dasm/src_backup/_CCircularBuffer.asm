;Imports of CCircularBuffer:
	extern free
	extern malloc
	extern memcpy

;Exports of CCircularBuffer:
	global _ZN15CCircularBuffer11ReadPtrSizeEv
	global _ZN15CCircularBuffer5AllocEm
	global _ZN15CCircularBuffer5ResetEv
	global _ZN15CCircularBuffer5WriteEPKvRm
	global _ZN15CCircularBuffer7ReadPtrERm
	global _ZN15CCircularBufferC1Em
	global _ZN15CCircularBufferC1Ev
	global _ZN15CCircularBufferD1Ev


SECTION .text


;CCircularBuffer::ReadPtrSize()
_ZN15CCircularBuffer11ReadPtrSizeEv:
	push ebp
	mov ebp, esp
	push ebx
	mov edx, [ebp+0x8]
	mov ecx, [edx+0x8]
	add ecx, [edx+0xc]
	mov ebx, [edx+0x4]
	cmp ecx, ebx
	mov eax, 0x0
	cmovae ecx, eax
	mov eax, [edx+0x10]
	cmp ecx, eax
	ja _ZN15CCircularBuffer11ReadPtrSizeEv_10
	sub eax, ecx
	pop ebx
	pop ebp
	ret
_ZN15CCircularBuffer11ReadPtrSizeEv_10:
	sub ebx, ecx
	add eax, ebx
	pop ebx
	pop ebp
	ret
	nop


;CCircularBuffer::Alloc(unsigned long)
_ZN15CCircularBuffer5AllocEm:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov eax, [ebx]
	test eax, eax
	jz _ZN15CCircularBuffer5AllocEm_10
	mov [esp], eax
	call free
	mov dword [ebx], 0x0
	mov dword [ebx+0x4], 0x0
	mov dword [ebx+0x8], 0x0
	mov dword [ebx+0xc], 0x0
	mov dword [ebx+0x10], 0x0
_ZN15CCircularBuffer5AllocEm_10:
	mov [esp], esi
	call malloc
	mov [ebx], eax
	mov [ebx+0x4], esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;CCircularBuffer::Reset()
_ZN15CCircularBuffer5ResetEv:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov dword [eax+0x8], 0x0
	mov dword [eax+0xc], 0x0
	mov dword [eax+0x10], 0x0
	pop ebp
	ret
	nop


;CCircularBuffer::Write(void const*, unsigned long&)
_ZN15CCircularBuffer5WriteEPKvRm:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov edx, [edi+0x10]
	mov eax, [edi+0x8]
	cmp edx, eax
	jae _ZN15CCircularBuffer5WriteEPKvRm_10
	sub eax, edx
	mov edx, [ebp+0x10]
	cmp eax, [edx]
	jae _ZN15CCircularBuffer5WriteEPKvRm_20
	mov [edx], eax
	mov eax, [ebp+0x10]
_ZN15CCircularBuffer5WriteEPKvRm_60:
	mov edx, [eax]
	test edx, edx
	jz _ZN15CCircularBuffer5WriteEPKvRm_30
	mov eax, [edi]
	add eax, [edi+0x10]
	mov [esp+0x8], edx
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	mov eax, [edi+0x10]
	mov edx, [ebp+0x10]
	add eax, [edx]
	mov [edi+0x10], eax
	cmp eax, [edi+0x4]
	jb _ZN15CCircularBuffer5WriteEPKvRm_30
	mov dword [edi+0x10], 0x0
_ZN15CCircularBuffer5WriteEPKvRm_30:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN15CCircularBuffer5WriteEPKvRm_10:
	mov eax, [ebp+0x10]
	mov ebx, [eax]
	mov ecx, ebx
	mov eax, [edi+0x4]
	sub eax, edx
	cmp ebx, eax
	cmova ebx, eax
	test ebx, ebx
	jnz _ZN15CCircularBuffer5WriteEPKvRm_40
_ZN15CCircularBuffer5WriteEPKvRm_80:
	cmp ebx, ecx
	jae _ZN15CCircularBuffer5WriteEPKvRm_30
	mov esi, ecx
	sub esi, ebx
	mov ecx, [ebp+0xc]
	add ecx, ebx
	mov edx, [edi+0x10]
	mov eax, [edi+0x8]
	sub eax, edx
	cmp esi, eax
	cmova esi, eax
	test esi, esi
	jnz _ZN15CCircularBuffer5WriteEPKvRm_50
_ZN15CCircularBuffer5WriteEPKvRm_90:
	lea eax, [esi+ebx]
	mov edx, [ebp+0x10]
	mov [edx], eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN15CCircularBuffer5WriteEPKvRm_20:
	mov eax, edx
	jmp _ZN15CCircularBuffer5WriteEPKvRm_60
_ZN15CCircularBuffer5WriteEPKvRm_40:
	add edx, [edi]
	mov [esp+0x8], ebx
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
	mov eax, ebx
	add eax, [edi+0x10]
	mov [edi+0x10], eax
	cmp eax, [edi+0x4]
	jb _ZN15CCircularBuffer5WriteEPKvRm_70
	mov dword [edi+0x10], 0x0
	mov edx, [ebp+0x10]
	mov ecx, [edx]
	jmp _ZN15CCircularBuffer5WriteEPKvRm_80
_ZN15CCircularBuffer5WriteEPKvRm_50:
	add edx, [edi]
	mov [esp+0x8], esi
	mov [esp+0x4], ecx
	mov [esp], edx
	call memcpy
	mov eax, esi
	add eax, [edi+0x10]
	mov [edi+0x10], eax
	cmp eax, [edi+0x4]
	jb _ZN15CCircularBuffer5WriteEPKvRm_90
	mov dword [edi+0x10], 0x0
	jmp _ZN15CCircularBuffer5WriteEPKvRm_90
_ZN15CCircularBuffer5WriteEPKvRm_70:
	mov eax, [ebp+0x10]
	mov ecx, [eax]
	jmp _ZN15CCircularBuffer5WriteEPKvRm_80


;CCircularBuffer::ReadPtr(unsigned long&)
_ZN15CCircularBuffer7ReadPtrERm:
	push ebp
	mov ebp, esp
	push ebx
	mov ecx, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov eax, [ecx+0x8]
	add eax, [ecx+0xc]
	mov [ecx+0x8], eax
	cmp eax, [ecx+0x4]
	jb _ZN15CCircularBuffer7ReadPtrERm_10
	xor eax, eax
	mov dword [ecx+0x8], 0x0
_ZN15CCircularBuffer7ReadPtrERm_10:
	mov dword [ecx+0xc], 0x0
	mov edx, [ecx+0x10]
	cmp eax, edx
	jbe _ZN15CCircularBuffer7ReadPtrERm_20
	mov edx, [ecx+0x4]
_ZN15CCircularBuffer7ReadPtrERm_20:
	sub edx, eax
	mov eax, edx
	cmp edx, [ebx]
	jae _ZN15CCircularBuffer7ReadPtrERm_30
	mov [ebx], edx
_ZN15CCircularBuffer7ReadPtrERm_50:
	test eax, eax
	jz _ZN15CCircularBuffer7ReadPtrERm_40
	mov [ecx+0xc], eax
	mov eax, [ecx]
	add eax, [ecx+0x8]
_ZN15CCircularBuffer7ReadPtrERm_40:
	pop ebx
	pop ebp
	ret
_ZN15CCircularBuffer7ReadPtrERm_30:
	mov eax, [ebx]
	jmp _ZN15CCircularBuffer7ReadPtrERm_50
	nop


;CCircularBuffer::CCircularBuffer(unsigned long)
_ZN15CCircularBufferC1Em:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov dword [ebx], 0x0
	mov dword [ebx+0x4], 0x0
	mov dword [ebx+0x8], 0x0
	mov dword [ebx+0xc], 0x0
	mov dword [ebx+0x10], 0x0
	mov [esp], esi
	call malloc
	mov [ebx], eax
	mov [ebx+0x4], esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;CCircularBuffer::CCircularBuffer()
_ZN15CCircularBufferC1Ev:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov dword [eax], 0x0
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
	mov dword [eax+0xc], 0x0
	mov dword [eax+0x10], 0x0
	pop ebp
	ret


;CCircularBuffer::~CCircularBuffer()
_ZN15CCircularBufferD1Ev:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, [ebx]
	test eax, eax
	jz _ZN15CCircularBufferD1Ev_10
	mov [esp], eax
	call free
	mov dword [ebx], 0x0
	mov dword [ebx+0x4], 0x0
	mov dword [ebx+0x8], 0x0
	mov dword [ebx+0xc], 0x0
	mov dword [ebx+0x10], 0x0
_ZN15CCircularBufferD1Ev_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;Initialized global or static variables of CCircularBuffer:
SECTION .data


;Initialized constant data of CCircularBuffer:
SECTION .rdata


;Zero initialized global or static variables of CCircularBuffer:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

