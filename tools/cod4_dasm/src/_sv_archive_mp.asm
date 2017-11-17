;Imports of sv_archive_mp:
	extern svsHeader
	extern MSG_WriteBit1
	extern MSG_WriteLong
	extern MSG_ClearLastReferencedEntity
	extern memcpy
	extern MSG_WriteDeltaClient
	extern memset
	extern MSG_WriteDeltaPlayerstate
	extern MSG_WriteBit0
	extern MSG_WriteDeltaArchivedEntity
	extern Com_Error
	extern MSG_WriteEntityIndex

;Exports of sv_archive_mp:
	global SV_ArchiveSnapshot


SECTION .text


;SV_ArchiveSnapshot(msg_t*)
SV_ArchiveSnapshot:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x310c
	mov byte [ebp-0x1b], 0x1
	mov eax, svsHeader
	mov [ebp-0x30dc], eax
	mov edx, [eax+0x44]
	mov ebx, edx
	sub ebx, 0x200
	mov eax, 0x0
	cmovs ebx, eax
	mov ecx, [ebp-0x30dc]
	mov esi, [ecx+0x48]
	sub esi, [ecx+0x5c]
	mov edi, [ecx+0x40]
	sub edx, 0x1
	cmp ebx, edx
	jg SV_ArchiveSnapshot_10
	mov [ebp-0x30e8], ecx
	jmp SV_ArchiveSnapshot_20
SV_ArchiveSnapshot_50:
	lea eax, [ecx*4]
	shl ecx, 0x5
	sub ecx, eax
	lea ecx, [edi+ecx]
	mov [ebp-0x30cc], ecx
	cmp esi, [ecx]
	jg SV_ArchiveSnapshot_30
	mov eax, [ecx+0x18]
	test eax, eax
	jz SV_ArchiveSnapshot_40
SV_ArchiveSnapshot_30:
	sub edx, 0x1
	cmp ebx, edx
	jg SV_ArchiveSnapshot_10
SV_ArchiveSnapshot_20:
	mov ecx, edx
	and ecx, 0x800001ff
	jns SV_ArchiveSnapshot_50
	sub ecx, 0x1
	or ecx, 0xfffffe00
	add ecx, 0x1
	jmp SV_ArchiveSnapshot_50
SV_ArchiveSnapshot_40:
	mov edx, [ebp-0x30dc]
	mov eax, [edx+0x4c]
	sub eax, 0x4000
	cmp [ecx+0xc], eax
	jl SV_ArchiveSnapshot_10
	mov eax, [edx+0x50]
	sub eax, 0x1000
	cmp [ecx+0x14], eax
	jge SV_ArchiveSnapshot_60
SV_ArchiveSnapshot_10:
	mov edx, [ebp+0x8]
	mov [esp], edx
	call MSG_WriteBit1
	mov ebx, svsHeader
	mov eax, [ebx+0x4]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call MSG_WriteLong
	mov edx, [ebx+0x44]
	and edx, 0x800001ff
	js SV_ArchiveSnapshot_70
