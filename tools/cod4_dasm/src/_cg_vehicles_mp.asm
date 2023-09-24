;Imports of cg_vehicles_mp:
	extern cgArray
	extern _Z16Sys_Millisecondsv
	extern cgMedia
	extern scr_const
	extern _Z16DObjGetBoneIndexPK6DObj_sjPh
	extern _Z19FX_PlayBoltedEffectiPK11FxEffectDefiii
	extern _Z31CG_ShouldPlaySoundOnLocalClientiiPKfPKc
	extern _Z17CL_PickSoundAliasPKc
	extern _Z27SND_PlayBlendedSoundAliasesPK11snd_alias_tS1_ff12SndEntHandlePKfi18snd_alias_system_t
	extern _Z15CG_TraceCapsuleP7trace_tPKfS2_S2_S2_ii
	extern _Z16MatrixIdentity33PA3_f
	extern _Z21FX_PlayOrientedEffectiPK11FxEffectDefiPKfPA3_S2_
	extern _Z2vaPKcz
	extern colorWhite
	extern _Z20CG_DebugStarWithTextPKfS0_S0_PKcfi
	extern _Z21Vec3Basis_RightHandedPKfPfS1_
	extern cg_entitiesArray
	extern _Z16Com_PrintWarningiPKcz
	extern cgsArray
	extern _Z21CG_PreProcess_GetDObjiiiP6XModel
	extern _Z24CG_DObjGetWorldTagMatrixPK7cpose_tP6DObj_sjPA3_fPf
	extern memset
	extern _Z12AxisToAnglesPA3_KfPf
	extern floorf
	extern _Z16R_AddDObjToScenePK6DObj_sPK7cpose_tjjPff
	extern _Z12AnglesToAxisPKfPA3_f
	extern _Z12DObjGetModelPK6DObj_si
	extern _Z17XModelGetBasePosePK6XModel
	extern _Z23MatrixTransformVector43PKfPA3_S_Pf
	extern vec3_origin
	extern _Z17Dvar_RegisterBoolPKchtS0_
	extern _Z18Dvar_RegisterFloatPKcffftS0_
	extern bgs
	extern sinf
	extern cosf
	extern _Z25BG_VehiclesGetSlotTagNamei

;Exports of cg_vehicles_mp:
	global _GLOBAL__I_vehEffects
	global wheelTags
	global _ZZ13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_tE10MYIDLEHIGH
	global _ZZ13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_tE9MYIDLELOW
	global _ZZ13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_tE12MYENGINEHIGH
	global _ZZ13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_tE11MYENGINELOW
	global _Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t
	global _Z12GetTagMatrixiitPA3_fPf
	global _Z11CG_Veh_Initv
	global _Z15CG_VehGunnerPOViPfS_
	global _Z19CG_VehProcessEntityiP9centity_s
	global _Z19CG_VehRegisterDvarsv
	global _Z23CG_VehPlayerVehicleSlotii
	global _Z23CG_VehSphereCoordsToPosfffPf
	global _Z23Veh_GetTurretBarrelRolliP9centity_s
	global _Z23Veh_IncTurretBarrelRolliif
	global _Z24CG_VehEntityUsingVehicleii
	global _Z24CG_VehLocalClientDrivingi
	global _Z28CG_VehLocalClientVehicleSloti
	global _Z28CG_VehSeatTransformForPlayeriiPfS_
	global _Z29CG_VehLocalClientUsingVehiclei
	global _Z30CG_VehSeatOriginForLocalClientiPf
	global heli_barrelRotation
	global heli_barrelMaxVelocity
	global heli_barrelSlowdown
	global vehDebugClient
	global vehDriverViewDist
	global vehDriverViewFocusRange
	global vehEffects


SECTION .text


;global constructors keyed to vehEffects
_GLOBAL__I_vehEffects:
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


