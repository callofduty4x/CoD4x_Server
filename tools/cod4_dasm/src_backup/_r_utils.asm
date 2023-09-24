;Imports of r_utils:
	extern acos
	extern sin
	extern asin
	extern tan
	extern vec3_origin
	extern _Z11CM_BoxTraceP7trace_tPKfS2_S2_S2_ji
	extern strcpy
	extern infoParms
	extern strncpy
	extern r_clear
	extern _Z16Sys_Millisecondsv
	extern r_clearColor
	extern developer
	extern rg
	extern r_clearColor2
	extern Z_VirtualFreeInternal
	extern Z_VirtualAllocInternal
	extern floorf

;Exports of r_utils:
	global _Z11FresnelTermfff
	global _Z12R_HashStringPKc
	global _Z14R_PickMaterialiPKfS0_PcS1_S1_i
	global _Z15R_GetClearColorPf
	global _Z15R_HashAssetNamePKc
	global _Z20R_CullPointAndRadiusPKffPK9DpvsPlanei
	global _Z20R_FreeGlobalVariablePv
	global _Z21R_AllocGlobalVariablejPKc
	global _Z21R_ConvertColorToBytesPKfPh


SECTION .text


;FresnelTerm(float, float, float)
_Z11FresnelTermfff:
	push ebp
	mov ebp, esp
	sub esp, 0x78
	movss xmm0, dword [ebp+0x10]
	andps xmm0, [_data16_7fffffff]
	cvtss2sd xmm0, xmm0
	movsd [esp], xmm0
	call acos
	fstp qword [ebp-0x10]
	movss xmm0, dword [ebp+0x8]
	divss xmm0, dword [ebp+0xc]
	cvtss2sd xmm1, xmm0
	movsd [ebp-0x28], xmm1
	movsd xmm0, qword [ebp-0x10]
	movsd [esp], xmm0
	call sin
	fstp qword [ebp-0x60]
	movsd xmm1, qword [ebp-0x60]
	mulsd xmm1, [ebp-0x28]
	movsd xmm0, qword [_double_1_00000000]
	ucomisd xmm1, xmm0
	jbe _Z11FresnelTermfff_10
_Z11FresnelTermfff_30:
	movsd [esp], xmm0
	call asin
	fstp qword [ebp-0x60]
	movsd xmm0, qword [ebp-0x60]
	movsd xmm1, qword [ebp-0x10]
	addsd xmm1, xmm0
	movsd [ebp-0x20], xmm1
	movsd xmm1, qword [ebp-0x10]
	subsd xmm1, xmm0
	movsd [ebp-0x18], xmm1
	movsd [esp], xmm1
	call sin
	fstp qword [ebp-0x30]
	movsd xmm0, qword [ebp-0x20]
	movsd [esp], xmm0
	call sin
	fstp qword [ebp-0x38]
	movsd xmm1, qword [ebp-0x30]
	divsd xmm1, qword [ebp-0x38]
	movsd [ebp-0x30], xmm1
	movsd xmm0, qword [ebp-0x18]
	movsd [esp], xmm0
	call tan
	fstp qword [ebp-0x60]
	movsd xmm0, qword [ebp-0x60]
	movsd xmm1, qword [ebp-0x20]
	movsd [esp], xmm1
	movsd [ebp-0x58], xmm0
	call tan
	fstp qword [ebp-0x40]
	movsd xmm0, qword [ebp-0x58]
	divsd xmm0, qword [ebp-0x40]
	movsd xmm1, qword [ebp-0x30]
	mulsd xmm1, xmm1
	mulsd xmm0, xmm0
	addsd xmm0, xmm1
	movsd [ebp-0x30], xmm0
	mulsd xmm0, [_double_0_50000000]
	cvtsd2ss xmm1, xmm0
	ucomiss xmm1, [_float_0_00000000]
	jb _Z11FresnelTermfff_20
_Z11FresnelTermfff_40:
	movss xmm0, dword [_float_1_00000000]
	minss xmm0, xmm1
	movaps xmm1, xmm0
	movss [ebp-0x64], xmm1
	fld dword [ebp-0x64]
	leave
	ret
_Z11FresnelTermfff_10:
	movsd xmm0, qword [_double__1_00000000]
	maxsd xmm0, xmm1
	jmp _Z11FresnelTermfff_30
_Z11FresnelTermfff_20:
	jp _Z11FresnelTermfff_40
	pxor xmm1, xmm1
	movss [ebp-0x64], xmm1
	fld dword [ebp-0x64]
	leave
	ret
	nop


