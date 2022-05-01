;Imports of unzip:
	extern fread
	extern ferror
	extern fseek
	extern memcpy
	extern free
	extern fclose
	extern inflateEnd
	extern __i686.get_pc_thunk.bx
	extern fopen
	extern fileno
	extern fcntl
	extern FS_FileGetFileSize
	extern malloc
	extern inflateInit2_
	extern Com_Memcpy
	extern inflate

;Exports of unzip:
	global unzlocal_getLong
	global unzlocal_GetCurrentFileInfoInternal
	global unzClose
	global unzCloseCurrentFile
	global unzGetCurrentFileInfo
	global unzGetCurrentFileInfoPosition
	global unzGetGlobalInfo
	global unzGoToFirstFile
	global unzGoToNextFile
	global unzOpen
	global unzOpenCurrentFile
	global unzReOpen
	global unzReadCurrentFile
	global unzSetCurrentFileInfoPosition
	global unztell


SECTION .text


;unzlocal_getLong
unzlocal_getLong:
	push ebp
	mov ebp, esp
	push edi
	push esi
	sub esp, 0x40
	mov edi, eax
	mov [ebp-0x2c], edx
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	lea eax, [ebp-0x9]
	mov [ebp-0x30], eax
	mov [esp], eax
	call fread
	sub eax, 0x1
	jz unzlocal_getLong_10
	mov [esp], edi
	call ferror
	test eax, eax
	jz unzlocal_getLong_20
	mov dword [ebp-0x24], 0xffffffff
	mov esi, [ebp-0x28]
unzlocal_getLong_120:
	mov eax, esi
	shl eax, 0x8
	add eax, [ebp-0x28]
	mov [ebp-0x20], eax
	mov ecx, [ebp-0x24]
	test ecx, ecx
	jz unzlocal_getLong_30
unzlocal_getLong_60:
	mov eax, esi
	shl eax, 0x10
	add eax, [ebp-0x20]
	mov [ebp-0x1c], eax
	mov edx, [ebp-0x24]
	test edx, edx
	jz unzlocal_getLong_40
unzlocal_getLong_80:
	mov edx, eax
	shl esi, 0x18
	add edx, esi
	xor eax, eax
	mov esi, [ebp-0x24]
	test esi, esi
	cmovz eax, edx
	mov edx, [ebp-0x2c]
	mov [edx], eax
	mov eax, [ebp-0x24]
	add esp, 0x40
	pop esi
	pop edi
	pop ebp
	ret
unzlocal_getLong_20:
	mov dword [ebp-0x24], 0x0
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov eax, [ebp-0x30]
	mov [esp], eax
	call fread
	sub eax, 0x1
	jnz unzlocal_getLong_50
unzlocal_getLong_100:
	movzx esi, byte [ebp-0x9]
	mov eax, esi
	shl eax, 0x8
	add eax, [ebp-0x28]
	mov [ebp-0x20], eax
	mov ecx, [ebp-0x24]
	test ecx, ecx
	jnz unzlocal_getLong_60
unzlocal_getLong_30:
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov edx, [ebp-0x30]
	mov [esp], edx
	call fread
	sub eax, 0x1
	jz unzlocal_getLong_70
	mov [esp], edi
	call ferror
	test eax, eax
	mov eax, 0xffffffff
	cmovz eax, [ebp-0x24]
	mov [ebp-0x24], eax
	mov eax, esi
	shl eax, 0x10
	add eax, [ebp-0x20]
	mov [ebp-0x1c], eax
	mov edx, [ebp-0x24]
	test edx, edx
	jnz unzlocal_getLong_80
unzlocal_getLong_40:
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov eax, [ebp-0x30]
	mov [esp], eax
	call fread
	sub eax, 0x1
	jz unzlocal_getLong_90
	mov [esp], edi
	call ferror
	test eax, eax
	mov eax, 0xffffffff
	cmovz eax, [ebp-0x24]
	mov [ebp-0x24], eax
	mov edx, [ebp-0x1c]
	shl esi, 0x18
	add edx, esi
	xor eax, eax
	mov esi, [ebp-0x24]
	test esi, esi
	cmovz eax, edx
	mov edx, [ebp-0x2c]
	mov [edx], eax
	mov eax, [ebp-0x24]
	add esp, 0x40
	pop esi
	pop edi
	pop ebp
	ret
unzlocal_getLong_10:
	movzx edx, byte [ebp-0x9]
	mov [ebp-0x28], edx
	mov dword [ebp-0x24], 0x0
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov eax, [ebp-0x30]
	mov [esp], eax
	call fread
	sub eax, 0x1
	jz unzlocal_getLong_100
unzlocal_getLong_50:
	mov [esp], edi
	call ferror
	test eax, eax
	jnz unzlocal_getLong_110
	mov esi, [ebp-0x28]
	jmp unzlocal_getLong_120
unzlocal_getLong_110:
	mov esi, [ebp-0x28]
	mov dword [ebp-0x24], 0xffffffff
	jmp unzlocal_getLong_120
unzlocal_getLong_70:
	movzx esi, byte [ebp-0x9]
	jmp unzlocal_getLong_60
unzlocal_getLong_90:
	movzx esi, byte [ebp-0x9]
	mov edx, [ebp-0x1c]
	shl esi, 0x18
	add edx, esi
	xor eax, eax
	mov esi, [ebp-0x24]
	test esi, esi
	cmovz eax, edx
	mov edx, [ebp-0x2c]
	mov [edx], eax
	mov eax, [ebp-0x24]
	add esp, 0x40
	pop esi
	pop edi
	pop ebp
	ret


;unzlocal_GetCurrentFileInfoInternal
unzlocal_GetCurrentFileInfoInternal:
	push ebp
	mov ebp, esp
	push edi
	push esi
	sub esp, 0xd0
	mov edi, eax
	mov [ebp-0xc0], edx
	mov [ebp-0xc4], ecx
	test eax, eax
	jz unzlocal_GetCurrentFileInfoInternal_10
	mov dword [esp+0x8], 0x0
	mov eax, [eax+0x14]
	add eax, [edi+0xc]
	mov [esp+0x4], eax
	mov eax, [edi]
	mov [esp], eax
	call fseek
	test eax, eax
	jz unzlocal_GetCurrentFileInfoInternal_20
unzlocal_GetCurrentFileInfoInternal_870:
	mov dword [ebp-0xbc], 0xffffffff
unzlocal_GetCurrentFileInfoInternal_880:
	mov esi, [edi]
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	lea eax, [ebp-0x9]
	mov [ebp-0xc8], eax
	mov [esp], eax
	call fread
	sub eax, 0x1
	jz unzlocal_GetCurrentFileInfoInternal_30
	mov [esp], esi
	call ferror
	test eax, eax
	jz unzlocal_GetCurrentFileInfoInternal_40
	mov dword [ebp-0xb4], 0xffffffff
	mov eax, [ebp-0xb8]
unzlocal_GetCurrentFileInfoInternal_760:
	shl eax, 0x8
	add eax, [ebp-0xb8]
	mov ecx, [ebp-0xb4]
	test ecx, ecx
	jnz unzlocal_GetCurrentFileInfoInternal_50
unzlocal_GetCurrentFileInfoInternal_430:
	mov [ebp-0x64], eax
unzlocal_GetCurrentFileInfoInternal_440:
	mov esi, [edi]
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov eax, [ebp-0xc8]
	mov [esp], eax
	call fread
	sub eax, 0x1
	jnz unzlocal_GetCurrentFileInfoInternal_60
	movzx edx, byte [ebp-0x9]
	mov [ebp-0xb0], edx
	mov dword [ebp-0xac], 0x0
unzlocal_GetCurrentFileInfoInternal_1000:
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov ecx, [ebp-0xc8]
	mov [esp], ecx
	call fread
	sub eax, 0x1
	jnz unzlocal_GetCurrentFileInfoInternal_70
	movzx eax, byte [ebp-0x9]
unzlocal_GetCurrentFileInfoInternal_820:
	shl eax, 0x8
	add eax, [ebp-0xb0]
	mov edx, [ebp-0xac]
	test edx, edx
	jnz unzlocal_GetCurrentFileInfoInternal_80
unzlocal_GetCurrentFileInfoInternal_640:
	mov [ebp-0x60], eax
unzlocal_GetCurrentFileInfoInternal_650:
	mov esi, [edi]
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov eax, [ebp-0xc8]
	mov [esp], eax
	call fread
	sub eax, 0x1
	jnz unzlocal_GetCurrentFileInfoInternal_90
	movzx edx, byte [ebp-0x9]
	mov [ebp-0xa8], edx
	mov dword [ebp-0xa4], 0x0
unzlocal_GetCurrentFileInfoInternal_970:
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov ecx, [ebp-0xc8]
	mov [esp], ecx
	call fread
	sub eax, 0x1
	jnz unzlocal_GetCurrentFileInfoInternal_100
	movzx eax, byte [ebp-0x9]
unzlocal_GetCurrentFileInfoInternal_860:
	shl eax, 0x8
	add eax, [ebp-0xa8]
	mov esi, [ebp-0xa4]
	test esi, esi
	jnz unzlocal_GetCurrentFileInfoInternal_110
unzlocal_GetCurrentFileInfoInternal_580:
	mov [ebp-0x5c], eax
unzlocal_GetCurrentFileInfoInternal_590:
	mov esi, [edi]
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov eax, [ebp-0xc8]
	mov [esp], eax
	call fread
	sub eax, 0x1
	jnz unzlocal_GetCurrentFileInfoInternal_120
	movzx edx, byte [ebp-0x9]
	mov [ebp-0xa0], edx
	mov dword [ebp-0x9c], 0x0
unzlocal_GetCurrentFileInfoInternal_980:
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov ecx, [ebp-0xc8]
	mov [esp], ecx
	call fread
	sub eax, 0x1
	jnz unzlocal_GetCurrentFileInfoInternal_130
	movzx eax, byte [ebp-0x9]
unzlocal_GetCurrentFileInfoInternal_740:
	shl eax, 0x8
	add eax, [ebp-0xa0]
	mov ecx, [ebp-0x9c]
	test ecx, ecx
	jnz unzlocal_GetCurrentFileInfoInternal_140
