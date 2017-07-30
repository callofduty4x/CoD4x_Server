;Imports of cg_drawtools:
	extern sinf
	extern cosf
	extern CL_AddDebugLine
	extern CL_AddDebugStar
	extern ScrPlace_ApplyRect
	extern R_AddCmdDrawQuadPic
	extern Com_sprintf
	extern Cvar_GetUnpackedColorByName
	extern R_TextHeight
	extern CL_DrawText
	extern R_TextWidth
	extern colorWhite
	extern UI_GetFontHandle
	extern UI_DrawText
	extern CL_GetConfigString
	extern Com_Parse
	extern Material_RegisterHandle
	extern cgArray
	extern atof
	extern cgMedia
	extern CL_AddDebugStarWithText

;Exports of cg_drawtools:
	global _ZZ12CG_DrawVLinePK15ScreenPlacementffffiiPKfP8MaterialE4sign
	global _ZZ12CG_FadeColoriiiiE5color
	global _ZZ25CG_DrawRotatedPicPhysicalPK15ScreenPlacementfffffPKfP8MaterialE4sign
	global _ZZ11CG_DebugBoxPKfS0_S0_fS0_iiE10iEdgePairs
	global CG_DebugBox
	global CG_DebugLine
	global CG_DebugStar
	global CG_DrawVLine
	global CG_FadeAlpha
	global CG_FadeColor
	global CG_TeamColor
	global CG_DrawDevString
	global CG_DrawStringExt
	global CG_DrawRotatedPic
	global CG_MiniMapChanged
	global CG_DrawBigDevString
	global CG_DebugStarWithText
	global CG_RelativeTeamColor
	global CG_DrawRotatedQuadPic
	global CG_NorthDirectionChanged
	global CG_DrawRotatedPicPhysical
	global CG_DrawSmallDevStringColor


SECTION .text


;CG_DebugBox(float const*, float const*, float const*, float, float const*, int, int)
CG_DebugBox:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	cvtss2sd xmm0, [ebp+0x14]
	mulsd xmm0, [_double_0_01745329]
	cvtsd2ss xmm0, xmm0
	movss [ebp-0x7c], xmm0
	movss [esp], xmm0
	call sinf
	fstp dword [ebp-0x80]
	movss xmm0, dword [ebp-0x7c]
	movss [esp], xmm0
	call cosf
	fstp dword [ebp-0x8c]
	movss xmm4, dword [ebp-0x8c]
	xor esi, esi
	lea eax, [ebp-0x78]
	mov [ebp-0x90], eax
	mov ebx, eax
	mov dword [ebp-0x84], 0x0
CG_DebugBox_30:
	lea edx, [ebp-0x78]
	add edx, [ebp-0x84]
	xor ecx, ecx
CG_DebugBox_20:
	mov eax, 0x1
	shl eax, cl
	test esi, eax
	jz CG_DebugBox_10
	mov edi, [ebp+0x10]
	mov eax, [edi+ecx*4]
CG_DebugBox_50:
	mov [edx], eax
	add ecx, 0x1
	add edx, 0x4
	cmp ecx, 0x3
	jnz CG_DebugBox_20
	mov eax, [ebp-0x90]
	movss xmm0, dword [eax]
	movss xmm3, dword [eax+0x4]
	movaps xmm2, xmm4
	mulss xmm2, xmm0
	movss xmm1, dword [ebp-0x80]
	mulss xmm1, xmm3
	subss xmm2, xmm1
	mulss xmm0, [ebp-0x80]
	mulss xmm3, xmm4
	addss xmm0, xmm3
	mov edi, [ebp+0x8]
	addss xmm2, [edi]
	movss [ebx], xmm2
	addss xmm0, [edi+0x4]
	movss [ebx+0x4], xmm0
	movss xmm0, dword [ebx+0x8]
	addss xmm0, [edi+0x8]
	movss [ebx+0x8], xmm0
	add esi, 0x1
	add dword [ebp-0x84], 0xc
	add ebx, 0xc
	add eax, 0xc
	mov [ebp-0x90], eax
	cmp esi, 0x8
	jnz CG_DebugBox_30
	mov ebx, _ZZ11CG_DebugBoxPKfS0_S0_fS0_iiE10iEdgePairs+0x4
	mov esi, _ZZ11CG_DebugBoxPKfS0_S0_fS0_iiE10iEdgePairs+0x64
