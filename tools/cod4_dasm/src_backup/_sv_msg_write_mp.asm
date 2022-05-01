;Imports of sv_msg_write_mp:
	extern _Z13MSG_WriteBit1P5msg_t
	extern _Z13MSG_WriteBit0P5msg_t
	extern _Z13MSG_WriteLongP5msg_ti
	extern _Z13MSG_WriteBitsP5msg_tii
	extern _Z13MSG_WriteByteP5msg_ti
	extern _Z16MSG_WriteAngle16P5msg_tf
	extern floorf
	extern _Z19MSG_GetUsedBitCountPK5msg_t
	extern _Z20GetMinBitCountForNumj
	extern cl_shownet
	extern _Z10Com_PrintfiPKcz
	extern memset
	extern svsHeader
	extern _Z14MSG_WriteShortP5msg_ti
	extern _Z16Com_PrintWarningiPKcz
	extern _Z11I_CleanCharc

;Exports of sv_msg_write_mp:
	global s_netFieldList
	global fxStateFields
	global helicopterEntityStateFields
	global planeStateFields
	global _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih
	global _Z22MSG_WriteDeltaHudElemsP14SnapshotInfo_sP5msg_tiPK9hudelem_sS5_i
	global _Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi
	global _Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i
	global _Z18MSG_ValuesAreEqualPK14SnapshotInfo_siPKiS3_
	global _Z20MSG_WriteDeltaClientP14SnapshotInfo_sP5msg_tiPK13clientState_sS5_i
	global _Z20MSG_WriteEntityIndexP14SnapshotInfo_sP5msg_tii
	global _Z20MSG_WriteOriginFloatiP5msg_tiff
	global _Z21MSG_WriteOriginZFloatiP5msg_tff
	global _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5_
	global _Z28MSG_WriteDeltaArchivedEntityP14SnapshotInfo_sP5msg_tiPK16archivedEntity_sS5_i
	global _Z32MSG_WriteReliableCommandToBufferPKcPci
	global _Z34MSG_GetStateFieldListForEntityTypei
	global archivedEntityFields
	global clientStateFields
	global corpseEntityStateFields
	global entityStateFields
	global eventEntityStateFields
	global hudElemFields
	global itemEntityStateFields
	global kbitmask
	global loopFxEntityStateFields
	global missileEntityStateFields
	global msg_hData
	global numArchivedEntityFields
	global numClientStateFields
	global numHudElemFields
	global numObjectiveFields
	global numPlayerStateFields
	global objectiveFields
	global playerEntityStateFields
	global playerStateFields
	global scriptMoverStateFields
	global soundBlendEntityStateFields
	global vehicleEntityStateFields


SECTION .text


;MSG_WriteDeltaField(SnapshotInfo_s*, msg_t*, int, unsigned char const*, unsigned char const*, NetField const*, int, unsigned char)
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov [ebp-0x44], eax
	mov [ebp-0x48], edx
	mov [ebp-0x4c], ecx
	movzx edx, byte [ebp+0x18]
	mov ecx, [ebp+0x10]
	mov eax, [ecx+0x4]
	mov esi, [ebp+0x8]
	add esi, eax
	mov [ebp-0x84], esi
	add eax, [ebp+0xc]
	mov [ebp-0x80], eax
	test dl, dl
	jz _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_10
	mov dword [ebp-0x1c], 0x0
	lea edi, [ebp-0x1c]
	mov [ebp-0x84], edi
	mov eax, [ebp+0x10]
	cmp byte [eax+0xc], 0x2
	jz _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_20
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_240:
	test dl, dl
	jnz _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_30
	mov edx, [eax+0x8]
	mov ecx, [ebp-0x84]
	mov ecx, [ecx]
	mov [ebp-0x7c], ecx
	mov esi, [ebp-0x80]
	mov ebx, [esi]
	cmp ecx, ebx
	jz _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_40
	add edx, 0x64
	cmp edx, 0xd
	jbe _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_50
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_30:
	mov eax, [ebp-0x48]
	mov [esp], eax
	call _Z13MSG_WriteBit1P5msg_t
	mov ecx, [ebp+0x10]
	mov edx, [ecx+0x8]
	test edx, edx
	jz _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_60
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_250:
	cmp edx, 0xffffffa7
	jz _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_70
	cmp edx, 0xffffffa8
	jz _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_80
	cmp edx, 0xffffff9d
	jz _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_90
	cmp edx, 0xffffff9c
	jz _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_100
	cmp edx, 0xffffffa9
	jz _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_110
	cmp edx, 0xffffffaa
	jz _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_120
	cmp edx, 0xffffffab
	jz _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_130
	cmp edx, 0xffffff9f
	jz _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_140
	cmp edx, 0xffffff9e
	jz _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_150
	cmp edx, 0xffffffa0
	jz _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_160
	cmp edx, 0xffffffa2
	jz _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_170
	cmp edx, 0xffffffa3
	jz _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_180
	lea eax, [edx+0x5c]
	cmp eax, 0x1
	jbe _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_190
	cmp edx, 0xffffffa6
	jz _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_200
	cmp edx, 0xffffffa1
	jz _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_210
	mov ecx, [ebp-0x80]
	mov edx, [ecx]
	test edx, edx
	jnz _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_220
	mov esi, [ebp-0x48]
	mov [esp], esi
	call _Z13MSG_WriteBit0P5msg_t
	jmp _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_230
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_10:
	mov eax, ecx
	cmp byte [eax+0xc], 0x2
	jnz _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_240
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_20:
	mov ecx, eax
	mov edx, [ecx+0x8]
	test edx, edx
	jnz _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_250
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_60:
	mov esi, [ebp-0x80]
	movss xmm0, dword [esi]
	movss [ebp-0x2c], xmm0
	cvttss2si ebx, xmm0
	mov eax, [ebp-0x84]
	cvttss2si eax, [eax]
	mov [ebp-0x30], eax
	ucomiss xmm0, [_float_0_00000000]
	jnz _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_260
	jp _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_260
	mov edx, [ebp-0x48]
	mov [esp], edx
	call _Z13MSG_WriteBit0P5msg_t
	movss xmm0, dword [ebp-0x2c]
	movss [ebp-0x20], xmm0
	cmp dword [ebp-0x20], 0x80000000
	jz _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_270
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_40:
	mov edx, [ebp-0x48]
	mov [esp], edx
	call _Z13MSG_WriteBit0P5msg_t
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_230:
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_260:
	mov ecx, [ebp-0x48]
	mov [esp], ecx
	call _Z13MSG_WriteBit1P5msg_t
	movss xmm0, dword [ebp-0x2c]
	movss [ebp-0x20], xmm0
	cmp dword [ebp-0x20], 0x80000000
	jz _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_280
	movaps xmm1, xmm0
	cvtsi2ss xmm0, ebx
	ucomiss xmm1, xmm0
	jnz _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_280
	jp _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_280
	add ebx, 0x1000
	js _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_280
	cmp ebx, 0x1fff
	jg _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_280
	mov eax, [ebp-0x30]
	add eax, 0x1000
	mov [ebp-0x34], eax
	js _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_280
	cmp eax, 0x1fff
	jg _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_280
	mov edx, [ebp-0x48]
	mov [esp], edx
	call _Z13MSG_WriteBit0P5msg_t
	xor ebx, [ebp-0x34]
	jmp _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_290
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_50:
	jmp dword [edx*4+_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_jumptab_0]
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_90:
	mov esi, [ebp-0x80]
	movss xmm1, dword [esi]
	cvttss2si ebx, xmm1
	mov edi, [ebp-0x84]
	cvttss2si edi, [edi]
	mov [ebp-0x38], edi
	ucomiss xmm1, [_float_0_00000000]
	jnz _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_300
	jp _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_300
	movss [ebp-0x20], xmm1
	cmp dword [ebp-0x20], 0x80000000
	jnz _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_40
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_300:
	mov eax, [ebp-0x48]
	mov [esp], eax
	movss [ebp-0x78], xmm1
	call _Z13MSG_WriteBit1P5msg_t
	movss xmm1, dword [ebp-0x78]
	movss [ebp-0x20], xmm1
	cmp dword [ebp-0x20], 0x80000000
	jz _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_310
	cvtsi2ss xmm0, ebx
	ucomiss xmm1, xmm0
	jnz _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_310
	jp _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_310
	add ebx, 0x800
	mov [ebp-0x3c], ebx
	js _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_310
	cmp ebx, 0xfff
	jle _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_320
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_310:
	mov eax, [ebp-0x48]
	mov [esp], eax
	call _Z13MSG_WriteBit1P5msg_t
	mov edx, [ebp-0x80]
	mov eax, [edx]
	mov ecx, [ebp-0x84]
	xor eax, [ecx]
	mov [esp+0x4], eax
	mov esi, [ebp-0x48]
	mov [esp], esi
	call _Z13MSG_WriteLongP5msg_ti
	jmp _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_230
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_390:
	mov edi, [ebp-0x80]
	cmp byte [edi+0x3], 0x0
	jnz _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_330
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_400:
	mov ecx, 0x3
	cld
	mov esi, [ebp-0x84]
	repe cmpsb
	mov eax, 0x0
	jz _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_340
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_340:
	test eax, eax
	jnz _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_330
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_270:
	mov eax, [ebp-0x48]
	mov [esp], eax
	call _Z13MSG_WriteBit1P5msg_t
	jmp _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_230
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_280:
	mov edx, [ebp-0x48]
	mov [esp], edx
	call _Z13MSG_WriteBit1P5msg_t
	mov ecx, [ebp-0x80]
	mov eax, [ecx]
	mov esi, [ebp-0x84]
	xor eax, [esi]
	mov [esp+0x4], eax
	mov edi, [ebp-0x48]
	mov [esp], edi
	call _Z13MSG_WriteLongP5msg_ti
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_70:
	mov edi, [ebp-0x80]
	movss xmm1, dword [edi]
	cvttss2si eax, xmm1
	mov edx, [ebp-0x84]
	cvttss2si ebx, [edx]
	cvtsi2ss xmm0, eax
	ucomiss xmm1, xmm0
	jnz _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_350
	jp _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_350
	movss [ebp-0x20], xmm1
	cmp dword [ebp-0x20], 0x80000000
	jz _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_350
	add eax, 0x1000
	mov [ebp-0x40], eax
	js _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_350
	cmp eax, 0x1fff
	jg _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_350
	mov edx, [ebp-0x48]
	mov [esp], edx
	call _Z13MSG_WriteBit0P5msg_t
	add ebx, 0x1000
	xor ebx, [ebp-0x40]
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_290:
	mov dword [esp+0x8], 0x5
	mov [esp+0x4], ebx
	mov ecx, [ebp-0x48]
	mov [esp], ecx
	call _Z13MSG_WriteBitsP5msg_tii
	sar ebx, 0x5
	mov [esp+0x4], ebx
	mov esi, [ebp-0x48]
	mov [esp], esi
	call _Z13MSG_WriteByteP5msg_ti
	jmp _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_230
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_350:
	mov ecx, [ebp-0x48]
	mov [esp], ecx
	call _Z13MSG_WriteBit1P5msg_t
	mov esi, [ebp-0x80]
	mov eax, [esi]
	mov edi, [ebp-0x84]
	xor eax, [edi]
	mov [esp+0x4], eax
	mov eax, [ebp-0x48]
	mov [esp], eax
	call _Z13MSG_WriteLongP5msg_ti
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_100:
	mov edi, [ebp-0x80]
	mov ecx, [edi]
	test ecx, ecx
	jz _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_360
	mov edx, [ebp-0x48]
	mov [esp], edx
	call _Z13MSG_WriteBit1P5msg_t
	mov ecx, [ebp-0x80]
	mov eax, [ecx]
	mov [esp+0x4], eax
	mov esi, [ebp-0x48]
	mov [esp], esi
	call _Z16MSG_WriteAngle16P5msg_tf
	jmp _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_230
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_530:
	mov eax, 0x51eb851f
	imul dword [ebp-0x7c]
	mov ecx, edx
	sar ecx, 0x5
	mov eax, [ebp-0x7c]
	sar eax, 0x1f
	sub ecx, eax
	mov eax, 0x51eb851f
	imul ebx
	sar edx, 0x5
	mov eax, ebx
	sar eax, 0x1f
	sub edx, eax
	cmp ecx, edx
	setz al
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_370:
	test al, al
	jz _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_30
	jmp _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_40
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_540:
	movss xmm1, dword [_float_0_50000000]
	mov edx, [ebp-0x84]
	movss xmm0, dword [edx]
	addss xmm0, xmm1
	movss [esp], xmm0
	movss [ebp-0x78], xmm1
	call floorf
	fstp dword [ebp-0x50]
	cvttss2si ebx, [ebp-0x50]
	movss xmm1, dword [ebp-0x78]
	mov ecx, [ebp-0x80]
	addss xmm1, [ecx]
	movss [esp], xmm1
	call floorf
	fstp dword [ebp-0x54]
	cvttss2si eax, [ebp-0x54]
	cmp ebx, eax
	setz al
	jmp _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_370
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_520:
	movss xmm0, dword [_float_182_04444885]
	mov edi, [ebp-0x84]
	movss xmm1, dword [edi]
	mulss xmm1, xmm0
	movss xmm2, dword [_float_0_50000000]
	addss xmm1, xmm2
	cvttss2si edx, xmm1
	mov eax, [ebp-0x80]
	mulss xmm0, [eax]
	addss xmm0, xmm2
	cvttss2si eax, xmm0
	cmp ax, dx
	setz al
	jmp _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_370
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_360:
	mov eax, [ebp-0x48]
	mov [esp], eax
	call _Z13MSG_WriteBit0P5msg_t
	jmp _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_230
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_140:
	mov edi, [ebp-0x80]
	mov esi, [edi]
	mov ebx, esi
	sub ebx, [ebp-0x4c]
	lea eax, [ebx+0xff]
	cmp eax, 0xff
	ja _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_380
	mov eax, [ebp-0x48]
	mov [esp], eax
	call _Z13MSG_WriteBit0P5msg_t
	mov dword [esp+0x8], 0x8
	neg ebx
	mov [esp+0x4], ebx
	mov edx, [ebp-0x48]
	mov [esp], edx
	call _Z13MSG_WriteBitsP5msg_tii
	jmp _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_230
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_80:
	mov edi, [ebp-0x80]
	mov eax, [edi]
	mov edx, [ebp-0x84]
	xor eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x48]
	mov [esp], ecx
	call _Z13MSG_WriteLongP5msg_ti
	jmp _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_230
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_130:
	mov esi, [ebp-0x84]
	movzx eax, byte [esi+0x3]
	cmp al, 0xff
	jz _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_390
	test al, al
	jnz _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_330
	mov edi, [ebp-0x80]
	cmp byte [edi+0x3], 0xff
	jz _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_400
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_330:
	mov eax, [ebp-0x48]
	mov [esp], eax
	call _Z13MSG_WriteBit0P5msg_t
	mov ecx, [ebp-0x84]
	mov edx, [ecx]
	and edx, 0xffffff
	mov esi, [ebp-0x80]
	mov eax, [esi]
	and eax, 0xffffff
	cmp edx, eax
	jz _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_410
	mov ecx, [ebp-0x48]
	mov [esp], ecx
	call _Z13MSG_WriteBit0P5msg_t
	mov esi, [ebp-0x80]
	movzx eax, byte [esi]
	mov [esp+0x4], eax
	mov edi, [ebp-0x48]
	mov [esp], edi
	call _Z13MSG_WriteByteP5msg_ti
	movzx eax, byte [esi+0x1]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z13MSG_WriteByteP5msg_ti
	movzx eax, byte [esi+0x2]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z13MSG_WriteByteP5msg_ti
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_450:
	mov dword [esp+0x8], 0x5
	mov edx, [ebp-0x80]
	movzx eax, byte [edx+0x3]
	shr al, 0x3
	movzx eax, al
	mov [esp+0x4], eax
	mov ecx, [ebp-0x48]
	mov [esp], ecx
	call _Z13MSG_WriteBitsP5msg_tii
	jmp _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_230
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_110:
	mov edi, [ebp-0x80]
	mov eax, [edi]
	mov [esp+0x4], eax
	mov eax, [ebp-0x48]
	mov [esp], eax
	call _Z16MSG_WriteAngle16P5msg_tf
	jmp _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_230
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_120:
	mov dword [esp+0x8], 0x5
	mov edx, [ebp-0x80]
	movss xmm0, dword [edx]
	subss xmm0, [_float_1_39999998]
	mulss xmm0, [_float_10_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x58]
	cvttss2si eax, [ebp-0x58]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x48]
	mov [esp], ecx
	call _Z13MSG_WriteBitsP5msg_tii
	jmp _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_230
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_150:
	mov edi, [ebp-0x80]
	mov ebx, [edi]
	mov edx, ebx
	mov eax, [ebp-0x84]
	xor edx, [eax]
	lea eax, [edx-0x1]
	test eax, edx
	jnz _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_420
	test dl, 0x1
	jz _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_430
	xor ebx, ebx
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_490:
	mov esi, [ebp-0x48]
	mov [esp], esi
	call _Z13MSG_WriteBit0P5msg_t
	mov dword [esp+0x8], 0x5
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z13MSG_WriteBitsP5msg_tii
	jmp _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_230
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_380:
	mov ecx, [ebp-0x48]
	mov [esp], ecx
	call _Z13MSG_WriteBit1P5msg_t
	mov [esp+0x4], esi
	mov esi, [ebp-0x48]
	mov [esp], esi
	call _Z13MSG_WriteLongP5msg_ti
	jmp _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_230
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_160:
	mov edi, [ebp-0x80]
	mov ebx, [edi]
	cmp ebx, 0x3fe
	jz _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_270
	mov edx, [ebp-0x48]
	mov [esp], edx
	call _Z13MSG_WriteBit0P5msg_t
	test ebx, ebx
	jnz _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_440
	mov ecx, [ebp-0x48]
	mov [esp], ecx
	call _Z13MSG_WriteBit1P5msg_t
	jmp _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_230
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_410:
	mov edx, [ebp-0x48]
	mov [esp], edx
	call _Z13MSG_WriteBit1P5msg_t
	jmp _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_450
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_220:
	mov edi, [ebp-0x48]
	mov [esp], edi
	call _Z13MSG_WriteBit1P5msg_t
	mov eax, [ebp+0x10]
	mov ebx, [eax+0x8]
	mov eax, ebx
	neg eax
	cmp ebx, 0xffffffff
	cmovle ebx, eax
	mov edx, [ebp-0x84]
	mov esi, [edx]
	mov ecx, [ebp-0x80]
	xor esi, [ecx]
	mov edi, ebx
	and edi, 0x7
	jnz _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_460
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_510:
	test ebx, ebx
	jz _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_230
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_470:
	mov [esp+0x4], esi
	mov edi, [ebp-0x48]
	mov [esp], edi
	call _Z13MSG_WriteByteP5msg_ti
	sar esi, 0x8
	sub ebx, 0x8
	jnz _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_470
	jmp _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_230
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_430:
	xor ebx, ebx
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_480:
	add ebx, 0x1
	sar edx, 1
	test dl, 0x1
	jz _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_480
	jmp _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_490
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_320:
	mov ecx, [ebp-0x48]
	mov [esp], ecx
	call _Z13MSG_WriteBit0P5msg_t
	mov ebx, [ebp-0x38]
	add ebx, 0x800
	xor ebx, [ebp-0x3c]
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], ebx
	mov esi, [ebp-0x48]
	mov [esp], esi
	call _Z13MSG_WriteBitsP5msg_tii
	sar ebx, 0x4
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z13MSG_WriteByteP5msg_ti
	jmp _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_230
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_420:
	mov edx, [ebp-0x48]
	mov [esp], edx
	call _Z13MSG_WriteBit1P5msg_t
	mov esi, 0x3
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_500:
	mov [esp+0x4], ebx
	mov ecx, [ebp-0x48]
	mov [esp], ecx
	call _Z13MSG_WriteByteP5msg_ti
	sar ebx, 0x8
	sub esi, 0x1
	jnz _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_500
	jmp _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_230
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_170:
	mov edi, [ebp-0x80]
	mov eax, [edi]
	mov [esp+0x4], eax
	mov eax, [ebp-0x48]
	mov [esp], eax
	call _Z13MSG_WriteByteP5msg_ti
	jmp _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_230
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_440:
	mov esi, [ebp-0x48]
	mov [esp], esi
	call _Z13MSG_WriteBit0P5msg_t
	mov dword [esp+0x8], 0x2
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z13MSG_WriteBitsP5msg_tii
	sar ebx, 0x2
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z13MSG_WriteByteP5msg_ti
	jmp _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_230
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_180:
	mov edx, [ebp-0x80]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x48]
	mov [esp], ecx
	call _Z13MSG_WriteByteP5msg_ti
	jmp _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_230
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_200:
	mov ecx, [ebp-0x84]
	mov eax, [ecx]
	mov [esp+0xc], eax
	mov esi, [ebp-0x80]
	mov eax, [esi]
	mov [esp+0x8], eax
	mov edi, [ebp-0x48]
	mov [esp+0x4], edi
	mov edx, [ebp-0x44]
	mov eax, [edx]
	mov [esp], eax
	call _Z21MSG_WriteOriginZFloatiP5msg_tff
	jmp _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_230
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_210:
	mov dword [esp+0x8], 0x7
	mov esi, [ebp-0x80]
	mov ecx, [esi]
	mov edx, 0x51eb851f
	mov eax, ecx
	imul edx
	sar edx, 0x5
	mov eax, ecx
	sar eax, 0x1f
	sub edx, eax
	mov [esp+0x4], edx
	mov edx, [ebp-0x48]
	mov [esp], edx
	call _Z13MSG_WriteBitsP5msg_tii
	jmp _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_230
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_190:
	mov esi, [ebp-0x84]
	mov eax, [esi]
	mov [esp+0x10], eax
	mov edi, [ebp-0x80]
	mov eax, [edi]
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov eax, [ebp-0x48]
	mov [esp+0x4], eax
	mov edx, [ebp-0x44]
	mov eax, [edx]
	mov [esp], eax
	call _Z20MSG_WriteOriginFloatiP5msg_tiff
	jmp _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_230
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_460:
	mov [esp+0x8], edi
	mov [esp+0x4], esi
	mov eax, [ebp-0x48]
	mov [esp], eax
	call _Z13MSG_WriteBitsP5msg_tii
	sub ebx, edi
	mov ecx, edi
	sar esi, cl
	jmp _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_510
	nop
	
	
_Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_jumptab_0:
	dd _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_520
	dd _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_30
	dd _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_30
	dd _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_30
	dd _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_30
	dd _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_530
	dd _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_30
	dd _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_30
	dd _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_540
	dd _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_540
	dd _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_540
	dd _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_30
	dd _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_30
	dd _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih_520


;MSG_WriteDeltaHudElems(SnapshotInfo_s*, msg_t*, int, hudelem_s const*, hudelem_s const*, int)
_Z22MSG_WriteDeltaHudElemsP14SnapshotInfo_sP5msg_tiPK9hudelem_sS5_i:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov [ebp-0x34], eax
	mov [ebp-0x38], edx
	mov [ebp-0x3c], ecx
	mov ecx, [ebp+0x10]
	test ecx, ecx
	jnz _Z22MSG_WriteDeltaHudElemsP14SnapshotInfo_sP5msg_tiPK9hudelem_sS5_i_10
_Z22MSG_WriteDeltaHudElemsP14SnapshotInfo_sP5msg_tiPK9hudelem_sS5_i_30:
	mov dword [ebp-0x2c], 0x0
	xor eax, eax
	mov dword [esp+0x8], 0x5
	mov [esp+0x4], eax
	mov eax, [ebp-0x38]
	mov [esp], eax
	call _Z13MSG_WriteBitsP5msg_tii
	mov esi, [ebp-0x2c]
	test esi, esi
	jnz _Z22MSG_WriteDeltaHudElemsP14SnapshotInfo_sP5msg_tiPK9hudelem_sS5_i_20
