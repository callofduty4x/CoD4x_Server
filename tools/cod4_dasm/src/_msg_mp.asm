;Imports of msg_mp:
	extern memcpy
	extern cl_shownet
	extern _Z10Com_PrintfiPKcz
	extern hudElemFields
	extern numHudElemFields
	extern memset
	extern _Z11I_CleanCharc
	extern _Z9Huff_InitP9huffman_t
	extern _Z16Sys_Millisecondsv
	extern msg_hData
	extern _Z18Huff_BuildFromDataP6huff_tPKi
	extern _Z15CL_GetMapCenterv
	extern _Z10I_strncpyzPcPKci
	extern numClientStateFields
	extern clientStateFields
	extern entityStateFields
	extern _Z34MSG_GetStateFieldListForEntityTypei
	extern msg_dumpEnts
	extern _Z20BG_GetEntityTypeNamei
	extern msg_printEntityNums
	extern _Z18Huff_offsetReceiveP8nodetypePiPKhS1_
	extern _Z19Huff_offsetTransmitP6huff_tiPhPi
	extern kbitmask
	extern _Z14Com_PrintErroriPKcz
	extern numPlayerStateFields
	extern playerStateFields
	extern objectiveFields
	extern numObjectiveFields
	extern clients
	extern _Z34CL_GetPredictedOriginForServerTimeP14clientActive_tiPfS1_S1_PiS2_
	extern numArchivedEntityFields
	extern archivedEntityFields

;Exports of msg_mp:
	global msgInit
	global _ZZ14MSG_ReadStringP5msg_tE6string
	global _ZZ17MSG_ReadBigStringP5msg_tE6string
	global _ZZ18MSG_ReadStringLineP5msg_tE6string
	global _Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi
	global _Z21MSG_ReadDeltaHudElemsP5msg_tiPK9hudelem_sPS1_i
	global _Z11MSG_DiscardP5msg_t
	global _Z11MSG_ReadBitP5msg_t
	global _Z12MSG_ReadBitsP5msg_ti
	global _Z12MSG_ReadByteP5msg_t
	global _Z12MSG_ReadDataP5msg_tPvi
	global _Z12MSG_ReadLongP5msg_t
	global _Z13MSG_ReadShortP5msg_t
	global _Z13MSG_WriteBit0P5msg_t
	global _Z13MSG_WriteBit1P5msg_t
	global _Z13MSG_WriteBitsP5msg_tii
	global _Z13MSG_WriteByteP5msg_ti
	global _Z13MSG_WriteDataP5msg_tPKvi
	global _Z13MSG_WriteLongP5msg_ti
	global _Z14MSG_ReadStringP5msg_t
	global _Z14MSG_WriteShortP5msg_ti
	global _Z15MSG_WriteStringP5msg_tPKc
	global _Z16MSG_BeginReadingP5msg_t
	global _Z16MSG_InitReadOnlyP5msg_tPhi
	global _Z16MSG_WriteAngle16P5msg_tf
	global _Z17MSG_ReadBigStringP5msg_t
	global _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih
	global _Z18MSG_ReadStringLineP5msg_t
	global _Z18MSG_WriteBigStringP5msg_tPKc
	global _Z19MSG_GetUsedBitCountPK5msg_t
	global _Z19MSG_ReadDeltaClientP5msg_tiPK13clientState_sPS1_i
	global _Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i
	global _Z19MSG_ReadEntityIndexP5msg_ti
	global _Z20GetMinBitCountForNumj
	global _Z20MSG_ReadBitsCompressPKhPhi
	global _Z21MSG_InitReadOnlySplitP5msg_tPhiS1_i
	global _Z21MSG_SetDefaultUserCmdP13playerState_sP9usercmd_s
	global _Z21MSG_WriteBitsCompresshPKhPhi
	global _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1_
	global _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h
	global _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3_
	global _Z27MSG_ReadDeltaArchivedEntityP5msg_tiPK16archivedEntity_sPS1_i
	global _Z29MSG_ClearLastReferencedEntityP5msg_t
	global _Z8MSG_InitP5msg_tPhi
	global msgHuff


SECTION .text


;MSG_ReadDeltaStruct(msg_t*, int, void const*, void*, unsigned int, int, int, NetField const*, int)
_Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi:
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
	jnz _Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_10
	mov edx, [ebx+0x1c]
	mov edi, [ebx+0x14]
	mov eax, edi
	add eax, [ebx+0x18]
	cmp edx, eax
	jl _Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_20
	mov dword [ebx], 0x1
_Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_70:
	mov esi, [ebp-0x3c]
	and esi, 0x7
	jz _Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_30
_Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_240:
	mov edx, [ebp-0x3c]
	sar edx, 0x3
	cmp edx, edi
	jl _Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_40
	sub edx, edi
	mov eax, [ebx+0xc]
	movzx eax, byte [eax+edx]
_Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_190:
	add dword [ebp-0x3c], 0x1
	mov edx, [ebp-0x3c]
	mov [ebx+0x20], edx
	mov ecx, esi
	sar eax, cl
	test al, 0x1
	jnz _Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_50
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
_Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_10:
	mov edi, [ebx+0x14]
_Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_110:
	mov edx, [ebp-0x3c]
	sar edx, 0x3
	cmp edx, edi
	jl _Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_60
	sub edx, edi
	mov eax, [ebx+0xc]
	movzx eax, byte [eax+edx]
_Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_100:
	add dword [ebp-0x3c], 0x1
	mov edx, [ebp-0x3c]
	mov [ebx+0x20], edx
	mov ecx, esi
	sar eax, cl
	test al, 0x1
	jz _Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_70
	mov eax, cl_shownet
	mov eax, [eax]
	test eax, eax
	jz _Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_80
	mov eax, [eax+0xc]
	cmp eax, 0x1
	jle _Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_90
_Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_360:
	mov edi, [ebp+0xc]
	mov [esp+0xc], edi
	mov eax, [ebx+0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_3i_3i_remove
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	mov eax, 0x1
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_60:
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	jmp _Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_100
_Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_20:
	lea ecx, [edx*8]
	mov [ebp-0x3c], ecx
	mov [ebx+0x20], ecx
	lea eax, [edx+0x1]
	mov [ebx+0x1c], eax
	jmp _Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_110
_Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_30:
	mov edx, [ebx+0x1c]
	mov eax, edi
	add eax, [ebx+0x18]
	cmp edx, eax
	jl _Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_120
	mov dword [ebx], 0x1
_Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_50:
	test dword [ebp+0x1c], 0xffff0000
	jnz _Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_130
	mov ecx, 0x10
	mov dword [ebp-0x1c], 0x10
	mov edx, [ebp+0x1c]
	shl edx, cl
	test edx, 0xff000000
	jnz _Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_140
_Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_200:
	mov esi, 0x8
	mov eax, 0x8
	add eax, [ebp-0x1c]
	mov [ebp-0x3c], eax
	mov ecx, esi
	shl edx, cl
	test edx, 0xf0000000
	jnz _Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_150
_Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_210:
	mov esi, 0x4
	mov eax, 0x4
	add eax, [ebp-0x3c]
	mov [ebp-0x3c], eax
	mov ecx, esi
	shl edx, cl
	test edx, 0xc0000000
	jnz _Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_160
_Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_220:
	mov esi, 0x2
	mov eax, 0x2
_Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_230:
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
	jg _Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_170
	mov dword [ebp-0x2c], 0x0
_Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_310:
	mov edi, [ebp+0x10]
	cmp [ebp-0x2c], edi
	jle _Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_180
	mov dword [ebx], 0x1
	xor eax, eax
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_40:
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	jmp _Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_190
_Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_130:
	xor ecx, ecx
	mov dword [ebp-0x1c], 0x0
	mov edx, [ebp+0x1c]
	shl edx, cl
	test edx, 0xff000000
	jz _Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_200
_Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_140:
	xor esi, esi
	xor eax, eax
	add eax, [ebp-0x1c]
	mov [ebp-0x3c], eax
	mov ecx, esi
	shl edx, cl
	test edx, 0xf0000000
	jz _Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_210
_Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_150:
	xor esi, esi
	xor eax, eax
	add eax, [ebp-0x3c]
	mov [ebp-0x3c], eax
	mov ecx, esi
	shl edx, cl
	test edx, 0xc0000000
	jz _Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_220
_Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_160:
	xor esi, esi
	xor eax, eax
	jmp _Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_230
_Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_120:
	lea eax, [edx*8]
	mov [ebp-0x3c], eax
	mov [ebx+0x20], eax
	lea eax, [edx+0x1]
	mov [ebx+0x1c], eax
	jmp _Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_240
_Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_180:
	mov eax, cl_shownet
	mov eax, [eax]
	test eax, eax
	jz _Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_250
	mov eax, [eax+0xc]
	cmp eax, 0x1
	jle _Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_260
_Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_370:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0xc], eax
	mov eax, [ebx+0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_3i_3i_
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	mov dword [ebp-0x28], 0x1
_Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_380:
	mov edi, [ebp+0xc]
	mov ecx, [ebp+0x8]
	mov [ecx], edi
	mov ecx, [ebp-0x2c]
	test ecx, ecx
	jg _Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_270
_Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_400:
	mov eax, [ebp-0x2c]
	shl eax, 0x4
	mov ecx, [ebp+0x18]
	add ecx, eax
	mov edx, [ebp+0x10]
	cmp [ebp-0x2c], edx
	jge _Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_280
	xor ebx, ebx
	mov esi, edx
	sub esi, [ebp-0x2c]
_Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_290:
	mov edx, [ecx+0x4]
	mov edi, [ebp-0x34]
	mov eax, [edx+edi]
	mov edi, [ebp+0x8]
	mov [edx+edi], eax
	add ecx, 0x10
	add ebx, 0x1
	cmp esi, ebx
	jnz _Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_290
_Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_280:
	xor eax, eax
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_170:
	xor esi, esi
	mov dword [ebp-0x2c], 0x0
	mov eax, [ebx+0x20]
	jmp _Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_300
_Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_340:
	sub edx, edi
	mov eax, [ebx+0xc]
	movzx eax, byte [eax+edx]
_Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_350:
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
	jz _Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_310
_Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_300:
	mov [ebp-0x3c], eax
	and eax, 0x7
	mov [ebp-0x20], eax
	jnz _Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_320
	mov edx, [ebx+0x1c]
	mov eax, edi
	add eax, [ebx+0x18]
	cmp edx, eax
	jge _Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_330
	lea ecx, [edx*8]
	mov [ebp-0x3c], ecx
	mov [ebx+0x20], ecx
	lea eax, [edx+0x1]
	mov [ebx+0x1c], eax
_Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_320:
	mov edx, [ebp-0x3c]
	sar edx, 0x3
	cmp edx, edi
	jge _Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_340
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	jmp _Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_350
_Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_90:
	add eax, 0x1
	jz _Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_360
_Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_80:
	mov eax, 0x1
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_260:
	add eax, 0x1
	jz _Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_370
_Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_250:
	mov dword [ebp-0x28], 0x0
	jmp _Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_380
_Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_270:
	mov esi, [ebp+0x18]
	xor edi, edi
_Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_390:
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
	call _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih
	add edi, 0x1
	add esi, 0x10
	cmp [ebp-0x2c], edi
	jnz _Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_390
	jmp _Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_400
_Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_330:
	mov dword [ebx], 0x1
	mov dword [ebp-0x2c], 0xffffffff
	jmp _Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi_310


;MSG_ReadDeltaHudElems(msg_t*, int, hudelem_s const*, hudelem_s*, int)
_Z21MSG_ReadDeltaHudElemsP5msg_tiPK9hudelem_sPS1_i:
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
_Z21MSG_ReadDeltaHudElemsP5msg_tiPK9hudelem_sPS1_i_40:
	mov [ebp-0x4c], eax
	and eax, 0x7
	mov [ebp-0x34], eax
	jnz _Z21MSG_ReadDeltaHudElemsP5msg_tiPK9hudelem_sPS1_i_10
	mov edx, [edi+0x1c]
	mov eax, esi
	add eax, [edi+0x18]
	cmp edx, eax
	jge _Z21MSG_ReadDeltaHudElemsP5msg_tiPK9hudelem_sPS1_i_20
	lea ecx, [edx*8]
	mov [ebp-0x4c], ecx
	mov [edi+0x20], ecx
	lea eax, [edx+0x1]
	mov [edi+0x1c], eax
_Z21MSG_ReadDeltaHudElemsP5msg_tiPK9hudelem_sPS1_i_10:
	mov edx, [ebp-0x4c]
	sar edx, 0x3
	cmp edx, esi
	jl _Z21MSG_ReadDeltaHudElemsP5msg_tiPK9hudelem_sPS1_i_30
	sub edx, esi
	mov eax, [edi+0xc]
	movzx eax, byte [eax+edx]
_Z21MSG_ReadDeltaHudElemsP5msg_tiPK9hudelem_sPS1_i_150:
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
	jnz _Z21MSG_ReadDeltaHudElemsP5msg_tiPK9hudelem_sPS1_i_40
	mov eax, [ebp-0x1c]
	test eax, eax
	jle _Z21MSG_ReadDeltaHudElemsP5msg_tiPK9hudelem_sPS1_i_50
	mov edx, [ebp-0x40]
	mov [ebp-0x24], edx
	mov ecx, [ebp+0x8]
	mov [ebp-0x20], ecx
	mov dword [ebp-0x38], 0x0
_Z21MSG_ReadDeltaHudElemsP5msg_tiPK9hudelem_sPS1_i_140:
	mov dword [ebp-0x30], 0x0
	xor ebx, ebx
	mov eax, [edi+0x20]
	jmp _Z21MSG_ReadDeltaHudElemsP5msg_tiPK9hudelem_sPS1_i_60
_Z21MSG_ReadDeltaHudElemsP5msg_tiPK9hudelem_sPS1_i_100:
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
	jz _Z21MSG_ReadDeltaHudElemsP5msg_tiPK9hudelem_sPS1_i_70
_Z21MSG_ReadDeltaHudElemsP5msg_tiPK9hudelem_sPS1_i_60:
	mov [ebp-0x4c], eax
	and eax, 0x7
	mov [ebp-0x2c], eax
	jnz _Z21MSG_ReadDeltaHudElemsP5msg_tiPK9hudelem_sPS1_i_80
	mov edx, [edi+0x1c]
	mov eax, esi
	add eax, [edi+0x18]
	cmp edx, eax
	jge _Z21MSG_ReadDeltaHudElemsP5msg_tiPK9hudelem_sPS1_i_90
	lea ecx, [edx*8]
	mov [ebp-0x4c], ecx
	mov [edi+0x20], ecx
	lea eax, [edx+0x1]
	mov [edi+0x1c], eax
_Z21MSG_ReadDeltaHudElemsP5msg_tiPK9hudelem_sPS1_i_80:
	mov edx, [ebp-0x4c]
	sar edx, 0x3
	cmp edx, esi
	jge _Z21MSG_ReadDeltaHudElemsP5msg_tiPK9hudelem_sPS1_i_100
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
	jnz _Z21MSG_ReadDeltaHudElemsP5msg_tiPK9hudelem_sPS1_i_60
_Z21MSG_ReadDeltaHudElemsP5msg_tiPK9hudelem_sPS1_i_70:
	mov eax, [ebp-0x30]
	mov [ebp-0x28], eax
_Z21MSG_ReadDeltaHudElemsP5msg_tiPK9hudelem_sPS1_i_180:
	xor ebx, ebx
	mov esi, hudElemFields
_Z21MSG_ReadDeltaHudElemsP5msg_tiPK9hudelem_sPS1_i_110:
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
	call _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih
	add ebx, 0x1
	add esi, 0x10
	cmp [ebp-0x28], ebx
	jae _Z21MSG_ReadDeltaHudElemsP5msg_tiPK9hudelem_sPS1_i_110
	mov eax, numHudElemFields
	cmp [eax], ebx
	jbe _Z21MSG_ReadDeltaHudElemsP5msg_tiPK9hudelem_sPS1_i_120
	mov esi, hudElemFields
	mov eax, [eax]
	mov [ebp-0x4c], eax
_Z21MSG_ReadDeltaHudElemsP5msg_tiPK9hudelem_sPS1_i_130:
	mov eax, ebx
	shl eax, 0x4
	mov edx, [esi+eax+0x4]
	mov ecx, [ebp-0x24]
	mov eax, [edx+ecx]
	mov ecx, [ebp-0x20]
	mov [edx+ecx], eax
	add ebx, 0x1
	cmp ebx, [ebp-0x4c]
	jb _Z21MSG_ReadDeltaHudElemsP5msg_tiPK9hudelem_sPS1_i_130
_Z21MSG_ReadDeltaHudElemsP5msg_tiPK9hudelem_sPS1_i_120:
	add dword [ebp-0x38], 0x1
	add dword [ebp-0x24], 0xa0
	add dword [ebp-0x20], 0xa0
	mov eax, [ebp-0x1c]
	cmp [ebp-0x38], eax
	jz _Z21MSG_ReadDeltaHudElemsP5msg_tiPK9hudelem_sPS1_i_50
	mov esi, [edi+0x14]
	jmp _Z21MSG_ReadDeltaHudElemsP5msg_tiPK9hudelem_sPS1_i_140
_Z21MSG_ReadDeltaHudElemsP5msg_tiPK9hudelem_sPS1_i_30:
	mov eax, [edi+0x8]
	movzx eax, byte [eax+edx]
	jmp _Z21MSG_ReadDeltaHudElemsP5msg_tiPK9hudelem_sPS1_i_150
_Z21MSG_ReadDeltaHudElemsP5msg_tiPK9hudelem_sPS1_i_20:
	mov dword [edi], 0x1
	mov dword [ebp-0x1c], 0xffffffff
_Z21MSG_ReadDeltaHudElemsP5msg_tiPK9hudelem_sPS1_i_50:
	mov edx, [ebp+0xc]
	cmp [ebp-0x1c], edx
	jge _Z21MSG_ReadDeltaHudElemsP5msg_tiPK9hudelem_sPS1_i_160
	mov ecx, [ebp-0x1c]
	lea eax, [ecx+ecx*4]
	shl eax, 0x5
	mov ecx, [ebp+0x8]
	lea edx, [eax+ecx]
	mov edi, [edx]
	test edi, edi
	jnz _Z21MSG_ReadDeltaHudElemsP5msg_tiPK9hudelem_sPS1_i_170
_Z21MSG_ReadDeltaHudElemsP5msg_tiPK9hudelem_sPS1_i_160:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21MSG_ReadDeltaHudElemsP5msg_tiPK9hudelem_sPS1_i_90:
	mov dword [edi], 0x1
	mov dword [ebp-0x28], 0xffffffff
	jmp _Z21MSG_ReadDeltaHudElemsP5msg_tiPK9hudelem_sPS1_i_180
_Z21MSG_ReadDeltaHudElemsP5msg_tiPK9hudelem_sPS1_i_170:
	mov ecx, [ebp-0x1c]
	lea eax, [ecx+ecx*4]
	shl eax, 0x5
	mov ecx, [ebp+0x8]
	lea edi, [ecx+eax+0xa0]
	mov esi, edi
	mov ebx, [ebp-0x1c]
_Z21MSG_ReadDeltaHudElemsP5msg_tiPK9hudelem_sPS1_i_190:
	mov dword [esp+0x8], 0xa0
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call memset
	add ebx, 0x1
	cmp ebx, [ebp+0xc]
	jz _Z21MSG_ReadDeltaHudElemsP5msg_tiPK9hudelem_sPS1_i_160
	mov edx, edi
	mov eax, [esi]
	add edi, 0xa0
	add esi, 0xa0
	test eax, eax
	jnz _Z21MSG_ReadDeltaHudElemsP5msg_tiPK9hudelem_sPS1_i_190
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;MSG_Discard(msg_t*)
_Z11MSG_DiscardP5msg_t:
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
_Z11MSG_ReadBitP5msg_t:
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
	jnz _Z11MSG_ReadBitP5msg_t_10
	mov edx, [esi+0x1c]
	mov ebx, [esi+0x14]
	mov eax, ebx
	add eax, [esi+0x18]
	cmp edx, eax
	jge _Z11MSG_ReadBitP5msg_t_20
	lea ecx, [edx*8]
	mov [ebp-0x10], ecx
	mov [esi+0x20], ecx
	lea eax, [edx+0x1]
	mov [esi+0x1c], eax
	mov edx, [ebp-0x10]
	sar edx, 0x3
	cmp edx, ebx
	jl _Z11MSG_ReadBitP5msg_t_30
_Z11MSG_ReadBitP5msg_t_40:
	sub edx, ebx
	mov eax, [esi+0xc]
	movzx eax, byte [eax+edx]
_Z11MSG_ReadBitP5msg_t_50:
	mov edx, eax
	mov ecx, edi
	sar edx, cl
	and edx, 0x1
	mov eax, [ebp-0x10]
	add eax, 0x1
	mov [esi+0x20], eax
_Z11MSG_ReadBitP5msg_t_60:
	mov eax, edx
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11MSG_ReadBitP5msg_t_10:
	mov ebx, [esi+0x14]
	mov edx, [ebp-0x10]
	sar edx, 0x3
	cmp edx, ebx
	jge _Z11MSG_ReadBitP5msg_t_40
_Z11MSG_ReadBitP5msg_t_30:
	mov eax, [esi+0x8]
	movzx eax, byte [eax+edx]
	jmp _Z11MSG_ReadBitP5msg_t_50
_Z11MSG_ReadBitP5msg_t_20:
	mov dword [esi], 0x1
	mov edx, 0xffffffff
	jmp _Z11MSG_ReadBitP5msg_t_60
	nop


;MSG_ReadBits(msg_t*, int)
_Z12MSG_ReadBitsP5msg_ti:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xc
	mov ebx, [ebp+0x8]
	mov edx, [ebp+0xc]
	test edx, edx
	jg _Z12MSG_ReadBitsP5msg_ti_10
	mov dword [ebp-0x14], 0x0
_Z12MSG_ReadBitsP5msg_ti_30:
	mov eax, [ebp-0x14]
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12MSG_ReadBitsP5msg_ti_10:
	mov dword [ebp-0x14], 0x0
	xor edi, edi
	mov esi, [ebx+0x14]
	mov eax, [ebx+0x20]
	jmp _Z12MSG_ReadBitsP5msg_ti_20
_Z12MSG_ReadBitsP5msg_ti_60:
	sub edx, esi
	mov eax, [ebx+0xc]
	movzx eax, byte [eax+edx]
_Z12MSG_ReadBitsP5msg_ti_70:
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
	jz _Z12MSG_ReadBitsP5msg_ti_30
_Z12MSG_ReadBitsP5msg_ti_20:
	mov [ebp-0x18], eax
	and eax, 0x7
	mov [ebp-0x10], eax
	jnz _Z12MSG_ReadBitsP5msg_ti_40
	mov edx, [ebx+0x1c]
	mov eax, esi
	add eax, [ebx+0x18]
	cmp edx, eax
	jge _Z12MSG_ReadBitsP5msg_ti_50
	lea ecx, [edx*8]
	mov [ebp-0x18], ecx
	mov [ebx+0x20], ecx
	lea eax, [edx+0x1]
	mov [ebx+0x1c], eax
_Z12MSG_ReadBitsP5msg_ti_40:
	mov edx, [ebp-0x18]
	sar edx, 0x3
	cmp edx, esi
	jge _Z12MSG_ReadBitsP5msg_ti_60
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	jmp _Z12MSG_ReadBitsP5msg_ti_70
_Z12MSG_ReadBitsP5msg_ti_50:
	mov dword [ebx], 0x1
	mov dword [ebp-0x14], 0xffffffff
	jmp _Z12MSG_ReadBitsP5msg_ti_30
	nop


;MSG_ReadByte(msg_t*)
_Z12MSG_ReadByteP5msg_t:
	push ebp
	mov ebp, esp
	push ebx
	mov ebx, [ebp+0x8]
	mov ecx, [ebx+0x1c]
	mov edx, [ebx+0x14]
	mov eax, edx
	add eax, [ebx+0x18]
	cmp ecx, eax
	jge _Z12MSG_ReadByteP5msg_t_10
	cmp ecx, edx
	jl _Z12MSG_ReadByteP5msg_t_20
	mov eax, ecx
	sub eax, edx
	mov edx, eax
	mov eax, [ebx+0xc]
	movzx edx, byte [eax+edx]
_Z12MSG_ReadByteP5msg_t_30:
	lea eax, [ecx+0x1]
	mov [ebx+0x1c], eax
	mov eax, edx
	pop ebx
	pop ebp
	ret
_Z12MSG_ReadByteP5msg_t_20:
	mov eax, [ebx+0x8]
	movzx edx, byte [eax+ecx]
	jmp _Z12MSG_ReadByteP5msg_t_30
_Z12MSG_ReadByteP5msg_t_10:
	mov dword [ebx], 0x1
	mov edx, 0xffffffff
	mov eax, edx
	pop ebx
	pop ebp
	ret
	nop


;MSG_ReadData(msg_t*, void*, int)
_Z12MSG_ReadDataP5msg_tPvi:
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
	jle _Z12MSG_ReadDataP5msg_tPvi_10
	mov eax, edx
	add eax, [edi+0x18]
	cmp [ebp-0x1c], eax
	jg _Z12MSG_ReadDataP5msg_tPvi_20
	mov esi, edx
	sub esi, ecx
	test esi, esi
	jle _Z12MSG_ReadDataP5msg_tPvi_30
	add ecx, [edi+0x8]
	mov [esp+0x8], esi
	mov [esp+0x4], ecx
	mov eax, [ebp+0xc]
	mov [esp], eax
	call memcpy
	sub ebx, esi
	add [ebp+0xc], esi
_Z12MSG_ReadDataP5msg_tPvi_30:
	test ebx, ebx
	jle _Z12MSG_ReadDataP5msg_tPvi_40
	mov eax, [edi+0x1c]
	sub eax, [edi+0x14]
	add eax, [edi+0xc]
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call memcpy
_Z12MSG_ReadDataP5msg_tPvi_40:
	mov eax, [ebp-0x1c]
	mov [edi+0x1c], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12MSG_ReadDataP5msg_tPvi_20:
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
_Z12MSG_ReadDataP5msg_tPvi_10:
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
_Z12MSG_ReadLongP5msg_t:
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
	jg _Z12MSG_ReadLongP5msg_t_10
	mov ebx, 0x1
_Z12MSG_ReadLongP5msg_t_30:
	cmp esi, ecx
	jg _Z12MSG_ReadLongP5msg_t_20
	mov edx, ecx
	sub edx, esi
	mov eax, [edi+0xc]
	movzx eax, byte [eax+edx]
_Z12MSG_ReadLongP5msg_t_40:
	mov [ebp+ebx-0x11], al
	add ecx, 0x1
	add ebx, 0x1
	cmp ebx, 0x5
	jnz _Z12MSG_ReadLongP5msg_t_30
	mov eax, [ebp-0x20]
	mov [edi+0x1c], eax
	mov eax, [ebp-0x10]
_Z12MSG_ReadLongP5msg_t_50:
	add esp, 0x14
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12MSG_ReadLongP5msg_t_20:
	mov eax, [edi+0x8]
	movzx eax, byte [ecx+eax]
	jmp _Z12MSG_ReadLongP5msg_t_40
_Z12MSG_ReadLongP5msg_t_10:
	mov dword [edi], 0x1
	mov eax, 0xffffffff
	jmp _Z12MSG_ReadLongP5msg_t_50
	add [eax], al


;MSG_ReadShort(msg_t*)
_Z13MSG_ReadShortP5msg_t:
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
	jg _Z13MSG_ReadShortP5msg_t_10
	mov ebx, 0x1
_Z13MSG_ReadShortP5msg_t_30:
	cmp esi, ecx
	jg _Z13MSG_ReadShortP5msg_t_20
	mov edx, ecx
	sub edx, esi
	mov eax, [edi+0xc]
	movzx eax, byte [eax+edx]
_Z13MSG_ReadShortP5msg_t_40:
	mov [ebp+ebx-0xf], al
	add ecx, 0x1
	add ebx, 0x1
	cmp ebx, 0x3
	jnz _Z13MSG_ReadShortP5msg_t_30
	movsx eax, word [ebp-0xe]
	mov edx, [ebp-0x20]
	mov [edi+0x1c], edx
_Z13MSG_ReadShortP5msg_t_50:
	add esp, 0x14
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13MSG_ReadShortP5msg_t_20:
	mov eax, [edi+0x8]
	movzx eax, byte [ecx+eax]
	jmp _Z13MSG_ReadShortP5msg_t_40
_Z13MSG_ReadShortP5msg_t_10:
	mov dword [edi], 0x1
	mov eax, 0xffffffff
	jmp _Z13MSG_ReadShortP5msg_t_50
	nop


;MSG_WriteBit0(msg_t*)
_Z13MSG_WriteBit0P5msg_t:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, [edx+0x20]
	test al, 0x7
	jnz _Z13MSG_WriteBit0P5msg_t_10
	mov ecx, [edx+0x14]
	cmp ecx, [edx+0x10]
	jge _Z13MSG_WriteBit0P5msg_t_20
	lea eax, [ecx*8]
	mov [edx+0x20], eax
	mov eax, [edx+0x8]
	mov byte [eax+ecx], 0x0
	add dword [edx+0x14], 0x1
	mov eax, [edx+0x20]
_Z13MSG_WriteBit0P5msg_t_10:
	add eax, 0x1
	mov [edx+0x20], eax
	pop ebp
	ret
_Z13MSG_WriteBit0P5msg_t_20:
	mov dword [edx], 0x1
	pop ebp
	ret
	nop


;MSG_WriteBit1(msg_t*)
_Z13MSG_WriteBit1P5msg_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov edi, [ebp+0x8]
	mov edx, [edi+0x20]
	mov esi, edx
	and esi, 0x7
	jnz _Z13MSG_WriteBit1P5msg_t_10
	mov ebx, [edi+0x14]
	cmp ebx, [edi+0x10]
	jge _Z13MSG_WriteBit1P5msg_t_20
	lea edx, [ebx*8]
	mov [edi+0x20], edx
	mov eax, [edi+0x8]
	mov byte [eax+ebx], 0x0
	add dword [edi+0x14], 0x1
	mov edx, [edi+0x20]
_Z13MSG_WriteBit1P5msg_t_10:
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
_Z13MSG_WriteBit1P5msg_t_20:
	mov dword [edi], 0x1
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;MSG_WriteBits(msg_t*, int, int)
_Z13MSG_WriteBitsP5msg_tii:
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
	jg _Z13MSG_WriteBitsP5msg_tii_10
	mov dword [ebx], 0x1
_Z13MSG_WriteBitsP5msg_tii_20:
	add esp, 0x8
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13MSG_WriteBitsP5msg_tii_10:
	mov eax, [ebp+0x10]
	test eax, eax
	jz _Z13MSG_WriteBitsP5msg_tii_20
	xor edi, edi
	mov eax, [ebx+0x20]
	mov [ebp-0x14], eax
	mov edx, eax
	jmp _Z13MSG_WriteBitsP5msg_tii_30
_Z13MSG_WriteBitsP5msg_tii_50:
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
_Z13MSG_WriteBitsP5msg_tii_60:
	add eax, 0x1
	mov [ebp-0x14], eax
	mov [ebx+0x20], eax
	sar esi, 1
	add edi, 0x1
	cmp [ebp+0x10], edi
	jz _Z13MSG_WriteBitsP5msg_tii_20
	mov edx, [ebp-0x14]
_Z13MSG_WriteBitsP5msg_tii_30:
	and edx, 0x7
	mov [ebp-0x10], edx
	jnz _Z13MSG_WriteBitsP5msg_tii_40
	mov edx, [ebx+0x14]
	lea ecx, [edx*8]
	mov [ebx+0x20], ecx
	mov eax, [ebx+0x8]
	mov byte [eax+edx], 0x0
	add dword [ebx+0x14], 0x1
	mov eax, [ebx+0x20]
	mov [ebp-0x14], eax
_Z13MSG_WriteBitsP5msg_tii_40:
	test esi, 0x1
	jnz _Z13MSG_WriteBitsP5msg_tii_50
	mov eax, [ebp-0x14]
	jmp _Z13MSG_WriteBitsP5msg_tii_60


;MSG_WriteByte(msg_t*, int)
_Z13MSG_WriteByteP5msg_ti:
	push ebp
	mov ebp, esp
	push ebx
	mov edx, [ebp+0x8]
	mov ecx, [edx+0x14]
	cmp ecx, [edx+0x10]
	jge _Z13MSG_WriteByteP5msg_ti_10
	mov eax, [edx+0x8]
	movzx ebx, byte [ebp+0xc]
	mov [eax+ecx], bl
	add dword [edx+0x14], 0x1
	pop ebx
	pop ebp
	ret
_Z13MSG_WriteByteP5msg_ti_10:
	mov dword [edx], 0x1
	pop ebx
	pop ebp
	ret
	nop


;MSG_WriteData(msg_t*, void const*, int)
_Z13MSG_WriteDataP5msg_tPKvi:
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
	jle _Z13MSG_WriteDataP5msg_tPKvi_10
	mov dword [ebx], 0x1
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z13MSG_WriteDataP5msg_tPKvi_10:
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
_Z13MSG_WriteLongP5msg_ti:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov edx, [ebp+0x8]
	mov ebx, [edx+0x14]
	lea ecx, [ebx+0x4]
	cmp ecx, [edx+0x10]
	jg _Z13MSG_WriteLongP5msg_ti_10
	mov eax, [edx+0x8]
	mov esi, [ebp+0xc]
	mov [eax+ebx], esi
	mov [edx+0x14], ecx
	pop ebx
	pop esi
	pop ebp
	ret
_Z13MSG_WriteLongP5msg_ti_10:
	mov dword [edx], 0x1
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;MSG_ReadString(msg_t*)
_Z14MSG_ReadStringP5msg_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	xor edi, edi
	jmp _Z14MSG_ReadStringP5msg_t_10
_Z14MSG_ReadStringP5msg_t_60:
	cmp ecx, edx
	jl _Z14MSG_ReadStringP5msg_t_20
	mov eax, ecx
	sub eax, edx
	mov edx, eax
	mov eax, [esi+0xc]
	movzx ebx, byte [eax+edx]
_Z14MSG_ReadStringP5msg_t_90:
	lea eax, [ecx+0x1]
	mov [esi+0x1c], eax
	cmp ebx, 0xffffffff
	jz _Z14MSG_ReadStringP5msg_t_30
	cmp edi, 0x3ff
	jbe _Z14MSG_ReadStringP5msg_t_40
_Z14MSG_ReadStringP5msg_t_70:
	test ebx, ebx
	jz _Z14MSG_ReadStringP5msg_t_50
_Z14MSG_ReadStringP5msg_t_80:
	add edi, 0x1
_Z14MSG_ReadStringP5msg_t_10:
	mov ecx, [esi+0x1c]
	mov edx, [esi+0x14]
	mov eax, edx
	add eax, [esi+0x18]
	cmp ecx, eax
	jl _Z14MSG_ReadStringP5msg_t_60
	mov dword [esi], 0x1
_Z14MSG_ReadStringP5msg_t_30:
	xor ebx, ebx
	cmp edi, 0x3ff
	ja _Z14MSG_ReadStringP5msg_t_70
_Z14MSG_ReadStringP5msg_t_40:
	movsx eax, bl
	mov [esp], eax
	call _Z11I_CleanCharc
	mov [edi+_ZZ14MSG_ReadStringP5msg_tE6string], al
	test ebx, ebx
	jnz _Z14MSG_ReadStringP5msg_t_80
_Z14MSG_ReadStringP5msg_t_50:
	mov byte [_ZZ14MSG_ReadStringP5msg_tE6string+0x3ff], 0x0
	mov eax, _ZZ14MSG_ReadStringP5msg_tE6string
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14MSG_ReadStringP5msg_t_20:
	mov eax, [esi+0x8]
	movzx ebx, byte [eax+ecx]
	jmp _Z14MSG_ReadStringP5msg_t_90


;MSG_WriteShort(msg_t*, int)
_Z14MSG_WriteShortP5msg_ti:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov edx, [ebp+0x8]
	mov ebx, [edx+0x14]
	lea ecx, [ebx+0x2]
	cmp ecx, [edx+0x10]
	jg _Z14MSG_WriteShortP5msg_ti_10
	mov eax, [edx+0x8]
	movzx esi, word [ebp+0xc]
	mov [eax+ebx], si
	mov [edx+0x14], ecx
	pop ebx
	pop esi
	pop ebp
	ret
_Z14MSG_WriteShortP5msg_ti_10:
	mov dword [edx], 0x1
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;MSG_WriteString(msg_t*, char const*)
_Z15MSG_WriteStringP5msg_tPKc:
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
	jg _Z15MSG_WriteStringP5msg_tPKc_10
	test ebx, ebx
	jg _Z15MSG_WriteStringP5msg_tPKc_20
	xor eax, eax
	mov byte [ebp+eax-0x418], 0x0
	lea ecx, [ebx+0x1]
	mov eax, [ebp+0x8]
	mov edx, [eax+0x14]
	lea ebx, [ecx+edx]
	cmp ebx, [eax+0x10]
	jle _Z15MSG_WriteStringP5msg_tPKc_30
_Z15MSG_WriteStringP5msg_tPKc_50:
	mov dword [eax], 0x1
_Z15MSG_WriteStringP5msg_tPKc_70:
	add esp, 0x41c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15MSG_WriteStringP5msg_tPKc_20:
	xor edi, edi
_Z15MSG_WriteStringP5msg_tPKc_40:
	movsx eax, byte [esi+edi]
	mov [esp], eax
	call _Z11I_CleanCharc
	mov [edi+ebp-0x418], al
	add edi, 0x1
	cmp edi, ebx
	jnz _Z15MSG_WriteStringP5msg_tPKc_40
	mov eax, ebx
	mov byte [ebp+eax-0x418], 0x0
	lea ecx, [ebx+0x1]
	mov eax, [ebp+0x8]
	mov edx, [eax+0x14]
	lea ebx, [ecx+edx]
	cmp ebx, [eax+0x10]
	jg _Z15MSG_WriteStringP5msg_tPKc_50
_Z15MSG_WriteStringP5msg_tPKc_30:
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
_Z15MSG_WriteStringP5msg_tPKc_10:
	mov dword [esp+0x4], _cstring_msg_writestring_
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	mov edx, [ebp+0x8]
	mov eax, [edx+0x14]
	lea edx, [eax+0x1]
	mov ecx, [ebp+0x8]
	cmp edx, [ecx+0x10]
	jle _Z15MSG_WriteStringP5msg_tPKc_60
	mov dword [ecx], 0x1
	add esp, 0x41c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15MSG_WriteStringP5msg_tPKc_60:
	add eax, [ecx+0x8]
	mov byte [eax], 0x0
	mov [ecx+0x14], edx
	jmp _Z15MSG_WriteStringP5msg_tPKc_70
	nop


;MSG_BeginReading(msg_t*)
_Z16MSG_BeginReadingP5msg_t:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov dword [eax], 0x0
	mov dword [eax+0x1c], 0x0
	mov dword [eax+0x20], 0x0
	pop ebp
	ret


;MSG_InitReadOnly(msg_t*, unsigned char*, int)
_Z16MSG_InitReadOnlyP5msg_tPhi:
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
	jnz _Z16MSG_InitReadOnlyP5msg_tPhi_10
	mov dword [msgInit], 0x1
	mov dword [esp], msgHuff
	call _Z9Huff_InitP9huffman_t
	call _Z16Sys_Millisecondsv
	mov ebx, eax
	mov eax, msg_hData
	mov [esp+0x4], eax
	mov dword [esp], msgHuff
	call _Z18Huff_BuildFromDataP6huff_tPKi
	call _Z16Sys_Millisecondsv
	sub eax, ebx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_huffman_took_d_m
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
_Z16MSG_InitReadOnlyP5msg_tPhi_10:
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
_Z16MSG_WriteAngle16P5msg_tf:
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
	jg _Z16MSG_WriteAngle16P5msg_tf_10
	mov eax, [ebx+0x8]
	mov [eax+ecx], si
	mov [ebx+0x14], edx
	pop ebx
	pop esi
	pop ebp
	ret
_Z16MSG_WriteAngle16P5msg_tf_10:
	mov dword [ebx], 0x1
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;MSG_ReadBigString(msg_t*)
_Z17MSG_ReadBigStringP5msg_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	xor edi, edi
	jmp _Z17MSG_ReadBigStringP5msg_t_10
_Z17MSG_ReadBigStringP5msg_t_70:
	cmp ecx, edx
	jl _Z17MSG_ReadBigStringP5msg_t_20
	mov eax, ecx
	sub eax, edx
	mov edx, eax
	mov eax, [esi+0xc]
	movzx ebx, byte [eax+edx]
	lea eax, [ecx+0x1]
	mov [esi+0x1c], eax
	cmp ebx, 0x25
	jz _Z17MSG_ReadBigStringP5msg_t_30
_Z17MSG_ReadBigStringP5msg_t_100:
	cmp ebx, 0xffffffff
	jz _Z17MSG_ReadBigStringP5msg_t_40
_Z17MSG_ReadBigStringP5msg_t_110:
	cmp edi, 0x1fff
	jbe _Z17MSG_ReadBigStringP5msg_t_50
_Z17MSG_ReadBigStringP5msg_t_80:
	test ebx, ebx
	jz _Z17MSG_ReadBigStringP5msg_t_60
_Z17MSG_ReadBigStringP5msg_t_90:
	add edi, 0x1
_Z17MSG_ReadBigStringP5msg_t_10:
	mov ecx, [esi+0x1c]
	mov edx, [esi+0x14]
	mov eax, edx
	add eax, [esi+0x18]
	cmp ecx, eax
	jl _Z17MSG_ReadBigStringP5msg_t_70
	mov dword [esi], 0x1
_Z17MSG_ReadBigStringP5msg_t_40:
	xor ebx, ebx
	cmp edi, 0x1fff
	ja _Z17MSG_ReadBigStringP5msg_t_80
_Z17MSG_ReadBigStringP5msg_t_50:
	movsx eax, bl
	mov [esp], eax
	call _Z11I_CleanCharc
	mov [edi+_ZZ17MSG_ReadBigStringP5msg_tE6string], al
	test ebx, ebx
	jnz _Z17MSG_ReadBigStringP5msg_t_90
_Z17MSG_ReadBigStringP5msg_t_60:
	mov byte [_ZZ17MSG_ReadBigStringP5msg_tE6string+0x1fff], 0x0
	mov eax, _ZZ17MSG_ReadBigStringP5msg_tE6string
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17MSG_ReadBigStringP5msg_t_20:
	mov eax, [esi+0x8]
	movzx ebx, byte [eax+ecx]
	lea eax, [ecx+0x1]
	mov [esi+0x1c], eax
	cmp ebx, 0x25
	jnz _Z17MSG_ReadBigStringP5msg_t_100
_Z17MSG_ReadBigStringP5msg_t_30:
	mov bl, 0x2e
	jmp _Z17MSG_ReadBigStringP5msg_t_110


;MSG_ReadDeltaField(msg_t*, int, void const*, void*, NetField const*, int, unsigned char)
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x10c
	mov dword [ebp-0x1c], 0x0
	cmp byte [ebp+0x20], 0x0
	jz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_10
	lea eax, [ebp-0x1c]
	mov [ebp-0x88], eax
	mov edx, [ebp+0x18]
	mov eax, [edx+0x4]
	mov esi, edx
	add eax, [ebp+0x14]
	mov [ebp-0x84], eax
	cmp byte [esi+0xc], 0x2
	jz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_20
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_60:
	mov edi, [ebp+0x8]
	mov edi, [edi+0x20]
	mov [ebp-0xac], edi
	mov ebx, edi
	and ebx, 0x7
	jz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_30
	mov edx, [ebp+0x8]
	mov edx, [edx+0x14]
	mov [ebp-0xa0], edx
	mov edx, [ebp-0xac]
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_40
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_320:
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edi, ecx
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_330:
	add dword [ebp-0xac], 0x1
	mov edx, [ebp-0xac]
	mov [edi+0x20], edx
	mov ecx, ebx
	sar eax, cl
	test al, 0x1
	jnz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_50
	mov edi, [ebp-0x88]
	mov eax, [edi]
	mov edx, [ebp-0x84]
	mov [edx], eax
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_300:
	add esp, 0x10c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_10:
	mov ecx, [ebp+0x18]
	mov eax, [ecx+0x4]
	mov ebx, [ebp+0x10]
	add ebx, eax
	mov [ebp-0x88], ebx
	mov esi, ecx
	add eax, [ebp+0x14]
	mov [ebp-0x84], eax
	cmp byte [esi+0xc], 0x2
	jnz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_60
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_20:
	mov ebx, [ebp+0x8]
	mov ebx, [ebx+0x14]
	mov [ebp-0xa0], ebx
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_50:
	mov esi, [ebp+0x18]
	mov ebx, [esi+0x8]
	test ebx, ebx
	jz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_70
	cmp ebx, 0xffffffa7
	jz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_80
	cmp ebx, 0xffffffa8
	jz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_90
	cmp ebx, 0xffffff9d
	jz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_100
	cmp ebx, 0xffffff9e
	jz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_110
	cmp ebx, 0xffffff9f
	jz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_120
	cmp ebx, 0xffffffa0
	jz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_130
	cmp ebx, 0xffffffa2
	jz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_140
	cmp ebx, 0xffffffa3
	jz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_140
	cmp ebx, 0xffffffa1
	jz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_150
	lea eax, [ebx+0x5c]
	cmp eax, 0x1
	jbe _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_160
	cmp ebx, 0xffffffa6
	jz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_170
	cmp ebx, 0xffffff9c
	jz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_180
	cmp ebx, 0xffffffa9
	jz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_190
	cmp ebx, 0xffffffaa
	jz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_200
	cmp ebx, 0xffffffab
	jz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_210
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+0x20]
	mov [ebp-0xac], ecx
	mov ebx, ecx
	and ebx, 0x7
	jnz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_220
	mov esi, [ebp+0x8]
	mov edx, [esi+0x1c]
	mov eax, [ebp-0xa0]
	add eax, [esi+0x18]
	cmp edx, eax
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_230
	mov dword [esi], 0x1
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2470:
	mov eax, [ebp+0x18]
	mov edi, [eax+0x8]
	mov edx, edi
	shr edx, 0x1f
	mov [ebp-0x7c], edx
	jz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_240
	neg edi
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_240:
	mov ebx, edi
	and ebx, 0x7
	cmp ebx, 0x0
	jnz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_250
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2730:
	mov dword [ebp-0x78], 0x0
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2750:
	cmp edi, ebx
	jg _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_260
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2830:
	cmp edi, 0x20
	jz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_270
	mov eax, 0x1
	mov ecx, edi
	shl eax, cl
	lea edx, [eax-0x1]
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2910:
	mov ebx, edx
	mov esi, [ebp-0x88]
	and ebx, [esi]
	xor ebx, [ebp-0x78]
	mov ecx, [ebp-0x7c]
	test ecx, ecx
	jz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_280
	lea ecx, [edi-0x1]
	mov eax, ebx
	sar eax, cl
	test al, 0x1
	jz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_280
	not edx
	or ebx, edx
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_280:
	mov edx, [ebp+0x1c]
	test edx, edx
	jnz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_290
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2900:
	mov ecx, [ebp-0x84]
	mov [ecx], ebx
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_300
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_30:
	mov eax, [ebp+0x8]
	mov esi, [eax+0x1c]
	mov edx, [eax+0x14]
	mov [ebp-0xa0], edx
	mov eax, edx
	mov ecx, [ebp+0x8]
	add eax, [ecx+0x18]
	cmp esi, eax
	jge _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_310
	lea edi, [esi*8]
	mov [ebp-0xac], edi
	mov [ecx+0x20], edi
	add esi, 0x1
	mov [ecx+0x1c], esi
	mov edx, [ebp-0xac]
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jge _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_320
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_40:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [eax+edx]
	mov edi, esi
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_330
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_70:
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+0x20]
	mov [ebp-0xac], ecx
	mov ebx, ecx
	and ebx, 0x7
	jnz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_340
	mov edi, [ebp+0x8]
	mov esi, [edi+0x1c]
	mov eax, [edi+0x18]
	mov [ebp-0xa4], eax
	mov eax, [ebp-0xa0]
	add eax, [ebp-0xa4]
	cmp esi, eax
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_350
	mov dword [edi], 0x1
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_690:
	mov ebx, [ebp-0xac]
	and ebx, 0x7
	jz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_360
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_660:
	mov edx, [ebp-0xac]
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_370
	sub edx, [ebp-0xa0]
	mov edi, [ebp+0x8]
	mov eax, [edi+0xc]
	movzx eax, byte [eax+edx]
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_700:
	add dword [ebp-0xac], 0x1
	mov edx, [ebp-0xac]
	mov [edi+0x20], edx
	mov ecx, ebx
	sar eax, cl
	test al, 0x1
	jnz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_380
	mov dword [ebp-0x80], 0x0
	xor ebx, ebx
	mov edi, [ebp-0xa0]
	add edi, [ebp-0xa4]
	mov [ebp-0x8c], edi
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_420:
	mov eax, [ebp+0x8]
	mov eax, [eax+0x20]
	mov [ebp-0xac], eax
	mov edi, eax
	and edi, 0x7
	jnz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_390
	cmp esi, [ebp-0x8c]
	jge _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_400
	lea edx, [esi*8]
	mov [ebp-0xac], edx
	mov ecx, [ebp+0x8]
	mov [ecx+0x20], edx
	add esi, 0x1
	mov [ecx+0x1c], esi
	mov edx, [ebp-0xac]
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_410
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_530:
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_540:
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
	jnz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_420
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1500:
	mov eax, [ebp-0xa0]
	add eax, [ebp-0xa4]
	cmp esi, eax
	jge _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_430
	cmp esi, [ebp-0xa0]
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_440
	mov edx, esi
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edi, ecx
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1240:
	add esi, 0x1
	mov [edi+0x1c], esi
	shl eax, 0x5
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_920:
	add eax, [ebp-0x80]
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_910:
	mov ecx, [ebp-0x88]
	cvttss2si edx, [ecx]
	add edx, 0x1000
	xor eax, edx
	sub eax, 0x1000
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_820:
	cvtsi2ss xmm0, eax
	mov ebx, [ebp-0x84]
	movss [ebx], xmm0
	mov edx, [ebp+0x1c]
	test edx, edx
	jz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_300
	mov [esp+0xc], eax
	mov esi, [ebp+0x18]
	mov eax, [esi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_si_
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_300
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_340:
	mov edx, ecx
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_640:
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_450
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edi, ecx
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_570:
	add dword [ebp-0xac], 0x1
	mov edx, [ebp-0xac]
	mov [edi+0x20], edx
	mov ecx, ebx
	sar eax, cl
	test al, 0x1
	jnz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_460
	mov ebx, edx
	and ebx, 0x7
	jnz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_470
	mov edx, [edi+0x1c]
	mov eax, [ebp-0xa0]
	add eax, [edi+0x18]
	cmp edx, eax
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_480
	mov dword [edi], 0x1
	mov eax, 0x80000000
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_560:
	mov ebx, [ebp-0x84]
	mov [ebx], eax
	add esp, 0x10c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_310:
	mov dword [ecx], 0x1
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_50
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_90:
	mov ebx, [ebp+0x8]
	mov ecx, [ebx+0x1c]
	lea esi, [ecx+0x4]
	mov [ebp-0xec], esi
	mov eax, [ebp-0xa0]
	add eax, [ebx+0x18]
	cmp esi, eax
	jg _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_490
	lea edi, [ebp-0x20]
	mov ebx, 0x1
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_510:
	cmp [ebp-0xa0], ecx
	jg _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_500
	mov eax, ecx
	sub eax, [ebp-0xa0]
	mov [ebp-0xdc], eax
	mov edx, [ebp+0x8]
	mov edx, [edx+0xc]
	mov [ebp-0xc4], edx
	movzx eax, byte [edx+eax]
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1050:
	mov [ebx+edi-0x1], al
	add ecx, 0x1
	add ebx, 0x1
	cmp ebx, 0x5
	jnz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_510
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_630:
	mov ebx, [ebp-0xec]
	mov ecx, [ebp+0x8]
	mov [ecx+0x1c], ebx
	mov eax, [ebp-0x20]
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_520
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_390:
	mov edx, eax
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jge _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_530
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_410:
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	movzx eax, byte [eax+edx]
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_540
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_480:
	lea esi, [edx*8]
	mov edi, [ebp+0x8]
	mov [edi+0x20], esi
	lea esi, [edx+0x1]
	mov [edi+0x1c], esi
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_470:
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x20]
	mov edx, ecx
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_550
	sub edx, [ebp-0xa0]
	mov eax, [eax+0xc]
	movzx eax, byte [eax+edx]
	mov edx, [ebp+0x8]
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_670:
	add ecx, 0x1
	mov [edx+0x20], ecx
	mov ecx, ebx
	sar eax, cl
	shl eax, 0x1f
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_560
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_450:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [eax+edx]
	mov edi, esi
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_570
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_80:
	mov ebx, [ebp+0x8]
	mov ebx, [ebx+0x20]
	mov [ebp-0xac], ebx
	and ebx, 0x7
	jnz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_580
	mov edi, [ebp+0x8]
	mov esi, [edi+0x1c]
	mov eax, [edi+0x18]
	mov [ebp-0xa4], eax
	mov eax, [ebp-0xa0]
	add eax, [ebp-0xa4]
	cmp esi, eax
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_590
	mov dword [edi], 0x1
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1260:
	mov ecx, esi
	lea ebx, [esi+0x4]
	mov [ebp-0xec], ebx
	mov eax, [ebp-0xa0]
	add eax, [ebp-0xa4]
	cmp ebx, eax
	jg _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_600
	lea edi, [ebp-0x20]
	mov ebx, 0x1
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_620:
	cmp [ebp-0xa0], ecx
	jg _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_610
	mov eax, ecx
	sub eax, [ebp-0xa0]
	mov [ebp-0xdc], eax
	mov edx, [ebp+0x8]
	mov edx, [edx+0xc]
	mov [ebp-0xc0], edx
	movzx eax, byte [edx+eax]
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1070:
	mov [ebx+edi-0x1], al
	add ecx, 0x1
	add ebx, 0x1
	cmp ebx, 0x5
	jnz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_620
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_630
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_350:
	mov eax, edi
	lea edi, [esi*8]
	mov [ebp-0xac], edi
	mov [eax+0x20], edi
	add esi, 0x1
	mov [eax+0x1c], esi
	mov edx, [ebp-0xac]
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_640
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_360:
	mov eax, [ebp-0xa0]
	add eax, [ebp-0xa4]
	cmp esi, eax
	jge _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_650
	lea edx, [esi*8]
	mov [ebp-0xac], edx
	mov ecx, [ebp+0x8]
	mov [ecx+0x20], edx
	add esi, 0x1
	mov [ecx+0x1c], esi
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_660
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_550:
	mov edi, eax
	mov eax, [eax+0x8]
	movzx eax, byte [eax+edx]
	mov edx, edi
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_670
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_650:
	mov edi, [ebp+0x8]
	mov dword [edi], 0x1
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_380:
	mov ecx, esi
	lea eax, [esi+0x4]
	mov [ebp-0xec], eax
	mov eax, [ebp-0xa0]
	add eax, [ebp-0xa4]
	cmp [ebp-0xec], eax
	jle _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_680
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_600:
	mov esi, [ebp+0x8]
	mov dword [esi], 0x1
	mov eax, 0xffffffff
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_520:
	mov edi, [ebp-0x84]
	mov [edi], eax
	mov edx, [ebp-0x88]
	xor eax, [edx]
	mov [edi], eax
	mov eax, [ebp+0x1c]
	test eax, eax
	jz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_300
	cvtss2sd xmm0, [edi]
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1480:
	movsd [esp+0xc], xmm0
	mov ecx, [ebp+0x18]
	mov eax, [ecx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_sf_
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_300
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_460:
	mov edx, [ebp+0x8]
	mov esi, [edx+0x1c]
	mov ecx, [edx+0x18]
	mov [ebp-0xa4], ecx
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_690
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_370:
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	movzx eax, byte [eax+edx]
	mov edi, ecx
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_700
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_100:
	mov ebx, [ebp+0x8]
	mov ebx, [ebx+0x20]
	mov [ebp-0xac], ebx
	and ebx, 0x7
	jnz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_710
	mov edi, [ebp+0x8]
	mov esi, [edi+0x1c]
	mov eax, [edi+0x18]
	mov [ebp-0xa4], eax
	mov eax, [ebp-0xa0]
	add eax, [ebp-0xa4]
	cmp esi, eax
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_720
	mov dword [edi], 0x1
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1510:
	mov ebx, [ebp-0xac]
	and ebx, 0x7
	jz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_730
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1680:
	mov edx, [ebp-0xac]
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_740
	sub edx, [ebp-0xa0]
	mov edi, [ebp+0x8]
	mov eax, [edi+0xc]
	movzx eax, byte [eax+edx]
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1560:
	add dword [ebp-0xac], 0x1
	mov edx, [ebp-0xac]
	mov [edi+0x20], edx
	mov ecx, ebx
	sar eax, cl
	test al, 0x1
	jnz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_750
	mov dword [ebp-0x30], 0x0
	xor ebx, ebx
	mov edi, [ebp-0xa0]
	add edi, [ebp-0xa4]
	mov [ebp-0x94], edi
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_790:
	mov eax, [ebp+0x8]
	mov eax, [eax+0x20]
	mov [ebp-0xac], eax
	mov edi, eax
	and edi, 0x7
	jnz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_760
	cmp esi, [ebp-0x94]
	jge _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_770
	lea edx, [esi*8]
	mov [ebp-0xac], edx
	mov ecx, [ebp+0x8]
	mov [ecx+0x20], edx
	add esi, 0x1
	mov [ecx+0x1c], esi
	mov edx, [ebp-0xac]
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1190:
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_780
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1200:
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
	jnz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_790
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2480:
	mov eax, [ebp-0xa0]
	add eax, [ebp-0xa4]
	cmp esi, eax
	jge _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_800
	cmp esi, [ebp-0xa0]
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_810
	mov edx, esi
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edi, ecx
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2060:
	add esi, 0x1
	mov [edi+0x1c], esi
	shl eax, 0x4
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1670:
	add eax, [ebp-0x30]
	mov ecx, [ebp-0x88]
	cvttss2si edx, [ecx]
	add edx, 0x800
	xor eax, edx
	sub eax, 0x800
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_820
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_580:
	mov edx, [ebp+0x8]
	mov edx, [edx+0x18]
	mov [ebp-0xa4], edx
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_980:
	mov edx, [ebp-0xac]
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_830
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edi, ecx
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_930:
	add dword [ebp-0xac], 0x1
	mov edx, [ebp-0xac]
	mov [edi+0x20], edx
	mov ecx, ebx
	sar eax, cl
	test al, 0x1
	jnz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_840
	mov dword [ebp-0x34], 0x0
	xor ebx, ebx
	mov esi, [ebp-0xa0]
	add esi, [ebp-0xa4]
	mov [ebp-0x90], esi
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_880:
	mov edi, [ebp+0x8]
	mov edi, [edi+0x20]
	mov [ebp-0xac], edi
	and edi, 0x7
	jnz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_850
	mov eax, [ebp+0x8]
	mov esi, [eax+0x1c]
	cmp esi, [ebp-0x90]
	jge _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_860
	lea edx, [esi*8]
	mov [ebp-0xac], edx
	mov [eax+0x20], edx
	add esi, 0x1
	mov [eax+0x1c], esi
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_850:
	mov edx, [ebp-0xac]
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_870
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov esi, ecx
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1040:
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
	jnz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_880
	mov eax, [ebp+0x8]
	mov esi, [eax+0x1c]
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1660:
	mov eax, [ebp-0xa0]
	add eax, [ebp-0xa4]
	cmp esi, eax
	jge _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_890
	cmp esi, [ebp-0xa0]
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_900
	mov edx, esi
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edi, ecx
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1340:
	add esi, 0x1
	mov [edi+0x1c], esi
	shl eax, 0x5
	add eax, [ebp-0x34]
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_910
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_430:
	mov eax, [ebp+0x8]
	mov dword [eax], 0x1
	mov eax, 0xffffffe0
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_920
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_830:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [eax+edx]
	mov edi, esi
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_930
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_490:
	mov dword [ebx], 0x1
	mov eax, 0xffffffff
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_520
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_680:
	lea edi, [ebp-0x20]
	mov ebx, 0x1
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_950:
	cmp [ebp-0xa0], ecx
	jg _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_940
	mov eax, ecx
	sub eax, [ebp-0xa0]
	mov [ebp-0xdc], eax
	mov edx, [ebp+0x8]
	mov edx, [edx+0xc]
	mov [ebp-0xbc], edx
	movzx eax, byte [edx+eax]
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1060:
	mov [ebx+edi-0x1], al
	add ecx, 0x1
	add ebx, 0x1
	cmp ebx, 0x5
	jnz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_950
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_630
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_720:
	mov eax, edi
	lea edi, [esi*8]
	mov [ebp-0xac], edi
	mov [eax+0x20], edi
	add esi, 0x1
	mov [eax+0x1c], esi
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_710:
	mov edx, [ebp-0xac]
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_960
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edi, ecx
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1250:
	add dword [ebp-0xac], 0x1
	mov edx, [ebp-0xac]
	mov [edi+0x20], edx
	mov ecx, ebx
	sar eax, cl
	test al, 0x1
	jnz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_970
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2460:
	mov ebx, [ebp-0x84]
	mov dword [ebx], 0x0
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_300
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_590:
	mov eax, edi
	lea edi, [esi*8]
	mov [ebp-0xac], edi
	mov [eax+0x20], edi
	add esi, 0x1
	mov [eax+0x1c], esi
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_980
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_130:
	mov eax, [ebp+0x8]
	mov eax, [eax+0x20]
	mov [ebp-0xac], eax
	mov ebx, eax
	and ebx, 0x7
	jnz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_990
	mov edx, [ebp+0x8]
	mov esi, [edx+0x1c]
	mov eax, [ebp-0xa0]
	add eax, [edx+0x18]
	cmp esi, eax
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1000
	mov dword [edx], 0x1
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1540:
	mov ebx, [ebp-0xac]
	and ebx, 0x7
	jz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1010
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2070:
	mov edx, [ebp-0xac]
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1020
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edi, ecx
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1880:
	add dword [ebp-0xac], 0x1
	mov edx, [ebp-0xac]
	mov [edi+0x20], edx
	mov ecx, ebx
	sar eax, cl
	test al, 0x1
	jz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1030
	xor eax, eax
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1230:
	mov edx, [ebp-0x84]
	mov [edx], eax
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_300
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_870:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [eax+edx]
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1040
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_500:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x8]
	movzx eax, byte [ecx+eax]
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1050
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_940:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x8]
	movzx eax, byte [ecx+eax]
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1060
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_610:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x8]
	movzx eax, byte [ecx+eax]
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1070
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_110:
	mov ebx, [ebp-0x88]
	mov ebx, [ebx]
	mov [ebp-0x74], ebx
	mov esi, [ebp+0x8]
	mov esi, [esi+0x20]
	mov [ebp-0xac], esi
	mov ebx, esi
	and ebx, 0x7
	jnz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1080
	mov edi, [ebp+0x8]
	mov edx, [edi+0x1c]
	mov eax, [ebp-0xa0]
	add eax, [edi+0x18]
	cmp edx, eax
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1090
	mov dword [edi], 0x1
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1280:
	mov dword [ebp-0x70], 0x0
	xor ebx, ebx
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1120:
	mov edi, [ebp-0xac]
	and edi, 0x7
	jz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1100
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1140:
	mov edx, [ebp-0xac]
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1110
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov esi, ecx
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1150:
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
	jnz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1120
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2110:
	mov ebx, 0x1
	movzx ecx, byte [ebp-0x70]
	shl ebx, cl
	xor ebx, [ebp-0x74]
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1310:
	mov esi, [ebp-0x84]
	mov [esi], ebx
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_300
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1100:
	mov esi, [ebp+0x8]
	mov edx, [esi+0x1c]
	mov eax, [ebp-0xa0]
	add eax, [esi+0x18]
	cmp edx, eax
	jge _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1130
	lea eax, [edx*8]
	mov [ebp-0xac], eax
	mov [esi+0x20], eax
	lea esi, [edx+0x1]
	mov edx, [ebp+0x8]
	mov [edx+0x1c], esi
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1140
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1110:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [eax+edx]
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1150
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_890:
	mov eax, [ebp+0x8]
	mov dword [eax], 0x1
	mov eax, 0xffffffe0
	add eax, [ebp-0x34]
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_910
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_120:
	mov edi, [ebp+0x8]
	mov edi, [edi+0x20]
	mov [ebp-0xac], edi
	mov ebx, edi
	and ebx, 0x7
	jnz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1160
	mov eax, [ebp+0x8]
	mov esi, [eax+0x1c]
	mov edx, [eax+0x18]
	mov [ebp-0xa4], edx
	mov eax, [ebp-0xa0]
	add eax, edx
	cmp esi, eax
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1170
	mov ecx, [ebp+0x8]
	mov dword [ecx], 0x1
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1860:
	mov ecx, esi
	lea eax, [esi+0x4]
	mov [ebp-0xec], eax
	mov eax, [ebp-0xa0]
	add eax, [ebp-0xa4]
	cmp [ebp-0xec], eax
	jle _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1180
	mov esi, [ebp+0x8]
	mov dword [esi], 0x1
	mov eax, 0xffffffff
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1450:
	mov edi, [ebp-0x84]
	mov [edi], eax
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_300
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_760:
	mov edx, eax
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1190
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_780:
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	movzx eax, byte [eax+edx]
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1200
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_140:
	mov ebx, [ebp+0x8]
	mov ecx, [ebx+0x1c]
	mov eax, [ebp-0xa0]
	add eax, [ebx+0x18]
	cmp ecx, eax
	jge _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1210
	cmp ecx, [ebp-0xa0]
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1220
	mov edx, ecx
	sub edx, [ebp-0xa0]
	mov eax, [ebx+0xc]
	movzx eax, byte [eax+edx]
	mov edi, [ebp+0x8]
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1720:
	lea esi, [ecx+0x1]
	mov [edi+0x1c], esi
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1230
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_440:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+esi]
	mov edi, ebx
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1240
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_960:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [eax+edx]
	mov edi, esi
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1250
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_840:
	mov edx, [ebp+0x8]
	mov esi, [edx+0x1c]
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1260
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1080:
	mov edx, esi
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1550:
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1270
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edi, ecx
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1350:
	add dword [ebp-0xac], 0x1
	mov edx, [ebp-0xac]
	mov [edi+0x20], edx
	mov ecx, ebx
	sar eax, cl
	test al, 0x1
	jz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1280
	xor ebx, ebx
	xor edi, edi
	mov eax, [ebp-0xa0]
	mov esi, [ebp+0x8]
	add eax, [esi+0x18]
	mov [ebp-0x98], eax
	mov edx, esi
	mov ecx, [edx+0x1c]
	cmp ecx, [ebp-0x98]
	jge _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1290
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1320:
	cmp ecx, [ebp-0xa0]
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1300
	mov edx, ecx
	sub edx, [ebp-0xa0]
	mov esi, [ebp+0x8]
	mov eax, [esi+0xc]
	movzx eax, byte [eax+edx]
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1490:
	lea esi, [ecx+0x1]
	mov ecx, [ebp+0x8]
	mov [ecx+0x1c], esi
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1330:
	mov ecx, edi
	shl eax, cl
	or ebx, eax
	add edi, 0x8
	cmp edi, 0x18
	jz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1310
	mov edx, [ebp+0x8]
	mov ecx, [edx+0x1c]
	cmp ecx, [ebp-0x98]
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1320
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1290:
	mov dword [edx], 0x1
	mov eax, 0xffffffff
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1330
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_900:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+esi]
	mov edi, ebx
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1340
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1270:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [eax+edx]
	mov edi, esi
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1350
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1160:
	mov edx, edi
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1650:
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1360
	sub edx, [ebp-0xa0]
	mov esi, [ebp+0x8]
	mov eax, [esi+0xc]
	movzx eax, byte [eax+edx]
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1520:
	add dword [ebp-0xac], 0x1
	mov edi, [ebp-0xac]
	mov [esi+0x20], edi
	mov ecx, ebx
	sar eax, cl
	test al, 0x1
	jnz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1370
	mov dword [ebp-0x6c], 0x0
	xor ebx, ebx
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1380
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1420:
	mov eax, [ebp+0x8]
	mov edx, [eax+0x1c]
	mov eax, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	add eax, [ecx+0x18]
	cmp edx, eax
	jge _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1390
	lea esi, [edx*8]
	mov [ebp-0xac], esi
	mov [ecx+0x20], esi
	lea esi, [edx+0x1]
	mov [ecx+0x1c], esi
	mov edx, [ebp-0xac]
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1430:
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1400
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov esi, ecx
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1440:
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
	jz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1410
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1380:
	mov esi, [ebp+0x8]
	mov esi, [esi+0x20]
	mov [ebp-0xac], esi
	mov edi, esi
	and edi, 0x7
	jz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1420
	mov edx, esi
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1430
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1400:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [eax+edx]
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1440
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1390:
	mov dword [ecx], 0x1
	mov dword [ebp-0x6c], 0xffffffff
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1410:
	mov eax, [ebp+0xc]
	sub eax, [ebp-0x6c]
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1450
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_730:
	mov eax, [ebp-0xa0]
	add eax, [ebp-0xa4]
	cmp esi, eax
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1460
	mov edi, [ebp+0x8]
	mov dword [edi], 0x1
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_750:
	mov ecx, esi
	lea eax, [esi+0x4]
	mov [ebp-0xec], eax
	mov eax, [ebp-0xa0]
	add eax, [ebp-0xa4]
	cmp [ebp-0xec], eax
	jle _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1470
	mov esi, [ebp+0x8]
	mov dword [esi], 0x1
	mov eax, 0xffffffff
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1840:
	mov edi, [ebp-0x88]
	xor eax, [edi]
	mov edx, [ebp-0x84]
	mov [edx], eax
	mov esi, [ebp+0x1c]
	test esi, esi
	jz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_300
	cvtss2sd xmm0, [edx]
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1480
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1210:
	mov dword [ebx], 0x1
	mov eax, 0xffffffff
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1230
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1300:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x8]
	movzx eax, byte [eax+ecx]
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1490
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_400:
	mov eax, [ebp+0x8]
	mov dword [eax], 0x1
	mov dword [ebp-0x80], 0xffffffff
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1500
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_970:
	mov edx, [ebp+0x8]
	mov esi, [edx+0x1c]
	mov ecx, [edx+0x18]
	mov [ebp-0xa4], ecx
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1510
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1360:
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	movzx eax, byte [eax+edx]
	mov esi, ecx
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1520
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_990:
	mov edx, eax
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1870:
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1530
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edi, ecx
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1570:
	add dword [ebp-0xac], 0x1
	mov edx, [ebp-0xac]
	mov [edi+0x20], edx
	mov ecx, ebx
	sar eax, cl
	test al, 0x1
	jz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1540
	mov eax, 0x3fe
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1230
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1090:
	lea ecx, [edx*8]
	mov [ebp-0xac], ecx
	mov [edi+0x20], ecx
	lea esi, [edx+0x1]
	mov edi, [ebp+0x8]
	mov [edi+0x1c], esi
	mov edx, [ebp-0xac]
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1550
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_740:
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	movzx eax, byte [eax+edx]
	mov edi, ecx
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1560
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1530:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [eax+edx]
	mov edi, esi
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1570
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_150:
	mov dword [ebp-0x68], 0x0
	xor ebx, ebx
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1580
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1620:
	mov eax, [ebp+0x8]
	mov edx, [eax+0x1c]
	mov eax, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	add eax, [ecx+0x18]
	cmp edx, eax
	jge _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1590
	lea esi, [edx*8]
	mov [ebp-0xac], esi
	mov [ecx+0x20], esi
	lea esi, [edx+0x1]
	mov [ecx+0x1c], esi
	mov edx, [ebp-0xac]
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1630:
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1600
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov esi, ecx
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1640:
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
	jz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1610
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1580:
	mov esi, [ebp+0x8]
	mov esi, [esi+0x20]
	mov [ebp-0xac], esi
	mov edi, esi
	and edi, 0x7
	jz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1620
	mov edx, esi
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1630
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1600:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [eax+edx]
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1640
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1170:
	lea edx, [esi*8]
	mov [ebp-0xac], edx
	mov ecx, [ebp+0x8]
	mov [ecx+0x20], edx
	add esi, 0x1
	mov [ecx+0x1c], esi
	mov edx, [ebp-0xac]
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1650
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_860:
	mov dword [eax], 0x1
	mov dword [ebp-0x34], 0xffffffff
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1660
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_800:
	mov eax, [ebp+0x8]
	mov dword [eax], 0x1
	mov eax, 0xfffffff0
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1670
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1460:
	lea edx, [esi*8]
	mov [ebp-0xac], edx
	mov ecx, [ebp+0x8]
	mov [ecx+0x20], edx
	add esi, 0x1
	mov [ecx+0x1c], esi
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1680
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1180:
	lea edi, [ebp-0x20]
	mov ebx, 0x1
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1700:
	cmp [ebp-0xa0], ecx
	jg _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1690
	mov eax, ecx
	sub eax, [ebp-0xa0]
	mov [ebp-0xdc], eax
	mov edx, [ebp+0x8]
	mov edx, [edx+0xc]
	mov [ebp-0xcc], edx
	movzx eax, byte [edx+eax]
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1710:
	mov [edi+ebx-0x1], al
	add ecx, 0x1
	add ebx, 0x1
	cmp ebx, 0x5
	jnz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1700
	mov ebx, [ebp-0xec]
	mov ecx, [ebp+0x8]
	mov [ecx+0x1c], ebx
	mov eax, [ebp-0x20]
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1450
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1690:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x8]
	movzx eax, byte [ecx+eax]
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1710
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1610:
	mov edx, [ebp-0x68]
	lea eax, [edx+edx*4]
	lea eax, [eax+eax*4]
	shl eax, 0x2
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2550:
	mov ecx, [ebp-0x84]
	mov [ecx], eax
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_300
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1220:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [eax+ecx]
	mov edi, esi
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1720
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1010:
	mov edi, [ebp+0x8]
	mov esi, [edi+0x1c]
	mov eax, [edi+0x18]
	mov [ebp-0xa4], eax
	mov eax, [ebp-0xa0]
	add eax, [ebp-0xa4]
	cmp esi, eax
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1730
	mov dword [edi], 0x1
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1970:
	mov dword [ebp-0x2c], 0x0
	xor ebx, ebx
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1760:
	mov edi, [ebp-0xac]
	and edi, 0x7
	jz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1740
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1800:
	mov edx, [ebp-0xac]
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1750
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1810:
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
	jnz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1760
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_3000:
	mov eax, [ebp-0xa0]
	add eax, [ebp-0xa4]
	cmp esi, eax
	jge _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1770
	cmp esi, [ebp-0xa0]
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1780
	mov edx, esi
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edi, ecx
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2340:
	add esi, 0x1
	mov [edi+0x1c], esi
	shl eax, 0x2
	or eax, [ebp-0x2c]
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1230
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1740:
	mov eax, [ebp-0xa0]
	add eax, [ebp-0xa4]
	cmp esi, eax
	jge _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1790
	lea eax, [esi*8]
	mov [ebp-0xac], eax
	mov edx, [ebp+0x8]
	mov [edx+0x20], eax
	add esi, 0x1
	mov [edx+0x1c], esi
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1800
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1750:
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	movzx eax, byte [eax+edx]
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1810
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1470:
	lea edi, [ebp-0x20]
	mov ebx, 0x1
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1830:
	cmp [ebp-0xa0], ecx
	jg _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1820
	mov eax, ecx
	sub eax, [ebp-0xa0]
	mov [ebp-0xdc], eax
	mov edx, [ebp+0x8]
	mov edx, [edx+0xc]
	mov [ebp-0xc8], edx
	movzx eax, byte [edx+eax]
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1850:
	mov [ebx+edi-0x1], al
	add ecx, 0x1
	add ebx, 0x1
	cmp ebx, 0x5
	jnz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1830
	mov ebx, [ebp-0xec]
	mov ecx, [ebp+0x8]
	mov [ecx+0x1c], ebx
	mov eax, [ebp-0x20]
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1840
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1820:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x8]
	movzx eax, byte [ecx+eax]
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1850
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1370:
	mov ebx, [ebp+0x8]
	mov esi, [ebx+0x1c]
	mov edi, [ebx+0x18]
	mov [ebp-0xa4], edi
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1860
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1000:
	lea ecx, [esi*8]
	mov [ebp-0xac], ecx
	mov [edx+0x20], ecx
	add esi, 0x1
	mov [edx+0x1c], esi
	mov edx, [ebp-0xac]
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1870
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1020:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [eax+edx]
	mov edi, esi
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1880
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_170:
	mov eax, [ebp-0x88]
	movss xmm0, dword [eax]
	movss [ebp-0x54], xmm0
	mov eax, [ebp+0x8]
	mov eax, [eax+0x20]
	mov [ebp-0xac], eax
	mov ebx, eax
	and ebx, 0x7
	jnz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1890
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x1c]
	mov eax, [ebp-0xa0]
	add eax, [ecx+0x18]
	cmp edx, eax
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1900
	mov dword [ecx], 0x1
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2130:
	call _Z15CL_GetMapCenterv
	movss xmm0, dword [_float_0_50000000]
	addss xmm0, [eax+0x8]
	cvttss2si ebx, xmm0
	mov [ebp-0x48], ebx
	mov dword [ebp-0x4c], 0x0
	xor ebx, ebx
	mov esi, [ebp+0x8]
	mov esi, [esi+0x14]
	mov [ebp-0xa0], esi
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1910
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1940:
	mov edx, [ebp-0xac]
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1920
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov esi, ecx
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1960:
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
	jz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1930
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1910:
	mov edi, [ebp+0x8]
	mov edi, [edi+0x20]
	mov [ebp-0xac], edi
	and edi, 0x7
	jnz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1940
	mov eax, [ebp+0x8]
	mov edx, [eax+0x1c]
	mov eax, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	add eax, [ecx+0x18]
	cmp edx, eax
	jge _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1950
	lea esi, [edx*8]
	mov [ebp-0xac], esi
	mov [ecx+0x20], esi
	lea esi, [edx+0x1]
	mov [ecx+0x1c], esi
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1940
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1920:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [eax+edx]
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1960
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1030:
	mov edx, [ebp+0x8]
	mov esi, [edx+0x1c]
	mov ecx, [edx+0x18]
	mov [ebp-0xa4], ecx
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1970
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_160:
	mov esi, [ebp-0x88]
	movss xmm0, dword [esi]
	movss [ebp-0x64], xmm0
	mov eax, [ebp+0x8]
	mov eax, [eax+0x20]
	mov [ebp-0xac], eax
	mov edi, eax
	and edi, 0x7
	jnz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1980
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x1c]
	mov eax, [ebp-0xa0]
	add eax, [ecx+0x18]
	cmp edx, eax
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1990
	mov dword [ecx], 0x1
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2250:
	call _Z15CL_GetMapCenterv
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
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2000
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2030:
	mov edx, [ebp-0xac]
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2010
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov esi, ecx
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2050:
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
	jz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2020
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2000:
	mov edi, [ebp+0x8]
	mov edi, [edi+0x20]
	mov [ebp-0xac], edi
	and edi, 0x7
	jnz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2030
	mov eax, [ebp+0x8]
	mov edx, [eax+0x1c]
	mov eax, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	add eax, [ecx+0x18]
	cmp edx, eax
	jge _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2040
	lea esi, [edx*8]
	mov [ebp-0xac], esi
	mov [ecx+0x20], esi
	lea esi, [edx+0x1]
	mov [ecx+0x1c], esi
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2030
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2010:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [eax+edx]
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2050
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1770:
	mov eax, [ebp+0x8]
	mov dword [eax], 0x1
	mov eax, 0xfffffffc
	or eax, [ebp-0x2c]
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1230
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_810:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+esi]
	mov edi, ebx
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2060
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1730:
	mov eax, edi
	lea edi, [esi*8]
	mov [ebp-0xac], edi
	mov [eax+0x20], edi
	add esi, 0x1
	mov [eax+0x1c], esi
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2070
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_180:
	mov edi, [ebp+0x8]
	mov edi, [edi+0x20]
	mov [ebp-0xac], edi
	mov ebx, edi
	and ebx, 0x7
	jnz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2080
	mov eax, [ebp+0x8]
	mov esi, [eax+0x1c]
	mov edx, [eax+0x18]
	mov [ebp-0xa4], edx
	mov eax, [ebp-0xa0]
	add eax, edx
	cmp esi, eax
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2090
	mov ecx, [ebp+0x8]
	mov dword [ecx], 0x1
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2800:
	mov ecx, esi
	lea esi, [esi+0x2]
	mov eax, [ebp-0xa0]
	add eax, [ebp-0xa4]
	cmp esi, eax
	jle _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2100
	mov ecx, [ebp+0x8]
	mov dword [ecx], 0x1
	movss xmm0, dword [_float__1_00000000]
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2700:
	mulss xmm0, [_float_0_00549316]
	mov ebx, [ebp-0x84]
	movss [ebx], xmm0
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_300
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1130:
	mov dword [esi], 0x1
	mov dword [ebp-0x70], 0xffffffff
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2110
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1890:
	mov edx, eax
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2540:
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2120
	sub edx, [ebp-0xa0]
	mov esi, [ebp+0x8]
	mov eax, [esi+0xc]
	movzx eax, byte [eax+edx]
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2350:
	add dword [ebp-0xac], 0x1
	mov edi, [ebp-0xac]
	mov [esi+0x20], edi
	mov ecx, ebx
	sar eax, cl
	test al, 0x1
	jnz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2130
	mov dword [ebp-0x50], 0x0
	xor ebx, ebx
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2140
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2180:
	mov eax, [ebp+0x8]
	mov edx, [eax+0x1c]
	mov eax, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	add eax, [ecx+0x18]
	cmp edx, eax
	jge _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2150
	lea esi, [edx*8]
	mov [ebp-0xac], esi
	mov [ecx+0x20], esi
	lea esi, [edx+0x1]
	mov [ecx+0x1c], esi
	mov edx, [ebp-0xac]
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2190:
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2160
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov esi, ecx
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2200:
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
	jz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2170
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2140:
	mov esi, [ebp+0x8]
	mov esi, [esi+0x20]
	mov [ebp-0xac], esi
	mov edi, esi
	and edi, 0x7
	jz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2180
	mov edx, esi
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2190
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2160:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [eax+edx]
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2200
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2170:
	mov eax, [ebp-0x50]
	sub eax, 0x40
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2880:
	cvtsi2ss xmm0, eax
	addss xmm0, [ebp-0x54]
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2330:
	mov ebx, [ebp-0x84]
	movss [ebx], xmm0
	mov ebx, [ebp+0x1c]
	test ebx, ebx
	jz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_300
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	mov esi, [ebp+0x18]
	mov eax, [esi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_sf_
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_300
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_190:
	mov esi, [ebp+0x8]
	mov ecx, [esi+0x1c]
	lea esi, [ecx+0x2]
	mov eax, [ebp-0xa0]
	mov edi, [ebp+0x8]
	add eax, [edi+0x18]
	cmp esi, eax
	jg _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2210
	mov ebx, 0x1
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2230:
	cmp [ebp-0xa0], ecx
	jg _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2220
	mov eax, ecx
	sub eax, [ebp-0xa0]
	mov [ebp-0xdc], eax
	mov edx, [ebp+0x8]
	mov edx, [edx+0xc]
	mov [ebp-0xd4], edx
	movzx eax, byte [edx+eax]
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2490:
	mov [ebp+ebx-0x21], al
	add ecx, 0x1
	add ebx, 0x1
	cmp ebx, 0x3
	jnz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2230
	movsx eax, word [ebp-0x20]
	mov ecx, [ebp+0x8]
	mov [ecx+0x1c], esi
	cvtsi2ss xmm0, eax
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2500:
	mulss xmm0, [_float_0_00549316]
	mov esi, [ebp-0x84]
	movss [esi], xmm0
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_300
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1980:
	mov edx, eax
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2570:
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2240
	sub edx, [ebp-0xa0]
	mov esi, [ebp+0x8]
	mov eax, [esi+0xc]
	movzx eax, byte [eax+edx]
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2440:
	add dword [ebp-0xac], 0x1
	mov edx, [ebp-0xac]
	mov [esi+0x20], edx
	mov ecx, edi
	sar eax, cl
	test al, 0x1
	jnz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2250
	mov dword [ebp-0x60], 0x0
	xor ebx, ebx
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2260
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2300:
	mov eax, [ebp+0x8]
	mov edx, [eax+0x1c]
	mov eax, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	add eax, [ecx+0x18]
	cmp edx, eax
	jge _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2270
	lea esi, [edx*8]
	mov [ebp-0xac], esi
	mov [ecx+0x20], esi
	lea esi, [edx+0x1]
	mov [ecx+0x1c], esi
	mov edx, [ebp-0xac]
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2310:
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2280
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov esi, ecx
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2320:
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
	jz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2290
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2260:
	mov esi, [ebp+0x8]
	mov esi, [esi+0x20]
	mov [ebp-0xac], esi
	mov edi, esi
	and edi, 0x7
	jz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2300
	mov edx, esi
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2310
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2280:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [eax+edx]
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2320
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2290:
	mov eax, [ebp-0x60]
	sub eax, 0x40
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2890:
	cvtsi2ss xmm0, eax
	addss xmm0, [ebp-0x64]
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2330
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1780:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+esi]
	mov edi, ebx
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2340
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2120:
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	movzx eax, byte [eax+edx]
	mov esi, ecx
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2350
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_200:
	mov dword [ebp-0x44], 0x0
	xor ebx, ebx
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2390:
	mov eax, [ebp+0x8]
	mov eax, [eax+0x20]
	mov [ebp-0xac], eax
	mov edi, eax
	and edi, 0x7
	jnz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2360
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x1c]
	mov eax, [ebp-0xa0]
	add eax, [ecx+0x18]
	cmp edx, eax
	jge _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2370
	lea esi, [edx*8]
	mov [ebp-0xac], esi
	mov [ecx+0x20], esi
	lea esi, [edx+0x1]
	mov [ecx+0x1c], esi
	mov edx, [ebp-0xac]
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2400:
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2380
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov esi, ecx
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2410:
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
	jnz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2390
	cvtsi2ss xmm0, dword [ebp-0x44]
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_3010:
	divss xmm0, dword [_float_10_00000000]
	addss xmm0, [_float_1_39999998]
	mov eax, [ebp-0x84]
	movss [eax], xmm0
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_300
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2360:
	mov edx, eax
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2400
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2380:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [eax+edx]
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2410
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2080:
	mov edx, edi
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2670:
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2420
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edi, ecx
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2530:
	add dword [ebp-0xac], 0x1
	mov edx, [ebp-0xac]
	mov [edi+0x20], edx
	mov ecx, ebx
	sar eax, cl
	test al, 0x1
	jnz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2430
	mov ebx, [ebp-0x84]
	mov dword [ebx], 0x0
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_300
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2240:
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	movzx eax, byte [eax+edx]
	mov esi, ecx
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2440
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_220:
	mov edx, ecx
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2710:
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2450
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edi, ecx
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2560:
	add dword [ebp-0xac], 0x1
	mov edx, [ebp-0xac]
	mov [edi+0x20], edx
	mov ecx, ebx
	sar eax, cl
	test al, 0x1
	jz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2460
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2470
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_770:
	mov eax, [ebp+0x8]
	mov dword [eax], 0x1
	mov dword [ebp-0x30], 0xffffffff
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2480
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1950:
	mov edi, [ebp+0x8]
	mov dword [edi], 0x1
	mov dword [ebp-0x4c], 0xffffffff
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1930:
	cvttss2si eax, [ebp-0x54]
	sub eax, [ebp-0x48]
	add eax, 0x8000
	xor [ebp-0x4c], eax
	mov edx, [ebp-0x4c]
	mov ecx, [ebp-0x48]
	lea eax, [edx+ecx-0x8000]
	cvtsi2ss xmm0, eax
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2330
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2220:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x8]
	movzx eax, byte [ecx+eax]
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2490
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2210:
	mov dword [edi], 0x1
	movss xmm0, dword [_float__1_00000000]
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2500
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_210:
	mov edx, [ebp+0x8]
	mov edx, [edx+0x20]
	mov [ebp-0xac], edx
	mov ebx, edx
	and ebx, 0x7
	jnz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2510
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x1c]
	mov eax, [ebp-0xa0]
	add eax, [ecx+0x18]
	cmp edx, eax
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2520
	mov dword [ecx], 0x1
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2590:
	mov ebx, [ebp-0x88]
	mov eax, [ebx]
	mov esi, [ebp-0x84]
	mov [esi], eax
	cmp byte [ebx+0x3], 0x1
	sbb eax, eax
	mov [esi+0x3], al
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_300
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2420:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [eax+edx]
	mov edi, esi
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2530
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2040:
	mov ebx, [ebp+0x8]
	mov dword [ebx], 0x1
	mov dword [ebp-0x5c], 0xffffffff
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2020:
	cvttss2si eax, [ebp-0x64]
	sub eax, [ebp-0x58]
	add eax, 0x8000
	xor [ebp-0x5c], eax
	mov edx, [ebp-0x5c]
	mov ecx, [ebp-0x58]
	lea eax, [edx+ecx-0x8000]
	cvtsi2ss xmm0, eax
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2330
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1900:
	lea eax, [edx*8]
	mov [ebp-0xac], eax
	mov [ecx+0x20], eax
	lea esi, [edx+0x1]
	mov [ecx+0x1c], esi
	mov edx, [ebp-0xac]
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2540
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1590:
	mov dword [ecx], 0x1
	mov eax, 0xffffff9c
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2550
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2450:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [eax+edx]
	mov edi, esi
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2560
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1990:
	lea eax, [edx*8]
	mov [ebp-0xac], eax
	mov ecx, [ebp+0x8]
	mov [ecx+0x20], eax
	lea esi, [edx+0x1]
	mov [ecx+0x1c], esi
	mov edx, [ebp-0xac]
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2570
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2520:
	lea esi, [edx*8]
	mov [ebp-0xac], esi
	mov edi, [ebp+0x8]
	mov [edi+0x20], esi
	lea esi, [edx+0x1]
	mov [edi+0x1c], esi
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2510:
	mov edx, [ebp-0xac]
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2580
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2870:
	add dword [ebp-0xac], 0x1
	mov edx, [ebp-0xac]
	mov edi, [ebp+0x8]
	mov [edi+0x20], edx
	mov ecx, ebx
	sar eax, cl
	test al, 0x1
	jnz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2590
	mov ebx, [ebp-0xac]
	and ebx, 0x7
	jnz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2600
	mov edi, [ebp+0x8]
	mov edx, [edi+0x1c]
	mov eax, [ebp-0xa0]
	add eax, [edi+0x18]
	cmp edx, eax
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2610
	mov dword [edi], 0x1
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2930:
	mov dword [ebp-0x40], 0x0
	xor ebx, ebx
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2650:
	mov edx, [ebp+0x8]
	mov edx, [edx+0x20]
	mov [ebp-0xac], edx
	mov edi, edx
	and edi, 0x7
	jnz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2620
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x1c]
	mov eax, [ebp-0xa0]
	add eax, [ecx+0x18]
	cmp edx, eax
	jge _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2630
	lea esi, [edx*8]
	mov [ebp-0xac], esi
	mov [ecx+0x20], esi
	lea esi, [edx+0x1]
	mov [ecx+0x1c], esi
	mov edx, [ebp-0xac]
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2620:
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2640
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov esi, ecx
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2660:
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
	jnz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2650
	movzx eax, byte [ebp-0x40]
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_3070:
	shl al, 0x3
	mov edx, [ebp-0x84]
	mov [edx+0x3], al
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_300
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2640:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [eax+edx]
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2660
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2090:
	lea eax, [esi*8]
	mov [ebp-0xac], eax
	mov edx, [ebp+0x8]
	mov [edx+0x20], eax
	add esi, 0x1
	mov [edx+0x1c], esi
	mov edx, [ebp-0xac]
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2670
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2100:
	mov ebx, 0x1
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2690:
	cmp [ebp-0xa0], ecx
	jg _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2680
	mov edi, ecx
	sub edi, [ebp-0xa0]
	mov [ebp-0xdc], edi
	mov eax, [ebp+0x8]
	mov eax, [eax+0xc]
	movzx eax, byte [eax+edi]
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2720:
	mov [ebp+ebx-0x21], al
	add ecx, 0x1
	add ebx, 0x1
	cmp ebx, 0x3
	jnz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2690
	movsx eax, word [ebp-0x20]
	mov edx, [ebp+0x8]
	mov [edx+0x1c], esi
	cvtsi2ss xmm0, eax
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2700
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_230:
	lea ecx, [edx*8]
	mov [ebp-0xac], ecx
	mov esi, [ebp+0x8]
	mov [esi+0x20], ecx
	lea esi, [edx+0x1]
	mov edi, [ebp+0x8]
	mov [edi+0x1c], esi
	mov edx, [ebp-0xac]
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2710
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2680:
	mov edi, [ebp+0x8]
	mov eax, [edi+0x8]
	movzx eax, byte [eax+ecx]
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2720
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_250:
	jle _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2730
	mov dword [ebp-0x78], 0x0
	mov dword [ebp-0x38], 0x0
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2740
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2780:
	sub edx, [ebp-0xa0]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov esi, ecx
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2790:
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
	jz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2750
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2740:
	mov eax, [ebp+0x8]
	mov eax, [eax+0x20]
	mov [ebp-0xac], eax
	and eax, 0x7
	mov [ebp-0x3c], eax
	jnz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2760
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x1c]
	mov eax, [ebp-0xa0]
	add eax, [ecx+0x18]
	cmp edx, eax
	jge _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2770
	lea esi, [edx*8]
	mov [ebp-0xac], esi
	mov [ecx+0x20], esi
	lea esi, [edx+0x1]
	mov [ecx+0x1c], esi
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2760:
	mov edx, [ebp-0xac]
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jge _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2780
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [eax+edx]
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2790
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2430:
	mov ebx, [ebp+0x8]
	mov esi, [ebx+0x1c]
	mov edi, [ebx+0x18]
	mov [ebp-0xa4], edi
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2800
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_260:
	mov ecx, ebx
	mov edx, [ebp-0xa0]
	mov eax, [ebp+0x8]
	add edx, [eax+0x18]
	mov [ebp-0x9c], edx
	mov ebx, eax
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2810
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2840:
	cmp esi, [ebp-0xa0]
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2820
	mov edx, esi
	sub edx, [ebp-0xa0]
	mov eax, [ebx+0xc]
	movzx ebx, byte [eax+edx]
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2860:
	lea eax, [esi+0x1]
	mov esi, [ebp+0x8]
	mov [esi+0x1c], eax
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2850:
	shl ebx, cl
	or [ebp-0x78], ebx
	add ecx, 0x8
	cmp edi, ecx
	jle _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2830
	mov ebx, [ebp+0x8]
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2810:
	mov esi, [ebx+0x1c]
	cmp esi, [ebp-0x9c]
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2840
	mov dword [ebx], 0x1
	mov ebx, 0xffffffff
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2850
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2820:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x8]
	movzx ebx, byte [eax+esi]
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2860
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2580:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [eax+edx]
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2870
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2150:
	mov edi, [ebp+0x8]
	mov dword [edi], 0x1
	mov eax, 0xffffffbf
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2880
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2270:
	mov edi, [ebp+0x8]
	mov dword [edi], 0x1
	mov eax, 0xffffffbf
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2890
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_290:
	mov edi, [ebp-0x84]
	mov eax, [edi]
	mov [esp+0xc], eax
	mov edx, [ebp+0x18]
	mov eax, [edx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_si_
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2900
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_270:
	mov edx, 0xffffffff
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2910
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2610:
	lea eax, [edx*8]
	mov ecx, [ebp+0x8]
	mov [ecx+0x20], eax
	lea esi, [edx+0x1]
	mov [ecx+0x1c], esi
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2600:
	mov esi, [ebp+0x8]
	mov ecx, [esi+0x20]
	mov edx, ecx
	sar edx, 0x3
	cmp edx, [ebp-0xa0]
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2920
	sub edx, [ebp-0xa0]
	mov eax, [esi+0xc]
	movzx eax, byte [eax+edx]
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_3050:
	add ecx, 0x1
	mov edx, [ebp+0x8]
	mov [edx+0x20], ecx
	mov ecx, ebx
	sar eax, cl
	test al, 0x1
	jnz _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2930
	mov ecx, [edx+0x1c]
	mov eax, [ebp-0xa0]
	add eax, [edx+0x18]
	cmp ecx, eax
	jge _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2940
	cmp ecx, [ebp-0xa0]
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2950
	mov edx, ecx
	sub edx, [ebp-0xa0]
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0xc]
	movzx eax, byte [eax+edx]
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_3060:
	lea esi, [ecx+0x1]
	mov edi, [ebp+0x8]
	mov [edi+0x1c], esi
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_3040:
	mov edx, [ebp-0x84]
	mov [edx], al
	mov ebx, [ebp+0x8]
	mov ecx, [ebx+0x1c]
	mov edx, [ebx+0x14]
	mov eax, edx
	add eax, [ebx+0x18]
	cmp ecx, eax
	jge _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2960
	cmp ecx, edx
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2970
	mov esi, ecx
	sub esi, edx
	mov eax, [ebx+0xc]
	movzx eax, byte [eax+esi]
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_3080:
	lea esi, [ecx+0x1]
	mov edx, [ebp+0x8]
	mov [edx+0x1c], esi
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_3030:
	mov ebx, [ebp-0x84]
	mov [ebx+0x1], al
	mov esi, [ebp+0x8]
	mov ecx, [esi+0x1c]
	mov edx, [esi+0x14]
	mov eax, edx
	add eax, [esi+0x18]
	cmp ecx, eax
	jge _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2980
	cmp ecx, edx
	jl _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2990
	mov edi, ecx
	sub edi, edx
	mov eax, [esi+0xc]
	movzx eax, byte [eax+edi]
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_3090:
	lea esi, [ecx+0x1]
	mov ecx, [ebp+0x8]
	mov [ecx+0x1c], esi
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_3020:
	mov edi, [ebp-0x84]
	mov [edi+0x2], al
	mov eax, [ebp+0x8]
	mov eax, [eax+0x14]
	mov [ebp-0xa0], eax
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2930
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_1790:
	mov ebx, [ebp+0x8]
	mov dword [ebx], 0x1
	mov dword [ebp-0x2c], 0xffffffff
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_3000
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2370:
	mov edi, [ebp+0x8]
	mov dword [edi], 0x1
	movss xmm0, dword [_float__1_00000000]
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_3010
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2980:
	mov esi, [ebp+0x8]
	mov dword [esi], 0x1
	mov eax, 0xffffffff
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_3020
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2960:
	mov ecx, [ebp+0x8]
	mov dword [ecx], 0x1
	mov eax, 0xffffffff
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_3030
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2940:
	mov eax, [ebp+0x8]
	mov dword [eax], 0x1
	mov eax, 0xffffffff
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_3040
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2920:
	mov edi, [ebp+0x8]
	mov eax, [edi+0x8]
	movzx eax, byte [eax+edx]
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_3050
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2950:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [eax+ecx]
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_3060
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2630:
	mov ebx, [ebp+0x8]
	mov dword [ebx], 0x1
	mov eax, 0xffffffff
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_3070
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2970:
	mov edi, [ebp+0x8]
	mov eax, [edi+0x8]
	movzx eax, byte [eax+ecx]
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_3080
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2770:
	mov esi, [ebp+0x8]
	mov dword [esi], 0x1
	mov dword [ebp-0x78], 0xffffffff
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2750
_Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_2990:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x8]
	movzx eax, byte [eax+ecx]
	jmp _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih_3090
	nop


