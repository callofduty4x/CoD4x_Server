;Imports of q_shared:
	extern strncpy
	extern vsnprintf
	extern tolower
	extern strchr
	extern strcmp
	extern _Z9Com_Error11errorParm_tPKcz
	extern strcpy
	extern _Z16Sys_IsMainThreadv
	extern _Z12AngleVectorsPKfPfS1_S1_
	extern _Z12Sys_SetValueiPv
	extern _Z10Com_PrintfiPKcz
	extern strcat
	extern memcpy
	extern _Z12Sys_GetValuei
	extern _Z18Com_FindSoundAliasPKc
	extern com_dedicated
	extern _Z23Material_RegisterHandlePKci
	extern _Z15R_RegisterModelPKc
	extern _Z11FX_RegisterPKc
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
	global _Z10ColorIndexh
	global _Z10I_CleanStrPc
	global _Z10I_strncpyzPcPKci
	global _Z10I_strnicmpPKcS0_i
	global _Z10Long64Swapy
	global _Z10LongNoSwapi
	global _Z11Com_sprintfPciPKcz
	global _Z11I_CleanCharc
	global _Z11ShortNoSwaps
	global _Z12I_DrawStrlenPKc
	global _Z12Long64NoSwapy
	global _Z13FloatReadSwapi
	global _Z13I_stricmpwildPKcS0_
	global _Z13Info_NextPairPPKcPcS2_
	global _Z13Info_ValidatePKc
	global _Z14Com_sprintfPosPciPiPKcz
	global _Z14FloatWriteSwapf
	global _Z14Info_RemoveKeyPcPKc
	global _Z15FloatReadNoSwapi
	global _Z15GetLeanFractionf
	global _Z15I_isforfilenamei
	global _Z16FloatWriteNoSwapf
	global _Z16Info_ValueForKeyPKcS0_
	global _Z17AddLeanToPositionPfffff
	global _Z17UnGetLeanFractionf
	global _Z18Com_InitThreadDatai
	global _Z18Com_StripExtensionPKcPc
	global _Z18Info_RemoveKey_BigPcPKc
	global _Z19Info_SetValueForKeyPcPKcS1_
	global _Z20Com_AssembleFilepathPKcS0_S0_Pci
	global _Z20Com_DefaultExtensionPciPKc
	global _Z22Com_IsLegacyXModelNamePKc
	global _Z23Info_SetValueForKey_BigPcPKcS1_
	global _Z24Com_GetFilenameSubStringPKc
	global _Z25Com_GetExtensionSubStringPKc
	global _Z25ParseConfigStringToStructPhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E
	global _Z2vaPKcz
	global _Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E
	global _Z8BigShorts
	global _Z8I_iscsymi
	global _Z8I_strcmpPKcS0_
	global _Z8I_strlwrPc
	global _Z8I_struprPc
	global _Z8LongSwapi
	global _Z9I_isdigiti
	global _Z9I_isloweri
	global _Z9I_stricmpPKcS0_
	global _Z9I_stristrPKcS0_
	global _Z9I_strncatPciPKc
	global _Z9I_strncmpPKcS0_i
	global _Z9ShortSwaps
	global _Z9Swap_Initv
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
_Z10ColorIndexh:
	push ebp
	mov ebp, esp
	movzx eax, byte [ebp+0x8]
	sub al, 0x30
	cmp al, 0x9
	ja _Z10ColorIndexh_10
	movzx eax, al
	pop ebp
	ret
_Z10ColorIndexh_10:
	mov eax, 0x7
	pop ebp
	ret
	nop


;I_CleanStr(char*)
_Z10I_CleanStrPc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov edi, [ebp+0x8]
	movzx edx, byte [edi]
	test dl, dl
	jz _Z10I_CleanStrPc_10
	mov eax, edi
	mov esi, edi
	jmp _Z10I_CleanStrPc_20
_Z10I_CleanStrPc_50:
	lea ecx, [eax+0x1]
_Z10I_CleanStrPc_60:
	lea eax, [edx-0x20]
	cmp al, 0x5e
	ja _Z10I_CleanStrPc_30
	mov [esi], dl
	add esi, 0x1
_Z10I_CleanStrPc_30:
	movzx edx, byte [ecx]
	test dl, dl
	jz _Z10I_CleanStrPc_40
_Z10I_CleanStrPc_70:
	mov eax, ecx
_Z10I_CleanStrPc_20:
	cmp dl, 0x5e
	jnz _Z10I_CleanStrPc_50
	lea ecx, [eax+0x1]
	movzx ebx, byte [eax+0x1]
	test bl, bl
	jz _Z10I_CleanStrPc_60
	cmp bl, 0x5e
	jz _Z10I_CleanStrPc_60
	cmp bl, 0x2f
	jle _Z10I_CleanStrPc_60
	cmp bl, 0x39
	jg _Z10I_CleanStrPc_60
	lea ecx, [eax+0x2]
	movzx edx, byte [ecx]
	test dl, dl
	jnz _Z10I_CleanStrPc_70
_Z10I_CleanStrPc_40:
	mov byte [esi], 0x0
	mov eax, edi
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10I_CleanStrPc_10:
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
_Z10I_strncpyzPcPKci:
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
_Z10I_strnicmpPKcS0_i:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4
	mov edi, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov dword [ebp-0x10], 0x0
_Z10I_strnicmpPKcS0_i_40:
	movzx ecx, byte [edi]
	movzx ebx, byte [esi]
	add edi, 0x1
	add esi, 0x1
	mov eax, [ebp+0x10]
	cmp [ebp-0x10], eax
	jz _Z10I_strnicmpPKcS0_i_10
	cmp ecx, ebx
	jz _Z10I_strnicmpPKcS0_i_20
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
	jnz _Z10I_strnicmpPKcS0_i_30
_Z10I_strnicmpPKcS0_i_20:
	add dword [ebp-0x10], 0x1
	test ecx, ecx
	jnz _Z10I_strnicmpPKcS0_i_40
_Z10I_strnicmpPKcS0_i_10:
	xor eax, eax
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10I_strnicmpPKcS0_i_30:
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
_Z10Long64Swapy:
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
_Z10LongNoSwapi:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	pop ebp
	ret


;Com_sprintf(char*, int, char const*, ...)
_Z11Com_sprintfPciPKcz:
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
_Z11I_CleanCharc:
	push ebp
	mov ebp, esp
	movzx eax, byte [ebp+0x8]
	cmp al, 0x92
	jz _Z11I_CleanCharc_10
	movsx eax, al
	pop ebp
	ret
_Z11I_CleanCharc_10:
	mov eax, 0x27
	pop ebp
	ret
	nop


;ShortNoSwap(short)
_Z11ShortNoSwaps:
	push ebp
	mov ebp, esp
	movsx eax, word [ebp+0x8]
	pop ebp
	ret
	nop


;I_DrawStrlen(char const*)
_Z12I_DrawStrlenPKc:
	push ebp
	mov ebp, esp
	push ebx
	mov ecx, [ebp+0x8]
	xor ebx, ebx
_Z12I_DrawStrlenPKc_50:
	movzx edx, byte [ecx]
	test dl, dl
	jz _Z12I_DrawStrlenPKc_10
_Z12I_DrawStrlenPKc_30:
	cmp dl, 0x5e
	jz _Z12I_DrawStrlenPKc_20
	lea eax, [ecx+0x1]
_Z12I_DrawStrlenPKc_40:
	add ebx, 0x1
	mov ecx, eax
	movzx edx, byte [ecx]
	test dl, dl
	jnz _Z12I_DrawStrlenPKc_30
_Z12I_DrawStrlenPKc_10:
	mov eax, ebx
	pop ebx
	pop ebp
	ret
_Z12I_DrawStrlenPKc_20:
	lea eax, [ecx+0x1]
	movzx edx, byte [ecx+0x1]
	test dl, dl
	jz _Z12I_DrawStrlenPKc_40
	cmp dl, 0x5e
	jz _Z12I_DrawStrlenPKc_40
	cmp dl, 0x2f
	jle _Z12I_DrawStrlenPKc_40
	cmp dl, 0x39
	jg _Z12I_DrawStrlenPKc_40
	add ecx, 0x2
	jmp _Z12I_DrawStrlenPKc_50


