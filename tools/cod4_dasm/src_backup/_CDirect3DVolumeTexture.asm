;Imports of CDirect3DVolumeTexture:
	extern _ZN14MacOpenGLUtils12IsCompressedE10_D3DFORMAT
	extern _ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT
	extern glGetIntegerv
	extern glBindTexture
	extern _ZN7COpenGL7sOpenGLE
	extern _ZN7COpenGL14UpdateTexImageE10_D3DFORMATjjjmlmmmPKv
	extern _ZN14MacOpenGLUtils20GetOpenGLTextureTypeERbRmS1_S1_10_D3DFORMAT
	extern _ZN7COpenGL12LoadTexImageE10_D3DFORMATjjjmlmmmPKv
	extern _ZdlPv
	extern _ZNSt6vectorI7_D3DBOXSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPS0_S2_EES6_
	extern _ZN7COpenGL23UpdateTexImage3DPartialE10_D3DFORMATjjjRKSt6vectorI7_D3DBOXSaIS2_EEmlmmmPKv
	extern _ZN14COpenGLTextureC2Emjjj
	extern _ZN13CMemoryBufferC1Ejj
	extern _ZN14MacOpenGLUtils19GetNumTextureLevelsEjjj
	extern _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT
	extern _ZN13CMemoryBuffer6ResizeEjj
	extern memset
	extern _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT
	extern _Znwm
	extern _ZN14COpenGLTextureD2Ev
	extern _Unwind_Resume
	extern _ZN13CMemoryBufferD1Ev
	extern _ZN14COpenGLTexture16ReleaseResourcesEv
	extern _ZSt17__throw_bad_allocv
	extern _ZSt20__throw_length_errorPKc
	extern memmove
	extern _ZN14COpenGLTexture20UpdateOpenGLSurfacesEv

;Exports of CDirect3DVolumeTexture:
	global _ZN15CDirect3DVolume12GetContainerERK5_GUIDPPv
	global _ZN15CDirect3DVolume14GetPrivateDataERK5_GUIDPvPm
	global _ZN15CDirect3DVolume14QueryInterfaceERK5_GUIDPPv
	global _ZN15CDirect3DVolume14SetPrivateDataERK5_GUIDPKvmm
	global _ZN15CDirect3DVolume15FreePrivateDataERK5_GUID
	global _ZN15CDirect3DVolume6AddRefEv
	global _ZN15CDirect3DVolume7GetDescEP15_D3DVOLUME_DESC
	global _ZN15CDirect3DVolume7LockBoxEP14_D3DLOCKED_BOXPK7_D3DBOXm
	global _ZN15CDirect3DVolume7ReleaseEv
	global _ZN15CDirect3DVolume9GetDeviceEPP16IDirect3DDevice9
	global _ZN15CDirect3DVolume9UnlockBoxEv
	global _ZN15CDirect3DVolumeC1Ejjjj10_D3DFORMAT8_D3DPOOLPvP14COpenGLTexture
	global _ZN15CDirect3DVolumeD0Ev
	global _ZN15CDirect3DVolumeD1Ev
	global _ZN22CDirect3DVolumeTexture11AddDirtyBoxEPK7_D3DBOX
	global _ZN22CDirect3DVolumeTexture11GetPriorityEv
	global _ZN22CDirect3DVolumeTexture11SetPriorityEm
	global _ZN22CDirect3DVolumeTexture12GetLevelDescEjP15_D3DVOLUME_DESC
	global _ZN22CDirect3DVolumeTexture13GetLevelCountEv
	global _ZN22CDirect3DVolumeTexture14GetPrivateDataERK5_GUIDPvPm
	global _ZN22CDirect3DVolumeTexture14GetVolumeLevelEjPP16IDirect3DVolume9
	global _ZN22CDirect3DVolumeTexture14QueryInterfaceERK5_GUIDPPv
	global _ZN22CDirect3DVolumeTexture14SetPrivateDataERK5_GUIDPKvmm
	global _ZN22CDirect3DVolumeTexture15FreePrivateDataERK5_GUID
	global _ZN22CDirect3DVolumeTexture20GenerateMipSubLevelsEv
	global _ZN22CDirect3DVolumeTexture20GetAutoGenFilterTypeEv
	global _ZN22CDirect3DVolumeTexture20SetAutoGenFilterTypeE21_D3DTEXTUREFILTERTYPE
	global _ZN22CDirect3DVolumeTexture20UpdateOpenGLSurfacesEb
	global _ZN22CDirect3DVolumeTexture6AddRefEv
	global _ZN22CDirect3DVolumeTexture6GetLODEv
	global _ZN22CDirect3DVolumeTexture6SetLODEm
	global _ZN22CDirect3DVolumeTexture7GetTypeEv
	global _ZN22CDirect3DVolumeTexture7LockBoxEjP14_D3DLOCKED_BOXPK7_D3DBOXm
	global _ZN22CDirect3DVolumeTexture7PreLoadEv
	global _ZN22CDirect3DVolumeTexture7ReleaseEv
	global _ZN22CDirect3DVolumeTexture9GetDeviceEPP16IDirect3DDevice9
	global _ZN22CDirect3DVolumeTexture9UnlockBoxEj
	global _ZN22CDirect3DVolumeTextureC1EP15CDirect3DDevicejjjjm10_D3DFORMAT8_D3DPOOL
	global _ZN22CDirect3DVolumeTextureD0Ev
	global _ZN22CDirect3DVolumeTextureD1Ev
	global _ZNSt6vectorI7_D3DBOXSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_
	global _ZNSt6vectorIP15CDirect3DVolumeSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_
	global _ZNSt6vectorIP15CDirect3DVolumeSaIS1_EE7reserveEm
	global _ZTV15CDirect3DVolume
	global _ZTV22CDirect3DVolumeTexture


SECTION .text


;CDirect3DVolume::GetContainer(_GUID const&, void**)
_ZN15CDirect3DVolume12GetContainerERK5_GUIDPPv:
	push ebp
	mov ebp, esp
	mov eax, 0x8876086c
	pop ebp
	ret


;CDirect3DVolume::GetPrivateData(_GUID const&, void*, unsigned long*)
_ZN15CDirect3DVolume14GetPrivateDataERK5_GUIDPvPm:
	push ebp
	mov ebp, esp
	mov eax, 0x8876086c
	pop ebp
	ret


;CDirect3DVolume::QueryInterface(_GUID const&, void**)
_ZN15CDirect3DVolume14QueryInterfaceERK5_GUIDPPv:
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


;CDirect3DVolume::SetPrivateData(_GUID const&, void const*, unsigned long, unsigned long)
_ZN15CDirect3DVolume14SetPrivateDataERK5_GUIDPKvmm:
	push ebp
	mov ebp, esp
	mov eax, 0x8876086c
	pop ebp
	ret


;CDirect3DVolume::FreePrivateData(_GUID const&)
_ZN15CDirect3DVolume15FreePrivateDataERK5_GUID:
	push ebp
	mov ebp, esp
	mov eax, 0x8876086c
	pop ebp
	ret


;CDirect3DVolume::AddRef()
_ZN15CDirect3DVolume6AddRefEv:
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


;CDirect3DVolume::GetDesc(_D3DVOLUME_DESC*)
_ZN15CDirect3DVolume7GetDescEP15_D3DVOLUME_DESC:
	push ebp
	mov ebp, esp
	push edi
	push ebx
	mov edx, [ebp+0x8]
	mov ebx, [ebp+0xc]
	cld
	mov ecx, 0x7
	xor eax, eax
	mov edi, ebx
	rep stosd
	mov eax, [edx+0x18]
	mov [ebx], eax
	mov eax, [edx+0xc]
	mov [ebx+0x10], eax
	mov eax, [edx+0x10]
	mov [ebx+0x14], eax
	mov eax, [edx+0x14]
	mov [ebx+0x18], eax
	xor eax, eax
	pop ebx
	pop edi
	pop ebp
	ret


;CDirect3DVolume::LockBox(_D3DLOCKED_BOX*, _D3DBOX const*, unsigned long)
_ZN15CDirect3DVolume7LockBoxEP14_D3DLOCKED_BOXPK7_D3DBOXm:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov eax, [esi+0x20]
	mov [edi+0x8], eax
	mov eax, [esi+0x18]
	mov [esp], eax
	call _ZN14MacOpenGLUtils12IsCompressedE10_D3DFORMAT
	test al, al
	jz _ZN15CDirect3DVolume7LockBoxEP14_D3DLOCKED_BOXPK7_D3DBOXm_10
	mov eax, [edi]
_ZN15CDirect3DVolume7LockBoxEP14_D3DLOCKED_BOXPK7_D3DBOXm_30:
	imul eax, [esi+0x10]
	mov [edi+0x4], eax
	test word [ebp+0x14], 0x8010
	jnz _ZN15CDirect3DVolume7LockBoxEP14_D3DLOCKED_BOXPK7_D3DBOXm_20
	mov byte [esi+0x24], 0x1
