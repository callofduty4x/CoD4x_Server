;Imports of rb_sky:
	extern tess
	extern gfxCmdBufSourceState
	extern rgp
	extern r_drawSun
	extern _Z14RB_SetIdentityv
	extern r_glob
	extern _Z19RB_SetTessTechniquePK8Material21MaterialTechniqueType
	extern WinSleep
	extern dx_ctx
	extern pixelCostMode
	extern _Z17RB_EndTessSurfacev
	extern vidConfig
	extern floorf
	extern vec3_origin
	extern _Z16CM_BoxSightTraceiPKfS0_S0_S0_ji
	extern _Z21R_ConvertColorToBytesPKfPh
	extern _Z28RB_DrawFullScreenColoredQuadPK8Materialffffm
	extern colorWhite
	extern gfxCmdBufState
	extern _Z21R_ClearScreenInternalP16IDirect3DDevice9hPKffhPK11GfxViewport
	extern _Z7R_Set2DP20GfxCmdBufSourceState
	extern _Z17RB_DrawStretchPicPK8Materialffffffffm18GfxPrimStatsTarget
	extern alwaysfails
	extern gfxCfg
	extern _Z18R_ErrorDescriptionl
	extern _Z10Com_PrintfiPKcz

;Exports of rb_sky:
	global _GLOBAL__I_sunFlareArray
	global _Z14RB_SetTessQuad8GfxColor
	global _Z19RB_TessSunBillboardff8GfxColor
	global _Z10RB_DrawSuni
	global _Z21RB_DrawSunPostEffectsi
	global _Z23RB_CalcSunSpriteSamplesv
	global _Z23RB_FreeSunSpriteQueriesv
	global _Z24RB_AllocSunSpriteQueriesv
	global sunFlareArray


SECTION .text


;global constructors keyed to sunFlareArray
_GLOBAL__I_sunFlareArray:
	push ebp
	mov ebp, esp
	mov edx, 0xffff
	mov eax, 0x1
	pop ebp
	jmp _Z41__static_initialization_and_destruction_0ii


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


;RB_SetTessQuad(GfxColor)
_Z14RB_SetTessQuad8GfxColor:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov edi, eax
	mov ebx, tess
	mov esi, [ebx+0x22a94c]
	mov ecx, [ebx+0x22a948]
	lea edx, [esi+0x3]
	mov [ebx+ecx*2+0x2a940], dx
	mov [ebx+ecx*2+0x2a942], si
	lea edx, [esi+0x2]
	mov [ebx+ecx*2+0x2a944], dx
	mov [ebx+ecx*2+0x2a946], dx
	mov [ebx+ecx*2+0x2a948], si
	lea edx, [esi+0x1]
	mov [ebx+ecx*2+0x2a94a], dx
	movzx eax, si
	shl eax, 0x5
	add eax, ebx
	mov dword [eax+0x1c], 0x3ffe7f7f
	xor esi, esi
	mov [eax+0x14], esi
	mov [eax+0x18], esi
	mov [eax+0x10], edi
	lea ecx, [eax+0x20]
	mov dword [ecx+0x1c], 0x3ffe7f7f
	mov edx, 0x3f800000
	mov [eax+0x34], edx
	mov [eax+0x38], esi
	mov [ecx+0x10], edi
	lea ecx, [eax+0x40]
	mov dword [ecx+0x1c], 0x3ffe7f7f
	mov [eax+0x54], edx
	mov [eax+0x58], edx
	mov [ecx+0x10], edi
	lea ecx, [eax+0x60]
	mov dword [ecx+0x1c], 0x3ffe7f7f
	mov [eax+0x74], esi
	mov [eax+0x78], edx
	mov [ecx+0x10], edi
	add dword [ebx+0x22a94c], 0x4
	add dword [ebx+0x22a948], 0x6
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;RB_TessSunBillboard(float, float, GfxColor)
_Z19RB_TessSunBillboardff8GfxColor:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x50
	movss [ebp-0xc], xmm0
	movss [ebp-0x10], xmm1
	mov edx, gfxCmdBufSourceState
	mov ecx, [edx+0xf0c]
	lea esi, [ecx+0x80]
	mov edx, rgp
	mov edx, [edx+0x20a0]
	lea ebx, [edx+0x1d0]
	movss xmm1, dword [edx+0x1d0]
	movss xmm4, dword [ebx+0x4]
	lea edx, [ecx+0x90]
	movss xmm5, dword [ebx+0x8]
	lea ebx, [ecx+0xa0]
	movaps xmm6, xmm1
	mulss xmm6, [ecx+0x80]
	movaps xmm0, xmm4
	mulss xmm0, [ecx+0x90]
	addss xmm6, xmm0
	movaps xmm0, xmm5
	mulss xmm0, [ecx+0xa0]
	addss xmm6, xmm0
	movaps xmm3, xmm1
	mulss xmm3, [esi+0x4]
	movaps xmm0, xmm4
	mulss xmm0, [edx+0x4]
	addss xmm3, xmm0
	movaps xmm0, xmm5
	mulss xmm0, [ebx+0x4]
	addss xmm3, xmm0
	movaps xmm2, xmm1
	mulss xmm2, [esi+0x8]
	movaps xmm0, xmm4
	mulss xmm0, [edx+0x8]
	addss xmm2, xmm0
	movaps xmm0, xmm5
	mulss xmm0, [ebx+0x8]
	addss xmm2, xmm0
	mulss xmm1, [esi+0xc]
	mulss xmm4, [edx+0xc]
	addss xmm1, xmm4
	mulss xmm5, [ebx+0xc]
	addss xmm1, xmm5
	movss [ebp-0x28], xmm1
	movss [ebp-0x38], xmm2
	movss [ebp-0x48], xmm3
	movss [ebp-0x58], xmm6
	call _Z14RB_SetTessQuad8GfxColor
	movss xmm1, dword [ebp-0x28]
	movaps xmm5, xmm1
	mulss xmm5, [_float__0_00050000]
	movss xmm4, dword [ebp-0x10]
	mulss xmm4, xmm1
	movss xmm7, dword [ebp-0xc]
	mulss xmm7, xmm1
	movss xmm6, dword [ebp-0x58]
	movss [eax], xmm6
	movss xmm3, dword [ebp-0x48]
	movss [eax+0x4], xmm3
	movss xmm2, dword [ebp-0x38]
	movss [eax+0x8], xmm2
	movss [eax+0xc], xmm1
	lea edx, [eax+0x20]
	movss [eax+0x20], xmm6
	movss [edx+0x4], xmm3
	movss [edx+0x8], xmm2
	movss [edx+0xc], xmm1
	lea ecx, [eax+0x40]
	movss [eax+0x40], xmm6
	movss [ecx+0x4], xmm3
	movss [ecx+0x8], xmm2
	movss [ecx+0xc], xmm1
	lea ebx, [eax+0x60]
	movss [eax+0x60], xmm6
	movss [ebx+0x4], xmm3
	movss [ebx+0x8], xmm2
	movss [ebx+0xc], xmm1
	movaps xmm0, xmm7
	addss xmm0, [eax]
	movss [eax], xmm0
	movaps xmm0, xmm4
	addss xmm0, [eax+0x4]
	movss [eax+0x4], xmm0
	movaps xmm0, xmm5
	addss xmm0, [eax+0x8]
	movss [eax+0x8], xmm0
	movaps xmm0, xmm7
	addss xmm0, [eax+0x20]
	movss [eax+0x20], xmm0
	movss xmm0, dword [edx+0x4]
	subss xmm0, xmm4
	movss [edx+0x4], xmm0
	movaps xmm0, xmm5
	addss xmm0, [edx+0x8]
	movss [edx+0x8], xmm0
	movss xmm0, dword [eax+0x40]
	subss xmm0, xmm7
	movss [eax+0x40], xmm0
	movss xmm0, dword [ecx+0x4]
	subss xmm0, xmm4
	movss [ecx+0x4], xmm0
	movaps xmm0, xmm5
	addss xmm0, [ecx+0x8]
	movss [ecx+0x8], xmm0
	movss xmm0, dword [eax+0x60]
	subss xmm0, xmm7
	movss [eax+0x60], xmm0
	addss xmm4, [ebx+0x4]
	movss [ebx+0x4], xmm4
	addss xmm5, [ebx+0x8]
	movss [ebx+0x8], xmm5
	add esp, 0x50
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;RB_DrawSun(int)
_Z10RB_DrawSuni:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xdc
	mov eax, r_drawSun
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z10RB_DrawSuni_10
	mov ebx, rgp
	mov eax, [ebx+0x20a0]
	cmp byte [eax+0x17c], 0x0
	jnz _Z10RB_DrawSuni_20