CG_DebugBox_40:
	mov dword [esp+0x14], 0x0
	mov eax, [ebp+0x20]
	mov [esp+0x10], eax
	mov edi, [ebp+0x1c]
	mov [esp+0xc], edi
	mov eax, [ebp+0x18]
	mov [esp+0x8], eax
	mov eax, [ebx]
	lea eax, [eax+eax*2]
	lea eax, [ebp+eax*4-0x78]
	mov [esp+0x4], eax
	mov eax, [ebx-0x4]
	lea eax, [eax+eax*2]
	lea eax, [ebp+eax*4-0x78]
	mov [esp], eax
	call CL_AddDebugLine
	add ebx, 0x8
	cmp esi, ebx
	jnz CG_DebugBox_40
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_DebugBox_10:
	mov edi, [ebp+0xc]
	mov eax, [edi+ecx*4]
	jmp CG_DebugBox_50
	add [eax], al


;CG_DebugLine(float const*, float const*, float const*, int, int)
CG_DebugLine:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov dword [esp+0x14], 0x0
	mov eax, [ebp+0x18]
	mov [esp+0x10], eax
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_AddDebugLine
	leave
	ret
	nop


;CG_DebugStar(float const*, float const*, int)
CG_DebugStar:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0xc], 0x0
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_AddDebugStar
	leave
	ret
	nop


;CG_DrawVLine(ScreenPlacement const*, float, float, float, float, int, int, float const*, Material*)
CG_DrawVLine:
	push ebp
	mov ebp, esp
	sub esp, 0x48
	mov eax, [ebp+0x20]
	mov [esp+0x18], eax
	mov eax, [ebp+0x1c]
	mov [esp+0x14], eax
	lea eax, [ebp+0x18]
	mov [esp+0x10], eax
	lea eax, [ebp+0x14]
	mov [esp+0xc], eax
	lea eax, [ebp+0x10]
	mov [esp+0x8], eax
	lea eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call ScrPlace_ApplyRect
	movss xmm0, dword [_float_0_50000000]
	movss xmm4, dword [ebp+0x14]
	mulss xmm4, xmm0
	movaps xmm1, xmm0
	mulss xmm1, [ebp+0x18]
	movss xmm3, dword [ebp+0xc]
	movaps xmm2, xmm1
	addss xmm2, [ebp+0x10]
	xor ecx, ecx
	mov edx, _ZZ12CG_DrawVLinePK15ScreenPlacementffffiiPKfP8MaterialE4sign
	xor eax, eax
CG_DrawVLine_10:
	movaps xmm0, xmm4
	mulss xmm0, [edx]
	addss xmm0, xmm3
	movss [eax+ebp-0x28], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [edx+0x4]
	addss xmm0, xmm2
	movss [eax+ebp-0x24], xmm0
	add ecx, 0x1
	add eax, 0x8
	add edx, 0x8
	cmp ecx, 0x4
	jnz CG_DrawVLine_10
	mov eax, [ebp+0x28]
	mov [esp+0x8], eax
	mov eax, [ebp+0x24]
	mov [esp+0x4], eax
	lea eax, [ebp-0x28]
	mov [esp], eax
	call R_AddCmdDrawQuadPic
	leave
	ret
	add [eax], al


;CG_FadeAlpha(int, int, int, int)
CG_FadeAlpha:
	push ebp
	mov ebp, esp
	sub esp, 0x4
	mov eax, [ebp+0x8]
	mov edx, [ebp+0x14]
	sub eax, [ebp+0xc]
	test edx, edx
	jle CG_FadeAlpha_10
	mov ecx, [ebp+0x10]
	sub ecx, eax
	cmp edx, ecx
	jle CG_FadeAlpha_10
	cvtsi2ss xmm1, ecx
	cvtsi2ss xmm0, edx
	divss xmm1, xmm0
	movss [ebp-0x4], xmm1
	fld dword [ebp-0x4]
	leave
	ret
CG_FadeAlpha_10:
	movss xmm1, dword [_float_1_00000000]
	movss [ebp-0x4], xmm1
	fld dword [ebp-0x4]
	leave
	ret
	add [eax], al


;CG_FadeColor(int, int, int, int)
CG_FadeColor:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	test eax, eax
	jnz CG_FadeColor_10
CG_FadeColor_20:
	xor eax, eax
	pop ebp
	ret
CG_FadeColor_10:
	mov edx, [ebp+0x8]
	sub edx, eax
	mov eax, edx
	cmp edx, [ebp+0x10]
	jge CG_FadeColor_20
	mov edx, [ebp+0x14]
	test edx, edx
	jle CG_FadeColor_30
	mov edx, [ebp+0x10]
	sub edx, eax
	cmp [ebp+0x14], edx
	jg CG_FadeColor_40
CG_FadeColor_30:
	movss xmm1, dword [_float_1_00000000]
CG_FadeColor_50:
	movss [_ZZ12CG_FadeColoriiiiE5color+0xc], xmm1
	mov dword [_ZZ12CG_FadeColoriiiiE5color+0x8], 0x3f800000
	mov dword [_ZZ12CG_FadeColoriiiiE5color+0x4], 0x3f800000
	mov dword [_ZZ12CG_FadeColoriiiiE5color], 0x3f800000
	mov eax, _ZZ12CG_FadeColoriiiiE5color
	pop ebp
	ret
CG_FadeColor_40:
	cvtsi2ss xmm1, edx
	cvtsi2ss xmm0, dword [ebp+0x14]
	divss xmm1, xmm0
	jmp CG_FadeColor_50
	nop


;CG_TeamColor(int, char const*, float*)
CG_TeamColor:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	mov eax, [ebp+0x8]
	cmp eax, 0x1
	jz CG_TeamColor_10
	jle CG_TeamColor_20
	cmp eax, 0x2
	jz CG_TeamColor_30
	cmp eax, 0x3
	jz CG_TeamColor_40
CG_TeamColor_60:
	add esp, 0x34
	pop ebx
	pop ebp
	ret
CG_TeamColor_10:
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_s_axis
	mov dword [esp+0x4], 0x20
	lea ebx, [ebp-0x28]
	mov [esp], ebx
	call Com_sprintf
CG_TeamColor_50:
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Cvar_GetUnpackedColorByName
	add esp, 0x34
	pop ebx
	pop ebp
	ret
CG_TeamColor_30:
	mov edx, [ebp+0xc]
	mov [esp+0xc], edx
	mov dword [esp+0x8], _cstring_s_allies
	mov dword [esp+0x4], 0x20
	lea ebx, [ebp-0x28]
	mov [esp], ebx
	call Com_sprintf
	jmp CG_TeamColor_50
CG_TeamColor_20:
	test eax, eax
	jnz CG_TeamColor_60
	mov edx, [ebp+0xc]
	mov [esp+0xc], edx
	mov dword [esp+0x8], _cstring_s_free
	mov dword [esp+0x4], 0x20
	lea ebx, [ebp-0x28]
	mov [esp], ebx
	call Com_sprintf
	jmp CG_TeamColor_50
CG_TeamColor_40:
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_s_spectator
	mov dword [esp+0x4], 0x20
	lea ebx, [ebp-0x28]
	mov [esp], ebx
	call Com_sprintf
	jmp CG_TeamColor_50
	nop


;CG_DrawDevString(ScreenPlacement const*, float, float, float, float, char const*, float const*, int, Font_s*)
CG_DrawDevString:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edi, [ebp+0x24]
	mov esi, [ebp+0x28]
	mov eax, edi
	and eax, 0x3
	cmp eax, 0x2
	jz CG_DrawDevString_10
	cmp eax, 0x3
	jz CG_DrawDevString_20
CG_DrawDevString_60:
	mov [esp], esi
	call R_TextHeight
	mov ebx, eax
	mov eax, edi
	and eax, 0xc
	cmp eax, 0x4
	jz CG_DrawDevString_30
	cmp eax, 0xc
	jz CG_DrawDevString_40
CG_DrawDevString_50:
	mov dword [esp+0x2c], 0x0
	mov eax, [ebp+0x20]
	mov [esp+0x28], eax
	movss xmm0, dword [ebp+0x18]
	movss [esp+0x24], xmm0
	movss xmm1, dword [ebp+0x14]
	movss [esp+0x20], xmm1
	mov dword [esp+0x1c], 0x1
	mov dword [esp+0x18], 0x1
	movss xmm0, dword [ebp+0x10]
	movss [esp+0x14], xmm0
	movss xmm1, dword [ebp+0xc]
	movss [esp+0x10], xmm1
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x7fffffff
	mov eax, [ebp+0x1c]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_DrawText
	mov eax, ebx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_DrawDevString_40:
	cvtsi2ss xmm0, ebx
	mulss xmm0, [ebp+0x18]
	mulss xmm0, [_float_0_50000000]
	addss xmm0, [ebp+0x10]
	movss [ebp+0x10], xmm0
	jmp CG_DrawDevString_50
CG_DrawDevString_30:
	cvtsi2ss xmm0, ebx
	mulss xmm0, [ebp+0x18]
	addss xmm0, [ebp+0x10]
	movss [ebp+0x10], xmm0
	jmp CG_DrawDevString_50
CG_DrawDevString_10:
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x1c]
	mov [esp], eax
	call R_TextWidth
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp+0x14]
	movss xmm1, dword [ebp+0xc]
	subss xmm1, xmm0
	movss [ebp+0xc], xmm1
	jmp CG_DrawDevString_60
CG_DrawDevString_20:
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x1c]
	mov [esp], eax
	call R_TextWidth
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp+0x14]
	mulss xmm0, [_float__0_50000000]
	addss xmm0, [ebp+0xc]
	movss [ebp+0xc], xmm0
	jmp CG_DrawDevString_60
	add [eax], al


;CG_DrawStringExt(ScreenPlacement const*, float, float, char const*, float const*, int, int, float, int)
CG_DrawStringExt:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x50
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0x18]
	movss xmm0, dword [ebp+0x24]
	movaps xmm1, xmm0
	mulss xmm1, [_float_0_80000001]
	addss xmm1, [ebp+0x10]
	movss [ebp-0xc], xmm1
	divss xmm0, dword [_float_48_00000000]
	test ebx, ebx
	cmovz ebx, colorWhite
	movss [esp+0x8], xmm0
	mov dword [esp+0x4], 0x5
	mov [esp], esi
	movss [ebp-0x28], xmm0
	call UI_GetFontHandle
	cmp dword [ebp+0x20], 0x1
	sbb edx, edx
	not edx
	and edx, 0x3
	mov [esp+0x28], edx
	mov [esp+0x24], ebx
	movss xmm0, dword [ebp-0x28]
	movss [esp+0x20], xmm0
	mov dword [esp+0x1c], 0x1
	mov dword [esp+0x18], 0x1
	movss xmm0, dword [ebp-0xc]
	movss [esp+0x14], xmm0
	mov edx, [ebp+0xc]
	mov [esp+0x10], edx
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x7fffffff
	mov eax, [ebp+0x14]
	mov [esp+0x4], eax
	mov [esp], esi
	call UI_DrawText
	add esp, 0x50
	pop ebx
	pop esi
	pop ebp
	ret