_ZN15CDirect3DVolume7LockBoxEP14_D3DLOCKED_BOXPK7_D3DBOXm_20:
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN15CDirect3DVolume7LockBoxEP14_D3DLOCKED_BOXPK7_D3DBOXm_10:
	mov ebx, [esi+0xc]
	mov eax, [esi+0x18]
	mov [esp], eax
	call _ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT
	imul ebx, eax
	shr ebx, 0x3
	mov [edi], ebx
	mov eax, ebx
	jmp _ZN15CDirect3DVolume7LockBoxEP14_D3DLOCKED_BOXPK7_D3DBOXm_30
	nop


;CDirect3DVolume::Release()
_ZN15CDirect3DVolume7ReleaseEv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov edx, [ebp+0x8]
	mov ebx, [edx+0x4]
	sub ebx, 0x1
	mov [edx+0x4], ebx
	test ebx, ebx
	jnz _ZN15CDirect3DVolume7ReleaseEv_10
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x30]
_ZN15CDirect3DVolume7ReleaseEv_10:
	mov eax, ebx
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop
	add [eax], al


;CDirect3DVolume::GetDevice(IDirect3DDevice9**)
_ZN15CDirect3DVolume9GetDeviceEPP16IDirect3DDevice9:
	push ebp
	mov ebp, esp
	mov eax, 0x8876086c
	pop ebp
	ret


;CDirect3DVolume::UnlockBox()
_ZN15CDirect3DVolume9UnlockBoxEv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x44
	mov ebx, [ebp+0x8]
	cmp byte [ebx+0x24], 0x0
	jnz _ZN15CDirect3DVolume9UnlockBoxEv_10
	mov eax, [ebx+0x28]
	test eax, eax
	jz _ZN15CDirect3DVolume9UnlockBoxEv_20
	mov eax, [eax+0xc]
	mov edx, [eax]
	test edx, edx
	jz _ZN15CDirect3DVolume9UnlockBoxEv_10
_ZN15CDirect3DVolume9UnlockBoxEv_20:
	xor eax, eax
	add esp, 0x44
	pop ebx
	pop ebp
	ret
_ZN15CDirect3DVolume9UnlockBoxEv_10:
	cmp dword [ebx+0x1c], 0x2
	jz _ZN15CDirect3DVolume9UnlockBoxEv_20
	lea eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov dword [esp], 0x806a
	call glGetIntegerv
	mov eax, [ebx+0x28]
	mov eax, [eax+0xc]
	mov eax, [eax]
	mov [esp+0x4], eax
	mov dword [esp], 0x806f
	call glBindTexture
	mov eax, [ebx+0x20]
	mov [esp+0x28], eax
	mov eax, [ebx+0x34]
	mov [esp+0x24], eax
	mov eax, [ebx+0x2c]
	mov [esp+0x20], eax
	mov eax, [ebx+0x30]
	mov [esp+0x1c], eax
	mov eax, [ebx+0x8]
	mov [esp+0x18], eax
	mov dword [esp+0x14], 0x806f
	mov eax, [ebx+0x14]
	mov [esp+0x10], eax
	mov eax, [ebx+0x10]
	mov [esp+0xc], eax
	mov eax, [ebx+0xc]
	mov [esp+0x8], eax
	mov eax, [ebx+0x18]
	mov [esp+0x4], eax
	mov eax, _ZN7COpenGL7sOpenGLE
	mov [esp], eax
	call _ZN7COpenGL14UpdateTexImageE10_D3DFORMATjjjmlmmmPKv
	mov eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov dword [esp], 0x806f
	call glBindTexture
	mov byte [ebx+0x24], 0x0
	xor eax, eax
	add esp, 0x44
	pop ebx
	pop ebp
	ret


;CDirect3DVolume::CDirect3DVolume(unsigned int, unsigned int, unsigned int, unsigned int, _D3DFORMAT, _D3DPOOL, void*, COpenGLTexture*)
_ZN15CDirect3DVolumeC1Ejjjj10_D3DFORMAT8_D3DPOOLPvP14COpenGLTexture:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x44
	mov ebx, [ebp+0x8]
	mov edx, [ebp+0x1c]
	mov dword [ebx], _ZTV15CDirect3DVolume+0x8
	mov dword [ebx+0x4], 0x0
	mov eax, [ebp+0xc]
	mov [ebx+0x8], eax
	mov eax, [ebp+0x10]
	mov [ebx+0xc], eax
	mov eax, [ebp+0x14]
	mov [ebx+0x10], eax
	mov eax, [ebp+0x18]
	mov [ebx+0x14], eax
	mov [ebx+0x18], edx
	mov eax, [ebp+0x20]
	mov [ebx+0x1c], eax
	mov eax, [ebp+0x24]
	mov [ebx+0x20], eax
	mov byte [ebx+0x24], 0x0
	mov eax, [ebp+0x28]
	mov [ebx+0x28], eax
	mov byte [ebp-0x9], 0x1
	mov [esp+0x10], edx
	lea eax, [ebx+0x34]
	mov [esp+0xc], eax
	lea eax, [ebx+0x30]
	mov [esp+0x8], eax
	lea eax, [ebx+0x2c]
	mov [esp+0x4], eax
	lea eax, [ebp-0x9]
	mov [esp], eax
	call _ZN14MacOpenGLUtils20GetOpenGLTextureTypeERbRmS1_S1_10_D3DFORMAT
	cmp byte [ebp-0x9], 0x0
	jz _ZN15CDirect3DVolumeC1Ejjjj10_D3DFORMAT8_D3DPOOLPvP14COpenGLTexture_10
	mov eax, [ebx+0x20]
	mov [esp+0x28], eax
	mov eax, [ebx+0x34]
	mov [esp+0x24], eax
	mov eax, [ebx+0x2c]
	mov [esp+0x20], eax
	mov eax, [ebx+0x30]
	mov [esp+0x1c], eax
	mov eax, [ebx+0x8]
	mov [esp+0x18], eax
	mov dword [esp+0x14], 0x806f
	mov eax, [ebx+0x14]
	mov [esp+0x10], eax
	mov eax, [ebx+0x10]
	mov [esp+0xc], eax
	mov eax, [ebx+0xc]
	mov [esp+0x8], eax
	mov eax, [ebx+0x18]
	mov [esp+0x4], eax
	mov eax, _ZN7COpenGL7sOpenGLE
	mov [esp], eax
	call _ZN7COpenGL12LoadTexImageE10_D3DFORMATjjjmlmmmPKv
_ZN15CDirect3DVolumeC1Ejjjj10_D3DFORMAT8_D3DPOOLPvP14COpenGLTexture_10:
	add dword [ebx+0x4], 0x1
	add esp, 0x44
	pop ebx
	pop ebp
	ret
	nop


;CDirect3DVolume::~CDirect3DVolume()
_ZN15CDirect3DVolumeD0Ev:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov dword [eax], _ZTV15CDirect3DVolume+0x8
	mov [ebp+0x8], eax
	pop ebp
	jmp _ZdlPv
	nop


;CDirect3DVolume::~CDirect3DVolume()
_ZN15CDirect3DVolumeD1Ev:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov dword [eax], _ZTV15CDirect3DVolume+0x8
	pop ebp
	ret


;CDirect3DVolumeTexture::AddDirtyBox(_D3DBOX const*)
_ZN22CDirect3DVolumeTexture11AddDirtyBoxEPK7_D3DBOX:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ecx, [ebp+0xc]
	mov ebx, [ebp+0x8]
	add ebx, 0x7c
	mov edx, [ebx+0x4]
	cmp edx, [ebx+0x8]
	jz _ZN22CDirect3DVolumeTexture11AddDirtyBoxEPK7_D3DBOX_10
	test edx, edx
	jz _ZN22CDirect3DVolumeTexture11AddDirtyBoxEPK7_D3DBOX_20
	mov eax, [ecx]
	mov [edx], eax
	mov eax, [ecx+0x4]
	mov [edx+0x4], eax
	mov eax, [ecx+0x8]
	mov [edx+0x8], eax
	mov eax, [ecx+0xc]
	mov [edx+0xc], eax
	mov eax, [ecx+0x10]
	mov [edx+0x10], eax
	mov eax, [ecx+0x14]
	mov [edx+0x14], eax
	mov edx, [ebx+0x4]
_ZN22CDirect3DVolumeTexture11AddDirtyBoxEPK7_D3DBOX_20:
	add edx, 0x18
	mov [ebx+0x4], edx
_ZN22CDirect3DVolumeTexture11AddDirtyBoxEPK7_D3DBOX_30:
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_ZN22CDirect3DVolumeTexture11AddDirtyBoxEPK7_D3DBOX_10:
	mov [esp+0x8], ecx
	mov [esp+0x4], edx
	mov [esp], ebx
	call _ZNSt6vectorI7_D3DBOXSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_
	jmp _ZN22CDirect3DVolumeTexture11AddDirtyBoxEPK7_D3DBOX_30
	nop


