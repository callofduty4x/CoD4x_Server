;Imports of dobj:
	extern MT_Alloc
	extern memcpy
	extern XAnimResetAnimMap
	extern XModelGetRadius
	extern SL_GetStringOfSize
	extern XModelNumBones
	extern XModelGetName
	extern Com_Printf
	extern SL_ConvertToString
	extern Com_Error
	extern XModelGetBoneIndex
	extern Com_PrintWarning
	extern SL_RemoveRefToStringOfSize
	extern XModelBoneNames
	extern DObjGetRotTransArray
	extern Vec2NormalizeTo
	extern MT_Free
	extern XModelGetContents
	extern XModelTraceLineAnimated
	extern XModelGetBounds
	extern XModelGetBasePose
	extern DObjCalcBaseSkel
	extern Q_stricmp
	extern DObjSetRotTransIndex
	extern DObjSetLocalTagInternal
	extern DObjCompleteHierarchyBits
	extern XModelTraceLineAnimatedPartBits
	extern Phys_ObjSetCollisionFromXModel
	extern XModelBad

;Exports of dobj:
	global g_empty
	global LocalInvMatrixTransformVectorQuatTrans
	global DObjCreate
	global DObjArchive
	global DObjGetName
	global DObjGetTree
	global DObjDumpInfo
	global DObjShutdown
	global DObjGetBounds
	global DObjGetRadius
	global DObjSkelClear
	global DObjTraceline
	global DObjUnarchive
	global DObjGetContents
	global DObjHasContents
	global DObjGetBoneIndex
	global DObjGeomTraceline
	global DObjGetPhysPreset
	global DObjIgnoreCollision
	global DObjSetHidePartBits
	global DObjGetHierarchyBits
	global DObjPhysicsGetBounds
	global DObjGetBasePoseMatrix
	global DObjGetModelBoneIndex
	global DObjSetLocalBoneIndex
	global DObjTracelinePartBits
	global DObjSkelIsBoneUpToDate
	global DObjGeomTracelinePartBits
	global DObjGetModelParentBoneName
	global DObjPhysicsSetCollisionFromXModel
	global DObjBad
	global DObjFree
	global DObjInit


SECTION .text


;LocalInvMatrixTransformVectorQuatTrans(float const*, DObjAnimMat const*, float*)
LocalInvMatrixTransformVectorQuatTrans:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x1c
	lea ebx, [edx+0x10]
	movss xmm5, dword [eax]
	subss xmm5, [edx+0x10]
	movss xmm0, dword [eax+0x4]
	movss [ebp-0x8], xmm0
	subss xmm0, [ebx+0x4]
	movss [ebp-0x8], xmm0
	movss xmm4, dword [eax+0x8]
	movss [ebp-0xc], xmm4
	subss xmm4, [ebx+0x8]
	movss [ebp-0xc], xmm4
	movss xmm2, dword [edx+0x1c]
	movaps xmm6, xmm2
	mulss xmm6, [edx]
	movaps xmm7, xmm2
	mulss xmm7, [edx+0x4]
	mulss xmm2, [edx+0x8]
	movaps xmm0, xmm6
	mulss xmm0, [edx]
	movss [ebp-0x20], xmm0
	movss xmm4, dword [edx+0x4]
	movaps xmm3, xmm6
	mulss xmm3, xmm4
	movss xmm1, dword [edx+0x8]
	movaps xmm0, xmm6
	mulss xmm0, xmm1
	movss [ebp-0x1c], xmm0
	movss xmm0, dword [edx+0xc]
	mulss xmm6, xmm0
	mulss xmm4, xmm7
	movss [ebp-0x18], xmm4
	movaps xmm4, xmm7
	mulss xmm4, xmm1
	movss [ebp-0x14], xmm4
	mulss xmm7, xmm0
	movss [ebp-0x10], xmm7
	movaps xmm7, xmm2
	mulss xmm7, xmm1
	mulss xmm2, xmm0
	movss xmm0, dword [ebp-0x18]
	addss xmm0, xmm7
	movss xmm4, dword [_float_1_00000000]
	movaps xmm1, xmm4
	subss xmm1, xmm0
	mulss xmm1, xmm5
	movaps xmm0, xmm3
	addss xmm0, xmm2
	mulss xmm0, [ebp-0x8]
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0x1c]
	subss xmm0, [ebp-0x10]
	mulss xmm0, [ebp-0xc]
	addss xmm1, xmm0
	movss [ecx], xmm1
	subss xmm3, xmm2
	mulss xmm3, xmm5
	addss xmm7, [ebp-0x20]
	movaps xmm0, xmm4
	subss xmm0, xmm7
	mulss xmm0, [ebp-0x8]
	addss xmm3, xmm0
	movss xmm0, dword [ebp-0x14]
	addss xmm0, xmm6
	mulss xmm0, [ebp-0xc]
	addss xmm3, xmm0
	movss [ecx+0x4], xmm3
	movss xmm0, dword [ebp-0x1c]
	addss xmm0, [ebp-0x10]
	mulss xmm5, xmm0
	movss xmm0, dword [ebp-0x14]
	subss xmm0, xmm6
	movss [ebp-0x14], xmm0
	movss xmm0, dword [ebp-0x8]
	mulss xmm0, [ebp-0x14]
	addss xmm5, xmm0
	movss xmm0, dword [ebp-0x20]
	addss xmm0, [ebp-0x18]
	subss xmm4, xmm0
	mulss xmm4, [ebp-0xc]
	addss xmm5, xmm4
	movss [ecx+0x8], xmm5
	add esp, 0x1c
	pop ebx
	pop ebp
	ret


;DObjCreate(DObjModel_s*, unsigned int, XAnimTree_s*, char*, unsigned int)
DObjCreate:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5fc
	mov edi, [ebp+0x14]
	add edi, 0x14
	cld
	mov ecx, 0xe
	xor eax, eax
	rep stosd
	mov eax, [ebp+0x14]
	mov byte [eax+0x8], 0x0
	mov word [eax+0x4], 0x0
	mov dword [eax+0xc], 0x0
	mov dword [eax+0x10], 0x0
	mov eax, [ebp+0x18]
	mov edx, [ebp+0x14]
	mov [edx+0x6], ax
	mov eax, edx
	add eax, 0x50
	mov dword [edx+0x50], 0x0
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
	mov dword [eax+0xc], 0x0
	mov dword [ebp-0x580], 0x0
	mov dword [ebp-0x57c], 0x0
	mov dword [ebp-0x578], 0x0
	mov dword [ebp-0x574], 0x0
	mov edx, [ebp+0xc]
	test edx, edx
	jnz DObjCreate_10
	mov dword [ebp-0x590], 0x0
	xor eax, eax
DObjCreate_300:
	movzx edx, byte [ebp+0xc]
	mov ecx, [ebp+0x14]
	mov [ecx+0x9], dl
	mov [ecx+0xa], al
	mov dword [esp+0x4], 0xd
	mov ebx, [ebp+0xc]
	shl ebx, 0x2
	mov edx, [ebp+0xc]
	lea eax, [ebx+edx]
	mov [esp], eax
	call MT_Alloc
	mov ecx, [ebp+0x14]
	mov [ecx+0x60], eax
	mov [esp+0x8], ebx
	lea edx, [ebp-0x13c]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	mov ecx, [ebp+0x14]
	add ebx, [ecx+0x60]
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	lea edx, [ebp-0x39]
	mov [esp+0x4], edx
	mov [esp], ebx
	call memcpy
	mov eax, [ebp-0x590]
	test eax, eax
	jnz DObjCreate_20
	mov eax, [ebp+0x14]
	mov byte [eax+0x8], 0x11
	mov eax, [g_empty]
	mov edx, [ebp+0x14]
	mov [edx+0x4], ax
DObjCreate_80:
	mov ecx, [ebp+0x14]
	movzx esi, byte [ecx+0x9]
	mov edi, [ecx+0x60]
	pxor xmm0, xmm0
	test esi, esi
	jg DObjCreate_30
DObjCreate_70:
	mov ebx, [ebp+0x14]
	movss [ebx+0x4c], xmm0
	mov eax, [ebp+0x10]
	mov [ebx], eax
	test eax, eax
	jz DObjCreate_40
	mov edx, [ebp+0x10]
	movzx eax, word [edx+0x4]
	test ax, ax
	jnz DObjCreate_50
DObjCreate_40:
	add esp, 0x5fc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DObjCreate_50:
	movzx eax, ax
	mov [esp+0x4], eax
	mov [esp], ebx
	call XAnimResetAnimMap
	add esp, 0x5fc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DObjCreate_30:
	xor ebx, ebx
	pxor xmm0, xmm0
DObjCreate_60:
	mov eax, [edi+ebx*4]
	mov [esp], eax
	movss [ebp-0x5e8], xmm0
	call XModelGetRadius
	fstp dword [ebp-0x5a8]
	movss xmm0, dword [ebp-0x5e8]
	addss xmm0, [ebp-0x5a8]
	add ebx, 0x1
	cmp esi, ebx
	jnz DObjCreate_60
	jmp DObjCreate_70
DObjCreate_20:
	mov ecx, [ebp-0x590]
	mov byte [ebp+ecx-0x570], 0x0
	mov eax, ecx
	add eax, 0x11
	mov ebx, [ebp+0x14]
	mov [ebx+0x8], al
	lea edx, [ebp-0x580]
	mov dword [esp+0xc], 0xc
	movzx eax, al
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call SL_GetStringOfSize
	mov [ebx+0x4], ax
	jmp DObjCreate_80
DObjCreate_10:
	mov ecx, [ebp+0x8]
	mov [ebp-0x598], ecx
	mov dword [ebp-0x5cc], 0x0
	mov dword [ebp-0x590], 0x0
	mov dword [ebp-0x5c8], 0x0
	mov dword [ebp-0x59c], 0xffffffff
	mov dword [ebp-0x5d4], 0xfffffffc
	mov ebx, ecx
DObjCreate_250:
	mov ebx, [ebx]
	mov [ebp-0x5c4], ebx
	mov [esp], ebx
	call XModelNumBones
	add eax, [ebp-0x5c8]
	mov [ebp-0x594], eax
	add eax, 0xffffff80
	jle DObjCreate_90
	mov eax, [ebp+0x8]
	mov [ebp-0x5a0], eax
	mov dword [ebp-0x5ac], 0x0
	mov dword [ebp-0x5b0], 0x0
	mov edx, eax
	jmp DObjCreate_100
DObjCreate_120:
	add dword [ebp-0x5b0], 0x1
	add dword [ebp-0x5a0], 0x8
	mov ebx, [ebp-0x5b0]
	cmp [ebp+0xc], ebx
	jz DObjCreate_110
DObjCreate_140:
	mov edx, [ebp-0x5a0]
DObjCreate_100:
	mov edi, [edx]
	mov [esp], edi
	call XModelGetName
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_model_s
	mov dword [esp], 0x13
	call Com_Printf
	mov [esp], edi
	call XModelNumBones
	mov esi, eax
	test eax, eax
	jle DObjCreate_120
	xor ebx, ebx
DObjCreate_130:
	mov eax, [edi+0x8]
	movzx eax, word [eax+ebx*2]
	mov [esp], eax
	call SL_ConvertToString
	mov [esp+0xc], eax
	mov ecx, [ebp-0x5ac]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_bone_d_s
	mov dword [esp], 0x13
	call Com_Printf
	add ebx, 0x1
	add dword [ebp-0x5ac], 0x1
	cmp esi, ebx
	jnz DObjCreate_130
	add dword [ebp-0x5b0], 0x1
	add dword [ebp-0x5a0], 0x8
	mov ebx, [ebp-0x5b0]
	cmp [ebp+0xc], ebx
	jnz DObjCreate_140