SV_ArchiveSnapshot_370:
	lea eax, [edx*4]
	shl edx, 0x5
	sub edx, eax
	mov eax, [ebx+0x40]
	add edx, eax
	mov [ebp-0x30d0], edx
	mov eax, [ebx+0x48]
	mov [edx], eax
	mov dword [edx+0x8], 0x0
	mov eax, [ebx+0x4c]
	mov [edx+0xc], eax
	mov dword [edx+0x10], 0x0
	mov eax, [ebx+0x50]
	mov [edx+0x14], eax
	mov dword [edx+0x18], 0x0
	mov eax, [ebx+0x4]
	mov [edx+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call MSG_ClearLastReferencedEntity
	mov ecx, [ebx]
	mov [ebp-0x30d4], ecx
	mov eax, [ebx+0x58]
	test eax, eax
	jle SV_ArchiveSnapshot_80
	mov dword [ebp-0x30ac], 0x0
	mov [ebp-0x30dc], ebx
	lea eax, [ebp-0x28]
	mov [ebp-0x30d8], eax
	mov [ebp-0x30e4], ebx
SV_ArchiveSnapshot_170:
	mov ecx, [ebp-0x30d4]
	cmp dword [ecx], 0x1
	jle SV_ArchiveSnapshot_90
	mov eax, [ebp-0x30dc]
	mov ecx, [eax+0x50]
	and ecx, 0x80000fff
	js SV_ArchiveSnapshot_100
SV_ArchiveSnapshot_340:
	lea edx, [ecx+ecx*2]
	mov eax, edx
	shl eax, 0x8
	sub eax, edx
	shl eax, 0x2
	sub eax, ecx
	mov ecx, [ebp-0x30dc]
	mov edx, [ecx+0x38]
	lea eax, [edx+eax*4]
	mov [ebp-0x30c8], eax
	mov eax, [ebp-0x30ac]
	imul eax, [ecx+0x74]
	add eax, [ecx+0x6c]
	mov ebx, [ebp-0x30c8]
	add ebx, 0x4
	mov dword [esp+0x8], 0x64
	mov [esp+0x4], eax
	mov [esp], ebx
	call memcpy
	mov dword [esp+0x14], 0x1
	mov [esp+0x10], ebx
	mov dword [esp+0xc], 0x0
	mov edx, [ebp-0x30dc]
	mov eax, [edx+0x4]
	mov [esp+0x8], eax
	mov ecx, [ebp+0x8]
	mov [esp+0x4], ecx
	mov eax, [ebp-0x30d8]
	mov [esp], eax
	call MSG_WriteDeltaClient
	mov edi, [ebp-0x30c8]
	add edi, 0x68
	mov eax, [ebp-0x30ac]
	mov edx, [ebp-0x30dc]
	imul eax, [edx+0x74]
	add eax, [edx+0x70]
	test byte [eax+0x14], 0x4
	jz SV_ArchiveSnapshot_110
	mov dword [esp+0x8], 0x2f64
	mov [esp+0x4], eax
	mov [esp], edi
	call memcpy
	xor esi, esi
	xor ebx, ebx
	jmp SV_ArchiveSnapshot_120
SV_ArchiveSnapshot_140:
	lea eax, [ebx+edi+0x8a4]
	mov dword [esp+0x8], 0xa0
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	add esi, 0x1
	add ebx, 0xa0
	cmp esi, 0x1f
	jz SV_ArchiveSnapshot_130
SV_ArchiveSnapshot_120:
	mov eax, [ebx+edi+0x8a4]
	test eax, eax
	jnz SV_ArchiveSnapshot_140
SV_ArchiveSnapshot_130:
	mov eax, 0x1
SV_ArchiveSnapshot_330:
	mov ecx, [ebp-0x30c8]
	mov [ecx], eax
	test eax, eax
	jz SV_ArchiveSnapshot_150
	mov eax, [ebp+0x8]
	mov [esp], eax
	call MSG_WriteBit1
	mov [esp+0x10], edi
	mov dword [esp+0xc], 0x0
	mov eax, svsHeader
	mov eax, [eax+0x4]
	mov [esp+0x8], eax
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x30d8]
	mov [esp], ecx
	call MSG_WriteDeltaPlayerstate
	mov edx, [ebp-0x30e4]
	mov [ebp-0x30dc], edx
	mov eax, [edx+0x50]
	add eax, 0x1
	mov [edx+0x50], eax
	cmp eax, 0x7ffffffd
	jg SV_ArchiveSnapshot_160
SV_ArchiveSnapshot_320:
	mov ecx, [ebp-0x30d0]
	add dword [ecx+0x10], 0x1
SV_ArchiveSnapshot_90:
	add dword [ebp-0x30ac], 0x1
	add dword [ebp-0x30d4], 0xa5634
	mov edx, [ebp-0x30ac]
	mov eax, [ebp-0x30dc]
	cmp edx, [eax+0x58]
	jl SV_ArchiveSnapshot_170
