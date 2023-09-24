;Imports of CDirect3DCubeTexture:
	extern _ZNK16CDirect3DSurface7IsDirtyEv
	extern _ZN16CDirect3DSurface25UpdateOpenGLSurfaceObjectEb
	extern _ZN14COpenGLTextureC2Emjjj
	extern _ZN13CMemoryBufferC1Ejj
	extern _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT
	extern _ZN13CMemoryBuffer6ResizeEjj
	extern memset
	extern glGetIntegerv
	extern glBindTexture
	extern _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT
	extern _Znwm
	extern _ZN16CDirect3DSurfaceC1E11SurfaceTypemjjj10_D3DFORMAT8_D3DPOOLPvP14COpenGLTexture
	extern _ZN14MacOpenGLUtils19GetNumTextureLevelsEjjj
	extern _ZN14COpenGLTextureD2Ev
	extern _Unwind_Resume
	extern _ZdlPv
	extern _ZN13CMemoryBufferD1Ev
	extern _ZN14COpenGLTexture16ReleaseResourcesEv
	extern memmove
	extern _ZSt17__throw_bad_allocv
	extern _ZSt20__throw_length_errorPKc
	extern _ZTI8IUnknown
	extern _ZTI14COpenGLTexture

;Exports of CDirect3DCubeTexture:
	global _ZN14COpenGLTexture20UpdateOpenGLSurfacesEv
	global _ZN20CDirect3DCubeTexture10UnlockRectE17_D3DCUBEMAP_FACESj
	global _ZN20CDirect3DCubeTexture11GetPriorityEv
	global _ZN20CDirect3DCubeTexture11SetPriorityEm
	global _ZN20CDirect3DCubeTexture12AddDirtyRectE17_D3DCUBEMAP_FACESPK7tagRECT
	global _ZN20CDirect3DCubeTexture12GetLevelDescEjP16_D3DSURFACE_DESC
	global _ZN20CDirect3DCubeTexture13GetLevelCountEv
	global _ZN20CDirect3DCubeTexture14GetPrivateDataERK5_GUIDPvPm
	global _ZN20CDirect3DCubeTexture14QueryInterfaceERK5_GUIDPPv
	global _ZN20CDirect3DCubeTexture14SetPrivateDataERK5_GUIDPKvmm
	global _ZN20CDirect3DCubeTexture15FreePrivateDataERK5_GUID
	global _ZN20CDirect3DCubeTexture17GetCubeMapSurfaceE17_D3DCUBEMAP_FACESjPP17IDirect3DSurface9
	global _ZN20CDirect3DCubeTexture20GenerateMipSubLevelsEv
	global _ZN20CDirect3DCubeTexture20GetAutoGenFilterTypeEv
	global _ZN20CDirect3DCubeTexture20SetAutoGenFilterTypeE21_D3DTEXTUREFILTERTYPE
	global _ZN20CDirect3DCubeTexture20UpdateOpenGLSurfacesEb
	global _ZN20CDirect3DCubeTexture6AddRefEv
	global _ZN20CDirect3DCubeTexture6GetLODEv
	global _ZN20CDirect3DCubeTexture6SetLODEm
	global _ZN20CDirect3DCubeTexture7GetTypeEv
	global _ZN20CDirect3DCubeTexture7PreLoadEv
	global _ZN20CDirect3DCubeTexture7ReleaseEv
	global _ZN20CDirect3DCubeTexture8LockRectE17_D3DCUBEMAP_FACESjP15_D3DLOCKED_RECTPK7tagRECTm
	global _ZN20CDirect3DCubeTexture9GetDeviceEPP16IDirect3DDevice9
	global _ZN20CDirect3DCubeTextureC1EP15CDirect3DDevicejjm10_D3DFORMAT8_D3DPOOL
	global _ZN20CDirect3DCubeTextureD0Ev
	global _ZN20CDirect3DCubeTextureD1Ev
	global _ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_
	global _ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPS1_S3_EES7_
	global _ZTI18IDirect3DResource9
	global _ZTI20CDirect3DCubeTexture
	global _ZTI21IDirect3DBaseTexture9
	global _ZTI21IDirect3DCubeTexture9
	global _ZTV20CDirect3DCubeTexture
	global _ZThn4_N20CDirect3DCubeTextureD0Ev
	global _ZThn4_N20CDirect3DCubeTextureD1Ev


SECTION .text


;COpenGLTexture::UpdateOpenGLSurfaces()
_ZN14COpenGLTexture20UpdateOpenGLSurfacesEv:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;CDirect3DCubeTexture::UnlockRect(_D3DCUBEMAP_FACES, unsigned int)
_ZN20CDirect3DCubeTexture10UnlockRectE17_D3DCUBEMAP_FACESj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov ecx, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov ebx, [ebp+0x10]
	mov esi, [ecx+0x7c]
	mov edx, [ecx+0x80]
	sub edx, esi
	sar edx, 0x2
	mov eax, 0xaaaaaaab
	mul edx
	shr edx, 0x2
	cmp edx, ebx
	ja _ZN20CDirect3DCubeTexture10UnlockRectE17_D3DCUBEMAP_FACESj_10
	mov eax, 0x8876086c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN20CDirect3DCubeTexture10UnlockRectE17_D3DCUBEMAP_FACESj_10:
	add ebx, [ecx+edi*4+0x4c]
	mov eax, [esi+ebx*4]
	mov edx, [eax]
	mov [ebp+0x8], eax
	mov ecx, [edx+0x38]
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp ecx


;CDirect3DCubeTexture::GetPriority()
_ZN20CDirect3DCubeTexture11GetPriorityEv:
	push ebp
	mov ebp, esp
	mov eax, 0x8876086c
	pop ebp
	ret


;CDirect3DCubeTexture::SetPriority(unsigned long)
_ZN20CDirect3DCubeTexture11SetPriorityEm:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	ret
	nop


