;Imports of q_parse:
	extern _Z16Sys_IsMainThreadv
	extern Sys_IsDatabaseThread
	extern memcpy
	extern atoi
	extern strcmp
	extern atof
	extern vsnprintf
	extern _Z14Com_PrintErroriPKcz
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z10Com_PrintfiPKcz

;Exports of q_parse:
	global g_parse
	global punctuation
	global _Z12Com_ParseExtPPKci
	global _Z10Com_SetCSVi
	global _Z12Com_CompressPc
	global _Z12Com_ParseIntPPKc
	global _Z13Com_InitParsev
	global _Z14Com_MatchTokenPPKcS0_i
	global _Z14Com_ParseFloatPPKc
	global _Z14Com_UngetTokenv
	global _Z15Com_ParseOnLinePPKc
	global _Z15Com_ScriptErrorPKcz
	global _Z17Com_Parse1DMatrixPPKciPf
	global _Z18Com_SkipRestOfLinePPKc
	global _Z19Com_EndParseSessionv
	global _Z19Com_GetLastTokenPosv
	global _Z19Com_ScriptErrorDropPKcz
	global _Z20Com_ParseFloatOnLinePPKc
	global _Z21Com_BeginParseSessionPKc
	global _Z21Com_SetSpaceDelimitedi
	global _Z21Com_SkipBracedSectionPPKcji
	global _Z22Com_ResetParseSessionsv
	global _Z23Com_GetCurrentParseLinev
	global _Z23Com_SetKeepStringQuotesi
	global _Z26Com_SetScriptWarningPrefixPKc
	global _Z27Com_SetParseNegativeNumbersi
	global _Z9Com_ParsePPKc


SECTION .text


;Com_ParseExt(char const**, int)
_Z12Com_ParseExtPPKci:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov [ebp-0x2c], eax
	mov [ebp-0x30], edx
	call _Z16Sys_IsMainThreadv
	test al, al
	jz _Z12Com_ParseExtPPKci_10
	mov edi, g_parse
	mov eax, [edi+0x4200]
	mov edx, eax
	shl edx, 0x5
	shl eax, 0xa
	add edx, eax
	lea esi, [edi+edx]
	mov eax, [ebp-0x2c]
	mov ebx, [eax]
	mov byte [esi], 0x0
	test ebx, ebx
	jz _Z12Com_ParseExtPPKci_20
_Z12Com_ParseExtPPKci_400:
	mov eax, [esi+0x400]
	mov [esi+0x414], eax
	mov edx, [ebp-0x2c]
	mov eax, [edx]
	mov [esi+0x418], eax
	cmp byte [esi+0x407], 0x0
	jnz _Z12Com_ParseExtPPKci_30
	mov dword [ebp-0x20], 0x0
	call _Z16Sys_IsMainThreadv
	test al, al
	jz _Z12Com_ParseExtPPKci_40
_Z12Com_ParseExtPPKci_150:
	mov ecx, g_parse
_Z12Com_ParseExtPPKci_160:
	mov eax, [ecx+0x4200]
	mov edx, eax
	shl edx, 0x5
	shl eax, 0xa
	add edx, eax
	lea edx, [ecx+edx]
	movzx eax, byte [ebx]
	cmp al, 0x20
	jle _Z12Com_ParseExtPPKci_50
_Z12Com_ParseExtPPKci_170:
	mov ecx, [ebp-0x20]
	test ecx, ecx
	jz _Z12Com_ParseExtPPKci_60
	mov edx, [ebp-0x30]
	test edx, edx
	jz _Z12Com_ParseExtPPKci_70
_Z12Com_ParseExtPPKci_60:
	mov edx, eax
	cmp al, 0x2f
	jnz _Z12Com_ParseExtPPKci_80
	movzx eax, byte [ebx+0x1]
	cmp al, 0x2f
	jz _Z12Com_ParseExtPPKci_90
	cmp al, 0x2a
	jz _Z12Com_ParseExtPPKci_100
	jmp _Z12Com_ParseExtPPKci_110
_Z12Com_ParseExtPPKci_140:
	cmp al, 0xa
	jnz _Z12Com_ParseExtPPKci_120
	add dword [esi+0x400], 0x1
_Z12Com_ParseExtPPKci_120:
	mov ebx, edx
	movzx eax, byte [edx+0x1]
_Z12Com_ParseExtPPKci_100:
	lea edx, [ebx+0x1]
	test al, al
	jz _Z12Com_ParseExtPPKci_130
	cmp al, 0x2a
	jnz _Z12Com_ParseExtPPKci_140
	cmp byte [ebx+0x2], 0x2f
	jnz _Z12Com_ParseExtPPKci_120
	lea edx, [ebx+0x3]
_Z12Com_ParseExtPPKci_130:
	mov ebx, edx
_Z12Com_ParseExtPPKci_220:
	call _Z16Sys_IsMainThreadv
	test al, al
	jnz _Z12Com_ParseExtPPKci_150
_Z12Com_ParseExtPPKci_40:
	call Sys_IsDatabaseThread
	xor ecx, ecx
	test al, al
	mov eax, g_parse+0x460c
	cmovnz ecx, eax
	jmp _Z12Com_ParseExtPPKci_160
_Z12Com_ParseExtPPKci_200:
	add dword [edx+0x400], 0x1
	mov dword [ebp-0x20], 0x1
_Z12Com_ParseExtPPKci_190:
	add ebx, 0x1
	movzx eax, byte [ebx]
	cmp al, 0x20
	jg _Z12Com_ParseExtPPKci_170
_Z12Com_ParseExtPPKci_50:
	test al, al
	jz _Z12Com_ParseExtPPKci_180
	cmp al, 0xa
	jnz _Z12Com_ParseExtPPKci_190
	jmp _Z12Com_ParseExtPPKci_200
_Z12Com_ParseExtPPKci_210:
	mov ebx, edx
	movzx eax, byte [edx+0x1]
_Z12Com_ParseExtPPKci_90:
	lea edx, [ebx+0x1]
	test al, al
	jz _Z12Com_ParseExtPPKci_130
	cmp al, 0xa
	jnz _Z12Com_ParseExtPPKci_210
	mov ebx, edx
	jmp _Z12Com_ParseExtPPKci_220
_Z12Com_ParseExtPPKci_30:
	call _Z16Sys_IsMainThreadv
	test al, al
	jz _Z12Com_ParseExtPPKci_230
	mov ecx, g_parse
_Z12Com_ParseExtPPKci_410:
	mov eax, [ecx+0x4200]
	mov edx, eax
	shl edx, 0x5
	shl eax, 0xa
	add edx, eax
	lea ebx, [ecx+edx]
	mov eax, [ebp-0x2c]
	mov edx, [eax]
	mov byte [ebx], 0x0
	mov esi, [ebp-0x30]
	test esi, esi
	jnz _Z12Com_ParseExtPPKci_240
	movzx eax, byte [edx]
	cmp al, 0xd
	jz _Z12Com_ParseExtPPKci_250
	cmp al, 0xa
	jz _Z12Com_ParseExtPPKci_250
_Z12Com_ParseExtPPKci_330:
	mov eax, [ecx+0x4204]
	mov [ecx+0x4208], eax
	mov [ecx+0x4204], edx
	xor ecx, ecx
_Z12Com_ParseExtPPKci_370:
	movzx eax, byte [edx]
	test al, al
	jz _Z12Com_ParseExtPPKci_260
