;Imports of r_font:
	extern R_LoadFont
	extern Q_stricmp
	extern Com_Error
	extern DB_FindXAssetHeader
	extern SEH_ReadCharFromString
	extern useFastFile
	extern SEH_DecodeLetter
	extern RandWithSeed
	extern isspace

;Exports of r_font:
	global registeredFontCount
	global registeredFont
	global _ZZ21R_FontGetRandomLetterP6Font_siE13MYRANDOMCHARS
	global R_RegisterFont_LoadObj
	global R_RegisterFont_FastFile
	global R_InitFonts
	global R_TextWidth
	global R_TextHeight
	global R_RegisterFont
	global R_ShutdownFonts
	global R_ConsoleTextWidth
	global R_GetCharacterGlyph
	global R_FontGetRandomLetter
	global R_NormalizedTextScale
	global R_TextLineWrapPosition


SECTION .text


;R_RegisterFont_LoadObj(char const*, int)
R_RegisterFont_LoadObj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov eax, [registeredFontCount]
	test eax, eax
	jg R_RegisterFont_LoadObj_10
R_RegisterFont_LoadObj_50:
	cmp eax, 0xf
	jg R_RegisterFont_LoadObj_20
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], edi
	call R_LoadFont
	mov ebx, eax
	test eax, eax
	jz R_RegisterFont_LoadObj_30
R_RegisterFont_LoadObj_80:
	mov eax, [registeredFontCount]
	mov [eax*4+registeredFont], ebx
	add eax, 0x1
	mov [registeredFontCount], eax
R_RegisterFont_LoadObj_70:
	mov eax, ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_RegisterFont_LoadObj_10:
	xor esi, esi
	mov ebx, registeredFont
	jmp R_RegisterFont_LoadObj_40
R_RegisterFont_LoadObj_60:
	add esi, 0x1
	mov eax, [registeredFontCount]
	add ebx, 0x4
	cmp eax, esi
	jle R_RegisterFont_LoadObj_50
R_RegisterFont_LoadObj_40:
	mov eax, [ebx]
	mov eax, [eax]
	mov [esp+0x4], eax
	mov [esp], edi
	call Q_stricmp
	test eax, eax
	jnz R_RegisterFont_LoadObj_60
	mov ebx, [esi*4+registeredFont]
	jmp R_RegisterFont_LoadObj_70
R_RegisterFont_LoadObj_20:
	mov dword [esp+0x4], _cstring_r_registerfont_t
	mov dword [esp], 0x2
	call Com_Error
	xor ebx, ebx
	jmp R_RegisterFont_LoadObj_70
R_RegisterFont_LoadObj_30:
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_r_registerfont_e
	mov dword [esp], 0x2
	call Com_Error
	jmp R_RegisterFont_LoadObj_80
	nop


;R_RegisterFont_FastFile(char const*, int)
R_RegisterFont_FastFile:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x13
	call DB_FindXAssetHeader
	leave
	ret
	nop


;R_InitFonts()
R_InitFonts:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;R_TextWidth(char const*, int, Font_s*)
R_TextWidth:
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
R_TextWidth_60:
	cmp byte [eax], 0x0
	jz R_TextWidth_10
R_TextWidth_50:
	mov edx, [ebp-0x24]
	cmp [ebp+0xc], edx
	jle R_TextWidth_10
	mov dword [esp+0x4], 0x0
	lea edx, [ebp+0x8]
	mov [esp], edx
	call SEH_ReadCharFromString
	mov ebx, eax
	cmp eax, 0xd
	jz R_TextWidth_20
	cmp eax, 0xa
	jz R_TextWidth_20
	cmp eax, 0x5e
	jz R_TextWidth_30
	mov eax, [ebp+0x8]
	mov [ebp-0x28], eax
R_TextWidth_90:
	lea eax, [ebx-0x20]
	cmp eax, 0x5f
	ja R_TextWidth_40
	lea edx, [ebx+ebx*2]
	mov ecx, [ebp+0x10]
	mov eax, [ecx+0x14]
	lea eax, [eax+edx*8-0x300]
R_TextWidth_80:
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
	jnz R_TextWidth_50
