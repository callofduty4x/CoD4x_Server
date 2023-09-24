;Imports of ui_utils:
	extern _Z15Com_ParseOnLinePPKc
	extern atof
	extern memset
	extern tolower
	extern strcmp
	extern _Z23Hunk_AllocAlignInternalii
	extern strcpy
	extern _Z16IsExpressionTrueiPK11statement_s
	extern uiscript_debug
	extern _Z10Com_PrintfiPKcz
	extern _Z21Dvar_GetVariantStringPKc
	extern _Z12String_ParsePPKcPci
	extern _Z9I_stricmpPKcS0_
	extern _Z14Com_PrintErroriPKcz
	extern atoi

;Exports of ui_utils:
	global g_strHandle
	global _ZZ12String_AllocPKcE10staticNULL
	global _Z11Float_ParsePPKcPf
	global _Z11String_Initv
	global _Z12String_AllocPKc
	global _Z14Item_IsVisibleiP9itemDef_s
	global _Z16Item_GetMultiDefP9itemDef_s
	global _Z16Item_SetTextRectiP9itemDef_sPK9rectDef_s
	global _Z18Item_GetListBoxDefP9itemDef_s
	global _Z18Menu_SetCursorItemiP9menuDef_ti
	global _Z19Item_IsEditFieldDefP9itemDef_s
	global _Z19Menu_UpdatePositioniP9menuDef_t
	global _Z20Item_GetEditFieldDefP9itemDef_s
	global _Z21Window_SetStaticFlagsP11windowDef_ti
	global _Z22Item_EnableShowViaDvarPK9itemDef_si
	global _Z22Window_AddDynamicFlagsiP11windowDef_ti
	global _Z22Window_SetDynamicFlagsiP11windowDef_ti
	global _Z23Item_GetCursorPosOffsetiPK9itemDef_sPKci
	global _Z25ListBox_HasValidCursorPosiP9itemDef_s
	global _Z25Window_RemoveDynamicFlagsiP11windowDef_ti
	global _Z8UI_Allocii
	global _Z9Int_ParsePPKcPi


SECTION .text


;Float_Parse(char const**, float*)
_Z11Float_ParsePPKcPf:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z15Com_ParseOnLinePPKc
	test eax, eax
	jz _Z11Float_ParsePPKcPf_10
	cmp byte [eax], 0x0
	jnz _Z11Float_ParsePPKcPf_20
_Z11Float_ParsePPKcPf_10:
	xor eax, eax
	leave
	ret
_Z11Float_ParsePPKcPf_20:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x10]
	cvtsd2ss xmm0, [ebp-0x10]
	mov eax, [ebp+0xc]
	movss [eax], xmm0
	mov eax, 0x1
	leave
	ret


;String_Init()
_Z11String_Initv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x2000
	mov dword [esp+0x4], 0x0
	mov dword [esp], g_strHandle
	call memset
	leave
	ret


;String_Alloc(char const*)
_Z12String_AllocPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0x8]
	test esi, esi
	jz _Z12String_AllocPKc_10
	movzx eax, byte [esi]
	test al, al
	jz _Z12String_AllocPKc_20
	xor ebx, ebx
	mov edi, 0x77
_Z12String_AllocPKc_30:
	movsx eax, al
	mov [esp], eax
	call tolower
	imul eax, edi
	add ebx, eax
	movzx eax, byte [esi+edi-0x76]
	add edi, 0x1
	test al, al
	jnz _Z12String_AllocPKc_30
	and ebx, 0x7ff
	mov [ebp-0x1c], ebx
	mov edi, [ebx*4+g_strHandle]
	test edi, edi
	jz _Z12String_AllocPKc_40
_Z12String_AllocPKc_60:
	mov ebx, [edi+0x4]
	mov [esp+0x4], ebx
	mov [esp], esi
	call strcmp
	test eax, eax
	jz _Z12String_AllocPKc_50
	mov edi, [edi]
	test edi, edi
	jnz _Z12String_AllocPKc_60
