;Imports of com_bsp_load_obj:
	extern DB_FindXAssetHeaderReal
	extern comWorld
	extern Hunk_AllocInternal
	extern strcmp
	extern Hunk_AllocAlignInternal
	extern memcpy
	extern Com_Error
	extern FS_FOpenFileRead
	extern Z_MallocGarbageInternal
	extern FS_Read
	extern FS_FCloseFile
	extern Z_FreeInternal
	extern va
	extern Com_BlockChecksumKey32
	extern FS_OpenFileOverwrite
	extern FS_Write
	extern strcpy
	extern useFastFile
	extern Com_GetBspLump
	extern Com_LoadBsp
	extern comBspGlob


;Exports of com_bsp_load_obj:
	global _ZZ29Com_GetBspLumpCountForVersioniE15lumpsForVersion
	global Com_LoadWorld_FastFile
	global Com_LoadWorld_LoadObj
	global Com_SaveLump
	global Com_LoadWorld
	global Com_UnloadBsp
	global Com_CleanupBsp
	global Com_EntityString
	global Com_GetBspVersion
	global Com_ShutdownWorld


SECTION .text


;Com_LoadWorld_FastFile(char const*)
Com_LoadWorld_FastFile:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0xc
	call DB_FindXAssetHeaderReal
	leave
	ret
	nop


;Com_LoadWorld_LoadObj(char const*)
Com_LoadWorld_LoadObj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov eax, [comBspGlob+0x40]
	mov eax, [eax+0x4]
	cmp eax, 0xe
	jbe Com_LoadWorld_LoadObj_10
	cmp eax, 0x10
	jbe Com_LoadWorld_LoadObj_20
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x80
	mov dword [esp], 0x2b
	call Com_GetBspLump
	mov esi, eax
	cmp dword [ebp-0x1c], 0x1
	jbe Com_LoadWorld_LoadObj_30
Com_LoadWorld_LoadObj_250:
	mov eax, [ebp-0x1c]
	mov ebx, comWorld
	mov [ebx+0x8], eax
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4]
	mov [esp], eax
	call Hunk_AllocInternal
	mov [ebx+0xc], eax
	mov ecx, [ebp-0x1c]
	test ecx, ecx
	jz Com_LoadWorld_LoadObj_40
	mov dword [ebp-0x2c], 0x0
	add eax, 0x30
	mov [ebp-0x40], eax
	add esi, 0x40
	mov [ebp-0x44], esi
	mov ecx, esi
	mov ebx, eax
Com_LoadWorld_LoadObj_120:
	movzx eax, byte [ecx-0x40]
	mov [ebx-0x30], al
	movzx eax, byte [ecx-0x3f]
	mov [ebx-0x2f], al
	movzx eax, byte [ecx-0xc]
	mov [ebx-0x2e], al
	mov eax, [ecx-0x3c]
	mov [ebx-0x2c], eax
	mov eax, [ecx-0x38]
	mov [ebx-0x28], eax
	mov eax, [ecx-0x34]
	mov [ebx-0x24], eax
	mov eax, [ecx-0x30]
	mov [ebx-0x20], eax
	mov eax, [ecx-0x2c]
	mov [ebx-0x1c], eax
	mov eax, [ecx-0x28]
	mov [ebx-0x18], eax
	mov eax, [ecx-0x24]
	mov [ebx-0x14], eax
	mov eax, [ecx-0x20]
	mov [ebx-0x10], eax
	mov eax, [ecx-0x1c]
	mov [ebx-0xc], eax
	mov eax, [ecx-0x18]
	mov [ebx-0x8], eax
	mov eax, [ecx-0x14]
	mov [ebx-0x4], eax
	mov eax, [ecx-0x10]
	mov [ebx], eax
	mov eax, [ecx-0x8]
	mov [ebx+0x8], eax
	mov eax, [ecx-0x4]
	mov [ebx+0xc], eax
	cmp byte [ecx-0x40], 0x1
	jbe Com_LoadWorld_LoadObj_50
	mov eax, comWorld
	mov eax, [eax+0xc]
	mov edx, [ebp-0x2c]
	test edx, edx
	jz Com_LoadWorld_LoadObj_60
	mov esi, eax
	xor edi, edi