;R_HashString(char const*)
_Z12R_HashStringPKc:
	push ebp
	mov ebp, esp
	push ebx
	mov eax, [ebp+0x8]
	movzx edx, byte [eax]
	test dl, dl
	jz _Z12R_HashStringPKc_10
	mov ebx, eax
	xor ecx, ecx
_Z12R_HashStringPKc_20:
	mov eax, ecx
	shl eax, 0x5
	lea ecx, [eax+ecx]
	or dl, 0x20
	movsx eax, dl
	xor ecx, eax
	movzx edx, byte [ebx+0x1]
	add ebx, 0x1
	test dl, dl
	jnz _Z12R_HashStringPKc_20
	mov eax, ecx
	pop ebx
	pop ebp
	ret
_Z12R_HashStringPKc_10:
	xor ecx, ecx
	mov eax, ecx
	pop ebx
	pop ebp
	ret
	nop


;R_PickMaterial(int, float const*, float const*, char*, char*, char*, int)
_Z14R_PickMaterialiPKfS0_PcS1_S1_i:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x10]
	movss xmm1, dword [_float_262144_00000000]
	movss xmm0, dword [eax]
	mulss xmm0, xmm1
	addss xmm0, [edx]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [eax+0x4]
	mulss xmm0, xmm1
	addss xmm0, [edx+0x4]
	movss [ebp-0x20], xmm0
	mulss xmm1, [eax+0x8]
	addss xmm1, [edx+0x8]
	movss [ebp-0x1c], xmm1
	mov eax, [ebp+0x8]
	mov [esp+0x18], eax
	mov dword [esp+0x14], 0x0
	mov eax, vec3_origin
	mov [esp+0x10], eax
	mov [esp+0xc], eax
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	lea eax, [ebp-0x50]
	mov [esp], eax
	call _Z11CM_BoxTraceP7trace_tPKfS2_S2_S2_ji
	cmp word [ebp-0x28], 0x0
	jnz _Z14R_PickMaterialiPKfS0_PcS1_S1_i_10
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0x50]
	jp _Z14R_PickMaterialiPKfS0_PcS1_S1_i_20
	jz _Z14R_PickMaterialiPKfS0_PcS1_S1_i_10
_Z14R_PickMaterialiPKfS0_PcS1_S1_i_20:
	mov eax, [ebp-0x38]
	test eax, eax
	jz _Z14R_PickMaterialiPKfS0_PcS1_S1_i_10
	mov [esp+0x4], eax
	mov eax, [ebp+0x14]
	mov [esp], eax
	call strcpy
	mov edx, [ebp+0x18]
	mov byte [edx], 0x0
	mov eax, edx
	add eax, [ebp+0x20]
	lea ecx, [eax-0x1]
	mov [ebp-0x70], ecx
	mov byte [eax-0x1], 0x0
	mov eax, [ebp+0x1c]
	mov byte [eax], 0x0
	mov eax, [ebp+0x20]
	add eax, [ebp+0x1c]
	lea edx, [eax-0x1]
	mov [ebp-0x6c], edx
	mov byte [eax-0x1], 0x0
	mov eax, [ebp-0x40]
	and eax, 0x1f00000
	shr eax, 0x14
	sub eax, 0x1
	cmp eax, 0x1b
	ja _Z14R_PickMaterialiPKfS0_PcS1_S1_i_30
	mov ecx, [ebp+0x20]
	mov [esp+0x8], ecx
	lea eax, [eax+eax*4]
	mov edx, infoParms
	mov eax, [edx+eax*4]
	mov [esp+0x4], eax
	mov eax, [ebp+0x18]
	mov [esp], eax
	call strncpy
_Z14R_PickMaterialiPKfS0_PcS1_S1_i_100:
	mov eax, [ebp-0x70]
	cmp byte [eax], 0x0
	jnz _Z14R_PickMaterialiPKfS0_PcS1_S1_i_10
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp+0x18]
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [ebp-0x68], ecx
	test byte [ebp-0x3c], 0x1
	jz _Z14R_PickMaterialiPKfS0_PcS1_S1_i_40
	mov edx, [ebp+0x20]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_solid
	mov ecx, [ebp+0x1c]
	mov [esp], ecx
	call strncpy
_Z14R_PickMaterialiPKfS0_PcS1_S1_i_110:
	mov ecx, [ebp-0x6c]
	cmp byte [ecx], 0x0
	jnz _Z14R_PickMaterialiPKfS0_PcS1_S1_i_10
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp+0x1c]
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [ebp-0x64], ecx
	mov eax, infoParms
	mov edx, [eax+0x230]
	test edx, edx
	jz _Z14R_PickMaterialiPKfS0_PcS1_S1_i_50
	mov ebx, eax
	jmp _Z14R_PickMaterialiPKfS0_PcS1_S1_i_60