;CDirect3DVolumeTexture::GetPriority()
_ZN22CDirect3DVolumeTexture11GetPriorityEv:
	push ebp
	mov ebp, esp
	mov eax, 0x8876086c
	pop ebp
	ret


;CDirect3DVolumeTexture::SetPriority(unsigned long)
_ZN22CDirect3DVolumeTexture11SetPriorityEm:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	ret
	nop


;CDirect3DVolumeTexture::GetLevelDesc(unsigned int, _D3DVOLUME_DESC*)
_ZN22CDirect3DVolumeTexture12GetLevelDescEjP15_D3DVOLUME_DESC:
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
	js _ZN22CDirect3DVolumeTexture12GetLevelDescEjP15_D3DVOLUME_DESC_10
	mov eax, [ebp-0xc]
	mov edx, [eax]
	mov ecx, [ebp+0x10]
	mov [esp+0x4], ecx
	mov [esp], eax
	call dword [edx+0x20]
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
_ZN22CDirect3DVolumeTexture12GetLevelDescEjP15_D3DVOLUME_DESC_10:
	mov ebx, 0x8876086c
	mov eax, ebx
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	add [eax], al


;CDirect3DVolumeTexture::GetLevelCount()
_ZN22CDirect3DVolumeTexture13GetLevelCountEv:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x50]
	pop ebp
	ret
	nop


;CDirect3DVolumeTexture::GetPrivateData(_GUID const&, void*, unsigned long*)
_ZN22CDirect3DVolumeTexture14GetPrivateDataERK5_GUIDPvPm:
	push ebp
	mov ebp, esp
	mov eax, 0x8876086c
	pop ebp
	ret


;CDirect3DVolumeTexture::GetVolumeLevel(unsigned int, IDirect3DVolume9**)
_ZN22CDirect3DVolumeTexture14GetVolumeLevelEjPP16IDirect3DVolume9:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov edx, [eax+0x6c]
	mov eax, [eax+0x70]
	sub eax, edx
	sar eax, 0x2
	cmp eax, ecx
	ja _ZN22CDirect3DVolumeTexture14GetVolumeLevelEjPP16IDirect3DVolume9_10
	mov eax, 0x8876086c
	leave
	ret
_ZN22CDirect3DVolumeTexture14GetVolumeLevelEjPP16IDirect3DVolume9_10:
	mov eax, [edx+ecx*4]
	mov edx, [ebp+0x10]
	mov [edx], eax
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x4]
	xor eax, eax
	leave
	ret


;CDirect3DVolumeTexture::QueryInterface(_GUID const&, void**)
_ZN22CDirect3DVolumeTexture14QueryInterfaceERK5_GUIDPPv:
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


;CDirect3DVolumeTexture::SetPrivateData(_GUID const&, void const*, unsigned long, unsigned long)
_ZN22CDirect3DVolumeTexture14SetPrivateDataERK5_GUIDPKvmm:
	push ebp
	mov ebp, esp
	mov eax, 0x8876086c
	pop ebp
	ret


;CDirect3DVolumeTexture::FreePrivateData(_GUID const&)
_ZN22CDirect3DVolumeTexture15FreePrivateDataERK5_GUID:
	push ebp
	mov ebp, esp
	mov eax, 0x8876086c
	pop ebp
	ret


;CDirect3DVolumeTexture::GenerateMipSubLevels()
_ZN22CDirect3DVolumeTexture20GenerateMipSubLevelsEv:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop
	add dword [esp+0x4], 0xfffffffc
	jmp _ZN22CDirect3DVolumeTextureD0Ev


;CDirect3DVolumeTexture::GetAutoGenFilterType()
_ZN22CDirect3DVolumeTexture20GetAutoGenFilterTypeEv:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	ret
	nop


;CDirect3DVolumeTexture::SetAutoGenFilterType(_D3DTEXTUREFILTERTYPE)
_ZN22CDirect3DVolumeTexture20SetAutoGenFilterTypeE21_D3DTEXTUREFILTERTYPE:
	push ebp
	mov ebp, esp
	mov eax, 0x8876086c
	pop ebp
	ret


;CDirect3DVolumeTexture::UpdateOpenGLSurfaces(bool)
_ZN22CDirect3DVolumeTexture20UpdateOpenGLSurfacesEb:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	movzx eax, byte [ebp+0xc]
	mov [ebp-0x2d], al
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov dword [esp], 0x806a
	call glGetIntegerv
	mov edx, [ebp+0x8]
	mov eax, [edx+0x10]
	mov eax, [eax]
	mov [esp+0x4], eax
	mov dword [esp], 0x806f
	call glBindTexture
	mov edx, [ebp+0x8]
	mov eax, [edx+0x6c]
	add edx, 0x70
	mov [ebp-0x2c], edx
	mov edx, [ebp+0x8]
	cmp eax, [edx+0x70]
	jz _ZN22CDirect3DVolumeTexture20UpdateOpenGLSurfacesEb_10
	mov esi, eax
	add edx, 0x7c
	mov [ebp-0x34], edx
	jmp _ZN22CDirect3DVolumeTexture20UpdateOpenGLSurfacesEb_20
_ZN22CDirect3DVolumeTexture20UpdateOpenGLSurfacesEb_50:
	mov eax, [esi]
	mov byte [eax+0x24], 0x0
	add esi, 0x4
	mov eax, [ebp-0x2c]
	cmp esi, [eax]
	jz _ZN22CDirect3DVolumeTexture20UpdateOpenGLSurfacesEb_10
_ZN22CDirect3DVolumeTexture20UpdateOpenGLSurfacesEb_70:
	mov eax, esi
_ZN22CDirect3DVolumeTexture20UpdateOpenGLSurfacesEb_20:
	mov ebx, [eax]
	cmp byte [ebx+0x24], 0x0
	jnz _ZN22CDirect3DVolumeTexture20UpdateOpenGLSurfacesEb_30
	mov eax, [ebx+0x28]
	test eax, eax
	jz _ZN22CDirect3DVolumeTexture20UpdateOpenGLSurfacesEb_40
	mov eax, [eax+0xc]
	mov ecx, [eax]
	test ecx, ecx
	jnz _ZN22CDirect3DVolumeTexture20UpdateOpenGLSurfacesEb_40
_ZN22CDirect3DVolumeTexture20UpdateOpenGLSurfacesEb_30:
	cmp byte [ebp-0x2d], 0x0
	jnz _ZN22CDirect3DVolumeTexture20UpdateOpenGLSurfacesEb_50
	mov eax, [ebx+0x20]
	mov [esp+0x28], eax
	mov eax, [ebx+0x34]
	mov [esp+0x24], eax
	mov eax, [ebx+0x2c]
	mov [esp+0x20], eax
	mov eax, [ebx+0x30]
	mov [esp+0x1c], eax
	mov eax, [ebx+0x8]
	mov [esp+0x18], eax
	mov dword [esp+0x14], 0x806f
	mov eax, [ebx+0x14]
	mov [esp+0x10], eax
	mov eax, [ebx+0x10]
	mov [esp+0xc], eax
	mov eax, [ebx+0xc]
	mov [esp+0x8], eax
	mov eax, [ebx+0x18]
	mov [esp+0x4], eax
	mov eax, _ZN7COpenGL7sOpenGLE
	mov [esp], eax
	call _ZN7COpenGL14UpdateTexImageE10_D3DFORMATjjjmlmmmPKv
	jmp _ZN22CDirect3DVolumeTexture20UpdateOpenGLSurfacesEb_50
_ZN22CDirect3DVolumeTexture20UpdateOpenGLSurfacesEb_40:
	cmp byte [ebp-0x2d], 0x0
	jnz _ZN22CDirect3DVolumeTexture20UpdateOpenGLSurfacesEb_50
	mov edx, [ebp-0x34]
	mov edi, [edx+0x4]
	mov ecx, edi
	mov eax, [ebp+0x8]
	sub ecx, [eax+0x7c]
	sar ecx, 0x3
	lea eax, [ecx+ecx*4]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	mov edx, eax
	shl edx, 0x10
	add eax, edx
	lea eax, [ecx+eax*2]
	test eax, eax
	jnz _ZN22CDirect3DVolumeTexture20UpdateOpenGLSurfacesEb_60
	mov edx, [ebp-0x34]
_ZN22CDirect3DVolumeTexture20UpdateOpenGLSurfacesEb_80:
	mov eax, [edx]
	mov [esp+0x8], edi
	mov [esp+0x4], eax
	mov [esp], edx
	call _ZNSt6vectorI7_D3DBOXSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPS0_S2_EES6_
	add esi, 0x4
	mov eax, [ebp-0x2c]
	cmp esi, [eax]
	jnz _ZN22CDirect3DVolumeTexture20UpdateOpenGLSurfacesEb_70
