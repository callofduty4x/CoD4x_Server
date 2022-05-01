;Imports of collision_kernel:
	extern dSpaceCollide2
	extern _ZZ9Phys_InitvE15Phys_Stop_f_VAR
	extern memset
	extern _Z17dCollideTransformP6dxGeomS0_iP12dContactGeomi
	extern _Z20dCollideSphereSphereP6dxGeomS0_iP12dContactGeomi
	extern _Z16dCollideRayPlaneP6dxGeomS0_iP12dContactGeomi
	extern _Z20dCollideRayCCylinderP6dxGeomS0_iP12dContactGeomi
	extern _Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi
	extern _Z17dCollideRaySphereP6dxGeomS0_iP12dContactGeomi
	extern _Z22dCollideCCylinderPlaneP6dxGeomS0_iP12dContactGeomi
	extern _Z26dCollideCCylinderCCylinderP6dxGeomS0_iP12dContactGeomi
	extern _Z20dCollideCCylinderBoxP6dxGeomS0_iP12dContactGeomi
	extern _Z23dCollideCCylinderSphereP6dxGeomS0_iP12dContactGeomi
	extern _Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi
	extern _Z14dCollideBoxBoxP6dxGeomS0_iP12dContactGeomi
	extern _Z19dCollideSpherePlaneP6dxGeomS0_iP12dContactGeomi
	extern _Z17dCollideSphereBoxP6dxGeomS0_iP12dContactGeomi
	extern _Z16ODE_AllocateGeomv
	extern _Unwind_Resume
	extern dSpaceRemove
	extern dGeomBoxGetLengths
	extern ODE_GeomTransformGetAAContainedBox
	extern _Z30Phys_GeomUserGetAAContainedBoxP6dxGeomPfS1_
	extern odeGlob
	extern dFree
	extern dSetZero
	extern dSpaceAdd
	extern dGeomMoved
	extern _ZN15dxGeomTransform8DestructEv
	extern _Z24Sys_EnterCriticalSection15CriticalSection
	extern _Z9Pool_FreePvP10pooldata_t
	extern _Z24Sys_LeaveCriticalSection15CriticalSection
	extern _ZN7dxSpace5clearEv
	extern _ZTI7dxSpace
	extern _ZTI7CThread
	extern _ZTI12CSoundObject
	extern _ZTI15IDirect3DQuery9
	extern _ZTI8IUnknown

;Exports of collision_kernel:
	global _ZTV6dxGeom
	global _ZTI6dxGeom
	global num_user_classes
	global colliders_initialized
	global user_classes
	global colliders
	global _Z17dCollideSpaceGeomP6dxGeomS0_iP12dContactGeomi
	global _Z19space_geom_colliderPvP6dxGeomS1_
	global _Z24dCollideUserGeomWithGeomP6dxGeomS0_iP12dContactGeomi
	global _Z13initCollidersv
	global ODE_BodyGetFirstGeom
	global ODE_CreateGeom
	global ODE_GeomDestruct
	global ODE_GeomGetAAContainedBox
	global Phys_GetWorldGeom
	global _ZN10dxUserGeom11computeAABBEv
	global _ZN10dxUserGeom8AABBTestEP6dxGeomPf
	global _ZN10dxUserGeomD0Ev
	global _ZN10dxUserGeomD1Ev
	global _ZN6dxGeom10bodyRemoveEv
	global _ZN6dxGeom8AABBTestEPS_Pf
	global _ZN6dxGeomC2EP7dxSpaceiP6dxBody
	global _ZN6dxGeomD0Ev
	global _ZN6dxGeomD1Ev
	global _ZTI10dxUserGeom
	global _ZTI5dBase
	global dCloseODE
	global dCollide
	global dCreateGeomClass
	global dGeomDisable
	global dGeomEnable
	global dGeomFree
	global dGeomGetBody
	global dGeomGetBodyNext
	global dGeomGetClass
	global dGeomGetClassData
	global dGeomGetPosition
	global dGeomGetRotation
	global dInitUserGeom
	global _ZTV10dxUserGeom


SECTION .text


;dCollideSpaceGeom(dxGeom*, dxGeom*, int, dContactGeom*, int)
_Z17dCollideSpaceGeomP6dxGeomS0_iP12dContactGeomi:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x10]
	mov [ebp-0x14], ebx
	mov eax, [ebp+0x14]
	mov [ebp-0x10], eax
	mov eax, [ebp+0x18]
	mov [ebp-0xc], eax
	mov dword [esp+0xc], _Z19space_geom_colliderPvP6dxGeomS1_
	lea eax, [ebp-0x14]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call dSpaceCollide2
	movzx edx, bx
	movzx eax, word [ebp-0x14]
	sub edx, eax
	mov eax, edx
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;space_geom_collider(void*, dxGeom*, dxGeom*)
_Z19space_geom_colliderPvP6dxGeomS1_:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	test dx, dx
	jz _Z19space_geom_colliderPvP6dxGeomS1__10
	mov eax, [ebx+0x8]
	mov [esp+0x10], eax
	mov eax, [ebx+0x4]
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call dCollide
	mov edx, eax
	imul edx, [ebx+0x8]
	add [ebx+0x4], edx
	sub [ebx], eax
_Z19space_geom_colliderPvP6dxGeomS1__10:
	add esp, 0x24
	pop ebx
	pop ebp
	ret


;dCollideUserGeomWithGeom(dxGeom*, dxGeom*, int, dContactGeom*, int)
_Z24dCollideUserGeomWithGeomP6dxGeomS0_iP12dContactGeomi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, [ebp+0x8]
	mov [ebp-0x20], eax
	mov edx, [ebp+0xc]
	mov [ebp-0x24], edx
	mov eax, [ebp+0x10]
	mov [ebp-0x28], eax
	mov edx, [ebp+0x14]
	mov [ebp-0x2c], edx
	mov eax, [ebp+0x18]
	mov [ebp-0x30], eax
	mov edx, [ebp-0x20]
	mov edi, [edx+0x4]
	mov eax, [ebp-0x24]
	mov ebx, [eax+0x4]
	lea eax, [edi+edi*4]
	mov [esp], ebx
	call dword [eax*4+_ZZ9Phys_InitvE15Phys_Stop_f_VAR+0x30]
	mov esi, eax
	test eax, eax
	jz _Z24dCollideUserGeomWithGeomP6dxGeomS0_iP12dContactGeomi_10
