;Imports of pbcl:
	extern dlclose
	extern memset
	extern __cxa_atexit
	extern strncasecmp
	extern _Z13PbMsgToScreenPcS_
	extern _Z10Com_PrintfiPKcz
	extern _Z21Dvar_GetVariantStringPKc
	extern strncpy
	extern _Z14PbDvarValidatePc
	extern _Z10PbDvarWalkPPcS0_PiS0_
	extern strcmp
	extern atoi
	extern _Z18Key_KeynumToStringii
	extern _Z14Key_GetBindingii
	extern _Z9PbMaxKeysv
	extern _Z15PB_Q_Serveraddri
	extern _Z15PB_Q_Serverinfoi
	extern _Z16Info_ValueForKeyPKcS0_
	extern __toupper
	extern strstr
	extern strcpy
	extern tolower
	extern strcasecmp
	extern _Z17set_cl_punkbusterPc
	extern _Z10PBdvar_setPKcS0_
	extern _Z14PBget_cl_cdkeyPc
	extern _Z15CL_SendPbPacketiiPc
	extern _Z19Sys_PBSendUdpPacketPctiS_
	extern pbsv
	extern fopen
	extern fclose
	extern chmod
	extern remove
	extern rename
	extern dlopen
	extern dlsym
	extern getcwd

;Exports of pbcl:
	global _GLOBAL__I_pbcl
	global _Z10EnablePbClv
	global _Z11DisablePbClv
	global _Z11PbClGameMsgPci
	global _Z12PbClAddEventiiPc
	global _Z13PbClGameQueryiPc
	global _Z13isPbClEnabledv
	global _Z15PbClGameCommandPcS_
	global _Z16PbClSendToServeriPc
	global _Z16PbTrapPreExecCmdPc
	global _Z18PbClSendToAddrPortPctiS_
	global _Z18PbClientConnectingiPcPi
	global _Z18PbClientInitializePv
	global _Z19PbClientTrapConsolePci
	global _Z21PbClientProcessEventsv
	global _Z23PbClientCompleteCommandPci
	global _ZN6stPbCl10AddPbEventEiiPci
	global exeInstance
	global pbcl


SECTION .text


;global constructors keyed to pbcl
_GLOBAL__I_pbcl:
	push ebp
	mov ebp, esp
	mov edx, 0xffff
	mov eax, 0x1
	pop ebp


;__tcf_0
__tcf_0:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [pbcl+0x18c], 0x0
	mov dword [pbcl+0x188], 0x0
	mov dword [pbcl+0x198], 0x0
	mov dword [pbcl+0x19c], 0x0
	mov dword [pbcl+0x1a0], 0x0
	mov eax, [pbcl+0x8]
	test eax, eax
	jz __tcf_0_10
	mov [esp], eax
	call dlclose
	mov dword [pbcl+0x8], 0x0
__tcf_0_10:
	mov eax, [pbcl+0xc]
	test eax, eax
	jz __tcf_0_20
	mov [esp], eax
	call dlclose
	mov dword [pbcl+0xc], 0x0
__tcf_0_20:
	leave
	ret


;__static_initialization_and_destruction_0(int, int)
_Z41__static_initialization_and_destruction_0ii:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	cmp edx, 0xffff
	jz _Z41__static_initialization_and_destruction_0ii_10
_Z41__static_initialization_and_destruction_0ii_20:
	leave
	ret
_Z41__static_initialization_and_destruction_0ii_10:
	sub eax, 0x1
	jnz _Z41__static_initialization_and_destruction_0ii_20
	mov dword [esp+0x8], 0x1a8
	mov dword [esp+0x4], 0x0
	mov dword [esp], pbcl
	call memset
	mov dword [pbcl], 0x264b8bbd
	mov dword [pbcl+0x35], 0x6b6e7550
	mov dword [pbcl+0x39], 0x74737542
	mov dword [pbcl+0x3d], 0x43207265
	mov dword [pbcl+0x41], 0x6e65696c
	mov word [pbcl+0x45], 0x74
	mov dword [pbcl+0xc], 0x0
	mov dword [pbcl+0x8], 0x0
	mov dword [pbcl+0x10], 0x1
	mov dword [pbcl+0x178], 0x0
	mov dword [pbcl+0x17c], 0x0
	mov dword [pbcl+0x180], 0x0
	mov dword [pbcl+0x184], 0x0
	mov dword [pbcl+0x4], 0x0
	mov dword [pbcl+0x188], 0x0
	mov dword [pbcl+0x18c], 0x0
	mov dword [pbcl+0x190], 0x0
	mov dword [pbcl+0x194], 0x0
	mov dword [pbcl+0x198], 0x0
	mov dword [pbcl+0x19c], 0x0
	mov dword [pbcl+0x1a0], 0x0
	mov eax, [0xd5cc00c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov dword [esp], __tcf_0
	call __cxa_atexit
	leave
	ret
	nop


;EnablePbCl()
_Z10EnablePbClv:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x75
	mov dword [esp], pbcl
	call _ZN6stPbCl10AddPbEventEiiPci
	leave
	ret


;DisablePbCl()
_Z11DisablePbClv:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x76
	mov dword [esp], pbcl
	call _ZN6stPbCl10AddPbEventEiiPci
	leave
	ret


;PbClGameMsg(char*, int)
_Z11PbClGameMsgPci:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [esp+0x8], 0xc
	mov dword [esp+0x4], _cstring_skipnotify
	mov dword [esp], pbcl+0x35
	call strncasecmp
	test eax, eax
	jz _Z11PbClGameMsgPci_10
	mov [esp+0x4], ebx
	mov dword [esp], pbcl+0x35
	call _Z13PbMsgToScreenPcS_
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z11PbClGameMsgPci_10:
	mov [esp+0xc], ebx
	mov dword [esp+0x8], pbcl+0x41
	mov dword [esp+0x4], _cstring_s_s
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;PbClAddEvent(int, int, char*)
_Z12PbClAddEventiiPc:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov dword [esp+0x10], 0x0
	mov eax, [ebp+0x10]
	mov [esp+0xc], eax
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], pbcl
	call _ZN6stPbCl10AddPbEventEiiPci
	leave
	ret
	nop


;PbClGameQuery(int, char*)
_Z13PbClGameQueryiPc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov ebx, [ebp+0xc]
	test ebx, ebx
	jz _Z13PbClGameQueryiPc_10
	mov byte [ebx+0xff], 0x0
	movzx edx, byte [ebx]
	test dl, dl
	jz _Z13PbClGameQueryiPc_20
	cmp dl, 0x20
	jz _Z13PbClGameQueryiPc_30
	mov [ebp-0x7c], ebx
_Z13PbClGameQueryiPc_50:
	add dword [ebp-0x7c], 0x1
	mov ecx, [ebp-0x7c]
	movzx eax, byte [ecx]
	test al, al
	jz _Z13PbClGameQueryiPc_40
	cmp al, 0x20
	jnz _Z13PbClGameQueryiPc_50
	mov edi, [ebp-0x7c]
	cmp byte [edi], 0x20
	jnz _Z13PbClGameQueryiPc_60
_Z13PbClGameQueryiPc_70:
	add dword [ebp-0x7c], 0x1
	mov eax, [ebp-0x7c]
	cmp byte [eax], 0x20
	jnz _Z13PbClGameQueryiPc_60
_Z13PbClGameQueryiPc_90:
	add dword [ebp-0x7c], 0x1
	mov eax, [ebp-0x7c]
	cmp byte [eax], 0x20
	jz _Z13PbClGameQueryiPc_70
	jmp _Z13PbClGameQueryiPc_60
