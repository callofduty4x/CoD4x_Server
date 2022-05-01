;Imports of MacStrings:
	extern CFStringGetLength
	extern CFStringGetCharacters
	extern memset
	extern CFStringCreateWithCString
	extern CFStringGetBytes
	extern CFRelease
	extern _Znam
	extern _ZdaPv
	extern _Unwind_Resume

;Exports of MacStrings:
	global _ZZN10MacStrings16TranslateCStringEPKcsmmE11sTempString
	global _ZN10MacStrings15GetHFSUniStr255EPK10__CFStringR12HFSUniStr255
	global _ZN10MacStrings15TranslateStringEPKcmPvsm
	global _ZN10MacStrings20TranslateToMacStringEPKc
	global _ZN10MacStrings21TranslateToUTF8StringEPKc


SECTION .text


;MacStrings::GetHFSUniStr255(__CFString const*, HFSUniStr255&)
_ZN10MacStrings15GetHFSUniStr255EPK10__CFStringR12HFSUniStr255:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CFStringGetLength
	mov edx, 0xff
	cmp ax, 0xff
	cmovbe edx, eax
	mov [edi], dx
	movzx esi, dx
	xor ebx, ebx
	add edi, 0x2
	mov [esp+0xc], edi
	mov [esp+0x4], ebx
	mov [esp+0x8], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CFStringGetCharacters
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop
	add [eax], al


;MacStrings::TranslateString(char const*, unsigned long, void*, short, unsigned long)
_ZN10MacStrings15TranslateStringEPKcmPvsm:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov dword [ebp-0x30], 0x0
	mov dword [ebp-0x2c], 0x0
	mov dword [ebp-0x38], 0x0
	mov dword [ebp-0x34], 0x0
	movsx ebx, word [ebp+0x14]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x10]
	mov [esp], eax
	call memset
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call CFStringCreateWithCString
	mov edi, eax
	test eax, eax
	jz _ZN10MacStrings15TranslateStringEPKcmPvsm_10
	mov [esp], eax
	call CFStringGetLength
	mov esi, eax
	mov dword [ebp-0x1c], 0x0
	mov [ebp-0x2c], eax
	mov dword [ebp-0x30], 0x0
	lea edx, [ebp-0x1c]
	mov [esp+0x20], edx
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x20
	mov eax, [ebp+0x18]
	mov [esp+0xc], eax
	mov eax, [ebp-0x30]
	mov edx, [ebp-0x2c]
	mov [esp+0x4], eax
	mov [esp+0x8], edx
	mov [esp], edi
	call CFStringGetBytes
	lea eax, [ebx-0x2]
	cmp eax, [ebp-0x1c]
	cmovge eax, [ebp-0x1c]
	mov [ebp-0x1c], eax
	mov [ebp-0x34], esi
	mov dword [ebp-0x38], 0x0
	lea edx, [ebp-0x1c]
	mov [esp+0x20], edx
	mov [esp+0x1c], eax
	mov eax, [ebp+0x10]
	mov [esp+0x18], eax
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x20
	mov edx, [ebp+0x18]
	mov [esp+0xc], edx
	mov eax, [ebp-0x38]
	mov edx, [ebp-0x34]
	mov [esp+0x4], eax
	mov [esp+0x8], edx
	mov [esp], edi
	call CFStringGetBytes
	mov [esp], edi
	call CFRelease
_ZN10MacStrings15TranslateStringEPKcmPvsm_10:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop
	add [eax], al


;MacStrings::TranslateToMacString(char const*)
_ZN10MacStrings20TranslateToMacStringEPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov esi, [ebp+0x8]
	test esi, esi
	jz _ZN10MacStrings20TranslateToMacStringEPKc_10
	cmp byte [esi], 0x0
	jnz _ZN10MacStrings20TranslateToMacStringEPKc_20
_ZN10MacStrings20TranslateToMacStringEPKc_10:
	mov ebx, _cstring_null
_ZN10MacStrings20TranslateToMacStringEPKc_90:
	mov eax, ebx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN10MacStrings20TranslateToMacStringEPKc_20:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	mov ebx, ecx
	not ebx
	mov [esp], ebx
	call _Znam
	mov edi, eax
	mov eax, ebx
	movsx edx, bx
	mov [ebp-0x20], edx
	sub eax, 0x1
	xor edx, edx
	mov byte [ebp-0x19], 0x0
	xor ecx, ecx
	movsx ebx, ax
_ZN10MacStrings20TranslateToMacStringEPKc_40:
	movzx eax, byte [esi]
	test al, al
	jz _ZN10MacStrings20TranslateToMacStringEPKc_30
_ZN10MacStrings20TranslateToMacStringEPKc_70:
	cmp edx, ebx
	jge _ZN10MacStrings20TranslateToMacStringEPKc_30
	add esi, 0x1
	cmp al, 0xa
	jz _ZN10MacStrings20TranslateToMacStringEPKc_40
	cmp al, 0xd
	jz _ZN10MacStrings20TranslateToMacStringEPKc_50
	cmp al, 0x20
	jz _ZN10MacStrings20TranslateToMacStringEPKc_60
	mov byte [ebp-0x19], 0x0
	xor ecx, ecx
_ZN10MacStrings20TranslateToMacStringEPKc_110:
	mov [edi+edx], al
	add edx, 0x1
	movzx eax, byte [esi]
	test al, al
	jnz _ZN10MacStrings20TranslateToMacStringEPKc_70
_ZN10MacStrings20TranslateToMacStringEPKc_30:
	mov byte [edi+edx], 0x0
	mov eax, [_ZZN10MacStrings16TranslateCStringEPKcsmmE11sTempString]
	test eax, eax
	jz _ZN10MacStrings20TranslateToMacStringEPKc_80
	mov [esp], eax
	call _ZdaPv
_ZN10MacStrings20TranslateToMacStringEPKc_80:
	mov eax, [ebp-0x20]
	mov [esp], eax
	call _Znam
	mov [_ZZN10MacStrings16TranslateCStringEPKcsmmE11sTempString], eax
	mov dword [esp+0x10], 0x0
	mov edx, [ebp-0x20]
	mov [esp+0xc], edx
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x500
	mov [esp], edi
	call _ZN10MacStrings15TranslateStringEPKcmPvsm
	mov ebx, [_ZZN10MacStrings16TranslateCStringEPKcsmmE11sTempString]
	test edi, edi
	jz _ZN10MacStrings20TranslateToMacStringEPKc_90
	mov [esp], edi
	call _ZdaPv
	mov eax, ebx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN10MacStrings20TranslateToMacStringEPKc_50:
	test cl, cl
	jnz _ZN10MacStrings20TranslateToMacStringEPKc_100
	mov ecx, 0x1
	mov eax, 0x20
_ZN10MacStrings20TranslateToMacStringEPKc_120:
	cmp byte [ebp-0x19], 0x0
	jnz _ZN10MacStrings20TranslateToMacStringEPKc_40
	mov byte [ebp-0x19], 0x1
	jmp _ZN10MacStrings20TranslateToMacStringEPKc_110
_ZN10MacStrings20TranslateToMacStringEPKc_60:
	xor ecx, ecx
	jmp _ZN10MacStrings20TranslateToMacStringEPKc_120
_ZN10MacStrings20TranslateToMacStringEPKc_100:
	mov byte [edi+edx], 0xd
	mov byte [edx+edi+0x1], 0xd
	add edx, 0x2
	xor ecx, ecx
	jmp _ZN10MacStrings20TranslateToMacStringEPKc_40
	mov ebx, eax
	test edi, edi
	jz _ZN10MacStrings20TranslateToMacStringEPKc_130
	mov [esp], edi
	call _ZdaPv
_ZN10MacStrings20TranslateToMacStringEPKc_130:
	mov [esp], ebx
	call _Unwind_Resume
	nop


;MacStrings::TranslateToUTF8String(char const*)
_ZN10MacStrings21TranslateToUTF8StringEPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, [ebp+0x8]
	test ebx, ebx
	jz _ZN10MacStrings21TranslateToUTF8StringEPKc_10
	cmp byte [ebx], 0x0
	jnz _ZN10MacStrings21TranslateToUTF8StringEPKc_20
_ZN10MacStrings21TranslateToUTF8StringEPKc_10:
	mov ebx, _cstring_null