;MSG_ReadStringLine(msg_t*)
_Z18MSG_ReadStringLineP5msg_t:
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
	jge _Z18MSG_ReadStringLineP5msg_t_10
_Z18MSG_ReadStringLineP5msg_t_70:
	cmp ecx, edx
	jl _Z18MSG_ReadStringLineP5msg_t_20
	mov eax, ecx
	sub eax, edx
	mov edx, eax
	mov eax, [esi+0xc]
	movzx ebx, byte [eax+edx]
	lea eax, [ecx+0x1]
	mov [esi+0x1c], eax
	cmp ebx, 0x25
	jz _Z18MSG_ReadStringLineP5msg_t_30
_Z18MSG_ReadStringLineP5msg_t_110:
	cmp ebx, 0xa
	jnz _Z18MSG_ReadStringLineP5msg_t_40
_Z18MSG_ReadStringLineP5msg_t_80:
	xor ebx, ebx
_Z18MSG_ReadStringLineP5msg_t_120:
	cmp edi, 0x3ff
	jbe _Z18MSG_ReadStringLineP5msg_t_50
_Z18MSG_ReadStringLineP5msg_t_90:
	test ebx, ebx
	jz _Z18MSG_ReadStringLineP5msg_t_60
_Z18MSG_ReadStringLineP5msg_t_100:
	add edi, 0x1
	mov ecx, [esi+0x1c]
	mov edx, [esi+0x14]
	mov eax, edx
	add eax, [esi+0x18]
	cmp ecx, eax
	jl _Z18MSG_ReadStringLineP5msg_t_70
