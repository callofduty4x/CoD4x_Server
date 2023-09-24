;Imports of dobj:
	extern _Z8MT_Allocii
	extern memcpy
	extern _Z17XAnimResetAnimMapPK6DObj_sj
	extern _Z15XModelGetRadiusPK6XModel
	extern SL_GetStringOfSize
	extern _Z14XModelNumBonesPK6XModel
	extern _Z13XModelGetNamePK6XModel
	extern _Z10Com_PrintfiPKcz
	extern _Z18SL_ConvertToStringj
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z18XModelGetBoneIndexPK6XModeljjPh
	extern _Z16Com_PrintWarningiPKcz
	extern _Z26SL_RemoveRefToStringOfSizejj
	extern _Z15XModelBoneNamesP6XModel
	extern _Z20DObjGetRotTransArrayPK6DObj_s
	extern _Z15Vec2NormalizeToPKfPf
	extern _Z7MT_FreePvi
	extern _Z17XModelGetContentsPK6XModel
	extern _Z23XModelTraceLineAnimatedPK6DObj_sjiP7trace_tPK11DObjAnimMatPfS7_i
	extern _Z15XModelGetBoundsPK6XModelPfS2_
	extern _Z17XModelGetBasePosePK6XModel
	extern _Z16DObjCalcBaseSkelPK6DObj_sP11DObjAnimMatPi
	extern _Z9I_stricmpPKcS0_
	extern _Z20DObjSetRotTransIndexPK6DObj_sPKii
	extern _Z23DObjSetLocalTagInternalPK6DObj_sPKfS3_i
	extern _Z25DObjCompleteHierarchyBitsPK6DObj_sPi
	extern _Z31XModelTraceLineAnimatedPartBitsPK6DObj_sjiiPi
	extern _Z30Phys_ObjSetCollisionFromXModelPK6XModel9PhysWorldi
	extern _Z9XModelBadPK6XModel

;Exports of dobj:
	global g_empty
	global _Z38LocalInvMatrixTransformVectorQuatTransPKfPK11DObjAnimMatPf
	global _Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj
	global _Z11DObjArchiveP6DObj_s
	global _Z11DObjGetNamePK6DObj_s
	global _Z11DObjGetTreePK6DObj_s
	global _Z12DObjDumpInfoPK6DObj_s
	global _Z12DObjShutdownv
	global _Z13DObjGetBoundsPK6DObj_sPfS2_
	global _Z13DObjGetRadiusPK6DObj_s
	global _Z13DObjSkelClearPK6DObj_s
	global _Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s
	global _Z13DObjUnarchiveP6DObj_s
	global _Z15DObjGetContentsPK6DObj_s
	global _Z15DObjHasContentsP6DObj_si
	global _Z16DObjGetBoneIndexPK6DObj_sjPh
	global _Z17DObjGeomTracelineP6DObj_sPfS1_iP11DObjTrace_s
	global _Z17DObjGetPhysPresetPK6DObj_s
	global _Z19DObjIgnoreCollisionPK6DObj_si
	global _Z19DObjSetHidePartBitsP6DObj_sPKj
	global _Z20DObjGetHierarchyBitsPK6DObj_siPi
	global _Z20DObjPhysicsGetBoundsPK6DObj_sPfS2_
	global _Z21DObjGetBasePoseMatrixPK6DObj_shP11DObjAnimMat
	global _Z21DObjGetModelBoneIndexPK6DObj_sPKcjPh
	global _Z21DObjSetLocalBoneIndexP6DObj_sPiiPKfS3_
	global _Z21DObjTracelinePartBitsP6DObj_sPi
	global _Z22DObjSkelIsBoneUpToDateP6DObj_si
	global _Z25DObjGeomTracelinePartBitsP6DObj_siPi
	global _Z26DObjGetModelParentBoneNamePK6DObj_si
	global _Z33DObjPhysicsSetCollisionFromXModelPK6DObj_s9PhysWorldi
	global _Z7DObjBadPK6DObj_s
	global _Z8DObjFreeP6DObj_s
	global _Z8DObjInitv


SECTION .text


;LocalInvMatrixTransformVectorQuatTrans(float const*, DObjAnimMat const*, float*)
_Z38LocalInvMatrixTransformVectorQuatTransPKfPK11DObjAnimMatPf:
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
_Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj:
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
	jnz _Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_10
	mov dword [ebp-0x590], 0x0
	xor eax, eax
_Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_300:
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
	call _Z8MT_Allocii
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
	jnz _Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_20
	mov eax, [ebp+0x14]
	mov byte [eax+0x8], 0x11
	mov eax, [g_empty]
	mov edx, [ebp+0x14]
	mov [edx+0x4], ax
_Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_80:
	mov ecx, [ebp+0x14]
	movzx esi, byte [ecx+0x9]
	mov edi, [ecx+0x60]
	pxor xmm0, xmm0
	test esi, esi
	jg _Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_30
_Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_70:
	mov ebx, [ebp+0x14]
	movss [ebx+0x4c], xmm0
	mov eax, [ebp+0x10]
	mov [ebx], eax
	test eax, eax
	jz _Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_40
	mov edx, [ebp+0x10]
	movzx eax, word [edx+0x4]
	test ax, ax
	jnz _Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_50
_Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_40:
	add esp, 0x5fc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_50:
	movzx eax, ax
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z17XAnimResetAnimMapPK6DObj_sj
	add esp, 0x5fc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_30:
	xor ebx, ebx
	pxor xmm0, xmm0
_Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_60:
	mov eax, [edi+ebx*4]
	mov [esp], eax
	movss [ebp-0x5e8], xmm0
	call _Z15XModelGetRadiusPK6XModel
	fstp dword [ebp-0x5a8]
	movss xmm0, dword [ebp-0x5e8]
	addss xmm0, [ebp-0x5a8]
	add ebx, 0x1
	cmp esi, ebx
	jnz _Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_60
	jmp _Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_70
_Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_20:
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
	jmp _Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_80
_Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_10:
	mov ecx, [ebp+0x8]
	mov [ebp-0x598], ecx
	mov dword [ebp-0x5cc], 0x0
	mov dword [ebp-0x590], 0x0
	mov dword [ebp-0x5c8], 0x0
	mov dword [ebp-0x59c], 0xffffffff
	mov dword [ebp-0x5d4], 0xfffffffc
	mov ebx, ecx
_Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_250:
	mov ebx, [ebx]
	mov [ebp-0x5c4], ebx
	mov [esp], ebx
	call _Z14XModelNumBonesPK6XModel
	add eax, [ebp-0x5c8]
	mov [ebp-0x594], eax
	add eax, 0xffffff80
	jle _Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_90
	mov eax, [ebp+0x8]
	mov [ebp-0x5a0], eax
	mov dword [ebp-0x5ac], 0x0
	mov dword [ebp-0x5b0], 0x0
	mov edx, eax
	jmp _Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_100
_Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_120:
	add dword [ebp-0x5b0], 0x1
	add dword [ebp-0x5a0], 0x8
	mov ebx, [ebp-0x5b0]
	cmp [ebp+0xc], ebx
	jz _Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_110
_Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_140:
	mov edx, [ebp-0x5a0]
_Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_100:
	mov edi, [edx]
	mov [esp], edi
	call _Z13XModelGetNamePK6XModel
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_model_s
	mov dword [esp], 0x13
	call _Z10Com_PrintfiPKcz
	mov [esp], edi
	call _Z14XModelNumBonesPK6XModel
	mov esi, eax
	test eax, eax
	jle _Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_120
	xor ebx, ebx
_Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_130:
	mov eax, [edi+0x8]
	movzx eax, word [eax+ebx*2]
	mov [esp], eax
	call _Z18SL_ConvertToStringj
	mov [esp+0xc], eax
	mov ecx, [ebp-0x5ac]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_bone_d_s
	mov dword [esp], 0x13
	call _Z10Com_PrintfiPKcz
	add ebx, 0x1
	add dword [ebp-0x5ac], 0x1
	cmp esi, ebx
	jnz _Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_130
	add dword [ebp-0x5b0], 0x1
	add dword [ebp-0x5a0], 0x8
	mov ebx, [ebp-0x5b0]
	cmp [ebp+0xc], ebx
	jnz _Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_140
_Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_110:
	mov dword [esp+0xc], 0x80
	mov eax, [ebp-0x13c]
	mov eax, [eax]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_dobj_for_xmodel_
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_90:
	mov edx, [ebp-0x5c4]
	mov eax, [ebp-0x5d4]
	mov [eax+ebp-0x138], edx
	mov ecx, [ebp-0x59c]
	mov byte [ecx+ebp-0x38], 0xff
	mov ebx, [ebp-0x5c8]
	mov [eax+ebp-0xb8], ebx
	mov eax, [ebp-0x598]
	cmp byte [eax+0x6], 0x0
	jz _Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_150
	mov eax, 0x1
	movzx ecx, byte [ebp-0x5cc]
	shl eax, cl
	mov ebx, [ebp+0x14]
	or [ebx+0xc], eax
_Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_150:
	mov eax, [ebp-0x5cc]
	test eax, eax
	jz _Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_160
	mov edx, [ebp-0x598]
	movzx eax, word [edx+0x4]
	movzx edi, ax
	test ax, ax
	jnz _Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_170
_Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_260:
	mov ecx, [ebp-0x5c4]
	movzx ecx, byte [ecx+0x4]
	mov [ebp-0x5c0], ecx
	mov ebx, [ebp-0x5c4]
	mov ebx, [ebx+0x8]
	mov [ebp-0x5bc], ebx
	test ecx, ecx
	jle _Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_180
	mov dword [ebp-0x5b8], 0x0
	mov byte [ebp-0x5b1], 0x0
	mov ebx, [ebp-0x5b8]
_Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_230:
	mov eax, [ebp-0x5bc]
	movzx ebx, word [eax+ebx*2]
	mov [ebp-0x58c], ebx
	mov eax, [ebp-0x59c]
	test eax, eax
	js _Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_190
	lea edi, [ebp-0xbc]
	add edi, [ebp-0x5d4]
	lea ebx, [ebp-0x13c]
	add ebx, [ebp-0x5d4]
	xor esi, esi
_Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_210:
	lea eax, [ebp-0x19]
	mov [esp+0xc], eax
	mov eax, [edi]
	mov [esp+0x8], eax
	mov edx, [ebp-0x58c]
	mov [esp+0x4], edx
	mov eax, [ebx]
	mov [esp], eax
	call _Z18XModelGetBoneIndexPK6XModeljjPh
	test eax, eax
	jnz _Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_200
	add esi, 0x1
	sub edi, 0x4
	sub ebx, 0x4
	cmp [ebp-0x5cc], esi
	jnz _Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_210
_Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_190:
	add dword [ebp-0x5b8], 0x1
	mov eax, [ebp-0x5b8]
	cmp [ebp-0x5c0], eax
	jz _Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_220
	mov ebx, eax
	jmp _Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_230
_Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_220:
	cmp byte [ebp-0x5b1], 0x0
	jnz _Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_160
_Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_180:
	mov eax, [ebp-0x13c]
	mov ebx, [eax]
	mov edx, [ebp-0x5c4]
	mov esi, [edx]
	mov ecx, [ebp-0x5bc]
	movzx eax, word [ecx]
	mov [esp], eax
	call _Z18SL_ConvertToStringj
	mov [esp+0x10], ebx
	mov [esp+0xc], esi
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_attempti
	mov dword [esp], 0x13
	call _Z16Com_PrintWarningiPKcz
_Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_160:
	add dword [ebp-0x5cc], 0x1
	add dword [ebp-0x598], 0x8
	add dword [ebp-0x59c], 0x1
	add dword [ebp-0x5d4], 0x4
	mov ebx, [ebp-0x5cc]
	cmp [ebp+0xc], ebx
	jz _Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_240
	mov eax, [ebp-0x594]
	mov [ebp-0x5c8], eax
	mov ebx, [ebp-0x598]
	jmp _Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_250
_Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_200:
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
	jmp _Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_190
_Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_170:
	mov [esp], edi
	call _Z18SL_ConvertToStringj
	cmp byte [eax], 0x0
	jz _Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_260
	mov eax, [ebp-0x59c]
	test eax, eax
	js _Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_270
	lea esi, [ebp-0xbc]
	add esi, [ebp-0x5d4]
	lea ebx, [ebp-0x13c]
	add ebx, [ebp-0x5d4]
	mov dword [ebp-0x5a4], 0x0
	lea eax, [ebp-0x39]
	add eax, [ebp-0x5cc]
	mov [ebp-0x5d0], eax
	mov edx, eax
	jmp _Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_280
_Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_290:
	mov edx, [ebp-0x5d0]
_Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_280:
	mov [esp+0xc], edx
	mov eax, [esi]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov eax, [ebx]
	mov [esp], eax
	call _Z18XModelGetBoneIndexPK6XModeljjPh
	test eax, eax
	jnz _Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_160
	add dword [ebp-0x5a4], 0x1
	sub esi, 0x4
	sub ebx, 0x4
	mov ecx, [ebp-0x5a4]
	cmp [ebp-0x5cc], ecx
	jnz _Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_290
_Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_270:
	mov eax, [ebp-0x13c]
	mov ebx, [eax]
	mov [esp], edi
	call _Z18SL_ConvertToStringj
	mov [esp+0xc], ebx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_part_s_n
	mov dword [esp], 0x13
	call _Z16Com_PrintWarningiPKcz
	jmp _Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_160
_Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_240:
	movzx eax, byte [ebp-0x594]
	jmp _Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj_300


;DObjArchive(DObj_s*)
_Z11DObjArchiveP6DObj_s:
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
	jg _Z11DObjArchiveP6DObj_s_10
	mov edx, ecx
_Z11DObjArchiveP6DObj_s_130:
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
	jz _Z11DObjArchiveP6DObj_s_20
	xor ecx, ecx
	mov ebx, 0x1
	lea edx, [ebp-0x1f8]
_Z11DObjArchiveP6DObj_s_40:
	movzx eax, word [edx+0x4]
	mov [ebp+ecx*2-0x78], ax
	cmp byte [edx+0x6], 0x0
	jz _Z11DObjArchiveP6DObj_s_30
	mov eax, ebx
	shl eax, cl
	or [ebp-0x34], eax
_Z11DObjArchiveP6DObj_s_30:
	add ecx, 0x1
	add edx, 0x8
	movzx eax, word [ebp-0x30]
	cmp eax, ecx
	ja _Z11DObjArchiveP6DObj_s_40
	mov eax, [ebp+0x8]
_Z11DObjArchiveP6DObj_s_80:
	mov dword [eax+0x60], 0x0
	mov ebx, [eax]
	test ebx, ebx
	jz _Z11DObjArchiveP6DObj_s_50
	mov dword [eax], 0x0
_Z11DObjArchiveP6DObj_s_50:
	mov edx, [ebp+0x8]
	movzx eax, word [edx+0x4]
	test ax, ax
	jz _Z11DObjArchiveP6DObj_s_60
	movzx edx, ax
	cmp edx, [g_empty]
	jz _Z11DObjArchiveP6DObj_s_70
	mov ecx, [ebp+0x8]
	movzx eax, byte [ecx+0x8]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z26SL_RemoveRefToStringOfSizejj
_Z11DObjArchiveP6DObj_s_70:
	mov eax, [ebp+0x8]
	mov byte [eax+0x8], 0x0
	mov word [eax+0x4], 0x0
	mov edx, [ebp+0x8]
_Z11DObjArchiveP6DObj_s_60:
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
_Z11DObjArchiveP6DObj_s_20:
	mov eax, ecx
	jmp _Z11DObjArchiveP6DObj_s_80
_Z11DObjArchiveP6DObj_s_10:
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
_Z11DObjArchiveP6DObj_s_120:
	mov edx, [ebp-0x220]
	mov ecx, [ebp-0x214]
	mov eax, [edx+ecx]
	mov ecx, [ebp-0x20c]
	mov [edx+ebp-0xf8], ecx
	mov [esp], eax
	call _Z14XModelNumBonesPK6XModel
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
	jz _Z11DObjArchiveP6DObj_s_90
	mov eax, edi
	test edi, edi
	js _Z11DObjArchiveP6DObj_s_90
	movzx esi, dl
	mov edx, [ebp-0x220]
	cmp esi, [edx+ebp-0xfc]
	jge _Z11DObjArchiveP6DObj_s_100
	lea edx, [ebp+edi*4-0xf8]
	mov ecx, edi
	xor ebx, ebx
_Z11DObjArchiveP6DObj_s_110:
	sub ecx, 0x1
	cmp edi, ebx
	jz _Z11DObjArchiveP6DObj_s_90
	mov eax, [ebp-0x21c]
	sub eax, [ebp-0x218]
	mov eax, [eax+edx]
	add ebx, 0x1
	sub edx, 0x4
	cmp eax, esi
	jg _Z11DObjArchiveP6DObj_s_110
	mov eax, ecx
_Z11DObjArchiveP6DObj_s_100:
	mov ebx, esi
	sub ebx, [ebp+eax*4-0xf8]
	mov ecx, [ebp-0x214]
	mov eax, [ecx+eax*4]
	mov [esp], eax
	call _Z15XModelBoneNamesP6XModel
	movzx eax, word [eax+ebx*2]
	mov edx, [ebp-0x200]
	mov [edx], ax