_Z24dCollideUserGeomWithGeomP6dxGeomS0_iP12dContactGeomi_40:
	mov dword [ebp-0x1c], 0x0
_Z24dCollideUserGeomWithGeomP6dxGeomS0_iP12dContactGeomi_50:
	mov eax, edi
	shl eax, 0x4
	add eax, ebx
	mov ecx, colliders
	mov [eax*8+colliders], esi
	mov edx, [ebp-0x1c]
	mov [ecx+eax*8+0x4], edx
	shl ebx, 0x4
	lea edx, [ebx+edi]
	mov [edx*8+colliders], esi
	xor eax, eax
	cmp dword [ebp-0x1c], 0x0
	setz al
	mov [ecx+edx*8+0x4], eax
	mov eax, [ebp-0x30]
	mov [ebp+0x18], eax
	mov edx, [ebp-0x2c]
	mov [ebp+0x14], edx
	mov eax, [ebp-0x28]
	mov [ebp+0x10], eax
	mov edx, [ebp-0x24]
	mov [ebp+0xc], edx
	mov eax, [ebp-0x20]
	mov [ebp+0x8], eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp dCollide
_Z24dCollideUserGeomWithGeomP6dxGeomS0_iP12dContactGeomi_10:
	cmp ebx, 0xa
	jle _Z24dCollideUserGeomWithGeomP6dxGeomS0_iP12dContactGeomi_20
	cmp ebx, 0xf
	jle _Z24dCollideUserGeomWithGeomP6dxGeomS0_iP12dContactGeomi_30
_Z24dCollideUserGeomWithGeomP6dxGeomS0_iP12dContactGeomi_20:
	xor esi, esi
	jmp _Z24dCollideUserGeomWithGeomP6dxGeomS0_iP12dContactGeomi_40
_Z24dCollideUserGeomWithGeomP6dxGeomS0_iP12dContactGeomi_30:
	lea eax, [ebx+ebx*4]
	mov [esp], edi
	call dword [eax*4+_ZZ9Phys_InitvE15Phys_Stop_f_VAR+0x30]
	mov esi, eax
	mov dword [ebp-0x1c], 0x1
	jmp _Z24dCollideUserGeomWithGeomP6dxGeomS0_iP12dContactGeomi_50


;initColliders()
_Z13initCollidersv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov eax, [colliders_initialized]
	test eax, eax
	jz _Z13initCollidersv_10
_Z13initCollidersv_360:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13initCollidersv_10:
	mov dword [colliders_initialized], 0x1
	mov dword [esp+0x8], 0x800
	mov dword [esp+0x4], 0x0
	mov dword [esp], colliders
	call memset
	mov edi, 0x8
	mov esi, colliders+0x400
	mov ebx, colliders+0x40
_Z13initCollidersv_70:
	lea edx, [ebx+0x4]
	lea eax, [esi+0x4]
	mov ecx, 0x10
	jmp _Z13initCollidersv_20
_Z13initCollidersv_50:
	cmp dword [edx-0x4], 0x0
	jz _Z13initCollidersv_30
_Z13initCollidersv_60:
	sub edx, 0xffffff80
	add eax, 0x8
	sub ecx, 0x1
	jz _Z13initCollidersv_40
_Z13initCollidersv_20:
	cmp dword [eax-0x4], 0x0
	jnz _Z13initCollidersv_50
	mov dword [eax-0x4], _Z17dCollideSpaceGeomP6dxGeomS0_iP12dContactGeomi
	mov dword [eax], 0x0
	cmp dword [edx-0x4], 0x0
	jnz _Z13initCollidersv_60
_Z13initCollidersv_30:
	mov dword [edx-0x4], _Z17dCollideSpaceGeomP6dxGeomS0_iP12dContactGeomi
	mov dword [edx], 0x1
	sub edx, 0xffffff80
	add eax, 0x8
	sub ecx, 0x1
	jnz _Z13initCollidersv_20
_Z13initCollidersv_40:
	add edi, 0x1
	add ebx, 0x8
	sub esi, 0xffffff80
	cmp edi, 0xb
	jnz _Z13initCollidersv_70
	mov eax, [colliders]
	test eax, eax
	jz _Z13initCollidersv_80
_Z13initCollidersv_390:
	mov eax, [colliders]
	test eax, eax
	jz _Z13initCollidersv_90
_Z13initCollidersv_640:
	mov eax, [colliders+0x8]
	test eax, eax
	jz _Z13initCollidersv_100
_Z13initCollidersv_630:
	mov edi, [colliders+0x80]
	test edi, edi
	jz _Z13initCollidersv_110
_Z13initCollidersv_620:
	mov esi, [colliders+0x20]
	test esi, esi
	jz _Z13initCollidersv_120
_Z13initCollidersv_610:
	mov ebx, [colliders+0x200]
	test ebx, ebx
	jz _Z13initCollidersv_130
_Z13initCollidersv_600:
	mov ecx, [colliders+0x88]
	test ecx, ecx
	jz _Z13initCollidersv_140
_Z13initCollidersv_590:
	mov edx, [colliders+0x88]
	test edx, edx
	jz _Z13initCollidersv_150
_Z13initCollidersv_580:
	mov eax, [colliders+0xa0]
	test eax, eax
	jz _Z13initCollidersv_160
_Z13initCollidersv_570:
	mov eax, [colliders+0x208]
	test eax, eax
	jz _Z13initCollidersv_170
