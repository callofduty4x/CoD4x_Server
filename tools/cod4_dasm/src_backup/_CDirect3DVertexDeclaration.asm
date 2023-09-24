;Imports of CDirect3DVertexDeclaration:
	extern _Unwind_Resume
	extern _ZdlPv
	extern _Znwm
	extern _ZSt17__throw_bad_allocv

;Exports of CDirect3DVertexDeclaration:
	global _ZZNK26CDirect3DVertexDeclaration14GetNumElementsEPK18_D3DVERTEXELEMENT9E8EndToken
	global _ZN26CDirect3DVertexDeclaration14GetDeclarationEP18_D3DVERTEXELEMENT9Pj
	global _ZN26CDirect3DVertexDeclaration14QueryInterfaceERK5_GUIDPPv
	global _ZN26CDirect3DVertexDeclaration6AddRefEv
	global _ZN26CDirect3DVertexDeclaration7ReleaseEv
	global _ZN26CDirect3DVertexDeclaration9GetDeviceEPP16IDirect3DDevice9
	global _ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9
	global _ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9
	global _ZN26CDirect3DVertexDeclarationD0Ev
	global _ZN26CDirect3DVertexDeclarationD1Ev
	global _ZNSt6vectorI18_D3DVERTEXELEMENT9SaIS0_EEC1IPKS0_EET_S6_RKS1_
	global _ZTV26CDirect3DVertexDeclaration


SECTION .text


;CDirect3DVertexDeclaration::GetDeclaration(_D3DVERTEXELEMENT9*, unsigned int*)
_ZN26CDirect3DVertexDeclaration14GetDeclarationEP18_D3DVERTEXELEMENT9Pj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4
	mov eax, [ebp+0x8]
	mov ebx, [ebp+0xc]
	lea edx, [eax+0x8]
	mov [ebp-0x10], edx
	mov esi, [edx+0x4]
	mov ecx, [eax+0x8]
	mov edi, esi
	sub edi, ecx
	sar edi, 0x3
	test edi, edi
	jle _ZN26CDirect3DVertexDeclaration14GetDeclarationEP18_D3DVERTEXELEMENT9Pj_10
	xor esi, esi
_ZN26CDirect3DVertexDeclaration14GetDeclarationEP18_D3DVERTEXELEMENT9Pj_20:
	mov eax, [ecx]
	mov edx, [ecx+0x4]
	mov [ebx], eax
	mov [ebx+0x4], edx
	add ecx, 0x8
	add ebx, 0x8
	add esi, 0x1
	cmp edi, esi
	jnz _ZN26CDirect3DVertexDeclaration14GetDeclarationEP18_D3DVERTEXELEMENT9Pj_20
	mov eax, [ebp-0x10]
	mov esi, [eax+0x4]
	mov edx, eax
_ZN26CDirect3DVertexDeclaration14GetDeclarationEP18_D3DVERTEXELEMENT9Pj_10:
	sub esi, [edx]
	sar esi, 0x3
	mov eax, [ebp+0x10]
	mov [eax], esi
	xor eax, eax
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CDirect3DVertexDeclaration::QueryInterface(_GUID const&, void**)
_ZN26CDirect3DVertexDeclaration14QueryInterfaceERK5_GUIDPPv:
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


;CDirect3DVertexDeclaration::AddRef()
_ZN26CDirect3DVertexDeclaration6AddRefEv:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, [edx+0x4]
	add eax, 0x1
	mov [edx+0x4], eax
	pop ebp
	ret
	nop


;CDirect3DVertexDeclaration::Release()
_ZN26CDirect3DVertexDeclaration7ReleaseEv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov edx, [ebp+0x8]
	mov ebx, [edx+0x4]
	sub ebx, 0x1
	mov [edx+0x4], ebx
	test ebx, ebx
	jnz _ZN26CDirect3DVertexDeclaration7ReleaseEv_10
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x18]
_ZN26CDirect3DVertexDeclaration7ReleaseEv_10:
	mov eax, ebx
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;CDirect3DVertexDeclaration::GetDevice(IDirect3DDevice9**)
_ZN26CDirect3DVertexDeclaration9GetDeviceEPP16IDirect3DDevice9:
	push ebp
	mov ebp, esp
	mov eax, 0x8876086c
	pop ebp
	ret


;CDirect3DVertexDeclaration::CDirect3DVertexDeclaration(_D3DVERTEXELEMENT9 const*)
_ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov eax, [ebp+0x8]
	mov dword [eax], _ZTV26CDirect3DVertexDeclaration+0x8
	mov dword [eax+0x4], 0x0
	mov edx, [ebp+0xc]
	mov [ebp-0x3c], edx
	mov dword [ebp-0x34], 0x0
	cld
	mov esi, edx
	jmp _ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_10
_ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_30:
	add dword [ebp-0x34], 0x1
	mov esi, [ebp-0x3c]
_ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_10:
	mov ebx, 0x8
	mov edi, _ZZNK26CDirect3DVertexDeclaration14GetNumElementsEPK18_D3DVERTEXELEMENT9E8EndToken
	mov ecx, ebx
	repe cmpsb
	mov eax, 0x0
	jz _ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_20
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_20:
	add dword [ebp-0x3c], 0x8
	test eax, eax
	jnz _ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_30
	mov eax, [ebp+0x8]
	add eax, 0x8
	mov [ebp-0x38], eax
	lea eax, [ebp-0x19]
	mov [esp+0xc], eax
	mov edx, [ebp-0x34]
	mov ecx, [ebp+0xc]
	lea eax, [ecx+edx*8+0x8]
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov eax, [ebp-0x38]
	mov [esp], eax
	call _ZNSt6vectorI18_D3DVERTEXELEMENT9SaIS0_EEC1IPKS0_EET_S6_RKS1_
	mov esi, [ebp+0x8]
	add esi, 0x14
	mov dword [esi+0x10], 0x0
	mov eax, esi
	xor edx, edx
_ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_40:
	mov byte [eax], 0xfc
	add edx, 0x1
	add eax, 0x1
	cmp edx, 0x10
	jnz _ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_40
	xor edi, edi
	mov eax, [ebp-0x38]
	mov edx, [eax]
	mov eax, [eax+0x4]
	sub eax, edx
	sar eax, 0x3
	sub eax, 0x1
	cmp edi, eax
	jae _ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_50
_ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_110:
	lea edx, [edx+edi*8]
	movzx eax, byte [edx+0x6]
	cmp eax, 0xa
	ja _ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_60
	jmp dword [eax*4+_ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_jumptab_0]
_ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_60:
	mov dword [ebp-0x30], 0x0
	mov dword [ebp-0x2c], 0x0
_ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_100:
	movzx eax, byte [edx+0x4]
	cmp eax, 0x8
	ja _ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_70
_ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_80:
	jmp dword [eax*4+_ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_jumptab_1]
_ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_120:
	mov dword [ebp-0x30], 0x1
	mov dword [ebp-0x2c], 0x1
	movzx eax, byte [edx+0x4]
	cmp eax, 0x8
	jbe _ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_80
_ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_70:
	xor ecx, ecx
	xor ebx, ebx
	xor eax, eax
	jmp _ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_90
_ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_130:
	mov dword [ebp-0x30], 0x2
	mov dword [ebp-0x2c], 0x2
	jmp _ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_100
_ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_140:
	mov dword [ebp-0x30], 0x4
	mov dword [ebp-0x2c], 0x4
	jmp _ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_100
_ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_150:
	movzx eax, byte [edx+0x7]
	add eax, 0x8
	mov [ebp-0x30], eax
	mov [ebp-0x2c], eax
	jmp _ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_100
_ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_160:
	mov dword [ebp-0x30], 0x7
	mov dword [ebp-0x2c], 0x7
	jmp _ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_100
_ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_170:
	mov dword [ebp-0x30], 0x3
	mov dword [ebp-0x2c], 0x3
	jmp _ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_100
_ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_180:
	xor ecx, ecx
	mov ebx, 0x1406
	mov eax, 0x1
_ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_90:
	movzx edx, word [edx+0x2]
	shr edx, 0x2
	shl dl, 0x4
	sub al, 0x1
	and al, 0x3
	shl al, 0x2
	or dl, al
	cmp ebx, 0x1406
	setnz al
	add al, al
	or al, dl
	or cl, al
	mov edx, [ebp-0x30]
	mov [esi+edx], cl
	mov eax, 0x1
	movzx ecx, byte [ebp-0x2c]
	shl eax, cl
	or [esi+0x10], eax
	add edi, 0x1
	mov eax, [ebp-0x38]
	mov edx, [eax]
	mov eax, [eax+0x4]
	sub eax, edx
	sar eax, 0x3
	sub eax, 0x1
	cmp edi, eax
	jb _ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_110
_ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_50:
	mov eax, [ebp+0x8]
	add dword [eax+0x4], 0x1
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_190:
	xor ecx, ecx
	mov ebx, 0x1406
	mov eax, 0x2
	jmp _ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_90
_ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_200:
	xor ecx, ecx
	mov ebx, 0x1406
	mov eax, 0x3
	jmp _ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_90
_ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_210:
	xor ecx, ecx
	mov ebx, 0x1406
	mov eax, 0x4
	jmp _ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_90
_ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_230:
	xor ecx, ecx
	mov ebx, 0x1401
	mov eax, 0x4
	jmp _ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_90
_ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_240:
	xor ecx, ecx
	mov ebx, 0x1402
	mov eax, 0x2
	jmp _ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_90
_ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_250:
	xor ecx, ecx
	mov ebx, 0x1402
	mov eax, 0x4
	jmp _ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_90
_ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_220:
	mov ecx, 0x1
	mov ebx, 0x1401
	mov eax, 0x4
	jmp _ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_90
	mov [esp], eax
	call _Unwind_Resume
	add [eax], al
	
	
_ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_jumptab_0:
	dd _ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_60
	dd _ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_120
	dd _ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_130
	dd _ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_130
	dd _ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_140
	dd _ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_150
	dd _ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_160
	dd _ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_60
	dd _ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_60
	dd _ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_60
	dd _ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_170
_ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_jumptab_1:
	dd _ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_180
	dd _ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_190
	dd _ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_200
	dd _ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_210
	dd _ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_220
	dd _ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_230
	dd _ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_240
	dd _ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_250
	dd _ZN26CDirect3DVertexDeclarationC1EPK18_D3DVERTEXELEMENT9_220


;CDirect3DVertexDeclaration::CDirect3DVertexDeclaration(_D3DVERTEXELEMENT9 const*)
_ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov eax, [ebp+0x8]
	mov dword [eax], _ZTV26CDirect3DVertexDeclaration+0x8
	mov dword [eax+0x4], 0x0
	mov edx, [ebp+0xc]
	mov [ebp-0x3c], edx
	mov dword [ebp-0x34], 0x0
	cld
	mov esi, edx
	jmp _ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_10
_ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_30:
	add dword [ebp-0x34], 0x1
	mov esi, [ebp-0x3c]
_ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_10:
	mov ebx, 0x8
	mov edi, _ZZNK26CDirect3DVertexDeclaration14GetNumElementsEPK18_D3DVERTEXELEMENT9E8EndToken
	mov ecx, ebx
	repe cmpsb
	mov eax, 0x0
	jz _ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_20
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_20:
	add dword [ebp-0x3c], 0x8
	test eax, eax
	jnz _ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_30
	mov eax, [ebp+0x8]
	add eax, 0x8
	mov [ebp-0x38], eax
	lea eax, [ebp-0x19]
	mov [esp+0xc], eax
	mov edx, [ebp-0x34]
	mov ecx, [ebp+0xc]
	lea eax, [ecx+edx*8+0x8]
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov eax, [ebp-0x38]
	mov [esp], eax
	call _ZNSt6vectorI18_D3DVERTEXELEMENT9SaIS0_EEC1IPKS0_EET_S6_RKS1_
	mov esi, [ebp+0x8]
	add esi, 0x14
	mov dword [esi+0x10], 0x0
	mov eax, esi
	xor edx, edx
_ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_40:
	mov byte [eax], 0xfc
	add edx, 0x1
	add eax, 0x1
	cmp edx, 0x10
	jnz _ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_40
	xor edi, edi
	mov eax, [ebp-0x38]
	mov edx, [eax]
	mov eax, [eax+0x4]
	sub eax, edx
	sar eax, 0x3
	sub eax, 0x1
	cmp edi, eax
	jae _ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_50
_ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_110:
	lea edx, [edx+edi*8]
	movzx eax, byte [edx+0x6]
	cmp eax, 0xa
	ja _ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_60
	jmp dword [eax*4+_ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_jumptab_0]
_ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_60:
	mov dword [ebp-0x30], 0x0
	mov dword [ebp-0x2c], 0x0
_ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_100:
	movzx eax, byte [edx+0x4]
	cmp eax, 0x8
	ja _ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_70
_ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_80:
	jmp dword [eax*4+_ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_jumptab_1]
_ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_120:
	mov dword [ebp-0x30], 0x1
	mov dword [ebp-0x2c], 0x1
	movzx eax, byte [edx+0x4]
	cmp eax, 0x8
	jbe _ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_80
_ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_70:
	xor ecx, ecx
	xor ebx, ebx
	xor eax, eax
	jmp _ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_90
_ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_130:
	mov dword [ebp-0x30], 0x2
	mov dword [ebp-0x2c], 0x2
	jmp _ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_100
_ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_140:
	mov dword [ebp-0x30], 0x4
	mov dword [ebp-0x2c], 0x4
	jmp _ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_100
_ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_150:
	movzx eax, byte [edx+0x7]
	add eax, 0x8
	mov [ebp-0x30], eax
	mov [ebp-0x2c], eax
	jmp _ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_100
_ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_160:
	mov dword [ebp-0x30], 0x7
	mov dword [ebp-0x2c], 0x7
	jmp _ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_100
_ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_170:
	mov dword [ebp-0x30], 0x3
	mov dword [ebp-0x2c], 0x3
	jmp _ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_100
_ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_180:
	xor ecx, ecx
	mov ebx, 0x1406
	mov eax, 0x1
_ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_90:
	movzx edx, word [edx+0x2]
	shr edx, 0x2
	shl dl, 0x4
	sub al, 0x1
	and al, 0x3
	shl al, 0x2
	or dl, al
	cmp ebx, 0x1406
	setnz al
	add al, al
	or al, dl
	or cl, al
	mov edx, [ebp-0x30]
	mov [esi+edx], cl
	mov eax, 0x1
	movzx ecx, byte [ebp-0x2c]
	shl eax, cl
	or [esi+0x10], eax
	add edi, 0x1
	mov eax, [ebp-0x38]
	mov edx, [eax]
	mov eax, [eax+0x4]
	sub eax, edx
	sar eax, 0x3
	sub eax, 0x1
	cmp edi, eax
	jb _ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_110
_ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_50:
	mov eax, [ebp+0x8]
	add dword [eax+0x4], 0x1
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_190:
	xor ecx, ecx
	mov ebx, 0x1406
	mov eax, 0x2
	jmp _ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_90
_ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_200:
	xor ecx, ecx
	mov ebx, 0x1406
	mov eax, 0x3
	jmp _ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_90
_ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_210:
	xor ecx, ecx
	mov ebx, 0x1406
	mov eax, 0x4
	jmp _ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_90
_ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_230:
	xor ecx, ecx
	mov ebx, 0x1401
	mov eax, 0x4
	jmp _ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_90
_ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_240:
	xor ecx, ecx
	mov ebx, 0x1402
	mov eax, 0x2
	jmp _ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_90
_ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_250:
	xor ecx, ecx
	mov ebx, 0x1402
	mov eax, 0x4
	jmp _ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_90
_ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_220:
	mov ecx, 0x1
	mov ebx, 0x1401
	mov eax, 0x4
	jmp _ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_90
	mov [esp], eax
	call _Unwind_Resume
	
	
_ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_jumptab_0:
	dd _ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_60
	dd _ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_120
	dd _ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_130
	dd _ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_130
	dd _ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_140
	dd _ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_150
	dd _ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_160
	dd _ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_60
	dd _ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_60
	dd _ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_60
	dd _ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_170
_ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_jumptab_1:
	dd _ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_180
	dd _ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_190
	dd _ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_200
	dd _ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_210
	dd _ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_220
	dd _ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_230
	dd _ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_240
	dd _ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_250
	dd _ZN26CDirect3DVertexDeclarationC2EPK18_D3DVERTEXELEMENT9_220


;CDirect3DVertexDeclaration::~CDirect3DVertexDeclaration()
_ZN26CDirect3DVertexDeclarationD0Ev:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [ebx], _ZTV26CDirect3DVertexDeclaration+0x8
	lea ecx, [ebx+0x8]
	mov edx, [ecx+0x4]
	mov eax, [ebx+0x8]
	cmp edx, eax
	jz _ZN26CDirect3DVertexDeclarationD0Ev_10
_ZN26CDirect3DVertexDeclarationD0Ev_20:
	add eax, 0x8
	cmp edx, eax
	jnz _ZN26CDirect3DVertexDeclarationD0Ev_20
_ZN26CDirect3DVertexDeclarationD0Ev_10:
	mov eax, [ecx]
	test eax, eax
	jz _ZN26CDirect3DVertexDeclarationD0Ev_30
	mov [esp], eax
	call _ZdlPv
_ZN26CDirect3DVertexDeclarationD0Ev_30:
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _ZdlPv
	nop


;CDirect3DVertexDeclaration::~CDirect3DVertexDeclaration()
_ZN26CDirect3DVertexDeclarationD1Ev:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov dword [eax], _ZTV26CDirect3DVertexDeclaration+0x8
	lea ecx, [eax+0x8]
	mov edx, [ecx+0x4]
	mov eax, [eax+0x8]
	cmp edx, eax
	jz _ZN26CDirect3DVertexDeclarationD1Ev_10
_ZN26CDirect3DVertexDeclarationD1Ev_20:
	add eax, 0x8
	cmp edx, eax
	jnz _ZN26CDirect3DVertexDeclarationD1Ev_20
_ZN26CDirect3DVertexDeclarationD1Ev_10:
	mov eax, [ecx]
	test eax, eax
	jz _ZN26CDirect3DVertexDeclarationD1Ev_30
	mov [ebp+0x8], eax
	pop ebp
	jmp _ZdlPv
_ZN26CDirect3DVertexDeclarationD1Ev_30:
	pop ebp
	ret


;std::vector<_D3DVERTEXELEMENT9, std::allocator<_D3DVERTEXELEMENT9> >::vector<_D3DVERTEXELEMENT9 const*>(_D3DVERTEXELEMENT9 const*, _D3DVERTEXELEMENT9 const*, std::allocator<_D3DVERTEXELEMENT9> const&)
_ZNSt6vectorI18_D3DVERTEXELEMENT9SaIS0_EEC1IPKS0_EET_S6_RKS1_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0xc]
	mov edi, [ebp+0x10]
	mov eax, [ebp+0x8]
	mov dword [eax], 0x0
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
	mov eax, edi
	sub eax, ebx
	sar eax, 0x3
	cmp eax, 0x1fffffff
	ja _ZNSt6vectorI18_D3DVERTEXELEMENT9SaIS0_EEC1IPKS0_EET_S6_RKS1__10
	lea esi, [eax*8]
	mov [esp], esi
	call _Znwm
	mov edx, [ebp+0x8]
	mov [edx], eax
	lea edx, [eax+esi]
	mov ecx, [ebp+0x8]
	mov [ecx+0x8], edx
	mov ecx, eax
	cmp ebx, edi
	jz _ZNSt6vectorI18_D3DVERTEXELEMENT9SaIS0_EEC1IPKS0_EET_S6_RKS1__20