DObjCreate_110:
	mov dword [esp+0xc], 0x80
	mov eax, [ebp-0x13c]
	mov eax, [eax]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_dobj_for_xmodel_
	mov dword [esp], 0x2
	call Com_Error
DObjCreate_90:
	mov edx, [ebp-0x5c4]
	mov eax, [ebp-0x5d4]
	mov [eax+ebp-0x138], edx
	mov ecx, [ebp-0x59c]
	mov byte [ecx+ebp-0x38], 0xff
	mov ebx, [ebp-0x5c8]
	mov [eax+ebp-0xb8], ebx
	mov eax, [ebp-0x598]
	cmp byte [eax+0x6], 0x0
	jz DObjCreate_150
	mov eax, 0x1
	movzx ecx, byte [ebp-0x5cc]
	shl eax, cl
	mov ebx, [ebp+0x14]
	or [ebx+0xc], eax
DObjCreate_150:
	mov eax, [ebp-0x5cc]
	test eax, eax
	jz DObjCreate_160
	mov edx, [ebp-0x598]
	movzx eax, word [edx+0x4]
	movzx edi, ax
	test ax, ax
	jnz DObjCreate_170
DObjCreate_260:
	mov ecx, [ebp-0x5c4]
	movzx ecx, byte [ecx+0x4]
	mov [ebp-0x5c0], ecx
	mov ebx, [ebp-0x5c4]
	mov ebx, [ebx+0x8]
	mov [ebp-0x5bc], ebx
	test ecx, ecx
	jle DObjCreate_180
	mov dword [ebp-0x5b8], 0x0
	mov byte [ebp-0x5b1], 0x0
	mov ebx, [ebp-0x5b8]
DObjCreate_230:
	mov eax, [ebp-0x5bc]
	movzx ebx, word [eax+ebx*2]
	mov [ebp-0x58c], ebx
	mov eax, [ebp-0x59c]
	test eax, eax
	js DObjCreate_190
	lea edi, [ebp-0xbc]
	add edi, [ebp-0x5d4]
	lea ebx, [ebp-0x13c]
	add ebx, [ebp-0x5d4]
	xor esi, esi
DObjCreate_210:
	lea eax, [ebp-0x19]
	mov [esp+0xc], eax
	mov eax, [edi]
	mov [esp+0x8], eax
	mov edx, [ebp-0x58c]
	mov [esp+0x4], edx
	mov eax, [ebx]
	mov [esp], eax
	call XModelGetBoneIndex
	test eax, eax
	jnz DObjCreate_200
	add esi, 0x1
	sub edi, 0x4
	sub ebx, 0x4
	cmp [ebp-0x5cc], esi
	jnz DObjCreate_210
DObjCreate_190:
	add dword [ebp-0x5b8], 0x1
	mov eax, [ebp-0x5b8]
	cmp [ebp-0x5c0], eax
	jz DObjCreate_220
	mov ebx, eax
	jmp DObjCreate_230
DObjCreate_220:
	cmp byte [ebp-0x5b1], 0x0
	jnz DObjCreate_160
DObjCreate_180:
	mov eax, [ebp-0x13c]
	mov ebx, [eax]
	mov edx, [ebp-0x5c4]
	mov esi, [edx]
	mov ecx, [ebp-0x5bc]
	movzx eax, word [ecx]
	mov [esp], eax
	call SL_ConvertToString
	mov [esp+0x10], ebx
	mov [esp+0xc], esi
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_attempti
	mov dword [esp], 0x13
	call Com_PrintWarning
DObjCreate_160:
	add dword [ebp-0x5cc], 0x1
	add dword [ebp-0x598], 0x8
	add dword [ebp-0x59c], 0x1
	add dword [ebp-0x5d4], 0x4
	mov ebx, [ebp-0x5cc]
	cmp [ebp+0xc], ebx
	jz DObjCreate_240
	mov eax, [ebp-0x594]
	mov [ebp-0x5c8], eax
	mov ebx, [ebp-0x598]
	jmp DObjCreate_250
DObjCreate_200:
	mov eax, [ebp-0x5b8]
	test eax, eax
	mov eax, 0x1
	movzx ecx, byte [ebp-0x5b1]
	cmovz ecx, eax
	mov [ebp-0x5b1], cl
	mov ecx, [ebp-0x5b8]
	add ecx, [ebp-0x5c8]
	movzx ebx, byte [ebp-0x5c8]
	movzx edx, byte [ebp-0x5b8]
	lea eax, [ebx+edx+0x1]
	mov ebx, [ebp-0x590]
	mov [ebp+ebx-0x570], al
	mov edx, ecx
	sar edx, 0x5
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	or [ebp+edx*4-0x580], eax
	movzx eax, byte [ebp-0x19]
	add al, 0x1
	mov [ebx+ebp-0x56f], al
	add ebx, 0x2
	mov [ebp-0x590], ebx
	jmp DObjCreate_190
DObjCreate_170:
	mov [esp], edi
	call SL_ConvertToString
	cmp byte [eax], 0x0
	jz DObjCreate_260
	mov eax, [ebp-0x59c]
	test eax, eax
	js DObjCreate_270
	lea esi, [ebp-0xbc]
	add esi, [ebp-0x5d4]
	lea ebx, [ebp-0x13c]
	add ebx, [ebp-0x5d4]
	mov dword [ebp-0x5a4], 0x0
	lea eax, [ebp-0x39]
	add eax, [ebp-0x5cc]
	mov [ebp-0x5d0], eax
	mov edx, eax
	jmp DObjCreate_280
DObjCreate_290:
	mov edx, [ebp-0x5d0]
DObjCreate_280:
	mov [esp+0xc], edx
	mov eax, [esi]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov eax, [ebx]
	mov [esp], eax
	call XModelGetBoneIndex
	test eax, eax
	jnz DObjCreate_160
	add dword [ebp-0x5a4], 0x1
	sub esi, 0x4
	sub ebx, 0x4
	mov ecx, [ebp-0x5a4]
	cmp [ebp-0x5cc], ecx
	jnz DObjCreate_290
DObjCreate_270:
	mov eax, [ebp-0x13c]
	mov ebx, [eax]
	mov [esp], edi
	call SL_ConvertToString
	mov [esp+0xc], ebx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_part_s_n
	mov dword [esp], 0x13
	call Com_PrintWarning
	jmp DObjCreate_160
DObjCreate_240:
	movzx eax, byte [ebp-0x594]
	jmp DObjCreate_300


;DObjArchive(DObj_s*)
DObjArchive:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x22c
	mov edx, [ebp+0x8]
	movzx eax, byte [edx+0x9]
	mov [ebp-0x30], ax
	mov eax, [edx]
	mov [ebp-0x2c], eax
	movzx eax, word [edx+0x6]
	mov [ebp-0x2e], ax
	mov ecx, [edx+0x60]
	mov [ebp-0x214], ecx
	movzx eax, byte [edx+0x9]
	lea edx, [ecx+eax*4]
	mov [ebp-0x208], edx
	test eax, eax
	jg DObjArchive_10
	mov edx, ecx
DObjArchive_130:
	mov dword [ebp-0x34], 0x0
	mov [ebp-0x38], edx
	mov edx, [ebp+0x8]
	add edx, 0x50
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x50]
	mov [ebp-0x28], eax
	mov eax, [edx+0x4]
	mov [ebp-0x24], eax
	mov eax, [edx+0x8]
	mov [ebp-0x20], eax
	mov eax, [edx+0xc]
	mov [ebp-0x1c], eax
	cmp word [ebp-0x30], 0x0
	jz DObjArchive_20
	xor ecx, ecx
	mov ebx, 0x1
	lea edx, [ebp-0x1f8]
DObjArchive_40:
	movzx eax, word [edx+0x4]
	mov [ebp+ecx*2-0x78], ax
	cmp byte [edx+0x6], 0x0
	jz DObjArchive_30
	mov eax, ebx
	shl eax, cl
	or [ebp-0x34], eax
DObjArchive_30:
	add ecx, 0x1
	add edx, 0x8
	movzx eax, word [ebp-0x30]
	cmp eax, ecx
	ja DObjArchive_40
	mov eax, [ebp+0x8]
DObjArchive_80:
	mov dword [eax+0x60], 0x0
	mov ebx, [eax]
	test ebx, ebx
	jz DObjArchive_50
	mov dword [eax], 0x0
DObjArchive_50:
	mov edx, [ebp+0x8]
	movzx eax, word [edx+0x4]
	test ax, ax
	jz DObjArchive_60
	movzx edx, ax
	cmp edx, [g_empty]
	jz DObjArchive_70
	mov ecx, [ebp+0x8]
	movzx eax, byte [ecx+0x8]
	mov [esp+0x4], eax
	mov [esp], edx
	call SL_RemoveRefToStringOfSize
DObjArchive_70:
	mov eax, [ebp+0x8]
	mov byte [eax+0x8], 0x0
	mov word [eax+0x4], 0x0
	mov edx, [ebp+0x8]
DObjArchive_60:
	lea eax, [ebp-0x78]
	mov dword [esp+0x8], 0x60
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
	add esp, 0x22c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DObjArchive_20:
	mov eax, ecx
	jmp DObjArchive_80
DObjArchive_10:
	mov dword [ebp-0x20c], 0x0
	mov dword [ebp-0x210], 0x0
	lea ecx, [ebp-0x1f8]
	mov [ebp-0x204], ecx
	lea eax, [ebp-0x1f4]
	mov [ebp-0x200], eax
	lea edx, [ebp-0x1f2]
	mov [ebp-0x1fc], edx
	mov edi, 0xffffffff
	lea ecx, [ebp-0xfc]
	mov [ebp-0x218], ecx
	lea eax, [ebp-0x100]
	mov [ebp-0x21c], eax
	mov dword [ebp-0x220], 0x0
DObjArchive_120:
	mov edx, [ebp-0x220]
	mov ecx, [ebp-0x214]
	mov eax, [edx+ecx]
	mov ecx, [ebp-0x20c]
	mov [edx+ebp-0xf8], ecx
	mov [esp], eax
	call XModelNumBones
	add [ebp-0x20c], eax
	mov edx, [ebp-0x220]
	mov ecx, [ebp-0x214]
	mov eax, [edx+ecx]
	mov edx, [ebp-0x204]
	mov [edx], eax
	mov ecx, [ebp-0x200]
	mov word [ecx], 0x0
	mov eax, 0x1
	movzx ecx, byte [ebp-0x210]
	shl eax, cl
	mov edx, [ebp+0x8]
	test [edx+0xc], eax
	mov ecx, [ebp-0x1fc]
	setnz byte [ecx]
	mov eax, [ebp-0x208]
	mov ecx, [ebp-0x210]
	movzx edx, byte [eax+ecx]
	cmp dl, 0xff
	jz DObjArchive_90
	mov eax, edi
	test edi, edi
	js DObjArchive_90
	movzx esi, dl
	mov edx, [ebp-0x220]
	cmp esi, [edx+ebp-0xfc]
	jge DObjArchive_100
	lea edx, [ebp+edi*4-0xf8]
	mov ecx, edi
	xor ebx, ebx