_ZN22CDirect3DVolumeTexture20UpdateOpenGLSurfacesEb_10:
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov dword [esp], 0x806f
	call glBindTexture
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN22CDirect3DVolumeTexture20UpdateOpenGLSurfacesEb_60:
	mov eax, [ebx+0x20]
	mov [esp+0x2c], eax
	mov eax, [ebx+0x34]
	mov [esp+0x28], eax
	mov eax, [ebx+0x2c]
	mov [esp+0x24], eax
	mov eax, [ebx+0x30]
	mov [esp+0x20], eax
	mov eax, [ebx+0x8]
	mov [esp+0x1c], eax
	mov dword [esp+0x18], 0x806f
	mov edx, [ebp-0x34]
	mov [esp+0x14], edx
	mov eax, [ebx+0x14]
	mov [esp+0x10], eax
	mov eax, [ebx+0x10]
	mov [esp+0xc], eax
	mov eax, [ebx+0xc]
	mov [esp+0x8], eax
	mov eax, [ebx+0x18]
	mov [esp+0x4], eax
	mov eax, _ZN7COpenGL7sOpenGLE
	mov [esp], eax
	call _ZN7COpenGL23UpdateTexImage3DPartialE10_D3DFORMATjjjRKSt6vectorI7_D3DBOXSaIS2_EEmlmmmPKv
	mov edx, [ebp-0x34]
	mov edi, [edx+0x4]
	jmp _ZN22CDirect3DVolumeTexture20UpdateOpenGLSurfacesEb_80


;CDirect3DVolumeTexture::AddRef()
_ZN22CDirect3DVolumeTexture6AddRefEv:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, [edx+0x40]
	add eax, 0x1
	mov [edx+0x40], eax
	pop ebp
	ret
	nop


;CDirect3DVolumeTexture::GetLOD()
_ZN22CDirect3DVolumeTexture6GetLODEv:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	ret
	nop


;CDirect3DVolumeTexture::SetLOD(unsigned long)
_ZN22CDirect3DVolumeTexture6SetLODEm:
	push ebp
	mov ebp, esp
	mov eax, 0x8876086c
	pop ebp
	ret


;CDirect3DVolumeTexture::GetType()
_ZN22CDirect3DVolumeTexture7GetTypeEv:
	push ebp
	mov ebp, esp
	mov eax, 0x4
	pop ebp
	ret


;CDirect3DVolumeTexture::LockBox(unsigned int, _D3DLOCKED_BOX*, _D3DBOX const*, unsigned long)
_ZN22CDirect3DVolumeTexture7LockBoxEjP14_D3DLOCKED_BOXPK7_D3DBOXm:
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
	mov edx, [eax+0x6c]
	mov eax, [eax+0x70]
	sub eax, edx
	sar eax, 0x2
	cmp eax, ecx
	ja _ZN22CDirect3DVolumeTexture7LockBoxEjP14_D3DLOCKED_BOXPK7_D3DBOXm_10
	mov eax, 0x8876086c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN22CDirect3DVolumeTexture7LockBoxEjP14_D3DLOCKED_BOXPK7_D3DBOXm_10:
	mov eax, [edx+ecx*4]
	mov edx, [eax]
	mov [ebp+0x14], ebx
	mov [ebp+0x10], esi
	mov [ebp+0xc], edi
	mov [ebp+0x8], eax
	mov ecx, [edx+0x24]
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp ecx


;CDirect3DVolumeTexture::PreLoad()
_ZN22CDirect3DVolumeTexture7PreLoadEv:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;CDirect3DVolumeTexture::Release()
_ZN22CDirect3DVolumeTexture7ReleaseEv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov edx, [ebp+0x8]
	mov ebx, [edx+0x40]
	sub ebx, 0x1
	mov [edx+0x40], ebx
	test ebx, ebx
	jnz _ZN22CDirect3DVolumeTexture7ReleaseEv_10
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x5c]
_ZN22CDirect3DVolumeTexture7ReleaseEv_10:
	mov eax, ebx
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;CDirect3DVolumeTexture::GetDevice(IDirect3DDevice9**)
_ZN22CDirect3DVolumeTexture9GetDeviceEPP16IDirect3DDevice9:
	push ebp
	mov ebp, esp
	mov eax, 0x8876086c
	pop ebp
	ret


;CDirect3DVolumeTexture::UnlockBox(unsigned int)
_ZN22CDirect3DVolumeTexture9UnlockBoxEj:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov edx, [eax+0x6c]
	mov eax, [eax+0x70]
	sub eax, edx
	sar eax, 0x2
	cmp eax, ecx
	ja _ZN22CDirect3DVolumeTexture9UnlockBoxEj_10
	mov eax, 0x8876086c
	pop ebp
	ret
_ZN22CDirect3DVolumeTexture9UnlockBoxEj_10:
	mov eax, [edx+ecx*4]
	mov edx, [eax]
	mov [ebp+0x8], eax
	mov ecx, [edx+0x28]
	pop ebp
	jmp ecx
	nop


;CDirect3DVolumeTexture::CDirect3DVolumeTexture(CDirect3DDevice*, unsigned int, unsigned int, unsigned int, unsigned int, unsigned long, _D3DFORMAT, _D3DPOOL)
_ZN22CDirect3DVolumeTextureC1EP15CDirect3DDevicejjjjm10_D3DFORMAT8_D3DPOOL:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov edi, [ebp+0x18]
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
	mov eax, [0xd5cc058]
	add eax, 0x8
	mov [edx], eax
	add edx, 0x4
	mov [ebp-0x40], edx
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], edi
	mov eax, [ebp+0x14]
	mov [esp+0x8], eax
	mov edx, [ebp+0x10]
	mov [esp+0x4], edx
	mov eax, [ebp-0x40]
	mov [esp], eax
	call _ZN14COpenGLTextureC2Emjjj
	mov edx, [ebp+0x8]
	mov dword [edx], _ZTV22CDirect3DVolumeTexture+0x8
	mov dword [edx+0x4], _ZTV22CDirect3DVolumeTexture+0x70
	mov eax, [ebp+0xc]
	mov [edx+0x3c], eax
	mov dword [edx+0x40], 0x0
	mov eax, [ebp+0x10]
	mov [edx+0x44], eax
	mov eax, [ebp+0x14]
	mov [edx+0x48], eax
	mov [edx+0x4c], edi
	mov dword [edx+0x50], 0x0
	add edx, 0x54
	mov [ebp-0x3c], edx
	mov dword [esp+0x8], 0x20
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call _ZN13CMemoryBufferC1Ejj
	mov edx, [ebp+0x8]
	add edx, 0x6c
	mov [ebp-0x38], edx
	mov eax, [ebp+0x8]
	mov dword [eax+0x6c], 0x0
	mov dword [edx+0x4], 0x0
	mov dword [edx+0x8], 0x0
	mov edx, [ebp+0x28]
	mov [eax+0x78], edx
	add eax, 0x7c
	mov [ebp-0x34], eax
	mov eax, [ebp+0x8]
	mov dword [eax+0x7c], 0x0
	mov edx, [ebp-0x34]
	mov dword [edx+0x4], 0x0
	mov dword [edx+0x8], 0x0
	mov esi, [ebp+0x1c]
	test esi, esi
	jnz _ZN22CDirect3DVolumeTextureC1EP15CDirect3DDevicejjjjm10_D3DFORMAT8_D3DPOOL_10
	mov [esp+0x8], edi
	mov eax, [ebp+0x14]
	mov [esp+0x4], eax
	mov edx, [ebp+0x10]
	mov [esp], edx
	call _ZN14MacOpenGLUtils19GetNumTextureLevelsEjjj
	mov [ebp+0x1c], eax
_ZN22CDirect3DVolumeTextureC1EP15CDirect3DDevicejjjjm10_D3DFORMAT8_D3DPOOL_80:
	mov [esp+0x4], eax
	mov edx, [ebp-0x38]
	mov [esp], edx
	call _ZNSt6vectorIP15CDirect3DVolumeSaIS1_EE7reserveEm
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov dword [esp], 0x806a
	call glGetIntegerv
	mov edx, [ebp-0x40]
	mov eax, [edx+0xc]
	mov eax, [eax]
	mov [esp+0x4], eax
	mov dword [esp], 0x806f
	call glBindTexture
	mov eax, [ebp+0x24]
	mov [esp+0x10], eax
	mov edx, [ebp+0x1c]
	mov [esp+0xc], edx
	mov [esp+0x8], edi
	mov eax, [ebp+0x14]
	mov [esp+0x4], eax
	mov edx, [ebp+0x10]
	mov [esp], edx
	call _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT
	mov ebx, eax
	mov dword [esp+0x8], 0x1000
	mov [esp+0x4], eax
	mov eax, [ebp-0x3c]
	mov [esp], eax
	call _ZN13CMemoryBuffer6ResizeEjj
	mov edx, [ebp-0x3c]
	mov eax, [edx+0x8]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	mov ebx, [ebp+0x1c]
	test ebx, ebx
	jz _ZN22CDirect3DVolumeTextureC1EP15CDirect3DDevicejjjjm10_D3DFORMAT8_D3DPOOL_20
	mov dword [ebp-0x30], 0x0
	mov dword [ebp-0x2c], 0x0
	jmp _ZN22CDirect3DVolumeTextureC1EP15CDirect3DDevicejjjjm10_D3DFORMAT8_D3DPOOL_30
