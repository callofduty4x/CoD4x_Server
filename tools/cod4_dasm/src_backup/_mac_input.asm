;Imports of mac_input:
	extern _ZN8MacTools10ShowCursorEPK5Point
	extern g_wv
	extern ClientToScreen
	extern SetCursorPos
	extern _ZN8MacTools10HideCursorEv
	extern _Z17Dvar_RegisterBoolPKchtS0_
	extern _Z18Dvar_ClearModifiedPK6dvar_s
	extern _Z10Com_PrintfiPKcz
	extern _Z12Dvar_GetBoolPKc
	extern _ZN10MacDisplay8IsActiveEv
	extern GetCursorPos
	extern r_fullscreen
	extern ScreenToClient
	extern _Z13CL_MouseEventiiii
	extern GetWindowRect
	extern _Z15Key_ClearStatesi
	extern _Z12Sys_QueEventi14sysEventType_tiiiPv
	extern _ZN11MacFeatures19GetKeyboardLanguageEv
	extern __maskrune
	extern _ZN11MacFeatures13IsISOKeyboardEv
	extern _Z20TranslateKeyCodeToVKm
	extern MapVirtualKeyA

;Exports of mac_input:
	global extendedVirtualKeyConvert
	global virtualKeyConvert
	global in_appactive
	global s_wmv
	global window_center_y
	global window_center_x
	global _Z11IN_Shutdownv
	global _Z15IN_SetCursorPosii
	global _Z19IN_ShowSystemCursori
	global _Z7IN_Initv
	global _Z8IN_Framev
	global _ZN17CCallOfDutyEngine10DoActivateEv
	global _ZN17CCallOfDutyEngine11DoMouseDownEt5Pointmm
	global _ZN17CCallOfDutyEngine11DoTextInputEt
	global _ZN17CCallOfDutyEngine12DoDeactivateEv
	global _ZN17CCallOfDutyEngine12DoMouseMovedE5PointS0_m
	global _ZN17CCallOfDutyEngine12DoMouseWheelEl5Pointm
	global _ZN17CCallOfDutyEngine7DoKeyUpEhm
	global _ZN17CCallOfDutyEngine9DoKeyDownEhm
	global _ZN17CCallOfDutyEngine9DoMouseUpEt5Pointmm
	global in_mouse


SECTION .text


;IN_Shutdown()
_Z11IN_Shutdownv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	cmp byte [s_wmv+0xd], 0x0
	jz _Z11IN_Shutdownv_10
	cmp byte [s_wmv+0xc], 0x0
	jnz _Z11IN_Shutdownv_20
_Z11IN_Shutdownv_10:
	leave
	ret
_Z11IN_Shutdownv_20:
	mov byte [s_wmv+0xc], 0x0
	mov dword [esp], 0x0
	call _ZN8MacTools10ShowCursorEPK5Point
	leave
	ret
	nop


;IN_SetCursorPos(int, int)
_Z15IN_SetCursorPosii:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov eax, [ebp+0x8]
	mov [ebp-0x10], eax
	mov eax, [ebp+0xc]
	mov [ebp-0xc], eax
	lea eax, [ebp-0x10]
	mov [esp+0x4], eax
	mov eax, g_wv
	mov eax, [eax+0x8]
	mov [esp], eax
	call ClientToScreen
	mov eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov eax, [ebp-0x10]
	mov [esp], eax
	call SetCursorPos
	mov eax, [ebp-0x10]
	mov edx, [ebp-0xc]
	mov [s_wmv+0x4], eax
	mov [s_wmv+0x8], edx
	leave
	ret


;IN_ShowSystemCursor(int)
_Z19IN_ShowSystemCursori:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	test eax, eax
	jz _Z19IN_ShowSystemCursori_10
	mov dword [ebp+0x8], 0x0
	pop ebp
	jmp _ZN8MacTools10ShowCursorEPK5Point
_Z19IN_ShowSystemCursori_10:
	pop ebp
	jmp _ZN8MacTools10HideCursorEv
	nop


