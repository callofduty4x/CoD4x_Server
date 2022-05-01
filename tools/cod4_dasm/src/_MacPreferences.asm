;Imports of MacPreferences:
	extern atoi
	extern sprintf
	extern CFPreferencesAppSynchronize
	extern strcpy
	extern atof
	extern CFStringCreateWithCString
	extern CFPreferencesCopyAppValue
	extern CFRelease
	extern CFGetTypeID
	extern CFStringGetTypeID
	extern CFStringGetCString
	extern CFPreferencesSetAppValue

;Exports of MacPreferences:
	global _ZN14MacPreferences10GetBooleanEPKcb
	global _ZN14MacPreferences10GetIntegerEPKci
	global _ZN14MacPreferences10PutBooleanEPKcb
	global _ZN14MacPreferences10PutIntegerEPKci
	global _ZN14MacPreferences11SynchronizeEv
	global _ZN14MacPreferences7GetRectEPKcR6CGRect
	global _ZN14MacPreferences7PutRectEPKcRK6CGRect
	global _ZN14MacPreferences9GetStringEPKcPciS1_
	global _ZN14MacPreferences9PutStringEPKcS1_


SECTION .text


;MacPreferences::GetBoolean(char const*, bool)
_ZN14MacPreferences10GetBooleanEPKcb:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x110
	movzx ebx, byte [ebp+0xc]
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x100
	lea esi, [ebp-0x108]
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _ZN14MacPreferences9GetStringEPKcPciS1_
	cmp byte [ebp-0x108], 0x0
	jz _ZN14MacPreferences10GetBooleanEPKcb_10
	mov [esp], esi
	call atoi
	mov ebx, eax
_ZN14MacPreferences10GetBooleanEPKcb_10:
	xor eax, eax
	test ebx, ebx
	setnz al
	add esp, 0x110
	pop ebx
	pop esi
	pop ebp
	ret


;MacPreferences::GetInteger(char const*, int)
_ZN14MacPreferences10GetIntegerEPKci:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x114
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x100
	lea ebx, [ebp-0x108]
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _ZN14MacPreferences9GetStringEPKcPciS1_
	cmp byte [ebp-0x108], 0x0
	jnz _ZN14MacPreferences10GetIntegerEPKci_10
	mov eax, [ebp+0xc]
	add esp, 0x114
	pop ebx
	pop ebp
	ret
_ZN14MacPreferences10GetIntegerEPKci_10:
	mov [esp], ebx
	call atoi
	add esp, 0x114
	pop ebx
	pop ebp
	ret
	nop


;MacPreferences::PutBoolean(char const*, bool)
_ZN14MacPreferences10PutBooleanEPKcb:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x114
	movzx eax, byte [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_d
	lea ebx, [ebp-0x108]
	mov [esp], ebx
	call sprintf
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _ZN14MacPreferences9PutStringEPKcS1_
	add esp, 0x114
	pop ebx
	pop ebp
	ret
	add [eax], al


;MacPreferences::PutInteger(char const*, int)
_ZN14MacPreferences10PutIntegerEPKci:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x114
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_d
	lea ebx, [ebp-0x108]
	mov [esp], ebx
	call sprintf
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _ZN14MacPreferences9PutStringEPKcS1_
	add esp, 0x114
	pop ebx
	pop ebp
	ret
	nop


;MacPreferences::Synchronize()
_ZN14MacPreferences11SynchronizeEv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [0xd5cc020]
	mov eax, [eax]
	mov [esp], eax
	call CFPreferencesAppSynchronize
	leave
	ret
	nop


;MacPreferences::GetRect(char const*, CGRect&)
_ZN14MacPreferences7GetRectEPKcR6CGRect:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x23c
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x118]
	mov [esp], ebx
	call strcpy
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	lea ecx, [ecx+ebx-0x1]
	mov dword [ecx], 0x69726f2e
	mov dword [ecx+0x4], 0x2e6e6967
	mov word [ecx+0x8], 0x78
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x100
	lea esi, [ebp-0x218]
	mov [esp+0x4], esi
	mov [esp], ebx
	call _ZN14MacPreferences9GetStringEPKcPciS1_
	pxor xmm0, xmm0
	cmp byte [ebp-0x218], 0x0
	jnz _ZN14MacPreferences7GetRectEPKcR6CGRect_10
