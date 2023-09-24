;Imports of CDirect3D:
	extern _ZN7COpenGL7sOpenGLE
	extern _ZN7COpenGL16SetVertexProgramEPK20COpenGLVertexProgram
	extern glEnable
	extern glDisable
	extern _ZN7COpenGL11SetBlendEXTEbmmmm
	extern _ZN15CDirect3DDevice29ValidateRenderTargetsPrologueEm
	extern glDrawRangeElements
	extern _ZN15CDirect3DDevice29ValidateRenderTargetsEpilogueEv
	extern _ZN7COpenGL8SetBlendEbmm
	extern _ZN7COpenGL27CreateAndSetProgrammableVBOEjjjjjR19COpenGLBufferObjectS1_jRK19VertexArrayInfoType
	extern _ZN7COpenGL16SetActiveTexUnitEj
	extern glTexParameteri
	extern _ZN14COpenGLTexture5ResetEv
	extern _ZN16CDirect3DTexture20UpdateOpenGLSurfacesEb
	extern _ZN20CDirect3DCubeTexture20UpdateOpenGLSurfacesEb
	extern glTexEnvf
	extern _ZN14MacOpenGLUtils12IsCompressedE10_D3DFORMAT
	extern _ZN22CDirect3DVolumeTexture20UpdateOpenGLSurfacesEb
	extern _ZN10MacDisplay11GetCardTypeEv
	extern _ZN7COpenGL8CTexUnit6SetTexEmP14COpenGLTexture
	extern _Znwm
	extern _ZN15CDirect3DDeviceC1Ej11_D3DDEVTYPEP16OpaqueContextRef
	extern _ZdlPv
	extern _Unwind_Resume
	extern memset
	extern _ZN10MacDisplay28GetSupportsSeparateBlendFuncEv
	extern _ZN10MacDisplay31GetSupportsAnisotropicFilteringEv
	extern _ZN14MacOpenGLUtils23GetPCPixelShaderVersionEv
	extern _ZN10MacDisplay23GetMaxTextureImageUnitsEv
	extern _ZN10MacDisplay18GetMaxTextureUnitsEv
	extern _ZN10MacDisplay25GetMaxSupportedAnisotropyEv
	extern _ZN10MacDisplay10GetNthModeEiRiS0_S0_S0_
	extern _ZN10MacDisplay15GetCurrentDepthEv
	extern _ZN10MacDisplay11GetNumModesEv
	extern _ZN10MacDisplay14GetDescriptionEv
	extern strcpy
	extern _ZN10MacDisplay11GetVendorIDEv
	extern _ZN10MacDisplay11GetDeviceIDEv
	extern _ZN10MacDisplay14GetCurrentModeERiS0_S0_S0_
	extern _ZN10MacDisplay30GetAntiAliasingMultiSampleInfoERiS0_RhS1_S1_

;Exports of CDirect3D:
	global sDirect3DInterface
	global Direct3DCreate9
	global _ZN15CDirect3DDevice19ValidatePixelShaderEv
	global _ZN15CDirect3DDevice20ValidateVertexShaderEv
	global _ZN15CDirect3DDevice21ValidateRasterizationEv
	global _ZN15CDirect3DDevice24DrawIndexedPrimitiveFastEjjj
	global _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j
	global _ZN7COpenGL23SetTexAnisotropicFilterEjmm
	global _ZN7COpenGL6SetTexEjmP14COpenGLTexture
	global _ZN9CDirect3D12CreateDeviceEj11_D3DDEVTYPEP6HWND__mP23_D3DPRESENT_PARAMETERS_PP16IDirect3DDevice9
	global _ZN9CDirect3D13GetDeviceCapsEj11_D3DDEVTYPEP9_D3DCAPS9
	global _ZN9CDirect3D14QueryInterfaceERK5_GUIDPPv
	global _ZN9CDirect3D15CheckDeviceTypeEj11_D3DDEVTYPE10_D3DFORMATS1_i
	global _ZN9CDirect3D15GetAdapterCountEv
	global _ZN9CDirect3D16EnumAdapterModesEj10_D3DFORMATjP15_D3DDISPLAYMODE
	global _ZN9CDirect3D17CheckDeviceFormatEj11_D3DDEVTYPE10_D3DFORMATm16_D3DRESOURCETYPES1_
	global _ZN9CDirect3D17GetAdapterMonitorEj
	global _ZN9CDirect3D19GetAdapterModeCountEj10_D3DFORMAT
	global _ZN9CDirect3D20GetAdapterIdentifierEjmP23_D3DADAPTER_IDENTIFIER9
	global _ZN9CDirect3D20GetDirect3DInterfaceEv
	global _ZN9CDirect3D21GetAdapterDisplayModeEjP15_D3DDISPLAYMODE
	global _ZN9CDirect3D22CheckDepthStencilMatchEj11_D3DDEVTYPE10_D3DFORMATS1_S1_
	global _ZN9CDirect3D22RegisterSoftwareDeviceEPv
	global _ZN9CDirect3D26CheckDeviceMultiSampleTypeEj11_D3DDEVTYPE10_D3DFORMATi20_D3DMULTISAMPLE_TYPEPm
	global _ZN9CDirect3D27CheckDeviceFormatConversionEj11_D3DDEVTYPE10_D3DFORMATS1_
	global _ZN9CDirect3D6AddRefEv
	global _ZN9CDirect3D7ReleaseEv
	global _ZN9CDirect3DD0Ev
	global _ZN9CDirect3DD1Ev
	global _ZTI10IDirect3D9
	global _ZTI8IUnknown
	global _ZTI9CDirect3D
	global _ZTV9CDirect3D


SECTION .text


;Direct3DCreate9
Direct3DCreate9:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _ZN9CDirect3D20GetDirect3DInterfaceEv
	nop


;CDirect3DDevice::ValidatePixelShader()
_ZN15CDirect3DDevice19ValidatePixelShaderEv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, _ZN7COpenGL7sOpenGLE
	mov ecx, [ebx+0xfc]
	mov edx, [esi+0x3b0]
	cmp ecx, edx
	jz _ZN15CDirect3DDevice19ValidatePixelShaderEv_10
	test edx, edx
	jz _ZN15CDirect3DDevice19ValidatePixelShaderEv_20
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x1c]
	mov eax, [esi+0x3b0]
	mov [ebx+0xfc], eax
_ZN15CDirect3DDevice19ValidatePixelShaderEv_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_ZN15CDirect3DDevice19ValidatePixelShaderEv_20:
	cmp ecx, 0xffffffff
	jz _ZN15CDirect3DDevice19ValidatePixelShaderEv_30
	mov eax, [ecx]
	mov [esp], ecx
	call dword [eax+0x20]
_ZN15CDirect3DDevice19ValidatePixelShaderEv_30:
	mov dword [ebx+0xfc], 0x0
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;CDirect3DDevice::ValidateVertexShader()
_ZN15CDirect3DDevice20ValidateVertexShaderEv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov eax, [esi+0x3ac]
	test eax, eax
	jz _ZN15CDirect3DDevice20ValidateVertexShaderEv_10
	mov ebx, _ZN7COpenGL7sOpenGLE
	cmp byte [ebx+0xed], 0x0
	jz _ZN15CDirect3DDevice20ValidateVertexShaderEv_20
_ZN15CDirect3DDevice20ValidateVertexShaderEv_30:
	add eax, 0x4
_ZN15CDirect3DDevice20ValidateVertexShaderEv_40:
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZN7COpenGL16SetVertexProgramEPK20COpenGLVertexProgram
_ZN15CDirect3DDevice20ValidateVertexShaderEv_50:
	mov byte [esi+0x440], 0x0
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_ZN15CDirect3DDevice20ValidateVertexShaderEv_20:
	mov byte [ebx+0xed], 0x1
	mov dword [esp], 0x8620
	call glEnable
	mov eax, [esi+0x3ac]
	test eax, eax
	jnz _ZN15CDirect3DDevice20ValidateVertexShaderEv_30
	jmp _ZN15CDirect3DDevice20ValidateVertexShaderEv_40
_ZN15CDirect3DDevice20ValidateVertexShaderEv_10:
	mov eax, _ZN7COpenGL7sOpenGLE
	cmp byte [eax+0xed], 0x0
	jz _ZN15CDirect3DDevice20ValidateVertexShaderEv_50
	mov byte [eax+0xed], 0x0
	mov dword [esp], 0x8620
	call glDisable
	jmp _ZN15CDirect3DDevice20ValidateVertexShaderEv_50
	nop


;CDirect3DDevice::ValidateRasterization()
_ZN15CDirect3DDevice21ValidateRasterizationEv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x8]
	mov ebx, [eax+0x444]
	test ebx, ebx
	jz _ZN15CDirect3DDevice21ValidateRasterizationEv_10
	mov dword [ebp-0x1c], 0x0
	mov esi, 0x1
	xor edi, edi
_ZN15CDirect3DDevice21ValidateRasterizationEv_40:
	test ebx, esi
	jz _ZN15CDirect3DDevice21ValidateRasterizationEv_20
	mov edx, [ebp+0x8]
	mov eax, [edx+0x3a0]
	add eax, edi
	mov eax, [eax]
	test eax, eax
	jz _ZN15CDirect3DDevice21ValidateRasterizationEv_30
	mov edx, [ebp-0x1c]
	mov [esp+0x8], edx
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j
_ZN15CDirect3DDevice21ValidateRasterizationEv_30:
	mov eax, esi
	not eax
	and ebx, eax
_ZN15CDirect3DDevice21ValidateRasterizationEv_20:
	add dword [ebp-0x1c], 0x1
	add esi, esi
	add edi, 0x38
	test ebx, ebx
	jnz _ZN15CDirect3DDevice21ValidateRasterizationEv_40
	mov edx, [ebp+0x8]
	mov dword [edx+0x444], 0x0
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN15CDirect3DDevice21ValidateRasterizationEv_10:
	mov edx, eax
	mov dword [edx+0x444], 0x0
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CDirect3DDevice::DrawIndexedPrimitiveFast(unsigned int, unsigned int, unsigned int)
_ZN15CDirect3DDevice24DrawIndexedPrimitiveFastEjjj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov ebx, [ebp+0xc]
	mov edi, [ebp+0x10]
	mov eax, [ebp+0x14]
	mov edx, [ebp+0x8]
	mov ecx, [edx+0xa4]
	test ecx, ecx
	jz _ZN15CDirect3DDevice24DrawIndexedPrimitiveFastEjjj_10
	mov esi, [edx+0x24]
	test esi, esi
	jz _ZN15CDirect3DDevice24DrawIndexedPrimitiveFastEjjj_10
	lea eax, [eax+eax*2]
	mov [ebp-0x34], eax
	mov esi, eax
	lea ecx, [ebx-0x1]
	mov [ebp-0x30], ecx
	mov byte [edx+0x441], 0x1
	cmp byte [edx+0x440], 0x0
	jnz _ZN15CDirect3DDevice24DrawIndexedPrimitiveFastEjjj_20
