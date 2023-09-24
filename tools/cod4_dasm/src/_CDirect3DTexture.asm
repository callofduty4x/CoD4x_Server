;Imports of CDirect3DTexture:
	extern _ZNK16CDirect3DSurface7IsDirtyEv
	extern _ZN16CDirect3DSurface25UpdateOpenGLSurfaceObjectEb
	extern _ZN14COpenGLTextureC2Emjjj
	extern _ZN13CMemoryBufferC1Ejj
	extern _ZN14MacOpenGLUtils19GetNumTextureLevelsEjjj
	extern glGetIntegerv
	extern glBindTexture
	extern _ZN13CMemoryBuffer6ResizeEjj
	extern memset
	extern _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT
	extern _Znwm
	extern _ZN16CDirect3DSurfaceC1E11SurfaceTypemjjj10_D3DFORMAT8_D3DPOOLPvP14COpenGLTexture
	extern glTexParameteri
	extern _ZN14MacOpenGLUtils13IsDepthFormatE10_D3DFORMAT
	extern _ZN10MacDisplay11GetCardTypeEv
	extern _ZdlPv
	extern _ZN13CMemoryBufferD1Ev
	extern _ZN14COpenGLTextureD2Ev
	extern _Unwind_Resume
	extern _ZN14COpenGLTexture16ReleaseResourcesEv
	extern memmove
	extern _ZSt17__throw_bad_allocv
	extern _ZSt20__throw_length_errorPKc
	extern _ZTI14COpenGLTexture
	extern _ZTI21IDirect3DBaseTexture9
	extern _ZN14COpenGLTexture20UpdateOpenGLSurfacesEv

;Exports of CDirect3DTexture:
	global _ZN16CDirect3DTexture10UnlockRectEj
	global _ZN16CDirect3DTexture11GetPriorityEv
	global _ZN16CDirect3DTexture11SetPriorityEm
	global _ZN16CDirect3DTexture12AddDirtyRectEPK7tagRECT
	global _ZN16CDirect3DTexture12GetLevelDescEjP16_D3DSURFACE_DESC
	global _ZN16CDirect3DTexture13GetLevelCountEv
	global _ZN16CDirect3DTexture14GetPrivateDataERK5_GUIDPvPm
	global _ZN16CDirect3DTexture14QueryInterfaceERK5_GUIDPPv
	global _ZN16CDirect3DTexture14SetPrivateDataERK5_GUIDPKvmm
	global _ZN16CDirect3DTexture15FreePrivateDataERK5_GUID
	global _ZN16CDirect3DTexture15GetSurfaceLevelEjPP17IDirect3DSurface9
	global _ZN16CDirect3DTexture20GenerateMipSubLevelsEv
	global _ZN16CDirect3DTexture20GetAutoGenFilterTypeEv
	global _ZN16CDirect3DTexture20SetAutoGenFilterTypeE21_D3DTEXTUREFILTERTYPE
	global _ZN16CDirect3DTexture20UpdateOpenGLSurfacesEb
	global _ZN16CDirect3DTexture6AddRefEv
	global _ZN16CDirect3DTexture6GetLODEv
	global _ZN16CDirect3DTexture6SetLODEm
	global _ZN16CDirect3DTexture7GetTypeEv
	global _ZN16CDirect3DTexture7PreLoadEv
	global _ZN16CDirect3DTexture7ReleaseEv
	global _ZN16CDirect3DTexture8LockRectEjP15_D3DLOCKED_RECTPK7tagRECTm
	global _ZN16CDirect3DTexture9GetDeviceEPP16IDirect3DDevice9
	global _ZN16CDirect3DTextureC1EP15CDirect3DDevicejjjm10_D3DFORMAT8_D3DPOOL
	global _ZN16CDirect3DTextureD0Ev
	global _ZN16CDirect3DTextureD1Ev
	global _ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_
	global _ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE7reserveEm
	global _ZTI16CDirect3DTexture
	global _ZTI17IDirect3DTexture9
	global _ZTV16CDirect3DTexture
	global _ZThn4_N16CDirect3DTextureD0Ev
	global _ZThn4_N16CDirect3DTextureD1Ev


SECTION .text


;CDirect3DTexture::UnlockRect(unsigned int)
_ZN16CDirect3DTexture10UnlockRectEj:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov edx, [eax+0x68]
	mov eax, [eax+0x6c]
	sub eax, edx
	sar eax, 0x2
	cmp eax, ecx
	ja _ZN16CDirect3DTexture10UnlockRectEj_10
	mov eax, 0x8876086c
	pop ebp
	ret
_ZN16CDirect3DTexture10UnlockRectEj_10:
	mov eax, [edx+ecx*4]
	mov edx, [eax]
	mov [ebp+0x8], eax
	mov ecx, [edx+0x38]
	pop ebp
	jmp ecx
	nop


;CDirect3DTexture::GetPriority()
_ZN16CDirect3DTexture11GetPriorityEv:
	push ebp
	mov ebp, esp
	mov eax, 0x8876086c
	pop ebp
	ret


;CDirect3DTexture::SetPriority(unsigned long)
_ZN16CDirect3DTexture11SetPriorityEm:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	ret
	nop


;CDirect3DTexture::AddDirtyRect(tagRECT const*)
_ZN16CDirect3DTexture12AddDirtyRectEPK7tagRECT:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [eax+0x68]
	lea ecx, [eax+0x6c]
	cmp edx, [eax+0x6c]
	jz _ZN16CDirect3DTexture12AddDirtyRectEPK7tagRECT_10
_ZN16CDirect3DTexture12AddDirtyRectEPK7tagRECT_20:
	mov eax, [edx]
	mov byte [eax+0x24], 0x1
	add edx, 0x4
	cmp edx, [ecx]
	jnz _ZN16CDirect3DTexture12AddDirtyRectEPK7tagRECT_20
