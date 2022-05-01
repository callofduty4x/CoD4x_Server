;Imports of r_texturemem:
	extern _ZN10MacDisplay18GetVideoMemoryInfoERlS0_
	extern dx_ctx
	extern _Z10Com_PrintfiPKcz

;Exports of r_texturemem:
	global s_maxReportedTexMem
	global _Z24R_AvailableTextureMemoryv


SECTION .text


;R_AvailableTextureMemory()
_Z24R_AvailableTextureMemoryv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	lea eax, [ebp-0x10]
	mov [esp+0x4], eax
	lea eax, [ebp-0xc]
	mov [esp], eax
	call _ZN10MacDisplay18GetVideoMemoryInfoERlS0_
	mov esi, [ebp-0xc]
	mov eax, dx_ctx
	mov eax, [eax+0x8]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x10]
	mov ebx, eax
	shr ebx, 0x14
	test esi, esi
	jnz _Z24R_AvailableTextureMemoryv_10
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_directx_reports_
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
_Z24R_AvailableTextureMemoryv_30:
	mov eax, [s_maxReportedTexMem]
	cmp ebx, eax
	jbe _Z24R_AvailableTextureMemoryv_20
_Z24R_AvailableTextureMemoryv_40:
	mov [s_maxReportedTexMem], ebx
	mov eax, ebx
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_Z24R_AvailableTextureMemoryv_10:
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_directx_reports_1
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	cmp esi, ebx
	jae _Z24R_AvailableTextureMemoryv_30
	lea ebx, [esi-0x10]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_using_video_memo
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	mov eax, [s_maxReportedTexMem]
	cmp ebx, eax
	ja _Z24R_AvailableTextureMemoryv_40
_Z24R_AvailableTextureMemoryv_20:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_using_previously
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	mov eax, [s_maxReportedTexMem]
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
	add [eax], al


;Initialized global or static variables of r_texturemem:
SECTION .data


;Initialized constant data of r_texturemem:
SECTION .rdata


;Zero initialized global or static variables of r_texturemem:
SECTION .bss
s_maxReportedTexMem: resb 0x80


;All cstrings:
SECTION .rdata
_cstring_directx_reports_:		db "DirectX reports %i MB of available texture memory, but wouldn",27h,"t tell available video memory.",0ah,0
_cstring_directx_reports_1:		db "DirectX reports %i MB of video memory and %i MB of available texture memory.",0ah,0
_cstring_using_video_memo:		db "Using video memory size to cap used texture memory at %i MB.",0ah,0
_cstring_using_previously:		db "Using previously reported texture memory size of %i MB.",0ah,0



;All constant floats and doubles:
SECTION .rdata

