;Imports of CDirect3DVertexBuffer:
	extern _ZN19COpenGLBufferObject4LockEmmjj
	extern _ZN19COpenGLBufferObject14RecreateBufferEv
	extern _ZN19COpenGLBufferObject6UnlockEv
	extern _ZN19COpenGLBufferObjectC2Embj
	extern _ZN19COpenGLBufferObject16ReleaseResourcesEv
	extern _ZN19COpenGLBufferObjectD2Ev
	extern _ZdlPv
	extern _Unwind_Resume
	extern _ZTI19COpenGLBufferObject
	extern _ZTI18IDirect3DResource9

;Exports of CDirect3DVertexBuffer:
	global _ZN21CDirect3DVertexBuffer11GetPriorityEv
	global _ZN21CDirect3DVertexBuffer11SetPriorityEm
	global _ZN21CDirect3DVertexBuffer14GetPrivateDataERK5_GUIDPvPm
	global _ZN21CDirect3DVertexBuffer14QueryInterfaceERK5_GUIDPPv
	global _ZN21CDirect3DVertexBuffer14SetPrivateDataERK5_GUIDPKvmm
	global _ZN21CDirect3DVertexBuffer15FreePrivateDataERK5_GUID
	global _ZN21CDirect3DVertexBuffer4LockEjjPPvm
	global _ZN21CDirect3DVertexBuffer6AddRefEv
	global _ZN21CDirect3DVertexBuffer6UnlockEv
	global _ZN21CDirect3DVertexBuffer7GetDescEP21_D3DVERTEXBUFFER_DESC
	global _ZN21CDirect3DVertexBuffer7GetTypeEv
	global _ZN21CDirect3DVertexBuffer7PreLoadEv
	global _ZN21CDirect3DVertexBuffer7ReleaseEv
	global _ZN21CDirect3DVertexBuffer9GetDeviceEPP16IDirect3DDevice9
	global _ZN21CDirect3DVertexBufferC1Ejm8_D3DPOOL
	global _ZN21CDirect3DVertexBufferD0Ev
	global _ZN21CDirect3DVertexBufferD1Ev
	global _ZTI21CDirect3DVertexBuffer
	global _ZTI22IDirect3DVertexBuffer9
	global _ZTV21CDirect3DVertexBuffer
	global _ZThn4_N21CDirect3DVertexBufferD0Ev
	global _ZThn4_N21CDirect3DVertexBufferD1Ev
	global g_OptimizeVBTransfers


SECTION .text


;CDirect3DVertexBuffer::GetPriority()
_ZN21CDirect3DVertexBuffer11GetPriorityEv:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	ret
	nop


;CDirect3DVertexBuffer::SetPriority(unsigned long)
_ZN21CDirect3DVertexBuffer11SetPriorityEm:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	ret
	nop


;CDirect3DVertexBuffer::GetPrivateData(_GUID const&, void*, unsigned long*)
_ZN21CDirect3DVertexBuffer14GetPrivateDataERK5_GUIDPvPm:
	push ebp
	mov ebp, esp
	mov eax, 0x8876086c
	pop ebp
	ret


;CDirect3DVertexBuffer::QueryInterface(_GUID const&, void**)
_ZN21CDirect3DVertexBuffer14QueryInterfaceERK5_GUIDPPv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov edx, [ebp+0x10]
	mov [edx], eax
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x4]
	xor eax, eax
	leave
	ret


;CDirect3DVertexBuffer::SetPrivateData(_GUID const&, void const*, unsigned long, unsigned long)
_ZN21CDirect3DVertexBuffer14SetPrivateDataERK5_GUIDPKvmm:
	push ebp
	mov ebp, esp
	mov eax, 0x8876086c
	pop ebp
	ret


;CDirect3DVertexBuffer::FreePrivateData(_GUID const&)
_ZN21CDirect3DVertexBuffer15FreePrivateDataERK5_GUID:
	push ebp
	mov ebp, esp
	mov eax, 0x8876086c
	pop ebp
	ret


;CDirect3DVertexBuffer::Lock(unsigned int, unsigned int, void**, unsigned long)
_ZN21CDirect3DVertexBuffer4LockEjjPPvm:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0x8]
	mov eax, [ebp+0x10]
	test eax, eax
	jz _ZN21CDirect3DVertexBuffer4LockEjjPPvm_10
	mov edi, eax
_ZN21CDirect3DVertexBuffer4LockEjjPPvm_40:
	mov edx, [esi+0x60]
	test dh, 0x2
	jz _ZN21CDirect3DVertexBuffer4LockEjjPPvm_20
	test dword [ebp+0x18], 0x2000
	jnz _ZN21CDirect3DVertexBuffer4LockEjjPPvm_30