;Long64NoSwap(unsigned long long)
_Z12Long64NoSwapy:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	pop ebp
	ret
	nop


;FloatReadSwap(int)
_Z13FloatReadSwapi:
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
_Z13I_stricmpwildPKcS0_:
_Z13I_stricmpwildPKcS0__310:
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
	jz _Z13I_stricmpwildPKcS0__10
_Z13I_stricmpwildPKcS0__50:
	mov edx, [ebp+0xc]
	movzx edi, byte [edx]
	add edx, 0x1
	mov [ebp+0xc], edx
	mov eax, esi
	mov edx, edi
	cmp al, dl
	jz _Z13I_stricmpwildPKcS0__20
	cmp al, 0x3f
	jz _Z13I_stricmpwildPKcS0__20
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
	jnz _Z13I_stricmpwildPKcS0__30
_Z13I_stricmpwildPKcS0__20:
	mov eax, esi
	test al, al
	jz _Z13I_stricmpwildPKcS0__40
_Z13I_stricmpwildPKcS0__60:
	mov edx, [ebp-0x30]
	movzx esi, byte [edx]
	lea eax, [edx+0x1]
	mov [ebp-0x4c], eax
	mov [ebp-0x30], eax
	mov eax, esi
	cmp al, 0x2a
	jnz _Z13I_stricmpwildPKcS0__50
_Z13I_stricmpwildPKcS0__10:
	cmp byte [edx+0x1], 0x0
	jz _Z13I_stricmpwildPKcS0__40
	mov eax, [ebp+0xc]
	cmp byte [eax], 0x0
	jz _Z13I_stricmpwildPKcS0__60
	add eax, 0x1
	mov [ebp-0x48], eax
	mov eax, [ebp-0x4c]
	jmp _Z13I_stricmpwildPKcS0__70
_Z13I_stricmpwildPKcS0__90:
	mov edx, [ebp-0x48]
	movzx edi, byte [edx]
	add edx, 0x1
	mov [ebp-0x48], edx
	mov eax, esi
	mov edx, edi
	cmp al, dl
	jz _Z13I_stricmpwildPKcS0__80
	cmp al, 0x3f
	jz _Z13I_stricmpwildPKcS0__80
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
	jnz _Z13I_stricmpwildPKcS0__60
_Z13I_stricmpwildPKcS0__80:
	mov eax, esi
	test al, al
	jz _Z13I_stricmpwildPKcS0__40
_Z13I_stricmpwildPKcS0__100:
	mov edx, [ebp-0x2c]
	movzx esi, byte [edx]
	lea eax, [edx+0x1]
	mov [ebp-0x4c], eax
_Z13I_stricmpwildPKcS0__70:
	mov [ebp-0x2c], eax
	mov eax, esi
	cmp al, 0x2a
	jnz _Z13I_stricmpwildPKcS0__90
	cmp byte [edx+0x1], 0x0
	jz _Z13I_stricmpwildPKcS0__40
	mov eax, [ebp-0x48]
	cmp byte [eax], 0x0
	jz _Z13I_stricmpwildPKcS0__100
	add eax, 0x1
	mov [ebp-0x44], eax
	mov eax, [ebp-0x4c]
	jmp _Z13I_stricmpwildPKcS0__110
_Z13I_stricmpwildPKcS0__130:
	mov edx, [ebp-0x44]
	movzx edi, byte [edx]
	add edx, 0x1
	mov [ebp-0x44], edx
	mov eax, esi
	mov edx, edi
	cmp al, dl
	jz _Z13I_stricmpwildPKcS0__120
	cmp al, 0x3f
	jz _Z13I_stricmpwildPKcS0__120
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
	jnz _Z13I_stricmpwildPKcS0__100
_Z13I_stricmpwildPKcS0__120:
	mov eax, esi
	test al, al
	jz _Z13I_stricmpwildPKcS0__40
_Z13I_stricmpwildPKcS0__140:
	mov edx, [ebp-0x28]
	movzx esi, byte [edx]
	lea eax, [edx+0x1]
	mov [ebp-0x4c], eax
_Z13I_stricmpwildPKcS0__110:
	mov [ebp-0x28], eax
	mov eax, esi
	cmp al, 0x2a
	jnz _Z13I_stricmpwildPKcS0__130
	cmp byte [edx+0x1], 0x0
	jz _Z13I_stricmpwildPKcS0__40
	mov eax, [ebp-0x44]
	cmp byte [eax], 0x0
	jz _Z13I_stricmpwildPKcS0__140
	add eax, 0x1
	mov [ebp-0x40], eax
	mov eax, [ebp-0x4c]
	jmp _Z13I_stricmpwildPKcS0__150
_Z13I_stricmpwildPKcS0__170:
	mov edx, [ebp-0x40]
	movzx edi, byte [edx]
	add edx, 0x1
	mov [ebp-0x40], edx
	mov eax, esi
	mov edx, edi
	cmp al, dl
	jz _Z13I_stricmpwildPKcS0__160
	cmp al, 0x3f
	jz _Z13I_stricmpwildPKcS0__160
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
	jnz _Z13I_stricmpwildPKcS0__140
_Z13I_stricmpwildPKcS0__160:
	mov eax, esi
	test al, al
	jz _Z13I_stricmpwildPKcS0__40
_Z13I_stricmpwildPKcS0__180:
	mov edx, [ebp-0x24]
	movzx esi, byte [edx]
	lea eax, [edx+0x1]
	mov [ebp-0x4c], eax
_Z13I_stricmpwildPKcS0__150:
	mov [ebp-0x24], eax
	mov eax, esi
	cmp al, 0x2a
	jnz _Z13I_stricmpwildPKcS0__170
	cmp byte [edx+0x1], 0x0
	jz _Z13I_stricmpwildPKcS0__40
	mov eax, [ebp-0x40]
	cmp byte [eax], 0x0
	jz _Z13I_stricmpwildPKcS0__180
	add eax, 0x1
	mov [ebp-0x3c], eax
	mov eax, [ebp-0x4c]
	jmp _Z13I_stricmpwildPKcS0__190
_Z13I_stricmpwildPKcS0__210:
	mov edx, [ebp-0x3c]
	movzx edi, byte [edx]
	add edx, 0x1
	mov [ebp-0x3c], edx
	mov eax, esi
	mov edx, edi
	cmp al, dl
	jz _Z13I_stricmpwildPKcS0__200
	cmp al, 0x3f
	jz _Z13I_stricmpwildPKcS0__200
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
	jnz _Z13I_stricmpwildPKcS0__180
_Z13I_stricmpwildPKcS0__200:
	mov eax, esi
	test al, al
	jz _Z13I_stricmpwildPKcS0__40
_Z13I_stricmpwildPKcS0__220:
	mov edx, [ebp-0x20]
	movzx esi, byte [edx]
	lea eax, [edx+0x1]
	mov [ebp-0x4c], eax
_Z13I_stricmpwildPKcS0__190:
	mov [ebp-0x20], eax
	mov eax, esi
	cmp al, 0x2a
	jnz _Z13I_stricmpwildPKcS0__210
	cmp byte [edx+0x1], 0x0
	jz _Z13I_stricmpwildPKcS0__40
	mov eax, [ebp-0x3c]
	cmp byte [eax], 0x0
	jz _Z13I_stricmpwildPKcS0__220
	add eax, 0x1
	mov [ebp-0x38], eax
	mov eax, [ebp-0x4c]
	jmp _Z13I_stricmpwildPKcS0__230
_Z13I_stricmpwildPKcS0__250:
	mov edx, [ebp-0x38]
	movzx edi, byte [edx]
	add edx, 0x1
	mov [ebp-0x38], edx
	mov eax, esi
	mov edx, edi
	cmp al, dl
	jz _Z13I_stricmpwildPKcS0__240
	cmp al, 0x3f
	jz _Z13I_stricmpwildPKcS0__240
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
	jnz _Z13I_stricmpwildPKcS0__220
