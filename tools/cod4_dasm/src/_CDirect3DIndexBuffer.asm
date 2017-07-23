;Imports of CDirect3DIndexBuffer:
	extern _ZN19COpenGLBufferObject4LockEmmjj
	extern _ZN19COpenGLBufferObject14RecreateBufferEv
	extern _ZN19COpenGLBufferObject6UnlockEv
	extern _ZN19COpenGLBufferObjectC2Embj
	extern _ZN19COpenGLBufferObject16ReleaseResourcesEv
	extern _ZN19COpenGLBufferObjectD2Ev
	extern _ZdlPv
	extern _Unwind_Resume

;Exports of CDirect3DIndexBuffer:
	global _ZN20CDirect3DIndexBuffer11GetPriorityEv
	global _ZN20CDirect3DIndexBuffer11SetPriorityEm
	global _ZN20CDirect3DIndexBuffer14GetPrivateDataERK5_GUIDPvPm
	global _ZN20CDirect3DIndexBuffer14QueryInterfaceERK5_GUIDPPv
	global _ZN20CDirect3DIndexBuffer14SetPrivateDataERK5_GUIDPKvmm
	global _ZN20CDirect3DIndexBuffer15FreePrivateDataERK5_GUID
	global _ZN20CDirect3DIndexBuffer4LockEjjPPvm
	global _ZN20CDirect3DIndexBuffer6AddRefEv
	global _ZN20CDirect3DIndexBuffer6UnlockEv
	global _ZN20CDirect3DIndexBuffer7GetDescEP20_D3DINDEXBUFFER_DESC
	global _ZN20CDirect3DIndexBuffer7GetTypeEv
	global _ZN20CDirect3DIndexBuffer7PreLoadEv
	global _ZN20CDirect3DIndexBuffer7ReleaseEv
	global _ZN20CDirect3DIndexBuffer9GetDeviceEPP16IDirect3DDevice9
	global _ZN20CDirect3DIndexBufferC1Ej10_D3DFORMATm8_D3DPOOL
	global _ZN20CDirect3DIndexBufferD0Ev
	global _ZN20CDirect3DIndexBufferD1Ev
	global _ZTV20CDirect3DIndexBuffer


SECTION .text


;CDirect3DIndexBuffer::GetPriority()
_ZN20CDirect3DIndexBuffer11GetPriorityEv:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	ret
	nop


;CDirect3DIndexBuffer::SetPriority(unsigned long)
_ZN20CDirect3DIndexBuffer11SetPriorityEm:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	ret
	nop


;CDirect3DIndexBuffer::GetPrivateData(_GUID const&, void*, unsigned long*)
_ZN20CDirect3DIndexBuffer14GetPrivateDataERK5_GUIDPvPm:
	push ebp
	mov ebp, esp
	mov eax, 0x8876086c
	pop ebp
	ret


;CDirect3DIndexBuffer::QueryInterface(_GUID const&, void**)
_ZN20CDirect3DIndexBuffer14QueryInterfaceERK5_GUIDPPv:
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


;CDirect3DIndexBuffer::SetPrivateData(_GUID const&, void const*, unsigned long, unsigned long)
_ZN20CDirect3DIndexBuffer14SetPrivateDataERK5_GUIDPKvmm:
	push ebp
	mov ebp, esp
	mov eax, 0x8876086c
	pop ebp
	ret


;CDirect3DIndexBuffer::FreePrivateData(_GUID const&)
_ZN20CDirect3DIndexBuffer15FreePrivateDataERK5_GUID:
	push ebp
	mov ebp, esp
	mov eax, 0x8876086c
	pop ebp
	ret


;CDirect3DIndexBuffer::Lock(unsigned int, unsigned int, void**, unsigned long)
_ZN20CDirect3DIndexBuffer4LockEjjPPvm:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0x8]
	mov eax, [ebp+0x10]
	test eax, eax
	jz _ZN20CDirect3DIndexBuffer4LockEjjPPvm_10
	mov edi, eax
_ZN20CDirect3DIndexBuffer4LockEjjPPvm_40:
	mov edx, [esi+0x64]
	test dh, 0x2
	jz _ZN20CDirect3DIndexBuffer4LockEjjPPvm_20
	test dword [ebp+0x18], 0x2000
	jnz _ZN20CDirect3DIndexBuffer4LockEjjPPvm_30
_ZN20CDirect3DIndexBuffer4LockEjjPPvm_20:
	lea ebx, [esi+0x4]
_ZN20CDirect3DIndexBuffer4LockEjjPPvm_50:
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
_ZN20CDirect3DIndexBuffer4LockEjjPPvm_10:
	mov edi, [esi+0x10]
	jmp _ZN20CDirect3DIndexBuffer4LockEjjPPvm_40
_ZN20CDirect3DIndexBuffer4LockEjjPPvm_30:
	lea ebx, [esi+0x4]
	mov [esp], ebx
	call _ZN19COpenGLBufferObject14RecreateBufferEv
	mov edx, [esi+0x64]
	jmp _ZN20CDirect3DIndexBuffer4LockEjjPPvm_50
	nop


;CDirect3DIndexBuffer::AddRef()
_ZN20CDirect3DIndexBuffer6AddRefEv:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, [edx+0x5c]
	add eax, 0x1
	mov [edx+0x5c], eax
	pop ebp
	ret
	nop


