;Imports of sv_archive_mp:
	extern svsHeader
	extern _Z13MSG_WriteBit1P5msg_t
	extern _Z13MSG_WriteLongP5msg_ti
	extern _Z29MSG_ClearLastReferencedEntityP5msg_t
	extern memcpy
	extern _Z20MSG_WriteDeltaClientP14SnapshotInfo_sP5msg_tiPK13clientState_sS5_i
	extern memset
	extern _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5_
	extern _Z13MSG_WriteBit0P5msg_t
	extern _Z28MSG_WriteDeltaArchivedEntityP14SnapshotInfo_sP5msg_tiPK16archivedEntity_sS5_i
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z20MSG_WriteEntityIndexP14SnapshotInfo_sP5msg_tii

;Exports of sv_archive_mp:
	global _Z18SV_ArchiveSnapshotP5msg_t


SECTION .text


;SV_ArchiveSnapshot(msg_t*)
_Z18SV_ArchiveSnapshotP5msg_t:
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
	jg _Z18SV_ArchiveSnapshotP5msg_t_10
	mov [ebp-0x30e8], ecx
	jmp _Z18SV_ArchiveSnapshotP5msg_t_20
_Z18SV_ArchiveSnapshotP5msg_t_50:
	lea eax, [ecx*4]
	shl ecx, 0x5
	sub ecx, eax
	lea ecx, [edi+ecx]
	mov [ebp-0x30cc], ecx
	cmp esi, [ecx]
	jg _Z18SV_ArchiveSnapshotP5msg_t_30
	mov eax, [ecx+0x18]
	test eax, eax
	jz _Z18SV_ArchiveSnapshotP5msg_t_40
_Z18SV_ArchiveSnapshotP5msg_t_30:
	sub edx, 0x1
	cmp ebx, edx
	jg _Z18SV_ArchiveSnapshotP5msg_t_10
_Z18SV_ArchiveSnapshotP5msg_t_20:
	mov ecx, edx
	and ecx, 0x800001ff
	jns _Z18SV_ArchiveSnapshotP5msg_t_50
	sub ecx, 0x1
	or ecx, 0xfffffe00
	add ecx, 0x1
	jmp _Z18SV_ArchiveSnapshotP5msg_t_50
_Z18SV_ArchiveSnapshotP5msg_t_40:
	mov edx, [ebp-0x30dc]
	mov eax, [edx+0x4c]
	sub eax, 0x4000
	cmp [ecx+0xc], eax
	jl _Z18SV_ArchiveSnapshotP5msg_t_10
	mov eax, [edx+0x50]
	sub eax, 0x1000
	cmp [ecx+0x14], eax
	jge _Z18SV_ArchiveSnapshotP5msg_t_60
_Z18SV_ArchiveSnapshotP5msg_t_10:
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z13MSG_WriteBit1P5msg_t
	mov ebx, svsHeader
	mov eax, [ebx+0x4]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z13MSG_WriteLongP5msg_ti
	mov edx, [ebx+0x44]
	and edx, 0x800001ff
	js _Z18SV_ArchiveSnapshotP5msg_t_70
_Z18SV_ArchiveSnapshotP5msg_t_370:
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
	call _Z29MSG_ClearLastReferencedEntityP5msg_t
	mov ecx, [ebx]
	mov [ebp-0x30d4], ecx
	mov eax, [ebx+0x58]
	test eax, eax
	jle _Z18SV_ArchiveSnapshotP5msg_t_80
	mov dword [ebp-0x30ac], 0x0
	mov [ebp-0x30dc], ebx
	lea eax, [ebp-0x28]
	mov [ebp-0x30d8], eax
	mov [ebp-0x30e4], ebx
_Z18SV_ArchiveSnapshotP5msg_t_170:
	mov ecx, [ebp-0x30d4]
	cmp dword [ecx], 0x1
	jle _Z18SV_ArchiveSnapshotP5msg_t_90
	mov eax, [ebp-0x30dc]
	mov ecx, [eax+0x50]
	and ecx, 0x80000fff
	js _Z18SV_ArchiveSnapshotP5msg_t_100
