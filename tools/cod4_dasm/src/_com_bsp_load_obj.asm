;Imports of com_bsp_load_obj:
	extern _Z19DB_FindXAssetHeader10XAssetTypePKc
	extern comWorld
	extern _Z18Hunk_AllocInternali
	extern strcmp
	extern _Z23Hunk_AllocAlignInternalii
	extern memcpy
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z16FS_FOpenFileReadPKcPi
	extern Z_MallocGarbageInternal
	extern _Z7FS_ReadPvii
	extern _Z13FS_FCloseFilei
	extern Z_FreeInternal
	extern _Z2vaPKcz
	extern _Z22Com_BlockChecksumKey32PKvmj
	extern g_purgeableEnts
	extern _Z20FS_OpenFileOverwritePKc
	extern _Z8FS_WritePKvii
	extern strcpy
	extern useFastFile

;Exports of com_bsp_load_obj:
	global comBspGlob
	global _ZZ29Com_GetBspLumpCountForVersioniE15lumpsForVersion
	global _Z22Com_LoadWorld_FastFilePKc
	global _Z21Com_LoadWorld_LoadObjPKc
	global _Z11Com_LoadBspPKc
	global _Z12Com_SaveLump8LumpTypePKvj19ComSaveLumpBehavior
	global _Z13Com_LoadWorldPKc
	global _Z13Com_UnloadBspv
	global _Z14Com_BspHasLump8LumpType
	global _Z14Com_CleanupBspv
	global _Z14Com_GetBspLump8LumpTypejPj
	global _Z16Com_EntityStringPi
	global _Z17Com_GetBspVersionv
	global _Z17Com_ShutdownWorldv


SECTION .text


;Com_LoadWorld_FastFile(char const*)
_Z22Com_LoadWorld_FastFilePKc:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0xc
	call _Z19DB_FindXAssetHeader10XAssetTypePKc
	leave
	ret
	nop


;Com_LoadWorld_LoadObj(char const*)
_Z21Com_LoadWorld_LoadObjPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov eax, [comBspGlob+0x40]
	mov eax, [eax+0x4]
	cmp eax, 0xe
	jbe _Z21Com_LoadWorld_LoadObjPKc_10
	cmp eax, 0x10
	jbe _Z21Com_LoadWorld_LoadObjPKc_20
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x80
	mov dword [esp], 0x2b
	call _Z14Com_GetBspLump8LumpTypejPj
	mov esi, eax
	cmp dword [ebp-0x1c], 0x1
	jbe _Z21Com_LoadWorld_LoadObjPKc_30
_Z21Com_LoadWorld_LoadObjPKc_250:
	mov eax, [ebp-0x1c]
	mov ebx, comWorld
	mov [ebx+0x8], eax
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4]
	mov [esp], eax
	call _Z18Hunk_AllocInternali
	mov [ebx+0xc], eax
	mov ecx, [ebp-0x1c]
	test ecx, ecx
	jz _Z21Com_LoadWorld_LoadObjPKc_40
	mov dword [ebp-0x2c], 0x0
	add eax, 0x30
	mov [ebp-0x40], eax
	add esi, 0x40
	mov [ebp-0x44], esi
	mov ecx, esi
	mov ebx, eax
_Z21Com_LoadWorld_LoadObjPKc_120:
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
	jbe _Z21Com_LoadWorld_LoadObjPKc_50
	mov eax, comWorld
	mov eax, [eax+0xc]
	mov edx, [ebp-0x2c]
	test edx, edx
	jz _Z21Com_LoadWorld_LoadObjPKc_60
	mov esi, eax
	xor edi, edi
_Z21Com_LoadWorld_LoadObjPKc_90:
	mov ebx, [esi+0x40]
	test ebx, ebx
	jz _Z21Com_LoadWorld_LoadObjPKc_70
	mov [esp+0x4], ebx
	mov eax, [ebp-0x44]
	mov [esp], eax
	call strcmp
	test eax, eax
	jz _Z21Com_LoadWorld_LoadObjPKc_80
