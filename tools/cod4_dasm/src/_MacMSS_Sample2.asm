;Imports of MacMSS_Sample2:
	extern _ZNK12CSoundEngine21GetListenerFaceVectorER11D3DXVECTOR3
	extern _ZNK12CSoundEngine19GetListenerUpVectorER11D3DXVECTOR3
	extern _ZN12CSoundEngine22get_3D_distance_factorEv
	extern acosf

;Exports of MacMSS_Sample2:
	global _ZN12CSampleSound21Calculate3DAttributesERfS0_S0_


SECTION .text


;CSampleSound::Calculate3DAttributes(float&, float&, float&)
_ZN12CSampleSound21Calculate3DAttributesERfS0_S0_:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0xd4
	mov ebx, [ebp+0x8]
	movss xmm0, dword [ebx+0xa4]
	movss [ebp-0x4c], xmm0
	movss xmm1, dword [ebx+0xa0]
	movss [ebp-0x48], xmm1
	movss xmm7, dword [ebx+0x9c]
	movss [ebp-0x44], xmm7
	lea eax, [ebp-0x14]
	mov [esp+0x4], eax
	mov eax, [ebx+0x4]
	mov [esp], eax
	call _ZNK12CSoundEngine21GetListenerFaceVectorER11D3DXVECTOR3
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov eax, [ebx+0x4]
	mov [esp], eax
	call _ZNK12CSoundEngine19GetListenerUpVectorER11D3DXVECTOR3
	movss xmm2, dword [ebp-0x10]
	movss xmm1, dword [ebp-0x18]
	movss xmm4, dword [ebp-0xc]
	movss xmm5, dword [ebp-0x1c]
	movaps xmm6, xmm2
	mulss xmm6, xmm1
	movaps xmm0, xmm4
	mulss xmm0, xmm5
	subss xmm6, xmm0
	movss xmm3, dword [ebp-0x20]
	movss xmm0, dword [ebp-0x14]
	mulss xmm4, xmm3
	mulss xmm1, xmm0
	subss xmm4, xmm1
	mulss xmm5, xmm0
	mulss xmm2, xmm3
	subss xmm5, xmm2
	movaps xmm1, xmm6
	mulss xmm1, xmm6
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	addss xmm1, xmm0
	movaps xmm0, xmm5
	mulss xmm0, xmm5
	addss xmm1, xmm0
	pxor xmm2, xmm2
	ucomiss xmm1, xmm2
	jp _ZN12CSampleSound21Calculate3DAttributesERfS0_S0__10
	jnz _ZN12CSampleSound21Calculate3DAttributesERfS0_S0__10
_ZN12CSampleSound21Calculate3DAttributesERfS0_S0__190:
	movss [ebp-0x40], xmm5
	movss [ebp-0x3c], xmm4
	movaps xmm7, xmm6
_ZN12CSampleSound21Calculate3DAttributesERfS0_S0__200:
	movss xmm0, dword [ebp-0x44]
	mulss xmm0, xmm0
	movss xmm1, dword [ebp-0x48]
	mulss xmm1, xmm1
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x4c]
	mulss xmm1, xmm1
	addss xmm0, xmm1
	sqrtss xmm0, xmm0
	mov eax, [ebx+0x4]
	mov [esp], eax
	movss [ebp-0x68], xmm0
	movss [ebp-0xb8], xmm7
	call _ZN12CSoundEngine22get_3D_distance_factorEv
	fstp dword [ebp-0xbc]
	movss xmm1, dword [ebp-0xbc]
	movss xmm0, dword [ebp-0x68]
	mulss xmm1, xmm0
	movss xmm0, dword [ebx+0xc4]
	movss [ebp-0x2c], xmm0
	ucomiss xmm0, xmm1
	movss xmm7, dword [ebp-0xb8]
	ja _ZN12CSampleSound21Calculate3DAttributesERfS0_S0__20
	ucomiss xmm1, [ebx+0xc0]
	ja _ZN12CSampleSound21Calculate3DAttributesERfS0_S0__30
	movss [ebp-0x2c], xmm1
	pxor xmm0, xmm0
	ucomiss xmm1, xmm0
	jbe _ZN12CSampleSound21Calculate3DAttributesERfS0_S0__40
