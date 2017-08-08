;Imports of xanim_calc:
	extern SL_ConvertToString
	extern GetAnimInfo
	extern Com_PrintWarning

;Exports of xanim_calc:
	global _GLOBAL__I__Z13XAnim_SetTimefiP9XAnimTime
	global XAnim_GetTimeIndex
	global XAnimCalcParts
	global XAnimCalc
	global DObjCalcAnim
	global XAnim_CalcDeltaForTime


SECTION .text


;global constructors keyed to XAnim_SetTime(float, int, XAnimTime*)
_GLOBAL__I__Z13XAnim_SetTimefiP9XAnimTime:
	push ebp
	mov ebp, esp
	mov edx, 0xffff
	mov eax, 0x1
	pop ebp
	jmp __static_initialization_and_destruction_0


;void XAnim_GetTimeIndex<unsigned short>(XAnimTime const*, unsigned short const*, int, int*, float*)
XAnim_GetTimeIndex:
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
	jae XAnim_GetTimeIndex_10
	mov ebx, ecx
	mov dword [ebp-0x18], 0x0
XAnim_GetTimeIndex_40:
	sub ebx, 0x1
	lea edx, [edi+ebx*2]
	movzx eax, word [edx]
	cmp esi, eax
	jae XAnim_GetTimeIndex_20
XAnim_GetTimeIndex_50:
	mov ecx, [ebp-0x18]
	add ecx, ebx
	shr ecx, 1
	lea edx, [edi+ecx*2]
	movzx eax, word [edx]
	cmp esi, eax
	jb XAnim_GetTimeIndex_30
	lea eax, [ecx+0x1]
	mov [ebp-0x18], eax
	movzx eax, word [edi+eax*2]
	cmp esi, eax
	jae XAnim_GetTimeIndex_40
XAnim_GetTimeIndex_100:
	lea ebx, [edx+0x2]
	mov [ebp-0x10], ebx
XAnim_GetTimeIndex_60:
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
XAnim_GetTimeIndex_30:
	mov ebx, ecx
	sub ebx, 0x1
	lea edx, [edi+ebx*2]
	movzx eax, word [edx]
	cmp esi, eax
	jb XAnim_GetTimeIndex_50
XAnim_GetTimeIndex_20:
	lea eax, [edx+0x2]
	mov [ebp-0x10], eax
	mov ecx, ebx
	mov ebx, eax
	jmp XAnim_GetTimeIndex_60
XAnim_GetTimeIndex_10:
	lea eax, [edx+0x2]
	mov [ebp-0x10], eax
	movzx eax, word [edx+0x2]
	cmp esi, eax
	jb XAnim_GetTimeIndex_70
	lea ebx, [ecx+0x1]
	mov eax, [ebp-0x20]
	mov [ebp-0x14], eax
XAnim_GetTimeIndex_120:
	add ebx, 0x1
	movzx eax, word [edi+ebx*2]
	cmp esi, eax
	jb XAnim_GetTimeIndex_80
XAnim_GetTimeIndex_110:
	mov ecx, [ebp-0x14]
	add ecx, ebx
	shr ecx, 1
	lea edx, [edi+ecx*2]
	movzx eax, word [edx]
	cmp esi, eax
	jb XAnim_GetTimeIndex_90
	lea ebx, [ecx+0x1]
	movzx eax, word [edi+ebx*2]
	cmp esi, eax
	jb XAnim_GetTimeIndex_100
	add ebx, 0x1
	movzx eax, word [edi+ebx*2]
	cmp esi, eax
	jae XAnim_GetTimeIndex_110
XAnim_GetTimeIndex_80:
	lea ecx, [ebx-0x1]
	lea edx, [edi+ecx*2]
	jmp XAnim_GetTimeIndex_100
XAnim_GetTimeIndex_90:
	mov [ebp-0x14], ecx
	jmp XAnim_GetTimeIndex_120
XAnim_GetTimeIndex_70:
	mov ebx, [ebp-0x10]
	jmp XAnim_GetTimeIndex_60
	nop


;__static_initialization_and_destruction_0(int, int)
__static_initialization_and_destruction_0:
	push ebp
	mov ebp, esp
	cmp edx, 0xffff
	jz __static_initialization_and_destruction_0_10
__static_initialization_and_destruction_0_20:
	pop ebp
	ret
__static_initialization_and_destruction_0_10:
	sub eax, 0x1
	jnz __static_initialization_and_destruction_0_20
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
XAnimCalcParts:
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
	jnz XAnimCalcParts_10
	mov dword [ebp-0xf8], 0x0
XAnimCalcParts_500:
	add esi, 0x12
	mov [ebp-0x138], esi
	movzx eax, byte [esi+0x1]
	add edi, eax
	mov [ebp-0xf0], edi
	mov ecx, [ebp-0xf8]
	cmp edi, ecx
	jbe XAnimCalcParts_20
	mov dword [ebp-0x10c], 0x0
	jmp XAnimCalcParts_30
XAnimCalcParts_60:
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
	jz XAnimCalcParts_40
XAnimCalcParts_80:
	mov eax, [ebp-0x12c]
	lea eax, [eax+edi*4+0x4]
	mov [ebp-0x12c], eax
	add dword [ebp-0x10c], 0x1
	mov eax, [ebp-0xf0]
	sub eax, [ebp-0xf8]
	cmp eax, [ebp-0x10c]
	jz XAnimCalcParts_50
XAnimCalcParts_30:
	mov eax, [ebp-0x13c]
	add eax, [ebp-0x10c]
	mov edx, [ebp-0xf8]
	movzx esi, byte [eax+edx]
	mov ecx, [ebp-0x108]
	movzx edi, word [ecx]
	mov ebx, ecx
	add ebx, 0x2
	cmp edi, 0x3f
	jle XAnimCalcParts_60
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
	jz XAnimCalcParts_70
	mov eax, [ebp-0x124]
	lea eax, [eax+edi*2+0x2]
	mov [ebp-0x124], eax
	jmp XAnimCalcParts_80
XAnimCalcParts_40:
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	lea eax, [ebp-0x1c]
	mov [esp], eax
	mov ecx, edi
	mov edx, ebx
	lea eax, [ebp-0x30]
	call XAnim_GetTimeIndex
XAnimCalcParts_90:
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
	jmp XAnimCalcParts_80
XAnimCalcParts_70:
	lea edx, [ebp-0x30]
	mov [esp+0x4], edx
	lea eax, [ebp-0x20]
	mov [esp], eax
	mov ecx, [ebp-0x120]
	mov edx, ebx
	lea eax, [ebp-0x30]
	call XAnim_GetTimeIndex
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
	call XAnim_GetTimeIndex
	mov eax, [ebp-0x1c]
	add eax, [ebp-0x20]
	mov [ebp-0x1c], eax
	mov eax, [ebp-0x124]
	lea eax, [eax+edi*2+0x2]
	mov [ebp-0x124], eax
	jmp XAnimCalcParts_90
XAnimCalcParts_50:
	mov edx, [ebp-0x10c]
	add [ebp-0xf8], edx
	mov ecx, [ebp-0x138]
XAnimCalcParts_470:
	movzx eax, byte [ecx+0x2]
	add eax, [ebp-0xf0]
	mov [ebp-0xec], eax
	mov edx, [ebp-0xf8]
	cmp eax, edx
	jbe XAnimCalcParts_100
	mov dword [ebp-0x110], 0x0
	jmp XAnimCalcParts_110
XAnimCalcParts_140:
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
	jz XAnimCalcParts_120
XAnimCalcParts_160:
	mov eax, [ebp-0x12c]
	lea eax, [eax+esi*8+0x8]
	mov [ebp-0x12c], eax
	add dword [ebp-0x110], 0x1
	mov eax, [ebp-0xec]
	sub eax, [ebp-0xf8]
	cmp [ebp-0x110], eax
	jz XAnimCalcParts_130
XAnimCalcParts_110:
	mov eax, [ebp-0x13c]
	add eax, [ebp-0x110]
	mov ecx, [ebp-0xf8]
	movzx edi, byte [eax+ecx]
	mov eax, [ebp-0x108]
	movzx esi, word [eax]
	mov ebx, eax
	add ebx, 0x2
	cmp esi, 0x3f
	jle XAnimCalcParts_140
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
	jz XAnimCalcParts_150
	mov eax, [ebp-0x124]
	lea eax, [eax+esi*2+0x2]
	mov [ebp-0x124], eax
	jmp XAnimCalcParts_160
XAnimCalcParts_130:
	mov edx, [ebp-0x110]
	add [ebp-0xf8], edx
	mov ecx, [ebp-0x138]
	mov edx, [ebp-0xf8]
XAnimCalcParts_100:
	movzx eax, byte [ecx+0x3]
	add eax, [ebp-0xec]
	mov [ebp-0xe8], eax
	cmp eax, edx
	jbe XAnimCalcParts_170
	mov dword [ebp-0x114], 0x0
	movss xmm1, dword [_float_0_00003052]
	mov ecx, [ebp-0x108]
	mov [ebp-0x15c], ecx
	mov edi, [ebp-0x13c]
	add edi, edx
	sub eax, edx
	mov [ebp-0x148], eax
XAnimCalcParts_190:
	movzx esi, byte [edi]
	mov eax, esi
	shr eax, 0x5
	mov ecx, esi
	and ecx, 0x1f
	mov edx, 0x80000000
	shr edx, cl
	mov ecx, [ebp+0x8]
	test [ecx+eax*4], edx
	jnz XAnimCalcParts_180
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
XAnimCalcParts_180:
	add dword [ebp-0x114], 0x1
	add edi, 0x1
	add dword [ebp-0x15c], 0x4
	mov ecx, [ebp-0x148]
	cmp [ebp-0x114], ecx
	jnz XAnimCalcParts_190
	mov eax, [ebp-0x114]
	add [ebp-0xf8], eax
	mov edx, [ebp-0x108]
	lea edx, [edx+eax*4]
	mov [ebp-0x108], edx
	mov ecx, [ebp-0x138]
XAnimCalcParts_170:
	movzx eax, byte [ecx+0x4]
	add eax, [ebp-0xe8]
	cmp eax, [ebp-0xf8]
	jbe XAnimCalcParts_200
	mov dword [ebp-0x118], 0x0
	movss xmm1, dword [_float_0_00003052]
	mov edi, [ebp-0x108]
	mov edx, [ebp-0x13c]
	add edx, [ebp-0xf8]
	mov [ebp-0x158], edx
	sub eax, [ebp-0xf8]
	mov [ebp-0x14c], eax
	mov ecx, edx
	jmp XAnimCalcParts_210
