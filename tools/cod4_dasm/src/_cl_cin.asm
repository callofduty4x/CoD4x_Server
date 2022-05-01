;Imports of cl_cin:
	extern _Z23SND_GetVolumeNormalizedv
	extern snd_cinematicVolumeScale
	extern _Z25R_Cinematic_StartPlaybackPKcjf
	extern cls
	extern _Z16UI_SetActiveMenuii
	extern _Z9Con_Closei
	extern clientUIActives
	extern _Z23R_Cinematic_IsNextReadyv
	extern _Z22R_Cinematic_IsFinishedv
	extern _Z21R_Cinematic_IsStartedv
	extern _Z38R_Cinematic_DrawStretchPic_Letterboxedi
	extern _Z29R_Cinematic_StartNextPlaybackv
	extern _Z24R_Cinematic_StopPlaybackv
	extern nextmap
	extern _Z2vaPKcz
	extern _Z12Cbuf_AddTextiPKc
	extern _Z14Dvar_SetStringPK6dvar_sPKc
	extern cmd_args
	extern _Z10Com_PrintfiPKcz

;Exports of cl_cin:
	global cin_skippable
	global _Z17CIN_PlayCinematiciPKciiiii
	global _Z17SCR_DrawCinematici
	global _Z17SCR_StopCinematici
	global _Z18CL_PlayCinematic_fv
	global _Z29CL_PlayUnskippableCinematic_fv


SECTION .text


;CIN_PlayCinematic(int, char const*, int, int, int, int, int)
_Z17CIN_PlayCinematiciPKciiiii:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x8]
	call _Z23SND_GetVolumeNormalizedv
	fstp dword [ebp-0xc]
	movss xmm0, dword [ebp-0xc]
	mov eax, snd_cinematicVolumeScale
	mov eax, [eax]
	mulss xmm0, [eax+0xc]
	movss [esp+0x8], xmm0
	mov dword [esp+0x4], 0x5
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z25R_Cinematic_StartPlaybackPKcjf
	mov eax, cls
	mov eax, [eax+0x110]
	test eax, eax
	jz _Z17CIN_PlayCinematiciPKciiiii_10
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call _Z16UI_SetActiveMenuii
_Z17CIN_PlayCinematiciPKciiiii_10:
	mov [esp], ebx
	call _Z9Con_Closei
	shl ebx, 0x4
	add ebx, clientUIActives
	mov dword [ebx+0xc], 0x1
	mov eax, 0x1
	add esp, 0x24
	pop ebx
	pop ebp
	ret


;SCR_DrawCinematic(int)
_Z17SCR_DrawCinematici:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	call _Z23R_Cinematic_IsNextReadyv
	test al, al
	jnz _Z17SCR_DrawCinematici_10
_Z17SCR_DrawCinematici_50:
	call _Z22R_Cinematic_IsFinishedv
	test al, al
	jnz _Z17SCR_DrawCinematici_20
_Z17SCR_DrawCinematici_40:
	call _Z21R_Cinematic_IsStartedv
	test al, al
	jnz _Z17SCR_DrawCinematici_30
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z17SCR_DrawCinematici_30:
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z38R_Cinematic_DrawStretchPic_Letterboxedi
_Z17SCR_DrawCinematici_20:
	mov [esp], ebx
	call _Z17SCR_StopCinematici
	jmp _Z17SCR_DrawCinematici_40
_Z17SCR_DrawCinematici_10:
	call _Z29R_Cinematic_StartNextPlaybackv
	jmp _Z17SCR_DrawCinematici_50
	nop


;SCR_StopCinematic(int)
_Z17SCR_StopCinematici:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	cmp byte [cin_skippable], 0x0
	jnz _Z17SCR_StopCinematici_10
	call _Z22R_Cinematic_IsFinishedv
	test al, al
	jz _Z17SCR_StopCinematici_20
_Z17SCR_StopCinematici_10:
	call _Z24R_Cinematic_StopPlaybackv
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x1
	jz _Z17SCR_StopCinematici_30
_Z17SCR_StopCinematici_20:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z17SCR_StopCinematici_30:
	shl dword [ebp+0x8], 0x4
	mov edx, [ebp+0x8]
	mov dword [edx+eax+0xc], 0x0
	mov ebx, nextmap
	mov eax, [ebx]
	mov eax, [eax+0xc]
	cmp byte [eax], 0x0
	jz _Z17SCR_StopCinematici_20
	mov [esp+0x4], eax
	mov dword [esp], _cstring_s
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z12Cbuf_AddTextiPKc
	mov dword [esp+0x4], _cstring_null
	mov eax, [ebx]
	mov [esp], eax
	call _Z14Dvar_SetStringPK6dvar_sPKc
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;CL_PlayCinematic_f()
_Z18CL_PlayCinematic_fv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov byte [cin_skippable], 0x1
	mov ebx, cmd_args
	mov edx, [ebx]
	mov ecx, [ebx+edx*4+0x44]
	cmp ecx, 0x1
	jle _Z18CL_PlayCinematic_fv_10
	mov eax, [ebx+edx*4+0x64]
	mov esi, [eax+0x4]
_Z18CL_PlayCinematic_fv_90:
	cmp ecx, 0x2
	jg _Z18CL_PlayCinematic_fv_20
	mov eax, _cstring_null
_Z18CL_PlayCinematic_fv_80:
	test esi, esi
	jz _Z18CL_PlayCinematic_fv_30
	cmp byte [esi], 0x0
	jz _Z18CL_PlayCinematic_fv_40
_Z18CL_PlayCinematic_fv_30:
	test eax, eax
	jz _Z18CL_PlayCinematic_fv_50
	movzx eax, byte [eax]
	cmp al, 0x31
	jz _Z18CL_PlayCinematic_fv_60
	cmp al, 0x32
	jz _Z18CL_PlayCinematic_fv_70
_Z18CL_PlayCinematic_fv_50:
	mov eax, 0x1
_Z18CL_PlayCinematic_fv_100:
	mov [esp+0x18], eax
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], esi
	mov dword [esp], 0x0
	call _Z17CIN_PlayCinematiciPKciiiii
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_Z18CL_PlayCinematic_fv_20:
	mov eax, [ebx+edx*4+0x64]
	mov eax, [eax+0x8]
	jmp _Z18CL_PlayCinematic_fv_80
_Z18CL_PlayCinematic_fv_40:
	mov dword [esp+0x4], _cstring_no_cinematic_fil
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_Z18CL_PlayCinematic_fv_10:
	mov esi, _cstring_null
	jmp _Z18CL_PlayCinematic_fv_90
_Z18CL_PlayCinematic_fv_60:
	mov eax, 0x5
	jmp _Z18CL_PlayCinematic_fv_100
_Z18CL_PlayCinematic_fv_70:
	mov eax, 0x3
	jmp _Z18CL_PlayCinematic_fv_100
	nop


;CL_PlayUnskippableCinematic_f()
_Z29CL_PlayUnskippableCinematic_fv:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call _Z18CL_PlayCinematic_fv
	mov byte [cin_skippable], 0x0
	leave
	ret


;Initialized global or static variables of cl_cin:
SECTION .data
cin_skippable: dd 0x1, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of cl_cin:
SECTION .rdata


;Zero initialized global or static variables of cl_cin:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_s:		db "%s",0ah,0
_cstring_null:		db 0
_cstring_no_cinematic_fil:		db "No cinematic file specified: cinematic filename [1/2/3]",0ah,0



;All constant floats and doubles:
SECTION .rdata

