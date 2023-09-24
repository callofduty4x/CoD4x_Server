;Imports of COpenGLTexture:
	extern _ZN7COpenGL7sOpenGLE
	extern _ZN7COpenGL21ReleaseTextureBindingEPKm
	extern _Znwm
	extern glGenTextures
	extern _ZNSt15_List_node_base4hookEPS_
	extern _ZdlPv
	extern _Unwind_Resume
	extern _ZN14COpenGLTexture20UpdateOpenGLSurfacesEv

;Exports of COpenGLTexture:
	global _ZN14COpenGLTexture16ReleaseResourcesEv
	global _ZN14COpenGLTexture5ResetEv
	global _ZN14COpenGLTextureC1Em
	global _ZN14COpenGLTextureC1Emjjj
	global _ZN14COpenGLTextureC2Emjjj
	global _ZN14COpenGLTextureD0Ev
	global _ZN14COpenGLTextureD1Ev
	global _ZN14COpenGLTextureD2Ev
	global _ZN15TextureInfoTypeD0Ev
	global _ZN15TextureInfoTypeD1Ev
	global _ZTI14COpenGLTexture
	global _ZTI15TextureInfoType
	global _ZTV14COpenGLTexture
	global _ZTV15TextureInfoType


SECTION .text


;COpenGLTexture::ReleaseResources()
_ZN14COpenGLTexture16ReleaseResourcesEv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0xc]
	test eax, eax
	jz _ZN14COpenGLTexture16ReleaseResourcesEv_10
	mov eax, [ebx+0xc]
	mov [esp+0x4], eax
	mov eax, _ZN7COpenGL7sOpenGLE
	mov [esp], eax
	call _ZN7COpenGL21ReleaseTextureBindingEPKm
	mov dword [ebx+0xc], 0x0
_ZN14COpenGLTexture16ReleaseResourcesEv_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	add [eax], al


;COpenGLTexture::Reset()
_ZN14COpenGLTexture5ResetEv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	add edi, 0x4
	cmp dword [edi+0x4], 0x84f5
	jz _ZN14COpenGLTexture5ResetEv_10
	mov dword [ebp-0x1c], 0x2901
	mov dword [ebp-0x28], 0x2702
	mov dword [ebp-0x24], 0x2901
	mov dword [ebp-0x20], 0x2901
_ZN14COpenGLTexture5ResetEv_20:
	mov dword [esp], 0x4
	call _Znwm
	mov ebx, eax
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call glGenTextures
	mov esi, _ZN7COpenGL7sOpenGLE
	add esi, 0x24
	mov dword [esp], 0xc
	call _Znwm
	mov [eax+0x8], ebx
	mov [esp+0x4], esi
	mov [esp], eax
	call _ZNSt15_List_node_base4hookEPS_
	mov [edi+0x4], ebx
	mov [edi+0x8], ebx
	mov eax, [ebp-0x1c]
	mov [edi+0xc], eax
	mov eax, [ebp-0x20]
	mov [edi+0x10], eax
	mov eax, [ebp-0x24]
	mov [edi+0x14], eax
	mov eax, [ebp-0x28]
	mov [edi+0x18], eax
	mov dword [edi+0x1c], 0x2601
	mov dword [edi+0x20], 0x3e8
	mov dword [edi+0x24], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN14COpenGLTexture5ResetEv_10:
	mov dword [ebp-0x1c], 0x812f
	mov dword [ebp-0x28], 0x2601
	mov dword [ebp-0x24], 0x812f
	mov dword [ebp-0x20], 0x812f
	jmp _ZN14COpenGLTexture5ResetEv_20


;COpenGLTexture::COpenGLTexture(unsigned long)
_ZN14COpenGLTextureC1Em:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov edx, [ebp+0x8]
	mov dword [edx], _ZTV14COpenGLTexture+0x8
	cmp dword [ebp+0xc], 0x84f5
	jz _ZN14COpenGLTextureC1Em_10
	mov esi, 0x2901
	mov edi, 0x2702
	mov ebx, 0x2901
	mov ecx, 0x2901