Com_LoadWorld_LoadObj_90:
	mov ebx, [esi+0x40]
	test ebx, ebx
	jz Com_LoadWorld_LoadObj_70
	mov [esp+0x4], ebx
	mov eax, [ebp-0x44]
	mov [esp], eax
	call strcmp
	test eax, eax
	jz Com_LoadWorld_LoadObj_80
Com_LoadWorld_LoadObj_70:
	add edi, 0x1
	add esi, 0x44
	cmp [ebp-0x2c], edi
	jnz Com_LoadWorld_LoadObj_90
Com_LoadWorld_LoadObj_60:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp-0x44]
	repne scasb
	mov ebx, ecx
	not ebx
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call Hunk_AllocAlignInternal
	mov esi, eax
	mov [esp+0x8], ebx
	mov edx, [ebp-0x44]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	mov ebx, esi
Com_LoadWorld_LoadObj_80:
	mov ecx, [ebp-0x40]
	mov [ecx+0x10], ebx
	movss xmm1, dword [ecx-0x4]
	ucomiss xmm1, [ecx]
	jb Com_LoadWorld_LoadObj_100
	movaps xmm0, xmm1
	mulss xmm0, [_float_0_75000000]
	addss xmm0, [_float_0_25000000]
	movss [ecx], xmm0
Com_LoadWorld_LoadObj_100:
	mov ebx, [ebp-0x40]
	movss xmm3, dword [ebx+0x8]
	movss xmm4, dword [_float_1_00000000]
	ucomiss xmm3, xmm4
	jnz Com_LoadWorld_LoadObj_110
	jp Com_LoadWorld_LoadObj_110
	movss [ebx+0x4], xmm1
Com_LoadWorld_LoadObj_210:
	add dword [ebp-0x2c], 0x1
	sub dword [ebp-0x44], 0xffffff80
	add dword [ebp-0x40], 0x44
	mov edx, [ebp-0x2c]
	cmp edx, [ebp-0x1c]
	jae Com_LoadWorld_LoadObj_40
	mov ecx, [ebp-0x44]
	mov ebx, [ebp-0x40]
	jmp Com_LoadWorld_LoadObj_120
Com_LoadWorld_LoadObj_20:
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x60
	mov dword [esp], 0x2b
	call Com_GetBspLump
	mov [ebp-0x3c], eax
	cmp dword [ebp-0x20], 0x1
	jbe Com_LoadWorld_LoadObj_130
Com_LoadWorld_LoadObj_240:
	mov eax, [ebp-0x20]
	mov ebx, comWorld
	mov [ebx+0x8], eax
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4]
	mov [esp], eax
	call Hunk_AllocInternal
	mov [ebp-0x38], eax
	mov [ebx+0xc], eax
	mov edi, [ebp-0x20]
	test edi, edi
	jz Com_LoadWorld_LoadObj_40
	mov dword [ebp-0x34], 0x0
