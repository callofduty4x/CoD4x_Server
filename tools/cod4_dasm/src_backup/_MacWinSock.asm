;Imports of MacWinSock:
	extern __error
	extern memset
	extern close
	extern ioctl

;Exports of MacWinSock:
	global WSAGetLastError
	global WSAStartup
	global closesocket
	global ioctlsocket


SECTION .text


;WSAGetLastError
WSAGetLastError:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call __error
	mov eax, [eax]
	lea edx, [eax-0x1]
	lea ecx, [eax+0x2710]
	cmp edx, 0x57
	cmovbe eax, ecx
	leave
	ret


;WSAStartup
WSAStartup:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov dword [esp+0x8], 0x190
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call memset
	mov [ebx], si
	xor eax, eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;closesocket
closesocket:
	push ebp
	mov ebp, esp
	pop ebp
	jmp close
	nop


;ioctlsocket
ioctlsocket:
	push ebp
	mov ebp, esp
	pop ebp
	jmp ioctl
	nop


;Initialized global or static variables of MacWinSock:
SECTION .data


;Initialized constant data of MacWinSock:
SECTION .rdata


;Zero initialized global or static variables of MacWinSock:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

