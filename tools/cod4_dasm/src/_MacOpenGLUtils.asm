;Imports of MacOpenGLUtils:
	extern _ZN10MacDisplay30GetNeedsExplicitDepthComponentEv
	extern _ZN10MacDisplay22IsGLExtensionSupportedEPKc
	extern _ZN10MacDisplay23GetPCPixelShaderVersionEv
	extern _ZN10MacDisplay11GetCardTypeEv

;Exports of MacOpenGLUtils:
	global _ZN14MacOpenGLUtils12IsCompressedE10_D3DFORMAT
	global _ZN14MacOpenGLUtils13GetBufferHintERj
	global _ZN14MacOpenGLUtils13IsDepthFormatE10_D3DFORMAT
	global _ZN14MacOpenGLUtils13SetBufferHintEj
	global _ZN14MacOpenGLUtils16ClearBufferHintsEv
	global _ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT
	global _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT
	global _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT
	global _ZN14MacOpenGLUtils19GetNumTextureLevelsEjjj
	global _ZN14MacOpenGLUtils20GetOpenGLTextureTypeERbRmS1_S1_10_D3DFORMAT
	global _ZN14MacOpenGLUtils22IsGLExtensionSupportedEPKc
	global _ZN14MacOpenGLUtils23AreMatricesDifferent4x4EPKvS1_
	global _ZN14MacOpenGLUtils23GetPCPixelShaderVersionEv
	global _ZN14MacOpenGLUtils34ConvertD3DProjectionMatrixToOpenGLEPfff
	global _ZN14MacOpenGLUtils14UseBufferHintsE
	global _ZN14MacOpenGLUtils15BufferFlushSizeE


SECTION .text


;MacOpenGLUtils::IsCompressed(_D3DFORMAT)
_ZN14MacOpenGLUtils12IsCompressedE10_D3DFORMAT:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	cmp eax, 0x33545844
	jz _ZN14MacOpenGLUtils12IsCompressedE10_D3DFORMAT_10
	jle _ZN14MacOpenGLUtils12IsCompressedE10_D3DFORMAT_20
	cmp eax, 0x34545844
	jz _ZN14MacOpenGLUtils12IsCompressedE10_D3DFORMAT_10
	cmp eax, 0x35545844
	jz _ZN14MacOpenGLUtils12IsCompressedE10_D3DFORMAT_10
_ZN14MacOpenGLUtils12IsCompressedE10_D3DFORMAT_30:
	xor eax, eax
	pop ebp
	ret
_ZN14MacOpenGLUtils12IsCompressedE10_D3DFORMAT_20:
	cmp eax, 0x31545844
	jz _ZN14MacOpenGLUtils12IsCompressedE10_D3DFORMAT_10
	cmp eax, 0x32545844
	jnz _ZN14MacOpenGLUtils12IsCompressedE10_D3DFORMAT_30
_ZN14MacOpenGLUtils12IsCompressedE10_D3DFORMAT_10:
	mov eax, 0x1
	pop ebp
	ret


;MacOpenGLUtils::GetBufferHint(unsigned int&)
_ZN14MacOpenGLUtils13GetBufferHintERj:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	cmp byte [_ZN14MacOpenGLUtils14UseBufferHintsE], 0x0
	jz _ZN14MacOpenGLUtils13GetBufferHintERj_10
	mov eax, [_ZN14MacOpenGLUtils15BufferFlushSizeE]
	mov [edx], eax
	movzx eax, byte [_ZN14MacOpenGLUtils14UseBufferHintsE]
	pop ebp
	ret
_ZN14MacOpenGLUtils13GetBufferHintERj_10:
	mov dword [edx], 0xffffffff
	movzx eax, byte [_ZN14MacOpenGLUtils14UseBufferHintsE]
	pop ebp
	ret


;MacOpenGLUtils::IsDepthFormat(_D3DFORMAT)
_ZN14MacOpenGLUtils13IsDepthFormatE10_D3DFORMAT:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	sub ecx, 0x46
	cmp ecx, 0xd
	ja _ZN14MacOpenGLUtils13IsDepthFormatE10_D3DFORMAT_10
	mov eax, 0x1
	shl eax, cl
	test eax, 0x36ab
	jnz _ZN14MacOpenGLUtils13IsDepthFormatE10_D3DFORMAT_20
_ZN14MacOpenGLUtils13IsDepthFormatE10_D3DFORMAT_10:
	xor eax, eax
	pop ebp
	ret