;CG_DrawRotatedPic(ScreenPlacement const*, float, float, float, float, int, int, float, float const*, Material*)
CG_DrawRotatedPic:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x8]
	mov eax, [ebp+0x20]
	mov [esp+0x18], eax
	mov eax, [ebp+0x1c]
	mov [esp+0x14], eax
	lea eax, [ebp+0x18]
	mov [esp+0x10], eax
	lea eax, [ebp+0x14]
	mov [esp+0xc], eax
	lea eax, [ebp+0x10]
	mov [esp+0x8], eax
	lea eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call ScrPlace_ApplyRect
	mov eax, [ebp+0x2c]
	mov [esp+0x1c], eax
	mov eax, [ebp+0x28]
	mov [esp+0x18], eax
	mov eax, [ebp+0x24]
	mov [esp+0x14], eax
	mov eax, [ebp+0x18]
	mov [esp+0x10], eax
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call CG_DrawRotatedPicPhysical
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;CG_MiniMapChanged(int)
CG_MiniMapChanged:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x40
	mov dword [esp+0x4], 0x337
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_GetConfigString
	mov [ebp-0xc], eax
	lea ebx, [ebp-0xc]
	mov [esp], ebx
	call Com_Parse
	mov dword [esp+0x4], 0x7
	mov [esp], eax
	call Material_RegisterHandle
	mov esi, cgArray
	mov [esi+0x504a0], eax
	mov [esp], ebx
	call Com_Parse
	mov [esp], eax
	call atof
	fstp qword [ebp-0x38]
	cvtsd2ss xmm0, [ebp-0x38]
	movss [esi+0x504a4], xmm0
	mov [esp], ebx
	call Com_Parse
	mov [esp], eax
	call atof
	fstp qword [ebp-0x30]
	cvtsd2ss xmm0, [ebp-0x30]
	movss [esi+0x504a8], xmm0
	mov [esp], ebx
	call Com_Parse
	mov [esp], eax
	call atof
	fstp qword [ebp-0x28]
	mov [esp], ebx
	call Com_Parse
	mov [esp], eax
	call atof
	fstp qword [ebp-0x20]
	movss xmm5, dword [esi+0x5049c]
	movss xmm4, dword [esi+0x50498]
	xorps xmm4, [_data16_80000000]
	cvtsd2ss xmm1, [ebp-0x28]
	subss xmm1, [esi+0x504a4]
	cvtsd2ss xmm3, [ebp-0x20]
	subss xmm3, [esi+0x504a8]
	movaps xmm0, xmm5
	mulss xmm0, xmm1
	movaps xmm2, xmm4
	mulss xmm2, xmm3
	addss xmm0, xmm2
	movss [esi+0x504ac], xmm0
	mulss xmm1, xmm4
	mulss xmm5, xmm3
	subss xmm1, xmm5
	movss [esi+0x504b0], xmm1
	pxor xmm0, xmm0
	ucomiss xmm0, [esi+0x504ac]
	jnz CG_MiniMapChanged_10
	jp CG_MiniMapChanged_10
	mov dword [esi+0x504ac], 0x447a0000
CG_MiniMapChanged_10:
	mov eax, cgArray
	ucomiss xmm0, [eax+0x504b0]
	jnz CG_MiniMapChanged_20
	jp CG_MiniMapChanged_20
	mov dword [eax+0x504b0], 0x447a0000
CG_MiniMapChanged_20:
	add esp, 0x40
	pop ebx
	pop esi
	pop ebp
	ret


;CG_DrawBigDevString(ScreenPlacement const*, float, float, char const*, float, int)
CG_DrawBigDevString:
	push ebp
	mov ebp, esp
	sub esp, 0x48
	mov edx, 0x3f800000
	mov [ebp-0x18], edx
	mov [ebp-0x14], edx
	mov [ebp-0x10], edx
	mov eax, [ebp+0x18]
	mov [ebp-0xc], eax
	mov eax, cgMedia
	mov eax, [eax+0x260]
	mov [esp+0x20], eax
	mov eax, [ebp+0x1c]
	mov [esp+0x1c], eax
	lea eax, [ebp-0x18]
	mov [esp+0x18], eax
	mov eax, [ebp+0x14]
	mov [esp+0x14], eax
	mov [esp+0x10], edx
	mov [esp+0xc], edx
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_DrawDevString
	leave
	ret
	nop


;CG_DebugStarWithText(float const*, float const*, float const*, char const*, float, int)
CG_DebugStarWithText:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov dword [esp+0x18], 0x0
	mov eax, [ebp+0x1c]
	mov [esp+0x14], eax
	mov eax, [ebp+0x18]
	mov [esp+0x10], eax
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_AddDebugStarWithText
	leave
	ret


;CG_RelativeTeamColor(int, char const*, float*, int)
CG_RelativeTeamColor:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov esi, [ebp+0x8]
	mov ecx, cgArray
	mov ebx, [ecx]
	lea eax, [ebx+ebx*8]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	lea eax, [ebx+eax*2]
	lea edi, [ecx+eax*4+0xe9f34]
	mov eax, [ebp+0x10]
	add eax, 0xc
	mov [ebp-0x40], eax
	mov eax, [ebp+0x10]
	movss xmm0, dword [eax+0xc]
	movss [ebp-0x3c], xmm0
	lea eax, [esi+esi*8]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	lea eax, [esi+eax*2]
	mov eax, [ecx+eax*4+0xe9f50]
	cmp eax, 0x3
	jz CG_RelativeTeamColor_10
	cmp ebx, esi
	jz CG_RelativeTeamColor_20
	test eax, eax
	jz CG_RelativeTeamColor_30
	cmp eax, [edi+0x1c]
	jz CG_RelativeTeamColor_20