;IN_Init()
_Z7IN_Initv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0xc], _cstring_initialize_the_m
	mov dword [esp+0x8], 0x21
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_in_mouse
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [in_mouse], eax
	mov byte [s_wmv+0xd], 0x0
	cmp byte [eax+0xc], 0x0
	jz _Z7IN_Initv_10
	mov byte [s_wmv+0xd], 0x1
	mov eax, [in_mouse]
	mov [esp], eax
	call _Z18Dvar_ClearModifiedPK6dvar_s
	leave
	ret
_Z7IN_Initv_10:
	mov dword [esp+0x4], _cstring_mouse_control_no
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	mov eax, [in_mouse]
	mov [esp], eax
	call _Z18Dvar_ClearModifiedPK6dvar_s
	leave
	ret
	nop


;IN_Frame()
_Z8IN_Framev:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov dword [esp], _cstring_clicktocontinue
	call _Z12Dvar_GetBoolPKc
	cmp byte [s_wmv+0xd], 0x0
	jz _Z8IN_Framev_10
	mov eax, [in_appactive]
	test eax, eax
	jz _Z8IN_Framev_20
	mov eax, [in_mouse]
	cmp byte [eax+0xc], 0x0
	jnz _Z8IN_Framev_30
	mov byte [s_wmv+0xc], 0x0
_Z8IN_Framev_60:
	call _ZN10MacDisplay8IsActiveEv
	test al, al
	jz _Z8IN_Framev_10
	lea eax, [ebp-0x20]
	mov [esp], eax
	call GetCursorPos
	mov eax, r_fullscreen
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z8IN_Framev_40
	mov edx, [ebp-0x20]
	mov eax, [ebp-0x1c]
_Z8IN_Framev_90:
	mov esi, edx
	sub esi, [s_wmv+0x4]
	mov edi, eax
	sub edi, [s_wmv+0x8]
	mov eax, [ebp-0x20]
	mov edx, [ebp-0x1c]
	mov [s_wmv+0x4], eax
	mov [s_wmv+0x8], edx
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov ebx, g_wv
	mov eax, [ebx+0x8]
	mov [esp], eax
	call ScreenToClient
	mov [esp+0xc], edi
	mov [esp+0x8], esi
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov eax, [ebp-0x20]
	mov [esp], eax
	call _Z13CL_MouseEventiiii
	mov [ebx+0x18], eax
	test eax, eax
	jz _Z8IN_Framev_10
	test esi, esi
	jnz _Z8IN_Framev_50
	test edi, edi
	jz _Z8IN_Framev_10
_Z8IN_Framev_50:
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov eax, [ebx+0x8]
	mov [esp], eax
	call GetWindowRect
	mov eax, [ebp-0x28]
	add eax, [ebp-0x30]
	mov ecx, eax
	shr ecx, 0x1f
	add ecx, eax
	sar ecx, 1
	mov [window_center_x], ecx
	mov edx, [ebp-0x2c]
	add edx, [ebp-0x24]
	mov eax, edx
	shr eax, 0x1f
	add eax, edx
	sar eax, 1
	mov [window_center_y], eax
	mov [esp+0x4], eax
	mov [esp], ecx
	call SetCursorPos
	mov eax, [window_center_x]
	mov [s_wmv+0x4], eax
	mov eax, [window_center_y]
	mov [s_wmv+0x8], eax
_Z8IN_Framev_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z8IN_Framev_20:
	cmp byte [s_wmv+0xc], 0x0
	jz _Z8IN_Framev_10
	mov byte [s_wmv+0xc], 0x0
	mov dword [esp], 0x0
	call _ZN8MacTools10ShowCursorEPK5Point
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z8IN_Framev_30:
	cmp byte [s_wmv+0xc], 0x0
	jnz _Z8IN_Framev_60
	call _ZN10MacDisplay8IsActiveEv
	test al, al
	setnz byte [s_wmv+0xc]
	jmp _Z8IN_Framev_60
