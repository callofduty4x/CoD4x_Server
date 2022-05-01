;Imports of r_jpeg:
	extern Z_MallocInternal
	extern Z_FreeInternal
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z10Com_PrintfiPKcz
	extern jpeg_std_error
	extern jpeg_CreateCompress
	extern Hunk_AllocateTempMemory
	extern jpeg_set_defaults
	extern jpeg_set_quality
	extern jpeg_start_compress
	extern jpeg_finish_compress
	extern _Z12FS_WriteFilePKcPKvi
	extern Hunk_FreeTempMemory
	extern jpeg_destroy_compress
	extern jpeg_write_scanlines

;Exports of r_jpeg:
	global hackSize
	global _Z16init_destinationP20jpeg_compress_struct
	global _Z16term_destinationP20jpeg_compress_struct
	global _Z12Z_MallocJpegm
	global _Z10Z_FreeJpegPvm
	global _Z8ExitJpegv
	global _Z10PrintfJpegPc
	global _Z19empty_output_bufferP20jpeg_compress_struct
	global _Z9R_SaveJpgPKciiiPh


SECTION .text


;init_destination(jpeg_compress_struct*)
_Z16init_destinationP20jpeg_compress_struct:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x20]
	mov edx, [eax+0x14]
	mov [eax], edx
	mov edx, [eax+0x18]
	mov [eax+0x4], edx
	pop ebp
	ret


;term_destination(jpeg_compress_struct*)
_Z16term_destinationP20jpeg_compress_struct:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [eax+0x20]
	mov eax, [edx+0x18]
	sub eax, [edx+0x4]
	mov [hackSize], eax
	pop ebp
	ret


;Z_MallocJpeg(unsigned long)
_Z12Z_MallocJpegm:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Z_MallocInternal
	nop


;Z_FreeJpeg(void*, unsigned long)
_Z10Z_FreeJpegPvm:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Z_FreeInternal
	nop


;ExitJpeg()
_Z8ExitJpegv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], _cstring_jpeg_internal_er
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	leave
	ret


;PrintfJpeg(char*)
_Z10PrintfJpegPc:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	leave
	ret
	nop


;empty_output_buffer(jpeg_compress_struct*)
_Z19empty_output_bufferP20jpeg_compress_struct:
	push ebp
	mov ebp, esp
	mov eax, 0x1
	pop ebp
	ret


;R_SaveJpg(char const*, int, int, int, unsigned char*)
_Z9R_SaveJpgPKciiiPh:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x21c
	mov dword [esp+0x8], _Z10PrintfJpegPc
	mov dword [esp+0x4], _Z8ExitJpegv
	lea eax, [ebp-0xa8]
	mov [esp], eax
	call jpeg_std_error
	mov [ebp-0x214], eax
	mov dword [ebp-0x1fc], _Z12Z_MallocJpegm
	mov dword [ebp-0x1f8], _Z10Z_FreeJpegPvm
	mov dword [esp+0x8], 0x16c
	mov dword [esp+0x4], 0x3e
	lea esi, [ebp-0x214]
	mov [esp], esi
	call jpeg_CreateCompress
	mov eax, [ebp+0x10]
	imul eax, [ebp+0x14]
	lea ebx, [eax+eax*2]
	mov [esp], ebx
	call Hunk_AllocateTempMemory
	mov edi, eax
	mov eax, [ebp-0x1f4]
	test eax, eax
	jz _Z9R_SaveJpgPKciiiPh_10
	mov eax, [ebp-0x1f4]
_Z9R_SaveJpgPKciiiPh_40:
	mov dword [eax+0x8], _Z16init_destinationP20jpeg_compress_struct
	mov dword [eax+0xc], _Z19empty_output_bufferP20jpeg_compress_struct
	mov dword [eax+0x10], _Z16term_destinationP20jpeg_compress_struct
	mov [eax+0x14], edi
	mov [eax+0x18], ebx
	mov eax, [ebp+0x10]
	mov [ebp-0x1f0], eax
	mov eax, [ebp+0x14]
	mov [ebp-0x1ec], eax
	mov dword [ebp-0x1e8], 0x3
	mov dword [ebp-0x1e4], 0x2
	mov [esp], esi
	call jpeg_set_defaults
	mov dword [esp+0x8], 0x1
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], esi
	call jpeg_set_quality
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call jpeg_start_compress
	mov eax, [ebp+0x10]
	lea ebx, [eax+eax*2]
	mov eax, [ebp-0x140]
	cmp eax, [ebp-0x1ec]
	jb _Z9R_SaveJpgPKciiiPh_20
_Z9R_SaveJpgPKciiiPh_30:
	mov [esp], esi
	call jpeg_finish_compress
	mov eax, [hackSize]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z12FS_WriteFilePKcPKvi
	mov [esp], edi
	call Hunk_FreeTempMemory
	mov [esp], esi
	call jpeg_destroy_compress
	add esp, 0x21c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z9R_SaveJpgPKciiiPh_20:
	imul eax, ebx
	add eax, [ebp+0x18]
	mov [ebp-0x1c], eax
	mov dword [esp+0x8], 0x1
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], esi
	call jpeg_write_scanlines
	mov eax, [ebp-0x140]
	cmp eax, [ebp-0x1ec]
	jb _Z9R_SaveJpgPKciiiPh_20
	jmp _Z9R_SaveJpgPKciiiPh_30
_Z9R_SaveJpgPKciiiPh_10:
	mov dword [esp+0x8], 0x1c
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	mov eax, [ebp-0x210]
	call dword [eax]
	mov [ebp-0x1f4], eax
	jmp _Z9R_SaveJpgPKciiiPh_40
	nop
	add [eax], al


;Initialized global or static variables of r_jpeg:
SECTION .data


;Initialized constant data of r_jpeg:
SECTION .rdata


;Zero initialized global or static variables of r_jpeg:
SECTION .bss
hackSize: resb 0x80


;All cstrings:
SECTION .rdata
_cstring_jpeg_internal_er:		db "jpeg internal error",0
_cstring_s:		db "%s",0ah,0



;All constant floats and doubles:
SECTION .rdata