CG_RelativeTeamColor_30:
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_s_enemyteam
	mov dword [esp+0x4], 0x20
	lea ebx, [ebp-0x38]
	mov [esp], ebx
	call Com_sprintf
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Cvar_GetUnpackedColorByName
	movss xmm0, dword [ebp-0x3c]
	mov eax, [ebp-0x40]
	movss [eax], xmm0
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_RelativeTeamColor_20:
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_s_myteam
	mov dword [esp+0x4], 0x20
	lea ebx, [ebp-0x38]
	mov [esp], ebx
	call Com_sprintf
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Cvar_GetUnpackedColorByName
	movss xmm0, dword [ebp-0x3c]
	mov eax, [ebp-0x40]
	movss [eax], xmm0
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_RelativeTeamColor_10:
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_s_spectator
	mov dword [esp+0x4], 0x20
	lea ebx, [ebp-0x38]
	mov [esp], ebx
	call Com_sprintf
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Cvar_GetUnpackedColorByName
	movss xmm0, dword [ebp-0x3c]
	mov eax, [ebp-0x40]
	movss [eax], xmm0
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CG_DrawRotatedQuadPic(ScreenPlacement const*, float, float, float const (*) [2], float, float const*, Material*)
CG_DrawRotatedQuadPic:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x50
	mov esi, [ebp+0x8]
	cvtss2sd xmm0, [ebp+0x18]
	mulsd xmm0, [_double_0_01745329]
	cvtsd2ss xmm0, xmm0
	movss [ebp-0x2c], xmm0
	movss [esp], xmm0
	call sinf
	fstp dword [ebp-0x30]
	movss xmm0, dword [ebp-0x2c]
	movss [esp], xmm0
	call cosf
	fstp dword [ebp-0x3c]
	movss xmm3, dword [ebp-0x3c]
	mov eax, [ebp+0x14]
	mov ecx, 0x1
	movss xmm5, dword [esi+0x10]
	lea ebx, [ebp-0x28]
	movss xmm2, dword [esi+0x14]
	movss xmm7, dword [ebp+0xc]
	mulss xmm7, xmm5
	movss xmm6, dword [ebp+0x10]
	mulss xmm6, xmm2
	mov edx, 0x8
	movss xmm4, dword [esi]
