;Imports of fx_sort:
	extern _Z17FX_GetOrientationPK9FxElemDefPK14FxSpatialFrameS4_iP13orientation_t
	extern _Z27FX_OrientationPosToWorldPosPK13orientation_tPKfPf

;Exports of fx_sort:
	global _Z14FX_SortEffectsP8FxSystem
	global _Z23FX_SortNewElemsInEffectP8FxSystemP8FxEffect


SECTION .text


;FX_SortEffects(FxSystem*)
_Z14FX_SortEffectsP8FxSystem:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x103c
	mov eax, [ebp+0x8]
	mov eax, [eax+0x1b0]
	mov [ebp-0x1044], eax
	mov edx, [ebp+0x8]
	mov eax, [edx+0x1b4]
	cmp [ebp-0x1044], eax
	jz _Z14FX_SortEffectsP8FxSystem_10
	mov ecx, edx
	add edx, 0x4
	mov [ebp-0x1024], edx
	add ecx, 0x8
	mov [ebp-0x1020], ecx
_Z14FX_SortEffectsP8FxSystem_170:
	mov esi, [ebp-0x1044]
	and esi, 0x3ff
	mov eax, [ebp+0x8]
	movzx eax, word [eax+esi*2+0x1bc]
	mov [ebp-0x103e], ax
	movzx edx, ax
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x170]
	lea edx, [eax+edx*4]
	mov [ebp-0x103c], edx
	mov eax, edx
	add eax, 0x54
	movss xmm2, dword [ecx]
	subss xmm2, [edx+0x54]
	mov edx, [ebp-0x1024]
	movss xmm0, dword [edx]
	subss xmm0, [eax+0x4]
	mov ecx, [ebp-0x1020]
	movss xmm1, dword [ecx]
	subss xmm1, [eax+0x8]
	mulss xmm2, xmm2
	mulss xmm0, xmm0
	addss xmm2, xmm0
	mulss xmm1, xmm1
	addss xmm2, xmm1
	mov edx, [ebp+0x8]
	mov eax, [edx+0x1b0]
	cmp [ebp-0x1044], eax
	jz _Z14FX_SortEffectsP8FxSystem_20
	movaps xmm1, xmm2
	mulss xmm1, [_float_0_99989998]
	movaps xmm3, xmm2
	mulss xmm3, [_float_1_00010002]
	mov ecx, [ebp-0x1044]
	mov [ebp-0x101c], ecx
	mov edi, ecx
	jmp _Z14FX_SortEffectsP8FxSystem_30
_Z14FX_SortEffectsP8FxSystem_70:
	mov ecx, [ebp-0x1038]
	cmp byte [ecx+0x1b], 0xff
	jz _Z14FX_SortEffectsP8FxSystem_40
_Z14FX_SortEffectsP8FxSystem_120:
	mov edx, ecx
	mov ecx, [ebp-0x103c]
	movzx eax, byte [ecx+0x1b]
	cmp al, [edx+0x1b]
	jae _Z14FX_SortEffectsP8FxSystem_50
_Z14FX_SortEffectsP8FxSystem_60:
	mov eax, [ebp-0x101c]
	and eax, 0x3ff
	movss [ebp+eax*4-0x1018], xmm0
	mov ecx, [ebp+0x8]
	movzx edx, word [ecx+esi*2+0x1bc]
	mov [ecx+eax*2+0x1bc], dx
	mov eax, [ecx+0x1b0]
	cmp edi, eax
	jz _Z14FX_SortEffectsP8FxSystem_20
	mov [ebp-0x101c], edi
