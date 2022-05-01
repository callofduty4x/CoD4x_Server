;Imports of CDirect3DPixelShader:
	extern _ZN7COpenGL7sOpenGLE
	extern _ZdlPv
	extern glProgramEnvParameter4fvARB
	extern glBindProgramARB
	extern glEnable
	extern glDisable
	extern _ZNSsC1ERKSs
	extern glGetProgramivARB
	extern glGenProgramsARB
	extern glProgramStringARB
	extern glGetIntegerv
	extern glGetString
	extern sprintf
	extern _Unwind_Resume
	extern _ZN9__gnu_cxx18__exchange_and_addEPVii
	extern _ZNSs4_Rep10_M_destroyERKSaIcE
	extern glDeleteProgramsARB
	extern _ZTI8IUnknown

;Exports of CDirect3DPixelShader:
	global _ZN20CDirect3DPixelShader11GetFunctionEPvPj
	global _ZN20CDirect3DPixelShader14QueryInterfaceERK5_GUIDPPv
	global _ZN20CDirect3DPixelShader6AddRefEv
	global _ZN20CDirect3DPixelShader7ReleaseEv
	global _ZN20CDirect3DPixelShader9GetDeviceEPP16IDirect3DDevice9
	global _ZN20CDirect3DPixelShaderD0Ev
	global _ZN20CDirect3DPixelShaderD1Ev
	global _ZN20CDirect3DPixelShaderD2Ev
	global _ZN25COpenGLARBFragmentProgram12SetConstantsEjPKfjj
	global _ZN25COpenGLARBFragmentProgram6EnableEv
	global _ZN25COpenGLARBFragmentProgram7DisableEv
	global _ZN25COpenGLARBFragmentProgramC1EP15CDirect3DDeviceRKSsS3_
	global _ZN25COpenGLARBFragmentProgramD0Ev
	global _ZN25COpenGLARBFragmentProgramD1Ev
	global _ZTI20CDirect3DPixelShader
	global _ZTI21IDirect3DPixelShader9
	global _ZTI25COpenGLARBFragmentProgram
	global _ZTV20CDirect3DPixelShader
	global _ZTV25COpenGLARBFragmentProgram


SECTION .text


;CDirect3DPixelShader::GetFunction(void*, unsigned int*)
_ZN20CDirect3DPixelShader11GetFunctionEPvPj:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x10]
	mov dword [eax], 0x0
	xor eax, eax
	pop ebp
	ret


;CDirect3DPixelShader::QueryInterface(_GUID const&, void**)
_ZN20CDirect3DPixelShader14QueryInterfaceERK5_GUIDPPv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov edx, [ebp+0x10]
	mov [edx], eax
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x4]
	xor eax, eax
	leave
	ret


;CDirect3DPixelShader::AddRef()
_ZN20CDirect3DPixelShader6AddRefEv:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, [edx+0x8]
	add eax, 0x1
	mov [edx+0x8], eax
	pop ebp
	ret
	nop


;CDirect3DPixelShader::Release()
_ZN20CDirect3DPixelShader7ReleaseEv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov edx, [ebp+0x8]
	mov ebx, [edx+0x8]
	sub ebx, 0x1
	mov [edx+0x8], ebx
	test ebx, ebx
	jnz _ZN20CDirect3DPixelShader7ReleaseEv_10
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x18]
_ZN20CDirect3DPixelShader7ReleaseEv_10:
	mov eax, ebx
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;CDirect3DPixelShader::GetDevice(IDirect3DDevice9**)
_ZN20CDirect3DPixelShader9GetDeviceEPP16IDirect3DDevice9:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	mov dword [eax], 0x0
	xor eax, eax
	pop ebp
	ret


;CDirect3DPixelShader::~CDirect3DPixelShader()
_ZN20CDirect3DPixelShaderD0Ev:
	push ebp
	mov ebp, esp
	push ebx
	mov ebx, [ebp+0x8]
	mov dword [ebx], _ZTV20CDirect3DPixelShader+0x8
	mov eax, _ZN7COpenGL7sOpenGLE
	cmp [eax+0xfc], ebx
	jz _ZN20CDirect3DPixelShaderD0Ev_10
