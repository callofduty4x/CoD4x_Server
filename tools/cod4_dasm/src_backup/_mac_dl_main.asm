;Imports of mac_dl_main:
	extern GetDLRequestProgress
	extern legacyHacks
	extern DeleteDLRequest
	extern _Z10Com_PrintfiPKcz
	extern NewDLRequest
	extern _Z13FS_CreatePathPc
	extern StartDLRequest
	extern _Z11Com_DPrintfiPKcz
	extern StopDLRequest
	extern GetDLRequestName

;Exports of mac_dl_main:
	global dl_isMotd
	global dl_running
	global dl_request
	global _Z11DL_DLIsMotdv
	global _Z13DL_InProgressv
	global _Z15DL_DownloadLoopv
	global _Z16DL_BeginDownloadPKcS0_i
	global _Z17DL_CancelDownloadv


SECTION .text


;DL_DLIsMotd()
_Z11DL_DLIsMotdv:
	push ebp
	mov ebp, esp
	movzx eax, byte [dl_isMotd]
	pop ebp
	ret


;DL_InProgress()
_Z13DL_InProgressv:
	push ebp
	mov ebp, esp
	xor eax, eax
	cmp dword [dl_running], 0x0
	setg al
	pop ebp
	ret
	nop


;DL_DownloadLoop()
_Z15DL_DownloadLoopv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	lea eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov eax, [dl_request]
	mov [esp], eax
	call GetDLRequestProgress
	mov ebx, eax
	mov edx, [ebp-0xc]
	mov eax, legacyHacks
	mov [eax+0x4], edx
	test ebx, ebx
	jnz _Z15DL_DownloadLoopv_10
	xor eax, eax
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_Z15DL_DownloadLoopv_10:
	mov eax, [dl_request]
	mov [esp], eax
	call DeleteDLRequest
	mov dword [dl_request], 0x0
	mov dword [dl_running], 0x0
	test ebx, ebx
	jns _Z15DL_DownloadLoopv_20
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_dl_downloadloop_
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov eax, 0x2
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_Z15DL_DownloadLoopv_20:
	mov eax, 0x1
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;DL_BeginDownload(char const*, char const*, int)
_Z16DL_BeginDownloadPKcS0_i:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov edx, [dl_running]
	test edx, edx
	jnz _Z16DL_BeginDownloadPKcS0_i_10
_Z16DL_BeginDownloadPKcS0_i_50:
	test ebx, ebx
	jz _Z16DL_BeginDownloadPKcS0_i_20
	test esi, esi
	jz _Z16DL_BeginDownloadPKcS0_i_20
	call NewDLRequest
	mov [dl_request], eax
	test eax, eax
	jz _Z16DL_BeginDownloadPKcS0_i_30
	mov [esp], ebx
	call _Z13FS_CreatePathPc
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov eax, [dl_request]
	mov [esp], eax
	call StartDLRequest
	test al, al
	jnz _Z16DL_BeginDownloadPKcS0_i_40
	mov dword [esp+0x4], _cstring_startdlrequest_f
	mov dword [esp], 0x0
	call _Z11Com_DPrintfiPKcz
	mov eax, [dl_request]
	mov [esp], eax
	call DeleteDLRequest
	mov dword [dl_request], 0x0
	xor eax, eax
_Z16DL_BeginDownloadPKcS0_i_30:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z16DL_BeginDownloadPKcS0_i_20:
	mov dword [esp+0x4], _cstring_empty_download_u
	mov dword [esp], 0x0
	call _Z11Com_DPrintfiPKcz
	xor eax, eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z16DL_BeginDownloadPKcS0_i_10:
	mov eax, [dl_request]
	mov [esp], eax
	call StopDLRequest
	mov dword [dl_running], 0x0
	mov eax, [dl_request]
	test eax, eax
	jz _Z16DL_BeginDownloadPKcS0_i_50
	mov [esp], eax
	call DeleteDLRequest
	mov dword [dl_request], 0x0
	jmp _Z16DL_BeginDownloadPKcS0_i_50
_Z16DL_BeginDownloadPKcS0_i_40:
	mov dword [esp+0x8], 0x40
	mov eax, legacyHacks
	add eax, 0xc
	mov [esp+0x4], eax
	mov eax, [dl_request]
	mov [esp], eax
	call GetDLRequestName
	mov dword [dl_running], 0x1
	mov eax, 0x1
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	add [eax], al


;DL_CancelDownload()
_Z17DL_CancelDownloadv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [dl_running]
	test eax, eax
	jnz _Z17DL_CancelDownloadv_10
_Z17DL_CancelDownloadv_30:
	mov eax, [dl_request]
	test eax, eax
	jz _Z17DL_CancelDownloadv_20
	mov [esp], eax
	call DeleteDLRequest
	mov dword [dl_request], 0x0
_Z17DL_CancelDownloadv_20:
	leave
	ret
_Z17DL_CancelDownloadv_10:
	mov eax, [dl_request]
	mov [esp], eax
	call StopDLRequest
	mov dword [dl_running], 0x0
	jmp _Z17DL_CancelDownloadv_30
	nop


;Initialized global or static variables of mac_dl_main:
SECTION .data


;Initialized constant data of mac_dl_main:
SECTION .rdata


;Zero initialized global or static variables of mac_dl_main:
SECTION .bss
dl_isMotd: resb 0x4
dl_running: resb 0x4
dl_request: resb 0x78


;All cstrings:
SECTION .rdata
_cstring_dl_downloadloop_:		db "DL_DownloadLoop: request terminated with failure status %d",0ah,0
_cstring_startdlrequest_f:		db "StartDLRequest failed",0ah,0
_cstring_empty_download_u:		db "Empty download URL or empty local file name",0ah,0



;All constant floats and doubles:
SECTION .rdata