_Z12Com_ParseExtPPKci_300:
	cmp al, 0x2c
	jz _Z12Com_ParseExtPPKci_270
	cmp al, 0xa
	jz _Z12Com_ParseExtPPKci_260
	cmp al, 0xd
	jz _Z12Com_ParseExtPPKci_280
	cmp al, 0x22
	jz _Z12Com_ParseExtPPKci_290
	cmp ecx, 0x3fe
	ja _Z12Com_ParseExtPPKci_280
	mov [ebx+ecx], al
	add ecx, 0x1
_Z12Com_ParseExtPPKci_280:
	add edx, 0x1
	movzx eax, byte [edx]
	test al, al
	jnz _Z12Com_ParseExtPPKci_300
_Z12Com_ParseExtPPKci_260:
	cmp byte [edx], 0x0
	jz _Z12Com_ParseExtPPKci_310
_Z12Com_ParseExtPPKci_420:
	mov eax, [ebp-0x2c]
	mov [eax], edx
	mov byte [ebx+ecx], 0x0
_Z12Com_ParseExtPPKci_250:
	mov edi, ebx
_Z12Com_ParseExtPPKci_470:
	mov eax, edi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12Com_ParseExtPPKci_320:
	add edx, 0x1
_Z12Com_ParseExtPPKci_240:
	movzx eax, byte [edx]
	cmp al, 0xd
	jz _Z12Com_ParseExtPPKci_320
	cmp al, 0xa
	jnz _Z12Com_ParseExtPPKci_330
	add edx, 0x1
	jmp _Z12Com_ParseExtPPKci_240
_Z12Com_ParseExtPPKci_290:
	lea eax, [edx+0x1]
_Z12Com_ParseExtPPKci_390:
	movzx edx, byte [eax]
	cmp dl, 0x22
	jz _Z12Com_ParseExtPPKci_340
_Z12Com_ParseExtPPKci_360:
	cmp ecx, 0x3fe
	ja _Z12Com_ParseExtPPKci_350
	mov [ebx+ecx], dl
	add ecx, 0x1
_Z12Com_ParseExtPPKci_350:
	add eax, 0x1
	movzx edx, byte [eax]
	cmp dl, 0x22
	jnz _Z12Com_ParseExtPPKci_360
_Z12Com_ParseExtPPKci_340:
	lea edx, [eax+0x1]
	cmp byte [eax+0x1], 0x22
	jnz _Z12Com_ParseExtPPKci_370
	cmp ecx, 0x3fe
	ja _Z12Com_ParseExtPPKci_380
	mov byte [ebx+ecx], 0x22
	add ecx, 0x1
_Z12Com_ParseExtPPKci_380:
	add eax, 0x2
	jmp _Z12Com_ParseExtPPKci_390
_Z12Com_ParseExtPPKci_180:
	mov edx, [ebp-0x2c]
	mov dword [edx], 0x0
	mov edi, esi
	mov eax, edi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12Com_ParseExtPPKci_10:
	call Sys_IsDatabaseThread
	xor edi, edi
	test al, al
	mov eax, g_parse+0x460c
	cmovnz edi, eax
	mov eax, [edi+0x4200]
	mov edx, eax
	shl edx, 0x5
	shl eax, 0xa
	add edx, eax
	lea esi, [edi+edx]
	mov eax, [ebp-0x2c]
	mov ebx, [eax]
	mov byte [esi], 0x0
	test ebx, ebx
	jnz _Z12Com_ParseExtPPKci_400
_Z12Com_ParseExtPPKci_20:
	mov dword [eax], 0x0
	mov edi, esi
	mov eax, edi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12Com_ParseExtPPKci_310:
	test ecx, ecx
	mov eax, 0x0
	cmovz edx, eax
	mov eax, [ebp-0x2c]
	mov [eax], edx
	mov byte [ebx+ecx], 0x0
	jmp _Z12Com_ParseExtPPKci_250
_Z12Com_ParseExtPPKci_230:
	call Sys_IsDatabaseThread
	xor ecx, ecx
	test al, al
	mov eax, g_parse+0x460c
	cmovnz ecx, eax
	jmp _Z12Com_ParseExtPPKci_410
_Z12Com_ParseExtPPKci_270:
	add edx, 0x1
	cmp byte [edx], 0x0
	jnz _Z12Com_ParseExtPPKci_420
	jmp _Z12Com_ParseExtPPKci_310
_Z12Com_ParseExtPPKci_80:
	mov ecx, eax
_Z12Com_ParseExtPPKci_480:
	mov eax, [edi+0x4204]
	mov [edi+0x4208], eax
	mov [edi+0x4204], ebx
	cmp cl, 0x22
	jz _Z12Com_ParseExtPPKci_430
	cmp byte [esi+0x405], 0x0
	jz _Z12Com_ParseExtPPKci_440
	mov eax, esi
	xor ecx, ecx
_Z12Com_ParseExtPPKci_860:
	mov [eax], dl
	add ecx, 0x1
	cmp ecx, 0x3fe
	jle _Z12Com_ParseExtPPKci_450
_Z12Com_ParseExtPPKci_460:
	add ebx, 0x1
	cmp byte [ebx], 0x20
	jg _Z12Com_ParseExtPPKci_460
	cmp ecx, 0x400
	mov eax, 0x0
	cmovz ecx, eax
_Z12Com_ParseExtPPKci_850:
	mov byte [esi+ecx], 0x0
	mov eax, [ebp-0x2c]
	mov [eax], ebx
	mov edi, esi
	jmp _Z12Com_ParseExtPPKci_470
_Z12Com_ParseExtPPKci_110:
	mov ecx, 0x2f
	mov edx, 0x2f
	jmp _Z12Com_ParseExtPPKci_480
_Z12Com_ParseExtPPKci_70:
	mov edi, esi
	jmp _Z12Com_ParseExtPPKci_470
_Z12Com_ParseExtPPKci_440:
	lea eax, [ecx-0x30]
	cmp al, 0x9
	jbe _Z12Com_ParseExtPPKci_490
	cmp byte [esi+0x408], 0x0
	jz _Z12Com_ParseExtPPKci_500
	cmp cl, 0x2d
	jz _Z12Com_ParseExtPPKci_510
_Z12Com_ParseExtPPKci_500:
	cmp cl, 0x2e
	jz _Z12Com_ParseExtPPKci_520
_Z12Com_ParseExtPPKci_610:
	lea eax, [ecx-0x61]
	cmp al, 0x19
	jbe _Z12Com_ParseExtPPKci_530
	lea eax, [ecx-0x41]
	cmp al, 0x19
	jbe _Z12Com_ParseExtPPKci_530
	cmp cl, 0x5f
	jz _Z12Com_ParseExtPPKci_530
	cmp cl, 0x2f
	jz _Z12Com_ParseExtPPKci_530
	cmp cl, 0x5c
	jz _Z12Com_ParseExtPPKci_530
	mov ecx, [punctuation]
	mov [ebp-0x28], ecx
	test ecx, ecx
	jz _Z12Com_ParseExtPPKci_540
	mov dword [ebp-0x1c], punctuation
	jmp _Z12Com_ParseExtPPKci_550
_Z12Com_ParseExtPPKci_570:
	jz _Z12Com_ParseExtPPKci_560
_Z12Com_ParseExtPPKci_580:
	mov ecx, [ebp-0x1c]
	mov ecx, [ecx+0x4]
	mov [ebp-0x28], ecx
	add dword [ebp-0x1c], 0x4
	test ecx, ecx
	jz _Z12Com_ParseExtPPKci_540
_Z12Com_ParseExtPPKci_550:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp-0x28]
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [ebp-0x24], ecx
	cmp ecx, 0x0
	jle _Z12Com_ParseExtPPKci_570
	mov ecx, [ebp-0x28]
	movzx eax, byte [ecx]
	cmp al, [ebx]
	jnz _Z12Com_ParseExtPPKci_580
	xor edx, edx
	jmp _Z12Com_ParseExtPPKci_590