;CDirect3DIndexBuffer::Unlock()
_ZN20CDirect3DIndexBuffer6UnlockEv:
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


;CDirect3DIndexBuffer::GetDesc(_D3DINDEXBUFFER_DESC*)
_ZN20CDirect3DIndexBuffer7GetDescEP20_D3DINDEXBUFFER_DESC:
	push ebp
	mov ebp, esp
	mov eax, 0x8876086c
	pop ebp
	ret
	add dword [esp+0x4], 0xfffffffc
	jmp _ZN20CDirect3DIndexBufferD1Ev
	add dword [esp+0x4], 0xfffffffc
	jmp _ZN20CDirect3DIndexBufferD0Ev


;CDirect3DIndexBuffer::GetType()
_ZN20CDirect3DIndexBuffer7GetTypeEv:
	push ebp
	mov ebp, esp
	mov eax, 0x7
	pop ebp
	ret


;CDirect3DIndexBuffer::PreLoad()
_ZN20CDirect3DIndexBuffer7PreLoadEv:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;CDirect3DIndexBuffer::Release()
_ZN20CDirect3DIndexBuffer7ReleaseEv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov edx, [ebp+0x8]
	mov ebx, [edx+0x5c]
	sub ebx, 0x1
	mov [edx+0x5c], ebx
	test ebx, ebx
	jnz _ZN20CDirect3DIndexBuffer7ReleaseEv_10
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x3c]
_ZN20CDirect3DIndexBuffer7ReleaseEv_10:
	mov eax, ebx
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;CDirect3DIndexBuffer::GetDevice(IDirect3DDevice9**)
_ZN20CDirect3DIndexBuffer9GetDeviceEPP16IDirect3DDevice9:
	push ebp
	mov ebp, esp
	mov eax, 0x8876086c
	pop ebp
	ret


;CDirect3DIndexBuffer::CDirect3DIndexBuffer(unsigned int, _D3DFORMAT, unsigned long, _D3DPOOL)
_ZN20CDirect3DIndexBufferC1Ej10_D3DFORMATm8_D3DPOOL:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0x14]
	mov eax, [0xd5cc028]
	add eax, 0x8
	mov [ebx], eax
	mov eax, [0xd5cc034]
	add eax, 0x8
	mov [ebx], eax
	mov eax, [0xd5cc03c]
	add eax, 0x8
	mov [ebx], eax
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	mov eax, esi
	shr eax, 0x9
	and eax, 0x1
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x8893
	lea eax, [ebx+0x4]
	mov [esp], eax
	call _ZN19COpenGLBufferObjectC2Embj
	mov dword [ebx], _ZTV20CDirect3DIndexBuffer+0x8
	mov dword [ebx+0x4], _ZTV20CDirect3DIndexBuffer+0x50
	mov eax, [ebp+0x10]
	mov [ebx+0x60], eax
	mov [ebx+0x64], esi
	mov byte [ebx+0x68], 0x0
	mov dword [ebx+0x5c], 0x1
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;CDirect3DIndexBuffer::~CDirect3DIndexBuffer()
_ZN20CDirect3DIndexBufferD0Ev:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov dword [ebx], _ZTV20CDirect3DIndexBuffer+0x8
	mov dword [ebx+0x4], _ZTV20CDirect3DIndexBuffer+0x50
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


;CDirect3DIndexBuffer::~CDirect3DIndexBuffer()
_ZN20CDirect3DIndexBufferD1Ev:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [ebp+0x8]
	mov dword [eax], _ZTV20CDirect3DIndexBuffer+0x8
	mov dword [eax+0x4], _ZTV20CDirect3DIndexBuffer+0x50
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


;Initialized global or static variables of CDirect3DIndexBuffer:
SECTION .data


;Initialized constant data of CDirect3DIndexBuffer:
SECTION .rdata
;VTable for CDirect3DIndexBuffer:
_ZTV20CDirect3DIndexBuffer: dd 0x0, 0x3b48a0, _ZN20CDirect3DIndexBuffer14QueryInterfaceERK5_GUIDPPv, _ZN20CDirect3DIndexBuffer6AddRefEv, _ZN20CDirect3DIndexBuffer7ReleaseEv, _ZN20CDirect3DIndexBuffer9GetDeviceEPP16IDirect3DDevice9, _ZN20CDirect3DIndexBuffer14SetPrivateDataERK5_GUIDPKvmm, _ZN20CDirect3DIndexBuffer14GetPrivateDataERK5_GUIDPvPm, _ZN20CDirect3DIndexBuffer15FreePrivateDataERK5_GUID, _ZN20CDirect3DIndexBuffer11SetPriorityEm, _ZN20CDirect3DIndexBuffer11GetPriorityEv, _ZN20CDirect3DIndexBuffer7PreLoadEv, _ZN20CDirect3DIndexBuffer7GetTypeEv, _ZN20CDirect3DIndexBuffer4LockEjjPPvm, _ZN20CDirect3DIndexBuffer6UnlockEv, _ZN20CDirect3DIndexBuffer7GetDescEP20_D3DINDEXBUFFER_DESC, _ZN20CDirect3DIndexBufferD1Ev, _ZN20CDirect3DIndexBufferD0Ev, 0xfffffffc, 0x3b48a0, 0x330c8c, 0x330c96, 0x0, 0x0


;Zero initialized global or static variables of CDirect3DIndexBuffer:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

