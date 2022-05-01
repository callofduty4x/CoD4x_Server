;Imports of cg_drawtools:
	extern sinf
	extern cosf
	extern _Z15CL_AddDebugLinePKfS0_S0_iii
	extern _Z15CL_AddDebugStarPKfS0_ii
	extern _Z18ScrPlace_ApplyRectPK15ScreenPlacementPfS2_S2_S2_ii
	extern _Z19R_AddCmdDrawQuadPicPA2_KfPS_P8Material
	extern _Z11Com_sprintfPciPKcz
	extern _Z27Dvar_GetUnpackedColorByNamePKcPf
	extern _Z12R_TextHeightP6Font_s
	extern _Z11CL_DrawTextPK15ScreenPlacementPKciP6Font_sffiiffPKfi
	extern _Z11R_TextWidthPKciP6Font_s
	extern colorWhite
	extern _Z16UI_GetFontHandlePK15ScreenPlacementif
	extern _Z11UI_DrawTextPK15ScreenPlacementPKciP6Font_sffiifPKfi
	extern _Z18CL_GetConfigStringii
	extern _Z9Com_ParsePPKc
	extern _Z23Material_RegisterHandlePKci
	extern cgArray
	extern atof
	extern cgMedia
	extern _Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii

;Exports of cg_drawtools:
	global _ZZ12CG_DrawVLinePK15ScreenPlacementffffiiPKfP8MaterialE4sign
	global _ZZ12CG_FadeColoriiiiE5color
	global _ZZ25CG_DrawRotatedPicPhysicalPK15ScreenPlacementfffffPKfP8MaterialE4sign
	global _ZZ11CG_DebugBoxPKfS0_S0_fS0_iiE10iEdgePairs
	global _Z11CG_DebugBoxPKfS0_S0_fS0_ii
	global _Z12CG_DebugLinePKfS0_S0_ii
	global _Z12CG_DebugStarPKfS0_i
	global _Z12CG_DrawVLinePK15ScreenPlacementffffiiPKfP8Material
	global _Z12CG_FadeAlphaiiii
	global _Z12CG_FadeColoriiii
	global _Z12CG_TeamColoriPKcPf
	global _Z16CG_DrawDevStringPK15ScreenPlacementffffPKcPKfiP6Font_s
	global _Z16CG_DrawStringExtPK15ScreenPlacementffPKcPKfiifi
	global _Z17CG_DrawRotatedPicPK15ScreenPlacementffffiifPKfP8Material
	global _Z17CG_MiniMapChangedi
	global _Z19CG_DrawBigDevStringPK15ScreenPlacementffPKcfi
	global _Z20CG_DebugStarWithTextPKfS0_S0_PKcfi
	global _Z20CG_RelativeTeamColoriPKcPfi
	global _Z21CG_DrawRotatedQuadPicPK15ScreenPlacementffPA2_KffPS2_P8Material
	global _Z24CG_NorthDirectionChangedi
	global _Z25CG_DrawRotatedPicPhysicalPK15ScreenPlacementfffffPKfP8Material
	global _Z26CG_DrawSmallDevStringColorPK15ScreenPlacementffPKcPKfi


SECTION .text


;CG_DebugBox(float const*, float const*, float const*, float, float const*, int, int)
_Z11CG_DebugBoxPKfS0_S0_fS0_ii:
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
_Z11CG_DebugBoxPKfS0_S0_fS0_ii_30:
	lea edx, [ebp-0x78]
	add edx, [ebp-0x84]
	xor ecx, ecx
_Z11CG_DebugBoxPKfS0_S0_fS0_ii_20:
	mov eax, 0x1
	shl eax, cl
	test esi, eax
	jz _Z11CG_DebugBoxPKfS0_S0_fS0_ii_10
	mov edi, [ebp+0x10]
	mov eax, [edi+ecx*4]
_Z11CG_DebugBoxPKfS0_S0_fS0_ii_50:
	mov [edx], eax
	add ecx, 0x1
	add edx, 0x4
	cmp ecx, 0x3
	jnz _Z11CG_DebugBoxPKfS0_S0_fS0_ii_20
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
	jnz _Z11CG_DebugBoxPKfS0_S0_fS0_ii_30
	mov ebx, _ZZ11CG_DebugBoxPKfS0_S0_fS0_iiE10iEdgePairs+0x4
	mov esi, _ZZ11CG_DebugBoxPKfS0_S0_fS0_iiE10iEdgePairs+0x64