_Z12Com_ParseExtPPKci_600:
	mov ecx, [ebp-0x28]
	movzx eax, byte [edx+ecx]
	cmp al, [ebx+edx]
	jnz _Z12Com_ParseExtPPKci_580
_Z12Com_ParseExtPPKci_590:
	add edx, 0x1
	cmp edx, [ebp-0x24]
	jnz _Z12Com_ParseExtPPKci_600
_Z12Com_ParseExtPPKci_560:
	mov edi, esi
	mov eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov edx, [ebp-0x28]
	mov [esp+0x4], edx
	mov [esp], esi
	call memcpy
	mov ecx, [ebp-0x24]
	mov byte [esi+ecx], 0x0
	lea eax, [ebx+ecx]
	mov edx, [ebp-0x2c]
	mov [edx], eax
	jmp _Z12Com_ParseExtPPKci_470
_Z12Com_ParseExtPPKci_510:
	movzx eax, byte [ebx+0x1]
	cmp al, 0x2f
	jle _Z12Com_ParseExtPPKci_610
	cmp al, 0x39
	jg _Z12Com_ParseExtPPKci_610
	mov edx, 0x2d
_Z12Com_ParseExtPPKci_490:
	mov edi, esi
	xor ecx, ecx
_Z12Com_ParseExtPPKci_890:
	mov [edi], dl
	add ecx, 0x1
	cmp ecx, 0x3fe
	jle _Z12Com_ParseExtPPKci_620
_Z12Com_ParseExtPPKci_630:
	add ebx, 0x1
	movzx edx, byte [ebx]
	lea eax, [edx-0x30]
	cmp al, 0x9
	jbe _Z12Com_ParseExtPPKci_630
	cmp dl, 0x2e
	jz _Z12Com_ParseExtPPKci_630
_Z12Com_ParseExtPPKci_880:
	cmp dl, 0x65
	jz _Z12Com_ParseExtPPKci_640
	cmp dl, 0x45
	jz _Z12Com_ParseExtPPKci_640
_Z12Com_ParseExtPPKci_820:
	cmp ecx, 0x400
	mov eax, 0x0
	cmovz ecx, eax
	mov byte [esi+ecx], 0x0
	mov edx, [ebp-0x2c]
	mov [edx], ebx
	mov edi, esi
	jmp _Z12Com_ParseExtPPKci_470
_Z12Com_ParseExtPPKci_530:
	mov ecx, esi
	xor edi, edi
_Z12Com_ParseExtPPKci_920:
	mov [ecx], dl
	add edi, 0x1
	cmp edi, 0x3fe
	jle _Z12Com_ParseExtPPKci_650
_Z12Com_ParseExtPPKci_660:
	add ebx, 0x1
	movzx edx, byte [ebx]
	lea eax, [edx-0x61]
	cmp al, 0x19
	jbe _Z12Com_ParseExtPPKci_660
	lea eax, [edx-0x41]
	cmp al, 0x19
	jbe _Z12Com_ParseExtPPKci_660
	cmp dl, 0x5f
	jz _Z12Com_ParseExtPPKci_660
	lea eax, [edx-0x30]
	cmp al, 0x9
	jbe _Z12Com_ParseExtPPKci_660
	cmp edi, 0x400
	mov eax, 0x0
	cmovz edi, eax
_Z12Com_ParseExtPPKci_910:
	mov byte [esi+edi], 0x0
	mov eax, [ebp-0x2c]
	mov [eax], ebx
	mov edi, esi
	jmp _Z12Com_ParseExtPPKci_470
_Z12Com_ParseExtPPKci_430:
	cmp byte [esi+0x406], 0x0
	jnz _Z12Com_ParseExtPPKci_670
	xor edi, edi
_Z12Com_ParseExtPPKci_770:
	lea eax, [ebx+0x1]
_Z12Com_ParseExtPPKci_720:
	movzx edx, byte [eax]
	lea ebx, [eax+0x1]
	cmp dl, 0x5c
	jz _Z12Com_ParseExtPPKci_680
	cmp dl, 0x22
	jz _Z12Com_ParseExtPPKci_690
	test dl, dl
	jz _Z12Com_ParseExtPPKci_690
_Z12Com_ParseExtPPKci_740:
	cmp byte [ebx], 0xa
	jz _Z12Com_ParseExtPPKci_700
_Z12Com_ParseExtPPKci_750:
	cmp edi, 0x3fe
	jg _Z12Com_ParseExtPPKci_710
	mov [esi+edi], dl
	add edi, 0x1
_Z12Com_ParseExtPPKci_710:
	mov eax, ebx
	jmp _Z12Com_ParseExtPPKci_720
_Z12Com_ParseExtPPKci_680:
	movzx ecx, byte [eax+0x1]
	cmp cl, 0x22
	jz _Z12Com_ParseExtPPKci_730
	cmp cl, 0x5c
	jnz _Z12Com_ParseExtPPKci_740
_Z12Com_ParseExtPPKci_730:
	lea ebx, [eax+0x2]
	mov edx, ecx
	jmp _Z12Com_ParseExtPPKci_750
_Z12Com_ParseExtPPKci_700:
	add dword [esi+0x400], 0x1
	jmp _Z12Com_ParseExtPPKci_750
_Z12Com_ParseExtPPKci_690:
	cmp byte [esi+0x406], 0x0
	jz _Z12Com_ParseExtPPKci_760
	mov byte [esi+edi], 0x22
	add edi, 0x1
_Z12Com_ParseExtPPKci_760:
	mov byte [esi+edi], 0x0
	mov ecx, [ebp-0x2c]
	mov [ecx], ebx
	mov edi, esi
	jmp _Z12Com_ParseExtPPKci_470
_Z12Com_ParseExtPPKci_670:
	mov byte [esi], 0x22
	mov edi, 0x1
	jmp _Z12Com_ParseExtPPKci_770
_Z12Com_ParseExtPPKci_640:
	cmp ecx, 0x3fe
	jg _Z12Com_ParseExtPPKci_780
	mov [esi+ecx], dl
	add ecx, 0x1
_Z12Com_ParseExtPPKci_780:
	lea eax, [ebx+0x1]
	movzx edx, byte [ebx+0x1]
	cmp dl, 0x2d
	jz _Z12Com_ParseExtPPKci_790
	cmp dl, 0x2b
	jz _Z12Com_ParseExtPPKci_790
_Z12Com_ParseExtPPKci_840:
	mov ebx, eax
_Z12Com_ParseExtPPKci_810:
	cmp ecx, 0x3fe
	jg _Z12Com_ParseExtPPKci_800
	mov [esi+ecx], dl
	add ecx, 0x1
_Z12Com_ParseExtPPKci_800:
	add ebx, 0x1
	movzx edx, byte [ebx]
	lea eax, [edx-0x30]
	cmp al, 0x9
	jbe _Z12Com_ParseExtPPKci_810
	jmp _Z12Com_ParseExtPPKci_820
_Z12Com_ParseExtPPKci_790:
	cmp ecx, 0x3fe
	jg _Z12Com_ParseExtPPKci_830
	mov [esi+ecx], dl
	add ecx, 0x1
_Z12Com_ParseExtPPKci_830:
	lea eax, [ebx+0x2]
	movzx edx, byte [ebx+0x2]
	jmp _Z12Com_ParseExtPPKci_840