_Z8IN_Framev_40:
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov eax, g_wv
	mov eax, [eax+0x8]
	mov [esp], eax
	call GetWindowRect
	mov edx, [ebp-0x20]
	mov eax, [ebp-0x30]
	cmp edx, eax
	jge _Z8IN_Framev_70
	mov edx, eax
	mov [ebp-0x20], eax
	mov ebx, 0x1
_Z8IN_Framev_110:
	mov eax, [ebp-0x1c]
	mov ecx, [ebp-0x2c]
	cmp eax, ecx
	jge _Z8IN_Framev_80
	mov eax, ecx
	mov [ebp-0x1c], ecx
_Z8IN_Framev_130:
	mov [esp+0x4], eax
	mov [esp], edx
	call SetCursorPos
	mov edx, [ebp-0x20]
	mov eax, [ebp-0x1c]
	jmp _Z8IN_Framev_90
_Z8IN_Framev_70:
	mov eax, [ebp-0x28]
	cmp edx, eax
	jge _Z8IN_Framev_100
	xor ebx, ebx
	jmp _Z8IN_Framev_110
_Z8IN_Framev_80:
	mov ecx, [ebp-0x24]
	cmp eax, ecx
	jl _Z8IN_Framev_120
	lea eax, [ecx-0x1]
	mov [ebp-0x1c], eax
	jmp _Z8IN_Framev_130
_Z8IN_Framev_100:
	lea edx, [eax-0x1]
	mov [ebp-0x20], edx
	mov ebx, 0x1
	jmp _Z8IN_Framev_110
_Z8IN_Framev_120:
	test bl, bl
	jz _Z8IN_Framev_90
	jmp _Z8IN_Framev_130
	nop


;CCallOfDutyEngine::DoActivate()
_ZN17CCallOfDutyEngine10DoActivateEv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, g_wv
	mov dword [ebx+0x14], 0x0
	mov dword [esp], 0x0
	call _Z15Key_ClearStatesi
	mov eax, [ebx+0x14]
	test eax, eax
	setz dl
	movzx eax, dl
	mov [ebx+0x10], eax
	mov [in_appactive], eax
	test dl, dl
	jnz _ZN17CCallOfDutyEngine10DoActivateEv_10
	cmp byte [s_wmv+0xd], 0x0
	jz _ZN17CCallOfDutyEngine10DoActivateEv_20
	cmp byte [s_wmv+0xc], 0x0
	jnz _ZN17CCallOfDutyEngine10DoActivateEv_30
_ZN17CCallOfDutyEngine10DoActivateEv_20:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_ZN17CCallOfDutyEngine10DoActivateEv_10:
	cmp byte [s_wmv+0xd], 0x0
	jz _ZN17CCallOfDutyEngine10DoActivateEv_20
	mov eax, [in_mouse]
	cmp byte [eax+0xc], 0x0
	jnz _ZN17CCallOfDutyEngine10DoActivateEv_40
	mov byte [s_wmv+0xc], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_ZN17CCallOfDutyEngine10DoActivateEv_30:
	mov byte [s_wmv+0xc], 0x0
	mov dword [ebp+0x8], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _ZN8MacTools10ShowCursorEPK5Point
_ZN17CCallOfDutyEngine10DoActivateEv_40:
	call _ZN10MacDisplay8IsActiveEv
	test al, al
	setnz byte [s_wmv+0xc]
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;CCallOfDutyEngine::DoMouseDown(unsigned short, Point, unsigned long, unsigned long)
_ZN17CCallOfDutyEngine11DoMouseDownEt5Pointmm:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	movzx eax, word [ebp+0xc]
	cmp ax, 0x20
	jbe _ZN17CCallOfDutyEngine11DoMouseDownEt5Pointmm_10
	leave
	ret
_ZN17CCallOfDutyEngine11DoMouseDownEt5Pointmm_10:
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x1
	movzx eax, ax
	add eax, 0xc7
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x0
	call _Z12Sys_QueEventi14sysEventType_tiiiPv
	leave
	ret