;CDirect3DCubeTexture::AddDirtyRect(_D3DCUBEMAP_FACES, tagRECT const*)
_ZN20CDirect3DCubeTexture12AddDirtyRectE17_D3DCUBEMAP_FACESPK7tagRECT:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [eax+0x7c]
	lea ecx, [eax+0x80]
	cmp edx, [eax+0x80]
	jz _ZN20CDirect3DCubeTexture12AddDirtyRectE17_D3DCUBEMAP_FACESPK7tagRECT_10
_ZN20CDirect3DCubeTexture12AddDirtyRectE17_D3DCUBEMAP_FACESPK7tagRECT_20:
	mov eax, [edx]
	mov byte [eax+0x24], 0x1
	add edx, 0x4
	cmp edx, [ecx]
	jnz _ZN20CDirect3DCubeTexture12AddDirtyRectE17_D3DCUBEMAP_FACESPK7tagRECT_20
_ZN20CDirect3DCubeTexture12AddDirtyRectE17_D3DCUBEMAP_FACESPK7tagRECT_10:
	xor eax, eax
	pop ebp
	ret


;CDirect3DCubeTexture::GetLevelDesc(unsigned int, _D3DSURFACE_DESC*)
_ZN20CDirect3DCubeTexture12GetLevelDescEjP16_D3DSURFACE_DESC:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, [edx+0x4c]
	add eax, [ebp+0xc]
	shl eax, 0x2
	add eax, [edx+0x7c]
	mov edx, [eax]
	mov ecx, [edx]
	mov eax, [ebp+0x10]
	mov [ebp+0xc], eax
	mov [ebp+0x8], edx
	mov ecx, [ecx+0x30]
	pop ebp
	jmp ecx
	nop


;CDirect3DCubeTexture::GetLevelCount()
_ZN20CDirect3DCubeTexture13GetLevelCountEv:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x48]
	pop ebp
	ret
	nop


;CDirect3DCubeTexture::GetPrivateData(_GUID const&, void*, unsigned long*)
_ZN20CDirect3DCubeTexture14GetPrivateDataERK5_GUIDPvPm:
	push ebp
	mov ebp, esp
	mov eax, 0x8876086c
	pop ebp
	ret


;CDirect3DCubeTexture::QueryInterface(_GUID const&, void**)
_ZN20CDirect3DCubeTexture14QueryInterfaceERK5_GUIDPPv:
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


;CDirect3DCubeTexture::SetPrivateData(_GUID const&, void const*, unsigned long, unsigned long)
_ZN20CDirect3DCubeTexture14SetPrivateDataERK5_GUIDPKvmm:
	push ebp
	mov ebp, esp
	mov eax, 0x8876086c
	pop ebp
	ret


;CDirect3DCubeTexture::FreePrivateData(_GUID const&)
_ZN20CDirect3DCubeTexture15FreePrivateDataERK5_GUID:
	push ebp
	mov ebp, esp
	mov eax, 0x8876086c
	pop ebp
	ret


;CDirect3DCubeTexture::GetCubeMapSurface(_D3DCUBEMAP_FACES, unsigned int, IDirect3DSurface9**)
_ZN20CDirect3DCubeTexture17GetCubeMapSurfaceE17_D3DCUBEMAP_FACESjPP17IDirect3DSurface9:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov ecx, [ebp+0x10]
	mov esi, [ebx+0x7c]
	mov edx, [ebx+0x80]
	sub edx, esi
	sar edx, 0x2
	mov eax, 0xaaaaaaab
	mul edx
	shr edx, 0x2
	cmp edx, ecx
	ja _ZN20CDirect3DCubeTexture17GetCubeMapSurfaceE17_D3DCUBEMAP_FACESjPP17IDirect3DSurface9_10
	mov eax, 0x8876086c
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_ZN20CDirect3DCubeTexture17GetCubeMapSurfaceE17_D3DCUBEMAP_FACESjPP17IDirect3DSurface9_10:
	mov eax, [ebp+0xc]
	add ecx, [ebx+eax*4+0x4c]
	mov eax, [esi+ecx*4]
	mov edx, [ebp+0x14]
	mov [edx], eax
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x4]
	xor eax, eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;CDirect3DCubeTexture::GenerateMipSubLevels()
_ZN20CDirect3DCubeTexture20GenerateMipSubLevelsEv:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;CDirect3DCubeTexture::GetAutoGenFilterType()
_ZN20CDirect3DCubeTexture20GetAutoGenFilterTypeEv:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	ret
	nop


;CDirect3DCubeTexture::SetAutoGenFilterType(_D3DTEXTUREFILTERTYPE)
_ZN20CDirect3DCubeTexture20SetAutoGenFilterTypeE21_D3DTEXTUREFILTERTYPE:
	push ebp
	mov ebp, esp
	mov eax, 0x8876086c
	pop ebp
	ret


;CDirect3DCubeTexture::UpdateOpenGLSurfaces(bool)
_ZN20CDirect3DCubeTexture20UpdateOpenGLSurfacesEb:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edi, [ebp+0x8]
	movzx eax, byte [ebp+0xc]
	mov [ebp-0x2d], al
	mov dword [ebp-0x2c], 0x0
	lea edx, [edi+0x7c]
	mov [ebp-0x34], edx
	mov ecx, [edi+0x7c]
_ZN20CDirect3DCubeTexture20UpdateOpenGLSurfacesEb_50:
	xor esi, esi
	jmp _ZN20CDirect3DCubeTexture20UpdateOpenGLSurfacesEb_10
_ZN20CDirect3DCubeTexture20UpdateOpenGLSurfacesEb_40:
	mov eax, [edi]
	lea edx, [ebp-0x1c]
	mov [esp+0xc], edx
	mov [esp+0x8], esi
	mov edx, [ebp-0x2c]
	mov [esp+0x4], edx
	mov [esp], edi
	call dword [eax+0x48]
	mov ebx, [ebp-0x1c]
	mov [esp], ebx
	call _ZNK16CDirect3DSurface7IsDirtyEv
	test al, al
	jnz _ZN20CDirect3DCubeTexture20UpdateOpenGLSurfacesEb_20
	cmp byte [ebp-0x2d], 0x0
	jz _ZN20CDirect3DCubeTexture20UpdateOpenGLSurfacesEb_30