DObjArchive_110:
	sub ecx, 0x1
	cmp edi, ebx
	jz DObjArchive_90
	mov eax, [ebp-0x21c]
	sub eax, [ebp-0x218]
	mov eax, [eax+edx]
	add ebx, 0x1
	sub edx, 0x4
	cmp eax, esi
	jg DObjArchive_110
	mov eax, ecx
DObjArchive_100:
	mov ebx, esi
	sub ebx, [ebp+eax*4-0xf8]
	mov ecx, [ebp-0x214]
	mov eax, [ecx+eax*4]
	mov [esp], eax
	call XModelBoneNames
	movzx eax, word [eax+ebx*2]
	mov edx, [ebp-0x200]
	mov [edx], ax
DObjArchive_90:
	add dword [ebp-0x210], 0x1
	add dword [ebp-0x220], 0x4
	add dword [ebp-0x21c], 0x4
	add dword [ebp-0x204], 0x8
	add dword [ebp-0x200], 0x8
	add dword [ebp-0x1fc], 0x8
	add edi, 0x1
	add dword [ebp-0x218], 0x4
	mov ecx, [ebp+0x8]
	movzx eax, byte [ecx+0x9]
	cmp eax, [ebp-0x210]
	jg DObjArchive_120
	mov eax, [ecx+0x60]
	mov [ebp-0x214], eax
	mov edx, eax
	jmp DObjArchive_130
	nop


;DObjGetName(DObj_s const*)
DObjGetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x60]
	mov eax, [eax]
	mov eax, [eax]
	pop ebp
	ret
	nop


;DObjGetTree(DObj_s const*)
DObjGetTree:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	pop ebp
	ret


;DObjDumpInfo(DObj_s const*)
DObjDumpInfo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov ecx, [ebp+0x8]
	test ecx, ecx
	jz DObjDumpInfo_10
	mov dword [esp+0x4], _cstring_models
	mov dword [esp], 0x13
	call Com_Printf
	mov eax, [ebp+0x8]
	movzx eax, byte [eax+0x9]
	mov [ebp-0x3c], eax
	mov edx, [ebp+0x8]
	mov edx, [edx+0x60]
	mov [ebp-0x38], edx
	test eax, eax
	jg DObjDumpInfo_20
DObjDumpInfo_240:
	mov dword [esp+0x4], _cstring_bones
	mov dword [esp], 0x13
	call Com_Printf
	mov edx, [ebp+0x8]
	movzx edx, byte [edx+0xa]
	mov [ebp-0x40], edx
	test edx, edx
	jle DObjDumpInfo_30
	xor esi, esi
DObjDumpInfo_70:
	mov eax, [ebp+0x8]
	movzx eax, byte [eax+0x9]
	mov [ebp-0x34], eax
	mov edx, [ebp+0x8]
	mov edx, [edx+0x60]
	mov [ebp-0x30], edx
	test eax, eax
	jle DObjDumpInfo_40
	mov eax, [edx]
	mov edi, [eax+0x8]
	movzx edx, byte [eax+0x4]
	cmp esi, edx
	jl DObjDumpInfo_50
	xor ebx, ebx
	xor ecx, ecx
DObjDumpInfo_60:
	add ebx, edx
	add ecx, 0x1
	cmp [ebp-0x34], ecx
	jz DObjDumpInfo_40
	mov edx, [ebp-0x30]
	mov eax, [edx+ecx*4]
	mov edi, [eax+0x8]
	movzx edx, byte [eax+0x4]
	mov eax, esi
	sub eax, ebx
	cmp eax, edx
	jge DObjDumpInfo_60
DObjDumpInfo_200:
	movzx eax, word [edi+eax*2]
	mov [esp], eax
	call SL_ConvertToString
DObjDumpInfo_190:
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_bone_d_s
	mov dword [esp], 0x13
	call Com_Printf
	add esi, 0x1
	cmp [ebp-0x40], esi
	jnz DObjDumpInfo_70
DObjDumpInfo_30:
	mov eax, [ebp+0x8]
	cmp word [eax+0x4], 0x0
	jz DObjDumpInfo_80
	mov dword [esp+0x4], _cstring_part_duplicates
	mov dword [esp], 0x13
	call Com_Printf
	mov edx, [ebp+0x8]
	movzx eax, word [edx+0x4]
	mov [esp], eax
	call SL_ConvertToString
	lea edx, [eax+0x10]
	cmp byte [eax+0x10], 0x0
	jz DObjDumpInfo_90
	mov [ebp-0x48], edx
	movzx eax, byte [edx+0x1]
	lea esi, [eax-0x1]
	mov eax, [ebp+0x8]
	movzx eax, byte [eax+0x9]
	mov [ebp-0x28], eax
	mov edx, [ebp+0x8]
	mov edi, [edx+0x60]
	test eax, eax
	jle DObjDumpInfo_100
DObjDumpInfo_160:
	mov eax, [edi]
	mov edx, [eax+0x8]
	mov [ebp-0x24], edx
	movzx edx, byte [eax+0x4]
	cmp esi, edx
	jl DObjDumpInfo_110
	xor ebx, ebx
	xor ecx, ecx
DObjDumpInfo_120:
	add ebx, edx
	add ecx, 0x1
	cmp [ebp-0x28], ecx
	jz DObjDumpInfo_100
	mov eax, [edi+ecx*4]
	mov edx, [eax+0x8]
	mov [ebp-0x24], edx
	movzx edx, byte [eax+0x4]
	mov eax, esi
	sub eax, ebx
	cmp eax, edx
	jge DObjDumpInfo_120
DObjDumpInfo_210:
	mov edx, [ebp-0x24]
	movzx eax, word [edx+eax*2]
	mov [esp], eax
	call SL_ConvertToString
	mov [ebp-0x2c], eax
	mov eax, [ebp+0x8]
	mov edi, [eax+0x60]
	mov edx, [ebp-0x48]
	movzx eax, byte [edx+0x1]
	sub eax, 0x1
	mov [ebp-0x44], eax
	movzx eax, byte [edx]
	lea esi, [eax-0x1]
	mov eax, [ebp+0x8]
	movzx eax, byte [eax+0x9]
	mov [ebp-0x20], eax
	test eax, eax
	jle DObjDumpInfo_130
DObjDumpInfo_170:
	mov eax, [edi]
	mov edx, [eax+0x8]
	mov [ebp-0x1c], edx
	movzx edx, byte [eax+0x4]
	cmp esi, edx
	jl DObjDumpInfo_140
	xor ebx, ebx
	xor ecx, ecx
DObjDumpInfo_150:
	add ebx, edx
	add ecx, 0x1
	cmp [ebp-0x20], ecx
	jz DObjDumpInfo_130
	mov eax, [edi+ecx*4]
	mov edx, [eax+0x8]
	mov [ebp-0x1c], edx
	movzx edx, byte [eax+0x4]
	mov eax, esi
	sub eax, ebx
	cmp eax, edx
	jge DObjDumpInfo_150
DObjDumpInfo_220:
	mov edx, [ebp-0x1c]
	movzx eax, word [edx+eax*2]
	mov [esp], eax
	call SL_ConvertToString
DObjDumpInfo_180:
	mov edx, [ebp-0x2c]
	mov [esp+0x14], edx
	mov edx, [ebp-0x44]
	mov [esp+0x10], edx
	mov [esp+0xc], eax
	mov edx, [ebp-0x48]
	movzx eax, byte [edx]
	sub eax, 0x1
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_d_s__d_s
	mov dword [esp], 0x13
	call Com_Printf
	add dword [ebp-0x48], 0x2
	mov eax, [ebp-0x48]
	cmp byte [eax], 0x0
	jz DObjDumpInfo_90
	mov edx, [ebp-0x48]
	movzx eax, byte [edx+0x1]
	lea esi, [eax-0x1]
	mov eax, [ebp+0x8]
	movzx eax, byte [eax+0x9]
	mov [ebp-0x28], eax
	mov edx, [ebp+0x8]
	mov edi, [edx+0x60]
	test eax, eax
	jg DObjDumpInfo_160
DObjDumpInfo_100:
	mov dword [ebp-0x2c], 0x0
	mov edx, [ebp-0x48]
	movzx eax, byte [edx+0x1]
	sub eax, 0x1
	mov [ebp-0x44], eax
	movzx eax, byte [edx]
	lea esi, [eax-0x1]
	mov eax, [ebp+0x8]
	movzx eax, byte [eax+0x9]
	mov [ebp-0x20], eax
	test eax, eax
	jg DObjDumpInfo_170
DObjDumpInfo_130:
	xor eax, eax
	jmp DObjDumpInfo_180
DObjDumpInfo_80:
	mov dword [esp+0x4], _cstring_no_part_duplicat
	mov dword [esp], 0x13
	call Com_Printf
DObjDumpInfo_90:
	mov dword [esp+0x4], _cstring_
	mov dword [esp], 0x13
	call Com_Printf
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DObjDumpInfo_40:
	xor eax, eax
	jmp DObjDumpInfo_190
DObjDumpInfo_50:
	mov eax, esi
	jmp DObjDumpInfo_200
DObjDumpInfo_110:
	mov eax, esi
	jmp DObjDumpInfo_210
DObjDumpInfo_140:
	mov eax, esi
	jmp DObjDumpInfo_220
DObjDumpInfo_20:
	xor edi, edi
	xor esi, esi
DObjDumpInfo_230:
	mov eax, [ebp-0x38]
	mov ebx, [eax+esi*4]
	mov eax, [ebx]
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_d_s
	mov dword [esp], 0x13
	call Com_Printf
	mov [esp], ebx
	call XModelNumBones
	add edi, eax
	add esi, 0x1
	cmp [ebp-0x3c], esi
	jnz DObjDumpInfo_230
	jmp DObjDumpInfo_240
DObjDumpInfo_10:
	mov dword [esp+0x4], _cstring_no_dobj
	mov dword [esp], 0x13
	call Com_Printf
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;DObjShutdown()
DObjShutdown:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [g_empty]
	test eax, eax
	jnz DObjShutdown_10
	leave
	ret
DObjShutdown_10:
	mov dword [esp+0x4], 0x11
	mov [esp], eax
	call SL_RemoveRefToStringOfSize
	mov dword [g_empty], 0x0
	leave
	ret
	nop
	add [eax], al


;DObjGetBounds(DObj_s const*, float*, float*)
DObjGetBounds:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	mov eax, [ebx+0x4c]
	xor eax, 0x80000000
	mov [edx], eax
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	mov eax, [ebx+0x4c]
	mov [ecx], eax
	mov [ecx+0x4], eax
	mov [ecx+0x8], eax
	add esp, 0x4
	pop ebx
	pop ebp
	ret
	nop


;DObjGetRadius(DObj_s const*)
DObjGetRadius:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	fld dword [eax+0x4c]
	pop ebp
	ret
	nop


;DObjSkelClear(DObj_s const*)
DObjSkelClear:
	push ebp
	mov ebp, esp
	push edi
	mov edi, [ebp+0x8]
	add edi, 0x14
	cld
	mov ecx, 0xe
	xor eax, eax
	rep stosd
	pop edi
	pop ebp
	ret
	nop