;CCallOfDutyEngine::DoTextInput(unsigned short)
_ZN17CCallOfDutyEngine11DoTextInputEt:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	movzx ebx, word [ebp+0xc]
	movzx esi, bx
	test esi, 0xff80
	jnz _ZN17CCallOfDutyEngine11DoTextInputEt_10
	mov eax, [0xd5cc084]
	mov eax, [eax+esi*4+0x34]
	shr eax, 0x12
	and eax, 0x1
_ZN17CCallOfDutyEngine11DoTextInputEt_90:
	test eax, eax
	jnz _ZN17CCallOfDutyEngine11DoTextInputEt_20
	cmp bx, 0x8
	jz _ZN17CCallOfDutyEngine11DoTextInputEt_20
	cmp bx, 0x7f
	jbe _ZN17CCallOfDutyEngine11DoTextInputEt_30
_ZN17CCallOfDutyEngine11DoTextInputEt_20:
	cmp bx, 0x40
	jz _ZN17CCallOfDutyEngine11DoTextInputEt_40
	cmp bx, 0x5e
	jz _ZN17CCallOfDutyEngine11DoTextInputEt_50
	cmp bx, 0x5c
	jz _ZN17CCallOfDutyEngine11DoTextInputEt_60
_ZN17CCallOfDutyEngine11DoTextInputEt_80:
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x2
	mov dword [esp], 0x0
	call _Z12Sys_QueEventi14sysEventType_tiiiPv
_ZN17CCallOfDutyEngine11DoTextInputEt_30:
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_ZN17CCallOfDutyEngine11DoTextInputEt_60:
	call _ZN11MacFeatures19GetKeyboardLanguageEv
	cmp eax, 0x3
	jz _ZN17CCallOfDutyEngine11DoTextInputEt_70
	mov esi, 0x5c
	jmp _ZN17CCallOfDutyEngine11DoTextInputEt_80
_ZN17CCallOfDutyEngine11DoTextInputEt_10:
	mov dword [esp+0x4], 0x40000
	mov [esp], esi
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	jmp _ZN17CCallOfDutyEngine11DoTextInputEt_90
_ZN17CCallOfDutyEngine11DoTextInputEt_40:
	call _ZN11MacFeatures19GetKeyboardLanguageEv
	sub eax, 0x1
	jnz _ZN17CCallOfDutyEngine11DoTextInputEt_80
_ZN17CCallOfDutyEngine11DoTextInputEt_70:
	mov esi, 0x60
	jmp _ZN17CCallOfDutyEngine11DoTextInputEt_80
_ZN17CCallOfDutyEngine11DoTextInputEt_50:
	call _ZN11MacFeatures19GetKeyboardLanguageEv
	cmp eax, 0x2
	jnz _ZN17CCallOfDutyEngine11DoTextInputEt_80
	mov esi, 0x60
	jmp _ZN17CCallOfDutyEngine11DoTextInputEt_80


;CCallOfDutyEngine::DoDeactivate()
_ZN17CCallOfDutyEngine12DoDeactivateEv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, g_wv
	mov dword [ebx+0x14], 0x0
	mov dword [esp], 0x0
	call _Z15Key_ClearStatesi
	mov dword [ebx+0x10], 0x0
	mov dword [in_appactive], 0x0
	cmp byte [s_wmv+0xd], 0x0
	jz _ZN17CCallOfDutyEngine12DoDeactivateEv_10
	cmp byte [s_wmv+0xc], 0x0
	jnz _ZN17CCallOfDutyEngine12DoDeactivateEv_20
_ZN17CCallOfDutyEngine12DoDeactivateEv_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_ZN17CCallOfDutyEngine12DoDeactivateEv_20:
	mov byte [s_wmv+0xc], 0x0
	mov dword [ebp+0x8], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _ZN8MacTools10ShowCursorEPK5Point
	nop