_Z13I_stricmpwildPKcS0__240:
	mov eax, esi
	test al, al
	jz _Z13I_stricmpwildPKcS0__40
_Z13I_stricmpwildPKcS0__260:
	mov edx, [ebp-0x1c]
	movzx esi, byte [edx]
	lea eax, [edx+0x1]
	mov [ebp-0x4c], eax
_Z13I_stricmpwildPKcS0__230:
	mov [ebp-0x1c], eax
	mov eax, esi
	cmp al, 0x2a
	jnz _Z13I_stricmpwildPKcS0__250
	cmp byte [edx+0x1], 0x0
	jz _Z13I_stricmpwildPKcS0__40
	mov eax, [ebp-0x38]
	cmp byte [eax], 0x0
	jz _Z13I_stricmpwildPKcS0__260
	add eax, 0x1
	mov [ebp-0x34], eax
	jmp _Z13I_stricmpwildPKcS0__270
_Z13I_stricmpwildPKcS0__290:
	mov edx, [ebp-0x34]
	movzx edi, byte [edx]
	add edx, 0x1
	mov [ebp-0x34], edx
	mov eax, esi
	mov edx, edi
	cmp al, dl
	jz _Z13I_stricmpwildPKcS0__280
	cmp al, 0x3f
	jz _Z13I_stricmpwildPKcS0__280
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
	jnz _Z13I_stricmpwildPKcS0__260
_Z13I_stricmpwildPKcS0__280:
	mov eax, esi
	test al, al
	jz _Z13I_stricmpwildPKcS0__40
_Z13I_stricmpwildPKcS0__300:
	mov edx, [ebp-0x4c]
	movzx esi, byte [edx]
	lea eax, [edx+0x1]
	mov [ebp-0x4c], eax
_Z13I_stricmpwildPKcS0__270:
	mov eax, esi
	cmp al, 0x2a
	jnz _Z13I_stricmpwildPKcS0__290
	cmp byte [edx+0x1], 0x0
	jz _Z13I_stricmpwildPKcS0__40
	mov eax, [ebp-0x34]
	cmp byte [eax], 0x0
	jz _Z13I_stricmpwildPKcS0__300
	add eax, 0x1
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z13I_stricmpwildPKcS0__310
	test eax, eax
	jnz _Z13I_stricmpwildPKcS0__300
_Z13I_stricmpwildPKcS0__40:
	xor eax, eax
_Z13I_stricmpwildPKcS0__320:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13I_stricmpwildPKcS0__30:
	sar eax, 0x1f
	or eax, 0x1
	jmp _Z13I_stricmpwildPKcS0__320


;Info_NextPair(char const**, char*, char*)
_Z13Info_NextPairPPKcPcS2_:
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
	jz _Z13Info_NextPairPPKcPcS2__10
_Z13Info_NextPairPPKcPcS2__30:
	test al, al
	jz _Z13Info_NextPairPPKcPcS2__20
	mov [edx], al
	add edx, 0x1
	add ecx, 0x1
	movzx eax, byte [ecx]
	cmp al, 0x5c
	jnz _Z13Info_NextPairPPKcPcS2__30
_Z13Info_NextPairPPKcPcS2__10:
	mov byte [edx], 0x0
	lea ebx, [ecx+0x1]
	movzx eax, byte [ecx+0x1]
	cmp al, 0x5c
	jz _Z13Info_NextPairPPKcPcS2__40
	test al, al
	jz _Z13Info_NextPairPPKcPcS2__40
	mov edx, esi
_Z13Info_NextPairPPKcPcS2__60:
	mov [edx], al
	add edx, 0x1
	add ebx, 0x1
	movzx eax, byte [ebx]
	cmp al, 0x5c
	jz _Z13Info_NextPairPPKcPcS2__50
	test al, al
	jnz _Z13Info_NextPairPPKcPcS2__60
_Z13Info_NextPairPPKcPcS2__50:
	mov byte [edx], 0x0
	mov [edi], ebx
_Z13Info_NextPairPPKcPcS2__70:
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13Info_NextPairPPKcPcS2__20:
	mov byte [edx], 0x0
	mov [edi], ecx
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13Info_NextPairPPKcPcS2__40:
	mov edx, esi
	mov byte [edx], 0x0
	mov [edi], ebx
	jmp _Z13Info_NextPairPPKcPcS2__70


;Info_Validate(char const*)
_Z13Info_ValidatePKc:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [esp+0x4], 0x22
	mov [esp], ebx
	call strchr
	test eax, eax
	jz _Z13Info_ValidatePKc_10
_Z13Info_ValidatePKc_20:
	xor eax, eax
_Z13Info_ValidatePKc_30:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z13Info_ValidatePKc_10:
	mov dword [esp+0x4], 0x3b
	mov [esp], ebx
	call strchr
	test eax, eax
	jnz _Z13Info_ValidatePKc_20
	mov al, 0x1
	jmp _Z13Info_ValidatePKc_30


;Com_sprintfPos(char*, int, int*, char const*, ...)
_Z14Com_sprintfPosPciPiPKcz:
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
	jl _Z14Com_sprintfPosPciPiPKcz_10
	mov eax, 0xffffffff
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14Com_sprintfPosPciPiPKcz_10:
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
	jz _Z14Com_sprintfPosPciPiPKcz_20
	cmp eax, 0xffffffff
	jz _Z14Com_sprintfPosPciPiPKcz_20
	mov ecx, [ebp+0x10]
	add [ecx], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14Com_sprintfPosPciPiPKcz_20:
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
_Z14FloatWriteSwapf:
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
_Z14Info_RemoveKeyPcPKc:
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
	ja _Z14Info_RemoveKeyPcPKc_10
_Z14Info_RemoveKeyPcPKc_120:
	mov dword [esp+0x4], 0x5c
	mov eax, [ebp+0xc]
	mov [esp], eax
	call strchr
	test eax, eax
	jz _Z14Info_RemoveKeyPcPKc_20
_Z14Info_RemoveKeyPcPKc_70:
	add esp, 0x81c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14Info_RemoveKeyPcPKc_80:
	lea edx, [ebx+0x1]
	movzx eax, byte [ebx+0x1]
	cmp al, 0x5c
	jnz _Z14Info_RemoveKeyPcPKc_30
	lea esi, [ebp-0x418]
	mov ecx, esi
_Z14Info_RemoveKeyPcPKc_110:
	mov byte [ecx], 0x0
	lea edi, [edx+0x1]
	movzx eax, byte [edx+0x1]
	cmp al, 0x5c
	jz _Z14Info_RemoveKeyPcPKc_40
	test al, al
	jnz _Z14Info_RemoveKeyPcPKc_50
_Z14Info_RemoveKeyPcPKc_40:
	lea edx, [ebp-0x818]
_Z14Info_RemoveKeyPcPKc_130:
	mov byte [edx], 0x0
	mov [esp+0x4], esi
	mov eax, [ebp+0xc]
	mov [esp], eax
	call strcmp
	test eax, eax
	jz _Z14Info_RemoveKeyPcPKc_60
	cmp byte [edi], 0x0
	jz _Z14Info_RemoveKeyPcPKc_70
	mov ebx, edi
_Z14Info_RemoveKeyPcPKc_20:
	cmp byte [ebx], 0x5c
	jz _Z14Info_RemoveKeyPcPKc_80
	movzx eax, byte [ebx]
	mov edx, ebx
_Z14Info_RemoveKeyPcPKc_30:
	test al, al
	jz _Z14Info_RemoveKeyPcPKc_70
	lea esi, [ebp-0x418]
	mov ecx, esi
	jmp _Z14Info_RemoveKeyPcPKc_90
_Z14Info_RemoveKeyPcPKc_100:
	test al, al
	jz _Z14Info_RemoveKeyPcPKc_70
_Z14Info_RemoveKeyPcPKc_90:
	mov [ecx], al
	add ecx, 0x1
	add edx, 0x1
	movzx eax, byte [edx]
	cmp al, 0x5c
	jnz _Z14Info_RemoveKeyPcPKc_100
	jmp _Z14Info_RemoveKeyPcPKc_110