;DObjTraceline(DObj_s*, float*, float*, unsigned char*, DObjTrace_s*)
DObjTraceline:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x22c
	mov eax, [ebp+0x18]
	mov dword [eax+0x4], 0x0
	mov word [eax+0x14], 0x0
	mov word [eax+0x16], 0x0
	mov word [eax+0x18], 0x0
	add eax, 0x8
	mov [ebp-0x1a4], eax
	mov edx, [ebp+0x18]
	mov dword [edx+0x8], 0x0
	add edx, 0xc
	mov [ebp-0x1a0], edx
	mov ecx, [ebp+0x18]
	mov dword [ecx+0xc], 0x0
	add ecx, 0x10
	mov [ebp-0x19c], ecx
	mov eax, [ebp+0x18]
	mov dword [eax+0x10], 0x0
	mov edx, [ebp+0x10]
	movss xmm0, dword [edx]
	movss [ebp-0x164], xmm0
	mov eax, [ebp+0xc]
	subss xmm0, [eax]
	movss [ebp-0x164], xmm0
	add eax, 0x4
	mov [ebp-0x198], eax
	movss xmm0, dword [edx+0x4]
	movss [ebp-0x168], xmm0
	mov eax, [ebp+0xc]
	subss xmm0, [eax+0x4]
	movss [ebp-0x168], xmm0
	add eax, 0x8
	mov [ebp-0x194], eax
	movss xmm0, dword [edx+0x8]
	movss [ebp-0x16c], xmm0
	mov eax, [ebp+0xc]
	subss xmm0, [eax+0x8]
	movss [ebp-0x16c], xmm0
	movss xmm1, dword [ebp-0x164]
	mulss xmm1, xmm1
	movss xmm0, dword [ebp-0x168]
	mulss xmm0, xmm0
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0x16c]
	mulss xmm0, xmm0
	addss xmm1, xmm0
	pxor xmm0, xmm0
	ucomiss xmm1, xmm0
	jp DObjTraceline_10
	jnz DObjTraceline_10
DObjTraceline_20:
	add esp, 0x22c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DObjTraceline_10:
	mov eax, [ebp+0x8]
	mov [esp], eax
	movss [ebp-0x218], xmm1
	call DObjGetRotTransArray
	mov esi, eax
	test eax, eax
	movss xmm1, dword [ebp-0x218]
	jz DObjTraceline_20
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	movss [ebp-0x1ec], xmm0
	mov edx, [ebp+0x8]
	movzx eax, word [edx+0x4]
	mov [esp], eax
	call SL_ConvertToString
	add eax, 0x10
	mov [ebp-0x1b4], eax
	mov ecx, [ebp+0x18]
	movss xmm0, dword [ecx]
	movss [ebp-0x1dc], xmm0
	mov eax, [ebp+0x8]
	mov eax, [eax+0x60]
	mov [ebp-0x1ac], eax
	mov edx, [ebp+0x8]
	movzx eax, byte [edx+0x9]
	movzx ecx, al
	mov [ebp-0x1f4], ecx
	mov edx, [ebp-0x1ac]
	lea edx, [edx+ecx*4]
	mov [ebp-0x1a8], edx
	test al, al
	jz DObjTraceline_20
	mov dword [ebp-0x1c0], 0x2
	mov dword [ebp-0x1c8], 0x0
	mov dword [ebp-0x1d0], 0xffffffff
	mov dword [ebp-0x1d4], 0x0
	mov dword [ebp-0x1e0], 0x0
	mov dword [ebp-0x1c4], 0x0
	mov dword [ebp-0x1cc], 0xffffffff
	mov ecx, [ebp-0x1c4]
DObjTraceline_180:
	mov eax, [ebp-0x1ac]
	mov ecx, [eax+ecx*4]
	mov [ebp-0x1e8], ecx
	mov eax, [ecx+0x8]
	mov [ebp-0x1b8], eax
	movzx eax, byte [ecx+0x4]
	movzx edx, al
	mov [ebp-0x1e4], edx
	mov dword [ebp-0x1f0], 0x1
	movzx ecx, byte [ebp-0x1c4]
	shl dword [ebp-0x1f0], cl
	mov edx, [ebp+0x8]
	mov edx, [edx+0xc]
	and [ebp-0x1f0], edx
	test al, al
	jz DObjTraceline_30
	mov ecx, [ebp-0x1c8]
	lea ecx, [ebp+ecx*2-0x154]
	mov [ebp-0x15c], ecx
	xor edi, edi
	mov dword [ebp-0x160], 0x0
DObjTraceline_170:
	mov edx, [ebp-0x1e8]
	mov eax, [edx+0x18]
	movzx ebx, byte [eax+edi]
	movzx eax, bx
	mov ecx, [ebp+0x14]
	movzx edx, byte [eax+ecx]
	movzx eax, dl
	mov [ebp-0x1bc], eax
	mov ecx, [ebp-0x1b4]
	movzx eax, byte [ecx]
	sub eax, 0x1
	cmp [ebp-0x1c8], eax
	jz DObjTraceline_40
	sub dl, 0x1
	jz DObjTraceline_50
DObjTraceline_190:
	mov eax, [ebp-0x15c]
	mov [eax], bx
	mov eax, [ebp-0x1f0]
	test eax, eax
	jnz DObjTraceline_60
	mov ecx, [ebp-0x160]
	mov edx, [ebp-0x1e8]
	add ecx, [edx+0xa4]
	mov [ebp-0x1b0], ecx
	mov ecx, [ecx+0x24]
	test ecx, ecx
	jz DObjTraceline_60
	mov edx, [ebp-0x1c8]
	shr edx, 0x5
	mov ecx, [ebp-0x1c8]
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	mov ecx, [ebp+0x8]
	test [ecx+edx*4+0x50], eax
	jnz DObjTraceline_60
	mov eax, [ebp-0x1c0]
	cmp [ebp-0x1bc], eax
	jb DObjTraceline_60
	mov eax, [ebp-0x1b0]
	add eax, 0x18
	movss xmm3, dword [esi+0x1c]
	movaps xmm5, xmm3
	mulss xmm5, [esi]
	movaps xmm7, xmm3
	mulss xmm7, [esi+0x4]
	mulss xmm3, [esi+0x8]
	movaps xmm0, xmm5
	mulss xmm0, [esi]
	movss [ebp-0x188], xmm0
	movss xmm6, dword [esi+0x4]
	movaps xmm2, xmm5
	mulss xmm2, xmm6
	movss xmm1, dword [esi+0x8]
	movaps xmm4, xmm5
	mulss xmm4, xmm1
	movss xmm0, dword [esi+0xc]
	mulss xmm5, xmm0
	mulss xmm6, xmm7
	movss [ebp-0x184], xmm6
	movaps xmm6, xmm7
	mulss xmm6, xmm1
	movss [ebp-0x180], xmm6
	mulss xmm7, xmm0
	movss [ebp-0x17c], xmm7
	movaps xmm7, xmm3
	mulss xmm7, xmm1
	mulss xmm3, xmm0
	mov edx, [ebp-0x1b0]
	movss xmm0, dword [edx+0x18]
	movss [ebp-0x1fc], xmm0
	movss xmm1, dword [eax+0x4]
	movss [ebp-0x190], xmm1
	movss xmm6, dword [eax+0x8]
	movss [ebp-0x18c], xmm6
	movss xmm0, dword [ebp-0x184]
	addss xmm0, xmm7
	movss xmm1, dword [_float_1_00000000]
	subss xmm1, xmm0
	mulss xmm1, [ebp-0x1fc]
	movaps xmm0, xmm2
	subss xmm0, xmm3
	mulss xmm0, [ebp-0x190]
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0x17c]
	addss xmm0, xmm4
	mulss xmm0, xmm6
	addss xmm1, xmm0
	addss xmm1, [esi+0x10]
	mov eax, [ebp+0xc]
	movss xmm6, dword [eax]
	subss xmm6, xmm1
	addss xmm2, xmm3
	mulss xmm2, [ebp-0x1fc]
	addss xmm7, [ebp-0x188]
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, xmm7
	mulss xmm0, [ebp-0x190]
	addss xmm2, xmm0
	movss xmm0, dword [ebp-0x180]
	subss xmm0, xmm5
	mulss xmm0, [ebp-0x18c]
	addss xmm2, xmm0
	addss xmm2, [esi+0x14]
	mov edx, [ebp-0x198]
	movss xmm3, dword [edx]
	subss xmm3, xmm2
	subss xmm4, [ebp-0x17c]
	mulss xmm4, [ebp-0x1fc]
	addss xmm5, [ebp-0x180]
	mulss xmm5, [ebp-0x190]
	addss xmm4, xmm5
	movss xmm0, dword [ebp-0x188]
	addss xmm0, [ebp-0x184]
	movss [ebp-0x188], xmm0
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, [ebp-0x188]
	mulss xmm0, [ebp-0x18c]
	addss xmm4, xmm0
	addss xmm4, [esi+0x18]
	mov eax, [ebp-0x194]
	movss xmm2, dword [eax]
	subss xmm2, xmm4
	movss xmm4, dword [ebp-0x164]
	mulss xmm4, xmm6
	movss xmm0, dword [ebp-0x168]
	mulss xmm0, xmm3
	addss xmm4, xmm0
	movss xmm0, dword [ebp-0x16c]
	mulss xmm0, xmm2
	addss xmm4, xmm0
	xorps xmm4, [_data16_80000000]
	mulss xmm4, [ebp-0x1ec]
	movaps xmm0, xmm4
	subss xmm0, [_float_1_00000000]
	pxor xmm7, xmm7
	movaps xmm1, xmm7
	cmpss xmm1, xmm0, 0x6
	movaps xmm0, xmm1
	movaps xmm1, xmm4
	andps xmm1, xmm0
	movss xmm5, dword [_float_1_00000000]
	andnps xmm0, xmm5
	orps xmm0, xmm1
	movaps xmm1, xmm7
	subss xmm1, xmm4
	movaps xmm5, xmm7
	cmpss xmm5, xmm1, 0x6
	andps xmm0, xmm5
	orps xmm0, xmm7
	movss xmm1, dword [ebp-0x164]
	mulss xmm1, xmm0
	addss xmm6, xmm1
	movss xmm1, dword [ebp-0x168]
	mulss xmm1, xmm0
	addss xmm3, xmm1
	mulss xmm0, [ebp-0x16c]
	addss xmm2, xmm0
	mulss xmm6, xmm6
	mulss xmm3, xmm3
	addss xmm6, xmm3
	mulss xmm2, xmm2
	addss xmm6, xmm2
	mov eax, [ebp-0x1b0]
	movss xmm0, dword [eax+0x24]
	subss xmm0, xmm6
	ucomiss xmm7, xmm0
	jae DObjTraceline_60
	mov edx, [ebp-0x1c0]
	cmp [ebp-0x1bc], edx
	jz DObjTraceline_70
DObjTraceline_250:
	lea ecx, [ebp-0x24]
	mov edx, esi
	mov eax, [ebp+0xc]
	call LocalInvMatrixTransformVectorQuatTrans
	lea ecx, [ebp-0x30]
	mov edx, esi
	mov eax, [ebp+0x10]
	call LocalInvMatrixTransformVectorQuatTrans
	mov eax, [ebp-0x1c0]
	cmp [ebp-0x1bc], eax
	jz DObjTraceline_80
	movss xmm5, dword [ebp-0x1dc]
DObjTraceline_260:
	mov ecx, [ebp-0x1b0]
	pxor xmm4, xmm4
	movaps xmm7, xmm4
	mov byte [ebp-0x1d6], 0x1
	mov byte [ebp-0x1d5], 0x1
	movss xmm3, dword [_float__1_00000000]
	movss xmm6, dword [_float_1_00000000]