_ZN15CDirect3DDevice24DrawIndexedPrimitiveFastEjjj_150:
	mov eax, [ebp+0x8]
	cmp byte [eax+0x441], 0x0
	jnz _ZN15CDirect3DDevice24DrawIndexedPrimitiveFastEjjj_30
	mov dword [ebp-0x2c], 0x0
_ZN15CDirect3DDevice24DrawIndexedPrimitiveFastEjjj_140:
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _ZN15CDirect3DDevice19ValidatePixelShaderEv
	mov ecx, [ebp+0x8]
	mov ebx, [ecx+0x444]
	test ebx, ebx
	jnz _ZN15CDirect3DDevice24DrawIndexedPrimitiveFastEjjj_40
	mov eax, ecx
_ZN15CDirect3DDevice24DrawIndexedPrimitiveFastEjjj_130:
	mov edx, [eax+0x320]
	test edx, edx
	jz _ZN15CDirect3DDevice24DrawIndexedPrimitiveFastEjjj_50
	mov edx, eax
	mov eax, [eax+0x2b8]
	mov [esp+0x14], eax
	mov eax, [edx+0x2b0]
	mov [esp+0x10], eax
	mov eax, [edx+0x2b4]
	mov [esp+0xc], eax
	mov eax, [edx+0x2ac]
	mov [esp+0x8], eax
	movzx eax, byte [edx+0x2f8]
	mov [esp+0x4], eax
	mov eax, _ZN7COpenGL7sOpenGLE
	mov [esp], eax
	call _ZN7COpenGL11SetBlendEXTEbmmmm
_ZN15CDirect3DDevice24DrawIndexedPrimitiveFastEjjj_120:
	mov eax, [ebp+0x8]
	mov byte [eax+0x2f8], 0x0
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call _ZN15CDirect3DDevice29ValidateRenderTargetsPrologueEm
	mov edx, [ebp-0x34]
	mov [ebp-0x20], edx
	test edx, edx
	jz _ZN15CDirect3DDevice24DrawIndexedPrimitiveFastEjjj_60
	mov eax, [ebp-0x2c]
	test eax, eax
	jz _ZN15CDirect3DDevice24DrawIndexedPrimitiveFastEjjj_70
	jmp _ZN15CDirect3DDevice24DrawIndexedPrimitiveFastEjjj_80
_ZN15CDirect3DDevice24DrawIndexedPrimitiveFastEjjj_90:
	lea eax, [ebp-0x1c]
_ZN15CDirect3DDevice24DrawIndexedPrimitiveFastEjjj_100:
	mov ebx, [eax]
	sub esi, ebx
	mov [ebp-0x20], esi
	lea eax, [edi+edi]
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x1403
	mov [esp+0xc], ebx
	mov ecx, [ebp-0x30]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x4
	call glDrawRangeElements
	add edi, ebx
	mov esi, [ebp-0x20]
	test esi, esi
	jz _ZN15CDirect3DDevice24DrawIndexedPrimitiveFastEjjj_60
_ZN15CDirect3DDevice24DrawIndexedPrimitiveFastEjjj_70:
	mov dword [ebp-0x1c], 0xffff
	cmp esi, 0xfffe
	ja _ZN15CDirect3DDevice24DrawIndexedPrimitiveFastEjjj_90
	lea eax, [ebp-0x20]
	jmp _ZN15CDirect3DDevice24DrawIndexedPrimitiveFastEjjj_100
_ZN15CDirect3DDevice24DrawIndexedPrimitiveFastEjjj_80:
	mov dword [ebp-0x1c], 0xffff
	cmp esi, 0xfffe
	ja _ZN15CDirect3DDevice24DrawIndexedPrimitiveFastEjjj_110
	lea eax, [ebp-0x20]
_ZN15CDirect3DDevice24DrawIndexedPrimitiveFastEjjj_160:
	mov ebx, [eax]
	sub esi, ebx
	mov [ebp-0x20], esi
	mov ecx, [ebp-0x2c]
	lea eax, [ecx+edi*2]
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x1403
	mov [esp+0xc], ebx
	mov eax, [ebp-0x30]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x4
	call glDrawRangeElements
	add edi, ebx
	mov esi, [ebp-0x20]
	test esi, esi
	jnz _ZN15CDirect3DDevice24DrawIndexedPrimitiveFastEjjj_80
_ZN15CDirect3DDevice24DrawIndexedPrimitiveFastEjjj_60:
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _ZN15CDirect3DDevice29ValidateRenderTargetsEpilogueEv
_ZN15CDirect3DDevice24DrawIndexedPrimitiveFastEjjj_10:
	xor eax, eax
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN15CDirect3DDevice24DrawIndexedPrimitiveFastEjjj_50:
	mov ecx, eax
	mov eax, [eax+0x2b4]
	mov [esp+0xc], eax
	mov eax, [ecx+0x2ac]
	mov [esp+0x8], eax
	movzx eax, byte [ecx+0x2f8]
	mov [esp+0x4], eax
	mov eax, _ZN7COpenGL7sOpenGLE
	mov [esp], eax
	call _ZN7COpenGL8SetBlendEbmm
	jmp _ZN15CDirect3DDevice24DrawIndexedPrimitiveFastEjjj_120
_ZN15CDirect3DDevice24DrawIndexedPrimitiveFastEjjj_40:
	mov [esp], ecx
	call _ZN15CDirect3DDevice21ValidateRasterizationEv
	mov eax, [ebp+0x8]
	jmp _ZN15CDirect3DDevice24DrawIndexedPrimitiveFastEjjj_130
_ZN15CDirect3DDevice24DrawIndexedPrimitiveFastEjjj_30:
	mov ecx, eax
	mov edx, [eax+0xa8]
	mov eax, [eax+0x3b4]
	add eax, 0x14
	mov [esp+0x24], eax
	mov eax, [ecx+0x64]
	mov [esp+0x20], eax
	mov eax, [ecx+0xa4]
	add eax, 0x4
	mov [esp+0x1c], eax
	mov eax, [ecx+0x24]
	add eax, 0x4
	mov [esp+0x18], eax
	mov [esp+0x14], edx
	mov [esp+0x10], esi
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x0
	imul ebx, edx
	mov [esp+0x4], ebx
	mov eax, _ZN7COpenGL7sOpenGLE
	mov [esp], eax
	call _ZN7COpenGL27CreateAndSetProgrammableVBOEjjjjjR19COpenGLBufferObjectS1_jRK19VertexArrayInfoType
	mov [ebp-0x2c], eax
	mov eax, [ebp+0x8]
	mov byte [eax+0x441], 0x0
	jmp _ZN15CDirect3DDevice24DrawIndexedPrimitiveFastEjjj_140
_ZN15CDirect3DDevice24DrawIndexedPrimitiveFastEjjj_20:
	mov [esp], edx
	call _ZN15CDirect3DDevice20ValidateVertexShaderEv
	jmp _ZN15CDirect3DDevice24DrawIndexedPrimitiveFastEjjj_150
_ZN15CDirect3DDevice24DrawIndexedPrimitiveFastEjjj_110:
	lea eax, [ebp-0x1c]
	jmp _ZN15CDirect3DDevice24DrawIndexedPrimitiveFastEjjj_160