_Z14Info_RemoveKeyPcPKc_10:
	mov dword [esp+0x4], _cstring_info_removekey_o
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z14Info_RemoveKeyPcPKc_120
_Z14Info_RemoveKeyPcPKc_50:
	lea edx, [ebp-0x818]
_Z14Info_RemoveKeyPcPKc_140:
	mov [edx], al
	add edx, 0x1
	add edi, 0x1
	movzx eax, byte [edi]
	cmp al, 0x5c
	jz _Z14Info_RemoveKeyPcPKc_130
	test al, al
	jnz _Z14Info_RemoveKeyPcPKc_140
	jmp _Z14Info_RemoveKeyPcPKc_130
_Z14Info_RemoveKeyPcPKc_60:
	mov [esp+0x4], edi
	mov [esp], ebx
	call strcpy
	jmp _Z14Info_RemoveKeyPcPKc_70


;FloatReadNoSwap(int)
_Z15FloatReadNoSwapi:
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
_Z15GetLeanFractionf:
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
_Z15I_isforfilenamei:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	lea eax, [edx-0x61]
	cmp eax, 0x19
	jbe _Z15I_isforfilenamei_10
	lea eax, [edx-0x41]
	cmp eax, 0x19
	ja _Z15I_isforfilenamei_20
_Z15I_isforfilenamei_10:
	mov eax, 0x1
_Z15I_isforfilenamei_70:
	test eax, eax
	jnz _Z15I_isforfilenamei_30
	lea eax, [edx-0x30]
	cmp eax, 0x9
	ja _Z15I_isforfilenamei_40
_Z15I_isforfilenamei_30:
	mov eax, 0x1
_Z15I_isforfilenamei_60:
	test eax, eax
	jnz _Z15I_isforfilenamei_50
	cmp edx, 0x5f
	jz _Z15I_isforfilenamei_50
	cmp edx, 0x2d
	jz _Z15I_isforfilenamei_50
	pop ebp
	ret
_Z15I_isforfilenamei_50:
	mov eax, 0x1
	pop ebp
	ret
_Z15I_isforfilenamei_40:
	xor eax, eax
	jmp _Z15I_isforfilenamei_60
_Z15I_isforfilenamei_20:
	xor eax, eax
	jmp _Z15I_isforfilenamei_70
	nop


;FloatWriteNoSwap(float)
_Z16FloatWriteNoSwapf:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	pop ebp
	ret


;Info_ValueForKey(char const*, char const*)
_Z16Info_ValueForKeyPKcS0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x202c
	mov ebx, [ebp+0x8]
	test ebx, ebx
	jz _Z16Info_ValueForKeyPKcS0__10
	mov esi, [ebp+0xc]
	test esi, esi
	jz _Z16Info_ValueForKeyPKcS0__10
	xor dword [_ZZ16Info_ValueForKeyPKcS0_E10valueindex], 0x1
	lea eax, [ebx+0x1]
	cmp byte [ebx], 0x5c
	cmovz ebx, eax
_Z16Info_ValueForKeyPKcS0__120:
	lea edi, [ebp-0x2018]
	mov esi, 0x1
	movzx eax, byte [ebx]
	cmp al, 0x5c
	jz _Z16Info_ValueForKeyPKcS0__20
_Z16Info_ValueForKeyPKcS0__40:
	test al, al
	jz _Z16Info_ValueForKeyPKcS0__10
	mov [edi], al
	add edi, 0x1
	add ebx, 0x1
	cmp esi, 0x1fff
	jg _Z16Info_ValueForKeyPKcS0__30
	add esi, 0x1
_Z16Info_ValueForKeyPKcS0__130:
	movzx eax, byte [ebx]
	cmp al, 0x5c
	jnz _Z16Info_ValueForKeyPKcS0__40
_Z16Info_ValueForKeyPKcS0__20:
	mov byte [edi], 0x0
	add ebx, 0x1
	mov [ebp-0x201c], ebx
	call _Z16Sys_IsMainThreadv
	test al, al
	jz _Z16Info_ValueForKeyPKcS0__50
	mov eax, [_ZZ16Info_ValueForKeyPKcS0_E10valueindex]
	shl eax, 0xd
	add eax, value1
	mov [ebp-0x2020], eax
	mov ebx, eax
_Z16Info_ValueForKeyPKcS0__150:
	mov esi, 0x1
	mov edx, [ebp-0x201c]
	movzx eax, byte [edx]
	cmp al, 0x5c
	jz _Z16Info_ValueForKeyPKcS0__60
_Z16Info_ValueForKeyPKcS0__80:
	test al, al
	jz _Z16Info_ValueForKeyPKcS0__60
	mov [ebx], al
	add ebx, 0x1
	add dword [ebp-0x201c], 0x1
	cmp esi, 0x1fff
	jg _Z16Info_ValueForKeyPKcS0__70
	add esi, 0x1
_Z16Info_ValueForKeyPKcS0__140:
	mov edx, [ebp-0x201c]
	movzx eax, byte [edx]
	cmp al, 0x5c
	jnz _Z16Info_ValueForKeyPKcS0__80
_Z16Info_ValueForKeyPKcS0__60:
	mov byte [ebx], 0x0
	mov esi, [ebp+0xc]
	lea edi, [ebp-0x2018]
	jmp _Z16Info_ValueForKeyPKcS0__90
_Z16Info_ValueForKeyPKcS0__110:
	test ecx, ecx
	jz _Z16Info_ValueForKeyPKcS0__100
_Z16Info_ValueForKeyPKcS0__90:
	movzx ecx, byte [esi]
	movzx ebx, byte [edi]
	add esi, 0x1
	add edi, 0x1
	lea eax, [ebp+0x7fffdfe8]
	cmp edi, eax
	jz _Z16Info_ValueForKeyPKcS0__100
	cmp ecx, ebx
	jz _Z16Info_ValueForKeyPKcS0__110
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
	jz _Z16Info_ValueForKeyPKcS0__110
	mov eax, [ebp-0x201c]
	cmp byte [eax], 0x0
	jz _Z16Info_ValueForKeyPKcS0__10
	mov ebx, eax
	add ebx, 0x1
	jmp _Z16Info_ValueForKeyPKcS0__120
_Z16Info_ValueForKeyPKcS0__30:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_info_valueforkey
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	add esi, 0x1
	jmp _Z16Info_ValueForKeyPKcS0__130
_Z16Info_ValueForKeyPKcS0__10:
	mov dword [ebp-0x2020], _cstring_null
_Z16Info_ValueForKeyPKcS0__100:
	mov eax, [ebp-0x2020]
	add esp, 0x202c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16Info_ValueForKeyPKcS0__70:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_info_valueforkey
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	add esi, 0x1
	jmp _Z16Info_ValueForKeyPKcS0__140
_Z16Info_ValueForKeyPKcS0__50:
	mov eax, [_ZZ16Info_ValueForKeyPKcS0_E10valueindex]
	shl eax, 0xd
	add eax, value1+0x4000
	mov [ebp-0x2020], eax
	mov ebx, eax
	jmp _Z16Info_ValueForKeyPKcS0__150


;AddLeanToPosition(float*, float, float, float, float)
_Z17AddLeanToPositionPfffff:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x44
	mov ebx, [ebp+0x8]
	movss xmm3, dword [ebp+0x10]
	movss xmm2, dword [ebp+0x14]
	pxor xmm4, xmm4
	ucomiss xmm3, xmm4
	jp _Z17AddLeanToPositionPfffff_10
	jnz _Z17AddLeanToPositionPfffff_10
	add esp, 0x44
	pop ebx
	pop ebp
	ret
_Z17AddLeanToPositionPfffff_10:
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
	call _Z12AngleVectorsPKfPfS1_S1_
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
_Z17UnGetLeanFractionf:
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
_Z18Com_InitThreadDatai:
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
	call _Z12Sys_SetValueiPv
	lea eax, [ebx+ebx*8]
	lea eax, [eax*8+g_com_error]
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call _Z12Sys_SetValueiPv
	shl ebx, 0x4
	add ebx, g_traceThreadInfo
	mov [esp+0x4], ebx
	mov dword [esp], 0x3
	call _Z12Sys_SetValueiPv
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;Com_StripExtension(char const*, char*)
_Z18Com_StripExtensionPKcPc:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	movzx edx, byte [esi]
	test dl, dl
	jnz _Z18Com_StripExtensionPKcPc_10
	mov ecx, esi