_ZN20CDirect3DCubeTexture20UpdateOpenGLSurfacesEb_20:
	movzx eax, byte [ebp-0x2d]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZN16CDirect3DSurface25UpdateOpenGLSurfaceObjectEb
	mov byte [ebx+0x24], 0x0
_ZN20CDirect3DCubeTexture20UpdateOpenGLSurfacesEb_30:
	mov eax, [ebp-0x1c]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	add esi, 0x1
	mov ecx, [edi+0x7c]
_ZN20CDirect3DCubeTexture20UpdateOpenGLSurfacesEb_10:
	mov eax, [ebp-0x34]
	mov edx, [eax+0x4]
	sub edx, ecx
	sar edx, 0x2
	mov eax, 0xaaaaaaab
	mul edx
	shr edx, 0x2
	cmp esi, edx
	jb _ZN20CDirect3DCubeTexture20UpdateOpenGLSurfacesEb_40
	add dword [ebp-0x2c], 0x1
	cmp dword [ebp-0x2c], 0x6
	jnz _ZN20CDirect3DCubeTexture20UpdateOpenGLSurfacesEb_50
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;CDirect3DCubeTexture::AddRef()
_ZN20CDirect3DCubeTexture6AddRefEv:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, [edx+0x40]
	add eax, 0x1
	mov [edx+0x40], eax
	pop ebp
	ret
	nop


;CDirect3DCubeTexture::GetLOD()
_ZN20CDirect3DCubeTexture6GetLODEv:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	ret
	nop


;CDirect3DCubeTexture::SetLOD(unsigned long)
_ZN20CDirect3DCubeTexture6SetLODEm:
	push ebp
	mov ebp, esp
	mov eax, 0x8876086c
	pop ebp
	ret


;CDirect3DCubeTexture::GetType()
_ZN20CDirect3DCubeTexture7GetTypeEv:
	push ebp
	mov ebp, esp
	mov eax, 0x5
	pop ebp
	ret


;CDirect3DCubeTexture::PreLoad()
_ZN20CDirect3DCubeTexture7PreLoadEv:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;CDirect3DCubeTexture::Release()
_ZN20CDirect3DCubeTexture7ReleaseEv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov edx, [ebp+0x8]
	mov ebx, [edx+0x40]
	sub ebx, 0x1
	mov [edx+0x40], ebx
	test ebx, ebx
	jnz _ZN20CDirect3DCubeTexture7ReleaseEv_10
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x5c]
_ZN20CDirect3DCubeTexture7ReleaseEv_10:
	mov eax, ebx
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;CDirect3DCubeTexture::LockRect(_D3DCUBEMAP_FACES, unsigned int, _D3DLOCKED_RECT*, tagRECT const*, unsigned long)
_ZN20CDirect3DCubeTexture8LockRectE17_D3DCUBEMAP_FACESjP15_D3DLOCKED_RECTPK7tagRECTm:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xc
	mov ecx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov [ebp-0x10], eax
	mov ebx, [ebp+0x10]
	mov eax, [ebp+0x14]
	mov [ebp-0x14], eax
	mov eax, [ebp+0x18]
	mov [ebp-0x18], eax
	mov edi, [ebp+0x1c]
	mov esi, [ecx+0x7c]
	mov edx, [ecx+0x80]
	sub edx, esi
	sar edx, 0x2
	mov eax, 0xaaaaaaab
	mul edx
	shr edx, 0x2
	cmp edx, ebx
	ja _ZN20CDirect3DCubeTexture8LockRectE17_D3DCUBEMAP_FACESjP15_D3DLOCKED_RECTPK7tagRECTm_10
	mov eax, 0x8876086c
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN20CDirect3DCubeTexture8LockRectE17_D3DCUBEMAP_FACESjP15_D3DLOCKED_RECTPK7tagRECTm_10:
	mov eax, [ebp-0x10]
	add ebx, [ecx+eax*4+0x4c]
	mov eax, [esi+ebx*4]
	mov edx, [eax]
	mov [ebp+0x14], edi
	mov ecx, [ebp-0x18]
	mov [ebp+0x10], ecx
	mov ecx, [ebp-0x14]
	mov [ebp+0xc], ecx
	mov [ebp+0x8], eax
	mov ecx, [edx+0x34]
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp ecx
	nop


;CDirect3DCubeTexture::GetDevice(IDirect3DDevice9**)
_ZN20CDirect3DCubeTexture9GetDeviceEPP16IDirect3DDevice9:
	push ebp
	mov ebp, esp
	mov eax, 0x8876086c
	pop ebp
	ret


;CDirect3DCubeTexture::CDirect3DCubeTexture(CDirect3DDevice*, unsigned int, unsigned int, unsigned long, _D3DFORMAT, _D3DPOOL)
_ZN20CDirect3DCubeTextureC1EP15CDirect3DDevicejjm10_D3DFORMAT8_D3DPOOL:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
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
	mov eax, [0xd5cc030]
	add eax, 0x8
	mov [edx], eax
	add edx, 0x4
	mov [ebp-0x54], edx
	mov dword [esp+0x10], 0x0
	mov eax, [ebp+0x10]
	mov [esp+0xc], eax
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x8513
	mov [esp], edx
	call _ZN14COpenGLTextureC2Emjjj
	mov edx, [ebp+0x8]
	mov dword [edx], _ZTV20CDirect3DCubeTexture+0x8
	mov dword [edx+0x4], _ZTV20CDirect3DCubeTexture+0x70
	mov eax, [ebp+0xc]
	mov [edx+0x3c], eax
	mov dword [edx+0x40], 0x0
	mov eax, [ebp+0x10]
	mov [edx+0x44], eax
	mov dword [edx+0x48], 0x0
	add edx, 0x64
	mov [ebp-0x4c], edx
	mov dword [esp+0x8], 0x20
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call _ZN13CMemoryBufferC1Ejj
	mov edx, [ebp+0x8]
	add edx, 0x7c
	mov [ebp-0x44], edx
	mov eax, [ebp+0x8]
	mov dword [eax+0x7c], 0x0
	mov dword [edx+0x4], 0x0
	mov dword [edx+0x8], 0x0
	mov edx, [ebp+0x20]
	mov [eax+0x88], edx
	mov eax, [ebp+0x14]
	test eax, eax
	jz _ZN20CDirect3DCubeTextureC1EP15CDirect3DDevicejjm10_D3DFORMAT8_D3DPOOL_10
	mov edx, [ebp+0x14]