DObjTraceline_140:
	xor edx, edx
DObjTraceline_110:
	movss xmm0, dword [ecx+edx*4]
	lea eax, [edx*4]
	movss xmm2, dword [ebp+eax-0x24]
	subss xmm2, xmm0
	mulss xmm2, xmm3
	movss xmm1, dword [ebp+eax-0x30]
	subss xmm1, xmm0
	mulss xmm1, xmm3
	ucomiss xmm2, xmm7
	jbe DObjTraceline_90
	ucomiss xmm1, xmm7
	ja DObjTraceline_60
	movaps xmm0, xmm2
	subss xmm0, xmm1
	movaps xmm1, xmm0
	mulss xmm0, xmm4
	ucomiss xmm2, xmm0
	jbe DObjTraceline_100
	movaps xmm4, xmm2
	divss xmm4, xmm1
	ucomiss xmm4, xmm5
	jae DObjTraceline_60
	mov [ebp-0x1d0], edx
	movss [ebp-0x1d4], xmm3
DObjTraceline_100:
	mov byte [ebp-0x1d6], 0x0
DObjTraceline_200:
	add edx, 0x1
	cmp edx, 0x3
	jnz DObjTraceline_110
	ucomiss xmm3, xmm6
	jp DObjTraceline_120
	jz DObjTraceline_130
DObjTraceline_120:
	add ecx, 0xc
	movaps xmm3, xmm6
	jmp DObjTraceline_140
DObjTraceline_130:
	cmp byte [ebp-0x1d6], 0x0
	jnz DObjTraceline_150
	mov edx, [ebp-0x1c0]
	cmp [ebp-0x1bc], edx
	jz DObjTraceline_160
	mov eax, [ebp+0x18]
DObjTraceline_280:
	movss [eax], xmm4
	movzx edx, word [ebp-0x1c4]
	mov [eax+0x14], dx
	mov ecx, [ebp-0x1b8]
	movzx eax, word [ecx+edi*2]
	mov edx, [ebp+0x18]
	mov [edx+0x16], ax
	mov [edx+0x18], bx
	mov ecx, [ebp-0x1bc]
	mov [ebp-0x1c0], ecx
	mov eax, [ebp-0x1d0]
	mov [ebp-0x1cc], eax
	mov [ebp-0x1e0], esi
DObjTraceline_60:
	add edi, 0x1
	add esi, 0x20
	add dword [ebp-0x1c8], 0x1
	add dword [ebp-0x160], 0x28
	add dword [ebp-0x15c], 0x2
	cmp [ebp-0x1e4], edi
	ja DObjTraceline_170
DObjTraceline_30:
	add dword [ebp-0x1c4], 0x1
	mov ecx, [ebp-0x1c4]
	cmp [ebp-0x1f4], ecx
	ja DObjTraceline_180
	mov edx, [ebp-0x1e0]
	test edx, edx
	jz DObjTraceline_20
	mov eax, [ebp-0x1e0]
	movss xmm1, dword [eax+0x1c]
	movaps xmm4, xmm1
	mulss xmm4, [eax]
	movaps xmm6, xmm1
	mulss xmm6, [eax+0x4]
	mulss xmm1, [eax+0x8]
	movaps xmm0, xmm4
	mulss xmm0, [eax]
	movss [ebp-0x178], xmm0
	movss xmm3, dword [eax+0x4]
	movaps xmm5, xmm4
	mulss xmm5, xmm3
	movss xmm2, dword [eax+0x8]
	movaps xmm0, xmm4
	mulss xmm0, xmm2
	movss [ebp-0x174], xmm0
	movss xmm0, dword [eax+0xc]
	mulss xmm4, xmm0
	mulss xmm3, xmm6
	movss [ebp-0x170], xmm3
	movaps xmm7, xmm6
	mulss xmm7, xmm2
	mulss xmm6, xmm0
	movaps xmm3, xmm1
	mulss xmm3, xmm2
	mulss xmm1, xmm0
	movss [ebp-0x21c], xmm1
	movss xmm0, dword [ebp-0x170]
	addss xmm0, xmm3
	movss xmm2, dword [_float_1_00000000]
	movaps xmm1, xmm2
	subss xmm1, xmm0
	movss [ebp-0x54], xmm1
	movss xmm0, dword [ebp-0x21c]
	addss xmm0, xmm5
	movss [ebp-0x50], xmm0
	movss xmm0, dword [ebp-0x174]
	subss xmm0, xmm6
	movss [ebp-0x4c], xmm0
	subss xmm5, [ebp-0x21c]
	movss [ebp-0x48], xmm5
	addss xmm3, [ebp-0x178]
	movaps xmm0, xmm2
	subss xmm0, xmm3
	movss [ebp-0x44], xmm0
	movaps xmm0, xmm4
	addss xmm0, xmm7
	movss [ebp-0x40], xmm0
	addss xmm6, [ebp-0x174]
	movss [ebp-0x3c], xmm6
	subss xmm7, xmm4
	movss [ebp-0x38], xmm7
	movss xmm5, dword [ebp-0x178]
	addss xmm5, [ebp-0x170]
	subss xmm2, xmm5
	movss [ebp-0x34], xmm2
	mov edx, [ebp-0x1cc]
	lea eax, [edx+edx*2]
	lea eax, [ebp+eax*4-0x54]
	movss xmm0, dword [ebp-0x1d4]
	mulss xmm0, [eax]
	mov ecx, [ebp-0x1a4]
	movss [ecx], xmm0
	movss xmm0, dword [ebp-0x1d4]
	mulss xmm0, [eax+0x4]
	mov edx, [ebp-0x1a0]
	movss [edx], xmm0
	movss xmm0, dword [ebp-0x1d4]
	mulss xmm0, [eax+0x8]
	mov eax, [ebp-0x19c]
	movss [eax], xmm0
	add esp, 0x22c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DObjTraceline_40:
	add ecx, 0x2
	mov [ebp-0x1b4], ecx
	sub dl, 0x1
	jnz DObjTraceline_190
	movzx eax, byte [ecx-0x1]
	movzx ebx, word [ebp+eax*2-0x156]
	movzx eax, bx
	mov edx, [ebp+0x14]
	movzx eax, byte [edx+eax]
	mov [ebp-0x1bc], eax
	jmp DObjTraceline_190
DObjTraceline_90:
	pxor xmm0, xmm0
	ucomiss xmm1, xmm0
	jbe DObjTraceline_200
	movaps xmm0, xmm2
	subss xmm0, xmm1
	movaps xmm1, xmm0
	movaps xmm0, xmm5
	mulss xmm0, xmm1
	ucomiss xmm2, xmm0
	jbe DObjTraceline_210
	movaps xmm5, xmm2
	divss xmm5, xmm1
	ucomiss xmm4, xmm5
	jae DObjTraceline_60
DObjTraceline_210:
	mov byte [ebp-0x1d5], 0x0
	jmp DObjTraceline_200
DObjTraceline_50:
	mov ecx, [ebp-0x1e8]
	movzx eax, byte [ecx+0x5]
	cmp edi, eax
	jae DObjTraceline_220
	mov edx, [ebp-0x1a8]
	mov ecx, [ebp-0x1c4]
	movzx eax, byte [edx+ecx]
	cmp al, 0xff
	jz DObjTraceline_230
	movzx eax, al
	movzx ebx, word [ebp+eax*2-0x154]
	movzx eax, bx
DObjTraceline_240:
	mov ecx, [ebp+0x14]
	movzx eax, byte [ecx+eax]
	mov [ebp-0x1bc], eax
	jmp DObjTraceline_190
DObjTraceline_220:
	mov edx, edi
	sub edx, eax
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edx, [ebp-0x1c8]
	sub edx, eax
	movzx ebx, word [ebp+edx*2-0x154]
	movzx eax, bx
	jmp DObjTraceline_240
DObjTraceline_230:
	xor ebx, ebx
	xor eax, eax
	jmp DObjTraceline_240
DObjTraceline_70:
	mulss xmm0, [ebp-0x1ec]
	sqrtss xmm0, xmm0
	subss xmm4, xmm0
	mov ecx, [ebp+0x18]
	ucomiss xmm4, [ecx]
	jb DObjTraceline_250
DObjTraceline_270:
	mov edx, [ebp-0x1bc]
	mov [ebp-0x1c0], edx
	jmp DObjTraceline_60
DObjTraceline_80:
	mov edx, [ebp+0x18]
	movss xmm5, dword [edx]
	jmp DObjTraceline_260
DObjTraceline_150:
	cmp byte [ebp-0x1d5], 0x0
	jz DObjTraceline_60
	movss xmm0, dword [ebp-0x164]
	mov eax, [ebp+0xc]
	mulss xmm0, [eax]
	movss xmm1, dword [ebp-0x168]
	mov edx, [ebp-0x198]
	mulss xmm1, [edx]
	addss xmm0, xmm1
	ucomiss xmm0, xmm7
	jae DObjTraceline_60
	mov ecx, [ebp+0x18]
	mov dword [ecx], 0x0
	movzx eax, word [ebp-0x1c4]
	mov [ecx+0x14], ax
	mov edx, [ebp-0x1b8]
	movzx eax, word [edx+edi*2]
	mov [ecx+0x16], ax
	mov [ecx+0x18], bx
	mov ecx, [ebp-0x1a4]
	mov [esp+0x4], ecx
	mov eax, [ebp+0xc]
	mov [esp], eax
	call Vec2NormalizeTo
	fstp st0
	jmp DObjTraceline_20
DObjTraceline_160:
	mov ecx, [ebp+0x18]
	ucomiss xmm4, [ecx]
	jae DObjTraceline_270
	mov eax, ecx
	jmp DObjTraceline_280
	nop


;DObjUnarchive(DObj_s*)
DObjUnarchive:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x18c
	lea eax, [ebp-0x78]
	mov dword [esp+0x8], 0x60
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	movzx eax, word [ebp-0x30]
	movzx ebx, ax
	test ax, ax
	jz DObjUnarchive_10
	mov edi, [ebp-0x38]
	mov esi, [ebp-0x34]
	xor ecx, ecx
DObjUnarchive_20:
	lea edx, [ebp+ecx*8-0x178]
	movzx eax, word [ebp+ecx*2-0x78]
	mov [edx+0x4], ax
	mov eax, [edi+ecx*4]
	mov [edx], eax
	mov eax, 0x1
	shl eax, cl
	test eax, esi
	setnz byte [edx+0x6]
	add ecx, 0x1
	cmp ecx, ebx
	jb DObjUnarchive_20
DObjUnarchive_10:
	lea eax, [ebx+ebx*4]
	mov [esp+0x4], eax
	mov eax, [ebp-0x38]
	mov [esp], eax
	call MT_Free
	movzx eax, word [ebp-0x2e]
	mov [esp+0x10], eax
	mov ecx, [ebp+0x8]
	mov [esp+0xc], ecx
	mov eax, [ebp-0x2c]
	mov [esp+0x8], eax
	movzx eax, word [ebp-0x30]
	mov [esp+0x4], eax
	lea eax, [ebp-0x178]
	mov [esp], eax
	call DObjCreate
	mov edx, [ebp+0x8]
	add edx, 0x50
	mov eax, [ebp-0x28]
	mov ecx, [ebp+0x8]
	mov [ecx+0x50], eax
	mov eax, [ebp-0x24]
	mov [edx+0x4], eax
	mov eax, [ebp-0x20]
	mov [edx+0x8], eax
	mov eax, [ebp-0x1c]
	mov [edx+0xc], eax
	add esp, 0x18c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;DObjGetContents(DObj_s const*)