_Z18MSG_ReadStringLineP5msg_t_10:
	mov dword [esi], 0x1
	jmp _Z18MSG_ReadStringLineP5msg_t_80
_Z18MSG_ReadStringLineP5msg_t_40:
	cmp ebx, 0xffffffff
	jz _Z18MSG_ReadStringLineP5msg_t_80
	cmp edi, 0x3ff
	ja _Z18MSG_ReadStringLineP5msg_t_90
_Z18MSG_ReadStringLineP5msg_t_50:
	movsx eax, bl
	mov [esp], eax
	call _Z11I_CleanCharc
	mov [edi+_ZZ18MSG_ReadStringLineP5msg_tE6string], al
	test ebx, ebx
	jnz _Z18MSG_ReadStringLineP5msg_t_100
_Z18MSG_ReadStringLineP5msg_t_60:
	mov byte [_ZZ18MSG_ReadStringLineP5msg_tE6string+0x3ff], 0x0
	mov eax, _ZZ18MSG_ReadStringLineP5msg_tE6string
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18MSG_ReadStringLineP5msg_t_20:
	mov eax, [esi+0x8]
	movzx ebx, byte [eax+ecx]
	lea eax, [ecx+0x1]
	mov [esi+0x1c], eax
	cmp ebx, 0x25
	jnz _Z18MSG_ReadStringLineP5msg_t_110
_Z18MSG_ReadStringLineP5msg_t_30:
	mov bl, 0x2e
	jmp _Z18MSG_ReadStringLineP5msg_t_120


;MSG_WriteBigString(msg_t*, char const*)
_Z18MSG_WriteBigStringP5msg_tPKc:
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
	jle _Z18MSG_WriteBigStringP5msg_tPKc_10
	mov dword [esp+0x4], _cstring_msg_writestring_1
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	mov edx, [ebp+0x8]
	mov eax, [edx+0x14]
	lea edx, [eax+0x1]
	mov ecx, [ebp+0x8]
	cmp edx, [ecx+0x10]
	jle _Z18MSG_WriteBigStringP5msg_tPKc_20
_Z18MSG_WriteBigStringP5msg_tPKc_40:
	mov dword [ecx], 0x1
	add esp, 0x201c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18MSG_WriteBigStringP5msg_tPKc_10:
	mov dword [esp+0x8], 0x2000
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	lea ecx, [ebp-0x2018]
	mov [esp], ecx
	call _Z10I_strncpyzPcPKci
	test esi, esi
	jg _Z18MSG_WriteBigStringP5msg_tPKc_30
	lea edx, [esi+0x1]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x14]
	lea ebx, [edx+eax]
	cmp ebx, [ecx+0x10]
	jg _Z18MSG_WriteBigStringP5msg_tPKc_40
_Z18MSG_WriteBigStringP5msg_tPKc_60:
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
_Z18MSG_WriteBigStringP5msg_tPKc_20:
	add eax, [ecx+0x8]
	mov byte [eax], 0x0
	mov [ecx+0x14], edx
	add esp, 0x201c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18MSG_WriteBigStringP5msg_tPKc_30:
	xor edi, edi
_Z18MSG_WriteBigStringP5msg_tPKc_50:
	lea eax, [ebp-0x2018]
	lea ebx, [edi+eax]
	movsx eax, byte [ebx]
	mov [esp], eax
	call _Z11I_CleanCharc
	mov [ebx], al
	add edi, 0x1
	cmp esi, edi
	jnz _Z18MSG_WriteBigStringP5msg_tPKc_50
	lea edx, [esi+0x1]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x14]
	lea ebx, [edx+eax]
	cmp ebx, [ecx+0x10]
	jg _Z18MSG_WriteBigStringP5msg_tPKc_40
	jmp _Z18MSG_WriteBigStringP5msg_tPKc_60


;MSG_GetUsedBitCount(msg_t const*)
_Z19MSG_GetUsedBitCountPK5msg_t:
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
_Z19MSG_ReadDeltaClientP5msg_tiPK13clientState_sPS1_i:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x90
	mov ecx, [ebp+0x10]
	mov eax, numClientStateFields
	mov esi, [eax]
	test ecx, ecx
	jz _Z19MSG_ReadDeltaClientP5msg_tiPK13clientState_sPS1_i_10
_Z19MSG_ReadDeltaClientP5msg_tiPK13clientState_sPS1_i_20:
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
	call _Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi
	add esp, 0x90
	pop ebx
	pop esi
	pop ebp
	ret
_Z19MSG_ReadDeltaClientP5msg_tiPK13clientState_sPS1_i_10:
	lea ebx, [ebp-0x6c]
	mov dword [esp+0x8], 0x64
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call memset
	mov ecx, ebx
	jmp _Z19MSG_ReadDeltaClientP5msg_tiPK13clientState_sPS1_i_20
	nop


;MSG_ReadDeltaEntity(msg_t*, int, entityState_s const*, entityState_s*, int)
_Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i:
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
	jnz _Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_10
	mov edx, [esi+0x1c]
	mov ebx, [esi+0x14]
	mov eax, ebx
	add eax, [esi+0x18]
	cmp edx, eax
	jl _Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_20
	mov dword [esi], 0x1
_Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_70:
	mov edi, [ebp-0x3c]
	and edi, 0x7
	jz _Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_30
_Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_280:
	mov edx, [ebp-0x3c]
	sar edx, 0x3
	cmp edx, ebx
	jl _Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_40
	sub edx, ebx
	mov eax, [esi+0xc]
	movzx eax, byte [eax+edx]
_Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_270:
	add dword [ebp-0x3c], 0x1
	mov edx, [ebp-0x3c]
	mov [esi+0x20], edx
	mov ecx, edi
	sar eax, cl
	test al, 0x1
	jnz _Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_50
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
_Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_10:
	mov ebx, [esi+0x14]
_Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_110:
	mov edx, [ebp-0x3c]
	sar edx, 0x3
	cmp edx, ebx
	jl _Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_60
	sub edx, ebx
	mov eax, [esi+0xc]
	movzx eax, byte [eax+edx]
_Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_100:
	add dword [ebp-0x3c], 0x1
	mov edx, [ebp-0x3c]
	mov [esi+0x20], edx
	mov ecx, edi
	sar eax, cl
	test al, 0x1
	jz _Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_70
	mov eax, cl_shownet
	mov eax, [eax]
	test eax, eax
	jz _Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_80
	mov eax, [eax+0xc]
	cmp eax, 0x1
	jle _Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_90
_Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_310:
	mov ebx, [ebp+0x18]
	mov [esp+0xc], ebx
	mov eax, [esi+0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_3i_3i_remove
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	mov eax, 0x1
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_60:
	mov eax, [esi+0x8]
	movzx eax, byte [eax+edx]
	jmp _Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_100
_Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_20:
	lea ecx, [edx*8]
	mov [ebp-0x3c], ecx
	mov [esi+0x20], ecx
	lea eax, [edx+0x1]
	mov [esi+0x1c], eax
	jmp _Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_110
_Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_30:
	mov edx, [esi+0x1c]
	mov eax, ebx
	add eax, [esi+0x18]
	cmp edx, eax
	jl _Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_120
	mov dword [esi], 0x1
_Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_50:
	mov dword [ebp-0x24], 0x0
	xor edi, edi
	mov eax, [ebp-0x3c]
	jmp _Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_130
_Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_160:
	mov edx, [ebp-0x3c]
	sar edx, 0x3
	cmp edx, ebx
	jl _Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_140
_Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_180:
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
	jz _Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_150
_Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_190:
	mov [ebp-0x3c], eax
_Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_130:
	and eax, 0x7
	mov [ebp-0x20], eax
	jnz _Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_160
	mov edx, [esi+0x1c]
	mov eax, ebx
	add eax, [esi+0x18]
	cmp edx, eax
	jge _Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_170
	lea ecx, [edx*8]
	mov [ebp-0x3c], ecx
	mov [esi+0x20], ecx
	lea eax, [edx+0x1]
	mov [esi+0x1c], eax
	mov edx, [ebp-0x3c]
	sar edx, 0x3
	cmp edx, ebx
	jge _Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_180
_Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_140:
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
	jnz _Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_190
_Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_150:
	mov ebx, [ebp-0x24]
	mov [ebp-0x1c], ebx
_Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_350:
	mov eax, cl_shownet
	mov eax, [eax]
	test eax, eax
	jz _Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_200
	mov eax, [eax+0xc]
	cmp eax, 0x1
	jle _Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_210
_Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_290:
	mov edx, [ebp+0x14]
	mov eax, [edx]
	mov [esp+0xc], eax
	mov eax, [esi+0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_3i_3i_
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	mov dword [ebp-0x28], 0x1
_Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_300:
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
	call _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih
	mov eax, [ebx+0x4]
	mov edx, [ebp+0x14]
	mov eax, [eax+edx]
	mov [esp], eax
	call _Z34MSG_GetStateFieldListForEntityTypei
	mov [ebp-0x30], eax
	mov ecx, [eax]
	mov [ebp-0x2c], ecx
	mov edx, [ebp-0x1c]
	cmp [eax+0x4], edx
	jb _Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_220
	mov eax, msg_dumpEnts
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_230
_Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_340:
	mov ebx, [ebp-0x2c]
	add ebx, 0x10
	cmp dword [ebp-0x1c], 0x1
	ja _Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_240
_Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_330:
	mov eax, [ebp-0x1c]
	shl eax, 0x4
	mov ecx, [ebp-0x2c]
	add ecx, eax
	mov ebx, [ebp-0x1c]
	mov edx, [ebp-0x30]
	cmp [edx+0x4], ebx
	jbe _Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_250
_Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_260:
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
	jb _Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_260
_Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_250:
	xor eax, eax
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_40:
	mov eax, [esi+0x8]
	movzx eax, byte [eax+edx]
	jmp _Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_270
_Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_220:
	mov dword [esi], 0x1
	xor eax, eax
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_120:
	lea ecx, [edx*8]
	mov [ebp-0x3c], ecx
	mov [esi+0x20], ecx
	lea eax, [edx+0x1]
	mov [esi+0x1c], eax
	jmp _Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_280
_Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_210:
	add eax, 0x1
	jz _Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_290
_Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_200:
	mov dword [ebp-0x28], 0x0
	jmp _Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_300
_Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_90:
	add eax, 0x1
	jz _Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_310
_Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_80:
	mov eax, 0x1
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_240:
	mov edi, 0x1
_Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_320:
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
	call _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih
	add edi, 0x1
	add ebx, 0x10
	cmp [ebp-0x1c], edi
	jnz _Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_320
	jmp _Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_330
_Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_230:
	mov eax, [ebx+0x4]
	mov ecx, [ebp+0x14]
	mov eax, [ecx+eax]
	mov [esp], eax
	call _Z20BG_GetEntityTypeNamei
	mov [esp+0xc], eax
	mov ebx, [ebp+0x18]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_3i_changed_ent_e
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	jmp _Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_340
_Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_170:
	mov dword [esi], 0x1
	mov dword [ebp-0x1c], 0xffffffff
	jmp _Z19MSG_ReadDeltaEntityP5msg_tiPK13entityState_sPS1_i_350
	nop


;MSG_ReadEntityIndex(msg_t*, int)
_Z19MSG_ReadEntityIndexP5msg_ti:
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
	jnz _Z19MSG_ReadEntityIndexP5msg_ti_10
	mov edx, [ebx+0x1c]
	mov esi, [ebx+0x14]
	mov eax, esi
	add eax, [ebx+0x18]
	cmp edx, eax
	jge _Z19MSG_ReadEntityIndexP5msg_ti_20
	lea ecx, [edx*8]
	mov [ebp-0x3c], ecx
	mov [ebx+0x20], ecx
	lea eax, [edx+0x1]
	mov [ebx+0x1c], eax
	mov edx, [ebp-0x3c]
	sar edx, 0x3
	cmp edx, esi
	jl _Z19MSG_ReadEntityIndexP5msg_ti_30
_Z19MSG_ReadEntityIndexP5msg_ti_70:
	sub edx, esi
	mov eax, [ebx+0xc]
	movzx eax, byte [eax+edx]
	add dword [ebp-0x3c], 0x1
	mov edx, [ebp-0x3c]
	mov [ebx+0x20], edx
	mov ecx, edi
	sar eax, cl
	test al, 0x1
	jz _Z19MSG_ReadEntityIndexP5msg_ti_40
_Z19MSG_ReadEntityIndexP5msg_ti_80:
	mov edx, msg_printEntityNums
	mov eax, [edx]
	cmp byte [eax+0xc], 0x0
	jnz _Z19MSG_ReadEntityIndexP5msg_ti_50
_Z19MSG_ReadEntityIndexP5msg_ti_180:
	mov edx, [ebx+0x24]
	add edx, 0x1
	mov [ebx+0x24], edx
_Z19MSG_ReadEntityIndexP5msg_ti_190:
	mov ecx, msg_printEntityNums
	mov eax, [ecx]
	cmp byte [eax+0xc], 0x0
	jz _Z19MSG_ReadEntityIndexP5msg_ti_60
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_read_entity_num_
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	mov edx, [ebx+0x24]
_Z19MSG_ReadEntityIndexP5msg_ti_60:
	mov eax, edx
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19MSG_ReadEntityIndexP5msg_ti_10:
	mov esi, [ebx+0x14]
	mov edx, [ebp-0x3c]
	sar edx, 0x3
	cmp edx, esi
	jge _Z19MSG_ReadEntityIndexP5msg_ti_70
_Z19MSG_ReadEntityIndexP5msg_ti_30:
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	add dword [ebp-0x3c], 0x1
	mov edx, [ebp-0x3c]
	mov [ebx+0x20], edx
	mov ecx, edi
	sar eax, cl
	test al, 0x1
	jnz _Z19MSG_ReadEntityIndexP5msg_ti_80
_Z19MSG_ReadEntityIndexP5msg_ti_40:
	cmp dword [ebp+0xc], 0xa
	jz _Z19MSG_ReadEntityIndexP5msg_ti_90
_Z19MSG_ReadEntityIndexP5msg_ti_250:
	mov edx, msg_printEntityNums
	mov eax, [edx]
	cmp byte [eax+0xc], 0x0
	jnz _Z19MSG_ReadEntityIndexP5msg_ti_100
_Z19MSG_ReadEntityIndexP5msg_ti_230:
	mov eax, [ebp+0xc]
	test eax, eax
	jle _Z19MSG_ReadEntityIndexP5msg_ti_110
	mov dword [ebp-0x24], 0x0
	xor edi, edi
	mov esi, [ebx+0x14]
	mov edx, [ebx+0x20]
	jmp _Z19MSG_ReadEntityIndexP5msg_ti_120
_Z19MSG_ReadEntityIndexP5msg_ti_160:
	sub edx, esi
	mov eax, [ebx+0xc]
	movzx eax, byte [eax+edx]
_Z19MSG_ReadEntityIndexP5msg_ti_170:
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
	jz _Z19MSG_ReadEntityIndexP5msg_ti_130
	mov edx, eax
_Z19MSG_ReadEntityIndexP5msg_ti_120:
	mov [ebp-0x3c], edx
	and edx, 0x7
	mov [ebp-0x20], edx
	jnz _Z19MSG_ReadEntityIndexP5msg_ti_140
	mov edx, [ebx+0x1c]
	mov eax, esi
	add eax, [ebx+0x18]
	cmp edx, eax
	jge _Z19MSG_ReadEntityIndexP5msg_ti_150
	lea ecx, [edx*8]
	mov [ebp-0x3c], ecx
	mov [ebx+0x20], ecx
	lea eax, [edx+0x1]
	mov [ebx+0x1c], eax
_Z19MSG_ReadEntityIndexP5msg_ti_140:
	mov edx, [ebp-0x3c]
	sar edx, 0x3
	cmp edx, esi
	jge _Z19MSG_ReadEntityIndexP5msg_ti_160
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	jmp _Z19MSG_ReadEntityIndexP5msg_ti_170
_Z19MSG_ReadEntityIndexP5msg_ti_20:
	mov dword [ebx], 0x1
	mov edx, msg_printEntityNums
	mov eax, [edx]
	cmp byte [eax+0xc], 0x0
	jz _Z19MSG_ReadEntityIndexP5msg_ti_180
_Z19MSG_ReadEntityIndexP5msg_ti_50:
	mov dword [esp+0x4], _cstring_entity_num_1_bit
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	jmp _Z19MSG_ReadEntityIndexP5msg_ti_180
_Z19MSG_ReadEntityIndexP5msg_ti_110:
	mov dword [ebp-0x24], 0x0
_Z19MSG_ReadEntityIndexP5msg_ti_130:
	mov edx, [ebp-0x24]
	mov [ebx+0x24], edx
	jmp _Z19MSG_ReadEntityIndexP5msg_ti_190
_Z19MSG_ReadEntityIndexP5msg_ti_90:
	mov edi, [ebp-0x3c]
	and edi, 0x7
	jnz _Z19MSG_ReadEntityIndexP5msg_ti_200
	mov edx, [ebx+0x1c]
	mov eax, esi
	add eax, [ebx+0x18]
	cmp edx, eax
	jge _Z19MSG_ReadEntityIndexP5msg_ti_210
	lea ecx, [edx*8]
	mov [ebx+0x20], ecx
	lea eax, [edx+0x1]
	mov [ebx+0x1c], eax
	jmp _Z19MSG_ReadEntityIndexP5msg_ti_220
_Z19MSG_ReadEntityIndexP5msg_ti_100:
	mov eax, [ebp+0xc]
	add eax, 0x2
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_entity_num_i_bit
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	jmp _Z19MSG_ReadEntityIndexP5msg_ti_230
_Z19MSG_ReadEntityIndexP5msg_ti_200:
	mov ecx, [ebx+0x20]
_Z19MSG_ReadEntityIndexP5msg_ti_220:
	mov edx, ecx
	sar edx, 0x3
	cmp edx, esi
	jl _Z19MSG_ReadEntityIndexP5msg_ti_240
	sub edx, esi
	mov eax, [ebx+0xc]
	movzx eax, byte [eax+edx]
_Z19MSG_ReadEntityIndexP5msg_ti_320:
	add ecx, 0x1
	mov [ebx+0x20], ecx
	mov ecx, edi
	sar eax, cl
	test al, 0x1
	jnz _Z19MSG_ReadEntityIndexP5msg_ti_250
	mov ecx, msg_printEntityNums
	mov eax, [ecx]
	cmp byte [eax+0xc], 0x0
	jnz _Z19MSG_ReadEntityIndexP5msg_ti_260
_Z19MSG_ReadEntityIndexP5msg_ti_340:
	mov eax, [ebx+0x24]
	mov [ebp-0x1c], eax
	mov dword [ebp-0x2c], 0x0
	xor edi, edi
	mov edx, [ebx+0x20]
	mov [ebp-0x3c], edx
	and edx, 0x7
	mov [ebp-0x28], edx
	jnz _Z19MSG_ReadEntityIndexP5msg_ti_270
_Z19MSG_ReadEntityIndexP5msg_ti_310:
	mov edx, [ebx+0x1c]
	mov eax, esi
	add eax, [ebx+0x18]
	cmp edx, eax
	jge _Z19MSG_ReadEntityIndexP5msg_ti_280
	lea ecx, [edx*8]
	mov [ebp-0x3c], ecx
	mov [ebx+0x20], ecx
	lea eax, [edx+0x1]
	mov [ebx+0x1c], eax
_Z19MSG_ReadEntityIndexP5msg_ti_270:
	mov edx, [ebp-0x3c]
	sar edx, 0x3
	cmp edx, esi
	jl _Z19MSG_ReadEntityIndexP5msg_ti_290
	sub edx, esi
	mov eax, [ebx+0xc]
	movzx eax, byte [eax+edx]
_Z19MSG_ReadEntityIndexP5msg_ti_330:
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
	jz _Z19MSG_ReadEntityIndexP5msg_ti_300
	mov edx, eax
	mov [ebp-0x3c], edx
	and edx, 0x7
	mov [ebp-0x28], edx
	jnz _Z19MSG_ReadEntityIndexP5msg_ti_270
	jmp _Z19MSG_ReadEntityIndexP5msg_ti_310
_Z19MSG_ReadEntityIndexP5msg_ti_240:
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	jmp _Z19MSG_ReadEntityIndexP5msg_ti_320
_Z19MSG_ReadEntityIndexP5msg_ti_210:
	mov dword [ebx], 0x1
	jmp _Z19MSG_ReadEntityIndexP5msg_ti_250
_Z19MSG_ReadEntityIndexP5msg_ti_290:
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	jmp _Z19MSG_ReadEntityIndexP5msg_ti_330
_Z19MSG_ReadEntityIndexP5msg_ti_280:
	mov dword [ebx], 0x1
	mov dword [ebp-0x2c], 0xffffffff
_Z19MSG_ReadEntityIndexP5msg_ti_300:
	mov edx, [ebp-0x2c]
	add edx, [ebp-0x1c]
	mov [ebx+0x24], edx
	jmp _Z19MSG_ReadEntityIndexP5msg_ti_190
_Z19MSG_ReadEntityIndexP5msg_ti_150:
	mov dword [ebx], 0x1
	mov dword [ebp-0x24], 0xffffffff
	jmp _Z19MSG_ReadEntityIndexP5msg_ti_130
_Z19MSG_ReadEntityIndexP5msg_ti_260:
	mov dword [esp+0x8], 0x6
	mov dword [esp+0x4], _cstring_entity_num_i_bit1
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	mov esi, [ebx+0x14]
	jmp _Z19MSG_ReadEntityIndexP5msg_ti_340
	nop


;GetMinBitCountForNum(unsigned int)
_Z20GetMinBitCountForNumj:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov eax, [ebp+0x8]
	test eax, 0xffff0000
	jnz _Z20GetMinBitCountForNumj_10
	mov ecx, 0x10
	mov esi, 0x10
	shl eax, cl
	test eax, 0xff000000
	jnz _Z20GetMinBitCountForNumj_20
_Z20GetMinBitCountForNumj_50:
	mov ebx, 0x8
	mov edx, 0x8
	lea esi, [edx+esi]
	mov ecx, ebx
	shl eax, cl
	test eax, 0xf0000000
	jnz _Z20GetMinBitCountForNumj_30
_Z20GetMinBitCountForNumj_60:
	mov ebx, 0x4
	mov edx, 0x4
	add esi, edx
	mov ecx, ebx
	shl eax, cl
	test eax, 0xc0000000
	jnz _Z20GetMinBitCountForNumj_40
_Z20GetMinBitCountForNumj_70:
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
_Z20GetMinBitCountForNumj_10:
	xor ecx, ecx
	xor esi, esi
	shl eax, cl
	test eax, 0xff000000
	jz _Z20GetMinBitCountForNumj_50
_Z20GetMinBitCountForNumj_20:
	xor ebx, ebx
	xor edx, edx
	lea esi, [edx+esi]
	mov ecx, ebx
	shl eax, cl
	test eax, 0xf0000000
	jz _Z20GetMinBitCountForNumj_60
_Z20GetMinBitCountForNumj_30:
	xor ebx, ebx
	xor edx, edx
	add esi, edx
	mov ecx, ebx
	shl eax, cl
	test eax, 0xc0000000
	jz _Z20GetMinBitCountForNumj_70
_Z20GetMinBitCountForNumj_40:
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
_Z20MSG_ReadBitsCompressPKhPhi:
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
	jg _Z20MSG_ReadBitsCompressPKhPhi_10
	xor eax, eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20MSG_ReadBitsCompressPKhPhi_10:
	mov ebx, [ebp+0xc]
	lea edi, [ebp-0x1c]
_Z20MSG_ReadBitsCompressPKhPhi_20:
	lea eax, [ebp-0x20]
	mov [esp+0xc], eax
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov eax, [msgHuff+0x8]
	mov [esp], eax
	call _Z18Huff_offsetReceiveP8nodetypePiPKhS1_
	mov eax, [ebp-0x1c]
	mov [ebx], al
	add ebx, 0x1
	cmp esi, [ebp-0x20]
	jg _Z20MSG_ReadBitsCompressPKhPhi_20
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
_Z21MSG_InitReadOnlySplitP5msg_tPhiS1_i:
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
	jnz _Z21MSG_InitReadOnlySplitP5msg_tPhiS1_i_10
	mov dword [msgInit], 0x1
	mov dword [esp], msgHuff
	call _Z9Huff_InitP9huffman_t
	call _Z16Sys_Millisecondsv
	mov ebx, eax
	mov eax, msg_hData
	mov [esp+0x4], eax
	mov dword [esp], msgHuff
	call _Z18Huff_BuildFromDataP6huff_tPKi
	call _Z16Sys_Millisecondsv
	sub eax, ebx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_huffman_took_d_m
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
_Z21MSG_InitReadOnlySplitP5msg_tPhiS1_i_10:
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
_Z21MSG_SetDefaultUserCmdP13playerState_sP9usercmd_s:
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
_Z21MSG_SetDefaultUserCmdP13playerState_sP9usercmd_s_10:
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
	jnz _Z21MSG_SetDefaultUserCmdP13playerState_sP9usercmd_s_10
	test byte [esi+0x14], 0x4
	jz _Z21MSG_SetDefaultUserCmdP13playerState_sP9usercmd_s_20
	mov eax, [esi+0xb0]
	test al, 0x8
	jz _Z21MSG_SetDefaultUserCmdP13playerState_sP9usercmd_s_30
	or dword [ebx+0x4], 0x100
_Z21MSG_SetDefaultUserCmdP13playerState_sP9usercmd_s_70:
	movss xmm0, dword [esi+0x5c]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jbe _Z21MSG_SetDefaultUserCmdP13playerState_sP9usercmd_s_40
_Z21MSG_SetDefaultUserCmdP13playerState_sP9usercmd_s_80:
	or dword [ebx+0x4], 0x80
_Z21MSG_SetDefaultUserCmdP13playerState_sP9usercmd_s_90:
	ucomiss xmm1, [esi+0xf4]
	jp _Z21MSG_SetDefaultUserCmdP13playerState_sP9usercmd_s_50
	jz _Z21MSG_SetDefaultUserCmdP13playerState_sP9usercmd_s_60
_Z21MSG_SetDefaultUserCmdP13playerState_sP9usercmd_s_50:
	or dword [ebx+0x4], 0x800
_Z21MSG_SetDefaultUserCmdP13playerState_sP9usercmd_s_60:
	cmp word [esi+0xc], 0x0
	jns _Z21MSG_SetDefaultUserCmdP13playerState_sP9usercmd_s_20
	or dword [ebx+0x4], 0x2
_Z21MSG_SetDefaultUserCmdP13playerState_sP9usercmd_s_20:
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21MSG_SetDefaultUserCmdP13playerState_sP9usercmd_s_30:
	test al, 0x4
	jz _Z21MSG_SetDefaultUserCmdP13playerState_sP9usercmd_s_70
	or dword [ebx+0x4], 0x200
	movss xmm0, dword [esi+0x5c]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	ja _Z21MSG_SetDefaultUserCmdP13playerState_sP9usercmd_s_80
_Z21MSG_SetDefaultUserCmdP13playerState_sP9usercmd_s_40:
	ucomiss xmm1, xmm0
	jbe _Z21MSG_SetDefaultUserCmdP13playerState_sP9usercmd_s_90
	or dword [ebx+0x4], 0x40
	jmp _Z21MSG_SetDefaultUserCmdP13playerState_sP9usercmd_s_90
	nop


;MSG_WriteBitsCompress(unsigned char, unsigned char const*, unsigned char*, int)
_Z21MSG_WriteBitsCompresshPKhPhi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x14]
	mov dword [ebp-0x1c], 0x0
	test eax, eax
	jnz _Z21MSG_WriteBitsCompresshPKhPhi_10
	mov eax, [ebp-0x1c]
	add eax, 0x7
	sar eax, 0x3
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21MSG_WriteBitsCompresshPKhPhi_10:
	mov ebx, [ebp+0xc]
	lea edi, [ebp-0x1c]
	lea esi, [ebx+eax]
_Z21MSG_WriteBitsCompresshPKhPhi_20:
	mov [esp+0xc], edi
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	movzx eax, byte [ebx]
	mov [esp+0x4], eax
	mov dword [esp], msgHuff
	call _Z19Huff_offsetTransmitP6huff_tiPhPi
	add ebx, 0x1
	cmp ebx, esi
	jnz _Z21MSG_WriteBitsCompresshPKhPhi_20
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
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1_:
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
	jnz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__10
	mov esi, [ebp+0x8]
	mov ebx, [esi+0x1c]
	mov eax, esi
	mov esi, [esi+0x18]
	mov edi, [eax+0x14]
	lea eax, [edi+esi]
	cmp ebx, eax
	jge _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__20
	lea ecx, [ebx*8]
	mov [ebp-0xec], ecx
	mov eax, [ebp+0x8]
	mov [eax+0x20], ecx
	add ebx, 0x1
	mov [eax+0x1c], ebx
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jl _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__30
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__80:
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
	jz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__40
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__90:
	mov ebx, [edx+0x1c]
	mov eax, [ebp+0x10]
	mov ecx, [eax]
	lea eax, [edi+esi]
	cmp ebx, eax
	jge _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__50
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__160:
	cmp ebx, edi
	jl _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__60
	mov edx, ebx
	sub edx, edi
	mov esi, [ebp+0x8]
	mov eax, [esi+0xc]
	movzx eax, byte [eax+edx]
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__870:
	add ebx, 0x1
	mov [esi+0x1c], ebx
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__70
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__10:
	mov edx, [ebp+0x8]
	mov esi, [edx+0x18]
	mov edi, [edx+0x14]
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jge _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__80
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__30:
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
	jnz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__90
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__40:
	mov ebx, [ebp+0x8]
	mov ecx, [ebx+0x1c]
	lea eax, [ecx+0x4]
	mov [ebp-0xd8], eax
	lea eax, [edi+esi]
	cmp [ebp-0xd8], eax
	jg _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__100
	mov ebx, 0x1
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__120:
	cmp edi, ecx
	jg _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__110
	mov edx, ecx
	sub edx, edi
	mov [ebp-0x11c], edx
	mov esi, [ebp+0x8]
	mov esi, [esi+0xc]
	mov [ebp-0xfc], esi
	movzx eax, byte [esi+edx]
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__880:
	mov [ebx+ebp-0x1d], al
	add ecx, 0x1
	add ebx, 0x1
	cmp ebx, 0x5
	jnz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__120
	mov ebx, [ebp-0xd8]
	mov ecx, [ebp+0x8]
	mov [ecx+0x1c], ebx
	mov eax, [ebp-0x1c]
	mov edx, [ebp+0x14]
	mov [edx], eax
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__840:
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+0x20]
	mov [ebp-0xec], ecx
	mov esi, ecx
	and esi, 0x7
	jz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__130
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__170:
	mov ebx, [ebp+0x8]
	mov edi, [ebx+0x14]
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jge _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__140
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__190:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	mov edx, ebx
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__150
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__20:
	mov edx, [ebp+0x8]
	mov dword [edx], 0x1
	mov eax, [ebp+0x10]
	mov ecx, [eax]
	lea eax, [edi+esi]
	cmp ebx, eax
	jl _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__160
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__50:
	mov eax, [ebp+0x8]
	mov dword [eax], 0x1
	mov eax, 0xffffffff
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__70:
	add eax, ecx
	mov edx, [ebp+0x14]
	mov [edx], eax
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+0x20]
	mov [ebp-0xec], ecx
	mov esi, ecx
	and esi, 0x7
	jnz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__170
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__130:
	mov ebx, [ebp+0x8]
	mov edx, [ebx+0x1c]
	mov edi, [ebx+0x14]
	mov eax, edi
	add eax, [ebx+0x18]
	cmp edx, eax
	jge _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__180
	mov ecx, ebx
	lea eax, [edx*8]
	mov [ebp-0xec], eax
	mov [ebx+0x20], eax
	lea ebx, [edx+0x1]
	mov [ecx+0x1c], ebx
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jl _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__190
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__140:
	sub edx, edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edx, ecx
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__150:
	add dword [ebp-0xec], 0x1
	mov ecx, [ebp-0xec]
	mov [edx+0x20], ecx
	mov edx, eax
	mov ecx, esi
	sar edx, cl
	and edx, 0x1
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2340:
	mov eax, [ebp+0xc]
	mov ebx, kbitmask
	and eax, [ebx+0x4]
	cmp eax, edx
	jz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__200
	mov esi, [ebp+0x14]
	and dword [esi+0x4], 0xfffffffe
	mov eax, [ebp+0x8]
	mov eax, [eax+0x20]
	mov [ebp-0xec], eax
	mov esi, eax
	and esi, 0x7
	jnz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__210
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x1c]
	mov edi, [ecx+0x14]
	mov eax, edi
	add eax, [ecx+0x18]
	cmp edx, eax
	jge _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__220
	lea ebx, [edx*8]
	mov [ebp-0xec], ebx
	mov [ecx+0x20], ebx
	lea ebx, [edx+0x1]
	mov [ecx+0x1c], ebx
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jl _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__230
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__470:
	sub edx, edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edx, ecx
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__480:
	add dword [ebp-0xec], 0x1
	mov ecx, [ebp-0xec]
	mov [edx+0x20], ecx
	mov edx, eax
	mov ecx, esi
	sar edx, cl
	and edx, 0x1
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2360:
	mov eax, [ebp+0xc]
	mov ebx, kbitmask
	and eax, [ebx+0x4]
	cmp eax, edx
	jnz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__240
	mov eax, [ebp+0xc]
	mov esi, [ebp+0x14]
	xor eax, [esi]
	mov [ebp-0x2c], eax
	mov esi, [esi+0x4]
	mov ecx, [ebp-0xec]
	and ecx, 0x7
	mov [ebp-0xd4], ecx
	jnz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__250
	mov ebx, [ebp+0x8]
	mov edx, [ebx+0x1c]
	mov eax, edi
	add eax, [ebx+0x18]
	cmp edx, eax
	jge _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__260
	mov ecx, ebx
	lea eax, [edx*8]
	mov [ebp-0xec], eax
	mov [ebx+0x20], eax
	lea ebx, [edx+0x1]
	mov [ecx+0x1c], ebx
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__250:
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jge _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__270
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	movzx eax, byte [eax+edx]
	mov ebx, ecx
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__850:
	add dword [ebp-0xec], 0x1
	mov edx, [ebp-0xec]
	mov [ebx+0x20], edx
	mov edx, eax
	movzx ecx, byte [ebp-0xd4]
	sar edx, cl
	and edx, 0x1
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2400:
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
	jnz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__280
	mov esi, [ebp+0x8]
	mov ebx, [esi+0x1c]
	mov eax, esi
	mov esi, [esi+0x18]
	mov edi, [eax+0x14]
	lea eax, [edi+esi]
	cmp ebx, eax
	jl _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__290
	mov edx, [ebp+0x8]
	mov dword [edx], 0x1
	mov ecx, ebx
	lea edx, [ebx+0x2]
	mov [ebp-0xc8], edx
	lea eax, [edi+esi]
	cmp edx, eax
	jg _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__300
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1590:
	mov ebx, 0x1
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__320:
	cmp edi, ecx
	jg _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__310
	mov esi, ecx
	sub esi, edi
	mov [ebp-0x11c], esi
	mov eax, [ebp+0x8]
	mov eax, [eax+0xc]
	movzx eax, byte [eax+esi]
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1740:
	mov [ebx+ebp-0x1d], al
	add ecx, 0x1
	add ebx, 0x1
	cmp ebx, 0x3
	jnz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__320
	movzx eax, word [ebp-0x1c]
	mov ecx, [ebp-0xc8]
	mov edx, [ebp+0x8]
	mov [edx+0x1c], ecx
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1600:
	xor ax, [ebp-0x2c]
	cwde
	mov [ebp-0xd0], eax
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1580:
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
	jnz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__330
	mov ecx, [ebp+0x8]
	mov ebx, [ecx+0x1c]
	mov esi, [ecx+0x18]
	mov edi, [ecx+0x14]
	lea eax, [edi+esi]
	cmp ebx, eax
	jl _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__340
	mov dword [ecx], 0x1
	mov ecx, ebx
	lea edx, [ebx+0x2]
	mov [ebp-0xbc], edx
	lea eax, [edi+esi]
	cmp edx, eax
	jg _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__350
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1500:
	mov ebx, 0x1
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__370:
	cmp edi, ecx
	jg _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__360
	mov esi, ecx
	sub esi, edi
	mov [ebp-0x11c], esi
	mov eax, [ebp+0x8]
	mov eax, [eax+0xc]
	movzx eax, byte [eax+esi]
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1730:
	mov [ebx+ebp-0x1d], al
	add ecx, 0x1
	add ebx, 0x1
	cmp ebx, 0x3
	jnz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__370
	movzx eax, word [ebp-0x1c]
	mov ecx, [ebp-0xbc]
	mov edx, [ebp+0x8]
	mov [edx+0x1c], ecx
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1510:
	xor ax, [ebp-0x2c]
	cwde
	mov [ebp-0xc4], eax
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1490:
	movzx eax, word [ebp-0xc4]
	mov esi, [ebp+0x14]
	mov [esi+0xc], eax
	mov eax, [ebp+0x10]
	movzx edx, byte [eax+0x17]
	movzx eax, byte [eax+0x16]
	cmp al, 0xa
	jle _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__380
	mov esi, 0x1
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1610:
	cmp dl, 0xa
	jle _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__390
	or esi, 0x4
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1560:
	mov ebx, [ebp+0x8]
	mov ebx, [ebx+0x20]
	mov [ebp-0xec], ebx
	and ebx, 0x7
	mov [ebp-0xb8], ebx
	jnz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__400
	mov eax, [ebp+0x8]
	mov edx, [eax+0x1c]
	mov edi, [eax+0x14]
	mov eax, edi
	mov ecx, [ebp+0x8]
	add eax, [ecx+0x18]
	cmp edx, eax
	jl _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__410
	mov dword [ecx], 0x1
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1530:
	mov dword [ebp-0xb4], 0x0
	xor esi, esi
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__440:
	mov eax, [ebp-0xec]
	and eax, 0x7
	mov [ebp-0xb0], eax
	jz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__420
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jl _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__430
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__900:
	sub edx, edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov ebx, ecx
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__910:
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
	jnz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__440
	mov eax, [ebp-0xb4]
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2380:
	mov edx, [ebp-0x2c]
	mov ecx, kbitmask
	and edx, [ecx+0x10]
	xor edx, eax
	mov ecx, [ebp+0x14]
	add ecx, 0x17
	test dl, 0x1
	jz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__450
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1540:
	mov ebx, [ebp+0x14]
	mov byte [ebx+0x16], 0x7f
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1550:
	test dl, 0x4
	jz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__460
	mov byte [ecx], 0x7f
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__200:
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__210:
	mov edx, [ebp+0x8]
	mov edi, [edx+0x14]
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jge _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__470
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__230:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	mov edx, ebx
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__480
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__240:
	mov eax, [ebp+0x14]
	mov esi, [eax+0x4]
	mov edx, [ebp-0xec]
	and edx, 0x7
	mov [ebp-0xac], edx
	jnz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__490
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x1c]
	mov eax, edi
	add eax, [ecx+0x18]
	cmp edx, eax
	jge _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__500
	lea ebx, [edx*8]
	mov [ebp-0xec], ebx
	mov [ecx+0x20], ebx
	lea ebx, [edx+0x1]
	mov [ecx+0x1c], ebx
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__490:
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jl _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__510
	sub edx, edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edx, ecx
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__860:
	add dword [ebp-0xec], 0x1
	mov ecx, [ebp-0xec]
	mov [edx+0x20], ecx
	mov edx, eax
	movzx ecx, byte [ebp-0xac]
	sar edx, cl
	and edx, 0x1
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2390:
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
	jnz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__520
	mov esi, [ebp+0x8]
	mov ebx, [esi+0x1c]
	mov eax, esi
	mov esi, [esi+0x18]
	mov edi, [eax+0x14]
	lea eax, [edi+esi]
	cmp ebx, eax
	jl _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__530
	mov edx, [ebp+0x8]
	mov dword [edx], 0x1
	mov ecx, ebx
	lea edx, [ebx+0x2]
	mov [ebp-0xa0], edx
	lea eax, [edi+esi]
	cmp edx, eax
	jg _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__540
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__970:
	mov ebx, 0x1
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__560:
	cmp edi, ecx
	jg _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__550
	mov esi, ecx
	sub esi, edi
	mov [ebp-0x11c], esi
	mov eax, [ebp+0x8]
	mov eax, [eax+0xc]
	movzx eax, byte [eax+esi]
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1770:
	mov [ebx+ebp-0x1d], al
	add ecx, 0x1
	add ebx, 0x1
	cmp ebx, 0x3
	jnz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__560
	movzx eax, word [ebp-0x1c]
	mov ecx, [ebp-0xa0]
	mov edx, [ebp+0x8]
	mov [edx+0x1c], ecx
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__980:
	xor ax, [ebp+0xc]
	cwde
	mov [ebp-0xa8], eax
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__960:
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
	jnz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__570
	mov ecx, [ebp+0x8]
	mov ebx, [ecx+0x1c]
	mov esi, [ecx+0x18]
	mov edi, [ecx+0x14]
	lea eax, [edi+esi]
	cmp ebx, eax
	jl _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__580
	mov dword [ecx], 0x1
	mov ecx, ebx
	lea edx, [ebx+0x2]
	mov [ebp-0x94], edx
	lea eax, [edi+esi]
	cmp edx, eax
	jg _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__590
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1420:
	mov ebx, 0x1
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__610:
	cmp edi, ecx
	jg _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__600
	mov esi, ecx
	sub esi, edi
	mov [ebp-0x11c], esi
	mov eax, [ebp+0x8]
	mov eax, [eax+0xc]
	movzx eax, byte [eax+esi]
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1750:
	mov [ebx+ebp-0x1d], al
	add ecx, 0x1
	add ebx, 0x1
	cmp ebx, 0x3
	jnz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__610
	movzx eax, word [ebp-0x1c]
	mov ecx, [ebp-0x94]
	mov edx, [ebp+0x8]
	mov [edx+0x1c], ecx
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1430:
	xor ax, [ebp+0xc]
	cwde
	mov [ebp-0x9c], eax
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1410:
	movzx eax, word [ebp-0x9c]
	mov esi, [ebp+0x14]
	mov [esi+0xc], eax
	mov eax, [ebp+0x10]
	movzx edx, byte [eax+0x17]
	movzx eax, byte [eax+0x16]
	cmp al, 0xa
	jle _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__620
	mov esi, 0x1
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1390:
	cmp dl, 0xa
	jle _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__630
	or esi, 0x4
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1380:
	mov ebx, [ebp+0x8]
	mov ebx, [ebx+0x20]
	mov [ebp-0xec], ebx
	and ebx, 0x7
	mov [ebp-0x90], ebx
	jnz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__640
	mov eax, [ebp+0x8]
	mov edx, [eax+0x1c]
	mov edi, [eax+0x14]
	mov eax, edi
	mov ecx, [ebp+0x8]
	add eax, [ecx+0x18]
	cmp edx, eax
	jl _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__650
	mov dword [ecx], 0x1
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1340:
	mov dword [ebp-0x8c], 0x0
	xor esi, esi
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__680:
	mov eax, [ebp-0xec]
	and eax, 0x7
	mov [ebp-0x88], eax
	jz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__660
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jl _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__670
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__930:
	sub edx, edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov ebx, ecx
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__940:
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
	jnz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__680
	mov eax, [ebp-0x8c]
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2370:
	mov edx, [ebp+0xc]
	mov ecx, kbitmask
	and edx, [ecx+0x10]
	xor edx, eax
	mov ecx, [ebp+0x14]
	add ecx, 0x17
	test dl, 0x1
	jz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__690
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1350:
	mov ebx, [ebp+0x14]
	mov byte [ebx+0x16], 0x7f
	test dl, 0x4
	jz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__700
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1360:
	mov byte [ecx], 0x7f
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1370:
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
	jnz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__710
	mov esi, [ebp+0x8]
	mov ebx, [esi+0x1c]
	mov eax, esi
	mov esi, [esi+0x18]
	mov edi, [eax+0x14]
	lea eax, [edi+esi]
	cmp ebx, eax
	jl _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__720
	mov edx, [ebp+0x8]
	mov dword [edx], 0x1
	mov ecx, ebx
	lea edx, [ebx+0x2]
	mov [ebp-0x7c], edx
	lea eax, [edi+esi]
	cmp edx, eax
	jg _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__730
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1460:
	mov ebx, 0x1
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__750:
	cmp edi, ecx
	jg _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__740
	mov esi, ecx
	sub esi, edi
	mov [ebp-0x11c], esi
	mov eax, [ebp+0x8]
	mov eax, [eax+0xc]
	movzx eax, byte [eax+esi]
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1760:
	mov [ebx+ebp-0x1d], al
	add ecx, 0x1
	add ebx, 0x1
	cmp ebx, 0x3
	jnz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__750
	movzx eax, word [ebp-0x1c]
	mov ecx, [ebp-0x7c]
	mov edx, [ebp+0x8]
	mov [edx+0x1c], ecx
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1470:
	xor ax, [ebp-0x30]
	cwde
	mov [ebp-0x84], eax
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1450:
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
	jnz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__760
	mov ebx, [ebp+0x8]
	mov edx, [ebx+0x1c]
	mov edi, [ebx+0x14]
	mov eax, edi
	add eax, [ebx+0x18]
	cmp edx, eax
	jl _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__770
	mov dword [ebx], 0x1
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1000:
	mov dword [ebp-0x74], 0x0
	xor esi, esi
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__780
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__820:
	sub edx, edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov ebx, ecx
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__830:
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
	jz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__790
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__780:
	mov eax, [ebp-0xec]
	and eax, 0x7
	mov [ebp-0x70], eax
	jnz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__800
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x1c]
	mov eax, edi
	add eax, [ecx+0x18]
	cmp edx, eax
	jge _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__810
	lea ebx, [edx*8]
	mov [ebp-0xec], ebx
	mov [ecx+0x20], ebx
	lea ebx, [edx+0x1]
	mov [ecx+0x1c], ebx
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__800:
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jge _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__820
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__830
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__100:
	mov dword [ebx], 0x1
	mov eax, 0xffffffff
	mov edx, [ebp+0x14]
	mov [edx], eax
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__840
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__270:
	sub edx, edi
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0xc]
	movzx eax, byte [eax+edx]
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__850
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__510:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	mov edx, ebx
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__860
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__60:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x8]
	movzx eax, byte [eax+ebx]
	mov esi, edx
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__870
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__110:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x8]
	movzx eax, byte [ecx+eax]
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__880
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__420:
	mov ebx, [ebp+0x8]
	mov edx, [ebx+0x1c]
	mov eax, edi
	add eax, [ebx+0x18]
	cmp edx, eax
	jge _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__890
	lea eax, [edx*8]
	mov [ebp-0xec], eax
	mov [ebx+0x20], eax
	lea ebx, [edx+0x1]
	mov edx, [ebp+0x8]
	mov [edx+0x1c], ebx
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jge _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__900
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__430:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__910
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__660:
	mov ebx, [ebp+0x8]
	mov edx, [ebx+0x1c]
	mov eax, edi
	add eax, [ebx+0x18]
	cmp edx, eax
	jge _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__920
	lea eax, [edx*8]
	mov [ebp-0xec], eax
	mov [ebx+0x20], eax
	lea ebx, [edx+0x1]
	mov edx, [ebp+0x8]
	mov [edx+0x1c], ebx
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jge _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__930
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__670:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__940
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__520:
	mov eax, [ebp+0x8]
	mov edi, [eax+0x14]
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2060:
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jl _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__950
	sub edx, edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov esi, ecx
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1630:
	add dword [ebp-0xec], 0x1
	mov edx, [ebp-0xec]
	mov [esi+0x20], edx
	movzx ecx, byte [ebp-0xa4]
	sar eax, cl
	test al, 0x1
	jz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__960
	mov ebx, [esi+0x1c]
	mov eax, [ebp+0x8]
	mov esi, [eax+0x18]
	mov ecx, ebx
	lea edx, [ebx+0x2]
	mov [ebp-0xa0], edx
	lea eax, [edi+esi]
	cmp edx, eax
	jle _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__970
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__540:
	mov ebx, [ebp+0x8]
	mov dword [ebx], 0x1
	mov eax, 0xffffffff
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__980
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__760:
	mov ebx, [ebp+0x8]
	mov edi, [ebx+0x14]
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2090:
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jl _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__990
	sub edx, edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edx, ecx
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1700:
	add dword [ebp-0xec], 0x1
	mov ecx, [ebp-0xec]
	mov [edx+0x20], ecx
	movzx ecx, byte [ebp-0x78]
	sar eax, cl
	test al, 0x1
	jnz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1000
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1620:
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
	jnz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1010
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x1c]
	mov edi, [ecx+0x14]
	mov eax, edi
	add eax, [ecx+0x18]
	cmp edx, eax
	jl _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1020
	mov dword [ecx], 0x1
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1320:
	mov dword [ebp-0x68], 0x0
	xor esi, esi
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1030
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1070:
	sub edx, edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov ebx, ecx
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1080:
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
	jz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1040
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1030:
	mov eax, [ebp-0xec]
	and eax, 0x7
	mov [ebp-0x64], eax
	jnz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1050
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x1c]
	mov eax, edi
	add eax, [ecx+0x18]
	cmp edx, eax
	jge _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1060
	lea ebx, [edx*8]
	mov [ebp-0xec], ebx
	mov [ecx+0x20], ebx
	lea ebx, [edx+0x1]
	mov [ecx+0x1c], ebx
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1050:
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jge _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1070
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1080
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1040:
	mov eax, [ebp-0x68]
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2330:
	mov esi, [ebp-0x30]
	mov edx, kbitmask
	and esi, [edx+0x1c]
	xor esi, eax
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1310:
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
	jnz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1090
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x1c]
	mov edi, [ecx+0x14]
	mov eax, edi
	add eax, [ecx+0x18]
	cmp edx, eax
	jl _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1100
	mov dword [ecx], 0x1
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1290:
	mov dword [ebp-0x5c], 0x0
	xor esi, esi
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1110
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1150:
	sub edx, edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov ebx, ecx
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1160:
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
	jz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1120
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1110:
	mov eax, [ebp-0xec]
	and eax, 0x7
	mov [ebp-0x58], eax
	jnz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1130
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x1c]
	mov eax, edi
	add eax, [ecx+0x18]
	cmp edx, eax
	jge _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1140
	lea ebx, [edx*8]
	mov [ebp-0xec], ebx
	mov [ecx+0x20], ebx
	lea ebx, [edx+0x1]
	mov [ecx+0x1c], ebx
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1130:
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jge _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1150
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1160
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1120:
	mov eax, [ebp-0x5c]
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2320:
	mov esi, [ebp-0x30]
	mov edx, kbitmask
	and esi, [edx+0x1c]
	xor esi, eax
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1280:
	mov ecx, esi
	mov ebx, [ebp+0x14]
	mov [ebx+0x15], cl
	mov eax, [ebx+0x4]
	test eax, 0x10000
	jz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1170
	mov eax, [ebp+0x10]
	movsx eax, byte [eax+0x1d]
	mov [ebp-0x54], eax
	mov edx, [ebp+0x8]
	mov edx, [edx+0x20]
	mov [ebp-0xec], edx
	and edx, 0x7
	mov [ebp-0x50], edx
	jnz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1180
	mov ecx, [ebp+0x8]
	mov ebx, [ecx+0x1c]
	mov esi, [ecx+0x18]
	mov edi, [ecx+0x14]
	lea eax, [edi+esi]
	cmp ebx, eax
	jge _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1190
	lea esi, [ebx*8]
	mov [ebp-0xec], esi
	mov [ecx+0x20], esi
	add ebx, 0x1
	mov [ecx+0x1c], ebx
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1200
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2020:
	mov ecx, [ebp+0x8]
	mov dword [ecx], 0x1
	mov eax, 0xffffffff
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2040:
	xor al, [ebp-0x30]
	movzx eax, al
	mov [ebp-0x4c], eax
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2010:
	movzx ebx, byte [ebp-0x4c]
	mov esi, [ebp+0x14]
	mov [esi+0x1e], bl
	mov eax, [esi+0x4]
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1170:
	test al, 0x4
	jz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1210
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
	jnz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1220
	mov ecx, [ebp+0x8]
	mov ebx, [ecx+0x1c]
	mov esi, [ecx+0x18]
	mov edi, [ecx+0x14]
	lea eax, [edi+esi]
	cmp ebx, eax
	jge _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1230
	lea esi, [ebx*8]
	mov [ebp-0xec], esi
	mov [ecx+0x20], esi
	add ebx, 0x1
	mov [ecx+0x1c], ebx
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1240
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2130:
	mov eax, [ebp-0x34]
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2350:
	mov esi, [ebp-0x30]
	mov edx, kbitmask
	and esi, [edx+0x20]
	xor esi, eax
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2110:
	mov ecx, esi
	mov ebx, [ebp+0x14]
	mov [ebx+0x1c], cl
	mov eax, [ebx+0x4]
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1210:
	cmp eax, 0x1fffff
	jg _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1250
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1780:
	mov ecx, [ebp+0x14]
	movzx eax, byte [ecx+0x14]
	test al, al
	js _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1260
	mov edx, ecx
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2310:
	movzx eax, byte [edx+0x15]
	test al, al
	jns _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__200
	movzx eax, al
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_client_sent_an_i
	mov dword [esp], 0xf
	call _Z14Com_PrintErroriPKcz
	mov ecx, [ebp+0x10]
	movzx eax, byte [ecx+0x15]
	mov ebx, [ebp+0x14]
	mov [ebx+0x15], al
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__200
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1090:
	mov edx, [ebp+0x8]
	mov edi, [edx+0x14]
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1790:
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jl _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1270
	sub edx, edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edx, ecx
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1710:
	add dword [ebp-0xec], 0x1
	mov ecx, [ebp-0xec]
	mov [edx+0x20], ecx
	movzx ecx, byte [ebp-0x60]
	sar eax, cl
	test al, 0x1
	jz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1280
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1290
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1010:
	mov edx, [ebp+0x8]
	mov edi, [edx+0x14]
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1980:
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jl _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1300
	sub edx, edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edx, ecx
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1650:
	add dword [ebp-0xec], 0x1
	mov ecx, [ebp-0xec]
	mov [edx+0x20], ecx
	movzx ecx, byte [ebp-0x6c]
	sar eax, cl
	test al, 0x1
	jz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1310
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1320
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__460:
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
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__640:
	mov edx, [ebp+0x8]
	mov edi, [edx+0x14]
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1990:
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jl _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1330
	sub edx, edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edx, ecx
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1720:
	add dword [ebp-0xec], 0x1
	mov ecx, [ebp-0xec]
	mov [edx+0x20], ecx
	movzx ecx, byte [ebp-0x90]
	sar eax, cl
	test al, 0x1
	jnz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1340
	mov edx, esi
	mov ecx, [ebp+0x14]
	add ecx, 0x17
	test dl, 0x1
	jnz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1350
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__690:
	mov eax, edx
	and eax, 0x2
	cmp eax, 0x1
	sbb eax, eax
	not al
	and al, 0x81
	mov esi, [ebp+0x14]
	mov [esi+0x16], al
	test dl, 0x4
	jnz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1360
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__700:
	and edx, 0x8
	cmp edx, 0x1
	sbb eax, eax
	not al
	and al, 0x81
	mov [ecx], al
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1370
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__630:
	mov eax, esi
	or eax, 0x8
	cmp dl, 0xf5
	cmovle esi, eax
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1380
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__620:
	cmp al, 0xf5
	setle al
	movzx esi, al
	add esi, esi
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1390
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__570:
	mov edx, [ebp+0x8]
	mov edi, [edx+0x14]
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2070:
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jl _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1400
	sub edx, edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov esi, ecx
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1680:
	add dword [ebp-0xec], 0x1
	mov edx, [ebp-0xec]
	mov [esi+0x20], edx
	movzx ecx, byte [ebp-0x98]
	sar eax, cl
	test al, 0x1
	jz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1410
	mov ebx, [esi+0x1c]
	mov eax, [ebp+0x8]
	mov esi, [eax+0x18]
	mov ecx, ebx
	lea edx, [ebx+0x2]
	mov [ebp-0x94], edx
	lea eax, [edi+esi]
	cmp edx, eax
	jle _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1420
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__590:
	mov ebx, [ebp+0x8]
	mov dword [ebx], 0x1
	mov eax, 0xffffffff
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1430
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__710:
	mov eax, [ebp+0x8]
	mov edi, [eax+0x14]
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1960:
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jl _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1440
	sub edx, edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov esi, ecx
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1690:
	add dword [ebp-0xec], 0x1
	mov edx, [ebp-0xec]
	mov [esi+0x20], edx
	movzx ecx, byte [ebp-0x80]
	sar eax, cl
	test al, 0x1
	jz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1450
	mov ebx, [esi+0x1c]
	mov eax, [ebp+0x8]
	mov esi, [eax+0x18]
	mov ecx, ebx
	lea edx, [ebx+0x2]
	mov [ebp-0x7c], edx
	lea eax, [edi+esi]
	cmp edx, eax
	jle _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1460
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__730:
	mov ebx, [ebp+0x8]
	mov dword [ebx], 0x1
	mov eax, 0xffffffff
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1470
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__330:
	mov edx, [ebp+0x8]
	mov edi, [edx+0x14]
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2050:
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jl _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1480
	sub edx, edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov esi, ecx
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1670:
	add dword [ebp-0xec], 0x1
	mov edx, [ebp-0xec]
	mov [esi+0x20], edx
	movzx ecx, byte [ebp-0xc0]
	sar eax, cl
	test al, 0x1
	jz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1490
	mov ebx, [esi+0x1c]
	mov eax, [ebp+0x8]
	mov esi, [eax+0x18]
	mov ecx, ebx
	lea edx, [ebx+0x2]
	mov [ebp-0xbc], edx
	lea eax, [edi+esi]
	cmp edx, eax
	jle _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1500
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__350:
	mov ebx, [ebp+0x8]
	mov dword [ebx], 0x1
	mov eax, 0xffffffff
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1510
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__400:
	mov edx, [ebp+0x8]
	mov edi, [edx+0x14]
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2080:
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jl _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1520
	sub edx, edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edx, ecx
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1640:
	add dword [ebp-0xec], 0x1
	mov ecx, [ebp-0xec]
	mov [edx+0x20], ecx
	movzx ecx, byte [ebp-0xb8]
	sar eax, cl
	test al, 0x1
	jnz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1530
	mov edx, esi
	mov ecx, [ebp+0x14]
	add ecx, 0x17
	test dl, 0x1
	jnz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1540
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__450:
	mov eax, edx
	and eax, 0x2
	cmp eax, 0x1
	sbb eax, eax
	not al
	and al, 0x81
	mov esi, [ebp+0x14]
	mov [esi+0x16], al
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1550
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__390:
	mov eax, esi
	or eax, 0x8
	cmp dl, 0xf5
	cmovle esi, eax
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1560
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__280:
	mov eax, [ebp+0x8]
	mov edi, [eax+0x14]
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1970:
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jl _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1570
	sub edx, edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov esi, ecx
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1660:
	add dword [ebp-0xec], 0x1
	mov edx, [ebp-0xec]
	mov [esi+0x20], edx
	movzx ecx, byte [ebp-0xcc]
	sar eax, cl
	test al, 0x1
	jz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1580
	mov ebx, [esi+0x1c]
	mov eax, [ebp+0x8]
	mov esi, [eax+0x18]
	mov ecx, ebx
	lea edx, [ebx+0x2]
	mov [ebp-0xc8], edx
	lea eax, [edi+esi]
	cmp edx, eax
	jle _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1590
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__300:
	mov ebx, [ebp+0x8]
	mov dword [ebx], 0x1
	mov eax, 0xffffffff
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1600
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__380:
	cmp al, 0xf5
	setle al
	movzx esi, al
	add esi, esi
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1610
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__790:
	mov eax, [ebp-0x74]
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2180:
	mov esi, [ebp-0x30]
	mov edx, kbitmask
	and esi, [edx+0x50]
	xor esi, eax
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1620
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__950:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	mov esi, ebx
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1630
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1520:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	mov edx, ebx
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1640
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1300:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	mov edx, ebx
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1650
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1570:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	mov esi, ebx
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1660
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1480:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	mov esi, ebx
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1670
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1400:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	mov esi, ebx
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1680
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1440:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	mov esi, ebx
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1690
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__990:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	mov edx, ebx
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1700
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1270:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	mov edx, ebx
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1710
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1330:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	mov edx, ebx
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1720
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__360:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [ecx+eax]
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1730
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__310:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [ecx+eax]
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1740
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__600:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [ecx+eax]
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1750
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__740:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [ecx+eax]
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1760
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__550:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [ecx+eax]
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1770
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1250:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_client_sent_an_i1
	mov dword [esp], 0xf
	call _Z14Com_PrintErroriPKcz
	mov esi, [ebp+0x10]
	mov eax, [esi+0x4]
	mov edx, [ebp+0x14]
	mov [edx+0x4], eax
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1780
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1100:
	lea ebx, [edx*8]
	mov [ebp-0xec], ebx
	mov [ecx+0x20], ebx
	lea ebx, [edx+0x1]
	mov [ecx+0x1c], ebx
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1790
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1180:
	mov edx, [ebp+0x8]
	mov edi, [edx+0x14]
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1200:
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jl _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1800
	sub edx, edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov esi, ecx
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2220:
	add dword [ebp-0xec], 0x1
	mov edx, [ebp-0xec]
	mov [esi+0x20], edx
	movzx ecx, byte [ebp-0x50]
	sar eax, cl
	test al, 0x1
	jz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1810
	mov ebx, [esi+0x1c]
	mov eax, [ebp+0x8]
	mov esi, [eax+0x18]
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2280:
	lea eax, [edi+esi]
	cmp ebx, eax
	jge _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1820
	cmp ebx, edi
	jl _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1830
	mov edx, ebx
	sub edx, edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edx, ecx
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2290:
	add ebx, 0x1
	mov [edx+0x1c], ebx
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1840
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1820:
	mov ecx, [ebp+0x8]
	mov dword [ecx], 0x1
	mov eax, 0xffffffff
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1840:
	xor al, [ebp-0x30]
	movzx eax, al
	mov [ebp-0x54], eax
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1810:
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
	jnz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1850
	mov ecx, [ebp+0x8]
	mov ebx, [ecx+0x1c]
	mov esi, [ecx+0x18]
	mov edi, [ecx+0x14]
	lea eax, [edi+esi]
	cmp ebx, eax
	jge _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1860
	lea esi, [ebx*8]
	mov [ebp-0xec], esi
	mov [ecx+0x20], esi
	add ebx, 0x1
	mov [ecx+0x1c], ebx
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1870
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1220:
	mov edx, [ebp+0x8]
	mov edi, [edx+0x14]
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1240:
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jl _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1880
	sub edx, edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov esi, ecx
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2210:
	add dword [ebp-0xec], 0x1
	mov edx, [ebp-0xec]
	mov [esi+0x20], edx
	movzx ecx, byte [ebp-0x40]
	sar eax, cl
	test al, 0x1
	jz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1890
	mov ebx, [esi+0x1c]
	mov eax, [ebp+0x8]
	mov esi, [eax+0x18]
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2270:
	mov ecx, ebx
	lea edx, [ebx+0x2]
	mov [ebp-0x3c], edx
	lea eax, [edi+esi]
	cmp edx, eax
	jg _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1900
	mov ebx, 0x1
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1920:
	cmp edi, ecx
	jg _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1910
	mov esi, ecx
	sub esi, edi
	mov [ebp-0x11c], esi
	mov eax, [ebp+0x8]
	mov eax, [eax+0xc]
	movzx eax, byte [eax+esi]
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2230:
	mov [ebx+ebp-0x1d], al
	add ecx, 0x1
	add ebx, 0x1
	cmp ebx, 0x3
	jnz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1920
	movzx eax, word [ebp-0x1c]
	mov ecx, [ebp-0x3c]
	mov edx, [ebp+0x8]
	mov [edx+0x1c], ecx
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2240:
	xor ax, [ebp-0x30]
	cwde
	mov [ebp-0x44], eax
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1890:
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
	jnz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1930
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x1c]
	mov edi, [ecx+0x14]
	mov eax, edi
	add eax, [ecx+0x18]
	cmp edx, eax
	jge _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1940
	lea ebx, [edx*8]
	mov [ebp-0xec], ebx
	mov [ecx+0x20], ebx
	lea ebx, [edx+0x1]
	mov [ecx+0x1c], ebx
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1950
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__720:
	lea ecx, [ebx*8]
	mov [ebp-0xec], ecx
	mov esi, [ebp+0x8]
	mov [esi+0x20], ecx
	add ebx, 0x1
	mov [esi+0x1c], ebx
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1960
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__290:
	lea ecx, [ebx*8]
	mov [ebp-0xec], ecx
	mov esi, [ebp+0x8]
	mov [esi+0x20], ecx
	add ebx, 0x1
	mov [esi+0x1c], ebx
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1970
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1020:
	lea ebx, [edx*8]
	mov [ebp-0xec], ebx
	mov [ecx+0x20], ebx
	lea ebx, [edx+0x1]
	mov [ecx+0x1c], ebx
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1980
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__650:
	mov ebx, ecx
	lea ecx, [edx*8]
	mov [ebp-0xec], ecx
	mov [ebx+0x20], ecx
	lea ebx, [edx+0x1]
	mov eax, [ebp+0x8]
	mov [eax+0x1c], ebx
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1990
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1850:
	mov edx, [ebp+0x8]
	mov edi, [edx+0x14]
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1870:
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jl _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2000
	sub edx, edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov esi, ecx
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2200:
	add dword [ebp-0xec], 0x1
	mov edx, [ebp-0xec]
	mov [esi+0x20], edx
	movzx ecx, byte [ebp-0x48]
	sar eax, cl
	test al, 0x1
	jz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2010
	mov ebx, [esi+0x1c]
	mov eax, [ebp+0x8]
	mov esi, [eax+0x18]
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2260:
	lea eax, [edi+esi]
	cmp ebx, eax
	jge _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2020
	cmp ebx, edi
	jl _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2030
	mov edx, ebx
	sub edx, edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edx, ecx
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2300:
	add ebx, 0x1
	mov [edx+0x1c], ebx
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2040
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__340:
	lea esi, [ebx*8]
	mov [ebp-0xec], esi
	mov [ecx+0x20], esi
	add ebx, 0x1
	mov [ecx+0x1c], ebx
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2050
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__530:
	lea ecx, [ebx*8]
	mov [ebp-0xec], ecx
	mov esi, [ebp+0x8]
	mov [esi+0x20], ecx
	add ebx, 0x1
	mov [esi+0x1c], ebx
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2060
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__580:
	lea esi, [ebx*8]
	mov [ebp-0xec], esi
	mov [ecx+0x20], esi
	add ebx, 0x1
	mov [ecx+0x1c], ebx
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2070
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__410:
	mov ebx, ecx
	lea ecx, [edx*8]
	mov [ebp-0xec], ecx
	mov [ebx+0x20], ecx
	lea ebx, [edx+0x1]
	mov eax, [ebp+0x8]
	mov [eax+0x1c], ebx
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2080
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__770:
	mov ecx, ebx
	lea eax, [edx*8]
	mov [ebp-0xec], eax
	mov [ebx+0x20], eax
	lea ebx, [edx+0x1]
	mov [ecx+0x1c], ebx
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2090
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1930:
	mov edx, [ebp+0x8]
	mov edi, [edx+0x14]
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1950:
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jl _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2100
	sub edx, edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edx, ecx
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2190:
	add dword [ebp-0xec], 0x1
	mov ecx, [ebp-0xec]
	mov [edx+0x20], ecx
	movzx ecx, byte [ebp-0x38]
	sar eax, cl
	test al, 0x1
	jz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2110
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2250:
	mov dword [ebp-0x34], 0x0
	xor ebx, ebx
	mov esi, [ebp-0xec]
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2120
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2160:
	sub edx, edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2170:
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
	jz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2130
	mov [ebp-0xec], eax
	mov esi, eax
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2120:
	and esi, 0x7
	jnz _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2140
	mov eax, [ebp+0x8]
	mov edx, [eax+0x1c]
	mov eax, edi
	mov ecx, [ebp+0x8]
	add eax, [ecx+0x18]
	cmp edx, eax
	jge _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2150
	lea eax, [edx*8]
	mov [ebp-0xec], eax
	mov [ecx+0x20], eax
	lea eax, [edx+0x1]
	mov [ecx+0x1c], eax
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2140:
	mov edx, [ebp-0xec]
	sar edx, 0x3
	cmp edx, edi
	jge _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2160
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	movzx eax, byte [eax+edx]
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2170
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__810:
	mov dword [ecx], 0x1
	mov eax, 0xffffffff
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2180
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2100:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	mov edx, ebx
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2190
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2000:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	mov esi, ebx
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2200
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1880:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	mov esi, ebx
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2210
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1800:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	mov esi, ebx
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2220
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1910:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [eax+ecx]
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2230
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1900:
	mov ebx, [ebp+0x8]
	mov dword [ebx], 0x1
	mov eax, 0xffffffff
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2240
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1940:
	mov dword [ecx], 0x1
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2250
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1860:
	mov dword [ecx], 0x1
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2260
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1230:
	mov dword [ecx], 0x1
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2270
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1190:
	mov dword [ecx], 0x1
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2280
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1830:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [eax+ebx]
	mov edx, esi
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2290
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2030:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	movzx eax, byte [eax+ebx]
	mov edx, esi
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2300
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1260:
	movzx eax, al
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_client_sent_an_i2
	mov dword [esp], 0xf
	call _Z14Com_PrintErroriPKcz
	mov ebx, [ebp+0x10]
	movzx eax, byte [ebx+0x14]
	mov esi, [ebp+0x14]
	mov [esi+0x14], al
	mov edx, [ebp+0x14]
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2310
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1140:
	mov dword [ecx], 0x1
	mov eax, 0xffffffff
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2320
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__1060:
	mov dword [ecx], 0x1
	mov eax, 0xffffffff
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2330
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__180:
	mov dword [ebx], 0x1
	mov edx, 0xffffffff
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2340
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2150:
	mov dword [ecx], 0x1
	mov eax, 0xffffffff
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2350
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__220:
	mov dword [ecx], 0x1
	mov edx, 0xffffffff
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2360
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__920:
	mov dword [ebx], 0x1
	mov eax, 0xffffffff
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2370
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__890:
	mov dword [ebx], 0x1
	mov eax, 0xffffffff
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2380
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__500:
	mov dword [ecx], 0x1
	mov edx, 0xffffffff
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2390
_Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__260:
	mov dword [ebx], 0x1
	mov edx, 0xffffffff
	jmp _Z23MSG_ReadDeltaUsercmdKeyP5msg_tiPK9usercmd_sPS1__2400
	nop
	add [eax], al