_Z14R_PickMaterialiPKfS0_PcS1_S1_i_80:
	mov eax, [ebx+0x23c]
	test [ebp-0x3c], eax
	jnz _Z14R_PickMaterialiPKfS0_PcS1_S1_i_70
_Z14R_PickMaterialiPKfS0_PcS1_S1_i_90:
	mov eax, [ebx+0x244]
	add ebx, 0x14
	test eax, eax
	jz _Z14R_PickMaterialiPKfS0_PcS1_S1_i_50
_Z14R_PickMaterialiPKfS0_PcS1_S1_i_60:
	mov eax, [ebx+0x238]
	test [ebp-0x40], eax
	jz _Z14R_PickMaterialiPKfS0_PcS1_S1_i_80
	mov eax, [ebp+0x18]
	mov edx, [ebp-0x68]
	mov byte [eax+edx], 0x20
	mov esi, edx
	add esi, 0x1
	add eax, esi
	mov [ebp-0x60], eax
	mov eax, [ebp+0x20]
	sub eax, esi
	mov [esp+0x8], eax
	mov eax, [ebx+0x230]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x60]
	mov [esp], ecx
	call strncpy
	mov eax, [ebp-0x70]
	cmp byte [eax], 0x0
	jnz _Z14R_PickMaterialiPKfS0_PcS1_S1_i_10
	cld
	mov ecx, 0xffffffff
	mov edi, [ebp-0x60]
	xor eax, eax
	repne scasb
	not ecx
	lea ecx, [ecx+esi-0x1]
	mov [ebp-0x68], ecx
	mov eax, [ebx+0x23c]
	test [ebp-0x3c], eax
	jz _Z14R_PickMaterialiPKfS0_PcS1_S1_i_90
_Z14R_PickMaterialiPKfS0_PcS1_S1_i_70:
	mov edx, [ebp+0x1c]
	mov ecx, [ebp-0x64]
	mov byte [edx+ecx], 0x20
	mov esi, ecx
	add esi, 0x1
	add edx, esi
	mov [ebp-0x5c], edx
	mov eax, [ebp+0x20]
	sub eax, esi
	mov [esp+0x8], eax
	mov eax, [ebx+0x230]
	mov [esp+0x4], eax
	mov [esp], edx
	call strncpy
	mov eax, [ebp-0x6c]
	cmp byte [eax], 0x0
	jnz _Z14R_PickMaterialiPKfS0_PcS1_S1_i_10
	cld
	mov ecx, 0xffffffff
	mov edi, [ebp-0x5c]
	xor eax, eax
	repne scasb
	not ecx
	lea ecx, [ecx+esi-0x1]
	mov [ebp-0x64], ecx
	jmp _Z14R_PickMaterialiPKfS0_PcS1_S1_i_90
_Z14R_PickMaterialiPKfS0_PcS1_S1_i_10:
	xor eax, eax
_Z14R_PickMaterialiPKfS0_PcS1_S1_i_120:
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14R_PickMaterialiPKfS0_PcS1_S1_i_30:
	mov edx, [ebp+0x20]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_1default7
	mov ecx, [ebp+0x18]
	mov [esp], ecx
	call strncpy
	jmp _Z14R_PickMaterialiPKfS0_PcS1_S1_i_100
