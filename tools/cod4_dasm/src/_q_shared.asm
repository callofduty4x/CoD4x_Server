;Imports of q_shared:
	extern strncpy
	extern vsnprintf
	extern tolower
	extern strchr
	extern Com_Error
	extern strcpy
	extern Sys_IsMainThread
	extern AngleVectors
	extern Sys_SetValue
	extern Com_Printf
	extern strcat
	extern memcpy
	extern Sys_GetValue
	extern Com_FindSoundAlias
	extern com_dedicated
	extern Material_RegisterHandle
	extern R_RegisterModel
	extern FX_Register
	extern atof
	extern atoi

;Exports of q_shared:
	global value1
	global g_com_error
	global va_info
	global _LittleFloatWrite
	global _LittleFloatRead
	global _LittleLong64
	global _LittleLong
	global _BigLong
	global _LittleShort
	global _BigShort
	global _ZZ16Info_ValueForKeyPKcS0_E10valueindex
	global ColorIndex
	global Q_CleanStr
	global Q_strncpyz
	global Q_stricmpn
	global Long64Swap
	global LongNoSwap
	global Com_sprintf
	global Q_CleanChar
	global ShortNoSwap
	global I_DrawStrlen
	global Long64NoSwap
	global FloatReadSwap
	global I_stricmpwild
	global Info_NextPair
	global Info_Validate
	global Com_sprintfPos
	global FloatWriteSwap
	global Info_RemoveKey
	global FloatReadNoSwap
	global GetLeanFraction
	global I_isforfilename
	global FloatWriteNoSwap
	global Info_ValueForKey
	global AddLeanToPosition
	global UnGetLeanFraction
	global Com_InitThreadData
	global Com_StripExtension
	global Info_RemoveKey_Big
	global Info_SetValueForKey
	global Com_AssembleFilepath
	global Com_DefaultExtension
	global Com_IsLegacyXModelName
	global Info_SetValueForKey_Big
	global Com_GetFilenameSubString
	global Com_GetExtensionSubString
	global ParseConfigStringToStruct
	global va
	global ParseConfigStringToStruct
	global BigShort
	global I_iscsym
	global strcmp
	global Q_strlwr
	global I_strupr
	global LongSwap
	global I_isdigit
	global I_islower
	global Q_stricmp
	global I_stristr
	global Q_strncat
	global Q_strncmp
	global ShortSwap
	global Swap_Init
	global colorWhite
	global colorYellow
	global colorGreenFaded
	global colorRed
	global colorWhiteFaded
	global colorGreen
	global colorBlue
	global colorBlack
	global colorLtGrey
	global colorOrange
	global colorRedFaded
	global g_traceThreadInfo
	global colorMagenta
	global colorMdGrey
	global colorCyan
	global colorLtCyan
	global colorLtGreen
	global colorLtYellow
	global colorMdCyan


SECTION .text


;ColorIndex(unsigned char)
ColorIndex:
	push ebp
	mov ebp, esp
	movzx eax, byte [ebp+0x8]
	sub al, 0x30
	cmp al, 0x9
	ja ColorIndex_10
	movzx eax, al
	pop ebp
	ret
ColorIndex_10:
	mov eax, 0x7
	pop ebp
	ret
	nop


;I_CleanStr(char*)
Q_CleanStr:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov edi, [ebp+0x8]
	movzx edx, byte [edi]
	test dl, dl
	jz Q_CleanStr_10
	mov eax, edi
	mov esi, edi
	jmp Q_CleanStr_20
Q_CleanStr_50:
	lea ecx, [eax+0x1]
Q_CleanStr_60:
	lea eax, [edx-0x20]
	cmp al, 0x5e
	ja Q_CleanStr_30
	mov [esi], dl
	add esi, 0x1
Q_CleanStr_30:
	movzx edx, byte [ecx]
	test dl, dl
	jz Q_CleanStr_40
Q_CleanStr_70:
	mov eax, ecx
Q_CleanStr_20:
	cmp dl, 0x5e
	jnz Q_CleanStr_50
	lea ecx, [eax+0x1]
	movzx ebx, byte [eax+0x1]
	test bl, bl
	jz Q_CleanStr_60
	cmp bl, 0x5e
	jz Q_CleanStr_60
	cmp bl, 0x2f
	jle Q_CleanStr_60
	cmp bl, 0x39
	jg Q_CleanStr_60
	lea ecx, [eax+0x2]
	movzx edx, byte [ecx]
	test dl, dl
	jnz Q_CleanStr_70
Q_CleanStr_40:
	mov byte [esi], 0x0
	mov eax, edi
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Q_CleanStr_10:
	mov esi, edi
	mov byte [esi], 0x0
	mov eax, edi
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;I_strncpyz(char*, char const*, int)
Q_strncpyz:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0x10]
	lea eax, [ebx-0x1]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], esi
	call strncpy
	mov byte [esi+ebx-0x1], 0x0
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;I_strnicmp(char const*, char const*, int)
Q_stricmpn:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4
	mov edi, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov dword [ebp-0x10], 0x0
Q_stricmpn_40:
	movzx ecx, byte [edi]
	movzx ebx, byte [esi]
	add edi, 0x1
	add esi, 0x1
	mov eax, [ebp+0x10]
	cmp [ebp-0x10], eax
	jz Q_stricmpn_10
	cmp ecx, ebx
	jz Q_stricmpn_20
	lea eax, [ecx-0x41]
	cmp eax, 0x19
	setbe al
	lea edx, [ecx+0x20]
	test al, al
	cmovnz ecx, edx
	lea eax, [ebx-0x41]
	cmp eax, 0x19
	setbe al
	lea edx, [ebx+0x20]
	test al, al
	cmovnz ebx, edx
	cmp ecx, ebx
	jnz Q_stricmpn_30
Q_stricmpn_20:
	add dword [ebp-0x10], 0x1
	test ecx, ecx
	jnz Q_stricmpn_40
Q_stricmpn_10:
	xor eax, eax
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Q_stricmpn_30:
	xor eax, eax
	cmp ebx, ecx
	setle al
	lea eax, [eax+eax-0x1]
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Long64Swap(unsigned long long)
Long64Swap:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x20
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov ecx, esi
	movzx eax, cl
	mov edx, eax
	mov eax, 0x0
	shl edx, 0x18
	mov ecx, esi
	mov ebx, edi
	shrd ecx, ebx, 0x8
	shr ebx, 0x8
	mov [ebp-0x14], ecx
	mov [ebp-0x10], ebx
	movzx ecx, byte [ebp-0x14]
	mov ebx, ecx
	mov ecx, 0x0
	shl ebx, 0x10
	add eax, ecx
	adc edx, ebx
	mov ecx, esi
	mov ebx, edi
	shrd ecx, ebx, 0x10
	shr ebx, 0x10
	mov [ebp-0x1c], ecx
	mov [ebp-0x18], ebx
	movzx ecx, byte [ebp-0x1c]
	mov ebx, ecx
	mov ecx, 0x0
	shl ebx, 0x8
	add eax, ecx
	adc edx, ebx
	mov ecx, esi
	mov ebx, edi
	shrd ecx, edi, 0x18
	shr ebx, 0x18
	mov [ebp-0x24], ecx
	mov [ebp-0x20], ebx
	movzx ecx, byte [ebp-0x24]
	mov ebx, ecx
	mov ecx, 0x0
	add eax, ecx
	adc edx, ebx
	mov ebx, edi
	movzx ebx, bl
	mov [ebp-0x2c], ebx
	mov dword [ebp-0x28], 0x0
	mov ecx, [ebp-0x2c]
	mov ebx, [ebp-0x28]
	shld ebx, ecx, 0x18
	shl ecx, 0x18
	add eax, ecx
	adc edx, ebx
	mov esi, edi
	xor edi, edi
	shr esi, 0x8
	mov ebx, esi
	movzx ebx, bl
	mov [ebp-0x2c], ebx
	mov dword [ebp-0x28], 0x0
	mov ecx, [ebp-0x2c]
	mov ebx, [ebp-0x28]
	shld ebx, ecx, 0x10
	shl ecx, 0x10
	add eax, ecx
	adc edx, ebx
	shrd esi, edi, 0x8
	shr edi, 0x8
	mov ebx, esi
	movzx ebx, bl
	mov [ebp-0x2c], ebx
	mov dword [ebp-0x28], 0x0
	mov ecx, [ebp-0x2c]
	mov ebx, [ebp-0x28]
	shld ebx, ecx, 0x8
	shl ecx, 0x8
	add eax, ecx
	adc edx, ebx
	shrd esi, edi, 0x8
	mov ebx, esi
	movzx esi, bl
	mov [ebp-0x2c], esi
	mov dword [ebp-0x28], 0x0
	add eax, [ebp-0x2c]
	adc edx, [ebp-0x28]
	add esp, 0x20
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;LongNoSwap(int)
LongNoSwap:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	pop ebp
	ret


;Com_sprintf(char*, int, char const*, ...)
Com_sprintf:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	lea eax, [ebp+0x14]
	mov [ebp-0xc], eax
	mov [esp+0xc], eax
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], esi
	call vsnprintf
	mov byte [esi+ebx-0x1], 0x0
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;I_CleanChar(char)
Q_CleanChar:
	push ebp
	mov ebp, esp
	movzx eax, byte [ebp+0x8]
	cmp al, 0x92
	jz Q_CleanChar_10
	movsx eax, al
	pop ebp
	ret
Q_CleanChar_10:
	mov eax, 0x27
	pop ebp
	ret
	nop


;ShortNoSwap(short)
ShortNoSwap:
	push ebp
	mov ebp, esp
	movsx eax, word [ebp+0x8]
	pop ebp
	ret
	nop