Com_LoadWorld_LoadObj_190:
	mov edx, [ebp-0x3c]
	movzx eax, byte [edx+0x3]
	mov ecx, [ebp-0x38]
	mov [ecx], al
	mov byte [ecx+0x1], 0x0
	movzx eax, byte [edx+0x34]
	mov [ecx+0x2], al
	mov ecx, [ebp-0x38]
	add ecx, 0x4
	mov edx, [ebp-0x3c]
	add edx, 0x4
	mov ebx, [ebp-0x3c]
	mov eax, [ebx+0x4]
	mov ebx, [ebp-0x38]
	mov [ebx+0x4], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov ecx, ebx
	add ecx, 0x10
	mov edx, [ebp-0x3c]
	add edx, 0x10
	mov ebx, [ebp-0x3c]
	mov eax, [ebx+0x10]
	mov ebx, [ebp-0x38]
	mov [ebx+0x10], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov ecx, ebx
	add ecx, 0x1c
	mov edx, [ebp-0x3c]
	add edx, 0x1c
	mov ebx, [ebp-0x3c]
	mov eax, [ebx+0x1c]
	mov ebx, [ebp-0x38]
	mov [ebx+0x1c], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov edx, [ebp-0x3c]
	mov eax, [edx+0x28]
	mov [ebx+0x28], eax
	mov ecx, [ebp-0x3c]
	mov edx, [ecx+0x2c]
	mov [ebx+0x2c], edx
	mov eax, [ecx+0x30]
	mov [ebx+0x30], eax
	mov [ebx+0x34], edx
	mov dword [ebx+0x38], 0x3f800000
	mov dword [ebx+0x3c], 0x0
	cmp byte [ecx+0x3], 0x1
	jbe Com_LoadWorld_LoadObj_140
	mov ebx, [ebp-0x3c]
	add ebx, 0x38
	mov [ebp-0x30], ebx
	mov eax, comWorld
	mov eax, [eax+0xc]
	mov esi, [ebp-0x34]
	test esi, esi
	jz Com_LoadWorld_LoadObj_150
	mov esi, eax
	xor edi, edi
Com_LoadWorld_LoadObj_180:
	mov ebx, [esi+0x40]
	test ebx, ebx
	jz Com_LoadWorld_LoadObj_160
	mov [esp+0x4], ebx
	mov eax, [ebp-0x30]
	mov [esp], eax
	call strcmp
	test eax, eax
	jz Com_LoadWorld_LoadObj_170
Com_LoadWorld_LoadObj_160:
	add edi, 0x1
	add esi, 0x44
	cmp [ebp-0x34], edi
	jnz Com_LoadWorld_LoadObj_180
	mov edi, [ebp-0x30]
Com_LoadWorld_LoadObj_220:
	cld
	xor eax, eax
	mov ecx, 0xffffffff
	repne scasb
	mov ebx, ecx
	not ebx
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call Hunk_AllocAlignInternal
	mov esi, eax
	mov [esp+0x8], ebx
	mov ebx, [ebp-0x30]
	mov [esp+0x4], ebx
	mov [esp], eax
	call memcpy
	mov ebx, esi
Com_LoadWorld_LoadObj_170:
	mov eax, [ebp-0x38]
	mov [eax+0x40], ebx
Com_LoadWorld_LoadObj_230:
	add dword [ebp-0x34], 0x1
	add dword [ebp-0x3c], 0x60
	add dword [ebp-0x38], 0x44
	mov edx, [ebp-0x34]
	cmp [ebp-0x20], edx
	ja Com_LoadWorld_LoadObj_190
Com_LoadWorld_LoadObj_40:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp+0x8]
	repne scasb
	mov ebx, ecx
	not ebx
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call Hunk_AllocAlignInternal
	mov esi, eax
	mov [esp+0x8], ebx
	mov ecx, [ebp+0x8]
	mov [esp+0x4], ecx
	mov [esp], eax
	call memcpy
	mov eax, comWorld
	mov [eax], esi
	mov dword [eax+0x4], 0x1
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_LoadWorld_LoadObj_110:
	movaps xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, xmm3
	jb Com_LoadWorld_LoadObj_200
	mov eax, [ebp-0x40]
	mov dword [eax+0x4], 0xbf800000
	jmp Com_LoadWorld_LoadObj_210
Com_LoadWorld_LoadObj_150:
	mov edi, ebx
	jmp Com_LoadWorld_LoadObj_220
Com_LoadWorld_LoadObj_50:
	mov dword [ebx+0x10], 0x0
	mov eax, [ecx-0x14]
	mov [ebx+0x4], eax
	jmp Com_LoadWorld_LoadObj_210
Com_LoadWorld_LoadObj_140:
	mov dword [ebx+0x40], 0x0
	jmp Com_LoadWorld_LoadObj_230