_Z11CG_DebugBoxPKfS0_S0_fS0_ii_40:
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
	call _Z15CL_AddDebugLinePKfS0_S0_iii
	add ebx, 0x8
	cmp esi, ebx
	jnz _Z11CG_DebugBoxPKfS0_S0_fS0_ii_40
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11CG_DebugBoxPKfS0_S0_fS0_ii_10:
	mov edi, [ebp+0xc]
	mov eax, [edi+ecx*4]
	jmp _Z11CG_DebugBoxPKfS0_S0_fS0_ii_50
	add [eax], al


;CG_DebugLine(float const*, float const*, float const*, int, int)
_Z12CG_DebugLinePKfS0_S0_ii:
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
	call _Z15CL_AddDebugLinePKfS0_S0_iii
	leave
	ret
	nop


;CG_DebugStar(float const*, float const*, int)
_Z12CG_DebugStarPKfS0_i:
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
	call _Z15CL_AddDebugStarPKfS0_ii
	leave
	ret
	nop


;CG_DrawVLine(ScreenPlacement const*, float, float, float, float, int, int, float const*, Material*)
_Z12CG_DrawVLinePK15ScreenPlacementffffiiPKfP8Material:
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
	call _Z18ScrPlace_ApplyRectPK15ScreenPlacementPfS2_S2_S2_ii
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
_Z12CG_DrawVLinePK15ScreenPlacementffffiiPKfP8Material_10:
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
	jnz _Z12CG_DrawVLinePK15ScreenPlacementffffiiPKfP8Material_10
	mov eax, [ebp+0x28]
	mov [esp+0x8], eax
	mov eax, [ebp+0x24]
	mov [esp+0x4], eax
	lea eax, [ebp-0x28]
	mov [esp], eax
	call _Z19R_AddCmdDrawQuadPicPA2_KfPS_P8Material
	leave
	ret
	add [eax], al


;CG_FadeAlpha(int, int, int, int)
_Z12CG_FadeAlphaiiii:
	push ebp
	mov ebp, esp
	sub esp, 0x4
	mov eax, [ebp+0x8]
	mov edx, [ebp+0x14]
	sub eax, [ebp+0xc]
	test edx, edx
	jle _Z12CG_FadeAlphaiiii_10
	mov ecx, [ebp+0x10]
	sub ecx, eax
	cmp edx, ecx
	jle _Z12CG_FadeAlphaiiii_10
	cvtsi2ss xmm1, ecx
	cvtsi2ss xmm0, edx
	divss xmm1, xmm0
	movss [ebp-0x4], xmm1
	fld dword [ebp-0x4]
	leave
	ret
_Z12CG_FadeAlphaiiii_10:
	movss xmm1, dword [_float_1_00000000]
	movss [ebp-0x4], xmm1
	fld dword [ebp-0x4]
	leave
	ret
	add [eax], al


;CG_FadeColor(int, int, int, int)
_Z12CG_FadeColoriiii:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	test eax, eax
	jnz _Z12CG_FadeColoriiii_10
_Z12CG_FadeColoriiii_20:
	xor eax, eax
	pop ebp
	ret
_Z12CG_FadeColoriiii_10:
	mov edx, [ebp+0x8]
	sub edx, eax
	mov eax, edx
	cmp edx, [ebp+0x10]
	jge _Z12CG_FadeColoriiii_20
	mov edx, [ebp+0x14]
	test edx, edx
	jle _Z12CG_FadeColoriiii_30
	mov edx, [ebp+0x10]
	sub edx, eax
	cmp [ebp+0x14], edx
	jg _Z12CG_FadeColoriiii_40
_Z12CG_FadeColoriiii_30:
	movss xmm1, dword [_float_1_00000000]
_Z12CG_FadeColoriiii_50:
	movss [_ZZ12CG_FadeColoriiiiE5color+0xc], xmm1
	mov dword [_ZZ12CG_FadeColoriiiiE5color+0x8], 0x3f800000
	mov dword [_ZZ12CG_FadeColoriiiiE5color+0x4], 0x3f800000
	mov dword [_ZZ12CG_FadeColoriiiiE5color], 0x3f800000
	mov eax, _ZZ12CG_FadeColoriiiiE5color
	pop ebp
	ret
_Z12CG_FadeColoriiii_40:
	cvtsi2ss xmm1, edx
	cvtsi2ss xmm0, dword [ebp+0x14]
	divss xmm1, xmm0
	jmp _Z12CG_FadeColoriiii_50
	nop


