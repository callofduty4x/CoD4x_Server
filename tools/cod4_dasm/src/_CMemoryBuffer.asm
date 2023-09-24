;Imports of CMemoryBuffer:
	extern __cxa_atexit
	extern glFinish
	extern _ZdaPv
	extern _Znam
	extern _ZNSt15_List_node_base6unhookEv
	extern _ZdlPv
	extern _Znwm
	extern _ZNSt15_List_node_base4hookEPS_

;Exports of CMemoryBuffer:
	global _GLOBAL__I__ZN13CMemoryBuffer20sDelayedFreeRequestsE
	global _ZN13CMemoryBuffer5ResetEv
	global _ZN13CMemoryBuffer6ResizeEjj
	global _ZN13CMemoryBuffer6UpdateEv
	global _ZN13CMemoryBuffer8RecreateEv
	global _ZN13CMemoryBuffer9FreeLaterEj
	global _ZN13CMemoryBufferC1Ejj
	global _ZN13CMemoryBufferD0Ev
	global _ZN13CMemoryBufferD1Ev
	global _ZNSt10_List_baseIN13CMemoryBuffer11FreeRequestESaIS1_EE8_M_clearEv
	global _ZTI13CMemoryBuffer
	global _ZN13CMemoryBuffer20sDelayedFreeRequestsE
	global _ZN13CMemoryBuffer31sMemoryDesignatedForDelayedFreeE
	global _ZTV13CMemoryBuffer


SECTION .text


;global constructors keyed to CMemoryBuffer::sDelayedFreeRequests
_GLOBAL__I__ZN13CMemoryBuffer20sDelayedFreeRequestsE:
	push ebp
	mov ebp, esp
	mov edx, 0xffff
	mov eax, 0x1
	pop ebp
	jmp _Z41__static_initialization_and_destruction_0ii


;__static_initialization_and_destruction_0(int, int)
_Z41__static_initialization_and_destruction_0ii:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	cmp edx, 0xffff
	jz _Z41__static_initialization_and_destruction_0ii_10
_Z41__static_initialization_and_destruction_0ii_20:
	leave
	ret
