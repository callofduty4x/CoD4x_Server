;Imports of CDirect3DQuery:
	extern glBeginQueryARB
	extern glEndQueryARB
	extern glGetQueryObjectuivARB
	extern glGenQueriesARB
	extern _ZdlPv
	extern glDeleteQueriesARB
	extern _ZTI8IUnknown

;Exports of CDirect3DQuery:
	global _ZN14CDirect3DQuery11GetDataSizeEv
	global _ZN14CDirect3DQuery14QueryInterfaceERK5_GUIDPPv
	global _ZN14CDirect3DQuery5IssueEm
	global _ZN14CDirect3DQuery6AddRefEv
	global _ZN14CDirect3DQuery7GetDataEPvmm
	global _ZN14CDirect3DQuery7GetTypeEv
	global _ZN14CDirect3DQuery7ReleaseEv
	global _ZN14CDirect3DQuery9GetDeviceEPP16IDirect3DDevice9
	global _ZN14CDirect3DQueryC1E13_D3DQUERYTYPE
	global _ZN14CDirect3DQueryD0Ev
	global _ZN14CDirect3DQueryD1Ev
	global _ZTI14CDirect3DQuery
	global _ZTI15IDirect3DQuery9
	global _ZTV14CDirect3DQuery


SECTION .text


;CDirect3DQuery::GetDataSize()
_ZN14CDirect3DQuery11GetDataSizeEv:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	ret
	nop


;CDirect3DQuery::QueryInterface(_GUID const&, void**)
_ZN14CDirect3DQuery14QueryInterfaceERK5_GUIDPPv:
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


;CDirect3DQuery::Issue(unsigned long)
_ZN14CDirect3DQuery5IssueEm:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	cmp dword [ebp+0xc], 0x2
	jz _ZN14CDirect3DQuery5IssueEm_10
	cmp dword [eax+0x8], 0x9
	jz _ZN14CDirect3DQuery5IssueEm_20
_ZN14CDirect3DQuery5IssueEm_30:
	xor eax, eax
	leave
	ret
_ZN14CDirect3DQuery5IssueEm_10:
	cmp dword [eax+0x8], 0x9
	jnz _ZN14CDirect3DQuery5IssueEm_30
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov dword [esp], 0x8914
	call glBeginQueryARB
	xor eax, eax
	leave
	ret
_ZN14CDirect3DQuery5IssueEm_20:
	mov dword [esp], 0x8914
	call glEndQueryARB
	xor eax, eax
	leave
	ret


;CDirect3DQuery::AddRef()
_ZN14CDirect3DQuery6AddRefEv:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, [edx+0x4]
	add eax, 0x1
	mov [edx+0x4], eax
	pop ebp
	ret
	nop


;CDirect3DQuery::GetData(void*, unsigned long, unsigned long)
_ZN14CDirect3DQuery7GetDataEPvmm:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x8]
	cmp dword [ebx+0x8], 0x9
	jz _ZN14CDirect3DQuery7GetDataEPvmm_10
_ZN14CDirect3DQuery7GetDataEPvmm_30:
	xor eax, eax
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_ZN14CDirect3DQuery7GetDataEPvmm_10:
	lea eax, [ebp-0x10]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x8867
	mov eax, [ebx+0xc]
	mov [esp], eax
	call glGetQueryObjectuivARB
	mov eax, [ebp-0x10]
	test eax, eax
	jnz _ZN14CDirect3DQuery7GetDataEPvmm_20
	mov eax, 0x1
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_ZN14CDirect3DQuery7GetDataEPvmm_20:
	lea eax, [ebp-0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x8866
	mov eax, [ebx+0xc]
	mov [esp], eax
	call glGetQueryObjectuivARB
	mov eax, [ebp-0xc]
	mov edx, [ebp+0xc]
	mov [edx], eax
	jmp _ZN14CDirect3DQuery7GetDataEPvmm_30


;CDirect3DQuery::GetType()
_ZN14CDirect3DQuery7GetTypeEv:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x8]
	pop ebp
	ret
	nop