;CDirect3DDevice::SynchronizeD3DAndOpenGLTextureState(IDirect3DBaseTexture9*, unsigned int)
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov edx, [ebp+0xc]
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x28]
	mov esi, eax
	cmp eax, 0x3
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_10
	cmp eax, 0x4
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_20
	cmp eax, 0x5
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_30
	mov dword [ebp-0x70], 0x0
	mov dword [ebp-0x6c], 0x0
	mov dword [ebp-0x68], 0x0
	mov dword [ebp-0x64], 0x0
	mov byte [ebp-0x5e], 0x0
	xor edi, edi
	mov edx, [ebp-0x70]
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1380:
	mov eax, [edx+0xc]
	mov eax, [eax]
	test eax, eax
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_40
	mov byte [ebp-0x5d], 0x0
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1050:
	mov eax, [ebp-0x70]
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov edx, [ebp+0x10]
	mov [esp+0x4], edx
	mov ebx, _ZN7COpenGL7sOpenGLE
	mov [esp], ebx
	call _ZN7COpenGL6SetTexEjmP14COpenGLTexture
	cmp byte [ebp-0x5d], 0x0
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_50
	cmp esi, 0x3
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_60
	cmp esi, 0x4
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_70
	cmp esi, 0x5
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_80
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_50:
	mov eax, [ebp+0x10]
	shl eax, 0x3
	mov ecx, [ebp+0x10]
	shl ecx, 0x6
	sub ecx, eax
	mov [ebp-0x74], ecx
	mov eax, [ebp+0x8]
	mov edx, [eax+0x3a0]
	add ecx, edx
	mov [ebp-0x74], ecx
	mov eax, [ecx+0x4]
	cmp eax, 0x1
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_90
	cmp eax, 0x3
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_100
	mov ebx, 0x812d
	cmp eax, 0x4
	mov eax, 0x0
	cmovnz ebx, eax
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1060:
	mov ecx, [ebp+0x10]
	lea eax, [ecx+ecx*2]
	shl eax, 0x3
	mov [ebp-0x78], eax
	mov esi, eax
	mov eax, _ZN7COpenGL7sOpenGLE
	add esi, [eax+0x14]
	cmp edi, 0xde0
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_110
	cmp edi, 0xde1
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_120
	cmp edi, 0x84f5
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_130
	cmp edi, 0x806f
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_140
	cmp edi, 0x8513
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_150
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_110:
	xor eax, eax
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1110:
	mov eax, [esi+eax*4]
	cmp ebx, [eax+0x10]
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_160
	mov edx, [ebp+0x10]
	mov [esp+0x4], edx
	mov ecx, _ZN7COpenGL7sOpenGLE
	mov [esp], ecx
	call _ZN7COpenGL16SetActiveTexUnitEj
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x2802
	mov [esp], edi
	call glTexParameteri
	cmp edi, 0xde0
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_170
	cmp edi, 0xde1
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_180
	cmp edi, 0x84f5
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_190
	cmp edi, 0x806f
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_200
	cmp edi, 0x8513
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_210
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_170:
	xor eax, eax
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1210:
	mov eax, [esi+eax*4]
	mov [eax+0x10], ebx
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_160:
	mov eax, [ebp-0x70]
	add eax, 0x4
	mov [ebp-0x54], eax
	mov [eax+0xc], ebx
	mov edx, [ebp-0x74]
	mov eax, [edx+0x8]
	cmp eax, 0x1
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_220
	cmp eax, 0x3
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_230
	mov ebx, 0x812d
	cmp eax, 0x4
	mov eax, 0x0
	cmovnz ebx, eax
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1080:
	mov esi, [ebp-0x78]
	mov ecx, _ZN7COpenGL7sOpenGLE
	add esi, [ecx+0x14]
	cmp edi, 0xde0
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_240
	cmp edi, 0xde1
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_250
	cmp edi, 0x84f5
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_260
	cmp edi, 0x806f
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_270
	cmp edi, 0x8513
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_280
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_240:
	xor eax, eax
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1130:
	mov eax, [esi+eax*4]
	cmp ebx, [eax+0x14]
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_290
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov edx, _ZN7COpenGL7sOpenGLE
	mov [esp], edx
	call _ZN7COpenGL16SetActiveTexUnitEj
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x2803
	mov [esp], edi
	call glTexParameteri
	cmp edi, 0xde0
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_300
	cmp edi, 0xde1
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_310
	cmp edi, 0x84f5
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_320
	cmp edi, 0x806f
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_330
	cmp edi, 0x8513
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_340
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_300:
	xor eax, eax
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1250:
	mov eax, [esi+eax*4]
	mov [eax+0x14], ebx
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_290:
	mov ecx, [ebp-0x54]
	mov [ecx+0x10], ebx
	mov edx, [ebp-0x74]
	mov eax, [edx+0xc]
	cmp eax, 0x1
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_350
	cmp eax, 0x3
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_360
	mov ebx, 0x812d
	cmp eax, 0x4
	mov eax, 0x0
	cmovnz ebx, eax
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1090:
	mov esi, [ebp-0x78]
	mov ecx, _ZN7COpenGL7sOpenGLE
	add esi, [ecx+0x14]
	cmp edi, 0xde0
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_370
	cmp edi, 0xde1
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_380
	cmp edi, 0x84f5
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_390
	cmp edi, 0x806f
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_400
	cmp edi, 0x8513
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_410
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_370:
	xor eax, eax
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1140:
	mov eax, [esi+eax*4]
	cmp ebx, [eax+0x18]
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_420
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov edx, _ZN7COpenGL7sOpenGLE
	mov [esp], edx
	call _ZN7COpenGL16SetActiveTexUnitEj
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x8072
	mov [esp], edi
	call glTexParameteri
	cmp edi, 0xde0
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_430
	cmp edi, 0xde1
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_440
	cmp edi, 0x84f5
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_450
	cmp edi, 0x806f
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_460
	cmp edi, 0x8513
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_470
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_430:
	xor eax, eax
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1230:
	mov eax, [esi+eax*4]
	mov [eax+0x18], ebx
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_420:
	mov ecx, [ebp-0x54]
	mov [ecx+0x14], ebx
	cmp byte [ebp-0x5e], 0x0
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_480
	mov edx, [ebp-0x70]
	mov eax, [edx+0x2c]
	mov edx, [edx+0x30]
	test eax, eax
	jnz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_490
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_860:
	xor ebx, ebx
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_890:
	mov edx, [ebp+0xc]
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x34]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], ebx
	cmp ebx, eax
	jg _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_500
	lea eax, [ebp-0x1c]
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1010:
	mov eax, [eax]
	sub eax, 0x1
	mov [ebp-0x5c], eax
	mov eax, [ebp-0x5c]
	test eax, eax
	js _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_510
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1020:
	mov eax, [ebp-0x5c]
	mov [ebp-0x4c], eax
	mov edx, [ebp-0x74]
	mov eax, [edx+0x14]
	cmp eax, 0x3
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_520
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1030:
	cmp eax, 0x1
	jbe _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_530
	mov esi, 0x2601
	mov byte [ebp-0x55], 0x0
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1040:
	mov ebx, [ebp-0x78]
	mov ecx, _ZN7COpenGL7sOpenGLE
	add ebx, [ecx+0x14]
	cmp edi, 0xde0
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_540
	cmp edi, 0xde1
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_550
	cmp edi, 0x84f5
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_560
	cmp edi, 0x806f
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_570
	cmp edi, 0x8513
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_580
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_540:
	xor eax, eax
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1120:
	mov eax, [ebx+eax*4]
	cmp esi, [eax+0x20]
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_590
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov edx, _ZN7COpenGL7sOpenGLE
	mov [esp], edx
	call _ZN7COpenGL16SetActiveTexUnitEj
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x2800
	mov [esp], edi
	call glTexParameteri
	cmp edi, 0xde0
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_600
	cmp edi, 0xde1
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_610
	cmp edi, 0x84f5
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_620
	cmp edi, 0x806f
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_630
	cmp edi, 0x8513
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_640
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_600:
	xor eax, eax
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1220:
	mov eax, [ebx+eax*4]
	mov [eax+0x20], esi
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_590:
	mov ecx, [ebp-0x54]
	mov [ecx+0x1c], esi
	mov eax, [ebp-0x74]
	mov edx, [eax+0x1c]
	mov ecx, [eax+0x18]
	cmp ecx, 0x3
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_650
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1070:
	test edx, edx
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_660
	mov eax, [ebp-0x5c]
	test eax, eax
	mov eax, 0x0
	cmovz edx, eax
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_660:
	cmp dword [ebp+0x10], 0x1
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_670
	mov eax, [ebp+0x10]
	sub eax, 0x2
	cmp eax, 0x1
	jbe _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_670
	cmp dword [ebp+0x10], 0x3
	ja _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_670
	mov eax, edx
	xor esi, esi
	cmp eax, 0x1
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_680
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_910:
	cmp eax, 0x2
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_690
	test eax, eax
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_700
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1530:
	mov edx, _ZN7COpenGL7sOpenGLE
	cmp byte [edx+0xe8], 0x0
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_710
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_990:
	movss xmm0, dword [_float_0_25000000]
	movss [ebp-0x50], xmm0
	mov eax, [ebp-0x74]
	mulss xmm0, [eax+0x20]
	movss [ebp-0x50], xmm0
	mov ebx, [ebp-0x78]
	add ebx, [edx+0x14]
	ucomiss xmm0, [ebx+0x14]
	jp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_720
	jnz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_720
	mov eax, _ZN7COpenGL7sOpenGLE
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1000:
	mov ebx, [ebp-0x78]
	add ebx, [eax+0x14]
	cmp edi, 0xde0
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_730
	cmp edi, 0xde1
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_740
	cmp edi, 0x84f5
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_750
	cmp edi, 0x806f
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_760
	cmp edi, 0x8513
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_770
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_730:
	xor eax, eax
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1100:
	mov eax, [ebx+eax*4]
	mov edx, [ebp-0x4c]
	cmp [eax+0x24], edx
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_780
	mov ecx, [ebp+0x10]
	mov [esp+0x4], ecx
	mov eax, _ZN7COpenGL7sOpenGLE
	mov [esp], eax
	call _ZN7COpenGL16SetActiveTexUnitEj
	mov edx, [ebp-0x4c]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x813d
	mov [esp], edi
	call glTexParameteri
	cmp edi, 0xde0
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_790
	cmp edi, 0xde1
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_800
	cmp edi, 0x84f5
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_810
	cmp edi, 0x806f
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_820
	cmp edi, 0x8513
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_830
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_790:
	xor eax, eax
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1240:
	mov eax, [ebx+eax*4]
	mov ecx, [ebp-0x4c]
	mov [eax+0x24], ecx
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_780:
	mov edx, [ebp-0x5c]
	mov eax, [ebp-0x54]
	mov [eax+0x20], edx
	mov ecx, [ebp-0x74]
	mov ebx, [ecx+0x28]
	mov eax, esi
	test al, al
	jnz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_840
	cmp ebx, 0x1
	jbe _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_850
	cmp byte [ebp-0x55], 0x0
	jnz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_850
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_840:
	mov ebx, 0x1
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_850:
	mov [esp+0xc], ebx
	mov [esp+0x8], edi
	mov edx, [ebp+0x10]
	mov [esp+0x4], edx
	mov ecx, _ZN7COpenGL7sOpenGLE
	mov [esp], ecx
	call _ZN7COpenGL23SetTexAnisotropicFilterEjmm
	mov eax, [ebp-0x54]
	mov [eax+0x24], ebx
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_490:
	cmp eax, 0x3
	jbe _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_860
	cmp edx, 0x3
	jbe _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_860
	xor ecx, ecx
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_880:
	shr edx, 1
	add ecx, 0x1
	shr eax, 1
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_870
	cmp eax, 0x3
	jbe _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_870
	cmp edx, 0x3
	ja _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_880
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_870:
	mov ebx, ecx
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_890
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_670:
	cmp edx, 0x2
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_900
	mov eax, edx
	mov esi, 0x1
	cmp eax, 0x1
	jnz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_910
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_680:
	cmp ecx, 0x1
	jbe _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_920
	mov ebx, [ebp-0x78]
	mov edx, _ZN7COpenGL7sOpenGLE
	add ebx, [edx+0x14]
	cmp edi, 0xde0
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_930
	cmp edi, 0xde1
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_940
	cmp edi, 0x84f5
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_950
	cmp edi, 0x806f
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_960
	cmp edi, 0x8513
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_970
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_930:
	xor eax, eax
	mov eax, [ebx+eax*4]
	cmp dword [eax+0x1c], 0x2702
	jnz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_980
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1260:
	mov edx, [ebp-0x54]
	mov dword [edx+0x18], 0x2702
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1450:
	mov edx, _ZN7COpenGL7sOpenGLE
	cmp byte [edx+0xe8], 0x0
	jnz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_990
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_710:
	mov eax, edx
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1000
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_500:
	lea eax, [ebp-0x20]
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1010
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_480:
	mov ecx, [ebp+0xc]
	mov eax, [ecx]
	mov [esp], ecx
	call dword [eax+0x34]
	sub eax, 0x1
	mov [ebp-0x5c], eax
	mov eax, [ebp-0x5c]
	test eax, eax
	jns _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1020
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_510:
	mov dword [ebp-0x5c], 0x0
	mov dword [ebp-0x4c], 0x0
	mov edx, [ebp-0x74]
	mov eax, [edx+0x14]
	cmp eax, 0x3
	jnz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1030
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_520:
	mov esi, 0x2601
	mov byte [ebp-0x55], 0x1
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1040
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_40:
	mov [esp], edx
	call _ZN14COpenGLTexture5ResetEv
	mov byte [ebp-0x5d], 0x1
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1050
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_90:
	mov ebx, 0x2901
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1060
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_650:
	mov byte [ebp-0x55], 0x1
	mov cl, 0x2
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1070
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_220:
	mov ebx, 0x2901
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1080
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_350:
	mov ebx, 0x2901
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1090
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_900:
	mov esi, 0x1
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_680
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_740:
	mov eax, 0x1
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1100
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_120:
	mov eax, 0x1
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1110
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_550:
	mov eax, 0x1
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1120
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_230:
	mov ebx, 0x812f
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1080
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_360:
	mov ebx, 0x812f
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1090
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_250:
	mov eax, 0x1
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1130
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_380:
	mov eax, 0x1
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1140
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_100:
	mov ebx, 0x812f
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1060
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_700:
	cmp ecx, 0x1
	jbe _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1150
	mov ebx, [ebp-0x78]
	mov ecx, _ZN7COpenGL7sOpenGLE
	add ebx, [ecx+0x14]
	cmp edi, 0xde0
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1160
	cmp edi, 0xde1
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1170
	cmp edi, 0x84f5
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1180
	cmp edi, 0x806f
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1190
	cmp edi, 0x8513
	jnz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1160
	mov eax, 0x4
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1200
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_130:
	mov eax, 0x2
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1110
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_190:
	mov eax, 0x2
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1210
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_620:
	mov eax, 0x2
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1220
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_450:
	mov eax, 0x2
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1230
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_810:
	mov eax, 0x2
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1240
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_320:
	mov eax, 0x2
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1250
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_60:
	mov ecx, [ebp+0x10]
	mov [esp+0x4], ecx
	mov [esp], ebx
	call _ZN7COpenGL16SetActiveTexUnitEj
	mov dword [esp+0x4], 0x1
	mov eax, [ebp-0x6c]
	mov [esp], eax
	call _ZN16CDirect3DTexture20UpdateOpenGLSurfacesEb
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_50
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_150:
	mov eax, 0x4
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1110
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_580:
	mov eax, 0x4
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1120
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_410:
	mov eax, 0x4
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1140
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_280:
	mov eax, 0x4
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1130
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_770:
	mov eax, 0x4
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1100
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_940:
	mov eax, 0x1
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1600:
	mov eax, [ebx+eax*4]
	cmp dword [eax+0x1c], 0x2702
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1260
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_980:
	mov ecx, [ebp+0x10]
	mov [esp+0x4], ecx
	mov eax, _ZN7COpenGL7sOpenGLE
	mov [esp], eax
	call _ZN7COpenGL16SetActiveTexUnitEj
	mov dword [esp+0x8], 0x2702
	mov dword [esp+0x4], 0x2801
	mov [esp], edi
	call glTexParameteri
	cmp edi, 0xde0
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1270
	cmp edi, 0xde1
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1280
	cmp edi, 0x84f5
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1290
	cmp edi, 0x806f
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1300
	cmp edi, 0x8513
	jnz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1270
	mov eax, 0x4
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1310
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_80:
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZN7COpenGL16SetActiveTexUnitEj
	mov dword [esp+0x4], 0x1
	mov edx, [ebp-0x64]
	mov [esp], edx
	call _ZN20CDirect3DCubeTexture20UpdateOpenGLSurfacesEb
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_50
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_690:
	cmp ecx, 0x1
	jbe _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1320
	mov ebx, [ebp-0x78]
	mov eax, _ZN7COpenGL7sOpenGLE
	add ebx, [eax+0x14]
	cmp edi, 0xde0
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1330
	cmp edi, 0xde1
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1340
	cmp edi, 0x84f5
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1350
	cmp edi, 0x806f
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1360
	cmp edi, 0x8513
	jnz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1330
	mov eax, 0x4
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1370
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_720:
	mov edx, [ebp+0x10]
	mov [esp+0x4], edx
	mov ecx, _ZN7COpenGL7sOpenGLE
	mov [esp], ecx
	call _ZN7COpenGL16SetActiveTexUnitEj
	movss xmm0, dword [ebp-0x50]
	movss [esp+0x8], xmm0
	mov dword [esp+0x4], 0x8501
	mov dword [esp], 0x8500
	call glTexEnvf
	movss xmm0, dword [ebp-0x50]
	movss [ebx+0x14], xmm0
	mov eax, _ZN7COpenGL7sOpenGLE
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1000
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_530:
	mov esi, 0x2600
	mov byte [ebp-0x55], 0x0
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1040
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_10:
	mov ecx, [ebp+0xc]
	mov [ebp-0x6c], ecx
	mov eax, [ecx]
	lea edx, [ebp-0x40]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x0
	mov [esp], ecx
	call dword [eax+0x44]
	mov eax, [ebp-0x40]
	mov [esp], eax
	call _ZN14MacOpenGLUtils12IsCompressedE10_D3DFORMAT
	mov [ebp-0x5e], al
	mov ecx, [ebp+0xc]
	add ecx, 0x4
	mov [ebp-0x70], ecx
	mov dword [ebp-0x68], 0x0
	mov dword [ebp-0x64], 0x0
	mov edi, 0xde1
	mov edx, ecx
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1380
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_560:
	mov eax, 0x2
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1120
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_750:
	mov eax, 0x2
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1100
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_260:
	mov eax, 0x2
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1130
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_390:
	mov eax, 0x2
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1140
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_20:
	mov eax, [ebp+0xc]
	mov [ebp-0x68], eax
	mov eax, [eax]
	lea edx, [ebp-0x40]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x0
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call dword [eax+0x44]
	mov eax, [ebp-0x40]
	mov [esp], eax
	call _ZN14MacOpenGLUtils12IsCompressedE10_D3DFORMAT
	mov [ebp-0x5e], al
	mov eax, [ebp+0xc]
	add eax, 0x4
	mov [ebp-0x70], eax
	mov dword [ebp-0x6c], 0x0
	mov dword [ebp-0x64], 0x0
	mov edi, 0x806f
	mov edx, eax
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1380
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_30:
	mov edx, [ebp+0xc]
	mov [ebp-0x64], edx
	mov eax, [edx]
	lea edx, [ebp-0x40]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x0
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call dword [eax+0x44]
	mov eax, [ebp-0x40]
	mov [esp], eax
	call _ZN14MacOpenGLUtils12IsCompressedE10_D3DFORMAT
	mov [ebp-0x5e], al
	mov eax, [ebp+0xc]
	add eax, 0x4
	mov [ebp-0x70], eax
	mov dword [ebp-0x6c], 0x0
	mov dword [ebp-0x68], 0x0
	mov edi, 0x8513
	mov edx, eax
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1380
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_180:
	mov eax, 0x1
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1210
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_310:
	mov eax, 0x1
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1250
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_440:
	mov eax, 0x1
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1230
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_610:
	mov eax, 0x1
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1220
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_800:
	mov eax, 0x1
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1240
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_570:
	mov eax, 0x3
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1120
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_270:
	mov eax, 0x3
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1130
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_760:
	mov eax, 0x3
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1100
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_140:
	mov eax, 0x3
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1110
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_400:
	mov eax, 0x3
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1140
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_920:
	mov ebx, [ebp-0x78]
	mov eax, _ZN7COpenGL7sOpenGLE
	add ebx, [eax+0x14]
	cmp edi, 0xde0
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1390
	cmp edi, 0xde1
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1400
	cmp edi, 0x84f5
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1410
	cmp edi, 0x806f
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1420
	cmp edi, 0x8513
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1430
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1390:
	xor eax, eax
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1440
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1270:
	xor eax, eax
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1310:
	mov eax, [ebx+eax*4]
	mov dword [eax+0x1c], 0x2702
	mov edx, [ebp-0x54]
	mov dword [edx+0x18], 0x2702
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1450
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1160:
	xor eax, eax
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1200:
	mov eax, [ebx+eax*4]
	cmp dword [eax+0x1c], 0x2601
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1460
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov edx, _ZN7COpenGL7sOpenGLE
	mov [esp], edx
	call _ZN7COpenGL16SetActiveTexUnitEj
	mov dword [esp+0x8], 0x2601
	mov dword [esp+0x4], 0x2801
	mov [esp], edi
	call glTexParameteri
	cmp edi, 0xde0
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1470
	cmp edi, 0xde1
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1480
	cmp edi, 0x84f5
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1490
	cmp edi, 0x806f
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1500
	cmp edi, 0x8513
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1510
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1470:
	xor eax, eax
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1520
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1480:
	mov eax, 0x1
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1520:
	mov eax, [ebx+eax*4]
	mov dword [eax+0x1c], 0x2601
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1460:
	mov ecx, [ebp-0x54]
	mov dword [ecx+0x18], 0x2601
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1530
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_70:
	mov edx, [ebp+0x10]
	mov [esp+0x4], edx
	mov [esp], ebx
	call _ZN7COpenGL16SetActiveTexUnitEj
	mov dword [esp+0x4], 0x1
	mov ecx, [ebp-0x68]
	mov [esp], ecx
	call _ZN22CDirect3DVolumeTexture20UpdateOpenGLSurfacesEb
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_50
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1330:
	xor eax, eax
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1370:
	mov eax, [ebx+eax*4]
	cmp dword [eax+0x1c], 0x2703
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1540
	mov edx, [ebp+0x10]
	mov [esp+0x4], edx
	mov ecx, _ZN7COpenGL7sOpenGLE
	mov [esp], ecx
	call _ZN7COpenGL16SetActiveTexUnitEj
	mov dword [esp+0x8], 0x2703
	mov dword [esp+0x4], 0x2801
	mov [esp], edi
	call glTexParameteri
	cmp edi, 0xde0
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1550
	cmp edi, 0xde1
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1560
	cmp edi, 0x84f5
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1570
	cmp edi, 0x806f
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1580
	cmp edi, 0x8513
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1590
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1550:
	xor eax, eax
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1670:
	mov eax, [ebx+eax*4]
	mov dword [eax+0x1c], 0x2703
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1540:
	mov eax, [ebp-0x54]
	mov dword [eax+0x18], 0x2703
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1530
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_200:
	mov eax, 0x3
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1210
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_820:
	mov eax, 0x3
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1240
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_330:
	mov eax, 0x3
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1250
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_460:
	mov eax, 0x3
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1230
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_630:
	mov eax, 0x3
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1220
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_950:
	mov eax, 0x2
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1600
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_210:
	mov eax, 0x4
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1210
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_830:
	mov eax, 0x4
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1240
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_340:
	mov eax, 0x4
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1250
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_470:
	mov eax, 0x4
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1230
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_640:
	mov eax, 0x4
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1220
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_970:
	mov eax, 0x4
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1600
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1400:
	mov eax, 0x1
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1440:
	mov eax, [ebx+eax*4]
	cmp dword [eax+0x1c], 0x2700
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1610
	mov edx, [ebp+0x10]
	mov [esp+0x4], edx
	mov ecx, _ZN7COpenGL7sOpenGLE
	mov [esp], ecx
	call _ZN7COpenGL16SetActiveTexUnitEj
	mov dword [esp+0x8], 0x2700
	mov dword [esp+0x4], 0x2801
	mov [esp], edi
	call glTexParameteri
	cmp edi, 0xde0
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1620
	cmp edi, 0xde1
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1630
	cmp edi, 0x84f5
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1640
	cmp edi, 0x806f
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1650
	cmp edi, 0x8513
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1660
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1620:
	xor eax, eax
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1680:
	mov eax, [ebx+eax*4]
	mov dword [eax+0x1c], 0x2700
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1610:
	mov eax, [ebp-0x54]
	mov dword [eax+0x18], 0x2700
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1530
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1350:
	mov eax, 0x2
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1370
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1300:
	mov eax, 0x3
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1310
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1190:
	mov eax, 0x3
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1200
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1430:
	mov eax, 0x4
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1440
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1510:
	mov eax, 0x4
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1520
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1590:
	mov eax, 0x4
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1670
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1660:
	mov eax, 0x4
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1680
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1150:
	mov ebx, [ebp-0x78]
	mov edx, _ZN7COpenGL7sOpenGLE
	add ebx, [edx+0x14]
	cmp edi, 0xde0
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1690
	cmp edi, 0xde1
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1700
	cmp edi, 0x84f5
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1710
	cmp edi, 0x806f
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1720
	cmp edi, 0x8513
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1730
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1690:
	xor eax, eax
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1800:
	mov eax, [ebx+eax*4]
	cmp dword [eax+0x1c], 0x2600
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1740
	mov ecx, [ebp+0x10]
	mov [esp+0x4], ecx
	mov eax, _ZN7COpenGL7sOpenGLE
	mov [esp], eax
	call _ZN7COpenGL16SetActiveTexUnitEj
	mov dword [esp+0x8], 0x2600
	mov dword [esp+0x4], 0x2801
	mov [esp], edi
	call glTexParameteri
	cmp edi, 0xde0
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1750
	cmp edi, 0xde1
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1760
	cmp edi, 0x84f5
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1770
	cmp edi, 0x806f
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1780
	cmp edi, 0x8513
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1790
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1750:
	xor eax, eax
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1810:
	mov eax, [ebx+eax*4]
	mov dword [eax+0x1c], 0x2600
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1740:
	mov edx, [ebp-0x54]
	mov dword [edx+0x18], 0x2600
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1530
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1730:
	mov eax, 0x4
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1800
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1790:
	mov eax, 0x4
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1810
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1280:
	mov eax, 0x1
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1310
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_960:
	mov eax, 0x3
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1600
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1320:
	mov ebx, [ebp-0x78]
	mov ecx, _ZN7COpenGL7sOpenGLE
	add ebx, [ecx+0x14]
	cmp edi, 0xde0
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1820
	cmp edi, 0xde1
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1830
	cmp edi, 0x84f5
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1840
	cmp edi, 0x806f
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1850
	cmp edi, 0x8513
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1860
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1820:
	xor eax, eax
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1930:
	mov eax, [ebx+eax*4]
	cmp dword [eax+0x1c], 0x2701
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1870
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov edx, _ZN7COpenGL7sOpenGLE
	mov [esp], edx
	call _ZN7COpenGL16SetActiveTexUnitEj
	mov dword [esp+0x8], 0x2701
	mov dword [esp+0x4], 0x2801
	mov [esp], edi
	call glTexParameteri
	cmp edi, 0xde0
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1880
	cmp edi, 0xde1
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1890
	cmp edi, 0x84f5
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1900
	cmp edi, 0x806f
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1910
	cmp edi, 0x8513
	jz _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1920
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1880:
	xor eax, eax
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1940:
	mov eax, [ebx+eax*4]
	mov dword [eax+0x1c], 0x2701
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1870:
	mov ecx, [ebp-0x54]
	mov dword [ecx+0x18], 0x2701
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1530
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1860:
	mov eax, 0x4
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1930
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1920:
	mov eax, 0x4
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1940
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1170:
	mov eax, 0x1
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1200
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1340:
	mov eax, 0x1
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1370
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1290:
	mov eax, 0x2
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1310
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1180:
	mov eax, 0x2
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1200
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1560:
	mov eax, 0x1
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1670
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1410:
	mov eax, 0x2
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1440
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1360:
	mov eax, 0x3
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1370
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1490:
	mov eax, 0x2
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1520
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1630:
	mov eax, 0x1
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1680
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1420:
	mov eax, 0x3
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1440
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1570:
	mov eax, 0x2
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1670
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1700:
	mov al, 0x1
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1800
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1500:
	mov eax, 0x3
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1520
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1830:
	mov eax, 0x1
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1930
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1640:
	mov eax, 0x2
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1680
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1580:
	mov eax, 0x3
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1670
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1710:
	mov eax, 0x2
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1800
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1840:
	mov eax, 0x2
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1930
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1650:
	mov eax, 0x3
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1680
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1760:
	mov eax, 0x1
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1810
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1720:
	mov eax, 0x3
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1800
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1850:
	mov eax, 0x3
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1930
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1890:
	mov eax, 0x1
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1940
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1770:
	mov eax, 0x2
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1810
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1900:
	mov eax, 0x2
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1940
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1780:
	mov eax, 0x3
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1810
_ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1910:
	mov eax, 0x3
	jmp _ZN15CDirect3DDevice35SynchronizeD3DAndOpenGLTextureStateEP21IDirect3DBaseTexture9j_1940