SV_ArchiveSnapshot_300:
	mov eax, [ebp+0x8]
	mov [esp], eax
	call MSG_WriteBit0
	mov edx, [ebp+0x8]
	mov [esp], edx
	call MSG_ClearLastReferencedEntity
	mov ecx, svsHeader
	mov [ebp-0x30dc], ecx
	mov ebx, [ecx+0x54]
	test ebx, ebx
	jle SV_ArchiveSnapshot_180
	xor edi, edi
	mov [ebp-0x30e0], ecx
	mov eax, [ebp-0x30dc]
	mov ebx, edi
	imul ebx, [eax+0x68]
	add ebx, [eax+0x64]
	cmp byte [ebx+0xf4], 0x0
	jz SV_ArchiveSnapshot_190
SV_ArchiveSnapshot_270:
	mov ecx, [ebx+0x104]
	test ecx, ecx
	jnz SV_ArchiveSnapshot_200
	movzx esi, byte [ebx+0xf6]
	test esi, 0x1
	jnz SV_ArchiveSnapshot_210
	mov ecx, [ebx]
	lea eax, [ecx+ecx*2]
	shl eax, 0x4
	sub eax, ecx
	mov edx, [ebp-0x30dc]
	mov edx, [edx+0x24]
	lea eax, [edx+eax*8]
	and esi, 0x18
	jnz SV_ArchiveSnapshot_220
	mov eax, [eax+0x11c]
	test eax, eax
	jz SV_ArchiveSnapshot_210
SV_ArchiveSnapshot_220:
	lea eax, [ecx+ecx*2]
	shl eax, 0x4
	sub eax, ecx
	mov ecx, [ebp-0x30dc]
	mov edx, [ecx+0x24]
	lea eax, [edx+eax*8+0x4]
	mov [ebp-0x30b0], eax
	mov eax, [ecx+0x4c]
	and eax, 0x80003fff
	js SV_ArchiveSnapshot_230
SV_ArchiveSnapshot_360:
	lea eax, [eax+eax*4]
	lea edx, [eax*8]
	sub edx, eax
	mov eax, [ecx+0x34]
	lea esi, [eax+edx*8]
	mov dword [esp+0x8], 0xf4
	mov [esp+0x4], ebx
	mov [esp], esi
	call memcpy
	movzx eax, byte [ebx+0xf6]
	mov [esi+0xf4], eax
	mov edx, [ebx+0x104]
	test edx, edx
	jz SV_ArchiveSnapshot_240
	or eax, 0x8
	mov [esi+0xf4], eax
SV_ArchiveSnapshot_240:
	mov eax, [ebx+0xf8]
	mov [esi+0xf8], eax
	mov eax, [ebx+0xfc]
	mov [esi+0xfc], eax
	mov eax, [ebx+0x124]
	mov [esi+0x100], eax
	mov eax, [ebx+0x128]
	mov [esi+0x104], eax
	mov eax, [ebx+0x12c]
	mov [esi+0x108], eax
	mov eax, [ebx+0x130]
	mov [esi+0x10c], eax
	mov eax, [ebx+0x134]
	mov [esi+0x110], eax
	mov eax, [ebx+0x138]
	mov [esi+0x114], eax
	mov byte [ebp-0x1c], 0x1
	mov dword [esp+0x14], 0x1
	mov [esp+0x10], esi
	mov eax, [ebp-0x30b0]
	mov [esp+0xc], eax
	mov edx, [ebp-0x30dc]
	mov eax, [edx+0x4]
	mov [esp+0x8], eax
	mov ecx, [ebp+0x8]
	mov [esp+0x4], ecx
	mov eax, [ebp-0x30d8]
	mov [esp], eax
	call MSG_WriteDeltaArchivedEntity
	mov byte [ebp-0x1c], 0x0
	mov edx, [ebp-0x30dc]
	mov eax, [edx+0x4c]
	add eax, 0x1
	mov [edx+0x4c], eax
	cmp eax, 0x7ffffffd
	jg SV_ArchiveSnapshot_250
SV_ArchiveSnapshot_350:
	mov ecx, [ebp-0x30d0]
	add dword [ecx+0x8], 0x1
	mov eax, [ebp-0x30e0]
	mov [ebp-0x30dc], eax
	mov edx, eax
SV_ArchiveSnapshot_310:
	add edi, 0x1
	cmp [edx+0x54], edi
	jle SV_ArchiveSnapshot_260