_Z12Com_ParseExtPPKci_520:
	movzx eax, byte [ebx+0x1]
	cmp al, 0x2f
	jle _Z12Com_ParseExtPPKci_610
	cmp al, 0x39
	jg _Z12Com_ParseExtPPKci_610
	mov edx, 0x2e
	jmp _Z12Com_ParseExtPPKci_490
_Z12Com_ParseExtPPKci_540:
	movzx eax, byte [ebx]
	mov [esi], al
	mov byte [esi+0x1], 0x0
	lea eax, [ebx+0x1]
	mov edx, [ebp-0x2c]
	mov [edx], eax
	mov edi, esi
	jmp _Z12Com_ParseExtPPKci_470
_Z12Com_ParseExtPPKci_450:
	add ebx, 0x1
	movzx edx, byte [ebx]
	cmp dl, 0x20
	jle _Z12Com_ParseExtPPKci_850
	add eax, 0x1
	jmp _Z12Com_ParseExtPPKci_860
_Z12Com_ParseExtPPKci_620:
	add ebx, 0x1
	movzx edx, byte [ebx]
	lea eax, [edx-0x30]
	cmp al, 0x9
	jbe _Z12Com_ParseExtPPKci_870
	cmp dl, 0x2e
	jnz _Z12Com_ParseExtPPKci_880
_Z12Com_ParseExtPPKci_870:
	add edi, 0x1
	jmp _Z12Com_ParseExtPPKci_890
_Z12Com_ParseExtPPKci_650:
	add ebx, 0x1
	movzx edx, byte [ebx]
	lea eax, [edx-0x61]
	cmp al, 0x19
	jbe _Z12Com_ParseExtPPKci_900
	lea eax, [edx-0x41]
	cmp al, 0x19
	jbe _Z12Com_ParseExtPPKci_900
	cmp dl, 0x5f
	jz _Z12Com_ParseExtPPKci_900
	lea eax, [edx-0x30]
	cmp al, 0x9
	ja _Z12Com_ParseExtPPKci_910
_Z12Com_ParseExtPPKci_900:
	add ecx, 0x1
	jmp _Z12Com_ParseExtPPKci_920
	nop


;Com_SetCSV(int)
_Z10Com_SetCSVi:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call _Z16Sys_IsMainThreadv
	test al, al
	jz _Z10Com_SetCSVi_10
	mov ecx, g_parse
	mov eax, [ecx+0x4200]
	mov edx, eax
	shl edx, 0x5
	shl eax, 0xa
	add edx, eax
	mov eax, [ebp+0x8]
	test eax, eax
	setnz byte [ecx+edx+0x407]
	leave
	ret
_Z10Com_SetCSVi_10:
	call Sys_IsDatabaseThread
	xor ecx, ecx
	test al, al
	mov eax, g_parse+0x460c
	cmovnz ecx, eax
	mov eax, [ecx+0x4200]
	mov edx, eax
	shl edx, 0x5
	shl eax, 0xa
	add edx, eax
	mov eax, [ebp+0x8]
	test eax, eax
	setnz byte [ecx+edx+0x407]
	leave
	ret
	nop


;Com_Compress(char*)
_Z12Com_CompressPc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4
	mov eax, [ebp+0x8]
	test eax, eax
	jz _Z12Com_CompressPc_10
	mov ecx, eax
	mov [ebp-0x10], eax
	xor ebx, ebx
	movzx edx, byte [eax]
_Z12Com_CompressPc_50:
	test dl, dl
	jnz _Z12Com_CompressPc_20
_Z12Com_CompressPc_90:
	mov byte [ecx], 0x0
	mov eax, ebx
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12Com_CompressPc_10:
	xor ecx, ecx
	xor ebx, ebx
	mov byte [ecx], 0x0
	mov eax, ebx
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12Com_CompressPc_20:
	cmp dl, 0xd
	jz _Z12Com_CompressPc_30
	cmp dl, 0xa
	jz _Z12Com_CompressPc_30
	cmp dl, 0x2f
	jz _Z12Com_CompressPc_40
	add dword [ebp-0x10], 0x1
_Z12Com_CompressPc_80:
	mov [ecx], dl
	add ecx, 0x1
	add ebx, 0x1
	mov eax, [ebp-0x10]
	movzx edx, byte [eax]
	jmp _Z12Com_CompressPc_50
_Z12Com_CompressPc_30:
	mov [ecx], dl
	add ecx, 0x1
	add ebx, 0x1
	add dword [ebp-0x10], 0x1
	mov eax, [ebp-0x10]
	movzx edx, byte [eax]
	jmp _Z12Com_CompressPc_50
_Z12Com_CompressPc_40:
	mov edi, [ebp-0x10]
	add edi, 0x1
	mov eax, [ebp-0x10]
	movzx esi, byte [eax+0x1]
	mov eax, esi
	cmp al, 0x2f
	jz _Z12Com_CompressPc_60
	mov eax, esi
	cmp al, 0x2a
	jz _Z12Com_CompressPc_70
	mov [ebp-0x10], edi
	jmp _Z12Com_CompressPc_80
_Z12Com_CompressPc_60:
	mov [ebp-0x10], edi
	movzx edx, byte [edi]
	test dl, dl
	jz _Z12Com_CompressPc_90
	cmp dl, 0xa
	jz _Z12Com_CompressPc_50
	lea edi, [edi+0x1]
	jmp _Z12Com_CompressPc_60
_Z12Com_CompressPc_70:
	mov edx, edi
	mov eax, esi
	test al, al
	jz _Z12Com_CompressPc_100
	cmp al, 0x2a
	jz _Z12Com_CompressPc_110
	mov eax, esi
	cmp al, 0xa
	jnz _Z12Com_CompressPc_120
	mov byte [ecx], 0xa
	add ecx, 0x1
	add ebx, 0x1
_Z12Com_CompressPc_120:
	mov [ebp-0x10], edi
	lea edi, [edi+0x1]
	movzx esi, byte [edx+0x1]
	jmp _Z12Com_CompressPc_70
_Z12Com_CompressPc_110:
	mov eax, [ebp-0x10]
	cmp byte [eax+0x2], 0x2f
	jnz _Z12Com_CompressPc_120
	add eax, 0x3
	mov [ebp-0x10], eax
	movzx edx, byte [eax]
	jmp _Z12Com_CompressPc_50
_Z12Com_CompressPc_100:
	mov [ebp-0x10], edi
	movzx edx, byte [edi]
	jmp _Z12Com_CompressPc_50


;Com_ParseInt(char const**)
_Z12Com_ParseIntPPKc:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	call _Z16Sys_IsMainThreadv
	test al, al
	jz _Z12Com_ParseIntPPKc_10
	mov ecx, g_parse
_Z12Com_ParseIntPPKc_30:
	mov eax, [ecx+0x4200]
	mov edx, eax
	shl edx, 0x5
	shl eax, 0xa
	add edx, eax
	lea edx, [ecx+edx]
	cmp byte [edx+0x404], 0x0
	jz _Z12Com_ParseIntPPKc_20
	mov byte [edx+0x404], 0x0
	mov eax, [edx+0x418]
	mov [ebx], eax
	mov eax, [edx+0x414]
	mov [edx+0x400], eax
_Z12Com_ParseIntPPKc_20:
	mov edx, 0x1
	mov eax, ebx
	call _Z12Com_ParseExtPPKci
	mov [ebp+0x8], eax
	add esp, 0x4
	pop ebx
	pop ebp
	jmp atoi
_Z12Com_ParseIntPPKc_10:
	call Sys_IsDatabaseThread
	xor ecx, ecx
	test al, al
	mov eax, g_parse+0x460c
	cmovnz ecx, eax
	jmp _Z12Com_ParseIntPPKc_30
	nop