;I_DrawStrlen(char const*)
I_DrawStrlen:
	push ebp
	mov ebp, esp
	push ebx
	mov ecx, [ebp+0x8]
	xor ebx, ebx
I_DrawStrlen_50:
	movzx edx, byte [ecx]
	test dl, dl
	jz I_DrawStrlen_10
I_DrawStrlen_30:
	cmp dl, 0x5e
	jz I_DrawStrlen_20
	lea eax, [ecx+0x1]
I_DrawStrlen_40:
	add ebx, 0x1
	mov ecx, eax
	movzx edx, byte [ecx]
	test dl, dl
	jnz I_DrawStrlen_30
I_DrawStrlen_10:
	mov eax, ebx
	pop ebx
	pop ebp
	ret
I_DrawStrlen_20:
	lea eax, [ecx+0x1]
	movzx edx, byte [ecx+0x1]
	test dl, dl
	jz I_DrawStrlen_40
	cmp dl, 0x5e
	jz I_DrawStrlen_40
	cmp dl, 0x2f
	jle I_DrawStrlen_40
	cmp dl, 0x39
	jg I_DrawStrlen_40
	add ecx, 0x2
	jmp I_DrawStrlen_50


;Long64NoSwap(unsigned long long)
Long64NoSwap:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	pop ebp
	ret
	nop


;FloatReadSwap(int)
FloatReadSwap:
	push ebp
	mov ebp, esp
	sub esp, 0x4
	xor eax, eax
	mov ecx, [ebp+0x8]
	mov edx, ecx
	shr edx, 0x18
	mov al, dl
	mov edx, ecx
	shr edx, 0x10
	mov ah, dl
	movzx edx, ch
	shl edx, 0x10
	and eax, 0xff00ffff
	or eax, edx
	shl ecx, 0x18
	and eax, 0xffffff
	or eax, ecx
	mov [ebp-0x4], eax
	fld dword [ebp-0x4]
	leave
	ret


;I_stricmpwild(char const*, char const*)
I_stricmpwild:
I_stricmpwild_310:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov edx, [ebp+0x8]
	movzx esi, byte [edx]
	lea eax, [edx+0x1]
	mov [ebp-0x4c], eax
	mov [ebp-0x30], eax
	mov eax, esi
	cmp al, 0x2a
	jz I_stricmpwild_10
I_stricmpwild_50:
	mov edx, [ebp+0xc]
	movzx edi, byte [edx]
	add edx, 0x1
	mov [ebp+0xc], edx
	mov eax, esi
	mov edx, edi
	cmp al, dl
	jz I_stricmpwild_20
	cmp al, 0x3f
	jz I_stricmpwild_20
	mov edx, esi
	movsx eax, dl
	mov [esp], eax
	call tolower
	mov ebx, eax
	mov edx, edi
	movsx eax, dl
	mov [esp], eax
	call tolower
	sub ebx, eax
	mov eax, ebx
	jnz I_stricmpwild_30
I_stricmpwild_20:
	mov eax, esi
	test al, al
	jz I_stricmpwild_40
I_stricmpwild_60:
	mov edx, [ebp-0x30]
	movzx esi, byte [edx]
	lea eax, [edx+0x1]
	mov [ebp-0x4c], eax
	mov [ebp-0x30], eax
	mov eax, esi
	cmp al, 0x2a
	jnz I_stricmpwild_50
I_stricmpwild_10:
	cmp byte [edx+0x1], 0x0
	jz I_stricmpwild_40
	mov eax, [ebp+0xc]
	cmp byte [eax], 0x0
	jz I_stricmpwild_60
	add eax, 0x1
	mov [ebp-0x48], eax
	mov eax, [ebp-0x4c]
	jmp I_stricmpwild_70
I_stricmpwild_90:
	mov edx, [ebp-0x48]
	movzx edi, byte [edx]
	add edx, 0x1
	mov [ebp-0x48], edx
	mov eax, esi
	mov edx, edi
	cmp al, dl
	jz I_stricmpwild_80
	cmp al, 0x3f
	jz I_stricmpwild_80
	mov edx, esi
	movsx eax, dl
	mov [esp], eax
	call tolower
	mov ebx, eax
	mov edx, edi
	movsx eax, dl
	mov [esp], eax
	call tolower
	cmp ebx, eax
	jnz I_stricmpwild_60
I_stricmpwild_80:
	mov eax, esi
	test al, al
	jz I_stricmpwild_40
I_stricmpwild_100:
	mov edx, [ebp-0x2c]
	movzx esi, byte [edx]
	lea eax, [edx+0x1]
	mov [ebp-0x4c], eax
I_stricmpwild_70:
	mov [ebp-0x2c], eax
	mov eax, esi
	cmp al, 0x2a
	jnz I_stricmpwild_90
	cmp byte [edx+0x1], 0x0
	jz I_stricmpwild_40
	mov eax, [ebp-0x48]
	cmp byte [eax], 0x0
	jz I_stricmpwild_100
	add eax, 0x1
	mov [ebp-0x44], eax
	mov eax, [ebp-0x4c]
	jmp I_stricmpwild_110
I_stricmpwild_130:
	mov edx, [ebp-0x44]
	movzx edi, byte [edx]
	add edx, 0x1
	mov [ebp-0x44], edx
	mov eax, esi
	mov edx, edi
	cmp al, dl
	jz I_stricmpwild_120
	cmp al, 0x3f
	jz I_stricmpwild_120
	mov edx, esi
	movsx eax, dl
	mov [esp], eax
	call tolower
	mov ebx, eax
	mov edx, edi
	movsx eax, dl
	mov [esp], eax
	call tolower
	cmp ebx, eax
	jnz I_stricmpwild_100
I_stricmpwild_120:
	mov eax, esi
	test al, al
	jz I_stricmpwild_40
I_stricmpwild_140:
	mov edx, [ebp-0x28]
	movzx esi, byte [edx]
	lea eax, [edx+0x1]
	mov [ebp-0x4c], eax
I_stricmpwild_110:
	mov [ebp-0x28], eax
	mov eax, esi
	cmp al, 0x2a
	jnz I_stricmpwild_130
	cmp byte [edx+0x1], 0x0
	jz I_stricmpwild_40
	mov eax, [ebp-0x44]
	cmp byte [eax], 0x0
	jz I_stricmpwild_140
	add eax, 0x1
	mov [ebp-0x40], eax
	mov eax, [ebp-0x4c]
	jmp I_stricmpwild_150
I_stricmpwild_170:
	mov edx, [ebp-0x40]
	movzx edi, byte [edx]
	add edx, 0x1
	mov [ebp-0x40], edx
	mov eax, esi
	mov edx, edi
	cmp al, dl
	jz I_stricmpwild_160
	cmp al, 0x3f
	jz I_stricmpwild_160
	mov edx, esi
	movsx eax, dl
	mov [esp], eax
	call tolower
	mov ebx, eax
	mov edx, edi
	movsx eax, dl
	mov [esp], eax
	call tolower
	cmp ebx, eax
	jnz I_stricmpwild_140
I_stricmpwild_160:
	mov eax, esi
	test al, al
	jz I_stricmpwild_40
I_stricmpwild_180:
	mov edx, [ebp-0x24]
	movzx esi, byte [edx]
	lea eax, [edx+0x1]
	mov [ebp-0x4c], eax
I_stricmpwild_150:
	mov [ebp-0x24], eax
	mov eax, esi
	cmp al, 0x2a
	jnz I_stricmpwild_170
	cmp byte [edx+0x1], 0x0
	jz I_stricmpwild_40
	mov eax, [ebp-0x40]
	cmp byte [eax], 0x0
	jz I_stricmpwild_180
	add eax, 0x1
	mov [ebp-0x3c], eax
	mov eax, [ebp-0x4c]
	jmp I_stricmpwild_190
I_stricmpwild_210:
	mov edx, [ebp-0x3c]
	movzx edi, byte [edx]
	add edx, 0x1
	mov [ebp-0x3c], edx
	mov eax, esi
	mov edx, edi
	cmp al, dl
	jz I_stricmpwild_200
	cmp al, 0x3f
	jz I_stricmpwild_200
	mov edx, esi
	movsx eax, dl
	mov [esp], eax
	call tolower
	mov ebx, eax
	mov edx, edi
	movsx eax, dl
	mov [esp], eax
	call tolower
	cmp ebx, eax
	jnz I_stricmpwild_180
I_stricmpwild_200:
	mov eax, esi
	test al, al
	jz I_stricmpwild_40
I_stricmpwild_220:
	mov edx, [ebp-0x20]
	movzx esi, byte [edx]
	lea eax, [edx+0x1]
	mov [ebp-0x4c], eax
I_stricmpwild_190:
	mov [ebp-0x20], eax
	mov eax, esi
	cmp al, 0x2a
	jnz I_stricmpwild_210
	cmp byte [edx+0x1], 0x0
	jz I_stricmpwild_40
	mov eax, [ebp-0x3c]
	cmp byte [eax], 0x0
	jz I_stricmpwild_220
	add eax, 0x1
	mov [ebp-0x38], eax
	mov eax, [ebp-0x4c]
	jmp I_stricmpwild_230
I_stricmpwild_250:
	mov edx, [ebp-0x38]
	movzx edi, byte [edx]
	add edx, 0x1
	mov [ebp-0x38], edx
	mov eax, esi
	mov edx, edi
	cmp al, dl
	jz I_stricmpwild_240
	cmp al, 0x3f
	jz I_stricmpwild_240
	mov edx, esi
	movsx eax, dl
	mov [esp], eax
	call tolower
	mov ebx, eax
	mov edx, edi
	movsx eax, dl
	mov [esp], eax
	call tolower
	cmp ebx, eax
	jnz I_stricmpwild_220