_Z14FX_SortEffectsP8FxSystem_30:
	sub edi, 0x1
	mov esi, edi
	and esi, 0x3ff
	movss xmm0, dword [ebp+esi*4-0x1018]
	ucomiss xmm0, xmm1
	jb _Z14FX_SortEffectsP8FxSystem_60
	ucomiss xmm0, xmm3
	jae _Z14FX_SortEffectsP8FxSystem_50
	mov edx, [ebp+0x8]
	movzx eax, word [edx+esi*2+0x1bc]
	mov edx, [edx+0x170]
	lea eax, [edx+eax*4]
	mov [ebp-0x1038], eax
	movzx eax, word [eax+0x14]
	mov ecx, [ebp-0x103c]
	cmp ax, [ecx+0x14]
	jnz _Z14FX_SortEffectsP8FxSystem_50
	cmp byte [ecx+0x1b], 0xff
	jnz _Z14FX_SortEffectsP8FxSystem_70
	mov edx, [ebp-0x1038]
	cmp byte [edx+0x1b], 0xff
	jz _Z14FX_SortEffectsP8FxSystem_50
	mov eax, [ecx]
	mov edx, [eax+0x18]
	add edx, [eax+0x14]
	add edx, [eax+0x10]
	test edx, edx
	jle _Z14FX_SortEffectsP8FxSystem_80
	mov ecx, [eax+0x1c]
	xor ebx, ebx
	mov dword [ebp-0x1034], 0x0
	mov dword [ebp-0x1030], 0x0
_Z14FX_SortEffectsP8FxSystem_100:
	cmp byte [ecx+0xb0], 0xa
	jz _Z14FX_SortEffectsP8FxSystem_90
	movzx eax, byte [ecx+0xf8]
	add [ebp-0x1034], eax
	add dword [ebp-0x1030], 0x1
_Z14FX_SortEffectsP8FxSystem_90:
	add ebx, 0x1
	add ecx, 0xfc
	cmp edx, ebx
	jnz _Z14FX_SortEffectsP8FxSystem_100
	mov edx, [ebp-0x1030]
	test edx, edx
	jle _Z14FX_SortEffectsP8FxSystem_80
	mov eax, [ebp-0x1034]
	cdq
	idiv dword [ebp-0x1030]
	cmp eax, 0xfd
	jle _Z14FX_SortEffectsP8FxSystem_110
	mov eax, 0xfffffffe
_Z14FX_SortEffectsP8FxSystem_190:
	mov edx, [ebp-0x103c]
	mov [edx+0x1b], al
	mov ecx, [ebp-0x1038]
	cmp byte [ecx+0x1b], 0xff
	jnz _Z14FX_SortEffectsP8FxSystem_120
_Z14FX_SortEffectsP8FxSystem_40:
	mov eax, [ecx]
	mov ebx, [eax+0x18]
	add ebx, [eax+0x14]
	add ebx, [eax+0x10]
	test ebx, ebx
	jle _Z14FX_SortEffectsP8FxSystem_130
	mov ecx, [eax+0x1c]
	xor edx, edx
	mov dword [ebp-0x1028], 0x0
	mov dword [ebp-0x102c], 0x0
_Z14FX_SortEffectsP8FxSystem_150:
	cmp byte [ecx+0xb0], 0xa
	jz _Z14FX_SortEffectsP8FxSystem_140
	movzx eax, byte [ecx+0xf8]
	add [ebp-0x102c], eax
	add dword [ebp-0x1028], 0x1
_Z14FX_SortEffectsP8FxSystem_140:
	add edx, 0x1
	add ecx, 0xfc
	cmp ebx, edx
	jnz _Z14FX_SortEffectsP8FxSystem_150
	mov eax, [ebp-0x1028]
	test eax, eax
	jle _Z14FX_SortEffectsP8FxSystem_130
	mov eax, [ebp-0x102c]
	cdq
	idiv dword [ebp-0x1028]
	cmp eax, 0xfd
	jle _Z14FX_SortEffectsP8FxSystem_160
	mov eax, 0xfffffffe
_Z14FX_SortEffectsP8FxSystem_180:
	mov edx, [ebp-0x1038]
	mov [edx+0x1b], al
	mov edx, [ebp-0x1038]
	mov ecx, [ebp-0x103c]
	movzx eax, byte [ecx+0x1b]
	cmp al, [edx+0x1b]
	jb _Z14FX_SortEffectsP8FxSystem_60
