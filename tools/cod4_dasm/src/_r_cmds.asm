;Imports of r_cmds:
	extern Material_UpdatePicmipAll
	extern R_ScreenshotCommand
	extern Cmd_AddCommand
	extern R_ImageList_f
	extern R_Cmd_ReloadMaterialTextures
	extern R_Cmd_LoadSun
	extern R_Cmd_SaveSun
	extern R_StaticModelCacheStats_f
	extern R_StaticModelCacheFlush_f
	extern Cmd_RemoveCommand

;Exports of r_cmds:
	global R_Cmd_ApplyPicmip
	global R_Cmd_Screenshot
	global R_Cmd_ScreenshotJpeg
	global _ZZ14R_RegisterCmdsvE29R_StaticModelCacheFlush_f_VAR
	global _ZZ14R_RegisterCmdsvE29R_StaticModelCacheStats_f_VAR
	global _ZZ14R_RegisterCmdsvE17R_Cmd_SaveSun_VAR
	global _ZZ14R_RegisterCmdsvE17R_Cmd_LoadSun_VAR
	global _ZZ14R_RegisterCmdsvE32R_Cmd_ReloadMaterialTextures_VAR
	global _ZZ14R_RegisterCmdsvE21R_Cmd_ApplyPicmip_VAR
	global _ZZ14R_RegisterCmdsvE17R_ImageList_f_VAR
	global _ZZ14R_RegisterCmdsvE24R_Cmd_ScreenshotJpeg_VAR
	global _ZZ14R_RegisterCmdsvE20R_Cmd_Screenshot_VAR
	global R_RegisterCmds
	global R_UnregisterCmds


SECTION .text


;R_Cmd_ApplyPicmip()
R_Cmd_ApplyPicmip:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Material_UpdatePicmipAll
	nop


;R_Cmd_Screenshot()
R_Cmd_Screenshot:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], 0x1
	call R_ScreenshotCommand
	leave
	ret


;R_Cmd_ScreenshotJpeg()
R_Cmd_ScreenshotJpeg:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], 0x0
	call R_ScreenshotCommand
	leave
	ret


;R_RegisterCmds()
R_RegisterCmds:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], _ZZ14R_RegisterCmdsvE20R_Cmd_Screenshot_VAR
	mov dword [esp+0x4], R_Cmd_Screenshot
	mov dword [esp], _cstring_screenshot
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ14R_RegisterCmdsvE24R_Cmd_ScreenshotJpeg_VAR
	mov dword [esp+0x4], R_Cmd_ScreenshotJpeg
	mov dword [esp], _cstring_screenshotjpeg
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ14R_RegisterCmdsvE17R_ImageList_f_VAR
	mov eax, R_ImageList_f
	mov [esp+0x4], eax
	mov dword [esp], _cstring_imagelist
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ14R_RegisterCmdsvE21R_Cmd_ApplyPicmip_VAR
	mov dword [esp+0x4], R_Cmd_ApplyPicmip
	mov dword [esp], _cstring_r_applypicmip
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ14R_RegisterCmdsvE32R_Cmd_ReloadMaterialTextures_VAR
	mov eax, R_Cmd_ReloadMaterialTextures
	mov [esp+0x4], eax
	mov dword [esp], _cstring_reloadmaterialte
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ14R_RegisterCmdsvE17R_Cmd_LoadSun_VAR
	mov eax, R_Cmd_LoadSun
	mov [esp+0x4], eax
	mov dword [esp], _cstring_r_loadsun
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ14R_RegisterCmdsvE17R_Cmd_SaveSun_VAR
	mov eax, R_Cmd_SaveSun
	mov [esp+0x4], eax
	mov dword [esp], _cstring_r_savesun
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ14R_RegisterCmdsvE29R_StaticModelCacheStats_f_VAR
	mov eax, R_StaticModelCacheStats_f
	mov [esp+0x4], eax
	mov dword [esp], _cstring_r_smc_stats
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ14R_RegisterCmdsvE29R_StaticModelCacheFlush_f_VAR
	mov eax, R_StaticModelCacheFlush_f
	mov [esp+0x4], eax
	mov dword [esp], _cstring_r_smc_flush
	call Cmd_AddCommand
	leave
	ret


;R_UnregisterCmds()
R_UnregisterCmds:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], _cstring_r_applypicmip
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_screenshot
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_screenshotjpeg
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_imagelist
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_reloadmaterialte
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_r_loadsun
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_r_savesun
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_r_smc_stats
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_r_smc_flush
	call Cmd_RemoveCommand
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