_Z22MSG_WriteDeltaHudElemsP14SnapshotInfo_sP5msg_tiPK9hudelem_sS5_i_60:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22MSG_WriteDeltaHudElemsP14SnapshotInfo_sP5msg_tiPK9hudelem_sS5_i_10:
	mov edx, [ebp+0xc]
	mov ebx, [edx]
	test ebx, ebx
	jz _Z22MSG_WriteDeltaHudElemsP14SnapshotInfo_sP5msg_tiPK9hudelem_sS5_i_30
	add edx, 0xa0
	mov dword [ebp-0x2c], 0x0
_Z22MSG_WriteDeltaHudElemsP14SnapshotInfo_sP5msg_tiPK9hudelem_sS5_i_50:
	add dword [ebp-0x2c], 0x1
	cmp [ebp-0x2c], ecx
	jae _Z22MSG_WriteDeltaHudElemsP14SnapshotInfo_sP5msg_tiPK9hudelem_sS5_i_40
	mov eax, [edx]
	add edx, 0xa0
	test eax, eax
	jnz _Z22MSG_WriteDeltaHudElemsP14SnapshotInfo_sP5msg_tiPK9hudelem_sS5_i_50
_Z22MSG_WriteDeltaHudElemsP14SnapshotInfo_sP5msg_tiPK9hudelem_sS5_i_40:
	mov eax, [ebp-0x2c]
	mov dword [esp+0x8], 0x5
	mov [esp+0x4], eax
	mov eax, [ebp-0x38]
	mov [esp], eax
	call _Z13MSG_WriteBitsP5msg_tii
	mov esi, [ebp-0x2c]
	test esi, esi
	jz _Z22MSG_WriteDeltaHudElemsP14SnapshotInfo_sP5msg_tiPK9hudelem_sS5_i_60
_Z22MSG_WriteDeltaHudElemsP14SnapshotInfo_sP5msg_tiPK9hudelem_sS5_i_20:
	mov edx, [ebp+0xc]
	mov [ebp-0x24], edx
	mov eax, [ebp+0x8]
	mov [ebp-0x20], eax
	mov dword [ebp-0x30], 0x0
_Z22MSG_WriteDeltaHudElemsP14SnapshotInfo_sP5msg_tiPK9hudelem_sS5_i_110:
	mov dword [ebp-0x28], 0x0
	mov dword [ebp-0x1c], 0x0
	mov edi, hudElemFields
_Z22MSG_WriteDeltaHudElemsP14SnapshotInfo_sP5msg_tiPK9hudelem_sS5_i_90:
	mov eax, [edi+0x4]
	mov edx, [edi+0x8]
	mov ecx, [ebp-0x20]
	add ecx, eax
	mov esi, [ebp-0x24]
	add esi, eax
	mov eax, [ecx]
	mov [ebp-0x5c], eax
	mov ebx, [esi]
	cmp eax, ebx
	jz _Z22MSG_WriteDeltaHudElemsP14SnapshotInfo_sP5msg_tiPK9hudelem_sS5_i_70
	add edx, 0x64
	cmp edx, 0xd
	ja _Z22MSG_WriteDeltaHudElemsP14SnapshotInfo_sP5msg_tiPK9hudelem_sS5_i_80
	jmp dword [edx*4+_Z22MSG_WriteDeltaHudElemsP14SnapshotInfo_sP5msg_tiPK9hudelem_sS5_i_jumptab_0]
_Z22MSG_WriteDeltaHudElemsP14SnapshotInfo_sP5msg_tiPK9hudelem_sS5_i_140:
	mov esi, 0x51eb851f
	mov eax, [ebp-0x5c]
	imul esi
	mov ecx, edx
	sar ecx, 0x5
	mov eax, [ebp-0x5c]
	sar eax, 0x1f
	sub ecx, eax
	mov eax, ebx
	imul esi
	sar edx, 0x5
	mov eax, ebx
	sar eax, 0x1f
	sub edx, eax
	cmp ecx, edx
	setz al
_Z22MSG_WriteDeltaHudElemsP14SnapshotInfo_sP5msg_tiPK9hudelem_sS5_i_120:
	test al, al
	jnz _Z22MSG_WriteDeltaHudElemsP14SnapshotInfo_sP5msg_tiPK9hudelem_sS5_i_70
_Z22MSG_WriteDeltaHudElemsP14SnapshotInfo_sP5msg_tiPK9hudelem_sS5_i_80:
	mov edx, [ebp-0x1c]
	mov [ebp-0x28], edx
_Z22MSG_WriteDeltaHudElemsP14SnapshotInfo_sP5msg_tiPK9hudelem_sS5_i_70:
	add dword [ebp-0x1c], 0x1
	add edi, 0x10
	cmp dword [ebp-0x1c], 0x28
	jnz _Z22MSG_WriteDeltaHudElemsP14SnapshotInfo_sP5msg_tiPK9hudelem_sS5_i_90
	mov dword [esp+0x8], 0x6
	mov eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov edx, [ebp-0x38]
	mov [esp], edx
	call _Z13MSG_WriteBitsP5msg_tii
	xor ebx, ebx
	mov esi, hudElemFields
_Z22MSG_WriteDeltaHudElemsP14SnapshotInfo_sP5msg_tiPK9hudelem_sS5_i_100:
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov edx, [ebp-0x20]
	mov [esp], edx
	mov ecx, [ebp-0x3c]
	mov edx, [ebp-0x38]
	mov eax, [ebp-0x34]
	call _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih
	add ebx, 0x1
	add esi, 0x10
	cmp ebx, [ebp-0x28]
	jbe _Z22MSG_WriteDeltaHudElemsP14SnapshotInfo_sP5msg_tiPK9hudelem_sS5_i_100
	add dword [ebp-0x30], 0x1
	add dword [ebp-0x24], 0xa0
	add dword [ebp-0x20], 0xa0
	mov eax, [ebp-0x2c]
	cmp [ebp-0x30], eax
	jnz _Z22MSG_WriteDeltaHudElemsP14SnapshotInfo_sP5msg_tiPK9hudelem_sS5_i_110
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22MSG_WriteDeltaHudElemsP14SnapshotInfo_sP5msg_tiPK9hudelem_sS5_i_150:
	movss xmm1, dword [_float_0_50000000]
	movss xmm0, dword [ecx]
	addss xmm0, xmm1
	movss [esp], xmm0
	movss [ebp-0x58], xmm1
	call floorf
	fstp dword [ebp-0x40]
	cvttss2si ebx, [ebp-0x40]
	movss xmm1, dword [ebp-0x58]
	addss xmm1, [esi]
	movss [esp], xmm1
	call floorf
	fstp dword [ebp-0x44]
	cvttss2si eax, [ebp-0x44]
	cmp ebx, eax
	setz al
	jmp _Z22MSG_WriteDeltaHudElemsP14SnapshotInfo_sP5msg_tiPK9hudelem_sS5_i_120
_Z22MSG_WriteDeltaHudElemsP14SnapshotInfo_sP5msg_tiPK9hudelem_sS5_i_130:
	movss xmm0, dword [_float_182_04444885]
	movss xmm1, dword [ecx]
	mulss xmm1, xmm0
	movss xmm2, dword [_float_0_50000000]
	addss xmm1, xmm2
	cvttss2si edx, xmm1
	mulss xmm0, [esi]
	addss xmm0, xmm2
	cvttss2si eax, xmm0
	cmp ax, dx
	setz al
	jmp _Z22MSG_WriteDeltaHudElemsP14SnapshotInfo_sP5msg_tiPK9hudelem_sS5_i_120
	nop
	
	
_Z22MSG_WriteDeltaHudElemsP14SnapshotInfo_sP5msg_tiPK9hudelem_sS5_i_jumptab_0:
	dd _Z22MSG_WriteDeltaHudElemsP14SnapshotInfo_sP5msg_tiPK9hudelem_sS5_i_130
	dd _Z22MSG_WriteDeltaHudElemsP14SnapshotInfo_sP5msg_tiPK9hudelem_sS5_i_80
	dd _Z22MSG_WriteDeltaHudElemsP14SnapshotInfo_sP5msg_tiPK9hudelem_sS5_i_80
	dd _Z22MSG_WriteDeltaHudElemsP14SnapshotInfo_sP5msg_tiPK9hudelem_sS5_i_80
	dd _Z22MSG_WriteDeltaHudElemsP14SnapshotInfo_sP5msg_tiPK9hudelem_sS5_i_80
	dd _Z22MSG_WriteDeltaHudElemsP14SnapshotInfo_sP5msg_tiPK9hudelem_sS5_i_140
	dd _Z22MSG_WriteDeltaHudElemsP14SnapshotInfo_sP5msg_tiPK9hudelem_sS5_i_80
	dd _Z22MSG_WriteDeltaHudElemsP14SnapshotInfo_sP5msg_tiPK9hudelem_sS5_i_80
	dd _Z22MSG_WriteDeltaHudElemsP14SnapshotInfo_sP5msg_tiPK9hudelem_sS5_i_150
	dd _Z22MSG_WriteDeltaHudElemsP14SnapshotInfo_sP5msg_tiPK9hudelem_sS5_i_150
	dd _Z22MSG_WriteDeltaHudElemsP14SnapshotInfo_sP5msg_tiPK9hudelem_sS5_i_150
	dd _Z22MSG_WriteDeltaHudElemsP14SnapshotInfo_sP5msg_tiPK9hudelem_sS5_i_80
	dd _Z22MSG_WriteDeltaHudElemsP14SnapshotInfo_sP5msg_tiPK9hudelem_sS5_i_80
	dd _Z22MSG_WriteDeltaHudElemsP14SnapshotInfo_sP5msg_tiPK9hudelem_sS5_i_130


;MSG_WriteDeltaStruct(SnapshotInfo_s*, msg_t*, int, unsigned char*, unsigned char*, int, int, int, NetField const*, int)
_Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov [ebp-0x28], eax
	mov [ebp-0x2c], edx
	mov [ebp-0x30], ecx
	mov [esp], edx
	call _Z19MSG_GetUsedBitCountPK5msg_t
	mov [ebp-0x20], eax
	mov eax, [ebp+0x14]
	test eax, eax
	jle _Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi_10
	mov edi, [ebp+0x1c]
	mov dword [ebp-0x1c], 0x0
	mov dword [ebp-0x24], 0x0
_Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi_40:
	mov eax, [edi+0x4]
	mov edx, [edi+0x8]
	mov ecx, [ebp+0x8]
	add ecx, eax
	mov esi, [ebp+0xc]
	add esi, eax
	mov eax, [ecx]
	mov [ebp-0x4c], eax
	mov ebx, [esi]
	cmp eax, ebx
	jz _Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi_20
	add edx, 0x64
	cmp edx, 0xd
	ja _Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi_30
	jmp dword [edx*4+_Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi_jumptab_0]
_Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi_170:
	mov esi, 0x51eb851f
	mov eax, [ebp-0x4c]
	imul esi
	mov ecx, edx
	sar ecx, 0x5
	mov eax, [ebp-0x4c]
	sar eax, 0x1f
	sub ecx, eax
	mov eax, ebx
	imul esi
	sar edx, 0x5
	mov eax, ebx
	sar eax, 0x1f
	sub edx, eax
	cmp ecx, edx
	setz al
_Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi_110:
	test al, al
	jnz _Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi_20
_Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi_30:
	mov edx, [ebp-0x1c]
	add edx, 0x1
	mov [ebp-0x24], edx
	mov [ebp-0x1c], edx
	mov eax, edx
_Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi_70:
	add edi, 0x10
	cmp [ebp+0x14], eax
	jg _Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi_40
	mov eax, [ebp-0x24]
	test eax, eax
	jz _Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi_10
	mov eax, [ebp+0x20]
	test eax, eax
	jnz _Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi_50
_Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi_120:
	mov eax, [ebp+0x18]
	mov [esp+0xc], eax
	mov edx, [ebp+0xc]
	mov eax, [edx]
	mov [esp+0x8], eax
	mov eax, [ebp-0x2c]
	mov [esp+0x4], eax
	mov edx, [ebp-0x28]
	mov [esp], edx
	call _Z20MSG_WriteEntityIndexP14SnapshotInfo_sP5msg_tii
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call _Z13MSG_WriteBit0P5msg_t
	mov edx, [ebp-0x2c]
	mov [esp], edx
	call _Z13MSG_WriteBit1P5msg_t
	mov eax, [ebp+0x14]
	mov [esp], eax
	call _Z20GetMinBitCountForNumj
	mov [esp+0x8], eax
	mov edx, [ebp-0x24]
	mov [esp+0x4], edx
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call _Z13MSG_WriteBitsP5msg_tii
	mov edi, [ebp-0x24]
	test edi, edi
	jg _Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi_60
_Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi_140:
	mov edx, [ebp-0x2c]
	mov [esp], edx
_Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi_100:
	call _Z19MSG_GetUsedBitCountPK5msg_t
	sub eax, [ebp-0x20]
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi_20:
	add dword [ebp-0x1c], 0x1
	mov eax, [ebp-0x1c]
	jmp _Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi_70
_Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi_10:
	mov eax, [ebp+0x10]
	test eax, eax
	jz _Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi_80
	mov eax, [ebp+0x20]
	test eax, eax
	jnz _Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi_90
_Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi_150:
	mov eax, [ebp+0x18]
	mov [esp+0xc], eax
	mov edx, [ebp+0xc]
	mov eax, [edx]
	mov [esp+0x8], eax
	mov eax, [ebp-0x2c]
	mov [esp+0x4], eax
	mov edx, [ebp-0x28]
	mov [esp], edx
	call _Z20MSG_WriteEntityIndexP14SnapshotInfo_sP5msg_tii
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call _Z13MSG_WriteBit0P5msg_t
	mov edx, [ebp-0x2c]
	mov [esp], edx
	call _Z13MSG_WriteBit0P5msg_t
	mov eax, [ebp-0x2c]
	mov [esp], eax
	jmp _Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi_100
_Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi_180:
	movss xmm1, dword [_float_0_50000000]
	movss xmm0, dword [ecx]
	addss xmm0, xmm1
	movss [esp], xmm0
	movss [ebp-0x48], xmm1
	call floorf
	fstp dword [ebp-0x34]
	cvttss2si ebx, [ebp-0x34]
	movss xmm1, dword [ebp-0x48]
	addss xmm1, [esi]
	movss [esp], xmm1
	call floorf
	fstp dword [ebp-0x38]
	cvttss2si eax, [ebp-0x38]
	cmp ebx, eax
	setz al
	jmp _Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi_110
_Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi_160:
	movss xmm0, dword [_float_182_04444885]
	movss xmm1, dword [ecx]
	mulss xmm1, xmm0
	movss xmm2, dword [_float_0_50000000]
	addss xmm1, xmm2
	cvttss2si edx, xmm1
	mulss xmm0, [esi]
	addss xmm0, xmm2
	cvttss2si eax, xmm0
	cmp ax, dx
	setz al
	jmp _Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi_110
_Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi_80:
	xor eax, eax
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi_50:
	mov edx, [ebp-0x2c]
	mov [esp], edx
	call _Z13MSG_WriteBit1P5msg_t
	jmp _Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi_120
_Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi_60:
	mov ebx, [ebp+0x1c]
	xor esi, esi
_Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi_130:
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov eax, [ebp+0x8]
	mov [esp], eax
	mov ecx, [ebp-0x30]
	mov edx, [ebp-0x2c]
	mov eax, [ebp-0x28]
	call _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih
	add esi, 0x1
	add ebx, 0x10
	cmp esi, [ebp-0x24]
	jnz _Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi_130
	jmp _Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi_140
_Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi_90:
	mov edx, [ebp-0x2c]
	mov [esp], edx
	call _Z13MSG_WriteBit1P5msg_t
	jmp _Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi_150
	
	
_Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi_jumptab_0:
	dd _Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi_160
	dd _Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi_30
	dd _Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi_30
	dd _Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi_30
	dd _Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi_30
	dd _Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi_170
	dd _Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi_30
	dd _Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi_30
	dd _Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi_180
	dd _Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi_180
	dd _Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi_180
	dd _Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi_30
	dd _Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi_30
	dd _Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi_160


;MSG_WriteEntity(SnapshotInfo_s*, msg_t*, int, entityState_s const*, entityState_s const*, int)
_Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov eax, [ebp+0x8]
	mov [ebp-0x2c], eax
	mov edx, [ebp+0xc]
	mov [ebp-0x30], edx
	mov eax, [ebp+0x10]
	mov [ebp-0x34], eax
	mov edx, [ebp+0x14]
	mov [ebp-0x38], edx
	mov eax, [ebp+0x18]
	mov [ebp-0x3c], eax
	mov edx, [ebp+0x1c]
	mov [ebp-0x40], edx
	test eax, eax
	jz _Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i_10
	mov eax, [eax+0x4]
	cmp eax, 0x12
	mov edx, 0x11
	cmovge eax, edx
	shl eax, 0x3
	mov edx, [eax+s_netFieldList]
	mov [ebp-0x20], edx
	mov eax, [eax+s_netFieldList+0x4]
	mov [ebp-0x24], eax
	mov eax, [ebp-0x30]
	mov [esp], eax
	call _Z19MSG_GetUsedBitCountPK5msg_t
	mov ebx, [ebp-0x24]
	test ebx, ebx
	jle _Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i_20
	mov edi, [ebp-0x20]
	mov dword [ebp-0x1c], 0x0
	mov dword [ebp-0x28], 0x0
_Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i_60:
	mov eax, [edi+0x4]
	mov edx, [edi+0x8]
	mov ecx, [ebp-0x38]
	add ecx, eax
	mov esi, [ebp-0x3c]
	add esi, eax
	mov eax, [ecx]
	mov [ebp-0x5c], eax
	mov ebx, [esi]
	cmp eax, ebx
	jz _Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i_30
	add edx, 0x64
	cmp edx, 0xd
	ja _Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i_40
	jmp dword [edx*4+_Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i_jumptab_0]
_Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i_20:
	mov edx, [ebp-0x40]
	test edx, edx
	jnz _Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i_50
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i_40:
	mov edx, [ebp-0x1c]
	add edx, 0x1
	mov [ebp-0x28], edx
	mov [ebp-0x1c], edx
	mov eax, edx
_Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i_80:
	add edi, 0x10
	cmp [ebp-0x24], eax
	jg _Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i_60
	mov ecx, [ebp-0x28]
	test ecx, ecx
	jz _Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i_20
	mov dword [esp+0xc], 0xa
	mov edx, [ebp-0x3c]
	mov eax, [edx]
	mov [esp+0x8], eax
	mov eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov edx, [ebp-0x2c]
	mov [esp], edx
	call _Z20MSG_WriteEntityIndexP14SnapshotInfo_sP5msg_tii
	mov eax, [ebp-0x30]
	mov [esp], eax
	call _Z13MSG_WriteBit0P5msg_t
	mov edx, [ebp-0x30]
	mov [esp], edx
	call _Z13MSG_WriteBit1P5msg_t
	mov eax, [ebp-0x24]
	mov [esp], eax
	call _Z20GetMinBitCountForNumj
	mov [esp+0x8], eax
	mov edx, [ebp-0x28]
	mov [esp+0x4], edx
	mov eax, [ebp-0x30]
	mov [esp], eax
	call _Z13MSG_WriteBitsP5msg_tii
	mov eax, [ebp-0x28]
	test eax, eax
	jg _Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i_70
_Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i_110:
	mov eax, [ebp-0x30]
	mov [esp], eax
	call _Z19MSG_GetUsedBitCountPK5msg_t
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i_160:
	mov esi, 0x51eb851f
	mov eax, [ebp-0x5c]
	imul esi
	mov ecx, edx
	sar ecx, 0x5
	mov eax, [ebp-0x5c]
	sar eax, 0x1f
	sub ecx, eax
	mov eax, ebx
	imul esi
	sar edx, 0x5
	mov eax, ebx
	sar eax, 0x1f
	sub edx, eax
	cmp ecx, edx
	setz al
_Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i_90:
	test al, al
	jz _Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i_40
_Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i_30:
	add dword [ebp-0x1c], 0x1
	mov eax, [ebp-0x1c]
	jmp _Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i_80
_Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i_170:
	movss xmm1, dword [_float_0_50000000]
	movss xmm0, dword [ecx]
	addss xmm0, xmm1
	movss [esp], xmm0
	movss [ebp-0x58], xmm1
	call floorf
	fstp dword [ebp-0x44]
	cvttss2si ebx, [ebp-0x44]
	movss xmm1, dword [ebp-0x58]
	addss xmm1, [esi]
	movss [esp], xmm1
	call floorf
	fstp dword [ebp-0x48]
	cvttss2si eax, [ebp-0x48]
	cmp ebx, eax
	setz al
	jmp _Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i_90
_Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i_150:
	movss xmm0, dword [_float_182_04444885]
	movss xmm1, dword [ecx]
	mulss xmm1, xmm0
	movss xmm2, dword [_float_0_50000000]
	addss xmm1, xmm2
	cvttss2si edx, xmm1
	mulss xmm0, [esi]
	addss xmm0, xmm2
	cvttss2si eax, xmm0
	cmp ax, dx
	setz al
	jmp _Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i_90
_Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i_50:
	mov dword [esp+0xc], 0xa
	mov edx, [ebp-0x3c]
	mov eax, [edx]
	mov [esp+0x8], eax
	mov eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov edx, [ebp-0x2c]
	mov [esp], edx
	call _Z20MSG_WriteEntityIndexP14SnapshotInfo_sP5msg_tii
	mov eax, [ebp-0x30]
	mov [esp], eax
	call _Z13MSG_WriteBit0P5msg_t
	mov edx, [ebp-0x30]
	mov [esp], edx
	call _Z13MSG_WriteBit0P5msg_t
	mov eax, [ebp-0x30]
	mov [esp], eax
	call _Z19MSG_GetUsedBitCountPK5msg_t
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i_70:
	xor ebx, ebx
_Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i_100:
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], ebx
	mov edx, [ebp-0x20]
	mov [esp+0x8], edx
	mov eax, [ebp-0x3c]
	mov [esp+0x4], eax
	mov edx, [ebp-0x38]
	mov [esp], edx
	mov ecx, [ebp-0x34]
	mov edx, [ebp-0x30]
	mov eax, [ebp-0x2c]
	call _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih
	add ebx, 0x1
	add dword [ebp-0x20], 0x10
	cmp ebx, [ebp-0x28]
	jnz _Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i_100
	jmp _Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i_110
_Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i_10:
	mov eax, cl_shownet
	mov eax, [eax]
	test eax, eax
	jz _Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i_120
	mov eax, [eax+0xc]
	cmp eax, 0x1
	jle _Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i_130
_Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i_140:
	mov edx, [ebp-0x38]
	mov eax, [edx]
	mov [esp+0xc], eax
	mov edx, [ebp-0x30]
	mov eax, [edx+0x14]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_w3i_3i_remove
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
_Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i_120:
	mov dword [esp+0xc], 0xa
	mov edx, [ebp-0x38]
	mov eax, [edx]
	mov [esp+0x8], eax
	mov eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov edx, [ebp-0x2c]
	mov [esp], edx
	call _Z20MSG_WriteEntityIndexP14SnapshotInfo_sP5msg_tii
	mov eax, [ebp-0x30]
	mov [ebp+0x8], eax
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z13MSG_WriteBit1P5msg_t
_Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i_130:
	add eax, 0x1
	jnz _Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i_120
	jmp _Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i_140
	
	
_Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i_jumptab_0:
	dd _Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i_150
	dd _Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i_40
	dd _Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i_40
	dd _Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i_40
	dd _Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i_40
	dd _Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i_160
	dd _Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i_40
	dd _Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i_40
	dd _Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i_170
	dd _Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i_170
	dd _Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i_170
	dd _Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i_40
	dd _Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i_40
	dd _Z15MSG_WriteEntityP14SnapshotInfo_sP5msg_tiPK13entityState_sS5_i_150