_Z11DObjArchiveP6DObj_s_90:
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
	jg _Z11DObjArchiveP6DObj_s_120
	mov eax, [ecx+0x60]
	mov [ebp-0x214], eax
	mov edx, eax
	jmp _Z11DObjArchiveP6DObj_s_130
	nop


;DObjGetName(DObj_s const*)
_Z11DObjGetNamePK6DObj_s:
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
_Z11DObjGetTreePK6DObj_s:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	pop ebp
	ret


;DObjDumpInfo(DObj_s const*)
_Z12DObjDumpInfoPK6DObj_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov ecx, [ebp+0x8]
	test ecx, ecx
	jz _Z12DObjDumpInfoPK6DObj_s_10
	mov dword [esp+0x4], _cstring_models
	mov dword [esp], 0x13
	call _Z10Com_PrintfiPKcz
	mov eax, [ebp+0x8]
	movzx eax, byte [eax+0x9]
	mov [ebp-0x3c], eax
	mov edx, [ebp+0x8]
	mov edx, [edx+0x60]
	mov [ebp-0x38], edx
	test eax, eax
	jg _Z12DObjDumpInfoPK6DObj_s_20
_Z12DObjDumpInfoPK6DObj_s_240:
	mov dword [esp+0x4], _cstring_bones
	mov dword [esp], 0x13
	call _Z10Com_PrintfiPKcz
	mov edx, [ebp+0x8]
	movzx edx, byte [edx+0xa]
	mov [ebp-0x40], edx
	test edx, edx
	jle _Z12DObjDumpInfoPK6DObj_s_30
	xor esi, esi
_Z12DObjDumpInfoPK6DObj_s_70:
	mov eax, [ebp+0x8]
	movzx eax, byte [eax+0x9]
	mov [ebp-0x34], eax
	mov edx, [ebp+0x8]
	mov edx, [edx+0x60]
	mov [ebp-0x30], edx
	test eax, eax
	jle _Z12DObjDumpInfoPK6DObj_s_40
	mov eax, [edx]
	mov edi, [eax+0x8]
	movzx edx, byte [eax+0x4]
	cmp esi, edx
	jl _Z12DObjDumpInfoPK6DObj_s_50
	xor ebx, ebx
	xor ecx, ecx
_Z12DObjDumpInfoPK6DObj_s_60:
	add ebx, edx
	add ecx, 0x1
	cmp [ebp-0x34], ecx
	jz _Z12DObjDumpInfoPK6DObj_s_40
	mov edx, [ebp-0x30]
	mov eax, [edx+ecx*4]
	mov edi, [eax+0x8]
	movzx edx, byte [eax+0x4]
	mov eax, esi
	sub eax, ebx
	cmp eax, edx
	jge _Z12DObjDumpInfoPK6DObj_s_60
_Z12DObjDumpInfoPK6DObj_s_200:
	movzx eax, word [edi+eax*2]
	mov [esp], eax
	call _Z18SL_ConvertToStringj
_Z12DObjDumpInfoPK6DObj_s_190:
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_bone_d_s
	mov dword [esp], 0x13
	call _Z10Com_PrintfiPKcz
	add esi, 0x1
	cmp [ebp-0x40], esi
	jnz _Z12DObjDumpInfoPK6DObj_s_70
_Z12DObjDumpInfoPK6DObj_s_30:
	mov eax, [ebp+0x8]
	cmp word [eax+0x4], 0x0
	jz _Z12DObjDumpInfoPK6DObj_s_80
	mov dword [esp+0x4], _cstring_part_duplicates
	mov dword [esp], 0x13
	call _Z10Com_PrintfiPKcz
	mov edx, [ebp+0x8]
	movzx eax, word [edx+0x4]
	mov [esp], eax
	call _Z18SL_ConvertToStringj
	lea edx, [eax+0x10]
	cmp byte [eax+0x10], 0x0
	jz _Z12DObjDumpInfoPK6DObj_s_90
	mov [ebp-0x48], edx
	movzx eax, byte [edx+0x1]
	lea esi, [eax-0x1]
	mov eax, [ebp+0x8]
	movzx eax, byte [eax+0x9]
	mov [ebp-0x28], eax
	mov edx, [ebp+0x8]
	mov edi, [edx+0x60]
	test eax, eax
	jle _Z12DObjDumpInfoPK6DObj_s_100
_Z12DObjDumpInfoPK6DObj_s_160:
	mov eax, [edi]
	mov edx, [eax+0x8]
	mov [ebp-0x24], edx
	movzx edx, byte [eax+0x4]
	cmp esi, edx
	jl _Z12DObjDumpInfoPK6DObj_s_110
	xor ebx, ebx
	xor ecx, ecx
_Z12DObjDumpInfoPK6DObj_s_120:
	add ebx, edx
	add ecx, 0x1
	cmp [ebp-0x28], ecx
	jz _Z12DObjDumpInfoPK6DObj_s_100
	mov eax, [edi+ecx*4]
	mov edx, [eax+0x8]
	mov [ebp-0x24], edx
	movzx edx, byte [eax+0x4]
	mov eax, esi
	sub eax, ebx
	cmp eax, edx
	jge _Z12DObjDumpInfoPK6DObj_s_120
_Z12DObjDumpInfoPK6DObj_s_210:
	mov edx, [ebp-0x24]
	movzx eax, word [edx+eax*2]
	mov [esp], eax
	call _Z18SL_ConvertToStringj
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
	jle _Z12DObjDumpInfoPK6DObj_s_130
_Z12DObjDumpInfoPK6DObj_s_170:
	mov eax, [edi]
	mov edx, [eax+0x8]
	mov [ebp-0x1c], edx
	movzx edx, byte [eax+0x4]
	cmp esi, edx
	jl _Z12DObjDumpInfoPK6DObj_s_140
	xor ebx, ebx
	xor ecx, ecx
_Z12DObjDumpInfoPK6DObj_s_150:
	add ebx, edx
	add ecx, 0x1
	cmp [ebp-0x20], ecx
	jz _Z12DObjDumpInfoPK6DObj_s_130
	mov eax, [edi+ecx*4]
	mov edx, [eax+0x8]
	mov [ebp-0x1c], edx
	movzx edx, byte [eax+0x4]
	mov eax, esi
	sub eax, ebx
	cmp eax, edx
	jge _Z12DObjDumpInfoPK6DObj_s_150
_Z12DObjDumpInfoPK6DObj_s_220:
	mov edx, [ebp-0x1c]
	movzx eax, word [edx+eax*2]
	mov [esp], eax
	call _Z18SL_ConvertToStringj
_Z12DObjDumpInfoPK6DObj_s_180:
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
	call _Z10Com_PrintfiPKcz
	add dword [ebp-0x48], 0x2
	mov eax, [ebp-0x48]
	cmp byte [eax], 0x0
	jz _Z12DObjDumpInfoPK6DObj_s_90
	mov edx, [ebp-0x48]
	movzx eax, byte [edx+0x1]
	lea esi, [eax-0x1]
	mov eax, [ebp+0x8]
	movzx eax, byte [eax+0x9]
	mov [ebp-0x28], eax
	mov edx, [ebp+0x8]
	mov edi, [edx+0x60]
	test eax, eax
	jg _Z12DObjDumpInfoPK6DObj_s_160
_Z12DObjDumpInfoPK6DObj_s_100:
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
	jg _Z12DObjDumpInfoPK6DObj_s_170
_Z12DObjDumpInfoPK6DObj_s_130:
	xor eax, eax
	jmp _Z12DObjDumpInfoPK6DObj_s_180
_Z12DObjDumpInfoPK6DObj_s_80:
	mov dword [esp+0x4], _cstring_no_part_duplicat
	mov dword [esp], 0x13
	call _Z10Com_PrintfiPKcz
_Z12DObjDumpInfoPK6DObj_s_90:
	mov dword [esp+0x4], _cstring_
	mov dword [esp], 0x13
	call _Z10Com_PrintfiPKcz
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12DObjDumpInfoPK6DObj_s_40:
	xor eax, eax
	jmp _Z12DObjDumpInfoPK6DObj_s_190
_Z12DObjDumpInfoPK6DObj_s_50:
	mov eax, esi
	jmp _Z12DObjDumpInfoPK6DObj_s_200
_Z12DObjDumpInfoPK6DObj_s_110:
	mov eax, esi
	jmp _Z12DObjDumpInfoPK6DObj_s_210
_Z12DObjDumpInfoPK6DObj_s_140:
	mov eax, esi
	jmp _Z12DObjDumpInfoPK6DObj_s_220
_Z12DObjDumpInfoPK6DObj_s_20:
	xor edi, edi
	xor esi, esi