SV_ArchiveSnapshot_280:
	mov eax, edx
	mov ebx, edi
	imul ebx, [eax+0x68]
	add ebx, [eax+0x64]
	cmp byte [ebx+0xf4], 0x0
	jnz SV_ArchiveSnapshot_270
SV_ArchiveSnapshot_190:
	mov edx, eax
	add edi, 0x1
	cmp [edx+0x54], edi
	jg SV_ArchiveSnapshot_280
SV_ArchiveSnapshot_260:
	mov ecx, edx
SV_ArchiveSnapshot_180:
	mov eax, [ecx+0x44]
	add eax, 0x1
	mov [ecx+0x44], eax
	cmp eax, 0x7ffffffd
	jle SV_ArchiveSnapshot_290
	mov dword [esp+0x4], _cstring_svsheadernextcac
	mov dword [esp], 0x1
	call Com_Error
SV_ArchiveSnapshot_290:
	mov dword [esp+0xc], 0xa
	mov dword [esp+0x8], 0x3ff
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov edx, [ebp-0x30d8]
	mov [esp], edx
	call MSG_WriteEntityIndex
	add esp, 0x310c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_ArchiveSnapshot_80:
	lea ecx, [ebp-0x28]
	mov [ebp-0x30d8], ecx
	jmp SV_ArchiveSnapshot_300
SV_ArchiveSnapshot_210:
	mov edx, [ebp-0x30dc]
	jmp SV_ArchiveSnapshot_310
SV_ArchiveSnapshot_150:
	mov eax, [ebp+0x8]
	mov [esp], eax
	call MSG_WriteBit0
	mov edx, [ebp-0x30e4]
	mov [ebp-0x30dc], edx
	mov eax, [edx+0x50]
	add eax, 0x1
	mov [edx+0x50], eax
	cmp eax, 0x7ffffffd
	jle SV_ArchiveSnapshot_320
SV_ArchiveSnapshot_160:
	mov dword [esp+0x4], _cstring_svsheadernextcac1
	mov dword [esp], 0x1
	call Com_Error
	jmp SV_ArchiveSnapshot_320
SV_ArchiveSnapshot_200:
	mov ecx, [ebx]
	jmp SV_ArchiveSnapshot_220
SV_ArchiveSnapshot_110:
	mov dword [esp+0x8], 0x2f64
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call memset
	xor eax, eax
	jmp SV_ArchiveSnapshot_330
SV_ArchiveSnapshot_100:
	sub ecx, 0x1
	or ecx, 0xfffff000
	add ecx, 0x1
	jmp SV_ArchiveSnapshot_340
SV_ArchiveSnapshot_250:
	mov dword [esp+0x4], _cstring_svsheadernextcac2
	mov dword [esp], 0x1
	call Com_Error
	jmp SV_ArchiveSnapshot_350
SV_ArchiveSnapshot_230:
	sub eax, 0x1
	or eax, 0xffffc000
	add eax, 0x1
	mov ecx, [ebp-0x30dc]
	jmp SV_ArchiveSnapshot_360
SV_ArchiveSnapshot_70:
	sub edx, 0x1
	or edx, 0xfffffe00
	add edx, 0x1
	jmp SV_ArchiveSnapshot_370
SV_ArchiveSnapshot_60:
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call MSG_WriteBit0
	mov edx, [ebp-0x30cc]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call MSG_WriteLong
	mov edx, [ebp-0x30dc]
	mov eax, [edx+0x4]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call MSG_WriteLong
	mov eax, [ebp-0x30dc]
	mov eax, [eax+0x58]
	mov [ebp-0x30c0], eax
	mov edx, [ebp-0x30cc]
	mov edx, [edx+0x10]
	mov [ebp-0x30bc], edx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call MSG_ClearLastReferencedEntity
	mov dword [ebp-0x30b8], 0x0
	mov dword [ebp-0x30b4], 0x0
	lea eax, [ebp-0x28]
	mov [ebp-0x30d8], eax
SV_ArchiveSnapshot_520:
	mov edx, [ebp-0x30c0]
	cmp [ebp-0x30b8], edx
	jl SV_ArchiveSnapshot_380
SV_ArchiveSnapshot_430:
	mov ecx, [ebp-0x30bc]
	cmp [ebp-0x30b4], ecx
	jge SV_ArchiveSnapshot_390
	mov edx, svsHeader
	mov [ebp-0x30dc], edx
SV_ArchiveSnapshot_450:
	mov eax, [ebp-0x30b4]
	mov ecx, [ebp-0x30cc]
	add eax, [ecx+0x14]
	mov ecx, eax
	and ecx, 0x80000fff
	js SV_ArchiveSnapshot_400
SV_ArchiveSnapshot_570:
	lea eax, [ecx+ecx*2]
	mov edx, eax
	shl edx, 0x8
	sub edx, eax
	shl edx, 0x2
	sub edx, ecx
	mov ecx, [ebp-0x30dc]
	mov eax, [ecx+0x38]
	lea edx, [eax+edx*4]
	mov [ebp-0x30c4], edx
	mov edx, [edx+0x4]
SV_ArchiveSnapshot_460:
	mov ecx, [ebp-0x30b8]
	mov [ebp-0x28], ecx
	cmp ecx, edx
	jz SV_ArchiveSnapshot_410
	jl SV_ArchiveSnapshot_420
	mov eax, [ebp-0x30b4]
	add eax, 0x1
	cmp [ebp-0x30b8], edx
	cmovle eax, [ebp-0x30b4]
	mov [ebp-0x30b4], eax
	mov edx, [ebp-0x30c0]
	cmp [ebp-0x30b8], edx
	jge SV_ArchiveSnapshot_430
SV_ArchiveSnapshot_380:
	mov edx, svsHeader
	mov [ebp-0x30dc], edx
	mov ecx, [ebp-0x30b8]
	lea eax, [ecx+ecx*4]
	shl eax, 0x7
	add eax, ecx
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea eax, [ecx+eax*4]
	mov ecx, [ebp-0x30dc]
	mov edx, [ecx]
	lea eax, [edx+eax*4]
	mov eax, [eax]
	sub eax, 0x1
	jle SV_ArchiveSnapshot_440
	mov eax, [ebp-0x30bc]
	cmp [ebp-0x30b4], eax
	jl SV_ArchiveSnapshot_450
	mov dword [ebp-0x30c4], 0x0
	mov edx, 0x270f
	jmp SV_ArchiveSnapshot_460
SV_ArchiveSnapshot_410:
	mov eax, [ebp-0x30c4]
	add eax, 0x4
	mov dword [esp+0x14], 0x1
	mov edx, ecx
	mov ecx, [ebp-0x30dc]
	imul edx, [ecx+0x74]
	add edx, [ecx+0x6c]
	mov [esp+0x10], edx
	mov [esp+0xc], eax
	mov eax, [ecx+0x4]
	mov [esp+0x8], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	lea edx, [ebp-0x28]
	mov [esp], edx
	call MSG_WriteDeltaClient
	mov eax, [ebp-0x30b8]
	mov ecx, [ebp-0x30dc]
	imul eax, [ecx+0x74]
	add eax, [ecx+0x70]
	test byte [eax+0x14], 0x4
	jz SV_ArchiveSnapshot_470
	mov dword [esp+0x8], 0x2f64
	mov [esp+0x4], eax
	lea ecx, [ebp-0x30a4]
	mov [esp], ecx
	call memcpy
	xor edi, edi
	lea esi, [ebp-0x30a4]
	lea ebx, [ebp-0x2800]
	jmp SV_ArchiveSnapshot_480
SV_ArchiveSnapshot_500:
	mov dword [esp+0x8], 0xa0
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call memset
	add edi, 0x1
	add ebx, 0xa0
	add esi, 0xa0
	cmp edi, 0x1f
	jz SV_ArchiveSnapshot_490
SV_ArchiveSnapshot_480:
	mov eax, [esi+0x8a4]
	test eax, eax
	jnz SV_ArchiveSnapshot_500
SV_ArchiveSnapshot_490:
	mov eax, [ebp+0x8]
	mov [esp], eax
	call MSG_WriteBit1
	mov edx, [ebp-0x30c4]
	mov eax, [edx]
	test eax, eax
	jnz SV_ArchiveSnapshot_510
	lea ecx, [ebp-0x30a4]
	mov [esp+0x10], ecx
	mov dword [esp+0xc], 0x0
SV_ArchiveSnapshot_640:
	mov eax, svsHeader
	mov eax, [eax+0x4]
	mov [esp+0x8], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	lea edx, [ebp-0x28]
	mov [esp], edx
	call MSG_WriteDeltaPlayerstate
SV_ArchiveSnapshot_650:
	add dword [ebp-0x30b4], 0x1
SV_ArchiveSnapshot_440:
	add dword [ebp-0x30b8], 0x1
	jmp SV_ArchiveSnapshot_520
SV_ArchiveSnapshot_420:
	mov dword [esp+0x14], 0x1
	mov eax, [ebp-0x30b8]
	mov ecx, [ebp-0x30dc]
	imul eax, [ecx+0x74]
	add eax, [ecx+0x6c]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x0
	mov eax, [ecx+0x4]
	mov [esp+0x8], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	lea edx, [ebp-0x28]
	mov [esp], edx
	call MSG_WriteDeltaClient
	mov eax, [ebp-0x30b8]
	mov ecx, [ebp-0x30dc]
	imul eax, [ecx+0x74]
	add eax, [ecx+0x70]
	test byte [eax+0x14], 0x4
	jz SV_ArchiveSnapshot_530
	mov dword [esp+0x8], 0x2f64
	mov [esp+0x4], eax
	lea ecx, [ebp-0x30a4]
	mov [esp], ecx
	call memcpy
	xor edi, edi
	lea esi, [ebp-0x30a4]
	lea ebx, [ebp-0x2800]
	jmp SV_ArchiveSnapshot_540
SV_ArchiveSnapshot_560:
	mov dword [esp+0x8], 0xa0
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call memset
	add edi, 0x1
	add ebx, 0xa0
	add esi, 0xa0
	cmp edi, 0x1f
	jz SV_ArchiveSnapshot_550
SV_ArchiveSnapshot_540:
	mov eax, [esi+0x8a4]
	test eax, eax
	jnz SV_ArchiveSnapshot_560
SV_ArchiveSnapshot_550:
	mov eax, [ebp+0x8]
	mov [esp], eax
	call MSG_WriteBit1
	lea edx, [ebp-0x30a4]
	mov [esp+0x10], edx
	mov dword [esp+0xc], 0x0
	mov eax, svsHeader
	mov eax, [eax+0x4]
	mov [esp+0x8], eax
	mov ecx, [ebp+0x8]
	mov [esp+0x4], ecx
	lea eax, [ebp-0x28]
	mov [esp], eax
	call MSG_WriteDeltaPlayerstate
	jmp SV_ArchiveSnapshot_440
SV_ArchiveSnapshot_400:
	sub ecx, 0x1
	or ecx, 0xfffff000
	add ecx, 0x1
	jmp SV_ArchiveSnapshot_570
SV_ArchiveSnapshot_530:
	mov dword [esp+0x8], 0x2f64
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x30a4]
	mov [esp], eax
	call memset
	mov edx, [ebp+0x8]
	mov [esp], edx
	call MSG_WriteBit0
	jmp SV_ArchiveSnapshot_440
SV_ArchiveSnapshot_390:
	mov eax, [ebp+0x8]
	mov [esp], eax
	call MSG_WriteBit0
	mov edx, [ebp+0x8]
	mov [esp], edx
	call MSG_ClearLastReferencedEntity
	mov ecx, svsHeader
	mov [ebp-0x30dc], ecx
	mov ebx, [ecx+0x54]
	test ebx, ebx
	jle SV_ArchiveSnapshot_290
	xor esi, esi
	jmp SV_ArchiveSnapshot_580
SV_ArchiveSnapshot_620:
	movzx edi, byte [ebx+0xf6]
	test edi, 0x1
	jnz SV_ArchiveSnapshot_590
	mov ecx, [ebx]
	lea eax, [ecx+ecx*2]
	shl eax, 0x4
	sub eax, ecx
	mov edx, [ebp-0x30dc]
	mov edx, [edx+0x24]
	lea eax, [edx+eax*8]
	and edi, 0x18
	jnz SV_ArchiveSnapshot_600
	mov eax, [eax+0x11c]
	test eax, eax
	jnz SV_ArchiveSnapshot_600