_ZN20CDirect3DPixelShaderD0Ev_20:
	mov eax, [ebx+0x4]
	mov byte [eax+0x440], 0x1
	mov eax, [ebx+0x4]
	mov byte [eax+0x441], 0x1
	mov edx, [ebx+0x4]
	mov ecx, [edx+0x2d4]
	mov eax, 0x1
	shl eax, cl
	sub eax, 0x1
	mov [edx+0x444], eax
	mov [ebp+0x8], ebx
	pop ebx
	pop ebp
	jmp _ZdlPv
_ZN20CDirect3DPixelShaderD0Ev_10:
	mov dword [eax+0xfc], 0x0
	jmp _ZN20CDirect3DPixelShaderD0Ev_20
	nop


;CDirect3DPixelShader::~CDirect3DPixelShader()
_ZN20CDirect3DPixelShaderD1Ev:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov dword [edx], _ZTV20CDirect3DPixelShader+0x8
	mov eax, _ZN7COpenGL7sOpenGLE
	cmp [eax+0xfc], edx
	jz _ZN20CDirect3DPixelShaderD1Ev_10
_ZN20CDirect3DPixelShaderD1Ev_20:
	mov eax, [edx+0x4]
	mov byte [eax+0x440], 0x1
	mov eax, [edx+0x4]
	mov byte [eax+0x441], 0x1
	mov edx, [edx+0x4]
	mov ecx, [edx+0x2d4]
	mov eax, 0x1
	shl eax, cl
	sub eax, 0x1
	mov [edx+0x444], eax
	pop ebp
	ret
_ZN20CDirect3DPixelShaderD1Ev_10:
	mov dword [eax+0xfc], 0x0
	jmp _ZN20CDirect3DPixelShaderD1Ev_20


;CDirect3DPixelShader::~CDirect3DPixelShader()
_ZN20CDirect3DPixelShaderD2Ev:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov dword [edx], _ZTV20CDirect3DPixelShader+0x8
	mov eax, _ZN7COpenGL7sOpenGLE
	cmp [eax+0xfc], edx
	jz _ZN20CDirect3DPixelShaderD2Ev_10
_ZN20CDirect3DPixelShaderD2Ev_20:
	mov eax, [edx+0x4]
	mov byte [eax+0x440], 0x1
	mov eax, [edx+0x4]
	mov byte [eax+0x441], 0x1
	mov edx, [edx+0x4]
	mov ecx, [edx+0x2d4]
	mov eax, 0x1
	shl eax, cl
	sub eax, 0x1
	mov [edx+0x444], eax
	pop ebp
	ret
_ZN20CDirect3DPixelShaderD2Ev_10:
	mov dword [eax+0xfc], 0x0
	jmp _ZN20CDirect3DPixelShaderD2Ev_20


;COpenGLARBFragmentProgram::SetConstants(unsigned int, float const*, unsigned int, unsigned int)
_ZN25COpenGLARBFragmentProgram12SetConstantsEjPKfjj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov eax, [ebp+0x14]
	sub eax, 0x1
	cmp eax, 0xffffffff
	jz _ZN25COpenGLARBFragmentProgram12SetConstantsEjPKfjj_10
	mov esi, [ebp+0x10]
	mov ebx, [ebp+0xc]
	lea edi, [ebx+eax+0x1]
_ZN25COpenGLARBFragmentProgram12SetConstantsEjPKfjj_20:
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov dword [esp], 0x8804
	call glProgramEnvParameter4fvARB
	add ebx, 0x1
	add esi, 0x10
	cmp ebx, edi
	jnz _ZN25COpenGLARBFragmentProgram12SetConstantsEjPKfjj_20
_ZN25COpenGLARBFragmentProgram12SetConstantsEjPKfjj_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;COpenGLARBFragmentProgram::Enable()
_ZN25COpenGLARBFragmentProgram6EnableEv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov eax, [esi+0x18]
	mov ebx, _ZN7COpenGL7sOpenGLE
	cmp [ebx+0x100], eax
	jz _ZN25COpenGLARBFragmentProgram6EnableEv_10
	mov [esp+0x4], eax
	mov dword [esp], 0x8804
	call glBindProgramARB
	mov eax, [esi+0x18]
	mov [ebx+0x100], eax