_Z41__static_initialization_and_destruction_0ii_10:
	sub eax, 0x1
	jnz _Z41__static_initialization_and_destruction_0ii_20
	mov dword [_ZN13CMemoryBuffer20sDelayedFreeRequestsE], _ZN13CMemoryBuffer20sDelayedFreeRequestsE
	mov dword [_ZN13CMemoryBuffer20sDelayedFreeRequestsE+0x4], _ZN13CMemoryBuffer20sDelayedFreeRequestsE
	mov eax, [0xd5cc00c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov dword [esp], __tcf_0
	call __cxa_atexit
	leave
	ret


;__tcf_0
__tcf_0:
	push ebp
	mov ebp, esp
	mov dword [ebp+0x8], _ZN13CMemoryBuffer20sDelayedFreeRequestsE
	pop ebp
	jmp _ZNSt10_List_baseIN13CMemoryBuffer11FreeRequestESaIS1_EE8_M_clearEv
	add [eax], al


;CMemoryBuffer::Reset()
_ZN13CMemoryBuffer5ResetEv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	call glFinish
	mov edx, [_ZN13CMemoryBuffer20sDelayedFreeRequestsE]
	cmp edx, _ZN13CMemoryBuffer20sDelayedFreeRequestsE
	jz _ZN13CMemoryBuffer5ResetEv_10
	mov ebx, edx
	jmp _ZN13CMemoryBuffer5ResetEv_20
_ZN13CMemoryBuffer5ResetEv_40:
	mov edx, ebx
_ZN13CMemoryBuffer5ResetEv_20:
	mov eax, [_ZN13CMemoryBuffer31sMemoryDesignatedForDelayedFreeE]
	sub eax, [edx+0xc]
	mov [_ZN13CMemoryBuffer31sMemoryDesignatedForDelayedFreeE], eax
	mov eax, [edx+0x8]
	test eax, eax
	jz _ZN13CMemoryBuffer5ResetEv_30
	mov [esp], eax
	call _ZdaPv
_ZN13CMemoryBuffer5ResetEv_30:
	mov ebx, [ebx]
	cmp ebx, _ZN13CMemoryBuffer20sDelayedFreeRequestsE
	jnz _ZN13CMemoryBuffer5ResetEv_40
_ZN13CMemoryBuffer5ResetEv_10:
	mov dword [esp], _ZN13CMemoryBuffer20sDelayedFreeRequestsE
	call _ZNSt10_List_baseIN13CMemoryBuffer11FreeRequestESaIS1_EE8_M_clearEv
	mov dword [_ZN13CMemoryBuffer20sDelayedFreeRequestsE], _ZN13CMemoryBuffer20sDelayedFreeRequestsE
	mov dword [_ZN13CMemoryBuffer20sDelayedFreeRequestsE+0x4], _ZN13CMemoryBuffer20sDelayedFreeRequestsE
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;CMemoryBuffer::Resize(unsigned int, unsigned int)
_ZN13CMemoryBuffer6ResizeEjj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov edi, [ebp+0x10]
	mov eax, [esi+0x10]
	test eax, eax
	jnz _ZN13CMemoryBuffer6ResizeEjj_10
	mov eax, [esi+0x4]
	test eax, eax
	jz _ZN13CMemoryBuffer6ResizeEjj_10
	mov [esp], eax
	call _ZdaPv
_ZN13CMemoryBuffer6ResizeEjj_10:
	mov dword [esi+0x8], 0x0
	mov dword [esi+0x4], 0x0
	mov ebx, edi
	neg ebx
	mov edx, [ebp+0xc]
	lea eax, [edx+edi-0x1]
	and eax, ebx
	lea eax, [edi+eax-0x1]
	mov [esp], eax
	call _Znam
	mov [esi+0x4], eax
	lea eax, [edi+eax-0x1]
	and ebx, eax
	mov [esi+0x8], ebx
	mov eax, [ebp+0xc]
	mov [esi+0xc], eax
	mov dword [esi+0x10], 0x0
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CMemoryBuffer::Update()
_ZN13CMemoryBuffer6UpdateEv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [_ZN13CMemoryBuffer20sDelayedFreeRequestsE]
_ZN13CMemoryBuffer6UpdateEv_50:
	cmp esi, _ZN13CMemoryBuffer20sDelayedFreeRequestsE
	jz _ZN13CMemoryBuffer6UpdateEv_10
_ZN13CMemoryBuffer6UpdateEv_40:
	lea ebx, [esi+0x8]
	mov eax, [ebx+0x8]
	test eax, eax
	jnz _ZN13CMemoryBuffer6UpdateEv_20
	mov eax, [esi+0x8]
	test eax, eax
	jz _ZN13CMemoryBuffer6UpdateEv_30
	mov [esp], eax
	call _ZdaPv
_ZN13CMemoryBuffer6UpdateEv_30:
	mov eax, [_ZN13CMemoryBuffer31sMemoryDesignatedForDelayedFreeE]
	sub eax, [ebx+0x4]
	mov [_ZN13CMemoryBuffer31sMemoryDesignatedForDelayedFreeE], eax
	mov ebx, [esi]
	mov [esp], esi
	call _ZNSt15_List_node_base6unhookEv
	mov [esp], esi
	call _ZdlPv
	mov esi, ebx
	cmp esi, _ZN13CMemoryBuffer20sDelayedFreeRequestsE
	jnz _ZN13CMemoryBuffer6UpdateEv_40
_ZN13CMemoryBuffer6UpdateEv_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_ZN13CMemoryBuffer6UpdateEv_20:
	sub eax, 0x1
	mov [ebx+0x8], eax
	mov esi, [esi]
	jmp _ZN13CMemoryBuffer6UpdateEv_50
	nop


;CMemoryBuffer::Recreate()
_ZN13CMemoryBuffer8RecreateEv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov edx, [ebx+0x14]
	mov eax, edx
	add eax, [ebx+0xc]
	sub eax, 0x1
	mov ecx, edx
	neg ecx
	and eax, ecx
	lea edx, [edx+eax-0x1]
	mov [esp], edx
	call _Znam
	mov [ebx+0x4], eax
	mov edx, [ebx+0x14]
	lea eax, [edx+eax-0x1]
	neg edx
	and eax, edx
	mov [ebx+0x8], eax
	mov dword [ebx+0x10], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop
	add [eax], al


;CMemoryBuffer::FreeLater(unsigned int)
_ZN13CMemoryBuffer9FreeLaterEj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x10]
	test eax, eax
	jz _ZN13CMemoryBuffer9FreeLaterEj_10
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN13CMemoryBuffer9FreeLaterEj_10:
	mov edi, [ebx+0xc]
	mov esi, [ebx+0x4]
	mov dword [esp], 0x14
	call _Znwm
	mov edx, eax
	add edx, 0x8
	jz _ZN13CMemoryBuffer9FreeLaterEj_20
	mov ecx, [ebp+0xc]
	mov [edx+0x8], ecx
	mov [edx+0x4], edi
	mov [eax+0x8], esi
_ZN13CMemoryBuffer9FreeLaterEj_20:
	mov dword [esp+0x4], _ZN13CMemoryBuffer20sDelayedFreeRequestsE
	mov [esp], eax
	call _ZNSt15_List_node_base4hookEPS_
	mov eax, [ebx+0xc]
	add [_ZN13CMemoryBuffer31sMemoryDesignatedForDelayedFreeE], eax
	mov dword [ebx+0x8], 0x0
	mov dword [ebx+0x4], 0x0
	mov dword [ebx+0x10], 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;CMemoryBuffer::CMemoryBuffer(unsigned int, unsigned int)