SV_ArchiveSnapshot_590:
	mov eax, [ebp-0x30dc]
SV_ArchiveSnapshot_610:
	add esi, 0x1
	cmp esi, [eax+0x54]
	jge SV_ArchiveSnapshot_290
SV_ArchiveSnapshot_580:
	mov ebx, esi
	mov eax, [ebp-0x30dc]
	imul ebx, [eax+0x68]
	add ebx, [eax+0x64]
	cmp byte [ebx+0xf4], 0x0
	jz SV_ArchiveSnapshot_610
	mov ecx, [ebx+0x104]
	test ecx, ecx
	jz SV_ArchiveSnapshot_620
	mov ecx, [ebx]
SV_ArchiveSnapshot_600:
	lea eax, [ecx+ecx*2]
	shl eax, 0x4
	sub eax, ecx
	mov ecx, [ebp-0x30dc]
	mov edx, [ecx+0x24]
	lea edi, [edx+eax*8+0x4]
	mov dword [esp+0x8], 0xf4
	mov [esp+0x4], ebx
	lea eax, [ebp-0x140]
	mov [esp], eax
	call memcpy
	movzx eax, byte [ebx+0xf6]
	mov [ebp-0x4c], eax
	mov edx, [ebx+0x104]
	test edx, edx
	jz SV_ArchiveSnapshot_630
	or eax, 0x8
	mov [ebp-0x4c], eax
SV_ArchiveSnapshot_630:
	mov eax, [ebx+0xf8]
	mov [ebp-0x48], eax
	mov eax, [ebx+0xfc]
	mov [ebp-0x44], eax
	mov eax, [ebx+0x124]
	mov [ebp-0x40], eax
	mov eax, [ebx+0x128]
	mov [ebp-0x3c], eax
	mov eax, [ebx+0x12c]
	mov [ebp-0x38], eax
	mov eax, [ebx+0x130]
	mov [ebp-0x34], eax
	mov eax, [ebx+0x134]
	mov [ebp-0x30], eax
	mov eax, [ebx+0x138]
	mov [ebp-0x2c], eax
	mov byte [ebp-0x1c], 0x1
	mov dword [esp+0x14], 0x1
	lea edx, [ebp-0x140]
	mov [esp+0x10], edx
	mov [esp+0xc], edi
	mov ecx, [ebp-0x30dc]
	mov eax, [ecx+0x4]
	mov [esp+0x8], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	lea edx, [ebp-0x28]
	mov [esp], edx
	call MSG_WriteDeltaArchivedEntity
	mov byte [ebp-0x1c], 0x0
	mov ecx, [ebp-0x30e8]
	mov [ebp-0x30dc], ecx
	mov eax, ecx
	jmp SV_ArchiveSnapshot_610
SV_ArchiveSnapshot_510:
	mov eax, [ebp-0x30c4]
	add eax, 0x68
	lea ecx, [ebp-0x30a4]
	mov [esp+0x10], ecx
	mov [esp+0xc], eax
	jmp SV_ArchiveSnapshot_640
SV_ArchiveSnapshot_470:
	mov dword [esp+0x8], 0x2f64
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x30a4]
	mov [esp], eax
	call memset
	mov edx, [ebp+0x8]
	mov [esp], edx
	call MSG_WriteBit0
	jmp SV_ArchiveSnapshot_650
	add [eax], al


;Initialized global or static variables of sv_archive_mp:
SECTION .data


;Initialized constant data of sv_archive_mp:
SECTION .rdata


;Zero initialized global or static variables of sv_archive_mp:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_svsheadernextcac:		db 015h,"svsHeader.nextCachedSnapshotFrames wrapped",0
_cstring_svsheadernextcac1:		db 015h,"svsHeader.nextCachedSnapshotClients wrapped",0
_cstring_svsheadernextcac2:		db 015h,"svsHeader.nextCachedSnapshotEntities wrapped",0



;All constant floats and doubles:
SECTION .rdata