_ZN22CDirect3DVolumeTextureC1EP15CDirect3DDevicejjjjm10_D3DFORMAT8_D3DPOOL_50:
	mov [edx], ebx
	mov eax, [ebp-0x38]
	mov edx, [eax+0x4]
_ZN22CDirect3DVolumeTextureC1EP15CDirect3DDevicejjjjm10_D3DFORMAT8_D3DPOOL_60:
	add edx, 0x4
	mov [eax+0x4], edx
_ZN22CDirect3DVolumeTextureC1EP15CDirect3DDevicejjjjm10_D3DFORMAT8_D3DPOOL_70:
	mov eax, [ebp+0x24]
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov edx, [ebp+0x14]
	mov [esp+0x4], edx
	mov eax, [ebp+0x10]
	mov [esp], eax
	call _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT
	add [ebp-0x30], eax
	add dword [ebp-0x2c], 0x1
	shr dword [ebp+0x10], 1
	shr dword [ebp+0x14], 1
	shr edi, 1
	mov edx, [ebp-0x2c]
	cmp [ebp+0x1c], edx
	jz _ZN22CDirect3DVolumeTextureC1EP15CDirect3DDevicejjjjm10_D3DFORMAT8_D3DPOOL_20
_ZN22CDirect3DVolumeTextureC1EP15CDirect3DDevicejjjjm10_D3DFORMAT8_D3DPOOL_30:
	mov eax, 0x1
	mov ecx, [ebp+0x10]
	test ecx, ecx
	mov edx, [ebp+0x10]
	cmovz edx, eax
	mov [ebp+0x10], edx
	mov edx, [ebp+0x14]
	test edx, edx
	mov edx, [ebp+0x14]
	cmovz edx, eax
	mov [ebp+0x14], edx
	test edi, edi
	cmovz edi, eax
	mov esi, [ebp-0x30]
	mov eax, [ebp-0x3c]
	add esi, [eax+0x8]
	mov dword [esp], 0x38
	call _Znwm
	mov ebx, eax
	mov edx, [ebp-0x40]
	mov [esp+0x20], edx
	mov [esp+0x1c], esi
	mov eax, [ebp+0x28]
	mov [esp+0x18], eax
	mov edx, [ebp+0x24]
	mov [esp+0x14], edx
	mov [esp+0x10], edi
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	mov edx, [ebp+0x10]
	mov [esp+0x8], edx
	mov eax, [ebp-0x2c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZN15CDirect3DVolumeC1Ejjjj10_D3DFORMAT8_D3DPOOLPvP14COpenGLTexture
	mov [ebp-0x1c], ebx
	mov eax, [ebp-0x38]
	mov edx, [eax+0x4]
	cmp edx, [eax+0x8]
	jz _ZN22CDirect3DVolumeTextureC1EP15CDirect3DDevicejjjjm10_D3DFORMAT8_D3DPOOL_40
	test edx, edx
	jnz _ZN22CDirect3DVolumeTextureC1EP15CDirect3DDevicejjjjm10_D3DFORMAT8_D3DPOOL_50
	mov eax, [ebp-0x38]
	jmp _ZN22CDirect3DVolumeTextureC1EP15CDirect3DDevicejjjjm10_D3DFORMAT8_D3DPOOL_60
_ZN22CDirect3DVolumeTextureC1EP15CDirect3DDevicejjjjm10_D3DFORMAT8_D3DPOOL_20:
	mov eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov dword [esp], 0x806f
	call glBindTexture
	mov edx, [ebp+0x1c]
	mov eax, [ebp+0x8]
	mov [eax+0x50], edx
	add dword [eax+0x40], 0x1
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN22CDirect3DVolumeTextureC1EP15CDirect3DDevicejjjjm10_D3DFORMAT8_D3DPOOL_40:
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov edx, [ebp-0x38]
	mov [esp], edx
	call _ZNSt6vectorIP15CDirect3DVolumeSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_
	jmp _ZN22CDirect3DVolumeTextureC1EP15CDirect3DDevicejjjjm10_D3DFORMAT8_D3DPOOL_70
_ZN22CDirect3DVolumeTextureC1EP15CDirect3DDevicejjjjm10_D3DFORMAT8_D3DPOOL_10:
	mov eax, [ebp+0x1c]
	jmp _ZN22CDirect3DVolumeTextureC1EP15CDirect3DDevicejjjjm10_D3DFORMAT8_D3DPOOL_80
	mov esi, eax
_ZN22CDirect3DVolumeTextureC1EP15CDirect3DDevicejjjjm10_D3DFORMAT8_D3DPOOL_150:
	mov eax, [ebp-0x40]
	mov [esp], eax
	call _ZN14COpenGLTextureD2Ev
	mov [esp], esi
	call _Unwind_Resume
	mov esi, eax
	mov [esp], ebx
	call _ZdlPv
_ZN22CDirect3DVolumeTextureC1EP15CDirect3DDevicejjjjm10_D3DFORMAT8_D3DPOOL_160:
	mov eax, [ebp-0x34]
	mov ecx, [eax+0x4]
	mov edx, [eax]
	mov eax, edx
	cmp ecx, edx
	jz _ZN22CDirect3DVolumeTextureC1EP15CDirect3DDevicejjjjm10_D3DFORMAT8_D3DPOOL_90
_ZN22CDirect3DVolumeTextureC1EP15CDirect3DDevicejjjjm10_D3DFORMAT8_D3DPOOL_100:
	add eax, 0x18
	cmp ecx, eax
	jnz _ZN22CDirect3DVolumeTextureC1EP15CDirect3DDevicejjjjm10_D3DFORMAT8_D3DPOOL_100
_ZN22CDirect3DVolumeTextureC1EP15CDirect3DDevicejjjjm10_D3DFORMAT8_D3DPOOL_90:
	test edx, edx
	jz _ZN22CDirect3DVolumeTextureC1EP15CDirect3DDevicejjjjm10_D3DFORMAT8_D3DPOOL_110
	mov [esp], edx
	call _ZdlPv
_ZN22CDirect3DVolumeTextureC1EP15CDirect3DDevicejjjjm10_D3DFORMAT8_D3DPOOL_110:
	mov edx, [ebp-0x38]
	mov ecx, [edx+0x4]
	mov edx, [edx]
	mov eax, edx
	cmp ecx, edx
	jz _ZN22CDirect3DVolumeTextureC1EP15CDirect3DDevicejjjjm10_D3DFORMAT8_D3DPOOL_120
_ZN22CDirect3DVolumeTextureC1EP15CDirect3DDevicejjjjm10_D3DFORMAT8_D3DPOOL_130:
	add eax, 0x4
	cmp ecx, eax
	jnz _ZN22CDirect3DVolumeTextureC1EP15CDirect3DDevicejjjjm10_D3DFORMAT8_D3DPOOL_130
_ZN22CDirect3DVolumeTextureC1EP15CDirect3DDevicejjjjm10_D3DFORMAT8_D3DPOOL_120:
	test edx, edx
	jz _ZN22CDirect3DVolumeTextureC1EP15CDirect3DDevicejjjjm10_D3DFORMAT8_D3DPOOL_140
	mov [esp], edx
	call _ZdlPv
_ZN22CDirect3DVolumeTextureC1EP15CDirect3DDevicejjjjm10_D3DFORMAT8_D3DPOOL_140:
	mov edx, [ebp-0x3c]
	mov [esp], edx
	call _ZN13CMemoryBufferD1Ev
	jmp _ZN22CDirect3DVolumeTextureC1EP15CDirect3DDevicejjjjm10_D3DFORMAT8_D3DPOOL_150
	mov esi, eax
	jmp _ZN22CDirect3DVolumeTextureC1EP15CDirect3DDevicejjjjm10_D3DFORMAT8_D3DPOOL_160
	nop


;CDirect3DVolumeTexture::~CDirect3DVolumeTexture()
_ZN22CDirect3DVolumeTextureD0Ev:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov dword [edi], _ZTV22CDirect3DVolumeTexture+0x8
	mov dword [edi+0x4], _ZTV22CDirect3DVolumeTexture+0x70
	lea eax, [edi+0x4]
	mov [ebp-0x20], eax
	mov [esp], eax
	lea edx, [edi+0x6c]
	mov [ebp-0x1c], edx
	call _ZN14COpenGLTexture16ReleaseResourcesEv
	mov ebx, [edi+0x6c]
	lea esi, [edi+0x70]
	cmp ebx, [edi+0x70]
	jz _ZN22CDirect3DVolumeTextureD0Ev_10
_ZN22CDirect3DVolumeTextureD0Ev_20:
	mov eax, [ebx]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	add ebx, 0x4
	cmp ebx, [esi]
	jnz _ZN22CDirect3DVolumeTextureD0Ev_20
_ZN22CDirect3DVolumeTextureD0Ev_10:
	lea ecx, [edi+0x7c]
	mov edx, [ecx+0x4]
	mov eax, [edi+0x7c]
	cmp edx, eax
	jz _ZN22CDirect3DVolumeTextureD0Ev_30
_ZN22CDirect3DVolumeTextureD0Ev_40:
	add eax, 0x18
	cmp edx, eax
	jnz _ZN22CDirect3DVolumeTextureD0Ev_40
_ZN22CDirect3DVolumeTextureD0Ev_30:
	mov eax, [ecx]
	test eax, eax
	jz _ZN22CDirect3DVolumeTextureD0Ev_50
	mov [esp], eax
	call _ZdlPv
_ZN22CDirect3DVolumeTextureD0Ev_50:
	mov eax, [ebp-0x1c]
	mov edx, [eax+0x4]
	mov ecx, [eax]
	mov eax, ecx
	cmp edx, ecx
	jz _ZN22CDirect3DVolumeTextureD0Ev_60
_ZN22CDirect3DVolumeTextureD0Ev_70:
	add eax, 0x4
	cmp edx, eax
	jnz _ZN22CDirect3DVolumeTextureD0Ev_70
_ZN22CDirect3DVolumeTextureD0Ev_60:
	test ecx, ecx
	jz _ZN22CDirect3DVolumeTextureD0Ev_80
	mov [esp], ecx
	call _ZdlPv
_ZN22CDirect3DVolumeTextureD0Ev_80:
	lea eax, [edi+0x54]
	mov [esp], eax
	call _ZN13CMemoryBufferD1Ev
	mov edx, [ebp-0x20]
	mov [esp], edx
	call _ZN14COpenGLTextureD2Ev
	mov [ebp+0x8], edi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _ZdlPv
	mov ebx, eax
	lea ecx, [edi+0x7c]
	mov edx, [ecx+0x4]
	mov eax, [edi+0x7c]
	cmp edx, eax
	jz _ZN22CDirect3DVolumeTextureD0Ev_90
_ZN22CDirect3DVolumeTextureD0Ev_100:
	add eax, 0x18
	cmp edx, eax
	jnz _ZN22CDirect3DVolumeTextureD0Ev_100
_ZN22CDirect3DVolumeTextureD0Ev_90:
	mov eax, [ecx]
	test eax, eax
	jz _ZN22CDirect3DVolumeTextureD0Ev_110
	mov [esp], eax
	call _ZdlPv
_ZN22CDirect3DVolumeTextureD0Ev_110:
	mov eax, [ebp-0x1c]
	mov edx, [eax+0x4]
	mov eax, [edi+0x6c]
	cmp edx, eax
	jz _ZN22CDirect3DVolumeTextureD0Ev_120
_ZN22CDirect3DVolumeTextureD0Ev_130:
	add eax, 0x4
	cmp edx, eax
	jnz _ZN22CDirect3DVolumeTextureD0Ev_130
_ZN22CDirect3DVolumeTextureD0Ev_120:
	mov edx, [ebp-0x1c]
	mov eax, [edx]
	test eax, eax
	jz _ZN22CDirect3DVolumeTextureD0Ev_140
	mov [esp], eax
	call _ZdlPv
_ZN22CDirect3DVolumeTextureD0Ev_140:
	lea eax, [edi+0x54]
	mov [esp], eax
	call _ZN13CMemoryBufferD1Ev
	jmp _ZN22CDirect3DVolumeTextureD0Ev_150
	mov ebx, eax
_ZN22CDirect3DVolumeTextureD0Ev_150:
	mov eax, [ebp-0x20]
	mov [esp], eax
	call _ZN14COpenGLTextureD2Ev
	mov [esp], ebx
	call _Unwind_Resume


;CDirect3DVolumeTexture::~CDirect3DVolumeTexture()
_ZN22CDirect3DVolumeTextureD1Ev:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov dword [edi], _ZTV22CDirect3DVolumeTexture+0x8
	mov dword [edi+0x4], _ZTV22CDirect3DVolumeTexture+0x70
	lea eax, [edi+0x4]
	mov [ebp-0x20], eax
	mov [esp], eax
	lea edx, [edi+0x6c]
	mov [ebp-0x1c], edx
	call _ZN14COpenGLTexture16ReleaseResourcesEv
	mov ebx, [edi+0x6c]
	lea esi, [edi+0x70]
	cmp ebx, [edi+0x70]
	jz _ZN22CDirect3DVolumeTextureD1Ev_10
_ZN22CDirect3DVolumeTextureD1Ev_20:
	mov eax, [ebx]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	add ebx, 0x4
	cmp ebx, [esi]
	jnz _ZN22CDirect3DVolumeTextureD1Ev_20
_ZN22CDirect3DVolumeTextureD1Ev_10:
	lea ecx, [edi+0x7c]
	mov edx, [ecx+0x4]
	mov eax, [edi+0x7c]
	cmp edx, eax
	jz _ZN22CDirect3DVolumeTextureD1Ev_30
_ZN22CDirect3DVolumeTextureD1Ev_40:
	add eax, 0x18
	cmp edx, eax
	jnz _ZN22CDirect3DVolumeTextureD1Ev_40
_ZN22CDirect3DVolumeTextureD1Ev_30:
	mov eax, [ecx]
	test eax, eax
	jz _ZN22CDirect3DVolumeTextureD1Ev_50
	mov [esp], eax
	call _ZdlPv
_ZN22CDirect3DVolumeTextureD1Ev_50:
	mov eax, [ebp-0x1c]
	mov edx, [eax+0x4]
	mov ecx, [eax]
	mov eax, ecx
	cmp edx, ecx
	jz _ZN22CDirect3DVolumeTextureD1Ev_60
_ZN22CDirect3DVolumeTextureD1Ev_70:
	add eax, 0x4
	cmp edx, eax
	jnz _ZN22CDirect3DVolumeTextureD1Ev_70
_ZN22CDirect3DVolumeTextureD1Ev_60:
	test ecx, ecx
	jz _ZN22CDirect3DVolumeTextureD1Ev_80
	mov [esp], ecx
	call _ZdlPv
_ZN22CDirect3DVolumeTextureD1Ev_80:
	lea eax, [edi+0x54]
	mov [esp], eax
	call _ZN13CMemoryBufferD1Ev
	mov edx, [ebp-0x20]
	mov [ebp+0x8], edx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _ZN14COpenGLTextureD2Ev
	mov ebx, eax
	lea ecx, [edi+0x7c]
	mov edx, [ecx+0x4]
	mov eax, [edi+0x7c]
	cmp edx, eax
	jz _ZN22CDirect3DVolumeTextureD1Ev_90
_ZN22CDirect3DVolumeTextureD1Ev_100:
	add eax, 0x18
	cmp edx, eax
	jnz _ZN22CDirect3DVolumeTextureD1Ev_100
_ZN22CDirect3DVolumeTextureD1Ev_90:
	mov eax, [ecx]
	test eax, eax
	jz _ZN22CDirect3DVolumeTextureD1Ev_110
	mov [esp], eax
	call _ZdlPv
_ZN22CDirect3DVolumeTextureD1Ev_110:
	mov eax, [ebp-0x1c]
	mov edx, [eax+0x4]
	mov eax, [edi+0x6c]
	cmp edx, eax
	jz _ZN22CDirect3DVolumeTextureD1Ev_120
_ZN22CDirect3DVolumeTextureD1Ev_130:
	add eax, 0x4
	cmp edx, eax
	jnz _ZN22CDirect3DVolumeTextureD1Ev_130
_ZN22CDirect3DVolumeTextureD1Ev_120:
	mov edx, [ebp-0x1c]
	mov eax, [edx]
	test eax, eax
	jz _ZN22CDirect3DVolumeTextureD1Ev_140
	mov [esp], eax
	call _ZdlPv
_ZN22CDirect3DVolumeTextureD1Ev_140:
	lea eax, [edi+0x54]
	mov [esp], eax
	call _ZN13CMemoryBufferD1Ev
	jmp _ZN22CDirect3DVolumeTextureD1Ev_150
	mov ebx, eax
_ZN22CDirect3DVolumeTextureD1Ev_150:
	mov eax, [ebp-0x20]
	mov [esp], eax
	call _ZN14COpenGLTextureD2Ev
	mov [esp], ebx
	call _Unwind_Resume
	add [eax], al


;std::vector<_D3DBOX, std::allocator<_D3DBOX> >::_M_insert_aux(__gnu_cxx::__normal_iterator<_D3DBOX*, std::vector<_D3DBOX, std::allocator<_D3DBOX> > >, _D3DBOX const&)
_ZNSt6vectorI7_D3DBOXSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov edi, [ebp+0xc]
	mov esi, [ebp+0x10]
	mov [ebp-0x1c], edi
	mov eax, [ebp+0x8]
	mov edx, [eax+0x4]
	cmp edx, [eax+0x8]
	jz _ZNSt6vectorI7_D3DBOXSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__10
	lea ecx, [edx-0x18]
	test edx, edx
	jz _ZNSt6vectorI7_D3DBOXSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__20
	mov eax, [edx-0x18]
	mov [edx], eax
	mov eax, [ecx+0x4]
	mov [edx+0x4], eax
	mov eax, [ecx+0x8]
	mov [edx+0x8], eax
	mov eax, [ecx+0xc]
	mov [edx+0xc], eax
	mov eax, [ecx+0x10]
	mov [edx+0x10], eax
	mov eax, [ecx+0x14]
	mov [edx+0x14], eax
	mov eax, [ebp+0x8]
	mov edx, [eax+0x4]
_ZNSt6vectorI7_D3DBOXSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__180:
	mov [ebp-0x3c], edx
	add edx, 0x18
	mov [eax+0x4], edx
	mov edx, [esi+0x14]
	mov [ebp-0x20], edx
	mov eax, [esi+0x10]
	mov [ebp-0x24], eax
	mov edx, [esi+0xc]
	mov [ebp-0x28], edx
	mov eax, [esi+0x8]
	mov [ebp-0x2c], eax
	mov edx, [esi+0x4]
	mov [ebp-0x30], edx
	mov esi, [esi]
	mov [ebp-0x34], esi
	mov ebx, [ebp-0x3c]
	sub ebx, 0x18
	mov ecx, ebx
	sub ecx, [ebp-0x1c]
	sar ecx, 0x3
	lea eax, [ecx+ecx*4]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	mov edx, eax
	shl edx, 0x10
	add eax, edx
	lea esi, [ecx+eax*2]
	test esi, esi
	jle _ZNSt6vectorI7_D3DBOXSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__30
	mov ecx, ebx
	mov edx, [ebp-0x3c]
	xor ebx, ebx
_ZNSt6vectorI7_D3DBOXSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__40:
	mov eax, [ecx-0x18]
	mov [edx-0x18], eax
	mov eax, [ecx-0x14]
	mov [edx-0x14], eax
	mov eax, [ecx-0x10]
	mov [edx-0x10], eax
	mov eax, [ecx-0xc]
	mov [edx-0xc], eax
	mov eax, [ecx-0x8]
	mov [edx-0x8], eax
	mov eax, [ecx-0x4]
	mov [edx-0x4], eax
	add ebx, 0x1
	sub ecx, 0x18
	sub edx, 0x18
	cmp esi, ebx
	jnz _ZNSt6vectorI7_D3DBOXSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__40
_ZNSt6vectorI7_D3DBOXSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__30:
	mov eax, [ebp-0x20]
	mov [edi+0x14], eax
	mov edx, [ebp-0x24]
	mov [edi+0x10], edx
	mov eax, [ebp-0x28]
	mov [edi+0xc], eax
	mov edx, [ebp-0x2c]
	mov [edi+0x8], edx
	mov eax, [ebp-0x30]
	mov [edi+0x4], eax
	mov edx, [ebp-0x34]
	mov [edi], edx
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZNSt6vectorI7_D3DBOXSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__10:
	mov ecx, edx
	sub ecx, [eax]
	sar ecx, 0x3
	lea eax, [ecx+ecx*4]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	mov edx, eax
	shl edx, 0x10
	add eax, edx
	lea eax, [ecx+eax*2]
	cmp eax, 0xaaaaaaa
	jz _ZNSt6vectorI7_D3DBOXSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__50
	test eax, eax
	jnz _ZNSt6vectorI7_D3DBOXSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__60
	mov edx, 0x1
_ZNSt6vectorI7_D3DBOXSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__200:
	lea eax, [edx+edx*2]
	shl eax, 0x3
	mov [ebp-0x40], eax
	mov [esp], eax
	call _Znwm
	mov [ebp-0x38], eax
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov ecx, [ebp-0x38]
	cmp edi, edx
	jz _ZNSt6vectorI7_D3DBOXSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__70
	mov ebx, edx
	jmp _ZNSt6vectorI7_D3DBOXSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__80
_ZNSt6vectorI7_D3DBOXSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__100:
	mov edx, ebx
_ZNSt6vectorI7_D3DBOXSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__80:
	test ecx, ecx
	jz _ZNSt6vectorI7_D3DBOXSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__90
	mov eax, [edx]
	mov [ecx], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov eax, [edx+0xc]
	mov [ecx+0xc], eax
	mov eax, [edx+0x10]
	mov [ecx+0x10], eax
	mov eax, [edx+0x14]
	mov [ecx+0x14], eax
_ZNSt6vectorI7_D3DBOXSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__90:
	add ebx, 0x18
	add ecx, 0x18
	cmp edi, ebx
	jnz _ZNSt6vectorI7_D3DBOXSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__100
_ZNSt6vectorI7_D3DBOXSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__70:
	test ecx, ecx
	jz _ZNSt6vectorI7_D3DBOXSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__110
	mov eax, [esi]
	mov [ecx], eax
	mov eax, [esi+0x4]
	mov [ecx+0x4], eax
	mov eax, [esi+0x8]
	mov [ecx+0x8], eax
	mov eax, [esi+0xc]
	mov [ecx+0xc], eax
	mov eax, [esi+0x10]
	mov [ecx+0x10], eax
	mov eax, [esi+0x14]
	mov [ecx+0x14], eax
_ZNSt6vectorI7_D3DBOXSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__110:
	mov edi, [ebp+0x8]
	add edi, 0x4
	mov edx, [ebp+0x8]
	mov esi, [edx+0x4]
	mov edx, [ebp-0x1c]
	lea ebx, [ecx+0x18]
	cmp esi, edx
	jz _ZNSt6vectorI7_D3DBOXSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__120
_ZNSt6vectorI7_D3DBOXSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__140:
	mov ecx, edx
	test ebx, ebx
	jz _ZNSt6vectorI7_D3DBOXSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__130
	mov eax, [edx]
	mov [ebx], eax
	mov eax, [edx+0x4]
	mov [ebx+0x4], eax
	mov eax, [edx+0x8]
	mov [ebx+0x8], eax
	mov eax, [edx+0xc]
	mov [ebx+0xc], eax
	mov eax, [edx+0x10]
	mov [ebx+0x10], eax
	mov eax, [edx+0x14]
	mov [ebx+0x14], eax
_ZNSt6vectorI7_D3DBOXSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__130:
	lea edx, [ecx+0x18]
	add ebx, 0x18
	cmp edx, esi
	jnz _ZNSt6vectorI7_D3DBOXSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__140
_ZNSt6vectorI7_D3DBOXSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__120:
	mov edx, [edi]
	mov eax, [ebp+0x8]
	mov ecx, [eax]
	mov eax, ecx
	cmp edx, ecx
	jz _ZNSt6vectorI7_D3DBOXSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__150
_ZNSt6vectorI7_D3DBOXSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__160:
	add eax, 0x18
	cmp edx, eax
	jnz _ZNSt6vectorI7_D3DBOXSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__160
_ZNSt6vectorI7_D3DBOXSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__150:
	test ecx, ecx
	jz _ZNSt6vectorI7_D3DBOXSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__170
	mov [esp], ecx
	call _ZdlPv
_ZNSt6vectorI7_D3DBOXSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__170:
	mov eax, [ebp-0x38]
	mov edx, [ebp+0x8]
	mov [edx], eax
	mov [edx+0x4], ebx
	mov eax, [ebp-0x38]
	add eax, [ebp-0x40]
	mov [edx+0x8], eax
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZNSt6vectorI7_D3DBOXSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__20:
	mov eax, [ebp+0x8]
	jmp _ZNSt6vectorI7_D3DBOXSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__180
_ZNSt6vectorI7_D3DBOXSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__60:
	lea edx, [eax+eax]
	cmp edx, eax
	jb _ZNSt6vectorI7_D3DBOXSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__190
	cmp edx, 0xaaaaaaa
	jbe _ZNSt6vectorI7_D3DBOXSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__200
	call _ZSt17__throw_bad_allocv
_ZNSt6vectorI7_D3DBOXSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__190:
	mov edx, 0xaaaaaaa
	jmp _ZNSt6vectorI7_D3DBOXSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__200
_ZNSt6vectorI7_D3DBOXSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__50:
	mov dword [esp], _cstring_vector_m_insert_
	call _ZSt20__throw_length_errorPKc
	nop


;std::vector<CDirect3DVolume*, std::allocator<CDirect3DVolume*> >::_M_insert_aux(__gnu_cxx::__normal_iterator<CDirect3DVolume**, std::vector<CDirect3DVolume*, std::allocator<CDirect3DVolume*> > >, CDirect3DVolume* const&)
_ZNSt6vectorIP15CDirect3DVolumeSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov edx, [edi+0x4]
	cmp edx, [edi+0x8]
	jz _ZNSt6vectorIP15CDirect3DVolumeSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__10
	test edx, edx
	jz _ZNSt6vectorIP15CDirect3DVolumeSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__20
	mov eax, [edx-0x4]
	mov [edx], eax
	mov edx, [edi+0x4]
_ZNSt6vectorIP15CDirect3DVolumeSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__20:
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
_ZNSt6vectorIP15CDirect3DVolumeSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__10:
	mov eax, edx
	sub eax, [edi]
	sar eax, 0x2
	cmp eax, 0x3fffffff
	jz _ZNSt6vectorIP15CDirect3DVolumeSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__30
	test eax, eax
	jnz _ZNSt6vectorIP15CDirect3DVolumeSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__40
	mov edx, 0x1
_ZNSt6vectorIP15CDirect3DVolumeSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__100:
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
	jz _ZNSt6vectorIP15CDirect3DVolumeSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__50
	mov ecx, [ebp+0x10]
	mov eax, [ecx]
	mov [edx], eax
_ZNSt6vectorIP15CDirect3DVolumeSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__50:
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
	jz _ZNSt6vectorIP15CDirect3DVolumeSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__60
_ZNSt6vectorIP15CDirect3DVolumeSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__70:
	add eax, 0x4
	cmp eax, edx
	jnz _ZNSt6vectorIP15CDirect3DVolumeSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__70
_ZNSt6vectorIP15CDirect3DVolumeSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__60:
	test ecx, ecx
	jz _ZNSt6vectorIP15CDirect3DVolumeSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__80
	mov [esp], ecx
	call _ZdlPv
_ZNSt6vectorIP15CDirect3DVolumeSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__80:
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
_ZNSt6vectorIP15CDirect3DVolumeSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__40:
	lea edx, [eax+eax]
	cmp edx, eax
	jb _ZNSt6vectorIP15CDirect3DVolumeSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__90
	cmp edx, 0x3fffffff
	jbe _ZNSt6vectorIP15CDirect3DVolumeSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__100
	call _ZSt17__throw_bad_allocv
_ZNSt6vectorIP15CDirect3DVolumeSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__90:
	mov edx, 0x3fffffff
	jmp _ZNSt6vectorIP15CDirect3DVolumeSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__100
_ZNSt6vectorIP15CDirect3DVolumeSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1__30:
	mov dword [esp], _cstring_vector_m_insert_
	call _ZSt20__throw_length_errorPKc


;std::vector<CDirect3DVolume*, std::allocator<CDirect3DVolume*> >::reserve(unsigned long)
_ZNSt6vectorIP15CDirect3DVolumeSaIS1_EE7reserveEm:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edx, [ebp+0xc]
	cmp edx, 0x3fffffff
	ja _ZNSt6vectorIP15CDirect3DVolumeSaIS1_EE7reserveEm_10
	mov eax, [ebp+0x8]
	mov esi, [eax]
	mov ecx, eax
	mov eax, [eax+0x8]
	sub eax, esi
	sar eax, 0x2
	cmp edx, eax
	ja _ZNSt6vectorIP15CDirect3DVolumeSaIS1_EE7reserveEm_20
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZNSt6vectorIP15CDirect3DVolumeSaIS1_EE7reserveEm_20:
	mov ebx, [ecx+0x4]
	sub ebx, esi
	mov eax, ebx
	sar eax, 0x2
	mov [ebp-0x20], eax
	cmp edx, 0x3fffffff
	ja _ZNSt6vectorIP15CDirect3DVolumeSaIS1_EE7reserveEm_30
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
	jz _ZNSt6vectorIP15CDirect3DVolumeSaIS1_EE7reserveEm_40
	mov eax, ecx
_ZNSt6vectorIP15CDirect3DVolumeSaIS1_EE7reserveEm_50:
	add eax, 0x4
	cmp edx, eax
	jnz _ZNSt6vectorIP15CDirect3DVolumeSaIS1_EE7reserveEm_50
_ZNSt6vectorIP15CDirect3DVolumeSaIS1_EE7reserveEm_40:
	test ecx, ecx
	jz _ZNSt6vectorIP15CDirect3DVolumeSaIS1_EE7reserveEm_60
	mov [esp], ecx
	call _ZdlPv
_ZNSt6vectorIP15CDirect3DVolumeSaIS1_EE7reserveEm_60:
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
_ZNSt6vectorIP15CDirect3DVolumeSaIS1_EE7reserveEm_10:
	mov dword [esp], _cstring_vectorreserve
	call _ZSt20__throw_length_errorPKc
_ZNSt6vectorIP15CDirect3DVolumeSaIS1_EE7reserveEm_30:
	call _ZSt17__throw_bad_allocv
	add dword [esp+0x4], 0xfffffffc
	jmp _ZN22CDirect3DVolumeTextureD1Ev


;Initialized global or static variables of CDirect3DVolumeTexture:
SECTION .data


;Initialized constant data of CDirect3DVolumeTexture:
SECTION .rdata
;VTable for CDirect3DVolume:
_ZTV15CDirect3DVolume: dd 0x0, 0x3b4c80, _ZN15CDirect3DVolume14QueryInterfaceERK5_GUIDPPv, _ZN15CDirect3DVolume6AddRefEv, _ZN15CDirect3DVolume7ReleaseEv, _ZN15CDirect3DVolume9GetDeviceEPP16IDirect3DDevice9, _ZN15CDirect3DVolume14SetPrivateDataERK5_GUIDPKvmm, _ZN15CDirect3DVolume14GetPrivateDataERK5_GUIDPvPm, _ZN15CDirect3DVolume15FreePrivateDataERK5_GUID, _ZN15CDirect3DVolume12GetContainerERK5_GUIDPPv, _ZN15CDirect3DVolume7GetDescEP15_D3DVOLUME_DESC, _ZN15CDirect3DVolume7LockBoxEP14_D3DLOCKED_BOXPK7_D3DBOXm, _ZN15CDirect3DVolume9UnlockBoxEv, _ZN15CDirect3DVolumeD1Ev, _ZN15CDirect3DVolumeD0Ev, 0x0
;VTable for CDirect3DVolumeTexture:
_ZTV22CDirect3DVolumeTexture: dd 0x0, 0x3b4cc0, _ZN22CDirect3DVolumeTexture14QueryInterfaceERK5_GUIDPPv, _ZN22CDirect3DVolumeTexture6AddRefEv, _ZN22CDirect3DVolumeTexture7ReleaseEv, _ZN22CDirect3DVolumeTexture9GetDeviceEPP16IDirect3DDevice9, _ZN22CDirect3DVolumeTexture14SetPrivateDataERK5_GUIDPKvmm, _ZN22CDirect3DVolumeTexture14GetPrivateDataERK5_GUIDPvPm, _ZN22CDirect3DVolumeTexture15FreePrivateDataERK5_GUID, _ZN22CDirect3DVolumeTexture11SetPriorityEm, _ZN22CDirect3DVolumeTexture11GetPriorityEv, _ZN22CDirect3DVolumeTexture7PreLoadEv, _ZN22CDirect3DVolumeTexture7GetTypeEv, _ZN22CDirect3DVolumeTexture6SetLODEm, _ZN22CDirect3DVolumeTexture6GetLODEv, _ZN22CDirect3DVolumeTexture13GetLevelCountEv, _ZN22CDirect3DVolumeTexture20SetAutoGenFilterTypeE21_D3DTEXTUREFILTERTYPE, _ZN22CDirect3DVolumeTexture20GetAutoGenFilterTypeEv, _ZN22CDirect3DVolumeTexture20GenerateMipSubLevelsEv, _ZN22CDirect3DVolumeTexture12GetLevelDescEjP15_D3DVOLUME_DESC, _ZN22CDirect3DVolumeTexture14GetVolumeLevelEjPP16IDirect3DVolume9, _ZN22CDirect3DVolumeTexture7LockBoxEjP14_D3DLOCKED_BOXPK7_D3DBOXm, _ZN22CDirect3DVolumeTexture9UnlockBoxEj, _ZN22CDirect3DVolumeTexture11AddDirtyBoxEPK7_D3DBOX, _ZN22CDirect3DVolumeTextureD1Ev, _ZN22CDirect3DVolumeTextureD0Ev, 0xfffffffc, 0x3b4cc0, 0x331b7e, 0x331708, _ZN14COpenGLTexture20UpdateOpenGLSurfacesEv, 0x0


;Zero initialized global or static variables of CDirect3DVolumeTexture:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_vector_m_insert_:		db "vector::_M_insert_aux",0
_cstring_vectorreserve:		db "vector::reserve",0



;All constant floats and doubles:
SECTION .rdata

