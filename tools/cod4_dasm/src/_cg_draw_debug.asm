;Imports of cg_draw_debug:
	extern cg_drawFPSLabels
	extern cgMedia
	extern CG_DrawDevString
	extern colorWhiteFaded
	extern cgArray
	extern R_PickMaterial
	extern scrPlaceView
	extern colorWhite
	extern CG_DrawSmallDevStringColor
	extern cg_debugInfoCornerOffset
	extern floorf
	extern R_TextWidth
	extern colorRed
	extern va
	extern cg_drawFPS
	extern R_TrackStatistics
	extern colorGreenFaded
	extern Sys_Milliseconds
	extern cg_drawMaterial
	extern AimAssist_DrawDebugOverlay
	extern cg_drawSnapshot
	extern cgsArray
	extern scrPlaceFull
	extern StatMon_GetStatsArray
	extern UI_DrawHandlePic
	extern snd_drawInfo
	extern cg_drawScriptUsage
	extern phys_drawDebugInfo
	extern Ragdoll_DebugDraw
	extern Scr_GetNumScriptVars
	extern CG_DrawStringExt
	extern Scr_GetNumScriptThreads
	extern SND_GetSoundOverlay
	extern Cvar_VariableIntegerValue
	extern Phys_DrawDebugText

;Exports of cg_draw_debug:
	global rendererStats
	global fps_previousTimes
	global fps_index
	global _ZZ15CG_CalculateFPSvE8previous
	global CG_CornerDebugPrint
	global traceMasks.138450
	global CG_DrawMaterial
	global CG_DrawFPS
	global CG_CalculateFPS
	global CG_DrawDebugOverlays
	global CG_DrawUpperRightDebugInfo
	global CG_DrawFullScreenDebugOverlays


SECTION .text


;CG_CornerDebugPrint(ScreenPlacement const*, float, float, float, char const*, char const*, float const*)
CG_CornerDebugPrint:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov edi, eax
	movss [ebp-0x20], xmm1
	mov ebx, ecx
	mov ecx, [ebp+0x8]
	mov eax, cg_drawFPSLabels
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz CG_CornerDebugPrint_10
	subss xmm0, xmm2
	movss [ebp-0x1c], xmm0
	mov esi, cgMedia
	mov eax, [esi+0x25c]
	mov [esp+0x20], eax
	mov dword [esp+0x1c], 0x6
	mov [esp+0x18], ecx
	mov [esp+0x14], edx
	mov dword [esp+0x10], 0x3f8ccccd
	mov dword [esp+0xc], 0x3f800000
	movss [esp+0x8], xmm1
	movss [esp+0x4], xmm0
	mov [esp], edi
	call CG_DrawDevString
	mov esi, eax
	mov edx, cgMedia
	mov eax, [edx+0x25c]
	mov [esp+0x20], eax
	mov dword [esp+0x1c], 0x5
	mov eax, colorWhiteFaded
	mov [esp+0x18], eax
	mov [esp+0x14], ebx
	mov dword [esp+0x10], 0x3f8ccccd
	mov dword [esp+0xc], 0x3f800000
	movss xmm0, dword [ebp-0x20]
	movss [esp+0x8], xmm0
	movss xmm1, dword [ebp-0x1c]
	movss [esp+0x4], xmm1
	mov [esp], edi
	call CG_DrawDevString
	cmp esi, eax
	cmovge eax, esi
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_75000000]
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_CornerDebugPrint_10:
	mov eax, cgMedia
	mov eax, [eax+0x25c]
	mov [esp+0x20], eax
	mov dword [esp+0x1c], 0x6
	mov [esp+0x18], ecx
	mov [esp+0x14], edx
	mov dword [esp+0x10], 0x3f8ccccd
	mov dword [esp+0xc], 0x3f800000
	movss [esp+0x8], xmm1
	movss [esp+0x4], xmm0
	mov [esp], edi
	call CG_DrawDevString
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_75000000]
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;CG_DrawMaterial(int, int)
CG_DrawMaterial:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x207c
	mov dword [esp+0x18], 0x1000
	lea eax, [ebp-0x2058]
	mov [esp+0x14], eax
	lea edx, [ebp-0x1058]
	mov [esp+0x10], edx
	lea edi, [ebp-0x58]
	mov [esp+0xc], edi
	mov eax, cgArray
	lea edx, [eax+0x492ec]
	mov [esp+0x8], edx
	add eax, 0x492e0
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov eax, [eax*4+traceMasks.138450]
	mov [esp], eax
	call R_PickMaterial
	test eax, eax
	jz CG_DrawMaterial_10
	mov eax, [ebp+0x8]
	shl eax, 0x6
	mov edx, [ebp+0x8]
	lea ebx, [eax+edx*4]
	add ebx, scrPlaceView
	mov dword [esp+0x14], 0x5
	mov esi, colorWhite
	mov [esp+0x10], esi
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x43700000
	mov edi, 0x41000000
	mov [esp+0x4], edi
	mov [esp], ebx
	call CG_DrawSmallDevStringColor
	cvtsi2ss xmm1, eax
	addss xmm1, [_float_240_00000000]
	mov dword [esp+0x14], 0x5
	mov [esp+0x10], esi
	lea eax, [ebp-0x1058]
	mov [esp+0xc], eax
	movss [esp+0x8], xmm1
	mov [esp+0x4], edi
	mov [esp], ebx
	movss [ebp-0x2068], xmm1
	call CG_DrawSmallDevStringColor
	mov dword [esp+0x14], 0x5
	mov [esp+0x10], esi
	lea edx, [ebp-0x2058]
	mov [esp+0xc], edx
	cvtsi2ss xmm0, eax
	movss xmm1, dword [ebp-0x2068]
	addss xmm1, xmm0
	movss [esp+0x8], xmm1
	mov [esp+0x4], edi
	mov [esp], ebx
	call CG_DrawSmallDevStringColor