;COpenGL::SetTexAnisotropicFilter(unsigned int, unsigned long, unsigned long)
_ZN7COpenGL23SetTexAnisotropicFilterEjmm:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0xc]
	mov ebx, [ebp+0x10]
	lea eax, [edi+edi*2]
	lea esi, [eax*8]
	mov eax, [ebp+0x8]
	add esi, [eax+0x14]
	cmp ebx, 0x8513
	jz _ZN7COpenGL23SetTexAnisotropicFilterEjmm_10
	cmp ebx, 0xde0
	jz _ZN7COpenGL23SetTexAnisotropicFilterEjmm_20
_ZN7COpenGL23SetTexAnisotropicFilterEjmm_150:
	cmp ebx, 0xde1
	jz _ZN7COpenGL23SetTexAnisotropicFilterEjmm_30
	cmp ebx, 0x84f5
	jz _ZN7COpenGL23SetTexAnisotropicFilterEjmm_40
	cmp ebx, 0x806f
	jz _ZN7COpenGL23SetTexAnisotropicFilterEjmm_50
	cmp ebx, 0x8513
	jz _ZN7COpenGL23SetTexAnisotropicFilterEjmm_60
_ZN7COpenGL23SetTexAnisotropicFilterEjmm_20:
	xor eax, eax