_ZN20CDirect3DCubeTextureC1EP15CDirect3DDevicejjm10_D3DFORMAT8_D3DPOOL_130:
	lea esi, [edx+edx*2]
	lea eax, [esi+esi]
	mov dword [ebp-0x1c], 0x0
	mov edx, [ebp+0x8]
	mov ebx, [edx+0x7c]
	mov edx, [ebp-0x44]
	mov ecx, [edx+0x4]
	mov edx, ecx
	sub edx, ebx
	sar edx, 0x2
	cmp eax, edx
	jae _ZN20CDirect3DCubeTextureC1EP15CDirect3DDevicejjm10_D3DFORMAT8_D3DPOOL_20
	lea eax, [ebx+esi*8]
	mov [esp+0x8], ecx
	mov [esp+0x4], eax
	mov eax, [ebp-0x44]
	mov [esp], eax
	call _ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPS1_S3_EES7_
_ZN20CDirect3DCubeTextureC1EP15CDirect3DDevicejjm10_D3DFORMAT8_D3DPOOL_120:
	xor edi, edi
	mov dword [ebp-0x3c], 0x0
	jmp _ZN20CDirect3DCubeTextureC1EP15CDirect3DDevicejjm10_D3DFORMAT8_D3DPOOL_30
_ZN20CDirect3DCubeTextureC1EP15CDirect3DDevicejjm10_D3DFORMAT8_D3DPOOL_50:
	add dword [ebp-0x3c], 0x1
	cmp dword [ebp-0x3c], 0x6
	jz _ZN20CDirect3DCubeTextureC1EP15CDirect3DDevicejjm10_D3DFORMAT8_D3DPOOL_40
_ZN20CDirect3DCubeTextureC1EP15CDirect3DDevicejjm10_D3DFORMAT8_D3DPOOL_30:
	mov eax, [ebp+0x14]
	test eax, eax
	jz _ZN20CDirect3DCubeTextureC1EP15CDirect3DDevicejjm10_D3DFORMAT8_D3DPOOL_50
	mov ebx, [ebp+0x10]
	xor esi, esi
_ZN20CDirect3DCubeTextureC1EP15CDirect3DDevicejjm10_D3DFORMAT8_D3DPOOL_60:
	mov eax, [ebp+0x1c]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], ebx
	mov [esp], ebx
	call _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT
	add eax, 0x1f
	and eax, 0xffffffe0
	add edi, eax
	add esi, 0x1
	shr ebx, 1
	cmp [ebp+0x14], esi
	jnz _ZN20CDirect3DCubeTextureC1EP15CDirect3DDevicejjm10_D3DFORMAT8_D3DPOOL_60
	add dword [ebp-0x3c], 0x1
	cmp dword [ebp-0x3c], 0x6
	jnz _ZN20CDirect3DCubeTextureC1EP15CDirect3DDevicejjm10_D3DFORMAT8_D3DPOOL_30
_ZN20CDirect3DCubeTextureC1EP15CDirect3DDevicejjm10_D3DFORMAT8_D3DPOOL_40:
	mov dword [esp+0x8], 0x20
	mov [esp+0x4], edi
	mov edx, [ebp-0x4c]
	mov [esp], edx
	call _ZN13CMemoryBuffer6ResizeEjj
	mov edx, [ebp-0x4c]
	mov eax, [edx+0x8]
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov dword [esp], 0x8514
	call glGetIntegerv
	mov edx, [ebp-0x54]
	mov eax, [edx+0xc]
	mov eax, [eax]
	mov [esp+0x4], eax
	mov dword [esp], 0x8513
	call glBindTexture
	mov eax, [ebp+0x8]
	mov [ebp-0x2c], eax
	mov dword [ebp-0x40], 0x0
	mov dword [ebp-0x38], 0x0
	mov edx, eax
	jmp _ZN20CDirect3DCubeTextureC1EP15CDirect3DDevicejjm10_D3DFORMAT8_D3DPOOL_70
_ZN20CDirect3DCubeTextureC1EP15CDirect3DDevicejjm10_D3DFORMAT8_D3DPOOL_90:
	add dword [ebp-0x38], 0x1
	add dword [ebp-0x2c], 0x4
	cmp dword [ebp-0x38], 0x6
	jz _ZN20CDirect3DCubeTextureC1EP15CDirect3DDevicejjm10_D3DFORMAT8_D3DPOOL_80
_ZN20CDirect3DCubeTextureC1EP15CDirect3DDevicejjm10_D3DFORMAT8_D3DPOOL_110:
	mov edx, [ebp-0x2c]
_ZN20CDirect3DCubeTextureC1EP15CDirect3DDevicejjm10_D3DFORMAT8_D3DPOOL_70:
	mov eax, [ebp+0x14]
	imul eax, [ebp-0x38]
	mov [edx+0x4c], eax
	mov esi, [ebp+0x14]
	test esi, esi
	jz _ZN20CDirect3DCubeTextureC1EP15CDirect3DDevicejjm10_D3DFORMAT8_D3DPOOL_90
	shl eax, 0x2
	mov [ebp-0x30], eax
	mov edi, [ebp+0x10]
	mov dword [ebp-0x34], 0x0