unzlocal_GetCurrentFileInfoInternal_670:
	mov [ebp-0x58], eax
unzlocal_GetCurrentFileInfoInternal_680:
	lea edx, [ebp-0x54]
	mov eax, [edi]
	call unzlocal_getLong
	mov esi, 0xffffffff
	test eax, eax
	mov eax, [ebp-0xbc]
	cmovnz eax, esi
	mov [ebp-0xbc], eax
	mov ecx, [ebp-0x54]
	mov edx, ecx
	shr edx, 0x10
	mov eax, edx
	and eax, 0x1f
	mov [ebp-0x20], eax
	mov eax, edx
	and eax, 0x1e0
	shr eax, 0x5
	sub eax, 0x1
	mov [ebp-0x1c], eax
	shr edx, 0x9
	add edx, 0x7bc
	mov [ebp-0x18], edx
	mov eax, ecx
	and eax, 0xf800
	shr eax, 0xb
	mov [ebp-0x24], eax
	mov eax, ecx
	and eax, 0x7e0
	shr eax, 0x5
	mov [ebp-0x28], eax
	and ecx, 0x1f
	add ecx, ecx
	mov [ebp-0x2c], ecx
	lea edx, [ebp-0x50]
	mov eax, [edi]
	call unzlocal_getLong
	test eax, eax
	mov edx, [ebp-0xbc]
	cmovnz edx, esi
	mov [ebp-0xbc], edx
	lea edx, [ebp-0x4c]
	mov eax, [edi]
	call unzlocal_getLong
	test eax, eax
	mov ecx, [ebp-0xbc]
	cmovnz ecx, esi
	mov [ebp-0xbc], ecx
	lea edx, [ebp-0x48]
	mov eax, [edi]
	call unzlocal_getLong
	test eax, eax
	cmovz esi, [ebp-0xbc]
	mov [ebp-0xbc], esi
	mov esi, [edi]
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov eax, [ebp-0xc8]
	mov [esp], eax
	call fread
	sub eax, 0x1
	jnz unzlocal_GetCurrentFileInfoInternal_150
	movzx edx, byte [ebp-0x9]
	mov [ebp-0x98], edx
	mov dword [ebp-0x94], 0x0
unzlocal_GetCurrentFileInfoInternal_1010:
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov ecx, [ebp-0xc8]
	mov [esp], ecx
	call fread
	sub eax, 0x1
	jnz unzlocal_GetCurrentFileInfoInternal_160
	movzx eax, byte [ebp-0x9]
unzlocal_GetCurrentFileInfoInternal_720:
	shl eax, 0x8
	add eax, [ebp-0x98]
	mov edx, [ebp-0x94]
	test edx, edx
	jnz unzlocal_GetCurrentFileInfoInternal_170
unzlocal_GetCurrentFileInfoInternal_610:
	mov [ebp-0x44], eax
unzlocal_GetCurrentFileInfoInternal_620:
	mov esi, [edi]
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov eax, [ebp-0xc8]
	mov [esp], eax
	call fread
	sub eax, 0x1
	jnz unzlocal_GetCurrentFileInfoInternal_180
	movzx edx, byte [ebp-0x9]
	mov [ebp-0x90], edx
	mov dword [ebp-0x8c], 0x0
unzlocal_GetCurrentFileInfoInternal_1020:
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov ecx, [ebp-0xc8]
	mov [esp], ecx
	call fread
	sub eax, 0x1
	jnz unzlocal_GetCurrentFileInfoInternal_190
	movzx eax, byte [ebp-0x9]
unzlocal_GetCurrentFileInfoInternal_700:
	shl eax, 0x8
	add eax, [ebp-0x90]
	mov esi, [ebp-0x8c]
	test esi, esi
	jnz unzlocal_GetCurrentFileInfoInternal_200
unzlocal_GetCurrentFileInfoInternal_550:
	mov [ebp-0x40], eax
unzlocal_GetCurrentFileInfoInternal_560:
	mov esi, [edi]
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov eax, [ebp-0xc8]
	mov [esp], eax
	call fread
	sub eax, 0x1
	jnz unzlocal_GetCurrentFileInfoInternal_210
	movzx edx, byte [ebp-0x9]
	mov [ebp-0x88], edx
	mov dword [ebp-0x84], 0x0
unzlocal_GetCurrentFileInfoInternal_960:
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov ecx, [ebp-0xc8]
	mov [esp], ecx
	call fread
	sub eax, 0x1
	jnz unzlocal_GetCurrentFileInfoInternal_220
	movzx eax, byte [ebp-0x9]
unzlocal_GetCurrentFileInfoInternal_840:
	shl eax, 0x8
	add eax, [ebp-0x88]
	mov ecx, [ebp-0x84]
	test ecx, ecx
	jnz unzlocal_GetCurrentFileInfoInternal_230
unzlocal_GetCurrentFileInfoInternal_520:
	mov [ebp-0x3c], eax
unzlocal_GetCurrentFileInfoInternal_530:
	mov esi, [edi]
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov eax, [ebp-0xc8]
	mov [esp], eax
	call fread
	sub eax, 0x1
	jnz unzlocal_GetCurrentFileInfoInternal_240
	movzx edx, byte [ebp-0x9]
	mov [ebp-0x80], edx
	mov dword [ebp-0x7c], 0x0
unzlocal_GetCurrentFileInfoInternal_950:
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov ecx, [ebp-0xc8]
	mov [esp], ecx
	call fread
	sub eax, 0x1
	jnz unzlocal_GetCurrentFileInfoInternal_250
	movzx eax, byte [ebp-0x9]
unzlocal_GetCurrentFileInfoInternal_800:
	shl eax, 0x8
	add eax, [ebp-0x80]
	mov edx, [ebp-0x7c]
	test edx, edx
	jnz unzlocal_GetCurrentFileInfoInternal_260
unzlocal_GetCurrentFileInfoInternal_490:
	mov [ebp-0x38], eax
unzlocal_GetCurrentFileInfoInternal_500:
	mov esi, [edi]
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov eax, [ebp-0xc8]
	mov [esp], eax
	call fread
	sub eax, 0x1
	jnz unzlocal_GetCurrentFileInfoInternal_270
	movzx edx, byte [ebp-0x9]
	mov [ebp-0x78], edx
	mov dword [ebp-0x74], 0x0
unzlocal_GetCurrentFileInfoInternal_990:
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov ecx, [ebp-0xc8]
	mov [esp], ecx
	call fread
	sub eax, 0x1
	jnz unzlocal_GetCurrentFileInfoInternal_280
	movzx eax, byte [ebp-0x9]
unzlocal_GetCurrentFileInfoInternal_780:
	shl eax, 0x8
	add eax, [ebp-0x78]
	mov esi, [ebp-0x74]
	test esi, esi
	jnz unzlocal_GetCurrentFileInfoInternal_290
unzlocal_GetCurrentFileInfoInternal_460:
	mov [ebp-0x34], eax
unzlocal_GetCurrentFileInfoInternal_470:
	lea edx, [ebp-0x30]
	mov eax, [edi]
	call unzlocal_getLong
	mov esi, 0xffffffff
	test eax, eax
	mov eax, [ebp-0xbc]
	cmovnz eax, esi
	mov [ebp-0xbc], eax
	lea edx, [ebp-0x10]
	mov eax, [edi]
	call unzlocal_getLong
	test eax, eax
	cmovz esi, [ebp-0xbc]
	mov [ebp-0xbc], esi
	mov esi, [ebp-0x44]
	mov ecx, [ebp-0xbc]
	test ecx, ecx
	jnz unzlocal_GetCurrentFileInfoInternal_300
	mov edx, [ebp+0x8]
	test edx, edx
	jz unzlocal_GetCurrentFileInfoInternal_310
	cmp esi, [ebp+0xc]
	jb unzlocal_GetCurrentFileInfoInternal_320
	mov edx, [ebp+0xc]
	mov [ebp-0x70], edx
unzlocal_GetCurrentFileInfoInternal_1040:
	mov eax, [ebp-0x44]
	test eax, eax
	jz unzlocal_GetCurrentFileInfoInternal_330
	mov eax, [ebp+0xc]
	test eax, eax
	jnz unzlocal_GetCurrentFileInfoInternal_340
unzlocal_GetCurrentFileInfoInternal_330:
	mov dword [ebp-0xbc], 0x0
unzlocal_GetCurrentFileInfoInternal_1070:
	sub esi, [ebp-0x70]
	mov eax, [ebp-0xbc]
	test eax, eax
	jz unzlocal_GetCurrentFileInfoInternal_310
unzlocal_GetCurrentFileInfoInternal_300:
	mov edx, esi
	add edx, [ebp-0x40]
unzlocal_GetCurrentFileInfoInternal_920:
	mov esi, [ebp-0xbc]
	test esi, esi
	jnz unzlocal_GetCurrentFileInfoInternal_350
	mov ecx, [ebp+0x18]
	test ecx, ecx
	jz unzlocal_GetCurrentFileInfoInternal_360
	mov eax, [ebp-0x3c]
	cmp eax, [ebp+0x1c]
	jb unzlocal_GetCurrentFileInfoInternal_370
	mov esi, [ebp+0x1c]
	test edx, edx
	jnz unzlocal_GetCurrentFileInfoInternal_380
unzlocal_GetCurrentFileInfoInternal_930:
	mov dword [ebp-0xbc], 0x0
unzlocal_GetCurrentFileInfoInternal_940:
	mov eax, [ebp-0x3c]
	test eax, eax
	jz unzlocal_GetCurrentFileInfoInternal_390
	mov eax, [ebp+0x1c]
	test eax, eax
	jnz unzlocal_GetCurrentFileInfoInternal_400
unzlocal_GetCurrentFileInfoInternal_390:
	mov eax, [ebp-0xbc]
	test eax, eax
	jnz unzlocal_GetCurrentFileInfoInternal_350
unzlocal_GetCurrentFileInfoInternal_360:
	mov eax, [ebp-0xc0]
	test eax, eax
	jz unzlocal_GetCurrentFileInfoInternal_410
	lea eax, [ebp-0x64]
	mov dword [esp+0x8], 0x50
	mov [esp+0x4], eax
	mov edx, [ebp-0xc0]
	mov [esp], edx
	call memcpy
