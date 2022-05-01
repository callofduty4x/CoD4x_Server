;Imports of CDirect3DSurface:
	extern glGetIntegerv
	extern glBindTexture
	extern _ZN7COpenGL7sOpenGLE
	extern _ZN7COpenGL14UpdateTexImageE10_D3DFORMATjjjmlmmmPKv
	extern _ZN14MacOpenGLUtils12IsCompressedE10_D3DFORMAT
	extern _ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT
	extern _Znwm
	extern _ZN14COpenGLTextureC1Emjjj
	extern glTexParameteri
	extern _ZN14MacOpenGLUtils13IsDepthFormatE10_D3DFORMAT
	extern _ZN14MacOpenGLUtils20GetOpenGLTextureTypeERbRmS1_S1_10_D3DFORMAT
	extern _ZN7COpenGL12LoadTexImageE10_D3DFORMATjjjmlmmmPKv
	extern _ZN10MacDisplay11GetCardTypeEv
	extern _ZdlPv
	extern _Unwind_Resume
	extern _ZTI18IDirect3DResource9

;Exports of CDirect3DSurface:
	global _ZN16CDirect3DSurface10UnlockRectEv
	global _ZN16CDirect3DSurface11GetPriorityEv
	global _ZN16CDirect3DSurface11SetPriorityEm
	global _ZN16CDirect3DSurface12GetContainerERK5_GUIDPPv
	global _ZN16CDirect3DSurface14GetPrivateDataERK5_GUIDPvPm
	global _ZN16CDirect3DSurface14QueryInterfaceERK5_GUIDPPv
	global _ZN16CDirect3DSurface14SetPrivateDataERK5_GUIDPKvmm
	global _ZN16CDirect3DSurface15FreePrivateDataERK5_GUID
	global _ZN16CDirect3DSurface25UpdateOpenGLSurfaceObjectEb
	global _ZN16CDirect3DSurface5GetDCEPP5HDC__
	global _ZN16CDirect3DSurface6AddRefEv
	global _ZN16CDirect3DSurface7GetDescEP16_D3DSURFACE_DESC
	global _ZN16CDirect3DSurface7GetTypeEv
	global _ZN16CDirect3DSurface7PreLoadEv
	global _ZN16CDirect3DSurface7ReleaseEv
	global _ZN16CDirect3DSurface8LockRectEP15_D3DLOCKED_RECTPK7tagRECTm
	global _ZN16CDirect3DSurface9GetDeviceEPP16IDirect3DDevice9
	global _ZN16CDirect3DSurface9ReleaseDCEP5HDC__
	global _ZN16CDirect3DSurfaceC1E11SurfaceTypemjjj10_D3DFORMAT8_D3DPOOLPvP14COpenGLTexture
	global _ZN16CDirect3DSurfaceD0Ev
	global _ZN16CDirect3DSurfaceD1Ev
	global _ZNK16CDirect3DSurface7IsDirtyEv
	global _ZTI16CDirect3DSurface
	global _ZTI17IDirect3DSurface9
	global _ZTV16CDirect3DSurface


SECTION .text


;CDirect3DSurface::UnlockRect()
_ZN16CDirect3DSurface10UnlockRectEv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x44
	mov ebx, [ebp+0x8]
	cmp byte [ebx+0x24], 0x0
	jnz _ZN16CDirect3DSurface10UnlockRectEv_10
	mov eax, [ebx+0x28]
	test eax, eax
	jz _ZN16CDirect3DSurface10UnlockRectEv_20
	mov eax, [eax+0xc]
	mov ecx, [eax]
	test ecx, ecx
	jnz _ZN16CDirect3DSurface10UnlockRectEv_20