_ZNSt6vectorI18_D3DVERTEXELEMENT9SaIS0_EEC1IPKS0_EET_S6_RKS1__40:
	test ecx, ecx
	jz _ZNSt6vectorI18_D3DVERTEXELEMENT9SaIS0_EEC1IPKS0_EET_S6_RKS1__30
	mov eax, [ebx]
	mov edx, [ebx+0x4]
	mov [ecx], eax
	mov [ecx+0x4], edx
_ZNSt6vectorI18_D3DVERTEXELEMENT9SaIS0_EEC1IPKS0_EET_S6_RKS1__30:
	add ebx, 0x8
	add ecx, 0x8
	cmp edi, ebx
	jnz _ZNSt6vectorI18_D3DVERTEXELEMENT9SaIS0_EEC1IPKS0_EET_S6_RKS1__40
_ZNSt6vectorI18_D3DVERTEXELEMENT9SaIS0_EEC1IPKS0_EET_S6_RKS1__20:
	mov eax, [ebp+0x8]
	mov [eax+0x4], ecx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZNSt6vectorI18_D3DVERTEXELEMENT9SaIS0_EEC1IPKS0_EET_S6_RKS1__10:
	call _ZSt17__throw_bad_allocv
	mov ebx, eax
	mov edx, [ebp+0x8]
	mov eax, [edx]
	test eax, eax
	jz _ZNSt6vectorI18_D3DVERTEXELEMENT9SaIS0_EEC1IPKS0_EET_S6_RKS1__50
	mov [esp], eax
	call _ZdlPv
_ZNSt6vectorI18_D3DVERTEXELEMENT9SaIS0_EEC1IPKS0_EET_S6_RKS1__50:
	mov [esp], ebx
	call _Unwind_Resume
	nop


;Initialized global or static variables of CDirect3DVertexDeclaration:
SECTION .data


;Initialized constant data of CDirect3DVertexDeclaration:
SECTION .rdata
_ZZNK26CDirect3DVertexDeclaration14GetNumElementsEPK18_D3DVERTEXELEMENT9E8EndToken: dd 0xff, 0x11, 0x15146, 0x15164, 0x15183, 0x15183, 0x15193, 0x151a3, 0x151b2, 0x15146, 0x15146, 0x15146, 0x151c2, 0x151d2, 0x1523e, 0x1524c, 0x1525a, 0x1529e, 0x1526b, 0x1527c, 0x1528d, 0x1529e
;VTable for CDirect3DVertexDeclaration:
_ZTV26CDirect3DVertexDeclaration: dd 0x0, 0x3b4b20, _ZN26CDirect3DVertexDeclaration14QueryInterfaceERK5_GUIDPPv, _ZN26CDirect3DVertexDeclaration6AddRefEv, _ZN26CDirect3DVertexDeclaration7ReleaseEv, _ZN26CDirect3DVertexDeclaration9GetDeviceEPP16IDirect3DDevice9, _ZN26CDirect3DVertexDeclaration14GetDeclarationEP18_D3DVERTEXELEMENT9Pj, _ZN26CDirect3DVertexDeclarationD1Ev, _ZN26CDirect3DVertexDeclarationD0Ev, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of CDirect3DVertexDeclaration:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