;Com_InitParse()
_Z13Com_InitParsev:
	push ebp
	mov ebp, esp
	xor edx, edx
	mov eax, g_parse
_Z13Com_InitParsev_10:
	mov dword [eax+0x400], 0x1
	mov byte [eax+0x404], 0x0
	mov byte [eax+0x405], 0x1
	mov byte [eax+0x406], 0x0
	mov byte [eax+0x407], 0x0
	mov byte [eax+0x408], 0x0
	mov dword [eax+0x40c], _cstring_null
	mov dword [eax+0x410], _cstring_null
	mov dword [eax+0x414], 0x0
	mov dword [eax+0x418], 0x0
	add edx, 0x1
	add eax, 0x460c
	cmp edx, 0x2
	jnz _Z13Com_InitParsev_10
	pop ebp
	ret


;Com_MatchToken(char const**, char const*, int)
_Z14Com_MatchTokenPPKcS0_i:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	call _Z16Sys_IsMainThreadv
	test al, al
	jz _Z14Com_MatchTokenPPKcS0_i_10
	mov ecx, g_parse
_Z14Com_MatchTokenPPKcS0_i_50:
	mov eax, [ecx+0x4200]
	mov edx, eax
	shl edx, 0x5
	shl eax, 0xa
	add edx, eax
	lea edx, [ecx+edx]
	cmp byte [edx+0x404], 0x0
	jz _Z14Com_MatchTokenPPKcS0_i_20
	mov byte [edx+0x404], 0x0
	mov eax, [edx+0x418]
	mov [ebx], eax
	mov eax, [edx+0x414]
	mov [edx+0x400], eax
_Z14Com_MatchTokenPPKcS0_i_20:
	mov edx, 0x1
	mov eax, ebx
	call _Z12Com_ParseExtPPKci
	mov ebx, eax
	mov [esp+0x4], esi
	mov [esp], eax
	call strcmp
	test eax, eax
	jz _Z14Com_MatchTokenPPKcS0_i_30
	mov eax, [ebp+0x10]
	test eax, eax
	jz _Z14Com_MatchTokenPPKcS0_i_40
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_matchtoken_got_s
	call _Z15Com_ScriptErrorPKcz
	xor eax, eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z14Com_MatchTokenPPKcS0_i_40:
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_matchtoken_got_s
	call _Z19Com_ScriptErrorDropPKcz
	xor eax, eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z14Com_MatchTokenPPKcS0_i_30:
	mov al, 0x1
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z14Com_MatchTokenPPKcS0_i_10:
	call Sys_IsDatabaseThread
	xor ecx, ecx
	test al, al
	mov eax, g_parse+0x460c
	cmovnz ecx, eax
	jmp _Z14Com_MatchTokenPPKcS0_i_50
	nop


;Com_ParseFloat(char const**)
_Z14Com_ParseFloatPPKc:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x8]
	call _Z16Sys_IsMainThreadv
	test al, al
	jz _Z14Com_ParseFloatPPKc_10
	mov ecx, g_parse
_Z14Com_ParseFloatPPKc_30:
	mov eax, [ecx+0x4200]
	mov edx, eax
	shl edx, 0x5
	shl eax, 0xa
	add edx, eax
	lea edx, [ecx+edx]
	cmp byte [edx+0x404], 0x0
	jz _Z14Com_ParseFloatPPKc_20
	mov byte [edx+0x404], 0x0
	mov eax, [edx+0x418]
	mov [ebx], eax
	mov eax, [edx+0x414]
	mov [edx+0x400], eax
_Z14Com_ParseFloatPPKc_20:
	mov edx, 0x1
	mov eax, ebx
	call _Z12Com_ParseExtPPKci
	mov [esp], eax
	call atof
	fstp qword [ebp-0x10]
	cvtsd2ss xmm0, [ebp-0x10]
	movss [ebp-0x14], xmm0
	fld dword [ebp-0x14]
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_Z14Com_ParseFloatPPKc_10:
	call Sys_IsDatabaseThread
	xor ecx, ecx
	test al, al
	mov eax, g_parse+0x460c
	cmovnz ecx, eax
	jmp _Z14Com_ParseFloatPPKc_30


;Com_UngetToken()
_Z14Com_UngetTokenv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	call _Z16Sys_IsMainThreadv
	test al, al
	jz _Z14Com_UngetTokenv_10
	mov esi, g_parse
_Z14Com_UngetTokenv_30:
	mov eax, [esi+0x4200]
	mov edx, eax
	shl edx, 0x5
	shl eax, 0xa
	add edx, eax
	lea ebx, [esi+edx]
	cmp byte [ebx+0x404], 0x0
	jz _Z14Com_UngetTokenv_20
	mov dword [esp], _cstring_ungettoken_calle
	call _Z19Com_ScriptErrorDropPKcz
_Z14Com_UngetTokenv_20:
	mov byte [ebx+0x404], 0x1
	mov eax, [esi+0x4208]
	mov [esi+0x4204], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z14Com_UngetTokenv_10:
	call Sys_IsDatabaseThread
	xor esi, esi
	test al, al
	mov eax, g_parse+0x460c
	cmovnz esi, eax
	jmp _Z14Com_UngetTokenv_30
	nop
	add [eax], al


;Com_ParseOnLine(char const**)
_Z15Com_ParseOnLinePPKc:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	call _Z16Sys_IsMainThreadv
	test al, al
	jz _Z15Com_ParseOnLinePPKc_10
	mov ecx, g_parse
_Z15Com_ParseOnLinePPKc_40:
	mov eax, [ecx+0x4200]
	mov edx, eax
	shl edx, 0x5
	shl eax, 0xa
	add edx, eax
	lea edx, [ecx+edx]
	cmp byte [edx+0x404], 0x0
	jz _Z15Com_ParseOnLinePPKc_20
	mov byte [edx+0x404], 0x0
	cmp byte [edx+0x405], 0x0
	jnz _Z15Com_ParseOnLinePPKc_30
	mov eax, edx
	add esp, 0x4
	pop ebx
	pop ebp
	ret
_Z15Com_ParseOnLinePPKc_30:
	mov eax, [edx+0x418]
	mov [ebx], eax
	mov eax, [edx+0x414]
	mov [edx+0x400], eax
_Z15Com_ParseOnLinePPKc_20:
	xor edx, edx
	mov eax, ebx
	add esp, 0x4
	pop ebx
	pop ebp
	jmp _Z12Com_ParseExtPPKci
_Z15Com_ParseOnLinePPKc_10:
	call Sys_IsDatabaseThread
	xor ecx, ecx
	test al, al
	mov eax, g_parse+0x460c
	cmovnz ecx, eax
	jmp _Z15Com_ParseOnLinePPKc_40
	nop


;Com_ScriptError(char const*, ...)
_Z15Com_ScriptErrorPKcz:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x103c
	call _Z16Sys_IsMainThreadv
	test al, al
	jz _Z15Com_ScriptErrorPKcz_10
	mov edi, g_parse