I_stricmpwild_240:
	mov eax, esi
	test al, al
	jz I_stricmpwild_40
I_stricmpwild_260:
	mov edx, [ebp-0x1c]
	movzx esi, byte [edx]
	lea eax, [edx+0x1]
	mov [ebp-0x4c], eax
I_stricmpwild_230:
	mov [ebp-0x1c], eax
	mov eax, esi
	cmp al, 0x2a
	jnz I_stricmpwild_250
	cmp byte [edx+0x1], 0x0
	jz I_stricmpwild_40
	mov eax, [ebp-0x38]
	cmp byte [eax], 0x0
	jz I_stricmpwild_260
	add eax, 0x1
	mov [ebp-0x34], eax
	jmp I_stricmpwild_270
I_stricmpwild_290:
	mov edx, [ebp-0x34]
	movzx edi, byte [edx]
	add edx, 0x1
	mov [ebp-0x34], edx
	mov eax, esi
	mov edx, edi
	cmp al, dl
	jz I_stricmpwild_280
	cmp al, 0x3f
	jz I_stricmpwild_280
	mov edx, esi
	movsx eax, dl
	mov [esp], eax
	call tolower
	mov ebx, eax
	mov edx, edi
	movsx eax, dl
	mov [esp], eax
	call tolower
	cmp ebx, eax
	jnz I_stricmpwild_260
I_stricmpwild_280:
	mov eax, esi
	test al, al
	jz I_stricmpwild_40
I_stricmpwild_300:
	mov edx, [ebp-0x4c]
	movzx esi, byte [edx]
	lea eax, [edx+0x1]
	mov [ebp-0x4c], eax
I_stricmpwild_270:
	mov eax, esi
	cmp al, 0x2a
	jnz I_stricmpwild_290
	cmp byte [edx+0x1], 0x0
	jz I_stricmpwild_40
	mov eax, [ebp-0x34]
	cmp byte [eax], 0x0
	jz I_stricmpwild_300
	add eax, 0x1
	mov [esp+0x4], eax
	mov [esp], edx
	call I_stricmpwild_310
	test eax, eax
	jnz I_stricmpwild_300
I_stricmpwild_40:
	xor eax, eax
I_stricmpwild_320:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
I_stricmpwild_30:
	sar eax, 0x1f
	or eax, 0x1
	jmp I_stricmpwild_320


;Info_NextPair(char const**, char*, char*)
Info_NextPair:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov edi, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov esi, [ebp+0x10]
	mov ecx, [edi]
	lea eax, [ecx+0x1]
	cmp byte [ecx], 0x5c
	cmovz ecx, eax
	mov byte [edx], 0x0
	mov byte [esi], 0x0
	movzx eax, byte [ecx]
	cmp al, 0x5c
	jz Info_NextPair_10
Info_NextPair_30:
	test al, al
	jz Info_NextPair_20
	mov [edx], al
	add edx, 0x1
	add ecx, 0x1
	movzx eax, byte [ecx]
	cmp al, 0x5c
	jnz Info_NextPair_30
Info_NextPair_10:
	mov byte [edx], 0x0
	lea ebx, [ecx+0x1]
	movzx eax, byte [ecx+0x1]
	cmp al, 0x5c
	jz Info_NextPair_40
	test al, al
	jz Info_NextPair_40
	mov edx, esi
Info_NextPair_60:
	mov [edx], al
	add edx, 0x1
	add ebx, 0x1
	movzx eax, byte [ebx]
	cmp al, 0x5c
	jz Info_NextPair_50
	test al, al
	jnz Info_NextPair_60
Info_NextPair_50:
	mov byte [edx], 0x0
	mov [edi], ebx
Info_NextPair_70:
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Info_NextPair_20:
	mov byte [edx], 0x0
	mov [edi], ecx
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Info_NextPair_40:
	mov edx, esi
	mov byte [edx], 0x0
	mov [edi], ebx
	jmp Info_NextPair_70


;Info_Validate(char const*)
Info_Validate:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [esp+0x4], 0x22
	mov [esp], ebx
	call strchr
	test eax, eax
	jz Info_Validate_10
Info_Validate_20:
	xor eax, eax
Info_Validate_30:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Info_Validate_10:
	mov dword [esp+0x4], 0x3b
	mov [esp], ebx
	call strchr
	test eax, eax
	jnz Info_Validate_20
	mov al, 0x1
	jmp Info_Validate_30


;Com_sprintfPos(char*, int, int*, char const*, ...)
Com_sprintfPos:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	mov eax, [ecx]
	lea edi, [edx-0x1]
	cmp eax, edi
	jl Com_sprintfPos_10
	mov eax, 0xffffffff
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_sprintfPos_10:
	mov esi, eax
	add esi, [ebp+0x8]
	mov ebx, edx
	sub ebx, eax
	lea eax, [ebp+0x18]
	mov [ebp-0x1c], eax
	mov [esp+0xc], eax
	mov eax, [ebp+0x14]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], esi
	call vsnprintf
	mov byte [esi+ebx-0x1], 0x0
	cmp ebx, eax
	jz Com_sprintfPos_20
	cmp eax, 0xffffffff
	jz Com_sprintfPos_20
	mov ecx, [ebp+0x10]
	add [ecx], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_sprintfPos_20:
	mov edx, [ebp+0x10]
	mov [edx], edi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;FloatWriteSwap(float)
FloatWriteSwap:
	push ebp
	mov ebp, esp
	xor eax, eax
	mov ecx, [ebp+0x8]
	mov edx, ecx
	shr edx, 0x18
	mov al, dl
	mov edx, ecx
	shr edx, 0x10
	mov ah, dl
	movzx edx, ch
	shl edx, 0x10
	and eax, 0xff00ffff
	or eax, edx
	shl ecx, 0x18
	and eax, 0xffffff
	or eax, ecx
	pop ebp
	ret
	nop


;Info_RemoveKey(char*, char const*)
Info_RemoveKey:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x81c
	mov ebx, [ebp+0x8]
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	sub ecx, 0x1
	cmp ecx, 0x3ff
	ja Info_RemoveKey_10
Info_RemoveKey_120:
	mov dword [esp+0x4], 0x5c
	mov eax, [ebp+0xc]
	mov [esp], eax
	call strchr
	test eax, eax
	jz Info_RemoveKey_20
Info_RemoveKey_70:
	add esp, 0x81c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Info_RemoveKey_80:
	lea edx, [ebx+0x1]
	movzx eax, byte [ebx+0x1]
	cmp al, 0x5c
	jnz Info_RemoveKey_30
	lea esi, [ebp-0x418]
	mov ecx, esi
Info_RemoveKey_110:
	mov byte [ecx], 0x0
	lea edi, [edx+0x1]
	movzx eax, byte [edx+0x1]
	cmp al, 0x5c
	jz Info_RemoveKey_40
	test al, al
	jnz Info_RemoveKey_50
Info_RemoveKey_40:
	lea edx, [ebp-0x818]
Info_RemoveKey_130:
	mov byte [edx], 0x0
	mov [esp+0x4], esi
	mov eax, [ebp+0xc]
	mov [esp], eax
	call strcmp
	test eax, eax
	jz Info_RemoveKey_60
	cmp byte [edi], 0x0
	jz Info_RemoveKey_70
	mov ebx, edi
Info_RemoveKey_20:
	cmp byte [ebx], 0x5c
	jz Info_RemoveKey_80
	movzx eax, byte [ebx]
	mov edx, ebx
Info_RemoveKey_30:
	test al, al
	jz Info_RemoveKey_70
	lea esi, [ebp-0x418]
	mov ecx, esi
	jmp Info_RemoveKey_90
Info_RemoveKey_100:
	test al, al
	jz Info_RemoveKey_70
Info_RemoveKey_90:
	mov [ecx], al
	add ecx, 0x1
	add edx, 0x1
	movzx eax, byte [edx]
	cmp al, 0x5c
	jnz Info_RemoveKey_100
	jmp Info_RemoveKey_110
Info_RemoveKey_10:
	mov dword [esp+0x4], _cstring_info_removekey_o
	mov dword [esp], 0x2
	call Com_Error
	jmp Info_RemoveKey_120
Info_RemoveKey_50:
	lea edx, [ebp-0x818]
Info_RemoveKey_140:
	mov [edx], al
	add edx, 0x1
	add edi, 0x1
	movzx eax, byte [edi]
	cmp al, 0x5c
	jz Info_RemoveKey_130
	test al, al
	jnz Info_RemoveKey_140
	jmp Info_RemoveKey_130
Info_RemoveKey_60:
	mov [esp+0x4], edi
	mov [esp], ebx
	call strcpy
	jmp Info_RemoveKey_70


;FloatReadNoSwap(int)
FloatReadNoSwap:
	push ebp
	mov ebp, esp
	sub esp, 0x10
	mov eax, [ebp+0x8]
	mov [ebp-0x4], eax
	fld dword [ebp-0x4]
	leave
	ret
	nop


;GetLeanFraction(float)
GetLeanFraction:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	movss xmm0, dword [ebp+0x8]
	movaps xmm2, xmm0
	andps xmm2, [_data16_7fffffff]
	movss xmm1, dword [_float_2_00000000]
	subss xmm1, xmm2
	mulss xmm0, xmm1
	movss [ebp-0xc], xmm0
	fld dword [ebp-0xc]
	leave
	ret
	nop


;I_isforfilename(int)
I_isforfilename:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	lea eax, [edx-0x61]
	cmp eax, 0x19
	jbe I_isforfilename_10
	lea eax, [edx-0x41]
	cmp eax, 0x19
	ja I_isforfilename_20
I_isforfilename_10:
	mov eax, 0x1