_ZN14MacPreferences7GetRectEPKcR6CGRect_70:
	mov eax, [ebp+0xc]
	movss [eax], xmm0
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], ebx
	call strcpy
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	lea ecx, [ecx+ebx-0x1]
	mov dword [ecx], 0x69726f2e
	mov dword [ecx+0x4], 0x2e6e6967
	mov word [ecx+0x8], 0x79
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x100
	mov [esp+0x4], esi
	mov [esp], ebx
	call _ZN14MacPreferences9GetStringEPKcPciS1_
	pxor xmm0, xmm0
	cmp byte [ebp-0x218], 0x0
	jnz _ZN14MacPreferences7GetRectEPKcR6CGRect_20
_ZN14MacPreferences7GetRectEPKcR6CGRect_60:
	mov eax, [ebp+0xc]
	movss [eax+0x4], xmm0
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], ebx
	call strcpy
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	lea ecx, [ecx+ebx-0x1]
	mov dword [ecx], 0x7a69732e
	mov dword [ecx+0x4], 0x69772e65
	mov dword [ecx+0x8], 0x687464
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x100
	mov [esp+0x4], esi
	mov [esp], ebx
	call _ZN14MacPreferences9GetStringEPKcPciS1_
	pxor xmm0, xmm0
	cmp byte [ebp-0x218], 0x0
	jnz _ZN14MacPreferences7GetRectEPKcR6CGRect_30
_ZN14MacPreferences7GetRectEPKcR6CGRect_50:
	mov eax, [ebp+0xc]
	movss [eax+0x8], xmm0
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], ebx
	call strcpy
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	lea ecx, [ecx+ebx-0x1]
	mov dword [ecx], 0x7a69732e
	mov dword [ecx+0x4], 0x65682e65
	mov dword [ecx+0x8], 0x74686769
	mov byte [ecx+0xc], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x100
	mov [esp+0x4], esi
	mov [esp], ebx
	call _ZN14MacPreferences9GetStringEPKcPciS1_
	pxor xmm0, xmm0
	cmp byte [ebp-0x218], 0x0
	jz _ZN14MacPreferences7GetRectEPKcR6CGRect_40
	mov [esp], esi
	call atof
	fstp qword [ebp-0x220]
	cvtsd2ss xmm0, [ebp-0x220]
_ZN14MacPreferences7GetRectEPKcR6CGRect_40:
	mov eax, [ebp+0xc]
	movss [eax+0xc], xmm0
	add esp, 0x23c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN14MacPreferences7GetRectEPKcR6CGRect_30:
	mov [esp], esi
	call atof
	fstp qword [ebp-0x228]
	cvtsd2ss xmm0, [ebp-0x228]
	jmp _ZN14MacPreferences7GetRectEPKcR6CGRect_50
_ZN14MacPreferences7GetRectEPKcR6CGRect_20:
	mov [esp], esi
	call atof
	fstp qword [ebp-0x230]
	cvtsd2ss xmm0, [ebp-0x230]
	jmp _ZN14MacPreferences7GetRectEPKcR6CGRect_60
_ZN14MacPreferences7GetRectEPKcR6CGRect_10:
	mov [esp], esi
	call atof
	fstp qword [ebp-0x238]
	cvtsd2ss xmm0, [ebp-0x238]
	jmp _ZN14MacPreferences7GetRectEPKcR6CGRect_70
	nop


