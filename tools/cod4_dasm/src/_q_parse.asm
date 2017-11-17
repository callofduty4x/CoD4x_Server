;Imports of q_parse:
	extern Sys_IsMainThread
	extern Sys_IsDatabaseThread
	extern memcpy
	extern atoi
	extern strcmp
	extern atof
	extern vsnprintf
	extern Com_PrintError
	extern Com_Error
	extern Com_Printf

;Exports of q_parse:
	global g_parse
	global punctuation
	global Com_ParseExt
	global Com_SetCSV
	global Com_Compress
	global Com_ParseInt
	global Com_InitParse
	global Com_MatchToken
	global Com_ParseFloat
	global Com_UngetToken
	global Com_ParseOnLine
	global Com_ScriptError
	global Com_Parse1DMatrix
	global Com_SkipRestOfLine
	global Com_EndParseSession
	global Com_GetLastTokenPos
	global Com_ScriptErrorDrop
	global Com_ParseFloatOnLine
	global Com_BeginParseSession
	global Com_SetSpaceDelimited
	global Com_SkipBracedSection
	global Com_ResetParseSessions
	global Com_GetCurrentParseLine
	global Com_SetKeepStringQuotes
	global Com_SetScriptWarningPrefix
	global Com_SetParseNegativeNumbers
	global Com_Parse


SECTION .text


;Com_ParseExt(char const**, int)
Com_ParseExt:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov [ebp-0x2c], eax
	mov [ebp-0x30], edx
	call Sys_IsMainThread
	test al, al
	jz Com_ParseExt_10
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
	jz Com_ParseExt_20
Com_ParseExt_400:
	mov eax, [esi+0x400]
	mov [esi+0x414], eax
	mov edx, [ebp-0x2c]
	mov eax, [edx]
	mov [esi+0x418], eax
	cmp byte [esi+0x407], 0x0
	jnz Com_ParseExt_30
	mov dword [ebp-0x20], 0x0
	call Sys_IsMainThread
	test al, al
	jz Com_ParseExt_40
Com_ParseExt_150:
	mov ecx, g_parse
Com_ParseExt_160:
	mov eax, [ecx+0x4200]
	mov edx, eax
	shl edx, 0x5
	shl eax, 0xa
	add edx, eax
	lea edx, [ecx+edx]
	movzx eax, byte [ebx]
	cmp al, 0x20
	jle Com_ParseExt_50
Com_ParseExt_170:
	mov ecx, [ebp-0x20]
	test ecx, ecx
	jz Com_ParseExt_60
	mov edx, [ebp-0x30]
	test edx, edx
	jz Com_ParseExt_70
Com_ParseExt_60:
	mov edx, eax
	cmp al, 0x2f
	jnz Com_ParseExt_80
	movzx eax, byte [ebx+0x1]
	cmp al, 0x2f
	jz Com_ParseExt_90
	cmp al, 0x2a
	jz Com_ParseExt_100
	jmp Com_ParseExt_110
Com_ParseExt_140:
	cmp al, 0xa
	jnz Com_ParseExt_120
	add dword [esi+0x400], 0x1
Com_ParseExt_120:
	mov ebx, edx
	movzx eax, byte [edx+0x1]
Com_ParseExt_100:
	lea edx, [ebx+0x1]
	test al, al
	jz Com_ParseExt_130
	cmp al, 0x2a
	jnz Com_ParseExt_140
	cmp byte [ebx+0x2], 0x2f
	jnz Com_ParseExt_120
	lea edx, [ebx+0x3]
Com_ParseExt_130:
	mov ebx, edx
Com_ParseExt_220:
	call Sys_IsMainThread
	test al, al
	jnz Com_ParseExt_150
Com_ParseExt_40:
	call Sys_IsDatabaseThread
	xor ecx, ecx
	test al, al
	mov eax, g_parse+0x460c
	cmovnz ecx, eax
	jmp Com_ParseExt_160
Com_ParseExt_200:
	add dword [edx+0x400], 0x1
	mov dword [ebp-0x20], 0x1
Com_ParseExt_190:
	add ebx, 0x1
	movzx eax, byte [ebx]
	cmp al, 0x20
	jg Com_ParseExt_170
Com_ParseExt_50:
	test al, al
	jz Com_ParseExt_180
	cmp al, 0xa
	jnz Com_ParseExt_190
	jmp Com_ParseExt_200
Com_ParseExt_210:
	mov ebx, edx
	movzx eax, byte [edx+0x1]
Com_ParseExt_90:
	lea edx, [ebx+0x1]
	test al, al
	jz Com_ParseExt_130
	cmp al, 0xa
	jnz Com_ParseExt_210
	mov ebx, edx
	jmp Com_ParseExt_220
Com_ParseExt_30:
	call Sys_IsMainThread
	test al, al
	jz Com_ParseExt_230
	mov ecx, g_parse
Com_ParseExt_410:
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
	jnz Com_ParseExt_240
	movzx eax, byte [edx]
	cmp al, 0xd
	jz Com_ParseExt_250
	cmp al, 0xa
	jz Com_ParseExt_250