;MSG_ValuesAreEqual(SnapshotInfo_s const*, int, int const*, int const*)
_Z18MSG_ValuesAreEqualPK14SnapshotInfo_siPKiS3_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ecx, [ebp+0x10]
	mov esi, [ebp+0x14]
	mov edi, [ecx]
	mov ebx, [esi]
	cmp edi, ebx
	jz _Z18MSG_ValuesAreEqualPK14SnapshotInfo_siPKiS3__10
	mov edx, [ebp+0xc]
	add edx, 0x64
	cmp edx, 0xd
	jbe _Z18MSG_ValuesAreEqualPK14SnapshotInfo_siPKiS3__20
_Z18MSG_ValuesAreEqualPK14SnapshotInfo_siPKiS3__40:
	xor eax, eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18MSG_ValuesAreEqualPK14SnapshotInfo_siPKiS3__20:
	jmp dword [edx*4+_Z18MSG_ValuesAreEqualPK14SnapshotInfo_siPKiS3__jumptab_0]
_Z18MSG_ValuesAreEqualPK14SnapshotInfo_siPKiS3__50:
	mov esi, 0x51eb851f
	mov eax, edi
	imul esi
	mov ecx, edx
	sar ecx, 0x5
	mov eax, edi
	sar eax, 0x1f
	sub ecx, eax
	mov eax, ebx
	imul esi
	sar edx, 0x5
	mov eax, ebx
	sar eax, 0x1f
	sub edx, eax
	xor eax, eax
	cmp ecx, edx
	setz al
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18MSG_ValuesAreEqualPK14SnapshotInfo_siPKiS3__60:
	movss xmm1, dword [_float_0_50000000]
	movss xmm0, dword [ecx]
	addss xmm0, xmm1
	movss [esp], xmm0
	movss [ebp-0x38], xmm1
	call floorf
	fstp dword [ebp-0x1c]
	cvttss2si ebx, [ebp-0x1c]
	movss xmm1, dword [ebp-0x38]
	addss xmm1, [esi]
	movss [esp], xmm1
	call floorf
	fstp dword [ebp-0x20]
	cvttss2si eax, [ebp-0x20]
	cmp ebx, eax
	setz al
	movzx eax, al
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18MSG_ValuesAreEqualPK14SnapshotInfo_siPKiS3__30:
	movss xmm0, dword [_float_182_04444885]
	movss xmm1, dword [ecx]
	mulss xmm1, xmm0
	movss xmm2, dword [_float_0_50000000]
	addss xmm1, xmm2
	cvttss2si edx, xmm1
	mulss xmm0, [esi]
	addss xmm0, xmm2
	cvttss2si eax, xmm0
	cmp ax, dx
	setz al
	movzx eax, al
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18MSG_ValuesAreEqualPK14SnapshotInfo_siPKiS3__10:
	mov eax, 0x1
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop
	
	
_Z18MSG_ValuesAreEqualPK14SnapshotInfo_siPKiS3__jumptab_0:
	dd _Z18MSG_ValuesAreEqualPK14SnapshotInfo_siPKiS3__30
	dd _Z18MSG_ValuesAreEqualPK14SnapshotInfo_siPKiS3__40
	dd _Z18MSG_ValuesAreEqualPK14SnapshotInfo_siPKiS3__40
	dd _Z18MSG_ValuesAreEqualPK14SnapshotInfo_siPKiS3__40
	dd _Z18MSG_ValuesAreEqualPK14SnapshotInfo_siPKiS3__40
	dd _Z18MSG_ValuesAreEqualPK14SnapshotInfo_siPKiS3__50
	dd _Z18MSG_ValuesAreEqualPK14SnapshotInfo_siPKiS3__40
	dd _Z18MSG_ValuesAreEqualPK14SnapshotInfo_siPKiS3__40
	dd _Z18MSG_ValuesAreEqualPK14SnapshotInfo_siPKiS3__60
	dd _Z18MSG_ValuesAreEqualPK14SnapshotInfo_siPKiS3__60
	dd _Z18MSG_ValuesAreEqualPK14SnapshotInfo_siPKiS3__60
	dd _Z18MSG_ValuesAreEqualPK14SnapshotInfo_siPKiS3__40
	dd _Z18MSG_ValuesAreEqualPK14SnapshotInfo_siPKiS3__40
	dd _Z18MSG_ValuesAreEqualPK14SnapshotInfo_siPKiS3__30


;MSG_WriteDeltaClient(SnapshotInfo_s*, msg_t*, int, clientState_s const*, clientState_s const*, int)
_Z20MSG_WriteDeltaClientP14SnapshotInfo_sP5msg_tiPK13clientState_sS5_i:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov esi, [ebp+0xc]
	mov ebx, [ebp+0x14]
	mov edi, [ebp+0x18]
	test ebx, ebx
	jz _Z20MSG_WriteDeltaClientP14SnapshotInfo_sP5msg_tiPK13clientState_sS5_i_10
_Z20MSG_WriteDeltaClientP14SnapshotInfo_sP5msg_tiPK13clientState_sS5_i_60:
	test edi, edi
	jz _Z20MSG_WriteDeltaClientP14SnapshotInfo_sP5msg_tiPK13clientState_sS5_i_20
	mov dword [esp+0x18], 0x1
	mov dword [esp+0x14], clientStateFields
	mov dword [esp+0x10], 0x6
	mov dword [esp+0xc], 0x18
	mov eax, [ebp+0x1c]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov [esp], ebx
	mov ecx, [ebp+0x10]
	mov edx, esi
	mov eax, [ebp+0x8]
	call _Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20MSG_WriteDeltaClientP14SnapshotInfo_sP5msg_tiPK13clientState_sS5_i_20:
	mov eax, cl_shownet
	mov eax, [eax]
	test eax, eax
	jz _Z20MSG_WriteDeltaClientP14SnapshotInfo_sP5msg_tiPK13clientState_sS5_i_30
	mov eax, [eax+0xc]
	cmp eax, 0x1
	jle _Z20MSG_WriteDeltaClientP14SnapshotInfo_sP5msg_tiPK13clientState_sS5_i_40
_Z20MSG_WriteDeltaClientP14SnapshotInfo_sP5msg_tiPK13clientState_sS5_i_50:
	mov eax, [ebx]
	mov [esp+0xc], eax
	mov eax, [esi+0x14]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_w3i_3i_remove
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
_Z20MSG_WriteDeltaClientP14SnapshotInfo_sP5msg_tiPK13clientState_sS5_i_30:
	mov [esp], esi
	call _Z13MSG_WriteBit1P5msg_t
	mov dword [esp+0xc], 0x6
	mov eax, [ebx]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z20MSG_WriteEntityIndexP14SnapshotInfo_sP5msg_tii
	mov [esp], esi
	call _Z13MSG_WriteBit1P5msg_t
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20MSG_WriteDeltaClientP14SnapshotInfo_sP5msg_tiPK13clientState_sS5_i_40:
	add eax, 0x1
	jnz _Z20MSG_WriteDeltaClientP14SnapshotInfo_sP5msg_tiPK13clientState_sS5_i_30
	jmp _Z20MSG_WriteDeltaClientP14SnapshotInfo_sP5msg_tiPK13clientState_sS5_i_50
_Z20MSG_WriteDeltaClientP14SnapshotInfo_sP5msg_tiPK13clientState_sS5_i_10:
	lea ebx, [ebp-0x7c]
	mov dword [esp+0x8], 0x64
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call memset
	jmp _Z20MSG_WriteDeltaClientP14SnapshotInfo_sP5msg_tiPK13clientState_sS5_i_60


;MSG_WriteEntityIndex(SnapshotInfo_s*, msg_t*, int, int)
_Z20MSG_WriteEntityIndexP14SnapshotInfo_sP5msg_tii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x10]
	mov edi, [ebp+0x14]
	mov eax, esi
	sub eax, [ebx+0x24]
	sub eax, 0x1
	jz _Z20MSG_WriteEntityIndexP14SnapshotInfo_sP5msg_tii_10
	mov [esp], ebx
	call _Z13MSG_WriteBit0P5msg_t
	cmp edi, 0xa
	jz _Z20MSG_WriteEntityIndexP14SnapshotInfo_sP5msg_tii_20
_Z20MSG_WriteEntityIndexP14SnapshotInfo_sP5msg_tii_40:
	mov [esp+0x8], edi
	mov [esp+0x4], esi
	mov [esp], ebx
	call _Z13MSG_WriteBitsP5msg_tii
	mov [ebx+0x24], esi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20MSG_WriteEntityIndexP14SnapshotInfo_sP5msg_tii_20:
	mov eax, esi
	sub eax, [ebx+0x24]
	cmp eax, 0xf
	jle _Z20MSG_WriteEntityIndexP14SnapshotInfo_sP5msg_tii_30
	mov [esp], ebx
	call _Z13MSG_WriteBit1P5msg_t
	jmp _Z20MSG_WriteEntityIndexP14SnapshotInfo_sP5msg_tii_40
_Z20MSG_WriteEntityIndexP14SnapshotInfo_sP5msg_tii_10:
	mov [esp], ebx
	call _Z13MSG_WriteBit1P5msg_t
	mov [ebx+0x24], esi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20MSG_WriteEntityIndexP14SnapshotInfo_sP5msg_tii_30:
	mov [esp], ebx
	call _Z13MSG_WriteBit0P5msg_t
	mov dword [esp+0x8], 0x4
	mov eax, esi
	sub eax, [ebx+0x24]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z13MSG_WriteBitsP5msg_tii
	mov [ebx+0x24], esi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop
	add [eax], al


;MSG_WriteOriginFloat(int, msg_t*, int, float, float)
_Z20MSG_WriteOriginFloatiP5msg_tiff:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, [ebp+0xc]
	mov [ebp-0x1c], eax
	mov eax, [ebp+0x10]
	mov [ebp-0x20], eax
	movss xmm0, dword [ebp+0x18]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [ebp+0x14]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x28]
	cvttss2si edi, [ebp-0x28]
	movss xmm0, dword [_float_0_50000000]
	addss xmm0, [ebp-0x24]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x2c]
	cvttss2si esi, [ebp-0x2c]
	mov eax, edi
	sub eax, esi
	lea ebx, [eax+0x40]
	cmp ebx, 0x7f
	ja _Z20MSG_WriteOriginFloatiP5msg_tiff_10
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z13MSG_WriteBit0P5msg_t
	mov dword [ebp+0x10], 0x7
	mov [ebp+0xc], ebx
	mov eax, [ebp-0x1c]
	mov [ebp+0x8], eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z13MSG_WriteBitsP5msg_tii
_Z20MSG_WriteOriginFloatiP5msg_tiff_10:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z13MSG_WriteBit1P5msg_t
	xor eax, eax
	cmp dword [ebp-0x20], 0xffffffa4
	setnz al
	movss xmm0, dword [_float_0_50000000]
	mov edx, svsHeader
	addss xmm0, [edx+eax*4+0x28]
	cvttss2si eax, xmm0
	sub edi, eax
	lea edx, [edi+0x8000]
	mov dword [ebp+0x10], 0x10
	sub esi, eax
	lea eax, [esi+0x8000]
	xor edx, eax
	mov [ebp+0xc], edx
	mov eax, [ebp-0x1c]
	mov [ebp+0x8], eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z13MSG_WriteBitsP5msg_tii


;MSG_WriteOriginZFloat(int, msg_t*, float, float)
_Z21MSG_WriteOriginZFloatiP5msg_tff:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0xc]
	mov [ebp-0x1c], eax
	movss xmm0, dword [ebp+0x14]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [ebp+0x10]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x24]
	cvttss2si esi, [ebp-0x24]
	movss xmm0, dword [_float_0_50000000]
	addss xmm0, [ebp-0x20]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x28]
	cvttss2si ebx, [ebp-0x28]
	mov eax, esi
	sub eax, ebx
	lea edi, [eax+0x40]
	cmp edi, 0x7f
	ja _Z21MSG_WriteOriginZFloatiP5msg_tff_10
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z13MSG_WriteBit0P5msg_t
	mov dword [ebp+0x10], 0x7
	mov [ebp+0xc], edi
	mov eax, [ebp-0x1c]
	mov [ebp+0x8], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z13MSG_WriteBitsP5msg_tii
_Z21MSG_WriteOriginZFloatiP5msg_tff_10:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z13MSG_WriteBit1P5msg_t
	movss xmm0, dword [_float_0_50000000]
	mov eax, svsHeader
	addss xmm0, [eax+0x30]
	cvttss2si eax, xmm0
	sub esi, eax
	lea edx, [esi+0x8000]
	mov dword [ebp+0x10], 0x10
	sub ebx, eax
	lea eax, [ebx+0x8000]
	xor edx, eax
	mov [ebp+0xc], edx
	mov eax, [ebp-0x1c]
	mov [ebp+0x8], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z13MSG_WriteBitsP5msg_tii
	nop


