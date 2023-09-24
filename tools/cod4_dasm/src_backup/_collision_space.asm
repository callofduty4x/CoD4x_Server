;Imports of collision_space:
	extern Phys_NearCallback
	extern _ZN6dxGeomC2EP7dxSpaceiP6dxBody
	extern dFree
	extern ODE_GeomDestruct
	extern _Unwind_Resume
	extern dSetZero
	extern odeGlob
	extern _ZN6dxGeom8AABBTestEPS_Pf

;Exports of collision_space:
	global _Z12collideAABBsP6dxGeomS0_PvPFvS1_S0_S0_E
	global ODE_CollideSimpleSpaceWithGeomNoAABBTest
	global _ZN13dxSimpleSpace10cleanGeomsEv
	global _ZN13dxSimpleSpace7collideEPvPFvS0_P6dxGeomS2_E
	global _ZN13dxSimpleSpace8collide2EPvP6dxGeomPFvS0_S2_S2_E
	global _ZN13dxSimpleSpaceC1Ev
	global _ZN13dxSimpleSpaceD0Ev
	global _ZN13dxSimpleSpaceD1Ev
	global _ZN7dxSpace11computeAABBEv
	global _ZN7dxSpace3addEP6dxGeom
	global _ZN7dxSpace5clearEv
	global _ZN7dxSpace5dirtyEP6dxGeom
	global _ZN7dxSpace6removeEP6dxGeom
	global _ZN7dxSpace7getGeomEi
	global _ZN7dxSpaceD0Ev
	global _ZN7dxSpaceD1Ev
	global dGeomMoved
	global dGetSimpleSpace
	global dSpaceAdd
	global dSpaceCollide
	global dSpaceCollide2
	global dSpaceDestroy
	global dSpaceRemove
	global _ZTV13dxSimpleSpace
	global _ZTV7dxSpace


SECTION .text


;collideAABBs(dxGeom*, dxGeom*, void*, void (*)(void*, dxGeom*, dxGeom*))
_Z12collideAABBsP6dxGeomS0_PvPFvS1_S0_S0_E:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, eax
	mov esi, edx
	mov [ebp-0x1c], ecx
	mov eax, [eax+0x10]
	cmp eax, [edx+0x10]
	jz _Z12collideAABBsP6dxGeomS0_PvPFvS1_S0_S0_E_10
	mov eax, [ebx+0x44]
	test [edx+0x48], eax
	jz _Z12collideAABBsP6dxGeomS0_PvPFvS1_S0_S0_E_20
_Z12collideAABBsP6dxGeomS0_PvPFvS1_S0_S0_E_40:
	lea edi, [ebx+0x2c]
	lea edx, [esi+0x2c]
	movss xmm0, dword [ebx+0x2c]
	ucomiss xmm0, [edx+0x4]
	ja _Z12collideAABBsP6dxGeomS0_PvPFvS1_S0_S0_E_10
	movss xmm0, dword [esi+0x2c]
	ucomiss xmm0, [edi+0x4]
	ja _Z12collideAABBsP6dxGeomS0_PvPFvS1_S0_S0_E_10
	movss xmm0, dword [edi+0x8]
	ucomiss xmm0, [edx+0xc]
	ja _Z12collideAABBsP6dxGeomS0_PvPFvS1_S0_S0_E_10
	movss xmm0, dword [edx+0x8]
	ucomiss xmm0, [edi+0xc]
	ja _Z12collideAABBsP6dxGeomS0_PvPFvS1_S0_S0_E_10
	movss xmm0, dword [edi+0x10]
	ucomiss xmm0, [edx+0x14]
	ja _Z12collideAABBsP6dxGeomS0_PvPFvS1_S0_S0_E_10
	movss xmm0, dword [edx+0x10]
	ucomiss xmm0, [edi+0x14]
	jbe _Z12collideAABBsP6dxGeomS0_PvPFvS1_S0_S0_E_30
_Z12collideAABBsP6dxGeomS0_PvPFvS1_S0_S0_E_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12collideAABBsP6dxGeomS0_PvPFvS1_S0_S0_E_20:
	mov eax, [edx+0x44]
	test [ebx+0x48], eax
	jnz _Z12collideAABBsP6dxGeomS0_PvPFvS1_S0_S0_E_40
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12collideAABBsP6dxGeomS0_PvPFvS1_S0_S0_E_30:
	mov eax, [ebx]
	mov [esp+0x8], edx
	mov [esp+0x4], esi
	mov [esp], ebx
	call dword [eax+0xc]
	test eax, eax
	jz _Z12collideAABBsP6dxGeomS0_PvPFvS1_S0_S0_E_10
	mov eax, [esi]
	mov [esp+0x8], edi
	mov [esp+0x4], ebx
	mov [esp], esi
	call dword [eax+0xc]
	test eax, eax
	jz _Z12collideAABBsP6dxGeomS0_PvPFvS1_S0_S0_E_10
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call dword [ebp+0x8]
	jmp _Z12collideAABBsP6dxGeomS0_PvPFvS1_S0_S0_E_10
	nop


;ODE_CollideSimpleSpaceWithGeomNoAABBTest
ODE_CollideSimpleSpaceWithGeomNoAABBTest:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov edi, [ebp+0x10]
	mov eax, [esi+0x60]
	add eax, 0x1
	mov [esi+0x60], eax
	mov ebx, [esi+0x50]
	test ebx, ebx
	jnz ODE_CollideSimpleSpaceWithGeomNoAABBTest_10
	jmp ODE_CollideSimpleSpaceWithGeomNoAABBTest_20
ODE_CollideSimpleSpaceWithGeomNoAABBTest_50:
	mov ebx, [ebx+0x20]
	test ebx, ebx
	jz ODE_CollideSimpleSpaceWithGeomNoAABBTest_30
