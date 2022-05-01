;Imports of cm_load_obj:
	extern _Z13G_SpawnStringPK8SpawnVarPKcS3_PS3_
	extern _Z10TempMalloci
	extern cm
	extern _Z30CM_Hunk_AllocateTempMemoryHighiPKc
	extern memcpy
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z32CM_Hunk_CheckTempMemoryHighClearv
	extern _Z27CM_Hunk_ClearTempMemoryHighv
	extern _Z13CM_Hunk_AllociPKci
	extern _Z16Com_EntityStringPi
	extern _Z21G_SetEntityParsePointPKc
	extern _Z21G_GetEntityParsePointv
	extern _Z16G_ParseSpawnVarsP8SpawnVar
	extern _Z9I_stricmpPKcS0_
	extern _Z14Com_GetBspLump8LumpTypejPj
	extern _Z10Com_MemsetPvii
	extern strcpy
	extern _Z17Com_GetBspVersionv
	extern Com_Memcpy
	extern _Z15Hunk_UserCreateiPKchhi
	extern _Z15TempMemoryResetP8HunkUser
	extern _Z16Hunk_UserDestroyP8HunkUser
	extern _Z14Com_BspHasLump8LumpType

;Exports of cm_load_obj:
	global g_purgeableEnts
	global _Z19CMod_HasSpawnStringPvPKc
	global _Z25CMod_PartionLeafBrushes_rPtiPKfS1_
	global _Z23CMod_PartionLeafBrushesPtiP7cLeaf_t
	global _Z21MapEnts_GetFromStringPKcS0_i
	global _Z10CM_Cleanupv
	global _Z12CM_GetPlanesv
	global _Z15CM_EntityStringv
	global _Z15CMod_LoadPlanesv
	global _Z16CM_GetPlaneCountv
	global _Z17CM_LoadMapFromBspPKch


SECTION .text


;CMod_HasSpawnString(void*, char const*)
_Z19CMod_HasSpawnStringPvPKc:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	lea eax, [ebp-0xc]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_null
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z13G_SpawnStringPK8SpawnVarPKcS3_PS3_
	test eax, eax
	setnz al
	movzx eax, al
	leave
	ret
	nop


;CMod_PartionLeafBrushes_r(unsigned short*, int, float const*, float const*)
_Z25CMod_PartionLeafBrushes_rPtiPKfS1_:
_Z25CMod_PartionLeafBrushes_rPtiPKfS1__210:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov [ebp-0x5c], eax
	mov [ebp-0x60], edx
	mov [ebp-0x64], ecx
	mov dword [esp], 0x14
	call _Z10TempMalloci
	mov [ebp-0x4c], eax
	mov dword [eax], 0x0
	mov dword [eax+0x4], 0x0
	mov dword [eax+0xc], 0x0
	mov dword [eax+0x10], 0x0
	movss xmm6, dword [_float__340282346638528859811704]
	movss [eax+0x8], xmm6
	mov eax, cm
	mov esi, [eax+0x90]
	mov edx, [ebp+0x8]
	mov [ebp-0x44], edx
	pxor xmm5, xmm5
	movaps xmm7, xmm5
	mov dword [ebp-0x50], 0xffffffff
	movss [ebp-0x54], xmm5
	xor ebx, ebx
_Z25CMod_PartionLeafBrushes_rPtiPKfS1__160:
	mov eax, [ebp-0x60]
	test eax, eax
	jle _Z25CMod_PartionLeafBrushes_rPtiPKfS1__10
	mov dword [ebp-0x58], 0x0
	mov ecx, [ebp-0x58]
_Z25CMod_PartionLeafBrushes_rPtiPKfS1__150:
	mov edi, [ebp-0x5c]
	movzx eax, word [edi+ecx*2]
	lea eax, [eax+eax*4]
	shl eax, 0x4
	lea eax, [esi+eax]
	mov [ebp-0x40], eax
	movss xmm1, dword [eax+ebx*4]
	xor edx, edx
	mov ecx, 0xffffffff
	mov dword [ebp-0x7c], 0xffffffff
	movaps xmm4, xmm6
	movss xmm2, dword [_float_3402823466385288598117041]
	jmp _Z25CMod_PartionLeafBrushes_rPtiPKfS1__20
_Z25CMod_PartionLeafBrushes_rPtiPKfS1__50:
	add ecx, 0x1
	ucomiss xmm2, xmm0
	jbe _Z25CMod_PartionLeafBrushes_rPtiPKfS1__30
	movaps xmm2, xmm0
_Z25CMod_PartionLeafBrushes_rPtiPKfS1__30:
	add edx, 0x1
	cmp [ebp-0x60], edx
	jz _Z25CMod_PartionLeafBrushes_rPtiPKfS1__40
_Z25CMod_PartionLeafBrushes_rPtiPKfS1__60:
	mov edi, [ebp-0x5c]
_Z25CMod_PartionLeafBrushes_rPtiPKfS1__20:
	movzx eax, word [edi+edx*2]
	lea eax, [eax+eax*4]
	shl eax, 0x4
	lea eax, [esi+eax]
	movss xmm0, dword [eax+ebx*4]
	ucomiss xmm0, xmm1
	jae _Z25CMod_PartionLeafBrushes_rPtiPKfS1__50
	movss xmm0, dword [eax+ebx*4+0x10]
	ucomiss xmm1, xmm0
	jb _Z25CMod_PartionLeafBrushes_rPtiPKfS1__30
	add dword [ebp-0x7c], 0x1
	maxss xmm0, xmm4
	movaps xmm4, xmm0
	add edx, 0x1
	cmp [ebp-0x60], edx
	jnz _Z25CMod_PartionLeafBrushes_rPtiPKfS1__60
_Z25CMod_PartionLeafBrushes_rPtiPKfS1__40:
	cmp ecx, [ebp-0x7c]
	cmovge ecx, [ebp-0x7c]
	movaps xmm3, xmm4
	addss xmm3, xmm2
	mulss xmm3, [_float_0_50000000]
	test ecx, ecx
	jle _Z25CMod_PartionLeafBrushes_rPtiPKfS1__70
	mov eax, [ebp-0x44]
	movss xmm0, dword [eax]
	subss xmm0, xmm4
	mov edx, [ebp-0x64]
	subss xmm2, [edx+ebx*4]
	movaps xmm1, xmm0
	subss xmm1, xmm2
	movaps xmm4, xmm7
	cmpss xmm4, xmm1, 0x6
	movaps xmm1, xmm4
	andps xmm0, xmm4
	andnps xmm1, xmm2
	movaps xmm2, xmm1
	orps xmm2, xmm0
	cvtsi2ss xmm0, ecx
	mulss xmm2, xmm0
_Z25CMod_PartionLeafBrushes_rPtiPKfS1__250:
	ucomiss xmm2, xmm5
	jbe _Z25CMod_PartionLeafBrushes_rPtiPKfS1__80
	movaps xmm5, xmm2
	mov [ebp-0x50], ebx
	movss [ebp-0x54], xmm3
_Z25CMod_PartionLeafBrushes_rPtiPKfS1__80:
	mov eax, [ebp-0x40]
	movss xmm1, dword [eax+ebx*4+0x10]
	xor edx, edx
	mov ecx, 0xffffffff
	mov dword [ebp-0x7c], 0xffffffff
	movaps xmm4, xmm6
	movss xmm2, dword [_float_3402823466385288598117041]
	jmp _Z25CMod_PartionLeafBrushes_rPtiPKfS1__90
_Z25CMod_PartionLeafBrushes_rPtiPKfS1__120:
	add ecx, 0x1
	ucomiss xmm2, xmm0
	jbe _Z25CMod_PartionLeafBrushes_rPtiPKfS1__100
	movaps xmm2, xmm0
_Z25CMod_PartionLeafBrushes_rPtiPKfS1__100:
	add edx, 0x1
	cmp [ebp-0x60], edx
	jz _Z25CMod_PartionLeafBrushes_rPtiPKfS1__110
_Z25CMod_PartionLeafBrushes_rPtiPKfS1__90:
	mov edi, [ebp-0x5c]
	movzx eax, word [edi+edx*2]
	lea eax, [eax+eax*4]
	shl eax, 0x4
	lea eax, [esi+eax]
	movss xmm0, dword [eax+ebx*4]
	ucomiss xmm0, xmm1
	jae _Z25CMod_PartionLeafBrushes_rPtiPKfS1__120
	movss xmm0, dword [eax+ebx*4+0x10]
	ucomiss xmm1, xmm0
	jb _Z25CMod_PartionLeafBrushes_rPtiPKfS1__100
	add dword [ebp-0x7c], 0x1
	maxss xmm0, xmm4
	movaps xmm4, xmm0
	add edx, 0x1
	cmp [ebp-0x60], edx
	jnz _Z25CMod_PartionLeafBrushes_rPtiPKfS1__90
_Z25CMod_PartionLeafBrushes_rPtiPKfS1__110:
	cmp ecx, [ebp-0x7c]
	cmovge ecx, [ebp-0x7c]
	movaps xmm3, xmm4
	addss xmm3, xmm2
	mulss xmm3, [_float_0_50000000]
	test ecx, ecx
	jle _Z25CMod_PartionLeafBrushes_rPtiPKfS1__130
	mov eax, [ebp-0x44]
	movss xmm0, dword [eax]
	subss xmm0, xmm4
	mov edx, [ebp-0x64]
	subss xmm2, [edx+ebx*4]
	movaps xmm1, xmm0
	subss xmm1, xmm2
	movaps xmm4, xmm7
	cmpss xmm4, xmm1, 0x6
	movaps xmm1, xmm4
	andps xmm0, xmm4
	andnps xmm1, xmm2
	movaps xmm2, xmm1
	orps xmm2, xmm0
	cvtsi2ss xmm0, ecx
	mulss xmm2, xmm0
_Z25CMod_PartionLeafBrushes_rPtiPKfS1__240:
	ucomiss xmm2, xmm5
	jbe _Z25CMod_PartionLeafBrushes_rPtiPKfS1__140
	movaps xmm5, xmm2
	mov [ebp-0x50], ebx
	movss [ebp-0x54], xmm3
_Z25CMod_PartionLeafBrushes_rPtiPKfS1__140:
	add dword [ebp-0x58], 0x1
	mov eax, [ebp-0x58]
	cmp [ebp-0x60], eax
	jz _Z25CMod_PartionLeafBrushes_rPtiPKfS1__10
	mov ecx, eax
	jmp _Z25CMod_PartionLeafBrushes_rPtiPKfS1__150
_Z25CMod_PartionLeafBrushes_rPtiPKfS1__10:
	add ebx, 0x1
	add dword [ebp-0x44], 0x4
	cmp ebx, 0x3
	jnz _Z25CMod_PartionLeafBrushes_rPtiPKfS1__160
	mov eax, [ebp-0x50]
	test eax, eax
	js _Z25CMod_PartionLeafBrushes_rPtiPKfS1__170
	mov ebx, [ebp-0x60]
	add ebx, ebx
	mov dword [esp+0x4], _cstring_cmod_partionleaf
	mov [esp], ebx
	call _Z30CM_Hunk_AllocateTempMemoryHighiPKc
	mov esi, eax
	mov [esp+0x8], ebx
	mov ecx, [ebp-0x5c]
	mov [esp+0x4], ecx
	mov [esp], eax
	call memcpy
	mov edi, [ebp-0x60]
	test edi, edi
	jg _Z25CMod_PartionLeafBrushes_rPtiPKfS1__180
_Z25CMod_PartionLeafBrushes_rPtiPKfS1__360:
	movzx edx, byte [ebp-0x50]
	mov ecx, [ebp-0x4c]
	mov [ecx], dl
	movss xmm0, dword [ebp-0x54]
	movss [ecx+0x8], xmm0
	movss xmm3, dword [_float_3402823466385288598117041]
	mov dword [ebp-0x7c], 0x0
	mov eax, [ebp-0x50]
	shl eax, 0x2
	mov [ebp-0x68], eax
_Z25CMod_PartionLeafBrushes_rPtiPKfS1__230:
	mov ebx, [ebp-0x60]
	test ebx, ebx
	jg _Z25CMod_PartionLeafBrushes_rPtiPKfS1__190
	xor ebx, ebx
	mov dword [ebp-0x48], 0x0