_Z21Com_LoadWorld_LoadObjPKc_70:
	add edi, 0x1
	add esi, 0x44
	cmp [ebp-0x2c], edi
	jnz _Z21Com_LoadWorld_LoadObjPKc_90
_Z21Com_LoadWorld_LoadObjPKc_60:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp-0x44]
	repne scasb
	mov ebx, ecx
	not ebx
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call _Z23Hunk_AllocAlignInternalii
	mov esi, eax
	mov [esp+0x8], ebx
	mov edx, [ebp-0x44]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	mov ebx, esi
_Z21Com_LoadWorld_LoadObjPKc_80:
	mov ecx, [ebp-0x40]
	mov [ecx+0x10], ebx
	movss xmm1, dword [ecx-0x4]
	ucomiss xmm1, [ecx]
	jb _Z21Com_LoadWorld_LoadObjPKc_100
	movaps xmm0, xmm1
	mulss xmm0, [_float_0_75000000]
	addss xmm0, [_float_0_25000000]
	movss [ecx], xmm0
_Z21Com_LoadWorld_LoadObjPKc_100:
	mov ebx, [ebp-0x40]
	movss xmm3, dword [ebx+0x8]
	movss xmm4, dword [_float_1_00000000]
	ucomiss xmm3, xmm4
	jnz _Z21Com_LoadWorld_LoadObjPKc_110
	jp _Z21Com_LoadWorld_LoadObjPKc_110
	movss [ebx+0x4], xmm1
_Z21Com_LoadWorld_LoadObjPKc_210:
	add dword [ebp-0x2c], 0x1
	sub dword [ebp-0x44], 0xffffff80
	add dword [ebp-0x40], 0x44
	mov edx, [ebp-0x2c]
	cmp edx, [ebp-0x1c]
	jae _Z21Com_LoadWorld_LoadObjPKc_40
	mov ecx, [ebp-0x44]
	mov ebx, [ebp-0x40]
	jmp _Z21Com_LoadWorld_LoadObjPKc_120
_Z21Com_LoadWorld_LoadObjPKc_20:
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x60
	mov dword [esp], 0x2b
	call _Z14Com_GetBspLump8LumpTypejPj
	mov [ebp-0x3c], eax
	cmp dword [ebp-0x20], 0x1
	jbe _Z21Com_LoadWorld_LoadObjPKc_130
_Z21Com_LoadWorld_LoadObjPKc_240:
	mov eax, [ebp-0x20]
	mov ebx, comWorld
	mov [ebx+0x8], eax
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4]
	mov [esp], eax
	call _Z18Hunk_AllocInternali
	mov [ebp-0x38], eax
	mov [ebx+0xc], eax
	mov edi, [ebp-0x20]
	test edi, edi
	jz _Z21Com_LoadWorld_LoadObjPKc_40
	mov dword [ebp-0x34], 0x0
_Z21Com_LoadWorld_LoadObjPKc_190:
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
	jbe _Z21Com_LoadWorld_LoadObjPKc_140
	mov ebx, [ebp-0x3c]
	add ebx, 0x38
	mov [ebp-0x30], ebx
	mov eax, comWorld
	mov eax, [eax+0xc]
	mov esi, [ebp-0x34]
	test esi, esi
	jz _Z21Com_LoadWorld_LoadObjPKc_150
	mov esi, eax
	xor edi, edi
_Z21Com_LoadWorld_LoadObjPKc_180:
	mov ebx, [esi+0x40]
	test ebx, ebx
	jz _Z21Com_LoadWorld_LoadObjPKc_160
	mov [esp+0x4], ebx
	mov eax, [ebp-0x30]
	mov [esp], eax
	call strcmp
	test eax, eax
	jz _Z21Com_LoadWorld_LoadObjPKc_170
_Z21Com_LoadWorld_LoadObjPKc_160:
	add edi, 0x1
	add esi, 0x44
	cmp [ebp-0x34], edi
	jnz _Z21Com_LoadWorld_LoadObjPKc_180
	mov edi, [ebp-0x30]
