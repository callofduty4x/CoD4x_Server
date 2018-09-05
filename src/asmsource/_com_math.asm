;Imports of com_math:

;Exports of com_math:
    global ClosestApproachOfTwoLines

SECTION .text

;ClosestApproachOfTwoLines(float const*, float const*, float const*, float const*, float*, float*)
ClosestApproachOfTwoLines:
    push ebp
    mov ebp, esp
    push edi
    push esi
    push ebx
    sub esp, 0x2c
    mov edx, [ebp+0x8]
    mov ecx, [ebp+0xc]
    mov eax, [ebp+0x10]
    mov ebx, [ebp+0x14]
    mov esi, [ebp+0x18]
    mov edi, [ebp+0x1c]
    movss xmm0, dword [edx]
    movss [ebp-0x1c], xmm0
    subss xmm0, [eax]
    movss [ebp-0x1c], xmm0
    movss xmm1, dword [edx+0x4]
    movss [ebp-0x20], xmm1
    subss xmm1, [eax+0x4]
    movss [ebp-0x20], xmm1
    movss xmm0, dword [edx+0x8]
    movss [ebp-0x24], xmm0
    subss xmm0, [eax+0x8]
    movss [ebp-0x24], xmm0
    movss xmm3, dword [ecx]
    movss xmm1, dword [ecx+0x4]
    movss xmm2, dword [ecx+0x8]
    movaps xmm0, xmm3
    mulss xmm0, xmm3
    movss [ebp-0x34], xmm0
    movaps xmm0, xmm1
    mulss xmm0, xmm1
    addss xmm0, [ebp-0x34]
    movss [ebp-0x34], xmm0
    movaps xmm0, xmm2
    mulss xmm0, xmm2
    addss xmm0, [ebp-0x34]
    movss [ebp-0x34], xmm0
    movss xmm0, dword [ebx]
    movss [ebp-0x30], xmm0
    movss xmm0, dword [ebx+0x4]
    movss [ebp-0x2c], xmm0
    movss xmm0, dword [ebx+0x8]
    movss [ebp-0x28], xmm0
    movss xmm6, dword [ebp-0x30]
    mulss xmm6, xmm6
    movss xmm0, dword [ebp-0x2c]
    mulss xmm0, xmm0
    addss xmm6, xmm0
    movss xmm0, dword [ebp-0x28]
    mulss xmm0, xmm0
    addss xmm6, xmm0
    movss xmm4, dword [ebp-0x30]
    mulss xmm4, xmm3
    movss xmm0, dword [ebp-0x2c]
    mulss xmm0, xmm1
    addss xmm4, xmm0
    movss xmm0, dword [ebp-0x28]
    mulss xmm0, xmm2
    addss xmm4, xmm0
    movss xmm7, dword [_data16_80000000]
    xorps xmm4, xmm7
    mulss xmm3, [ebp-0x1c]
    mulss xmm1, [ebp-0x20]
    addss xmm3, xmm1
    mulss xmm2, [ebp-0x24]
    addss xmm3, xmm2
    movss xmm5, dword [ebp-0x34]
    mulss xmm5, xmm6
    movaps xmm0, xmm4
    mulss xmm0, xmm4
    subss xmm5, xmm0
    movaps xmm1, xmm5
    mulss xmm1, xmm5
    movss xmm0, dword [ebp-0x34]
    mulss xmm0, xmm4
    andps xmm0, [_data16_7fffffff]
    mulss xmm0, [_float_0_00010000]
    ucomiss xmm1, xmm0
    jbe ClosestApproachOfTwoLines_10
    movss xmm0, dword [ebp-0x1c]
    mulss xmm0, [ebp-0x30]
    movss xmm1, dword [ebp-0x20]
    mulss xmm1, [ebp-0x2c]
    addss xmm0, xmm1
    movss xmm1, dword [ebp-0x24]
    mulss xmm1, [ebp-0x28]
    addss xmm0, xmm1
    xorps xmm0, xmm7
    movss xmm2, dword [_float_1_00000000]
    divss xmm2, xmm5
    movaps xmm1, xmm4
    mulss xmm1, xmm0
    mulss xmm6, xmm3
    subss xmm1, xmm6
    mulss xmm1, xmm2
    movss [esi], xmm1
    mulss xmm3, xmm4
    mulss xmm0, [ebp-0x34]
    subss xmm3, xmm0
    mulss xmm2, xmm3
    movss [edi], xmm2
    add esp, 0x2c
    pop ebx
    pop esi
    pop edi
    pop ebp
    ret
ClosestApproachOfTwoLines_10:
    xorps xmm3, xmm7
    divss xmm3, dword [ebp-0x34]
    movss [esi], xmm3
    mov dword [edi], 0x0
    add esp, 0x2c
    pop ebx
    pop esi
    pop edi
    pop ebp
    ret
    nop



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_00010000:		dd 0x38d1b717	; 0.0001

align   16,db 0
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; DQWORD
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; DQWORD