_Z13initCollidersv_560:
	mov eax, [colliders+0x100]
	test eax, eax
	jz _Z13initCollidersv_180
_Z13initCollidersv_550:
	mov eax, [colliders+0x10]
	test eax, eax
	jz _Z13initCollidersv_190
_Z13initCollidersv_540:
	mov eax, [colliders+0x108]
	test eax, eax
	jz _Z13initCollidersv_200
_Z13initCollidersv_530:
	mov eax, [colliders+0x90]
	test eax, eax
	jz _Z13initCollidersv_210
_Z13initCollidersv_520:
	mov edi, [colliders+0x110]
	test edi, edi
	jz _Z13initCollidersv_220
_Z13initCollidersv_510:
	mov esi, [colliders+0x110]
	test esi, esi
	jz _Z13initCollidersv_230
_Z13initCollidersv_500:
	mov ebx, [colliders+0x120]
	test ebx, ebx
	jz _Z13initCollidersv_240
_Z13initCollidersv_490:
	mov ecx, [colliders+0x210]
	test ecx, ecx
	jz _Z13initCollidersv_250
_Z13initCollidersv_480:
	mov edx, [colliders+0x280]
	test edx, edx
	jz _Z13initCollidersv_260
_Z13initCollidersv_470:
	mov eax, [colliders+0x28]
	test eax, eax
	jz _Z13initCollidersv_270
_Z13initCollidersv_460:
	mov eax, [colliders+0x288]
	test eax, eax
	jz _Z13initCollidersv_280
_Z13initCollidersv_450:
	mov eax, [colliders+0xa8]
	test eax, eax
	jz _Z13initCollidersv_290
_Z13initCollidersv_440:
	mov eax, [colliders+0x290]
	test eax, eax
	jz _Z13initCollidersv_300
_Z13initCollidersv_430:
	mov eax, [colliders+0x128]
	test eax, eax
	jz _Z13initCollidersv_310
_Z13initCollidersv_420:
	mov eax, [colliders+0x2a0]
	test eax, eax
	jz _Z13initCollidersv_320
_Z13initCollidersv_410:
	mov edi, [colliders+0x228]
	test edi, edi
	jz _Z13initCollidersv_330
_Z13initCollidersv_400:
	mov eax, colliders
	mov edx, colliders
	mov ecx, _Z17dCollideTransformP6dxGeomS0_iP12dContactGeomi
	jmp _Z13initCollidersv_340
_Z13initCollidersv_370:
	mov ebx, [edx+0x30]
	test ebx, ebx
	jz _Z13initCollidersv_350
_Z13initCollidersv_380:
	add eax, 0x8
	sub edx, 0xffffff80
	cmp eax, colliders+0x80
	jz _Z13initCollidersv_360
_Z13initCollidersv_340:
	mov esi, [eax+0x300]
	test esi, esi
	jnz _Z13initCollidersv_370
	mov [eax+0x300], ecx
	mov dword [eax+0x304], 0x0
	mov ebx, [edx+0x30]
	test ebx, ebx
	jnz _Z13initCollidersv_380
_Z13initCollidersv_350:
	mov [edx+0x30], ecx
	mov dword [edx+0x34], 0x1
	jmp _Z13initCollidersv_380
_Z13initCollidersv_80:
	mov eax, _Z20dCollideSphereSphereP6dxGeomS0_iP12dContactGeomi
	mov [colliders], eax
	mov dword [colliders+0x4], 0x0
	jmp _Z13initCollidersv_390
_Z13initCollidersv_330:
	mov eax, _Z16dCollideRayPlaneP6dxGeomS0_iP12dContactGeomi
	mov [colliders+0x228], eax
	mov dword [colliders+0x22c], 0x1
	jmp _Z13initCollidersv_400
_Z13initCollidersv_320:
	mov eax, _Z16dCollideRayPlaneP6dxGeomS0_iP12dContactGeomi
	mov [colliders+0x2a0], eax
	mov dword [colliders+0x2a4], 0x0
	jmp _Z13initCollidersv_410
_Z13initCollidersv_310:
	mov eax, _Z20dCollideRayCCylinderP6dxGeomS0_iP12dContactGeomi
	mov [colliders+0x128], eax
	mov dword [colliders+0x12c], 0x1
	jmp _Z13initCollidersv_420
_Z13initCollidersv_300:
	mov eax, _Z20dCollideRayCCylinderP6dxGeomS0_iP12dContactGeomi
	mov [colliders+0x290], eax
	mov dword [colliders+0x294], 0x0
	jmp _Z13initCollidersv_430
_Z13initCollidersv_290:
	mov eax, _Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi
	mov [colliders+0xa8], eax
	mov dword [colliders+0xac], 0x1
	jmp _Z13initCollidersv_440
_Z13initCollidersv_280:
	mov eax, _Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi
	mov [colliders+0x288], eax
	mov dword [colliders+0x28c], 0x0
	jmp _Z13initCollidersv_450
_Z13initCollidersv_270:
	mov eax, _Z17dCollideRaySphereP6dxGeomS0_iP12dContactGeomi
	mov [colliders+0x28], eax
	mov dword [colliders+0x2c], 0x1
	jmp _Z13initCollidersv_460
_Z13initCollidersv_260:
	mov eax, _Z17dCollideRaySphereP6dxGeomS0_iP12dContactGeomi
	mov [colliders+0x280], eax
	mov dword [colliders+0x284], 0x0
	jmp _Z13initCollidersv_470
_Z13initCollidersv_250:
	mov eax, _Z22dCollideCCylinderPlaneP6dxGeomS0_iP12dContactGeomi
	mov [colliders+0x210], eax
	mov dword [colliders+0x214], 0x1
	jmp _Z13initCollidersv_480
_Z13initCollidersv_240:
	mov eax, _Z22dCollideCCylinderPlaneP6dxGeomS0_iP12dContactGeomi
	mov [colliders+0x120], eax
	mov dword [colliders+0x124], 0x0
	jmp _Z13initCollidersv_490