_ZN14MacOpenGLUtils13IsDepthFormatE10_D3DFORMAT_20:
	mov eax, 0x1
	pop ebp
	ret
	nop
	add [eax], al


;MacOpenGLUtils::SetBufferHint(unsigned int)
_ZN14MacOpenGLUtils13SetBufferHintEj:
	push ebp
	mov ebp, esp
	mov byte [_ZN14MacOpenGLUtils14UseBufferHintsE], 0x1
	mov eax, [ebp+0x8]
	mov [_ZN14MacOpenGLUtils15BufferFlushSizeE], eax
	pop ebp
	ret


;MacOpenGLUtils::ClearBufferHints()
_ZN14MacOpenGLUtils16ClearBufferHintsEv:
	push ebp
	mov ebp, esp
	mov byte [_ZN14MacOpenGLUtils14UseBufferHintsE], 0x0
	pop ebp
	ret


;MacOpenGLUtils::GetFormatSizeInBits(_D3DFORMAT)
_ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	cmp eax, 0x40
	jg _ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT_10
	cmp eax, 0x3e
	jl _ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT_20
_ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT_90:
	mov eax, 0x20
	pop ebp
	ret
_ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT_10:
	cmp eax, 0x65
	jz _ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT_30
	jle _ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT_40
	cmp eax, 0x32545844
	jz _ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT_50
	jg _ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT_60
	cmp eax, 0x72
	jz _ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT_70
	cmp eax, 0x31545844
	jz _ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT_80
	cmp eax, 0x66
	jz _ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT_90
_ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT_120:
	xor eax, eax
_ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT_140:
	pop ebp
	ret
_ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT_20:
	cmp eax, 0x1e
	jle _ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT_100
	cmp eax, 0x33
	jz _ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT_30
	jg _ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT_110
	cmp eax, 0x29
	jz _ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT_50
	cmp eax, 0x32
	jz _ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT_50
	cmp eax, 0x28
	jnz _ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT_120
_ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT_30:
	mov eax, 0x10
	pop ebp
	ret
_ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT_40:
	cmp eax, 0x4b
	jz _ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT_90
	jg _ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT_130
	cmp eax, 0x47
	jz _ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT_90
	cmp eax, 0x49
	jz _ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT_30
	cmp eax, 0x46
	jz _ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT_30
	xor eax, eax
	jmp _ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT_140
_ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT_100:
	cmp eax, 0x1d
	jge _ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT_30
	cmp eax, 0x1a
	jg _ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT_50
	cmp eax, 0x17
	jge _ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT_30
	cmp eax, 0x14
	jz _ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT_150
	jge _ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT_90
	xor eax, eax
	jmp _ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT_140
_ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT_60:
	cmp eax, 0x34545844
	jz _ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT_50
	cmp eax, 0x35545844
	jz _ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT_50
	cmp eax, 0x33545844
	jnz _ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT_120
_ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT_50:
	mov eax, 0x8
	pop ebp
	ret
_ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT_130:
	cmp eax, 0x4f
	jz _ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT_90
	cmp eax, 0x50
	jz _ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT_30
	cmp eax, 0x4d
	jz _ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT_90
	xor eax, eax
	jmp _ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT_140
_ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT_110:
	cmp eax, 0x34
	jz _ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT_50
	cmp eax, 0x3c
	jge _ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT_30
	xor eax, eax
	jmp _ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT_140
_ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT_70:
	mov eax, 0x30
	pop ebp
	ret
_ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT_80:
	mov eax, 0x4
	pop ebp
	ret
_ZN14MacOpenGLUtils19GetFormatSizeInBitsE10_D3DFORMAT_150:
	mov eax, 0x18
	pop ebp
	ret
	add [eax], al


;MacOpenGLUtils::GetImageSizeInBytes(unsigned int, unsigned int, unsigned int, unsigned int, _D3DFORMAT)
_ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov ebx, [ebp+0x10]
	mov edi, [ebp+0x18]
	mov edx, [ebp+0x14]
	test edx, edx
	jnz _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_10
	mov dword [ebp-0x28], 0x0
	mov eax, [ebp-0x28]
_ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_420:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_10:
	cmp edi, 0x31545844
	jz _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_20
	mov dword [ebp-0x10], 0x0
	mov dword [ebp-0x28], 0x0
	test esi, esi
	jnz _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_30
_ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_140:
	test ecx, ecx
	jz _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_40
	mov edx, ecx
	shr edx, 1
	mov [ebp-0x1c], edx
	mov eax, 0x1
_ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_200:
	test ebx, ebx
	jnz _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_50
_ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_160:
	mov ebx, 0x1
	mov dword [ebp-0x14], 0x0
_ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_170:
	test eax, eax
	jnz _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_60
	mov eax, 0x1
_ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_60:
	test ecx, ecx
	jnz _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_70
	mov ecx, 0x1
_ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_70:
	test ebx, ebx
	jnz _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_80
	mov ebx, 0x1
_ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_80:
	cmp edi, 0x33545844
	jz _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_90
	jg _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_100
	cmp edi, 0x31545844
	jz _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_90
	cmp edi, 0x32545844
	jz _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_90
_ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_180:
	imul eax, ecx
	imul eax, ebx
	cmp edi, 0x40
	jg _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_110
	cmp edi, 0x3e
	jl _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_120
_ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_270:
	shl eax, 0x5
_ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_280:
	shr eax, 0x3
	add [ebp-0x28], eax
	add dword [ebp-0x10], 0x1
	mov eax, [ebp-0x10]
	cmp [ebp+0x14], eax
	jz _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_130
_ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_190:
	mov ecx, [ebp-0x1c]
	mov ebx, [ebp-0x14]
	test esi, esi
	jz _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_140
_ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_30:
	test ecx, ecx
	jz _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_150
	mov eax, ecx
	shr eax, 1
	mov [ebp-0x1c], eax
	mov eax, esi
	shr esi, 1
	test ebx, ebx
	jz _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_160
_ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_50:
	mov edx, ebx
	shr edx, 1
	mov [ebp-0x14], edx
	jmp _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_170
_ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_100:
	cmp edi, 0x34545844
	jz _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_90
	cmp edi, 0x35545844
	jnz _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_180
_ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_90:
	lea edx, [eax+0x3]
	shr edx, 0x2
	lea eax, [ecx+0x3]
	shr eax, 0x2
	imul edx, eax
	mov eax, ebx
	imul eax, edx
	shl eax, 0x4
	add [ebp-0x28], eax
	add dword [ebp-0x10], 0x1
	mov eax, [ebp-0x10]
	cmp [ebp+0x14], eax
	jnz _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_190
_ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_130:
	mov eax, [ebp-0x28]
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_40:
	test ebx, ebx
	jz _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_130
	mov esi, 0x1
_ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_150:
	mov eax, esi
	shr esi, 1
	mov ecx, 0x1
	mov dword [ebp-0x1c], 0x0
	jmp _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_200
_ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_110:
	cmp edi, 0x65
	jz _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_210
	jle _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_220
	cmp edi, 0x32545844
	jz _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_230
	jg _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_240
	cmp edi, 0x72
	jz _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_250
	cmp edi, 0x31545844
	jz _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_260
	cmp edi, 0x66
	jz _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_270
_ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_310:
	xor eax, eax
	jmp _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_280
_ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_120:
	cmp edi, 0x1e
	jle _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_290
	cmp edi, 0x33
	jz _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_210
	jg _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_300
	cmp edi, 0x29
	jz _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_230
	cmp edi, 0x32
	jz _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_230
	cmp edi, 0x28
	jnz _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_310
_ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_210:
	shl eax, 0x4
	jmp _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_280
_ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_220:
	cmp edi, 0x4b
	jz _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_270
	jg _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_320
	cmp edi, 0x47
	jz _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_270
	cmp edi, 0x49
	jz _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_210
	cmp edi, 0x46
	jz _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_210
	xor eax, eax
	jmp _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_280
_ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_290:
	cmp edi, 0x1d
	jge _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_210
	cmp edi, 0x1a
	jle _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_330
_ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_230:
	shl eax, 0x3
	jmp _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_280
_ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_320:
	cmp edi, 0x4f
	jz _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_270
	cmp edi, 0x50
	jz _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_210
	cmp edi, 0x4d
	jz _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_270
	xor eax, eax
	jmp _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_280
_ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_240:
	cmp edi, 0x34545844
	jz _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_230
	cmp edi, 0x35545844
	jz _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_230
	cmp edi, 0x33545844
	jz _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_230
	xor eax, eax
	jmp _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_280
_ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_300:
	cmp edi, 0x34
	jz _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_230
	cmp edi, 0x3c
	jge _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_210
	xor eax, eax
	jmp _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_280
_ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_330:
	cmp edi, 0x17
	jge _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_210
	cmp edi, 0x14
	jz _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_340
	jge _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_270
	xor eax, eax
	jmp _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_280
_ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_260:
	shl eax, 0x2
	jmp _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_280
_ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_250:
	lea eax, [eax+eax*2]
	shl eax, 0x4
	jmp _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_280
_ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_340:
	lea eax, [eax+eax*2]
	shl eax, 0x3
	jmp _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_280
_ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_20:
	mov dword [ebp-0x24], 0x0
	mov dword [ebp-0x28], 0x0
_ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_390:
	test esi, esi
	jnz _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_350
	test ecx, ecx
	jz _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_360
	mov edi, ecx
	shr edi, 1
	mov si, 0x1
	mov dword [ebp-0x20], 0x0
_ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_410:
	test ebx, ebx
	jnz _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_370
	mov bl, 0x1
	mov dword [ebp-0x18], 0x0
_ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_430:
	mov eax, 0x1
	test esi, esi
	cmovz esi, eax
	test ecx, ecx
	cmovz ecx, eax
	test ebx, ebx
	cmovz ebx, eax
	lea edx, [esi+0x3]
	shr edx, 0x2
	lea eax, [ecx+0x3]
	shr eax, 0x2
	imul edx, eax
	imul ebx, edx
	mov edx, [ebp-0x28]
	lea edx, [edx+ebx*8]
	mov [ebp-0x28], edx
	add dword [ebp-0x24], 0x1
	mov eax, [ebp-0x24]
	cmp [ebp+0x14], eax
	jz _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_380
	mov esi, [ebp-0x20]
	mov ecx, edi
	mov ebx, [ebp-0x18]
	jmp _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_390
_ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_350:
	test ecx, ecx
	jz _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_400
	mov eax, esi
	shr eax, 1
	mov [ebp-0x20], eax
	mov edi, ecx
	shr edi, 1
	jmp _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_410
_ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_380:
	mov eax, edx
	jmp _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_420
_ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_360:
	test ebx, ebx
	jz _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_130
	mov esi, 0x1
_ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_400:
	mov edx, esi
	shr edx, 1
	mov [ebp-0x20], edx
	mov ecx, 0x1
	xor edi, edi
	jmp _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_410
_ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_370:
	mov eax, ebx
	shr eax, 1
	mov [ebp-0x18], eax
	jmp _ZN14MacOpenGLUtils19GetImageSizeInBytesEjjjj10_D3DFORMAT_430


;MacOpenGLUtils::GetLevelSizeInBytes(unsigned int, unsigned int, unsigned int, _D3DFORMAT)
_ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov edx, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	mov esi, [ebp+0x14]
	mov eax, 0x1
	test edx, edx
	cmovz edx, eax
	test ebx, ebx
	cmovz ebx, eax
	test ecx, ecx
	cmovz ecx, eax
	cmp esi, 0x33545844
	jz _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_10
	jle _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_20
	cmp esi, 0x34545844
	jz _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_10
	cmp esi, 0x35545844
	jz _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_10
_ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_90:
	imul edx, ebx
	mov eax, ecx
	imul eax, edx
	cmp esi, 0x40
	jle _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_30
	cmp esi, 0x65
	jz _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_40
	jg _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_50
	cmp esi, 0x4b
	jz _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_60
	jg _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_70
	cmp esi, 0x47
	jz _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_60
	cmp esi, 0x49
	jz _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_40
	cmp esi, 0x46
	jz _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_40
_ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_130:
	xor eax, eax
_ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_200:
	shr eax, 0x3
_ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_140:
	pop ebx
	pop esi
	pop ebp
	ret
_ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_20:
	cmp esi, 0x31545844
	jz _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_80
	cmp esi, 0x32545844
	jnz _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_90
_ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_10:
	cmp esi, 0x31545844
	jz _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_80
	mov esi, 0x10
_ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_160:
	add edx, 0x3
	shr edx, 0x2
	lea eax, [ebx+0x3]
	shr eax, 0x2
	imul edx, eax
	imul ecx, edx
	mov eax, esi
	imul eax, ecx
	pop ebx
	pop esi
	pop ebp
	ret
_ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_30:
	cmp esi, 0x3e
	jge _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_60
	cmp esi, 0x1e
	jle _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_100
	cmp esi, 0x33
	jz _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_40
	jg _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_110
	cmp esi, 0x29
	jz _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_120
	cmp esi, 0x32
	jz _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_120
	cmp esi, 0x28
	jnz _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_130
_ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_40:
	shl eax, 0x4
_ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_210:
	shr eax, 0x3
	jmp _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_140
_ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_100:
	cmp esi, 0x1d
	jge _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_40
	cmp esi, 0x1a
	jg _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_120
	cmp esi, 0x17
	jge _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_40
	cmp esi, 0x14
	jz _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_150
	jl _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_130
_ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_60:
	shl eax, 0x5
	shr eax, 0x3
	jmp _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_140
_ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_80:
	mov esi, 0x8
	jmp _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_160
_ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_50:
	cmp esi, 0x32545844
	jz _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_120
	jg _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_170
	cmp esi, 0x72
	jz _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_180
	cmp esi, 0x31545844
	jz _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_190
	cmp esi, 0x66
	jz _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_60
	xor eax, eax
	jmp _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_200
_ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_170:
	cmp esi, 0x34545844
	jz _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_120
	cmp esi, 0x35545844
	jz _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_120
	cmp esi, 0x33545844
	jnz _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_130
_ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_120:
	shl eax, 0x3
	shr eax, 0x3
	jmp _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_140
_ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_70:
	cmp esi, 0x4f
	jz _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_60
	cmp esi, 0x50
	jz _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_40
	cmp esi, 0x4d
	jz _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_60
	xor eax, eax
	jmp _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_200
_ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_110:
	cmp esi, 0x34
	jz _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_120
	cmp esi, 0x3c
	jge _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_40
	xor eax, eax
	jmp _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_200
_ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_180:
	lea eax, [eax+eax*2]
	shl eax, 0x4
	jmp _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_210
_ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_190:
	shl eax, 0x2
	shr eax, 0x3
	jmp _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_140
_ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_150:
	lea eax, [eax+eax*2]
	shl eax, 0x3
	shr eax, 0x3
	jmp _ZN14MacOpenGLUtils19GetLevelSizeInBytesEjjj10_D3DFORMAT_140
	nop
	add [eax], al


;MacOpenGLUtils::GetNumTextureLevels(unsigned int, unsigned int, unsigned int)
_ZN14MacOpenGLUtils19GetNumTextureLevelsEjjj:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov ebx, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	xor esi, esi
	jmp _ZN14MacOpenGLUtils19GetNumTextureLevelsEjjj_10
_ZN14MacOpenGLUtils19GetNumTextureLevelsEjjj_30:
	test edx, edx
	jz _ZN14MacOpenGLUtils19GetNumTextureLevelsEjjj_20
	shr edx, 1
_ZN14MacOpenGLUtils19GetNumTextureLevelsEjjj_50:
	mov eax, ecx
	shr eax, 1
	test ecx, ecx
	cmovnz ecx, eax
	add esi, 0x1
_ZN14MacOpenGLUtils19GetNumTextureLevelsEjjj_10:
	test ebx, ebx
	jz _ZN14MacOpenGLUtils19GetNumTextureLevelsEjjj_30
	test edx, edx
	jz _ZN14MacOpenGLUtils19GetNumTextureLevelsEjjj_40
	shr ebx, 1
	shr edx, 1
	jmp _ZN14MacOpenGLUtils19GetNumTextureLevelsEjjj_50
_ZN14MacOpenGLUtils19GetNumTextureLevelsEjjj_20:
	test ecx, ecx
	jz _ZN14MacOpenGLUtils19GetNumTextureLevelsEjjj_60
	mov ebx, 0x1
_ZN14MacOpenGLUtils19GetNumTextureLevelsEjjj_40:
	shr ebx, 1
	xor edx, edx
	jmp _ZN14MacOpenGLUtils19GetNumTextureLevelsEjjj_50
_ZN14MacOpenGLUtils19GetNumTextureLevelsEjjj_60:
	mov eax, esi
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;MacOpenGLUtils::GetOpenGLTextureType(bool&, unsigned long&, unsigned long&, unsigned long&, _D3DFORMAT)
_ZN14MacOpenGLUtils20GetOpenGLTextureTypeERbRmS1_S1_10_D3DFORMAT:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov eax, [ebp+0x18]
	cmp eax, 0x47
	jz _ZN14MacOpenGLUtils20GetOpenGLTextureTypeERbRmS1_S1_10_D3DFORMAT_10
	jle _ZN14MacOpenGLUtils20GetOpenGLTextureTypeERbRmS1_S1_10_D3DFORMAT_20
	cmp eax, 0x72
	jz _ZN14MacOpenGLUtils20GetOpenGLTextureTypeERbRmS1_S1_10_D3DFORMAT_30
	jle _ZN14MacOpenGLUtils20GetOpenGLTextureTypeERbRmS1_S1_10_D3DFORMAT_40
	cmp eax, 0x32545844
	jz _ZN14MacOpenGLUtils20GetOpenGLTextureTypeERbRmS1_S1_10_D3DFORMAT_50
	jle _ZN14MacOpenGLUtils20GetOpenGLTextureTypeERbRmS1_S1_10_D3DFORMAT_60
	cmp eax, 0x33545844
	jz _ZN14MacOpenGLUtils20GetOpenGLTextureTypeERbRmS1_S1_10_D3DFORMAT_70
	cmp eax, 0x35545844
	jnz _ZN14MacOpenGLUtils20GetOpenGLTextureTypeERbRmS1_S1_10_D3DFORMAT_80
	mov eax, [ebp+0xc]
	mov dword [eax], 0x83f3
	mov edx, [ebp+0x14]
	mov dword [edx], 0x0
	mov eax, [ebp+0x10]
	mov dword [eax], 0x0