_Z18SV_ArchiveSnapshotP5msg_t_340:
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
	call _Z20MSG_WriteDeltaClientP14SnapshotInfo_sP5msg_tiPK13clientState_sS5_i
	mov edi, [ebp-0x30c8]
	add edi, 0x68
	mov eax, [ebp-0x30ac]
	mov edx, [ebp-0x30dc]
	imul eax, [edx+0x74]
	add eax, [edx+0x70]
	test byte [eax+0x14], 0x4
	jz _Z18SV_ArchiveSnapshotP5msg_t_110
	mov dword [esp+0x8], 0x2f64
	mov [esp+0x4], eax
	mov [esp], edi
	call memcpy
	xor esi, esi
	xor ebx, ebx
	jmp _Z18SV_ArchiveSnapshotP5msg_t_120
_Z18SV_ArchiveSnapshotP5msg_t_140:
	lea eax, [ebx+edi+0x8a4]
	mov dword [esp+0x8], 0xa0
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	add esi, 0x1
	add ebx, 0xa0
	cmp esi, 0x1f
	jz _Z18SV_ArchiveSnapshotP5msg_t_130
_Z18SV_ArchiveSnapshotP5msg_t_120:
	mov eax, [ebx+edi+0x8a4]
	test eax, eax
	jnz _Z18SV_ArchiveSnapshotP5msg_t_140
_Z18SV_ArchiveSnapshotP5msg_t_130:
	mov eax, 0x1
_Z18SV_ArchiveSnapshotP5msg_t_330:
	mov ecx, [ebp-0x30c8]
	mov [ecx], eax
	test eax, eax
	jz _Z18SV_ArchiveSnapshotP5msg_t_150
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z13MSG_WriteBit1P5msg_t
	mov [esp+0x10], edi
	mov dword [esp+0xc], 0x0
	mov eax, svsHeader
	mov eax, [eax+0x4]
	mov [esp+0x8], eax
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x30d8]
	mov [esp], ecx
	call _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5_
	mov edx, [ebp-0x30e4]
	mov [ebp-0x30dc], edx
	mov eax, [edx+0x50]
	add eax, 0x1
	mov [edx+0x50], eax
	cmp eax, 0x7ffffffd
	jg _Z18SV_ArchiveSnapshotP5msg_t_160
_Z18SV_ArchiveSnapshotP5msg_t_320:
	mov ecx, [ebp-0x30d0]
	add dword [ecx+0x10], 0x1
_Z18SV_ArchiveSnapshotP5msg_t_90:
	add dword [ebp-0x30ac], 0x1
	add dword [ebp-0x30d4], 0xa5634
	mov edx, [ebp-0x30ac]
	mov eax, [ebp-0x30dc]
	cmp edx, [eax+0x58]
	jl _Z18SV_ArchiveSnapshotP5msg_t_170
_Z18SV_ArchiveSnapshotP5msg_t_300:
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z13MSG_WriteBit0P5msg_t
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z29MSG_ClearLastReferencedEntityP5msg_t
	mov ecx, svsHeader
	mov [ebp-0x30dc], ecx
	mov ebx, [ecx+0x54]
	test ebx, ebx
	jle _Z18SV_ArchiveSnapshotP5msg_t_180
	xor edi, edi
	mov [ebp-0x30e0], ecx
	mov eax, [ebp-0x30dc]
	mov ebx, edi
	imul ebx, [eax+0x68]
	add ebx, [eax+0x64]
	cmp byte [ebx+0xf4], 0x0
	jz _Z18SV_ArchiveSnapshotP5msg_t_190
_Z18SV_ArchiveSnapshotP5msg_t_270:
	mov ecx, [ebx+0x104]
	test ecx, ecx
	jnz _Z18SV_ArchiveSnapshotP5msg_t_200
	movzx esi, byte [ebx+0xf6]
	test esi, 0x1
	jnz _Z18SV_ArchiveSnapshotP5msg_t_210
	mov ecx, [ebx]
	lea eax, [ecx+ecx*2]
	shl eax, 0x4
	sub eax, ecx
	mov edx, [ebp-0x30dc]
	mov edx, [edx+0x24]
	lea eax, [edx+eax*8]
	and esi, 0x18
	jnz _Z18SV_ArchiveSnapshotP5msg_t_220
	mov eax, [eax+0x11c]
	test eax, eax
	jz _Z18SV_ArchiveSnapshotP5msg_t_210