CG_DrawMaterial_10:
	add esp, 0x207c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CG_DrawFPS(ScreenPlacement const*, float)
CG_DrawFPS:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	cmp dword [fps_index], 0x1f
	jle CG_DrawFPS_10
	mov eax, [ebp+0x8]
	movss xmm0, dword [eax+0x20]
	movss [ebp-0x58], xmm0
	subss xmm0, [eax+0x18]
	movss [ebp-0x58], xmm0
	mov eax, cg_debugInfoCornerOffset
	mov eax, [eax]
	addss xmm0, [eax+0xc]
	movss [ebp-0x58], xmm0
	mov edi, 0x7fffffff
	xor esi, esi
	xor ecx, ecx
	mov edx, fps_previousTimes
CG_DrawFPS_20:
	mov eax, [edx]
	add ecx, eax
	cmp eax, edi
	cmovl edi, eax
	cmp esi, eax
	cmovl esi, eax
	add edx, 0x4
	cmp edx, fps_index
	jnz CG_DrawFPS_20
	cvtsi2ss xmm2, ecx
	movss [ebp-0x50], xmm2
	movss xmm3, dword [_float_0_03125000]
	mulss xmm2, xmm3
	movss [ebp-0x5c], xmm2
	pxor xmm2, xmm2
	mov eax, fps_previousTimes
	movss xmm1, dword [_data16_7fffffff]
CG_DrawFPS_30:
	cvtsi2ss xmm0, dword [eax]
	subss xmm0, [ebp-0x5c]
	andps xmm0, xmm1
	addss xmm2, xmm0
	add eax, 0x4
	cmp edx, eax
	jnz CG_DrawFPS_30
	mulss xmm2, xmm3
	movss [ebp-0x60], xmm2
	test ecx, ecx
	jz CG_DrawFPS_40
	test edi, edi
	jle CG_DrawFPS_50
CG_DrawFPS_110:
	cvtsi2ss xmm2, edi
	movss [ebp-0x4c], xmm2
