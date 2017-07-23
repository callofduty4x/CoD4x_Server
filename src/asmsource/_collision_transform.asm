;Imports of collision_transform:
	extern ODE_GeomGetAAContainedBox
	extern dCollide
	extern dSetZero
	extern ODE_GeomDestruct
	extern _ZN6dxGeomC2EP7dxSpaceiP6dxBody
	extern dRSetIdentity
	extern _Unwind_Resume
	extern dFree
	extern ODE_AllocateGeom
	extern dSpaceRemove
	extern _ZN6dxGeom10bodyRemoveEv
	extern _ZN6dxGeom8AABBTestEPS_Pf

;Exports of collision_transform:
	global ODE_GeomTransformGetAAContainedBox
	global ODE_GeomTransformGetOffset
	global ODE_GeomTransformSetOffset
	global ODE_GeomTransformSetRotation
	global dCollideTransform
	global _ZN15dxGeomTransform11computeAABBEv
	global _ZN15dxGeomTransform14computeFinalTxEv
	global _ZN15dxGeomTransform8DestructEv
	global _ZN15dxGeomTransformC1EP7dxSpaceP6dxBody
	global _ZN15dxGeomTransformD0Ev
	global _ZN15dxGeomTransformD1Ev
	global dCreateGeomTransform
	global dGeomTransformSetGeom
	global _ZTV15dxGeomTransform


SECTION .text


;ODE_GeomTransformGetAAContainedBox
ODE_GeomTransformGetAAContainedBox:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov esi, [ebp+0x10]
	test byte [ebx+0x8], 0x2
	jz ODE_GeomTransformGetAAContainedBox_10
	mov [esp], ebx
	call _ZN15dxGeomTransform14computeFinalTxEv
ODE_GeomTransformGetAAContainedBox_10:
	mov edx, [ebx+0x4c]
	lea eax, [ebx+0xc4]
	mov [edx+0x18], eax
	mov edx, [ebx+0x4c]
	lea eax, [ebx+0x94]
	mov [edx+0x1c], eax
	mov [ebp+0x10], esi
	mov [ebp+0xc], edi
	mov eax, [ebx+0x4c]
	mov [ebp+0x8], eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp ODE_GeomGetAAContainedBox


;ODE_GeomTransformGetOffset
ODE_GeomTransformGetOffset:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	lea ecx, [eax+0x88]
	mov eax, [eax+0x88]
	mov [edx], eax
	mov eax, [ecx+0x4]
	mov [edx+0x4], eax
	mov eax, [ecx+0x8]
	mov [edx+0x8], eax
	pop ebp
	ret
	nop


;ODE_GeomTransformSetOffset
ODE_GeomTransformSetOffset:
	push ebp
	mov ebp, esp
	push ebx
	mov ebx, [ebp+0x8]
	mov edx, [ebp+0xc]
	lea ecx, [ebx+0x88]
	mov eax, [edx]
	mov [ebx+0x88], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov dword [ecx+0xc], 0x0
	pop ebx
	pop ebp
	ret


;ODE_GeomTransformSetRotation
ODE_GeomTransformSetRotation:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov esi, [ebp+0x8]
	add esi, 0x58
	xor edi, edi
ODE_GeomTransformSetRotation_20:
	mov eax, [ebp+0x10]
	lea ecx, [eax+edi*4]
	mov edx, esi
	xor ebx, ebx
ODE_GeomTransformSetRotation_10:
	mov eax, [ecx]
	mov [edx], eax
	add ebx, 0x1
	add ecx, 0xc
	add edx, 0x4
	cmp ebx, 0x3
	jnz ODE_GeomTransformSetRotation_10
	mov dword [esi+0xc], 0x0
	add edi, 0x1
	add esi, 0x10
	cmp edi, 0x3
	jnz ODE_GeomTransformSetRotation_20
	mov edx, [ebp+0x8]
	add edx, 0x88
	mov ecx, [ebp+0xc]
	mov eax, [ecx]
	mov ecx, [ebp+0x8]
	mov [ecx+0x88], eax
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0x4]
	mov [edx+0x4], eax
	mov eax, [ecx+0x8]
	mov [edx+0x8], eax
	mov dword [edx+0xc], 0x0
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;dCollideTransform(dxGeom*, dxGeom*, int, dContactGeom*, int)
dCollideTransform:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, [ebp+0x8]
	mov edi, [ebp+0x14]
	mov esi, [ebp+0x18]
	mov edx, [ebx+0x4c]
	test edx, edx
	jz dCollideTransform_10
	mov eax, [edx+0x18]
	mov [ebp-0x24], eax
	mov eax, [edx+0x1c]
	mov [ebp-0x20], eax
	mov eax, [edx+0x10]
	mov [ebp-0x1c], eax
	test byte [ebx+0x8], 0x2
	jnz dCollideTransform_20