_ZN14MacOpenGLUtils20GetOpenGLTextureTypeERbRmS1_S1_10_D3DFORMAT_80:
	leave
	ret
_ZN14MacOpenGLUtils20GetOpenGLTextureTypeERbRmS1_S1_10_D3DFORMAT_20:
	cmp eax, 0x17
	jz _ZN14MacOpenGLUtils20GetOpenGLTextureTypeERbRmS1_S1_10_D3DFORMAT_90
	jle _ZN14MacOpenGLUtils20GetOpenGLTextureTypeERbRmS1_S1_10_D3DFORMAT_100
	cmp eax, 0x1a
	jz _ZN14MacOpenGLUtils20GetOpenGLTextureTypeERbRmS1_S1_10_D3DFORMAT_110
	jle _ZN14MacOpenGLUtils20GetOpenGLTextureTypeERbRmS1_S1_10_D3DFORMAT_120
	cmp eax, 0x32
	jz _ZN14MacOpenGLUtils20GetOpenGLTextureTypeERbRmS1_S1_10_D3DFORMAT_130
	cmp eax, 0x33
	jnz _ZN14MacOpenGLUtils20GetOpenGLTextureTypeERbRmS1_S1_10_D3DFORMAT_80
	mov eax, [ebp+0xc]
	mov dword [eax], 0x190a
	mov edx, [ebp+0x10]
	mov dword [edx], 0x190a
	mov eax, [ebp+0x14]
	mov dword [eax], 0x1401
	leave
	ret
_ZN14MacOpenGLUtils20GetOpenGLTextureTypeERbRmS1_S1_10_D3DFORMAT_40:
	cmp eax, 0x4b
	jz _ZN14MacOpenGLUtils20GetOpenGLTextureTypeERbRmS1_S1_10_D3DFORMAT_140
	jle _ZN14MacOpenGLUtils20GetOpenGLTextureTypeERbRmS1_S1_10_D3DFORMAT_150
	cmp eax, 0x4d
	jz _ZN14MacOpenGLUtils20GetOpenGLTextureTypeERbRmS1_S1_10_D3DFORMAT_160
	cmp eax, 0x50
	jnz _ZN14MacOpenGLUtils20GetOpenGLTextureTypeERbRmS1_S1_10_D3DFORMAT_80
_ZN14MacOpenGLUtils20GetOpenGLTextureTypeERbRmS1_S1_10_D3DFORMAT_10:
	mov edx, [ebp+0x8]
	mov byte [edx], 0x0
	leave
	ret
_ZN14MacOpenGLUtils20GetOpenGLTextureTypeERbRmS1_S1_10_D3DFORMAT_100:
	cmp eax, 0x14
	jz _ZN14MacOpenGLUtils20GetOpenGLTextureTypeERbRmS1_S1_10_D3DFORMAT_170
	jl _ZN14MacOpenGLUtils20GetOpenGLTextureTypeERbRmS1_S1_10_D3DFORMAT_80
	mov eax, [ebp+0xc]
	mov dword [eax], 0x1908
	mov edx, [ebp+0x10]
	mov dword [edx], 0x80e1
	mov eax, [ebp+0x14]
	mov dword [eax], 0x8367
	leave
	ret
_ZN14MacOpenGLUtils20GetOpenGLTextureTypeERbRmS1_S1_10_D3DFORMAT_30:
	mov edx, [ebp+0xc]
	mov dword [edx], 0x881b
	mov eax, [ebp+0x10]
	mov dword [eax], 0x1908
	mov edx, [ebp+0x14]
	mov dword [edx], 0x1406
	leave
	ret
_ZN14MacOpenGLUtils20GetOpenGLTextureTypeERbRmS1_S1_10_D3DFORMAT_90:
	mov eax, [ebp+0xc]
	mov dword [eax], 0x1907
	mov edx, [ebp+0x10]
	mov dword [edx], 0x1907
	mov eax, [ebp+0x14]
	mov dword [eax], 0x8363
	leave
	ret