_ZN7COpenGL23SetTexAnisotropicFilterEjmm_130:
	mov eax, [esi+eax*4]
	mov edx, [ebp+0x14]
	cmp [eax+0x28], edx
	jz _ZN7COpenGL23SetTexAnisotropicFilterEjmm_70
	mov [esp+0x4], edi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _ZN7COpenGL16SetActiveTexUnitEj
	mov edx, [ebp+0x14]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x84fe
	mov [esp], ebx
	call glTexParameteri
	cmp ebx, 0xde0
	jz _ZN7COpenGL23SetTexAnisotropicFilterEjmm_80
	cmp ebx, 0xde1
	jz _ZN7COpenGL23SetTexAnisotropicFilterEjmm_90
	cmp ebx, 0x84f5
	jz _ZN7COpenGL23SetTexAnisotropicFilterEjmm_100
	cmp ebx, 0x806f
	jz _ZN7COpenGL23SetTexAnisotropicFilterEjmm_110
	cmp ebx, 0x8513
	jz _ZN7COpenGL23SetTexAnisotropicFilterEjmm_120
_ZN7COpenGL23SetTexAnisotropicFilterEjmm_80:
	xor eax, eax
_ZN7COpenGL23SetTexAnisotropicFilterEjmm_140:
	mov eax, [esi+eax*4]
	mov edx, [ebp+0x14]
	mov [eax+0x28], edx
_ZN7COpenGL23SetTexAnisotropicFilterEjmm_70:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN7COpenGL23SetTexAnisotropicFilterEjmm_30:
	mov eax, 0x1
	jmp _ZN7COpenGL23SetTexAnisotropicFilterEjmm_130
_ZN7COpenGL23SetTexAnisotropicFilterEjmm_40:
	mov eax, 0x2
	jmp _ZN7COpenGL23SetTexAnisotropicFilterEjmm_130
_ZN7COpenGL23SetTexAnisotropicFilterEjmm_60:
	mov eax, 0x4
	jmp _ZN7COpenGL23SetTexAnisotropicFilterEjmm_130
_ZN7COpenGL23SetTexAnisotropicFilterEjmm_110:
	mov eax, 0x3
	jmp _ZN7COpenGL23SetTexAnisotropicFilterEjmm_140
_ZN7COpenGL23SetTexAnisotropicFilterEjmm_10:
	call _ZN10MacDisplay11GetCardTypeEv
	cmp eax, 0x2
	jnz _ZN7COpenGL23SetTexAnisotropicFilterEjmm_150
	mov [esp+0x4], edi
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _ZN7COpenGL16SetActiveTexUnitEj
	mov eax, [ebp+0x14]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x84fe
	mov dword [esp], 0x8513
	call glTexParameteri
	mov eax, [esi+0x10]
	mov edx, [ebp+0x14]
	mov [eax+0x28], edx
	jmp _ZN7COpenGL23SetTexAnisotropicFilterEjmm_70
_ZN7COpenGL23SetTexAnisotropicFilterEjmm_90:
	mov eax, 0x1
	jmp _ZN7COpenGL23SetTexAnisotropicFilterEjmm_140
_ZN7COpenGL23SetTexAnisotropicFilterEjmm_50:
	mov eax, 0x3
	jmp _ZN7COpenGL23SetTexAnisotropicFilterEjmm_130
_ZN7COpenGL23SetTexAnisotropicFilterEjmm_100:
	mov eax, 0x2
	jmp _ZN7COpenGL23SetTexAnisotropicFilterEjmm_140
_ZN7COpenGL23SetTexAnisotropicFilterEjmm_120:
	mov eax, 0x4
	jmp _ZN7COpenGL23SetTexAnisotropicFilterEjmm_140
	nop


;COpenGL::SetTex(unsigned int, unsigned long, COpenGLTexture*)
_ZN7COpenGL6SetTexEjmP14COpenGLTexture:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edi, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov esi, [ebp+0x10]
	mov eax, [ebp+0x14]
	mov [ebp-0x1c], eax
	lea eax, [ecx+ecx*2]
	lea ebx, [eax*8]
	add ebx, [edi+0x14]
	cmp esi, 0xde0
	jz _ZN7COpenGL6SetTexEjmP14COpenGLTexture_10
	cmp esi, 0xde1
	jz _ZN7COpenGL6SetTexEjmP14COpenGLTexture_20
	cmp esi, 0x84f5
	jz _ZN7COpenGL6SetTexEjmP14COpenGLTexture_30
	cmp esi, 0x806f
	jz _ZN7COpenGL6SetTexEjmP14COpenGLTexture_40
	cmp esi, 0x8513
	jz _ZN7COpenGL6SetTexEjmP14COpenGLTexture_50
_ZN7COpenGL6SetTexEjmP14COpenGLTexture_10:
	xor eax, eax
_ZN7COpenGL6SetTexEjmP14COpenGLTexture_80:
	mov eax, [ebx+eax*4]
	mov eax, [eax+0xc]
	test eax, eax
	jz _ZN7COpenGL6SetTexEjmP14COpenGLTexture_60
	mov edx, [ebp-0x1c]
	mov edx, [edx+0xc]
	mov [ebp-0x2c], edx
	mov eax, [eax]
	cmp eax, [edx]
	jz _ZN7COpenGL6SetTexEjmP14COpenGLTexture_70
_ZN7COpenGL6SetTexEjmP14COpenGLTexture_60:
	mov [esp+0x4], ecx
	mov [esp], edi
	call _ZN7COpenGL16SetActiveTexUnitEj
	mov eax, [ebp-0x1c]
	mov [ebp+0x10], eax
	mov [ebp+0xc], esi
	mov [ebp+0x8], ebx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _ZN7COpenGL8CTexUnit6SetTexEmP14COpenGLTexture
_ZN7COpenGL6SetTexEjmP14COpenGLTexture_20:
	mov eax, 0x1
	jmp _ZN7COpenGL6SetTexEjmP14COpenGLTexture_80