_ZN12CSampleSound21Calculate3DAttributesERfS0_S0__140:
	movss xmm0, dword [ebp-0xc]
	movss [ebp-0x38], xmm0
	movss xmm1, dword [ebp-0x10]
	movss [ebp-0x34], xmm1
	movss xmm5, dword [ebp-0x14]
	movaps xmm1, xmm5
	mulss xmm1, xmm5
	movss xmm0, dword [ebp-0x34]
	mulss xmm0, xmm0
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0x38]
	mulss xmm0, xmm0
	addss xmm1, xmm0
	pxor xmm0, xmm0
	ucomiss xmm1, xmm0
	jp _ZN12CSampleSound21Calculate3DAttributesERfS0_S0__50
	jnz _ZN12CSampleSound21Calculate3DAttributesERfS0_S0__50
_ZN12CSampleSound21Calculate3DAttributesERfS0_S0__220:
	movss xmm3, dword [ebp-0x38]
	movss xmm0, dword [ebp-0x34]
_ZN12CSampleSound21Calculate3DAttributesERfS0_S0__230:
	mulss xmm3, [ebp-0x3c]
	mulss xmm0, [ebp-0x40]
	subss xmm3, xmm0
	movss xmm2, dword [ebp-0x40]
	mulss xmm2, xmm5
	movss xmm0, dword [ebp-0x38]
	mulss xmm0, xmm7
	subss xmm2, xmm0
	movss xmm1, dword [ebp-0x34]
	mulss xmm1, xmm7
	movss xmm0, dword [ebp-0x3c]
	mulss xmm0, xmm5
	subss xmm1, xmm0
	movss xmm0, dword [ebp-0x44]
	mulss xmm0, xmm3
	movss [ebp-0x50], xmm0
	movss xmm0, dword [ebp-0x48]
	mulss xmm0, xmm2
	movss [ebp-0x54], xmm0
	movss xmm6, dword [ebp-0x50]
	addss xmm6, xmm0
	movss xmm0, dword [ebp-0x4c]
	mulss xmm0, xmm1
	movss [ebp-0x58], xmm0
	addss xmm6, xmm0
	mulss xmm3, xmm6
	movss xmm0, dword [ebp-0x44]
	subss xmm0, xmm3
	movss [ebp-0x30], xmm0
	mulss xmm2, xmm6
	movss xmm3, dword [ebp-0x48]
	subss xmm3, xmm2
	mulss xmm1, xmm6
	movss xmm4, dword [ebp-0x4c]
	subss xmm4, xmm1
	movaps xmm1, xmm0
	mulss xmm1, xmm0
	movaps xmm0, xmm3
	mulss xmm0, xmm3
	addss xmm1, xmm0
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	addss xmm1, xmm0
	pxor xmm0, xmm0
	ucomiss xmm1, xmm0
	jp _ZN12CSampleSound21Calculate3DAttributesERfS0_S0__60
	jnz _ZN12CSampleSound21Calculate3DAttributesERfS0_S0__60
_ZN12CSampleSound21Calculate3DAttributesERfS0_S0__250:
	mulss xmm7, [ebp-0x30]
	movss xmm1, dword [ebp-0x3c]
	mulss xmm1, xmm3
	addss xmm7, xmm1
	movss xmm0, dword [ebp-0x40]
	mulss xmm0, xmm4
	addss xmm7, xmm0
	movss [esp], xmm7
	movss [ebp-0x78], xmm3
	movss [ebp-0x88], xmm4
	movss [ebp-0x98], xmm5
	movss [ebp-0xa8], xmm6
	call acosf
	fstp dword [ebp-0xbc]
	movss xmm2, dword [ebp-0xbc]
	mulss xmm2, [_float_180_00000000]
	divss xmm2, dword [_float_3_14159274]
	movaps xmm0, xmm2
	cmpss xmm0, xmm2, 0x0
	movaps xmm1, xmm2
	andps xmm1, xmm0
	movaps xmm2, xmm0
	pxor xmm7, xmm7
	andnps xmm2, xmm7
	orps xmm2, xmm1
	movss xmm5, dword [ebp-0x98]
	mulss xmm5, [ebp-0x30]
	movss xmm3, dword [ebp-0x78]
	mulss xmm3, [ebp-0x34]
	addss xmm5, xmm3
	movss xmm4, dword [ebp-0x88]
	mulss xmm4, [ebp-0x38]
	addss xmm5, xmm4
	ucomiss xmm7, xmm5
	movss xmm6, dword [ebp-0xa8]
	ja _ZN12CSampleSound21Calculate3DAttributesERfS0_S0__70
_ZN12CSampleSound21Calculate3DAttributesERfS0_S0__270:
	pxor xmm0, xmm0
	ucomiss xmm2, xmm0
	jae _ZN12CSampleSound21Calculate3DAttributesERfS0_S0__80