I_isforfilename_70:
	test eax, eax
	jnz I_isforfilename_30
	lea eax, [edx-0x30]
	cmp eax, 0x9
	ja I_isforfilename_40
I_isforfilename_30:
	mov eax, 0x1
I_isforfilename_60:
	test eax, eax
	jnz I_isforfilename_50
	cmp edx, 0x5f
	jz I_isforfilename_50
	cmp edx, 0x2d
	jz I_isforfilename_50
	pop ebp
	ret
I_isforfilename_50:
	mov eax, 0x1
	pop ebp
	ret
I_isforfilename_40:
	xor eax, eax
	jmp I_isforfilename_60
I_isforfilename_20:
	xor eax, eax
	jmp I_isforfilename_70
	nop


;FloatWriteNoSwap(float)
FloatWriteNoSwap:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	pop ebp
	ret


;Info_ValueForKey(char const*, char const*)
Info_ValueForKey:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x202c
	mov ebx, [ebp+0x8]
	test ebx, ebx
	jz Info_ValueForKey_10
	mov esi, [ebp+0xc]
	test esi, esi
	jz Info_ValueForKey_10
	xor dword [_ZZ16Info_ValueForKeyPKcS0_E10valueindex], 0x1
	lea eax, [ebx+0x1]
	cmp byte [ebx], 0x5c
	cmovz ebx, eax
Info_ValueForKey_120:
	lea edi, [ebp-0x2018]
	mov esi, 0x1
	movzx eax, byte [ebx]
	cmp al, 0x5c
	jz Info_ValueForKey_20
Info_ValueForKey_40:
	test al, al
	jz Info_ValueForKey_10
	mov [edi], al
	add edi, 0x1
	add ebx, 0x1
	cmp esi, 0x1fff
	jg Info_ValueForKey_30
	add esi, 0x1
Info_ValueForKey_130:
	movzx eax, byte [ebx]
	cmp al, 0x5c
	jnz Info_ValueForKey_40
Info_ValueForKey_20:
	mov byte [edi], 0x0
	add ebx, 0x1
	mov [ebp-0x201c], ebx
	call Sys_IsMainThread
	test al, al
	jz Info_ValueForKey_50
	mov eax, [_ZZ16Info_ValueForKeyPKcS0_E10valueindex]
	shl eax, 0xd
	add eax, value1
	mov [ebp-0x2020], eax
	mov ebx, eax
Info_ValueForKey_150:
	mov esi, 0x1
	mov edx, [ebp-0x201c]
	movzx eax, byte [edx]
	cmp al, 0x5c
	jz Info_ValueForKey_60
Info_ValueForKey_80:
	test al, al
	jz Info_ValueForKey_60
	mov [ebx], al
	add ebx, 0x1
	add dword [ebp-0x201c], 0x1
	cmp esi, 0x1fff
	jg Info_ValueForKey_70
	add esi, 0x1
Info_ValueForKey_140:
	mov edx, [ebp-0x201c]
	movzx eax, byte [edx]
	cmp al, 0x5c
	jnz Info_ValueForKey_80
Info_ValueForKey_60:
	mov byte [ebx], 0x0
	mov esi, [ebp+0xc]
	lea edi, [ebp-0x2018]
	jmp Info_ValueForKey_90
Info_ValueForKey_110:
	test ecx, ecx
	jz Info_ValueForKey_100
Info_ValueForKey_90:
	movzx ecx, byte [esi]
	movzx ebx, byte [edi]
	add esi, 0x1
	add edi, 0x1
	lea eax, [ebp+0x7fffdfe8]
	cmp edi, eax
	jz Info_ValueForKey_100
	cmp ecx, ebx
	jz Info_ValueForKey_110
	lea eax, [ecx-0x41]
	cmp eax, 0x19
	setbe al
	lea edx, [ecx+0x20]
	test al, al
	cmovnz ecx, edx
	lea eax, [ebx-0x41]
	cmp eax, 0x19
	setbe al
	lea edx, [ebx+0x20]
	test al, al
	cmovnz ebx, edx
	cmp ebx, ecx
	jz Info_ValueForKey_110
	mov eax, [ebp-0x201c]
	cmp byte [eax], 0x0
	jz Info_ValueForKey_10
	mov ebx, eax
	add ebx, 0x1
	jmp Info_ValueForKey_120
Info_ValueForKey_30:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_info_valueforkey
	mov dword [esp], 0x2
	call Com_Error
	add esi, 0x1
	jmp Info_ValueForKey_130
Info_ValueForKey_10:
	mov dword [ebp-0x2020], _cstring_null
Info_ValueForKey_100:
	mov eax, [ebp-0x2020]
	add esp, 0x202c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Info_ValueForKey_70:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_info_valueforkey
	mov dword [esp], 0x2
	call Com_Error
	add esi, 0x1
	jmp Info_ValueForKey_140
Info_ValueForKey_50:
	mov eax, [_ZZ16Info_ValueForKeyPKcS0_E10valueindex]
	shl eax, 0xd
	add eax, value1+0x4000
	mov [ebp-0x2020], eax
	mov ebx, eax
	jmp Info_ValueForKey_150


;AddLeanToPosition(float*, float, float, float, float)
AddLeanToPosition:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x44
	mov ebx, [ebp+0x8]
	movss xmm3, dword [ebp+0x10]
	movss xmm2, dword [ebp+0x14]
	pxor xmm4, xmm4
	ucomiss xmm3, xmm4
	jp AddLeanToPosition_10
	jnz AddLeanToPosition_10
	add esp, 0x44
	pop ebx
	pop ebp
	ret
AddLeanToPosition_10:
	movaps xmm0, xmm3
	andps xmm0, [_data16_7fffffff]
	movss xmm1, dword [_float_2_00000000]
	subss xmm1, xmm0
	mulss xmm1, xmm3
	movss [ebp-0x20], xmm4
	movss xmm0, dword [ebp+0xc]
	movss [ebp-0x1c], xmm0
	mulss xmm2, xmm1
	movss [ebp-0x18], xmm2
	mov dword [esp+0xc], 0x0
	lea eax, [ebp-0x14]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x20]
	mov [esp], eax
	movss [ebp-0x38], xmm1
	call AngleVectors
	movss xmm1, dword [ebp-0x38]
	mulss xmm1, [ebp+0x18]
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x14]
	addss xmm0, [ebx]
	movss [ebx], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x10]
	addss xmm0, [ebx+0x4]
	movss [ebx+0x4], xmm0
	mulss xmm1, [ebp-0xc]
	addss xmm1, [ebx+0x8]
	movss [ebx+0x8], xmm1
	add esp, 0x44
	pop ebx
	pop ebp
	ret
	nop
	add [eax], al


;UnGetLeanFraction(float)
UnGetLeanFraction:
	push ebp
	mov ebp, esp
	sub esp, 0x4
	movss xmm0, dword [_float_1_00000000]
	movaps xmm1, xmm0
	subss xmm1, [ebp+0x8]
	sqrtss xmm1, xmm1
	subss xmm0, xmm1
	movss [ebp-0x4], xmm0
	fld dword [ebp-0x4]
	leave
	ret
	add [eax], al


;Com_InitThreadData(int)
Com_InitThreadData:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, ebx
	shl eax, 0xb
	lea eax, [eax+ebx*4+va_info]
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call Sys_SetValue
	lea eax, [ebx+ebx*8]
	lea eax, [eax*8+g_com_error]
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call Sys_SetValue
	shl ebx, 0x4
	add ebx, g_traceThreadInfo
	mov [esp+0x4], ebx
	mov dword [esp], 0x3
	call Sys_SetValue
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;Com_StripExtension(char const*, char*)
Com_StripExtension:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	movzx edx, byte [esi]
	test dl, dl
	jnz Com_StripExtension_10
	mov ecx, esi
Com_StripExtension_80:
	cmp ecx, esi
	jz Com_StripExtension_20
	mov edx, esi
Com_StripExtension_30:
	movzx eax, byte [edx]
	mov [ebx], al
	add ebx, 0x1
	add edx, 0x1
	cmp edx, ecx
	jnz Com_StripExtension_30
Com_StripExtension_20:
	mov byte [ebx], 0x0
	pop ebx
	pop esi
	pop ebp
	ret
Com_StripExtension_10:
	mov ecx, esi
	xor eax, eax
	jmp Com_StripExtension_40
Com_StripExtension_70:
	cmp dl, 0x2f
	jz Com_StripExtension_50
	cmp dl, 0x5c
	jz Com_StripExtension_50
Com_StripExtension_90:
	add ecx, 0x1
	movzx edx, byte [ecx]
	test dl, dl
	jz Com_StripExtension_60
Com_StripExtension_40:
	cmp dl, 0x2e
	jnz Com_StripExtension_70
	mov eax, ecx
	add ecx, 0x1
	movzx edx, byte [ecx]
	test dl, dl
	jnz Com_StripExtension_40
Com_StripExtension_60:
	test eax, eax
	jz Com_StripExtension_80
	mov ecx, eax
	jmp Com_StripExtension_80
Com_StripExtension_50:
	xor eax, eax
	jmp Com_StripExtension_90
	nop


;Info_RemoveKey_Big(char*, char const*)
Info_RemoveKey_Big:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x401c
	mov ebx, [ebp+0x8]
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	sub ecx, 0x1
	cmp ecx, 0x1fff
	ja Info_RemoveKey_Big_10
Info_RemoveKey_Big_120:
	mov dword [esp+0x4], 0x5c
	mov eax, [ebp+0xc]
	mov [esp], eax
	call strchr
	test eax, eax
	jz Info_RemoveKey_Big_20
Info_RemoveKey_Big_70:
	add esp, 0x401c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Info_RemoveKey_Big_80:
	lea edx, [ebx+0x1]
	movzx eax, byte [ebx+0x1]
	cmp al, 0x5c
	jnz Info_RemoveKey_Big_30
	lea esi, [ebp-0x2018]
	mov ecx, esi