Com_ParseExt_330:
	mov eax, [ecx+0x4204]
	mov [ecx+0x4208], eax
	mov [ecx+0x4204], edx
	xor ecx, ecx
Com_ParseExt_370:
	movzx eax, byte [edx]
	test al, al
	jz Com_ParseExt_260
Com_ParseExt_300:
	cmp al, 0x2c
	jz Com_ParseExt_270
	cmp al, 0xa
	jz Com_ParseExt_260
	cmp al, 0xd
	jz Com_ParseExt_280
	cmp al, 0x22
	jz Com_ParseExt_290
	cmp ecx, 0x3fe
	ja Com_ParseExt_280
	mov [ebx+ecx], al
	add ecx, 0x1
Com_ParseExt_280:
	add edx, 0x1
	movzx eax, byte [edx]
	test al, al
	jnz Com_ParseExt_300
Com_ParseExt_260:
	cmp byte [edx], 0x0
	jz Com_ParseExt_310
Com_ParseExt_420:
	mov eax, [ebp-0x2c]
	mov [eax], edx
	mov byte [ebx+ecx], 0x0
Com_ParseExt_250:
	mov edi, ebx
Com_ParseExt_470:
	mov eax, edi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_ParseExt_320:
	add edx, 0x1
Com_ParseExt_240:
	movzx eax, byte [edx]
	cmp al, 0xd
	jz Com_ParseExt_320
	cmp al, 0xa
	jnz Com_ParseExt_330
	add edx, 0x1
	jmp Com_ParseExt_240
Com_ParseExt_290:
	lea eax, [edx+0x1]
Com_ParseExt_390:
	movzx edx, byte [eax]
	cmp dl, 0x22
	jz Com_ParseExt_340
Com_ParseExt_360:
	cmp ecx, 0x3fe
	ja Com_ParseExt_350
	mov [ebx+ecx], dl
	add ecx, 0x1
Com_ParseExt_350:
	add eax, 0x1
	movzx edx, byte [eax]
	cmp dl, 0x22
	jnz Com_ParseExt_360
Com_ParseExt_340:
	lea edx, [eax+0x1]
	cmp byte [eax+0x1], 0x22
	jnz Com_ParseExt_370
	cmp ecx, 0x3fe
	ja Com_ParseExt_380
	mov byte [ebx+ecx], 0x22
	add ecx, 0x1
Com_ParseExt_380:
	add eax, 0x2
	jmp Com_ParseExt_390
Com_ParseExt_180:
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
Com_ParseExt_10:
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
	jnz Com_ParseExt_400
Com_ParseExt_20:
	mov dword [eax], 0x0
	mov edi, esi
	mov eax, edi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_ParseExt_310:
	test ecx, ecx
	mov eax, 0x0
	cmovz edx, eax
	mov eax, [ebp-0x2c]
	mov [eax], edx
	mov byte [ebx+ecx], 0x0
	jmp Com_ParseExt_250
Com_ParseExt_230:
	call Sys_IsDatabaseThread
	xor ecx, ecx
	test al, al
	mov eax, g_parse+0x460c
	cmovnz ecx, eax
	jmp Com_ParseExt_410
Com_ParseExt_270:
	add edx, 0x1
	cmp byte [edx], 0x0
	jnz Com_ParseExt_420
	jmp Com_ParseExt_310
Com_ParseExt_80:
	mov ecx, eax
Com_ParseExt_480:
	mov eax, [edi+0x4204]
	mov [edi+0x4208], eax
	mov [edi+0x4204], ebx
	cmp cl, 0x22
	jz Com_ParseExt_430
	cmp byte [esi+0x405], 0x0
	jz Com_ParseExt_440
	mov eax, esi
	xor ecx, ecx
Com_ParseExt_860:
	mov [eax], dl
	add ecx, 0x1
	cmp ecx, 0x3fe
	jle Com_ParseExt_450
Com_ParseExt_460:
	add ebx, 0x1
	cmp byte [ebx], 0x20
	jg Com_ParseExt_460
	cmp ecx, 0x400
	mov eax, 0x0
	cmovz ecx, eax
Com_ParseExt_850:
	mov byte [esi+ecx], 0x0
	mov eax, [ebp-0x2c]
	mov [eax], ebx
	mov edi, esi
	jmp Com_ParseExt_470
Com_ParseExt_110:
	mov ecx, 0x2f
	mov edx, 0x2f
	jmp Com_ParseExt_480
Com_ParseExt_70:
	mov edi, esi
	jmp Com_ParseExt_470
Com_ParseExt_440:
	lea eax, [ecx-0x30]
	cmp al, 0x9
	jbe Com_ParseExt_490
	cmp byte [esi+0x408], 0x0
	jz Com_ParseExt_500
	cmp cl, 0x2d
	jz Com_ParseExt_510
Com_ParseExt_500:
	cmp cl, 0x2e
	jz Com_ParseExt_520
Com_ParseExt_610:
	lea eax, [ecx-0x61]
	cmp al, 0x19
	jbe Com_ParseExt_530
	lea eax, [ecx-0x41]
	cmp al, 0x19
	jbe Com_ParseExt_530
	cmp cl, 0x5f
	jz Com_ParseExt_530
	cmp cl, 0x2f
	jz Com_ParseExt_530
	cmp cl, 0x5c
	jz Com_ParseExt_530
	mov ecx, [punctuation]
	mov [ebp-0x28], ecx
	test ecx, ecx
	jz Com_ParseExt_540
	mov dword [ebp-0x1c], punctuation
	jmp Com_ParseExt_550
