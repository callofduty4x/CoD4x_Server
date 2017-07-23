;Imports of cg_info:
	extern com_expectedHunkUsage
	extern DB_GetLoadedFraction
	extern cgArray
	extern va
	extern Com_Printf
	extern SCR_UpdateLoadScreen
	extern CL_IsServerLoadingMap
	extern CL_SetWaitingOnServerToLoadMap
	extern CL_GetConfigString
	extern UI_DrawMapLevelshot
	extern useFastFile
	extern g_waitingForServer
	extern scrPlaceFull
	extern UI_GetFontHandle
	extern Sys_Milliseconds
	extern UI_SafeTranslateString
	extern UI_TextWidth
	extern colorWhite
	extern scrPlaceView
	extern UI_DrawText
	extern CL_IsWaitingOnServerToLoadMap
	extern CG_CloseScriptMenu
	extern UI_CloseAllMenus
	extern SND_StopSounds

;Exports of cg_info:
	global CG_IsShowingProgress_LoadObj
	global CG_IsShowingProgress_FastFile
	global CG_LoadingString
	global CG_DrawInformation


SECTION .text


;CG_IsShowingProgress_LoadObj()
CG_IsShowingProgress_LoadObj:
	push ebp
	mov ebp, esp
	mov eax, com_expectedHunkUsage
	mov eax, [eax]
	test eax, eax
	setg al
	movzx eax, al
	pop ebp
	ret


;CG_IsShowingProgress_FastFile()
CG_IsShowingProgress_FastFile:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	call DB_GetLoadedFraction
	fstp dword [ebp-0xc]
	movss xmm0, dword [ebp-0xc]
	xor eax, eax
	ucomiss xmm0, [_float_0_00000000]
	seta al
	leave
	ret
	nop


;CG_LoadingString(int, char const*)
CG_LoadingString:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0xc]
	cmp byte [edx], 0x0
	mov eax, cgArray
	setnz byte [eax+0x4f3a0]
	cmp byte [edx], 0x0
	jz CG_LoadingString_10
	mov [esp+0x4], edx
	mov dword [esp], _cstring_loading_s
	call va
	mov [esp+0x4], eax
	mov dword [esp], 0xe
	call Com_Printf
CG_LoadingString_10:
	leave
	jmp SCR_UpdateLoadScreen
	nop


;CG_DrawInformation(int)
CG_DrawInformation:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov edi, [ebp+0x8]
	call CL_IsServerLoadingMap
	mov ebx, eax
	test al, al
	jnz CG_DrawInformation_10
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call CL_SetWaitingOnServerToLoadMap
CG_DrawInformation_60:
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call CL_GetConfigString
	mov [esp], edi
	call UI_DrawMapLevelshot
	mov eax, useFastFile
	mov edx, [eax]
	mov eax, CG_IsShowingProgress_FastFile
	cmp byte [edx+0xc], 0x0
	mov edx, CG_IsShowingProgress_LoadObj
	cmovz eax, edx
	call eax
	test al, al
	jnz CG_DrawInformation_20
	test bl, bl
	jz CG_DrawInformation_20
	mov eax, g_waitingForServer
	cmp byte [eax], 0x0
	jz CG_DrawInformation_20
	mov dword [esp+0x8], 0x3f000000
	mov dword [esp+0x4], 0x0
	mov eax, scrPlaceFull
	mov [esp], eax
	call UI_GetFontHandle
	mov [ebp-0x1c], eax
	call Sys_Milliseconds
	mov ecx, eax
	mov edx, 0x10624dd3
	imul edx
	sar edx, 0x5
	mov eax, ecx
	sar eax, 0x1f
	sub edx, eax
	and edx, 0x3
	cmp edx, 0x2
	jz CG_DrawInformation_30
	cmp edx, 0x3
	jz CG_DrawInformation_40
	sub edx, 0x1
	jz CG_DrawInformation_50
	mov dword [ebp-0x20], _cstring_null
CG_DrawInformation_70:
	mov dword [esp], _cstring_cgame_waitingfor
	call UI_SafeTranslateString
	mov ebx, eax
	mov dword [esp+0xc], 0x3f000000
	mov edx, [ebp-0x1c]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call UI_TextWidth
	mov esi, eax
	mov eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_ss
	call va
	mov dword [esp+0x28], 0x3
	mov edx, colorWhite
	mov [esp+0x24], edx
	mov dword [esp+0x20], 0x3f000000
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x43db8000
	cvtsi2ss xmm1, esi
	movss xmm0, dword [_float_640_00000000]
	subss xmm0, xmm1
	mulss xmm0, [_float_0_50000000]
	movss [esp+0x10], xmm0
	mov edx, [ebp-0x1c]
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x7fffffff
	mov [esp+0x4], eax
	mov eax, edi
	shl eax, 0x6
	lea eax, [eax+edi*4]
	add eax, scrPlaceView
	mov [esp], eax
	call UI_DrawText
CG_DrawInformation_20:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_DrawInformation_10:
	mov [esp], edi
	call CL_IsWaitingOnServerToLoadMap
	test al, al
	jnz CG_DrawInformation_60
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call CG_CloseScriptMenu
	mov [esp], edi
	call UI_CloseAllMenus
	mov dword [esp], 0x0
	call SND_StopSounds
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call CL_SetWaitingOnServerToLoadMap
	jmp CG_DrawInformation_60
CG_DrawInformation_30:
	mov dword [ebp-0x20], _cstring_
	jmp CG_DrawInformation_70
CG_DrawInformation_40:
	mov dword [ebp-0x20], _cstring_1
	jmp CG_DrawInformation_70
CG_DrawInformation_50:
	mov dword [ebp-0x20], _cstring_2
	jmp CG_DrawInformation_70
	add [eax], al


;Initialized global or static variables of cg_info:
SECTION .data


;Initialized constant data of cg_info:
SECTION .rdata


;Zero initialized global or static variables of cg_info:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_loading_s:		db "LOADING... %s",0ah,0
_cstring_null:		db 0
_cstring_cgame_waitingfor:		db "CGAME_WAITINGFORSERVERLOAD",0
_cstring_ss:		db "%s%s",0
_cstring_:		db "..",0
_cstring_1:		db "...",0
_cstring_2:		db ".",0



;All constant floats and doubles:
SECTION .rdata
_float_0_00000000:		dd 0x0	; 0
_float_640_00000000:		dd 0x44200000	; 640
_float_0_50000000:		dd 0x3f000000	; 0.5