Info_RemoveKey_Big_110:
	mov byte [ecx], 0x0
	lea edi, [edx+0x1]
	movzx eax, byte [edx+0x1]
	cmp al, 0x5c
	jz Info_RemoveKey_Big_40
	test al, al
	jnz Info_RemoveKey_Big_50
Info_RemoveKey_Big_40:
	lea edx, [ebp-0x4018]
Info_RemoveKey_Big_130:
	mov byte [edx], 0x0
	mov [esp+0x4], esi
	mov eax, [ebp+0xc]
	mov [esp], eax
	call strcmp
	test eax, eax
	jz Info_RemoveKey_Big_60
	cmp byte [edi], 0x0
	jz Info_RemoveKey_Big_70
	mov ebx, edi
Info_RemoveKey_Big_20:
	cmp byte [ebx], 0x5c
	jz Info_RemoveKey_Big_80
	movzx eax, byte [ebx]
	mov edx, ebx
Info_RemoveKey_Big_30:
	test al, al
	jz Info_RemoveKey_Big_70
	lea esi, [ebp-0x2018]
	mov ecx, esi
	jmp Info_RemoveKey_Big_90
Info_RemoveKey_Big_100:
	test al, al
	jz Info_RemoveKey_Big_70
Info_RemoveKey_Big_90:
	mov [ecx], al
	add ecx, 0x1
	add edx, 0x1
	movzx eax, byte [edx]
	cmp al, 0x5c
	jnz Info_RemoveKey_Big_100
	jmp Info_RemoveKey_Big_110
Info_RemoveKey_Big_10:
	mov dword [esp+0x4], _cstring_info_removekey_b
	mov dword [esp], 0x2
	call Com_Error
	jmp Info_RemoveKey_Big_120
Info_RemoveKey_Big_50:
	lea edx, [ebp-0x4018]
Info_RemoveKey_Big_140:
	mov [edx], al
	add edx, 0x1
	add edi, 0x1
	movzx eax, byte [edi]
	cmp al, 0x5c
	jz Info_RemoveKey_Big_130
	test al, al
	jnz Info_RemoveKey_Big_140
	jmp Info_RemoveKey_Big_130
Info_RemoveKey_Big_60:
	mov [esp+0x4], edi
	mov [esp], ebx
	call strcpy
	jmp Info_RemoveKey_Big_70


;Info_SetValueForKey(char*, char const*, char const*)
Info_SetValueForKey:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x83c
	mov esi, [ebp+0xc]
	mov ebx, [ebp+0x10]
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp+0x8]
	repne scasb
	not ecx
	sub ecx, 0x1
	cmp ecx, 0x3ff
	ja Info_SetValueForKey_10
	xor ecx, ecx
	mov edx, 0x1
	jmp Info_SetValueForKey_20
Info_SetValueForKey_50:
	cmp al, 0x5c
	jz Info_SetValueForKey_30
	cmp al, 0x3b
	jz Info_SetValueForKey_30
	cmp al, 0x22
	jz Info_SetValueForKey_30
	mov [ebp+ecx-0x818], al
	add ecx, 0x1
Info_SetValueForKey_30:
	add edx, 0x1
	cmp edx, 0x400
	jz Info_SetValueForKey_40
Info_SetValueForKey_20:
	movzx eax, byte [ebx+edx-0x1]
	test al, al
	jnz Info_SetValueForKey_50
Info_SetValueForKey_40:
	mov byte [ebp+ecx-0x818], 0x0
	mov dword [esp+0x4], 0x5c
	mov [esp], esi
	call strchr
	test eax, eax
	jz Info_SetValueForKey_60
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_cant_use_keys_wi
	mov dword [esp], 0x10
	call Com_Printf
Info_SetValueForKey_90:
	add esp, 0x83c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Info_SetValueForKey_10:
	mov dword [esp+0x4], _cstring_info_setvaluefor
	mov dword [esp], 0x10
	call Com_Printf
	add esp, 0x83c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Info_SetValueForKey_60:
	mov dword [esp+0x4], 0x3b
	mov [esp], esi
	call strchr
	test eax, eax
	jz Info_SetValueForKey_70
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_cant_use_keys_wi1
	mov dword [esp], 0x10
	call Com_Printf
	add esp, 0x83c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Info_SetValueForKey_70:
	mov dword [esp+0x4], 0x22
	mov [esp], esi
	call strchr
	test eax, eax
	jz Info_SetValueForKey_80
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_cant_use_keys_wi2
	mov dword [esp], 0x10
	call Com_Printf
	jmp Info_SetValueForKey_90
Info_SetValueForKey_80:
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Info_RemoveKey
	cmp byte [ebp-0x818], 0x0
	jz Info_SetValueForKey_90
	lea eax, [ebp-0x818]
	mov [esp+0x10], eax
	mov [esp+0xc], esi
	mov dword [esp+0x8], _cstring_ss
	mov dword [esp+0x4], 0x400
	lea ecx, [ebp-0x418]
	mov [esp], ecx
	call Com_sprintf
	test eax, eax
	jle Info_SetValueForKey_100
	xor edx, edx
	cld
	mov ecx, 0xffffffff
	lea edi, [ebp-0x418]
	mov eax, edx
	repne scasb
	not ecx
	mov [ebp-0x81c], ecx
	mov ecx, 0xffffffff
	mov edi, [ebp+0x8]
	repne scasb
	not ecx
	mov eax, [ebp-0x81c]
	lea ecx, [ecx+eax-0x2]
	cmp ecx, 0x400
	jbe Info_SetValueForKey_110
	mov ecx, [ebp+0x8]
	mov [esp+0x10], ecx
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_info_string_leng
	mov dword [esp], 0x10
	call Com_Printf
	jmp Info_SetValueForKey_90
Info_SetValueForKey_110:
	lea eax, [ebp-0x418]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call strcat
	jmp Info_SetValueForKey_90
Info_SetValueForKey_100:
	mov dword [esp+0x4], _cstring_info_buffer_leng
	mov dword [esp], 0x10
	call Com_Printf
	jmp Info_SetValueForKey_90


;Com_AssembleFilepath(char const*, char const*, char const*, char*, int)
Com_AssembleFilepath:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edx, 0xffffffff
	xor eax, eax
	cld
	mov ecx, edx
	mov edi, [ebp+0x8]
	repne scasb
	not ecx
	lea ebx, [ecx-0x1]
	mov ecx, edx
	mov edi, [ebp+0xc]
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [ebp-0x1c], ecx
	mov ecx, edx
	mov edi, [ebp+0x10]
	repne scasb
	mov esi, ecx
	not esi
	mov edx, [ebp-0x1c]
	lea eax, [ebx+edx]
	lea eax, [esi+eax-0x1]
	cmp eax, [ebp+0x18]
	jl Com_AssembleFilepath_10
	mov eax, [ebp+0x18]
	sub eax, 0x1
	mov [esp+0x14], eax
	mov ecx, [ebp+0x10]
	mov [esp+0x10], ecx
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	mov edx, [ebp+0x8]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_filepath_sss_is_
	mov dword [esp], 0x2
	call Com_Error
Com_AssembleFilepath_10:
	mov [esp+0x8], ebx
	mov ecx, [ebp+0x8]
	mov [esp+0x4], ecx
	mov eax, [ebp+0x14]
	mov [esp], eax
	call memcpy
	add ebx, [ebp+0x14]
	mov edx, [ebp-0x1c]
	mov [esp+0x8], edx
	mov ecx, [ebp+0xc]
	mov [esp+0x4], ecx
	mov [esp], ebx
	call memcpy
	add ebx, [ebp-0x1c]
	mov [esp+0x8], esi
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov [esp], ebx
	call memcpy
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Com_DefaultExtension(char*, int, char const*)
Com_DefaultExtension:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov esi, [ebp+0x8]
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	not ecx
	lea ecx, [ecx+esi-0x1]
	lea ebx, [ecx-0x1]
	movzx eax, byte [ecx-0x1]
	cmp al, 0x2f
	jz Com_DefaultExtension_10
	cmp esi, ebx
	jz Com_DefaultExtension_10
	cmp al, 0x2e
	jz Com_DefaultExtension_20
	mov edx, ebx
Com_DefaultExtension_30:
	movzx ecx, byte [edx-0x1]
	cmp cl, 0x2f
	jz Com_DefaultExtension_10
	lea eax, [esi+0x1]
	cmp edx, eax
	jz Com_DefaultExtension_10
	sub edx, 0x1
	cmp cl, 0x2e
	jnz Com_DefaultExtension_30
Com_DefaultExtension_20:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_DefaultExtension_10:
	mov dword [esp+0x8], 0x3f
	mov [esp+0x4], esi
	lea ebx, [ebp-0x58]
	mov [esp], ebx
	call strncpy
	mov byte [ebp-0x19], 0x0
	mov eax, [ebp+0x10]
	mov [esp+0x10], eax
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_ss1
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], esi
	call Com_sprintf
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Com_IsLegacyXModelName(char const*)
Com_IsLegacyXModelName:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov esi, [ebp+0x8]
	mov edi, _cstring_xmodel
Com_IsLegacyXModelName_40:
	movzx ecx, byte [esi]
	movzx ebx, byte [edi]
	add esi, 0x1
	add edi, 0x1
	cmp edi, _cstring_null
	jz Com_IsLegacyXModelName_10
	cmp ecx, ebx
	jz Com_IsLegacyXModelName_20
	lea eax, [ecx-0x41]
	cmp eax, 0x19
	setbe al
	lea edx, [ecx+0x20]
	test al, al
	cmovnz ecx, edx
	lea eax, [ebx-0x41]
	cmp eax, 0x19
	setbe al
	lea edx, [ebx+0x20]
	test al, al
	cmovnz ebx, edx
	cmp ecx, ebx
	jnz Com_IsLegacyXModelName_30
