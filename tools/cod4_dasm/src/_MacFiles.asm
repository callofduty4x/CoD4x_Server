;Imports of MacFiles:
	extern FSOpenIterator
	extern FSGetCatalogInfoBulk
	extern FSCloseIterator
	extern FSDeleteObject
	extern FSSetCatalogInfo
	extern FSPathMakeRef
	extern stat
	extern fopen

;Exports of MacFiles:
	global RemoveDirectoryContents
	global _ZN8MacFiles16RemoveDirectoryAEPKc
	global _ZN8MacFiles4statEPKcP4stat
	global _ZN8MacFiles5fopenEPKcS1_
	global _ZN8MacFiles9CleanPathEPKcPci
	global _ZN8MacFiles9CleanPathEPch


SECTION .text


;RemoveDirectoryContents(FSRef const&, RemoveDirectoryInfo&)
RemoveDirectoryContents:
RemoveDirectoryContents_100:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	mov ebx, edx
	lea edx, [ebp-0x1c]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x2
	mov [esp], eax
	call FSOpenIterator
	movsx edx, ax
	mov [ebx], edx
	test ax, ax
	jz RemoveDirectoryContents_10
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
RemoveDirectoryContents_10:
	lea eax, [ebx+0x8]
	mov [ebp-0x80], eax
	lea eax, [ebx+0x4]
	mov [ebp-0x7c], eax
	jmp RemoveDirectoryContents_20
RemoveDirectoryContents_50:
	cmp dword [ebx+0x4], 0x1
	jz RemoveDirectoryContents_30
	mov eax, [ebx]
RemoveDirectoryContents_90:
	test eax, eax
	jnz RemoveDirectoryContents_40
RemoveDirectoryContents_20:
	mov dword [esp+0x20], 0x0
	mov dword [esp+0x1c], 0x0
	lea eax, [ebp-0x6c]
	mov [esp+0x18], eax
	mov eax, [ebp-0x80]
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x2
	mov dword [esp+0xc], 0x0
	mov eax, [ebp-0x7c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FSGetCatalogInfoBulk
	movsx edx, ax
	mov [ebx], edx
	test ax, ax
	jz RemoveDirectoryContents_50
	mov eax, edx
	test eax, eax
	jz RemoveDirectoryContents_20
RemoveDirectoryContents_40:
	cmp eax, 0xfffffa77
	jz RemoveDirectoryContents_60
RemoveDirectoryContents_130:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FSCloseIterator
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
RemoveDirectoryContents_30:
	movzx esi, word [ebx+0x8]
	movzx edi, si
	test edi, 0x10
	jnz RemoveDirectoryContents_70
RemoveDirectoryContents_110:
	mov eax, [ebx]
	test eax, eax
	jnz RemoveDirectoryContents_40
	and edi, 0x1
	jnz RemoveDirectoryContents_80
RemoveDirectoryContents_120:
	lea eax, [ebp-0x6c]
	mov [esp], eax
	call FSDeleteObject
	cwde
	mov [ebx], eax
	jmp RemoveDirectoryContents_90
RemoveDirectoryContents_70:
	mov edx, ebx
	lea eax, [ebp-0x6c]
	call RemoveDirectoryContents_100
	jmp RemoveDirectoryContents_110
RemoveDirectoryContents_80:
	and esi, 0xfffffffe
	mov [ebx+0x8], si
	mov eax, [ebp-0x80]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2
	lea eax, [ebp-0x6c]
	mov [esp], eax
	call FSSetCatalogInfo
	jmp RemoveDirectoryContents_120
RemoveDirectoryContents_60:
	mov dword [ebx], 0x0
	jmp RemoveDirectoryContents_130
	nop


;MacFiles::RemoveDirectoryA(char const*)
_ZN8MacFiles16RemoveDirectoryAEPKc:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x100
	lea eax, [ebp-0x9]
	mov [esp+0x8], eax
	lea esi, [ebp-0x5a]
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call FSPathMakeRef
	mov ebx, eax
	test eax, eax
	jz _ZN8MacFiles16RemoveDirectoryAEPKc_10
_ZN8MacFiles16RemoveDirectoryAEPKc_30:
	mov eax, ebx
	add esp, 0x100
	pop ebx
	pop esi
	pop ebp
	ret
_ZN8MacFiles16RemoveDirectoryAEPKc_10:
	cmp byte [ebp-0x9], 0x0
	jnz _ZN8MacFiles16RemoveDirectoryAEPKc_20
	mov ebx, 0xffffffce
	jmp _ZN8MacFiles16RemoveDirectoryAEPKc_30
_ZN8MacFiles16RemoveDirectoryAEPKc_20:
	lea edx, [ebp-0xf4]
	mov eax, esi
	call RemoveDirectoryContents
	mov eax, [ebp-0xf4]
	test eax, eax
	jnz _ZN8MacFiles16RemoveDirectoryAEPKc_30
	mov [esp], esi
	call FSDeleteObject
	jmp _ZN8MacFiles16RemoveDirectoryAEPKc_30


;MacFiles::stat(char const*, stat*)
_ZN8MacFiles4statEPKcP4stat:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x410
	mov ebx, [ebp+0x8]
	movzx edx, byte [ebx]
	test dl, dl
	jz _ZN8MacFiles4statEPKcP4stat_10
	xor ecx, ecx
	lea esi, [ebp-0x408]
	jmp _ZN8MacFiles4statEPKcP4stat_20
_ZN8MacFiles4statEPKcP4stat_40:
	cmp ecx, 0x3ff
	jz _ZN8MacFiles4statEPKcP4stat_30
_ZN8MacFiles4statEPKcP4stat_20:
	cmp dl, 0x5c
	mov eax, 0x2f
	cmovz edx, eax
	mov [ecx+esi], dl
	add ecx, 0x1
	movzx edx, byte [ebx+ecx]
	test dl, dl
	jnz _ZN8MacFiles4statEPKcP4stat_40
	mov eax, ecx
_ZN8MacFiles4statEPKcP4stat_50:
	mov byte [ebp+eax-0x408], 0x0
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], esi
	call stat
	add esp, 0x410
	pop ebx
	pop esi
	pop ebp
	ret