unzlocal_GetCurrentFileInfoInternal_410:
	mov eax, [ebp-0xc4]
	test eax, eax
	jz unzlocal_GetCurrentFileInfoInternal_350
	mov eax, [ebp-0x10]
	mov ecx, [ebp-0xc4]
	mov [ecx], eax
unzlocal_GetCurrentFileInfoInternal_350:
	mov eax, [ebp-0xbc]
	add esp, 0xd0
	pop esi
	pop edi
	pop ebp
	ret
unzlocal_GetCurrentFileInfoInternal_30:
	movzx edx, byte [ebp-0x9]
	mov [ebp-0xb8], edx
	mov dword [ebp-0xb4], 0x0
unzlocal_GetCurrentFileInfoInternal_1030:
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov ecx, [ebp-0xc8]
	mov [esp], ecx
	call fread
	sub eax, 0x1
	jnz unzlocal_GetCurrentFileInfoInternal_420
	movzx eax, byte [ebp-0x9]
	shl eax, 0x8
	add eax, [ebp-0xb8]
	mov ecx, [ebp-0xb4]
	test ecx, ecx
	jz unzlocal_GetCurrentFileInfoInternal_430
unzlocal_GetCurrentFileInfoInternal_50:
	mov dword [ebp-0x64], 0x0
	mov dword [ebp-0xbc], 0xffffffff
	jmp unzlocal_GetCurrentFileInfoInternal_440
unzlocal_GetCurrentFileInfoInternal_270:
	mov [esp], esi
	call ferror
	test eax, eax
	jz unzlocal_GetCurrentFileInfoInternal_450
	mov dword [ebp-0x74], 0xffffffff
	mov eax, [ebp-0x78]
	shl eax, 0x8
	add eax, [ebp-0x78]
	mov esi, [ebp-0x74]
	test esi, esi
	jz unzlocal_GetCurrentFileInfoInternal_460
unzlocal_GetCurrentFileInfoInternal_290:
	mov dword [ebp-0x34], 0x0
	mov dword [ebp-0xbc], 0xffffffff
	jmp unzlocal_GetCurrentFileInfoInternal_470
unzlocal_GetCurrentFileInfoInternal_240:
	mov [esp], esi
	call ferror
	test eax, eax
	jz unzlocal_GetCurrentFileInfoInternal_480
	mov dword [ebp-0x7c], 0xffffffff
	mov eax, [ebp-0x80]
	shl eax, 0x8
	add eax, [ebp-0x80]
	mov edx, [ebp-0x7c]
	test edx, edx
	jz unzlocal_GetCurrentFileInfoInternal_490
unzlocal_GetCurrentFileInfoInternal_260:
	mov dword [ebp-0x38], 0x0
	mov dword [ebp-0xbc], 0xffffffff
	jmp unzlocal_GetCurrentFileInfoInternal_500
unzlocal_GetCurrentFileInfoInternal_210:
	mov [esp], esi
	call ferror
	test eax, eax
	jz unzlocal_GetCurrentFileInfoInternal_510
	mov dword [ebp-0x84], 0xffffffff
	mov eax, [ebp-0x88]
	shl eax, 0x8
	add eax, [ebp-0x88]
	mov ecx, [ebp-0x84]
	test ecx, ecx
	jz unzlocal_GetCurrentFileInfoInternal_520
unzlocal_GetCurrentFileInfoInternal_230:
	mov dword [ebp-0x3c], 0x0
	mov dword [ebp-0xbc], 0xffffffff
	jmp unzlocal_GetCurrentFileInfoInternal_530
unzlocal_GetCurrentFileInfoInternal_180:
	mov [esp], esi
	call ferror
	test eax, eax
	jz unzlocal_GetCurrentFileInfoInternal_540
	mov dword [ebp-0x8c], 0xffffffff
	mov eax, [ebp-0x90]
	shl eax, 0x8
	add eax, [ebp-0x90]
	mov esi, [ebp-0x8c]
	test esi, esi
	jz unzlocal_GetCurrentFileInfoInternal_550
unzlocal_GetCurrentFileInfoInternal_200:
	mov dword [ebp-0x40], 0x0
	mov dword [ebp-0xbc], 0xffffffff
	jmp unzlocal_GetCurrentFileInfoInternal_560
unzlocal_GetCurrentFileInfoInternal_90:
	mov [esp], esi
	call ferror
	test eax, eax
	jz unzlocal_GetCurrentFileInfoInternal_570
	mov dword [ebp-0xa4], 0xffffffff
	mov eax, [ebp-0xa8]
	shl eax, 0x8
	add eax, [ebp-0xa8]
	mov esi, [ebp-0xa4]
	test esi, esi
	jz unzlocal_GetCurrentFileInfoInternal_580
unzlocal_GetCurrentFileInfoInternal_110:
	mov dword [ebp-0x5c], 0x0
	mov dword [ebp-0xbc], 0xffffffff
	jmp unzlocal_GetCurrentFileInfoInternal_590
unzlocal_GetCurrentFileInfoInternal_150:
	mov [esp], esi
	call ferror
	test eax, eax
	jz unzlocal_GetCurrentFileInfoInternal_600
	mov dword [ebp-0x94], 0xffffffff
	mov eax, [ebp-0x98]
	shl eax, 0x8
	add eax, [ebp-0x98]
	mov edx, [ebp-0x94]
	test edx, edx
	jz unzlocal_GetCurrentFileInfoInternal_610
unzlocal_GetCurrentFileInfoInternal_170:
	mov dword [ebp-0x44], 0x0
	mov dword [ebp-0xbc], 0xffffffff
	jmp unzlocal_GetCurrentFileInfoInternal_620
unzlocal_GetCurrentFileInfoInternal_60:
	mov [esp], esi
	call ferror
	test eax, eax
	jz unzlocal_GetCurrentFileInfoInternal_630
	mov dword [ebp-0xac], 0xffffffff
	mov eax, [ebp-0xb0]
	shl eax, 0x8
	add eax, [ebp-0xb0]
	mov edx, [ebp-0xac]
	test edx, edx
	jz unzlocal_GetCurrentFileInfoInternal_640
unzlocal_GetCurrentFileInfoInternal_80:
	mov dword [ebp-0x60], 0x0
	mov dword [ebp-0xbc], 0xffffffff
	jmp unzlocal_GetCurrentFileInfoInternal_650
unzlocal_GetCurrentFileInfoInternal_120:
	mov [esp], esi
	call ferror
	test eax, eax
	jz unzlocal_GetCurrentFileInfoInternal_660
	mov dword [ebp-0x9c], 0xffffffff
	mov eax, [ebp-0xa0]
	shl eax, 0x8
	add eax, [ebp-0xa0]
	mov ecx, [ebp-0x9c]
	test ecx, ecx
	jz unzlocal_GetCurrentFileInfoInternal_670
unzlocal_GetCurrentFileInfoInternal_140:
	mov dword [ebp-0x58], 0x0
	mov dword [ebp-0xbc], 0xffffffff
	jmp unzlocal_GetCurrentFileInfoInternal_680
unzlocal_GetCurrentFileInfoInternal_190:
	mov [esp], esi
	call ferror
	test eax, eax
	jnz unzlocal_GetCurrentFileInfoInternal_690
	mov eax, [ebp-0x90]
	jmp unzlocal_GetCurrentFileInfoInternal_700
unzlocal_GetCurrentFileInfoInternal_160:
	mov [esp], esi
	call ferror
	test eax, eax
	jnz unzlocal_GetCurrentFileInfoInternal_710
	mov eax, [ebp-0x98]
	jmp unzlocal_GetCurrentFileInfoInternal_720
unzlocal_GetCurrentFileInfoInternal_130:
	mov [esp], esi
	call ferror
	test eax, eax
	jnz unzlocal_GetCurrentFileInfoInternal_730
	mov eax, [ebp-0xa0]
	jmp unzlocal_GetCurrentFileInfoInternal_740
unzlocal_GetCurrentFileInfoInternal_420:
	mov [esp], esi
	call ferror
	test eax, eax
	jnz unzlocal_GetCurrentFileInfoInternal_750
	mov eax, [ebp-0xb8]
	jmp unzlocal_GetCurrentFileInfoInternal_760
unzlocal_GetCurrentFileInfoInternal_280:
	mov [esp], esi
	call ferror
	test eax, eax
	jnz unzlocal_GetCurrentFileInfoInternal_770
	mov eax, [ebp-0x78]
	jmp unzlocal_GetCurrentFileInfoInternal_780
unzlocal_GetCurrentFileInfoInternal_250:
	mov [esp], esi
	call ferror
	test eax, eax
	jnz unzlocal_GetCurrentFileInfoInternal_790
	mov eax, [ebp-0x80]
	jmp unzlocal_GetCurrentFileInfoInternal_800
unzlocal_GetCurrentFileInfoInternal_70:
	mov [esp], esi
	call ferror
	test eax, eax
	jnz unzlocal_GetCurrentFileInfoInternal_810
	mov eax, [ebp-0xb0]
	jmp unzlocal_GetCurrentFileInfoInternal_820
unzlocal_GetCurrentFileInfoInternal_220:
	mov [esp], esi
	call ferror
	test eax, eax
	jnz unzlocal_GetCurrentFileInfoInternal_830
	mov eax, [ebp-0x88]
	jmp unzlocal_GetCurrentFileInfoInternal_840
unzlocal_GetCurrentFileInfoInternal_100:
	mov [esp], esi
	call ferror
	test eax, eax
	jnz unzlocal_GetCurrentFileInfoInternal_850
	mov eax, [ebp-0xa8]
	jmp unzlocal_GetCurrentFileInfoInternal_860
unzlocal_GetCurrentFileInfoInternal_20:
	lea edx, [ebp-0x14]
	mov eax, [edi]
	call unzlocal_getLong
	test eax, eax
	jnz unzlocal_GetCurrentFileInfoInternal_870
	mov dword [ebp-0xbc], 0xffffff99
	cmp dword [ebp-0x14], 0x2014b50
	cmovnz eax, [ebp-0xbc]
	mov [ebp-0xbc], eax
	jmp unzlocal_GetCurrentFileInfoInternal_880