_ZN16CDirect3DSurface10UnlockRectEv_10:
	cmp dword [ebx+0x30], 0x2
	jz _ZN16CDirect3DSurface10UnlockRectEv_20
	cmp dword [ebx+0x8], 0x1
	jz _ZN16CDirect3DSurface10UnlockRectEv_30
	lea eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov dword [esp], 0x8069
	call glGetIntegerv
	mov eax, [ebx+0x28]
	mov eax, [eax+0xc]
	mov eax, [eax]
	mov [esp+0x4], eax
	mov dword [esp], 0xde1
	call glBindTexture
	mov eax, [ebx+0x20]
	mov [esp+0x28], eax
	mov eax, [ebx+0x3c]
	mov [esp+0x24], eax
	mov eax, [ebx+0x34]
	mov [esp+0x20], eax
	mov eax, [ebx+0x38]
	mov [esp+0x1c], eax
	mov eax, [ebx+0x10]
	mov [esp+0x18], eax
	mov dword [esp+0x14], 0xde1
	mov dword [esp+0x10], 0x1
	mov eax, [ebx+0x18]
	mov [esp+0xc], eax
	mov eax, [ebx+0x14]
	mov [esp+0x8], eax
	mov eax, [ebx+0x1c]
	mov [esp+0x4], eax
	mov eax, _ZN7COpenGL7sOpenGLE
	mov [esp], eax
	call _ZN7COpenGL14UpdateTexImageE10_D3DFORMATjjjmlmmmPKv
	mov eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov dword [esp], 0xde1
	call glBindTexture
	mov byte [ebx+0x24], 0x0
_ZN16CDirect3DSurface10UnlockRectEv_20:
	xor eax, eax
	add esp, 0x44
	pop ebx
	pop ebp
	ret
_ZN16CDirect3DSurface10UnlockRectEv_30:
	lea eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov dword [esp], 0x8514
	call glGetIntegerv
	mov eax, [ebx+0x28]
	mov eax, [eax+0xc]
	mov eax, [eax]
	mov [esp+0x4], eax
	mov dword [esp], 0x8513
	call glBindTexture
	mov eax, [ebx+0x20]
	mov [esp+0x28], eax
	mov eax, [ebx+0x3c]
	mov [esp+0x24], eax
	mov eax, [ebx+0x34]
	mov [esp+0x20], eax
	mov eax, [ebx+0x38]
	mov [esp+0x1c], eax
	mov eax, [ebx+0x10]
	mov [esp+0x18], eax
	mov eax, [ebx+0xc]
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x1
	mov eax, [ebx+0x18]
	mov [esp+0xc], eax
	mov eax, [ebx+0x14]
	mov [esp+0x8], eax
	mov eax, [ebx+0x1c]
	mov [esp+0x4], eax
	mov eax, _ZN7COpenGL7sOpenGLE
	mov [esp], eax
	call _ZN7COpenGL14UpdateTexImageE10_D3DFORMATjjjmlmmmPKv
	mov eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov dword [esp], 0x8513
	call glBindTexture
	mov byte [ebx+0x24], 0x0
	jmp _ZN16CDirect3DSurface10UnlockRectEv_20


;CDirect3DSurface::GetPriority()
_ZN16CDirect3DSurface11GetPriorityEv:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	ret
	nop


;CDirect3DSurface::SetPriority(unsigned long)
_ZN16CDirect3DSurface11SetPriorityEm:
	push ebp
	mov ebp, esp
	mov eax, 0x8876086c
	pop ebp
	ret


;CDirect3DSurface::GetContainer(_GUID const&, void**)
_ZN16CDirect3DSurface12GetContainerERK5_GUIDPPv:
	push ebp
	mov ebp, esp
	mov eax, 0x8876086c
	pop ebp
	ret


;CDirect3DSurface::GetPrivateData(_GUID const&, void*, unsigned long*)
_ZN16CDirect3DSurface14GetPrivateDataERK5_GUIDPvPm:
	push ebp
	mov ebp, esp
	mov eax, 0x8876086c
	pop ebp
	ret


;CDirect3DSurface::QueryInterface(_GUID const&, void**)
_ZN16CDirect3DSurface14QueryInterfaceERK5_GUIDPPv:
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


;CDirect3DSurface::SetPrivateData(_GUID const&, void const*, unsigned long, unsigned long)
_ZN16CDirect3DSurface14SetPrivateDataERK5_GUIDPKvmm:
	push ebp
	mov ebp, esp
	mov eax, 0x8876086c
	pop ebp
	ret


