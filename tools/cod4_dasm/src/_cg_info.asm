;Imports of cg_info:
	extern com_expectedHunkUsage
	extern _Z20DB_GetLoadedFractionv
	extern cgArray
	extern _Z2vaPKcz
	extern _Z10Com_PrintfiPKcz
	extern _Z20SCR_UpdateLoadScreenv
	extern _Z21CL_IsServerLoadingMapv
	extern _Z30CL_SetWaitingOnServerToLoadMapih
	extern _Z18CL_GetConfigStringii
	extern _Z19UI_DrawMapLevelshoti
	extern useFastFile
	extern g_waitingForServer
	extern scrPlaceFull
	extern _Z16UI_GetFontHandlePK15ScreenPlacementif
	extern _Z16Sys_Millisecondsv
	extern _Z22UI_SafeTranslateStringPKc
	extern _Z12UI_TextWidthPKciP6Font_sf
	extern colorWhite
	extern scrPlaceView
	extern _Z11UI_DrawTextPK15ScreenPlacementPKciP6Font_sffiifPKfi
	extern _Z29CL_IsWaitingOnServerToLoadMapi
	extern _Z18CG_CloseScriptMenuih
	extern _Z16UI_CloseAllMenusi
	extern _Z14SND_StopSounds20snd_stopsounds_arg_t

;Exports of cg_info:
	global _Z28CG_IsShowingProgress_LoadObjv
	global _Z29CG_IsShowingProgress_FastFilev
	global _Z16CG_LoadingStringiPKc
	global _Z18CG_DrawInformationi


SECTION .text


;CG_IsShowingProgress_LoadObj()
_Z28CG_IsShowingProgress_LoadObjv:
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
_Z29CG_IsShowingProgress_FastFilev:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	call _Z20DB_GetLoadedFractionv
	fstp dword [ebp-0xc]
	movss xmm0, dword [ebp-0xc]
	xor eax, eax
	ucomiss xmm0, [_float_0_00000000]
	seta al
	leave
	ret
	nop


;CG_LoadingString(int, char const*)
_Z16CG_LoadingStringiPKc:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0xc]
	cmp byte [edx], 0x0
	mov eax, cgArray
	setnz byte [eax+0x4f3a0]
	cmp byte [edx], 0x0
	jz _Z16CG_LoadingStringiPKc_10
	mov [esp+0x4], edx
	mov dword [esp], _cstring_loading_s
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
_Z16CG_LoadingStringiPKc_10:
	leave
	jmp _Z20SCR_UpdateLoadScreenv
	nop


;CG_DrawInformation(int)
_Z18CG_DrawInformationi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov edi, [ebp+0x8]
	call _Z21CL_IsServerLoadingMapv
	mov ebx, eax
	test al, al
	jnz _Z18CG_DrawInformationi_10
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call _Z30CL_SetWaitingOnServerToLoadMapih
_Z18CG_DrawInformationi_60:
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call _Z18CL_GetConfigStringii
	mov [esp], edi
	call _Z19UI_DrawMapLevelshoti
	mov eax, useFastFile
	mov edx, [eax]
	mov eax, _Z29CG_IsShowingProgress_FastFilev
	cmp byte [edx+0xc], 0x0
	mov edx, _Z28CG_IsShowingProgress_LoadObjv
	cmovz eax, edx
	call eax
	test al, al
	jnz _Z18CG_DrawInformationi_20
	test bl, bl
	jz _Z18CG_DrawInformationi_20
	mov eax, g_waitingForServer
	cmp byte [eax], 0x0
	jz _Z18CG_DrawInformationi_20
	mov dword [esp+0x8], 0x3f000000
	mov dword [esp+0x4], 0x0
	mov eax, scrPlaceFull
	mov [esp], eax
	call _Z16UI_GetFontHandlePK15ScreenPlacementif
	mov [ebp-0x1c], eax
	call _Z16Sys_Millisecondsv
	mov ecx, eax
	mov edx, 0x10624dd3
	imul edx
	sar edx, 0x5
	mov eax, ecx
	sar eax, 0x1f
	sub edx, eax
	and edx, 0x3
	cmp edx, 0x2
	jz _Z18CG_DrawInformationi_30
	cmp edx, 0x3
	jz _Z18CG_DrawInformationi_40
	sub edx, 0x1
	jz _Z18CG_DrawInformationi_50
	mov dword [ebp-0x20], _cstring_null
_Z18CG_DrawInformationi_70:
	mov dword [esp], _cstring_cgame_waitingfor
	call _Z22UI_SafeTranslateStringPKc
	mov ebx, eax
	mov dword [esp+0xc], 0x3f000000
	mov edx, [ebp-0x1c]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call _Z12UI_TextWidthPKciP6Font_sf
	mov esi, eax
	mov eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_ss
	call _Z2vaPKcz
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
	call _Z11UI_DrawTextPK15ScreenPlacementPKciP6Font_sffiifPKfi
_Z18CG_DrawInformationi_20:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18CG_DrawInformationi_10:
	mov [esp], edi
	call _Z29CL_IsWaitingOnServerToLoadMapi
	test al, al
	jnz _Z18CG_DrawInformationi_60
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call _Z18CG_CloseScriptMenuih
	mov [esp], edi
	call _Z16UI_CloseAllMenusi
	mov dword [esp], 0x0
	call _Z14SND_StopSounds20snd_stopsounds_arg_t
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call _Z30CL_SetWaitingOnServerToLoadMapih
	jmp _Z18CG_DrawInformationi_60
_Z18CG_DrawInformationi_30:
	mov dword [ebp-0x20], _cstring_
	jmp _Z18CG_DrawInformationi_70
_Z18CG_DrawInformationi_40:
	mov dword [ebp-0x20], _cstring_1
	jmp _Z18CG_DrawInformationi_70
_Z18CG_DrawInformationi_50:
	mov dword [ebp-0x20], _cstring_2
	jmp _Z18CG_DrawInformationi_70
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