;VehicleFXTest(int, DObj_s const*, centity_s*, vehfx_t*)
_Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xdc
	mov eax, [ebp+0x10]
	add eax, 0xcc
	mov [ebp-0xbc], eax
	mov eax, [ebp+0x10]
	add eax, 0xe4
	mov edx, [ebp+0x10]
	add edx, 0x74
	mov [ebp-0xc4], edx
	mov ecx, [ebp+0x10]
	movss xmm0, dword [ecx+0xe4]
	subss xmm0, [ecx+0x74]
	movss xmm1, dword [eax+0x4]
	subss xmm1, [edx+0x4]
	movss xmm2, dword [eax+0x8]
	subss xmm2, [edx+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm2, xmm0
	mov edi, cgArray
	mov eax, [edi+0x24]
	mov edx, [edi+0x20]
	mov eax, [eax+0x8]
	sub eax, [edx+0x8]
	cvtsi2ss xmm0, eax
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jbe _Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_10
	divss xmm2, xmm0
	movss [ebp-0xb8], xmm2
_Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_200:
	mov ebx, [ebp+0x10]
	mov eax, [ebx+0xd0]
	cmp eax, 0xe
	jz _Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_20
	cmp eax, 0xc
	jz _Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_30
_Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_110:
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_30:
	mov eax, [ebp+0x10]
	mov eax, [eax+0xcc]
	mov [ebp-0xb0], eax
	mov edx, [ebp+0x8]
	lea eax, [edx+edx*4]
	shl eax, 0x6
	add eax, vehEffects
	xor ebx, ebx
_Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_60:
	cmp byte [eax], 0x0
	jz _Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_40
	mov ecx, [ebp-0xb0]
	cmp ecx, [eax+0x8]
	jz _Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_50
	add ebx, 0x1
	add eax, 0x28
	cmp ebx, 0x8
	jnz _Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_60
_Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_40:
	mov ebx, [ebp+0x8]
	lea eax, [ebx+ebx*4]
	shl eax, 0x6
	add eax, vehEffects
	xor ecx, ecx
_Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_80:
	cmp byte [eax], 0x0
	jz _Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_70
	add ecx, 0x1
	add eax, 0x28
	cmp ecx, 0x8
	jnz _Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_80
	mov edx, [ebp+0x8]
	lea eax, [edx+edx*4]
	shl eax, 0x6
	lea ebx, [eax+vehEffects]
	mov esi, 0x1
	and ecx, 0xffffff00
	mov edi, eax
_Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_90:
	lea edx, [ecx+ecx*4]
	mov eax, [ebx+0x2c]
	cmp eax, [edi+edx*8+vehEffects+0x4]
	cmovl ecx, esi
	add esi, 0x1
	add ebx, 0x28
	cmp esi, 0x8
	jnz _Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_90
_Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_70:
	lea ebx, [ecx+ecx*4]
	mov ecx, [ebp+0x8]
	lea eax, [ecx+ecx*4]
	shl eax, 0x6
	lea ebx, [eax+ebx*8]
	lea esi, [ebx+vehEffects]
	cld
	mov ecx, 0xa
	xor eax, eax
	mov edi, esi
	rep stosd
	mov byte [ebx+vehEffects], 0x1
	call _Z16Sys_Millisecondsv
	mov [ebx+vehEffects+0x4], eax
	mov eax, [ebp-0xb0]
	mov [ebx+vehEffects+0x8], eax
_Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_240:
	mov ebx, [esi+0xc]
	call _Z16Sys_Millisecondsv
	cmp ebx, eax
	jle _Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_100
_Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_220:
	mov edx, [ebp+0x10]
	cmp dword [edx+0x1a0], 0x3
	jz _Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_110
	mov ebx, [esi+0x10]
	call _Z16Sys_Millisecondsv
	cmp ebx, eax
	jg _Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_110
	mov ecx, [ebp+0x10]
	mov eax, [ecx+0x1a0]
	cmp eax, 0x1
	jz _Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_120
	cmp eax, 0x2
	jz _Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_130
	test eax, eax
	jnz _Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_110
	mov eax, cgMedia
	mov ebx, [eax+0x2774]
	lea eax, [esi+0x24]
	mov [esp+0x8], eax
	mov eax, scr_const
	movzx eax, word [eax+0x166]
	mov [esp+0x4], eax
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call _Z16DObjGetBoneIndexPK6DObj_sjPh
	movzx eax, byte [esi+0x24]
_Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_280:
	movzx eax, al
	mov [esp+0x10], eax
	mov edx, [ebp+0x10]
	mov eax, [edx+0xcc]
	mov [esp+0xc], eax
	mov eax, cgArray
	mov eax, [eax+0x46128]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z19FX_PlayBoltedEffectiPK11FxEffectDefiii
	call _Z16Sys_Millisecondsv
	add eax, 0x32
	mov [esi+0x10], eax
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_20:
	movss xmm0, dword [ebp-0xb8]
	ucomiss xmm0, [_float_0_05000000]
	jb _Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_140
	ucomiss xmm0, [_float_0_60000002]
	ja _Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_140
	jp _Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_140
	mov eax, [ebp+0x14]
	mov [ebp-0x9c], eax
	mov dword [ebp-0xb4], 0x0
	mov eax, [edi+0xfd7e8]
	and eax, 0x80000003
	js _Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_150
_Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_170:
	cmp [ebp-0xb4], eax
	jz _Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_160
_Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_230:
	add dword [ebp-0xb4], 0x1
	add dword [ebp-0x9c], 0x1
	cmp dword [ebp-0xb4], 0x4
	jz _Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_140
	mov edi, cgArray
	mov eax, [edi+0xfd7e8]
	and eax, 0x80000003
	jns _Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_170
_Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_150:
	sub eax, 0x1
	or eax, 0xfffffffc
	add eax, 0x1
	jmp _Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_170
_Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_140:
	mov edx, [ebp+0x14]
	cmp byte [edx+0x38], 0x0
	jz _Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_110
	mov esi, edx
	add esi, 0x3c
	mov dword [esp+0xc], _cstring_hummer_engine_hi
	mov [esp+0x8], esi
	mov ecx, [ebp-0xbc]
	mov eax, [ecx]
	mov [esp+0x4], eax
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call _Z31CG_ShouldPlaySoundOnLocalClientiiPKfPKc
	test al, al
	jz _Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_110
	mov dword [esp], _cstring_hummer_engine_lo
	call _Z17CL_PickSoundAliasPKc
	mov [ebp-0xac], eax
	mov dword [esp], _cstring_hummer_engine_hi
	call _Z17CL_PickSoundAliasPKc
	mov edi, eax
	mov dword [esp], _cstring_hummer_idle_low
	call _Z17CL_PickSoundAliasPKc
	mov [ebp-0xa8], eax
	mov dword [esp], _cstring_hummer_idle_high
	call _Z17CL_PickSoundAliasPKc
	mov [ebp-0xa4], eax
	mov ecx, [ebp-0xac]
	test ecx, ecx
	jz _Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_110
	test edi, edi
	jz _Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_110
	mov edx, [ebp-0xa8]
	test edx, edx
	jz _Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_110
	test eax, eax
	jz _Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_110
	movss xmm1, dword [ebp-0xb8]
	divss xmm1, dword [_float_0_80000001]
	pxor xmm2, xmm2
	movaps xmm0, xmm2
	subss xmm0, xmm1
	ucomiss xmm0, xmm2
	jb _Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_180
	movaps xmm1, xmm2
	movss xmm3, dword [_float__1_00000000]
	movss xmm0, dword [_float_1_00000000]
_Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_300:
	ucomiss xmm3, xmm2
	jb _Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_190
	movaps xmm1, xmm0
	movss [ebp-0xa0], xmm2
_Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_290:
	mov eax, [ebp-0xbc]
	mov ebx, [eax]
	mov dword [esp+0x1c], 0x1
	mov dword [esp+0x18], 0x0
	mov [esp+0x14], esi
	mov [esp+0x10], ebx
	mov dword [esp+0xc], 0x3f800000
	movss [esp+0x8], xmm1
	mov [esp+0x4], edi
	mov edx, [ebp-0xac]
	mov [esp], edx
	call _Z27SND_PlayBlendedSoundAliasesPK11snd_alias_tS1_ff12SndEntHandlePKfi18snd_alias_system_t
	mov dword [esp+0x1c], 0x1
	mov dword [esp+0x18], 0x0
	mov [esp+0x14], esi
	mov [esp+0x10], ebx
	mov dword [esp+0xc], 0x3f800000
	movss xmm0, dword [ebp-0xa0]
	movss [esp+0x8], xmm0
	mov eax, [ebp-0xa4]
	mov [esp+0x4], eax
	mov edx, [ebp-0xa8]
	mov [esp], edx
	call _Z27SND_PlayBlendedSoundAliasesPK11snd_alias_tS1_ff12SndEntHandlePKfi18snd_alias_system_t
	jmp _Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_110
_Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_10:
	movss [ebp-0xb8], xmm1
	jmp _Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_200
_Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_100:
	mov eax, 0xbf000000
	mov [ebp-0x24], eax
	mov [ebp-0x20], eax
	mov [ebp-0x1c], eax
	mov eax, 0x3f000000
	mov [ebp-0x30], eax
	mov [ebp-0x2c], eax
	mov [ebp-0x28], eax
	mov edx, [ebp+0x10]
	movss xmm0, dword [edx+0x7c]
	subss xmm0, [_float_1200_00000000]
	mov ecx, edx
	mov edx, [edx+0x78]
	mov eax, [ecx+0x74]
	mov [ebp-0x3c], eax
	mov [ebp-0x38], edx
	movss [ebp-0x34], xmm0
	mov dword [esp+0x18], 0x831
	mov ebx, [ebp-0xb0]
	mov [esp+0x14], ebx
	lea eax, [ebp-0x3c]
	mov [esp+0x10], eax
	lea eax, [ebp-0x30]
	mov [esp+0xc], eax
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov eax, [ebp-0xc4]
	mov [esp+0x4], eax
	lea eax, [ebp-0x98]
	mov [esp], eax
	call _Z15CG_TraceCapsuleP7trace_tPKfS2_S2_S2_ii
	movss xmm4, dword [ebp-0x98]
	ucomiss xmm4, [_float_1_00000000]
	jb _Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_210
_Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_250:
	mov ebx, 0x3e8
_Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_270:
	call _Z16Sys_Millisecondsv
	lea eax, [ebx+eax]
	mov [esi+0xc], eax
	jmp _Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_220
_Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_160:
	mov edx, [ebp-0x9c]
	cmp byte [edx], 0x0
	jz _Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_230
	cmp byte [edx+0x34], 0x0
	jz _Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_230
	mov eax, cgMedia
	mov esi, [eax+0x277c]
	lea ebx, [ebp-0x6c]
	mov [esp], ebx
	call _Z16MatrixIdentity33PA3_f
	mov ecx, [ebp-0xb4]
	lea eax, [ecx+ecx*2]
	mov edx, [ebp+0x14]
	lea eax, [edx+eax*4+0x4]
	mov [ebp-0xc0], eax
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov eax, [edi+0x46128]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z21FX_PlayOrientedEffectiPK11FxEffectDefiPKfPA3_S2_
	mov eax, [vehDebugClient]
	cmp byte [eax+0xc], 0x0
	jz _Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_230
	mov ebx, [ebp-0x9c]
	movzx eax, byte [ebx+0x34]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call _Z2vaPKcz
	mov dword [esp+0x14], 0x4
	mov dword [esp+0x10], 0x3f800000
	mov [esp+0xc], eax
	mov eax, colorWhite
	mov [esp+0x8], eax
	mov [esp+0x4], eax
	mov eax, [ebp-0xc0]
	mov [esp], eax
	call _Z20CG_DebugStarWithTextPKfS0_S0_PKcfi
	jmp _Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_230
_Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_50:
	call _Z16Sys_Millisecondsv
	lea ecx, [ebx+ebx*4]
	mov ebx, [ebp+0x8]
	lea edx, [ebx+ebx*4]
	shl edx, 0x6
	lea ecx, [edx+ecx*8]
	mov [ecx+vehEffects+0x4], eax
	lea esi, [ecx+vehEffects]
	jmp _Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_240
_Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_210:
	jp _Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_250
	mov edx, [ebp+0x10]
	movss xmm0, dword [edx+0x74]
	movss xmm1, dword [ebp-0x3c]
	subss xmm1, xmm0
	mulss xmm1, xmm4
	addss xmm1, xmm0
	movss [ebp-0x48], xmm1
	movss xmm0, dword [edx+0x78]
	movss xmm2, dword [ebp-0x38]
	subss xmm2, xmm0
	mulss xmm2, xmm4
	addss xmm2, xmm0
	movss [ebp-0x44], xmm2
	movss xmm3, dword [edx+0x7c]
	movss xmm0, dword [ebp-0x34]
	subss xmm0, xmm3
	mulss xmm0, xmm4
	addss xmm0, xmm3
	movss [ebp-0x40], xmm0
	subss xmm1, [edx+0x74]
	subss xmm2, [edx+0x78]
	subss xmm0, [edx+0x7c]
	mulss xmm1, xmm1
	mulss xmm2, xmm2
	addss xmm1, xmm2
	mulss xmm0, xmm0
	addss xmm1, xmm0
	sqrtss xmm1, xmm1
	movss xmm0, dword [_float_1200_00000000]
	ucomiss xmm0, xmm1
	jbe _Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_250
	subss xmm1, [_float_350_00000000]
	divss xmm1, dword [_float_850_00000000]
	mulss xmm1, [_float_0_10000001]
	addss xmm1, [_float_0_05000000]
	mulss xmm1, [_float_1000_00000000]
	cvttss2si ebx, xmm1
	xor eax, eax
	mov [ebp-0x6c], eax
	lea edi, [ebp-0x6c]
	mov [ebp-0x68], eax
	mov eax, 0x3f800000
	mov [ebp-0x64], eax
	lea eax, [ebp-0x54]
	mov [esp+0x8], eax
	lea eax, [ebp-0x60]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z21Vec3Basis_RightHandedPKfPfS1_
	mov eax, [ebp-0x88]
	and eax, 0x1f00000
	cmp eax, 0x1400000
	jz _Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_260
	mov eax, cgMedia
	mov edx, [eax+0x2764]
_Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_310:
	mov [esp+0x10], edi
	lea eax, [ebp-0x48]
	mov [esp+0xc], eax
	mov eax, cgArray
	mov eax, [eax+0x46128]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z21FX_PlayOrientedEffectiPK11FxEffectDefiPKfPA3_S2_
	jmp _Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_270
_Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_120:
	mov eax, cgMedia
	mov ebx, [eax+0x2770]
	lea eax, [esi+0x24]
	mov [esp+0x8], eax
	mov eax, scr_const
	movzx eax, word [eax+0x166]
	mov [esp+0x4], eax
	mov edx, [ebp+0xc]
	mov [esp], edx
	call _Z16DObjGetBoneIndexPK6DObj_sjPh
	movzx eax, byte [esi+0x24]
	jmp _Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_280
_Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_130:
	mov eax, cgMedia
	mov ebx, [eax+0x276c]
	lea eax, [esi+0x25]
	mov [esp+0x8], eax
	mov eax, scr_const
	movzx eax, word [eax+0x168]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z16DObjGetBoneIndexPK6DObj_sjPh
	movzx eax, byte [esi+0x25]
	jmp _Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_280
_Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_190:
	subss xmm0, xmm1
	movss [ebp-0xa0], xmm0
	jmp _Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_290
_Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_180:
	movss xmm0, dword [_float_1_00000000]
	movaps xmm3, xmm1
	subss xmm3, xmm0
	jmp _Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_300
_Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_260:
	mov eax, cgMedia
	mov edx, [eax+0x2768]
	jmp _Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t_310
	nop


;GetTagMatrix(int, int, unsigned short, float (*) [3], float*)
_Z12GetTagMatrixiitPA3_fPf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edi, eax
	mov esi, [ebp+0xc]
	mov [ebp-0x1a], cx
	lea eax, [edx*4]
	shl edx, 0x5
	sub edx, eax
	mov eax, edx
	shl eax, 0x4
	lea ebx, [edx+eax]
	add ebx, cg_entitiesArray
	cmp byte [ebx+0x1c0], 0x0
	jnz _Z12GetTagMatrixiitPA3_fPf_10
	mov dword [esp+0x4], _cstring_vehicle_being_us
_Z12GetTagMatrixiitPA3_fPf_30:
	mov dword [esp], 0xe
	call _Z16Com_PrintWarningiPKcz
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z16MatrixIdentity33PA3_f
	xor eax, eax
	mov [esi], eax
	mov [esi+0x4], eax
	mov [esi+0x8], eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12GetTagMatrixiitPA3_fPf_10:
	lea ecx, [ebx+0xcc]
	mov edx, [ecx+0xd8]
	mov eax, cgsArray
	mov eax, [eax+edx*4+0x294]
	mov [esp+0xc], eax
	mov eax, [ecx+0x4]
	mov [esp+0x8], eax
	mov eax, [ebx+0xcc]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z21CG_PreProcess_GetDObjiiiP6XModel
	mov edx, eax
	test eax, eax
	jz _Z12GetTagMatrixiitPA3_fPf_20
	mov [esp+0x10], esi
	mov eax, [ebp+0x8]
	mov [esp+0xc], eax
	movzx eax, word [ebp-0x1a]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call _Z24CG_DObjGetWorldTagMatrixPK7cpose_tP6DObj_sjPA3_fPf
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12GetTagMatrixiitPA3_fPf_20:
	mov dword [esp+0x4], _cstring_gettagmatrix_una
	jmp _Z12GetTagMatrixiitPA3_fPf_30
	nop
	add [eax], al


;CG_Veh_Init()
_Z11CG_Veh_Initv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x140
	mov dword [esp+0x4], 0x0
	mov dword [esp], vehEffects
	call memset
	leave
	ret


;CG_VehGunnerPOV(int, float*, float*)
_Z15CG_VehGunnerPOViPfS_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov eax, [ebp+0x8]
	mov edx, scr_const
	movzx ecx, word [edx+0x172]
	mov edi, cgArray
	mov ebx, [edi+0x46218]
	lea edx, [ebx+ebx*8]
	mov esi, edx
	shl esi, 0x4
	add edx, esi
	lea edx, [ebx+edx*2]
	mov edx, [edi+edx*4+0xea3f4]
	mov ebx, [ebp+0xc]
	mov [esp+0x4], ebx
	lea ebx, [ebp-0x3c]
	mov [esp], ebx
	call _Z12GetTagMatrixiitPA3_fPf
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z12AxisToAnglesPA3_KfPf
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;CG_VehProcessEntity(int, centity_s*)
_Z19CG_VehProcessEntityiP9centity_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1ac
	mov esi, [ebp+0xc]
	lea eax, [esi+0x64]
	mov [ebp-0x148], eax
	lea edi, [esi+0xcc]
	test byte [edi+0x8], 0x20
	jnz _Z19CG_VehProcessEntityiP9centity_s_10
	cmp byte [esi+0x1c0], 0x0
	jnz _Z19CG_VehProcessEntityiP9centity_s_20
_Z19CG_VehProcessEntityiP9centity_s_10:
	add esp, 0x1ac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19CG_VehProcessEntityiP9centity_s_20:
	mov edx, [edi+0xd8]
	mov eax, cgsArray
	mov eax, [eax+edx*4+0x294]
	mov [esp+0xc], eax
	mov eax, [edi+0x4]
	mov [esp+0x8], eax
	mov eax, [esi+0xcc]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z21CG_PreProcess_GetDObjiiiP6XModel
	mov [ebp-0x144], eax
	test eax, eax
	jz _Z19CG_VehProcessEntityiP9centity_s_10
	mov byte [ebp-0xe4], 0x0
	xor eax, eax
_Z19CG_VehProcessEntityiP9centity_s_30:
	mov byte [eax+ebp-0x11c], 0x0
	add eax, 0x1
	cmp eax, 0x4
	jnz _Z19CG_VehProcessEntityiP9centity_s_30
	mov eax, [ebp-0x148]
	movss xmm2, dword [eax+0x4c]
	movss xmm0, dword [edi+0x54]
	subss xmm0, xmm2
	mulss xmm0, [_float_0_00277778]
	mov ebx, cgArray
	movaps xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	movss [ebp-0x188], xmm0
	movss [ebp-0x198], xmm2
	call floorf
	fstp dword [ebp-0x14c]
	movss xmm0, dword [ebp-0x188]
	subss xmm0, [ebp-0x14c]
	mulss xmm0, [_float_360_00000000]
	mulss xmm0, [ebx+0x46120]
	movss xmm2, dword [ebp-0x198]
	addss xmm2, xmm0
	mulss xmm2, [_float_182_04444885]
	addss xmm2, [_float_0_50000000]
	movss [esp], xmm2
	call floorf
	fstp dword [ebp-0x150]
	cvttss2si eax, [ebp-0x150]
	mov [esi+0x40], ax
	mov edx, [ebp-0x148]
	movss xmm2, dword [edx+0x50]
	movss xmm0, dword [edi+0x58]
	subss xmm0, xmm2
	mulss xmm0, [_float_0_00277778]
	movaps xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	movss [ebp-0x188], xmm0
	movss [ebp-0x198], xmm2
	call floorf
	fstp dword [ebp-0x154]
	movss xmm0, dword [ebp-0x188]
	subss xmm0, [ebp-0x154]
	mulss xmm0, [_float_360_00000000]
	mulss xmm0, [ebx+0x46120]
	movss xmm2, dword [ebp-0x198]
	addss xmm2, xmm0
	mulss xmm2, [_float_182_04444885]
	addss xmm2, [_float_0_50000000]
	movss [esp], xmm2
	call floorf
	fstp dword [ebp-0x158]
	cvttss2si eax, [ebp-0x158]
	mov [esi+0x44], ax
	mov eax, [ebp-0x148]
	movss xmm2, dword [eax+0x5c]
	movss xmm0, dword [edi+0x64]
	subss xmm0, xmm2
	mulss xmm0, [_float_0_00277778]
	movaps xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	movss [ebp-0x188], xmm0
	movss [ebp-0x198], xmm2
	call floorf
	fstp dword [ebp-0x15c]
	movss xmm0, dword [ebp-0x188]
	subss xmm0, [ebp-0x15c]
	mulss xmm0, [_float_360_00000000]
	mulss xmm0, [ebx+0x46120]
	movss xmm2, dword [ebp-0x198]
	addss xmm2, xmm0
	mulss xmm2, [_float_182_04444885]
	addss xmm2, [_float_0_50000000]
	movss [esp], xmm2
	call floorf
	fstp dword [ebp-0x160]
	cvttss2si eax, [ebp-0x160]
	mov [esi+0x46], ax
	mov edx, [ebp-0x148]
	movss xmm2, dword [edx+0x60]
	movss xmm0, dword [edi+0x68]
	subss xmm0, xmm2
	mulss xmm0, [_float_0_00277778]
	movaps xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	movss [ebp-0x188], xmm0
	movss [ebp-0x198], xmm2
	call floorf
	fstp dword [ebp-0x164]
	movss xmm0, dword [ebp-0x188]
	subss xmm0, [ebp-0x164]
	mulss xmm0, [_float_360_00000000]
	mulss xmm0, [ebx+0x46120]
	movss xmm2, dword [ebp-0x198]
	addss xmm2, xmm0
	mulss xmm2, [_float_182_04444885]
	addss xmm2, [_float_0_50000000]
	movss [esp], xmm2
	call floorf
	fstp dword [ebp-0x168]
	cvttss2si eax, [ebp-0x168]
	mov [esi+0x42], ax
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z23Veh_GetTurretBarrelRolliP9centity_s
	fstp dword [esi+0x48]
	mov edx, [ebp-0x148]
	movss xmm2, dword [edx+0x54]
	movss xmm0, dword [edi+0x5c]
	subss xmm0, xmm2
	mulss xmm0, [_float_0_00277778]
	movaps xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	movss [ebp-0x188], xmm0
	movss [ebp-0x198], xmm2
	call floorf
	fstp dword [ebp-0x16c]
	movss xmm0, dword [ebp-0x188]
	subss xmm0, [ebp-0x16c]
	mulss xmm0, [_float_360_00000000]
	mulss xmm0, [ebx+0x46120]
	movss xmm2, dword [ebp-0x198]
	addss xmm2, xmm0
	mulss xmm2, [_float_182_04444885]
	addss xmm2, [_float_0_50000000]
	movss [esp], xmm2
	call floorf
	fstp dword [ebp-0x170]
	cvttss2si eax, [ebp-0x170]
	mov [esi+0x4c], ax
	cvtsi2ss xmm0, dword [edi+0x70]
	mulss xmm0, [_float_0_00100000]
	movss [esi+0x50], xmm0
	lea eax, [esi+0x60]
	mov [esp+0x8], eax
	mov ebx, scr_const
	movzx eax, word [ebx+0x15e]
	mov [esp+0x4], eax
	mov eax, [ebp-0x144]
	mov [esp], eax
	call _Z16DObjGetBoneIndexPK6DObj_sjPh
	lea eax, [esi+0x61]
	mov [esp+0x8], eax
	movzx eax, word [ebx+0x160]
	mov [esp+0x4], eax
	mov edx, [ebp-0x144]
	mov [esp], edx
	call _Z16DObjGetBoneIndexPK6DObj_sjPh
	lea eax, [esi+0x62]
	mov [esp+0x8], eax
	movzx eax, word [ebx+0x164]
	mov [esp+0x4], eax
	mov eax, [ebp-0x144]
	mov [esp], eax
	call _Z16DObjGetBoneIndexPK6DObj_sjPh
	cmp dword [esi+0x8], 0x2
	jz _Z19CG_VehProcessEntityiP9centity_s_40
	mov eax, esi
	mov edx, 0x4
_Z19CG_VehProcessEntityiP9centity_s_50:
	mov byte [eax+0x5c], 0xfe
	add eax, 0x1
	sub edx, 0x1
	jnz _Z19CG_VehProcessEntityiP9centity_s_50
	lea ebx, [esi+0x1c]
_Z19CG_VehProcessEntityiP9centity_s_80:
	lea eax, [ebp-0x11c]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov edx, [ebp-0x144]
	mov [esp+0x4], edx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z13VehicleFXTestiPK6DObj_sP9centity_sP7vehfx_t
	mov eax, [esi+0x1c]
	mov [ebp-0x24], eax
	mov eax, [ebx+0x4]
	mov [ebp-0x20], eax
	movss xmm0, dword [_float_32_00000000]
	addss xmm0, [ebx+0x8]
	movss [ebp-0x1c], xmm0
	mov edx, [ebp-0x148]
	mov ebx, [edx+0x58]
	pxor xmm0, xmm0
	test ebx, ebx
	js _Z19CG_VehProcessEntityiP9centity_s_60
	mov ecx, cgArray
	mov eax, [edi+0x60]
	sub eax, ebx
	cvtsi2ss xmm0, eax
	mulss xmm0, [ecx+0x46120]
	cvttss2si edx, xmm0
	lea edx, [ebx+edx]
	mov eax, [ecx+0x46128]
	sub eax, edx
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_00100000]
_Z19CG_VehProcessEntityiP9centity_s_60:
	movss [esp+0x14], xmm0
	lea eax, [ebp-0x24]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x4
	mov eax, [edi]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov eax, [ebp-0x144]
	mov [esp], eax
	call _Z16R_AddDObjToScenePK6DObj_sPK7cpose_tjjPff
	add esp, 0x1ac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19CG_VehProcessEntityiP9centity_s_40:
	lea eax, [ebp-0xe0]
	mov [esp+0x10], eax
	lea eax, [ebp-0xd4]
	mov [esp+0xc], eax
	movzx eax, word [ebx+0xa4]
	mov [esp+0x8], eax
	mov edx, [ebp-0x144]
	mov [esp+0x4], edx
	mov [esp], esi
	call _Z24CG_DObjGetWorldTagMatrixPK7cpose_tP6DObj_sjPA3_fPf
	mov byte [ebp-0xe4], 0x1
	movss xmm0, dword [esi+0x50]
	movss [ebp-0x138], xmm0
	lea eax, [ebp-0xa4]
	mov [esp+0x4], eax
	lea eax, [esi+0x28]
	mov [esp], eax
	call _Z12AnglesToAxisPKfPA3_f
	lea ebx, [esi+0x1c]
	mov eax, [esi+0x1c]
	mov [ebp-0x80], eax
	mov eax, [ebx+0x4]
	mov [ebp-0x7c], eax
	mov eax, [ebx+0x8]
	mov [ebp-0x78], eax
	mov dword [esp+0x4], 0x0
	mov edx, [ebp-0x144]
	mov [esp], edx
	call _Z12DObjGetModelPK6DObj_si
	mov [esp], eax
	call _Z17XModelGetBasePosePK6XModel
	mov [ebp-0x140], eax
	mov [ebp-0x130], esi
	mov [ebp-0x12c], esi
	mov dword [ebp-0x13c], 0x0
	mov dword [ebp-0x134], wheelTags
	xor dword [ebp-0x138], 0x80000000
	lea eax, [ebp-0x11c]
	mov [ebp-0x174], eax
	lea edx, [esi+0x5c]
	mov [ebp-0x178], edx
	mov eax, edx