_Z25CMod_PartionLeafBrushes_rPtiPKfS1__320:
	mov ecx, [ebp-0x64]
	mov eax, [ecx]
	mov [ebp-0x24], eax
	mov eax, [ecx+0x4]
	mov [ebp-0x20], eax
	mov eax, [ecx+0x8]
	mov [ebp-0x1c], eax
	mov edi, [ebp+0x8]
	mov eax, [edi]
	mov [ebp-0x30], eax
	mov eax, [edi+0x4]
	mov [ebp-0x2c], eax
	mov eax, [edi+0x8]
	mov [ebp-0x28], eax
	mov edx, [ebp-0x7c]
	test edx, edx
	jnz _Z25CMod_PartionLeafBrushes_rPtiPKfS1__200
	movss xmm0, dword [ebp-0x54]
	addss xmm0, xmm3
	mov eax, [ebp-0x50]
	movss [ebp+eax*4-0x24], xmm0
_Z25CMod_PartionLeafBrushes_rPtiPKfS1__260:
	lea ecx, [ebp-0x30]
	mov [esp], ecx
	lea ecx, [ebp-0x24]
	mov edx, ebx
	mov eax, [ebp-0x5c]
	movss [ebp-0x78], xmm3
	call _Z25CMod_PartionLeafBrushes_rPtiPKfS1__210
	mov ebx, eax
	mov ecx, eax
	sub ecx, [ebp-0x4c]
	sar ecx, 0x2
	lea eax, [ecx+ecx*2]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	mov edx, eax
	shl edx, 0x10
	add eax, edx
	lea eax, [ecx+eax*4]
	mov edi, [ebp-0x7c]
	mov edx, [ebp-0x4c]
	mov [edx+edi*2+0x10], ax
	movzx edx, ax
	cmp eax, edx
	movss xmm3, dword [ebp-0x78]
	jz _Z25CMod_PartionLeafBrushes_rPtiPKfS1__220
	mov dword [esp+0x4], _cstring_cmod_partionleaf1
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	movss xmm3, dword [ebp-0x78]
_Z25CMod_PartionLeafBrushes_rPtiPKfS1__220:
	mov ecx, [ebp-0x4c]
	mov eax, [ecx+0x4]
	or eax, [ebx+0x4]
	mov [ecx+0x4], eax
	mov eax, [ebp-0x5c]
	mov edi, [ebp-0x48]
	lea eax, [eax+edi*2]
	mov [ebp-0x5c], eax
	add dword [ebp-0x7c], 0x1
	cmp dword [ebp-0x7c], 0x2
	jnz _Z25CMod_PartionLeafBrushes_rPtiPKfS1__230
	movss [ecx+0xc], xmm3
	mov eax, [ebp-0x4c]
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25CMod_PartionLeafBrushes_rPtiPKfS1__130:
	movaps xmm2, xmm7
	jmp _Z25CMod_PartionLeafBrushes_rPtiPKfS1__240
_Z25CMod_PartionLeafBrushes_rPtiPKfS1__70:
	movaps xmm2, xmm7
	jmp _Z25CMod_PartionLeafBrushes_rPtiPKfS1__250
_Z25CMod_PartionLeafBrushes_rPtiPKfS1__200:
	movss xmm0, dword [ebp-0x54]
	subss xmm0, xmm3
	mov edx, [ebp-0x50]
	movss [ebp+edx*4-0x30], xmm0
	jmp _Z25CMod_PartionLeafBrushes_rPtiPKfS1__260
_Z25CMod_PartionLeafBrushes_rPtiPKfS1__190:
	mov ecx, [ebp-0x7c]
	test ecx, ecx
	jz _Z25CMod_PartionLeafBrushes_rPtiPKfS1__270
	xor ecx, ecx
	xor ebx, ebx
	jmp _Z25CMod_PartionLeafBrushes_rPtiPKfS1__280
_Z25CMod_PartionLeafBrushes_rPtiPKfS1__300:
	add ecx, 0x1
	cmp ecx, [ebp-0x60]
	jz _Z25CMod_PartionLeafBrushes_rPtiPKfS1__290
_Z25CMod_PartionLeafBrushes_rPtiPKfS1__280:
	movzx edx, word [esi+ecx*2]
	lea eax, [edx+edx*4]
	shl eax, 0x4
	mov edi, [ebp-0x50]
	lea eax, [eax+edi*4]
	mov edi, cm
	add eax, [edi+0x90]
	movss xmm0, dword [eax+0x10]
	ucomiss xmm0, [ebp-0x54]
	ja _Z25CMod_PartionLeafBrushes_rPtiPKfS1__300
	movss xmm1, dword [ebp-0x54]
	subss xmm1, xmm0
	movaps xmm0, xmm1
	subss xmm0, xmm3
	ucomiss xmm0, [_float_0_00000000]
	jb _Z25CMod_PartionLeafBrushes_rPtiPKfS1__310
_Z25CMod_PartionLeafBrushes_rPtiPKfS1__330:
	mov eax, [ebp-0x5c]
	mov [eax+ebx*2], dx
	add ebx, 0x1
	add ecx, 0x1
	cmp ecx, [ebp-0x60]
	jnz _Z25CMod_PartionLeafBrushes_rPtiPKfS1__280
_Z25CMod_PartionLeafBrushes_rPtiPKfS1__290:
	mov [ebp-0x48], ebx
	jmp _Z25CMod_PartionLeafBrushes_rPtiPKfS1__320
_Z25CMod_PartionLeafBrushes_rPtiPKfS1__310:
	movaps xmm3, xmm1
	jmp _Z25CMod_PartionLeafBrushes_rPtiPKfS1__330
_Z25CMod_PartionLeafBrushes_rPtiPKfS1__180:
	xor ecx, ecx
	xor ebx, ebx
_Z25CMod_PartionLeafBrushes_rPtiPKfS1__350:
	movzx edx, word [esi+ecx*2]
	lea eax, [edx+edx*4]
	shl eax, 0x4
	mov edi, cm
	add eax, [edi+0x90]
	mov edi, [ebp-0x50]
	movss xmm0, dword [eax+edi*4]
	ucomiss xmm0, [ebp-0x54]
	jae _Z25CMod_PartionLeafBrushes_rPtiPKfS1__340
	movss xmm0, dword [ebp-0x54]
	ucomiss xmm0, [eax+edi*4+0x10]
	jae _Z25CMod_PartionLeafBrushes_rPtiPKfS1__340
	mov eax, [ebp-0x5c]
	mov [eax+ebx*2], dx
	add ebx, 0x1
_Z25CMod_PartionLeafBrushes_rPtiPKfS1__340:
	add ecx, 0x1
	cmp [ebp-0x60], ecx
	jnz _Z25CMod_PartionLeafBrushes_rPtiPKfS1__350
	test ebx, ebx
	jz _Z25CMod_PartionLeafBrushes_rPtiPKfS1__360
	mov edx, [ebp+0x8]
	mov [esp], edx
	mov ecx, [ebp-0x64]
	mov edx, ebx
	mov eax, [ebp-0x5c]
	call _Z25CMod_PartionLeafBrushes_rPtiPKfS1__210
	mov ecx, [ebp-0x4c]
	mov word [ecx+0x2], 0xffff
	mov ecx, [eax+0x4]
	mov edi, [ebp-0x4c]
	mov [edi+0x4], ecx
	mov eax, [ebp-0x5c]
	lea eax, [eax+ebx*2]
	mov [ebp-0x5c], eax
	jmp _Z25CMod_PartionLeafBrushes_rPtiPKfS1__360
_Z25CMod_PartionLeafBrushes_rPtiPKfS1__170:
	movzx ecx, word [ebp-0x60]
	mov edx, [ebp-0x4c]
	mov [edx+0x2], cx
	movsx eax, word [ebp-0x60]
	cmp [ebp-0x60], eax
	jz _Z25CMod_PartionLeafBrushes_rPtiPKfS1__370
	mov dword [esp+0x4], _cstring_cmod_partionleaf2
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z25CMod_PartionLeafBrushes_rPtiPKfS1__370:
	mov eax, [ebp-0x60]
	test eax, eax
	jle _Z25CMod_PartionLeafBrushes_rPtiPKfS1__380
	xor ebx, ebx
	mov esi, [ebp-0x4c]
	mov ecx, [esi+0x4]
	mov esi, cm
_Z25CMod_PartionLeafBrushes_rPtiPKfS1__390:
	mov edi, [ebp-0x5c]
	movzx eax, word [edi+ebx*2]
	mov edx, [esi+0x90]
	lea eax, [eax+eax*4]
	shl eax, 0x4
	or ecx, [eax+edx+0xc]
	mov edi, [ebp-0x4c]
	mov [edi+0x4], ecx
	add ebx, 0x1
	cmp [ebp-0x60], ebx
	jnz _Z25CMod_PartionLeafBrushes_rPtiPKfS1__390
_Z25CMod_PartionLeafBrushes_rPtiPKfS1__380:
	mov edx, [ebp-0x5c]
	mov eax, [ebp-0x4c]
	mov [eax+0x8], edx
	mov eax, [ebp-0x4c]
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25CMod_PartionLeafBrushes_rPtiPKfS1__270:
	mov dword [ebp-0x3c], 0x0
	xor ebx, ebx
	pxor xmm4, xmm4
_Z25CMod_PartionLeafBrushes_rPtiPKfS1__410:
	mov edx, [ebp-0x3c]
	movzx ecx, word [esi+edx*2]
	mov edi, cm
	mov edx, [edi+0x90]
	lea eax, [ecx+ecx*4]
	shl eax, 0x4
	add eax, [ebp-0x68]
	movss xmm2, dword [eax+edx]
	movss xmm0, dword [ebp-0x54]
	ucomiss xmm0, xmm2
	ja _Z25CMod_PartionLeafBrushes_rPtiPKfS1__400
	subss xmm2, xmm0
	movaps xmm0, xmm2
	subss xmm0, xmm3
	movaps xmm1, xmm4
	cmpss xmm1, xmm0, 0x2
	movaps xmm0, xmm1
	movaps xmm1, xmm3
	andps xmm1, xmm0
	movaps xmm3, xmm0
	andnps xmm3, xmm2
	orps xmm3, xmm1
	mov eax, [ebp-0x5c]
	mov [eax+ebx*2], cx
	add ebx, 0x1
_Z25CMod_PartionLeafBrushes_rPtiPKfS1__400:
	add dword [ebp-0x3c], 0x1
	mov edx, [ebp-0x3c]
	cmp [ebp-0x60], edx
	jnz _Z25CMod_PartionLeafBrushes_rPtiPKfS1__410
	mov [ebp-0x48], ebx
	jmp _Z25CMod_PartionLeafBrushes_rPtiPKfS1__320
	nop


;CMod_PartionLeafBrushes(unsigned short*, int, cLeaf_t*)
_Z23CMod_PartionLeafBrushesPtiP7cLeaf_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov [ebp-0x40], eax
	mov edi, edx
	mov [ebp-0x44], ecx
	cmp edx, 0x0
	jz _Z23CMod_PartionLeafBrushesPtiP7cLeaf_t_10
	mov eax, 0x7f7fffff
	mov [ebp-0x24], eax
	mov [ebp-0x20], eax
	mov [ebp-0x1c], eax
	mov eax, 0xff7fffff
	mov [ebp-0x30], eax
	mov [ebp-0x2c], eax
	mov [ebp-0x28], eax
	jle _Z23CMod_PartionLeafBrushesPtiP7cLeaf_t_20
	mov eax, cm
	mov eax, [eax+0x90]
	mov [ebp-0x3c], eax
	xor esi, esi
_Z23CMod_PartionLeafBrushesPtiP7cLeaf_t_60:
	mov edx, [ebp-0x40]
	movzx eax, word [edx+esi*2]
	lea eax, [eax+eax*4]
	shl eax, 0x4
	mov edx, [ebp-0x3c]
	add edx, eax
	mov ebx, 0x1