_Z21Com_LoadWorld_LoadObjPKc_220:
	cld
	xor eax, eax
	mov ecx, 0xffffffff
	repne scasb
	mov ebx, ecx
	not ebx
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call _Z23Hunk_AllocAlignInternalii
	mov esi, eax
	mov [esp+0x8], ebx
	mov ebx, [ebp-0x30]
	mov [esp+0x4], ebx
	mov [esp], eax
	call memcpy
	mov ebx, esi
_Z21Com_LoadWorld_LoadObjPKc_170:
	mov eax, [ebp-0x38]
	mov [eax+0x40], ebx
_Z21Com_LoadWorld_LoadObjPKc_230:
	add dword [ebp-0x34], 0x1
	add dword [ebp-0x3c], 0x60
	add dword [ebp-0x38], 0x44
	mov edx, [ebp-0x34]
	cmp [ebp-0x20], edx
	ja _Z21Com_LoadWorld_LoadObjPKc_190
_Z21Com_LoadWorld_LoadObjPKc_40:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp+0x8]
	repne scasb
	mov ebx, ecx
	not ebx
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call _Z23Hunk_AllocAlignInternalii
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
_Z21Com_LoadWorld_LoadObjPKc_110:
	movaps xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, xmm3
	jb _Z21Com_LoadWorld_LoadObjPKc_200
	mov eax, [ebp-0x40]
	mov dword [eax+0x4], 0xbf800000
	jmp _Z21Com_LoadWorld_LoadObjPKc_210
_Z21Com_LoadWorld_LoadObjPKc_150:
	mov edi, ebx
	jmp _Z21Com_LoadWorld_LoadObjPKc_220
_Z21Com_LoadWorld_LoadObjPKc_50:
	mov dword [ebx+0x10], 0x0
	mov eax, [ecx-0x14]
	mov [ebx+0x4], eax
	jmp _Z21Com_LoadWorld_LoadObjPKc_210
_Z21Com_LoadWorld_LoadObjPKc_140:
	mov dword [ebx+0x40], 0x0
	jmp _Z21Com_LoadWorld_LoadObjPKc_230
_Z21Com_LoadWorld_LoadObjPKc_10:
	mov ebx, comWorld
	mov dword [ebx+0x8], 0x2
	mov dword [esp], 0x88
	call _Z18Hunk_AllocInternali
	mov [ebx+0xc], eax
	mov byte [eax+0x44], 0x1
	jmp _Z21Com_LoadWorld_LoadObjPKc_40
_Z21Com_LoadWorld_LoadObjPKc_200:
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
	jmp _Z21Com_LoadWorld_LoadObjPKc_210
_Z21Com_LoadWorld_LoadObjPKc_130:
	mov dword [esp+0x4], _cstring_no_primary_light
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z21Com_LoadWorld_LoadObjPKc_240
_Z21Com_LoadWorld_LoadObjPKc_30:
	mov dword [esp+0x4], _cstring_no_primary_light
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z21Com_LoadWorld_LoadObjPKc_250


;Com_LoadBsp(char const*)
_Z11Com_LoadBspPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0x8]
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z16FS_FOpenFileReadPKcPi
	mov [comBspGlob+0x44], eax
	mov edx, [ebp-0x1c]
	test edx, edx
	jz _Z11Com_LoadBspPKc_10
_Z11Com_LoadBspPKc_40:
	mov [esp], eax
	call Z_MallocGarbageInternal
	mov [comBspGlob+0x40], eax
	mov edx, [ebp-0x1c]
	mov [esp+0x8], edx
	mov edx, [comBspGlob+0x44]
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z7FS_ReadPvii
	mov ebx, eax
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z13FS_FCloseFilei
	cmp ebx, [comBspGlob+0x44]
	jz _Z11Com_LoadBspPKc_20
	mov eax, [comBspGlob+0x40]
	mov [esp], eax
	call Z_FreeInternal
	mov [esp+0x4], esi
	mov dword [esp], _cstring_exe_err_couldnt_
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z11Com_LoadBspPKc_20:
	mov dword [esp+0x8], 0x0
	mov eax, [comBspGlob+0x44]
	mov [esp+0x4], eax
	mov eax, [comBspGlob+0x40]
	mov [esp], eax
	call _Z22Com_BlockChecksumKey32PKvmj
	mov [comBspGlob+0x48], eax
	mov edx, [comBspGlob+0x40]
	cmp dword [edx], 0x50534249
	jz _Z11Com_LoadBspPKc_30
