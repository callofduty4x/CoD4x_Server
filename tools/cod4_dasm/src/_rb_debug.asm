;Imports of rb_debug:
	extern tess
	extern gfxCmdBufSourceState
	extern R_Set3D
	extern RB_EndTessSurface
	extern R_ConvertColorToBytes
	extern backEnd
	extern RB_DrawTextInSpace
	extern RB_DrawLines3D
	extern backEndData
	extern sin
	extern va
	extern R_AddDebugString
	extern rgp
	extern RB_BeginSurface
	extern RB_TessOverflow

;Exports of rb_debug:
	global _GLOBAL__I__Z15RB_AddDebugLinePKfS0_S0_hiiP14GfxPointVertex
	global g_debugExternLineVerts
	global g_debugLineVerts
	global g_debugPolyVerts
	global RB_DrawDebugStrings
	global RB_DrawDebugLines
	global RB_DrawDebug
	global RB_AddDebugLine
	global RB_DrawDebugPolys


SECTION .text


;global constructors keyed to RB_AddDebugLine(float const*, float const*, float const*, unsigned char, int, int, GfxPointVertex*)
_GLOBAL__I__Z15RB_AddDebugLinePKfS0_S0_hiiP14GfxPointVertex:
	push ebp
	mov ebp, esp
	mov edx, 0xffff
	mov eax, 0x1
	pop ebp
	jmp __static_initialization_and_destruction_0


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


;RB_DrawDebugStrings(trDebugString_t*, int)
RB_DrawDebugStrings:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov ebx, eax
	mov esi, edx
	test edx, edx
	jz RB_DrawDebugStrings_10
	mov eax, tess
	mov edx, [eax+0x22a948]
	test edx, edx
	jnz RB_DrawDebugStrings_20
	mov edi, gfxCmdBufSourceState
	mov [esp], edi
	call R_Set3D
	test esi, esi
	jg RB_DrawDebugStrings_30
RB_DrawDebugStrings_60:
	mov eax, tess
	mov eax, [eax+0x22a948]
	test eax, eax
	jnz RB_DrawDebugStrings_40
RB_DrawDebugStrings_10:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
RB_DrawDebugStrings_40:
	call RB_EndTessSurface
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
RB_DrawDebugStrings_30:
	lea eax, [edi+0xdd0]
	mov [ebp-0x48], eax
	lea eax, [edi+0xdd4]
	mov [ebp-0x44], eax
	lea eax, [edi+0xddc]
	mov [ebp-0x40], eax
	lea eax, [edi+0xde0]
	mov [ebp-0x3c], eax
	mov dword [ebp-0x4c], 0x0
RB_DrawDebugStrings_50:
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	lea eax, [ebx+0xc]
	mov [esp], eax
	call R_ConvertColorToBytes
	movss xmm0, dword [ebx+0x1c]
	xorps xmm0, [_data16_80000000]
	movaps xmm1, xmm0
	mulss xmm1, [edi+0xdcc]
	movss [ebp-0x28], xmm1
	movaps xmm1, xmm0
	mov eax, [ebp-0x48]
	mulss xmm1, [eax]
	movss [ebp-0x24], xmm1
	movaps xmm1, xmm0
	mov eax, [ebp-0x44]
	mulss xmm1, [eax]
	movss [ebp-0x20], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [edi+0xdd8]
	movss [ebp-0x34], xmm1
	movaps xmm1, xmm0
	mov eax, [ebp-0x40]
	mulss xmm1, [eax]
	movss [ebp-0x30], xmm1
	mov eax, [ebp-0x3c]
	mulss xmm0, [eax]
	movss [ebp-0x2c], xmm0
	mov eax, [ebp-0x1c]
	mov [esp+0x14], eax
	lea eax, [ebp-0x34]
	mov [esp+0x10], eax
	lea eax, [ebp-0x28]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov eax, backEnd
	mov eax, [eax+0x8]
	mov [esp+0x4], eax
	lea eax, [ebx+0x20]
	mov [esp], eax
	call RB_DrawTextInSpace
	add dword [ebp-0x4c], 0x1
	sub ebx, 0xffffff80
	cmp esi, [ebp-0x4c]
	jnz RB_DrawDebugStrings_50
	mov eax, tess
	mov eax, [eax+0x22a948]
	test eax, eax
	jz RB_DrawDebugStrings_10
	jmp RB_DrawDebugStrings_40
RB_DrawDebugStrings_20:
	call RB_EndTessSurface
	mov edi, gfxCmdBufSourceState
	mov [esp], edi
	call R_Set3D
	test esi, esi
	jle RB_DrawDebugStrings_60
	jmp RB_DrawDebugStrings_30