_Z23CMod_PartionLeafBrushesPtiP7cLeaf_t_50:
	lea ecx, [ebx*4]
	lea eax, [ebp-0x24]
	add eax, ecx
	movss xmm1, dword [edx]
	movss xmm0, dword [eax-0x4]
	ucomiss xmm0, xmm1
	jbe _Z23CMod_PartionLeafBrushesPtiP7cLeaf_t_30
	movss [eax-0x4], xmm1
_Z23CMod_PartionLeafBrushesPtiP7cLeaf_t_30:
	lea eax, [ebp-0x30]
	add eax, ecx
	movss xmm0, dword [edx+0x10]
	ucomiss xmm0, [eax-0x4]
	jbe _Z23CMod_PartionLeafBrushesPtiP7cLeaf_t_40
	movss [eax-0x4], xmm0
_Z23CMod_PartionLeafBrushesPtiP7cLeaf_t_40:
	add ebx, 0x1
	add edx, 0x4
	cmp ebx, 0x4
	jnz _Z23CMod_PartionLeafBrushesPtiP7cLeaf_t_50
	add esi, 0x1
	cmp edi, esi
	jnz _Z23CMod_PartionLeafBrushesPtiP7cLeaf_t_60
_Z23CMod_PartionLeafBrushesPtiP7cLeaf_t_20:
	mov edx, [ebp-0x44]
	add edx, 0xc
	mov eax, [ebp-0x24]
	mov ecx, [ebp-0x44]
	mov [ecx+0xc], eax
	mov eax, [ebp-0x20]
	mov [edx+0x4], eax
	mov eax, [ebp-0x1c]
	mov [edx+0x8], eax
	mov edx, ecx
	add edx, 0x18
	mov eax, [ebp-0x30]
	mov [ecx+0x18], eax
	mov eax, [ebp-0x2c]
	mov [edx+0x4], eax
	mov eax, [ebp-0x28]
	mov [edx+0x8], eax
	mov eax, ecx
	mov edx, 0x3
	movss xmm1, dword [_float_0_12500000]
_Z23CMod_PartionLeafBrushesPtiP7cLeaf_t_70:
	movss xmm0, dword [eax+0xc]
	subss xmm0, xmm1
	movss [eax+0xc], xmm0
	movss xmm0, dword [eax+0x18]
	addss xmm0, xmm1
	movss [eax+0x18], xmm0
	add eax, 0x4
	sub edx, 0x1
	jnz _Z23CMod_PartionLeafBrushesPtiP7cLeaf_t_70
	call _Z32CM_Hunk_CheckTempMemoryHighClearv
	lea eax, [ebp-0x30]
	mov [esp], eax
	lea ecx, [ebp-0x24]
	mov edx, edi
	mov eax, [ebp-0x40]
	call _Z25CMod_PartionLeafBrushes_rPtiPKfS1_
	mov edx, cm
	sub eax, [edx+0x44]
	sar eax, 0x2
	lea edx, [eax+eax*2]
	mov ecx, edx
	shl ecx, 0x4
	add edx, ecx
	mov ecx, edx
	shl ecx, 0x8
	add edx, ecx
	mov ecx, edx
	shl ecx, 0x10
	add edx, ecx
	lea edx, [eax+edx*4]
	mov ecx, [ebp-0x44]
	mov [ecx+0x24], edx
	call _Z27CM_Hunk_ClearTempMemoryHighv
_Z23CMod_PartionLeafBrushesPtiP7cLeaf_t_10:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;MapEnts_GetFromString(char const*, char const*, int)
_Z21MapEnts_GetFromStringPKcS0_i:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xa3c
	mov esi, eax
	mov [ebp-0xa2c], ecx
	mov dword [esp+0x8], 0x1e
	mov dword [esp+0x4], _cstring_cmod_loadentitys
	mov dword [esp], 0xc
	call _Z13CM_Hunk_AllociPKci
	mov [ebp-0xa30], eax
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	mov ebx, ecx
	not ebx
	mov dword [esp+0x8], 0x1e
	mov dword [esp+0x4], _cstring_cmod_loadentitys
	mov [esp], ebx
	call _Z13CM_Hunk_AllociPKci
	mov edx, [ebp-0xa30]
	mov [edx], eax
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov [esp], eax
	call memcpy
	lea eax, [ebp-0xa2c]
	mov [esp], eax
	call _Z16Com_EntityStringPi
	mov ebx, eax
	mov dword [esp+0x8], 0x1e
	mov dword [esp+0x4], _cstring_cmod_loadentitys
	mov eax, [ebp-0xa2c]
	mov [esp], eax
	call _Z13CM_Hunk_AllociPKci
	mov ecx, [ebp-0xa30]
	mov [ecx+0x4], eax
	mov dword [ecx+0x8], 0x0
	mov [esp], ebx
	call _Z21G_SetEntityParsePointPKc
_Z21MapEnts_GetFromStringPKcS0_i_20:
	call _Z21G_GetEntityParsePointv
	mov [ebp-0xa34], eax
	lea edi, [ebp-0xa28]
	mov [esp], edi
	call _Z16G_ParseSpawnVarsP8SpawnVar
	test eax, eax
	jz _Z21MapEnts_GetFromStringPKcS0_i_10
_Z21MapEnts_GetFromStringPKcS0_i_50:
	lea eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_null
	mov dword [esp+0x4], _cstring_classname
	mov [esp], edi
	call _Z13G_SpawnStringPK8SpawnVarPKcS3_PS3_
	mov edi, [ebp-0x1c]
	mov ebx, g_purgeableEnts
	mov esi, g_purgeableEnts+0x1c
_Z21MapEnts_GetFromStringPKcS0_i_30:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z21MapEnts_GetFromStringPKcS0_i_20
	add ebx, 0x4
	cmp esi, ebx
	jnz _Z21MapEnts_GetFromStringPKcS0_i_30
	mov dword [esp+0x4], _cstring_light
	mov [esp], edi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z21MapEnts_GetFromStringPKcS0_i_40
_Z21MapEnts_GetFromStringPKcS0_i_60:
	call _Z21G_GetEntityParsePointv
	mov ebx, eax
	sub ebx, [ebp-0xa34]
	mov ecx, [ebp-0xa30]
	mov eax, [ecx+0x4]
	add eax, [ecx+0x8]
	mov [esp+0x8], ebx
	mov edi, [ebp-0xa34]
	mov [esp+0x4], edi
	mov [esp], eax
	call memcpy
	mov eax, [ebp-0xa30]
	add [eax+0x8], ebx
	call _Z21G_GetEntityParsePointv
	mov [ebp-0xa34], eax
	lea edi, [ebp-0xa28]
	mov [esp], edi
	call _Z16G_ParseSpawnVarsP8SpawnVar
	test eax, eax
	jnz _Z21MapEnts_GetFromStringPKcS0_i_50
_Z21MapEnts_GetFromStringPKcS0_i_10:
	mov ecx, [ebp-0xa30]
	mov edx, [ecx+0x4]
	mov eax, [ecx+0x8]
	mov byte [edx+eax], 0x0
	add dword [ecx+0x8], 0x1
	mov eax, ecx
	add esp, 0xa3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21MapEnts_GetFromStringPKcS0_i_40:
	mov dword [esp+0x4], _cstring_pl
	lea edx, [ebp-0xa28]
	mov [esp], edx
	call _Z19CMod_HasSpawnStringPvPKc
	test al, al
	jz _Z21MapEnts_GetFromStringPKcS0_i_20
	jmp _Z21MapEnts_GetFromStringPKcS0_i_60
	nop


;CM_Cleanup()
_Z10CM_Cleanupv:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;CM_GetPlanes()
_Z12CM_GetPlanesv:
	push ebp
	mov ebp, esp
	mov eax, cm
	mov eax, [eax+0xc]
	pop ebp
	ret
	nop


;CM_EntityString()
_Z15CM_EntityStringv:
	push ebp
	mov ebp, esp
	mov eax, cm
	mov eax, [eax+0xa4]
	mov eax, [eax+0x4]
	pop ebp
	ret
	nop


;CMod_LoadPlanes()
_Z15CMod_LoadPlanesv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x10
	mov dword [esp], 0x4
	call _Z14Com_GetBspLump8LumpTypejPj
	mov edi, eax
	mov eax, [ebp-0x1c]
	test eax, eax
	jz _Z15CMod_LoadPlanesv_10
	cmp dword [ebp-0x1c], 0x10000
	ja _Z15CMod_LoadPlanesv_20
_Z15CMod_LoadPlanesv_120:
	mov dword [esp+0x8], 0x19
	mov dword [esp+0x4], _cstring_cmod_loadplanes
	mov eax, [ebp-0x1c]
	lea eax, [eax+eax*4]
	shl eax, 0x2
	mov [esp], eax
	call _Z13CM_Hunk_AllociPKci
	mov edx, cm
	mov [edx+0xc], eax
	mov ecx, [ebp-0x1c]
	mov [edx+0x8], ecx
	mov esi, eax
	test ecx, ecx
	jz _Z15CMod_LoadPlanesv_30
	mov dword [ebp-0x30], 0x0
	pxor xmm2, xmm2
	movss xmm1, dword [_float_1_00000000]
_Z15CMod_LoadPlanesv_90:
	mov [ebp-0x3c], edi
	mov edx, esi
	mov byte [ebp-0x29], 0x0
	xor ebx, ebx
	mov eax, edi
	movss xmm0, dword [eax]
	movss [edx], xmm0
	ucomiss xmm2, xmm0
	ja _Z15CMod_LoadPlanesv_40
_Z15CMod_LoadPlanesv_60:
	add ebx, 0x1
	add dword [ebp-0x3c], 0x4
	add edx, 0x4
	cmp ebx, 0x3
	jz _Z15CMod_LoadPlanesv_50
_Z15CMod_LoadPlanesv_70:
	mov eax, [ebp-0x3c]
	movss xmm0, dword [eax]
	movss [edx], xmm0
	ucomiss xmm2, xmm0
	jbe _Z15CMod_LoadPlanesv_60
_Z15CMod_LoadPlanesv_40:
	mov eax, 0x1
	mov ecx, ebx
	shl eax, cl
	or [ebp-0x29], al
	add ebx, 0x1
	add dword [ebp-0x3c], 0x4
	add edx, 0x4
	cmp ebx, 0x3
	jnz _Z15CMod_LoadPlanesv_70
_Z15CMod_LoadPlanesv_50:
	mov eax, [edi+0xc]
	mov [esi+0xc], eax
	ucomiss xmm1, [esi]
	jnz _Z15CMod_LoadPlanesv_80
	jp _Z15CMod_LoadPlanesv_80
	xor eax, eax
_Z15CMod_LoadPlanesv_110:
	mov [esi+0x10], al
	movzx eax, byte [ebp-0x29]
	mov [esi+0x11], al
	add dword [ebp-0x30], 0x1
	add edi, 0x10
	add esi, 0x14
	mov ecx, [ebp-0x30]
	cmp ecx, [ebp-0x1c]
	jb _Z15CMod_LoadPlanesv_90
_Z15CMod_LoadPlanesv_30:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15CMod_LoadPlanesv_80:
	ucomiss xmm1, [esi+0x4]
	jnz _Z15CMod_LoadPlanesv_100
	jp _Z15CMod_LoadPlanesv_100
	mov eax, 0x1
	jmp _Z15CMod_LoadPlanesv_110
_Z15CMod_LoadPlanesv_100:
	ucomiss xmm1, [esi+0x8]
	setnz al
	setp dl
	or al, dl
	add al, 0x2
	jmp _Z15CMod_LoadPlanesv_110
_Z15CMod_LoadPlanesv_10:
	mov dword [esp+0x4], _cstring_map_with_no_plan
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	cmp dword [ebp-0x1c], 0x10000
	jbe _Z15CMod_LoadPlanesv_120
_Z15CMod_LoadPlanesv_20:
	mov dword [esp+0x4], _cstring_number_of_planes
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z15CMod_LoadPlanesv_120
	nop


;CM_GetPlaneCount()
_Z16CM_GetPlaneCountv:
	push ebp
	mov ebp, esp
	mov eax, cm
	mov eax, [eax+0x8]
	pop ebp
	ret
	nop


