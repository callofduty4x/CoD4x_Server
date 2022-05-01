;Imports of r_font:
	extern _Z10R_LoadFontPKci
	extern _Z9I_stricmpPKcS0_
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z19DB_FindXAssetHeader10XAssetTypePKc
	extern _Z22SEH_ReadCharFromStringPPKcPi
	extern useFastFile
	extern _Z16SEH_DecodeLetterjjPiS_
	extern _Z12RandWithSeedPi
	extern isspace

;Exports of r_font:
	global registeredFontCount
	global registeredFont
	global _ZZ21R_FontGetRandomLetterP6Font_siE13MYRANDOMCHARS
	global _Z22R_RegisterFont_LoadObjPKci
	global _Z23R_RegisterFont_FastFilePKci
	global _Z11R_InitFontsv
	global _Z11R_TextWidthPKciP6Font_s
	global _Z12R_TextHeightP6Font_s
	global _Z14R_RegisterFontPKci
	global _Z15R_ShutdownFontsv
	global _Z18R_ConsoleTextWidthPKciiiP6Font_s
	global _Z19R_GetCharacterGlyphP6Font_sj
	global _Z21R_FontGetRandomLetterP6Font_si
	global _Z21R_NormalizedTextScaleP6Font_sf
	global _Z22R_TextLineWrapPositionPKciiP6Font_sf


SECTION .text


;R_RegisterFont_LoadObj(char const*, int)
_Z22R_RegisterFont_LoadObjPKci:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov eax, [registeredFontCount]
	test eax, eax
	jg _Z22R_RegisterFont_LoadObjPKci_10
_Z22R_RegisterFont_LoadObjPKci_50:
	cmp eax, 0xf
	jg _Z22R_RegisterFont_LoadObjPKci_20
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z10R_LoadFontPKci
	mov ebx, eax
	test eax, eax
	jz _Z22R_RegisterFont_LoadObjPKci_30
_Z22R_RegisterFont_LoadObjPKci_80:
	mov eax, [registeredFontCount]
	mov [eax*4+registeredFont], ebx
	add eax, 0x1
	mov [registeredFontCount], eax
_Z22R_RegisterFont_LoadObjPKci_70:
	mov eax, ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22R_RegisterFont_LoadObjPKci_10:
	xor esi, esi
	mov ebx, registeredFont
	jmp _Z22R_RegisterFont_LoadObjPKci_40
_Z22R_RegisterFont_LoadObjPKci_60:
	add esi, 0x1
	mov eax, [registeredFontCount]
	add ebx, 0x4
	cmp eax, esi
	jle _Z22R_RegisterFont_LoadObjPKci_50
_Z22R_RegisterFont_LoadObjPKci_40:
	mov eax, [ebx]
	mov eax, [eax]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z22R_RegisterFont_LoadObjPKci_60
	mov ebx, [esi*4+registeredFont]
	jmp _Z22R_RegisterFont_LoadObjPKci_70
_Z22R_RegisterFont_LoadObjPKci_20:
	mov dword [esp+0x4], _cstring_r_registerfont_t
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	xor ebx, ebx
	jmp _Z22R_RegisterFont_LoadObjPKci_70
_Z22R_RegisterFont_LoadObjPKci_30:
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_r_registerfont_e
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z22R_RegisterFont_LoadObjPKci_80
	nop


;R_RegisterFont_FastFile(char const*, int)
_Z23R_RegisterFont_FastFilePKci:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x13
	call _Z19DB_FindXAssetHeader10XAssetTypePKc
	leave
	ret
	nop


;R_InitFonts()
_Z11R_InitFontsv:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;R_TextWidth(char const*, int, Font_s*)
_Z11R_TextWidthPKciP6Font_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, [ebp+0xc]
	test eax, eax
	mov eax, 0x7fffffff
	cmovg eax, [ebp+0xc]
	mov [ebp+0xc], eax
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	mov dword [ebp-0x24], 0x0
	mov eax, [ebp+0x8]
	mov [ebp-0x28], eax
_Z11R_TextWidthPKciP6Font_s_60:
	cmp byte [eax], 0x0
	jz _Z11R_TextWidthPKciP6Font_s_10