_Z14R_PickMaterialiPKfS0_PcS1_S1_i_40:
	mov eax, [ebp+0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_3nonsolid7
	mov edx, [ebp+0x1c]
	mov [esp], edx
	call strncpy
	jmp _Z14R_PickMaterialiPKfS0_PcS1_S1_i_110
_Z14R_PickMaterialiPKfS0_PcS1_S1_i_50:
	mov eax, 0x1
	jmp _Z14R_PickMaterialiPKfS0_PcS1_S1_i_120
	nop


;R_GetClearColor(float*)
_Z15R_GetClearColorPf:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov eax, r_clear
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z15R_GetClearColorPf_10
	cmp eax, 0x1
	jz _Z15R_GetClearColorPf_20
	cmp eax, 0x4
	jz _Z15R_GetClearColorPf_30
	cmp eax, 0x3
	jz _Z15R_GetClearColorPf_40
_Z15R_GetClearColorPf_60:
	call _Z16Sys_Millisecondsv
	test ah, 0x2
	jnz _Z15R_GetClearColorPf_50
_Z15R_GetClearColorPf_40:
	mov eax, r_clearColor
_Z15R_GetClearColorPf_90:
	mov eax, [eax]
	lea edx, [eax+0xc]
	movzx eax, byte [eax+0xc]
	cvtsi2ss xmm0, eax
	movss xmm1, dword [_float_0_00392157]
	mulss xmm0, xmm1
	movss [ebx], xmm0
	movzx eax, byte [edx+0x1]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [ebx+0x4], xmm0
	movzx eax, byte [edx+0x2]
_Z15R_GetClearColorPf_80:
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [ebx+0x8], xmm0
	mov dword [ebx+0xc], 0x3f800000
	mov eax, 0x1
	add esp, 0x4
	pop ebx
	pop ebp
	ret
_Z15R_GetClearColorPf_20:
	mov eax, developer
	mov eax, [eax]
	mov ecx, [eax+0xc]
	test ecx, ecx
	jnz _Z15R_GetClearColorPf_60
_Z15R_GetClearColorPf_10:
	xor eax, eax
	mov [ebx], eax
	mov [ebx+0x4], eax
	mov [ebx+0x8], eax
	mov [ebx+0xc], eax
	xor eax, eax
	add esp, 0x4
	pop ebx
	pop ebp
	ret
_Z15R_GetClearColorPf_30:
	mov edx, rg
	pxor xmm0, xmm0
	ucomiss xmm0, [edx+0x219c]
	jp _Z15R_GetClearColorPf_70
	jz _Z15R_GetClearColorPf_60
_Z15R_GetClearColorPf_70:
	movzx eax, byte [edx+0x2196]
	cvtsi2ss xmm0, eax
	movss xmm1, dword [_float_0_00392157]
	mulss xmm0, xmm1
	movss [ebx], xmm0
	movzx eax, byte [edx+0x2195]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [ebx+0x4], xmm0
	movzx eax, byte [edx+0x2194]
	jmp _Z15R_GetClearColorPf_80
_Z15R_GetClearColorPf_50:
	mov eax, r_clearColor2
	jmp _Z15R_GetClearColorPf_90


;R_HashAssetName(char const*)
_Z15R_HashAssetNamePKc:
	push ebp
	mov ebp, esp
	push ebx
	mov eax, [ebp+0x8]
	movzx ecx, byte [eax]
	test cl, cl
	jz _Z15R_HashAssetNamePKc_10
	mov ebx, eax
	xor edx, edx
_Z15R_HashAssetNamePKc_20:
	mov eax, edx
	shl eax, 0x5
	lea edx, [eax+edx]
	movsx eax, cl
	xor edx, eax
	movzx ecx, byte [ebx+0x1]
	add ebx, 0x1
	test cl, cl
	jnz _Z15R_HashAssetNamePKc_20
	mov eax, edx
	pop ebx
	pop ebp
	ret
_Z15R_HashAssetNamePKc_10:
	xor edx, edx
	mov eax, edx
	pop ebx
	pop ebp
	ret


;R_CullPointAndRadius(float const*, float, DpvsPlane const*, int)
_Z20R_CullPointAndRadiusPKffPK9DpvsPlanei:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov eax, [ebp+0x8]
	mov edx, [ebp+0x10]
	mov ebx, [ebp+0x14]
	test ebx, ebx
	jle _Z20R_CullPointAndRadiusPKffPK9DpvsPlanei_10
	movss xmm5, dword [eax]
	movss xmm4, dword [eax+0x4]
	movss xmm3, dword [eax+0x8]
	movss xmm0, dword [ebp+0xc]
	movaps xmm2, xmm0
	xorps xmm2, [_data16_80000000]
	movaps xmm0, xmm5
	mulss xmm0, [edx]
	movaps xmm1, xmm4
	mulss xmm1, [edx+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm3
	mulss xmm1, [edx+0x8]
	addss xmm0, xmm1
	addss xmm0, [edx+0xc]
	ucomiss xmm2, xmm0
	ja _Z20R_CullPointAndRadiusPKffPK9DpvsPlanei_20
	lea eax, [edx+0x14]
	mov ecx, eax
	xor edx, edx
_Z20R_CullPointAndRadiusPKffPK9DpvsPlanei_30:
	add edx, 0x1
	cmp ebx, edx
	jz _Z20R_CullPointAndRadiusPKffPK9DpvsPlanei_10
	movaps xmm0, xmm5
	mulss xmm0, [eax]
	movaps xmm1, xmm4
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x8]
	addss xmm0, xmm1
	addss xmm0, [ecx+0xc]
	add eax, 0x14
	add ecx, 0x14
	ucomiss xmm2, xmm0
	jbe _Z20R_CullPointAndRadiusPKffPK9DpvsPlanei_30
_Z20R_CullPointAndRadiusPKffPK9DpvsPlanei_20:
	mov eax, 0x1
	add esp, 0x4
	pop ebx
	pop ebp
	ret
_Z20R_CullPointAndRadiusPKffPK9DpvsPlanei_10:
	xor eax, eax
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;R_FreeGlobalVariable(void*)
_Z20R_FreeGlobalVariablePv:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Z_VirtualFreeInternal
	nop


;R_AllocGlobalVariable(unsigned int, char const*)
_Z21R_AllocGlobalVariablejPKc:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Z_VirtualAllocInternal
	nop


;R_ConvertColorToBytes(float const*, unsigned char*)
_Z21R_ConvertColorToBytesPKfPh:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, [ebp+0x8]
	mov edi, [ebp+0xc]
	test ebx, ebx
	jz _Z21R_ConvertColorToBytesPKfPh_10
	lea esi, [edi+0x2]
	movss xmm0, dword [ebx]
	mulss xmm0, [_float_255_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x1c]
	cvttss2si eax, [ebp-0x1c]
	cmp eax, 0xfe
	jle _Z21R_ConvertColorToBytesPKfPh_20
	mov edx, 0xffffffff
_Z21R_ConvertColorToBytesPKfPh_60:
	mov [esi], dl
	lea esi, [edi+0x1]
	movss xmm0, dword [ebx+0x4]
	mulss xmm0, [_float_255_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x20]
	cvttss2si eax, [ebp-0x20]
	cmp eax, 0xfe
	jle _Z21R_ConvertColorToBytesPKfPh_30
	mov edx, 0xffffffff
_Z21R_ConvertColorToBytesPKfPh_90:
	mov [esi], dl
	movss xmm0, dword [ebx+0x8]
	mulss xmm0, [_float_255_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x24]
	cvttss2si eax, [ebp-0x24]
	cmp eax, 0xfe
	jle _Z21R_ConvertColorToBytesPKfPh_40
	mov edx, 0xffffffff
_Z21R_ConvertColorToBytesPKfPh_80:
	mov [edi], dl
	lea esi, [edi+0x3]
	movss xmm0, dword [_float_255_00000000]
	mulss xmm0, [ebx+0xc]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x28]
	cvttss2si eax, [ebp-0x28]
	cmp eax, 0xfe
	jle _Z21R_ConvertColorToBytesPKfPh_50
	mov edx, 0xffffffff
