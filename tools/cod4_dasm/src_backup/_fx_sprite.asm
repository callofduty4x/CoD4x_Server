;Imports of fx_sprite:
	extern _Z19R_GetLocalClientNumv
	extern cgArray
	extern _Z22R_ReserveCodeMeshVertsiPt
	extern _Z24R_ReserveCodeMeshIndicesiPP16r_double_index_t
	extern _Z21R_AddCodeMeshDrawSurfP8MaterialP16r_double_index_tjjjPKc
	extern _Z18R_GetCodeMeshVertst

;Exports of fx_sprite:
	global _GLOBAL__I_spuVertBuffer
	global g_spriteInfo
	global _Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi
	global _Z12FX_SpriteAddP8FxSprite
	global _Z14FX_SpriteBeginv
	global _Z16FX_SpriteGetInfov
	global _Z22FX_SpriteGenerateVertsP18FxGenerateVertsCmd


SECTION .text


;global constructors keyed to spuVertBuffer
_GLOBAL__I_spuVertBuffer:
	push ebp
	mov ebp, esp
	mov edx, 0xffff
	mov eax, 0x1
	pop ebp
	jmp _Z41__static_initialization_and_destruction_0ii


;__static_initialization_and_destruction_0(int, int)
_Z41__static_initialization_and_destruction_0ii:
	push ebp
	mov ebp, esp
	cmp edx, 0xffff
	jz _Z41__static_initialization_and_destruction_0ii_10
_Z41__static_initialization_and_destruction_0ii_20:
	pop ebp
	ret