_Z13PbClGameQueryiPc_540:
	mov [esp], ebx
	call _Z21Dvar_GetVariantStringPKc
_Z13PbClGameQueryiPc_230:
	mov dword [esp+0x8], 0xff
	mov [esp+0x4], eax
	mov [esp], ebx
	call strncpy
_Z13PbClGameQueryiPc_10:
	xor eax, eax
_Z13PbClGameQueryiPc_110:
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13PbClGameQueryiPc_20:
	mov [ebp-0x7c], ebx
	mov edi, ebx
_Z13PbClGameQueryiPc_100:
	cmp byte [edi], 0x20
	jz _Z13PbClGameQueryiPc_70
_Z13PbClGameQueryiPc_60:
	mov eax, [ebp+0x8]
	sub eax, 0x67
	cmp eax, 0xc
	ja _Z13PbClGameQueryiPc_80
	jmp dword [eax*4+_Z13PbClGameQueryiPc_jumptab_0]
_Z13PbClGameQueryiPc_80:
	mov byte [ebx], 0x0
	jmp _Z13PbClGameQueryiPc_10
_Z13PbClGameQueryiPc_30:
	mov [ebp-0x7c], ebx
	add dword [ebp-0x7c], 0x1
	mov eax, [ebp-0x7c]
	cmp byte [eax], 0x20
	jz _Z13PbClGameQueryiPc_90
	jmp _Z13PbClGameQueryiPc_60
_Z13PbClGameQueryiPc_40:
	mov edi, ecx
	jmp _Z13PbClGameQueryiPc_100
_Z13PbClGameQueryiPc_640:
	mov [esp], ebx
	call _Z14PbDvarValidatePc
	jmp _Z13PbClGameQueryiPc_110
_Z13PbClGameQueryiPc_630:
	mov dword [esp+0x8], 0xff
	mov eax, [exeInstance]
	mov [esp+0x4], eax
	mov [esp], ebx
	call strncpy
	xor eax, eax
	jmp _Z13PbClGameQueryiPc_110
_Z13PbClGameQueryiPc_620:
	lea eax, [ebp-0x28]
	mov [esp+0xc], eax
	lea eax, [ebp-0x2c]
	mov [esp+0x8], eax
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z10PbDvarWalkPPcS0_PiS0_
	test eax, eax
	jz _Z13PbClGameQueryiPc_10
	mov ecx, [ebp-0x20]
	test ecx, ecx
	jz _Z13PbClGameQueryiPc_120
	mov edx, [ebp-0x24]
	test edx, edx
	jz _Z13PbClGameQueryiPc_120
	mov eax, [ebp-0x28]
	test eax, eax
	jz _Z13PbClGameQueryiPc_120
_Z13PbClGameQueryiPc_370:
	mov esi, [ebp-0x28]
	mov [esp+0x4], esi
	mov eax, [ebp-0x24]
	mov [esp], eax
	call strcmp
	test eax, eax
	jnz _Z13PbClGameQueryiPc_130
	mov byte [ebx], 0x0
_Z13PbClGameQueryiPc_140:
	mov eax, [ebp-0x20]
	jmp _Z13PbClGameQueryiPc_110
_Z13PbClGameQueryiPc_610:
	lea eax, [ebp-0x28]
	mov [esp+0xc], eax
	lea eax, [ebp-0x2c]
	mov [esp+0x8], eax
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z10PbDvarWalkPPcS0_PiS0_
	test eax, eax
	jz _Z13PbClGameQueryiPc_10
	mov eax, _cstring_null
	mov edx, [ebp-0x20]
	test edx, edx
	cmovnz eax, [ebp-0x20]
	mov [ebp-0x20], eax
	mov edi, [ebp-0x2c]
	mov [ebp-0x74], edi
	mov word [ebx], 0x30
	cmp edi, 0x0
	jz _Z13PbClGameQueryiPc_140
	mov ecx, edi
	mov byte [ebp-0x2d], 0x0
	jl _Z13PbClGameQueryiPc_150
_Z13PbClGameQueryiPc_420:
	mov esi, 0x22
	mov edi, 0xcccccccd
	jmp _Z13PbClGameQueryiPc_160
_Z13PbClGameQueryiPc_180:
	add al, 0x30
_Z13PbClGameQueryiPc_190:
	mov [ebp+esi-0x4f], al
	mov eax, ecx
	mul edi
	shr edx, 0x3
	mov ecx, edx
	test edx, edx
	jz _Z13PbClGameQueryiPc_170
_Z13PbClGameQueryiPc_160:
	mov eax, ecx
	mul edi
	shr edx, 0x3
	lea edx, [edx+edx*4]
	add edx, edx
	mov eax, ecx
	sub eax, edx
	sub esi, 0x1
	cmp eax, 0x9
	jbe _Z13PbClGameQueryiPc_180
	add al, 0x57
	jmp _Z13PbClGameQueryiPc_190
_Z13PbClGameQueryiPc_600:
	test dl, dl
	jz _Z13PbClGameQueryiPc_10
_Z13PbClGameQueryiPc_200:
	lea ecx, [ebp-0x28]
	mov [esp+0xc], ecx
	lea edi, [ebp-0x2c]
	mov [esp+0x8], edi
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	lea edx, [ebp-0x20]
	mov [esp], edx
	call _Z10PbDvarWalkPPcS0_PiS0_
	test eax, eax
	jz _Z13PbClGameQueryiPc_80
	mov edx, [ebp-0x20]
	test edx, edx
	jz _Z13PbClGameQueryiPc_200
	mov eax, [ebp-0x24]
	test eax, eax
	jz _Z13PbClGameQueryiPc_200
	cmp byte [edx], 0x0
	jz _Z13PbClGameQueryiPc_200
	cmp byte [eax], 0x0
	jz _Z13PbClGameQueryiPc_200
	mov [ebp-0x68], eax
	movzx eax, word [_cstring_x]
	mov [ebp-0x4f], ax
	movzx eax, word [_cstring_x1]
	mov [ebp-0x1a], ax
	test ebx, ebx
	jz _Z13PbClGameQueryiPc_210
	movzx esi, byte [ebx]
	mov ecx, esi
	test cl, cl
	jnz _Z13PbClGameQueryiPc_220
_Z13PbClGameQueryiPc_210:
	mov dword [esp+0x8], 0xff
	mov [esp+0x4], edx
	mov [esp], ebx
	call strncpy
	xor eax, eax
	jmp _Z13PbClGameQueryiPc_110
_Z13PbClGameQueryiPc_590:
	mov [esp], ebx
	call atoi
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call _Z18Key_KeynumToStringii
	mov dword [esp+0x8], 0xff
	mov [esp+0x4], eax
	mov [esp], ebx
	call strncpy
	xor eax, eax
	jmp _Z13PbClGameQueryiPc_110
_Z13PbClGameQueryiPc_580:
	mov [esp], ebx
	call atoi
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z14Key_GetBindingii
	jmp _Z13PbClGameQueryiPc_230
_Z13PbClGameQueryiPc_570:
	call _Z9PbMaxKeysv
	mov esi, eax
	mov [esp], ebx
	call atoi
	cmp esi, eax
	jle _Z13PbClGameQueryiPc_240
	mov [ebp-0x5c], eax
	mov [ebp-0x78], esi
	mov edx, eax