CG_DrawFPS_120:
	cvtsi2ss xmm0, esi
	movss xmm1, dword [_float_1000_00000000]
	movaps xmm3, xmm1
	divss xmm3, xmm0
	movaps xmm0, xmm3
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	movss [ebp-0x88], xmm1
	call floorf
	fstp dword [ebp-0x6c]
	cvttss2si eax, [ebp-0x6c]
	mov [ebp-0x68], eax
	movss xmm1, dword [ebp-0x88]
	divss xmm1, dword [ebp-0x4c]
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	call floorf
	fstp dword [ebp-0x70]
	cvttss2si edx, [ebp-0x70]
	mov [ebp-0x64], edx
	movss xmm0, dword [_float_32000_00000000]
	divss xmm0, dword [ebp-0x50]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x74]
	cvttss2si ebx, [ebp-0x74]
	mov edx, cgMedia
	mov eax, [edx+0x25c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring__cg_msframe
	call R_TextWidth
	cvtsi2ss xmm0, eax
	movss [ebp-0x54], xmm0
	lea eax, [ebx-0x37]
	cvtsi2ss xmm0, eax
	divss xmm0, dword [_float_10_00000000]
	movaps xmm1, xmm0
	subss xmm1, [_float_1_00000000]
	pxor xmm2, xmm2
	movaps xmm3, xmm2
	cmpss xmm3, xmm1, 0x6
	movaps xmm1, xmm3
	movaps xmm3, xmm0
	andps xmm3, xmm1
	movss xmm4, dword [_float_1_00000000]
	andnps xmm1, xmm4
	orps xmm1, xmm3
	movaps xmm3, xmm2
	subss xmm3, xmm0
	movaps xmm4, xmm2
	cmpss xmm4, xmm3, 0x6
	andps xmm1, xmm4
	orps xmm1, xmm2
	mov eax, colorRed
	movss xmm2, dword [eax]
	mov edx, colorWhite
	movss xmm0, dword [edx]
	subss xmm0, xmm2
	mulss xmm0, xmm1
	addss xmm2, xmm0
	movss [ebp-0x28], xmm2
	movss xmm2, dword [eax+0x4]
	movss xmm0, dword [edx+0x4]
	subss xmm0, xmm2
	mulss xmm0, xmm1
	addss xmm2, xmm0
	movss [ebp-0x24], xmm2
	movss xmm2, dword [eax+0x8]
	movss xmm0, dword [edx+0x8]
	subss xmm0, xmm2
	mulss xmm0, xmm1
	addss xmm2, xmm0
	movss [ebp-0x20], xmm2
	movss xmm2, dword [eax+0xc]
	movss xmm0, dword [edx+0xc]
	subss xmm0, xmm2
	mulss xmm1, xmm0
	addss xmm2, xmm1
	movss [ebp-0x1c], xmm2
	mov [esp+0x10], ebx
	movss xmm0, dword [ebp-0x60]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x78]
	cvttss2si eax, [ebp-0x78]
	mov [esp+0xc], eax
	mov eax, [ebp-0x64]
	mov [esp+0x8], eax
	mov edx, [ebp-0x68]
	mov [esp+0x4], edx
	mov dword [esp], _cstring_ii_i_i
	call va
	lea edx, [ebp-0x28]
	mov [esp], edx
	mov ecx, _cstring__fps
	mov edx, eax
	movss xmm2, dword [ebp-0x54]
	movss xmm1, dword [ebp+0xc]
	movss xmm0, dword [ebp-0x58]
	mov eax, [ebp+0x8]
	call CG_CornerDebugPrint
	addss xmm0, [ebp+0xc]
	movss [ebp-0x44], xmm0
	cvtss2sd xmm0, [ebp-0x5c]
	movsd [esp+0xc], xmm0
	mov [esp+0x8], esi
	mov [esp+0x4], edi
	mov dword [esp], _cstring_ii_12f
	call va
	mov edx, colorWhite
	mov [esp], edx
	mov ecx, _cstring__cg_msframe
	mov edx, eax
	movss xmm2, dword [ebp-0x54]
	movss xmm1, dword [ebp-0x44]
	movss xmm0, dword [ebp-0x58]
	mov eax, [ebp+0x8]
	call CG_CornerDebugPrint
	addss xmm0, [ebp-0x44]
	movss [ebp+0xc], xmm0
	mov eax, cg_drawFPS
	mov eax, [eax]
	cmp dword [eax+0xc], 0x1
	jle CG_DrawFPS_10
	mov dword [esp], rendererStats
	call R_TrackStatistics
	mov eax, cg_drawFPSLabels
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz CG_DrawFPS_60
	mov edx, cgMedia
	mov eax, [edx+0x25c]
	mov [esp+0x20], eax
	mov dword [esp+0x1c], 0x7
	mov eax, colorGreenFaded
	mov [esp+0x18], eax
	mov dword [esp+0x14], _cstring_scene
	mov dword [esp+0x10], 0x3f8ccccd
	mov dword [esp+0xc], 0x3f800000
	movss xmm0, dword [ebp+0xc]
	movss [esp+0x8], xmm0
	movss xmm0, dword [ebp-0x58]
	subss xmm0, [ebp-0x54]
	movss [esp+0x4], xmm0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_DrawDevString
CG_DrawFPS_130:
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_75000000]
	movss xmm2, dword [ebp+0xc]
	addss xmm2, xmm0
	movss [ebp-0x40], xmm2
	mov ecx, [rendererStats+0x8]
	mov ebx, 0x55555556
	mov eax, ecx
	imul ebx
	mov eax, ecx
	sar eax, 0x1f
	sub edx, eax
	mov [esp+0x4], edx
	mov dword [esp], _cstring_i
	call va
	mov esi, colorWhite
	mov [esp], esi
	mov ecx, _cstring__view_tris
	mov edx, eax
	movss xmm2, dword [ebp-0x54]
	movss xmm1, dword [ebp-0x40]
	movss xmm0, dword [ebp-0x58]
	mov eax, [ebp+0x8]
	call CG_CornerDebugPrint
	addss xmm0, [ebp-0x40]
	movss [ebp-0x48], xmm0
	mov ecx, [rendererStats+0xc]
	test ecx, ecx
	jnz CG_DrawFPS_70