_Z18Com_StripExtensionPKcPc_80:
	cmp ecx, esi
	jz _Z18Com_StripExtensionPKcPc_20
	mov edx, esi
_Z18Com_StripExtensionPKcPc_30:
	movzx eax, byte [edx]
	mov [ebx], al
	add ebx, 0x1
	add edx, 0x1
	cmp edx, ecx
	jnz _Z18Com_StripExtensionPKcPc_30
_Z18Com_StripExtensionPKcPc_20:
	mov byte [ebx], 0x0
	pop ebx
	pop esi
	pop ebp
	ret
_Z18Com_StripExtensionPKcPc_10:
	mov ecx, esi
	xor eax, eax
	jmp _Z18Com_StripExtensionPKcPc_40
_Z18Com_StripExtensionPKcPc_70:
	cmp dl, 0x2f
	jz _Z18Com_StripExtensionPKcPc_50
	cmp dl, 0x5c
	jz _Z18Com_StripExtensionPKcPc_50
_Z18Com_StripExtensionPKcPc_90:
	add ecx, 0x1
	movzx edx, byte [ecx]
	test dl, dl
	jz _Z18Com_StripExtensionPKcPc_60
_Z18Com_StripExtensionPKcPc_40:
	cmp dl, 0x2e
	jnz _Z18Com_StripExtensionPKcPc_70
	mov eax, ecx
	add ecx, 0x1
	movzx edx, byte [ecx]
	test dl, dl
	jnz _Z18Com_StripExtensionPKcPc_40
_Z18Com_StripExtensionPKcPc_60:
	test eax, eax
	jz _Z18Com_StripExtensionPKcPc_80
	mov ecx, eax
	jmp _Z18Com_StripExtensionPKcPc_80
_Z18Com_StripExtensionPKcPc_50:
	xor eax, eax
	jmp _Z18Com_StripExtensionPKcPc_90
	nop


;Info_RemoveKey_Big(char*, char const*)
_Z18Info_RemoveKey_BigPcPKc:
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
	ja _Z18Info_RemoveKey_BigPcPKc_10
_Z18Info_RemoveKey_BigPcPKc_120:
	mov dword [esp+0x4], 0x5c
	mov eax, [ebp+0xc]
	mov [esp], eax
	call strchr
	test eax, eax
	jz _Z18Info_RemoveKey_BigPcPKc_20
_Z18Info_RemoveKey_BigPcPKc_70:
	add esp, 0x401c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18Info_RemoveKey_BigPcPKc_80:
	lea edx, [ebx+0x1]
	movzx eax, byte [ebx+0x1]
	cmp al, 0x5c
	jnz _Z18Info_RemoveKey_BigPcPKc_30
	lea esi, [ebp-0x2018]
	mov ecx, esi
_Z18Info_RemoveKey_BigPcPKc_110:
	mov byte [ecx], 0x0
	lea edi, [edx+0x1]
	movzx eax, byte [edx+0x1]
	cmp al, 0x5c
	jz _Z18Info_RemoveKey_BigPcPKc_40
	test al, al
	jnz _Z18Info_RemoveKey_BigPcPKc_50
_Z18Info_RemoveKey_BigPcPKc_40:
	lea edx, [ebp-0x4018]
_Z18Info_RemoveKey_BigPcPKc_130:
	mov byte [edx], 0x0
	mov [esp+0x4], esi
	mov eax, [ebp+0xc]
	mov [esp], eax
	call strcmp
	test eax, eax
	jz _Z18Info_RemoveKey_BigPcPKc_60
	cmp byte [edi], 0x0
	jz _Z18Info_RemoveKey_BigPcPKc_70
	mov ebx, edi
_Z18Info_RemoveKey_BigPcPKc_20:
	cmp byte [ebx], 0x5c
	jz _Z18Info_RemoveKey_BigPcPKc_80
	movzx eax, byte [ebx]
	mov edx, ebx
_Z18Info_RemoveKey_BigPcPKc_30:
	test al, al
	jz _Z18Info_RemoveKey_BigPcPKc_70
	lea esi, [ebp-0x2018]
	mov ecx, esi
	jmp _Z18Info_RemoveKey_BigPcPKc_90
_Z18Info_RemoveKey_BigPcPKc_100:
	test al, al
	jz _Z18Info_RemoveKey_BigPcPKc_70
_Z18Info_RemoveKey_BigPcPKc_90:
	mov [ecx], al
	add ecx, 0x1
	add edx, 0x1
	movzx eax, byte [edx]
	cmp al, 0x5c
	jnz _Z18Info_RemoveKey_BigPcPKc_100
	jmp _Z18Info_RemoveKey_BigPcPKc_110
_Z18Info_RemoveKey_BigPcPKc_10:
	mov dword [esp+0x4], _cstring_info_removekey_b
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z18Info_RemoveKey_BigPcPKc_120
_Z18Info_RemoveKey_BigPcPKc_50:
	lea edx, [ebp-0x4018]
_Z18Info_RemoveKey_BigPcPKc_140:
	mov [edx], al
	add edx, 0x1
	add edi, 0x1
	movzx eax, byte [edi]
	cmp al, 0x5c
	jz _Z18Info_RemoveKey_BigPcPKc_130
	test al, al
	jnz _Z18Info_RemoveKey_BigPcPKc_140
	jmp _Z18Info_RemoveKey_BigPcPKc_130
_Z18Info_RemoveKey_BigPcPKc_60:
	mov [esp+0x4], edi
	mov [esp], ebx
	call strcpy
	jmp _Z18Info_RemoveKey_BigPcPKc_70


;Info_SetValueForKey(char*, char const*, char const*)
_Z19Info_SetValueForKeyPcPKcS1_:
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
	ja _Z19Info_SetValueForKeyPcPKcS1__10
	xor ecx, ecx
	mov edx, 0x1
	jmp _Z19Info_SetValueForKeyPcPKcS1__20
_Z19Info_SetValueForKeyPcPKcS1__50:
	cmp al, 0x5c
	jz _Z19Info_SetValueForKeyPcPKcS1__30
	cmp al, 0x3b
	jz _Z19Info_SetValueForKeyPcPKcS1__30
	cmp al, 0x22
	jz _Z19Info_SetValueForKeyPcPKcS1__30
	mov [ebp+ecx-0x818], al
	add ecx, 0x1
_Z19Info_SetValueForKeyPcPKcS1__30:
	add edx, 0x1
	cmp edx, 0x400
	jz _Z19Info_SetValueForKeyPcPKcS1__40
_Z19Info_SetValueForKeyPcPKcS1__20:
	movzx eax, byte [ebx+edx-0x1]
	test al, al
	jnz _Z19Info_SetValueForKeyPcPKcS1__50
_Z19Info_SetValueForKeyPcPKcS1__40:
	mov byte [ebp+ecx-0x818], 0x0
	mov dword [esp+0x4], 0x5c
	mov [esp], esi
	call strchr
	test eax, eax
	jz _Z19Info_SetValueForKeyPcPKcS1__60
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_cant_use_keys_wi
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
_Z19Info_SetValueForKeyPcPKcS1__90:
	add esp, 0x83c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19Info_SetValueForKeyPcPKcS1__10:
	mov dword [esp+0x4], _cstring_info_setvaluefor
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	add esp, 0x83c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19Info_SetValueForKeyPcPKcS1__60:
	mov dword [esp+0x4], 0x3b
	mov [esp], esi
	call strchr
	test eax, eax
	jz _Z19Info_SetValueForKeyPcPKcS1__70
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_cant_use_keys_wi1
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	add esp, 0x83c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19Info_SetValueForKeyPcPKcS1__70:
	mov dword [esp+0x4], 0x22
	mov [esp], esi
	call strchr
	test eax, eax
	jz _Z19Info_SetValueForKeyPcPKcS1__80
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_cant_use_keys_wi2
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	jmp _Z19Info_SetValueForKeyPcPKcS1__90
_Z19Info_SetValueForKeyPcPKcS1__80:
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z14Info_RemoveKeyPcPKc
	cmp byte [ebp-0x818], 0x0
	jz _Z19Info_SetValueForKeyPcPKcS1__90
	lea eax, [ebp-0x818]
	mov [esp+0x10], eax
	mov [esp+0xc], esi
	mov dword [esp+0x8], _cstring_ss
	mov dword [esp+0x4], 0x400
	lea ecx, [ebp-0x418]
	mov [esp], ecx
	call _Z11Com_sprintfPciPKcz
	test eax, eax
	jle _Z19Info_SetValueForKeyPcPKcS1__100
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
	jbe _Z19Info_SetValueForKeyPcPKcS1__110
	mov ecx, [ebp+0x8]
	mov [esp+0x10], ecx
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_info_string_leng
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	jmp _Z19Info_SetValueForKeyPcPKcS1__90
_Z19Info_SetValueForKeyPcPKcS1__110:
	lea eax, [ebp-0x418]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call strcat
	jmp _Z19Info_SetValueForKeyPcPKcS1__90
