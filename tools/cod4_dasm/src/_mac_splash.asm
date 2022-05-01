;Imports of mac_splash:
	extern _ZN10MacDisplay13GetMainWindowEv
	extern ShowWindow
	extern _ZN14CMacGameEngine16DrawSplashScreenEPKc

;Exports of mac_splash:
	global _Z20Sys_HideSplashWindowv
	global _Z20Sys_ShowSplashWindowv
	global _Z22Sys_CreateSplashWindowv
	global _Z23Sys_DestroySplashWindowv


SECTION .text


;Sys_HideSplashWindow()
_Z20Sys_HideSplashWindowv:
	push ebp
	mov ebp, esp
	pop ebp
	ret


;Sys_ShowSplashWindow()
_Z20Sys_ShowSplashWindowv:
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
_Z22Sys_CreateSplashWindowv:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;Sys_DestroySplashWindow()
_Z23Sys_DestroySplashWindowv:
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