_Z12String_AllocPKc_40:
	mov dword [esp+0x4], 0x1
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	not ecx
	mov [esp], ecx
	call _Z23Hunk_AllocAlignInternalii
	mov edi, eax
	mov [esp+0x4], esi
	mov [esp], eax
	call strcpy
	mov edx, [ebp-0x1c]
	mov ebx, [edx*4+g_strHandle]
	test ebx, ebx
	jz _Z12String_AllocPKc_70
	mov eax, [ebx]
	test eax, eax
	jnz _Z12String_AllocPKc_80
	jmp _Z12String_AllocPKc_70
_Z12String_AllocPKc_90:
	mov ebx, eax
	mov eax, edx
_Z12String_AllocPKc_80:
	mov edx, [eax]
	test edx, edx
	jnz _Z12String_AllocPKc_90
_Z12String_AllocPKc_70:
	mov dword [esp+0x4], 0x4
	mov dword [esp], 0x8
	call _Z23Hunk_AllocAlignInternalii
	mov dword [eax], 0x0
	mov [eax+0x4], edi
	test ebx, ebx
	jz _Z12String_AllocPKc_100
	mov [ebx], eax
	mov ebx, edi
_Z12String_AllocPKc_110:
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12String_AllocPKc_20:
	mov ebx, [_ZZ12String_AllocPKcE10staticNULL]
_Z12String_AllocPKc_50:
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12String_AllocPKc_10:
	xor ebx, ebx
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12String_AllocPKc_100:
	mov edx, [ebp-0x1c]
	mov [edx*4+g_strHandle], eax
	mov ebx, edi
	jmp _Z12String_AllocPKc_110


;Item_IsVisible(int, itemDef_s*)
_Z14Item_IsVisibleiP9itemDef_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x43c
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	test byte [ebx+esi*4+0x50], 0x4
	jz _Z14Item_IsVisibleiP9itemDef_s_10
	test byte [ebx+0x11c], 0xc
	jz _Z14Item_IsVisibleiP9itemDef_s_20
	mov eax, [ebx+0x118]
	test eax, eax
	jz _Z14Item_IsVisibleiP9itemDef_s_20
	cmp byte [eax], 0x0
	jz _Z14Item_IsVisibleiP9itemDef_s_20
	mov eax, [ebx+0x110]
	test eax, eax
	jz _Z14Item_IsVisibleiP9itemDef_s_20
	cmp byte [eax], 0x0
	jnz _Z14Item_IsVisibleiP9itemDef_s_30
_Z14Item_IsVisibleiP9itemDef_s_20:
	mov eax, [ebx+0x134]
	test eax, eax
	jnz _Z14Item_IsVisibleiP9itemDef_s_40
_Z14Item_IsVisibleiP9itemDef_s_50:
	mov eax, 0x1
	add esp, 0x43c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14Item_IsVisibleiP9itemDef_s_40:
	lea eax, [ebx+0x134]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z16IsExpressionTrueiPK11statement_s
	test al, al
	jnz _Z14Item_IsVisibleiP9itemDef_s_50
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z14Item_IsVisibleiP9itemDef_s_10
	mov eax, [ebx]
	test eax, eax
	mov edx, _cstring_unnamed
	cmovz eax, edx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_item_s_is_hidden
	mov dword [esp], 0xd
	call _Z10Com_PrintfiPKcz
	xor eax, eax
	add esp, 0x43c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14Item_IsVisibleiP9itemDef_s_30:
	mov [esp], eax
	call _Z21Dvar_GetVariantStringPKc
	mov [ebp-0x42c], eax
	mov eax, [ebx+0x118]
	mov [ebp-0x1c], eax
	lea edi, [ebp-0x41c]
