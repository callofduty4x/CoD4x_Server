;Imports of CDirect3DSwapChain:
	extern _ZdlPv

;Exports of CDirect3DSwapChain:
	global _ZN18CDirect3DSwapChain13GetBackBufferEj19_D3DBACKBUFFER_TYPEPP17IDirect3DSurface9
	global _ZN18CDirect3DSwapChain13SetBackBufferEP17IDirect3DSurface9
	global _ZN18CDirect3DSwapChain14GetDisplayModeEP15_D3DDISPLAYMODE
	global _ZN18CDirect3DSwapChain14QueryInterfaceERK5_GUIDPPv
	global _ZN18CDirect3DSwapChain15GetRasterStatusEP17_D3DRASTER_STATUS
	global _ZN18CDirect3DSwapChain18GetFrontBufferDataEP17IDirect3DSurface9
	global _ZN18CDirect3DSwapChain20GetPresentParametersEP23_D3DPRESENT_PARAMETERS_
	global _ZN18CDirect3DSwapChain6AddRefEv
	global _ZN18CDirect3DSwapChain7PresentEPK7tagRECTS2_P6HWND__PK8_RGNDATAm
	global _ZN18CDirect3DSwapChain7ReleaseEv
	global _ZN18CDirect3DSwapChain9GetDeviceEPP16IDirect3DDevice9
	global _ZN18CDirect3DSwapChainC1Ev
	global _ZN18CDirect3DSwapChainD0Ev
	global _ZN18CDirect3DSwapChainD1Ev
	global _ZTV18CDirect3DSwapChain


SECTION .text


;CDirect3DSwapChain::GetBackBuffer(unsigned int, _D3DBACKBUFFER_TYPE, IDirect3DSurface9**)
_ZN18CDirect3DSwapChain13GetBackBufferEj19_D3DBACKBUFFER_TYPEPP17IDirect3DSurface9:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x8]
	mov eax, [ebp+0x14]
	mov [eax], edx
	mov eax, [ecx+0x8]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x4]
	xor eax, eax
	leave
	ret


;CDirect3DSwapChain::SetBackBuffer(IDirect3DSurface9*)
_ZN18CDirect3DSwapChain13SetBackBufferEP17IDirect3DSurface9:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0xc]
	mov edx, [ebp+0x8]
	mov [edx+0x8], eax
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x4]
	leave
	ret
	nop


;CDirect3DSwapChain::GetDisplayMode(_D3DDISPLAYMODE*)
_ZN18CDirect3DSwapChain14GetDisplayModeEP15_D3DDISPLAYMODE:
	push ebp
	mov ebp, esp
	mov eax, 0x8876086c
	pop ebp
	ret


;CDirect3DSwapChain::QueryInterface(_GUID const&, void**)
_ZN18CDirect3DSwapChain14QueryInterfaceERK5_GUIDPPv:
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


;CDirect3DSwapChain::GetRasterStatus(_D3DRASTER_STATUS*)
_ZN18CDirect3DSwapChain15GetRasterStatusEP17_D3DRASTER_STATUS:
	push ebp
	mov ebp, esp
	mov eax, 0x8876086c
	pop ebp
	ret


;CDirect3DSwapChain::GetFrontBufferData(IDirect3DSurface9*)
_ZN18CDirect3DSwapChain18GetFrontBufferDataEP17IDirect3DSurface9:
	push ebp
	mov ebp, esp
	mov eax, 0x8876086c
	pop ebp
	ret


;CDirect3DSwapChain::GetPresentParameters(_D3DPRESENT_PARAMETERS_*)
_ZN18CDirect3DSwapChain20GetPresentParametersEP23_D3DPRESENT_PARAMETERS_:
	push ebp
	mov ebp, esp
	mov eax, 0x8876086c
	pop ebp
	ret


;CDirect3DSwapChain::AddRef()
_ZN18CDirect3DSwapChain6AddRefEv:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, [edx+0x4]
	add eax, 0x1
	mov [edx+0x4], eax
	pop ebp
	ret
	nop


;CDirect3DSwapChain::Present(tagRECT const*, tagRECT const*, HWND__*, _RGNDATA const*, unsigned long)
_ZN18CDirect3DSwapChain7PresentEPK7tagRECTS2_P6HWND__PK8_RGNDATAm:
	push ebp
	mov ebp, esp
	mov eax, 0x8876086c
	pop ebp
	ret


;CDirect3DSwapChain::Release()
_ZN18CDirect3DSwapChain7ReleaseEv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov edx, [ebp+0x8]
	mov ebx, [edx+0x4]
	sub ebx, 0x1
	mov [edx+0x4], ebx
	test ebx, ebx
	jnz _ZN18CDirect3DSwapChain7ReleaseEv_10
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x2c]
_ZN18CDirect3DSwapChain7ReleaseEv_10:
	mov eax, ebx
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;CDirect3DSwapChain::GetDevice(IDirect3DDevice9**)
_ZN18CDirect3DSwapChain9GetDeviceEPP16IDirect3DDevice9:
	push ebp
	mov ebp, esp
	mov eax, 0x8876086c
	pop ebp
	ret


;CDirect3DSwapChain::CDirect3DSwapChain()
_ZN18CDirect3DSwapChainC1Ev:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov dword [eax], _ZTV18CDirect3DSwapChain+0x8
	mov dword [eax+0x8], 0x0
	mov dword [eax+0x4], 0x0
	pop ebp
	ret
	add [eax], al


;CDirect3DSwapChain::~CDirect3DSwapChain()
_ZN18CDirect3DSwapChainD0Ev:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [ebx], _ZTV18CDirect3DSwapChain+0x8
	mov edx, [ebx+0x8]
	test edx, edx
	jz _ZN18CDirect3DSwapChainD0Ev_10
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x8]
_ZN18CDirect3DSwapChainD0Ev_10:
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _ZdlPv


;CDirect3DSwapChain::~CDirect3DSwapChain()
_ZN18CDirect3DSwapChainD1Ev:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov dword [eax], _ZTV18CDirect3DSwapChain+0x8
	mov edx, [eax+0x8]
	test edx, edx
	jz _ZN18CDirect3DSwapChainD1Ev_10
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x8]
_ZN18CDirect3DSwapChainD1Ev_10:
	leave
	ret


;Initialized global or static variables of CDirect3DSwapChain:
SECTION .data


;Initialized constant data of CDirect3DSwapChain:
SECTION .rdata
;VTable for CDirect3DSwapChain:
_ZTV18CDirect3DSwapChain: dd 0x0, 0x3b49c0, _ZN18CDirect3DSwapChain14QueryInterfaceERK5_GUIDPPv, _ZN18CDirect3DSwapChain6AddRefEv, _ZN18CDirect3DSwapChain7ReleaseEv, _ZN18CDirect3DSwapChain7PresentEPK7tagRECTS2_P6HWND__PK8_RGNDATAm, _ZN18CDirect3DSwapChain18GetFrontBufferDataEP17IDirect3DSurface9, _ZN18CDirect3DSwapChain13GetBackBufferEj19_D3DBACKBUFFER_TYPEPP17IDirect3DSurface9, _ZN18CDirect3DSwapChain15GetRasterStatusEP17_D3DRASTER_STATUS, _ZN18CDirect3DSwapChain14GetDisplayModeEP15_D3DDISPLAYMODE, _ZN18CDirect3DSwapChain9GetDeviceEPP16IDirect3DDevice9, _ZN18CDirect3DSwapChain20GetPresentParametersEP23_D3DPRESENT_PARAMETERS_, _ZN18CDirect3DSwapChainD1Ev, _ZN18CDirect3DSwapChainD0Ev, 0x0, 0x0


;Zero initialized global or static variables of CDirect3DSwapChain:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