_Z18SV_ArchiveSnapshotP5msg_t_220:
	lea eax, [ecx+ecx*2]
	shl eax, 0x4
	sub eax, ecx
	mov ecx, [ebp-0x30dc]
	mov edx, [ecx+0x24]
	lea eax, [edx+eax*8+0x4]
	mov [ebp-0x30b0], eax
	mov eax, [ecx+0x4c]
	and eax, 0x80003fff
	js _Z18SV_ArchiveSnapshotP5msg_t_230
_Z18SV_ArchiveSnapshotP5msg_t_360:
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
	jz _Z18SV_ArchiveSnapshotP5msg_t_240
	or eax, 0x8
	mov [esi+0xf4], eax
_Z18SV_ArchiveSnapshotP5msg_t_240:
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
	call _Z28MSG_WriteDeltaArchivedEntityP14SnapshotInfo_sP5msg_tiPK16archivedEntity_sS5_i
	mov byte [ebp-0x1c], 0x0
	mov edx, [ebp-0x30dc]
	mov eax, [edx+0x4c]
	add eax, 0x1
	mov [edx+0x4c], eax
	cmp eax, 0x7ffffffd
	jg _Z18SV_ArchiveSnapshotP5msg_t_250
_Z18SV_ArchiveSnapshotP5msg_t_350:
	mov ecx, [ebp-0x30d0]
	add dword [ecx+0x8], 0x1
	mov eax, [ebp-0x30e0]
	mov [ebp-0x30dc], eax
	mov edx, eax
_Z18SV_ArchiveSnapshotP5msg_t_310:
	add edi, 0x1
	cmp [edx+0x54], edi
	jle _Z18SV_ArchiveSnapshotP5msg_t_260
_Z18SV_ArchiveSnapshotP5msg_t_280:
	mov eax, edx
	mov ebx, edi
	imul ebx, [eax+0x68]
	add ebx, [eax+0x64]
	cmp byte [ebx+0xf4], 0x0
	jnz _Z18SV_ArchiveSnapshotP5msg_t_270
_Z18SV_ArchiveSnapshotP5msg_t_190:
	mov edx, eax
	add edi, 0x1
	cmp [edx+0x54], edi
	jg _Z18SV_ArchiveSnapshotP5msg_t_280
_Z18SV_ArchiveSnapshotP5msg_t_260:
	mov ecx, edx
_Z18SV_ArchiveSnapshotP5msg_t_180:
	mov eax, [ecx+0x44]
	add eax, 0x1
	mov [ecx+0x44], eax
	cmp eax, 0x7ffffffd
	jle _Z18SV_ArchiveSnapshotP5msg_t_290
	mov dword [esp+0x4], _cstring_svsheadernextcac
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
_Z18SV_ArchiveSnapshotP5msg_t_290:
	mov dword [esp+0xc], 0xa
	mov dword [esp+0x8], 0x3ff
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov edx, [ebp-0x30d8]
	mov [esp], edx
	call _Z20MSG_WriteEntityIndexP14SnapshotInfo_sP5msg_tii
	add esp, 0x310c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18SV_ArchiveSnapshotP5msg_t_80:
	lea ecx, [ebp-0x28]
	mov [ebp-0x30d8], ecx
	jmp _Z18SV_ArchiveSnapshotP5msg_t_300
_Z18SV_ArchiveSnapshotP5msg_t_210:
	mov edx, [ebp-0x30dc]
	jmp _Z18SV_ArchiveSnapshotP5msg_t_310
_Z18SV_ArchiveSnapshotP5msg_t_150:
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z13MSG_WriteBit0P5msg_t
	mov edx, [ebp-0x30e4]
	mov [ebp-0x30dc], edx
	mov eax, [edx+0x50]
	add eax, 0x1
	mov [edx+0x50], eax
	cmp eax, 0x7ffffffd
	jle _Z18SV_ArchiveSnapshotP5msg_t_320