;CCallOfDutyEngine::DoMouseMoved(Point, Point, unsigned long)
_ZN17CCallOfDutyEngine12DoMouseMovedE5PointS0_m:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;CCallOfDutyEngine::DoMouseWheel(long, Point, unsigned long)
_ZN17CCallOfDutyEngine12DoMouseWheelEl5Pointm:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov edx, [ebp+0xc]
	test edx, edx
	jle _ZN17CCallOfDutyEngine12DoMouseWheelEl5Pointm_10
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0xce
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x0
	call _Z12Sys_QueEventi14sysEventType_tiiiPv
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0xce
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x0
	call _Z12Sys_QueEventi14sysEventType_tiiiPv
	leave
	ret
_ZN17CCallOfDutyEngine12DoMouseWheelEl5Pointm_10:
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0xcd
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x0
	call _Z12Sys_QueEventi14sysEventType_tiiiPv
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0xcd
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x0
	call _Z12Sys_QueEventi14sysEventType_tiiiPv
	leave
	ret
	nop


;CCallOfDutyEngine::DoKeyUp(unsigned char, unsigned long)
_ZN17CCallOfDutyEngine7DoKeyUpEhm:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov ebx, [ebp+0x10]
	movzx esi, byte [ebp+0xc]
	cmp ebx, 0x7f
	jbe _ZN17CCallOfDutyEngine7DoKeyUpEhm_10
_ZN17CCallOfDutyEngine7DoKeyUpEhm_130:
	xor edx, edx
_ZN17CCallOfDutyEngine7DoKeyUpEhm_110:
	mov eax, edx
	test dl, dl
	jnz _ZN17CCallOfDutyEngine7DoKeyUpEhm_20
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_ZN17CCallOfDutyEngine7DoKeyUpEhm_10:
	call _ZN11MacFeatures13IsISOKeyboardEv
	test al, al
	jnz _ZN17CCallOfDutyEngine7DoKeyUpEhm_30
	cmp ebx, 0x32
	jnz _ZN17CCallOfDutyEngine7DoKeyUpEhm_40
_ZN17CCallOfDutyEngine7DoKeyUpEhm_50:
	mov eax, 0x7e
_ZN17CCallOfDutyEngine7DoKeyUpEhm_20:
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	movzx eax, al
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x0
	call _Z12Sys_QueEventi14sysEventType_tiiiPv
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_ZN17CCallOfDutyEngine7DoKeyUpEhm_30:
	cmp ebx, 0xa
	jz _ZN17CCallOfDutyEngine7DoKeyUpEhm_50
_ZN17CCallOfDutyEngine7DoKeyUpEhm_40:
	mov [esp], ebx
	call _Z20TranslateKeyCodeToVKm
	mov edx, eax
	lea eax, [edx-0x1]
	cmp al, 0x90
	ja _ZN17CCallOfDutyEngine7DoKeyUpEhm_60
	movzx eax, dl
	movzx eax, byte [eax+eax+virtualKeyConvert+0x1]
	cmp al, 0xbf
	jz _ZN17CCallOfDutyEngine7DoKeyUpEhm_70
	test al, al
	jnz _ZN17CCallOfDutyEngine7DoKeyUpEhm_80
_ZN17CCallOfDutyEngine7DoKeyUpEhm_120:
	mov dword [esp+0x4], 0x2
	movzx eax, dl
	mov [esp], eax
	call MapVirtualKeyA
	cmp al, 0x0
	jz _ZN17CCallOfDutyEngine7DoKeyUpEhm_90
	jl _ZN17CCallOfDutyEngine7DoKeyUpEhm_100
_ZN17CCallOfDutyEngine7DoKeyUpEhm_80:
	movzx edx, al
	jmp _ZN17CCallOfDutyEngine7DoKeyUpEhm_110
_ZN17CCallOfDutyEngine7DoKeyUpEhm_60:
	cmp dl, 0x92
	jnz _ZN17CCallOfDutyEngine7DoKeyUpEhm_120
	mov edx, 0xc7
	jmp _ZN17CCallOfDutyEngine7DoKeyUpEhm_110