DObjGetContents:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	cmp byte [edi+0x9], 0x0
	jnz DObjGetContents_10
	xor esi, esi
	mov eax, esi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DObjGetContents_10:
	xor ebx, ebx
	xor esi, esi
DObjGetContents_20:
	mov eax, [edi+0x60]
	mov eax, [eax+ebx*4]
	mov [esp], eax
	call XModelGetContents
	or esi, eax
	add ebx, 0x1
	movzx eax, byte [edi+0x9]
	cmp ebx, eax
	jl DObjGetContents_20
	mov eax, esi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;DObjHasContents(DObj_s*, int)
DObjHasContents:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov edi, [esi+0x60]
	cmp byte [esi+0x9], 0x0
	jnz DObjHasContents_10
DObjHasContents_40:
	xor eax, eax
DObjHasContents_50:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DObjHasContents_10:
	xor ebx, ebx
DObjHasContents_30:
	mov eax, [edi+ebx*4]
	mov [esp], eax
	call XModelGetContents
	test [ebp+0xc], eax
	jnz DObjHasContents_20
	add ebx, 0x1
	movzx eax, byte [esi+0x9]
	cmp eax, ebx
	jg DObjHasContents_30
	jmp DObjHasContents_40
DObjHasContents_20:
	mov eax, 0x1
	jmp DObjHasContents_50
	nop


;DObjGetBoneIndex(DObj_s const*, unsigned int, unsigned char*)
DObjGetBoneIndex:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0x10]
	movzx eax, byte [ecx]
	movzx ecx, al
	add al, 0x1
	jz DObjGetBoneIndex_10
	movzx eax, byte [edx+0x9]
	mov [ebp-0x20], eax
	mov eax, [edx+0x60]
	mov [ebp-0x1c], eax
	movzx eax, byte [edx+0xa]
	cmp ecx, eax
	jae DObjGetBoneIndex_20
	mov eax, [ebp-0x20]
	test eax, eax
	jle DObjGetBoneIndex_30
	mov eax, [ebp-0x1c]
	mov edx, [eax]
	movzx eax, byte [edx+0x4]
	cmp ecx, eax
	jb DObjGetBoneIndex_40
	xor ebx, ebx
DObjGetBoneIndex_60:
	sub ecx, eax
	add ebx, 0x1
	cmp [ebp-0x20], ebx
	jz DObjGetBoneIndex_50
	mov eax, [ebp-0x1c]
	mov edx, [eax+ebx*4]
	movzx eax, byte [edx+0x4]
	cmp ecx, eax
	jae DObjGetBoneIndex_60
DObjGetBoneIndex_40:
	mov eax, [edx+0x8]
	movzx eax, word [eax+ecx*2]
	cmp [ebp+0xc], eax
	jz DObjGetBoneIndex_70
DObjGetBoneIndex_50:
	xor esi, esi
	xor edi, edi
	jmp DObjGetBoneIndex_80
DObjGetBoneIndex_90:
	movzx eax, byte [ebx+0x4]
	add edi, eax
	add esi, 0x1
	cmp [ebp-0x20], esi
	jle DObjGetBoneIndex_30
DObjGetBoneIndex_80:
	mov ecx, [ebp-0x1c]
	mov ebx, [ecx+esi*4]
	mov eax, [ebp+0x10]
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov ecx, [ebp+0xc]
	mov [esp+0x4], ecx
	mov [esp], ebx
	call XModelGetBoneIndex
	test eax, eax
	jz DObjGetBoneIndex_90
DObjGetBoneIndex_70:
	mov eax, 0x1
	jmp DObjGetBoneIndex_100
DObjGetBoneIndex_20:
	mov eax, [ebp-0x20]
	test eax, eax
	jg DObjGetBoneIndex_50
DObjGetBoneIndex_30:
	mov eax, [ebp+0x10]
	mov byte [eax], 0xff
DObjGetBoneIndex_10:
	xor eax, eax
DObjGetBoneIndex_100:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;DObjGeomTraceline(DObj_s*, float*, float*, int, DObjTrace_s*)
DObjGeomTraceline:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov eax, [ebp+0x18]
	mov word [eax+0x14], 0x0
	mov word [eax+0x16], 0x0
	mov word [eax+0x18], 0x0
	mov edx, [ebp+0x18]
	mov eax, [edx]
	mov [ebp-0x44], eax
	mov dword [ebp-0x34], 0x0
	xor eax, eax
	mov [ebp-0x40], eax
	mov [ebp-0x3c], eax
	mov [ebp-0x38], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call DObjGetRotTransArray
	mov esi, eax
	test eax, eax
	jz DObjGeomTraceline_10
	mov eax, [ebp+0x8]
	mov eax, [eax+0x60]
	mov [ebp-0x54], eax
	mov edx, [ebp+0x8]
	movzx eax, byte [edx+0x9]
	movzx ecx, al
	mov [ebp-0x4c], ecx
	test al, al
	jnz DObjGeomTraceline_20
DObjGeomTraceline_10:
	mov eax, [ebp-0x44]
	mov edx, [ebp+0x18]
	mov [edx], eax
	mov eax, [ebp-0x34]
	mov [edx+0x4], eax
	mov edx, [ebp+0x18]
	add edx, 0x8
	mov eax, [ebp-0x40]
	mov ecx, [ebp+0x18]
	mov [ecx+0x8], eax
	mov eax, [ebp-0x3c]
	mov [edx+0x4], eax
	mov eax, [ebp-0x38]
	mov [edx+0x8], eax
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DObjGeomTraceline_20:
	mov dword [ebp-0x50], 0x0
	xor ebx, ebx
DObjGeomTraceline_40:
	mov eax, [ebp-0x54]
	mov edi, [eax+ebx*4]
	mov edx, [ebp+0x14]
	mov [esp+0x1c], edx
	mov ecx, [ebp+0x10]
	mov [esp+0x18], ecx
	mov eax, [ebp+0xc]
	mov [esp+0x14], eax
	mov [esp+0x10], esi
	lea edx, [ebp-0x44]
	mov [esp+0xc], edx
	mov ecx, [ebp-0x50]
	mov [esp+0x8], ecx
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call XModelTraceLineAnimated
	mov edx, eax
	test eax, eax
	js DObjGeomTraceline_30
	mov ecx, [ebp+0x18]
	mov [ecx+0x14], bx
	mov eax, [edi+0x8]
	movzx eax, word [eax+edx*2]
	mov [ecx+0x16], ax
DObjGeomTraceline_30:
	add ebx, 0x1
	movzx eax, byte [edi+0x4]
	add [ebp-0x50], eax
	shl eax, 0x5
	add esi, eax
	cmp [ebp-0x4c], ebx
	ja DObjGeomTraceline_40
	jmp DObjGeomTraceline_10


;DObjGetPhysPreset(DObj_s const*)
DObjGetPhysPreset:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x60]
	mov eax, [eax]
	mov eax, [eax+0xd4]
	pop ebp
	ret
	nop


;DObjIgnoreCollision(DObj_s const*, int)
DObjIgnoreCollision:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0xc]
	mov eax, 0x1
	shl eax, cl
	mov edx, [ebp+0x8]
	test [edx+0xc], eax
	setnz al
	movzx eax, al
	pop ebp
	ret
	nop


;DObjSetHidePartBits(DObj_s*, unsigned int const*)
DObjSetHidePartBits:
	push ebp
	mov ebp, esp
	push ebx
	mov ebx, [ebp+0x8]
	mov edx, [ebp+0xc]
	lea ecx, [ebx+0x50]
	mov eax, [edx]
	mov [ebx+0x50], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov eax, [edx+0xc]
	mov [ecx+0xc], eax
	pop ebx
	pop ebp
	ret
	nop


;DObjGetHierarchyBits(DObj_s const*, int, int*)
DObjGetHierarchyBits:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xbc
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov eax, [ebp+0x10]
	mov dword [eax], 0x0
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
	mov dword [eax+0xc], 0x0
	movzx edi, byte [ebx+0x9]
	mov edx, edi
	movzx edx, dl
	mov [ebp-0xb4], edx
	movzx eax, word [ebx+0x4]
	mov [esp], eax
	call SL_ConvertToString
	mov [ebp-0xa8], eax
	add eax, 0x10
	mov [ebp-0xb0], eax
	mov ebx, [ebx+0x60]
	mov [ebp-0xa4], ebx
	mov ecx, [ebp-0xb4]
	lea ecx, [ebx+ecx*4]
	mov [ebp-0xa0], ecx
	mov eax, [ebp-0xb4]
	test eax, eax
	jg DObjGetHierarchyBits_10
	mov eax, edi
	test al, al
	jz DObjGetHierarchyBits_20
	xor edi, edi
DObjGetHierarchyBits_100:
	mov dword [ebp-0x9c], 0x0
DObjGetHierarchyBits_120:
	mov eax, [ebp+0x10]
	mov dword [eax], 0x80000000
	mov edx, [edi+0xc]
	mov [ebp-0xac], edx
DObjGetHierarchyBits_140:
	mov ebx, esi
	mov ecx, [ebp-0x9c]
	sub ebx, [ebp+ecx*4-0x98]
DObjGetHierarchyBits_60:
	mov ecx, esi
	and ecx, 0x1f
	mov edx, 0x80000000
	shr edx, cl
	mov eax, esi
	sar eax, 0x5
	shl eax, 0x2
	mov ecx, [ebp+0x10]
	or [ecx+eax], edx
	mov ecx, [ebp-0xa8]
	test [ecx+eax], edx
	jnz DObjGetHierarchyBits_30
	movzx eax, byte [edi+0x5]
	sub ebx, eax
	jns DObjGetHierarchyBits_40
	mov ecx, [ebp-0xa0]
	mov edx, [ebp-0x9c]
	movzx eax, byte [ecx+edx]
	movzx esi, al
	add al, 0x1
	jz DObjGetHierarchyBits_20
DObjGetHierarchyBits_90:
	lea eax, [ebp+edx*4-0x98]
	mov ecx, 0xfffffffc
DObjGetHierarchyBits_50:
	sub edx, 0x1
	mov ebx, esi
	sub ebx, [ecx+eax]
	sub eax, 0x4
	test ebx, ebx
	js DObjGetHierarchyBits_50
	mov eax, [ebp-0xa4]
	mov edi, [eax+edx*4]
	mov ecx, [edi+0xc]
	mov [ebp-0xac], ecx
	mov [ebp-0x9c], edx
	jmp DObjGetHierarchyBits_60
DObjGetHierarchyBits_30:
	mov ecx, [ebp-0xb0]
	movzx eax, byte [ecx]
	sub eax, 0x1
	cmp esi, eax
	jz DObjGetHierarchyBits_70
	mov edx, ecx
DObjGetHierarchyBits_80:
	add edx, 0x2
	movzx eax, byte [edx]
	sub eax, 0x1
	cmp esi, eax
	jnz DObjGetHierarchyBits_80
	movzx eax, byte [edx+0x1]
	lea esi, [eax-0x1]
	mov edx, [ebp-0x9c]
	jmp DObjGetHierarchyBits_90
DObjGetHierarchyBits_70:
	mov edx, ecx
	movzx eax, byte [edx+0x1]
	lea esi, [eax-0x1]
	mov edx, [ebp-0x9c]
	jmp DObjGetHierarchyBits_90