_ZN14COpenGLTextureC1Em_20:
	lea eax, [edx+0x4]
	mov dword [edx+0x4], _ZTV15TextureInfoType+0x8
	mov dword [eax+0x8], 0x0
	mov [eax+0xc], esi
	mov [eax+0x10], ecx
	mov [eax+0x14], ebx
	mov [eax+0x18], edi
	mov dword [eax+0x1c], 0x2601
	mov dword [eax+0x20], 0x3e8
	mov dword [eax+0x24], 0x1
	mov dword [edx+0x2c], 0x0
	mov dword [edx+0x30], 0x0
	mov dword [edx+0x34], 0x0
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN14COpenGLTextureC1Em_10:
	mov esi, 0x812f
	mov edi, 0x2601
	mov ebx, 0x812f
	mov ecx, 0x812f
	jmp _ZN14COpenGLTextureC1Em_20


;COpenGLTexture::COpenGLTexture(unsigned long, unsigned int, unsigned int, unsigned int)
_ZN14COpenGLTextureC1Emjjj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov dword [edi], _ZTV14COpenGLTexture+0x8
	cmp dword [ebp+0xc], 0x84f5
	jz _ZN14COpenGLTextureC1Emjjj_10
	mov dword [ebp-0x1c], 0x2901
	mov dword [ebp-0x28], 0x2702
	mov dword [ebp-0x24], 0x2901
	mov dword [ebp-0x20], 0x2901
_ZN14COpenGLTextureC1Emjjj_20:
	mov dword [esp], 0x4
	call _Znwm
	mov ebx, eax
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call glGenTextures
	mov esi, _ZN7COpenGL7sOpenGLE
	add esi, 0x24
	mov dword [esp], 0xc
	call _Znwm
	mov [eax+0x8], ebx
	mov [esp+0x4], esi
	mov [esp], eax
	call _ZNSt15_List_node_base4hookEPS_
	lea eax, [edi+0x4]
	mov dword [edi+0x4], _ZTV15TextureInfoType+0x8
	mov [eax+0x8], ebx
	mov edx, [ebp-0x1c]
	mov [eax+0xc], edx
	mov edx, [ebp-0x20]
	mov [eax+0x10], edx
	mov edx, [ebp-0x24]
	mov [eax+0x14], edx
	mov edx, [ebp-0x28]
	mov [eax+0x18], edx
	mov dword [eax+0x1c], 0x2601
	mov dword [eax+0x20], 0x3e8
	mov dword [eax+0x24], 0x1
	mov eax, [ebp+0x10]
	mov [edi+0x2c], eax
	mov eax, [ebp+0x14]
	mov [edi+0x30], eax
	mov eax, [ebp+0x18]
	mov [edi+0x34], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN14COpenGLTextureC1Emjjj_10:
	mov dword [ebp-0x1c], 0x812f
	mov dword [ebp-0x28], 0x2601
	mov dword [ebp-0x24], 0x812f
	mov dword [ebp-0x20], 0x812f
	jmp _ZN14COpenGLTextureC1Emjjj_20


;COpenGLTexture::COpenGLTexture(unsigned long, unsigned int, unsigned int, unsigned int)
_ZN14COpenGLTextureC2Emjjj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov dword [edi], _ZTV14COpenGLTexture+0x8
	cmp dword [ebp+0xc], 0x84f5
	jz _ZN14COpenGLTextureC2Emjjj_10
	mov dword [ebp-0x1c], 0x2901
	mov dword [ebp-0x28], 0x2702
	mov dword [ebp-0x24], 0x2901
	mov dword [ebp-0x20], 0x2901