_ZN16CDirect3DTexture12AddDirtyRectEPK7tagRECT_10:
	xor eax, eax
	pop ebp
	ret


;CDirect3DTexture::GetLevelDesc(unsigned int, _D3DSURFACE_DESC*)
_ZN16CDirect3DTexture12GetLevelDescEjP16_D3DSURFACE_DESC:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov edx, [ebp+0x8]
	mov ecx, [edx]
	lea eax, [ebp-0xc]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], edx
	call dword [ecx+0x48]
	test eax, eax
	js _ZN16CDirect3DTexture12GetLevelDescEjP16_D3DSURFACE_DESC_10
	mov eax, [ebp-0xc]
	mov edx, [eax]
	mov ecx, [ebp+0x10]
	mov [esp+0x4], ecx
	mov [esp], eax
	call dword [edx+0x30]
	mov ebx, eax
	mov eax, [ebp-0xc]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov eax, ebx
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_ZN16CDirect3DTexture12GetLevelDescEjP16_D3DSURFACE_DESC_10:
	mov ebx, 0x8876086c
	mov eax, ebx
	add esp, 0x24
	pop ebx
	pop ebp
	ret


;CDirect3DTexture::GetLevelCount()
_ZN16CDirect3DTexture13GetLevelCountEv:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x4c]
	pop ebp
	ret
	nop


;CDirect3DTexture::GetPrivateData(_GUID const&, void*, unsigned long*)
_ZN16CDirect3DTexture14GetPrivateDataERK5_GUIDPvPm:
	push ebp
	mov ebp, esp
	mov eax, 0x8876086c
	pop ebp
	ret


;CDirect3DTexture::QueryInterface(_GUID const&, void**)
_ZN16CDirect3DTexture14QueryInterfaceERK5_GUIDPPv:
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


;CDirect3DTexture::SetPrivateData(_GUID const&, void const*, unsigned long, unsigned long)
_ZN16CDirect3DTexture14SetPrivateDataERK5_GUIDPKvmm:
	push ebp
	mov ebp, esp
	mov eax, 0x8876086c
	pop ebp
	ret


;CDirect3DTexture::FreePrivateData(_GUID const&)
_ZN16CDirect3DTexture15FreePrivateDataERK5_GUID:
	push ebp
	mov ebp, esp
	mov eax, 0x8876086c
	pop ebp
	ret


;CDirect3DTexture::GetSurfaceLevel(unsigned int, IDirect3DSurface9**)
_ZN16CDirect3DTexture15GetSurfaceLevelEjPP17IDirect3DSurface9:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov edx, [eax+0x68]
	mov eax, [eax+0x6c]
	sub eax, edx
	sar eax, 0x2
	cmp eax, ecx
	ja _ZN16CDirect3DTexture15GetSurfaceLevelEjPP17IDirect3DSurface9_10
	mov eax, 0x8876086c
	leave
	ret
_ZN16CDirect3DTexture15GetSurfaceLevelEjPP17IDirect3DSurface9_10:
	mov eax, [edx+ecx*4]
	mov edx, [ebp+0x10]
	mov [edx], eax
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x4]
	xor eax, eax
	leave
	ret
	add [eax], al


;CDirect3DTexture::GenerateMipSubLevels()
_ZN16CDirect3DTexture20GenerateMipSubLevelsEv:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;CDirect3DTexture::GetAutoGenFilterType()
_ZN16CDirect3DTexture20GetAutoGenFilterTypeEv:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	ret
	nop


;CDirect3DTexture::SetAutoGenFilterType(_D3DTEXTUREFILTERTYPE)
_ZN16CDirect3DTexture20SetAutoGenFilterTypeE21_D3DTEXTUREFILTERTYPE:
	push ebp
	mov ebp, esp
	mov eax, 0x8876086c
	pop ebp
	ret


;CDirect3DTexture::UpdateOpenGLSurfaces(bool)
_ZN16CDirect3DTexture20UpdateOpenGLSurfacesEb:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [ebp+0x8]
	movzx ecx, byte [ebp+0xc]
	mov edx, [eax+0x68]
	lea esi, [eax+0x6c]
	cmp edx, [eax+0x6c]
	jz _ZN16CDirect3DTexture20UpdateOpenGLSurfacesEb_10
	test cl, cl
	jnz _ZN16CDirect3DTexture20UpdateOpenGLSurfacesEb_20
	mov ebx, edx
	jmp _ZN16CDirect3DTexture20UpdateOpenGLSurfacesEb_30
_ZN16CDirect3DTexture20UpdateOpenGLSurfacesEb_40:
	add ebx, 0x4
	cmp ebx, [esi]
	jz _ZN16CDirect3DTexture20UpdateOpenGLSurfacesEb_10
_ZN16CDirect3DTexture20UpdateOpenGLSurfacesEb_50:
	mov edx, ebx
_ZN16CDirect3DTexture20UpdateOpenGLSurfacesEb_30:
	mov eax, [edx]
	mov [esp], eax
	call _ZNK16CDirect3DSurface7IsDirtyEv
	test al, al
	jz _ZN16CDirect3DTexture20UpdateOpenGLSurfacesEb_40
	mov dword [esp+0x4], 0x0
	mov eax, [ebx]
	mov [esp], eax
	call _ZN16CDirect3DSurface25UpdateOpenGLSurfaceObjectEb
	mov eax, [ebx]
	mov byte [eax+0x24], 0x0
	add ebx, 0x4
	cmp ebx, [esi]
	jnz _ZN16CDirect3DTexture20UpdateOpenGLSurfacesEb_50
_ZN16CDirect3DTexture20UpdateOpenGLSurfacesEb_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_ZN16CDirect3DTexture20UpdateOpenGLSurfacesEb_20:
	mov ebx, edx
