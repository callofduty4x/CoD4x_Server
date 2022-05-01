;Imports of r_cmds:
	extern _Z24Material_UpdatePicmipAllv
	extern _Z19R_ScreenshotCommand17GfxScreenshotType
	extern _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	extern _Z13R_ImageList_fv
	extern _Z28R_Cmd_ReloadMaterialTexturesv
	extern _Z13R_Cmd_LoadSunv
	extern _Z13R_Cmd_SaveSunv
	extern _Z25R_StaticModelCacheStats_fv
	extern _Z25R_StaticModelCacheFlush_fv
	extern _Z17Cmd_RemoveCommandPKc

;Exports of r_cmds:
	global _Z17R_Cmd_ApplyPicmipv
	global _Z16R_Cmd_Screenshotv
	global _Z20R_Cmd_ScreenshotJpegv
	global _ZZ14R_RegisterCmdsvE29R_StaticModelCacheFlush_f_VAR
	global _ZZ14R_RegisterCmdsvE29R_StaticModelCacheStats_f_VAR
	global _ZZ14R_RegisterCmdsvE17R_Cmd_SaveSun_VAR
	global _ZZ14R_RegisterCmdsvE17R_Cmd_LoadSun_VAR
	global _ZZ14R_RegisterCmdsvE32R_Cmd_ReloadMaterialTextures_VAR
	global _ZZ14R_RegisterCmdsvE21R_Cmd_ApplyPicmip_VAR
	global _ZZ14R_RegisterCmdsvE17R_ImageList_f_VAR
	global _ZZ14R_RegisterCmdsvE24R_Cmd_ScreenshotJpeg_VAR
	global _ZZ14R_RegisterCmdsvE20R_Cmd_Screenshot_VAR
	global _Z14R_RegisterCmdsv
	global _Z16R_UnregisterCmdsv


SECTION .text


;R_Cmd_ApplyPicmip()
_Z17R_Cmd_ApplyPicmipv:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z24Material_UpdatePicmipAllv
	nop


;R_Cmd_Screenshot()
_Z16R_Cmd_Screenshotv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], 0x1
	call _Z19R_ScreenshotCommand17GfxScreenshotType
	leave
	ret


;R_Cmd_ScreenshotJpeg()
_Z20R_Cmd_ScreenshotJpegv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], 0x0
	call _Z19R_ScreenshotCommand17GfxScreenshotType
	leave
	ret


;R_RegisterCmds()
_Z14R_RegisterCmdsv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], _ZZ14R_RegisterCmdsvE20R_Cmd_Screenshot_VAR
	mov dword [esp+0x4], _Z16R_Cmd_Screenshotv
	mov dword [esp], _cstring_screenshot
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ14R_RegisterCmdsvE24R_Cmd_ScreenshotJpeg_VAR
	mov dword [esp+0x4], _Z20R_Cmd_ScreenshotJpegv
	mov dword [esp], _cstring_screenshotjpeg
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ14R_RegisterCmdsvE17R_ImageList_f_VAR
	mov eax, _Z13R_ImageList_fv
	mov [esp+0x4], eax
	mov dword [esp], _cstring_imagelist
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ14R_RegisterCmdsvE21R_Cmd_ApplyPicmip_VAR
	mov dword [esp+0x4], _Z17R_Cmd_ApplyPicmipv
	mov dword [esp], _cstring_r_applypicmip
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ14R_RegisterCmdsvE32R_Cmd_ReloadMaterialTextures_VAR
	mov eax, _Z28R_Cmd_ReloadMaterialTexturesv
	mov [esp+0x4], eax
	mov dword [esp], _cstring_reloadmaterialte
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ14R_RegisterCmdsvE17R_Cmd_LoadSun_VAR
	mov eax, _Z13R_Cmd_LoadSunv
	mov [esp+0x4], eax
	mov dword [esp], _cstring_r_loadsun
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ14R_RegisterCmdsvE17R_Cmd_SaveSun_VAR
	mov eax, _Z13R_Cmd_SaveSunv
	mov [esp+0x4], eax
	mov dword [esp], _cstring_r_savesun
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ14R_RegisterCmdsvE29R_StaticModelCacheStats_f_VAR
	mov eax, _Z25R_StaticModelCacheStats_fv
	mov [esp+0x4], eax
	mov dword [esp], _cstring_r_smc_stats
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ14R_RegisterCmdsvE29R_StaticModelCacheFlush_f_VAR
	mov eax, _Z25R_StaticModelCacheFlush_fv
	mov [esp+0x4], eax
	mov dword [esp], _cstring_r_smc_flush
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	leave
	ret


;R_UnregisterCmds()
_Z16R_UnregisterCmdsv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], _cstring_r_applypicmip
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_screenshot
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_screenshotjpeg
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_imagelist
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_reloadmaterialte
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_r_loadsun
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_r_savesun
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_r_smc_stats
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_r_smc_flush
	call _Z17Cmd_RemoveCommandPKc
	leave
	ret


;Initialized global or static variables of r_cmds:
SECTION .data


;Initialized constant data of r_cmds:
SECTION .rdata


;Zero initialized global or static variables of r_cmds:
SECTION .bss
_ZZ14R_RegisterCmdsvE29R_StaticModelCacheFlush_f_VAR: resb 0x14
_ZZ14R_RegisterCmdsvE29R_StaticModelCacheStats_f_VAR: resb 0x14
_ZZ14R_RegisterCmdsvE17R_Cmd_SaveSun_VAR: resb 0x14
_ZZ14R_RegisterCmdsvE17R_Cmd_LoadSun_VAR: resb 0x14
_ZZ14R_RegisterCmdsvE32R_Cmd_ReloadMaterialTextures_VAR: resb 0x14
_ZZ14R_RegisterCmdsvE21R_Cmd_ApplyPicmip_VAR: resb 0x14
_ZZ14R_RegisterCmdsvE17R_ImageList_f_VAR: resb 0x14
_ZZ14R_RegisterCmdsvE24R_Cmd_ScreenshotJpeg_VAR: resb 0x14
_ZZ14R_RegisterCmdsvE20R_Cmd_Screenshot_VAR: resb 0x60


;All cstrings:
SECTION .rdata
_cstring_screenshot:		db "screenshot",0
_cstring_screenshotjpeg:		db "screenshotJpeg",0
_cstring_imagelist:		db "imagelist",0
_cstring_r_applypicmip:		db "r_applyPicmip",0
_cstring_reloadmaterialte:		db "reloadmaterialtextures",0
_cstring_r_loadsun:		db "r_loadsun",0
_cstring_r_savesun:		db "r_savesun",0
_cstring_r_smc_stats:		db "r_smc_stats",0
_cstring_r_smc_flush:		db "r_smc_flush",0



;All constant floats and doubles:
SECTION .rdata