_Z11Com_LoadBspPKc_50:
	mov [esp], edx
	call Z_FreeInternal
	mov dword [comBspGlob+0x40], 0x0
	mov [esp+0x4], esi
	mov dword [esp], _cstring_exe_err_wrong_ma
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z11Com_LoadBspPKc_70:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	not ecx
	mov [esp+0x8], ecx
	mov [esp+0x4], esi
	mov dword [esp], comBspGlob
	call memcpy
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11Com_LoadBspPKc_10:
	mov [esp+0x4], esi
	mov dword [esp], _cstring_exe_err_couldnt_
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov eax, [comBspGlob+0x44]
	jmp _Z11Com_LoadBspPKc_40
_Z11Com_LoadBspPKc_30:
	mov eax, [edx+0x4]
	cmp eax, 0x5
	jbe _Z11Com_LoadBspPKc_50
	cmp eax, 0x16
	ja _Z11Com_LoadBspPKc_50
	cmp eax, 0x12
	jbe _Z11Com_LoadBspPKc_60
	mov eax, [edx+0x8]
	lea eax, [eax*8+0xc]
	cmp eax, [comBspGlob+0x44]
	jbe _Z11Com_LoadBspPKc_70
	jmp _Z11Com_LoadBspPKc_50
_Z11Com_LoadBspPKc_60:
	mov eax, [eax*4+g_purgeableEnts+0x8]
	lea eax, [eax*8+0x8]
	cmp eax, [comBspGlob+0x44]
	ja _Z11Com_LoadBspPKc_50
	jmp _Z11Com_LoadBspPKc_70


;Com_SaveLump(LumpType, void const*, unsigned int, ComSaveLumpBehavior)
_Z12Com_SaveLump8LumpTypePKvj19ComSaveLumpBehavior:
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
	jz _Z12Com_SaveLump8LumpTypePKvj19ComSaveLumpBehavior_10
	mov eax, [ebp+0x10]
	test eax, eax
	jnz _Z12Com_SaveLump8LumpTypePKvj19ComSaveLumpBehavior_20
	xor esi, esi
	mov byte [ebp-0x51d], 0x1
	mov ecx, edi
	jmp _Z12Com_SaveLump8LumpTypePKvj19ComSaveLumpBehavior_30
_Z12Com_SaveLump8LumpTypePKvj19ComSaveLumpBehavior_50:
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
	jae _Z12Com_SaveLump8LumpTypePKvj19ComSaveLumpBehavior_40
_Z12Com_SaveLump8LumpTypePKvj19ComSaveLumpBehavior_30:
	lea ebx, [ecx+0xc]
	mov edx, [ecx+0xc]
	cmp edx, [ebp+0x8]
	jnz _Z12Com_SaveLump8LumpTypePKvj19ComSaveLumpBehavior_50
	mov byte [ebp-0x51d], 0x0
	mov eax, [ebx+0x4]
	add eax, 0x3
	and eax, 0xfffffffc
	add [ebp-0x51c], eax
	add esi, 0x1
	add ecx, 0x8
	cmp esi, [edi+0x8]
	jb _Z12Com_SaveLump8LumpTypePKvj19ComSaveLumpBehavior_30
_Z12Com_SaveLump8LumpTypePKvj19ComSaveLumpBehavior_40:
	cmp byte [ebp-0x51d], 0x0
	jnz _Z12Com_SaveLump8LumpTypePKvj19ComSaveLumpBehavior_10
_Z12Com_SaveLump8LumpTypePKvj19ComSaveLumpBehavior_70:
	mov dword [esp], comBspGlob
	call _Z20FS_OpenFileOverwritePKc
	mov ebx, eax
	test eax, eax
	jnz _Z12Com_SaveLump8LumpTypePKvj19ComSaveLumpBehavior_60