Com_LoadWorld_LoadObj_10:
	mov ebx, comWorld
	mov dword [ebx+0x8], 0x2
	mov dword [esp], 0x88
	call Hunk_AllocInternal
	mov [ebx+0xc], eax
	mov byte [eax+0x44], 0x1
	jmp Com_LoadWorld_LoadObj_40
Com_LoadWorld_LoadObj_200:
	movaps xmm2, xmm3
	mulss xmm2, xmm1
	mulss xmm1, xmm1
	movaps xmm0, xmm4
	subss xmm0, xmm1
	movaps xmm1, xmm0
	mulss xmm3, xmm3
	movaps xmm0, xmm4
	subss xmm0, xmm3
	mulss xmm1, xmm0
	sqrtss xmm1, xmm1
	subss xmm2, xmm1
	mov eax, [ebp-0x40]
	movss [eax+0x4], xmm2
	jmp Com_LoadWorld_LoadObj_210
Com_LoadWorld_LoadObj_130:
	mov dword [esp+0x4], _cstring_no_primary_light
	mov dword [esp], 0x2
	call Com_Error
	jmp Com_LoadWorld_LoadObj_240
Com_LoadWorld_LoadObj_30:
	mov dword [esp+0x4], _cstring_no_primary_light
	mov dword [esp], 0x2
	call Com_Error
	jmp Com_LoadWorld_LoadObj_250



;Com_SaveLump(LumpType, void const*, unsigned int, ComSaveLumpBehavior)
Com_SaveLump:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x52c
	mov dword [ebp-0x518], 0x50534249
	mov dword [ebp-0x514], 0x16
	mov dword [ebp-0x510], 0x0
	mov edi, [comBspGlob+0x40]
	mov eax, [edi+0x8]
	lea edx, [eax*8+0xc]
	mov [ebp-0x51c], edx
	test eax, eax
	jz Com_SaveLump_10
	mov eax, [ebp+0x10]
	test eax, eax
	jnz Com_SaveLump_20
	xor esi, esi
	mov byte [ebp-0x51d], 0x1
	mov ecx, edi
	jmp Com_SaveLump_30
Com_SaveLump_50:
	mov eax, [ebp-0x510]
	mov [ebp+eax*8-0x50c], edx
	mov edx, [ebx+0x4]
	mov eax, [ebp-0x510]
	mov [ebp+eax*8-0x508], edx
	mov eax, [ebp-0x510]
	mov edx, [ebp-0x51c]
	add edx, edi
	mov [ebp+eax*4-0x1ec], edx
	add eax, 0x1
	mov [ebp-0x510], eax
	mov eax, [ebx+0x4]
	add eax, 0x3
	and eax, 0xfffffffc
	add [ebp-0x51c], eax
	add esi, 0x1
	add ecx, 0x8
	cmp esi, [edi+0x8]
	jae Com_SaveLump_40
Com_SaveLump_30:
	lea ebx, [ecx+0xc]
	mov edx, [ecx+0xc]
	cmp edx, [ebp+0x8]
	jnz Com_SaveLump_50
	mov byte [ebp-0x51d], 0x0
	mov eax, [ebx+0x4]
	add eax, 0x3
	and eax, 0xfffffffc
	add [ebp-0x51c], eax
	add esi, 0x1
	add ecx, 0x8
	cmp esi, [edi+0x8]
	jb Com_SaveLump_30
Com_SaveLump_40:
	cmp byte [ebp-0x51d], 0x0
	jnz Com_SaveLump_10
Com_SaveLump_70:
	mov dword [esp], comBspGlob
	call FS_OpenFileOverwrite
	mov ebx, eax
	test eax, eax
	jnz Com_SaveLump_60