_Z19CG_VehProcessEntityiP9centity_s_90:
	mov [esp+0x8], eax
	mov edx, [ebp-0x134]
	mov eax, [edx]
	movzx eax, word [eax]
	mov [esp+0x4], eax
	mov eax, [ebp-0x144]
	mov [esp], eax
	call _Z16DObjGetBoneIndexPK6DObj_sjPh
	test eax, eax
	jnz _Z19CG_VehProcessEntityiP9centity_s_70
_Z19CG_VehProcessEntityiP9centity_s_110:
	add dword [ebp-0x13c], 0x1
	add dword [ebp-0x178], 0x1
	add dword [ebp-0x174], 0xc
	add dword [ebp-0x134], 0x4
	add dword [ebp-0x130], 0x1
	add dword [ebp-0x12c], 0x2
	cmp dword [ebp-0x13c], 0x4
	jz _Z19CG_VehProcessEntityiP9centity_s_80
	mov eax, [ebp-0x178]
	jmp _Z19CG_VehProcessEntityiP9centity_s_90
_Z19CG_VehProcessEntityiP9centity_s_70:
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	lea edx, [ebp-0xa4]
	mov [esp+0x4], edx
	mov edx, [ebp-0x130]
	movzx eax, byte [edx+0x5c]
	shl eax, 0x5
	mov edx, [ebp-0x140]
	lea eax, [edx+eax+0x10]
	mov [esp], eax
	call _Z23MatrixTransformVector43PKfPA3_S_Pf
	movss xmm0, dword [ebp-0x8c]
	mulss xmm0, [_float_40_00000000]
	addss xmm0, [ebp-0x30]
	movss [ebp-0x3c], xmm0
	movss xmm0, dword [ebp-0x88]
	mulss xmm0, [_float_40_00000000]
	addss xmm0, [ebp-0x2c]
	movss [ebp-0x38], xmm0
	movss xmm0, dword [ebp-0x84]
	mulss xmm0, [_float_40_00000000]
	addss xmm0, [ebp-0x28]
	movss [ebp-0x34], xmm0
	movss xmm0, dword [ebp-0x138]
	mulss xmm0, [ebp-0x8c]
	addss xmm0, [ebp-0x30]
	movss [ebp-0x48], xmm0
	movss xmm0, dword [ebp-0x138]
	mulss xmm0, [ebp-0x88]
	addss xmm0, [ebp-0x2c]
	movss [ebp-0x44], xmm0
	movss xmm0, dword [ebp-0x138]
	mulss xmm0, [ebp-0x84]
	addss xmm0, [ebp-0x28]
	movss [ebp-0x40], xmm0
	mov dword [esp+0x18], 0x211
	mov eax, [edi]
	mov [esp+0x14], eax
	lea eax, [ebp-0x48]
	mov [esp+0x10], eax
	mov eax, vec3_origin
	mov [esp+0xc], eax
	mov [esp+0x8], eax
	lea eax, [ebp-0x3c]
	mov [esp+0x4], eax
	lea eax, [ebp-0x74]
	mov [esp], eax
	call _Z15CG_TraceCapsuleP7trace_tPKfS2_S2_S2_ii
	movss xmm2, dword [ebp-0x74]
	movaps xmm0, xmm2
	mulss xmm0, [_float_65535_00000000]
	addss xmm0, [_float_0_50000000]
	cvttss2si edx, xmm0
	mov eax, [ebp-0x12c]
	mov [eax+0x54], dx
	mov eax, cgArray
	mov edx, [eax+0xfd7e8]
	and edx, 0x80000003
	mov eax, edx
	js _Z19CG_VehProcessEntityiP9centity_s_100