ODE_CollideSimpleSpaceWithGeomNoAABBTest_10:
	mov eax, [ebx+0x10]
	test eax, eax
	jz ODE_CollideSimpleSpaceWithGeomNoAABBTest_40
	test byte [eax+0x18], 0x4
	jnz ODE_CollideSimpleSpaceWithGeomNoAABBTest_50
ODE_CollideSimpleSpaceWithGeomNoAABBTest_40:
	test byte [ebx+0x8], 0x8
	jz ODE_CollideSimpleSpaceWithGeomNoAABBTest_50
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], edi
	call Phys_NearCallback
	mov ebx, [ebx+0x20]
	test ebx, ebx
	jnz ODE_CollideSimpleSpaceWithGeomNoAABBTest_10
ODE_CollideSimpleSpaceWithGeomNoAABBTest_30:
	mov eax, [esi+0x60]
ODE_CollideSimpleSpaceWithGeomNoAABBTest_20:
	sub eax, 0x1
	mov [esi+0x60], eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;dxSimpleSpace::cleanGeoms()
_ZN13dxSimpleSpace10cleanGeomsEv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov eax, [esi+0x60]
	add eax, 0x1
	mov [esi+0x60], eax
	mov ebx, [esi+0x50]
	test ebx, ebx
	jz _ZN13dxSimpleSpace10cleanGeomsEv_10
	mov edx, [ebx+0x8]
	test dl, 0x1
	jnz _ZN13dxSimpleSpace10cleanGeomsEv_20
_ZN13dxSimpleSpace10cleanGeomsEv_10:
	sub eax, 0x1
	mov [esi+0x60], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_ZN13dxSimpleSpace10cleanGeomsEv_50:
	mov eax, [ebx]
	mov [esp], ebx
	call dword [eax+0x20]
	mov edx, [ebx+0x8]
	test dl, 0x2
	jnz _ZN13dxSimpleSpace10cleanGeomsEv_30
_ZN13dxSimpleSpace10cleanGeomsEv_60:
	and edx, 0xfffffffc
	mov [ebx+0x8], edx
	mov ebx, [ebx+0x20]
	test ebx, ebx
	jz _ZN13dxSimpleSpace10cleanGeomsEv_40
_ZN13dxSimpleSpace10cleanGeomsEv_70:
	mov edx, [ebx+0x8]
	test dl, 0x1
	jz _ZN13dxSimpleSpace10cleanGeomsEv_40
_ZN13dxSimpleSpace10cleanGeomsEv_20:
	mov eax, [ebx+0x4]
	sub eax, 0x8
	cmp eax, 0x2
	jbe _ZN13dxSimpleSpace10cleanGeomsEv_50
	test dl, 0x2
	jz _ZN13dxSimpleSpace10cleanGeomsEv_60
_ZN13dxSimpleSpace10cleanGeomsEv_30:
	mov eax, [ebx]
	mov [esp], ebx
	call dword [eax+0x8]
	mov edx, [ebx+0x8]
	and edx, 0xfffffffd
	mov [ebx+0x8], edx
	and edx, 0xfffffffc
	mov [ebx+0x8], edx
	mov ebx, [ebx+0x20]
	test ebx, ebx
	jnz _ZN13dxSimpleSpace10cleanGeomsEv_70
_ZN13dxSimpleSpace10cleanGeomsEv_40:
	mov eax, [esi+0x60]
	sub eax, 0x1
	mov [esi+0x60], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;dxSimpleSpace::collide(void*, void (*)(void*, dxGeom*, dxGeom*))
_ZN13dxSimpleSpace7collideEPvPFvS0_P6dxGeomS2_E:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	add dword [edi+0x60], 0x1
	mov eax, [edi]
	mov [esp], edi
	call dword [eax+0x20]
	mov esi, [edi+0x50]
	test esi, esi
	jz _ZN13dxSimpleSpace7collideEPvPFvS0_P6dxGeomS2_E_10
_ZN13dxSimpleSpace7collideEPvPFvS0_P6dxGeomS2_E_80:
	test byte [esi+0x8], 0x8
	jz _ZN13dxSimpleSpace7collideEPvPFvS0_P6dxGeomS2_E_20
	mov eax, [esi+0x10]
	test eax, eax
	jz _ZN13dxSimpleSpace7collideEPvPFvS0_P6dxGeomS2_E_30
	test byte [eax+0x18], 0x4
	jz _ZN13dxSimpleSpace7collideEPvPFvS0_P6dxGeomS2_E_30
	mov edx, 0x1
_ZN13dxSimpleSpace7collideEPvPFvS0_P6dxGeomS2_E_90:
	mov ebx, [esi+0x20]
	mov eax, ebx
	test ebx, ebx
	jz _ZN13dxSimpleSpace7collideEPvPFvS0_P6dxGeomS2_E_40
	test dl, dl
	jz _ZN13dxSimpleSpace7collideEPvPFvS0_P6dxGeomS2_E_50
	jmp _ZN13dxSimpleSpace7collideEPvPFvS0_P6dxGeomS2_E_60
_ZN13dxSimpleSpace7collideEPvPFvS0_P6dxGeomS2_E_70:
	mov ebx, [ebx+0x20]
	test ebx, ebx
	jz _ZN13dxSimpleSpace7collideEPvPFvS0_P6dxGeomS2_E_20
_ZN13dxSimpleSpace7collideEPvPFvS0_P6dxGeomS2_E_50:
	test byte [ebx+0x8], 0x8
	jz _ZN13dxSimpleSpace7collideEPvPFvS0_P6dxGeomS2_E_70
	mov eax, [ebp+0x10]
	mov [esp], eax
	mov ecx, [ebp+0xc]
	mov edx, ebx
	mov eax, esi
	call _Z12collideAABBsP6dxGeomS0_PvPFvS1_S0_S0_E
	mov ebx, [ebx+0x20]
	test ebx, ebx
	jnz _ZN13dxSimpleSpace7collideEPvPFvS0_P6dxGeomS2_E_50