CG_DrawFPS_160:
	mov ecx, [rendererStats]
	mov eax, ecx
	imul ebx
	mov eax, ecx
	sar eax, 0x1f
	sub edx, eax
	mov [esp+0x4], edx
	mov dword [esp], _cstring_i
	call va
	mov [esp], esi
	mov ecx, _cstring__raw_geo_tris
	mov edx, eax
	movss xmm2, dword [ebp-0x54]
	movss xmm1, dword [ebp-0x48]
	movss xmm0, dword [ebp-0x58]
	mov eax, [ebp+0x8]
	call CG_CornerDebugPrint
	addss xmm0, [ebp-0x48]
	movss [ebp-0x3c], xmm0
	mov ecx, [rendererStats+0x4]
	mov eax, ecx
	imul ebx
	mov eax, ecx
	sar eax, 0x1f
	sub edx, eax
	mov [esp+0x4], edx
	mov dword [esp], _cstring_i
	call va
	mov [esp], esi
	mov ecx, _cstring__raw_fx_tris
	mov edx, eax
	movss xmm2, dword [ebp-0x54]
	movss xmm1, dword [ebp-0x3c]
	movss xmm0, dword [ebp-0x58]
	mov eax, [ebp+0x8]
	call CG_CornerDebugPrint
	addss xmm0, [ebp-0x3c]
	movss [ebp-0x38], xmm0
	mov eax, [rendererStats+0x14]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call va
	mov [esp], esi
	mov ecx, _cstring__prim
	mov edx, eax
	movss xmm2, dword [ebp-0x54]
	movss xmm1, dword [ebp-0x38]
	movss xmm0, dword [ebp-0x58]
	mov eax, [ebp+0x8]
	call CG_CornerDebugPrint
	addss xmm0, [ebp-0x38]
	movss [ebp-0x34], xmm0
	mov eax, cg_drawFPSLabels
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz CG_DrawFPS_80
	mov eax, cgMedia
	mov eax, [eax+0x25c]
	mov [esp+0x20], eax
	mov dword [esp+0x1c], 0x7
	mov eax, colorGreenFaded
	mov [esp+0x18], eax
	mov dword [esp+0x14], _cstring_level
	mov dword [esp+0x10], 0x3f8ccccd
	mov dword [esp+0xc], 0x3f800000
	movss [esp+0x8], xmm0
	movss xmm0, dword [ebp-0x58]
	subss xmm0, [ebp-0x54]
	movss [esp+0x4], xmm0
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_DrawDevString
CG_DrawFPS_150:
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_75000000]
	movss xmm2, dword [ebp-0x34]
	addss xmm2, xmm0
	movss [ebp-0x30], xmm2
	mov eax, [rendererStats+0x1c]
	lea edx, [eax+0xfffff]
	cmp eax, 0xffffffff
	cmovle eax, edx
	sar eax, 0x14
	mov [esp+0x4], eax
	mov dword [esp], _cstring_d
	call va
	mov ebx, colorWhite
	mov [esp], ebx
	mov ecx, _cstring__tex
	mov edx, eax
	movss xmm2, dword [ebp-0x54]
	movss xmm1, dword [ebp-0x30]
	movss xmm0, dword [ebp-0x58]
	mov eax, [ebp+0x8]
	call CG_CornerDebugPrint
	addss xmm0, [ebp-0x30]
	movss [ebp-0x2c], xmm0
	mov eax, [rendererStats+0x24]
	cmp eax, 0x3000000
	jg CG_DrawFPS_90
	mov edx, eax
	test eax, eax
	js CG_DrawFPS_100
CG_DrawFPS_170:
	sar edx, 0x14
	mov [esp+0x4], edx
	mov dword [esp], _cstring_d
	call va
	mov ecx, ebx
CG_DrawFPS_140:
	mov [esp], ecx
	mov ecx, _cstring__min_pc_tex
	mov edx, eax
	movss xmm2, dword [ebp-0x54]
	movss xmm1, dword [ebp-0x2c]
	movss xmm0, dword [ebp-0x58]
	mov eax, [ebp+0x8]
	call CG_CornerDebugPrint
	addss xmm0, [ebp-0x2c]
	movss [ebp+0xc], xmm0
CG_DrawFPS_10:
	fld dword [ebp+0xc]
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_DrawFPS_40:
	movss xmm4, dword [_float_1_00000000]
	movss [ebp-0x50], xmm4
	movss [ebp-0x5c], xmm3
	test edi, edi
	jg CG_DrawFPS_110
CG_DrawFPS_50:
	mov edi, 0x1
	movss xmm0, dword [_float_1_00000000]
	movss [ebp-0x4c], xmm0
	jmp CG_DrawFPS_120
CG_DrawFPS_60:
	mov edx, cgMedia
	mov eax, [edx+0x25c]
	mov [esp+0x20], eax
	mov dword [esp+0x1c], 0x6
	mov eax, colorGreenFaded
	mov [esp+0x18], eax
	mov dword [esp+0x14], _cstring_scene
	mov dword [esp+0x10], 0x3f8ccccd
	mov dword [esp+0xc], 0x3f800000
	movss xmm0, dword [ebp+0xc]
	movss [esp+0x8], xmm0
	movss xmm2, dword [ebp-0x58]
	movss [esp+0x4], xmm2
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_DrawDevString
	jmp CG_DrawFPS_130