_Z19CG_VehProcessEntityiP9centity_s_120:
	cmp [ebp-0x13c], eax
	jnz _Z19CG_VehProcessEntityiP9centity_s_110
	mov eax, [ebp-0x13c]
	mov byte [eax+ebp-0x11c], 0x1
	movss xmm1, dword [ebp-0x3c]
	movss xmm0, dword [ebp-0x48]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	mov edx, [ebp-0x174]
	movss [edx+0x4], xmm1
	movss xmm1, dword [ebp-0x38]
	movss xmm0, dword [ebp-0x44]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [edx+0x8], xmm1
	movss xmm1, dword [ebp-0x34]
	movss xmm0, dword [ebp-0x40]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm1, xmm2
	movss [edx+0xc], xmm1
	mov eax, [ebp-0x64]
	and eax, 0x1f00000
	sar eax, 0x14
	mov edx, [ebp-0x13c]
	mov [ebp+edx-0xe8], al
	jmp _Z19CG_VehProcessEntityiP9centity_s_110
_Z19CG_VehProcessEntityiP9centity_s_100:
	sub eax, 0x1
	or eax, 0xfffffffc
	add eax, 0x1
	jmp _Z19CG_VehProcessEntityiP9centity_s_120
	nop


;CG_VehRegisterDvars()
_Z19CG_VehRegisterDvarsv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [esp+0xc], _cstring_turn_on_debug_in
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_vehdebugclient
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [vehDebugClient], eax
	mov dword [esp+0x14], _cstring_how_far_away_the
	mov dword [esp+0x10], 0x80
	mov ebx, 0x447a0000
	mov [esp+0xc], ebx
	mov dword [esp+0x8], 0x3f800000
	mov dword [esp+0x4], 0x43960000
	mov dword [esp], _cstring_vehdriverviewdis
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [vehDriverViewDist], eax
	mov dword [esp+0x14], _cstring_how_far_the_driv
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], ebx
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x42480000
	mov dword [esp], _cstring_vehdriverviewfoc
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [vehDriverViewFocusRange], eax
	mov dword [esp+0x14], _cstring_how_much_to_rota
	mov dword [esp+0x10], 0x0
	mov edi, 0x43b40000
	mov [esp+0xc], edi
	mov ebx, 0xc3b40000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x428c0000
	mov dword [esp], _cstring_heli_barrelrotat
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [heli_barrelRotation], eax
	mov dword [esp+0x14], _cstring_null
	mov dword [esp+0x10], 0x0
	mov esi, 0x7f7fffff
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x449c4000
	mov dword [esp], _cstring_heli_barrelmaxve
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [heli_barrelMaxVelocity], eax
	mov dword [esp+0x14], _cstring_null
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov [esp+0x4], edi
	mov dword [esp], _cstring_heli_barrelslowd
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [heli_barrelSlowdown], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CG_VehPlayerVehicleSlot(int, int)
_Z23CG_VehPlayerVehicleSlotii:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	add eax, cg_entitiesArray
	cmp dword [eax+0xd0], 0x1
	jz _Z23CG_VehPlayerVehicleSlotii_10
	xor eax, eax
	mov eax, [eax+0x4c4]
	pop ebp
	ret
_Z23CG_VehPlayerVehicleSlotii_10:
	mov edx, [eax+0x158]
	lea eax, [edx+edx*8]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	lea eax, [edx+eax*2]
	mov edx, bgs
	mov edx, [edx]
	lea eax, [edx+eax*4+0x99a04]
	mov eax, [eax+0x4c4]
	pop ebp
	ret


;CG_VehSphereCoordsToPos(float, float, float, float*)
_Z23CG_VehSphereCoordsToPosfffPf:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x44
	mov ebx, [ebp+0x14]
	movss xmm0, dword [_float_90_00000000]
	subss xmm0, [ebp+0x10]
	cvtss2sd xmm0, xmm0
	mulsd xmm0, [_double_0_01745329]
	cvtsd2ss xmm0, xmm0
	movss [ebp-0x10], xmm0
	movss [esp], xmm0
	call sinf
	fstp dword [ebp-0x14]
	movss xmm0, dword [ebp-0x10]
	movss [esp], xmm0
	call cosf
	fstp dword [ebp-0x18]
	movss xmm0, dword [ebp+0xc]
	subss xmm0, [_float_90_00000000]
	movss [ebp+0xc], xmm0
	cvtss2sd xmm0, xmm0
	mulsd xmm0, [_double_0_01745329]
	cvtsd2ss xmm0, xmm0
	movss [ebp-0xc], xmm0
	movss [esp], xmm0
	call sinf
	fstp dword [ebp-0x2c]
	movss xmm1, dword [ebp-0x2c]
	movss xmm0, dword [ebp-0xc]
	movss [esp], xmm0
	movss [ebp-0x28], xmm1
	call cosf
	fstp dword [ebp-0x2c]
	movss xmm0, dword [ebp-0x2c]
	mulss xmm0, [ebp+0x8]
	mulss xmm0, [ebp-0x14]
	movss [ebx], xmm0
	movss xmm1, dword [ebp-0x28]
	mulss xmm1, [ebp+0x8]
	mulss xmm1, [ebp-0x14]
	movss [ebx+0x4], xmm1
	movss xmm0, dword [ebp-0x18]
	mulss xmm0, [ebp+0x8]
	movss [ebx+0x8], xmm0
	add esp, 0x44
	pop ebx
	pop ebp
	ret
	nop


;Veh_GetTurretBarrelRoll(int, centity_s*)
_Z23Veh_GetTurretBarrelRolliP9centity_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov eax, [ebp+0xc]
	mov eax, [eax+0xcc]
	mov [ebp-0x1c], eax
	mov edx, [ebp+0x8]
	lea eax, [edx+edx*4]
	shl eax, 0x6
	lea edx, [eax+vehEffects]
	xor ecx, ecx
	mov ebx, eax
_Z23Veh_GetTurretBarrelRolliP9centity_s_30:
	cmp byte [edx], 0x0
	jz _Z23Veh_GetTurretBarrelRolliP9centity_s_10
	mov eax, [ebp-0x1c]
	cmp eax, [edx+0x8]
	jz _Z23Veh_GetTurretBarrelRolliP9centity_s_20
	add ecx, 0x1
	add ebx, 0x28
	add edx, 0x28
	cmp ecx, 0x8
	jnz _Z23Veh_GetTurretBarrelRolliP9centity_s_30
_Z23Veh_GetTurretBarrelRolliP9centity_s_10:
	mov edx, [ebp+0x8]
	lea eax, [edx+edx*4]
	shl eax, 0x6
	add eax, vehEffects
	xor ecx, ecx
_Z23Veh_GetTurretBarrelRolliP9centity_s_50:
	cmp byte [eax], 0x0
	jz _Z23Veh_GetTurretBarrelRolliP9centity_s_40
	add ecx, 0x1
	add eax, 0x28
	cmp ecx, 0x8
	jnz _Z23Veh_GetTurretBarrelRolliP9centity_s_50
	mov edx, [ebp+0x8]
	lea eax, [edx+edx*4]
	shl eax, 0x6
	lea ebx, [eax+vehEffects]
	mov edi, 0x1
	and ecx, 0xffffff00
	mov esi, eax
_Z23Veh_GetTurretBarrelRolliP9centity_s_60:
	lea edx, [ecx+ecx*4]
	mov eax, [ebx+0x2c]
	cmp eax, [esi+edx*8+vehEffects+0x4]
	cmovl ecx, edi
	add edi, 0x1
	add ebx, 0x28
	cmp edi, 0x8
	jnz _Z23Veh_GetTurretBarrelRolliP9centity_s_60
_Z23Veh_GetTurretBarrelRolliP9centity_s_40:
	lea ebx, [ecx+ecx*4]
	mov edx, [ebp+0x8]
	lea eax, [edx+edx*4]
	shl eax, 0x6
	lea ebx, [eax+ebx*8]
	lea esi, [ebx+vehEffects]
	cld
	mov ecx, 0xa
	xor eax, eax
	mov edi, esi
	rep stosd
	mov byte [ebx+vehEffects], 0x1
	call _Z16Sys_Millisecondsv
	mov [ebx+vehEffects+0x4], eax
	mov eax, [ebp-0x1c]
	mov [ebx+vehEffects+0x8], eax