;RB_DrawDebugLines(trDebugLine_t*, int, GfxPointVertex*)
RB_DrawDebugLines:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, eax
	mov [ebp-0x20], edx
	mov [ebp-0x24], ecx
	test edx, edx
	jz RB_DrawDebugLines_10
	mov eax, tess
	mov esi, [eax+0x22a948]
	test esi, esi
	jnz RB_DrawDebugLines_20
	mov eax, gfxCmdBufSourceState
	mov [esp], eax
	call R_Set3D
	mov ecx, [ebx+0x28]
	test ecx, ecx
	setnz al
	mov edi, eax
	mov edx, [ebp-0x20]
	test edx, edx
	jle RB_DrawDebugLines_30
RB_DrawDebugLines_90:
	mov esi, ebx
	mov dword [ebp-0x1c], 0x0
	xor edx, edx
RB_DrawDebugLines_60:
	mov eax, [esi+0x28]
	test eax, eax
	setnz bl
	mov eax, edi
	cmp bl, al
	jz RB_DrawDebugLines_40
	mov eax, edx
	shr eax, 0x1f
	add eax, edx
	mov edx, edi
	mov ecx, eax
	sar ecx, 1
	jnz RB_DrawDebugLines_50
RB_DrawDebugLines_80:
	mov edi, ebx
	xor edx, edx
RB_DrawDebugLines_40:
	mov eax, edi
	movzx ebx, al
	mov eax, [ebp-0x24]
	mov [esp+0x18], eax
	mov dword [esp+0x14], 0xaa5
	mov [esp+0x10], edx
	mov [esp+0xc], ebx
	lea eax, [esi+0x18]
	mov [esp+0x8], eax
	lea eax, [esi+0xc]
	mov [esp+0x4], eax
	mov [esp], esi
	call RB_AddDebugLine
	mov edx, eax
	add dword [ebp-0x1c], 0x1
	add esi, 0x2c
	mov eax, [ebp-0x1c]
	cmp [ebp-0x20], eax
	jnz RB_DrawDebugLines_60
	mov eax, edx
	shr eax, 0x1f
	lea edx, [eax+edx]
	sar edx, 1
	test edx, edx
	jnz RB_DrawDebugLines_70
RB_DrawDebugLines_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
RB_DrawDebugLines_30:
	movzx ebx, al
	xor edx, edx
	test edx, edx
	jz RB_DrawDebugLines_10
RB_DrawDebugLines_70:
	movzx eax, bl
	mov [esp+0xc], eax
	mov eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov [esp], edx
	call RB_DrawLines3D
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
RB_DrawDebugLines_50:
	movzx eax, dl
	mov [esp+0xc], eax
	mov eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov [esp], ecx
	call RB_DrawLines3D
	jmp RB_DrawDebugLines_80
RB_DrawDebugLines_20:
	call RB_EndTessSurface
	mov eax, gfxCmdBufSourceState
	mov [esp], eax
	call R_Set3D
	mov ecx, [ebx+0x28]
	test ecx, ecx
	setnz al
	mov edi, eax
	mov edx, [ebp-0x20]
	test edx, edx
	jg RB_DrawDebugLines_90
	jmp RB_DrawDebugLines_30


;RB_DrawDebug(GfxViewParms const*)
RB_DrawDebug:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov edi, backEndData
	mov eax, [edi]
	mov edx, [eax+0x11e768]
	test edx, edx
	jle RB_DrawDebug_10
	mov dword [ebp-0x30], 0x0
	xor ebx, ebx
	mov edx, [ebp+0x8]
	add edx, 0x11c
	mov [ebp-0x2c], edx
	mov [ebp-0x3c], edi
	jmp RB_DrawDebug_20
RB_DrawDebug_40:
	cvtsi2ss xmm2, ecx