_Z21R_ConvertColorToBytesPKfPh_70:
	mov [esi], dl
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21R_ConvertColorToBytesPKfPh_20:
	xor edx, edx
	test eax, eax
	cmovg edx, eax
	jmp _Z21R_ConvertColorToBytesPKfPh_60
_Z21R_ConvertColorToBytesPKfPh_10:
	mov dword [edi], 0xffffffff
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21R_ConvertColorToBytesPKfPh_50:
	xor edx, edx
	test eax, eax
	cmovg edx, eax
	jmp _Z21R_ConvertColorToBytesPKfPh_70
_Z21R_ConvertColorToBytesPKfPh_40:
	xor edx, edx
	test eax, eax
	cmovg edx, eax
	jmp _Z21R_ConvertColorToBytesPKfPh_80
_Z21R_ConvertColorToBytesPKfPh_30:
	xor edx, edx
	test eax, eax
	cmovg edx, eax
	jmp _Z21R_ConvertColorToBytesPKfPh_90


;Initialized global or static variables of r_utils:
SECTION .data


;Initialized constant data of r_utils:
SECTION .rdata


;Zero initialized global or static variables of r_utils:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_solid:		db "solid",0
_cstring_1default7:		db "^1default^7",0
_cstring_3nonsolid7:		db "^3nonsolid^7",0



;All constant floats and doubles:
SECTION .rdata
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; OWORD
_double_1_00000000:		dq 0x3ff0000000000000	; 1
_double_0_50000000:		dq 0x3fe0000000000000	; 0.5
_float_0_00000000:		dd 0x0	; 0
_float_1_00000000:		dd 0x3f800000	; 1
_double__1_00000000:		dq 0xbff0000000000000	; -1
_float_262144_00000000:		dd 0x48800000	; 262144
_float_0_00392157:		dd 0x3b808081	; 0.00392157
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_255_00000000:		dd 0x437f0000	; 255
_float_0_50000000:		dd 0x3f000000	; 0.5