_Z18SV_ArchiveSnapshotP5msg_t_160:
	mov dword [esp+0x4], _cstring_svsheadernextcac1
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z18SV_ArchiveSnapshotP5msg_t_320
_Z18SV_ArchiveSnapshotP5msg_t_200:
	mov ecx, [ebx]
	jmp _Z18SV_ArchiveSnapshotP5msg_t_220
_Z18SV_ArchiveSnapshotP5msg_t_110:
	mov dword [esp+0x8], 0x2f64
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call memset
	xor eax, eax
	jmp _Z18SV_ArchiveSnapshotP5msg_t_330
_Z18SV_ArchiveSnapshotP5msg_t_100:
	sub ecx, 0x1
	or ecx, 0xfffff000
	add ecx, 0x1
	jmp _Z18SV_ArchiveSnapshotP5msg_t_340
_Z18SV_ArchiveSnapshotP5msg_t_250:
	mov dword [esp+0x4], _cstring_svsheadernextcac2
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z18SV_ArchiveSnapshotP5msg_t_350
_Z18SV_ArchiveSnapshotP5msg_t_230:
	sub eax, 0x1
	or eax, 0xffffc000
	add eax, 0x1
	mov ecx, [ebp-0x30dc]
	jmp _Z18SV_ArchiveSnapshotP5msg_t_360
_Z18SV_ArchiveSnapshotP5msg_t_70:
	sub edx, 0x1
	or edx, 0xfffffe00
	add edx, 0x1
	jmp _Z18SV_ArchiveSnapshotP5msg_t_370
_Z18SV_ArchiveSnapshotP5msg_t_60:
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z13MSG_WriteBit0P5msg_t
	mov edx, [ebp-0x30cc]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z13MSG_WriteLongP5msg_ti
	mov edx, [ebp-0x30dc]
	mov eax, [edx+0x4]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z13MSG_WriteLongP5msg_ti
	mov eax, [ebp-0x30dc]
	mov eax, [eax+0x58]
	mov [ebp-0x30c0], eax
	mov edx, [ebp-0x30cc]
	mov edx, [edx+0x10]
	mov [ebp-0x30bc], edx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z29MSG_ClearLastReferencedEntityP5msg_t
	mov dword [ebp-0x30b8], 0x0
	mov dword [ebp-0x30b4], 0x0
	lea eax, [ebp-0x28]
	mov [ebp-0x30d8], eax
_Z18SV_ArchiveSnapshotP5msg_t_520:
	mov edx, [ebp-0x30c0]
	cmp [ebp-0x30b8], edx
	jl _Z18SV_ArchiveSnapshotP5msg_t_380
_Z18SV_ArchiveSnapshotP5msg_t_430:
	mov ecx, [ebp-0x30bc]
	cmp [ebp-0x30b4], ecx
	jge _Z18SV_ArchiveSnapshotP5msg_t_390
	mov edx, svsHeader
	mov [ebp-0x30dc], edx
_Z18SV_ArchiveSnapshotP5msg_t_450:
	mov eax, [ebp-0x30b4]
	mov ecx, [ebp-0x30cc]
	add eax, [ecx+0x14]
	mov ecx, eax
	and ecx, 0x80000fff
	js _Z18SV_ArchiveSnapshotP5msg_t_400
_Z18SV_ArchiveSnapshotP5msg_t_570:
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
_Z18SV_ArchiveSnapshotP5msg_t_460:
	mov ecx, [ebp-0x30b8]
	mov [ebp-0x28], ecx
	cmp ecx, edx
	jz _Z18SV_ArchiveSnapshotP5msg_t_410
	jl _Z18SV_ArchiveSnapshotP5msg_t_420
	mov eax, [ebp-0x30b4]
	add eax, 0x1
	cmp [ebp-0x30b8], edx
	cmovle eax, [ebp-0x30b4]
	mov [ebp-0x30b4], eax
	mov edx, [ebp-0x30c0]
	cmp [ebp-0x30b8], edx
	jge _Z18SV_ArchiveSnapshotP5msg_t_430