unzlocal_GetCurrentFileInfoInternal_310:
	mov eax, [ebp+0x10]
	test eax, eax
	jz unzlocal_GetCurrentFileInfoInternal_300
	mov ecx, [ebp-0x40]
	mov eax, [ebp+0x14]
	cmp ecx, eax
	cmovb eax, ecx
	mov [ebp-0x6c], eax
	test esi, esi
	jnz unzlocal_GetCurrentFileInfoInternal_890
unzlocal_GetCurrentFileInfoInternal_1050:
	mov dword [ebp-0xbc], 0x0
	xor esi, esi
unzlocal_GetCurrentFileInfoInternal_1060:
	mov eax, [ebp-0x40]
	test eax, eax
	jz unzlocal_GetCurrentFileInfoInternal_900
	mov eax, [ebp+0x14]
	test eax, eax
	jnz unzlocal_GetCurrentFileInfoInternal_910
unzlocal_GetCurrentFileInfoInternal_900:
	mov eax, [ebp-0x40]
	sub eax, [ebp-0x6c]
	lea edx, [esi+eax]
	jmp unzlocal_GetCurrentFileInfoInternal_920
unzlocal_GetCurrentFileInfoInternal_370:
	mov ecx, [ebp+0x18]
	mov byte [ecx+eax], 0x0
	mov esi, eax
	test edx, edx
	jz unzlocal_GetCurrentFileInfoInternal_930
unzlocal_GetCurrentFileInfoInternal_380:
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], edx
	mov eax, [edi]
	mov [esp], eax
	call fseek
	test eax, eax
	jz unzlocal_GetCurrentFileInfoInternal_930
	mov dword [ebp-0xbc], 0xffffffff
	jmp unzlocal_GetCurrentFileInfoInternal_940
unzlocal_GetCurrentFileInfoInternal_10:
	mov dword [ebp-0xbc], 0xffffff9a
	mov eax, [ebp-0xbc]
	add esp, 0xd0
	pop esi
	pop edi
	pop ebp
	ret
unzlocal_GetCurrentFileInfoInternal_480:
	mov dword [ebp-0x7c], 0x0
	jmp unzlocal_GetCurrentFileInfoInternal_950
unzlocal_GetCurrentFileInfoInternal_510:
	mov dword [ebp-0x84], 0x0
	jmp unzlocal_GetCurrentFileInfoInternal_960
unzlocal_GetCurrentFileInfoInternal_570:
	mov dword [ebp-0xa4], 0x0
	jmp unzlocal_GetCurrentFileInfoInternal_970
unzlocal_GetCurrentFileInfoInternal_660:
	mov dword [ebp-0x9c], 0x0
	jmp unzlocal_GetCurrentFileInfoInternal_980
unzlocal_GetCurrentFileInfoInternal_450:
	mov dword [ebp-0x74], 0x0
	jmp unzlocal_GetCurrentFileInfoInternal_990
unzlocal_GetCurrentFileInfoInternal_630:
	mov dword [ebp-0xac], 0x0
	jmp unzlocal_GetCurrentFileInfoInternal_1000
unzlocal_GetCurrentFileInfoInternal_600:
	mov dword [ebp-0x94], 0x0
	jmp unzlocal_GetCurrentFileInfoInternal_1010
unzlocal_GetCurrentFileInfoInternal_540:
	mov dword [ebp-0x8c], 0x0
	jmp unzlocal_GetCurrentFileInfoInternal_1020
unzlocal_GetCurrentFileInfoInternal_40:
	mov dword [ebp-0xb4], 0x0
	jmp unzlocal_GetCurrentFileInfoInternal_1030
unzlocal_GetCurrentFileInfoInternal_320:
	mov ecx, [ebp+0x8]
	mov byte [ecx+esi], 0x0
	mov [ebp-0x70], esi
	jmp unzlocal_GetCurrentFileInfoInternal_1040
unzlocal_GetCurrentFileInfoInternal_710:
	mov eax, [ebp-0x98]
	mov dword [ebp-0x94], 0xffffffff
	jmp unzlocal_GetCurrentFileInfoInternal_720
unzlocal_GetCurrentFileInfoInternal_690:
	mov eax, [ebp-0x90]
	mov dword [ebp-0x8c], 0xffffffff
	jmp unzlocal_GetCurrentFileInfoInternal_700
unzlocal_GetCurrentFileInfoInternal_850:
	mov eax, [ebp-0xa8]
	mov dword [ebp-0xa4], 0xffffffff
	jmp unzlocal_GetCurrentFileInfoInternal_860
unzlocal_GetCurrentFileInfoInternal_830:
	mov eax, [ebp-0x88]
	mov dword [ebp-0x84], 0xffffffff
	jmp unzlocal_GetCurrentFileInfoInternal_840
unzlocal_GetCurrentFileInfoInternal_810:
	mov eax, [ebp-0xb0]
	mov dword [ebp-0xac], 0xffffffff
	jmp unzlocal_GetCurrentFileInfoInternal_820
unzlocal_GetCurrentFileInfoInternal_790:
	mov eax, [ebp-0x80]
	mov dword [ebp-0x7c], 0xffffffff
	jmp unzlocal_GetCurrentFileInfoInternal_800
unzlocal_GetCurrentFileInfoInternal_770:
	mov eax, [ebp-0x78]
	mov dword [ebp-0x74], 0xffffffff
	jmp unzlocal_GetCurrentFileInfoInternal_780
unzlocal_GetCurrentFileInfoInternal_750:
	mov eax, [ebp-0xb8]
	mov dword [ebp-0xb4], 0xffffffff
	jmp unzlocal_GetCurrentFileInfoInternal_760
unzlocal_GetCurrentFileInfoInternal_730:
	mov eax, [ebp-0xa0]
	mov dword [ebp-0x9c], 0xffffffff
	jmp unzlocal_GetCurrentFileInfoInternal_740
unzlocal_GetCurrentFileInfoInternal_400:
	mov eax, [edi]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x1
	mov eax, [ebp+0x18]
	mov [esp], eax
	call fread
	cmp esi, eax
	jz unzlocal_GetCurrentFileInfoInternal_390
	mov dword [ebp-0xbc], 0xffffffff
	jmp unzlocal_GetCurrentFileInfoInternal_350
unzlocal_GetCurrentFileInfoInternal_890:
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], esi
	mov eax, [edi]
	mov [esp], eax
	call fseek
	test eax, eax
	jz unzlocal_GetCurrentFileInfoInternal_1050
	mov dword [ebp-0xbc], 0xffffffff
	jmp unzlocal_GetCurrentFileInfoInternal_1060
unzlocal_GetCurrentFileInfoInternal_340:
	mov eax, [edi]
	mov [esp+0xc], eax
	mov eax, [ebp-0x70]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov edx, [ebp+0x8]
	mov [esp], edx
	call fread
	cmp [ebp-0x70], eax
	jz unzlocal_GetCurrentFileInfoInternal_330
	mov dword [ebp-0xbc], 0xffffffff
	jmp unzlocal_GetCurrentFileInfoInternal_1070
unzlocal_GetCurrentFileInfoInternal_910:
	mov eax, [edi]
	mov [esp+0xc], eax
	mov edx, [ebp-0x6c]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x1
	mov ecx, [ebp+0x10]
	mov [esp], ecx
	call fread
	cmp [ebp-0x6c], eax
	mov eax, 0xffffffff
	cmovz eax, [ebp-0xbc]
	mov [ebp-0xbc], eax
	jmp unzlocal_GetCurrentFileInfoInternal_900


;unzClose
unzClose:
	push ebp
	mov ebp, esp
	push edi
	push esi
	sub esp, 0x10
	mov edi, [ebp+0x8]
	test edi, edi
	jz unzClose_10
	mov esi, [edi+0x7c]
	test esi, esi
	jz unzClose_20
	mov eax, [esi]
	mov [esp], eax
	call free
	mov dword [esi], 0x0
	mov eax, [esi+0x3c]
	test eax, eax
	jnz unzClose_30
unzClose_40:
	mov dword [esi+0x3c], 0x0
	mov [esp], esi
	call free
	mov dword [edi+0x7c], 0x0
unzClose_20:
	mov eax, [edi]
	mov [esp], eax
	call fclose
	mov [esp], edi
	call free
	xor eax, eax
	add esp, 0x10
	pop esi
	pop edi
	pop ebp
	ret
unzClose_30:
	lea eax, [esi+0x4]
	mov [esp], eax
	call inflateEnd
	jmp unzClose_40
unzClose_10:
	mov eax, 0xffffff9a
	add esp, 0x10
	pop esi
	pop edi
	pop ebp
	ret


;unzCloseCurrentFile
unzCloseCurrentFile:
	push ebp
	mov ebp, esp
	push edi
	push esi
	sub esp, 0x10
	mov edi, [ebp+0x8]
	test edi, edi
	jnz unzCloseCurrentFile_10
unzCloseCurrentFile_20:
	mov eax, 0xffffff9a
	add esp, 0x10
	pop esi
	pop edi
	pop ebp
	ret
unzCloseCurrentFile_10:
	mov esi, [edi+0x7c]
	test esi, esi
	jz unzCloseCurrentFile_20
	mov eax, [esi]
	mov [esp], eax
	call free
	mov dword [esi], 0x0
	mov edx, [esi+0x3c]
	test edx, edx
	jnz unzCloseCurrentFile_30
unzCloseCurrentFile_40:
	mov dword [esi+0x3c], 0x0
	mov [esp], esi
	call free
	mov dword [edi+0x7c], 0x0
	xor eax, eax
	add esp, 0x10
	pop esi
	pop edi
	pop ebp
	ret
unzCloseCurrentFile_30:
	lea eax, [esi+0x4]
	mov [esp], eax
	call inflateEnd
	jmp unzCloseCurrentFile_40


;unzGetCurrentFileInfo
unzGetCurrentFileInfo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	mov [ebp+0x8], ecx
	mov ecx, [ebp+0x14]
	mov [ebp+0xc], ecx
	mov edi, [ebp+0x18]
	mov esi, [ebp+0x1c]
	mov ecx, [ebp+0x24]
	mov [ebp+0x1c], ecx
	mov ecx, [ebp+0x20]
	mov [ebp+0x18], ecx
	mov [ebp+0x14], esi
	mov [ebp+0x10], edi
	xor ecx, ecx
	pop esi
	pop edi
	pop ebp
	jmp unzlocal_GetCurrentFileInfoInternal