_ZN8MacFiles4statEPKcP4stat_10:
	xor eax, eax
	lea esi, [ebp-0x408]
	mov byte [ebp+eax-0x408], 0x0
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], esi
	call stat
	add esp, 0x410
	pop ebx
	pop esi
	pop ebp
	ret
_ZN8MacFiles4statEPKcP4stat_30:
	mov eax, 0x3ff
	jmp _ZN8MacFiles4statEPKcP4stat_50
	nop


;MacFiles::fopen(char const*, char const*)
_ZN8MacFiles5fopenEPKcS1_:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x410
	mov ebx, [ebp+0x8]
	movzx edx, byte [ebx]
	test dl, dl
	jz _ZN8MacFiles5fopenEPKcS1__10
	xor ecx, ecx
	lea esi, [ebp-0x408]
	jmp _ZN8MacFiles5fopenEPKcS1__20
_ZN8MacFiles5fopenEPKcS1__40:
	cmp ecx, 0x3ff
	jz _ZN8MacFiles5fopenEPKcS1__30
_ZN8MacFiles5fopenEPKcS1__20:
	cmp dl, 0x5c
	mov eax, 0x2f
	cmovz edx, eax
	mov [ecx+esi], dl
	add ecx, 0x1
	movzx edx, byte [ebx+ecx]
	test dl, dl
	jnz _ZN8MacFiles5fopenEPKcS1__40
	mov eax, ecx
_ZN8MacFiles5fopenEPKcS1__50:
	mov byte [ebp+eax-0x408], 0x0
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], esi
	call fopen
	add esp, 0x410
	pop ebx
	pop esi
	pop ebp
	ret
_ZN8MacFiles5fopenEPKcS1__10:
	xor eax, eax
	lea esi, [ebp-0x408]
	mov byte [ebp+eax-0x408], 0x0
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], esi
	call fopen
	add esp, 0x410
	pop ebx
	pop esi
	pop ebp
	ret
_ZN8MacFiles5fopenEPKcS1__30:
	mov eax, 0x3ff
	jmp _ZN8MacFiles5fopenEPKcS1__50
	nop


;MacFiles::CleanPath(char const*, char*, int)
_ZN8MacFiles9CleanPathEPKcPci:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	movzx edx, byte [esi]
	test dl, dl
	jz _ZN8MacFiles9CleanPathEPKcPci_10
	mov ebx, [ebp+0x10]
	sub ebx, 0x1
	test ebx, ebx
	jle _ZN8MacFiles9CleanPathEPKcPci_10
	xor ecx, ecx
_ZN8MacFiles9CleanPathEPKcPci_30:
	cmp dl, 0x5c
	mov eax, 0x2f
	cmovz edx, eax
	mov [edi+ecx], dl
	add ecx, 0x1
	movzx edx, byte [esi+ecx]
	test dl, dl
	jz _ZN8MacFiles9CleanPathEPKcPci_20
	cmp ecx, ebx
	jnz _ZN8MacFiles9CleanPathEPKcPci_30
_ZN8MacFiles9CleanPathEPKcPci_20:
	mov eax, ecx
	mov byte [eax+edi], 0x0
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN8MacFiles9CleanPathEPKcPci_10:
	xor eax, eax
	mov byte [eax+edi], 0x0
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;MacFiles::CleanPath(char*, unsigned char)
_ZN8MacFiles9CleanPathEPch:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	movzx eax, byte [ebp+0xc]
	movzx edx, byte [ecx]
	test dl, dl
	jz _ZN8MacFiles9CleanPathEPch_10
	test al, al
	jnz _ZN8MacFiles9CleanPathEPch_20
	mov eax, ecx
	jmp _ZN8MacFiles9CleanPathEPch_30
_ZN8MacFiles9CleanPathEPch_40:
	movzx edx, byte [eax+0x1]
	add eax, 0x1
	test dl, dl
	jz _ZN8MacFiles9CleanPathEPch_10
_ZN8MacFiles9CleanPathEPch_30:
	cmp dl, 0x5c
	jnz _ZN8MacFiles9CleanPathEPch_40
	mov byte [eax], 0x2f
	movzx edx, byte [eax+0x1]
	add eax, 0x1
	test dl, dl
	jnz _ZN8MacFiles9CleanPathEPch_30
_ZN8MacFiles9CleanPathEPch_10:
	pop ebp
	ret
_ZN8MacFiles9CleanPathEPch_20:
	mov eax, ecx
_ZN8MacFiles9CleanPathEPch_60:
	cmp dl, 0x5c
	jnz _ZN8MacFiles9CleanPathEPch_50
	mov byte [eax], 0x3a
_ZN8MacFiles9CleanPathEPch_50:
	movzx edx, byte [eax+0x1]
	add eax, 0x1
	test dl, dl
	jnz _ZN8MacFiles9CleanPathEPch_60
	pop ebp
	ret
	add [eax], al


;Initialized global or static variables of MacFiles:
SECTION .data


;Initialized constant data of MacFiles:
SECTION .rdata


;Zero initialized global or static variables of MacFiles:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