_ZN12CSampleSound21Calculate3DAttributesERfS0_S0__150:
	movss xmm3, dword [_float_450_00000000]
	subss xmm3, xmm2
_ZN12CSampleSound21Calculate3DAttributesERfS0_S0__160:
	movss xmm1, dword [ebp-0x44]
	pxor xmm7, xmm7
	ucomiss xmm1, xmm7
	jnz _ZN12CSampleSound21Calculate3DAttributesERfS0_S0__90
	jp _ZN12CSampleSound21Calculate3DAttributesERfS0_S0__90
	movss xmm0, dword [ebp-0x48]
	ucomiss xmm0, xmm7
	jnz _ZN12CSampleSound21Calculate3DAttributesERfS0_S0__90
	jp _ZN12CSampleSound21Calculate3DAttributesERfS0_S0__90
	movss xmm1, dword [ebp-0x4c]
	ucomiss xmm1, xmm7
	jz _ZN12CSampleSound21Calculate3DAttributesERfS0_S0__100
_ZN12CSampleSound21Calculate3DAttributesERfS0_S0__170:
	movss xmm6, dword [ebp-0x54]
	addss xmm6, [ebp-0x50]
	addss xmm6, [ebp-0x58]
_ZN12CSampleSound21Calculate3DAttributesERfS0_S0__90:
	movss [esp], xmm6
	movss [ebp-0x78], xmm3
	call acosf
	fstp dword [ebp-0xbc]
	movss xmm1, dword [ebp-0xbc]
	mulss xmm1, [_float_180_00000000]
	divss xmm1, dword [_float__3_14159274]
	addss xmm1, [_float_90_00000000]
	movss xmm3, dword [ebp-0x78]
	ucomiss xmm1, xmm1
	jp _ZN12CSampleSound21Calculate3DAttributesERfS0_S0__110
	jnz _ZN12CSampleSound21Calculate3DAttributesERfS0_S0__110
	ucomiss xmm1, [_float_90_00000000]
	ja _ZN12CSampleSound21Calculate3DAttributesERfS0_S0__120
_ZN12CSampleSound21Calculate3DAttributesERfS0_S0__260:
	ucomiss xmm1, [_float__90_00000000]
	jae _ZN12CSampleSound21Calculate3DAttributesERfS0_S0__130
	jp _ZN12CSampleSound21Calculate3DAttributesERfS0_S0__130
	movss xmm0, dword [_float__180_00000000]
	subss xmm0, xmm1
	movaps xmm1, xmm0
	mov eax, [ebp+0x14]
	movss xmm0, dword [ebp-0x2c]
	movss [eax], xmm0
	mov eax, [ebp+0xc]
	movss [eax], xmm3
	mov eax, [ebp+0x10]
	movss [eax], xmm1
	add esp, 0xd4
	pop ebx
	pop ebp
	ret
_ZN12CSampleSound21Calculate3DAttributesERfS0_S0__20:
	movaps xmm1, xmm0
	pxor xmm0, xmm0
	ucomiss xmm1, xmm0
	ja _ZN12CSampleSound21Calculate3DAttributesERfS0_S0__140
_ZN12CSampleSound21Calculate3DAttributesERfS0_S0__40:
	pxor xmm1, xmm1
	movaps xmm3, xmm1
_ZN12CSampleSound21Calculate3DAttributesERfS0_S0__130:
	mov eax, [ebp+0x14]
	movss xmm0, dword [ebp-0x2c]
	movss [eax], xmm0
	mov eax, [ebp+0xc]
	movss [eax], xmm3
	mov eax, [ebp+0x10]
	movss [eax], xmm1
	add esp, 0xd4
	pop ebx
	pop ebp
	ret
_ZN12CSampleSound21Calculate3DAttributesERfS0_S0__80:
	ucomiss xmm2, [_float_270_00000000]
	ja _ZN12CSampleSound21Calculate3DAttributesERfS0_S0__150
	jp _ZN12CSampleSound21Calculate3DAttributesERfS0_S0__150
	movss xmm3, dword [_float_90_00000000]
	subss xmm3, xmm2
	jmp _ZN12CSampleSound21Calculate3DAttributesERfS0_S0__160
_ZN12CSampleSound21Calculate3DAttributesERfS0_S0__30:
	movss xmm1, dword [_float_10000_00000000]
	movss [ebp-0x2c], xmm1
	jmp _ZN12CSampleSound21Calculate3DAttributesERfS0_S0__140