_Z14Item_IsVisibleiP9itemDef_s_80:
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], edi
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call _Z12String_ParsePPKcPci
	test eax, eax
	jz _Z14Item_IsVisibleiP9itemDef_s_60
	cmp byte [ebp-0x41c], 0x3b
	jnz _Z14Item_IsVisibleiP9itemDef_s_70
	cmp byte [ebp-0x41b], 0x0
	jz _Z14Item_IsVisibleiP9itemDef_s_80
_Z14Item_IsVisibleiP9itemDef_s_70:
	mov [esp+0x4], edi
	mov eax, [ebp-0x42c]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z14Item_IsVisibleiP9itemDef_s_80
	mov eax, [ebx+0x11c]
	shr eax, 0x2
	and eax, 0x1
_Z14Item_IsVisibleiP9itemDef_s_90:
	test eax, eax
	jnz _Z14Item_IsVisibleiP9itemDef_s_20
_Z14Item_IsVisibleiP9itemDef_s_10:
	xor eax, eax
	add esp, 0x43c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14Item_IsVisibleiP9itemDef_s_60:
	mov eax, [ebx+0x11c]
	xor eax, 0x4
	shr eax, 0x2
	and eax, 0x1
	jmp _Z14Item_IsVisibleiP9itemDef_s_90
	nop
	add [eax], al


;Item_GetMultiDef(itemDef_s*)
_Z16Item_GetMultiDefP9itemDef_s:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x12c]
	pop ebp
	ret


;Item_SetTextRect(int, itemDef_s*, rectDef_s const*)
_Z16Item_SetTextRectiP9itemDef_sPK9rectDef_s:
	push ebp
	mov ebp, esp
	push ebx
	mov eax, [ebp+0x8]
	mov ebx, [ebp+0x10]
	lea eax, [eax+eax*2]
	lea eax, [eax*8+0x90]
	add eax, [ebp+0xc]
	lea ecx, [eax+0xc]
	mov edx, [ebx]
	mov [eax+0xc], edx
	mov eax, [ebx+0x4]
	mov [ecx+0x4], eax
	mov eax, [ebx+0x8]
	mov [ecx+0x8], eax
	mov eax, [ebx+0xc]
	mov [ecx+0xc], eax
	mov eax, [ebx+0x10]
	mov [ecx+0x10], eax
	mov eax, [ebx+0x14]
	mov [ecx+0x14], eax
	pop ebx
	pop ebp
	ret


;Item_GetListBoxDef(itemDef_s*)
_Z18Item_GetListBoxDefP9itemDef_s:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	cmp dword [eax+0xb8], 0x6
	jnz _Z18Item_GetListBoxDefP9itemDef_s_10
	mov eax, [eax+0x12c]
	leave
	ret
_Z18Item_GetListBoxDefP9itemDef_s_10:
	mov dword [esp+0x4], _cstring_menu_error_expec
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	xor eax, eax
	leave
	ret


;Menu_SetCursorItem(int, menuDef_t*, int)
_Z18Menu_SetCursorItemiP9menuDef_ti:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x10]
	mov edx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov [eax+edx*4+0xac], ecx
	pop ebp
	ret
	nop


;Item_IsEditFieldDef(itemDef_s*)
_Z19Item_IsEditFieldDefP9itemDef_s:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	cmp dword [eax+0xb8], 0x12
	ja _Z19Item_IsEditFieldDefP9itemDef_s_10
	mov ecx, [eax+0xb8]
	mov eax, 0x1
	shl eax, cl
	test eax, 0x74e11
	jnz _Z19Item_IsEditFieldDefP9itemDef_s_20
_Z19Item_IsEditFieldDefP9itemDef_s_10:
	xor eax, eax
	pop ebp
	ret
_Z19Item_IsEditFieldDefP9itemDef_s_20:
	mov eax, 0x1
	pop ebp
	ret