;MSG_WriteDeltaPlayerstate(SnapshotInfo_s*, msg_t*, int, playerState_s const*, playerState_s const*)
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x304c
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z19MSG_GetUsedBitCountPK5msg_t
	mov eax, [ebp+0x14]
	test eax, eax
	jz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__10
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__830:
	mov edx, [ebp+0x8]
	cmp byte [edx+0xd], 0x0
	jnz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__20
	mov ebx, edx
	mov edx, [ebp+0x18]
	add edx, 0x1c
	mov ecx, [ebx+0x4]
	lea eax, [ecx+0x634]
	mov esi, [ebp+0x18]
	movss xmm2, dword [esi+0x1c]
	subss xmm2, [ecx+0x634]
	movss xmm0, dword [edx+0x4]
	subss xmm0, [eax+0x4]
	movss xmm1, dword [edx+0x8]
	subss xmm1, [eax+0x8]
	mulss xmm2, xmm2
	mulss xmm0, xmm0
	addss xmm2, xmm0
	mulss xmm1, xmm1
	addss xmm2, xmm1
	mov eax, [ebp+0x14]
	test eax, eax
	jz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__30
	mov eax, svsHeader
	mov eax, [eax+0x60]
	test eax, eax
	jnz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__40
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__30:
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z13MSG_WriteBit1P5msg_t
	mov eax, 0x1
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__790:
	mov [ebp-0x2fb1], al
	mov dword [ebp-0x2fc4], 0x0
	mov dword [ebp-0x2fa0], 0x0
	mov edi, playerStateFields+0x8
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__100:
	mov edx, [edi]
	cmp edx, 0xffffffa9
	jz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__50
	cmp byte [edi+0x4], 0x3
	jz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__60
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__590:
	mov eax, [edi-0x4]
	mov ebx, [ebp+0x14]
	lea ecx, [eax+ebx]
	mov ebx, [ebp+0x18]
	lea esi, [eax+ebx]
	mov eax, [ecx]
	mov [ebp-0x3010], eax
	mov ebx, [esi]
	cmp eax, ebx
	jz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__70
	add edx, 0x64
	cmp edx, 0xd
	ja _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__80
	jmp dword [edx*4+_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__jumptab_0]
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__80:
	xor eax, eax
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__170:
	xor al, 0x1
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__600:
	test al, al
	jnz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__90
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__580:
	add dword [ebp-0x2fa0], 0x1
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__570:
	add edi, 0x10
	cmp dword [ebp-0x2fa0], 0x8c
	jle _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__100
	mov dword [esp], 0x8d
	call _Z20GetMinBitCountForNumj
	mov [esp+0x8], eax
	mov ecx, [ebp-0x2fc4]
	mov [esp+0x4], ecx
	mov ebx, [ebp+0xc]
	mov [esp], ebx
	call _Z13MSG_WriteBitsP5msg_tii
	mov eax, [ebp-0x2fc4]
	test eax, eax
	jle _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__110
	mov dword [ebp-0x2fcc], 0x0
	mov dword [ebp-0x2fc0], playerStateFields
	mov dword [ebp-0x2fa8], playerStateFields+0xc
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__200:
	mov esi, [ebp-0x2fa8]
	movzx edi, byte [esi]
	mov eax, edi
	cmp al, 0x2
	jz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__120
	mov edx, [esi-0x4]
	cmp edx, 0xffffffa9
	jz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__130
	mov eax, edi
	cmp al, 0x3
	jz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__140
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__630:
	mov ebx, [ebp-0x2fa8]
	mov eax, [ebx-0x8]
	mov esi, [ebp+0x14]
	lea ecx, [eax+esi]
	mov ebx, [ebp+0x18]
	lea esi, [eax+ebx]
	mov eax, [ecx]
	mov [ebp-0x3010], eax
	mov ebx, [esi]
	cmp eax, ebx
	jz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__150
	add edx, 0x64
	cmp edx, 0xd
	ja _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__160
	jmp dword [edx*4+_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__jumptab_1]
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__850:
	mov esi, 0x51eb851f
	mov eax, [ebp-0x3010]
	imul esi
	mov ecx, edx
	sar ecx, 0x5
	mov eax, [ebp-0x3010]
	sar eax, 0x1f
	sub ecx, eax
	mov eax, ebx
	imul esi
	sar edx, 0x5
	mov eax, ebx
	sar eax, 0x1f
	sub edx, eax
	cmp ecx, edx
	setz al
	jmp _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__170
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__860:
	movss xmm1, dword [_float_0_50000000]
	movss xmm0, dword [ecx]
	addss xmm0, xmm1
	movss [esp], xmm0
	movss [ebp-0x3008], xmm1
	call floorf
	fstp dword [ebp-0x2fd0]
	cvttss2si ebx, [ebp-0x2fd0]
	movss xmm1, dword [ebp-0x3008]
	addss xmm1, [esi]
	movss [esp], xmm1
	call floorf
	fstp dword [ebp-0x2fd4]
	cvttss2si eax, [ebp-0x2fd4]
	cmp ebx, eax
	setz al
	jmp _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__170
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__840:
	movss xmm0, dword [_float_182_04444885]
	movss xmm1, dword [ecx]
	mulss xmm1, xmm0
	movss xmm2, dword [_float_0_50000000]
	addss xmm1, xmm2
	cvttss2si edx, xmm1
	mulss xmm0, [esi]
	addss xmm0, xmm2
	cvttss2si eax, xmm0
	cmp ax, dx
	setz al
	jmp _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__170
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__160:
	xor eax, eax
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__650:
	xor al, 0x1
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__640:
	test al, al
	jz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__180
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__120:
	mov esi, [ebp+0x8]
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__780:
	cmp byte [esi+0xd], 0x0
	jz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__190
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__520:
	xor eax, eax
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__530:
	mov [esp+0x10], eax
	mov ebx, [ebp-0x2fcc]
	mov [esp+0xc], ebx
	mov esi, [ebp-0x2fc0]
	mov [esp+0x8], esi
	mov edi, [ebp+0x18]
	mov [esp+0x4], edi
	mov eax, [ebp+0x14]
	mov [esp], eax
	mov ecx, [ebp+0x10]
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	call _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__550:
	add dword [ebp-0x2fcc], 0x1
	add dword [ebp-0x2fc0], 0x10
	add dword [ebp-0x2fa8], 0x10
	mov edx, [ebp-0x2fc4]
	cmp [ebp-0x2fcc], edx
	jnz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__200
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__110:
	mov ecx, [ebp+0x18]
	mov [ebp-0x300c], ecx
	mov edx, [ebp+0x14]
	xor ebx, ebx
	xor esi, esi
	mov edi, 0x1
	mov eax, [ecx+0x148]
	cmp eax, [edx+0x148]
	jnz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__210
	jmp _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__220
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__230:
	mov ecx, [ebp-0x300c]
	mov eax, [ecx+0x148]
	cmp eax, [edx+0x148]
	jz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__220
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__210:
	mov eax, edi
	mov ecx, ebx
	shl eax, cl
	or esi, eax
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__220:
	add ebx, 0x1
	add dword [ebp-0x300c], 0x4
	add edx, 0x4
	cmp ebx, 0x5
	jnz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__230
	test esi, esi
	jz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__240
	mov ebx, [ebp+0xc]
	mov [esp], ebx
	call _Z13MSG_WriteBit1P5msg_t
	mov dword [esp+0x8], 0x5
	mov [esp+0x4], esi
	mov [esp], ebx
	call _Z13MSG_WriteBitsP5msg_tii
	test esi, 0x1
	jnz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__250
	test esi, 0x2
	jnz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__260
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__820:
	test esi, 0x4
	jnz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__270
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__800:
	test esi, 0x8
	jnz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__280
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__810:
	and esi, 0x10
	jnz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__290
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__670:
	mov dword [ebp-0x2f9c], 0x0
	mov edi, 0x1
	mov dword [ebp-0x2ff8], 0x150
	lea esi, [ebp-0x28]
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__330:
	mov dword [esi], 0x0
	mov eax, [ebp+0x18]
	mov edx, [ebp-0x2ff8]
	lea eax, [eax+edx+0xc]
	mov [ebp-0x300c], eax
	mov ecx, [ebp+0x14]
	lea edx, [ecx+edx+0xc]
	xor ebx, ebx
	mov ecx, eax
	jmp _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__300
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__320:
	mov ecx, [ebp-0x300c]
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__300:
	mov eax, [ecx]
	cmp eax, [edx]
	jz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__310
	mov eax, edi
	mov ecx, ebx
	shl eax, cl
	or [esi], eax
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__310:
	add ebx, 0x1
	add dword [ebp-0x300c], 0x4
	add edx, 0x4
	cmp ebx, 0x10
	jnz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__320
	add dword [ebp-0x2f9c], 0x1
	add esi, 0x4
	add dword [ebp-0x2ff8], 0x40
	cmp dword [ebp-0x2f9c], 0x4
	jnz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__330
	mov eax, [ebp-0x28]
	test eax, eax
	jnz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__340
	mov eax, [ebp-0x24]
	test eax, eax
	jz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__350
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__340:
	mov ebx, [ebp+0xc]
	mov [esp], ebx
	call _Z13MSG_WriteBit1P5msg_t
	mov dword [ebp-0x2fc8], 0x0
	mov esi, [ebp+0x18]
	add esi, 0x150
	mov [ebp-0x2ff4], esi
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__390:
	mov eax, [ebp-0x2fc8]
	mov edi, [ebp+eax*4-0x28]
	test edi, edi
	jz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__360
	mov edx, [ebp+0xc]
	mov [esp], edx
	call _Z13MSG_WriteBit1P5msg_t
	mov [esp+0x4], edi
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call _Z14MSG_WriteShortP5msg_ti
	mov ebx, [ebp-0x2ff4]
	add ebx, 0xc
	xor esi, esi
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__380:
	mov eax, edi
	mov ecx, esi
	sar eax, cl
	test al, 0x1
	jnz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__370
	add esi, 0x1
	add ebx, 0x4
	cmp esi, 0x10
	jnz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__380
	add dword [ebp-0x2fc8], 0x1
	add dword [ebp-0x2ff4], 0x40
	cmp dword [ebp-0x2fc8], 0x4
	jnz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__390
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__620:
	mov dword [ebp-0x2fac], 0x0
	mov ebx, [ebp+0x18]
	add ebx, 0x350
	mov [ebp-0x2fec], ebx
	mov dword [ebp-0x2ff0], 0x350
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__450:
	mov edi, [ebp+0x18]
	mov eax, [ebp-0x2ff0]
	lea esi, [edi+eax+0xc]
	mov ecx, [ebp+0x14]
	lea edx, [ecx+eax+0xc]
	xor ebx, ebx
	xor edi, edi
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__410:
	mov eax, [esi]
	cmp eax, [edx]
	jz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__400
	mov eax, 0x1
	mov ecx, ebx
	shl eax, cl
	or edi, eax
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__400:
	add ebx, 0x1
	add esi, 0x4
	add edx, 0x4
	cmp ebx, 0x10
	jnz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__410
	test edi, edi
	jz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__420
	mov ebx, [ebp+0xc]
	mov [esp], ebx
	call _Z13MSG_WriteBit1P5msg_t
	mov [esp+0x4], edi
	mov [esp], ebx
	call _Z14MSG_WriteShortP5msg_ti
	mov ebx, [ebp-0x2fec]
	add ebx, 0xc
	xor esi, esi
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__440:
	mov eax, edi
	mov ecx, esi
	sar eax, cl
	test al, 0x1
	jnz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__430
	add esi, 0x1
	add ebx, 0x4
	cmp esi, 0x10
	jnz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__440
	add dword [ebp-0x2fac], 0x10
	add dword [ebp-0x2ff0], 0x40
	add dword [ebp-0x2fec], 0x40
	cmp dword [ebp-0x2fac], 0x80
	jnz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__450
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__610:
	mov ecx, [ebp+0x14]
	add ecx, 0x65c
	mov [ebp-0x3014], ecx
	mov ebx, [ebp+0x18]
	add ebx, 0x65c
	mov [ebp-0x301c], ebx
	mov ebx, 0x1c0
	cld
	mov esi, ecx
	mov edi, [ebp-0x301c]
	mov ecx, ebx
	repe cmpsb
	mov eax, 0x0
	jz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__460
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__460:
	test eax, eax
	jnz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__470
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call _Z13MSG_WriteBit0P5msg_t
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__720:
	mov ebx, [ebp+0x14]
	add ebx, 0x8a4
	mov edx, [ebp+0x18]
	add edx, 0x8a4
	mov [ebp-0x2fe8], edx
	mov ecx, 0x26c0
	cld
	mov esi, ebx
	mov edi, edx
	repe cmpsb
	mov eax, 0x0
	jz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__480
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__480:
	test eax, eax
	jnz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__490
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call _Z13MSG_WriteBit0P5msg_t
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__680:
	mov eax, [ebp+0x14]
	add eax, 0x81c
	mov edx, [ebp+0x18]
	add edx, 0x81c
	mov ebx, 0x80
	cld
	mov esi, eax
	mov edi, edx
	mov ecx, ebx
	repe cmpsb
	mov eax, 0x0
	jz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__500
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__500:
	test eax, eax
	jnz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__510
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call _Z13MSG_WriteBit0P5msg_t
	add esp, 0x304c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__190:
	mov ecx, edi
	cmp cl, 0x3
	jnz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__520
	mov eax, 0x1
	jmp _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__530
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__130:
	mov edx, [ebp+0x8]
	cmp byte [edx+0xd], 0x0
	jnz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__540
	mov ecx, [ebp+0x18]
	test byte [ecx+0x14], 0x2
	jnz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__120
	mov eax, [ecx+0xb0]
	mov ebx, [ebp+0x14]
	xor eax, [ebx+0xb0]
	test al, 0x2
	jnz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__120
	cmp dword [ecx+0x59c], 0x3ff
	jnz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__120
	cmp dword [ecx+0x4], 0x5
	jz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__120
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__180:
	mov edx, [ebp+0xc]
	mov [esp], edx
	call _Z13MSG_WriteBit0P5msg_t
	jmp _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__550
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__50:
	mov edx, [ebp+0x8]
	cmp byte [edx+0xd], 0x0
	jnz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__90
	mov ecx, [ebp+0x18]
	test byte [ecx+0x14], 0x2
	jnz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__90
	mov eax, [ecx+0xb0]
	mov ebx, [ebp+0x14]
	xor eax, [ebx+0xb0]
	test al, 0x2
	jnz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__90
	cmp dword [ecx+0x59c], 0x3ff
	jz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__560
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__90:
	mov edx, [ebp-0x2fa0]
	add edx, 0x1
	mov [ebp-0x2fc4], edx
	mov [ebp-0x2fa0], edx
	jmp _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__570
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__560:
	cmp dword [ecx+0x4], 0x5
	jnz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__580
	mov edx, [ebp-0x2fa0]
	add edx, 0x1
	mov [ebp-0x2fc4], edx
	mov [ebp-0x2fa0], edx
	jmp _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__570
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__60:
	mov esi, [ebp+0x8]
	cmp byte [esi+0xd], 0x0
	jnz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__590
	movzx eax, byte [ebp-0x2fb1]
	jmp _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__600
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__70:
	mov eax, 0x1
	jmp _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__170
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__430:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z14MSG_WriteShortP5msg_ti
	add esi, 0x1
	add ebx, 0x4
	cmp esi, 0x10
	jnz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__440
	add dword [ebp-0x2fac], 0x10
	add dword [ebp-0x2ff0], 0x40
	add dword [ebp-0x2fec], 0x40
	cmp dword [ebp-0x2fac], 0x80
	jnz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__450
	jmp _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__610
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__370:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z14MSG_WriteShortP5msg_ti
	add esi, 0x1
	add ebx, 0x4
	cmp esi, 0x10
	jnz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__380
	add dword [ebp-0x2fc8], 0x1
	add dword [ebp-0x2ff4], 0x40
	cmp dword [ebp-0x2fc8], 0x4
	jnz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__390
	jmp _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__620
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__420:
	mov edx, [ebp+0xc]
	mov [esp], edx
	call _Z13MSG_WriteBit0P5msg_t
	add dword [ebp-0x2fac], 0x10
	add dword [ebp-0x2ff0], 0x40
	add dword [ebp-0x2fec], 0x40
	cmp dword [ebp-0x2fac], 0x80
	jnz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__450
	jmp _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__610
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__360:
	mov edx, [ebp+0xc]
	mov [esp], edx
	call _Z13MSG_WriteBit0P5msg_t
	add dword [ebp-0x2fc8], 0x1
	add dword [ebp-0x2ff4], 0x40
	cmp dword [ebp-0x2fc8], 0x4
	jnz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__390
	jmp _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__620
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__140:
	mov ecx, [ebp+0x8]
	cmp byte [ecx+0xd], 0x0
	jnz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__630
	movzx eax, byte [ebp-0x2fb1]
	jmp _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__640
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__150:
	mov eax, 0x1
	jmp _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__650
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__510:
	mov ebx, [ebp+0xc]
	mov [esp], ebx
	call _Z13MSG_WriteBit1P5msg_t
	mov ebx, [ebp+0x18]
	mov esi, 0x80
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__660:
	movzx eax, byte [ebx+0x81c]
	mov [esp+0x4], eax
	mov edi, [ebp+0xc]
	mov [esp], edi
	call _Z13MSG_WriteByteP5msg_ti
	add ebx, 0x1
	sub esi, 0x1
	jnz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__660
	add esp, 0x304c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__240:
	mov edi, [ebp+0xc]
	mov [esp], edi
	call _Z13MSG_WriteBit0P5msg_t
	jmp _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__670
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__490:
	mov esi, [ebp+0xc]
	mov [esp], esi
	call _Z13MSG_WriteBit1P5msg_t
	mov dword [esp+0x8], 0x1f
	mov eax, [ebp+0x18]
	add eax, 0x1c04
	mov [esp+0x4], eax
	mov eax, [ebp+0x14]
	add eax, 0x1c04
	mov [esp], eax
	mov ecx, [ebp+0x10]
	mov edx, esi
	mov eax, [ebp+0x8]
	call _Z22MSG_WriteDeltaHudElemsP14SnapshotInfo_sP5msg_tiPK9hudelem_sS5_i
	mov dword [esp+0x8], 0x1f
	mov edi, [ebp-0x2fe8]
	mov [esp+0x4], edi
	mov [esp], ebx
	mov ecx, [ebp+0x10]
	mov edx, esi
	mov eax, [ebp+0x8]
	call _Z22MSG_WriteDeltaHudElemsP14SnapshotInfo_sP5msg_tiPK9hudelem_sS5_i
	jmp _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__680
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__470:
	mov ebx, [ebp+0xc]
	mov [esp], ebx
	call _Z13MSG_WriteBit1P5msg_t
	mov esi, [ebp+0x18]
	mov [ebp-0x2fb0], esi
	mov dword [ebp-0x2fa4], 0x0
	mov edi, esi
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__730:
	mov dword [esp+0x8], 0x3
	mov eax, [edi+0x65c]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z13MSG_WriteBitsP5msg_tii
	mov edx, [ebp-0x2fa4]
	shl edx, 0x2
	mov eax, [ebp-0x2fa4]
	shl eax, 0x5
	sub eax, edx
	add eax, 0x650
	mov edx, [ebp+0x18]
	lea edx, [edx+eax+0xc]
	mov [ebp-0x2fbc], edx
	mov ecx, [ebp+0x14]
	lea eax, [ecx+eax+0xc]
	mov [ebp-0x2fb8], eax
	mov edi, objectiveFields+0x4
	mov ecx, eax
	mov esi, edx
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__750:
	mov eax, [edi]
	mov edx, [edi+0x4]
	add ecx, eax
	add esi, eax
	mov ebx, [ecx]
	mov [ebp-0x3010], ebx
	mov ebx, [esi]
	cmp [ebp-0x3010], ebx
	jz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__690
	add edx, 0x64
	cmp edx, 0xd
	ja _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__700
	jmp dword [edx*4+_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__jumptab_2]
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__700:
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call _Z13MSG_WriteBit1P5msg_t
	xor ebx, ebx
	mov esi, objectiveFields
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__710:
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov edi, [ebp-0x2fbc]
	mov [esp+0x4], edi
	mov eax, [ebp-0x2fb8]
	mov [esp], eax
	mov ecx, [ebp+0x10]
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	call _Z19MSG_WriteDeltaFieldP14SnapshotInfo_sP5msg_tiPKhS4_PK8NetFieldih
	add ebx, 0x1
	add esi, 0x10
	cmp ebx, 0x6
	jnz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__710
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__770:
	add dword [ebp-0x2fa4], 0x1
	add dword [ebp-0x2fb0], 0x1c
	cmp dword [ebp-0x2fa4], 0x10
	jz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__720
	mov edi, [ebp-0x2fb0]
	jmp _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__730
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__910:
	mov esi, 0x51eb851f
	mov eax, [ebp-0x3010]
	imul esi
	mov ecx, edx
	sar ecx, 0x5
	mov eax, [ebp-0x3010]
	sar eax, 0x1f
	sub ecx, eax
	mov eax, ebx
	imul esi
	sar edx, 0x5
	mov eax, ebx
	sar eax, 0x1f
	sub edx, eax
	cmp ecx, edx
	setz al
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__760:
	test al, al
	jz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__700
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__690:
	add edi, 0x10
	cmp edi, playerStateFields+0x4
	jz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__740
	mov ecx, [ebp-0x2fb8]
	mov esi, [ebp-0x2fbc]
	jmp _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__750
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__920:
	movss xmm1, dword [_float_0_50000000]
	movss xmm0, dword [ecx]
	addss xmm0, xmm1
	movss [esp], xmm0
	movss [ebp-0x3008], xmm1
	call floorf
	fstp dword [ebp-0x2fe0]
	cvttss2si ebx, [ebp-0x2fe0]
	movss xmm1, dword [ebp-0x3008]
	addss xmm1, [esi]
	movss [esp], xmm1
	call floorf
	fstp dword [ebp-0x2fe4]
	cvttss2si eax, [ebp-0x2fe4]
	cmp ebx, eax
	setz al
	jmp _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__760
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__900:
	movss xmm0, dword [_float_182_04444885]
	movss xmm1, dword [ecx]
	mulss xmm1, xmm0
	movss xmm2, dword [_float_0_50000000]
	addss xmm1, xmm2
	cvttss2si edx, xmm1
	mulss xmm0, [esi]
	addss xmm0, xmm2
	cvttss2si eax, xmm0
	cmp ax, dx
	setz al
	jmp _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__760
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__740:
	mov edx, [ebp+0xc]
	mov [esp], edx
	call _Z13MSG_WriteBit0P5msg_t
	jmp _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__770
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__540:
	mov esi, edx
	jmp _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__780
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__350:
	mov edi, [ebp-0x20]
	test edi, edi
	jnz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__340
	mov esi, [ebp-0x1c]
	test esi, esi
	jnz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__340
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call _Z13MSG_WriteBit0P5msg_t
	jmp _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__620
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__40:
	ucomiss xmm2, [_float_0_01000000]
	ja _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__30
	jp _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__30
	mov eax, [ecx+0x640]
	cmp eax, [esi]
	jnz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__30
	mov edi, [ebp+0xc]
	mov [esp], edi
	call _Z13MSG_WriteBit0P5msg_t
	xor eax, eax
	jmp _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__790
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__20:
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call _Z13MSG_WriteBit1P5msg_t
	mov eax, 0x1
	jmp _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__790
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__870:
	movss xmm0, dword [_float_182_04444885]
	movss xmm1, dword [ecx]
	mulss xmm1, xmm0
	movss xmm2, dword [_float_0_50000000]
	addss xmm1, xmm2
	cvttss2si edx, xmm1
	mulss xmm0, [esi]
	addss xmm0, xmm2
	cvttss2si eax, xmm0
	cmp ax, dx
	setz al
	jmp _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__650
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__890:
	movss xmm1, dword [_float_0_50000000]
	movss xmm0, dword [ecx]
	addss xmm0, xmm1
	movss [esp], xmm0
	movss [ebp-0x3008], xmm1
	call floorf
	fstp dword [ebp-0x2fd8]
	cvttss2si ebx, [ebp-0x2fd8]
	movss xmm1, dword [ebp-0x3008]
	addss xmm1, [esi]
	movss [esp], xmm1
	call floorf
	fstp dword [ebp-0x2fdc]
	cvttss2si eax, [ebp-0x2fdc]
	cmp ebx, eax
	setz al
	jmp _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__650
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__880:
	mov esi, 0x51eb851f
	mov eax, [ebp-0x3010]
	imul esi
	mov ecx, edx
	sar ecx, 0x5
	mov eax, [ebp-0x3010]
	sar eax, 0x1f
	sub ecx, eax
	mov eax, ebx
	imul esi
	sar edx, 0x5
	mov eax, ebx
	sar eax, 0x1f
	sub edx, eax
	cmp ecx, edx
	setz al
	jmp _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__650
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__260:
	mov edx, [ebp+0x18]
	mov eax, [edx+0x14c]
	mov [esp+0x4], eax
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call _Z14MSG_WriteShortP5msg_ti
	test esi, 0x4
	jz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__800
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__270:
	mov ebx, [ebp+0x18]
	mov eax, [ebx+0x150]
	mov [esp+0x4], eax
	mov edi, [ebp+0xc]
	mov [esp], edi
	call _Z14MSG_WriteShortP5msg_ti
	test esi, 0x8
	jz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__810
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__280:
	mov dword [esp+0x8], 0x6
	mov edx, [ebp+0x18]
	mov eax, [edx+0x154]
	mov [esp+0x4], eax
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call _Z13MSG_WriteBitsP5msg_tii
	and esi, 0x10
	jz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__670
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__290:
	mov ebx, [ebp+0x18]
	mov eax, [ebx+0x158]
	mov [esp+0x4], eax
	mov esi, [ebp+0xc]
	mov [esp], esi
	call _Z13MSG_WriteByteP5msg_ti
	jmp _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__670
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__250:
	mov edi, [ebp+0x18]
	mov eax, [edi+0x148]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z14MSG_WriteShortP5msg_ti
	test esi, 0x2
	jz _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__820
	jmp _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__260
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__10:
	lea ebx, [ebp-0x2f8c]
	mov dword [esp+0x8], 0x2f64
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call memset
	mov [ebp+0x14], ebx
	jmp _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__830
	add [eax], al
	
	
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__jumptab_0:
	dd _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__840
	dd _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__80
	dd _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__80
	dd _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__80
	dd _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__80
	dd _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__850
	dd _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__80
	dd _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__80
	dd _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__860
	dd _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__860
	dd _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__860
	dd _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__80
	dd _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__80
	dd _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__840
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__jumptab_1:
	dd _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__870
	dd _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__160
	dd _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__160
	dd _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__160
	dd _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__160
	dd _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__880
	dd _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__160
	dd _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__160
	dd _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__890
	dd _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__890
	dd _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__890
	dd _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__160
	dd _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__160
	dd _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__870
_Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__jumptab_2:
	dd _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__900
	dd _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__700
	dd _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__700
	dd _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__700
	dd _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__700
	dd _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__910
	dd _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__700
	dd _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__700
	dd _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__920
	dd _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__920
	dd _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__920
	dd _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__700
	dd _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__700
	dd _Z25MSG_WriteDeltaPlayerstateP14SnapshotInfo_sP5msg_tiPK13playerState_sS5__900


;MSG_WriteDeltaArchivedEntity(SnapshotInfo_s*, msg_t*, int, archivedEntity_s const*, archivedEntity_s const*, int)
_Z28MSG_WriteDeltaArchivedEntityP14SnapshotInfo_sP5msg_tiPK16archivedEntity_sS5_i:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], archivedEntityFields
	mov dword [esp+0x10], 0xa
	mov dword [esp+0xc], 0x45
	mov ebx, [ebp+0x1c]
	mov [esp+0x8], ebx
	mov ebx, [ebp+0x18]
	mov [esp+0x4], ebx
	mov ebx, [ebp+0x14]
	mov [esp], ebx
	call _Z20MSG_WriteDeltaStructP14SnapshotInfo_sP5msg_tiPhS3_iiiPK8NetFieldi
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;MSG_WriteReliableCommandToBuffer(char const*, char*, int)
_Z32MSG_WriteReliableCommandToBufferPKcPci:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0x8]
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	not ecx
	lea edi, [ecx-0x1]
	cmp edi, [ebp+0x10]
	jge _Z32MSG_WriteReliableCommandToBufferPKcPci_10
_Z32MSG_WriteReliableCommandToBufferPKcPci_60:
	test edi, edi
	jz _Z32MSG_WriteReliableCommandToBufferPKcPci_20
_Z32MSG_WriteReliableCommandToBufferPKcPci_50:
	mov eax, [ebp+0x10]
	test eax, eax
	jle _Z32MSG_WriteReliableCommandToBufferPKcPci_30
	movzx eax, byte [esi]
	test al, al
	jnz _Z32MSG_WriteReliableCommandToBufferPKcPci_40
	xor eax, eax
_Z32MSG_WriteReliableCommandToBufferPKcPci_80:
	mov edx, [ebp+0xc]
	mov byte [edx+eax], 0x0
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z32MSG_WriteReliableCommandToBufferPKcPci_30:
	mov eax, [ebp+0xc]
	mov edx, [ebp+0x10]
	mov byte [eax+edx-0x1], 0x0
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z32MSG_WriteReliableCommandToBufferPKcPci_20:
	mov dword [esp+0x4], _cstring_warning_empty_re
	mov dword [esp], 0x10
	call _Z16Com_PrintWarningiPKcz
	jmp _Z32MSG_WriteReliableCommandToBufferPKcPci_50
_Z32MSG_WriteReliableCommandToBufferPKcPci_10:
	mov [esp+0x10], esi
	mov eax, [ebp+0x10]
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_warning_reliable
	mov dword [esp], 0x10
	call _Z16Com_PrintWarningiPKcz
	jmp _Z32MSG_WriteReliableCommandToBufferPKcPci_60
_Z32MSG_WriteReliableCommandToBufferPKcPci_40:
	mov edi, [ebp+0xc]
	xor ebx, ebx
_Z32MSG_WriteReliableCommandToBufferPKcPci_70:
	movsx eax, al
	mov [esp], eax
	call _Z11I_CleanCharc
	mov edx, 0x2e
	cmp al, 0x25
	cmovnz edx, eax
	mov [edi], dl
	add ebx, 0x1
	add edi, 0x1
	cmp [ebp+0x10], ebx
	jz _Z32MSG_WriteReliableCommandToBufferPKcPci_30
	movzx eax, byte [esi+ebx]
	test al, al
	jnz _Z32MSG_WriteReliableCommandToBufferPKcPci_70
	mov eax, ebx
	jmp _Z32MSG_WriteReliableCommandToBufferPKcPci_80
	nop


;MSG_GetStateFieldListForEntityType(int)
_Z34MSG_GetStateFieldListForEntityTypei:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	cmp eax, 0x12
	mov edx, 0x11
	cmovge eax, edx
	lea eax, [eax*8+s_netFieldList]
	pop ebp
	ret


;Initialized global or static variables of sv_msg_write_mp:
SECTION .data
kbitmask: dd 0x0, 0x1, 0x3, 0x7, 0xf, 0x1f, 0x3f, 0x7f, 0xff, 0x1ff, 0x3ff, 0x7ff, 0xfff, 0x1fff, 0x3fff, 0x7fff, 0xffff, 0x1ffff, 0x3ffff, 0x7ffff, 0xfffff, 0x1fffff, 0x3fffff, 0x7fffff, 0xffffff, 0x1ffffff, 0x3ffffff, 0x7ffffff, 0xfffffff, 0x1fffffff, 0x3fffffff, 0x7fffffff, 0xffffffff, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of sv_msg_write_mp:
SECTION .rdata
s_netFieldList: dd entityStateFields, 0x3b, playerEntityStateFields, 0x3b, corpseEntityStateFields, 0x3b, itemEntityStateFields, 0x3b, missileEntityStateFields, 0x3b, entityStateFields, 0x3b, scriptMoverStateFields, 0x3b, soundBlendEntityStateFields, 0x3b, fxStateFields, 0x3b, loopFxEntityStateFields, 0x3b, entityStateFields, 0x3b, entityStateFields, 0x3b, helicopterEntityStateFields, 0x3a, planeStateFields, 0x3c, vehicleEntityStateFields, 0x3b, entityStateFields, 0x3b, entityStateFields, 0x3b, eventEntityStateFields, 0x3b, 0x0, 0x0, 0x0, 0x0
fxStateFields: dd _cstring_etype, 0x4, 0x8, 0x0, _cstring_time2, 0x70, 0xffffff9f, 0x0, _cstring_lerpapostrbase0, 0x3c, 0xffffff9c, 0x0, _cstring_lerppostrbase0, 0x18, 0xffffffa4, 0x0, _cstring_lerppostrbase1, 0x1c, 0xffffffa5, 0x0, _cstring_un1, 0xd4, 0x8, 0x0, _cstring_lerppostrbase2, 0x20, 0xffffffa6, 0x0, _cstring_lerpapostrbase2, 0x44, 0xffffff9c, 0x0, _cstring_lerpapostrbase1, 0x40, 0xffffff9c, 0x0, _cstring_lerppostrtime, 0x10, 0xffffff9f, 0x0, _cstring_lerppostrtype, 0xc, 0x8, 0x0, _cstring_lerppostrdelta2, 0x2c, 0x0, 0x0, _cstring_lerppostrdelta0, 0x24, 0x0, 0x0, _cstring_lerppostrdelta1, 0x28, 0x0, 0x0, _cstring_clientnum, 0x8c, 0x7, 0x0, _cstring_lerpapostrtype, 0x30, 0x8, 0x0, _cstring_lerpapostrtime, 0x34, 0xffffff9f, 0x0, _cstring_lerpapostrdelta0, 0x48, 0x0, 0x0, _cstring_lerpapostrdelta1, 0x4c, 0x0, 0x0, _cstring_lerpapostrdelta2, 0x50, 0x0, 0x0, _cstring_index, 0x88, 0xa, 0x0, _cstring_groundentitynum, 0x7c, 0xffffffa0, 0x0, _cstring_lerppostrduratio, 0x14, 0x20, 0x0, _cstring_solid, 0x98, 0x18, 0x0, _cstring_eventparm, 0x9c, 0xffffffa3, 0x0, _cstring_lerpeflags, 0x8, 0xffffff9e, 0x0, _cstring_eventsequence, 0xa0, 0x8, 0x0, _cstring_events0, 0xa4, 0xffffffa2, 0x0, _cstring_eventparms0, 0xb4, 0xffffffa3, 0x0, _cstring_weapon, 0xc4, 0x7, 0x0, _cstring_weaponmodel, 0xc8, 0x4, 0x0, _cstring_surftype, 0x84, 0x8, 0x0, _cstring_otherentitynum, 0x74, 0xa, 0x0, _cstring_lerpuanonymousda, 0x54, 0x20, 0x0, _cstring_lerpuanonymousda1, 0x58, 0x20, 0x0, _cstring_lerpuanonymousda2, 0x5c, 0x20, 0x0, _cstring_eventparms1, 0xb8, 0xffffffa3, 0x0, _cstring_eventparms2, 0xbc, 0xffffffa3, 0x0, _cstring_eventparms3, 0xc0, 0xffffffa3, 0x0, _cstring_events1, 0xa8, 0xffffffa2, 0x0, _cstring_events2, 0xac, 0xffffffa2, 0x0, _cstring_events3, 0xb0, 0xffffffa2, 0x0, _cstring_attackerentitynu, 0x78, 0xa, 0x0, _cstring_loopsound, 0x80, 0x8, 0x0, _cstring_un2, 0xd8, 0x20, 0x0, _cstring_legsanim, 0xcc, 0xa, 0x1, _cstring_torsoanim, 0xd0, 0xa, 0x1, _cstring_ftorsopitch, 0xdc, 0x0, 0x1, _cstring_fwaistpitch, 0xe0, 0x0, 0x1, _cstring_iheadicon, 0x90, 0x4, 0x1, _cstring_iheadiconteam, 0x94, 0x2, 0x1, _cstring_lerpapostrdurati, 0x38, 0x20, 0x1, _cstring_lerpuanonymousda3, 0x60, 0x20, 0x1, _cstring_lerpuanonymousda4, 0x64, 0x20, 0x1, _cstring_lerpuanonymousda5, 0x68, 0x20, 0x1, _cstring_partbits0, 0xe4, 0x20, 0x1, _cstring_partbits1, 0xe8, 0x20, 0x1, _cstring_partbits2, 0xec, 0x20, 0x1, _cstring_partbits3, 0xf0, 0x20, 0x1, 0x0, 0x0, 0x0, 0x0
helicopterEntityStateFields: dd _cstring_etype, 0x4, 0x8, 0x1, _cstring_lerppostrbase0, 0x18, 0xffffffa4, 0x0, _cstring_lerpapostrbase0, 0x3c, 0xffffff9c, 0x0, _cstring_lerpapostrbase2, 0x44, 0xffffff9c, 0x0, _cstring_lerpuvehiclegunp, 0x64, 0x0, 0x0, _cstring_lerppostrbase1, 0x1c, 0xffffffa5, 0x0, _cstring_lerpapostrbase1, 0x40, 0xffffff9c, 0x0, _cstring_lerppostrbase2, 0x20, 0xffffffa6, 0x0, _cstring_lerpuvehicleguny, 0x68, 0x0, 0x0, _cstring_eventsequence, 0xa0, 0x8, 0x0, _cstring_un1helicoptersta, 0xd4, 0x3, 0x0, _cstring_time2, 0x70, 0xffffff9f, 0x0, _cstring_events0, 0xa4, 0xffffffa2, 0x0, _cstring_events1, 0xa8, 0xffffffa2, 0x0, _cstring_events2, 0xac, 0xffffffa2, 0x0, _cstring_events3, 0xb0, 0xffffffa2, 0x0, _cstring_eventparms1, 0xb8, 0xffffffa3, 0x0, _cstring_eventparms0, 0xb4, 0xffffffa3, 0x0, _cstring_eventparms2, 0xbc, 0xffffffa3, 0x0, _cstring_eventparms3, 0xc0, 0xffffffa3, 0x0, _cstring_loopsound, 0x80, 0x8, 0x0, _cstring_lerppostrtype, 0xc, 0x8, 0x0, _cstring_lerpapostrtype, 0x30, 0x8, 0x0, _cstring_un2, 0xd8, 0x20, 0x0, _cstring_weapon, 0xc4, 0x7, 0x0, _cstring_lerpuvehicleteam, 0x6c, 0x8, 0x0, _cstring_weaponmodel, 0xc8, 0x4, 0x0, _cstring_groundentitynum, 0x7c, 0xffffffa0, 0x0, _cstring_eventparm, 0x9c, 0xffffffa3, 0x0, _cstring_lerppostrdelta0, 0x24, 0x0, 0x0, _cstring_lerppostrdelta1, 0x28, 0x0, 0x0, _cstring_lerppostrdelta2, 0x2c, 0x0, 0x0, _cstring_lerppostrtime, 0x10, 0xffffff9f, 0x0, _cstring_legsanim, 0xcc, 0xa, 0x0, _cstring_surftype, 0x84, 0x8, 0x0, _cstring_otherentitynum, 0x74, 0xa, 0x0, _cstring_lerpeflags, 0x8, 0xffffff9e, 0x0, _cstring_index, 0x88, 0xa, 0x0, _cstring_lerpuvehiclemate, 0x60, 0xffffff9f, 0x0, _cstring_lerpapostrtime, 0x34, 0x20, 0x0, _cstring_lerpapostrdelta0, 0x48, 0x0, 0x0, _cstring_lerpapostrdelta2, 0x50, 0x0, 0x0, _cstring_torsoanim, 0xd0, 0xa, 0x0, _cstring_solid, 0x98, 0x18, 0x0, _cstring_lerppostrduratio, 0x14, 0x20, 0x0, _cstring_lerpapostrdelta1, 0x4c, 0x0, 0x0, _cstring_attackerentitynu, 0x78, 0xa, 0x0, _cstring_fwaistpitch, 0xe0, 0x0, 0x0, _cstring_ftorsopitch, 0xdc, 0x0, 0x0, _cstring_lerpuvehiclebody, 0x54, 0xffffff9c, 0x0, _cstring_lerpuvehiclebody1, 0x58, 0xffffff9c, 0x0, _cstring_iheadicon, 0x90, 0x4, 0x0, _cstring_iheadiconteam, 0x94, 0x2, 0x0, _cstring_lerpapostrdurati, 0x38, 0x20, 0x0, _cstring_partbits0, 0xe4, 0x20, 0x1, _cstring_partbits1, 0xe8, 0x20, 0x1, _cstring_partbits2, 0xec, 0x20, 0x1, _cstring_partbits3, 0xf0, 0x20, 0x1
planeStateFields: dd _cstring_etype, 0x4, 0x8, 0x1, _cstring_lerppostrbase0, 0x18, 0x0, 0x2, _cstring_lerppostrbase1, 0x1c, 0x0, 0x2, _cstring_lerppostrbase2, 0x20, 0x0, 0x2, _cstring_index, 0x88, 0xa, 0x2, _cstring_lerppostrdelta0, 0x24, 0x0, 0x2, _cstring_lerppostrdelta1, 0x28, 0x0, 0x2, _cstring_lerppostrtime, 0x10, 0xffffff9f, 0x2, _cstring_lerppostrtype, 0xc, 0x8, 0x2, _cstring_lerppostrduratio, 0x14, 0x20, 0x2, _cstring_lerpuvehicleteam, 0x6c, 0x8, 0x2, _cstring_lerpapostrbase1, 0x40, 0xffffff9c, 0x2, _cstring_lerppostrdelta2, 0x2c, 0x0, 0x0, _cstring_events0, 0xa4, 0xffffffa2, 0x0, _cstring_eventsequence, 0xa0, 0x8, 0x0, _cstring_eventparms0, 0xb4, 0xffffffa3, 0x0, _cstring_events1, 0xa8, 0xffffffa2, 0x0, _cstring_eventparms1, 0xb8, 0xffffffa3, 0x0, _cstring_loopsound, 0x80, 0x8, 0x0, _cstring_lerpapostrtype, 0x30, 0x8, 0x0, _cstring_eventparm, 0x9c, 0xffffffa3, 0x0, _cstring_weapon, 0xc4, 0x7, 0x0, _cstring_weaponmodel, 0xc8, 0x4, 0x0, _cstring_surftype, 0x84, 0x8, 0x0, _cstring_lerpuanonymousda, 0x54, 0x20, 0x0, _cstring_time2, 0x70, 0xffffff9f, 0x0, _cstring_solid, 0x98, 0x18, 0x0, _cstring_un2, 0xd8, 0x20, 0x0, _cstring_groundentitynum, 0x7c, 0xffffffa0, 0x0, _cstring_un1, 0xd4, 0x8, 0x0, _cstring_lerpapostrbase0, 0x3c, 0xffffff9c, 0x0, _cstring_clientnum, 0x8c, 0x7, 0x0, _cstring_events2, 0xac, 0xffffffa2, 0x0, _cstring_eventparms2, 0xbc, 0xffffffa3, 0x0, _cstring_events3, 0xb0, 0xffffffa2, 0x0, _cstring_lerpapostrbase2, 0x44, 0xffffff9c, 0x0, _cstring_lerpapostrtime, 0x34, 0x20, 0x0, _cstring_lerpapostrdelta0, 0x48, 0x0, 0x0, _cstring_lerpapostrdelta2, 0x50, 0x0, 0x0, _cstring_eventparms3, 0xc0, 0xffffffa3, 0x0, _cstring_lerpapostrdelta1, 0x4c, 0x0, 0x0, _cstring_attackerentitynu, 0x78, 0xa, 0x0, _cstring_fwaistpitch, 0xe0, 0x0, 0x0, _cstring_ftorsopitch, 0xdc, 0x0, 0x0, _cstring_iheadicon, 0x90, 0x4, 0x0, _cstring_iheadiconteam, 0x94, 0x2, 0x0, _cstring_lerpapostrdurati, 0x38, 0x20, 0x0, _cstring_torsoanim, 0xd0, 0xa, 0x0, _cstring_lerpeflags, 0x8, 0xffffff9e, 0x0, _cstring_legsanim, 0xcc, 0xa, 0x0, _cstring_otherentitynum, 0x74, 0xa, 0x0, _cstring_lerpuanonymousda1, 0x58, 0x20, 0x0, _cstring_lerpuanonymousda2, 0x5c, 0x20, 0x0, _cstring_lerpuanonymousda3, 0x60, 0x20, 0x1, _cstring_lerpuanonymousda4, 0x64, 0x20, 0x1, _cstring_lerpuanonymousda5, 0x68, 0x20, 0x1, _cstring_partbits0, 0xe4, 0x20, 0x1, _cstring_partbits1, 0xe8, 0x20, 0x1, _cstring_partbits2, 0xec, 0x20, 0x1, _cstring_partbits3, 0xf0, 0x20, 0x1
archivedEntityFields: dd _cstring_absmin1, 0x104, 0x0, 0x0, _cstring_absmax1, 0x110, 0x0, 0x0, _cstring_absmin0, 0x100, 0x0, 0x0, _cstring_absmax0, 0x10c, 0x0, 0x0, _cstring_lerppostrbase1, 0x1c, 0x0, 0x0, _cstring_lerppostrbase0, 0x18, 0x0, 0x0, _cstring_absmax2, 0x114, 0x0, 0x0, _cstring_lerppostrbase2, 0x20, 0x0, 0x0, _cstring_absmin2, 0x108, 0x0, 0x0, _cstring_groundentitynum, 0x7c, 0xa, 0x0, _cstring_lerpapostrbase1, 0x40, 0x0, 0x0, _cstring_etype, 0x4, 0x8, 0x0, _cstring_lerpapostrbase0, 0x3c, 0x0, 0x0, _cstring_clientnum, 0x8c, 0x7, 0x0, _cstring_lerpapostrbase2, 0x44, 0x0, 0x0, _cstring_lerpeflags, 0x8, 0xffffff9e, 0x0, _cstring_svflags, 0xf4, 0x20, 0x0, _cstring_events0, 0xa4, 0x8, 0x0, _cstring_eventsequence, 0xa0, 0x8, 0x0, _cstring_index, 0x88, 0xa, 0x0, _cstring_legsanim, 0xcc, 0xa, 0x0, _cstring_events1, 0xa8, 0xffffffa2, 0x0, _cstring_events2, 0xac, 0xffffffa2, 0x0, _cstring_events3, 0xb0, 0xffffffa2, 0x0, _cstring_weapon, 0xc4, 0x7, 0x0, _cstring_weaponmodel, 0xc8, 0x4, 0x0, _cstring_lerppostrtype, 0xc, 0x8, 0x0, _cstring_lerpapostrtype, 0x30, 0x8, 0x0, _cstring_iheadicon, 0x90, 0x4, 0x0, _cstring_iheadiconteam, 0x94, 0x2, 0x0, _cstring_solid, 0x98, 0x18, 0x0, _cstring_eventparms0, 0xb4, 0xffffffa3, 0x0, _cstring_torsoanim, 0xd0, 0xa, 0x0, _cstring_lerpuanonymousda1, 0x58, 0x20, 0x0, _cstring_lerppostrtime, 0x10, 0xffffff9f, 0x0, _cstring_lerppostrdelta0, 0x24, 0x0, 0x0, _cstring_lerppostrdelta1, 0x28, 0x0, 0x0, _cstring_lerppostrdelta2, 0x2c, 0x0, 0x0, _cstring_otherentitynum, 0x74, 0xa, 0x0, _cstring_eventparms1, 0xb8, 0xffffffa3, 0x0, _cstring_surftype, 0x84, 0x8, 0x0, _cstring_eventparm, 0x9c, 0xffffffa3, 0x0, _cstring_eventparms2, 0xbc, 0xffffffa3, 0x0, _cstring_un1, 0xd4, 0x8, 0x0, _cstring_eventparms3, 0xc0, 0x8, 0x0, _cstring_lerppostrduratio, 0x14, 0x20, 0x0, _cstring_fwaistpitch, 0xe0, 0x0, 0x0, _cstring_ftorsopitch, 0xdc, 0x0, 0x0, _cstring_lerpapostrtime, 0x34, 0xffffff9f, 0x0, _cstring_lerpapostrdelta0, 0x48, 0x0, 0x0, _cstring_lerpapostrdelta2, 0x50, 0x0, 0x0, _cstring_clientmask0, 0xf8, 0x20, 0x0, _cstring_clientmask1, 0xfc, 0x20, 0x0, _cstring_lerpapostrdelta1, 0x4c, 0x0, 0x0, _cstring_lerpuanonymousda, 0x54, 0x20, 0x0, _cstring_attackerentitynu, 0x78, 0xa, 0x0, _cstring_time2, 0x70, 0xffffff9f, 0x0, _cstring_lerpuanonymousda2, 0x5c, 0x20, 0x0, _cstring_un2, 0xd8, 0x20, 0x0, _cstring_lerpapostrdurati, 0x38, 0x20, 0x0, _cstring_loopsound, 0x80, 0x8, 0x0, _cstring_lerpuanonymousda3, 0x60, 0x20, 0x0, _cstring_lerpuanonymousda4, 0x64, 0x20, 0x0, _cstring_lerpuanonymousda5, 0x68, 0x20, 0x0, _cstring_lerpuanonymousda6, 0x6c, 0x20, 0x0, _cstring_partbits0, 0xe4, 0x20, 0x0, _cstring_partbits1, 0xe8, 0x20, 0x0, _cstring_partbits2, 0xec, 0x20, 0x0, _cstring_partbits3, 0xf0, 0x20, 0x0, 0x0, 0x0, 0x0, 0x0
clientStateFields: dd _cstring_modelindex, 0x8, 0x9, 0x0, _cstring_name0, 0x3c, 0x20, 0x0, _cstring_rank, 0x50, 0x8, 0x0, _cstring_prestige, 0x54, 0x8, 0x0, _cstring_team, 0x4, 0x2, 0x0, _cstring_attachedvehentnu, 0x5c, 0xa, 0x0, _cstring_name4, 0x40, 0x20, 0x0, _cstring_attachmodelindex, 0xc, 0x9, 0x0, _cstring_name8, 0x44, 0x20, 0x0, _cstring_perks, 0x58, 0x20, 0x0, _cstring_name12, 0x48, 0x20, 0x0, _cstring_attachmodelindex1, 0x10, 0x9, 0x0, _cstring_maxsprinttimemul, 0x4c, 0x0, 0x0, _cstring_attachedvehsloti, 0x60, 0x2, 0x0, _cstring_attachtagindex5, 0x38, 0x5, 0x0, _cstring_attachtagindex0, 0x24, 0x5, 0x0, _cstring_attachtagindex1, 0x28, 0x5, 0x0, _cstring_attachtagindex2, 0x2c, 0x5, 0x0, _cstring_attachtagindex3, 0x30, 0x5, 0x0, _cstring_attachtagindex4, 0x34, 0x5, 0x0, _cstring_attachmodelindex2, 0x14, 0x9, 0x0, _cstring_attachmodelindex3, 0x18, 0x9, 0x0, _cstring_attachmodelindex4, 0x1c, 0x9, 0x0, _cstring_attachmodelindex5, 0x20, 0x9, 0x0
corpseEntityStateFields: dd _cstring_etype, 0x4, 0x8, 0x1, _cstring_lerpeflags, 0x8, 0xffffff9e, 0x0, _cstring_lerppostrtime, 0x10, 0xffffff9f, 0x0, _cstring_lerppostrbase0, 0x18, 0xffffffa4, 0x0, _cstring_lerppostrbase1, 0x1c, 0xffffffa5, 0x0, _cstring_lerppostrbase2, 0x20, 0xffffffa6, 0x0, _cstring_lerppostrtype, 0xc, 0x8, 0x0, _cstring_lerpapostrtype, 0x30, 0x8, 0x0, _cstring_lerpapostrbase1, 0x40, 0xffffff9c, 0x0, _cstring_clientnum, 0x8c, 0x7, 0x0, _cstring_legsanim, 0xcc, 0xa, 0x0, _cstring_lerpapostrbase0, 0x3c, 0xffffff9c, 0x0, _cstring_lerpapostrbase2, 0x44, 0xffffff9c, 0x0, _cstring_torsoanim, 0xd0, 0xa, 0x0, _cstring_groundentitynum, 0x7c, 0xffffffa0, 0x0, _cstring_lerppostrdelta0, 0x24, 0x0, 0x0, _cstring_lerppostrdelta1, 0x28, 0x0, 0x0, _cstring_lerppostrdelta2, 0x2c, 0x0, 0x0, _cstring_lerpuplayermovem, 0x58, 0xfffffff8, 0x1, _cstring_eventsequence, 0xa0, 0x8, 0x1, _cstring_events0, 0xa4, 0xffffffa2, 0x1, _cstring_events1, 0xa8, 0xffffffa2, 0x1, _cstring_events2, 0xac, 0xffffffa2, 0x1, _cstring_events3, 0xb0, 0xffffffa2, 0x1, _cstring_ftorsopitch, 0xdc, 0x0, 0x1, _cstring_eventparms1, 0xb8, 0xffffffa3, 0x1, _cstring_eventparms0, 0xb4, 0xffffffa3, 0x1, _cstring_eventparms2, 0xbc, 0xffffffa3, 0x1, _cstring_weapon, 0xc4, 0x7, 0x1, _cstring_weaponmodel, 0xc8, 0x4, 0x1, _cstring_eventparms3, 0xc0, 0xffffffa3, 0x1, _cstring_solid, 0x98, 0x18, 0x1, _cstring_lerppostrduratio, 0x14, 0x20, 0x1, _cstring_fwaistpitch, 0xe0, 0x0, 0x1, _cstring_eventparm, 0x9c, 0xffffffa3, 0x1, _cstring_iheadicon, 0x90, 0x4, 0x1, _cstring_iheadiconteam, 0x94, 0x2, 0x1, _cstring_surftype, 0x84, 0x8, 0x1, _cstring_un1, 0xd4, 0x8, 0x1, _cstring_otherentitynum, 0x74, 0xa, 0x1, _cstring_index, 0x88, 0xa, 0x1, _cstring_lerpapostrdelta0, 0x48, 0x0, 0x1, _cstring_lerpapostrdelta1, 0x4c, 0x0, 0x1, _cstring_lerpapostrdelta2, 0x50, 0x0, 0x1, _cstring_time2, 0x70, 0xffffff9f, 0x1, _cstring_loopsound, 0x80, 0x8, 0x1, _cstring_attackerentitynu, 0x78, 0xa, 0x1, _cstring_lerpapostrtime, 0x34, 0x20, 0x1, _cstring_lerpuplayerleanf, 0x54, 0x0, 0x1, _cstring_lerpapostrdurati, 0x38, 0x20, 0x1, _cstring_un2, 0xd8, 0x20, 0x1, _cstring_lerpuanonymousda2, 0x5c, 0x20, 0x1, _cstring_lerpuanonymousda3, 0x60, 0x20, 0x1, _cstring_lerpuanonymousda4, 0x64, 0x20, 0x1, _cstring_lerpuanonymousda5, 0x68, 0x20, 0x1, _cstring_partbits0, 0xe4, 0x20, 0x1, _cstring_partbits1, 0xe8, 0x20, 0x1, _cstring_partbits2, 0xec, 0x20, 0x1, _cstring_partbits3, 0xf0, 0x20, 0x1, 0x0, 0x0, 0x0, 0x0
entityStateFields: dd _cstring_etype, 0x4, 0x8, 0x0, _cstring_lerpeflags, 0x8, 0xffffff9e, 0x0, _cstring_lerppostrbase0, 0x18, 0xffffffa4, 0x0, _cstring_lerppostrbase1, 0x1c, 0xffffffa5, 0x0, _cstring_lerppostrbase2, 0x20, 0xffffffa6, 0x0, _cstring_events0, 0xa4, 0xffffffa2, 0x0, _cstring_eventsequence, 0xa0, 0x8, 0x0, _cstring_weapon, 0xc4, 0x7, 0x0, _cstring_weaponmodel, 0xc8, 0x4, 0x0, _cstring_eventparms0, 0xb4, 0xffffffa3, 0x0, _cstring_surftype, 0x84, 0x8, 0x0, _cstring_lerpuanonymousda, 0x54, 0x20, 0x0, _cstring_time2, 0x70, 0xffffff9f, 0x0, _cstring_index, 0x88, 0xa, 0x0, _cstring_solid, 0x98, 0x18, 0x0, _cstring_un2, 0xd8, 0x20, 0x0, _cstring_groundentitynum, 0x7c, 0xffffffa0, 0x0, _cstring_un1, 0xd4, 0x8, 0x0, _cstring_lerpapostrbase1, 0x40, 0xffffff9c, 0x0, _cstring_lerpapostrbase0, 0x3c, 0xffffff9c, 0x0, _cstring_clientnum, 0x8c, 0x7, 0x0, _cstring_lerppostrdelta0, 0x24, 0x0, 0x0, _cstring_lerppostrdelta1, 0x28, 0x0, 0x0, _cstring_lerppostrdelta2, 0x2c, 0x0, 0x0, _cstring_events1, 0xa8, 0xffffffa2, 0x0, _cstring_events2, 0xac, 0xffffffa2, 0x0, _cstring_eventparms1, 0xb8, 0xffffffa3, 0x0, _cstring_eventparms2, 0xbc, 0xffffffa3, 0x0, _cstring_lerppostrtime, 0x10, 0xffffff9f, 0x0, _cstring_lerppostrtype, 0xc, 0x8, 0x0, _cstring_eventparm, 0x9c, 0xffffffa3, 0x0, _cstring_lerpapostrtype, 0x30, 0x8, 0x0, _cstring_events3, 0xb0, 0xffffffa2, 0x0, _cstring_lerpapostrbase2, 0x44, 0xffffff9c, 0x0, _cstring_lerpapostrtime, 0x34, 0x20, 0x0, _cstring_lerpapostrdelta0, 0x48, 0x0, 0x0, _cstring_lerpapostrdelta2, 0x50, 0x0, 0x0, _cstring_eventparms3, 0xc0, 0xffffffa3, 0x0, _cstring_lerppostrduratio, 0x14, 0x20, 0x0, _cstring_lerpapostrdelta1, 0x4c, 0x0, 0x0, _cstring_attackerentitynu, 0x78, 0xa, 0x0, _cstring_fwaistpitch, 0xe0, 0x0, 0x0, _cstring_ftorsopitch, 0xdc, 0x0, 0x0, _cstring_iheadicon, 0x90, 0x4, 0x0, _cstring_iheadiconteam, 0x94, 0x2, 0x0, _cstring_lerpapostrdurati, 0x38, 0x20, 0x0, _cstring_torsoanim, 0xd0, 0xa, 0x0, _cstring_legsanim, 0xcc, 0xa, 0x0, _cstring_loopsound, 0x80, 0x8, 0x0, _cstring_otherentitynum, 0x74, 0xa, 0x0, _cstring_lerpuanonymousda1, 0x58, 0x20, 0x0, _cstring_lerpuanonymousda2, 0x5c, 0x20, 0x0, _cstring_lerpuanonymousda3, 0x60, 0x20, 0x0, _cstring_lerpuanonymousda4, 0x64, 0x20, 0x0, _cstring_lerpuanonymousda5, 0x68, 0x20, 0x0, _cstring_partbits0, 0xe4, 0x20, 0x0, _cstring_partbits1, 0xe8, 0x20, 0x0, _cstring_partbits2, 0xec, 0x20, 0x0, _cstring_partbits3, 0xf0, 0x20, 0x0, 0x0, 0x0, 0x0, 0x0
eventEntityStateFields: dd _cstring_etype, 0x4, 0x8, 0x0, _cstring_lerppostrbase0, 0x18, 0xffffffa4, 0x0, _cstring_lerppostrbase1, 0x1c, 0xffffffa5, 0x0, _cstring_lerppostrbase2, 0x20, 0xffffffa6, 0x0, _cstring_eventparm, 0x9c, 0xffffffa3, 0x0, _cstring_surftype, 0x84, 0x8, 0x0, _cstring_otherentitynum, 0x74, 0xa, 0x0, _cstring_un1, 0xd4, 0x8, 0x0, _cstring_lerpuanonymousda, 0x54, 0x20, 0x0, _cstring_lerpuanonymousda1, 0x58, 0x20, 0x0, _cstring_attackerentitynu, 0x78, 0xa, 0x0, _cstring_lerpapostrbase0, 0x3c, 0xffffff9c, 0x0, _cstring_clientnum, 0x8c, 0x7, 0x0, _cstring_weapon, 0xc4, 0x7, 0x0, _cstring_weaponmodel, 0xc8, 0x4, 0x0, _cstring_lerpuanonymousda2, 0x5c, 0x20, 0x0, _cstring_index, 0x88, 0xa, 0x0, _cstring_solid, 0x98, 0x18, 0x0, _cstring_lerpapostrbase1, 0x40, 0xffffff9c, 0x0, _cstring_lerpapostrbase2, 0x44, 0xffffff9c, 0x0, _cstring_groundentitynum, 0x7c, 0xffffffa0, 0x0, _cstring_lerpuanonymousda4, 0x64, 0x20, 0x0, _cstring_lerpuanonymousda5, 0x68, 0x20, 0x0, _cstring_iheadicon, 0x90, 0x4, 0x0, _cstring_iheadiconteam, 0x94, 0x2, 0x0, _cstring_events0, 0xa4, 0xffffffa2, 0x0, _cstring_eventparms0, 0xb4, 0xffffffa3, 0x0, _cstring_lerppostrtype, 0xc, 0x8, 0x0, _cstring_lerpapostrtype, 0x30, 0x8, 0x0, _cstring_lerpapostrtime, 0x34, 0x20, 0x0, _cstring_lerpapostrdelta0, 0x48, 0x0, 0x0, _cstring_lerpapostrdelta2, 0x50, 0x0, 0x0, _cstring_lerppostrdelta0, 0x24, 0x0, 0x0, _cstring_lerppostrdelta1, 0x28, 0x0, 0x0, _cstring_lerppostrdelta2, 0x2c, 0x0, 0x0, _cstring_eventsequence, 0xa0, 0x8, 0x0, _cstring_lerppostrtime, 0x10, 0xffffff9f, 0x0, _cstring_events1, 0xa8, 0xffffffa2, 0x0, _cstring_events2, 0xac, 0xffffffa2, 0x0, _cstring_eventparms1, 0xb8, 0xffffffa3, 0x0, _cstring_eventparms2, 0xbc, 0xffffffa3, 0x0, _cstring_events3, 0xb0, 0xffffffa2, 0x0, _cstring_eventparms3, 0xc0, 0xffffffa3, 0x0, _cstring_lerpeflags, 0x8, 0xffffff9e, 0x0, _cstring_lerppostrduratio, 0x14, 0x20, 0x0, _cstring_lerpapostrdelta1, 0x4c, 0x0, 0x0, _cstring_time2, 0x70, 0xffffff9f, 0x0, _cstring_loopsound, 0x80, 0x8, 0x0, _cstring_un2, 0xd8, 0x20, 0x0, _cstring_torsoanim, 0xd0, 0xa, 0x1, _cstring_legsanim, 0xcc, 0xa, 0x1, _cstring_fwaistpitch, 0xe0, 0x0, 0x1, _cstring_ftorsopitch, 0xdc, 0x0, 0x1, _cstring_lerpuanonymousda3, 0x60, 0x20, 0x1, _cstring_lerpapostrdurati, 0x38, 0x20, 0x1, _cstring_partbits0, 0xe4, 0x20, 0x1, _cstring_partbits1, 0xe8, 0x20, 0x1, _cstring_partbits2, 0xec, 0x20, 0x1, _cstring_partbits3, 0xf0, 0x20, 0x1, 0x0, 0x0, 0x0, 0x0
hudElemFields: dd _cstring_colorrgba, 0x24, 0xffffffab, 0x0, _cstring_fadestarttime, 0x2c, 0xffffff9f, 0x0, _cstring_fromcolorrgba, 0x28, 0xffffffab, 0x0, _cstring_y, 0x8, 0xffffffa5, 0x0, _cstring_type, 0x0, 0x4, 0x0, _cstring_materialindex, 0x40, 0x8, 0x0, _cstring_height, 0x3c, 0xa, 0x0, _cstring_width, 0x38, 0xa, 0x0, _cstring_x, 0x4, 0xffffffa4, 0x0, _cstring_fadetime, 0x30, 0x10, 0x0, _cstring_z, 0xc, 0xffffffa6, 0x0, _cstring_value, 0x78, 0x0, 0x0, _cstring_alignscreen, 0x20, 0x6, 0x0, _cstring_sort, 0x80, 0x0, 0x0, _cstring_alignorg, 0x1c, 0x4, 0x0, _cstring_offscreenmateria, 0x44, 0x8, 0x0, _cstring_fontscale, 0x14, 0xffffffaa, 0x0, _cstring_text, 0x7c, 0x9, 0x0, _cstring_font, 0x18, 0x4, 0x0, _cstring_scalestarttime, 0x50, 0xffffff9f, 0x0, _cstring_scaletime, 0x54, 0x10, 0x0, _cstring_fromwidth, 0x48, 0xa, 0x0, _cstring_fromheight, 0x4c, 0xa, 0x0, _cstring_targetentnum, 0x10, 0xa, 0x0, _cstring_glowcolorrgba, 0x84, 0xffffffab, 0x0, _cstring_fxbirthtime, 0x88, 0xffffff9f, 0x0, _cstring_soundid, 0x98, 0x5, 0x0, _cstring_fxlettertime, 0x8c, 0xc, 0x0, _cstring_fxdecaystarttime, 0x90, 0x10, 0x0, _cstring_fxdecayduration, 0x94, 0x10, 0x0, _cstring_flags, 0x9c, 0x3, 0x0, _cstring_label, 0x34, 0x9, 0x0, _cstring_time, 0x70, 0xffffff9f, 0x0, _cstring_movestarttime, 0x68, 0xffffff9f, 0x0, _cstring_movetime, 0x6c, 0x10, 0x0, _cstring_fromx, 0x58, 0xffffff9d, 0x0, _cstring_fromy, 0x5c, 0xffffff9d, 0x0, _cstring_fromalignscreen, 0x64, 0x6, 0x0, _cstring_fromalignorg, 0x60, 0x4, 0x0, _cstring_duration, 0x74, 0x20, 0x0
itemEntityStateFields: dd _cstring_etype, 0x4, 0x8, 0x0, _cstring_lerppostrbase2, 0x20, 0xffffffa6, 0x0, _cstring_lerppostrbase1, 0x1c, 0xffffffa5, 0x0, _cstring_lerppostrbase0, 0x18, 0xffffffa4, 0x0, _cstring_lerppostrtime, 0x10, 0xffffff9f, 0x0, _cstring_lerppostrtype, 0xc, 0x8, 0x2, _cstring_lerppostrdelta2, 0x2c, 0x0, 0x2, _cstring_lerppostrdelta0, 0x24, 0x0, 0x2, _cstring_lerppostrdelta1, 0x28, 0x0, 0x0, _cstring_clientnum, 0x8c, 0x7, 0x2, _cstring_lerpapostrbase1, 0x40, 0xffffff9c, 0x0, _cstring_lerpapostrtype, 0x30, 0x8, 0x2, _cstring_lerpapostrtime, 0x34, 0xffffff9f, 0x2, _cstring_lerpapostrdelta0, 0x48, 0x0, 0x2, _cstring_lerpapostrdelta1, 0x4c, 0x0, 0x2, _cstring_lerpapostrdelta2, 0x50, 0x0, 0x0, _cstring_index, 0x88, 0xa, 0x0, _cstring_lerpapostrbase2, 0x44, 0xffffff9c, 0x0, _cstring_groundentitynum, 0x7c, 0xffffffa0, 0x0, _cstring_lerppostrduratio, 0x14, 0x20, 0x0, _cstring_lerpapostrbase0, 0x3c, 0xffffff9c, 0x0, _cstring_solid, 0x98, 0x18, 0x0, _cstring_eventparm, 0x9c, 0xffffffa3, 0x0, _cstring_lerpeflags, 0x8, 0xffffff9e, 0x0, _cstring_eventsequence, 0xa0, 0x8, 0x0, _cstring_events0, 0xa4, 0xffffffa2, 0x0, _cstring_eventparms0, 0xb4, 0xffffffa3, 0x0, _cstring_weapon, 0xc4, 0x7, 0x0, _cstring_weaponmodel, 0xc8, 0x4, 0x0, _cstring_surftype, 0x84, 0x8, 0x0, _cstring_otherentitynum, 0x74, 0xa, 0x0, _cstring_lerpuanonymousda, 0x54, 0x20, 0x0, _cstring_lerpuanonymousda1, 0x58, 0x20, 0x0, _cstring_lerpuanonymousda2, 0x5c, 0x20, 0x0, _cstring_eventparms1, 0xb8, 0xffffffa3, 0x0, _cstring_eventparms2, 0xbc, 0xffffffa3, 0x0, _cstring_eventparms3, 0xc0, 0xffffffa3, 0x0, _cstring_events1, 0xa8, 0xffffffa2, 0x0, _cstring_events2, 0xac, 0xffffffa2, 0x0, _cstring_events3, 0xb0, 0xffffffa2, 0x0, _cstring_attackerentitynu, 0x78, 0xa, 0x0, _cstring_un1, 0xd4, 0x8, 0x0, _cstring_time2, 0x70, 0xffffff9f, 0x0, _cstring_loopsound, 0x80, 0x8, 0x0, _cstring_un2, 0xd8, 0x20, 0x0, _cstring_legsanim, 0xcc, 0xa, 0x1, _cstring_torsoanim, 0xd0, 0xa, 0x1, _cstring_ftorsopitch, 0xdc, 0x0, 0x1, _cstring_fwaistpitch, 0xe0, 0x0, 0x1, _cstring_iheadicon, 0x90, 0x4, 0x1, _cstring_iheadiconteam, 0x94, 0x2, 0x1, _cstring_lerpapostrdurati, 0x38, 0x20, 0x1, _cstring_lerpuanonymousda3, 0x60, 0x20, 0x1, _cstring_lerpuanonymousda4, 0x64, 0x20, 0x1, _cstring_lerpuanonymousda5, 0x68, 0x20, 0x1, _cstring_partbits0, 0xe4, 0x20, 0x1, _cstring_partbits1, 0xe8, 0x20, 0x1, _cstring_partbits2, 0xec, 0x20, 0x1, _cstring_partbits3, 0xf0, 0x20, 0x1, 0x0, 0x0, 0x0, 0x0
loopFxEntityStateFields: dd _cstring_etype, 0x4, 0x8, 0x1, _cstring_lerppostrtime, 0x10, 0xffffff9f, 0x0, _cstring_lerppostrbase0, 0x18, 0xffffffa4, 0x0, _cstring_lerppostrbase1, 0x1c, 0xffffffa5, 0x0, _cstring_lerppostrdelta0, 0x24, 0x0, 0x0, _cstring_lerppostrdelta1, 0x28, 0x0, 0x0, _cstring_lerpapostrbase1, 0x40, 0xffffff9c, 0x0, _cstring_lerppostrbase2, 0x20, 0xffffffa6, 0x0, _cstring_lerppostrdelta2, 0x2c, 0x0, 0x0, _cstring_lerpapostrbase0, 0x3c, 0xffffff9c, 0x0, _cstring_lerpuloopfxculld, 0x54, 0x0, 0x0, _cstring_lerpuloopfxperio, 0x58, 0x20, 0x0, _cstring_eventsequence, 0xa0, 0x8, 0x0, _cstring_legsanim, 0xcc, 0xa, 0x0, _cstring_surftype, 0x84, 0x8, 0x0, _cstring_otherentitynum, 0x74, 0xa, 0x0, _cstring_un1, 0xd4, 0x8, 0x0, _cstring_lerpeflags, 0x8, 0xffffff9e, 0x0, _cstring_groundentitynum, 0x7c, 0xffffffa0, 0x0, _cstring_clientnum, 0x8c, 0x7, 0x0, _cstring_events0, 0xa4, 0xffffffa2, 0x0, _cstring_events1, 0xa8, 0xffffffa2, 0x0, _cstring_events2, 0xac, 0xffffffa2, 0x0, _cstring_weapon, 0xc4, 0x7, 0x0, _cstring_weaponmodel, 0xc8, 0x4, 0x0, _cstring_eventparms1, 0xb8, 0xffffffa3, 0x0, _cstring_eventparms0, 0xb4, 0xffffffa3, 0x0, _cstring_eventparms2, 0xbc, 0xffffffa3, 0x0, _cstring_index, 0x88, 0xa, 0x0, _cstring_lerppostrtype, 0xc, 0x8, 0x0, _cstring_lerpapostrtype, 0x30, 0x8, 0x0, _cstring_events3, 0xb0, 0xffffffa2, 0x0, _cstring_lerpapostrbase2, 0x44, 0xffffff9c, 0x0, _cstring_lerpapostrtime, 0x34, 0x20, 0x0, _cstring_lerpapostrdelta0, 0x48, 0x0, 0x0, _cstring_lerpapostrdelta2, 0x50, 0x0, 0x0, _cstring_torsoanim, 0xd0, 0xa, 0x0, _cstring_eventparms3, 0xc0, 0xffffffa3, 0x0, _cstring_solid, 0x98, 0x18, 0x0, _cstring_lerppostrduratio, 0x14, 0x20, 0x0, _cstring_lerpapostrdelta1, 0x4c, 0x0, 0x0, _cstring_un2, 0xd8, 0x20, 0x0, _cstring_time2, 0x70, 0xffffff9f, 0x0, _cstring_loopsound, 0x80, 0x8, 0x0, _cstring_attackerentitynu, 0x78, 0xa, 0x0, _cstring_fwaistpitch, 0xe0, 0x0, 0x0, _cstring_ftorsopitch, 0xdc, 0x0, 0x0, _cstring_iheadicon, 0x90, 0x4, 0x0, _cstring_iheadiconteam, 0x94, 0x2, 0x0, _cstring_eventparm, 0x9c, 0xffffffa3, 0x0, _cstring_lerpapostrdurati, 0x38, 0x20, 0x0, _cstring_lerpuanonymousda2, 0x5c, 0x20, 0x1, _cstring_lerpuanonymousda3, 0x60, 0x20, 0x1, _cstring_lerpuanonymousda4, 0x64, 0x20, 0x1, _cstring_lerpuanonymousda5, 0x68, 0x20, 0x1, _cstring_partbits0, 0xe4, 0x20, 0x1, _cstring_partbits1, 0xe8, 0x20, 0x1, _cstring_partbits2, 0xec, 0x20, 0x1, _cstring_partbits3, 0xf0, 0x20, 0x1, 0x0, 0x0, 0x0, 0x0
missileEntityStateFields: dd _cstring_etype, 0x4, 0x8, 0x0, _cstring_lerppostrbase1, 0x1c, 0xffffffa5, 0x0, _cstring_lerppostrbase0, 0x18, 0xffffffa4, 0x0, _cstring_lerppostrdelta0, 0x24, 0x0, 0x0, _cstring_lerppostrdelta1, 0x28, 0x0, 0x0, _cstring_lerppostrdelta2, 0x2c, 0x0, 0x0, _cstring_lerpapostrbase2, 0x44, 0xffffff9c, 0x0, _cstring_lerpapostrbase0, 0x3c, 0xffffff9c, 0x0, _cstring_lerppostrbase2, 0x20, 0xffffffa6, 0x0, _cstring_lerppostrtime, 0x10, 0xffffff9f, 0x0, _cstring_lerpapostrtime, 0x34, 0xffffff9f, 0x0, _cstring_lerpapostrdelta0, 0x48, 0x0, 0x0, _cstring_eventsequence, 0xa0, 0x8, 0x0, _cstring_groundentitynum, 0x7c, 0xffffffa0, 0x0, _cstring_lerpapostrbase1, 0x40, 0xffffff9c, 0x0, _cstring_lerppostrtype, 0xc, 0x8, 0x0, _cstring_lerpapostrtype, 0x30, 0x8, 0x0, _cstring_lerpeflags, 0x8, 0xffffff9e, 0x0, _cstring_surftype, 0x84, 0x8, 0x0, _cstring_lerpapostrdelta2, 0x50, 0x0, 0x0, _cstring_lerpumissilelaun, 0x54, 0xffffff9f, 0x0, _cstring_weapon, 0xc4, 0x7, 0x0, _cstring_eventparms0, 0xb4, 0xffffffa3, 0x0, _cstring_events0, 0xa4, 0xffffffa2, 0x0, _cstring_events1, 0xa8, 0xffffffa2, 0x0, _cstring_index, 0x88, 0xa, 0x0, _cstring_clientnum, 0x8c, 0x7, 0x0, _cstring_eventparms1, 0xb8, 0xffffffa3, 0x0, _cstring_events2, 0xac, 0xffffffa2, 0x0, _cstring_eventparms2, 0xbc, 0xffffffa3, 0x0, _cstring_un2, 0xd8, 0x1, 0x0, _cstring_events3, 0xb0, 0xffffffa2, 0x0, _cstring_eventparms3, 0xc0, 0xffffffa3, 0x0, _cstring_weaponmodel, 0xc8, 0x4, 0x0, _cstring_eventparm, 0x9c, 0xffffffa3, 0x0, _cstring_un1, 0xd4, 0x8, 0x0, _cstring_otherentitynum, 0x74, 0xa, 0x0, _cstring_lerpapostrdelta1, 0x4c, 0x0, 0x0, _cstring_attackerentitynu, 0x78, 0xa, 0x0, _cstring_lerppostrduratio, 0x14, 0x20, 0x0, _cstring_loopsound, 0x80, 0x8, 0x0, _cstring_lerpuanonymousda1, 0x58, 0x20, 0x0, _cstring_lerpuanonymousda2, 0x5c, 0x20, 0x0, _cstring_solid, 0x98, 0x18, 0x0, _cstring_time2, 0x70, 0xffffff9f, 0x0, _cstring_legsanim, 0xcc, 0xa, 0x1, _cstring_torsoanim, 0xd0, 0xa, 0x1, _cstring_ftorsopitch, 0xdc, 0x0, 0x1, _cstring_fwaistpitch, 0xe0, 0x0, 0x1, _cstring_iheadicon, 0x90, 0x4, 0x1, _cstring_iheadiconteam, 0x94, 0x2, 0x1, _cstring_lerpapostrdurati, 0x38, 0x20, 0x1, _cstring_lerpuanonymousda3, 0x60, 0x20, 0x1, _cstring_lerpuanonymousda4, 0x64, 0x20, 0x1, _cstring_lerpuanonymousda5, 0x68, 0x20, 0x1, _cstring_partbits0, 0xe4, 0x20, 0x1, _cstring_partbits1, 0xe8, 0x20, 0x1, _cstring_partbits2, 0xec, 0x20, 0x1, _cstring_partbits3, 0xf0, 0x20, 0x1, 0x0, 0x0, 0x0, 0x0
msg_hData: dd 0x42e86, 0x10ca9, 0x9e0c, 0x9d4a, 0xbbbb, 0x985e, 0xbdf6, 0x6c2c, 0x4530, 0x3c4f, 0x3062, 0x2a06, 0x24cc, 0x26fb, 0x2482, 0x3b98, 0x3380, 0x37ef, 0x1e46, 0x1c35, 0x17cf, 0x1622, 0x313e, 0x1c5f, 0x1c9a, 0x16af, 0x2d6c, 0x1837, 0x1e92, 0x18cd, 0x1e12, 0x25b8, 0x7128, 0x142c, 0x353d, 0x17aa, 0x1289, 0x11a7, 0x144f, 0x12c7, 0x14cb, 0xd69, 0xd7f, 0xdeb, 0x1b43, 0x146d, 0x138a, 0x1147, 0x371c, 0x353f, 0x2e84, 0x2e19, 0x2815, 0x1dd3, 0x1c2f, 0x1c32, 0x2489, 0x1811, 0x1639, 0x1229, 0x13a2, 0x16ea, 0x1f42, 0x2926, 0x3c15, 0x22aa, 0x2e16, 0x1c1f, 0x320e, 0x17d7, 0x1376, 0x1754, 0x1a7b, 0x1341, 0x14d5, 0xdaf, 0x10f9, 0x17d2, 0x3725, 0x4038, 0x192e, 0xbf6, 0x1257, 0xc0d, 0x1066, 0xfad, 0xf26, 0xd56, 0x158a, 0xffc, 0xcbd, 0x1284, 0x11c0, 0xc37, 0xd39, 0x1e08, 0x2b76, 0x1911, 0x14b1, 0x11b1, 0x18bd, 0x1072, 0x1b90, 0x1232, 0x182e, 0xdb8, 0xb1b, 0xd97, 0x2499, 0x1453, 0x1374, 0x16f9, 0x1d55, 0x10c4, 0x17d1, 0x1574, 0x1228, 0xbb4, 0x137c, 0x1043, 0x1986, 0xfa1, 0x10f6, 0x1188, 0x1797, 0x12db, 0x1bc8, 0x21ce, 0x6858, 0x21f0, 0x25cd, 0x2498, 0x1c29, 0xd47, 0x1179, 0x1245, 0x2b4f, 0xffe, 0xd4c, 0x1050, 0x1a4d, 0xe76, 0x2c9c, 0x1303, 0x1750, 0xd93, 0xe8a, 0xde8, 0x11db, 0xaa0, 0xc75, 0xc1b, 0x11f3, 0xfcc, 0x1132, 0xf31, 0x137d, 0xc72, 0xc51, 0x150b, 0x1f54, 0xcfa, 0xebf, 0xb46, 0x105f, 0xb3f, 0xc26, 0xa10, 0xe6d, 0x984, 0x1347, 0xbc9, 0xdd2, 0x1638, 0xd74, 0xd52, 0x23d2, 0x1264, 0xd61, 0xcc9, 0xe64, 0x11d4, 0x1b2d, 0x12d1, 0x1468, 0xcd5, 0xc47, 0x1083, 0x15fe, 0x17a5, 0x16db, 0x196b, 0x357c, 0x204e, 0x2044, 0x15cf, 0x1d90, 0xff2, 0xf90, 0x11de, 0x1928, 0xdcd, 0xbb0, 0xa94, 0x1446, 0xf31, 0xed7, 0x11e6, 0x1784, 0xd88, 0x114f, 0xda7, 0xb5a, 0x8c3, 0xf10, 0xcf9, 0x2237, 0xf58, 0xb59, 0xf23, 0x111e, 0xf2d, 0x16ed, 0x185b, 0x29bd, 0x1151, 0x121f, 0x10d1, 0x124b, 0xb21, 0xd33, 0x124b, 0x1565, 0x101f, 0xf0d, 0xdbb, 0x1331, 0xe11, 0x1475, 0x19d9, 0x233b, 0x12f9, 0x1010, 0x143c, 0x176e, 0x133d, 0x137a, 0x18dd, 0x1efa, 0x173c, 0x1f95, 0x1e34, 0x21c3, 0x22c5, 0x25b5, 0x7f87, 0x14317d, 0x1430e8, 0x1430e8, 0x1430e8, 0x1430e8, 0x1430f9, 0x1430e8, 0x1430e8, 0x14312b, 0x14312b, 0x14312b, 0x1430e8, 0x1430e8, 0x14317d
numArchivedEntityFields: dd 0x45, 0xbaa69eb6, 0x3d29ef0e, 0x3efff486, 0x3f7fff90, 0xc6fffe00, 0x45bb8000, 0x46ea6000, 0x453b8000, 0xc0a00000, 0x476a6000, 0x358637bd, 0x3ea8f5c3, 0x42a80000, 0x41c80000, 0x421c0000, 0xbfaaaaab, 0x43380000, 0x43390000, 0x433a0000, 0x43240000, 0x43250000, 0x43260000, 0x43520000, 0x436b0000, 0x43820000, 0x43d70000, 0x43aa0000, 0x43958000, 0x43870000, 0x46fd0200, 0x3a800000, 0x38000100, 0x30800200, 0xc9742400, 0x49742400, 0x3b03126f, 0xbf7d70a4, 0x3c23d70b, 0x3f3504f3, 0xbc23d70a, 0x3fddb3d7, 0x3fb504f7, 0x3f866666, 0x3daaaaab, 0x3ec00000, 0x44c80000, 0x5368d4a5, 0x49741dc0, 0xbe2aaaab, 0xc0490fdb, 0x7f800000, 0x3c808081, 0x3f2aaaab, 0xbe000000, 0x3b000000, 0x432a0000, 0x3e124925, 0x48000000, 0x3fc80000, 0x3e991687, 0x3f1645a2, 0x3de978d5, 0x40079857, 0x39800000, 0x3f7c0000, 0x4cbebc20, 0x3f700000, 0xb9800000, 0xb9000000, 0x3a000000, 0x36800000, 0x43ff8000, 0x447fc000, 0x3f802000, 0x3f801000, 0x3f002000, 0x3f001000, 0x3eb40000, 0x437fffbe, 0x437c7333, 0x3f900000, 0x3fe00000, 0x3d83126f, 0x3fb1dd1e, 0x3ff72705, 0x3ea8b4e5, 0x40cfed92, 0x4228e20f, 0x3b81c977, 0x3d00a9a0, 0x3dc0d550, 0x44280000, 0x44d80000, 0x44b40000, 0x3f7f0000, 0x3c400000, 0x3f7d0000, 0xba03126f, 0x4f800000, 0x3aabd8fb, 0x469c4000, 0x44fa0000, 0x3f6e147b, 0xc2f00000, 0x3fe38e39, 0x46800100, 0x3ec3ef15, 0x3f0a8bd4
		db 0x75, 0x3d, 0xa7
numClientStateFields: dd 0x18
numHudElemFields: dd 0x28
numObjectiveFields: dd 0x6
numPlayerStateFields: dd 0x8d
objectiveFields: dd _cstring_origin0, 0x4, 0x0, 0x0, _cstring_origin1, 0x8, 0x0, 0x0, _cstring_origin2, 0xc, 0x0, 0x0, _cstring_icon, 0x18, 0xc, 0x0, _cstring_entnum, 0x10, 0xa, 0x0, _cstring_teamnum, 0x14, 0x4, 0x0
playerEntityStateFields: dd _cstring_etype, 0x4, 0x8, 0x1, _cstring_lerppostrbase0, 0x18, 0xffffffa4, 0x2, _cstring_lerppostrbase1, 0x1c, 0xffffffa5, 0x2, _cstring_lerpuplayermovem, 0x58, 0xfffffff8, 0x0, _cstring_lerpapostrbase1, 0x40, 0xffffff9c, 0x0, _cstring_lerppostrbase2, 0x20, 0xffffffa6, 0x0, _cstring_eventsequence, 0xa0, 0x8, 0x0, _cstring_lerpapostrbase0, 0x3c, 0xffffff9c, 0x0, _cstring_legsanim, 0xcc, 0xa, 0x0, _cstring_torsoanim, 0xd0, 0xa, 0x0, _cstring_lerpeflags, 0x8, 0xffffff9e, 0x0, _cstring_events0, 0xa4, 0xffffffa2, 0x0, _cstring_events1, 0xa8, 0xffffffa2, 0x0, _cstring_events2, 0xac, 0xffffffa2, 0x0, _cstring_events3, 0xb0, 0xffffffa2, 0x0, _cstring_eventparms1, 0xb8, 0xffffffa3, 0x0, _cstring_eventparms0, 0xb4, 0xffffffa3, 0x0, _cstring_eventparms2, 0xbc, 0xffffffa3, 0x0, _cstring_eventparms3, 0xc0, 0xffffffa3, 0x0, _cstring_groundentitynum, 0x7c, 0xffffffa0, 0x0, _cstring_ftorsopitch, 0xdc, 0x0, 0x0, _cstring_fwaistpitch, 0xe0, 0x0, 0x0, _cstring_solid, 0x98, 0x18, 0x0, _cstring_weapon, 0xc4, 0x7, 0x0, _cstring_eventparm, 0x9c, 0xffffffa3, 0x0, _cstring_lerppostrtype, 0xc, 0x8, 0x0, _cstring_lerpapostrtype, 0x30, 0x8, 0x0, _cstring_lerpapostrbase2, 0x44, 0xffffff9c, 0x0, _cstring_clientnum, 0x8c, 0x7, 0x0, _cstring_otherentitynum, 0x74, 0xa, 0x0, _cstring_weaponmodel, 0xc8, 0x4, 0x0, _cstring_iheadicon, 0x90, 0x4, 0x0, _cstring_iheadiconteam, 0x94, 0x2, 0x0, _cstring_lerpuplayerleanf, 0x54, 0x0, 0x0, _cstring_lerppostrdelta1, 0x28, 0x0, 0x1, _cstring_lerppostrdelta0, 0x24, 0x0, 0x1, _cstring_lerppostrduratio, 0x14, 0x20, 0x1, _cstring_lerppostrtime, 0x10, 0xffffff9f, 0x1, _cstring_lerppostrdelta2, 0x2c, 0x0, 0x1, _cstring_surftype, 0x84, 0x8, 0x1, _cstring_un1, 0xd4, 0x8, 0x1, _cstring_index, 0x88, 0xa, 0x1, _cstring_lerpapostrdelta0, 0x48, 0x0, 0x1, _cstring_lerpapostrdelta1, 0x4c, 0x0, 0x1, _cstring_lerpapostrdelta2, 0x50, 0x0, 0x1, _cstring_time2, 0x70, 0xffffff9f, 0x1, _cstring_loopsound, 0x80, 0x8, 0x1, _cstring_attackerentitynu, 0x78, 0xa, 0x1, _cstring_lerpapostrtime, 0x34, 0x20, 0x1, _cstring_lerpapostrdurati, 0x38, 0x20, 0x1, _cstring_lerpuanonymousda2, 0x5c, 0x20, 0x1, _cstring_lerpuanonymousda3, 0x60, 0x20, 0x1, _cstring_lerpuanonymousda4, 0x64, 0x20, 0x1, _cstring_lerpuanonymousda5, 0x68, 0x20, 0x1, _cstring_un2, 0xd8, 0x20, 0x1, _cstring_partbits0, 0xe4, 0x20, 0x1, _cstring_partbits1, 0xe8, 0x20, 0x1, _cstring_partbits2, 0xec, 0x20, 0x1, _cstring_partbits3, 0xf0, 0x20, 0x1, 0x0, 0x0, 0x0, 0x0
playerStateFields: dd _cstring_commandtime, 0x0, 0xffffff9f, 0x0, _cstring_viewangles1, 0x10c, 0xffffffa9, 0x0, _cstring_viewangles0, 0x108, 0xffffffa9, 0x0, _cstring_viewangles2, 0x110, 0xffffffa9, 0x0, _cstring_origin0, 0x1c, 0xffffffa8, 0x3, _cstring_origin1, 0x20, 0xffffffa8, 0x3, _cstring_bobcycle, 0x8, 0x8, 0x3, _cstring_velocity1, 0x2c, 0xffffffa8, 0x3, _cstring_velocity0, 0x28, 0xffffffa8, 0x3, _cstring_movementdir, 0xac, 0xfffffff8, 0x3, _cstring_eventsequence, 0xb4, 0x8, 0x0, _cstring_legsanim, 0x8c, 0xa, 0x0, _cstring_origin2, 0x24, 0xffffffa8, 0x3, _cstring_weapontime, 0x3c, 0xfffffff0, 0x0, _cstring_aimspreadscale, 0x628, 0xffffffa8, 0x0, _cstring_torsotimer, 0x90, 0x10, 0x0, _cstring_pm_flags, 0xc, 0x15, 0x0, _cstring_weapanim, 0x624, 0xa, 0x0, _cstring_weaponstate, 0xec, 0x5, 0x0, _cstring_velocity2, 0x30, 0xffffffa8, 0x3, _cstring_events0, 0xb8, 0x8, 0x0, _cstring_events1, 0xbc, 0x8, 0x0, _cstring_events2, 0xc0, 0x8, 0x0, _cstring_events3, 0xc4, 0x8, 0x0, _cstring_eventparms0, 0xc8, 0x8, 0x0, _cstring_eventparms1, 0xcc, 0x8, 0x0, _cstring_eventparms2, 0xd0, 0x8, 0x0, _cstring_eventparms3, 0xd4, 0x8, 0x0, _cstring_torsoanim, 0x94, 0xa, 0x0, _cstring_holdbreathscale, 0x5d4, 0xffffffa8, 0x0, _cstring_eflags, 0xb0, 0xffffff9e, 0x0, _cstring_viewheightcurren, 0x118, 0xffffffa8, 0x0, _cstring_fweaponposfrac, 0xf4, 0xffffffa8, 0x0, _cstring_legstimer, 0x88, 0x10, 0x0, _cstring_viewheighttarget, 0x114, 0xfffffff8, 0x0, _cstring_sprintstatelasts, 0x5c0, 0xffffff9f, 0x0, _cstring_sprintstatelasts1, 0x5c4, 0xffffff9f, 0x0, _cstring_weapon, 0xe8, 0x7, 0x0, _cstring_weapondelay, 0x40, 0xfffffff0, 0x0, _cstring_sprintstatesprin, 0x5c8, 0xe, 0x0, _cstring_weapflags, 0x10, 0x9, 0x0, _cstring_groundentitynum, 0x70, 0xa, 0x0, _cstring_damagetimer, 0xa0, 0xa, 0x0, _cstring_weapons0, 0x55c, 0x20, 0x0, _cstring_weapons1, 0x560, 0x20, 0x0, _cstring_weaponold0, 0x56c, 0x20, 0x0, _cstring_delta_angles1, 0x68, 0xffffff9c, 0x0, _cstring_offhandindex, 0xe0, 0x7, 0x0, _cstring_pm_time, 0x18, 0xfffffff0, 0x0, _cstring_otherflags, 0x14, 0x5, 0x0, _cstring_movespeedscalemu, 0x5dc, 0x0, 0x0, _cstring_perks, 0x5fc, 0x20, 0x0, _cstring_killcamentity, 0x8a0, 0xa, 0x0, _cstring_throwbackgrenade, 0x48, 0xa, 0x0, _cstring_actionslottype2, 0x608, 0x2, 0x0, _cstring_delta_angles0, 0x64, 0xffffff9c, 0x0, _cstring_speed, 0x60, 0x10, 0x0, _cstring_viewlocked_entnu, 0x59c, 0x10, 0x0, _cstring_gravity, 0x58, 0x10, 0x0, _cstring_actionslottype0, 0x600, 0x2, 0x0, _cstring_dofnearblur, 0x648, 0x0, 0x0, _cstring_doffarblur, 0x64c, 0x0, 0x0, _cstring_clientnum, 0xdc, 0x8, 0x0, _cstring_damageevent, 0x138, 0x8, 0x0, _cstring_viewheightlerpta, 0x120, 0xfffffff8, 0x0, _cstring_damageyaw, 0x13c, 0x8, 0x0, _cstring_viewmodelindex, 0x104, 0x9, 0x0, _cstring_damageduration, 0xa4, 0x10, 0x0, _cstring_damagepitch, 0x140, 0x8, 0x0, _cstring_flinchyawanim, 0xa8, 0x2, 0x0, _cstring_weaponshotcount, 0xf0, 0x3, 0x0, _cstring_viewheightlerpdo, 0x124, 0x1, 0x2, _cstring_cursorhint, 0x5a0, 0x8, 0x0, _cstring_cursorhintstring, 0x5a4, 0xfffffff8, 0x0, _cstring_cursorhintentind, 0x5a8, 0xa, 0x0, _cstring_viewheightlerpti, 0x11c, 0x20, 0x0, _cstring_offhandsecondary, 0xe4, 0x1, 0x2, _cstring_radarenabled, 0x5b0, 0x1, 0x2, _cstring_pm_type, 0x4, 0x8, 0x0, _cstring_ftorsopitch, 0x5cc, 0x0, 0x0, _cstring_holdbreathtimer, 0x5d8, 0x10, 0x0, _cstring_actionslotparam2, 0x618, 0x7, 0x0, _cstring_jumptime, 0x80, 0x20, 0x0, _cstring_mantlestateflags, 0x5ec, 0x5, 0x0, _cstring_fwaistpitch, 0x5d0, 0x0, 0x0, _cstring_grenadetimeleft, 0x44, 0xfffffff0, 0x0, _cstring_pronedirection, 0x58c, 0x0, 0x0, _cstring_mantlestatetimer, 0x5e4, 0x20, 0x0, _cstring_damagecount, 0x144, 0x7, 0x0, _cstring_shellshocktime, 0x630, 0xffffff9f, 0x0, _cstring_shellshockdurati, 0x634, 0x10, 0x2, _cstring_sprintstatesprin1, 0x5b8, 0x1, 0x2, _cstring_shellshockindex, 0x62c, 0x4, 0x0, _cstring_pronetorsopitch, 0x594, 0x0, 0x0, _cstring_sprintstatesprin2, 0x5bc, 0x1, 0x2, _cstring_actionslotparam3, 0x61c, 0x7, 0x0, _cstring_weapons3, 0x568, 0x20, 0x0, _cstring_actionslottype3, 0x60c, 0x2, 0x0, _cstring_pronedirectionpi, 0x590, 0x0, 0x0, _cstring_jumporiginz, 0x84, 0x0, 0x0, _cstring_mantlestateyaw, 0x5e0, 0x0, 0x0, _cstring_mantlestatetrans, 0x5e8, 0x4, 0x0, _cstring_weaponrechamber0, 0x57c, 0x20, 0x0, _cstring_throwbackgrenade1, 0x4c, 0xfffffff0, 0x0, _cstring_weaponold3, 0x578, 0x20, 0x0, _cstring_weaponold1, 0x570, 0x20, 0x0, _cstring_foliagesoundtime, 0x54, 0xffffff9f, 0x0, _cstring_vladdervec0, 0x74, 0x0, 0x0, _cstring_viewlocked, 0x598, 0x2, 0x0, _cstring_deltatime, 0x89c, 0x20, 0x0, _cstring_viewangleclampra, 0x134, 0x0, 0x0, _cstring_viewangleclampba, 0x12c, 0x0, 0x0, _cstring_viewangleclampra1, 0x130, 0x0, 0x0, _cstring_vladdervec1, 0x78, 0x0, 0x0, _cstring_locationselectio, 0x5b4, 0x8, 0x0, _cstring_meleechargetime, 0x5f8, 0xffffff9f, 0x0, _cstring_meleechargeyaw, 0x5f0, 0xffffff9c, 0x0, _cstring_meleechargedist, 0x5f4, 0x8, 0x0, _cstring_icompassplayerin, 0x5ac, 0x20, 0x0, _cstring_weapons2, 0x564, 0x20, 0x0, _cstring_actionslottype1, 0x604, 0x2, 0x0, _cstring_weaponold2, 0x574, 0x20, 0x0, _cstring_vladdervec2, 0x7c, 0x0, 0x0, _cstring_weaponrestrictki, 0x50, 0xfffffff0, 0x0, _cstring_delta_angles2, 0x6c, 0xffffff9c, 0x0, _cstring_spreadoverride, 0xfc, 0x6, 0x0, _cstring_spreadoverridest, 0x100, 0x2, 0x0, _cstring_actionslotparam0, 0x610, 0x7, 0x0, _cstring_actionslotparam1, 0x614, 0x7, 0x0, _cstring_dofnearstart, 0x638, 0x0, 0x0, _cstring_dofnearend, 0x63c, 0x0, 0x0, _cstring_doffarstart, 0x640, 0x0, 0x0, _cstring_doffarend, 0x644, 0x0, 0x0, _cstring_dofviewmodelstar, 0x650, 0x0, 0x0, _cstring_dofviewmodelend, 0x654, 0x0, 0x0, _cstring_viewangleclampba1, 0x128, 0x0, 0x0, _cstring_weaponrechamber1, 0x580, 0x20, 0x0, _cstring_weaponrechamber2, 0x584, 0x20, 0x0, _cstring_weaponrechamber3, 0x588, 0x20, 0x0, _cstring_leanf, 0x5c, 0x0, 0x0, _cstring_adsdelaytime, 0xf8, 0x20, 0x1, 0x0, 0x0, 0x0, 0x0
scriptMoverStateFields: dd _cstring_etype, 0x4, 0x8, 0x0, _cstring_lerppostrbase0, 0x18, 0xffffffa4, 0x0, _cstring_lerppostrbase1, 0x1c, 0xffffffa5, 0x0, _cstring_lerppostrbase2, 0x20, 0xffffffa6, 0x0, _cstring_eventsequence, 0xa0, 0x8, 0x0, _cstring_lerppostrtime, 0x10, 0xffffff9f, 0x0, _cstring_index, 0x88, 0xa, 0x0, _cstring_lerppostrduratio, 0x14, 0x20, 0x0, _cstring_lerppostrtype, 0xc, 0x8, 0x0, _cstring_lerpapostrbase1, 0x40, 0xffffff9c, 0x0, _cstring_lerppostrdelta2, 0x2c, 0x0, 0x0, _cstring_lerpapostrdelta0, 0x48, 0x0, 0x0, _cstring_lerpapostrtype, 0x30, 0x8, 0x0, _cstring_lerppostrdelta0, 0x24, 0x0, 0x0, _cstring_lerppostrdelta1, 0x28, 0x0, 0x0, _cstring_lerpapostrdelta1, 0x4c, 0x0, 0x0, _cstring_lerpapostrdelta2, 0x50, 0x0, 0x0, _cstring_lerpapostrbase2, 0x44, 0xffffff9c, 0x0, _cstring_lerpapostrbase0, 0x3c, 0xffffff9c, 0x0, _cstring_eventparms0, 0xb4, 0xffffffa3, 0x0, _cstring_partbits0, 0xe4, 0x20, 0x0, _cstring_events0, 0xa4, 0xffffffa2, 0x0, _cstring_lerpapostrtime, 0x34, 0x20, 0x0, _cstring_partbits1, 0xe8, 0x20, 0x0, _cstring_events1, 0xa8, 0xffffffa2, 0x0, _cstring_eventparms1, 0xb8, 0xffffffa3, 0x0, _cstring_eventparms2, 0xbc, 0xffffffa3, 0x0, _cstring_events2, 0xac, 0xffffffa2, 0x0, _cstring_lerpapostrdurati, 0x38, 0x20, 0x0, _cstring_eventparms3, 0xc0, 0xffffffa3, 0x0, _cstring_events3, 0xb0, 0xffffffa2, 0x0, _cstring_loopsound, 0x80, 0x8, 0x0, _cstring_solid, 0x98, 0x18, 0x0, _cstring_lerpeflags, 0x8, 0xffffff9e, 0x0, _cstring_groundentitynum, 0x7c, 0xffffffa0, 0x0, _cstring_clientnum, 0x8c, 0x7, 0x0, _cstring_eventparm, 0x9c, 0xffffffa3, 0x0, _cstring_weapon, 0xc4, 0x7, 0x0, _cstring_surftype, 0x84, 0x8, 0x0, _cstring_otherentitynum, 0x74, 0xa, 0x0, _cstring_lerpuanonymousda, 0x54, 0x20, 0x0, _cstring_lerpuanonymousda1, 0x58, 0x20, 0x0, _cstring_lerpuanonymousda2, 0x5c, 0x20, 0x0, _cstring_weaponmodel, 0xc8, 0x4, 0x0, _cstring_time2, 0x70, 0xffffff9f, 0x0, _cstring_un2, 0xd8, 0x20, 0x0, _cstring_un1, 0xd4, 0x8, 0x0, _cstring_attackerentitynu, 0x78, 0xa, 0x0, _cstring_fwaistpitch, 0xe0, 0x0, 0x0, _cstring_ftorsopitch, 0xdc, 0x0, 0x0, _cstring_iheadicon, 0x90, 0x4, 0x0, _cstring_iheadiconteam, 0x94, 0x2, 0x0, _cstring_torsoanim, 0xd0, 0xa, 0x0, _cstring_legsanim, 0xcc, 0xa, 0x0, _cstring_lerpuanonymousda3, 0x60, 0x20, 0x0, _cstring_lerpuanonymousda4, 0x64, 0x20, 0x0, _cstring_lerpuanonymousda5, 0x68, 0x20, 0x0, _cstring_partbits2, 0xec, 0x20, 0x0, _cstring_partbits3, 0xf0, 0x20, 0x0, 0x0, 0x0, 0x0, 0x0
soundBlendEntityStateFields: dd _cstring_etype, 0x4, 0x8, 0x1, _cstring_lerppostrtime, 0x10, 0xffffff9f, 0x0, _cstring_lerppostrbase0, 0x18, 0xffffffa4, 0x0, _cstring_lerppostrbase1, 0x1c, 0xffffffa5, 0x0, _cstring_lerppostrdelta0, 0x24, 0x0, 0x0, _cstring_lerppostrdelta1, 0x28, 0x0, 0x0, _cstring_lerpapostrbase1, 0x40, 0xffffff9c, 0x0, _cstring_lerppostrbase2, 0x20, 0xffffffa6, 0x0, _cstring_lerppostrdelta2, 0x2c, 0x0, 0x0, _cstring_lerpapostrbase0, 0x3c, 0xffffff9c, 0x0, _cstring_eventsequence, 0xa0, 0x8, 0x0, _cstring_legsanim, 0xcc, 0xa, 0x0, _cstring_surftype, 0x84, 0x8, 0x0, _cstring_otherentitynum, 0x74, 0xa, 0x0, _cstring_un1, 0xd4, 0x8, 0x0, _cstring_lerpeflags, 0x8, 0xffffff9e, 0x0, _cstring_groundentitynum, 0x7c, 0xffffffa0, 0x0, _cstring_clientnum, 0x8c, 0x7, 0x0, _cstring_events0, 0xa4, 0xffffffa2, 0x0, _cstring_events1, 0xa8, 0xffffffa2, 0x0, _cstring_events2, 0xac, 0xffffffa2, 0x0, _cstring_weapon, 0xc4, 0x7, 0x0, _cstring_weaponmodel, 0xc8, 0x4, 0x0, _cstring_eventparms1, 0xb8, 0xffffffa3, 0x0, _cstring_eventparms0, 0xb4, 0xffffffa3, 0x0, _cstring_eventparms2, 0xbc, 0xffffffa3, 0x0, _cstring_index, 0x88, 0xa, 0x0, _cstring_lerppostrtype, 0xc, 0x8, 0x0, _cstring_lerpapostrtype, 0x30, 0x8, 0x0, _cstring_events3, 0xb0, 0xffffffa2, 0x0, _cstring_lerpapostrbase2, 0x44, 0xffffff9c, 0x0, _cstring_lerpapostrtime, 0x34, 0x20, 0x0, _cstring_lerpapostrdelta0, 0x48, 0x0, 0x0, _cstring_lerpapostrdelta2, 0x50, 0x0, 0x0, _cstring_torsoanim, 0xd0, 0xa, 0x0, _cstring_eventparms3, 0xc0, 0xffffffa3, 0x0, _cstring_solid, 0x98, 0x18, 0x0, _cstring_lerppostrduratio, 0x14, 0x20, 0x0, _cstring_lerpapostrdelta1, 0x4c, 0x0, 0x0, _cstring_un2, 0xd8, 0x20, 0x0, _cstring_time2, 0x70, 0xffffff9f, 0x0, _cstring_loopsound, 0x80, 0x8, 0x0, _cstring_attackerentitynu, 0x78, 0xa, 0x0, _cstring_fwaistpitch, 0xe0, 0x0, 0x0, _cstring_ftorsopitch, 0xdc, 0x0, 0x0, _cstring_iheadicon, 0x90, 0x4, 0x0, _cstring_iheadiconteam, 0x94, 0x2, 0x0, _cstring_eventparm, 0x9c, 0xffffffa3, 0x0, _cstring_lerpusoundblendl, 0x54, 0x0, 0x0, _cstring_lerpapostrdurati, 0x38, 0x20, 0x0, _cstring_lerpuanonymousda1, 0x58, 0x20, 0x1, _cstring_lerpuanonymousda2, 0x5c, 0x20, 0x1, _cstring_lerpuanonymousda3, 0x60, 0x20, 0x1, _cstring_lerpuanonymousda4, 0x64, 0x20, 0x1, _cstring_lerpuanonymousda5, 0x68, 0x20, 0x1, _cstring_partbits0, 0xe4, 0x20, 0x1, _cstring_partbits1, 0xe8, 0x20, 0x1, _cstring_partbits2, 0xec, 0x20, 0x1, _cstring_partbits3, 0xf0, 0x20, 0x1, 0x0, 0x0, 0x0, 0x0
vehicleEntityStateFields: dd _cstring_etype, 0x4, 0x8, 0x1, _cstring_lerppostrtime, 0x10, 0xffffff9f, 0x0, _cstring_lerppostrbase0, 0x18, 0xffffffa4, 0x0, _cstring_lerppostrbase1, 0x1c, 0xffffffa5, 0x0, _cstring_lerppostrdelta0, 0x24, 0x0, 0x0, _cstring_lerppostrdelta1, 0x28, 0x0, 0x0, _cstring_lerpuvehicleguny, 0x68, 0x0, 0x0, _cstring_lerpapostrbase1, 0x40, 0xffffff9c, 0x0, _cstring_lerppostrbase2, 0x20, 0xffffffa6, 0x0, _cstring_lerppostrdelta2, 0x2c, 0x0, 0x0, _cstring_lerpapostrbase0, 0x3c, 0xffffff9c, 0x0, _cstring_eventsequence, 0xa0, 0x8, 0x0, _cstring_legsanim, 0xcc, 0xa, 0x0, _cstring_surftype, 0x84, 0x8, 0x0, _cstring_otherentitynum, 0x74, 0xa, 0x0, _cstring_un1, 0xd4, 0x8, 0x0, _cstring_lerpeflags, 0x8, 0xffffff9e, 0x0, _cstring_groundentitynum, 0x7c, 0xffffffa0, 0x0, _cstring_clientnum, 0x8c, 0x7, 0x0, _cstring_events0, 0xa4, 0xffffffa2, 0x0, _cstring_events1, 0xa8, 0xffffffa2, 0x0, _cstring_events2, 0xac, 0xffffffa2, 0x0, _cstring_weapon, 0xc4, 0x7, 0x0, _cstring_weaponmodel, 0xc8, 0x4, 0x0, _cstring_eventparms1, 0xb8, 0xffffffa3, 0x0, _cstring_eventparms0, 0xb4, 0xffffffa3, 0x0, _cstring_eventparms2, 0xbc, 0xffffffa3, 0x0, _cstring_index, 0x88, 0xa, 0x0, _cstring_lerpuvehiclemate, 0x60, 0xffffff9f, 0x0, _cstring_lerppostrtype, 0xc, 0x8, 0x0, _cstring_lerpapostrtype, 0x30, 0x8, 0x0, _cstring_events3, 0xb0, 0xffffffa2, 0x0, _cstring_lerpapostrbase2, 0x44, 0xffffff9c, 0x0, _cstring_lerpapostrtime, 0x34, 0x20, 0x0, _cstring_lerpapostrdelta0, 0x48, 0x0, 0x0, _cstring_lerpapostrdelta2, 0x50, 0x0, 0x0, _cstring_torsoanim, 0xd0, 0xa, 0x0, _cstring_eventparms3, 0xc0, 0xffffffa3, 0x0, _cstring_lerpuvehiclegunp, 0x64, 0x0, 0x0, _cstring_solid, 0x98, 0x18, 0x0, _cstring_lerppostrduratio, 0x14, 0x20, 0x0, _cstring_lerpapostrdelta1, 0x4c, 0x0, 0x0, _cstring_un2, 0xd8, 0x20, 0x0, _cstring_time2, 0x70, 0xffffff9f, 0x0, _cstring_loopsound, 0x80, 0x8, 0x0, _cstring_attackerentitynu, 0x78, 0xa, 0x0, _cstring_fwaistpitch, 0xe0, 0x0, 0x0, _cstring_ftorsopitch, 0xdc, 0x0, 0x0, _cstring_lerpuvehiclebody, 0x54, 0xffffff9c, 0x0, _cstring_lerpuvehiclebody1, 0x58, 0xffffff9c, 0x0, _cstring_iheadicon, 0x90, 0x4, 0x0, _cstring_iheadiconteam, 0x94, 0x2, 0x0, _cstring_eventparm, 0x9c, 0xffffffa3, 0x0, _cstring_lerpuvehiclestee, 0x5c, 0x0, 0x0, _cstring_lerpapostrdurati, 0x38, 0x20, 0x0, _cstring_partbits0, 0xe4, 0x20, 0x1, _cstring_partbits1, 0xe8, 0x20, 0x1, _cstring_partbits2, 0xec, 0x20, 0x1, _cstring_partbits3, 0xf0, 0x20, 0x1, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of sv_msg_write_mp:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_w3i_3i_remove:		db "W|%3i: #%-3i remove",0ah,0
_cstring_warning_empty_re:		db "WARNING: Empty reliable command",0ah,0
_cstring_warning_reliable:		db "WARNING: Reliable command is too long (%i/%i) and will be truncated: ",27h,"%s",27h,0ah,0
_cstring_etype:		db "eType",0
_cstring_time2:		db "time2",0
_cstring_lerpapostrbase0:		db "lerp.apos.trBase[0]",0
_cstring_lerppostrbase0:		db "lerp.pos.trBase[0]",0
_cstring_lerppostrbase1:		db "lerp.pos.trBase[1]",0
_cstring_un1:		db "un1",0
_cstring_lerppostrbase2:		db "lerp.pos.trBase[2]",0
_cstring_lerpapostrbase2:		db "lerp.apos.trBase[2]",0
_cstring_lerpapostrbase1:		db "lerp.apos.trBase[1]",0
_cstring_lerppostrtime:		db "lerp.pos.trTime",0
_cstring_lerppostrtype:		db "lerp.pos.trType",0
_cstring_lerppostrdelta2:		db "lerp.pos.trDelta[2]",0
_cstring_lerppostrdelta0:		db "lerp.pos.trDelta[0]",0
_cstring_lerppostrdelta1:		db "lerp.pos.trDelta[1]",0
_cstring_clientnum:		db "clientNum",0
_cstring_lerpapostrtype:		db "lerp.apos.trType",0
_cstring_lerpapostrtime:		db "lerp.apos.trTime",0
_cstring_lerpapostrdelta0:		db "lerp.apos.trDelta[0]",0
_cstring_lerpapostrdelta1:		db "lerp.apos.trDelta[1]",0
_cstring_lerpapostrdelta2:		db "lerp.apos.trDelta[2]",0
_cstring_index:		db "index",0
_cstring_groundentitynum:		db "groundEntityNum",0
_cstring_lerppostrduratio:		db "lerp.pos.trDuration",0
_cstring_solid:		db "solid",0
_cstring_eventparm:		db "eventParm",0
_cstring_lerpeflags:		db "lerp.eFlags",0
_cstring_eventsequence:		db "eventSequence",0
_cstring_events0:		db "events[0]",0
_cstring_eventparms0:		db "eventParms[0]",0
_cstring_weapon:		db "weapon",0
_cstring_weaponmodel:		db "weaponModel",0
_cstring_surftype:		db "surfType",0
_cstring_otherentitynum:		db "otherEntityNum",0
_cstring_lerpuanonymousda:		db "lerp.u.anonymous.data[0]",0
_cstring_lerpuanonymousda1:		db "lerp.u.anonymous.data[1]",0
_cstring_lerpuanonymousda2:		db "lerp.u.anonymous.data[2]",0
_cstring_eventparms1:		db "eventParms[1]",0
_cstring_eventparms2:		db "eventParms[2]",0
_cstring_eventparms3:		db "eventParms[3]",0
_cstring_events1:		db "events[1]",0
_cstring_events2:		db "events[2]",0
_cstring_events3:		db "events[3]",0
_cstring_attackerentitynu:		db "attackerEntityNum",0
_cstring_loopsound:		db "loopSound",0
_cstring_un2:		db "un2",0
_cstring_legsanim:		db "legsAnim",0
_cstring_torsoanim:		db "torsoAnim",0
_cstring_ftorsopitch:		db "fTorsoPitch",0
_cstring_fwaistpitch:		db "fWaistPitch",0
_cstring_iheadicon:		db "iHeadIcon",0
_cstring_iheadiconteam:		db "iHeadIconTeam",0
_cstring_lerpapostrdurati:		db "lerp.apos.trDuration",0
_cstring_lerpuanonymousda3:		db "lerp.u.anonymous.data[3]",0
_cstring_lerpuanonymousda4:		db "lerp.u.anonymous.data[4]",0
_cstring_lerpuanonymousda5:		db "lerp.u.anonymous.data[5]",0
_cstring_partbits0:		db "partBits[0]",0
_cstring_partbits1:		db "partBits[1]",0
_cstring_partbits2:		db "partBits[2]",0
_cstring_partbits3:		db "partBits[3]",0
_cstring_lerpuvehiclegunp:		db "lerp.u.vehicle.gunPitch",0
_cstring_lerpuvehicleguny:		db "lerp.u.vehicle.gunYaw",0
_cstring_un1helicoptersta:		db "un1.helicopterStage",0
_cstring_lerpuvehicleteam:		db "lerp.u.vehicle.teamAndOwnerIndex",0
_cstring_lerpuvehiclemate:		db "lerp.u.vehicle.materialTime",0
_cstring_lerpuvehiclebody:		db "lerp.u.vehicle.bodyPitch",0
_cstring_lerpuvehiclebody1:		db "lerp.u.vehicle.bodyRoll",0
_cstring_absmin1:		db "absmin[1]",0
_cstring_absmax1:		db "absmax[1]",0
_cstring_absmin0:		db "absmin[0]",0
_cstring_absmax0:		db "absmax[0]",0
_cstring_absmax2:		db "absmax[2]",0
_cstring_absmin2:		db "absmin[2]",0
_cstring_svflags:		db "svFlags",0
_cstring_clientmask0:		db "clientMask[0]",0
_cstring_clientmask1:		db "clientMask[1]",0
_cstring_lerpuanonymousda6:		db "lerp.u.anonymous.data[6]",0
_cstring_modelindex:		db "modelindex",0
_cstring_name0:		db "name[0]",0
_cstring_rank:		db "rank",0
_cstring_prestige:		db "prestige",0
_cstring_team:		db "team",0
_cstring_attachedvehentnu:		db "attachedVehEntNum",0
_cstring_name4:		db "name[4]",0
_cstring_attachmodelindex:		db "attachModelIndex[0]",0
_cstring_name8:		db "name[8]",0
_cstring_perks:		db "perks",0
_cstring_name12:		db "name[12]",0
_cstring_attachmodelindex1:		db "attachModelIndex[1]",0
_cstring_maxsprinttimemul:		db "maxSprintTimeMultiplier",0
_cstring_attachedvehsloti:		db "attachedVehSlotIndex",0
_cstring_attachtagindex5:		db "attachTagIndex[5]",0
_cstring_attachtagindex0:		db "attachTagIndex[0]",0
_cstring_attachtagindex1:		db "attachTagIndex[1]",0
_cstring_attachtagindex2:		db "attachTagIndex[2]",0
_cstring_attachtagindex3:		db "attachTagIndex[3]",0
_cstring_attachtagindex4:		db "attachTagIndex[4]",0
_cstring_attachmodelindex2:		db "attachModelIndex[2]",0
_cstring_attachmodelindex3:		db "attachModelIndex[3]",0
_cstring_attachmodelindex4:		db "attachModelIndex[4]",0
_cstring_attachmodelindex5:		db "attachModelIndex[5]",0
_cstring_lerpuplayermovem:		db "lerp.u.player.movementDir",0
_cstring_lerpuplayerleanf:		db "lerp.u.player.leanf",0
_cstring_colorrgba:		db "color.rgba",0
_cstring_fadestarttime:		db "fadeStartTime",0
_cstring_fromcolorrgba:		db "fromColor.rgba",0
_cstring_y:		db "y",0
_cstring_type:		db "type",0
_cstring_materialindex:		db "materialIndex",0
_cstring_height:		db "height",0
_cstring_width:		db "width",0
_cstring_x:		db "x",0
_cstring_fadetime:		db "fadeTime",0
_cstring_z:		db "z",0
_cstring_value:		db "value",0
_cstring_alignscreen:		db "alignScreen",0
_cstring_sort:		db "sort",0
_cstring_alignorg:		db "alignOrg",0
_cstring_offscreenmateria:		db "offscreenMaterialIdx",0
_cstring_fontscale:		db "fontScale",0
_cstring_text:		db "text",0
_cstring_font:		db "font",0
_cstring_scalestarttime:		db "scaleStartTime",0
_cstring_scaletime:		db "scaleTime",0
_cstring_fromwidth:		db "fromWidth",0
_cstring_fromheight:		db "fromHeight",0
_cstring_targetentnum:		db "targetEntNum",0
_cstring_glowcolorrgba:		db "glowColor.rgba",0
_cstring_fxbirthtime:		db "fxBirthTime",0
_cstring_soundid:		db "soundID",0
_cstring_fxlettertime:		db "fxLetterTime",0
_cstring_fxdecaystarttime:		db "fxDecayStartTime",0
_cstring_fxdecayduration:		db "fxDecayDuration",0
_cstring_flags:		db "flags",0
_cstring_label:		db "label",0
_cstring_time:		db "time",0
_cstring_movestarttime:		db "moveStartTime",0
_cstring_movetime:		db "moveTime",0
_cstring_fromx:		db "fromX",0
_cstring_fromy:		db "fromY",0
_cstring_fromalignscreen:		db "fromAlignScreen",0
_cstring_fromalignorg:		db "fromAlignOrg",0
_cstring_duration:		db "duration",0
_cstring_lerpuloopfxculld:		db "lerp.u.loopFx.cullDist",0
_cstring_lerpuloopfxperio:		db "lerp.u.loopFx.period",0
_cstring_lerpumissilelaun:		db "lerp.u.missile.launchTime",0
_cstring_origin0:		db "origin[0]",0
_cstring_origin1:		db "origin[1]",0
_cstring_origin2:		db "origin[2]",0
_cstring_icon:		db "icon",0
_cstring_entnum:		db "entNum",0
_cstring_teamnum:		db "teamNum",0
_cstring_commandtime:		db "commandTime",0
_cstring_viewangles1:		db "viewangles[1]",0
_cstring_viewangles0:		db "viewangles[0]",0
_cstring_viewangles2:		db "viewangles[2]",0
_cstring_bobcycle:		db "bobCycle",0
_cstring_velocity1:		db "velocity[1]",0
_cstring_velocity0:		db "velocity[0]",0
_cstring_movementdir:		db "movementDir",0
_cstring_weapontime:		db "weaponTime",0
_cstring_aimspreadscale:		db "aimSpreadScale",0
_cstring_torsotimer:		db "torsoTimer",0
_cstring_pm_flags:		db "pm_flags",0
_cstring_weapanim:		db "weapAnim",0
_cstring_weaponstate:		db "weaponstate",0
_cstring_velocity2:		db "velocity[2]",0
_cstring_holdbreathscale:		db "holdBreathScale",0
_cstring_eflags:		db "eFlags",0
_cstring_viewheightcurren:		db "viewHeightCurrent",0
_cstring_fweaponposfrac:		db "fWeaponPosFrac",0
_cstring_legstimer:		db "legsTimer",0
_cstring_viewheighttarget:		db "viewHeightTarget",0
_cstring_sprintstatelasts:		db "sprintState.lastSprintStart",0
_cstring_sprintstatelasts1:		db "sprintState.lastSprintEnd",0
_cstring_weapondelay:		db "weaponDelay",0
_cstring_sprintstatesprin:		db "sprintState.sprintStartMaxLength",0
_cstring_weapflags:		db "weapFlags",0
_cstring_damagetimer:		db "damageTimer",0
_cstring_weapons0:		db "weapons[0]",0
_cstring_weapons1:		db "weapons[1]",0
_cstring_weaponold0:		db "weaponold[0]",0
_cstring_delta_angles1:		db "delta_angles[1]",0
_cstring_offhandindex:		db "offHandIndex",0
_cstring_pm_time:		db "pm_time",0
_cstring_otherflags:		db "otherFlags",0
_cstring_movespeedscalemu:		db "moveSpeedScaleMultiplier",0
_cstring_killcamentity:		db "killCamEntity",0
_cstring_throwbackgrenade:		db "throwBackGrenadeOwner",0
_cstring_actionslottype2:		db "actionSlotType[2]",0
_cstring_delta_angles0:		db "delta_angles[0]",0
_cstring_speed:		db "speed",0
_cstring_viewlocked_entnu:		db "viewlocked_entNum",0
_cstring_gravity:		db "gravity",0
_cstring_actionslottype0:		db "actionSlotType[0]",0
_cstring_dofnearblur:		db "dofNearBlur",0
_cstring_doffarblur:		db "dofFarBlur",0
_cstring_damageevent:		db "damageEvent",0
_cstring_viewheightlerpta:		db "viewHeightLerpTarget",0
_cstring_damageyaw:		db "damageYaw",0
_cstring_viewmodelindex:		db "viewmodelIndex",0
_cstring_damageduration:		db "damageDuration",0
_cstring_damagepitch:		db "damagePitch",0
_cstring_flinchyawanim:		db "flinchYawAnim",0
_cstring_weaponshotcount:		db "weaponShotCount",0
_cstring_viewheightlerpdo:		db "viewHeightLerpDown",0
_cstring_cursorhint:		db "cursorHint",0
_cstring_cursorhintstring:		db "cursorHintString",0
_cstring_cursorhintentind:		db "cursorHintEntIndex",0
_cstring_viewheightlerpti:		db "viewHeightLerpTime",0
_cstring_offhandsecondary:		db "offhandSecondary",0
_cstring_radarenabled:		db "radarEnabled",0
_cstring_pm_type:		db "pm_type",0
_cstring_holdbreathtimer:		db "holdBreathTimer",0
_cstring_actionslotparam2:		db "actionSlotParam[2]",0
_cstring_jumptime:		db "jumpTime",0
_cstring_mantlestateflags:		db "mantleState.flags",0
_cstring_grenadetimeleft:		db "grenadeTimeLeft",0
_cstring_pronedirection:		db "proneDirection",0
_cstring_mantlestatetimer:		db "mantleState.timer",0
_cstring_damagecount:		db "damageCount",0
_cstring_shellshocktime:		db "shellshockTime",0
_cstring_shellshockdurati:		db "shellshockDuration",0
_cstring_sprintstatesprin1:		db "sprintState.sprintButtonUpRequired",0
_cstring_shellshockindex:		db "shellshockIndex",0
_cstring_pronetorsopitch:		db "proneTorsoPitch",0
_cstring_sprintstatesprin2:		db "sprintState.sprintDelay",0
_cstring_actionslotparam3:		db "actionSlotParam[3]",0
_cstring_weapons3:		db "weapons[3]",0
_cstring_actionslottype3:		db "actionSlotType[3]",0
_cstring_pronedirectionpi:		db "proneDirectionPitch",0
_cstring_jumporiginz:		db "jumpOriginZ",0
_cstring_mantlestateyaw:		db "mantleState.yaw",0
_cstring_mantlestatetrans:		db "mantleState.transIndex",0
_cstring_weaponrechamber0:		db "weaponrechamber[0]",0
_cstring_throwbackgrenade1:		db "throwBackGrenadeTimeLeft",0
_cstring_weaponold3:		db "weaponold[3]",0
_cstring_weaponold1:		db "weaponold[1]",0
_cstring_foliagesoundtime:		db "foliageSoundTime",0
_cstring_vladdervec0:		db "vLadderVec[0]",0
_cstring_viewlocked:		db "viewlocked",0
_cstring_deltatime:		db "deltaTime",0
_cstring_viewangleclampra:		db "viewAngleClampRange[1]",0
_cstring_viewangleclampba:		db "viewAngleClampBase[1]",0
_cstring_viewangleclampra1:		db "viewAngleClampRange[0]",0
_cstring_vladdervec1:		db "vLadderVec[1]",0
_cstring_locationselectio:		db "locationSelectionInfo",0
_cstring_meleechargetime:		db "meleeChargeTime",0
_cstring_meleechargeyaw:		db "meleeChargeYaw",0
_cstring_meleechargedist:		db "meleeChargeDist",0
_cstring_icompassplayerin:		db "iCompassPlayerInfo",0
_cstring_weapons2:		db "weapons[2]",0
_cstring_actionslottype1:		db "actionSlotType[1]",0
_cstring_weaponold2:		db "weaponold[2]",0
_cstring_vladdervec2:		db "vLadderVec[2]",0
_cstring_weaponrestrictki:		db "weaponRestrictKickTime",0
_cstring_delta_angles2:		db "delta_angles[2]",0
_cstring_spreadoverride:		db "spreadOverride",0
_cstring_spreadoverridest:		db "spreadOverrideState",0
_cstring_actionslotparam0:		db "actionSlotParam[0]",0
_cstring_actionslotparam1:		db "actionSlotParam[1]",0
_cstring_dofnearstart:		db "dofNearStart",0
_cstring_dofnearend:		db "dofNearEnd",0
_cstring_doffarstart:		db "dofFarStart",0
_cstring_doffarend:		db "dofFarEnd",0
_cstring_dofviewmodelstar:		db "dofViewmodelStart",0
_cstring_dofviewmodelend:		db "dofViewmodelEnd",0
_cstring_viewangleclampba1:		db "viewAngleClampBase[0]",0
_cstring_weaponrechamber1:		db "weaponrechamber[1]",0
_cstring_weaponrechamber2:		db "weaponrechamber[2]",0
_cstring_weaponrechamber3:		db "weaponrechamber[3]",0
_cstring_leanf:		db "leanf",0
_cstring_adsdelaytime:		db "adsDelayTime",0
_cstring_lerpusoundblendl:		db "lerp.u.soundBlend.lerp",0
_cstring_lerpuvehiclestee:		db "lerp.u.vehicle.steerYaw",0



;All constant floats and doubles:
SECTION .rdata
_float_0_00000000:		dd 0x0	; 0
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_182_04444885:		dd 0x43360b61	; 182.044
_float_1_39999998:		dd 0x3fb33333	; 1.4
_float_10_00000000:		dd 0x41200000	; 10
_float_0_01000000:		dd 0x3c23d70a	; 0.01