_ZN13CMemoryBufferC1Ejj:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov dword [ebx], _ZTV13CMemoryBuffer+0x8
	test esi, esi
	jnz _ZN13CMemoryBufferC1Ejj_10
	xor edx, edx
	mov [ebx+0x4], edx
	mov [ebx+0xc], esi
	xor eax, eax
	test esi, esi
	setz al
	mov [ebx+0x10], eax
	mov dword [ebx+0x14], 0x20
	lea eax, [edx+0x1f]
	and eax, 0xffffffe0
	mov [ebx+0x8], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_ZN13CMemoryBufferC1Ejj_10:
	lea eax, [esi+0x1f]
	and eax, 0xffffffe0
	add eax, 0x1f
	mov [esp], eax
	call _Znam
	mov edx, eax
	mov [ebx+0x4], edx
	mov [ebx+0xc], esi
	xor eax, eax
	test esi, esi
	setz al
	mov [ebx+0x10], eax
	mov dword [ebx+0x14], 0x20
	lea eax, [edx+0x1f]
	and eax, 0xffffffe0
	mov [ebx+0x8], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;CMemoryBuffer::~CMemoryBuffer()
_ZN13CMemoryBufferD0Ev:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [ebx], _ZTV13CMemoryBuffer+0x8
	mov eax, [ebx+0x10]
	test eax, eax
	jnz _ZN13CMemoryBufferD0Ev_10
	mov eax, [ebx+0x4]
	test eax, eax
	jz _ZN13CMemoryBufferD0Ev_10
	mov [esp], eax
	call _ZdaPv
_ZN13CMemoryBufferD0Ev_10:
	mov dword [ebx+0x8], 0x0
	mov dword [ebx+0x4], 0x0
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _ZdlPv
	nop


;CMemoryBuffer::~CMemoryBuffer()
_ZN13CMemoryBufferD1Ev:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [ebx], _ZTV13CMemoryBuffer+0x8
	mov ecx, [ebx+0x10]
	test ecx, ecx
	jnz _ZN13CMemoryBufferD1Ev_10
	mov eax, [ebx+0x4]
	test eax, eax
	jz _ZN13CMemoryBufferD1Ev_10
	mov [esp], eax
	call _ZdaPv
_ZN13CMemoryBufferD1Ev_10:
	mov dword [ebx+0x8], 0x0
	mov dword [ebx+0x4], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;std::_List_base<CMemoryBuffer::FreeRequest, std::allocator<CMemoryBuffer::FreeRequest> >::_M_clear()
_ZNSt10_List_baseIN13CMemoryBuffer11FreeRequestESaIS1_EE8_M_clearEv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov eax, [esi]
	cmp eax, esi
	jnz _ZNSt10_List_baseIN13CMemoryBuffer11FreeRequestESaIS1_EE8_M_clearEv_10
	jmp _ZNSt10_List_baseIN13CMemoryBuffer11FreeRequestESaIS1_EE8_M_clearEv_20
_ZNSt10_List_baseIN13CMemoryBuffer11FreeRequestESaIS1_EE8_M_clearEv_30:
	mov eax, ebx
_ZNSt10_List_baseIN13CMemoryBuffer11FreeRequestESaIS1_EE8_M_clearEv_10:
	mov ebx, [eax]
	mov [esp], eax
	call _ZdlPv
	cmp esi, ebx
	jnz _ZNSt10_List_baseIN13CMemoryBuffer11FreeRequestESaIS1_EE8_M_clearEv_30
_ZNSt10_List_baseIN13CMemoryBuffer11FreeRequestESaIS1_EE8_M_clearEv_20:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;Initialized global or static variables of CMemoryBuffer:
SECTION .data
_ZN13CMemoryBuffer31sMemoryDesignatedForDelayedFreeE: dd 0x0, 0x0


;Initialized constant data of CMemoryBuffer:
SECTION .rdata
;VTypeInfoTable for CMemoryBuffer:
_ZTI13CMemoryBuffer: dd 0x8, _cstring_13cmemorybuffer, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
;VTable for CMemoryBuffer:
_ZTV13CMemoryBuffer: dd 0x0, _ZTI13CMemoryBuffer, _ZN13CMemoryBufferD1Ev, _ZN13CMemoryBufferD0Ev, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of CMemoryBuffer:
SECTION .bss
_ZN13CMemoryBuffer20sDelayedFreeRequestsE: resb 0x80


;All cstrings:
SECTION .rdata
_cstring_13cmemorybuffer:		db "13CMemoryBuffer",0



;All constant floats and doubles:
SECTION .rdata

