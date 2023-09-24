;Imports of xanim_calc:
	extern _Z18SL_ConvertToStringj
	extern _Z11GetAnimInfoi
	extern _Z16Com_PrintWarningiPKcz

;Exports of xanim_calc:
	global _GLOBAL__I__Z13XAnim_SetTimefiP9XAnimTime
	global _Z18XAnim_GetTimeIndexItEvPK9XAnimTimePKT_iPiPf
	global _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE
	global _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat
	global _Z12DObjCalcAnimPK6DObj_sPi
	global _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4


SECTION .text


;global constructors keyed to XAnim_SetTime(float, int, XAnimTime*)
_GLOBAL__I__Z13XAnim_SetTimefiP9XAnimTime:
	push ebp
	mov ebp, esp
	mov edx, 0xffff
	mov eax, 0x1
	pop ebp
	jmp _Z41__static_initialization_and_destruction_0ii


;void XAnim_GetTimeIndex<unsigned short>(XAnimTime const*, unsigned short const*, int, int*, float*)
_Z18XAnim_GetTimeIndexItEvPK9XAnimTimePKT_iPiPf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x18
	mov [ebp-0x1c], eax
	mov edi, edx
	mov [ebp-0x20], ecx
	cvtsi2ss xmm0, ecx
	mulss xmm0, [eax]
	cvttss2si ecx, xmm0
	mov esi, [eax+0x8]
	lea edx, [edx+ecx*2]
	movzx eax, word [edx]
	cmp esi, eax
	jae _Z18XAnim_GetTimeIndexItEvPK9XAnimTimePKT_iPiPf_10
	mov ebx, ecx
	mov dword [ebp-0x18], 0x0
_Z18XAnim_GetTimeIndexItEvPK9XAnimTimePKT_iPiPf_40:
	sub ebx, 0x1
	lea edx, [edi+ebx*2]
	movzx eax, word [edx]
	cmp esi, eax
	jae _Z18XAnim_GetTimeIndexItEvPK9XAnimTimePKT_iPiPf_20
_Z18XAnim_GetTimeIndexItEvPK9XAnimTimePKT_iPiPf_50:
	mov ecx, [ebp-0x18]
	add ecx, ebx
	shr ecx, 1
	lea edx, [edi+ecx*2]
	movzx eax, word [edx]
	cmp esi, eax
	jb _Z18XAnim_GetTimeIndexItEvPK9XAnimTimePKT_iPiPf_30
	lea eax, [ecx+0x1]
	mov [ebp-0x18], eax
	movzx eax, word [edi+eax*2]
	cmp esi, eax
	jae _Z18XAnim_GetTimeIndexItEvPK9XAnimTimePKT_iPiPf_40
_Z18XAnim_GetTimeIndexItEvPK9XAnimTimePKT_iPiPf_100:
	lea ebx, [edx+0x2]
	mov [ebp-0x10], ebx
_Z18XAnim_GetTimeIndexItEvPK9XAnimTimePKT_iPiPf_60:
	movzx edx, word [edx]
	cvtsi2ss xmm0, edx
	mov eax, [ebp-0x1c]
	movss xmm1, dword [eax+0x4]
	subss xmm1, xmm0
	movzx eax, word [ebx]
	sub eax, edx
	cvtsi2ss xmm0, eax
	divss xmm1, xmm0
	mov eax, [ebp+0xc]
	movss [eax], xmm1
	mov eax, [ebp+0x8]
	mov [eax], ecx
	add esp, 0x18
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18XAnim_GetTimeIndexItEvPK9XAnimTimePKT_iPiPf_30:
	mov ebx, ecx
	sub ebx, 0x1
	lea edx, [edi+ebx*2]
	movzx eax, word [edx]
	cmp esi, eax
	jb _Z18XAnim_GetTimeIndexItEvPK9XAnimTimePKT_iPiPf_50
_Z18XAnim_GetTimeIndexItEvPK9XAnimTimePKT_iPiPf_20:
	lea eax, [edx+0x2]
	mov [ebp-0x10], eax
	mov ecx, ebx
	mov ebx, eax
	jmp _Z18XAnim_GetTimeIndexItEvPK9XAnimTimePKT_iPiPf_60
_Z18XAnim_GetTimeIndexItEvPK9XAnimTimePKT_iPiPf_10:
	lea eax, [edx+0x2]
	mov [ebp-0x10], eax
	movzx eax, word [edx+0x2]
	cmp esi, eax
	jb _Z18XAnim_GetTimeIndexItEvPK9XAnimTimePKT_iPiPf_70
	lea ebx, [ecx+0x1]
	mov eax, [ebp-0x20]
	mov [ebp-0x14], eax
_Z18XAnim_GetTimeIndexItEvPK9XAnimTimePKT_iPiPf_120:
	add ebx, 0x1
	movzx eax, word [edi+ebx*2]
	cmp esi, eax
	jb _Z18XAnim_GetTimeIndexItEvPK9XAnimTimePKT_iPiPf_80
_Z18XAnim_GetTimeIndexItEvPK9XAnimTimePKT_iPiPf_110:
	mov ecx, [ebp-0x14]
	add ecx, ebx
	shr ecx, 1
	lea edx, [edi+ecx*2]
	movzx eax, word [edx]
	cmp esi, eax
	jb _Z18XAnim_GetTimeIndexItEvPK9XAnimTimePKT_iPiPf_90
	lea ebx, [ecx+0x1]
	movzx eax, word [edi+ebx*2]
	cmp esi, eax
	jb _Z18XAnim_GetTimeIndexItEvPK9XAnimTimePKT_iPiPf_100
	add ebx, 0x1
	movzx eax, word [edi+ebx*2]
	cmp esi, eax
	jae _Z18XAnim_GetTimeIndexItEvPK9XAnimTimePKT_iPiPf_110
_Z18XAnim_GetTimeIndexItEvPK9XAnimTimePKT_iPiPf_80:
	lea ecx, [ebx-0x1]
	lea edx, [edi+ecx*2]
	jmp _Z18XAnim_GetTimeIndexItEvPK9XAnimTimePKT_iPiPf_100
_Z18XAnim_GetTimeIndexItEvPK9XAnimTimePKT_iPiPf_90:
	mov [ebp-0x14], ecx
	jmp _Z18XAnim_GetTimeIndexItEvPK9XAnimTimePKT_iPiPf_120
_Z18XAnim_GetTimeIndexItEvPK9XAnimTimePKT_iPiPf_70:
	mov ebx, [ebp-0x10]
	jmp _Z18XAnim_GetTimeIndexItEvPK9XAnimTimePKT_iPiPf_60
	nop


;__static_initialization_and_destruction_0(int, int)
_Z41__static_initialization_and_destruction_0ii:
	push ebp
	mov ebp, esp
	cmp edx, 0xffff
	jz _Z41__static_initialization_and_destruction_0ii_10
_Z41__static_initialization_and_destruction_0ii_20:
	pop ebp
	ret
_Z41__static_initialization_and_destruction_0ii_10:
	sub eax, 0x1
	jnz _Z41__static_initialization_and_destruction_0ii_20
	mov eax, [g_fltMin__uint4]
	mov [g_fltMin], eax
	mov eax, [g_fltMin__uint4+0x4]
	mov [g_fltMin+0x4], eax
	mov eax, [g_fltMin__uint4+0x8]
	mov [g_fltMin+0x8], eax
	mov eax, [g_fltMin__uint4+0xc]
	mov [g_fltMin+0xc], eax
	mov eax, [g_negativeZero__uint4]
	mov [g_negativeZero], eax
	mov eax, [g_negativeZero__uint4+0x4]
	mov [g_negativeZero+0x4], eax
	mov eax, [g_negativeZero__uint4+0x8]
	mov [g_negativeZero+0x8], eax
	mov eax, [g_negativeZero__uint4+0xc]
	mov [g_negativeZero+0xc], eax
	mov eax, [g_inc__uint4]
	mov [g_inc], eax
	mov eax, [g_inc__uint4+0x4]
	mov [g_inc+0x4], eax
	mov eax, [g_inc__uint4+0x8]
	mov [g_inc+0x8], eax
	mov eax, [g_inc__uint4+0xc]
	mov [g_inc+0xc], eax
	mov eax, [g_swizzleXYZW__uint4]
	mov [g_swizzleXYZW], eax
	mov eax, [g_swizzleXYZW__uint4+0x4]
	mov [g_swizzleXYZW+0x4], eax
	mov eax, [g_swizzleXYZW__uint4+0x8]
	mov [g_swizzleXYZW+0x8], eax
	mov eax, [g_swizzleXYZW__uint4+0xc]
	mov [g_swizzleXYZW+0xc], eax
	mov eax, [g_swizzleYXZW__uint4]
	mov [g_swizzleYXZW], eax
	mov eax, [g_swizzleYXZW__uint4+0x4]
	mov [g_swizzleYXZW+0x4], eax
	mov eax, [g_swizzleYXZW__uint4+0x8]
	mov [g_swizzleYXZW+0x8], eax
	mov eax, [g_swizzleYXZW__uint4+0xc]
	mov [g_swizzleYXZW+0xc], eax
	mov eax, [g_swizzleXZYW__uint4]
	mov [g_swizzleXZYW], eax
	mov eax, [g_swizzleXZYW__uint4+0x4]
	mov [g_swizzleXZYW+0x4], eax
	mov eax, [g_swizzleXZYW__uint4+0x8]
	mov [g_swizzleXZYW+0x8], eax
	mov eax, [g_swizzleXZYW__uint4+0xc]
	mov [g_swizzleXZYW+0xc], eax
	mov eax, [g_swizzleYXWZ__uint4]
	mov [g_swizzleYXWZ], eax
	mov eax, [g_swizzleYXWZ__uint4+0x4]
	mov [g_swizzleYXWZ+0x4], eax
	mov eax, [g_swizzleYXWZ__uint4+0x8]
	mov [g_swizzleYXWZ+0x8], eax
	mov eax, [g_swizzleYXWZ__uint4+0xc]
	mov [g_swizzleYXWZ+0xc], eax
	mov eax, [g_swizzleXAZC__uint4]
	mov [g_swizzleXAZC], eax
	mov eax, [g_swizzleXAZC__uint4+0x4]
	mov [g_swizzleXAZC+0x4], eax
	mov eax, [g_swizzleXAZC__uint4+0x8]
	mov [g_swizzleXAZC+0x8], eax
	mov eax, [g_swizzleXAZC__uint4+0xc]
	mov [g_swizzleXAZC+0xc], eax
	mov eax, [g_swizzleYBWD__uint4]
	mov [g_swizzleYBWD], eax
	mov eax, [g_swizzleYBWD__uint4+0x4]
	mov [g_swizzleYBWD+0x4], eax
	mov eax, [g_swizzleYBWD__uint4+0x8]
	mov [g_swizzleYBWD+0x8], eax
	mov eax, [g_swizzleYBWD__uint4+0xc]
	mov [g_swizzleYBWD+0xc], eax
	mov eax, [g_swizzleXYAB__uint4]
	mov [g_swizzleXYAB], eax
	mov eax, [g_swizzleXYAB__uint4+0x4]
	mov [g_swizzleXYAB+0x4], eax
	mov eax, [g_swizzleXYAB__uint4+0x8]
	mov [g_swizzleXYAB+0x8], eax
	mov eax, [g_swizzleXYAB__uint4+0xc]
	mov [g_swizzleXYAB+0xc], eax
	mov eax, [g_swizzleZWCD__uint4]
	mov [g_swizzleZWCD], eax
	mov eax, [g_swizzleZWCD__uint4+0x4]
	mov [g_swizzleZWCD+0x4], eax
	mov eax, [g_swizzleZWCD__uint4+0x8]
	mov [g_swizzleZWCD+0x8], eax
	mov eax, [g_swizzleZWCD__uint4+0xc]
	mov [g_swizzleZWCD+0xc], eax
	mov eax, [g_swizzleXYZA__uint4]
	mov [g_swizzleXYZA], eax
	mov eax, [g_swizzleXYZA__uint4+0x4]
	mov [g_swizzleXYZA+0x4], eax
	mov eax, [g_swizzleXYZA__uint4+0x8]
	mov [g_swizzleXYZA+0x8], eax
	mov eax, [g_swizzleXYZA__uint4+0xc]
	mov [g_swizzleXYZA+0xc], eax
	mov eax, [g_swizzleYZXW__uint4]
	mov [g_swizzleYZXW], eax
	mov eax, [g_swizzleYZXW__uint4+0x4]
	mov [g_swizzleYZXW+0x4], eax
	mov eax, [g_swizzleYZXW__uint4+0x8]
	mov [g_swizzleYZXW+0x8], eax
	mov eax, [g_swizzleYZXW__uint4+0xc]
	mov [g_swizzleYZXW+0xc], eax
	mov eax, [g_swizzleZXYW__uint4]
	mov [g_swizzleZXYW], eax
	mov eax, [g_swizzleZXYW__uint4+0x4]
	mov [g_swizzleZXYW+0x4], eax
	mov eax, [g_swizzleZXYW__uint4+0x8]
	mov [g_swizzleZXYW+0x8], eax
	mov eax, [g_swizzleZXYW__uint4+0xc]
	mov [g_swizzleZXYW+0xc], eax
	mov eax, [g_swizzleWABW__uint4]
	mov [g_swizzleWABW], eax
	mov eax, [g_swizzleWABW__uint4+0x4]
	mov [g_swizzleWABW+0x4], eax
	mov eax, [g_swizzleWABW__uint4+0x8]
	mov [g_swizzleWABW+0x8], eax
	mov eax, [g_swizzleWABW__uint4+0xc]
	mov [g_swizzleWABW+0xc], eax
	mov eax, [g_swizzleZWAW__uint4]
	mov [g_swizzleZWAW], eax
	mov eax, [g_swizzleZWAW__uint4+0x4]
	mov [g_swizzleZWAW+0x4], eax
	mov eax, [g_swizzleZWAW__uint4+0x8]
	mov [g_swizzleZWAW+0x8], eax
	mov eax, [g_swizzleZWAW__uint4+0xc]
	mov [g_swizzleZWAW+0xc], eax
	mov eax, [g_swizzleYZWA__uint4]
	mov [g_swizzleYZWA], eax
	mov eax, [g_swizzleYZWA__uint4+0x4]
	mov [g_swizzleYZWA+0x4], eax
	mov eax, [g_swizzleYZWA__uint4+0x8]
	mov [g_swizzleYZWA+0x8], eax
	mov eax, [g_swizzleYZWA__uint4+0xc]
	mov [g_swizzleYZWA+0xc], eax
	mov eax, [g_swizzleXXXX__uint4]
	mov [g_swizzleXXXX], eax
	mov eax, [g_swizzleXXXX__uint4+0x4]
	mov [g_swizzleXXXX+0x4], eax
	mov eax, [g_swizzleXXXX__uint4+0x8]
	mov [g_swizzleXXXX+0x8], eax
	mov eax, [g_swizzleXXXX__uint4+0xc]
	mov [g_swizzleXXXX+0xc], eax
	mov eax, [g_swizzleYYYY__uint4]
	mov [g_swizzleYYYY], eax
	mov eax, [g_swizzleYYYY__uint4+0x4]
	mov [g_swizzleYYYY+0x4], eax
	mov eax, [g_swizzleYYYY__uint4+0x8]
	mov [g_swizzleYYYY+0x8], eax
	mov eax, [g_swizzleYYYY__uint4+0xc]
	mov [g_swizzleYYYY+0xc], eax
	mov eax, [g_swizzleZZZZ__uint4]
	mov [g_swizzleZZZZ], eax
	mov eax, [g_swizzleZZZZ__uint4+0x4]
	mov [g_swizzleZZZZ+0x4], eax
	mov eax, [g_swizzleZZZZ__uint4+0x8]
	mov [g_swizzleZZZZ+0x8], eax
	mov eax, [g_swizzleZZZZ__uint4+0xc]
	mov [g_swizzleZZZZ+0xc], eax
	mov eax, [g_swizzleWWWW__uint4]
	mov [g_swizzleWWWW], eax
	mov eax, [g_swizzleWWWW__uint4+0x4]
	mov [g_swizzleWWWW+0x4], eax
	mov eax, [g_swizzleWWWW__uint4+0x8]
	mov [g_swizzleWWWW+0x8], eax
	mov eax, [g_swizzleWWWW__uint4+0xc]
	mov [g_swizzleWWWW+0xc], eax
	mov eax, [g_selectX__uint4]
	mov [g_selectX], eax
	mov eax, [g_selectX__uint4+0x4]
	mov [g_selectX+0x4], eax
	mov eax, [g_selectX__uint4+0x8]
	mov [g_selectX+0x8], eax
	mov eax, [g_selectX__uint4+0xc]
	mov [g_selectX+0xc], eax
	mov eax, [g_selectY__uint4]
	mov [g_selectY], eax
	mov eax, [g_selectY__uint4+0x4]
	mov [g_selectY+0x4], eax
	mov eax, [g_selectY__uint4+0x8]
	mov [g_selectY+0x8], eax
	mov eax, [g_selectY__uint4+0xc]
	mov [g_selectY+0xc], eax
	mov eax, [g_selectZ__uint4]
	mov [g_selectZ], eax
	mov eax, [g_selectZ__uint4+0x4]
	mov [g_selectZ+0x4], eax
	mov eax, [g_selectZ__uint4+0x8]
	mov [g_selectZ+0x8], eax
	mov eax, [g_selectZ__uint4+0xc]
	mov [g_selectZ+0xc], eax
	mov eax, [g_selectW__uint4]
	mov [g_selectW], eax
	mov eax, [g_selectW__uint4+0x4]
	mov [g_selectW+0x4], eax
	mov eax, [g_selectW__uint4+0x8]
	mov [g_selectW+0x8], eax
	mov eax, [g_selectW__uint4+0xc]
	mov [g_selectW+0xc], eax
	mov eax, [g_keepYZW__uint4]
	mov [g_keepYZW], eax
	mov eax, [g_keepYZW__uint4+0x4]
	mov [g_keepYZW+0x4], eax
	mov eax, [g_keepYZW__uint4+0x8]
	mov [g_keepYZW+0x8], eax
	mov eax, [g_keepYZW__uint4+0xc]
	mov [g_keepYZW+0xc], eax
	mov eax, [g_keepXZW__uint4]
	mov [g_keepXZW], eax
	mov eax, [g_keepXZW__uint4+0x4]
	mov [g_keepXZW+0x4], eax
	mov eax, [g_keepXZW__uint4+0x8]
	mov [g_keepXZW+0x8], eax
	mov eax, [g_keepXZW__uint4+0xc]
	mov [g_keepXZW+0xc], eax
	mov eax, [g_keepXYW__uint4]
	mov [g_keepXYW], eax
	mov eax, [g_keepXYW__uint4+0x4]
	mov [g_keepXYW+0x4], eax
	mov eax, [g_keepXYW__uint4+0x8]
	mov [g_keepXYW+0x8], eax
	mov eax, [g_keepXYW__uint4+0xc]
	mov [g_keepXYW+0xc], eax
	mov eax, [g_keepXYZ__uint4]
	mov [g_keepXYZ], eax
	mov eax, [g_keepXYZ__uint4+0x4]
	mov [g_keepXYZ+0x4], eax
	mov eax, [g_keepXYZ__uint4+0x8]
	mov [g_keepXYZ+0x8], eax
	mov eax, [g_keepXYZ__uint4+0xc]
	mov [g_keepXYZ+0xc], eax
	mov eax, [g_keepXY__uint4]
	mov [g_keepXY], eax
	mov eax, [g_keepXY__uint4+0x4]
	mov [g_keepXY+0x4], eax
	mov eax, [g_keepXY__uint4+0x8]
	mov [g_keepXY+0x8], eax
	mov eax, [g_keepXY__uint4+0xc]
	mov [g_keepXY+0xc], eax
	mov eax, [g_keepZW__uint4]
	mov [g_keepZW], eax
	mov eax, [g_keepZW__uint4+0x4]
	mov [g_keepZW+0x4], eax
	mov eax, [g_keepZW__uint4+0x8]
	mov [g_keepZW+0x8], eax
	mov eax, [g_keepZW__uint4+0xc]
	mov [g_keepZW+0xc], eax
	mov eax, [g_keepX__uint4]
	mov [g_keepX], eax
	mov eax, [g_keepX__uint4+0x4]
	mov [g_keepX+0x4], eax
	mov eax, [g_keepX__uint4+0x8]
	mov [g_keepX+0x8], eax
	mov eax, [g_keepX__uint4+0xc]
	mov [g_keepX+0xc], eax
	mov eax, [g_keepZ__uint4]
	mov [g_keepZ], eax
	mov eax, [g_keepZ__uint4+0x4]
	mov [g_keepZ+0x4], eax
	mov eax, [g_keepZ__uint4+0x8]
	mov [g_keepZ+0x8], eax
	mov eax, [g_keepZ__uint4+0xc]
	mov [g_keepZ+0xc], eax
	pop ebp
	ret


;void XAnimCalcParts<unsigned short>(XAnimParts const*, unsigned char const*, float, float, DObjAnimMat*, bitarray<128u> const*)
_Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x16c
	mov esi, eax
	mov [ebp-0x13c], edx
	movss [ebp-0x140], xmm1
	mov [ebp-0x144], ecx
	mov eax, [eax+0x34]
	mov [ebp-0x100], eax
	mov edx, [esi+0x38]
	mov [ebp-0x108], edx
	mov ecx, [esi+0x3c]
	mov [ebp-0x134], ecx
	mov eax, [esi+0x44]
	mov [ebp-0x130], eax
	mov edx, [esi+0x40]
	mov [ebp-0x12c], edx
	mov ecx, [esi+0x4c]
	mov [ebp-0x124], ecx
	movzx eax, word [esi+0xe]
	movss [ebp-0x30], xmm0
	cvtsi2ss xmm1, eax
	mulss xmm1, xmm0
	movss [ebp-0x2c], xmm1
	cvttss2si eax, xmm1
	mov [ebp-0x28], eax
	movzx eax, byte [esi+0x12]
	movzx edi, al
	test al, al
	jnz _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_10
	mov dword [ebp-0xf8], 0x0
_Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_500:
	add esi, 0x12
	mov [ebp-0x138], esi
	movzx eax, byte [esi+0x1]
	add edi, eax
	mov [ebp-0xf0], edi
	mov ecx, [ebp-0xf8]
	cmp edi, ecx
	jbe _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_20
	mov dword [ebp-0x10c], 0x0
	jmp _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_30
_Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_60:
	lea eax, [ebx+edi*2+0x2]
	mov [ebp-0x108], eax
	mov edx, esi
	shr edx, 0x5
	mov ecx, esi
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	mov ecx, [ebp+0x8]
	test [ecx+edx*4], eax
	jz _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_40
_Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_80:
	mov eax, [ebp-0x12c]
	lea eax, [eax+edi*4+0x4]
	mov [ebp-0x12c], eax
	add dword [ebp-0x10c], 0x1
	mov eax, [ebp-0xf0]
	sub eax, [ebp-0xf8]
	cmp eax, [ebp-0x10c]
	jz _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_50
_Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_30:
	mov eax, [ebp-0x13c]
	add eax, [ebp-0x10c]
	mov edx, [ebp-0xf8]
	movzx esi, byte [eax+edx]
	mov ecx, [ebp-0x108]
	movzx edi, word [ecx]
	mov ebx, ecx
	add ebx, 0x2
	cmp edi, 0x3f
	jle _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_60
	lea eax, [edi-0x1]
	sar eax, 0x8
	add eax, 0x1
	mov [ebp-0x120], eax
	lea eax, [ebx+eax*2+0x2]
	mov [ebp-0x108], eax
	mov edx, esi
	shr edx, 0x5
	mov ecx, esi
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	mov ecx, [ebp+0x8]
	test [ecx+edx*4], eax
	jz _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_70
	mov eax, [ebp-0x124]
	lea eax, [eax+edi*2+0x2]
	mov [ebp-0x124], eax
	jmp _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_80
_Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_40:
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	lea eax, [ebp-0x1c]
	mov [esp], eax
	mov ecx, edi
	mov edx, ebx
	lea eax, [ebp-0x30]
	call _Z18XAnim_GetTimeIndexItEvPK9XAnimTimePKT_iPiPf
_Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_90:
	mov edx, [ebp-0x1c]
	mov ecx, [ebp-0x12c]
	lea edx, [ecx+edx*4]
	mov dword [ebp-0xc0], 0x0
	mov dword [ebp-0xbc], 0x0
	movsx eax, word [edx]
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_00003052]
	movss [ebp-0xb8], xmm0
	movsx eax, word [edx+0x2]
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_00003052]
	movss [ebp-0xb4], xmm0
	mov dword [ebp-0xd0], 0x0
	mov dword [ebp-0xcc], 0x0
	movsx eax, word [edx+0x4]
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_00003052]
	movss [ebp-0xc8], xmm0
	movsx eax, word [edx+0x6]
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_00003052]
	movss [ebp-0xc4], xmm0
	movss xmm3, dword [ebp-0x140]
	mulss xmm3, [ebp-0x24]
	movss xmm2, dword [ebp-0x140]
	subss xmm2, xmm3
	shl esi, 0x5
	mov eax, [ebp-0x144]
	add eax, esi
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0xc0]
	addss xmm0, [eax]
	movaps xmm1, xmm3
	mulss xmm1, [ebp-0xd0]
	addss xmm0, xmm1
	movss [eax], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0xbc]
	addss xmm0, [eax+0x4]
	movaps xmm1, xmm3
	mulss xmm1, [ebp-0xcc]
	addss xmm0, xmm1
	movss [eax+0x4], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0xb8]
	addss xmm0, [eax+0x8]
	movaps xmm1, xmm3
	mulss xmm1, [ebp-0xc8]
	addss xmm0, xmm1
	movss [eax+0x8], xmm0
	mulss xmm2, [ebp-0xb4]
	addss xmm2, [eax+0xc]
	mulss xmm3, [ebp-0xc4]
	addss xmm2, xmm3
	movss [eax+0xc], xmm2
	jmp _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_80
_Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_70:
	lea edx, [ebp-0x30]
	mov [esp+0x4], edx
	lea eax, [ebp-0x20]
	mov [esp], eax
	mov ecx, [ebp-0x120]
	mov edx, ebx
	lea eax, [ebp-0x30]
	call _Z18XAnim_GetTimeIndexItEvPK9XAnimTimePKT_iPiPf
	mov edx, [ebp-0x20]
	mov eax, edx
	shl eax, 0x8
	mov [ebp-0x20], eax
	mov ecx, edi
	sub ecx, eax
	mov eax, ecx
	mov ecx, 0x100
	cmp eax, 0x101
	cmovl ecx, eax
	shl edx, 0x9
	add edx, [ebp-0x124]
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	lea eax, [ebp-0x1c]
	mov [esp], eax
	lea eax, [ebp-0x30]
	call _Z18XAnim_GetTimeIndexItEvPK9XAnimTimePKT_iPiPf
	mov eax, [ebp-0x1c]
	add eax, [ebp-0x20]
	mov [ebp-0x1c], eax
	mov eax, [ebp-0x124]
	lea eax, [eax+edi*2+0x2]
	mov [ebp-0x124], eax
	jmp _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_90
_Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_50:
	mov edx, [ebp-0x10c]
	add [ebp-0xf8], edx
	mov ecx, [ebp-0x138]
_Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_470:
	movzx eax, byte [ecx+0x2]
	add eax, [ebp-0xf0]
	mov [ebp-0xec], eax
	mov edx, [ebp-0xf8]
	cmp eax, edx
	jbe _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_100
	mov dword [ebp-0x110], 0x0
	jmp _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_110
_Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_140:
	lea edx, [ebx+esi*2+0x2]
	mov [ebp-0x108], edx
	mov edx, edi
	shr edx, 0x5
	mov ecx, edi
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	mov ecx, [ebp+0x8]
	test [ecx+edx*4], eax
	jz _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_120
_Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_160:
	mov eax, [ebp-0x12c]
	lea eax, [eax+esi*8+0x8]
	mov [ebp-0x12c], eax
	add dword [ebp-0x110], 0x1
	mov eax, [ebp-0xec]
	sub eax, [ebp-0xf8]
	cmp [ebp-0x110], eax
	jz _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_130
_Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_110:
	mov eax, [ebp-0x13c]
	add eax, [ebp-0x110]
	mov ecx, [ebp-0xf8]
	movzx edi, byte [eax+ecx]
	mov eax, [ebp-0x108]
	movzx esi, word [eax]
	mov ebx, eax
	add ebx, 0x2
	cmp esi, 0x3f
	jle _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_140
	lea eax, [esi-0x1]
	sar eax, 0x8
	add eax, 0x1
	mov [ebp-0x11c], eax
	lea eax, [ebx+eax*2+0x2]
	mov [ebp-0x108], eax
	mov edx, edi
	shr edx, 0x5
	mov ecx, edi
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	mov ecx, [ebp+0x8]
	test [ecx+edx*4], eax
	jz _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_150
	mov eax, [ebp-0x124]
	lea eax, [eax+esi*2+0x2]
	mov [ebp-0x124], eax
	jmp _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_160
_Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_130:
	mov edx, [ebp-0x110]
	add [ebp-0xf8], edx
	mov ecx, [ebp-0x138]
	mov edx, [ebp-0xf8]
_Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_100:
	movzx eax, byte [ecx+0x3]
	add eax, [ebp-0xec]
	mov [ebp-0xe8], eax
	cmp eax, edx
	jbe _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_170
	mov dword [ebp-0x114], 0x0
	movss xmm1, dword [_float_0_00003052]
	mov ecx, [ebp-0x108]
	mov [ebp-0x15c], ecx
	mov edi, [ebp-0x13c]
	add edi, edx
	sub eax, edx
	mov [ebp-0x148], eax
_Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_190:
	movzx esi, byte [edi]
	mov eax, esi
	shr eax, 0x5
	mov ecx, esi
	and ecx, 0x1f
	mov edx, 0x80000000
	shr edx, cl
	mov ecx, [ebp+0x8]
	test [ecx+eax*4], edx
	jnz _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_180
	mov dword [ebp-0xc0], 0x0
	mov dword [ebp-0xbc], 0x0
	mov edx, [ebp-0x15c]
	movsx eax, word [edx]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [ebp-0xb8], xmm0
	movsx eax, word [edx+0x2]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [ebp-0xb4], xmm0
	mov ebx, [ebp-0xc0]
	mov [ebp-0xb0], ebx
	mov ecx, [ebp-0xbc]
	mov [ebp-0xac], ecx
	mov edx, [ebp-0xb8]
	mov [ebp-0xa8], edx
	mov eax, [ebp-0xb4]
	mov [ebp-0xa4], eax
	mov [ebp-0xd0], ebx
	mov [ebp-0xcc], ecx
	mov [ebp-0xc8], edx
	mov [ebp-0xc4], eax
	shl esi, 0x5
	mov eax, [ebp-0x144]
	add eax, esi
	movss xmm0, dword [ebp-0x140]
	mulss xmm0, [ebp-0xd0]
	addss xmm0, [eax]
	movss [eax], xmm0
	movss xmm0, dword [ebp-0x140]
	mulss xmm0, [ebp-0xcc]
	addss xmm0, [eax+0x4]
	movss [eax+0x4], xmm0
	movss xmm0, dword [ebp-0x140]
	mulss xmm0, [ebp-0xc8]
	addss xmm0, [eax+0x8]
	movss [eax+0x8], xmm0
	movss xmm0, dword [ebp-0x140]
	mulss xmm0, [ebp-0xc4]
	addss xmm0, [eax+0xc]
	movss [eax+0xc], xmm0
_Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_180:
	add dword [ebp-0x114], 0x1
	add edi, 0x1
	add dword [ebp-0x15c], 0x4
	mov ecx, [ebp-0x148]
	cmp [ebp-0x114], ecx
	jnz _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_190
	mov eax, [ebp-0x114]
	add [ebp-0xf8], eax
	mov edx, [ebp-0x108]
	lea edx, [edx+eax*4]
	mov [ebp-0x108], edx
	mov ecx, [ebp-0x138]
_Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_170:
	movzx eax, byte [ecx+0x4]
	add eax, [ebp-0xe8]
	cmp eax, [ebp-0xf8]
	jbe _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_200
	mov dword [ebp-0x118], 0x0
	movss xmm1, dword [_float_0_00003052]
	mov edi, [ebp-0x108]
	mov edx, [ebp-0x13c]
	add edx, [ebp-0xf8]
	mov [ebp-0x158], edx
	sub eax, [ebp-0xf8]
	mov [ebp-0x14c], eax
	mov ecx, edx
	jmp _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_210
_Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_230:
	mov ecx, [ebp-0x158]
_Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_210:
	movzx esi, byte [ecx]
	mov eax, esi
	shr eax, 0x5
	mov ecx, esi
	and ecx, 0x1f
	mov edx, 0x80000000
	shr edx, cl
	mov ecx, [ebp+0x8]
	test [ecx+eax*4], edx
	jnz _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_220
	movsx eax, word [edi]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [ebp-0xd0], xmm0
	movsx eax, word [edi+0x2]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [ebp-0xcc], xmm0
	movsx eax, word [edi+0x4]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [ebp-0xc8], xmm0
	movsx eax, word [edi+0x6]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [ebp-0xc4], xmm0
	mov ebx, [ebp-0xd0]
	mov [ebp-0xa0], ebx
	mov ecx, [ebp-0xcc]
	mov [ebp-0x9c], ecx
	mov edx, [ebp-0xc8]
	mov [ebp-0x98], edx
	mov eax, [ebp-0xc4]
	mov [ebp-0x94], eax
	mov [ebp-0xc0], ebx
	mov [ebp-0xbc], ecx
	mov [ebp-0xb8], edx
	mov [ebp-0xb4], eax
	shl esi, 0x5
	mov eax, [ebp-0x144]
	add eax, esi
	movss xmm0, dword [ebp-0x140]
	mulss xmm0, [ebp-0xc0]
	addss xmm0, [eax]
	movss [eax], xmm0
	movss xmm0, dword [ebp-0x140]
	mulss xmm0, [ebp-0xbc]
	addss xmm0, [eax+0x4]
	movss [eax+0x4], xmm0
	movss xmm0, dword [ebp-0x140]
	mulss xmm0, [ebp-0xb8]
	addss xmm0, [eax+0x8]
	movss [eax+0x8], xmm0
	movss xmm0, dword [ebp-0x140]
	mulss xmm0, [ebp-0xb4]
	addss xmm0, [eax+0xc]
	movss [eax+0xc], xmm0
_Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_220:
	add dword [ebp-0x118], 0x1
	add dword [ebp-0x158], 0x1
	add edi, 0x8
	mov eax, [ebp-0x118]
	cmp [ebp-0x14c], eax
	jnz _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_230
	mov edx, [ebp-0x108]
	lea edx, [edx+eax*8]
	mov [ebp-0x108], edx
	mov ecx, [ebp-0x138]
_Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_200:
	movzx eax, byte [ecx+0x5]
	movzx edx, al
	mov [ebp-0xe4], edx
	test al, al
	jz _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_240
	mov dword [ebp-0xf4], 0x0
	jmp _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_250
_Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_280:
	lea eax, [ebx+ecx*2+0x2]
	mov [ebp-0x108], eax
	mov edx, esi
	shr edx, 0x5
	mov ecx, esi
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	mov ecx, [ebp+0x8]
	test [ecx+edx*4], eax
	jz _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_260
	mov edx, [ebp-0x104]
_Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_300:
	add dword [ebp-0xf4], 0x1
	add dword [ebp-0x134], 0x18
	lea eax, [edx+edx*2]
	mov ecx, [ebp-0x130]
	lea eax, [ecx+eax+0x3]
	mov [ebp-0x130], eax
	mov eax, [ebp-0xf4]
	cmp [ebp-0xe4], eax
	jbe _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_270
_Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_250:
	mov ecx, [ebp-0x100]
	movzx eax, byte [ecx]
	mov edx, [ebp-0x13c]
	movzx esi, byte [edx+eax]
	add ecx, 0x1
	mov [ebp-0x100], ecx
	mov ecx, [ebp-0x108]
	movzx ecx, word [ecx]
	mov [ebp-0x104], ecx
	mov ebx, [ebp-0x108]
	add ebx, 0x2
	cmp ecx, 0x3f
	jle _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_280
	mov eax, ecx
	sub eax, 0x1
	sar eax, 0x8
	lea edi, [eax+0x1]
	lea eax, [ebx+edi*2+0x2]
	mov [ebp-0x108], eax
	mov edx, esi
	shr edx, 0x5
	mov ecx, esi
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	mov ecx, [ebp+0x8]
	test [ecx+edx*4], eax
	jz _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_290
	mov edx, [ebp-0x124]
	mov eax, [ebp-0x104]
	lea edx, [edx+eax*2+0x2]
	mov [ebp-0x124], edx
	mov edx, eax
	jmp _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_300
_Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_150:
	lea edx, [ebp-0x30]
	mov [esp+0x4], edx
	lea eax, [ebp-0x1c]
	mov [esp], eax
	mov ecx, [ebp-0x11c]
	mov edx, ebx
	lea eax, [ebp-0x30]
	call _Z18XAnim_GetTimeIndexItEvPK9XAnimTimePKT_iPiPf
	mov edx, [ebp-0x1c]
	mov eax, edx
	shl eax, 0x8
	mov [ebp-0x1c], eax
	mov ecx, esi
	sub ecx, eax
	mov eax, ecx
	mov ecx, 0x100
	cmp eax, 0x101
	cmovl ecx, eax
	shl edx, 0x9
	add edx, [ebp-0x124]
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	lea eax, [ebp-0x20]
	mov [esp], eax
	lea eax, [ebp-0x30]
	call _Z18XAnim_GetTimeIndexItEvPK9XAnimTimePKT_iPiPf
	mov eax, [ebp-0x20]
	add eax, [ebp-0x1c]
	mov [ebp-0x20], eax
	mov eax, [ebp-0x124]
	lea eax, [eax+esi*2+0x2]
	mov [ebp-0x124], eax
_Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_310:
	mov edx, [ebp-0x20]
	mov ecx, [ebp-0x12c]
	lea edx, [ecx+edx*8]
	movsx eax, word [edx]
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_00003052]
	movss [ebp-0xd0], xmm0
	movsx eax, word [edx+0x2]
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_00003052]
	movss [ebp-0xcc], xmm0
	movsx eax, word [edx+0x4]
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_00003052]
	movss [ebp-0xc8], xmm0
	movsx eax, word [edx+0x6]
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_00003052]
	movss [ebp-0xc4], xmm0
	movsx eax, word [edx+0x8]
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_00003052]
	movss [ebp-0xc0], xmm0
	movsx eax, word [edx+0xa]
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_00003052]
	movss [ebp-0xbc], xmm0
	movsx eax, word [edx+0xc]
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_00003052]
	movss [ebp-0xb8], xmm0
	movsx eax, word [edx+0xe]
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_00003052]
	movss [ebp-0xb4], xmm0
	movss xmm3, dword [ebp-0x140]
	mulss xmm3, [ebp-0x24]
	movss xmm2, dword [ebp-0x140]
	subss xmm2, xmm3
	shl edi, 0x5
	mov eax, [ebp-0x144]
	add eax, edi
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0xd0]
	addss xmm0, [eax]
	movaps xmm1, xmm3
	mulss xmm1, [ebp-0xc0]
	addss xmm0, xmm1
	movss [eax], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0xcc]
	addss xmm0, [eax+0x4]
	movaps xmm1, xmm3
	mulss xmm1, [ebp-0xbc]
	addss xmm0, xmm1
	movss [eax+0x4], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0xc8]
	addss xmm0, [eax+0x8]
	movaps xmm1, xmm3
	mulss xmm1, [ebp-0xb8]
	addss xmm0, xmm1
	movss [eax+0x8], xmm0
	mulss xmm2, [ebp-0xc4]
	addss xmm2, [eax+0xc]
	mulss xmm3, [ebp-0xb4]
	addss xmm2, xmm3
	movss [eax+0xc], xmm2
	jmp _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_160
_Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_120:
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	lea eax, [ebp-0x20]
	mov [esp], eax
	mov ecx, esi
	mov edx, ebx
	lea eax, [ebp-0x30]
	call _Z18XAnim_GetTimeIndexItEvPK9XAnimTimePKT_iPiPf
	jmp _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_310
_Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_260:
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	lea eax, [ebp-0x24]
	mov [esp], eax
	mov ecx, [ebp-0x104]
	mov edx, ebx
	lea eax, [ebp-0x30]
	call _Z18XAnim_GetTimeIndexItEvPK9XAnimTimePKT_iPiPf
_Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_320:
	mov eax, [ebp-0x24]
	lea eax, [eax+eax*2]
	add eax, [ebp-0x130]
	movzx edx, byte [eax]
	cvtsi2ss xmm0, edx
	movss [ebp-0xc0], xmm0
	movzx edx, byte [eax+0x1]
	cvtsi2ss xmm0, edx
	movss [ebp-0xbc], xmm0
	movzx edx, byte [eax+0x2]
	cvtsi2ss xmm0, edx
	movss [ebp-0xb8], xmm0
	mov dword [ebp-0xb4], 0x0
	lea edx, [eax+0x3]
	movzx eax, byte [eax+0x3]
	cvtsi2ss xmm0, eax
	movss [ebp-0xd0], xmm0
	movzx eax, byte [edx+0x1]
	cvtsi2ss xmm0, eax
	movss [ebp-0xcc], xmm0
	movzx eax, byte [edx+0x2]
	cvtsi2ss xmm0, eax
	movss [ebp-0xc8], xmm0
	mov dword [ebp-0xc4], 0x0
	shl esi, 0x5
	add esi, [ebp-0x144]
	movss xmm4, dword [ebp-0x20]
	mov ecx, [ebp-0xd0]
	mov [ebp-0x90], ecx
	mov eax, [ebp-0xcc]
	mov [ebp-0x8c], eax
	mov edx, [ebp-0xc8]
	mov [ebp-0x88], edx
	mov edi, [ebp-0xc4]
	mov [ebp-0x84], edi
	mov ebx, [ebp-0xc0]
	mov [ebp-0x80], ebx
	mov ecx, [ebp-0xbc]
	mov [ebp-0x7c], ecx
	mov edx, [ebp-0xb8]
	mov [ebp-0x78], edx
	mov eax, [ebp-0xb4]
	mov [ebp-0x74], eax
	mov [ebp-0x40], ebx
	mov [ebp-0x3c], ecx
	mov [ebp-0x38], edx
	mov [ebp-0x34], eax
	mov ecx, [ebp-0xd0]
	mov [ebp-0x50], ecx
	mov eax, [ebp-0xcc]
	mov [ebp-0x4c], eax
	mov edx, [ebp-0xc8]
	mov [ebp-0x48], edx
	mov [ebp-0x44], edi
	movss xmm1, dword [ebp-0x40]
	movss xmm2, dword [ebp-0x3c]
	movss xmm3, dword [ebp-0x38]
	movss xmm0, dword [ebp-0x4c]
	subss xmm0, xmm2
	mulss xmm0, xmm4
	addss xmm2, xmm0
	mov ecx, [ebp-0x134]
	mulss xmm2, [ecx+0x10]
	addss xmm2, [ecx+0x4]
	movss xmm0, dword [ebp-0x48]
	subss xmm0, xmm3
	mulss xmm0, xmm4
	addss xmm3, xmm0
	mulss xmm3, [ecx+0x14]
	addss xmm3, [ecx+0x8]
	lea eax, [esi+0x10]
	movss xmm0, dword [ebp-0x50]
	subss xmm0, xmm1
	mulss xmm4, xmm0
	addss xmm1, xmm4
	mulss xmm1, [ecx+0xc]
	addss xmm1, [ecx]
	mulss xmm1, [ebp-0x140]
	addss xmm1, [esi+0x10]
	movss [esi+0x10], xmm1
	mulss xmm2, [ebp-0x140]
	addss xmm2, [eax+0x4]
	movss [eax+0x4], xmm2
	mulss xmm3, [ebp-0x140]
	addss xmm3, [eax+0x8]
	movss [eax+0x8], xmm3
	movss xmm0, dword [ebp-0x140]
	addss xmm0, [esi+0x1c]
	movss [esi+0x1c], xmm0
	mov edx, [ebp-0x104]
	jmp _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_300
_Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_290:
	lea ecx, [ebp-0x30]
	mov [esp+0x4], ecx
	lea eax, [ebp-0x1c]
	mov [esp], eax
	mov ecx, edi
	mov edx, ebx
	lea eax, [ebp-0x30]
	call _Z18XAnim_GetTimeIndexItEvPK9XAnimTimePKT_iPiPf
	mov edx, [ebp-0x1c]
	mov eax, edx
	shl eax, 0x8
	mov [ebp-0x1c], eax
	mov ecx, [ebp-0x104]
	sub ecx, eax
	mov eax, ecx
	mov ecx, 0x100
	cmp eax, 0x101
	cmovl ecx, eax
	shl edx, 0x9
	add edx, [ebp-0x124]
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	lea eax, [ebp-0x24]
	mov [esp], eax
	lea eax, [ebp-0x30]
	call _Z18XAnim_GetTimeIndexItEvPK9XAnimTimePKT_iPiPf
	mov eax, [ebp-0x24]
	add eax, [ebp-0x1c]
	mov [ebp-0x24], eax
	mov edx, [ebp-0x124]
	mov eax, [ebp-0x104]
	lea edx, [edx+eax*2+0x2]
	mov [ebp-0x124], edx
	jmp _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_320
_Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_240:
	mov dword [ebp-0xf4], 0x0
	mov ecx, [ebp-0xf4]
_Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_510:
	mov edx, [ebp-0x138]
	movzx eax, byte [edx+0x6]
	add eax, [ebp-0xe4]
	mov [ebp-0xe0], eax
	cmp eax, ecx
	ja _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_330
	mov edi, ecx
_Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_420:
	mov ecx, [ebp-0x138]
	movzx eax, byte [ecx+0x7]
	add eax, [ebp-0xe0]
	mov [ebp-0xdc], eax
	cmp eax, edi
	jbe _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_340
	mov esi, [ebp-0x100]
	sub eax, edi
	add eax, esi
	mov [ebp-0x150], eax
_Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_360:
	movzx eax, byte [esi]
	mov edx, [ebp-0x13c]
	movzx ebx, byte [edx+eax]
	mov edx, ebx
	shr edx, 0x5
	mov ecx, ebx
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	mov ecx, [ebp+0x8]
	test [ecx+edx*4], eax
	jnz _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_350
	shl ebx, 0x5
	mov edx, [ebp-0x144]
	add edx, ebx
	lea eax, [edx+0x10]
	movss xmm0, dword [ebp-0x140]
	mov ecx, [ebp-0x134]
	mulss xmm0, [ecx]
	addss xmm0, [edx+0x10]
	movss [edx+0x10], xmm0
	movss xmm0, dword [ebp-0x140]
	mulss xmm0, [ecx+0x4]
	addss xmm0, [eax+0x4]
	movss [eax+0x4], xmm0
	movss xmm0, dword [ebp-0x140]
	mulss xmm0, [ecx+0x8]
	addss xmm0, [eax+0x8]
	movss [eax+0x8], xmm0
	movss xmm0, dword [ebp-0x140]
	addss xmm0, [edx+0x1c]
	movss [edx+0x1c], xmm0
_Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_350:
	add esi, 0x1
	add dword [ebp-0x134], 0xc
	cmp [ebp-0x150], esi
	jnz _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_360
	mov eax, edi
	sub eax, [ebp-0x100]
	mov edx, [ebp-0x150]
	lea edi, [eax+edx]
	mov [ebp-0x100], edx
	mov ecx, [ebp-0x138]
_Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_340:
	movzx eax, byte [ecx+0x8]
	add eax, [ebp-0xdc]
	cmp eax, edi
	jbe _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_370
	mov esi, [ebp-0x100]
	sub eax, edi
	lea edi, [esi+eax]
_Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_390:
	movzx eax, byte [esi]
	mov edx, [ebp-0x13c]
	movzx ebx, byte [eax+edx]
	mov edx, ebx
	shr edx, 0x5
	mov ecx, ebx
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	mov ecx, [ebp+0x8]
	test [ecx+edx*4], eax
	jnz _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_380
	shl ebx, 0x5
	mov eax, [ebp-0x144]
	add eax, ebx
	movss xmm0, dword [ebp-0x140]
	addss xmm0, [eax+0x1c]
	movss [eax+0x1c], xmm0
_Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_380:
	add esi, 0x1
	cmp esi, edi
	jnz _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_390
_Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_370:
	add esp, 0x16c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_330:
	mov [ebp-0xfc], ecx
	mov edx, [ebp-0xe0]
	mov [ebp-0x154], edx
	jmp _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_400
_Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_430:
	lea eax, [ebx+ecx*2+0x2]
	mov [ebp-0x108], eax
	mov edx, esi
	shr edx, 0x5
	mov ecx, esi
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	mov ecx, [ebp+0x8]
	test [ecx+edx*4], eax
	jz _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_410
	mov ecx, [ebp-0x128]
_Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_450:
	add dword [ebp-0xfc], 0x1
	add dword [ebp-0x134], 0x18
	lea eax, [ecx+ecx*2]
	mov edx, [ebp-0x12c]
	lea edx, [edx+eax*2+0x6]
	mov [ebp-0x12c], edx
	mov edi, [ebp-0x154]
	cmp edi, [ebp-0xfc]
	jz _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_420
_Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_400:
	mov ecx, [ebp-0x100]
	movzx eax, byte [ecx]
	mov edx, [ebp-0x13c]
	movzx esi, byte [edx+eax]
	add ecx, 0x1
	mov [ebp-0x100], ecx
	mov ecx, [ebp-0x108]
	movzx ecx, word [ecx]
	mov [ebp-0x128], ecx
	mov ebx, [ebp-0x108]
	add ebx, 0x2
	cmp ecx, 0x3f
	jle _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_430
	mov eax, ecx
	sub eax, 0x1
	sar eax, 0x8
	lea edi, [eax+0x1]
	lea eax, [ebx+edi*2+0x2]
	mov [ebp-0x108], eax
	mov edx, esi
	shr edx, 0x5
	mov ecx, esi
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	mov ecx, [ebp+0x8]
	test [ecx+edx*4], eax
	jz _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_440
	mov edx, [ebp-0x124]
	mov eax, [ebp-0x128]
	lea edx, [edx+eax*2+0x2]
	mov [ebp-0x124], edx
	mov ecx, eax
	jmp _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_450
_Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_410:
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	lea eax, [ebp-0x1c]
	mov [esp], eax
	mov ecx, [ebp-0x128]
	mov edx, ebx
	lea eax, [ebp-0x30]
	call _Z18XAnim_GetTimeIndexItEvPK9XAnimTimePKT_iPiPf
_Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_460:
	mov eax, [ebp-0x1c]
	lea eax, [eax+eax*2]
	mov ecx, [ebp-0x12c]
	lea eax, [ecx+eax*2]
	movzx edx, word [eax]
	cvtsi2ss xmm0, edx
	movss [ebp-0x40], xmm0
	movzx edx, word [eax+0x2]
	cvtsi2ss xmm0, edx
	movss [ebp-0x3c], xmm0
	movzx edx, word [eax+0x4]
	cvtsi2ss xmm0, edx
	movss [ebp-0x38], xmm0
	mov dword [ebp-0x34], 0x0
	lea edx, [eax+0x6]
	movzx eax, word [eax+0x6]
	cvtsi2ss xmm0, eax
	movss [ebp-0x50], xmm0
	movzx eax, word [edx+0x2]
	cvtsi2ss xmm0, eax
	movss [ebp-0x4c], xmm0
	movzx eax, word [edx+0x4]
	cvtsi2ss xmm0, eax
	movss [ebp-0x48], xmm0
	mov dword [ebp-0x44], 0x0
	shl esi, 0x5
	add esi, [ebp-0x144]
	movss xmm4, dword [ebp-0x20]
	mov eax, [ebp-0x50]
	mov [ebp-0x70], eax
	mov edx, [ebp-0x4c]
	mov [ebp-0x6c], edx
	mov ecx, [ebp-0x48]
	mov [ebp-0x68], ecx
	mov edi, [ebp-0x44]
	mov [ebp-0x64], edi
	mov ebx, [ebp-0x40]
	mov [ebp-0x60], ebx
	mov ecx, [ebp-0x3c]
	mov [ebp-0x5c], ecx
	mov edx, [ebp-0x38]
	mov [ebp-0x58], edx
	mov eax, [ebp-0x34]
	mov [ebp-0x54], eax
	mov [ebp-0xc0], ebx
	mov [ebp-0xbc], ecx
	mov [ebp-0xb8], edx
	mov [ebp-0xb4], eax
	mov eax, [ebp-0x50]
	mov [ebp-0xd0], eax
	mov edx, [ebp-0x4c]
	mov [ebp-0xcc], edx
	mov ecx, [ebp-0x48]
	mov [ebp-0xc8], ecx
	mov [ebp-0xc4], edi
	movss xmm1, dword [ebp-0xc0]
	movss xmm2, dword [ebp-0xbc]
	movss xmm3, dword [ebp-0xb8]
	movss xmm0, dword [ebp-0xcc]
	subss xmm0, xmm2
	mulss xmm0, xmm4
	addss xmm2, xmm0
	mov eax, [ebp-0x134]
	mulss xmm2, [eax+0x10]
	addss xmm2, [eax+0x4]
	movss xmm0, dword [ebp-0xc8]
	subss xmm0, xmm3
	mulss xmm0, xmm4
	addss xmm3, xmm0
	mulss xmm3, [eax+0x14]
	addss xmm3, [eax+0x8]
	lea eax, [esi+0x10]
	movss xmm0, dword [ebp-0xd0]
	subss xmm0, xmm1
	mulss xmm4, xmm0
	addss xmm1, xmm4
	mov edx, [ebp-0x134]
	mulss xmm1, [edx+0xc]
	addss xmm1, [edx]
	mulss xmm1, [ebp-0x140]
	addss xmm1, [esi+0x10]
	movss [esi+0x10], xmm1
	mulss xmm2, [ebp-0x140]
	addss xmm2, [eax+0x4]
	movss [eax+0x4], xmm2
	mulss xmm3, [ebp-0x140]
	addss xmm3, [eax+0x8]
	movss [eax+0x8], xmm3
	movss xmm0, dword [ebp-0x140]
	addss xmm0, [esi+0x1c]
	movss [esi+0x1c], xmm0
	mov ecx, [ebp-0x128]
	jmp _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_450
_Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_440:
	lea ecx, [ebp-0x30]
	mov [esp+0x4], ecx
	lea eax, [ebp-0x24]
	mov [esp], eax
	mov ecx, edi
	mov edx, ebx
	lea eax, [ebp-0x30]
	call _Z18XAnim_GetTimeIndexItEvPK9XAnimTimePKT_iPiPf
	mov edx, [ebp-0x24]
	mov eax, edx
	shl eax, 0x8
	mov [ebp-0x24], eax
	mov ecx, [ebp-0x128]
	sub ecx, eax
	mov eax, ecx
	mov ecx, 0x100
	cmp eax, 0x101
	cmovl ecx, eax
	shl edx, 0x9
	add edx, [ebp-0x124]
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	lea eax, [ebp-0x1c]
	mov [esp], eax
	lea eax, [ebp-0x30]
	call _Z18XAnim_GetTimeIndexItEvPK9XAnimTimePKT_iPiPf
	mov eax, [ebp-0x1c]
	add eax, [ebp-0x24]
	mov [ebp-0x1c], eax
	mov edx, [ebp-0x124]
	mov eax, [ebp-0x128]
	lea edx, [edx+eax*2+0x2]
	mov [ebp-0x124], edx
	jmp _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_460
_Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_20:
	mov ecx, esi
	jmp _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_470
_Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_10:
	mov dword [ebp-0xf8], 0x0
_Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_490:
	mov eax, [ebp-0x13c]
	mov edx, [ebp-0xf8]
	movzx ebx, byte [eax+edx]
	mov eax, ebx
	shr eax, 0x5
	mov ecx, ebx
	and ecx, 0x1f
	mov edx, 0x80000000
	shr edx, cl
	mov ecx, [ebp+0x8]
	test [ecx+eax*4], edx
	jnz _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_480
	shl ebx, 0x5
	mov eax, [ebp-0x144]
	add eax, ebx
	movss xmm0, dword [ebp-0x140]
	addss xmm0, [eax+0xc]
	movss [eax+0xc], xmm0
_Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_480:
	add dword [ebp-0xf8], 0x1
	cmp edi, [ebp-0xf8]
	ja _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_490
	jmp _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_500
_Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_270:
	mov ecx, eax
	jmp _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE_510
	nop