Com_IsLegacyXModelName_20:
	test ecx, ecx
	jnz Com_IsLegacyXModelName_40
Com_IsLegacyXModelName_10:
	mov eax, [ebp+0x8]
	cmp byte [eax+0x6], 0x2f
	jz Com_IsLegacyXModelName_50
Com_IsLegacyXModelName_30:
	xor eax, eax
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_IsLegacyXModelName_50:
	mov eax, 0x1
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Info_SetValueForKey_Big(char*, char const*, char const*)
Info_SetValueForKey_Big:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x403c
	mov esi, [ebp+0xc]
	mov ebx, [ebp+0x10]
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp+0x8]
	repne scasb
	not ecx
	sub ecx, 0x1
	cmp ecx, 0x1fff
	ja Info_SetValueForKey_Big_10
	xor ecx, ecx
	mov edx, 0x1
	jmp Info_SetValueForKey_Big_20
Info_SetValueForKey_Big_50:
	cmp al, 0x5c
	jz Info_SetValueForKey_Big_30
	cmp al, 0x3b
	jz Info_SetValueForKey_Big_30
	cmp al, 0x22
	jz Info_SetValueForKey_Big_30
	mov [ebp+ecx-0x4018], al
	add ecx, 0x1
Info_SetValueForKey_Big_30:
	add edx, 0x1
	cmp edx, 0x2000
	jz Info_SetValueForKey_Big_40
Info_SetValueForKey_Big_20:
	movzx eax, byte [ebx+edx-0x1]
	test al, al
	jnz Info_SetValueForKey_Big_50
Info_SetValueForKey_Big_40:
	mov byte [ebp+ecx-0x4018], 0x0
	mov dword [esp+0x4], 0x5c
	mov [esp], esi
	call strchr
	test eax, eax
	jz Info_SetValueForKey_Big_60
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_cant_use_keys_wi
	mov dword [esp], 0x10
	call Com_Printf
Info_SetValueForKey_Big_90:
	add esp, 0x403c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Info_SetValueForKey_Big_10:
	mov dword [esp+0x4], _cstring_info_setvaluefor
	mov dword [esp], 0x10
	call Com_Printf
	add esp, 0x403c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Info_SetValueForKey_Big_60:
	mov dword [esp+0x4], 0x3b
	mov [esp], esi
	call strchr
	test eax, eax
	jz Info_SetValueForKey_Big_70
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_cant_use_keys_wi1
	mov dword [esp], 0x10
	call Com_Printf
	add esp, 0x403c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Info_SetValueForKey_Big_70:
	mov dword [esp+0x4], 0x22
	mov [esp], esi
	call strchr
	test eax, eax
	jz Info_SetValueForKey_Big_80
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_cant_use_keys_wi2
	mov dword [esp], 0x10
	call Com_Printf
	jmp Info_SetValueForKey_Big_90
Info_SetValueForKey_Big_80:
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Info_RemoveKey_Big
	cmp byte [ebp-0x4018], 0x0
	jz Info_SetValueForKey_Big_90
	lea eax, [ebp-0x4018]
	mov [esp+0x10], eax
	mov [esp+0xc], esi
	mov dword [esp+0x8], _cstring_ss
	mov dword [esp+0x4], 0x2000
	lea ecx, [ebp-0x2018]
	mov [esp], ecx
	call Com_sprintf
	test eax, eax
	jle Info_SetValueForKey_Big_100
	xor edx, edx
	cld
	mov ecx, 0xffffffff
	lea edi, [ebp-0x2018]
	mov eax, edx
	repne scasb
	not ecx
	mov [ebp-0x401c], ecx
	mov ecx, 0xffffffff
	mov edi, [ebp+0x8]
	repne scasb
	not ecx
	mov eax, [ebp-0x401c]
	lea ecx, [ecx+eax-0x2]
	cmp ecx, 0x2000
	jbe Info_SetValueForKey_Big_110
	mov ecx, [ebp+0x8]
	mov [esp+0x10], ecx
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_big_info_string_
	mov dword [esp], 0x10
	call Com_Printf
	jmp Info_SetValueForKey_Big_90
Info_SetValueForKey_Big_110:
	lea eax, [ebp-0x2018]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call strcat
	jmp Info_SetValueForKey_Big_90
Info_SetValueForKey_Big_100:
	mov dword [esp+0x4], _cstring_info_buffer_leng
	mov dword [esp], 0x10
	call Com_Printf
	jmp Info_SetValueForKey_Big_90


;Com_GetFilenameSubString(char const*)
Com_GetFilenameSubString:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	movzx edx, byte [eax]
	test dl, dl
	jz Com_GetFilenameSubString_10
	mov ecx, eax
	jmp Com_GetFilenameSubString_20
Com_GetFilenameSubString_50:
	cmp dl, 0x5c
	jz Com_GetFilenameSubString_30
	add eax, 0x1
	movzx edx, byte [eax]
	test dl, dl
	jz Com_GetFilenameSubString_40
Com_GetFilenameSubString_20:
	cmp dl, 0x2f
	jnz Com_GetFilenameSubString_50
Com_GetFilenameSubString_30:
	lea ecx, [eax+0x1]
	mov eax, ecx
	movzx edx, byte [eax]
	test dl, dl
	jnz Com_GetFilenameSubString_20
Com_GetFilenameSubString_40:
	mov eax, ecx
	pop ebp
	ret
Com_GetFilenameSubString_10:
	mov ecx, eax
	mov eax, ecx
	pop ebp
	ret
	nop


;Com_GetExtensionSubString(char const*)
Com_GetExtensionSubString:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	movzx edx, byte [eax]
	test dl, dl
	jz Com_GetExtensionSubString_10
	xor ecx, ecx
	jmp Com_GetExtensionSubString_20
Com_GetExtensionSubString_50:
	cmp dl, 0x2f
	jz Com_GetExtensionSubString_30
	cmp dl, 0x5c
	jz Com_GetExtensionSubString_30
Com_GetExtensionSubString_60:
	add eax, 0x1
	movzx edx, byte [eax]
	test dl, dl
	jz Com_GetExtensionSubString_40
Com_GetExtensionSubString_20:
	cmp dl, 0x2e
	jnz Com_GetExtensionSubString_50
	mov ecx, eax
	add eax, 0x1
	movzx edx, byte [eax]
	test dl, dl
	jnz Com_GetExtensionSubString_20
Com_GetExtensionSubString_40:
	test ecx, ecx
	jz Com_GetExtensionSubString_10
	mov eax, ecx
	pop ebp
	ret
Com_GetExtensionSubString_30:
	xor ecx, ecx
	jmp Com_GetExtensionSubString_60
Com_GetExtensionSubString_10:
	mov ecx, eax
	mov eax, ecx
	pop ebp
	ret


;ParseConfigStringToStruct(unsigned char*, cspField_t const*, int, char const*, int, int (*)(unsigned char*, char const*, int), void (*)(unsigned char*, char const*))
ParseConfigStringToStruct:
	push ebp
	mov ebp, esp
	pop ebp
	jmp ParseConfigStringToStruct
	nop


;va(char const*, ...)
va:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	lea eax, [ebp+0xc]
	mov [ebp-0xc], eax
	mov dword [esp], 0x1
	call Sys_GetValue
	mov ecx, eax
	mov eax, [eax+0x800]
	mov edx, eax
	shl edx, 0xa
	lea ebx, [ecx+edx]
	add eax, 0x1
	and eax, 0x80000001
	js va_10
va_30:
	mov [ecx+0x800], eax
	mov eax, [ebp-0xc]
	mov [esp+0xc], eax
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x400
	mov [esp], ebx
	call vsnprintf
	mov byte [ebx+0x3ff], 0x0
	cmp eax, 0x3ff
	jbe va_20
	mov dword [esp+0x4], _cstring_attempted_to_ove
	mov dword [esp], 0x2
	call Com_Error
va_20:
	mov eax, ebx
	add esp, 0x24
	pop ebx
	pop ebp
	ret
va_10:
	sub eax, 0x1
	or eax, 0xfffffffe
	add eax, 0x1
	jmp va_30


;ParseConfigStringToStructCustomSize(unsigned char*, cspField_t const*, int, char const*, int, int (*)(unsigned char*, char const*, int), void (*)(unsigned char*, char const*))
ParseConfigStringToStruct:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x203c
	cmp dword [ebp+0x10], 0x0
	jg ParseConfigStringToStruct_10
	jz ParseConfigStringToStruct_20
ParseConfigStringToStruct_60:
	xor eax, eax
	add esp, 0x203c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ParseConfigStringToStruct_80:
	mov ecx, [ebp+0x18]
	test ecx, ecx
	jle ParseConfigStringToStruct_30
	cmp eax, [ebp+0x18]
	jl ParseConfigStringToStruct_40
ParseConfigStringToStruct_30:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_bad_field_type_i
	mov dword [esp], 0x2
	call Com_Error
ParseConfigStringToStruct_70:
	add edi, 0x1
	add esi, 0xc
	cmp [ebp+0x10], edi
	jnz ParseConfigStringToStruct_50
ParseConfigStringToStruct_90:
	cmp byte [ebp-0x2019], 0x0
	jnz ParseConfigStringToStruct_60
ParseConfigStringToStruct_20:
	mov eax, 0x1
	add esp, 0x203c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ParseConfigStringToStruct_10:
	mov esi, [ebp+0xc]
	xor edi, edi
	mov byte [ebp-0x2019], 0x0