DObjGetHierarchyBits_10:
	mov dword [ebp-0x98], 0x0
	mov edi, [ebx]
	movzx edx, byte [edi+0x4]
	cmp esi, edx
	jl DObjGetHierarchyBits_100
	mov dword [ebp-0x9c], 0x0
	jmp DObjGetHierarchyBits_110
DObjGetHierarchyBits_130:
	mov [ebp+ecx*4-0x98], edx
	mov eax, [ebp-0xa4]
	mov edi, [eax+ecx*4]
	movzx eax, byte [edi+0x4]
	add edx, eax
	cmp esi, edx
	jl DObjGetHierarchyBits_120
DObjGetHierarchyBits_110:
	add dword [ebp-0x9c], 0x1
	mov ecx, [ebp-0x9c]
	cmp [ebp-0xb4], ecx
	jnz DObjGetHierarchyBits_130
DObjGetHierarchyBits_20:
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DObjGetHierarchyBits_40:
	mov edx, [ebp-0xac]
	movzx eax, byte [ebx+edx]
	sub esi, eax
	jmp DObjGetHierarchyBits_140
	nop


;DObjPhysicsGetBounds(DObj_s const*, float*, float*)
DObjPhysicsGetBounds:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x60]
	mov eax, [eax]
	mov [ebp+0x8], eax
	pop ebp
	jmp XModelGetBounds


;DObjGetBasePoseMatrix(DObj_s const*, unsigned char, DObjAnimMat*)
DObjGetBasePoseMatrix:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x10cc
	movzx ebx, byte [ebp+0xc]
	mov edx, [ebp+0x8]
	mov eax, [edx+0x60]
	mov eax, [eax]
	cmp [eax+0x4], bl
	jbe DObjGetBasePoseMatrix_10
	mov [esp], eax
	call XModelGetBasePose
	movzx edx, bl
	shl edx, 0x5
	mov ecx, [edx+eax]
	mov ebx, [ebp+0x10]
	mov [ebx], ecx
	mov ecx, [edx+eax+0x4]
	mov [ebx+0x4], ecx
	mov ecx, [edx+eax+0x8]
	mov [ebx+0x8], ecx
	mov ecx, [edx+eax+0xc]
	mov [ebx+0xc], ecx
	mov ecx, [edx+eax+0x10]
	mov [ebx+0x10], ecx
	mov ecx, [edx+eax+0x14]
	mov [ebx+0x14], ecx
	mov ecx, [edx+eax+0x18]
	mov [ebx+0x18], ecx
	mov eax, [edx+eax+0x1c]
	mov [ebx+0x1c], eax
	add esp, 0x10cc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DObjGetBasePoseMatrix_10:
	mov eax, edx
	movzx ebx, bl
	mov [ebp-0x10c4], ebx
	mov dword [ebp-0x28], 0x0
	mov dword [ebp-0x24], 0x0
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	movzx esi, byte [edx+0x9]
	mov edx, esi
	movzx ebx, dl
	movzx eax, word [eax+0x4]
	mov [esp], eax
	call SL_ConvertToString
	mov [ebp-0x10b8], eax
	add eax, 0x10
	mov [ebp-0x10bc], eax
	mov eax, [ebp+0x8]
	mov eax, [eax+0x60]
	mov [ebp-0x10b4], eax
	lea edx, [eax+ebx*4]
	mov [ebp-0x10b0], edx
	test ebx, ebx
	jg DObjGetBasePoseMatrix_20
	mov ecx, esi
	test cl, cl
	jz DObjGetBasePoseMatrix_30
	xor edi, edi
DObjGetBasePoseMatrix_110:
	mov dword [ebp-0x10ac], 0x0
DObjGetBasePoseMatrix_130:
	mov dword [ebp-0x28], 0x80000000
	mov ebx, [edi+0xc]
	mov [ebp-0x10c0], ebx
	mov esi, [ebp-0x10c4]
DObjGetBasePoseMatrix_150:
	mov ebx, esi
	mov eax, [ebp-0x10ac]
	sub ebx, [ebp+eax*4-0xa8]
	mov ecx, esi
	and ecx, 0x1f
	mov edx, 0x80000000
	shr edx, cl
	mov eax, esi
	sar eax, 0x5
	shl eax, 0x2
	or [ebp+eax-0x28], edx
	mov ecx, [ebp-0x10b8]
	test [ecx+eax], edx
	jnz DObjGetBasePoseMatrix_40
DObjGetBasePoseMatrix_70:
	movzx eax, byte [edi+0x5]
	sub ebx, eax
	mov eax, ebx
	jns DObjGetBasePoseMatrix_50
	mov edx, [ebp-0x10b0]
	mov ecx, [ebp-0x10ac]
	movzx eax, byte [edx+ecx]
	movzx esi, al
	add al, 0x1
	jz DObjGetBasePoseMatrix_30
	mov edx, ecx
DObjGetBasePoseMatrix_100:
	lea eax, [ebp+edx*4-0xa8]
	mov ecx, 0xfffffffc
DObjGetBasePoseMatrix_60:
	sub edx, 0x1
	mov ebx, esi
	sub ebx, [ecx+eax]
	sub eax, 0x4
	test ebx, ebx
	js DObjGetBasePoseMatrix_60
	mov eax, [ebp-0x10b4]
	mov edi, [eax+edx*4]
	mov ecx, [edi+0xc]
	mov [ebp-0x10c0], ecx
	mov [ebp-0x10ac], edx
	mov ecx, esi
	and ecx, 0x1f
	mov edx, 0x80000000
	shr edx, cl
	mov eax, esi
	sar eax, 0x5
	shl eax, 0x2
	or [ebp+eax-0x28], edx
	mov ecx, [ebp-0x10b8]
	test [ecx+eax], edx
	jz DObjGetBasePoseMatrix_70
DObjGetBasePoseMatrix_40:
	mov ebx, [ebp-0x10bc]
	movzx eax, byte [ebx]
	sub eax, 0x1
	cmp esi, eax
	jz DObjGetBasePoseMatrix_80
	mov edx, ebx
DObjGetBasePoseMatrix_90:
	add edx, 0x2
	movzx eax, byte [edx]
	sub eax, 0x1
	cmp esi, eax
	jnz DObjGetBasePoseMatrix_90
	movzx eax, byte [edx+0x1]
	lea esi, [eax-0x1]
	mov edx, [ebp-0x10ac]
	jmp DObjGetBasePoseMatrix_100
DObjGetBasePoseMatrix_20:
	mov dword [ebp-0xa8], 0x0
	mov edi, [eax]
	movzx edx, byte [edi+0x4]
	cmp [ebp-0x10c4], edx
	jl DObjGetBasePoseMatrix_110
	mov dword [ebp-0x10ac], 0x0
	jmp DObjGetBasePoseMatrix_120
DObjGetBasePoseMatrix_140:
	mov eax, [ebp-0x10ac]
	mov [ebp+eax*4-0xa8], edx
	mov ecx, [ebp-0x10b4]
	mov edi, [ecx+eax*4]
	movzx eax, byte [edi+0x4]
	add edx, eax
	cmp [ebp-0x10c4], edx
	jl DObjGetBasePoseMatrix_130
DObjGetBasePoseMatrix_120:
	add dword [ebp-0x10ac], 0x1
	cmp ebx, [ebp-0x10ac]
	jnz DObjGetBasePoseMatrix_140
DObjGetBasePoseMatrix_30:
	lea ebx, [ebp-0x28]
	mov [esp+0x8], ebx
	lea eax, [ebp-0x10a8]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call DObjCalcBaseSkel
	mov eax, [ebp-0x10c4]
	shl eax, 0x5
	lea edx, [ebp-0x18]
	add eax, edx
	lea edx, [eax-0x1090]
	mov eax, [eax-0x1090]
	mov ecx, [ebp+0x10]
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
	add esp, 0x10cc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DObjGetBasePoseMatrix_80:
	mov edx, ebx
	movzx eax, byte [edx+0x1]
	lea esi, [eax-0x1]
	mov edx, [ebp-0x10ac]
	jmp DObjGetBasePoseMatrix_100
DObjGetBasePoseMatrix_50:
	mov ebx, [ebp-0x10c0]
	movzx eax, byte [eax+ebx]
	sub esi, eax
	jmp DObjGetBasePoseMatrix_150
	add [eax], al


;DObjGetModelBoneIndex(DObj_s const*, char const*, unsigned int, unsigned char*)
DObjGetModelBoneIndex:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0x14]
	movzx eax, byte [ecx]
	movzx ecx, al
	add al, 0x1
	jz DObjGetModelBoneIndex_10
	movzx eax, byte [edx+0x9]
	mov [ebp-0x20], eax
	mov eax, [edx+0x60]
	mov [ebp-0x1c], eax
	movzx eax, byte [edx+0xa]
	cmp ecx, eax
	jae DObjGetModelBoneIndex_20
	mov eax, [ebp-0x20]
	test eax, eax
	jle DObjGetModelBoneIndex_30
	mov eax, [ebp-0x1c]
	mov ebx, [eax]
	movzx eax, byte [ebx+0x4]
	cmp ecx, eax
	jb DObjGetModelBoneIndex_40
	xor edx, edx
DObjGetModelBoneIndex_60:
	sub ecx, eax
	add edx, 0x1
	cmp [ebp-0x20], edx
	jz DObjGetModelBoneIndex_50
	mov eax, [ebp-0x1c]
	mov ebx, [eax+edx*4]
	movzx eax, byte [ebx+0x4]
	cmp ecx, eax
	jae DObjGetModelBoneIndex_60
DObjGetModelBoneIndex_40:
	mov eax, [ebx+0x8]
	movzx eax, word [eax+ecx*2]
	cmp [ebp+0x10], eax
	jz DObjGetModelBoneIndex_70
DObjGetModelBoneIndex_50:
	xor esi, esi
	xor edi, edi
	jmp DObjGetModelBoneIndex_80
DObjGetModelBoneIndex_90:
	movzx eax, byte [ebx+0x4]
	add edi, eax
	add esi, 0x1
	cmp [ebp-0x20], esi
	jz DObjGetModelBoneIndex_30
DObjGetModelBoneIndex_80:
	mov eax, [ebp-0x1c]
	mov ebx, [eax+esi*4]
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call Q_stricmp
	test eax, eax
	jnz DObjGetModelBoneIndex_90
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov ecx, [ebp+0x10]
	mov [esp+0x4], ecx
	mov [esp], ebx
	call XModelGetBoneIndex
	test eax, eax
	jz DObjGetModelBoneIndex_90
	mov eax, 0x1
	jmp DObjGetModelBoneIndex_100
DObjGetModelBoneIndex_20:
	mov eax, [ebp-0x20]
	test eax, eax
	jg DObjGetModelBoneIndex_50
DObjGetModelBoneIndex_30:
	mov eax, [ebp+0x14]
	mov byte [eax], 0xff
DObjGetModelBoneIndex_10:
	xor eax, eax
DObjGetModelBoneIndex_100:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DObjGetModelBoneIndex_70:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call Q_stricmp
	test eax, eax
	jnz DObjGetModelBoneIndex_50
	mov eax, 0x1
	jmp DObjGetModelBoneIndex_100
	nop