_Z13PbClGameQueryiPc_360:
	mov [esp+0x4], edx
	mov dword [esp], 0x0
	call _Z14Key_GetBindingii
	mov [ebp-0x70], eax
	movzx eax, word [_cstring_x]
	mov [ebp-0x4f], ax
	movzx eax, word [_cstring_x1]
	mov [ebp-0x1a], ax
	mov eax, [ebp-0x70]
	test eax, eax
	jz _Z13PbClGameQueryiPc_250
	mov eax, [ebp-0x7c]
	test eax, eax
	jz _Z13PbClGameQueryiPc_260
	mov ecx, [ebp-0x7c]
	movzx edx, byte [ecx]
	test dl, dl
	jnz _Z13PbClGameQueryiPc_270
_Z13PbClGameQueryiPc_260:
	mov word [ebx], 0x30
	cmp dword [ebp-0x5c], 0x0
	jz _Z13PbClGameQueryiPc_10
	mov ecx, [ebp-0x5c]
	mov byte [ebp-0x2d], 0x0
	jl _Z13PbClGameQueryiPc_280
_Z13PbClGameQueryiPc_470:
	mov esi, 0x22
	mov edi, 0xcccccccd
	jmp _Z13PbClGameQueryiPc_290
_Z13PbClGameQueryiPc_310:
	add al, 0x30
_Z13PbClGameQueryiPc_320:
	mov [ebp+esi-0x4f], al
	mov eax, ecx
	mul edi
	shr edx, 0x3
	mov ecx, edx
	test edx, edx
	jz _Z13PbClGameQueryiPc_300
_Z13PbClGameQueryiPc_290:
	mov eax, ecx
	mul edi
	shr edx, 0x3
	lea edx, [edx+edx*4]
	add edx, edx
	mov eax, ecx
	sub eax, edx
	sub esi, 0x1
	cmp eax, 0x9
	jbe _Z13PbClGameQueryiPc_310
	add al, 0x57
	jmp _Z13PbClGameQueryiPc_320
_Z13PbClGameQueryiPc_560:
	mov dword [esp], 0x0
	call _Z15PB_Q_Serveraddri
	jmp _Z13PbClGameQueryiPc_230
_Z13PbClGameQueryiPc_550:
	mov dword [esp], 0x0
	call _Z15PB_Q_Serverinfoi
	mov [esp+0x4], ebx
	mov [esp], eax
	call _Z16Info_ValueForKeyPKcS0_
	jmp _Z13PbClGameQueryiPc_230
_Z13PbClGameQueryiPc_390:
	mov dword [ebp-0x60], 0x0
_Z13PbClGameQueryiPc_410:
	mov edx, [ebp-0x7c]
	movsx eax, byte [edx]
	mov [esp], eax
	call __toupper
	mov [ebp-0x1a], al
	cmp [ebp-0x4f], al
	jz _Z13PbClGameQueryiPc_330
	mov edi, [ebp-0x70]
	jmp _Z13PbClGameQueryiPc_340
_Z13PbClGameQueryiPc_350:
	mov eax, [ebp-0x6c]
	mov [esp+0x8], eax
	mov edx, [ebp-0x7c]
	mov [esp+0x4], edx
	mov [esp], esi
	call strncasecmp
	test eax, eax
	jz _Z13PbClGameQueryiPc_260
	add esi, 0x1
	mov [ebp-0x70], esi
	mov edi, esi
_Z13PbClGameQueryiPc_340:
	lea ecx, [ebp-0x1a]
	mov [esp+0x4], ecx
	mov [esp], edi
	call strstr
	mov esi, eax
	test eax, eax
	jnz _Z13PbClGameQueryiPc_350
_Z13PbClGameQueryiPc_330:
	mov esi, [ebp-0x60]
	test esi, esi
	jnz _Z13PbClGameQueryiPc_260
_Z13PbClGameQueryiPc_250:
	add dword [ebp-0x5c], 0x1
	mov edx, [ebp-0x78]
	cmp [ebp-0x5c], edx
	jz _Z13PbClGameQueryiPc_240
	mov edx, [ebp-0x5c]
	jmp _Z13PbClGameQueryiPc_360
_Z13PbClGameQueryiPc_120:
	mov dword [ebp-0x28], _cstring_null
	mov dword [ebp-0x24], _cstring_null
	mov dword [ebp-0x20], _cstring_null
	jmp _Z13PbClGameQueryiPc_370
_Z13PbClGameQueryiPc_170:
	mov edi, [ebp-0x74]
	test edi, edi
	js _Z13PbClGameQueryiPc_380
_Z13PbClGameQueryiPc_430:
	lea eax, [ebp+esi-0x4f]
	mov [esp+0x4], eax
	mov [esp], ebx
	call strcpy
	mov eax, [ebp-0x20]
	jmp _Z13PbClGameQueryiPc_110
_Z13PbClGameQueryiPc_270:
	mov edi, ecx
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [ebp-0x6c], ecx
	movsx eax, dl
	mov [esp], eax
	call tolower
	mov [ebp-0x4f], al
	mov eax, [ebp-0x70]
_Z13PbClGameQueryiPc_400:
	lea edx, [ebp-0x4f]
	mov [esp+0x4], edx
	mov [esp], eax
	call strstr
	mov esi, eax
	test eax, eax
	jz _Z13PbClGameQueryiPc_390
	mov ecx, [ebp-0x6c]
	mov [esp+0x8], ecx
	mov edi, [ebp-0x7c]
	mov [esp+0x4], edi
	mov [esp], eax
	call strncasecmp
	test eax, eax
	mov eax, 0x0
	cmovz eax, esi
	mov [ebp-0x60], eax
	lea eax, [esi+0x1]
	mov edi, [ebp-0x60]
	test edi, edi
	jz _Z13PbClGameQueryiPc_400
	jmp _Z13PbClGameQueryiPc_410
_Z13PbClGameQueryiPc_130:
	mov dword [esp+0x8], 0xfd
	mov [esp+0x4], esi
	lea eax, [ebx+0x1]
	mov [esp], eax
	call strncpy
	mov byte [ebx], 0x22
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	mov word [ecx+ebx-0x1], 0x22
	mov eax, [ebp-0x20]
	jmp _Z13PbClGameQueryiPc_110
_Z13PbClGameQueryiPc_240:
	mov word [ebx], 0x30
	mov byte [ebp-0x2d], 0x0
	mov byte [ebp-0x2e], 0x31
	mov byte [ebp-0x2f], 0x2d
	lea eax, [ebp-0x2f]
	mov [esp+0x4], eax
	mov [esp], ebx
	call strcpy
	xor eax, eax
	jmp _Z13PbClGameQueryiPc_110
_Z13PbClGameQueryiPc_150:
	neg ecx
	jnz _Z13PbClGameQueryiPc_420
	mov esi, 0x22
_Z13PbClGameQueryiPc_380:
	sub esi, 0x1
	mov byte [ebp+esi-0x4f], 0x2d
	jmp _Z13PbClGameQueryiPc_430
_Z13PbClGameQueryiPc_220:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [ebp-0x64], ecx
	mov edx, esi
	movsx eax, dl
	mov [esp], eax
	call tolower
	mov [ebp-0x4f], al
	mov eax, [ebp-0x68]
_Z13PbClGameQueryiPc_450:
	lea ecx, [ebp-0x4f]
	mov [esp+0x4], ecx
	mov [esp], eax
	call strstr
	mov esi, eax
	test eax, eax
	jz _Z13PbClGameQueryiPc_440
	mov edi, [ebp-0x64]
	mov [esp+0x8], edi
	mov [esp+0x4], ebx
	mov [esp], eax
	call strncasecmp
	xor edi, edi
	test eax, eax
	cmovz edi, esi
	lea eax, [esi+0x1]
	test edi, edi
	jz _Z13PbClGameQueryiPc_450