;XAnimCalc(DObj_s const*, XAnimInfo*, float, unsigned char, unsigned char, XAnimCalcAnimInfo*, int, DObjAnimMat*)
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat:
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_900:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x27c
	mov [ebp-0x214], eax
	mov edi, edx
	movaps xmm7, xmm0
	mov esi, ecx
	movzx eax, byte [ebp+0x8]
	mov [ebp-0x215], al
	cmp word [edx+0x12], 0x0
	jz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_10
	test cl, cl
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_20
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_470:
	mov ecx, [edi+0x14]
	mov [ebp-0x1dc], ecx
	movzx eax, word [edi+0x12]
	mov [esp], eax
	movss [ebp-0x268], xmm7
	call _Z18SL_ConvertToStringj
	mov esi, eax
	mov edx, [ebp+0xc]
	mov ecx, eax
	mov ebx, 0x4
	movss xmm7, dword [ebp-0x268]
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_30:
	mov eax, [edx+0x6010]
	not eax
	and eax, [ecx]
	or [edx+0x6000], eax
	add edx, 0x4
	add ecx, 0x4
	sub ebx, 0x1
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_30
	movss xmm5, dword [edi+0x18]
	ucomiss xmm5, [_float_1_00000000]
	jp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_40
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_40
	mov edx, [ebp-0x1dc]
	mov ecx, [ebp-0x1dc]
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_620:
	add esi, 0x11
	mov [ebp-0x1fc], esi
	mov eax, [ebp+0xc]
	add eax, 0x6010
	mov [ebp-0x1e4], eax
	mov edx, [edx+0x34]
	mov [ebp-0x158], edx
	mov ecx, [ecx+0x38]
	mov [ebp-0x1f8], ecx
	mov ebx, [ebp-0x1dc]
	mov ebx, [ebx+0x3c]
	mov [ebp-0x1f4], ebx
	mov eax, [ebp-0x1dc]
	mov eax, [eax+0x44]
	mov [ebp-0x1f0], eax
	mov edx, [ebp-0x1dc]
	mov edx, [edx+0x40]
	mov [ebp-0x1ec], edx
	mov ecx, [ebp-0x1dc]
	xor eax, eax
	cmp word [ecx+0xe], 0xff
	setbe al
	mov [ebp-0x1e8], eax
	movzx eax, byte [ecx+0x12]
	movzx esi, al
	test al, al
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_50
	mov dword [ebp-0x154], 0x0
	mov ebx, [ebp-0x1dc]
	movzx eax, byte [ebx+0x13]
	add esi, eax
	mov [ebp-0x134], esi
	mov eax, [ebp-0x154]
	cmp esi, eax
	jbe _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_60
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_520:
	mov dword [ebp-0x18c], 0x0
	movss xmm1, dword [_float_0_00003052]
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_70
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_100:
	mov eax, [ebp-0x158]
	lea eax, [ebx+eax+0x1]
	mov [ebp-0x158], eax
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_630:
	mov edx, esi
	shr edx, 0x5
	mov ecx, esi
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	mov ecx, [ebp-0x1e4]
	test [ecx+edx*4], eax
	jz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_80
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_120:
	mov eax, [ebp-0x1ec]
	lea edi, [eax+ebx*4]
	add edi, 0x4
	mov [ebp-0x1ec], edi
	add dword [ebp-0x18c], 0x1
	mov eax, [ebp-0x134]
	sub eax, [ebp-0x154]
	cmp [ebp-0x18c], eax
	jz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_90
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_70:
	mov eax, [ebp-0x154]
	add eax, [ebp-0x18c]
	mov edx, [ebp-0x1fc]
	movzx esi, byte [eax+edx]
	mov ecx, [ebp-0x1f8]
	movzx ebx, word [ecx]
	add ecx, 0x2
	mov [ebp-0x1f8], ecx
	mov eax, [ebp-0x1e8]
	test eax, eax
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_100
	cmp ebx, 0x3f
	ja _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_110
	mov edx, [ebp-0x1f8]
	lea edx, [edx+ebx*2+0x2]
	mov [ebp-0x1f8], edx
	mov edx, esi
	shr edx, 0x5
	mov ecx, esi
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	mov ecx, [ebp-0x1e4]
	test [ecx+edx*4], eax
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_120
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_80:
	mov edx, [ebp-0x1ec]
	lea edi, [edx+ebx*4]
	mov dword [ebp-0xd0], 0x0
	mov dword [ebp-0xcc], 0x0
	movsx eax, word [edi]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [ebp-0xc8], xmm0
	movsx eax, word [edi+0x2]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [ebp-0xc4], xmm0
	mov ebx, [ebp-0xd0]
	mov [ebp-0x80], ebx
	mov ecx, [ebp-0xcc]
	mov [ebp-0x7c], ecx
	mov edx, [ebp-0xc8]
	mov [ebp-0x78], edx
	mov eax, [ebp-0xc4]
	mov [ebp-0x74], eax
	mov [ebp-0xe0], ebx
	mov [ebp-0xdc], ecx
	mov [ebp-0xd8], edx
	mov [ebp-0xd4], eax
	shl esi, 0x5
	mov eax, [ebp+0x14]
	add eax, esi
	movaps xmm0, xmm7
	mulss xmm0, [ebp-0xe0]
	addss xmm0, [eax]
	movss [eax], xmm0
	movaps xmm0, xmm7
	mulss xmm0, [ebp-0xdc]
	addss xmm0, [eax+0x4]
	movss [eax+0x4], xmm0
	movaps xmm0, xmm7
	mulss xmm0, [ebp-0xd8]
	addss xmm0, [eax+0x8]
	movss [eax+0x8], xmm0
	movaps xmm0, xmm7
	mulss xmm0, [ebp-0xd4]
	addss xmm0, [eax+0xc]
	movss [eax+0xc], xmm0
	add edi, 0x4
	mov [ebp-0x1ec], edi
	add dword [ebp-0x18c], 0x1
	mov eax, [ebp-0x134]
	sub eax, [ebp-0x154]
	cmp [ebp-0x18c], eax
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_70
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_90:
	mov ecx, [ebp-0x18c]
	add [ebp-0x154], ecx
	mov ebx, [ebp-0x1dc]
	mov edx, [ebp-0x154]
	movzx eax, byte [ebx+0x14]
	add eax, [ebp-0x134]
	mov [ebp-0x130], eax
	cmp eax, edx
	ja _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_130
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_530:
	movzx eax, byte [ebx+0x15]
	add eax, [ebp-0x130]
	mov [ebp-0x12c], eax
	cmp eax, edx
	jbe _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_140
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_600:
	mov dword [ebp-0x194], 0x0
	movss xmm1, dword [_float_0_00003052]
	mov ecx, [ebp-0x1f8]
	mov [ebp-0x24c], ecx
	mov edi, [ebp-0x1fc]
	add edi, edx
	sub eax, edx
	mov [ebp-0x21c], eax
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_160:
	movzx esi, byte [edi]
	mov eax, esi
	shr eax, 0x5
	mov ecx, esi
	and ecx, 0x1f
	mov edx, 0x80000000
	shr edx, cl
	mov ebx, [ebp-0x1e4]
	test [ebx+eax*4], edx
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_150
	mov dword [ebp-0xd0], 0x0
	mov dword [ebp-0xcc], 0x0
	mov edx, [ebp-0x24c]
	movsx eax, word [edx]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [ebp-0xc8], xmm0
	movsx eax, word [edx+0x2]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [ebp-0xc4], xmm0
	mov ebx, [ebp-0xd0]
	mov [ebp-0x60], ebx
	mov ecx, [ebp-0xcc]
	mov [ebp-0x5c], ecx
	mov edx, [ebp-0xc8]
	mov [ebp-0x58], edx
	mov eax, [ebp-0xc4]
	mov [ebp-0x54], eax
	mov [ebp-0xe0], ebx
	mov [ebp-0xdc], ecx
	mov [ebp-0xd8], edx
	mov [ebp-0xd4], eax
	shl esi, 0x5
	mov eax, [ebp+0x14]
	add eax, esi
	movaps xmm0, xmm7
	mulss xmm0, [ebp-0xe0]
	addss xmm0, [eax]
	movss [eax], xmm0
	movaps xmm0, xmm7
	mulss xmm0, [ebp-0xdc]
	addss xmm0, [eax+0x4]
	movss [eax+0x4], xmm0
	movaps xmm0, xmm7
	mulss xmm0, [ebp-0xd8]
	addss xmm0, [eax+0x8]
	movss [eax+0x8], xmm0
	movaps xmm0, xmm7
	mulss xmm0, [ebp-0xd4]
	addss xmm0, [eax+0xc]
	movss [eax+0xc], xmm0
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_150:
	add dword [ebp-0x194], 0x1
	add edi, 0x1
	add dword [ebp-0x24c], 0x4
	mov ecx, [ebp-0x21c]
	cmp [ebp-0x194], ecx
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_160
	mov ebx, [ebp-0x194]
	add [ebp-0x154], ebx
	mov eax, [ebp-0x1f8]
	lea eax, [eax+ebx*4]
	mov [ebp-0x1f8], eax
	mov edx, [ebp-0x1dc]
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_610:
	movzx eax, byte [edx+0x16]
	add eax, [ebp-0x12c]
	cmp eax, [ebp-0x154]
	jbe _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_170
	mov dword [ebp-0x198], 0x0
	movss xmm1, dword [_float_0_00003052]
	mov edi, [ebp-0x1f8]
	mov ecx, [ebp-0x1fc]
	add ecx, [ebp-0x154]
	mov [ebp-0x248], ecx
	sub eax, [ebp-0x154]
	mov [ebp-0x220], eax
	mov ebx, ecx
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_180
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_200:
	mov ebx, [ebp-0x248]
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_180:
	movzx esi, byte [ebx]
	mov eax, esi
	shr eax, 0x5
	mov ecx, esi
	and ecx, 0x1f
	mov edx, 0x80000000
	shr edx, cl
	mov ecx, [ebp-0x1e4]
	test [ecx+eax*4], edx
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_190
	movsx eax, word [edi]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [ebp-0xe0], xmm0
	movsx eax, word [edi+0x2]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [ebp-0xdc], xmm0
	movsx eax, word [edi+0x4]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [ebp-0xd8], xmm0
	movsx eax, word [edi+0x6]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [ebp-0xd4], xmm0
	mov ebx, [ebp-0xe0]
	mov [ebp-0x50], ebx
	mov ecx, [ebp-0xdc]
	mov [ebp-0x4c], ecx
	mov edx, [ebp-0xd8]
	mov [ebp-0x48], edx
	mov eax, [ebp-0xd4]
	mov [ebp-0x44], eax
	mov [ebp-0xd0], ebx
	mov [ebp-0xcc], ecx
	mov [ebp-0xc8], edx
	mov [ebp-0xc4], eax
	shl esi, 0x5
	mov eax, [ebp+0x14]
	add eax, esi
	movaps xmm0, xmm7
	mulss xmm0, [ebp-0xd0]
	addss xmm0, [eax]
	movss [eax], xmm0
	movaps xmm0, xmm7
	mulss xmm0, [ebp-0xcc]
	addss xmm0, [eax+0x4]
	movss [eax+0x4], xmm0
	movaps xmm0, xmm7
	mulss xmm0, [ebp-0xc8]
	addss xmm0, [eax+0x8]
	movss [eax+0x8], xmm0
	movaps xmm0, xmm7
	mulss xmm0, [ebp-0xc4]
	addss xmm0, [eax+0xc]
	movss [eax+0xc], xmm0
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_190:
	add dword [ebp-0x198], 0x1
	add dword [ebp-0x248], 0x1
	add edi, 0x8
	mov ebx, [ebp-0x198]
	cmp [ebp-0x220], ebx
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_200
	mov eax, [ebp-0x1f8]
	lea eax, [eax+ebx*8]
	mov [ebp-0x1f8], eax
	mov edx, [ebp-0x1dc]
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_170:
	movzx eax, byte [edx+0x17]
	movzx ecx, al
	mov [ebp-0x128], ecx
	test al, al
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_210
	xor edi, edi
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_750:
	mov ebx, [ebp-0x1dc]
	movzx eax, byte [ebx+0x18]
	add eax, [ebp-0x128]
	mov [ebp-0x124], eax
	cmp eax, edi
	jbe _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_220
	movaps xmm3, xmm7
	mulss xmm3, [_float_0_00000000]
	mov [ebp-0x150], edi
	mov [ebp-0x244], eax
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_230
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_250:
	lea edx, [edx+esi+0x1]
	mov [ebp-0x158], edx
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_650:
	mov edx, ebx
	shr edx, 0x5
	mov ecx, ebx
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	mov ecx, [ebp-0x1e4]
	test [ecx+edx*4], eax
	jz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_240
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_270:
	lea eax, [esi+esi*2]
	lea esi, [eax+eax]
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_280:
	add dword [ebp-0x150], 0x1
	add dword [ebp-0x1f4], 0x18
	mov ecx, [ebp-0x1ec]
	lea esi, [ecx+esi+0x6]
	mov [ebp-0x1ec], esi
	mov edi, [ebp-0x244]
	cmp edi, [ebp-0x150]
	jz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_220
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_230:
	mov edx, [ebp-0x158]
	movzx eax, byte [edx]
	mov ecx, [ebp-0x1fc]
	movzx ebx, byte [ecx+eax]
	add edx, 0x1
	mov [ebp-0x158], edx
	mov eax, [ebp-0x1f8]
	movzx esi, word [eax]
	add eax, 0x2
	mov [ebp-0x1f8], eax
	mov eax, [ebp-0x1e8]
	test eax, eax
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_250
	cmp esi, 0x3f
	ja _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_260
	mov ecx, [ebp-0x1f8]
	lea ecx, [ecx+esi*2+0x2]
	mov [ebp-0x1f8], ecx
	mov edx, ebx
	shr edx, 0x5
	mov ecx, ebx
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	mov ecx, [ebp-0x1e4]
	test [ecx+edx*4], eax
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_270
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_240:
	shl ebx, 0x5
	add ebx, [ebp+0x14]
	lea ecx, [ebx+0x10]
	mov eax, [ebx+0x10]
	mov [ebp-0x90], eax
	mov eax, [ecx+0x4]
	mov [ebp-0x8c], eax
	mov eax, [ecx+0x8]
	mov [ebp-0x88], eax
	mov eax, [ecx+0xc]
	mov [ebp-0x84], eax
	lea eax, [esi+esi*2]
	lea esi, [eax+eax]
	mov edx, [ebp-0x1ec]
	add edx, esi
	movzx eax, word [edx]
	cvtsi2ss xmm0, eax
	movss [ebp-0xd0], xmm0
	movzx eax, word [edx+0x2]
	cvtsi2ss xmm0, eax
	movss [ebp-0xcc], xmm0
	movzx eax, word [edx+0x4]
	cvtsi2ss xmm0, eax
	movss [ebp-0xc8], xmm0
	mov dword [ebp-0xc4], 0x0
	mov edx, [ebp-0x1f4]
	mov eax, [edx]
	mov [ebp-0xc0], eax
	mov eax, [edx+0x4]
	mov [ebp-0xbc], eax
	mov eax, [edx+0x8]
	mov [ebp-0xb8], eax
	mov dword [ebp-0xb4], 0x0
	movss xmm0, dword [edx+0xc]
	movss [ebp-0xe0], xmm0
	movss xmm1, dword [edx+0x10]
	movss [ebp-0xdc], xmm1
	movss xmm2, dword [edx+0x14]
	movss [ebp-0xd8], xmm2
	mov dword [ebp-0xd4], 0x0
	mulss xmm0, [ebp-0xd0]
	addss xmm0, [ebp-0xc0]
	movss [ebp-0xa0], xmm0
	mulss xmm1, [ebp-0xcc]
	addss xmm1, [ebp-0xbc]
	movss [ebp-0x9c], xmm1
	mulss xmm2, [ebp-0xc8]
	addss xmm2, [ebp-0xb8]
	movss [ebp-0x98], xmm2
	mov dword [ebp-0x94], 0x0
	movaps xmm0, xmm7
	mulss xmm0, [ebp-0xa0]
	addss xmm0, [ebp-0x90]
	movss [ebp-0x90], xmm0
	movaps xmm0, xmm7
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x8c]
	movss [ebp-0x8c], xmm0
	movaps xmm0, xmm7
	mulss xmm0, xmm2
	addss xmm0, [ebp-0x88]
	movss [ebp-0x88], xmm0
	movaps xmm0, xmm3
	addss xmm0, [ebp-0x84]
	movss [ebp-0x84], xmm0
	mov eax, [ebp-0x90]
	mov [ecx], eax
	mov eax, [ebp-0x8c]
	mov [ecx+0x4], eax
	mov eax, [ebp-0x88]
	mov [ecx+0x8], eax
	mov eax, [ebp-0x84]
	mov [ecx+0xc], eax
	movaps xmm0, xmm7
	addss xmm0, [ebx+0x1c]
	movss [ebx+0x1c], xmm0
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_280
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_10:
	movzx eax, word [edx+0xc]
	movzx edx, ax
	test ax, ax
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_290
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_340:
	mov ecx, esi
	test cl, cl
	jz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_300
	mov eax, [ebp-0x214]
	cmp byte [eax+0xa], 0x0
	jz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_300
	xor ebx, ebx
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_320:
	mov edx, ebx
	shr edx, 0x5
	mov ecx, ebx
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	mov ecx, [ebp+0xc]
	test [ecx+edx*4+0x6010], eax
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_310
	xor eax, eax
	mov edx, [ebp+0x14]
	mov [edx], eax
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	mov [edx+0xc], eax
	mov [edx+0x1c], eax
	mov edx, [ebp+0x14]
	add edx, 0x10
	mov ecx, [ebp+0x14]
	mov [ecx+0x10], eax
	mov [edx+0x4], eax
	mov [edx+0x8], eax
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_310:
	add ebx, 0x1
	add dword [ebp+0x14], 0x20
	mov edx, [ebp-0x214]
	movzx eax, byte [edx+0xa]
	cmp eax, ebx
	jg _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_320
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_300:
	add esp, 0x27c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_290:
	mov [esp], edx
	movss [ebp-0x268], xmm7
	call _Z11GetAnimInfoi
	mov ebx, eax
	movss xmm0, dword [eax+0x2c]
	movss [ebp-0x20c], xmm0
	movss xmm7, dword [ebp-0x268]
	ucomiss xmm0, [_float_0_00000000]
	jp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_330
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_330
	movzx eax, word [eax+0xa]
	movzx edx, ax
	test ax, ax
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_290
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_340
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_40:
	mov ebx, [ebp-0x1dc]
	movzx eax, word [ebx+0xe]
	test ax, ax
	jz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_350
	cmp ax, 0xff
	ja _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_360
	add esi, 0x11
	mov [ebp-0x1e0], esi
	mov ebx, [ebp+0xc]
	add ebx, 0x6010
	mov [ebp-0x1b4], ebx
	mov edx, [ebp-0x1dc]
	mov edx, [edx+0x34]
	mov [ebp-0x178], edx
	mov ecx, [ebp-0x1dc]
	mov ecx, [ecx+0x38]
	mov [ebp-0x1d4], ecx
	mov ebx, [ebp-0x1dc]
	mov ebx, [ebx+0x3c]
	mov [ebp-0x1b8], ebx
	mov edx, [ebp-0x1dc]
	mov edx, [edx+0x44]
	mov [ebp-0x1d0], edx
	mov ecx, [ebp-0x1dc]
	mov ecx, [ecx+0x40]
	mov [ebp-0x1cc], ecx
	movzx eax, ax
	cvtsi2ss xmm6, eax
	mulss xmm6, xmm5
	cvttss2si ebx, xmm6
	mov [ebp-0x19c], ebx
	mov edx, [ebp-0x1dc]
	movzx eax, byte [edx+0x12]
	movzx esi, al
	test al, al
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_370
	mov dword [ebp-0x164], 0x0
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_830:
	mov ebx, [ebp-0x1dc]
	add ebx, 0x12
	mov [ebp-0x1d8], ebx
	movzx eax, byte [ebx+0x1]
	add esi, eax
	mov [ebp-0x14c], esi
	mov eax, [ebp-0x164]
	cmp esi, eax
	jbe _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_380
	mov esi, [ebp-0x178]
	mov dword [ebp-0x17c], 0x0
	movss xmm4, dword [_float_0_00003052]
	mov ebx, esi
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_460:
	mov edx, [ebp-0x17c]
	mov ecx, [ebp-0x1d4]
	movzx edx, word [ecx+edx*2]
	mov [ebp-0x168], edx
	lea ebx, [ebx+edx+0x1]
	mov [ebp-0x178], ebx
	mov eax, [ebp-0x164]
	add eax, [ebp-0x17c]
	mov edx, [ebp-0x1e0]
	movzx eax, byte [eax+edx]
	mov [ebp-0x1c4], eax
	mov edx, eax
	shr edx, 0x5
	mov ecx, eax
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	mov ecx, [ebp-0x1b4]
	test [ecx+edx*4], eax
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_390
	cvtsi2ss xmm0, dword [ebp-0x168]
	mulss xmm0, xmm5
	cvttss2si ecx, xmm0
	lea edx, [esi+ecx]
	movzx eax, byte [edx]
	cmp [ebp-0x19c], eax
	jae _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_400
	xor edi, edi
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_420:
	lea ebx, [ecx-0x1]
	lea edx, [esi+ebx]
	movzx eax, byte [edx]
	cmp [ebp-0x19c], eax
	jae _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_410
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_440:
	lea ecx, [edi+ebx]
	shr ecx, 1
	lea edx, [esi+ecx]
	movzx eax, byte [edx]
	cmp [ebp-0x19c], eax
	jb _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_420
	lea edi, [ecx+0x1]
	movzx eax, byte [esi+edi]
	cmp [ebp-0x19c], eax
	jb _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_430
	mov ecx, ebx
	lea ebx, [ecx-0x1]
	lea edx, [esi+ebx]
	movzx eax, byte [edx]
	cmp [ebp-0x19c], eax
	jb _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_440
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_410:
	lea edi, [edx+0x1]
	mov ecx, ebx
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_840:
	movzx edx, byte [edx]
	movzx eax, dl
	cvtsi2ss xmm0, eax
	movaps xmm3, xmm6
	subss xmm3, xmm0
	movzx eax, byte [edi]
	movzx edx, dl
	sub eax, edx
	cvtsi2ss xmm0, eax
	divss xmm3, xmm0
	mov ebx, [ebp-0x1cc]
	lea edx, [ebx+ecx*4]
	mov dword [ebp-0xe0], 0x0
	mov dword [ebp-0xdc], 0x0
	movsx eax, word [edx]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm4
	movss [ebp-0xd8], xmm0
	movsx eax, word [edx+0x2]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm4
	movss [ebp-0xd4], xmm0
	mov dword [ebp-0xd0], 0x0
	mov dword [ebp-0xcc], 0x0
	movsx eax, word [edx+0x4]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm4
	movss [ebp-0xc8], xmm0
	movsx eax, word [edx+0x6]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm4
	movss [ebp-0xc4], xmm0
	mulss xmm3, xmm7
	movaps xmm2, xmm7
	subss xmm2, xmm3
	shl dword [ebp-0x1c4], 0x5
	mov eax, [ebp+0x14]
	add eax, [ebp-0x1c4]
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0xe0]
	addss xmm0, [eax]
	movaps xmm1, xmm3
	mulss xmm1, [ebp-0xd0]
	addss xmm0, xmm1
	movss [eax], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0xdc]
	addss xmm0, [eax+0x4]
	movaps xmm1, xmm3
	mulss xmm1, [ebp-0xcc]
	addss xmm0, xmm1
	movss [eax+0x4], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0xd8]
	addss xmm0, [eax+0x8]
	movaps xmm1, xmm3
	mulss xmm1, [ebp-0xc8]
	addss xmm0, xmm1
	movss [eax+0x8], xmm0
	mulss xmm2, [ebp-0xd4]
	addss xmm2, [eax+0xc]
	mulss xmm3, [ebp-0xc4]
	addss xmm2, xmm3
	movss [eax+0xc], xmm2
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_390:
	mov edx, [ebp-0x1cc]
	mov eax, [ebp-0x168]
	lea edx, [edx+eax*4+0x4]
	mov [ebp-0x1cc], edx
	add dword [ebp-0x17c], 0x1
	mov eax, [ebp-0x14c]
	sub eax, [ebp-0x164]
	cmp eax, [ebp-0x17c]
	jz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_450
	mov esi, [ebp-0x178]
	mov ebx, esi
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_460
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_20:
	mov edx, [ebp-0x214]
	cmp byte [edx+0xa], 0x0
	jz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_470
	mov ebx, [ebp+0x14]
	xor esi, esi
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_490:
	mov edx, esi
	shr edx, 0x5
	mov ecx, esi
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	mov ecx, [ebp+0xc]
	test [ecx+edx*4+0x6010], eax
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_480
	xor eax, eax
	mov [ebx], eax
	mov [ebx+0x4], eax
	mov [ebx+0x8], eax
	mov [ebx+0xc], eax
	mov [ebx+0x1c], eax
	lea edx, [ebx+0x10]
	mov [ebx+0x10], eax
	mov [edx+0x4], eax
	mov [edx+0x8], eax
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_480:
	add esi, 0x1
	add ebx, 0x20
	mov edx, [ebp-0x214]
	movzx eax, byte [edx+0xa]
	cmp eax, esi
	jg _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_490
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_470
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_50:
	mov dword [ebp-0x154], 0x0
	mov edi, 0x80000000
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_510:
	mov eax, [ebp-0x1fc]
	mov edx, [ebp-0x154]
	movzx ebx, byte [eax+edx]
	mov eax, ebx
	shr eax, 0x5
	mov ecx, ebx
	and ecx, 0x1f
	mov edx, edi
	shr edx, cl
	mov ecx, [ebp-0x1e4]
	test [ecx+eax*4], edx
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_500
	shl ebx, 0x5
	mov eax, [ebp+0x14]
	add eax, ebx
	movaps xmm0, xmm7
	addss xmm0, [eax+0xc]
	movss [eax+0xc], xmm0
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_500:
	add dword [ebp-0x154], 0x1
	cmp esi, [ebp-0x154]
	ja _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_510
	mov ebx, [ebp-0x1dc]
	movzx eax, byte [ebx+0x13]
	add esi, eax
	mov [ebp-0x134], esi
	mov eax, [ebp-0x154]
	cmp esi, eax
	ja _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_520
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_60:
	mov edx, eax
	movzx eax, byte [ebx+0x14]
	add eax, [ebp-0x134]
	mov [ebp-0x130], eax
	cmp eax, edx
	jbe _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_530
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_130:
	mov dword [ebp-0x190], 0x0
	movss xmm1, dword [_float_0_00003052]
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_540
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_570:
	mov edx, [ebp-0x158]
	lea edx, [ebx+edx+0x1]
	mov [ebp-0x158], edx
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_640:
	mov edx, edi
	shr edx, 0x5
	mov ecx, edi
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	mov ecx, [ebp-0x1e4]
	test [ecx+edx*4], eax
	jz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_550
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_590:
	mov eax, [ebp-0x1ec]
	lea esi, [eax+ebx*8]
	add esi, 0x8
	mov [ebp-0x1ec], esi
	add dword [ebp-0x190], 0x1
	mov eax, [ebp-0x130]
	sub eax, [ebp-0x154]
	cmp eax, [ebp-0x190]
	jz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_560
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_540:
	mov eax, [ebp-0x154]
	add eax, [ebp-0x190]
	mov ecx, [ebp-0x1fc]
	movzx edi, byte [eax+ecx]
	mov eax, [ebp-0x1f8]
	movzx ebx, word [eax]
	add eax, 0x2
	mov [ebp-0x1f8], eax
	mov eax, [ebp-0x1e8]
	test eax, eax
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_570
	cmp ebx, 0x3f
	ja _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_580
	mov ecx, [ebp-0x1f8]
	lea ecx, [ecx+ebx*2+0x2]
	mov [ebp-0x1f8], ecx
	mov edx, edi
	shr edx, 0x5
	mov ecx, edi
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	mov ecx, [ebp-0x1e4]
	test [ecx+edx*4], eax
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_590
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_550:
	mov edx, [ebp-0x1ec]
	lea esi, [edx+ebx*8]
	movsx eax, word [esi]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [ebp-0xe0], xmm0
	movsx eax, word [esi+0x2]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [ebp-0xdc], xmm0
	movsx eax, word [esi+0x4]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [ebp-0xd8], xmm0
	movsx eax, word [esi+0x6]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [ebp-0xd4], xmm0
	mov ebx, [ebp-0xe0]
	mov [ebp-0x70], ebx
	mov ecx, [ebp-0xdc]
	mov [ebp-0x6c], ecx
	mov edx, [ebp-0xd8]
	mov [ebp-0x68], edx
	mov eax, [ebp-0xd4]
	mov [ebp-0x64], eax
	mov [ebp-0xd0], ebx
	mov [ebp-0xcc], ecx
	mov [ebp-0xc8], edx
	mov [ebp-0xc4], eax
	shl edi, 0x5
	mov eax, [ebp+0x14]
	add eax, edi
	movaps xmm0, xmm7
	mulss xmm0, [ebp-0xd0]
	addss xmm0, [eax]
	movss [eax], xmm0
	movaps xmm0, xmm7
	mulss xmm0, [ebp-0xcc]
	addss xmm0, [eax+0x4]
	movss [eax+0x4], xmm0
	movaps xmm0, xmm7
	mulss xmm0, [ebp-0xc8]
	addss xmm0, [eax+0x8]
	movss [eax+0x8], xmm0
	movaps xmm0, xmm7
	mulss xmm0, [ebp-0xc4]
	addss xmm0, [eax+0xc]
	movss [eax+0xc], xmm0
	add esi, 0x8
	mov [ebp-0x1ec], esi
	add dword [ebp-0x190], 0x1
	mov eax, [ebp-0x130]
	sub eax, [ebp-0x154]
	cmp eax, [ebp-0x190]
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_540
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_560:
	mov ecx, [ebp-0x190]
	add [ebp-0x154], ecx
	mov ebx, [ebp-0x1dc]
	mov edx, [ebp-0x154]
	movzx eax, byte [ebx+0x15]
	add eax, [ebp-0x130]
	mov [ebp-0x12c], eax
	cmp eax, edx
	ja _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_600
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_140:
	mov edx, ebx
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_610
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_350:
	mov edx, ebx
	mov ecx, ebx
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_620
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_110:
	lea eax, [ebx-0x1]
	shr eax, 0x8
	mov ecx, [ebp-0x1f8]
	lea ecx, [ecx+eax*2+0x4]
	mov [ebp-0x1f8], ecx
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_630
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_580:
	lea eax, [ebx-0x1]
	shr eax, 0x8
	mov edx, [ebp-0x1f8]
	lea edx, [edx+eax*2+0x4]
	mov [ebp-0x1f8], edx
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_640
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_260:
	lea eax, [esi-0x1]
	shr eax, 0x8
	mov edx, [ebp-0x1f8]
	lea edx, [edx+eax*2+0x4]
	mov [ebp-0x1f8], edx
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_650
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_220:
	mov ebx, [ebp-0x1dc]
	movzx eax, byte [ebx+0x19]
	add eax, [ebp-0x124]
	mov [ebp-0x120], eax
	cmp eax, edi
	ja _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_660
	mov edx, [ebp-0x158]
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_720:
	mov ecx, [ebp-0x1dc]
	movzx eax, byte [ecx+0x1a]
	add eax, [ebp-0x120]
	cmp eax, edi
	jbe _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_300
	mov esi, edx
	sub eax, edi
	lea edi, [edx+eax]
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_680:
	movzx eax, byte [esi]
	mov edx, [ebp-0x1fc]
	movzx ebx, byte [edx+eax]
	mov edx, ebx
	shr edx, 0x5
	mov ecx, ebx
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	mov ecx, [ebp-0x1e4]
	test [ecx+edx*4], eax
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_670
	shl ebx, 0x5
	mov eax, [ebp+0x14]
	add eax, ebx
	movaps xmm0, xmm7
	addss xmm0, [eax+0x1c]
	movss [eax+0x1c], xmm0
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_670:
	add esi, 0x1
	cmp esi, edi
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_680
	add esp, 0x27c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_660:
	movaps xmm1, xmm7
	mulss xmm1, [_float_0_00000000]
	mov esi, [ebp-0x158]
	sub eax, edi
	add eax, esi
	mov [ebp-0x240], eax
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_690
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_710:
	add esi, 0x1
	add dword [ebp-0x1f4], 0xc
	mov edx, [ebp-0x240]
	cmp edx, esi
	jz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_700
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_690:
	movzx eax, byte [esi]
	mov edx, [ebp-0x1fc]
	movzx ebx, byte [edx+eax]
	mov edx, ebx
	shr edx, 0x5
	mov ecx, ebx
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	mov ecx, [ebp-0x1e4]
	test [ecx+edx*4], eax
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_710
	shl ebx, 0x5
	mov ecx, [ebp+0x14]
	add ecx, ebx
	lea edx, [ecx+0x10]
	mov eax, [ecx+0x10]
	mov [ebp-0xd0], eax
	mov eax, [edx+0x4]
	mov [ebp-0xcc], eax
	mov eax, [edx+0x8]
	mov [ebp-0xc8], eax
	mov eax, [edx+0xc]
	mov [ebp-0xc4], eax
	mov ebx, [ebp-0x1f4]
	mov eax, [ebx]
	mov [ebp-0xe0], eax
	mov eax, [ebx+0x4]
	mov [ebp-0xdc], eax
	mov eax, [ebx+0x8]
	mov [ebp-0xd8], eax
	mov dword [ebp-0xd4], 0x0
	movaps xmm0, xmm7
	mulss xmm0, [ebp-0xe0]
	addss xmm0, [ebp-0xd0]
	movss [ebp-0xd0], xmm0
	movaps xmm0, xmm7
	mulss xmm0, [ebp-0xdc]
	addss xmm0, [ebp-0xcc]
	movss [ebp-0xcc], xmm0
	movaps xmm0, xmm7
	mulss xmm0, [ebp-0xd8]
	addss xmm0, [ebp-0xc8]
	movss [ebp-0xc8], xmm0
	movaps xmm0, xmm1
	addss xmm0, [ebp-0xc4]
	movss [ebp-0xc4], xmm0
	mov eax, [ebp-0xd0]
	mov [ecx+0x10], eax
	mov eax, [ebp-0xcc]
	mov [edx+0x4], eax
	mov eax, [ebp-0xc8]
	mov [edx+0x8], eax
	mov eax, [ebp-0xc4]
	mov [edx+0xc], eax
	movaps xmm0, xmm7
	addss xmm0, [ecx+0x1c]
	movss [ecx+0x1c], xmm0
	add esi, 0x1
	add dword [ebp-0x1f4], 0xc
	mov edx, [ebp-0x240]
	cmp edx, esi
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_690
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_700:
	mov eax, edi
	sub eax, [ebp-0x158]
	lea edi, [eax+edx]
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_720
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_210:
	movaps xmm3, xmm7
	mulss xmm3, [_float_0_00000000]
	xor edi, edi
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_730
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_760:
	mov eax, [ebp-0x158]
	lea eax, [eax+esi+0x1]
	mov [ebp-0x158], eax
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_800:
	mov edx, ebx
	shr edx, 0x5
	mov ecx, ebx
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	mov ecx, [ebp-0x1e4]
	test [ecx+edx*4], eax
	jz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_740
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_780:
	lea esi, [esi+esi*2]
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_790:
	add edi, 0x1
	add dword [ebp-0x1f4], 0x18
	mov ecx, [ebp-0x1f0]
	lea esi, [ecx+esi+0x3]
	mov [ebp-0x1f0], esi
	cmp edi, [ebp-0x128]
	jae _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_750
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_730:
	mov ebx, [ebp-0x158]
	movzx eax, byte [ebx]
	mov edx, [ebp-0x1fc]
	movzx ebx, byte [edx+eax]
	add dword [ebp-0x158], 0x1
	mov ecx, [ebp-0x1f8]
	movzx esi, word [ecx]
	add ecx, 0x2
	mov [ebp-0x1f8], ecx
	mov eax, [ebp-0x1e8]
	test eax, eax
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_760
	cmp esi, 0x3f
	ja _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_770
	mov edx, [ebp-0x1f8]
	lea edx, [edx+esi*2+0x2]
	mov [ebp-0x1f8], edx
	mov edx, ebx
	shr edx, 0x5
	mov ecx, ebx
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	mov ecx, [ebp-0x1e4]
	test [ecx+edx*4], eax
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_780
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_740:
	shl ebx, 0x5
	add ebx, [ebp+0x14]
	lea ecx, [ebx+0x10]
	mov eax, [ebx+0x10]
	mov [ebp-0xd0], eax
	mov eax, [ecx+0x4]
	mov [ebp-0xcc], eax
	mov eax, [ecx+0x8]
	mov [ebp-0xc8], eax
	mov eax, [ecx+0xc]
	mov [ebp-0xc4], eax
	lea esi, [esi+esi*2]
	mov edx, [ebp-0x1f0]
	add edx, esi
	movzx eax, byte [edx]
	cvtsi2ss xmm0, eax
	movss [ebp-0x90], xmm0
	movzx eax, byte [edx+0x1]
	cvtsi2ss xmm0, eax
	movss [ebp-0x8c], xmm0
	movzx eax, byte [edx+0x2]
	cvtsi2ss xmm0, eax
	movss [ebp-0x88], xmm0
	mov dword [ebp-0x84], 0x0
	mov edx, [ebp-0x1f4]
	mov eax, [edx]
	mov [ebp-0xc0], eax
	mov eax, [edx+0x4]
	mov [ebp-0xbc], eax
	mov eax, [edx+0x8]
	mov [ebp-0xb8], eax
	mov dword [ebp-0xb4], 0x0
	movss xmm0, dword [edx+0xc]
	movss [ebp-0xa0], xmm0
	movss xmm1, dword [edx+0x10]
	movss [ebp-0x9c], xmm1
	movss xmm2, dword [edx+0x14]
	movss [ebp-0x98], xmm2
	mov dword [ebp-0x94], 0x0
	mulss xmm0, [ebp-0x90]
	addss xmm0, [ebp-0xc0]
	movss [ebp-0xe0], xmm0
	mulss xmm1, [ebp-0x8c]
	addss xmm1, [ebp-0xbc]
	movss [ebp-0xdc], xmm1
	mulss xmm2, [ebp-0x88]
	addss xmm2, [ebp-0xb8]
	movss [ebp-0xd8], xmm2
	mov dword [ebp-0xd4], 0x0
	movaps xmm0, xmm7
	mulss xmm0, [ebp-0xe0]
	addss xmm0, [ebp-0xd0]
	movss [ebp-0xd0], xmm0
	movaps xmm0, xmm7
	mulss xmm0, xmm1
	addss xmm0, [ebp-0xcc]
	movss [ebp-0xcc], xmm0
	movaps xmm0, xmm7
	mulss xmm0, xmm2
	addss xmm0, [ebp-0xc8]
	movss [ebp-0xc8], xmm0
	movaps xmm0, xmm3
	addss xmm0, [ebp-0xc4]
	movss [ebp-0xc4], xmm0
	mov eax, [ebp-0xd0]
	mov [ebx+0x10], eax
	mov eax, [ebp-0xcc]
	mov [ecx+0x4], eax
	mov eax, [ebp-0xc8]
	mov [ecx+0x8], eax
	mov eax, [ebp-0xc4]
	mov [ecx+0xc], eax
	movaps xmm0, xmm7
	addss xmm0, [ebx+0x1c]
	movss [ebx+0x1c], xmm0
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_790
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_770:
	lea eax, [esi-0x1]
	shr eax, 0x8
	mov ecx, [ebp-0x1f8]
	lea ecx, [ecx+eax*2+0x4]
	mov [ebp-0x1f8], ecx
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_800
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_370:
	mov dword [ebp-0x164], 0x0
	mov edi, 0x80000000
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_820:
	mov ecx, [ebp-0x1e0]
	mov eax, [ebp-0x164]
	movzx ebx, byte [ecx+eax]
	mov eax, ebx
	shr eax, 0x5
	mov ecx, ebx
	and ecx, 0x1f
	mov edx, edi
	shr edx, cl
	mov ecx, [ebp-0x1b4]
	test [ecx+eax*4], edx
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_810
	shl ebx, 0x5
	mov eax, [ebp+0x14]
	add eax, ebx
	movaps xmm0, xmm7
	addss xmm0, [eax+0xc]
	movss [eax+0xc], xmm0
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_810:
	add dword [ebp-0x164], 0x1
	cmp esi, [ebp-0x164]
	ja _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_820
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_830
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_400:
	lea edi, [edx+0x1]
	movzx eax, byte [edx+0x1]
	cmp [ebp-0x19c], eax
	jb _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_840
	lea ebx, [ecx+0x1]
	mov edi, [ebp-0x168]
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_870:
	add ebx, 0x1
	movzx eax, byte [esi+ebx]
	cmp [ebp-0x19c], eax
	jb _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_850
	lea ecx, [edi+ebx]
	shr ecx, 1
	lea edx, [esi+ecx]
	movzx eax, byte [edx]
	cmp [ebp-0x19c], eax
	jb _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_860
	lea ebx, [ecx+0x1]
	movzx eax, byte [esi+ebx]
	cmp [ebp-0x19c], eax
	jae _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_870
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_430:
	lea edi, [edx+0x1]
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_840
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_860:
	mov edi, ecx
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_870
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_330:
	cmp word [ebx+0x12], 0x0
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_880
	test byte [ebx+0x14], 0x10
	jz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_880
	mov eax, 0x1
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1540:
	test eax, eax
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_340
	movzx eax, word [ebx+0xa]
	movzx edx, ax
	mov [ebp-0x210], edx
	test ax, ax
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_890
	mov dword [ebp-0x200], 0x0
	mov dword [ebp-0x204], 0x0
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1680:
	mov eax, esi
	movzx ecx, al
	mov edx, [ebp+0x14]
	mov [esp+0xc], edx
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	movzx eax, byte [ebp-0x215]
	mov [esp], eax
	movaps xmm0, xmm7
	mov edx, ebx
	mov eax, [ebp-0x214]
	movss [ebp-0x268], xmm7
	call _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_900
	movss xmm7, dword [ebp-0x268]
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1700:
	mov ecx, [ebp-0x210]
	test ecx, ecx
	jz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_300
	mov edx, [ebp-0x200]
	test edx, edx
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_910
	mov eax, [ebp+0x10]
	shl eax, 0x5
	add eax, [ebp+0xc]
	mov [ebp-0x204], eax
	mov ecx, [ebp-0x214]
	movzx eax, byte [ecx+0xa]
	add [ebp+0x10], eax
	cmp dword [ebp+0x10], 0x300
	jg _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_920
	mov eax, [ebp-0x204]
	test eax, eax
	jz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_300
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_910:
	xor esi, esi
	mov ebx, [ebp-0x210]
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_930
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_960:
	movzx eax, word [ebx+0xa]
	movzx ecx, ax
	mov [ebp-0x210], ecx
	test ax, ax
	jz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_940
	mov ebx, ecx
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_930:
	mov [esp], ebx
	movss [ebp-0x268], xmm7
	call _Z11GetAnimInfoi
	mov ebx, eax
	movss xmm0, dword [eax+0x2c]
	movss xmm7, dword [ebp-0x268]
	ucomiss xmm0, [_float_0_00000000]
	jp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_950
	jz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_960
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_950:
	xor esi, 0x1
	mov eax, esi
	movzx ecx, al
	mov edx, [ebp-0x204]
	mov [esp+0xc], edx
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	mov edx, ebx
	mov eax, [ebp-0x214]
	call _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_900
	mov esi, 0x1
	movss xmm7, dword [ebp-0x268]
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_960
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_380:
	mov edx, ebx
	mov ecx, eax
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1530:
	movzx eax, byte [edx+0x2]
	add eax, [ebp-0x14c]
	mov [ebp-0x148], eax
	cmp eax, ecx
	jbe _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_970
	mov dword [ebp-0x180], 0x0
	movss xmm4, dword [_float_0_00003052]
	mov edx, [ebp-0x178]
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1050:
	mov ebx, [ebp-0x180]
	mov eax, [ebp-0x1d4]
	movzx ebx, word [eax+ebx*2]
	mov [ebp-0x16c], ebx
	lea edx, [edx+ebx+0x1]
	mov [ebp-0x174], edx
	mov eax, [ebp-0x164]
	add eax, [ebp-0x180]
	mov ecx, [ebp-0x1e0]
	movzx edi, byte [eax+ecx]
	mov edx, edi
	shr edx, 0x5
	mov ecx, edi
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	mov ebx, [ebp-0x1b4]
	test [ebx+edx*4], eax
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_980
	cvtsi2ss xmm0, dword [ebp-0x16c]
	mulss xmm0, xmm5
	cvttss2si ecx, xmm0
	mov edx, [ebp-0x178]
	add edx, ecx
	movzx eax, byte [edx]
	cmp [ebp-0x19c], eax
	jae _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_990
	xor esi, esi
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1010:
	lea ebx, [ecx-0x1]
	mov edx, [ebp-0x178]
	add edx, ebx
	movzx eax, byte [edx]
	cmp [ebp-0x19c], eax
	jae _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1000
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1030:
	lea ecx, [esi+ebx]
	shr ecx, 1
	mov edx, [ebp-0x178]
	add edx, ecx
	movzx eax, byte [edx]
	cmp [ebp-0x19c], eax
	jb _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1010
	lea esi, [ecx+0x1]
	mov eax, [ebp-0x178]
	movzx eax, byte [eax+esi]
	cmp [ebp-0x19c], eax
	jb _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1020
	mov ecx, ebx
	lea ebx, [ecx-0x1]
	mov edx, [ebp-0x178]
	add edx, ebx
	movzx eax, byte [edx]
	cmp [ebp-0x19c], eax
	jb _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1030
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1000:
	lea esi, [edx+0x1]
	mov ecx, ebx
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1060:
	movzx edx, byte [edx]
	movzx eax, dl
	cvtsi2ss xmm0, eax
	movaps xmm3, xmm6
	subss xmm3, xmm0
	movzx eax, byte [esi]
	movzx edx, dl
	sub eax, edx
	cvtsi2ss xmm0, eax
	divss xmm3, xmm0
	mov ebx, [ebp-0x1cc]
	lea edx, [ebx+ecx*8]
	movsx eax, word [edx]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm4
	movss [ebp-0xd0], xmm0
	movsx eax, word [edx+0x2]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm4
	movss [ebp-0xcc], xmm0
	movsx eax, word [edx+0x4]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm4
	movss [ebp-0xc8], xmm0
	movsx eax, word [edx+0x6]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm4
	movss [ebp-0xc4], xmm0
	movsx eax, word [edx+0x8]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm4
	movss [ebp-0xe0], xmm0
	movsx eax, word [edx+0xa]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm4
	movss [ebp-0xdc], xmm0
	movsx eax, word [edx+0xc]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm4
	movss [ebp-0xd8], xmm0
	movsx eax, word [edx+0xe]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm4
	movss [ebp-0xd4], xmm0
	mulss xmm3, xmm7
	movaps xmm2, xmm7
	subss xmm2, xmm3
	shl edi, 0x5
	mov eax, [ebp+0x14]
	add eax, edi
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0xd0]
	addss xmm0, [eax]
	movaps xmm1, xmm3
	mulss xmm1, [ebp-0xe0]
	addss xmm0, xmm1
	movss [eax], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0xcc]
	addss xmm0, [eax+0x4]
	movaps xmm1, xmm3
	mulss xmm1, [ebp-0xdc]
	addss xmm0, xmm1
	movss [eax+0x4], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0xc8]
	addss xmm0, [eax+0x8]
	movaps xmm1, xmm3
	mulss xmm1, [ebp-0xd8]
	addss xmm0, xmm1
	movss [eax+0x8], xmm0
	mulss xmm2, [ebp-0xc4]
	addss xmm2, [eax+0xc]
	mulss xmm3, [ebp-0xd4]
	addss xmm2, xmm3
	movss [eax+0xc], xmm2
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_980:
	mov edx, [ebp-0x1cc]
	mov eax, [ebp-0x16c]
	lea edx, [edx+eax*8+0x8]
	mov [ebp-0x1cc], edx
	add dword [ebp-0x180], 0x1
	mov eax, [ebp-0x148]
	sub eax, [ebp-0x164]
	cmp eax, [ebp-0x180]
	jz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1040
	mov ecx, [ebp-0x174]
	mov [ebp-0x178], ecx
	mov edx, ecx
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1050
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_990:
	lea esi, [edx+0x1]
	movzx eax, byte [edx+0x1]
	cmp [ebp-0x19c], eax
	jb _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1060
	lea ebx, [ecx+0x1]
	mov esi, [ebp-0x16c]
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1090:
	add ebx, 0x1
	mov edx, [ebp-0x178]
	movzx eax, byte [edx+ebx]
	cmp [ebp-0x19c], eax
	jb _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1070
	lea ecx, [esi+ebx]
	shr ecx, 1
	add edx, ecx
	movzx eax, byte [edx]
	cmp [ebp-0x19c], eax
	jb _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1080
	lea ebx, [ecx+0x1]
	mov eax, [ebp-0x178]
	movzx eax, byte [eax+ebx]
	cmp [ebp-0x19c], eax
	jae _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1090
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1020:
	lea esi, [edx+0x1]
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1060
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1080:
	mov esi, ecx
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1090
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_970:
	mov ecx, edx
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1350:
	movzx eax, byte [ecx+0x3]
	add eax, [ebp-0x148]
	mov [ebp-0x144], eax
	mov ebx, [ebp-0x164]
	cmp eax, ebx
	jbe _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1100
	mov edx, eax
	mov dword [ebp-0x184], 0x0
	movss xmm1, dword [_float_0_00003052]
	mov eax, [ebp-0x1d4]
	mov [ebp-0x23c], eax
	mov edi, ebx
	add edi, [ebp-0x1e0]
	sub edx, ebx
	mov [ebp-0x224], edx
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1120:
	movzx esi, byte [edi]
	mov eax, esi
	shr eax, 0x5
	mov ecx, esi
	and ecx, 0x1f
	mov edx, 0x80000000
	shr edx, cl
	mov ecx, [ebp-0x1b4]
	test [ecx+eax*4], edx
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1110
	mov dword [ebp-0xe0], 0x0
	mov dword [ebp-0xdc], 0x0
	mov ebx, [ebp-0x23c]
	movsx eax, word [ebx]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [ebp-0xd8], xmm0
	movsx eax, word [ebx+0x2]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [ebp-0xd4], xmm0
	mov ebx, [ebp-0xe0]
	mov [ebp-0x40], ebx
	mov ecx, [ebp-0xdc]
	mov [ebp-0x3c], ecx
	mov edx, [ebp-0xd8]
	mov [ebp-0x38], edx
	mov eax, [ebp-0xd4]
	mov [ebp-0x34], eax
	mov [ebp-0xd0], ebx
	mov [ebp-0xcc], ecx
	mov [ebp-0xc8], edx
	mov [ebp-0xc4], eax
	shl esi, 0x5
	mov eax, [ebp+0x14]
	add eax, esi
	movaps xmm0, xmm7
	mulss xmm0, [ebp-0xd0]
	addss xmm0, [eax]
	movss [eax], xmm0
	movaps xmm0, xmm7
	mulss xmm0, [ebp-0xcc]
	addss xmm0, [eax+0x4]
	movss [eax+0x4], xmm0
	movaps xmm0, xmm7
	mulss xmm0, [ebp-0xc8]
	addss xmm0, [eax+0x8]
	movss [eax+0x8], xmm0
	movaps xmm0, xmm7
	mulss xmm0, [ebp-0xc4]
	addss xmm0, [eax+0xc]
	movss [eax+0xc], xmm0
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1110:
	add dword [ebp-0x184], 0x1
	add edi, 0x1
	add dword [ebp-0x23c], 0x4
	mov eax, [ebp-0x224]
	cmp [ebp-0x184], eax
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1120
	mov edx, [ebp-0x184]
	add [ebp-0x164], edx
	mov ecx, [ebp-0x1d4]
	lea ecx, [ecx+edx*4]
	mov [ebp-0x1d4], ecx
	mov ebx, [ebp-0x1d8]
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1340:
	movzx eax, byte [ebx+0x4]
	add eax, [ebp-0x144]
	cmp eax, [ebp-0x164]
	jbe _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1130
	mov dword [ebp-0x188], 0x0
	movss xmm1, dword [_float_0_00003052]
	mov edi, [ebp-0x1d4]
	mov edx, [ebp-0x164]
	add edx, [ebp-0x1e0]
	mov [ebp-0x238], edx
	sub eax, [ebp-0x164]
	mov [ebp-0x228], eax
	mov ecx, edx
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1140
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1160:
	mov ecx, [ebp-0x238]
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1140:
	movzx esi, byte [ecx]
	mov eax, esi
	shr eax, 0x5
	mov ecx, esi
	and ecx, 0x1f
	mov edx, 0x80000000
	shr edx, cl
	mov ebx, [ebp-0x1b4]
	test [ebx+eax*4], edx
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1150
	movsx eax, word [edi]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [ebp-0xd0], xmm0
	movsx eax, word [edi+0x2]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [ebp-0xcc], xmm0
	movsx eax, word [edi+0x4]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [ebp-0xc8], xmm0
	movsx eax, word [edi+0x6]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [ebp-0xc4], xmm0
	mov ebx, [ebp-0xd0]
	mov [ebp-0x30], ebx
	mov ecx, [ebp-0xcc]
	mov [ebp-0x2c], ecx
	mov edx, [ebp-0xc8]
	mov [ebp-0x28], edx
	mov eax, [ebp-0xc4]
	mov [ebp-0x24], eax
	mov [ebp-0xe0], ebx
	mov [ebp-0xdc], ecx
	mov [ebp-0xd8], edx
	mov [ebp-0xd4], eax
	shl esi, 0x5
	mov eax, [ebp+0x14]
	add eax, esi
	movaps xmm0, xmm7
	mulss xmm0, [ebp-0xe0]
	addss xmm0, [eax]
	movss [eax], xmm0
	movaps xmm0, xmm7
	mulss xmm0, [ebp-0xdc]
	addss xmm0, [eax+0x4]
	movss [eax+0x4], xmm0
	movaps xmm0, xmm7
	mulss xmm0, [ebp-0xd8]
	addss xmm0, [eax+0x8]
	movss [eax+0x8], xmm0
	movaps xmm0, xmm7
	mulss xmm0, [ebp-0xd4]
	addss xmm0, [eax+0xc]
	movss [eax+0xc], xmm0
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1150:
	add dword [ebp-0x188], 0x1
	add dword [ebp-0x238], 0x1
	add edi, 0x8
	mov eax, [ebp-0x188]
	cmp [ebp-0x228], eax
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1160
	mov edx, [ebp-0x1d4]
	lea edx, [edx+eax*8]
	mov [ebp-0x1d4], edx
	mov ecx, [ebp-0x1d8]
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1520:
	movzx eax, byte [ecx+0x5]
	movzx ebx, al
	mov [ebp-0x140], ebx
	test al, al
	jz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1170
	mov dword [ebp-0x15c], 0x0
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1240:
	mov edx, [ebp-0x178]
	movzx eax, byte [edx]
	mov ecx, [ebp-0x1e0]
	movzx eax, byte [ecx+eax]
	mov [ebp-0x1c0], eax
	mov esi, edx
	add esi, 0x1
	mov ebx, [ebp-0x1d4]
	movzx ebx, word [ebx]
	mov [ebp-0x170], ebx
	add dword [ebp-0x1d4], 0x2
	lea eax, [esi+ebx+0x1]
	mov [ebp-0x178], eax
	mov edx, [ebp-0x1c0]
	shr edx, 0x5
	mov ecx, [ebp-0x1c0]
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	mov ecx, [ebp-0x1b4]
	test [ecx+edx*4], eax
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1180
	cvtsi2ss xmm0, ebx
	mulss xmm0, xmm5
	cvttss2si ecx, xmm0
	lea edx, [esi+ecx]
	movzx eax, byte [edx]
	cmp [ebp-0x19c], eax
	jae _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1190
	xor edi, edi
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1210:
	lea ebx, [ecx-0x1]
	lea edx, [esi+ebx]
	movzx eax, byte [edx]
	cmp [ebp-0x19c], eax
	jae _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1200
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1230:
	lea ecx, [edi+ebx]
	shr ecx, 1
	lea edx, [esi+ecx]
	movzx eax, byte [edx]
	cmp [ebp-0x19c], eax
	jb _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1210
	lea edi, [ecx+0x1]
	movzx eax, byte [esi+edi]
	cmp [ebp-0x19c], eax
	jb _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1220
	mov ecx, ebx
	lea ebx, [ecx-0x1]
	lea edx, [esi+ebx]
	movzx eax, byte [edx]
	cmp [ebp-0x19c], eax
	jb _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1230
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1200:
	lea edi, [edx+0x1]
	mov ecx, ebx
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1300:
	movzx edx, byte [edx]
	movzx eax, dl
	cvtsi2ss xmm0, eax
	movaps xmm4, xmm6
	subss xmm4, xmm0
	movzx eax, byte [edi]
	movzx edx, dl
	sub eax, edx
	cvtsi2ss xmm0, eax
	divss xmm4, xmm0
	lea edx, [ecx+ecx*2]
	add edx, [ebp-0x1d0]
	movzx eax, byte [edx]
	cvtsi2ss xmm0, eax
	movss [ebp-0xe0], xmm0
	movzx eax, byte [edx+0x1]
	cvtsi2ss xmm0, eax
	movss [ebp-0xdc], xmm0
	movzx eax, byte [edx+0x2]
	cvtsi2ss xmm0, eax
	movss [ebp-0xd8], xmm0
	mov dword [ebp-0xd4], 0x0
	lea ecx, [edx+0x3]
	movzx eax, byte [edx+0x3]
	cvtsi2ss xmm0, eax
	movss [ebp-0xd0], xmm0
	movzx eax, byte [ecx+0x1]
	cvtsi2ss xmm0, eax
	movss [ebp-0xcc], xmm0
	movzx eax, byte [ecx+0x2]
	cvtsi2ss xmm0, eax
	movss [ebp-0xc8], xmm0
	mov dword [ebp-0xc4], 0x0
	shl dword [ebp-0x1c0], 0x5
	mov esi, [ebp+0x14]
	add esi, [ebp-0x1c0]
	mov ebx, [ebp-0xd0]
	mov [ebp-0x110], ebx
	mov eax, [ebp-0xcc]
	mov [ebp-0x10c], eax
	mov edx, [ebp-0xc8]
	mov [ebp-0x108], edx
	mov edi, [ebp-0xc4]
	mov [ebp-0x104], edi
	mov ebx, [ebp-0xe0]
	mov [ebp-0x100], ebx
	mov ecx, [ebp-0xdc]
	mov [ebp-0xfc], ecx
	mov edx, [ebp-0xd8]
	mov [ebp-0xf8], edx
	mov eax, [ebp-0xd4]
	mov [ebp-0xf4], eax
	mov [ebp-0xa0], ebx
	mov [ebp-0x9c], ecx
	mov [ebp-0x98], edx
	mov [ebp-0x94], eax
	mov ecx, [ebp-0xd0]
	mov [ebp-0xc0], ecx
	mov ebx, [ebp-0xcc]
	mov [ebp-0xbc], ebx
	mov eax, [ebp-0xc8]
	mov [ebp-0xb8], eax
	mov [ebp-0xb4], edi
	movss xmm1, dword [ebp-0xa0]
	movss xmm2, dword [ebp-0x9c]
	movss xmm3, dword [ebp-0x98]
	movss xmm0, dword [ebp-0xbc]
	subss xmm0, xmm2
	mulss xmm0, xmm4
	addss xmm2, xmm0
	mov edx, [ebp-0x1b8]
	mulss xmm2, [edx+0x10]
	addss xmm2, [edx+0x4]
	movss xmm0, dword [ebp-0xb8]
	subss xmm0, xmm3
	mulss xmm0, xmm4
	addss xmm3, xmm0
	mulss xmm3, [edx+0x14]
	addss xmm3, [edx+0x8]
	lea eax, [esi+0x10]
	movss xmm0, dword [ebp-0xc0]
	subss xmm0, xmm1
	mulss xmm4, xmm0
	addss xmm1, xmm4
	mulss xmm1, [edx+0xc]
	addss xmm1, [edx]
	mulss xmm1, xmm7
	addss xmm1, [esi+0x10]
	movss [esi+0x10], xmm1
	mulss xmm2, xmm7
	addss xmm2, [eax+0x4]
	movss [eax+0x4], xmm2
	mulss xmm3, xmm7
	addss xmm3, [eax+0x8]
	movss [eax+0x8], xmm3
	movaps xmm0, xmm7
	addss xmm0, [esi+0x1c]
	movss [esi+0x1c], xmm0
	mov ecx, [ebp-0x170]
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1290:
	add dword [ebp-0x15c], 0x1
	add dword [ebp-0x1b8], 0x18
	lea eax, [ecx+ecx*2]
	mov ebx, [ebp-0x1d0]
	lea eax, [ebx+eax+0x3]
	mov [ebp-0x1d0], eax
	mov eax, [ebp-0x15c]
	cmp [ebp-0x140], eax
	ja _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1240
	mov ecx, eax
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1390:
	mov edx, [ebp-0x1d8]
	movzx eax, byte [edx+0x6]
	add eax, [ebp-0x140]
	mov [ebp-0x13c], eax
	cmp eax, ecx
	ja _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1250
	mov edi, ecx
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1470:
	mov ecx, [ebp-0x1d8]
	movzx eax, byte [ecx+0x7]
	add eax, [ebp-0x13c]
	mov [ebp-0x138], eax
	cmp eax, edi
	ja _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1260
	mov edx, [ebp-0x178]
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1380:
	mov ecx, [ebp-0x1d8]
	movzx eax, byte [ecx+0x8]
	add eax, [ebp-0x138]
	cmp eax, edi
	jbe _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_300
	mov esi, edx
	sub eax, edi
	lea edi, [eax+edx]
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1280:
	movzx eax, byte [esi]
	mov edx, [ebp-0x1e0]
	movzx ebx, byte [edx+eax]
	mov edx, ebx
	shr edx, 0x5
	mov ecx, ebx
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	mov ecx, [ebp-0x1b4]
	test [ecx+edx*4], eax
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1270
	shl ebx, 0x5
	mov eax, [ebp+0x14]
	add eax, ebx
	movaps xmm0, xmm7
	addss xmm0, [eax+0x1c]
	movss [eax+0x1c], xmm0
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1270:
	add esi, 0x1
	cmp esi, edi
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1280
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_300
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1180:
	mov ecx, ebx
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1290
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1190:
	lea edi, [edx+0x1]
	movzx eax, byte [edx+0x1]
	cmp [ebp-0x19c], eax
	jb _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1300
	lea ebx, [ecx+0x1]
	mov edi, [ebp-0x170]
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1330:
	add ebx, 0x1
	movzx eax, byte [esi+ebx]
	cmp [ebp-0x19c], eax
	jb _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1310
	lea ecx, [edi+ebx]
	shr ecx, 1
	lea edx, [esi+ecx]
	movzx eax, byte [edx]
	cmp [ebp-0x19c], eax
	jb _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1320
	lea ebx, [ecx+0x1]
	movzx eax, byte [esi+ebx]
	cmp [ebp-0x19c], eax
	jae _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1330
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1220:
	lea edi, [edx+0x1]
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1300
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1320:
	mov edi, ecx
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1330
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1100:
	mov ebx, ecx
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1340
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1040:
	mov eax, [ebp-0x1d4]
	mov ebx, [ebp-0x180]
	lea eax, [eax+ebx*2]
	mov [ebp-0x1d4], eax
	add [ebp-0x164], ebx
	mov edx, [ebp-0x174]
	mov [ebp-0x178], edx
	mov ecx, [ebp-0x1d8]
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1350
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1260:
	mov esi, [ebp-0x178]
	sub eax, edi
	add eax, esi
	mov [ebp-0x230], eax
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1370:
	movzx eax, byte [esi]
	mov edx, [ebp-0x1e0]
	movzx ebx, byte [edx+eax]
	mov edx, ebx
	shr edx, 0x5
	mov ecx, ebx
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	mov ecx, [ebp-0x1b4]
	test [ecx+edx*4], eax
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1360
	shl ebx, 0x5
	mov edx, [ebp+0x14]
	add edx, ebx
	lea eax, [edx+0x10]
	movaps xmm0, xmm7
	mov ebx, [ebp-0x1b8]
	mulss xmm0, [ebx]
	addss xmm0, [edx+0x10]
	movss [edx+0x10], xmm0
	movaps xmm0, xmm7
	mulss xmm0, [ebx+0x4]
	addss xmm0, [eax+0x4]
	movss [eax+0x4], xmm0
	movaps xmm0, xmm7
	mulss xmm0, [ebx+0x8]
	addss xmm0, [eax+0x8]
	movss [eax+0x8], xmm0
	movaps xmm0, xmm7
	addss xmm0, [edx+0x1c]
	movss [edx+0x1c], xmm0
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1360:
	add esi, 0x1
	add dword [ebp-0x1b8], 0xc
	mov edx, [ebp-0x230]
	cmp edx, esi
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1370
	mov eax, edi
	sub eax, [ebp-0x178]
	lea edi, [eax+edx]
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1380
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1170:
	mov dword [ebp-0x15c], 0x0
	mov ecx, [ebp-0x15c]
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1390
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1250:
	mov [ebp-0x160], ecx
	mov [ebp-0x234], eax
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1460:
	mov edx, [ebp-0x178]
	movzx eax, byte [edx]
	mov ecx, [ebp-0x1e0]
	movzx eax, byte [ecx+eax]
	mov [ebp-0x1bc], eax
	mov esi, edx
	add esi, 0x1
	mov ebx, [ebp-0x1d4]
	movzx ebx, word [ebx]
	mov [ebp-0x1c8], ebx
	add dword [ebp-0x1d4], 0x2
	lea eax, [esi+ebx+0x1]
	mov [ebp-0x178], eax
	mov edx, [ebp-0x1bc]
	shr edx, 0x5
	mov ecx, [ebp-0x1bc]
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	mov ecx, [ebp-0x1b4]
	test [ecx+edx*4], eax
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1400
	cvtsi2ss xmm0, ebx
	mulss xmm0, xmm5
	cvttss2si ecx, xmm0
	lea edx, [esi+ecx]
	movzx eax, byte [edx]
	cmp [ebp-0x19c], eax
	jae _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1410
	xor edi, edi
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1430:
	lea ebx, [ecx-0x1]
	lea edx, [esi+ebx]
	movzx eax, byte [edx]
	cmp [ebp-0x19c], eax
	jae _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1420
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1450:
	lea ecx, [edi+ebx]
	shr ecx, 1
	lea edx, [esi+ecx]
	movzx eax, byte [edx]
	cmp [ebp-0x19c], eax
	jb _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1430
	lea edi, [ecx+0x1]
	movzx eax, byte [esi+edi]
	cmp [ebp-0x19c], eax
	jb _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1440
	mov ecx, ebx
	lea ebx, [ecx-0x1]
	lea edx, [esi+ebx]
	movzx eax, byte [edx]
	cmp [ebp-0x19c], eax
	jb _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1450
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1420:
	lea edi, [edx+0x1]
	mov ecx, ebx
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1480:
	movzx edx, byte [edx]
	movzx eax, dl
	cvtsi2ss xmm0, eax
	movaps xmm4, xmm6
	subss xmm4, xmm0
	movzx eax, byte [edi]
	movzx edx, dl
	sub eax, edx
	cvtsi2ss xmm0, eax
	divss xmm4, xmm0
	lea edx, [ecx+ecx*2]
	mov ebx, [ebp-0x1cc]
	lea edx, [ebx+edx*2]
	movzx eax, word [edx]
	cvtsi2ss xmm0, eax
	movss [ebp-0xa0], xmm0
	movzx eax, word [edx+0x2]
	cvtsi2ss xmm0, eax
	movss [ebp-0x9c], xmm0
	movzx eax, word [edx+0x4]
	cvtsi2ss xmm0, eax
	movss [ebp-0x98], xmm0
	mov dword [ebp-0x94], 0x0
	lea ecx, [edx+0x6]
	movzx eax, word [edx+0x6]
	cvtsi2ss xmm0, eax
	movss [ebp-0xe0], xmm0
	movzx eax, word [ecx+0x2]
	cvtsi2ss xmm0, eax
	movss [ebp-0xdc], xmm0
	movzx eax, word [ecx+0x4]
	cvtsi2ss xmm0, eax
	movss [ebp-0xd8], xmm0
	mov dword [ebp-0xd4], 0x0
	shl dword [ebp-0x1bc], 0x5
	mov esi, [ebp+0x14]
	add esi, [ebp-0x1bc]
	mov eax, [ebp-0xe0]
	mov [ebp-0xf0], eax
	mov edx, [ebp-0xdc]
	mov [ebp-0xec], edx
	mov ecx, [ebp-0xd8]
	mov [ebp-0xe8], ecx
	mov edi, [ebp-0xd4]
	mov [ebp-0xe4], edi
	mov ebx, [ebp-0xa0]
	mov [ebp-0xb0], ebx
	mov ecx, [ebp-0x9c]
	mov [ebp-0xac], ecx
	mov edx, [ebp-0x98]
	mov [ebp-0xa8], edx
	mov eax, [ebp-0x94]
	mov [ebp-0xa4], eax
	mov [ebp-0xd0], ebx
	mov [ebp-0xcc], ecx
	mov [ebp-0xc8], edx
	mov [ebp-0xc4], eax
	mov ebx, [ebp-0xe0]
	mov [ebp-0xc0], ebx
	mov eax, [ebp-0xdc]
	mov [ebp-0xbc], eax
	mov edx, [ebp-0xd8]
	mov [ebp-0xb8], edx
	mov [ebp-0xb4], edi
	movss xmm1, dword [ebp-0xd0]
	movss xmm2, dword [ebp-0xcc]
	movss xmm3, dword [ebp-0xc8]
	movss xmm0, dword [ebp-0xbc]
	subss xmm0, xmm2
	mulss xmm0, xmm4
	addss xmm2, xmm0
	mov ecx, [ebp-0x1b8]
	mulss xmm2, [ecx+0x10]
	addss xmm2, [ecx+0x4]
	movss xmm0, dword [ebp-0xb8]
	subss xmm0, xmm3
	mulss xmm0, xmm4
	addss xmm3, xmm0
	mulss xmm3, [ecx+0x14]
	addss xmm3, [ecx+0x8]
	lea eax, [esi+0x10]
	movss xmm0, dword [ebp-0xc0]
	subss xmm0, xmm1
	mulss xmm4, xmm0
	addss xmm1, xmm4
	mulss xmm1, [ecx+0xc]
	addss xmm1, [ecx]
	mulss xmm1, xmm7
	addss xmm1, [esi+0x10]
	movss [esi+0x10], xmm1
	mulss xmm2, xmm7
	addss xmm2, [eax+0x4]
	movss [eax+0x4], xmm2
	mulss xmm3, xmm7
	addss xmm3, [eax+0x8]
	movss [eax+0x8], xmm3
	movaps xmm0, xmm7
	addss xmm0, [esi+0x1c]
	movss [esi+0x1c], xmm0
	mov ebx, [ebp-0x1c8]
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1400:
	add dword [ebp-0x160], 0x1
	add dword [ebp-0x1b8], 0x18
	lea eax, [ebx+ebx*2]
	mov edx, [ebp-0x1cc]
	lea edx, [edx+eax*2+0x6]
	mov [ebp-0x1cc], edx
	mov edi, [ebp-0x234]
	cmp edi, [ebp-0x160]
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1460
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1470
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1410:
	lea edi, [edx+0x1]
	movzx eax, byte [edx+0x1]
	cmp [ebp-0x19c], eax
	jb _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1480
	lea ebx, [ecx+0x1]
	mov edi, [ebp-0x1c8]
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1510:
	add ebx, 0x1
	movzx eax, byte [esi+ebx]
	cmp [ebp-0x19c], eax
	jb _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1490
	lea ecx, [edi+ebx]
	shr ecx, 1
	lea edx, [esi+ecx]
	movzx eax, byte [edx]
	cmp [ebp-0x19c], eax
	jb _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1500
	lea ebx, [ecx+0x1]
	movzx eax, byte [esi+ebx]
	cmp [ebp-0x19c], eax
	jae _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1510
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1440:
	lea edi, [edx+0x1]
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1480
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1500:
	mov edi, ecx
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1510
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1130:
	mov ecx, ebx
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1520
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_450:
	mov ebx, [ebp-0x1d4]
	mov ecx, [ebp-0x17c]
	lea ebx, [ebx+ecx*2]
	mov [ebp-0x1d4], ebx
	add [ebp-0x164], ecx
	mov edx, [ebp-0x1d8]
	mov ecx, [ebp-0x164]
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1530
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_360:
	lea edx, [esi+0x11]
	mov eax, [ebp+0xc]
	add eax, 0x6010
	mov [esp], eax
	mov ecx, [ebp+0x14]
	movaps xmm1, xmm7
	movaps xmm0, xmm5
	mov eax, [ebp-0x1dc]
	call _Z14XAnimCalcPartsItEvPK10XAnimPartsPKhffP11DObjAnimMatPK8bitarrayILj128EE
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_300
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_880:
	xor eax, eax
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1540
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1070:
	lea ecx, [ebx-0x1]
	mov ebx, [ebp-0x178]
	lea edx, [ecx+ebx]
	lea esi, [edx+0x1]
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1060
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_850:
	lea ecx, [ebx-0x1]
	lea edx, [ecx+esi]
	lea edi, [edx+0x1]
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_840
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1490:
	lea ecx, [ebx-0x1]
	lea edx, [esi+ecx]
	lea edi, [edx+0x1]
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1480
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1310:
	lea ecx, [ebx-0x1]
	lea edx, [ecx+esi]
	lea edi, [edx+0x1]
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1300
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_940:
	mov ebx, esi
	test bl, bl
	jz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_300
	mov eax, [ebp-0x214]
	movzx eax, byte [eax+0xa]
	mov [ebp-0x1ac], eax
	mov edx, [ebp+0xc]
	add edx, 0x6010
	mov [ebp-0x1a8], edx
	test eax, eax
	jle _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_300
	mov esi, [ebp+0x14]
	xor edi, edi
	mov ebx, [ebp-0x204]
	add ebx, 0x10
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1550
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1580:
	lea eax, [esi+0x10]
	movaps xmm0, xmm7
	mulss xmm0, [ebx]
	addss xmm0, [esi+0x10]
	movss [esi+0x10], xmm0
	movaps xmm0, xmm7
	mulss xmm0, [ebx+0x4]
	addss xmm0, [eax+0x4]
	movss [eax+0x4], xmm0
	movaps xmm0, xmm7
	mulss xmm0, [ebx+0x8]
	addss xmm0, [eax+0x8]
	movss [eax+0x8], xmm0
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1560:
	add edi, 0x1
	add esi, 0x20
	add ebx, 0x20
	cmp [ebp-0x1ac], edi
	jz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_300
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1550:
	mov edx, edi
	shr edx, 0x5
	mov ecx, edi
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	mov ecx, [ebp-0x1a8]
	test [ecx+edx*4], eax
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1560
	movss xmm3, dword [ebx-0x10]
	movss xmm0, dword [ebx-0xc]
	movss xmm1, dword [ebx-0x8]
	movss xmm2, dword [ebx-0x4]
	mulss xmm3, xmm3
	mulss xmm0, xmm0
	addss xmm3, xmm0
	mulss xmm1, xmm1
	addss xmm3, xmm1
	mulss xmm2, xmm2
	addss xmm3, xmm2
	pxor xmm0, xmm0
	ucomiss xmm3, xmm0
	jp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1570
	jz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1580
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1570:
	sqrtss xmm2, xmm3
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm2
	movaps xmm1, xmm0
	mulss xmm1, [ebx-0x10]
	movss [ebx-0x10], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebx-0xc]
	movss [ebx-0xc], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebx-0x8]
	movss [ebx-0x8], xmm1
	mulss xmm0, [ebx-0x4]
	movss [ebx-0x4], xmm0
	movaps xmm0, xmm7
	mulss xmm0, xmm2
	movaps xmm4, xmm0
	mulss xmm4, [ebx-0x10]
	movss [ebx-0x10], xmm4
	movaps xmm1, xmm0
	mulss xmm1, [ebx-0xc]
	movss [ebp-0x22c], xmm1
	movss [ebx-0xc], xmm1
	movaps xmm5, xmm0
	mulss xmm5, [ebx-0x8]
	movss [ebx-0x8], xmm5
	movss xmm3, dword [_float_1_00000000]
	subss xmm3, xmm0
	mulss xmm0, [ebx-0x4]
	addss xmm3, xmm0
	movss [ebx-0x4], xmm3
	movss xmm2, dword [esi+0xc]
	movss xmm0, dword [esi]
	movss [ebp-0x1a4], xmm0
	movss xmm6, dword [esi+0x4]
	movss xmm1, dword [esi+0x8]
	movss [ebp-0x1a0], xmm1
	movaps xmm0, xmm4
	mulss xmm0, xmm2
	movss xmm1, dword [ebp-0x1a4]
	mulss xmm1, xmm3
	addss xmm0, xmm1
	movaps xmm1, xmm5
	mulss xmm1, xmm6
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x22c]
	mulss xmm1, [ebp-0x1a0]
	subss xmm0, xmm1
	movss [esi], xmm0
	movss xmm0, dword [ebp-0x22c]
	mulss xmm0, xmm2
	movss xmm1, dword [ebp-0x1a4]
	mulss xmm1, xmm5
	subss xmm0, xmm1
	movaps xmm1, xmm3
	mulss xmm1, xmm6
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x1a0]
	mulss xmm1, xmm4
	addss xmm0, xmm1
	movss [esi+0x4], xmm0
	movaps xmm0, xmm2
	mulss xmm0, xmm5
	movss xmm1, dword [ebp-0x1a4]
	mulss xmm1, [ebp-0x22c]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, xmm6
	subss xmm0, xmm1
	movss xmm1, dword [ebp-0x1a0]
	mulss xmm1, xmm3
	addss xmm0, xmm1
	movss [esi+0x8], xmm0
	mulss xmm2, xmm3
	mulss xmm4, [ebp-0x1a4]
	subss xmm2, xmm4
	mulss xmm6, [ebp-0x22c]
	subss xmm2, xmm6
	mulss xmm5, [ebp-0x1a0]
	subss xmm2, xmm5
	movss [esi+0xc], xmm2
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1580
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_890:
	mov byte [ebp-0x205], 0x0
	mov dword [ebp-0x204], 0x0
	mov dword [ebp-0x200], 0x0
	mov ecx, [ebp-0x210]
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1590
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1660:
	test byte [edi+0x14], 0x10
	jz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1600
	mov eax, 0x1
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1670:
	test eax, eax
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1610
	cmp byte [ebp-0x205], 0x0
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1620
	mov eax, esi
	test al, al
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1630
	mov eax, [ebp+0x10]
	shl eax, 0x5
	add eax, [ebp+0xc]
	mov [ebp-0x204], eax
	mov ecx, [ebp-0x214]
	movzx eax, byte [ecx+0xa]
	add [ebp+0x10], eax
	cmp dword [ebp+0x10], 0x300
	jg _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_920
	mov eax, [ebp-0x204]
	test eax, eax
	jz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_300
	mov dword [ebp-0x200], 0x1
	mov eax, [ebp-0x204]
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1740:
	mov [esp+0xc], eax
	mov edx, [ebp+0x10]
	mov [esp+0x8], edx
	mov ecx, [ebp+0xc]
	mov [esp+0x4], ecx
	mov dword [esp], 0x1
	mov ecx, 0x1
	movss xmm0, dword [ebp-0x20c]
	mov edx, ebx
	mov eax, [ebp-0x214]
	movss [ebp-0x268], xmm7
	call _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_900
	mov byte [ebp-0x205], 0x1
	movss xmm7, dword [ebp-0x268]
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1620:
	mov eax, [ebp-0x204]
	mov [esp+0xc], eax
	mov edx, [ebp+0x10]
	mov [esp+0x8], edx
	mov ecx, [ebp+0xc]
	mov [esp+0x4], ecx
	mov dword [esp], 0x1
	xor ecx, ecx
	movss xmm0, dword [ebp-0x11c]
	mov edx, edi
	mov eax, [ebp-0x214]
	movss [ebp-0x268], xmm7
	call _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_900
	movss xmm7, dword [ebp-0x268]
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1650:
	movzx eax, word [edi+0xa]
	movzx edx, ax
	mov [ebp-0x210], edx
	test ax, ax
	jz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1610
	mov ecx, edx
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1590:
	mov [esp], ecx
	movss [ebp-0x268], xmm7
	call _Z11GetAnimInfoi
	mov edi, eax
	movss xmm0, dword [eax+0x2c]
	movss [ebp-0x11c], xmm0
	movss xmm7, dword [ebp-0x268]
	ucomiss xmm0, [_float_0_00000000]
	jp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1640
	jz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1650
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1640:
	cmp word [edi+0x12], 0x0
	jz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1660
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1600:
	xor eax, eax
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1670
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1610:
	cmp byte [ebp-0x205], 0x0
	jz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1680
	cmp byte [ebp-0x215], 0x0
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1690
	mov ecx, [ebp-0x214]
	movzx edi, byte [ecx+0xa]
	test edi, edi
	jle _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1700
	mov ebx, [ebp+0x14]
	xor esi, esi
	pxor xmm2, xmm2
	movss xmm3, dword [_float_1_00000000]
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1730:
	mov eax, esi
	shr eax, 0x5
	mov ecx, esi
	and ecx, 0x1f
	mov edx, 0x80000000
	shr edx, cl
	mov ecx, [ebp+0xc]
	test [ecx+eax*4+0x6010], edx
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1710
	movss xmm0, dword [ebx+0x1c]
	ucomiss xmm0, xmm2
	jp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1720
	jz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1710
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1720:
	movaps xmm1, xmm3
	divss xmm1, xmm0
	movaps xmm0, xmm1
	mulss xmm1, [ebx]
	movss [ebx], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebx+0x4]
	movss [ebx+0x4], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebx+0x8]
	movss [ebx+0x8], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebx+0xc]
	movss [ebx+0xc], xmm1
	lea eax, [ebx+0x10]
	movaps xmm1, xmm0
	mulss xmm1, [ebx+0x10]
	movss [ebx+0x10], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [eax+0x4]
	movss [eax+0x4], xmm1
	mulss xmm0, [eax+0x8]
	movss [eax+0x8], xmm0
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1710:
	add esi, 0x1
	add ebx, 0x20
	cmp edi, esi
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1730
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1700
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1630:
	mov edx, [ebp+0x14]
	mov [ebp-0x204], edx
	mov eax, edx
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1740
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1690:
	mov eax, esi
	test al, al
	jz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1750
	mov edx, [ebp-0x214]
	movzx edi, byte [edx+0xa]
	test edi, edi
	jle _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1700
	xor esi, esi
	pxor xmm5, xmm5
	movss xmm6, dword [_float_1_50000000]
	mov ebx, [ebp+0x14]
	add ebx, 0x10
	movss xmm4, dword [_float_0_50000000]
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1800:
	mov eax, esi
	shr eax, 0x5
	mov ecx, esi
	and ecx, 0x1f
	mov edx, 0x80000000
	shr edx, cl
	mov ecx, [ebp+0xc]
	test [ecx+eax*4+0x6010], edx
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1760
	movss xmm3, dword [ebx-0x10]
	movss xmm0, dword [ebx-0xc]
	movss xmm1, dword [ebx-0x8]
	movss xmm2, dword [ebx-0x4]
	mulss xmm3, xmm3
	mulss xmm0, xmm0
	addss xmm3, xmm0
	mulss xmm1, xmm1
	addss xmm3, xmm1
	mulss xmm2, xmm2
	addss xmm3, xmm2
	movaps xmm2, xmm5
	ucomiss xmm3, xmm5
	jp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1770
	jz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1780
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1770:
	movss [ebp-0x1c], xmm3
	mov eax, [ebp-0x1c]
	sar eax, 1
	mov edx, 0x5f3759df
	sub edx, eax
	mov [ebp-0x20], edx
	movss xmm1, dword [ebp-0x20]
	mulss xmm3, xmm4
	mulss xmm3, xmm1
	mulss xmm3, xmm1
	movaps xmm0, xmm6
	subss xmm0, xmm3
	mulss xmm0, xmm1
	movss [ebp-0x1c], xmm0
	movaps xmm1, xmm7
	mulss xmm1, xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebx-0x10]
	movss [ebx-0x10], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebx-0xc]
	movss [ebx-0xc], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebx-0x8]
	movss [ebx-0x8], xmm0
	mulss xmm1, [ebx-0x4]
	movss [ebx-0x4], xmm1
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1780:
	movss xmm0, dword [ebx+0xc]
	ucomiss xmm0, xmm2
	jp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1790
	jz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1760
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1790:
	movaps xmm1, xmm7
	divss xmm1, xmm0
	movaps xmm0, xmm1
	mulss xmm1, [ebx]
	movss [ebx], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebx+0x4]
	movss [ebx+0x4], xmm1
	mulss xmm0, [ebx+0x8]
	movss [ebx+0x8], xmm0
	movss [ebx+0xc], xmm7
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1760:
	add esi, 0x1
	add ebx, 0x20
	cmp edi, esi
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1800
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1700
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_920:
	mov dword [esp+0x4], _cstring_max_calculation_
	mov dword [esp], 0x13
	call _Z16Com_PrintWarningiPKcz
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_300
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1750:
	mov eax, [ebp-0x214]
	movzx eax, byte [eax+0xa]
	mov [ebp-0x1b0], eax
	test eax, eax
	jle _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1700
	mov ebx, [ebp+0x14]
	xor edi, edi
	pxor xmm4, xmm4
	movss xmm5, dword [_float_0_50000000]
	movss xmm6, dword [_float_1_50000000]
	mov esi, [ebp-0x204]
	add esi, 0x10
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1850:
	mov edx, edi
	shr edx, 0x5
	mov ecx, edi
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	mov ecx, [ebp+0xc]
	test [ecx+edx*4+0x6010], eax
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1810
	movss xmm3, dword [esi-0x10]
	movss xmm0, dword [esi-0xc]
	movss xmm1, dword [esi-0x8]
	movss xmm2, dword [esi-0x4]
	mulss xmm3, xmm3
	mulss xmm0, xmm0
	addss xmm3, xmm0
	mulss xmm1, xmm1
	addss xmm3, xmm1
	mulss xmm2, xmm2
	addss xmm3, xmm2
	movaps xmm2, xmm4
	ucomiss xmm3, xmm4
	jp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1820
	jz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1830
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1820:
	movss [ebp-0x20], xmm3
	mov edx, [ebp-0x20]
	sar edx, 1
	mov eax, 0x5f3759df
	sub eax, edx
	mov [ebp-0x1c], eax
	movss xmm1, dword [ebp-0x1c]
	mulss xmm3, xmm5
	mulss xmm3, xmm1
	mulss xmm3, xmm1
	movaps xmm0, xmm6
	subss xmm0, xmm3
	mulss xmm0, xmm1
	movss [ebp-0x20], xmm0
	movaps xmm1, xmm7
	mulss xmm1, xmm0
	movaps xmm0, xmm1
	mulss xmm0, [esi-0x10]
	addss xmm0, [ebx]
	movss [ebx], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [esi-0xc]
	addss xmm0, [ebx+0x4]
	movss [ebx+0x4], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [esi-0x8]
	addss xmm0, [ebx+0x8]
	movss [ebx+0x8], xmm0
	mulss xmm1, [esi-0x4]
	addss xmm1, [ebx+0xc]
	movss [ebx+0xc], xmm1
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1830:
	movss xmm0, dword [esi+0xc]
	ucomiss xmm0, xmm2
	jp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1840
	jz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1810
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1840:
	movaps xmm1, xmm7
	divss xmm1, xmm0
	lea eax, [ebx+0x10]
	movaps xmm0, xmm1
	mulss xmm0, [esi]
	addss xmm0, [ebx+0x10]
	movss [ebx+0x10], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [esi+0x4]
	addss xmm0, [eax+0x4]
	movss [eax+0x4], xmm0
	mulss xmm1, [esi+0x8]
	addss xmm1, [eax+0x8]
	movss [eax+0x8], xmm1
	movaps xmm0, xmm7
	addss xmm0, [ebx+0x1c]
	movss [ebx+0x1c], xmm0
_Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1810:
	add edi, 0x1
	add esi, 0x20
	add ebx, 0x20
	cmp [ebp-0x1b0], edi
	jnz _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1850
	jmp _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat_1700


;DObjCalcAnim(DObj_s const*, int*)
_Z12DObjCalcAnimPK6DObj_sPi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x606c
	mov esi, [ebp+0x8]
	add esi, 0x14
	mov edx, [ebp+0xc]
	xor ebx, ebx
	lea ecx, [ebp-0x48]
_Z12DObjCalcAnimPK6DObj_sPi_10:
	mov eax, [edx]
	mov [ecx], eax
	add ebx, 0x1
	add ecx, 0x4
	add edx, 0x4
	cmp ebx, 0x4
	jnz _Z12DObjCalcAnimPK6DObj_sPi_10
	xor edx, edx
	lea edi, [ebp-0x6048]
	lea eax, [ebp-0x48]
_Z12DObjCalcAnimPK6DObj_sPi_20:
	not dword [eax]
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x4
	jnz _Z12DObjCalcAnimPK6DObj_sPi_20
	mov ecx, esi
	xor ebx, ebx
	lea edx, [edi+0x6000]
_Z12DObjCalcAnimPK6DObj_sPi_30:
	mov eax, [edx]
	or eax, [ecx]
	mov [edx], eax
	add ebx, 0x1
	add edx, 0x4
	add ecx, 0x4
	cmp ebx, 0x4
	jnz _Z12DObjCalcAnimPK6DObj_sPi_30
	xor edx, edx
	mov eax, 0x6000