ParseConfigStringToStruct_50:
	mov eax, [esi]
	mov [esp+0x4], eax
	mov eax, [ebp+0x14]
	mov [esp], eax
	call Info_ValueForKey
	mov edx, eax
	cmp byte [eax], 0x0
	jz ParseConfigStringToStruct_70
	mov eax, [esi+0x8]
	cmp eax, 0xb
	jg ParseConfigStringToStruct_80
	ja ParseConfigStringToStruct_70
	jmp dword [eax*4+ParseConfigStringToStruct_jumptab_0]
ParseConfigStringToStruct_40:
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call dword [ebp+0x1c]
	test eax, eax
	jz ParseConfigStringToStruct_60
	add edi, 0x1
	add esi, 0xc
	cmp [ebp+0x10], edi
	jnz ParseConfigStringToStruct_50
	jmp ParseConfigStringToStruct_90
ParseConfigStringToStruct_100:
	mov [esp+0x4], edx
	mov eax, [ebp+0x8]
	add eax, [esi+0x4]
	mov [esp], eax
	call dword [ebp+0x20]
	jmp ParseConfigStringToStruct_70
ParseConfigStringToStruct_210:
	mov ebx, [ebp+0x8]
	add ebx, [esi+0x4]
	mov [esp], edx
	call Com_FindSoundAlias
	mov [ebx], eax
	jmp ParseConfigStringToStruct_70
ParseConfigStringToStruct_200:
	mov eax, com_dedicated
	mov eax, [eax]
	mov ebx, [eax+0xc]
	test ebx, ebx
	jnz ParseConfigStringToStruct_70
	mov ebx, [ebp+0x8]
	add ebx, [esi+0x4]
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call Material_RegisterHandle
	mov [ebx], eax
	jmp ParseConfigStringToStruct_70
ParseConfigStringToStruct_190:
	mov dword [esp+0x8], 0x1fff
	mov [esp+0x4], edx
	lea ebx, [ebp-0x2018]
	mov [esp], ebx
	call strncpy
	mov byte [ebp-0x19], 0x0
	mov [esp], ebx
	call R_RegisterModel
	mov edx, [esi+0x4]
	mov ecx, [ebp+0x8]
	mov [ecx+edx], eax
	test eax, eax
	jnz ParseConfigStringToStruct_70
	mov byte [ebp-0x2019], 0x1
	jmp ParseConfigStringToStruct_70
ParseConfigStringToStruct_180:
	mov eax, com_dedicated
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jnz ParseConfigStringToStruct_70
	mov ebx, [ebp+0x8]
	add ebx, [esi+0x4]
	mov [esp], edx
	call FX_Register
	mov [ebx], eax
	jmp ParseConfigStringToStruct_70
ParseConfigStringToStruct_170:
	mov ebx, [ebp+0x8]
	add ebx, [esi+0x4]
	mov [esp], edx
	call atof
	fstp qword [ebp-0x2028]
	cvtsd2ss xmm0, [ebp-0x2028]
	mulss xmm0, [_float_1000_00000000]
	cvttss2si eax, xmm0
	mov [ebx], eax
	jmp ParseConfigStringToStruct_70
ParseConfigStringToStruct_160:
	mov ebx, [ebp+0x8]
	add ebx, [esi+0x4]
	mov [esp], edx
	call atof
	fstp qword [ebp-0x2030]
	cvtsd2ss xmm0, [ebp-0x2030]
	movss [ebx], xmm0
	jmp ParseConfigStringToStruct_70
ParseConfigStringToStruct_150:
	mov ebx, [ebp+0x8]
	add ebx, [esi+0x4]
	mov [esp], edx
	call atoi
	test eax, eax
	setnz al
	movzx eax, al
	mov [ebx], eax
	jmp ParseConfigStringToStruct_70
ParseConfigStringToStruct_140:
	mov ebx, [ebp+0x8]
	add ebx, [esi+0x4]
	mov [esp], edx
	call atoi
	mov [ebx], eax
	jmp ParseConfigStringToStruct_70
ParseConfigStringToStruct_130:
	mov ebx, [ebp+0x8]
	add ebx, [esi+0x4]
	mov dword [esp+0x8], 0xff
	mov [esp+0x4], edx
	mov [esp], ebx
	call strncpy
	mov byte [ebx+0xff], 0x0
	jmp ParseConfigStringToStruct_70
ParseConfigStringToStruct_120:
	mov ebx, [ebp+0x8]
	add ebx, [esi+0x4]
	mov dword [esp+0x8], 0x3f
	mov [esp+0x4], edx
	mov [esp], ebx
	call strncpy
	mov byte [ebx+0x3f], 0x0
	jmp ParseConfigStringToStruct_70
ParseConfigStringToStruct_110:
	mov ebx, [ebp+0x8]
	add ebx, [esi+0x4]
	mov dword [esp+0x8], 0x3ff
	mov [esp+0x4], edx
	mov [esp], ebx
	call strncpy
	mov byte [ebx+0x3ff], 0x0
	jmp ParseConfigStringToStruct_70
	
	
ParseConfigStringToStruct_jumptab_0:
	dd ParseConfigStringToStruct_100
	dd ParseConfigStringToStruct_110
	dd ParseConfigStringToStruct_120
	dd ParseConfigStringToStruct_130
	dd ParseConfigStringToStruct_140
	dd ParseConfigStringToStruct_150
	dd ParseConfigStringToStruct_160
	dd ParseConfigStringToStruct_170
	dd ParseConfigStringToStruct_180
	dd ParseConfigStringToStruct_190
	dd ParseConfigStringToStruct_200
	dd ParseConfigStringToStruct_210


;BigShort(short)
BigShort:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	movsx eax, word [ebp+0x8]
	mov [esp], eax
	call dword [_BigShort]
	cwde
	leave
	ret


;I_iscsym(int)
I_iscsym:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	lea eax, [edx-0x61]
	cmp eax, 0x19
	jbe I_iscsym_10
	lea eax, [edx-0x41]
	cmp eax, 0x19
	jbe I_iscsym_10
	lea eax, [edx-0x30]
	cmp eax, 0x9
	jbe I_iscsym_10
	cmp edx, 0x5f
	jz I_iscsym_10
	xor eax, eax
	pop ebp
	ret
I_iscsym_10:
	mov eax, 0x1
	pop ebp
	ret


;I_strcmp(char const*, char const*)
strcmp:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov edx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov esi, 0x7fffffff
strcmp_30:
	movzx ecx, byte [edx]
	movsx edi, cl
	add edx, 0x1
	movsx ebx, byte [eax]
	add eax, 0x1
	sub esi, 0x1
	cmp esi, 0xffffffff
	jz strcmp_10
	cmp edi, ebx
	jnz strcmp_20
	test cl, cl
	jnz strcmp_30
strcmp_10:
	xor eax, eax
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
strcmp_20:
	xor eax, eax
	cmp ebx, edi
	setle al
	lea eax, [eax+eax-0x1]
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;I_strlwr(char*)
Q_strlwr:
	push ebp
	mov ebp, esp
	push ebx
	mov ebx, [ebp+0x8]
	movzx edx, byte [ebx]
	test dl, dl
	jz Q_strlwr_10
	mov ecx, ebx
Q_strlwr_30:
	movsx eax, dl
	sub eax, 0x41
	cmp eax, 0x19
	ja Q_strlwr_20
	lea eax, [edx+0x20]
	mov [ecx], al
Q_strlwr_20:
	movzx edx, byte [ecx+0x1]
	add ecx, 0x1
	test dl, dl
	jnz Q_strlwr_30
Q_strlwr_10:
	mov eax, ebx
	pop ebx
	pop ebp
	ret


;I_strupr(char*)
I_strupr:
	push ebp
	mov ebp, esp
	push ebx
	mov ebx, [ebp+0x8]
	movzx edx, byte [ebx]
	test dl, dl
	jz I_strupr_10
	mov ecx, ebx
I_strupr_30:
	movsx eax, dl
	sub eax, 0x61
	cmp eax, 0x19
	ja I_strupr_20
	lea eax, [edx-0x20]
	mov [ecx], al
I_strupr_20:
	movzx edx, byte [ecx+0x1]
	add ecx, 0x1
	test dl, dl
	jnz I_strupr_30
I_strupr_10:
	mov eax, ebx
	pop ebx
	pop ebp
	ret


;LongSwap(int)
LongSwap:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, ecx
	shl eax, 0x18
	movzx edx, ch
	shl edx, 0x10
	add eax, edx
	shr ecx, 0x8
	mov edx, ecx
	and edx, 0xff00
	add eax, edx
	shr ecx, 0x10
	add eax, ecx
	pop ebp
	ret
	nop


;I_isdigit(int)
I_isdigit:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	sub eax, 0x30
	cmp eax, 0x9
	setbe al
	movzx eax, al
	pop ebp
	ret


;I_islower(int)
I_islower:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	sub eax, 0x61
	cmp eax, 0x19
	setbe al
	movzx eax, al
	pop ebp
	ret
	add [eax], al


;I_stricmp(char const*, char const*)
Q_stricmp:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4
	mov edi, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov dword [ebp-0x10], 0x7fffffff
Q_stricmp_40:
	movzx ecx, byte [edi]
	movzx ebx, byte [esi]
	add edi, 0x1
	add esi, 0x1
	sub dword [ebp-0x10], 0x1
	cmp dword [ebp-0x10], 0xffffffff
	jz Q_stricmp_10
	cmp ecx, ebx
	jz Q_stricmp_20
	lea eax, [ecx-0x41]
	cmp eax, 0x19
	setbe al
	lea edx, [ecx+0x20]
	test al, al
	cmovnz ecx, edx
	lea eax, [ebx-0x41]
	cmp eax, 0x19
	setbe al
	lea edx, [ebx+0x20]
	test al, al
	cmovnz ebx, edx
	cmp ecx, ebx
	jnz Q_stricmp_30