_Z41__static_initialization_and_destruction_0ii_10:
	sub eax, 0x1
	jnz _Z41__static_initialization_and_destruction_0ii_20
	mov eax, [g_fltMin__uint4]
	mov [g_fltMin], eax
	mov eax, [g_fltMin__uint4+0x4]
	mov [g_fltMin+0x4], eax
	mov eax, [g_fltMin__uint4+0x8]
	mov [g_fltMin+0x8], eax
	mov eax, [g_fltMin__uint4+0xc]
	mov [g_fltMin+0xc], eax
	mov eax, [g_negativeZero__uint4]
	mov [g_negativeZero], eax
	mov eax, [g_negativeZero__uint4+0x4]
	mov [g_negativeZero+0x4], eax
	mov eax, [g_negativeZero__uint4+0x8]
	mov [g_negativeZero+0x8], eax
	mov eax, [g_negativeZero__uint4+0xc]
	mov [g_negativeZero+0xc], eax
	mov eax, [g_inc__uint4]
	mov [g_inc], eax
	mov eax, [g_inc__uint4+0x4]
	mov [g_inc+0x4], eax
	mov eax, [g_inc__uint4+0x8]
	mov [g_inc+0x8], eax
	mov eax, [g_inc__uint4+0xc]
	mov [g_inc+0xc], eax
	mov eax, [g_swizzleXYZW__uint4]
	mov [g_swizzleXYZW], eax
	mov eax, [g_swizzleXYZW__uint4+0x4]
	mov [g_swizzleXYZW+0x4], eax
	mov eax, [g_swizzleXYZW__uint4+0x8]
	mov [g_swizzleXYZW+0x8], eax
	mov eax, [g_swizzleXYZW__uint4+0xc]
	mov [g_swizzleXYZW+0xc], eax
	mov eax, [g_swizzleYXZW__uint4]
	mov [g_swizzleYXZW], eax
	mov eax, [g_swizzleYXZW__uint4+0x4]
	mov [g_swizzleYXZW+0x4], eax
	mov eax, [g_swizzleYXZW__uint4+0x8]
	mov [g_swizzleYXZW+0x8], eax
	mov eax, [g_swizzleYXZW__uint4+0xc]
	mov [g_swizzleYXZW+0xc], eax
	mov eax, [g_swizzleXZYW__uint4]
	mov [g_swizzleXZYW], eax
	mov eax, [g_swizzleXZYW__uint4+0x4]
	mov [g_swizzleXZYW+0x4], eax
	mov eax, [g_swizzleXZYW__uint4+0x8]
	mov [g_swizzleXZYW+0x8], eax
	mov eax, [g_swizzleXZYW__uint4+0xc]
	mov [g_swizzleXZYW+0xc], eax
	mov eax, [g_swizzleYXWZ__uint4]
	mov [g_swizzleYXWZ], eax
	mov eax, [g_swizzleYXWZ__uint4+0x4]
	mov [g_swizzleYXWZ+0x4], eax
	mov eax, [g_swizzleYXWZ__uint4+0x8]
	mov [g_swizzleYXWZ+0x8], eax
	mov eax, [g_swizzleYXWZ__uint4+0xc]
	mov [g_swizzleYXWZ+0xc], eax
	mov eax, [g_swizzleXAZC__uint4]
	mov [g_swizzleXAZC], eax
	mov eax, [g_swizzleXAZC__uint4+0x4]
	mov [g_swizzleXAZC+0x4], eax
	mov eax, [g_swizzleXAZC__uint4+0x8]
	mov [g_swizzleXAZC+0x8], eax
	mov eax, [g_swizzleXAZC__uint4+0xc]
	mov [g_swizzleXAZC+0xc], eax
	mov eax, [g_swizzleYBWD__uint4]
	mov [g_swizzleYBWD], eax
	mov eax, [g_swizzleYBWD__uint4+0x4]
	mov [g_swizzleYBWD+0x4], eax
	mov eax, [g_swizzleYBWD__uint4+0x8]
	mov [g_swizzleYBWD+0x8], eax
	mov eax, [g_swizzleYBWD__uint4+0xc]
	mov [g_swizzleYBWD+0xc], eax
	mov eax, [g_swizzleXYAB__uint4]
	mov [g_swizzleXYAB], eax
	mov eax, [g_swizzleXYAB__uint4+0x4]
	mov [g_swizzleXYAB+0x4], eax
	mov eax, [g_swizzleXYAB__uint4+0x8]
	mov [g_swizzleXYAB+0x8], eax
	mov eax, [g_swizzleXYAB__uint4+0xc]
	mov [g_swizzleXYAB+0xc], eax
	mov eax, [g_swizzleZWCD__uint4]
	mov [g_swizzleZWCD], eax
	mov eax, [g_swizzleZWCD__uint4+0x4]
	mov [g_swizzleZWCD+0x4], eax
	mov eax, [g_swizzleZWCD__uint4+0x8]
	mov [g_swizzleZWCD+0x8], eax
	mov eax, [g_swizzleZWCD__uint4+0xc]
	mov [g_swizzleZWCD+0xc], eax
	mov eax, [g_swizzleXYZA__uint4]
	mov [g_swizzleXYZA], eax
	mov eax, [g_swizzleXYZA__uint4+0x4]
	mov [g_swizzleXYZA+0x4], eax
	mov eax, [g_swizzleXYZA__uint4+0x8]
	mov [g_swizzleXYZA+0x8], eax
	mov eax, [g_swizzleXYZA__uint4+0xc]
	mov [g_swizzleXYZA+0xc], eax
	mov eax, [g_swizzleYZXW__uint4]
	mov [g_swizzleYZXW], eax
	mov eax, [g_swizzleYZXW__uint4+0x4]
	mov [g_swizzleYZXW+0x4], eax
	mov eax, [g_swizzleYZXW__uint4+0x8]
	mov [g_swizzleYZXW+0x8], eax
	mov eax, [g_swizzleYZXW__uint4+0xc]
	mov [g_swizzleYZXW+0xc], eax
	mov eax, [g_swizzleZXYW__uint4]
	mov [g_swizzleZXYW], eax
	mov eax, [g_swizzleZXYW__uint4+0x4]
	mov [g_swizzleZXYW+0x4], eax
	mov eax, [g_swizzleZXYW__uint4+0x8]
	mov [g_swizzleZXYW+0x8], eax
	mov eax, [g_swizzleZXYW__uint4+0xc]
	mov [g_swizzleZXYW+0xc], eax
	mov eax, [g_swizzleWABW__uint4]
	mov [g_swizzleWABW], eax
	mov eax, [g_swizzleWABW__uint4+0x4]
	mov [g_swizzleWABW+0x4], eax
	mov eax, [g_swizzleWABW__uint4+0x8]
	mov [g_swizzleWABW+0x8], eax
	mov eax, [g_swizzleWABW__uint4+0xc]
	mov [g_swizzleWABW+0xc], eax
	mov eax, [g_swizzleZWAW__uint4]
	mov [g_swizzleZWAW], eax
	mov eax, [g_swizzleZWAW__uint4+0x4]
	mov [g_swizzleZWAW+0x4], eax
	mov eax, [g_swizzleZWAW__uint4+0x8]
	mov [g_swizzleZWAW+0x8], eax
	mov eax, [g_swizzleZWAW__uint4+0xc]
	mov [g_swizzleZWAW+0xc], eax
	mov eax, [g_swizzleYZWA__uint4]
	mov [g_swizzleYZWA], eax
	mov eax, [g_swizzleYZWA__uint4+0x4]
	mov [g_swizzleYZWA+0x4], eax
	mov eax, [g_swizzleYZWA__uint4+0x8]
	mov [g_swizzleYZWA+0x8], eax
	mov eax, [g_swizzleYZWA__uint4+0xc]
	mov [g_swizzleYZWA+0xc], eax
	mov eax, [g_swizzleXXXX__uint4]
	mov [g_swizzleXXXX], eax
	mov eax, [g_swizzleXXXX__uint4+0x4]
	mov [g_swizzleXXXX+0x4], eax
	mov eax, [g_swizzleXXXX__uint4+0x8]
	mov [g_swizzleXXXX+0x8], eax
	mov eax, [g_swizzleXXXX__uint4+0xc]
	mov [g_swizzleXXXX+0xc], eax
	mov eax, [g_swizzleYYYY__uint4]
	mov [g_swizzleYYYY], eax
	mov eax, [g_swizzleYYYY__uint4+0x4]
	mov [g_swizzleYYYY+0x4], eax
	mov eax, [g_swizzleYYYY__uint4+0x8]
	mov [g_swizzleYYYY+0x8], eax
	mov eax, [g_swizzleYYYY__uint4+0xc]
	mov [g_swizzleYYYY+0xc], eax
	mov eax, [g_swizzleZZZZ__uint4]
	mov [g_swizzleZZZZ], eax
	mov eax, [g_swizzleZZZZ__uint4+0x4]
	mov [g_swizzleZZZZ+0x4], eax
	mov eax, [g_swizzleZZZZ__uint4+0x8]
	mov [g_swizzleZZZZ+0x8], eax
	mov eax, [g_swizzleZZZZ__uint4+0xc]
	mov [g_swizzleZZZZ+0xc], eax
	mov eax, [g_swizzleWWWW__uint4]
	mov [g_swizzleWWWW], eax
	mov eax, [g_swizzleWWWW__uint4+0x4]
	mov [g_swizzleWWWW+0x4], eax
	mov eax, [g_swizzleWWWW__uint4+0x8]
	mov [g_swizzleWWWW+0x8], eax
	mov eax, [g_swizzleWWWW__uint4+0xc]
	mov [g_swizzleWWWW+0xc], eax
	mov eax, [g_selectX__uint4]
	mov [g_selectX], eax
	mov eax, [g_selectX__uint4+0x4]
	mov [g_selectX+0x4], eax
	mov eax, [g_selectX__uint4+0x8]
	mov [g_selectX+0x8], eax
	mov eax, [g_selectX__uint4+0xc]
	mov [g_selectX+0xc], eax
	mov eax, [g_selectY__uint4]
	mov [g_selectY], eax
	mov eax, [g_selectY__uint4+0x4]
	mov [g_selectY+0x4], eax
	mov eax, [g_selectY__uint4+0x8]
	mov [g_selectY+0x8], eax
	mov eax, [g_selectY__uint4+0xc]
	mov [g_selectY+0xc], eax
	mov eax, [g_selectZ__uint4]
	mov [g_selectZ], eax
	mov eax, [g_selectZ__uint4+0x4]
	mov [g_selectZ+0x4], eax
	mov eax, [g_selectZ__uint4+0x8]
	mov [g_selectZ+0x8], eax
	mov eax, [g_selectZ__uint4+0xc]
	mov [g_selectZ+0xc], eax
	mov eax, [g_selectW__uint4]
	mov [g_selectW], eax
	mov eax, [g_selectW__uint4+0x4]
	mov [g_selectW+0x4], eax
	mov eax, [g_selectW__uint4+0x8]
	mov [g_selectW+0x8], eax
	mov eax, [g_selectW__uint4+0xc]
	mov [g_selectW+0xc], eax
	mov eax, [g_keepYZW__uint4]
	mov [g_keepYZW], eax
	mov eax, [g_keepYZW__uint4+0x4]
	mov [g_keepYZW+0x4], eax
	mov eax, [g_keepYZW__uint4+0x8]
	mov [g_keepYZW+0x8], eax
	mov eax, [g_keepYZW__uint4+0xc]
	mov [g_keepYZW+0xc], eax
	mov eax, [g_keepXZW__uint4]
	mov [g_keepXZW], eax
	mov eax, [g_keepXZW__uint4+0x4]
	mov [g_keepXZW+0x4], eax
	mov eax, [g_keepXZW__uint4+0x8]
	mov [g_keepXZW+0x8], eax
	mov eax, [g_keepXZW__uint4+0xc]
	mov [g_keepXZW+0xc], eax
	mov eax, [g_keepXYW__uint4]
	mov [g_keepXYW], eax
	mov eax, [g_keepXYW__uint4+0x4]
	mov [g_keepXYW+0x4], eax
	mov eax, [g_keepXYW__uint4+0x8]
	mov [g_keepXYW+0x8], eax
	mov eax, [g_keepXYW__uint4+0xc]
	mov [g_keepXYW+0xc], eax
	mov eax, [g_keepXYZ__uint4]
	mov [g_keepXYZ], eax
	mov eax, [g_keepXYZ__uint4+0x4]
	mov [g_keepXYZ+0x4], eax
	mov eax, [g_keepXYZ__uint4+0x8]
	mov [g_keepXYZ+0x8], eax
	mov eax, [g_keepXYZ__uint4+0xc]
	mov [g_keepXYZ+0xc], eax
	mov eax, [g_keepXY__uint4]
	mov [g_keepXY], eax
	mov eax, [g_keepXY__uint4+0x4]
	mov [g_keepXY+0x4], eax
	mov eax, [g_keepXY__uint4+0x8]
	mov [g_keepXY+0x8], eax
	mov eax, [g_keepXY__uint4+0xc]
	mov [g_keepXY+0xc], eax
	mov eax, [g_keepZW__uint4]
	mov [g_keepZW], eax
	mov eax, [g_keepZW__uint4+0x4]
	mov [g_keepZW+0x4], eax
	mov eax, [g_keepZW__uint4+0x8]
	mov [g_keepZW+0x8], eax
	mov eax, [g_keepZW__uint4+0xc]
	mov [g_keepZW+0xc], eax
	mov eax, [g_keepX__uint4]
	mov [g_keepX], eax
	mov eax, [g_keepX__uint4+0x4]
	mov [g_keepX+0x4], eax
	mov eax, [g_keepX__uint4+0x8]
	mov [g_keepX+0x8], eax
	mov eax, [g_keepX__uint4+0xc]
	mov [g_keepX+0xc], eax
	mov eax, [g_keepZ__uint4]
	mov [g_keepZ], eax
	mov eax, [g_keepZ__uint4+0x4]
	mov [g_keepZ+0x4], eax
	mov eax, [g_keepZ__uint4+0x8]
	mov [g_keepZ+0x8], eax
	mov eax, [g_keepZ__uint4+0xc]
	mov [g_keepZ+0xc], eax
	pop ebp
	ret