;CM_LoadMapFromBsp(char const*, unsigned char)
_Z17CM_LoadMapFromBspPKch:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x12c
	mov esi, [ebp+0x8]
	movzx eax, byte [ebp+0xc]
	mov [ebp-0xe5], al
	mov dword [esp+0x8], 0x11c
	mov dword [esp+0x4], 0x0
	mov ebx, cm
	mov [esp], ebx
	call _Z10Com_MemsetPvii
	mov dword [esp+0x8], 0x19
	mov dword [esp+0x4], _cstring_cm_loadmapfrombs
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	not ecx
	mov [esp], ecx
	call _Z13CM_Hunk_AllociPKci
	mov [ebx], eax
	mov [esp+0x4], esi
	mov [esp], eax
	call strcpy
	call _Z17Com_GetBspVersionv
	mov [ebp-0xe4], eax
	lea eax, [ebp-0x28]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x48
	mov dword [esp], 0x0
	call _Z14Com_GetBspLump8LumpTypejPj
	mov esi, eax
	mov ecx, [ebp-0x28]
	test ecx, ecx
	jz _Z17CM_LoadMapFromBspPKch_10
_Z17CM_LoadMapFromBspPKch_910:
	mov dword [esp+0x8], 0x19
	mov dword [esp+0x4], _cstring_cmod_loadmateria
	mov eax, [ebp-0x28]
	lea eax, [eax+eax*8]
	lea eax, [eax*8+0x48]
	mov [esp], eax
	call _Z13CM_Hunk_AllociPKci
	add eax, 0x48
	mov [ebx+0x1c], eax
	mov eax, [ebp-0x28]
	mov [ebx+0x18], eax
	lea eax, [eax+eax*8]
	shl eax, 0x3
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov eax, [ebx+0x1c]
	mov [esp], eax
	call Com_Memcpy
	mov edx, [ebx+0x18]
	test edx, edx
	jz _Z17CM_LoadMapFromBspPKch_20
	xor ecx, ecx
	xor edx, edx
	mov edi, ebx
_Z17CM_LoadMapFromBspPKch_30:
	mov eax, edx
	add eax, [edi+0x1c]
	and dword [eax+0x44], 0xdffffffb
	add ecx, 0x1
	add edx, 0x48
	cmp ecx, [edi+0x18]
	jb _Z17CM_LoadMapFromBspPKch_30
_Z17CM_LoadMapFromBspPKch_20:
	call _Z15CMod_LoadPlanesv
	movzx edx, byte [ebp-0xe5]
	mov [ebp-0xdd], dl
	lea ecx, [ebp-0x1c]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x4
	mov dword [esp], 0x8
	call _Z14Com_GetBspLump8LumpTypejPj
	mov [ebp-0xd8], eax
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x8
	mov dword [esp], 0x5
	call _Z14Com_GetBspLump8LumpTypejPj
	mov esi, eax
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x6
	call _Z14Com_GetBspLump8LumpTypejPj
	mov [ebp-0xd4], eax
	mov edx, [ebp-0x24]
	mov eax, [ebp-0x20]
	cmp edx, eax
	jz _Z17CM_LoadMapFromBspPKch_40
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_cmod_loadbrushes
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z17CM_LoadMapFromBspPKch_40:
	lea ebx, [ebp-0x28]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x7
	call _Z14Com_GetBspLump8LumpTypejPj
	mov [ebp-0xd0], eax
	mov edi, [ebp-0x28]
	mov edx, edi
	test edi, edi
	jnz _Z17CM_LoadMapFromBspPKch_50
	xor eax, eax
_Z17CM_LoadMapFromBspPKch_1030:
	mov ebx, cm
	mov [ebx+0x2c], eax
	mov [ebx+0x28], edx
	mov [esp+0x8], edi
	mov edi, [ebp-0xd0]
	mov [esp+0x4], edi
	mov [esp], eax
	call memcpy
	mov ebx, [ebx+0x2c]
	mov [ebp-0xc4], ebx
	mov ecx, [ebp-0x1c]
	lea eax, [ecx+ecx*2]
	add eax, eax
	mov edx, [ebp-0x20]
	sub edx, eax
	mov [ebp-0x20], edx
	lea eax, [edx+edx*2]
	shl eax, 0x2
	test edx, edx
	jnz _Z17CM_LoadMapFromBspPKch_60
	xor eax, eax
_Z17CM_LoadMapFromBspPKch_1020:
	mov ebx, cm
	mov [ebx+0x24], eax
	mov [ebx+0x20], edx
	mov [ebp-0xc8], eax
	mov dword [esp+0x8], 0x1a
	mov dword [esp+0x4], _cstring_cmod_loadbrushes1
	lea eax, [ecx+ecx*4+0x5]
	shl eax, 0x4
	mov [esp], eax
	call _Z13CM_Hunk_AllociPKci
	mov [ebx+0x90], eax
	mov eax, [ebp-0x1c]
	mov [ebx+0x8c], ax
	movzx eax, ax
	cmp eax, [ebp-0x1c]
	jz _Z17CM_LoadMapFromBspPKch_70
	mov dword [esp+0x4], _cstring_cmod_loadbrushes2
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z17CM_LoadMapFromBspPKch_70:
	mov eax, [ebx+0x90]
	mov [ebp-0xcc], eax
	mov eax, [ebp-0x1c]
	test eax, eax
	jz _Z17CM_LoadMapFromBspPKch_80
	mov dword [ebp-0xc0], 0x0
	mov [ebp-0x104], ebx
	mov [ebp-0xec], ebx
	mov edx, [ebp-0xcc]
	mov ebx, [ebp-0xcc]
	add edx, 0x1c
	mov [ebp-0x3c], edx
	mov ecx, [ebp-0xd8]
	movsx eax, word [ecx]
	sub eax, 0x6
	mov [ebx+0x1c], eax
	mov edi, [ebp-0xc4]
	mov [ebx+0x30], edi
	test eax, eax
	jz _Z17CM_LoadMapFromBspPKch_90
_Z17CM_LoadMapFromBspPKch_200:
	mov eax, [ebp-0xc8]
_Z17CM_LoadMapFromBspPKch_210:
	mov edx, [ebp-0xcc]
	mov [edx+0x20], eax
	mov [ebp-0x40], edx
	mov dword [ebp-0xb4], 0x0
	mov dword [ebp-0xbc], 0x0
	mov dword [ebp-0xf8], 0x40
	mov ebx, edx
_Z17CM_LoadMapFromBspPKch_150:
	mov eax, [esi]
	mov [ebx], eax
	lea edi, [esi+0x8]
	mov [ebp-0xf4], edi
	mov [ebp-0x4c], edi
	mov eax, [ebp-0xcc]
	add eax, [ebp-0xf8]
	mov [ebp-0x48], eax
	mov dword [ebp-0xb8], 0x0
	mov dword [ebp-0x44], 0x0
	mov ebx, [esi+0x4]
	mov edi, [ebp-0xec]
	cmp ebx, [edi+0x18]
	jae _Z17CM_LoadMapFromBspPKch_100
_Z17CM_LoadMapFromBspPKch_170:
	mov edi, [ebp-0xbc]
	add edi, edi
	mov esi, [ebp-0xcc]
	add esi, [ebp-0x44]
	mov [edi+esi+0x24], bx
	movsx eax, bx
	cmp ebx, eax
	jz _Z17CM_LoadMapFromBspPKch_110
	mov dword [esp+0x4], _cstring_cmod_loadbrushes3
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z17CM_LoadMapFromBspPKch_110:
	mov edx, [ebp-0xd4]
	movzx eax, byte [edx]
	mov ecx, [ebp-0x48]
	mov [ecx], al
	movzx ebx, word [ebp-0xb4]
	mov [edi+esi+0x34], bx
	movsx eax, word [ebp-0xb4]
	cmp eax, [ebp-0xb4]
	jz _Z17CM_LoadMapFromBspPKch_120
	mov dword [esp+0x4], _cstring_cmod_loadbrushes4
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z17CM_LoadMapFromBspPKch_120:
	mov edi, [ebp-0xd4]
	movzx eax, byte [edi]
	add [ebp-0xb4], eax
	add [ebp-0xc4], eax
	add dword [ebp-0xb8], 0x1
	mov esi, [ebp-0xf4]
	add edi, 0x1
	mov [ebp-0xd4], edi
	cmp dword [ebp-0xb8], 0x1
	jle _Z17CM_LoadMapFromBspPKch_130
	add dword [ebp-0xbc], 0x1
	add dword [ebp-0x40], 0x4
	cmp dword [ebp-0xbc], 0x3
	jz _Z17CM_LoadMapFromBspPKch_140
	mov ecx, [ebp-0xbc]
	add ecx, 0x40
	mov [ebp-0xf8], ecx
_Z17CM_LoadMapFromBspPKch_160:
	mov ebx, [ebp-0x40]
	jmp _Z17CM_LoadMapFromBspPKch_150
_Z17CM_LoadMapFromBspPKch_130:
	add dword [ebp-0x4c], 0x8
	add dword [ebp-0x48], 0x3
	add dword [ebp-0x44], 0x6
	mov eax, [ebp-0xb8]
	test eax, eax
	jz _Z17CM_LoadMapFromBspPKch_160
	mov edx, [ebp-0x4c]
	mov eax, [edx-0x8]
	mov ecx, [ebp-0x40]
	mov [ecx+0x10], eax
	lea ebx, [esi+0x8]
	mov [ebp-0xf4], ebx
	mov ebx, [esi+0x4]
	mov edi, [ebp-0xec]
	cmp ebx, [edi+0x18]
	jb _Z17CM_LoadMapFromBspPKch_170
_Z17CM_LoadMapFromBspPKch_100:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_cmod_loadbrushes5
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z17CM_LoadMapFromBspPKch_170
_Z17CM_LoadMapFromBspPKch_140:
	mov eax, [ebp-0x3c]
	mov eax, [eax]
	test eax, eax
	jnz _Z17CM_LoadMapFromBspPKch_180
_Z17CM_LoadMapFromBspPKch_240:
	mov edi, [ebp-0xd8]
	movsx ebx, word [edi+0x2]
	mov eax, [ebp-0x104]
	cmp ebx, [eax+0x18]
	jae _Z17CM_LoadMapFromBspPKch_190
	mov edx, eax
_Z17CM_LoadMapFromBspPKch_260:
	mov eax, [edx+0x1c]
	lea edx, [ebx+ebx*8]
	mov eax, [eax+edx*8+0x44]
	mov ecx, [ebp-0xcc]
	mov [ecx+0xc], eax
	add dword [ebp-0xc0], 0x1
	add ecx, 0x50
	mov [ebp-0xcc], ecx
	add dword [ebp-0xd8], 0x4
	mov ebx, [ebp-0xc0]
	cmp [ebp-0x1c], ebx
	jbe _Z17CM_LoadMapFromBspPKch_80
	mov edx, ecx
	mov ebx, ecx
	add edx, 0x1c
	mov [ebp-0x3c], edx
	mov ecx, [ebp-0xd8]
	movsx eax, word [ecx]
	sub eax, 0x6
	mov [ebx+0x1c], eax
	mov edi, [ebp-0xc4]
	mov [ebx+0x30], edi
	test eax, eax
	jnz _Z17CM_LoadMapFromBspPKch_200
_Z17CM_LoadMapFromBspPKch_90:
	xor eax, eax
	jmp _Z17CM_LoadMapFromBspPKch_210
_Z17CM_LoadMapFromBspPKch_180:
	xor ebx, ebx
	jmp _Z17CM_LoadMapFromBspPKch_220
_Z17CM_LoadMapFromBspPKch_250:
	mov edx, [ebp-0xd4]
	movzx eax, byte [edx]
	mov ecx, [ebp-0xc8]
	mov [ecx+0xa], al
	movzx edi, word [ebp-0xb4]
	mov [ecx+0x8], di
	movsx eax, word [ebp-0xb4]
	cmp [ebp-0xb4], eax
	jz _Z17CM_LoadMapFromBspPKch_230
	mov dword [esp+0x4], _cstring_cmod_loadbrushes4
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z17CM_LoadMapFromBspPKch_230:
	mov edx, [ebp-0xd4]
	movzx eax, byte [edx]
	add [ebp-0xb4], eax
	add [ebp-0xc4], eax
	add ebx, 0x1
	add esi, 0x8
	add dword [ebp-0xc8], 0xc
	add edx, 0x1
	mov [ebp-0xd4], edx
	mov ecx, [ebp-0x3c]
	cmp ebx, [ecx]
	jae _Z17CM_LoadMapFromBspPKch_240