_Z13PbClGameQueryiPc_520:
	movsx eax, byte [ebx]
	mov [esp], eax
	call __toupper
	mov [ebp-0x1a], al
	cmp [ebp-0x4f], al
	jnz _Z13PbClGameQueryiPc_460
_Z13PbClGameQueryiPc_500:
	test edi, edi
	jz _Z13PbClGameQueryiPc_200
	mov edx, [ebp-0x20]
	jmp _Z13PbClGameQueryiPc_210
_Z13PbClGameQueryiPc_280:
	neg ecx
	jnz _Z13PbClGameQueryiPc_470
	mov esi, 0x22
_Z13PbClGameQueryiPc_300:
	mov ecx, [ebp-0x5c]
	test ecx, ecx
	js _Z13PbClGameQueryiPc_480
_Z13PbClGameQueryiPc_530:
	lea eax, [ebp+esi-0x4f]
	mov [esp+0x4], eax
	mov [esp], ebx
	call strcpy
	xor eax, eax
	jmp _Z13PbClGameQueryiPc_110
_Z13PbClGameQueryiPc_460:
	mov edx, [ebp-0x68]
	jmp _Z13PbClGameQueryiPc_490
_Z13PbClGameQueryiPc_510:
	add esi, 0x1
	mov [ebp-0x68], esi
	mov edx, esi
_Z13PbClGameQueryiPc_490:
	lea eax, [ebp-0x1a]
	mov [esp+0x4], eax
	mov [esp], edx
	call strstr
	mov esi, eax
	test eax, eax
	jz _Z13PbClGameQueryiPc_500
	mov ecx, [ebp-0x64]
	mov [esp+0x8], ecx
	mov [esp+0x4], ebx
	mov [esp], eax
	call strncasecmp
	test eax, eax
	jnz _Z13PbClGameQueryiPc_510
	mov edx, [ebp-0x20]
	jmp _Z13PbClGameQueryiPc_210
_Z13PbClGameQueryiPc_440:
	xor edi, edi
	jmp _Z13PbClGameQueryiPc_520
_Z13PbClGameQueryiPc_480:
	sub esi, 0x1
	mov byte [ebp+esi-0x4f], 0x2d
	jmp _Z13PbClGameQueryiPc_530
	nop
	
	
_Z13PbClGameQueryiPc_jumptab_0:
	dd _Z13PbClGameQueryiPc_540
	dd _Z13PbClGameQueryiPc_550
	dd _Z13PbClGameQueryiPc_560
	dd _Z13PbClGameQueryiPc_570
	dd _Z13PbClGameQueryiPc_580
	dd _Z13PbClGameQueryiPc_590
	dd _Z13PbClGameQueryiPc_600
	dd _Z13PbClGameQueryiPc_610
	dd _Z13PbClGameQueryiPc_620
	dd _Z13PbClGameQueryiPc_630
	dd _Z13PbClGameQueryiPc_80
	dd _Z13PbClGameQueryiPc_80
	dd _Z13PbClGameQueryiPc_640


;isPbClEnabled()
_Z13isPbClEnabledv:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x71
	mov dword [esp], pbcl
	call _ZN6stPbCl10AddPbEventEiiPci
	leave
	ret


;PbClGameCommand(char*, char*)
_Z15PbClGameCommandPcS_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov esi, [ebp+0xc]
	cmp byte [esi], 0x20
	jz _Z15PbClGameCommandPcS__10
	mov ebx, esi
_Z15PbClGameCommandPcS__110:
	movzx eax, byte [ebx]
	test al, al
	jz _Z15PbClGameCommandPcS__20
	cmp al, 0x20
	jz _Z15PbClGameCommandPcS__30
_Z15PbClGameCommandPcS__40:
	add ebx, 0x1
	movzx eax, byte [ebx]
	test al, al
	jz _Z15PbClGameCommandPcS__20
	cmp al, 0x20
	jnz _Z15PbClGameCommandPcS__40
_Z15PbClGameCommandPcS__20:
	cmp byte [ebx], 0x20
	jz _Z15PbClGameCommandPcS__30
_Z15PbClGameCommandPcS__60:
	mov dword [esp+0x4], _cstring_set_cl_punkbuste
	mov [esp], edi
	call strcasecmp
	test eax, eax
	jnz _Z15PbClGameCommandPcS__50
	mov [esp], esi
	call _Z17set_cl_punkbusterPc
_Z15PbClGameCommandPcS__90:
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15PbClGameCommandPcS__30:
	add ebx, 0x1
	cmp byte [ebx], 0x20
	jnz _Z15PbClGameCommandPcS__60
	add ebx, 0x1
	cmp byte [ebx], 0x20
	jz _Z15PbClGameCommandPcS__30
	jmp _Z15PbClGameCommandPcS__60
_Z15PbClGameCommandPcS__50:
	mov dword [esp+0x4], _cstring_cvar_set
	mov [esp], edi
	call strcasecmp
	test eax, eax
	jnz _Z15PbClGameCommandPcS__70
_Z15PbClGameCommandPcS__80:
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z10PBdvar_setPKcS0_
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15PbClGameCommandPcS__70:
	mov dword [esp+0x4], _cstring_dvar_set
	mov [esp], edi
	call strcasecmp
	test eax, eax
	jz _Z15PbClGameCommandPcS__80
	mov dword [esp+0x4], _cstring_get_pb_cdkey
	mov [esp], edi
	call strcasecmp
	test eax, eax
	jnz _Z15PbClGameCommandPcS__90
	mov [esp], esi
	call _Z14PBget_cl_cdkeyPc
	jmp _Z15PbClGameCommandPcS__90
_Z15PbClGameCommandPcS__10:
	mov ebx, esi
_Z15PbClGameCommandPcS__100:
	add ebx, 0x1
	cmp byte [ebx], 0x20
	jz _Z15PbClGameCommandPcS__100
	jmp _Z15PbClGameCommandPcS__110
	nop


;PbClSendToServer(int, char*)
_Z16PbClSendToServeriPc:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z15CL_SendPbPacketiiPc
	xor eax, eax
	leave
	ret


;PbTrapPreExecCmd(char*)
_Z16PbTrapPreExecCmdPc:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [pbcl+0x19c]
	test eax, eax
	jz _Z16PbTrapPreExecCmdPc_10
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov dword [esp], pbcl
	call eax
_Z16PbTrapPreExecCmdPc_10:
	leave
	ret
	nop


;PbClSendToAddrPort(char*, unsigned short, int, char*)
_Z18PbClSendToAddrPortPctiS_:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	movzx edx, word [ebp+0xc]
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z19Sys_PBSendUdpPacketPctiS_
	xor eax, eax
	leave
	ret
	nop


;PbClientConnecting(int, char*, int*)
_Z18PbClientConnectingiPcPi:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [pbcl+0x198]
	test eax, eax
	jz _Z18PbClientConnectingiPcPi_10
	mov edx, [ebp+0x10]
	mov [esp+0xc], edx
	mov edx, [ebp+0xc]
	mov [esp+0x8], edx
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov dword [esp], pbcl
	call eax
_Z18PbClientConnectingiPcPi_10:
	leave
	ret
	nop
	add [eax], al


;PbClientInitialize(void*)
_Z18PbClientInitializePv:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov eax, [ebp+0x8]
	mov [exeInstance], eax
	mov eax, pbsv
	mov [pbcl+0x1a4], eax
	mov dword [pbcl+0x178], 0x2b44c8
	mov dword [pbcl+0x17c], 0x2b474a
	mov dword [pbcl+0x180], 0x2b45a4
	mov dword [pbcl+0x184], 0x2b460e
	mov dword [pbcl+0x190], 0x2b4632
	mov dword [pbcl+0x194], 0x0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], _cstring_null
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x10
	mov dword [esp], pbcl
	call _ZN6stPbCl10AddPbEventEiiPci
	mov eax, [pbcl+0x8]
	test eax, eax
	jz _Z18PbClientInitializePv_10
	mov eax, 0x1
	leave
	ret