_ZN25COpenGLARBFragmentProgram6EnableEv_10:
	cmp byte [ebx+0x104], 0x0
	jz _ZN25COpenGLARBFragmentProgram6EnableEv_20
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_ZN25COpenGLARBFragmentProgram6EnableEv_20:
	mov byte [ebx+0x104], 0x1
	mov dword [ebp+0x8], 0x8804
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp glEnable


;COpenGLARBFragmentProgram::Disable()
_ZN25COpenGLARBFragmentProgram7DisableEv:
	push ebp
	mov ebp, esp
	mov eax, _ZN7COpenGL7sOpenGLE
	cmp byte [eax+0x104], 0x0
	jnz _ZN25COpenGLARBFragmentProgram7DisableEv_10
	pop ebp
	ret
_ZN25COpenGLARBFragmentProgram7DisableEv_10:
	mov byte [eax+0x104], 0x0
	mov dword [ebp+0x8], 0x8804
	pop ebp
	jmp glDisable
	nop


;COpenGLARBFragmentProgram::COpenGLARBFragmentProgram(CDirect3DDevice*, std::string const&, std::string const&)
_ZN25COpenGLARBFragmentProgramC1EP15CDirect3DDeviceRKSsS3_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x43c
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0x14]
	mov eax, [ebp+0xc]
	mov [esi+0x4], eax
	mov dword [esi+0xc], 0x0
	mov dword [esi+0x8], 0x1
	mov dword [esi], _ZTV25COpenGLARBFragmentProgram+0x8
	lea edx, [esi+0x10]
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov [esp], edx
	call _ZNSsC1ERKSs
	lea eax, [esi+0x14]
	mov [esp+0x4], ebx
	mov [esp], eax
	call _ZNSsC1ERKSs
	mov dword [esi+0x18], 0x0
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x8677
	mov dword [esp], 0x8804
	call glGetProgramivARB
	mov ebx, [ebx]
	lea eax, [esi+0x18]
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call glGenProgramsARB
	mov eax, [esi+0x18]
	mov [esp+0x4], eax
	mov dword [esp], 0x8804
	call glBindProgramARB
	mov [esp+0xc], ebx
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x8875
	mov dword [esp], 0x8804
	call glProgramStringARB
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov dword [esp], 0x864b
	call glGetIntegerv
	cmp dword [ebp-0x24], 0xffffffff
	jz _ZN25COpenGLARBFragmentProgramC1EP15CDirect3DDeviceRKSsS3__10
	mov dword [esp], 0x8874
	call glGetString
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s
	lea eax, [ebp-0x424]
	mov [esp], eax
	call sprintf
_ZN25COpenGLARBFragmentProgramC1EP15CDirect3DDeviceRKSsS3__10:
	mov eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov dword [esp], 0x8804
	call glBindProgramARB
	add esp, 0x43c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	mov edi, eax
_ZN25COpenGLARBFragmentProgramC1EP15CDirect3DDeviceRKSsS3__30:
	mov [esp], esi
	call _ZN20CDirect3DPixelShaderD2Ev
	mov [esp], edi
	call _Unwind_Resume
	mov edi, eax
	mov eax, [esi+0x14]
	lea ebx, [eax-0xc]
	mov edx, [0xd5cc01c]
	mov [ebp-0x42c], edx
	cmp ebx, edx
	jnz _ZN25COpenGLARBFragmentProgramC1EP15CDirect3DDeviceRKSsS3__20
_ZN25COpenGLARBFragmentProgramC1EP15CDirect3DDeviceRKSsS3__40:
	mov eax, [esi+0x10]
	lea ebx, [eax-0xc]
	cmp ebx, [ebp-0x42c]
	jz _ZN25COpenGLARBFragmentProgramC1EP15CDirect3DDeviceRKSsS3__30
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN25COpenGLARBFragmentProgramC1EP15CDirect3DDeviceRKSsS3__30
	lea eax, [ebp-0x19]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZN25COpenGLARBFragmentProgramC1EP15CDirect3DDeviceRKSsS3__30
	mov edi, eax
	mov edx, [0xd5cc01c]
	mov [ebp-0x42c], edx
	jmp _ZN25COpenGLARBFragmentProgramC1EP15CDirect3DDeviceRKSsS3__40