_Z23Veh_GetTurretBarrelRolliP9centity_s_100:
	mov eax, cgArray
	mov eax, [eax+0x46128]
	mov edx, eax
	sub edx, [esi+0x20]
	mov [esi+0x20], eax
	cvtsi2ss xmm0, edx
	movaps xmm1, xmm0
	divss xmm1, dword [_float_1000_00000000]
	mulss xmm1, [esi+0x18]
	addss xmm1, [esi+0x1c]
	movss [esi+0x1c], xmm1
	ucomiss xmm1, [_float_360_00000000]
	jbe _Z23Veh_GetTurretBarrelRolliP9centity_s_70
	subss xmm1, [_float_360_00000000]
	movss [esi+0x1c], xmm1
_Z23Veh_GetTurretBarrelRolliP9centity_s_70:
	mov eax, [heli_barrelSlowdown]
	mulss xmm0, [eax+0xc]
	divss xmm0, dword [_float__1000_00000000]
	addss xmm0, [esi+0x18]
	movss [esi+0x18], xmm0
	ucomiss xmm0, [_float_0_00000000]
	jb _Z23Veh_GetTurretBarrelRolliP9centity_s_80
_Z23Veh_GetTurretBarrelRolliP9centity_s_90:
	fld dword [esi+0x1c]
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23Veh_GetTurretBarrelRolliP9centity_s_80:
	jp _Z23Veh_GetTurretBarrelRolliP9centity_s_90
	xor eax, eax
	mov [esi+0x18], eax
	fld dword [esi+0x1c]
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23Veh_GetTurretBarrelRolliP9centity_s_20:
	call _Z16Sys_Millisecondsv
	mov [ebx+vehEffects+0x4], eax
	lea esi, [ebx+vehEffects]
	jmp _Z23Veh_GetTurretBarrelRolliP9centity_s_100
	nop


;Veh_IncTurretBarrelRoll(int, int, float)
_Z23Veh_IncTurretBarrelRolliif:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xc
	mov edx, [ebp+0x8]
	lea eax, [edx+edx*4]
	shl eax, 0x6
	lea edx, [eax+vehEffects]
	xor ecx, ecx
	mov ebx, eax
_Z23Veh_IncTurretBarrelRolliif_30:
	cmp byte [edx], 0x0
	jz _Z23Veh_IncTurretBarrelRolliif_10
	mov eax, [ebp+0xc]
	cmp eax, [edx+0x8]
	jz _Z23Veh_IncTurretBarrelRolliif_20
	add ecx, 0x1
	add ebx, 0x28
	add edx, 0x28
	cmp ecx, 0x8
	jnz _Z23Veh_IncTurretBarrelRolliif_30
_Z23Veh_IncTurretBarrelRolliif_10:
	mov edx, [ebp+0x8]
	lea eax, [edx+edx*4]
	shl eax, 0x6
	add eax, vehEffects
	xor ecx, ecx
_Z23Veh_IncTurretBarrelRolliif_50:
	cmp byte [eax], 0x0
	jz _Z23Veh_IncTurretBarrelRolliif_40
	add ecx, 0x1
	add eax, 0x28
	cmp ecx, 0x8
	jnz _Z23Veh_IncTurretBarrelRolliif_50
	mov edx, [ebp+0x8]
	lea eax, [edx+edx*4]
	shl eax, 0x6
	lea ebx, [eax+vehEffects]
	mov edi, 0x1
	and ecx, 0xffffff00
	mov esi, eax
_Z23Veh_IncTurretBarrelRolliif_60:
	lea edx, [ecx+ecx*4]
	mov eax, [ebx+0x2c]
	cmp eax, [esi+edx*8+vehEffects+0x4]
	cmovl ecx, edi
	add edi, 0x1
	add ebx, 0x28
	cmp edi, 0x8
	jnz _Z23Veh_IncTurretBarrelRolliif_60
_Z23Veh_IncTurretBarrelRolliif_40:
	lea ebx, [ecx+ecx*4]
	mov edx, [ebp+0x8]
	lea eax, [edx+edx*4]
	shl eax, 0x6
	lea ebx, [eax+ebx*8]
	lea esi, [ebx+vehEffects]
	cld
	mov ecx, 0xa
	xor eax, eax
	mov edi, esi
	rep stosd
	mov byte [ebx+vehEffects], 0x1
	call _Z16Sys_Millisecondsv
	mov [ebx+vehEffects+0x4], eax
	mov eax, [ebp+0xc]
	mov [ebx+vehEffects+0x8], eax
_Z23Veh_IncTurretBarrelRolliif_70:
	mov eax, [heli_barrelMaxVelocity]
	movss xmm2, dword [eax+0xc]
	movss xmm1, dword [ebp+0x10]
	addss xmm1, [esi+0x18]
	movaps xmm3, xmm2
	subss xmm3, xmm1
	pxor xmm0, xmm0
	cmpss xmm0, xmm3, 0x6
	andps xmm2, xmm0
	andnps xmm0, xmm1
	orps xmm0, xmm2
	movss [esi+0x18], xmm0
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23Veh_IncTurretBarrelRolliif_20:
	call _Z16Sys_Millisecondsv
	mov [ebx+vehEffects+0x4], eax
	lea esi, [ebx+vehEffects]
	jmp _Z23Veh_IncTurretBarrelRolliif_70


;CG_VehEntityUsingVehicle(int, int)
_Z24CG_VehEntityUsingVehicleii:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	add eax, cg_entitiesArray
	cmp dword [eax+0xd0], 0x1
	jz _Z24CG_VehEntityUsingVehicleii_10
_Z24CG_VehEntityUsingVehicleii_20:
	xor eax, eax
	pop ebp
	ret
_Z24CG_VehEntityUsingVehicleii_10:
	mov edx, [eax+0x158]
	lea eax, [edx+edx*8]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	lea eax, [edx+eax*2]
	mov edx, bgs
	mov edx, [edx]
	lea eax, [edx+eax*4+0x99a04]
	test eax, eax
	jz _Z24CG_VehEntityUsingVehicleii_20
	cmp dword [eax+0x4c0], 0x3ff
	jz _Z24CG_VehEntityUsingVehicleii_20
	mov eax, 0x1
	pop ebp
	ret
	nop


;CG_VehLocalClientDriving(int)
_Z24CG_VehLocalClientDrivingi:
	push ebp
	mov ebp, esp
	push ebx
	mov ebx, cgArray
	mov edx, [ebx+0x46218]
	lea eax, [edx+edx*8]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	lea eax, [edx+eax*2]
	lea eax, [ebx+eax*4+0xe9f34]
	cmp dword [eax+0x4c0], 0x3ff
	jz _Z24CG_VehLocalClientDrivingi_10
	mov eax, [eax+0x4c4]
	test eax, eax
	jz _Z24CG_VehLocalClientDrivingi_20
_Z24CG_VehLocalClientDrivingi_10:
	xor eax, eax
	pop ebx
	pop ebp
	ret
_Z24CG_VehLocalClientDrivingi_20:
	mov eax, 0x1
	pop ebx
	pop ebp
	ret
	nop
	add [eax], al


;CG_VehLocalClientVehicleSlot(int)
_Z28CG_VehLocalClientVehicleSloti:
	push ebp
	mov ebp, esp
	push ebx
	mov ebx, cgArray
	mov edx, [ebx+0x46218]
	lea eax, [edx+edx*8]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	lea eax, [edx+eax*2]
	mov eax, [ebx+eax*4+0xea3f8]
	pop ebx
	pop ebp
	ret
	nop