R_TextWidth_10:
	mov eax, [ebp-0x1c]
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_TextWidth_20:
	mov dword [ebp-0x20], 0x0
	mov ecx, [ebp+0x8]
	mov [ebp-0x28], ecx
	mov eax, ecx
	jmp R_TextWidth_60
R_TextWidth_40:
	mov edx, [ebp+0x10]
	mov eax, [edx+0x8]
	lea edi, [eax-0x1]
	cmp edi, 0x5f
	jg R_TextWidth_70
	mov ecx, [edx+0x14]
	mov [ebp-0x2c], ecx
	mov eax, ecx
R_TextWidth_140:
	add eax, 0x150
	jmp R_TextWidth_80
R_TextWidth_30:
	mov ecx, [ebp+0x8]
	mov [ebp-0x28], ecx
	test ecx, ecx
	jz R_TextWidth_90
	movzx eax, byte [ecx]
	cmp al, 0x5e
	jz R_TextWidth_90
	cmp al, 0x2f
	jle R_TextWidth_90
	cmp al, 0x39
	jg R_TextWidth_90
	add ecx, 0x1
	mov [ebp-0x28], ecx
	mov [ebp+0x8], ecx
	mov eax, ecx
	jmp R_TextWidth_60
R_TextWidth_70:
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
	jz R_TextWidth_80
	mov esi, 0x60
	jmp R_TextWidth_100
R_TextWidth_120:
	lea esi, [edx+0x1]
	cmp edi, esi
	jl R_TextWidth_110
R_TextWidth_130:
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
	jz R_TextWidth_80
R_TextWidth_100:
	cmp ebx, ecx
	ja R_TextWidth_120
	lea edi, [edx-0x1]
	cmp edi, esi
	jge R_TextWidth_130
R_TextWidth_110:
	mov eax, [ebp-0x2c]
	jmp R_TextWidth_140


;R_TextHeight(Font_s*)
R_TextHeight:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x4]
	pop ebp
	ret
	nop


;R_RegisterFont(char const*, int)
R_RegisterFont:
	push ebp
	mov ebp, esp
	mov eax, useFastFile
	mov eax, [eax]
	mov ecx, R_RegisterFont_FastFile
	cmp byte [eax+0xc], 0x0
	mov eax, R_RegisterFont_LoadObj
	cmovz ecx, eax
	pop ebp
	jmp ecx


;R_ShutdownFonts()
R_ShutdownFonts:
	push ebp
	mov ebp, esp
	mov dword [registeredFontCount], 0x0
	pop ebp
	ret
	nop


;R_ConsoleTextWidth(char const*, int, int, int, Font_s*)
R_ConsoleTextWidth:
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
	jz R_ConsoleTextWidth_10
	mov esi, eax
	mov dword [ebp-0x30], 0x0
	jmp R_ConsoleTextWidth_20
R_ConsoleTextWidth_50:
	lea edx, [ebx+ebx*2]
	mov ecx, [ebp+0x18]
	mov eax, [ecx+0x14]
	lea eax, [eax+edx*8-0x300]
R_ConsoleTextWidth_70:
	movzx eax, byte [eax+0x4]
	add [ebp-0x30], eax
R_ConsoleTextWidth_180:
	cmp [ebp-0x34], esi
	jz R_ConsoleTextWidth_30
R_ConsoleTextWidth_20:
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
	call SEH_DecodeLetter
	mov ebx, eax
	add esi, [ebp-0x1c]
	and esi, [ebp-0x38]
	cmp eax, 0x5e
	jz R_ConsoleTextWidth_40
R_ConsoleTextWidth_110:
	lea eax, [ebx-0x20]
	cmp eax, 0x5f
	jbe R_ConsoleTextWidth_50
	mov edx, [ebp+0x18]
	mov eax, [edx+0x8]
	lea edi, [eax-0x1]
	cmp edi, 0x5f
	jg R_ConsoleTextWidth_60
	mov ecx, [edx+0x14]
	mov [ebp-0x3c], ecx
	mov eax, ecx
R_ConsoleTextWidth_170:
	add eax, 0x150
	jmp R_ConsoleTextWidth_70