;Menu_UpdatePosition(int, menuDef_t*)
_Z19Menu_UpdatePositioniP9menuDef_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x34
	mov esi, [ebp+0xc]
	test esi, esi
	jz _Z19Menu_UpdatePositioniP9menuDef_t_10
	lea edi, [esi+0x4]
	movss xmm3, dword [esi+0x4]
	movss xmm2, dword [edi+0x4]
	mov eax, [esi+0x3c]
	test eax, eax
	jnz _Z19Menu_UpdatePositioniP9menuDef_t_20
	mov eax, [esi+0xa4]
	test eax, eax
	jle _Z19Menu_UpdatePositioniP9menuDef_t_10
_Z19Menu_UpdatePositioniP9menuDef_t_80:
	mov dword [ebp-0x38], 0x0
	mov edx, [ebp+0x8]
	lea eax, [edx+edx*2]
	lea ebx, [eax*8+0x90]
	jmp _Z19Menu_UpdatePositioniP9menuDef_t_30
_Z19Menu_UpdatePositioniP9menuDef_t_60:
	movaps xmm1, xmm3
	movaps xmm0, xmm2
_Z19Menu_UpdatePositioniP9menuDef_t_70:
	mov eax, [edx+0x1c]
	mov [edx+0x4], eax
	mov eax, [edx+0x20]
	mov [edx+0x8], eax
	mov eax, [edx+0x24]
	mov [edx+0xc], eax
	mov eax, [edx+0x28]
	mov [edx+0x10], eax
	mov eax, [edx+0x2c]
	mov [edx+0x14], eax
	mov eax, [edx+0x30]
	mov [edx+0x18], eax
	addss xmm1, [edx+0x4]
	movss [edx+0x4], xmm1
	addss xmm0, [edx+0x8]
	movss [edx+0x8], xmm0
	mov ecx, [edx+0x14]
	test ecx, ecx
	jnz _Z19Menu_UpdatePositioniP9menuDef_t_40
	test eax, eax
	jnz _Z19Menu_UpdatePositioniP9menuDef_t_40
	mov eax, [ebp-0x3c]
	mov [edx+0x14], eax
	mov ecx, [ebp-0x34]
	mov [edx+0x18], ecx
_Z19Menu_UpdatePositioniP9menuDef_t_40:
	mov ecx, [edx+ebx+0xc]
	mov [ebp-0x28], ecx
	mov eax, [edx+ebx+0x10]
	mov [ebp-0x24], eax
	mov eax, [edx+ebx+0x14]
	mov [ebp-0x20], eax
	mov eax, [edx+ebx+0x18]
	mov [ebp-0x1c], eax
	mov eax, [edx+ebx+0x1c]
	mov [ebp-0x18], eax
	mov eax, [edx+ebx+0x20]
	mov [ebp-0x14], eax
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	lea eax, [edx+ebx]
	lea edx, [eax+0xc]
	mov [eax+0xc], ecx
	mov eax, [ebp-0x24]
	mov [edx+0x4], eax
	mov eax, [ebp-0x20]
	mov [edx+0x8], eax
	mov eax, [ebp-0x1c]
	mov [edx+0xc], eax
	mov eax, [ebp-0x18]
	mov [edx+0x10], eax
	mov eax, [ebp-0x14]
	mov [edx+0x14], eax
_Z19Menu_UpdatePositioniP9menuDef_t_50:
	add dword [ebp-0x38], 0x1
	mov eax, [ebp-0x38]
	cmp eax, [esi+0xa4]
	jge _Z19Menu_UpdatePositioniP9menuDef_t_10
_Z19Menu_UpdatePositioniP9menuDef_t_30:
	mov ecx, [edi+0x14]
	mov [ebp-0x34], ecx
	mov eax, [edi+0x10]
	mov [ebp-0x3c], eax
	mov eax, [esi+0x118]
	mov ecx, [ebp-0x38]
	mov edx, [eax+ecx*4]
	test edx, edx
	jz _Z19Menu_UpdatePositioniP9menuDef_t_50
	mov eax, [edx+0x3c]
	test eax, eax
	jz _Z19Menu_UpdatePositioniP9menuDef_t_60
	movss xmm0, dword [edx+0x48]
	movaps xmm1, xmm3
	addss xmm1, xmm0
	addss xmm0, xmm2
	jmp _Z19Menu_UpdatePositioniP9menuDef_t_70
_Z19Menu_UpdatePositioniP9menuDef_t_10:
	add esp, 0x34
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19Menu_UpdatePositioniP9menuDef_t_20:
	movss xmm0, dword [esi+0x48]
	addss xmm3, xmm0
	addss xmm2, xmm0
	mov eax, [esi+0xa4]
	test eax, eax
	jle _Z19Menu_UpdatePositioniP9menuDef_t_10
	jmp _Z19Menu_UpdatePositioniP9menuDef_t_80


;Item_GetEditFieldDef(itemDef_s*)
_Z20Item_GetEditFieldDefP9itemDef_s:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0x8]
	cmp dword [edx+0xb8], 0x12
	ja _Z20Item_GetEditFieldDefP9itemDef_s_10
	mov ecx, [edx+0xb8]
	mov eax, 0x1
	shl eax, cl
	test eax, 0x74e11
	jz _Z20Item_GetEditFieldDefP9itemDef_s_10
	mov eax, [edx+0x12c]
	leave
	ret
_Z20Item_GetEditFieldDefP9itemDef_s_10:
	mov dword [esp+0x4], _cstring_menu_error_expec1
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	xor eax, eax
	leave
	ret


;Window_SetStaticFlags(windowDef_t*, int)
_Z21Window_SetStaticFlagsP11windowDef_ti:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov [eax+0x4c], edx
	pop ebp
	ret


;Item_EnableShowViaDvar(itemDef_s const*, int)
_Z22Item_EnableShowViaDvarPK9itemDef_si:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov edx, [ebp+0x8]
	mov eax, [edx+0x118]
	test eax, eax
	jz _Z22Item_EnableShowViaDvarPK9itemDef_si_10
	cmp byte [eax], 0x0
	jz _Z22Item_EnableShowViaDvarPK9itemDef_si_10
	mov eax, [edx+0x110]
	test eax, eax
	jz _Z22Item_EnableShowViaDvarPK9itemDef_si_10
	cmp byte [eax], 0x0
	jnz _Z22Item_EnableShowViaDvarPK9itemDef_si_20
_Z22Item_EnableShowViaDvarPK9itemDef_si_10:
	mov eax, 0x1
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22Item_EnableShowViaDvarPK9itemDef_si_20:
	mov [esp], eax
	call _Z21Dvar_GetVariantStringPKc
	mov esi, eax
	mov edx, [ebp+0x8]
	mov eax, [edx+0x118]
	mov [ebp-0x1c], eax
	lea ebx, [ebp-0x41c]
	lea edi, [ebp-0x1c]
_Z22Item_EnableShowViaDvarPK9itemDef_si_50:
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], ebx
	mov [esp], edi
	call _Z12String_ParsePPKcPci
	test eax, eax
	jz _Z22Item_EnableShowViaDvarPK9itemDef_si_30
	cmp byte [ebp-0x41c], 0x3b
	jnz _Z22Item_EnableShowViaDvarPK9itemDef_si_40
	cmp byte [ebp-0x41b], 0x0
	jz _Z22Item_EnableShowViaDvarPK9itemDef_si_50
_Z22Item_EnableShowViaDvarPK9itemDef_si_40:
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z22Item_EnableShowViaDvarPK9itemDef_si_50
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	test [eax+0x11c], edx
	setnz al
	movzx eax, al
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22Item_EnableShowViaDvarPK9itemDef_si_30:
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	test [eax+0x11c], edx
	setz al
	movzx eax, al
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Window_AddDynamicFlags(int, windowDef_t*, int)
_Z22Window_AddDynamicFlagsiP11windowDef_ti:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x10]
	or [edx+ecx*4+0x50], eax
	pop ebp
	ret


;Window_SetDynamicFlags(int, windowDef_t*, int)
_Z22Window_SetDynamicFlagsiP11windowDef_ti:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x10]
	mov edx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov [eax+edx*4+0x50], ecx
	pop ebp
	ret


;Item_GetCursorPosOffset(int, itemDef_s const*, char const*, int)
_Z23Item_GetCursorPosOffsetiPK9itemDef_sPKci:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x10]
	mov ebx, [ebp+0x14]
	mov edx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov eax, [eax+edx*4+0x128]
	test ebx, ebx
	jg _Z23Item_GetCursorPosOffsetiPK9itemDef_sPKci_10
	jmp _Z23Item_GetCursorPosOffsetiPK9itemDef_sPKci_20
_Z23Item_GetCursorPosOffsetiPK9itemDef_sPKci_40:
	cmp byte [edx], 0x0
	jz _Z23Item_GetCursorPosOffsetiPK9itemDef_sPKci_30
	test ebx, ebx
	jz _Z23Item_GetCursorPosOffsetiPK9itemDef_sPKci_30
	add eax, 0x1
	sub ebx, 0x1
_Z23Item_GetCursorPosOffsetiPK9itemDef_sPKci_10:
	mov edx, eax
	add edx, esi
	jz _Z23Item_GetCursorPosOffsetiPK9itemDef_sPKci_40
	cmp byte [edx], 0x5e
	jnz _Z23Item_GetCursorPosOffsetiPK9itemDef_sPKci_40
	movzx ecx, byte [edx+0x1]
	test cl, cl
	jz _Z23Item_GetCursorPosOffsetiPK9itemDef_sPKci_40
	cmp cl, 0x5e
	jz _Z23Item_GetCursorPosOffsetiPK9itemDef_sPKci_40
	cmp cl, 0x2f
	jle _Z23Item_GetCursorPosOffsetiPK9itemDef_sPKci_40
	cmp cl, 0x39
	jg _Z23Item_GetCursorPosOffsetiPK9itemDef_sPKci_40
	add eax, 0x2
	jmp _Z23Item_GetCursorPosOffsetiPK9itemDef_sPKci_10
_Z23Item_GetCursorPosOffsetiPK9itemDef_sPKci_60:
	movzx edx, byte [edx-0x1]
	test dl, dl
	jz _Z23Item_GetCursorPosOffsetiPK9itemDef_sPKci_50
	cmp dl, 0x5e
	jz _Z23Item_GetCursorPosOffsetiPK9itemDef_sPKci_50
	cmp dl, 0x2f
	jle _Z23Item_GetCursorPosOffsetiPK9itemDef_sPKci_50
	cmp dl, 0x39
	jg _Z23Item_GetCursorPosOffsetiPK9itemDef_sPKci_50
	sub eax, 0x2
_Z23Item_GetCursorPosOffsetiPK9itemDef_sPKci_20:
	test eax, eax
	jz _Z23Item_GetCursorPosOffsetiPK9itemDef_sPKci_30
_Z23Item_GetCursorPosOffsetiPK9itemDef_sPKci_70:
	test ebx, ebx
	jz _Z23Item_GetCursorPosOffsetiPK9itemDef_sPKci_30
	cmp eax, 0x1
	jle _Z23Item_GetCursorPosOffsetiPK9itemDef_sPKci_50
	lea edx, [esi+eax]
	cmp edx, 0x2
	jz _Z23Item_GetCursorPosOffsetiPK9itemDef_sPKci_50
	cmp byte [edx-0x2], 0x5e
	jz _Z23Item_GetCursorPosOffsetiPK9itemDef_sPKci_60
_Z23Item_GetCursorPosOffsetiPK9itemDef_sPKci_50:
	sub eax, 0x1
	add ebx, 0x1
	test eax, eax
	jnz _Z23Item_GetCursorPosOffsetiPK9itemDef_sPKci_70
_Z23Item_GetCursorPosOffsetiPK9itemDef_sPKci_30:
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;ListBox_HasValidCursorPos(int, itemDef_s*)
_Z25ListBox_HasValidCursorPosiP9itemDef_s:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	cmp dword [ebx+0xb8], 0x6
	jz _Z25ListBox_HasValidCursorPosiP9itemDef_s_10
	mov dword [esp+0x4], _cstring_menu_error_expec
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	xor eax, eax
_Z25ListBox_HasValidCursorPosiP9itemDef_s_30:
	mov edx, [ebx+esi*4+0x128]
	cmp edx, [eax+esi*4+0x4]
	jl _Z25ListBox_HasValidCursorPosiP9itemDef_s_20
	cmp edx, [eax+esi*4+0x8]
	jge _Z25ListBox_HasValidCursorPosiP9itemDef_s_20
	mov eax, 0x1
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z25ListBox_HasValidCursorPosiP9itemDef_s_20:
	xor eax, eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z25ListBox_HasValidCursorPosiP9itemDef_s_10:
	mov eax, [ebx+0x12c]
	jmp _Z25ListBox_HasValidCursorPosiP9itemDef_s_30
	nop


;Window_RemoveDynamicFlags(int, windowDef_t*, int)
_Z25Window_RemoveDynamicFlagsiP11windowDef_ti:
	push ebp
	mov ebp, esp
	push ebx
	mov ebx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov eax, [ebp+0x10]
	mov edx, [ecx+ebx*4+0x50]
	test al, 0x4
	jz _Z25Window_RemoveDynamicFlagsiP11windowDef_ti_10
	or eax, 0x2
_Z25Window_RemoveDynamicFlagsiP11windowDef_ti_10:
	not eax
	and edx, eax
	mov [ecx+ebx*4+0x50], edx
	pop ebx
	pop ebp
	ret
	nop


;UI_Alloc(int, int)
_Z8UI_Allocii:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z23Hunk_AllocAlignInternalii
	nop


;Int_Parse(char const**, int*)
_Z9Int_ParsePPKcPi:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z15Com_ParseOnLinePPKc
	test eax, eax
	jz _Z9Int_ParsePPKcPi_10
	cmp byte [eax], 0x0
	jnz _Z9Int_ParsePPKcPi_20
_Z9Int_ParsePPKcPi_10:
	xor eax, eax
	leave
	ret
_Z9Int_ParsePPKcPi_20:
	mov [esp], eax
	call atoi
	mov edx, [ebp+0xc]
	mov [edx], eax
	mov eax, 0x1
	leave
	ret


;Initialized global or static variables of ui_utils:
SECTION .data
_ZZ12String_AllocPKcE10staticNULL: dd _cstring_null, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of ui_utils:
SECTION .rdata


;Zero initialized global or static variables of ui_utils:
SECTION .bss
g_strHandle: resb 0x2000


;All cstrings:
SECTION .rdata
_cstring_unnamed:		db "unnamed",0
_cstring_item_s_is_hidden:		db "Item %s is hidden because its ",27h,"visible when",27h," expression is false",0ah,0
_cstring_menu_error_expec:		db "Menu Error: Expecting type: ITEM_TYPE_LISTBOX",0ah,0
_cstring_menu_error_expec1:		db "Menu Error: Expecting type: ITEM_TYPE_EDITFIELD, ITEM_TYPE_NUMERICFIELD, ITEM_TYPE_DECIMALFIELD, ITEM_TYPE_VALIDFILEFIELD, ITEM_TYPE_UPREDITFIELD, ITEM_TYPE_YESNO, ITEM_TYPE_BIND, ITEM_TYPE_SLIDER, or ITEM_TYPE_TEXT",0ah,0
_cstring_null:		db 0



;All constant floats and doubles:
SECTION .rdata