_ZN25COpenGLARBFragmentProgramC1EP15CDirect3DDeviceRKSsS3__20:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN25COpenGLARBFragmentProgramC1EP15CDirect3DDeviceRKSsS3__40
	lea eax, [ebp-0x1a]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZN25COpenGLARBFragmentProgramC1EP15CDirect3DDeviceRKSsS3__40
	mov edi, eax
	mov eax, [0xd5cc01c]
	mov [ebp-0x42c], eax
	jmp _ZN25COpenGLARBFragmentProgramC1EP15CDirect3DDeviceRKSsS3__40


;COpenGLARBFragmentProgram::~COpenGLARBFragmentProgram()
_ZN25COpenGLARBFragmentProgramD0Ev:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov esi, [ebp+0x8]
	mov dword [esi], _ZTV25COpenGLARBFragmentProgram+0x8
	mov ebx, _ZN7COpenGL7sOpenGLE
	cmp [ebx+0xfc], esi
	jz _ZN25COpenGLARBFragmentProgramD0Ev_10
_ZN25COpenGLARBFragmentProgramD0Ev_50:
	mov eax, [esi+0x18]
	cmp [ebx+0x100], eax
	jz _ZN25COpenGLARBFragmentProgramD0Ev_20
_ZN25COpenGLARBFragmentProgramD0Ev_60:
	lea eax, [esi+0x18]
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call glDeleteProgramsARB
	mov ebx, [esi+0x14]
	sub ebx, 0xc
	mov edi, [0xd5cc01c]
	cmp ebx, edi
	jnz _ZN25COpenGLARBFragmentProgramD0Ev_30
_ZN25COpenGLARBFragmentProgramD0Ev_70:
	mov eax, [esi+0x10]
	lea ebx, [eax-0xc]
	cmp edi, ebx
	jnz _ZN25COpenGLARBFragmentProgramD0Ev_40
_ZN25COpenGLARBFragmentProgramD0Ev_80:
	mov [esp], esi
	call _ZN20CDirect3DPixelShaderD2Ev
	mov [esp], esi
	call _ZdlPv
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN25COpenGLARBFragmentProgramD0Ev_10:
	cmp byte [ebx+0x104], 0x0
	jz _ZN25COpenGLARBFragmentProgramD0Ev_50
	mov byte [ebx+0x104], 0x0
	mov dword [esp], 0x8804
	call glDisable
	jmp _ZN25COpenGLARBFragmentProgramD0Ev_50
_ZN25COpenGLARBFragmentProgramD0Ev_20:
	mov dword [ebx+0x100], 0xffffffff
	mov dword [ebx+0xfc], 0xffffffff
	jmp _ZN25COpenGLARBFragmentProgramD0Ev_60
_ZN25COpenGLARBFragmentProgramD0Ev_30:
	lea eax, [ebx+0x8]
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN25COpenGLARBFragmentProgramD0Ev_70
	lea eax, [ebp-0x1a]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZN25COpenGLARBFragmentProgramD0Ev_70
_ZN25COpenGLARBFragmentProgramD0Ev_40:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN25COpenGLARBFragmentProgramD0Ev_80
	lea eax, [ebp-0x19]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZN25COpenGLARBFragmentProgramD0Ev_80
	mov edi, eax
	mov eax, [esi+0x14]
	lea ebx, [eax-0xc]
	mov edx, [0xd5cc01c]
	mov [ebp-0x2c], edx
	cmp ebx, edx
	jnz _ZN25COpenGLARBFragmentProgramD0Ev_90
_ZN25COpenGLARBFragmentProgramD0Ev_110:
	mov eax, [esi+0x10]
	lea ebx, [eax-0xc]
	cmp ebx, [ebp-0x2c]
	jnz _ZN25COpenGLARBFragmentProgramD0Ev_100
_ZN25COpenGLARBFragmentProgramD0Ev_120:
	mov [esp], esi
	call _ZN20CDirect3DPixelShaderD2Ev
	mov [esp], edi
	call _Unwind_Resume
	mov edi, eax
	mov edx, [0xd5cc01c]
	mov [ebp-0x2c], edx
	jmp _ZN25COpenGLARBFragmentProgramD0Ev_110
	mov edi, eax
	jmp _ZN25COpenGLARBFragmentProgramD0Ev_120
_ZN25COpenGLARBFragmentProgramD0Ev_100:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN25COpenGLARBFragmentProgramD0Ev_120
	lea eax, [ebp-0x19]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZN25COpenGLARBFragmentProgramD0Ev_120
_ZN25COpenGLARBFragmentProgramD0Ev_90:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN25COpenGLARBFragmentProgramD0Ev_110
	lea eax, [ebp-0x1a]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZN25COpenGLARBFragmentProgramD0Ev_110
	mov edi, eax
	mov eax, [0xd5cc01c]
	mov [ebp-0x2c], eax
	jmp _ZN25COpenGLARBFragmentProgramD0Ev_110
	add [eax], al


;COpenGLARBFragmentProgram::~COpenGLARBFragmentProgram()
_ZN25COpenGLARBFragmentProgramD1Ev:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov esi, [ebp+0x8]
	mov dword [esi], _ZTV25COpenGLARBFragmentProgram+0x8
	mov ebx, _ZN7COpenGL7sOpenGLE
	cmp [ebx+0xfc], esi
	jz _ZN25COpenGLARBFragmentProgramD1Ev_10
_ZN25COpenGLARBFragmentProgramD1Ev_50:
	mov eax, [esi+0x18]
	cmp [ebx+0x100], eax
	jz _ZN25COpenGLARBFragmentProgramD1Ev_20
_ZN25COpenGLARBFragmentProgramD1Ev_60:
	lea eax, [esi+0x18]
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call glDeleteProgramsARB
	mov ebx, [esi+0x14]
	sub ebx, 0xc
	mov edi, [0xd5cc01c]
	cmp ebx, edi
	jnz _ZN25COpenGLARBFragmentProgramD1Ev_30
_ZN25COpenGLARBFragmentProgramD1Ev_70:
	mov eax, [esi+0x10]
	lea ebx, [eax-0xc]
	cmp edi, ebx
	jnz _ZN25COpenGLARBFragmentProgramD1Ev_40
_ZN25COpenGLARBFragmentProgramD1Ev_80:
	mov [esp], esi
	call _ZN20CDirect3DPixelShaderD2Ev
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN25COpenGLARBFragmentProgramD1Ev_10:
	cmp byte [ebx+0x104], 0x0
	jz _ZN25COpenGLARBFragmentProgramD1Ev_50
	mov byte [ebx+0x104], 0x0
	mov dword [esp], 0x8804
	call glDisable
	jmp _ZN25COpenGLARBFragmentProgramD1Ev_50
_ZN25COpenGLARBFragmentProgramD1Ev_20:
	mov dword [ebx+0x100], 0xffffffff
	mov dword [ebx+0xfc], 0xffffffff
	jmp _ZN25COpenGLARBFragmentProgramD1Ev_60
_ZN25COpenGLARBFragmentProgramD1Ev_30:
	lea eax, [ebx+0x8]
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN25COpenGLARBFragmentProgramD1Ev_70
	lea eax, [ebp-0x1a]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZN25COpenGLARBFragmentProgramD1Ev_70
_ZN25COpenGLARBFragmentProgramD1Ev_40:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN25COpenGLARBFragmentProgramD1Ev_80
	lea eax, [ebp-0x19]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZN25COpenGLARBFragmentProgramD1Ev_80
	mov edi, eax
	mov eax, [esi+0x14]
	lea ebx, [eax-0xc]
	mov edx, [0xd5cc01c]
	mov [ebp-0x2c], edx
	cmp ebx, edx
	jnz _ZN25COpenGLARBFragmentProgramD1Ev_90
_ZN25COpenGLARBFragmentProgramD1Ev_110:
	mov eax, [esi+0x10]
	lea ebx, [eax-0xc]
	cmp ebx, [ebp-0x2c]
	jnz _ZN25COpenGLARBFragmentProgramD1Ev_100