XAnimCalcParts_230:
	mov ecx, [ebp-0x158]
XAnimCalcParts_210:
	movzx esi, byte [ecx]
	mov eax, esi
	shr eax, 0x5
	mov ecx, esi
	and ecx, 0x1f
	mov edx, 0x80000000
	shr edx, cl
	mov ecx, [ebp+0x8]
	test [ecx+eax*4], edx
	jnz XAnimCalcParts_220
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
XAnimCalcParts_220:
	add dword [ebp-0x118], 0x1
	add dword [ebp-0x158], 0x1
	add edi, 0x8
	mov eax, [ebp-0x118]
	cmp [ebp-0x14c], eax
	jnz XAnimCalcParts_230
	mov edx, [ebp-0x108]
	lea edx, [edx+eax*8]
	mov [ebp-0x108], edx
	mov ecx, [ebp-0x138]
XAnimCalcParts_200:
	movzx eax, byte [ecx+0x5]
	movzx edx, al
	mov [ebp-0xe4], edx
	test al, al
	jz XAnimCalcParts_240
	mov dword [ebp-0xf4], 0x0
	jmp XAnimCalcParts_250
XAnimCalcParts_280:
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
	jz XAnimCalcParts_260
	mov edx, [ebp-0x104]
XAnimCalcParts_300:
	add dword [ebp-0xf4], 0x1
	add dword [ebp-0x134], 0x18
	lea eax, [edx+edx*2]
	mov ecx, [ebp-0x130]
	lea eax, [ecx+eax+0x3]
	mov [ebp-0x130], eax
	mov eax, [ebp-0xf4]
	cmp [ebp-0xe4], eax
	jbe XAnimCalcParts_270
XAnimCalcParts_250:
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
	jle XAnimCalcParts_280
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
	jz XAnimCalcParts_290
	mov edx, [ebp-0x124]
	mov eax, [ebp-0x104]
	lea edx, [edx+eax*2+0x2]
	mov [ebp-0x124], edx
	mov edx, eax
	jmp XAnimCalcParts_300
XAnimCalcParts_150:
	lea edx, [ebp-0x30]
	mov [esp+0x4], edx
	lea eax, [ebp-0x1c]
	mov [esp], eax
	mov ecx, [ebp-0x11c]
	mov edx, ebx
	lea eax, [ebp-0x30]
	call XAnim_GetTimeIndex
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
	call XAnim_GetTimeIndex
	mov eax, [ebp-0x20]
	add eax, [ebp-0x1c]
	mov [ebp-0x20], eax
	mov eax, [ebp-0x124]
	lea eax, [eax+esi*2+0x2]
	mov [ebp-0x124], eax
XAnimCalcParts_310:
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
	jmp XAnimCalcParts_160
XAnimCalcParts_120:
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	lea eax, [ebp-0x20]
	mov [esp], eax
	mov ecx, esi
	mov edx, ebx
	lea eax, [ebp-0x30]
	call XAnim_GetTimeIndex
	jmp XAnimCalcParts_310
XAnimCalcParts_260:
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	lea eax, [ebp-0x24]
	mov [esp], eax
	mov ecx, [ebp-0x104]
	mov edx, ebx
	lea eax, [ebp-0x30]
	call XAnim_GetTimeIndex
XAnimCalcParts_320:
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
	jmp XAnimCalcParts_300
XAnimCalcParts_290:
	lea ecx, [ebp-0x30]
	mov [esp+0x4], ecx
	lea eax, [ebp-0x1c]
	mov [esp], eax
	mov ecx, edi
	mov edx, ebx
	lea eax, [ebp-0x30]
	call XAnim_GetTimeIndex
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
	call XAnim_GetTimeIndex
	mov eax, [ebp-0x24]
	add eax, [ebp-0x1c]
	mov [ebp-0x24], eax
	mov edx, [ebp-0x124]
	mov eax, [ebp-0x104]
	lea edx, [edx+eax*2+0x2]
	mov [ebp-0x124], edx
	jmp XAnimCalcParts_320
XAnimCalcParts_240:
	mov dword [ebp-0xf4], 0x0
	mov ecx, [ebp-0xf4]
XAnimCalcParts_510:
	mov edx, [ebp-0x138]
	movzx eax, byte [edx+0x6]
	add eax, [ebp-0xe4]
	mov [ebp-0xe0], eax
	cmp eax, ecx
	ja XAnimCalcParts_330
	mov edi, ecx
XAnimCalcParts_420:
	mov ecx, [ebp-0x138]
	movzx eax, byte [ecx+0x7]
	add eax, [ebp-0xe0]
	mov [ebp-0xdc], eax
	cmp eax, edi
	jbe XAnimCalcParts_340
	mov esi, [ebp-0x100]
	sub eax, edi
	add eax, esi
	mov [ebp-0x150], eax
XAnimCalcParts_360:
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
	jnz XAnimCalcParts_350
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
XAnimCalcParts_350:
	add esi, 0x1
	add dword [ebp-0x134], 0xc
	cmp [ebp-0x150], esi
	jnz XAnimCalcParts_360
	mov eax, edi
	sub eax, [ebp-0x100]
	mov edx, [ebp-0x150]
	lea edi, [eax+edx]
	mov [ebp-0x100], edx
	mov ecx, [ebp-0x138]
XAnimCalcParts_340:
	movzx eax, byte [ecx+0x8]
	add eax, [ebp-0xdc]
	cmp eax, edi
	jbe XAnimCalcParts_370
	mov esi, [ebp-0x100]
	sub eax, edi
	lea edi, [esi+eax]
XAnimCalcParts_390:
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
	jnz XAnimCalcParts_380
	shl ebx, 0x5
	mov eax, [ebp-0x144]
	add eax, ebx
	movss xmm0, dword [ebp-0x140]
	addss xmm0, [eax+0x1c]
	movss [eax+0x1c], xmm0
XAnimCalcParts_380:
	add esi, 0x1
	cmp esi, edi
	jnz XAnimCalcParts_390
XAnimCalcParts_370:
	add esp, 0x16c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimCalcParts_330:
	mov [ebp-0xfc], ecx
	mov edx, [ebp-0xe0]
	mov [ebp-0x154], edx
	jmp XAnimCalcParts_400
XAnimCalcParts_430:
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
	jz XAnimCalcParts_410
	mov ecx, [ebp-0x128]
XAnimCalcParts_450:
	add dword [ebp-0xfc], 0x1
	add dword [ebp-0x134], 0x18
	lea eax, [ecx+ecx*2]
	mov edx, [ebp-0x12c]
	lea edx, [edx+eax*2+0x6]
	mov [ebp-0x12c], edx
	mov edi, [ebp-0x154]
	cmp edi, [ebp-0xfc]
	jz XAnimCalcParts_420
XAnimCalcParts_400:
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
	jle XAnimCalcParts_430
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
	jz XAnimCalcParts_440
	mov edx, [ebp-0x124]
	mov eax, [ebp-0x128]
	lea edx, [edx+eax*2+0x2]
	mov [ebp-0x124], edx
	mov ecx, eax
	jmp XAnimCalcParts_450
XAnimCalcParts_410:
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	lea eax, [ebp-0x1c]
	mov [esp], eax
	mov ecx, [ebp-0x128]
	mov edx, ebx
	lea eax, [ebp-0x30]
	call XAnim_GetTimeIndex
XAnimCalcParts_460:
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
	jmp XAnimCalcParts_450
XAnimCalcParts_440:
	lea ecx, [ebp-0x30]
	mov [esp+0x4], ecx
	lea eax, [ebp-0x24]
	mov [esp], eax
	mov ecx, edi
	mov edx, ebx
	lea eax, [ebp-0x30]
	call XAnim_GetTimeIndex
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
	call XAnim_GetTimeIndex
	mov eax, [ebp-0x1c]
	add eax, [ebp-0x24]
	mov [ebp-0x1c], eax
	mov edx, [ebp-0x124]
	mov eax, [ebp-0x128]
	lea edx, [edx+eax*2+0x2]
	mov [ebp-0x124], edx
	jmp XAnimCalcParts_460
XAnimCalcParts_20:
	mov ecx, esi
	jmp XAnimCalcParts_470
XAnimCalcParts_10:
	mov dword [ebp-0xf8], 0x0
XAnimCalcParts_490:
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
	jnz XAnimCalcParts_480
	shl ebx, 0x5
	mov eax, [ebp-0x144]
	add eax, ebx
	movss xmm0, dword [ebp-0x140]
	addss xmm0, [eax+0xc]
	movss [eax+0xc], xmm0
XAnimCalcParts_480:
	add dword [ebp-0xf8], 0x1
	cmp edi, [ebp-0xf8]
	ja XAnimCalcParts_490
	jmp XAnimCalcParts_500
XAnimCalcParts_270:
	mov ecx, eax
	jmp XAnimCalcParts_510
	nop


;XAnimCalc(DObj_s const*, XAnimInfo*, float, unsigned char, unsigned char, XAnimCalcAnimInfo*, int, DObjAnimMat*)
XAnimCalc:
XAnimCalc_900:
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
	jz XAnimCalc_10
	test cl, cl
	jnz XAnimCalc_20
XAnimCalc_470:
	mov ecx, [edi+0x14]
	mov [ebp-0x1dc], ecx
	movzx eax, word [edi+0x12]
	mov [esp], eax
	movss [ebp-0x268], xmm7
	call SL_ConvertToString
	mov esi, eax
	mov edx, [ebp+0xc]
	mov ecx, eax
	mov ebx, 0x4
	movss xmm7, dword [ebp-0x268]
XAnimCalc_30:
	mov eax, [edx+0x6010]
	not eax
	and eax, [ecx]
	or [edx+0x6000], eax
	add edx, 0x4
	add ecx, 0x4
	sub ebx, 0x1
	jnz XAnimCalc_30
	movss xmm5, dword [edi+0x18]
	ucomiss xmm5, [_float_1_00000000]
	jp XAnimCalc_40
	jnz XAnimCalc_40
	mov edx, [ebp-0x1dc]
	mov ecx, [ebp-0x1dc]
XAnimCalc_620:
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
	jnz XAnimCalc_50
	mov dword [ebp-0x154], 0x0
	mov ebx, [ebp-0x1dc]
	movzx eax, byte [ebx+0x13]
	add esi, eax
	mov [ebp-0x134], esi
	mov eax, [ebp-0x154]
	cmp esi, eax
	jbe XAnimCalc_60
XAnimCalc_520:
	mov dword [ebp-0x18c], 0x0
	movss xmm1, dword [_float_0_00003052]
	jmp XAnimCalc_70