;CDirect3DSurface::FreePrivateData(_GUID const&)
_ZN16CDirect3DSurface15FreePrivateDataERK5_GUID:
	push ebp
	mov ebp, esp
	mov eax, 0x8876086c
	pop ebp
	ret


;CDirect3DSurface::UpdateOpenGLSurfaceObject(bool)
_ZN16CDirect3DSurface25UpdateOpenGLSurfaceObjectEb:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	mov edx, [ebp+0x8]
	cmp byte [ebp+0xc], 0x0
	jnz _ZN16CDirect3DSurface25UpdateOpenGLSurfaceObjectEb_10
	cmp dword [edx+0x8], 0x1
	jz _ZN16CDirect3DSurface25UpdateOpenGLSurfaceObjectEb_20
	mov ecx, 0xde1
_ZN16CDirect3DSurface25UpdateOpenGLSurfaceObjectEb_30:
	mov eax, [edx+0x20]
	mov [esp+0x28], eax
	mov eax, [edx+0x3c]
	mov [esp+0x24], eax
	mov eax, [edx+0x34]
	mov [esp+0x20], eax
	mov eax, [edx+0x38]
	mov [esp+0x1c], eax
	mov eax, [edx+0x10]
	mov [esp+0x18], eax
	mov [esp+0x14], ecx
	mov dword [esp+0x10], 0x1
	mov eax, [edx+0x18]
	mov [esp+0xc], eax
	mov eax, [edx+0x14]
	mov [esp+0x8], eax
	mov eax, [edx+0x1c]
	mov [esp+0x4], eax
	mov eax, _ZN7COpenGL7sOpenGLE
	mov [esp], eax
	call _ZN7COpenGL14UpdateTexImageE10_D3DFORMATjjjmlmmmPKv
_ZN16CDirect3DSurface25UpdateOpenGLSurfaceObjectEb_10:
	leave
	ret
_ZN16CDirect3DSurface25UpdateOpenGLSurfaceObjectEb_20:
	mov ecx, [edx+0xc]
	jmp _ZN16CDirect3DSurface25UpdateOpenGLSurfaceObjectEb_30


;CDirect3DSurface::GetDC(HDC__**)
_ZN16CDirect3DSurface5GetDCEPP5HDC__:
	push ebp
	mov ebp, esp
	mov eax, 0x8876086c
	pop ebp
	ret


;CDirect3DSurface::AddRef()
_ZN16CDirect3DSurface6AddRefEv:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, [edx+0x4]
	add eax, 0x1
	mov [edx+0x4], eax
	pop ebp
	ret
	nop
	add [eax], al


;CDirect3DSurface::GetDesc(_D3DSURFACE_DESC*)
_ZN16CDirect3DSurface7GetDescEP16_D3DSURFACE_DESC:
	push ebp
	mov ebp, esp
	push edi
	push ebx
	mov edx, [ebp+0x8]
	mov ebx, [ebp+0xc]
	cld
	mov ecx, 0x8
	xor eax, eax
	mov edi, ebx
	rep stosd
	mov eax, [edx+0x1c]
	mov [ebx], eax
	mov eax, [edx+0x14]
	mov [ebx+0x18], eax
	mov eax, [edx+0x18]
	mov [ebx+0x1c], eax
	xor eax, eax
	pop ebx
	pop edi
	pop ebp
	ret


;CDirect3DSurface::GetType()
_ZN16CDirect3DSurface7GetTypeEv:
	push ebp
	mov ebp, esp
	mov eax, 0x1
	pop ebp
	ret