_Z12DObjDumpInfoPK6DObj_s_230:
	mov eax, [ebp-0x38]
	mov ebx, [eax+esi*4]
	mov eax, [ebx]
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_d_s
	mov dword [esp], 0x13
	call _Z10Com_PrintfiPKcz
	mov [esp], ebx
	call _Z14XModelNumBonesPK6XModel
	add edi, eax
	add esi, 0x1
	cmp [ebp-0x3c], esi
	jnz _Z12DObjDumpInfoPK6DObj_s_230
	jmp _Z12DObjDumpInfoPK6DObj_s_240
_Z12DObjDumpInfoPK6DObj_s_10:
	mov dword [esp+0x4], _cstring_no_dobj
	mov dword [esp], 0x13
	call _Z10Com_PrintfiPKcz
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;DObjShutdown()
_Z12DObjShutdownv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [g_empty]
	test eax, eax
	jnz _Z12DObjShutdownv_10
	leave
	ret
_Z12DObjShutdownv_10:
	mov dword [esp+0x4], 0x11
	mov [esp], eax
	call _Z26SL_RemoveRefToStringOfSizejj
	mov dword [g_empty], 0x0
	leave
	ret
	nop
	add [eax], al


;DObjGetBounds(DObj_s const*, float*, float*)
_Z13DObjGetBoundsPK6DObj_sPfS2_:
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
_Z13DObjGetRadiusPK6DObj_s:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	fld dword [eax+0x4c]
	pop ebp
	ret
	nop


;DObjSkelClear(DObj_s const*)
_Z13DObjSkelClearPK6DObj_s:
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
_Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s:
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
	jp _Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_10
	jnz _Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_10
_Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_20:
	add esp, 0x22c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_10:
	mov eax, [ebp+0x8]
	mov [esp], eax
	movss [ebp-0x218], xmm1
	call _Z20DObjGetRotTransArrayPK6DObj_s
	mov esi, eax
	test eax, eax
	movss xmm1, dword [ebp-0x218]
	jz _Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_20
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	movss [ebp-0x1ec], xmm0
	mov edx, [ebp+0x8]
	movzx eax, word [edx+0x4]
	mov [esp], eax
	call _Z18SL_ConvertToStringj
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
	jz _Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_20
	mov dword [ebp-0x1c0], 0x2
	mov dword [ebp-0x1c8], 0x0
	mov dword [ebp-0x1d0], 0xffffffff
	mov dword [ebp-0x1d4], 0x0
	mov dword [ebp-0x1e0], 0x0
	mov dword [ebp-0x1c4], 0x0
	mov dword [ebp-0x1cc], 0xffffffff
	mov ecx, [ebp-0x1c4]
_Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_180:
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
	jz _Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_30
	mov ecx, [ebp-0x1c8]
	lea ecx, [ebp+ecx*2-0x154]
	mov [ebp-0x15c], ecx
	xor edi, edi
	mov dword [ebp-0x160], 0x0
_Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_170:
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
	jz _Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_40
	sub dl, 0x1
	jz _Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_50
_Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_190:
	mov eax, [ebp-0x15c]
	mov [eax], bx
	mov eax, [ebp-0x1f0]
	test eax, eax
	jnz _Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_60
	mov ecx, [ebp-0x160]
	mov edx, [ebp-0x1e8]
	add ecx, [edx+0xa4]
	mov [ebp-0x1b0], ecx
	mov ecx, [ecx+0x24]
	test ecx, ecx
	jz _Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_60
	mov edx, [ebp-0x1c8]
	shr edx, 0x5
	mov ecx, [ebp-0x1c8]
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	mov ecx, [ebp+0x8]
	test [ecx+edx*4+0x50], eax
	jnz _Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_60
	mov eax, [ebp-0x1c0]
	cmp [ebp-0x1bc], eax
	jb _Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_60
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
	jae _Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_60
	mov edx, [ebp-0x1c0]
	cmp [ebp-0x1bc], edx
	jz _Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_70
_Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_250:
	lea ecx, [ebp-0x24]
	mov edx, esi
	mov eax, [ebp+0xc]
	call _Z38LocalInvMatrixTransformVectorQuatTransPKfPK11DObjAnimMatPf
	lea ecx, [ebp-0x30]
	mov edx, esi
	mov eax, [ebp+0x10]
	call _Z38LocalInvMatrixTransformVectorQuatTransPKfPK11DObjAnimMatPf
	mov eax, [ebp-0x1c0]
	cmp [ebp-0x1bc], eax
	jz _Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_80
	movss xmm5, dword [ebp-0x1dc]
_Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_260:
	mov ecx, [ebp-0x1b0]
	pxor xmm4, xmm4
	movaps xmm7, xmm4
	mov byte [ebp-0x1d6], 0x1
	mov byte [ebp-0x1d5], 0x1
	movss xmm3, dword [_float__1_00000000]
	movss xmm6, dword [_float_1_00000000]
_Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_140:
	xor edx, edx
_Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_110:
	movss xmm0, dword [ecx+edx*4]
	lea eax, [edx*4]
	movss xmm2, dword [ebp+eax-0x24]
	subss xmm2, xmm0
	mulss xmm2, xmm3
	movss xmm1, dword [ebp+eax-0x30]
	subss xmm1, xmm0
	mulss xmm1, xmm3
	ucomiss xmm2, xmm7
	jbe _Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_90
	ucomiss xmm1, xmm7
	ja _Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_60
	movaps xmm0, xmm2
	subss xmm0, xmm1
	movaps xmm1, xmm0
	mulss xmm0, xmm4
	ucomiss xmm2, xmm0
	jbe _Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_100
	movaps xmm4, xmm2
	divss xmm4, xmm1
	ucomiss xmm4, xmm5
	jae _Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_60
	mov [ebp-0x1d0], edx
	movss [ebp-0x1d4], xmm3
_Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_100:
	mov byte [ebp-0x1d6], 0x0
_Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_200:
	add edx, 0x1
	cmp edx, 0x3
	jnz _Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_110
	ucomiss xmm3, xmm6
	jp _Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_120
	jz _Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_130
_Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_120:
	add ecx, 0xc
	movaps xmm3, xmm6
	jmp _Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_140
_Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_130:
	cmp byte [ebp-0x1d6], 0x0
	jnz _Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_150
	mov edx, [ebp-0x1c0]
	cmp [ebp-0x1bc], edx
	jz _Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_160
	mov eax, [ebp+0x18]
_Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_280:
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
_Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_60:
	add edi, 0x1
	add esi, 0x20
	add dword [ebp-0x1c8], 0x1
	add dword [ebp-0x160], 0x28
	add dword [ebp-0x15c], 0x2
	cmp [ebp-0x1e4], edi
	ja _Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_170
_Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_30:
	add dword [ebp-0x1c4], 0x1
	mov ecx, [ebp-0x1c4]
	cmp [ebp-0x1f4], ecx
	ja _Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_180
	mov edx, [ebp-0x1e0]
	test edx, edx
	jz _Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_20
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
_Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_40:
	add ecx, 0x2
	mov [ebp-0x1b4], ecx
	sub dl, 0x1
	jnz _Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_190
	movzx eax, byte [ecx-0x1]
	movzx ebx, word [ebp+eax*2-0x156]
	movzx eax, bx
	mov edx, [ebp+0x14]
	movzx eax, byte [edx+eax]
	mov [ebp-0x1bc], eax
	jmp _Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_190
_Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_90:
	pxor xmm0, xmm0
	ucomiss xmm1, xmm0
	jbe _Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_200
	movaps xmm0, xmm2
	subss xmm0, xmm1
	movaps xmm1, xmm0
	movaps xmm0, xmm5
	mulss xmm0, xmm1
	ucomiss xmm2, xmm0
	jbe _Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_210
	movaps xmm5, xmm2
	divss xmm5, xmm1
	ucomiss xmm4, xmm5
	jae _Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_60
_Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_210:
	mov byte [ebp-0x1d5], 0x0
	jmp _Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_200
_Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_50:
	mov ecx, [ebp-0x1e8]
	movzx eax, byte [ecx+0x5]
	cmp edi, eax
	jae _Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_220
	mov edx, [ebp-0x1a8]
	mov ecx, [ebp-0x1c4]
	movzx eax, byte [edx+ecx]
	cmp al, 0xff
	jz _Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_230
	movzx eax, al
	movzx ebx, word [ebp+eax*2-0x154]
	movzx eax, bx
_Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_240:
	mov ecx, [ebp+0x14]
	movzx eax, byte [ecx+eax]
	mov [ebp-0x1bc], eax
	jmp _Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_190
_Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_220:
	mov edx, edi
	sub edx, eax
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	mov edx, [ebp-0x1c8]
	sub edx, eax
	movzx ebx, word [ebp+edx*2-0x154]
	movzx eax, bx
	jmp _Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_240
_Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_230:
	xor ebx, ebx
	xor eax, eax
	jmp _Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_240
_Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_70:
	mulss xmm0, [ebp-0x1ec]
	sqrtss xmm0, xmm0
	subss xmm4, xmm0
	mov ecx, [ebp+0x18]
	ucomiss xmm4, [ecx]
	jb _Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_250
_Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_270:
	mov edx, [ebp-0x1bc]
	mov [ebp-0x1c0], edx
	jmp _Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_60
_Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_80:
	mov edx, [ebp+0x18]
	movss xmm5, dword [edx]
	jmp _Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_260
_Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_150:
	cmp byte [ebp-0x1d5], 0x0
	jz _Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_60
	movss xmm0, dword [ebp-0x164]
	mov eax, [ebp+0xc]
	mulss xmm0, [eax]
	movss xmm1, dword [ebp-0x168]
	mov edx, [ebp-0x198]
	mulss xmm1, [edx]
	addss xmm0, xmm1
	ucomiss xmm0, xmm7
	jae _Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_60
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
	call _Z15Vec2NormalizeToPKfPf
	fstp st0
	jmp _Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_20
_Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_160:
	mov ecx, [ebp+0x18]
	ucomiss xmm4, [ecx]
	jae _Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_270
	mov eax, ecx
	jmp _Z13DObjTracelineP6DObj_sPfS1_PhP11DObjTrace_s_280
	nop


;DObjUnarchive(DObj_s*)
_Z13DObjUnarchiveP6DObj_s:
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
	jz _Z13DObjUnarchiveP6DObj_s_10
	mov edi, [ebp-0x38]
	mov esi, [ebp-0x34]
	xor ecx, ecx
_Z13DObjUnarchiveP6DObj_s_20:
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
	jb _Z13DObjUnarchiveP6DObj_s_20
_Z13DObjUnarchiveP6DObj_s_10:
	lea eax, [ebx+ebx*4]
	mov [esp+0x4], eax
	mov eax, [ebp-0x38]
	mov [esp], eax
	call _Z7MT_FreePvi
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
	call _Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj
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
_Z15DObjGetContentsPK6DObj_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	cmp byte [edi+0x9], 0x0
	jnz _Z15DObjGetContentsPK6DObj_s_10
	xor esi, esi
	mov eax, esi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15DObjGetContentsPK6DObj_s_10:
	xor ebx, ebx
	xor esi, esi
_Z15DObjGetContentsPK6DObj_s_20:
	mov eax, [edi+0x60]
	mov eax, [eax+ebx*4]
	mov [esp], eax
	call _Z17XModelGetContentsPK6XModel
	or esi, eax
	add ebx, 0x1
	movzx eax, byte [edi+0x9]
	cmp ebx, eax
	jl _Z15DObjGetContentsPK6DObj_s_20
	mov eax, esi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;DObjHasContents(DObj_s*, int)
_Z15DObjHasContentsP6DObj_si:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov edi, [esi+0x60]
	cmp byte [esi+0x9], 0x0
	jnz _Z15DObjHasContentsP6DObj_si_10
_Z15DObjHasContentsP6DObj_si_40:
	xor eax, eax
_Z15DObjHasContentsP6DObj_si_50:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15DObjHasContentsP6DObj_si_10:
	xor ebx, ebx
_Z15DObjHasContentsP6DObj_si_30:
	mov eax, [edi+ebx*4]
	mov [esp], eax
	call _Z17XModelGetContentsPK6XModel
	test [ebp+0xc], eax
	jnz _Z15DObjHasContentsP6DObj_si_20
	add ebx, 0x1
	movzx eax, byte [esi+0x9]
	cmp eax, ebx
	jg _Z15DObjHasContentsP6DObj_si_30
	jmp _Z15DObjHasContentsP6DObj_si_40
_Z15DObjHasContentsP6DObj_si_20:
	mov eax, 0x1
	jmp _Z15DObjHasContentsP6DObj_si_50
	nop


;DObjGetBoneIndex(DObj_s const*, unsigned int, unsigned char*)
_Z16DObjGetBoneIndexPK6DObj_sjPh:
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
	jz _Z16DObjGetBoneIndexPK6DObj_sjPh_10
	movzx eax, byte [edx+0x9]
	mov [ebp-0x20], eax
	mov eax, [edx+0x60]
	mov [ebp-0x1c], eax
	movzx eax, byte [edx+0xa]
	cmp ecx, eax
	jae _Z16DObjGetBoneIndexPK6DObj_sjPh_20
	mov eax, [ebp-0x20]
	test eax, eax
	jle _Z16DObjGetBoneIndexPK6DObj_sjPh_30
	mov eax, [ebp-0x1c]
	mov edx, [eax]
	movzx eax, byte [edx+0x4]
	cmp ecx, eax
	jb _Z16DObjGetBoneIndexPK6DObj_sjPh_40
	xor ebx, ebx
_Z16DObjGetBoneIndexPK6DObj_sjPh_60:
	sub ecx, eax
	add ebx, 0x1
	cmp [ebp-0x20], ebx
	jz _Z16DObjGetBoneIndexPK6DObj_sjPh_50
	mov eax, [ebp-0x1c]
	mov edx, [eax+ebx*4]
	movzx eax, byte [edx+0x4]
	cmp ecx, eax
	jae _Z16DObjGetBoneIndexPK6DObj_sjPh_60
_Z16DObjGetBoneIndexPK6DObj_sjPh_40:
	mov eax, [edx+0x8]
	movzx eax, word [eax+ecx*2]
	cmp [ebp+0xc], eax
	jz _Z16DObjGetBoneIndexPK6DObj_sjPh_70
_Z16DObjGetBoneIndexPK6DObj_sjPh_50:
	xor esi, esi
	xor edi, edi
	jmp _Z16DObjGetBoneIndexPK6DObj_sjPh_80
_Z16DObjGetBoneIndexPK6DObj_sjPh_90:
	movzx eax, byte [ebx+0x4]
	add edi, eax
	add esi, 0x1
	cmp [ebp-0x20], esi
	jle _Z16DObjGetBoneIndexPK6DObj_sjPh_30
_Z16DObjGetBoneIndexPK6DObj_sjPh_80:
	mov ecx, [ebp-0x1c]
	mov ebx, [ecx+esi*4]
	mov eax, [ebp+0x10]
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov ecx, [ebp+0xc]
	mov [esp+0x4], ecx
	mov [esp], ebx
	call _Z18XModelGetBoneIndexPK6XModeljjPh
	test eax, eax
	jz _Z16DObjGetBoneIndexPK6DObj_sjPh_90
_Z16DObjGetBoneIndexPK6DObj_sjPh_70:
	mov eax, 0x1
	jmp _Z16DObjGetBoneIndexPK6DObj_sjPh_100
_Z16DObjGetBoneIndexPK6DObj_sjPh_20:
	mov eax, [ebp-0x20]
	test eax, eax
	jg _Z16DObjGetBoneIndexPK6DObj_sjPh_50
_Z16DObjGetBoneIndexPK6DObj_sjPh_30:
	mov eax, [ebp+0x10]
	mov byte [eax], 0xff
_Z16DObjGetBoneIndexPK6DObj_sjPh_10:
	xor eax, eax
_Z16DObjGetBoneIndexPK6DObj_sjPh_100:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;DObjGeomTraceline(DObj_s*, float*, float*, int, DObjTrace_s*)
_Z17DObjGeomTracelineP6DObj_sPfS1_iP11DObjTrace_s:
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
	call _Z20DObjGetRotTransArrayPK6DObj_s
	mov esi, eax
	test eax, eax
	jz _Z17DObjGeomTracelineP6DObj_sPfS1_iP11DObjTrace_s_10
	mov eax, [ebp+0x8]
	mov eax, [eax+0x60]
	mov [ebp-0x54], eax
	mov edx, [ebp+0x8]
	movzx eax, byte [edx+0x9]
	movzx ecx, al
	mov [ebp-0x4c], ecx
	test al, al
	jnz _Z17DObjGeomTracelineP6DObj_sPfS1_iP11DObjTrace_s_20
_Z17DObjGeomTracelineP6DObj_sPfS1_iP11DObjTrace_s_10:
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
_Z17DObjGeomTracelineP6DObj_sPfS1_iP11DObjTrace_s_20:
	mov dword [ebp-0x50], 0x0
	xor ebx, ebx
_Z17DObjGeomTracelineP6DObj_sPfS1_iP11DObjTrace_s_40:
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
	call _Z23XModelTraceLineAnimatedPK6DObj_sjiP7trace_tPK11DObjAnimMatPfS7_i
	mov edx, eax
	test eax, eax
	js _Z17DObjGeomTracelineP6DObj_sPfS1_iP11DObjTrace_s_30
	mov ecx, [ebp+0x18]
	mov [ecx+0x14], bx
	mov eax, [edi+0x8]
	movzx eax, word [eax+edx*2]
	mov [ecx+0x16], ax
_Z17DObjGeomTracelineP6DObj_sPfS1_iP11DObjTrace_s_30:
	add ebx, 0x1
	movzx eax, byte [edi+0x4]
	add [ebp-0x50], eax
	shl eax, 0x5
	add esi, eax
	cmp [ebp-0x4c], ebx
	ja _Z17DObjGeomTracelineP6DObj_sPfS1_iP11DObjTrace_s_40
	jmp _Z17DObjGeomTracelineP6DObj_sPfS1_iP11DObjTrace_s_10


;DObjGetPhysPreset(DObj_s const*)
_Z17DObjGetPhysPresetPK6DObj_s:
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
_Z19DObjIgnoreCollisionPK6DObj_si:
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
_Z19DObjSetHidePartBitsP6DObj_sPKj:
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
_Z20DObjGetHierarchyBitsPK6DObj_siPi:
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
	call _Z18SL_ConvertToStringj
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
	jg _Z20DObjGetHierarchyBitsPK6DObj_siPi_10
	mov eax, edi
	test al, al
	jz _Z20DObjGetHierarchyBitsPK6DObj_siPi_20
	xor edi, edi
_Z20DObjGetHierarchyBitsPK6DObj_siPi_100:
	mov dword [ebp-0x9c], 0x0
_Z20DObjGetHierarchyBitsPK6DObj_siPi_120:
	mov eax, [ebp+0x10]
	mov dword [eax], 0x80000000
	mov edx, [edi+0xc]
	mov [ebp-0xac], edx
_Z20DObjGetHierarchyBitsPK6DObj_siPi_140:
	mov ebx, esi
	mov ecx, [ebp-0x9c]
	sub ebx, [ebp+ecx*4-0x98]
_Z20DObjGetHierarchyBitsPK6DObj_siPi_60:
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
	jnz _Z20DObjGetHierarchyBitsPK6DObj_siPi_30
	movzx eax, byte [edi+0x5]
	sub ebx, eax
	jns _Z20DObjGetHierarchyBitsPK6DObj_siPi_40
	mov ecx, [ebp-0xa0]
	mov edx, [ebp-0x9c]
	movzx eax, byte [ecx+edx]
	movzx esi, al
	add al, 0x1
	jz _Z20DObjGetHierarchyBitsPK6DObj_siPi_20
_Z20DObjGetHierarchyBitsPK6DObj_siPi_90:
	lea eax, [ebp+edx*4-0x98]
	mov ecx, 0xfffffffc
_Z20DObjGetHierarchyBitsPK6DObj_siPi_50:
	sub edx, 0x1
	mov ebx, esi
	sub ebx, [ecx+eax]
	sub eax, 0x4
	test ebx, ebx
	js _Z20DObjGetHierarchyBitsPK6DObj_siPi_50
	mov eax, [ebp-0xa4]
	mov edi, [eax+edx*4]
	mov ecx, [edi+0xc]
	mov [ebp-0xac], ecx
	mov [ebp-0x9c], edx
	jmp _Z20DObjGetHierarchyBitsPK6DObj_siPi_60
_Z20DObjGetHierarchyBitsPK6DObj_siPi_30:
	mov ecx, [ebp-0xb0]
	movzx eax, byte [ecx]
	sub eax, 0x1
	cmp esi, eax
	jz _Z20DObjGetHierarchyBitsPK6DObj_siPi_70
	mov edx, ecx
_Z20DObjGetHierarchyBitsPK6DObj_siPi_80:
	add edx, 0x2
	movzx eax, byte [edx]
	sub eax, 0x1
	cmp esi, eax
	jnz _Z20DObjGetHierarchyBitsPK6DObj_siPi_80
	movzx eax, byte [edx+0x1]
	lea esi, [eax-0x1]
	mov edx, [ebp-0x9c]
	jmp _Z20DObjGetHierarchyBitsPK6DObj_siPi_90
_Z20DObjGetHierarchyBitsPK6DObj_siPi_70:
	mov edx, ecx
	movzx eax, byte [edx+0x1]
	lea esi, [eax-0x1]
	mov edx, [ebp-0x9c]
	jmp _Z20DObjGetHierarchyBitsPK6DObj_siPi_90
_Z20DObjGetHierarchyBitsPK6DObj_siPi_10:
	mov dword [ebp-0x98], 0x0
	mov edi, [ebx]
	movzx edx, byte [edi+0x4]
	cmp esi, edx
	jl _Z20DObjGetHierarchyBitsPK6DObj_siPi_100
	mov dword [ebp-0x9c], 0x0
	jmp _Z20DObjGetHierarchyBitsPK6DObj_siPi_110
_Z20DObjGetHierarchyBitsPK6DObj_siPi_130:
	mov [ebp+ecx*4-0x98], edx
	mov eax, [ebp-0xa4]
	mov edi, [eax+ecx*4]
	movzx eax, byte [edi+0x4]
	add edx, eax
	cmp esi, edx
	jl _Z20DObjGetHierarchyBitsPK6DObj_siPi_120
_Z20DObjGetHierarchyBitsPK6DObj_siPi_110:
	add dword [ebp-0x9c], 0x1
	mov ecx, [ebp-0x9c]
	cmp [ebp-0xb4], ecx
	jnz _Z20DObjGetHierarchyBitsPK6DObj_siPi_130
_Z20DObjGetHierarchyBitsPK6DObj_siPi_20:
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20DObjGetHierarchyBitsPK6DObj_siPi_40:
	mov edx, [ebp-0xac]
	movzx eax, byte [ebx+edx]
	sub esi, eax
	jmp _Z20DObjGetHierarchyBitsPK6DObj_siPi_140
	nop


;DObjPhysicsGetBounds(DObj_s const*, float*, float*)
_Z20DObjPhysicsGetBoundsPK6DObj_sPfS2_:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x60]
	mov eax, [eax]
	mov [ebp+0x8], eax
	pop ebp
	jmp _Z15XModelGetBoundsPK6XModelPfS2_


;DObjGetBasePoseMatrix(DObj_s const*, unsigned char, DObjAnimMat*)
_Z21DObjGetBasePoseMatrixPK6DObj_shP11DObjAnimMat:
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
	jbe _Z21DObjGetBasePoseMatrixPK6DObj_shP11DObjAnimMat_10
	mov [esp], eax
	call _Z17XModelGetBasePosePK6XModel
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
_Z21DObjGetBasePoseMatrixPK6DObj_shP11DObjAnimMat_10:
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
	call _Z18SL_ConvertToStringj
	mov [ebp-0x10b8], eax
	add eax, 0x10
	mov [ebp-0x10bc], eax
	mov eax, [ebp+0x8]
	mov eax, [eax+0x60]
	mov [ebp-0x10b4], eax
	lea edx, [eax+ebx*4]
	mov [ebp-0x10b0], edx
	test ebx, ebx
	jg _Z21DObjGetBasePoseMatrixPK6DObj_shP11DObjAnimMat_20
	mov ecx, esi
	test cl, cl
	jz _Z21DObjGetBasePoseMatrixPK6DObj_shP11DObjAnimMat_30
	xor edi, edi
_Z21DObjGetBasePoseMatrixPK6DObj_shP11DObjAnimMat_110:
	mov dword [ebp-0x10ac], 0x0
_Z21DObjGetBasePoseMatrixPK6DObj_shP11DObjAnimMat_130:
	mov dword [ebp-0x28], 0x80000000
	mov ebx, [edi+0xc]
	mov [ebp-0x10c0], ebx
	mov esi, [ebp-0x10c4]
_Z21DObjGetBasePoseMatrixPK6DObj_shP11DObjAnimMat_150:
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
	jnz _Z21DObjGetBasePoseMatrixPK6DObj_shP11DObjAnimMat_40
_Z21DObjGetBasePoseMatrixPK6DObj_shP11DObjAnimMat_70:
	movzx eax, byte [edi+0x5]
	sub ebx, eax
	mov eax, ebx
	jns _Z21DObjGetBasePoseMatrixPK6DObj_shP11DObjAnimMat_50
	mov edx, [ebp-0x10b0]
	mov ecx, [ebp-0x10ac]
	movzx eax, byte [edx+ecx]
	movzx esi, al
	add al, 0x1
	jz _Z21DObjGetBasePoseMatrixPK6DObj_shP11DObjAnimMat_30
	mov edx, ecx