_Z19Info_SetValueForKeyPcPKcS1__100:
	mov dword [esp+0x4], _cstring_info_buffer_leng
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	jmp _Z19Info_SetValueForKeyPcPKcS1__90


;Com_AssembleFilepath(char const*, char const*, char const*, char*, int)
_Z20Com_AssembleFilepathPKcS0_S0_Pci:
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
	jl _Z20Com_AssembleFilepathPKcS0_S0_Pci_10
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
	call _Z9Com_Error11errorParm_tPKcz
_Z20Com_AssembleFilepathPKcS0_S0_Pci_10:
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
_Z20Com_DefaultExtensionPciPKc:
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
	jz _Z20Com_DefaultExtensionPciPKc_10
	cmp esi, ebx
	jz _Z20Com_DefaultExtensionPciPKc_10
	cmp al, 0x2e
	jz _Z20Com_DefaultExtensionPciPKc_20
	mov edx, ebx
_Z20Com_DefaultExtensionPciPKc_30:
	movzx ecx, byte [edx-0x1]
	cmp cl, 0x2f
	jz _Z20Com_DefaultExtensionPciPKc_10
	lea eax, [esi+0x1]
	cmp edx, eax
	jz _Z20Com_DefaultExtensionPciPKc_10
	sub edx, 0x1
	cmp cl, 0x2e
	jnz _Z20Com_DefaultExtensionPciPKc_30
_Z20Com_DefaultExtensionPciPKc_20:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20Com_DefaultExtensionPciPKc_10:
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
	call _Z11Com_sprintfPciPKcz
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Com_IsLegacyXModelName(char const*)
_Z22Com_IsLegacyXModelNamePKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov esi, [ebp+0x8]
	mov edi, _cstring_xmodel
_Z22Com_IsLegacyXModelNamePKc_40:
	movzx ecx, byte [esi]
	movzx ebx, byte [edi]
	add esi, 0x1
	add edi, 0x1
	cmp edi, _cstring_null
	jz _Z22Com_IsLegacyXModelNamePKc_10
	cmp ecx, ebx
	jz _Z22Com_IsLegacyXModelNamePKc_20
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
	jnz _Z22Com_IsLegacyXModelNamePKc_30
_Z22Com_IsLegacyXModelNamePKc_20:
	test ecx, ecx
	jnz _Z22Com_IsLegacyXModelNamePKc_40
_Z22Com_IsLegacyXModelNamePKc_10:
	mov eax, [ebp+0x8]
	cmp byte [eax+0x6], 0x2f
	jz _Z22Com_IsLegacyXModelNamePKc_50
_Z22Com_IsLegacyXModelNamePKc_30:
	xor eax, eax
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22Com_IsLegacyXModelNamePKc_50:
	mov eax, 0x1
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Info_SetValueForKey_Big(char*, char const*, char const*)
_Z23Info_SetValueForKey_BigPcPKcS1_:
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
	ja _Z23Info_SetValueForKey_BigPcPKcS1__10
	xor ecx, ecx
	mov edx, 0x1
	jmp _Z23Info_SetValueForKey_BigPcPKcS1__20
_Z23Info_SetValueForKey_BigPcPKcS1__50:
	cmp al, 0x5c
	jz _Z23Info_SetValueForKey_BigPcPKcS1__30
	cmp al, 0x3b
	jz _Z23Info_SetValueForKey_BigPcPKcS1__30
	cmp al, 0x22
	jz _Z23Info_SetValueForKey_BigPcPKcS1__30
	mov [ebp+ecx-0x4018], al
	add ecx, 0x1
_Z23Info_SetValueForKey_BigPcPKcS1__30:
	add edx, 0x1
	cmp edx, 0x2000
	jz _Z23Info_SetValueForKey_BigPcPKcS1__40
_Z23Info_SetValueForKey_BigPcPKcS1__20:
	movzx eax, byte [ebx+edx-0x1]
	test al, al
	jnz _Z23Info_SetValueForKey_BigPcPKcS1__50
_Z23Info_SetValueForKey_BigPcPKcS1__40:
	mov byte [ebp+ecx-0x4018], 0x0
	mov dword [esp+0x4], 0x5c
	mov [esp], esi
	call strchr
	test eax, eax
	jz _Z23Info_SetValueForKey_BigPcPKcS1__60
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_cant_use_keys_wi
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
_Z23Info_SetValueForKey_BigPcPKcS1__90:
	add esp, 0x403c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23Info_SetValueForKey_BigPcPKcS1__10:
	mov dword [esp+0x4], _cstring_info_setvaluefor
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	add esp, 0x403c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23Info_SetValueForKey_BigPcPKcS1__60:
	mov dword [esp+0x4], 0x3b
	mov [esp], esi
	call strchr
	test eax, eax
	jz _Z23Info_SetValueForKey_BigPcPKcS1__70
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_cant_use_keys_wi1
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	add esp, 0x403c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23Info_SetValueForKey_BigPcPKcS1__70:
	mov dword [esp+0x4], 0x22
	mov [esp], esi
	call strchr
	test eax, eax
	jz _Z23Info_SetValueForKey_BigPcPKcS1__80
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_cant_use_keys_wi2
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	jmp _Z23Info_SetValueForKey_BigPcPKcS1__90
_Z23Info_SetValueForKey_BigPcPKcS1__80:
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z18Info_RemoveKey_BigPcPKc
	cmp byte [ebp-0x4018], 0x0
	jz _Z23Info_SetValueForKey_BigPcPKcS1__90
	lea eax, [ebp-0x4018]
	mov [esp+0x10], eax
	mov [esp+0xc], esi
	mov dword [esp+0x8], _cstring_ss
	mov dword [esp+0x4], 0x2000
	lea ecx, [ebp-0x2018]
	mov [esp], ecx
	call _Z11Com_sprintfPciPKcz
	test eax, eax
	jle _Z23Info_SetValueForKey_BigPcPKcS1__100
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
	jbe _Z23Info_SetValueForKey_BigPcPKcS1__110
	mov ecx, [ebp+0x8]
	mov [esp+0x10], ecx
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_big_info_string_
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	jmp _Z23Info_SetValueForKey_BigPcPKcS1__90
_Z23Info_SetValueForKey_BigPcPKcS1__110:
	lea eax, [ebp-0x2018]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call strcat
	jmp _Z23Info_SetValueForKey_BigPcPKcS1__90
_Z23Info_SetValueForKey_BigPcPKcS1__100:
	mov dword [esp+0x4], _cstring_info_buffer_leng
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	jmp _Z23Info_SetValueForKey_BigPcPKcS1__90


;Com_GetFilenameSubString(char const*)
_Z24Com_GetFilenameSubStringPKc:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	movzx edx, byte [eax]
	test dl, dl
	jz _Z24Com_GetFilenameSubStringPKc_10
	mov ecx, eax
	jmp _Z24Com_GetFilenameSubStringPKc_20