dCollideTransform_50:
	lea eax, [ebx+0xc4]
	mov [edx+0x18], eax
	mov edx, [ebx+0x4c]
	lea eax, [ebx+0x94]
	mov [edx+0x1c], eax
	mov edx, [ebx+0x4c]
	mov eax, [ebx+0x10]
	mov [edx+0x10], eax
	mov [esp+0x10], esi
	mov [esp+0xc], edi
	mov edx, [ebp+0x10]
	mov [esp+0x8], edx
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebx+0x4c]
	mov [esp], eax
	call dCollide
	mov ecx, eax
	mov eax, [ebx+0x54]
	test eax, eax
	jz dCollideTransform_30
	test ecx, ecx
	jle dCollideTransform_30
	xor edx, edx
dCollideTransform_40:
	mov eax, edx
	imul eax, esi
	mov [eax+edi+0x24], ebx
	add edx, 0x1
	cmp ecx, edx
	jnz dCollideTransform_40
dCollideTransform_30:
	mov eax, [ebx+0x4c]
	mov edx, [ebp-0x24]
	mov [eax+0x18], edx
	mov eax, [ebx+0x4c]
	mov edx, [ebp-0x20]
	mov [eax+0x1c], edx
	mov eax, [ebx+0x4c]
	mov edx, [ebp-0x1c]
	mov [eax+0x10], edx
	mov eax, ecx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
dCollideTransform_20:
	mov [esp], ebx
	call _ZN15dxGeomTransform14computeFinalTxEv
	mov edx, [ebx+0x4c]
	jmp dCollideTransform_50
dCollideTransform_10:
	xor ecx, ecx
	mov eax, ecx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;dxGeomTransform::computeAABB()
_ZN15dxGeomTransform11computeAABBEv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov eax, [edi+0x4c]
	test eax, eax
	jz _ZN15dxGeomTransform11computeAABBEv_10
	mov esi, [eax+0x18]
	mov eax, [eax+0x1c]
	mov [ebp-0x1c], eax
	mov [esp], edi
	call _ZN15dxGeomTransform14computeFinalTxEv
	mov edx, [edi+0x4c]
	lea eax, [edi+0xc4]
	mov [edx+0x18], eax
	mov edx, [edi+0x4c]
	lea eax, [edi+0x94]
	mov [edx+0x1c], eax
	mov eax, [edi+0x4c]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	lea ecx, [edi+0x2c]
	mov ebx, [edi+0x4c]
	lea edx, [ebx+0x2c]
	mov eax, [ebx+0x2c]
	mov [edi+0x2c], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov eax, [edx+0xc]
	mov [ecx+0xc], eax
	mov eax, [edx+0x10]
	mov [ecx+0x10], eax
	mov eax, [edx+0x14]
	mov [ecx+0x14], eax
	mov [ebx+0x18], esi
	mov eax, [edi+0x4c]
	mov edx, [ebp-0x1c]
	mov [eax+0x1c], edx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN15dxGeomTransform11computeAABBEv_10:
	mov dword [esp+0x4], 0x6
	lea eax, [edi+0x2c]
	mov [esp], eax
	call dSetZero
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;dxGeomTransform::computeFinalTx()
_ZN15dxGeomTransform14computeFinalTxEv:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	lea ecx, [eax+0x94]
	mov edx, [eax+0x1c]
	movss xmm1, dword [edx]
	mulss xmm1, [eax+0x58]
	movss xmm0, dword [edx+0x4]
	mulss xmm0, [eax+0x68]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x8]
	mulss xmm0, [eax+0x78]
	addss xmm1, xmm0
	movss [eax+0x94], xmm1
	movss xmm1, dword [edx]
	mulss xmm1, [eax+0x5c]
	movss xmm0, dword [edx+0x4]
	mulss xmm0, [eax+0x6c]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x8]
	mulss xmm0, [eax+0x7c]
	addss xmm1, xmm0
	movss [ecx+0x4], xmm1
	movss xmm1, dword [edx]
	mulss xmm1, [eax+0x60]
	movss xmm0, dword [edx+0x4]
	mulss xmm0, [eax+0x70]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x8]
	mulss xmm0, [eax+0x80]
	addss xmm1, xmm0
	movss [ecx+0x8], xmm1
	movss xmm1, dword [edx+0x10]
	mulss xmm1, [eax+0x58]
	movss xmm0, dword [edx+0x14]
	mulss xmm0, [eax+0x68]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x18]
	mulss xmm0, [eax+0x78]
	addss xmm1, xmm0
	movss [ecx+0x10], xmm1
	movss xmm1, dword [edx+0x10]
	mulss xmm1, [eax+0x5c]
	movss xmm0, dword [edx+0x14]
	mulss xmm0, [eax+0x6c]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x18]
	mulss xmm0, [eax+0x7c]
	addss xmm1, xmm0
	movss [ecx+0x14], xmm1
	movss xmm1, dword [edx+0x10]
	mulss xmm1, [eax+0x60]
	movss xmm0, dword [edx+0x14]
	mulss xmm0, [eax+0x70]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x18]
	mulss xmm0, [eax+0x80]
	addss xmm1, xmm0
	movss [ecx+0x18], xmm1
	movss xmm1, dword [edx+0x20]
	mulss xmm1, [eax+0x58]
	movss xmm0, dword [edx+0x24]
	mulss xmm0, [eax+0x68]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x28]
	mulss xmm0, [eax+0x78]
	addss xmm1, xmm0
	movss [ecx+0x20], xmm1
	movss xmm1, dword [edx+0x20]
	mulss xmm1, [eax+0x5c]
	movss xmm0, dword [edx+0x24]
	mulss xmm0, [eax+0x6c]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x28]
	mulss xmm0, [eax+0x7c]
	addss xmm1, xmm0
	movss [ecx+0x24], xmm1
	movss xmm1, dword [edx+0x20]
	mulss xmm1, [eax+0x60]
	movss xmm0, dword [edx+0x24]
	mulss xmm0, [eax+0x70]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x28]
	mulss xmm0, [eax+0x80]
	addss xmm1, xmm0
	movss [ecx+0x28], xmm1
	lea ecx, [eax+0xc4]
	mov edx, [eax+0x1c]
	movss xmm2, dword [edx]
	mulss xmm2, [eax+0x88]
	movss xmm0, dword [edx+0x4]
	mulss xmm0, [eax+0x8c]
	addss xmm2, xmm0
	movss xmm0, dword [edx+0x8]
	mulss xmm0, [eax+0x90]
	addss xmm2, xmm0
	movss [eax+0xc4], xmm2
	movss xmm1, dword [edx+0x10]
	mulss xmm1, [eax+0x88]
	movss xmm0, dword [edx+0x14]
	mulss xmm0, [eax+0x8c]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x18]
	mulss xmm0, [eax+0x90]
	addss xmm1, xmm0
	movss [eax+0xc8], xmm1
	movss xmm1, dword [edx+0x20]
	mulss xmm1, [eax+0x88]
	movss xmm0, dword [edx+0x24]
	mulss xmm0, [eax+0x8c]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x28]
	mulss xmm0, [eax+0x90]
	addss xmm1, xmm0
	movss [eax+0xcc], xmm1
	mov edx, [eax+0x18]
	addss xmm2, [edx]
	movss [eax+0xc4], xmm2
	movss xmm0, dword [ecx+0x4]
	addss xmm0, [edx+0x4]
	movss [eax+0xc8], xmm0
	movss xmm0, dword [ecx+0x8]
	addss xmm0, [edx+0x8]
	movss [eax+0xcc], xmm0
	pop ebp
	ret
	nop
	add [eax], al


;dxGeomTransform::Destruct()
_ZN15dxGeomTransform8DestructEv:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [eax+0x4c]
	test edx, edx
	jz _ZN15dxGeomTransform8DestructEv_10
	mov eax, [eax+0x50]
	test eax, eax
	jnz _ZN15dxGeomTransform8DestructEv_20
_ZN15dxGeomTransform8DestructEv_10:
	pop ebp
	ret
_ZN15dxGeomTransform8DestructEv_20:
	mov [ebp+0x8], edx
	pop ebp
	jmp ODE_GeomDestruct
	nop


;dxGeomTransform::dxGeomTransform(dxSpace*, dxBody*)
_ZN15dxGeomTransformC1EP7dxSpaceP6dxBody:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, [ebp+0x10]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x1
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZN6dxGeomC2EP7dxSpaceiP6dxBody
	mov dword [ebx], _ZTV15dxGeomTransform+0x8
	mov dword [ebx+0x4], 0x6
	mov dword [ebx+0x4c], 0x0
	mov dword [ebx+0x50], 0x1
	mov dword [ebx+0x54], 0x0
	lea eax, [ebx+0x94]
	mov [esp], eax
	call dRSetIdentity
	lea eax, [ebx+0x58]
	mov [esp], eax
	call dRSetIdentity
	lea eax, [ebx+0x88]
	xor edx, edx
	mov [ebx+0x88], edx
	mov [eax+0x4], edx
	mov [eax+0x8], edx
	lea eax, [ebx+0xc4]
	mov [ebx+0xc4], edx
	mov [eax+0x4], edx
	mov [eax+0x8], edx
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	mov edx, [0xd5ccae8]
	add edx, 0x8
	mov [ebx], edx
	mov [esp], eax
	call _Unwind_Resume


;dxGeomTransform::~dxGeomTransform()
_ZN15dxGeomTransformD0Ev:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [ebx], _ZTV15dxGeomTransform+0x8
	mov eax, [ebx+0x4c]
	test eax, eax
	jz _ZN15dxGeomTransformD0Ev_10
	mov edx, [ebx+0x50]
	test edx, edx
	jnz _ZN15dxGeomTransformD0Ev_20
_ZN15dxGeomTransformD0Ev_10:
	mov eax, [0xd5ccae8]
	add eax, 0x8
	mov [ebx], eax
	mov dword [esp+0x4], 0xd0
	mov [esp], ebx
	call dFree
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_ZN15dxGeomTransformD0Ev_20:
	mov [esp], eax
	call ODE_GeomDestruct
	mov eax, [0xd5ccae8]
	add eax, 0x8
	mov [ebx], eax
	mov dword [esp+0x4], 0xd0
	mov [esp], ebx
	call dFree
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	mov edx, [0xd5ccae8]
	add edx, 0x8
	mov [ebx], edx
	mov [esp], eax
	call _Unwind_Resume
	add [eax], al


;dxGeomTransform::~dxGeomTransform()
_ZN15dxGeomTransformD1Ev:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [ebx], _ZTV15dxGeomTransform+0x8
	mov eax, [ebx+0x4c]
	test eax, eax
	jz _ZN15dxGeomTransformD1Ev_10
	mov ecx, [ebx+0x50]
	test ecx, ecx
	jnz _ZN15dxGeomTransformD1Ev_20
_ZN15dxGeomTransformD1Ev_10:
	mov eax, [0xd5ccae8]
	add eax, 0x8
	mov [ebx], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_ZN15dxGeomTransformD1Ev_20:
	mov [esp], eax
	call ODE_GeomDestruct
	mov eax, [0xd5ccae8]
	add eax, 0x8
	mov [ebx], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	mov edx, [0xd5ccae8]
	add edx, 0x8
	mov [ebx], edx
	mov [esp], eax
	call _Unwind_Resume
	nop


;dCreateGeomTransform
dCreateGeomTransform:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	call ODE_AllocateGeom
	mov ebx, eax
	test eax, eax
	jz dCreateGeomTransform_10
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZN15dxGeomTransformC1EP7dxSpaceP6dxBody
	mov eax, ebx
	add esp, 0x14
	pop ebx
	pop ebp
	ret
dCreateGeomTransform_10:
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	mov [esp], eax
	call _Unwind_Resume
	add [eax], al


;dGeomTransformSetGeom
dGeomTransformSetGeom:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov edx, [esi+0x4c]
	test edx, edx
	jz dGeomTransformSetGeom_10
	mov ecx, [esi+0x50]
	test ecx, ecx
	jnz dGeomTransformSetGeom_20
dGeomTransformSetGeom_10:
	mov [esp+0x4], ebx
	mov eax, [ebx+0x28]
	mov [esp], eax
	call dSpaceRemove
	mov [esp], ebx
	call _ZN6dxGeom10bodyRemoveEv
	mov [esi+0x4c], ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
dGeomTransformSetGeom_20:
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x4]
	mov [esp+0x4], ebx
	mov eax, [ebx+0x28]
	mov [esp], eax
	call dSpaceRemove
	mov [esp], ebx
	call _ZN6dxGeom10bodyRemoveEv
	mov [esi+0x4c], ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;Initialized global or static variables of collision_transform:
SECTION .data


;Initialized constant data of collision_transform:
SECTION .rdata
;VTable for dxGeomTransform:
_ZTV15dxGeomTransform: dd 0x0, 0x3b4e80, _ZN15dxGeomTransformD1Ev, _ZN15dxGeomTransformD0Ev, _ZN15dxGeomTransform11computeAABBEv, _ZN6dxGeom8AABBTestEPS_Pf, 0x0, 0x0


;Zero initialized global or static variables of collision_transform:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