CG_DrawFPS_90:
	sar eax, 0x14
	mov [esp+0xc], eax
	mov dword [esp+0x4], 0x0
	mov dword [esp+0x8], 0x40480000
	mov dword [esp], _cstring_budget_is_g_d
	call va
	mov ecx, colorRed
	jmp CG_DrawFPS_140
CG_DrawFPS_80:
	mov eax, cgMedia
	mov eax, [eax+0x25c]
	mov [esp+0x20], eax
	mov dword [esp+0x1c], 0x6
	mov eax, colorGreenFaded
	mov [esp+0x18], eax
	mov dword [esp+0x14], _cstring_level
	mov dword [esp+0x10], 0x3f8ccccd
	mov dword [esp+0xc], 0x3f800000
	movss [esp+0x8], xmm0
	movss xmm2, dword [ebp-0x58]
	movss [esp+0x4], xmm2
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_DrawDevString
	jmp CG_DrawFPS_150
CG_DrawFPS_70:
	mov eax, ecx
	imul ebx
	mov eax, ecx
	sar eax, 0x1f
	sub edx, eax
	mov [esp+0x4], edx
	mov dword [esp], _cstring_i
	call va
	mov [esp], esi
	mov ecx, _cstring__shadow_tris
	mov edx, eax
	movss xmm2, dword [ebp-0x54]
	movss xmm1, dword [ebp-0x48]
	movss xmm0, dword [ebp-0x58]
	mov eax, [ebp+0x8]
	call CG_CornerDebugPrint
	addss xmm0, [ebp-0x48]
	movss [ebp-0x48], xmm0
	jmp CG_DrawFPS_160
CG_DrawFPS_100:
	lea edx, [eax+0xfffff]
	jmp CG_DrawFPS_170
	nop


;CG_CalculateFPS()
CG_CalculateFPS:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call Sys_Milliseconds
	mov ecx, eax
	sub ecx, [_ZZ15CG_CalculateFPSvE8previous]
	mov [_ZZ15CG_CalculateFPSvE8previous], eax
	mov eax, [fps_index]
	mov edx, eax
	and edx, 0x8000001f
	js CG_CalculateFPS_10
	mov [edx*4+fps_previousTimes], ecx
	add eax, 0x1
	mov [fps_index], eax
	leave
	ret
CG_CalculateFPS_10:
	sub edx, 0x1
	or edx, 0xffffffe0
	add edx, 0x1
	mov [edx*4+fps_previousTimes], ecx
	add eax, 0x1
	mov [fps_index], eax
	leave
	ret


;CG_DrawDebugOverlays(int)
CG_DrawDebugOverlays:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0x8]
	mov eax, cg_drawMaterial
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz CG_DrawDebugOverlays_10
	mov [esp+0x4], eax
	mov [esp], edx
	call CG_DrawMaterial
	leave
	ret
CG_DrawDebugOverlays_10:
	mov [ebp+0x8], edx
	leave
	jmp AimAssist_DrawDebugOverlay


;CG_DrawUpperRightDebugInfo(int)
CG_DrawUpperRightDebugInfo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov dword [esp], 0x0
	call R_TrackStatistics
	mov ebx, cg_debugInfoCornerOffset
	mov eax, [ebx]
	movss xmm0, dword [eax+0x10]
	movss [ebp-0x30], xmm0
	mov eax, cg_drawFPS
	mov eax, [eax]
	mov edx, [eax+0xc]
	test edx, edx
	jnz CG_DrawUpperRightDebugInfo_10
CG_DrawUpperRightDebugInfo_40:
	mov eax, cg_drawSnapshot
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz CG_DrawUpperRightDebugInfo_20
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_DrawUpperRightDebugInfo_20:
	mov eax, [ebp+0x8]
	shl eax, 0x6
	mov edx, [ebp+0x8]
	lea edi, [eax+edx*4]
	add edi, scrPlaceView
	movss xmm0, dword [edi+0x20]
	movss [ebp-0x20], xmm0
	subss xmm0, [edi+0x18]
	movss [ebp-0x20], xmm0
	mov eax, [ebx]
	addss xmm0, [eax+0xc]
	movss [ebp-0x20], xmm0
	mov ebx, cgMedia
	mov eax, [ebx+0x25c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring__server_time
	call R_TextWidth
	cvtsi2ss xmm0, eax
	movss [ebp-0x24], xmm0
	mov eax, cg_drawFPSLabels
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz CG_DrawUpperRightDebugInfo_30
	mov eax, [ebx+0x25c]
	mov [esp+0x20], eax
	mov dword [esp+0x1c], 0x7
	mov eax, colorGreenFaded
	mov [esp+0x18], eax
	mov dword [esp+0x14], _cstring_snapshot
	mov dword [esp+0x10], 0x3f8ccccd
	mov dword [esp+0xc], 0x3f800000
	movss xmm0, dword [ebp-0x30]
	movss [esp+0x8], xmm0
	movss xmm0, dword [ebp-0x20]
	subss xmm0, [ebp-0x24]
	movss [esp+0x4], xmm0
	mov [esp], edi
	call CG_DrawDevString
CG_DrawUpperRightDebugInfo_50:
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_75000000]
	movss [ebp-0x2c], xmm0
	movss xmm0, dword [ebp-0x30]
	addss xmm0, [ebp-0x2c]
	movss [ebp-0x2c], xmm0
	mov esi, cgArray
	mov eax, [esi+0x24]
	mov eax, [eax+0x8]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call va
	mov ebx, colorWhite
	mov [esp], ebx
	mov ecx, _cstring__server_time
	mov edx, eax
	movss xmm2, dword [ebp-0x24]
	movss xmm1, dword [ebp-0x2c]
	movss xmm0, dword [ebp-0x20]
	mov eax, edi
	call CG_CornerDebugPrint
	addss xmm0, [ebp-0x2c]
	movss [ebp-0x1c], xmm0
	mov eax, [esi+0x18]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call va
	mov [esp], ebx
	mov ecx, _cstring__snap_num
	mov edx, eax
	movss xmm2, dword [ebp-0x24]
	movss xmm1, dword [ebp-0x1c]
	movss xmm0, dword [ebp-0x20]
	mov eax, edi
	call CG_CornerDebugPrint
	movss [ebp-0x28], xmm0
	mov eax, cgsArray
	mov eax, [eax+0x14]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call va
	mov [esp], ebx
	mov ecx, _cstring__cmd
	mov edx, eax
	movss xmm2, dword [ebp-0x24]
	movss xmm1, dword [ebp-0x1c]
	addss xmm1, [ebp-0x28]
	movss xmm0, dword [ebp-0x20]
	mov eax, edi
	call CG_CornerDebugPrint
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_DrawUpperRightDebugInfo_10:
	movss [esp+0x4], xmm0
	mov eax, scrPlaceFull
	mov [esp], eax
	call CG_DrawFPS
	fstp dword [ebp-0x30]
	jmp CG_DrawUpperRightDebugInfo_40
CG_DrawUpperRightDebugInfo_30:
	mov eax, [ebx+0x25c]
	mov [esp+0x20], eax
	mov dword [esp+0x1c], 0x6
	mov eax, colorGreenFaded
	mov [esp+0x18], eax
	mov dword [esp+0x14], _cstring_snapshot
	mov dword [esp+0x10], 0x3f8ccccd
	mov dword [esp+0xc], 0x3f800000
	movss xmm0, dword [ebp-0x30]
	movss [esp+0x8], xmm0
	movss xmm0, dword [ebp-0x20]
	movss [esp+0x4], xmm0
	mov [esp], edi
	call CG_DrawDevString
	jmp CG_DrawUpperRightDebugInfo_50


;CG_DrawFullScreenDebugOverlays(int)
CG_DrawFullScreenDebugOverlays:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x448c
	call Sys_Milliseconds
	mov esi, eax
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call StatMon_GetStatsArray
	mov ecx, [ebp-0x20]
	test ecx, ecx
	jle CG_DrawFullScreenDebugOverlays_10
	movss xmm1, dword [_float_2_00000000]
	movss xmm0, dword [_float_200_00000000]
	movss [ebp-0x4438], xmm0
	xor ebx, ebx
	movss xmm2, dword [_float_32_00000000]
	movss [ebp-0x445c], xmm2
	mov edi, [ebp-0x445c]
	jmp CG_DrawFullScreenDebugOverlays_20
CG_DrawFullScreenDebugOverlays_40:
	addss xmm1, [_float_34_00000000]
	movaps xmm0, xmm1
	addss xmm0, xmm2
	ucomiss xmm0, [_float_68_00000000]
	jbe CG_DrawFullScreenDebugOverlays_30
	movss xmm0, dword [_float_34_00000000]
	addss xmm0, [ebp-0x4438]
	movss [ebp-0x4438], xmm0
	movss xmm1, dword [_float_2_00000000]
CG_DrawFullScreenDebugOverlays_30:
	add ebx, 0x1
	cmp ebx, [ebp-0x20]
	jge CG_DrawFullScreenDebugOverlays_10
CG_DrawFullScreenDebugOverlays_20:
	mov eax, [ebp-0x1c]
	lea eax, [eax+ebx*8]
	cmp esi, [eax]
	jg CG_DrawFullScreenDebugOverlays_40
	mov eax, [eax+0x4]
	mov [esp+0x20], eax
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x1
	mov dword [esp+0x14], 0x1
	movss [esp+0x10], xmm2
	movss [esp+0xc], xmm2
	movss xmm0, dword [ebp-0x4438]
	movss [esp+0x8], xmm0
	movss [esp+0x4], xmm1
	mov eax, scrPlaceFull
	mov [esp], eax
	movss [ebp-0x4458], xmm1
	call UI_DrawHandlePic
	mov [ebp-0x445c], edi
	movss xmm2, dword [ebp-0x445c]
	movss xmm1, dword [ebp-0x4458]
	jmp CG_DrawFullScreenDebugOverlays_40