_Z12Com_SaveLump8LumpTypePKvj19ComSaveLumpBehavior_80:
	mov dword [esp+0x8], comBspGlob
	mov dword [esp+0x4], _cstring_failed_to_open_f
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	add esp, 0x52c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12Com_SaveLump8LumpTypePKvj19ComSaveLumpBehavior_10:
	mov eax, [ebp+0x10]
	test eax, eax
	jz _Z12Com_SaveLump8LumpTypePKvj19ComSaveLumpBehavior_70
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
	call _Z20FS_OpenFileOverwritePKc
	mov ebx, eax
	test eax, eax
	jz _Z12Com_SaveLump8LumpTypePKvj19ComSaveLumpBehavior_80
_Z12Com_SaveLump8LumpTypePKvj19ComSaveLumpBehavior_60:
	mov [esp+0x8], eax
	mov eax, [ebp-0x510]
	lea eax, [eax*8+0xc]
	mov [esp+0x4], eax
	lea esi, [ebp-0x518]
	mov [esp], esi
	call _Z8FS_WritePKvii
	mov edi, [ebp-0x510]
	test edi, edi
	jnz _Z12Com_SaveLump8LumpTypePKvj19ComSaveLumpBehavior_90
_Z12Com_SaveLump8LumpTypePKvj19ComSaveLumpBehavior_120:
	mov [esp], ebx
	call _Z13FS_FCloseFilei
	mov ecx, [ebp+0x14]
	test ecx, ecx
	jz _Z12Com_SaveLump8LumpTypePKvj19ComSaveLumpBehavior_100
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
	call _Z11Com_LoadBspPKc
	add esp, 0x52c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12Com_SaveLump8LumpTypePKvj19ComSaveLumpBehavior_100:
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
_Z12Com_SaveLump8LumpTypePKvj19ComSaveLumpBehavior_90:
	xor edi, edi
	jmp _Z12Com_SaveLump8LumpTypePKvj19ComSaveLumpBehavior_110
_Z12Com_SaveLump8LumpTypePKvj19ComSaveLumpBehavior_130:
	add edi, 0x1
	add esi, 0x8
	cmp edi, [ebp-0x510]
	jae _Z12Com_SaveLump8LumpTypePKvj19ComSaveLumpBehavior_120
_Z12Com_SaveLump8LumpTypePKvj19ComSaveLumpBehavior_110:
	mov [esp+0x8], ebx
	mov eax, [esi+0x10]
	mov [esp+0x4], eax
	mov eax, [ebp+edi*4-0x1ec]
	mov [esp], eax
	call _Z8FS_WritePKvii
	mov eax, [esi+0x10]
	neg eax
	and eax, 0x3
	jz _Z12Com_SaveLump8LumpTypePKvj19ComSaveLumpBehavior_130
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call _Z8FS_WritePKvii
	jmp _Z12Com_SaveLump8LumpTypePKvj19ComSaveLumpBehavior_130
_Z12Com_SaveLump8LumpTypePKvj19ComSaveLumpBehavior_20:
	xor ebx, ebx
	mov byte [ebp-0x51d], 0x1
	mov ecx, edi
_Z12Com_SaveLump8LumpTypePKvj19ComSaveLumpBehavior_150:
	mov edx, [ecx+0xc]
	cmp [ebp+0x8], edx
	jz _Z12Com_SaveLump8LumpTypePKvj19ComSaveLumpBehavior_140
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
_Z12Com_SaveLump8LumpTypePKvj19ComSaveLumpBehavior_160:
	mov eax, [ecx+0x10]
	add eax, 0x3
	and eax, 0xfffffffc
	add [ebp-0x51c], eax
	add ebx, 0x1
	add ecx, 0x8
	cmp ebx, [edi+0x8]
	jb _Z12Com_SaveLump8LumpTypePKvj19ComSaveLumpBehavior_150
	jmp _Z12Com_SaveLump8LumpTypePKvj19ComSaveLumpBehavior_40