_Z17CM_LoadMapFromBspPKch_220:
	mov eax, [esi]
	lea eax, [eax+eax*4]
	mov ecx, [ebp-0xec]
	mov edx, [ecx+0xc]
	lea eax, [edx+eax*4]
	mov edi, [ebp-0xc8]
	mov [edi], eax
	mov eax, [esi+0x4]
	mov [edi+0x4], eax
	cmp eax, [ecx+0x18]
	jb _Z17CM_LoadMapFromBspPKch_250
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_cmod_loadbrushes5
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z17CM_LoadMapFromBspPKch_250
_Z17CM_LoadMapFromBspPKch_190:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_cmod_loadbrushes5
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov edx, [ebp-0x104]
	jmp _Z17CM_LoadMapFromBspPKch_260
_Z17CM_LoadMapFromBspPKch_80:
	lea edi, [ebp-0x28]
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x4
	mov dword [esp], 0x1d
	call _Z14Com_GetBspLump8LumpTypejPj
	mov esi, eax
	mov dword [esp+0x8], 0x1a
	mov dword [esp+0x4], _cstring_cmod_loadleafbru
	mov eax, [ebp-0x28]
	lea eax, [eax+eax+0x2]
	mov [esp], eax
	call _Z13CM_Hunk_AllociPKci
	mov ecx, cm
	mov [ecx+0x4c], eax
	mov edx, [ebp-0x28]
	mov [ecx+0x48], edx
	mov ebx, eax
	test edx, edx
	jz _Z17CM_LoadMapFromBspPKch_270
	xor edi, edi
_Z17CM_LoadMapFromBspPKch_290:
	mov eax, [esi]
	mov [ebx], ax
	movzx edx, ax
	cmp eax, edx
	jz _Z17CM_LoadMapFromBspPKch_280
	mov dword [esp+0x4], _cstring_cmod_loadleafbru1
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z17CM_LoadMapFromBspPKch_280:
	add edi, 0x1
	add esi, 0x4
	add ebx, 0x2
	cmp [ebp-0x28], edi
	ja _Z17CM_LoadMapFromBspPKch_290
_Z17CM_LoadMapFromBspPKch_270:
	lea eax, [ebp-0x28]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x20
	mov dword [esp], 0x24
	call _Z14Com_GetBspLump8LumpTypejPj
	mov ebx, eax
	mov dword [esp+0x8], 0x1c
	mov dword [esp+0x4], _cstring_cmod_loadcollisi
	mov eax, [ebp-0x28]
	shl eax, 0x5
	mov [esp], eax
	call _Z13CM_Hunk_AllociPKci
	mov ecx, cm
	mov [ecx+0x80], eax
	mov edx, [ebp-0x28]
	mov [ecx+0x7c], edx
	mov edx, eax
	mov eax, [ebp-0x28]
	test eax, eax
	jz _Z17CM_LoadMapFromBspPKch_300
	xor ecx, ecx
_Z17CM_LoadMapFromBspPKch_310:
	mov eax, [ebx]
	mov [edx], eax
	mov eax, [ebx+0x4]
	mov [edx+0x4], eax
	mov eax, [ebx+0x8]
	mov [edx+0x8], eax
	mov eax, [ebx+0xc]
	mov [edx+0xc], eax
	mov eax, [ebx+0x10]
	mov [edx+0x10], eax
	mov eax, [ebx+0x14]
	mov [edx+0x14], eax
	movzx eax, word [ebx+0x18]
	mov [edx+0x18], ax
	movzx eax, word [ebx+0x1a]
	mov [edx+0x1a], ax
	mov eax, [ebx+0x1c]
	mov [edx+0x1c], eax
	add ecx, 0x1
	add ebx, 0x20
	add edx, 0x20
	cmp [ebp-0x28], ecx
	ja _Z17CM_LoadMapFromBspPKch_310
_Z17CM_LoadMapFromBspPKch_300:
	cmp dword [ebp-0xe4], 0xe
	ja _Z17CM_LoadMapFromBspPKch_320
	movzx esi, byte [ebp-0xdd]
	lea edx, [ebp-0x28]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x24
	mov dword [esp], 0x1c
	call _Z14Com_GetBspLump8LumpTypejPj
	mov edi, eax
	mov eax, [ebp-0x28]
	test eax, eax
	jz _Z17CM_LoadMapFromBspPKch_330
_Z17CM_LoadMapFromBspPKch_1060:
	mov dword [esp+0x8], 0x19
	mov dword [esp+0x4], _cstring_cmod_loadleafs
	mov eax, [ebp-0x28]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*2]
	shl edx, 0x2
	mov [esp], edx
	call _Z13CM_Hunk_AllociPKci
	mov ecx, cm
	mov [ecx+0x3c], eax
	mov edx, [ebp-0x28]
	mov [ecx+0x38], edx
	mov ebx, eax
	test edx, edx
	jnz _Z17CM_LoadMapFromBspPKch_340
_Z17CM_LoadMapFromBspPKch_650:
	lea edx, [ebp-0x28]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x30
	mov dword [esp], 0x25
	call _Z14Com_GetBspLump8LumpTypejPj
	mov esi, eax
	mov edi, [ebp-0x28]
	test edi, edi
	jz _Z17CM_LoadMapFromBspPKch_350
_Z17CM_LoadMapFromBspPKch_720:
	mov dword [esp+0x8], 0x1a
	mov dword [esp+0x4], _cstring_cmod_loadsubmode
	mov eax, [ebp-0x28]
	lea eax, [eax+eax*8]
	shl eax, 0x3
	mov [esp], eax
	call _Z13CM_Hunk_AllociPKci
	mov edx, cm
	mov [edx+0x88], eax
	mov eax, [ebp-0x28]
	mov [edx+0x84], eax
	cmp eax, 0xfff
	ja _Z17CM_LoadMapFromBspPKch_360
_Z17CM_LoadMapFromBspPKch_1040:
	mov ebx, [ebp-0x28]
	test ebx, ebx
	jz _Z17CM_LoadMapFromBspPKch_370
	xor edi, edi
	mov dword [ebp-0x50], 0x0
_Z17CM_LoadMapFromBspPKch_410:
	mov eax, cm
	mov ebx, [ebp-0x50]
	add ebx, [eax+0x88]
	mov edx, esi
	mov eax, ebx
	mov ecx, 0x1
_Z17CM_LoadMapFromBspPKch_380:
	movss xmm2, dword [edx]
	subss xmm2, [_float_1_00000000]
	movss [eax], xmm2
	movss xmm0, dword [edx+0xc]
	addss xmm0, [_float_1_00000000]
	movss [eax+0xc], xmm0
	andps xmm0, [_data16_7fffffff]
	andps xmm2, [_data16_7fffffff]
	movaps xmm1, xmm2
	subss xmm1, xmm0
	pxor xmm3, xmm3
	cmpss xmm3, xmm1, 0x6
	movaps xmm1, xmm3
	andps xmm0, xmm3
	andnps xmm1, xmm2
	orps xmm1, xmm0
	movss [ebp+ecx*4-0x38], xmm1
	add ecx, 0x1
	add edx, 0x4
	add eax, 0x4
	cmp ecx, 0x4
	jnz _Z17CM_LoadMapFromBspPKch_380
	movss xmm0, dword [ebp-0x34]
	movss xmm1, dword [ebp-0x30]
	movss xmm2, dword [ebp-0x2c]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	movss [ebx+0x18], xmm0
	test edi, edi
	jz _Z17CM_LoadMapFromBspPKch_390
	mov eax, [esi+0x24]
	mov [ebx+0x1e], ax
	movzx edx, ax
	cmp eax, edx
	jz _Z17CM_LoadMapFromBspPKch_400
	mov dword [esp+0x4], _cstring_cmod_loadsubmode1
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z17CM_LoadMapFromBspPKch_400:
	mov eax, [esi+0x20]
	mov [ebx+0x1c], ax
	movzx edx, ax
	cmp eax, edx
	jz _Z17CM_LoadMapFromBspPKch_390
	mov dword [esp+0x4], _cstring_cmod_loadsubmode2
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z17CM_LoadMapFromBspPKch_390:
	add edi, 0x1
	add esi, 0x30
	add dword [ebp-0x50], 0x48
	cmp [ebp-0x28], edi
	ja _Z17CM_LoadMapFromBspPKch_410
_Z17CM_LoadMapFromBspPKch_370:
	mov dword [esp+0x10], 0x1a
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_cmod_loadbrushre
	mov dword [esp], 0x400000
	call _Z15Hunk_UserCreateiPKchhi
	mov [ebp-0xdc], eax
	mov [esp], eax
	call _Z15TempMemoryResetP8HunkUser
	mov dword [esp], 0x0
	call _Z10TempMalloci
	mov ebx, cm
	sub eax, 0x14
	mov [ebx+0x44], eax
	cmp dword [ebp-0xe4], 0xe
	ja _Z17CM_LoadMapFromBspPKch_420
	lea eax, [ebp-0x28]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x24
	mov dword [esp], 0x1c
	call _Z14Com_GetBspLump8LumpTypejPj
	mov [ebp-0xa4], eax
	mov edx, [ebx+0x3c]
	mov [ebp-0x98], edx
	mov ecx, [ebx+0x38]
	test ecx, ecx
	jnz _Z17CM_LoadMapFromBspPKch_430
_Z17CM_LoadMapFromBspPKch_560:
	lea edx, [ebp-0x28]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x30
	mov dword [esp], 0x25
	call _Z14Com_GetBspLump8LumpTypejPj
	add eax, 0x30
	mov [ebp-0x78], eax
	mov edi, cm
	cmp dword [edi+0x84], 0x1
	ja _Z17CM_LoadMapFromBspPKch_440
_Z17CM_LoadMapFromBspPKch_950:
	movzx eax, word [edi+0x8c]
	lea eax, [eax+eax*4]
	shl eax, 0x4
	add eax, [edi+0x90]
	mov [edi+0xa8], eax
	mov dword [eax+0x1c], 0x0
	mov eax, [edi+0xa8]
	mov dword [eax+0x20], 0x0
	mov eax, [edi+0xa8]
	mov dword [eax+0xc], 0xffffffff
	mov dword [edi+0xcc], 0xffffffff
	mov dword [edi+0xd0], 0x0
	mov eax, 0x7f7fffff
	mov [edi+0xd4], eax
	mov [edi+0xd8], eax
	mov [edi+0xdc], eax
	mov ebx, 0xff7fffff
	mov [edi+0xe0], ebx
	mov [edi+0xe4], ebx
	mov [edi+0xe8], ebx
	mov eax, [edi+0xa8]
	mov word [eax+0x24], 0xffff
	mov eax, [edi+0xa8]
	mov word [eax+0x26], 0xffff
	mov eax, [edi+0xa8]
	mov word [eax+0x28], 0xffff
	mov eax, [edi+0xa8]
	mov word [eax+0x2a], 0xffff
	mov eax, [edi+0xa8]
	mov word [eax+0x2c], 0xffff
	mov eax, [edi+0xa8]
	mov word [eax+0x2e], 0xffff
	mov dword [esp], 0x14
	call _Z10TempMalloci
	mov dword [eax], 0x0
	mov dword [eax+0x4], 0x0
	mov dword [eax+0xc], 0x0
	mov dword [eax+0x10], 0x0
	mov [eax+0x8], ebx
	mov ebx, eax
	sub ebx, [edi+0x44]
	sar ebx, 0x2
	lea edx, [ebx+ebx*2]
	mov ecx, edx
	shl ecx, 0x4
	add edx, ecx
	mov ecx, edx
	shl ecx, 0x8
	add edx, ecx
	mov ecx, edx
	shl ecx, 0x10
	add edx, ecx
	lea edx, [ebx+edx*4]
	mov [edi+0xec], edx
	mov word [eax+0x2], 0x1
	mov edx, [edi+0x48]
	mov ecx, [edi+0x4c]
	lea edx, [ecx+edx*2]
	mov [eax+0x8], edx
	mov ecx, [edi+0x48]
	mov edx, [edi+0x4c]
	movzx eax, word [edi+0x8c]
	mov [edx+ecx*2], ax
	add dword [edi+0x44], 0x14
	mov dword [esp], 0x0
	call _Z10TempMalloci
	sub eax, [edi+0x44]
	sar eax, 0x2
	lea ebx, [eax+eax*2]
	mov edx, ebx
	shl edx, 0x4
	add ebx, edx
	mov edx, ebx
	shl edx, 0x8
	add ebx, edx
	mov edx, ebx
	shl edx, 0x10
	add ebx, edx
	lea ebx, [eax+ebx*4]
	lea eax, [ebx+0x1]
	mov [edi+0x40], eax
	mov dword [esp+0x8], 0x1a
	mov dword [esp+0x4], _cstring_cmod_loadbrushre
	lea eax, [eax+eax*4]
	shl eax, 0x2
	mov [esp], eax
	call _Z13CM_Hunk_AllociPKci
	mov esi, eax
	lea edx, [eax+0x14]
	lea ebx, [ebx+ebx*4]
	shl ebx, 0x2
	mov eax, [edi+0x44]
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
	mov [edi+0x44], esi
	mov edx, [ebp-0xdc]
	mov [esp], edx
	call _Z16Hunk_UserDestroyP8HunkUser
	lea ecx, [ebp-0x28]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x24
	mov dword [esp], 0x1b
	call _Z14Com_GetBspLump8LumpTypejPj
	mov [ebp-0x60], eax
	mov eax, [ebp-0x28]
	test eax, eax
	jz _Z17CM_LoadMapFromBspPKch_450