_ZN25COpenGLARBFragmentProgramD1Ev_120:
	mov [esp], esi
	call _ZN20CDirect3DPixelShaderD2Ev
	mov [esp], edi
	call _Unwind_Resume
	mov edi, eax
	mov edx, [0xd5cc01c]
	mov [ebp-0x2c], edx
	jmp _ZN25COpenGLARBFragmentProgramD1Ev_110
	mov edi, eax
	jmp _ZN25COpenGLARBFragmentProgramD1Ev_120
_ZN25COpenGLARBFragmentProgramD1Ev_100:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN25COpenGLARBFragmentProgramD1Ev_120
	lea eax, [ebp-0x19]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZN25COpenGLARBFragmentProgramD1Ev_120
_ZN25COpenGLARBFragmentProgramD1Ev_90:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN25COpenGLARBFragmentProgramD1Ev_110
	lea eax, [ebp-0x1a]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZN25COpenGLARBFragmentProgramD1Ev_110
	mov edi, eax
	mov eax, [0xd5cc01c]
	mov [ebp-0x2c], eax
	jmp _ZN25COpenGLARBFragmentProgramD1Ev_110
	nop


;Initialized global or static variables of CDirect3DPixelShader:
SECTION .data


;Initialized constant data of CDirect3DPixelShader:
SECTION .rdata
;VTypeInfoTable for CDirect3DPixelShader:
_ZTI20CDirect3DPixelShader: dd 0x8, _cstring_20cdirect3dpixel, _ZTI21IDirect3DPixelShader9, 0x0, 0x0, 0x0, 0x0, 0x0
;VTypeInfoTable for IDirect3DPixelShader9:
_ZTI21IDirect3DPixelShader9: dd 0x8, _cstring_21idirect3dpixel, _ZTI8IUnknown, 0x0, 0x0, 0x0, 0x0, 0x0
;VTypeInfoTable for COpenGLARBFragmentProgram:
_ZTI25COpenGLARBFragmentProgram: dd 0x8, _cstring_25copenglarbfrag, _ZTI20CDirect3DPixelShader, 0x0, 0x0, 0x0, 0x0, 0x0
;VTable for CDirect3DPixelShader:
_ZTV20CDirect3DPixelShader: dd 0x0, _ZTI20CDirect3DPixelShader, _ZN20CDirect3DPixelShader14QueryInterfaceERK5_GUIDPPv, _ZN20CDirect3DPixelShader6AddRefEv, _ZN20CDirect3DPixelShader7ReleaseEv, _ZN20CDirect3DPixelShader9GetDeviceEPP16IDirect3DDevice9, _ZN20CDirect3DPixelShader11GetFunctionEPvPj, _ZN20CDirect3DPixelShaderD1Ev, _ZN20CDirect3DPixelShaderD0Ev, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
;VTable for COpenGLARBFragmentProgram:
_ZTV25COpenGLARBFragmentProgram: dd 0x0, _ZTI25COpenGLARBFragmentProgram, _ZN20CDirect3DPixelShader14QueryInterfaceERK5_GUIDPPv, _ZN20CDirect3DPixelShader6AddRefEv, _ZN20CDirect3DPixelShader7ReleaseEv, _ZN20CDirect3DPixelShader9GetDeviceEPP16IDirect3DDevice9, _ZN20CDirect3DPixelShader11GetFunctionEPvPj, _ZN25COpenGLARBFragmentProgramD1Ev, _ZN25COpenGLARBFragmentProgramD0Ev, _ZN25COpenGLARBFragmentProgram6EnableEv, _ZN25COpenGLARBFragmentProgram7DisableEv, _ZN25COpenGLARBFragmentProgram12SetConstantsEjPKfjj, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of CDirect3DPixelShader:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_s:		db "%s",0ah,0
_cstring_20cdirect3dpixel:		db "20CDirect3DPixelShader",0
_cstring_21idirect3dpixel:		db "21IDirect3DPixelShader9",0
_cstring_25copenglarbfrag:		db "25COpenGLARBFragmentProgram",0



;All constant floats and doubles:
SECTION .rdata