_Z14FX_SortEffectsP8FxSystem_50:
	mov esi, [ebp-0x101c]
	and esi, 0x3ff
_Z14FX_SortEffectsP8FxSystem_20:
	movss [ebp+esi*4-0x1018], xmm2
	movzx edx, word [ebp-0x103e]
	mov eax, [ebp+0x8]
	mov [eax+esi*2+0x1bc], dx
	add dword [ebp-0x1044], 0x1
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x1b4]
	cmp eax, [ebp-0x1044]
	jnz _Z14FX_SortEffectsP8FxSystem_170
_Z14FX_SortEffectsP8FxSystem_10:
	add esp, 0x103c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14FX_SortEffectsP8FxSystem_160:
	test eax, eax
	jg _Z14FX_SortEffectsP8FxSystem_180
_Z14FX_SortEffectsP8FxSystem_130:
	xor eax, eax
	jmp _Z14FX_SortEffectsP8FxSystem_180
_Z14FX_SortEffectsP8FxSystem_110:
	test eax, eax
	jg _Z14FX_SortEffectsP8FxSystem_190
_Z14FX_SortEffectsP8FxSystem_80:
	xor eax, eax
	jmp _Z14FX_SortEffectsP8FxSystem_190
	add [eax], al


;FX_SortNewElemsInEffect(FxSystem*, FxEffect*)
_Z23FX_SortNewElemsInEffectP8FxSystemP8FxEffect:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	mov eax, [ebp+0xc]
	movzx eax, word [eax+0x8]
	mov [ebp-0x6a], ax
	mov edx, [ebp+0xc]
	movzx edx, word [edx+0xe]
	mov [ebp-0x6c], dx
	cmp ax, dx
	jz _Z23FX_SortNewElemsInEffectP8FxSystemP8FxEffect_10
	mov ecx, [ebp+0xc]
	mov [ecx+0x8], dx
	add dx, 0x1
	jz _Z23FX_SortNewElemsInEffectP8FxSystemP8FxEffect_20
	movzx edx, word [ebp-0x6c]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x174]
	mov word [eax+edx*4+0x6], 0xffff
_Z23FX_SortNewElemsInEffectP8FxSystemP8FxEffect_20:
	mov eax, [ebp+0xc]
	add eax, 0x8
	mov [ebp-0x70], eax
	mov edx, [ebp+0xc]
	add edx, 0x44
	mov [ebp-0x74], edx
	mov ecx, [ebp+0xc]
	add ecx, 0x28
	mov [ebp-0x78], ecx
	mov eax, [ebp+0x8]
	add eax, 0xb0
	mov [ebp-0x7c], eax