_ZN21CDirect3DVertexBuffer4LockEjjPPvm_20:
	lea ebx, [esi+0x4]
_ZN21CDirect3DVertexBuffer4LockEjjPPvm_50:
	mov [esp+0x10], edi
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	mov eax, [ebp+0x18]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call _ZN19COpenGLBufferObject4LockEmmjj
	mov edx, [ebp+0x14]
	mov [edx], eax
	mov eax, [esi]
	mov [esp], esi
	call dword [eax+0x4]
	xor eax, eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN21CDirect3DVertexBuffer4LockEjjPPvm_10:
	mov edi, [esi+0x10]
	jmp _ZN21CDirect3DVertexBuffer4LockEjjPPvm_40
_ZN21CDirect3DVertexBuffer4LockEjjPPvm_30:
	lea ebx, [esi+0x4]
	mov [esp], ebx
	call _ZN19COpenGLBufferObject14RecreateBufferEv
	mov edx, [esi+0x60]
	jmp _ZN21CDirect3DVertexBuffer4LockEjjPPvm_50
	nop


;CDirect3DVertexBuffer::AddRef()
_ZN21CDirect3DVertexBuffer6AddRefEv:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, [edx+0x5c]
	add eax, 0x1
	mov [edx+0x5c], eax
	pop ebp
	ret
	nop


;CDirect3DVertexBuffer::Unlock()
_ZN21CDirect3DVertexBuffer6UnlockEv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	lea eax, [ebx+0x4]
	mov [esp], eax
	call _ZN19COpenGLBufferObject6UnlockEv
	mov eax, [ebx]
	mov [esp], ebx
	call dword [eax+0x8]
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;CDirect3DVertexBuffer::GetDesc(_D3DVERTEXBUFFER_DESC*)
_ZN21CDirect3DVertexBuffer7GetDescEP21_D3DVERTEXBUFFER_DESC:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov dword [edx], 0x0
	mov dword [edx+0x4], 0x6
	mov eax, [ecx+0x60]
	mov [edx+0x8], eax
	mov dword [edx+0xc], 0x0
	mov eax, [ecx+0x10]
	mov [edx+0x10], eax
	mov dword [edx+0x14], 0x0
	xor eax, eax
	pop ebp
	ret


;CDirect3DVertexBuffer::GetType()
_ZN21CDirect3DVertexBuffer7GetTypeEv:
	push ebp
	mov ebp, esp
	mov eax, 0x6
	pop ebp
	ret


;CDirect3DVertexBuffer::PreLoad()
_ZN21CDirect3DVertexBuffer7PreLoadEv:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;CDirect3DVertexBuffer::Release()
_ZN21CDirect3DVertexBuffer7ReleaseEv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov edx, [ebp+0x8]
	mov ebx, [edx+0x5c]
	sub ebx, 0x1
	mov [edx+0x5c], ebx
	test ebx, ebx
	jnz _ZN21CDirect3DVertexBuffer7ReleaseEv_10
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x3c]
_ZN21CDirect3DVertexBuffer7ReleaseEv_10:
	mov eax, ebx
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;CDirect3DVertexBuffer::GetDevice(IDirect3DDevice9**)
_ZN21CDirect3DVertexBuffer9GetDeviceEPP16IDirect3DDevice9:
	push ebp
	mov ebp, esp
	mov eax, 0x8876086c
	pop ebp
	ret


;CDirect3DVertexBuffer::CDirect3DVertexBuffer(unsigned int, unsigned long, _D3DPOOL)
_ZN21CDirect3DVertexBufferC1Ejm8_D3DPOOL:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0x10]
	mov eax, [0xd5cc028]
	add eax, 0x8
	mov [ebx], eax
	mov eax, [0xd5cc034]
	add eax, 0x8
	mov [ebx], eax
	mov eax, [0xd5cc044]
	add eax, 0x8
	mov [ebx], eax
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	mov eax, esi
	shr eax, 0x9
	and eax, 0x1
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x8892
	lea eax, [ebx+0x4]
	mov [esp], eax
	call _ZN19COpenGLBufferObjectC2Embj
	mov dword [ebx], _ZTV21CDirect3DVertexBuffer+0x8
	mov dword [ebx+0x4], _ZTV21CDirect3DVertexBuffer+0x50
	mov [ebx+0x60], esi
	mov byte [ebx+0x64], 0x0
	mov dword [ebx+0x5c], 0x1
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	add [eax], al