_ZN20CDirect3DCubeTextureC1EP15CDirect3DDevicejjm10_D3DFORMAT8_D3DPOOL_100:
	mov eax, [ebp+0x1c]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], edi
	mov [esp], edi
	call _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT
	lea esi, [eax+0x1f]
	and esi, 0xffffffe0
	mov eax, [ebp-0x30]
	mov edx, [ebp-0x44]
	add eax, [edx]
	mov [ebp-0x50], eax
	mov eax, [ebp-0x40]
	mov edx, [ebp-0x4c]
	add eax, [edx+0x8]
	mov [ebp-0x48], eax
	mov dword [esp], 0x40
	call _Znwm
	mov ebx, eax
	mov edx, [ebp-0x54]
	mov [esp+0x24], edx
	mov eax, [ebp-0x48]
	mov [esp+0x20], eax
	mov edx, [ebp+0x20]
	mov [esp+0x1c], edx
	mov eax, [ebp+0x1c]
	mov [esp+0x18], eax
	mov [esp+0x14], edi
	mov [esp+0x10], edi
	mov edx, [ebp-0x34]
	mov [esp+0xc], edx
	mov eax, [ebp-0x38]
	add eax, 0x8515
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call _ZN16CDirect3DSurfaceC1E11SurfaceTypemjjj10_D3DFORMAT8_D3DPOOLPvP14COpenGLTexture
	mov eax, [ebp-0x50]
	mov [eax], ebx
	add [ebp-0x40], esi
	add dword [ebp-0x34], 0x1
	shr edi, 1
	add dword [ebp-0x30], 0x4
	mov edx, [ebp-0x34]
	cmp [ebp+0x14], edx
	jnz _ZN20CDirect3DCubeTextureC1EP15CDirect3DDevicejjm10_D3DFORMAT8_D3DPOOL_100
	add dword [ebp-0x38], 0x1
	add dword [ebp-0x2c], 0x4
	cmp dword [ebp-0x38], 0x6
	jnz _ZN20CDirect3DCubeTextureC1EP15CDirect3DDevicejjm10_D3DFORMAT8_D3DPOOL_110
_ZN20CDirect3DCubeTextureC1EP15CDirect3DDevicejjm10_D3DFORMAT8_D3DPOOL_80:
	mov eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov dword [esp], 0x8513
	call glBindTexture
	mov edx, [ebp+0x14]
	mov eax, [ebp+0x8]
	mov [eax+0x48], edx
	add dword [eax+0x40], 0x1
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN20CDirect3DCubeTextureC1EP15CDirect3DDevicejjm10_D3DFORMAT8_D3DPOOL_20:
	sub eax, edx
	lea edx, [ebp-0x1c]
	mov [esp+0xc], edx
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov edx, [ebp-0x44]
	mov [esp], edx
	call _ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_
	jmp _ZN20CDirect3DCubeTextureC1EP15CDirect3DDevicejjm10_D3DFORMAT8_D3DPOOL_120
_ZN20CDirect3DCubeTextureC1EP15CDirect3DDevicejjm10_D3DFORMAT8_D3DPOOL_10:
	mov dword [esp+0x8], 0x1
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov [esp], eax
	call _ZN14MacOpenGLUtils19GetNumTextureLevelsEjjj
	mov [ebp+0x14], eax
	mov edx, eax
	jmp _ZN20CDirect3DCubeTextureC1EP15CDirect3DDevicejjm10_D3DFORMAT8_D3DPOOL_130
	mov esi, eax
_ZN20CDirect3DCubeTextureC1EP15CDirect3DDevicejjm10_D3DFORMAT8_D3DPOOL_170:
	mov eax, [ebp-0x54]
	mov [esp], eax
	call _ZN14COpenGLTextureD2Ev
	mov [esp], esi
	call _Unwind_Resume
	mov esi, eax
	mov [esp], ebx
	call _ZdlPv
_ZN20CDirect3DCubeTextureC1EP15CDirect3DDevicejjm10_D3DFORMAT8_D3DPOOL_180:
	mov eax, [ebp-0x44]
	mov ecx, [eax+0x4]
	mov edx, [eax]
	mov eax, edx
	cmp ecx, edx
	jz _ZN20CDirect3DCubeTextureC1EP15CDirect3DDevicejjm10_D3DFORMAT8_D3DPOOL_140
_ZN20CDirect3DCubeTextureC1EP15CDirect3DDevicejjm10_D3DFORMAT8_D3DPOOL_150:
	add eax, 0x4
	cmp ecx, eax
	jnz _ZN20CDirect3DCubeTextureC1EP15CDirect3DDevicejjm10_D3DFORMAT8_D3DPOOL_150
_ZN20CDirect3DCubeTextureC1EP15CDirect3DDevicejjm10_D3DFORMAT8_D3DPOOL_140:
	test edx, edx
	jz _ZN20CDirect3DCubeTextureC1EP15CDirect3DDevicejjm10_D3DFORMAT8_D3DPOOL_160
	mov [esp], edx
	call _ZdlPv
_ZN20CDirect3DCubeTextureC1EP15CDirect3DDevicejjm10_D3DFORMAT8_D3DPOOL_160:
	mov edx, [ebp-0x4c]
	mov [esp], edx
	call _ZN13CMemoryBufferD1Ev
	jmp _ZN20CDirect3DCubeTextureC1EP15CDirect3DDevicejjm10_D3DFORMAT8_D3DPOOL_170
	mov esi, eax
	jmp _ZN20CDirect3DCubeTextureC1EP15CDirect3DDevicejjm10_D3DFORMAT8_D3DPOOL_180
	add [eax], al