_Z23FX_SortNewElemsInEffectP8FxSystemP8FxEffect_90:
	movzx edx, word [ebp-0x6a]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x174]
	lea edx, [eax+edx*4]
	mov [ebp-0x68], edx
	movzx eax, word [edx+0x4]
	mov [ebp-0x6a], ax
	mov edx, [ebp-0x70]
	mov [ebp-0x60], edx
	mov ecx, [ebp+0xc]
	cmp word [ecx+0x8], 0xffff
	jz _Z23FX_SortNewElemsInEffectP8FxSystemP8FxEffect_30
	mov edx, [ecx]
	mov eax, [ebp-0x68]
	movzx ebx, byte [eax]
	lea eax, [ebx*4]
	shl ebx, 0x8
	sub ebx, eax
	add ebx, [edx+0x1c]
	movzx edx, byte [ebx+0xf8]
	mov [ebp-0x5c], edx
	lea ecx, [ebp-0x54]
	mov [esp+0x10], ecx
	mov eax, [ebp+0xc]
	movzx edx, word [eax+0x12]
	mov ecx, [ebp-0x68]
	add edx, [ecx+0x8]
	movzx eax, byte [ecx+0x1]
	lea ecx, [eax+eax*8]
	lea ecx, [eax+ecx*4]
	lea ecx, [edx+ecx*8]
	mov edx, 0x11a3019b
	mov eax, ecx
	mul edx
	mov eax, ecx
	sub eax, edx
	shr eax, 1
	add edx, eax
	shr edx, 0x8
	mov esi, edx
	shl esi, 0x5
	mov eax, edx
	shl eax, 0x9
	sub eax, esi
	sub eax, edx
	sub ecx, eax
	movzx ecx, cx
	mov [esp+0xc], ecx
	mov edx, [ebp-0x74]
	mov [esp+0x8], edx
	mov ecx, [ebp-0x78]
	mov [esp+0x4], ecx
	mov [esp], ebx
	call _Z17FX_GetOrientationPK9FxElemDefPK14FxSpatialFrameS4_iP13orientation_t
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov eax, [ebp-0x68]
	add eax, 0x18
	mov [esp+0x4], eax
	lea edx, [ebp-0x54]
	mov [esp], edx
	call _Z27FX_OrientationPosToWorldPosPK13orientation_tPKfPf
	mov ecx, [ebp+0x8]
	movss xmm3, dword [ecx+0xb0]
	subss xmm3, [ebp-0x24]
	mov eax, [ebp-0x7c]
	movss xmm0, dword [eax+0x4]
	subss xmm0, [ebp-0x20]
	movss xmm1, dword [eax+0x8]
	subss xmm1, [ebp-0x1c]
	mulss xmm3, xmm3
	mulss xmm0, xmm0
	addss xmm3, xmm0
	mulss xmm1, xmm1
	addss xmm3, xmm1
	mov word [ebp-0x62], 0xffff
_Z23FX_SortNewElemsInEffectP8FxSystemP8FxEffect_100:
	mov ecx, [ebp-0x60]
	movzx edx, word [ecx]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x174]
	lea edi, [eax+edx*4]
	mov eax, [ebp+0xc]
	mov ecx, [eax]
	movzx eax, byte [edi]
	lea edx, [eax*4]
	mov esi, eax
	shl esi, 0x8
	sub esi, edx
	add esi, [ecx+0x1c]
	cmp byte [esi+0xb0], 0x3
	ja _Z23FX_SortNewElemsInEffectP8FxSystemP8FxEffect_40
	cmp byte [esi+0xb1], 0x0
	jz _Z23FX_SortNewElemsInEffectP8FxSystemP8FxEffect_50
	movzx eax, byte [esi+0xf8]
	cmp [ebp-0x5c], eax
	jg _Z23FX_SortNewElemsInEffectP8FxSystemP8FxEffect_40
	jge _Z23FX_SortNewElemsInEffectP8FxSystemP8FxEffect_60
_Z23FX_SortNewElemsInEffectP8FxSystemP8FxEffect_50:
	mov edx, [ebp-0x60]
_Z23FX_SortNewElemsInEffectP8FxSystemP8FxEffect_120:
	movzx eax, word [edx]
	mov ecx, [ebp-0x68]
	mov [ecx+0x4], ax
	movzx eax, word [ebp-0x62]
	mov [ecx+0x6], ax
	mov eax, ecx
	mov edx, [ebp+0x8]
	sub eax, [edx+0x174]
	js _Z23FX_SortNewElemsInEffectP8FxSystemP8FxEffect_70
_Z23FX_SortNewElemsInEffectP8FxSystemP8FxEffect_110:
	sar eax, 0x2
	movzx eax, ax
	mov ecx, [ebp-0x60]
	mov [ecx], ax
	mov edx, [ebp-0x68]
	cmp word [edx+0x4], 0xffff
	jz _Z23FX_SortNewElemsInEffectP8FxSystemP8FxEffect_80
	mov [edi+0x6], ax
_Z23FX_SortNewElemsInEffectP8FxSystemP8FxEffect_80:
	movzx ecx, word [ebp-0x6a]
	cmp [ebp-0x6c], cx
	jnz _Z23FX_SortNewElemsInEffectP8FxSystemP8FxEffect_90
	mov edx, [ebp+0xc]
	movzx eax, word [edx+0x8]
	mov [edx+0xe], ax
_Z23FX_SortNewElemsInEffectP8FxSystemP8FxEffect_10:
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23FX_SortNewElemsInEffectP8FxSystemP8FxEffect_60:
	lea edx, [ebp-0x54]
	mov [esp+0x10], edx
	mov ecx, [ebp+0xc]
	movzx edx, word [ecx+0x12]
	add edx, [edi+0x8]
	movzx eax, byte [edi+0x1]
	lea ecx, [eax+eax*8]
	lea ecx, [eax+ecx*4]
	lea ecx, [edx+ecx*8]
	mov edx, 0x11a3019b
	mov eax, ecx
	mul edx
	mov eax, ecx
	sub eax, edx
	shr eax, 1
	add edx, eax
	shr edx, 0x8
	mov ebx, edx
	shl ebx, 0x5
	mov eax, edx
	shl eax, 0x9
	sub eax, ebx
	sub eax, edx
	sub ecx, eax
	movzx ecx, cx
	mov [esp+0xc], ecx
	mov edx, [ebp-0x74]
	mov [esp+0x8], edx
	mov ecx, [ebp-0x78]
	mov [esp+0x4], ecx
	mov [esp], esi
	movss [ebp-0x98], xmm3
	call _Z17FX_GetOrientationPK9FxElemDefPK14FxSpatialFrameS4_iP13orientation_t
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	lea eax, [edi+0x18]
	mov [esp+0x4], eax
	lea edx, [ebp-0x54]
	mov [esp], edx
	call _Z27FX_OrientationPosToWorldPosPK13orientation_tPKfPf
	mov ecx, [ebp+0x8]
	movss xmm0, dword [ecx+0xb0]
	subss xmm0, [ebp-0x24]
	mov eax, [ebp-0x7c]
	movss xmm1, dword [eax+0x4]
	subss xmm1, [ebp-0x20]
	movss xmm2, dword [eax+0x8]
	subss xmm2, [ebp-0x1c]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	movss xmm3, dword [ebp-0x98]
	ucomiss xmm0, xmm3
	jbe _Z23FX_SortNewElemsInEffectP8FxSystemP8FxEffect_50
_Z23FX_SortNewElemsInEffectP8FxSystemP8FxEffect_40:
	mov edx, [ebp-0x60]
	movzx edx, word [edx]
	mov [ebp-0x62], dx
	lea ecx, [edi+0x4]
	mov [ebp-0x60], ecx
	cmp word [edi+0x4], 0xffff
	jnz _Z23FX_SortNewElemsInEffectP8FxSystemP8FxEffect_100
	mov edx, ecx
	movzx eax, word [edx]
	mov ecx, [ebp-0x68]
	mov [ecx+0x4], ax
	movzx eax, word [ebp-0x62]
	mov [ecx+0x6], ax
	mov eax, ecx
	mov edx, [ebp+0x8]
	sub eax, [edx+0x174]
	jns _Z23FX_SortNewElemsInEffectP8FxSystemP8FxEffect_110
_Z23FX_SortNewElemsInEffectP8FxSystemP8FxEffect_70:
	add eax, 0x3
	jmp _Z23FX_SortNewElemsInEffectP8FxSystemP8FxEffect_110
_Z23FX_SortNewElemsInEffectP8FxSystemP8FxEffect_30:
	xor edi, edi
	mov word [ebp-0x62], 0xffff
	mov edx, [ebp-0x60]
	jmp _Z23FX_SortNewElemsInEffectP8FxSystemP8FxEffect_120


;Initialized global or static variables of fx_sort:
SECTION .data


;Initialized constant data of fx_sort:
SECTION .rdata


;Zero initialized global or static variables of fx_sort:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_float_0_99989998:		dd 0x3f7ff972	; 0.9999
_float_1_00010002:		dd 0x3f800347	; 1.0001