_Z17CM_LoadMapFromBspPKch_920:
	mov dword [esp+0x8], 0x19
	mov dword [esp+0x4], _cstring_cmod_loadnodes
	mov eax, [ebp-0x28]
	shl eax, 0x3
	mov [esp], eax
	call _Z13CM_Hunk_AllociPKci
	mov [edi+0x34], eax
	mov edx, [ebp-0x28]
	mov [edi+0x30], edx
	mov [ebp-0x5c], eax
	test edx, edx
	jz _Z17CM_LoadMapFromBspPKch_460
	mov dword [ebp-0x58], 0x0
_Z17CM_LoadMapFromBspPKch_490:
	mov ebx, [ebp-0x60]
	mov eax, [ebx]
	lea eax, [eax+eax*4]
	mov edi, cm
	mov edx, [edi+0xc]
	lea eax, [edx+eax*4]
	mov edx, [ebp-0x5c]
	mov [edx], eax
	mov esi, ebx
	mov ebx, edx
	xor edi, edi
_Z17CM_LoadMapFromBspPKch_480:
	mov eax, [esi+0x4]
	mov [ebx+0x4], ax
	movsx edx, ax
	cmp eax, edx
	jz _Z17CM_LoadMapFromBspPKch_470
	mov dword [esp+0x4], _cstring_cmod_loadnodes_c
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z17CM_LoadMapFromBspPKch_470:
	add edi, 0x1
	add esi, 0x4
	add ebx, 0x2
	cmp edi, 0x2
	jnz _Z17CM_LoadMapFromBspPKch_480
	add dword [ebp-0x58], 0x1
	add dword [ebp-0x5c], 0x8
	add dword [ebp-0x60], 0x24
	mov ecx, [ebp-0x58]
	cmp ecx, [ebp-0x28]
	jb _Z17CM_LoadMapFromBspPKch_490
_Z17CM_LoadMapFromBspPKch_460:
	lea ebx, [ebp-0x28]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x4
	mov dword [esp], 0x1e
	call _Z14Com_GetBspLump8LumpTypejPj
	mov esi, eax
	mov dword [esp+0x8], 0x1c
	mov dword [esp+0x4], _cstring_cmod_loadleafsur
	mov eax, [ebp-0x28]
	shl eax, 0x2
	mov [esp], eax
	call _Z13CM_Hunk_AllociPKci
	mov ebx, cm
	mov [ebx+0x54], eax
	mov eax, [ebp-0x28]
	mov [ebx+0x50], eax
	shl eax, 0x2
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov eax, [ebx+0x54]
	mov [esp], eax
	call Com_Memcpy
	lea edi, [ebp-0x28]
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0xc
	mov dword [esp], 0x1f
	call _Z14Com_GetBspLump8LumpTypejPj
	mov esi, eax
	mov dword [esp+0x8], 0x1c
	mov dword [esp+0x4], _cstring_cmod_loadcollisi1
	mov eax, [ebp-0x28]
	lea eax, [eax+eax*2]
	shl eax, 0x2
	mov [esp], eax
	call _Z13CM_Hunk_AllociPKci
	mov [ebx+0x5c], eax
	mov eax, [ebp-0x28]
	mov [ebx+0x58], eax
	lea eax, [eax+eax*2]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov eax, [ebx+0x5c]
	mov [esp], eax
	call Com_Memcpy
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x2
	mov dword [esp], 0x20
	call _Z14Com_GetBspLump8LumpTypejPj
	mov esi, eax
	mov dword [esp+0x8], 0x1c
	mov dword [esp+0x4], _cstring_cmod_loadcollisi2
	mov eax, [ebp-0x28]
	add eax, eax
	mov [esp], eax
	call _Z13CM_Hunk_AllociPKci
	mov [ebx+0x64], eax
	mov ecx, [ebp-0x28]
	mov edx, 0xaaaaaaab
	mov eax, ecx
	mul edx
	shr edx, 1
	mov [ebx+0x60], edx
	lea eax, [ecx+ecx]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov eax, [ebx+0x64]
	mov [esp], eax
	call Com_Memcpy
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x21
	call _Z14Com_GetBspLump8LumpTypejPj
	mov esi, eax
	mov dword [esp+0x8], 0x1c
	mov dword [esp+0x4], _cstring_cmod_loadcollisi3
	mov eax, [ebp-0x28]
	mov [esp], eax
	call _Z13CM_Hunk_AllociPKci
	mov [ebx+0x68], eax
	mov edx, [ebp-0x28]
	mov [esp+0x8], edx
	mov [esp+0x4], esi
	mov [esp], eax
	call Com_Memcpy
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x1c
	mov dword [esp], 0x22
	call _Z14Com_GetBspLump8LumpTypejPj
	mov esi, eax
	mov dword [esp+0x8], 0x1c
	mov dword [esp+0x4], _cstring_cmod_loadcollisi4
	mov eax, [ebp-0x28]
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov [esp], eax
	call _Z13CM_Hunk_AllociPKci
	mov [ebx+0x70], eax
	mov edx, [ebp-0x28]
	mov [ebx+0x6c], edx
	mov edx, eax
	mov eax, [ebp-0x28]
	test eax, eax
	jz _Z17CM_LoadMapFromBspPKch_500
	xor ecx, ecx
_Z17CM_LoadMapFromBspPKch_510:
	mov eax, [esi]
	mov [edx], eax
	mov eax, [esi+0x4]
	mov [edx+0x4], eax
	mov eax, [esi+0x8]
	mov [edx+0x8], eax
	mov eax, [esi+0xc]
	mov [edx+0xc], eax
	mov eax, [esi+0x10]
	mov [edx+0x10], eax
	mov eax, [esi+0x14]
	mov [edx+0x14], eax
	mov eax, [esi+0x18]
	mov [edx+0x18], eax
	add ecx, 0x1
	add esi, 0x1c
	add edx, 0x1c
	cmp ecx, [ebp-0x28]
	jb _Z17CM_LoadMapFromBspPKch_510
_Z17CM_LoadMapFromBspPKch_500:
	lea ebx, [ebp-0x28]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0xc
	mov dword [esp], 0x23
	call _Z14Com_GetBspLump8LumpTypejPj
	mov ebx, eax
	mov dword [esp+0x8], 0x1c
	mov dword [esp+0x4], _cstring_cmod_loadcollisi5
	mov eax, [ebp-0x28]
	lea eax, [eax+eax*2]
	shl eax, 0x2
	mov [esp], eax
	call _Z13CM_Hunk_AllociPKci
	mov edi, cm
	mov [edi+0x78], eax
	mov edx, [ebp-0x28]
	mov [edi+0x74], edx
	mov ecx, eax
	test edx, edx
	jz _Z17CM_LoadMapFromBspPKch_520
	xor esi, esi
_Z17CM_LoadMapFromBspPKch_530:
	movzx eax, byte [ebx+0x2]
	mov [ecx], al
	movzx eax, byte [ebx+0x3]
	mov [ecx+0x1], al
	mov eax, [ebx+0x4]
	mov [ecx+0x4], eax
	mov eax, [ebx+0x8]
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	add eax, [edi+0x70]
	mov [ecx+0x8], eax
	add esi, 0x1
	add ebx, 0xc
	add ecx, 0xc
	cmp esi, [ebp-0x28]
	jb _Z17CM_LoadMapFromBspPKch_530
_Z17CM_LoadMapFromBspPKch_520:
	cmp byte [ebp-0xe5], 0x0
	jz _Z17CM_LoadMapFromBspPKch_540
	lea edi, [ebp-0x28]
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x26
	call _Z14Com_GetBspLump8LumpTypejPj
	mov esi, eax
	mov eax, [ebp-0x28]
	test eax, eax
	jz _Z17CM_LoadMapFromBspPKch_550
	mov ebx, cm
	mov dword [ebx+0xa0], 0x1
	mov eax, [esi]
	mov [ebx+0x94], eax
	mov eax, [esi+0x4]
	mov [ebx+0x98], eax
	mov dword [esp+0x8], 0x9
	mov dword [esp+0x4], _cstring_cmod_loadvisibil
	mov eax, [ebp-0x28]
	sub eax, 0x8
	mov [esp], eax
	call _Z13CM_Hunk_AllociPKci
	mov [ebx+0x9c], eax
	mov edx, [ebp-0x28]
	sub edx, 0x8
	mov [esp+0x8], edx
	lea edx, [esi+0x8]
	mov [esp+0x4], edx
	mov [esp], eax
	call Com_Memcpy
_Z17CM_LoadMapFromBspPKch_730:
	mov esi, cm
	mov ebx, [esi]
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call _Z16Com_EntityStringPi
	mov ecx, [ebp-0x1c]
	mov edx, eax
	mov eax, ebx
	call _Z21MapEnts_GetFromStringPKcS0_i
	mov [esi+0xa4], eax
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17CM_LoadMapFromBspPKch_420:
	lea edx, [ebp-0x28]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x18
	mov dword [esp], 0x1c
	call _Z14Com_GetBspLump8LumpTypejPj
	mov [ebp-0x8c], eax
	mov edi, cm
	mov ecx, [edi+0x3c]
	mov [ebp-0x80], ecx
	mov edx, [edi+0x38]
	test edx, edx
	jz _Z17CM_LoadMapFromBspPKch_560
	mov dword [ebp-0x90], 0x0
	jmp _Z17CM_LoadMapFromBspPKch_570
_Z17CM_LoadMapFromBspPKch_590:
	xor esi, esi
	mov eax, [ebp-0x80]
	mov [eax+0x4], esi
	movzx edx, word [eax+0x2]
	mov [ebp-0x10c], edx
	test edx, edx
	jg _Z17CM_LoadMapFromBspPKch_580
_Z17CM_LoadMapFromBspPKch_610:
	xor esi, esi
_Z17CM_LoadMapFromBspPKch_630:
	mov ecx, [ebp-0x80]
	mov [ecx+0x8], esi
	mov eax, [edi+0x4c]
	mov ebx, [ebp-0x84]
	lea eax, [eax+ebx*2]
	mov ecx, [ebp-0x80]
	mov edx, [ebp-0x88]
	call _Z23CMod_PartionLeafBrushesPtiP7cLeaf_t
	add dword [ebp-0x90], 0x1
	add dword [ebp-0x8c], 0x18
	add dword [ebp-0x80], 0x2c
	mov eax, [ebp-0x90]
	cmp eax, [edi+0x38]
	jae _Z17CM_LoadMapFromBspPKch_560
	mov edi, cm