;CDirect3DCubeTexture::~CDirect3DCubeTexture()
_ZN20CDirect3DCubeTextureD0Ev:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov dword [edi], _ZTV20CDirect3DCubeTexture+0x8
	mov dword [edi+0x4], _ZTV20CDirect3DCubeTexture+0x70
	lea eax, [edi+0x4]
	mov [ebp-0x1c], eax
	mov [esp], eax
	lea edx, [edi+0x7c]
	mov [ebp-0x20], edx
	call _ZN14COpenGLTexture16ReleaseResourcesEv
	mov ebx, [edi+0x7c]
	lea esi, [edi+0x80]
	cmp ebx, [edi+0x80]
	jz _ZN20CDirect3DCubeTextureD0Ev_10
_ZN20CDirect3DCubeTextureD0Ev_20:
	mov eax, [ebx]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	add ebx, 0x4
	cmp ebx, [esi]
	jnz _ZN20CDirect3DCubeTextureD0Ev_20
_ZN20CDirect3DCubeTextureD0Ev_10:
	mov eax, [ebp-0x20]
	mov edx, [eax+0x4]
	mov ecx, [eax]
	mov eax, ecx
	cmp edx, ecx
	jz _ZN20CDirect3DCubeTextureD0Ev_30
_ZN20CDirect3DCubeTextureD0Ev_40:
	add eax, 0x4
	cmp edx, eax
	jnz _ZN20CDirect3DCubeTextureD0Ev_40
_ZN20CDirect3DCubeTextureD0Ev_30:
	test ecx, ecx
	jz _ZN20CDirect3DCubeTextureD0Ev_50
	mov [esp], ecx
	call _ZdlPv
_ZN20CDirect3DCubeTextureD0Ev_50:
	lea eax, [edi+0x64]
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
	mov eax, [edi+0x7c]
	cmp edx, eax
	jz _ZN20CDirect3DCubeTextureD0Ev_60
_ZN20CDirect3DCubeTextureD0Ev_70:
	add eax, 0x4
	cmp edx, eax
	jnz _ZN20CDirect3DCubeTextureD0Ev_70
_ZN20CDirect3DCubeTextureD0Ev_60:
	mov edx, [ebp-0x20]
	mov eax, [edx]
	test eax, eax
	jz _ZN20CDirect3DCubeTextureD0Ev_80
	mov [esp], eax
	call _ZdlPv
_ZN20CDirect3DCubeTextureD0Ev_80:
	lea eax, [edi+0x64]
	mov [esp], eax
	call _ZN13CMemoryBufferD1Ev
	jmp _ZN20CDirect3DCubeTextureD0Ev_90
	mov ebx, eax
_ZN20CDirect3DCubeTextureD0Ev_90:
	mov edx, [ebp-0x1c]
	mov [esp], edx
	call _ZN14COpenGLTextureD2Ev
	mov [esp], ebx
	call _Unwind_Resume


;CDirect3DCubeTexture::~CDirect3DCubeTexture()
_ZN20CDirect3DCubeTextureD1Ev:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov dword [edi], _ZTV20CDirect3DCubeTexture+0x8
	mov dword [edi+0x4], _ZTV20CDirect3DCubeTexture+0x70
	lea eax, [edi+0x4]
	mov [ebp-0x1c], eax
	mov [esp], eax
	lea edx, [edi+0x7c]
	mov [ebp-0x20], edx
	call _ZN14COpenGLTexture16ReleaseResourcesEv
	mov ebx, [edi+0x7c]
	lea esi, [edi+0x80]
	cmp ebx, [edi+0x80]
	jz _ZN20CDirect3DCubeTextureD1Ev_10
_ZN20CDirect3DCubeTextureD1Ev_20:
	mov eax, [ebx]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	add ebx, 0x4
	cmp ebx, [esi]
	jnz _ZN20CDirect3DCubeTextureD1Ev_20
_ZN20CDirect3DCubeTextureD1Ev_10:
	mov eax, [ebp-0x20]
	mov edx, [eax+0x4]
	mov ecx, [eax]
	mov eax, ecx
	cmp edx, ecx
	jz _ZN20CDirect3DCubeTextureD1Ev_30
_ZN20CDirect3DCubeTextureD1Ev_40:
	add eax, 0x4
	cmp edx, eax
	jnz _ZN20CDirect3DCubeTextureD1Ev_40
_ZN20CDirect3DCubeTextureD1Ev_30:
	test ecx, ecx
	jz _ZN20CDirect3DCubeTextureD1Ev_50
	mov [esp], ecx
	call _ZdlPv
_ZN20CDirect3DCubeTextureD1Ev_50:
	lea eax, [edi+0x64]
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
	mov eax, [edi+0x7c]
	cmp edx, eax
	jz _ZN20CDirect3DCubeTextureD1Ev_60
_ZN20CDirect3DCubeTextureD1Ev_70:
	add eax, 0x4
	cmp edx, eax
	jnz _ZN20CDirect3DCubeTextureD1Ev_70
_ZN20CDirect3DCubeTextureD1Ev_60:
	mov edx, [ebp-0x20]
	mov eax, [edx]
	test eax, eax
	jz _ZN20CDirect3DCubeTextureD1Ev_80
	mov [esp], eax
	call _ZdlPv
_ZN20CDirect3DCubeTextureD1Ev_80:
	lea eax, [edi+0x64]
	mov [esp], eax
	call _ZN13CMemoryBufferD1Ev
	jmp _ZN20CDirect3DCubeTextureD1Ev_90
	mov ebx, eax
_ZN20CDirect3DCubeTextureD1Ev_90:
	mov edx, [ebp-0x1c]
	mov [esp], edx
	call _ZN14COpenGLTextureD2Ev
	mov [esp], ebx
	call _Unwind_Resume


