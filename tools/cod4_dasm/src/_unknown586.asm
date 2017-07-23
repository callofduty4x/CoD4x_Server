;Imports of unknown586:
	extern __i686.get_pc_thunk.bx
	extern HIDIsValidDevice:F(0,40)
	extern HIDReportErrorNum:F(0,1)
	extern HIDReportError:F(0,1)
	extern HIDIsValidElement:F(0,40)
	extern scene
	extern CFRunLoopGetCurrent
	extern CFRunLoopContainsSource
	extern CFRunLoopRemoveSource
	extern CFRelease
	extern HIDGetFirstDeviceElement:F(0,13)
	extern HIDGetNextDeviceElement:F(0,13)
	extern HIDGetFirstDevice:F(0,4)
	extern HIDGetNextDevice:F(0,4)

;Exports of unknown586:
	global hu_CreateQueue:f(0,2)
	global HIDQueueElement:F(0,17)
	global HIDCloseReleaseInterface:F(0,17)
	global HIDGetEvent:F(0,18)
	global hu_DisposeReleaseQueue:f(0,2)
	global HIDDequeueDevice:F(0,17)
	global HIDReleaseAllDeviceQueues:F(0,17)


SECTION .text


;hu_CreateQueue:f(0,2)
hu_CreateQueue:f(0,2):
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	call __i686.get_pc_thunk.bx
	mov esi, eax
	mov [esp], eax
	call HIDIsValidDevice:F(0,40)
	test al, al
	jz hu_CreateQueue:f(0,2)_10
	mov eax, [esi+0x4]
	test eax, eax
	jnz hu_CreateQueue:f(0,2)_20
	mov edx, [esi]
	test edx, edx
	jz hu_CreateQueue:f(0,2)_30
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x40]
	mov edx, eax
	mov [esi+0x4], eax
	test eax, eax
	jz hu_CreateQueue:f(0,2)_40
	mov eax, [eax]
	mov dword [esp+0x8], 0x32
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call dword [eax+0x20]
	mov esi, eax
	test eax, eax
	jz hu_CreateQueue:f(0,2)_50
	mov [esp+0x4], eax
	lea eax, [ebx+0x504df]
	mov [esp], eax
	call HIDReportErrorNum:F(0,1)
	jmp hu_CreateQueue:f(0,2)_50
hu_CreateQueue:f(0,2)_40:
	lea eax, [ebx+0x50513]
	mov [esp], eax
	call HIDReportError:F(0,1)
	mov esi, 0xe00002bc
	jmp hu_CreateQueue:f(0,2)_50
hu_CreateQueue:f(0,2)_30:
	mov dword [esp+0x4], 0x0
	lea eax, [ebx+0x5055b]
	jmp hu_CreateQueue:f(0,2)_60
hu_CreateQueue:f(0,2)_10:
	mov dword [esp+0x4], 0x0
	lea eax, [ebx+0x5059f]
hu_CreateQueue:f(0,2)_60:
	mov [esp], eax
	call HIDReportErrorNum:F(0,1)
hu_CreateQueue:f(0,2)_20:
	xor esi, esi
hu_CreateQueue:f(0,2)_50:
	mov eax, esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;HIDQueueElement:F(0,17)
HIDQueueElement:F(0,17):
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	call __i686.get_pc_thunk.bx
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov [esp+0x4], edi
	mov [esp], esi
	call HIDIsValidElement:F(0,40)
	test al, al
	jz HIDQueueElement:F(0,17)_10
	mov eax, [esi]
	test eax, eax
	jnz HIDQueueElement:F(0,17)_20
	lea eax, [ebx+0x5050d]
	mov [esp], eax
	call HIDReportError:F(0,1)
	mov eax, 0xe00002bc
	jmp HIDQueueElement:F(0,17)_30
HIDQueueElement:F(0,17)_20:
	mov eax, [esi+0x4]
	test eax, eax
	jnz HIDQueueElement:F(0,17)_40
	mov eax, esi
	call hu_CreateQueue:f(0,2)
	mov [ebp-0x1c], eax
	test eax, eax
	jnz HIDQueueElement:F(0,17)_50
	mov ecx, [esi+0x4]
	test ecx, ecx
	jnz HIDQueueElement:F(0,17)_40
HIDQueueElement:F(0,17)_50:
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	lea eax, [ebx+0x50541]
	mov [esp], eax
	call HIDReportErrorNum:F(0,1)
	mov eax, 0xe00002bc
	mov edx, [ebp-0x1c]
	test edx, edx
	cmovnz eax, [ebp-0x1c]
	jmp HIDQueueElement:F(0,17)_30
HIDQueueElement:F(0,17)_40:
	mov eax, [esi+0x4]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x38]
	test eax, eax
	jz HIDQueueElement:F(0,17)_60
	lea eax, [ebx+0x5056d]
	mov [esp], eax
	call HIDReportError:F(0,1)
HIDQueueElement:F(0,17)_60:
	mov edx, [esi+0x4]
	mov ecx, [edx]
	mov eax, [edi+0xc]
	mov [esp+0x4], eax
	mov [esp], edx
	call dword [ecx+0x30]
	test al, al
	jnz HIDQueueElement:F(0,17)_70
	mov edx, [esi+0x4]
	mov ecx, [edx]
	mov dword [esp+0x8], 0x0
	mov eax, [edi+0xc]
	mov [esp+0x4], eax
	mov [esp], edx
	call dword [ecx+0x28]
	test eax, eax
	jz HIDQueueElement:F(0,17)_70
	lea eax, [ebx+0x50599]
	mov [esp], eax
	call HIDReportError:F(0,1)
HIDQueueElement:F(0,17)_70:
	mov eax, [esi+0x4]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x34]
	mov esi, eax
	test eax, eax
	jz HIDQueueElement:F(0,17)_80
	lea eax, [ebx+0x505cd]
	mov [esp], eax
	call HIDReportError:F(0,1)
HIDQueueElement:F(0,17)_80:
	mov eax, esi
	jmp HIDQueueElement:F(0,17)_30
HIDQueueElement:F(0,17)_10:
	lea eax, [ebx+0x505f9]
	mov [esp], eax
	call HIDReportError:F(0,1)
	mov eax, 0xe00002c2
HIDQueueElement:F(0,17)_30:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;HIDCloseReleaseInterface:F(0,17)
HIDCloseReleaseInterface:F(0,17):
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	call __i686.get_pc_thunk.bx
	mov edi, [ebp+0x8]
	mov [esp], edi
	call HIDIsValidDevice:F(0,40)
	test al, al
	jz HIDCloseReleaseInterface:F(0,17)_10
	mov edx, [edi]
	test edx, edx
	jz HIDCloseReleaseInterface:F(0,17)_10
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x24]
	cmp eax, 0xe00002cd
	jz HIDCloseReleaseInterface:F(0,17)_20
	test eax, eax
	jz HIDCloseReleaseInterface:F(0,17)_20
	mov [esp+0x4], eax
	lea eax, [ebx+0x50503]
	mov [esp], eax
	call HIDReportErrorNum:F(0,1)
HIDCloseReleaseInterface:F(0,17)_20:
	mov eax, [edi]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0xc]
	mov esi, eax
	test eax, eax
	jz HIDCloseReleaseInterface:F(0,17)_30
	mov [esp+0x4], eax
	lea eax, [ebx+0x50547]
	mov [esp], eax
	call HIDReportErrorNum:F(0,1)
HIDCloseReleaseInterface:F(0,17)_30:
	mov dword [edi], 0x0
	mov eax, esi
	jmp HIDCloseReleaseInterface:F(0,17)_40
HIDCloseReleaseInterface:F(0,17)_10:
	xor eax, eax
HIDCloseReleaseInterface:F(0,17)_40:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;HIDGetEvent:F(0,18)
HIDGetEvent:F(0,18):
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	call __i686.get_pc_thunk.bx
	mov esi, [ebp+0x8]
	mov [esp], esi
	call HIDIsValidDevice:F(0,40)
	test al, al
	jz HIDGetEvent:F(0,18)_10
	mov edx, [esi+0x4]
	test edx, edx
	jz HIDGetEvent:F(0,18)_20
	mov eax, [edx]
	mov dword [esp+0x10], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0xc], 0x0
	mov ecx, [ebp+0xc]
	mov [esp+0x4], ecx
	mov [esp], edx
	call dword [eax+0x3c]
	cmp eax, 0xe00002e7
	jz HIDGetEvent:F(0,18)_30
	test eax, eax
	jnz HIDGetEvent:F(0,18)_40
	mov al, 0x1
	jmp HIDGetEvent:F(0,18)_50
HIDGetEvent:F(0,18)_40:
	mov [esp+0x4], eax
	lea eax, [ebx+0x50506]
	mov [esp], eax
	call HIDReportErrorNum:F(0,1)
	jmp HIDGetEvent:F(0,18)_30
HIDGetEvent:F(0,18)_20:
	lea eax, [ebx+0x50542]
	jmp HIDGetEvent:F(0,18)_60
HIDGetEvent:F(0,18)_10:
	lea eax, [ebx+0x5056a]
HIDGetEvent:F(0,18)_60:
	mov [esp], eax
	call HIDReportError:F(0,1)
HIDGetEvent:F(0,18)_30:
	xor eax, eax
HIDGetEvent:F(0,18)_50:
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret


;hu_DisposeReleaseQueue:f(0,2)
hu_DisposeReleaseQueue:f(0,2):
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	call __i686.get_pc_thunk.bx
	mov edi, eax
	mov [esp], eax
	call HIDIsValidDevice:F(0,40)
	test al, al
	jz hu_DisposeReleaseQueue:f(0,2)_10
	mov edx, [edi+0x4]
	test edx, edx
	jz hu_DisposeReleaseQueue:f(0,2)_20
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x38]
	test eax, eax
	jz hu_DisposeReleaseQueue:f(0,2)_30
	mov [esp+0x4], eax
	lea eax, [ebx+0x504fc]
	mov [esp], eax
	call HIDReportErrorNum:F(0,1)
hu_DisposeReleaseQueue:f(0,2)_30:
	mov eax, [edi+0x4]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x24]
	test eax, eax
	jz hu_DisposeReleaseQueue:f(0,2)_40
	mov [esp+0x4], eax
	lea eax, [ebx+0x5052c]
	mov [esp], eax
	call HIDReportErrorNum:F(0,1)
hu_DisposeReleaseQueue:f(0,2)_40:
	mov eax, [edi+0x4]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0xc]
	mov [ebp-0x1c], eax
	test eax, eax
	jz hu_DisposeReleaseQueue:f(0,2)_50
	mov [esp+0x4], eax
	lea eax, [ebx+0x50560]
	mov [esp], eax
	call HIDReportErrorNum:F(0,1)
hu_DisposeReleaseQueue:f(0,2)_50:
	mov dword [edi+0x4], 0x0
	mov esi, [edi+0xc]
	test esi, esi
	jz hu_DisposeReleaseQueue:f(0,2)_60
	mov eax, [ebx+scene+0xada40]
	mov eax, [eax]
	mov [ebp-0x20], eax
	call CFRunLoopGetCurrent
	mov edx, [ebp-0x20]
	mov [esp+0x8], edx
	mov [esp+0x4], esi
	mov [esp], eax
	call CFRunLoopContainsSource
	test al, al
	jz hu_DisposeReleaseQueue:f(0,2)_70
	mov esi, [edi+0xc]
	call CFRunLoopGetCurrent
	mov edx, [ebp-0x20]
	mov [esp+0x8], edx
	mov [esp+0x4], esi
	mov [esp], eax
	call CFRunLoopRemoveSource
hu_DisposeReleaseQueue:f(0,2)_70:
	mov eax, [edi+0xc]
	mov [esp], eax
	call CFRelease
	mov dword [edi+0xc], 0x0
	jmp hu_DisposeReleaseQueue:f(0,2)_60
hu_DisposeReleaseQueue:f(0,2)_20:
	lea eax, [ebx+0x50594]
	jmp hu_DisposeReleaseQueue:f(0,2)_80
hu_DisposeReleaseQueue:f(0,2)_10:
	lea eax, [ebx+0x505b8]
hu_DisposeReleaseQueue:f(0,2)_80:
	mov [esp], eax
	call HIDReportError:F(0,1)
	mov dword [ebp-0x1c], 0x0
hu_DisposeReleaseQueue:f(0,2)_60:
	mov eax, [ebp-0x1c]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;HIDDequeueDevice:F(0,17)
HIDDequeueDevice:F(0,17):
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	call __i686.get_pc_thunk.bx
	mov edi, [ebp+0x8]
	mov [esp], edi
	call HIDIsValidDevice:F(0,40)
	test al, al
	jz HIDDequeueDevice:F(0,17)_10
	mov eax, [edi]
	test eax, eax
	jnz HIDDequeueDevice:F(0,17)_20
	mov dword [ebp-0x1c], 0x0
	jmp HIDDequeueDevice:F(0,17)_30
HIDDequeueDevice:F(0,17)_20:
	mov eax, [edi+0x4]
	test eax, eax
	jz HIDDequeueDevice:F(0,17)_40
	mov dword [esp+0x4], 0xe
	mov [esp], edi
	call HIDGetFirstDeviceElement:F(0,13)
	mov esi, eax
	mov dword [ebp-0x1c], 0x0
	lea eax, [ebx+0x504ca]
	mov [ebp-0x20], eax
	jmp HIDDequeueDevice:F(0,17)_50
HIDDequeueDevice:F(0,17)_70:
	mov edx, [edi+0x4]
	mov ecx, [edx]
	mov eax, [esi+0xc]
	mov [esp+0x4], eax
	mov [esp], edx
	call dword [ecx+0x30]
	test al, al
	jz HIDDequeueDevice:F(0,17)_60
	mov eax, [edi+0x4]
	mov ecx, [eax]
	mov edx, [esi+0xc]
	mov [esp+0x4], edx
	mov [esp], eax
	call dword [ecx+0x2c]
	mov [ebp-0x1c], eax
	test eax, eax
	jz HIDDequeueDevice:F(0,17)_60
	mov [esp+0x4], eax
	mov eax, [ebp-0x20]
	mov [esp], eax
	call HIDReportErrorNum:F(0,1)
HIDDequeueDevice:F(0,17)_60:
	mov dword [esp+0x4], 0xe
	mov [esp], esi
	call HIDGetNextDeviceElement:F(0,13)
	mov esi, eax
HIDDequeueDevice:F(0,17)_50:
	test esi, esi
	jnz HIDDequeueDevice:F(0,17)_70
HIDDequeueDevice:F(0,17)_30:
	mov esi, [edi+0x4]
	test esi, esi
	jnz HIDDequeueDevice:F(0,17)_80
	mov eax, [ebp-0x1c]
	jmp HIDDequeueDevice:F(0,17)_90
HIDDequeueDevice:F(0,17)_80:
	mov eax, edi
	call hu_DisposeReleaseQueue:f(0,2)
	mov esi, eax
	test eax, eax
	jz HIDDequeueDevice:F(0,17)_40
	mov [esp+0x4], eax
	lea eax, [ebx+0x50506]
	mov [esp], eax
	call HIDReportErrorNum:F(0,1)
	mov eax, esi
	jmp HIDDequeueDevice:F(0,17)_90
HIDDequeueDevice:F(0,17)_10:
	lea eax, [ebx+0x5053e]
	mov [esp], eax
	call HIDReportError:F(0,1)
	mov eax, 0xe00002c2
	jmp HIDDequeueDevice:F(0,17)_90
HIDDequeueDevice:F(0,17)_40:
	xor eax, eax
HIDDequeueDevice:F(0,17)_90:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;HIDReleaseAllDeviceQueues:F(0,17)
HIDReleaseAllDeviceQueues:F(0,17):
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	call __i686.get_pc_thunk.bx
	call HIDGetFirstDevice:F(0,4)
	mov esi, eax
	mov edi, 0xe00002c2
	lea eax, [ebx+0x5045e]
	mov [ebp-0x1c], eax
	jmp HIDReleaseAllDeviceQueues:F(0,17)_10
HIDReleaseAllDeviceQueues:F(0,17)_30:
	mov [esp], esi
	call HIDDequeueDevice:F(0,17)
	mov edi, eax
	test eax, eax
	jz HIDReleaseAllDeviceQueues:F(0,17)_20
	mov [esp+0x4], eax
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call HIDReportErrorNum:F(0,1)
HIDReleaseAllDeviceQueues:F(0,17)_20:
	mov [esp], esi
	call HIDGetNextDevice:F(0,4)
	mov esi, eax
HIDReleaseAllDeviceQueues:F(0,17)_10:
	test esi, esi
	jnz HIDReleaseAllDeviceQueues:F(0,17)_30
	mov eax, edi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;Initialized global or static variables of unknown586:
SECTION .data


;Initialized constant data of unknown586:
SECTION .rdata


;Zero initialized global or static variables of unknown586:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