R_ConsoleTextWidth_40:
	mov eax, [ebp+0x8]
	add eax, esi
	jz R_ConsoleTextWidth_80
	movzx eax, byte [eax]
	cmp al, 0x5e
	jz R_ConsoleTextWidth_90
	cmp al, 0x2f
	jle R_ConsoleTextWidth_90
	cmp al, 0x39
	jle R_ConsoleTextWidth_100
R_ConsoleTextWidth_90:
	sub al, 0x1
	cmp al, 0x1
	ja R_ConsoleTextWidth_110
R_ConsoleTextWidth_190:
	lea eax, [esi+0x1]
	and eax, [ebp-0x38]
	mov edx, [ebp+0x8]
	movsx eax, byte [edx+eax]
	sub eax, 0x10
	mov ecx, [ebp+0x18]
	imul eax, [ecx+0x4]
	mov edx, eax
	add edx, 0x10
	js R_ConsoleTextWidth_120
R_ConsoleTextWidth_200:
	sar edx, 0x5
	add [ebp-0x30], edx
	add esi, 0x7
	and esi, [ebp-0x38]
	cmp [ebp-0x34], esi
	jnz R_ConsoleTextWidth_20
R_ConsoleTextWidth_30:
	mov eax, [ebp-0x30]
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_ConsoleTextWidth_60:
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
	jz R_ConsoleTextWidth_70
	mov dword [ebp-0x2c], 0x60
	jmp R_ConsoleTextWidth_130
R_ConsoleTextWidth_150:
	add edx, 0x1
	mov [ebp-0x2c], edx
	cmp edi, [ebp-0x2c]
	jl R_ConsoleTextWidth_140
R_ConsoleTextWidth_160:
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
	jz R_ConsoleTextWidth_70
R_ConsoleTextWidth_130:
	cmp ebx, ecx
	ja R_ConsoleTextWidth_150
	lea edi, [edx-0x1]
	cmp edi, [ebp-0x2c]
	jge R_ConsoleTextWidth_160
R_ConsoleTextWidth_140:
	mov eax, [ebp-0x3c]
	jmp R_ConsoleTextWidth_170
R_ConsoleTextWidth_100:
	add esi, 0x1
	and esi, [ebp-0x38]
	jmp R_ConsoleTextWidth_180
R_ConsoleTextWidth_80:
	movzx eax, byte [0x0]
	sub al, 0x1
	cmp al, 0x1
	ja R_ConsoleTextWidth_110
	jmp R_ConsoleTextWidth_190
R_ConsoleTextWidth_10:
	mov dword [ebp-0x30], 0x0
	mov eax, [ebp-0x30]
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_ConsoleTextWidth_120:
	lea edx, [eax+0x2f]
	jmp R_ConsoleTextWidth_200
	nop


;R_GetCharacterGlyph(Font_s*, unsigned int)
R_GetCharacterGlyph:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov ecx, [ebp+0x8]
	mov eax, [ebp+0xc]
	sub eax, 0x20
	cmp eax, 0x5f
	ja R_GetCharacterGlyph_10
	mov eax, [ebp+0xc]
	lea edx, [eax+eax*2]
	mov eax, [ecx+0x14]
	lea eax, [eax+edx*8-0x300]
R_GetCharacterGlyph_30:
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_GetCharacterGlyph_10:
	mov eax, [ecx+0x8]
	lea esi, [eax-0x1]
	cmp esi, 0x5f
	jg R_GetCharacterGlyph_20
	mov edi, [ecx+0x14]
R_GetCharacterGlyph_50:
	lea eax, [edi+0x150]
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_GetCharacterGlyph_20:
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
	jz R_GetCharacterGlyph_30
	mov ebx, 0x60
	jmp R_GetCharacterGlyph_40
R_GetCharacterGlyph_60:
	lea ebx, [edx+0x1]
R_GetCharacterGlyph_70:
	cmp esi, ebx
	jl R_GetCharacterGlyph_50
	lea eax, [esi+ebx]
	mov edx, eax
	shr edx, 0x1f
	add edx, eax
	sar edx, 1
	lea eax, [edx+edx*2]
	lea eax, [edi+eax*8]
	movzx ecx, word [eax]
	cmp [ebp+0xc], ecx
	jz R_GetCharacterGlyph_30