Com_ParseExt_570:
	jz Com_ParseExt_560
Com_ParseExt_580:
	mov ecx, [ebp-0x1c]
	mov ecx, [ecx+0x4]
	mov [ebp-0x28], ecx
	add dword [ebp-0x1c], 0x4
	test ecx, ecx
	jz Com_ParseExt_540
Com_ParseExt_550:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp-0x28]
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [ebp-0x24], ecx
	cmp ecx, 0x0
	jle Com_ParseExt_570
	mov ecx, [ebp-0x28]
	movzx eax, byte [ecx]
	cmp al, [ebx]
	jnz Com_ParseExt_580
	xor edx, edx
	jmp Com_ParseExt_590
Com_ParseExt_600:
	mov ecx, [ebp-0x28]
	movzx eax, byte [edx+ecx]
	cmp al, [ebx+edx]
	jnz Com_ParseExt_580
Com_ParseExt_590:
	add edx, 0x1
	cmp edx, [ebp-0x24]
	jnz Com_ParseExt_600
Com_ParseExt_560:
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
	jmp Com_ParseExt_470
Com_ParseExt_510:
	movzx eax, byte [ebx+0x1]
	cmp al, 0x2f
	jle Com_ParseExt_610
	cmp al, 0x39
	jg Com_ParseExt_610
	mov edx, 0x2d
Com_ParseExt_490:
	mov edi, esi
	xor ecx, ecx
Com_ParseExt_890:
	mov [edi], dl
	add ecx, 0x1
	cmp ecx, 0x3fe
	jle Com_ParseExt_620
Com_ParseExt_630:
	add ebx, 0x1
	movzx edx, byte [ebx]
	lea eax, [edx-0x30]
	cmp al, 0x9
	jbe Com_ParseExt_630
	cmp dl, 0x2e
	jz Com_ParseExt_630
Com_ParseExt_880:
	cmp dl, 0x65
	jz Com_ParseExt_640
	cmp dl, 0x45
	jz Com_ParseExt_640
Com_ParseExt_820:
	cmp ecx, 0x400
	mov eax, 0x0
	cmovz ecx, eax
	mov byte [esi+ecx], 0x0
	mov edx, [ebp-0x2c]
	mov [edx], ebx
	mov edi, esi
	jmp Com_ParseExt_470
Com_ParseExt_530:
	mov ecx, esi
	xor edi, edi
Com_ParseExt_920:
	mov [ecx], dl
	add edi, 0x1
	cmp edi, 0x3fe
	jle Com_ParseExt_650
Com_ParseExt_660:
	add ebx, 0x1
	movzx edx, byte [ebx]
	lea eax, [edx-0x61]
	cmp al, 0x19
	jbe Com_ParseExt_660
	lea eax, [edx-0x41]
	cmp al, 0x19
	jbe Com_ParseExt_660
	cmp dl, 0x5f
	jz Com_ParseExt_660
	lea eax, [edx-0x30]
	cmp al, 0x9
	jbe Com_ParseExt_660
	cmp edi, 0x400
	mov eax, 0x0
	cmovz edi, eax
Com_ParseExt_910:
	mov byte [esi+edi], 0x0
	mov eax, [ebp-0x2c]
	mov [eax], ebx
	mov edi, esi
	jmp Com_ParseExt_470
Com_ParseExt_430:
	cmp byte [esi+0x406], 0x0
	jnz Com_ParseExt_670
	xor edi, edi
Com_ParseExt_770:
	lea eax, [ebx+0x1]
Com_ParseExt_720:
	movzx edx, byte [eax]
	lea ebx, [eax+0x1]
	cmp dl, 0x5c
	jz Com_ParseExt_680
	cmp dl, 0x22
	jz Com_ParseExt_690
	test dl, dl
	jz Com_ParseExt_690
Com_ParseExt_740:
	cmp byte [ebx], 0xa
	jz Com_ParseExt_700
Com_ParseExt_750:
	cmp edi, 0x3fe
	jg Com_ParseExt_710
	mov [esi+edi], dl
	add edi, 0x1
Com_ParseExt_710:
	mov eax, ebx
	jmp Com_ParseExt_720
Com_ParseExt_680:
	movzx ecx, byte [eax+0x1]
	cmp cl, 0x22
	jz Com_ParseExt_730
	cmp cl, 0x5c
	jnz Com_ParseExt_740
Com_ParseExt_730:
	lea ebx, [eax+0x2]
	mov edx, ecx
	jmp Com_ParseExt_750
Com_ParseExt_700:
	add dword [esi+0x400], 0x1
	jmp Com_ParseExt_750
Com_ParseExt_690:
	cmp byte [esi+0x406], 0x0
	jz Com_ParseExt_760
	mov byte [esi+edi], 0x22
	add edi, 0x1