CG_DrawFullScreenDebugOverlays_10:
	mov esi, snd_drawInfo
	mov eax, [esi]
	mov ebx, [eax+0xc]
	test ebx, ebx
	jnz CG_DrawFullScreenDebugOverlays_50
	mov eax, cg_drawScriptUsage
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz CG_DrawFullScreenDebugOverlays_60
	mov eax, cg_drawMaterial
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jnz CG_DrawFullScreenDebugOverlays_70
	mov eax, phys_drawDebugInfo
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz CG_DrawFullScreenDebugOverlays_80
CG_DrawFullScreenDebugOverlays_130:
	call Ragdoll_DebugDraw
CG_DrawFullScreenDebugOverlays_90:
	add esp, 0x448c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_DrawFullScreenDebugOverlays_60:
	call Scr_GetNumScriptVars
	mov [esp+0x4], eax
	mov dword [esp], _cstring_num_vars____d
	call va
	mov dword [esp+0x20], 0x1
	mov dword [esp+0x1c], 0x41800000
	mov dword [esp+0x18], 0x1
	mov dword [esp+0x14], 0x1
	mov edi, colorWhite
	mov [esp+0x10], edi
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x42a00000
	mov esi, 0x43c80000
	mov [esp+0x4], esi
	mov ebx, scrPlaceFull
	mov [esp], ebx
	call CG_DrawStringExt
	call Scr_GetNumScriptThreads
	mov [esp+0x4], eax
	mov dword [esp], _cstring_num_threads_d
	call va
	mov dword [esp+0x20], 0x1
	mov dword [esp+0x1c], 0x41800000
	mov dword [esp+0x18], 0x1
	mov dword [esp+0x14], 0x1
	mov [esp+0x10], edi
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x42c00000
	mov [esp+0x4], esi
	mov [esp], ebx
	call CG_DrawStringExt
	add esp, 0x448c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CG_DrawFullScreenDebugOverlays_50:
	lea eax, [ebp-0x20]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x40
	lea edx, [ebp-0x4420]
	mov [esp+0x4], edx
	mov [esp], ebx
	call SND_GetSoundOverlay
	mov [ebp-0x4434], eax
	test eax, eax
	jle CG_DrawFullScreenDebugOverlays_90
	mov dword [esp], _cstring_snd_khz
	call Cvar_VariableIntegerValue
	mov [ebp-0x442c], eax
	mov eax, [esi]
	mov eax, [eax+0x40]
	mov eax, [eax+ebx*4]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_listing_active_s
	call va
	mov dword [esp+0x20], 0x0
	mov ebx, 0x41200000
	mov [esp+0x1c], ebx
	mov dword [esp+0x18], 0x1
	mov dword [esp+0x14], 0x0
	mov edx, colorWhite
	mov [esp+0x10], edx
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x42a40000
	mov edi, 0x40000000
	mov [esp+0x4], edi
	mov esi, scrPlaceFull
	mov [esp], esi
	call CG_DrawStringExt
	mov eax, [ebp-0x442c]
	mov [esp+0x8], eax
	mov eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_cpu_3i_7khz_3i_
	call va
	mov dword [esp+0x20], 0x0
	mov [esp+0x1c], ebx
	mov dword [esp+0x18], 0x1
	mov dword [esp+0x14], 0x0
	mov edx, colorWhite
	mov [esp+0x10], edx
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x42b80000
	mov [esp+0x4], edi
	mov [esp], esi
	call CG_DrawStringExt
	movss xmm0, dword [_float_102_00000000]
	movss [ebp-0x4430], xmm0
	xor edi, edi
	lea esi, [ebp-0x4420]
	lea eax, [ebp-0x4360]
	mov [ebp-0x443c], eax
	lea edx, [ebp-0x43a0]
	mov [ebp-0x4440], edx
	xor ebx, ebx
	jmp CG_DrawFullScreenDebugOverlays_100
CG_DrawFullScreenDebugOverlays_110:
	mov [esp+0x4], edi
	mov dword [esp], _cstring_2i
	call va
	mov edx, eax
CG_DrawFullScreenDebugOverlays_120:
	mov dword [esp+0x20], 0x0
	mov dword [esp+0x1c], 0x41200000
	mov dword [esp+0x18], 0x1
	mov dword [esp+0x14], 0x0
	mov eax, colorWhite
	mov [esp+0x10], eax
	mov [esp+0xc], edx
	movss xmm0, dword [ebp-0x4430]
	movss [esp+0x8], xmm0
	mov dword [esp+0x4], 0x40000000
	mov eax, scrPlaceFull
	mov [esp], eax
	call CG_DrawStringExt
	movss xmm0, dword [_float_10_00000000]
	addss xmm0, [ebp-0x4430]
	movss [ebp-0x4430], xmm0
	add edi, 0x1
	add ebx, 0x110
	add dword [ebp-0x4440], 0x110
	add dword [ebp-0x443c], 0x110
	add esi, 0x110
	cmp [ebp-0x4434], edi
	jz CG_DrawFullScreenDebugOverlays_90