_ZN7COpenGL6SetTexEjmP14COpenGLTexture_30:
	mov eax, 0x2
	jmp _ZN7COpenGL6SetTexEjmP14COpenGLTexture_80
_ZN7COpenGL6SetTexEjmP14COpenGLTexture_50:
	mov eax, 0x4
	jmp _ZN7COpenGL6SetTexEjmP14COpenGLTexture_80
_ZN7COpenGL6SetTexEjmP14COpenGLTexture_70:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN7COpenGL6SetTexEjmP14COpenGLTexture_40:
	mov eax, 0x3
	jmp _ZN7COpenGL6SetTexEjmP14COpenGLTexture_80


;CDirect3D::CreateDevice(unsigned int, _D3DDEVTYPE, HWND__*, unsigned long, _D3DPRESENT_PARAMETERS_*, IDirect3DDevice9**)
_ZN9CDirect3D12CreateDeviceEj11_D3DDEVTYPEP6HWND__mP23_D3DPRESENT_PARAMETERS_PP16IDirect3DDevice9:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov dword [esp], 0x448
	call _Znwm
	mov esi, eax
	mov eax, [ebp+0x8]
	mov eax, [eax+0x8]
	mov [esp+0xc], eax
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZN15CDirect3DDeviceC1Ej11_D3DDEVTYPEP16OpaqueContextRef
	mov edx, [esi]
	mov eax, [ebp+0x1c]
	mov [esp+0x4], eax
	mov [esp], esi
	call dword [edx+0x40]
	mov ebx, eax
	test eax, eax
	js _ZN9CDirect3D12CreateDeviceEj11_D3DDEVTYPEP6HWND__mP23_D3DPRESENT_PARAMETERS_PP16IDirect3DDevice9_10
	mov eax, [ebp+0x20]
	mov [eax], esi
	xor ebx, ebx
	mov eax, ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_ZN9CDirect3D12CreateDeviceEj11_D3DDEVTYPEP6HWND__mP23_D3DPRESENT_PARAMETERS_PP16IDirect3DDevice9_10:
	mov eax, [esi]
	mov [esp], esi
	call dword [eax+0x8]
	mov eax, ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	mov ebx, eax
	mov [esp], esi
	call _ZdlPv
	mov [esp], ebx
	call _Unwind_Resume
	add [eax], al


;CDirect3D::GetDeviceCaps(unsigned int, _D3DDEVTYPE, _D3DCAPS9*)
_ZN9CDirect3D13GetDeviceCapsEj11_D3DDEVTYPEP9_D3DCAPS9:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x14]
	mov dword [esp+0x8], 0x130
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call memset
	mov dword [ebx], 0x1
	mov eax, [ebp+0xc]
	mov [ebx+0x4], eax
	mov dword [ebx+0x8], 0x0
	mov dword [ebx+0xc], 0x30020000
	mov dword [ebx+0x10], 0x120
	mov dword [ebx+0x14], 0x80000001
	mov dword [ebx+0x18], 0x1
	mov dword [ebx+0x1c], 0x19bfc0
	mov dword [ebx+0x20], 0xcaf2
	call _ZN10MacDisplay28GetSupportsSeparateBlendFuncEv
	test al, al
	jz _ZN9CDirect3D13GetDeviceCapsEj11_D3DDEVTYPEP9_D3DCAPS9_10
	or dword [ebx+0x20], 0x20000
_ZN9CDirect3D13GetDeviceCapsEj11_D3DDEVTYPEP9_D3DCAPS9_10:
	mov dword [ebx+0x24], 0x7622081
	mov dword [ebx+0x28], 0xff
	mov dword [ebx+0x2c], 0x7ff
	mov dword [ebx+0x30], 0x7ff
	mov dword [ebx+0x34], 0xff
	mov dword [ebx+0x38], 0x84208
	mov dword [ebx+0x3c], 0x234d07
	mov dword [ebx+0x40], 0x3030300
	mov dword [ebx+0x44], 0x3030300
	call _ZN10MacDisplay31GetSupportsAnisotropicFilteringEv
	test al, al
	jz _ZN9CDirect3D13GetDeviceCapsEj11_D3DDEVTYPEP9_D3DCAPS9_20
	or dword [ebx+0x40], 0x4000400
	or dword [ebx+0x44], 0x4000400
_ZN9CDirect3D13GetDeviceCapsEj11_D3DDEVTYPEP9_D3DCAPS9_20:
	mov dword [ebx+0x48], 0x0
	mov dword [ebx+0x4c], 0xd
	mov dword [ebx+0x50], 0x0
	mov dword [ebx+0x54], 0x0
	mov dword [ebx+0x58], 0x800
	mov dword [ebx+0x5c], 0x800
	mov dword [ebx+0x60], 0x100
	mov dword [ebx+0x64], 0x0
	mov dword [ebx+0x68], 0x800
	call _ZN10MacDisplay31GetSupportsAnisotropicFilteringEv
	test al, al
	jnz _ZN9CDirect3D13GetDeviceCapsEj11_D3DDEVTYPEP9_D3DCAPS9_30
	mov dword [ebx+0x6c], 0x1
_ZN9CDirect3D13GetDeviceCapsEj11_D3DDEVTYPEP9_D3DCAPS9_60:
	xor eax, eax
	mov [ebx+0x70], eax
	mov [ebx+0x74], eax
	mov [ebx+0x78], eax
	mov [ebx+0x7c], eax
	mov [ebx+0x80], eax
	mov [ebx+0x84], eax
	mov dword [ebx+0x88], 0x1ff
	mov dword [ebx+0x8c], 0x0
	mov dword [ebx+0x90], 0x3feffff
	mov dword [ebx+0x9c], 0x3b
	mov dword [ebx+0xa0], 0x8
	mov dword [ebx+0xa4], 0x0
	mov dword [ebx+0xa8], 0x0
	mov dword [ebx+0xac], 0x0
	mov dword [ebx+0xb4], 0xffff
	mov dword [ebx+0xb8], 0xffff
	mov dword [ebx+0xbc], 0x10
	mov dword [ebx+0xc0], 0x400
	mov dword [ebx+0xb0], 0x3f800000
	mov dword [ebx+0xc4], 0xfffe0300
	call _ZN14MacOpenGLUtils23GetPCPixelShaderVersionEv
	mov [ebx+0xcc], eax
	mov dword [ebx+0xc8], 0x100
	mov dword [ebx+0xd0], 0x41000000
	call _ZN10MacDisplay23GetMaxTextureImageUnitsEv
	mov [ebp-0x10], eax
	call _ZN10MacDisplay18GetMaxTextureUnitsEv
	mov [ebp-0xc], eax
	cmp eax, [ebp-0x10]
	jge _ZN9CDirect3D13GetDeviceCapsEj11_D3DDEVTYPEP9_D3DCAPS9_40
	lea eax, [ebp-0x10]
_ZN9CDirect3D13GetDeviceCapsEj11_D3DDEVTYPEP9_D3DCAPS9_50:
	mov eax, [eax]
	mov [ebx+0x98], eax
	mov [ebx+0x94], eax
	mov dword [ebx+0xd4], 0x1
	mov dword [ebx+0xd8], 0x0
	mov dword [ebx+0xec], 0x1
	mov dword [ebx+0xf0], 0x1
	mov dword [ebx+0xf4], 0x200
	mov dword [ebx+0x11c], 0x0
	mov dword [ebx+0x120], 0x0
	mov dword [ebx+0x124], 0x0
	mov dword [ebx+0x128], 0x0
	xor eax, eax
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_ZN9CDirect3D13GetDeviceCapsEj11_D3DDEVTYPEP9_D3DCAPS9_40:
	lea eax, [ebp-0xc]
	jmp _ZN9CDirect3D13GetDeviceCapsEj11_D3DDEVTYPEP9_D3DCAPS9_50
_ZN9CDirect3D13GetDeviceCapsEj11_D3DDEVTYPEP9_D3DCAPS9_30:
	call _ZN10MacDisplay25GetMaxSupportedAnisotropyEv
	mov [ebx+0x6c], eax
	jmp _ZN9CDirect3D13GetDeviceCapsEj11_D3DDEVTYPEP9_D3DCAPS9_60
	nop


;CDirect3D::QueryInterface(_GUID const&, void**)
_ZN9CDirect3D14QueryInterfaceERK5_GUIDPPv:
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


;CDirect3D::CheckDeviceType(unsigned int, _D3DDEVTYPE, _D3DFORMAT, _D3DFORMAT, int)
_ZN9CDirect3D15CheckDeviceTypeEj11_D3DDEVTYPE10_D3DFORMATS1_i:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	ret
	nop


;CDirect3D::GetAdapterCount()
_ZN9CDirect3D15GetAdapterCountEv:
	push ebp
	mov ebp, esp
	mov eax, 0x1
	pop ebp
	ret


;CDirect3D::EnumAdapterModes(unsigned int, _D3DFORMAT, unsigned int, _D3DDISPLAYMODE*)
_ZN9CDirect3D16EnumAdapterModesEj10_D3DFORMATjP15_D3DDISPLAYMODE:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov ecx, [ebp+0x8]
	mov esi, [ebp+0x10]
	mov edi, [ebp+0x14]
	mov ebx, [ebp+0x18]
	mov dword [ebx+0x8], 0x0
	mov dword [ebx+0x4], 0x0
	mov dword [ebx], 0x0
	mov dword [ebx+0xc], 0x0
	mov edx, [ecx]
	mov [esp+0x8], esi
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], ecx
	call dword [edx+0x18]
	cmp eax, edi
	jbe _ZN9CDirect3D16EnumAdapterModesEj10_D3DFORMATjP15_D3DDISPLAYMODE_10
	lea ecx, [esi-0x15]
	cmp ecx, 0xe
	jbe _ZN9CDirect3D16EnumAdapterModesEj10_D3DFORMATjP15_D3DDISPLAYMODE_20
_ZN9CDirect3D16EnumAdapterModesEj10_D3DFORMATjP15_D3DDISPLAYMODE_60:
	mov byte [ebp-0x29], 0x0
	xor esi, esi
_ZN9CDirect3D16EnumAdapterModesEj10_D3DFORMATjP15_D3DDISPLAYMODE_70:
	lea eax, [ebp-0x28]
	mov [esp+0x10], eax
	lea eax, [ebp-0x24]
	mov [esp+0xc], eax
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], edi
	call _ZN10MacDisplay10GetNthModeEiRiS0_S0_S0_
	mov eax, [ebp-0x24]
	cmp eax, 0x10
	jz _ZN9CDirect3D16EnumAdapterModesEj10_D3DFORMATjP15_D3DDISPLAYMODE_30
	cmp eax, 0x20
	jz _ZN9CDirect3D16EnumAdapterModesEj10_D3DFORMATjP15_D3DDISPLAYMODE_40