;CG_TeamColor(int, char const*, float*)
_Z12CG_TeamColoriPKcPf:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	mov eax, [ebp+0x8]
	cmp eax, 0x1
	jz _Z12CG_TeamColoriPKcPf_10
	jle _Z12CG_TeamColoriPKcPf_20
	cmp eax, 0x2
	jz _Z12CG_TeamColoriPKcPf_30
	cmp eax, 0x3
	jz _Z12CG_TeamColoriPKcPf_40
_Z12CG_TeamColoriPKcPf_60:
	add esp, 0x34
	pop ebx
	pop ebp
	ret
_Z12CG_TeamColoriPKcPf_10:
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_s_axis
	mov dword [esp+0x4], 0x20
	lea ebx, [ebp-0x28]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
_Z12CG_TeamColoriPKcPf_50:
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z27Dvar_GetUnpackedColorByNamePKcPf
	add esp, 0x34
	pop ebx
	pop ebp
	ret
_Z12CG_TeamColoriPKcPf_30:
	mov edx, [ebp+0xc]
	mov [esp+0xc], edx
	mov dword [esp+0x8], _cstring_s_allies
	mov dword [esp+0x4], 0x20
	lea ebx, [ebp-0x28]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	jmp _Z12CG_TeamColoriPKcPf_50
_Z12CG_TeamColoriPKcPf_20:
	test eax, eax
	jnz _Z12CG_TeamColoriPKcPf_60
	mov edx, [ebp+0xc]
	mov [esp+0xc], edx
	mov dword [esp+0x8], _cstring_s_free
	mov dword [esp+0x4], 0x20
	lea ebx, [ebp-0x28]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	jmp _Z12CG_TeamColoriPKcPf_50
_Z12CG_TeamColoriPKcPf_40:
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_s_spectator
	mov dword [esp+0x4], 0x20
	lea ebx, [ebp-0x28]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	jmp _Z12CG_TeamColoriPKcPf_50
	nop


;CG_DrawDevString(ScreenPlacement const*, float, float, float, float, char const*, float const*, int, Font_s*)
_Z16CG_DrawDevStringPK15ScreenPlacementffffPKcPKfiP6Font_s:
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
	jz _Z16CG_DrawDevStringPK15ScreenPlacementffffPKcPKfiP6Font_s_10
	cmp eax, 0x3
	jz _Z16CG_DrawDevStringPK15ScreenPlacementffffPKcPKfiP6Font_s_20
_Z16CG_DrawDevStringPK15ScreenPlacementffffPKcPKfiP6Font_s_60:
	mov [esp], esi
	call _Z12R_TextHeightP6Font_s
	mov ebx, eax
	mov eax, edi
	and eax, 0xc
	cmp eax, 0x4
	jz _Z16CG_DrawDevStringPK15ScreenPlacementffffPKcPKfiP6Font_s_30
	cmp eax, 0xc
	jz _Z16CG_DrawDevStringPK15ScreenPlacementffffPKcPKfiP6Font_s_40
_Z16CG_DrawDevStringPK15ScreenPlacementffffPKcPKfiP6Font_s_50:
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
	call _Z11CL_DrawTextPK15ScreenPlacementPKciP6Font_sffiiffPKfi
	mov eax, ebx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16CG_DrawDevStringPK15ScreenPlacementffffPKcPKfiP6Font_s_40:
	cvtsi2ss xmm0, ebx
	mulss xmm0, [ebp+0x18]
	mulss xmm0, [_float_0_50000000]
	addss xmm0, [ebp+0x10]
	movss [ebp+0x10], xmm0
	jmp _Z16CG_DrawDevStringPK15ScreenPlacementffffPKcPKfiP6Font_s_50
_Z16CG_DrawDevStringPK15ScreenPlacementffffPKcPKfiP6Font_s_30:
	cvtsi2ss xmm0, ebx
	mulss xmm0, [ebp+0x18]
	addss xmm0, [ebp+0x10]
	movss [ebp+0x10], xmm0
	jmp _Z16CG_DrawDevStringPK15ScreenPlacementffffPKcPKfiP6Font_s_50
_Z16CG_DrawDevStringPK15ScreenPlacementffffPKcPKfiP6Font_s_10:
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x1c]
	mov [esp], eax
	call _Z11R_TextWidthPKciP6Font_s
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp+0x14]
	movss xmm1, dword [ebp+0xc]
	subss xmm1, xmm0
	movss [ebp+0xc], xmm1
	jmp _Z16CG_DrawDevStringPK15ScreenPlacementffffPKcPKfiP6Font_s_60