_ZN17CCallOfDutyEngine7DoKeyUpEhm_90:
	movzx eax, byte [extendedVirtualKeyConvert]
	test al, al
	jz _ZN17CCallOfDutyEngine7DoKeyUpEhm_130
	mov ebx, esi
	and ebx, 0xff
	mov edx, esi
	cmp al, dl
	jz _ZN17CCallOfDutyEngine7DoKeyUpEhm_140
	xor ecx, ecx
	mov edx, extendedVirtualKeyConvert
_ZN17CCallOfDutyEngine7DoKeyUpEhm_150:
	add ecx, 0x1
	movzx eax, byte [edx+0x2]
	test al, al
	jz _ZN17CCallOfDutyEngine7DoKeyUpEhm_130
	add edx, 0x2
	movzx eax, al
	cmp eax, ebx
	jnz _ZN17CCallOfDutyEngine7DoKeyUpEhm_150
_ZN17CCallOfDutyEngine7DoKeyUpEhm_180:
	movzx edx, byte [ecx+ecx+extendedVirtualKeyConvert+0x1]
	jmp _ZN17CCallOfDutyEngine7DoKeyUpEhm_110
_ZN17CCallOfDutyEngine7DoKeyUpEhm_100:
	movzx edx, byte [extendedVirtualKeyConvert]
	test dl, dl
	jz _ZN17CCallOfDutyEngine7DoKeyUpEhm_80
	cmp al, dl
	jz _ZN17CCallOfDutyEngine7DoKeyUpEhm_160
	xor ebx, ebx
	mov edx, extendedVirtualKeyConvert
_ZN17CCallOfDutyEngine7DoKeyUpEhm_170:
	add ebx, 0x1
	movzx ecx, byte [edx+0x2]
	test cl, cl
	jz _ZN17CCallOfDutyEngine7DoKeyUpEhm_80
	add edx, 0x2
	cmp cl, al
	jnz _ZN17CCallOfDutyEngine7DoKeyUpEhm_170
_ZN17CCallOfDutyEngine7DoKeyUpEhm_190:
	movzx edx, byte [ebx+ebx+extendedVirtualKeyConvert+0x1]
	jmp _ZN17CCallOfDutyEngine7DoKeyUpEhm_110
_ZN17CCallOfDutyEngine7DoKeyUpEhm_70:
	mov edx, 0xd
	mov eax, esi
	cmp al, 0xd
	mov eax, 0xbf
	cmovnz edx, eax
	jmp _ZN17CCallOfDutyEngine7DoKeyUpEhm_110
_ZN17CCallOfDutyEngine7DoKeyUpEhm_140:
	xor ecx, ecx
	jmp _ZN17CCallOfDutyEngine7DoKeyUpEhm_180
_ZN17CCallOfDutyEngine7DoKeyUpEhm_160:
	xor ebx, ebx
	jmp _ZN17CCallOfDutyEngine7DoKeyUpEhm_190


;CCallOfDutyEngine::DoKeyDown(unsigned char, unsigned long)
_ZN17CCallOfDutyEngine9DoKeyDownEhm:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov ebx, [ebp+0x10]
	movzx esi, byte [ebp+0xc]
	cmp ebx, 0x7f
	jbe _ZN17CCallOfDutyEngine9DoKeyDownEhm_10
_ZN17CCallOfDutyEngine9DoKeyDownEhm_130:
	xor edx, edx
_ZN17CCallOfDutyEngine9DoKeyDownEhm_110:
	mov eax, edx
	test dl, dl
	jnz _ZN17CCallOfDutyEngine9DoKeyDownEhm_20
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_ZN17CCallOfDutyEngine9DoKeyDownEhm_10:
	call _ZN11MacFeatures13IsISOKeyboardEv
	test al, al
	jnz _ZN17CCallOfDutyEngine9DoKeyDownEhm_30
	cmp ebx, 0x32
	jnz _ZN17CCallOfDutyEngine9DoKeyDownEhm_40