_Z10RB_DrawSuni_10:
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10RB_DrawSuni_20:
	mov edx, [ebp+0x8]
	lea eax, [edx+edx*4]
	lea eax, [eax*8+sunFlareArray]
	mov [ebp-0x5c], eax
	call _Z14RB_SetIdentityv
	mov eax, r_glob
	mov esi, [eax]
	and esi, 0x80000001
	js _Z10RB_DrawSuni_30
_Z10RB_DrawSuni_240:
	mov eax, [ebp-0x5c]
	mov edi, [eax+esi*4+0x1c]
	test edi, edi
	jz _Z10RB_DrawSuni_40
	mov dword [esp+0x4], 0x4
	mov eax, [ebx+0x2038]
	mov [esp], eax
	call _Z19RB_SetTessTechniquePK8Material21MaterialTechniqueType
	mov dword [ebp-0x1c], 0xff000000
	call _Z14RB_SetIdentityv
	mov eax, [ebp-0x1c]
	mov edx, gfxCmdBufSourceState
	cvtsi2ss xmm1, dword [edx+0xf6c]
	movss xmm0, dword [_float_16_00000000]
	cvtsi2ss xmm2, dword [edx+0xf68]
	movaps xmm3, xmm0
	divss xmm3, xmm1
	movaps xmm1, xmm3
	divss xmm0, xmm2
	call _Z19RB_TessSunBillboardff8GfxColor
	mov eax, [ebp-0x5c]
	pxor xmm3, xmm3
	cmp byte [esi+eax+0x19], 0x0
	jz _Z10RB_DrawSuni_50
	mov ebx, [eax+esi*4+0x1c]
	lea edi, [ebp-0x20]
	jmp _Z10RB_DrawSuni_60
_Z10RB_DrawSuni_70:
	mov dword [esp], 0x0
	call WinSleep
_Z10RB_DrawSuni_60:
	mov eax, [ebx]
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], edi
	mov [esp], ebx
	call dword [eax+0x1c]
	cmp eax, 0x1
	jz _Z10RB_DrawSuni_70
	test eax, eax
	js _Z10RB_DrawSuni_80
	mov ecx, [ebp-0x20]
	cmp ecx, 0xffffffff
	jz _Z10RB_DrawSuni_80
	test ecx, ecx
	js _Z10RB_DrawSuni_90
	cvtsi2ss xmm0, ecx
_Z10RB_DrawSuni_280:
	mov eax, dx_ctx
	mov edx, [eax+0x2c64]
	cmp ecx, edx
	jbe _Z10RB_DrawSuni_100
	mov eax, [ebp-0x5c]
	mov byte [eax+0x18], 0x1
_Z10RB_DrawSuni_100:
	test edx, edx
	js _Z10RB_DrawSuni_110
	cvtsi2ss xmm1, edx