_Z15Com_ScriptErrorPKcz_30:
	mov eax, [edi+0x4200]
	mov edx, eax
	shl edx, 0x5
	shl eax, 0xa
	add edx, eax
	lea esi, [edi+edx]
	lea eax, [ebp+0xc]
	mov [ebp-0x1c], eax
	mov [esp+0xc], eax
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1000
	lea ebx, [ebp-0x101c]
	mov [esp], ebx
	call vsnprintf
	mov eax, [edi+0x4200]
	test eax, eax
	jz _Z15Com_ScriptErrorPKcz_20
	mov [esp+0x14], ebx
	mov eax, [esi+0x400]
	mov [esp+0x10], eax
	mov eax, [esi+0x41c]
	mov [esp+0xc], eax
	mov eax, [esi+0x410]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_sfile_s_line_i_s
	mov dword [esp], 0x17
	call _Z14Com_PrintErroriPKcz
	add esp, 0x103c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15Com_ScriptErrorPKcz_20:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x17
	call _Z14Com_PrintErroriPKcz
	add esp, 0x103c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15Com_ScriptErrorPKcz_10:
	call Sys_IsDatabaseThread
	xor edi, edi
	test al, al
	mov eax, g_parse+0x460c
	cmovnz edi, eax
	jmp _Z15Com_ScriptErrorPKcz_30


;Com_Parse1DMatrix(char const**, int, float*)
_Z17Com_Parse1DMatrixPPKciPf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_
	mov [esp], esi
	call _Z14Com_MatchTokenPPKcS0_i
	test edi, edi
	jg _Z17Com_Parse1DMatrixPPKciPf_10
_Z17Com_Parse1DMatrixPPKciPf_40:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_1
	mov [esp], esi
	call _Z14Com_MatchTokenPPKcS0_i
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17Com_Parse1DMatrixPPKciPf_10:
	xor ebx, ebx
	jmp _Z17Com_Parse1DMatrixPPKciPf_20
_Z17Com_Parse1DMatrixPPKciPf_50:
	mov ecx, g_parse
_Z17Com_Parse1DMatrixPPKciPf_60:
	mov eax, [ecx+0x4200]
	mov edx, eax
	shl edx, 0x5
	shl eax, 0xa
	add edx, eax
	lea edx, [ecx+edx]
	cmp byte [edx+0x404], 0x0
	jz _Z17Com_Parse1DMatrixPPKciPf_30
	mov byte [edx+0x404], 0x0
	mov eax, [edx+0x418]
	mov [esi], eax
	mov eax, [edx+0x414]
	mov [edx+0x400], eax
_Z17Com_Parse1DMatrixPPKciPf_30:
	mov edx, 0x1
	mov eax, esi
	call _Z12Com_ParseExtPPKci
	mov [esp], eax
	call atof
	fstp qword [ebp-0x20]
	cvtsd2ss xmm0, [ebp-0x20]
	mov eax, [ebp+0x10]
	movss [eax+ebx*4], xmm0
	add ebx, 0x1
	cmp edi, ebx
	jz _Z17Com_Parse1DMatrixPPKciPf_40
_Z17Com_Parse1DMatrixPPKciPf_20:
	call _Z16Sys_IsMainThreadv
	test al, al
	jnz _Z17Com_Parse1DMatrixPPKciPf_50
	call Sys_IsDatabaseThread
	xor ecx, ecx
	test al, al
	mov eax, g_parse+0x460c
	cmovnz ecx, eax
	jmp _Z17Com_Parse1DMatrixPPKciPf_60
	nop


;Com_SkipRestOfLine(char const**)
_Z18Com_SkipRestOfLinePPKc:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	call _Z16Sys_IsMainThreadv
	test al, al
	jz _Z18Com_SkipRestOfLinePPKc_10
	mov ecx, g_parse
_Z18Com_SkipRestOfLinePPKc_50:
	mov eax, [ecx+0x4200]
	mov edx, eax
	shl edx, 0x5
	shl eax, 0xa
	add edx, eax
	add ecx, edx
	mov edx, [ebx]
	test edx, edx
	jz _Z18Com_SkipRestOfLinePPKc_20
_Z18Com_SkipRestOfLinePPKc_40:
	movzx eax, byte [edx]
	test al, al
	jz _Z18Com_SkipRestOfLinePPKc_30
	add edx, 0x1
	cmp al, 0xa
	jnz _Z18Com_SkipRestOfLinePPKc_40
	add dword [ecx+0x400], 0x1
_Z18Com_SkipRestOfLinePPKc_30:
	mov [ebx], edx
_Z18Com_SkipRestOfLinePPKc_20:
	add esp, 0x4
	pop ebx
	pop ebp
	ret
_Z18Com_SkipRestOfLinePPKc_10:
	call Sys_IsDatabaseThread
	xor ecx, ecx
	test al, al
	mov eax, g_parse+0x460c
	cmovnz ecx, eax
	jmp _Z18Com_SkipRestOfLinePPKc_50


;Com_EndParseSession()
_Z19Com_EndParseSessionv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	call _Z16Sys_IsMainThreadv
	test al, al
	jz _Z19Com_EndParseSessionv_10
	mov ebx, g_parse
_Z19Com_EndParseSessionv_30:
	mov edx, [ebx+0x4200]
	test edx, edx
	jnz _Z19Com_EndParseSessionv_20
	mov dword [esp+0x4], _cstring_com_endparsesess
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
_Z19Com_EndParseSessionv_20:
	sub dword [ebx+0x4200], 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z19Com_EndParseSessionv_10:
	call Sys_IsDatabaseThread
	xor ebx, ebx
	test al, al
	mov eax, g_parse+0x460c
	cmovnz ebx, eax
	jmp _Z19Com_EndParseSessionv_30
	nop


;Com_GetLastTokenPos()
_Z19Com_GetLastTokenPosv:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call _Z16Sys_IsMainThreadv
	test al, al
	jz _Z19Com_GetLastTokenPosv_10
	mov edx, g_parse
	mov eax, [edx+0x4204]
	leave
	ret
_Z19Com_GetLastTokenPosv_10:
	call Sys_IsDatabaseThread
	xor edx, edx
	test al, al
	mov eax, g_parse+0x460c
	cmovnz edx, eax
	mov eax, [edx+0x4204]
	leave
	ret
	nop


;Com_ScriptErrorDrop(char const*, ...)
_Z19Com_ScriptErrorDropPKcz:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x103c
	call _Z16Sys_IsMainThreadv
	test al, al
	jz _Z19Com_ScriptErrorDropPKcz_10
	mov edi, g_parse