_ZN14COpenGLTextureC2Emjjj_20:
	mov dword [esp], 0x4
	call _Znwm
	mov ebx, eax
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call glGenTextures
	mov esi, _ZN7COpenGL7sOpenGLE
	add esi, 0x24
	mov dword [esp], 0xc
	call _Znwm
	mov [eax+0x8], ebx
	mov [esp+0x4], esi
	mov [esp], eax
	call _ZNSt15_List_node_base4hookEPS_
	lea eax, [edi+0x4]
	mov dword [edi+0x4], _ZTV15TextureInfoType+0x8
	mov [eax+0x8], ebx
	mov edx, [ebp-0x1c]
	mov [eax+0xc], edx
	mov edx, [ebp-0x20]
	mov [eax+0x10], edx
	mov edx, [ebp-0x24]
	mov [eax+0x14], edx
	mov edx, [ebp-0x28]
	mov [eax+0x18], edx
	mov dword [eax+0x1c], 0x2601
	mov dword [eax+0x20], 0x3e8
	mov dword [eax+0x24], 0x1
	mov eax, [ebp+0x10]
	mov [edi+0x2c], eax
	mov eax, [ebp+0x14]
	mov [edi+0x30], eax
	mov eax, [ebp+0x18]
	mov [edi+0x34], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN14COpenGLTextureC2Emjjj_10:
	mov dword [ebp-0x1c], 0x812f
	mov dword [ebp-0x28], 0x2601
	mov dword [ebp-0x24], 0x812f
	mov dword [ebp-0x20], 0x812f
	jmp _ZN14COpenGLTextureC2Emjjj_20


;COpenGLTexture::~COpenGLTexture()
_ZN14COpenGLTextureD0Ev:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov dword [esi], _ZTV14COpenGLTexture+0x8
	lea ebx, [esi+0x4]
	mov eax, [ebx+0x8]
	test eax, eax
	jz _ZN14COpenGLTextureD0Ev_10
	mov eax, [esi+0xc]
	mov [esp+0x4], eax
	mov eax, _ZN7COpenGL7sOpenGLE
	mov [esp], eax
	call _ZN7COpenGL21ReleaseTextureBindingEPKm
	mov dword [esi+0xc], 0x0
_ZN14COpenGLTextureD0Ev_10:
	mov dword [ebx], _ZTV15TextureInfoType+0x8
	mov dword [ebx+0x8], 0x0
	mov dword [ebx+0xc], 0x0
	mov dword [ebx+0x10], 0x0
	mov dword [ebx+0x14], 0x0
	mov dword [ebx+0x18], 0x0
	mov dword [ebx+0x1c], 0x0
	mov dword [ebx+0x20], 0x0
	mov dword [ebx+0x24], 0x0
	mov [ebp+0x8], esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _ZdlPv
	mov dword [ebx], _ZTV15TextureInfoType+0x8
	mov dword [ebx+0x8], 0x0
	mov dword [ebx+0xc], 0x0
	mov dword [ebx+0x10], 0x0
	mov dword [ebx+0x14], 0x0
	mov dword [ebx+0x18], 0x0
	mov dword [ebx+0x1c], 0x0
	mov dword [ebx+0x20], 0x0
	mov dword [ebx+0x24], 0x0
	mov [esp], eax
	call _Unwind_Resume


;COpenGLTexture::~COpenGLTexture()
_ZN14COpenGLTextureD1Ev:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov dword [esi], _ZTV14COpenGLTexture+0x8
	lea ebx, [esi+0x4]
	mov ecx, [ebx+0x8]
	test ecx, ecx
	jz _ZN14COpenGLTextureD1Ev_10
	mov eax, [esi+0xc]
	mov [esp+0x4], eax
	mov eax, _ZN7COpenGL7sOpenGLE
	mov [esp], eax
	call _ZN7COpenGL21ReleaseTextureBindingEPKm
	mov dword [esi+0xc], 0x0
_ZN14COpenGLTextureD1Ev_10:
	mov dword [ebx], _ZTV15TextureInfoType+0x8
	mov dword [ebx+0x8], 0x0
	mov dword [ebx+0xc], 0x0
	mov dword [ebx+0x10], 0x0
	mov dword [ebx+0x14], 0x0
	mov dword [ebx+0x18], 0x0
	mov dword [ebx+0x1c], 0x0
	mov dword [ebx+0x20], 0x0
	mov dword [ebx+0x24], 0x0
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	mov dword [ebx], _ZTV15TextureInfoType+0x8
	mov dword [ebx+0x8], 0x0
	mov dword [ebx+0xc], 0x0
	mov dword [ebx+0x10], 0x0
	mov dword [ebx+0x14], 0x0
	mov dword [ebx+0x18], 0x0
	mov dword [ebx+0x1c], 0x0
	mov dword [ebx+0x20], 0x0
	mov dword [ebx+0x24], 0x0
	mov [esp], eax
	call _Unwind_Resume
	nop