_ZN14MacOpenGLUtils20GetOpenGLTextureTypeERbRmS1_S1_10_D3DFORMAT_120:
	cmp eax, 0x19
	jnz _ZN14MacOpenGLUtils20GetOpenGLTextureTypeERbRmS1_S1_10_D3DFORMAT_80
	mov edx, [ebp+0xc]
	mov dword [edx], 0x8057
	mov eax, [ebp+0x10]
	mov dword [eax], 0x80e1
	mov edx, [ebp+0x14]
	mov dword [edx], 0x8366
	leave
	ret
_ZN14MacOpenGLUtils20GetOpenGLTextureTypeERbRmS1_S1_10_D3DFORMAT_150:
	cmp eax, 0x49
	jz _ZN14MacOpenGLUtils20GetOpenGLTextureTypeERbRmS1_S1_10_D3DFORMAT_10
	leave
	ret
_ZN14MacOpenGLUtils20GetOpenGLTextureTypeERbRmS1_S1_10_D3DFORMAT_60:
	cmp eax, 0x31545844
	jnz _ZN14MacOpenGLUtils20GetOpenGLTextureTypeERbRmS1_S1_10_D3DFORMAT_80
	mov edx, [ebp+0xc]
	mov dword [edx], 0x83f1
	mov eax, [ebp+0x14]
	mov dword [eax], 0x0
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
	leave
	ret
_ZN14MacOpenGLUtils20GetOpenGLTextureTypeERbRmS1_S1_10_D3DFORMAT_110:
	mov edx, [ebp+0xc]
	mov dword [edx], 0x8056
	mov eax, [ebp+0x10]
	mov dword [eax], 0x80e1
	mov edx, [ebp+0x14]
	mov dword [edx], 0x8365
	leave
	ret
_ZN14MacOpenGLUtils20GetOpenGLTextureTypeERbRmS1_S1_10_D3DFORMAT_50:
	mov eax, [ebp+0xc]
	mov dword [eax], 0x83f2
	mov edx, [ebp+0x14]
	mov dword [edx], 0x0
	mov eax, [ebp+0x10]
	mov dword [eax], 0x0
	leave
	ret
_ZN14MacOpenGLUtils20GetOpenGLTextureTypeERbRmS1_S1_10_D3DFORMAT_140:
	call _ZN10MacDisplay30GetNeedsExplicitDepthComponentEv
	cmp al, 0x1
	sbb eax, eax
	and eax, 0xffff975d
	add eax, 0x81a5
	mov edx, [ebp+0xc]
	mov [edx], eax
	mov eax, [ebp+0x10]
	mov dword [eax], 0x1902
	call _ZN10MacDisplay30GetNeedsExplicitDepthComponentEv
	cmp al, 0x1
	sbb eax, eax
	and eax, 0x3
	add eax, 0x1403
	mov edx, [ebp+0x14]
	mov [edx], eax
	leave
	ret
_ZN14MacOpenGLUtils20GetOpenGLTextureTypeERbRmS1_S1_10_D3DFORMAT_170:
	mov eax, [ebp+0xc]
	mov dword [eax], 0x1907
	mov edx, [ebp+0x10]
	mov dword [edx], 0x1907
	mov eax, [ebp+0x14]
	mov dword [eax], 0x1401
	leave
	ret
_ZN14MacOpenGLUtils20GetOpenGLTextureTypeERbRmS1_S1_10_D3DFORMAT_130:
	mov edx, [ebp+0xc]
	mov dword [edx], 0x1909
	mov eax, [ebp+0x10]
	mov dword [eax], 0x1909
	mov edx, [ebp+0x14]
	mov dword [edx], 0x1401
	leave
	ret
_ZN14MacOpenGLUtils20GetOpenGLTextureTypeERbRmS1_S1_10_D3DFORMAT_70:
	mov edx, [ebp+0xc]
	mov dword [edx], 0x83f2
	mov eax, [ebp+0x14]
	mov dword [eax], 0x0
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
	leave
	ret
_ZN14MacOpenGLUtils20GetOpenGLTextureTypeERbRmS1_S1_10_D3DFORMAT_160:
	mov eax, [ebp+0xc]
	mov dword [eax], 0x1902
	mov edx, [ebp+0x10]
	mov dword [edx], 0x1902
	mov eax, [ebp+0x14]
	mov dword [eax], 0x1406
	leave
	ret
	nop
	add [eax], al