;FX_BuildSpriteCodeMeshVerts(Material*, float const*, float, unsigned char const*, int)
_Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	xor edi, edi
	mov dword [ebp-0x74], 0x0
	mov [ebp-0x78], eax
	movss [ebp-0x7c], xmm0
	mov esi, ecx
	movss xmm0, dword [edx]
	movss [ebp-0x68], xmm0
	movss xmm1, dword [edx+0x4]
	movss [ebp-0x6c], xmm1
	movss xmm6, dword [edx+0x8]
	movss [ebp-0x70], xmm6
	test byte [ebp+0x8], 0x1
	jz _Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_10
	addss xmm6, [ebp-0x7c]
	movss [ebp-0x70], xmm6
_Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_10:
	call _Z19R_GetLocalClientNumv
	mov ebx, cgArray
	movss xmm0, dword [ebp-0x7c]
	mulss xmm0, [ebx+0x492f8]
	movss [ebp-0x5c], xmm0
	movss xmm1, dword [ebp-0x7c]
	mulss xmm1, [ebx+0x492fc]
	movss [ebp-0x60], xmm1
	movss xmm6, dword [ebp-0x7c]
	mulss xmm6, [ebx+0x49300]
	movss [ebp-0x64], xmm6
	call _Z19R_GetLocalClientNumv
	movss xmm0, dword [ebp-0x7c]
	mulss xmm0, [ebx+0x49304]
	movss [ebp-0x50], xmm0
	movss xmm1, dword [ebp-0x7c]
	mulss xmm1, [ebx+0x49308]
	movss [ebp-0x54], xmm1
	movss xmm6, dword [ebp-0x7c]
	mulss xmm6, [ebx+0x4930c]
	movss [ebp-0x58], xmm6
	call _Z19R_GetLocalClientNumv
	lea eax, [ebp-0x1a]
	mov [esp+0x4], eax
	mov dword [esp], 0x4
	call _Z22R_ReserveCodeMeshVertsiPt
	test al, al
	jnz _Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_20
_Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_30:
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_20:
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov dword [esp], 0x6
	call _Z24R_ReserveCodeMeshIndicesiPP16r_double_index_t
	test al, al
	jz _Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_30
	movzx ecx, word [ebp-0x1a]
	mov edx, [ebp-0x20]
	lea eax, [ecx+0x1]
	mov [edx+0x2], ax
	mov [edx], cx
	movzx edx, word [ebp-0x1a]
	add edx, 0x3
	mov eax, [ebp-0x20]
	mov [eax+0x6], dx
	mov [eax+0x4], dx
	movzx eax, word [ebp-0x1a]
	mov ecx, [ebp-0x20]
	lea edx, [eax+0x2]
	mov [ecx+0xa], dx
	add eax, 0x1
	mov [ecx+0x8], ax
	mov dword [esp+0x14], _cstring_null
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x6
	mov eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov eax, [ebp-0x78]
	mov [esp], eax
	call _Z21R_AddCodeMeshDrawSurfP8MaterialP16r_double_index_tjjjPKc
	movss xmm0, dword [ebp-0x5c]
	addss xmm0, [ebp-0x50]
	movss [ebp-0x44], xmm0
	movss xmm1, dword [ebp-0x60]
	addss xmm1, [ebp-0x54]
	movss [ebp-0x48], xmm1
	movss xmm6, dword [ebp-0x64]
	addss xmm6, [ebp-0x58]
	movss [ebp-0x4c], xmm6
	movss xmm0, dword [ebp-0x5c]
	subss xmm0, [ebp-0x50]
	movss [ebp-0x3c], xmm0
	movss xmm1, dword [ebp-0x60]
	subss xmm1, [ebp-0x54]
	movss [ebp-0x40], xmm1
	movss xmm5, dword [ebp-0x64]
	subss xmm5, [ebp-0x58]
	movzx edx, byte [esi]
	shl edx, 0x10
	movzx eax, byte [esi+0x1]
	shl eax, 0x8
	or edx, eax
	movzx eax, byte [esi+0x2]
	or edx, eax
	movzx eax, byte [esi+0x3]
	shl eax, 0x18
	or edx, eax
	mov [ebp-0x24], edx
	movss xmm0, dword [ebx+0x492ec]
	movss [ebp-0x38], xmm0
	movss xmm1, dword [ebx+0x492f0]
	movss [ebp-0x34], xmm1
	movss xmm2, dword [_data16_80000000]
	movss xmm4, dword [_float_127_00000000]
	mulss xmm0, xmm4
	movss xmm3, dword [_float_127_50000000]
	movaps xmm6, xmm3
	subss xmm6, xmm0
	cvttss2si eax, xmm6
	mov edx, edi
	mov dl, al
	mulss xmm1, xmm4
	movaps xmm0, xmm3
	subss xmm0, xmm1
	cvttss2si eax, xmm0
	mov dh, al
	mov edi, edx
	movss xmm0, dword [ebx+0x492f4]
	mulss xmm0, xmm4
	movaps xmm1, xmm3
	subss xmm1, xmm0
	cvttss2si eax, xmm1
	movzx eax, al
	shl eax, 0x10
	and edi, 0xff00ffff
	or edi, eax
	and edi, 0xffffff
	or edi, 0x3f000000
	movss xmm0, dword [ebp-0x60]
	xorps xmm0, xmm2
	movss [ebp-0x34], xmm0
	movss xmm6, dword [ebp-0x64]
	xorps xmm2, xmm6
	movss [ebp-0x30], xmm2
	mov dword [ebp-0x2c], 0x80000000
	movss xmm1, dword [ebp-0x5c]
	mulss xmm1, xmm4
	movss [ebp-0x5c], xmm1
	movaps xmm1, xmm3
	subss xmm1, [ebp-0x5c]
	cvttss2si eax, xmm1
	mov [ebp-0x74], al
	mulss xmm0, xmm4
	addss xmm0, xmm3
	cvttss2si eax, xmm0
	mov edx, [ebp-0x74]
	mov dh, al
	mulss xmm2, xmm4
	addss xmm2, xmm3
	cvttss2si eax, xmm2
	movzx eax, al
	shl eax, 0x10
	and edx, 0xff00ffff
	or edx, eax
	and edx, 0xffffff
	or edx, 0x3f000000
	mov [ebp-0x74], edx
	mov [ebp-0x38], edx
	movzx eax, word [ebp-0x1a]
	mov [esp], eax
	movss [ebp-0x98], xmm5
	call _Z18R_GetCodeMeshVertst
	mov esi, eax
	movss xmm0, dword [ebp-0x68]
	addss xmm0, [ebp-0x44]
	movss [eax], xmm0
	movss xmm0, dword [ebp-0x6c]
	addss xmm0, [ebp-0x48]
	movss [eax+0x4], xmm0
	movss xmm0, dword [ebp-0x4c]
	addss xmm0, [ebp-0x70]
	movss [eax+0x8], xmm0
	mov dword [eax+0xc], 0x3f800000
	mov [eax+0x18], edi
	mov eax, [ebp-0x24]
	mov [esi+0x10], eax
	mov dword [ebp-0x28], 0x0
	mov eax, [ebp-0x28]
	mov edx, eax
	sar edx, 0x10
	and edx, 0xc000
	lea eax, [eax+eax-0x80000000]
	sar eax, 0xe
	cmp eax, 0x3ffe
	movss xmm5, dword [ebp-0x98]
	jg _Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_40
	cmp eax, 0xffffc000
	jg _Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_50
	xor eax, eax
_Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_130:
	mov ecx, edx
	or ecx, eax
	mov dword [ebp-0x28], 0x0
	mov eax, [ebp-0x28]
	mov edx, eax
	sar edx, 0x10
	and edx, 0xc000
	lea eax, [eax+eax-0x80000000]
	sar eax, 0xe
	cmp eax, 0x3ffe
	jle _Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_60
	mov eax, 0x3fff
_Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_270:
	or edx, eax
	shl ecx, 0x10
	lea eax, [edx+ecx]
	mov [esi+0x14], eax
	mov eax, [ebp-0x74]
	mov [esi+0x1c], eax
	lea ecx, [esi+0x20]
	movss xmm0, dword [ebp-0x68]
	subss xmm0, [ebp-0x3c]
	movss [esi+0x20], xmm0
	movss xmm0, dword [ebp-0x6c]
	subss xmm0, [ebp-0x40]
	movss [ecx+0x4], xmm0
	movss xmm0, dword [ebp-0x70]
	subss xmm0, xmm5
	movss [ecx+0x8], xmm0
	mov dword [ecx+0xc], 0x3f800000
	mov [ecx+0x18], edi
	mov eax, [ebp-0x24]
	mov [ecx+0x10], eax
	mov dword [ebp-0x28], 0x3f800000
	mov eax, [ebp-0x28]
	mov edx, eax
	sar edx, 0x10
	and edx, 0xc000
	lea eax, [eax+eax-0x80000000]
	sar eax, 0xe
	cmp eax, 0x3ffe
	jle _Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_70
	mov eax, 0x3fff
_Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_250:
	mov ebx, edx
	or ebx, eax
	mov dword [ebp-0x28], 0x0
	mov eax, [ebp-0x28]
	mov edx, eax
	sar edx, 0x10
	and edx, 0xc000
	lea eax, [eax+eax-0x80000000]
	sar eax, 0xe
	cmp eax, 0x3ffe
	jle _Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_80
	mov eax, 0x3fff
_Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_230:
	or edx, eax
	shl ebx, 0x10
	lea eax, [edx+ebx]
	mov [ecx+0x14], eax
	mov edx, [ebp-0x74]
	mov [ecx+0x1c], edx
	lea ecx, [esi+0x40]
	movss xmm0, dword [ebp-0x68]
	subss xmm0, [ebp-0x44]
	movss [esi+0x40], xmm0
	movss xmm0, dword [ebp-0x6c]
	subss xmm0, [ebp-0x48]
	movss [ecx+0x4], xmm0
	movss xmm0, dword [ebp-0x70]
	subss xmm0, [ebp-0x4c]
	movss [ecx+0x8], xmm0
	mov dword [ecx+0xc], 0x3f800000
	mov [ecx+0x18], edi
	mov eax, [ebp-0x24]
	mov [ecx+0x10], eax
	mov dword [ebp-0x28], 0x3f800000
	mov eax, [ebp-0x28]
	mov edx, eax
	sar edx, 0x10
	and edx, 0xc000
	lea eax, [eax+eax-0x80000000]
	sar eax, 0xe
	cmp eax, 0x3ffe
	jle _Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_90
	mov eax, 0x3fff
_Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_210:
	mov ebx, edx
	or ebx, eax
	mov dword [ebp-0x28], 0x3f800000
	mov eax, [ebp-0x28]
	mov edx, eax
	sar edx, 0x10
	and edx, 0xc000
	lea eax, [eax+eax-0x80000000]
	sar eax, 0xe
	cmp eax, 0x3ffe
	jle _Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_100
	mov eax, 0x3fff
_Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_190:
	or edx, eax
	shl ebx, 0x10
	lea eax, [edx+ebx]
	mov [ecx+0x14], eax
	mov eax, [ebp-0x74]
	mov [ecx+0x1c], eax
	lea ecx, [esi+0x60]
	movss xmm0, dword [ebp-0x68]
	addss xmm0, [ebp-0x3c]
	movss [esi+0x60], xmm0
	movss xmm1, dword [ebp-0x6c]
	addss xmm1, [ebp-0x40]
	movss [ecx+0x4], xmm1
	addss xmm5, [ebp-0x70]
	movss [ecx+0x8], xmm5
	mov dword [ecx+0xc], 0x3f800000
	mov [ecx+0x18], edi
	mov eax, [ebp-0x24]
	mov [ecx+0x10], eax
	mov dword [ebp-0x28], 0x0
	mov eax, [ebp-0x28]
	mov edx, eax
	sar edx, 0x10
	and edx, 0xc000
	lea eax, [eax+eax-0x80000000]
	sar eax, 0xe
	cmp eax, 0x3ffe
	jle _Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_110
	mov eax, 0x3fff
_Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_170:
	mov ebx, edx
	or ebx, eax
	mov dword [ebp-0x28], 0x3f800000
	mov eax, [ebp-0x28]
	mov edx, eax
	sar edx, 0x10
	and edx, 0xc000
	lea eax, [eax+eax-0x80000000]
	sar eax, 0xe
	cmp eax, 0x3ffe
	jle _Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_120
	mov eax, 0x3fff
_Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_150:
	or edx, eax
	shl ebx, 0x10
	lea eax, [edx+ebx]
	mov [ecx+0x14], eax
	mov eax, [ebp-0x74]
	mov [ecx+0x1c], eax
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_40:
	mov eax, 0x3fff
	jmp _Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_130
_Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_120:
	cmp eax, 0xffffc000
	jg _Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_140
	xor eax, eax
	jmp _Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_150
_Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_110:
	cmp eax, 0xffffc000
	jg _Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_160
	xor eax, eax
	jmp _Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_170
_Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_100:
	cmp eax, 0xffffc000
	jg _Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_180
	xor eax, eax
	jmp _Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_190
_Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_90:
	cmp eax, 0xffffc000
	jg _Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_200
	xor eax, eax
	jmp _Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_210
_Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_80:
	cmp eax, 0xffffc000
	jg _Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_220
	xor eax, eax
	jmp _Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_230
_Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_70:
	cmp eax, 0xffffc000
	jg _Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_240
	xor eax, eax
	jmp _Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_250
_Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_60:
	cmp eax, 0xffffc000
	jg _Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_260
	xor eax, eax
	jmp _Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_270
_Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_50:
	and eax, 0x3fff
	jmp _Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_130
_Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_260:
	and eax, 0x3fff
	jmp _Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_270
_Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_240:
	and eax, 0x3fff
	jmp _Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_250
_Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_220:
	and eax, 0x3fff
	jmp _Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_230
_Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_200:
	and eax, 0x3fff
	jmp _Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_210
_Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_180:
	and eax, 0x3fff
	jmp _Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_190
_Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_160:
	and eax, 0x3fff
	jmp _Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_170
_Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_140:
	and eax, 0x3fff
	jmp _Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi_150
	nop


;FX_SpriteAdd(FxSprite*)
_Z12FX_SpriteAddP8FxSprite:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov ebx, [ebp+0x8]
	mov esi, [g_spriteInfo]
	cmp esi, 0x60
	jz _Z12FX_SpriteAddP8FxSprite_10
	mov ecx, g_spriteInfo+0x10
	mov edx, esi
	shl edx, 0x5
	mov eax, [ebx]
	mov [edx+g_spriteInfo+0x10], eax
	mov eax, [ebx+0x4]
	mov [edx+ecx+0x4], eax
	mov eax, [ebx+0x8]
	mov [edx+ecx+0x8], eax
	mov eax, [ebx+0xc]
	mov [edx+ecx+0xc], eax
	mov eax, [ebx+0x10]
	mov [edx+ecx+0x10], eax
	mov eax, [ebx+0x14]
	mov [edx+ecx+0x14], eax
	mov eax, [ebx+0x18]
	mov [edx+ecx+0x18], eax
	mov eax, [ebx+0x1c]
	mov [edx+ecx+0x1c], eax
	lea eax, [esi+0x1]
	mov [g_spriteInfo], eax
_Z12FX_SpriteAddP8FxSprite_10:
	pop ebx
	pop esi
	pop ebp
	ret


;FX_SpriteBegin()
_Z14FX_SpriteBeginv:
	push ebp
	mov ebp, esp
	mov dword [g_spriteInfo], 0x0
	pop ebp
	ret
	nop


;FX_SpriteGetInfo()
_Z16FX_SpriteGetInfov:
	push ebp
	mov ebp, esp
	mov eax, g_spriteInfo
	pop ebp
	ret


;FX_SpriteGenerateVerts(FxGenerateVertsCmd*)
_Z22FX_SpriteGenerateVertsP18FxGenerateVertsCmd:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov eax, [ebp+0x8]
	mov eax, [eax+0xc]
	mov [ebp-0x38], eax
	mov edx, [eax]
	test edx, edx
	jle _Z22FX_SpriteGenerateVertsP18FxGenerateVertsCmd_10
	mov dword [ebp-0x3c], 0x0
	mov edx, [ebp+0x8]
	add edx, 0x14
	mov [ebp-0x2c], edx
	mov edi, [ebp+0x8]
	add edi, 0x20
	mov ebx, eax
	add ebx, 0x10
	jmp _Z22FX_SpriteGenerateVertsP18FxGenerateVertsCmd_20