;unzGetCurrentFileInfoPosition
unzGetCurrentFileInfoPosition:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	test eax, eax
	jz unzGetCurrentFileInfoPosition_10
	mov eax, [eax+0x14]
	mov edx, [ebp+0xc]
	mov [edx], eax
	xor eax, eax
	pop ebp
	ret
unzGetCurrentFileInfoPosition_10:
	mov eax, 0xffffff9a
	pop ebp
	ret


;unzGetGlobalInfo
unzGetGlobalInfo:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	test eax, eax
	jz unzGetGlobalInfo_10
	mov edx, [eax+0x8]
	mov eax, [eax+0x4]
	mov ecx, [ebp+0xc]
	mov [ecx], eax
	mov [ecx+0x4], edx
	xor eax, eax
	pop ebp
	ret
unzGetGlobalInfo_10:
	mov eax, 0xffffff9a
	pop ebp
	ret


;unzGoToFirstFile
unzGoToFirstFile:
	push ebp
	mov ebp, esp
	push esi
	sub esp, 0x24
	mov esi, [ebp+0x8]
	test esi, esi
	jz unzGoToFirstFile_10
	mov eax, [esi+0x24]
	mov [esi+0x14], eax
	mov dword [esi+0x10], 0x0
	lea ecx, [esi+0x78]
	lea edx, [esi+0x28]
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	mov eax, esi
	call unzlocal_GetCurrentFileInfoInternal
	mov edx, eax
	xor eax, eax
	test edx, edx
	setz al
	mov [esi+0x18], eax
	mov eax, edx
	add esp, 0x24
	pop esi
	pop ebp
	ret
unzGoToFirstFile_10:
	mov edx, 0xffffff9a
	mov eax, edx
	add esp, 0x24
	pop esi
	pop ebp
	ret


;unzGoToNextFile
unzGoToNextFile:
	push ebp
	mov ebp, esp
	push esi
	sub esp, 0x24
	mov esi, [ebp+0x8]
	test esi, esi
	jnz unzGoToNextFile_10
	mov edx, 0xffffff9a
unzGoToNextFile_40:
	mov eax, edx
	add esp, 0x24
	pop esi
	pop ebp
	ret
unzGoToNextFile_10:
	mov eax, [esi+0x18]
	test eax, eax
	jnz unzGoToNextFile_20
unzGoToNextFile_30:
	mov edx, 0xffffff9c
	mov eax, edx
	add esp, 0x24
	pop esi
	pop ebp
	ret
unzGoToNextFile_20:
	mov edx, [esi+0x10]
	add edx, 0x1
	cmp edx, [esi+0x4]
	jz unzGoToNextFile_30
	mov eax, [esi+0x48]
	add eax, [esi+0x4c]
	add eax, [esi+0x50]
	add eax, [esi+0x14]
	add eax, 0x2e
	mov [esi+0x14], eax
	mov [esi+0x10], edx
	lea ecx, [esi+0x78]
	lea edx, [esi+0x28]
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	mov eax, esi
	call unzlocal_GetCurrentFileInfoInternal
	mov edx, eax
	xor eax, eax
	test edx, edx
	setz al
	mov [esi+0x18], eax
	jmp unzGoToNextFile_40


;unzOpen
unzOpen:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xfc
	call __i686.get_pc_thunk.bx
	lea eax, [ebx+0x203ac]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call fopen
	mov [ebp-0xd8], eax
	test eax, eax
	jz unzOpen_10
	mov [esp], eax
	call fileno
	cmp eax, 0xffffffff
	jz unzOpen_20
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x2d
	mov [esp], eax
	call fcntl
unzOpen_20:
	mov eax, [ebp-0xd8]
	mov [esp], eax
	call FS_FileGetFileSize
	mov [ebp-0xac], eax
	cmp eax, 0xfffe
	ja unzOpen_30
	mov [ebp-0xc8], eax
	mov dword [esp], 0x404
	call malloc
	mov [ebp-0xe0], eax
	test eax, eax
	jz unzOpen_40
unzOpen_310:
	cmp dword [ebp-0xc8], 0x4
	jbe unzOpen_50
	mov edi, 0x4
unzOpen_90:
	add edi, 0x400
	cmp [ebp-0xc8], edi
	cmovb edi, [ebp-0xc8]
	mov edx, [ebp-0xac]
	sub edx, edi
	mov [ebp-0xc4], edx
	mov esi, [ebp-0xac]
	sub esi, edx
	cmp esi, 0x405
	mov eax, 0x404
	cmovae esi, eax
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], edx
	mov eax, [ebp-0xd8]
	mov [esp], eax
	call fseek
	test eax, eax
	jnz unzOpen_50
	mov edx, [ebp-0xd8]
	mov [esp+0xc], edx
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x1
	mov eax, [ebp-0xe0]
	mov [esp], eax
	call fread
	cmp esi, eax
	jnz unzOpen_50
	lea ecx, [esi-0x3]
	mov edx, [ebp-0xe0]
	add edx, ecx
	sub ecx, 0x1
	lea eax, [ecx+0x1]
	test eax, eax
	jle unzOpen_60
unzOpen_80:
	cmp byte [edx-0x1], 0x50
	jz unzOpen_70
unzOpen_290:
	sub edx, 0x1
	sub ecx, 0x1
	lea eax, [ecx+0x1]
	test eax, eax
	jg unzOpen_80
unzOpen_60:
	cmp [ebp-0xc8], edi
	ja unzOpen_90
unzOpen_50:
	mov dword [ebp-0xdc], 0x0
unzOpen_300:
	mov edx, [ebp-0xe0]
	mov [esp], edx
	call free
	mov edi, [ebp-0xdc]
	test edi, edi
	jnz unzOpen_100
	mov dword [ebp-0xcc], 0xffffffff
	xor eax, eax
unzOpen_320:
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], eax
	mov eax, [ebp-0xd8]
	mov [esp], eax
	call fseek
	mov esi, 0xffffffff
	test eax, eax
	mov edx, [ebp-0xcc]
	cmovnz edx, esi
	mov [ebp-0xcc], edx
	lea edx, [ebp-0x20]
	mov eax, [ebp-0xd8]
	call unzlocal_getLong
	test eax, eax
	cmovz esi, [ebp-0xcc]
	mov [ebp-0xcc], esi
	mov eax, [ebp-0xd8]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	lea edi, [ebp-0x19]
	mov [esp], edi
	call fread
	sub eax, 0x1
	jnz unzOpen_110
	movzx edx, byte [ebp-0x19]
	mov [ebp-0xc0], edx
	xor esi, esi
unzOpen_380:
	mov edx, [ebp-0xd8]
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call fread
	sub eax, 0x1
	jnz unzOpen_120
	movzx eax, byte [ebp-0x19]
unzOpen_480:
	shl eax, 0x8
	add eax, [ebp-0xc0]
	mov [ebp-0xd4], eax
	test esi, esi
	jz unzOpen_130
	mov dword [ebp-0xcc], 0xffffffff
	mov dword [ebp-0xd4], 0x0
unzOpen_130:
	mov edx, [ebp-0xd8]
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call fread
	sub eax, 0x1
	jnz unzOpen_140
	movzx eax, byte [ebp-0x19]
	mov [ebp-0xbc], eax
	xor esi, esi
unzOpen_420:
	mov eax, [ebp-0xd8]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call fread
	sub eax, 0x1
	jnz unzOpen_150
	movzx eax, byte [ebp-0x19]
unzOpen_540:
	shl eax, 0x8
	add eax, [ebp-0xbc]
	mov [ebp-0xd0], eax
	test esi, esi
	jz unzOpen_160
	mov dword [ebp-0xcc], 0xffffffff
	mov dword [ebp-0xd0], 0x0
unzOpen_160:
	mov eax, [ebp-0xd8]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call fread
	sub eax, 0x1
	jnz unzOpen_170
	movzx edx, byte [ebp-0x19]
	mov [ebp-0xb8], edx
	xor esi, esi
unzOpen_400:
	mov edx, [ebp-0xd8]
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call fread
	sub eax, 0x1
	jnz unzOpen_180
	movzx eax, byte [ebp-0x19]
unzOpen_520:
	shl eax, 0x8
	add eax, [ebp-0xb8]
	test esi, esi
	jnz unzOpen_190
	mov [ebp-0x9c], eax
unzOpen_430:
	mov edx, [ebp-0xd8]
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call fread
	sub eax, 0x1
	jnz unzOpen_200
	movzx eax, byte [ebp-0x19]
	mov [ebp-0xb4], eax
	xor esi, esi
unzOpen_360:
	mov eax, [ebp-0xd8]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call fread
	sub eax, 0x1
	jnz unzOpen_210
	movzx eax, byte [ebp-0x19]
unzOpen_460:
	shl eax, 0x8
	add eax, [ebp-0xb4]
	test esi, esi
	jz unzOpen_220
	mov dword [ebp-0xcc], 0xffffffff
	xor eax, eax
unzOpen_220:
	cmp [ebp-0x9c], eax
	jz unzOpen_230
unzOpen_550:
	mov dword [ebp-0xcc], 0xffffff99
unzOpen_560:
	lea edx, [ebp-0x80]
	mov eax, [ebp-0xd8]
	call unzlocal_getLong
	mov esi, 0xffffffff
	test eax, eax
	mov eax, [ebp-0xcc]
	cmovnz eax, esi
	mov [ebp-0xcc], eax
	lea edx, [ebp-0x7c]
	mov eax, [ebp-0xd8]
	call unzlocal_getLong
	test eax, eax
	cmovz esi, [ebp-0xcc]
	mov [ebp-0xcc], esi
	mov edx, [ebp-0xd8]
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call fread
	sub eax, 0x1
	jnz unzOpen_240
	movzx eax, byte [ebp-0x19]
	mov [ebp-0xb0], eax
	xor esi, esi