_Z11R_TextWidthPKciP6Font_s_50:
	mov edx, [ebp-0x24]
	cmp [ebp+0xc], edx
	jle _Z11R_TextWidthPKciP6Font_s_10
	mov dword [esp+0x4], 0x0
	lea edx, [ebp+0x8]
	mov [esp], edx
	call _Z22SEH_ReadCharFromStringPPKcPi
	mov ebx, eax
	cmp eax, 0xd
	jz _Z11R_TextWidthPKciP6Font_s_20
	cmp eax, 0xa
	jz _Z11R_TextWidthPKciP6Font_s_20
	cmp eax, 0x5e
	jz _Z11R_TextWidthPKciP6Font_s_30
	mov eax, [ebp+0x8]
	mov [ebp-0x28], eax
_Z11R_TextWidthPKciP6Font_s_90:
	lea eax, [ebx-0x20]
	cmp eax, 0x5f
	ja _Z11R_TextWidthPKciP6Font_s_40
	lea edx, [ebx+ebx*2]
	mov ecx, [ebp+0x10]
	mov eax, [ecx+0x14]
	lea eax, [eax+edx*8-0x300]
_Z11R_TextWidthPKciP6Font_s_80:
	movzx eax, byte [eax+0x4]
	add [ebp-0x20], eax
	mov eax, [ebp-0x1c]
	cmp [ebp-0x20], eax
	mov edx, [ebp-0x20]
	cmovle edx, eax
	mov [ebp-0x1c], edx
	add dword [ebp-0x24], 0x1
	mov eax, [ebp-0x28]
	cmp byte [eax], 0x0
	jnz _Z11R_TextWidthPKciP6Font_s_50
_Z11R_TextWidthPKciP6Font_s_10:
	mov eax, [ebp-0x1c]
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11R_TextWidthPKciP6Font_s_20:
	mov dword [ebp-0x20], 0x0
	mov ecx, [ebp+0x8]
	mov [ebp-0x28], ecx
	mov eax, ecx
	jmp _Z11R_TextWidthPKciP6Font_s_60
_Z11R_TextWidthPKciP6Font_s_40:
	mov edx, [ebp+0x10]
	mov eax, [edx+0x8]
	lea edi, [eax-0x1]
	cmp edi, 0x5f
	jg _Z11R_TextWidthPKciP6Font_s_70
	mov ecx, [edx+0x14]
	mov [ebp-0x2c], ecx
	mov eax, ecx
_Z11R_TextWidthPKciP6Font_s_140:
	add eax, 0x150
	jmp _Z11R_TextWidthPKciP6Font_s_80
_Z11R_TextWidthPKciP6Font_s_30:
	mov ecx, [ebp+0x8]
	mov [ebp-0x28], ecx
	test ecx, ecx
	jz _Z11R_TextWidthPKciP6Font_s_90
	movzx eax, byte [ecx]
	cmp al, 0x5e
	jz _Z11R_TextWidthPKciP6Font_s_90
	cmp al, 0x2f
	jle _Z11R_TextWidthPKciP6Font_s_90
	cmp al, 0x39
	jg _Z11R_TextWidthPKciP6Font_s_90
	add ecx, 0x1
	mov [ebp-0x28], ecx
	mov [ebp+0x8], ecx
	mov eax, ecx
	jmp _Z11R_TextWidthPKciP6Font_s_60
_Z11R_TextWidthPKciP6Font_s_70:
	mov ecx, edx
	add eax, 0x5f
	mov edx, eax
	shr edx, 0x1f
	add edx, eax
	sar edx, 1
	mov ecx, [ecx+0x14]
	mov [ebp-0x2c], ecx
	lea eax, [edx+edx*2]
	lea eax, [ecx+eax*8]
	movzx ecx, word [eax]
	cmp ebx, ecx
	jz _Z11R_TextWidthPKciP6Font_s_80
	mov esi, 0x60
	jmp _Z11R_TextWidthPKciP6Font_s_100
_Z11R_TextWidthPKciP6Font_s_120:
	lea esi, [edx+0x1]
	cmp edi, esi
	jl _Z11R_TextWidthPKciP6Font_s_110