_Z22FX_SpriteGenerateVertsP18FxGenerateVertsCmd_40:
	movss xmm2, dword [ebx+0x14]
	mov eax, [ebx]
	mov [ebp-0x30], eax
	lea edx, [ebx+0x4]
	mov [ebp-0x28], edx
	lea eax, [ebx+0x10]
	mov [ebp-0x34], eax
	movss xmm1, dword [ebx+0x4]
	mov edx, [ebp+0x8]
	subss xmm1, [edx+0x14]
	mulss xmm1, [edx+0x20]
	movss xmm0, dword [ebx+0x8]
	mov eax, [ebp-0x2c]
	subss xmm0, [eax+0x4]
	mulss xmm0, [edi+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [ebx+0xc]
	subss xmm0, [eax+0x8]
	mulss xmm0, [edi+0x8]
	addss xmm1, xmm0
	cvtss2sd xmm0, xmm1
	movsd xmm3, qword [_double_0_00000100]
	ucomisd xmm3, xmm0
	jbe _Z22FX_SpriteGenerateVertsP18FxGenerateVertsCmd_30
_Z22FX_SpriteGenerateVertsP18FxGenerateVertsCmd_60:
	add dword [ebp-0x3c], 0x1
	add ebx, 0x20
	mov eax, [ebp-0x3c]
	mov edx, [ebp-0x38]
	cmp eax, [edx]
	jge _Z22FX_SpriteGenerateVertsP18FxGenerateVertsCmd_10
_Z22FX_SpriteGenerateVertsP18FxGenerateVertsCmd_20:
	mov esi, [ebx+0x1c]
	test esi, 0x2
	jnz _Z22FX_SpriteGenerateVertsP18FxGenerateVertsCmd_40
	movss xmm2, dword [ebx+0x18]
	movss xmm3, dword [ebx+0x14]
	mov edx, [ebx]
	mov [ebp-0x20], edx
	lea eax, [ebx+0x4]
	mov [ebp-0x1c], eax
	lea edx, [ebx+0x10]
	mov [ebp-0x24], edx
	ucomiss xmm2, [_float_0_00000000]
	jbe _Z22FX_SpriteGenerateVertsP18FxGenerateVertsCmd_50
	movss xmm1, dword [ebx+0x4]
	mov eax, [ebp+0x8]
	subss xmm1, [eax+0x14]
	mulss xmm1, [eax+0x20]
	movss xmm0, dword [ebx+0x8]
	mov edx, [ebp-0x2c]
	subss xmm0, [edx+0x4]
	mulss xmm0, [edi+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [ebx+0xc]
	subss xmm0, [edx+0x8]
	mulss xmm0, [edi+0x8]
	addss xmm1, xmm0
	cvtss2sd xmm0, xmm1
	movsd xmm4, qword [_double_0_00000100]
	ucomisd xmm4, xmm0
	ja _Z22FX_SpriteGenerateVertsP18FxGenerateVertsCmd_60
	movss [ebp-0x58], xmm1
	movss [ebp-0x68], xmm2
	movss [ebp-0x78], xmm3
	call _Z19R_GetLocalClientNumv
	movss xmm3, dword [ebp-0x78]
	movaps xmm0, xmm3
	mov eax, cgArray
	divss xmm0, dword [eax+0x492dc]
	movss xmm1, dword [ebp-0x58]
	addss xmm1, xmm1
	divss xmm0, xmm1
	movss xmm2, dword [ebp-0x68]
	ucomiss xmm2, xmm0
	ja _Z22FX_SpriteGenerateVertsP18FxGenerateVertsCmd_70
	mov ecx, [ebp-0x24]
_Z22FX_SpriteGenerateVertsP18FxGenerateVertsCmd_80:
	mov [esp], esi
	movaps xmm0, xmm3
	mov edx, [ebp-0x1c]
	mov eax, [ebp-0x20]
	call _Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi
	add dword [ebp-0x3c], 0x1
	add ebx, 0x20
	mov eax, [ebp-0x3c]
	mov edx, [ebp-0x38]
	cmp eax, [edx]
	jl _Z22FX_SpriteGenerateVertsP18FxGenerateVertsCmd_20
_Z22FX_SpriteGenerateVertsP18FxGenerateVertsCmd_10:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22FX_SpriteGenerateVertsP18FxGenerateVertsCmd_30:
	movss [ebp-0x58], xmm1
	movss [ebp-0x68], xmm2
	call _Z19R_GetLocalClientNumv
	movss xmm1, dword [ebp-0x58]
	movss xmm2, dword [ebp-0x68]
	mulss xmm2, xmm1
	addss xmm2, xmm2
	mov eax, cgArray
	mulss xmm2, [eax+0x492dc]
	mov [esp], esi
	mov ecx, [ebp-0x34]
	movaps xmm0, xmm2
	mov edx, [ebp-0x28]
	mov eax, [ebp-0x30]
	call _Z27FX_BuildSpriteCodeMeshVertsP8MaterialPKffPKhi
	jmp _Z22FX_SpriteGenerateVertsP18FxGenerateVertsCmd_60
_Z22FX_SpriteGenerateVertsP18FxGenerateVertsCmd_70:
	divss xmm2, xmm0
	mulss xmm3, xmm2
	mov ecx, [ebp-0x24]
	jmp _Z22FX_SpriteGenerateVertsP18FxGenerateVertsCmd_80
_Z22FX_SpriteGenerateVertsP18FxGenerateVertsCmd_50:
	mov ecx, edx
	jmp _Z22FX_SpriteGenerateVertsP18FxGenerateVertsCmd_80


;Initialized global or static variables of fx_sprite:
SECTION .data


;Initialized constant data of fx_sprite:
SECTION .rdata
g_keepZ__uint4: dd 0x0, 0x0, 0xffffffff, 0x0
g_keepX__uint4: dd 0xffffffff, 0x0, 0x0, 0x0
g_keepZW__uint4: dd 0x0, 0x0, 0xffffffff, 0xffffffff
g_keepXY__uint4: dd 0xffffffff, 0xffffffff, 0x0, 0x0
g_keepXYZ__uint4: dd 0xffffffff, 0xffffffff, 0xffffffff, 0x0
g_keepXYW__uint4: dd 0xffffffff, 0xffffffff, 0x0, 0xffffffff
g_keepXZW__uint4: dd 0xffffffff, 0x0, 0xffffffff, 0xffffffff
g_keepYZW__uint4: dd 0x0, 0xffffffff, 0xffffffff, 0xffffffff
g_selectW__uint4: dd 0x10203, 0x4050607, 0x8090a0b, 0x1c1d1e1f
g_selectZ__uint4: dd 0x10203, 0x4050607, 0x18191a1b, 0xc0d0e0f
g_selectY__uint4: dd 0x10203, 0x14151617, 0x8090a0b, 0xc0d0e0f
g_selectX__uint4: dd 0x10111213, 0x4050607, 0x8090a0b, 0xc0d0e0f
g_swizzleWWWW__uint4: dd 0xc0d0e0f, 0xc0d0e0f, 0xc0d0e0f, 0xc0d0e0f
g_swizzleZZZZ__uint4: dd 0x8090a0b, 0x8090a0b, 0x8090a0b, 0x8090a0b
g_swizzleYYYY__uint4: dd 0x4050607, 0x4050607, 0x4050607, 0x4050607
g_swizzleXXXX__uint4: dd 0x10203, 0x10203, 0x10203, 0x10203
g_swizzleYZWA__uint4: dd 0x4050607, 0x8090a0b, 0xc0d0e0f, 0x10111213
g_swizzleZWAW__uint4: dd 0x8090a0b, 0xc0d0e0f, 0x10111213, 0xc0d0e0f
g_swizzleWABW__uint4: dd 0xc0d0e0f, 0x10111213, 0x14151617, 0xc0d0e0f
g_swizzleZXYW__uint4: dd 0x8090a0b, 0x10203, 0x4050607, 0xc0d0e0f
g_swizzleYZXW__uint4: dd 0x4050607, 0x8090a0b, 0x10203, 0xc0d0e0f
g_swizzleXYZA__uint4: dd 0x10203, 0x4050607, 0x8090a0b, 0x10111213
g_swizzleZWCD__uint4: dd 0x8090a0b, 0xc0d0e0f, 0x18191a1b, 0x1c1d1e1f
g_swizzleXYAB__uint4: dd 0x10203, 0x4050607, 0x10111213, 0x14151617
g_swizzleYBWD__uint4: dd 0x4050607, 0x14151617, 0xc0d0e0f, 0x1c1d1e1f
g_swizzleXAZC__uint4: dd 0x10203, 0x10111213, 0x8090a0b, 0x18191a1b
g_swizzleYXWZ__uint4: dd 0x4050607, 0x10203, 0xc0d0e0f, 0x8090a0b
g_swizzleXZYW__uint4: dd 0x10203, 0x8090a0b, 0x4050607, 0xc0d0e0f
g_swizzleYXZW__uint4: dd 0x4050607, 0x10203, 0x8090a0b, 0xc0d0e0f
g_swizzleXYZW__uint4: dd 0x10203, 0x4050607, 0x8090a0b, 0xc0d0e0f
g_inc__uint4: dd 0x1, 0x1, 0x1, 0x1
g_negativeZero__uint4: dd 0x80000000, 0x80000000, 0x80000000, 0x80000000
g_fltMin__uint4: dd 0x800000, 0x800000, 0x800000, 0x800000, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of fx_sprite:
SECTION .bss
g_keepZ: resb 0x10
g_keepX: resb 0x10
g_keepZW: resb 0x10
g_keepXY: resb 0x10
g_keepXYZ: resb 0x10
g_keepXYW: resb 0x10
g_keepXZW: resb 0x10
g_keepYZW: resb 0x10
g_selectW: resb 0x10
g_selectZ: resb 0x10
g_selectY: resb 0x10
g_selectX: resb 0x10
g_swizzleWWWW: resb 0x10
g_swizzleZZZZ: resb 0x10
g_swizzleYYYY: resb 0x10
g_swizzleXXXX: resb 0x10
g_swizzleYZWA: resb 0x10
g_swizzleZWAW: resb 0x10
g_swizzleWABW: resb 0x10
g_swizzleZXYW: resb 0x10
g_swizzleYZXW: resb 0x10
g_swizzleXYZA: resb 0x10
g_swizzleZWCD: resb 0x10
g_swizzleXYAB: resb 0x10
g_swizzleYBWD: resb 0x10
g_swizzleXAZC: resb 0x10
g_swizzleYXWZ: resb 0x10
g_swizzleXZYW: resb 0x10
g_swizzleYXZW: resb 0x10
g_swizzleXYZW: resb 0x10
g_inc: resb 0x10
g_negativeZero: resb 0x10
g_fltMin: resb 0x80
g_spriteInfo: resb 0xc80


;All cstrings:
SECTION .rdata
_cstring_null:		db 0



;All constant floats and doubles:
SECTION .rdata
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_127_00000000:		dd 0x42fe0000	; 127
_float_127_50000000:		dd 0x42ff0000	; 127.5
_double_0_00000100:		dq 0x3eb0c6f7a0b5ed8d	; 1e-06
_float_0_00000000:		dd 0x0	; 0