RB_DrawDebug_50:
	cvtsi2sd xmm0, ecx
	mulsd xmm0, [_double_0_01256637]
	cvtsi2sd xmm1, dword [ebp-0x30]
	addsd xmm0, xmm1
	movsd [esp], xmm0
	movss [ebp-0x58], xmm2
	call sin
	fstp qword [ebp-0x38]
	cvtsd2ss xmm1, [ebp-0x38]
	mulss xmm1, [_float_4_00000000]
	mov edx, [edi]
	mov eax, ebx
	add eax, [edx+0x11e764]
	movaps xmm0, xmm1
	mov ecx, [ebp+0x8]
	mulss xmm0, [ecx+0x11c]
	addss xmm0, [eax]
	movss [ebp-0x24], xmm0
	movaps xmm0, xmm1
	mov ecx, [ebp-0x2c]
	mulss xmm0, [ecx+0x4]
	addss xmm0, [eax+0x4]
	movss [ebp-0x20], xmm0
	mulss xmm1, [ecx+0x8]
	addss xmm1, [eax+0x8]
	movss xmm2, dword [ebp-0x58]
	mulss xmm2, [_float_0_06400000]
	addss xmm2, xmm1
	movss [ebp-0x1c], xmm2
	mov eax, [edx+0x11e764]
	mov eax, [eax+ebx+0x1c]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call va
	mov edx, [edi]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x3f000000
	mov eax, ebx
	add eax, [edx+0x11e764]
	add eax, 0xc
	mov [esp+0x8], eax
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	add edx, 0x11e71c
	mov [esp], edx
	call R_AddDebugString
	mov edi, [ebp-0x3c]
RB_DrawDebug_30:
	add dword [ebp-0x30], 0x1
	mov eax, [edi]
	add ebx, 0x28
	mov edx, [ebp-0x30]
	cmp edx, [eax+0x11e768]
	jge RB_DrawDebug_10
RB_DrawDebug_20:
	mov edx, ebx
	add edx, [eax+0x11e764]
	mov eax, gfxCmdBufSourceState
	mov eax, [eax+0xf3c]
	mov ecx, eax
	sub ecx, [edx+0x20]
	js RB_DrawDebug_30
	cmp ecx, [edx+0x24]
	jg RB_DrawDebug_30
	mov dword [edx+0x18], 0x3f800000
	mov eax, [edi]
	mov esi, ebx
	add esi, [eax+0x11e764]
	mov edx, [esi+0x24]
	lea eax, [ecx+ecx]
	cmp eax, edx
	jle RB_DrawDebug_40
	cvtsi2ss xmm2, ecx
	movaps xmm0, xmm2
	mulss xmm0, [_float__2_00000000]
	cvtsi2ss xmm1, edx
	divss xmm0, xmm1
	addss xmm0, [_float_2_00000000]
	movss [esi+0x18], xmm0
	jmp RB_DrawDebug_50
RB_DrawDebug_10:
	call RB_DrawDebugPolys
	mov ebx, backEndData
	mov eax, [ebx]
	mov edx, [eax+0x11e750]
	mov eax, [eax+0x11e74c]
	mov ecx, g_debugLineVerts
	call RB_DrawDebugLines
	mov eax, [ebx]
	mov edx, [eax+0x11e75c]
	mov eax, [eax+0x11e758]
	mov ecx, g_debugExternLineVerts
	call RB_DrawDebugLines
	mov eax, [ebx]
	mov dword [eax+0x11e750], 0x0
	mov eax, [ebx]
	mov edx, [eax+0x11e738]
	mov eax, [eax+0x11e734]
	call RB_DrawDebugStrings
	mov eax, [ebx]
	mov edx, [eax+0x11e744]
	mov eax, [eax+0x11e740]
	call RB_DrawDebugStrings
	mov eax, tess
	mov edi, [eax+0x22a948]
	test edi, edi
	jz RB_DrawDebug_60
	call RB_EndTessSurface
RB_DrawDebug_60:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;RB_AddDebugLine(float const*, float const*, float const*, unsigned char, int, int, GfxPointVertex*)
RB_AddDebugLine:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov edx, [ebp+0x18]
	mov ebx, [ebp+0x20]
	movzx eax, byte [ebp+0x14]
	lea esi, [edx+0x2]
	cmp esi, [ebp+0x1c]
	jg RB_AddDebugLine_10
	mov eax, edx
RB_AddDebugLine_20:
	shl eax, 0x4
	lea ebx, [eax+ebx]
	lea eax, [ebx+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x10]
	mov [esp], eax
	call R_ConvertColorToBytes
	lea edx, [ebx+0x10]
	mov eax, [ebx+0xc]
	mov [edx+0xc], eax
	mov eax, [edi]
	mov [ebx], eax
	mov eax, [edi+0x4]
	mov [ebx+0x4], eax
	mov eax, [edi+0x8]
	mov [ebx+0x8], eax
	mov ecx, [ebp+0xc]
	mov eax, [ecx]
	mov [ebx+0x10], eax
	mov eax, [ecx+0x4]
	mov [edx+0x4], eax
	mov eax, [ecx+0x8]
	mov [edx+0x8], eax
	mov eax, esi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
RB_AddDebugLine_10:
	movzx eax, al
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x1
	mov eax, edx
	shr eax, 0x1f
	add eax, edx
	sar eax, 1
	mov [esp], eax
	call RB_DrawLines3D
	xor eax, eax
	mov esi, 0x2
	jmp RB_AddDebugLine_20


;RB_DrawDebugPolys()
RB_DrawDebugPolys:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov ebx, backEndData
	mov eax, [ebx]
	mov eax, [eax+0x11e72c]
	test eax, eax
	jz RB_DrawDebugPolys_10
	mov eax, tess
	mov eax, [eax+0x22a948]
	test eax, eax
	jnz RB_DrawDebugPolys_20
RB_DrawDebugPolys_190:
	mov eax, gfxCmdBufSourceState
	mov [esp], eax
	call R_Set3D
	mov dword [esp+0x4], 0x4
	mov eax, rgp
	mov eax, [eax+0x2034]
	mov [esp], eax
	call RB_BeginSurface
	mov edx, [ebx]
	mov edi, [edx+0x11e72c]
	test edi, edi
	jg RB_DrawDebugPolys_30
RB_DrawDebugPolys_170:
	call RB_EndTessSurface
	mov ebx, backEndData
	mov edx, [ebx]
	mov ecx, [edx+0x11e72c]
	test ecx, ecx
	jle RB_DrawDebugPolys_40
	mov dword [ebp-0x38], 0x0
	xor ecx, ecx
	mov dword [ebp-0x30], 0x0
	mov [ebp-0x48], ebx
	jmp RB_DrawDebugPolys_50
RB_DrawDebugPolys_70:
	add dword [ebp-0x38], 0x1
	mov edx, [ebx]
	add dword [ebp-0x30], 0x18
	mov eax, [ebp-0x38]
	cmp eax, [edx+0x11e72c]
	jge RB_DrawDebugPolys_60
RB_DrawDebugPolys_50:
	mov esi, [ebp-0x30]
	add esi, [edx+0x11e728]
	mov eax, [esi+0x10]
	lea eax, [eax+eax*2]
	mov edx, [edx+0x11e71c]
	lea eax, [edx+eax*4]
	mov [ebp-0x34], eax
	mov eax, [esi+0x14]
	lea edx, [eax-0x1]
	test eax, eax
	jle RB_DrawDebugPolys_70
	mov ebx, [ebp-0x34]
	xor edi, edi
	jmp RB_DrawDebugPolys_80
RB_DrawDebugPolys_90:
	mov edx, edi
	mov edi, eax
RB_DrawDebugPolys_80:
	mov dword [esp+0x18], g_debugPolyVerts
	mov dword [esp+0x14], 0xaa5
	mov [esp+0x10], ecx
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	lea eax, [edx+edx*2]
	mov edx, [ebp-0x34]
	lea eax, [edx+eax*4]
	mov [esp], eax
	call RB_AddDebugLine
	mov ecx, eax
	lea eax, [edi+0x1]
	add ebx, 0xc
	cmp eax, [esi+0x14]
	jl RB_DrawDebugPolys_90
	mov ebx, [ebp-0x48]
	add dword [ebp-0x38], 0x1
	mov edx, [ebx]
	add dword [ebp-0x30], 0x18
	mov eax, [ebp-0x38]
	cmp eax, [edx+0x11e72c]
	jl RB_DrawDebugPolys_50
RB_DrawDebugPolys_60:
	mov eax, ecx
	shr eax, 0x1f
	add eax, ecx
	sar eax, 1
	jnz RB_DrawDebugPolys_100
	mov eax, [ebx]
	mov dword [eax+0x11e72c], 0x0
RB_DrawDebugPolys_10:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
RB_DrawDebugPolys_40:
	mov eax, edx
RB_DrawDebugPolys_200:
	mov dword [eax+0x11e72c], 0x0
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
RB_DrawDebugPolys_30:
	mov dword [ebp-0x40], 0x0
	mov dword [ebp-0x2c], 0x0
RB_DrawDebugPolys_160:
	mov eax, [ebp-0x2c]
	add eax, [edx+0x11e728]
	mov [ebp-0x44], eax
	mov ecx, eax
	mov eax, [eax+0x10]
	lea eax, [eax+eax*2]
	mov edx, [edx+0x11e71c]
	lea ebx, [edx+eax*4]
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], ecx
	call R_ConvertColorToBytes
	mov edx, [ebp-0x44]
	mov eax, [edx+0x14]
	lea edx, [eax+eax*2-0x6]
	mov edi, tess
	add eax, [edi+0x22a94c]
	cmp eax, 0x154a
	jg RB_DrawDebugPolys_110
	add edx, [edi+0x22a948]
	cmp edx, 0x100000
	jg RB_DrawDebugPolys_110
RB_DrawDebugPolys_180:
	mov ecx, [ebp-0x44]
	mov esi, [ecx+0x14]
	test esi, esi
	jle RB_DrawDebugPolys_120
	mov esi, ebx
	mov dword [ebp-0x3c], 0x0
	mov edx, [ebp-0x3c]
RB_DrawDebugPolys_130:
	add edx, [edi+0x22a94c]
	mov ebx, [ebp-0x1c]
	shl edx, 0x5
	lea ecx, [edx+edi]
	mov eax, [esi]
	mov [ecx], eax
	mov eax, [esi+0x4]
	mov [ecx+0x4], eax
	mov eax, [esi+0x8]
	mov [ecx+0x8], eax
	mov dword [ecx+0xc], 0x3f800000
	mov dword [ecx+0x1c], 0x3ffe7f7f
	mov [ecx+0x10], ebx
	lea edx, [edx+edi+0x10]
	mov dword [edx+0x4], 0x0
	mov dword [edx+0x8], 0x0
	add dword [ebp-0x3c], 0x1
	add esi, 0xc
	mov edx, [ebp-0x3c]
	mov eax, [ebp-0x44]
	cmp edx, [eax+0x14]
	jl RB_DrawDebugPolys_130
	mov ecx, eax
RB_DrawDebugPolys_120:
	mov eax, [ecx+0x14]
	cmp eax, 0x2
	jle RB_DrawDebugPolys_140
	mov ecx, 0x2
	mov ebx, [edi+0x22a94c]
RB_DrawDebugPolys_150:
	mov edx, [edi+0x22a948]
	mov [edi+edx*2+0x2a940], bx
	lea eax, [ecx+ebx]
	mov [edi+edx*2+0x2a942], ax
	sub eax, 0x1
	mov [edi+edx*2+0x2a944], ax
	add edx, 0x3
	mov [edi+0x22a948], edx
	add ecx, 0x1
	mov edx, [ebp-0x44]
	mov eax, [edx+0x14]
	cmp ecx, eax
	jl RB_DrawDebugPolys_150
RB_DrawDebugPolys_140:
	add [edi+0x22a94c], eax
	add dword [ebp-0x40], 0x1
	mov eax, backEndData
	mov edx, [eax]
	add dword [ebp-0x2c], 0x18
	mov ecx, [ebp-0x40]
	cmp ecx, [edx+0x11e72c]
	jl RB_DrawDebugPolys_160
	jmp RB_DrawDebugPolys_170
RB_DrawDebugPolys_110:
	call RB_TessOverflow
	jmp RB_DrawDebugPolys_180
RB_DrawDebugPolys_20:
	call RB_EndTessSurface
	jmp RB_DrawDebugPolys_190
RB_DrawDebugPolys_100:
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], g_debugPolyVerts
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call RB_DrawLines3D
	mov ebx, backEndData
	mov eax, [ebx]
	jmp RB_DrawDebugPolys_200


;Initialized global or static variables of rb_debug:
SECTION .data


;Initialized constant data of rb_debug:
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
g_fltMin__uint4: dd 0x800000, 0x800000, 0x800000, 0x800000, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x298138, 0x298138, 0x298100, 0x298100, 0x29811e, 0x29811e, 0x298100, 0x298100, 0x298145, 0x298145, 0x298100, 0x298100, 0x29810d, 0x29812b, 0x298100, 0x298100, 0x45300000, 0x43300000, 0x0, 0x0, 0x0, 0x45300000, 0x0, 0x43300000, 0x45300000, 0x43300000, 0x0, 0x0, 0x0, 0x45300000, 0x0, 0x43300000, 0x80000000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of rb_debug:
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
g_fltMin: resb 0x20
g_debugExternLineVerts: resb 0xaa60
g_debugLineVerts: resb 0xaa60
g_debugPolyVerts: resb 0xaaa0


;All cstrings:
SECTION .rdata
_cstring_i:		db "%i",0



;All constant floats and doubles:
SECTION .rdata
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_double_0_01256637:		dq 0x3f89bc65b68b71c3	; 0.0125664
_float_4_00000000:		dd 0x40800000	; 4
_float_0_06400000:		dd 0x3d83126f	; 0.064
_float__2_00000000:		dd 0xc0000000	; -2
_float_2_00000000:		dd 0x40000000	; 2