_Z18PbClientInitializePv_10:
	mov dword [esp], _cstring_0
	call _Z17set_cl_punkbusterPc
	xor eax, eax
	leave
	ret


;PbClientTrapConsole(char*, int)
_Z19PbClientTrapConsolePci:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [pbcl+0x1a0]
	test eax, eax
	jz _Z19PbClientTrapConsolePci_10
	mov edx, [ebp+0xc]
	mov [esp+0x8], edx
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov dword [esp], pbcl
	call eax
_Z19PbClientTrapConsolePci_10:
	leave
	ret


;PbClientProcessEvents()
_Z21PbClientProcessEventsv:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov eax, [pbcl+0x178]
	test eax, eax
	jz _Z21PbClientProcessEventsv_10
	mov eax, [pbcl+0x8]
	test eax, eax
	jz _Z21PbClientProcessEventsv_20
	mov edx, [pbcl+0x10]
	test edx, edx
	jz _Z21PbClientProcessEventsv_30
	mov dword [pbcl+0x18c], 0x0
	mov dword [pbcl+0x188], 0x0
	mov dword [pbcl+0x198], 0x0
	mov dword [pbcl+0x19c], 0x0
	mov dword [pbcl+0x1a0], 0x0
	mov eax, [pbcl+0x8]
	test eax, eax
	jz _Z21PbClientProcessEventsv_10
	mov [esp], eax
	call dlclose
	mov dword [pbcl+0x8], 0x0
_Z21PbClientProcessEventsv_10:
	leave
	ret
_Z21PbClientProcessEventsv_30:
	mov dword [esp+0x4], 0x0
	mov dword [esp], pbcl
	call dword [pbcl+0x18c]
	leave
	ret
_Z21PbClientProcessEventsv_20:
	mov ecx, [pbcl+0x10]
	test ecx, ecx
	jz _Z21PbClientProcessEventsv_10
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], _cstring_null
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x10
	mov dword [esp], pbcl
	call _ZN6stPbCl10AddPbEventEiiPci
	leave
	ret
	add [eax], al


;PbClientCompleteCommand(char*, int)
_Z23PbClientCompleteCommandPci:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov dword [esp+0x10], 0x0
	mov eax, [ebp+0x8]
	mov [esp+0xc], eax
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x33
	mov dword [esp], pbcl
	call _ZN6stPbCl10AddPbEventEiiPci
	leave
	ret
	add [eax], al


;stPbCl::AddPbEvent(int, int, char*, int)
_ZN6stPbCl10AddPbEventEiiPci:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov esi, [ebp+0x8]
	mov eax, [esi+0x178]
	test eax, eax
	jz _ZN6stPbCl10AddPbEventEiiPci_10
	mov edi, [esi+0x10]
	test edi, edi
	jz _ZN6stPbCl10AddPbEventEiiPci_20
	mov ecx, [esi+0x8]
	test ecx, ecx
	jnz _ZN6stPbCl10AddPbEventEiiPci_30
_ZN6stPbCl10AddPbEventEiiPci_330:
	mov dword [esi+0x18c], 0x0
	mov dword [esi+0x188], 0x0
	mov dword [esi+0x198], 0x0
	mov dword [esi+0x19c], 0x0
	mov dword [esi+0x1a0], 0x0
	mov eax, [esi+0x8]
	test eax, eax
	jz _ZN6stPbCl10AddPbEventEiiPci_40
	mov [esp], eax
	call dlclose
	mov dword [esi+0x8], 0x0
_ZN6stPbCl10AddPbEventEiiPci_40:
	cmp byte [esi+0x55], 0x0
	jz _ZN6stPbCl10AddPbEventEiiPci_50
_ZN6stPbCl10AddPbEventEiiPci_370:
	lea ebx, [esi+0x55]
_ZN6stPbCl10AddPbEventEiiPci_390:
	mov [esp+0x4], ebx
	lea eax, [ebp-0x217]
	mov [esp], eax
	call strcpy
	cld
	mov ecx, 0xffffffff
	lea edi, [ebp-0x217]
	xor eax, eax
	repne scasb
	not ecx
	lea ecx, [ecx+ebp-0x218]
	mov dword [ecx], 0x6c636270
	mov dword [ecx+0x4], 0x2e77656e
	mov dword [ecx+0x8], 0x63616d
	mov dword [esp+0x4], _cstring_rb
	lea eax, [ebp-0x217]
	mov [esp], eax
	call fopen
	test eax, eax
	jz _ZN6stPbCl10AddPbEventEiiPci_60
	mov [esp], eax
	call fclose
	cmp byte [esi+0x55], 0x0
	jnz _ZN6stPbCl10AddPbEventEiiPci_70
	mov eax, [esi+0x17c]
	test eax, eax
	jz _ZN6stPbCl10AddPbEventEiiPci_70
	mov dword [esi+0x55], 0x685f7366
	mov dword [ebx+0x4], 0x70656d6f
	mov dword [ebx+0x8], 0x687461
	mov [esp+0x4], ebx
	mov dword [esp], 0x67
	call eax
	cmp byte [esi+0x55], 0x0
	jz _ZN6stPbCl10AddPbEventEiiPci_80
_ZN6stPbCl10AddPbEventEiiPci_530:
	cld
	mov ecx, 0xffffffff
	mov edi, ebx
	xor eax, eax
	repne scasb
	not ecx
	cmp byte [ecx+esi+0x53], 0x2f
	jz _ZN6stPbCl10AddPbEventEiiPci_90
	mov ecx, 0xffffffff
	mov edi, ebx
	repne scasb
	not ecx
	mov word [ecx+ebx-0x1], 0x2f
_ZN6stPbCl10AddPbEventEiiPci_90:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	mov dword [ecx+ebx-0x1], 0x2f6270
_ZN6stPbCl10AddPbEventEiiPci_70:
	mov [esp+0x4], ebx
	lea eax, [ebp-0x217]
	mov [esp], eax
	call strcpy
	cld
	mov ecx, 0xffffffff
	lea edi, [ebp-0x217]
	xor eax, eax
	repne scasb
	not ecx
	lea ecx, [ecx+ebp-0x218]
	mov dword [ecx], 0x6c636270
	mov dword [ecx+0x4], 0x2e646c6f
	mov dword [ecx+0x8], 0x63616d
	mov dword [esp+0x4], 0x1ff
	lea eax, [ebp-0x217]
	mov [esp], eax
	call chmod
	cmp byte [esi+0x55], 0x0
	jnz _ZN6stPbCl10AddPbEventEiiPci_100
	mov eax, [esi+0x17c]
	test eax, eax
	jz _ZN6stPbCl10AddPbEventEiiPci_100
	mov dword [ebx], 0x685f7366
	mov dword [ebx+0x4], 0x70656d6f
	mov dword [ebx+0x8], 0x687461
	mov [esp+0x4], ebx
	mov dword [esp], 0x67
	call eax
	cmp byte [esi+0x55], 0x0
	jz _ZN6stPbCl10AddPbEventEiiPci_110