XAnimCalc_100:
	mov eax, [ebp-0x158]
	lea eax, [ebx+eax+0x1]
	mov [ebp-0x158], eax
XAnimCalc_630:
	mov edx, esi
	shr edx, 0x5
	mov ecx, esi
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	mov ecx, [ebp-0x1e4]
	test [ecx+edx*4], eax
	jz XAnimCalc_80
XAnimCalc_120:
	mov eax, [ebp-0x1ec]
	lea edi, [eax+ebx*4]
	add edi, 0x4
	mov [ebp-0x1ec], edi
	add dword [ebp-0x18c], 0x1
	mov eax, [ebp-0x134]
	sub eax, [ebp-0x154]
	cmp [ebp-0x18c], eax
	jz XAnimCalc_90
XAnimCalc_70:
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
	jnz XAnimCalc_100
	cmp ebx, 0x3f
	ja XAnimCalc_110
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
	jnz XAnimCalc_120
XAnimCalc_80:
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
	jnz XAnimCalc_70
XAnimCalc_90:
	mov ecx, [ebp-0x18c]
	add [ebp-0x154], ecx
	mov ebx, [ebp-0x1dc]
	mov edx, [ebp-0x154]
	movzx eax, byte [ebx+0x14]
	add eax, [ebp-0x134]
	mov [ebp-0x130], eax
	cmp eax, edx
	ja XAnimCalc_130
XAnimCalc_530:
	movzx eax, byte [ebx+0x15]
	add eax, [ebp-0x130]
	mov [ebp-0x12c], eax
	cmp eax, edx
	jbe XAnimCalc_140
XAnimCalc_600:
	mov dword [ebp-0x194], 0x0
	movss xmm1, dword [_float_0_00003052]
	mov ecx, [ebp-0x1f8]
	mov [ebp-0x24c], ecx
	mov edi, [ebp-0x1fc]
	add edi, edx
	sub eax, edx
	mov [ebp-0x21c], eax
XAnimCalc_160:
	movzx esi, byte [edi]
	mov eax, esi
	shr eax, 0x5
	mov ecx, esi
	and ecx, 0x1f
	mov edx, 0x80000000
	shr edx, cl
	mov ebx, [ebp-0x1e4]
	test [ebx+eax*4], edx
	jnz XAnimCalc_150
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
XAnimCalc_150:
	add dword [ebp-0x194], 0x1
	add edi, 0x1
	add dword [ebp-0x24c], 0x4
	mov ecx, [ebp-0x21c]
	cmp [ebp-0x194], ecx
	jnz XAnimCalc_160
	mov ebx, [ebp-0x194]
	add [ebp-0x154], ebx
	mov eax, [ebp-0x1f8]
	lea eax, [eax+ebx*4]
	mov [ebp-0x1f8], eax
	mov edx, [ebp-0x1dc]
XAnimCalc_610:
	movzx eax, byte [edx+0x16]
	add eax, [ebp-0x12c]
	cmp eax, [ebp-0x154]
	jbe XAnimCalc_170
	mov dword [ebp-0x198], 0x0
	movss xmm1, dword [_float_0_00003052]
	mov edi, [ebp-0x1f8]
	mov ecx, [ebp-0x1fc]
	add ecx, [ebp-0x154]
	mov [ebp-0x248], ecx
	sub eax, [ebp-0x154]
	mov [ebp-0x220], eax
	mov ebx, ecx
	jmp XAnimCalc_180
XAnimCalc_200:
	mov ebx, [ebp-0x248]
XAnimCalc_180:
	movzx esi, byte [ebx]
	mov eax, esi
	shr eax, 0x5
	mov ecx, esi
	and ecx, 0x1f
	mov edx, 0x80000000
	shr edx, cl
	mov ecx, [ebp-0x1e4]
	test [ecx+eax*4], edx
	jnz XAnimCalc_190
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
XAnimCalc_190:
	add dword [ebp-0x198], 0x1
	add dword [ebp-0x248], 0x1
	add edi, 0x8
	mov ebx, [ebp-0x198]
	cmp [ebp-0x220], ebx
	jnz XAnimCalc_200
	mov eax, [ebp-0x1f8]
	lea eax, [eax+ebx*8]
	mov [ebp-0x1f8], eax
	mov edx, [ebp-0x1dc]
XAnimCalc_170:
	movzx eax, byte [edx+0x17]
	movzx ecx, al
	mov [ebp-0x128], ecx
	test al, al
	jnz XAnimCalc_210
	xor edi, edi
XAnimCalc_750:
	mov ebx, [ebp-0x1dc]
	movzx eax, byte [ebx+0x18]
	add eax, [ebp-0x128]
	mov [ebp-0x124], eax
	cmp eax, edi
	jbe XAnimCalc_220
	movaps xmm3, xmm7
	mulss xmm3, [_float_0_00000000]
	mov [ebp-0x150], edi
	mov [ebp-0x244], eax
	jmp XAnimCalc_230
XAnimCalc_250:
	lea edx, [edx+esi+0x1]
	mov [ebp-0x158], edx
XAnimCalc_650:
	mov edx, ebx
	shr edx, 0x5
	mov ecx, ebx
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	mov ecx, [ebp-0x1e4]
	test [ecx+edx*4], eax
	jz XAnimCalc_240
XAnimCalc_270:
	lea eax, [esi+esi*2]
	lea esi, [eax+eax]
XAnimCalc_280:
	add dword [ebp-0x150], 0x1
	add dword [ebp-0x1f4], 0x18
	mov ecx, [ebp-0x1ec]
	lea esi, [ecx+esi+0x6]
	mov [ebp-0x1ec], esi
	mov edi, [ebp-0x244]
	cmp edi, [ebp-0x150]
	jz XAnimCalc_220
XAnimCalc_230:
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
	jnz XAnimCalc_250
	cmp esi, 0x3f
	ja XAnimCalc_260
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
	jnz XAnimCalc_270
XAnimCalc_240:
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
	jmp XAnimCalc_280
XAnimCalc_10:
	movzx eax, word [edx+0xc]
	movzx edx, ax
	test ax, ax
	jnz XAnimCalc_290
XAnimCalc_340:
	mov ecx, esi
	test cl, cl
	jz XAnimCalc_300
	mov eax, [ebp-0x214]
	cmp byte [eax+0xa], 0x0
	jz XAnimCalc_300
	xor ebx, ebx
XAnimCalc_320:
	mov edx, ebx
	shr edx, 0x5
	mov ecx, ebx
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	mov ecx, [ebp+0xc]
	test [ecx+edx*4+0x6010], eax
	jnz XAnimCalc_310
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
XAnimCalc_310:
	add ebx, 0x1
	add dword [ebp+0x14], 0x20
	mov edx, [ebp-0x214]
	movzx eax, byte [edx+0xa]
	cmp eax, ebx
	jg XAnimCalc_320
XAnimCalc_300:
	add esp, 0x27c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimCalc_290:
	mov [esp], edx
	movss [ebp-0x268], xmm7
	call GetAnimInfo
	mov ebx, eax
	movss xmm0, dword [eax+0x2c]
	movss [ebp-0x20c], xmm0
	movss xmm7, dword [ebp-0x268]
	ucomiss xmm0, [_float_0_00000000]
	jp XAnimCalc_330
	jnz XAnimCalc_330
	movzx eax, word [eax+0xa]
	movzx edx, ax
	test ax, ax
	jnz XAnimCalc_290
	jmp XAnimCalc_340
XAnimCalc_40:
	mov ebx, [ebp-0x1dc]
	movzx eax, word [ebx+0xe]
	test ax, ax
	jz XAnimCalc_350
	cmp ax, 0xff
	ja XAnimCalc_360
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
	jnz XAnimCalc_370
	mov dword [ebp-0x164], 0x0
XAnimCalc_830:
	mov ebx, [ebp-0x1dc]
	add ebx, 0x12
	mov [ebp-0x1d8], ebx
	movzx eax, byte [ebx+0x1]
	add esi, eax
	mov [ebp-0x14c], esi
	mov eax, [ebp-0x164]
	cmp esi, eax
	jbe XAnimCalc_380
	mov esi, [ebp-0x178]
	mov dword [ebp-0x17c], 0x0
	movss xmm4, dword [_float_0_00003052]
	mov ebx, esi
XAnimCalc_460:
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
	jnz XAnimCalc_390
	cvtsi2ss xmm0, dword [ebp-0x168]
	mulss xmm0, xmm5
	cvttss2si ecx, xmm0
	lea edx, [esi+ecx]
	movzx eax, byte [edx]
	cmp [ebp-0x19c], eax
	jae XAnimCalc_400
	xor edi, edi
XAnimCalc_420:
	lea ebx, [ecx-0x1]
	lea edx, [esi+ebx]
	movzx eax, byte [edx]
	cmp [ebp-0x19c], eax
	jae XAnimCalc_410
XAnimCalc_440:
	lea ecx, [edi+ebx]
	shr ecx, 1
	lea edx, [esi+ecx]
	movzx eax, byte [edx]
	cmp [ebp-0x19c], eax
	jb XAnimCalc_420
	lea edi, [ecx+0x1]
	movzx eax, byte [esi+edi]
	cmp [ebp-0x19c], eax
	jb XAnimCalc_430
	mov ecx, ebx
	lea ebx, [ecx-0x1]
	lea edx, [esi+ebx]
	movzx eax, byte [edx]
	cmp [ebp-0x19c], eax
	jb XAnimCalc_440
XAnimCalc_410:
	lea edi, [edx+0x1]
	mov ecx, ebx
XAnimCalc_840:
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
XAnimCalc_390:
	mov edx, [ebp-0x1cc]
	mov eax, [ebp-0x168]
	lea edx, [edx+eax*4+0x4]
	mov [ebp-0x1cc], edx
	add dword [ebp-0x17c], 0x1
	mov eax, [ebp-0x14c]
	sub eax, [ebp-0x164]
	cmp eax, [ebp-0x17c]
	jz XAnimCalc_450
	mov esi, [ebp-0x178]
	mov ebx, esi
	jmp XAnimCalc_460
XAnimCalc_20:
	mov edx, [ebp-0x214]
	cmp byte [edx+0xa], 0x0
	jz XAnimCalc_470
	mov ebx, [ebp+0x14]
	xor esi, esi
XAnimCalc_490:
	mov edx, esi
	shr edx, 0x5
	mov ecx, esi
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	mov ecx, [ebp+0xc]
	test [ecx+edx*4+0x6010], eax
	jnz XAnimCalc_480
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
XAnimCalc_480:
	add esi, 0x1
	add ebx, 0x20
	mov edx, [ebp-0x214]
	movzx eax, byte [edx+0xa]
	cmp eax, esi
	jg XAnimCalc_490
	jmp XAnimCalc_470