_Z18SV_ArchiveSnapshotP5msg_t_380:
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
	jle _Z18SV_ArchiveSnapshotP5msg_t_440
	mov eax, [ebp-0x30bc]
	cmp [ebp-0x30b4], eax
	jl _Z18SV_ArchiveSnapshotP5msg_t_450
	mov dword [ebp-0x30c4], 0x0
	mov edx, 0x270f
	jmp _Z18SV_ArchiveSnapshotP5msg_t_460
_Z18SV_ArchiveSnapshotP5msg_t_410:
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
	call _Z20MSG_WriteDeltaClientP14SnapshotInfo_sP5msg_tiPK13clientState_sS5_i
	mov eax, [ebp-0x30b8]
	mov ecx, [ebp-0x30dc]
	imul eax, [ecx+0x74]
	add eax, [ecx+0x70]
	test byte [eax+0x14], 0x4
	jz _Z18SV_ArchiveSnapshotP5msg_t_470
	mov dword [esp+0x8], 0x2f64
	mov [esp+0x4], eax
	lea ecx, [ebp-0x30a4]
	mov [esp], ecx
	call memcpy
	xor edi, edi
	lea esi, [ebp-0x30a4]
	lea ebx, [ebp-0x2800]
	jmp _Z18SV_ArchiveSnapshotP5msg_t_480
_Z18SV_ArchiveSnapshotP5msg_t_500:
	mov dword [esp+0x8], 0xa0
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call memset
	add edi, 0x1
	add ebx, 0xa0
	add esi, 0xa0
	cmp edi, 0x1f
	jz _Z18SV_ArchiveSnapshotP5msg_t_490
_Z18SV_ArchiveSnapshotP5msg_t_480:
	mov eax, [esi+0x8a4]
	test eax, eax
	jnz _Z18SV_ArchiveSnapshotP5msg_t_500
_Z18SV_ArchiveSnapshotP5msg_t_490:
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z13MSG_WriteBit1P5msg_t
	mov edx, [ebp-0x30c4]
	mov eax, [edx]
	test eax, eax
	jnz _Z18SV_ArchiveSnapshotP5msg_t_510
	lea ecx, [ebp-0x30a4]
	mov [esp+0x10], ecx
	mov dword [esp+0xc], 0x0
_Z18SV_ArchiveSnapshotP5msg_t_640:
	mov eax, svsHeader
	mov eax, [eax+0x4]
	mov [esp+0x8], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	lea edx, [ebp-0x28]
	mov [esp], edx
	call _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5_
_Z18SV_ArchiveSnapshotP5msg_t_650:
	add dword [ebp-0x30b4], 0x1
_Z18SV_ArchiveSnapshotP5msg_t_440:
	add dword [ebp-0x30b8], 0x1
	jmp _Z18SV_ArchiveSnapshotP5msg_t_520
_Z18SV_ArchiveSnapshotP5msg_t_420:
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
	call _Z20MSG_WriteDeltaClientP14SnapshotInfo_sP5msg_tiPK13clientState_sS5_i
	mov eax, [ebp-0x30b8]
	mov ecx, [ebp-0x30dc]
	imul eax, [ecx+0x74]
	add eax, [ecx+0x70]
	test byte [eax+0x14], 0x4
	jz _Z18SV_ArchiveSnapshotP5msg_t_530
	mov dword [esp+0x8], 0x2f64
	mov [esp+0x4], eax
	lea ecx, [ebp-0x30a4]
	mov [esp], ecx
	call memcpy
	xor edi, edi
	lea esi, [ebp-0x30a4]
	lea ebx, [ebp-0x2800]
	jmp _Z18SV_ArchiveSnapshotP5msg_t_540
_Z18SV_ArchiveSnapshotP5msg_t_560:
	mov dword [esp+0x8], 0xa0
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call memset
	add edi, 0x1
	add ebx, 0xa0
	add esi, 0xa0
	cmp edi, 0x1f
	jz _Z18SV_ArchiveSnapshotP5msg_t_550
_Z18SV_ArchiveSnapshotP5msg_t_540:
	mov eax, [esi+0x8a4]
	test eax, eax
	jnz _Z18SV_ArchiveSnapshotP5msg_t_560