;DObjSetLocalBoneIndex(DObj_s*, int*, int, float const*, float const*)
DObjSetLocalBoneIndex:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0x10]
	mov [esp+0x8], ebx
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], esi
	call DObjSetRotTransIndex
	test eax, eax
	jz DObjSetLocalBoneIndex_10
	mov [esp+0xc], ebx
	mov eax, [ebp+0x18]
	mov [esp+0x8], eax
	mov eax, [ebp+0x14]
	mov [esp+0x4], eax
	mov [esp], esi
	call DObjSetLocalTagInternal
	mov eax, 0x1
DObjSetLocalBoneIndex_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;DObjTracelinePartBits(DObj_s*, int*)
DObjTracelinePartBits:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov eax, [ebp+0x8]
	mov [ebp-0x24], eax
	mov edx, [ebp+0xc]
	mov [ebp-0x28], edx
	mov dword [edx], 0x0
	mov dword [edx+0x4], 0x0
	mov dword [edx+0x8], 0x0
	mov dword [edx+0xc], 0x0
	mov ecx, [eax+0x60]
	mov [ebp-0x14], ecx
	mov edx, [ebp-0x24]
	movzx eax, byte [edx+0x9]
	movzx ecx, al
	mov [ebp-0x10], ecx
	test al, al
	jz DObjTracelinePartBits_10
	xor edi, edi
	mov dword [ebp-0x18], 0x0
	mov eax, [ebp-0x18]
	jmp DObjTracelinePartBits_20
DObjTracelinePartBits_40:
	add edi, [ebp-0x1c]
DObjTracelinePartBits_50:
	add dword [ebp-0x18], 0x1
	mov eax, [ebp-0x18]
	cmp [ebp-0x10], eax
	jbe DObjTracelinePartBits_30
DObjTracelinePartBits_20:
	mov edx, [ebp-0x14]
	mov eax, [edx+eax*4]
	mov [ebp-0x20], eax
	movzx edx, byte [eax+0x4]
	movzx ecx, dl
	mov [ebp-0x1c], ecx
	mov eax, 0x1
	movzx ecx, byte [ebp-0x18]
	shl eax, cl
	mov ecx, [ebp-0x24]
	test [ecx+0xc], eax
	jnz DObjTracelinePartBits_40
	test dl, dl
	jz DObjTracelinePartBits_50
	xor esi, esi
	xor ebx, ebx
DObjTracelinePartBits_70:
	mov eax, ebx
	mov edx, [ebp-0x20]
	add eax, [edx+0xa4]
	mov eax, [eax+0x24]
	test eax, eax
	jz DObjTracelinePartBits_60
	mov eax, edi
	shr eax, 0x5
	mov ecx, edi
	and ecx, 0x1f
	mov edx, 0x80000000
	shr edx, cl
	mov ecx, [ebp-0x24]
	test [ecx+eax*4+0x50], edx
	jnz DObjTracelinePartBits_60
	mov ecx, [ebp-0x28]
	or [ecx+eax*4], edx
DObjTracelinePartBits_60:
	add esi, 0x1
	add edi, 0x1
	add ebx, 0x28
	cmp [ebp-0x1c], esi
	ja DObjTracelinePartBits_70
	add dword [ebp-0x18], 0x1
	mov eax, [ebp-0x18]
	cmp [ebp-0x10], eax
	ja DObjTracelinePartBits_20
DObjTracelinePartBits_30:
	mov ecx, [ebp-0x24]
	mov edx, [ebp-0x28]
	mov [ebp+0xc], edx
	mov [ebp+0x8], ecx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp DObjCompleteHierarchyBits
DObjTracelinePartBits_10:
	mov ecx, edx
	mov edx, [ebp-0x28]
	mov [ebp+0xc], edx
	mov [ebp+0x8], ecx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp DObjCompleteHierarchyBits
	nop


;DObjSkelIsBoneUpToDate(DObj_s*, int)
DObjSkelIsBoneUpToDate:
	push ebp
	mov ebp, esp
	push ebx
	mov ecx, [ebp+0xc]
	mov ebx, ecx
	sar ebx, 0x5
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	mov edx, [ebp+0x8]
	test [edx+ebx*4+0x34], eax
	setnz al
	movzx eax, al
	pop ebx
	pop ebp
	ret


;DObjGeomTracelinePartBits(DObj_s*, int, int*)
DObjGeomTracelinePartBits:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov eax, [ebp+0x8]
	mov [ebp-0x28], eax
	mov edx, [ebp+0xc]
	mov [ebp-0x2c], edx
	mov edi, [ebp+0x10]
	mov dword [edi], 0x0
	mov dword [edi+0x4], 0x0
	mov dword [edi+0x8], 0x0
	mov dword [edi+0xc], 0x0
	mov eax, [eax+0x60]
	mov [ebp-0x24], eax
	mov edx, [ebp-0x28]
	movzx eax, byte [edx+0x9]
	movzx edx, al
	mov [ebp-0x1c], edx
	test al, al
	jnz DObjGeomTracelinePartBits_10
	mov [ebp+0xc], edi
	mov eax, [ebp-0x28]
	mov [ebp+0x8], eax
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp DObjCompleteHierarchyBits
DObjGeomTracelinePartBits_10:
	mov dword [ebp-0x20], 0x0
	xor esi, esi
DObjGeomTracelinePartBits_20:
	mov eax, [ebp-0x24]
	mov ebx, [eax+esi*4]
	mov [esp+0x10], edi
	mov edx, [ebp-0x2c]
	mov [esp+0xc], edx
	mov eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov edx, [ebp-0x28]
	mov [esp], edx
	call XModelTraceLineAnimatedPartBits
	add esi, 0x1
	movzx eax, byte [ebx+0x4]
	add [ebp-0x20], eax
	cmp [ebp-0x1c], esi
	ja DObjGeomTracelinePartBits_20
	mov [ebp+0xc], edi
	mov eax, [ebp-0x28]
	mov [ebp+0x8], eax
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp DObjCompleteHierarchyBits
	nop


;DObjGetModelParentBoneName(DObj_s const*, int)
DObjGetModelParentBoneName:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8
	mov eax, [ebp+0x8]
	mov esi, [eax+0x60]
	movzx ecx, byte [eax+0x9]
	lea eax, [ecx*4]
	add eax, [ebp+0xc]
	movzx edi, byte [eax+esi]
	test ecx, ecx
	jle DObjGetModelParentBoneName_10
	mov eax, [esi]
	mov edx, [eax+0x8]
	mov [ebp-0x10], edx
	movzx edx, byte [eax+0x4]
	cmp edi, edx
	jge DObjGetModelParentBoneName_20
	mov eax, edi
DObjGetModelParentBoneName_40:
	mov edx, [ebp-0x10]
	movzx eax, word [edx+eax*2]
	mov [ebp+0x8], eax
	add esp, 0x8
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp SL_ConvertToString
DObjGetModelParentBoneName_20:
	mov dword [ebp-0x14], 0x0
	xor ebx, ebx
	jmp DObjGetModelParentBoneName_30
DObjGetModelParentBoneName_50:
	mov eax, [esi+ebx*4]
	mov edx, [eax+0x8]
	mov [ebp-0x10], edx
	movzx edx, byte [eax+0x4]
	mov eax, edi
	sub eax, [ebp-0x14]
	cmp eax, edx
	jl DObjGetModelParentBoneName_40
DObjGetModelParentBoneName_30:
	add [ebp-0x14], edx
	add ebx, 0x1
	cmp ecx, ebx
	jnz DObjGetModelParentBoneName_50
DObjGetModelParentBoneName_10:
	xor eax, eax
	add esp, 0x8
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;DObjPhysicsSetCollisionFromXModel(DObj_s const*, PhysWorld, int)
DObjPhysicsSetCollisionFromXModel:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x60]
	mov eax, [eax]
	mov [ebp+0x8], eax
	pop ebp
	jmp Phys_ObjSetCollisionFromXModel


;DObjBad(DObj_s const*)
DObjBad:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edx, [ebp+0x8]
	movzx eax, byte [edx+0x9]
	mov edx, eax
	sub edx, 0x1
	js DObjBad_10
	lea ebx, [edx*4]
	xor esi, esi
	mov edi, eax
DObjBad_30:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x60]
	mov eax, [eax+ebx]
	mov [esp], eax
	call XModelBad
	test eax, eax
	jnz DObjBad_20
	add esi, 0x1
	sub ebx, 0x4
	cmp esi, edi
	jnz DObjBad_30
DObjBad_10:
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DObjBad_20:
	mov eax, 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;DObjFree(DObj_s*)
DObjFree:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov edx, [ebx+0x60]
	test edx, edx
	jz DObjFree_10
	movzx eax, byte [ebx+0x9]
	lea eax, [eax+eax*4]
	mov [esp+0x4], eax
	mov [esp], edx
	call MT_Free
	mov dword [ebx+0x60], 0x0
DObjFree_10:
	mov edx, [ebx]
	test edx, edx
	jz DObjFree_20
	mov dword [ebx], 0x0
DObjFree_20:
	movzx eax, word [ebx+0x4]
	test ax, ax
	jz DObjFree_30
	movzx edx, ax
	cmp edx, [g_empty]
	jz DObjFree_40
	movzx eax, byte [ebx+0x8]
	mov [esp+0x4], eax
	mov [esp], edx
	call SL_RemoveRefToStringOfSize
DObjFree_40:
	mov byte [ebx+0x8], 0x0
	mov word [ebx+0x4], 0x0
DObjFree_30:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;DObjInit()
DObjInit:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	lea eax, [ebp-0x1c]
	mov dword [ebp-0x1c], 0x0
	mov dword [ebp-0x18], 0x0
	mov dword [ebp-0x14], 0x0
	mov dword [ebp-0x10], 0x0
	mov dword [ebp-0xc], 0x0
	mov dword [esp+0xc], 0xc
	mov dword [esp+0x8], 0x11
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call SL_GetStringOfSize
	mov [g_empty], eax
	leave
	ret
	nop


;Zero initialized global or static variables of dobj:
SECTION .bss
g_empty: resb 0x80


;Initialized global or static variables of dobj:
SECTION .data


;Initialized constant data of dobj:
SECTION .rdata


;All cstrings:
SECTION .rdata
_cstring_model_s:		db "Model ",27h,"%s",27h,":",0ah,0
_cstring_bone_d_s:		db "Bone %d: ",27h,"%s",27h,0ah,0
_cstring_dobj_for_xmodel_:		db 15h,"dobj for xmodel ",27h,"%s",27h," has more than %d bones (see console for details)",0
_cstring_warning_attempti:		db "WARNING: Attempting to meld model, but root part ",27h,"%s",27h," of model ",27h,"%s",27h," not found in model ",27h,"%s",27h," or any of its descendants",0ah,0
_cstring_warning_part_s_n:		db "WARNING: Part ",27h,"%s",27h," not found in model ",27h,"%s",27h," or any of its descendants",0ah,0
_cstring_models:		db 0ah,"Models:",0ah,0
_cstring_bones:		db 0ah,"Bones:",0ah,0
_cstring_part_duplicates:		db 0ah,"Part duplicates:",0ah,0
_cstring_d_s__d_s:		db "%d (",27h,"%s",27h,") -> %d (",27h,"%s",27h,")",0ah,0
_cstring_no_part_duplicat:		db 0ah,"No part duplicates.",0ah,0
_cstring_:		db 0ah,0
_cstring_d_s:		db "%d: ",27h,"%s",27h,0ah,0
_cstring_no_dobj:		db "No Dobj",0ah,0



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1
_float__1_00000000:		dd 0xbf800000	; -1

align   16,db 0
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; DQWORD