R_GetCharacterGlyph_40:
	cmp [ebp+0xc], ecx
	ja R_GetCharacterGlyph_60
	lea esi, [edx-0x1]
	jmp R_GetCharacterGlyph_70
	nop


;R_FontGetRandomLetter(Font_s*, int)
R_FontGetRandomLetter:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	lea eax, [ebp+0xc]
	mov [esp], eax
	call RandWithSeed
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
R_NormalizedTextScale:
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
R_TextLineWrapPosition:
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
	jz R_TextLineWrapPosition_10
R_TextLineWrapPosition_110:
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call SEH_ReadCharFromString
	mov ebx, eax
	cmp eax, 0xd
	jz R_TextLineWrapPosition_20
	cmp eax, 0xa
	jz R_TextLineWrapPosition_30
	cmp eax, 0x5e
	jz R_TextLineWrapPosition_40
R_TextLineWrapPosition_220:
	mov ecx, [ebp+0x14]
	test ecx, ecx
	jz R_TextLineWrapPosition_50
	lea eax, [ebx-0x20]
	cmp eax, 0x5f
	ja R_TextLineWrapPosition_60
	lea edx, [ebx+ebx*2]
	mov ecx, [ebp+0x14]
	mov eax, [ecx+0x14]
	lea eax, [eax+edx*8-0x300]
R_TextLineWrapPosition_180:
	movzx eax, byte [eax+0x4]
	add [ebp-0x30], eax
R_TextLineWrapPosition_50:
	mov edx, [ebp-0x38]
	cmp [ebp+0x8], edx
	jz R_TextLineWrapPosition_70
	cmp ebx, 0xff
	jbe R_TextLineWrapPosition_80
R_TextLineWrapPosition_130:
	xor eax, eax
	test eax, eax
	jz R_TextLineWrapPosition_70
R_TextLineWrapPosition_140:
	mov ecx, [ebp-0x38]
	mov [ebp-0x2c], ecx
	cvtsi2ss xmm0, dword [ebp-0x30]
	mulss xmm0, [ebp+0x18]
	cvtsi2ss xmm1, dword [ebp+0x10]
	ucomiss xmm0, xmm1
	ja R_TextLineWrapPosition_90
R_TextLineWrapPosition_150:
	mov esi, [ebp-0x1c]
	mov [ebp-0x38], esi
	mov eax, esi
	sub eax, [ebp+0x8]
	cmp [ebp+0xc], eax
	jl R_TextLineWrapPosition_100
R_TextLineWrapPosition_160:
	mov edx, [ebp-0x34]
	mov ecx, [ebp-0x38]
	mov [ebp-0x34], ecx
	cmp byte [ecx], 0x0
	jnz R_TextLineWrapPosition_110
R_TextLineWrapPosition_10:
	mov eax, ecx
	sub eax, [ebp+0x8]
	cmp [ebp+0xc], eax
	jz R_TextLineWrapPosition_120
	mov eax, [ebp-0x34]
R_TextLineWrapPosition_330:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_TextLineWrapPosition_80:
	mov [esp], ebx
	call isspace
	test eax, eax
	jz R_TextLineWrapPosition_130
	mov eax, 0x1
	test eax, eax
	jnz R_TextLineWrapPosition_140
R_TextLineWrapPosition_70:
	mov esi, [ebp-0x2c]
	test esi, esi
	jz R_TextLineWrapPosition_150
R_TextLineWrapPosition_250:
	cvtsi2ss xmm0, dword [ebp-0x30]
	mulss xmm0, [ebp+0x18]
	cvtsi2ss xmm1, dword [ebp+0x10]
	ucomiss xmm0, xmm1
	jbe R_TextLineWrapPosition_150
R_TextLineWrapPosition_90:
	mov esi, [ebp-0x2c]
	mov [ebp-0x34], esi
	mov eax, esi
R_TextLineWrapPosition_340:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_TextLineWrapPosition_20:
	mov dword [ebp-0x30], 0x0
	mov eax, [ebp-0x1c]
	mov [ebp-0x38], eax
	jmp R_TextLineWrapPosition_160