_Z16CG_DrawDevStringPK15ScreenPlacementffffPKcPKfiP6Font_s_20:
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x1c]
	mov [esp], eax
	call _Z11R_TextWidthPKciP6Font_s
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp+0x14]
	mulss xmm0, [_float__0_50000000]
	addss xmm0, [ebp+0xc]
	movss [ebp+0xc], xmm0
	jmp _Z16CG_DrawDevStringPK15ScreenPlacementffffPKcPKfiP6Font_s_60
	add [eax], al


;CG_DrawStringExt(ScreenPlacement const*, float, float, char const*, float const*, int, int, float, int)
_Z16CG_DrawStringExtPK15ScreenPlacementffPKcPKfiifi:
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
	call _Z16UI_GetFontHandlePK15ScreenPlacementif
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
	call _Z11UI_DrawTextPK15ScreenPlacementPKciP6Font_sffiifPKfi
	add esp, 0x50
	pop ebx
	pop esi
	pop ebp
	ret


;CG_DrawRotatedPic(ScreenPlacement const*, float, float, float, float, int, int, float, float const*, Material*)
_Z17CG_DrawRotatedPicPK15ScreenPlacementffffiifPKfP8Material:
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
	call _Z18ScrPlace_ApplyRectPK15ScreenPlacementPfS2_S2_S2_ii
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
	call _Z25CG_DrawRotatedPicPhysicalPK15ScreenPlacementfffffPKfP8Material
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;CG_MiniMapChanged(int)
_Z17CG_MiniMapChangedi:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x40
	mov dword [esp+0x4], 0x337
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z18CL_GetConfigStringii
	mov [ebp-0xc], eax
	lea ebx, [ebp-0xc]
	mov [esp], ebx
	call _Z9Com_ParsePPKc
	mov dword [esp+0x4], 0x7
	mov [esp], eax
	call _Z23Material_RegisterHandlePKci
	mov esi, cgArray
	mov [esi+0x504a0], eax
	mov [esp], ebx
	call _Z9Com_ParsePPKc
	mov [esp], eax
	call atof
	fstp qword [ebp-0x38]
	cvtsd2ss xmm0, [ebp-0x38]
	movss [esi+0x504a4], xmm0
	mov [esp], ebx
	call _Z9Com_ParsePPKc
	mov [esp], eax
	call atof
	fstp qword [ebp-0x30]
	cvtsd2ss xmm0, [ebp-0x30]
	movss [esi+0x504a8], xmm0
	mov [esp], ebx
	call _Z9Com_ParsePPKc
	mov [esp], eax
	call atof
	fstp qword [ebp-0x28]
	mov [esp], ebx
	call _Z9Com_ParsePPKc
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
	jnz _Z17CG_MiniMapChangedi_10
	jp _Z17CG_MiniMapChangedi_10
	mov dword [esi+0x504ac], 0x447a0000
_Z17CG_MiniMapChangedi_10:
	mov eax, cgArray
	ucomiss xmm0, [eax+0x504b0]
	jnz _Z17CG_MiniMapChangedi_20
	jp _Z17CG_MiniMapChangedi_20
	mov dword [eax+0x504b0], 0x447a0000
_Z17CG_MiniMapChangedi_20:
	add esp, 0x40
	pop ebx
	pop esi
	pop ebp
	ret


;CG_DrawBigDevString(ScreenPlacement const*, float, float, char const*, float, int)
_Z19CG_DrawBigDevStringPK15ScreenPlacementffPKcfi:
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
	call _Z16CG_DrawDevStringPK15ScreenPlacementffffPKcPKfiP6Font_s
	leave
	ret
	nop


;CG_DebugStarWithText(float const*, float const*, float const*, char const*, float, int)
_Z20CG_DebugStarWithTextPKfS0_S0_PKcfi:
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
	call _Z23CL_AddDebugStarWithTextPKfS0_S0_PKcfii
	leave
	ret


;CG_RelativeTeamColor(int, char const*, float*, int)
_Z20CG_RelativeTeamColoriPKcPfi:
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
	jz _Z20CG_RelativeTeamColoriPKcPfi_10
	cmp ebx, esi
	jz _Z20CG_RelativeTeamColoriPKcPfi_20
	test eax, eax
	jz _Z20CG_RelativeTeamColoriPKcPfi_30
	cmp eax, [edi+0x1c]
	jz _Z20CG_RelativeTeamColoriPKcPfi_20