_ZN12CSampleSound21Calculate3DAttributesERfS0_S0__100:
	jp _ZN12CSampleSound21Calculate3DAttributesERfS0_S0__170
_ZN12CSampleSound21Calculate3DAttributesERfS0_S0__110:
	pxor xmm1, xmm1
	mov eax, [ebp+0x14]
	movss xmm0, dword [ebp-0x2c]
	movss [eax], xmm0
	mov eax, [ebp+0xc]
	movss [eax], xmm3
	mov eax, [ebp+0x10]
	movss [eax], xmm1
	add esp, 0xd4
	pop ebx
	pop ebp
	ret
_ZN12CSampleSound21Calculate3DAttributesERfS0_S0__10:
	sqrtss xmm0, xmm1
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm0
	ucomiss xmm1, xmm2
	jp _ZN12CSampleSound21Calculate3DAttributesERfS0_S0__180
	jz _ZN12CSampleSound21Calculate3DAttributesERfS0_S0__190
_ZN12CSampleSound21Calculate3DAttributesERfS0_S0__180:
	movaps xmm7, xmm6
	mulss xmm7, xmm1
	mulss xmm4, xmm1
	movss [ebp-0x3c], xmm4
	mulss xmm5, xmm1
	movss [ebp-0x40], xmm5
	jmp _ZN12CSampleSound21Calculate3DAttributesERfS0_S0__200
_ZN12CSampleSound21Calculate3DAttributesERfS0_S0__50:
	sqrtss xmm0, xmm1
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm0
	pxor xmm0, xmm0
	ucomiss xmm1, xmm0
	jp _ZN12CSampleSound21Calculate3DAttributesERfS0_S0__210
	jz _ZN12CSampleSound21Calculate3DAttributesERfS0_S0__220
_ZN12CSampleSound21Calculate3DAttributesERfS0_S0__210:
	mulss xmm5, xmm1
	movss xmm0, dword [ebp-0x34]
	mulss xmm0, xmm1
	movss [ebp-0x34], xmm0
	mulss xmm1, [ebp-0x38]
	movss [ebp-0x38], xmm1
	movaps xmm3, xmm1
	jmp _ZN12CSampleSound21Calculate3DAttributesERfS0_S0__230
_ZN12CSampleSound21Calculate3DAttributesERfS0_S0__60:
	sqrtss xmm0, xmm1
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm0
	pxor xmm0, xmm0
	ucomiss xmm1, xmm0
	jp _ZN12CSampleSound21Calculate3DAttributesERfS0_S0__240
	jz _ZN12CSampleSound21Calculate3DAttributesERfS0_S0__250
_ZN12CSampleSound21Calculate3DAttributesERfS0_S0__240:
	movss xmm0, dword [ebp-0x30]
	mulss xmm0, xmm1
	movss [ebp-0x30], xmm0
	mulss xmm3, xmm1
	mulss xmm4, xmm1
	jmp _ZN12CSampleSound21Calculate3DAttributesERfS0_S0__250
_ZN12CSampleSound21Calculate3DAttributesERfS0_S0__120:
	movss xmm7, dword [_float_180_00000000]
	subss xmm7, xmm1
	movaps xmm1, xmm7
	jmp _ZN12CSampleSound21Calculate3DAttributesERfS0_S0__260
_ZN12CSampleSound21Calculate3DAttributesERfS0_S0__70:
	movss xmm0, dword [_float_360_00000000]
	subss xmm0, xmm2
	movaps xmm2, xmm0
	jmp _ZN12CSampleSound21Calculate3DAttributesERfS0_S0__270


;Initialized global or static variables of MacMSS_Sample2:
SECTION .data


;Initialized constant data of MacMSS_Sample2:
SECTION .rdata


;Zero initialized global or static variables of MacMSS_Sample2:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_float_180_00000000:		dd 0x43340000	; 180
_float_3_14159274:		dd 0x40490fdb	; 3.14159
_float_450_00000000:		dd 0x43e10000	; 450
_float__3_14159274:		dd 0xc0490fdb	; -3.14159
_float_90_00000000:		dd 0x42b40000	; 90
_float__90_00000000:		dd 0xc2b40000	; -90
_float__180_00000000:		dd 0xc3340000	; -180
_float_270_00000000:		dd 0x43870000	; 270
_float_10000_00000000:		dd 0x461c4000	; 10000
_float_1_00000000:		dd 0x3f800000	; 1
_float_360_00000000:		dd 0x43b40000	; 360