unzOpen_340:
	mov eax, [ebp-0xd8]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call fread
	sub eax, 0x1
	jnz unzOpen_250
	movzx eax, byte [ebp-0x19]
unzOpen_500:
	shl eax, 0x8
	add eax, [ebp-0xb0]
	test esi, esi
	jnz unzOpen_260
	mov [ebp-0x98], eax
unzOpen_440:
	mov eax, [ebp-0x7c]
	add eax, [ebp-0x80]
	cmp eax, [ebp-0xdc]
	ja unzOpen_270
	mov edx, [ebp-0xcc]
	test edx, edx
	jz unzOpen_280
unzOpen_270:
	mov eax, [ebp-0xd8]
	mov [esp], eax
	call fclose
	xor esi, esi
	mov eax, esi
	add esp, 0xfc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
unzOpen_70:
	cmp byte [edx], 0x4b
	jnz unzOpen_290
	cmp byte [edx+0x1], 0x5
	jnz unzOpen_290
	cmp byte [edx+0x2], 0x6
	jnz unzOpen_290
	add ecx, [ebp-0xc4]
	mov [ebp-0xdc], ecx
	jz unzOpen_60
	jmp unzOpen_300
unzOpen_30:
	mov dword [ebp-0xc8], 0xffff
	mov dword [esp], 0x404
	call malloc
	mov [ebp-0xe0], eax
	test eax, eax
	jnz unzOpen_310
unzOpen_40:
	mov dword [ebp-0xcc], 0xffffffff
	mov dword [ebp-0xdc], 0x0
	jmp unzOpen_320
unzOpen_10:
	xor esi, esi
	mov eax, esi
	add esp, 0xfc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
unzOpen_240:
	mov edx, [ebp-0xd8]
	mov [esp], edx
	call ferror
	test eax, eax
	jnz unzOpen_330
	xor esi, esi
	jmp unzOpen_340
unzOpen_200:
	mov edx, [ebp-0xd8]
	mov [esp], edx
	call ferror
	test eax, eax
	jnz unzOpen_350
	xor esi, esi
	jmp unzOpen_360
unzOpen_110:
	mov eax, [ebp-0xd8]
	mov [esp], eax
	call ferror
	test eax, eax
	jnz unzOpen_370
	xor esi, esi
	jmp unzOpen_380
unzOpen_170:
	mov eax, [ebp-0xd8]
	mov [esp], eax
	call ferror
	test eax, eax
	jnz unzOpen_390
	xor esi, esi
	jmp unzOpen_400
unzOpen_140:
	mov edx, [ebp-0xd8]
	mov [esp], edx
	call ferror
	test eax, eax
	jnz unzOpen_410
	xor esi, esi
	jmp unzOpen_420
unzOpen_190:
	mov dword [ebp-0x9c], 0x0
	mov dword [ebp-0xcc], 0xffffffff
	jmp unzOpen_430
unzOpen_260:
	mov dword [ebp-0x98], 0x0
	mov dword [ebp-0xcc], 0xffffffff
	jmp unzOpen_440
unzOpen_100:
	mov eax, [ebp-0xdc]
	mov dword [ebp-0xcc], 0x0
	jmp unzOpen_320
unzOpen_210:
	mov edx, [ebp-0xd8]
	mov [esp], edx
	call ferror
	test eax, eax
	jnz unzOpen_450
	mov eax, [ebp-0xb4]
	jmp unzOpen_460
unzOpen_120:
	mov eax, [ebp-0xd8]
	mov [esp], eax
	call ferror
	test eax, eax
	jnz unzOpen_470
	mov eax, [ebp-0xc0]
	jmp unzOpen_480
unzOpen_250:
	mov edx, [ebp-0xd8]
	mov [esp], edx
	call ferror
	test eax, eax
	jnz unzOpen_490
	mov eax, [ebp-0xb0]
	jmp unzOpen_500
unzOpen_180:
	mov eax, [ebp-0xd8]
	mov [esp], eax
	call ferror
	test eax, eax
	jnz unzOpen_510
	mov eax, [ebp-0xb8]
	jmp unzOpen_520
unzOpen_150:
	mov edx, [ebp-0xd8]
	mov [esp], edx
	call ferror
	test eax, eax
	jnz unzOpen_530
	mov eax, [ebp-0xbc]
	jmp unzOpen_540
unzOpen_410:
	mov esi, 0xffffffff
	mov eax, [ebp-0xbc]
	jmp unzOpen_540
unzOpen_390:
	mov esi, 0xffffffff
	mov eax, [ebp-0xb8]
	jmp unzOpen_520
unzOpen_370:
	mov esi, 0xffffffff
	mov eax, [ebp-0xc0]
	jmp unzOpen_480
unzOpen_350:
	mov esi, 0xffffffff
	mov eax, [ebp-0xb4]
	jmp unzOpen_460
unzOpen_330:
	mov esi, 0xffffffff
	mov eax, [ebp-0xb0]
	jmp unzOpen_500
unzOpen_530:
	mov eax, [ebp-0xbc]
	mov esi, 0xffffffff
	jmp unzOpen_540
unzOpen_510:
	mov eax, [ebp-0xb8]
	mov esi, 0xffffffff
	jmp unzOpen_520
unzOpen_490:
	mov eax, [ebp-0xb0]
	mov esi, 0xffffffff
	jmp unzOpen_500
unzOpen_470:
	mov eax, [ebp-0xc0]
	mov esi, 0xffffffff
	jmp unzOpen_480
unzOpen_450:
	mov eax, [ebp-0xb4]
	mov esi, 0xffffffff
	jmp unzOpen_460
unzOpen_230:
	mov esi, [ebp-0xd0]
	test esi, esi
	jnz unzOpen_550
	mov ecx, [ebp-0xd4]
	test ecx, ecx
	jz unzOpen_560
	jmp unzOpen_550
unzOpen_280:
	mov edx, [ebp-0xd8]
	mov [ebp-0xa0], edx
	mov edx, [ebp-0xdc]
	sub edx, eax
	mov [ebp-0x94], edx
	mov eax, [ebp-0xdc]
	mov [ebp-0x84], eax
	mov dword [ebp-0x24], 0x0
	mov dword [esp], 0x80
	call malloc
	mov esi, eax
	lea eax, [ebp-0xa0]
	mov dword [esp+0x8], 0x80
	mov [esp+0x4], eax
	mov [esp], esi
	call memcpy
	mov eax, [esi+0x24]
	mov [esi+0x14], eax
	mov dword [esi+0x10], 0x0
	lea ecx, [esi+0x78]
	lea edx, [esi+0x28]
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	mov eax, esi
	call unzlocal_GetCurrentFileInfoInternal
	test eax, eax
	setz al
	movzx eax, al
	mov [esi+0x18], eax
	mov eax, esi
	add esp, 0xfc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;unzOpenCurrentFile
unzOpenCurrentFile:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	call __i686.get_pc_thunk.bx
	mov esi, [ebp+0x8]
	test esi, esi
	jnz unzOpenCurrentFile_10
unzOpenCurrentFile_20:
	mov eax, 0xffffff9a
unzOpenCurrentFile_60:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
unzOpenCurrentFile_10:
	mov edi, [esi+0x18]
	test edi, edi
	jz unzOpenCurrentFile_20
	mov edi, [esi+0x7c]
	test edi, edi
	jz unzOpenCurrentFile_30
	mov eax, [edi]
	mov [esp], eax
	call free
	mov dword [edi], 0x0
	mov ecx, [edi+0x3c]
	test ecx, ecx
	jnz unzOpenCurrentFile_40
unzOpenCurrentFile_320:
	mov dword [edi+0x3c], 0x0
	mov [esp], edi
	call free
	mov dword [esi+0x7c], 0x0
unzOpenCurrentFile_30:
	mov dword [esp+0x8], 0x0
	mov eax, [esi+0x78]
	add eax, [esi+0xc]
	mov [esp+0x4], eax
	mov eax, [esi]
	mov [esp], eax
	call fseek
	test eax, eax
	jz unzOpenCurrentFile_50
unzOpenCurrentFile_280:
	mov eax, 0xffffff99
	jmp unzOpenCurrentFile_60
unzOpenCurrentFile_50:
	lea edx, [ebp-0x24]
	mov eax, [esi]
	call unzlocal_getLong
	test eax, eax
	jz unzOpenCurrentFile_70
	mov dword [ebp-0x54], 0xffffffff
unzOpenCurrentFile_440:
	mov edi, [esi]
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	lea eax, [ebp-0x19]
	mov [ebp-0x6c], eax
	mov [esp], eax
	call fread
	sub eax, 0x1
	jnz unzOpenCurrentFile_80
	movzx eax, byte [ebp-0x19]
	mov [ebp-0x50], eax
	mov dword [ebp-0x4c], 0x0
unzOpenCurrentFile_540:
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov eax, [ebp-0x6c]
	mov [esp], eax
	call fread
	sub eax, 0x1
	jnz unzOpenCurrentFile_90
	movzx eax, byte [ebp-0x19]
unzOpenCurrentFile_370:
	shl eax, 0x8
	add eax, [ebp-0x50]
	mov edx, [ebp-0x4c]
	test edx, edx
	jnz unzOpenCurrentFile_100
	mov [ebp-0x20], eax
unzOpenCurrentFile_490:
	mov edi, [esi]
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov eax, [ebp-0x6c]
	mov [esp], eax
	call fread
	sub eax, 0x1
	jnz unzOpenCurrentFile_110
	movzx eax, byte [ebp-0x19]
	mov [ebp-0x48], eax
	mov dword [ebp-0x44], 0x0
unzOpenCurrentFile_580:
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov eax, [ebp-0x6c]
	mov [esp], eax
	call fread
	sub eax, 0x1
	jnz unzOpenCurrentFile_120
	movzx eax, byte [ebp-0x19]
unzOpenCurrentFile_410:
	shl eax, 0x8
	add eax, [ebp-0x48]
	mov [ebp-0x60], eax
	mov edi, [ebp-0x44]
	test edi, edi
	jz unzOpenCurrentFile_130
	mov dword [ebp-0x54], 0xffffffff
	mov dword [ebp-0x60], 0x0
unzOpenCurrentFile_130:
	mov edi, [esi]
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov eax, [ebp-0x6c]
	mov [esp], eax
	call fread
	sub eax, 0x1
	jnz unzOpenCurrentFile_140
	movzx eax, byte [ebp-0x19]
	mov [ebp-0x40], eax
	mov dword [ebp-0x3c], 0x0
unzOpenCurrentFile_590:
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov eax, [ebp-0x6c]
	mov [esp], eax
	call fread
	sub eax, 0x1
	jnz unzOpenCurrentFile_150
	movzx eax, byte [ebp-0x19]
unzOpenCurrentFile_510:
	shl eax, 0x8
	add eax, [ebp-0x40]
	mov ecx, [ebp-0x3c]
	test ecx, ecx
	jnz unzOpenCurrentFile_160
	mov [ebp-0x20], eax
	mov edx, [ebp-0x54]
	test edx, edx
	jnz unzOpenCurrentFile_170
	cmp eax, [esi+0x34]
	jz unzOpenCurrentFile_180
unzOpenCurrentFile_610:
	mov dword [ebp-0x54], 0xffffff99
unzOpenCurrentFile_170:
	lea edi, [ebp-0x20]
	mov edx, edi
	mov eax, [esi]
	call unzlocal_getLong
	test eax, eax
	mov eax, 0xffffffff
	cmovz eax, [ebp-0x54]
	mov [ebp-0x54], eax
	mov edx, edi
	mov eax, [esi]
	call unzlocal_getLong
	test eax, eax
	jz unzOpenCurrentFile_190
	mov dword [ebp-0x54], 0xffffffff
unzOpenCurrentFile_420:
	mov edx, edi
	mov eax, [esi]
	call unzlocal_getLong
	test eax, eax
	jz unzOpenCurrentFile_200
	mov dword [ebp-0x54], 0xffffffff
unzOpenCurrentFile_470:
	mov edx, edi
	mov eax, [esi]
	call unzlocal_getLong
	test eax, eax
	jz unzOpenCurrentFile_210
	mov dword [ebp-0x54], 0xffffffff
unzOpenCurrentFile_450:
	mov edi, [esi]
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov eax, [ebp-0x6c]
	mov [esp], eax
	call fread
	sub eax, 0x1
	jnz unzOpenCurrentFile_220
	movzx eax, byte [ebp-0x19]
	mov [ebp-0x38], eax
	mov dword [ebp-0x34], 0x0
unzOpenCurrentFile_630:
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov eax, [ebp-0x6c]
	mov [esp], eax
	call fread
	sub eax, 0x1
	jnz unzOpenCurrentFile_230
	movzx eax, byte [ebp-0x19]
unzOpenCurrentFile_390:
	shl eax, 0x8
	add eax, [ebp-0x38]
	mov [ebp-0x5c], eax
	mov ecx, [ebp-0x34]
	test ecx, ecx
	jz unzOpenCurrentFile_240
	mov dword [ebp-0x54], 0xffffffff
	mov dword [ebp-0x5c], 0x0
unzOpenCurrentFile_350:
	mov edi, [esi]
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov eax, [ebp-0x6c]
	mov [esp], eax
	call fread
	sub eax, 0x1
	jnz unzOpenCurrentFile_250
	movzx eax, byte [ebp-0x19]
	mov [ebp-0x30], eax
	mov dword [ebp-0x2c], 0x0
unzOpenCurrentFile_570:
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov eax, [ebp-0x6c]
	mov [esp], eax
	call fread
	sub eax, 0x1
	jnz unzOpenCurrentFile_260
	movzx eax, byte [ebp-0x19]
unzOpenCurrentFile_340:
	shl eax, 0x8
	add eax, [ebp-0x30]
	mov [ebp-0x58], eax
	mov eax, [ebp-0x2c]
	test eax, eax
	jz unzOpenCurrentFile_270
	mov dword [ebp-0x54], 0xffffffff
	mov dword [ebp-0x58], 0x0
unzOpenCurrentFile_270:
	mov eax, [ebp-0x5c]
	add eax, [esi+0x78]
	add eax, 0x1e
	mov [ebp-0x64], eax
	mov eax, [ebp-0x58]
	add eax, [ebp-0x5c]
	mov [ebp-0x68], eax
	mov eax, [ebp-0x54]
	test eax, eax
	jnz unzOpenCurrentFile_280
	mov dword [esp], 0x60
	call malloc
	mov edi, eax
	test eax, eax
	jz unzOpenCurrentFile_290
	mov dword [esp], 0x4000
	call malloc
	mov [edi], eax
	mov eax, [ebp-0x64]
	mov [edi+0x40], eax
	mov eax, [ebp-0x58]
	mov [edi+0x44], eax
	mov dword [edi+0x48], 0x0
	mov eax, [edi]
	test eax, eax
	jz unzOpenCurrentFile_300
	mov dword [edi+0x3c], 0x0
	mov eax, [esi+0x34]
	mov [edi+0x58], eax
	mov edx, [esi]
	mov [edi+0x54], edx
	mov edx, [esi+0xc]
	mov [edi+0x5c], edx
	mov dword [edi+0x18], 0x0
	test eax, eax
	jnz unzOpenCurrentFile_310
unzOpenCurrentFile_620:
	mov eax, [esi+0x40]
	mov [edi+0x4c], eax
	mov eax, [esi+0x44]
	mov [edi+0x50], eax
	mov eax, [esi+0x78]
	add [ebp-0x68], eax
	mov eax, [ebp-0x68]
	add eax, 0x1e
	mov [edi+0x38], eax
	mov dword [edi+0x8], 0x0
	mov [esi+0x7c], edi
	xor eax, eax
	jmp unzOpenCurrentFile_60
unzOpenCurrentFile_40:
	lea eax, [edi+0x4]
	mov [esp], eax
	call inflateEnd
	jmp unzOpenCurrentFile_320
unzOpenCurrentFile_250:
	mov [esp], edi
	call ferror
	test eax, eax
	jz unzOpenCurrentFile_330
	mov dword [ebp-0x2c], 0xffffffff
	mov eax, [ebp-0x30]
	jmp unzOpenCurrentFile_340
unzOpenCurrentFile_240:
	mov edx, [ebp-0x54]
	test edx, edx
	jnz unzOpenCurrentFile_350
	mov eax, [ebp-0x5c]
	cmp eax, [esi+0x48]
	mov eax, 0xffffff99
	cmovz eax, [ebp-0x54]
	mov [ebp-0x54], eax
	jmp unzOpenCurrentFile_350
unzOpenCurrentFile_80:
	mov [esp], edi
	call ferror
	test eax, eax
	jz unzOpenCurrentFile_360
	mov dword [ebp-0x4c], 0xffffffff
	mov eax, [ebp-0x50]
	jmp unzOpenCurrentFile_370
unzOpenCurrentFile_220:
	mov [esp], edi
	call ferror
	test eax, eax
	jz unzOpenCurrentFile_380
	mov dword [ebp-0x34], 0xffffffff
	mov eax, [ebp-0x38]
	jmp unzOpenCurrentFile_390
unzOpenCurrentFile_110:
	mov [esp], edi
	call ferror
	test eax, eax
	jz unzOpenCurrentFile_400
	mov dword [ebp-0x44], 0xffffffff
	mov eax, [ebp-0x48]
	jmp unzOpenCurrentFile_410
unzOpenCurrentFile_190:
	mov eax, [ebp-0x54]
	test eax, eax
	jnz unzOpenCurrentFile_420
	mov eax, [esi+0x3c]
	cmp eax, [ebp-0x20]
	jz unzOpenCurrentFile_430
	test byte [ebp-0x60], 0x8
	jnz unzOpenCurrentFile_430
	mov dword [ebp-0x54], 0xffffff99
	jmp unzOpenCurrentFile_420
unzOpenCurrentFile_70:
	mov dword [ebp-0x54], 0xffffff99
	cmp dword [ebp-0x24], 0x4034b50
	cmovnz eax, [ebp-0x54]
	mov [ebp-0x54], eax
	jmp unzOpenCurrentFile_440
unzOpenCurrentFile_210:
	mov edi, [ebp-0x54]
	test edi, edi
	jnz unzOpenCurrentFile_450
	mov eax, [esi+0x44]
	cmp eax, [ebp-0x20]
	jz unzOpenCurrentFile_460
	test byte [ebp-0x60], 0x8
	jnz unzOpenCurrentFile_460
	mov dword [ebp-0x54], 0xffffff99
	jmp unzOpenCurrentFile_450
unzOpenCurrentFile_200:
	mov eax, [ebp-0x54]
	test eax, eax
	jnz unzOpenCurrentFile_470
	mov eax, [esi+0x40]
	cmp eax, [ebp-0x20]
	jz unzOpenCurrentFile_480
	test byte [ebp-0x60], 0x8
	jnz unzOpenCurrentFile_480
	mov dword [ebp-0x54], 0xffffff99
	jmp unzOpenCurrentFile_470
unzOpenCurrentFile_100:
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x54], 0xffffffff
	jmp unzOpenCurrentFile_490
unzOpenCurrentFile_140:
	mov [esp], edi
	call ferror
	test eax, eax
	jz unzOpenCurrentFile_500
	mov dword [ebp-0x3c], 0xffffffff
	mov eax, [ebp-0x40]
	jmp unzOpenCurrentFile_510
unzOpenCurrentFile_160:
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x54], 0xffffffff
	jmp unzOpenCurrentFile_170
unzOpenCurrentFile_150:
	mov [esp], edi
	call ferror
	test eax, eax
	jz unzOpenCurrentFile_520
	mov eax, [ebp-0x40]
	mov dword [ebp-0x3c], 0xffffffff
	jmp unzOpenCurrentFile_510
unzOpenCurrentFile_300:
	mov [esp], edi
	call free
unzOpenCurrentFile_290:
	mov eax, 0xffffff98
	jmp unzOpenCurrentFile_60
unzOpenCurrentFile_520:
	mov eax, [ebp-0x40]
	jmp unzOpenCurrentFile_510
unzOpenCurrentFile_230:
	mov [esp], edi
	call ferror
	test eax, eax
	jz unzOpenCurrentFile_530
	mov eax, [ebp-0x38]
	mov dword [ebp-0x34], 0xffffffff
	jmp unzOpenCurrentFile_390