_Z13initCollidersv_230:
	mov eax, _Z26dCollideCCylinderCCylinderP6dxGeomS0_iP12dContactGeomi
	mov [colliders+0x110], eax
	mov dword [colliders+0x114], 0x1
	jmp _Z13initCollidersv_500
_Z13initCollidersv_220:
	mov eax, _Z26dCollideCCylinderCCylinderP6dxGeomS0_iP12dContactGeomi
	mov [colliders+0x110], eax
	mov dword [colliders+0x114], 0x0
	jmp _Z13initCollidersv_510
_Z13initCollidersv_210:
	mov eax, _Z20dCollideCCylinderBoxP6dxGeomS0_iP12dContactGeomi
	mov [colliders+0x90], eax
	mov dword [colliders+0x94], 0x1
	jmp _Z13initCollidersv_520
_Z13initCollidersv_200:
	mov eax, _Z20dCollideCCylinderBoxP6dxGeomS0_iP12dContactGeomi
	mov [colliders+0x108], eax
	mov dword [colliders+0x10c], 0x0
	jmp _Z13initCollidersv_530
_Z13initCollidersv_190:
	mov eax, _Z23dCollideCCylinderSphereP6dxGeomS0_iP12dContactGeomi
	mov [colliders+0x10], eax
	mov dword [colliders+0x14], 0x1
	jmp _Z13initCollidersv_540
_Z13initCollidersv_180:
	mov eax, _Z23dCollideCCylinderSphereP6dxGeomS0_iP12dContactGeomi
	mov [colliders+0x100], eax
	mov dword [colliders+0x104], 0x0
	jmp _Z13initCollidersv_550
_Z13initCollidersv_170:
	mov eax, _Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi
	mov [colliders+0x208], eax
	mov dword [colliders+0x20c], 0x1
	jmp _Z13initCollidersv_560
_Z13initCollidersv_160:
	mov eax, _Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi
	mov [colliders+0xa0], eax
	mov dword [colliders+0xa4], 0x0
	jmp _Z13initCollidersv_570
_Z13initCollidersv_150:
	mov eax, _Z14dCollideBoxBoxP6dxGeomS0_iP12dContactGeomi
	mov [colliders+0x88], eax
	mov dword [colliders+0x8c], 0x1
	jmp _Z13initCollidersv_580
_Z13initCollidersv_140:
	mov eax, _Z14dCollideBoxBoxP6dxGeomS0_iP12dContactGeomi
	mov [colliders+0x88], eax
	mov dword [colliders+0x8c], 0x0
	jmp _Z13initCollidersv_590
_Z13initCollidersv_130:
	mov eax, _Z19dCollideSpherePlaneP6dxGeomS0_iP12dContactGeomi
	mov [colliders+0x200], eax
	mov dword [colliders+0x204], 0x1
	jmp _Z13initCollidersv_600
_Z13initCollidersv_120:
	mov eax, _Z19dCollideSpherePlaneP6dxGeomS0_iP12dContactGeomi
	mov [colliders+0x20], eax
	mov dword [colliders+0x24], 0x0
	jmp _Z13initCollidersv_610
_Z13initCollidersv_110:
	mov eax, _Z17dCollideSphereBoxP6dxGeomS0_iP12dContactGeomi
	mov [colliders+0x80], eax
	mov dword [colliders+0x84], 0x1
	jmp _Z13initCollidersv_620
_Z13initCollidersv_100:
	mov eax, _Z17dCollideSphereBoxP6dxGeomS0_iP12dContactGeomi
	mov [colliders+0x8], eax
	mov dword [colliders+0xc], 0x0
	jmp _Z13initCollidersv_630
_Z13initCollidersv_90:
	mov eax, _Z20dCollideSphereSphereP6dxGeomS0_iP12dContactGeomi
	mov [colliders], eax
	mov dword [colliders+0x4], 0x1
	jmp _Z13initCollidersv_640


;ODE_BodyGetFirstGeom
ODE_BodyGetFirstGeom:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x1c]
	pop ebp
	ret
	nop


;ODE_CreateGeom
ODE_CreateGeom:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	call _Z16ODE_AllocateGeomv
	mov ebx, eax
	test eax, eax
	jz ODE_CreateGeom_10
	mov eax, [ebp+0x10]
	mov [esp+0xc], eax
	lea eax, [edi+edi*4-0x37]
	lea esi, [eax*4]
	movzx eax, byte [esi+user_classes+0x10]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZN6dxGeomC2EP7dxSpaceiP6dxBody
	mov dword [ebx], _ZTV10dxUserGeom+0x8
	mov [ebx+0x4], edi
	lea edx, [ebx+0x4c]
	mov eax, [esi+user_classes]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call memset
	mov eax, ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ODE_CreateGeom_10:
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	mov [esp], eax
	call _Unwind_Resume
	nop


;ODE_GeomDestruct
ODE_GeomDestruct:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x28]
	test eax, eax
	jz ODE_GeomDestruct_10
	mov [esp+0x4], ebx
	mov [esp], eax
	call dSpaceRemove
ODE_GeomDestruct_10:
	mov eax, [ebx+0x10]
	test eax, eax
	jz ODE_GeomDestruct_20
	lea edx, [eax+0x1c]
	mov eax, [eax+0x1c]
	test eax, eax
	jnz ODE_GeomDestruct_30
	jmp ODE_GeomDestruct_40
ODE_GeomDestruct_50:
	lea edx, [eax+0x14]
	mov eax, [eax+0x14]
	test eax, eax
	jz ODE_GeomDestruct_40
ODE_GeomDestruct_30:
	cmp ebx, eax
	jnz ODE_GeomDestruct_50
	mov eax, [ebx+0x14]
	mov [edx], eax