_ZN16CDirect3DTexture20UpdateOpenGLSurfacesEb_60:
	mov eax, [edx]
	mov [esp], eax
	call _ZNK16CDirect3DSurface7IsDirtyEv
	mov dword [esp+0x4], 0x1
	mov eax, [ebx]
	mov [esp], eax
	call _ZN16CDirect3DSurface25UpdateOpenGLSurfaceObjectEb
	mov eax, [ebx]
	mov byte [eax+0x24], 0x0
	add ebx, 0x4
	cmp ebx, [esi]
	jz _ZN16CDirect3DTexture20UpdateOpenGLSurfacesEb_10
	mov edx, ebx
	jmp _ZN16CDirect3DTexture20UpdateOpenGLSurfacesEb_60


;CDirect3DTexture::AddRef()
_ZN16CDirect3DTexture6AddRefEv:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, [edx+0x40]
	add eax, 0x1
	mov [edx+0x40], eax
	pop ebp
	ret
	nop


;CDirect3DTexture::GetLOD()
_ZN16CDirect3DTexture6GetLODEv:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	ret
	nop


;CDirect3DTexture::SetLOD(unsigned long)
_ZN16CDirect3DTexture6SetLODEm:
	push ebp
	mov ebp, esp
	mov eax, 0x8876086c
	pop ebp
	ret


;CDirect3DTexture::GetType()
_ZN16CDirect3DTexture7GetTypeEv:
	push ebp
	mov ebp, esp
	mov eax, 0x3
	pop ebp
	ret


;CDirect3DTexture::PreLoad()
_ZN16CDirect3DTexture7PreLoadEv:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;CDirect3DTexture::Release()
_ZN16CDirect3DTexture7ReleaseEv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov edx, [ebp+0x8]
	mov ebx, [edx+0x40]
	sub ebx, 0x1
	mov [edx+0x40], ebx
	test ebx, ebx
	jnz _ZN16CDirect3DTexture7ReleaseEv_10
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x5c]
_ZN16CDirect3DTexture7ReleaseEv_10:
	mov eax, ebx
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;CDirect3DTexture::LockRect(unsigned int, _D3DLOCKED_RECT*, tagRECT const*, unsigned long)
_ZN16CDirect3DTexture8LockRectEjP15_D3DLOCKED_RECTPK7tagRECTm:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov eax, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov edi, [ebp+0x10]
	mov esi, [ebp+0x14]
	mov ebx, [ebp+0x18]
	mov edx, [eax+0x68]
	mov eax, [eax+0x6c]
	sub eax, edx
	sar eax, 0x2
	cmp eax, ecx
	ja _ZN16CDirect3DTexture8LockRectEjP15_D3DLOCKED_RECTPK7tagRECTm_10
	mov eax, 0x8876086c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN16CDirect3DTexture8LockRectEjP15_D3DLOCKED_RECTPK7tagRECTm_10:
	mov eax, [edx+ecx*4]
	mov edx, [eax]
	mov [ebp+0x14], ebx
	mov [ebp+0x10], esi
	mov [ebp+0xc], edi
	mov [ebp+0x8], eax
	mov ecx, [edx+0x34]
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp ecx


;CDirect3DTexture::GetDevice(IDirect3DDevice9**)
_ZN16CDirect3DTexture9GetDeviceEPP16IDirect3DDevice9:
	push ebp
	mov ebp, esp
	mov eax, 0x8876086c
	pop ebp
	ret


;CDirect3DTexture::CDirect3DTexture(CDirect3DDevice*, unsigned int, unsigned int, unsigned int, unsigned long, _D3DFORMAT, _D3DPOOL)
_ZN16CDirect3DTextureC1EP15CDirect3DDevicejjjm10_D3DFORMAT8_D3DPOOL:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov eax, [0xd5cc028]
	add eax, 0x8
	mov edx, [ebp+0x8]
	mov [edx], eax
	mov eax, [0xd5cc034]
	add eax, 0x8
	mov [edx], eax
	mov eax, [0xd5cc02c]
	add eax, 0x8
	mov [edx], eax
	mov eax, [0xd5cc040]
	add eax, 0x8
	mov [edx], eax
	add edx, 0x4
	mov [ebp-0x40], edx
	mov dword [esp+0x10], 0x0
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	mov edx, [ebp+0x10]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0xde1
	mov eax, [ebp-0x40]
	mov [esp], eax
	call _ZN14COpenGLTextureC2Emjjj
	mov edx, [ebp+0x8]
	mov dword [edx], _ZTV16CDirect3DTexture+0x8
	mov dword [edx+0x4], _ZTV16CDirect3DTexture+0x70
	mov eax, [ebp+0xc]
	mov [edx+0x3c], eax
	mov dword [edx+0x40], 0x0
	mov eax, [ebp+0x10]
	mov [edx+0x44], eax
	mov eax, [ebp+0x14]
	mov [edx+0x48], eax
	mov dword [edx+0x4c], 0x0
	add edx, 0x50
	mov [ebp-0x3c], edx
	mov dword [esp+0x8], 0x20
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call _ZN13CMemoryBufferC1Ejj
	mov edx, [ebp+0x8]
	add edx, 0x68
	mov [ebp-0x38], edx
	mov eax, [ebp+0x8]
	mov dword [eax+0x68], 0x0
	mov dword [edx+0x4], 0x0
	mov dword [edx+0x8], 0x0
	mov edx, [ebp+0x24]
	mov [eax+0x74], edx
	mov esi, [ebp+0x18]
	test esi, esi
	jnz _ZN16CDirect3DTextureC1EP15CDirect3DDevicejjjm10_D3DFORMAT8_D3DPOOL_10
	mov dword [esp+0x8], 0x1
	mov eax, [ebp+0x14]
	mov [esp+0x4], eax
	mov edx, [ebp+0x10]
	mov [esp], edx
	call _ZN14MacOpenGLUtils19GetNumTextureLevelsEjjj
	mov [ebp+0x18], eax
_ZN16CDirect3DTextureC1EP15CDirect3DDevicejjjm10_D3DFORMAT8_D3DPOOL_50:
	mov [esp+0x4], eax
	mov edx, [ebp-0x38]
	mov [esp], edx
	call _ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE7reserveEm
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov dword [esp], 0x8069
	call glGetIntegerv
	mov edx, [ebp-0x40]
	mov eax, [edx+0xc]
	mov eax, [eax]
	mov [esp+0x4], eax
	mov dword [esp], 0xde1
	call glBindTexture
	mov eax, [ebp+0x1c]
	sub eax, 0x1
	cmp eax, 0x1
	jbe _ZN16CDirect3DTextureC1EP15CDirect3DDevicejjjm10_D3DFORMAT8_D3DPOOL_20
	mov edi, [ebp+0x18]
	test edi, edi
	jnz _ZN16CDirect3DTextureC1EP15CDirect3DDevicejjjm10_D3DFORMAT8_D3DPOOL_30
	mov dword [ebp-0x34], 0x0
_ZN16CDirect3DTextureC1EP15CDirect3DDevicejjjm10_D3DFORMAT8_D3DPOOL_70:
	mov dword [esp+0x8], 0x20
	mov eax, [ebp-0x34]
	mov [esp+0x4], eax
	mov edx, [ebp-0x3c]
	mov [esp], edx
	call _ZN13CMemoryBuffer6ResizeEjj
	mov edx, [ebp-0x3c]
	mov eax, [edx+0x8]
	mov edx, [ebp-0x34]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	mov ebx, [ebp+0x18]
	test ebx, ebx
	jnz _ZN16CDirect3DTextureC1EP15CDirect3DDevicejjjm10_D3DFORMAT8_D3DPOOL_40
_ZN16CDirect3DTextureC1EP15CDirect3DDevicejjjm10_D3DFORMAT8_D3DPOOL_90:
	mov eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov dword [esp], 0xde1
	call glBindTexture
	mov eax, [ebp+0x18]
	mov edx, [ebp+0x8]
	mov [edx+0x4c], eax
	add dword [edx+0x40], 0x1
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN16CDirect3DTextureC1EP15CDirect3DDevicejjjm10_D3DFORMAT8_D3DPOOL_10:
	mov eax, [ebp+0x18]
	jmp _ZN16CDirect3DTextureC1EP15CDirect3DDevicejjjm10_D3DFORMAT8_D3DPOOL_50
_ZN16CDirect3DTextureC1EP15CDirect3DDevicejjjm10_D3DFORMAT8_D3DPOOL_30:
	mov esi, [ebp+0x10]
	mov ebx, [ebp+0x14]
	xor edi, edi
	mov dword [ebp-0x34], 0x0
_ZN16CDirect3DTextureC1EP15CDirect3DDevicejjjm10_D3DFORMAT8_D3DPOOL_60:
	mov edx, [ebp+0x20]
	mov [esp+0x10], edx
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], ebx
	mov [esp], esi
	call _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT
	add eax, 0x1f
	and eax, 0xffffffe0
	add [ebp-0x34], eax
	mov eax, esi
	shr eax, 1
	test esi, esi
	cmovnz esi, eax
	mov eax, ebx
	shr eax, 1
	test ebx, ebx
	cmovnz ebx, eax
	add edi, 0x1
	cmp [ebp+0x18], edi
	jnz _ZN16CDirect3DTextureC1EP15CDirect3DDevicejjjm10_D3DFORMAT8_D3DPOOL_60
	jmp _ZN16CDirect3DTextureC1EP15CDirect3DDevicejjjm10_D3DFORMAT8_D3DPOOL_70
_ZN16CDirect3DTextureC1EP15CDirect3DDevicejjjm10_D3DFORMAT8_D3DPOOL_40:
	mov dword [ebp-0x30], 0x0
	mov dword [ebp-0x2c], 0x0
	jmp _ZN16CDirect3DTextureC1EP15CDirect3DDevicejjjm10_D3DFORMAT8_D3DPOOL_80
_ZN16CDirect3DTextureC1EP15CDirect3DDevicejjjm10_D3DFORMAT8_D3DPOOL_110:
	mov [edx], ebx
	mov eax, [ebp-0x38]
	mov edx, [eax+0x4]
_ZN16CDirect3DTextureC1EP15CDirect3DDevicejjjm10_D3DFORMAT8_D3DPOOL_120:
	add edx, 0x4
	mov [eax+0x4], edx
_ZN16CDirect3DTextureC1EP15CDirect3DDevicejjjm10_D3DFORMAT8_D3DPOOL_130:
	add [ebp-0x30], edi
	add dword [ebp-0x2c], 0x1
	shr dword [ebp+0x10], 1
	shr dword [ebp+0x14], 1
	mov eax, [ebp-0x2c]
	cmp [ebp+0x18], eax
	jz _ZN16CDirect3DTextureC1EP15CDirect3DDevicejjjm10_D3DFORMAT8_D3DPOOL_90
_ZN16CDirect3DTextureC1EP15CDirect3DDevicejjjm10_D3DFORMAT8_D3DPOOL_80:
	mov eax, [ebp+0x20]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x1
	mov edx, [ebp+0x14]
	mov [esp+0x4], edx
	mov eax, [ebp+0x10]
	mov [esp], eax
	call _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT
	lea edi, [eax+0x1f]
	and edi, 0xffffffe0
	mov eax, 0x1
	mov ecx, [ebp+0x10]
	test ecx, ecx
	mov edx, [ebp+0x10]
	cmovz edx, eax
	mov [ebp+0x10], edx
	mov edx, [ebp+0x14]
	test edx, edx
	cmovnz eax, [ebp+0x14]
	mov [ebp+0x14], eax
	mov esi, [ebp-0x30]
	mov eax, [ebp-0x3c]
	add esi, [eax+0x8]
	mov dword [esp], 0x40
	call _Znwm
	mov ebx, eax
	mov edx, [ebp-0x40]
	mov [esp+0x24], edx
	mov [esp+0x20], esi
	mov eax, [ebp+0x24]
	mov [esp+0x1c], eax
	mov edx, [ebp+0x20]
	mov [esp+0x18], edx
	mov eax, [ebp+0x14]
	mov [esp+0x14], eax
	mov edx, [ebp+0x10]
	mov [esp+0x10], edx
	mov eax, [ebp-0x2c]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call _ZN16CDirect3DSurfaceC1E11SurfaceTypemjjj10_D3DFORMAT8_D3DPOOLPvP14COpenGLTexture
	mov [ebp-0x1c], ebx
	mov eax, [ebp-0x38]
	mov edx, [eax+0x4]
	cmp edx, [eax+0x8]
	jz _ZN16CDirect3DTextureC1EP15CDirect3DDevicejjjm10_D3DFORMAT8_D3DPOOL_100
	test edx, edx
	jnz _ZN16CDirect3DTextureC1EP15CDirect3DDevicejjjm10_D3DFORMAT8_D3DPOOL_110
	mov eax, [ebp-0x38]
	jmp _ZN16CDirect3DTextureC1EP15CDirect3DDevicejjjm10_D3DFORMAT8_D3DPOOL_120
_ZN16CDirect3DTextureC1EP15CDirect3DDevicejjjm10_D3DFORMAT8_D3DPOOL_100:
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov edx, [ebp-0x38]
	mov [esp], edx
	call _ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_
	jmp _ZN16CDirect3DTextureC1EP15CDirect3DDevicejjjm10_D3DFORMAT8_D3DPOOL_130
_ZN16CDirect3DTextureC1EP15CDirect3DDevicejjjm10_D3DFORMAT8_D3DPOOL_20:
	mov dword [esp], 0x40
	call _Znwm
	mov ebx, eax
	mov eax, [ebp-0x40]
	mov [esp+0x24], eax
	mov dword [esp+0x20], 0x0
	mov edx, [ebp+0x24]
	mov [esp+0x1c], edx
	mov eax, [ebp+0x20]
	mov [esp+0x18], eax
	mov edx, [ebp+0x14]
	mov [esp+0x14], edx
	mov eax, [ebp+0x10]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call _ZN16CDirect3DSurfaceC1E11SurfaceTypemjjj10_D3DFORMAT8_D3DPOOLPvP14COpenGLTexture
	mov [ebp-0x20], ebx
	mov eax, [ebp-0x38]
	mov edx, [eax+0x4]
	cmp edx, [eax+0x8]
	jz _ZN16CDirect3DTextureC1EP15CDirect3DDevicejjjm10_D3DFORMAT8_D3DPOOL_140
	test edx, edx
	jz _ZN16CDirect3DTextureC1EP15CDirect3DDevicejjjm10_D3DFORMAT8_D3DPOOL_150
	mov [edx], ebx
	mov eax, [ebp-0x38]
	mov edx, [eax+0x4]
_ZN16CDirect3DTextureC1EP15CDirect3DDevicejjjm10_D3DFORMAT8_D3DPOOL_160:
	add edx, 0x4
	mov [eax+0x4], edx