_ZN17CCallOfDutyEngine9DoKeyDownEhm_50:
	mov eax, 0x7e
_ZN17CCallOfDutyEngine9DoKeyDownEhm_20:
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x1
	movzx eax, al
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x0
	call _Z12Sys_QueEventi14sysEventType_tiiiPv
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_ZN17CCallOfDutyEngine9DoKeyDownEhm_30:
	cmp ebx, 0xa
	jz _ZN17CCallOfDutyEngine9DoKeyDownEhm_50
_ZN17CCallOfDutyEngine9DoKeyDownEhm_40:
	mov [esp], ebx
	call _Z20TranslateKeyCodeToVKm
	mov edx, eax
	lea eax, [edx-0x1]
	cmp al, 0x90
	ja _ZN17CCallOfDutyEngine9DoKeyDownEhm_60
	movzx eax, dl
	movzx eax, byte [eax+eax+virtualKeyConvert+0x1]
	cmp al, 0xbf
	jz _ZN17CCallOfDutyEngine9DoKeyDownEhm_70
	test al, al
	jnz _ZN17CCallOfDutyEngine9DoKeyDownEhm_80
_ZN17CCallOfDutyEngine9DoKeyDownEhm_120:
	mov dword [esp+0x4], 0x2
	movzx eax, dl
	mov [esp], eax
	call MapVirtualKeyA
	cmp al, 0x0
	jz _ZN17CCallOfDutyEngine9DoKeyDownEhm_90
	jl _ZN17CCallOfDutyEngine9DoKeyDownEhm_100
_ZN17CCallOfDutyEngine9DoKeyDownEhm_80:
	movzx edx, al
	jmp _ZN17CCallOfDutyEngine9DoKeyDownEhm_110
_ZN17CCallOfDutyEngine9DoKeyDownEhm_60:
	cmp dl, 0x92
	jnz _ZN17CCallOfDutyEngine9DoKeyDownEhm_120
	mov edx, 0xc7
	jmp _ZN17CCallOfDutyEngine9DoKeyDownEhm_110
_ZN17CCallOfDutyEngine9DoKeyDownEhm_90:
	movzx eax, byte [extendedVirtualKeyConvert]
	test al, al
	jz _ZN17CCallOfDutyEngine9DoKeyDownEhm_130
	mov ebx, esi
	and ebx, 0xff
	mov edx, esi
	cmp al, dl
	jz _ZN17CCallOfDutyEngine9DoKeyDownEhm_140
	xor ecx, ecx
	mov edx, extendedVirtualKeyConvert
_ZN17CCallOfDutyEngine9DoKeyDownEhm_150:
	add ecx, 0x1
	movzx eax, byte [edx+0x2]
	test al, al
	jz _ZN17CCallOfDutyEngine9DoKeyDownEhm_130
	add edx, 0x2
	movzx eax, al
	cmp eax, ebx
	jnz _ZN17CCallOfDutyEngine9DoKeyDownEhm_150
_ZN17CCallOfDutyEngine9DoKeyDownEhm_180:
	movzx edx, byte [ecx+ecx+extendedVirtualKeyConvert+0x1]
	jmp _ZN17CCallOfDutyEngine9DoKeyDownEhm_110
_ZN17CCallOfDutyEngine9DoKeyDownEhm_100:
	movzx edx, byte [extendedVirtualKeyConvert]
	test dl, dl
	jz _ZN17CCallOfDutyEngine9DoKeyDownEhm_80
	cmp al, dl
	jz _ZN17CCallOfDutyEngine9DoKeyDownEhm_160
	xor ebx, ebx
	mov edx, extendedVirtualKeyConvert
_ZN17CCallOfDutyEngine9DoKeyDownEhm_170:
	add ebx, 0x1
	movzx ecx, byte [edx+0x2]
	test cl, cl
	jz _ZN17CCallOfDutyEngine9DoKeyDownEhm_80
	add edx, 0x2
	cmp cl, al
	jnz _ZN17CCallOfDutyEngine9DoKeyDownEhm_170