_Z10RB_DrawSuni_290:
	movaps xmm3, xmm0
	divss xmm3, xmm1
	movss xmm2, dword [_float_1_00000000]
	movaps xmm1, xmm2
	subss xmm1, xmm3
	pxor xmm0, xmm0
	cmpss xmm0, xmm1, 0x2
	movaps xmm1, xmm3
	andps xmm1, xmm0
	movaps xmm3, xmm0
	andnps xmm3, xmm2
	orps xmm3, xmm1
_Z10RB_DrawSuni_50:
	mov edx, [ebp-0x5c]
	cmp byte [edx+0x18], 0x0
	jnz _Z10RB_DrawSuni_120
	movss [edx+0x10], xmm3
	mov eax, [ebp-0x5c]
	mov byte [eax+0x18], 0x0
	mov eax, pixelCostMode
	mov eax, [eax]
	sub eax, 0x1
	cmp eax, 0x1
	ja _Z10RB_DrawSuni_130
_Z10RB_DrawSuni_170:
	call _Z17RB_EndTessSurfacev
	pxor xmm0, xmm0
	movss [ebp-0x6c], xmm0
_Z10RB_DrawSuni_180:
	mov eax, gfxCmdBufSourceState
	mov edx, [eax+0xf0c]
	lea ebx, [edx+0x110]
	mov esi, rgp
	mov eax, [esi+0x20a0]
	lea ecx, [eax+0x1d0]
	movss xmm1, dword [eax+0x1d0]
	mulss xmm1, [edx+0x110]
	movss xmm0, dword [ecx+0x4]
	mulss xmm0, [ebx+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [ecx+0x8]
	mulss xmm0, [ebx+0x8]
	addss xmm1, xmm0
	mov edx, [ebp-0x5c]
	movss [edx+0x14], xmm1
	movss xmm0, dword [ebp-0x6c]
	ucomiss xmm0, xmm1
	jae _Z10RB_DrawSuni_140
	mov ebx, [esi+0x20a0]
	lea edi, [ebx+0x1d0]
	mov dword [esp+0x4], 0x4
	mov eax, [ebx+0x180]
	mov [esp], eax
	call _Z19RB_SetTessTechniquePK8Material21MaterialTechniqueType
	mov eax, 0xffffffff
	call _Z14RB_SetTessQuad8GfxColor
	mov edx, eax
	mov eax, [esi+0x20a0]
	movss xmm3, dword [_float_0_00131109]
	movss [ebp-0x48], xmm3
	mulss xmm3, [eax+0x188]
	movss [ebp-0x48], xmm3
	lea esi, [ebx+0x1d8]
	movss xmm0, dword [ebx+0x1d8]
	movss [ebp-0x4c], xmm0
	mulss xmm0, xmm0
	ucomiss xmm0, [_float_0_99000001]
	jbe _Z10RB_DrawSuni_150
	movss xmm1, dword [ebp-0x6c]
	movss xmm2, dword [_float_1_00000000]
	movss xmm3, dword [g_fltMin__uint4+0x10]
	movss xmm0, dword [edi+0x4]
	movss [ebp-0x68], xmm0
	movaps xmm4, xmm0
_Z10RB_DrawSuni_230:
	lea ecx, [edi+0x4]
	pxor xmm0, xmm0
	movss [ebp-0x6c], xmm0
	mulss xmm4, xmm0
	movss xmm0, dword [ebp-0x4c]
	mulss xmm0, xmm1
	subss xmm4, xmm0
	movss xmm7, dword [edi]
	movss xmm5, dword [ebp-0x4c]
	mulss xmm5, xmm2
	movss xmm0, dword [ebp-0x6c]
	mulss xmm0, xmm7
	subss xmm5, xmm0
	movaps xmm6, xmm7
	mulss xmm6, xmm1
	mulss xmm2, [ebp-0x68]
	subss xmm6, xmm2
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	movaps xmm1, xmm5
	mulss xmm1, xmm5
	addss xmm0, xmm1
	movaps xmm1, xmm6
	mulss xmm1, xmm6
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	movaps xmm0, xmm1
	xorps xmm0, xmm3
	ucomiss xmm0, [ebp-0x6c]
	jb _Z10RB_DrawSuni_160
	movss xmm0, dword [_float_1_00000000]
_Z10RB_DrawSuni_270:
	mulss xmm4, xmm0
	mulss xmm5, xmm0
	mulss xmm6, xmm0
	mulss xmm4, [ebp-0x48]
	mulss xmm5, [ebp-0x48]
	mulss xmm6, [ebp-0x48]
	movss xmm3, dword [ebp-0x4c]
	mulss xmm3, xmm5
	movss xmm0, dword [ebp-0x68]
	mulss xmm0, xmm6
	subss xmm3, xmm0
	movaps xmm2, xmm7
	mulss xmm2, xmm6
	movss xmm0, dword [ebp-0x4c]
	mulss xmm0, xmm4
	subss xmm2, xmm0
	movss xmm1, dword [ebp-0x68]
	mulss xmm1, xmm4
	movaps xmm0, xmm7
	mulss xmm0, xmm5
	subss xmm1, xmm0
	movaps xmm0, xmm4
	addss xmm0, xmm3
	movss [ebp-0x3c], xmm0
	movaps xmm0, xmm5
	addss xmm0, xmm2
	movss [ebp-0x40], xmm0
	movaps xmm0, xmm6
	addss xmm0, xmm1
	movss [ebp-0x44], xmm0
	subss xmm4, xmm3
	subss xmm5, xmm2
	subss xmm6, xmm1
	addss xmm7, [ebp-0x3c]
	movss [edx], xmm7
	movss xmm0, dword [ebp-0x40]
	addss xmm0, [ecx]
	movss [edx+0x4], xmm0
	movss xmm0, dword [ebp-0x44]
	addss xmm0, [esi]
	movss [edx+0x8], xmm0
	mov dword [edx+0xc], 0x0
	lea eax, [edx+0x20]
	movaps xmm0, xmm4
	addss xmm0, [edi]
	movss [edx+0x20], xmm0
	movaps xmm0, xmm5
	addss xmm0, [ecx]
	movss [eax+0x4], xmm0
	movaps xmm0, xmm6
	addss xmm0, [esi]
	movss [eax+0x8], xmm0
	mov dword [eax+0xc], 0x0
	lea eax, [edx+0x40]
	movss xmm0, dword [edi]
	subss xmm0, [ebp-0x3c]
	movss [edx+0x40], xmm0
	movss xmm0, dword [ecx]
	subss xmm0, [ebp-0x40]
	movss [eax+0x4], xmm0
	movss xmm0, dword [esi]
	subss xmm0, [ebp-0x44]
	movss [eax+0x8], xmm0
	mov dword [eax+0xc], 0x0
	lea eax, [edx+0x60]
	movss xmm0, dword [edi]
	subss xmm0, xmm4
	movss [edx+0x60], xmm0
	movss xmm0, dword [ecx]
	subss xmm0, xmm5
	movss [eax+0x4], xmm0
	movss xmm0, dword [esi]
	subss xmm0, xmm6
	movss [eax+0x8], xmm0
	mov dword [eax+0xc], 0x0
	call _Z17RB_EndTessSurfacev
_Z10RB_DrawSuni_140:
	mov eax, tess
	mov ebx, [eax+0x22a948]
	test ebx, ebx
	jz _Z10RB_DrawSuni_10
	call _Z17RB_EndTessSurfacev
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10RB_DrawSuni_120:
	mov eax, edx
	mov byte [eax+0x18], 0x0
	mov eax, pixelCostMode
	mov eax, [eax]
	sub eax, 0x1
	cmp eax, 0x1
	jbe _Z10RB_DrawSuni_170
_Z10RB_DrawSuni_130:
	mov edx, [ebp-0x5c]
	mov eax, [edx+esi*4+0x1c]
	mov edx, [eax]
	mov dword [esp+0x4], 0x2
	mov [esp], eax
	call dword [edx+0x18]
	call _Z17RB_EndTessSurfacev
	mov edx, [ebp-0x5c]
	mov eax, [edx+esi*4+0x1c]
	mov edx, [eax]
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call dword [edx+0x18]
	mov eax, [ebp-0x5c]
	mov byte [esi+eax+0x19], 0x1
	pxor xmm0, xmm0
	movss [ebp-0x6c], xmm0
	jmp _Z10RB_DrawSuni_180
_Z10RB_DrawSuni_40:
	mov edx, gfxCmdBufSourceState
	mov ecx, [edx+0xf0c]
	lea eax, [ecx+0x80]
	mov [ebp-0x50], eax
	mov eax, [ebx+0x20a0]
	lea edx, [eax+0x1d0]
	movss xmm2, dword [eax+0x1d0]
	movss xmm5, dword [edx+0x4]
	lea eax, [ecx+0x90]
	mov [ebp-0x58], eax
	movss xmm4, dword [edx+0x8]
	lea ebx, [ecx+0xa0]
	movaps xmm3, xmm2
	mov edx, [ebp-0x50]
	mulss xmm3, [edx+0xc]
	movaps xmm0, xmm5
	mulss xmm0, [eax+0xc]
	addss xmm3, xmm0
	movaps xmm0, xmm4
	mulss xmm0, [ebx+0xc]
	addss xmm3, xmm0
	pxor xmm0, xmm0
	movss [ebp-0x6c], xmm0
	ucomiss xmm0, xmm3
	jae _Z10RB_DrawSuni_190
	mov eax, vidConfig
	mov esi, [eax+0x8]
	mov eax, [eax+0xc]
	mov [ebp-0x54], eax
	movaps xmm0, xmm2
	mulss xmm0, [ecx+0x80]
	movaps xmm1, xmm5
	mulss xmm1, [ecx+0x90]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [ecx+0xa0]
	addss xmm0, xmm1
	divss xmm0, xmm3
	addss xmm0, [_float_1_00000000]
	cvtsi2ss xmm1, esi
	mulss xmm0, xmm1
	subss xmm0, [_float_16_00000000]
	movss xmm1, dword [_float_0_50000000]
	mulss xmm0, xmm1
	addss xmm0, xmm1
	movss [esp], xmm0
	movss [ebp-0x88], xmm1
	movss [ebp-0x98], xmm2
	movss [ebp-0xa8], xmm3
	movss [ebp-0xb8], xmm4
	movss [ebp-0xc8], xmm5
	call floorf
	fstp dword [ebp-0x60]
	cvttss2si edi, [ebp-0x60]
	movss xmm2, dword [ebp-0x98]
	mov eax, [ebp-0x50]
	mulss xmm2, [eax+0x4]
	movss xmm5, dword [ebp-0xc8]
	mov edx, [ebp-0x58]
	mulss xmm5, [edx+0x4]
	addss xmm2, xmm5
	movss xmm4, dword [ebp-0xb8]
	mulss xmm4, [ebx+0x4]
	addss xmm2, xmm4
	movss xmm3, dword [ebp-0xa8]
	divss xmm2, xmm3
	addss xmm2, [_float_1_00000000]
	cvtsi2ss xmm0, dword [ebp-0x54]
	mulss xmm2, xmm0
	subss xmm2, [_float_16_00000000]
	movss xmm1, dword [ebp-0x88]
	mulss xmm2, xmm1
	addss xmm2, xmm1
	movss [esp], xmm2
	call floorf
	fstp dword [ebp-0x64]
	cvttss2si ebx, [ebp-0x64]
	lea eax, [edi+0x10]
	lea ecx, [ebx+0x10]
	xor edx, edx
	test edi, edi
	cmovs edi, edx
	cmp esi, eax
	cmovge esi, eax
	test ebx, ebx
	cmovs ebx, edx
	cmp [ebp-0x54], ecx
	cmovl ecx, [ebp-0x54]
	mov [ebp-0x54], ecx
	cmp edi, esi
	jl _Z10RB_DrawSuni_200
_Z10RB_DrawSuni_250:
	movss xmm1, dword [ebp-0x6c]
_Z10RB_DrawSuni_260:
	mov eax, [ebp-0x5c]
	movss [eax+0x10], xmm1
	ucomiss xmm1, [ebp-0x6c]
	jp _Z10RB_DrawSuni_210
	jz _Z10RB_DrawSuni_180
_Z10RB_DrawSuni_210:
	mov eax, gfxCmdBufSourceState
	mov edx, [eax+0xf0c]
	lea ebx, [edx+0x100]
	mov eax, rgp
	mov eax, [eax+0x20a0]
	lea ecx, [eax+0x1d0]
	movss xmm1, dword [_float_262144_00000000]
	movss xmm0, dword [eax+0x1d0]
	mulss xmm0, xmm1
	addss xmm0, [edx+0x100]
	movss [ebp-0x2c], xmm0
	movss xmm0, dword [ecx+0x4]
	mulss xmm0, xmm1
	addss xmm0, [ebx+0x4]
	movss [ebp-0x28], xmm0
	mulss xmm1, [ecx+0x8]
	addss xmm1, [ebx+0x8]
	movss [ebp-0x24], xmm1
	mov dword [esp+0x18], 0x2003
	mov dword [esp+0x14], 0x0
	mov eax, vec3_origin
	mov [esp+0x10], eax
	mov [esp+0xc], eax
	lea eax, [ebp-0x2c]
	mov [esp+0x8], eax
	mov edx, gfxCmdBufSourceState
	mov eax, [edx+0xf0c]
	add eax, 0x100
	mov [esp+0x4], eax
	mov edx, [ebp-0x5c]
	mov eax, [edx+0x24]
	mov [esp], eax
	call _Z16CM_BoxSightTraceiPKfS0_S0_S0_ji
	mov edx, [ebp-0x5c]
	mov [edx+0x24], eax
	test eax, eax
	jz _Z10RB_DrawSuni_220
	mov dword [edx+0x10], 0x0
	pxor xmm0, xmm0
	movss [ebp-0x6c], xmm0
	jmp _Z10RB_DrawSuni_180
_Z10RB_DrawSuni_150:
	movss xmm3, dword [g_fltMin__uint4+0x10]
	movss xmm1, dword [ebx+0x1d0]
	xorps xmm1, xmm3
	movss xmm0, dword [edi+0x4]
	movss [ebp-0x68], xmm0
	movaps xmm2, xmm0
	movaps xmm4, xmm0
	jmp _Z10RB_DrawSuni_230
_Z10RB_DrawSuni_30:
	sub esi, 0x1
	or esi, 0xfffffffe
	add esi, 0x1
	jmp _Z10RB_DrawSuni_240
_Z10RB_DrawSuni_200:
	cmp ebx, ecx
	jge _Z10RB_DrawSuni_250
	sub esi, edi
	sub [ebp-0x54], ebx
	imul esi, [ebp-0x54]
	cvtsi2ss xmm1, esi
	mulss xmm1, [_float_0_00390625]
	jmp _Z10RB_DrawSuni_260
_Z10RB_DrawSuni_190:
	movaps xmm1, xmm0
	jmp _Z10RB_DrawSuni_260
_Z10RB_DrawSuni_160:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	jmp _Z10RB_DrawSuni_270
_Z10RB_DrawSuni_80:
	mov eax, [ebp-0x5c]
	mov byte [eax+0x18], 0x1
	mov ecx, 0xffffffff
	movss xmm0, dword [_float_4294967296_00000000]
	jmp _Z10RB_DrawSuni_280
_Z10RB_DrawSuni_110:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm1, eax
	addss xmm1, xmm1
	jmp _Z10RB_DrawSuni_290
_Z10RB_DrawSuni_220:
	pxor xmm3, xmm3
	movss [ebp-0x6c], xmm3
	jmp _Z10RB_DrawSuni_180
_Z10RB_DrawSuni_90:
	mov eax, ecx
	shr eax, 1
	mov edx, ecx
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _Z10RB_DrawSuni_280


;RB_DrawSunPostEffects(int)
_Z21RB_DrawSunPostEffectsi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov eax, [ebp+0x8]
	lea eax, [eax+eax*4]
	lea esi, [eax*8+sunFlareArray]
	mov eax, [esi+0xc]
	test eax, eax
	jz _Z21RB_DrawSunPostEffectsi_10
	mov ecx, gfxCmdBufSourceState
	mov edx, [ecx+0xf3c]
	cmp eax, edx
	jle _Z21RB_DrawSunPostEffectsi_20
_Z21RB_DrawSunPostEffectsi_170:
	mov edi, 0xa
_Z21RB_DrawSunPostEffectsi_180:
	mov eax, [ecx+0xf3c]
	mov [esi+0xc], eax
	mov eax, r_drawSun
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z21RB_DrawSunPostEffectsi_30
	mov edx, rgp
	mov eax, [edx+0x20a0]
	cmp byte [eax+0x17c], 0x0
	jz _Z21RB_DrawSunPostEffectsi_30
	mov ebx, [eax+0x184]
	test ebx, ebx
	jz _Z21RB_DrawSunPostEffectsi_40
	movss xmm0, dword [esi+0x14]
	movss xmm2, dword [eax+0x190]
	ucomiss xmm2, xmm0
	jae _Z21RB_DrawSunPostEffectsi_40
	movss xmm3, dword [eax+0x198]
	ucomiss xmm0, xmm3
	jb _Z21RB_DrawSunPostEffectsi_50
	movss xmm0, dword [_float_1_00000000]
_Z21RB_DrawSunPostEffectsi_270:
	movaps xmm1, xmm0
	mulss xmm1, [eax+0x19c]
	movss [ebp-0x40], xmm1
	mulss xmm0, [eax+0x194]
	movss [ebp-0x3c], xmm0
	addss xmm0, [eax+0x18c]
	movss [ebp-0x3c], xmm0
	mov ecx, [eax+0x1a4]
	mov edx, [eax+0x1a0]
	movss xmm2, dword [esi+0x10]
	movss xmm3, dword [esi]
	ucomiss xmm2, xmm3
	jbe _Z21RB_DrawSunPostEffectsi_60
	test edx, edx
	jle _Z21RB_DrawSunPostEffectsi_70
	cvtsi2ss xmm1, edi
	cvtsi2ss xmm0, edx
	divss xmm1, xmm0
	addss xmm1, xmm3
	ucomiss xmm1, xmm2
	jbe _Z21RB_DrawSunPostEffectsi_80
_Z21RB_DrawSunPostEffectsi_70:
	movss [esi], xmm2
	mov dword [esp+0x4], 0x4
	mov eax, [eax+0x184]
	mov [esp], eax
	movss [ebp-0x58], xmm2
	call _Z19RB_SetTessTechniquePK8Material21MaterialTechniqueType
	movss xmm2, dword [ebp-0x58]
	mulss xmm2, [ebp-0x40]
	mulss xmm2, [_float_255_00000000]
	addss xmm2, [_float_0_50000000]
	movss [esp], xmm2
	call floorf
	fstp dword [ebp-0x44]
	cvttss2si eax, [ebp-0x44]
	movzx eax, al
	mov edx, eax
	shl edx, 0x10
	mov ecx, eax
	shl ecx, 0x8
	or edx, ecx
	or eax, edx
	or eax, 0xff000000
	mov [ebp-0x1c], eax
	call _Z14RB_SetIdentityv
	mov eax, [ebp-0x1c]
	movss xmm1, dword [ebp-0x3c]
	divss xmm1, dword [_float_480_00000000]
	movss xmm0, dword [ebp-0x3c]
	divss xmm0, dword [_float_640_00000000]
	call _Z19RB_TessSunBillboardff8GfxColor
	mov ecx, gfxCmdBufSourceState
	mov edx, rgp
_Z21RB_DrawSunPostEffectsi_40:
	mov eax, [ecx+0xf0c]
	lea ecx, [eax+0x110]
	mov ebx, [edx+0x20a0]
	lea edx, [ebx+0x1d0]
	movss xmm4, dword [ebx+0x1d0]
	mulss xmm4, [eax+0x110]
	movss xmm0, dword [edx+0x4]
	mulss xmm0, [ecx+0x4]
	addss xmm4, xmm0
	movss xmm0, dword [edx+0x8]
	mulss xmm0, [ecx+0x8]
	addss xmm4, xmm0
	pxor xmm5, xmm5
	ucomiss xmm5, [ebx+0x1b0]
	jae _Z21RB_DrawSunPostEffectsi_90
	movss xmm0, dword [ebx+0x1a8]
	ucomiss xmm0, xmm4
	jb _Z21RB_DrawSunPostEffectsi_100
	movaps xmm2, xmm5
_Z21RB_DrawSunPostEffectsi_200:
	mulss xmm2, [esi+0x10]
	mov edx, [ebx+0x1b8]
	mov eax, [ebx+0x1b4]
	movss xmm3, dword [esi+0x4]
	ucomiss xmm2, xmm3
	jbe _Z21RB_DrawSunPostEffectsi_110
	test eax, eax
	jle _Z21RB_DrawSunPostEffectsi_120
	cvtsi2ss xmm1, edi
	cvtsi2ss xmm0, eax
	divss xmm1, xmm0
	addss xmm1, xmm3
	ucomiss xmm1, xmm2
	ja _Z21RB_DrawSunPostEffectsi_120
	movaps xmm2, xmm1
_Z21RB_DrawSunPostEffectsi_120:
	movss [esi+0x4], xmm2
	movaps xmm6, xmm2
	mulss xmm6, [ebx+0x1b0]
_Z21RB_DrawSunPostEffectsi_250:
	movaps xmm0, xmm5
	ucomiss xmm5, [ebx+0x1c4]
	jae _Z21RB_DrawSunPostEffectsi_130
	movss xmm0, dword [ebx+0x1bc]
	ucomiss xmm0, xmm4
	jb _Z21RB_DrawSunPostEffectsi_140
	movaps xmm2, xmm5
_Z21RB_DrawSunPostEffectsi_230:
	mulss xmm2, [esi+0x10]
	mov edx, [ebx+0x1cc]
	mov eax, [ebx+0x1c8]
	movss xmm3, dword [esi+0x8]
	ucomiss xmm2, xmm3
	jbe _Z21RB_DrawSunPostEffectsi_150
	test eax, eax
	jle _Z21RB_DrawSunPostEffectsi_160
	cvtsi2ss xmm1, edi
	cvtsi2ss xmm0, eax
	divss xmm1, xmm0
	addss xmm1, xmm3
	ucomiss xmm1, xmm2
	ja _Z21RB_DrawSunPostEffectsi_160
	movaps xmm2, xmm1
_Z21RB_DrawSunPostEffectsi_160:
	movss [esi+0x8], xmm2
	movaps xmm0, xmm2
	mulss xmm0, [ebx+0x1c4]
_Z21RB_DrawSunPostEffectsi_130:
	movss [ebp-0x2c], xmm0
	movss [ebp-0x28], xmm0
	movss [ebp-0x24], xmm0
	movss [ebp-0x20], xmm6
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	lea eax, [ebp-0x2c]
	mov [esp], eax
	call _Z21R_ConvertColorToBytesPKfPh
	mov eax, [ebp-0x1c]
	mov [esp+0x14], eax
	mov eax, 0x3f800000
	mov [esp+0x10], eax
	mov [esp+0xc], eax
	xor eax, eax
	mov [esp+0x8], eax
	mov [esp+0x4], eax
	mov eax, rgp
	mov eax, [eax+0x2064]
	mov [esp], eax
	call _Z28RB_DrawFullScreenColoredQuadPK8Materialffffm
_Z21RB_DrawSunPostEffectsi_30:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21RB_DrawSunPostEffectsi_10:
	mov ecx, gfxCmdBufSourceState
	jmp _Z21RB_DrawSunPostEffectsi_170
_Z21RB_DrawSunPostEffectsi_20:
	mov edi, edx
	sub edi, eax
	jmp _Z21RB_DrawSunPostEffectsi_180
_Z21RB_DrawSunPostEffectsi_100:
	movss xmm1, dword [ebx+0x1ac]
	ucomiss xmm4, xmm1
	jb _Z21RB_DrawSunPostEffectsi_190
	movss xmm2, dword [_float_1_00000000]
	jmp _Z21RB_DrawSunPostEffectsi_200
_Z21RB_DrawSunPostEffectsi_150:
	ucomiss xmm3, xmm2
	ja _Z21RB_DrawSunPostEffectsi_210
	movaps xmm2, xmm3
	jmp _Z21RB_DrawSunPostEffectsi_160
_Z21RB_DrawSunPostEffectsi_140:
	movss xmm1, dword [ebx+0x1c0]
	ucomiss xmm4, xmm1
	jb _Z21RB_DrawSunPostEffectsi_220
	movss xmm2, dword [_float_1_00000000]
	jmp _Z21RB_DrawSunPostEffectsi_230
_Z21RB_DrawSunPostEffectsi_110:
	ucomiss xmm3, xmm2
	ja _Z21RB_DrawSunPostEffectsi_240
	movaps xmm2, xmm3
	jmp _Z21RB_DrawSunPostEffectsi_120
_Z21RB_DrawSunPostEffectsi_90:
	movaps xmm6, xmm5
	jmp _Z21RB_DrawSunPostEffectsi_250
_Z21RB_DrawSunPostEffectsi_60:
	ucomiss xmm3, xmm2
	jbe _Z21RB_DrawSunPostEffectsi_260
	test ecx, ecx
	jle _Z21RB_DrawSunPostEffectsi_70
	cvtsi2ss xmm0, edi
	cvtsi2ss xmm1, ecx
	divss xmm0, xmm1
	subss xmm3, xmm0
	maxss xmm2, xmm3
	jmp _Z21RB_DrawSunPostEffectsi_70
_Z21RB_DrawSunPostEffectsi_50:
	subss xmm0, xmm2
	subss xmm3, xmm2
	divss xmm0, xmm3
	jmp _Z21RB_DrawSunPostEffectsi_270
_Z21RB_DrawSunPostEffectsi_210:
	test edx, edx
	jle _Z21RB_DrawSunPostEffectsi_160
	cvtsi2ss xmm0, edi
	cvtsi2ss xmm1, edx
	divss xmm0, xmm1
	subss xmm3, xmm0
	maxss xmm2, xmm3
	jmp _Z21RB_DrawSunPostEffectsi_160
_Z21RB_DrawSunPostEffectsi_240:
	test edx, edx
	jle _Z21RB_DrawSunPostEffectsi_120
	cvtsi2ss xmm0, edi
	cvtsi2ss xmm1, edx
	divss xmm0, xmm1
	subss xmm3, xmm0
	maxss xmm2, xmm3
	jmp _Z21RB_DrawSunPostEffectsi_120
_Z21RB_DrawSunPostEffectsi_190:
	movaps xmm2, xmm4
	subss xmm2, xmm0
	subss xmm1, xmm0
	divss xmm2, xmm1
	jmp _Z21RB_DrawSunPostEffectsi_200
_Z21RB_DrawSunPostEffectsi_220:
	movaps xmm2, xmm4
	subss xmm2, xmm0
	subss xmm1, xmm0
	divss xmm2, xmm1
	jmp _Z21RB_DrawSunPostEffectsi_230
_Z21RB_DrawSunPostEffectsi_260:
	movaps xmm2, xmm3
	jmp _Z21RB_DrawSunPostEffectsi_70
_Z21RB_DrawSunPostEffectsi_80:
	movaps xmm2, xmm1
	jmp _Z21RB_DrawSunPostEffectsi_70


;RB_CalcSunSpriteSamples()
_Z23RB_CalcSunSpriteSamplesv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov edi, [sunFlareArray+0x1c]
	test edi, edi
	jz _Z23RB_CalcSunSpriteSamplesv_10
	mov eax, tess
	mov eax, [eax+0x22a948]
	test eax, eax
	jnz _Z23RB_CalcSunSpriteSamplesv_20
_Z23RB_CalcSunSpriteSamplesv_50:
	mov edx, dx_ctx
	mov eax, [edx+0x8]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0xa4]
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x3f800000
	mov esi, colorWhite
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x2
	mov eax, gfxCmdBufState
	mov eax, [eax+0x90]
	mov [esp], eax
	call _Z21R_ClearScreenInternalP16IDirect3DDevice9hPKffhPK11GfxViewport
	mov ebx, gfxCmdBufSourceState
	mov eax, [esi]
	mov [ebx+0xb00], eax
	mov eax, [esi+0x4]
	mov [ebx+0xb04], eax
	mov eax, [esi+0x8]
	mov [ebx+0xb08], eax
	mov eax, [esi+0xc]
	mov [ebx+0xb0c], eax
	add word [ebx+0xe80], 0x1
	mov eax, [edi]
	mov dword [esp+0x4], 0x2
	mov [esp], edi
	call dword [eax+0x18]
	mov [esp], ebx
	call _Z7R_Set2DP20GfxCmdBufSourceState
	mov dword [esp+0x28], 0x9
	mov dword [esp+0x24], 0xffffffff
	mov dword [esp+0x20], 0x3f800000
	mov dword [esp+0x1c], 0x3f800000
	xor edx, edx
	mov [esp+0x18], edx
	mov [esp+0x14], edx
	mov eax, 0x41800000
	mov [esp+0x10], eax
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov [esp+0x4], edx
	mov eax, rgp
	mov eax, [eax+0x2038]
	mov [esp], eax
	call _Z17RB_DrawStretchPicPK8Materialffffffffm18GfxPrimStatsTarget
	call _Z17RB_EndTessSurfacev
	mov eax, [edi]
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call dword [eax+0x18]
	mov edx, dx_ctx
	mov eax, [edx+0x8]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0xa8]
	lea ebx, [ebp-0x1c]
	jmp _Z23RB_CalcSunSpriteSamplesv_30
