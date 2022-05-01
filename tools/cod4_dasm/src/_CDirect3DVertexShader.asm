;Imports of CDirect3DVertexShader:
	extern _ZN20COpenGLVertexProgramC2EP15CDirect3DDevicePKc
	extern _ZN20COpenGLVertexProgramD2Ev
	extern _ZdlPv
	extern _ZTI20COpenGLVertexProgram
	extern _ZTI8IUnknown

;Exports of CDirect3DVertexShader:
	global _ZN21CDirect3DVertexShader11GetFunctionEPvPj
	global _ZN21CDirect3DVertexShader14QueryInterfaceERK5_GUIDPPv
	global _ZN21CDirect3DVertexShader6AddRefEv
	global _ZN21CDirect3DVertexShader7ReleaseEv
	global _ZN21CDirect3DVertexShader9GetDeviceEPP16IDirect3DDevice9
	global _ZN21CDirect3DVertexShaderC1EP15CDirect3DDevicePKc
	global _ZN21CDirect3DVertexShaderD0Ev
	global _ZN21CDirect3DVertexShaderD1Ev
	global _ZTI21CDirect3DVertexShader
	global _ZTI22IDirect3DVertexShader9
	global _ZTV21CDirect3DVertexShader
	global _ZThn4_N21CDirect3DVertexShaderD0Ev
	global _ZThn4_N21CDirect3DVertexShaderD1Ev


SECTION .text


;CDirect3DVertexShader::GetFunction(void*, unsigned int*)
_ZN21CDirect3DVertexShader11GetFunctionEPvPj:
	push ebp
	mov ebp, esp
	mov eax, 0x8876086c
	pop ebp
	ret


;CDirect3DVertexShader::QueryInterface(_GUID const&, void**)
_ZN21CDirect3DVertexShader14QueryInterfaceERK5_GUIDPPv:
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


;CDirect3DVertexShader::AddRef()
_ZN21CDirect3DVertexShader6AddRefEv:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, [edx+0x18]
	add eax, 0x1
	mov [edx+0x18], eax
	pop ebp
	ret
	nop


;CDirect3DVertexShader::Release()
_ZN21CDirect3DVertexShader7ReleaseEv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov edx, [ebp+0x8]
	mov ebx, [edx+0x18]
	sub ebx, 0x1
	mov [edx+0x18], ebx
	test ebx, ebx
	jnz _ZN21CDirect3DVertexShader7ReleaseEv_10
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x18]
_ZN21CDirect3DVertexShader7ReleaseEv_10:
	mov eax, ebx
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;CDirect3DVertexShader::GetDevice(IDirect3DDevice9**)
_ZN21CDirect3DVertexShader9GetDeviceEPP16IDirect3DDevice9:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	ret
	nop


;CDirect3DVertexShader::CDirect3DVertexShader(CDirect3DDevice*, char const*)
_ZN21CDirect3DVertexShaderC1EP15CDirect3DDevicePKc:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, [0xd5cc028]
	add eax, 0x8
	mov [ebx], eax
	mov eax, [0xd5cc048]
	add eax, 0x8
	mov [ebx], eax
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	lea eax, [ebx+0x4]
	mov [esp], eax
	call _ZN20COpenGLVertexProgramC2EP15CDirect3DDevicePKc
	mov dword [ebx], _ZTV21CDirect3DVertexShader+0x8
	mov dword [ebx+0x4], _ZTV21CDirect3DVertexShader+0x2c
	mov byte [ebx+0x1c], 0x0
	mov dword [ebx+0x18], 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop
	add [eax], al


;CDirect3DVertexShader::~CDirect3DVertexShader()
_ZN21CDirect3DVertexShaderD0Ev:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [ebx], _ZTV21CDirect3DVertexShader+0x8
	mov dword [ebx+0x4], _ZTV21CDirect3DVertexShader+0x2c
	lea eax, [ebx+0x4]
	mov [esp], eax
	call _ZN20COpenGLVertexProgramD2Ev
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _ZdlPv
	nop


;CDirect3DVertexShader::~CDirect3DVertexShader()
_ZN21CDirect3DVertexShaderD1Ev:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov dword [eax], _ZTV21CDirect3DVertexShader+0x8
	mov dword [eax+0x4], _ZTV21CDirect3DVertexShader+0x2c
	add eax, 0x4
	mov [ebp+0x8], eax
	pop ebp
	jmp _ZN20COpenGLVertexProgramD2Ev
	nop


;non-virtual thunk to CDirect3DVertexShader::~CDirect3DVertexShader()
_ZThn4_N21CDirect3DVertexShaderD0Ev:
	add dword [esp+0x4], 0xfffffffc
	jmp _ZN21CDirect3DVertexShaderD0Ev


;non-virtual thunk to CDirect3DVertexShader::~CDirect3DVertexShader()
_ZThn4_N21CDirect3DVertexShaderD1Ev:
	add dword [esp+0x4], 0xfffffffc
	jmp _ZN21CDirect3DVertexShaderD1Ev


;Initialized global or static variables of CDirect3DVertexShader:
SECTION .data


;Initialized constant data of CDirect3DVertexShader:
SECTION .rdata
;VTypeInfoTable for CDirect3DVertexShader:
_ZTI21CDirect3DVertexShader: dd 0x8, _cstring_21cdirect3dverte, 0x0, 0x2, _ZTI22IDirect3DVertexShader9, 0x2, _ZTI20COpenGLVertexProgram, 0x402
;VTypeInfoTable for IDirect3DVertexShader9:
_ZTI22IDirect3DVertexShader9: dd 0x8, _cstring_22idirect3dverte, _ZTI8IUnknown, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, _ZTI22IDirect3DVertexShader9, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
;VTable for CDirect3DVertexShader:
_ZTV21CDirect3DVertexShader: dd 0x0, _ZTI21CDirect3DVertexShader, _ZN21CDirect3DVertexShader14QueryInterfaceERK5_GUIDPPv, _ZN21CDirect3DVertexShader6AddRefEv, _ZN21CDirect3DVertexShader7ReleaseEv, _ZN21CDirect3DVertexShader9GetDeviceEPP16IDirect3DDevice9, _ZN21CDirect3DVertexShader11GetFunctionEPvPj, _ZN21CDirect3DVertexShaderD1Ev, _ZN21CDirect3DVertexShaderD0Ev, 0xfffffffc, _ZTI21CDirect3DVertexShader, _ZThn4_N21CDirect3DVertexShaderD1Ev, _ZThn4_N21CDirect3DVertexShaderD0Ev, 0x0, 0x0, 0x0


;Zero initialized global or static variables of CDirect3DVertexShader:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_21cdirect3dverte:		db "21CDirect3DVertexShader",0
_cstring_22idirect3dverte:		db "22IDirect3DVertexShader9",0



;All constant floats and doubles:
SECTION .rdata