ODE_GeomDestruct_40:
	mov dword [ebx+0x10], 0x0
	mov dword [ebx+0x14], 0x0
ODE_GeomDestruct_20:
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp dGeomFree


;ODE_GeomGetAAContainedBox
ODE_GeomGetAAContainedBox:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov edx, [ebp+0x8]
	mov eax, [edx+0x4]
	cmp eax, 0x6
	jz ODE_GeomGetAAContainedBox_10
	jle ODE_GeomGetAAContainedBox_20
	sub eax, 0xb
	cmp eax, 0x4
	jbe ODE_GeomGetAAContainedBox_30
ODE_GeomGetAAContainedBox_40:
	leave
	ret
ODE_GeomGetAAContainedBox_20:
	sub eax, 0x1
	jnz ODE_GeomGetAAContainedBox_40
	lea eax, [ebp-0x18]
	mov [esp+0x4], eax
	mov [esp], edx
	call dGeomBoxGetLengths
	movss xmm1, dword [ebp-0x14]
	minss xmm1, dword [ebp-0x18]
	movss xmm0, dword [ebp-0x10]
	minss xmm0, xmm1
	mulss xmm0, [_float_0_50000000]
	movaps xmm1, xmm0
	xorps xmm1, [_data16_80000000]
	mov eax, [ebp+0xc]
	movss [eax], xmm1
	movss [eax+0x4], xmm1
	movss [eax+0x8], xmm1
	mov eax, [ebp+0x10]
	movss [eax], xmm0
	movss [eax+0x4], xmm0
	movss [eax+0x8], xmm0
	leave
	ret
ODE_GeomGetAAContainedBox_10:
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], edx
	call ODE_GeomTransformGetAAContainedBox
	leave
	ret
ODE_GeomGetAAContainedBox_30:
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z30Phys_GeomUserGetAAContainedBoxP6dxGeomPfS1_
	leave
	ret


;Phys_GetWorldGeom
Phys_GetWorldGeom:
	push ebp
	mov ebp, esp
	mov eax, odeGlob
	add eax, 0x2c6480
	pop ebp
	ret
	nop


;dxUserGeom::computeAABB()
_ZN10dxUserGeom11computeAABBEv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov edx, [eax+0x4]
	lea edx, [edx+edx*4]
	lea ecx, [eax+0x2c]
	mov [esp+0x4], ecx
	mov [esp], eax
	call dword [edx*4+_ZZ9Phys_InitvE15Phys_Stop_f_VAR+0x34]
	leave
	ret


;dxUserGeom::AABBTest(dxGeom*, float*)
_ZN10dxUserGeom8AABBTestEP6dxGeomPf:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x4]
	lea eax, [eax+eax*4]
	mov ecx, [eax*4+_ZZ9Phys_InitvE15Phys_Stop_f_VAR+0x38]
	test ecx, ecx
	jz _ZN10dxUserGeom8AABBTestEP6dxGeomPf_10
	pop ebx
	pop esi
	pop ebp
	jmp ecx
_ZN10dxUserGeom8AABBTestEP6dxGeomPf_10:
	mov eax, 0x1
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;dxUserGeom::~dxUserGeom()
_ZN10dxUserGeomD0Ev:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0x8]
	mov dword [edx], _ZTV10dxUserGeom+0x8
	mov eax, _ZTV6dxGeom
	add eax, 0x8
	mov [edx], eax
	mov dword [esp+0x4], 0x5c
	mov [esp], edx
	call dFree
	leave
	ret
	nop


;dxUserGeom::~dxUserGeom()
_ZN10dxUserGeomD1Ev:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov dword [edx], _ZTV10dxUserGeom+0x8
	mov eax, _ZTV6dxGeom
	add eax, 0x8
	mov [edx], eax
	pop ebp
	ret


;dxGeom::bodyRemove()
_ZN6dxGeom10bodyRemoveEv:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, [edx+0x10]
	test eax, eax
	jz _ZN6dxGeom10bodyRemoveEv_10
	lea ecx, [eax+0x1c]
	mov eax, [eax+0x1c]
	test eax, eax
	jnz _ZN6dxGeom10bodyRemoveEv_20
	jmp _ZN6dxGeom10bodyRemoveEv_30
_ZN6dxGeom10bodyRemoveEv_40:
	lea ecx, [eax+0x14]
	mov eax, [eax+0x14]
	test eax, eax
	jz _ZN6dxGeom10bodyRemoveEv_30
_ZN6dxGeom10bodyRemoveEv_20:
	cmp edx, eax
	jnz _ZN6dxGeom10bodyRemoveEv_40
	mov eax, [edx+0x14]
	mov [ecx], eax
_ZN6dxGeom10bodyRemoveEv_30:
	mov dword [edx+0x10], 0x0
	mov dword [edx+0x14], 0x0
_ZN6dxGeom10bodyRemoveEv_10:
	pop ebp
	ret


;dxGeom::AABBTest(dxGeom*, float*)
_ZN6dxGeom8AABBTestEPS_Pf:
	push ebp
	mov ebp, esp
	mov eax, 0x1
	pop ebp
	ret


;dxGeom::dxGeom(dxSpace*, int, dxBody*)
_ZN6dxGeomC2EP7dxSpaceiP6dxBody:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov esi, [ebp+0x10]
	mov eax, _ZTV6dxGeom
	add eax, 0x8
	mov [ebx], eax
	call _Z13initCollidersv
	mov dword [ebx+0x4], 0xffffffff
	cmp esi, 0x1
	sbb eax, eax
	and eax, 0xfffffffc
	add eax, 0xf
	mov [ebx+0x8], eax
	mov dword [ebx+0xc], 0x0
	mov dword [ebx+0x10], 0x0
	mov dword [ebx+0x14], 0x0
	mov dword [ebx+0x20], 0x0
	mov dword [ebx+0x24], 0x0
	mov dword [ebx+0x28], 0x0
	mov dword [esp+0x4], 0x6
	lea eax, [ebx+0x2c]
	mov [esp], eax
	call dSetZero
	mov dword [ebx+0x44], 0xffffffff
	mov dword [ebx+0x48], 0xffffffff
	test edi, edi
	jz _ZN6dxGeomC2EP7dxSpaceiP6dxBody_10
	mov [esp+0x4], ebx
	mov [esp], edi
	call dSpaceAdd