_Z12Com_SaveLump8LumpTypePKvj19ComSaveLumpBehavior_140:
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
	jmp _Z12Com_SaveLump8LumpTypePKvj19ComSaveLumpBehavior_160
	nop


;Com_LoadWorld(char const*)
_Z13Com_LoadWorldPKc:
	push ebp
	mov ebp, esp
	mov eax, useFastFile
	mov eax, [eax]
	mov ecx, _Z22Com_LoadWorld_FastFilePKc
	cmp byte [eax+0xc], 0x0
	mov eax, _Z21Com_LoadWorld_LoadObjPKc
	cmovz ecx, eax
	pop ebp
	jmp ecx


;Com_UnloadBsp()
_Z13Com_UnloadBspv:
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
_Z14Com_BspHasLump8LumpType:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	lea eax, [ebp-0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z14Com_GetBspLump8LumpTypejPj
	xor eax, eax
	cmp dword [ebp-0xc], 0x0
	setnz al
	leave
	ret
	nop


;Com_CleanupBsp()
_Z14Com_CleanupBspv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [comBspGlob+0x50], 0x0
	mov eax, [comBspGlob+0x40]
	test eax, eax
	jnz _Z14Com_CleanupBspv_10
	leave
	ret
_Z14Com_CleanupBspv_10:
	mov [esp], eax
	call Z_FreeInternal
	mov dword [comBspGlob+0x40], 0x0
	mov byte [comBspGlob], 0x0
	leave
	ret


;Com_GetBspLump(LumpType, unsigned int, unsigned int*)
_Z14Com_GetBspLump8LumpTypejPj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, [comBspGlob+0x40]
	mov eax, [ebx+0x4]
	cmp eax, 0x12
	ja _Z14Com_GetBspLump8LumpTypejPj_10
	mov edx, [ebp+0x8]
	cmp edx, [eax*4+g_purgeableEnts+0x8]
	jae _Z14Com_GetBspLump8LumpTypejPj_20
	lea eax, [ebx+edx*8]
	mov ebx, [eax+0x8]
	mov esi, [eax+0xc]
	test ebx, ebx
	jz _Z14Com_GetBspLump8LumpTypejPj_20
	lea eax, [ebx+esi]
	cmp eax, [comBspGlob+0x44]
	ja _Z14Com_GetBspLump8LumpTypejPj_30
_Z14Com_GetBspLump8LumpTypejPj_110:
	mov eax, ebx
	xor edx, edx
	div dword [ebp+0xc]
	mov edx, [ebp+0x10]
	mov [edx], eax
	imul eax, [ebp+0xc]
	cmp ebx, eax
	jz _Z14Com_GetBspLump8LumpTypejPj_40
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_loadmap_lump_i_h
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z14Com_GetBspLump8LumpTypejPj_40:
	mov eax, esi
	add eax, [comBspGlob+0x40]
_Z14Com_GetBspLump8LumpTypejPj_100:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14Com_GetBspLump8LumpTypejPj_10:
	mov edx, [ebx+0x8]
	mov [ebp-0x1c], edx
	lea edi, [edx*8+0xc]
	test edx, edx
	jz _Z14Com_GetBspLump8LumpTypejPj_50
	lea edx, [ebx+0xc]
	mov esi, [ebp+0x8]
	cmp esi, [ebx+0xc]
	jz _Z14Com_GetBspLump8LumpTypejPj_60
	xor ecx, ecx
_Z14Com_GetBspLump8LumpTypejPj_70:
	mov eax, [edx+0x4]
	add eax, 0x3
	and eax, 0xfffffffc
	add edi, eax
	add ecx, 0x1
	cmp [ebp-0x1c], ecx
	jz _Z14Com_GetBspLump8LumpTypejPj_50
	lea eax, [ebx+ecx*8]
	lea edx, [eax+0xc]
	mov esi, [ebp+0x8]
	cmp esi, [eax+0xc]
	jnz _Z14Com_GetBspLump8LumpTypejPj_70
_Z14Com_GetBspLump8LumpTypejPj_60:
	mov ebx, [edx+0x4]
	test ebx, ebx
	jz _Z14Com_GetBspLump8LumpTypejPj_50
	lea eax, [ebx+edi]
	cmp eax, [comBspGlob+0x44]
	ja _Z14Com_GetBspLump8LumpTypejPj_80
_Z14Com_GetBspLump8LumpTypejPj_120:
	mov eax, ebx
	xor edx, edx
	div dword [ebp+0xc]
	mov edx, [ebp+0x10]
	mov [edx], eax
	imul eax, [ebp+0xc]
	cmp ebx, eax
	jz _Z14Com_GetBspLump8LumpTypejPj_90
	mov esi, [ebp+0x8]
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_loadmap_lump_i_h
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z14Com_GetBspLump8LumpTypejPj_90:
	mov eax, edi
	add eax, [comBspGlob+0x40]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14Com_GetBspLump8LumpTypejPj_50:
	mov eax, [ebp+0x10]
	mov dword [eax], 0x0
	xor eax, eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14Com_GetBspLump8LumpTypejPj_20:
	mov esi, [ebp+0x10]
	mov dword [esi], 0x0
	xor eax, eax
	jmp _Z14Com_GetBspLump8LumpTypejPj_100
_Z14Com_GetBspLump8LumpTypejPj_30:
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_loadmap_lump_i_e
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z14Com_GetBspLump8LumpTypejPj_110
_Z14Com_GetBspLump8LumpTypejPj_80:
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_loadmap_lump_i_e
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z14Com_GetBspLump8LumpTypejPj_120
	nop


;Com_EntityString(int*)
_Z16Com_EntityStringPi:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x8]
	lea eax, [ebp-0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x27
	call _Z14Com_GetBspLump8LumpTypejPj
	mov edx, eax
	test ebx, ebx
	jz _Z16Com_EntityStringPi_10
	mov eax, [ebp-0xc]
	mov [ebx], eax
_Z16Com_EntityStringPi_10:
	mov eax, edx
	add esp, 0x24
	pop ebx
	pop ebp
	ret


;Com_GetBspVersion()
_Z17Com_GetBspVersionv:
	push ebp
	mov ebp, esp
	mov eax, [comBspGlob+0x40]
	mov eax, [eax+0x4]
	pop ebp
	ret
	nop
	add [eax], al


;Com_ShutdownWorld()
_Z17Com_ShutdownWorldv:
	push ebp
	mov ebp, esp
	mov eax, comWorld
	mov dword [eax+0x4], 0x0
	pop ebp
	ret
	nop


;Initialized global or static variables of com_bsp_load_obj:
SECTION .data
_ZZ29Com_GetBspLumpCountForVersioniE15lumpsForVersion: dd 0x29, 0x29, 0x2a, 0x2b, 0x2b, 0x2b, 0x2b, 0x2c, 0x2c, 0x2c, 0x2e, 0x2e, 0x2f, 0x0, 0x0, 0x0


;Initialized constant data of com_bsp_load_obj:
SECTION .rdata


;Zero initialized global or static variables of com_bsp_load_obj:
SECTION .bss
comBspGlob: resb 0x80


;All cstrings:
SECTION .rdata
_cstring_no_primary_light:		db "no primary lights in bsp",0ah,0
_cstring_exe_err_couldnt_:		db "EXE_ERR_COULDNT_LOAD",015h,"%s",0
_cstring_exe_err_wrong_ma:		db "EXE_ERR_WRONG_MAP_VERSION_NUM",015h,"%s",0
_cstring_failed_to_open_f:		db "Failed to open file %s for writing",0
_cstring_loadmap_lump_i_h:		db 015h,"LoadMap: lump %i has funny size",0
_cstring_loadmap_lump_i_e:		db 015h,"LoadMap: lump %i extends past end of file",0



;All constant floats and doubles:
SECTION .rdata
_float_0_75000000:		dd 0x3f400000	; 0.75
_float_0_25000000:		dd 0x3e800000	; 0.25
_float_1_00000000:		dd 0x3f800000	; 1
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD

