;Imports of ui_utils:
	extern Com_ParseOnLine
	extern atof
	extern memset
	extern tolower
	extern strcmp
	extern Hunk_AllocAlignInternal
	extern strcpy
	extern IsExpressionTrue
	extern uiscript_debug
	extern Com_Printf
	extern Cvar_GetVariantString
	extern String_Parse
	extern Q_stricmp
	extern Com_PrintError
	extern atoi

;Exports of ui_utils:
	global g_strHandle
	global _ZZ12String_AllocPKcE10staticNULL
	global Float_Parse
	global String_Init
	global String_Alloc
	global Item_IsVisible
	global Item_GetMultiDef
	global Item_SetTextRect
	global Item_GetListBoxDef
	global Menu_SetCursorItem
	global Item_IsEditFieldDef
	global Menu_UpdatePosition
	global Item_GetEditFieldDef
	global Window_SetStaticFlags
	global Item_EnableShowViaDvar
	global Window_AddDynamicFlags
	global Window_SetDynamicFlags
	global Item_GetCursorPosOffset
	global ListBox_HasValidCursorPos
	global Window_RemoveDynamicFlags
	global UI_Alloc
	global Int_Parse


SECTION .text


;Float_Parse(char const**, float*)
Float_Parse:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Com_ParseOnLine
	test eax, eax
	jz Float_Parse_10
	cmp byte [eax], 0x0
	jnz Float_Parse_20
Float_Parse_10:
	xor eax, eax
	leave
	ret
Float_Parse_20:
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
String_Init:
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
String_Alloc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0x8]
	test esi, esi
	jz String_Alloc_10
	movzx eax, byte [esi]
	test al, al
	jz String_Alloc_20
	xor ebx, ebx
	mov edi, 0x77
String_Alloc_30:
	movsx eax, al
	mov [esp], eax
	call tolower
	imul eax, edi
	add ebx, eax
	movzx eax, byte [esi+edi-0x76]
	add edi, 0x1
	test al, al
	jnz String_Alloc_30
	and ebx, 0x7ff
	mov [ebp-0x1c], ebx
	mov edi, [ebx*4+g_strHandle]
	test edi, edi
	jz String_Alloc_40
String_Alloc_60:
	mov ebx, [edi+0x4]
	mov [esp+0x4], ebx
	mov [esp], esi
	call strcmp
	test eax, eax
	jz String_Alloc_50
	mov edi, [edi]
	test edi, edi
	jnz String_Alloc_60
String_Alloc_40:
	mov dword [esp+0x4], 0x1
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	not ecx
	mov [esp], ecx
	call Hunk_AllocAlignInternal
	mov edi, eax
	mov [esp+0x4], esi
	mov [esp], eax
	call strcpy
	mov edx, [ebp-0x1c]
	mov ebx, [edx*4+g_strHandle]
	test ebx, ebx
	jz String_Alloc_70
	mov eax, [ebx]
	test eax, eax
	jnz String_Alloc_80
	jmp String_Alloc_70
String_Alloc_90:
	mov ebx, eax
	mov eax, edx
String_Alloc_80:
	mov edx, [eax]
	test edx, edx
	jnz String_Alloc_90
String_Alloc_70:
	mov dword [esp+0x4], 0x4
	mov dword [esp], 0x8
	call Hunk_AllocAlignInternal
	mov dword [eax], 0x0
	mov [eax+0x4], edi
	test ebx, ebx
	jz String_Alloc_100
	mov [ebx], eax
	mov ebx, edi
String_Alloc_110:
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
String_Alloc_20:
	mov ebx, [_ZZ12String_AllocPKcE10staticNULL]
String_Alloc_50:
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
String_Alloc_10:
	xor ebx, ebx
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
String_Alloc_100:
	mov edx, [ebp-0x1c]
	mov [edx*4+g_strHandle], eax
	mov ebx, edi
	jmp String_Alloc_110


;Item_IsVisible(int, itemDef_s*)
Item_IsVisible:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x43c
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	test byte [ebx+esi*4+0x50], 0x4
	jz Item_IsVisible_10
	test byte [ebx+0x11c], 0xc
	jz Item_IsVisible_20
	mov eax, [ebx+0x118]
	test eax, eax
	jz Item_IsVisible_20
	cmp byte [eax], 0x0
	jz Item_IsVisible_20
	mov eax, [ebx+0x110]
	test eax, eax
	jz Item_IsVisible_20
	cmp byte [eax], 0x0
	jnz Item_IsVisible_30
Item_IsVisible_20:
	mov eax, [ebx+0x134]
	test eax, eax
	jnz Item_IsVisible_40
Item_IsVisible_50:
	mov eax, 0x1
	add esp, 0x43c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Item_IsVisible_40:
	lea eax, [ebx+0x134]
	mov [esp+0x4], eax
	mov [esp], esi
	call IsExpressionTrue
	test al, al
	jnz Item_IsVisible_50
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz Item_IsVisible_10
	mov eax, [ebx]
	test eax, eax
	mov edx, _cstring_unnamed
	cmovz eax, edx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_item_s_is_hidden
	mov dword [esp], 0xd
	call Com_Printf
	xor eax, eax
	add esp, 0x43c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Item_IsVisible_30:
	mov [esp], eax
	call Cvar_GetVariantString
	mov [ebp-0x42c], eax
	mov eax, [ebx+0x118]
	mov [ebp-0x1c], eax
	lea edi, [ebp-0x41c]
Item_IsVisible_80:
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], edi
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call String_Parse
	test eax, eax
	jz Item_IsVisible_60
	cmp byte [ebp-0x41c], 0x3b
	jnz Item_IsVisible_70
	cmp byte [ebp-0x41b], 0x0
	jz Item_IsVisible_80
Item_IsVisible_70:
	mov [esp+0x4], edi
	mov eax, [ebp-0x42c]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz Item_IsVisible_80
	mov eax, [ebx+0x11c]
	shr eax, 0x2
	and eax, 0x1
Item_IsVisible_90:
	test eax, eax
	jnz Item_IsVisible_20
Item_IsVisible_10:
	xor eax, eax
	add esp, 0x43c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Item_IsVisible_60:
	mov eax, [ebx+0x11c]
	xor eax, 0x4
	shr eax, 0x2
	and eax, 0x1
	jmp Item_IsVisible_90
	nop
	add [eax], al


;Item_GetMultiDef(itemDef_s*)
Item_GetMultiDef:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x12c]
	pop ebp
	ret


;Item_SetTextRect(int, itemDef_s*, rectDef_s const*)
Item_SetTextRect:
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
Item_GetListBoxDef:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	cmp dword [eax+0xb8], 0x6
	jnz Item_GetListBoxDef_10
	mov eax, [eax+0x12c]
	leave
	ret
Item_GetListBoxDef_10:
	mov dword [esp+0x4], _cstring_menu_error_expec
	mov dword [esp], 0xd
	call Com_PrintError
	xor eax, eax
	leave
	ret


;Menu_SetCursorItem(int, menuDef_t*, int)
Menu_SetCursorItem:
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
Item_IsEditFieldDef:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	cmp dword [eax+0xb8], 0x12
	ja Item_IsEditFieldDef_10
	mov ecx, [eax+0xb8]
	mov eax, 0x1
	shl eax, cl
	test eax, 0x74e11
	jnz Item_IsEditFieldDef_20
Item_IsEditFieldDef_10:
	xor eax, eax
	pop ebp
	ret
Item_IsEditFieldDef_20:
	mov eax, 0x1
	pop ebp
	ret


;Menu_UpdatePosition(int, menuDef_t*)
Menu_UpdatePosition:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x34
	mov esi, [ebp+0xc]
	test esi, esi
	jz Menu_UpdatePosition_10
	lea edi, [esi+0x4]
	movss xmm3, dword [esi+0x4]
	movss xmm2, dword [edi+0x4]
	mov eax, [esi+0x3c]
	test eax, eax
	jnz Menu_UpdatePosition_20
	mov eax, [esi+0xa4]
	test eax, eax
	jle Menu_UpdatePosition_10
Menu_UpdatePosition_80:
	mov dword [ebp-0x38], 0x0
	mov edx, [ebp+0x8]
	lea eax, [edx+edx*2]
	lea ebx, [eax*8+0x90]
	jmp Menu_UpdatePosition_30
Menu_UpdatePosition_60:
	movaps xmm1, xmm3
	movaps xmm0, xmm2
Menu_UpdatePosition_70:
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
	jnz Menu_UpdatePosition_40
	test eax, eax
	jnz Menu_UpdatePosition_40
	mov eax, [ebp-0x3c]
	mov [edx+0x14], eax
	mov ecx, [ebp-0x34]
	mov [edx+0x18], ecx
Menu_UpdatePosition_40:
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
Menu_UpdatePosition_50:
	add dword [ebp-0x38], 0x1
	mov eax, [ebp-0x38]
	cmp eax, [esi+0xa4]
	jge Menu_UpdatePosition_10
Menu_UpdatePosition_30:
	mov ecx, [edi+0x14]
	mov [ebp-0x34], ecx
	mov eax, [edi+0x10]
	mov [ebp-0x3c], eax
	mov eax, [esi+0x118]
	mov ecx, [ebp-0x38]
	mov edx, [eax+ecx*4]
	test edx, edx
	jz Menu_UpdatePosition_50
	mov eax, [edx+0x3c]
	test eax, eax
	jz Menu_UpdatePosition_60
	movss xmm0, dword [edx+0x48]
	movaps xmm1, xmm3
	addss xmm1, xmm0
	addss xmm0, xmm2
	jmp Menu_UpdatePosition_70
Menu_UpdatePosition_10:
	add esp, 0x34
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Menu_UpdatePosition_20:
	movss xmm0, dword [esi+0x48]
	addss xmm3, xmm0
	addss xmm2, xmm0
	mov eax, [esi+0xa4]
	test eax, eax
	jle Menu_UpdatePosition_10
	jmp Menu_UpdatePosition_80


;Item_GetEditFieldDef(itemDef_s*)
Item_GetEditFieldDef:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0x8]
	cmp dword [edx+0xb8], 0x12
	ja Item_GetEditFieldDef_10
	mov ecx, [edx+0xb8]
	mov eax, 0x1
	shl eax, cl
	test eax, 0x74e11
	jz Item_GetEditFieldDef_10
	mov eax, [edx+0x12c]
	leave
	ret
Item_GetEditFieldDef_10:
	mov dword [esp+0x4], _cstring_menu_error_expec1
	mov dword [esp], 0xd
	call Com_PrintError
	xor eax, eax
	leave
	ret


;Window_SetStaticFlags(windowDef_t*, int)
Window_SetStaticFlags:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov [eax+0x4c], edx
	pop ebp
	ret


;Item_EnableShowViaDvar(itemDef_s const*, int)
Item_EnableShowViaDvar:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov edx, [ebp+0x8]
	mov eax, [edx+0x118]
	test eax, eax
	jz Item_EnableShowViaDvar_10
	cmp byte [eax], 0x0
	jz Item_EnableShowViaDvar_10
	mov eax, [edx+0x110]
	test eax, eax
	jz Item_EnableShowViaDvar_10
	cmp byte [eax], 0x0
	jnz Item_EnableShowViaDvar_20
Item_EnableShowViaDvar_10:
	mov eax, 0x1
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Item_EnableShowViaDvar_20:
	mov [esp], eax
	call Cvar_GetVariantString
	mov esi, eax
	mov edx, [ebp+0x8]
	mov eax, [edx+0x118]
	mov [ebp-0x1c], eax
	lea ebx, [ebp-0x41c]
	lea edi, [ebp-0x1c]
Item_EnableShowViaDvar_50:
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], ebx
	mov [esp], edi
	call String_Parse
	test eax, eax
	jz Item_EnableShowViaDvar_30
	cmp byte [ebp-0x41c], 0x3b
	jnz Item_EnableShowViaDvar_40
	cmp byte [ebp-0x41b], 0x0
	jz Item_EnableShowViaDvar_50
Item_EnableShowViaDvar_40:
	mov [esp+0x4], ebx
	mov [esp], esi
	call Q_stricmp
	test eax, eax
	jnz Item_EnableShowViaDvar_50
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
Item_EnableShowViaDvar_30:
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
Window_AddDynamicFlags:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x10]
	or [edx+ecx*4+0x50], eax
	pop ebp
	ret


;Window_SetDynamicFlags(int, windowDef_t*, int)
Window_SetDynamicFlags:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x10]
	mov edx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov [eax+edx*4+0x50], ecx
	pop ebp
	ret


;Item_GetCursorPosOffset(int, itemDef_s const*, char const*, int)
Item_GetCursorPosOffset:
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
	jg Item_GetCursorPosOffset_10
	jmp Item_GetCursorPosOffset_20
Item_GetCursorPosOffset_40:
	cmp byte [edx], 0x0
	jz Item_GetCursorPosOffset_30
	test ebx, ebx
	jz Item_GetCursorPosOffset_30
	add eax, 0x1
	sub ebx, 0x1
Item_GetCursorPosOffset_10:
	mov edx, eax
	add edx, esi
	jz Item_GetCursorPosOffset_40
	cmp byte [edx], 0x5e
	jnz Item_GetCursorPosOffset_40
	movzx ecx, byte [edx+0x1]
	test cl, cl
	jz Item_GetCursorPosOffset_40
	cmp cl, 0x5e
	jz Item_GetCursorPosOffset_40
	cmp cl, 0x2f
	jle Item_GetCursorPosOffset_40
	cmp cl, 0x39
	jg Item_GetCursorPosOffset_40
	add eax, 0x2
	jmp Item_GetCursorPosOffset_10
Item_GetCursorPosOffset_60:
	movzx edx, byte [edx-0x1]
	test dl, dl
	jz Item_GetCursorPosOffset_50
	cmp dl, 0x5e
	jz Item_GetCursorPosOffset_50
	cmp dl, 0x2f
	jle Item_GetCursorPosOffset_50
	cmp dl, 0x39
	jg Item_GetCursorPosOffset_50
	sub eax, 0x2
Item_GetCursorPosOffset_20:
	test eax, eax
	jz Item_GetCursorPosOffset_30
Item_GetCursorPosOffset_70:
	test ebx, ebx
	jz Item_GetCursorPosOffset_30
	cmp eax, 0x1
	jle Item_GetCursorPosOffset_50
	lea edx, [esi+eax]
	cmp edx, 0x2
	jz Item_GetCursorPosOffset_50
	cmp byte [edx-0x2], 0x5e
	jz Item_GetCursorPosOffset_60
Item_GetCursorPosOffset_50:
	sub eax, 0x1
	add ebx, 0x1
	test eax, eax
	jnz Item_GetCursorPosOffset_70
Item_GetCursorPosOffset_30:
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;ListBox_HasValidCursorPos(int, itemDef_s*)
ListBox_HasValidCursorPos:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	cmp dword [ebx+0xb8], 0x6
	jz ListBox_HasValidCursorPos_10
	mov dword [esp+0x4], _cstring_menu_error_expec
	mov dword [esp], 0xd
	call Com_PrintError
	xor eax, eax
ListBox_HasValidCursorPos_30:
	mov edx, [ebx+esi*4+0x128]
	cmp edx, [eax+esi*4+0x4]
	jl ListBox_HasValidCursorPos_20
	cmp edx, [eax+esi*4+0x8]
	jge ListBox_HasValidCursorPos_20
	mov eax, 0x1
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
ListBox_HasValidCursorPos_20:
	xor eax, eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
ListBox_HasValidCursorPos_10:
	mov eax, [ebx+0x12c]
	jmp ListBox_HasValidCursorPos_30
	nop


;Window_RemoveDynamicFlags(int, windowDef_t*, int)
Window_RemoveDynamicFlags:
	push ebp
	mov ebp, esp
	push ebx
	mov ebx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov eax, [ebp+0x10]
	mov edx, [ecx+ebx*4+0x50]
	test al, 0x4
	jz Window_RemoveDynamicFlags_10
	or eax, 0x2
Window_RemoveDynamicFlags_10:
	not eax
	and edx, eax
	mov [ecx+ebx*4+0x50], edx
	pop ebx
	pop ebp
	ret
	nop


;UI_Alloc(int, int)
UI_Alloc:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Hunk_AllocAlignInternal
	nop


;Int_Parse(char const**, int*)
Int_Parse:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Com_ParseOnLine
	test eax, eax
	jz Int_Parse_10
	cmp byte [eax], 0x0
	jnz Int_Parse_20
Int_Parse_10:
	xor eax, eax
	leave
	ret
Int_Parse_20:
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