Q_stricmp_20:
	test ecx, ecx
	jnz Q_stricmp_40
Q_stricmp_10:
	xor eax, eax
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Q_stricmp_30:
	xor eax, eax
	cmp ebx, ecx
	setle al
	lea eax, [eax+eax-0x1]
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;I_stristr(char const*, char const*)
I_stristr:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x8]
	cmp byte [eax], 0x0
	jz I_stristr_10
	mov [ebp-0x1c], eax
	mov dword [ebp-0x24], 0x0
	xor edx, edx
	mov edi, eax
I_stristr_40:
	mov dword [ebp-0x20], 0xffffffff
	add edx, [ebp+0x8]
	mov [ebp-0x28], edx
I_stristr_30:
	mov esi, [ebp+0xc]
	add esi, [ebp-0x20]
	cmp byte [esi+0x1], 0x0
	jz I_stristr_20
	movsx eax, byte [edi]
	mov [esp], eax
	call tolower
	mov ebx, eax
	movsx eax, byte [esi+0x1]
	mov [esp], eax
	call tolower
	add dword [ebp-0x20], 0x1
	add edi, 0x1
	cmp ebx, eax
	jz I_stristr_30
	add dword [ebp-0x24], 0x1
	mov edx, [ebp-0x24]
	mov ecx, [ebp-0x1c]
	movzx eax, byte [ecx+0x1]
	add ecx, 0x1
	mov [ebp-0x1c], ecx
	test al, al
	jz I_stristr_10
	mov edi, ecx
	jmp I_stristr_40
I_stristr_10:
	xor eax, eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
I_stristr_20:
	mov eax, [ebp-0x28]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;I_strncat(char*, int, char const*)
Q_strncat:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0xc]
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp+0x8]
	repne scasb
	not ecx
	lea ebx, [ecx-0x1]
	cmp ebx, esi
	jl Q_strncat_10
	mov dword [esp+0x4], _cstring_i_strncat_alread
	mov dword [esp], 0x1
	call Com_Error
Q_strncat_10:
	sub esi, ebx
	add ebx, [ebp+0x8]
	lea eax, [esi-0x1]
	mov [esp+0x8], eax
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov [esp], ebx
	call strncpy
	mov byte [ebx+esi-0x1], 0x0
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;I_strncmp(char const*, char const*, int)
Q_strncmp:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov edx, [ebp+0x8]
	mov eax, [ebp+0xc]
	xor edi, edi
Q_strncmp_30:
	movzx ebx, byte [edx]
	movsx esi, bl
	add edx, 0x1
	movsx ecx, byte [eax]
	add eax, 0x1
	cmp edi, [ebp+0x10]
	jz Q_strncmp_10
	cmp esi, ecx
	jnz Q_strncmp_20
	add edi, 0x1
	test bl, bl
	jnz Q_strncmp_30
Q_strncmp_10:
	xor eax, eax
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Q_strncmp_20:
	xor eax, eax
	cmp ecx, esi
	setle al
	lea eax, [eax+eax-0x1]
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;ShortSwap(short)
ShortSwap:
	push ebp
	mov ebp, esp
	movzx eax, word [ebp+0x8]
	rol ax, 0x8
	cwde
	pop ebp
	ret


;Swap_Init()
Swap_Init:
	push ebp
	mov ebp, esp
	sub esp, 0x10
	mov byte [ebp-0x2], 0x1
	mov byte [ebp-0x1], 0x0
	cmp word [ebp-0x2], 0x1
	jz Swap_Init_10
	mov dword [_BigShort], 0x1df12a
	mov dword [_LittleShort], 0x1df11c
	mov dword [_BigLong], 0x1df15c
	mov dword [_LittleLong], 0x1df134
	mov dword [_LittleLong64], 0x1df164
	mov dword [_LittleFloatRead], 0x1df284
	mov dword [_LittleFloatWrite], 0x1df2ce
	leave
	ret
Swap_Init_10:
	mov dword [_BigShort], 0x1df11c
	mov dword [_LittleShort], 0x1df12a
	mov dword [_BigLong], 0x1df134
	mov dword [_LittleLong], 0x1df15c
	mov dword [_LittleLong64], 0x1df278
	mov dword [_LittleFloatRead], 0x1df2bc
	mov dword [_LittleFloatWrite], 0x1df2fe
	leave
	ret
	nop


;Initialized global or static variables of q_shared:
SECTION .data


;Initialized constant data of q_shared:
SECTION .rdata
colorWhite: dd 0x3f800000, 0x3f800000, 0x3f800000, 0x3f800000, 0x0, 0x0, 0x0, 0x0
colorYellow: dd 0x3f800000, 0x3f800000, 0x0, 0x3f800000, 0x0, 0x0, 0x0, 0x0
colorGreenFaded: dd 0x0, 0x3f800000, 0x0, 0x3f400000
colorRed: dd 0x3f800000, 0x0, 0x0, 0x3f800000
colorWhiteFaded: dd 0x3f800000, 0x3f800000, 0x3f800000, 0x3f400000, 0x0, 0x0, 0x0, 0x0
colorGreen: dd 0x0, 0x3f800000, 0x0, 0x3f800000
colorBlue: dd 0x0, 0x0, 0x3f800000, 0x3f800000
colorBlack: dd 0x0, 0x0, 0x0, 0x3f800000, 0x7fffffff, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x1e065e, 0x1e07f0, 0x1e07cd, 0x1e07a7, 0x1e0792, 0x1e0775, 0x1e0750, 0x1e0721, 0x1e06fa, 0x1e06b7, 0x1e0688, 0x1e0673, 0x0, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
colorLtGrey: dd 0x3f400000, 0x3f400000, 0x3f400000, 0x3f800000
colorOrange: dd 0x3f800000, 0x3f333333, 0x0, 0x3f800000, 0x0, 0x0, 0x0, 0x0
colorRedFaded: dd 0x3f400000, 0x3e800000, 0x0, 0x3f400000
colorMagenta: dd 0x3f800000, 0x0, 0x3f800000, 0x3f800000, 0x0, 0x0, 0x0, 0x0
colorMdGrey: dd 0x3f000000, 0x3f000000, 0x3f000000, 0x3f800000
colorCyan: dd 0x0, 0x3f800000, 0x3f800000, 0x3f800000
colorLtCyan: dd 0x0, 0x3f400000, 0x3f400000, 0x3f800000
colorLtGreen: dd 0x0, 0x3f333333, 0x0, 0x3f800000
colorLtYellow: dd 0x3f400000, 0x3f400000, 0x0, 0x3f800000
colorMdCyan: dd 0x0, 0x3f000000, 0x3f000000, 0x3f800000


;Zero initialized global or static variables of q_shared:
SECTION .bss
value1: resb 0x8000
g_com_error: resb 0xa0
va_info: resb 0x1008
_LittleFloatWrite: resb 0x4
_LittleFloatRead: resb 0x4
_LittleLong64: resb 0x4
_LittleLong: resb 0x4
_BigLong: resb 0x4
_LittleShort: resb 0x4
_BigShort: resb 0x4
_ZZ16Info_ValueForKeyPKcS0_E10valueindex: resb 0x3c
g_traceThreadInfo: resb 0x60


;All cstrings:
SECTION .rdata
_cstring_info_removekey_o:		db 015h,"Info_RemoveKey: oversize infostring",0
_cstring_info_valueforkey:		db 015h,"Info_ValueForKey: oversize key %d",0
_cstring_null:		db 0
_cstring_info_removekey_b:		db 015h,"Info_RemoveKey_Big: oversize infostring",0
_cstring_cant_use_keys_wi:		db 015h,"Can",27h,"t use keys with a ",5ch,0ah,"key: ",27h,"%s",27h,0ah,"value: ",27h,"%s",27h,0
_cstring_info_setvaluefor:		db 015h,"Info_SetValueForKey: oversize infostring",0
_cstring_cant_use_keys_wi1:		db 015h,"Can",27h,"t use keys with a semicolon",0ah,"key: ",27h,"%s",27h,0ah,"value: ",27h,"%s",27h,0
_cstring_cant_use_keys_wi2:		db 015h,"Can",27h,"t use keys with a ",22h,0ah,"key: ",27h,"%s",27h,0ah,"value: ",27h,"%s",27h,0
_cstring_ss:		db 5ch,"%s",5ch,"%s",0
_cstring_info_string_leng:		db 015h,"Info string length exceeded",0ah,"key: ",27h,"%s",27h,0ah,"value: ",27h,"%s",27h,0ah,"Info string:",0ah,"%s",0ah,0
_cstring_info_buffer_leng:		db 015h,"Info buffer length exceeded, not including key/value pair in response",0ah,0
_cstring_filepath_sss_is_:		db "filepath ",27h,"%s%s%s",27h," is longer than %i characters",0
_cstring_ss1:		db "%s%s",0
_cstring_xmodel:		db "xmodel",0
_cstring_big_info_string_:		db 015h,"Big info string length exceeded",0ah,"key: ",27h,"%s",27h,0ah,"value: ",27h,"%s",27h,0ah,"Info string:",0ah,"%s",0ah,0
_cstring_attempted_to_ove:		db 015h,"Attempted to overrun string in call to va()",0
_cstring_bad_field_type_i:		db 015h,"Bad field type %i",0ah,0
_cstring_i_strncat_alread:		db 015h,"I_strncat: already overflowed",0



;All constant floats and doubles:
SECTION .rdata
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; OWORD
_float_2_00000000:		dd 0x40000000	; 2
_float_1_00000000:		dd 0x3f800000	; 1
_float_1000_00000000:		dd 0x447a0000	; 1000