_Z11R_TextWidthPKciP6Font_s_130:
	lea eax, [edi+esi]
	mov edx, eax
	shr edx, 0x1f
	add edx, eax
	sar edx, 1
	lea eax, [edx+edx*2]
	mov ecx, [ebp-0x2c]
	lea eax, [ecx+eax*8]
	movzx ecx, word [eax]
	cmp ebx, ecx
	jz _Z11R_TextWidthPKciP6Font_s_80
_Z11R_TextWidthPKciP6Font_s_100:
	cmp ebx, ecx
	ja _Z11R_TextWidthPKciP6Font_s_120
	lea edi, [edx-0x1]
	cmp edi, esi
	jge _Z11R_TextWidthPKciP6Font_s_130
_Z11R_TextWidthPKciP6Font_s_110:
	mov eax, [ebp-0x2c]
	jmp _Z11R_TextWidthPKciP6Font_s_140


;R_TextHeight(Font_s*)
_Z12R_TextHeightP6Font_s:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x4]
	pop ebp
	ret
	nop


;R_RegisterFont(char const*, int)
_Z14R_RegisterFontPKci:
	push ebp
	mov ebp, esp
	mov eax, useFastFile
	mov eax, [eax]
	mov ecx, _Z23R_RegisterFont_FastFilePKci
	cmp byte [eax+0xc], 0x0
	mov eax, _Z22R_RegisterFont_LoadObjPKci
	cmovz ecx, eax
	pop ebp
	jmp ecx


;R_ShutdownFonts()
_Z15R_ShutdownFontsv:
	push ebp
	mov ebp, esp
	mov dword [registeredFontCount], 0x0
	pop ebp
	ret
	nop


;R_ConsoleTextWidth(char const*, int, int, int, Font_s*)
_Z18R_ConsoleTextWidthPKciiiP6Font_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov eax, [ebp+0x10]
	mov edx, [ebp+0xc]
	sub edx, 0x1
	mov [ebp-0x38], edx
	mov ecx, [ebp+0x14]
	add ecx, eax
	and ecx, edx
	mov [ebp-0x34], ecx
	cmp eax, ecx
	jz _Z18R_ConsoleTextWidthPKciiiP6Font_s_10
	mov esi, eax
	mov dword [ebp-0x30], 0x0
	jmp _Z18R_ConsoleTextWidthPKciiiP6Font_s_20
_Z18R_ConsoleTextWidthPKciiiP6Font_s_50:
	lea edx, [ebx+ebx*2]
	mov ecx, [ebp+0x18]
	mov eax, [ecx+0x14]
	lea eax, [eax+edx*8-0x300]
_Z18R_ConsoleTextWidthPKciiiP6Font_s_70:
	movzx eax, byte [eax+0x4]
	add [ebp-0x30], eax
_Z18R_ConsoleTextWidthPKciiiP6Font_s_180:
	cmp [ebp-0x34], esi
	jz _Z18R_ConsoleTextWidthPKciiiP6Font_s_30
_Z18R_ConsoleTextWidthPKciiiP6Font_s_20:
	mov dword [esp+0xc], 0x0
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	lea eax, [esi+0x1]
	and eax, [ebp-0x38]
	mov edx, [ebp+0x8]
	movsx eax, byte [eax+edx]
	mov [esp+0x4], eax
	movsx eax, byte [edx+esi]
	mov [esp], eax
	call _Z16SEH_DecodeLetterjjPiS_
	mov ebx, eax
	add esi, [ebp-0x1c]
	and esi, [ebp-0x38]
	cmp eax, 0x5e
	jz _Z18R_ConsoleTextWidthPKciiiP6Font_s_40
_Z18R_ConsoleTextWidthPKciiiP6Font_s_110:
	lea eax, [ebx-0x20]
	cmp eax, 0x5f
	jbe _Z18R_ConsoleTextWidthPKciiiP6Font_s_50
	mov edx, [ebp+0x18]
	mov eax, [edx+0x8]
	lea edi, [eax-0x1]
	cmp edi, 0x5f
	jg _Z18R_ConsoleTextWidthPKciiiP6Font_s_60
	mov ecx, [edx+0x14]
	mov [ebp-0x3c], ecx
	mov eax, ecx
_Z18R_ConsoleTextWidthPKciiiP6Font_s_170:
	add eax, 0x150
	jmp _Z18R_ConsoleTextWidthPKciiiP6Font_s_70