_ZN6dxGeomC2EP7dxSpaceiP6dxBody_10:
	test esi, esi
	jnz _ZN6dxGeomC2EP7dxSpaceiP6dxBody_20
	mov dword [ebx+0x18], 0x0
	mov dword [ebx+0x1c], 0x0
_ZN6dxGeomC2EP7dxSpaceiP6dxBody_30:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN6dxGeomC2EP7dxSpaceiP6dxBody_20:
	mov eax, [ebp+0x14]
	add eax, 0xe0
	mov [ebx+0x18], eax
	mov eax, [ebp+0x14]
	add eax, 0x100
	mov [ebx+0x1c], eax
	mov [esp], ebx
	call dGeomMoved
	mov eax, [ebx+0x10]
	cmp [ebp+0x14], eax
	jz _ZN6dxGeomC2EP7dxSpaceiP6dxBody_30
	test eax, eax
	jz _ZN6dxGeomC2EP7dxSpaceiP6dxBody_40
	lea edx, [eax+0x1c]
	mov eax, [eax+0x1c]
	test eax, eax
	jnz _ZN6dxGeomC2EP7dxSpaceiP6dxBody_50
_ZN6dxGeomC2EP7dxSpaceiP6dxBody_60:
	mov dword [ebx+0x10], 0x0
	mov dword [ebx+0x14], 0x0
_ZN6dxGeomC2EP7dxSpaceiP6dxBody_40:
	mov eax, [ebp+0x14]
	mov [ebx+0x10], eax
	mov edx, [ebp+0x14]
	mov eax, [edx+0x1c]
	mov [ebx+0x14], eax
	mov [edx+0x1c], ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN6dxGeomC2EP7dxSpaceiP6dxBody_70:
	lea edx, [eax+0x14]
	mov eax, [eax+0x14]
	test eax, eax
	jz _ZN6dxGeomC2EP7dxSpaceiP6dxBody_60
_ZN6dxGeomC2EP7dxSpaceiP6dxBody_50:
	cmp ebx, eax
	jnz _ZN6dxGeomC2EP7dxSpaceiP6dxBody_70
	mov eax, [ebx+0x14]
	mov [edx], eax
	jmp _ZN6dxGeomC2EP7dxSpaceiP6dxBody_60


;dxGeom::~dxGeom()
_ZN6dxGeomD0Ev:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0x8]
	mov eax, _ZTV6dxGeom
	add eax, 0x8
	mov [edx], eax
	mov dword [esp+0x4], 0x4c
	mov [esp], edx
	call dFree
	leave
	ret
	nop


;dxGeom::~dxGeom()
_ZN6dxGeomD1Ev:
	push ebp
	mov ebp, esp
	mov edx, _ZTV6dxGeom
	add edx, 0x8
	mov eax, [ebp+0x8]
	mov [eax], edx
	pop ebp
	ret
	nop


;dCloseODE
dCloseODE:
	push ebp
	mov ebp, esp
	mov dword [colliders_initialized], 0x0
	mov dword [num_user_classes], 0x0
	pop ebp
	ret
	nop


;dCollide
dCollide:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov esi, [ebp+0x10]
	mov eax, [ebp+0x14]
	mov [ebp-0x1c], eax
	mov edi, [ebp+0x18]
	cmp ebx, edx
	jz dCollide_10
	mov eax, [ebx+0x10]
	cmp eax, [edx+0x10]
	jz dCollide_20
dCollide_50:
	mov eax, [ebx+0x4]
	shl eax, 0x4
	add eax, [edx+0x4]
	shl eax, 0x3
	lea ecx, [eax+colliders]
	mov eax, [eax+colliders]
	test eax, eax
	jz dCollide_30
	mov ecx, [ecx+0x4]
	test ecx, ecx
	jnz dCollide_40
	mov [ebp+0x18], edi
	mov ecx, [ebp-0x1c]
	mov [ebp+0x14], ecx
	mov [ebp+0x10], esi
	mov [ebp+0xc], edx
	mov [ebp+0x8], ebx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp eax
dCollide_20:
	test eax, eax
	jz dCollide_50
dCollide_10:
	xor eax, eax
dCollide_30:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
dCollide_40:
	mov [esp+0x10], edi
	mov ecx, [ebp-0x1c]
	mov [esp+0xc], ecx
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov [esp], edx
	call eax
	mov esi, eax
	test eax, eax
	jz dCollide_10
	xor ebx, ebx
	movss xmm1, dword [_data16_80000000]
	mov ecx, [ebp-0x1c]
dCollide_60:
	movss xmm0, dword [ecx+0x10]
	xorps xmm0, xmm1
	movss [ecx+0x10], xmm0
	movss xmm0, dword [ecx+0x14]
	xorps xmm0, xmm1
	movss [ecx+0x14], xmm0
	movss xmm0, dword [ecx+0x18]
	xorps xmm0, xmm1
	movss [ecx+0x18], xmm0
	mov edx, [ecx+0x24]
	mov eax, [ecx+0x28]
	mov [ecx+0x24], eax
	mov [ecx+0x28], edx
	add ebx, 0x1
	add ecx, edi
	cmp esi, ebx
	ja dCollide_60
	mov eax, esi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;dCreateGeomClass
dCreateGeomClass:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov ecx, [ebp+0x8]
	mov ebx, [num_user_classes]
	lea eax, [ebx+ebx*4]
	shl eax, 0x2
	mov edx, [ecx]
	mov [eax+user_classes], edx
	mov edx, [ecx+0x4]
	mov [eax+user_classes+0x4], edx
	mov edx, [ecx+0x8]
	mov [eax+user_classes+0x8], edx
	mov edx, [ecx+0xc]
	mov [eax+user_classes+0xc], edx
	mov edx, [ecx+0x10]
	mov [eax+user_classes+0x10], edx
	lea esi, [ebx+0xb]
	add ebx, 0x1
	mov [num_user_classes], ebx
	call _Z13initCollidersv
	lea edx, [esi*8+colliders+0x4]
	mov eax, esi
	shl eax, 0x7
	add eax, colliders+0x4
	mov ecx, 0x10
	jmp dCreateGeomClass_10
dCreateGeomClass_40:
	mov ebx, [edx-0x4]
	test ebx, ebx
	jz dCreateGeomClass_20
dCreateGeomClass_50:
	sub edx, 0xffffff80
	add eax, 0x8
	sub ecx, 0x1
	jz dCreateGeomClass_30
dCreateGeomClass_10:
	mov ebx, [eax-0x4]
	test ebx, ebx
	jnz dCreateGeomClass_40
	mov dword [eax-0x4], _Z24dCollideUserGeomWithGeomP6dxGeomS0_iP12dContactGeomi
	mov dword [eax], 0x0
	mov ebx, [edx-0x4]
	test ebx, ebx
	jnz dCreateGeomClass_50
dCreateGeomClass_20:
	mov dword [edx-0x4], _Z24dCollideUserGeomWithGeomP6dxGeomS0_iP12dContactGeomi
	mov dword [edx], 0x1
	sub edx, 0xffffff80
	add eax, 0x8
	sub ecx, 0x1
	jnz dCreateGeomClass_10
dCreateGeomClass_30:
	mov eax, esi
	pop ebx
	pop esi
	pop ebp
	ret


;dGeomDisable
dGeomDisable:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	and dword [eax+0x8], 0xfffffff7
	pop ebp
	ret
	add [eax], al


;dGeomEnable
dGeomEnable:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	or dword [eax+0x8], 0x8
	pop ebp
	ret


;dGeomFree
dGeomFree:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x4]
	cmp eax, 0xe
	ja dGeomFree_10
	jmp dword [eax*4+dGeomFree_jumptab_0]
dGeomFree_30:
	cmp eax, 0xa
	jle dGeomFree_20
	lea eax, [eax+eax*4]
	cmp byte [eax*4+_ZZ9Phys_InitvE15Phys_Stop_f_VAR+0x3c], 0x0
	jnz dGeomFree_20
dGeomFree_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
dGeomFree_40:
	mov [esp], ebx
	call _ZN15dxGeomTransform8DestructEv
dGeomFree_20:
	mov dword [esp], 0xb
	call _Z24Sys_EnterCriticalSection15CriticalSection
	mov eax, odeGlob
	add eax, 0x2c6478
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z9Pool_FreePvP10pooldata_t
	mov dword [ebp+0x8], 0xb
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z24Sys_LeaveCriticalSection15CriticalSection
dGeomFree_50:
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _ZN7dxSpace5clearEv
	nop
	add [eax], al
	
	
dGeomFree_jumptab_0:
	dd dGeomFree_10
	dd dGeomFree_30
	dd dGeomFree_10
	dd dGeomFree_10
	dd dGeomFree_10
	dd dGeomFree_10
	dd dGeomFree_40
	dd dGeomFree_10
	dd dGeomFree_50
	dd dGeomFree_10
	dd dGeomFree_10
	dd dGeomFree_30
	dd dGeomFree_30
	dd dGeomFree_30
	dd dGeomFree_30


;dGeomGetBody
dGeomGetBody:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x10]
	pop ebp
	ret
	nop
	add [eax], al


;dGeomGetBodyNext
dGeomGetBodyNext:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x14]
	pop ebp
	ret
	nop


;dGeomGetClass
dGeomGetClass:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x4]
	pop ebp
	ret
	nop


;dGeomGetClassData
dGeomGetClassData:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	add eax, 0x4c
	pop ebp
	ret
	nop


;dGeomGetPosition
dGeomGetPosition:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x18]
	pop ebp
	ret
	nop


;dGeomGetRotation
dGeomGetRotation:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x1c]
	pop ebp
	ret
	nop
	add [eax], al


;dInitUserGeom
dInitUserGeom:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	lea eax, [esi+esi*4-0x37]
	lea edi, [eax*4]
	movzx eax, byte [edi+user_classes+0x10]
	mov [esp+0x8], eax
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZN6dxGeomC2EP7dxSpaceiP6dxBody
	mov dword [ebx], _ZTV10dxUserGeom+0x8
	mov [ebx+0x4], esi
	lea edx, [ebx+0x4c]
	mov eax, [edi+user_classes]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call memset
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	mov [esp], eax
	call _Unwind_Resume
	add [eax], al


;Initialized global or static variables of collision_kernel:
SECTION .data


;Initialized constant data of collision_kernel:
SECTION .rdata
;VTable for dxGeom:
_ZTV6dxGeom: dd 0x0, _ZTI6dxGeom, _ZN6dxGeomD1Ev, _ZN6dxGeomD0Ev, 0x0, _ZN6dxGeom8AABBTestEPS_Pf, 0x0, 0x0, 0x8, _cstring_7dxspace, _ZTI6dxGeom, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, _cstring_13dxsimplespace, _ZTI7dxSpace, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, _cstring_5dxbox, _ZTI6dxGeom, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, _cstring_15dxgeomtransfor, _ZTI6dxGeom, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, _cstring_12csoundengine, _ZTI7CThread, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, _cstring_12csoundobject, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, _cstring_12csamplesound, _ZTI12CSoundObject, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, _cstring_12cstreamsound, _ZTI12CSoundObject, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, _cstring_14cdirect3dquery, _ZTI15IDirect3DQuery9, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, _cstring_15idirect3dquery, _ZTI8IUnknown, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, _cstring_19copenglbuffero, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, _cstring_15textureinfotyp, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, _cstring_14copengltexture, 0x0, 0x0, 0x0, 0x0, 0x0
		db 0x0, 0x0, 0x0
;VTypeInfoTable for dxGeom:
_ZTI6dxGeom: dd 0x8, _cstring_6dxgeom, _ZTI5dBase, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, _cstring_5dbase, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, _ZTI6dxGeom, _ZN6dxGeomD1Ev, _ZN6dxGeomD0Ev, 0x0, _ZN6dxGeom8AABBTestEPS_Pf, 0x0, 0x0, 0x8, _cstring_7dxspace, _ZTI6dxGeom, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, _cstring_13dxsimplespace, _ZTI7dxSpace, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, _cstring_5dxbox, _ZTI6dxGeom, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, _cstring_15dxgeomtransfor, _ZTI6dxGeom, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, _cstring_12csoundengine, _ZTI7CThread, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, _cstring_12csoundobject, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, _cstring_12csamplesound, _ZTI12CSoundObject, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, _cstring_12cstreamsound, _ZTI12CSoundObject, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, _cstring_14cdirect3dquery, _ZTI15IDirect3DQuery9, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, _cstring_15idirect3dquery, _ZTI8IUnknown, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, _cstring_19copenglbuffero, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, _cstring_15textureinfotyp, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, _cstring_14copengltexture, 0x0, 0x0, 0x0, 0x0, 0x0
		db 0x0, 0x0, 0x0
;VTypeInfoTable for dxUserGeom:
_ZTI10dxUserGeom: dd 0x8, _cstring_10dxusergeom, _ZTI6dxGeom, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, _cstring_6dxgeom, _ZTI5dBase, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, _cstring_5dbase, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, _ZTI6dxGeom, _ZN6dxGeomD1Ev, _ZN6dxGeomD0Ev, 0x0, _ZN6dxGeom8AABBTestEPS_Pf, 0x0, 0x0, 0x8, _cstring_7dxspace, _ZTI6dxGeom, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, _cstring_13dxsimplespace, _ZTI7dxSpace, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, _cstring_5dxbox, _ZTI6dxGeom, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, _cstring_15dxgeomtransfor, _ZTI6dxGeom, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, _cstring_12csoundengine, _ZTI7CThread, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, _cstring_12csoundobject, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, _cstring_12csamplesound, _ZTI12CSoundObject, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, _cstring_12cstreamsound, _ZTI12CSoundObject, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, _cstring_14cdirect3dquery, _ZTI15IDirect3DQuery9, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, _cstring_15idirect3dquery, _ZTI8IUnknown, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, _cstring_19copenglbuffero, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, _cstring_15textureinfotyp, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, _cstring_14copengltexture, 0x0, 0x0, 0x0, 0x0, 0x0
		db 0x0, 0x0, 0x0
;VTypeInfoTable for dBase:
_ZTI5dBase: dd 0x8, _cstring_5dbase, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, _ZTI6dxGeom, _ZN6dxGeomD1Ev, _ZN6dxGeomD0Ev, 0x0, _ZN6dxGeom8AABBTestEPS_Pf, 0x0, 0x0, 0x8, _cstring_7dxspace, _ZTI6dxGeom, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, _cstring_13dxsimplespace, _ZTI7dxSpace, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, _cstring_5dxbox, _ZTI6dxGeom, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, _cstring_15dxgeomtransfor, _ZTI6dxGeom, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, _cstring_12csoundengine, _ZTI7CThread, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, _cstring_12csoundobject, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, _cstring_12csamplesound, _ZTI12CSoundObject, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, _cstring_12cstreamsound, _ZTI12CSoundObject, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, _cstring_14cdirect3dquery, _ZTI15IDirect3DQuery9, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, _cstring_15idirect3dquery, _ZTI8IUnknown, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, _cstring_19copenglbuffero, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, _cstring_15textureinfotyp, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, _cstring_14copengltexture, 0x0, 0x0, 0x0, 0x0, 0x0
		db 0x0, 0x0, 0x0
;VTable for dxUserGeom:
_ZTV10dxUserGeom: dd 0x0, _ZTI10dxUserGeom, _ZN10dxUserGeomD1Ev, _ZN10dxUserGeomD0Ev, _ZN10dxUserGeom11computeAABBEv, _ZN10dxUserGeom8AABBTestEP6dxGeomPf, 0x0, 0x0


;Zero initialized global or static variables of collision_kernel:
SECTION .bss
num_user_classes: resb 0x4
colliders_initialized: resb 0x1c
user_classes: resb 0x80
colliders: resb 0x860


;All cstrings:
SECTION .rdata
_cstring_7dxspace:		db "7dxSpace",0
_cstring_13dxsimplespace:		db "13dxSimpleSpace",0
_cstring_5dxbox:		db "5dxBox",0
_cstring_15dxgeomtransfor:		db "15dxGeomTransform",0
_cstring_12csoundengine:		db "12CSoundEngine",0
_cstring_12csoundobject:		db "12CSoundObject",0
_cstring_12csamplesound:		db "12CSampleSound",0
_cstring_12cstreamsound:		db "12CStreamSound",0
_cstring_14cdirect3dquery:		db "14CDirect3DQuery",0
_cstring_15idirect3dquery:		db "15IDirect3DQuery9",0
_cstring_19copenglbuffero:		db "19COpenGLBufferObject",0
_cstring_15textureinfotyp:		db "15TextureInfoType",0
_cstring_14copengltexture:		db "14COpenGLTexture",0
_cstring_6dxgeom:		db "6dxGeom",0
_cstring_5dbase:		db "5dBase",0
_cstring_10dxusergeom:		db "10dxUserGeom",0



;All constant floats and doubles:
SECTION .rdata
_float_0_50000000:		dd 0x3f000000	; 0.5
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD

