;Imports of fx_archive:
	extern DB_EnumXAssets
	extern MemFile_WriteCString
	extern MemFile_WriteData
	extern FX_ForEachEffectDef
	extern MemFile_IsWriting
	extern FX_GetSystem
	extern FX_GetSystemBuffers
	extern MemFile_ReadData
	extern FX_Register
	extern MemFile_ReadCString
	extern FX_LinkSystemBuffers
	extern FX_RelocateSystem
	extern fx_randomTable
	extern Phys_ObjLoad
	extern Phys_ObjSetCollisionFromXModel
	extern Com_Error
	extern useFastFile
	extern Phys_ObjSave

;Exports of fx_archive:
	global FX_SaveEffectDefTable_FastFile
	global FX_SaveEffectDefTableEntry_FastFile
	global FX_SaveEffectDefTable_LoadObj
	global FX_SaveEffectDefTableEntry_FileLoadObj
	global FX_Archive
	global FX_Restore
	global FX_Save


SECTION .text


;FX_SaveEffectDefTable_FastFile(MemoryFile*)
FX_SaveEffectDefTable_FastFile:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0xc], 0x0
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], FX_SaveEffectDefTableEntry_FastFile
	mov dword [esp], 0x19
	call DB_EnumXAssets
	leave
	ret
	nop


;FX_SaveEffectDefTableEntry_FastFile(XAssetHeader, void*)
FX_SaveEffectDefTableEntry_FastFile:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], esi
	call MemFile_WriteCString
	mov [ebp-0xc], ebx
	lea eax, [ebp-0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	mov [esp], esi
	call MemFile_WriteData
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret


;FX_SaveEffectDefTable_LoadObj(MemoryFile*)
FX_SaveEffectDefTable_LoadObj:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], FX_SaveEffectDefTableEntry_FileLoadObj
	call FX_ForEachEffectDef
	leave
	ret
	nop


;FX_SaveEffectDefTableEntry_FileLoadObj(FxEffectDef const*, void*)
FX_SaveEffectDefTableEntry_FileLoadObj:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], esi
	call MemFile_WriteCString
	mov [ebp-0xc], ebx
	lea eax, [ebp-0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	mov [esp], esi
	call MemFile_WriteData
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;FX_Archive(int, MemoryFile*)
FX_Archive:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov [esp], ebx
	call MemFile_IsWriting
	test al, al
	jz FX_Archive_10
	mov [ebp+0xc], ebx
	mov [ebp+0x8], esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp FX_Save
FX_Archive_10:
	mov [ebp+0xc], ebx
	mov [ebp+0x8], esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp FX_Restore


;FX_Restore(int, MemoryFile*)
FX_Restore:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x204c
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call FX_GetSystem
	mov [ebp-0x2044], eax
	mov [esp], ebx
	call FX_GetSystemBuffers
	mov [ebp-0x2040], eax
	mov dword [ebp-0x202c], 0x0
	xor edi, edi
	jmp FX_Restore_10
FX_Restore_20:
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	mov edx, [ebp+0xc]
	mov [esp], edx
	call MemFile_ReadData
	mov ebx, [ebp-0x1c]
	mov [esp], esi
	call FX_Register
	mov [edi+ebp-0x201c], ebx
	mov [edi+ebp-0x2018], eax
	add dword [ebp-0x202c], 0x1
	add edi, 0x8
FX_Restore_10:
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call MemFile_ReadCString
	mov esi, eax
	cmp byte [eax], 0x0
	jnz FX_Restore_20
	mov ebx, [ebp-0x2044]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0xa60
	mov eax, [ebp+0xc]
	mov [esp], eax
	call MemFile_ReadData
	mov eax, [ebx+0x9cc]
	test eax, eax
	jnz FX_Restore_30
FX_Restore_200:
	mov edx, [ebp-0x2040]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x2044]
	mov [esp], ecx
	call FX_LinkSystemBuffers
	mov ebx, [ebp-0x2040]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x47480
	mov eax, [ebp+0xc]
	mov [esp], eax
	call MemFile_ReadData
	mov edx, [ebp-0x2044]
	mov ecx, [edx+0x1b0]
	mov eax, [edx+0x1b4]
	cmp ecx, eax
	jz FX_Restore_40
	mov edi, [ebp-0x201c]
	lea esi, [ebp-0x2020]
	mov ebx, [ebp-0x2044]
FX_Restore_80:
	mov eax, ecx
	and eax, 0x3ff
	movzx edx, word [ebx+eax*2+0x1bc]
	mov eax, [ebx+0x170]
	lea ebx, [eax+edx*4]
	mov edx, [ebx]
	mov eax, [ebp-0x202c]
	test eax, eax
	jle FX_Restore_50
	cmp edx, edi
	jz FX_Restore_60
	xor eax, eax
FX_Restore_70:
	add eax, 0x1
	cmp [ebp-0x202c], eax
	jz FX_Restore_50
	cmp edx, [esi+eax*8+0x4]
	jnz FX_Restore_70
FX_Restore_190:
	mov eax, [ebp+eax*8-0x2018]
	mov [ebx], eax
	add ecx, 0x1
	mov edx, [ebp-0x2044]
	mov eax, [edx+0x1b4]
	cmp ecx, eax
	jz FX_Restore_40
FX_Restore_90:
	mov ebx, edx
	jmp FX_Restore_80
FX_Restore_50:
	xor eax, eax
	mov [ebx], eax
	add ecx, 0x1
	mov edx, [ebp-0x2044]
	mov eax, [edx+0x1b4]
	cmp ecx, eax
	jnz FX_Restore_90
FX_Restore_40:
	lea ecx, [ebp-0x1c]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x4
	mov ebx, [ebp+0xc]
	mov [esp], ebx
	call MemFile_ReadData
	mov eax, [ebp-0x2044]
	sub eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov eax, [ebp-0x2044]
	mov [esp], eax
	call FX_RelocateSystem
	mov edx, [ebp-0x2044]
	mov edx, [edx+0x1b0]
	mov [ebp-0x2038], edx
	mov ecx, [ebp-0x2044]
	mov eax, [ecx+0x1b4]
	cmp edx, eax
	jz FX_Restore_100
	mov ebx, fx_randomTable
	mov [ebp-0x2048], ebx
	mov ecx, [ebp-0x2044]
FX_Restore_160:
	mov eax, [ebp-0x2038]
	and eax, 0x3ff
	movzx edx, word [ecx+eax*2+0x1bc]
	mov eax, [ecx+0x170]
	lea edx, [eax+edx*4]
	mov [ebp-0x2034], edx
	movzx edi, word [edx+0xa]
	cmp di, 0xffff
	jz FX_Restore_110
	mov ebx, [ebp-0x2048]
	mov [ebp-0x2030], ebx
	jmp FX_Restore_120
FX_Restore_140:
	cmp di, 0xffff
	jz FX_Restore_130
FX_Restore_120:
	movzx edx, di
	mov ecx, [ebp-0x2044]
	mov eax, [ecx+0x174]
	lea ebx, [eax+edx*4]
	mov eax, [ebp-0x2034]
	mov ecx, [eax]
	movzx eax, byte [ebx]
	lea edx, [eax*4]
	mov esi, eax
	shl esi, 0x8
	sub esi, edx
	add esi, [ecx+0x1c]
	movzx edi, word [ebx+0x4]
	cmp byte [esi+0xb0], 0x5
	jnz FX_Restore_140
	test byte [esi+0x3], 0x8
	jz FX_Restore_140
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Phys_ObjLoad
	mov [ebp-0x203c], eax
	mov [ebx+0x18], eax
	mov ecx, [ebp-0x2034]
	movzx edx, word [ecx+0x12]
	add edx, [ebx+0x8]
	movzx eax, byte [ebx+0x1]
	lea ecx, [eax+eax*8]
	lea ecx, [eax+ecx*4]
	lea ecx, [edx+ecx*8]
	mov edx, 0x11a3019b
	mov eax, ecx
	mul edx
	mov eax, ecx
	sub eax, edx
	shr eax, 1
	add edx, eax
	shr edx, 0x8
	mov ebx, edx
	shl ebx, 0x5
	mov eax, edx
	shl eax, 0x9
	sub eax, ebx
	sub eax, edx
	sub ecx, eax
	movzx edx, cx
	movzx eax, byte [esi+0xb1]
	cmp al, 0x1
	jz FX_Restore_150
	movzx eax, al
	mov ecx, [ebp-0x2030]
	movzx edx, word [ecx+edx*4+0x54]
	imul eax, edx
	sar eax, 0x10
	mov edx, [esi+0xbc]
	mov eax, [edx+eax*4]