;std::vector<CDirect3DSurface*, std::allocator<CDirect3DSurface*> >::_M_fill_insert(__gnu_cxx::__normal_iterator<CDirect3DSurface**, std::vector<CDirect3DSurface*, std::allocator<CDirect3DSurface*> > >, unsigned long, CDirect3DSurface* const&)
_ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov eax, [ebp+0xc]
	mov [ebp-0x30], eax
	mov ecx, [ebp+0x10]
	test ecx, ecx
	jz _ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1__10
	mov edx, [ebp+0x8]
	mov esi, [edx+0x4]
	mov ebx, esi
	mov eax, [edx+0x8]
	sub eax, esi
	sar eax, 0x2
	cmp ecx, eax
	jbe _ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1__20
	mov ebx, edx
	mov edx, esi
	sub edx, [ebx]
	sar edx, 0x2
	mov [ebp-0x1c], edx
	mov eax, 0x3fffffff
	sub eax, edx
	cmp ecx, eax
	ja _ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1__30
	cmp ecx, edx
	jbe _ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1__40
	lea eax, [ebp+0x10]
	mov ecx, [eax]
	lea eax, [edx+ecx]
	cmp edx, eax
	jbe _ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1__50
_ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1__150:
	mov eax, 0x3fffffff
_ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1__160:
	shl eax, 0x2
	mov [ebp-0x34], eax
	mov [esp], eax
	call _Znwm
	mov [ebp-0x3c], eax
	mov ebx, [ebp+0x8]
	mov eax, [ebx]
	mov ebx, [ebp+0xc]
	sub ebx, eax
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	mov eax, [ebp-0x3c]
	mov [esp], eax
	call memmove
	mov edx, [ebp-0x3c]
	lea eax, [ebx+edx]
	mov ecx, [ebp+0x10]
	mov edx, eax
	mov ebx, [ebp+0x14]
	mov edi, [ebx]
	test ecx, ecx
	jz _ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1__60
	xor esi, esi
_ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1__70:
	mov [edx], edi
	add edx, 0x4
	add esi, 0x1
	cmp esi, ecx
	jnz _ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1__70
	mov ecx, [ebp+0x10]
_ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1__60:
	lea esi, [eax+ecx*4]
	mov eax, [ebp+0x8]
	mov ebx, [eax+0x4]
	sub ebx, [ebp-0x30]
	mov [esp+0x8], ebx
	mov edx, [ebp-0x30]
	mov [esp+0x4], edx
	mov [esp], esi
	call memmove
	add ebx, esi
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x4]
	mov ecx, [ecx]
	cmp edx, ecx
	jz _ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1__80
	mov eax, ecx
_ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1__90:
	add eax, 0x4
	cmp edx, eax
	jnz _ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1__90
_ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1__80:
	test ecx, ecx
	jz _ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1__100
	mov [esp], ecx
	call _ZdlPv
_ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1__100:
	mov ecx, [ebp-0x3c]
	mov edx, [ebp+0x8]
	mov [edx], ecx
	mov [edx+0x4], ebx
	mov eax, ecx
	add eax, [ebp-0x34]
	mov [edx+0x8], eax
_ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1__10:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1__20:
	mov eax, [ebp+0x14]
	mov eax, [eax]
	mov [ebp-0x38], eax
	mov edi, esi
	sub edi, [ebp-0x30]
	sar edi, 0x2
	mov [ebp-0x2c], esi
	cmp ecx, edi
	jb _ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1__110
	mov edx, ecx
	sub edx, edi
	jnz _ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1__120
	mov eax, [ebp+0x8]
_ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1__180:
	sub ecx, edi
	lea esi, [esi+ecx*4]
	mov [eax+0x4], esi
	mov eax, [ebp-0x2c]
	sub eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], esi
	call memmove
	lea esi, [edi*4]
	mov ecx, [ebp+0x8]
	add [ecx+0x4], esi
	mov edx, [ebp+0xc]
	cmp [ebp-0x2c], edx
	jz _ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1__10
	mov eax, edx
	jmp _ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1__130
_ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1__140:
	mov edx, eax
_ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1__130:
	mov ecx, [ebp-0x38]
	mov [eax], ecx
	lea eax, [edx+0x4]
	cmp [ebp-0x2c], eax
	jnz _ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1__140
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1__40:
	lea eax, [ebp-0x1c]
	mov ecx, [eax]
	lea eax, [edx+ecx]
	cmp edx, eax
	ja _ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1__150
_ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1__50:
	cmp eax, 0x3fffffff
	jbe _ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1__160
	call _ZSt17__throw_bad_allocv
_ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1__120:
	xor eax, eax
_ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1__170:
	mov ecx, [ebp-0x38]
	mov [ebx], ecx
	add ebx, 0x4
	add eax, 0x1
	cmp eax, edx
	jnz _ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1__170
	mov ecx, [ebp+0x10]
	mov ebx, [ebp+0x8]
	mov esi, [ebx+0x4]
	mov eax, ebx
	jmp _ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1__180
_ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1__110:
	lea eax, [ecx*4]
	mov edx, esi
	sub edx, eax
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], esi
	call memmove
	mov eax, [ebp+0x10]
	shl eax, 0x2
	mov edx, [ebp+0x8]
	add [edx+0x4], eax
	mov ecx, esi
	sub ecx, eax
	mov eax, ecx
	sub eax, [ebp-0x30]
	and eax, 0xfffffffc
	mov [esp+0x8], eax
	mov edx, [ebp-0x30]
	mov [esp+0x4], edx
	sub ebx, eax
	mov [esp], ebx
	call memmove
	mov eax, [ebp+0x10]
	mov ebx, [ebp-0x30]
	lea ecx, [ebx+eax*4]
	mov eax, ebx
	cmp ecx, ebx
	jz _ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1__10
	mov edx, ebx
	jmp _ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1__190
_ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1__200:
	mov edx, eax
_ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1__190:
	mov ebx, [ebp-0x38]
	mov [edx], ebx
	add eax, 0x4
	cmp ecx, eax
	jnz _ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1__200
	jmp _ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1__10
_ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1__30:
	mov dword [esp], _cstring_vector_m_fill_in
	call _ZSt20__throw_length_errorPKc


;std::vector<CDirect3DSurface*, std::allocator<CDirect3DSurface*> >::erase(__gnu_cxx::__normal_iterator<CDirect3DSurface**, std::vector<CDirect3DSurface*, std::allocator<CDirect3DSurface*> > >, __gnu_cxx::__normal_iterator<CDirect3DSurface**, std::vector<CDirect3DSurface*, std::allocator<CDirect3DSurface*> > >)
_ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPS1_S3_EES7_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0xc]
	mov esi, [ebp+0x10]
	mov eax, [ebp+0x8]
	mov ebx, [eax+0x4]
	sub ebx, esi
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov [esp], edi
	call memmove
	mov eax, [ebp+0x8]
	mov edx, [eax+0x4]
	lea eax, [edi+ebx]
	cmp edx, eax
	jz _ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPS1_S3_EES7__10
_ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPS1_S3_EES7__20:
	add eax, 0x4
	cmp edx, eax
	jnz _ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPS1_S3_EES7__20
_ZNSt6vectorIP16CDirect3DSurfaceSaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPS1_S3_EES7__10:
	sub esi, edi
	and esi, 0xfffffffc
	sub edx, esi
	mov eax, [ebp+0x8]
	mov [eax+0x4], edx
	mov eax, edi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;non-virtual thunk to CDirect3DCubeTexture::~CDirect3DCubeTexture()
_ZThn4_N20CDirect3DCubeTextureD0Ev:
	add dword [esp+0x4], 0xfffffffc
	jmp _ZN20CDirect3DCubeTextureD0Ev


;non-virtual thunk to CDirect3DCubeTexture::~CDirect3DCubeTexture()
_ZThn4_N20CDirect3DCubeTextureD1Ev:
	add dword [esp+0x4], 0xfffffffc
	jmp _ZN20CDirect3DCubeTextureD1Ev


;Initialized global or static variables of CDirect3DCubeTexture:
SECTION .data


;Initialized constant data of CDirect3DCubeTexture:
SECTION .rdata
;VTypeInfoTable for IDirect3DResource9:
_ZTI18IDirect3DResource9: dd 0x8, _cstring_18idirect3dresou, _ZTI8IUnknown, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, _ZTI21IDirect3DCubeTexture9, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, _ZTI21IDirect3DBaseTexture9, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, _ZTI18IDirect3DResource9, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
;VTypeInfoTable for CDirect3DCubeTexture:
_ZTI20CDirect3DCubeTexture: dd 0x8, _cstring_20cdirect3dcubet, 0x0, 0x2, _ZTI21IDirect3DCubeTexture9, 0x2, _ZTI14COpenGLTexture, 0x402
;VTypeInfoTable for IDirect3DBaseTexture9:
_ZTI21IDirect3DBaseTexture9: dd 0x8, _cstring_21idirect3dbaset, _ZTI18IDirect3DResource9, 0x0, 0x0, 0x0, 0x0, 0x0
;VTypeInfoTable for IDirect3DCubeTexture9:
_ZTI21IDirect3DCubeTexture9: dd 0x8, _cstring_21idirect3dcubet, _ZTI21IDirect3DBaseTexture9, 0x0, 0x0, 0x0, 0x0, 0x0
;VTable for CDirect3DCubeTexture:
_ZTV20CDirect3DCubeTexture: dd 0x0, _ZTI20CDirect3DCubeTexture, _ZN20CDirect3DCubeTexture14QueryInterfaceERK5_GUIDPPv, _ZN20CDirect3DCubeTexture6AddRefEv, _ZN20CDirect3DCubeTexture7ReleaseEv, _ZN20CDirect3DCubeTexture9GetDeviceEPP16IDirect3DDevice9, _ZN20CDirect3DCubeTexture14SetPrivateDataERK5_GUIDPKvmm, _ZN20CDirect3DCubeTexture14GetPrivateDataERK5_GUIDPvPm, _ZN20CDirect3DCubeTexture15FreePrivateDataERK5_GUID, _ZN20CDirect3DCubeTexture11SetPriorityEm, _ZN20CDirect3DCubeTexture11GetPriorityEv, _ZN20CDirect3DCubeTexture7PreLoadEv, _ZN20CDirect3DCubeTexture7GetTypeEv, _ZN20CDirect3DCubeTexture6SetLODEm, _ZN20CDirect3DCubeTexture6GetLODEv, _ZN20CDirect3DCubeTexture13GetLevelCountEv, _ZN20CDirect3DCubeTexture20SetAutoGenFilterTypeE21_D3DTEXTUREFILTERTYPE, _ZN20CDirect3DCubeTexture20GetAutoGenFilterTypeEv, _ZN20CDirect3DCubeTexture20GenerateMipSubLevelsEv, _ZN20CDirect3DCubeTexture12GetLevelDescEjP16_D3DSURFACE_DESC, _ZN20CDirect3DCubeTexture17GetCubeMapSurfaceE17_D3DCUBEMAP_FACESjPP17IDirect3DSurface9, _ZN20CDirect3DCubeTexture8LockRectE17_D3DCUBEMAP_FACESjP15_D3DLOCKED_RECTPK7tagRECTm, _ZN20CDirect3DCubeTexture10UnlockRectE17_D3DCUBEMAP_FACESj, _ZN20CDirect3DCubeTexture12AddDirtyRectE17_D3DCUBEMAP_FACESPK7tagRECT, _ZN20CDirect3DCubeTextureD1Ev, _ZN20CDirect3DCubeTextureD0Ev, 0xfffffffc, _ZTI20CDirect3DCubeTexture, _ZThn4_N20CDirect3DCubeTextureD1Ev, _ZThn4_N20CDirect3DCubeTextureD0Ev, _ZN14COpenGLTexture20UpdateOpenGLSurfacesEv, 0x0


;Zero initialized global or static variables of CDirect3DCubeTexture:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_vector_m_fill_in:		db "vector::_M_fill_insert",0
_cstring_18idirect3dresou:		db "18IDirect3DResource9",0
_cstring_20cdirect3dcubet:		db "20CDirect3DCubeTexture",0
_cstring_21idirect3dbaset:		db "21IDirect3DBaseTexture9",0
_cstring_21idirect3dcubet:		db "21IDirect3DCubeTexture9",0



;All constant floats and doubles:
SECTION .rdata