XAnimCalc_50:
	mov dword [ebp-0x154], 0x0
	mov edi, 0x80000000
XAnimCalc_510:
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
	jnz XAnimCalc_500
	shl ebx, 0x5
	mov eax, [ebp+0x14]
	add eax, ebx
	movaps xmm0, xmm7
	addss xmm0, [eax+0xc]
	movss [eax+0xc], xmm0
XAnimCalc_500:
	add dword [ebp-0x154], 0x1
	cmp esi, [ebp-0x154]
	ja XAnimCalc_510
	mov ebx, [ebp-0x1dc]
	movzx eax, byte [ebx+0x13]
	add esi, eax
	mov [ebp-0x134], esi
	mov eax, [ebp-0x154]
	cmp esi, eax
	ja XAnimCalc_520
XAnimCalc_60:
	mov edx, eax
	movzx eax, byte [ebx+0x14]
	add eax, [ebp-0x134]
	mov [ebp-0x130], eax
	cmp eax, edx
	jbe XAnimCalc_530
XAnimCalc_130:
	mov dword [ebp-0x190], 0x0
	movss xmm1, dword [_float_0_00003052]
	jmp XAnimCalc_540
XAnimCalc_570:
	mov edx, [ebp-0x158]
	lea edx, [ebx+edx+0x1]
	mov [ebp-0x158], edx
XAnimCalc_640:
	mov edx, edi
	shr edx, 0x5
	mov ecx, edi
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	mov ecx, [ebp-0x1e4]
	test [ecx+edx*4], eax
	jz XAnimCalc_550
XAnimCalc_590:
	mov eax, [ebp-0x1ec]
	lea esi, [eax+ebx*8]
	add esi, 0x8
	mov [ebp-0x1ec], esi
	add dword [ebp-0x190], 0x1
	mov eax, [ebp-0x130]
	sub eax, [ebp-0x154]
	cmp eax, [ebp-0x190]
	jz XAnimCalc_560
XAnimCalc_540:
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
	jnz XAnimCalc_570
	cmp ebx, 0x3f
	ja XAnimCalc_580
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
	jnz XAnimCalc_590
XAnimCalc_550:
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
	jnz XAnimCalc_540
XAnimCalc_560:
	mov ecx, [ebp-0x190]
	add [ebp-0x154], ecx
	mov ebx, [ebp-0x1dc]
	mov edx, [ebp-0x154]
	movzx eax, byte [ebx+0x15]
	add eax, [ebp-0x130]
	mov [ebp-0x12c], eax
	cmp eax, edx
	ja XAnimCalc_600
XAnimCalc_140:
	mov edx, ebx
	jmp XAnimCalc_610
XAnimCalc_350:
	mov edx, ebx
	mov ecx, ebx
	jmp XAnimCalc_620
XAnimCalc_110:
	lea eax, [ebx-0x1]
	shr eax, 0x8
	mov ecx, [ebp-0x1f8]
	lea ecx, [ecx+eax*2+0x4]
	mov [ebp-0x1f8], ecx
	jmp XAnimCalc_630
XAnimCalc_580:
	lea eax, [ebx-0x1]
	shr eax, 0x8
	mov edx, [ebp-0x1f8]
	lea edx, [edx+eax*2+0x4]
	mov [ebp-0x1f8], edx
	jmp XAnimCalc_640
XAnimCalc_260:
	lea eax, [esi-0x1]
	shr eax, 0x8
	mov edx, [ebp-0x1f8]
	lea edx, [edx+eax*2+0x4]
	mov [ebp-0x1f8], edx
	jmp XAnimCalc_650
XAnimCalc_220:
	mov ebx, [ebp-0x1dc]
	movzx eax, byte [ebx+0x19]
	add eax, [ebp-0x124]
	mov [ebp-0x120], eax
	cmp eax, edi
	ja XAnimCalc_660
	mov edx, [ebp-0x158]
XAnimCalc_720:
	mov ecx, [ebp-0x1dc]
	movzx eax, byte [ecx+0x1a]
	add eax, [ebp-0x120]
	cmp eax, edi
	jbe XAnimCalc_300
	mov esi, edx
	sub eax, edi
	lea edi, [edx+eax]
XAnimCalc_680:
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
	jnz XAnimCalc_670
	shl ebx, 0x5
	mov eax, [ebp+0x14]
	add eax, ebx
	movaps xmm0, xmm7
	addss xmm0, [eax+0x1c]
	movss [eax+0x1c], xmm0
XAnimCalc_670:
	add esi, 0x1
	cmp esi, edi
	jnz XAnimCalc_680
	add esp, 0x27c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimCalc_660:
	movaps xmm1, xmm7
	mulss xmm1, [_float_0_00000000]
	mov esi, [ebp-0x158]
	sub eax, edi
	add eax, esi
	mov [ebp-0x240], eax
	jmp XAnimCalc_690
XAnimCalc_710:
	add esi, 0x1
	add dword [ebp-0x1f4], 0xc
	mov edx, [ebp-0x240]
	cmp edx, esi
	jz XAnimCalc_700
XAnimCalc_690:
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
	jnz XAnimCalc_710
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
	jnz XAnimCalc_690
XAnimCalc_700:
	mov eax, edi
	sub eax, [ebp-0x158]
	lea edi, [eax+edx]
	jmp XAnimCalc_720
XAnimCalc_210:
	movaps xmm3, xmm7
	mulss xmm3, [_float_0_00000000]
	xor edi, edi
	jmp XAnimCalc_730
XAnimCalc_760:
	mov eax, [ebp-0x158]
	lea eax, [eax+esi+0x1]
	mov [ebp-0x158], eax
XAnimCalc_800:
	mov edx, ebx
	shr edx, 0x5
	mov ecx, ebx
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	mov ecx, [ebp-0x1e4]
	test [ecx+edx*4], eax
	jz XAnimCalc_740
XAnimCalc_780:
	lea esi, [esi+esi*2]
XAnimCalc_790:
	add edi, 0x1
	add dword [ebp-0x1f4], 0x18
	mov ecx, [ebp-0x1f0]
	lea esi, [ecx+esi+0x3]
	mov [ebp-0x1f0], esi
	cmp edi, [ebp-0x128]
	jae XAnimCalc_750
XAnimCalc_730:
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
	jnz XAnimCalc_760
	cmp esi, 0x3f
	ja XAnimCalc_770
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
	jnz XAnimCalc_780
XAnimCalc_740:
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
	jmp XAnimCalc_790
XAnimCalc_770:
	lea eax, [esi-0x1]
	shr eax, 0x8
	mov ecx, [ebp-0x1f8]
	lea ecx, [ecx+eax*2+0x4]
	mov [ebp-0x1f8], ecx
	jmp XAnimCalc_800
XAnimCalc_370:
	mov dword [ebp-0x164], 0x0
	mov edi, 0x80000000
XAnimCalc_820:
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
	jnz XAnimCalc_810
	shl ebx, 0x5
	mov eax, [ebp+0x14]
	add eax, ebx
	movaps xmm0, xmm7
	addss xmm0, [eax+0xc]
	movss [eax+0xc], xmm0
XAnimCalc_810:
	add dword [ebp-0x164], 0x1
	cmp esi, [ebp-0x164]
	ja XAnimCalc_820
	jmp XAnimCalc_830
XAnimCalc_400:
	lea edi, [edx+0x1]
	movzx eax, byte [edx+0x1]
	cmp [ebp-0x19c], eax
	jb XAnimCalc_840
	lea ebx, [ecx+0x1]
	mov edi, [ebp-0x168]
XAnimCalc_870:
	add ebx, 0x1
	movzx eax, byte [esi+ebx]
	cmp [ebp-0x19c], eax
	jb XAnimCalc_850
	lea ecx, [edi+ebx]
	shr ecx, 1
	lea edx, [esi+ecx]
	movzx eax, byte [edx]
	cmp [ebp-0x19c], eax
	jb XAnimCalc_860
	lea ebx, [ecx+0x1]
	movzx eax, byte [esi+ebx]
	cmp [ebp-0x19c], eax
	jae XAnimCalc_870
XAnimCalc_430:
	lea edi, [edx+0x1]
	jmp XAnimCalc_840
XAnimCalc_860:
	mov edi, ecx
	jmp XAnimCalc_870
XAnimCalc_330:
	cmp word [ebx+0x12], 0x0
	jnz XAnimCalc_880
	test byte [ebx+0x14], 0x10
	jz XAnimCalc_880
	mov eax, 0x1
XAnimCalc_1540:
	test eax, eax
	jnz XAnimCalc_340
	movzx eax, word [ebx+0xa]
	movzx edx, ax
	mov [ebp-0x210], edx
	test ax, ax
	jnz XAnimCalc_890
	mov dword [ebp-0x200], 0x0
	mov dword [ebp-0x204], 0x0
XAnimCalc_1680:
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
	call XAnimCalc_900
	movss xmm7, dword [ebp-0x268]
XAnimCalc_1700:
	mov ecx, [ebp-0x210]
	test ecx, ecx
	jz XAnimCalc_300
	mov edx, [ebp-0x200]
	test edx, edx
	jnz XAnimCalc_910
	mov eax, [ebp+0x10]
	shl eax, 0x5
	add eax, [ebp+0xc]
	mov [ebp-0x204], eax
	mov ecx, [ebp-0x214]
	movzx eax, byte [ecx+0xa]
	add [ebp+0x10], eax
	cmp dword [ebp+0x10], 0x300
	jg XAnimCalc_920
	mov eax, [ebp-0x204]
	test eax, eax
	jz XAnimCalc_300
XAnimCalc_910:
	xor esi, esi
	mov ebx, [ebp-0x210]
	jmp XAnimCalc_930
XAnimCalc_960:
	movzx eax, word [ebx+0xa]
	movzx ecx, ax
	mov [ebp-0x210], ecx
	test ax, ax
	jz XAnimCalc_940
	mov ebx, ecx
XAnimCalc_930:
	mov [esp], ebx
	movss [ebp-0x268], xmm7
	call GetAnimInfo
	mov ebx, eax
	movss xmm0, dword [eax+0x2c]
	movss xmm7, dword [ebp-0x268]
	ucomiss xmm0, [_float_0_00000000]
	jp XAnimCalc_950
	jz XAnimCalc_960
XAnimCalc_950:
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
	call XAnimCalc_900
	mov esi, 0x1
	movss xmm7, dword [ebp-0x268]
	jmp XAnimCalc_960
XAnimCalc_380:
	mov edx, ebx
	mov ecx, eax
XAnimCalc_1530:
	movzx eax, byte [edx+0x2]
	add eax, [ebp-0x14c]
	mov [ebp-0x148], eax
	cmp eax, ecx
	jbe XAnimCalc_970
	mov dword [ebp-0x180], 0x0
	movss xmm4, dword [_float_0_00003052]
	mov edx, [ebp-0x178]
XAnimCalc_1050:
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
	jnz XAnimCalc_980
	cvtsi2ss xmm0, dword [ebp-0x16c]
	mulss xmm0, xmm5
	cvttss2si ecx, xmm0
	mov edx, [ebp-0x178]
	add edx, ecx
	movzx eax, byte [edx]
	cmp [ebp-0x19c], eax
	jae XAnimCalc_990
	xor esi, esi
XAnimCalc_1010:
	lea ebx, [ecx-0x1]
	mov edx, [ebp-0x178]
	add edx, ebx
	movzx eax, byte [edx]
	cmp [ebp-0x19c], eax
	jae XAnimCalc_1000
XAnimCalc_1030:
	lea ecx, [esi+ebx]
	shr ecx, 1
	mov edx, [ebp-0x178]
	add edx, ecx
	movzx eax, byte [edx]
	cmp [ebp-0x19c], eax
	jb XAnimCalc_1010
	lea esi, [ecx+0x1]
	mov eax, [ebp-0x178]
	movzx eax, byte [eax+esi]
	cmp [ebp-0x19c], eax
	jb XAnimCalc_1020
	mov ecx, ebx
	lea ebx, [ecx-0x1]
	mov edx, [ebp-0x178]
	add edx, ebx
	movzx eax, byte [edx]
	cmp [ebp-0x19c], eax
	jb XAnimCalc_1030
XAnimCalc_1000:
	lea esi, [edx+0x1]
	mov ecx, ebx
XAnimCalc_1060:
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
XAnimCalc_980:
	mov edx, [ebp-0x1cc]
	mov eax, [ebp-0x16c]
	lea edx, [edx+eax*8+0x8]
	mov [ebp-0x1cc], edx
	add dword [ebp-0x180], 0x1
	mov eax, [ebp-0x148]
	sub eax, [ebp-0x164]
	cmp eax, [ebp-0x180]
	jz XAnimCalc_1040
	mov ecx, [ebp-0x174]
	mov [ebp-0x178], ecx
	mov edx, ecx
	jmp XAnimCalc_1050
XAnimCalc_990:
	lea esi, [edx+0x1]
	movzx eax, byte [edx+0x1]
	cmp [ebp-0x19c], eax
	jb XAnimCalc_1060
	lea ebx, [ecx+0x1]
	mov esi, [ebp-0x16c]
XAnimCalc_1090:
	add ebx, 0x1
	mov edx, [ebp-0x178]
	movzx eax, byte [edx+ebx]
	cmp [ebp-0x19c], eax
	jb XAnimCalc_1070
	lea ecx, [esi+ebx]
	shr ecx, 1
	add edx, ecx
	movzx eax, byte [edx]
	cmp [ebp-0x19c], eax
	jb XAnimCalc_1080
	lea ebx, [ecx+0x1]
	mov eax, [ebp-0x178]
	movzx eax, byte [eax+ebx]
	cmp [ebp-0x19c], eax
	jae XAnimCalc_1090
XAnimCalc_1020:
	lea esi, [edx+0x1]
	jmp XAnimCalc_1060
XAnimCalc_1080:
	mov esi, ecx
	jmp XAnimCalc_1090
XAnimCalc_970:
	mov ecx, edx
XAnimCalc_1350:
	movzx eax, byte [ecx+0x3]
	add eax, [ebp-0x148]
	mov [ebp-0x144], eax
	mov ebx, [ebp-0x164]
	cmp eax, ebx
	jbe XAnimCalc_1100
	mov edx, eax
	mov dword [ebp-0x184], 0x0
	movss xmm1, dword [_float_0_00003052]
	mov eax, [ebp-0x1d4]
	mov [ebp-0x23c], eax
	mov edi, ebx
	add edi, [ebp-0x1e0]
	sub edx, ebx
	mov [ebp-0x224], edx
XAnimCalc_1120:
	movzx esi, byte [edi]
	mov eax, esi
	shr eax, 0x5
	mov ecx, esi
	and ecx, 0x1f
	mov edx, 0x80000000
	shr edx, cl
	mov ecx, [ebp-0x1b4]
	test [ecx+eax*4], edx
	jnz XAnimCalc_1110
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
XAnimCalc_1110:
	add dword [ebp-0x184], 0x1
	add edi, 0x1
	add dword [ebp-0x23c], 0x4
	mov eax, [ebp-0x224]
	cmp [ebp-0x184], eax
	jnz XAnimCalc_1120
	mov edx, [ebp-0x184]
	add [ebp-0x164], edx
	mov ecx, [ebp-0x1d4]
	lea ecx, [ecx+edx*4]
	mov [ebp-0x1d4], ecx
	mov ebx, [ebp-0x1d8]
XAnimCalc_1340:
	movzx eax, byte [ebx+0x4]
	add eax, [ebp-0x144]
	cmp eax, [ebp-0x164]
	jbe XAnimCalc_1130
	mov dword [ebp-0x188], 0x0
	movss xmm1, dword [_float_0_00003052]
	mov edi, [ebp-0x1d4]
	mov edx, [ebp-0x164]
	add edx, [ebp-0x1e0]
	mov [ebp-0x238], edx
	sub eax, [ebp-0x164]
	mov [ebp-0x228], eax
	mov ecx, edx
	jmp XAnimCalc_1140
XAnimCalc_1160:
	mov ecx, [ebp-0x238]
XAnimCalc_1140:
	movzx esi, byte [ecx]
	mov eax, esi
	shr eax, 0x5
	mov ecx, esi
	and ecx, 0x1f
	mov edx, 0x80000000
	shr edx, cl
	mov ebx, [ebp-0x1b4]
	test [ebx+eax*4], edx
	jnz XAnimCalc_1150
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
XAnimCalc_1150:
	add dword [ebp-0x188], 0x1
	add dword [ebp-0x238], 0x1
	add edi, 0x8
	mov eax, [ebp-0x188]
	cmp [ebp-0x228], eax
	jnz XAnimCalc_1160
	mov edx, [ebp-0x1d4]
	lea edx, [edx+eax*8]
	mov [ebp-0x1d4], edx
	mov ecx, [ebp-0x1d8]
XAnimCalc_1520:
	movzx eax, byte [ecx+0x5]
	movzx ebx, al
	mov [ebp-0x140], ebx
	test al, al
	jz XAnimCalc_1170
	mov dword [ebp-0x15c], 0x0
XAnimCalc_1240:
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
	jnz XAnimCalc_1180
	cvtsi2ss xmm0, ebx
	mulss xmm0, xmm5
	cvttss2si ecx, xmm0
	lea edx, [esi+ecx]
	movzx eax, byte [edx]
	cmp [ebp-0x19c], eax
	jae XAnimCalc_1190
	xor edi, edi
XAnimCalc_1210:
	lea ebx, [ecx-0x1]
	lea edx, [esi+ebx]
	movzx eax, byte [edx]
	cmp [ebp-0x19c], eax
	jae XAnimCalc_1200
XAnimCalc_1230:
	lea ecx, [edi+ebx]
	shr ecx, 1
	lea edx, [esi+ecx]
	movzx eax, byte [edx]
	cmp [ebp-0x19c], eax
	jb XAnimCalc_1210
	lea edi, [ecx+0x1]
	movzx eax, byte [esi+edi]
	cmp [ebp-0x19c], eax
	jb XAnimCalc_1220
	mov ecx, ebx
	lea ebx, [ecx-0x1]
	lea edx, [esi+ebx]
	movzx eax, byte [edx]
	cmp [ebp-0x19c], eax
	jb XAnimCalc_1230
XAnimCalc_1200:
	lea edi, [edx+0x1]
	mov ecx, ebx
XAnimCalc_1300:
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
XAnimCalc_1290:
	add dword [ebp-0x15c], 0x1
	add dword [ebp-0x1b8], 0x18
	lea eax, [ecx+ecx*2]
	mov ebx, [ebp-0x1d0]
	lea eax, [ebx+eax+0x3]
	mov [ebp-0x1d0], eax
	mov eax, [ebp-0x15c]
	cmp [ebp-0x140], eax
	ja XAnimCalc_1240
	mov ecx, eax
XAnimCalc_1390:
	mov edx, [ebp-0x1d8]
	movzx eax, byte [edx+0x6]
	add eax, [ebp-0x140]
	mov [ebp-0x13c], eax
	cmp eax, ecx
	ja XAnimCalc_1250
	mov edi, ecx
XAnimCalc_1470:
	mov ecx, [ebp-0x1d8]
	movzx eax, byte [ecx+0x7]
	add eax, [ebp-0x13c]
	mov [ebp-0x138], eax
	cmp eax, edi
	ja XAnimCalc_1260
	mov edx, [ebp-0x178]
XAnimCalc_1380:
	mov ecx, [ebp-0x1d8]
	movzx eax, byte [ecx+0x8]
	add eax, [ebp-0x138]
	cmp eax, edi
	jbe XAnimCalc_300
	mov esi, edx
	sub eax, edi
	lea edi, [eax+edx]
XAnimCalc_1280:
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
	jnz XAnimCalc_1270
	shl ebx, 0x5
	mov eax, [ebp+0x14]
	add eax, ebx
	movaps xmm0, xmm7
	addss xmm0, [eax+0x1c]
	movss [eax+0x1c], xmm0
XAnimCalc_1270:
	add esi, 0x1
	cmp esi, edi
	jnz XAnimCalc_1280
	jmp XAnimCalc_300
XAnimCalc_1180:
	mov ecx, ebx
	jmp XAnimCalc_1290
XAnimCalc_1190:
	lea edi, [edx+0x1]
	movzx eax, byte [edx+0x1]
	cmp [ebp-0x19c], eax
	jb XAnimCalc_1300
	lea ebx, [ecx+0x1]
	mov edi, [ebp-0x170]
XAnimCalc_1330:
	add ebx, 0x1
	movzx eax, byte [esi+ebx]
	cmp [ebp-0x19c], eax
	jb XAnimCalc_1310
	lea ecx, [edi+ebx]
	shr ecx, 1
	lea edx, [esi+ecx]
	movzx eax, byte [edx]
	cmp [ebp-0x19c], eax
	jb XAnimCalc_1320
	lea ebx, [ecx+0x1]
	movzx eax, byte [esi+ebx]
	cmp [ebp-0x19c], eax
	jae XAnimCalc_1330
XAnimCalc_1220:
	lea edi, [edx+0x1]
	jmp XAnimCalc_1300
XAnimCalc_1320:
	mov edi, ecx
	jmp XAnimCalc_1330
XAnimCalc_1100:
	mov ebx, ecx
	jmp XAnimCalc_1340
XAnimCalc_1040:
	mov eax, [ebp-0x1d4]
	mov ebx, [ebp-0x180]
	lea eax, [eax+ebx*2]
	mov [ebp-0x1d4], eax
	add [ebp-0x164], ebx
	mov edx, [ebp-0x174]
	mov [ebp-0x178], edx
	mov ecx, [ebp-0x1d8]
	jmp XAnimCalc_1350
XAnimCalc_1260:
	mov esi, [ebp-0x178]
	sub eax, edi
	add eax, esi
	mov [ebp-0x230], eax
XAnimCalc_1370:
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
	jnz XAnimCalc_1360
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
XAnimCalc_1360:
	add esi, 0x1
	add dword [ebp-0x1b8], 0xc
	mov edx, [ebp-0x230]
	cmp edx, esi
	jnz XAnimCalc_1370
	mov eax, edi
	sub eax, [ebp-0x178]
	lea edi, [eax+edx]
	jmp XAnimCalc_1380
XAnimCalc_1170:
	mov dword [ebp-0x15c], 0x0
	mov ecx, [ebp-0x15c]
	jmp XAnimCalc_1390
XAnimCalc_1250:
	mov [ebp-0x160], ecx
	mov [ebp-0x234], eax
XAnimCalc_1460:
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
	jnz XAnimCalc_1400
	cvtsi2ss xmm0, ebx
	mulss xmm0, xmm5
	cvttss2si ecx, xmm0
	lea edx, [esi+ecx]
	movzx eax, byte [edx]
	cmp [ebp-0x19c], eax
	jae XAnimCalc_1410
	xor edi, edi
XAnimCalc_1430:
	lea ebx, [ecx-0x1]
	lea edx, [esi+ebx]
	movzx eax, byte [edx]
	cmp [ebp-0x19c], eax
	jae XAnimCalc_1420
XAnimCalc_1450:
	lea ecx, [edi+ebx]
	shr ecx, 1
	lea edx, [esi+ecx]
	movzx eax, byte [edx]
	cmp [ebp-0x19c], eax
	jb XAnimCalc_1430
	lea edi, [ecx+0x1]
	movzx eax, byte [esi+edi]
	cmp [ebp-0x19c], eax
	jb XAnimCalc_1440
	mov ecx, ebx
	lea ebx, [ecx-0x1]
	lea edx, [esi+ebx]
	movzx eax, byte [edx]
	cmp [ebp-0x19c], eax
	jb XAnimCalc_1450
XAnimCalc_1420:
	lea edi, [edx+0x1]
	mov ecx, ebx
XAnimCalc_1480:
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
XAnimCalc_1400:
	add dword [ebp-0x160], 0x1
	add dword [ebp-0x1b8], 0x18
	lea eax, [ebx+ebx*2]
	mov edx, [ebp-0x1cc]
	lea edx, [edx+eax*2+0x6]
	mov [ebp-0x1cc], edx
	mov edi, [ebp-0x234]
	cmp edi, [ebp-0x160]
	jnz XAnimCalc_1460
	jmp XAnimCalc_1470
XAnimCalc_1410:
	lea edi, [edx+0x1]
	movzx eax, byte [edx+0x1]
	cmp [ebp-0x19c], eax
	jb XAnimCalc_1480
	lea ebx, [ecx+0x1]
	mov edi, [ebp-0x1c8]
XAnimCalc_1510:
	add ebx, 0x1
	movzx eax, byte [esi+ebx]
	cmp [ebp-0x19c], eax
	jb XAnimCalc_1490
	lea ecx, [edi+ebx]
	shr ecx, 1
	lea edx, [esi+ecx]
	movzx eax, byte [edx]
	cmp [ebp-0x19c], eax
	jb XAnimCalc_1500
	lea ebx, [ecx+0x1]
	movzx eax, byte [esi+ebx]
	cmp [ebp-0x19c], eax
	jae XAnimCalc_1510
XAnimCalc_1440:
	lea edi, [edx+0x1]
	jmp XAnimCalc_1480
XAnimCalc_1500:
	mov edi, ecx
	jmp XAnimCalc_1510
XAnimCalc_1130:
	mov ecx, ebx
	jmp XAnimCalc_1520
XAnimCalc_450:
	mov ebx, [ebp-0x1d4]
	mov ecx, [ebp-0x17c]
	lea ebx, [ebx+ecx*2]
	mov [ebp-0x1d4], ebx
	add [ebp-0x164], ecx
	mov edx, [ebp-0x1d8]
	mov ecx, [ebp-0x164]
	jmp XAnimCalc_1530
XAnimCalc_360:
	lea edx, [esi+0x11]
	mov eax, [ebp+0xc]
	add eax, 0x6010
	mov [esp], eax
	mov ecx, [ebp+0x14]
	movaps xmm1, xmm7
	movaps xmm0, xmm5
	mov eax, [ebp-0x1dc]
	call XAnimCalcParts
	jmp XAnimCalc_300
XAnimCalc_880:
	xor eax, eax
	jmp XAnimCalc_1540
XAnimCalc_1070:
	lea ecx, [ebx-0x1]
	mov ebx, [ebp-0x178]
	lea edx, [ecx+ebx]
	lea esi, [edx+0x1]
	jmp XAnimCalc_1060
XAnimCalc_850:
	lea ecx, [ebx-0x1]
	lea edx, [ecx+esi]
	lea edi, [edx+0x1]
	jmp XAnimCalc_840
XAnimCalc_1490:
	lea ecx, [ebx-0x1]
	lea edx, [esi+ecx]
	lea edi, [edx+0x1]
	jmp XAnimCalc_1480
XAnimCalc_1310:
	lea ecx, [ebx-0x1]
	lea edx, [ecx+esi]
	lea edi, [edx+0x1]
	jmp XAnimCalc_1300
XAnimCalc_940:
	mov ebx, esi
	test bl, bl
	jz XAnimCalc_300
	mov eax, [ebp-0x214]
	movzx eax, byte [eax+0xa]
	mov [ebp-0x1ac], eax
	mov edx, [ebp+0xc]
	add edx, 0x6010
	mov [ebp-0x1a8], edx
	test eax, eax
	jle XAnimCalc_300
	mov esi, [ebp+0x14]
	xor edi, edi
	mov ebx, [ebp-0x204]
	add ebx, 0x10
	jmp XAnimCalc_1550
XAnimCalc_1580:
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
XAnimCalc_1560:
	add edi, 0x1
	add esi, 0x20
	add ebx, 0x20
	cmp [ebp-0x1ac], edi
	jz XAnimCalc_300
XAnimCalc_1550:
	mov edx, edi
	shr edx, 0x5
	mov ecx, edi
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	mov ecx, [ebp-0x1a8]
	test [ecx+edx*4], eax
	jnz XAnimCalc_1560
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
	jp XAnimCalc_1570
	jz XAnimCalc_1580
XAnimCalc_1570:
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
	jmp XAnimCalc_1580
XAnimCalc_890:
	mov byte [ebp-0x205], 0x0
	mov dword [ebp-0x204], 0x0
	mov dword [ebp-0x200], 0x0
	mov ecx, [ebp-0x210]
	jmp XAnimCalc_1590
XAnimCalc_1660:
	test byte [edi+0x14], 0x10
	jz XAnimCalc_1600
	mov eax, 0x1
XAnimCalc_1670:
	test eax, eax
	jnz XAnimCalc_1610
	cmp byte [ebp-0x205], 0x0
	jnz XAnimCalc_1620
	mov eax, esi
	test al, al
	jnz XAnimCalc_1630
	mov eax, [ebp+0x10]
	shl eax, 0x5
	add eax, [ebp+0xc]
	mov [ebp-0x204], eax
	mov ecx, [ebp-0x214]
	movzx eax, byte [ecx+0xa]
	add [ebp+0x10], eax
	cmp dword [ebp+0x10], 0x300
	jg XAnimCalc_920
	mov eax, [ebp-0x204]
	test eax, eax
	jz XAnimCalc_300
	mov dword [ebp-0x200], 0x1
	mov eax, [ebp-0x204]
XAnimCalc_1740:
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
	call XAnimCalc_900
	mov byte [ebp-0x205], 0x1
	movss xmm7, dword [ebp-0x268]
XAnimCalc_1620:
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
	call XAnimCalc_900
	movss xmm7, dword [ebp-0x268]
XAnimCalc_1650:
	movzx eax, word [edi+0xa]
	movzx edx, ax
	mov [ebp-0x210], edx
	test ax, ax
	jz XAnimCalc_1610
	mov ecx, edx
XAnimCalc_1590:
	mov [esp], ecx
	movss [ebp-0x268], xmm7
	call GetAnimInfo
	mov edi, eax
	movss xmm0, dword [eax+0x2c]
	movss [ebp-0x11c], xmm0
	movss xmm7, dword [ebp-0x268]
	ucomiss xmm0, [_float_0_00000000]
	jp XAnimCalc_1640
	jz XAnimCalc_1650
XAnimCalc_1640:
	cmp word [edi+0x12], 0x0
	jz XAnimCalc_1660
XAnimCalc_1600:
	xor eax, eax
	jmp XAnimCalc_1670
XAnimCalc_1610:
	cmp byte [ebp-0x205], 0x0
	jz XAnimCalc_1680
	cmp byte [ebp-0x215], 0x0
	jnz XAnimCalc_1690
	mov ecx, [ebp-0x214]
	movzx edi, byte [ecx+0xa]
	test edi, edi
	jle XAnimCalc_1700
	mov ebx, [ebp+0x14]
	xor esi, esi
	pxor xmm2, xmm2
	movss xmm3, dword [_float_1_00000000]
XAnimCalc_1730:
	mov eax, esi
	shr eax, 0x5
	mov ecx, esi
	and ecx, 0x1f
	mov edx, 0x80000000
	shr edx, cl
	mov ecx, [ebp+0xc]
	test [ecx+eax*4+0x6010], edx
	jnz XAnimCalc_1710
	movss xmm0, dword [ebx+0x1c]
	ucomiss xmm0, xmm2
	jp XAnimCalc_1720
	jz XAnimCalc_1710
XAnimCalc_1720:
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
XAnimCalc_1710:
	add esi, 0x1
	add ebx, 0x20
	cmp edi, esi
	jnz XAnimCalc_1730
	jmp XAnimCalc_1700
XAnimCalc_1630:
	mov edx, [ebp+0x14]
	mov [ebp-0x204], edx
	mov eax, edx
	jmp XAnimCalc_1740
XAnimCalc_1690:
	mov eax, esi
	test al, al
	jz XAnimCalc_1750
	mov edx, [ebp-0x214]
	movzx edi, byte [edx+0xa]
	test edi, edi
	jle XAnimCalc_1700
	xor esi, esi
	pxor xmm5, xmm5
	movss xmm6, dword [_float_1_50000000]
	mov ebx, [ebp+0x14]
	add ebx, 0x10
	movss xmm4, dword [_float_0_50000000]
XAnimCalc_1800:
	mov eax, esi
	shr eax, 0x5
	mov ecx, esi
	and ecx, 0x1f
	mov edx, 0x80000000
	shr edx, cl
	mov ecx, [ebp+0xc]
	test [ecx+eax*4+0x6010], edx
	jnz XAnimCalc_1760
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
	jp XAnimCalc_1770
	jz XAnimCalc_1780
XAnimCalc_1770:
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
XAnimCalc_1780:
	movss xmm0, dword [ebx+0xc]
	ucomiss xmm0, xmm2
	jp XAnimCalc_1790
	jz XAnimCalc_1760
XAnimCalc_1790:
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
XAnimCalc_1760:
	add esi, 0x1
	add ebx, 0x20
	cmp edi, esi
	jnz XAnimCalc_1800
	jmp XAnimCalc_1700
XAnimCalc_920:
	mov dword [esp+0x4], _cstring_max_calculation_
	mov dword [esp], 0x13
	call Com_PrintWarning
	jmp XAnimCalc_300
XAnimCalc_1750:
	mov eax, [ebp-0x214]
	movzx eax, byte [eax+0xa]
	mov [ebp-0x1b0], eax
	test eax, eax
	jle XAnimCalc_1700
	mov ebx, [ebp+0x14]
	xor edi, edi
	pxor xmm4, xmm4
	movss xmm5, dword [_float_0_50000000]
	movss xmm6, dword [_float_1_50000000]
	mov esi, [ebp-0x204]
	add esi, 0x10
XAnimCalc_1850:
	mov edx, edi
	shr edx, 0x5
	mov ecx, edi
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	mov ecx, [ebp+0xc]
	test [ecx+edx*4+0x6010], eax
	jnz XAnimCalc_1810
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
	jp XAnimCalc_1820
	jz XAnimCalc_1830
XAnimCalc_1820:
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
XAnimCalc_1830:
	movss xmm0, dword [esi+0xc]
	ucomiss xmm0, xmm2
	jp XAnimCalc_1840
	jz XAnimCalc_1810
XAnimCalc_1840:
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
XAnimCalc_1810:
	add edi, 0x1
	add esi, 0x20
	add ebx, 0x20
	cmp [ebp-0x1b0], edi
	jnz XAnimCalc_1850
	jmp XAnimCalc_1700


;DObjCalcAnim(DObj_s const*, int*)
DObjCalcAnim:
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
DObjCalcAnim_10:
	mov eax, [edx]
	mov [ecx], eax
	add ebx, 0x1
	add ecx, 0x4
	add edx, 0x4
	cmp ebx, 0x4
	jnz DObjCalcAnim_10
	xor edx, edx
	lea edi, [ebp-0x6048]
	lea eax, [ebp-0x48]
DObjCalcAnim_20:
	not dword [eax]
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x4
	jnz DObjCalcAnim_20
	mov ecx, esi
	xor ebx, ebx
	lea edx, [edi+0x6000]
DObjCalcAnim_30:
	mov eax, [edx]
	or eax, [ecx]
	mov [edx], eax
	add ebx, 0x1
	add edx, 0x4
	add ecx, 0x4
	cmp ebx, 0x4
	jnz DObjCalcAnim_30
	xor edx, edx
	mov eax, 0x6000
DObjCalcAnim_50:
	cmp dword [eax+ebp-0x6048], 0xffffffff
	jnz DObjCalcAnim_40
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x4
	jnz DObjCalcAnim_50
DObjCalcAnim_90:
	add esp, 0x606c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DObjCalcAnim_40:
	mov edx, esi
	mov ecx, [ebp+0xc]
	mov ebx, 0x4
DObjCalcAnim_60:
	mov eax, [edx]
	or eax, [ecx]
	mov [edx], eax
	add edx, 0x4
	add ecx, 0x4
	sub ebx, 0x1
	jnz DObjCalcAnim_60
	xor ecx, ecx
	xor edx, edx
DObjCalcAnim_70:
	mov eax, [edx+ebp-0x48]
	mov [edx+ebp-0x38], eax
	add ecx, 0x1
	add edx, 0x4
	cmp ecx, 0x4
	jnz DObjCalcAnim_70
	mov edx, [ebp+0x8]
	mov eax, [edx]
	test eax, eax
	jz DObjCalcAnim_80
	cmp word [eax+0x4], 0x0
	jz DObjCalcAnim_80
	or dword [ebp-0x2c], 0x1
	movzx eax, word [eax+0x4]
	mov [esp], eax
	call GetAnimInfo
	mov edx, [esi+0x34]
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], edi
	mov dword [esp], 0x0
	mov ecx, 0x1
	movss xmm0, dword [_float_1_00000000]
	mov edx, eax
	mov eax, [ebp+0x8]
	call XAnimCalc
DObjCalcAnim_80:
	mov ebx, [esi+0x34]
	mov eax, [ebp+0x8]
	mov eax, [eax+0x60]
	mov [ebp-0x604c], eax
	mov edx, [ebp+0x8]
	cmp byte [edx+0x9], 0x0
	jz DObjCalcAnim_90
	xor ecx, ecx
	mov dword [ebp-0x6050], 0x0
	movss xmm5, dword [_float_0_00003052]
DObjCalcAnim_140:
	mov eax, [ebp-0x6050]
	mov edx, [ebp-0x604c]
	mov edi, [edx+eax*4]
	movzx eax, byte [edi+0x5]
	movzx edx, al
	test al, al
	jnz DObjCalcAnim_100
	mov [ebp-0x6054], ecx
DObjCalcAnim_170:
	movzx edx, byte [edi+0x4]
	movzx eax, byte [edi+0x5]
	mov ecx, [edi+0x10]
	sub edx, eax
	mov [ebp-0x6058], edx
	jz DObjCalcAnim_110
	xor edi, edi
	movaps xmm4, xmm5
	mov esi, ecx
DObjCalcAnim_130:
	mov eax, [ebp-0x6054]
	shr eax, 0x5
	mov ecx, [ebp-0x6054]
	and ecx, 0x1f
	mov edx, 0x80000000
	shr edx, cl
	test [ebp+eax*4-0x48], edx
	jnz DObjCalcAnim_120
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
DObjCalcAnim_120:
	add ebx, 0x20
	add dword [ebp-0x6054], 0x1
	add edi, 0x1
	add esi, 0x8
	cmp [ebp-0x6058], edi
	jnz DObjCalcAnim_130
DObjCalcAnim_110:
	add dword [ebp-0x6050], 0x1
	mov edx, [ebp+0x8]
	movzx eax, byte [edx+0x9]
	cmp [ebp-0x6050], eax
	jge DObjCalcAnim_90
	mov ecx, [ebp-0x6054]
	jmp DObjCalcAnim_140
DObjCalcAnim_100:
	mov esi, ecx
	add edx, ecx
	mov [ebp-0x605c], edx
DObjCalcAnim_160:
	mov eax, esi
	shr eax, 0x5
	mov ecx, esi
	and ecx, 0x1f
	mov edx, 0x80000000
	shr edx, cl
	test [ebp+eax*4-0x48], edx
	jnz DObjCalcAnim_150
	mov dword [ebx], 0x0
	mov dword [ebx+0x4], 0x0
	mov dword [ebx+0x8], 0x0
	mov dword [ebx+0xc], 0x3f800000
	lea eax, [ebx+0x10]
	mov dword [ebx+0x10], 0x0
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
	mov dword [ebx+0x1c], 0x0
DObjCalcAnim_150:
	add ebx, 0x20
	add esi, 0x1
	mov eax, [ebp-0x605c]
	mov [ebp-0x6054], eax
	cmp eax, esi
	jnz DObjCalcAnim_160
	jmp DObjCalcAnim_170


;XAnim_CalcDeltaForTime(XAnimParts const*, float, float*, float4&)
XAnim_CalcDeltaForTime:
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
	jp XAnim_CalcDeltaForTime_10
	jz XAnim_CalcDeltaForTime_20
XAnim_CalcDeltaForTime_10:
	test ax, ax
	jz XAnim_CalcDeltaForTime_30
	cmp dword [ebp-0x128], 0xff
	jg XAnim_CalcDeltaForTime_40
	mov ecx, [ebp-0x124]
	mov ecx, [ecx+0x4]
	mov [ebp-0x120], ecx
	test ecx, ecx
	jz XAnim_CalcDeltaForTime_50
	movzx eax, word [ecx]
	test ax, ax
	jnz XAnim_CalcDeltaForTime_60
	movsx eax, word [ecx+0x4]
	cvtsi2ss xmm0, eax
	mov eax, [ebp+0x10]
	movss [eax], xmm0
	movsx eax, word [ecx+0x6]
	cvtsi2ss xmm0, eax
	mov edx, [ebp+0x10]
	movss [edx+0x4], xmm0
	pxor xmm7, xmm7
XAnim_CalcDeltaForTime_360:
	mov ecx, [ebp-0x124]
	mov ecx, [ecx]
	mov [ebp-0x118], ecx
	test ecx, ecx
	jz XAnim_CalcDeltaForTime_70
	movzx eax, word [ecx]
	test ax, ax
	jz XAnim_CalcDeltaForTime_80
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
	jb XAnim_CalcDeltaForTime_90
	lea eax, [edx+0x1]
	mov [ebp-0x108], eax
	movzx eax, byte [edx+0x1]
	cmp esi, eax
	jb XAnim_CalcDeltaForTime_100
	lea ecx, [ebx+0x1]
	mov edx, [ebp-0x114]
	mov [ebp-0x100], edx
XAnim_CalcDeltaForTime_130:
	add ecx, 0x1
	movzx eax, byte [edi+ecx]
	cmp esi, eax
	jb XAnim_CalcDeltaForTime_110
	mov ebx, [ebp-0x100]
	add ebx, ecx
	shr ebx, 1
	lea edx, [edi+ebx]
	movzx eax, byte [edx]
	cmp esi, eax
	jb XAnim_CalcDeltaForTime_120
	lea ecx, [ebx+0x1]
	mov [ebp-0x12c], ecx
	movzx eax, byte [edi+ecx]
	cmp esi, eax
	jae XAnim_CalcDeltaForTime_130
XAnim_CalcDeltaForTime_390:
	lea ecx, [edx+0x1]
	mov [ebp-0x108], ecx
	jmp XAnim_CalcDeltaForTime_140
XAnim_CalcDeltaForTime_30:
	mov edx, [ebp-0x124]
XAnim_CalcDeltaForTime_20:
	mov eax, [edx+0x4]
	test eax, eax
	jz XAnim_CalcDeltaForTime_150
	movzx edx, word [eax]
	test dx, dx
	jz XAnim_CalcDeltaForTime_160
	movzx edx, dx
	mov eax, [eax+0x4]
	lea edx, [eax+edx*4]
XAnim_CalcDeltaForTime_180:
	movsx eax, word [edx]
	cvtsi2ss xmm0, eax
	mov ecx, [ebp+0x10]
	movss [ecx], xmm0
	movsx eax, word [edx+0x2]
	cvtsi2ss xmm0, eax
	movss [ecx+0x4], xmm0
	pxor xmm7, xmm7
XAnim_CalcDeltaForTime_260:
	mov edx, [ebp-0x124]
	mov ecx, [edx]
	test ecx, ecx
	jz XAnim_CalcDeltaForTime_70
	movzx eax, word [ecx]
	test ax, ax
	jnz XAnim_CalcDeltaForTime_170
	lea edx, [ecx+0x4]
XAnim_CalcDeltaForTime_250:
	mov eax, [ecx+0x4]
	mov ecx, [ebp+0x14]
	mov [ecx], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov dword [ecx+0xc], 0x0
XAnim_CalcDeltaForTime_340:
	add esp, 0x15c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnim_CalcDeltaForTime_160:
	lea edx, [eax+0x4]
	jmp XAnim_CalcDeltaForTime_180
XAnim_CalcDeltaForTime_170:
	cmp byte [ecx+0x2], 0x0
	jz XAnim_CalcDeltaForTime_190
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
XAnim_CalcDeltaForTime_200:
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
XAnim_CalcDeltaForTime_190:
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
	jmp XAnim_CalcDeltaForTime_200
XAnim_CalcDeltaForTime_40:
	mov ecx, [ebp-0x124]
	mov esi, [ecx+0x4]
	test esi, esi
	jz XAnim_CalcDeltaForTime_210
	cmp word [esi], 0x0
	jnz XAnim_CalcDeltaForTime_220
	movsx eax, word [esi+0x4]
	cvtsi2ss xmm0, eax
	mov eax, [ebp+0x10]
	movss [eax], xmm0
	movsx eax, word [esi+0x6]
	cvtsi2ss xmm0, eax
	mov edx, [ebp+0x10]
	movss [edx+0x4], xmm0
XAnim_CalcDeltaForTime_420:
	mov ecx, [ebp-0x124]
	mov ecx, [ecx]
	mov [ebp-0x10c], ecx
	test ecx, ecx
	jz XAnim_CalcDeltaForTime_230
	cmp word [ecx], 0x0
	jnz XAnim_CalcDeltaForTime_240
XAnim_CalcDeltaForTime_80:
	mov edx, ecx
	add edx, 0x4
	jmp XAnim_CalcDeltaForTime_250
XAnim_CalcDeltaForTime_70:
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
XAnim_CalcDeltaForTime_150:
	pxor xmm7, xmm7
	mov eax, [ebp+0x10]
	movss [eax], xmm7
	mov dword [eax+0x4], 0x46fffe00
	jmp XAnim_CalcDeltaForTime_260
XAnim_CalcDeltaForTime_60:
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
	jae XAnim_CalcDeltaForTime_270
	mov dword [ebp-0x11c], 0x0
XAnim_CalcDeltaForTime_290:
	lea ebx, [ecx-0x1]
	lea edx, [edi+ebx]
	movzx eax, byte [edx]
	cmp esi, eax
	jae XAnim_CalcDeltaForTime_280
XAnim_CalcDeltaForTime_310:
	mov ecx, [ebp-0x11c]
	add ecx, ebx
	shr ecx, 1
	lea edx, [edi+ecx]
	movzx eax, byte [edx]
	cmp esi, eax
	jb XAnim_CalcDeltaForTime_290
	lea eax, [ecx+0x1]
	mov [ebp-0x11c], eax
	movzx eax, byte [edi+eax]
	cmp esi, eax
	jb XAnim_CalcDeltaForTime_300
	mov ecx, ebx
	lea ebx, [ecx-0x1]
	lea edx, [edi+ebx]
	movzx eax, byte [edx]
	cmp esi, eax
	jb XAnim_CalcDeltaForTime_310
XAnim_CalcDeltaForTime_280:
	lea ecx, [edx+0x1]
	mov [ebp-0x104], ecx
	jmp XAnim_CalcDeltaForTime_320
XAnim_CalcDeltaForTime_240:
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
	call XAnim_GetTimeIndex
	mov eax, [ebp-0x1c]
	lea ebx, [eax+0x1]
	mov edx, [ebp-0x10c]
	cmp byte [edx+0x2], 0x0
	jz XAnim_CalcDeltaForTime_330
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
XAnim_CalcDeltaForTime_440:
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
	jmp XAnim_CalcDeltaForTime_340
XAnim_CalcDeltaForTime_270:
	lea eax, [edx+0x1]
	mov [ebp-0x104], eax
	movzx eax, byte [edx+0x1]
	cmp esi, eax
	jae XAnim_CalcDeltaForTime_350
	mov ebx, ecx
	mov ecx, [ebp-0x104]
XAnim_CalcDeltaForTime_320:
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
	jmp XAnim_CalcDeltaForTime_360
XAnim_CalcDeltaForTime_90:
	mov dword [ebp-0x110], 0x0
XAnim_CalcDeltaForTime_380:
	lea ecx, [ebx-0x1]
	lea edx, [edi+ecx]
	movzx eax, byte [edx]
	cmp esi, eax
	jae XAnim_CalcDeltaForTime_370
XAnim_CalcDeltaForTime_400:
	mov ebx, [ebp-0x110]
	add ebx, ecx
	shr ebx, 1
	lea edx, [edi+ebx]
	movzx eax, byte [edx]
	cmp esi, eax
	jb XAnim_CalcDeltaForTime_380
	lea eax, [ebx+0x1]
	mov [ebp-0x12c], eax
	mov [ebp-0x110], eax
	movzx eax, byte [edi+eax]
	cmp esi, eax
	jb XAnim_CalcDeltaForTime_390
	mov ebx, ecx
	lea ecx, [ebx-0x1]
	lea edx, [edi+ecx]
	movzx eax, byte [edx]
	cmp esi, eax
	jb XAnim_CalcDeltaForTime_400
XAnim_CalcDeltaForTime_370:
	lea eax, [edx+0x1]
	mov [ebp-0x108], eax
	mov ebx, ecx
	lea ecx, [ecx+0x1]
	mov [ebp-0x12c], ecx
	mov ecx, eax
XAnim_CalcDeltaForTime_140:
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
	jz XAnim_CalcDeltaForTime_410
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
XAnim_CalcDeltaForTime_430:
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
	jmp XAnim_CalcDeltaForTime_340
XAnim_CalcDeltaForTime_120:
	mov [ebp-0x100], ebx
	jmp XAnim_CalcDeltaForTime_130
XAnim_CalcDeltaForTime_220:
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
	call XAnim_GetTimeIndex
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
	jmp XAnim_CalcDeltaForTime_420
XAnim_CalcDeltaForTime_410:
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
	jmp XAnim_CalcDeltaForTime_430
XAnim_CalcDeltaForTime_230:
	xor eax, eax
	mov edx, [ebp+0x14]
	mov [edx], eax
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	mov [edx+0xc], eax
	jmp XAnim_CalcDeltaForTime_340
XAnim_CalcDeltaForTime_50:
	pxor xmm7, xmm7
	mov edx, [ebp+0x10]
	movss [edx], xmm7
	mov dword [edx+0x4], 0x46fffe00
	jmp XAnim_CalcDeltaForTime_360
XAnim_CalcDeltaForTime_210:
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
	mov dword [edx+0x4], 0x46fffe00
	jmp XAnim_CalcDeltaForTime_420
XAnim_CalcDeltaForTime_330:
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
	jmp XAnim_CalcDeltaForTime_440
XAnim_CalcDeltaForTime_100:
	lea ecx, [ebx+0x1]
	mov [ebp-0x12c], ecx
	mov ecx, [ebp-0x108]
	jmp XAnim_CalcDeltaForTime_140
XAnim_CalcDeltaForTime_350:
	add ecx, 0x1
	mov [ebp-0xfc], ebx
XAnim_CalcDeltaForTime_470:
	add ecx, 0x1
	movzx eax, byte [edi+ecx]
	cmp esi, eax
	jb XAnim_CalcDeltaForTime_450
	mov ebx, [ebp-0xfc]
	add ebx, ecx
	shr ebx, 1
	lea edx, [edi+ebx]
	movzx eax, byte [edx]
	cmp esi, eax
	jb XAnim_CalcDeltaForTime_460
	lea ecx, [ebx+0x1]
	movzx eax, byte [edi+ecx]
	cmp esi, eax
	jae XAnim_CalcDeltaForTime_470
	jmp XAnim_CalcDeltaForTime_280
XAnim_CalcDeltaForTime_460:
	mov [ebp-0xfc], ebx
	jmp XAnim_CalcDeltaForTime_470
XAnim_CalcDeltaForTime_450:
	lea ebx, [ecx-0x1]
	lea edx, [ebx+edi]
	lea eax, [edx+0x1]
	mov [ebp-0x104], eax
	mov ecx, eax
	jmp XAnim_CalcDeltaForTime_320
XAnim_CalcDeltaForTime_110:
	lea ebx, [ecx-0x1]
	lea edx, [ebx+edi]
	lea eax, [edx+0x1]
	mov [ebp-0x108], eax
	mov [ebp-0x12c], ecx
	mov ecx, eax
	jmp XAnim_CalcDeltaForTime_140
XAnim_CalcDeltaForTime_300:
	lea eax, [edx+0x1]
	mov [ebp-0x104], eax
	mov ebx, ecx
	mov ecx, eax
	jmp XAnim_CalcDeltaForTime_320


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
g_fltMin__uint4: dd 0x800000, 0x800000, 0x800000, 0x800000, 0x0, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x4f000000, 0x0, 0x0, 0x0, 0x4f800000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0


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
g_fltMin: resb 0x80


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