Com_ParseExt_760:
	mov byte [esi+edi], 0x0
	mov ecx, [ebp-0x2c]
	mov [ecx], ebx
	mov edi, esi
	jmp Com_ParseExt_470
Com_ParseExt_670:
	mov byte [esi], 0x22
	mov edi, 0x1
	jmp Com_ParseExt_770
Com_ParseExt_640:
	cmp ecx, 0x3fe
	jg Com_ParseExt_780
	mov [esi+ecx], dl
	add ecx, 0x1
Com_ParseExt_780:
	lea eax, [ebx+0x1]
	movzx edx, byte [ebx+0x1]
	cmp dl, 0x2d
	jz Com_ParseExt_790
	cmp dl, 0x2b
	jz Com_ParseExt_790
Com_ParseExt_840:
	mov ebx, eax
Com_ParseExt_810:
	cmp ecx, 0x3fe
	jg Com_ParseExt_800
	mov [esi+ecx], dl
	add ecx, 0x1
Com_ParseExt_800:
	add ebx, 0x1
	movzx edx, byte [ebx]
	lea eax, [edx-0x30]
	cmp al, 0x9
	jbe Com_ParseExt_810
	jmp Com_ParseExt_820
Com_ParseExt_790:
	cmp ecx, 0x3fe
	jg Com_ParseExt_830
	mov [esi+ecx], dl
	add ecx, 0x1
Com_ParseExt_830:
	lea eax, [ebx+0x2]
	movzx edx, byte [ebx+0x2]
	jmp Com_ParseExt_840
Com_ParseExt_520:
	movzx eax, byte [ebx+0x1]
	cmp al, 0x2f
	jle Com_ParseExt_610
	cmp al, 0x39
	jg Com_ParseExt_610
	mov edx, 0x2e
	jmp Com_ParseExt_490
Com_ParseExt_540:
	movzx eax, byte [ebx]
	mov [esi], al
	mov byte [esi+0x1], 0x0
	lea eax, [ebx+0x1]
	mov edx, [ebp-0x2c]
	mov [edx], eax
	mov edi, esi
	jmp Com_ParseExt_470
Com_ParseExt_450:
	add ebx, 0x1
	movzx edx, byte [ebx]
	cmp dl, 0x20
	jle Com_ParseExt_850
	add eax, 0x1
	jmp Com_ParseExt_860
Com_ParseExt_620:
	add ebx, 0x1
	movzx edx, byte [ebx]
	lea eax, [edx-0x30]
	cmp al, 0x9
	jbe Com_ParseExt_870
	cmp dl, 0x2e
	jnz Com_ParseExt_880
Com_ParseExt_870:
	add edi, 0x1
	jmp Com_ParseExt_890
Com_ParseExt_650:
	add ebx, 0x1
	movzx edx, byte [ebx]
	lea eax, [edx-0x61]
	cmp al, 0x19
	jbe Com_ParseExt_900
	lea eax, [edx-0x41]
	cmp al, 0x19
	jbe Com_ParseExt_900
	cmp dl, 0x5f
	jz Com_ParseExt_900
	lea eax, [edx-0x30]
	cmp al, 0x9
	ja Com_ParseExt_910
Com_ParseExt_900:
	add ecx, 0x1
	jmp Com_ParseExt_920
	nop


;Com_SetCSV(int)
Com_SetCSV:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call Sys_IsMainThread
	test al, al
	jz Com_SetCSV_10
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
Com_SetCSV_10:
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
Com_Compress:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4
	mov eax, [ebp+0x8]
	test eax, eax
	jz Com_Compress_10
	mov ecx, eax
	mov [ebp-0x10], eax
	xor ebx, ebx
	movzx edx, byte [eax]
Com_Compress_50:
	test dl, dl
	jnz Com_Compress_20
Com_Compress_90:
	mov byte [ecx], 0x0
	mov eax, ebx
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_Compress_10:
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
Com_Compress_20:
	cmp dl, 0xd
	jz Com_Compress_30
	cmp dl, 0xa
	jz Com_Compress_30
	cmp dl, 0x2f
	jz Com_Compress_40
	add dword [ebp-0x10], 0x1
Com_Compress_80:
	mov [ecx], dl
	add ecx, 0x1
	add ebx, 0x1
	mov eax, [ebp-0x10]
	movzx edx, byte [eax]
	jmp Com_Compress_50
Com_Compress_30:
	mov [ecx], dl
	add ecx, 0x1
	add ebx, 0x1
	add dword [ebp-0x10], 0x1
	mov eax, [ebp-0x10]
	movzx edx, byte [eax]
	jmp Com_Compress_50
Com_Compress_40:
	mov edi, [ebp-0x10]
	add edi, 0x1
	mov eax, [ebp-0x10]
	movzx esi, byte [eax+0x1]
	mov eax, esi
	cmp al, 0x2f
	jz Com_Compress_60
	mov eax, esi
	cmp al, 0x2a
	jz Com_Compress_70
	mov [ebp-0x10], edi
	jmp Com_Compress_80
Com_Compress_60:
	mov [ebp-0x10], edi
	movzx edx, byte [edi]
	test dl, dl
	jz Com_Compress_90
	cmp dl, 0xa
	jz Com_Compress_50
	lea edi, [edi+0x1]
	jmp Com_Compress_60