_ZN6stPbCl10AddPbEventEiiPci_470:
	cld
	mov ecx, 0xffffffff
	mov edi, ebx
	xor eax, eax
	repne scasb
	not ecx
	cmp byte [ecx+esi+0x53], 0x2f
	jz _ZN6stPbCl10AddPbEventEiiPci_120
	mov ecx, 0xffffffff
	mov edi, ebx
	repne scasb
	not ecx
	mov word [ecx+ebx-0x1], 0x2f
_ZN6stPbCl10AddPbEventEiiPci_120:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	mov dword [ecx+ebx-0x1], 0x2f6270
_ZN6stPbCl10AddPbEventEiiPci_100:
	mov [esp+0x4], ebx
	lea eax, [ebp-0x217]
	mov [esp], eax
	call strcpy
	cld
	mov ecx, 0xffffffff
	lea edi, [ebp-0x217]
	xor eax, eax
	repne scasb
	not ecx
	lea ecx, [ecx+ebp-0x218]
	mov dword [ecx], 0x6c636270
	mov dword [ecx+0x4], 0x2e646c6f
	mov dword [ecx+0x8], 0x63616d
	lea eax, [ebp-0x217]
	mov [esp], eax
	call remove
	cmp byte [esi+0x55], 0x0
	jnz _ZN6stPbCl10AddPbEventEiiPci_130
	mov eax, [esi+0x17c]
	test eax, eax
	jz _ZN6stPbCl10AddPbEventEiiPci_130
	mov dword [ebx], 0x685f7366
	mov dword [ebx+0x4], 0x70656d6f
	mov dword [ebx+0x8], 0x687461
	mov [esp+0x4], ebx
	mov dword [esp], 0x67
	call eax
	cmp byte [esi+0x55], 0x0
	jz _ZN6stPbCl10AddPbEventEiiPci_140
_ZN6stPbCl10AddPbEventEiiPci_480:
	cld
	mov ecx, 0xffffffff
	mov edi, ebx
	xor eax, eax
	repne scasb
	not ecx
	cmp byte [ecx+esi+0x53], 0x2f
	jz _ZN6stPbCl10AddPbEventEiiPci_150
	mov ecx, 0xffffffff
	mov edi, ebx
	repne scasb
	not ecx
	mov word [ecx+ebx-0x1], 0x2f
_ZN6stPbCl10AddPbEventEiiPci_150:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	mov dword [ecx+ebx-0x1], 0x2f6270
_ZN6stPbCl10AddPbEventEiiPci_130:
	mov [esp+0x4], ebx
	lea eax, [ebp-0x416]
	mov [esp], eax
	call strcpy
	cld
	mov ecx, 0xffffffff
	lea edi, [ebp-0x416]
	xor eax, eax
	repne scasb
	not ecx
	lea ecx, [ecx+ebp-0x417]
	mov dword [ecx], 0x6c636270
	mov dword [ecx+0x4], 0x2e646c6f
	mov dword [ecx+0x8], 0x63616d
	cmp byte [esi+0x55], 0x0
	jnz _ZN6stPbCl10AddPbEventEiiPci_160
	mov eax, [esi+0x17c]
	test eax, eax
	jz _ZN6stPbCl10AddPbEventEiiPci_160
	mov dword [ebx], 0x685f7366
	mov dword [ebx+0x4], 0x70656d6f
	mov dword [ebx+0x8], 0x687461
	mov [esp+0x4], ebx
	mov dword [esp], 0x67
	call eax
	cmp byte [esi+0x55], 0x0
	jz _ZN6stPbCl10AddPbEventEiiPci_170
_ZN6stPbCl10AddPbEventEiiPci_490:
	cld
	mov ecx, 0xffffffff
	mov edi, ebx
	xor eax, eax
	repne scasb
	not ecx
	cmp byte [ecx+esi+0x53], 0x2f
	jz _ZN6stPbCl10AddPbEventEiiPci_180
	mov ecx, 0xffffffff
	mov edi, ebx
	repne scasb
	not ecx
	mov word [ecx+ebx-0x1], 0x2f
_ZN6stPbCl10AddPbEventEiiPci_180:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	mov dword [ecx+ebx-0x1], 0x2f6270
_ZN6stPbCl10AddPbEventEiiPci_160:
	mov [esp+0x4], ebx
	lea eax, [ebp-0x217]
	mov [esp], eax
	call strcpy
	cld
	mov ecx, 0xffffffff
	lea edi, [ebp-0x217]
	xor eax, eax
	repne scasb
	not ecx
	lea ecx, [ecx+ebp-0x218]
	mov dword [ecx], 0x6c636270
	mov dword [ecx+0x4], 0x63616d2e
	mov byte [ecx+0x8], 0x0
	lea eax, [ebp-0x416]
	mov [esp+0x4], eax
	lea eax, [ebp-0x217]
	mov [esp], eax
	call rename
	cmp byte [esi+0x55], 0x0
	jnz _ZN6stPbCl10AddPbEventEiiPci_190
	mov eax, [esi+0x17c]
	test eax, eax
	jz _ZN6stPbCl10AddPbEventEiiPci_190
	mov dword [ebx], 0x685f7366
	mov dword [ebx+0x4], 0x70656d6f
	mov dword [ebx+0x8], 0x687461
	mov [esp+0x4], ebx
	mov dword [esp], 0x67
	call eax
	cmp byte [esi+0x55], 0x0
	jz _ZN6stPbCl10AddPbEventEiiPci_200
_ZN6stPbCl10AddPbEventEiiPci_510:
	cld
	mov ecx, 0xffffffff
	mov edi, ebx
	xor eax, eax
	repne scasb
	not ecx
	cmp byte [ecx+esi+0x53], 0x2f
	jz _ZN6stPbCl10AddPbEventEiiPci_210
	mov ecx, 0xffffffff
	mov edi, ebx
	repne scasb
	not ecx
	mov word [ecx+ebx-0x1], 0x2f
_ZN6stPbCl10AddPbEventEiiPci_210:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	mov dword [ecx+ebx-0x1], 0x2f6270
_ZN6stPbCl10AddPbEventEiiPci_190:
	mov [esp+0x4], ebx
	lea eax, [ebp-0x217]
	mov [esp], eax
	call strcpy
	cld
	mov ecx, 0xffffffff
	lea edi, [ebp-0x217]
	xor eax, eax
	repne scasb
	not ecx
	lea ecx, [ecx+ebp-0x218]
	mov dword [ecx], 0x6c636270
	mov dword [ecx+0x4], 0x63616d2e
	mov byte [ecx+0x8], 0x0
	mov dword [esp+0x4], 0x1ff
	lea eax, [ebp-0x217]
	mov [esp], eax
	call chmod
	cmp byte [esi+0x55], 0x0
	jnz _ZN6stPbCl10AddPbEventEiiPci_220
	mov eax, [esi+0x17c]
	test eax, eax
	jz _ZN6stPbCl10AddPbEventEiiPci_220
	mov dword [ebx], 0x685f7366
	mov dword [ebx+0x4], 0x70656d6f
	mov dword [ebx+0x8], 0x687461
	mov [esp+0x4], ebx
	mov dword [esp], 0x67
	call eax
	cmp byte [esi+0x55], 0x0
	jz _ZN6stPbCl10AddPbEventEiiPci_230
_ZN6stPbCl10AddPbEventEiiPci_500:
	cld
	mov ecx, 0xffffffff
	mov edi, ebx
	xor eax, eax
	repne scasb
	not ecx
	cmp byte [ecx+esi+0x53], 0x2f
	jz _ZN6stPbCl10AddPbEventEiiPci_240
	mov ecx, 0xffffffff
	mov edi, ebx
	repne scasb
	not ecx
	mov word [ecx+ebx-0x1], 0x2f