_ZN16CDirect3DTextureC1EP15CDirect3DDevicejjjm10_D3DFORMAT8_D3DPOOL_170:
	mov ebx, [ebp-0x40]
	add ebx, 0x4
	mov dword [ebx+0xc], 0x812f
	mov dword [ebx+0x10], 0x812f
	mov dword [ebx+0x18], 0x2601
	mov dword [ebx+0x1c], 0x2601
	mov edx, [ebp-0x40]
	mov eax, [edx+0x10]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2802
	mov dword [esp], 0xde1
	call glTexParameteri
	mov edx, [ebp-0x40]
	mov eax, [edx+0x14]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2803
	mov dword [esp], 0xde1
	call glTexParameteri
	mov edx, [ebp-0x40]
	mov eax, [edx+0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2801
	mov dword [esp], 0xde1
	call glTexParameteri
	mov edx, [ebp-0x40]
	mov eax, [edx+0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2800
	mov dword [esp], 0xde1
	call glTexParameteri
	mov eax, [ebp+0x20]
	mov [esp], eax
	call _ZN14MacOpenGLUtils13IsDepthFormatE10_D3DFORMAT
	test al, al
	jz _ZN16CDirect3DTextureC1EP15CDirect3DDevicejjjm10_D3DFORMAT8_D3DPOOL_90
	call _ZN10MacDisplay11GetCardTypeEv
	cmp eax, 0x2
	setz dl
	mov esi, edx
	cmp dl, 0x1
	sbb eax, eax
	add eax, 0x2601
	mov [ebx+0x18], eax
	cmp dl, 0x1
	sbb eax, eax
	add eax, 0x2601
	mov [ebx+0x1c], eax
	mov edx, [ebp-0x40]
	mov eax, [edx+0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2801
	mov dword [esp], 0xde1
	call glTexParameteri
	mov edx, [ebp-0x40]
	mov eax, [edx+0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2800
	mov dword [esp], 0xde1
	call glTexParameteri
	mov dword [esp+0x8], 0x1909
	mov dword [esp+0x4], 0x884b
	mov dword [esp], 0xde1
	call glTexParameteri
	mov eax, esi
	test al, al
	jz _ZN16CDirect3DTextureC1EP15CDirect3DDevicejjjm10_D3DFORMAT8_D3DPOOL_90
	mov dword [esp+0x8], 0x884e
	mov dword [esp+0x4], 0x884c
	mov dword [esp], 0xde1
	call glTexParameteri
	mov dword [esp+0x8], 0x203
	mov dword [esp+0x4], 0x884d
	mov dword [esp], 0xde1
	call glTexParameteri
	jmp _ZN16CDirect3DTextureC1EP15CDirect3DDevicejjjm10_D3DFORMAT8_D3DPOOL_90
_ZN16CDirect3DTextureC1EP15CDirect3DDevicejjjm10_D3DFORMAT8_D3DPOOL_150:
	mov eax, [ebp-0x38]
	jmp _ZN16CDirect3DTextureC1EP15CDirect3DDevicejjjm10_D3DFORMAT8_D3DPOOL_160
_ZN16CDirect3DTextureC1EP15CDirect3DDevicejjjm10_D3DFORMAT8_D3DPOOL_140:
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov edx, [ebp-0x38]
	mov [esp], edx
	call _ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_
	jmp _ZN16CDirect3DTextureC1EP15CDirect3DDevicejjjm10_D3DFORMAT8_D3DPOOL_170
	mov esi, eax
	mov [esp], ebx
	call _ZdlPv
_ZN16CDirect3DTextureC1EP15CDirect3DDevicejjjm10_D3DFORMAT8_D3DPOOL_220:
	mov edx, [ebp-0x38]
	mov ecx, [edx+0x4]
	mov edx, [edx]
	mov eax, edx
	cmp ecx, edx
	jz _ZN16CDirect3DTextureC1EP15CDirect3DDevicejjjm10_D3DFORMAT8_D3DPOOL_180
_ZN16CDirect3DTextureC1EP15CDirect3DDevicejjjm10_D3DFORMAT8_D3DPOOL_190:
	add eax, 0x4
	cmp ecx, eax
	jnz _ZN16CDirect3DTextureC1EP15CDirect3DDevicejjjm10_D3DFORMAT8_D3DPOOL_190
_ZN16CDirect3DTextureC1EP15CDirect3DDevicejjjm10_D3DFORMAT8_D3DPOOL_180:
	test edx, edx
	jz _ZN16CDirect3DTextureC1EP15CDirect3DDevicejjjm10_D3DFORMAT8_D3DPOOL_200
	mov [esp], edx
	call _ZdlPv
_ZN16CDirect3DTextureC1EP15CDirect3DDevicejjjm10_D3DFORMAT8_D3DPOOL_200:
	mov edx, [ebp-0x3c]
	mov [esp], edx
	call _ZN13CMemoryBufferD1Ev
	jmp _ZN16CDirect3DTextureC1EP15CDirect3DDevicejjjm10_D3DFORMAT8_D3DPOOL_210
	mov esi, eax
_ZN16CDirect3DTextureC1EP15CDirect3DDevicejjjm10_D3DFORMAT8_D3DPOOL_210:
	mov eax, [ebp-0x40]
	mov [esp], eax
	call _ZN14COpenGLTextureD2Ev
	mov [esp], esi
	call _Unwind_Resume
	mov esi, eax
	jmp _ZN16CDirect3DTextureC1EP15CDirect3DDevicejjjm10_D3DFORMAT8_D3DPOOL_220


;CDirect3DTexture::~CDirect3DTexture()
_ZN16CDirect3DTextureD0Ev:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov dword [edi], _ZTV16CDirect3DTexture+0x8
	mov dword [edi+0x4], _ZTV16CDirect3DTexture+0x70
	lea eax, [edi+0x4]
	mov [ebp-0x1c], eax
	mov [esp], eax
	lea edx, [edi+0x68]
	mov [ebp-0x20], edx
	call _ZN14COpenGLTexture16ReleaseResourcesEv
	mov ebx, [edi+0x68]
	lea esi, [edi+0x6c]
	cmp ebx, [edi+0x6c]
	jz _ZN16CDirect3DTextureD0Ev_10
_ZN16CDirect3DTextureD0Ev_20:
	mov eax, [ebx]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	add ebx, 0x4
	cmp ebx, [esi]
	jnz _ZN16CDirect3DTextureD0Ev_20
_ZN16CDirect3DTextureD0Ev_10:
	mov eax, [ebp-0x20]
	mov edx, [eax+0x4]
	mov ecx, [eax]
	mov eax, ecx
	cmp edx, ecx
	jz _ZN16CDirect3DTextureD0Ev_30
_ZN16CDirect3DTextureD0Ev_40:
	add eax, 0x4
	cmp edx, eax
	jnz _ZN16CDirect3DTextureD0Ev_40
_ZN16CDirect3DTextureD0Ev_30:
	test ecx, ecx
	jz _ZN16CDirect3DTextureD0Ev_50
	mov [esp], ecx
	call _ZdlPv
_ZN16CDirect3DTextureD0Ev_50:
	lea eax, [edi+0x50]
	mov [esp], eax
	call _ZN13CMemoryBufferD1Ev
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _ZN14COpenGLTextureD2Ev
	mov [ebp+0x8], edi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _ZdlPv
	mov ebx, eax
	mov eax, [ebp-0x20]
	mov edx, [eax+0x4]
	mov eax, [edi+0x68]
	cmp edx, eax
	jz _ZN16CDirect3DTextureD0Ev_60
_ZN16CDirect3DTextureD0Ev_70:
	add eax, 0x4
	cmp edx, eax
	jnz _ZN16CDirect3DTextureD0Ev_70
_ZN16CDirect3DTextureD0Ev_60:
	mov edx, [ebp-0x20]
	mov eax, [edx]
	test eax, eax
	jz _ZN16CDirect3DTextureD0Ev_80
	mov [esp], eax
	call _ZdlPv
_ZN16CDirect3DTextureD0Ev_80:
	lea eax, [edi+0x50]
	mov [esp], eax
	call _ZN13CMemoryBufferD1Ev
	jmp _ZN16CDirect3DTextureD0Ev_90
	mov ebx, eax
_ZN16CDirect3DTextureD0Ev_90:
	mov edx, [ebp-0x1c]
	mov [esp], edx
	call _ZN14COpenGLTextureD2Ev
	mov [esp], ebx
	call _Unwind_Resume


;CDirect3DTexture::~CDirect3DTexture()
_ZN16CDirect3DTextureD1Ev:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov dword [edi], _ZTV16CDirect3DTexture+0x8
	mov dword [edi+0x4], _ZTV16CDirect3DTexture+0x70
	lea eax, [edi+0x4]
	mov [ebp-0x1c], eax
	mov [esp], eax
	lea edx, [edi+0x68]
	mov [ebp-0x20], edx
	call _ZN14COpenGLTexture16ReleaseResourcesEv
	mov ebx, [edi+0x68]
	lea esi, [edi+0x6c]
	cmp ebx, [edi+0x6c]
	jz _ZN16CDirect3DTextureD1Ev_10
_ZN16CDirect3DTextureD1Ev_20:
	mov eax, [ebx]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	add ebx, 0x4
	cmp ebx, [esi]
	jnz _ZN16CDirect3DTextureD1Ev_20
_ZN16CDirect3DTextureD1Ev_10:
	mov eax, [ebp-0x20]
	mov edx, [eax+0x4]
	mov ecx, [eax]
	mov eax, ecx
	cmp edx, ecx
	jz _ZN16CDirect3DTextureD1Ev_30
_ZN16CDirect3DTextureD1Ev_40:
	add eax, 0x4
	cmp edx, eax
	jnz _ZN16CDirect3DTextureD1Ev_40
_ZN16CDirect3DTextureD1Ev_30:
	test ecx, ecx
	jz _ZN16CDirect3DTextureD1Ev_50
	mov [esp], ecx
	call _ZdlPv
_ZN16CDirect3DTextureD1Ev_50:
	lea eax, [edi+0x50]
	mov [esp], eax
	call _ZN13CMemoryBufferD1Ev
	mov eax, [ebp-0x1c]
	mov [ebp+0x8], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _ZN14COpenGLTextureD2Ev
	mov ebx, eax
	mov eax, [ebp-0x20]
	mov edx, [eax+0x4]
	mov eax, [edi+0x68]
	cmp edx, eax
	jz _ZN16CDirect3DTextureD1Ev_60
_ZN16CDirect3DTextureD1Ev_70:
	add eax, 0x4
	cmp edx, eax
	jnz _ZN16CDirect3DTextureD1Ev_70
_ZN16CDirect3DTextureD1Ev_60:
	mov edx, [ebp-0x20]
	mov eax, [edx]
	test eax, eax
	jz _ZN16CDirect3DTextureD1Ev_80
	mov [esp], eax
	call _ZdlPv
_ZN16CDirect3DTextureD1Ev_80:
	lea eax, [edi+0x50]
	mov [esp], eax
	call _ZN13CMemoryBufferD1Ev
	jmp _ZN16CDirect3DTextureD1Ev_90
	mov ebx, eax
_ZN16CDirect3DTextureD1Ev_90:
	mov edx, [ebp-0x1c]
	mov [esp], edx
	call _ZN14COpenGLTextureD2Ev
	mov [esp], ebx
	call _Unwind_Resume


;std::vector<CDirect3DSurface*, std::allocator<CDirect3DSurface*> >::_M_insert_aux(__gnu_cxx::__normal_iterator<CDirect3DSurface**, std::vector<CDirect3DSurface*, std::allocator<CDirect3DSurface*> > >, CDirect3DSurface* const&)
_ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov edx, [edi+0x4]
	cmp edx, [edi+0x8]
	jz _ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__10
	test edx, edx
	jz _ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__20
	mov eax, [edx-0x4]
	mov [edx], eax
	mov edx, [edi+0x4]
_ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__20:
	mov eax, edx
	add edx, 0x4
	mov [edi+0x4], edx
	mov edx, [ebp+0x10]
	mov ebx, [edx]
	lea edx, [eax-0x4]
	sub edx, [ebp+0xc]
	and edx, 0xfffffffc
	mov [esp+0x8], edx
	mov ecx, [ebp+0xc]
	mov [esp+0x4], ecx
	sub eax, edx
	mov [esp], eax
	call memmove
	mov eax, [ebp+0xc]
	mov [eax], ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__10:
	mov eax, edx
	sub eax, [edi]
	sar eax, 0x2
	cmp eax, 0x3fffffff
	jz _ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__30
	test eax, eax
	jnz _ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__40
	mov edx, 0x1
_ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__100:
	shl edx, 0x2
	mov [ebp-0x1c], edx
	mov [esp], edx
	call _Znwm
	mov [ebp-0x20], eax
	mov eax, [edi]
	mov ebx, [ebp+0xc]
	sub ebx, eax
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	mov edx, [ebp-0x20]
	mov [esp], edx
	call memmove
	mov edx, [ebp-0x20]
	add edx, ebx
	jz _ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__50
	mov ecx, [ebp+0x10]
	mov eax, [ecx]
	mov [edx], eax
_ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__50:
	lea esi, [edx+0x4]
	mov ebx, [edi+0x4]
	sub ebx, [ebp+0xc]
	mov [esp+0x8], ebx
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], esi
	call memmove
	add ebx, esi
	mov edx, [edi+0x4]
	mov ecx, [edi]
	mov eax, ecx
	cmp ecx, edx
	jz _ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__60
_ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__70:
	add eax, 0x4
	cmp eax, edx
	jnz _ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__70
_ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__60:
	test ecx, ecx
	jz _ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__80
	mov [esp], ecx
	call _ZdlPv
_ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__80:
	mov edx, [ebp-0x20]
	mov [edi], edx
	mov [edi+0x4], ebx
	mov eax, edx
	add eax, [ebp-0x1c]
	mov [edi+0x8], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__40:
	lea edx, [eax+eax]
	cmp edx, eax
	jb _ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__90
	cmp edx, 0x3fffffff
	jbe _ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__100
	call _ZSt17__throw_bad_allocv
_ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__90:
	mov edx, 0x3fffffff
	jmp _ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__100
_ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__30:
	mov dword [esp], _cstring_vector_m_insert_
	call _ZSt20__throw_length_errorPKc


;std::vector<CDirect3DSurface*, std::allocator<CDirect3DSurface*> >::reserve(unsigned long)
_ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE7reserveEm:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edx, [ebp+0xc]
	cmp edx, 0x3fffffff
	ja _ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE7reserveEm_10
	mov eax, [ebp+0x8]
	mov esi, [eax]
	mov ecx, eax
	mov eax, [eax+0x8]
	sub eax, esi
	sar eax, 0x2
	cmp edx, eax
	ja _ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE7reserveEm_20
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE7reserveEm_20:
	mov ebx, [ecx+0x4]
	sub ebx, esi
	mov eax, ebx
	sar eax, 0x2
	mov [ebp-0x20], eax
	cmp edx, 0x3fffffff
	ja _ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE7reserveEm_30
	shl edx, 0x2
	mov [ebp-0x1c], edx
	mov [esp], edx
	call _Znwm
	mov edi, eax
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov [esp], eax
	call memmove
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x4]
	mov ecx, [ecx]
	cmp edx, ecx
	jz _ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE7reserveEm_40
	mov eax, ecx
_ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE7reserveEm_50:
	add eax, 0x4
	cmp edx, eax
	jnz _ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE7reserveEm_50
_ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE7reserveEm_40:
	test ecx, ecx
	jz _ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE7reserveEm_60
	mov [esp], ecx
	call _ZdlPv
_ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE7reserveEm_60:
	mov edx, [ebp+0x8]
	mov [edx], edi
	mov ecx, [ebp-0x20]
	lea eax, [edi+ecx*4]
	mov [edx+0x4], eax
	mov eax, [ebp-0x1c]
	add eax, edi
	mov [edx+0x8], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE7reserveEm_10:
	mov dword [esp], _cstring_vectorreserve
	call _ZSt20__throw_length_errorPKc
_ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE7reserveEm_30:
	call _ZSt17__throw_bad_allocv


;non-virtual thunk to CDirect3DTexture::~CDirect3DTexture()
_ZThn4_N16CDirect3DTextureD0Ev:
	add dword [esp+0x4], 0xfffffffc
	jmp _ZN16CDirect3DTextureD0Ev


;non-virtual thunk to CDirect3DTexture::~CDirect3DTexture()
_ZThn4_N16CDirect3DTextureD1Ev:
	add dword [esp+0x4], 0xfffffffc
	jmp _ZN16CDirect3DTextureD1Ev


;Initialized global or static variables of CDirect3DTexture:
SECTION .data


;Initialized constant data of CDirect3DTexture:
SECTION .rdata
;VTypeInfoTable for CDirect3DTexture:
_ZTI16CDirect3DTexture: dd 0x8, _cstring_16cdirect3dtextu, 0x0, 0x2, _ZTI17IDirect3DTexture9, 0x2, _ZTI14COpenGLTexture, 0x402
;VTypeInfoTable for IDirect3DTexture9:
_ZTI17IDirect3DTexture9: dd 0x8, _cstring_17idirect3dtextu, _ZTI21IDirect3DBaseTexture9, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, _ZTI17IDirect3DTexture9, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
;VTable for CDirect3DTexture:
_ZTV16CDirect3DTexture: dd 0x0, _ZTI16CDirect3DTexture, _ZN16CDirect3DTexture14QueryInterfaceERK5_GUIDPPv, _ZN16CDirect3DTexture6AddRefEv, _ZN16CDirect3DTexture7ReleaseEv, _ZN16CDirect3DTexture9GetDeviceEPP16IDirect3DDevice9, _ZN16CDirect3DTexture14SetPrivateDataERK5_GUIDPKvmm, _ZN16CDirect3DTexture14GetPrivateDataERK5_GUIDPvPm, _ZN16CDirect3DTexture15FreePrivateDataERK5_GUID, _ZN16CDirect3DTexture11SetPriorityEm, _ZN16CDirect3DTexture11GetPriorityEv, _ZN16CDirect3DTexture7PreLoadEv, _ZN16CDirect3DTexture7GetTypeEv, _ZN16CDirect3DTexture6SetLODEm, _ZN16CDirect3DTexture6GetLODEv, _ZN16CDirect3DTexture13GetLevelCountEv, _ZN16CDirect3DTexture20SetAutoGenFilterTypeE21_D3DTEXTUREFILTERTYPE, _ZN16CDirect3DTexture20GetAutoGenFilterTypeEv, _ZN16CDirect3DTexture20GenerateMipSubLevelsEv, _ZN16CDirect3DTexture12GetLevelDescEjP16_D3DSURFACE_DESC, _ZN16CDirect3DTexture15GetSurfaceLevelEjPP17IDirect3DSurface9, _ZN16CDirect3DTexture8LockRectEjP15_D3DLOCKED_RECTPK7tagRECTm, _ZN16CDirect3DTexture10UnlockRectEj, _ZN16CDirect3DTexture12AddDirtyRectEPK7tagRECT, _ZN16CDirect3DTextureD1Ev, _ZN16CDirect3DTextureD0Ev, 0xfffffffc, _ZTI16CDirect3DTexture, _ZThn4_N16CDirect3DTextureD1Ev, _ZThn4_N16CDirect3DTextureD0Ev, _ZN14COpenGLTexture20UpdateOpenGLSurfacesEv, 0x0


;Zero initialized global or static variables of CDirect3DTexture:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_vector_m_insert_:		db "vector::_M_insert_aux",0
_cstring_vectorreserve:		db "vector::reserve",0
_cstring_16cdirect3dtextu:		db "16CDirect3DTexture",0
_cstring_17idirect3dtextu:		db "17IDirect3DTexture9",0



;All constant floats and doubles:
SECTION .rdata