Com_SaveLump_80:
	mov dword [esp+0x8], comBspGlob
	mov dword [esp+0x4], _cstring_failed_to_open_f
	mov dword [esp], 0x2
	call Com_Error
	add esp, 0x52c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_SaveLump_10:
	mov eax, [ebp+0x10]
	test eax, eax
	jz Com_SaveLump_70
	mov eax, [ebp-0x510]
	mov edx, [ebp+0x8]
	mov [ebp+eax*8-0x50c], edx
	mov eax, [ebp-0x510]
	mov esi, [ebp+0x10]
	mov [ebp+eax*8-0x508], esi
	mov eax, [ebp-0x510]
	mov edx, [ebp+0xc]
	mov [ebp+eax*4-0x1ec], edx
	add eax, 0x1
	mov [ebp-0x510], eax
	mov dword [esp], comBspGlob
	call FS_OpenFileOverwrite
	mov ebx, eax
	test eax, eax
	jz Com_SaveLump_80
Com_SaveLump_60:
	mov [esp+0x8], eax
	mov eax, [ebp-0x510]
	lea eax, [eax*8+0xc]
	mov [esp+0x4], eax
	lea esi, [ebp-0x518]
	mov [esp], esi
	call FS_Write
	mov edi, [ebp-0x510]
	test edi, edi
	jnz Com_SaveLump_90
Com_SaveLump_120:
	mov [esp], ebx
	call FS_FCloseFile
	mov ecx, [ebp+0x14]
	test ecx, ecx
	jz Com_SaveLump_100
	mov dword [esp+0x4], comBspGlob
	lea ebx, [ebp-0x5c]
	mov [esp], ebx
	call strcpy
	mov eax, [comBspGlob+0x40]
	mov [esp], eax
	call Z_FreeInternal
	mov dword [comBspGlob+0x40], 0x0
	mov byte [comBspGlob], 0x0
	mov [esp], ebx
	call Com_LoadBsp
	add esp, 0x52c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_SaveLump_100:
	mov eax, [comBspGlob+0x40]
	mov [esp], eax
	call Z_FreeInternal
	mov dword [comBspGlob+0x40], 0x0
	mov byte [comBspGlob], 0x0
	add esp, 0x52c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_SaveLump_90:
	xor edi, edi
	jmp Com_SaveLump_110
Com_SaveLump_130:
	add edi, 0x1
	add esi, 0x8
	cmp edi, [ebp-0x510]
	jae Com_SaveLump_120
Com_SaveLump_110:
	mov [esp+0x8], ebx
	mov eax, [esi+0x10]
	mov [esp+0x4], eax
	mov eax, [ebp+edi*4-0x1ec]
	mov [esp], eax
	call FS_Write
	mov eax, [esi+0x10]
	neg eax
	and eax, 0x3
	jz Com_SaveLump_130
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call FS_Write
	jmp Com_SaveLump_130
Com_SaveLump_20:
	xor ebx, ebx
	mov byte [ebp-0x51d], 0x1
	mov ecx, edi
Com_SaveLump_150:
	mov edx, [ecx+0xc]
	cmp [ebp+0x8], edx
	jz Com_SaveLump_140
	mov eax, [ebp-0x510]
	mov [ebp+eax*8-0x50c], edx
	mov edx, [ecx+0x10]
	mov eax, [ebp-0x510]
	mov [ebp+eax*8-0x508], edx
	mov eax, [ebp-0x510]
	mov esi, [ebp-0x51c]
	lea edx, [edi+esi]
	mov [ebp+eax*4-0x1ec], edx
	add eax, 0x1
	mov [ebp-0x510], eax
Com_SaveLump_160:
	mov eax, [ecx+0x10]
	add eax, 0x3
	and eax, 0xfffffffc
	add [ebp-0x51c], eax
	add ebx, 0x1
	add ecx, 0x8
	cmp ebx, [edi+0x8]
	jb Com_SaveLump_150
	jmp Com_SaveLump_40