_Z24Com_GetFilenameSubStringPKc_50:
	cmp dl, 0x5c
	jz _Z24Com_GetFilenameSubStringPKc_30
	add eax, 0x1
	movzx edx, byte [eax]
	test dl, dl
	jz _Z24Com_GetFilenameSubStringPKc_40
_Z24Com_GetFilenameSubStringPKc_20:
	cmp dl, 0x2f
	jnz _Z24Com_GetFilenameSubStringPKc_50
_Z24Com_GetFilenameSubStringPKc_30:
	lea ecx, [eax+0x1]
	mov eax, ecx
	movzx edx, byte [eax]
	test dl, dl
	jnz _Z24Com_GetFilenameSubStringPKc_20
_Z24Com_GetFilenameSubStringPKc_40:
	mov eax, ecx
	pop ebp
	ret
_Z24Com_GetFilenameSubStringPKc_10:
	mov ecx, eax
	mov eax, ecx
	pop ebp
	ret
	nop


;Com_GetExtensionSubString(char const*)
_Z25Com_GetExtensionSubStringPKc:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	movzx edx, byte [eax]
	test dl, dl
	jz _Z25Com_GetExtensionSubStringPKc_10
	xor ecx, ecx
	jmp _Z25Com_GetExtensionSubStringPKc_20
_Z25Com_GetExtensionSubStringPKc_50:
	cmp dl, 0x2f
	jz _Z25Com_GetExtensionSubStringPKc_30
	cmp dl, 0x5c
	jz _Z25Com_GetExtensionSubStringPKc_30
_Z25Com_GetExtensionSubStringPKc_60:
	add eax, 0x1
	movzx edx, byte [eax]
	test dl, dl
	jz _Z25Com_GetExtensionSubStringPKc_40
_Z25Com_GetExtensionSubStringPKc_20:
	cmp dl, 0x2e
	jnz _Z25Com_GetExtensionSubStringPKc_50
	mov ecx, eax
	add eax, 0x1
	movzx edx, byte [eax]
	test dl, dl
	jnz _Z25Com_GetExtensionSubStringPKc_20
_Z25Com_GetExtensionSubStringPKc_40:
	test ecx, ecx
	jz _Z25Com_GetExtensionSubStringPKc_10
	mov eax, ecx
	pop ebp
	ret
_Z25Com_GetExtensionSubStringPKc_30:
	xor ecx, ecx
	jmp _Z25Com_GetExtensionSubStringPKc_60
_Z25Com_GetExtensionSubStringPKc_10:
	mov ecx, eax
	mov eax, ecx
	pop ebp
	ret


;ParseConfigStringToStruct(unsigned char*, cspField_t const*, int, char const*, int, int (*)(unsigned char*, char const*, int), void (*)(unsigned char*, char const*))
_Z25ParseConfigStringToStructPhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E
	nop


;va(char const*, ...)
_Z2vaPKcz:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	lea eax, [ebp+0xc]
	mov [ebp-0xc], eax
	mov dword [esp], 0x1
	call _Z12Sys_GetValuei
	mov ecx, eax
	mov eax, [eax+0x800]
	mov edx, eax
	shl edx, 0xa
	lea ebx, [ecx+edx]
	add eax, 0x1
	and eax, 0x80000001
	js _Z2vaPKcz_10
_Z2vaPKcz_30:
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
	jbe _Z2vaPKcz_20
	mov dword [esp+0x4], _cstring_attempted_to_ove
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z2vaPKcz_20:
	mov eax, ebx
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_Z2vaPKcz_10:
	sub eax, 0x1
	or eax, 0xfffffffe
	add eax, 0x1
	jmp _Z2vaPKcz_30


;ParseConfigStringToStructCustomSize(unsigned char*, cspField_t const*, int, char const*, int, int (*)(unsigned char*, char const*, int), void (*)(unsigned char*, char const*))
_Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x203c
	cmp dword [ebp+0x10], 0x0
	jg _Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_10
	jz _Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_20
_Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_60:
	xor eax, eax
	add esp, 0x203c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_80:
	mov ecx, [ebp+0x18]
	test ecx, ecx
	jle _Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_30
	cmp eax, [ebp+0x18]
	jl _Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_40
_Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_30:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_bad_field_type_i
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_70:
	add edi, 0x1
	add esi, 0xc
	cmp [ebp+0x10], edi
	jnz _Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_50
_Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_90:
	cmp byte [ebp-0x2019], 0x0
	jnz _Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_60
_Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_20:
	mov eax, 0x1
	add esp, 0x203c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_10:
	mov esi, [ebp+0xc]
	xor edi, edi
	mov byte [ebp-0x2019], 0x0
_Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_50:
	mov eax, [esi]
	mov [esp+0x4], eax
	mov eax, [ebp+0x14]
	mov [esp], eax
	call _Z16Info_ValueForKeyPKcS0_
	mov edx, eax
	cmp byte [eax], 0x0
	jz _Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_70
	mov eax, [esi+0x8]
	cmp eax, 0xb
	jg _Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_80
	ja _Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_70
	jmp dword [eax*4+_Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_jumptab_0]
_Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_40:
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call dword [ebp+0x1c]
	test eax, eax
	jz _Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_60
	add edi, 0x1
	add esi, 0xc
	cmp [ebp+0x10], edi
	jnz _Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_50
	jmp _Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_90
_Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_100:
	mov [esp+0x4], edx
	mov eax, [ebp+0x8]
	add eax, [esi+0x4]
	mov [esp], eax
	call dword [ebp+0x20]
	jmp _Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_70
_Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_210:
	mov ebx, [ebp+0x8]
	add ebx, [esi+0x4]
	mov [esp], edx
	call _Z18Com_FindSoundAliasPKc
	mov [ebx], eax
	jmp _Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_70
_Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_200:
	mov eax, com_dedicated
	mov eax, [eax]
	mov ebx, [eax+0xc]
	test ebx, ebx
	jnz _Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_70
	mov ebx, [ebp+0x8]
	add ebx, [esi+0x4]
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call _Z23Material_RegisterHandlePKci
	mov [ebx], eax
	jmp _Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_70
_Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_190:
	mov dword [esp+0x8], 0x1fff
	mov [esp+0x4], edx
	lea ebx, [ebp-0x2018]
	mov [esp], ebx
	call strncpy
	mov byte [ebp-0x19], 0x0
	mov [esp], ebx
	call _Z15R_RegisterModelPKc
	mov edx, [esi+0x4]
	mov ecx, [ebp+0x8]
	mov [ecx+edx], eax
	test eax, eax
	jnz _Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_70
	mov byte [ebp-0x2019], 0x1
	jmp _Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_70
_Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_180:
	mov eax, com_dedicated
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jnz _Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_70
	mov ebx, [ebp+0x8]
	add ebx, [esi+0x4]
	mov [esp], edx
	call _Z11FX_RegisterPKc
	mov [ebx], eax
	jmp _Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_70
_Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_170:
	mov ebx, [ebp+0x8]
	add ebx, [esi+0x4]
	mov [esp], edx
	call atof
	fstp qword [ebp-0x2028]
	cvtsd2ss xmm0, [ebp-0x2028]
	mulss xmm0, [_float_1000_00000000]
	cvttss2si eax, xmm0
	mov [ebx], eax
	jmp _Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_70
_Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_160:
	mov ebx, [ebp+0x8]
	add ebx, [esi+0x4]
	mov [esp], edx
	call atof
	fstp qword [ebp-0x2030]
	cvtsd2ss xmm0, [ebp-0x2030]
	movss [ebx], xmm0
	jmp _Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_70
_Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_150:
	mov ebx, [ebp+0x8]
	add ebx, [esi+0x4]
	mov [esp], edx
	call atoi
	test eax, eax
	setnz al
	movzx eax, al
	mov [ebx], eax
	jmp _Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_70
_Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_140:
	mov ebx, [ebp+0x8]
	add ebx, [esi+0x4]
	mov [esp], edx
	call atoi
	mov [ebx], eax
	jmp _Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_70
_Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_130:
	mov ebx, [ebp+0x8]
	add ebx, [esi+0x4]
	mov dword [esp+0x8], 0xff
	mov [esp+0x4], edx
	mov [esp], ebx
	call strncpy
	mov byte [ebx+0xff], 0x0
	jmp _Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_70
_Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_120:
	mov ebx, [ebp+0x8]
	add ebx, [esi+0x4]
	mov dword [esp+0x8], 0x3f
	mov [esp+0x4], edx
	mov [esp], ebx
	call strncpy
	mov byte [ebx+0x3f], 0x0
	jmp _Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_70
_Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_110:
	mov ebx, [ebp+0x8]
	add ebx, [esi+0x4]
	mov dword [esp+0x8], 0x3ff
	mov [esp+0x4], edx
	mov [esp], ebx
	call strncpy
	mov byte [ebx+0x3ff], 0x0
	jmp _Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_70
	
	
_Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_jumptab_0:
	dd _Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_100
	dd _Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_110
	dd _Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_120
	dd _Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_130
	dd _Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_140
	dd _Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_150
	dd _Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_160
	dd _Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_170
	dd _Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_180
	dd _Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_190
	dd _Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_200
	dd _Z35ParseConfigStringToStructCustomSizePhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E_210


;BigShort(short)
_Z8BigShorts:
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
_Z8I_iscsymi:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	lea eax, [edx-0x61]
	cmp eax, 0x19
	jbe _Z8I_iscsymi_10
	lea eax, [edx-0x41]
	cmp eax, 0x19
	jbe _Z8I_iscsymi_10
	lea eax, [edx-0x30]
	cmp eax, 0x9
	jbe _Z8I_iscsymi_10
	cmp edx, 0x5f
	jz _Z8I_iscsymi_10
	xor eax, eax
	pop ebp
	ret
_Z8I_iscsymi_10:
	mov eax, 0x1
	pop ebp
	ret


;I_strcmp(char const*, char const*)
_Z8I_strcmpPKcS0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov edx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov esi, 0x7fffffff
_Z8I_strcmpPKcS0__30:
	movzx ecx, byte [edx]
	movsx edi, cl
	add edx, 0x1
	movsx ebx, byte [eax]
	add eax, 0x1
	sub esi, 0x1
	cmp esi, 0xffffffff
	jz _Z8I_strcmpPKcS0__10
	cmp edi, ebx
	jnz _Z8I_strcmpPKcS0__20
	test cl, cl
	jnz _Z8I_strcmpPKcS0__30
_Z8I_strcmpPKcS0__10:
	xor eax, eax
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z8I_strcmpPKcS0__20:
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
_Z8I_strlwrPc:
	push ebp
	mov ebp, esp
	push ebx
	mov ebx, [ebp+0x8]
	movzx edx, byte [ebx]
	test dl, dl
	jz _Z8I_strlwrPc_10
	mov ecx, ebx
_Z8I_strlwrPc_30:
	movsx eax, dl
	sub eax, 0x41
	cmp eax, 0x19
	ja _Z8I_strlwrPc_20
	lea eax, [edx+0x20]
	mov [ecx], al
_Z8I_strlwrPc_20:
	movzx edx, byte [ecx+0x1]
	add ecx, 0x1
	test dl, dl
	jnz _Z8I_strlwrPc_30
_Z8I_strlwrPc_10:
	mov eax, ebx
	pop ebx
	pop ebp
	ret


;I_strupr(char*)
_Z8I_struprPc:
	push ebp
	mov ebp, esp
	push ebx
	mov ebx, [ebp+0x8]
	movzx edx, byte [ebx]
	test dl, dl
	jz _Z8I_struprPc_10
	mov ecx, ebx
_Z8I_struprPc_30:
	movsx eax, dl
	sub eax, 0x61
	cmp eax, 0x19
	ja _Z8I_struprPc_20
	lea eax, [edx-0x20]
	mov [ecx], al
_Z8I_struprPc_20:
	movzx edx, byte [ecx+0x1]
	add ecx, 0x1
	test dl, dl
	jnz _Z8I_struprPc_30
_Z8I_struprPc_10:
	mov eax, ebx
	pop ebx
	pop ebp
	ret


;LongSwap(int)
_Z8LongSwapi:
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
_Z9I_isdigiti:
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
_Z9I_isloweri:
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
_Z9I_stricmpPKcS0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4
	mov edi, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov dword [ebp-0x10], 0x7fffffff
_Z9I_stricmpPKcS0__40:
	movzx ecx, byte [edi]
	movzx ebx, byte [esi]
	add edi, 0x1
	add esi, 0x1
	sub dword [ebp-0x10], 0x1
	cmp dword [ebp-0x10], 0xffffffff
	jz _Z9I_stricmpPKcS0__10
	cmp ecx, ebx
	jz _Z9I_stricmpPKcS0__20
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
	jnz _Z9I_stricmpPKcS0__30
_Z9I_stricmpPKcS0__20:
	test ecx, ecx
	jnz _Z9I_stricmpPKcS0__40
_Z9I_stricmpPKcS0__10:
	xor eax, eax
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z9I_stricmpPKcS0__30:
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
_Z9I_stristrPKcS0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x8]
	cmp byte [eax], 0x0
	jz _Z9I_stristrPKcS0__10
	mov [ebp-0x1c], eax
	mov dword [ebp-0x24], 0x0
	xor edx, edx
	mov edi, eax
_Z9I_stristrPKcS0__40:
	mov dword [ebp-0x20], 0xffffffff
	add edx, [ebp+0x8]
	mov [ebp-0x28], edx
_Z9I_stristrPKcS0__30:
	mov esi, [ebp+0xc]
	add esi, [ebp-0x20]
	cmp byte [esi+0x1], 0x0
	jz _Z9I_stristrPKcS0__20
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
	jz _Z9I_stristrPKcS0__30
	add dword [ebp-0x24], 0x1
	mov edx, [ebp-0x24]
	mov ecx, [ebp-0x1c]
	movzx eax, byte [ecx+0x1]
	add ecx, 0x1
	mov [ebp-0x1c], ecx
	test al, al
	jz _Z9I_stristrPKcS0__10
	mov edi, ecx
	jmp _Z9I_stristrPKcS0__40
_Z9I_stristrPKcS0__10:
	xor eax, eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z9I_stristrPKcS0__20:
	mov eax, [ebp-0x28]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;I_strncat(char*, int, char const*)
_Z9I_strncatPciPKc:
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
	jl _Z9I_strncatPciPKc_10
	mov dword [esp+0x4], _cstring_i_strncat_alread
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
_Z9I_strncatPciPKc_10:
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
_Z9I_strncmpPKcS0_i:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov edx, [ebp+0x8]
	mov eax, [ebp+0xc]
	xor edi, edi
_Z9I_strncmpPKcS0_i_30:
	movzx ebx, byte [edx]
	movsx esi, bl
	add edx, 0x1
	movsx ecx, byte [eax]
	add eax, 0x1
	cmp edi, [ebp+0x10]
	jz _Z9I_strncmpPKcS0_i_10
	cmp esi, ecx
	jnz _Z9I_strncmpPKcS0_i_20
	add edi, 0x1
	test bl, bl
	jnz _Z9I_strncmpPKcS0_i_30
_Z9I_strncmpPKcS0_i_10:
	xor eax, eax
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z9I_strncmpPKcS0_i_20:
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
_Z9ShortSwaps:
	push ebp
	mov ebp, esp
	movzx eax, word [ebp+0x8]
	rol ax, 0x8
	cwde
	pop ebp
	ret


;Swap_Init()
_Z9Swap_Initv:
	push ebp
	mov ebp, esp
	sub esp, 0x10
	mov byte [ebp-0x2], 0x1
	mov byte [ebp-0x1], 0x0
	cmp word [ebp-0x2], 0x1
	jz _Z9Swap_Initv_10
	mov dword [_BigShort], 0x1df12a
	mov dword [_LittleShort], 0x1df11c
	mov dword [_BigLong], 0x1df15c
	mov dword [_LittleLong], 0x1df134
	mov dword [_LittleLong64], 0x1df164
	mov dword [_LittleFloatRead], 0x1df284
	mov dword [_LittleFloatWrite], 0x1df2ce
	leave
	ret
_Z9Swap_Initv_10:
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
colorBlack: dd 0x0, 0x0, 0x0, 0x3f800000, 0x7fffffff, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0
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