FX_Restore_180:
	mov ebx, [ebp-0x203c]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call Phys_ObjSetCollisionFromXModel
	cmp di, 0xffff
	jnz FX_Restore_120
FX_Restore_130:
	mov edx, [ebp-0x2044]
	add dword [ebp-0x2038], 0x1
	mov eax, [edx+0x1b4]
	cmp eax, [ebp-0x2038]
	jz FX_Restore_100
FX_Restore_170:
	mov ecx, edx
	jmp FX_Restore_160
FX_Restore_110:
	mov edx, ecx
	add dword [ebp-0x2038], 0x1
	mov eax, [edx+0x1b4]
	cmp eax, [ebp-0x2038]
	jnz FX_Restore_170
FX_Restore_100:
	add esp, 0x204c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_Restore_150:
	mov eax, [esi+0xbc]
	jmp FX_Restore_180
FX_Restore_60:
	xor eax, eax
	jmp FX_Restore_190
FX_Restore_30:
	mov dword [esp+0x4], _cstring_invalid_save_fil
	mov dword [esp], 0x2
	call Com_Error
	jmp FX_Restore_200
	nop


;FX_Save(int, MemoryFile*)
FX_Save:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call FX_GetSystem
	mov edi, eax
	mov [esp], ebx
	call FX_GetSystemBuffers
	mov ebx, eax
	mov eax, useFastFile
	mov eax, [eax]
	mov edx, FX_SaveEffectDefTable_FastFile
	cmp byte [eax+0xc], 0x0
	mov eax, FX_SaveEffectDefTable_LoadObj
	cmovz edx, eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call edx
	mov dword [esp+0x4], _cstring_null
	mov eax, [ebp+0xc]
	mov [esp], eax
	call MemFile_WriteCString
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0xa60
	mov eax, [ebp+0xc]
	mov [esp], eax
	call MemFile_WriteData
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x47480
	mov eax, [ebp+0xc]
	mov [esp], eax
	call MemFile_WriteData
	mov [ebp-0x1c], edi
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	mov eax, [ebp+0xc]
	mov [esp], eax
	call MemFile_WriteData
	mov eax, [edi+0x1b0]
	mov [ebp-0x30], eax
	mov eax, [edi+0x1b4]
	cmp [ebp-0x30], eax
	jz FX_Save_10
FX_Save_50:
	mov eax, [ebp-0x30]
	and eax, 0x3ff
	movzx edx, word [edi+eax*2+0x1bc]
	mov eax, [edi+0x170]
	lea edx, [eax+edx*4]
	mov [ebp-0x2c], edx
	movzx esi, word [edx+0xa]
FX_Save_30:
	cmp si, 0xffff
	jz FX_Save_20
FX_Save_40:
	movzx edx, si
	mov eax, [edi+0x174]
	lea ebx, [eax+edx*4]
	mov eax, [ebp-0x2c]
	mov ecx, [eax]
	movzx eax, byte [ebx]
	lea edx, [eax*4]
	shl eax, 0x8
	sub eax, edx
	add eax, [ecx+0x1c]
	movzx esi, word [ebx+0x4]
	cmp byte [eax+0xb0], 0x5
	jnz FX_Save_30
	test byte [eax+0x3], 0x8
	jz FX_Save_30
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebx+0x18]
	mov [esp], eax
	call Phys_ObjSave
	cmp si, 0xffff
	jnz FX_Save_40
FX_Save_20:
	add dword [ebp-0x30], 0x1
	mov eax, [edi+0x1b4]
	cmp [ebp-0x30], eax
	jnz FX_Save_50
FX_Save_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Initialized global or static variables of fx_archive:
SECTION .data


;Initialized constant data of fx_archive:
SECTION .rdata


;Zero initialized global or static variables of fx_archive:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_invalid_save_fil:		db "Invalid save file",0
_cstring_null:		db 0



;All constant floats and doubles:
SECTION .rdata

