;Imports of mac_dl_main:
	extern GetDLRequestProgress
	extern legacyHacks
	extern DeleteDLRequest
	extern Com_Printf
	extern NewDLRequest
	extern FS_CreatePath
	extern StartDLRequest
	extern Com_DPrintf
	extern StopDLRequest
	extern GetDLRequestName

;Exports of mac_dl_main:
	global dl_isMotd
	global dl_running
	global dl_request
	global DL_DLIsMotd
	global DL_InProgress
	global DL_DownloadLoop
	global DL_BeginDownload
	global DL_CancelDownload


SECTION .text


;DL_DLIsMotd()
DL_DLIsMotd:
	push ebp
	mov ebp, esp
	movzx eax, byte [dl_isMotd]
	pop ebp
	ret


;DL_InProgress()
DL_InProgress:
	push ebp
	mov ebp, esp
	xor eax, eax
	cmp dword [dl_running], 0x0
	setg al
	pop ebp
	ret
	nop


;DL_DownloadLoop()
DL_DownloadLoop:
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
	jnz DL_DownloadLoop_10
	xor eax, eax
	add esp, 0x24
	pop ebx
	pop ebp
	ret
DL_DownloadLoop_10:
	mov eax, [dl_request]
	mov [esp], eax
	call DeleteDLRequest
	mov dword [dl_request], 0x0
	mov dword [dl_running], 0x0
	test ebx, ebx
	jns DL_DownloadLoop_20
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_dl_downloadloop_
	mov dword [esp], 0x0
	call Com_Printf
	mov eax, 0x2
	add esp, 0x24
	pop ebx
	pop ebp
	ret
DL_DownloadLoop_20:
	mov eax, 0x1
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;DL_BeginDownload(char const*, char const*, int)
DL_BeginDownload:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov edx, [dl_running]
	test edx, edx
	jnz DL_BeginDownload_10
DL_BeginDownload_50:
	test ebx, ebx
	jz DL_BeginDownload_20
	test esi, esi
	jz DL_BeginDownload_20
	call NewDLRequest
	mov [dl_request], eax
	test eax, eax
	jz DL_BeginDownload_30
	mov [esp], ebx
	call FS_CreatePath
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov eax, [dl_request]
	mov [esp], eax
	call StartDLRequest
	test al, al
	jnz DL_BeginDownload_40
	mov dword [esp+0x4], _cstring_startdlrequest_f
	mov dword [esp], 0x0
	call Com_DPrintf
	mov eax, [dl_request]
	mov [esp], eax
	call DeleteDLRequest
	mov dword [dl_request], 0x0
	xor eax, eax
DL_BeginDownload_30:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
DL_BeginDownload_20:
	mov dword [esp+0x4], _cstring_empty_download_u
	mov dword [esp], 0x0
	call Com_DPrintf
	xor eax, eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
DL_BeginDownload_10:
	mov eax, [dl_request]
	mov [esp], eax
	call StopDLRequest
	mov dword [dl_running], 0x0
	mov eax, [dl_request]
	test eax, eax
	jz DL_BeginDownload_50
	mov [esp], eax
	call DeleteDLRequest
	mov dword [dl_request], 0x0
	jmp DL_BeginDownload_50
DL_BeginDownload_40:
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
DL_CancelDownload:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [dl_running]
	test eax, eax
	jnz DL_CancelDownload_10
DL_CancelDownload_30:
	mov eax, [dl_request]
	test eax, eax
	jz DL_CancelDownload_20
	mov [esp], eax
	call DeleteDLRequest
	mov dword [dl_request], 0x0
DL_CancelDownload_20:
	leave
	ret
DL_CancelDownload_10:
	mov eax, [dl_request]
	mov [esp], eax
	call StopDLRequest
	mov dword [dl_running], 0x0
	jmp DL_CancelDownload_30
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

