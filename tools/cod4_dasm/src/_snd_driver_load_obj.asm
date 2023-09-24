;Imports of snd_driver_load_obj:
	extern _Z18Hunk_AllocInternali
	extern Z_MallocInternal
	extern useFastFile
	extern Com_Memcpy
	extern _Z11Com_sprintfPciPKcz
	extern FS_ReadFile
	extern iAIL_WAV_info
	extern _Z14Com_PrintErroriPKcz
	extern FS_FreeFile

;Exports of snd_driver_load_obj:
	global _Z17MSS_Alloc_LoadObjij
	global _Z18MSS_Alloc_FastFileij
	global _Z11SND_SetDataP8MssSoundPKv
	global _Z17Load_SetSoundDataPPhP8MssSound
	global _Z17SND_LoadSoundFilePKc


SECTION .text


;MSS_Alloc_LoadObj(int, unsigned int)
_Z17MSS_Alloc_LoadObjij:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z18Hunk_AllocInternali
	nop


;MSS_Alloc_FastFile(int, unsigned int)
_Z18MSS_Alloc_FastFileij:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Z_MallocInternal
	nop


;SND_SetData(MssSound*, void const*)
_Z11SND_SetDataP8MssSoundPKv:
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
	mov edx, _Z18MSS_Alloc_FastFileij
	cmp byte [eax+0xc], 0x0
	mov eax, _Z17MSS_Alloc_LoadObjij
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
_Z17Load_SetSoundDataPPhP8MssSound:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	mov edx, [ebp+0x8]
	mov edx, [edx]
	pop ebp
	jmp _Z11SND_SetDataP8MssSoundPKv
	nop


;SND_LoadSoundFile(char const*)
_Z17SND_LoadSoundFilePKc:
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
	call _Z11Com_sprintfPciPKcz
	lea eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call FS_ReadFile
	test eax, eax
	js _Z17SND_LoadSoundFilePKc_10
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov eax, [ebp-0xc]
	mov [esp], eax
	call iAIL_WAV_info
	test eax, eax
	jz _Z17SND_LoadSoundFilePKc_20
	mov eax, [ebp-0x28]
	test eax, eax
	jnz _Z17SND_LoadSoundFilePKc_30
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_error_sound_file
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	xor ebx, ebx
_Z17SND_LoadSoundFilePKc_40:
	mov eax, [ebp-0xc]
	mov [esp], eax
	call FS_FreeFile
_Z17SND_LoadSoundFilePKc_50:
	mov eax, ebx
	add esp, 0x140
	pop ebx
	pop esi
	pop ebp
	ret
_Z17SND_LoadSoundFilePKc_30:
	mov dword [esp], 0x2c
	call _Z18Hunk_AllocInternali
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
	call _Z11SND_SetDataP8MssSoundPKv
	jmp _Z17SND_LoadSoundFilePKc_40
_Z17SND_LoadSoundFilePKc_20:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_error_sound_file1
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	xor ebx, ebx
	jmp _Z17SND_LoadSoundFilePKc_40
_Z17SND_LoadSoundFilePKc_10:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_sound_file2
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	xor ebx, ebx
	jmp _Z17SND_LoadSoundFilePKc_50


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