Com_Compress_70:
	mov edx, edi
	mov eax, esi
	test al, al
	jz Com_Compress_100
	cmp al, 0x2a
	jz Com_Compress_110
	mov eax, esi
	cmp al, 0xa
	jnz Com_Compress_120
	mov byte [ecx], 0xa
	add ecx, 0x1
	add ebx, 0x1
Com_Compress_120:
	mov [ebp-0x10], edi
	lea edi, [edi+0x1]
	movzx esi, byte [edx+0x1]
	jmp Com_Compress_70
Com_Compress_110:
	mov eax, [ebp-0x10]
	cmp byte [eax+0x2], 0x2f
	jnz Com_Compress_120
	add eax, 0x3
	mov [ebp-0x10], eax
	movzx edx, byte [eax]
	jmp Com_Compress_50
Com_Compress_100:
	mov [ebp-0x10], edi
	movzx edx, byte [edi]
	jmp Com_Compress_50


;Com_ParseInt(char const**)
Com_ParseInt:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	call Sys_IsMainThread
	test al, al
	jz Com_ParseInt_10
	mov ecx, g_parse
Com_ParseInt_30:
	mov eax, [ecx+0x4200]
	mov edx, eax
	shl edx, 0x5
	shl eax, 0xa
	add edx, eax
	lea edx, [ecx+edx]
	cmp byte [edx+0x404], 0x0
	jz Com_ParseInt_20
	mov byte [edx+0x404], 0x0
	mov eax, [edx+0x418]
	mov [ebx], eax
	mov eax, [edx+0x414]
	mov [edx+0x400], eax
Com_ParseInt_20:
	mov edx, 0x1
	mov eax, ebx
	call Com_ParseExt
	mov [ebp+0x8], eax
	add esp, 0x4
	pop ebx
	pop ebp
	jmp atoi
Com_ParseInt_10:
	call Sys_IsDatabaseThread
	xor ecx, ecx
	test al, al
	mov eax, g_parse+0x460c
	cmovnz ecx, eax
	jmp Com_ParseInt_30
	nop


;Com_InitParse()
Com_InitParse:
	push ebp
	mov ebp, esp
	xor edx, edx
	mov eax, g_parse
Com_InitParse_10:
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
	jnz Com_InitParse_10
	pop ebp
	ret


;Com_MatchToken(char const**, char const*, int)
Com_MatchToken:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	call Sys_IsMainThread
	test al, al
	jz Com_MatchToken_10
	mov ecx, g_parse
Com_MatchToken_50:
	mov eax, [ecx+0x4200]
	mov edx, eax
	shl edx, 0x5
	shl eax, 0xa
	add edx, eax
	lea edx, [ecx+edx]
	cmp byte [edx+0x404], 0x0
	jz Com_MatchToken_20
	mov byte [edx+0x404], 0x0
	mov eax, [edx+0x418]
	mov [ebx], eax
	mov eax, [edx+0x414]
	mov [edx+0x400], eax
Com_MatchToken_20:
	mov edx, 0x1
	mov eax, ebx
	call Com_ParseExt
	mov ebx, eax
	mov [esp+0x4], esi
	mov [esp], eax
	call strcmp
	test eax, eax
	jz Com_MatchToken_30
	mov eax, [ebp+0x10]
	test eax, eax
	jz Com_MatchToken_40
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_matchtoken_got_s
	call Com_ScriptError
	xor eax, eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Com_MatchToken_40:
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_matchtoken_got_s
	call Com_ScriptErrorDrop
	xor eax, eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Com_MatchToken_30:
	mov al, 0x1
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Com_MatchToken_10:
	call Sys_IsDatabaseThread
	xor ecx, ecx
	test al, al
	mov eax, g_parse+0x460c
	cmovnz ecx, eax
	jmp Com_MatchToken_50
	nop


;Com_ParseFloat(char const**)
Com_ParseFloat:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x8]
	call Sys_IsMainThread
	test al, al
	jz Com_ParseFloat_10
	mov ecx, g_parse
Com_ParseFloat_30:
	mov eax, [ecx+0x4200]
	mov edx, eax
	shl edx, 0x5
	shl eax, 0xa
	add edx, eax
	lea edx, [ecx+edx]
	cmp byte [edx+0x404], 0x0
	jz Com_ParseFloat_20
	mov byte [edx+0x404], 0x0
	mov eax, [edx+0x418]
	mov [ebx], eax
	mov eax, [edx+0x414]
	mov [edx+0x400], eax
Com_ParseFloat_20:
	mov edx, 0x1
	mov eax, ebx
	call Com_ParseExt
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
Com_ParseFloat_10:
	call Sys_IsDatabaseThread
	xor ecx, ecx
	test al, al
	mov eax, g_parse+0x460c
	cmovnz ecx, eax
	jmp Com_ParseFloat_30


;Com_UngetToken()
Com_UngetToken:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	call Sys_IsMainThread
	test al, al
	jz Com_UngetToken_10
	mov esi, g_parse
Com_UngetToken_30:
	mov eax, [esi+0x4200]
	mov edx, eax
	shl edx, 0x5
	shl eax, 0xa
	add edx, eax
	lea ebx, [esi+edx]
	cmp byte [ebx+0x404], 0x0
	jz Com_UngetToken_20
	mov dword [esp], _cstring_ungettoken_calle
	call Com_ScriptErrorDrop
Com_UngetToken_20:
	mov byte [ebx+0x404], 0x1
	mov eax, [esi+0x4208]
	mov [esi+0x4204], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Com_UngetToken_10:
	call Sys_IsDatabaseThread
	xor esi, esi
	test al, al
	mov eax, g_parse+0x460c
	cmovnz esi, eax
	jmp Com_UngetToken_30
	nop
	add [eax], al


;Com_ParseOnLine(char const**)
Com_ParseOnLine:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	call Sys_IsMainThread
	test al, al
	jz Com_ParseOnLine_10
	mov ecx, g_parse
Com_ParseOnLine_40:
	mov eax, [ecx+0x4200]
	mov edx, eax
	shl edx, 0x5
	shl eax, 0xa
	add edx, eax
	lea edx, [ecx+edx]
	cmp byte [edx+0x404], 0x0
	jz Com_ParseOnLine_20
	mov byte [edx+0x404], 0x0
	cmp byte [edx+0x405], 0x0
	jnz Com_ParseOnLine_30
	mov eax, edx
	add esp, 0x4
	pop ebx
	pop ebp
	ret
Com_ParseOnLine_30:
	mov eax, [edx+0x418]
	mov [ebx], eax
	mov eax, [edx+0x414]
	mov [edx+0x400], eax
Com_ParseOnLine_20:
	xor edx, edx
	mov eax, ebx
	add esp, 0x4
	pop ebx
	pop ebp
	jmp Com_ParseExt
Com_ParseOnLine_10:
	call Sys_IsDatabaseThread
	xor ecx, ecx
	test al, al
	mov eax, g_parse+0x460c
	cmovnz ecx, eax
	jmp Com_ParseOnLine_40
	nop


;Com_ScriptError(char const*, ...)
Com_ScriptError:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x103c
	call Sys_IsMainThread
	test al, al
	jz Com_ScriptError_10
	mov edi, g_parse
Com_ScriptError_30:
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
	jz Com_ScriptError_20
	mov [esp+0x14], ebx
	mov eax, [esi+0x400]
	mov [esp+0x10], eax
	mov eax, [esi+0x41c]
	mov [esp+0xc], eax
	mov eax, [esi+0x410]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_sfile_s_line_i_s
	mov dword [esp], 0x17
	call Com_PrintError
	add esp, 0x103c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_ScriptError_20:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x17
	call Com_PrintError
	add esp, 0x103c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_ScriptError_10:
	call Sys_IsDatabaseThread
	xor edi, edi
	test al, al
	mov eax, g_parse+0x460c
	cmovnz edi, eax
	jmp Com_ScriptError_30


;Com_Parse1DMatrix(char const**, int, float*)
Com_Parse1DMatrix:
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
	call Com_MatchToken
	test edi, edi
	jg Com_Parse1DMatrix_10
Com_Parse1DMatrix_40:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_1
	mov [esp], esi
	call Com_MatchToken
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_Parse1DMatrix_10:
	xor ebx, ebx
	jmp Com_Parse1DMatrix_20
Com_Parse1DMatrix_50:
	mov ecx, g_parse
Com_Parse1DMatrix_60:
	mov eax, [ecx+0x4200]
	mov edx, eax
	shl edx, 0x5
	shl eax, 0xa
	add edx, eax
	lea edx, [ecx+edx]
	cmp byte [edx+0x404], 0x0
	jz Com_Parse1DMatrix_30
	mov byte [edx+0x404], 0x0
	mov eax, [edx+0x418]
	mov [esi], eax
	mov eax, [edx+0x414]
	mov [edx+0x400], eax
Com_Parse1DMatrix_30:
	mov edx, 0x1
	mov eax, esi
	call Com_ParseExt
	mov [esp], eax
	call atof
	fstp qword [ebp-0x20]
	cvtsd2ss xmm0, [ebp-0x20]
	mov eax, [ebp+0x10]
	movss [eax+ebx*4], xmm0
	add ebx, 0x1
	cmp edi, ebx
	jz Com_Parse1DMatrix_40
Com_Parse1DMatrix_20:
	call Sys_IsMainThread
	test al, al
	jnz Com_Parse1DMatrix_50
	call Sys_IsDatabaseThread
	xor ecx, ecx
	test al, al
	mov eax, g_parse+0x460c
	cmovnz ecx, eax
	jmp Com_Parse1DMatrix_60
	nop


;Com_SkipRestOfLine(char const**)
Com_SkipRestOfLine:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	call Sys_IsMainThread
	test al, al
	jz Com_SkipRestOfLine_10
	mov ecx, g_parse
Com_SkipRestOfLine_50:
	mov eax, [ecx+0x4200]
	mov edx, eax
	shl edx, 0x5
	shl eax, 0xa
	add edx, eax
	add ecx, edx
	mov edx, [ebx]
	test edx, edx
	jz Com_SkipRestOfLine_20
Com_SkipRestOfLine_40:
	movzx eax, byte [edx]
	test al, al
	jz Com_SkipRestOfLine_30
	add edx, 0x1
	cmp al, 0xa
	jnz Com_SkipRestOfLine_40
	add dword [ecx+0x400], 0x1
Com_SkipRestOfLine_30:
	mov [ebx], edx
Com_SkipRestOfLine_20:
	add esp, 0x4
	pop ebx
	pop ebp
	ret
Com_SkipRestOfLine_10:
	call Sys_IsDatabaseThread
	xor ecx, ecx
	test al, al
	mov eax, g_parse+0x460c
	cmovnz ecx, eax
	jmp Com_SkipRestOfLine_50


;Com_EndParseSession()
Com_EndParseSession:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	call Sys_IsMainThread
	test al, al
	jz Com_EndParseSession_10
	mov ebx, g_parse
Com_EndParseSession_30:
	mov edx, [ebx+0x4200]
	test edx, edx
	jnz Com_EndParseSession_20
	mov dword [esp+0x4], _cstring_com_endparsesess
	mov dword [esp], 0x1
	call Com_Error
Com_EndParseSession_20:
	sub dword [ebx+0x4200], 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Com_EndParseSession_10:
	call Sys_IsDatabaseThread
	xor ebx, ebx
	test al, al
	mov eax, g_parse+0x460c
	cmovnz ebx, eax
	jmp Com_EndParseSession_30
	nop


;Com_GetLastTokenPos()
Com_GetLastTokenPos:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call Sys_IsMainThread
	test al, al
	jz Com_GetLastTokenPos_10
	mov edx, g_parse
	mov eax, [edx+0x4204]
	leave
	ret
Com_GetLastTokenPos_10:
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
Com_ScriptErrorDrop:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x103c
	call Sys_IsMainThread
	test al, al
	jz Com_ScriptErrorDrop_10
	mov edi, g_parse