CG_DrawFullScreenDebugOverlays_100:
	cmp byte [esi], 0x0
	jz CG_DrawFullScreenDebugOverlays_110
	cvtss2sd xmm0, [esi+0x10c]
	movsd [esp+0x28], xmm0
	mov eax, [esi+0x108]
	mov [esp+0x24], eax
	cvtss2sd xmm0, [esi+0x104]
	movsd [esp+0x1c], xmm0
	cvtss2sd xmm0, [esi+0x100]
	movsd [esp+0x14], xmm0
	lea eax, [ebp-0x4420]
	add eax, ebx
	mov [esp+0x10], eax
	mov eax, [ebp-0x4440]
	mov [esp+0xc], eax
	mov edx, [ebp-0x443c]
	mov [esp+0x8], edx
	mov [esp+0x4], edi
	mov dword [esp], _cstring_2i_s_20s__50s_vo
	call va
	mov edx, eax
	jmp CG_DrawFullScreenDebugOverlays_120
CG_DrawFullScreenDebugOverlays_80:
	mov eax, scrPlaceFull
	mov [esp], eax
	call Phys_DrawDebugText
	jmp CG_DrawFullScreenDebugOverlays_130
CG_DrawFullScreenDebugOverlays_70:
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_DrawMaterial
	add esp, 0x448c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;Initialized global or static variables of cg_draw_debug:
SECTION .data


;Initialized constant data of cg_draw_debug:
SECTION .rdata
traceMasks.138450: dd 0x0, 0x1, 0x2806831, 0x2810011, 0x7fffffff, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0


;Zero initialized global or static variables of cg_draw_debug:
SECTION .bss
rendererStats: resb 0x40
fps_previousTimes: resb 0x80
fps_index: resb 0x4
_ZZ15CG_CalculateFPSvE8previous: resb 0x3c


;All cstrings:
SECTION .rdata
_cstring__cg_msframe:		db " cg ms/frame",0
_cstring_ii_i_i:		db "(%i-%i, %i) %i",0
_cstring__fps:		db " FPS",0
_cstring_ii_12f:		db "(%i-%i) %1.2f",0
_cstring_scene:		db "-Scene-",0
_cstring_i:		db "%i",0
_cstring__view_tris:		db " view tris",0
_cstring__raw_geo_tris:		db " raw geo tris",0
_cstring__raw_fx_tris:		db " raw fx tris",0
_cstring__prim:		db " prim",0
_cstring_level:		db "-Level-",0
_cstring_d:		db "%d",0
_cstring__tex:		db " tex",0
_cstring__min_pc_tex:		db " min pc tex",0
_cstring_budget_is_g_d:		db "(!budget is %g!) %d",0
_cstring__shadow_tris:		db " shadow tris",0
_cstring__server_time:		db " server time",0
_cstring_snapshot:		db "-Snapshot-",0
_cstring__snap_num:		db " snap num",0
_cstring__cmd:		db " cmd",0
_cstring_num_vars____d:		db "num vars:    %d",0
_cstring_num_threads_d:		db "num threads: %d",0
_cstring_snd_khz:		db "snd_khz",0
_cstring_listing_active_s:		db "Listing Active Sounds of Type: %s",0
_cstring_cpu_3i_7khz_3i_:		db "CPU: ^3%%%i ^7kHz: ^3%i ",0
_cstring_2i:		db "%2i",0
_cstring_2i_s_20s__50s_vo:		db "%2i (%s) %-20s -> %-50s vol^3%04.2f ^7rvol^3%04.2f ^7dist^3%5i ^7pit^3%04.2f",0



;All constant floats and doubles:
SECTION .rdata
_float_0_75000000:		dd 0x3f400000	; 0.75
_float_240_00000000:		dd 0x43700000	; 240
_float_0_03125000:		dd 0x3d000000	; 0.03125
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; OWORD
_float_1000_00000000:		dd 0x447a0000	; 1000
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_32000_00000000:		dd 0x46fa0000	; 32000
_float_10_00000000:		dd 0x41200000	; 10
_float_1_00000000:		dd 0x3f800000	; 1
_float_2_00000000:		dd 0x40000000	; 2
_float_200_00000000:		dd 0x43480000	; 200
_float_32_00000000:		dd 0x42000000	; 32
_float_34_00000000:		dd 0x42080000	; 34
_float_68_00000000:		dd 0x42880000	; 68
_float_102_00000000:		dd 0x42cc0000	; 102