R_TextLineWrapPosition_60:
	mov esi, [ebp+0x14]
	mov eax, [esi+0x8]
	lea edi, [eax-0x1]
	cmp edi, 0x5f
	jg R_TextLineWrapPosition_170
	mov eax, [esi+0x14]
	mov [ebp-0x3c], eax
R_TextLineWrapPosition_310:
	add eax, 0x150
	jmp R_TextLineWrapPosition_180
R_TextLineWrapPosition_40:
	mov edx, [ebp-0x1c]
	test edx, edx
	jz R_TextLineWrapPosition_190
	movzx eax, byte [edx]
	cmp al, 0x5e
	jz R_TextLineWrapPosition_200
	cmp al, 0x2f
	jle R_TextLineWrapPosition_200
	cmp al, 0x39
	jle R_TextLineWrapPosition_210
R_TextLineWrapPosition_200:
	sub al, 0x1
	cmp al, 0x1
	ja R_TextLineWrapPosition_220
R_TextLineWrapPosition_320:
	mov ebx, [ebp+0x14]
	test ebx, ebx
	jz R_TextLineWrapPosition_230
	movsx eax, byte [edx+0x1]
	sub eax, 0x10
	mov ecx, [ebp+0x14]
	imul eax, [ecx+0x4]
	mov ecx, eax
	add ecx, 0x10
	js R_TextLineWrapPosition_240
R_TextLineWrapPosition_350:
	sar ecx, 0x5
	add [ebp-0x30], ecx
R_TextLineWrapPosition_230:
	mov esi, [ebp-0x38]
	cmp [ebp+0x8], esi
	cmovz esi, [ebp-0x2c]
	mov [ebp-0x2c], esi
	add edx, 0x7
	mov [ebp-0x1c], edx
	mov esi, [ebp-0x2c]
	test esi, esi
	jnz R_TextLineWrapPosition_250
	jmp R_TextLineWrapPosition_150
R_TextLineWrapPosition_170:
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
	jz R_TextLineWrapPosition_260
	mov esi, 0x60
	jmp R_TextLineWrapPosition_270
R_TextLineWrapPosition_290:
	lea esi, [edx+0x1]
	cmp edi, esi
	jl R_TextLineWrapPosition_280
R_TextLineWrapPosition_300:
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
	jz R_TextLineWrapPosition_260
R_TextLineWrapPosition_270:
	cmp ebx, eax
	ja R_TextLineWrapPosition_290
	lea edi, [edx-0x1]
	cmp edi, esi
	jge R_TextLineWrapPosition_300
R_TextLineWrapPosition_280:
	mov eax, [ebp-0x3c]
	jmp R_TextLineWrapPosition_310
R_TextLineWrapPosition_260:
	mov eax, ecx
	jmp R_TextLineWrapPosition_180
R_TextLineWrapPosition_190:
	movzx eax, byte [0x0]
	sub al, 0x1
	cmp al, 0x1
	ja R_TextLineWrapPosition_220
	jmp R_TextLineWrapPosition_320
R_TextLineWrapPosition_210:
	add edx, 0x1
	mov [ebp-0x1c], edx
	mov esi, [ebp-0x2c]
	test esi, esi
	jnz R_TextLineWrapPosition_250
	jmp R_TextLineWrapPosition_150
R_TextLineWrapPosition_30:
	mov edx, [ebp-0x1c]
	mov [ebp-0x34], edx
	mov eax, edx
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_TextLineWrapPosition_100:
	mov edx, [ebp-0x2c]
	test edx, edx
	jnz R_TextLineWrapPosition_90
	mov eax, [ebp-0x34]
	jmp R_TextLineWrapPosition_330
R_TextLineWrapPosition_120:
	mov eax, [ebp-0x2c]
	test eax, eax
	jnz R_TextLineWrapPosition_90
	mov [ebp-0x34], edx
	mov eax, edx
	jmp R_TextLineWrapPosition_340
R_TextLineWrapPosition_240:
	lea ecx, [eax+0x2f]
	jmp R_TextLineWrapPosition_350
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