_Z12DObjCalcAnimPK6DObj_sPi_50:
	cmp dword [eax+ebp-0x6048], 0xffffffff
	jnz _Z12DObjCalcAnimPK6DObj_sPi_40
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x4
	jnz _Z12DObjCalcAnimPK6DObj_sPi_50
_Z12DObjCalcAnimPK6DObj_sPi_90:
	add esp, 0x606c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12DObjCalcAnimPK6DObj_sPi_40:
	mov edx, esi
	mov ecx, [ebp+0xc]
	mov ebx, 0x4
_Z12DObjCalcAnimPK6DObj_sPi_60:
	mov eax, [edx]
	or eax, [ecx]
	mov [edx], eax
	add edx, 0x4
	add ecx, 0x4
	sub ebx, 0x1
	jnz _Z12DObjCalcAnimPK6DObj_sPi_60
	xor ecx, ecx
	xor edx, edx
_Z12DObjCalcAnimPK6DObj_sPi_70:
	mov eax, [edx+ebp-0x48]
	mov [edx+ebp-0x38], eax
	add ecx, 0x1
	add edx, 0x4
	cmp ecx, 0x4
	jnz _Z12DObjCalcAnimPK6DObj_sPi_70
	mov edx, [ebp+0x8]
	mov eax, [edx]
	test eax, eax
	jz _Z12DObjCalcAnimPK6DObj_sPi_80
	cmp word [eax+0x4], 0x0
	jz _Z12DObjCalcAnimPK6DObj_sPi_80
	or dword [ebp-0x2c], 0x1
	movzx eax, word [eax+0x4]
	mov [esp], eax
	call _Z11GetAnimInfoi
	mov edx, [esi+0x34]
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], edi
	mov dword [esp], 0x0
	mov ecx, 0x1
	movss xmm0, dword [_float_1_00000000]
	mov edx, eax
	mov eax, [ebp+0x8]
	call _Z9XAnimCalcPK6DObj_sP9XAnimInfofhhP17XAnimCalcAnimInfoiP11DObjAnimMat
_Z12DObjCalcAnimPK6DObj_sPi_80:
	mov ebx, [esi+0x34]
	mov eax, [ebp+0x8]
	mov eax, [eax+0x60]
	mov [ebp-0x604c], eax
	mov edx, [ebp+0x8]
	cmp byte [edx+0x9], 0x0
	jz _Z12DObjCalcAnimPK6DObj_sPi_90
	xor ecx, ecx
	mov dword [ebp-0x6050], 0x0
	movss xmm5, dword [_float_0_00003052]
_Z12DObjCalcAnimPK6DObj_sPi_140:
	mov eax, [ebp-0x6050]
	mov edx, [ebp-0x604c]
	mov edi, [edx+eax*4]
	movzx eax, byte [edi+0x5]
	movzx edx, al
	test al, al
	jnz _Z12DObjCalcAnimPK6DObj_sPi_100
	mov [ebp-0x6054], ecx
_Z12DObjCalcAnimPK6DObj_sPi_170:
	movzx edx, byte [edi+0x4]
	movzx eax, byte [edi+0x5]
	mov ecx, [edi+0x10]
	sub edx, eax
	mov [ebp-0x6058], edx
	jz _Z12DObjCalcAnimPK6DObj_sPi_110
	xor edi, edi
	movaps xmm4, xmm5
	mov esi, ecx
_Z12DObjCalcAnimPK6DObj_sPi_130:
	mov eax, [ebp-0x6054]
	shr eax, 0x5
	mov ecx, [ebp-0x6054]
	and ecx, 0x1f
	mov edx, 0x80000000
	shr edx, cl
	test [ebp+eax*4-0x48], edx
	jnz _Z12DObjCalcAnimPK6DObj_sPi_120
	movsx eax, word [esi]
	cvtsi2ss xmm0, eax
	movss [ebp-0x28], xmm0
	movsx eax, word [esi+0x2]
	cvtsi2ss xmm1, eax
	movss [ebp-0x24], xmm1
	movsx eax, word [esi+0x4]
	cvtsi2ss xmm2, eax
	movss [ebp-0x20], xmm2
	movsx eax, word [esi+0x6]
	cvtsi2ss xmm3, eax
	mulss xmm0, xmm4
	movss [ebp-0x28], xmm0
	mulss xmm1, xmm4
	movss [ebp-0x24], xmm1
	mulss xmm2, xmm4
	movss [ebp-0x20], xmm2
	mulss xmm3, xmm4
	movss [ebp-0x1c], xmm3
	mov eax, [ebp-0x28]
	mov [ebx], eax
	mov eax, [ebp-0x24]
	mov [ebx+0x4], eax
	mov eax, [ebp-0x20]
	mov [ebx+0x8], eax
	mov eax, [ebp-0x1c]
	mov [ebx+0xc], eax
	lea eax, [ebx+0x10]
	mov dword [ebx+0x10], 0x0
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
	mov dword [ebx+0x1c], 0x0
_Z12DObjCalcAnimPK6DObj_sPi_120:
	add ebx, 0x20
	add dword [ebp-0x6054], 0x1
	add edi, 0x1
	add esi, 0x8
	cmp [ebp-0x6058], edi
	jnz _Z12DObjCalcAnimPK6DObj_sPi_130
_Z12DObjCalcAnimPK6DObj_sPi_110:
	add dword [ebp-0x6050], 0x1
	mov edx, [ebp+0x8]
	movzx eax, byte [edx+0x9]
	cmp [ebp-0x6050], eax
	jge _Z12DObjCalcAnimPK6DObj_sPi_90
	mov ecx, [ebp-0x6054]
	jmp _Z12DObjCalcAnimPK6DObj_sPi_140
_Z12DObjCalcAnimPK6DObj_sPi_100:
	mov esi, ecx
	add edx, ecx
	mov [ebp-0x605c], edx
_Z12DObjCalcAnimPK6DObj_sPi_160:
	mov eax, esi
	shr eax, 0x5
	mov ecx, esi
	and ecx, 0x1f
	mov edx, 0x80000000
	shr edx, cl
	test [ebp+eax*4-0x48], edx
	jnz _Z12DObjCalcAnimPK6DObj_sPi_150
	mov dword [ebx], 0x0
	mov dword [ebx+0x4], 0x0
	mov dword [ebx+0x8], 0x0
	mov dword [ebx+0xc], 0x3f800000
	lea eax, [ebx+0x10]
	mov dword [ebx+0x10], 0x0
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
	mov dword [ebx+0x1c], 0x0
_Z12DObjCalcAnimPK6DObj_sPi_150:
	add ebx, 0x20
	add esi, 0x1
	mov eax, [ebp-0x605c]
	mov [ebp-0x6054], eax
	cmp eax, esi
	jnz _Z12DObjCalcAnimPK6DObj_sPi_160
	jmp _Z12DObjCalcAnimPK6DObj_sPi_170


;XAnim_CalcDeltaForTime(XAnimParts const*, float, float*, float4&)
_Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x15c
	mov eax, [ebp+0x8]
	movss xmm4, dword [ebp+0xc]
	mov edx, [eax+0x54]
	mov [ebp-0x124], edx
	movzx eax, word [eax+0xe]
	movzx ecx, ax
	mov [ebp-0x128], ecx
	ucomiss xmm4, [_float_1_00000000]
	jp _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_10
	jz _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_20
_Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_10:
	test ax, ax
	jz _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_30
	cmp dword [ebp-0x128], 0xff
	jg _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_40
	mov ecx, [ebp-0x124]
	mov ecx, [ecx+0x4]
	mov [ebp-0x120], ecx
	test ecx, ecx
	jz _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_50
	movzx eax, word [ecx]
	test ax, ax
	jnz _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_60
	movsx eax, word [ecx+0x4]
	cvtsi2ss xmm0, eax
	mov eax, [ebp+0x10]
	movss [eax], xmm0
	movsx eax, word [ecx+0x6]
	cvtsi2ss xmm0, eax
	mov edx, [ebp+0x10]
	movss [edx+0x4], xmm0
	pxor xmm7, xmm7
_Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_360:
	mov ecx, [ebp-0x124]
	mov ecx, [ecx]
	mov [ebp-0x118], ecx
	test ecx, ecx
	jz _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_70
	movzx eax, word [ecx]
	test ax, ax
	jz _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_80
	cvtsi2ss xmm3, dword [ebp-0x128]
	mulss xmm3, xmm4
	movzx eax, ax
	mov [ebp-0x114], eax
	mov edi, [ebp-0x118]
	add edi, 0x20
	cvtsi2ss xmm0, eax
	mulss xmm4, xmm0
	cvttss2si ebx, xmm4
	cvttss2si esi, xmm3
	lea edx, [edi+ebx]
	movzx eax, byte [edx]
	cmp esi, eax
	jb _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_90
	lea eax, [edx+0x1]
	mov [ebp-0x108], eax
	movzx eax, byte [edx+0x1]
	cmp esi, eax
	jb _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_100
	lea ecx, [ebx+0x1]
	mov edx, [ebp-0x114]
	mov [ebp-0x100], edx
_Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_130:
	add ecx, 0x1
	movzx eax, byte [edi+ecx]
	cmp esi, eax
	jb _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_110
	mov ebx, [ebp-0x100]
	add ebx, ecx
	shr ebx, 1
	lea edx, [edi+ebx]
	movzx eax, byte [edx]
	cmp esi, eax
	jb _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_120
	lea ecx, [ebx+0x1]
	mov [ebp-0x12c], ecx
	movzx eax, byte [edi+ecx]
	cmp esi, eax
	jae _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_130
_Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_390:
	lea ecx, [edx+0x1]
	mov [ebp-0x108], ecx
	jmp _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_140
_Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_30:
	mov edx, [ebp-0x124]
_Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_20:
	mov eax, [edx+0x4]
	test eax, eax
	jz _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_150
	movzx edx, word [eax]
	test dx, dx
	jz _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_160
	movzx edx, dx
	mov eax, [eax+0x4]
	lea edx, [eax+edx*4]
_Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_180:
	movsx eax, word [edx]
	cvtsi2ss xmm0, eax
	mov ecx, [ebp+0x10]
	movss [ecx], xmm0
	movsx eax, word [edx+0x2]
	cvtsi2ss xmm0, eax
	movss [ecx+0x4], xmm0
	pxor xmm7, xmm7
_Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_260:
	mov edx, [ebp-0x124]
	mov ecx, [edx]
	test ecx, ecx
	jz _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_70
	movzx eax, word [ecx]
	test ax, ax
	jnz _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_170
	lea edx, [ecx+0x4]
_Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_250:
	mov eax, [ecx+0x4]
	mov ecx, [ebp+0x14]
	mov [ecx], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov dword [ecx+0xc], 0x0
_Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_340:
	add esp, 0x15c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_160:
	lea edx, [eax+0x4]
	jmp _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_180
_Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_170:
	cmp byte [ecx+0x2], 0x0
	jz _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_190
	movzx eax, ax
	lea eax, [eax+eax*2]
	add eax, [ecx+0x1c]
	movzx edx, byte [eax]
	cvtsi2ss xmm0, edx
	movss [ebp-0x30], xmm0
	movzx edx, byte [eax+0x1]
	cvtsi2ss xmm0, edx
	movss [ebp-0x2c], xmm0
	movzx eax, byte [eax+0x2]
	cvtsi2ss xmm0, eax
	movss [ebp-0x28], xmm0
	mov dword [ebp-0x24], 0x0
_Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_200:
	lea edx, [ecx+0x4]
	mov eax, [ecx+0x4]
	mov [ebp-0xe0], eax
	mov eax, [edx+0x4]
	mov [ebp-0xdc], eax
	mov eax, [edx+0x8]
	mov [ebp-0xd8], eax
	mov dword [ebp-0xd4], 0x0
	lea eax, [ecx+0x10]
	movss xmm0, dword [ecx+0x10]
	movss [ebp-0xf0], xmm0
	movss xmm1, dword [eax+0x4]
	movss [ebp-0xec], xmm1
	movss xmm2, dword [eax+0x8]
	movss [ebp-0xe8], xmm2
	mov dword [ebp-0xe4], 0x0
	mulss xmm0, [ebp-0x30]
	addss xmm0, [ebp-0xe0]
	mov eax, [ebp+0x14]
	movss [eax], xmm0
	mulss xmm1, [ebp-0x2c]
	addss xmm1, [ebp-0xdc]
	movss [eax+0x4], xmm1
	mulss xmm2, [ebp-0x28]
	addss xmm2, [ebp-0xd8]
	movss [eax+0x8], xmm2
	movss xmm0, dword [ebp-0x24]
	mulss xmm0, xmm7
	addss xmm0, xmm7
	movss [eax+0xc], xmm0
	add esp, 0x15c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_190:
	movzx eax, ax
	lea eax, [eax+eax*2]
	mov edx, [ecx+0x1c]
	lea eax, [edx+eax*2]
	movzx edx, word [eax]
	cvtsi2ss xmm0, edx
	movss [ebp-0x30], xmm0
	movzx edx, word [eax+0x2]
	cvtsi2ss xmm0, edx
	movss [ebp-0x2c], xmm0
	movzx eax, word [eax+0x4]
	cvtsi2ss xmm0, eax
	movss [ebp-0x28], xmm0
	mov dword [ebp-0x24], 0x0
	jmp _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_200
_Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_40:
	mov ecx, [ebp-0x124]
	mov esi, [ecx+0x4]
	test esi, esi
	jz _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_210
	cmp word [esi], 0x0
	jnz _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_220
	movsx eax, word [esi+0x4]
	cvtsi2ss xmm0, eax
	mov eax, [ebp+0x10]
	movss [eax], xmm0
	movsx eax, word [esi+0x6]
	cvtsi2ss xmm0, eax
	mov edx, [ebp+0x10]
	movss [edx+0x4], xmm0
_Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_420:
	mov ecx, [ebp-0x124]
	mov ecx, [ecx]
	mov [ebp-0x10c], ecx
	test ecx, ecx
	jz _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_230
	cmp word [ecx], 0x0
	jnz _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_240
_Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_80:
	mov edx, ecx
	add edx, 0x4
	jmp _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_250
_Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_70:
	mov edx, [ebp+0x14]
	mov dword [edx], 0x0
	mov dword [edx+0x4], 0x0
	mov dword [edx+0x8], 0x0
	mov dword [edx+0xc], 0x0
	add esp, 0x15c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_150:
	pxor xmm7, xmm7
	mov eax, [ebp+0x10]
	movss [eax], xmm7
	mov dword [eax+0x4], 0x46fffe00
	jmp _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_260
_Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_60:
	cvtsi2ss xmm2, dword [ebp-0x128]
	mulss xmm2, xmm4
	movzx ebx, ax
	mov edi, [ebp-0x120]
	add edi, 0x8
	cvtsi2ss xmm0, ebx
	mulss xmm0, xmm4
	cvttss2si ecx, xmm0
	cvttss2si esi, xmm2
	lea edx, [edi+ecx]
	movzx eax, byte [edx]
	cmp esi, eax
	jae _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_270
	mov dword [ebp-0x11c], 0x0
_Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_290:
	lea ebx, [ecx-0x1]
	lea edx, [edi+ebx]
	movzx eax, byte [edx]
	cmp esi, eax
	jae _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_280
_Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_310:
	mov ecx, [ebp-0x11c]
	add ecx, ebx
	shr ecx, 1
	lea edx, [edi+ecx]
	movzx eax, byte [edx]
	cmp esi, eax
	jb _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_290
	lea eax, [ecx+0x1]
	mov [ebp-0x11c], eax
	movzx eax, byte [edi+eax]
	cmp esi, eax
	jb _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_300
	mov ecx, ebx
	lea ebx, [ecx-0x1]
	lea edx, [edi+ebx]
	movzx eax, byte [edx]
	cmp esi, eax
	jb _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_310
_Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_280:
	lea ecx, [edx+0x1]
	mov [ebp-0x104], ecx
	jmp _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_320
_Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_240:
	movss [ebp-0x30], xmm4
	cvtsi2ss xmm0, dword [ebp-0x128]
	mulss xmm0, xmm4
	movss [ebp-0x2c], xmm0
	cvttss2si eax, xmm0
	mov [ebp-0x28], eax
	mov eax, [ebp-0x10c]
	movzx ecx, word [eax]
	mov edx, eax
	add edx, 0x20
	lea eax, [ebp-0x30]
	lea ebx, [ebp-0x20]
	mov [esp+0x4], ebx
	lea ebx, [ebp-0x1c]
	mov [esp], ebx
	call _Z18XAnim_GetTimeIndexItEvPK9XAnimTimePKT_iPiPf
	mov eax, [ebp-0x1c]
	lea ebx, [eax+0x1]
	mov edx, [ebp-0x10c]
	cmp byte [edx+0x2], 0x0
	jz _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_330
	mov ecx, [edx+0x1c]
	lea edx, [eax+eax*2]
	lea edx, [ecx+edx]
	movzx eax, byte [edx]
	cvtsi2ss xmm0, eax
	movss [ebp-0x40], xmm0
	movzx eax, byte [edx+0x1]
	cvtsi2ss xmm0, eax
	movss [ebp-0x3c], xmm0
	movzx eax, byte [edx+0x2]
	cvtsi2ss xmm0, eax
	movss [ebp-0x38], xmm0
	pxor xmm7, xmm7
	movss [ebp-0x34], xmm7
	lea eax, [ebx+ebx*2]
	add ecx, eax
	movzx eax, byte [ecx]
	cvtsi2ss xmm0, eax
	movss [ebp-0x50], xmm0
	movzx eax, byte [ecx+0x1]
	cvtsi2ss xmm0, eax
	movss [ebp-0x4c], xmm0
	movzx eax, byte [ecx+0x2]
	cvtsi2ss xmm0, eax
	movss [ebp-0x48], xmm0
	movss [ebp-0x44], xmm7
_Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_440:
	movss xmm5, dword [ebp-0x20]
	mov ecx, [ebp-0x50]
	mov [ebp-0xb0], ecx
	mov eax, [ebp-0x4c]
	mov [ebp-0xac], eax
	mov edi, [ebp-0x48]
	mov [ebp-0xa8], edi
	mov esi, [ebp-0x44]
	mov [ebp-0xa4], esi
	mov ebx, [ebp-0x40]
	mov [ebp-0xa0], ebx
	mov ecx, [ebp-0x3c]
	mov [ebp-0x9c], ecx
	mov edx, [ebp-0x38]
	mov [ebp-0x98], edx
	mov eax, [ebp-0x34]
	mov [ebp-0x94], eax
	mov [ebp-0xf0], ebx
	mov [ebp-0xec], ecx
	mov [ebp-0xe8], edx
	mov [ebp-0xe4], eax
	mov edx, [ebp-0x50]
	mov [ebp-0x90], edx
	mov ecx, [ebp-0x4c]
	mov [ebp-0x8c], ecx
	mov [ebp-0x88], edi
	mov [ebp-0x84], esi
	movss xmm4, dword [ebp-0xf0]
	movss xmm0, dword [ebp-0x90]
	subss xmm0, xmm4
	movss [ebp-0xe0], xmm0
	movss xmm3, dword [ebp-0xec]
	movss xmm0, dword [ebp-0x8c]
	subss xmm0, xmm3
	movss [ebp-0xdc], xmm0
	movss xmm2, dword [ebp-0xe8]
	movss xmm0, dword [ebp-0x88]
	subss xmm0, xmm2
	movss [ebp-0xd8], xmm0
	movss xmm6, dword [ebp-0xe4]
	movss xmm1, dword [ebp-0x84]
	subss xmm1, xmm6
	movss [ebp-0xd4], xmm1
	movaps xmm0, xmm5
	mulss xmm0, [ebp-0xe0]
	addss xmm4, xmm0
	movss [ebp-0x80], xmm4
	movaps xmm0, xmm5
	mulss xmm0, [ebp-0xdc]
	addss xmm3, xmm0
	movss [ebp-0x7c], xmm3
	movaps xmm0, xmm5
	mulss xmm0, [ebp-0xd8]
	addss xmm2, xmm0
	movss [ebp-0x78], xmm2
	mulss xmm5, xmm1
	addss xmm5, xmm6
	movss [ebp-0x74], xmm5
	mov edx, [ebp-0x10c]
	add edx, 0x4
	mov ecx, [ebp-0x10c]
	mov eax, [ecx+0x4]
	mov [ebp-0x60], eax
	mov eax, [edx+0x4]
	mov [ebp-0x5c], eax
	mov eax, [edx+0x8]
	mov [ebp-0x58], eax
	mov dword [ebp-0x54], 0x0
	mov eax, ecx
	add eax, 0x10
	movss xmm0, dword [ecx+0x10]
	movss [ebp-0x70], xmm0
	movss xmm1, dword [eax+0x4]
	movss [ebp-0x6c], xmm1
	movss xmm2, dword [eax+0x8]
	movss [ebp-0x68], xmm2
	mov dword [ebp-0x64], 0x0
	mulss xmm0, xmm4
	addss xmm0, [ebp-0x60]
	mov eax, [ebp+0x14]
	movss [eax], xmm0
	mulss xmm1, [ebp-0x7c]
	addss xmm1, [ebp-0x5c]
	movss [eax+0x4], xmm1
	mulss xmm2, [ebp-0x78]
	addss xmm2, [ebp-0x58]
	movss [eax+0x8], xmm2
	mulss xmm5, xmm7
	addss xmm5, xmm7
	movss [eax+0xc], xmm5
	jmp _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_340
_Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_270:
	lea eax, [edx+0x1]
	mov [ebp-0x104], eax
	movzx eax, byte [edx+0x1]
	cmp esi, eax
	jae _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_350
	mov ebx, ecx
	mov ecx, [ebp-0x104]
_Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_320:
	movzx edx, byte [edx]
	movzx eax, dl
	cvtsi2ss xmm0, eax
	subss xmm2, xmm0
	movzx eax, byte [ecx]
	movzx edx, dl
	sub eax, edx
	cvtsi2ss xmm0, eax
	divss xmm2, xmm0
	lea edx, [ebx*4]
	mov eax, [ebp-0x120]
	add edx, [eax+0x4]
	movsx ecx, word [edx]
	cvtsi2ss xmm1, ecx
	movsx eax, word [edx+0x4]
	sub eax, ecx
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm2
	addss xmm1, xmm0
	mov ecx, [ebp+0x10]
	movss [ecx], xmm1
	movsx ecx, word [edx+0x2]
	cvtsi2ss xmm1, ecx
	movsx eax, word [edx+0x6]
	sub eax, ecx
	cvtsi2ss xmm0, eax
	mulss xmm2, xmm0
	addss xmm1, xmm2
	mov eax, [ebp+0x10]
	movss [eax+0x4], xmm1
	pxor xmm7, xmm7
	jmp _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_360
_Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_90:
	mov dword [ebp-0x110], 0x0
_Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_380:
	lea ecx, [ebx-0x1]
	lea edx, [edi+ecx]
	movzx eax, byte [edx]
	cmp esi, eax
	jae _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_370
_Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_400:
	mov ebx, [ebp-0x110]
	add ebx, ecx
	shr ebx, 1
	lea edx, [edi+ebx]
	movzx eax, byte [edx]
	cmp esi, eax
	jb _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_380
	lea eax, [ebx+0x1]
	mov [ebp-0x12c], eax
	mov [ebp-0x110], eax
	movzx eax, byte [edi+eax]
	cmp esi, eax
	jb _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_390
	mov ebx, ecx
	lea ecx, [ebx-0x1]
	lea edx, [edi+ecx]
	movzx eax, byte [edx]
	cmp esi, eax
	jb _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_400
_Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_370:
	lea eax, [edx+0x1]
	mov [ebp-0x108], eax
	mov ebx, ecx
	lea ecx, [ecx+0x1]
	mov [ebp-0x12c], ecx
	mov ecx, eax
_Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_140:
	movzx edx, byte [edx]
	movzx eax, dl
	cvtsi2ss xmm0, eax
	movaps xmm6, xmm3
	subss xmm6, xmm0
	movzx eax, byte [ecx]
	movzx edx, dl
	sub eax, edx
	cvtsi2ss xmm0, eax
	divss xmm6, xmm0
	mov eax, [ebp-0x118]
	cmp byte [eax+0x2], 0x0
	jz _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_410
	mov ecx, [eax+0x1c]
	lea edx, [ebx+ebx*2]
	lea edx, [ecx+edx]
	movzx eax, byte [edx]
	cvtsi2ss xmm0, eax
	movss [ebp-0x30], xmm0
	movzx eax, byte [edx+0x1]
	cvtsi2ss xmm0, eax
	movss [ebp-0x2c], xmm0
	movzx eax, byte [edx+0x2]
	cvtsi2ss xmm0, eax
	movss [ebp-0x28], xmm0
	mov dword [ebp-0x24], 0x0
	mov edx, [ebp-0x12c]
	lea eax, [edx+edx*2]
	add ecx, eax
	movzx eax, byte [ecx]
	cvtsi2ss xmm0, eax
	movss [ebp-0xf0], xmm0
	movzx eax, byte [ecx+0x1]
	cvtsi2ss xmm0, eax
	movss [ebp-0xec], xmm0
	movzx eax, byte [ecx+0x2]
	cvtsi2ss xmm0, eax
	movss [ebp-0xe8], xmm0
	mov dword [ebp-0xe4], 0x0
_Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_430:
	mov edx, [ebp-0xf0]
	mov [ebp-0xd0], edx
	mov ecx, [ebp-0xec]
	mov [ebp-0xcc], ecx
	mov edi, [ebp-0xe8]
	mov [ebp-0xc8], edi
	mov esi, [ebp-0xe4]
	mov [ebp-0xc4], esi
	mov ebx, [ebp-0x30]
	mov [ebp-0xc0], ebx
	mov ecx, [ebp-0x2c]
	mov [ebp-0xbc], ecx
	mov edx, [ebp-0x28]
	mov [ebp-0xb8], edx
	mov eax, [ebp-0x24]
	mov [ebp-0xb4], eax
	mov [ebp-0x50], ebx
	mov [ebp-0x4c], ecx
	mov [ebp-0x48], edx
	mov [ebp-0x44], eax
	mov eax, [ebp-0xf0]
	mov [ebp-0x60], eax
	mov edx, [ebp-0xec]
	mov [ebp-0x5c], edx
	mov [ebp-0x58], edi
	mov [ebp-0x54], esi
	movss xmm4, dword [ebp-0x50]
	movss xmm0, dword [ebp-0x60]
	subss xmm0, xmm4
	movss [ebp-0x40], xmm0
	movss xmm3, dword [ebp-0x4c]
	movss xmm0, dword [ebp-0x5c]
	subss xmm0, xmm3
	movss [ebp-0x3c], xmm0
	movss xmm2, dword [ebp-0x48]
	movss xmm0, dword [ebp-0x58]
	subss xmm0, xmm2
	movss [ebp-0x38], xmm0
	movss xmm5, dword [ebp-0x44]
	movss xmm1, dword [ebp-0x54]
	subss xmm1, xmm5
	movss [ebp-0x34], xmm1
	movaps xmm0, xmm6
	mulss xmm0, [ebp-0x40]
	addss xmm4, xmm0
	movss [ebp-0x70], xmm4
	movaps xmm0, xmm6
	mulss xmm0, [ebp-0x3c]
	addss xmm3, xmm0
	movss [ebp-0x6c], xmm3
	movaps xmm0, xmm6
	mulss xmm0, [ebp-0x38]
	addss xmm2, xmm0
	movss [ebp-0x68], xmm2
	movaps xmm3, xmm6
	mulss xmm3, xmm1
	addss xmm3, xmm5
	movss [ebp-0x64], xmm3
	mov edx, [ebp-0x118]
	add edx, 0x4
	mov ecx, [ebp-0x118]
	mov eax, [ecx+0x4]
	mov [ebp-0x90], eax
	mov eax, [edx+0x4]
	mov [ebp-0x8c], eax
	mov eax, [edx+0x8]
	mov [ebp-0x88], eax
	mov dword [ebp-0x84], 0x0
	mov eax, ecx
	add eax, 0x10
	movss xmm0, dword [ecx+0x10]
	movss [ebp-0x80], xmm0
	movss xmm1, dword [eax+0x4]
	movss [ebp-0x7c], xmm1
	movss xmm2, dword [eax+0x8]
	movss [ebp-0x78], xmm2
	mov dword [ebp-0x74], 0x0
	mulss xmm0, xmm4
	addss xmm0, [ebp-0x90]
	mov eax, [ebp+0x14]
	movss [eax], xmm0
	mulss xmm1, [ebp-0x6c]
	addss xmm1, [ebp-0x8c]
	movss [eax+0x4], xmm1
	mulss xmm2, [ebp-0x68]
	addss xmm2, [ebp-0x88]
	movss [eax+0x8], xmm2
	mulss xmm3, xmm7
	addss xmm3, xmm7
	movss [eax+0xc], xmm3
	jmp _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_340
_Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_120:
	mov [ebp-0x100], ebx
	jmp _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_130
_Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_220:
	movss [ebp-0x30], xmm4
	cvtsi2ss xmm0, dword [ebp-0x128]
	mulss xmm0, xmm4
	movss [ebp-0x2c], xmm0
	cvttss2si eax, xmm0
	mov [ebp-0x28], eax
	movzx ecx, word [esi]
	lea edx, [esi+0x8]
	lea eax, [ebp-0x30]
	lea ebx, [ebp-0x1c]
	mov [esp+0x4], ebx
	lea ebx, [ebp-0x20]
	mov [esp], ebx
	movss [ebp-0x148], xmm4
	call _Z18XAnim_GetTimeIndexItEvPK9XAnimTimePKT_iPiPf
	movss xmm2, dword [ebp-0x1c]
	mov edx, [ebp-0x20]
	shl edx, 0x2
	add edx, [esi+0x4]
	movsx ecx, word [edx]
	cvtsi2ss xmm1, ecx
	movsx eax, word [edx+0x4]
	sub eax, ecx
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm2
	addss xmm1, xmm0
	mov ecx, [ebp+0x10]
	movss [ecx], xmm1
	movsx ecx, word [edx+0x2]
	cvtsi2ss xmm1, ecx
	movsx eax, word [edx+0x6]
	sub eax, ecx
	cvtsi2ss xmm0, eax
	mulss xmm2, xmm0
	addss xmm1, xmm2
	mov eax, [ebp+0x10]
	movss [eax+0x4], xmm1
	movss xmm4, dword [ebp-0x148]
	jmp _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_420
_Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_410:
	mov ecx, [eax+0x1c]
	lea edx, [ebx+ebx*2]
	lea edx, [ecx+edx*2]
	movzx eax, word [edx]
	cvtsi2ss xmm0, eax
	movss [ebp-0x30], xmm0
	movzx eax, word [edx+0x2]
	cvtsi2ss xmm0, eax
	movss [ebp-0x2c], xmm0
	movzx eax, word [edx+0x4]
	cvtsi2ss xmm0, eax
	movss [ebp-0x28], xmm0
	mov dword [ebp-0x24], 0x0
	mov eax, [ebp-0x12c]
	lea edx, [eax+eax*2]
	lea edx, [ecx+edx*2]
	movzx eax, word [edx]
	cvtsi2ss xmm0, eax
	movss [ebp-0xf0], xmm0
	movzx eax, word [edx+0x2]
	cvtsi2ss xmm0, eax
	movss [ebp-0xec], xmm0
	movzx eax, word [edx+0x4]
	cvtsi2ss xmm0, eax
	movss [ebp-0xe8], xmm0
	mov dword [ebp-0xe4], 0x0
	jmp _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_430
_Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_230:
	xor eax, eax
	mov edx, [ebp+0x14]
	mov [edx], eax
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	mov [edx+0xc], eax
	jmp _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_340
_Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_50:
	pxor xmm7, xmm7
	mov edx, [ebp+0x10]
	movss [edx], xmm7
	mov dword [edx+0x4], 0x46fffe00
	jmp _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_360
_Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_210:
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
	mov dword [edx+0x4], 0x46fffe00
	jmp _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_420
_Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_330:
	mov ecx, [edx+0x1c]
	lea edx, [eax+eax*2]
	lea edx, [ecx+edx*2]
	movzx eax, word [edx]
	cvtsi2ss xmm0, eax
	movss [ebp-0x40], xmm0
	movzx eax, word [edx+0x2]
	cvtsi2ss xmm0, eax
	movss [ebp-0x3c], xmm0
	movzx eax, word [edx+0x4]
	cvtsi2ss xmm0, eax
	movss [ebp-0x38], xmm0
	pxor xmm7, xmm7
	movss [ebp-0x34], xmm7
	lea edx, [ebx+ebx*2]
	lea edx, [ecx+edx*2]
	movzx eax, word [edx]
	cvtsi2ss xmm0, eax
	movss [ebp-0x50], xmm0
	movzx eax, word [edx+0x2]
	cvtsi2ss xmm0, eax
	movss [ebp-0x4c], xmm0
	movzx eax, word [edx+0x4]
	cvtsi2ss xmm0, eax
	movss [ebp-0x48], xmm0
	mov dword [ebp-0x44], 0x0
	jmp _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_440
_Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_100:
	lea ecx, [ebx+0x1]
	mov [ebp-0x12c], ecx
	mov ecx, [ebp-0x108]
	jmp _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_140
_Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_350:
	add ecx, 0x1
	mov [ebp-0xfc], ebx
_Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_470:
	add ecx, 0x1
	movzx eax, byte [edi+ecx]
	cmp esi, eax
	jb _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_450
	mov ebx, [ebp-0xfc]
	add ebx, ecx
	shr ebx, 1
	lea edx, [edi+ebx]
	movzx eax, byte [edx]
	cmp esi, eax
	jb _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_460
	lea ecx, [ebx+0x1]
	movzx eax, byte [edi+ecx]
	cmp esi, eax
	jae _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_470
	jmp _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_280
_Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_460:
	mov [ebp-0xfc], ebx
	jmp _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_470
_Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_450:
	lea ebx, [ecx-0x1]
	lea edx, [ebx+edi]
	lea eax, [edx+0x1]
	mov [ebp-0x104], eax
	mov ecx, eax
	jmp _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_320
_Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_110:
	lea ebx, [ecx-0x1]
	lea edx, [ebx+edi]
	lea eax, [edx+0x1]
	mov [ebp-0x108], eax
	mov [ebp-0x12c], ecx
	mov ecx, eax
	jmp _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_140
_Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_300:
	lea eax, [edx+0x1]
	mov [ebp-0x104], eax
	mov ebx, ecx
	mov ecx, eax
	jmp _Z22XAnim_CalcDeltaForTimePK10XAnimPartsfPfR6float4_320


;Initialized global or static variables of xanim_calc:
SECTION .data


;Initialized constant data of xanim_calc:
SECTION .rdata
g_keepZ__uint4: dd 0x0, 0x0, 0xffffffff, 0x0
g_keepX__uint4: dd 0xffffffff, 0x0, 0x0, 0x0
g_keepZW__uint4: dd 0x0, 0x0, 0xffffffff, 0xffffffff
g_keepXY__uint4: dd 0xffffffff, 0xffffffff, 0x0, 0x0
g_keepXYZ__uint4: dd 0xffffffff, 0xffffffff, 0xffffffff, 0x0
g_keepXYW__uint4: dd 0xffffffff, 0xffffffff, 0x0, 0xffffffff
g_keepXZW__uint4: dd 0xffffffff, 0x0, 0xffffffff, 0xffffffff
g_keepYZW__uint4: dd 0x0, 0xffffffff, 0xffffffff, 0xffffffff
g_selectW__uint4: dd 0x10203, 0x4050607, 0x8090a0b, 0x1c1d1e1f
g_selectZ__uint4: dd 0x10203, 0x4050607, 0x18191a1b, 0xc0d0e0f
g_selectY__uint4: dd 0x10203, 0x14151617, 0x8090a0b, 0xc0d0e0f
g_selectX__uint4: dd 0x10111213, 0x4050607, 0x8090a0b, 0xc0d0e0f
g_swizzleWWWW__uint4: dd 0xc0d0e0f, 0xc0d0e0f, 0xc0d0e0f, 0xc0d0e0f
g_swizzleZZZZ__uint4: dd 0x8090a0b, 0x8090a0b, 0x8090a0b, 0x8090a0b
g_swizzleYYYY__uint4: dd 0x4050607, 0x4050607, 0x4050607, 0x4050607
g_swizzleXXXX__uint4: dd 0x10203, 0x10203, 0x10203, 0x10203
g_swizzleYZWA__uint4: dd 0x4050607, 0x8090a0b, 0xc0d0e0f, 0x10111213
g_swizzleZWAW__uint4: dd 0x8090a0b, 0xc0d0e0f, 0x10111213, 0xc0d0e0f
g_swizzleWABW__uint4: dd 0xc0d0e0f, 0x10111213, 0x14151617, 0xc0d0e0f
g_swizzleZXYW__uint4: dd 0x8090a0b, 0x10203, 0x4050607, 0xc0d0e0f
g_swizzleYZXW__uint4: dd 0x4050607, 0x8090a0b, 0x10203, 0xc0d0e0f
g_swizzleXYZA__uint4: dd 0x10203, 0x4050607, 0x8090a0b, 0x10111213
g_swizzleZWCD__uint4: dd 0x8090a0b, 0xc0d0e0f, 0x18191a1b, 0x1c1d1e1f
g_swizzleXYAB__uint4: dd 0x10203, 0x4050607, 0x10111213, 0x14151617
g_swizzleYBWD__uint4: dd 0x4050607, 0x14151617, 0xc0d0e0f, 0x1c1d1e1f
g_swizzleXAZC__uint4: dd 0x10203, 0x10111213, 0x8090a0b, 0x18191a1b
g_swizzleYXWZ__uint4: dd 0x4050607, 0x10203, 0xc0d0e0f, 0x8090a0b
g_swizzleXZYW__uint4: dd 0x10203, 0x8090a0b, 0x4050607, 0xc0d0e0f
g_swizzleYXZW__uint4: dd 0x4050607, 0x10203, 0x8090a0b, 0xc0d0e0f
g_swizzleXYZW__uint4: dd 0x10203, 0x4050607, 0x8090a0b, 0xc0d0e0f
g_inc__uint4: dd 0x1, 0x1, 0x1, 0x1
g_negativeZero__uint4: dd 0x80000000, 0x80000000, 0x80000000, 0x80000000
g_fltMin__uint4: dd 0x800000, 0x800000, 0x800000, 0x800000


;Zero initialized global or static variables of xanim_calc:
SECTION .bss
g_keepZ: resb 0x10
g_keepX: resb 0x10
g_keepZW: resb 0x10
g_keepXY: resb 0x10
g_keepXYZ: resb 0x10
g_keepXYW: resb 0x10
g_keepXZW: resb 0x10
g_keepYZW: resb 0x10
g_selectW: resb 0x10
g_selectZ: resb 0x10
g_selectY: resb 0x10
g_selectX: resb 0x10
g_swizzleWWWW: resb 0x10
g_swizzleZZZZ: resb 0x10
g_swizzleYYYY: resb 0x10
g_swizzleXXXX: resb 0x10
g_swizzleYZWA: resb 0x10
g_swizzleZWAW: resb 0x10
g_swizzleWABW: resb 0x10
g_swizzleZXYW: resb 0x10
g_swizzleYZXW: resb 0x10
g_swizzleXYZA: resb 0x10
g_swizzleZWCD: resb 0x10
g_swizzleXYAB: resb 0x10
g_swizzleYBWD: resb 0x10
g_swizzleXAZC: resb 0x10
g_swizzleYXWZ: resb 0x10
g_swizzleXZYW: resb 0x10
g_swizzleYXZW: resb 0x10
g_swizzleXYZW: resb 0x10
g_inc: resb 0x10
g_negativeZero: resb 0x10
g_fltMin: resb 0x10


;All cstrings:
SECTION .rdata
_cstring_max_calculation_:		db "max calculation buffer exceeded",0ah,0



;All constant floats and doubles:
SECTION .rdata
_float_0_00003052:		dd 0x38000100	; 3.05185e-05
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_00000000:		dd 0x0	; 0
_float_1_50000000:		dd 0x3fc00000	; 1.5
_float_0_50000000:		dd 0x3f000000	; 0.5