_ZN10MacStrings21TranslateToUTF8StringEPKc_90:
	mov eax, ebx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN10MacStrings21TranslateToUTF8StringEPKc_20:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	lea edi, [ecx+ecx]
	mov [esp], edi
	call _Znam
	mov esi, eax
	mov eax, edi
	movsx edx, di
	mov [ebp-0x20], edx
	sub eax, 0x1
	xor edx, edx
	mov byte [ebp-0x19], 0x0
	xor ecx, ecx
	movsx edi, ax
_ZN10MacStrings21TranslateToUTF8StringEPKc_40:
	movzx eax, byte [ebx]
	test al, al
	jz _ZN10MacStrings21TranslateToUTF8StringEPKc_30
_ZN10MacStrings21TranslateToUTF8StringEPKc_70:
	cmp edx, edi
	jge _ZN10MacStrings21TranslateToUTF8StringEPKc_30
	add ebx, 0x1
	cmp al, 0xa
	jz _ZN10MacStrings21TranslateToUTF8StringEPKc_40
	cmp al, 0xd
	jz _ZN10MacStrings21TranslateToUTF8StringEPKc_50
	cmp al, 0x20
	jz _ZN10MacStrings21TranslateToUTF8StringEPKc_60
	mov byte [ebp-0x19], 0x0
	xor ecx, ecx
_ZN10MacStrings21TranslateToUTF8StringEPKc_110:
	mov [esi+edx], al
	add edx, 0x1
	movzx eax, byte [ebx]
	test al, al
	jnz _ZN10MacStrings21TranslateToUTF8StringEPKc_70
_ZN10MacStrings21TranslateToUTF8StringEPKc_30:
	mov byte [esi+edx], 0x0
	mov eax, [_ZZN10MacStrings16TranslateCStringEPKcsmmE11sTempString]
	test eax, eax
	jz _ZN10MacStrings21TranslateToUTF8StringEPKc_80
	mov [esp], eax
	call _ZdaPv
_ZN10MacStrings21TranslateToUTF8StringEPKc_80:
	mov eax, [ebp-0x20]
	mov [esp], eax
	call _Znam
	mov [_ZZN10MacStrings16TranslateCStringEPKcsmmE11sTempString], eax
	mov dword [esp+0x10], 0x8000100
	mov edx, [ebp-0x20]
	mov [esp+0xc], edx
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x500
	mov [esp], esi
	call _ZN10MacStrings15TranslateStringEPKcmPvsm
	mov ebx, [_ZZN10MacStrings16TranslateCStringEPKcsmmE11sTempString]
	test esi, esi
	jz _ZN10MacStrings21TranslateToUTF8StringEPKc_90
	mov [esp], esi
	call _ZdaPv
	mov eax, ebx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN10MacStrings21TranslateToUTF8StringEPKc_50:
	test cl, cl
	jnz _ZN10MacStrings21TranslateToUTF8StringEPKc_100
	mov ecx, 0x1
	mov eax, 0x20
_ZN10MacStrings21TranslateToUTF8StringEPKc_120:
	cmp byte [ebp-0x19], 0x0
	jnz _ZN10MacStrings21TranslateToUTF8StringEPKc_40
	mov byte [ebp-0x19], 0x1
	jmp _ZN10MacStrings21TranslateToUTF8StringEPKc_110
_ZN10MacStrings21TranslateToUTF8StringEPKc_60:
	xor ecx, ecx
	jmp _ZN10MacStrings21TranslateToUTF8StringEPKc_120
_ZN10MacStrings21TranslateToUTF8StringEPKc_100:
	mov byte [esi+edx], 0xd
	mov byte [edx+esi+0x1], 0xd
	add edx, 0x2
	xor ecx, ecx
	jmp _ZN10MacStrings21TranslateToUTF8StringEPKc_40
	mov ebx, eax
	test esi, esi
	jz _ZN10MacStrings21TranslateToUTF8StringEPKc_130
	mov [esp], esi
	call _ZdaPv
_ZN10MacStrings21TranslateToUTF8StringEPKc_130:
	mov [esp], ebx
	call _Unwind_Resume
	add [eax], al


;Initialized global or static variables of MacStrings:
SECTION .data


;Initialized constant data of MacStrings:
SECTION .rdata


;Zero initialized global or static variables of MacStrings:
SECTION .bss
_ZZN10MacStrings16TranslateCStringEPKcsmmE11sTempString: resb 0x80


;All cstrings:
SECTION .rdata
_cstring_null:		db 0



;All constant floats and doubles:
SECTION .rdata

