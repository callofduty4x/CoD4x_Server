;Imports of mac_splash:
	extern _ZN10MacDisplay13GetMainWindowEv
	extern ShowWindow
	extern _ZN14CMacGameEngine16DrawSplashScreenEPKc

;Exports of mac_splash:
	global Sys_HideSplashWindow
	global Sys_ShowSplashWindow
	global Sys_CreateSplashWindow
	global Sys_DestroySplashWindow


SECTION .text


;Sys_HideSplashWindow()
Sys_HideSplashWindow:
	push ebp
	mov ebp, esp
	pop ebp
	ret


;Sys_ShowSplashWindow()
Sys_ShowSplashWindow:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	call _ZN10MacDisplay13GetMainWindowEv
	mov [esp], eax
	call ShowWindow
	mov dword [esp], _cstring_codpng
	call _ZN14CMacGameEngine16DrawSplashScreenEPKc
	leave
	ret
	nop


;Sys_CreateSplashWindow()
Sys_CreateSplashWindow:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;Sys_DestroySplashWindow()
Sys_DestroySplashWindow:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;Initialized global or static variables of mac_splash:
SECTION .data


;Initialized constant data of mac_splash:
SECTION .rdata


;Zero initialized global or static variables of mac_splash:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_codpng:		db "cod.png",0



;All constant floats and doubles:
SECTION .rdata