_Z23RB_CalcSunSpriteSamplesv_40:
	mov dword [esp], 0x0
	call WinSleep
_Z23RB_CalcSunSpriteSamplesv_30:
	mov eax, [edi]
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], ebx
	mov [esp], edi
	call dword [eax+0x1c]
	mov edx, eax
	cmp eax, 0x1
	jz _Z23RB_CalcSunSpriteSamplesv_40
	mov eax, 0x100
	test edx, edx
	cmovz eax, [ebp-0x1c]
	mov [ebp-0x1c], eax
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23RB_CalcSunSpriteSamplesv_20:
	call _Z17RB_EndTessSurfacev
	jmp _Z23RB_CalcSunSpriteSamplesv_50
_Z23RB_CalcSunSpriteSamplesv_10:
	xor eax, eax
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;RB_FreeSunSpriteQueries()
_Z23RB_FreeSunSpriteQueriesv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [ebp-0x1c], 0x0
	mov dword [ebp-0x20], 0x0
_Z23RB_FreeSunSpriteQueriesv_40:
	mov esi, [ebp-0x20]
	add esi, sunFlareArray
	mov edi, 0x2
_Z23RB_FreeSunSpriteQueriesv_30:
	lea ebx, [esi+0x1c]
	mov ecx, [esi+0x1c]
	test ecx, ecx
	jz _Z23RB_FreeSunSpriteQueriesv_10
_Z23RB_FreeSunSpriteQueriesv_20:
	mov eax, [ebx]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov dword [ebx], 0x0
	mov eax, alwaysfails
	mov edx, [eax]
	test edx, edx
	jnz _Z23RB_FreeSunSpriteQueriesv_20
_Z23RB_FreeSunSpriteQueriesv_10:
	add esi, 0x4
	sub edi, 0x1
	jnz _Z23RB_FreeSunSpriteQueriesv_30
	add dword [ebp-0x1c], 0x1
	add dword [ebp-0x20], 0x28
	cmp dword [ebp-0x1c], 0x4
	jnz _Z23RB_FreeSunSpriteQueriesv_40
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;RB_AllocSunSpriteQueries()
_Z24RB_AllocSunSpriteQueriesv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, gfxCfg
	mov eax, [eax]
	test eax, eax
	jz _Z24RB_AllocSunSpriteQueriesv_10
	mov dword [ebp-0x30], 0x0
	mov dword [ebp-0x34], 0x0
	jmp _Z24RB_AllocSunSpriteQueriesv_20
_Z24RB_AllocSunSpriteQueriesv_40:
	mov eax, [ebp-0x1c]
_Z24RB_AllocSunSpriteQueriesv_50:
	mov [esi+0x1c], eax
	mov byte [edi+0x19], 0x0
	add dword [ebp-0x2c], 0x1
	add esi, 0x4
	add edi, 0x1
	cmp dword [ebp-0x2c], 0x2
	jnz _Z24RB_AllocSunSpriteQueriesv_30
	add dword [ebp-0x30], 0x1
	add dword [ebp-0x34], 0x28
	mov eax, gfxCfg
	mov edx, [ebp-0x30]
	cmp edx, [eax]
	jae _Z24RB_AllocSunSpriteQueriesv_10
