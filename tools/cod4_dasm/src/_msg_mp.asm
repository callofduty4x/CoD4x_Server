;Imports of msg_mp:
	extern memcpy
	extern cl_shownet
	extern Com_Printf
	extern hudElemFields
	extern numHudElemFields
	extern memset
	extern Q_CleanChar
	extern Huff_Init
	extern Sys_Milliseconds
	extern msg_hData
	extern Huff_BuildFromData
	extern CL_GetMapCenter
	extern Q_strncpyz
	extern numClientStateFields
	extern clientStateFields
	extern entityStateFields
	extern MSG_GetStateFieldListForEntityType
	extern msg_dumpEnts
	extern BG_GetEntityTypeName
	extern msg_printEntityNums
	extern Huff_offsetReceive
	extern Huff_offsetTransmit
	extern kbitmask
	extern Com_PrintError
	extern numPlayerStateFields
	extern playerStateFields
	extern objectiveFields
	extern numObjectiveFields
	extern clients
	extern CL_GetPredictedOriginForServerTime
	extern numArchivedEntityFields
	extern archivedEntityFields

;Exports of msg_mp:
	global msgInit
	global _ZZ14MSG_ReadStringP5msg_tE6string
	global _ZZ17MSG_ReadBigStringP5msg_tE6string
	global _ZZ18MSG_ReadStringLineP5msg_tE6string
	global MSG_ReadDeltaStruct
	global MSG_ReadDeltaHudElems
	global MSG_Discard
	global MSG_ReadBit
	global MSG_ReadBits
	global MSG_ReadByte
	global MSG_ReadData
	global MSG_ReadLong
	global MSG_ReadShort
	global MSG_WriteBit0
	global MSG_WriteBit1
	global MSG_WriteBits
	global MSG_WriteByte
	global MSG_WriteData
	global MSG_WriteLong
	global MSG_ReadString
	global MSG_WriteShort
	global MSG_WriteString
	global MSG_BeginReading
	global MSG_InitReadOnly
	global MSG_WriteAngle16
	global MSG_ReadBigString
	global MSG_ReadDeltaField
	global MSG_ReadStringLine
	global MSG_WriteBigString
	global MSG_GetUsedBitCount
	global MSG_ReadDeltaClient
	global MSG_ReadDeltaEntity
	global MSG_ReadEntityIndex
	global GetMinBitCountForNum
	global MSG_ReadBitsCompress
	global MSG_InitReadOnlySplit
	global MSG_SetDefaultUserCmd
	global MSG_WriteBitsCompress
	global MSG_ReadDeltaUsercmdKey
	global MSG_ReadDeltaPlayerstate
	global MSG_WriteDeltaUsercmdKey
	global MSG_ReadDeltaArchivedEntity
	global MSG_ClearLastReferencedEntity
	global MSG_Init
	global msgHuff


SECTION .text


;MSG_ReadDeltaStruct(msg_t*, int, void const*, void*, unsigned int, int, int, NetField const*, int)
MSG_ReadDeltaStruct:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov ebx, eax
	mov [ebp-0x30], edx
	mov [ebp-0x34], ecx
	mov eax, [eax+0x20]
	mov [ebp-0x3c], eax
	mov esi, eax
	and esi, 0x7
	jnz MSG_ReadDeltaStruct_10
	mov edx, [ebx+0x1c]
	mov edi, [ebx+0x14]
	mov eax, edi
	add eax, [ebx+0x18]
	cmp edx, eax
	jl MSG_ReadDeltaStruct_20
	mov dword [ebx], 0x1
MSG_ReadDeltaStruct_70:
	mov esi, [ebp-0x3c]
	and esi, 0x7
	jz MSG_ReadDeltaStruct_30
MSG_ReadDeltaStruct_240:
	mov edx, [ebp-0x3c]
	sar edx, 0x3
	cmp edx, edi
	jl MSG_ReadDeltaStruct_40
	sub edx, edi
	mov eax, [ebx+0xc]
	movzx eax, byte [eax+edx]
MSG_ReadDeltaStruct_190:
	add dword [ebp-0x3c], 0x1
	mov edx, [ebp-0x3c]
	mov [ebx+0x20], edx
	mov ecx, esi
	sar eax, cl
	test al, 0x1
	jnz MSG_ReadDeltaStruct_50
	mov edi, [ebp+0x10]
	lea eax, [edi*4+0x4]
	mov [esp+0x8], eax
	mov eax, [ebp-0x34]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call memcpy
	xor eax, eax
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MSG_ReadDeltaStruct_10:
	mov edi, [ebx+0x14]
MSG_ReadDeltaStruct_110:
	mov edx, [ebp-0x3c]
	sar edx, 0x3
	cmp edx, edi
	jl MSG_ReadDeltaStruct_60
	sub edx, edi
	mov eax, [ebx+0xc]
	movzx eax, byte [eax+edx]
MSG_ReadDeltaStruct_100:
	add dword [ebp-0x3c], 0x1
	mov edx, [ebp-0x3c]
	mov [ebx+0x20], edx
	mov ecx, esi
	sar eax, cl
	test al, 0x1
	jz MSG_ReadDeltaStruct_70
	mov eax, cl_shownet
	mov eax, [eax]
	test eax, eax
	jz MSG_ReadDeltaStruct_80
	mov eax, [eax+0xc]
	cmp eax, 0x1
	jle MSG_ReadDeltaStruct_90
MSG_ReadDeltaStruct_360:
	mov edi, [ebp+0xc]
	mov [esp+0xc], edi
	mov eax, [ebx+0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_3i_3i_remove
	mov dword [esp], 0x10
	call Com_Printf
	mov eax, 0x1
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MSG_ReadDeltaStruct_60:
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	jmp MSG_ReadDeltaStruct_100
MSG_ReadDeltaStruct_20:
	lea ecx, [edx*8]
	mov [ebp-0x3c], ecx
	mov [ebx+0x20], ecx
	lea eax, [edx+0x1]
	mov [ebx+0x1c], eax
	jmp MSG_ReadDeltaStruct_110
MSG_ReadDeltaStruct_30:
	mov edx, [ebx+0x1c]
	mov eax, edi
	add eax, [ebx+0x18]
	cmp edx, eax
	jl MSG_ReadDeltaStruct_120
	mov dword [ebx], 0x1
MSG_ReadDeltaStruct_50:
	test dword [ebp+0x1c], 0xffff0000
	jnz MSG_ReadDeltaStruct_130
	mov ecx, 0x10
	mov dword [ebp-0x1c], 0x10
	mov edx, [ebp+0x1c]
	shl edx, cl
	test edx, 0xff000000
	jnz MSG_ReadDeltaStruct_140
MSG_ReadDeltaStruct_200:
	mov esi, 0x8
	mov eax, 0x8
	add eax, [ebp-0x1c]
	mov [ebp-0x3c], eax
	mov ecx, esi
	shl edx, cl
	test edx, 0xf0000000
	jnz MSG_ReadDeltaStruct_150
MSG_ReadDeltaStruct_210:
	mov esi, 0x4
	mov eax, 0x4
	add eax, [ebp-0x3c]
	mov [ebp-0x3c], eax
	mov ecx, esi
	shl edx, cl
	test edx, 0xc0000000
	jnz MSG_ReadDeltaStruct_160
MSG_ReadDeltaStruct_220:
	mov esi, 0x2
	mov eax, 0x2
MSG_ReadDeltaStruct_230:
	add eax, [ebp-0x3c]
	mov ecx, esi
	shl edx, cl
	mov ecx, edx
	not ecx
	shr ecx, 0x1f
	add eax, ecx
	shl edx, cl
	not edx
	shr edx, 0x1f
	add eax, edx
	mov dword [ebp-0x24], 0x20
	sub [ebp-0x24], eax
	mov esi, [ebp-0x24]
	test esi, esi
	jg MSG_ReadDeltaStruct_170
	mov dword [ebp-0x2c], 0x0
MSG_ReadDeltaStruct_310:
	mov edi, [ebp+0x10]
	cmp [ebp-0x2c], edi
	jle MSG_ReadDeltaStruct_180
	mov dword [ebx], 0x1
	xor eax, eax
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MSG_ReadDeltaStruct_40:
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	jmp MSG_ReadDeltaStruct_190
MSG_ReadDeltaStruct_130:
	xor ecx, ecx
	mov dword [ebp-0x1c], 0x0
	mov edx, [ebp+0x1c]
	shl edx, cl
	test edx, 0xff000000
	jz MSG_ReadDeltaStruct_200
MSG_ReadDeltaStruct_140:
	xor esi, esi
	xor eax, eax
	add eax, [ebp-0x1c]
	mov [ebp-0x3c], eax
	mov ecx, esi
	shl edx, cl
	test edx, 0xf0000000
	jz MSG_ReadDeltaStruct_210
MSG_ReadDeltaStruct_150:
	xor esi, esi
	xor eax, eax
	add eax, [ebp-0x3c]
	mov [ebp-0x3c], eax
	mov ecx, esi
	shl edx, cl
	test edx, 0xc0000000
	jz MSG_ReadDeltaStruct_220
MSG_ReadDeltaStruct_160:
	xor esi, esi
	xor eax, eax
	jmp MSG_ReadDeltaStruct_230
MSG_ReadDeltaStruct_120:
	lea eax, [edx*8]
	mov [ebp-0x3c], eax
	mov [ebx+0x20], eax
	lea eax, [edx+0x1]
	mov [ebx+0x1c], eax
	jmp MSG_ReadDeltaStruct_240
MSG_ReadDeltaStruct_180:
	mov eax, cl_shownet
	mov eax, [eax]
	test eax, eax
	jz MSG_ReadDeltaStruct_250
	mov eax, [eax+0xc]
	cmp eax, 0x1
	jle MSG_ReadDeltaStruct_260
MSG_ReadDeltaStruct_370:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0xc], eax
	mov eax, [ebx+0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_3i_3i_
	mov dword [esp], 0x10
	call Com_Printf
	mov dword [ebp-0x28], 0x1
MSG_ReadDeltaStruct_380:
	mov edi, [ebp+0xc]
	mov ecx, [ebp+0x8]
	mov [ecx], edi
	mov ecx, [ebp-0x2c]
	test ecx, ecx
	jg MSG_ReadDeltaStruct_270
MSG_ReadDeltaStruct_400:
	mov eax, [ebp-0x2c]
	shl eax, 0x4
	mov ecx, [ebp+0x18]
	add ecx, eax
	mov edx, [ebp+0x10]
	cmp [ebp-0x2c], edx
	jge MSG_ReadDeltaStruct_280
	xor ebx, ebx
	mov esi, edx
	sub esi, [ebp-0x2c]
MSG_ReadDeltaStruct_290:
	mov edx, [ecx+0x4]
	mov edi, [ebp-0x34]
	mov eax, [edx+edi]
	mov edi, [ebp+0x8]
	mov [edx+edi], eax
	add ecx, 0x10
	add ebx, 0x1
	cmp esi, ebx
	jnz MSG_ReadDeltaStruct_290
MSG_ReadDeltaStruct_280:
	xor eax, eax
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MSG_ReadDeltaStruct_170:
	xor esi, esi
	mov dword [ebp-0x2c], 0x0
	mov eax, [ebx+0x20]
	jmp MSG_ReadDeltaStruct_300
MSG_ReadDeltaStruct_340:
	sub edx, edi
	mov eax, [ebx+0xc]
	movzx eax, byte [eax+edx]
MSG_ReadDeltaStruct_350:
	movzx ecx, byte [ebp-0x20]
	sar eax, cl
	and eax, 0x1
	mov ecx, esi
	shl eax, cl
	or [ebp-0x2c], eax
	mov eax, [ebp-0x3c]
	add eax, 0x1
	mov [ebx+0x20], eax
	add esi, 0x1
	cmp [ebp-0x24], esi
	jz MSG_ReadDeltaStruct_310
MSG_ReadDeltaStruct_300:
	mov [ebp-0x3c], eax
	and eax, 0x7
	mov [ebp-0x20], eax
	jnz MSG_ReadDeltaStruct_320
	mov edx, [ebx+0x1c]
	mov eax, edi
	add eax, [ebx+0x18]
	cmp edx, eax
	jge MSG_ReadDeltaStruct_330
	lea ecx, [edx*8]
	mov [ebp-0x3c], ecx
	mov [ebx+0x20], ecx
	lea eax, [edx+0x1]
	mov [ebx+0x1c], eax
MSG_ReadDeltaStruct_320:
	mov edx, [ebp-0x3c]
	sar edx, 0x3
	cmp edx, edi
	jge MSG_ReadDeltaStruct_340
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	jmp MSG_ReadDeltaStruct_350
MSG_ReadDeltaStruct_90:
	add eax, 0x1
	jz MSG_ReadDeltaStruct_360
MSG_ReadDeltaStruct_80:
	mov eax, 0x1
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MSG_ReadDeltaStruct_260:
	add eax, 0x1
	jz MSG_ReadDeltaStruct_370
MSG_ReadDeltaStruct_250:
	mov dword [ebp-0x28], 0x0
	jmp MSG_ReadDeltaStruct_380
MSG_ReadDeltaStruct_270:
	mov esi, [ebp+0x18]
	xor edi, edi
MSG_ReadDeltaStruct_390:
	mov dword [esp+0x18], 0x0
	mov eax, [ebp-0x28]
	mov [esp+0x14], eax
	mov [esp+0x10], esi
	mov edx, [ebp+0x8]
	mov [esp+0xc], edx
	mov ecx, [ebp-0x34]
	mov [esp+0x8], ecx
	mov eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov [esp], ebx
	call MSG_ReadDeltaField
	add edi, 0x1
	add esi, 0x10
	cmp [ebp-0x2c], edi
	jnz MSG_ReadDeltaStruct_390
	jmp MSG_ReadDeltaStruct_400
MSG_ReadDeltaStruct_330:
	mov dword [ebx], 0x1
	mov dword [ebp-0x2c], 0xffffffff
	jmp MSG_ReadDeltaStruct_310


;MSG_ReadDeltaHudElems(msg_t*, int, hudelem_s const*, hudelem_s*, int)
MSG_ReadDeltaHudElems:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov edi, eax
	mov [ebp-0x3c], edx
	mov [ebp-0x40], ecx
	mov dword [ebp-0x1c], 0x0
	xor ebx, ebx
	mov esi, [eax+0x14]
	mov eax, [eax+0x20]
MSG_ReadDeltaHudElems_40:
	mov [ebp-0x4c], eax
	and eax, 0x7
	mov [ebp-0x34], eax
	jnz MSG_ReadDeltaHudElems_10
	mov edx, [edi+0x1c]
	mov eax, esi
	add eax, [edi+0x18]
	cmp edx, eax
	jge MSG_ReadDeltaHudElems_20
	lea ecx, [edx*8]
	mov [ebp-0x4c], ecx
	mov [edi+0x20], ecx
	lea eax, [edx+0x1]
	mov [edi+0x1c], eax
MSG_ReadDeltaHudElems_10:
	mov edx, [ebp-0x4c]
	sar edx, 0x3
	cmp edx, esi
	jl MSG_ReadDeltaHudElems_30
	sub edx, esi
	mov eax, [edi+0xc]
	movzx eax, byte [eax+edx]
MSG_ReadDeltaHudElems_150:
	movzx ecx, byte [ebp-0x34]
	sar eax, cl
	and eax, 0x1
	mov ecx, ebx
	shl eax, cl
	or [ebp-0x1c], eax
	add dword [ebp-0x4c], 0x1
	mov eax, [ebp-0x4c]
	mov [edi+0x20], eax
	add ebx, 0x1
	cmp ebx, 0x5
	jnz MSG_ReadDeltaHudElems_40
	mov eax, [ebp-0x1c]
	test eax, eax
	jle MSG_ReadDeltaHudElems_50
	mov edx, [ebp-0x40]
	mov [ebp-0x24], edx
	mov ecx, [ebp+0x8]
	mov [ebp-0x20], ecx
	mov dword [ebp-0x38], 0x0
MSG_ReadDeltaHudElems_140:
	mov dword [ebp-0x30], 0x0
	xor ebx, ebx
	mov eax, [edi+0x20]
	jmp MSG_ReadDeltaHudElems_60
MSG_ReadDeltaHudElems_100:
	sub edx, esi
	mov eax, [edi+0xc]
	movzx eax, byte [eax+edx]
	movzx ecx, byte [ebp-0x2c]
	sar eax, cl
	and eax, 0x1
	mov ecx, ebx
	shl eax, cl
	or [ebp-0x30], eax
	mov eax, [ebp-0x4c]
	add eax, 0x1
	mov [edi+0x20], eax
	add ebx, 0x1
	cmp ebx, 0x6
	jz MSG_ReadDeltaHudElems_70
MSG_ReadDeltaHudElems_60:
	mov [ebp-0x4c], eax
	and eax, 0x7
	mov [ebp-0x2c], eax
	jnz MSG_ReadDeltaHudElems_80
	mov edx, [edi+0x1c]
	mov eax, esi
	add eax, [edi+0x18]
	cmp edx, eax
	jge MSG_ReadDeltaHudElems_90
	lea ecx, [edx*8]
	mov [ebp-0x4c], ecx
	mov [edi+0x20], ecx
	lea eax, [edx+0x1]
	mov [edi+0x1c], eax
MSG_ReadDeltaHudElems_80:
	mov edx, [ebp-0x4c]
	sar edx, 0x3
	cmp edx, esi
	jge MSG_ReadDeltaHudElems_100
	mov eax, [edi+0x8]
	movzx eax, byte [eax+edx]
	movzx ecx, byte [ebp-0x2c]
	sar eax, cl
	and eax, 0x1
	mov ecx, ebx
	shl eax, cl
	or [ebp-0x30], eax
	mov eax, [ebp-0x4c]
	add eax, 0x1
	mov [edi+0x20], eax
	add ebx, 0x1
	cmp ebx, 0x6
	jnz MSG_ReadDeltaHudElems_60
MSG_ReadDeltaHudElems_70:
	mov eax, [ebp-0x30]
	mov [ebp-0x28], eax
MSG_ReadDeltaHudElems_180:
	xor ebx, ebx
	mov esi, hudElemFields
MSG_ReadDeltaHudElems_110:
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov [esp+0x10], esi
	mov edx, [ebp-0x20]
	mov [esp+0xc], edx
	mov ecx, [ebp-0x24]
	mov [esp+0x8], ecx
	mov eax, [ebp-0x3c]
	mov [esp+0x4], eax
	mov [esp], edi
	call MSG_ReadDeltaField
	add ebx, 0x1
	add esi, 0x10
	cmp [ebp-0x28], ebx
	jae MSG_ReadDeltaHudElems_110
	mov eax, numHudElemFields
	cmp [eax], ebx
	jbe MSG_ReadDeltaHudElems_120
	mov esi, hudElemFields
	mov eax, [eax]
	mov [ebp-0x4c], eax
MSG_ReadDeltaHudElems_130:
	mov eax, ebx
	shl eax, 0x4
	mov edx, [esi+eax+0x4]
	mov ecx, [ebp-0x24]
	mov eax, [edx+ecx]
	mov ecx, [ebp-0x20]
	mov [edx+ecx], eax
	add ebx, 0x1
	cmp ebx, [ebp-0x4c]
	jb MSG_ReadDeltaHudElems_130
MSG_ReadDeltaHudElems_120:
	add dword [ebp-0x38], 0x1
	add dword [ebp-0x24], 0xa0
	add dword [ebp-0x20], 0xa0
	mov eax, [ebp-0x1c]
	cmp [ebp-0x38], eax
	jz MSG_ReadDeltaHudElems_50
	mov esi, [edi+0x14]
	jmp MSG_ReadDeltaHudElems_140
MSG_ReadDeltaHudElems_30:
	mov eax, [edi+0x8]
	movzx eax, byte [eax+edx]
	jmp MSG_ReadDeltaHudElems_150
MSG_ReadDeltaHudElems_20:
	mov dword [edi], 0x1
	mov dword [ebp-0x1c], 0xffffffff
MSG_ReadDeltaHudElems_50:
	mov edx, [ebp+0xc]
	cmp [ebp-0x1c], edx
	jge MSG_ReadDeltaHudElems_160
	mov ecx, [ebp-0x1c]
	lea eax, [ecx+ecx*4]
	shl eax, 0x5
	mov ecx, [ebp+0x8]
	lea edx, [eax+ecx]
	mov edi, [edx]
	test edi, edi
	jnz MSG_ReadDeltaHudElems_170
MSG_ReadDeltaHudElems_160:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MSG_ReadDeltaHudElems_90:
	mov dword [edi], 0x1
	mov dword [ebp-0x28], 0xffffffff
	jmp MSG_ReadDeltaHudElems_180
MSG_ReadDeltaHudElems_170:
	mov ecx, [ebp-0x1c]
	lea eax, [ecx+ecx*4]
	shl eax, 0x5
	mov ecx, [ebp+0x8]
	lea edi, [ecx+eax+0xa0]
	mov esi, edi
	mov ebx, [ebp-0x1c]
MSG_ReadDeltaHudElems_190:
	mov dword [esp+0x8], 0xa0
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call memset
	add ebx, 0x1
	cmp ebx, [ebp+0xc]
	jz MSG_ReadDeltaHudElems_160
	mov edx, edi
	mov eax, [esi]
	add edi, 0xa0
	add esi, 0xa0
	test eax, eax
	jnz MSG_ReadDeltaHudElems_190
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;MSG_Discard(msg_t*)
MSG_Discard:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov dword [eax], 0x1
	mov edx, [eax+0x1c]
	mov [eax+0x14], edx
	mov dword [eax+0x18], 0x0
	pop ebp
	ret
	nop


;MSG_ReadBit(msg_t*)
MSG_ReadBit:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4
	mov esi, [ebp+0x8]
	mov eax, [esi+0x20]
	mov [ebp-0x10], eax
	mov edi, eax
	and edi, 0x7
	jnz MSG_ReadBit_10
	mov edx, [esi+0x1c]
	mov ebx, [esi+0x14]
	mov eax, ebx
	add eax, [esi+0x18]
	cmp edx, eax
	jge MSG_ReadBit_20
	lea ecx, [edx*8]
	mov [ebp-0x10], ecx
	mov [esi+0x20], ecx
	lea eax, [edx+0x1]
	mov [esi+0x1c], eax
	mov edx, [ebp-0x10]
	sar edx, 0x3
	cmp edx, ebx
	jl MSG_ReadBit_30
MSG_ReadBit_40:
	sub edx, ebx
	mov eax, [esi+0xc]
	movzx eax, byte [eax+edx]
MSG_ReadBit_50:
	mov edx, eax
	mov ecx, edi
	sar edx, cl
	and edx, 0x1
	mov eax, [ebp-0x10]
	add eax, 0x1
	mov [esi+0x20], eax
MSG_ReadBit_60:
	mov eax, edx
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MSG_ReadBit_10:
	mov ebx, [esi+0x14]
	mov edx, [ebp-0x10]
	sar edx, 0x3
	cmp edx, ebx
	jge MSG_ReadBit_40
MSG_ReadBit_30:
	mov eax, [esi+0x8]
	movzx eax, byte [eax+edx]
	jmp MSG_ReadBit_50
MSG_ReadBit_20:
	mov dword [esi], 0x1
	mov edx, 0xffffffff
	jmp MSG_ReadBit_60
	nop


;MSG_ReadBits(msg_t*, int)
MSG_ReadBits:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xc
	mov ebx, [ebp+0x8]
	mov edx, [ebp+0xc]
	test edx, edx
	jg MSG_ReadBits_10
	mov dword [ebp-0x14], 0x0
MSG_ReadBits_30:
	mov eax, [ebp-0x14]
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MSG_ReadBits_10:
	mov dword [ebp-0x14], 0x0
	xor edi, edi
	mov esi, [ebx+0x14]
	mov eax, [ebx+0x20]
	jmp MSG_ReadBits_20
MSG_ReadBits_60:
	sub edx, esi
	mov eax, [ebx+0xc]
	movzx eax, byte [eax+edx]
MSG_ReadBits_70:
	movzx ecx, byte [ebp-0x10]
	sar eax, cl
	and eax, 0x1
	mov ecx, edi
	shl eax, cl
	or [ebp-0x14], eax
	mov eax, [ebp-0x18]
	add eax, 0x1
	mov [ebx+0x20], eax
	add edi, 0x1
	cmp [ebp+0xc], edi
	jz MSG_ReadBits_30
MSG_ReadBits_20:
	mov [ebp-0x18], eax
	and eax, 0x7
	mov [ebp-0x10], eax
	jnz MSG_ReadBits_40
	mov edx, [ebx+0x1c]
	mov eax, esi
	add eax, [ebx+0x18]
	cmp edx, eax
	jge MSG_ReadBits_50
	lea ecx, [edx*8]
	mov [ebp-0x18], ecx
	mov [ebx+0x20], ecx
	lea eax, [edx+0x1]
	mov [ebx+0x1c], eax
MSG_ReadBits_40:
	mov edx, [ebp-0x18]
	sar edx, 0x3
	cmp edx, esi
	jge MSG_ReadBits_60
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	jmp MSG_ReadBits_70
MSG_ReadBits_50:
	mov dword [ebx], 0x1
	mov dword [ebp-0x14], 0xffffffff
	jmp MSG_ReadBits_30
	nop


;MSG_ReadByte(msg_t*)
MSG_ReadByte:
	push ebp
	mov ebp, esp
	push ebx
	mov ebx, [ebp+0x8]
	mov ecx, [ebx+0x1c]
	mov edx, [ebx+0x14]
	mov eax, edx
	add eax, [ebx+0x18]
	cmp ecx, eax
	jge MSG_ReadByte_10
	cmp ecx, edx
	jl MSG_ReadByte_20
	mov eax, ecx
	sub eax, edx
	mov edx, eax
	mov eax, [ebx+0xc]
	movzx edx, byte [eax+edx]
MSG_ReadByte_30:
	lea eax, [ecx+0x1]
	mov [ebx+0x1c], eax
	mov eax, edx
	pop ebx
	pop ebp
	ret
MSG_ReadByte_20:
	mov eax, [ebx+0x8]
	movzx edx, byte [eax+ecx]
	jmp MSG_ReadByte_30
MSG_ReadByte_10:
	mov dword [ebx], 0x1
	mov edx, 0xffffffff
	mov eax, edx
	pop ebx
	pop ebp
	ret
	nop


;MSG_ReadData(msg_t*, void*, int)
MSG_ReadData:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov ebx, [ebp+0x10]
	mov ecx, [edi+0x1c]
	lea eax, [ecx+ebx]
	mov [ebp-0x1c], eax
	mov edx, [edi+0x14]
	cmp eax, edx
	jle MSG_ReadData_10
	mov eax, edx
	add eax, [edi+0x18]
	cmp [ebp-0x1c], eax
	jg MSG_ReadData_20
	mov esi, edx
	sub esi, ecx
	test esi, esi
	jle MSG_ReadData_30
	add ecx, [edi+0x8]
	mov [esp+0x8], esi
	mov [esp+0x4], ecx
	mov eax, [ebp+0xc]
	mov [esp], eax
	call memcpy
	sub ebx, esi
	add [ebp+0xc], esi
MSG_ReadData_30:
	test ebx, ebx
	jle MSG_ReadData_40
	mov eax, [edi+0x1c]
	sub eax, [edi+0x14]
	add eax, [edi+0xc]
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call memcpy
MSG_ReadData_40:
	mov eax, [ebp-0x1c]
	mov [edi+0x1c], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MSG_ReadData_20:
	mov dword [edi], 0x1
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0xffffffff
	mov eax, [ebp+0xc]
	mov [esp], eax
	call memset
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MSG_ReadData_10:
	add ecx, [edi+0x8]
	mov [esp+0x8], ebx
	mov [esp+0x4], ecx
	mov eax, [ebp+0xc]
	mov [esp], eax
	call memcpy
	mov eax, [ebp-0x1c]
	mov [edi+0x1c], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;MSG_ReadLong(msg_t*)
MSG_ReadLong:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x14
	mov edi, [ebp+0x8]
	mov ecx, [edi+0x1c]
	lea eax, [ecx+0x4]
	mov [ebp-0x20], eax
	mov esi, [edi+0x14]
	mov eax, esi
	add eax, [edi+0x18]
	cmp [ebp-0x20], eax
	jg MSG_ReadLong_10
	mov ebx, 0x1
MSG_ReadLong_30:
	cmp esi, ecx
	jg MSG_ReadLong_20
	mov edx, ecx
	sub edx, esi
	mov eax, [edi+0xc]
	movzx eax, byte [eax+edx]
MSG_ReadLong_40:
	mov [ebp+ebx-0x11], al
	add ecx, 0x1
	add ebx, 0x1
	cmp ebx, 0x5
	jnz MSG_ReadLong_30
	mov eax, [ebp-0x20]
	mov [edi+0x1c], eax
	mov eax, [ebp-0x10]
MSG_ReadLong_50:
	add esp, 0x14
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MSG_ReadLong_20:
	mov eax, [edi+0x8]
	movzx eax, byte [ecx+eax]
	jmp MSG_ReadLong_40
MSG_ReadLong_10:
	mov dword [edi], 0x1
	mov eax, 0xffffffff
	jmp MSG_ReadLong_50
	add [eax], al


;MSG_ReadShort(msg_t*)
MSG_ReadShort:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x14
	mov edi, [ebp+0x8]
	mov ecx, [edi+0x1c]
	lea eax, [ecx+0x2]
	mov [ebp-0x20], eax
	mov esi, [edi+0x14]
	mov eax, esi
	add eax, [edi+0x18]
	cmp [ebp-0x20], eax
	jg MSG_ReadShort_10
	mov ebx, 0x1
MSG_ReadShort_30:
	cmp esi, ecx
	jg MSG_ReadShort_20
	mov edx, ecx
	sub edx, esi
	mov eax, [edi+0xc]
	movzx eax, byte [eax+edx]
MSG_ReadShort_40:
	mov [ebp+ebx-0xf], al
	add ecx, 0x1
	add ebx, 0x1
	cmp ebx, 0x3
	jnz MSG_ReadShort_30
	movsx eax, word [ebp-0xe]
	mov edx, [ebp-0x20]
	mov [edi+0x1c], edx
MSG_ReadShort_50:
	add esp, 0x14
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MSG_ReadShort_20:
	mov eax, [edi+0x8]
	movzx eax, byte [ecx+eax]
	jmp MSG_ReadShort_40
MSG_ReadShort_10:
	mov dword [edi], 0x1
	mov eax, 0xffffffff
	jmp MSG_ReadShort_50
	nop


;MSG_WriteBit0(msg_t*)
MSG_WriteBit0:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, [edx+0x20]
	test al, 0x7
	jnz MSG_WriteBit0_10
	mov ecx, [edx+0x14]
	cmp ecx, [edx+0x10]
	jge MSG_WriteBit0_20
	lea eax, [ecx*8]
	mov [edx+0x20], eax
	mov eax, [edx+0x8]
	mov byte [eax+ecx], 0x0
	add dword [edx+0x14], 0x1
	mov eax, [edx+0x20]
MSG_WriteBit0_10:
	add eax, 0x1
	mov [edx+0x20], eax
	pop ebp
	ret
MSG_WriteBit0_20:
	mov dword [edx], 0x1
	pop ebp
	ret
	nop


;MSG_WriteBit1(msg_t*)
MSG_WriteBit1:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov edi, [ebp+0x8]
	mov edx, [edi+0x20]
	mov esi, edx
	and esi, 0x7
	jnz MSG_WriteBit1_10
	mov ebx, [edi+0x14]
	cmp ebx, [edi+0x10]
	jge MSG_WriteBit1_20
	lea edx, [ebx*8]
	mov [edi+0x20], edx
	mov eax, [edi+0x8]
	mov byte [eax+ebx], 0x0
	add dword [edi+0x14], 0x1
	mov edx, [edi+0x20]
MSG_WriteBit1_10:
	sar edx, 0x3
	add edx, [edi+0x8]
	mov eax, 0x1
	mov ecx, esi
	shl eax, cl
	or [edx], al
	add dword [edi+0x20], 0x1
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MSG_WriteBit1_20:
	mov dword [edi], 0x1
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;MSG_WriteBits(msg_t*, int, int)
MSG_WriteBits:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov eax, [ebx+0x10]
	sub eax, [ebx+0x14]
	cmp eax, 0x3
	jg MSG_WriteBits_10
	mov dword [ebx], 0x1
MSG_WriteBits_20:
	add esp, 0x8
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MSG_WriteBits_10:
	mov eax, [ebp+0x10]
	test eax, eax
	jz MSG_WriteBits_20
	xor edi, edi
	mov eax, [ebx+0x20]
	mov [ebp-0x14], eax
	mov edx, eax
	jmp MSG_WriteBits_30
MSG_WriteBits_50:
	sar dword [ebp-0x14], 0x3
	mov edx, [ebx+0x8]
	add [ebp-0x14], edx
	mov eax, 0x1
	movzx ecx, byte [ebp-0x10]
	shl eax, cl
	mov edx, [ebp-0x14]
	or [edx], al
	mov ecx, [ebx+0x20]
	mov [ebp-0x14], ecx
	mov eax, ecx
MSG_WriteBits_60:
	add eax, 0x1
	mov [ebp-0x14], eax
	mov [ebx+0x20], eax
	sar esi, 1
	add edi, 0x1
	cmp [ebp+0x10], edi
	jz MSG_WriteBits_20
	mov edx, [ebp-0x14]
MSG_WriteBits_30:
	and edx, 0x7
	mov [ebp-0x10], edx
	jnz MSG_WriteBits_40
	mov edx, [ebx+0x14]
	lea ecx, [edx*8]
	mov [ebx+0x20], ecx
	mov eax, [ebx+0x8]
	mov byte [eax+edx], 0x0
	add dword [ebx+0x14], 0x1
	mov eax, [ebx+0x20]
	mov [ebp-0x14], eax
MSG_WriteBits_40:
	test esi, 0x1
	jnz MSG_WriteBits_50
	mov eax, [ebp-0x14]
	jmp MSG_WriteBits_60


;MSG_WriteByte(msg_t*, int)
MSG_WriteByte:
	push ebp
	mov ebp, esp
	push ebx
	mov edx, [ebp+0x8]
	mov ecx, [edx+0x14]
	cmp ecx, [edx+0x10]
	jge MSG_WriteByte_10
	mov eax, [edx+0x8]
	movzx ebx, byte [ebp+0xc]
	mov [eax+ecx], bl
	add dword [edx+0x14], 0x1
	pop ebx
	pop ebp
	ret
MSG_WriteByte_10:
	mov dword [edx], 0x1
	pop ebx
	pop ebp
	ret
	nop


;MSG_WriteData(msg_t*, void const*, int)
MSG_WriteData:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov edx, [ebp+0x10]
	mov eax, [ebx+0x14]
	lea esi, [eax+edx]
	cmp esi, [ebx+0x10]
	jle MSG_WriteData_10
	mov dword [ebx], 0x1
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
MSG_WriteData_10:
	add eax, [ebx+0x8]
	mov [esp+0x8], edx
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	mov [ebx+0x14], esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	add [eax], al


;MSG_WriteLong(msg_t*, int)
MSG_WriteLong:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov edx, [ebp+0x8]
	mov ebx, [edx+0x14]
	lea ecx, [ebx+0x4]
	cmp ecx, [edx+0x10]
	jg MSG_WriteLong_10
	mov eax, [edx+0x8]
	mov esi, [ebp+0xc]
	mov [eax+ebx], esi
	mov [edx+0x14], ecx
	pop ebx
	pop esi
	pop ebp
	ret
MSG_WriteLong_10:
	mov dword [edx], 0x1
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;MSG_ReadString(msg_t*)
MSG_ReadString:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	xor edi, edi
	jmp MSG_ReadString_10
MSG_ReadString_60:
	cmp ecx, edx
	jl MSG_ReadString_20
	mov eax, ecx
	sub eax, edx
	mov edx, eax
	mov eax, [esi+0xc]
	movzx ebx, byte [eax+edx]
MSG_ReadString_90:
	lea eax, [ecx+0x1]
	mov [esi+0x1c], eax
	cmp ebx, 0xffffffff
	jz MSG_ReadString_30
	cmp edi, 0x3ff
	jbe MSG_ReadString_40
MSG_ReadString_70:
	test ebx, ebx
	jz MSG_ReadString_50
MSG_ReadString_80:
	add edi, 0x1
MSG_ReadString_10:
	mov ecx, [esi+0x1c]
	mov edx, [esi+0x14]
	mov eax, edx
	add eax, [esi+0x18]
	cmp ecx, eax
	jl MSG_ReadString_60
	mov dword [esi], 0x1
MSG_ReadString_30:
	xor ebx, ebx
	cmp edi, 0x3ff
	ja MSG_ReadString_70
MSG_ReadString_40:
	movsx eax, bl
	mov [esp], eax
	call Q_CleanChar
	mov [edi+_ZZ14MSG_ReadStringP5msg_tE6string], al
	test ebx, ebx
	jnz MSG_ReadString_80
MSG_ReadString_50:
	mov byte [_ZZ14MSG_ReadStringP5msg_tE6string+0x3ff], 0x0
	mov eax, _ZZ14MSG_ReadStringP5msg_tE6string
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MSG_ReadString_20:
	mov eax, [esi+0x8]
	movzx ebx, byte [eax+ecx]
	jmp MSG_ReadString_90


;MSG_WriteShort(msg_t*, int)
MSG_WriteShort:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov edx, [ebp+0x8]
	mov ebx, [edx+0x14]
	lea ecx, [ebx+0x2]
	cmp ecx, [edx+0x10]
	jg MSG_WriteShort_10
	mov eax, [edx+0x8]
	movzx esi, word [ebp+0xc]
	mov [eax+ebx], si
	mov [edx+0x14], ecx
	pop ebx
	pop esi
	pop ebp
	ret
MSG_WriteShort_10:
	mov dword [edx], 0x1
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;MSG_WriteString(msg_t*, char const*)
MSG_WriteString:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x41c
	mov esi, [ebp+0xc]
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	not ecx
	lea ebx, [ecx-0x1]
	cmp ebx, 0x3ff
	jg MSG_WriteString_10
	test ebx, ebx
	jg MSG_WriteString_20
	xor eax, eax
	mov byte [ebp+eax-0x418], 0x0
	lea ecx, [ebx+0x1]
	mov eax, [ebp+0x8]
	mov edx, [eax+0x14]
	lea ebx, [ecx+edx]
	cmp ebx, [eax+0x10]
	jle MSG_WriteString_30
MSG_WriteString_50:
	mov dword [eax], 0x1
MSG_WriteString_70:
	add esp, 0x41c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MSG_WriteString_20:
	xor edi, edi
MSG_WriteString_40:
	movsx eax, byte [esi+edi]
	mov [esp], eax
	call Q_CleanChar
	mov [edi+ebp-0x418], al
	add edi, 0x1
	cmp edi, ebx
	jnz MSG_WriteString_40
	mov eax, ebx
	mov byte [ebp+eax-0x418], 0x0
	lea ecx, [ebx+0x1]
	mov eax, [ebp+0x8]
	mov edx, [eax+0x14]
	lea ebx, [ecx+edx]
	cmp ebx, [eax+0x10]
	jg MSG_WriteString_50
MSG_WriteString_30:
	add edx, [eax+0x8]
	lea eax, [ebp-0x418]
	mov [esp+0x8], ecx
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
	mov edx, [ebp+0x8]
	mov [edx+0x14], ebx
	add esp, 0x41c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MSG_WriteString_10:
	mov dword [esp+0x4], _cstring_msg_writestring_
	mov dword [esp], 0x10
	call Com_Printf
	mov edx, [ebp+0x8]
	mov eax, [edx+0x14]
	lea edx, [eax+0x1]
	mov ecx, [ebp+0x8]
	cmp edx, [ecx+0x10]
	jle MSG_WriteString_60
	mov dword [ecx], 0x1
	add esp, 0x41c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MSG_WriteString_60:
	add eax, [ecx+0x8]
	mov byte [eax], 0x0
	mov [ecx+0x14], edx
	jmp MSG_WriteString_70
	nop


;MSG_BeginReading(msg_t*)
MSG_BeginReading:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov dword [eax], 0x0
	mov dword [eax+0x1c], 0x0
	mov dword [eax+0x20], 0x0
	pop ebp
	ret


;MSG_InitReadOnly(msg_t*, unsigned char*, int)
MSG_InitReadOnly:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov edi, [ebp+0x10]
	mov ebx, [msgInit]
	test ebx, ebx
	jnz MSG_InitReadOnly_10
	mov dword [msgInit], 0x1
	mov dword [esp], msgHuff
	call Huff_Init
	call Sys_Milliseconds
	mov ebx, eax
	mov eax, msg_hData
	mov [esp+0x4], eax
	mov dword [esp], msgHuff
	call Huff_BuildFromData
	call Sys_Milliseconds
	sub eax, ebx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_huffman_took_d_m
	mov dword [esp], 0x10
	call Com_Printf
MSG_InitReadOnly_10:
	mov dword [esi+0x4], 0x1
	mov eax, [ebp+0xc]
	mov [esi+0x8], eax
	mov [esi+0x10], edi
	mov [esi+0x14], edi
	mov dword [esi+0xc], 0x0
	mov dword [esi+0x18], 0x0
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;MSG_WriteAngle16(msg_t*, float)
MSG_WriteAngle16:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov ebx, [ebp+0x8]
	movss xmm0, dword [_float_182_04444885]
	mulss xmm0, [ebp+0xc]
	addss xmm0, [_float_0_50000000]
	cvttss2si eax, xmm0
	movzx esi, ax
	mov ecx, [ebx+0x14]
	lea edx, [ecx+0x2]
	cmp edx, [ebx+0x10]
	jg MSG_WriteAngle16_10
	mov eax, [ebx+0x8]
	mov [eax+ecx], si
	mov [ebx+0x14], edx
	pop ebx
	pop esi
	pop ebp
	ret
MSG_WriteAngle16_10:
	mov dword [ebx], 0x1
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;MSG_ReadBigString(msg_t*)
MSG_ReadBigString:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	xor edi, edi
	jmp MSG_ReadBigString_10
MSG_ReadBigString_70:
	cmp ecx, edx
	jl MSG_ReadBigString_20
	mov eax, ecx
	sub eax, edx
	mov edx, eax
	mov eax, [esi+0xc]
	movzx ebx, byte [eax+edx]
	lea eax, [ecx+0x1]
	mov [esi+0x1c], eax
	cmp ebx, 0x25
	jz MSG_ReadBigString_30
MSG_ReadBigString_100:
	cmp ebx, 0xffffffff
	jz MSG_ReadBigString_40
MSG_ReadBigString_110:
	cmp edi, 0x1fff
	jbe MSG_ReadBigString_50
MSG_ReadBigString_80:
	test ebx, ebx
	jz MSG_ReadBigString_60
MSG_ReadBigString_90:
	add edi, 0x1
MSG_ReadBigString_10:
	mov ecx, [esi+0x1c]
	mov edx, [esi+0x14]
	mov eax, edx
	add eax, [esi+0x18]
	cmp ecx, eax
	jl MSG_ReadBigString_70
	mov dword [esi], 0x1
MSG_ReadBigString_40:
	xor ebx, ebx
	cmp edi, 0x1fff
	ja MSG_ReadBigString_80
MSG_ReadBigString_50:
	movsx eax, bl
	mov [esp], eax
	call Q_CleanChar
	mov [edi+_ZZ17MSG_ReadBigStringP5msg_tE6string], al
	test ebx, ebx
	jnz MSG_ReadBigString_90
MSG_ReadBigString_60:
	mov byte [_ZZ17MSG_ReadBigStringP5msg_tE6string+0x1fff], 0x0
	mov eax, _ZZ17MSG_ReadBigStringP5msg_tE6string
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MSG_ReadBigString_20:
	mov eax, [esi+0x8]
	movzx ebx, byte [eax+ecx]
	lea eax, [ecx+0x1]
	mov [esi+0x1c], eax
	cmp ebx, 0x25
	jnz MSG_ReadBigString_100
MSG_ReadBigString_30:
	mov bl, 0x2e
	jmp MSG_ReadBigString_110


;MSG_ReadDeltaField(msg_t*, int, void const*, void*, NetField const*, int, unsigned char)
MSG_ReadDeltaField:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x10c
	mov dword [ebp-0x1c], 0x0
	cmp byte [ebp+0x20], 0x0
	jz MSG_ReadDeltaField_10
	lea eax, [ebp-0x1c]
	mov [ebp-0x88], eax
	mov edx, [ebp+0x18]
	mov eax, [edx+0x4]
	mov esi, edx
	add eax, [ebp+0x14]
	mov [ebp-0x84], eax
	cmp byte [esi+0xc], 0x2
	jz MSG_ReadDeltaField_20
MSG_ReadDeltaField_60:
	mov edi, [ebp+0x8]
	mov edi, [edi+0x20]
	mov [ebp-0xac], edi
	mov ebx, edi
	and ebx, 0x7
	jz MSG_ReadDeltaField_30
	mov edx, [ebp+0x8]
	mov edx, [edx+0x14]
	mov [ebp-0xa0], edx
	mov edx, [ebp-0xac]
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl MSG_ReadDeltaField_40
MSG_ReadDeltaField_320:
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edi, ecx
MSG_ReadDeltaField_330:
	add dword [ebp-0xac], 0x1
	mov edx, [ebp-0xac]
	mov [edi+0x20], edx
	mov ecx, ebx
	sar eax, cl
	test al, 0x1
	jnz MSG_ReadDeltaField_50
	mov edi, [ebp-0x88]
	mov eax, [edi]
	mov edx, [ebp-0x84]
	mov [edx], eax
MSG_ReadDeltaField_300:
	add esp, 0x10c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MSG_ReadDeltaField_10:
	mov ecx, [ebp+0x18]
	mov eax, [ecx+0x4]
	mov ebx, [ebp+0x10]
	add ebx, eax
	mov [ebp-0x88], ebx
	mov esi, ecx
	add eax, [ebp+0x14]
	mov [ebp-0x84], eax
	cmp byte [esi+0xc], 0x2
	jnz MSG_ReadDeltaField_60
MSG_ReadDeltaField_20:
	mov ebx, [ebp+0x8]
	mov ebx, [ebx+0x14]
	mov [ebp-0xa0], ebx
MSG_ReadDeltaField_50:
	mov esi, [ebp+0x18]
	mov ebx, [esi+0x8]
	test ebx, ebx
	jz MSG_ReadDeltaField_70
	cmp ebx, 0xffffffa7
	jz MSG_ReadDeltaField_80
	cmp ebx, 0xffffffa8
	jz MSG_ReadDeltaField_90
	cmp ebx, 0xffffff9d
	jz MSG_ReadDeltaField_100
	cmp ebx, 0xffffff9e
	jz MSG_ReadDeltaField_110
	cmp ebx, 0xffffff9f
	jz MSG_ReadDeltaField_120
	cmp ebx, 0xffffffa0
	jz MSG_ReadDeltaField_130
	cmp ebx, 0xffffffa2
	jz MSG_ReadDeltaField_140
	cmp ebx, 0xffffffa3
	jz MSG_ReadDeltaField_140
	cmp ebx, 0xffffffa1
	jz MSG_ReadDeltaField_150
	lea eax, [ebx+0x5c]
	cmp eax, 0x1
	jbe MSG_ReadDeltaField_160
	cmp ebx, 0xffffffa6
	jz MSG_ReadDeltaField_170
	cmp ebx, 0xffffff9c
	jz MSG_ReadDeltaField_180
	cmp ebx, 0xffffffa9
	jz MSG_ReadDeltaField_190
	cmp ebx, 0xffffffaa
	jz MSG_ReadDeltaField_200
	cmp ebx, 0xffffffab
	jz MSG_ReadDeltaField_210
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+0x20]
	mov [ebp-0xac], ecx
	mov ebx, ecx
	and ebx, 0x7
	jnz MSG_ReadDeltaField_220
	mov esi, [ebp+0x8]
	mov edx, [esi+0x1c]
	mov eax, [ebp-0xa0]
	add eax, [esi+0x18]
	cmp edx, eax
	jl MSG_ReadDeltaField_230
	mov dword [esi], 0x1
MSG_ReadDeltaField_2470:
	mov eax, [ebp+0x18]
	mov edi, [eax+0x8]
	mov edx, edi
	shr edx, 0x1f
	mov [ebp-0x7c], edx
	jz MSG_ReadDeltaField_240
	neg edi
MSG_ReadDeltaField_240:
	mov ebx, edi
	and ebx, 0x7
	cmp ebx, 0x0
	jnz MSG_ReadDeltaField_250
MSG_ReadDeltaField_2730:
	mov dword [ebp-0x78], 0x0
MSG_ReadDeltaField_2750:
	cmp edi, ebx
	jg MSG_ReadDeltaField_260
MSG_ReadDeltaField_2830:
	cmp edi, 0x20
	jz MSG_ReadDeltaField_270
	mov eax, 0x1
	mov ecx, edi
	shl eax, cl
	lea edx, [eax-0x1]
MSG_ReadDeltaField_2910:
	mov ebx, edx
	mov esi, [ebp-0x88]
	and ebx, [esi]
	xor ebx, [ebp-0x78]
	mov ecx, [ebp-0x7c]
	test ecx, ecx
	jz MSG_ReadDeltaField_280
	lea ecx, [edi-0x1]
	mov eax, ebx
	sar eax, cl
	test al, 0x1
	jz MSG_ReadDeltaField_280
	not edx
	or ebx, edx
MSG_ReadDeltaField_280:
	mov edx, [ebp+0x1c]
	test edx, edx
	jnz MSG_ReadDeltaField_290
MSG_ReadDeltaField_2900:
	mov ecx, [ebp-0x84]
	mov [ecx], ebx
	jmp MSG_ReadDeltaField_300
MSG_ReadDeltaField_30:
	mov eax, [ebp+0x8]
	mov esi, [eax+0x1c]
	mov edx, [eax+0x14]
	mov [ebp-0xa0], edx
	mov eax, edx
	mov ecx, [ebp+0x8]
	add eax, [ecx+0x18]
	cmp esi, eax
	jge MSG_ReadDeltaField_310
	lea edi, [esi*8]
	mov [ebp-0xac], edi
	mov [ecx+0x20], edi
	add esi, 0x1
	mov [ecx+0x1c], esi
	mov edx, [ebp-0xac]
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jge MSG_ReadDeltaField_320
MSG_ReadDeltaField_40:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [eax+edx]
	mov edi, esi
	jmp MSG_ReadDeltaField_330
MSG_ReadDeltaField_70:
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+0x20]
	mov [ebp-0xac], ecx
	mov ebx, ecx
	and ebx, 0x7
	jnz MSG_ReadDeltaField_340
	mov edi, [ebp+0x8]
	mov esi, [edi+0x1c]
	mov eax, [edi+0x18]
	mov [ebp-0xa4], eax
	mov eax, [ebp-0xa0]
	add eax, [ebp-0xa4]
	cmp esi, eax
	jl MSG_ReadDeltaField_350
	mov dword [edi], 0x1
MSG_ReadDeltaField_690:
	mov ebx, [ebp-0xac]
	and ebx, 0x7
	jz MSG_ReadDeltaField_360
MSG_ReadDeltaField_660:
	mov edx, [ebp-0xac]
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl MSG_ReadDeltaField_370
	sub edx, [ebp-0xa0]
	mov edi, [ebp+0x8]
	mov eax, [edi+0xc]
	movzx eax, byte [eax+edx]
MSG_ReadDeltaField_700:
	add dword [ebp-0xac], 0x1
	mov edx, [ebp-0xac]
	mov [edi+0x20], edx
	mov ecx, ebx
	sar eax, cl
	test al, 0x1
	jnz MSG_ReadDeltaField_380
	mov dword [ebp-0x80], 0x0
	xor ebx, ebx
	mov edi, [ebp-0xa0]
	add edi, [ebp-0xa4]
	mov [ebp-0x8c], edi
MSG_ReadDeltaField_420:
	mov eax, [ebp+0x8]
	mov eax, [eax+0x20]
	mov [ebp-0xac], eax
	mov edi, eax
	and edi, 0x7
	jnz MSG_ReadDeltaField_390
	cmp esi, [ebp-0x8c]
	jge MSG_ReadDeltaField_400
	lea edx, [esi*8]
	mov [ebp-0xac], edx
	mov ecx, [ebp+0x8]
	mov [ecx+0x20], edx
	add esi, 0x1
	mov [ecx+0x1c], esi
	mov edx, [ebp-0xac]
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl MSG_ReadDeltaField_410
MSG_ReadDeltaField_530:
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
MSG_ReadDeltaField_540:
	mov ecx, edi
	sar eax, cl
	and eax, 0x1
	mov ecx, ebx
	shl eax, cl
	or [ebp-0x80], eax
	add dword [ebp-0xac], 0x1
	mov eax, [ebp-0xac]
	mov edi, [ebp+0x8]
	mov [edi+0x20], eax
	add ebx, 0x1
	cmp ebx, 0x5
	jnz MSG_ReadDeltaField_420
MSG_ReadDeltaField_1500:
	mov eax, [ebp-0xa0]
	add eax, [ebp-0xa4]
	cmp esi, eax
	jge MSG_ReadDeltaField_430
	cmp esi, [ebp-0xa0]
	jl MSG_ReadDeltaField_440
	mov edx, esi
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edi, ecx
MSG_ReadDeltaField_1240:
	add esi, 0x1
	mov [edi+0x1c], esi
	shl eax, 0x5
MSG_ReadDeltaField_920:
	add eax, [ebp-0x80]
MSG_ReadDeltaField_910:
	mov ecx, [ebp-0x88]
	cvttss2si edx, [ecx]
	add edx, 0x1000
	xor eax, edx
	sub eax, 0x1000
MSG_ReadDeltaField_820:
	cvtsi2ss xmm0, eax
	mov ebx, [ebp-0x84]
	movss [ebx], xmm0
	mov edx, [ebp+0x1c]
	test edx, edx
	jz MSG_ReadDeltaField_300
	mov [esp+0xc], eax
	mov esi, [ebp+0x18]
	mov eax, [esi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_si_
	mov dword [esp], 0x10
	call Com_Printf
	jmp MSG_ReadDeltaField_300
MSG_ReadDeltaField_340:
	mov edx, ecx
MSG_ReadDeltaField_640:
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl MSG_ReadDeltaField_450
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edi, ecx
MSG_ReadDeltaField_570:
	add dword [ebp-0xac], 0x1
	mov edx, [ebp-0xac]
	mov [edi+0x20], edx
	mov ecx, ebx
	sar eax, cl
	test al, 0x1
	jnz MSG_ReadDeltaField_460
	mov ebx, edx
	and ebx, 0x7
	jnz MSG_ReadDeltaField_470
	mov edx, [edi+0x1c]
	mov eax, [ebp-0xa0]
	add eax, [edi+0x18]
	cmp edx, eax
	jl MSG_ReadDeltaField_480
	mov dword [edi], 0x1
	mov eax, 0x80000000
MSG_ReadDeltaField_560:
	mov ebx, [ebp-0x84]
	mov [ebx], eax
	add esp, 0x10c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MSG_ReadDeltaField_310:
	mov dword [ecx], 0x1
	jmp MSG_ReadDeltaField_50
MSG_ReadDeltaField_90:
	mov ebx, [ebp+0x8]
	mov ecx, [ebx+0x1c]
	lea esi, [ecx+0x4]
	mov [ebp-0xec], esi
	mov eax, [ebp-0xa0]
	add eax, [ebx+0x18]
	cmp esi, eax
	jg MSG_ReadDeltaField_490
	lea edi, [ebp-0x20]
	mov ebx, 0x1
MSG_ReadDeltaField_510:
	cmp [ebp-0xa0], ecx
	jg MSG_ReadDeltaField_500
	mov eax, ecx
	sub eax, [ebp-0xa0]
	mov [ebp-0xdc], eax
	mov edx, [ebp+0x8]
	mov edx, [edx+0xc]
	mov [ebp-0xc4], edx
	movzx eax, byte [edx+eax]
MSG_ReadDeltaField_1050:
	mov [ebx+edi-0x1], al
	add ecx, 0x1
	add ebx, 0x1
	cmp ebx, 0x5
	jnz MSG_ReadDeltaField_510
MSG_ReadDeltaField_630:
	mov ebx, [ebp-0xec]
	mov ecx, [ebp+0x8]
	mov [ecx+0x1c], ebx
	mov eax, [ebp-0x20]
	jmp MSG_ReadDeltaField_520
MSG_ReadDeltaField_390:
	mov edx, eax
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jge MSG_ReadDeltaField_530
MSG_ReadDeltaField_410:
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	movzx eax, byte [eax+edx]
	jmp MSG_ReadDeltaField_540
MSG_ReadDeltaField_480:
	lea esi, [edx*8]
	mov edi, [ebp+0x8]
	mov [edi+0x20], esi
	lea esi, [edx+0x1]
	mov [edi+0x1c], esi
MSG_ReadDeltaField_470:
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x20]
	mov edx, ecx
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl MSG_ReadDeltaField_550
	sub edx, [ebp-0xa0]
	mov eax, [eax+0xc]
	movzx eax, byte [eax+edx]
	mov edx, [ebp+0x8]
MSG_ReadDeltaField_670:
	add ecx, 0x1
	mov [edx+0x20], ecx
	mov ecx, ebx
	sar eax, cl
	shl eax, 0x1f
	jmp MSG_ReadDeltaField_560
MSG_ReadDeltaField_450:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [eax+edx]
	mov edi, esi
	jmp MSG_ReadDeltaField_570
MSG_ReadDeltaField_80:
	mov ebx, [ebp+0x8]
	mov ebx, [ebx+0x20]
	mov [ebp-0xac], ebx
	and ebx, 0x7
	jnz MSG_ReadDeltaField_580
	mov edi, [ebp+0x8]
	mov esi, [edi+0x1c]
	mov eax, [edi+0x18]
	mov [ebp-0xa4], eax
	mov eax, [ebp-0xa0]
	add eax, [ebp-0xa4]
	cmp esi, eax
	jl MSG_ReadDeltaField_590
	mov dword [edi], 0x1
MSG_ReadDeltaField_1260:
	mov ecx, esi
	lea ebx, [esi+0x4]
	mov [ebp-0xec], ebx
	mov eax, [ebp-0xa0]
	add eax, [ebp-0xa4]
	cmp ebx, eax
	jg MSG_ReadDeltaField_600
	lea edi, [ebp-0x20]
	mov ebx, 0x1
MSG_ReadDeltaField_620:
	cmp [ebp-0xa0], ecx
	jg MSG_ReadDeltaField_610
	mov eax, ecx
	sub eax, [ebp-0xa0]
	mov [ebp-0xdc], eax
	mov edx, [ebp+0x8]
	mov edx, [edx+0xc]
	mov [ebp-0xc0], edx
	movzx eax, byte [edx+eax]
MSG_ReadDeltaField_1070:
	mov [ebx+edi-0x1], al
	add ecx, 0x1
	add ebx, 0x1
	cmp ebx, 0x5
	jnz MSG_ReadDeltaField_620
	jmp MSG_ReadDeltaField_630
MSG_ReadDeltaField_350:
	mov eax, edi
	lea edi, [esi*8]
	mov [ebp-0xac], edi
	mov [eax+0x20], edi
	add esi, 0x1
	mov [eax+0x1c], esi
	mov edx, [ebp-0xac]
	jmp MSG_ReadDeltaField_640
MSG_ReadDeltaField_360:
	mov eax, [ebp-0xa0]
	add eax, [ebp-0xa4]
	cmp esi, eax
	jge MSG_ReadDeltaField_650
	lea edx, [esi*8]
	mov [ebp-0xac], edx
	mov ecx, [ebp+0x8]
	mov [ecx+0x20], edx
	add esi, 0x1
	mov [ecx+0x1c], esi
	jmp MSG_ReadDeltaField_660
MSG_ReadDeltaField_550:
	mov edi, eax
	mov eax, [eax+0x8]
	movzx eax, byte [eax+edx]
	mov edx, edi
	jmp MSG_ReadDeltaField_670
MSG_ReadDeltaField_650:
	mov edi, [ebp+0x8]
	mov dword [edi], 0x1
MSG_ReadDeltaField_380:
	mov ecx, esi
	lea eax, [esi+0x4]
	mov [ebp-0xec], eax
	mov eax, [ebp-0xa0]
	add eax, [ebp-0xa4]
	cmp [ebp-0xec], eax
	jle MSG_ReadDeltaField_680
MSG_ReadDeltaField_600:
	mov esi, [ebp+0x8]
	mov dword [esi], 0x1
	mov eax, 0xffffffff
MSG_ReadDeltaField_520:
	mov edi, [ebp-0x84]
	mov [edi], eax
	mov edx, [ebp-0x88]
	xor eax, [edx]
	mov [edi], eax
	mov eax, [ebp+0x1c]
	test eax, eax
	jz MSG_ReadDeltaField_300
	cvtss2sd xmm0, [edi]
MSG_ReadDeltaField_1480:
	movsd [esp+0xc], xmm0
	mov ecx, [ebp+0x18]
	mov eax, [ecx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_sf_
	mov dword [esp], 0x10
	call Com_Printf
	jmp MSG_ReadDeltaField_300
MSG_ReadDeltaField_460:
	mov edx, [ebp+0x8]
	mov esi, [edx+0x1c]
	mov ecx, [edx+0x18]
	mov [ebp-0xa4], ecx
	jmp MSG_ReadDeltaField_690
MSG_ReadDeltaField_370:
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	movzx eax, byte [eax+edx]
	mov edi, ecx
	jmp MSG_ReadDeltaField_700
MSG_ReadDeltaField_100:
	mov ebx, [ebp+0x8]
	mov ebx, [ebx+0x20]
	mov [ebp-0xac], ebx
	and ebx, 0x7
	jnz MSG_ReadDeltaField_710
	mov edi, [ebp+0x8]
	mov esi, [edi+0x1c]
	mov eax, [edi+0x18]
	mov [ebp-0xa4], eax
	mov eax, [ebp-0xa0]
	add eax, [ebp-0xa4]
	cmp esi, eax
	jl MSG_ReadDeltaField_720
	mov dword [edi], 0x1
MSG_ReadDeltaField_1510:
	mov ebx, [ebp-0xac]
	and ebx, 0x7
	jz MSG_ReadDeltaField_730
MSG_ReadDeltaField_1680:
	mov edx, [ebp-0xac]
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl MSG_ReadDeltaField_740
	sub edx, [ebp-0xa0]
	mov edi, [ebp+0x8]
	mov eax, [edi+0xc]
	movzx eax, byte [eax+edx]
MSG_ReadDeltaField_1560:
	add dword [ebp-0xac], 0x1
	mov edx, [ebp-0xac]
	mov [edi+0x20], edx
	mov ecx, ebx
	sar eax, cl
	test al, 0x1
	jnz MSG_ReadDeltaField_750
	mov dword [ebp-0x30], 0x0
	xor ebx, ebx
	mov edi, [ebp-0xa0]
	add edi, [ebp-0xa4]
	mov [ebp-0x94], edi
MSG_ReadDeltaField_790:
	mov eax, [ebp+0x8]
	mov eax, [eax+0x20]
	mov [ebp-0xac], eax
	mov edi, eax
	and edi, 0x7
	jnz MSG_ReadDeltaField_760
	cmp esi, [ebp-0x94]
	jge MSG_ReadDeltaField_770
	lea edx, [esi*8]
	mov [ebp-0xac], edx
	mov ecx, [ebp+0x8]
	mov [ecx+0x20], edx
	add esi, 0x1
	mov [ecx+0x1c], esi
	mov edx, [ebp-0xac]
MSG_ReadDeltaField_1190:
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl MSG_ReadDeltaField_780
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
MSG_ReadDeltaField_1200:
	mov ecx, edi
	sar eax, cl
	and eax, 0x1
	mov ecx, ebx
	shl eax, cl
	or [ebp-0x30], eax
	add dword [ebp-0xac], 0x1
	mov eax, [ebp-0xac]
	mov edi, [ebp+0x8]
	mov [edi+0x20], eax
	add ebx, 0x1
	cmp ebx, 0x4
	jnz MSG_ReadDeltaField_790
MSG_ReadDeltaField_2480:
	mov eax, [ebp-0xa0]
	add eax, [ebp-0xa4]
	cmp esi, eax
	jge MSG_ReadDeltaField_800
	cmp esi, [ebp-0xa0]
	jl MSG_ReadDeltaField_810
	mov edx, esi
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edi, ecx
MSG_ReadDeltaField_2060:
	add esi, 0x1
	mov [edi+0x1c], esi
	shl eax, 0x4
MSG_ReadDeltaField_1670:
	add eax, [ebp-0x30]
	mov ecx, [ebp-0x88]
	cvttss2si edx, [ecx]
	add edx, 0x800
	xor eax, edx
	sub eax, 0x800
	jmp MSG_ReadDeltaField_820
MSG_ReadDeltaField_580:
	mov edx, [ebp+0x8]
	mov edx, [edx+0x18]
	mov [ebp-0xa4], edx
MSG_ReadDeltaField_980:
	mov edx, [ebp-0xac]
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl MSG_ReadDeltaField_830
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edi, ecx
MSG_ReadDeltaField_930:
	add dword [ebp-0xac], 0x1
	mov edx, [ebp-0xac]
	mov [edi+0x20], edx
	mov ecx, ebx
	sar eax, cl
	test al, 0x1
	jnz MSG_ReadDeltaField_840
	mov dword [ebp-0x34], 0x0
	xor ebx, ebx
	mov esi, [ebp-0xa0]
	add esi, [ebp-0xa4]
	mov [ebp-0x90], esi
MSG_ReadDeltaField_880:
	mov edi, [ebp+0x8]
	mov edi, [edi+0x20]
	mov [ebp-0xac], edi
	and edi, 0x7
	jnz MSG_ReadDeltaField_850
	mov eax, [ebp+0x8]
	mov esi, [eax+0x1c]
	cmp esi, [ebp-0x90]
	jge MSG_ReadDeltaField_860
	lea edx, [esi*8]
	mov [ebp-0xac], edx
	mov [eax+0x20], edx
	add esi, 0x1
	mov [eax+0x1c], esi
MSG_ReadDeltaField_850:
	mov edx, [ebp-0xac]
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl MSG_ReadDeltaField_870
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov esi, ecx
MSG_ReadDeltaField_1040:
	mov ecx, edi
	sar eax, cl
	and eax, 0x1
	mov ecx, ebx
	shl eax, cl
	or [ebp-0x34], eax
	add dword [ebp-0xac], 0x1
	mov edi, [ebp-0xac]
	mov [esi+0x20], edi
	add ebx, 0x1
	cmp ebx, 0x5
	jnz MSG_ReadDeltaField_880
	mov eax, [ebp+0x8]
	mov esi, [eax+0x1c]
MSG_ReadDeltaField_1660:
	mov eax, [ebp-0xa0]
	add eax, [ebp-0xa4]
	cmp esi, eax
	jge MSG_ReadDeltaField_890
	cmp esi, [ebp-0xa0]
	jl MSG_ReadDeltaField_900
	mov edx, esi
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edi, ecx
MSG_ReadDeltaField_1340:
	add esi, 0x1
	mov [edi+0x1c], esi
	shl eax, 0x5
	add eax, [ebp-0x34]
	jmp MSG_ReadDeltaField_910
MSG_ReadDeltaField_430:
	mov eax, [ebp+0x8]
	mov dword [eax], 0x1
	mov eax, 0xffffffe0
	jmp MSG_ReadDeltaField_920
MSG_ReadDeltaField_830:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [eax+edx]
	mov edi, esi
	jmp MSG_ReadDeltaField_930
MSG_ReadDeltaField_490:
	mov dword [ebx], 0x1
	mov eax, 0xffffffff
	jmp MSG_ReadDeltaField_520
MSG_ReadDeltaField_680:
	lea edi, [ebp-0x20]
	mov ebx, 0x1
MSG_ReadDeltaField_950:
	cmp [ebp-0xa0], ecx
	jg MSG_ReadDeltaField_940
	mov eax, ecx
	sub eax, [ebp-0xa0]
	mov [ebp-0xdc], eax
	mov edx, [ebp+0x8]
	mov edx, [edx+0xc]
	mov [ebp-0xbc], edx
	movzx eax, byte [edx+eax]
MSG_ReadDeltaField_1060:
	mov [ebx+edi-0x1], al
	add ecx, 0x1
	add ebx, 0x1
	cmp ebx, 0x5
	jnz MSG_ReadDeltaField_950
	jmp MSG_ReadDeltaField_630
MSG_ReadDeltaField_720:
	mov eax, edi
	lea edi, [esi*8]
	mov [ebp-0xac], edi
	mov [eax+0x20], edi
	add esi, 0x1
	mov [eax+0x1c], esi
MSG_ReadDeltaField_710:
	mov edx, [ebp-0xac]
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl MSG_ReadDeltaField_960
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edi, ecx
MSG_ReadDeltaField_1250:
	add dword [ebp-0xac], 0x1
	mov edx, [ebp-0xac]
	mov [edi+0x20], edx
	mov ecx, ebx
	sar eax, cl
	test al, 0x1
	jnz MSG_ReadDeltaField_970
MSG_ReadDeltaField_2460:
	mov ebx, [ebp-0x84]
	mov dword [ebx], 0x0
	jmp MSG_ReadDeltaField_300
MSG_ReadDeltaField_590:
	mov eax, edi
	lea edi, [esi*8]
	mov [ebp-0xac], edi
	mov [eax+0x20], edi
	add esi, 0x1
	mov [eax+0x1c], esi
	jmp MSG_ReadDeltaField_980
MSG_ReadDeltaField_130:
	mov eax, [ebp+0x8]
	mov eax, [eax+0x20]
	mov [ebp-0xac], eax
	mov ebx, eax
	and ebx, 0x7
	jnz MSG_ReadDeltaField_990
	mov edx, [ebp+0x8]
	mov esi, [edx+0x1c]
	mov eax, [ebp-0xa0]
	add eax, [edx+0x18]
	cmp esi, eax
	jl MSG_ReadDeltaField_1000
	mov dword [edx], 0x1
MSG_ReadDeltaField_1540:
	mov ebx, [ebp-0xac]
	and ebx, 0x7
	jz MSG_ReadDeltaField_1010
MSG_ReadDeltaField_2070:
	mov edx, [ebp-0xac]
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl MSG_ReadDeltaField_1020
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edi, ecx
MSG_ReadDeltaField_1880:
	add dword [ebp-0xac], 0x1
	mov edx, [ebp-0xac]
	mov [edi+0x20], edx
	mov ecx, ebx
	sar eax, cl
	test al, 0x1
	jz MSG_ReadDeltaField_1030
	xor eax, eax
MSG_ReadDeltaField_1230:
	mov edx, [ebp-0x84]
	mov [edx], eax
	jmp MSG_ReadDeltaField_300
MSG_ReadDeltaField_870:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [eax+edx]
	jmp MSG_ReadDeltaField_1040
MSG_ReadDeltaField_500:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x8]
	movzx eax, byte [ecx+eax]
	jmp MSG_ReadDeltaField_1050
MSG_ReadDeltaField_940:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x8]
	movzx eax, byte [ecx+eax]
	jmp MSG_ReadDeltaField_1060
MSG_ReadDeltaField_610:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x8]
	movzx eax, byte [ecx+eax]
	jmp MSG_ReadDeltaField_1070
MSG_ReadDeltaField_110:
	mov ebx, [ebp-0x88]
	mov ebx, [ebx]
	mov [ebp-0x74], ebx
	mov esi, [ebp+0x8]
	mov esi, [esi+0x20]
	mov [ebp-0xac], esi
	mov ebx, esi
	and ebx, 0x7
	jnz MSG_ReadDeltaField_1080
	mov edi, [ebp+0x8]
	mov edx, [edi+0x1c]
	mov eax, [ebp-0xa0]
	add eax, [edi+0x18]
	cmp edx, eax
	jl MSG_ReadDeltaField_1090
	mov dword [edi], 0x1
MSG_ReadDeltaField_1280:
	mov dword [ebp-0x70], 0x0
	xor ebx, ebx
MSG_ReadDeltaField_1120:
	mov edi, [ebp-0xac]
	and edi, 0x7
	jz MSG_ReadDeltaField_1100
MSG_ReadDeltaField_1140:
	mov edx, [ebp-0xac]
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl MSG_ReadDeltaField_1110
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov esi, ecx
MSG_ReadDeltaField_1150:
	mov ecx, edi
	sar eax, cl
	and eax, 0x1
	mov ecx, ebx
	shl eax, cl
	or [ebp-0x70], eax
	add dword [ebp-0xac], 0x1
	mov edi, [ebp-0xac]
	mov [esi+0x20], edi
	add ebx, 0x1
	cmp ebx, 0x5
	jnz MSG_ReadDeltaField_1120
MSG_ReadDeltaField_2110:
	mov ebx, 0x1
	movzx ecx, byte [ebp-0x70]
	shl ebx, cl
	xor ebx, [ebp-0x74]
MSG_ReadDeltaField_1310:
	mov esi, [ebp-0x84]
	mov [esi], ebx
	jmp MSG_ReadDeltaField_300
MSG_ReadDeltaField_1100:
	mov esi, [ebp+0x8]
	mov edx, [esi+0x1c]
	mov eax, [ebp-0xa0]
	add eax, [esi+0x18]
	cmp edx, eax
	jge MSG_ReadDeltaField_1130
	lea eax, [edx*8]
	mov [ebp-0xac], eax
	mov [esi+0x20], eax
	lea esi, [edx+0x1]
	mov edx, [ebp+0x8]
	mov [edx+0x1c], esi
	jmp MSG_ReadDeltaField_1140
MSG_ReadDeltaField_1110:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [eax+edx]
	jmp MSG_ReadDeltaField_1150
MSG_ReadDeltaField_890:
	mov eax, [ebp+0x8]
	mov dword [eax], 0x1
	mov eax, 0xffffffe0
	add eax, [ebp-0x34]
	jmp MSG_ReadDeltaField_910
MSG_ReadDeltaField_120:
	mov edi, [ebp+0x8]
	mov edi, [edi+0x20]
	mov [ebp-0xac], edi
	mov ebx, edi
	and ebx, 0x7
	jnz MSG_ReadDeltaField_1160
	mov eax, [ebp+0x8]
	mov esi, [eax+0x1c]
	mov edx, [eax+0x18]
	mov [ebp-0xa4], edx
	mov eax, [ebp-0xa0]
	add eax, edx
	cmp esi, eax
	jl MSG_ReadDeltaField_1170
	mov ecx, [ebp+0x8]
	mov dword [ecx], 0x1
MSG_ReadDeltaField_1860:
	mov ecx, esi
	lea eax, [esi+0x4]
	mov [ebp-0xec], eax
	mov eax, [ebp-0xa0]
	add eax, [ebp-0xa4]
	cmp [ebp-0xec], eax
	jle MSG_ReadDeltaField_1180
	mov esi, [ebp+0x8]
	mov dword [esi], 0x1
	mov eax, 0xffffffff
MSG_ReadDeltaField_1450:
	mov edi, [ebp-0x84]
	mov [edi], eax
	jmp MSG_ReadDeltaField_300
MSG_ReadDeltaField_760:
	mov edx, eax
	jmp MSG_ReadDeltaField_1190
MSG_ReadDeltaField_780:
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	movzx eax, byte [eax+edx]
	jmp MSG_ReadDeltaField_1200
MSG_ReadDeltaField_140:
	mov ebx, [ebp+0x8]
	mov ecx, [ebx+0x1c]
	mov eax, [ebp-0xa0]
	add eax, [ebx+0x18]
	cmp ecx, eax
	jge MSG_ReadDeltaField_1210
	cmp ecx, [ebp-0xa0]
	jl MSG_ReadDeltaField_1220
	mov edx, ecx
	sub edx, [ebp-0xa0]
	mov eax, [ebx+0xc]
	movzx eax, byte [eax+edx]
	mov edi, [ebp+0x8]
MSG_ReadDeltaField_1720:
	lea esi, [ecx+0x1]
	mov [edi+0x1c], esi
	jmp MSG_ReadDeltaField_1230
MSG_ReadDeltaField_440:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+esi]
	mov edi, ebx
	jmp MSG_ReadDeltaField_1240
MSG_ReadDeltaField_960:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [eax+edx]
	mov edi, esi
	jmp MSG_ReadDeltaField_1250
MSG_ReadDeltaField_840:
	mov edx, [ebp+0x8]
	mov esi, [edx+0x1c]
	jmp MSG_ReadDeltaField_1260
MSG_ReadDeltaField_1080:
	mov edx, esi
MSG_ReadDeltaField_1550:
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl MSG_ReadDeltaField_1270
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edi, ecx
MSG_ReadDeltaField_1350:
	add dword [ebp-0xac], 0x1
	mov edx, [ebp-0xac]
	mov [edi+0x20], edx
	mov ecx, ebx
	sar eax, cl
	test al, 0x1
	jz MSG_ReadDeltaField_1280
	xor ebx, ebx
	xor edi, edi
	mov eax, [ebp-0xa0]
	mov esi, [ebp+0x8]
	add eax, [esi+0x18]
	mov [ebp-0x98], eax
	mov edx, esi
	mov ecx, [edx+0x1c]
	cmp ecx, [ebp-0x98]
	jge MSG_ReadDeltaField_1290
MSG_ReadDeltaField_1320:
	cmp ecx, [ebp-0xa0]
	jl MSG_ReadDeltaField_1300
	mov edx, ecx
	sub edx, [ebp-0xa0]
	mov esi, [ebp+0x8]
	mov eax, [esi+0xc]
	movzx eax, byte [eax+edx]
MSG_ReadDeltaField_1490:
	lea esi, [ecx+0x1]
	mov ecx, [ebp+0x8]
	mov [ecx+0x1c], esi
MSG_ReadDeltaField_1330:
	mov ecx, edi
	shl eax, cl
	or ebx, eax
	add edi, 0x8
	cmp edi, 0x18
	jz MSG_ReadDeltaField_1310
	mov edx, [ebp+0x8]
	mov ecx, [edx+0x1c]
	cmp ecx, [ebp-0x98]
	jl MSG_ReadDeltaField_1320
MSG_ReadDeltaField_1290:
	mov dword [edx], 0x1
	mov eax, 0xffffffff
	jmp MSG_ReadDeltaField_1330
MSG_ReadDeltaField_900:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+esi]
	mov edi, ebx
	jmp MSG_ReadDeltaField_1340
MSG_ReadDeltaField_1270:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [eax+edx]
	mov edi, esi
	jmp MSG_ReadDeltaField_1350
MSG_ReadDeltaField_1160:
	mov edx, edi
MSG_ReadDeltaField_1650:
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl MSG_ReadDeltaField_1360
	sub edx, [ebp-0xa0]
	mov esi, [ebp+0x8]
	mov eax, [esi+0xc]
	movzx eax, byte [eax+edx]
MSG_ReadDeltaField_1520:
	add dword [ebp-0xac], 0x1
	mov edi, [ebp-0xac]
	mov [esi+0x20], edi
	mov ecx, ebx
	sar eax, cl
	test al, 0x1
	jnz MSG_ReadDeltaField_1370
	mov dword [ebp-0x6c], 0x0
	xor ebx, ebx
	jmp MSG_ReadDeltaField_1380
MSG_ReadDeltaField_1420:
	mov eax, [ebp+0x8]
	mov edx, [eax+0x1c]
	mov eax, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	add eax, [ecx+0x18]
	cmp edx, eax
	jge MSG_ReadDeltaField_1390
	lea esi, [edx*8]
	mov [ebp-0xac], esi
	mov [ecx+0x20], esi
	lea esi, [edx+0x1]
	mov [ecx+0x1c], esi
	mov edx, [ebp-0xac]
MSG_ReadDeltaField_1430:
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl MSG_ReadDeltaField_1400
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov esi, ecx
MSG_ReadDeltaField_1440:
	mov ecx, edi
	sar eax, cl
	and eax, 0x1
	mov ecx, ebx
	shl eax, cl
	or [ebp-0x6c], eax
	add dword [ebp-0xac], 0x1
	mov edi, [ebp-0xac]
	mov [esi+0x20], edi
	add ebx, 0x1
	cmp ebx, 0x8
	jz MSG_ReadDeltaField_1410
MSG_ReadDeltaField_1380:
	mov esi, [ebp+0x8]
	mov esi, [esi+0x20]
	mov [ebp-0xac], esi
	mov edi, esi
	and edi, 0x7
	jz MSG_ReadDeltaField_1420
	mov edx, esi
	jmp MSG_ReadDeltaField_1430
MSG_ReadDeltaField_1400:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [eax+edx]
	jmp MSG_ReadDeltaField_1440
MSG_ReadDeltaField_1390:
	mov dword [ecx], 0x1
	mov dword [ebp-0x6c], 0xffffffff
MSG_ReadDeltaField_1410:
	mov eax, [ebp+0xc]
	sub eax, [ebp-0x6c]
	jmp MSG_ReadDeltaField_1450
MSG_ReadDeltaField_730:
	mov eax, [ebp-0xa0]
	add eax, [ebp-0xa4]
	cmp esi, eax
	jl MSG_ReadDeltaField_1460
	mov edi, [ebp+0x8]
	mov dword [edi], 0x1
MSG_ReadDeltaField_750:
	mov ecx, esi
	lea eax, [esi+0x4]
	mov [ebp-0xec], eax
	mov eax, [ebp-0xa0]
	add eax, [ebp-0xa4]
	cmp [ebp-0xec], eax
	jle MSG_ReadDeltaField_1470
	mov esi, [ebp+0x8]
	mov dword [esi], 0x1
	mov eax, 0xffffffff
MSG_ReadDeltaField_1840:
	mov edi, [ebp-0x88]
	xor eax, [edi]
	mov edx, [ebp-0x84]
	mov [edx], eax
	mov esi, [ebp+0x1c]
	test esi, esi
	jz MSG_ReadDeltaField_300
	cvtss2sd xmm0, [edx]
	jmp MSG_ReadDeltaField_1480
MSG_ReadDeltaField_1210:
	mov dword [ebx], 0x1
	mov eax, 0xffffffff
	jmp MSG_ReadDeltaField_1230
MSG_ReadDeltaField_1300:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x8]
	movzx eax, byte [eax+ecx]
	jmp MSG_ReadDeltaField_1490
MSG_ReadDeltaField_400:
	mov eax, [ebp+0x8]
	mov dword [eax], 0x1
	mov dword [ebp-0x80], 0xffffffff
	jmp MSG_ReadDeltaField_1500
MSG_ReadDeltaField_970:
	mov edx, [ebp+0x8]
	mov esi, [edx+0x1c]
	mov ecx, [edx+0x18]
	mov [ebp-0xa4], ecx
	jmp MSG_ReadDeltaField_1510
MSG_ReadDeltaField_1360:
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	movzx eax, byte [eax+edx]
	mov esi, ecx
	jmp MSG_ReadDeltaField_1520
MSG_ReadDeltaField_990:
	mov edx, eax
MSG_ReadDeltaField_1870:
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl MSG_ReadDeltaField_1530
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edi, ecx
MSG_ReadDeltaField_1570:
	add dword [ebp-0xac], 0x1
	mov edx, [ebp-0xac]
	mov [edi+0x20], edx
	mov ecx, ebx
	sar eax, cl
	test al, 0x1
	jz MSG_ReadDeltaField_1540
	mov eax, 0x3fe
	jmp MSG_ReadDeltaField_1230
MSG_ReadDeltaField_1090:
	lea ecx, [edx*8]
	mov [ebp-0xac], ecx
	mov [edi+0x20], ecx
	lea esi, [edx+0x1]
	mov edi, [ebp+0x8]
	mov [edi+0x1c], esi
	mov edx, [ebp-0xac]
	jmp MSG_ReadDeltaField_1550
MSG_ReadDeltaField_740:
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	movzx eax, byte [eax+edx]
	mov edi, ecx
	jmp MSG_ReadDeltaField_1560
MSG_ReadDeltaField_1530:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [eax+edx]
	mov edi, esi
	jmp MSG_ReadDeltaField_1570
MSG_ReadDeltaField_150:
	mov dword [ebp-0x68], 0x0
	xor ebx, ebx
	jmp MSG_ReadDeltaField_1580
MSG_ReadDeltaField_1620:
	mov eax, [ebp+0x8]
	mov edx, [eax+0x1c]
	mov eax, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	add eax, [ecx+0x18]
	cmp edx, eax
	jge MSG_ReadDeltaField_1590
	lea esi, [edx*8]
	mov [ebp-0xac], esi
	mov [ecx+0x20], esi
	lea esi, [edx+0x1]
	mov [ecx+0x1c], esi
	mov edx, [ebp-0xac]
MSG_ReadDeltaField_1630:
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl MSG_ReadDeltaField_1600
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov esi, ecx
MSG_ReadDeltaField_1640:
	mov ecx, edi
	sar eax, cl
	and eax, 0x1
	mov ecx, ebx
	shl eax, cl
	or [ebp-0x68], eax
	add dword [ebp-0xac], 0x1
	mov edi, [ebp-0xac]
	mov [esi+0x20], edi
	add ebx, 0x1
	cmp ebx, 0x7
	jz MSG_ReadDeltaField_1610
MSG_ReadDeltaField_1580:
	mov esi, [ebp+0x8]
	mov esi, [esi+0x20]
	mov [ebp-0xac], esi
	mov edi, esi
	and edi, 0x7
	jz MSG_ReadDeltaField_1620
	mov edx, esi
	jmp MSG_ReadDeltaField_1630
MSG_ReadDeltaField_1600:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [eax+edx]
	jmp MSG_ReadDeltaField_1640
MSG_ReadDeltaField_1170:
	lea edx, [esi*8]
	mov [ebp-0xac], edx
	mov ecx, [ebp+0x8]
	mov [ecx+0x20], edx
	add esi, 0x1
	mov [ecx+0x1c], esi
	mov edx, [ebp-0xac]
	jmp MSG_ReadDeltaField_1650
MSG_ReadDeltaField_860:
	mov dword [eax], 0x1
	mov dword [ebp-0x34], 0xffffffff
	jmp MSG_ReadDeltaField_1660
MSG_ReadDeltaField_800:
	mov eax, [ebp+0x8]
	mov dword [eax], 0x1
	mov eax, 0xfffffff0
	jmp MSG_ReadDeltaField_1670
MSG_ReadDeltaField_1460:
	lea edx, [esi*8]
	mov [ebp-0xac], edx
	mov ecx, [ebp+0x8]
	mov [ecx+0x20], edx
	add esi, 0x1
	mov [ecx+0x1c], esi
	jmp MSG_ReadDeltaField_1680
MSG_ReadDeltaField_1180:
	lea edi, [ebp-0x20]
	mov ebx, 0x1
MSG_ReadDeltaField_1700:
	cmp [ebp-0xa0], ecx
	jg MSG_ReadDeltaField_1690
	mov eax, ecx
	sub eax, [ebp-0xa0]
	mov [ebp-0xdc], eax
	mov edx, [ebp+0x8]
	mov edx, [edx+0xc]
	mov [ebp-0xcc], edx
	movzx eax, byte [edx+eax]
MSG_ReadDeltaField_1710:
	mov [edi+ebx-0x1], al
	add ecx, 0x1
	add ebx, 0x1
	cmp ebx, 0x5
	jnz MSG_ReadDeltaField_1700
	mov ebx, [ebp-0xec]
	mov ecx, [ebp+0x8]
	mov [ecx+0x1c], ebx
	mov eax, [ebp-0x20]
	jmp MSG_ReadDeltaField_1450
MSG_ReadDeltaField_1690:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x8]
	movzx eax, byte [ecx+eax]
	jmp MSG_ReadDeltaField_1710
MSG_ReadDeltaField_1610:
	mov edx, [ebp-0x68]
	lea eax, [edx+edx*4]
	lea eax, [eax+eax*4]
	shl eax, 0x2
MSG_ReadDeltaField_2550:
	mov ecx, [ebp-0x84]
	mov [ecx], eax
	jmp MSG_ReadDeltaField_300
MSG_ReadDeltaField_1220:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [eax+ecx]
	mov edi, esi
	jmp MSG_ReadDeltaField_1720
MSG_ReadDeltaField_1010:
	mov edi, [ebp+0x8]
	mov esi, [edi+0x1c]
	mov eax, [edi+0x18]
	mov [ebp-0xa4], eax
	mov eax, [ebp-0xa0]
	add eax, [ebp-0xa4]
	cmp esi, eax
	jl MSG_ReadDeltaField_1730
	mov dword [edi], 0x1
MSG_ReadDeltaField_1970:
	mov dword [ebp-0x2c], 0x0
	xor ebx, ebx
MSG_ReadDeltaField_1760:
	mov edi, [ebp-0xac]
	and edi, 0x7
	jz MSG_ReadDeltaField_1740
MSG_ReadDeltaField_1800:
	mov edx, [ebp-0xac]
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl MSG_ReadDeltaField_1750
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
MSG_ReadDeltaField_1810:
	mov ecx, edi
	sar eax, cl
	and eax, 0x1
	mov ecx, ebx
	shl eax, cl
	or [ebp-0x2c], eax
	add dword [ebp-0xac], 0x1
	mov eax, [ebp-0xac]
	mov edi, [ebp+0x8]
	mov [edi+0x20], eax
	add ebx, 0x1
	cmp ebx, 0x2
	jnz MSG_ReadDeltaField_1760
MSG_ReadDeltaField_3000:
	mov eax, [ebp-0xa0]
	add eax, [ebp-0xa4]
	cmp esi, eax
	jge MSG_ReadDeltaField_1770
	cmp esi, [ebp-0xa0]
	jl MSG_ReadDeltaField_1780
	mov edx, esi
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edi, ecx
MSG_ReadDeltaField_2340:
	add esi, 0x1
	mov [edi+0x1c], esi
	shl eax, 0x2
	or eax, [ebp-0x2c]
	jmp MSG_ReadDeltaField_1230
MSG_ReadDeltaField_1740:
	mov eax, [ebp-0xa0]
	add eax, [ebp-0xa4]
	cmp esi, eax
	jge MSG_ReadDeltaField_1790
	lea eax, [esi*8]
	mov [ebp-0xac], eax
	mov edx, [ebp+0x8]
	mov [edx+0x20], eax
	add esi, 0x1
	mov [edx+0x1c], esi
	jmp MSG_ReadDeltaField_1800
MSG_ReadDeltaField_1750:
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	movzx eax, byte [eax+edx]
	jmp MSG_ReadDeltaField_1810
MSG_ReadDeltaField_1470:
	lea edi, [ebp-0x20]
	mov ebx, 0x1
MSG_ReadDeltaField_1830:
	cmp [ebp-0xa0], ecx
	jg MSG_ReadDeltaField_1820
	mov eax, ecx
	sub eax, [ebp-0xa0]
	mov [ebp-0xdc], eax
	mov edx, [ebp+0x8]
	mov edx, [edx+0xc]
	mov [ebp-0xc8], edx
	movzx eax, byte [edx+eax]
MSG_ReadDeltaField_1850:
	mov [ebx+edi-0x1], al
	add ecx, 0x1
	add ebx, 0x1
	cmp ebx, 0x5
	jnz MSG_ReadDeltaField_1830
	mov ebx, [ebp-0xec]
	mov ecx, [ebp+0x8]
	mov [ecx+0x1c], ebx
	mov eax, [ebp-0x20]
	jmp MSG_ReadDeltaField_1840
MSG_ReadDeltaField_1820:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x8]
	movzx eax, byte [ecx+eax]
	jmp MSG_ReadDeltaField_1850
MSG_ReadDeltaField_1370:
	mov ebx, [ebp+0x8]
	mov esi, [ebx+0x1c]
	mov edi, [ebx+0x18]
	mov [ebp-0xa4], edi
	jmp MSG_ReadDeltaField_1860
MSG_ReadDeltaField_1000:
	lea ecx, [esi*8]
	mov [ebp-0xac], ecx
	mov [edx+0x20], ecx
	add esi, 0x1
	mov [edx+0x1c], esi
	mov edx, [ebp-0xac]
	jmp MSG_ReadDeltaField_1870
MSG_ReadDeltaField_1020:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [eax+edx]
	mov edi, esi
	jmp MSG_ReadDeltaField_1880
MSG_ReadDeltaField_170:
	mov eax, [ebp-0x88]
	movss xmm0, dword [eax]
	movss [ebp-0x54], xmm0
	mov eax, [ebp+0x8]
	mov eax, [eax+0x20]
	mov [ebp-0xac], eax
	mov ebx, eax
	and ebx, 0x7
	jnz MSG_ReadDeltaField_1890
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x1c]
	mov eax, [ebp-0xa0]
	add eax, [ecx+0x18]
	cmp edx, eax
	jl MSG_ReadDeltaField_1900
	mov dword [ecx], 0x1
MSG_ReadDeltaField_2130:
	call CL_GetMapCenter
	movss xmm0, dword [_float_0_50000000]
	addss xmm0, [eax+0x8]
	cvttss2si ebx, xmm0
	mov [ebp-0x48], ebx
	mov dword [ebp-0x4c], 0x0
	xor ebx, ebx
	mov esi, [ebp+0x8]
	mov esi, [esi+0x14]
	mov [ebp-0xa0], esi
	jmp MSG_ReadDeltaField_1910
MSG_ReadDeltaField_1940:
	mov edx, [ebp-0xac]
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl MSG_ReadDeltaField_1920
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov esi, ecx
MSG_ReadDeltaField_1960:
	mov ecx, edi
	sar eax, cl
	and eax, 0x1
	mov ecx, ebx
	shl eax, cl
	or [ebp-0x4c], eax
	add dword [ebp-0xac], 0x1
	mov edi, [ebp-0xac]
	mov [esi+0x20], edi
	add ebx, 0x1
	cmp ebx, 0x10
	jz MSG_ReadDeltaField_1930
MSG_ReadDeltaField_1910:
	mov edi, [ebp+0x8]
	mov edi, [edi+0x20]
	mov [ebp-0xac], edi
	and edi, 0x7
	jnz MSG_ReadDeltaField_1940
	mov eax, [ebp+0x8]
	mov edx, [eax+0x1c]
	mov eax, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	add eax, [ecx+0x18]
	cmp edx, eax
	jge MSG_ReadDeltaField_1950
	lea esi, [edx*8]
	mov [ebp-0xac], esi
	mov [ecx+0x20], esi
	lea esi, [edx+0x1]
	mov [ecx+0x1c], esi
	jmp MSG_ReadDeltaField_1940
MSG_ReadDeltaField_1920:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [eax+edx]
	jmp MSG_ReadDeltaField_1960
MSG_ReadDeltaField_1030:
	mov edx, [ebp+0x8]
	mov esi, [edx+0x1c]
	mov ecx, [edx+0x18]
	mov [ebp-0xa4], ecx
	jmp MSG_ReadDeltaField_1970
MSG_ReadDeltaField_160:
	mov esi, [ebp-0x88]
	movss xmm0, dword [esi]
	movss [ebp-0x64], xmm0
	mov eax, [ebp+0x8]
	mov eax, [eax+0x20]
	mov [ebp-0xac], eax
	mov edi, eax
	and edi, 0x7
	jnz MSG_ReadDeltaField_1980
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x1c]
	mov eax, [ebp-0xa0]
	add eax, [ecx+0x18]
	cmp edx, eax
	jl MSG_ReadDeltaField_1990
	mov dword [ecx], 0x1
MSG_ReadDeltaField_2250:
	call CL_GetMapCenter
	xor edx, edx
	cmp ebx, 0xffffffa4
	setnz dl
	movss xmm0, dword [_float_0_50000000]
	addss xmm0, [eax+edx*4]
	cvttss2si ebx, xmm0
	mov [ebp-0x58], ebx
	mov dword [ebp-0x5c], 0x0
	xor ebx, ebx
	mov esi, [ebp+0x8]
	mov esi, [esi+0x14]
	mov [ebp-0xa0], esi
	jmp MSG_ReadDeltaField_2000
MSG_ReadDeltaField_2030:
	mov edx, [ebp-0xac]
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl MSG_ReadDeltaField_2010
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov esi, ecx
MSG_ReadDeltaField_2050:
	mov ecx, edi
	sar eax, cl
	and eax, 0x1
	mov ecx, ebx
	shl eax, cl
	or [ebp-0x5c], eax
	add dword [ebp-0xac], 0x1
	mov edi, [ebp-0xac]
	mov [esi+0x20], edi
	add ebx, 0x1
	cmp ebx, 0x10
	jz MSG_ReadDeltaField_2020
MSG_ReadDeltaField_2000:
	mov edi, [ebp+0x8]
	mov edi, [edi+0x20]
	mov [ebp-0xac], edi
	and edi, 0x7
	jnz MSG_ReadDeltaField_2030
	mov eax, [ebp+0x8]
	mov edx, [eax+0x1c]
	mov eax, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	add eax, [ecx+0x18]
	cmp edx, eax
	jge MSG_ReadDeltaField_2040
	lea esi, [edx*8]
	mov [ebp-0xac], esi
	mov [ecx+0x20], esi
	lea esi, [edx+0x1]
	mov [ecx+0x1c], esi
	jmp MSG_ReadDeltaField_2030
MSG_ReadDeltaField_2010:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [eax+edx]
	jmp MSG_ReadDeltaField_2050
MSG_ReadDeltaField_1770:
	mov eax, [ebp+0x8]
	mov dword [eax], 0x1
	mov eax, 0xfffffffc
	or eax, [ebp-0x2c]
	jmp MSG_ReadDeltaField_1230
MSG_ReadDeltaField_810:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+esi]
	mov edi, ebx
	jmp MSG_ReadDeltaField_2060
MSG_ReadDeltaField_1730:
	mov eax, edi
	lea edi, [esi*8]
	mov [ebp-0xac], edi
	mov [eax+0x20], edi
	add esi, 0x1
	mov [eax+0x1c], esi
	jmp MSG_ReadDeltaField_2070
MSG_ReadDeltaField_180:
	mov edi, [ebp+0x8]
	mov edi, [edi+0x20]
	mov [ebp-0xac], edi
	mov ebx, edi
	and ebx, 0x7
	jnz MSG_ReadDeltaField_2080
	mov eax, [ebp+0x8]
	mov esi, [eax+0x1c]
	mov edx, [eax+0x18]
	mov [ebp-0xa4], edx
	mov eax, [ebp-0xa0]
	add eax, edx
	cmp esi, eax
	jl MSG_ReadDeltaField_2090
	mov ecx, [ebp+0x8]
	mov dword [ecx], 0x1
MSG_ReadDeltaField_2800:
	mov ecx, esi
	lea esi, [esi+0x2]
	mov eax, [ebp-0xa0]
	add eax, [ebp-0xa4]
	cmp esi, eax
	jle MSG_ReadDeltaField_2100
	mov ecx, [ebp+0x8]
	mov dword [ecx], 0x1
	movss xmm0, dword [_float__1_00000000]
MSG_ReadDeltaField_2700:
	mulss xmm0, [_float_0_00549316]
	mov ebx, [ebp-0x84]
	movss [ebx], xmm0
	jmp MSG_ReadDeltaField_300
MSG_ReadDeltaField_1130:
	mov dword [esi], 0x1
	mov dword [ebp-0x70], 0xffffffff
	jmp MSG_ReadDeltaField_2110
MSG_ReadDeltaField_1890:
	mov edx, eax
MSG_ReadDeltaField_2540:
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl MSG_ReadDeltaField_2120
	sub edx, [ebp-0xa0]
	mov esi, [ebp+0x8]
	mov eax, [esi+0xc]
	movzx eax, byte [eax+edx]
MSG_ReadDeltaField_2350:
	add dword [ebp-0xac], 0x1
	mov edi, [ebp-0xac]
	mov [esi+0x20], edi
	mov ecx, ebx
	sar eax, cl
	test al, 0x1
	jnz MSG_ReadDeltaField_2130
	mov dword [ebp-0x50], 0x0
	xor ebx, ebx
	jmp MSG_ReadDeltaField_2140
MSG_ReadDeltaField_2180:
	mov eax, [ebp+0x8]
	mov edx, [eax+0x1c]
	mov eax, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	add eax, [ecx+0x18]
	cmp edx, eax
	jge MSG_ReadDeltaField_2150
	lea esi, [edx*8]
	mov [ebp-0xac], esi
	mov [ecx+0x20], esi
	lea esi, [edx+0x1]
	mov [ecx+0x1c], esi
	mov edx, [ebp-0xac]
MSG_ReadDeltaField_2190:
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl MSG_ReadDeltaField_2160
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov esi, ecx
MSG_ReadDeltaField_2200:
	mov ecx, edi
	sar eax, cl
	and eax, 0x1
	mov ecx, ebx
	shl eax, cl
	or [ebp-0x50], eax
	add dword [ebp-0xac], 0x1
	mov edi, [ebp-0xac]
	mov [esi+0x20], edi
	add ebx, 0x1
	cmp ebx, 0x7
	jz MSG_ReadDeltaField_2170
MSG_ReadDeltaField_2140:
	mov esi, [ebp+0x8]
	mov esi, [esi+0x20]
	mov [ebp-0xac], esi
	mov edi, esi
	and edi, 0x7
	jz MSG_ReadDeltaField_2180
	mov edx, esi
	jmp MSG_ReadDeltaField_2190
MSG_ReadDeltaField_2160:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [eax+edx]
	jmp MSG_ReadDeltaField_2200
MSG_ReadDeltaField_2170:
	mov eax, [ebp-0x50]
	sub eax, 0x40
MSG_ReadDeltaField_2880:
	cvtsi2ss xmm0, eax
	addss xmm0, [ebp-0x54]
MSG_ReadDeltaField_2330:
	mov ebx, [ebp-0x84]
	movss [ebx], xmm0
	mov ebx, [ebp+0x1c]
	test ebx, ebx
	jz MSG_ReadDeltaField_300
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	mov esi, [ebp+0x18]
	mov eax, [esi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_sf_
	mov dword [esp], 0x10
	call Com_Printf
	jmp MSG_ReadDeltaField_300
MSG_ReadDeltaField_190:
	mov esi, [ebp+0x8]
	mov ecx, [esi+0x1c]
	lea esi, [ecx+0x2]
	mov eax, [ebp-0xa0]
	mov edi, [ebp+0x8]
	add eax, [edi+0x18]
	cmp esi, eax
	jg MSG_ReadDeltaField_2210
	mov ebx, 0x1
MSG_ReadDeltaField_2230:
	cmp [ebp-0xa0], ecx
	jg MSG_ReadDeltaField_2220
	mov eax, ecx
	sub eax, [ebp-0xa0]
	mov [ebp-0xdc], eax
	mov edx, [ebp+0x8]
	mov edx, [edx+0xc]
	mov [ebp-0xd4], edx
	movzx eax, byte [edx+eax]
MSG_ReadDeltaField_2490:
	mov [ebp+ebx-0x21], al
	add ecx, 0x1
	add ebx, 0x1
	cmp ebx, 0x3
	jnz MSG_ReadDeltaField_2230
	movsx eax, word [ebp-0x20]
	mov ecx, [ebp+0x8]
	mov [ecx+0x1c], esi
	cvtsi2ss xmm0, eax
MSG_ReadDeltaField_2500:
	mulss xmm0, [_float_0_00549316]
	mov esi, [ebp-0x84]
	movss [esi], xmm0
	jmp MSG_ReadDeltaField_300
MSG_ReadDeltaField_1980:
	mov edx, eax
MSG_ReadDeltaField_2570:
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl MSG_ReadDeltaField_2240
	sub edx, [ebp-0xa0]
	mov esi, [ebp+0x8]
	mov eax, [esi+0xc]
	movzx eax, byte [eax+edx]
MSG_ReadDeltaField_2440:
	add dword [ebp-0xac], 0x1
	mov edx, [ebp-0xac]
	mov [esi+0x20], edx
	mov ecx, edi
	sar eax, cl
	test al, 0x1
	jnz MSG_ReadDeltaField_2250
	mov dword [ebp-0x60], 0x0
	xor ebx, ebx
	jmp MSG_ReadDeltaField_2260
MSG_ReadDeltaField_2300:
	mov eax, [ebp+0x8]
	mov edx, [eax+0x1c]
	mov eax, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	add eax, [ecx+0x18]
	cmp edx, eax
	jge MSG_ReadDeltaField_2270
	lea esi, [edx*8]
	mov [ebp-0xac], esi
	mov [ecx+0x20], esi
	lea esi, [edx+0x1]
	mov [ecx+0x1c], esi
	mov edx, [ebp-0xac]
MSG_ReadDeltaField_2310:
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl MSG_ReadDeltaField_2280
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov esi, ecx
MSG_ReadDeltaField_2320:
	mov ecx, edi
	sar eax, cl
	and eax, 0x1
	mov ecx, ebx
	shl eax, cl
	or [ebp-0x60], eax
	add dword [ebp-0xac], 0x1
	mov edi, [ebp-0xac]
	mov [esi+0x20], edi
	add ebx, 0x1
	cmp ebx, 0x7
	jz MSG_ReadDeltaField_2290
MSG_ReadDeltaField_2260:
	mov esi, [ebp+0x8]
	mov esi, [esi+0x20]
	mov [ebp-0xac], esi
	mov edi, esi
	and edi, 0x7
	jz MSG_ReadDeltaField_2300
	mov edx, esi
	jmp MSG_ReadDeltaField_2310
MSG_ReadDeltaField_2280:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [eax+edx]
	jmp MSG_ReadDeltaField_2320
MSG_ReadDeltaField_2290:
	mov eax, [ebp-0x60]
	sub eax, 0x40
MSG_ReadDeltaField_2890:
	cvtsi2ss xmm0, eax
	addss xmm0, [ebp-0x64]
	jmp MSG_ReadDeltaField_2330
MSG_ReadDeltaField_1780:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+esi]
	mov edi, ebx
	jmp MSG_ReadDeltaField_2340
MSG_ReadDeltaField_2120:
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	movzx eax, byte [eax+edx]
	mov esi, ecx
	jmp MSG_ReadDeltaField_2350
MSG_ReadDeltaField_200:
	mov dword [ebp-0x44], 0x0
	xor ebx, ebx
MSG_ReadDeltaField_2390:
	mov eax, [ebp+0x8]
	mov eax, [eax+0x20]
	mov [ebp-0xac], eax
	mov edi, eax
	and edi, 0x7
	jnz MSG_ReadDeltaField_2360
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x1c]
	mov eax, [ebp-0xa0]
	add eax, [ecx+0x18]
	cmp edx, eax
	jge MSG_ReadDeltaField_2370
	lea esi, [edx*8]
	mov [ebp-0xac], esi
	mov [ecx+0x20], esi
	lea esi, [edx+0x1]
	mov [ecx+0x1c], esi
	mov edx, [ebp-0xac]
MSG_ReadDeltaField_2400:
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl MSG_ReadDeltaField_2380
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov esi, ecx
MSG_ReadDeltaField_2410:
	mov ecx, edi
	sar eax, cl
	and eax, 0x1
	mov ecx, ebx
	shl eax, cl
	or [ebp-0x44], eax
	add dword [ebp-0xac], 0x1
	mov edi, [ebp-0xac]
	mov [esi+0x20], edi
	add ebx, 0x1
	cmp ebx, 0x5
	jnz MSG_ReadDeltaField_2390
	cvtsi2ss xmm0, dword [ebp-0x44]
MSG_ReadDeltaField_3010:
	divss xmm0, dword [_float_10_00000000]
	addss xmm0, [_float_1_39999998]
	mov eax, [ebp-0x84]
	movss [eax], xmm0
	jmp MSG_ReadDeltaField_300
MSG_ReadDeltaField_2360:
	mov edx, eax
	jmp MSG_ReadDeltaField_2400
MSG_ReadDeltaField_2380:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [eax+edx]
	jmp MSG_ReadDeltaField_2410
MSG_ReadDeltaField_2080:
	mov edx, edi
MSG_ReadDeltaField_2670:
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl MSG_ReadDeltaField_2420
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edi, ecx
MSG_ReadDeltaField_2530:
	add dword [ebp-0xac], 0x1
	mov edx, [ebp-0xac]
	mov [edi+0x20], edx
	mov ecx, ebx
	sar eax, cl
	test al, 0x1
	jnz MSG_ReadDeltaField_2430
	mov ebx, [ebp-0x84]
	mov dword [ebx], 0x0
	jmp MSG_ReadDeltaField_300
MSG_ReadDeltaField_2240:
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	movzx eax, byte [eax+edx]
	mov esi, ecx
	jmp MSG_ReadDeltaField_2440
MSG_ReadDeltaField_220:
	mov edx, ecx
MSG_ReadDeltaField_2710:
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl MSG_ReadDeltaField_2450
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edi, ecx
MSG_ReadDeltaField_2560:
	add dword [ebp-0xac], 0x1
	mov edx, [ebp-0xac]
	mov [edi+0x20], edx
	mov ecx, ebx
	sar eax, cl
	test al, 0x1
	jz MSG_ReadDeltaField_2460
	jmp MSG_ReadDeltaField_2470
MSG_ReadDeltaField_770:
	mov eax, [ebp+0x8]
	mov dword [eax], 0x1
	mov dword [ebp-0x30], 0xffffffff
	jmp MSG_ReadDeltaField_2480
MSG_ReadDeltaField_1950:
	mov edi, [ebp+0x8]
	mov dword [edi], 0x1
	mov dword [ebp-0x4c], 0xffffffff
MSG_ReadDeltaField_1930:
	cvttss2si eax, [ebp-0x54]
	sub eax, [ebp-0x48]
	add eax, 0x8000
	xor [ebp-0x4c], eax
	mov edx, [ebp-0x4c]
	mov ecx, [ebp-0x48]
	lea eax, [edx+ecx-0x8000]
	cvtsi2ss xmm0, eax
	jmp MSG_ReadDeltaField_2330
MSG_ReadDeltaField_2220:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x8]
	movzx eax, byte [ecx+eax]
	jmp MSG_ReadDeltaField_2490
MSG_ReadDeltaField_2210:
	mov dword [edi], 0x1
	movss xmm0, dword [_float__1_00000000]
	jmp MSG_ReadDeltaField_2500
MSG_ReadDeltaField_210:
	mov edx, [ebp+0x8]
	mov edx, [edx+0x20]
	mov [ebp-0xac], edx
	mov ebx, edx
	and ebx, 0x7
	jnz MSG_ReadDeltaField_2510
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x1c]
	mov eax, [ebp-0xa0]
	add eax, [ecx+0x18]
	cmp edx, eax
	jl MSG_ReadDeltaField_2520
	mov dword [ecx], 0x1
MSG_ReadDeltaField_2590:
	mov ebx, [ebp-0x88]
	mov eax, [ebx]
	mov esi, [ebp-0x84]
	mov [esi], eax
	cmp byte [ebx+0x3], 0x1
	sbb eax, eax
	mov [esi+0x3], al
	jmp MSG_ReadDeltaField_300
MSG_ReadDeltaField_2420:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [eax+edx]
	mov edi, esi
	jmp MSG_ReadDeltaField_2530
MSG_ReadDeltaField_2040:
	mov ebx, [ebp+0x8]
	mov dword [ebx], 0x1
	mov dword [ebp-0x5c], 0xffffffff
MSG_ReadDeltaField_2020:
	cvttss2si eax, [ebp-0x64]
	sub eax, [ebp-0x58]
	add eax, 0x8000
	xor [ebp-0x5c], eax
	mov edx, [ebp-0x5c]
	mov ecx, [ebp-0x58]
	lea eax, [edx+ecx-0x8000]
	cvtsi2ss xmm0, eax
	jmp MSG_ReadDeltaField_2330
MSG_ReadDeltaField_1900:
	lea eax, [edx*8]
	mov [ebp-0xac], eax
	mov [ecx+0x20], eax
	lea esi, [edx+0x1]
	mov [ecx+0x1c], esi
	mov edx, [ebp-0xac]
	jmp MSG_ReadDeltaField_2540
MSG_ReadDeltaField_1590:
	mov dword [ecx], 0x1
	mov eax, 0xffffff9c
	jmp MSG_ReadDeltaField_2550
MSG_ReadDeltaField_2450:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [eax+edx]
	mov edi, esi
	jmp MSG_ReadDeltaField_2560
MSG_ReadDeltaField_1990:
	lea eax, [edx*8]
	mov [ebp-0xac], eax
	mov ecx, [ebp+0x8]
	mov [ecx+0x20], eax
	lea esi, [edx+0x1]
	mov [ecx+0x1c], esi
	mov edx, [ebp-0xac]
	jmp MSG_ReadDeltaField_2570
MSG_ReadDeltaField_2520:
	lea esi, [edx*8]
	mov [ebp-0xac], esi
	mov edi, [ebp+0x8]
	mov [edi+0x20], esi
	lea esi, [edx+0x1]
	mov [edi+0x1c], esi
MSG_ReadDeltaField_2510:
	mov edx, [ebp-0xac]
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl MSG_ReadDeltaField_2580
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
MSG_ReadDeltaField_2870:
	add dword [ebp-0xac], 0x1
	mov edx, [ebp-0xac]
	mov edi, [ebp+0x8]
	mov [edi+0x20], edx
	mov ecx, ebx
	sar eax, cl
	test al, 0x1
	jnz MSG_ReadDeltaField_2590
	mov ebx, [ebp-0xac]
	and ebx, 0x7
	jnz MSG_ReadDeltaField_2600
	mov edi, [ebp+0x8]
	mov edx, [edi+0x1c]
	mov eax, [ebp-0xa0]
	add eax, [edi+0x18]
	cmp edx, eax
	jl MSG_ReadDeltaField_2610
	mov dword [edi], 0x1
MSG_ReadDeltaField_2930:
	mov dword [ebp-0x40], 0x0
	xor ebx, ebx
MSG_ReadDeltaField_2650:
	mov edx, [ebp+0x8]
	mov edx, [edx+0x20]
	mov [ebp-0xac], edx
	mov edi, edx
	and edi, 0x7
	jnz MSG_ReadDeltaField_2620
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x1c]
	mov eax, [ebp-0xa0]
	add eax, [ecx+0x18]
	cmp edx, eax
	jge MSG_ReadDeltaField_2630
	lea esi, [edx*8]
	mov [ebp-0xac], esi
	mov [ecx+0x20], esi
	lea esi, [edx+0x1]
	mov [ecx+0x1c], esi
	mov edx, [ebp-0xac]
MSG_ReadDeltaField_2620:
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl MSG_ReadDeltaField_2640
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov esi, ecx
MSG_ReadDeltaField_2660:
	mov ecx, edi
	sar eax, cl
	and eax, 0x1
	mov ecx, ebx
	shl eax, cl
	or [ebp-0x40], eax
	add dword [ebp-0xac], 0x1
	mov edi, [ebp-0xac]
	mov [esi+0x20], edi
	add ebx, 0x1
	cmp ebx, 0x5
	jnz MSG_ReadDeltaField_2650
	movzx eax, byte [ebp-0x40]
MSG_ReadDeltaField_3070:
	shl al, 0x3
	mov edx, [ebp-0x84]
	mov [edx+0x3], al
	jmp MSG_ReadDeltaField_300
MSG_ReadDeltaField_2640:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [eax+edx]
	jmp MSG_ReadDeltaField_2660
MSG_ReadDeltaField_2090:
	lea eax, [esi*8]
	mov [ebp-0xac], eax
	mov edx, [ebp+0x8]
	mov [edx+0x20], eax
	add esi, 0x1
	mov [edx+0x1c], esi
	mov edx, [ebp-0xac]
	jmp MSG_ReadDeltaField_2670
MSG_ReadDeltaField_2100:
	mov ebx, 0x1
MSG_ReadDeltaField_2690:
	cmp [ebp-0xa0], ecx
	jg MSG_ReadDeltaField_2680
	mov edi, ecx
	sub edi, [ebp-0xa0]
	mov [ebp-0xdc], edi
	mov eax, [ebp+0x8]
	mov eax, [eax+0xc]
	movzx eax, byte [eax+edi]
MSG_ReadDeltaField_2720:
	mov [ebp+ebx-0x21], al
	add ecx, 0x1
	add ebx, 0x1
	cmp ebx, 0x3
	jnz MSG_ReadDeltaField_2690
	movsx eax, word [ebp-0x20]
	mov edx, [ebp+0x8]
	mov [edx+0x1c], esi
	cvtsi2ss xmm0, eax
	jmp MSG_ReadDeltaField_2700
MSG_ReadDeltaField_230:
	lea ecx, [edx*8]
	mov [ebp-0xac], ecx
	mov esi, [ebp+0x8]
	mov [esi+0x20], ecx
	lea esi, [edx+0x1]
	mov edi, [ebp+0x8]
	mov [edi+0x1c], esi
	mov edx, [ebp-0xac]
	jmp MSG_ReadDeltaField_2710
MSG_ReadDeltaField_2680:
	mov edi, [ebp+0x8]
	mov eax, [edi+0x8]
	movzx eax, byte [eax+ecx]
	jmp MSG_ReadDeltaField_2720
MSG_ReadDeltaField_250:
	jle MSG_ReadDeltaField_2730
	mov dword [ebp-0x78], 0x0
	mov dword [ebp-0x38], 0x0
	jmp MSG_ReadDeltaField_2740
MSG_ReadDeltaField_2780:
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov esi, ecx
MSG_ReadDeltaField_2790:
	movzx ecx, byte [ebp-0x3c]
	sar eax, cl
	and eax, 0x1
	movzx ecx, byte [ebp-0x38]
	shl eax, cl
	or [ebp-0x78], eax
	mov eax, [ebp-0xac]
	add eax, 0x1
	mov [esi+0x20], eax
	add dword [ebp-0x38], 0x1
	cmp ebx, [ebp-0x38]
	jz MSG_ReadDeltaField_2750
MSG_ReadDeltaField_2740:
	mov eax, [ebp+0x8]
	mov eax, [eax+0x20]
	mov [ebp-0xac], eax
	and eax, 0x7
	mov [ebp-0x3c], eax
	jnz MSG_ReadDeltaField_2760
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x1c]
	mov eax, [ebp-0xa0]
	add eax, [ecx+0x18]
	cmp edx, eax
	jge MSG_ReadDeltaField_2770
	lea esi, [edx*8]
	mov [ebp-0xac], esi
	mov [ecx+0x20], esi
	lea esi, [edx+0x1]
	mov [ecx+0x1c], esi
MSG_ReadDeltaField_2760:
	mov edx, [ebp-0xac]
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jge MSG_ReadDeltaField_2780
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [eax+edx]
	jmp MSG_ReadDeltaField_2790
MSG_ReadDeltaField_2430:
	mov ebx, [ebp+0x8]
	mov esi, [ebx+0x1c]
	mov edi, [ebx+0x18]
	mov [ebp-0xa4], edi
	jmp MSG_ReadDeltaField_2800
MSG_ReadDeltaField_260:
	mov ecx, ebx
	mov edx, [ebp-0xa0]
	mov eax, [ebp+0x8]
	add edx, [eax+0x18]
	mov [ebp-0x9c], edx
	mov ebx, eax
	jmp MSG_ReadDeltaField_2810
MSG_ReadDeltaField_2840:
	cmp esi, [ebp-0xa0]
	jl MSG_ReadDeltaField_2820
	mov edx, esi
	sub edx, [ebp-0xa0]
	mov eax, [ebx+0xc]
	movzx ebx, byte [eax+edx]
MSG_ReadDeltaField_2860:
	lea eax, [esi+0x1]
	mov esi, [ebp+0x8]
	mov [esi+0x1c], eax
MSG_ReadDeltaField_2850:
	shl ebx, cl
	or [ebp-0x78], ebx
	add ecx, 0x8
	cmp edi, ecx
	jle MSG_ReadDeltaField_2830
	mov ebx, [ebp+0x8]
MSG_ReadDeltaField_2810:
	mov esi, [ebx+0x1c]
	cmp esi, [ebp-0x9c]
	jl MSG_ReadDeltaField_2840
	mov dword [ebx], 0x1
	mov ebx, 0xffffffff
	jmp MSG_ReadDeltaField_2850
MSG_ReadDeltaField_2820:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x8]
	movzx ebx, byte [eax+esi]
	jmp MSG_ReadDeltaField_2860
MSG_ReadDeltaField_2580:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [eax+edx]
	jmp MSG_ReadDeltaField_2870
MSG_ReadDeltaField_2150:
	mov edi, [ebp+0x8]
	mov dword [edi], 0x1
	mov eax, 0xffffffbf
	jmp MSG_ReadDeltaField_2880
MSG_ReadDeltaField_2270:
	mov edi, [ebp+0x8]
	mov dword [edi], 0x1
	mov eax, 0xffffffbf
	jmp MSG_ReadDeltaField_2890
MSG_ReadDeltaField_290:
	mov edi, [ebp-0x84]
	mov eax, [edi]
	mov [esp+0xc], eax
	mov edx, [ebp+0x18]
	mov eax, [edx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_si_
	mov dword [esp], 0x10
	call Com_Printf
	jmp MSG_ReadDeltaField_2900
MSG_ReadDeltaField_270:
	mov edx, 0xffffffff
	jmp MSG_ReadDeltaField_2910
MSG_ReadDeltaField_2610:
	lea eax, [edx*8]
	mov ecx, [ebp+0x8]
	mov [ecx+0x20], eax
	lea esi, [edx+0x1]
	mov [ecx+0x1c], esi
MSG_ReadDeltaField_2600:
	mov esi, [ebp+0x8]
	mov ecx, [esi+0x20]
	mov edx, ecx
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl MSG_ReadDeltaField_2920
	sub edx, [ebp-0xa0]
	mov eax, [esi+0xc]
	movzx eax, byte [eax+edx]
MSG_ReadDeltaField_3050:
	add ecx, 0x1
	mov edx, [ebp+0x8]
	mov [edx+0x20], ecx
	mov ecx, ebx
	sar eax, cl
	test al, 0x1
	jnz MSG_ReadDeltaField_2930
	mov ecx, [edx+0x1c]
	mov eax, [ebp-0xa0]
	add eax, [edx+0x18]
	cmp ecx, eax
	jge MSG_ReadDeltaField_2940
	cmp ecx, [ebp-0xa0]
	jl MSG_ReadDeltaField_2950
	mov edx, ecx
	sub edx, [ebp-0xa0]
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0xc]
	movzx eax, byte [eax+edx]
MSG_ReadDeltaField_3060:
	lea esi, [ecx+0x1]
	mov edi, [ebp+0x8]
	mov [edi+0x1c], esi
MSG_ReadDeltaField_3040:
	mov edx, [ebp-0x84]
	mov [edx], al
	mov ebx, [ebp+0x8]
	mov ecx, [ebx+0x1c]
	mov edx, [ebx+0x14]
	mov eax, edx
	add eax, [ebx+0x18]
	cmp ecx, eax
	jge MSG_ReadDeltaField_2960
	cmp ecx, edx
	jl MSG_ReadDeltaField_2970
	mov esi, ecx
	sub esi, edx
	mov eax, [ebx+0xc]
	movzx eax, byte [eax+esi]
MSG_ReadDeltaField_3080:
	lea esi, [ecx+0x1]
	mov edx, [ebp+0x8]
	mov [edx+0x1c], esi
MSG_ReadDeltaField_3030:
	mov ebx, [ebp-0x84]
	mov [ebx+0x1], al
	mov esi, [ebp+0x8]
	mov ecx, [esi+0x1c]
	mov edx, [esi+0x14]
	mov eax, edx
	add eax, [esi+0x18]
	cmp ecx, eax
	jge MSG_ReadDeltaField_2980
	cmp ecx, edx
	jl MSG_ReadDeltaField_2990
	mov edi, ecx
	sub edi, edx
	mov eax, [esi+0xc]
	movzx eax, byte [eax+edi]
MSG_ReadDeltaField_3090:
	lea esi, [ecx+0x1]
	mov ecx, [ebp+0x8]
	mov [ecx+0x1c], esi
MSG_ReadDeltaField_3020:
	mov edi, [ebp-0x84]
	mov [edi+0x2], al
	mov eax, [ebp+0x8]
	mov eax, [eax+0x14]
	mov [ebp-0xa0], eax
	jmp MSG_ReadDeltaField_2930
MSG_ReadDeltaField_1790:
	mov ebx, [ebp+0x8]
	mov dword [ebx], 0x1
	mov dword [ebp-0x2c], 0xffffffff
	jmp MSG_ReadDeltaField_3000
MSG_ReadDeltaField_2370:
	mov edi, [ebp+0x8]
	mov dword [edi], 0x1
	movss xmm0, dword [_float__1_00000000]
	jmp MSG_ReadDeltaField_3010
MSG_ReadDeltaField_2980:
	mov esi, [ebp+0x8]
	mov dword [esi], 0x1
	mov eax, 0xffffffff
	jmp MSG_ReadDeltaField_3020
MSG_ReadDeltaField_2960:
	mov ecx, [ebp+0x8]
	mov dword [ecx], 0x1
	mov eax, 0xffffffff
	jmp MSG_ReadDeltaField_3030
MSG_ReadDeltaField_2940:
	mov eax, [ebp+0x8]
	mov dword [eax], 0x1
	mov eax, 0xffffffff
	jmp MSG_ReadDeltaField_3040
MSG_ReadDeltaField_2920:
	mov edi, [ebp+0x8]
	mov eax, [edi+0x8]
	movzx eax, byte [eax+edx]
	jmp MSG_ReadDeltaField_3050
MSG_ReadDeltaField_2950:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [eax+ecx]
	jmp MSG_ReadDeltaField_3060
MSG_ReadDeltaField_2630:
	mov ebx, [ebp+0x8]
	mov dword [ebx], 0x1
	mov eax, 0xffffffff
	jmp MSG_ReadDeltaField_3070
MSG_ReadDeltaField_2970:
	mov edi, [ebp+0x8]
	mov eax, [edi+0x8]
	movzx eax, byte [eax+ecx]
	jmp MSG_ReadDeltaField_3080
MSG_ReadDeltaField_2770:
	mov esi, [ebp+0x8]
	mov dword [esi], 0x1
	mov dword [ebp-0x78], 0xffffffff
	jmp MSG_ReadDeltaField_2750
MSG_ReadDeltaField_2990:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x8]
	movzx eax, byte [eax+ecx]
	jmp MSG_ReadDeltaField_3090
	nop


;MSG_ReadStringLine(msg_t*)
MSG_ReadStringLine:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	xor edi, edi
	mov ecx, [esi+0x1c]
	mov edx, [esi+0x14]
	mov eax, edx
	add eax, [esi+0x18]
	cmp ecx, eax
	jge MSG_ReadStringLine_10
MSG_ReadStringLine_70:
	cmp ecx, edx
	jl MSG_ReadStringLine_20
	mov eax, ecx
	sub eax, edx
	mov edx, eax
	mov eax, [esi+0xc]
	movzx ebx, byte [eax+edx]
	lea eax, [ecx+0x1]
	mov [esi+0x1c], eax
	cmp ebx, 0x25
	jz MSG_ReadStringLine_30
MSG_ReadStringLine_110:
	cmp ebx, 0xa
	jnz MSG_ReadStringLine_40
MSG_ReadStringLine_80:
	xor ebx, ebx
MSG_ReadStringLine_120:
	cmp edi, 0x3ff
	jbe MSG_ReadStringLine_50
MSG_ReadStringLine_90:
	test ebx, ebx
	jz MSG_ReadStringLine_60
MSG_ReadStringLine_100:
	add edi, 0x1
	mov ecx, [esi+0x1c]
	mov edx, [esi+0x14]
	mov eax, edx
	add eax, [esi+0x18]
	cmp ecx, eax
	jl MSG_ReadStringLine_70
MSG_ReadStringLine_10:
	mov dword [esi], 0x1
	jmp MSG_ReadStringLine_80
MSG_ReadStringLine_40:
	cmp ebx, 0xffffffff
	jz MSG_ReadStringLine_80
	cmp edi, 0x3ff
	ja MSG_ReadStringLine_90
MSG_ReadStringLine_50:
	movsx eax, bl
	mov [esp], eax
	call Q_CleanChar
	mov [edi+_ZZ18MSG_ReadStringLineP5msg_tE6string], al
	test ebx, ebx
	jnz MSG_ReadStringLine_100
MSG_ReadStringLine_60:
	mov byte [_ZZ18MSG_ReadStringLineP5msg_tE6string+0x3ff], 0x0
	mov eax, _ZZ18MSG_ReadStringLineP5msg_tE6string
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MSG_ReadStringLine_20:
	mov eax, [esi+0x8]
	movzx ebx, byte [eax+ecx]
	lea eax, [ecx+0x1]
	mov [esi+0x1c], eax
	cmp ebx, 0x25
	jnz MSG_ReadStringLine_110
MSG_ReadStringLine_30:
	mov bl, 0x2e
	jmp MSG_ReadStringLine_120


;MSG_WriteBigString(msg_t*, char const*)
MSG_WriteBigString:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x201c
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp+0xc]
	repne scasb
	not ecx
	lea esi, [ecx-0x1]
	cmp esi, 0x1fff
	jle MSG_WriteBigString_10
	mov dword [esp+0x4], _cstring_msg_writestring_1
	mov dword [esp], 0x10
	call Com_Printf
	mov edx, [ebp+0x8]
	mov eax, [edx+0x14]
	lea edx, [eax+0x1]
	mov ecx, [ebp+0x8]
	cmp edx, [ecx+0x10]
	jle MSG_WriteBigString_20
MSG_WriteBigString_40:
	mov dword [ecx], 0x1
	add esp, 0x201c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MSG_WriteBigString_10:
	mov dword [esp+0x8], 0x2000
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	lea ecx, [ebp-0x2018]
	mov [esp], ecx
	call Q_strncpyz
	test esi, esi
	jg MSG_WriteBigString_30
	lea edx, [esi+0x1]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x14]
	lea ebx, [edx+eax]
	cmp ebx, [ecx+0x10]
	jg MSG_WriteBigString_40
MSG_WriteBigString_60:
	add eax, [ecx+0x8]
	mov [esp+0x8], edx
	lea edx, [ebp-0x2018]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	mov ecx, [ebp+0x8]
	mov [ecx+0x14], ebx
	add esp, 0x201c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MSG_WriteBigString_20:
	add eax, [ecx+0x8]
	mov byte [eax], 0x0
	mov [ecx+0x14], edx
	add esp, 0x201c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MSG_WriteBigString_30:
	xor edi, edi
MSG_WriteBigString_50:
	lea eax, [ebp-0x2018]
	lea ebx, [edi+eax]
	movsx eax, byte [ebx]
	mov [esp], eax
	call Q_CleanChar
	mov [ebx], al
	add edi, 0x1
	cmp esi, edi
	jnz MSG_WriteBigString_50
	lea edx, [esi+0x1]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x14]
	lea ebx, [edx+eax]
	cmp ebx, [ecx+0x10]
	jg MSG_WriteBigString_40
	jmp MSG_WriteBigString_60


;MSG_GetUsedBitCount(msg_t const*)
MSG_GetUsedBitCount:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x14]
	add eax, [ecx+0x18]
	shl eax, 0x3
	mov edx, 0x8
	sub edx, [ecx+0x20]
	and edx, 0x7
	sub eax, edx
	pop ebp
	ret


;MSG_ReadDeltaClient(msg_t*, int, clientState_s const*, clientState_s*, int)
MSG_ReadDeltaClient:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x90
	mov ecx, [ebp+0x10]
	mov eax, numClientStateFields
	mov esi, [eax]
	test ecx, ecx
	jz MSG_ReadDeltaClient_10
MSG_ReadDeltaClient_20:
	mov [esp+0x14], esi
	mov eax, clientStateFields
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x6
	mov [esp+0x8], esi
	mov eax, [ebp+0x18]
	mov [esp+0x4], eax
	mov eax, [ebp+0x14]
	mov [esp], eax
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	call MSG_ReadDeltaStruct
	add esp, 0x90
	pop ebx
	pop esi
	pop ebp
	ret
MSG_ReadDeltaClient_10:
	lea ebx, [ebp-0x6c]
	mov dword [esp+0x8], 0x64
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call memset
	mov ecx, ebx
	jmp MSG_ReadDeltaClient_20
	nop


;MSG_ReadDeltaEntity(msg_t*, int, entityState_s const*, entityState_s*, int)
MSG_ReadDeltaEntity:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov esi, [ebp+0x8]
	mov eax, [esi+0x20]
	mov [ebp-0x3c], eax
	mov edi, eax
	and edi, 0x7
	jnz MSG_ReadDeltaEntity_10
	mov edx, [esi+0x1c]
	mov ebx, [esi+0x14]
	mov eax, ebx
	add eax, [esi+0x18]
	cmp edx, eax
	jl MSG_ReadDeltaEntity_20
	mov dword [esi], 0x1
MSG_ReadDeltaEntity_70:
	mov edi, [ebp-0x3c]
	and edi, 0x7
	jz MSG_ReadDeltaEntity_30
MSG_ReadDeltaEntity_280:
	mov edx, [ebp-0x3c]
	sar edx, 0x3
	cmp edx, ebx
	jl MSG_ReadDeltaEntity_40
	sub edx, ebx
	mov eax, [esi+0xc]
	movzx eax, byte [eax+edx]
MSG_ReadDeltaEntity_270:
	add dword [ebp-0x3c], 0x1
	mov edx, [ebp-0x3c]
	mov [esi+0x20], edx
	mov ecx, edi
	sar eax, cl
	test al, 0x1
	jnz MSG_ReadDeltaEntity_50
	mov dword [esp+0x8], 0xf4
	mov ebx, [ebp+0x10]
	mov [esp+0x4], ebx
	mov eax, [ebp+0x14]
	mov [esp], eax
	call memcpy
	xor eax, eax
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MSG_ReadDeltaEntity_10:
	mov ebx, [esi+0x14]
MSG_ReadDeltaEntity_110:
	mov edx, [ebp-0x3c]
	sar edx, 0x3
	cmp edx, ebx
	jl MSG_ReadDeltaEntity_60
	sub edx, ebx
	mov eax, [esi+0xc]
	movzx eax, byte [eax+edx]
MSG_ReadDeltaEntity_100:
	add dword [ebp-0x3c], 0x1
	mov edx, [ebp-0x3c]
	mov [esi+0x20], edx
	mov ecx, edi
	sar eax, cl
	test al, 0x1
	jz MSG_ReadDeltaEntity_70
	mov eax, cl_shownet
	mov eax, [eax]
	test eax, eax
	jz MSG_ReadDeltaEntity_80
	mov eax, [eax+0xc]
	cmp eax, 0x1
	jle MSG_ReadDeltaEntity_90
MSG_ReadDeltaEntity_310:
	mov ebx, [ebp+0x18]
	mov [esp+0xc], ebx
	mov eax, [esi+0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_3i_3i_remove
	mov dword [esp], 0x10
	call Com_Printf
	mov eax, 0x1
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MSG_ReadDeltaEntity_60:
	mov eax, [esi+0x8]
	movzx eax, byte [eax+edx]
	jmp MSG_ReadDeltaEntity_100
MSG_ReadDeltaEntity_20:
	lea ecx, [edx*8]
	mov [ebp-0x3c], ecx
	mov [esi+0x20], ecx
	lea eax, [edx+0x1]
	mov [esi+0x1c], eax
	jmp MSG_ReadDeltaEntity_110
MSG_ReadDeltaEntity_30:
	mov edx, [esi+0x1c]
	mov eax, ebx
	add eax, [esi+0x18]
	cmp edx, eax
	jl MSG_ReadDeltaEntity_120
	mov dword [esi], 0x1
MSG_ReadDeltaEntity_50:
	mov dword [ebp-0x24], 0x0
	xor edi, edi
	mov eax, [ebp-0x3c]
	jmp MSG_ReadDeltaEntity_130
MSG_ReadDeltaEntity_160:
	mov edx, [ebp-0x3c]
	sar edx, 0x3
	cmp edx, ebx
	jl MSG_ReadDeltaEntity_140
MSG_ReadDeltaEntity_180:
	sub edx, ebx
	mov eax, [esi+0xc]
	movzx eax, byte [eax+edx]
	movzx ecx, byte [ebp-0x20]
	sar eax, cl
	and eax, 0x1
	mov ecx, edi
	shl eax, cl
	or [ebp-0x24], eax
	mov eax, [ebp-0x3c]
	add eax, 0x1
	mov [esi+0x20], eax
	add edi, 0x1
	cmp edi, 0x6
	jz MSG_ReadDeltaEntity_150
MSG_ReadDeltaEntity_190:
	mov [ebp-0x3c], eax
MSG_ReadDeltaEntity_130:
	and eax, 0x7
	mov [ebp-0x20], eax
	jnz MSG_ReadDeltaEntity_160
	mov edx, [esi+0x1c]
	mov eax, ebx
	add eax, [esi+0x18]
	cmp edx, eax
	jge MSG_ReadDeltaEntity_170
	lea ecx, [edx*8]
	mov [ebp-0x3c], ecx
	mov [esi+0x20], ecx
	lea eax, [edx+0x1]
	mov [esi+0x1c], eax
	mov edx, [ebp-0x3c]
	sar edx, 0x3
	cmp edx, ebx
	jge MSG_ReadDeltaEntity_180
MSG_ReadDeltaEntity_140:
	mov eax, [esi+0x8]
	movzx eax, byte [eax+edx]
	movzx ecx, byte [ebp-0x20]
	sar eax, cl
	and eax, 0x1
	mov ecx, edi
	shl eax, cl
	or [ebp-0x24], eax
	mov eax, [ebp-0x3c]
	add eax, 0x1
	mov [esi+0x20], eax
	add edi, 0x1
	cmp edi, 0x6
	jnz MSG_ReadDeltaEntity_190
MSG_ReadDeltaEntity_150:
	mov ebx, [ebp-0x24]
	mov [ebp-0x1c], ebx
MSG_ReadDeltaEntity_350:
	mov eax, cl_shownet
	mov eax, [eax]
	test eax, eax
	jz MSG_ReadDeltaEntity_200
	mov eax, [eax+0xc]
	cmp eax, 0x1
	jle MSG_ReadDeltaEntity_210
MSG_ReadDeltaEntity_290:
	mov edx, [ebp+0x14]
	mov eax, [edx]
	mov [esp+0xc], eax
	mov eax, [esi+0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_3i_3i_
	mov dword [esp], 0x10
	call Com_Printf
	mov dword [ebp-0x28], 0x1
MSG_ReadDeltaEntity_300:
	mov ebx, [ebp+0x18]
	mov ecx, [ebp+0x14]
	mov [ecx], ebx
	mov dword [esp+0x18], 0x0
	mov eax, [ebp-0x28]
	mov [esp+0x14], eax
	mov ebx, entityStateFields
	mov [esp+0x10], ebx
	mov [esp+0xc], ecx
	mov edx, [ebp+0x10]
	mov [esp+0x8], edx
	mov ecx, [ebp+0xc]
	mov [esp+0x4], ecx
	mov [esp], esi
	call MSG_ReadDeltaField
	mov eax, [ebx+0x4]
	mov edx, [ebp+0x14]
	mov eax, [eax+edx]
	mov [esp], eax
	call MSG_GetStateFieldListForEntityType
	mov [ebp-0x30], eax
	mov ecx, [eax]
	mov [ebp-0x2c], ecx
	mov edx, [ebp-0x1c]
	cmp [eax+0x4], edx
	jb MSG_ReadDeltaEntity_220
	mov eax, msg_dumpEnts
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz MSG_ReadDeltaEntity_230
MSG_ReadDeltaEntity_340:
	mov ebx, [ebp-0x2c]
	add ebx, 0x10
	cmp dword [ebp-0x1c], 0x1
	ja MSG_ReadDeltaEntity_240
MSG_ReadDeltaEntity_330:
	mov eax, [ebp-0x1c]
	shl eax, 0x4
	mov ecx, [ebp-0x2c]
	add ecx, eax
	mov ebx, [ebp-0x1c]
	mov edx, [ebp-0x30]
	cmp [edx+0x4], ebx
	jbe MSG_ReadDeltaEntity_250
MSG_ReadDeltaEntity_260:
	mov edx, [ecx+0x4]
	mov ebx, [ebp+0x10]
	mov eax, [edx+ebx]
	mov ebx, [ebp+0x14]
	mov [ebx+edx], eax
	add dword [ebp-0x1c], 0x1
	add ecx, 0x10
	mov edx, [ebp-0x1c]
	mov eax, [ebp-0x30]
	cmp edx, [eax+0x4]
	jb MSG_ReadDeltaEntity_260
MSG_ReadDeltaEntity_250:
	xor eax, eax
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MSG_ReadDeltaEntity_40:
	mov eax, [esi+0x8]
	movzx eax, byte [eax+edx]
	jmp MSG_ReadDeltaEntity_270
MSG_ReadDeltaEntity_220:
	mov dword [esi], 0x1
	xor eax, eax
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MSG_ReadDeltaEntity_120:
	lea ecx, [edx*8]
	mov [ebp-0x3c], ecx
	mov [esi+0x20], ecx
	lea eax, [edx+0x1]
	mov [esi+0x1c], eax
	jmp MSG_ReadDeltaEntity_280
MSG_ReadDeltaEntity_210:
	add eax, 0x1
	jz MSG_ReadDeltaEntity_290
MSG_ReadDeltaEntity_200:
	mov dword [ebp-0x28], 0x0
	jmp MSG_ReadDeltaEntity_300
MSG_ReadDeltaEntity_90:
	add eax, 0x1
	jz MSG_ReadDeltaEntity_310
MSG_ReadDeltaEntity_80:
	mov eax, 0x1
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MSG_ReadDeltaEntity_240:
	mov edi, 0x1
MSG_ReadDeltaEntity_320:
	mov dword [esp+0x18], 0x0
	mov eax, [ebp-0x28]
	mov [esp+0x14], eax
	mov [esp+0x10], ebx
	mov edx, [ebp+0x14]
	mov [esp+0xc], edx
	mov ecx, [ebp+0x10]
	mov [esp+0x8], ecx
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], esi
	call MSG_ReadDeltaField
	add edi, 0x1
	add ebx, 0x10
	cmp [ebp-0x1c], edi
	jnz MSG_ReadDeltaEntity_320
	jmp MSG_ReadDeltaEntity_330
MSG_ReadDeltaEntity_230:
	mov eax, [ebx+0x4]
	mov ecx, [ebp+0x14]
	mov eax, [ecx+eax]
	mov [esp], eax
	call BG_GetEntityTypeName
	mov [esp+0xc], eax
	mov ebx, [ebp+0x18]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_3i_changed_ent_e
	mov dword [esp], 0xe
	call Com_Printf
	jmp MSG_ReadDeltaEntity_340
MSG_ReadDeltaEntity_170:
	mov dword [esi], 0x1
	mov dword [ebp-0x1c], 0xffffffff
	jmp MSG_ReadDeltaEntity_350
	nop


;MSG_ReadEntityIndex(msg_t*, int)
MSG_ReadEntityIndex:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x20]
	mov [ebp-0x3c], eax
	mov edi, eax
	and edi, 0x7
	jnz MSG_ReadEntityIndex_10
	mov edx, [ebx+0x1c]
	mov esi, [ebx+0x14]
	mov eax, esi
	add eax, [ebx+0x18]
	cmp edx, eax
	jge MSG_ReadEntityIndex_20
	lea ecx, [edx*8]
	mov [ebp-0x3c], ecx
	mov [ebx+0x20], ecx
	lea eax, [edx+0x1]
	mov [ebx+0x1c], eax
	mov edx, [ebp-0x3c]
	sar edx, 0x3
	cmp edx, esi
	jl MSG_ReadEntityIndex_30
MSG_ReadEntityIndex_70:
	sub edx, esi
	mov eax, [ebx+0xc]
	movzx eax, byte [eax+edx]
	add dword [ebp-0x3c], 0x1
	mov edx, [ebp-0x3c]
	mov [ebx+0x20], edx
	mov ecx, edi
	sar eax, cl
	test al, 0x1
	jz MSG_ReadEntityIndex_40
MSG_ReadEntityIndex_80:
	mov edx, msg_printEntityNums
	mov eax, [edx]
	cmp byte [eax+0xc], 0x0
	jnz MSG_ReadEntityIndex_50
MSG_ReadEntityIndex_180:
	mov edx, [ebx+0x24]
	add edx, 0x1
	mov [ebx+0x24], edx
MSG_ReadEntityIndex_190:
	mov ecx, msg_printEntityNums
	mov eax, [ecx]
	cmp byte [eax+0xc], 0x0
	jz MSG_ReadEntityIndex_60
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_read_entity_num_
	mov dword [esp], 0x10
	call Com_Printf
	mov edx, [ebx+0x24]
MSG_ReadEntityIndex_60:
	mov eax, edx
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MSG_ReadEntityIndex_10:
	mov esi, [ebx+0x14]
	mov edx, [ebp-0x3c]
	sar edx, 0x3
	cmp edx, esi
	jge MSG_ReadEntityIndex_70
MSG_ReadEntityIndex_30:
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	add dword [ebp-0x3c], 0x1
	mov edx, [ebp-0x3c]
	mov [ebx+0x20], edx
	mov ecx, edi
	sar eax, cl
	test al, 0x1
	jnz MSG_ReadEntityIndex_80
MSG_ReadEntityIndex_40:
	cmp dword [ebp+0xc], 0xa
	jz MSG_ReadEntityIndex_90
MSG_ReadEntityIndex_250:
	mov edx, msg_printEntityNums
	mov eax, [edx]
	cmp byte [eax+0xc], 0x0
	jnz MSG_ReadEntityIndex_100
MSG_ReadEntityIndex_230:
	mov eax, [ebp+0xc]
	test eax, eax
	jle MSG_ReadEntityIndex_110
	mov dword [ebp-0x24], 0x0
	xor edi, edi
	mov esi, [ebx+0x14]
	mov edx, [ebx+0x20]
	jmp MSG_ReadEntityIndex_120
MSG_ReadEntityIndex_160:
	sub edx, esi
	mov eax, [ebx+0xc]
	movzx eax, byte [eax+edx]
MSG_ReadEntityIndex_170:
	movzx ecx, byte [ebp-0x20]
	sar eax, cl
	and eax, 0x1
	mov ecx, edi
	shl eax, cl
	or [ebp-0x24], eax
	mov eax, [ebp-0x3c]
	add eax, 0x1
	mov [ebx+0x20], eax
	add edi, 0x1
	cmp [ebp+0xc], edi
	jz MSG_ReadEntityIndex_130
	mov edx, eax
MSG_ReadEntityIndex_120:
	mov [ebp-0x3c], edx
	and edx, 0x7
	mov [ebp-0x20], edx
	jnz MSG_ReadEntityIndex_140
	mov edx, [ebx+0x1c]
	mov eax, esi
	add eax, [ebx+0x18]
	cmp edx, eax
	jge MSG_ReadEntityIndex_150
	lea ecx, [edx*8]
	mov [ebp-0x3c], ecx
	mov [ebx+0x20], ecx
	lea eax, [edx+0x1]
	mov [ebx+0x1c], eax
MSG_ReadEntityIndex_140:
	mov edx, [ebp-0x3c]
	sar edx, 0x3
	cmp edx, esi
	jge MSG_ReadEntityIndex_160
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	jmp MSG_ReadEntityIndex_170
MSG_ReadEntityIndex_20:
	mov dword [ebx], 0x1
	mov edx, msg_printEntityNums
	mov eax, [edx]
	cmp byte [eax+0xc], 0x0
	jz MSG_ReadEntityIndex_180
MSG_ReadEntityIndex_50:
	mov dword [esp+0x4], _cstring_entity_num_1_bit
	mov dword [esp], 0x10
	call Com_Printf
	jmp MSG_ReadEntityIndex_180
MSG_ReadEntityIndex_110:
	mov dword [ebp-0x24], 0x0
MSG_ReadEntityIndex_130:
	mov edx, [ebp-0x24]
	mov [ebx+0x24], edx
	jmp MSG_ReadEntityIndex_190
MSG_ReadEntityIndex_90:
	mov edi, [ebp-0x3c]
	and edi, 0x7
	jnz MSG_ReadEntityIndex_200
	mov edx, [ebx+0x1c]
	mov eax, esi
	add eax, [ebx+0x18]
	cmp edx, eax
	jge MSG_ReadEntityIndex_210
	lea ecx, [edx*8]
	mov [ebx+0x20], ecx
	lea eax, [edx+0x1]
	mov [ebx+0x1c], eax
	jmp MSG_ReadEntityIndex_220
MSG_ReadEntityIndex_100:
	mov eax, [ebp+0xc]
	add eax, 0x2
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_entity_num_i_bit
	mov dword [esp], 0x10
	call Com_Printf
	jmp MSG_ReadEntityIndex_230
MSG_ReadEntityIndex_200:
	mov ecx, [ebx+0x20]
MSG_ReadEntityIndex_220:
	mov edx, ecx
	sar edx, 0x3
	cmp edx, esi
	jl MSG_ReadEntityIndex_240
	sub edx, esi
	mov eax, [ebx+0xc]
	movzx eax, byte [eax+edx]
MSG_ReadEntityIndex_320:
	add ecx, 0x1
	mov [ebx+0x20], ecx
	mov ecx, edi
	sar eax, cl
	test al, 0x1
	jnz MSG_ReadEntityIndex_250
	mov ecx, msg_printEntityNums
	mov eax, [ecx]
	cmp byte [eax+0xc], 0x0
	jnz MSG_ReadEntityIndex_260
MSG_ReadEntityIndex_340:
	mov eax, [ebx+0x24]
	mov [ebp-0x1c], eax
	mov dword [ebp-0x2c], 0x0
	xor edi, edi
	mov edx, [ebx+0x20]
	mov [ebp-0x3c], edx
	and edx, 0x7
	mov [ebp-0x28], edx
	jnz MSG_ReadEntityIndex_270
MSG_ReadEntityIndex_310:
	mov edx, [ebx+0x1c]
	mov eax, esi
	add eax, [ebx+0x18]
	cmp edx, eax
	jge MSG_ReadEntityIndex_280
	lea ecx, [edx*8]
	mov [ebp-0x3c], ecx
	mov [ebx+0x20], ecx
	lea eax, [edx+0x1]
	mov [ebx+0x1c], eax
MSG_ReadEntityIndex_270:
	mov edx, [ebp-0x3c]
	sar edx, 0x3
	cmp edx, esi
	jl MSG_ReadEntityIndex_290
	sub edx, esi
	mov eax, [ebx+0xc]
	movzx eax, byte [eax+edx]
MSG_ReadEntityIndex_330:
	movzx ecx, byte [ebp-0x28]
	sar eax, cl
	and eax, 0x1
	mov ecx, edi
	shl eax, cl
	or [ebp-0x2c], eax
	add dword [ebp-0x3c], 0x1
	mov eax, [ebp-0x3c]
	mov [ebx+0x20], eax
	add edi, 0x1
	cmp edi, 0x4
	jz MSG_ReadEntityIndex_300
	mov edx, eax
	mov [ebp-0x3c], edx
	and edx, 0x7
	mov [ebp-0x28], edx
	jnz MSG_ReadEntityIndex_270
	jmp MSG_ReadEntityIndex_310
MSG_ReadEntityIndex_240:
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	jmp MSG_ReadEntityIndex_320
MSG_ReadEntityIndex_210:
	mov dword [ebx], 0x1
	jmp MSG_ReadEntityIndex_250
MSG_ReadEntityIndex_290:
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	jmp MSG_ReadEntityIndex_330
MSG_ReadEntityIndex_280:
	mov dword [ebx], 0x1
	mov dword [ebp-0x2c], 0xffffffff
MSG_ReadEntityIndex_300:
	mov edx, [ebp-0x2c]
	add edx, [ebp-0x1c]
	mov [ebx+0x24], edx
	jmp MSG_ReadEntityIndex_190
MSG_ReadEntityIndex_150:
	mov dword [ebx], 0x1
	mov dword [ebp-0x24], 0xffffffff
	jmp MSG_ReadEntityIndex_130
MSG_ReadEntityIndex_260:
	mov dword [esp+0x8], 0x6
	mov dword [esp+0x4], _cstring_entity_num_i_bit1
	mov dword [esp], 0x10
	call Com_Printf
	mov esi, [ebx+0x14]
	jmp MSG_ReadEntityIndex_340
	nop


;GetMinBitCountForNum(unsigned int)
GetMinBitCountForNum:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov eax, [ebp+0x8]
	test eax, 0xffff0000
	jnz GetMinBitCountForNum_10
	mov ecx, 0x10
	mov esi, 0x10
	shl eax, cl
	test eax, 0xff000000
	jnz GetMinBitCountForNum_20
GetMinBitCountForNum_50:
	mov ebx, 0x8
	mov edx, 0x8
	lea esi, [edx+esi]
	mov ecx, ebx
	shl eax, cl
	test eax, 0xf0000000
	jnz GetMinBitCountForNum_30
GetMinBitCountForNum_60:
	mov ebx, 0x4
	mov edx, 0x4
	add esi, edx
	mov ecx, ebx
	shl eax, cl
	test eax, 0xc0000000
	jnz GetMinBitCountForNum_40
GetMinBitCountForNum_70:
	mov ebx, 0x2
	mov edx, 0x2
	lea edx, [esi+edx]
	mov ecx, ebx
	shl eax, cl
	mov ecx, eax
	not ecx
	shr ecx, 0x1f
	add edx, ecx
	shl eax, cl
	not eax
	shr eax, 0x1f
	add edx, eax
	mov eax, 0x20
	sub eax, edx
	pop ebx
	pop esi
	pop ebp
	ret
GetMinBitCountForNum_10:
	xor ecx, ecx
	xor esi, esi
	shl eax, cl
	test eax, 0xff000000
	jz GetMinBitCountForNum_50
GetMinBitCountForNum_20:
	xor ebx, ebx
	xor edx, edx
	lea esi, [edx+esi]
	mov ecx, ebx
	shl eax, cl
	test eax, 0xf0000000
	jz GetMinBitCountForNum_60
GetMinBitCountForNum_30:
	xor ebx, ebx
	xor edx, edx
	add esi, edx
	mov ecx, ebx
	shl eax, cl
	test eax, 0xc0000000
	jz GetMinBitCountForNum_70
GetMinBitCountForNum_40:
	xor ebx, ebx
	xor edx, edx
	lea edx, [esi+edx]
	mov ecx, ebx
	shl eax, cl
	mov ecx, eax
	not ecx
	shr ecx, 0x1f
	add edx, ecx
	shl eax, cl
	not eax
	shr eax, 0x1f
	add edx, eax
	mov eax, 0x20
	sub eax, edx
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;MSG_ReadBitsCompress(unsigned char const*, unsigned char*, int)
MSG_ReadBitsCompress:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0x10]
	shl esi, 0x3
	mov dword [ebp-0x20], 0x0
	test esi, esi
	jg MSG_ReadBitsCompress_10
	xor eax, eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MSG_ReadBitsCompress_10:
	mov ebx, [ebp+0xc]
	lea edi, [ebp-0x1c]
MSG_ReadBitsCompress_20:
	lea eax, [ebp-0x20]
	mov [esp+0xc], eax
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov eax, [msgHuff+0x8]
	mov [esp], eax
	call Huff_offsetReceive
	mov eax, [ebp-0x1c]
	mov [ebx], al
	add ebx, 0x1
	cmp esi, [ebp-0x20]
	jg MSG_ReadBitsCompress_20
	mov eax, ebx
	sub eax, [ebp+0xc]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;MSG_InitReadOnlySplit(msg_t*, unsigned char*, int, unsigned char*, int)
MSG_InitReadOnlySplit:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov edi, [ebp+0x10]
	mov eax, [msgInit]
	test eax, eax
	jnz MSG_InitReadOnlySplit_10
	mov dword [msgInit], 0x1
	mov dword [esp], msgHuff
	call Huff_Init
	call Sys_Milliseconds
	mov ebx, eax
	mov eax, msg_hData
	mov [esp+0x4], eax
	mov dword [esp], msgHuff
	call Huff_BuildFromData
	call Sys_Milliseconds
	sub eax, ebx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_huffman_took_d_m
	mov dword [esp], 0x10
	call Com_Printf
MSG_InitReadOnlySplit_10:
	mov dword [esi+0x4], 0x1
	mov eax, [ebp+0xc]
	mov [esi+0x8], eax
	mov edx, [ebp+0x18]
	lea eax, [edi+edx]
	mov [esi+0x10], eax
	mov [esi+0x14], edi
	mov eax, [ebp+0x14]
	mov [esi+0xc], eax
	mov [esi+0x18], edx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop
	add [eax], al


;MSG_SetDefaultUserCmd(playerState_s*, usercmd_s*)
MSG_SetDefaultUserCmd:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	cld
	mov ecx, 0x8
	xor eax, eax
	mov edi, ebx
	rep stosd
	mov eax, [esi+0xe8]
	mov [ebx+0x14], al
	mov eax, [esi+0xe0]
	mov [ebx+0x15], al
	mov edx, esi
	mov ecx, ebx
	mov edi, 0x2
	movss xmm2, dword [_float_182_04444885]
	movss xmm1, dword [_float_0_50000000]
MSG_SetDefaultUserCmd_10:
	movss xmm0, dword [edx+0x108]
	subss xmm0, [edx+0x64]
	mulss xmm0, xmm2
	addss xmm0, xmm1
	cvttss2si eax, xmm0
	and eax, 0xffff
	mov [ecx+0x8], eax
	add edx, 0x4
	add ecx, 0x4
	sub edi, 0x1
	jnz MSG_SetDefaultUserCmd_10
	test byte [esi+0x14], 0x4
	jz MSG_SetDefaultUserCmd_20
	mov eax, [esi+0xb0]
	test al, 0x8
	jz MSG_SetDefaultUserCmd_30
	or dword [ebx+0x4], 0x100
MSG_SetDefaultUserCmd_70:
	movss xmm0, dword [esi+0x5c]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jbe MSG_SetDefaultUserCmd_40
MSG_SetDefaultUserCmd_80:
	or dword [ebx+0x4], 0x80
MSG_SetDefaultUserCmd_90:
	ucomiss xmm1, [esi+0xf4]
	jp MSG_SetDefaultUserCmd_50
	jz MSG_SetDefaultUserCmd_60
MSG_SetDefaultUserCmd_50:
	or dword [ebx+0x4], 0x800
MSG_SetDefaultUserCmd_60:
	cmp word [esi+0xc], 0x0
	jns MSG_SetDefaultUserCmd_20
	or dword [ebx+0x4], 0x2
MSG_SetDefaultUserCmd_20:
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MSG_SetDefaultUserCmd_30:
	test al, 0x4
	jz MSG_SetDefaultUserCmd_70
	or dword [ebx+0x4], 0x200
	movss xmm0, dword [esi+0x5c]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	ja MSG_SetDefaultUserCmd_80
MSG_SetDefaultUserCmd_40:
	ucomiss xmm1, xmm0
	jbe MSG_SetDefaultUserCmd_90
	or dword [ebx+0x4], 0x40
	jmp MSG_SetDefaultUserCmd_90
	nop


;MSG_WriteBitsCompress(unsigned char, unsigned char const*, unsigned char*, int)
MSG_WriteBitsCompress:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x14]
	mov dword [ebp-0x1c], 0x0
	test eax, eax
	jnz MSG_WriteBitsCompress_10
	mov eax, [ebp-0x1c]
	add eax, 0x7
	sar eax, 0x3
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MSG_WriteBitsCompress_10:
	mov ebx, [ebp+0xc]
	lea edi, [ebp-0x1c]
	lea esi, [ebx+eax]
MSG_WriteBitsCompress_20:
	mov [esp+0xc], edi
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	movzx eax, byte [ebx]
	mov [esp+0x4], eax
	mov dword [esp], msgHuff
	call Huff_offsetTransmit
	add ebx, 0x1
	cmp ebx, esi
	jnz MSG_WriteBitsCompress_20
	mov eax, [ebp-0x1c]
	add eax, 0x7
	sar eax, 0x3
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;MSG_ReadDeltaUsercmdKey(msg_t*, int, usercmd_s const*, usercmd_s*)
MSG_ReadDeltaUsercmdKey:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x12c
	mov edx, [ebp+0x10]
	mov eax, [edx]
	mov ecx, [ebp+0x14]
	mov [ecx], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov eax, [edx+0xc]
	mov [ecx+0xc], eax
	mov eax, [edx+0x10]
	mov [ecx+0x10], eax
	mov eax, [edx+0x14]
	mov [ecx+0x14], eax
	mov eax, [edx+0x18]
	mov [ecx+0x18], eax
	mov eax, [edx+0x1c]
	mov [ecx+0x1c], eax
	mov ebx, [ebp+0x8]
	mov ebx, [ebx+0x20]
	mov [ebp-0xec], ebx
	and ebx, 0x7
	mov [ebp-0xdc], ebx
	jnz MSG_ReadDeltaUsercmdKey_10
	mov esi, [ebp+0x8]
	mov ebx, [esi+0x1c]
	mov eax, esi
	mov esi, [esi+0x18]
	mov edi, [eax+0x14]
	lea eax, [edi+esi]
	cmp ebx, eax
	jge MSG_ReadDeltaUsercmdKey_20
	lea ecx, [ebx*8]
	mov [ebp-0xec], ecx
	mov eax, [ebp+0x8]
	mov [eax+0x20], ecx
	add ebx, 0x1
	mov [eax+0x1c], ebx
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jl MSG_ReadDeltaUsercmdKey_30
MSG_ReadDeltaUsercmdKey_80:
	sub edx, edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edx, ecx
	add dword [ebp-0xec], 0x1
	mov ecx, [ebp-0xec]
	mov [edx+0x20], ecx
	movzx ecx, byte [ebp-0xdc]
	sar eax, cl
	test al, 0x1
	jz MSG_ReadDeltaUsercmdKey_40
MSG_ReadDeltaUsercmdKey_90:
	mov ebx, [edx+0x1c]
	mov eax, [ebp+0x10]
	mov ecx, [eax]
	lea eax, [edi+esi]
	cmp ebx, eax
	jge MSG_ReadDeltaUsercmdKey_50
MSG_ReadDeltaUsercmdKey_160:
	cmp ebx, edi
	jl MSG_ReadDeltaUsercmdKey_60
	mov edx, ebx
	sub edx, edi
	mov esi, [ebp+0x8]
	mov eax, [esi+0xc]
	movzx eax, byte [eax+edx]
MSG_ReadDeltaUsercmdKey_870:
	add ebx, 0x1
	mov [esi+0x1c], ebx
	jmp MSG_ReadDeltaUsercmdKey_70
MSG_ReadDeltaUsercmdKey_10:
	mov edx, [ebp+0x8]
	mov esi, [edx+0x18]
	mov edi, [edx+0x14]
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jge MSG_ReadDeltaUsercmdKey_80
MSG_ReadDeltaUsercmdKey_30:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	mov edx, ebx
	add dword [ebp-0xec], 0x1
	mov ecx, [ebp-0xec]
	mov [edx+0x20], ecx
	movzx ecx, byte [ebp-0xdc]
	sar eax, cl
	test al, 0x1
	jnz MSG_ReadDeltaUsercmdKey_90
MSG_ReadDeltaUsercmdKey_40:
	mov ebx, [ebp+0x8]
	mov ecx, [ebx+0x1c]
	lea eax, [ecx+0x4]
	mov [ebp-0xd8], eax
	lea eax, [edi+esi]
	cmp [ebp-0xd8], eax
	jg MSG_ReadDeltaUsercmdKey_100
	mov ebx, 0x1
MSG_ReadDeltaUsercmdKey_120:
	cmp edi, ecx
	jg MSG_ReadDeltaUsercmdKey_110
	mov edx, ecx
	sub edx, edi
	mov [ebp-0x11c], edx
	mov esi, [ebp+0x8]
	mov esi, [esi+0xc]
	mov [ebp-0xfc], esi
	movzx eax, byte [esi+edx]
MSG_ReadDeltaUsercmdKey_880:
	mov [ebx+ebp-0x1d], al
	add ecx, 0x1
	add ebx, 0x1
	cmp ebx, 0x5
	jnz MSG_ReadDeltaUsercmdKey_120
	mov ebx, [ebp-0xd8]
	mov ecx, [ebp+0x8]
	mov [ecx+0x1c], ebx
	mov eax, [ebp-0x1c]
	mov edx, [ebp+0x14]
	mov [edx], eax
MSG_ReadDeltaUsercmdKey_840:
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+0x20]
	mov [ebp-0xec], ecx
	mov esi, ecx
	and esi, 0x7
	jz MSG_ReadDeltaUsercmdKey_130
MSG_ReadDeltaUsercmdKey_170:
	mov ebx, [ebp+0x8]
	mov edi, [ebx+0x14]
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jge MSG_ReadDeltaUsercmdKey_140
MSG_ReadDeltaUsercmdKey_190:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	mov edx, ebx
	jmp MSG_ReadDeltaUsercmdKey_150
MSG_ReadDeltaUsercmdKey_20:
	mov edx, [ebp+0x8]
	mov dword [edx], 0x1
	mov eax, [ebp+0x10]
	mov ecx, [eax]
	lea eax, [edi+esi]
	cmp ebx, eax
	jl MSG_ReadDeltaUsercmdKey_160
MSG_ReadDeltaUsercmdKey_50:
	mov eax, [ebp+0x8]
	mov dword [eax], 0x1
	mov eax, 0xffffffff
MSG_ReadDeltaUsercmdKey_70:
	add eax, ecx
	mov edx, [ebp+0x14]
	mov [edx], eax
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+0x20]
	mov [ebp-0xec], ecx
	mov esi, ecx
	and esi, 0x7
	jnz MSG_ReadDeltaUsercmdKey_170
MSG_ReadDeltaUsercmdKey_130:
	mov ebx, [ebp+0x8]
	mov edx, [ebx+0x1c]
	mov edi, [ebx+0x14]
	mov eax, edi
	add eax, [ebx+0x18]
	cmp edx, eax
	jge MSG_ReadDeltaUsercmdKey_180
	mov ecx, ebx
	lea eax, [edx*8]
	mov [ebp-0xec], eax
	mov [ebx+0x20], eax
	lea ebx, [edx+0x1]
	mov [ecx+0x1c], ebx
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jl MSG_ReadDeltaUsercmdKey_190
MSG_ReadDeltaUsercmdKey_140:
	sub edx, edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edx, ecx
MSG_ReadDeltaUsercmdKey_150:
	add dword [ebp-0xec], 0x1
	mov ecx, [ebp-0xec]
	mov [edx+0x20], ecx
	mov edx, eax
	mov ecx, esi
	sar edx, cl
	and edx, 0x1
MSG_ReadDeltaUsercmdKey_2340:
	mov eax, [ebp+0xc]
	mov ebx, kbitmask
	and eax, [ebx+0x4]
	cmp eax, edx
	jz MSG_ReadDeltaUsercmdKey_200
	mov esi, [ebp+0x14]
	and dword [esi+0x4], 0xfffffffe
	mov eax, [ebp+0x8]
	mov eax, [eax+0x20]
	mov [ebp-0xec], eax
	mov esi, eax
	and esi, 0x7
	jnz MSG_ReadDeltaUsercmdKey_210
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x1c]
	mov edi, [ecx+0x14]
	mov eax, edi
	add eax, [ecx+0x18]
	cmp edx, eax
	jge MSG_ReadDeltaUsercmdKey_220
	lea ebx, [edx*8]
	mov [ebp-0xec], ebx
	mov [ecx+0x20], ebx
	lea ebx, [edx+0x1]
	mov [ecx+0x1c], ebx
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jl MSG_ReadDeltaUsercmdKey_230
MSG_ReadDeltaUsercmdKey_470:
	sub edx, edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edx, ecx
MSG_ReadDeltaUsercmdKey_480:
	add dword [ebp-0xec], 0x1
	mov ecx, [ebp-0xec]
	mov [edx+0x20], ecx
	mov edx, eax
	mov ecx, esi
	sar edx, cl
	and edx, 0x1
MSG_ReadDeltaUsercmdKey_2360:
	mov eax, [ebp+0xc]
	mov ebx, kbitmask
	and eax, [ebx+0x4]
	cmp eax, edx
	jnz MSG_ReadDeltaUsercmdKey_240
	mov eax, [ebp+0xc]
	mov esi, [ebp+0x14]
	xor eax, [esi]
	mov [ebp-0x2c], eax
	mov esi, [esi+0x4]
	mov ecx, [ebp-0xec]
	and ecx, 0x7
	mov [ebp-0xd4], ecx
	jnz MSG_ReadDeltaUsercmdKey_250
	mov ebx, [ebp+0x8]
	mov edx, [ebx+0x1c]
	mov eax, edi
	add eax, [ebx+0x18]
	cmp edx, eax
	jge MSG_ReadDeltaUsercmdKey_260
	mov ecx, ebx
	lea eax, [edx*8]
	mov [ebp-0xec], eax
	mov [ebx+0x20], eax
	lea ebx, [edx+0x1]
	mov [ecx+0x1c], ebx
MSG_ReadDeltaUsercmdKey_250:
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jge MSG_ReadDeltaUsercmdKey_270
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	movzx eax, byte [eax+edx]
	mov ebx, ecx
MSG_ReadDeltaUsercmdKey_850:
	add dword [ebp-0xec], 0x1
	mov edx, [ebp-0xec]
	mov [ebx+0x20], edx
	mov edx, eax
	movzx ecx, byte [ebp-0xd4]
	sar edx, cl
	and edx, 0x1
MSG_ReadDeltaUsercmdKey_2400:
	mov eax, [ebp-0x2c]
	mov ebx, kbitmask
	and eax, [ebx+0x4]
	xor eax, edx
	or esi, eax
	mov eax, [ebp+0x14]
	mov [eax+0x4], esi
	mov edx, [ebp+0x10]
	mov edx, [edx+0x8]
	mov [ebp-0xd0], edx
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+0x20]
	mov [ebp-0xec], ecx
	and ecx, 0x7
	mov [ebp-0xcc], ecx
	jnz MSG_ReadDeltaUsercmdKey_280
	mov esi, [ebp+0x8]
	mov ebx, [esi+0x1c]
	mov eax, esi
	mov esi, [esi+0x18]
	mov edi, [eax+0x14]
	lea eax, [edi+esi]
	cmp ebx, eax
	jl MSG_ReadDeltaUsercmdKey_290
	mov edx, [ebp+0x8]
	mov dword [edx], 0x1
	mov ecx, ebx
	lea edx, [ebx+0x2]
	mov [ebp-0xc8], edx
	lea eax, [edi+esi]
	cmp edx, eax
	jg MSG_ReadDeltaUsercmdKey_300
MSG_ReadDeltaUsercmdKey_1590:
	mov ebx, 0x1
MSG_ReadDeltaUsercmdKey_320:
	cmp edi, ecx
	jg MSG_ReadDeltaUsercmdKey_310
	mov esi, ecx
	sub esi, edi
	mov [ebp-0x11c], esi
	mov eax, [ebp+0x8]
	mov eax, [eax+0xc]
	movzx eax, byte [eax+esi]
MSG_ReadDeltaUsercmdKey_1740:
	mov [ebx+ebp-0x1d], al
	add ecx, 0x1
	add ebx, 0x1
	cmp ebx, 0x3
	jnz MSG_ReadDeltaUsercmdKey_320
	movzx eax, word [ebp-0x1c]
	mov ecx, [ebp-0xc8]
	mov edx, [ebp+0x8]
	mov [edx+0x1c], ecx
MSG_ReadDeltaUsercmdKey_1600:
	xor ax, [ebp-0x2c]
	cwde
	mov [ebp-0xd0], eax
MSG_ReadDeltaUsercmdKey_1580:
	movzx eax, word [ebp-0xd0]
	mov esi, [ebp+0x14]
	mov [esi+0x8], eax
	mov eax, [ebp+0x10]
	mov eax, [eax+0xc]
	mov [ebp-0xc4], eax
	mov edx, [ebp+0x8]
	mov edx, [edx+0x20]
	mov [ebp-0xec], edx
	and edx, 0x7
	mov [ebp-0xc0], edx
	jnz MSG_ReadDeltaUsercmdKey_330
	mov ecx, [ebp+0x8]
	mov ebx, [ecx+0x1c]
	mov esi, [ecx+0x18]
	mov edi, [ecx+0x14]
	lea eax, [edi+esi]
	cmp ebx, eax
	jl MSG_ReadDeltaUsercmdKey_340
	mov dword [ecx], 0x1
	mov ecx, ebx
	lea edx, [ebx+0x2]
	mov [ebp-0xbc], edx
	lea eax, [edi+esi]
	cmp edx, eax
	jg MSG_ReadDeltaUsercmdKey_350
MSG_ReadDeltaUsercmdKey_1500:
	mov ebx, 0x1
MSG_ReadDeltaUsercmdKey_370:
	cmp edi, ecx
	jg MSG_ReadDeltaUsercmdKey_360
	mov esi, ecx
	sub esi, edi
	mov [ebp-0x11c], esi
	mov eax, [ebp+0x8]
	mov eax, [eax+0xc]
	movzx eax, byte [eax+esi]
MSG_ReadDeltaUsercmdKey_1730:
	mov [ebx+ebp-0x1d], al
	add ecx, 0x1
	add ebx, 0x1
	cmp ebx, 0x3
	jnz MSG_ReadDeltaUsercmdKey_370
	movzx eax, word [ebp-0x1c]
	mov ecx, [ebp-0xbc]
	mov edx, [ebp+0x8]
	mov [edx+0x1c], ecx
MSG_ReadDeltaUsercmdKey_1510:
	xor ax, [ebp-0x2c]
	cwde
	mov [ebp-0xc4], eax
MSG_ReadDeltaUsercmdKey_1490:
	movzx eax, word [ebp-0xc4]
	mov esi, [ebp+0x14]
	mov [esi+0xc], eax
	mov eax, [ebp+0x10]
	movzx edx, byte [eax+0x17]
	movzx eax, byte [eax+0x16]
	cmp al, 0xa
	jle MSG_ReadDeltaUsercmdKey_380
	mov esi, 0x1
MSG_ReadDeltaUsercmdKey_1610:
	cmp dl, 0xa
	jle MSG_ReadDeltaUsercmdKey_390
	or esi, 0x4
MSG_ReadDeltaUsercmdKey_1560:
	mov ebx, [ebp+0x8]
	mov ebx, [ebx+0x20]
	mov [ebp-0xec], ebx
	and ebx, 0x7
	mov [ebp-0xb8], ebx
	jnz MSG_ReadDeltaUsercmdKey_400
	mov eax, [ebp+0x8]
	mov edx, [eax+0x1c]
	mov edi, [eax+0x14]
	mov eax, edi
	mov ecx, [ebp+0x8]
	add eax, [ecx+0x18]
	cmp edx, eax
	jl MSG_ReadDeltaUsercmdKey_410
	mov dword [ecx], 0x1
MSG_ReadDeltaUsercmdKey_1530:
	mov dword [ebp-0xb4], 0x0
	xor esi, esi
MSG_ReadDeltaUsercmdKey_440:
	mov eax, [ebp-0xec]
	and eax, 0x7
	mov [ebp-0xb0], eax
	jz MSG_ReadDeltaUsercmdKey_420
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jl MSG_ReadDeltaUsercmdKey_430
MSG_ReadDeltaUsercmdKey_900:
	sub edx, edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov ebx, ecx
MSG_ReadDeltaUsercmdKey_910:
	movzx ecx, byte [ebp-0xb0]
	sar eax, cl
	and eax, 0x1
	mov ecx, esi
	shl eax, cl
	or [ebp-0xb4], eax
	add dword [ebp-0xec], 0x1
	mov eax, [ebp-0xec]
	mov [ebx+0x20], eax
	add esi, 0x1
	cmp esi, 0x4
	jnz MSG_ReadDeltaUsercmdKey_440
	mov eax, [ebp-0xb4]
MSG_ReadDeltaUsercmdKey_2380:
	mov edx, [ebp-0x2c]
	mov ecx, kbitmask
	and edx, [ecx+0x10]
	xor edx, eax
	mov ecx, [ebp+0x14]
	add ecx, 0x17
	test dl, 0x1
	jz MSG_ReadDeltaUsercmdKey_450
MSG_ReadDeltaUsercmdKey_1540:
	mov ebx, [ebp+0x14]
	mov byte [ebx+0x16], 0x7f
MSG_ReadDeltaUsercmdKey_1550:
	test dl, 0x4
	jz MSG_ReadDeltaUsercmdKey_460
	mov byte [ecx], 0x7f
MSG_ReadDeltaUsercmdKey_200:
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MSG_ReadDeltaUsercmdKey_210:
	mov edx, [ebp+0x8]
	mov edi, [edx+0x14]
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jge MSG_ReadDeltaUsercmdKey_470
MSG_ReadDeltaUsercmdKey_230:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	mov edx, ebx
	jmp MSG_ReadDeltaUsercmdKey_480
MSG_ReadDeltaUsercmdKey_240:
	mov eax, [ebp+0x14]
	mov esi, [eax+0x4]
	mov edx, [ebp-0xec]
	and edx, 0x7
	mov [ebp-0xac], edx
	jnz MSG_ReadDeltaUsercmdKey_490
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x1c]
	mov eax, edi
	add eax, [ecx+0x18]
	cmp edx, eax
	jge MSG_ReadDeltaUsercmdKey_500
	lea ebx, [edx*8]
	mov [ebp-0xec], ebx
	mov [ecx+0x20], ebx
	lea ebx, [edx+0x1]
	mov [ecx+0x1c], ebx
MSG_ReadDeltaUsercmdKey_490:
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jl MSG_ReadDeltaUsercmdKey_510
	sub edx, edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edx, ecx
MSG_ReadDeltaUsercmdKey_860:
	add dword [ebp-0xec], 0x1
	mov ecx, [ebp-0xec]
	mov [edx+0x20], ecx
	mov edx, eax
	movzx ecx, byte [ebp-0xac]
	sar edx, cl
	and edx, 0x1
MSG_ReadDeltaUsercmdKey_2390:
	mov eax, [ebp+0xc]
	mov ebx, kbitmask
	and eax, [ebx+0x4]
	xor eax, edx
	or esi, eax
	mov eax, [ebp+0x14]
	mov [eax+0x4], esi
	mov edx, [ebp+0x10]
	mov edx, [edx+0x8]
	mov [ebp-0xa8], edx
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+0x20]
	mov [ebp-0xec], ecx
	and ecx, 0x7
	mov [ebp-0xa4], ecx
	jnz MSG_ReadDeltaUsercmdKey_520
	mov esi, [ebp+0x8]
	mov ebx, [esi+0x1c]
	mov eax, esi
	mov esi, [esi+0x18]
	mov edi, [eax+0x14]
	lea eax, [edi+esi]
	cmp ebx, eax
	jl MSG_ReadDeltaUsercmdKey_530
	mov edx, [ebp+0x8]
	mov dword [edx], 0x1
	mov ecx, ebx
	lea edx, [ebx+0x2]
	mov [ebp-0xa0], edx
	lea eax, [edi+esi]
	cmp edx, eax
	jg MSG_ReadDeltaUsercmdKey_540
MSG_ReadDeltaUsercmdKey_970:
	mov ebx, 0x1
MSG_ReadDeltaUsercmdKey_560:
	cmp edi, ecx
	jg MSG_ReadDeltaUsercmdKey_550
	mov esi, ecx
	sub esi, edi
	mov [ebp-0x11c], esi
	mov eax, [ebp+0x8]
	mov eax, [eax+0xc]
	movzx eax, byte [eax+esi]
MSG_ReadDeltaUsercmdKey_1770:
	mov [ebx+ebp-0x1d], al
	add ecx, 0x1
	add ebx, 0x1
	cmp ebx, 0x3
	jnz MSG_ReadDeltaUsercmdKey_560
	movzx eax, word [ebp-0x1c]
	mov ecx, [ebp-0xa0]
	mov edx, [ebp+0x8]
	mov [edx+0x1c], ecx
MSG_ReadDeltaUsercmdKey_980:
	xor ax, [ebp+0xc]
	cwde
	mov [ebp-0xa8], eax
MSG_ReadDeltaUsercmdKey_960:
	movzx eax, word [ebp-0xa8]
	mov esi, [ebp+0x14]
	mov [esi+0x8], eax
	mov eax, [ebp+0x10]
	mov eax, [eax+0xc]
	mov [ebp-0x9c], eax
	mov edx, [ebp+0x8]
	mov edx, [edx+0x20]
	mov [ebp-0xec], edx
	and edx, 0x7
	mov [ebp-0x98], edx
	jnz MSG_ReadDeltaUsercmdKey_570
	mov ecx, [ebp+0x8]
	mov ebx, [ecx+0x1c]
	mov esi, [ecx+0x18]
	mov edi, [ecx+0x14]
	lea eax, [edi+esi]
	cmp ebx, eax
	jl MSG_ReadDeltaUsercmdKey_580
	mov dword [ecx], 0x1
	mov ecx, ebx
	lea edx, [ebx+0x2]
	mov [ebp-0x94], edx
	lea eax, [edi+esi]
	cmp edx, eax
	jg MSG_ReadDeltaUsercmdKey_590
MSG_ReadDeltaUsercmdKey_1420:
	mov ebx, 0x1
MSG_ReadDeltaUsercmdKey_610:
	cmp edi, ecx
	jg MSG_ReadDeltaUsercmdKey_600
	mov esi, ecx
	sub esi, edi
	mov [ebp-0x11c], esi
	mov eax, [ebp+0x8]
	mov eax, [eax+0xc]
	movzx eax, byte [eax+esi]
MSG_ReadDeltaUsercmdKey_1750:
	mov [ebx+ebp-0x1d], al
	add ecx, 0x1
	add ebx, 0x1
	cmp ebx, 0x3
	jnz MSG_ReadDeltaUsercmdKey_610
	movzx eax, word [ebp-0x1c]
	mov ecx, [ebp-0x94]
	mov edx, [ebp+0x8]
	mov [edx+0x1c], ecx
MSG_ReadDeltaUsercmdKey_1430:
	xor ax, [ebp+0xc]
	cwde
	mov [ebp-0x9c], eax
MSG_ReadDeltaUsercmdKey_1410:
	movzx eax, word [ebp-0x9c]
	mov esi, [ebp+0x14]
	mov [esi+0xc], eax
	mov eax, [ebp+0x10]
	movzx edx, byte [eax+0x17]
	movzx eax, byte [eax+0x16]
	cmp al, 0xa
	jle MSG_ReadDeltaUsercmdKey_620
	mov esi, 0x1
MSG_ReadDeltaUsercmdKey_1390:
	cmp dl, 0xa
	jle MSG_ReadDeltaUsercmdKey_630
	or esi, 0x4
MSG_ReadDeltaUsercmdKey_1380:
	mov ebx, [ebp+0x8]
	mov ebx, [ebx+0x20]
	mov [ebp-0xec], ebx
	and ebx, 0x7
	mov [ebp-0x90], ebx
	jnz MSG_ReadDeltaUsercmdKey_640
	mov eax, [ebp+0x8]
	mov edx, [eax+0x1c]
	mov edi, [eax+0x14]
	mov eax, edi
	mov ecx, [ebp+0x8]
	add eax, [ecx+0x18]
	cmp edx, eax
	jl MSG_ReadDeltaUsercmdKey_650
	mov dword [ecx], 0x1
MSG_ReadDeltaUsercmdKey_1340:
	mov dword [ebp-0x8c], 0x0
	xor esi, esi
MSG_ReadDeltaUsercmdKey_680:
	mov eax, [ebp-0xec]
	and eax, 0x7
	mov [ebp-0x88], eax
	jz MSG_ReadDeltaUsercmdKey_660
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jl MSG_ReadDeltaUsercmdKey_670
MSG_ReadDeltaUsercmdKey_930:
	sub edx, edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov ebx, ecx
MSG_ReadDeltaUsercmdKey_940:
	movzx ecx, byte [ebp-0x88]
	sar eax, cl
	and eax, 0x1
	mov ecx, esi
	shl eax, cl
	or [ebp-0x8c], eax
	add dword [ebp-0xec], 0x1
	mov eax, [ebp-0xec]
	mov [ebx+0x20], eax
	add esi, 0x1
	cmp esi, 0x4
	jnz MSG_ReadDeltaUsercmdKey_680
	mov eax, [ebp-0x8c]
MSG_ReadDeltaUsercmdKey_2370:
	mov edx, [ebp+0xc]
	mov ecx, kbitmask
	and edx, [ecx+0x10]
	xor edx, eax
	mov ecx, [ebp+0x14]
	add ecx, 0x17
	test dl, 0x1
	jz MSG_ReadDeltaUsercmdKey_690
MSG_ReadDeltaUsercmdKey_1350:
	mov ebx, [ebp+0x14]
	mov byte [ebx+0x16], 0x7f
	test dl, 0x4
	jz MSG_ReadDeltaUsercmdKey_700
MSG_ReadDeltaUsercmdKey_1360:
	mov byte [ecx], 0x7f
MSG_ReadDeltaUsercmdKey_1370:
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x14]
	xor edx, [eax]
	mov [ebp-0x30], edx
	mov ecx, [ebp+0x10]
	mov ecx, [ecx+0x10]
	mov [ebp-0x84], ecx
	mov ebx, [ebp+0x8]
	mov ebx, [ebx+0x20]
	mov [ebp-0xec], ebx
	and ebx, 0x7
	mov [ebp-0x80], ebx
	jnz MSG_ReadDeltaUsercmdKey_710
	mov esi, [ebp+0x8]
	mov ebx, [esi+0x1c]
	mov eax, esi
	mov esi, [esi+0x18]
	mov edi, [eax+0x14]
	lea eax, [edi+esi]
	cmp ebx, eax
	jl MSG_ReadDeltaUsercmdKey_720
	mov edx, [ebp+0x8]
	mov dword [edx], 0x1
	mov ecx, ebx
	lea edx, [ebx+0x2]
	mov [ebp-0x7c], edx
	lea eax, [edi+esi]
	cmp edx, eax
	jg MSG_ReadDeltaUsercmdKey_730
MSG_ReadDeltaUsercmdKey_1460:
	mov ebx, 0x1
MSG_ReadDeltaUsercmdKey_750:
	cmp edi, ecx
	jg MSG_ReadDeltaUsercmdKey_740
	mov esi, ecx
	sub esi, edi
	mov [ebp-0x11c], esi
	mov eax, [ebp+0x8]
	mov eax, [eax+0xc]
	movzx eax, byte [eax+esi]
MSG_ReadDeltaUsercmdKey_1760:
	mov [ebx+ebp-0x1d], al
	add ecx, 0x1
	add ebx, 0x1
	cmp ebx, 0x3
	jnz MSG_ReadDeltaUsercmdKey_750
	movzx eax, word [ebp-0x1c]
	mov ecx, [ebp-0x7c]
	mov edx, [ebp+0x8]
	mov [edx+0x1c], ecx
MSG_ReadDeltaUsercmdKey_1470:
	xor ax, [ebp-0x30]
	cwde
	mov [ebp-0x84], eax
MSG_ReadDeltaUsercmdKey_1450:
	movzx eax, word [ebp-0x84]
	mov esi, [ebp+0x14]
	mov [esi+0x10], eax
	mov eax, [esi+0x4]
	and eax, 0x1
	mov [ebp-0xe0], eax
	mov [esi+0x4], eax
	mov edx, [ebp+0x10]
	mov esi, [edx+0x4]
	sar esi, 1
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+0x20]
	mov [ebp-0xec], ecx
	and ecx, 0x7
	mov [ebp-0x78], ecx
	jnz MSG_ReadDeltaUsercmdKey_760
	mov ebx, [ebp+0x8]
	mov edx, [ebx+0x1c]
	mov edi, [ebx+0x14]
	mov eax, edi
	add eax, [ebx+0x18]
	cmp edx, eax
	jl MSG_ReadDeltaUsercmdKey_770
	mov dword [ebx], 0x1
MSG_ReadDeltaUsercmdKey_1000:
	mov dword [ebp-0x74], 0x0
	xor esi, esi
	jmp MSG_ReadDeltaUsercmdKey_780
MSG_ReadDeltaUsercmdKey_820:
	sub edx, edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov ebx, ecx
MSG_ReadDeltaUsercmdKey_830:
	movzx ecx, byte [ebp-0x70]
	sar eax, cl
	and eax, 0x1
	mov ecx, esi
	shl eax, cl
	or [ebp-0x74], eax
	add dword [ebp-0xec], 0x1
	mov eax, [ebp-0xec]
	mov [ebx+0x20], eax
	add esi, 0x1
	cmp esi, 0x14
	jz MSG_ReadDeltaUsercmdKey_790
MSG_ReadDeltaUsercmdKey_780:
	mov eax, [ebp-0xec]
	and eax, 0x7
	mov [ebp-0x70], eax
	jnz MSG_ReadDeltaUsercmdKey_800
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x1c]
	mov eax, edi
	add eax, [ecx+0x18]
	cmp edx, eax
	jge MSG_ReadDeltaUsercmdKey_810
	lea ebx, [edx*8]
	mov [ebp-0xec], ebx
	mov [ecx+0x20], ebx
	lea ebx, [edx+0x1]
	mov [ecx+0x1c], ebx
MSG_ReadDeltaUsercmdKey_800:
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jge MSG_ReadDeltaUsercmdKey_820
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	jmp MSG_ReadDeltaUsercmdKey_830
MSG_ReadDeltaUsercmdKey_100:
	mov dword [ebx], 0x1
	mov eax, 0xffffffff
	mov edx, [ebp+0x14]
	mov [edx], eax
	jmp MSG_ReadDeltaUsercmdKey_840
MSG_ReadDeltaUsercmdKey_270:
	sub edx, edi
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0xc]
	movzx eax, byte [eax+edx]
	jmp MSG_ReadDeltaUsercmdKey_850
MSG_ReadDeltaUsercmdKey_510:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	mov edx, ebx
	jmp MSG_ReadDeltaUsercmdKey_860
MSG_ReadDeltaUsercmdKey_60:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x8]
	movzx eax, byte [eax+ebx]
	mov esi, edx
	jmp MSG_ReadDeltaUsercmdKey_870
MSG_ReadDeltaUsercmdKey_110:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x8]
	movzx eax, byte [ecx+eax]
	jmp MSG_ReadDeltaUsercmdKey_880
MSG_ReadDeltaUsercmdKey_420:
	mov ebx, [ebp+0x8]
	mov edx, [ebx+0x1c]
	mov eax, edi
	add eax, [ebx+0x18]
	cmp edx, eax
	jge MSG_ReadDeltaUsercmdKey_890
	lea eax, [edx*8]
	mov [ebp-0xec], eax
	mov [ebx+0x20], eax
	lea ebx, [edx+0x1]
	mov edx, [ebp+0x8]
	mov [edx+0x1c], ebx
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jge MSG_ReadDeltaUsercmdKey_900
MSG_ReadDeltaUsercmdKey_430:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	jmp MSG_ReadDeltaUsercmdKey_910
MSG_ReadDeltaUsercmdKey_660:
	mov ebx, [ebp+0x8]
	mov edx, [ebx+0x1c]
	mov eax, edi
	add eax, [ebx+0x18]
	cmp edx, eax
	jge MSG_ReadDeltaUsercmdKey_920
	lea eax, [edx*8]
	mov [ebp-0xec], eax
	mov [ebx+0x20], eax
	lea ebx, [edx+0x1]
	mov edx, [ebp+0x8]
	mov [edx+0x1c], ebx
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jge MSG_ReadDeltaUsercmdKey_930
MSG_ReadDeltaUsercmdKey_670:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	jmp MSG_ReadDeltaUsercmdKey_940
MSG_ReadDeltaUsercmdKey_520:
	mov eax, [ebp+0x8]
	mov edi, [eax+0x14]
MSG_ReadDeltaUsercmdKey_2060:
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jl MSG_ReadDeltaUsercmdKey_950
	sub edx, edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov esi, ecx
MSG_ReadDeltaUsercmdKey_1630:
	add dword [ebp-0xec], 0x1
	mov edx, [ebp-0xec]
	mov [esi+0x20], edx
	movzx ecx, byte [ebp-0xa4]
	sar eax, cl
	test al, 0x1
	jz MSG_ReadDeltaUsercmdKey_960
	mov ebx, [esi+0x1c]
	mov eax, [ebp+0x8]
	mov esi, [eax+0x18]
	mov ecx, ebx
	lea edx, [ebx+0x2]
	mov [ebp-0xa0], edx
	lea eax, [edi+esi]
	cmp edx, eax
	jle MSG_ReadDeltaUsercmdKey_970
MSG_ReadDeltaUsercmdKey_540:
	mov ebx, [ebp+0x8]
	mov dword [ebx], 0x1
	mov eax, 0xffffffff
	jmp MSG_ReadDeltaUsercmdKey_980
MSG_ReadDeltaUsercmdKey_760:
	mov ebx, [ebp+0x8]
	mov edi, [ebx+0x14]
MSG_ReadDeltaUsercmdKey_2090:
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jl MSG_ReadDeltaUsercmdKey_990
	sub edx, edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edx, ecx
MSG_ReadDeltaUsercmdKey_1700:
	add dword [ebp-0xec], 0x1
	mov ecx, [ebp-0xec]
	mov [edx+0x20], ecx
	movzx ecx, byte [ebp-0x78]
	sar eax, cl
	test al, 0x1
	jnz MSG_ReadDeltaUsercmdKey_1000
MSG_ReadDeltaUsercmdKey_1620:
	lea eax, [esi+esi]
	or [ebp-0xe0], eax
	mov ebx, [ebp-0xe0]
	mov ecx, [ebp+0x14]
	mov [ecx+0x4], ebx
	mov eax, [ebp+0x10]
	movzx esi, byte [eax+0x14]
	mov edx, [ebp+0x8]
	mov edx, [edx+0x20]
	mov [ebp-0xec], edx
	and edx, 0x7
	mov [ebp-0x6c], edx
	jnz MSG_ReadDeltaUsercmdKey_1010
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x1c]
	mov edi, [ecx+0x14]
	mov eax, edi
	add eax, [ecx+0x18]
	cmp edx, eax
	jl MSG_ReadDeltaUsercmdKey_1020
	mov dword [ecx], 0x1
MSG_ReadDeltaUsercmdKey_1320:
	mov dword [ebp-0x68], 0x0
	xor esi, esi
	jmp MSG_ReadDeltaUsercmdKey_1030
MSG_ReadDeltaUsercmdKey_1070:
	sub edx, edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov ebx, ecx
MSG_ReadDeltaUsercmdKey_1080:
	movzx ecx, byte [ebp-0x64]
	sar eax, cl
	and eax, 0x1
	mov ecx, esi
	shl eax, cl
	or [ebp-0x68], eax
	add dword [ebp-0xec], 0x1
	mov eax, [ebp-0xec]
	mov [ebx+0x20], eax
	add esi, 0x1
	cmp esi, 0x7
	jz MSG_ReadDeltaUsercmdKey_1040
MSG_ReadDeltaUsercmdKey_1030:
	mov eax, [ebp-0xec]
	and eax, 0x7
	mov [ebp-0x64], eax
	jnz MSG_ReadDeltaUsercmdKey_1050
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x1c]
	mov eax, edi
	add eax, [ecx+0x18]
	cmp edx, eax
	jge MSG_ReadDeltaUsercmdKey_1060
	lea ebx, [edx*8]
	mov [ebp-0xec], ebx
	mov [ecx+0x20], ebx
	lea ebx, [edx+0x1]
	mov [ecx+0x1c], ebx
MSG_ReadDeltaUsercmdKey_1050:
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jge MSG_ReadDeltaUsercmdKey_1070
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	jmp MSG_ReadDeltaUsercmdKey_1080
MSG_ReadDeltaUsercmdKey_1040:
	mov eax, [ebp-0x68]
MSG_ReadDeltaUsercmdKey_2330:
	mov esi, [ebp-0x30]
	mov edx, kbitmask
	and esi, [edx+0x1c]
	xor esi, eax
MSG_ReadDeltaUsercmdKey_1310:
	mov ecx, esi
	mov ebx, [ebp+0x14]
	mov [ebx+0x14], cl
	mov eax, [ebp+0x10]
	movzx esi, byte [eax+0x15]
	mov edx, [ebp+0x8]
	mov edx, [edx+0x20]
	mov [ebp-0xec], edx
	and edx, 0x7
	mov [ebp-0x60], edx
	jnz MSG_ReadDeltaUsercmdKey_1090
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x1c]
	mov edi, [ecx+0x14]
	mov eax, edi
	add eax, [ecx+0x18]
	cmp edx, eax
	jl MSG_ReadDeltaUsercmdKey_1100
	mov dword [ecx], 0x1
MSG_ReadDeltaUsercmdKey_1290:
	mov dword [ebp-0x5c], 0x0
	xor esi, esi
	jmp MSG_ReadDeltaUsercmdKey_1110
MSG_ReadDeltaUsercmdKey_1150:
	sub edx, edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov ebx, ecx
MSG_ReadDeltaUsercmdKey_1160:
	movzx ecx, byte [ebp-0x58]
	sar eax, cl
	and eax, 0x1
	mov ecx, esi
	shl eax, cl
	or [ebp-0x5c], eax
	add dword [ebp-0xec], 0x1
	mov eax, [ebp-0xec]
	mov [ebx+0x20], eax
	add esi, 0x1
	cmp esi, 0x7
	jz MSG_ReadDeltaUsercmdKey_1120
MSG_ReadDeltaUsercmdKey_1110:
	mov eax, [ebp-0xec]
	and eax, 0x7
	mov [ebp-0x58], eax
	jnz MSG_ReadDeltaUsercmdKey_1130
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x1c]
	mov eax, edi
	add eax, [ecx+0x18]
	cmp edx, eax
	jge MSG_ReadDeltaUsercmdKey_1140
	lea ebx, [edx*8]
	mov [ebp-0xec], ebx
	mov [ecx+0x20], ebx
	lea ebx, [edx+0x1]
	mov [ecx+0x1c], ebx
MSG_ReadDeltaUsercmdKey_1130:
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jge MSG_ReadDeltaUsercmdKey_1150
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	jmp MSG_ReadDeltaUsercmdKey_1160
MSG_ReadDeltaUsercmdKey_1120:
	mov eax, [ebp-0x5c]
MSG_ReadDeltaUsercmdKey_2320:
	mov esi, [ebp-0x30]
	mov edx, kbitmask
	and esi, [edx+0x1c]
	xor esi, eax
MSG_ReadDeltaUsercmdKey_1280:
	mov ecx, esi
	mov ebx, [ebp+0x14]
	mov [ebx+0x15], cl
	mov eax, [ebx+0x4]
	test eax, 0x10000
	jz MSG_ReadDeltaUsercmdKey_1170
	mov eax, [ebp+0x10]
	movsx eax, byte [eax+0x1d]
	mov [ebp-0x54], eax
	mov edx, [ebp+0x8]
	mov edx, [edx+0x20]
	mov [ebp-0xec], edx
	and edx, 0x7
	mov [ebp-0x50], edx
	jnz MSG_ReadDeltaUsercmdKey_1180
	mov ecx, [ebp+0x8]
	mov ebx, [ecx+0x1c]
	mov esi, [ecx+0x18]
	mov edi, [ecx+0x14]
	lea eax, [edi+esi]
	cmp ebx, eax
	jge MSG_ReadDeltaUsercmdKey_1190
	lea esi, [ebx*8]
	mov [ebp-0xec], esi
	mov [ecx+0x20], esi
	add ebx, 0x1
	mov [ecx+0x1c], ebx
	jmp MSG_ReadDeltaUsercmdKey_1200
MSG_ReadDeltaUsercmdKey_2020:
	mov ecx, [ebp+0x8]
	mov dword [ecx], 0x1
	mov eax, 0xffffffff
MSG_ReadDeltaUsercmdKey_2040:
	xor al, [ebp-0x30]
	movzx eax, al
	mov [ebp-0x4c], eax
MSG_ReadDeltaUsercmdKey_2010:
	movzx ebx, byte [ebp-0x4c]
	mov esi, [ebp+0x14]
	mov [esi+0x1e], bl
	mov eax, [esi+0x4]
MSG_ReadDeltaUsercmdKey_1170:
	test al, 0x4
	jz MSG_ReadDeltaUsercmdKey_1210
	movss xmm0, dword [_float_182_04444885]
	mov eax, [ebp+0x10]
	mulss xmm0, [eax+0x18]
	addss xmm0, [_float_0_50000000]
	cvttss2si eax, xmm0
	and eax, 0xffff
	mov [ebp-0x44], eax
	mov edx, [ebp+0x8]
	mov edx, [edx+0x20]
	mov [ebp-0xec], edx
	and edx, 0x7
	mov [ebp-0x40], edx
	jnz MSG_ReadDeltaUsercmdKey_1220
	mov ecx, [ebp+0x8]
	mov ebx, [ecx+0x1c]
	mov esi, [ecx+0x18]
	mov edi, [ecx+0x14]
	lea eax, [edi+esi]
	cmp ebx, eax
	jge MSG_ReadDeltaUsercmdKey_1230
	lea esi, [ebx*8]
	mov [ebp-0xec], esi
	mov [ecx+0x20], esi
	add ebx, 0x1
	mov [ecx+0x1c], ebx
	jmp MSG_ReadDeltaUsercmdKey_1240
MSG_ReadDeltaUsercmdKey_2130:
	mov eax, [ebp-0x34]
MSG_ReadDeltaUsercmdKey_2350:
	mov esi, [ebp-0x30]
	mov edx, kbitmask
	and esi, [edx+0x20]
	xor esi, eax
MSG_ReadDeltaUsercmdKey_2110:
	mov ecx, esi
	mov ebx, [ebp+0x14]
	mov [ebx+0x1c], cl
	mov eax, [ebx+0x4]
MSG_ReadDeltaUsercmdKey_1210:
	cmp eax, 0x1fffff
	jg MSG_ReadDeltaUsercmdKey_1250
MSG_ReadDeltaUsercmdKey_1780:
	mov ecx, [ebp+0x14]
	movzx eax, byte [ecx+0x14]
	test al, al
	js MSG_ReadDeltaUsercmdKey_1260
	mov edx, ecx
MSG_ReadDeltaUsercmdKey_2310:
	movzx eax, byte [edx+0x15]
	test al, al
	jns MSG_ReadDeltaUsercmdKey_200
	movzx eax, al
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_client_sent_an_i
	mov dword [esp], 0xf
	call Com_PrintError
	mov ecx, [ebp+0x10]
	movzx eax, byte [ecx+0x15]
	mov ebx, [ebp+0x14]
	mov [ebx+0x15], al
	jmp MSG_ReadDeltaUsercmdKey_200
MSG_ReadDeltaUsercmdKey_1090:
	mov edx, [ebp+0x8]
	mov edi, [edx+0x14]
MSG_ReadDeltaUsercmdKey_1790:
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jl MSG_ReadDeltaUsercmdKey_1270
	sub edx, edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edx, ecx
MSG_ReadDeltaUsercmdKey_1710:
	add dword [ebp-0xec], 0x1
	mov ecx, [ebp-0xec]
	mov [edx+0x20], ecx
	movzx ecx, byte [ebp-0x60]
	sar eax, cl
	test al, 0x1
	jz MSG_ReadDeltaUsercmdKey_1280
	jmp MSG_ReadDeltaUsercmdKey_1290
MSG_ReadDeltaUsercmdKey_1010:
	mov edx, [ebp+0x8]
	mov edi, [edx+0x14]
MSG_ReadDeltaUsercmdKey_1980:
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jl MSG_ReadDeltaUsercmdKey_1300
	sub edx, edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edx, ecx
MSG_ReadDeltaUsercmdKey_1650:
	add dword [ebp-0xec], 0x1
	mov ecx, [ebp-0xec]
	mov [edx+0x20], ecx
	movzx ecx, byte [ebp-0x6c]
	sar eax, cl
	test al, 0x1
	jz MSG_ReadDeltaUsercmdKey_1310
	jmp MSG_ReadDeltaUsercmdKey_1320
MSG_ReadDeltaUsercmdKey_460:
	and edx, 0x8
	cmp edx, 0x1
	sbb eax, eax
	not al
	and al, 0x81
	mov [ecx], al
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MSG_ReadDeltaUsercmdKey_640:
	mov edx, [ebp+0x8]
	mov edi, [edx+0x14]
MSG_ReadDeltaUsercmdKey_1990:
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jl MSG_ReadDeltaUsercmdKey_1330
	sub edx, edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edx, ecx
MSG_ReadDeltaUsercmdKey_1720:
	add dword [ebp-0xec], 0x1
	mov ecx, [ebp-0xec]
	mov [edx+0x20], ecx
	movzx ecx, byte [ebp-0x90]
	sar eax, cl
	test al, 0x1
	jnz MSG_ReadDeltaUsercmdKey_1340
	mov edx, esi
	mov ecx, [ebp+0x14]
	add ecx, 0x17
	test dl, 0x1
	jnz MSG_ReadDeltaUsercmdKey_1350
MSG_ReadDeltaUsercmdKey_690:
	mov eax, edx
	and eax, 0x2
	cmp eax, 0x1
	sbb eax, eax
	not al
	and al, 0x81
	mov esi, [ebp+0x14]
	mov [esi+0x16], al
	test dl, 0x4
	jnz MSG_ReadDeltaUsercmdKey_1360
MSG_ReadDeltaUsercmdKey_700:
	and edx, 0x8
	cmp edx, 0x1
	sbb eax, eax
	not al
	and al, 0x81
	mov [ecx], al
	jmp MSG_ReadDeltaUsercmdKey_1370
MSG_ReadDeltaUsercmdKey_630:
	mov eax, esi
	or eax, 0x8
	cmp dl, 0xf5
	cmovle esi, eax
	jmp MSG_ReadDeltaUsercmdKey_1380
MSG_ReadDeltaUsercmdKey_620:
	cmp al, 0xf5
	setle al
	movzx esi, al
	add esi, esi
	jmp MSG_ReadDeltaUsercmdKey_1390
MSG_ReadDeltaUsercmdKey_570:
	mov edx, [ebp+0x8]
	mov edi, [edx+0x14]
MSG_ReadDeltaUsercmdKey_2070:
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jl MSG_ReadDeltaUsercmdKey_1400
	sub edx, edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov esi, ecx
MSG_ReadDeltaUsercmdKey_1680:
	add dword [ebp-0xec], 0x1
	mov edx, [ebp-0xec]
	mov [esi+0x20], edx
	movzx ecx, byte [ebp-0x98]
	sar eax, cl
	test al, 0x1
	jz MSG_ReadDeltaUsercmdKey_1410
	mov ebx, [esi+0x1c]
	mov eax, [ebp+0x8]
	mov esi, [eax+0x18]
	mov ecx, ebx
	lea edx, [ebx+0x2]
	mov [ebp-0x94], edx
	lea eax, [edi+esi]
	cmp edx, eax
	jle MSG_ReadDeltaUsercmdKey_1420
MSG_ReadDeltaUsercmdKey_590:
	mov ebx, [ebp+0x8]
	mov dword [ebx], 0x1
	mov eax, 0xffffffff
	jmp MSG_ReadDeltaUsercmdKey_1430
MSG_ReadDeltaUsercmdKey_710:
	mov eax, [ebp+0x8]
	mov edi, [eax+0x14]
MSG_ReadDeltaUsercmdKey_1960:
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jl MSG_ReadDeltaUsercmdKey_1440
	sub edx, edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov esi, ecx
MSG_ReadDeltaUsercmdKey_1690:
	add dword [ebp-0xec], 0x1
	mov edx, [ebp-0xec]
	mov [esi+0x20], edx
	movzx ecx, byte [ebp-0x80]
	sar eax, cl
	test al, 0x1
	jz MSG_ReadDeltaUsercmdKey_1450
	mov ebx, [esi+0x1c]
	mov eax, [ebp+0x8]
	mov esi, [eax+0x18]
	mov ecx, ebx
	lea edx, [ebx+0x2]
	mov [ebp-0x7c], edx
	lea eax, [edi+esi]
	cmp edx, eax
	jle MSG_ReadDeltaUsercmdKey_1460
MSG_ReadDeltaUsercmdKey_730:
	mov ebx, [ebp+0x8]
	mov dword [ebx], 0x1
	mov eax, 0xffffffff
	jmp MSG_ReadDeltaUsercmdKey_1470
MSG_ReadDeltaUsercmdKey_330:
	mov edx, [ebp+0x8]
	mov edi, [edx+0x14]
MSG_ReadDeltaUsercmdKey_2050:
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jl MSG_ReadDeltaUsercmdKey_1480
	sub edx, edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov esi, ecx
MSG_ReadDeltaUsercmdKey_1670:
	add dword [ebp-0xec], 0x1
	mov edx, [ebp-0xec]
	mov [esi+0x20], edx
	movzx ecx, byte [ebp-0xc0]
	sar eax, cl
	test al, 0x1
	jz MSG_ReadDeltaUsercmdKey_1490
	mov ebx, [esi+0x1c]
	mov eax, [ebp+0x8]
	mov esi, [eax+0x18]
	mov ecx, ebx
	lea edx, [ebx+0x2]
	mov [ebp-0xbc], edx
	lea eax, [edi+esi]
	cmp edx, eax
	jle MSG_ReadDeltaUsercmdKey_1500
MSG_ReadDeltaUsercmdKey_350:
	mov ebx, [ebp+0x8]
	mov dword [ebx], 0x1
	mov eax, 0xffffffff
	jmp MSG_ReadDeltaUsercmdKey_1510
MSG_ReadDeltaUsercmdKey_400:
	mov edx, [ebp+0x8]
	mov edi, [edx+0x14]
MSG_ReadDeltaUsercmdKey_2080:
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jl MSG_ReadDeltaUsercmdKey_1520
	sub edx, edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edx, ecx
MSG_ReadDeltaUsercmdKey_1640:
	add dword [ebp-0xec], 0x1
	mov ecx, [ebp-0xec]
	mov [edx+0x20], ecx
	movzx ecx, byte [ebp-0xb8]
	sar eax, cl
	test al, 0x1
	jnz MSG_ReadDeltaUsercmdKey_1530
	mov edx, esi
	mov ecx, [ebp+0x14]
	add ecx, 0x17
	test dl, 0x1
	jnz MSG_ReadDeltaUsercmdKey_1540
MSG_ReadDeltaUsercmdKey_450:
	mov eax, edx
	and eax, 0x2
	cmp eax, 0x1
	sbb eax, eax
	not al
	and al, 0x81
	mov esi, [ebp+0x14]
	mov [esi+0x16], al
	jmp MSG_ReadDeltaUsercmdKey_1550
MSG_ReadDeltaUsercmdKey_390:
	mov eax, esi
	or eax, 0x8
	cmp dl, 0xf5
	cmovle esi, eax
	jmp MSG_ReadDeltaUsercmdKey_1560
MSG_ReadDeltaUsercmdKey_280:
	mov eax, [ebp+0x8]
	mov edi, [eax+0x14]
MSG_ReadDeltaUsercmdKey_1970:
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jl MSG_ReadDeltaUsercmdKey_1570
	sub edx, edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov esi, ecx
MSG_ReadDeltaUsercmdKey_1660:
	add dword [ebp-0xec], 0x1
	mov edx, [ebp-0xec]
	mov [esi+0x20], edx
	movzx ecx, byte [ebp-0xcc]
	sar eax, cl
	test al, 0x1
	jz MSG_ReadDeltaUsercmdKey_1580
	mov ebx, [esi+0x1c]
	mov eax, [ebp+0x8]
	mov esi, [eax+0x18]
	mov ecx, ebx
	lea edx, [ebx+0x2]
	mov [ebp-0xc8], edx
	lea eax, [edi+esi]
	cmp edx, eax
	jle MSG_ReadDeltaUsercmdKey_1590
MSG_ReadDeltaUsercmdKey_300:
	mov ebx, [ebp+0x8]
	mov dword [ebx], 0x1
	mov eax, 0xffffffff
	jmp MSG_ReadDeltaUsercmdKey_1600
MSG_ReadDeltaUsercmdKey_380:
	cmp al, 0xf5
	setle al
	movzx esi, al
	add esi, esi
	jmp MSG_ReadDeltaUsercmdKey_1610
MSG_ReadDeltaUsercmdKey_790:
	mov eax, [ebp-0x74]
MSG_ReadDeltaUsercmdKey_2180:
	mov esi, [ebp-0x30]
	mov edx, kbitmask
	and esi, [edx+0x50]
	xor esi, eax
	jmp MSG_ReadDeltaUsercmdKey_1620
MSG_ReadDeltaUsercmdKey_950:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	mov esi, ebx
	jmp MSG_ReadDeltaUsercmdKey_1630
MSG_ReadDeltaUsercmdKey_1520:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	mov edx, ebx
	jmp MSG_ReadDeltaUsercmdKey_1640
MSG_ReadDeltaUsercmdKey_1300:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	mov edx, ebx
	jmp MSG_ReadDeltaUsercmdKey_1650
MSG_ReadDeltaUsercmdKey_1570:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	mov esi, ebx
	jmp MSG_ReadDeltaUsercmdKey_1660
MSG_ReadDeltaUsercmdKey_1480:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	mov esi, ebx
	jmp MSG_ReadDeltaUsercmdKey_1670
MSG_ReadDeltaUsercmdKey_1400:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	mov esi, ebx
	jmp MSG_ReadDeltaUsercmdKey_1680
MSG_ReadDeltaUsercmdKey_1440:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	mov esi, ebx
	jmp MSG_ReadDeltaUsercmdKey_1690
MSG_ReadDeltaUsercmdKey_990:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	mov edx, ebx
	jmp MSG_ReadDeltaUsercmdKey_1700
MSG_ReadDeltaUsercmdKey_1270:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	mov edx, ebx
	jmp MSG_ReadDeltaUsercmdKey_1710
MSG_ReadDeltaUsercmdKey_1330:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	mov edx, ebx
	jmp MSG_ReadDeltaUsercmdKey_1720
MSG_ReadDeltaUsercmdKey_360:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [ecx+eax]
	jmp MSG_ReadDeltaUsercmdKey_1730
MSG_ReadDeltaUsercmdKey_310:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [ecx+eax]
	jmp MSG_ReadDeltaUsercmdKey_1740
MSG_ReadDeltaUsercmdKey_600:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [ecx+eax]
	jmp MSG_ReadDeltaUsercmdKey_1750
MSG_ReadDeltaUsercmdKey_740:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [ecx+eax]
	jmp MSG_ReadDeltaUsercmdKey_1760
MSG_ReadDeltaUsercmdKey_550:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [ecx+eax]
	jmp MSG_ReadDeltaUsercmdKey_1770
MSG_ReadDeltaUsercmdKey_1250:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_client_sent_an_i1
	mov dword [esp], 0xf
	call Com_PrintError
	mov esi, [ebp+0x10]
	mov eax, [esi+0x4]
	mov edx, [ebp+0x14]
	mov [edx+0x4], eax
	jmp MSG_ReadDeltaUsercmdKey_1780
MSG_ReadDeltaUsercmdKey_1100:
	lea ebx, [edx*8]
	mov [ebp-0xec], ebx
	mov [ecx+0x20], ebx
	lea ebx, [edx+0x1]
	mov [ecx+0x1c], ebx
	jmp MSG_ReadDeltaUsercmdKey_1790
MSG_ReadDeltaUsercmdKey_1180:
	mov edx, [ebp+0x8]
	mov edi, [edx+0x14]
MSG_ReadDeltaUsercmdKey_1200:
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jl MSG_ReadDeltaUsercmdKey_1800
	sub edx, edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov esi, ecx
MSG_ReadDeltaUsercmdKey_2220:
	add dword [ebp-0xec], 0x1
	mov edx, [ebp-0xec]
	mov [esi+0x20], edx
	movzx ecx, byte [ebp-0x50]
	sar eax, cl
	test al, 0x1
	jz MSG_ReadDeltaUsercmdKey_1810
	mov ebx, [esi+0x1c]
	mov eax, [ebp+0x8]
	mov esi, [eax+0x18]
MSG_ReadDeltaUsercmdKey_2280:
	lea eax, [edi+esi]
	cmp ebx, eax
	jge MSG_ReadDeltaUsercmdKey_1820
	cmp ebx, edi
	jl MSG_ReadDeltaUsercmdKey_1830
	mov edx, ebx
	sub edx, edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edx, ecx
MSG_ReadDeltaUsercmdKey_2290:
	add ebx, 0x1
	mov [edx+0x1c], ebx
	jmp MSG_ReadDeltaUsercmdKey_1840
MSG_ReadDeltaUsercmdKey_1820:
	mov ecx, [ebp+0x8]
	mov dword [ecx], 0x1
	mov eax, 0xffffffff
MSG_ReadDeltaUsercmdKey_1840:
	xor al, [ebp-0x30]
	movzx eax, al
	mov [ebp-0x54], eax
MSG_ReadDeltaUsercmdKey_1810:
	movzx ebx, byte [ebp-0x54]
	mov esi, [ebp+0x14]
	mov [esi+0x1d], bl
	mov eax, [ebp+0x10]
	movsx eax, byte [eax+0x1e]
	mov [ebp-0x4c], eax
	mov edx, [ebp+0x8]
	mov edx, [edx+0x20]
	mov [ebp-0xec], edx
	and edx, 0x7
	mov [ebp-0x48], edx
	jnz MSG_ReadDeltaUsercmdKey_1850
	mov ecx, [ebp+0x8]
	mov ebx, [ecx+0x1c]
	mov esi, [ecx+0x18]
	mov edi, [ecx+0x14]
	lea eax, [edi+esi]
	cmp ebx, eax
	jge MSG_ReadDeltaUsercmdKey_1860
	lea esi, [ebx*8]
	mov [ebp-0xec], esi
	mov [ecx+0x20], esi
	add ebx, 0x1
	mov [ecx+0x1c], ebx
	jmp MSG_ReadDeltaUsercmdKey_1870
MSG_ReadDeltaUsercmdKey_1220:
	mov edx, [ebp+0x8]
	mov edi, [edx+0x14]
MSG_ReadDeltaUsercmdKey_1240:
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jl MSG_ReadDeltaUsercmdKey_1880
	sub edx, edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov esi, ecx
MSG_ReadDeltaUsercmdKey_2210:
	add dword [ebp-0xec], 0x1
	mov edx, [ebp-0xec]
	mov [esi+0x20], edx
	movzx ecx, byte [ebp-0x40]
	sar eax, cl
	test al, 0x1
	jz MSG_ReadDeltaUsercmdKey_1890
	mov ebx, [esi+0x1c]
	mov eax, [ebp+0x8]
	mov esi, [eax+0x18]
MSG_ReadDeltaUsercmdKey_2270:
	mov ecx, ebx
	lea edx, [ebx+0x2]
	mov [ebp-0x3c], edx
	lea eax, [edi+esi]
	cmp edx, eax
	jg MSG_ReadDeltaUsercmdKey_1900
	mov ebx, 0x1
MSG_ReadDeltaUsercmdKey_1920:
	cmp edi, ecx
	jg MSG_ReadDeltaUsercmdKey_1910
	mov esi, ecx
	sub esi, edi
	mov [ebp-0x11c], esi
	mov eax, [ebp+0x8]
	mov eax, [eax+0xc]
	movzx eax, byte [eax+esi]
MSG_ReadDeltaUsercmdKey_2230:
	mov [ebx+ebp-0x1d], al
	add ecx, 0x1
	add ebx, 0x1
	cmp ebx, 0x3
	jnz MSG_ReadDeltaUsercmdKey_1920
	movzx eax, word [ebp-0x1c]
	mov ecx, [ebp-0x3c]
	mov edx, [ebp+0x8]
	mov [edx+0x1c], ecx
MSG_ReadDeltaUsercmdKey_2240:
	xor ax, [ebp-0x30]
	cwde
	mov [ebp-0x44], eax
MSG_ReadDeltaUsercmdKey_1890:
	cvtsi2ss xmm0, dword [ebp-0x44]
	mulss xmm0, [_float_0_00549316]
	mov esi, [ebp+0x14]
	movss [esi+0x18], xmm0
	mov eax, [ebp+0x10]
	movzx esi, byte [eax+0x1c]
	mov edx, [ebp+0x8]
	mov edx, [edx+0x20]
	mov [ebp-0xec], edx
	and edx, 0x7
	mov [ebp-0x38], edx
	jnz MSG_ReadDeltaUsercmdKey_1930
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x1c]
	mov edi, [ecx+0x14]
	mov eax, edi
	add eax, [ecx+0x18]
	cmp edx, eax
	jge MSG_ReadDeltaUsercmdKey_1940
	lea ebx, [edx*8]
	mov [ebp-0xec], ebx
	mov [ecx+0x20], ebx
	lea ebx, [edx+0x1]
	mov [ecx+0x1c], ebx
	jmp MSG_ReadDeltaUsercmdKey_1950
MSG_ReadDeltaUsercmdKey_720:
	lea ecx, [ebx*8]
	mov [ebp-0xec], ecx
	mov esi, [ebp+0x8]
	mov [esi+0x20], ecx
	add ebx, 0x1
	mov [esi+0x1c], ebx
	jmp MSG_ReadDeltaUsercmdKey_1960
MSG_ReadDeltaUsercmdKey_290:
	lea ecx, [ebx*8]
	mov [ebp-0xec], ecx
	mov esi, [ebp+0x8]
	mov [esi+0x20], ecx
	add ebx, 0x1
	mov [esi+0x1c], ebx
	jmp MSG_ReadDeltaUsercmdKey_1970
MSG_ReadDeltaUsercmdKey_1020:
	lea ebx, [edx*8]
	mov [ebp-0xec], ebx
	mov [ecx+0x20], ebx
	lea ebx, [edx+0x1]
	mov [ecx+0x1c], ebx
	jmp MSG_ReadDeltaUsercmdKey_1980
MSG_ReadDeltaUsercmdKey_650:
	mov ebx, ecx
	lea ecx, [edx*8]
	mov [ebp-0xec], ecx
	mov [ebx+0x20], ecx
	lea ebx, [edx+0x1]
	mov eax, [ebp+0x8]
	mov [eax+0x1c], ebx
	jmp MSG_ReadDeltaUsercmdKey_1990
MSG_ReadDeltaUsercmdKey_1850:
	mov edx, [ebp+0x8]
	mov edi, [edx+0x14]
MSG_ReadDeltaUsercmdKey_1870:
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jl MSG_ReadDeltaUsercmdKey_2000
	sub edx, edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov esi, ecx
MSG_ReadDeltaUsercmdKey_2200:
	add dword [ebp-0xec], 0x1
	mov edx, [ebp-0xec]
	mov [esi+0x20], edx
	movzx ecx, byte [ebp-0x48]
	sar eax, cl
	test al, 0x1
	jz MSG_ReadDeltaUsercmdKey_2010
	mov ebx, [esi+0x1c]
	mov eax, [ebp+0x8]
	mov esi, [eax+0x18]
MSG_ReadDeltaUsercmdKey_2260:
	lea eax, [edi+esi]
	cmp ebx, eax
	jge MSG_ReadDeltaUsercmdKey_2020
	cmp ebx, edi
	jl MSG_ReadDeltaUsercmdKey_2030
	mov edx, ebx
	sub edx, edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edx, ecx
MSG_ReadDeltaUsercmdKey_2300:
	add ebx, 0x1
	mov [edx+0x1c], ebx
	jmp MSG_ReadDeltaUsercmdKey_2040
MSG_ReadDeltaUsercmdKey_340:
	lea esi, [ebx*8]
	mov [ebp-0xec], esi
	mov [ecx+0x20], esi
	add ebx, 0x1
	mov [ecx+0x1c], ebx
	jmp MSG_ReadDeltaUsercmdKey_2050
MSG_ReadDeltaUsercmdKey_530:
	lea ecx, [ebx*8]
	mov [ebp-0xec], ecx
	mov esi, [ebp+0x8]
	mov [esi+0x20], ecx
	add ebx, 0x1
	mov [esi+0x1c], ebx
	jmp MSG_ReadDeltaUsercmdKey_2060
MSG_ReadDeltaUsercmdKey_580:
	lea esi, [ebx*8]
	mov [ebp-0xec], esi
	mov [ecx+0x20], esi
	add ebx, 0x1
	mov [ecx+0x1c], ebx
	jmp MSG_ReadDeltaUsercmdKey_2070
MSG_ReadDeltaUsercmdKey_410:
	mov ebx, ecx
	lea ecx, [edx*8]
	mov [ebp-0xec], ecx
	mov [ebx+0x20], ecx
	lea ebx, [edx+0x1]
	mov eax, [ebp+0x8]
	mov [eax+0x1c], ebx
	jmp MSG_ReadDeltaUsercmdKey_2080
MSG_ReadDeltaUsercmdKey_770:
	mov ecx, ebx
	lea eax, [edx*8]
	mov [ebp-0xec], eax
	mov [ebx+0x20], eax
	lea ebx, [edx+0x1]
	mov [ecx+0x1c], ebx
	jmp MSG_ReadDeltaUsercmdKey_2090
MSG_ReadDeltaUsercmdKey_1930:
	mov edx, [ebp+0x8]
	mov edi, [edx+0x14]
MSG_ReadDeltaUsercmdKey_1950:
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jl MSG_ReadDeltaUsercmdKey_2100
	sub edx, edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edx, ecx
MSG_ReadDeltaUsercmdKey_2190:
	add dword [ebp-0xec], 0x1
	mov ecx, [ebp-0xec]
	mov [edx+0x20], ecx
	movzx ecx, byte [ebp-0x38]
	sar eax, cl
	test al, 0x1
	jz MSG_ReadDeltaUsercmdKey_2110
MSG_ReadDeltaUsercmdKey_2250:
	mov dword [ebp-0x34], 0x0
	xor ebx, ebx
	mov esi, [ebp-0xec]
	jmp MSG_ReadDeltaUsercmdKey_2120
MSG_ReadDeltaUsercmdKey_2160:
	sub edx, edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
MSG_ReadDeltaUsercmdKey_2170:
	mov ecx, esi
	sar eax, cl
	and eax, 0x1
	mov ecx, ebx
	shl eax, cl
	or [ebp-0x34], eax
	mov eax, [ebp-0xec]
	add eax, 0x1
	mov esi, [ebp+0x8]
	mov [esi+0x20], eax
	add ebx, 0x1
	cmp ebx, 0x8
	jz MSG_ReadDeltaUsercmdKey_2130
	mov [ebp-0xec], eax
	mov esi, eax
MSG_ReadDeltaUsercmdKey_2120:
	and esi, 0x7
	jnz MSG_ReadDeltaUsercmdKey_2140
	mov eax, [ebp+0x8]
	mov edx, [eax+0x1c]
	mov eax, edi
	mov ecx, [ebp+0x8]
	add eax, [ecx+0x18]
	cmp edx, eax
	jge MSG_ReadDeltaUsercmdKey_2150
	lea eax, [edx*8]
	mov [ebp-0xec], eax
	mov [ecx+0x20], eax
	lea eax, [edx+0x1]
	mov [ecx+0x1c], eax
MSG_ReadDeltaUsercmdKey_2140:
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jge MSG_ReadDeltaUsercmdKey_2160
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	movzx eax, byte [eax+edx]
	jmp MSG_ReadDeltaUsercmdKey_2170
MSG_ReadDeltaUsercmdKey_810:
	mov dword [ecx], 0x1
	mov eax, 0xffffffff
	jmp MSG_ReadDeltaUsercmdKey_2180
MSG_ReadDeltaUsercmdKey_2100:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	mov edx, ebx
	jmp MSG_ReadDeltaUsercmdKey_2190
MSG_ReadDeltaUsercmdKey_2000:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	mov esi, ebx
	jmp MSG_ReadDeltaUsercmdKey_2200
MSG_ReadDeltaUsercmdKey_1880:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	mov esi, ebx
	jmp MSG_ReadDeltaUsercmdKey_2210
MSG_ReadDeltaUsercmdKey_1800:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	mov esi, ebx
	jmp MSG_ReadDeltaUsercmdKey_2220
MSG_ReadDeltaUsercmdKey_1910:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [eax+ecx]
	jmp MSG_ReadDeltaUsercmdKey_2230
MSG_ReadDeltaUsercmdKey_1900:
	mov ebx, [ebp+0x8]
	mov dword [ebx], 0x1
	mov eax, 0xffffffff
	jmp MSG_ReadDeltaUsercmdKey_2240
MSG_ReadDeltaUsercmdKey_1940:
	mov dword [ecx], 0x1
	jmp MSG_ReadDeltaUsercmdKey_2250
MSG_ReadDeltaUsercmdKey_1860:
	mov dword [ecx], 0x1
	jmp MSG_ReadDeltaUsercmdKey_2260
MSG_ReadDeltaUsercmdKey_1230:
	mov dword [ecx], 0x1
	jmp MSG_ReadDeltaUsercmdKey_2270
MSG_ReadDeltaUsercmdKey_1190:
	mov dword [ecx], 0x1
	jmp MSG_ReadDeltaUsercmdKey_2280
MSG_ReadDeltaUsercmdKey_1830:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [eax+ebx]
	mov edx, esi
	jmp MSG_ReadDeltaUsercmdKey_2290
MSG_ReadDeltaUsercmdKey_2030:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [eax+ebx]
	mov edx, esi
	jmp MSG_ReadDeltaUsercmdKey_2300
MSG_ReadDeltaUsercmdKey_1260:
	movzx eax, al
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_client_sent_an_i2
	mov dword [esp], 0xf
	call Com_PrintError
	mov ebx, [ebp+0x10]
	movzx eax, byte [ebx+0x14]
	mov esi, [ebp+0x14]
	mov [esi+0x14], al
	mov edx, [ebp+0x14]
	jmp MSG_ReadDeltaUsercmdKey_2310
MSG_ReadDeltaUsercmdKey_1140:
	mov dword [ecx], 0x1
	mov eax, 0xffffffff
	jmp MSG_ReadDeltaUsercmdKey_2320
MSG_ReadDeltaUsercmdKey_1060:
	mov dword [ecx], 0x1
	mov eax, 0xffffffff
	jmp MSG_ReadDeltaUsercmdKey_2330
MSG_ReadDeltaUsercmdKey_180:
	mov dword [ebx], 0x1
	mov edx, 0xffffffff
	jmp MSG_ReadDeltaUsercmdKey_2340
MSG_ReadDeltaUsercmdKey_2150:
	mov dword [ecx], 0x1
	mov eax, 0xffffffff
	jmp MSG_ReadDeltaUsercmdKey_2350
MSG_ReadDeltaUsercmdKey_220:
	mov dword [ecx], 0x1
	mov edx, 0xffffffff
	jmp MSG_ReadDeltaUsercmdKey_2360
MSG_ReadDeltaUsercmdKey_920:
	mov dword [ebx], 0x1
	mov eax, 0xffffffff
	jmp MSG_ReadDeltaUsercmdKey_2370
MSG_ReadDeltaUsercmdKey_890:
	mov dword [ebx], 0x1
	mov eax, 0xffffffff
	jmp MSG_ReadDeltaUsercmdKey_2380
MSG_ReadDeltaUsercmdKey_500:
	mov dword [ecx], 0x1
	mov edx, 0xffffffff
	jmp MSG_ReadDeltaUsercmdKey_2390
MSG_ReadDeltaUsercmdKey_260:
	mov dword [ebx], 0x1
	mov edx, 0xffffffff
	jmp MSG_ReadDeltaUsercmdKey_2400
	nop
	add [eax], al


;MSG_ReadDeltaPlayerstate(int, msg_t*, int, playerState_s const*, playerState_s*, unsigned char)
MSG_ReadDeltaPlayerstate:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x303c
	movzx eax, byte [ebp+0x1c]
	mov [ebp-0x2fd5], al
	mov eax, [ebp+0x14]
	test eax, eax
	jz MSG_ReadDeltaPlayerstate_10
	mov edx, [ebp+0x14]
MSG_ReadDeltaPlayerstate_1680:
	mov dword [esp+0x8], 0x2f64
	mov [esp+0x4], edx
	mov ecx, [ebp+0x18]
	mov [esp], ecx
	call memcpy
	mov eax, cl_shownet
	mov eax, [eax]
	test eax, eax
	jz MSG_ReadDeltaPlayerstate_20
	mov eax, [eax+0xc]
	cmp eax, 0x1
	jle MSG_ReadDeltaPlayerstate_30
MSG_ReadDeltaPlayerstate_1510:
	mov ebx, [ebp+0xc]
	mov eax, [ebx+0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_3i_playerstate_
	mov dword [esp], 0x10
	call Com_Printf
	mov dword [ebp-0x2fc0], 0x1
MSG_ReadDeltaPlayerstate_1520:
	mov edi, [ebp+0xc]
	mov esi, [edi+0x20]
	mov ebx, esi
	and ebx, 0x7
	jnz MSG_ReadDeltaPlayerstate_40
	mov ecx, [edi+0x1c]
	mov eax, [edi+0x14]
	mov [ebp-0x2fdc], eax
	add eax, [edi+0x18]
	cmp ecx, eax
	jge MSG_ReadDeltaPlayerstate_50
	lea esi, [ecx*8]
	mov edx, [ebp+0xc]
	mov [edx+0x20], esi
	add ecx, 0x1
	mov [edx+0x1c], ecx
	mov edx, esi
	sar edx, 0x3
	cmp edx, [ebp-0x2fdc]
	jl MSG_ReadDeltaPlayerstate_60
MSG_ReadDeltaPlayerstate_640:
	sub edx, [ebp-0x2fdc]
	mov edi, [ebp+0xc]
	mov eax, [edi+0xc]
	movzx eax, byte [eax+edx]
MSG_ReadDeltaPlayerstate_650:
	mov ecx, ebx
	sar eax, cl
	and eax, 0x1
	add esi, 0x1
	mov ebx, [ebp+0xc]
	mov [ebx+0x20], esi
	test eax, eax
	setg byte [ebp-0x2fb9]
	mov eax, numPlayerStateFields
	mov eax, [eax]
	mov [ebp-0x2fc4], eax
	test eax, 0xffff0000
	jnz MSG_ReadDeltaPlayerstate_70
MSG_ReadDeltaPlayerstate_660:
	mov ecx, 0x10
	mov ebx, 0x10
	mov edx, [ebp-0x2fc4]
	shl edx, cl
	test edx, 0xff000000
	jnz MSG_ReadDeltaPlayerstate_80
MSG_ReadDeltaPlayerstate_670:
	mov esi, 0x8
	mov eax, 0x8
	lea edi, [ebx+eax]
	mov ecx, esi
	shl edx, cl
	test edx, 0xf0000000
	jnz MSG_ReadDeltaPlayerstate_90
MSG_ReadDeltaPlayerstate_680:
	mov esi, 0x4
	mov eax, 0x4
	add edi, eax
	mov ecx, esi
	shl edx, cl
	test edx, 0xc0000000
	jnz MSG_ReadDeltaPlayerstate_100
MSG_ReadDeltaPlayerstate_690:
	mov esi, 0x2
	mov eax, 0x2
MSG_ReadDeltaPlayerstate_700:
	lea eax, [edi+eax]
	mov ecx, esi
	shl edx, cl
	mov ecx, edx
	not ecx
	shr ecx, 0x1f
	add eax, ecx
	shl edx, cl
	not edx
	shr edx, 0x1f
	add eax, edx
	mov dword [ebp-0x2fb8], 0x20
	sub [ebp-0x2fb8], eax
	mov eax, [ebp-0x2fb8]
	test eax, eax
	jg MSG_ReadDeltaPlayerstate_110
	mov dword [ebp-0x2fcc], 0x0
MSG_ReadDeltaPlayerstate_1440:
	mov edx, playerStateFields
	mov edi, edx
	mov eax, [ebp-0x2fcc]
	test eax, eax
	jle MSG_ReadDeltaPlayerstate_120
	cmp byte [ebp-0x2fd5], 0x0
	jz MSG_ReadDeltaPlayerstate_130
	cmp byte [ebp-0x2fb9], 0x0
	jz MSG_ReadDeltaPlayerstate_140
	xor esi, esi
MSG_ReadDeltaPlayerstate_150:
	xor eax, eax
	cmp byte [edi+0xc], 0x3
	setz al
	mov [esp+0x18], eax
	mov ecx, [ebp-0x2fc0]
	mov [esp+0x14], ecx
	mov [esp+0x10], edi
	mov ebx, [ebp+0x18]
	mov [esp+0xc], ebx
	mov eax, [ebp+0x14]
	mov [esp+0x8], eax
	mov edx, [ebp+0x10]
	mov [esp+0x4], edx
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call MSG_ReadDeltaField
	add esi, 0x1
	add edi, 0x10
	cmp [ebp-0x2fcc], esi
	jnz MSG_ReadDeltaPlayerstate_150
MSG_ReadDeltaPlayerstate_1730:
	mov edx, playerStateFields
MSG_ReadDeltaPlayerstate_120:
	mov eax, [ebp-0x2fcc]
	shl eax, 0x4
	lea ecx, [eax+edx]
	mov ebx, [ebp-0x2fc4]
	cmp [ebp-0x2fcc], ebx
	jge MSG_ReadDeltaPlayerstate_160
	xor esi, esi
	mov edi, ebx
	sub edi, [ebp-0x2fcc]
MSG_ReadDeltaPlayerstate_170:
	mov edx, [ecx+0x4]
	mov ebx, [ebp+0x14]
	mov eax, [ebx+edx]
	mov ebx, [ebp+0x18]
	mov [ebx+edx], eax
	add ecx, 0x10
	add esi, 0x1
	cmp edi, esi
	jnz MSG_ReadDeltaPlayerstate_170
MSG_ReadDeltaPlayerstate_160:
	cmp byte [ebp-0x2fb9], 0x0
	jz MSG_ReadDeltaPlayerstate_180
MSG_ReadDeltaPlayerstate_1580:
	mov edi, [ebp+0xc]
	mov esi, [edi+0x20]
	mov ebx, esi
	and ebx, 0x7
	jnz MSG_ReadDeltaPlayerstate_190
	mov ecx, [edi+0x1c]
	mov eax, [edi+0x14]
	mov [ebp-0x2fdc], eax
	add eax, [edi+0x18]
	cmp ecx, eax
	jl MSG_ReadDeltaPlayerstate_200
	mov dword [edi], 0x1
MSG_ReadDeltaPlayerstate_1500:
	mov eax, cl_shownet
	mov eax, [eax]
	test eax, eax
	jz MSG_ReadDeltaPlayerstate_210
	cmp dword [eax+0xc], 0x4
	jz MSG_ReadDeltaPlayerstate_220
MSG_ReadDeltaPlayerstate_210:
	mov dword [ebp-0x2f8c], 0x0
	xor edi, edi
MSG_ReadDeltaPlayerstate_260:
	mov eax, [ebp+0xc]
	mov esi, [eax+0x20]
	mov ebx, esi
	and ebx, 0x7
	jnz MSG_ReadDeltaPlayerstate_230
	mov edx, eax
	mov ecx, [eax+0x1c]
	mov eax, [ebp-0x2fdc]
	add eax, [edx+0x18]
	cmp ecx, eax
	jge MSG_ReadDeltaPlayerstate_240
	lea esi, [ecx*8]
	mov [edx+0x20], esi
	add ecx, 0x1
	mov [edx+0x1c], ecx
MSG_ReadDeltaPlayerstate_230:
	mov edx, esi
	sar edx, 0x3
	cmp edx, [ebp-0x2fdc]
	jl MSG_ReadDeltaPlayerstate_250
	sub edx, [ebp-0x2fdc]
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
MSG_ReadDeltaPlayerstate_710:
	mov ecx, ebx
	sar eax, cl
	and eax, 0x1
	mov ecx, edi
	shl eax, cl
	or [ebp-0x2f8c], eax
	add esi, 0x1
	mov ebx, [ebp+0xc]
	mov [ebx+0x20], esi
	add edi, 0x1
	cmp edi, 0x5
	jnz MSG_ReadDeltaPlayerstate_260
	test byte [ebp-0x2f8c], 0x1
	jz MSG_ReadDeltaPlayerstate_270
MSG_ReadDeltaPlayerstate_1700:
	mov edi, [ebp+0xc]
	mov ecx, [edi+0x1c]
	lea esi, [ecx+0x2]
	mov eax, [ebp-0x2fdc]
	add eax, [edi+0x18]
	cmp esi, eax
	jg MSG_ReadDeltaPlayerstate_280
	mov ebx, 0x1
MSG_ReadDeltaPlayerstate_300:
	cmp [ebp-0x2fdc], ecx
	jg MSG_ReadDeltaPlayerstate_290
	mov eax, ecx
	sub eax, [ebp-0x2fdc]
	mov [ebp-0x300c], eax
	mov edx, [ebp+0xc]
	mov edx, [edx+0xc]
	mov [ebp-0x2fec], edx
	movzx eax, byte [edx+eax]
MSG_ReadDeltaPlayerstate_1650:
	mov [ebx+ebp-0x1b], al
	add ecx, 0x1
	add ebx, 0x1
	cmp ebx, 0x3
	jnz MSG_ReadDeltaPlayerstate_300
	movsx eax, word [ebp-0x1a]
	mov ecx, [ebp+0xc]
	mov [ecx+0x1c], esi
MSG_ReadDeltaPlayerstate_1610:
	mov edi, [ebp+0x18]
	mov [edi+0x148], eax
	mov eax, [ebp+0xc]
	mov eax, [eax+0x14]
	mov [ebp-0x2fdc], eax
MSG_ReadDeltaPlayerstate_270:
	test byte [ebp-0x2f8c], 0x2
	jz MSG_ReadDeltaPlayerstate_310
	mov edx, [ebp+0xc]
	mov ecx, [edx+0x1c]
	lea esi, [ecx+0x2]
	mov eax, [ebp-0x2fdc]
	add eax, [edx+0x18]
	cmp esi, eax
	jg MSG_ReadDeltaPlayerstate_320
	mov ebx, 0x1
MSG_ReadDeltaPlayerstate_340:
	cmp [ebp-0x2fdc], ecx
	jg MSG_ReadDeltaPlayerstate_330
	mov edi, ecx
	sub edi, [ebp-0x2fdc]
	mov [ebp-0x300c], edi
	mov eax, [ebp+0xc]
	mov eax, [eax+0xc]
	movzx eax, byte [eax+edi]
MSG_ReadDeltaPlayerstate_1670:
	mov [ebx+ebp-0x1b], al
	add ecx, 0x1
	add ebx, 0x1
	cmp ebx, 0x3
	jnz MSG_ReadDeltaPlayerstate_340
	movsx eax, word [ebp-0x1a]
	mov edx, [ebp+0xc]
	mov [edx+0x1c], esi
MSG_ReadDeltaPlayerstate_1640:
	mov ebx, [ebp+0x18]
	mov [ebx+0x14c], eax
	mov edi, [ebp+0xc]
	mov edi, [edi+0x14]
	mov [ebp-0x2fdc], edi
MSG_ReadDeltaPlayerstate_310:
	test byte [ebp-0x2f8c], 0x4
	jz MSG_ReadDeltaPlayerstate_350
	mov eax, [ebp+0xc]
	mov ecx, [eax+0x1c]
	lea esi, [ecx+0x2]
	mov eax, [ebp-0x2fdc]
	mov edx, [ebp+0xc]
	add eax, [edx+0x18]
	cmp esi, eax
	jg MSG_ReadDeltaPlayerstate_360
	mov ebx, 0x1
MSG_ReadDeltaPlayerstate_380:
	cmp [ebp-0x2fdc], ecx
	jg MSG_ReadDeltaPlayerstate_370
	mov edi, ecx
	sub edi, [ebp-0x2fdc]
	mov [ebp-0x300c], edi
	mov eax, [ebp+0xc]
	mov eax, [eax+0xc]
	movzx eax, byte [eax+edi]
MSG_ReadDeltaPlayerstate_1660:
	mov [ebp+ebx-0x1b], al
	add ecx, 0x1
	add ebx, 0x1
	cmp ebx, 0x3
	jnz MSG_ReadDeltaPlayerstate_380
	movsx eax, word [ebp-0x1a]
	mov edx, [ebp+0xc]
	mov [edx+0x1c], esi
MSG_ReadDeltaPlayerstate_1630:
	mov edi, [ebp+0x18]
	mov [edi+0x150], eax
	mov eax, [ebp+0xc]
	mov eax, [eax+0x14]
	mov [ebp-0x2fdc], eax
MSG_ReadDeltaPlayerstate_350:
	test byte [ebp-0x2f8c], 0x8
	jz MSG_ReadDeltaPlayerstate_390
	mov dword [ebp-0x2fb4], 0x0
	xor edi, edi
	jmp MSG_ReadDeltaPlayerstate_400
MSG_ReadDeltaPlayerstate_440:
	sub edx, [ebp-0x2fdc]
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov ecx, ebx
	sar eax, cl
	and eax, 0x1
	mov ecx, edi
	shl eax, cl
	or [ebp-0x2fb4], eax
	add esi, 0x1
	mov ebx, [ebp+0xc]
	mov [ebx+0x20], esi
	add edi, 0x1
	cmp edi, 0x6
	jz MSG_ReadDeltaPlayerstate_410
MSG_ReadDeltaPlayerstate_400:
	mov edx, [ebp+0xc]
	mov esi, [edx+0x20]
	mov ebx, esi
	and ebx, 0x7
	jnz MSG_ReadDeltaPlayerstate_420
	mov ecx, edx
	mov edx, [edx+0x1c]
	mov eax, [ebp-0x2fdc]
	add eax, [ecx+0x18]
	cmp edx, eax
	jge MSG_ReadDeltaPlayerstate_430
	lea esi, [edx*8]
	mov [ecx+0x20], esi
	lea ecx, [edx+0x1]
	mov eax, [ebp+0xc]
	mov [eax+0x1c], ecx
MSG_ReadDeltaPlayerstate_420:
	mov edx, esi
	sar edx, 0x3
	cmp edx, [ebp-0x2fdc]
	jge MSG_ReadDeltaPlayerstate_440
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0x8]
	movzx eax, byte [eax+edx]
	mov ecx, ebx
	sar eax, cl
	and eax, 0x1
	mov ecx, edi
	shl eax, cl
	or [ebp-0x2fb4], eax
	add esi, 0x1
	mov ebx, [ebp+0xc]
	mov [ebx+0x20], esi
	add edi, 0x1
	cmp edi, 0x6
	jnz MSG_ReadDeltaPlayerstate_400
MSG_ReadDeltaPlayerstate_410:
	mov eax, [ebp-0x2fb4]
	mov edi, [ebp+0x18]
	mov [edi+0x154], eax
	mov edx, [ebp+0xc]
	mov edx, [edx+0x14]
	mov [ebp-0x2fdc], edx
MSG_ReadDeltaPlayerstate_390:
	test byte [ebp-0x2f8c], 0x10
	jz MSG_ReadDeltaPlayerstate_450
	mov ebx, [ebp+0xc]
	mov ecx, [ebx+0x1c]
	mov eax, [ebp-0x2fdc]
	add eax, [ebx+0x18]
	cmp ecx, eax
	jge MSG_ReadDeltaPlayerstate_460
	cmp ecx, [ebp-0x2fdc]
	jl MSG_ReadDeltaPlayerstate_470
	mov edx, ecx
	sub edx, [ebp-0x2fdc]
	mov eax, [ebx+0xc]
	movzx eax, byte [eax+edx]
	mov edx, [ebp+0xc]
MSG_ReadDeltaPlayerstate_1690:
	add ecx, 0x1
	mov [edx+0x1c], ecx
MSG_ReadDeltaPlayerstate_1620:
	mov ebx, [ebp+0x18]
	mov [ebx+0x158], eax
	mov edi, [ebp+0xc]
	mov edi, [edi+0x14]
	mov [ebp-0x2fdc], edi
MSG_ReadDeltaPlayerstate_450:
	mov eax, [ebp+0xc]
	mov esi, [eax+0x20]
	mov ebx, esi
	and ebx, 0x7
	jnz MSG_ReadDeltaPlayerstate_480
	mov edx, eax
	mov ecx, [eax+0x1c]
	mov eax, [ebp-0x2fdc]
	add eax, [edx+0x18]
	cmp ecx, eax
	jl MSG_ReadDeltaPlayerstate_490
	mov dword [edx], 0x1
MSG_ReadDeltaPlayerstate_780:
	mov dword [ebp-0x2f98], 0x0
MSG_ReadDeltaPlayerstate_760:
	mov edi, esi
	and edi, 0x7
	jnz MSG_ReadDeltaPlayerstate_500
	mov eax, [ebp+0xc]
	mov edx, [eax+0x1c]
	mov eax, [ebp-0x2fdc]
	mov ecx, [ebp+0xc]
	add eax, [ecx+0x18]
	cmp edx, eax
	jl MSG_ReadDeltaPlayerstate_510
	mov dword [ecx], 0x1
MSG_ReadDeltaPlayerstate_740:
	mov eax, cl_shownet
	mov eax, [eax]
	test eax, eax
	jz MSG_ReadDeltaPlayerstate_520
	cmp dword [eax+0xc], 0x4
	jz MSG_ReadDeltaPlayerstate_530
MSG_ReadDeltaPlayerstate_520:
	mov eax, [ebp-0x2fdc]
MSG_ReadDeltaPlayerstate_1600:
	mov edi, [ebp+0xc]
	mov ecx, [edi+0x1c]
	lea edi, [ecx+0x2]
	mov edx, [ebp+0xc]
	add eax, [edx+0x18]
	cmp edi, eax
	jg MSG_ReadDeltaPlayerstate_540
	mov esi, 0x1
MSG_ReadDeltaPlayerstate_560:
	cmp [ebp-0x2fdc], ecx
	jg MSG_ReadDeltaPlayerstate_550
	mov ebx, ecx
	sub ebx, [ebp-0x2fdc]
	mov [ebp-0x300c], ebx
	mov eax, [ebp+0xc]
	mov eax, [eax+0xc]
	movzx eax, byte [eax+ebx]
MSG_ReadDeltaPlayerstate_1320:
	mov [esi+ebp-0x1b], al
	add ecx, 0x1
	add esi, 0x1
	cmp esi, 0x3
	jnz MSG_ReadDeltaPlayerstate_560
	movsx eax, word [ebp-0x1a]
	mov [ebp-0x2fc8], eax
	mov edx, [ebp+0xc]
	mov [edx+0x1c], edi
MSG_ReadDeltaPlayerstate_1310:
	mov ebx, [ebp-0x2f98]
	mov eax, [ebp+0x18]
	lea edi, [eax+ebx*4+0x15c]
	xor ebx, ebx
	jmp MSG_ReadDeltaPlayerstate_570
MSG_ReadDeltaPlayerstate_620:
	mov esi, 0x1
MSG_ReadDeltaPlayerstate_590:
	cmp [ebp-0x2fdc], ecx
	jg MSG_ReadDeltaPlayerstate_580
	mov eax, ecx
	sub eax, [ebp-0x2fdc]
	mov [ebp-0x300c], eax
	mov edx, [ebp+0xc]
	mov edx, [edx+0xc]
	mov [ebp-0x2ffc], edx
	movzx eax, byte [edx+eax]
	mov [ebp-0x301c], eax
MSG_ReadDeltaPlayerstate_720:
	movzx eax, byte [ebp-0x301c]
	mov [esi+ebp-0x1b], al
	add ecx, 0x1
	add esi, 0x1
	cmp esi, 0x3
	jnz MSG_ReadDeltaPlayerstate_590
	movsx eax, word [ebp-0x1a]
	mov ecx, [ebp-0x2fb0]
	mov edx, [ebp+0xc]
	mov [edx+0x1c], ecx
MSG_ReadDeltaPlayerstate_630:
	mov [edi], eax
	mov edx, [ebp+0xc]
	mov edx, [edx+0x14]
	mov [ebp-0x2fdc], edx
MSG_ReadDeltaPlayerstate_610:
	add ebx, 0x1
	add edi, 0x4
	cmp ebx, 0x10
	jz MSG_ReadDeltaPlayerstate_600
MSG_ReadDeltaPlayerstate_570:
	mov eax, [ebp-0x2fc8]
	mov ecx, ebx
	sar eax, cl
	test al, 0x1
	jz MSG_ReadDeltaPlayerstate_610
	mov eax, [ebp+0xc]
	mov ecx, [eax+0x1c]
	lea edx, [ecx+0x2]
	mov [ebp-0x2fb0], edx
	mov eax, [ebp-0x2fdc]
	mov edx, [ebp+0xc]
	add eax, [edx+0x18]
	cmp [ebp-0x2fb0], eax
	jle MSG_ReadDeltaPlayerstate_620
	mov dword [edx], 0x1
	mov eax, 0xffffffff
	jmp MSG_ReadDeltaPlayerstate_630
MSG_ReadDeltaPlayerstate_40:
	mov ecx, [edi+0x14]
	mov [ebp-0x2fdc], ecx
	mov edx, esi
	sar edx, 0x3
	cmp edx, [ebp-0x2fdc]
	jge MSG_ReadDeltaPlayerstate_640
MSG_ReadDeltaPlayerstate_60:
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0x8]
	movzx eax, byte [eax+edx]
	jmp MSG_ReadDeltaPlayerstate_650
MSG_ReadDeltaPlayerstate_50:
	mov dword [edi], 0x1
	mov eax, 0xffffffff
	test eax, eax
	setg byte [ebp-0x2fb9]
	mov eax, numPlayerStateFields
	mov eax, [eax]
	mov [ebp-0x2fc4], eax
	test eax, 0xffff0000
	jz MSG_ReadDeltaPlayerstate_660
MSG_ReadDeltaPlayerstate_70:
	xor ecx, ecx
	xor ebx, ebx
	mov edx, [ebp-0x2fc4]
	shl edx, cl
	test edx, 0xff000000
	jz MSG_ReadDeltaPlayerstate_670
MSG_ReadDeltaPlayerstate_80:
	xor esi, esi
	xor eax, eax
	lea edi, [ebx+eax]
	mov ecx, esi
	shl edx, cl
	test edx, 0xf0000000
	jz MSG_ReadDeltaPlayerstate_680
MSG_ReadDeltaPlayerstate_90:
	xor esi, esi
	xor eax, eax
	add edi, eax
	mov ecx, esi
	shl edx, cl
	test edx, 0xc0000000
	jz MSG_ReadDeltaPlayerstate_690
MSG_ReadDeltaPlayerstate_100:
	xor esi, esi
	xor eax, eax
	jmp MSG_ReadDeltaPlayerstate_700
MSG_ReadDeltaPlayerstate_250:
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0x8]
	movzx eax, byte [eax+edx]
	jmp MSG_ReadDeltaPlayerstate_710
MSG_ReadDeltaPlayerstate_580:
	mov edx, [ebp+0xc]
	mov eax, [edx+0x8]
	movzx eax, byte [ecx+eax]
	mov [ebp-0x301c], eax
	jmp MSG_ReadDeltaPlayerstate_720
MSG_ReadDeltaPlayerstate_510:
	mov ebx, ecx
	lea esi, [edx*8]
	mov [ecx+0x20], esi
	lea ecx, [edx+0x1]
	mov [ebx+0x1c], ecx
MSG_ReadDeltaPlayerstate_500:
	mov edx, esi
	sar edx, 0x3
	cmp edx, [ebp-0x2fdc]
	jl MSG_ReadDeltaPlayerstate_730
	sub edx, [ebp-0x2fdc]
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edx, ecx
MSG_ReadDeltaPlayerstate_1300:
	add esi, 0x1
	mov [edx+0x20], esi
	mov ecx, edi
	sar eax, cl
	test al, 0x1
	jnz MSG_ReadDeltaPlayerstate_740
MSG_ReadDeltaPlayerstate_600:
	add dword [ebp-0x2f98], 0x10
	cmp dword [ebp-0x2f98], 0x40
	jz MSG_ReadDeltaPlayerstate_750
	mov ebx, [ebp+0xc]
	mov esi, [ebx+0x20]
	jmp MSG_ReadDeltaPlayerstate_760
MSG_ReadDeltaPlayerstate_490:
	lea esi, [ecx*8]
	mov [edx+0x20], esi
	add ecx, 0x1
	mov [edx+0x1c], ecx
MSG_ReadDeltaPlayerstate_480:
	mov edx, esi
	sar edx, 0x3
	cmp edx, [ebp-0x2fdc]
	jl MSG_ReadDeltaPlayerstate_770
	sub edx, [ebp-0x2fdc]
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edx, ecx
MSG_ReadDeltaPlayerstate_1550:
	add esi, 0x1
	mov [edx+0x20], esi
	mov ecx, ebx
	sar eax, cl
	test al, 0x1
	jnz MSG_ReadDeltaPlayerstate_780
MSG_ReadDeltaPlayerstate_750:
	mov dword [ebp-0x2f9c], 0x0
	mov ecx, [ebp+0x18]
	add ecx, 0x350
	mov [ebp-0x2fe0], ecx
MSG_ReadDeltaPlayerstate_960:
	mov ebx, [ebp+0xc]
	mov esi, [ebx+0x20]
	mov edi, esi
	and edi, 0x7
	jnz MSG_ReadDeltaPlayerstate_790
	mov edx, [ebx+0x1c]
	mov eax, [ebp-0x2fdc]
	add eax, [ebx+0x18]
	cmp edx, eax
	jl MSG_ReadDeltaPlayerstate_800
	mov dword [ebx], 0x1
MSG_ReadDeltaPlayerstate_950:
	mov eax, cl_shownet
	mov eax, [eax]
	test eax, eax
	jz MSG_ReadDeltaPlayerstate_810
	cmp dword [eax+0xc], 0x4
	jz MSG_ReadDeltaPlayerstate_820
MSG_ReadDeltaPlayerstate_810:
	mov eax, [ebp-0x2fdc]
MSG_ReadDeltaPlayerstate_1420:
	mov edi, [ebp+0xc]
	mov ecx, [edi+0x1c]
	lea edi, [ecx+0x2]
	mov edx, [ebp+0xc]
	add eax, [edx+0x18]
	cmp edi, eax
	jg MSG_ReadDeltaPlayerstate_830
	mov esi, 0x1
MSG_ReadDeltaPlayerstate_850:
	cmp [ebp-0x2fdc], ecx
	jg MSG_ReadDeltaPlayerstate_840
	mov edx, ecx
	sub edx, [ebp-0x2fdc]
	mov ebx, [ebp+0xc]
	mov eax, [ebx+0xc]
	movzx eax, byte [eax+edx]
MSG_ReadDeltaPlayerstate_1260:
	mov [ebp+esi-0x1b], al
	add ecx, 0x1
	add esi, 0x1
	cmp esi, 0x3
	jnz MSG_ReadDeltaPlayerstate_850
	movsx ecx, word [ebp-0x1a]
	mov [ebp-0x2f90], ecx
	mov ebx, [ebp+0xc]
	mov [ebx+0x1c], edi
MSG_ReadDeltaPlayerstate_1270:
	mov esi, [ebp-0x2fe0]
	add esi, 0xc
	xor edi, edi
	jmp MSG_ReadDeltaPlayerstate_860
MSG_ReadDeltaPlayerstate_910:
	mov ebx, 0x1
MSG_ReadDeltaPlayerstate_880:
	cmp [ebp-0x2fdc], ecx
	jg MSG_ReadDeltaPlayerstate_870
	mov edx, ecx
	sub edx, [ebp-0x2fdc]
	mov [ebp-0x300c], edx
	mov eax, [ebp+0xc]
	mov eax, [eax+0xc]
	mov [ebp-0x3000], eax
	movzx edx, byte [eax+edx]
	mov [ebp-0x301c], edx
MSG_ReadDeltaPlayerstate_930:
	movzx eax, byte [ebp-0x301c]
	mov [ebp+ebx-0x1b], al
	add ecx, 0x1
	add ebx, 0x1
	cmp ebx, 0x3
	jnz MSG_ReadDeltaPlayerstate_880
	movsx eax, word [ebp-0x1a]
	mov ecx, [ebp-0x2fac]
	mov edx, [ebp+0xc]
	mov [edx+0x1c], ecx
MSG_ReadDeltaPlayerstate_920:
	mov [esi], eax
	mov eax, [ebp+0xc]
	mov eax, [eax+0x14]
	mov [ebp-0x2fdc], eax
MSG_ReadDeltaPlayerstate_900:
	add edi, 0x1
	add esi, 0x4
	cmp edi, 0x10
	jz MSG_ReadDeltaPlayerstate_890
MSG_ReadDeltaPlayerstate_860:
	mov eax, [ebp-0x2f90]
	mov ecx, edi
	sar eax, cl
	test al, 0x1
	jz MSG_ReadDeltaPlayerstate_900
	mov ebx, [ebp+0xc]
	mov ecx, [ebx+0x1c]
	lea eax, [ecx+0x2]
	mov [ebp-0x2fac], eax
	mov eax, [ebp-0x2fdc]
	add eax, [ebx+0x18]
	cmp [ebp-0x2fac], eax
	jle MSG_ReadDeltaPlayerstate_910
	mov dword [ebx], 0x1
	mov eax, 0xffffffff
	jmp MSG_ReadDeltaPlayerstate_920
MSG_ReadDeltaPlayerstate_870:
	mov edx, [ebp+0xc]
	mov eax, [edx+0x8]
	movzx eax, byte [eax+ecx]
	mov [ebp-0x301c], eax
	jmp MSG_ReadDeltaPlayerstate_930
MSG_ReadDeltaPlayerstate_800:
	lea esi, [edx*8]
	mov eax, [ebp+0xc]
	mov [eax+0x20], esi
	lea ecx, [edx+0x1]
	mov [eax+0x1c], ecx
MSG_ReadDeltaPlayerstate_790:
	mov edx, esi
	sar edx, 0x3
	cmp edx, [ebp-0x2fdc]
	jl MSG_ReadDeltaPlayerstate_940
	sub edx, [ebp-0x2fdc]
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edx, ecx
MSG_ReadDeltaPlayerstate_1240:
	add esi, 0x1
	mov [edx+0x20], esi
	mov ecx, edi
	sar eax, cl
	test al, 0x1
	jnz MSG_ReadDeltaPlayerstate_950
MSG_ReadDeltaPlayerstate_890:
	add dword [ebp-0x2f9c], 0x10
	add dword [ebp-0x2fe0], 0x40
	cmp dword [ebp-0x2f9c], 0x80
	jnz MSG_ReadDeltaPlayerstate_960
	mov edx, [ebp+0xc]
	mov esi, [edx+0x20]
	mov ebx, esi
	and ebx, 0x7
	jnz MSG_ReadDeltaPlayerstate_970
	mov ecx, edx
	mov edx, [edx+0x1c]
	mov eax, [ebp-0x2fdc]
	add eax, [ecx+0x18]
	cmp edx, eax
	jl MSG_ReadDeltaPlayerstate_980
	mov dword [ecx], 0x1
MSG_ReadDeltaPlayerstate_1340:
	mov ebx, [ebp+0x18]
	mov [ebp-0x2fa0], ebx
	mov dword [ebp-0x2f94], 0x0
MSG_ReadDeltaPlayerstate_1070:
	mov dword [ebp-0x2fa8], 0x0
	xor edi, edi
MSG_ReadDeltaPlayerstate_1020:
	mov ebx, esi
	and ebx, 0x7
	jnz MSG_ReadDeltaPlayerstate_990
	mov eax, [ebp+0xc]
	mov edx, [eax+0x1c]
	mov eax, [ebp-0x2fdc]
	mov ecx, [ebp+0xc]
	add eax, [ecx+0x18]
	cmp edx, eax
	jge MSG_ReadDeltaPlayerstate_1000
	mov eax, ecx
	lea esi, [edx*8]
	mov [ecx+0x20], esi
	lea ecx, [edx+0x1]
	mov [eax+0x1c], ecx
MSG_ReadDeltaPlayerstate_990:
	mov edx, esi
	sar edx, 0x3
	cmp edx, [ebp-0x2fdc]
	jl MSG_ReadDeltaPlayerstate_1010
	sub edx, [ebp-0x2fdc]
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
MSG_ReadDeltaPlayerstate_1080:
	mov ecx, ebx
	sar eax, cl
	and eax, 0x1
	mov ecx, edi
	shl eax, cl
	or [ebp-0x2fa8], eax
	add esi, 0x1
	mov ebx, [ebp+0xc]
	mov [ebx+0x20], esi
	add edi, 0x1
	cmp edi, 0x3
	jnz MSG_ReadDeltaPlayerstate_1020
	mov eax, [ebp-0x2fa8]
MSG_ReadDeltaPlayerstate_1410:
	mov edi, [ebp-0x2fa0]
	mov [edi+0x65c], eax
	mov eax, objectiveFields
	mov [ebp-0x2fa4], eax
	mov eax, numObjectiveFields
	mov ebx, [eax]
	mov edx, [ebp-0x2f94]
	shl edx, 0x2
	mov eax, [ebp-0x2f94]
	shl eax, 0x5
	sub eax, edx
	add eax, 0x650
	mov edx, [ebp+0x18]
	lea edx, [edx+eax+0xc]
	mov [ebp-0x2fd4], edx
	mov ecx, [ebp+0x14]
	lea eax, [ecx+eax+0xc]
	mov [ebp-0x2fd0], eax
	mov edi, [ebp+0xc]
	mov esi, [edi+0x20]
	mov edi, esi
	and edi, 0x7
	jnz MSG_ReadDeltaPlayerstate_1030
	mov eax, [ebp+0xc]
	mov ecx, [eax+0x1c]
	mov edx, [eax+0x14]
	mov [ebp-0x2fdc], edx
	mov eax, edx
	mov edx, [ebp+0xc]
	add eax, [edx+0x18]
	cmp ecx, eax
	jl MSG_ReadDeltaPlayerstate_1040
	mov dword [edx], 0x1
MSG_ReadDeltaPlayerstate_1100:
	test ebx, ebx
	jg MSG_ReadDeltaPlayerstate_1050
MSG_ReadDeltaPlayerstate_1110:
	add dword [ebp-0x2f94], 0x1
	add dword [ebp-0x2fa0], 0x1c
	cmp dword [ebp-0x2f94], 0x10
	jz MSG_ReadDeltaPlayerstate_1060
MSG_ReadDeltaPlayerstate_1130:
	mov edi, [ebp+0xc]
	mov esi, [edi+0x20]
	jmp MSG_ReadDeltaPlayerstate_1070
MSG_ReadDeltaPlayerstate_1010:
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0x8]
	movzx eax, byte [eax+edx]
	jmp MSG_ReadDeltaPlayerstate_1080
MSG_ReadDeltaPlayerstate_1030:
	mov edx, [ebp+0xc]
	mov edx, [edx+0x14]
	mov [ebp-0x2fdc], edx
MSG_ReadDeltaPlayerstate_1250:
	mov edx, esi
	sar edx, 0x3
	cmp edx, [ebp-0x2fdc]
	jl MSG_ReadDeltaPlayerstate_1090
	sub edx, [ebp-0x2fdc]
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edx, ecx
MSG_ReadDeltaPlayerstate_1230:
	add esi, 0x1
	mov [edx+0x20], esi
	mov ecx, edi
	sar eax, cl
	test al, 0x1
	jnz MSG_ReadDeltaPlayerstate_1100
	test ebx, ebx
	jle MSG_ReadDeltaPlayerstate_1110
	mov esi, [ebp-0x2fa4]
	xor ecx, ecx
MSG_ReadDeltaPlayerstate_1120:
	mov edx, [esi+0x4]
	mov edi, [ebp-0x2fd0]
	mov eax, [edx+edi]
	mov edi, [ebp-0x2fd4]
	mov [edx+edi], eax
	add ecx, 0x1
	add esi, 0x10
	cmp ebx, ecx
	jnz MSG_ReadDeltaPlayerstate_1120
	mov eax, [ebp+0xc]
	mov eax, [eax+0x14]
	mov [ebp-0x2fdc], eax
	add dword [ebp-0x2f94], 0x1
	add dword [ebp-0x2fa0], 0x1c
	cmp dword [ebp-0x2f94], 0x10
	jnz MSG_ReadDeltaPlayerstate_1130
MSG_ReadDeltaPlayerstate_1060:
	mov edx, [ebp+0xc]
	mov esi, [edx+0x20]
	mov ebx, esi
	and ebx, 0x7
	jnz MSG_ReadDeltaPlayerstate_1140
MSG_ReadDeltaPlayerstate_1350:
	mov ecx, edx
	mov edx, [edx+0x1c]
	mov eax, [ebp-0x2fdc]
	add eax, [ecx+0x18]
	cmp edx, eax
	jl MSG_ReadDeltaPlayerstate_1150
	mov dword [ecx], 0x1
MSG_ReadDeltaPlayerstate_1370:
	mov ecx, [ebp+0x14]
	add ecx, 0x1c04
	mov dword [esp+0x4], 0x1f
	mov eax, [ebp+0x18]
	add eax, 0x1c04
	mov [esp], eax
	mov edx, [ebp+0x10]
	mov eax, [ebp+0xc]
	call MSG_ReadDeltaHudElems
	mov ecx, [ebp+0x14]
	add ecx, 0x8a4
	mov dword [esp+0x4], 0x1f
	mov eax, [ebp+0x18]
	add eax, 0x8a4
	mov [esp], eax
	mov edx, [ebp+0x10]
	mov eax, [ebp+0xc]
	call MSG_ReadDeltaHudElems
	mov ebx, [ebp+0xc]
	mov ebx, [ebx+0x14]
	mov [ebp-0x2fdc], ebx
	mov edi, [ebp+0xc]
	mov esi, [edi+0x20]
	mov ebx, esi
	and ebx, 0x7
	jnz MSG_ReadDeltaPlayerstate_1160
MSG_ReadDeltaPlayerstate_1380:
	mov ecx, [edi+0x1c]
	mov edx, [edi+0x18]
	mov eax, [ebp-0x2fdc]
	add eax, edx
	cmp ecx, eax
	jl MSG_ReadDeltaPlayerstate_1170
	mov dword [edi], 0x1
MSG_ReadDeltaPlayerstate_1400:
	mov ebx, [ebp+0x18]
	mov esi, 0x80
	mov eax, [ebp-0x2fdc]
	jmp MSG_ReadDeltaPlayerstate_1180
MSG_ReadDeltaPlayerstate_1210:
	cmp ecx, [ebp-0x2fdc]
	jl MSG_ReadDeltaPlayerstate_1190
	mov edx, ecx
	sub edx, [ebp-0x2fdc]
	mov edi, [ebp+0xc]
	mov eax, [edi+0xc]
	movzx edx, byte [eax+edx]
MSG_ReadDeltaPlayerstate_1290:
	lea eax, [ecx+0x1]
	mov ecx, [ebp+0xc]
	mov [ecx+0x1c], eax
	mov eax, edx
	mov [ebx+0x81c], al
	add ebx, 0x1
	sub esi, 0x1
	jz MSG_ReadDeltaPlayerstate_1200
MSG_ReadDeltaPlayerstate_1220:
	mov edi, [ebp+0xc]
	mov ecx, [edi+0x1c]
	mov edx, [edi+0x18]
	mov eax, [edi+0x14]
	mov [ebp-0x2fdc], eax
MSG_ReadDeltaPlayerstate_1180:
	add eax, edx
	cmp ecx, eax
	jl MSG_ReadDeltaPlayerstate_1210
	mov edi, [ebp+0xc]
	mov dword [edi], 0x1
	mov eax, 0xffffffff
	mov [ebx+0x81c], al
	add ebx, 0x1
	sub esi, 0x1
	jnz MSG_ReadDeltaPlayerstate_1220
MSG_ReadDeltaPlayerstate_1200:
	add esp, 0x303c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MSG_ReadDeltaPlayerstate_1090:
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0x8]
	movzx eax, byte [eax+edx]
	mov edx, ecx
	jmp MSG_ReadDeltaPlayerstate_1230
MSG_ReadDeltaPlayerstate_940:
	mov ebx, [ebp+0xc]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	mov edx, ebx
	jmp MSG_ReadDeltaPlayerstate_1240
MSG_ReadDeltaPlayerstate_1040:
	lea esi, [ecx*8]
	mov [edx+0x20], esi
	add ecx, 0x1
	mov [edx+0x1c], ecx
	jmp MSG_ReadDeltaPlayerstate_1250
MSG_ReadDeltaPlayerstate_840:
	mov edx, [ebp+0xc]
	mov eax, [edx+0x8]
	movzx eax, byte [eax+ecx]
	jmp MSG_ReadDeltaPlayerstate_1260
MSG_ReadDeltaPlayerstate_830:
	mov dword [edx], 0x1
	mov dword [ebp-0x2f90], 0xffffffff
	jmp MSG_ReadDeltaPlayerstate_1270
MSG_ReadDeltaPlayerstate_1050:
	mov edi, [ebp-0x2fa4]
	xor esi, esi
MSG_ReadDeltaPlayerstate_1280:
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov [esp+0x10], edi
	mov eax, [ebp-0x2fd4]
	mov [esp+0xc], eax
	mov edx, [ebp-0x2fd0]
	mov [esp+0x8], edx
	mov ecx, [ebp+0x10]
	mov [esp+0x4], ecx
	mov eax, [ebp+0xc]
	mov [esp], eax
	call MSG_ReadDeltaField
	add esi, 0x1
	add edi, 0x10
	cmp ebx, esi
	jnz MSG_ReadDeltaPlayerstate_1280
	mov edx, [ebp+0xc]
	mov edx, [edx+0x14]
	mov [ebp-0x2fdc], edx
	jmp MSG_ReadDeltaPlayerstate_1110
MSG_ReadDeltaPlayerstate_1190:
	mov edx, [ebp+0xc]
	mov eax, [edx+0x8]
	movzx edx, byte [eax+ecx]
	jmp MSG_ReadDeltaPlayerstate_1290
MSG_ReadDeltaPlayerstate_730:
	mov ebx, [ebp+0xc]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	mov edx, ebx
	jmp MSG_ReadDeltaPlayerstate_1300
MSG_ReadDeltaPlayerstate_540:
	mov dword [edx], 0x1
	mov dword [ebp-0x2fc8], 0xffffffff
	jmp MSG_ReadDeltaPlayerstate_1310
MSG_ReadDeltaPlayerstate_550:
	mov ebx, [ebp+0xc]
	mov eax, [ebx+0x8]
	movzx eax, byte [ecx+eax]
	jmp MSG_ReadDeltaPlayerstate_1320
MSG_ReadDeltaPlayerstate_980:
	lea esi, [edx*8]
	mov edi, [ebp+0xc]
	mov [edi+0x20], esi
	lea ecx, [edx+0x1]
	mov [edi+0x1c], ecx
MSG_ReadDeltaPlayerstate_970:
	mov edx, esi
	sar edx, 0x3
	cmp edx, [ebp-0x2fdc]
	jl MSG_ReadDeltaPlayerstate_1330
	sub edx, [ebp-0x2fdc]
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edx, ecx
MSG_ReadDeltaPlayerstate_1560:
	add esi, 0x1
	mov [edx+0x20], esi
	mov ecx, ebx
	sar eax, cl
	test al, 0x1
	jnz MSG_ReadDeltaPlayerstate_1340
	mov edx, [ebp+0xc]
	mov esi, [edx+0x20]
	mov ebx, esi
	and ebx, 0x7
	jz MSG_ReadDeltaPlayerstate_1350
MSG_ReadDeltaPlayerstate_1140:
	mov edx, esi
	sar edx, 0x3
	cmp edx, [ebp-0x2fdc]
	jl MSG_ReadDeltaPlayerstate_1360
	sub edx, [ebp-0x2fdc]
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edx, ecx
MSG_ReadDeltaPlayerstate_1530:
	add esi, 0x1
	mov [edx+0x20], esi
	mov ecx, ebx
	sar eax, cl
	test al, 0x1
	jnz MSG_ReadDeltaPlayerstate_1370
	mov edi, [ebp+0xc]
	mov esi, [edi+0x20]
	mov ebx, esi
	and ebx, 0x7
	jz MSG_ReadDeltaPlayerstate_1380
MSG_ReadDeltaPlayerstate_1160:
	mov edx, esi
	sar edx, 0x3
	cmp edx, [ebp-0x2fdc]
	jl MSG_ReadDeltaPlayerstate_1390
	sub edx, [ebp-0x2fdc]
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0xc]
	movzx edx, byte [eax+edx]
MSG_ReadDeltaPlayerstate_1570:
	lea eax, [esi+0x1]
	mov [ecx+0x20], eax
	mov ecx, ebx
	sar edx, cl
	and dl, 0x1
	jz MSG_ReadDeltaPlayerstate_1200
	mov ebx, [ebp+0xc]
	mov ecx, [ebx+0x1c]
	mov edx, [ebx+0x18]
	jmp MSG_ReadDeltaPlayerstate_1400
MSG_ReadDeltaPlayerstate_1000:
	mov dword [ecx], 0x1
	mov eax, 0xffffffff
	jmp MSG_ReadDeltaPlayerstate_1410
MSG_ReadDeltaPlayerstate_820:
	mov dword [esp+0x8], _cstring_ps_ammoclip
	mov dword [esp+0x4], _cstring_s_
	mov dword [esp], 0x10
	call Com_Printf
	mov ebx, [ebp+0xc]
	mov ebx, [ebx+0x14]
	mov [ebp-0x2fdc], ebx
	mov eax, ebx
	jmp MSG_ReadDeltaPlayerstate_1420
MSG_ReadDeltaPlayerstate_110:
	xor edi, edi
	mov dword [ebp-0x2fcc], 0x0
	jmp MSG_ReadDeltaPlayerstate_1430
MSG_ReadDeltaPlayerstate_1470:
	sub edx, [ebp-0x2fdc]
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
MSG_ReadDeltaPlayerstate_1480:
	mov ecx, ebx
	sar eax, cl
	and eax, 0x1
	mov ecx, edi
	shl eax, cl
	or [ebp-0x2fcc], eax
	add esi, 0x1
	mov ebx, [ebp+0xc]
	mov [ebx+0x20], esi
	add edi, 0x1
	cmp [ebp-0x2fb8], edi
	jz MSG_ReadDeltaPlayerstate_1440
MSG_ReadDeltaPlayerstate_1430:
	mov eax, [ebp+0xc]
	mov esi, [eax+0x20]
	mov ebx, esi
	and ebx, 0x7
	jnz MSG_ReadDeltaPlayerstate_1450
	mov edx, eax
	mov ecx, [eax+0x1c]
	mov eax, [ebp-0x2fdc]
	add eax, [edx+0x18]
	cmp ecx, eax
	jge MSG_ReadDeltaPlayerstate_1460
	lea esi, [ecx*8]
	mov [edx+0x20], esi
	add ecx, 0x1
	mov [edx+0x1c], ecx
MSG_ReadDeltaPlayerstate_1450:
	mov edx, esi
	sar edx, 0x3
	cmp edx, [ebp-0x2fdc]
	jge MSG_ReadDeltaPlayerstate_1470
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0x8]
	movzx eax, byte [eax+edx]
	jmp MSG_ReadDeltaPlayerstate_1480
MSG_ReadDeltaPlayerstate_190:
	mov ecx, [edi+0x14]
	mov [ebp-0x2fdc], ecx
MSG_ReadDeltaPlayerstate_1590:
	mov edx, esi
	sar edx, 0x3
	cmp edx, [ebp-0x2fdc]
	jl MSG_ReadDeltaPlayerstate_1490
	sub edx, [ebp-0x2fdc]
	mov edi, [ebp+0xc]
	mov eax, [edi+0xc]
	movzx eax, byte [eax+edx]
MSG_ReadDeltaPlayerstate_1540:
	add esi, 0x1
	mov [edi+0x20], esi
	mov ecx, ebx
	sar eax, cl
	test al, 0x1
	jz MSG_ReadDeltaPlayerstate_450
	jmp MSG_ReadDeltaPlayerstate_1500
MSG_ReadDeltaPlayerstate_30:
	cmp eax, 0xfffffffe
	jz MSG_ReadDeltaPlayerstate_1510
MSG_ReadDeltaPlayerstate_20:
	mov dword [ebp-0x2fc0], 0x0
	jmp MSG_ReadDeltaPlayerstate_1520
MSG_ReadDeltaPlayerstate_1360:
	mov edi, [ebp+0xc]
	mov eax, [edi+0x8]
	movzx eax, byte [eax+edx]
	mov edx, edi
	jmp MSG_ReadDeltaPlayerstate_1530
MSG_ReadDeltaPlayerstate_1490:
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0x8]
	movzx eax, byte [eax+edx]
	mov edi, ecx
	jmp MSG_ReadDeltaPlayerstate_1540
MSG_ReadDeltaPlayerstate_770:
	mov edi, [ebp+0xc]
	mov eax, [edi+0x8]
	movzx eax, byte [eax+edx]
	mov edx, edi
	jmp MSG_ReadDeltaPlayerstate_1550
MSG_ReadDeltaPlayerstate_1330:
	mov edi, [ebp+0xc]
	mov eax, [edi+0x8]
	movzx eax, byte [eax+edx]
	mov edx, edi
	jmp MSG_ReadDeltaPlayerstate_1560
MSG_ReadDeltaPlayerstate_1390:
	mov edi, [ebp+0xc]
	mov eax, [edi+0x8]
	movzx edx, byte [eax+edx]
	mov ecx, edi
	jmp MSG_ReadDeltaPlayerstate_1570
MSG_ReadDeltaPlayerstate_180:
	mov edi, [ebp+0x18]
	add edi, 0x108
	mov esi, [ebp+0x18]
	add esi, 0x28
	mov ebx, [ebp+0x18]
	add ebx, 0x1c
	mov eax, [ebp+0x18]
	add eax, 0xac
	mov [esp+0x18], eax
	mov eax, [ebp+0x18]
	add eax, 0x8
	mov [esp+0x14], eax
	mov [esp+0x10], edi
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov edx, [ebp+0x18]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov eax, clients
	mov [esp], eax
	call CL_GetPredictedOriginForServerTime
	test al, al
	jnz MSG_ReadDeltaPlayerstate_1580
	mov dword [esp+0x4], _cstring_unable_to_find_t
	mov dword [esp], 0xe
	call Com_PrintError
	mov edx, [ebp+0x14]
	add edx, 0x1c
	mov ecx, [ebp+0x14]
	mov eax, [ecx+0x1c]
	mov ecx, [ebp+0x18]
	mov [ecx+0x1c], eax
	mov eax, [edx+0x4]
	mov [ebx+0x4], eax
	mov eax, [edx+0x8]
	mov [ebx+0x8], eax
	mov edx, [ebp+0x14]
	add edx, 0x28
	mov ebx, [ebp+0x14]
	mov eax, [ebx+0x28]
	mov [ecx+0x28], eax
	mov eax, [edx+0x4]
	mov [esi+0x4], eax
	mov eax, [edx+0x8]
	mov [esi+0x8], eax
	mov eax, [ebx+0x8]
	mov [ecx+0x8], eax
	mov eax, [ebx+0xac]
	mov [ecx+0xac], eax
	mov edx, ebx
	add edx, 0x108
	mov eax, [ebx+0x108]
	mov [ecx+0x108], eax
	mov eax, [edx+0x4]
	mov [edi+0x4], eax
	mov eax, [edx+0x8]
	mov [edi+0x8], eax
	jmp MSG_ReadDeltaPlayerstate_1580
MSG_ReadDeltaPlayerstate_200:
	lea esi, [ecx*8]
	mov edx, [ebp+0xc]
	mov [edx+0x20], esi
	add ecx, 0x1
	mov [edx+0x1c], ecx
	jmp MSG_ReadDeltaPlayerstate_1590
MSG_ReadDeltaPlayerstate_1150:
	lea esi, [edx*8]
	mov edi, [ebp+0xc]
	mov [edi+0x20], esi
	lea ecx, [edx+0x1]
	mov [edi+0x1c], ecx
	jmp MSG_ReadDeltaPlayerstate_1140
MSG_ReadDeltaPlayerstate_1170:
	lea esi, [ecx*8]
	mov eax, [ebp+0xc]
	mov [eax+0x20], esi
	add ecx, 0x1
	mov [eax+0x1c], ecx
	jmp MSG_ReadDeltaPlayerstate_1160
MSG_ReadDeltaPlayerstate_530:
	mov dword [esp+0x8], _cstring_ps_ammo
	mov dword [esp+0x4], _cstring_s_
	mov dword [esp], 0x10
	call Com_Printf
	mov ebx, [ebp+0xc]
	mov ebx, [ebx+0x14]
	mov [ebp-0x2fdc], ebx
	mov eax, ebx
	jmp MSG_ReadDeltaPlayerstate_1600
MSG_ReadDeltaPlayerstate_280:
	mov dword [edi], 0x1
	mov eax, 0xffffffff
	jmp MSG_ReadDeltaPlayerstate_1610
MSG_ReadDeltaPlayerstate_460:
	mov dword [ebx], 0x1
	mov eax, 0xffffffff
	jmp MSG_ReadDeltaPlayerstate_1620
MSG_ReadDeltaPlayerstate_360:
	mov dword [edx], 0x1
	mov eax, 0xffffffff
	jmp MSG_ReadDeltaPlayerstate_1630
MSG_ReadDeltaPlayerstate_320:
	mov dword [edx], 0x1
	mov eax, 0xffffffff
	jmp MSG_ReadDeltaPlayerstate_1640
MSG_ReadDeltaPlayerstate_290:
	mov edx, [ebp+0xc]
	mov eax, [edx+0x8]
	movzx eax, byte [ecx+eax]
	jmp MSG_ReadDeltaPlayerstate_1650
MSG_ReadDeltaPlayerstate_370:
	mov edi, [ebp+0xc]
	mov eax, [edi+0x8]
	movzx eax, byte [ecx+eax]
	jmp MSG_ReadDeltaPlayerstate_1660
MSG_ReadDeltaPlayerstate_330:
	mov edi, [ebp+0xc]
	mov eax, [edi+0x8]
	movzx eax, byte [ecx+eax]
	jmp MSG_ReadDeltaPlayerstate_1670
MSG_ReadDeltaPlayerstate_1460:
	mov dword [edx], 0x1
	mov dword [ebp-0x2fcc], 0xffffffff
	jmp MSG_ReadDeltaPlayerstate_1440
MSG_ReadDeltaPlayerstate_10:
	lea ebx, [ebp-0x2f80]
	mov dword [esp+0x8], 0x2f64
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call memset
	mov [ebp+0x14], ebx
	mov edx, ebx
	jmp MSG_ReadDeltaPlayerstate_1680
MSG_ReadDeltaPlayerstate_470:
	mov edi, [ebp+0xc]
	mov eax, [edi+0x8]
	movzx eax, byte [eax+ecx]
	mov edx, edi
	jmp MSG_ReadDeltaPlayerstate_1690
MSG_ReadDeltaPlayerstate_220:
	mov dword [esp+0x8], _cstring_ps_stats
	mov dword [esp+0x4], _cstring_s_
	mov dword [esp], 0x10
	call Com_Printf
	mov ebx, [ebp+0xc]
	mov ebx, [ebx+0x14]
	mov [ebp-0x2fdc], ebx
	jmp MSG_ReadDeltaPlayerstate_210
MSG_ReadDeltaPlayerstate_240:
	mov eax, [ebp+0xc]
	mov dword [eax], 0x1
	mov dword [ebp-0x2f8c], 0xffffffff
	jmp MSG_ReadDeltaPlayerstate_1700
MSG_ReadDeltaPlayerstate_430:
	mov ecx, [ebp+0xc]
	mov dword [ecx], 0x1
	mov dword [ebp-0x2fb4], 0xffffffff
	jmp MSG_ReadDeltaPlayerstate_410
MSG_ReadDeltaPlayerstate_130:
	cmp byte [ebp-0x2fb9], 0x0
	jz MSG_ReadDeltaPlayerstate_1710
	xor ebx, ebx
MSG_ReadDeltaPlayerstate_1720:
	mov dword [esp+0x18], 0x0
	mov eax, [ebp-0x2fc0]
	mov [esp+0x14], eax
	mov [esp+0x10], edi
	mov edx, [ebp+0x18]
	mov [esp+0xc], edx
	mov ecx, [ebp+0x14]
	mov [esp+0x8], ecx
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov edx, [ebp+0xc]
	mov [esp], edx
	call MSG_ReadDeltaField
	add ebx, 0x1
	add edi, 0x10
	cmp [ebp-0x2fcc], ebx
	jnz MSG_ReadDeltaPlayerstate_1720
	jmp MSG_ReadDeltaPlayerstate_1730
MSG_ReadDeltaPlayerstate_140:
	xor ebx, ebx
MSG_ReadDeltaPlayerstate_1740:
	mov dword [esp+0x18], 0x0
	mov eax, [ebp-0x2fc0]
	mov [esp+0x14], eax
	mov [esp+0x10], edi
	mov edx, [ebp+0x18]
	mov [esp+0xc], edx
	mov ecx, [ebp+0x14]
	mov [esp+0x8], ecx
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov edx, [ebp+0xc]
	mov [esp], edx
	call MSG_ReadDeltaField
	add ebx, 0x1
	add edi, 0x10
	cmp [ebp-0x2fcc], ebx
	jnz MSG_ReadDeltaPlayerstate_1740
	jmp MSG_ReadDeltaPlayerstate_1730
MSG_ReadDeltaPlayerstate_1710:
	xor ebx, ebx
MSG_ReadDeltaPlayerstate_1750:
	mov dword [esp+0x18], 0x0
	mov eax, [ebp-0x2fc0]
	mov [esp+0x14], eax
	mov [esp+0x10], edi
	mov edx, [ebp+0x18]
	mov [esp+0xc], edx
	mov ecx, [ebp+0x14]
	mov [esp+0x8], ecx
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov edx, [ebp+0xc]
	mov [esp], edx
	call MSG_ReadDeltaField
	add ebx, 0x1
	add edi, 0x10
	cmp [ebp-0x2fcc], ebx
	jnz MSG_ReadDeltaPlayerstate_1750
	jmp MSG_ReadDeltaPlayerstate_1730
	add [eax], al


;MSG_WriteDeltaUsercmdKey(msg_t*, int, usercmd_s const*, usercmd_s const*)
MSG_WriteDeltaUsercmdKey:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [ebp+0x14]
	mov edx, [eax]
	mov ecx, [ebp+0x10]
	sub edx, [ecx]
	cmp edx, 0xff
	ja MSG_WriteDeltaUsercmdKey_10
	mov ebx, [ebp+0x8]
	mov ebx, [ebx+0x20]
	mov [ebp-0x1c], ebx
	and ebx, 0x7
	jz MSG_WriteDeltaUsercmdKey_20
MSG_WriteDeltaUsercmdKey_830:
	sar dword [ebp-0x1c], 0x3
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+0x8]
	add [ebp-0x1c], ecx
	mov eax, 0x1
	mov ecx, ebx
	shl eax, cl
	mov ebx, [ebp-0x1c]
	or [ebx], al
	mov eax, [ebp+0x8]
	add dword [eax+0x20], 0x1
	mov esi, [eax+0x14]
MSG_WriteDeltaUsercmdKey_1530:
	mov ecx, [ebp+0x8]
	cmp esi, [ecx+0x10]
	jge MSG_WriteDeltaUsercmdKey_30
	mov eax, [ecx+0x8]
	mov [eax+esi], dl
	mov esi, [ecx+0x14]
	add esi, 0x1
	mov [ecx+0x14], esi
MSG_WriteDeltaUsercmdKey_1310:
	mov ecx, [ebp+0x14]
	movzx edx, byte [ecx+0x17]
	movzx eax, byte [ecx+0x16]
	cmp al, 0xa
	jle MSG_WriteDeltaUsercmdKey_40
MSG_WriteDeltaUsercmdKey_590:
	mov dword [ebp-0x18], 0x1
	cmp dl, 0xa
	jle MSG_WriteDeltaUsercmdKey_50
MSG_WriteDeltaUsercmdKey_600:
	or dword [ebp-0x18], 0x4
	mov ebx, [ebp+0x10]
	movzx edx, byte [ebx+0x17]
	movzx eax, byte [ebx+0x16]
	cmp al, 0xa
	jle MSG_WriteDeltaUsercmdKey_60
MSG_WriteDeltaUsercmdKey_610:
	mov edi, 0x1
	cmp dl, 0xa
	jle MSG_WriteDeltaUsercmdKey_70
MSG_WriteDeltaUsercmdKey_620:
	or edi, 0x4
	mov eax, [ebp+0x10]
	mov ebx, [eax+0x4]
	mov edx, [ebp+0x14]
	mov ecx, [edx+0x4]
	mov edx, ebx
	sar edx, 1
	mov eax, ecx
	sar eax, 1
	cmp edx, eax
	jz MSG_WriteDeltaUsercmdKey_80
MSG_WriteDeltaUsercmdKey_630:
	mov ebx, [ebp+0xc]
	xor ebx, 0x1
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x10]
	mov eax, edx
	sub eax, esi
	cmp eax, 0x3
	jg MSG_WriteDeltaUsercmdKey_90
	mov dword [ecx], 0x1
	mov eax, [ecx+0x20]
	mov [ebp-0x1c], eax
MSG_WriteDeltaUsercmdKey_950:
	mov eax, edx
	sub eax, esi
	cmp eax, 0x3
	jg MSG_WriteDeltaUsercmdKey_100
	mov ecx, [ebp+0x8]
	mov dword [ecx], 0x1
MSG_WriteDeltaUsercmdKey_920:
	mov ebx, [ebp+0xc]
	mov eax, [ebp+0x14]
	xor ebx, [eax+0x4]
	sub edx, esi
	cmp edx, 0x3
	jg MSG_WriteDeltaUsercmdKey_110
	mov edx, [ebp+0x8]
	mov dword [edx], 0x1
	mov ebx, [ebp+0x14]
	mov edx, [ebx+0x8]
	mov eax, [ebp+0x10]
	cmp [eax+0x8], dx
	jz MSG_WriteDeltaUsercmdKey_120
MSG_WriteDeltaUsercmdKey_860:
	mov ebx, [ebp-0x1c]
	and ebx, 0x7
	jnz MSG_WriteDeltaUsercmdKey_130
	mov ecx, [ebp+0x8]
	mov esi, [ecx+0x14]
	cmp esi, [ecx+0x10]
	jge MSG_WriteDeltaUsercmdKey_140
	lea eax, [esi*8]
	mov [ecx+0x20], eax
	mov eax, [ecx+0x8]
	mov byte [eax+esi], 0x0
	add dword [ecx+0x14], 0x1
	mov eax, [ecx+0x20]
	mov [ebp-0x1c], eax
MSG_WriteDeltaUsercmdKey_130:
	sar dword [ebp-0x1c], 0x3
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+0x8]
	add [ebp-0x1c], ecx
	mov eax, 0x1
	mov ecx, ebx
	shl eax, cl
	mov ebx, [ebp-0x1c]
	or [ebx], al
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x20]
	add ecx, 0x1
	mov [ebp-0x1c], ecx
	mov [eax+0x20], ecx
	mov esi, [eax+0x14]
MSG_WriteDeltaUsercmdKey_1470:
	mov ebx, [ebp+0xc]
	xor ebx, edx
	lea edx, [esi+0x2]
	mov eax, [ebp+0x8]
	cmp edx, [eax+0x10]
	jg MSG_WriteDeltaUsercmdKey_150
	mov ecx, eax
	mov eax, [eax+0x8]
	mov [eax+esi], bx
	mov [ecx+0x14], edx
	mov ebx, [ecx+0x20]
	mov [ebp-0x1c], ebx
MSG_WriteDeltaUsercmdKey_890:
	mov ecx, [ebp+0x14]
	mov edx, [ecx+0xc]
	mov ebx, [ebp+0x10]
	cmp [ebx+0xc], dx
	jz MSG_WriteDeltaUsercmdKey_160
MSG_WriteDeltaUsercmdKey_1030:
	mov ebx, [ebp-0x1c]
	and ebx, 0x7
	jnz MSG_WriteDeltaUsercmdKey_170
	mov eax, [ebp+0x8]
	mov esi, [eax+0x14]
	cmp esi, [eax+0x10]
	jge MSG_WriteDeltaUsercmdKey_180
	lea ecx, [esi*8]
	mov [eax+0x20], ecx
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	mov byte [eax+esi], 0x0
	add dword [ecx+0x14], 0x1
	mov eax, [ecx+0x20]
	mov [ebp-0x1c], eax
MSG_WriteDeltaUsercmdKey_170:
	sar dword [ebp-0x1c], 0x3
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+0x8]
	add [ebp-0x1c], ecx
	mov eax, 0x1
	mov ecx, ebx
	shl eax, cl
	mov ebx, [ebp-0x1c]
	or [ebx], al
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x20]
	add ecx, 0x1
	mov [ebp-0x1c], ecx
	mov [eax+0x20], ecx
	mov esi, [eax+0x14]
MSG_WriteDeltaUsercmdKey_1490:
	mov ebx, [ebp+0xc]
	xor ebx, edx
	lea edx, [esi+0x2]
	mov eax, [ebp+0x8]
	cmp edx, [eax+0x10]
	jg MSG_WriteDeltaUsercmdKey_190
	mov ecx, eax
	mov eax, [eax+0x8]
	mov [eax+esi], bx
	mov [ecx+0x14], edx
	mov ebx, [ecx+0x20]
	mov [ebp-0x1c], ebx
MSG_WriteDeltaUsercmdKey_1050:
	cmp [ebp-0x18], edi
	jz MSG_WriteDeltaUsercmdKey_200
MSG_WriteDeltaUsercmdKey_960:
	mov edx, [ebp-0x1c]
	and edx, 0x7
	jnz MSG_WriteDeltaUsercmdKey_210
	mov ecx, [ebp+0x8]
	mov esi, [ecx+0x14]
	cmp esi, [ecx+0x10]
	jge MSG_WriteDeltaUsercmdKey_220
	lea ebx, [esi*8]
	mov [ecx+0x20], ebx
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	mov byte [eax+esi], 0x0
	add dword [ecx+0x14], 0x1
	mov ebx, [ecx+0x20]
	mov [ebp-0x1c], ebx
MSG_WriteDeltaUsercmdKey_210:
	sar dword [ebp-0x1c], 0x3
	mov eax, [ebp+0x8]
	mov eax, [eax+0x8]
	add [ebp-0x1c], eax
	mov eax, 0x1
	mov ecx, edx
	shl eax, cl
	mov ebx, [ebp-0x1c]
	or [ebx], al
	mov eax, [ebp+0x8]
	mov edx, [eax+0x20]
	add edx, 0x1
	mov [ebp-0x1c], edx
	mov [eax+0x20], edx
	mov esi, [eax+0x14]
MSG_WriteDeltaUsercmdKey_1480:
	mov ebx, [ebp-0x18]
	xor ebx, [ebp+0xc]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x10]
	sub eax, esi
	cmp eax, 0x3
	jg MSG_WriteDeltaUsercmdKey_230
MSG_WriteDeltaUsercmdKey_980:
	mov dword [ecx], 0x1
MSG_WriteDeltaUsercmdKey_1300:
	mov ebx, [ebp+0xc]
	mov ecx, [ebp+0x14]
	xor ebx, [ecx]
	mov [ebp-0x14], ebx
	mov edx, [ecx+0x10]
	mov eax, [ebp+0x10]
	cmp [eax+0x10], dx
	jz MSG_WriteDeltaUsercmdKey_240
MSG_WriteDeltaUsercmdKey_990:
	mov ebx, [ebp-0x1c]
	and ebx, 0x7
	jnz MSG_WriteDeltaUsercmdKey_250
	mov ecx, [ebp+0x8]
	mov esi, [ecx+0x14]
	cmp esi, [ecx+0x10]
	jge MSG_WriteDeltaUsercmdKey_260
	lea eax, [esi*8]
	mov [ecx+0x20], eax
	mov eax, [ecx+0x8]
	mov byte [eax+esi], 0x0
	add dword [ecx+0x14], 0x1
	mov eax, [ecx+0x20]
	mov [ebp-0x1c], eax
MSG_WriteDeltaUsercmdKey_250:
	sar dword [ebp-0x1c], 0x3
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+0x8]
	add [ebp-0x1c], ecx
	mov eax, 0x1
	mov ecx, ebx
	shl eax, cl
	mov ebx, [ebp-0x1c]
	or [ebx], al
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x20]
	add ecx, 0x1
	mov [ebp-0x1c], ecx
	mov [eax+0x20], ecx
	mov esi, [eax+0x14]
MSG_WriteDeltaUsercmdKey_1510:
	mov ebx, [ebp-0x14]
	xor ebx, edx
	lea edx, [esi+0x2]
	mov eax, [ebp+0x8]
	cmp edx, [eax+0x10]
	jg MSG_WriteDeltaUsercmdKey_270
	mov ecx, eax
	mov eax, [eax+0x8]
	mov [eax+esi], bx
	mov [ecx+0x14], edx
	mov ebx, [ecx+0x20]
	mov [ebp-0x1c], ebx
MSG_WriteDeltaUsercmdKey_1020:
	mov ecx, [ebp+0x14]
	mov edx, [ecx+0x4]
	sar edx, 1
	mov ebx, [ebp+0x10]
	mov eax, [ebx+0x4]
	sar eax, 1
	cmp edx, eax
	jz MSG_WriteDeltaUsercmdKey_280
MSG_WriteDeltaUsercmdKey_1230:
	mov ebx, [ebp-0x1c]
	and ebx, 0x7
	jnz MSG_WriteDeltaUsercmdKey_290
	mov eax, [ebp+0x8]
	mov esi, [eax+0x14]
	cmp esi, [eax+0x10]
	jge MSG_WriteDeltaUsercmdKey_300
	lea ecx, [esi*8]
	mov [eax+0x20], ecx
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	mov byte [eax+esi], 0x0
	add dword [ecx+0x14], 0x1
	mov eax, [ecx+0x20]
	mov [ebp-0x1c], eax
MSG_WriteDeltaUsercmdKey_290:
	sar dword [ebp-0x1c], 0x3
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+0x8]
	add [ebp-0x1c], ecx
	mov eax, 0x1
	mov ecx, ebx
	shl eax, cl
	mov ebx, [ebp-0x1c]
	or [ebx], al
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x20]
	add ecx, 0x1
	mov [ebp-0x1c], ecx
	mov [eax+0x20], ecx
	mov esi, [eax+0x14]
MSG_WriteDeltaUsercmdKey_1500:
	mov ebx, edx
	xor ebx, [ebp-0x14]
	mov edx, [ebp+0x8]
	mov eax, [edx+0x10]
	sub eax, esi
	cmp eax, 0x3
	jg MSG_WriteDeltaUsercmdKey_310
	mov dword [edx], 0x1
MSG_WriteDeltaUsercmdKey_1260:
	mov ecx, [ebp+0x14]
	movzx edx, byte [ecx+0x14]
	mov ebx, [ebp+0x10]
	movzx eax, byte [ebx+0x14]
	cmp edx, eax
	jz MSG_WriteDeltaUsercmdKey_320
MSG_WriteDeltaUsercmdKey_1190:
	mov ebx, [ebp-0x1c]
	and ebx, 0x7
	jnz MSG_WriteDeltaUsercmdKey_330
	mov eax, [ebp+0x8]
	mov esi, [eax+0x14]
	cmp esi, [eax+0x10]
	jge MSG_WriteDeltaUsercmdKey_340
	lea ecx, [esi*8]
	mov [eax+0x20], ecx
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	mov byte [eax+esi], 0x0
	add dword [ecx+0x14], 0x1
	mov eax, [ecx+0x20]
	mov [ebp-0x1c], eax
MSG_WriteDeltaUsercmdKey_330:
	sar dword [ebp-0x1c], 0x3
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+0x8]
	add [ebp-0x1c], ecx
	mov eax, 0x1
	mov ecx, ebx
	shl eax, cl
	mov ebx, [ebp-0x1c]
	or [ebx], al
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x20]
	add ecx, 0x1
	mov [ebp-0x1c], ecx
	mov [eax+0x20], ecx
	mov esi, [eax+0x14]
MSG_WriteDeltaUsercmdKey_1520:
	mov ebx, [ebp-0x14]
	xor ebx, edx
	mov edx, [ebp+0x8]
	mov eax, [edx+0x10]
	sub eax, esi
	cmp eax, 0x3
	jg MSG_WriteDeltaUsercmdKey_350
	mov dword [edx], 0x1
MSG_WriteDeltaUsercmdKey_1220:
	mov ecx, [ebp+0x14]
	movzx edx, byte [ecx+0x15]
	mov ebx, [ebp+0x10]
	movzx eax, byte [ebx+0x15]
	cmp edx, eax
	jz MSG_WriteDeltaUsercmdKey_360
MSG_WriteDeltaUsercmdKey_1130:
	mov ebx, [ebp-0x1c]
	and ebx, 0x7
	jnz MSG_WriteDeltaUsercmdKey_370
	mov eax, [ebp+0x8]
	mov esi, [eax+0x14]
	cmp esi, [eax+0x10]
	jge MSG_WriteDeltaUsercmdKey_380
	lea ecx, [esi*8]
	mov [eax+0x20], ecx
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	mov byte [eax+esi], 0x0
	add dword [ecx+0x14], 0x1
	mov eax, [ecx+0x20]
	mov [ebp-0x1c], eax
MSG_WriteDeltaUsercmdKey_370:
	sar dword [ebp-0x1c], 0x3
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+0x8]
	add [ebp-0x1c], ecx
	mov eax, 0x1
	mov ecx, ebx
	shl eax, cl
	mov ebx, [ebp-0x1c]
	or [ebx], al
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x20]
	add ecx, 0x1
	mov [ebp-0x1c], ecx
	mov [eax+0x20], ecx
	mov esi, [eax+0x14]
MSG_WriteDeltaUsercmdKey_1460:
	mov ebx, [ebp-0x14]
	xor ebx, edx
	mov edx, [ebp+0x8]
	mov eax, [edx+0x10]
	sub eax, esi
	cmp eax, 0x3
	jg MSG_WriteDeltaUsercmdKey_390
	mov dword [edx], 0x1
MSG_WriteDeltaUsercmdKey_1090:
	mov ecx, [ebp+0x14]
	mov eax, [ecx+0x4]
	test eax, 0x10000
	jz MSG_WriteDeltaUsercmdKey_400
	movsx edx, byte [ecx+0x1d]
	mov ebx, [ebp+0x10]
	movsx eax, byte [ebx+0x1d]
	cmp al, dl
	jz MSG_WriteDeltaUsercmdKey_410
	mov ebx, [ebp-0x1c]
	and ebx, 0x7
	jz MSG_WriteDeltaUsercmdKey_420
MSG_WriteDeltaUsercmdKey_1640:
	sar dword [ebp-0x1c], 0x3
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+0x8]
	add [ebp-0x1c], ecx
	mov eax, 0x1
	mov ecx, ebx
	shl eax, cl
	mov ebx, [ebp-0x1c]
	or [ebx], al
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x20]
	add ecx, 0x1
	mov [ebp-0x1c], ecx
	mov [eax+0x20], ecx
	mov esi, [eax+0x14]
MSG_WriteDeltaUsercmdKey_1450:
	xor edx, [ebp-0x14]
	mov ebx, [ebp+0x8]
	cmp esi, [ebx+0x10]
	jge MSG_WriteDeltaUsercmdKey_430
	mov eax, [ebx+0x8]
	mov [eax+esi], dl
	add dword [ebx+0x14], 0x1
	mov eax, [ebx+0x20]
	mov [ebp-0x1c], eax
MSG_WriteDeltaUsercmdKey_1630:
	mov ecx, [ebp+0x14]
	movsx edx, byte [ecx+0x1e]
	mov ebx, [ebp+0x10]
	movsx eax, byte [ebx+0x1e]
	cmp al, dl
	jz MSG_WriteDeltaUsercmdKey_440
MSG_WriteDeltaUsercmdKey_1410:
	mov ebx, [ebp-0x1c]
	and ebx, 0x7
	jnz MSG_WriteDeltaUsercmdKey_450
	mov eax, [ebp+0x8]
	mov esi, [eax+0x14]
	cmp esi, [eax+0x10]
	jl MSG_WriteDeltaUsercmdKey_460
	mov dword [eax], 0x1
	xor edx, [ebp-0x14]
	mov ecx, [ebp+0x8]
	cmp esi, [ecx+0x10]
	jge MSG_WriteDeltaUsercmdKey_470
MSG_WriteDeltaUsercmdKey_1570:
	mov eax, [ecx+0x8]
	mov [eax+esi], dl
	add dword [ecx+0x14], 0x1
	mov ebx, [ebp+0x14]
	mov eax, [ebx+0x4]
MSG_WriteDeltaUsercmdKey_400:
	test al, 0x4
	jz MSG_WriteDeltaUsercmdKey_480
	movss xmm0, dword [_float_182_04444885]
	mov ecx, [ebp+0x14]
	movss xmm1, dword [ecx+0x18]
	mulss xmm1, xmm0
	movss xmm2, dword [_float_0_50000000]
	addss xmm1, xmm2
	cvttss2si eax, xmm1
	movzx edx, ax
	mov ebx, [ebp+0x10]
	mulss xmm0, [ebx+0x18]
	addss xmm0, xmm2
	cvttss2si eax, xmm0
	cmp ax, dx
	jz MSG_WriteDeltaUsercmdKey_490
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+0x20]
	mov [ebp-0x1c], ecx
	mov ebx, ecx
	and ebx, 0x7
	jnz MSG_WriteDeltaUsercmdKey_500
	mov eax, [ebp+0x8]
	mov esi, [eax+0x14]
	cmp esi, [eax+0x10]
	jge MSG_WriteDeltaUsercmdKey_510
	lea ecx, [esi*8]
	mov [eax+0x20], ecx
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	mov byte [eax+esi], 0x0
	add dword [ecx+0x14], 0x1
	mov eax, [ecx+0x20]
	mov [ebp-0x1c], eax
MSG_WriteDeltaUsercmdKey_500:
	sar dword [ebp-0x1c], 0x3
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+0x8]
	add [ebp-0x1c], ecx
	mov eax, 0x1
	mov ecx, ebx
	shl eax, cl
	mov ebx, [ebp-0x1c]
	or [ebx], al
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x20]
	add ecx, 0x1
	mov [ebp-0x1c], ecx
	mov [eax+0x20], ecx
	mov esi, [eax+0x14]
MSG_WriteDeltaUsercmdKey_1550:
	mov ebx, [ebp-0x14]
	xor ebx, edx
	lea edx, [esi+0x2]
	mov eax, [ebp+0x8]
	cmp edx, [eax+0x10]
	jg MSG_WriteDeltaUsercmdKey_520
	mov ecx, eax
	mov eax, [eax+0x8]
	mov [eax+esi], bx
	mov [ecx+0x14], edx
	mov ebx, [ecx+0x20]
	mov [ebp-0x1c], ebx
MSG_WriteDeltaUsercmdKey_1600:
	mov ecx, [ebp+0x14]
	movzx edx, byte [ecx+0x1c]
	mov ebx, [ebp+0x10]
	movzx eax, byte [ebx+0x1c]
	cmp edx, eax
	jz MSG_WriteDeltaUsercmdKey_530
MSG_WriteDeltaUsercmdKey_1380:
	mov ebx, [ebp-0x1c]
	and ebx, 0x7
	jnz MSG_WriteDeltaUsercmdKey_540
	mov eax, [ebp+0x8]
	mov esi, [eax+0x14]
	cmp esi, [eax+0x10]
	jge MSG_WriteDeltaUsercmdKey_550
	lea ecx, [esi*8]
	mov [eax+0x20], ecx
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	mov byte [eax+esi], 0x0
	add dword [ecx+0x14], 0x1
	mov eax, [ecx+0x20]
	mov [ebp-0x1c], eax
MSG_WriteDeltaUsercmdKey_540:
	sar dword [ebp-0x1c], 0x3
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+0x8]
	add [ebp-0x1c], ecx
	mov eax, 0x1
	mov ecx, ebx
	shl eax, cl
	mov ebx, [ebp-0x1c]
	or [ebx], al
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x20]
	add ecx, 0x1
	mov [ebp-0x1c], ecx
	mov [eax+0x20], ecx
	mov esi, [eax+0x14]
MSG_WriteDeltaUsercmdKey_1560:
	mov ebx, [ebp-0x14]
	xor ebx, edx
	mov edx, [ebp+0x8]
	mov eax, [edx+0x10]
	sub eax, esi
	cmp eax, 0x3
	jg MSG_WriteDeltaUsercmdKey_560
	mov dword [edx], 0x1
MSG_WriteDeltaUsercmdKey_480:
	add esp, 0x10
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MSG_WriteDeltaUsercmdKey_10:
	mov eax, [ebp+0x8]
	mov eax, [eax+0x20]
	mov [ebp-0x1c], eax
	test al, 0x7
	jz MSG_WriteDeltaUsercmdKey_570
	mov edx, [ebp+0x8]
	mov esi, [edx+0x14]
	mov ecx, edx
MSG_WriteDeltaUsercmdKey_810:
	add dword [ebp-0x1c], 0x1
	mov ebx, [ebp-0x1c]
	mov [ecx+0x20], ebx
MSG_WriteDeltaUsercmdKey_1540:
	mov eax, [ebp+0x14]
	mov ecx, [eax]
	lea edx, [esi+0x4]
	mov ebx, [ebp+0x8]
	cmp edx, [ebx+0x10]
	jg MSG_WriteDeltaUsercmdKey_580
	mov eax, [ebx+0x8]
	mov [eax+esi], ecx
	mov esi, edx
	mov [ebx+0x14], edx
	mov ecx, [ebp+0x14]
	movzx edx, byte [ecx+0x17]
	movzx eax, byte [ecx+0x16]
	cmp al, 0xa
	jg MSG_WriteDeltaUsercmdKey_590
MSG_WriteDeltaUsercmdKey_40:
	cmp al, 0xf5
	setle al
	movzx eax, al
	add eax, eax
	mov [ebp-0x18], eax
	cmp dl, 0xa
	jg MSG_WriteDeltaUsercmdKey_600
MSG_WriteDeltaUsercmdKey_50:
	mov eax, [ebp-0x18]
	or eax, 0x8
	cmp dl, 0xf5
	cmovg eax, [ebp-0x18]
	mov [ebp-0x18], eax
	mov ebx, [ebp+0x10]
	movzx edx, byte [ebx+0x17]
	movzx eax, byte [ebx+0x16]
	cmp al, 0xa
	jg MSG_WriteDeltaUsercmdKey_610
MSG_WriteDeltaUsercmdKey_60:
	cmp al, 0xf5
	setle al
	movzx edi, al
	add edi, edi
	cmp dl, 0xa
	jg MSG_WriteDeltaUsercmdKey_620
MSG_WriteDeltaUsercmdKey_70:
	mov eax, edi
	or eax, 0x8
	cmp dl, 0xf5
	cmovle edi, eax
	mov eax, [ebp+0x10]
	mov ebx, [eax+0x4]
	mov edx, [ebp+0x14]
	mov ecx, [edx+0x4]
	mov edx, ebx
	sar edx, 1
	mov eax, ecx
	sar eax, 1
	cmp edx, eax
	jnz MSG_WriteDeltaUsercmdKey_630
MSG_WriteDeltaUsercmdKey_80:
	mov edx, [ebp+0x10]
	movzx eax, word [edx+0x14]
	mov edx, [ebp+0x14]
	cmp ax, [edx+0x14]
	jnz MSG_WriteDeltaUsercmdKey_630
	mov edx, [ebp+0x10]
	mov eax, [edx+0x10]
	mov edx, [ebp+0x14]
	cmp eax, [edx+0x10]
	jnz MSG_WriteDeltaUsercmdKey_630
	mov eax, [ebp+0x10]
	movss xmm0, dword [eax+0x18]
	ucomiss xmm0, [edx+0x18]
	jnz MSG_WriteDeltaUsercmdKey_630
	jp MSG_WriteDeltaUsercmdKey_630
	movzx eax, byte [eax+0x1c]
	mov edx, [ebp+0x14]
	cmp al, [edx+0x1c]
	jnz MSG_WriteDeltaUsercmdKey_630
	mov edx, [ebp+0x10]
	mov eax, [edx+0x8]
	mov edx, [ebp+0x14]
	cmp eax, [edx+0x8]
	jz MSG_WriteDeltaUsercmdKey_640
MSG_WriteDeltaUsercmdKey_1880:
	mov ebx, [ebp+0xc]
	xor ebx, 0x1
	mov eax, [ebp+0x8]
	mov edx, [eax+0x10]
	mov eax, edx
	sub eax, esi
	cmp eax, 0x3
	jg MSG_WriteDeltaUsercmdKey_650
	mov ecx, [ebp+0x8]
	mov dword [ecx], 0x1
	mov ebx, [ecx+0x20]
	mov [ebp-0x1c], ebx
MSG_WriteDeltaUsercmdKey_1700:
	mov eax, edx
	sub eax, esi
	cmp eax, 0x3
	jg MSG_WriteDeltaUsercmdKey_660
	mov eax, [ebp+0x8]
	mov dword [eax], 0x1
MSG_WriteDeltaUsercmdKey_1790:
	mov ecx, [ebp+0xc]
	mov eax, [ebp+0x14]
	xor ecx, [eax]
	mov [ebp-0x10], ecx
	mov ebx, ecx
	xor ebx, [eax+0x4]
	sub edx, esi
	cmp edx, 0x3
	jg MSG_WriteDeltaUsercmdKey_670
	mov ebx, [ebp+0x8]
	mov dword [ebx], 0x1
MSG_WriteDeltaUsercmdKey_1760:
	mov eax, [ebp+0x14]
	mov ebx, [eax+0x8]
	mov edx, [ebp+0x10]
	cmp [edx+0x8], bx
	jz MSG_WriteDeltaUsercmdKey_680
	mov edx, [ebp-0x1c]
	and edx, 0x7
	jnz MSG_WriteDeltaUsercmdKey_690
	mov ecx, [ebp+0x8]
	mov esi, [ecx+0x14]
	cmp esi, [ecx+0x10]
	jl MSG_WriteDeltaUsercmdKey_700
	mov dword [ecx], 0x1
MSG_WriteDeltaUsercmdKey_1650:
	xor ebx, [ebp-0x10]
	lea edx, [esi+0x2]
	mov ecx, [ebp+0x8]
	cmp edx, [ecx+0x10]
	jg MSG_WriteDeltaUsercmdKey_710
	mov eax, [ecx+0x8]
	mov [eax+esi], bx
	mov [ecx+0x14], edx
	mov ebx, [ecx+0x20]
	mov [ebp-0x1c], ebx
MSG_WriteDeltaUsercmdKey_1800:
	mov edx, [ebp+0x14]
	mov ebx, [edx+0xc]
	mov ecx, [ebp+0x10]
	cmp [ecx+0xc], bx
	jz MSG_WriteDeltaUsercmdKey_720
	mov edx, [ebp-0x1c]
	and edx, 0x7
	jnz MSG_WriteDeltaUsercmdKey_730
	mov ecx, [ebp+0x8]
	mov esi, [ecx+0x14]
	cmp esi, [ecx+0x10]
	jl MSG_WriteDeltaUsercmdKey_740
	mov dword [ecx], 0x1
MSG_WriteDeltaUsercmdKey_1670:
	xor ebx, [ebp-0x10]
	lea edx, [esi+0x2]
	mov ecx, [ebp+0x8]
	cmp edx, [ecx+0x10]
	jg MSG_WriteDeltaUsercmdKey_750
	mov eax, [ecx+0x8]
	mov [eax+esi], bx
	mov [ecx+0x14], edx
	mov ebx, [ecx+0x20]
	mov [ebp-0x1c], ebx
MSG_WriteDeltaUsercmdKey_1810:
	cmp [ebp-0x18], edi
	jz MSG_WriteDeltaUsercmdKey_760
	mov edx, [ebp-0x1c]
	and edx, 0x7
	jnz MSG_WriteDeltaUsercmdKey_770
	mov ecx, [ebp+0x8]
	mov esi, [ecx+0x14]
	cmp esi, [ecx+0x10]
	jl MSG_WriteDeltaUsercmdKey_780
	mov dword [ecx], 0x1
MSG_WriteDeltaUsercmdKey_1660:
	mov ebx, [ebp-0x18]
	xor ebx, [ebp-0x10]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x10]
	sub eax, esi
	cmp eax, 0x3
	jg MSG_WriteDeltaUsercmdKey_790
MSG_WriteDeltaUsercmdKey_1850:
	mov dword [ecx], 0x1
	jmp MSG_WriteDeltaUsercmdKey_480
MSG_WriteDeltaUsercmdKey_570:
	mov edx, [ebp+0x8]
	mov esi, [edx+0x14]
	cmp esi, [edx+0x10]
	jge MSG_WriteDeltaUsercmdKey_800
	lea ecx, [esi*8]
	mov [edx+0x20], ecx
	mov eax, [edx+0x8]
	mov byte [eax+esi], 0x0
	mov esi, [edx+0x14]
	add esi, 0x1
	mov [edx+0x14], esi
	mov eax, [edx+0x20]
	mov [ebp-0x1c], eax
	mov ecx, [ebp+0x8]
	jmp MSG_WriteDeltaUsercmdKey_810
MSG_WriteDeltaUsercmdKey_20:
	mov eax, [ebp+0x8]
	mov esi, [eax+0x14]
	cmp esi, [eax+0x10]
	jge MSG_WriteDeltaUsercmdKey_820
	lea ecx, [esi*8]
	mov [eax+0x20], ecx
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	mov byte [eax+esi], 0x0
	add dword [ecx+0x14], 0x1
	mov eax, [ecx+0x20]
	mov [ebp-0x1c], eax
	jmp MSG_WriteDeltaUsercmdKey_830
MSG_WriteDeltaUsercmdKey_110:
	mov edx, [ebp-0x1c]
	and edx, 0x7
	jnz MSG_WriteDeltaUsercmdKey_840
	lea ecx, [esi*8]
	mov eax, [ebp+0x8]
	mov [eax+0x20], ecx
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	mov byte [eax+esi], 0x0
	add dword [ecx+0x14], 0x1
	mov eax, [ecx+0x20]
	mov [ebp-0x1c], eax
MSG_WriteDeltaUsercmdKey_840:
	and bl, 0x1
	jz MSG_WriteDeltaUsercmdKey_850
	sar dword [ebp-0x1c], 0x3
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+0x8]
	add [ebp-0x1c], ecx
	mov eax, 0x1
	mov ecx, edx
	shl eax, cl
	mov ebx, [ebp-0x1c]
	or [ebx], al
	mov eax, [ebp+0x8]
	mov eax, [eax+0x20]
	mov [ebp-0x1c], eax
MSG_WriteDeltaUsercmdKey_850:
	add dword [ebp-0x1c], 0x1
	mov ecx, [ebp-0x1c]
	mov edx, [ebp+0x8]
	mov [edx+0x20], ecx
	mov ebx, [ebp+0x14]
	mov edx, [ebx+0x8]
	mov eax, [ebp+0x10]
	cmp [eax+0x8], dx
	jnz MSG_WriteDeltaUsercmdKey_860
MSG_WriteDeltaUsercmdKey_120:
	test byte [ebp-0x1c], 0x7
	jnz MSG_WriteDeltaUsercmdKey_870
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x14]
	cmp edx, [ecx+0x10]
	jl MSG_WriteDeltaUsercmdKey_880
	mov dword [ecx], 0x1
	jmp MSG_WriteDeltaUsercmdKey_890
MSG_WriteDeltaUsercmdKey_100:
	mov edx, [ebp-0x1c]
	and edx, 0x7
	jnz MSG_WriteDeltaUsercmdKey_900
	lea eax, [esi*8]
	mov ecx, [ebp+0x8]
	mov [ecx+0x20], eax
	mov eax, [ecx+0x8]
	mov byte [eax+esi], 0x0
	mov esi, [ecx+0x14]
	add esi, 0x1
	mov [ecx+0x14], esi
	mov eax, [ecx+0x20]
	mov [ebp-0x1c], eax
MSG_WriteDeltaUsercmdKey_900:
	and bl, 0x1
	jz MSG_WriteDeltaUsercmdKey_910
	sar dword [ebp-0x1c], 0x3
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+0x8]
	add [ebp-0x1c], ecx
	mov eax, 0x1
	mov ecx, edx
	shl eax, cl
	mov ebx, [ebp-0x1c]
	or [ebx], al
	mov eax, [ebp+0x8]
	mov eax, [eax+0x20]
	mov [ebp-0x1c], eax
	mov edx, [ebp+0x8]
	mov esi, [edx+0x14]
	mov ecx, edx
MSG_WriteDeltaUsercmdKey_1320:
	add dword [ebp-0x1c], 0x1
	mov ebx, [ebp-0x1c]
	mov [ecx+0x20], ebx
	mov edx, [ecx+0x10]
	jmp MSG_WriteDeltaUsercmdKey_920
MSG_WriteDeltaUsercmdKey_90:
	mov edx, [ecx+0x20]
	mov [ebp-0x1c], edx
	and edx, 0x7
	jnz MSG_WriteDeltaUsercmdKey_930
	lea ecx, [esi*8]
	mov eax, [ebp+0x8]
	mov [eax+0x20], ecx
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	mov byte [eax+esi], 0x0
	mov esi, [ecx+0x14]
	add esi, 0x1
	mov [ecx+0x14], esi
	mov eax, [ecx+0x20]
	mov [ebp-0x1c], eax
MSG_WriteDeltaUsercmdKey_930:
	test bl, 0x1
	jz MSG_WriteDeltaUsercmdKey_940
	sar dword [ebp-0x1c], 0x3
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+0x8]
	add [ebp-0x1c], ecx
	mov eax, 0x1
	mov ecx, edx
	shl eax, cl
	mov edx, [ebp-0x1c]
	or [edx], al
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+0x20]
	mov [ebp-0x1c], ecx
	mov eax, [ebp+0x8]
	mov esi, [eax+0x14]
	mov edx, eax
MSG_WriteDeltaUsercmdKey_1330:
	add dword [ebp-0x1c], 0x1
	mov ecx, [ebp-0x1c]
	mov [edx+0x20], ecx
	mov eax, [ebp+0x8]
	mov edx, [eax+0x10]
	jmp MSG_WriteDeltaUsercmdKey_950
MSG_WriteDeltaUsercmdKey_190:
	mov dword [eax], 0x1
	cmp [ebp-0x18], edi
	jnz MSG_WriteDeltaUsercmdKey_960
MSG_WriteDeltaUsercmdKey_200:
	test byte [ebp-0x1c], 0x7
	jnz MSG_WriteDeltaUsercmdKey_970
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x14]
	cmp edx, [ecx+0x10]
	jge MSG_WriteDeltaUsercmdKey_980
	lea ebx, [edx*8]
	mov [ecx+0x20], ebx
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	mov byte [eax+edx], 0x0
	add dword [ecx+0x14], 0x1
	mov ebx, [ecx+0x20]
	mov [ebp-0x1c], ebx
MSG_WriteDeltaUsercmdKey_970:
	add dword [ebp-0x1c], 0x1
	mov edx, [ebp-0x1c]
	mov eax, [ebp+0x8]
	mov [eax+0x20], edx
	mov ebx, [ebp+0xc]
	mov ecx, [ebp+0x14]
	xor ebx, [ecx]
	mov [ebp-0x14], ebx
	mov edx, [ecx+0x10]
	mov eax, [ebp+0x10]
	cmp [eax+0x10], dx
	jnz MSG_WriteDeltaUsercmdKey_990
MSG_WriteDeltaUsercmdKey_240:
	test byte [ebp-0x1c], 0x7
	jnz MSG_WriteDeltaUsercmdKey_1000
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x14]
	cmp edx, [ecx+0x10]
	jl MSG_WriteDeltaUsercmdKey_1010
	mov dword [ecx], 0x1
	jmp MSG_WriteDeltaUsercmdKey_1020
MSG_WriteDeltaUsercmdKey_150:
	mov dword [eax], 0x1
	mov ecx, [ebp+0x14]
	mov edx, [ecx+0xc]
	mov ebx, [ebp+0x10]
	cmp [ebx+0xc], dx
	jnz MSG_WriteDeltaUsercmdKey_1030
MSG_WriteDeltaUsercmdKey_160:
	test byte [ebp-0x1c], 0x7
	jnz MSG_WriteDeltaUsercmdKey_1040
	mov eax, [ebp+0x8]
	mov edx, [eax+0x14]
	cmp edx, [eax+0x10]
	jge MSG_WriteDeltaUsercmdKey_190
	mov ebx, eax
	lea ecx, [edx*8]
	mov [eax+0x20], ecx
	mov eax, [eax+0x8]
	mov byte [eax+edx], 0x0
	add dword [ebx+0x14], 0x1
	mov eax, [ebx+0x20]
	mov [ebp-0x1c], eax
MSG_WriteDeltaUsercmdKey_1040:
	add dword [ebp-0x1c], 0x1
	mov ecx, [ebp-0x1c]
	mov edx, [ebp+0x8]
	mov [edx+0x20], ecx
	jmp MSG_WriteDeltaUsercmdKey_1050
MSG_WriteDeltaUsercmdKey_390:
	mov esi, 0x7
MSG_WriteDeltaUsercmdKey_1080:
	sub esi, 0x1
	mov edi, [ebp-0x1c]
	and edi, 0x7
	jnz MSG_WriteDeltaUsercmdKey_1060
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x14]
	lea eax, [edx*8]
	mov [ecx+0x20], eax
	mov eax, [ecx+0x8]
	mov byte [eax+edx], 0x0
	add dword [ecx+0x14], 0x1
	mov edx, [ecx+0x20]
	mov [ebp-0x1c], edx
MSG_WriteDeltaUsercmdKey_1060:
	test bl, 0x1
	jz MSG_WriteDeltaUsercmdKey_1070
	sar dword [ebp-0x1c], 0x3
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+0x8]
	add [ebp-0x1c], ecx
	mov eax, 0x1
	mov ecx, edi
	shl eax, cl
	mov edx, [ebp-0x1c]
	or [edx], al
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+0x20]
	mov [ebp-0x1c], ecx
MSG_WriteDeltaUsercmdKey_1070:
	add dword [ebp-0x1c], 0x1
	mov edx, [ebp-0x1c]
	mov eax, [ebp+0x8]
	mov [eax+0x20], edx
	sar ebx, 1
	test esi, esi
	jnz MSG_WriteDeltaUsercmdKey_1080
	jmp MSG_WriteDeltaUsercmdKey_1090
MSG_WriteDeltaUsercmdKey_350:
	mov esi, 0x7
MSG_WriteDeltaUsercmdKey_1120:
	sub esi, 0x1
	mov edi, [ebp-0x1c]
	and edi, 0x7
	jnz MSG_WriteDeltaUsercmdKey_1100
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x14]
	lea eax, [edx*8]
	mov [ecx+0x20], eax
	mov eax, [ecx+0x8]
	mov byte [eax+edx], 0x0
	add dword [ecx+0x14], 0x1
	mov edx, [ecx+0x20]
	mov [ebp-0x1c], edx
MSG_WriteDeltaUsercmdKey_1100:
	test bl, 0x1
	jz MSG_WriteDeltaUsercmdKey_1110
	sar dword [ebp-0x1c], 0x3
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+0x8]
	add [ebp-0x1c], ecx
	mov eax, 0x1
	mov ecx, edi
	shl eax, cl
	mov edx, [ebp-0x1c]
	or [edx], al
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+0x20]
	mov [ebp-0x1c], ecx
MSG_WriteDeltaUsercmdKey_1110:
	add dword [ebp-0x1c], 0x1
	mov edx, [ebp-0x1c]
	mov eax, [ebp+0x8]
	mov [eax+0x20], edx
	sar ebx, 1
	test esi, esi
	jnz MSG_WriteDeltaUsercmdKey_1120
	mov ecx, [ebp+0x14]
	movzx edx, byte [ecx+0x15]
	mov ebx, [ebp+0x10]
	movzx eax, byte [ebx+0x15]
	cmp edx, eax
	jnz MSG_WriteDeltaUsercmdKey_1130
MSG_WriteDeltaUsercmdKey_360:
	test byte [ebp-0x1c], 0x7
	jnz MSG_WriteDeltaUsercmdKey_1140
	mov eax, [ebp+0x8]
	mov edx, [eax+0x14]
	cmp edx, [eax+0x10]
	jl MSG_WriteDeltaUsercmdKey_1150
	mov dword [eax], 0x1
	jmp MSG_WriteDeltaUsercmdKey_1090
MSG_WriteDeltaUsercmdKey_310:
	mov esi, 0x14
MSG_WriteDeltaUsercmdKey_1180:
	sub esi, 0x1
	mov edi, [ebp-0x1c]
	and edi, 0x7
	jnz MSG_WriteDeltaUsercmdKey_1160
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x14]
	lea eax, [edx*8]
	mov [ecx+0x20], eax
	mov eax, [ecx+0x8]
	mov byte [eax+edx], 0x0
	add dword [ecx+0x14], 0x1
	mov edx, [ecx+0x20]
	mov [ebp-0x1c], edx
MSG_WriteDeltaUsercmdKey_1160:
	test bl, 0x1
	jz MSG_WriteDeltaUsercmdKey_1170
	sar dword [ebp-0x1c], 0x3
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+0x8]
	add [ebp-0x1c], ecx
	mov eax, 0x1
	mov ecx, edi
	shl eax, cl
	mov edx, [ebp-0x1c]
	or [edx], al
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+0x20]
	mov [ebp-0x1c], ecx
MSG_WriteDeltaUsercmdKey_1170:
	add dword [ebp-0x1c], 0x1
	mov edx, [ebp-0x1c]
	mov eax, [ebp+0x8]
	mov [eax+0x20], edx
	sar ebx, 1
	test esi, esi
	jnz MSG_WriteDeltaUsercmdKey_1180
	mov ecx, [ebp+0x14]
	movzx edx, byte [ecx+0x14]
	mov ebx, [ebp+0x10]
	movzx eax, byte [ebx+0x14]
	cmp edx, eax
	jnz MSG_WriteDeltaUsercmdKey_1190
MSG_WriteDeltaUsercmdKey_320:
	test byte [ebp-0x1c], 0x7
	jnz MSG_WriteDeltaUsercmdKey_1200
	mov eax, [ebp+0x8]
	mov edx, [eax+0x14]
	cmp edx, [eax+0x10]
	jl MSG_WriteDeltaUsercmdKey_1210
	mov dword [eax], 0x1
	jmp MSG_WriteDeltaUsercmdKey_1220
MSG_WriteDeltaUsercmdKey_270:
	mov dword [eax], 0x1
	mov ecx, [ebp+0x14]
	mov edx, [ecx+0x4]
	sar edx, 1
	mov ebx, [ebp+0x10]
	mov eax, [ebx+0x4]
	sar eax, 1
	cmp edx, eax
	jnz MSG_WriteDeltaUsercmdKey_1230
MSG_WriteDeltaUsercmdKey_280:
	test byte [ebp-0x1c], 0x7
	jnz MSG_WriteDeltaUsercmdKey_1240
	mov eax, [ebp+0x8]
	mov edx, [eax+0x14]
	cmp edx, [eax+0x10]
	jl MSG_WriteDeltaUsercmdKey_1250
	mov dword [eax], 0x1
	jmp MSG_WriteDeltaUsercmdKey_1260
MSG_WriteDeltaUsercmdKey_230:
	mov esi, 0x4
MSG_WriteDeltaUsercmdKey_1290:
	sub esi, 0x1
	mov edi, [ebp-0x1c]
	and edi, 0x7
	jnz MSG_WriteDeltaUsercmdKey_1270
	mov eax, [ebp+0x8]
	mov edx, [eax+0x14]
	lea ecx, [edx*8]
	mov [eax+0x20], ecx
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	mov byte [eax+edx], 0x0
	add dword [ecx+0x14], 0x1
	mov eax, [ecx+0x20]
	mov [ebp-0x1c], eax
MSG_WriteDeltaUsercmdKey_1270:
	test bl, 0x1
	jz MSG_WriteDeltaUsercmdKey_1280
	sar dword [ebp-0x1c], 0x3
	mov edx, [ebp+0x8]
	mov edx, [edx+0x8]
	add [ebp-0x1c], edx
	mov eax, 0x1
	mov ecx, edi
	shl eax, cl
	mov edx, [ebp-0x1c]
	or [edx], al
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+0x20]
	mov [ebp-0x1c], ecx
MSG_WriteDeltaUsercmdKey_1280:
	add dword [ebp-0x1c], 0x1
	mov edx, [ebp-0x1c]
	mov eax, [ebp+0x8]
	mov [eax+0x20], edx
	sar ebx, 1
	test esi, esi
	jnz MSG_WriteDeltaUsercmdKey_1290
	jmp MSG_WriteDeltaUsercmdKey_1300
MSG_WriteDeltaUsercmdKey_880:
	lea ebx, [edx*8]
	mov [ecx+0x20], ebx
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	mov byte [eax+edx], 0x0
	add dword [ecx+0x14], 0x1
	mov ebx, [ecx+0x20]
	mov [ebp-0x1c], ebx
MSG_WriteDeltaUsercmdKey_870:
	add dword [ebp-0x1c], 0x1
	mov edx, [ebp-0x1c]
	mov eax, [ebp+0x8]
	mov [eax+0x20], edx
	jmp MSG_WriteDeltaUsercmdKey_890
MSG_WriteDeltaUsercmdKey_1210:
	mov ebx, eax
	lea ecx, [edx*8]
	mov [eax+0x20], ecx
	mov eax, [eax+0x8]
	mov byte [eax+edx], 0x0
	add dword [ebx+0x14], 0x1
	mov eax, [ebx+0x20]
	mov [ebp-0x1c], eax
MSG_WriteDeltaUsercmdKey_1200:
	add dword [ebp-0x1c], 0x1
	mov ecx, [ebp-0x1c]
	mov edx, [ebp+0x8]
	mov [edx+0x20], ecx
	jmp MSG_WriteDeltaUsercmdKey_1220
MSG_WriteDeltaUsercmdKey_1250:
	mov ebx, eax
	lea ecx, [edx*8]
	mov [eax+0x20], ecx
	mov eax, [eax+0x8]
	mov byte [eax+edx], 0x0
	add dword [ebx+0x14], 0x1
	mov eax, [ebx+0x20]
	mov [ebp-0x1c], eax
MSG_WriteDeltaUsercmdKey_1240:
	add dword [ebp-0x1c], 0x1
	mov ecx, [ebp-0x1c]
	mov edx, [ebp+0x8]
	mov [edx+0x20], ecx
	jmp MSG_WriteDeltaUsercmdKey_1260
MSG_WriteDeltaUsercmdKey_1150:
	mov ebx, eax
	lea ecx, [edx*8]
	mov [eax+0x20], ecx
	mov eax, [eax+0x8]
	mov byte [eax+edx], 0x0
	add dword [ebx+0x14], 0x1
	mov eax, [ebx+0x20]
	mov [ebp-0x1c], eax
MSG_WriteDeltaUsercmdKey_1140:
	add dword [ebp-0x1c], 0x1
	mov ecx, [ebp-0x1c]
	mov edx, [ebp+0x8]
	mov [edx+0x20], ecx
	jmp MSG_WriteDeltaUsercmdKey_1090
MSG_WriteDeltaUsercmdKey_1010:
	lea ebx, [edx*8]
	mov [ecx+0x20], ebx
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	mov byte [eax+edx], 0x0
	add dword [ecx+0x14], 0x1
	mov ebx, [ecx+0x20]
	mov [ebp-0x1c], ebx
MSG_WriteDeltaUsercmdKey_1000:
	add dword [ebp-0x1c], 0x1
	mov edx, [ebp-0x1c]
	mov eax, [ebp+0x8]
	mov [eax+0x20], edx
	jmp MSG_WriteDeltaUsercmdKey_1020
MSG_WriteDeltaUsercmdKey_30:
	mov dword [ecx], 0x1
	jmp MSG_WriteDeltaUsercmdKey_1310
MSG_WriteDeltaUsercmdKey_580:
	mov dword [ebx], 0x1
	jmp MSG_WriteDeltaUsercmdKey_1310
MSG_WriteDeltaUsercmdKey_910:
	mov ecx, [ebp+0x8]
	jmp MSG_WriteDeltaUsercmdKey_1320
MSG_WriteDeltaUsercmdKey_940:
	mov edx, [ebp+0x8]
	jmp MSG_WriteDeltaUsercmdKey_1330
MSG_WriteDeltaUsercmdKey_560:
	mov esi, 0x8
	jmp MSG_WriteDeltaUsercmdKey_1340
MSG_WriteDeltaUsercmdKey_1360:
	sar dword [ebp-0x1c], 0x3
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+0x8]
	add [ebp-0x1c], ecx
	mov eax, 0x1
	mov ecx, edi
	shl eax, cl
	mov edx, [ebp-0x1c]
	or [edx], al
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+0x20]
	mov [ebp-0x1c], ecx
	mov eax, ecx
MSG_WriteDeltaUsercmdKey_1370:
	add eax, 0x1
	mov [ebp-0x1c], eax
	mov edx, [ebp+0x8]
	mov [edx+0x20], eax
	sar ebx, 1
	test esi, esi
	jz MSG_WriteDeltaUsercmdKey_480
MSG_WriteDeltaUsercmdKey_1340:
	sub esi, 0x1
	mov edi, [ebp-0x1c]
	and edi, 0x7
	jnz MSG_WriteDeltaUsercmdKey_1350
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x14]
	lea eax, [edx*8]
	mov [ecx+0x20], eax
	mov eax, [ecx+0x8]
	mov byte [eax+edx], 0x0
	add dword [ecx+0x14], 0x1
	mov edx, [ecx+0x20]
	mov [ebp-0x1c], edx
MSG_WriteDeltaUsercmdKey_1350:
	test bl, 0x1
	jnz MSG_WriteDeltaUsercmdKey_1360
	mov eax, [ebp-0x1c]
	jmp MSG_WriteDeltaUsercmdKey_1370
MSG_WriteDeltaUsercmdKey_520:
	mov dword [eax], 0x1
	mov ecx, [ebp+0x14]
	movzx edx, byte [ecx+0x1c]
	mov ebx, [ebp+0x10]
	movzx eax, byte [ebx+0x1c]
	cmp edx, eax
	jnz MSG_WriteDeltaUsercmdKey_1380
MSG_WriteDeltaUsercmdKey_530:
	test byte [ebp-0x1c], 0x7
	jnz MSG_WriteDeltaUsercmdKey_1390
	mov eax, [ebp+0x8]
	mov edx, [eax+0x14]
	cmp edx, [eax+0x10]
	jge MSG_WriteDeltaUsercmdKey_1400
	mov ebx, eax
	lea ecx, [edx*8]
	mov [eax+0x20], ecx
	mov eax, [eax+0x8]
	mov byte [eax+edx], 0x0
	add dword [ebx+0x14], 0x1
	mov eax, [ebx+0x20]
	mov [ebp-0x1c], eax
MSG_WriteDeltaUsercmdKey_1390:
	add dword [ebp-0x1c], 0x1
	mov ecx, [ebp-0x1c]
	mov edx, [ebp+0x8]
	mov [edx+0x20], ecx
	add esp, 0x10
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MSG_WriteDeltaUsercmdKey_430:
	mov dword [ebx], 0x1
	mov ecx, [ebp+0x14]
	movsx edx, byte [ecx+0x1e]
	mov ebx, [ebp+0x10]
	movsx eax, byte [ebx+0x1e]
	cmp al, dl
	jnz MSG_WriteDeltaUsercmdKey_1410
MSG_WriteDeltaUsercmdKey_440:
	test byte [ebp-0x1c], 0x7
	jnz MSG_WriteDeltaUsercmdKey_1420
	mov eax, [ebp+0x8]
	mov edx, [eax+0x14]
	cmp edx, [eax+0x10]
	jge MSG_WriteDeltaUsercmdKey_1430
	mov ebx, eax
	lea ecx, [edx*8]
	mov [eax+0x20], ecx
	mov eax, [eax+0x8]
	mov byte [eax+edx], 0x0
	add dword [ebx+0x14], 0x1
	mov eax, [ebx+0x20]
	mov [ebp-0x1c], eax
MSG_WriteDeltaUsercmdKey_1420:
	add dword [ebp-0x1c], 0x1
	mov ecx, [ebp-0x1c]
	mov edx, [ebp+0x8]
	mov [edx+0x20], ecx
	mov ebx, [ebp+0x14]
	mov eax, [ebx+0x4]
	jmp MSG_WriteDeltaUsercmdKey_400
MSG_WriteDeltaUsercmdKey_420:
	mov eax, [ebp+0x8]
	mov esi, [eax+0x14]
	cmp esi, [eax+0x10]
	jl MSG_WriteDeltaUsercmdKey_1440
	mov dword [eax], 0x1
	jmp MSG_WriteDeltaUsercmdKey_1450
MSG_WriteDeltaUsercmdKey_380:
	mov dword [eax], 0x1
	jmp MSG_WriteDeltaUsercmdKey_1460
MSG_WriteDeltaUsercmdKey_140:
	mov dword [ecx], 0x1
	jmp MSG_WriteDeltaUsercmdKey_1470
MSG_WriteDeltaUsercmdKey_220:
	mov dword [ecx], 0x1
	jmp MSG_WriteDeltaUsercmdKey_1480
MSG_WriteDeltaUsercmdKey_180:
	mov dword [eax], 0x1
	jmp MSG_WriteDeltaUsercmdKey_1490
MSG_WriteDeltaUsercmdKey_300:
	mov dword [eax], 0x1
	jmp MSG_WriteDeltaUsercmdKey_1500
MSG_WriteDeltaUsercmdKey_260:
	mov dword [ecx], 0x1
	jmp MSG_WriteDeltaUsercmdKey_1510
MSG_WriteDeltaUsercmdKey_340:
	mov dword [eax], 0x1
	jmp MSG_WriteDeltaUsercmdKey_1520
MSG_WriteDeltaUsercmdKey_820:
	mov dword [eax], 0x1
	jmp MSG_WriteDeltaUsercmdKey_1530
MSG_WriteDeltaUsercmdKey_800:
	mov dword [edx], 0x1
	jmp MSG_WriteDeltaUsercmdKey_1540
MSG_WriteDeltaUsercmdKey_510:
	mov dword [eax], 0x1
	jmp MSG_WriteDeltaUsercmdKey_1550
MSG_WriteDeltaUsercmdKey_550:
	mov dword [eax], 0x1
	jmp MSG_WriteDeltaUsercmdKey_1560
MSG_WriteDeltaUsercmdKey_460:
	lea ecx, [esi*8]
	mov [eax+0x20], ecx
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	mov byte [eax+esi], 0x0
	add dword [ecx+0x14], 0x1
	mov eax, [ecx+0x20]
	mov [ebp-0x1c], eax
MSG_WriteDeltaUsercmdKey_450:
	sar dword [ebp-0x1c], 0x3
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+0x8]
	add [ebp-0x1c], ecx
	mov eax, 0x1
	mov ecx, ebx
	shl eax, cl
	mov ebx, [ebp-0x1c]
	or [ebx], al
	mov eax, [ebp+0x8]
	add dword [eax+0x20], 0x1
	mov esi, [eax+0x14]
	xor edx, [ebp-0x14]
	mov ecx, [ebp+0x8]
	cmp esi, [ecx+0x10]
	jl MSG_WriteDeltaUsercmdKey_1570
MSG_WriteDeltaUsercmdKey_470:
	mov dword [ecx], 0x1
	mov edx, [ebp+0x14]
	mov eax, [edx+0x4]
	jmp MSG_WriteDeltaUsercmdKey_400
MSG_WriteDeltaUsercmdKey_490:
	mov eax, [ebp+0x8]
	mov eax, [eax+0x20]
	mov [ebp-0x1c], eax
	test al, 0x7
	jnz MSG_WriteDeltaUsercmdKey_1580
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x14]
	cmp edx, [ecx+0x10]
	jge MSG_WriteDeltaUsercmdKey_1590
	lea ebx, [edx*8]
	mov [ecx+0x20], ebx
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	mov byte [eax+edx], 0x0
	add dword [ecx+0x14], 0x1
	mov ebx, [ecx+0x20]
	mov [ebp-0x1c], ebx
MSG_WriteDeltaUsercmdKey_1580:
	add dword [ebp-0x1c], 0x1
	mov edx, [ebp-0x1c]
	mov eax, [ebp+0x8]
	mov [eax+0x20], edx
	jmp MSG_WriteDeltaUsercmdKey_1600
MSG_WriteDeltaUsercmdKey_410:
	test byte [ebp-0x1c], 0x7
	jnz MSG_WriteDeltaUsercmdKey_1610
	mov eax, [ebp+0x8]
	mov edx, [eax+0x14]
	cmp edx, [eax+0x10]
	jge MSG_WriteDeltaUsercmdKey_1620
	mov ebx, eax
	lea ecx, [edx*8]
	mov [eax+0x20], ecx
	mov eax, [eax+0x8]
	mov byte [eax+edx], 0x0
	add dword [ebx+0x14], 0x1
	mov eax, [ebx+0x20]
	mov [ebp-0x1c], eax
MSG_WriteDeltaUsercmdKey_1610:
	add dword [ebp-0x1c], 0x1
	mov ecx, [ebp-0x1c]
	mov edx, [ebp+0x8]
	mov [edx+0x20], ecx
	jmp MSG_WriteDeltaUsercmdKey_1630
MSG_WriteDeltaUsercmdKey_1440:
	lea ecx, [esi*8]
	mov [eax+0x20], ecx
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	mov byte [eax+esi], 0x0
	add dword [ecx+0x14], 0x1
	mov eax, [ecx+0x20]
	mov [ebp-0x1c], eax
	jmp MSG_WriteDeltaUsercmdKey_1640
MSG_WriteDeltaUsercmdKey_1590:
	mov dword [ecx], 0x1
	jmp MSG_WriteDeltaUsercmdKey_1600
MSG_WriteDeltaUsercmdKey_1400:
	mov dword [eax], 0x1
	jmp MSG_WriteDeltaUsercmdKey_480
MSG_WriteDeltaUsercmdKey_1620:
	mov dword [eax], 0x1
	jmp MSG_WriteDeltaUsercmdKey_1630
MSG_WriteDeltaUsercmdKey_1430:
	mov dword [eax], 0x1
	mov eax, [ecx+0x4]
	jmp MSG_WriteDeltaUsercmdKey_400
MSG_WriteDeltaUsercmdKey_700:
	lea eax, [esi*8]
	mov ecx, [ebp+0x8]
	mov [ecx+0x20], eax
	mov eax, [ecx+0x8]
	mov byte [eax+esi], 0x0
	add dword [ecx+0x14], 0x1
	mov eax, [ecx+0x20]
	mov [ebp-0x1c], eax
MSG_WriteDeltaUsercmdKey_690:
	sar dword [ebp-0x1c], 0x3
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+0x8]
	add [ebp-0x1c], ecx
	mov eax, 0x1
	mov ecx, edx
	shl eax, cl
	mov edx, [ebp-0x1c]
	or [edx], al
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x20]
	add eax, 0x1
	mov [ebp-0x1c], eax
	mov [ecx+0x20], eax
	mov esi, [ecx+0x14]
	jmp MSG_WriteDeltaUsercmdKey_1650
MSG_WriteDeltaUsercmdKey_780:
	lea ebx, [esi*8]
	mov eax, [ebp+0x8]
	mov [eax+0x20], ebx
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	mov byte [eax+esi], 0x0
	add dword [ecx+0x14], 0x1
	mov ebx, [ecx+0x20]
	mov [ebp-0x1c], ebx
MSG_WriteDeltaUsercmdKey_770:
	sar dword [ebp-0x1c], 0x3
	mov eax, [ebp+0x8]
	mov eax, [eax+0x8]
	add [ebp-0x1c], eax
	mov eax, 0x1
	mov ecx, edx
	shl eax, cl
	mov ebx, [ebp-0x1c]
	or [ebx], al
	mov eax, [ebp+0x8]
	mov edx, [eax+0x20]
	add edx, 0x1
	mov [ebp-0x1c], edx
	mov [eax+0x20], edx
	mov esi, [eax+0x14]
	jmp MSG_WriteDeltaUsercmdKey_1660
MSG_WriteDeltaUsercmdKey_740:
	lea eax, [esi*8]
	mov ecx, [ebp+0x8]
	mov [ecx+0x20], eax
	mov eax, [ecx+0x8]
	mov byte [eax+esi], 0x0
	add dword [ecx+0x14], 0x1
	mov eax, [ecx+0x20]
	mov [ebp-0x1c], eax
MSG_WriteDeltaUsercmdKey_730:
	sar dword [ebp-0x1c], 0x3
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+0x8]
	add [ebp-0x1c], ecx
	mov eax, 0x1
	mov ecx, edx
	shl eax, cl
	mov edx, [ebp-0x1c]
	or [edx], al
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x20]
	add eax, 0x1
	mov [ebp-0x1c], eax
	mov [ecx+0x20], eax
	mov esi, [ecx+0x14]
	jmp MSG_WriteDeltaUsercmdKey_1670
MSG_WriteDeltaUsercmdKey_650:
	mov eax, [ebp+0x8]
	mov eax, [eax+0x20]
	mov [ebp-0x1c], eax
	mov edx, eax
	and edx, 0x7
	jnz MSG_WriteDeltaUsercmdKey_1680
	lea ecx, [esi*8]
	mov eax, [ebp+0x8]
	mov [eax+0x20], ecx
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	mov byte [eax+esi], 0x0
	mov esi, [ecx+0x14]
	add esi, 0x1
	mov [ecx+0x14], esi
	mov eax, [ecx+0x20]
	mov [ebp-0x1c], eax
MSG_WriteDeltaUsercmdKey_1680:
	and bl, 0x1
	jz MSG_WriteDeltaUsercmdKey_1690
	sar dword [ebp-0x1c], 0x3
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+0x8]
	add [ebp-0x1c], ecx
	mov eax, 0x1
	mov ecx, edx
	shl eax, cl
	mov ebx, [ebp-0x1c]
	or [ebx], al
	mov eax, [ebp+0x8]
	mov eax, [eax+0x20]
	mov [ebp-0x1c], eax
	mov edx, [ebp+0x8]
	mov esi, [edx+0x14]
MSG_WriteDeltaUsercmdKey_1690:
	add dword [ebp-0x1c], 0x1
	mov ebx, [ebp-0x1c]
	mov ecx, [ebp+0x8]
	mov [ecx+0x20], ebx
	mov edx, [ecx+0x10]
	jmp MSG_WriteDeltaUsercmdKey_1700
MSG_WriteDeltaUsercmdKey_790:
	mov esi, 0x4
MSG_WriteDeltaUsercmdKey_1730:
	mov edi, [ebp-0x1c]
	and edi, 0x7
	jnz MSG_WriteDeltaUsercmdKey_1710
	mov eax, [ebp+0x8]
	mov edx, [eax+0x14]
	lea ecx, [edx*8]
	mov [eax+0x20], ecx
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	mov byte [eax+edx], 0x0
	add dword [ecx+0x14], 0x1
	mov eax, [ecx+0x20]
	mov [ebp-0x1c], eax
MSG_WriteDeltaUsercmdKey_1710:
	test bl, 0x1
	jz MSG_WriteDeltaUsercmdKey_1720
	sar dword [ebp-0x1c], 0x3
	mov edx, [ebp+0x8]
	mov edx, [edx+0x8]
	add [ebp-0x1c], edx
	mov eax, 0x1
	mov ecx, edi
	shl eax, cl
	mov edx, [ebp-0x1c]
	or [edx], al
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+0x20]
	mov [ebp-0x1c], ecx
MSG_WriteDeltaUsercmdKey_1720:
	add dword [ebp-0x1c], 0x1
	mov edx, [ebp-0x1c]
	mov eax, [ebp+0x8]
	mov [eax+0x20], edx
	sar ebx, 1
	sub esi, 0x1
	jnz MSG_WriteDeltaUsercmdKey_1730
	jmp MSG_WriteDeltaUsercmdKey_480
MSG_WriteDeltaUsercmdKey_670:
	mov edx, [ebp-0x1c]
	and edx, 0x7
	jnz MSG_WriteDeltaUsercmdKey_1740
	lea eax, [esi*8]
	mov ecx, [ebp+0x8]
	mov [ecx+0x20], eax
	mov eax, [ecx+0x8]
	mov byte [eax+esi], 0x0
	add dword [ecx+0x14], 0x1
	mov eax, [ecx+0x20]
	mov [ebp-0x1c], eax
MSG_WriteDeltaUsercmdKey_1740:
	and bl, 0x1
	jz MSG_WriteDeltaUsercmdKey_1750
	sar dword [ebp-0x1c], 0x3
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+0x8]
	add [ebp-0x1c], ecx
	mov eax, 0x1
	mov ecx, edx
	shl eax, cl
	mov ebx, [ebp-0x1c]
	or [ebx], al
	mov eax, [ebp+0x8]
	mov eax, [eax+0x20]
	mov [ebp-0x1c], eax
MSG_WriteDeltaUsercmdKey_1750:
	add dword [ebp-0x1c], 0x1
	mov ecx, [ebp-0x1c]
	mov edx, [ebp+0x8]
	mov [edx+0x20], ecx
	jmp MSG_WriteDeltaUsercmdKey_1760
MSG_WriteDeltaUsercmdKey_660:
	mov edx, [ebp-0x1c]
	and edx, 0x7
	jnz MSG_WriteDeltaUsercmdKey_1770
	lea ecx, [esi*8]
	mov ebx, [ebp+0x8]
	mov [ebx+0x20], ecx
	mov eax, [ebx+0x8]
	mov byte [eax+esi], 0x0
	mov esi, [ebx+0x14]
	add esi, 0x1
	mov [ebx+0x14], esi
	mov eax, [ebx+0x20]
	mov [ebp-0x1c], eax
MSG_WriteDeltaUsercmdKey_1770:
	test byte [ebp+0xc], 0x1
	jz MSG_WriteDeltaUsercmdKey_1780
	sar dword [ebp-0x1c], 0x3
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+0x8]
	add [ebp-0x1c], ecx
	mov eax, 0x1
	mov ecx, edx
	shl eax, cl
	mov ebx, [ebp-0x1c]
	or [ebx], al
	mov eax, [ebp+0x8]
	mov eax, [eax+0x20]
	mov [ebp-0x1c], eax
	mov edx, [ebp+0x8]
	mov esi, [edx+0x14]
MSG_WriteDeltaUsercmdKey_1780:
	add dword [ebp-0x1c], 0x1
	mov ebx, [ebp-0x1c]
	mov ecx, [ebp+0x8]
	mov [ecx+0x20], ebx
	mov edx, [ecx+0x10]
	jmp MSG_WriteDeltaUsercmdKey_1790
MSG_WriteDeltaUsercmdKey_710:
	mov eax, [ebp+0x8]
	mov dword [eax], 0x1
	jmp MSG_WriteDeltaUsercmdKey_1800
MSG_WriteDeltaUsercmdKey_750:
	mov eax, [ebp+0x8]
	mov dword [eax], 0x1
	jmp MSG_WriteDeltaUsercmdKey_1810
MSG_WriteDeltaUsercmdKey_680:
	test byte [ebp-0x1c], 0x7
	jnz MSG_WriteDeltaUsercmdKey_1820
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x14]
	cmp edx, [ecx+0x10]
	jl MSG_WriteDeltaUsercmdKey_1830
	mov dword [ecx], 0x1
	jmp MSG_WriteDeltaUsercmdKey_1800
MSG_WriteDeltaUsercmdKey_760:
	test byte [ebp-0x1c], 0x7
	jnz MSG_WriteDeltaUsercmdKey_1840
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x14]
	cmp edx, [ecx+0x10]
	jge MSG_WriteDeltaUsercmdKey_1850
	lea ebx, [edx*8]
	mov eax, [ebp+0x8]
	mov [eax+0x20], ebx
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	mov byte [eax+edx], 0x0
	add dword [ecx+0x14], 0x1
	mov ebx, [ecx+0x20]
	mov [ebp-0x1c], ebx
MSG_WriteDeltaUsercmdKey_1840:
	add dword [ebp-0x1c], 0x1
	mov edx, [ebp-0x1c]
	mov eax, [ebp+0x8]
	mov [eax+0x20], edx
	jmp MSG_WriteDeltaUsercmdKey_480
MSG_WriteDeltaUsercmdKey_1830:
	lea ebx, [edx*8]
	mov eax, [ebp+0x8]
	mov [eax+0x20], ebx
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	mov byte [eax+edx], 0x0
	add dword [ecx+0x14], 0x1
	mov ebx, [ecx+0x20]
	mov [ebp-0x1c], ebx
MSG_WriteDeltaUsercmdKey_1820:
	add dword [ebp-0x1c], 0x1
	mov edx, [ebp-0x1c]
	mov eax, [ebp+0x8]
	mov [eax+0x20], edx
	jmp MSG_WriteDeltaUsercmdKey_1800
MSG_WriteDeltaUsercmdKey_720:
	test byte [ebp-0x1c], 0x7
	jnz MSG_WriteDeltaUsercmdKey_1860
	mov ebx, [ebp+0x8]
	mov edx, [ebx+0x14]
	cmp edx, [ebx+0x10]
	jl MSG_WriteDeltaUsercmdKey_1870
	mov dword [ebx], 0x1
	jmp MSG_WriteDeltaUsercmdKey_1810
MSG_WriteDeltaUsercmdKey_640:
	mov edx, [ebp+0x10]
	mov eax, [edx+0xc]
	mov edx, [ebp+0x14]
	cmp eax, [edx+0xc]
	jnz MSG_WriteDeltaUsercmdKey_1880
	and ebx, 0x1
	and ecx, 0x1
	cmp ebx, ecx
	jnz MSG_WriteDeltaUsercmdKey_1880
	cmp [ebp-0x18], edi
	jnz MSG_WriteDeltaUsercmdKey_1880
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x10]
	sub eax, esi
	cmp eax, 0x3
	jle MSG_WriteDeltaUsercmdKey_1850
	mov ebx, [ebp+0x8]
	mov ebx, [ebx+0x20]
	mov [ebp-0x1c], ebx
	mov edx, ebx
	and edx, 0x7
	jnz MSG_WriteDeltaUsercmdKey_1890
	lea eax, [esi*8]
	mov ecx, [ebp+0x8]
	mov [ecx+0x20], eax
	mov eax, [ecx+0x8]
	mov byte [eax+esi], 0x0
	add dword [ecx+0x14], 0x1
	mov ebx, [ecx+0x20]
	mov [ebp-0x1c], ebx
MSG_WriteDeltaUsercmdKey_1890:
	test byte [ebp+0xc], 0x1
	jz MSG_WriteDeltaUsercmdKey_1390
	sar dword [ebp-0x1c], 0x3
	mov eax, [ebp+0x8]
	mov eax, [eax+0x8]
	add [ebp-0x1c], eax
	mov eax, 0x1
	mov ecx, edx
	shl eax, cl
	mov ebx, [ebp-0x1c]
	or [ebx], al
	mov eax, [ebp+0x8]
	mov eax, [eax+0x20]
	mov [ebp-0x1c], eax
	jmp MSG_WriteDeltaUsercmdKey_1390
MSG_WriteDeltaUsercmdKey_1870:
	lea eax, [edx*8]
	mov ecx, [ebp+0x8]
	mov [ecx+0x20], eax
	mov eax, [ecx+0x8]
	mov byte [eax+edx], 0x0
	add dword [ecx+0x14], 0x1
	mov ebx, [ecx+0x20]
	mov [ebp-0x1c], ebx
MSG_WriteDeltaUsercmdKey_1860:
	add dword [ebp-0x1c], 0x1
	mov edx, [ebp-0x1c]
	mov eax, [ebp+0x8]
	mov [eax+0x20], edx
	jmp MSG_WriteDeltaUsercmdKey_1810
	nop
	add [eax], al


;MSG_ReadDeltaArchivedEntity(msg_t*, int, archivedEntity_s const*, archivedEntity_s*, int)
MSG_ReadDeltaArchivedEntity:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	mov ebx, numArchivedEntityFields
	mov esi, [ebx]
	mov [esp+0x14], esi
	mov ebx, archivedEntityFields
	mov [esp+0x10], ebx
	mov dword [esp+0xc], 0xa
	mov [esp+0x8], esi
	mov ebx, [ebp+0x18]
	mov [esp+0x4], ebx
	mov ebx, [ebp+0x14]
	mov [esp], ebx
	call MSG_ReadDeltaStruct
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret


;MSG_ClearLastReferencedEntity(msg_t*)
MSG_ClearLastReferencedEntity:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov dword [eax+0x24], 0xffffffff
	pop ebp
	ret
	nop
	add [eax], al


;MSG_Init(msg_t*, unsigned char*, int)
MSG_Init:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov ecx, [msgInit]
	test ecx, ecx
	jnz MSG_Init_10
	mov dword [msgInit], 0x1
	mov dword [esp], msgHuff
	call Huff_Init
	call Sys_Milliseconds
	mov ebx, eax
	mov eax, msg_hData
	mov [esp+0x4], eax
	mov dword [esp], msgHuff
	call Huff_BuildFromData
	call Sys_Milliseconds
	sub eax, ebx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_huffman_took_d_m
	mov dword [esp], 0x10
	call Com_Printf
MSG_Init_10:
	cld
	mov ecx, 0xa
	xor eax, eax
	mov edi, esi
	rep stosd
	mov eax, [ebp+0xc]
	mov [esi+0x8], eax
	mov eax, [ebp+0x10]
	mov [esi+0x10], eax
	mov dword [esi+0x4], 0x0
	mov dword [esi+0xc], 0x0
	mov dword [esi+0x18], 0x0
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Initialized global or static variables of msg_mp:
SECTION .data


;Initialized constant data of msg_mp:
SECTION .rdata


;Zero initialized global or static variables of msg_mp:
SECTION .bss
msgInit: resb 0x20
_ZZ14MSG_ReadStringP5msg_tE6string: resb 0x400
_ZZ17MSG_ReadBigStringP5msg_tE6string: resb 0x2000
_ZZ18MSG_ReadStringLineP5msg_tE6string: resb 0x460
msgHuff: resb 0x4c20


;All cstrings:
SECTION .rdata
_cstring_3i_3i_remove:		db "%3i: #%-3i remove",0ah,0
_cstring_3i_3i_:		db "%3i: #%-3i ",0
_cstring_msg_writestring_:		db "MSG_WriteString: MAX_STRING_CHARS",0
_cstring_huffman_took_d_m:		db "Huffman Took %d Milliseconds",0ah,0
_cstring_si_:		db "%s:%i ",0
_cstring_sf_:		db "%s:%f ",0
_cstring_msg_writestring_1:		db "MSG_WriteString: BIG_INFO_STRING",0
_cstring_3i_changed_ent_e:		db "%3i: changed ent, eType %s",0ah,0
_cstring_read_entity_num_:		db "Read entity num %i",0ah,0
_cstring_entity_num_1_bit:		db "Entity num: 1 bit (inc)",0ah,0
_cstring_entity_num_i_bit:		db "Entity num: %i bits (full)",0ah,0
_cstring_entity_num_i_bit1:		db "Entity num: %i bits (delta)",0ah,0
_cstring_client_sent_an_i:		db "client sent an invalid offhand index %i",0ah,0
_cstring_client_sent_an_i1:		db "client sent an invalid buttons value %i",0ah,0
_cstring_client_sent_an_i2:		db "client sent an invalid weapon number %i",0ah,0
_cstring_3i_playerstate_:		db "%3i: playerstate ",0
_cstring_ps_ammoclip:		db "PS_AMMOCLIP",0
_cstring_s_:		db "%s ",0
_cstring_unable_to_find_t:		db "Unable to find the origin we sent, delta is not going to work",0
_cstring_ps_ammo:		db "PS_AMMO",0
_cstring_ps_stats:		db "PS_STATS",0



;All constant floats and doubles:
SECTION .rdata
_float_182_04444885:		dd 0x43360b61	; 182.044
_float_0_50000000:		dd 0x3f000000	; 0.5
_float__1_00000000:		dd 0xbf800000	; -1
_float_0_00549316:		dd 0x3bb40000	; 0.00549316
_float_10_00000000:		dd 0x41200000	; 10
_float_1_39999998:		dd 0x3fb33333	; 1.4