_ZN6stPbCl10AddPbEventEiiPci_240:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	mov dword [ecx+ebx-0x1], 0x2f6270
_ZN6stPbCl10AddPbEventEiiPci_220:
	mov [esp+0x4], ebx
	lea eax, [ebp-0x217]
	mov [esp], eax
	call strcpy
	cld
	mov ecx, 0xffffffff
	lea edi, [ebp-0x217]
	xor eax, eax
	repne scasb
	not ecx
	lea ecx, [ecx+ebp-0x218]
	mov dword [ecx], 0x6c636270
	mov dword [ecx+0x4], 0x63616d2e
	mov byte [ecx+0x8], 0x0
	lea eax, [ebp-0x217]
	mov [esp], eax
	call remove
	cmp byte [esi+0x55], 0x0
	jnz _ZN6stPbCl10AddPbEventEiiPci_250
	mov eax, [esi+0x17c]
	test eax, eax
	jz _ZN6stPbCl10AddPbEventEiiPci_250
	mov dword [ebx], 0x685f7366
	mov dword [ebx+0x4], 0x70656d6f
	mov dword [ebx+0x8], 0x687461
	mov [esp+0x4], ebx
	mov dword [esp], 0x67
	call eax
	cmp byte [esi+0x55], 0x0
	jz _ZN6stPbCl10AddPbEventEiiPci_260
_ZN6stPbCl10AddPbEventEiiPci_520:
	cld
	mov ecx, 0xffffffff
	mov edi, ebx
	xor eax, eax
	repne scasb
	not ecx
	cmp byte [ecx+esi+0x53], 0x2f
	jz _ZN6stPbCl10AddPbEventEiiPci_270
	mov ecx, 0xffffffff
	mov edi, ebx
	repne scasb
	not ecx
	mov word [ecx+ebx-0x1], 0x2f
_ZN6stPbCl10AddPbEventEiiPci_270:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	mov dword [ecx+ebx-0x1], 0x2f6270
_ZN6stPbCl10AddPbEventEiiPci_250:
	mov [esp+0x4], ebx
	lea eax, [ebp-0x416]
	mov [esp], eax
	call strcpy
	cld
	mov ecx, 0xffffffff
	lea edi, [ebp-0x416]
	xor eax, eax
	repne scasb
	not ecx
	lea ecx, [ecx+ebp-0x417]
	mov dword [ecx], 0x6c636270
	mov dword [ecx+0x4], 0x63616d2e
	mov byte [ecx+0x8], 0x0
	cmp byte [esi+0x55], 0x0
	jz _ZN6stPbCl10AddPbEventEiiPci_280
_ZN6stPbCl10AddPbEventEiiPci_400:
	mov [esp+0x4], ebx
	lea eax, [ebp-0x217]
	mov [esp], eax
	call strcpy
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	lea edi, [ebp-0x217]
	repne scasb
	not ecx
	lea ecx, [ecx+ebp-0x218]
	mov dword [ecx], 0x6c636270
	mov dword [ecx+0x4], 0x2e77656e
	mov dword [ecx+0x8], 0x63616d
	lea eax, [ebp-0x416]
	mov [esp+0x4], eax
	lea eax, [ebp-0x217]
	mov [esp], eax
	call rename
_ZN6stPbCl10AddPbEventEiiPci_60:
	cmp byte [esi+0x55], 0x0
	jz _ZN6stPbCl10AddPbEventEiiPci_290
_ZN6stPbCl10AddPbEventEiiPci_350:
	mov [esp+0x4], ebx
	lea eax, [ebp-0x217]
	mov [esp], eax
	call strcpy
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	lea edi, [ebp-0x217]
	repne scasb
	not ecx
	lea ecx, [ecx+ebp-0x218]
	mov dword [ecx], 0x6c636270
	mov dword [ecx+0x4], 0x63616d2e
	mov byte [ecx+0x8], 0x0
	mov dword [esp+0x4], 0x1
	lea eax, [ebp-0x217]
	mov [esp], eax
	call dlopen
	mov [esi+0x8], eax
	test eax, eax
	jz _ZN6stPbCl10AddPbEventEiiPci_300
	mov dword [esp+0x4], _cstring_ca
	mov [esp], eax
	call dlsym
	mov [esi+0x18c], eax
	mov dword [esp+0x4], _cstring_cb
	mov eax, [esi+0x8]
	mov [esp], eax
	call dlsym
	mov [esi+0x188], eax
	mov edx, [esi+0x18c]
	test edx, edx
	jz _ZN6stPbCl10AddPbEventEiiPci_310
	test eax, eax
	jz _ZN6stPbCl10AddPbEventEiiPci_310
	mov dword [esi+0x10], 0x0
	jmp _ZN6stPbCl10AddPbEventEiiPci_320
_ZN6stPbCl10AddPbEventEiiPci_20:
	mov ebx, [esi+0x8]
	test ebx, ebx
	jz _ZN6stPbCl10AddPbEventEiiPci_330
_ZN6stPbCl10AddPbEventEiiPci_320:
	mov eax, [ebp+0x18]
	mov [esp+0x10], eax
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], esi
	call dword [esi+0x188]
	mov edx, eax
_ZN6stPbCl10AddPbEventEiiPci_550:
	mov eax, edx
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN6stPbCl10AddPbEventEiiPci_30:
	mov dword [esi+0x18c], 0x0
	mov dword [esi+0x188], 0x0
	mov dword [esi+0x198], 0x0
	mov dword [esi+0x19c], 0x0
	mov dword [esi+0x1a0], 0x0
	mov eax, [esi+0x8]
	jnz _ZN6stPbCl10AddPbEventEiiPci_340
_ZN6stPbCl10AddPbEventEiiPci_10:
	xor edx, edx
	mov eax, edx
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN6stPbCl10AddPbEventEiiPci_290:
	mov eax, [esi+0x17c]
	test eax, eax
	jz _ZN6stPbCl10AddPbEventEiiPci_350
	mov dword [ebx], 0x685f7366
	mov dword [ebx+0x4], 0x70656d6f
	mov dword [ebx+0x8], 0x687461
	mov [esp+0x4], ebx
	mov dword [esp], 0x67
	call eax
	cmp byte [esi+0x55], 0x0
	jnz _ZN6stPbCl10AddPbEventEiiPci_360
	mov dword [esp+0x4], 0xff
	mov [esp], ebx
	call getcwd
	cmp byte [esi+0x55], 0x0
	jnz _ZN6stPbCl10AddPbEventEiiPci_360
_ZN6stPbCl10AddPbEventEiiPci_440:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	mov dword [ecx+ebx-0x1], 0x2f6270
	jmp _ZN6stPbCl10AddPbEventEiiPci_350
_ZN6stPbCl10AddPbEventEiiPci_50:
	mov eax, [esi+0x17c]
	test eax, eax
	jz _ZN6stPbCl10AddPbEventEiiPci_370
	lea ebx, [esi+0x55]
	mov dword [esi+0x55], 0x685f7366
	mov dword [ebx+0x4], 0x70656d6f
	mov dword [ebx+0x8], 0x687461
	mov [esp+0x4], ebx
	mov dword [esp], 0x67
	call eax
	cmp byte [esi+0x55], 0x0
	jnz _ZN6stPbCl10AddPbEventEiiPci_380
	mov dword [esp+0x4], 0xff
	mov [esp], ebx
	call getcwd
	cmp byte [esi+0x55], 0x0
	jnz _ZN6stPbCl10AddPbEventEiiPci_380
_ZN6stPbCl10AddPbEventEiiPci_450:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	mov dword [ecx+ebx-0x1], 0x2f6270
	jmp _ZN6stPbCl10AddPbEventEiiPci_390