;MSG_ReadDeltaPlayerstate(int, msg_t*, int, playerState_s const*, playerState_s*, unsigned char)
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h:
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
	jz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_10
	mov edx, [ebp+0x14]
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1680:
	mov dword [esp+0x8], 0x2f64
	mov [esp+0x4], edx
	mov ecx, [ebp+0x18]
	mov [esp], ecx
	call memcpy
	mov eax, cl_shownet
	mov eax, [eax]
	test eax, eax
	jz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_20
	mov eax, [eax+0xc]
	cmp eax, 0x1
	jle _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_30
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1510:
	mov ebx, [ebp+0xc]
	mov eax, [ebx+0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_3i_playerstate_
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	mov dword [ebp-0x2fc0], 0x1
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1520:
	mov edi, [ebp+0xc]
	mov esi, [edi+0x20]
	mov ebx, esi
	and ebx, 0x7
	jnz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_40
	mov ecx, [edi+0x1c]
	mov eax, [edi+0x14]
	mov [ebp-0x2fdc], eax
	add eax, [edi+0x18]
	cmp ecx, eax
	jge _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_50
	lea esi, [ecx*8]
	mov edx, [ebp+0xc]
	mov [edx+0x20], esi
	add ecx, 0x1
	mov [edx+0x1c], ecx
	mov edx, esi
	sar edx, 0x3
	cmp edx, [ebp-0x2fdc]
	jl _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_60
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_640:
	sub edx, [ebp-0x2fdc]
	mov edi, [ebp+0xc]
	mov eax, [edi+0xc]
	movzx eax, byte [eax+edx]
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_650:
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
	jnz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_70
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_660:
	mov ecx, 0x10
	mov ebx, 0x10
	mov edx, [ebp-0x2fc4]
	shl edx, cl
	test edx, 0xff000000
	jnz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_80
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_670:
	mov esi, 0x8
	mov eax, 0x8
	lea edi, [ebx+eax]
	mov ecx, esi
	shl edx, cl
	test edx, 0xf0000000
	jnz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_90
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_680:
	mov esi, 0x4
	mov eax, 0x4
	add edi, eax
	mov ecx, esi
	shl edx, cl
	test edx, 0xc0000000
	jnz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_100
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_690:
	mov esi, 0x2
	mov eax, 0x2
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_700:
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
	jg _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_110
	mov dword [ebp-0x2fcc], 0x0
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1440:
	mov edx, playerStateFields
	mov edi, edx
	mov eax, [ebp-0x2fcc]
	test eax, eax
	jle _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_120
	cmp byte [ebp-0x2fd5], 0x0
	jz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_130
	cmp byte [ebp-0x2fb9], 0x0
	jz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_140
	xor esi, esi
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_150:
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
	call _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih
	add esi, 0x1
	add edi, 0x10
	cmp [ebp-0x2fcc], esi
	jnz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_150
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1730:
	mov edx, playerStateFields
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_120:
	mov eax, [ebp-0x2fcc]
	shl eax, 0x4
	lea ecx, [eax+edx]
	mov ebx, [ebp-0x2fc4]
	cmp [ebp-0x2fcc], ebx
	jge _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_160
	xor esi, esi
	mov edi, ebx
	sub edi, [ebp-0x2fcc]
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_170:
	mov edx, [ecx+0x4]
	mov ebx, [ebp+0x14]
	mov eax, [ebx+edx]
	mov ebx, [ebp+0x18]
	mov [ebx+edx], eax
	add ecx, 0x10
	add esi, 0x1
	cmp edi, esi
	jnz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_170
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_160:
	cmp byte [ebp-0x2fb9], 0x0
	jz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_180
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1580:
	mov edi, [ebp+0xc]
	mov esi, [edi+0x20]
	mov ebx, esi
	and ebx, 0x7
	jnz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_190
	mov ecx, [edi+0x1c]
	mov eax, [edi+0x14]
	mov [ebp-0x2fdc], eax
	add eax, [edi+0x18]
	cmp ecx, eax
	jl _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_200
	mov dword [edi], 0x1
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1500:
	mov eax, cl_shownet
	mov eax, [eax]
	test eax, eax
	jz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_210
	cmp dword [eax+0xc], 0x4
	jz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_220
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_210:
	mov dword [ebp-0x2f8c], 0x0
	xor edi, edi
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_260:
	mov eax, [ebp+0xc]
	mov esi, [eax+0x20]
	mov ebx, esi
	and ebx, 0x7
	jnz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_230
	mov edx, eax
	mov ecx, [eax+0x1c]
	mov eax, [ebp-0x2fdc]
	add eax, [edx+0x18]
	cmp ecx, eax
	jge _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_240
	lea esi, [ecx*8]
	mov [edx+0x20], esi
	add ecx, 0x1
	mov [edx+0x1c], ecx
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_230:
	mov edx, esi
	sar edx, 0x3
	cmp edx, [ebp-0x2fdc]
	jl _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_250
	sub edx, [ebp-0x2fdc]
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_710:
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
	jnz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_260
	test byte [ebp-0x2f8c], 0x1
	jz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_270
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1700:
	mov edi, [ebp+0xc]
	mov ecx, [edi+0x1c]
	lea esi, [ecx+0x2]
	mov eax, [ebp-0x2fdc]
	add eax, [edi+0x18]
	cmp esi, eax
	jg _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_280
	mov ebx, 0x1
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_300:
	cmp [ebp-0x2fdc], ecx
	jg _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_290
	mov eax, ecx
	sub eax, [ebp-0x2fdc]
	mov [ebp-0x300c], eax
	mov edx, [ebp+0xc]
	mov edx, [edx+0xc]
	mov [ebp-0x2fec], edx
	movzx eax, byte [edx+eax]
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1650:
	mov [ebx+ebp-0x1b], al
	add ecx, 0x1
	add ebx, 0x1
	cmp ebx, 0x3
	jnz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_300
	movsx eax, word [ebp-0x1a]
	mov ecx, [ebp+0xc]
	mov [ecx+0x1c], esi
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1610:
	mov edi, [ebp+0x18]
	mov [edi+0x148], eax
	mov eax, [ebp+0xc]
	mov eax, [eax+0x14]
	mov [ebp-0x2fdc], eax
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_270:
	test byte [ebp-0x2f8c], 0x2
	jz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_310
	mov edx, [ebp+0xc]
	mov ecx, [edx+0x1c]
	lea esi, [ecx+0x2]
	mov eax, [ebp-0x2fdc]
	add eax, [edx+0x18]
	cmp esi, eax
	jg _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_320
	mov ebx, 0x1
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_340:
	cmp [ebp-0x2fdc], ecx
	jg _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_330
	mov edi, ecx
	sub edi, [ebp-0x2fdc]
	mov [ebp-0x300c], edi
	mov eax, [ebp+0xc]
	mov eax, [eax+0xc]
	movzx eax, byte [eax+edi]
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1670:
	mov [ebx+ebp-0x1b], al
	add ecx, 0x1
	add ebx, 0x1
	cmp ebx, 0x3
	jnz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_340
	movsx eax, word [ebp-0x1a]
	mov edx, [ebp+0xc]
	mov [edx+0x1c], esi
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1640:
	mov ebx, [ebp+0x18]
	mov [ebx+0x14c], eax
	mov edi, [ebp+0xc]
	mov edi, [edi+0x14]
	mov [ebp-0x2fdc], edi
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_310:
	test byte [ebp-0x2f8c], 0x4
	jz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_350
	mov eax, [ebp+0xc]
	mov ecx, [eax+0x1c]
	lea esi, [ecx+0x2]
	mov eax, [ebp-0x2fdc]
	mov edx, [ebp+0xc]
	add eax, [edx+0x18]
	cmp esi, eax
	jg _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_360
	mov ebx, 0x1
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_380:
	cmp [ebp-0x2fdc], ecx
	jg _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_370
	mov edi, ecx
	sub edi, [ebp-0x2fdc]
	mov [ebp-0x300c], edi
	mov eax, [ebp+0xc]
	mov eax, [eax+0xc]
	movzx eax, byte [eax+edi]
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1660:
	mov [ebp+ebx-0x1b], al
	add ecx, 0x1
	add ebx, 0x1
	cmp ebx, 0x3
	jnz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_380
	movsx eax, word [ebp-0x1a]
	mov edx, [ebp+0xc]
	mov [edx+0x1c], esi
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1630:
	mov edi, [ebp+0x18]
	mov [edi+0x150], eax
	mov eax, [ebp+0xc]
	mov eax, [eax+0x14]
	mov [ebp-0x2fdc], eax
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_350:
	test byte [ebp-0x2f8c], 0x8
	jz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_390
	mov dword [ebp-0x2fb4], 0x0
	xor edi, edi
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_400
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_440:
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
	jz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_410
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_400:
	mov edx, [ebp+0xc]
	mov esi, [edx+0x20]
	mov ebx, esi
	and ebx, 0x7
	jnz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_420
	mov ecx, edx
	mov edx, [edx+0x1c]
	mov eax, [ebp-0x2fdc]
	add eax, [ecx+0x18]
	cmp edx, eax
	jge _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_430
	lea esi, [edx*8]
	mov [ecx+0x20], esi
	lea ecx, [edx+0x1]
	mov eax, [ebp+0xc]
	mov [eax+0x1c], ecx
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_420:
	mov edx, esi
	sar edx, 0x3
	cmp edx, [ebp-0x2fdc]
	jge _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_440
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
	jnz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_400
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_410:
	mov eax, [ebp-0x2fb4]
	mov edi, [ebp+0x18]
	mov [edi+0x154], eax
	mov edx, [ebp+0xc]
	mov edx, [edx+0x14]
	mov [ebp-0x2fdc], edx
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_390:
	test byte [ebp-0x2f8c], 0x10
	jz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_450
	mov ebx, [ebp+0xc]
	mov ecx, [ebx+0x1c]
	mov eax, [ebp-0x2fdc]
	add eax, [ebx+0x18]
	cmp ecx, eax
	jge _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_460
	cmp ecx, [ebp-0x2fdc]
	jl _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_470
	mov edx, ecx
	sub edx, [ebp-0x2fdc]
	mov eax, [ebx+0xc]
	movzx eax, byte [eax+edx]
	mov edx, [ebp+0xc]
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1690:
	add ecx, 0x1
	mov [edx+0x1c], ecx
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1620:
	mov ebx, [ebp+0x18]
	mov [ebx+0x158], eax
	mov edi, [ebp+0xc]
	mov edi, [edi+0x14]
	mov [ebp-0x2fdc], edi
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_450:
	mov eax, [ebp+0xc]
	mov esi, [eax+0x20]
	mov ebx, esi
	and ebx, 0x7
	jnz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_480
	mov edx, eax
	mov ecx, [eax+0x1c]
	mov eax, [ebp-0x2fdc]
	add eax, [edx+0x18]
	cmp ecx, eax
	jl _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_490
	mov dword [edx], 0x1
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_780:
	mov dword [ebp-0x2f98], 0x0
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_760:
	mov edi, esi
	and edi, 0x7
	jnz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_500
	mov eax, [ebp+0xc]
	mov edx, [eax+0x1c]
	mov eax, [ebp-0x2fdc]
	mov ecx, [ebp+0xc]
	add eax, [ecx+0x18]
	cmp edx, eax
	jl _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_510
	mov dword [ecx], 0x1
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_740:
	mov eax, cl_shownet
	mov eax, [eax]
	test eax, eax
	jz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_520
	cmp dword [eax+0xc], 0x4
	jz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_530
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_520:
	mov eax, [ebp-0x2fdc]
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1600:
	mov edi, [ebp+0xc]
	mov ecx, [edi+0x1c]
	lea edi, [ecx+0x2]
	mov edx, [ebp+0xc]
	add eax, [edx+0x18]
	cmp edi, eax
	jg _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_540
	mov esi, 0x1
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_560:
	cmp [ebp-0x2fdc], ecx
	jg _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_550
	mov ebx, ecx
	sub ebx, [ebp-0x2fdc]
	mov [ebp-0x300c], ebx
	mov eax, [ebp+0xc]
	mov eax, [eax+0xc]
	movzx eax, byte [eax+ebx]
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1320:
	mov [esi+ebp-0x1b], al
	add ecx, 0x1
	add esi, 0x1
	cmp esi, 0x3
	jnz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_560
	movsx eax, word [ebp-0x1a]
	mov [ebp-0x2fc8], eax
	mov edx, [ebp+0xc]
	mov [edx+0x1c], edi
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1310:
	mov ebx, [ebp-0x2f98]
	mov eax, [ebp+0x18]
	lea edi, [eax+ebx*4+0x15c]
	xor ebx, ebx
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_570
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_620:
	mov esi, 0x1
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_590:
	cmp [ebp-0x2fdc], ecx
	jg _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_580
	mov eax, ecx
	sub eax, [ebp-0x2fdc]
	mov [ebp-0x300c], eax
	mov edx, [ebp+0xc]
	mov edx, [edx+0xc]
	mov [ebp-0x2ffc], edx
	movzx eax, byte [edx+eax]
	mov [ebp-0x301c], eax
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_720:
	movzx eax, byte [ebp-0x301c]
	mov [esi+ebp-0x1b], al
	add ecx, 0x1
	add esi, 0x1
	cmp esi, 0x3
	jnz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_590
	movsx eax, word [ebp-0x1a]
	mov ecx, [ebp-0x2fb0]
	mov edx, [ebp+0xc]
	mov [edx+0x1c], ecx
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_630:
	mov [edi], eax
	mov edx, [ebp+0xc]
	mov edx, [edx+0x14]
	mov [ebp-0x2fdc], edx
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_610:
	add ebx, 0x1
	add edi, 0x4
	cmp ebx, 0x10
	jz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_600
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_570:
	mov eax, [ebp-0x2fc8]
	mov ecx, ebx
	sar eax, cl
	test al, 0x1
	jz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_610
	mov eax, [ebp+0xc]
	mov ecx, [eax+0x1c]
	lea edx, [ecx+0x2]
	mov [ebp-0x2fb0], edx
	mov eax, [ebp-0x2fdc]
	mov edx, [ebp+0xc]
	add eax, [edx+0x18]
	cmp [ebp-0x2fb0], eax
	jle _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_620
	mov dword [edx], 0x1
	mov eax, 0xffffffff
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_630
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_40:
	mov ecx, [edi+0x14]
	mov [ebp-0x2fdc], ecx
	mov edx, esi
	sar edx, 0x3
	cmp edx, [ebp-0x2fdc]
	jge _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_640
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_60:
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0x8]
	movzx eax, byte [eax+edx]
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_650
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_50:
	mov dword [edi], 0x1
	mov eax, 0xffffffff
	test eax, eax
	setg byte [ebp-0x2fb9]
	mov eax, numPlayerStateFields
	mov eax, [eax]
	mov [ebp-0x2fc4], eax
	test eax, 0xffff0000
	jz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_660
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_70:
	xor ecx, ecx
	xor ebx, ebx
	mov edx, [ebp-0x2fc4]
	shl edx, cl
	test edx, 0xff000000
	jz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_670
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_80:
	xor esi, esi
	xor eax, eax
	lea edi, [ebx+eax]
	mov ecx, esi
	shl edx, cl
	test edx, 0xf0000000
	jz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_680
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_90:
	xor esi, esi
	xor eax, eax
	add edi, eax
	mov ecx, esi
	shl edx, cl
	test edx, 0xc0000000
	jz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_690
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_100:
	xor esi, esi
	xor eax, eax
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_700
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_250:
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0x8]
	movzx eax, byte [eax+edx]
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_710
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_580:
	mov edx, [ebp+0xc]
	mov eax, [edx+0x8]
	movzx eax, byte [ecx+eax]
	mov [ebp-0x301c], eax
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_720
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_510:
	mov ebx, ecx
	lea esi, [edx*8]
	mov [ecx+0x20], esi
	lea ecx, [edx+0x1]
	mov [ebx+0x1c], ecx
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_500:
	mov edx, esi
	sar edx, 0x3
	cmp edx, [ebp-0x2fdc]
	jl _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_730
	sub edx, [ebp-0x2fdc]
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edx, ecx
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1300:
	add esi, 0x1
	mov [edx+0x20], esi
	mov ecx, edi
	sar eax, cl
	test al, 0x1
	jnz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_740
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_600:
	add dword [ebp-0x2f98], 0x10
	cmp dword [ebp-0x2f98], 0x40
	jz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_750
	mov ebx, [ebp+0xc]
	mov esi, [ebx+0x20]
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_760
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_490:
	lea esi, [ecx*8]
	mov [edx+0x20], esi
	add ecx, 0x1
	mov [edx+0x1c], ecx
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_480:
	mov edx, esi
	sar edx, 0x3
	cmp edx, [ebp-0x2fdc]
	jl _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_770
	sub edx, [ebp-0x2fdc]
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edx, ecx
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1550:
	add esi, 0x1
	mov [edx+0x20], esi
	mov ecx, ebx
	sar eax, cl
	test al, 0x1
	jnz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_780
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_750:
	mov dword [ebp-0x2f9c], 0x0
	mov ecx, [ebp+0x18]
	add ecx, 0x350
	mov [ebp-0x2fe0], ecx
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_960:
	mov ebx, [ebp+0xc]
	mov esi, [ebx+0x20]
	mov edi, esi
	and edi, 0x7
	jnz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_790
	mov edx, [ebx+0x1c]
	mov eax, [ebp-0x2fdc]
	add eax, [ebx+0x18]
	cmp edx, eax
	jl _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_800
	mov dword [ebx], 0x1
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_950:
	mov eax, cl_shownet
	mov eax, [eax]
	test eax, eax
	jz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_810
	cmp dword [eax+0xc], 0x4
	jz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_820
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_810:
	mov eax, [ebp-0x2fdc]
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1420:
	mov edi, [ebp+0xc]
	mov ecx, [edi+0x1c]
	lea edi, [ecx+0x2]
	mov edx, [ebp+0xc]
	add eax, [edx+0x18]
	cmp edi, eax
	jg _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_830
	mov esi, 0x1
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_850:
	cmp [ebp-0x2fdc], ecx
	jg _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_840
	mov edx, ecx
	sub edx, [ebp-0x2fdc]
	mov ebx, [ebp+0xc]
	mov eax, [ebx+0xc]
	movzx eax, byte [eax+edx]
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1260:
	mov [ebp+esi-0x1b], al
	add ecx, 0x1
	add esi, 0x1
	cmp esi, 0x3
	jnz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_850
	movsx ecx, word [ebp-0x1a]
	mov [ebp-0x2f90], ecx
	mov ebx, [ebp+0xc]
	mov [ebx+0x1c], edi
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1270:
	mov esi, [ebp-0x2fe0]
	add esi, 0xc
	xor edi, edi
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_860
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_910:
	mov ebx, 0x1
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_880:
	cmp [ebp-0x2fdc], ecx
	jg _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_870
	mov edx, ecx
	sub edx, [ebp-0x2fdc]
	mov [ebp-0x300c], edx
	mov eax, [ebp+0xc]
	mov eax, [eax+0xc]
	mov [ebp-0x3000], eax
	movzx edx, byte [eax+edx]
	mov [ebp-0x301c], edx
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_930:
	movzx eax, byte [ebp-0x301c]
	mov [ebp+ebx-0x1b], al
	add ecx, 0x1
	add ebx, 0x1
	cmp ebx, 0x3
	jnz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_880
	movsx eax, word [ebp-0x1a]
	mov ecx, [ebp-0x2fac]
	mov edx, [ebp+0xc]
	mov [edx+0x1c], ecx
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_920:
	mov [esi], eax
	mov eax, [ebp+0xc]
	mov eax, [eax+0x14]
	mov [ebp-0x2fdc], eax
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_900:
	add edi, 0x1
	add esi, 0x4
	cmp edi, 0x10
	jz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_890
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_860:
	mov eax, [ebp-0x2f90]
	mov ecx, edi
	sar eax, cl
	test al, 0x1
	jz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_900
	mov ebx, [ebp+0xc]
	mov ecx, [ebx+0x1c]
	lea eax, [ecx+0x2]
	mov [ebp-0x2fac], eax
	mov eax, [ebp-0x2fdc]
	add eax, [ebx+0x18]
	cmp [ebp-0x2fac], eax
	jle _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_910
	mov dword [ebx], 0x1
	mov eax, 0xffffffff
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_920
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_870:
	mov edx, [ebp+0xc]
	mov eax, [edx+0x8]
	movzx eax, byte [eax+ecx]
	mov [ebp-0x301c], eax
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_930
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_800:
	lea esi, [edx*8]
	mov eax, [ebp+0xc]
	mov [eax+0x20], esi
	lea ecx, [edx+0x1]
	mov [eax+0x1c], ecx
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_790:
	mov edx, esi
	sar edx, 0x3
	cmp edx, [ebp-0x2fdc]
	jl _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_940
	sub edx, [ebp-0x2fdc]
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edx, ecx
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1240:
	add esi, 0x1
	mov [edx+0x20], esi
	mov ecx, edi
	sar eax, cl
	test al, 0x1
	jnz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_950
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_890:
	add dword [ebp-0x2f9c], 0x10
	add dword [ebp-0x2fe0], 0x40
	cmp dword [ebp-0x2f9c], 0x80
	jnz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_960
	mov edx, [ebp+0xc]
	mov esi, [edx+0x20]
	mov ebx, esi
	and ebx, 0x7
	jnz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_970
	mov ecx, edx
	mov edx, [edx+0x1c]
	mov eax, [ebp-0x2fdc]
	add eax, [ecx+0x18]
	cmp edx, eax
	jl _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_980
	mov dword [ecx], 0x1
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1340:
	mov ebx, [ebp+0x18]
	mov [ebp-0x2fa0], ebx
	mov dword [ebp-0x2f94], 0x0
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1070:
	mov dword [ebp-0x2fa8], 0x0
	xor edi, edi
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1020:
	mov ebx, esi
	and ebx, 0x7
	jnz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_990
	mov eax, [ebp+0xc]
	mov edx, [eax+0x1c]
	mov eax, [ebp-0x2fdc]
	mov ecx, [ebp+0xc]
	add eax, [ecx+0x18]
	cmp edx, eax
	jge _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1000
	mov eax, ecx
	lea esi, [edx*8]
	mov [ecx+0x20], esi
	lea ecx, [edx+0x1]
	mov [eax+0x1c], ecx
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_990:
	mov edx, esi
	sar edx, 0x3
	cmp edx, [ebp-0x2fdc]
	jl _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1010
	sub edx, [ebp-0x2fdc]
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1080:
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
	jnz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1020
	mov eax, [ebp-0x2fa8]
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1410:
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
	jnz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1030
	mov eax, [ebp+0xc]
	mov ecx, [eax+0x1c]
	mov edx, [eax+0x14]
	mov [ebp-0x2fdc], edx
	mov eax, edx
	mov edx, [ebp+0xc]
	add eax, [edx+0x18]
	cmp ecx, eax
	jl _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1040
	mov dword [edx], 0x1
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1100:
	test ebx, ebx
	jg _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1050
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1110:
	add dword [ebp-0x2f94], 0x1
	add dword [ebp-0x2fa0], 0x1c
	cmp dword [ebp-0x2f94], 0x10
	jz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1060
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1130:
	mov edi, [ebp+0xc]
	mov esi, [edi+0x20]
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1070
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1010:
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0x8]
	movzx eax, byte [eax+edx]
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1080
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1030:
	mov edx, [ebp+0xc]
	mov edx, [edx+0x14]
	mov [ebp-0x2fdc], edx
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1250:
	mov edx, esi
	sar edx, 0x3
	cmp edx, [ebp-0x2fdc]
	jl _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1090
	sub edx, [ebp-0x2fdc]
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edx, ecx
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1230:
	add esi, 0x1
	mov [edx+0x20], esi
	mov ecx, edi
	sar eax, cl
	test al, 0x1
	jnz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1100
	test ebx, ebx
	jle _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1110
	mov esi, [ebp-0x2fa4]
	xor ecx, ecx
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1120:
	mov edx, [esi+0x4]
	mov edi, [ebp-0x2fd0]
	mov eax, [edx+edi]
	mov edi, [ebp-0x2fd4]
	mov [edx+edi], eax
	add ecx, 0x1
	add esi, 0x10
	cmp ebx, ecx
	jnz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1120
	mov eax, [ebp+0xc]
	mov eax, [eax+0x14]
	mov [ebp-0x2fdc], eax
	add dword [ebp-0x2f94], 0x1
	add dword [ebp-0x2fa0], 0x1c
	cmp dword [ebp-0x2f94], 0x10
	jnz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1130
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1060:
	mov edx, [ebp+0xc]
	mov esi, [edx+0x20]
	mov ebx, esi
	and ebx, 0x7
	jnz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1140
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1350:
	mov ecx, edx
	mov edx, [edx+0x1c]
	mov eax, [ebp-0x2fdc]
	add eax, [ecx+0x18]
	cmp edx, eax
	jl _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1150
	mov dword [ecx], 0x1
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1370:
	mov ecx, [ebp+0x14]
	add ecx, 0x1c04
	mov dword [esp+0x4], 0x1f
	mov eax, [ebp+0x18]
	add eax, 0x1c04
	mov [esp], eax
	mov edx, [ebp+0x10]
	mov eax, [ebp+0xc]
	call _Z21MSG_ReadDeltaHudElemsP5msg_tiPK9hudelem_sPS1_i
	mov ecx, [ebp+0x14]
	add ecx, 0x8a4
	mov dword [esp+0x4], 0x1f
	mov eax, [ebp+0x18]
	add eax, 0x8a4
	mov [esp], eax
	mov edx, [ebp+0x10]
	mov eax, [ebp+0xc]
	call _Z21MSG_ReadDeltaHudElemsP5msg_tiPK9hudelem_sPS1_i
	mov ebx, [ebp+0xc]
	mov ebx, [ebx+0x14]
	mov [ebp-0x2fdc], ebx
	mov edi, [ebp+0xc]
	mov esi, [edi+0x20]
	mov ebx, esi
	and ebx, 0x7
	jnz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1160
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1380:
	mov ecx, [edi+0x1c]
	mov edx, [edi+0x18]
	mov eax, [ebp-0x2fdc]
	add eax, edx
	cmp ecx, eax
	jl _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1170
	mov dword [edi], 0x1
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1400:
	mov ebx, [ebp+0x18]
	mov esi, 0x80
	mov eax, [ebp-0x2fdc]
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1180
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1210:
	cmp ecx, [ebp-0x2fdc]
	jl _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1190
	mov edx, ecx
	sub edx, [ebp-0x2fdc]
	mov edi, [ebp+0xc]
	mov eax, [edi+0xc]
	movzx edx, byte [eax+edx]
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1290:
	lea eax, [ecx+0x1]
	mov ecx, [ebp+0xc]
	mov [ecx+0x1c], eax
	mov eax, edx
	mov [ebx+0x81c], al
	add ebx, 0x1
	sub esi, 0x1
	jz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1200
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1220:
	mov edi, [ebp+0xc]
	mov ecx, [edi+0x1c]
	mov edx, [edi+0x18]
	mov eax, [edi+0x14]
	mov [ebp-0x2fdc], eax
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1180:
	add eax, edx
	cmp ecx, eax
	jl _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1210
	mov edi, [ebp+0xc]
	mov dword [edi], 0x1
	mov eax, 0xffffffff
	mov [ebx+0x81c], al
	add ebx, 0x1
	sub esi, 0x1
	jnz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1220
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1200:
	add esp, 0x303c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1090:
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0x8]
	movzx eax, byte [eax+edx]
	mov edx, ecx
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1230
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_940:
	mov ebx, [ebp+0xc]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	mov edx, ebx
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1240
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1040:
	lea esi, [ecx*8]
	mov [edx+0x20], esi
	add ecx, 0x1
	mov [edx+0x1c], ecx
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1250
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_840:
	mov edx, [ebp+0xc]
	mov eax, [edx+0x8]
	movzx eax, byte [eax+ecx]
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1260
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_830:
	mov dword [edx], 0x1
	mov dword [ebp-0x2f90], 0xffffffff
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1270
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1050:
	mov edi, [ebp-0x2fa4]
	xor esi, esi
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1280:
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
	call _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih
	add esi, 0x1
	add edi, 0x10
	cmp ebx, esi
	jnz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1280
	mov edx, [ebp+0xc]
	mov edx, [edx+0x14]
	mov [ebp-0x2fdc], edx
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1110
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1190:
	mov edx, [ebp+0xc]
	mov eax, [edx+0x8]
	movzx edx, byte [eax+ecx]
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1290
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_730:
	mov ebx, [ebp+0xc]
	mov eax, [ebx+0x8]
	movzx eax, byte [eax+edx]
	mov edx, ebx
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1300
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_540:
	mov dword [edx], 0x1
	mov dword [ebp-0x2fc8], 0xffffffff
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1310
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_550:
	mov ebx, [ebp+0xc]
	mov eax, [ebx+0x8]
	movzx eax, byte [ecx+eax]
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1320
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_980:
	lea esi, [edx*8]
	mov edi, [ebp+0xc]
	mov [edi+0x20], esi
	lea ecx, [edx+0x1]
	mov [edi+0x1c], ecx
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_970:
	mov edx, esi
	sar edx, 0x3
	cmp edx, [ebp-0x2fdc]
	jl _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1330
	sub edx, [ebp-0x2fdc]
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edx, ecx
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1560:
	add esi, 0x1
	mov [edx+0x20], esi
	mov ecx, ebx
	sar eax, cl
	test al, 0x1
	jnz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1340
	mov edx, [ebp+0xc]
	mov esi, [edx+0x20]
	mov ebx, esi
	and ebx, 0x7
	jz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1350
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1140:
	mov edx, esi
	sar edx, 0x3
	cmp edx, [ebp-0x2fdc]
	jl _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1360
	sub edx, [ebp-0x2fdc]
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edx, ecx
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1530:
	add esi, 0x1
	mov [edx+0x20], esi
	mov ecx, ebx
	sar eax, cl
	test al, 0x1
	jnz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1370
	mov edi, [ebp+0xc]
	mov esi, [edi+0x20]
	mov ebx, esi
	and ebx, 0x7
	jz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1380
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1160:
	mov edx, esi
	sar edx, 0x3
	cmp edx, [ebp-0x2fdc]
	jl _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1390
	sub edx, [ebp-0x2fdc]
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0xc]
	movzx edx, byte [eax+edx]
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1570:
	lea eax, [esi+0x1]
	mov [ecx+0x20], eax
	mov ecx, ebx
	sar edx, cl
	and dl, 0x1
	jz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1200
	mov ebx, [ebp+0xc]
	mov ecx, [ebx+0x1c]
	mov edx, [ebx+0x18]
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1400
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1000:
	mov dword [ecx], 0x1
	mov eax, 0xffffffff
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1410
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_820:
	mov dword [esp+0x8], _cstring_ps_ammoclip
	mov dword [esp+0x4], _cstring_s_
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	mov ebx, [ebp+0xc]
	mov ebx, [ebx+0x14]
	mov [ebp-0x2fdc], ebx
	mov eax, ebx
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1420
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_110:
	xor edi, edi
	mov dword [ebp-0x2fcc], 0x0
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1430
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1470:
	sub edx, [ebp-0x2fdc]
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1480:
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
	jz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1440
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1430:
	mov eax, [ebp+0xc]
	mov esi, [eax+0x20]
	mov ebx, esi
	and ebx, 0x7
	jnz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1450
	mov edx, eax
	mov ecx, [eax+0x1c]
	mov eax, [ebp-0x2fdc]
	add eax, [edx+0x18]
	cmp ecx, eax
	jge _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1460
	lea esi, [ecx*8]
	mov [edx+0x20], esi
	add ecx, 0x1
	mov [edx+0x1c], ecx
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1450:
	mov edx, esi
	sar edx, 0x3
	cmp edx, [ebp-0x2fdc]
	jge _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1470
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0x8]
	movzx eax, byte [eax+edx]
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1480
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_190:
	mov ecx, [edi+0x14]
	mov [ebp-0x2fdc], ecx
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1590:
	mov edx, esi
	sar edx, 0x3
	cmp edx, [ebp-0x2fdc]
	jl _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1490
	sub edx, [ebp-0x2fdc]
	mov edi, [ebp+0xc]
	mov eax, [edi+0xc]
	movzx eax, byte [eax+edx]
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1540:
	add esi, 0x1
	mov [edi+0x20], esi
	mov ecx, ebx
	sar eax, cl
	test al, 0x1
	jz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_450
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1500
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_30:
	cmp eax, 0xfffffffe
	jz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1510
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_20:
	mov dword [ebp-0x2fc0], 0x0
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1520
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1360:
	mov edi, [ebp+0xc]
	mov eax, [edi+0x8]
	movzx eax, byte [eax+edx]
	mov edx, edi
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1530
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1490:
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0x8]
	movzx eax, byte [eax+edx]
	mov edi, ecx
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1540
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_770:
	mov edi, [ebp+0xc]
	mov eax, [edi+0x8]
	movzx eax, byte [eax+edx]
	mov edx, edi
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1550
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1330:
	mov edi, [ebp+0xc]
	mov eax, [edi+0x8]
	movzx eax, byte [eax+edx]
	mov edx, edi
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1560
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1390:
	mov edi, [ebp+0xc]
	mov eax, [edi+0x8]
	movzx edx, byte [eax+edx]
	mov ecx, edi
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1570
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_180:
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
	call _Z34CL_GetPredictedOriginForServerTimeP14clientActive_tiPfS1_S1_PiS2_
	test al, al
	jnz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1580
	mov dword [esp+0x4], _cstring_unable_to_find_t
	mov dword [esp], 0xe
	call _Z14Com_PrintErroriPKcz
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
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1580
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_200:
	lea esi, [ecx*8]
	mov edx, [ebp+0xc]
	mov [edx+0x20], esi
	add ecx, 0x1
	mov [edx+0x1c], ecx
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1590
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1150:
	lea esi, [edx*8]
	mov edi, [ebp+0xc]
	mov [edi+0x20], esi
	lea ecx, [edx+0x1]
	mov [edi+0x1c], ecx
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1140
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1170:
	lea esi, [ecx*8]
	mov eax, [ebp+0xc]
	mov [eax+0x20], esi
	add ecx, 0x1
	mov [eax+0x1c], ecx
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1160
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_530:
	mov dword [esp+0x8], _cstring_ps_ammo
	mov dword [esp+0x4], _cstring_s_
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	mov ebx, [ebp+0xc]
	mov ebx, [ebx+0x14]
	mov [ebp-0x2fdc], ebx
	mov eax, ebx
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1600
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_280:
	mov dword [edi], 0x1
	mov eax, 0xffffffff
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1610
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_460:
	mov dword [ebx], 0x1
	mov eax, 0xffffffff
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1620
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_360:
	mov dword [edx], 0x1
	mov eax, 0xffffffff
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1630
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_320:
	mov dword [edx], 0x1
	mov eax, 0xffffffff
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1640
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_290:
	mov edx, [ebp+0xc]
	mov eax, [edx+0x8]
	movzx eax, byte [ecx+eax]
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1650
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_370:
	mov edi, [ebp+0xc]
	mov eax, [edi+0x8]
	movzx eax, byte [ecx+eax]
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1660
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_330:
	mov edi, [ebp+0xc]
	mov eax, [edi+0x8]
	movzx eax, byte [ecx+eax]
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1670
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1460:
	mov dword [edx], 0x1
	mov dword [ebp-0x2fcc], 0xffffffff
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1440
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_10:
	lea ebx, [ebp-0x2f80]
	mov dword [esp+0x8], 0x2f64
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call memset
	mov [ebp+0x14], ebx
	mov edx, ebx
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1680
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_470:
	mov edi, [ebp+0xc]
	mov eax, [edi+0x8]
	movzx eax, byte [eax+ecx]
	mov edx, edi
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1690
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_220:
	mov dword [esp+0x8], _cstring_ps_stats
	mov dword [esp+0x4], _cstring_s_
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	mov ebx, [ebp+0xc]
	mov ebx, [ebx+0x14]
	mov [ebp-0x2fdc], ebx
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_210
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_240:
	mov eax, [ebp+0xc]
	mov dword [eax], 0x1
	mov dword [ebp-0x2f8c], 0xffffffff
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1700
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_430:
	mov ecx, [ebp+0xc]
	mov dword [ecx], 0x1
	mov dword [ebp-0x2fb4], 0xffffffff
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_410
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_130:
	cmp byte [ebp-0x2fb9], 0x0
	jz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1710
	xor ebx, ebx
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1720:
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
	call _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih
	add ebx, 0x1
	add edi, 0x10
	cmp [ebp-0x2fcc], ebx
	jnz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1720
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1730
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_140:
	xor ebx, ebx
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1740:
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
	call _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih
	add ebx, 0x1
	add edi, 0x10
	cmp [ebp-0x2fcc], ebx
	jnz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1740
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1730
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1710:
	xor ebx, ebx
_Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1750:
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
	call _Z18MSG_ReadDeltaFieldP5msg_tiPKvPvPK8NetFieldih
	add ebx, 0x1
	add edi, 0x10
	cmp [ebp-0x2fcc], ebx
	jnz _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1750
	jmp _Z24MSG_ReadDeltaPlayerstateiP5msg_tiPK13playerState_sPS1_h_1730
	add [eax], al


;MSG_WriteDeltaUsercmdKey(msg_t*, int, usercmd_s const*, usercmd_s const*)
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3_:
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
	ja _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__10
	mov ebx, [ebp+0x8]
	mov ebx, [ebx+0x20]
	mov [ebp-0x1c], ebx
	and ebx, 0x7
	jz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__20
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__830:
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
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1530:
	mov ecx, [ebp+0x8]
	cmp esi, [ecx+0x10]
	jge _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__30
	mov eax, [ecx+0x8]
	mov [eax+esi], dl
	mov esi, [ecx+0x14]
	add esi, 0x1
	mov [ecx+0x14], esi
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1310:
	mov ecx, [ebp+0x14]
	movzx edx, byte [ecx+0x17]
	movzx eax, byte [ecx+0x16]
	cmp al, 0xa
	jle _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__40
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__590:
	mov dword [ebp-0x18], 0x1
	cmp dl, 0xa
	jle _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__50
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__600:
	or dword [ebp-0x18], 0x4
	mov ebx, [ebp+0x10]
	movzx edx, byte [ebx+0x17]
	movzx eax, byte [ebx+0x16]
	cmp al, 0xa
	jle _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__60
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__610:
	mov edi, 0x1
	cmp dl, 0xa
	jle _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__70
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__620:
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
	jz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__80
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__630:
	mov ebx, [ebp+0xc]
	xor ebx, 0x1
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x10]
	mov eax, edx
	sub eax, esi
	cmp eax, 0x3
	jg _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__90
	mov dword [ecx], 0x1
	mov eax, [ecx+0x20]
	mov [ebp-0x1c], eax
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__950:
	mov eax, edx
	sub eax, esi
	cmp eax, 0x3
	jg _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__100
	mov ecx, [ebp+0x8]
	mov dword [ecx], 0x1
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__920:
	mov ebx, [ebp+0xc]
	mov eax, [ebp+0x14]
	xor ebx, [eax+0x4]
	sub edx, esi
	cmp edx, 0x3
	jg _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__110
	mov edx, [ebp+0x8]
	mov dword [edx], 0x1
	mov ebx, [ebp+0x14]
	mov edx, [ebx+0x8]
	mov eax, [ebp+0x10]
	cmp [eax+0x8], dx
	jz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__120
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__860:
	mov ebx, [ebp-0x1c]
	and ebx, 0x7
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__130
	mov ecx, [ebp+0x8]
	mov esi, [ecx+0x14]
	cmp esi, [ecx+0x10]
	jge _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__140
	lea eax, [esi*8]
	mov [ecx+0x20], eax
	mov eax, [ecx+0x8]
	mov byte [eax+esi], 0x0
	add dword [ecx+0x14], 0x1
	mov eax, [ecx+0x20]
	mov [ebp-0x1c], eax
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__130:
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
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1470:
	mov ebx, [ebp+0xc]
	xor ebx, edx
	lea edx, [esi+0x2]
	mov eax, [ebp+0x8]
	cmp edx, [eax+0x10]
	jg _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__150
	mov ecx, eax
	mov eax, [eax+0x8]
	mov [eax+esi], bx
	mov [ecx+0x14], edx
	mov ebx, [ecx+0x20]
	mov [ebp-0x1c], ebx
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__890:
	mov ecx, [ebp+0x14]
	mov edx, [ecx+0xc]
	mov ebx, [ebp+0x10]
	cmp [ebx+0xc], dx
	jz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__160
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1030:
	mov ebx, [ebp-0x1c]
	and ebx, 0x7
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__170
	mov eax, [ebp+0x8]
	mov esi, [eax+0x14]
	cmp esi, [eax+0x10]
	jge _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__180
	lea ecx, [esi*8]
	mov [eax+0x20], ecx
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	mov byte [eax+esi], 0x0
	add dword [ecx+0x14], 0x1
	mov eax, [ecx+0x20]
	mov [ebp-0x1c], eax
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__170:
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
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1490:
	mov ebx, [ebp+0xc]
	xor ebx, edx
	lea edx, [esi+0x2]
	mov eax, [ebp+0x8]
	cmp edx, [eax+0x10]
	jg _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__190
	mov ecx, eax
	mov eax, [eax+0x8]
	mov [eax+esi], bx
	mov [ecx+0x14], edx
	mov ebx, [ecx+0x20]
	mov [ebp-0x1c], ebx
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1050:
	cmp [ebp-0x18], edi
	jz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__200
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__960:
	mov edx, [ebp-0x1c]
	and edx, 0x7
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__210
	mov ecx, [ebp+0x8]
	mov esi, [ecx+0x14]
	cmp esi, [ecx+0x10]
	jge _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__220
	lea ebx, [esi*8]
	mov [ecx+0x20], ebx
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	mov byte [eax+esi], 0x0
	add dword [ecx+0x14], 0x1
	mov ebx, [ecx+0x20]
	mov [ebp-0x1c], ebx
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__210:
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
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1480:
	mov ebx, [ebp-0x18]
	xor ebx, [ebp+0xc]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x10]
	sub eax, esi
	cmp eax, 0x3
	jg _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__230
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__980:
	mov dword [ecx], 0x1
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1300:
	mov ebx, [ebp+0xc]
	mov ecx, [ebp+0x14]
	xor ebx, [ecx]
	mov [ebp-0x14], ebx
	mov edx, [ecx+0x10]
	mov eax, [ebp+0x10]
	cmp [eax+0x10], dx
	jz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__240
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__990:
	mov ebx, [ebp-0x1c]
	and ebx, 0x7
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__250
	mov ecx, [ebp+0x8]
	mov esi, [ecx+0x14]
	cmp esi, [ecx+0x10]
	jge _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__260
	lea eax, [esi*8]
	mov [ecx+0x20], eax
	mov eax, [ecx+0x8]
	mov byte [eax+esi], 0x0
	add dword [ecx+0x14], 0x1
	mov eax, [ecx+0x20]
	mov [ebp-0x1c], eax
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__250:
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
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1510:
	mov ebx, [ebp-0x14]
	xor ebx, edx
	lea edx, [esi+0x2]
	mov eax, [ebp+0x8]
	cmp edx, [eax+0x10]
	jg _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__270
	mov ecx, eax
	mov eax, [eax+0x8]
	mov [eax+esi], bx
	mov [ecx+0x14], edx
	mov ebx, [ecx+0x20]
	mov [ebp-0x1c], ebx
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1020:
	mov ecx, [ebp+0x14]
	mov edx, [ecx+0x4]
	sar edx, 1
	mov ebx, [ebp+0x10]
	mov eax, [ebx+0x4]
	sar eax, 1
	cmp edx, eax
	jz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__280
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1230:
	mov ebx, [ebp-0x1c]
	and ebx, 0x7
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__290
	mov eax, [ebp+0x8]
	mov esi, [eax+0x14]
	cmp esi, [eax+0x10]
	jge _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__300
	lea ecx, [esi*8]
	mov [eax+0x20], ecx
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	mov byte [eax+esi], 0x0
	add dword [ecx+0x14], 0x1
	mov eax, [ecx+0x20]
	mov [ebp-0x1c], eax
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__290:
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
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1500:
	mov ebx, edx
	xor ebx, [ebp-0x14]
	mov edx, [ebp+0x8]
	mov eax, [edx+0x10]
	sub eax, esi
	cmp eax, 0x3
	jg _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__310
	mov dword [edx], 0x1
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1260:
	mov ecx, [ebp+0x14]
	movzx edx, byte [ecx+0x14]
	mov ebx, [ebp+0x10]
	movzx eax, byte [ebx+0x14]
	cmp edx, eax
	jz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__320
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1190:
	mov ebx, [ebp-0x1c]
	and ebx, 0x7
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__330
	mov eax, [ebp+0x8]
	mov esi, [eax+0x14]
	cmp esi, [eax+0x10]
	jge _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__340
	lea ecx, [esi*8]
	mov [eax+0x20], ecx
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	mov byte [eax+esi], 0x0
	add dword [ecx+0x14], 0x1
	mov eax, [ecx+0x20]
	mov [ebp-0x1c], eax
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__330:
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
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1520:
	mov ebx, [ebp-0x14]
	xor ebx, edx
	mov edx, [ebp+0x8]
	mov eax, [edx+0x10]
	sub eax, esi
	cmp eax, 0x3
	jg _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__350
	mov dword [edx], 0x1
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1220:
	mov ecx, [ebp+0x14]
	movzx edx, byte [ecx+0x15]
	mov ebx, [ebp+0x10]
	movzx eax, byte [ebx+0x15]
	cmp edx, eax
	jz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__360
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1130:
	mov ebx, [ebp-0x1c]
	and ebx, 0x7
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__370
	mov eax, [ebp+0x8]
	mov esi, [eax+0x14]
	cmp esi, [eax+0x10]
	jge _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__380
	lea ecx, [esi*8]
	mov [eax+0x20], ecx
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	mov byte [eax+esi], 0x0
	add dword [ecx+0x14], 0x1
	mov eax, [ecx+0x20]
	mov [ebp-0x1c], eax
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__370:
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
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1460:
	mov ebx, [ebp-0x14]
	xor ebx, edx
	mov edx, [ebp+0x8]
	mov eax, [edx+0x10]
	sub eax, esi
	cmp eax, 0x3
	jg _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__390
	mov dword [edx], 0x1
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1090:
	mov ecx, [ebp+0x14]
	mov eax, [ecx+0x4]
	test eax, 0x10000
	jz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__400
	movsx edx, byte [ecx+0x1d]
	mov ebx, [ebp+0x10]
	movsx eax, byte [ebx+0x1d]
	cmp al, dl
	jz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__410
	mov ebx, [ebp-0x1c]
	and ebx, 0x7
	jz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__420
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1640:
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
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1450:
	xor edx, [ebp-0x14]
	mov ebx, [ebp+0x8]
	cmp esi, [ebx+0x10]
	jge _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__430
	mov eax, [ebx+0x8]
	mov [eax+esi], dl
	add dword [ebx+0x14], 0x1
	mov eax, [ebx+0x20]
	mov [ebp-0x1c], eax
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1630:
	mov ecx, [ebp+0x14]
	movsx edx, byte [ecx+0x1e]
	mov ebx, [ebp+0x10]
	movsx eax, byte [ebx+0x1e]
	cmp al, dl
	jz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__440
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1410:
	mov ebx, [ebp-0x1c]
	and ebx, 0x7
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__450
	mov eax, [ebp+0x8]
	mov esi, [eax+0x14]
	cmp esi, [eax+0x10]
	jl _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__460
	mov dword [eax], 0x1
	xor edx, [ebp-0x14]
	mov ecx, [ebp+0x8]
	cmp esi, [ecx+0x10]
	jge _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__470
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1570:
	mov eax, [ecx+0x8]
	mov [eax+esi], dl
	add dword [ecx+0x14], 0x1
	mov ebx, [ebp+0x14]
	mov eax, [ebx+0x4]
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__400:
	test al, 0x4
	jz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__480
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
	jz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__490
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+0x20]
	mov [ebp-0x1c], ecx
	mov ebx, ecx
	and ebx, 0x7
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__500
	mov eax, [ebp+0x8]
	mov esi, [eax+0x14]
	cmp esi, [eax+0x10]
	jge _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__510
	lea ecx, [esi*8]
	mov [eax+0x20], ecx
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	mov byte [eax+esi], 0x0
	add dword [ecx+0x14], 0x1
	mov eax, [ecx+0x20]
	mov [ebp-0x1c], eax
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__500:
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
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1550:
	mov ebx, [ebp-0x14]
	xor ebx, edx
	lea edx, [esi+0x2]
	mov eax, [ebp+0x8]
	cmp edx, [eax+0x10]
	jg _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__520
	mov ecx, eax
	mov eax, [eax+0x8]
	mov [eax+esi], bx
	mov [ecx+0x14], edx
	mov ebx, [ecx+0x20]
	mov [ebp-0x1c], ebx
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1600:
	mov ecx, [ebp+0x14]
	movzx edx, byte [ecx+0x1c]
	mov ebx, [ebp+0x10]
	movzx eax, byte [ebx+0x1c]
	cmp edx, eax
	jz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__530
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1380:
	mov ebx, [ebp-0x1c]
	and ebx, 0x7
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__540
	mov eax, [ebp+0x8]
	mov esi, [eax+0x14]
	cmp esi, [eax+0x10]
	jge _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__550
	lea ecx, [esi*8]
	mov [eax+0x20], ecx
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	mov byte [eax+esi], 0x0
	add dword [ecx+0x14], 0x1
	mov eax, [ecx+0x20]
	mov [ebp-0x1c], eax
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__540:
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
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1560:
	mov ebx, [ebp-0x14]
	xor ebx, edx
	mov edx, [ebp+0x8]
	mov eax, [edx+0x10]
	sub eax, esi
	cmp eax, 0x3
	jg _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__560
	mov dword [edx], 0x1
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__480:
	add esp, 0x10
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__10:
	mov eax, [ebp+0x8]
	mov eax, [eax+0x20]
	mov [ebp-0x1c], eax
	test al, 0x7
	jz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__570
	mov edx, [ebp+0x8]
	mov esi, [edx+0x14]
	mov ecx, edx
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__810:
	add dword [ebp-0x1c], 0x1
	mov ebx, [ebp-0x1c]
	mov [ecx+0x20], ebx
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1540:
	mov eax, [ebp+0x14]
	mov ecx, [eax]
	lea edx, [esi+0x4]
	mov ebx, [ebp+0x8]
	cmp edx, [ebx+0x10]
	jg _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__580
	mov eax, [ebx+0x8]
	mov [eax+esi], ecx
	mov esi, edx
	mov [ebx+0x14], edx
	mov ecx, [ebp+0x14]
	movzx edx, byte [ecx+0x17]
	movzx eax, byte [ecx+0x16]
	cmp al, 0xa
	jg _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__590
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__40:
	cmp al, 0xf5
	setle al
	movzx eax, al
	add eax, eax
	mov [ebp-0x18], eax
	cmp dl, 0xa
	jg _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__600
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__50:
	mov eax, [ebp-0x18]
	or eax, 0x8
	cmp dl, 0xf5
	cmovg eax, [ebp-0x18]
	mov [ebp-0x18], eax
	mov ebx, [ebp+0x10]
	movzx edx, byte [ebx+0x17]
	movzx eax, byte [ebx+0x16]
	cmp al, 0xa
	jg _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__610
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__60:
	cmp al, 0xf5
	setle al
	movzx edi, al
	add edi, edi
	cmp dl, 0xa
	jg _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__620
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__70:
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
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__630
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__80:
	mov edx, [ebp+0x10]
	movzx eax, word [edx+0x14]
	mov edx, [ebp+0x14]
	cmp ax, [edx+0x14]
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__630
	mov edx, [ebp+0x10]
	mov eax, [edx+0x10]
	mov edx, [ebp+0x14]
	cmp eax, [edx+0x10]
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__630
	mov eax, [ebp+0x10]
	movss xmm0, dword [eax+0x18]
	ucomiss xmm0, [edx+0x18]
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__630
	jp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__630
	movzx eax, byte [eax+0x1c]
	mov edx, [ebp+0x14]
	cmp al, [edx+0x1c]
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__630
	mov edx, [ebp+0x10]
	mov eax, [edx+0x8]
	mov edx, [ebp+0x14]
	cmp eax, [edx+0x8]
	jz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__640
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1880:
	mov ebx, [ebp+0xc]
	xor ebx, 0x1
	mov eax, [ebp+0x8]
	mov edx, [eax+0x10]
	mov eax, edx
	sub eax, esi
	cmp eax, 0x3
	jg _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__650
	mov ecx, [ebp+0x8]
	mov dword [ecx], 0x1
	mov ebx, [ecx+0x20]
	mov [ebp-0x1c], ebx
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1700:
	mov eax, edx
	sub eax, esi
	cmp eax, 0x3
	jg _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__660
	mov eax, [ebp+0x8]
	mov dword [eax], 0x1
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1790:
	mov ecx, [ebp+0xc]
	mov eax, [ebp+0x14]
	xor ecx, [eax]
	mov [ebp-0x10], ecx
	mov ebx, ecx
	xor ebx, [eax+0x4]
	sub edx, esi
	cmp edx, 0x3
	jg _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__670
	mov ebx, [ebp+0x8]
	mov dword [ebx], 0x1
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1760:
	mov eax, [ebp+0x14]
	mov ebx, [eax+0x8]
	mov edx, [ebp+0x10]
	cmp [edx+0x8], bx
	jz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__680
	mov edx, [ebp-0x1c]
	and edx, 0x7
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__690
	mov ecx, [ebp+0x8]
	mov esi, [ecx+0x14]
	cmp esi, [ecx+0x10]
	jl _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__700
	mov dword [ecx], 0x1
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1650:
	xor ebx, [ebp-0x10]
	lea edx, [esi+0x2]
	mov ecx, [ebp+0x8]
	cmp edx, [ecx+0x10]
	jg _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__710
	mov eax, [ecx+0x8]
	mov [eax+esi], bx
	mov [ecx+0x14], edx
	mov ebx, [ecx+0x20]
	mov [ebp-0x1c], ebx
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1800:
	mov edx, [ebp+0x14]
	mov ebx, [edx+0xc]
	mov ecx, [ebp+0x10]
	cmp [ecx+0xc], bx
	jz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__720
	mov edx, [ebp-0x1c]
	and edx, 0x7
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__730
	mov ecx, [ebp+0x8]
	mov esi, [ecx+0x14]
	cmp esi, [ecx+0x10]
	jl _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__740
	mov dword [ecx], 0x1
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1670:
	xor ebx, [ebp-0x10]
	lea edx, [esi+0x2]
	mov ecx, [ebp+0x8]
	cmp edx, [ecx+0x10]
	jg _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__750
	mov eax, [ecx+0x8]
	mov [eax+esi], bx
	mov [ecx+0x14], edx
	mov ebx, [ecx+0x20]
	mov [ebp-0x1c], ebx
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1810:
	cmp [ebp-0x18], edi
	jz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__760
	mov edx, [ebp-0x1c]
	and edx, 0x7
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__770
	mov ecx, [ebp+0x8]
	mov esi, [ecx+0x14]
	cmp esi, [ecx+0x10]
	jl _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__780
	mov dword [ecx], 0x1
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1660:
	mov ebx, [ebp-0x18]
	xor ebx, [ebp-0x10]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x10]
	sub eax, esi
	cmp eax, 0x3
	jg _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__790
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1850:
	mov dword [ecx], 0x1
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__480
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__570:
	mov edx, [ebp+0x8]
	mov esi, [edx+0x14]
	cmp esi, [edx+0x10]
	jge _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__800
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
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__810
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__20:
	mov eax, [ebp+0x8]
	mov esi, [eax+0x14]
	cmp esi, [eax+0x10]
	jge _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__820
	lea ecx, [esi*8]
	mov [eax+0x20], ecx
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	mov byte [eax+esi], 0x0
	add dword [ecx+0x14], 0x1
	mov eax, [ecx+0x20]
	mov [ebp-0x1c], eax
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__830
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__110:
	mov edx, [ebp-0x1c]
	and edx, 0x7
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__840
	lea ecx, [esi*8]
	mov eax, [ebp+0x8]
	mov [eax+0x20], ecx
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	mov byte [eax+esi], 0x0
	add dword [ecx+0x14], 0x1
	mov eax, [ecx+0x20]
	mov [ebp-0x1c], eax
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__840:
	and bl, 0x1
	jz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__850
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
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__850:
	add dword [ebp-0x1c], 0x1
	mov ecx, [ebp-0x1c]
	mov edx, [ebp+0x8]
	mov [edx+0x20], ecx
	mov ebx, [ebp+0x14]
	mov edx, [ebx+0x8]
	mov eax, [ebp+0x10]
	cmp [eax+0x8], dx
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__860
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__120:
	test byte [ebp-0x1c], 0x7
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__870
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x14]
	cmp edx, [ecx+0x10]
	jl _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__880
	mov dword [ecx], 0x1
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__890
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__100:
	mov edx, [ebp-0x1c]
	and edx, 0x7
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__900
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
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__900:
	and bl, 0x1
	jz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__910
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
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1320:
	add dword [ebp-0x1c], 0x1
	mov ebx, [ebp-0x1c]
	mov [ecx+0x20], ebx
	mov edx, [ecx+0x10]
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__920
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__90:
	mov edx, [ecx+0x20]
	mov [ebp-0x1c], edx
	and edx, 0x7
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__930
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
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__930:
	test bl, 0x1
	jz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__940
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
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1330:
	add dword [ebp-0x1c], 0x1
	mov ecx, [ebp-0x1c]
	mov [edx+0x20], ecx
	mov eax, [ebp+0x8]
	mov edx, [eax+0x10]
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__950
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__190:
	mov dword [eax], 0x1
	cmp [ebp-0x18], edi
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__960
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__200:
	test byte [ebp-0x1c], 0x7
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__970
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x14]
	cmp edx, [ecx+0x10]
	jge _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__980
	lea ebx, [edx*8]
	mov [ecx+0x20], ebx
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	mov byte [eax+edx], 0x0
	add dword [ecx+0x14], 0x1
	mov ebx, [ecx+0x20]
	mov [ebp-0x1c], ebx
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__970:
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
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__990
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__240:
	test byte [ebp-0x1c], 0x7
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1000
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x14]
	cmp edx, [ecx+0x10]
	jl _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1010
	mov dword [ecx], 0x1
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1020
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__150:
	mov dword [eax], 0x1
	mov ecx, [ebp+0x14]
	mov edx, [ecx+0xc]
	mov ebx, [ebp+0x10]
	cmp [ebx+0xc], dx
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1030
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__160:
	test byte [ebp-0x1c], 0x7
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1040
	mov eax, [ebp+0x8]
	mov edx, [eax+0x14]
	cmp edx, [eax+0x10]
	jge _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__190
	mov ebx, eax
	lea ecx, [edx*8]
	mov [eax+0x20], ecx
	mov eax, [eax+0x8]
	mov byte [eax+edx], 0x0
	add dword [ebx+0x14], 0x1
	mov eax, [ebx+0x20]
	mov [ebp-0x1c], eax
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1040:
	add dword [ebp-0x1c], 0x1
	mov ecx, [ebp-0x1c]
	mov edx, [ebp+0x8]
	mov [edx+0x20], ecx
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1050
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__390:
	mov esi, 0x7
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1080:
	sub esi, 0x1
	mov edi, [ebp-0x1c]
	and edi, 0x7
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1060
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x14]
	lea eax, [edx*8]
	mov [ecx+0x20], eax
	mov eax, [ecx+0x8]
	mov byte [eax+edx], 0x0
	add dword [ecx+0x14], 0x1
	mov edx, [ecx+0x20]
	mov [ebp-0x1c], edx
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1060:
	test bl, 0x1
	jz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1070
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
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1070:
	add dword [ebp-0x1c], 0x1
	mov edx, [ebp-0x1c]
	mov eax, [ebp+0x8]
	mov [eax+0x20], edx
	sar ebx, 1
	test esi, esi
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1080
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1090
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__350:
	mov esi, 0x7
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1120:
	sub esi, 0x1
	mov edi, [ebp-0x1c]
	and edi, 0x7
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1100
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x14]
	lea eax, [edx*8]
	mov [ecx+0x20], eax
	mov eax, [ecx+0x8]
	mov byte [eax+edx], 0x0
	add dword [ecx+0x14], 0x1
	mov edx, [ecx+0x20]
	mov [ebp-0x1c], edx
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1100:
	test bl, 0x1
	jz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1110
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
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1110:
	add dword [ebp-0x1c], 0x1
	mov edx, [ebp-0x1c]
	mov eax, [ebp+0x8]
	mov [eax+0x20], edx
	sar ebx, 1
	test esi, esi
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1120
	mov ecx, [ebp+0x14]
	movzx edx, byte [ecx+0x15]
	mov ebx, [ebp+0x10]
	movzx eax, byte [ebx+0x15]
	cmp edx, eax
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1130
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__360:
	test byte [ebp-0x1c], 0x7
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1140
	mov eax, [ebp+0x8]
	mov edx, [eax+0x14]
	cmp edx, [eax+0x10]
	jl _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1150
	mov dword [eax], 0x1
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1090
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__310:
	mov esi, 0x14
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1180:
	sub esi, 0x1
	mov edi, [ebp-0x1c]
	and edi, 0x7
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1160
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x14]
	lea eax, [edx*8]
	mov [ecx+0x20], eax
	mov eax, [ecx+0x8]
	mov byte [eax+edx], 0x0
	add dword [ecx+0x14], 0x1
	mov edx, [ecx+0x20]
	mov [ebp-0x1c], edx
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1160:
	test bl, 0x1
	jz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1170
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
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1170:
	add dword [ebp-0x1c], 0x1
	mov edx, [ebp-0x1c]
	mov eax, [ebp+0x8]
	mov [eax+0x20], edx
	sar ebx, 1
	test esi, esi
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1180
	mov ecx, [ebp+0x14]
	movzx edx, byte [ecx+0x14]
	mov ebx, [ebp+0x10]
	movzx eax, byte [ebx+0x14]
	cmp edx, eax
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1190
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__320:
	test byte [ebp-0x1c], 0x7
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1200
	mov eax, [ebp+0x8]
	mov edx, [eax+0x14]
	cmp edx, [eax+0x10]
	jl _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1210
	mov dword [eax], 0x1
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1220
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__270:
	mov dword [eax], 0x1
	mov ecx, [ebp+0x14]
	mov edx, [ecx+0x4]
	sar edx, 1
	mov ebx, [ebp+0x10]
	mov eax, [ebx+0x4]
	sar eax, 1
	cmp edx, eax
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1230
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__280:
	test byte [ebp-0x1c], 0x7
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1240
	mov eax, [ebp+0x8]
	mov edx, [eax+0x14]
	cmp edx, [eax+0x10]
	jl _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1250
	mov dword [eax], 0x1
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1260
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__230:
	mov esi, 0x4
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1290:
	sub esi, 0x1
	mov edi, [ebp-0x1c]
	and edi, 0x7
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1270
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
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1270:
	test bl, 0x1
	jz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1280
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
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1280:
	add dword [ebp-0x1c], 0x1
	mov edx, [ebp-0x1c]
	mov eax, [ebp+0x8]
	mov [eax+0x20], edx
	sar ebx, 1
	test esi, esi
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1290
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1300
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__880:
	lea ebx, [edx*8]
	mov [ecx+0x20], ebx
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	mov byte [eax+edx], 0x0
	add dword [ecx+0x14], 0x1
	mov ebx, [ecx+0x20]
	mov [ebp-0x1c], ebx
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__870:
	add dword [ebp-0x1c], 0x1
	mov edx, [ebp-0x1c]
	mov eax, [ebp+0x8]
	mov [eax+0x20], edx
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__890
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1210:
	mov ebx, eax
	lea ecx, [edx*8]
	mov [eax+0x20], ecx
	mov eax, [eax+0x8]
	mov byte [eax+edx], 0x0
	add dword [ebx+0x14], 0x1
	mov eax, [ebx+0x20]
	mov [ebp-0x1c], eax
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1200:
	add dword [ebp-0x1c], 0x1
	mov ecx, [ebp-0x1c]
	mov edx, [ebp+0x8]
	mov [edx+0x20], ecx
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1220
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1250:
	mov ebx, eax
	lea ecx, [edx*8]
	mov [eax+0x20], ecx
	mov eax, [eax+0x8]
	mov byte [eax+edx], 0x0
	add dword [ebx+0x14], 0x1
	mov eax, [ebx+0x20]
	mov [ebp-0x1c], eax
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1240:
	add dword [ebp-0x1c], 0x1
	mov ecx, [ebp-0x1c]
	mov edx, [ebp+0x8]
	mov [edx+0x20], ecx
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1260
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1150:
	mov ebx, eax
	lea ecx, [edx*8]
	mov [eax+0x20], ecx
	mov eax, [eax+0x8]
	mov byte [eax+edx], 0x0
	add dword [ebx+0x14], 0x1
	mov eax, [ebx+0x20]
	mov [ebp-0x1c], eax
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1140:
	add dword [ebp-0x1c], 0x1
	mov ecx, [ebp-0x1c]
	mov edx, [ebp+0x8]
	mov [edx+0x20], ecx
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1090
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1010:
	lea ebx, [edx*8]
	mov [ecx+0x20], ebx
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	mov byte [eax+edx], 0x0
	add dword [ecx+0x14], 0x1
	mov ebx, [ecx+0x20]
	mov [ebp-0x1c], ebx
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1000:
	add dword [ebp-0x1c], 0x1
	mov edx, [ebp-0x1c]
	mov eax, [ebp+0x8]
	mov [eax+0x20], edx
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1020
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__30:
	mov dword [ecx], 0x1
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1310
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__580:
	mov dword [ebx], 0x1
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1310
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__910:
	mov ecx, [ebp+0x8]
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1320
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__940:
	mov edx, [ebp+0x8]
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1330
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__560:
	mov esi, 0x8
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1340
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1360:
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
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1370:
	add eax, 0x1
	mov [ebp-0x1c], eax
	mov edx, [ebp+0x8]
	mov [edx+0x20], eax
	sar ebx, 1
	test esi, esi
	jz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__480
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1340:
	sub esi, 0x1
	mov edi, [ebp-0x1c]
	and edi, 0x7
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1350
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x14]
	lea eax, [edx*8]
	mov [ecx+0x20], eax
	mov eax, [ecx+0x8]
	mov byte [eax+edx], 0x0
	add dword [ecx+0x14], 0x1
	mov edx, [ecx+0x20]
	mov [ebp-0x1c], edx
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1350:
	test bl, 0x1
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1360
	mov eax, [ebp-0x1c]
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1370
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__520:
	mov dword [eax], 0x1
	mov ecx, [ebp+0x14]
	movzx edx, byte [ecx+0x1c]
	mov ebx, [ebp+0x10]
	movzx eax, byte [ebx+0x1c]
	cmp edx, eax
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1380
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__530:
	test byte [ebp-0x1c], 0x7
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1390
	mov eax, [ebp+0x8]
	mov edx, [eax+0x14]
	cmp edx, [eax+0x10]
	jge _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1400
	mov ebx, eax
	lea ecx, [edx*8]
	mov [eax+0x20], ecx
	mov eax, [eax+0x8]
	mov byte [eax+edx], 0x0
	add dword [ebx+0x14], 0x1
	mov eax, [ebx+0x20]
	mov [ebp-0x1c], eax
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1390:
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
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__430:
	mov dword [ebx], 0x1
	mov ecx, [ebp+0x14]
	movsx edx, byte [ecx+0x1e]
	mov ebx, [ebp+0x10]
	movsx eax, byte [ebx+0x1e]
	cmp al, dl
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1410
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__440:
	test byte [ebp-0x1c], 0x7
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1420
	mov eax, [ebp+0x8]
	mov edx, [eax+0x14]
	cmp edx, [eax+0x10]
	jge _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1430
	mov ebx, eax
	lea ecx, [edx*8]
	mov [eax+0x20], ecx
	mov eax, [eax+0x8]
	mov byte [eax+edx], 0x0
	add dword [ebx+0x14], 0x1
	mov eax, [ebx+0x20]
	mov [ebp-0x1c], eax
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1420:
	add dword [ebp-0x1c], 0x1
	mov ecx, [ebp-0x1c]
	mov edx, [ebp+0x8]
	mov [edx+0x20], ecx
	mov ebx, [ebp+0x14]
	mov eax, [ebx+0x4]
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__400
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__420:
	mov eax, [ebp+0x8]
	mov esi, [eax+0x14]
	cmp esi, [eax+0x10]
	jl _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1440
	mov dword [eax], 0x1
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1450
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__380:
	mov dword [eax], 0x1
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1460
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__140:
	mov dword [ecx], 0x1
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1470
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__220:
	mov dword [ecx], 0x1
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1480
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__180:
	mov dword [eax], 0x1
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1490
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__300:
	mov dword [eax], 0x1
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1500
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__260:
	mov dword [ecx], 0x1
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1510
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__340:
	mov dword [eax], 0x1
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1520
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__820:
	mov dword [eax], 0x1
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1530
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__800:
	mov dword [edx], 0x1
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1540
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__510:
	mov dword [eax], 0x1
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1550
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__550:
	mov dword [eax], 0x1
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1560
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__460:
	lea ecx, [esi*8]
	mov [eax+0x20], ecx
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	mov byte [eax+esi], 0x0
	add dword [ecx+0x14], 0x1
	mov eax, [ecx+0x20]
	mov [ebp-0x1c], eax
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__450:
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
	jl _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1570
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__470:
	mov dword [ecx], 0x1
	mov edx, [ebp+0x14]
	mov eax, [edx+0x4]
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__400
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__490:
	mov eax, [ebp+0x8]
	mov eax, [eax+0x20]
	mov [ebp-0x1c], eax
	test al, 0x7
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1580
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x14]
	cmp edx, [ecx+0x10]
	jge _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1590
	lea ebx, [edx*8]
	mov [ecx+0x20], ebx
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	mov byte [eax+edx], 0x0
	add dword [ecx+0x14], 0x1
	mov ebx, [ecx+0x20]
	mov [ebp-0x1c], ebx
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1580:
	add dword [ebp-0x1c], 0x1
	mov edx, [ebp-0x1c]
	mov eax, [ebp+0x8]
	mov [eax+0x20], edx
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1600
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__410:
	test byte [ebp-0x1c], 0x7
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1610
	mov eax, [ebp+0x8]
	mov edx, [eax+0x14]
	cmp edx, [eax+0x10]
	jge _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1620
	mov ebx, eax
	lea ecx, [edx*8]
	mov [eax+0x20], ecx
	mov eax, [eax+0x8]
	mov byte [eax+edx], 0x0
	add dword [ebx+0x14], 0x1
	mov eax, [ebx+0x20]
	mov [ebp-0x1c], eax
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1610:
	add dword [ebp-0x1c], 0x1
	mov ecx, [ebp-0x1c]
	mov edx, [ebp+0x8]
	mov [edx+0x20], ecx
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1630
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1440:
	lea ecx, [esi*8]
	mov [eax+0x20], ecx
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	mov byte [eax+esi], 0x0
	add dword [ecx+0x14], 0x1
	mov eax, [ecx+0x20]
	mov [ebp-0x1c], eax
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1640
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1590:
	mov dword [ecx], 0x1
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1600
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1400:
	mov dword [eax], 0x1
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__480
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1620:
	mov dword [eax], 0x1
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1630
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1430:
	mov dword [eax], 0x1
	mov eax, [ecx+0x4]
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__400
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__700:
	lea eax, [esi*8]
	mov ecx, [ebp+0x8]
	mov [ecx+0x20], eax
	mov eax, [ecx+0x8]
	mov byte [eax+esi], 0x0
	add dword [ecx+0x14], 0x1
	mov eax, [ecx+0x20]
	mov [ebp-0x1c], eax
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__690:
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
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1650
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__780:
	lea ebx, [esi*8]
	mov eax, [ebp+0x8]
	mov [eax+0x20], ebx
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	mov byte [eax+esi], 0x0
	add dword [ecx+0x14], 0x1
	mov ebx, [ecx+0x20]
	mov [ebp-0x1c], ebx
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__770:
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
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1660
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__740:
	lea eax, [esi*8]
	mov ecx, [ebp+0x8]
	mov [ecx+0x20], eax
	mov eax, [ecx+0x8]
	mov byte [eax+esi], 0x0
	add dword [ecx+0x14], 0x1
	mov eax, [ecx+0x20]
	mov [ebp-0x1c], eax
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__730:
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
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1670
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__650:
	mov eax, [ebp+0x8]
	mov eax, [eax+0x20]
	mov [ebp-0x1c], eax
	mov edx, eax
	and edx, 0x7
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1680
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
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1680:
	and bl, 0x1
	jz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1690
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
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1690:
	add dword [ebp-0x1c], 0x1
	mov ebx, [ebp-0x1c]
	mov ecx, [ebp+0x8]
	mov [ecx+0x20], ebx
	mov edx, [ecx+0x10]
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1700
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__790:
	mov esi, 0x4
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1730:
	mov edi, [ebp-0x1c]
	and edi, 0x7
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1710
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
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1710:
	test bl, 0x1
	jz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1720
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
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1720:
	add dword [ebp-0x1c], 0x1
	mov edx, [ebp-0x1c]
	mov eax, [ebp+0x8]
	mov [eax+0x20], edx
	sar ebx, 1
	sub esi, 0x1
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1730
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__480
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__670:
	mov edx, [ebp-0x1c]
	and edx, 0x7
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1740
	lea eax, [esi*8]
	mov ecx, [ebp+0x8]
	mov [ecx+0x20], eax
	mov eax, [ecx+0x8]
	mov byte [eax+esi], 0x0
	add dword [ecx+0x14], 0x1
	mov eax, [ecx+0x20]
	mov [ebp-0x1c], eax
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1740:
	and bl, 0x1
	jz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1750
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
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1750:
	add dword [ebp-0x1c], 0x1
	mov ecx, [ebp-0x1c]
	mov edx, [ebp+0x8]
	mov [edx+0x20], ecx
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1760
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__660:
	mov edx, [ebp-0x1c]
	and edx, 0x7
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1770
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
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1770:
	test byte [ebp+0xc], 0x1
	jz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1780
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
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1780:
	add dword [ebp-0x1c], 0x1
	mov ebx, [ebp-0x1c]
	mov ecx, [ebp+0x8]
	mov [ecx+0x20], ebx
	mov edx, [ecx+0x10]
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1790
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__710:
	mov eax, [ebp+0x8]
	mov dword [eax], 0x1
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1800
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__750:
	mov eax, [ebp+0x8]
	mov dword [eax], 0x1
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1810
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__680:
	test byte [ebp-0x1c], 0x7
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1820
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x14]
	cmp edx, [ecx+0x10]
	jl _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1830
	mov dword [ecx], 0x1
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1800
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__760:
	test byte [ebp-0x1c], 0x7
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1840
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x14]
	cmp edx, [ecx+0x10]
	jge _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1850
	lea ebx, [edx*8]
	mov eax, [ebp+0x8]
	mov [eax+0x20], ebx
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	mov byte [eax+edx], 0x0
	add dword [ecx+0x14], 0x1
	mov ebx, [ecx+0x20]
	mov [ebp-0x1c], ebx
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1840:
	add dword [ebp-0x1c], 0x1
	mov edx, [ebp-0x1c]
	mov eax, [ebp+0x8]
	mov [eax+0x20], edx
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__480
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1830:
	lea ebx, [edx*8]
	mov eax, [ebp+0x8]
	mov [eax+0x20], ebx
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8]
	mov byte [eax+edx], 0x0
	add dword [ecx+0x14], 0x1
	mov ebx, [ecx+0x20]
	mov [ebp-0x1c], ebx
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1820:
	add dword [ebp-0x1c], 0x1
	mov edx, [ebp-0x1c]
	mov eax, [ebp+0x8]
	mov [eax+0x20], edx
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1800
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__720:
	test byte [ebp-0x1c], 0x7
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1860
	mov ebx, [ebp+0x8]
	mov edx, [ebx+0x14]
	cmp edx, [ebx+0x10]
	jl _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1870
	mov dword [ebx], 0x1
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1810
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__640:
	mov edx, [ebp+0x10]
	mov eax, [edx+0xc]
	mov edx, [ebp+0x14]
	cmp eax, [edx+0xc]
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1880
	and ebx, 0x1
	and ecx, 0x1
	cmp ebx, ecx
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1880
	cmp [ebp-0x18], edi
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1880
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x10]
	sub eax, esi
	cmp eax, 0x3
	jle _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1850
	mov ebx, [ebp+0x8]
	mov ebx, [ebx+0x20]
	mov [ebp-0x1c], ebx
	mov edx, ebx
	and edx, 0x7
	jnz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1890
	lea eax, [esi*8]
	mov ecx, [ebp+0x8]
	mov [ecx+0x20], eax
	mov eax, [ecx+0x8]
	mov byte [eax+esi], 0x0
	add dword [ecx+0x14], 0x1
	mov ebx, [ecx+0x20]
	mov [ebp-0x1c], ebx
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1890:
	test byte [ebp+0xc], 0x1
	jz _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1390
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
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1390
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1870:
	lea eax, [edx*8]
	mov ecx, [ebp+0x8]
	mov [ecx+0x20], eax
	mov eax, [ecx+0x8]
	mov byte [eax+edx], 0x0
	add dword [ecx+0x14], 0x1
	mov ebx, [ecx+0x20]
	mov [ebp-0x1c], ebx
_Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1860:
	add dword [ebp-0x1c], 0x1
	mov edx, [ebp-0x1c]
	mov eax, [ebp+0x8]
	mov [eax+0x20], edx
	jmp _Z24MSG_WriteDeltaUsercmdKeyP5msg_tiPK9usercmd_sS3__1810
	nop
	add [eax], al


;MSG_ReadDeltaArchivedEntity(msg_t*, int, archivedEntity_s const*, archivedEntity_s*, int)
_Z27MSG_ReadDeltaArchivedEntityP5msg_tiPK16archivedEntity_sPS1_i:
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
	call _Z19MSG_ReadDeltaStructP5msg_tiPKvPvjiiPK8NetFieldi
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret


;MSG_ClearLastReferencedEntity(msg_t*)
_Z29MSG_ClearLastReferencedEntityP5msg_t:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov dword [eax+0x24], 0xffffffff
	pop ebp
	ret
	nop
	add [eax], al


;MSG_Init(msg_t*, unsigned char*, int)
_Z8MSG_InitP5msg_tPhi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov ecx, [msgInit]
	test ecx, ecx
	jnz _Z8MSG_InitP5msg_tPhi_10
	mov dword [msgInit], 0x1
	mov dword [esp], msgHuff
	call _Z9Huff_InitP9huffman_t
	call _Z16Sys_Millisecondsv
	mov ebx, eax
	mov eax, msg_hData
	mov [esp+0x4], eax
	mov dword [esp], msgHuff
	call _Z18Huff_BuildFromDataP6huff_tPKi
	call _Z16Sys_Millisecondsv
	sub eax, ebx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_huffman_took_d_m
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
_Z8MSG_InitP5msg_tPhi_10:
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