;CDirect3DVertexBuffer::~CDirect3DVertexBuffer()
_ZN21CDirect3DVertexBufferD0Ev:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov dword [ebx], _ZTV21CDirect3DVertexBuffer+0x8
	mov dword [ebx+0x4], _ZTV21CDirect3DVertexBuffer+0x50
	lea esi, [ebx+0x4]
	mov [esp], esi
	call _ZN19COpenGLBufferObject16ReleaseResourcesEv
	mov [esp], esi
	call _ZN19COpenGLBufferObjectD2Ev
	mov [ebp+0x8], ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _ZdlPv
	mov ebx, eax
	mov [esp], esi
	call _ZN19COpenGLBufferObjectD2Ev
	mov [esp], ebx
	call _Unwind_Resume
	nop


;CDirect3DVertexBuffer::~CDirect3DVertexBuffer()
_ZN21CDirect3DVertexBufferD1Ev:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [ebp+0x8]
	mov dword [eax], _ZTV21CDirect3DVertexBuffer+0x8
	mov dword [eax+0x4], _ZTV21CDirect3DVertexBuffer+0x50
	lea esi, [eax+0x4]
	mov [esp], esi
	call _ZN19COpenGLBufferObject16ReleaseResourcesEv
	mov [ebp+0x8], esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _ZN19COpenGLBufferObjectD2Ev
	mov ebx, eax
	mov [esp], esi
	call _ZN19COpenGLBufferObjectD2Ev
	mov [esp], ebx
	call _Unwind_Resume
	nop


;non-virtual thunk to CDirect3DVertexBuffer::~CDirect3DVertexBuffer()
_ZThn4_N21CDirect3DVertexBufferD0Ev:
	add dword [esp+0x4], 0xfffffffc
	jmp _ZN21CDirect3DVertexBufferD0Ev


;non-virtual thunk to CDirect3DVertexBuffer::~CDirect3DVertexBuffer()
_ZThn4_N21CDirect3DVertexBufferD1Ev:
	add dword [esp+0x4], 0xfffffffc
	jmp _ZN21CDirect3DVertexBufferD1Ev


;Initialized global or static variables of CDirect3DVertexBuffer:
SECTION .data
g_OptimizeVBTransfers: dd 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of CDirect3DVertexBuffer:
SECTION .rdata
;VTypeInfoTable for CDirect3DVertexBuffer:
_ZTI21CDirect3DVertexBuffer: dd 0x8, _cstring_21cdirect3dverte, 0x0, 0x2, _ZTI22IDirect3DVertexBuffer9, 0x2, _ZTI19COpenGLBufferObject, 0x402
;VTypeInfoTable for IDirect3DVertexBuffer9:
_ZTI22IDirect3DVertexBuffer9: dd 0x8, _cstring_22idirect3dverte, _ZTI18IDirect3DResource9, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, _ZTI22IDirect3DVertexBuffer9, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
;VTable for CDirect3DVertexBuffer:
_ZTV21CDirect3DVertexBuffer: dd 0x0, _ZTI21CDirect3DVertexBuffer, _ZN21CDirect3DVertexBuffer14QueryInterfaceERK5_GUIDPPv, _ZN21CDirect3DVertexBuffer6AddRefEv, _ZN21CDirect3DVertexBuffer7ReleaseEv, _ZN21CDirect3DVertexBuffer9GetDeviceEPP16IDirect3DDevice9, _ZN21CDirect3DVertexBuffer14SetPrivateDataERK5_GUIDPKvmm, _ZN21CDirect3DVertexBuffer14GetPrivateDataERK5_GUIDPvPm, _ZN21CDirect3DVertexBuffer15FreePrivateDataERK5_GUID, _ZN21CDirect3DVertexBuffer11SetPriorityEm, _ZN21CDirect3DVertexBuffer11GetPriorityEv, _ZN21CDirect3DVertexBuffer7PreLoadEv, _ZN21CDirect3DVertexBuffer7GetTypeEv, _ZN21CDirect3DVertexBuffer4LockEjjPPvm, _ZN21CDirect3DVertexBuffer6UnlockEv, _ZN21CDirect3DVertexBuffer7GetDescEP21_D3DVERTEXBUFFER_DESC, _ZN21CDirect3DVertexBufferD1Ev, _ZN21CDirect3DVertexBufferD0Ev, 0xfffffffc, _ZTI21CDirect3DVertexBuffer, _ZThn4_N21CDirect3DVertexBufferD1Ev, _ZThn4_N21CDirect3DVertexBufferD0Ev, 0x0, 0x0


;Zero initialized global or static variables of CDirect3DVertexBuffer:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_21cdirect3dverte:		db "21CDirect3DVertexBuffer",0
_cstring_22idirect3dverte:		db "22IDirect3DVertexBuffer9",0



;All constant floats and doubles:
SECTION .rdata