_Z19Com_ScriptErrorDropPKcz_30:
	mov eax, [edi+0x4200]
	mov edx, eax
	shl edx, 0x5
	shl eax, 0xa
	add edx, eax
	lea esi, [edi+edx]
	lea eax, [ebp+0xc]
	mov [ebp-0x1c], eax
	mov [esp+0xc], eax
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1000
	lea ebx, [ebp-0x101c]
	mov [esp], ebx
	call vsnprintf
	mov eax, [edi+0x4200]
	test eax, eax
	jz _Z19Com_ScriptErrorDropPKcz_20
	mov [esp+0x14], ebx
	mov eax, [esi+0x400]
	mov [esp+0x10], eax
	mov eax, [esi+0x41c]
	mov [esp+0xc], eax
	mov eax, [esi+0x40c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_sfile_s_line_i_s1
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	add esp, 0x103c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19Com_ScriptErrorDropPKcz_20:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_s1
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	add esp, 0x103c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19Com_ScriptErrorDropPKcz_10:
	call Sys_IsDatabaseThread
	xor edi, edi
	test al, al
	mov eax, g_parse+0x460c
	cmovnz edi, eax
	jmp _Z19Com_ScriptErrorDropPKcz_30


;Com_ParseFloatOnLine(char const**)
_Z20Com_ParseFloatOnLinePPKc:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	call _Z16Sys_IsMainThreadv
	test al, al
	jz _Z20Com_ParseFloatOnLinePPKc_10
	mov ecx, g_parse
_Z20Com_ParseFloatOnLinePPKc_40:
	mov eax, [ecx+0x4200]
	mov edx, eax
	shl edx, 0x5
	shl eax, 0xa
	add edx, eax
	lea edx, [ecx+edx]
	cmp byte [edx+0x404], 0x0
	jz _Z20Com_ParseFloatOnLinePPKc_20
	mov byte [edx+0x404], 0x0
	cmp byte [edx+0x405], 0x0
	jz _Z20Com_ParseFloatOnLinePPKc_30
	mov eax, [edx+0x418]
	mov ecx, [ebp+0x8]
	mov [ecx], eax
	mov eax, [edx+0x414]
	mov [edx+0x400], eax
_Z20Com_ParseFloatOnLinePPKc_20:
	xor edx, edx
	mov eax, [ebp+0x8]
	call _Z12Com_ParseExtPPKci
	mov [esp], eax
	call atof
	fstp qword [ebp-0x10]
	cvtsd2ss xmm0, [ebp-0x10]
	movss [ebp-0x14], xmm0
	fld dword [ebp-0x14]
	leave
	ret
_Z20Com_ParseFloatOnLinePPKc_30:
	mov eax, edx
	mov [esp], eax
	call atof
	fstp qword [ebp-0x10]
	cvtsd2ss xmm0, [ebp-0x10]
	movss [ebp-0x14], xmm0
	fld dword [ebp-0x14]
	leave
	ret
_Z20Com_ParseFloatOnLinePPKc_10:
	call Sys_IsDatabaseThread
	xor ecx, ecx
	test al, al
	mov eax, g_parse+0x460c
	cmovnz ecx, eax
	jmp _Z20Com_ParseFloatOnLinePPKc_40
	nop


;Com_BeginParseSession(char const*)
_Z21Com_BeginParseSessionPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	call _Z16Sys_IsMainThreadv
	test al, al
	jz _Z21Com_BeginParseSessionPKc_10
	mov esi, g_parse
	cmp dword [esi+0x4200], 0xf
	jz _Z21Com_BeginParseSessionPKc_20
_Z21Com_BeginParseSessionPKc_30:
	mov edx, [esi+0x4200]
	add edx, 0x1
	mov [esi+0x4200], edx
	mov eax, edx
	shl eax, 0x5
	shl edx, 0xa
	add eax, edx
	lea eax, [esi+eax]
	mov dword [eax+0x400], 0x1
	mov byte [eax+0x404], 0x0
	mov byte [eax+0x405], 0x1
	mov byte [eax+0x406], 0x0
	mov byte [eax+0x407], 0x0
	mov byte [eax+0x408], 0x0
	mov dword [eax+0x40c], _cstring_null
	mov dword [eax+0x410], _cstring_null
	mov dword [eax+0x414], 0x0
	mov dword [eax+0x418], 0x0
	mov edx, [ebp+0x8]
	mov [eax+0x41c], edx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21Com_BeginParseSessionPKc_10:
	call Sys_IsDatabaseThread
	xor esi, esi
	test al, al
	mov eax, g_parse+0x460c
	cmovnz esi, eax
	cmp dword [esi+0x4200], 0xf
	jnz _Z21Com_BeginParseSessionPKc_30
_Z21Com_BeginParseSessionPKc_20:
	mov dword [esp+0x4], _cstring_already_parsing
	mov dword [esp], 0x17
	call _Z10Com_PrintfiPKcz
	mov eax, [esi+0x4200]
	test eax, eax
	jg _Z21Com_BeginParseSessionPKc_40
_Z21Com_BeginParseSessionPKc_60:
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_com_beginparsese
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z21Com_BeginParseSessionPKc_30
_Z21Com_BeginParseSessionPKc_40:
	mov ebx, esi
	xor edi, edi
_Z21Com_BeginParseSessionPKc_50:
	mov eax, [ebx+0x41c]
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_i_s
	mov dword [esp], 0x17
	call _Z10Com_PrintfiPKcz
	add edi, 0x1
	add ebx, 0x420
	cmp [esi+0x4200], edi
	jg _Z21Com_BeginParseSessionPKc_50
	jmp _Z21Com_BeginParseSessionPKc_60
	nop


;Com_SetSpaceDelimited(int)
_Z21Com_SetSpaceDelimitedi:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call _Z16Sys_IsMainThreadv
	test al, al
	jz _Z21Com_SetSpaceDelimitedi_10
	mov ecx, g_parse
	mov eax, [ecx+0x4200]
	mov edx, eax
	shl edx, 0x5
	shl eax, 0xa
	add edx, eax
	mov eax, [ebp+0x8]
	test eax, eax
	setnz byte [ecx+edx+0x405]
	leave
	ret
_Z21Com_SetSpaceDelimitedi_10:
	call Sys_IsDatabaseThread
	xor ecx, ecx
	test al, al
	mov eax, g_parse+0x460c
	cmovnz ecx, eax
	mov eax, [ecx+0x4200]
	mov edx, eax
	shl edx, 0x5
	shl eax, 0xa
	add edx, eax
	mov eax, [ebp+0x8]
	test eax, eax
	setnz byte [ecx+edx+0x405]
	leave
	ret
	nop


;Com_SkipBracedSection(char const**, unsigned int, int)
_Z21Com_SkipBracedSectionPPKcji:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xc
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	xor edi, edi
	jmp _Z21Com_SkipBracedSectionPPKcji_10
_Z21Com_SkipBracedSectionPPKcji_60:
	mov ecx, g_parse
_Z21Com_SkipBracedSectionPPKcji_70:
	mov eax, [ecx+0x4200]
	mov edx, eax
	shl edx, 0x5
	shl eax, 0xa
	add edx, eax
	lea edx, [ecx+edx]
	cmp byte [edx+0x404], 0x0
	jz _Z21Com_SkipBracedSectionPPKcji_20
	mov byte [edx+0x404], 0x0
	mov eax, [edx+0x418]
	mov [esi], eax
	mov eax, [edx+0x414]
	mov [edx+0x400], eax
_Z21Com_SkipBracedSectionPPKcji_20:
	mov edx, 0x1
	mov eax, esi
	call _Z12Com_ParseExtPPKci
	cmp byte [eax+0x1], 0x0
	jnz _Z21Com_SkipBracedSectionPPKcji_30
	movzx edx, byte [eax]
	cmp dl, 0x7b
	jz _Z21Com_SkipBracedSectionPPKcji_40
	lea eax, [ebx-0x1]
	cmp dl, 0x7d
	cmovz ebx, eax
_Z21Com_SkipBracedSectionPPKcji_30:
	test ebx, ebx
	jz _Z21Com_SkipBracedSectionPPKcji_50
	mov edx, [esi]
	test edx, edx
	jz _Z21Com_SkipBracedSectionPPKcji_50
_Z21Com_SkipBracedSectionPPKcji_10:
	call _Z16Sys_IsMainThreadv
	test al, al
	jnz _Z21Com_SkipBracedSectionPPKcji_60
	call Sys_IsDatabaseThread
	xor ecx, ecx
	test al, al
	mov eax, g_parse+0x460c
	cmovnz ecx, eax
	jmp _Z21Com_SkipBracedSectionPPKcji_70
_Z21Com_SkipBracedSectionPPKcji_50:
	mov eax, edi
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21Com_SkipBracedSectionPPKcji_40:
	cmp ebx, [ebp+0x10]
	jz _Z21Com_SkipBracedSectionPPKcji_80
	add ebx, 0x1
	jmp _Z21Com_SkipBracedSectionPPKcji_30
_Z21Com_SkipBracedSectionPPKcji_80:
	mov edi, 0x1
	jmp _Z21Com_SkipBracedSectionPPKcji_30
	nop


;Com_ResetParseSessions()
_Z22Com_ResetParseSessionsv:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call _Z16Sys_IsMainThreadv
	test al, al
	jz _Z22Com_ResetParseSessionsv_10
	mov edx, g_parse
	mov dword [edx+0x4200], 0x0
	leave
	ret
_Z22Com_ResetParseSessionsv_10:
	call Sys_IsDatabaseThread
	xor edx, edx
	test al, al
	mov eax, g_parse+0x460c
	cmovnz edx, eax
	mov dword [edx+0x4200], 0x0
	leave
	ret
	nop


;Com_GetCurrentParseLine()
_Z23Com_GetCurrentParseLinev:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call _Z16Sys_IsMainThreadv
	test al, al
	jz _Z23Com_GetCurrentParseLinev_10
	mov ecx, g_parse
	mov eax, [ecx+0x4200]
	mov edx, eax
	shl edx, 0x5
	shl eax, 0xa
	add edx, eax
	mov eax, [ecx+edx+0x400]
	leave
	ret
_Z23Com_GetCurrentParseLinev_10:
	call Sys_IsDatabaseThread
	xor ecx, ecx
	test al, al
	mov eax, g_parse+0x460c
	cmovnz ecx, eax
	mov eax, [ecx+0x4200]
	mov edx, eax
	shl edx, 0x5
	shl eax, 0xa
	add edx, eax
	mov eax, [ecx+edx+0x400]
	leave
	ret
	nop
	add [eax], al


;Com_SetKeepStringQuotes(int)
_Z23Com_SetKeepStringQuotesi:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call _Z16Sys_IsMainThreadv
	test al, al
	jz _Z23Com_SetKeepStringQuotesi_10
	mov ecx, g_parse
	mov eax, [ecx+0x4200]
	mov edx, eax
	shl edx, 0x5
	shl eax, 0xa
	add edx, eax
	mov eax, [ebp+0x8]
	test eax, eax
	setnz byte [ecx+edx+0x406]
	leave
	ret
_Z23Com_SetKeepStringQuotesi_10:
	call Sys_IsDatabaseThread
	xor ecx, ecx
	test al, al
	mov eax, g_parse+0x460c
	cmovnz ecx, eax
	mov eax, [ecx+0x4200]
	mov edx, eax
	shl edx, 0x5
	shl eax, 0xa
	add edx, eax
	mov eax, [ebp+0x8]
	test eax, eax
	setnz byte [ecx+edx+0x406]
	leave
	ret
	nop


;Com_SetScriptWarningPrefix(char const*)
_Z26Com_SetScriptWarningPrefixPKc:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call _Z16Sys_IsMainThreadv
	test al, al
	jz _Z26Com_SetScriptWarningPrefixPKc_10
	mov ecx, g_parse
	mov eax, [ecx+0x4200]
	mov edx, eax
	shl edx, 0x5
	shl eax, 0xa
	add edx, eax
	mov eax, [ebp+0x8]
	mov [ecx+edx+0x410], eax
	leave
	ret
_Z26Com_SetScriptWarningPrefixPKc_10:
	call Sys_IsDatabaseThread
	xor ecx, ecx
	test al, al
	mov eax, g_parse+0x460c
	cmovnz ecx, eax
	mov eax, [ecx+0x4200]
	mov edx, eax
	shl edx, 0x5
	shl eax, 0xa
	add edx, eax
	mov eax, [ebp+0x8]
	mov [ecx+edx+0x410], eax
	leave
	ret
	nop


;Com_SetParseNegativeNumbers(int)
_Z27Com_SetParseNegativeNumbersi:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call _Z16Sys_IsMainThreadv
	test al, al
	jz _Z27Com_SetParseNegativeNumbersi_10
	mov ecx, g_parse
	mov eax, [ecx+0x4200]
	mov edx, eax
	shl edx, 0x5
	shl eax, 0xa
	add edx, eax
	mov eax, [ebp+0x8]
	test eax, eax
	setnz byte [ecx+edx+0x408]
	leave
	ret
_Z27Com_SetParseNegativeNumbersi_10:
	call Sys_IsDatabaseThread
	xor ecx, ecx
	test al, al
	mov eax, g_parse+0x460c
	cmovnz ecx, eax
	mov eax, [ecx+0x4200]
	mov edx, eax
	shl edx, 0x5
	shl eax, 0xa
	add edx, eax
	mov eax, [ebp+0x8]
	test eax, eax
	setnz byte [ecx+edx+0x408]
	leave
	ret
	nop


;Com_Parse(char const**)
_Z9Com_ParsePPKc:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	call _Z16Sys_IsMainThreadv
	test al, al
	jz _Z9Com_ParsePPKc_10
	mov ecx, g_parse
_Z9Com_ParsePPKc_30:
	mov eax, [ecx+0x4200]
	mov edx, eax
	shl edx, 0x5
	shl eax, 0xa
	add edx, eax
	lea edx, [ecx+edx]
	cmp byte [edx+0x404], 0x0
	jz _Z9Com_ParsePPKc_20
	mov byte [edx+0x404], 0x0
	mov eax, [edx+0x418]
	mov [ebx], eax
	mov eax, [edx+0x414]
	mov [edx+0x400], eax
_Z9Com_ParsePPKc_20:
	mov edx, 0x1
	mov eax, ebx
	add esp, 0x4
	pop ebx
	pop ebp
	jmp _Z12Com_ParseExtPPKci
_Z9Com_ParsePPKc_10:
	call Sys_IsDatabaseThread
	xor ecx, ecx
	test al, al
	mov eax, g_parse+0x460c
	cmovnz ecx, eax
	jmp _Z9Com_ParsePPKc_30
	nop
	add [eax], al


;Initialized global or static variables of q_parse:
SECTION .data
punctuation: dd _cstring_2, _cstring_3, _cstring_4, _cstring_5, _cstring_6, _cstring_7, _cstring_8, _cstring_9, _cstring_10, _cstring_11, _cstring_12, _cstring_13, _cstring_14, _cstring_15, 0x0, 0x0


;Initialized constant data of q_parse:
SECTION .rdata


;Zero initialized global or static variables of q_parse:
SECTION .bss
g_parse: resb 0x8c80


;All cstrings:
SECTION .rdata
_cstring_null:		db 0
_cstring_matchtoken_got_s:		db "MatchToken: got ",27h,"%s",27h,", expected ",27h,"%s",27h,0ah,0
_cstring_ungettoken_calle:		db "UngetToken called twice",0
_cstring_sfile_s_line_i_s:		db "%sFile %s, line %i: %s",0
_cstring_s:		db "%s",0
_cstring_:		db "(",0
_cstring_1:		db ")",0
_cstring_com_endparsesess:		db 015h,"Com_EndParseSession: session underflow",0
_cstring_sfile_s_line_i_s1:		db 015h,"%sFile %s, line %i: %s",0
_cstring_s1:		db 015h,"%s",0
_cstring_already_parsing:		db "Already parsing:",0ah,0
_cstring_com_beginparsese:		db 015h,"Com_BeginParseSession: session overflow trying to parse %s",0ah,0
_cstring_i_s:		db "%i. %s",0ah,0
_cstring_2:		db "+=",0
_cstring_3:		db "-=",0
_cstring_4:		db "*=",0
_cstring_5:		db "/=",0
_cstring_6:		db "&=",0
_cstring_7:		db "|=",0
_cstring_8:		db "++",0
_cstring_9:		db "--",0
_cstring_10:		db "&&",0
_cstring_11:		db "||",0
_cstring_12:		db "<=",0
_cstring_13:		db ">=",0
_cstring_14:		db "==",0
_cstring_15:		db "!=",0



;All constant floats and doubles:
SECTION .rdata