_Z17CM_LoadMapFromBspPKch_570:
	mov ebx, [ebp-0x8c]
	mov ebx, [ebx+0x10]
	mov [ebp-0x88], ebx
	mov eax, [ebp-0x8c]
	mov eax, [eax+0xc]
	mov [ebp-0x84], eax
	test ebx, ebx
	jz _Z17CM_LoadMapFromBspPKch_590
	mov ebx, eax
	mov edx, [edi+0x90]
	mov eax, [edi+0x4c]
	lea ecx, [eax+ebx*2]
	xor ebx, ebx
	xor esi, esi
_Z17CM_LoadMapFromBspPKch_600:
	movzx eax, word [ecx]
	lea eax, [eax+eax*4]
	shl eax, 0x4
	or esi, [eax+edx+0xc]
	add ebx, 0x1
	add ecx, 0x2
	cmp [ebp-0x88], ebx
	ja _Z17CM_LoadMapFromBspPKch_600
	mov eax, [ebp-0x80]
	mov [eax+0x4], esi
	movzx edx, word [eax+0x2]
	mov [ebp-0x10c], edx
	test edx, edx
	jle _Z17CM_LoadMapFromBspPKch_610
_Z17CM_LoadMapFromBspPKch_580:
	mov ecx, [edi+0x1c]
	mov [ebp-0x7c], ecx
	mov ebx, [ebp-0x80]
	movzx ecx, word [ebx]
	shl ecx, 0x5
	add ecx, [edi+0x80]
	xor ebx, ebx
	xor esi, esi
	mov edx, [ebp-0x7c]
_Z17CM_LoadMapFromBspPKch_620:
	movzx eax, word [ecx+0x18]
	lea eax, [eax+eax*8]
	or esi, [edx+eax*8+0x44]
	add ebx, 0x1
	add ecx, 0x20
	cmp [ebp-0x10c], ebx
	jnz _Z17CM_LoadMapFromBspPKch_620
	jmp _Z17CM_LoadMapFromBspPKch_630
_Z17CM_LoadMapFromBspPKch_320:
	movzx esi, byte [ebp-0xdd]
	lea ebx, [ebp-0x28]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x18
	mov dword [esp], 0x1c
	call _Z14Com_GetBspLump8LumpTypejPj
	mov edi, eax
	mov eax, [ebp-0x28]
	test eax, eax
	jz _Z17CM_LoadMapFromBspPKch_640
_Z17CM_LoadMapFromBspPKch_1050:
	mov dword [esp+0x8], 0x19
	mov dword [esp+0x4], _cstring_cmod_loadleafs
	mov eax, [ebp-0x28]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*2]
	shl edx, 0x2
	mov [esp], edx
	call _Z13CM_Hunk_AllociPKci
	mov ecx, cm
	mov [ecx+0x3c], eax
	mov edx, [ebp-0x28]
	mov [ecx+0x38], edx
	mov ebx, eax
	test edx, edx
	jz _Z17CM_LoadMapFromBspPKch_650
	mov dword [ebp-0xac], 0x0
	mov eax, esi
	test al, al
	jz _Z17CM_LoadMapFromBspPKch_660
_Z17CM_LoadMapFromBspPKch_710:
	mov esi, [edi]
	mov [ebx+0x28], si
	movsx eax, si
	cmp esi, eax
	jz _Z17CM_LoadMapFromBspPKch_670
	mov dword [esp+0x4], _cstring_cmod_loadleafs_c
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z17CM_LoadMapFromBspPKch_670:
	mov eax, [edi+0x4]
	mov [ebx], ax
	movzx edx, ax
	cmp eax, edx
	jz _Z17CM_LoadMapFromBspPKch_680
	mov dword [esp+0x4], _cstring_cmod_loadleafs_f
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z17CM_LoadMapFromBspPKch_680:
	mov eax, [edi+0x8]
	mov [ebx+0x2], ax
	movzx edx, ax
	cmp eax, edx
	jz _Z17CM_LoadMapFromBspPKch_690
	mov dword [esp+0x4], _cstring_cmod_loadleafs_c1
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z17CM_LoadMapFromBspPKch_690:
	mov ecx, cm
	cmp esi, [ecx+0x94]
	jl _Z17CM_LoadMapFromBspPKch_700
	lea eax, [esi+0x1]
	mov [ecx+0x94], eax
_Z17CM_LoadMapFromBspPKch_700:
	add dword [ebp-0xac], 0x1
	add edi, 0x18
	add ebx, 0x2c
	mov edx, [ebp-0xac]
	cmp [ebp-0x28], edx
	ja _Z17CM_LoadMapFromBspPKch_710
	lea edx, [ebp-0x28]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x30
	mov dword [esp], 0x25
	call _Z14Com_GetBspLump8LumpTypejPj
	mov esi, eax
	mov edi, [ebp-0x28]
	test edi, edi
	jnz _Z17CM_LoadMapFromBspPKch_720
_Z17CM_LoadMapFromBspPKch_350:
	mov dword [esp+0x4], _cstring_map_with_no_brus
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z17CM_LoadMapFromBspPKch_720
_Z17CM_LoadMapFromBspPKch_540:
	mov dword [esp], 0x26
	call _Z14Com_BspHasLump8LumpType
	test al, al
	jz _Z17CM_LoadMapFromBspPKch_730
	mov dword [esp+0x4], _cstring_in_single_player
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z17CM_LoadMapFromBspPKch_730
_Z17CM_LoadMapFromBspPKch_660:
	mov eax, [edi+0x4]
	mov [ebx], ax
	movzx edx, ax
	cmp eax, edx
	jz _Z17CM_LoadMapFromBspPKch_740
	mov dword [esp+0x4], _cstring_cmod_loadleafs_f
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z17CM_LoadMapFromBspPKch_740:
	mov eax, [edi+0x8]
	mov [ebx+0x2], ax
	movzx edx, ax
	cmp eax, edx
	jz _Z17CM_LoadMapFromBspPKch_750
	mov dword [esp+0x4], _cstring_cmod_loadleafs_c1
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z17CM_LoadMapFromBspPKch_750:
	add dword [ebp-0xac], 0x1
	add edi, 0x18
	add ebx, 0x2c
	mov eax, [ebp-0xac]
	cmp [ebp-0x28], eax
	ja _Z17CM_LoadMapFromBspPKch_660
	jmp _Z17CM_LoadMapFromBspPKch_650
_Z17CM_LoadMapFromBspPKch_550:
	mov ebx, cm
	mov eax, [ebx+0x94]
	add eax, 0x3f
	and eax, 0xffffffc0
	sar eax, 0x3
	mov [ebx+0x98], eax
	mov dword [ebx+0x94], 0x1
	mov dword [esp+0x8], 0x9
	mov dword [esp+0x4], _cstring_cmod_loadvisibil
	mov eax, [ebx+0x98]
	mov [esp], eax
	call _Z13CM_Hunk_AllociPKci
	mov [ebx+0x9c], eax
	mov edx, [ebx+0x98]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0xff
	mov [esp], eax
	call _Z10Com_MemsetPvii
	jmp _Z17CM_LoadMapFromBspPKch_730
_Z17CM_LoadMapFromBspPKch_430:
	mov dword [ebp-0xa8], 0x0
	jmp _Z17CM_LoadMapFromBspPKch_760
_Z17CM_LoadMapFromBspPKch_780:
	xor esi, esi
	mov edi, cm
	mov eax, [ebp-0x98]
	mov [eax+0x4], esi
	movzx edx, word [eax+0x2]
	mov [ebp-0x10c], edx
	test edx, edx
	jg _Z17CM_LoadMapFromBspPKch_770
_Z17CM_LoadMapFromBspPKch_800:
	xor esi, esi
_Z17CM_LoadMapFromBspPKch_820:
	mov ecx, [ebp-0x98]
	mov [ecx+0x8], esi
	mov eax, [edi+0x4c]
	mov ebx, [ebp-0x9c]
	lea eax, [eax+ebx*2]
	mov ecx, [ebp-0x98]
	mov edx, [ebp-0xa0]
	call _Z23CMod_PartionLeafBrushesPtiP7cLeaf_t
	add dword [ebp-0xa8], 0x1
	add dword [ebp-0xa4], 0x24
	add dword [ebp-0x98], 0x2c
	mov eax, [ebp-0xa8]
	cmp eax, [edi+0x38]
	jae _Z17CM_LoadMapFromBspPKch_560
_Z17CM_LoadMapFromBspPKch_760:
	mov ecx, [ebp-0xa4]
	mov ecx, [ecx+0x14]
	mov [ebp-0xa0], ecx
	mov ebx, [ebp-0xa4]
	mov ebx, [ebx+0x10]
	mov [ebp-0x9c], ebx
	test ecx, ecx
	jz _Z17CM_LoadMapFromBspPKch_780
	mov edi, cm
	mov edx, [edi+0x90]
	mov eax, [edi+0x4c]
	lea ecx, [eax+ebx*2]
	xor ebx, ebx
	xor esi, esi
_Z17CM_LoadMapFromBspPKch_790:
	movzx eax, word [ecx]
	lea eax, [eax+eax*4]
	shl eax, 0x4
	or esi, [eax+edx+0xc]
	add ebx, 0x1
	add ecx, 0x2
	cmp [ebp-0xa0], ebx
	ja _Z17CM_LoadMapFromBspPKch_790
	mov eax, [ebp-0x98]
	mov [eax+0x4], esi
	movzx edx, word [eax+0x2]
	mov [ebp-0x10c], edx
	test edx, edx
	jle _Z17CM_LoadMapFromBspPKch_800
_Z17CM_LoadMapFromBspPKch_770:
	mov ecx, [edi+0x1c]
	mov [ebp-0x94], ecx
	mov ebx, [ebp-0x98]
	movzx ecx, word [ebx]
	shl ecx, 0x5
	add ecx, [edi+0x80]
	xor ebx, ebx
	xor esi, esi
	mov edx, [ebp-0x94]
_Z17CM_LoadMapFromBspPKch_810:
	movzx eax, word [ecx+0x18]
	lea eax, [eax+eax*8]
	or esi, [edx+eax*8+0x44]
	add ebx, 0x1
	add ecx, 0x20
	cmp ebx, [ebp-0x10c]
	jnz _Z17CM_LoadMapFromBspPKch_810
	jmp _Z17CM_LoadMapFromBspPKch_820
_Z17CM_LoadMapFromBspPKch_340:
	mov dword [ebp-0xb0], 0x0
	mov eax, esi
	test al, al
	jz _Z17CM_LoadMapFromBspPKch_830
_Z17CM_LoadMapFromBspPKch_880:
	mov esi, [edi]
	mov [ebx+0x28], si
	movsx eax, si
	cmp esi, eax
	jz _Z17CM_LoadMapFromBspPKch_840
	mov dword [esp+0x4], _cstring_cmod_loadleafs_c
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z17CM_LoadMapFromBspPKch_840:
	mov eax, [edi+0x8]
	mov [ebx], ax
	movzx edx, ax
	cmp eax, edx
	jz _Z17CM_LoadMapFromBspPKch_850
	mov dword [esp+0x4], _cstring_cmod_loadleafs_f
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z17CM_LoadMapFromBspPKch_850:
	mov eax, [edi+0xc]
	mov [ebx+0x2], ax
	movzx edx, ax
	cmp eax, edx
	jz _Z17CM_LoadMapFromBspPKch_860
	mov dword [esp+0x4], _cstring_cmod_loadleafs_c1
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z17CM_LoadMapFromBspPKch_860:
	mov ecx, cm
	cmp esi, [ecx+0x94]
	jl _Z17CM_LoadMapFromBspPKch_870
	lea eax, [esi+0x1]
	mov [ecx+0x94], eax
_Z17CM_LoadMapFromBspPKch_870:
	add dword [ebp-0xb0], 0x1
	add edi, 0x24
	add ebx, 0x2c
	mov edx, [ebp-0xb0]
	cmp [ebp-0x28], edx
	ja _Z17CM_LoadMapFromBspPKch_880
	jmp _Z17CM_LoadMapFromBspPKch_650