_Z21DObjGetBasePoseMatrixPK6DObj_shP11DObjAnimMat_100:
	lea eax, [ebp+edx*4-0xa8]
	mov ecx, 0xfffffffc
_Z21DObjGetBasePoseMatrixPK6DObj_shP11DObjAnimMat_60:
	sub edx, 0x1
	mov ebx, esi
	sub ebx, [ecx+eax]
	sub eax, 0x4
	test ebx, ebx
	js _Z21DObjGetBasePoseMatrixPK6DObj_shP11DObjAnimMat_60
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
	jz _Z21DObjGetBasePoseMatrixPK6DObj_shP11DObjAnimMat_70
_Z21DObjGetBasePoseMatrixPK6DObj_shP11DObjAnimMat_40:
	mov ebx, [ebp-0x10bc]
	movzx eax, byte [ebx]
	sub eax, 0x1
	cmp esi, eax
	jz _Z21DObjGetBasePoseMatrixPK6DObj_shP11DObjAnimMat_80
	mov edx, ebx
_Z21DObjGetBasePoseMatrixPK6DObj_shP11DObjAnimMat_90:
	add edx, 0x2
	movzx eax, byte [edx]
	sub eax, 0x1
	cmp esi, eax
	jnz _Z21DObjGetBasePoseMatrixPK6DObj_shP11DObjAnimMat_90
	movzx eax, byte [edx+0x1]
	lea esi, [eax-0x1]
	mov edx, [ebp-0x10ac]
	jmp _Z21DObjGetBasePoseMatrixPK6DObj_shP11DObjAnimMat_100
_Z21DObjGetBasePoseMatrixPK6DObj_shP11DObjAnimMat_20:
	mov dword [ebp-0xa8], 0x0
	mov edi, [eax]
	movzx edx, byte [edi+0x4]
	cmp [ebp-0x10c4], edx
	jl _Z21DObjGetBasePoseMatrixPK6DObj_shP11DObjAnimMat_110
	mov dword [ebp-0x10ac], 0x0
	jmp _Z21DObjGetBasePoseMatrixPK6DObj_shP11DObjAnimMat_120
_Z21DObjGetBasePoseMatrixPK6DObj_shP11DObjAnimMat_140:
	mov eax, [ebp-0x10ac]
	mov [ebp+eax*4-0xa8], edx
	mov ecx, [ebp-0x10b4]
	mov edi, [ecx+eax*4]
	movzx eax, byte [edi+0x4]
	add edx, eax
	cmp [ebp-0x10c4], edx
	jl _Z21DObjGetBasePoseMatrixPK6DObj_shP11DObjAnimMat_130
_Z21DObjGetBasePoseMatrixPK6DObj_shP11DObjAnimMat_120:
	add dword [ebp-0x10ac], 0x1
	cmp ebx, [ebp-0x10ac]
	jnz _Z21DObjGetBasePoseMatrixPK6DObj_shP11DObjAnimMat_140
_Z21DObjGetBasePoseMatrixPK6DObj_shP11DObjAnimMat_30:
	lea ebx, [ebp-0x28]
	mov [esp+0x8], ebx
	lea eax, [ebp-0x10a8]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z16DObjCalcBaseSkelPK6DObj_sP11DObjAnimMatPi
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
_Z21DObjGetBasePoseMatrixPK6DObj_shP11DObjAnimMat_80:
	mov edx, ebx
	movzx eax, byte [edx+0x1]
	lea esi, [eax-0x1]
	mov edx, [ebp-0x10ac]
	jmp _Z21DObjGetBasePoseMatrixPK6DObj_shP11DObjAnimMat_100
_Z21DObjGetBasePoseMatrixPK6DObj_shP11DObjAnimMat_50:
	mov ebx, [ebp-0x10c0]
	movzx eax, byte [eax+ebx]
	sub esi, eax
	jmp _Z21DObjGetBasePoseMatrixPK6DObj_shP11DObjAnimMat_150
	add [eax], al


;DObjGetModelBoneIndex(DObj_s const*, char const*, unsigned int, unsigned char*)
_Z21DObjGetModelBoneIndexPK6DObj_sPKcjPh:
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
	jz _Z21DObjGetModelBoneIndexPK6DObj_sPKcjPh_10
	movzx eax, byte [edx+0x9]
	mov [ebp-0x20], eax
	mov eax, [edx+0x60]
	mov [ebp-0x1c], eax
	movzx eax, byte [edx+0xa]
	cmp ecx, eax
	jae _Z21DObjGetModelBoneIndexPK6DObj_sPKcjPh_20
	mov eax, [ebp-0x20]
	test eax, eax
	jle _Z21DObjGetModelBoneIndexPK6DObj_sPKcjPh_30
	mov eax, [ebp-0x1c]
	mov ebx, [eax]
	movzx eax, byte [ebx+0x4]
	cmp ecx, eax
	jb _Z21DObjGetModelBoneIndexPK6DObj_sPKcjPh_40
	xor edx, edx
_Z21DObjGetModelBoneIndexPK6DObj_sPKcjPh_60:
	sub ecx, eax
	add edx, 0x1
	cmp [ebp-0x20], edx
	jz _Z21DObjGetModelBoneIndexPK6DObj_sPKcjPh_50
	mov eax, [ebp-0x1c]
	mov ebx, [eax+edx*4]
	movzx eax, byte [ebx+0x4]
	cmp ecx, eax
	jae _Z21DObjGetModelBoneIndexPK6DObj_sPKcjPh_60
_Z21DObjGetModelBoneIndexPK6DObj_sPKcjPh_40:
	mov eax, [ebx+0x8]
	movzx eax, word [eax+ecx*2]
	cmp [ebp+0x10], eax
	jz _Z21DObjGetModelBoneIndexPK6DObj_sPKcjPh_70
_Z21DObjGetModelBoneIndexPK6DObj_sPKcjPh_50:
	xor esi, esi
	xor edi, edi
	jmp _Z21DObjGetModelBoneIndexPK6DObj_sPKcjPh_80
_Z21DObjGetModelBoneIndexPK6DObj_sPKcjPh_90:
	movzx eax, byte [ebx+0x4]
	add edi, eax
	add esi, 0x1
	cmp [ebp-0x20], esi
	jz _Z21DObjGetModelBoneIndexPK6DObj_sPKcjPh_30
_Z21DObjGetModelBoneIndexPK6DObj_sPKcjPh_80:
	mov eax, [ebp-0x1c]
	mov ebx, [eax+esi*4]
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z21DObjGetModelBoneIndexPK6DObj_sPKcjPh_90
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov ecx, [ebp+0x10]
	mov [esp+0x4], ecx
	mov [esp], ebx
	call _Z18XModelGetBoneIndexPK6XModeljjPh
	test eax, eax
	jz _Z21DObjGetModelBoneIndexPK6DObj_sPKcjPh_90
	mov eax, 0x1
	jmp _Z21DObjGetModelBoneIndexPK6DObj_sPKcjPh_100
_Z21DObjGetModelBoneIndexPK6DObj_sPKcjPh_20:
	mov eax, [ebp-0x20]
	test eax, eax
	jg _Z21DObjGetModelBoneIndexPK6DObj_sPKcjPh_50
_Z21DObjGetModelBoneIndexPK6DObj_sPKcjPh_30:
	mov eax, [ebp+0x14]
	mov byte [eax], 0xff
_Z21DObjGetModelBoneIndexPK6DObj_sPKcjPh_10:
	xor eax, eax
_Z21DObjGetModelBoneIndexPK6DObj_sPKcjPh_100:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21DObjGetModelBoneIndexPK6DObj_sPKcjPh_70:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z21DObjGetModelBoneIndexPK6DObj_sPKcjPh_50
	mov eax, 0x1
	jmp _Z21DObjGetModelBoneIndexPK6DObj_sPKcjPh_100
	nop


;DObjSetLocalBoneIndex(DObj_s*, int*, int, float const*, float const*)
_Z21DObjSetLocalBoneIndexP6DObj_sPiiPKfS3_:
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
	call _Z20DObjSetRotTransIndexPK6DObj_sPKii
	test eax, eax
	jz _Z21DObjSetLocalBoneIndexP6DObj_sPiiPKfS3__10
	mov [esp+0xc], ebx
	mov eax, [ebp+0x18]
	mov [esp+0x8], eax
	mov eax, [ebp+0x14]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z23DObjSetLocalTagInternalPK6DObj_sPKfS3_i
	mov eax, 0x1
_Z21DObjSetLocalBoneIndexP6DObj_sPiiPKfS3__10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;DObjTracelinePartBits(DObj_s*, int*)
_Z21DObjTracelinePartBitsP6DObj_sPi:
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
	jz _Z21DObjTracelinePartBitsP6DObj_sPi_10
	xor edi, edi
	mov dword [ebp-0x18], 0x0
	mov eax, [ebp-0x18]
	jmp _Z21DObjTracelinePartBitsP6DObj_sPi_20