;CDirect3DQuery::Release()
_ZN14CDirect3DQuery7ReleaseEv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov edx, [ebp+0x8]
	mov ebx, [edx+0x4]
	sub ebx, 0x1
	mov [edx+0x4], ebx
	test ebx, ebx
	jnz _ZN14CDirect3DQuery7ReleaseEv_10
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x24]
_ZN14CDirect3DQuery7ReleaseEv_10:
	mov eax, ebx
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;CDirect3DQuery::GetDevice(IDirect3DDevice9**)
_ZN14CDirect3DQuery9GetDeviceEPP16IDirect3DDevice9:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	mov dword [eax], 0x0
	xor eax, eax
	pop ebp
	ret


;CDirect3DQuery::CDirect3DQuery(_D3DQUERYTYPE)
_ZN14CDirect3DQueryC1E13_D3DQUERYTYPE:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov dword [ebx], _ZTV14CDirect3DQuery+0x8
	mov dword [ebx+0x4], 0x0
	mov [ebx+0x8], eax
	mov dword [ebx+0xc], 0x0
	cmp eax, 0x9
	jz _ZN14CDirect3DQueryC1E13_D3DQUERYTYPE_10
	add dword [ebx+0x4], 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_ZN14CDirect3DQueryC1E13_D3DQUERYTYPE_10:
	lea eax, [ebx+0xc]
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call glGenQueriesARB
	add dword [ebx+0x4], 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	add [eax], al


;CDirect3DQuery::~CDirect3DQuery()
_ZN14CDirect3DQueryD0Ev:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [ebx], _ZTV14CDirect3DQuery+0x8
	cmp dword [ebx+0x8], 0x9
	jz _ZN14CDirect3DQueryD0Ev_10
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _ZdlPv
_ZN14CDirect3DQueryD0Ev_10:
	lea eax, [ebx+0xc]
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call glDeleteQueriesARB
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _ZdlPv
	nop


;CDirect3DQuery::~CDirect3DQuery()
_ZN14CDirect3DQueryD1Ev:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov dword [eax], _ZTV14CDirect3DQuery+0x8
	cmp dword [eax+0x8], 0x9
	jz _ZN14CDirect3DQueryD1Ev_10
	leave
	ret
_ZN14CDirect3DQueryD1Ev_10:
	add eax, 0xc
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call glDeleteQueriesARB
	leave
	ret


;Initialized global or static variables of CDirect3DQuery:
SECTION .data


;Initialized constant data of CDirect3DQuery:
SECTION .rdata
;VTypeInfoTable for CDirect3DQuery:
_ZTI14CDirect3DQuery: dd 0x8, _cstring_14cdirect3dquery, _ZTI15IDirect3DQuery9, 0x0, 0x0, 0x0, 0x0, 0x0
;VTypeInfoTable for IDirect3DQuery9:
_ZTI15IDirect3DQuery9: dd 0x8, _cstring_15idirect3dquery, _ZTI8IUnknown, 0x0, 0x0, 0x0, 0x0, 0x0
;VTable for CDirect3DQuery:
_ZTV14CDirect3DQuery: dd 0x0, _ZTI14CDirect3DQuery, _ZN14CDirect3DQuery14QueryInterfaceERK5_GUIDPPv, _ZN14CDirect3DQuery6AddRefEv, _ZN14CDirect3DQuery7ReleaseEv, _ZN14CDirect3DQuery9GetDeviceEPP16IDirect3DDevice9, _ZN14CDirect3DQuery7GetTypeEv, _ZN14CDirect3DQuery11GetDataSizeEv, _ZN14CDirect3DQuery5IssueEm, _ZN14CDirect3DQuery7GetDataEPvmm, _ZN14CDirect3DQueryD1Ev, _ZN14CDirect3DQueryD0Ev, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of CDirect3DQuery:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_14cdirect3dquery:		db "14CDirect3DQuery",0
_cstring_15idirect3dquery:		db "15IDirect3DQuery9",0



;All constant floats and doubles:
SECTION .rdata