_Z18R_ConsoleTextWidthPKciiiP6Font_s_40:
	mov eax, [ebp+0x8]
	add eax, esi
	jz _Z18R_ConsoleTextWidthPKciiiP6Font_s_80
	movzx eax, byte [eax]
	cmp al, 0x5e
	jz _Z18R_ConsoleTextWidthPKciiiP6Font_s_90
	cmp al, 0x2f
	jle _Z18R_ConsoleTextWidthPKciiiP6Font_s_90
	cmp al, 0x39
	jle _Z18R_ConsoleTextWidthPKciiiP6Font_s_100
_Z18R_ConsoleTextWidthPKciiiP6Font_s_90:
	sub al, 0x1
	cmp al, 0x1
	ja _Z18R_ConsoleTextWidthPKciiiP6Font_s_110
_Z18R_ConsoleTextWidthPKciiiP6Font_s_190:
	lea eax, [esi+0x1]
	and eax, [ebp-0x38]
	mov edx, [ebp+0x8]
	movsx eax, byte [edx+eax]
	sub eax, 0x10
	mov ecx, [ebp+0x18]
	imul eax, [ecx+0x4]
	mov edx, eax
	add edx, 0x10
	js _Z18R_ConsoleTextWidthPKciiiP6Font_s_120
_Z18R_ConsoleTextWidthPKciiiP6Font_s_200:
	sar edx, 0x5
	add [ebp-0x30], edx
	add esi, 0x7
	and esi, [ebp-0x38]
	cmp [ebp-0x34], esi
	jnz _Z18R_ConsoleTextWidthPKciiiP6Font_s_20
_Z18R_ConsoleTextWidthPKciiiP6Font_s_30:
	mov eax, [ebp-0x30]
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18R_ConsoleTextWidthPKciiiP6Font_s_60:
	mov ecx, edx
	add eax, 0x5f
	mov edx, eax
	shr edx, 0x1f
	add edx, eax
	sar edx, 1
	mov ecx, [ecx+0x14]
	mov [ebp-0x3c], ecx
	lea eax, [edx+edx*2]
	lea eax, [ecx+eax*8]
	movzx ecx, word [eax]
	cmp ebx, ecx
	jz _Z18R_ConsoleTextWidthPKciiiP6Font_s_70
	mov dword [ebp-0x2c], 0x60
	jmp _Z18R_ConsoleTextWidthPKciiiP6Font_s_130
_Z18R_ConsoleTextWidthPKciiiP6Font_s_150:
	add edx, 0x1
	mov [ebp-0x2c], edx
	cmp edi, [ebp-0x2c]
	jl _Z18R_ConsoleTextWidthPKciiiP6Font_s_140
_Z18R_ConsoleTextWidthPKciiiP6Font_s_160:
	mov edx, [ebp-0x2c]
	lea eax, [edi+edx]
	mov edx, eax
	shr edx, 0x1f
	add edx, eax
	sar edx, 1
	lea eax, [edx+edx*2]
	mov ecx, [ebp-0x3c]
	lea eax, [ecx+eax*8]
	movzx ecx, word [eax]
	cmp ebx, ecx
	jz _Z18R_ConsoleTextWidthPKciiiP6Font_s_70
_Z18R_ConsoleTextWidthPKciiiP6Font_s_130:
	cmp ebx, ecx
	ja _Z18R_ConsoleTextWidthPKciiiP6Font_s_150
	lea edi, [edx-0x1]
	cmp edi, [ebp-0x2c]
	jge _Z18R_ConsoleTextWidthPKciiiP6Font_s_160
_Z18R_ConsoleTextWidthPKciiiP6Font_s_140:
	mov eax, [ebp-0x3c]
	jmp _Z18R_ConsoleTextWidthPKciiiP6Font_s_170
_Z18R_ConsoleTextWidthPKciiiP6Font_s_100:
	add esi, 0x1
	and esi, [ebp-0x38]
	jmp _Z18R_ConsoleTextWidthPKciiiP6Font_s_180
_Z18R_ConsoleTextWidthPKciiiP6Font_s_80:
	movzx eax, byte [0x0]
	sub al, 0x1
	cmp al, 0x1
	ja _Z18R_ConsoleTextWidthPKciiiP6Font_s_110
	jmp _Z18R_ConsoleTextWidthPKciiiP6Font_s_190
_Z18R_ConsoleTextWidthPKciiiP6Font_s_10:
	mov dword [ebp-0x30], 0x0
	mov eax, [ebp-0x30]
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18R_ConsoleTextWidthPKciiiP6Font_s_120:
	lea edx, [eax+0x2f]
	jmp _Z18R_ConsoleTextWidthPKciiiP6Font_s_200
	nop


;R_GetCharacterGlyph(Font_s*, unsigned int)
_Z19R_GetCharacterGlyphP6Font_sj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov ecx, [ebp+0x8]
	mov eax, [ebp+0xc]
	sub eax, 0x20
	cmp eax, 0x5f
	ja _Z19R_GetCharacterGlyphP6Font_sj_10
	mov eax, [ebp+0xc]
	lea edx, [eax+eax*2]
	mov eax, [ecx+0x14]
	lea eax, [eax+edx*8-0x300]
_Z19R_GetCharacterGlyphP6Font_sj_30:
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19R_GetCharacterGlyphP6Font_sj_10:
	mov eax, [ecx+0x8]
	lea esi, [eax-0x1]
	cmp esi, 0x5f
	jg _Z19R_GetCharacterGlyphP6Font_sj_20
	mov edi, [ecx+0x14]
_Z19R_GetCharacterGlyphP6Font_sj_50:
	lea eax, [edi+0x150]
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19R_GetCharacterGlyphP6Font_sj_20:
	add eax, 0x5f
	mov edx, eax
	shr edx, 0x1f
	add edx, eax
	sar edx, 1
	mov edi, [ecx+0x14]
	lea eax, [edx+edx*2]
	lea eax, [edi+eax*8]
	movzx ecx, word [eax]
	cmp [ebp+0xc], ecx
	jz _Z19R_GetCharacterGlyphP6Font_sj_30
	mov ebx, 0x60
	jmp _Z19R_GetCharacterGlyphP6Font_sj_40
_Z19R_GetCharacterGlyphP6Font_sj_60:
	lea ebx, [edx+0x1]
_Z19R_GetCharacterGlyphP6Font_sj_70:
	cmp esi, ebx
	jl _Z19R_GetCharacterGlyphP6Font_sj_50
	lea eax, [esi+ebx]
	mov edx, eax
	shr edx, 0x1f
	add edx, eax
	sar edx, 1
	lea eax, [edx+edx*2]
	lea eax, [edi+eax*8]
	movzx ecx, word [eax]
	cmp [ebp+0xc], ecx
	jz _Z19R_GetCharacterGlyphP6Font_sj_30
_Z19R_GetCharacterGlyphP6Font_sj_40:
	cmp [ebp+0xc], ecx
	ja _Z19R_GetCharacterGlyphP6Font_sj_60
	lea esi, [edx-0x1]
	jmp _Z19R_GetCharacterGlyphP6Font_sj_70
	nop


;R_FontGetRandomLetter(Font_s*, int)
_Z21R_FontGetRandomLetterP6Font_si:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	lea eax, [ebp+0xc]
	mov [esp], eax
	call _Z12RandWithSeedPi
	mov ebx, eax
	mov edx, eax
	shr edx, 1
	mov ecx, 0x84210843
	mov eax, edx
	mul ecx
	shr edx, 0x4
	lea ecx, [edx+edx]
	shl edx, 0x6
	sub edx, ecx
	sub ebx, edx
	movsx eax, byte [ebx+_cstring_abcdefghijklmnop]
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;R_NormalizedTextScale(Font_s*, float)
_Z21R_NormalizedTextScaleP6Font_sf:
	push ebp
	mov ebp, esp
	sub esp, 0x4
	movss xmm0, dword [_float_48_00000000]
	mulss xmm0, [ebp+0xc]
	mov eax, [ebp+0x8]
	cvtsi2ss xmm1, dword [eax+0x4]
	divss xmm0, xmm1
	movss [ebp-0x4], xmm0
	fld dword [ebp-0x4]
	leave
	ret
	nop


;R_TextLineWrapPosition(char const*, int, int, Font_s*, float)
_Z22R_TextLineWrapPositionPKciiP6Font_sf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov edi, [ebp+0xc]
	test edi, edi
	mov eax, 0x7fffffff
	cmovg eax, [ebp+0xc]
	mov [ebp+0xc], eax
	mov eax, [ebp+0x8]
	mov [ebp-0x1c], eax
	mov dword [ebp-0x30], 0x0
	mov dword [ebp-0x2c], 0x0
	xor edx, edx
	mov [ebp-0x38], eax
	mov ecx, eax
	mov [ebp-0x34], ecx
	cmp byte [ecx], 0x0
	jz _Z22R_TextLineWrapPositionPKciiP6Font_sf_10
_Z22R_TextLineWrapPositionPKciiP6Font_sf_110:
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call _Z22SEH_ReadCharFromStringPPKcPi
	mov ebx, eax
	cmp eax, 0xd
	jz _Z22R_TextLineWrapPositionPKciiP6Font_sf_20
	cmp eax, 0xa
	jz _Z22R_TextLineWrapPositionPKciiP6Font_sf_30
	cmp eax, 0x5e
	jz _Z22R_TextLineWrapPositionPKciiP6Font_sf_40
_Z22R_TextLineWrapPositionPKciiP6Font_sf_220:
	mov ecx, [ebp+0x14]
	test ecx, ecx
	jz _Z22R_TextLineWrapPositionPKciiP6Font_sf_50
	lea eax, [ebx-0x20]
	cmp eax, 0x5f
	ja _Z22R_TextLineWrapPositionPKciiP6Font_sf_60
	lea edx, [ebx+ebx*2]
	mov ecx, [ebp+0x14]
	mov eax, [ecx+0x14]
	lea eax, [eax+edx*8-0x300]
_Z22R_TextLineWrapPositionPKciiP6Font_sf_180:
	movzx eax, byte [eax+0x4]
	add [ebp-0x30], eax
_Z22R_TextLineWrapPositionPKciiP6Font_sf_50:
	mov edx, [ebp-0x38]
	cmp [ebp+0x8], edx
	jz _Z22R_TextLineWrapPositionPKciiP6Font_sf_70
	cmp ebx, 0xff
	jbe _Z22R_TextLineWrapPositionPKciiP6Font_sf_80
_Z22R_TextLineWrapPositionPKciiP6Font_sf_130:
	xor eax, eax
	test eax, eax
	jz _Z22R_TextLineWrapPositionPKciiP6Font_sf_70
_Z22R_TextLineWrapPositionPKciiP6Font_sf_140:
	mov ecx, [ebp-0x38]
	mov [ebp-0x2c], ecx
	cvtsi2ss xmm0, dword [ebp-0x30]
	mulss xmm0, [ebp+0x18]
	cvtsi2ss xmm1, dword [ebp+0x10]
	ucomiss xmm0, xmm1
	ja _Z22R_TextLineWrapPositionPKciiP6Font_sf_90
_Z22R_TextLineWrapPositionPKciiP6Font_sf_150:
	mov esi, [ebp-0x1c]
	mov [ebp-0x38], esi
	mov eax, esi
	sub eax, [ebp+0x8]
	cmp [ebp+0xc], eax
	jl _Z22R_TextLineWrapPositionPKciiP6Font_sf_100
_Z22R_TextLineWrapPositionPKciiP6Font_sf_160:
	mov edx, [ebp-0x34]
	mov ecx, [ebp-0x38]
	mov [ebp-0x34], ecx
	cmp byte [ecx], 0x0
	jnz _Z22R_TextLineWrapPositionPKciiP6Font_sf_110
_Z22R_TextLineWrapPositionPKciiP6Font_sf_10:
	mov eax, ecx
	sub eax, [ebp+0x8]
	cmp [ebp+0xc], eax
	jz _Z22R_TextLineWrapPositionPKciiP6Font_sf_120
	mov eax, [ebp-0x34]
_Z22R_TextLineWrapPositionPKciiP6Font_sf_330:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22R_TextLineWrapPositionPKciiP6Font_sf_80:
	mov [esp], ebx
	call isspace
	test eax, eax
	jz _Z22R_TextLineWrapPositionPKciiP6Font_sf_130
	mov eax, 0x1
	test eax, eax
	jnz _Z22R_TextLineWrapPositionPKciiP6Font_sf_140
_Z22R_TextLineWrapPositionPKciiP6Font_sf_70:
	mov esi, [ebp-0x2c]
	test esi, esi
	jz _Z22R_TextLineWrapPositionPKciiP6Font_sf_150
_Z22R_TextLineWrapPositionPKciiP6Font_sf_250:
	cvtsi2ss xmm0, dword [ebp-0x30]
	mulss xmm0, [ebp+0x18]
	cvtsi2ss xmm1, dword [ebp+0x10]
	ucomiss xmm0, xmm1
	jbe _Z22R_TextLineWrapPositionPKciiP6Font_sf_150
_Z22R_TextLineWrapPositionPKciiP6Font_sf_90:
	mov esi, [ebp-0x2c]
	mov [ebp-0x34], esi
	mov eax, esi
_Z22R_TextLineWrapPositionPKciiP6Font_sf_340:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22R_TextLineWrapPositionPKciiP6Font_sf_20:
	mov dword [ebp-0x30], 0x0
	mov eax, [ebp-0x1c]
	mov [ebp-0x38], eax
	jmp _Z22R_TextLineWrapPositionPKciiP6Font_sf_160
_Z22R_TextLineWrapPositionPKciiP6Font_sf_60:
	mov esi, [ebp+0x14]
	mov eax, [esi+0x8]
	lea edi, [eax-0x1]
	cmp edi, 0x5f
	jg _Z22R_TextLineWrapPositionPKciiP6Font_sf_170
	mov eax, [esi+0x14]
	mov [ebp-0x3c], eax
_Z22R_TextLineWrapPositionPKciiP6Font_sf_310:
	add eax, 0x150
	jmp _Z22R_TextLineWrapPositionPKciiP6Font_sf_180
_Z22R_TextLineWrapPositionPKciiP6Font_sf_40:
	mov edx, [ebp-0x1c]
	test edx, edx
	jz _Z22R_TextLineWrapPositionPKciiP6Font_sf_190
	movzx eax, byte [edx]
	cmp al, 0x5e
	jz _Z22R_TextLineWrapPositionPKciiP6Font_sf_200
	cmp al, 0x2f
	jle _Z22R_TextLineWrapPositionPKciiP6Font_sf_200
	cmp al, 0x39
	jle _Z22R_TextLineWrapPositionPKciiP6Font_sf_210
_Z22R_TextLineWrapPositionPKciiP6Font_sf_200:
	sub al, 0x1
	cmp al, 0x1
	ja _Z22R_TextLineWrapPositionPKciiP6Font_sf_220
_Z22R_TextLineWrapPositionPKciiP6Font_sf_320:
	mov ebx, [ebp+0x14]
	test ebx, ebx
	jz _Z22R_TextLineWrapPositionPKciiP6Font_sf_230
	movsx eax, byte [edx+0x1]
	sub eax, 0x10
	mov ecx, [ebp+0x14]
	imul eax, [ecx+0x4]
	mov ecx, eax
	add ecx, 0x10
	js _Z22R_TextLineWrapPositionPKciiP6Font_sf_240
_Z22R_TextLineWrapPositionPKciiP6Font_sf_350:
	sar ecx, 0x5
	add [ebp-0x30], ecx
_Z22R_TextLineWrapPositionPKciiP6Font_sf_230:
	mov esi, [ebp-0x38]
	cmp [ebp+0x8], esi
	cmovz esi, [ebp-0x2c]
	mov [ebp-0x2c], esi
	add edx, 0x7
	mov [ebp-0x1c], edx
	mov esi, [ebp-0x2c]
	test esi, esi
	jnz _Z22R_TextLineWrapPositionPKciiP6Font_sf_250
	jmp _Z22R_TextLineWrapPositionPKciiP6Font_sf_150
_Z22R_TextLineWrapPositionPKciiP6Font_sf_170:
	add eax, 0x5f
	mov edx, eax
	shr edx, 0x1f
	add edx, eax
	sar edx, 1
	mov eax, [ebp+0x14]
	mov eax, [eax+0x14]
	mov [ebp-0x3c], eax
	lea eax, [edx+edx*2]
	mov esi, [ebp-0x3c]
	lea ecx, [esi+eax*8]
	movzx eax, word [ecx]
	cmp ebx, eax
	jz _Z22R_TextLineWrapPositionPKciiP6Font_sf_260
	mov esi, 0x60
	jmp _Z22R_TextLineWrapPositionPKciiP6Font_sf_270
_Z22R_TextLineWrapPositionPKciiP6Font_sf_290:
	lea esi, [edx+0x1]
	cmp edi, esi
	jl _Z22R_TextLineWrapPositionPKciiP6Font_sf_280
_Z22R_TextLineWrapPositionPKciiP6Font_sf_300:
	lea eax, [edi+esi]
	mov edx, eax
	shr edx, 0x1f
	add edx, eax
	sar edx, 1
	lea ecx, [edx+edx*2]
	mov eax, [ebp-0x3c]
	lea ecx, [eax+ecx*8]
	movzx eax, word [ecx]
	cmp ebx, eax
	jz _Z22R_TextLineWrapPositionPKciiP6Font_sf_260
_Z22R_TextLineWrapPositionPKciiP6Font_sf_270:
	cmp ebx, eax
	ja _Z22R_TextLineWrapPositionPKciiP6Font_sf_290
	lea edi, [edx-0x1]
	cmp edi, esi
	jge _Z22R_TextLineWrapPositionPKciiP6Font_sf_300
_Z22R_TextLineWrapPositionPKciiP6Font_sf_280:
	mov eax, [ebp-0x3c]
	jmp _Z22R_TextLineWrapPositionPKciiP6Font_sf_310
_Z22R_TextLineWrapPositionPKciiP6Font_sf_260:
	mov eax, ecx
	jmp _Z22R_TextLineWrapPositionPKciiP6Font_sf_180
_Z22R_TextLineWrapPositionPKciiP6Font_sf_190:
	movzx eax, byte [0x0]
	sub al, 0x1
	cmp al, 0x1
	ja _Z22R_TextLineWrapPositionPKciiP6Font_sf_220
	jmp _Z22R_TextLineWrapPositionPKciiP6Font_sf_320
_Z22R_TextLineWrapPositionPKciiP6Font_sf_210:
	add edx, 0x1
	mov [ebp-0x1c], edx
	mov esi, [ebp-0x2c]
	test esi, esi
	jnz _Z22R_TextLineWrapPositionPKciiP6Font_sf_250
	jmp _Z22R_TextLineWrapPositionPKciiP6Font_sf_150
_Z22R_TextLineWrapPositionPKciiP6Font_sf_30:
	mov edx, [ebp-0x1c]
	mov [ebp-0x34], edx
	mov eax, edx
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22R_TextLineWrapPositionPKciiP6Font_sf_100:
	mov edx, [ebp-0x2c]
	test edx, edx
	jnz _Z22R_TextLineWrapPositionPKciiP6Font_sf_90
	mov eax, [ebp-0x34]
	jmp _Z22R_TextLineWrapPositionPKciiP6Font_sf_330
_Z22R_TextLineWrapPositionPKciiP6Font_sf_120:
	mov eax, [ebp-0x2c]
	test eax, eax
	jnz _Z22R_TextLineWrapPositionPKciiP6Font_sf_90
	mov [ebp-0x34], edx
	mov eax, edx
	jmp _Z22R_TextLineWrapPositionPKciiP6Font_sf_340
_Z22R_TextLineWrapPositionPKciiP6Font_sf_240:
	lea ecx, [eax+0x2f]
	jmp _Z22R_TextLineWrapPositionPKciiP6Font_sf_350
	nop
	add [eax], al


;Initialized global or static variables of r_font:
SECTION .data


;Initialized constant data of r_font:
SECTION .rdata


;Zero initialized global or static variables of r_font:
SECTION .bss
registeredFontCount: resb 0x20
registeredFont: resb 0x60


;All cstrings:
SECTION .rdata
_cstring_r_registerfont_t:		db "R_RegisterFont: Too many fonts registered already.",0ah,0
_cstring_r_registerfont_e:		db "R_RegisterFont: Error while reading font ",27h,"%s",27h,0
_cstring_abcdefghijklmnop:		db "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890",0



;All constant floats and doubles:
SECTION .rdata
_float_48_00000000:		dd 0x42400000	; 48