_Z20CG_RelativeTeamColoriPKcPfi_30:
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_s_enemyteam
	mov dword [esp+0x4], 0x20
	lea ebx, [ebp-0x38]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z27Dvar_GetUnpackedColorByNamePKcPf
	movss xmm0, dword [ebp-0x3c]
	mov eax, [ebp-0x40]
	movss [eax], xmm0
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20CG_RelativeTeamColoriPKcPfi_20:
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_s_myteam
	mov dword [esp+0x4], 0x20
	lea ebx, [ebp-0x38]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z27Dvar_GetUnpackedColorByNamePKcPf
	movss xmm0, dword [ebp-0x3c]
	mov eax, [ebp-0x40]
	movss [eax], xmm0
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20CG_RelativeTeamColoriPKcPfi_10:
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_s_spectator
	mov dword [esp+0x4], 0x20
	lea ebx, [ebp-0x38]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z27Dvar_GetUnpackedColorByNamePKcPf
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
_Z21CG_DrawRotatedQuadPicPK15ScreenPlacementffPA2_KffPS2_P8Material:
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
_Z21CG_DrawRotatedQuadPicPK15ScreenPlacementffPA2_KffPS2_P8Material_10:
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
	jnz _Z21CG_DrawRotatedQuadPicPK15ScreenPlacementffPA2_KffPS2_P8Material_10
	mov eax, [ebp+0x20]
	mov [esp+0x8], eax
	mov eax, [ebp+0x1c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z19R_AddCmdDrawQuadPicPA2_KfPS_P8Material
	add esp, 0x50
	pop ebx
	pop esi
	pop ebp
	ret


;CG_NorthDirectionChanged(int)
_Z24CG_NorthDirectionChangedi:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov esi, [ebp+0x8]
	mov dword [esp+0x4], 0x336
	mov [esp], esi
	call _Z18CL_GetConfigStringii
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
	jmp _Z17CG_MiniMapChangedi
	nop


;CG_DrawRotatedPicPhysical(ScreenPlacement const*, float, float, float, float, float, float const*, Material*)
_Z25CG_DrawRotatedPicPhysicalPK15ScreenPlacementfffffPKfP8Material:
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
_Z25CG_DrawRotatedPicPhysicalPK15ScreenPlacementfffffPKfP8Material_10:
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
	jnz _Z25CG_DrawRotatedPicPhysicalPK15ScreenPlacementfffffPKfP8Material_10
	mov eax, [ebp+0x24]
	mov [esp+0x8], eax
	mov eax, [ebp+0x20]
	mov [esp+0x4], eax
	lea eax, [ebp-0x28]
	mov [esp], eax
	call _Z19R_AddCmdDrawQuadPicPA2_KfPS_P8Material
	add esp, 0x64
	pop ebx
	pop ebp
	ret


;CG_DrawSmallDevStringColor(ScreenPlacement const*, float, float, char const*, float const*, int)
_Z26CG_DrawSmallDevStringColorPK15ScreenPlacementffPKcPKfi:
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
	call _Z16CG_DrawDevStringPK15ScreenPlacementffffPKcPKfiP6Font_s
	leave
	ret


;Initialized global or static variables of cg_drawtools:
SECTION .data


;Initialized constant data of cg_drawtools:
SECTION .rdata
_ZZ12CG_DrawVLinePK15ScreenPlacementffffiiPKfP8MaterialE4sign: dd 0x3f800000, 0xbf800000, 0x3f800000, 0x3f800000, 0xbf800000, 0x3f800000, 0xbf800000, 0xbf800000, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0
_ZZ25CG_DrawRotatedPicPhysicalPK15ScreenPlacementfffffPKfP8MaterialE4sign: dd 0xbf800000, 0xbf800000, 0x3f800000, 0xbf800000, 0x3f800000, 0x3f800000, 0xbf800000, 0x3f800000
_ZZ11CG_DebugBoxPKfS0_S0_fS0_iiE10iEdgePairs: dd 0x0, 0x1, 0x0, 0x2, 0x0, 0x4, 0x1, 0x3, 0x1, 0x5, 0x2, 0x3, 0x2, 0x6, 0x3, 0x7, 0x4, 0x5, 0x4, 0x6, 0x5, 0x7, 0x6, 0x7, 0x45300000, 0x43300000, 0x0, 0x0, 0x0, 0x45300000, 0x0, 0x43300000


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