Com_ScriptErrorDrop_30:
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
	jz Com_ScriptErrorDrop_20
	mov [esp+0x14], ebx
	mov eax, [esi+0x400]
	mov [esp+0x10], eax
	mov eax, [esi+0x41c]
	mov [esp+0xc], eax
	mov eax, [esi+0x40c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_sfile_s_line_i_s1
	mov dword [esp], 0x2
	call Com_Error
	add esp, 0x103c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_ScriptErrorDrop_20:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_s1
	mov dword [esp], 0x2
	call Com_Error
	add esp, 0x103c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_ScriptErrorDrop_10:
	call Sys_IsDatabaseThread
	xor edi, edi
	test al, al
	mov eax, g_parse+0x460c
	cmovnz edi, eax
	jmp Com_ScriptErrorDrop_30


;Com_ParseFloatOnLine(char const**)
Com_ParseFloatOnLine:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	call Sys_IsMainThread
	test al, al
	jz Com_ParseFloatOnLine_10
	mov ecx, g_parse
Com_ParseFloatOnLine_40:
	mov eax, [ecx+0x4200]
	mov edx, eax
	shl edx, 0x5
	shl eax, 0xa
	add edx, eax
	lea edx, [ecx+edx]
	cmp byte [edx+0x404], 0x0
	jz Com_ParseFloatOnLine_20
	mov byte [edx+0x404], 0x0
	cmp byte [edx+0x405], 0x0
	jz Com_ParseFloatOnLine_30
	mov eax, [edx+0x418]
	mov ecx, [ebp+0x8]
	mov [ecx], eax
	mov eax, [edx+0x414]
	mov [edx+0x400], eax
Com_ParseFloatOnLine_20:
	xor edx, edx
	mov eax, [ebp+0x8]
	call Com_ParseExt
	mov [esp], eax
	call atof
	fstp qword [ebp-0x10]
	cvtsd2ss xmm0, [ebp-0x10]
	movss [ebp-0x14], xmm0
	fld dword [ebp-0x14]
	leave
	ret
Com_ParseFloatOnLine_30:
	mov eax, edx
	mov [esp], eax
	call atof
	fstp qword [ebp-0x10]
	cvtsd2ss xmm0, [ebp-0x10]
	movss [ebp-0x14], xmm0
	fld dword [ebp-0x14]
	leave
	ret
Com_ParseFloatOnLine_10:
	call Sys_IsDatabaseThread
	xor ecx, ecx
	test al, al
	mov eax, g_parse+0x460c
	cmovnz ecx, eax
	jmp Com_ParseFloatOnLine_40
	nop


;Com_BeginParseSession(char const*)
Com_BeginParseSession:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	call Sys_IsMainThread
	test al, al
	jz Com_BeginParseSession_10
	mov esi, g_parse
	cmp dword [esi+0x4200], 0xf
	jz Com_BeginParseSession_20
Com_BeginParseSession_30:
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
Com_BeginParseSession_10:
	call Sys_IsDatabaseThread
	xor esi, esi
	test al, al
	mov eax, g_parse+0x460c
	cmovnz esi, eax
	cmp dword [esi+0x4200], 0xf
	jnz Com_BeginParseSession_30
Com_BeginParseSession_20:
	mov dword [esp+0x4], _cstring_already_parsing
	mov dword [esp], 0x17
	call Com_Printf
	mov eax, [esi+0x4200]
	test eax, eax
	jg Com_BeginParseSession_40
Com_BeginParseSession_60:
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_com_beginparsese
	mov dword [esp], 0x1
	call Com_Error
	jmp Com_BeginParseSession_30
Com_BeginParseSession_40:
	mov ebx, esi
	xor edi, edi
Com_BeginParseSession_50:
	mov eax, [ebx+0x41c]
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_i_s
	mov dword [esp], 0x17
	call Com_Printf
	add edi, 0x1
	add ebx, 0x420
	cmp [esi+0x4200], edi
	jg Com_BeginParseSession_50
	jmp Com_BeginParseSession_60
	nop


;Com_SetSpaceDelimited(int)
Com_SetSpaceDelimited:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call Sys_IsMainThread
	test al, al
	jz Com_SetSpaceDelimited_10
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
Com_SetSpaceDelimited_10:
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
Com_SkipBracedSection:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xc
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	xor edi, edi
	jmp Com_SkipBracedSection_10
Com_SkipBracedSection_60:
	mov ecx, g_parse
Com_SkipBracedSection_70:
	mov eax, [ecx+0x4200]
	mov edx, eax
	shl edx, 0x5
	shl eax, 0xa
	add edx, eax
	lea edx, [ecx+edx]
	cmp byte [edx+0x404], 0x0
	jz Com_SkipBracedSection_20
	mov byte [edx+0x404], 0x0
	mov eax, [edx+0x418]
	mov [esi], eax
	mov eax, [edx+0x414]
	mov [edx+0x400], eax
Com_SkipBracedSection_20:
	mov edx, 0x1
	mov eax, esi
	call Com_ParseExt
	cmp byte [eax+0x1], 0x0
	jnz Com_SkipBracedSection_30
	movzx edx, byte [eax]
	cmp dl, 0x7b
	jz Com_SkipBracedSection_40
	lea eax, [ebx-0x1]
	cmp dl, 0x7d
	cmovz ebx, eax
Com_SkipBracedSection_30:
	test ebx, ebx
	jz Com_SkipBracedSection_50
	mov edx, [esi]
	test edx, edx
	jz Com_SkipBracedSection_50
Com_SkipBracedSection_10:
	call Sys_IsMainThread
	test al, al
	jnz Com_SkipBracedSection_60
	call Sys_IsDatabaseThread
	xor ecx, ecx
	test al, al
	mov eax, g_parse+0x460c
	cmovnz ecx, eax
	jmp Com_SkipBracedSection_70
Com_SkipBracedSection_50:
	mov eax, edi
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_SkipBracedSection_40:
	cmp ebx, [ebp+0x10]
	jz Com_SkipBracedSection_80
	add ebx, 0x1
	jmp Com_SkipBracedSection_30
Com_SkipBracedSection_80:
	mov edi, 0x1
	jmp Com_SkipBracedSection_30
	nop


;Com_ResetParseSessions()
Com_ResetParseSessions:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call Sys_IsMainThread
	test al, al
	jz Com_ResetParseSessions_10
	mov edx, g_parse
	mov dword [edx+0x4200], 0x0
	leave
	ret
Com_ResetParseSessions_10:
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
Com_GetCurrentParseLine:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call Sys_IsMainThread
	test al, al
	jz Com_GetCurrentParseLine_10
	mov ecx, g_parse
	mov eax, [ecx+0x4200]
	mov edx, eax
	shl edx, 0x5
	shl eax, 0xa
	add edx, eax
	mov eax, [ecx+edx+0x400]
	leave
	ret
Com_GetCurrentParseLine_10:
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
Com_SetKeepStringQuotes:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call Sys_IsMainThread
	test al, al
	jz Com_SetKeepStringQuotes_10
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
Com_SetKeepStringQuotes_10:
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
Com_SetScriptWarningPrefix:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call Sys_IsMainThread
	test al, al
	jz Com_SetScriptWarningPrefix_10
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
Com_SetScriptWarningPrefix_10:
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
Com_SetParseNegativeNumbers:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call Sys_IsMainThread
	test al, al
	jz Com_SetParseNegativeNumbers_10
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
Com_SetParseNegativeNumbers_10:
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
Com_Parse:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	call Sys_IsMainThread
	test al, al
	jz Com_Parse_10
	mov ecx, g_parse
Com_Parse_30:
	mov eax, [ecx+0x4200]
	mov edx, eax
	shl edx, 0x5
	shl eax, 0xa
	add edx, eax
	lea edx, [ecx+edx]
	cmp byte [edx+0x404], 0x0
	jz Com_Parse_20
	mov byte [edx+0x404], 0x0
	mov eax, [edx+0x418]
	mov [ebx], eax
	mov eax, [edx+0x414]
	mov [edx+0x400], eax
Com_Parse_20:
	mov edx, 0x1
	mov eax, ebx
	add esp, 0x4
	pop ebx
	pop ebp
	jmp Com_ParseExt
Com_Parse_10:
	call Sys_IsDatabaseThread
	xor ecx, ecx
	test al, al
	mov eax, g_parse+0x460c
	cmovnz ecx, eax
	jmp Com_Parse_30
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