unzOpenCurrentFile_360:
	mov dword [ebp-0x4c], 0x0
	jmp unzOpenCurrentFile_540
unzOpenCurrentFile_530:
	mov eax, [ebp-0x38]
	jmp unzOpenCurrentFile_390
unzOpenCurrentFile_90:
	mov [esp], edi
	call ferror
	test eax, eax
	jz unzOpenCurrentFile_550
	mov eax, [ebp-0x50]
	mov dword [ebp-0x4c], 0xffffffff
	jmp unzOpenCurrentFile_370
unzOpenCurrentFile_460:
	mov dword [ebp-0x54], 0x0
	jmp unzOpenCurrentFile_450
unzOpenCurrentFile_550:
	mov eax, [ebp-0x50]
	jmp unzOpenCurrentFile_370
unzOpenCurrentFile_260:
	mov [esp], edi
	call ferror
	test eax, eax
	jz unzOpenCurrentFile_560
	mov eax, [ebp-0x30]
	mov dword [ebp-0x2c], 0xffffffff
	jmp unzOpenCurrentFile_340
unzOpenCurrentFile_330:
	mov dword [ebp-0x2c], 0x0
	jmp unzOpenCurrentFile_570
unzOpenCurrentFile_560:
	mov eax, [ebp-0x30]
	jmp unzOpenCurrentFile_340
unzOpenCurrentFile_400:
	mov dword [ebp-0x44], 0x0
	jmp unzOpenCurrentFile_580
unzOpenCurrentFile_500:
	mov dword [ebp-0x3c], 0x0
	jmp unzOpenCurrentFile_590
unzOpenCurrentFile_120:
	mov [esp], edi
	call ferror
	test eax, eax
	jz unzOpenCurrentFile_600
	mov eax, [ebp-0x48]
	mov dword [ebp-0x44], 0xffffffff
	jmp unzOpenCurrentFile_410
unzOpenCurrentFile_180:
	test eax, eax
	jz unzOpenCurrentFile_170
	cmp eax, 0x8
	jnz unzOpenCurrentFile_610
	jmp unzOpenCurrentFile_170
unzOpenCurrentFile_600:
	mov eax, [ebp-0x48]
	jmp unzOpenCurrentFile_410
unzOpenCurrentFile_310:
	mov dword [edi+0x24], 0x0
	mov dword [edi+0x28], 0x0
	mov dword [edi+0x2c], 0x0
	mov dword [esp+0xc], 0x34
	lea eax, [ebx+0x528c4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xfffffff1
	lea eax, [edi+0x4]
	mov [esp], eax
	call inflateInit2_
	test eax, eax
	jnz unzOpenCurrentFile_620
	mov dword [edi+0x3c], 0x1
	jmp unzOpenCurrentFile_620
unzOpenCurrentFile_430:
	mov dword [ebp-0x54], 0x0
	jmp unzOpenCurrentFile_420
unzOpenCurrentFile_380:
	mov dword [ebp-0x34], 0x0
	jmp unzOpenCurrentFile_630
unzOpenCurrentFile_480:
	mov dword [ebp-0x54], 0x0
	jmp unzOpenCurrentFile_470


;unzReOpen
unzReOpen:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	call __i686.get_pc_thunk.bx
	lea eax, [ebx+0x215ff]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call fopen
	mov edi, eax
	test eax, eax
	jz unzReOpen_10
	mov [esp], eax
	call fileno
	cmp eax, 0xffffffff
	jz unzReOpen_20
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x2d
	mov [esp], eax
	call fcntl
unzReOpen_20:
	mov dword [esp], 0x80
	call malloc
	mov esi, eax
	mov dword [esp+0x8], 0x80
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], esi
	call Com_Memcpy
	mov [esi], edi
	mov dword [esi+0x7c], 0x0
	mov eax, esi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
unzReOpen_10:
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;unzReadCurrentFile
unzReadCurrentFile:
	push ebp
	mov ebp, esp
	push edi
	push esi
	sub esp, 0x20
	mov eax, [ebp+0x8]
	test eax, eax
	jnz unzReadCurrentFile_10
unzReadCurrentFile_20:
	mov dword [ebp-0x10], 0xffffff9a
	mov eax, [ebp-0x10]
unzReadCurrentFile_140:
	add esp, 0x20
	pop esi
	pop edi
	pop ebp
	ret
unzReadCurrentFile_10:
	mov edi, [eax+0x7c]
	test edi, edi
	jz unzReadCurrentFile_20
	mov eax, [edi]
	test eax, eax
	jz unzReadCurrentFile_30
	mov eax, [ebp+0x10]
	test eax, eax
	jz unzReadCurrentFile_40
	mov eax, [ebp+0xc]
	mov [edi+0x10], eax
	mov edx, [ebp+0x10]
	mov [edi+0x14], edx
	mov eax, [edi+0x50]
	cmp edx, eax
	jbe unzReadCurrentFile_50
	mov [edi+0x14], eax
unzReadCurrentFile_50:
	mov dword [ebp-0x10], 0x0
	mov dword [ebp-0xc], 0x0
unzReadCurrentFile_120:
	mov esi, [edi+0x14]
	test esi, esi
	jz unzReadCurrentFile_60
	mov eax, [edi+0x8]
	test eax, eax
	jnz unzReadCurrentFile_70
	mov eax, [edi+0x4c]
	test eax, eax
	jnz unzReadCurrentFile_80
unzReadCurrentFile_70:
	mov eax, [edi+0x58]
	test eax, eax
	jnz unzReadCurrentFile_90
	mov esi, [edi+0x14]
	mov edx, esi
	mov eax, [edi+0x8]
	cmp esi, eax
	cmovae esi, eax
	test esi, esi
	jz unzReadCurrentFile_100
	xor ecx, ecx
unzReadCurrentFile_110:
	mov eax, [edi+0x10]
	mov edx, [edi+0x4]
	movzx edx, byte [edx+ecx]
	mov [eax+ecx], dl
	add ecx, 0x1
	cmp esi, ecx
	jnz unzReadCurrentFile_110
	mov edx, [edi+0x14]
	mov eax, [edi+0x8]
unzReadCurrentFile_100:
	sub [edi+0x50], esi
	sub eax, esi
	mov [edi+0x8], eax
	sub edx, esi
	mov [edi+0x14], edx
	add [edi+0x10], esi
	add [edi+0x4], esi
	add [edi+0x18], esi
	add [ebp-0xc], esi
	jmp unzReadCurrentFile_120
unzReadCurrentFile_90:
	mov esi, [edi+0x18]
	mov dword [esp+0x4], 0x2
	lea eax, [edi+0x4]
	mov [esp], eax
	call inflate
	mov [ebp-0x10], eax
	mov eax, [edi+0x18]
	sub eax, esi
	sub [edi+0x50], eax
	add [ebp-0xc], eax
	cmp dword [ebp-0x10], 0x1
	jz unzReadCurrentFile_130
	mov eax, [ebp-0x10]
	test eax, eax
	jz unzReadCurrentFile_120
unzReadCurrentFile_150:
	mov eax, [ebp-0x10]
	jmp unzReadCurrentFile_140
unzReadCurrentFile_60:
	mov ecx, [ebp-0x10]
	test ecx, ecx
	jnz unzReadCurrentFile_150
	mov eax, [ebp-0xc]
	mov [ebp-0x10], eax
	jmp unzReadCurrentFile_140
unzReadCurrentFile_80:
	mov esi, 0x4000
	cmp eax, 0x3fff
	cmovbe esi, eax
	mov dword [esp+0x8], 0x0
	mov eax, [edi+0x38]
	add eax, [edi+0x5c]
	mov [esp+0x4], eax
	mov eax, [edi+0x54]
	mov [esp], eax
	call fseek
	test eax, eax
	jnz unzReadCurrentFile_160
	mov eax, [edi+0x54]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x1
	mov eax, [edi]
	mov [esp], eax
	call fread
	cmp esi, eax
	jnz unzReadCurrentFile_160
	add [edi+0x38], esi
	sub [edi+0x4c], esi
	mov eax, [edi]
	mov [edi+0x4], eax
	mov [edi+0x8], esi
	jmp unzReadCurrentFile_70
unzReadCurrentFile_40:
	mov dword [ebp-0x10], 0x0
	mov eax, [ebp-0x10]
	jmp unzReadCurrentFile_140
unzReadCurrentFile_130:
	mov edx, [ebp-0xc]
	mov [ebp-0x10], edx
	mov eax, edx
	jmp unzReadCurrentFile_140
unzReadCurrentFile_30:
	mov dword [ebp-0x10], 0xffffff9c
	mov eax, [ebp-0x10]
	jmp unzReadCurrentFile_140
unzReadCurrentFile_160:
	mov dword [ebp-0x10], 0xffffffff
	mov eax, [ebp-0x10]
	jmp unzReadCurrentFile_140
	add [eax], al


;unzSetCurrentFileInfoPosition
unzSetCurrentFileInfoPosition:
	push ebp
	mov ebp, esp
	push esi
	sub esp, 0x24
	mov esi, [ebp+0x8]
	test esi, esi
	jz unzSetCurrentFileInfoPosition_10
	mov eax, [ebp+0xc]
	mov [esi+0x14], eax
	lea ecx, [esi+0x78]
	lea edx, [esi+0x28]
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	mov eax, esi
	call unzlocal_GetCurrentFileInfoInternal
	test eax, eax
	setz al
	movzx eax, al
	mov [esi+0x18], eax
	xor eax, eax
	add esp, 0x24
	pop esi
	pop ebp
	ret
unzSetCurrentFileInfoPosition_10:
	mov eax, 0xffffff9a
	add esp, 0x24
	pop esi
	pop ebp
	ret


;unztell
unztell:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	test eax, eax
	jnz unztell_10
unztell_20:
	mov eax, 0xffffff9a
	pop ebp
	ret
unztell_10:
	mov eax, [eax+0x7c]
	test eax, eax
	jz unztell_20
	mov eax, [eax+0x18]
	pop ebp
	ret


;Initialized global or static variables of unzip:
SECTION .data


;Initialized constant data of unzip:
SECTION .rdata


;Zero initialized global or static variables of unzip:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