Com_SaveLump_140:
	mov eax, [ebp-0x510]
	mov esi, [ebp+0x8]
	mov [ebp+eax*8-0x50c], esi
	mov eax, [ebp-0x510]
	mov edx, [ebp+0x10]
	mov [ebp+eax*8-0x508], edx
	mov eax, [ebp-0x510]
	mov esi, [ebp+0xc]
	mov [ebp+eax*4-0x1ec], esi
	add eax, 0x1
	mov [ebp-0x510], eax
	mov byte [ebp-0x51d], 0x0
	jmp Com_SaveLump_160
	nop


;Com_LoadWorld(char const*)
Com_LoadWorld:
	push ebp
	mov ebp, esp
	mov eax, useFastFile
	mov eax, [eax]
	mov ecx, Com_LoadWorld_FastFile
	cmp byte [eax+0xc], 0x0
	mov eax, Com_LoadWorld_LoadObj
	cmovz ecx, eax
	pop ebp
	jmp ecx


;Com_UnloadBsp()
Com_UnloadBsp:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [comBspGlob+0x40]
	mov [esp], eax
	call Z_FreeInternal
	mov dword [comBspGlob+0x40], 0x0
	mov byte [comBspGlob], 0x0
	leave
	ret
	add [eax], al


;Com_BspHasLump(LumpType)
Com_BspHasLump:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	lea eax, [ebp-0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Com_GetBspLump
	xor eax, eax
	cmp dword [ebp-0xc], 0x0
	setnz al
	leave
	ret
	nop


;Com_CleanupBsp()
Com_CleanupBsp:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [comBspGlob+0x50], 0x0
	mov eax, [comBspGlob+0x40]
	test eax, eax
	jnz Com_CleanupBsp_10
	leave
	ret
Com_CleanupBsp_10:
	mov [esp], eax
	call Z_FreeInternal
	mov dword [comBspGlob+0x40], 0x0
	mov byte [comBspGlob], 0x0
	leave
	ret

;Com_EntityString(int*)
Com_EntityString:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x8]
	lea eax, [ebp-0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x27
	call Com_GetBspLump
	mov edx, eax
	test ebx, ebx
	jz Com_EntityString_10
	mov eax, [ebp-0xc]
	mov [ebx], eax
Com_EntityString_10:
	mov eax, edx
	add esp, 0x24
	pop ebx
	pop ebp
	ret


;Com_ShutdownWorld()
Com_ShutdownWorld:
	push ebp
	mov ebp, esp
	mov eax, comWorld
	mov dword [eax+0x4], 0x0
	pop ebp
	ret
	nop


;Zero initialized global or static variables of com_bsp_load_obj:
SECTION .bss
;comBspGlob: resb 0x80


;Initialized global or static variables of com_bsp_load_obj:
SECTION .data
_ZZ29Com_GetBspLumpCountForVersioniE15lumpsForVersion: dd 0x29, 0x29, 0x2a, 0x2b, 0x2b, 0x2b, 0x2b, 0x2c, 0x2c, 0x2c, 0x2e, 0x2e, 0x2f, 0x0, 0x0, 0x0


;Initialized constant data of com_bsp_load_obj:
SECTION .rdata


;All cstrings:
SECTION .rdata
_cstring_no_primary_light:		db "no primary lights in bsp",0ah,0
_cstring_exe_err_couldnt_:		db "EXE_ERR_COULDNT_LOAD",15h,"%s",0
_cstring_exe_err_wrong_ma:		db "EXE_ERR_WRONG_MAP_VERSION_NUM",15h,"%s",0
_cstring_failed_to_open_f:		db "Failed to open file %s for writing",0
_cstring_loadmap_lump_i_h:		db 15h,"LoadMap: lump %i has funny size",0
_cstring_loadmap_lump_i_e:		db 15h,"LoadMap: lump %i extends past end of file",0



;All constant floats and doubles:
SECTION .rdata
_float_0_75000000:		dd 0x3f400000	; 0.75
_float_0_25000000:		dd 0x3e800000	; 0.25
_float_1_00000000:		dd 0x3f800000	; 1

align   16,db 0
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; DQWORD