_ZN17CCallOfDutyEngine9DoKeyDownEhm_190:
	movzx edx, byte [ebx+ebx+extendedVirtualKeyConvert+0x1]
	jmp _ZN17CCallOfDutyEngine9DoKeyDownEhm_110
_ZN17CCallOfDutyEngine9DoKeyDownEhm_70:
	mov edx, 0xd
	mov eax, esi
	cmp al, 0xd
	mov eax, 0xbf
	cmovnz edx, eax
	jmp _ZN17CCallOfDutyEngine9DoKeyDownEhm_110
_ZN17CCallOfDutyEngine9DoKeyDownEhm_140:
	xor ecx, ecx
	jmp _ZN17CCallOfDutyEngine9DoKeyDownEhm_180
_ZN17CCallOfDutyEngine9DoKeyDownEhm_160:
	xor ebx, ebx
	jmp _ZN17CCallOfDutyEngine9DoKeyDownEhm_190
	add [eax], al


;CCallOfDutyEngine::DoMouseUp(unsigned short, Point, unsigned long, unsigned long)
_ZN17CCallOfDutyEngine9DoMouseUpEt5Pointmm:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	movzx eax, word [ebp+0xc]
	cmp ax, 0x20
	jbe _ZN17CCallOfDutyEngine9DoMouseUpEt5Pointmm_10
	leave
	ret
_ZN17CCallOfDutyEngine9DoMouseUpEt5Pointmm_10:
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	movzx eax, ax
	add eax, 0xc7
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x0
	call _Z12Sys_QueEventi14sysEventType_tiiiPv
	leave
	ret


;Initialized global or static variables of mac_input:
SECTION .data
extendedVirtualKeyConvert: dd 0x81c080b5, 0x838882a7, 0x858a8487, 0x87be868c, 0x898f888d, 0x8b938a8e, 0x8d988c96, 0x8f9a8e97, 0x919d90bf, 0x939f929c, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
virtualKeyConvert: dd 0xc8c80000, 0xc9c9, 0xcbcbcaca, 0xcccc, 0x9097f7f, 0x0, 0xbf0d00ba, 0x0, 0x9f9fa0a0, 0x96969e9e, 0x9797, 0x0, 0x0, 0x1b1b0000, 0x0, 0x0, 0xa4b82020, 0xa6bca3be, 0x9cb9a5b6, 0x9dbb9ab7, 0x9bbd, 0x0, 0xa1c00000, 0xa2c1, 0x31313030, 0x33333232, 0x35353434, 0x37373636, 0x39393838, 0x0, 0x0, 0x0, 0x61610000, 0x63636262, 0x65656464, 0x67676666, 0x69696868, 0x6b6b6a6a, 0x6d6d6c6c, 0x6f6f6e6e, 0x71717070, 0x73737272, 0x75757474, 0x77777676, 0x79797878, 0x7a7a, 0x0, 0x0, 0xbcbcc0c0, 0xbebebdbd, 0xbabab9b9, 0xb6b6bbbb, 0xb8b8b7b7, 0xc4c4c6c6, 0xc3c30000, 0xc2c2c1c1, 0xa8a8a7a7, 0xaaaaa9a9, 0xacacabab, 0xaeaeadad, 0xb0b0afaf, 0xb2b2b1b1, 0xb4b4b3b3, 0xb5b5, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc5c5, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of mac_input:
SECTION .rdata


;Zero initialized global or static variables of mac_input:
SECTION .bss
in_appactive: resb 0x4
s_wmv: resb 0x10
window_center_y: resb 0x4
window_center_x: resb 0x68
in_mouse: resb 0x4


;All cstrings:
SECTION .rdata
_cstring_initialize_the_m:		db "Initialize the mouse drivers",0
_cstring_in_mouse:		db "in_mouse",0
_cstring_mouse_control_no:		db "Mouse control not active.",0ah,0
_cstring_clicktocontinue:		db "ClickToContinue",0



;All constant floats and doubles:
SECTION .rdata