_Z17CM_LoadMapFromBspPKch_830:
	mov eax, [edi+0x8]
	mov [ebx], ax
	movzx edx, ax
	cmp eax, edx
	jz _Z17CM_LoadMapFromBspPKch_890
	mov dword [esp+0x4], _cstring_cmod_loadleafs_f
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z17CM_LoadMapFromBspPKch_890:
	mov eax, [edi+0xc]
	mov [ebx+0x2], ax
	movzx edx, ax
	cmp eax, edx
	jz _Z17CM_LoadMapFromBspPKch_900
	mov dword [esp+0x4], _cstring_cmod_loadleafs_c1
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z17CM_LoadMapFromBspPKch_900:
	add dword [ebp-0xb0], 0x1
	add edi, 0x24
	add ebx, 0x2c
	mov ecx, [ebp-0xb0]
	cmp [ebp-0x28], ecx
	ja _Z17CM_LoadMapFromBspPKch_830
	jmp _Z17CM_LoadMapFromBspPKch_650
_Z17CM_LoadMapFromBspPKch_10:
	mov dword [esp+0x4], _cstring_map_with_no_mate
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z17CM_LoadMapFromBspPKch_910
_Z17CM_LoadMapFromBspPKch_450:
	mov dword [esp+0x4], _cstring_map_has_no_nodes
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z17CM_LoadMapFromBspPKch_920
_Z17CM_LoadMapFromBspPKch_440:
	mov dword [ebp-0x70], 0x1
	mov dword [ebp-0x54], 0x48
	mov [ebp-0xfc], edi
	mov [ebp-0xf0], edi
	mov [ebp-0x100], edi
	jmp _Z17CM_LoadMapFromBspPKch_930
_Z17CM_LoadMapFromBspPKch_960:
	xor edi, edi
	mov ebx, [ebp-0x74]
	mov [ebx+0x20], edi
	add ebx, 0x1c
	mov [ebp-0x64], ebx
	movzx edi, word [ebx+0x2]
	test edi, edi
	jg _Z17CM_LoadMapFromBspPKch_940
_Z17CM_LoadMapFromBspPKch_990:
	xor esi, esi
_Z17CM_LoadMapFromBspPKch_1010:
	mov edi, [ebp-0x74]
	mov [edi+0x24], esi
	mov ecx, [ebp-0x64]
	mov edx, [ebp-0x68]
	mov eax, [ebp-0x6c]
	call _Z23CMod_PartionLeafBrushesPtiP7cLeaf_t
	add dword [ebp-0x70], 0x1
	add dword [ebp-0x78], 0x30
	add dword [ebp-0x54], 0x48
	mov edi, [ebp-0x100]
	mov eax, [ebp-0x70]
	cmp eax, [edi+0x84]
	jae _Z17CM_LoadMapFromBspPKch_950
_Z17CM_LoadMapFromBspPKch_930:
	mov ecx, [ebp-0x54]
	add ecx, [edi+0x88]
	mov [ebp-0x74], ecx
	mov ebx, [ebp-0x78]
	mov ebx, [ebx+0x2c]
	mov [ebp-0x68], ebx
	mov dword [esp+0x8], 0x1a
	mov dword [esp+0x4], _cstring_cmod_loadsubmode3
	mov eax, ebx
	add eax, eax
	mov [esp], eax
	call _Z13CM_Hunk_AllociPKci
	mov [ebp-0x6c], eax
	test ebx, ebx
	jle _Z17CM_LoadMapFromBspPKch_960
	xor esi, esi
	xor edi, edi
_Z17CM_LoadMapFromBspPKch_980:
	mov ebx, esi
	mov eax, [ebp-0x78]
	add ebx, [eax+0x28]
	mov edx, [ebp-0x6c]
	mov [edx+esi*2], bx
	movzx eax, bx
	cmp ebx, eax
	jz _Z17CM_LoadMapFromBspPKch_970
	mov dword [esp+0x4], _cstring_cmod_loadsubmode4
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z17CM_LoadMapFromBspPKch_970:
	mov ecx, [ebp-0xfc]
	mov edx, [ecx+0x90]
	lea eax, [ebx+ebx*4]
	shl eax, 0x4
	or edi, [eax+edx+0xc]
	add esi, 0x1
	cmp [ebp-0x68], esi
	jnz _Z17CM_LoadMapFromBspPKch_980
	mov ebx, [ebp-0x74]
	mov [ebx+0x20], edi
	add ebx, 0x1c
	mov [ebp-0x64], ebx
	movzx edi, word [ebx+0x2]
	test edi, edi
	jle _Z17CM_LoadMapFromBspPKch_990
_Z17CM_LoadMapFromBspPKch_940:
	mov eax, [ebp-0xf0]
	mov ecx, [eax+0x1c]
	mov ebx, [ebp-0x74]
	movzx edx, word [ebx+0x1c]
	shl edx, 0x5
	add edx, [eax+0x80]
	xor ebx, ebx
	xor esi, esi
_Z17CM_LoadMapFromBspPKch_1000:
	movzx eax, word [edx+0x18]
	lea eax, [eax+eax*8]
	or esi, [ecx+eax*8+0x44]
	add ebx, 0x1
	add edx, 0x20
	cmp ebx, edi
	jnz _Z17CM_LoadMapFromBspPKch_1000
	jmp _Z17CM_LoadMapFromBspPKch_1010
_Z17CM_LoadMapFromBspPKch_60:
	mov dword [esp+0x8], 0x1a
	mov dword [esp+0x4], _cstring_cmod_loadbrushsi
	mov [esp], eax
	call _Z13CM_Hunk_AllociPKci
	mov edx, [ebp-0x20]
	mov ecx, [ebp-0x1c]
	jmp _Z17CM_LoadMapFromBspPKch_1020
_Z17CM_LoadMapFromBspPKch_50:
	mov dword [esp+0x8], 0x1a
	mov dword [esp+0x4], _cstring_cmod_loadbrushsi
	mov [esp], edi
	call _Z13CM_Hunk_AllociPKci
	mov edx, [ebp-0x28]
	jmp _Z17CM_LoadMapFromBspPKch_1030
_Z17CM_LoadMapFromBspPKch_360:
	mov dword [esp+0x4], _cstring_max_submodels_ex
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z17CM_LoadMapFromBspPKch_1040
_Z17CM_LoadMapFromBspPKch_640:
	mov dword [esp+0x4], _cstring_map_with_no_leaf
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z17CM_LoadMapFromBspPKch_1050
_Z17CM_LoadMapFromBspPKch_330:
	mov dword [esp+0x4], _cstring_map_with_no_leaf
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z17CM_LoadMapFromBspPKch_1060
	nop


;Initialized global or static variables of cm_load_obj:
SECTION .data
g_purgeableEnts: dd _cstring_misc_model, _cstring_misc_prefab, _cstring_dyn_brushmodel, _cstring_dyn_model, _cstring_reflection_probe, _cstring_info_null, _cstring_func_group, 0x0


;Initialized constant data of cm_load_obj:
SECTION .rdata


;Zero initialized global or static variables of cm_load_obj:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_null:		db 0
_cstring_cmod_partionleaf:		db "CMod_PartionLeafBrushes_r",0
_cstring_cmod_partionleaf1:		db 015h,"CMod_PartionLeafBrushes_r: child exceeded",0
_cstring_cmod_partionleaf2:		db 015h,"CMod_PartionLeafBrushes_r: leafBrushCount exceeded",0
_cstring_cmod_loadentitys:		db "CMod_LoadEntityString",0
_cstring_classname:		db "classname",0
_cstring_light:		db "light",0
_cstring_pl:		db "pl#",0
_cstring_cmod_loadplanes:		db "CMod_LoadPlanes",0
_cstring_map_with_no_plan:		db 015h,"Map with no planes",0
_cstring_number_of_planes:		db 015h,"Number of planes exceeds 65536",0
_cstring_cm_loadmapfrombs:		db "CM_LoadMapFromBsp",0
_cstring_cmod_loadmateria:		db "CMod_LoadMaterials",0
_cstring_cmod_loadbrushes:		db 015h,"CMod_LoadBrushes: bad number of side edge counts: %i != %i",0
_cstring_cmod_loadbrushes1:		db "CMod_LoadBrushes",0
_cstring_cmod_loadbrushes2:		db 015h,"CMod_LoadBrushes: cm.numBrushes exceeded",0
_cstring_cmod_loadbrushes3:		db 015h,"CMod_LoadBrushes: axialMaterialNum exceeded",0
_cstring_cmod_loadbrushes4:		db 015h,"CMod_LoadBrushes: maximum edge offset exceeded",0
_cstring_cmod_loadbrushes5:		db 015h,"CMod_LoadBrushes: bad materialNum: %brushIter",0
_cstring_cmod_loadleafbru:		db "CMod_LoadLeafBrushes",0
_cstring_cmod_loadleafbru1:		db 015h,"CMod_LoadLeafBrushes: brushIndex exceeded",0
_cstring_cmod_loadcollisi:		db "CMod_LoadCollisionAabbTrees",0
_cstring_cmod_loadleafs:		db "CMod_LoadLeafs",0
_cstring_cmod_loadsubmode:		db "CMod_LoadSubmodels",0
_cstring_cmod_loadsubmode1:		db 015h,"CMod_LoadSubmodels: collAabbCount exceeded",0
_cstring_cmod_loadsubmode2:		db 015h,"CMod_LoadSubmodels: firstCollAabbIndex exceeded",0
_cstring_cmod_loadbrushre:		db "CMod_LoadBrushRelated",0
_cstring_cmod_loadnodes:		db "CMod_LoadNodes",0
_cstring_cmod_loadnodes_c:		db 015h,"CMod_LoadNodes: children exceeded",0
_cstring_cmod_loadleafsur:		db "CMod_LoadLeafSurfaces",0
_cstring_cmod_loadcollisi1:		db "CMod_LoadCollisionVerts",0
_cstring_cmod_loadcollisi2:		db "CMod_LoadCollisionTriangles",0
_cstring_cmod_loadcollisi3:		db "CMod_LoadCollisionEdgeWalkable",0
_cstring_cmod_loadcollisi4:		db "CMod_LoadCollisionBorders",0
_cstring_cmod_loadcollisi5:		db "CMod_LoadCollisionPartitions",0
_cstring_cmod_loadvisibil:		db "CMod_LoadVisibility",0
_cstring_cmod_loadleafs_c:		db 015h,"CMod_LoadLeafs: cluster exceeded",0
_cstring_cmod_loadleafs_f:		db 015h,"CMod_LoadLeafs: firstCollAabbIndex exceeded",0
_cstring_cmod_loadleafs_c1:		db 015h,"CMod_LoadLeafs: collAabbCount exceeded",0
_cstring_map_with_no_brus:		db 015h,"Map with no brush models (should at least have the world model)",0
_cstring_in_single_player:		db "In single player, do not compile the bsp with visibility",0
_cstring_map_with_no_mate:		db 015h,"Map with no materials",0
_cstring_map_has_no_nodes:		db 015h,"Map has no nodes",0
_cstring_cmod_loadsubmode3:		db "CMod_LoadSubmodelBrushNodes",0
_cstring_cmod_loadsubmode4:		db 015h,"CMod_LoadSubmodelBrushNodes: leafBrushes exceeded",0
_cstring_cmod_loadbrushsi:		db "CMod_LoadBrushSides",0
_cstring_max_submodels_ex:		db 015h,"MAX_SUBMODELS exceeded",0
_cstring_map_with_no_leaf:		db 015h,"Map with no leafs",0
_cstring_misc_model:		db "misc_model",0
_cstring_misc_prefab:		db "misc_prefab",0
_cstring_dyn_brushmodel:		db "dyn_brushmodel",0
_cstring_dyn_model:		db "dyn_model",0
_cstring_reflection_probe:		db "reflection_probe",0
_cstring_info_null:		db "info_null",0
_cstring_func_group:		db "func_group",0



;All constant floats and doubles:
SECTION .rdata
_float__340282346638528859811704:		dd 0xff7fffff	; -3.40282e+38
_float_3402823466385288598117041:		dd 0x7f7fffff	; 3.40282e+38
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_0_00000000:		dd 0x0	; 0
_float_0_12500000:		dd 0x3e000000	; 0.125
_float_1_00000000:		dd 0x3f800000	; 1
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; OWORD