;CDirect3DSurface::PreLoad()
_ZN16CDirect3DSurface7PreLoadEv:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;CDirect3DSurface::Release()
_ZN16CDirect3DSurface7ReleaseEv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov edx, [ebp+0x8]
	mov ebx, [edx+0x4]
	sub ebx, 0x1
	mov [edx+0x4], ebx
	test ebx, ebx
	jnz _ZN16CDirect3DSurface7ReleaseEv_10
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x48]
_ZN16CDirect3DSurface7ReleaseEv_10:
	mov eax, ebx
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;CDirect3DSurface::LockRect(_D3DLOCKED_RECT*, tagRECT const*, unsigned long)
_ZN16CDirect3DSurface8LockRectEP15_D3DLOCKED_RECTPK7tagRECTm:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov eax, [edi+0x20]
	mov edx, [ebp+0xc]
	mov [edx+0x4], eax
	mov eax, [edi+0x1c]
	mov [esp], eax
	call _ZN14MacOpenGLUtils12IsCompressedE10_D3DFORMAT
	test al, al
	jz _ZN16CDirect3DSurface8LockRectEP15_D3DLOCKED_RECTPK7tagRECTm_10
	mov eax, [edi+0x14]
	test eax, eax
	jnz _ZN16CDirect3DSurface8LockRectEP15_D3DLOCKED_RECTPK7tagRECTm_20
	mov edx, 0x4
_ZN16CDirect3DSurface8LockRectEP15_D3DLOCKED_RECTPK7tagRECTm_50:
	xor eax, eax
	cmp dword [edi+0x1c], 0x31545844
	setnz al
	lea eax, [eax*8+0x8]
	shr edx, 0x2
	imul eax, edx
	mov edx, [ebp+0xc]
	mov [edx], eax
_ZN16CDirect3DSurface8LockRectEP15_D3DLOCKED_RECTPK7tagRECTm_60:
	mov eax, [ebp+0x10]
	test eax, eax
	jz _ZN16CDirect3DSurface8LockRectEP15_D3DLOCKED_RECTPK7tagRECTm_30
	mov eax, [ebp+0xc]
	mov esi, [eax+0x4]
	mov edx, [ebp+0x10]
	mov ebx, [edx]
	mov eax, [edi+0x1c]
	mov [esp], eax
	call _ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT
	imul ebx, eax
	shr ebx, 0x3
	mov edx, [ebp+0x10]
	mov eax, [edx+0x4]
	mov edx, [ebp+0xc]
	imul eax, [edx]
	add ebx, eax
	add esi, ebx
	mov [edx+0x4], esi
_ZN16CDirect3DSurface8LockRectEP15_D3DLOCKED_RECTPK7tagRECTm_30:
	test word [ebp+0x14], 0x8010
	jnz _ZN16CDirect3DSurface8LockRectEP15_D3DLOCKED_RECTPK7tagRECTm_40
	mov byte [edi+0x24], 0x1
_ZN16CDirect3DSurface8LockRectEP15_D3DLOCKED_RECTPK7tagRECTm_40:
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN16CDirect3DSurface8LockRectEP15_D3DLOCKED_RECTPK7tagRECTm_20:
	lea edx, [eax+0x3]
	jmp _ZN16CDirect3DSurface8LockRectEP15_D3DLOCKED_RECTPK7tagRECTm_50
_ZN16CDirect3DSurface8LockRectEP15_D3DLOCKED_RECTPK7tagRECTm_10:
	mov ebx, [edi+0x14]
	mov eax, [edi+0x1c]
	mov [esp], eax
	call _ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT
	imul ebx, eax
	shr ebx, 0x3
	mov eax, [ebp+0xc]
	mov [eax], ebx
	jmp _ZN16CDirect3DSurface8LockRectEP15_D3DLOCKED_RECTPK7tagRECTm_60


;CDirect3DSurface::GetDevice(IDirect3DDevice9**)
_ZN16CDirect3DSurface9GetDeviceEPP16IDirect3DDevice9:
	push ebp
	mov ebp, esp
	mov eax, 0x8876086c
	pop ebp
	ret


;CDirect3DSurface::ReleaseDC(HDC__*)
_ZN16CDirect3DSurface9ReleaseDCEP5HDC__:
	push ebp
	mov ebp, esp
	mov eax, 0x8876086c
	pop ebp
	ret


;CDirect3DSurface::CDirect3DSurface(SurfaceType, unsigned long, unsigned int, unsigned int, unsigned int, _D3DFORMAT, _D3DPOOL, void*, COpenGLTexture*)
_ZN16CDirect3DSurfaceC1E11SurfaceTypemjjj10_D3DFORMAT8_D3DPOOLPvP14COpenGLTexture:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov ebx, [ebp+0x8]
	mov edx, [ebp+0x2c]
	mov dword [ebx], _ZTV16CDirect3DSurface+0x8
	mov dword [ebx+0x4], 0x0
	mov eax, [ebp+0xc]
	mov [ebx+0x8], eax
	mov eax, [ebp+0x10]
	mov [ebx+0xc], eax
	mov eax, [ebp+0x14]
	mov [ebx+0x10], eax
	mov eax, [ebp+0x18]
	mov [ebx+0x14], eax
	mov eax, [ebp+0x1c]
	mov [ebx+0x18], eax
	mov eax, [ebp+0x20]
	mov [ebx+0x1c], eax
	mov eax, [ebp+0x28]
	mov [ebx+0x20], eax
	mov byte [ebx+0x24], 0x0
	mov dword [ebx+0x28], 0x0
	test edx, edx
	setz byte [ebx+0x2c]
	mov eax, [ebp+0x24]
	mov [ebx+0x30], eax
	mov byte [ebp-0x19], 0x1
	cmp byte [ebx+0x2c], 0x0
	jz _ZN16CDirect3DSurfaceC1E11SurfaceTypemjjj10_D3DFORMAT8_D3DPOOLPvP14COpenGLTexture_10
	cmp dword [ebx+0x8], 0x1
	sbb edi, edi
	and edi, 0xffff88ce
	add edi, 0x8513
	mov dword [esp], 0x38
	call _Znwm
	mov esi, eax
	mov dword [esp+0x10], 0x1
	mov eax, [ebp+0x1c]
	mov [esp+0xc], eax
	mov eax, [ebp+0x18]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov [esp], esi
	call _ZN14COpenGLTextureC1Emjjj
	mov [ebx+0x28], esi
	mov dword [esi+0x10], 0x812f
	mov eax, [ebx+0x28]
	mov dword [eax+0x14], 0x812f
	mov eax, [ebx+0x28]
	mov dword [eax+0x1c], 0x2601
	mov eax, [ebx+0x28]
	mov dword [eax+0x20], 0x2601
	mov eax, [ebx+0x28]
	mov eax, [eax+0xc]
	mov eax, [eax]
	mov [esp+0x4], eax
	mov [esp], edi
	call glBindTexture
	mov eax, [ebx+0x28]
	mov eax, [eax+0x10]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2802
	mov [esp], edi
	call glTexParameteri
	mov eax, [ebx+0x28]
	mov eax, [eax+0x14]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2803
	mov [esp], edi
	call glTexParameteri
	mov eax, [ebx+0x28]
	mov eax, [eax+0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2801
	mov [esp], edi
	call glTexParameteri
	mov eax, [ebx+0x28]
	mov eax, [eax+0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2800
	mov [esp], edi
	call glTexParameteri
	mov eax, [ebp+0x20]
	mov [esp], eax
	call _ZN14MacOpenGLUtils13IsDepthFormatE10_D3DFORMAT
	test al, al
	jnz _ZN16CDirect3DSurfaceC1E11SurfaceTypemjjj10_D3DFORMAT8_D3DPOOLPvP14COpenGLTexture_20
_ZN16CDirect3DSurfaceC1E11SurfaceTypemjjj10_D3DFORMAT8_D3DPOOLPvP14COpenGLTexture_50:
	mov eax, [ebx+0x1c]
	mov [esp+0x10], eax
	lea eax, [ebx+0x3c]
	mov [esp+0xc], eax
	lea eax, [ebx+0x38]
	mov [esp+0x8], eax
	lea eax, [ebx+0x34]
	mov [esp+0x4], eax
	lea eax, [ebp-0x19]
	mov [esp], eax
	call _ZN14MacOpenGLUtils20GetOpenGLTextureTypeERbRmS1_S1_10_D3DFORMAT
	cmp byte [ebp-0x19], 0x0
	jz _ZN16CDirect3DSurfaceC1E11SurfaceTypemjjj10_D3DFORMAT8_D3DPOOLPvP14COpenGLTexture_30
	cmp dword [ebx+0x8], 0x1
	jz _ZN16CDirect3DSurfaceC1E11SurfaceTypemjjj10_D3DFORMAT8_D3DPOOLPvP14COpenGLTexture_40
	mov edx, 0xde1
_ZN16CDirect3DSurfaceC1E11SurfaceTypemjjj10_D3DFORMAT8_D3DPOOLPvP14COpenGLTexture_60:
	mov eax, [ebx+0x20]
	mov [esp+0x28], eax
	mov eax, [ebx+0x3c]
	mov [esp+0x24], eax
	mov eax, [ebx+0x34]
	mov [esp+0x20], eax
	mov eax, [ebx+0x38]
	mov [esp+0x1c], eax
	mov eax, [ebx+0x10]
	mov [esp+0x18], eax
	mov [esp+0x14], edx
	mov dword [esp+0x10], 0x1
	mov eax, [ebx+0x18]
	mov [esp+0xc], eax
	mov eax, [ebx+0x14]
	mov [esp+0x8], eax
	mov eax, [ebx+0x1c]
	mov [esp+0x4], eax
	mov eax, _ZN7COpenGL7sOpenGLE
	mov [esp], eax
	call _ZN7COpenGL12LoadTexImageE10_D3DFORMATjjjmlmmmPKv
_ZN16CDirect3DSurfaceC1E11SurfaceTypemjjj10_D3DFORMAT8_D3DPOOLPvP14COpenGLTexture_30:
	add dword [ebx+0x4], 0x1
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN16CDirect3DSurfaceC1E11SurfaceTypemjjj10_D3DFORMAT8_D3DPOOLPvP14COpenGLTexture_10:
	mov [ebx+0x28], edx
	jmp _ZN16CDirect3DSurfaceC1E11SurfaceTypemjjj10_D3DFORMAT8_D3DPOOLPvP14COpenGLTexture_50
_ZN16CDirect3DSurfaceC1E11SurfaceTypemjjj10_D3DFORMAT8_D3DPOOLPvP14COpenGLTexture_40:
	mov edx, [ebx+0xc]
	jmp _ZN16CDirect3DSurfaceC1E11SurfaceTypemjjj10_D3DFORMAT8_D3DPOOLPvP14COpenGLTexture_60
_ZN16CDirect3DSurfaceC1E11SurfaceTypemjjj10_D3DFORMAT8_D3DPOOLPvP14COpenGLTexture_20:
	mov eax, [ebx+0x28]
	mov dword [eax+0x1c], 0x2600
	mov eax, [ebx+0x28]
	mov dword [eax+0x20], 0x2600
	mov eax, [ebx+0x28]
	mov eax, [eax+0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2801
	mov [esp], edi
	call glTexParameteri
	mov eax, [ebx+0x28]
	mov eax, [eax+0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2800
	mov [esp], edi
	call glTexParameteri
	mov dword [esp+0x8], 0x1909
	mov dword [esp+0x4], 0x884b
	mov [esp], edi
	call glTexParameteri
	call _ZN10MacDisplay11GetCardTypeEv
	cmp eax, 0x2
	jnz _ZN16CDirect3DSurfaceC1E11SurfaceTypemjjj10_D3DFORMAT8_D3DPOOLPvP14COpenGLTexture_50
	mov dword [esp+0x8], 0x884e
	mov dword [esp+0x4], 0x884c
	mov [esp], edi
	call glTexParameteri
	mov dword [esp+0x8], 0x203
	mov dword [esp+0x4], 0x884d
	mov [esp], edi
	call glTexParameteri
	jmp _ZN16CDirect3DSurfaceC1E11SurfaceTypemjjj10_D3DFORMAT8_D3DPOOLPvP14COpenGLTexture_50
	mov ebx, eax
	mov [esp], esi
	call _ZdlPv
	mov [esp], ebx
	call _Unwind_Resume


;CDirect3DSurface::~CDirect3DSurface()
_ZN16CDirect3DSurfaceD0Ev:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [ebx], _ZTV16CDirect3DSurface+0x8
	cmp byte [ebx+0x2c], 0x0
	jz _ZN16CDirect3DSurfaceD0Ev_10
	mov edx, [ebx+0x28]
	test edx, edx
	jz _ZN16CDirect3DSurfaceD0Ev_10
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x4]
_ZN16CDirect3DSurfaceD0Ev_10:
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _ZdlPv


;CDirect3DSurface::~CDirect3DSurface()
_ZN16CDirect3DSurfaceD1Ev:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov dword [eax], _ZTV16CDirect3DSurface+0x8
	cmp byte [eax+0x2c], 0x0
	jz _ZN16CDirect3DSurfaceD1Ev_10
	mov edx, [eax+0x28]
	test edx, edx
	jz _ZN16CDirect3DSurfaceD1Ev_10
	mov eax, [edx]
	mov [ebp+0x8], edx
	mov ecx, [eax+0x4]
	pop ebp
	jmp ecx
_ZN16CDirect3DSurfaceD1Ev_10:
	pop ebp
	ret


;CDirect3DSurface::IsDirty() const
_ZNK16CDirect3DSurface7IsDirtyEv:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	cmp byte [eax+0x24], 0x0
	jnz _ZNK16CDirect3DSurface7IsDirtyEv_10
	mov eax, [eax+0x28]
	test eax, eax
	jz _ZNK16CDirect3DSurface7IsDirtyEv_20
	mov eax, [eax+0xc]
	mov edx, [eax]
	test edx, edx
	jnz _ZNK16CDirect3DSurface7IsDirtyEv_20
_ZNK16CDirect3DSurface7IsDirtyEv_10:
	mov eax, 0x1
	pop ebp
	ret
_ZNK16CDirect3DSurface7IsDirtyEv_20:
	xor eax, eax
	pop ebp
	ret
	nop


;Initialized global or static variables of CDirect3DSurface:
SECTION .data


;Initialized constant data of CDirect3DSurface:
SECTION .rdata
;VTypeInfoTable for CDirect3DSurface:
_ZTI16CDirect3DSurface: dd 0x8, _cstring_16cdirect3dsurfa, _ZTI17IDirect3DSurface9, 0x0, 0x0, 0x0, 0x0, 0x0
;VTypeInfoTable for IDirect3DSurface9:
_ZTI17IDirect3DSurface9: dd 0x8, _cstring_17idirect3dsurfa, _ZTI18IDirect3DResource9, 0x0, 0x0, 0x0, 0x0, 0x0
;VTable for CDirect3DSurface:
_ZTV16CDirect3DSurface: dd 0x0, _ZTI16CDirect3DSurface, _ZN16CDirect3DSurface14QueryInterfaceERK5_GUIDPPv, _ZN16CDirect3DSurface6AddRefEv, _ZN16CDirect3DSurface7ReleaseEv, _ZN16CDirect3DSurface9GetDeviceEPP16IDirect3DDevice9, _ZN16CDirect3DSurface14SetPrivateDataERK5_GUIDPKvmm, _ZN16CDirect3DSurface14GetPrivateDataERK5_GUIDPvPm, _ZN16CDirect3DSurface15FreePrivateDataERK5_GUID, _ZN16CDirect3DSurface11SetPriorityEm, _ZN16CDirect3DSurface11GetPriorityEv, _ZN16CDirect3DSurface7PreLoadEv, _ZN16CDirect3DSurface7GetTypeEv, _ZN16CDirect3DSurface12GetContainerERK5_GUIDPPv, _ZN16CDirect3DSurface7GetDescEP16_D3DSURFACE_DESC, _ZN16CDirect3DSurface8LockRectEP15_D3DLOCKED_RECTPK7tagRECTm, _ZN16CDirect3DSurface10UnlockRectEv, _ZN16CDirect3DSurface5GetDCEPP5HDC__, _ZN16CDirect3DSurface9ReleaseDCEP5HDC__, _ZN16CDirect3DSurfaceD1Ev, _ZN16CDirect3DSurfaceD0Ev, 0x0, 0x0, 0x0


;Zero initialized global or static variables of CDirect3DSurface:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_16cdirect3dsurfa:		db "16CDirect3DSurface",0
_cstring_17idirect3dsurfa:		db "17IDirect3DSurface9",0



;All constant floats and doubles:
SECTION .rdata