_Z24RB_AllocSunSpriteQueriesv_20:
	mov esi, [ebp-0x34]
	add esi, sunFlareArray
	mov edi, esi
	mov dword [ebp-0x2c], 0x0
_Z24RB_AllocSunSpriteQueriesv_30:
	mov edx, dx_ctx
	mov eax, [edx+0x8]
	mov edx, [eax]
	lea ecx, [ebp-0x1c]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x9
	mov [esp], eax
	call dword [edx+0x1d8]
	mov ebx, eax
	test eax, eax
	jns _Z24RB_AllocSunSpriteQueriesv_40
	mov [esp], eax
	call _Z18R_ErrorDescriptionl
	mov [esp+0xc], ebx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_occlusion_query_
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	xor eax, eax
	jmp _Z24RB_AllocSunSpriteQueriesv_50
_Z24RB_AllocSunSpriteQueriesv_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Initialized global or static variables of rb_sky:
SECTION .data


;Initialized constant data of rb_sky:
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


;Zero initialized global or static variables of rb_sky:
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
sunFlareArray: resb 0x100


;All cstrings:
SECTION .rdata
_cstring_occlusion_query_:		db "Occlusion query creation failed: %s (0x%08x)",0ah,0



;All constant floats and doubles:
SECTION .rdata
_float__0_00050000:		dd 0xba03126f	; -0.0005
_float_16_00000000:		dd 0x41800000	; 16
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_00131109:		dd 0x3aabd8fb	; 0.00131109
_float_0_99000001:		dd 0x3f7d70a4	; 0.99
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_262144_00000000:		dd 0x48800000	; 262144
_float_0_00390625:		dd 0x3b800000	; 0.00390625
_float_4294967296_00000000:		dd 0x4f800000	; 4.29497e+09
_float_255_00000000:		dd 0x437f0000	; 255
_float_480_00000000:		dd 0x43f00000	; 480
_float_640_00000000:		dd 0x44200000	; 640