;MacOpenGLUtils::IsGLExtensionSupported(char const*)
_ZN14MacOpenGLUtils22IsGLExtensionSupportedEPKc:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _ZN10MacDisplay22IsGLExtensionSupportedEPKc
	test al, al
	setnz al
	movzx eax, al
	leave
	ret
	nop


;MacOpenGLUtils::AreMatricesDifferent4x4(void const*, void const*)
_ZN14MacOpenGLUtils23AreMatricesDifferent4x4EPKvS1_:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov ecx, [ebp+0x8]
	sub ecx, 0x4
	mov edx, [ebp+0xc]
	sub edx, 0x4
	mov esi, 0x4
	xor ebx, ebx
_ZN14MacOpenGLUtils23AreMatricesDifferent4x4EPKvS1__10:
	mov eax, [ecx+0x4]
	xor eax, [edx+0x4]
	or ebx, eax
	mov eax, [ecx+0x8]
	xor eax, [edx+0x8]
	or ebx, eax
	mov eax, [ecx+0xc]
	xor eax, [edx+0xc]
	or ebx, eax
	add ecx, 0x10
	add edx, 0x10
	mov eax, [ecx]
	xor eax, [edx]
	or ebx, eax
	sub esi, 0x1
	jnz _ZN14MacOpenGLUtils23AreMatricesDifferent4x4EPKvS1__10
	xor eax, eax
	test ebx, ebx
	setnz al
	pop ebx
	pop esi
	pop ebp
	ret


;MacOpenGLUtils::GetPCPixelShaderVersion()
_ZN14MacOpenGLUtils23GetPCPixelShaderVersionEv:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _ZN10MacDisplay23GetPCPixelShaderVersionEv
	nop


;MacOpenGLUtils::ConvertD3DProjectionMatrixToOpenGL(float*, float, float)
_ZN14MacOpenGLUtils34ConvertD3DProjectionMatrixToOpenGLEPfff:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	call _ZN10MacDisplay11GetCardTypeEv
	movss xmm1, dword [_float_0_97979802]
	divss xmm1, dword [ebp+0xc]
	movss xmm2, dword [_float__1_00000000]
	divss xmm2, dword [ebp+0x10]
	movaps xmm0, xmm1
	mulss xmm0, [ebx+0xc]
	addss xmm0, [ebx]
	movss [ebx], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ebx+0xc]
	addss xmm0, [ebx+0x4]
	movss [ebx+0x4], xmm0
	movss xmm0, dword [ebx+0x8]
	addss xmm0, xmm0
	subss xmm0, [ebx+0xc]
	movss [ebx+0x8], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebx+0x1c]
	addss xmm0, [ebx+0x10]
	movss [ebx+0x10], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ebx+0x1c]
	addss xmm0, [ebx+0x14]
	movss [ebx+0x14], xmm0
	movss xmm0, dword [ebx+0x18]
	addss xmm0, xmm0
	subss xmm0, [ebx+0x1c]
	movss [ebx+0x18], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebx+0x2c]
	addss xmm0, [ebx+0x20]
	movss [ebx+0x20], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ebx+0x2c]
	addss xmm0, [ebx+0x24]
	movss [ebx+0x24], xmm0
	movss xmm0, dword [ebx+0x28]
	addss xmm0, xmm0
	subss xmm0, [ebx+0x2c]
	movss [ebx+0x28], xmm0
	mulss xmm1, [ebx+0x3c]
	addss xmm1, [ebx+0x30]
	movss [ebx+0x30], xmm1
	mulss xmm2, [ebx+0x3c]
	addss xmm2, [ebx+0x34]
	movss [ebx+0x34], xmm2
	movss xmm0, dword [ebx+0x38]
	addss xmm0, xmm0
	subss xmm0, [ebx+0x3c]
	movss [ebx+0x38], xmm0
	add esp, 0x4
	pop ebx
	pop ebp
	ret
	nop


;Initialized global or static variables of MacOpenGLUtils:
SECTION .data


;Initialized constant data of MacOpenGLUtils:
SECTION .rdata


;Zero initialized global or static variables of MacOpenGLUtils:
SECTION .bss
_ZN14MacOpenGLUtils14UseBufferHintsE: resb 0x78
_ZN14MacOpenGLUtils15BufferFlushSizeE: resb 0x4


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_float_0_97979802:		dd 0x3f7ad40b	; 0.979798
_float__1_00000000:		dd 0xbf800000	; -1