_ZN9CDirect3D16EnumAdapterModesEj10_D3DFORMATjP15_D3DDISPLAYMODE_80:
	xor eax, eax
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN9CDirect3D16EnumAdapterModesEj10_D3DFORMATjP15_D3DDISPLAYMODE_20:
	mov eax, 0x1
	shl eax, cl
	test eax, 0x4003
	jnz _ZN9CDirect3D16EnumAdapterModesEj10_D3DFORMATjP15_D3DDISPLAYMODE_50
	test al, 0x1c
	jz _ZN9CDirect3D16EnumAdapterModesEj10_D3DFORMATjP15_D3DDISPLAYMODE_60
	mov byte [ebp-0x29], 0x1
	xor esi, esi
	jmp _ZN9CDirect3D16EnumAdapterModesEj10_D3DFORMATjP15_D3DDISPLAYMODE_70
_ZN9CDirect3D16EnumAdapterModesEj10_D3DFORMATjP15_D3DDISPLAYMODE_40:
	mov eax, esi
	test al, al
	jz _ZN9CDirect3D16EnumAdapterModesEj10_D3DFORMATjP15_D3DDISPLAYMODE_80
	mov edx, 0x16
_ZN9CDirect3D16EnumAdapterModesEj10_D3DFORMATjP15_D3DDISPLAYMODE_90:
	mov eax, [ebp-0x1c]
	mov [ebx], eax
	mov eax, [ebp-0x20]
	mov [ebx+0x4], eax
	mov eax, [ebp-0x28]
	mov [ebx+0x8], eax
	mov [ebx+0xc], edx
	jmp _ZN9CDirect3D16EnumAdapterModesEj10_D3DFORMATjP15_D3DDISPLAYMODE_80
_ZN9CDirect3D16EnumAdapterModesEj10_D3DFORMATjP15_D3DDISPLAYMODE_10:
	mov eax, 0x8876086c
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN9CDirect3D16EnumAdapterModesEj10_D3DFORMATjP15_D3DDISPLAYMODE_50:
	mov byte [ebp-0x29], 0x0
	mov esi, 0x1
	jmp _ZN9CDirect3D16EnumAdapterModesEj10_D3DFORMATjP15_D3DDISPLAYMODE_70
_ZN9CDirect3D16EnumAdapterModesEj10_D3DFORMATjP15_D3DDISPLAYMODE_30:
	cmp byte [ebp-0x29], 0x0
	jz _ZN9CDirect3D16EnumAdapterModesEj10_D3DFORMATjP15_D3DDISPLAYMODE_80
	mov edx, 0x19
	jmp _ZN9CDirect3D16EnumAdapterModesEj10_D3DFORMATjP15_D3DDISPLAYMODE_90
	nop


;CDirect3D::CheckDeviceFormat(unsigned int, _D3DDEVTYPE, _D3DFORMAT, unsigned long, _D3DRESOURCETYPE, _D3DFORMAT)
_ZN9CDirect3D17CheckDeviceFormatEj11_D3DDEVTYPE10_D3DFORMATm16_D3DRESOURCETYPES1_:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov ecx, [ebp+0xc]
	test ecx, ecx
	jz _ZN9CDirect3D17CheckDeviceFormatEj11_D3DDEVTYPE10_D3DFORMATm16_D3DRESOURCETYPES1__10
	mov eax, 0x8876086c
	leave
	ret
_ZN9CDirect3D17CheckDeviceFormatEj11_D3DDEVTYPE10_D3DFORMATm16_D3DRESOURCETYPES1__10:
	call _ZN10MacDisplay15GetCurrentDepthEv
	mov edx, [ebp+0x18]
	test edx, edx
	jnz _ZN9CDirect3D17CheckDeviceFormatEj11_D3DDEVTYPE10_D3DFORMATm16_D3DRESOURCETYPES1__20
	cmp dword [ebp+0x20], 0x31545844
	jz _ZN9CDirect3D17CheckDeviceFormatEj11_D3DDEVTYPE10_D3DFORMATm16_D3DRESOURCETYPES1__30
	cmp dword [ebp+0x20], 0x32545844
	jz _ZN9CDirect3D17CheckDeviceFormatEj11_D3DDEVTYPE10_D3DFORMATm16_D3DRESOURCETYPES1__30
	cmp dword [ebp+0x20], 0x33545844
	jz _ZN9CDirect3D17CheckDeviceFormatEj11_D3DDEVTYPE10_D3DFORMATm16_D3DRESOURCETYPES1__30
	cmp dword [ebp+0x20], 0x35545844
	jz _ZN9CDirect3D17CheckDeviceFormatEj11_D3DDEVTYPE10_D3DFORMATm16_D3DRESOURCETYPES1__30
_ZN9CDirect3D17CheckDeviceFormatEj11_D3DDEVTYPE10_D3DFORMATm16_D3DRESOURCETYPES1__110:
	cmp dword [ebp+0x20], 0x16
	jnz _ZN9CDirect3D17CheckDeviceFormatEj11_D3DDEVTYPE10_D3DFORMATm16_D3DRESOURCETYPES1__40
_ZN9CDirect3D17CheckDeviceFormatEj11_D3DDEVTYPE10_D3DFORMATm16_D3DRESOURCETYPES1__30:
	xor eax, eax
_ZN9CDirect3D17CheckDeviceFormatEj11_D3DDEVTYPE10_D3DFORMATm16_D3DRESOURCETYPES1__90:
	leave
	ret
_ZN9CDirect3D17CheckDeviceFormatEj11_D3DDEVTYPE10_D3DFORMATm16_D3DRESOURCETYPES1__20:
	cmp dword [ebp+0x18], 0x2
	jnz _ZN9CDirect3D17CheckDeviceFormatEj11_D3DDEVTYPE10_D3DFORMATm16_D3DRESOURCETYPES1__50
	cmp dword [ebp+0x1c], 0x1
	jnz _ZN9CDirect3D17CheckDeviceFormatEj11_D3DDEVTYPE10_D3DFORMATm16_D3DRESOURCETYPES1__60
	cmp eax, 0x10
	jnz _ZN9CDirect3D17CheckDeviceFormatEj11_D3DDEVTYPE10_D3DFORMATm16_D3DRESOURCETYPES1__70
	cmp dword [ebp+0x20], 0x50
	jz _ZN9CDirect3D17CheckDeviceFormatEj11_D3DDEVTYPE10_D3DFORMATm16_D3DRESOURCETYPES1__30
	cmp dword [ebp+0x20], 0x49
	jz _ZN9CDirect3D17CheckDeviceFormatEj11_D3DDEVTYPE10_D3DFORMATm16_D3DRESOURCETYPES1__30
_ZN9CDirect3D17CheckDeviceFormatEj11_D3DDEVTYPE10_D3DFORMATm16_D3DRESOURCETYPES1__80:
	mov eax, 0x8876086a
_ZN9CDirect3D17CheckDeviceFormatEj11_D3DDEVTYPE10_D3DFORMATm16_D3DRESOURCETYPES1__100:
	leave
	ret
_ZN9CDirect3D17CheckDeviceFormatEj11_D3DDEVTYPE10_D3DFORMATm16_D3DRESOURCETYPES1__60:
	cmp dword [ebp+0x1c], 0x3
	jnz _ZN9CDirect3D17CheckDeviceFormatEj11_D3DDEVTYPE10_D3DFORMATm16_D3DRESOURCETYPES1__80
	call _ZN14MacOpenGLUtils23GetPCPixelShaderVersionEv
	cmp eax, 0xffff01ff
	jbe _ZN9CDirect3D17CheckDeviceFormatEj11_D3DDEVTYPE10_D3DFORMATm16_D3DRESOURCETYPES1__80
	xor eax, eax
	jmp _ZN9CDirect3D17CheckDeviceFormatEj11_D3DDEVTYPE10_D3DFORMATm16_D3DRESOURCETYPES1__90
_ZN9CDirect3D17CheckDeviceFormatEj11_D3DDEVTYPE10_D3DFORMATm16_D3DRESOURCETYPES1__40:
	cmp dword [ebp+0x20], 0x15
	jz _ZN9CDirect3D17CheckDeviceFormatEj11_D3DDEVTYPE10_D3DFORMATm16_D3DRESOURCETYPES1__30
	mov eax, 0x8876086a
	jmp _ZN9CDirect3D17CheckDeviceFormatEj11_D3DDEVTYPE10_D3DFORMATm16_D3DRESOURCETYPES1__100
_ZN9CDirect3D17CheckDeviceFormatEj11_D3DDEVTYPE10_D3DFORMATm16_D3DRESOURCETYPES1__50:
	cmp dword [ebp+0x18], 0x1
	jz _ZN9CDirect3D17CheckDeviceFormatEj11_D3DDEVTYPE10_D3DFORMATm16_D3DRESOURCETYPES1__110
	mov eax, 0x8876086a
	jmp _ZN9CDirect3D17CheckDeviceFormatEj11_D3DDEVTYPE10_D3DFORMATm16_D3DRESOURCETYPES1__100
_ZN9CDirect3D17CheckDeviceFormatEj11_D3DDEVTYPE10_D3DFORMATm16_D3DRESOURCETYPES1__70:
	cmp eax, 0x20
	jnz _ZN9CDirect3D17CheckDeviceFormatEj11_D3DDEVTYPE10_D3DFORMATm16_D3DRESOURCETYPES1__80
	cmp dword [ebp+0x20], 0x50
	jz _ZN9CDirect3D17CheckDeviceFormatEj11_D3DDEVTYPE10_D3DFORMATm16_D3DRESOURCETYPES1__30
	cmp dword [ebp+0x20], 0x49
	jz _ZN9CDirect3D17CheckDeviceFormatEj11_D3DDEVTYPE10_D3DFORMATm16_D3DRESOURCETYPES1__30
	cmp dword [ebp+0x20], 0x47
	jz _ZN9CDirect3D17CheckDeviceFormatEj11_D3DDEVTYPE10_D3DFORMATm16_D3DRESOURCETYPES1__30
	cmp dword [ebp+0x20], 0x4b
	jz _ZN9CDirect3D17CheckDeviceFormatEj11_D3DDEVTYPE10_D3DFORMATm16_D3DRESOURCETYPES1__30
	mov eax, 0x8876086a
	jmp _ZN9CDirect3D17CheckDeviceFormatEj11_D3DDEVTYPE10_D3DFORMATm16_D3DRESOURCETYPES1__100


;CDirect3D::GetAdapterMonitor(unsigned int)
_ZN9CDirect3D17GetAdapterMonitorEj:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	ret
	nop


;CDirect3D::GetAdapterModeCount(unsigned int, _D3DFORMAT)
_ZN9CDirect3D19GetAdapterModeCountEj10_D3DFORMAT:
	push ebp
	mov ebp, esp
	cmp dword [ebp+0x10], 0x16
	jz _ZN9CDirect3D19GetAdapterModeCountEj10_D3DFORMAT_10
	xor eax, eax
	pop ebp
	ret
_ZN9CDirect3D19GetAdapterModeCountEj10_D3DFORMAT_10:
	pop ebp
	jmp _ZN10MacDisplay11GetNumModesEv
	nop


;CDirect3D::GetAdapterIdentifier(unsigned int, unsigned long, _D3DADAPTER_IDENTIFIER9*)
_ZN9CDirect3D20GetAdapterIdentifierEjmP23_D3DADAPTER_IDENTIFIER9:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x14]
	mov dword [esp+0x8], 0x44c
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call memset
	mov dword [ebx], 0x2063614d
	mov word [ebx+0x4], 0x534f
	mov byte [ebx+0x6], 0x0
	call _ZN10MacDisplay14GetDescriptionEv
	mov [esp+0x4], eax
	lea eax, [ebx+0x200]
	mov [esp], eax
	call strcpy
	mov dword [ebx+0x424], 0x1
	mov dword [ebx+0x420], 0x0
	mov dword [ebx+0x438], 0x4d414353
	call _ZN10MacDisplay11GetVendorIDEv
	mov [ebx+0x428], eax
	call _ZN10MacDisplay11GetDeviceIDEv
	mov [ebx+0x42c], eax
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;CDirect3D::GetDirect3DInterface()
_ZN9CDirect3D20GetDirect3DInterfaceEv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [sDirect3DInterface]
	test edx, edx
	jz _ZN9CDirect3D20GetDirect3DInterfaceEv_10
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x4]
	mov eax, [sDirect3DInterface]
	leave
	ret
_ZN9CDirect3D20GetDirect3DInterfaceEv_10:
	mov dword [esp], 0xc
	call _Znwm
	mov dword [eax], _ZTV9CDirect3D+0x8
	mov dword [eax+0x8], 0x0
	mov dword [eax+0x4], 0x1
	mov [sDirect3DInterface], eax
	leave
	ret


;CDirect3D::GetAdapterDisplayMode(unsigned int, _D3DDISPLAYMODE*)
_ZN9CDirect3D21GetAdapterDisplayModeEjP15_D3DDISPLAYMODE:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x10]
	mov eax, [ebp+0xc]
	test eax, eax
	jz _ZN9CDirect3D21GetAdapterDisplayModeEjP15_D3DDISPLAYMODE_10
	mov eax, 0x8876086c
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_ZN9CDirect3D21GetAdapterDisplayModeEjP15_D3DDISPLAYMODE_10:
	lea eax, [ebp-0x18]
	mov [esp+0xc], eax
	lea eax, [ebp-0x14]
	mov [esp+0x8], eax
	lea eax, [ebp-0x10]
	mov [esp+0x4], eax
	lea eax, [ebp-0xc]
	mov [esp], eax
	call _ZN10MacDisplay14GetCurrentModeERiS0_S0_S0_
	mov eax, [ebp-0xc]
	mov [ebx], eax
	mov eax, [ebp-0x10]
	mov [ebx+0x4], eax
	mov eax, [ebp-0x18]
	mov [ebx+0x8], eax
	xor eax, eax
	cmp dword [ebp-0x14], 0x10
	setz al
	lea eax, [eax*4+0x15]
	mov [ebx+0xc], eax
	xor eax, eax
	add esp, 0x24
	pop ebx
	pop ebp
	ret


;CDirect3D::CheckDepthStencilMatch(unsigned int, _D3DDEVTYPE, _D3DFORMAT, _D3DFORMAT, _D3DFORMAT)
_ZN9CDirect3D22CheckDepthStencilMatchEj11_D3DDEVTYPE10_D3DFORMATS1_S1_:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	ret
	nop


;CDirect3D::RegisterSoftwareDevice(void*)
_ZN9CDirect3D22RegisterSoftwareDeviceEPv:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	ret
	nop


;CDirect3D::CheckDeviceMultiSampleType(unsigned int, _D3DDEVTYPE, _D3DFORMAT, int, _D3DMULTISAMPLE_TYPE, unsigned long*)
_ZN9CDirect3D26CheckDeviceMultiSampleTypeEj11_D3DDEVTYPE10_D3DFORMATi20_D3DMULTISAMPLE_TYPEPm:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	mov ebx, [ebp+0x1c]
	lea eax, [ebp-0xb]
	mov [esp+0x10], eax
	lea eax, [ebp-0xa]
	mov [esp+0xc], eax
	lea eax, [ebp-0x9]
	mov [esp+0x8], eax
	lea eax, [ebp-0x10]
	mov [esp+0x4], eax
	lea eax, [ebp-0x14]
	mov [esp], eax
	call _ZN10MacDisplay30GetAntiAliasingMultiSampleInfoERiS0_RhS1_S1_
	test ebx, ebx
	jnz _ZN9CDirect3D26CheckDeviceMultiSampleTypeEj11_D3DDEVTYPE10_D3DFORMATi20_D3DMULTISAMPLE_TYPEPm_10
_ZN9CDirect3D26CheckDeviceMultiSampleTypeEj11_D3DDEVTYPE10_D3DFORMATi20_D3DMULTISAMPLE_TYPEPm_20:
	mov eax, 0x8876086a
_ZN9CDirect3D26CheckDeviceMultiSampleTypeEj11_D3DDEVTYPE10_D3DFORMATi20_D3DMULTISAMPLE_TYPEPm_40:
	add esp, 0x34
	pop ebx
	pop ebp
	ret
_ZN9CDirect3D26CheckDeviceMultiSampleTypeEj11_D3DDEVTYPE10_D3DFORMATi20_D3DMULTISAMPLE_TYPEPm_10:
	cmp byte [ebp-0x9], 0x0
	jz _ZN9CDirect3D26CheckDeviceMultiSampleTypeEj11_D3DDEVTYPE10_D3DFORMATi20_D3DMULTISAMPLE_TYPEPm_20
	cmp ebx, [ebp-0x10]
	ja _ZN9CDirect3D26CheckDeviceMultiSampleTypeEj11_D3DDEVTYPE10_D3DFORMATi20_D3DMULTISAMPLE_TYPEPm_20
	mov ebx, [ebp+0x20]
	test ebx, ebx
	jz _ZN9CDirect3D26CheckDeviceMultiSampleTypeEj11_D3DDEVTYPE10_D3DFORMATi20_D3DMULTISAMPLE_TYPEPm_30
	mov eax, [ebp+0x20]
	mov dword [eax], 0x1
_ZN9CDirect3D26CheckDeviceMultiSampleTypeEj11_D3DDEVTYPE10_D3DFORMATi20_D3DMULTISAMPLE_TYPEPm_30:
	xor eax, eax
	jmp _ZN9CDirect3D26CheckDeviceMultiSampleTypeEj11_D3DDEVTYPE10_D3DFORMATi20_D3DMULTISAMPLE_TYPEPm_40
	nop


;CDirect3D::CheckDeviceFormatConversion(unsigned int, _D3DDEVTYPE, _D3DFORMAT, _D3DFORMAT)
_ZN9CDirect3D27CheckDeviceFormatConversionEj11_D3DDEVTYPE10_D3DFORMATS1_:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	ret
	nop


;CDirect3D::AddRef()
_ZN9CDirect3D6AddRefEv:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, [edx+0x4]
	add eax, 0x1
	mov [edx+0x4], eax
	pop ebp
	ret
	nop


;CDirect3D::Release()
_ZN9CDirect3D7ReleaseEv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov edx, [ebp+0x8]
	mov ebx, [edx+0x4]
	sub ebx, 0x1
	mov [edx+0x4], ebx
	test ebx, ebx
	jnz _ZN9CDirect3D7ReleaseEv_10
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x48]
_ZN9CDirect3D7ReleaseEv_10:
	mov eax, ebx
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;CDirect3D::~CDirect3D()
_ZN9CDirect3DD0Ev:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov dword [eax], _ZTV9CDirect3D+0x8
	mov dword [sDirect3DInterface], 0x0
	mov [ebp+0x8], eax
	pop ebp
	jmp _ZdlPv
	nop


;CDirect3D::~CDirect3D()
_ZN9CDirect3DD1Ev:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov dword [eax], _ZTV9CDirect3D+0x8
	mov dword [sDirect3DInterface], 0x0
	pop ebp
	ret


;Initialized global or static variables of CDirect3D:
SECTION .data


;Initialized constant data of CDirect3D:
SECTION .rdata
;VTypeInfoTable for IDirect3D9:
_ZTI10IDirect3D9: dd 0x8, _cstring_10idirect3d9, _ZTI8IUnknown, 0x0, 0x0, 0x0, 0x0, 0x0
;VTypeInfoTable for IUnknown:
_ZTI8IUnknown: dd 0x8, _cstring_8iunknown, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, _ZTI8IUnknown, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
;VTypeInfoTable for CDirect3D:
_ZTI9CDirect3D: dd 0x8, _cstring_9cdirect3d, _ZTI10IDirect3D9, 0x0, 0x0, 0x0, 0x0, 0x0
;VTable for CDirect3D:
_ZTV9CDirect3D: dd 0x0, _ZTI9CDirect3D, _ZN9CDirect3D14QueryInterfaceERK5_GUIDPPv, _ZN9CDirect3D6AddRefEv, _ZN9CDirect3D7ReleaseEv, _ZN9CDirect3D22RegisterSoftwareDeviceEPv, _ZN9CDirect3D15GetAdapterCountEv, _ZN9CDirect3D20GetAdapterIdentifierEjmP23_D3DADAPTER_IDENTIFIER9, _ZN9CDirect3D19GetAdapterModeCountEj10_D3DFORMAT, _ZN9CDirect3D16EnumAdapterModesEj10_D3DFORMATjP15_D3DDISPLAYMODE, _ZN9CDirect3D21GetAdapterDisplayModeEjP15_D3DDISPLAYMODE, _ZN9CDirect3D15CheckDeviceTypeEj11_D3DDEVTYPE10_D3DFORMATS1_i, _ZN9CDirect3D17CheckDeviceFormatEj11_D3DDEVTYPE10_D3DFORMATm16_D3DRESOURCETYPES1_, _ZN9CDirect3D26CheckDeviceMultiSampleTypeEj11_D3DDEVTYPE10_D3DFORMATi20_D3DMULTISAMPLE_TYPEPm, _ZN9CDirect3D22CheckDepthStencilMatchEj11_D3DDEVTYPE10_D3DFORMATS1_S1_, _ZN9CDirect3D27CheckDeviceFormatConversionEj11_D3DDEVTYPE10_D3DFORMATS1_, _ZN9CDirect3D13GetDeviceCapsEj11_D3DDEVTYPEP9_D3DCAPS9, _ZN9CDirect3D17GetAdapterMonitorEj, _ZN9CDirect3D12CreateDeviceEj11_D3DDEVTYPEP6HWND__mP23_D3DPRESENT_PARAMETERS_PP16IDirect3DDevice9, _ZN9CDirect3DD1Ev, _ZN9CDirect3DD0Ev, 0x0, 0x0, 0x0


;Zero initialized global or static variables of CDirect3D:
SECTION .bss
sDirect3DInterface: resb 0x80


;All cstrings:
SECTION .rdata
_cstring_10idirect3d9:		db "10IDirect3D9",0
_cstring_8iunknown:		db "8IUnknown",0
_cstring_9cdirect3d:		db "9CDirect3D",0



;All constant floats and doubles:
SECTION .rdata
_float_0_25000000:		dd 0x3e800000	; 0.25