_ZN6stPbCl10AddPbEventEiiPci_280:
	mov eax, [esi+0x17c]
	test eax, eax
	jz _ZN6stPbCl10AddPbEventEiiPci_400
	mov dword [ebx], 0x685f7366
	mov dword [ebx+0x4], 0x70656d6f
	mov dword [ebx+0x8], 0x687461
	mov [esp+0x4], ebx
	mov dword [esp], 0x67
	call eax
	cmp byte [esi+0x55], 0x0
	jz _ZN6stPbCl10AddPbEventEiiPci_410
_ZN6stPbCl10AddPbEventEiiPci_540:
	cld
	mov ecx, 0xffffffff
	mov edi, ebx
	xor eax, eax
	repne scasb
	not ecx
	cmp byte [ecx+esi+0x53], 0x2f
	jz _ZN6stPbCl10AddPbEventEiiPci_420
	mov ecx, 0xffffffff
	mov edi, ebx
	repne scasb
	not ecx
	mov word [ecx+ebx-0x1], 0x2f
_ZN6stPbCl10AddPbEventEiiPci_420:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	mov dword [ecx+ebx-0x1], 0x2f6270
	jmp _ZN6stPbCl10AddPbEventEiiPci_400
_ZN6stPbCl10AddPbEventEiiPci_310:
	mov dword [esi+0x18c], 0x0
	mov dword [esi+0x188], 0x0
	mov dword [esi+0x198], 0x0
	mov dword [esi+0x19c], 0x0
	mov dword [esi+0x1a0], 0x0
	mov eax, [esi+0x8]
	test eax, eax
	jz _ZN6stPbCl10AddPbEventEiiPci_430
	mov [esp], eax
	call dlclose
	mov dword [esi+0x8], 0x0
_ZN6stPbCl10AddPbEventEiiPci_430:
	mov edx, _cstring_pb_error_client_
_ZN6stPbCl10AddPbEventEiiPci_460:
	mov eax, [ebp+0xc]
	sub eax, 0x71
	cmp eax, 0x1
	jbe _ZN6stPbCl10AddPbEventEiiPci_10
	mov eax, edx
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN6stPbCl10AddPbEventEiiPci_360:
	mov edx, 0xffffffff
	xor eax, eax
	cld
	mov ecx, edx
	mov edi, ebx
	repne scasb
	not ecx
	cmp byte [ecx+esi+0x53], 0x2f
	jz _ZN6stPbCl10AddPbEventEiiPci_440
	mov ecx, edx
	mov edi, ebx
	repne scasb
	not ecx
	mov word [ecx+ebx-0x1], 0x2f
	jmp _ZN6stPbCl10AddPbEventEiiPci_440
_ZN6stPbCl10AddPbEventEiiPci_380:
	mov edx, 0xffffffff
	xor eax, eax
	cld
	mov ecx, edx
	mov edi, ebx
	repne scasb
	not ecx
	cmp byte [ecx+esi+0x53], 0x2f
	jz _ZN6stPbCl10AddPbEventEiiPci_450
	mov ecx, edx
	mov edi, ebx
	repne scasb
	not ecx
	mov word [ecx+ebx-0x1], 0x2f
	jmp _ZN6stPbCl10AddPbEventEiiPci_450
_ZN6stPbCl10AddPbEventEiiPci_300:
	mov edx, _cstring_pb_error_client_1
	jmp _ZN6stPbCl10AddPbEventEiiPci_460
_ZN6stPbCl10AddPbEventEiiPci_110:
	mov dword [esp+0x4], 0xff
	mov [esp], ebx
	call getcwd
	cmp byte [esi+0x55], 0x0
	jz _ZN6stPbCl10AddPbEventEiiPci_120
	jmp _ZN6stPbCl10AddPbEventEiiPci_470
_ZN6stPbCl10AddPbEventEiiPci_140:
	mov dword [esp+0x4], 0xff
	mov [esp], ebx
	call getcwd
	cmp byte [esi+0x55], 0x0
	jz _ZN6stPbCl10AddPbEventEiiPci_150
	jmp _ZN6stPbCl10AddPbEventEiiPci_480
_ZN6stPbCl10AddPbEventEiiPci_170:
	mov dword [esp+0x4], 0xff
	mov [esp], ebx
	call getcwd
	cmp byte [esi+0x55], 0x0
	jz _ZN6stPbCl10AddPbEventEiiPci_180
	jmp _ZN6stPbCl10AddPbEventEiiPci_490
_ZN6stPbCl10AddPbEventEiiPci_230:
	mov dword [esp+0x4], 0xff
	mov [esp], ebx
	call getcwd
	cmp byte [esi+0x55], 0x0
	jz _ZN6stPbCl10AddPbEventEiiPci_240
	jmp _ZN6stPbCl10AddPbEventEiiPci_500
_ZN6stPbCl10AddPbEventEiiPci_200:
	mov dword [esp+0x4], 0xff
	mov [esp], ebx
	call getcwd
	cmp byte [esi+0x55], 0x0
	jz _ZN6stPbCl10AddPbEventEiiPci_210
	jmp _ZN6stPbCl10AddPbEventEiiPci_510
_ZN6stPbCl10AddPbEventEiiPci_260:
	mov dword [esp+0x4], 0xff
	mov [esp], ebx
	call getcwd
	cmp byte [esi+0x55], 0x0
	jz _ZN6stPbCl10AddPbEventEiiPci_270
	jmp _ZN6stPbCl10AddPbEventEiiPci_520
_ZN6stPbCl10AddPbEventEiiPci_80:
	mov dword [esp+0x4], 0xff
	mov [esp], ebx
	call getcwd
	cmp byte [esi+0x55], 0x0
	jz _ZN6stPbCl10AddPbEventEiiPci_90
	jmp _ZN6stPbCl10AddPbEventEiiPci_530
_ZN6stPbCl10AddPbEventEiiPci_410:
	mov dword [esp+0x4], 0xff
	mov [esp], ebx
	call getcwd
	cmp byte [esi+0x55], 0x0
	jz _ZN6stPbCl10AddPbEventEiiPci_420
	jmp _ZN6stPbCl10AddPbEventEiiPci_540
_ZN6stPbCl10AddPbEventEiiPci_340:
	mov [esp], eax
	call dlclose
	mov dword [esi+0x8], 0x0
	xor edx, edx
	jmp _ZN6stPbCl10AddPbEventEiiPci_550


;Initialized global or static variables of pbcl:
SECTION .data
exeInstance: dd 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of pbcl:
SECTION .rdata


;Zero initialized global or static variables of pbcl:
SECTION .bss
pbcl: resb 0x200


;All cstrings:
SECTION .rdata
_cstring_skipnotify:		db "[skipnotify]",0
_cstring_s_s:		db "%s: %s",0ah,0
_cstring_null:		db 0
_cstring_x:		db "x",0
_cstring_x1:		db "X",0
_cstring_set_cl_punkbuste:		db "set_cl_punkbuster",0
_cstring_cvar_set:		db "Cvar_Set",0
_cstring_dvar_set:		db "Dvar_Set",0
_cstring_get_pb_cdkey:		db "get_pb_cdkey",0
_cstring_0:		db "0",0
_cstring_rb:		db "rb",0
_cstring_ca:		db "ca",0
_cstring_cb:		db "cb",0
_cstring_pb_error_client_:		db "PB Error: Client DLL Get Procedure Failure",0
_cstring_pb_error_client_1:		db "PB Error: Client DLL Load Failure",0



;All constant floats and doubles:
SECTION .rdata

