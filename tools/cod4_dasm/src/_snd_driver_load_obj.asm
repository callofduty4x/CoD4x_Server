;Imports of snd_driver_load_obj:
	extern Hunk_AllocInternal
	extern Z_MallocInternal
	extern useFastFile
	extern Com_Memcpy
	extern Com_sprintf
	extern FS_ReadFile
	extern AIL_WAV_info
	extern Com_PrintError
	extern FS_FreeFile

;Exports of snd_driver_load_obj:
	global MSS_Alloc_LoadObj
	global MSS_Alloc_FastFile
	global SND_SetData
	global Load_SetSoundData
	global SND_LoadSoundFile


SECTION .text


;MSS_Alloc_LoadObj(int, unsigned int)
MSS_Alloc_LoadObj:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Hunk_AllocInternal
	nop


;MSS_Alloc_FastFile(int, unsigned int)
MSS_Alloc_FastFile:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Z_MallocInternal
	nop


;SND_SetData(MssSound*, void const*)
SND_SetData:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, eax
	mov edi, edx
	mov esi, [eax+0xc]
	mov ecx, [eax+0x8]
	mov eax, useFastFile
	mov eax, [eax]
	mov edx, MSS_Alloc_FastFile
	cmp byte [eax+0xc], 0x0
	mov eax, MSS_Alloc_LoadObj
	cmovz edx, eax
	mov [esp+0x4], esi
	mov [esp], ecx
	call edx
	mov [ebx+0x24], eax
	mov edx, [ebx+0x8]
	mov [esp+0x8], edx
	mov [esp+0x4], edi
	mov [esp], eax
	call Com_Memcpy
	mov eax, [ebx+0x24]
	mov [ebx+0x4], eax
	mov [ebx+0x20], eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Load_SetSoundData(unsigned char**, MssSound*)
Load_SetSoundData:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	mov edx, [ebp+0x8]
	mov edx, [edx]
	pop ebp
	jmp SND_SetData
	nop


;SND_LoadSoundFile(char const*)
SND_LoadSoundFile:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x140
	mov esi, [ebp+0x8]
	mov [esp+0xc], esi
	mov dword [esp+0x8], _cstring_sounds
	mov dword [esp+0x4], 0x100
	lea ebx, [ebp-0x130]
	mov [esp], ebx
	call Com_sprintf
	lea eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call FS_ReadFile
	test eax, eax
	js SND_LoadSoundFile_10
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov eax, [ebp-0xc]
	mov [esp], eax
	call AIL_WAV_info
	test eax, eax
	jz SND_LoadSoundFile_20
	mov eax, [ebp-0x28]
	test eax, eax
	jnz SND_LoadSoundFile_30
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_error_sound_file
	mov dword [esp], 0x1
	call Com_PrintError
	xor ebx, ebx
SND_LoadSoundFile_40:
	mov eax, [ebp-0xc]
	mov [esp], eax
	call FS_FreeFile
SND_LoadSoundFile_50:
	mov eax, ebx
	add esp, 0x140
	pop ebx
	pop esi
	pop ebp
	ret
SND_LoadSoundFile_30:
	mov dword [esp], 0x2c
	call Hunk_AllocInternal
	mov ebx, eax
	mov [eax], esi
	mov eax, [ebp-0x30]
	mov [ebx+0x4], eax
	mov eax, [ebp-0x2c]
	mov [ebx+0x8], eax
	mov eax, [ebp-0x28]
	mov [ebx+0xc], eax
	mov eax, [ebp-0x24]
	mov [ebx+0x10], eax
	mov eax, [ebp-0x20]
	mov [ebx+0x14], eax
	mov eax, [ebp-0x1c]
	mov [ebx+0x18], eax
	mov eax, [ebp-0x18]
	mov [ebx+0x1c], eax
	mov eax, [ebp-0x14]
	mov [ebx+0x20], eax
	mov eax, [ebp-0x10]
	mov [ebx+0x24], eax
	mov edx, [ebp-0x2c]
	lea eax, [ebx+0x4]
	call SND_SetData
	jmp SND_LoadSoundFile_40
SND_LoadSoundFile_20:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_error_sound_file1
	mov dword [esp], 0x1
	call Com_PrintError
	xor ebx, ebx
	jmp SND_LoadSoundFile_40
SND_LoadSoundFile_10:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_sound_file2
	mov dword [esp], 0x1
	call Com_PrintError
	xor ebx, ebx
	jmp SND_LoadSoundFile_50


;Initialized global or static variables of snd_driver_load_obj:
SECTION .data


;Initialized constant data of snd_driver_load_obj:
SECTION .rdata


;Zero initialized global or static variables of snd_driver_load_obj:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_sounds:		db "sound/%s",0
_cstring_error_sound_file:		db "ERROR: Sound file ",27h,"%s",27h," is zero length, invalid",0ah,0
_cstring_error_sound_file1:		db "ERROR: Sound file ",27h,"%s",27h," is in an invalid or corrupted format",0ah,0
_cstring_error_sound_file2:		db "ERROR: Sound file ",27h,"%s",27h," not found",0ah,0



;All constant floats and doubles:
SECTION .rdata