;CG_VehSeatTransformForPlayer(int, int, float*, float*)
_Z28CG_VehSeatTransformForPlayeriiPfS_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov eax, [ebp+0xc]
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	add eax, cg_entitiesArray
	cmp dword [eax+0xd0], 0x1
	jz _Z28CG_VehSeatTransformForPlayeriiPfS__10
	xor eax, eax
_Z28CG_VehSeatTransformForPlayeriiPfS__40:
	mov edi, [eax+0x4c4]
	mov ebx, [eax+0x4c0]
	mov [esp], edi
	call _Z25BG_VehiclesGetSlotTagNamei
	movzx ecx, ax
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	lea esi, [ebp-0x48]
	mov [esp], esi
	mov edx, ebx
	mov eax, [ebp+0x8]
	call _Z12GetTagMatrixiitPA3_fPf
	mov eax, [ebp+0x14]
	test eax, eax
	jz _Z28CG_VehSeatTransformForPlayeriiPfS__20
	mov eax, [ebp+0x14]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z12AxisToAnglesPA3_KfPf
_Z28CG_VehSeatTransformForPlayeriiPfS__20:
	mov ebx, [ebp+0x10]
	test ebx, ebx
	jz _Z28CG_VehSeatTransformForPlayeriiPfS__30
	mov eax, [ebp-0x24]
	mov edx, [ebp+0x10]
	mov [edx], eax
	mov eax, [ebp-0x20]
	mov [edx+0x4], eax
	movss xmm0, dword [ebp-0x1c]
	movss [edx+0x8], xmm0
	cmp edi, 0x1
	ja _Z28CG_VehSeatTransformForPlayeriiPfS__30
	addss xmm0, [_float__35_00000000]
	movss [edx+0x8], xmm0
_Z28CG_VehSeatTransformForPlayeriiPfS__30:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z28CG_VehSeatTransformForPlayeriiPfS__10:
	mov edx, [eax+0x158]
	lea eax, [edx+edx*8]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	lea eax, [edx+eax*2]
	mov edx, bgs
	mov edx, [edx]
	lea eax, [edx+eax*4+0x99a04]
	jmp _Z28CG_VehSeatTransformForPlayeriiPfS__40


;CG_VehLocalClientUsingVehicle(int)
_Z29CG_VehLocalClientUsingVehiclei:
	push ebp
	mov ebp, esp
	push ebx
	mov ebx, cgArray
	mov edx, [ebx+0x46218]
	lea eax, [edx+edx*8]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	lea eax, [edx+eax*2]
	cmp dword [ebx+eax*4+0xea3f4], 0x3ff
	setnz al
	movzx eax, al
	pop ebx
	pop ebp
	ret
	nop


;CG_VehSeatOriginForLocalClient(int, float*)
_Z30CG_VehSeatOriginForLocalClientiPf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov esi, [ebp+0xc]
	mov ebx, cgArray
	mov edx, [ebx+0x46218]
	lea eax, [edx+edx*8]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	lea eax, [edx+eax*2]
	lea eax, [ebx+eax*4+0xe9f34]
	mov edi, [eax+0x4c4]
	mov ebx, [eax+0x4c0]
	mov [esp], edi
	call _Z25BG_VehiclesGetSlotTagNamei
	movzx ecx, ax
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	lea eax, [ebp-0x48]
	mov [esp], eax
	mov edx, ebx
	mov eax, [ebp+0x8]
	call _Z12GetTagMatrixiitPA3_fPf
	test esi, esi
	jz _Z30CG_VehSeatOriginForLocalClientiPf_10
	mov eax, [ebp-0x24]
	mov [esi], eax
	mov eax, [ebp-0x20]
	mov [esi+0x4], eax
	movss xmm0, dword [ebp-0x1c]
	movss [esi+0x8], xmm0
	cmp edi, 0x1
	ja _Z30CG_VehSeatOriginForLocalClientiPf_10
	addss xmm0, [_float__35_00000000]
	movss [esi+0x8], xmm0
_Z30CG_VehSeatOriginForLocalClientiPf_10:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Initialized global or static variables of cg_vehicles_mp:
SECTION .data
wheelTags: dd 0x1708d4e, 0x1708d50, 0x1708d52, 0x1708d54, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of cg_vehicles_mp:
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
g_fltMin__uint4: dd 0x800000, 0x800000, 0x800000, 0x800000


;Zero initialized global or static variables of cg_vehicles_mp:
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
g_fltMin: resb 0x10
heli_barrelRotation: resb 0x4
heli_barrelMaxVelocity: resb 0x4
heli_barrelSlowdown: resb 0x4
vehDebugClient: resb 0x8
vehDriverViewDist: resb 0x4
vehDriverViewFocusRange: resb 0x4
vehEffects: resb 0x164


;All cstrings:
SECTION .rdata
_cstring_hummer_engine_hi:		db "hummer_engine_high",0
_cstring_hummer_engine_lo:		db "hummer_engine_low",0
_cstring_hummer_idle_low:		db "hummer_idle_low",0
_cstring_hummer_idle_high:		db "hummer_idle_high",0
_cstring_i:		db "#%i",0
_cstring_vehicle_being_us:		db "Vehicle being used by a player was not included in latest snapshot.",0ah,0
_cstring_gettagmatrix_una:		db "GetTagMatrix() unable to get vehicle DObj.",0ah,0
_cstring_turn_on_debug_in:		db "Turn on debug information for vehicles",0
_cstring_vehdebugclient:		db "vehDebugClient",0
_cstring_how_far_away_the:		db "How far away the driver",27h,"s view is from the focus point",0
_cstring_vehdriverviewdis:		db "vehDriverViewDist",0
_cstring_how_far_the_driv:		db "How far the driver",27h,"s view focus will travel vertically",0
_cstring_vehdriverviewfoc:		db "vehDriverViewFocusRange",0
_cstring_how_much_to_rota:		db "How much to rotate the turret barrel when a helicopter fires",0
_cstring_heli_barrelrotat:		db "heli_barrelRotation",0
_cstring_null:		db 0
_cstring_heli_barrelmaxve:		db "heli_barrelMaxVelocity",0
_cstring_heli_barrelslowd:		db "heli_barrelSlowdown",0



;All constant floats and doubles:
SECTION .rdata
_float_0_05000000:		dd 0x3d4ccccd	; 0.05
_float_0_60000002:		dd 0x3f19999a	; 0.6
_float_0_80000001:		dd 0x3f4ccccd	; 0.8
_float__1_00000000:		dd 0xbf800000	; -1
_float_1_00000000:		dd 0x3f800000	; 1
_float_1200_00000000:		dd 0x44960000	; 1200
_float_350_00000000:		dd 0x43af0000	; 350
_float_850_00000000:		dd 0x44548000	; 850
_float_0_10000001:		dd 0x3dccccce	; 0.1
_float_1000_00000000:		dd 0x447a0000	; 1000
_float_0_00277778:		dd 0x3b360b61	; 0.00277778
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_360_00000000:		dd 0x43b40000	; 360
_float_182_04444885:		dd 0x43360b61	; 182.044
_float_0_00100000:		dd 0x3a83126f	; 0.001
_float_32_00000000:		dd 0x42000000	; 32
_float_40_00000000:		dd 0x42200000	; 40
_float_65535_00000000:		dd 0x477fff00	; 65535
_float_90_00000000:		dd 0x42b40000	; 90
_double_0_01745329:		dq 0x3f91df46a2529d39	; 0.0174533
_float__1000_00000000:		dd 0xc47a0000	; -1000
_float_0_00000000:		dd 0x0	; 0
_float__35_00000000:		dd 0xc20c0000	; -35