_ZN13dxSimpleSpace7collideEPvPFvS0_P6dxGeomS2_E_20:
	mov eax, [esi+0x20]
_ZN13dxSimpleSpace7collideEPvPFvS0_P6dxGeomS2_E_40:
	mov esi, eax
	test eax, eax
	jnz _ZN13dxSimpleSpace7collideEPvPFvS0_P6dxGeomS2_E_80
_ZN13dxSimpleSpace7collideEPvPFvS0_P6dxGeomS2_E_10:
	sub dword [edi+0x60], 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN13dxSimpleSpace7collideEPvPFvS0_P6dxGeomS2_E_30:
	xor edx, edx
	jmp _ZN13dxSimpleSpace7collideEPvPFvS0_P6dxGeomS2_E_90
_ZN13dxSimpleSpace7collideEPvPFvS0_P6dxGeomS2_E_60:
	mov eax, [ebx+0x10]
	test eax, eax
	jz _ZN13dxSimpleSpace7collideEPvPFvS0_P6dxGeomS2_E_100
	test byte [eax+0x18], 0x4
	jnz _ZN13dxSimpleSpace7collideEPvPFvS0_P6dxGeomS2_E_110
_ZN13dxSimpleSpace7collideEPvPFvS0_P6dxGeomS2_E_100:
	test byte [ebx+0x8], 0x8
	jz _ZN13dxSimpleSpace7collideEPvPFvS0_P6dxGeomS2_E_110
	mov eax, [ebp+0x10]
	mov [esp], eax
	mov ecx, [ebp+0xc]
	mov edx, ebx
	mov eax, esi
	call _Z12collideAABBsP6dxGeomS0_PvPFvS1_S0_S0_E
_ZN13dxSimpleSpace7collideEPvPFvS0_P6dxGeomS2_E_110:
	mov ebx, [ebx+0x20]
	test ebx, ebx
	jnz _ZN13dxSimpleSpace7collideEPvPFvS0_P6dxGeomS2_E_60
	mov eax, [esi+0x20]
	jmp _ZN13dxSimpleSpace7collideEPvPFvS0_P6dxGeomS2_E_40


;dxSimpleSpace::collide2(void*, dxGeom*, void (*)(void*, dxGeom*, dxGeom*))
_ZN13dxSimpleSpace8collide2EPvP6dxGeomPFvS0_S2_S2_E:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov edi, [ebp+0x10]
	add dword [esi+0x60], 0x1
	mov eax, [esi]
	mov [esp], esi
	call dword [eax+0x20]
	test byte [edi+0x8], 0x2
	jnz _ZN13dxSimpleSpace8collide2EPvP6dxGeomPFvS0_S2_S2_E_10
_ZN13dxSimpleSpace8collide2EPvP6dxGeomPFvS0_S2_S2_E_60:
	mov ebx, [esi+0x50]
	test ebx, ebx
	jnz _ZN13dxSimpleSpace8collide2EPvP6dxGeomPFvS0_S2_S2_E_20
	jmp _ZN13dxSimpleSpace8collide2EPvP6dxGeomPFvS0_S2_S2_E_30
_ZN13dxSimpleSpace8collide2EPvP6dxGeomPFvS0_S2_S2_E_50:
	mov ebx, [ebx+0x20]
	test ebx, ebx
	jz _ZN13dxSimpleSpace8collide2EPvP6dxGeomPFvS0_S2_S2_E_30
_ZN13dxSimpleSpace8collide2EPvP6dxGeomPFvS0_S2_S2_E_20:
	mov eax, [ebx+0x10]
	test eax, eax
	jz _ZN13dxSimpleSpace8collide2EPvP6dxGeomPFvS0_S2_S2_E_40
	test byte [eax+0x18], 0x4
	jnz _ZN13dxSimpleSpace8collide2EPvP6dxGeomPFvS0_S2_S2_E_50
_ZN13dxSimpleSpace8collide2EPvP6dxGeomPFvS0_S2_S2_E_40:
	test byte [ebx+0x8], 0x8
	jz _ZN13dxSimpleSpace8collide2EPvP6dxGeomPFvS0_S2_S2_E_50
	mov eax, [ebp+0x14]
	mov [esp], eax
	mov ecx, [ebp+0xc]
	mov edx, edi
	mov eax, ebx
	call _Z12collideAABBsP6dxGeomS0_PvPFvS1_S0_S0_E
	mov ebx, [ebx+0x20]
	test ebx, ebx
	jnz _ZN13dxSimpleSpace8collide2EPvP6dxGeomPFvS0_S2_S2_E_20
_ZN13dxSimpleSpace8collide2EPvP6dxGeomPFvS0_S2_S2_E_30:
	sub dword [esi+0x60], 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN13dxSimpleSpace8collide2EPvP6dxGeomPFvS0_S2_S2_E_10:
	mov eax, [edi]
	mov [esp], edi
	call dword [eax+0x8]
	and dword [edi+0x8], 0xfffffffd
	jmp _ZN13dxSimpleSpace8collide2EPvP6dxGeomPFvS0_S2_S2_E_60
	nop


;dxSimpleSpace::dxSimpleSpace()
_ZN13dxSimpleSpaceC1Ev:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call _ZN6dxGeomC2EP7dxSpaceiP6dxBody
	mov dword [ebx+0x4c], 0x0
	mov dword [ebx+0x50], 0x0
	mov dword [ebx+0x54], 0x1
	mov dword [ebx+0x58], 0x0
	mov dword [ebx+0x5c], 0x0
	mov dword [ebx+0x60], 0x0
	mov dword [ebx], _ZTV13dxSimpleSpace+0x8
	mov dword [ebx+0x4], 0x8
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop
	add [eax], al


;dxSimpleSpace::~dxSimpleSpace()
_ZN13dxSimpleSpaceD0Ev:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov dword [esi], _ZTV7dxSpace+0x8
	mov eax, [esi+0x54]
	test eax, eax
	jz _ZN13dxSimpleSpaceD0Ev_10
	mov eax, [esi+0x50]
	test eax, eax
	jnz _ZN13dxSimpleSpaceD0Ev_20
	mov eax, [0xd5ccae8]
	add eax, 0x8
	mov [esi], eax
	mov dword [esp+0x4], 0x64
	mov [esp], esi
	call dFree
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_ZN13dxSimpleSpaceD0Ev_30:
	mov eax, ebx
_ZN13dxSimpleSpaceD0Ev_20:
	mov ebx, [eax+0x20]
	mov [esp], eax
	call ODE_GeomDestruct
	test ebx, ebx
	jnz _ZN13dxSimpleSpaceD0Ev_30
	mov eax, [0xd5ccae8]
	add eax, 0x8
	mov [esi], eax
	mov dword [esp+0x4], 0x64
	mov [esp], esi
	call dFree
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_ZN13dxSimpleSpaceD0Ev_10:
	mov edx, [esi+0x50]
	test edx, edx
	jnz _ZN13dxSimpleSpaceD0Ev_40
	mov eax, [0xd5ccae8]
	add eax, 0x8
	mov [esi], eax
	mov dword [esp+0x4], 0x64
	mov [esp], esi
	call dFree
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_ZN13dxSimpleSpaceD0Ev_50:
	mov edx, ebx
_ZN13dxSimpleSpaceD0Ev_40:
	mov ebx, [edx+0x20]
	mov eax, [esi]
	mov [esp+0x4], edx
	mov [esp], esi
	call dword [eax+0x18]
	test ebx, ebx
	jnz _ZN13dxSimpleSpaceD0Ev_50
	mov eax, [0xd5ccae8]
	add eax, 0x8
	mov [esi], eax
	mov dword [esp+0x4], 0x64
	mov [esp], esi
	call dFree
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	mov edx, [0xd5ccae8]
	add edx, 0x8
	mov [esi], edx
	mov [esp], eax
	call _Unwind_Resume
	nop


;dxSimpleSpace::~dxSimpleSpace()
_ZN13dxSimpleSpaceD1Ev:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov dword [esi], _ZTV7dxSpace+0x8
	mov eax, [esi+0x54]
	test eax, eax
	jz _ZN13dxSimpleSpaceD1Ev_10
	mov eax, [esi+0x50]
	test eax, eax
	jnz _ZN13dxSimpleSpaceD1Ev_20
	mov eax, [0xd5ccae8]
	add eax, 0x8
	mov [esi], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_ZN13dxSimpleSpaceD1Ev_30:
	mov eax, ebx
_ZN13dxSimpleSpaceD1Ev_20:
	mov ebx, [eax+0x20]
	mov [esp], eax
	call ODE_GeomDestruct
	test ebx, ebx
	jnz _ZN13dxSimpleSpaceD1Ev_30
	mov eax, [0xd5ccae8]
	add eax, 0x8
	mov [esi], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_ZN13dxSimpleSpaceD1Ev_10:
	mov edx, [esi+0x50]
	test edx, edx
	jnz _ZN13dxSimpleSpaceD1Ev_40
	mov eax, [0xd5ccae8]
	add eax, 0x8
	mov [esi], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_ZN13dxSimpleSpaceD1Ev_50:
	mov edx, ebx
_ZN13dxSimpleSpaceD1Ev_40:
	mov ebx, [edx+0x20]
	mov eax, [esi]
	mov [esp+0x4], edx
	mov [esp], esi
	call dword [eax+0x18]
	test ebx, ebx
	jnz _ZN13dxSimpleSpaceD1Ev_50
	mov eax, [0xd5ccae8]
	add eax, 0x8
	mov [esi], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	mov edx, [0xd5ccae8]
	add edx, 0x8
	mov [esi], edx
	mov [esp], eax
	call _Unwind_Resume
	nop


;dxSpace::computeAABB()
_ZN7dxSpace11computeAABBEv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edi, [ebp+0x8]
	mov edx, [edi+0x50]
	test edx, edx
	jz _ZN7dxSpace11computeAABBEv_10
	mov edx, 0x7f7fffff
	mov [ebp-0x30], edx
	mov eax, 0xff7fffff
	mov [ebp-0x2c], eax
	mov [ebp-0x28], edx
	mov [ebp-0x24], eax
	mov [ebp-0x20], edx
	mov [ebp-0x1c], eax
	mov ebx, [edi+0x50]
	test ebx, ebx
	jz _ZN7dxSpace11computeAABBEv_20
	lea esi, [ebp-0x30]
_ZN7dxSpace11computeAABBEv_80:
	test byte [ebx+0x8], 0x2
	jnz _ZN7dxSpace11computeAABBEv_30
_ZN7dxSpace11computeAABBEv_90:
	mov edx, ebx
	mov ecx, 0x2
	lea eax, [esi+0x8]
_ZN7dxSpace11computeAABBEv_50:
	movss xmm1, dword [edx+0x2c]
	movss xmm0, dword [eax-0x8]
	ucomiss xmm0, xmm1
	jbe _ZN7dxSpace11computeAABBEv_40
	movss [eax-0x8], xmm1
_ZN7dxSpace11computeAABBEv_40:
	add ecx, 0x2
	add eax, 0x8
	add edx, 0x8
	cmp ecx, 0x8
	jnz _ZN7dxSpace11computeAABBEv_50
	mov eax, ebx
	mov edx, esi
_ZN7dxSpace11computeAABBEv_70:
	movss xmm0, dword [eax+0x30]
	ucomiss xmm0, [edx+0x4]
	jbe _ZN7dxSpace11computeAABBEv_60
	movss [edx+0x4], xmm0
_ZN7dxSpace11computeAABBEv_60:
	add eax, 0x8
	add edx, 0x8
	lea ecx, [ebp-0x18]
	cmp ecx, edx
	jnz _ZN7dxSpace11computeAABBEv_70
	mov ebx, [ebx+0x20]
	test ebx, ebx
	jnz _ZN7dxSpace11computeAABBEv_80
_ZN7dxSpace11computeAABBEv_20:
	lea edx, [edi+0x2c]
	mov eax, [ebp-0x30]
	mov [edi+0x2c], eax
	mov eax, [ebp-0x2c]
	mov [edx+0x4], eax
	mov eax, [ebp-0x28]
	mov [edx+0x8], eax
	mov eax, [ebp-0x24]
	mov [edx+0xc], eax
	mov eax, [ebp-0x20]
	mov [edx+0x10], eax
	mov eax, [ebp-0x1c]
	mov [edx+0x14], eax
_ZN7dxSpace11computeAABBEv_100:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN7dxSpace11computeAABBEv_30:
	mov eax, [ebx]
	mov [esp], ebx
	call dword [eax+0x8]
	and dword [ebx+0x8], 0xfffffffd
	jmp _ZN7dxSpace11computeAABBEv_90
_ZN7dxSpace11computeAABBEv_10:
	mov dword [esp+0x4], 0x6
	lea eax, [edi+0x2c]
	mov [esp], eax
	call dSetZero
	jmp _ZN7dxSpace11computeAABBEv_100


;dxSpace::add(dxGeom*)
_ZN7dxSpace3addEP6dxGeom:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov [ecx+0x28], esi
	lea edx, [esi+0x50]
	mov eax, [esi+0x50]
	mov [ecx+0x20], eax
	mov [ecx+0x24], edx
	mov edx, [esi+0x50]
	test edx, edx
	jz _ZN7dxSpace3addEP6dxGeom_10
	lea eax, [ecx+0x20]
	mov [edx+0x24], eax
_ZN7dxSpace3addEP6dxGeom_10:
	mov [esi+0x50], ecx
	add dword [esi+0x4c], 0x1
	mov dword [esi+0x5c], 0x0
	or dword [ecx+0x8], 0x3
	mov edx, esi
	mov ebx, [esi+0x28]
	test ebx, ebx
	jz _ZN7dxSpace3addEP6dxGeom_20
	mov ecx, [esi+0x8]
	test cl, 0x1
	jz _ZN7dxSpace3addEP6dxGeom_30
	mov eax, ecx
	jmp _ZN7dxSpace3addEP6dxGeom_40
_ZN7dxSpace3addEP6dxGeom_50:
	mov eax, [eax+0x8]
_ZN7dxSpace3addEP6dxGeom_40:
	or eax, 0x3
	mov [edx+0x8], eax
	mov eax, [edx+0x28]
	mov edx, eax
	test eax, eax
	jnz _ZN7dxSpace3addEP6dxGeom_50
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_ZN7dxSpace3addEP6dxGeom_60:
	mov eax, [edx+0x8]
	mov ecx, eax
	test al, 0x1
	jnz _ZN7dxSpace3addEP6dxGeom_40
_ZN7dxSpace3addEP6dxGeom_30:
	or ecx, 0x3
	mov [edx+0x8], ecx
	mov eax, [ebx]
	mov [esp+0x4], edx
	mov [esp], ebx
	call dword [eax+0x1c]
	mov edx, ebx
	mov ebx, [ebx+0x28]
	test ebx, ebx
	jnz _ZN7dxSpace3addEP6dxGeom_60
	mov eax, [edx+0x8]
	jmp _ZN7dxSpace3addEP6dxGeom_40
_ZN7dxSpace3addEP6dxGeom_20:
	mov eax, [esi+0x8]
	jmp _ZN7dxSpace3addEP6dxGeom_40


;dxSpace::clear()
_ZN7dxSpace5clearEv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov eax, [esi+0x54]
	test eax, eax
	jz _ZN7dxSpace5clearEv_10
	mov eax, [esi+0x50]
	test eax, eax
	jnz _ZN7dxSpace5clearEv_20
_ZN7dxSpace5clearEv_40:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_ZN7dxSpace5clearEv_30:
	mov eax, ebx
_ZN7dxSpace5clearEv_20:
	mov ebx, [eax+0x20]
	mov [esp], eax
	call ODE_GeomDestruct
	test ebx, ebx
	jnz _ZN7dxSpace5clearEv_30
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_ZN7dxSpace5clearEv_10:
	mov edx, [esi+0x50]
	test edx, edx
	jz _ZN7dxSpace5clearEv_40
	mov ebx, [edx+0x20]
	mov eax, [esi]
	mov [esp+0x4], edx
	mov [esp], esi
	call dword [eax+0x18]
	test ebx, ebx
	jz _ZN7dxSpace5clearEv_40
_ZN7dxSpace5clearEv_50:
	mov edx, ebx
	mov ebx, [edx+0x20]
	mov eax, [esi]
	mov [esp+0x4], edx
	mov [esp], esi
	call dword [eax+0x18]
	test ebx, ebx
	jnz _ZN7dxSpace5clearEv_50
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;dxSpace::dirty(dxGeom*)
_ZN7dxSpace5dirtyEP6dxGeom:
	push ebp
	mov ebp, esp
	push ebx
	mov ebx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov edx, [ecx+0x20]
	test edx, edx
	jz _ZN7dxSpace5dirtyEP6dxGeom_10
	mov eax, [ecx+0x24]
	mov [edx+0x24], eax
_ZN7dxSpace5dirtyEP6dxGeom_10:
	mov eax, [ecx+0x24]
	mov [eax], edx
	lea edx, [ebx+0x50]
	mov eax, [ebx+0x50]
	mov [ecx+0x20], eax
	mov [ecx+0x24], edx
	mov edx, [ebx+0x50]
	test edx, edx
	jz _ZN7dxSpace5dirtyEP6dxGeom_20
	lea eax, [ecx+0x20]
	mov [edx+0x24], eax
_ZN7dxSpace5dirtyEP6dxGeom_20:
	mov [ebx+0x50], ecx
	pop ebx
	pop ebp
	ret
	nop


;dxSpace::remove(dxGeom*)
_ZN7dxSpace6removeEP6dxGeom:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov edx, [ecx+0x20]
	test edx, edx
	jz _ZN7dxSpace6removeEP6dxGeom_10
	mov eax, [ecx+0x24]
	mov [edx+0x24], eax
_ZN7dxSpace6removeEP6dxGeom_10:
	mov eax, [ecx+0x24]
	mov [eax], edx
	sub dword [esi+0x4c], 0x1
	mov dword [ecx+0x20], 0x0
	mov dword [ecx+0x24], 0x0
	mov dword [ecx+0x28], 0x0
	mov dword [esi+0x5c], 0x0
	mov edx, esi
	mov ebx, [esi+0x28]
	test ebx, ebx
	jz _ZN7dxSpace6removeEP6dxGeom_20
	mov ecx, [esi+0x8]
	test cl, 0x1
	jz _ZN7dxSpace6removeEP6dxGeom_30
	mov eax, ecx
	jmp _ZN7dxSpace6removeEP6dxGeom_40
_ZN7dxSpace6removeEP6dxGeom_50:
	mov eax, [eax+0x8]
_ZN7dxSpace6removeEP6dxGeom_40:
	or eax, 0x3
	mov [edx+0x8], eax
	mov eax, [edx+0x28]
	mov edx, eax
	test eax, eax
	jnz _ZN7dxSpace6removeEP6dxGeom_50
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_ZN7dxSpace6removeEP6dxGeom_60:
	mov eax, [edx+0x8]
	mov ecx, eax
	test al, 0x1
	jnz _ZN7dxSpace6removeEP6dxGeom_40
_ZN7dxSpace6removeEP6dxGeom_30:
	or ecx, 0x3
	mov [edx+0x8], ecx
	mov eax, [ebx]
	mov [esp+0x4], edx
	mov [esp], ebx
	call dword [eax+0x1c]
	mov edx, ebx
	mov ebx, [ebx+0x28]
	test ebx, ebx
	jnz _ZN7dxSpace6removeEP6dxGeom_60
	mov eax, [edx+0x8]
	jmp _ZN7dxSpace6removeEP6dxGeom_40
_ZN7dxSpace6removeEP6dxGeom_20:
	mov eax, [esi+0x8]
	jmp _ZN7dxSpace6removeEP6dxGeom_40


;dxSpace::getGeom(int)
_ZN7dxSpace7getGeomEi:
	push ebp
	mov ebp, esp
	push ebx
	mov ecx, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov edx, [ecx+0x5c]
	test edx, edx
	jz _ZN7dxSpace7getGeomEi_10
	lea eax, [ebx-0x1]
	cmp [ecx+0x58], eax
	jz _ZN7dxSpace7getGeomEi_20
_ZN7dxSpace7getGeomEi_10:
	mov eax, [ecx+0x50]
	test ebx, ebx
	jg _ZN7dxSpace7getGeomEi_30
_ZN7dxSpace7getGeomEi_50:
	mov [ecx+0x5c], eax
	mov [ecx+0x58], ebx
	pop ebx
	pop ebp
	ret
_ZN7dxSpace7getGeomEi_20:
	mov eax, [edx+0x20]
	mov [ecx+0x5c], eax
	mov [ecx+0x58], ebx
	pop ebx
	pop ebp
	ret
_ZN7dxSpace7getGeomEi_30:
	test eax, eax
	jz _ZN7dxSpace7getGeomEi_40
	xor edx, edx
_ZN7dxSpace7getGeomEi_60:
	mov eax, [eax+0x20]
	add edx, 0x1
	cmp ebx, edx
	jz _ZN7dxSpace7getGeomEi_50
	test eax, eax
	jnz _ZN7dxSpace7getGeomEi_60
_ZN7dxSpace7getGeomEi_40:
	xor eax, eax
	pop ebx
	pop ebp
	ret


;dxSpace::~dxSpace()
_ZN7dxSpaceD0Ev:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov dword [esi], _ZTV7dxSpace+0x8
	mov eax, [esi+0x54]
	test eax, eax
	jz _ZN7dxSpaceD0Ev_10
	mov eax, [esi+0x50]
	test eax, eax
	jnz _ZN7dxSpaceD0Ev_20
	mov eax, [0xd5ccae8]
	add eax, 0x8
	mov [esi], eax
	mov dword [esp+0x4], 0x64
	mov [esp], esi
	call dFree
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_ZN7dxSpaceD0Ev_30:
	mov eax, ebx
_ZN7dxSpaceD0Ev_20:
	mov ebx, [eax+0x20]
	mov [esp], eax
	call ODE_GeomDestruct
	test ebx, ebx
	jnz _ZN7dxSpaceD0Ev_30
	mov eax, [0xd5ccae8]
	add eax, 0x8
	mov [esi], eax
	mov dword [esp+0x4], 0x64
	mov [esp], esi
	call dFree
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_ZN7dxSpaceD0Ev_10:
	mov edx, [esi+0x50]
	test edx, edx
	jnz _ZN7dxSpaceD0Ev_40
	mov eax, [0xd5ccae8]
	add eax, 0x8
	mov [esi], eax
	mov dword [esp+0x4], 0x64
	mov [esp], esi
	call dFree
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_ZN7dxSpaceD0Ev_50:
	mov edx, ebx
_ZN7dxSpaceD0Ev_40:
	mov ebx, [edx+0x20]
	mov eax, [esi]
	mov [esp+0x4], edx
	mov [esp], esi
	call dword [eax+0x18]
	test ebx, ebx
	jnz _ZN7dxSpaceD0Ev_50
	mov eax, [0xd5ccae8]
	add eax, 0x8
	mov [esi], eax
	mov dword [esp+0x4], 0x64
	mov [esp], esi
	call dFree
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	mov edx, [0xd5ccae8]
	add edx, 0x8
	mov [esi], edx
	mov [esp], eax
	call _Unwind_Resume
	nop


;dxSpace::~dxSpace()
_ZN7dxSpaceD1Ev:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov dword [esi], _ZTV7dxSpace+0x8
	mov ebx, [esi+0x54]
	test ebx, ebx
	jz _ZN7dxSpaceD1Ev_10
	mov eax, [esi+0x50]
	test eax, eax
	jnz _ZN7dxSpaceD1Ev_20
	mov eax, [0xd5ccae8]
	add eax, 0x8
	mov [esi], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_ZN7dxSpaceD1Ev_30:
	mov eax, ebx
_ZN7dxSpaceD1Ev_20:
	mov ebx, [eax+0x20]
	mov [esp], eax
	call ODE_GeomDestruct
	test ebx, ebx
	jnz _ZN7dxSpaceD1Ev_30
	mov eax, [0xd5ccae8]
	add eax, 0x8
	mov [esi], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_ZN7dxSpaceD1Ev_10:
	mov edx, [esi+0x50]
	test edx, edx
	jnz _ZN7dxSpaceD1Ev_40
	mov eax, [0xd5ccae8]
	add eax, 0x8
	mov [esi], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_ZN7dxSpaceD1Ev_50:
	mov edx, ebx
_ZN7dxSpaceD1Ev_40:
	mov ebx, [edx+0x20]
	mov eax, [esi]
	mov [esp+0x4], edx
	mov [esp], esi
	call dword [eax+0x18]
	test ebx, ebx
	jnz _ZN7dxSpaceD1Ev_50
	mov eax, [0xd5ccae8]
	add eax, 0x8
	mov [esi], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	mov edx, [0xd5ccae8]
	add edx, 0x8
	mov [esi], edx
	mov [esp], eax
	call _Unwind_Resume
	nop


;dGeomMoved
dGeomMoved:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x28]
	mov ebx, edx
	test edx, edx
	jz dGeomMoved_10
	mov eax, [ecx+0x8]
	test al, 0x1
	jz dGeomMoved_20
dGeomMoved_60:
	or eax, 0x3
	mov [ecx+0x8], eax
	mov ecx, edx
	test edx, edx
	jz dGeomMoved_30
dGeomMoved_40:
	mov edx, [edx+0x28]
dGeomMoved_10:
	mov eax, [ecx+0x8]
	or eax, 0x3
	mov [ecx+0x8], eax
	mov ecx, edx
	test edx, edx
	jnz dGeomMoved_40
dGeomMoved_30:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
dGeomMoved_20:
	or eax, 0x3
	mov [ecx+0x8], eax
	mov eax, [ebx]
	mov [esp+0x4], ecx
	mov [esp], ebx
	call dword [eax+0x1c]
	mov ecx, ebx
	mov ebx, [ebx+0x28]
	test ebx, ebx
	jz dGeomMoved_50
	mov eax, [ecx+0x8]
	test al, 0x1
	jz dGeomMoved_20
	mov edx, ebx
	jmp dGeomMoved_60
dGeomMoved_50:
	xor edx, edx
	mov eax, [ecx+0x8]
	jmp dGeomMoved_60
	nop


;dGetSimpleSpace
dGetSimpleSpace:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	lea eax, [esi+esi*4]
	lea eax, [eax+eax*4]
	mov edx, odeGlob
	lea ebx, [edx+eax*4+0x30330]
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call _ZN6dxGeomC2EP7dxSpaceiP6dxBody
	mov dword [ebx+0x4c], 0x0
	mov dword [ebx+0x50], 0x0
	mov dword [ebx+0x54], 0x1
	mov dword [ebx+0x58], 0x0
	mov dword [ebx+0x5c], 0x0
	mov dword [ebx+0x60], 0x0
	mov dword [ebx], _ZTV13dxSimpleSpace+0x8
	mov dword [ebx+0x4], 0x8
	lea eax, [esi+esi*4]
	lea eax, [eax+eax*4]
	mov edx, odeGlob
	lea eax, [edx+eax*4+0x30330]
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	mov [esp], eax
	call _Unwind_Resume
	nop


;dSpaceAdd
dSpaceAdd:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov ecx, [edx+0x14]
	pop ebp
	jmp ecx


;dSpaceCollide
dSpaceCollide:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov ecx, [edx]
	mov ecx, [ecx+0x24]
	pop ebp
	jmp ecx


;dSpaceCollide2
dSpaceCollide2:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ecx, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov eax, [ebp+0x10]
	mov [ebp-0x1c], eax
	mov edx, [ebp+0x14]
	mov [ebp-0x20], edx
	mov eax, [ecx+0x4]
	sub eax, 0x8
	xor edx, edx
	cmp eax, 0x3
	mov esi, edx
	cmovb esi, ecx
	mov eax, [ebx+0x4]
	sub eax, 0x8
	cmp eax, 0x3
	mov edi, edx
	cmovb edi, ebx
	test esi, esi
	jz dSpaceCollide2_10
	test edi, edi
	jz dSpaceCollide2_20
	cmp esi, edi
	jz dSpaceCollide2_30
	mov eax, [esi+0x4c]
	cmp eax, [edi+0x4c]
	jl dSpaceCollide2_40
	mov ebx, [edi+0x50]
	test ebx, ebx
	jz dSpaceCollide2_50
dSpaceCollide2_80:
	mov eax, [ebx+0x10]
	test eax, eax
	jz dSpaceCollide2_60
	test byte [eax+0x18], 0x4
	jnz dSpaceCollide2_70
dSpaceCollide2_60:
	mov eax, [esi]
	mov ecx, [ebp-0x20]
	mov [esp+0xc], ecx
	mov [esp+0x8], ebx
	mov edx, [ebp-0x1c]
	mov [esp+0x4], edx
	mov [esp], esi
	call dword [eax+0x28]
dSpaceCollide2_70:
	mov ebx, [ebx+0x20]
	test ebx, ebx
	jnz dSpaceCollide2_80
dSpaceCollide2_50:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
dSpaceCollide2_40:
	mov ebx, [esi+0x50]
	test ebx, ebx
	jz dSpaceCollide2_50
dSpaceCollide2_110:
	mov eax, [ebx+0x10]
	test eax, eax
	jz dSpaceCollide2_90
	test byte [eax+0x18], 0x4
	jnz dSpaceCollide2_100
dSpaceCollide2_90:
	mov eax, [edi]
	mov ecx, [ebp-0x20]
	mov [esp+0xc], ecx
	mov [esp+0x8], ebx
	mov edx, [ebp-0x1c]
	mov [esp+0x4], edx
	mov [esp], edi
	call dword [eax+0x28]
dSpaceCollide2_100:
	mov ebx, [ebx+0x20]
	test ebx, ebx
	jnz dSpaceCollide2_110
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
dSpaceCollide2_10:
	test edi, edi
	jz dSpaceCollide2_120
	mov eax, [ecx+0x10]
	test eax, eax
	jz dSpaceCollide2_130
	test byte [eax+0x18], 0x4
	jnz dSpaceCollide2_50
dSpaceCollide2_130:
	mov eax, [edi]
	mov edx, [ebp-0x20]
	mov [ebp+0x14], edx
	mov [ebp+0x10], ecx
	mov ecx, [ebp-0x1c]
	mov [ebp+0xc], ecx
	mov [ebp+0x8], edi
	mov ecx, [eax+0x28]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp ecx
dSpaceCollide2_20:
	mov eax, [ebx+0x10]
	test eax, eax
	jz dSpaceCollide2_140
	test byte [eax+0x18], 0x4
	jnz dSpaceCollide2_50
dSpaceCollide2_140:
	mov eax, [esi]
	mov ecx, [ebp-0x20]
	mov [ebp+0x14], ecx
	mov [ebp+0x10], ebx
	mov edx, [ebp-0x1c]
	mov [ebp+0xc], edx
	mov [ebp+0x8], esi
	mov ecx, [eax+0x28]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp ecx
dSpaceCollide2_30:
	mov eax, [edi]
	mov ecx, [ebp-0x20]
	mov [ebp+0x10], ecx
	mov edx, [ebp-0x1c]
	mov [ebp+0xc], edx
	mov [ebp+0x8], edi
	mov ecx, [eax+0x24]
dSpaceCollide2_150:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp ecx
dSpaceCollide2_120:
	mov [ebp+0x10], ebx
	mov [ebp+0xc], ecx
	mov eax, [ebp-0x1c]
	mov [ebp+0x8], eax
	mov ecx, [ebp-0x20]
	jmp dSpaceCollide2_150
	nop


;dSpaceDestroy
dSpaceDestroy:
	push ebp
	mov ebp, esp
	pop ebp
	jmp ODE_GeomDestruct
	nop


;dSpaceRemove
dSpaceRemove:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov ecx, [edx+0x18]
	pop ebp
	jmp ecx


;Initialized global or static variables of collision_space:
SECTION .data


;Initialized constant data of collision_space:
SECTION .rdata
;VTable for dxSimpleSpace:
_ZTV13dxSimpleSpace: dd 0x0, 0x3b4e40, _ZN13dxSimpleSpaceD1Ev, _ZN13dxSimpleSpaceD0Ev, _ZN7dxSpace11computeAABBEv, _ZN6dxGeom8AABBTestEPS_Pf, _ZN7dxSpace7getGeomEi, _ZN7dxSpace3addEP6dxGeom, _ZN7dxSpace6removeEP6dxGeom, _ZN7dxSpace5dirtyEP6dxGeom, _ZN13dxSimpleSpace10cleanGeomsEv, _ZN13dxSimpleSpace7collideEPvPFvS0_P6dxGeomS2_E, _ZN13dxSimpleSpace8collide2EPvP6dxGeomPFvS0_S2_S2_E, 0x0
;VTable for dxSpace:
_ZTV7dxSpace: dd 0x0, 0x3b4e20, _ZN7dxSpaceD1Ev, _ZN7dxSpaceD0Ev, _ZN7dxSpace11computeAABBEv, _ZN6dxGeom8AABBTestEPS_Pf, _ZN7dxSpace7getGeomEi, _ZN7dxSpace3addEP6dxGeom, _ZN7dxSpace6removeEP6dxGeom, _ZN7dxSpace5dirtyEP6dxGeom, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of collision_space:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