;MacPreferences::PutRect(char const*, CGRect const&)
_ZN14MacPreferences7PutRectEPKcRK6CGRect:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x21c
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x118]
	mov [esp], ebx
	call strcpy
	cld
	mov ecx, 0xffffffff
	mov edi, ebx
	xor eax, eax
	repne scasb
	not ecx
	lea ecx, [ecx+ebx-0x1]
	mov dword [ecx], 0x69726f2e
	mov dword [ecx+0x4], 0x2e6e6967
	mov word [ecx+0x8], 0x78
	mov eax, [ebp+0xc]
	cvtss2sd xmm0, [eax]
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_f
	lea esi, [ebp-0x218]
	mov [esp], esi
	call sprintf
	mov [esp+0x4], esi
	mov [esp], ebx
	call _ZN14MacPreferences9PutStringEPKcS1_
	mov edi, [ebp+0x8]
	mov [esp+0x4], edi
	mov [esp], ebx
	call strcpy
	mov edi, ebx
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	not ecx
	lea ecx, [ecx+ebx-0x1]
	mov dword [ecx], 0x69726f2e
	mov dword [ecx+0x4], 0x2e6e6967
	mov word [ecx+0x8], 0x79
	mov edi, [ebp+0xc]
	cvtss2sd xmm0, [edi+0x4]
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_f
	mov [esp], esi
	call sprintf
	mov [esp+0x4], esi
	mov [esp], ebx
	call _ZN14MacPreferences9PutStringEPKcS1_
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], ebx
	call strcpy
	cld
	mov ecx, 0xffffffff
	mov edi, ebx
	xor eax, eax
	repne scasb
	not ecx
	lea ecx, [ecx+ebx-0x1]
	mov dword [ecx], 0x7a69732e
	mov dword [ecx+0x4], 0x69772e65
	mov dword [ecx+0x8], 0x687464
	mov eax, [ebp+0xc]
	cvtss2sd xmm0, [eax+0x8]
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_f
	mov [esp], esi
	call sprintf
	mov [esp+0x4], esi
	mov [esp], ebx
	call _ZN14MacPreferences9PutStringEPKcS1_
	mov edi, [ebp+0x8]
	mov [esp+0x4], edi
	mov [esp], ebx
	call strcpy
	cld
	mov ecx, 0xffffffff
	mov edi, ebx
	xor eax, eax
	repne scasb
	not ecx
	lea ecx, [ecx+ebx-0x1]
	mov dword [ecx], 0x7a69732e
	mov dword [ecx+0x4], 0x65682e65
	mov dword [ecx+0x8], 0x74686769
	mov byte [ecx+0xc], 0x0
	mov eax, [ebp+0xc]
	cvtss2sd xmm0, [eax+0xc]
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_f
	mov [esp], esi
	call sprintf
	mov [esp+0x4], esi
	mov [esp], ebx
	call _ZN14MacPreferences9PutStringEPKcS1_
	add esp, 0x21c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;MacPreferences::GetString(char const*, char*, int, char const*)
_ZN14MacPreferences9GetStringEPKcPciS1_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0xc]
	mov dword [esp+0x8], 0x0
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call CFStringCreateWithCString
	mov ebx, eax
	mov eax, [0xd5cc020]
	mov eax, [eax]
	mov [esp+0x4], eax
	mov [esp], ebx
	call CFPreferencesCopyAppValue
	mov esi, eax
	mov [esp], ebx
	call CFRelease
	test esi, esi
	jz _ZN14MacPreferences9GetStringEPKcPciS1__10
	mov [esp], esi
	call CFGetTypeID
	mov ebx, eax
	call CFStringGetTypeID
	cmp ebx, eax
	jz _ZN14MacPreferences9GetStringEPKcPciS1__20
_ZN14MacPreferences9GetStringEPKcPciS1__40:
	mov [esp], esi
	call CFRelease
_ZN14MacPreferences9GetStringEPKcPciS1__10:
	mov eax, [ebp+0x14]
	test eax, eax
	jz _ZN14MacPreferences9GetStringEPKcPciS1__30
	mov eax, [ebp+0x14]
	mov [esp+0x4], eax
	mov [esp], edi
	call strcpy
	xor eax, eax
_ZN14MacPreferences9GetStringEPKcPciS1__50:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN14MacPreferences9GetStringEPKcPciS1__30:
	mov byte [edi], 0x0
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN14MacPreferences9GetStringEPKcPciS1__20:
	mov dword [esp+0xc], 0x0
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov [esp], esi
	call CFStringGetCString
	test al, al
	jz _ZN14MacPreferences9GetStringEPKcPciS1__40
	mov [esp], esi
	call CFRelease
	mov eax, 0x1
	jmp _ZN14MacPreferences9GetStringEPKcPciS1__50


;MacPreferences::PutString(char const*, char const*)
_ZN14MacPreferences9PutStringEPKcS1_:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0xc]
	mov dword [esp+0x8], 0x0
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call CFStringCreateWithCString
	mov esi, eax
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov dword [esp], 0x0
	call CFStringCreateWithCString
	mov ebx, eax
	mov eax, [0xd5cc020]
	mov eax, [eax]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], esi
	call CFPreferencesSetAppValue
	mov [esp], ebx
	call CFRelease
	mov [ebp+0x8], esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp CFRelease
	nop


;Initialized global or static variables of MacPreferences:
SECTION .data


;Initialized constant data of MacPreferences:
SECTION .rdata


;Zero initialized global or static variables of MacPreferences:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_d:		db "%d",0
_cstring_f:		db "%f",0



;All constant floats and doubles:
SECTION .rdata