;COpenGLTexture::~COpenGLTexture()
_ZN14COpenGLTextureD2Ev:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov dword [esi], _ZTV14COpenGLTexture+0x8
	lea ebx, [esi+0x4]
	mov edx, [ebx+0x8]
	test edx, edx
	jz _ZN14COpenGLTextureD2Ev_10
	mov eax, [esi+0xc]
	mov [esp+0x4], eax
	mov eax, _ZN7COpenGL7sOpenGLE
	mov [esp], eax
	call _ZN7COpenGL21ReleaseTextureBindingEPKm
	mov dword [esi+0xc], 0x0
_ZN14COpenGLTextureD2Ev_10:
	mov dword [ebx], _ZTV15TextureInfoType+0x8
	mov dword [ebx+0x8], 0x0
	mov dword [ebx+0xc], 0x0
	mov dword [ebx+0x10], 0x0
	mov dword [ebx+0x14], 0x0
	mov dword [ebx+0x18], 0x0
	mov dword [ebx+0x1c], 0x0
	mov dword [ebx+0x20], 0x0
	mov dword [ebx+0x24], 0x0
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	mov dword [ebx], _ZTV15TextureInfoType+0x8
	mov dword [ebx+0x8], 0x0
	mov dword [ebx+0xc], 0x0
	mov dword [ebx+0x10], 0x0
	mov dword [ebx+0x14], 0x0
	mov dword [ebx+0x18], 0x0
	mov dword [ebx+0x1c], 0x0
	mov dword [ebx+0x20], 0x0
	mov dword [ebx+0x24], 0x0
	mov [esp], eax
	call _Unwind_Resume
	nop


;TextureInfoType::~TextureInfoType()
_ZN15TextureInfoTypeD0Ev:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov dword [eax], _ZTV15TextureInfoType+0x8
	mov dword [eax+0x8], 0x0
	mov dword [eax+0xc], 0x0
	mov dword [eax+0x10], 0x0
	mov dword [eax+0x14], 0x0
	mov dword [eax+0x18], 0x0
	mov dword [eax+0x1c], 0x0
	mov dword [eax+0x20], 0x0
	mov dword [eax+0x24], 0x0
	mov [ebp+0x8], eax
	pop ebp
	jmp _ZdlPv
	nop


;TextureInfoType::~TextureInfoType()
_ZN15TextureInfoTypeD1Ev:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov dword [eax], _ZTV15TextureInfoType+0x8
	mov dword [eax+0x8], 0x0
	mov dword [eax+0xc], 0x0
	mov dword [eax+0x10], 0x0
	mov dword [eax+0x14], 0x0
	mov dword [eax+0x18], 0x0
	mov dword [eax+0x1c], 0x0
	mov dword [eax+0x20], 0x0
	mov dword [eax+0x24], 0x0
	pop ebp
	ret


;Initialized global or static variables of COpenGLTexture:
SECTION .data


;Initialized constant data of COpenGLTexture:
SECTION .rdata
;VTypeInfoTable for COpenGLTexture:
_ZTI14COpenGLTexture: dd 0x8, _cstring_14copengltexture, 0x0, 0x0, 0x0, 0x0, 0x0
		db 0x0, 0x0, 0x0
;VTypeInfoTable for TextureInfoType:
_ZTI15TextureInfoType: dd 0x8, _cstring_15textureinfotyp, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
;VTable for COpenGLTexture:
_ZTV14COpenGLTexture: dd 0x0, _ZTI14COpenGLTexture, _ZN14COpenGLTextureD1Ev, _ZN14COpenGLTextureD0Ev, _ZN14COpenGLTexture20UpdateOpenGLSurfacesEv, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
;VTable for TextureInfoType:
_ZTV15TextureInfoType: dd 0x0, _ZTI15TextureInfoType, _ZN15TextureInfoTypeD1Ev, _ZN15TextureInfoTypeD0Ev


;Zero initialized global or static variables of COpenGLTexture:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_14copengltexture:		db "14COpenGLTexture",0
_cstring_15textureinfotyp:		db "15TextureInfoType",0



;All constant floats and doubles:
SECTION .rdata