_Z18SV_ArchiveSnapshotP5msg_t_550:
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z13MSG_WriteBit1P5msg_t
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
	call _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5_
	jmp _Z18SV_ArchiveSnapshotP5msg_t_440
_Z18SV_ArchiveSnapshotP5msg_t_400:
	sub ecx, 0x1
	or ecx, 0xfffff000
	add ecx, 0x1
	jmp _Z18SV_ArchiveSnapshotP5msg_t_570
_Z18SV_ArchiveSnapshotP5msg_t_530:
	mov dword [esp+0x8], 0x2f64
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x30a4]
	mov [esp], eax
	call memset
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z13MSG_WriteBit0P5msg_t
	jmp _Z18SV_ArchiveSnapshotP5msg_t_440
_Z18SV_ArchiveSnapshotP5msg_t_390:
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z13MSG_WriteBit0P5msg_t
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z29MSG_ClearLastReferencedEntityP5msg_t
	mov ecx, svsHeader
	mov [ebp-0x30dc], ecx
	mov ebx, [ecx+0x54]
	test ebx, ebx
	jle _Z18SV_ArchiveSnapshotP5msg_t_290
	xor esi, esi
	jmp _Z18SV_ArchiveSnapshotP5msg_t_580
_Z18SV_ArchiveSnapshotP5msg_t_620:
	movzx edi, byte [ebx+0xf6]
	test edi, 0x1
	jnz _Z18SV_ArchiveSnapshotP5msg_t_590
	mov ecx, [ebx]
	lea eax, [ecx+ecx*2]
	shl eax, 0x4
	sub eax, ecx
	mov edx, [ebp-0x30dc]
	mov edx, [edx+0x24]
	lea eax, [edx+eax*8]
	and edi, 0x18
	jnz _Z18SV_ArchiveSnapshotP5msg_t_600
	mov eax, [eax+0x11c]
	test eax, eax
	jnz _Z18SV_ArchiveSnapshotP5msg_t_600
_Z18SV_ArchiveSnapshotP5msg_t_590:
	mov eax, [ebp-0x30dc]
_Z18SV_ArchiveSnapshotP5msg_t_610:
	add esi, 0x1
	cmp esi, [eax+0x54]
	jge _Z18SV_ArchiveSnapshotP5msg_t_290
_Z18SV_ArchiveSnapshotP5msg_t_580:
	mov ebx, esi
	mov eax, [ebp-0x30dc]
	imul ebx, [eax+0x68]
	add ebx, [eax+0x64]
	cmp byte [ebx+0xf4], 0x0
	jz _Z18SV_ArchiveSnapshotP5msg_t_610
	mov ecx, [ebx+0x104]
	test ecx, ecx
	jz _Z18SV_ArchiveSnapshotP5msg_t_620
	mov ecx, [ebx]
_Z18SV_ArchiveSnapshotP5msg_t_600:
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
	jz _Z18SV_ArchiveSnapshotP5msg_t_630
	or eax, 0x8
	mov [ebp-0x4c], eax
_Z18SV_ArchiveSnapshotP5msg_t_630:
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
	call _Z28MSG_WriteDeltaArchivedEntityP14SnapshotInfo_sP5msg_tiPK16archivedEntity_sS5_i
	mov byte [ebp-0x1c], 0x0
	mov ecx, [ebp-0x30e8]
	mov [ebp-0x30dc], ecx
	mov eax, ecx
	jmp _Z18SV_ArchiveSnapshotP5msg_t_610
_Z18SV_ArchiveSnapshotP5msg_t_510:
	mov eax, [ebp-0x30c4]
	add eax, 0x68
	lea ecx, [ebp-0x30a4]
	mov [esp+0x10], ecx
	mov [esp+0xc], eax
	jmp _Z18SV_ArchiveSnapshotP5msg_t_640
_Z18SV_ArchiveSnapshotP5msg_t_470:
	mov dword [esp+0x8], 0x2f64
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x30a4]
	mov [esp], eax
	call memset
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z13MSG_WriteBit0P5msg_t
	jmp _Z18SV_ArchiveSnapshotP5msg_t_650
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