_Z21DObjTracelinePartBitsP6DObj_sPi_40:
	add edi, [ebp-0x1c]
_Z21DObjTracelinePartBitsP6DObj_sPi_50:
	add dword [ebp-0x18], 0x1
	mov eax, [ebp-0x18]
	cmp [ebp-0x10], eax
	jbe _Z21DObjTracelinePartBitsP6DObj_sPi_30
_Z21DObjTracelinePartBitsP6DObj_sPi_20:
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
	jnz _Z21DObjTracelinePartBitsP6DObj_sPi_40
	test dl, dl
	jz _Z21DObjTracelinePartBitsP6DObj_sPi_50
	xor esi, esi
	xor ebx, ebx
_Z21DObjTracelinePartBitsP6DObj_sPi_70:
	mov eax, ebx
	mov edx, [ebp-0x20]
	add eax, [edx+0xa4]
	mov eax, [eax+0x24]
	test eax, eax
	jz _Z21DObjTracelinePartBitsP6DObj_sPi_60
	mov eax, edi
	shr eax, 0x5
	mov ecx, edi
	and ecx, 0x1f
	mov edx, 0x80000000
	shr edx, cl
	mov ecx, [ebp-0x24]
	test [ecx+eax*4+0x50], edx
	jnz _Z21DObjTracelinePartBitsP6DObj_sPi_60
	mov ecx, [ebp-0x28]
	or [ecx+eax*4], edx
_Z21DObjTracelinePartBitsP6DObj_sPi_60:
	add esi, 0x1
	add edi, 0x1
	add ebx, 0x28
	cmp [ebp-0x1c], esi
	ja _Z21DObjTracelinePartBitsP6DObj_sPi_70
	add dword [ebp-0x18], 0x1
	mov eax, [ebp-0x18]
	cmp [ebp-0x10], eax
	ja _Z21DObjTracelinePartBitsP6DObj_sPi_20
_Z21DObjTracelinePartBitsP6DObj_sPi_30:
	mov ecx, [ebp-0x24]
	mov edx, [ebp-0x28]
	mov [ebp+0xc], edx
	mov [ebp+0x8], ecx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z25DObjCompleteHierarchyBitsPK6DObj_sPi
_Z21DObjTracelinePartBitsP6DObj_sPi_10:
	mov ecx, edx
	mov edx, [ebp-0x28]
	mov [ebp+0xc], edx
	mov [ebp+0x8], ecx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z25DObjCompleteHierarchyBitsPK6DObj_sPi
	nop


;DObjSkelIsBoneUpToDate(DObj_s*, int)
_Z22DObjSkelIsBoneUpToDateP6DObj_si:
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
_Z25DObjGeomTracelinePartBitsP6DObj_siPi:
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
	jnz _Z25DObjGeomTracelinePartBitsP6DObj_siPi_10
	mov [ebp+0xc], edi
	mov eax, [ebp-0x28]
	mov [ebp+0x8], eax
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z25DObjCompleteHierarchyBitsPK6DObj_sPi
_Z25DObjGeomTracelinePartBitsP6DObj_siPi_10:
	mov dword [ebp-0x20], 0x0
	xor esi, esi
_Z25DObjGeomTracelinePartBitsP6DObj_siPi_20:
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
	call _Z31XModelTraceLineAnimatedPartBitsPK6DObj_sjiiPi
	add esi, 0x1
	movzx eax, byte [ebx+0x4]
	add [ebp-0x20], eax
	cmp [ebp-0x1c], esi
	ja _Z25DObjGeomTracelinePartBitsP6DObj_siPi_20
	mov [ebp+0xc], edi
	mov eax, [ebp-0x28]
	mov [ebp+0x8], eax
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z25DObjCompleteHierarchyBitsPK6DObj_sPi
	nop


;DObjGetModelParentBoneName(DObj_s const*, int)
_Z26DObjGetModelParentBoneNamePK6DObj_si:
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
	jle _Z26DObjGetModelParentBoneNamePK6DObj_si_10
	mov eax, [esi]
	mov edx, [eax+0x8]
	mov [ebp-0x10], edx
	movzx edx, byte [eax+0x4]
	cmp edi, edx
	jge _Z26DObjGetModelParentBoneNamePK6DObj_si_20
	mov eax, edi
_Z26DObjGetModelParentBoneNamePK6DObj_si_40:
	mov edx, [ebp-0x10]
	movzx eax, word [edx+eax*2]
	mov [ebp+0x8], eax
	add esp, 0x8
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z18SL_ConvertToStringj
_Z26DObjGetModelParentBoneNamePK6DObj_si_20:
	mov dword [ebp-0x14], 0x0
	xor ebx, ebx
	jmp _Z26DObjGetModelParentBoneNamePK6DObj_si_30
_Z26DObjGetModelParentBoneNamePK6DObj_si_50:
	mov eax, [esi+ebx*4]
	mov edx, [eax+0x8]
	mov [ebp-0x10], edx
	movzx edx, byte [eax+0x4]
	mov eax, edi
	sub eax, [ebp-0x14]
	cmp eax, edx
	jl _Z26DObjGetModelParentBoneNamePK6DObj_si_40
_Z26DObjGetModelParentBoneNamePK6DObj_si_30:
	add [ebp-0x14], edx
	add ebx, 0x1
	cmp ecx, ebx
	jnz _Z26DObjGetModelParentBoneNamePK6DObj_si_50
_Z26DObjGetModelParentBoneNamePK6DObj_si_10:
	xor eax, eax
	add esp, 0x8
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;DObjPhysicsSetCollisionFromXModel(DObj_s const*, PhysWorld, int)
_Z33DObjPhysicsSetCollisionFromXModelPK6DObj_s9PhysWorldi:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x60]
	mov eax, [eax]
	mov [ebp+0x8], eax
	pop ebp
	jmp _Z30Phys_ObjSetCollisionFromXModelPK6XModel9PhysWorldi


;DObjBad(DObj_s const*)
_Z7DObjBadPK6DObj_s:
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
	js _Z7DObjBadPK6DObj_s_10
	lea ebx, [edx*4]
	xor esi, esi
	mov edi, eax
_Z7DObjBadPK6DObj_s_30:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x60]
	mov eax, [eax+ebx]
	mov [esp], eax
	call _Z9XModelBadPK6XModel
	test eax, eax
	jnz _Z7DObjBadPK6DObj_s_20
	add esi, 0x1
	sub ebx, 0x4
	cmp esi, edi
	jnz _Z7DObjBadPK6DObj_s_30
_Z7DObjBadPK6DObj_s_10:
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z7DObjBadPK6DObj_s_20:
	mov eax, 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;DObjFree(DObj_s*)
_Z8DObjFreeP6DObj_s:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov edx, [ebx+0x60]
	test edx, edx
	jz _Z8DObjFreeP6DObj_s_10
	movzx eax, byte [ebx+0x9]
	lea eax, [eax+eax*4]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z7MT_FreePvi
	mov dword [ebx+0x60], 0x0
_Z8DObjFreeP6DObj_s_10:
	mov edx, [ebx]
	test edx, edx
	jz _Z8DObjFreeP6DObj_s_20
	mov dword [ebx], 0x0
_Z8DObjFreeP6DObj_s_20:
	movzx eax, word [ebx+0x4]
	test ax, ax
	jz _Z8DObjFreeP6DObj_s_30
	movzx edx, ax
	cmp edx, [g_empty]
	jz _Z8DObjFreeP6DObj_s_40
	movzx eax, byte [ebx+0x8]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z26SL_RemoveRefToStringOfSizejj
_Z8DObjFreeP6DObj_s_40:
	mov byte [ebx+0x8], 0x0
	mov word [ebx+0x4], 0x0
_Z8DObjFreeP6DObj_s_30:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;DObjInit()
_Z8DObjInitv:
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


;Initialized global or static variables of dobj:
SECTION .data


;Initialized constant data of dobj:
SECTION .rdata


;Zero initialized global or static variables of dobj:
SECTION .bss
g_empty: resb 0x80


;All cstrings:
SECTION .rdata
_cstring_model_s:		db "Model ",27h,"%s",27h,":",0ah,0
_cstring_bone_d_s:		db "Bone %d: ",27h,"%s",27h,0ah,0
_cstring_dobj_for_xmodel_:		db 015h,"dobj for xmodel ",27h,"%s",27h," has more than %d bones (see console for details)",0
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
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float__1_00000000:		dd 0xbf800000	; -1