CG_DrawRotatedQuadPic_10:
	movaps xmm0, xmm5
	mulss xmm0, [eax]
	mulss xmm0, xmm3
	addss xmm0, xmm7
	movss xmm1, dword [eax+0x4]
	mulss xmm1, xmm2
	mulss xmm1, [ebp-0x30]
	subss xmm0, xmm1
	mulss xmm0, xmm4
	movss [edx+ebx-0x8], xmm0
	movss xmm0, dword [eax]
	mulss xmm0, [esi+0x10]
	mulss xmm0, [ebp-0x30]
	addss xmm0, xmm6
	movaps xmm1, xmm2
	mulss xmm1, [eax+0x4]
	mulss xmm1, xmm3
	addss xmm0, xmm1
	mulss xmm0, [esi+0x4]
	movss [edx+ebx-0x4], xmm0
	add ecx, 0x1
	add edx, 0x8
	add eax, 0x8
	cmp ecx, 0x5
	jnz CG_DrawRotatedQuadPic_10
	mov eax, [ebp+0x20]
	mov [esp+0x8], eax
	mov eax, [ebp+0x1c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call R_AddCmdDrawQuadPic
	add esp, 0x50
	pop ebx
	pop esi
	pop ebp
	ret


;CG_NorthDirectionChanged(int)
CG_NorthDirectionChanged:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov esi, [ebp+0x8]
	mov dword [esp+0x4], 0x336
	mov [esp], esi
	call CL_GetConfigString
	mov [esp], eax
	call atof
	fstp qword [ebp-0x18]
	cvtsd2ss xmm0, [ebp-0x18]
	mov ebx, cgArray
	movss [ebx+0x50494], xmm0
	cvtss2sd xmm0, xmm0
	mulsd xmm0, [_double_0_01745329]
	cvtsd2ss xmm0, xmm0
	movss [ebp-0xc], xmm0
	movss [esp], xmm0
	call sinf
	fstp dword [ebx+0x5049c]
	movss xmm0, dword [ebp-0xc]
	movss [esp], xmm0
	call cosf
	fstp dword [ebx+0x50498]
	mov [ebp+0x8], esi
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	jmp CG_MiniMapChanged
	nop


;CG_DrawRotatedPicPhysical(ScreenPlacement const*, float, float, float, float, float, float const*, Material*)
CG_DrawRotatedPicPhysical:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x64
	mov ebx, [ebp+0x8]
	cvtss2sd xmm0, [ebp+0x1c]
	mulsd xmm0, [_double_0_01745329]
	cvtsd2ss xmm0, xmm0
	movss [ebp-0x34], xmm0
	movss [esp], xmm0
	call sinf
	fstp dword [ebp-0x38]
	movss xmm0, dword [ebp-0x34]
	movss [esp], xmm0
	call cosf
	fstp dword [ebp-0x4c]
	movss xmm4, dword [ebp-0x4c]
	movss xmm3, dword [ebx+0x10]
	movss xmm0, dword [_float_0_50000000]
	movss xmm1, dword [ebp+0x14]
	mulss xmm1, xmm0
	mulss xmm1, xmm3
	movss xmm2, dword [ebx+0x14]
	mulss xmm0, [ebp+0x18]
	mulss xmm0, xmm2
	movaps xmm7, xmm3
	mulss xmm7, [ebp+0xc]
	addss xmm7, xmm1
	movaps xmm6, xmm2
	mulss xmm6, [ebp+0x10]
	addss xmm6, xmm0
	movaps xmm2, xmm4
	mulss xmm2, xmm1
	movss [ebp-0x2c], xmm2
	mulss xmm1, [ebp-0x38]
	movss [ebp-0x30], xmm1
	movss xmm5, dword [ebp-0x38]
	mulss xmm5, xmm0
	mulss xmm4, xmm0
	xor ecx, ecx
	mov edx, _ZZ25CG_DrawRotatedPicPhysicalPK15ScreenPlacementfffffPKfP8MaterialE4sign
	movss xmm0, dword [ebx]
	movss [ebp-0x3c], xmm0
	xor eax, eax
	movss xmm2, dword [ebx+0x4]
	movss [ebp-0x40], xmm2
CG_DrawRotatedPicPhysical_10:
	movss xmm1, dword [edx]
	movss xmm3, dword [edx+0x4]
	movss xmm0, dword [ebp-0x2c]
	mulss xmm0, xmm1
	addss xmm0, xmm7
	movaps xmm2, xmm5
	mulss xmm2, xmm3
	subss xmm0, xmm2
	mulss xmm0, [ebp-0x3c]
	movss [eax+ebp-0x28], xmm0
	mulss xmm1, [ebp-0x30]
	addss xmm1, xmm6
	mulss xmm3, xmm4
	addss xmm1, xmm3
	mulss xmm1, [ebp-0x40]
	movss [eax+ebp-0x24], xmm1
	add ecx, 0x1
	add eax, 0x8
	add edx, 0x8
	cmp ecx, 0x4
	jnz CG_DrawRotatedPicPhysical_10
	mov eax, [ebp+0x24]
	mov [esp+0x8], eax
	mov eax, [ebp+0x20]
	mov [esp+0x4], eax
	lea eax, [ebp-0x28]
	mov [esp], eax
	call R_AddCmdDrawQuadPic
	add esp, 0x64
	pop ebx
	pop ebp
	ret


;CG_DrawSmallDevStringColor(ScreenPlacement const*, float, float, char const*, float const*, int)
CG_DrawSmallDevStringColor:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	mov eax, cgMedia
	mov eax, [eax+0x25c]
	mov [esp+0x20], eax
	mov eax, [ebp+0x1c]
	mov [esp+0x1c], eax
	mov eax, [ebp+0x18]
	mov [esp+0x18], eax
	mov eax, [ebp+0x14]
	mov [esp+0x14], eax
	mov eax, 0x3f800000
	mov [esp+0x10], eax
	mov [esp+0xc], eax
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_DrawDevString
	leave
	ret


;Initialized global or static variables of cg_drawtools:
SECTION .data


;Initialized constant data of cg_drawtools:
SECTION .rdata
_ZZ12CG_DrawVLinePK15ScreenPlacementffffiiPKfP8MaterialE4sign: dd 0x3f800000, 0xbf800000, 0x3f800000, 0x3f800000, 0xbf800000, 0x3f800000, 0xbf800000, 0xbf800000, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0
_ZZ25CG_DrawRotatedPicPhysicalPK15ScreenPlacementfffffPKfP8MaterialE4sign: dd 0xbf800000, 0xbf800000, 0x3f800000, 0xbf800000, 0x3f800000, 0x3f800000, 0xbf800000, 0x3f800000
_ZZ11CG_DebugBoxPKfS0_S0_fS0_iiE10iEdgePairs: dd 0x0, 0x1, 0x0, 0x2, 0x0, 0x4, 0x1, 0x3, 0x1, 0x5, 0x2, 0x3, 0x2, 0x6, 0x3, 0x7, 0x4, 0x5, 0x4, 0x6, 0x5, 0x7, 0x6, 0x7, 0x45300000, 0x43300000, 0x0, 0x0, 0x0, 0x45300000, 0x0, 0x43300000, 0x53519, 0x53605, 0x535e5, 0x535c5, 0x535a8, 0x5358b, 0x5353f, 0x5356e, 0x53685, 0x53665, 0x53645, 0x53625, 0x53a0a, 0x5436e, 0x54029, 0x54051, 0x540a6, 0x540fb, 0x54117, 0x54151, 0x5418c, 0x541c7, 0x541c7, 0x54250, 0x5370c, 0x5432c, 0x542bd, 0x542f3, 0x54909, 0x54942, 0x549b4, 0x5370c, 0x5370c, 0x54a26, 0x5497b, 0x54a5f, 0x549ed, 0x54a98, 0x54399, 0x54399, 0x543da, 0x54413, 0x54435, 0x5446e, 0x5450e, 0x5448a, 0x544cf, 0x54550, 0x548b6, 0x546a3, 0x546e8, 0x54599, 0x5461e, 0x547d3, 0x54868, 0x54868, 0x54d4f, 0x54e31, 0x53aa0, 0x53a90, 0x53ee8, 0x53c8e, 0x53c7e, 0x53f8f, 0x54ad1, 0x5559e, 0x53a0a, 0x55300, 0x5533b, 0x55002, 0x550c7, 0x5518c, 0x55252, 0x54c6b, 0x5370c, 0x54ca0, 0x54cd9, 0x556cb, 0x5540a, 0x5545d, 0x55741, 0x5579c, 0x552a5, 0x55946, 0x557f7, 0x5586b, 0x554b8, 0x5552b, 0x558df, 0x559bf, 0x559bf, 0x55a16, 0x55a16, 0x55a42, 0x5644c, 0x563a8, 0x563dd, 0x55cdf, 0x563ee, 0x563ff, 0x55cc5, 0x55cdf, 0x56460, 0x0


;Zero initialized global or static variables of cg_drawtools:
SECTION .bss
_ZZ12CG_FadeColoriiiiE5color: resb 0x80


;All cstrings:
SECTION .rdata
_cstring_s_axis:		db "%s_Axis",0
_cstring_s_allies:		db "%s_Allies",0
_cstring_s_free:		db "%s_Free",0
_cstring_s_spectator:		db "%s_Spectator",0
_cstring_s_enemyteam:		db "%s_EnemyTeam",0
_cstring_s_myteam:		db "%s_MyTeam",0



;All constant floats and doubles:
SECTION .rdata
_double_0_01745329:		dq 0x3f91df46a2529d39	; 0.0174533
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_1_00000000:		dd 0x3f800000	; 1
_float__0_50000000:		dd 0xbf000000	; -0.5
_float_0_80000001:		dd 0x3f4ccccd	; 0.8
_float_48_00000000:		dd 0x42400000	; 48
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD

