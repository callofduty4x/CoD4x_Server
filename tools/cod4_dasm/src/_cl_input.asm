;Imports of cl_input:
	extern clientUIActives
	extern clients
	extern com_frameTime
	extern cl_freelook
	extern cmd_args
	extern atoi
	extern Com_Printf
	extern frame_msec
	extern cls
	extern Key_IsCatcherActive
	extern cgArray
	extern m_filter
	extern cg_mapLocationSelectionCursorSpeed
	extern playerKeys
	extern CG_VehLocalClientDriving
	extern Key_RemoveCatcher
	extern ClampChar
	extern UI_GetActiveMenu
	extern cl_sensitivity
	extern cl_mouseAccel
	extern cl_showMouseRate
	extern CG_GetPredictedPlayerState
	extern AimAssist_UpdateMouseInput
	extern m_yaw
	extern m_pitch
	extern floorf
	extern m_forward
	extern m_side
	extern clientConnections
	extern Sys_IsLANAddress
	extern cl_maxpackets
	extern Cmd_AddCommand
	extern Cvar_RegisterFloat
	extern Cvar_RegisterInt
	extern Cvar_RegisterBool
	extern cl_nodelta
	extern IN_ShowSystemCursor
	extern UI_MouseEvent
	extern _ZN10LargeLocalC1Ei
	extern _ZN10LargeLocal6GetBufEv
	extern MSG_SetDefaultUserCmd
	extern MSG_Init
	extern MSG_WriteByte
	extern MSG_WriteLong
	extern cl_packetdup
	extern cl_showSend
	extern MSG_WriteBits
	extern Com_HashKey
	extern MSG_WriteDeltaUsercmdKey
	extern CL_SavePredictedOriginForServerTime
	extern Com_Error
	extern MSG_WriteBitsCompress
	extern NET_AdrToString
	extern CL_Netchan_Transmit
	extern CL_Netchan_TransmitNextFragment
	extern _ZN10LargeLocalD1Ev
	extern MSG_WriteString
	extern _Unwind_Resume
	extern IN_SetCursorPos
	extern Cmd_RemoveCommand
	extern IN_Frame

;Exports of cl_input:
	global playersKb
	global _ZZ12CL_InitInputvE15IN_SprintUp_VAR
	global _ZZ12CL_InitInputvE17IN_SprintDown_VAR
	global _ZZ12CL_InitInputvE13IN_TalkUp_VAR
	global _ZZ12CL_InitInputvE15IN_TalkDown_VAR
	global _ZZ12CL_InitInputvE16IN_GoStandUp_VAR
	global _ZZ12CL_InitInputvE18IN_GoStandDown_VAR
	global _ZZ12CL_InitInputvE15IN_GoCrouch_VAR
	global _ZZ12CL_InitInputvE14IN_GoProne_VAR
	global _ZZ12CL_InitInputvE18IN_ToggleProne_VAR
	global _ZZ12CL_InitInputvE19IN_ToggleCrouch_VAR
	global _ZZ12CL_InitInputvE18IN_RaiseStance_VAR
	global _ZZ12CL_InitInputvE18IN_LowerStance_VAR
	global _ZZ12CL_InitInputvE25IN_ToggleADS_Throw_Up_VAR
	global _ZZ12CL_InitInputvE27IN_ToggleADS_Throw_Down_VAR
	global _ZZ12CL_InitInputvE21IN_Speed_Throw_Up_VAR
	global _ZZ12CL_InitInputvE23IN_Speed_Throw_Down_VAR
	global _ZZ12CL_InitInputvE15IN_Throw_Up_VAR
	global _ZZ12CL_InitInputvE17IN_Throw_Down_VAR
	global _ZZ12CL_InitInputvE15IN_LeaveADS_VAR
	global _ZZ12CL_InitInputvE16IN_ToggleADS_VAR
	global _ZZ12CL_InitInputvE14IN_MLookUp_VAR
	global _ZZ12CL_InitInputvE16IN_MLookDown_VAR
	global _ZZ12CL_InitInputvE16IN_Stance_Up_VAR
	global _ZZ12CL_InitInputvE18IN_Stance_Down_VAR
	global _ZZ12CL_InitInputvE15IN_Prone_Up_VAR
	global _ZZ12CL_InitInputvE17IN_Prone_Down_VAR
	global _ZZ12CL_InitInputvE19IN_LeanRight_Up_VAR
	global _ZZ12CL_InitInputvE21IN_LeanRight_Down_VAR
	global _ZZ12CL_InitInputvE18IN_LeanLeft_Up_VAR
	global _ZZ12CL_InitInputvE20IN_LeanLeft_Down_VAR
	global _ZZ12CL_InitInputvE19IN_UseReload_Up_VAR
	global _ZZ12CL_InitInputvE21IN_UseReload_Down_VAR
	global _ZZ12CL_InitInputvE16IN_Reload_Up_VAR
	global _ZZ12CL_InitInputvE18IN_Reload_Down_VAR
	global _ZZ12CL_InitInputvE18IN_Activate_Up_VAR
	global _ZZ12CL_InitInputvE20IN_Activate_Down_VAR
	global _ZZ12CL_InitInputvE22IN_BreathSprint_Up_VAR
	global _ZZ12CL_InitInputvE24IN_BreathSprint_Down_VAR
	global _ZZ12CL_InitInputvE15IN_Smoke_Up_VAR
	global _ZZ12CL_InitInputvE17IN_Smoke_Down_VAR
	global _ZZ12CL_InitInputvE14IN_Frag_Up_VAR
	global _ZZ12CL_InitInputvE16IN_Frag_Down_VAR
	global _ZZ12CL_InitInputvE21IN_MeleeBreath_Up_VAR
	global _ZZ12CL_InitInputvE23IN_MeleeBreath_Down_VAR
	global _ZZ12CL_InitInputvE16IN_Breath_Up_VAR
	global _ZZ12CL_InitInputvE18IN_Breath_Down_VAR
	global _ZZ12CL_InitInputvE15IN_Melee_Up_VAR
	global _ZZ12CL_InitInputvE17IN_Melee_Down_VAR
	global _ZZ12CL_InitInputvE16IN_Attack_Up_VAR
	global _ZZ12CL_InitInputvE18IN_Attack_Down_VAR
	global _ZZ12CL_InitInputvE14IN_SpeedUp_VAR
	global _ZZ12CL_InitInputvE16IN_SpeedDown_VAR
	global _ZZ12CL_InitInputvE18IN_MoverightUp_VAR
	global _ZZ12CL_InitInputvE20IN_MoverightDown_VAR
	global _ZZ12CL_InitInputvE17IN_MoveleftUp_VAR
	global _ZZ12CL_InitInputvE19IN_MoveleftDown_VAR
	global _ZZ12CL_InitInputvE15IN_StrafeUp_VAR
	global _ZZ12CL_InitInputvE17IN_StrafeDown_VAR
	global _ZZ12CL_InitInputvE17IN_LookdownUp_VAR
	global _ZZ12CL_InitInputvE19IN_LookdownDown_VAR
	global _ZZ12CL_InitInputvE15IN_LookupUp_VAR
	global _ZZ12CL_InitInputvE17IN_LookupDown_VAR
	global _ZZ12CL_InitInputvE13IN_BackUp_VAR
	global _ZZ12CL_InitInputvE15IN_BackDown_VAR
	global _ZZ12CL_InitInputvE16IN_ForwardUp_VAR
	global _ZZ12CL_InitInputvE18IN_ForwardDown_VAR
	global _ZZ12CL_InitInputvE14IN_RightUp_VAR
	global _ZZ12CL_InitInputvE16IN_RightDown_VAR
	global _ZZ12CL_InitInputvE13IN_LeftUp_VAR
	global _ZZ12CL_InitInputvE15IN_LeftDown_VAR
	global _ZZ12CL_InitInputvE13IN_DownUp_VAR
	global _ZZ12CL_InitInputvE15IN_DownDown_VAR
	global _ZZ12CL_InitInputvE11IN_UpUp_VAR
	global _ZZ12CL_InitInputvE13IN_UpDown_VAR
	global _ZZ12CL_InitInputvE17IN_CenterView_VAR
	global IN_UpDown
	global IN_UpUp
	global IN_DownDown
	global IN_DownUp
	global IN_LeftDown
	global IN_LeftUp
	global IN_RightDown
	global IN_RightUp
	global IN_ForwardDown
	global IN_ForwardUp
	global IN_BackDown
	global IN_BackUp
	global IN_LookupDown
	global IN_LookupUp
	global IN_LookdownDown
	global IN_LookdownUp
	global IN_StrafeDown
	global IN_StrafeUp
	global IN_MoveleftDown
	global IN_MoveleftUp
	global IN_MoverightDown
	global IN_MoverightUp
	global IN_SpeedDown
	global IN_SpeedUp
	global IN_Attack_Down
	global IN_Attack_Up
	global IN_Melee_Down
	global IN_Melee_Up
	global IN_Breath_Down
	global IN_Breath_Up
	global IN_MeleeBreath_Down
	global IN_MeleeBreath_Up
	global IN_Frag_Down
	global IN_Frag_Up
	global IN_Smoke_Down
	global IN_Smoke_Up
	global IN_BreathSprint_Down
	global IN_BreathSprint_Up
	global IN_Activate_Down
	global IN_Activate_Up
	global IN_Reload_Down
	global IN_Reload_Up
	global IN_UseReload_Down
	global IN_UseReload_Up
	global IN_LeanLeft_Down
	global IN_LeanLeft_Up
	global IN_LeanRight_Down
	global IN_LeanRight_Up
	global IN_Prone_Down
	global IN_Prone_Up
	global IN_Stance_Down
	global IN_Stance_Up
	global IN_MLookDown
	global IN_MLookUp
	global IN_ToggleADS
	global IN_LeaveADS
	global IN_Throw_Down
	global IN_Throw_Up
	global IN_Speed_Throw_Down
	global IN_Speed_Throw_Up
	global IN_ToggleADS_Throw_Down
	global IN_ToggleADS_Throw_Up
	global IN_LowerStance
	global IN_RaiseStance
	global IN_ToggleCrouch
	global IN_ToggleProne
	global IN_GoProne
	global IN_GoCrouch
	global IN_GoStandDown
	global IN_GoStandUp
	global IN_TalkDown
	global IN_TalkUp
	global IN_SprintDown
	global IN_SprintUp
	global IN_KeyDown
	global IN_KeyUp
	global CL_CreateCmd
	global CL_SendCmd
	global CL_InitInput
	global CL_SetStance
	global CL_MouseEvent
	global IN_CenterView
	global CL_WritePacket
	global CL_SetCursorPos
	global CL_ShutdownInput
	global IN_IsTalkKeyHeld
	global CL_ShowSystemCursor
	global CL_CreateCmdsDuringConnection
	global CL_Input
	global cl_bypassMouseInput
	global cl_analog_attack_threshold
	global cl_anglespeedkey
	global cl_pitchspeed
	global cl_stanceHoldTime
	global cl_talking
	global cl_yawspeed


SECTION .text


;IN_UpDown()
IN_UpDown:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov eax, playersKb+0xf0
	call IN_KeyDown
	cmp byte [playersKb+0x1f0], 0x0
	jnz IN_UpDown_10
	cmp byte [playersKb+0xec], 0x0
	jz IN_UpDown_20
IN_UpDown_10:
	mov eax, 0x1
IN_UpDown_60:
	test eax, eax
	jnz IN_UpDown_30
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x4
	jle IN_UpDown_30
	mov edx, clients
	mov eax, [edx+0x25648]
	cmp eax, 0x1
	jz IN_UpDown_40
	cmp eax, 0x2
	jz IN_UpDown_50
	mov eax, playersKb+0xc8
	leave
	jmp IN_KeyDown
IN_UpDown_50:
	mov dword [edx+0x25648], 0x1
IN_UpDown_30:
	leave
	ret
IN_UpDown_20:
	xor eax, eax
	jmp IN_UpDown_60
IN_UpDown_40:
	mov dword [edx+0x25648], 0x0
	leave
	ret
	nop


;IN_UpUp()
IN_UpUp:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov eax, playersKb+0xf0
	call IN_KeyUp
	mov eax, playersKb+0xc8
	leave
	jmp IN_KeyUp
	nop


;IN_DownDown()
IN_DownDown:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0xdc
	pop ebp
	jmp IN_KeyDown


;IN_DownUp()
IN_DownUp:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0xdc
	pop ebp
	jmp IN_KeyUp


;IN_LeftDown()
IN_LeftDown:
	push ebp
	mov ebp, esp
	mov eax, playersKb
	pop ebp
	jmp IN_KeyDown


;IN_LeftUp()
IN_LeftUp:
	push ebp
	mov ebp, esp
	mov eax, playersKb
	pop ebp
	jmp IN_KeyUp


;IN_RightDown()
IN_RightDown:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x14
	pop ebp
	jmp IN_KeyDown


;IN_RightUp()
IN_RightUp:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x14
	pop ebp
	jmp IN_KeyUp


;IN_ForwardDown()
IN_ForwardDown:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x28
	pop ebp
	jmp IN_KeyDown


;IN_ForwardUp()
IN_ForwardUp:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x28
	pop ebp
	jmp IN_KeyUp


;IN_BackDown()
IN_BackDown:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x3c
	pop ebp
	jmp IN_KeyDown


;IN_BackUp()
IN_BackUp:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x3c
	pop ebp
	jmp IN_KeyUp


;IN_LookupDown()
IN_LookupDown:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x50
	pop ebp
	jmp IN_KeyDown


;IN_LookupUp()
IN_LookupUp:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x50
	pop ebp
	jmp IN_KeyUp


;IN_LookdownDown()
IN_LookdownDown:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x64
	pop ebp
	jmp IN_KeyDown


;IN_LookdownUp()
IN_LookdownUp:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x64
	pop ebp
	jmp IN_KeyUp


;IN_StrafeDown()
IN_StrafeDown:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0xa0
	pop ebp
	jmp IN_KeyDown


;IN_StrafeUp()
IN_StrafeUp:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0xa0
	pop ebp
	jmp IN_KeyUp


;IN_MoveleftDown()
IN_MoveleftDown:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x78
	pop ebp
	jmp IN_KeyDown


;IN_MoveleftUp()
IN_MoveleftUp:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x78
	pop ebp
	jmp IN_KeyUp


;IN_MoverightDown()
IN_MoverightDown:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x8c
	pop ebp
	jmp IN_KeyDown


;IN_MoverightUp()
IN_MoverightUp:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x8c
	pop ebp
	jmp IN_KeyUp


;IN_SpeedDown()
IN_SpeedDown:
	push ebp
	mov ebp, esp
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x4
	jg IN_SpeedDown_10
	pop ebp
	ret
IN_SpeedDown_10:
	mov eax, clients
	mov byte [eax], 0x0
	mov eax, playersKb+0xb4
	pop ebp
	jmp IN_KeyDown
	nop


;IN_SpeedUp()
IN_SpeedUp:
	push ebp
	mov ebp, esp
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x4
	jg IN_SpeedUp_10
	pop ebp
	ret
IN_SpeedUp_10:
	mov eax, clients
	mov byte [eax], 0x0
	mov eax, playersKb+0xb4
	pop ebp
	jmp IN_KeyUp
	nop


;IN_Attack_Down()
IN_Attack_Down:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x118
	pop ebp
	jmp IN_KeyDown


;IN_Attack_Up()
IN_Attack_Up:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x118
	pop ebp
	jmp IN_KeyUp


;IN_Melee_Down()
IN_Melee_Down:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x168
	pop ebp
	jmp IN_KeyDown


;IN_Melee_Up()
IN_Melee_Up:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x168
	pop ebp
	jmp IN_KeyUp


;IN_Breath_Down()
IN_Breath_Down:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x12c
	pop ebp
	jmp IN_KeyDown


;IN_Breath_Up()
IN_Breath_Up:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x12c
	pop ebp
	jmp IN_KeyUp


;IN_MeleeBreath_Down()
IN_MeleeBreath_Down:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov eax, playersKb+0x168
	call IN_KeyDown
	mov eax, playersKb+0x12c
	leave
	jmp IN_KeyDown
	nop


;IN_MeleeBreath_Up()
IN_MeleeBreath_Up:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov eax, playersKb+0x168
	call IN_KeyUp
	mov eax, playersKb+0x12c
	leave
	jmp IN_KeyUp
	nop


;IN_Frag_Down()
IN_Frag_Down:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x140
	pop ebp
	jmp IN_KeyDown


;IN_Frag_Up()
IN_Frag_Up:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x140
	pop ebp
	jmp IN_KeyUp


;IN_Smoke_Down()
IN_Smoke_Down:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x154
	pop ebp
	jmp IN_KeyDown


;IN_Smoke_Up()
IN_Smoke_Up:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x154
	pop ebp
	jmp IN_KeyUp


;IN_BreathSprint_Down()
IN_BreathSprint_Down:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov eax, playersKb+0x12c
	call IN_KeyDown
	mov eax, playersKb+0x21c
	leave
	jmp IN_KeyDown
	nop


;IN_BreathSprint_Up()
IN_BreathSprint_Up:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov eax, playersKb+0x12c
	call IN_KeyUp
	mov eax, playersKb+0x21c
	leave
	jmp IN_KeyUp
	nop


;IN_Activate_Down()
IN_Activate_Down:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x17c
	pop ebp
	jmp IN_KeyDown


;IN_Activate_Up()
IN_Activate_Up:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x17c
	pop ebp
	jmp IN_KeyUp


;IN_Reload_Down()
IN_Reload_Down:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x190
	pop ebp
	jmp IN_KeyDown


;IN_Reload_Up()
IN_Reload_Up:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x190
	pop ebp
	jmp IN_KeyUp


;IN_UseReload_Down()
IN_UseReload_Down:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x1a4
	pop ebp
	jmp IN_KeyDown


;IN_UseReload_Up()
IN_UseReload_Up:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x1a4
	pop ebp
	jmp IN_KeyUp


;IN_LeanLeft_Down()
IN_LeanLeft_Down:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x1b8
	pop ebp
	jmp IN_KeyDown


;IN_LeanLeft_Up()
IN_LeanLeft_Up:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x1b8
	pop ebp
	jmp IN_KeyUp


;IN_LeanRight_Down()
IN_LeanRight_Down:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x1cc
	pop ebp
	jmp IN_KeyDown


;IN_LeanRight_Up()
IN_LeanRight_Up:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x1cc
	pop ebp
	jmp IN_KeyUp


;IN_Prone_Down()
IN_Prone_Down:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x1e0
	pop ebp
	jmp IN_KeyDown


;IN_Prone_Up()
IN_Prone_Up:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x1e0
	pop ebp
	jmp IN_KeyUp


;IN_Stance_Down()
IN_Stance_Down:
	push ebp
	mov ebp, esp
	cmp byte [playersKb+0x1f0], 0x0
	jnz IN_Stance_Down_10
	cmp byte [playersKb+0xec], 0x0
	jz IN_Stance_Down_20
IN_Stance_Down_10:
	mov eax, 0x1
IN_Stance_Down_40:
	test eax, eax
	jnz IN_Stance_Down_30
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x4
	jle IN_Stance_Down_30
	mov edx, clients
	mov byte [edx+0x25644], 0x1
	mov eax, [edx+0x25648]
	mov [edx+0x2564c], eax
	mov eax, com_frameTime
	mov eax, [eax]
	mov [edx+0x25650], eax
	cmp dword [edx+0x2564c], 0x1
	jz IN_Stance_Down_30
	mov dword [edx+0x25648], 0x1
IN_Stance_Down_30:
	pop ebp
	ret
IN_Stance_Down_20:
	xor eax, eax
	jmp IN_Stance_Down_40


;IN_Stance_Up()
IN_Stance_Up:
	push ebp
	mov ebp, esp
	cmp byte [playersKb+0x1f0], 0x0
	jnz IN_Stance_Up_10
	cmp byte [playersKb+0xec], 0x0
	jz IN_Stance_Up_20
IN_Stance_Up_10:
	mov eax, 0x1
IN_Stance_Up_60:
	test eax, eax
	jnz IN_Stance_Up_30
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x4
	jle IN_Stance_Up_30
	mov eax, clients
	cmp byte [eax+0x25644], 0x0
	jz IN_Stance_Up_40
	cmp dword [eax+0x2564c], 0x1
	jz IN_Stance_Up_50
IN_Stance_Up_40:
	mov byte [eax+0x25644], 0x0
IN_Stance_Up_30:
	pop ebp
	ret
IN_Stance_Up_20:
	xor eax, eax
	jmp IN_Stance_Up_60
IN_Stance_Up_50:
	mov dword [eax+0x25648], 0x0
	jmp IN_Stance_Up_40
	nop


;IN_MLookDown()
IN_MLookDown:
	push ebp
	mov ebp, esp
	mov byte [playersKb+0x114], 0x1
	pop ebp
	ret


;IN_MLookUp()
IN_MLookUp:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x4
	jle IN_MLookUp_10
	mov byte [playersKb+0x114], 0x0
	mov eax, cl_freelook
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz IN_MLookUp_10
	mov edx, clients
	mov eax, [edx+0x88]
	xor eax, 0x80000000
	mov [edx+0x256a8], eax
IN_MLookUp_10:
	leave
	ret


;IN_ToggleADS()
IN_ToggleADS:
	push ebp
	mov ebp, esp
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x4
	jle IN_ToggleADS_10
	mov eax, clients
	cmp byte [eax], 0x0
	setz byte [eax]
IN_ToggleADS_10:
	pop ebp
	ret
	nop


;IN_LeaveADS()
IN_LeaveADS:
	push ebp
	mov ebp, esp
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x4
	jle IN_LeaveADS_10
	mov eax, clients
	mov byte [eax], 0x0
IN_LeaveADS_10:
	pop ebp
	ret


;IN_Throw_Down()
IN_Throw_Down:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x208
	pop ebp
	jmp IN_KeyDown


;IN_Throw_Up()
IN_Throw_Up:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x208
	pop ebp
	jmp IN_KeyUp


;IN_Speed_Throw_Down()
IN_Speed_Throw_Down:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x4
	jle IN_Speed_Throw_Down_10
	mov eax, clients
	mov byte [eax], 0x0
	mov eax, playersKb+0xb4
	call IN_KeyDown
IN_Speed_Throw_Down_10:
	mov eax, playersKb+0x208
	leave
	jmp IN_KeyDown


;IN_Speed_Throw_Up()
IN_Speed_Throw_Up:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x4
	jle IN_Speed_Throw_Up_10
	mov eax, clients
	mov byte [eax], 0x0
	mov eax, playersKb+0xb4
	call IN_KeyUp
IN_Speed_Throw_Up_10:
	mov eax, playersKb+0x208
	leave
	jmp IN_KeyUp


;IN_ToggleADS_Throw_Down()
IN_ToggleADS_Throw_Down:
	push ebp
	mov ebp, esp
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x4
	jle IN_ToggleADS_Throw_Down_10
	mov eax, clients
	cmp byte [eax], 0x0
	setz byte [eax]
IN_ToggleADS_Throw_Down_10:
	mov eax, playersKb+0x208
	pop ebp
	jmp IN_KeyDown


;IN_ToggleADS_Throw_Up()
IN_ToggleADS_Throw_Up:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x208
	pop ebp
	jmp IN_KeyUp


;IN_LowerStance()
IN_LowerStance:
	push ebp
	mov ebp, esp
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x4
	jle IN_LowerStance_10
	cmp byte [playersKb+0x1f0], 0x0
	jz IN_LowerStance_20
IN_LowerStance_50:
	mov eax, 0x1
IN_LowerStance_60:
	test eax, eax
	jnz IN_LowerStance_10
	mov edx, clients
	mov eax, [edx+0x25648]
	test eax, eax
	jz IN_LowerStance_30
	sub eax, 0x1
	jz IN_LowerStance_40
IN_LowerStance_10:
	pop ebp
	ret
IN_LowerStance_20:
	cmp byte [playersKb+0xec], 0x0
	jnz IN_LowerStance_50
	xor eax, eax
	jmp IN_LowerStance_60
IN_LowerStance_30:
	mov dword [edx+0x25648], 0x1
	pop ebp
	ret
IN_LowerStance_40:
	mov dword [edx+0x25648], 0x2
	pop ebp
	ret


;IN_RaiseStance()
IN_RaiseStance:
	push ebp
	mov ebp, esp
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x4
	jle IN_RaiseStance_10
	cmp byte [playersKb+0x1f0], 0x0
	jz IN_RaiseStance_20
IN_RaiseStance_50:
	mov eax, 0x1
IN_RaiseStance_60:
	test eax, eax
	jnz IN_RaiseStance_10
	mov edx, clients
	mov eax, [edx+0x25648]
	cmp eax, 0x1
	jz IN_RaiseStance_30
	cmp eax, 0x2
	jz IN_RaiseStance_40
IN_RaiseStance_10:
	pop ebp
	ret
IN_RaiseStance_20:
	cmp byte [playersKb+0xec], 0x0
	jnz IN_RaiseStance_50
	xor eax, eax
	jmp IN_RaiseStance_60
IN_RaiseStance_40:
	mov dword [edx+0x25648], 0x1
	pop ebp
	ret
IN_RaiseStance_30:
	mov dword [edx+0x25648], 0x0
	pop ebp
	ret
	nop


;IN_ToggleCrouch()
IN_ToggleCrouch:
	push ebp
	mov ebp, esp
	cmp byte [playersKb+0x1f0], 0x0
	jnz IN_ToggleCrouch_10
	cmp byte [playersKb+0xec], 0x0
	jz IN_ToggleCrouch_20
IN_ToggleCrouch_10:
	mov eax, 0x1
IN_ToggleCrouch_40:
	test eax, eax
	jnz IN_ToggleCrouch_30
	mov edx, clients
	xor eax, eax
	cmp dword [edx+0x25648], 0x1
	setnz al
	mov [edx+0x25648], eax
IN_ToggleCrouch_30:
	pop ebp
	ret
IN_ToggleCrouch_20:
	xor eax, eax
	jmp IN_ToggleCrouch_40


;IN_ToggleProne()
IN_ToggleProne:
	push ebp
	mov ebp, esp
	cmp byte [playersKb+0x1f0], 0x0
	jnz IN_ToggleProne_10
	cmp byte [playersKb+0xec], 0x0
	jz IN_ToggleProne_20
IN_ToggleProne_10:
	mov eax, 0x1
IN_ToggleProne_40:
	test eax, eax
	jnz IN_ToggleProne_30
	mov edx, clients
	xor eax, eax
	cmp dword [edx+0x25648], 0x2
	setnz al
	add eax, eax
	mov [edx+0x25648], eax
IN_ToggleProne_30:
	pop ebp
	ret
IN_ToggleProne_20:
	xor eax, eax
	jmp IN_ToggleProne_40


;IN_GoProne()
IN_GoProne:
	push ebp
	mov ebp, esp
	cmp byte [playersKb+0x1f0], 0x0
	jnz IN_GoProne_10
	cmp byte [playersKb+0xec], 0x0
	jz IN_GoProne_20
IN_GoProne_10:
	mov eax, 0x1
IN_GoProne_40:
	test eax, eax
	jnz IN_GoProne_30
	mov eax, clients
	mov dword [eax+0x25648], 0x2
IN_GoProne_30:
	pop ebp
	ret
IN_GoProne_20:
	xor eax, eax
	jmp IN_GoProne_40
	nop


;IN_GoCrouch()
IN_GoCrouch:
	push ebp
	mov ebp, esp
	cmp byte [playersKb+0x1f0], 0x0
	jnz IN_GoCrouch_10
	cmp byte [playersKb+0xec], 0x0
	jz IN_GoCrouch_20
IN_GoCrouch_10:
	mov eax, 0x1
IN_GoCrouch_40:
	test eax, eax
	jnz IN_GoCrouch_30
	mov eax, clients
	mov dword [eax+0x25648], 0x1
IN_GoCrouch_30:
	pop ebp
	ret
IN_GoCrouch_20:
	xor eax, eax
	jmp IN_GoCrouch_40
	nop


;IN_GoStandDown()
IN_GoStandDown:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x4
	jg IN_GoStandDown_10
IN_GoStandDown_40:
	leave
	ret
IN_GoStandDown_10:
	mov eax, playersKb+0xf0
	call IN_KeyDown
	mov edx, clients
	mov eax, [edx+0x25648]
	test eax, eax
	jz IN_GoStandDown_20
	cmp byte [playersKb+0x1f0], 0x0
	jz IN_GoStandDown_30
IN_GoStandDown_50:
	mov eax, 0x1
IN_GoStandDown_60:
	test eax, eax
	jnz IN_GoStandDown_40
	mov dword [edx+0x25648], 0x0
	leave
	ret
IN_GoStandDown_30:
	cmp byte [playersKb+0xec], 0x0
	jnz IN_GoStandDown_50
	xor eax, eax
	jmp IN_GoStandDown_60
IN_GoStandDown_20:
	mov eax, playersKb+0xc8
	leave
	jmp IN_KeyDown
	nop


;IN_GoStandUp()
IN_GoStandUp:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x4
	jg IN_GoStandUp_10
	leave
	ret
IN_GoStandUp_10:
	mov eax, playersKb+0xf0
	call IN_KeyUp
	mov eax, playersKb+0xc8
	leave
	jmp IN_KeyUp


;IN_TalkDown()
IN_TalkDown:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x244
	pop ebp
	jmp IN_KeyDown


;IN_TalkUp()
IN_TalkUp:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x244
	pop ebp
	jmp IN_KeyUp


;IN_SprintDown()
IN_SprintDown:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x21c
	pop ebp
	jmp IN_KeyDown


;IN_SprintUp()
IN_SprintUp:
	push ebp
	mov ebp, esp
	mov eax, playersKb+0x21c
	pop ebp
	jmp IN_KeyUp


;IN_KeyDown(kbutton_t*)
IN_KeyDown:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, eax
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle IN_KeyDown_10
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
IN_KeyDown_90:
	cmp byte [eax], 0x0
	jnz IN_KeyDown_20
	mov eax, 0xffffffff
IN_KeyDown_80:
	mov edx, [ebx]
	cmp eax, edx
	jz IN_KeyDown_30
	mov ecx, [ebx+0x4]
	cmp eax, ecx
	jz IN_KeyDown_30
	test edx, edx
	jnz IN_KeyDown_40
	mov [ebx], eax
IN_KeyDown_70:
	cmp byte [ebx+0x10], 0x0
	jnz IN_KeyDown_30
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x2
	jg IN_KeyDown_50
	mov eax, _cstring_null
IN_KeyDown_100:
	mov [esp], eax
	call atoi
	mov [ebx+0x8], eax
	mov byte [ebx+0x10], 0x1
	mov byte [ebx+0x11], 0x1
IN_KeyDown_30:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
IN_KeyDown_40:
	test ecx, ecx
	jnz IN_KeyDown_60
	mov [ebx+0x4], eax
	jmp IN_KeyDown_70
IN_KeyDown_20:
	mov [esp], eax
	call atoi
	jmp IN_KeyDown_80
IN_KeyDown_10:
	mov eax, _cstring_null
	jmp IN_KeyDown_90
IN_KeyDown_50:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x8]
	jmp IN_KeyDown_100
IN_KeyDown_60:
	mov dword [esp+0x4], _cstring_three_keys_down_
	mov dword [esp], 0xe
	call Com_Printf
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;IN_KeyUp(kbutton_t*)
IN_KeyUp:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, eax
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle IN_KeyUp_10
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
IN_KeyUp_70:
	cmp byte [eax], 0x0
	jnz IN_KeyUp_20
	mov dword [ebx+0x4], 0x0
	mov dword [ebx], 0x0
	mov byte [ebx+0x10], 0x0
IN_KeyUp_40:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
IN_KeyUp_20:
	mov [esp], eax
	call atoi
	cmp eax, [ebx]
	jz IN_KeyUp_30
	cmp eax, [ebx+0x4]
	jnz IN_KeyUp_40
	mov dword [ebx+0x4], 0x0
IN_KeyUp_80:
	mov edx, [ebx]
	test edx, edx
	jnz IN_KeyUp_40
	mov eax, [ebx+0x4]
	test eax, eax
	jnz IN_KeyUp_40
	mov byte [ebx+0x10], 0x0
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x2
	jg IN_KeyUp_50
	mov eax, _cstring_null
IN_KeyUp_90:
	mov [esp], eax
	call atoi
	test eax, eax
	jz IN_KeyUp_60
	sub eax, [ebx+0x8]
	add [ebx+0xc], eax
	mov byte [ebx+0x10], 0x0
	jmp IN_KeyUp_40
IN_KeyUp_10:
	mov eax, _cstring_null
	jmp IN_KeyUp_70
IN_KeyUp_30:
	mov dword [ebx], 0x0
	jmp IN_KeyUp_80
IN_KeyUp_50:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x8]
	jmp IN_KeyUp_90
IN_KeyUp_60:
	mov eax, frame_msec
	mov eax, [eax]
	shr eax, 1
	add [ebx+0xc], eax
	mov byte [ebx+0x10], 0x0
	jmp IN_KeyUp_40
	nop


;CL_CreateCmd(int)
CL_CreateCmd:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xfc
	mov esi, eax
	mov [ebp-0x70], edx
	mov eax, clients
	movss xmm0, dword [eax+0x256a8]
	movss [ebp-0x5c], xmm0
	lea edx, [edx+edx*4]
	mov eax, edx
	shl eax, 0x4
	sub eax, edx
	lea eax, [eax*8+playersKb]
	mov [ebp-0x6c], eax
	mov edx, clients
	test byte [edx+0x31], 0x8
	jnz CL_CreateCmd_10
	mov ecx, eax
	mov eax, cls
	mov eax, [eax+0x114]
	cmp byte [ecx+0xc4], 0x0
	jz CL_CreateCmd_20
	cvtsi2ss xmm3, eax
	mulss xmm3, [_float_0_00100000]
	mov eax, [cl_anglespeedkey]
	mulss xmm3, [eax+0xc]
CL_CreateCmd_1120:
	mov ebx, [ebp-0x6c]
	cmp byte [ebx+0xb0], 0x0
	jnz CL_CreateCmd_30
	mov edi, clients
	movss xmm1, dword [edi+0x25664]
	pxor xmm5, xmm5
	ucomiss xmm1, xmm5
	jbe CL_CreateCmd_40
	mov eax, [cl_yawspeed]
	movss xmm2, dword [eax+0xc]
	movaps xmm0, xmm1
	subss xmm0, xmm2
	ucomiss xmm0, xmm5
	jb CL_CreateCmd_50
	movaps xmm1, xmm2
CL_CreateCmd_50:
	mov eax, clients
	movss xmm4, dword [eax+0x256ac]
	movaps xmm0, xmm3
	mulss xmm0, xmm1
	mov edx, [ebp-0x6c]
	add edx, 0x14
	mov ecx, [edx+0xc]
	mov dword [edx+0xc], 0x0
	cmp byte [edx+0x10], 0x0
	jz CL_CreateCmd_60
	mov ebx, [edx+0x8]
	test ebx, ebx
	jnz CL_CreateCmd_70
	mov ebx, com_frameTime
	mov ecx, [ebx]
CL_CreateCmd_1630:
	mov eax, [ebx]
	mov [edx+0x8], eax
CL_CreateCmd_60:
	test ecx, ecx
	jle CL_CreateCmd_80
	mov eax, frame_msec
	mov edx, [eax]
	cmp ecx, edx
	jb CL_CreateCmd_90
	movss xmm1, dword [_float_1_00000000]
CL_CreateCmd_1540:
	mulss xmm1, xmm0
	movaps xmm2, xmm4
	subss xmm2, xmm1
	mov edi, clients
	movss [edi+0x256ac], xmm2
	mov eax, [ebp-0x6c]
	mov ecx, [eax+0xc]
	mov dword [eax+0xc], 0x0
	cmp byte [eax+0x10], 0x0
	jz CL_CreateCmd_100
	mov edx, [eax+0x8]
	test edx, edx
	jnz CL_CreateCmd_110
	mov edx, com_frameTime
	mov ecx, [edx]
	mov edi, edx
CL_CreateCmd_1620:
	mov eax, [edi]
	mov edx, [ebp-0x6c]
	mov [edx+0x8], eax
CL_CreateCmd_100:
	test ecx, ecx
	jle CL_CreateCmd_120
	mov eax, frame_msec
	mov edx, [eax]
	cmp ecx, edx
	jb CL_CreateCmd_130
	movss xmm1, dword [_float_1_00000000]
CL_CreateCmd_1520:
	mulss xmm1, xmm0
	addss xmm2, xmm1
	mov ecx, clients
	movss [ecx+0x256ac], xmm2
	mov ebx, ecx
	movss xmm1, dword [ebx+0x25660]
	ucomiss xmm1, xmm5
	ja CL_CreateCmd_140
CL_CreateCmd_160:
	mov eax, [cl_pitchspeed]
	movss xmm1, dword [eax+0xc]
	jmp CL_CreateCmd_150
CL_CreateCmd_30:
	pxor xmm5, xmm5
	mov ebx, clients
	movss xmm1, dword [ebx+0x25660]
	ucomiss xmm1, xmm5
	jbe CL_CreateCmd_160
CL_CreateCmd_140:
	mov eax, [cl_pitchspeed]
	movss xmm2, dword [eax+0xc]
	movaps xmm0, xmm1
	subss xmm0, xmm2
	ucomiss xmm0, xmm5
	jb CL_CreateCmd_150
	movaps xmm1, xmm2
CL_CreateCmd_150:
	mov edi, clients
	movss xmm2, dword [edi+0x256a8]
	mulss xmm3, xmm1
	mov edx, [ebp-0x6c]
	add edx, 0x50
	mov ecx, [edx+0xc]
	mov dword [edx+0xc], 0x0
	cmp byte [edx+0x10], 0x0
	jz CL_CreateCmd_170
	mov ebx, [edx+0x8]
	test ebx, ebx
	jz CL_CreateCmd_180
	mov edi, com_frameTime
	mov eax, [edi]
	sub eax, ebx
	add ecx, eax
	mov ebx, edi
	mov eax, [ebx]
	mov [edx+0x8], eax
CL_CreateCmd_170:
	test ecx, ecx
	jle CL_CreateCmd_190
CL_CreateCmd_1180:
	mov eax, frame_msec
	mov edx, [eax]
	cmp ecx, edx
	jb CL_CreateCmd_200
	movss xmm1, dword [_float_1_00000000]
CL_CreateCmd_1140:
	mulss xmm1, xmm3
	subss xmm2, xmm1
	mov edi, clients
	movss [edi+0x256a8], xmm2
	mov edx, [ebp-0x6c]
	add edx, 0x64
	mov ecx, [edx+0xc]
	mov dword [edx+0xc], 0x0
	cmp byte [edx+0x10], 0x0
	jz CL_CreateCmd_210
	mov ebx, [edx+0x8]
	test ebx, ebx
	jnz CL_CreateCmd_220
	mov eax, com_frameTime
	mov ecx, [eax]
	mov ebx, eax
CL_CreateCmd_1500:
	mov eax, [ebx]
	mov [edx+0x8], eax
CL_CreateCmd_210:
	test ecx, ecx
	jle CL_CreateCmd_230
	mov eax, frame_msec
	mov edx, [eax]
	cmp ecx, edx
	jb CL_CreateCmd_240
	movss xmm0, dword [_float_1_00000000]
CL_CreateCmd_1280:
	mulss xmm3, xmm0
	addss xmm2, xmm3
	mov edi, clients
	movss [edi+0x256a8], xmm2
CL_CreateCmd_10:
	cld
	mov ecx, 0x8
	xor eax, eax
	mov edi, esi
	rep stosd
	mov dword [esp+0x4], 0x8
	mov eax, [ebp-0x70]
	mov [esp], eax
	call Key_IsCatcherActive
	test al, al
	jz CL_CreateCmd_250
	mov edi, cgArray
	mov edx, [edi+0x466f0]
	test edx, edx
	jz CL_CreateCmd_260
	mov ecx, clients
	mov eax, [ecx+0x25648]
	cmp eax, 0x1
	jz CL_CreateCmd_270
	cmp eax, 0x2
	jz CL_CreateCmd_280
	mov ebx, [esi+0x4]
	and bh, 0xfc
	mov [esi+0x4], ebx
CL_CreateCmd_1190:
	mov eax, ebx
	and ah, 0xef
	or eax, 0x100000
	mov [esi+0x4], eax
	cvtsi2ss xmm3, dword [edi+0x46124]
	mulss xmm3, [_float_0_00100000]
	movss xmm4, dword [edi+0x504ac]
	divss xmm4, dword [edi+0x504b0]
	mov eax, m_filter
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz CL_CreateCmd_290
	mov edx, clients
	mov eax, [edx+0x25640]
	cvtsi2ss xmm0, dword [edx+eax*4+0x25630]
	cvtsi2ss xmm2, dword [edx+eax*4+0x25638]
	mov ecx, edx
CL_CreateCmd_1450:
	mov eax, [ecx+0x25640]
	xor eax, 0x1
	mov [ecx+0x25640], eax
	mov dword [ecx+eax*4+0x25630], 0x0
	mov dword [ecx+eax*4+0x25638], 0x0
	mov edx, cg_mapLocationSelectionCursorSpeed
	mov eax, [edx]
	mulss xmm0, [eax+0xc]
	mulss xmm0, xmm3
	movss xmm1, dword [_float_0_10000000]
	mulss xmm0, xmm1
	addss xmm0, [edi+0x5050c]
	movss [edi+0x5050c], xmm0
	mulss xmm2, xmm4
	mov eax, [edx]
	mulss xmm2, [eax+0xc]
	mulss xmm3, xmm2
	mulss xmm3, xmm1
	addss xmm3, [edi+0x50510]
	movss [edi+0x50510], xmm3
	movaps xmm3, xmm0
	pxor xmm5, xmm5
	ucomiss xmm5, xmm0
	ja CL_CreateCmd_300
	movss xmm0, dword [_float_1_00000000]
	movaps xmm1, xmm0
	cmpss xmm1, xmm3, 0x5
	movaps xmm2, xmm3
	andps xmm2, xmm1
	movaps xmm3, xmm1
	andnps xmm3, xmm0
	orps xmm3, xmm2
CL_CreateCmd_1590:
	movss [edi+0x5050c], xmm3
	movss xmm1, dword [edi+0x50510]
	ucomiss xmm5, xmm1
	ja CL_CreateCmd_310
	movss xmm0, dword [_float_1_00000000]
	minss xmm0, xmm1
	movaps xmm1, xmm0
CL_CreateCmd_1580:
	movss [edi+0x50510], xmm1
	mov ebx, [ebp-0x70]
	lea eax, [ebx+ebx*2]
	lea eax, [ebx+eax*4]
	lea eax, [ebx+eax*8]
	lea eax, [ebx+eax*4]
	shl eax, 0x3
	add eax, playerKeys
	mov eax, [eax+0xd24]
	cmp eax, 0x1
	jz CL_CreateCmd_320
	cmp eax, 0x2
	jz CL_CreateCmd_330
CL_CreateCmd_1570:
	mov edi, clients
	mov eax, [edi+0x25654]
	mov [esi+0x14], al
	mov eax, [edi+0x25658]
	mov [esi+0x15], al
	mov edx, [edi+0x2fa0]
	mov eax, [edi+0x10]
	mov ecx, edx
	sub ecx, eax
	add eax, 0x1388
	cmp ecx, 0x1389
	cmovge edx, eax
	mov [esi], edx
	mov ecx, edi
	mov edx, esi
	movss xmm5, dword [_float_0_50000000]
	movss xmm1, dword [_float_182_04444885]
	lea ebx, [edi+0xc]
CL_CreateCmd_340:
	movss xmm0, dword [ecx+0x256a8]
	addss xmm0, [ecx+0x25668]
	mulss xmm0, xmm1
	addss xmm0, xmm5
	cvttss2si eax, xmm0
	and eax, 0xffff
	mov [edx+0x8], eax
	add ecx, 0x4
	add edx, 0x4
	cmp ecx, ebx
	jnz CL_CreateCmd_340
	mov eax, [esi+0x4]
	mov edx, clients
	or eax, [edx+0x256a0]
	mov [esi+0x4], eax
CL_CreateCmd_950:
	mov dword [edx+0x256a0], 0x0
	mov ecx, [ebp-0x70]
	mov [esp], ecx
	movss [ebp-0x98], xmm1
	movss [ebp-0xd8], xmm5
	call CG_VehLocalClientDriving
	test al, al
	movss xmm1, dword [ebp-0x98]
	movss xmm5, dword [ebp-0xd8]
	jz CL_CreateCmd_350
	mov ebx, clients
	movss xmm0, dword [ebx+0x1b1bd4]
	mulss xmm0, xmm1
	addss xmm0, xmm5
	cvttss2si eax, xmm0
	and eax, 0xffff
	mov [esi+0xc], eax
	mulss xmm1, [ebx+0x1b1bd8]
	addss xmm1, xmm5
	cvttss2si eax, xmm1
	and eax, 0xffff
	mov [esi+0x8], eax
	mov dword [esi+0x10], 0x0
CL_CreateCmd_350:
	mov eax, esi
	add esp, 0xfc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_CreateCmd_260:
	mov dword [esp+0x4], 0xfffffff7
	mov edx, [ebp-0x70]
	mov [esp], edx
	call Key_RemoveCatcher
CL_CreateCmd_250:
	mov eax, [ebp-0x6c]
	add eax, 0x118
	cmp word [eax+0x10], 0x0
	jnz CL_CreateCmd_360
	mov byte [eax+0x11], 0x0
	mov eax, [ebp-0x6c]
	add eax, 0x12c
	cmp word [eax+0x10], 0x0
	jnz CL_CreateCmd_370
CL_CreateCmd_1110:
	mov byte [eax+0x11], 0x0
	mov eax, [ebp-0x6c]
	add eax, 0x140
	cmp word [eax+0x10], 0x0
	jnz CL_CreateCmd_380
CL_CreateCmd_1100:
	mov byte [eax+0x11], 0x0
	mov eax, [ebp-0x6c]
	add eax, 0x154
	cmp word [eax+0x10], 0x0
	jnz CL_CreateCmd_390
CL_CreateCmd_1090:
	mov byte [eax+0x11], 0x0
	mov eax, [ebp-0x6c]
	add eax, 0x168
	cmp word [eax+0x10], 0x0
	jnz CL_CreateCmd_400
CL_CreateCmd_1080:
	mov byte [eax+0x11], 0x0
	mov eax, [ebp-0x6c]
	add eax, 0x17c
	cmp word [eax+0x10], 0x0
	jnz CL_CreateCmd_410
CL_CreateCmd_1070:
	mov byte [eax+0x11], 0x0
	mov eax, [ebp-0x6c]
	add eax, 0x190
	cmp word [eax+0x10], 0x0
	jnz CL_CreateCmd_420
CL_CreateCmd_1060:
	mov byte [eax+0x11], 0x0
	mov eax, [ebp-0x6c]
	add eax, 0x1a4
	cmp word [eax+0x10], 0x0
	jnz CL_CreateCmd_430
CL_CreateCmd_1050:
	mov byte [eax+0x11], 0x0
	mov eax, [ebp-0x6c]
	add eax, 0x1b8
	cmp word [eax+0x10], 0x0
	jnz CL_CreateCmd_440
CL_CreateCmd_1040:
	mov byte [eax+0x11], 0x0
	mov eax, [ebp-0x6c]
	add eax, 0x1cc
	cmp word [eax+0x10], 0x0
	jnz CL_CreateCmd_450
CL_CreateCmd_1030:
	mov byte [eax+0x11], 0x0
	mov eax, [ebp-0x6c]
	add eax, 0x1e0
	cmp word [eax+0x10], 0x0
	jnz CL_CreateCmd_460
CL_CreateCmd_1020:
	mov byte [eax+0x11], 0x0
	mov eax, [ebp-0x6c]
	add eax, 0x1f4
	cmp word [eax+0x10], 0x0
	jnz CL_CreateCmd_470
CL_CreateCmd_1010:
	mov byte [eax+0x11], 0x0
	mov eax, [ebp-0x6c]
	add eax, 0xc8
	cmp word [eax+0x10], 0x0
	jnz CL_CreateCmd_480
CL_CreateCmd_1000:
	mov byte [eax+0x11], 0x0
	mov eax, [ebp-0x6c]
	add eax, 0x208
	cmp word [eax+0x10], 0x0
	jnz CL_CreateCmd_490
CL_CreateCmd_990:
	mov byte [eax+0x11], 0x0
	mov ebx, clientUIActives
	mov eax, [ebx+0x4]
	test eax, eax
	jnz CL_CreateCmd_500
CL_CreateCmd_960:
	cmp dword [ebx+0xc], 0x5
	jg CL_CreateCmd_510
CL_CreateCmd_970:
	mov ecx, [ebp-0x70]
	lea edx, [ecx+ecx*4]
	mov eax, edx
	shl eax, 0x4
	sub eax, edx
	shl eax, 0x3
	movzx edx, byte [eax+playersKb+0x1f0]
	test dl, dl
	jz CL_CreateCmd_520
CL_CreateCmd_570:
	mov eax, 0x1
	test eax, eax
	jz CL_CreateCmd_530
CL_CreateCmd_580:
	test dl, dl
	jnz CL_CreateCmd_540
	mov ebx, [esi+0x4]
	or bh, 0x2
	and bh, 0xfe
	mov [esi+0x4], ebx
	or bh, 0x10
CL_CreateCmd_1170:
	mov [esi+0x4], ebx
	mov eax, clients
	cmp byte [eax], 0x0
	setz al
	mov edx, [ebp-0x6c]
	cmp al, [edx+0xc4]
	jnz CL_CreateCmd_550
CL_CreateCmd_620:
	or bh, 0x8
	mov [esi+0x4], ebx
	jmp CL_CreateCmd_560
CL_CreateCmd_520:
	cmp byte [eax+playersKb+0xec], 0x0
	jnz CL_CreateCmd_570
	xor eax, eax
	test eax, eax
	jnz CL_CreateCmd_580
CL_CreateCmd_530:
	mov ebx, clients
	cmp byte [ebx+0x25644], 0x0
	jnz CL_CreateCmd_590
	mov edi, ebx
CL_CreateCmd_1160:
	mov eax, [edi+0x25648]
	cmp eax, 0x1
	jz CL_CreateCmd_600
	cmp eax, 0x2
	jz CL_CreateCmd_610
	mov ebx, [esi+0x4]
	and bh, 0xfc
	mov [esi+0x4], ebx
CL_CreateCmd_1560:
	and bh, 0xef
	mov [esi+0x4], ebx
	mov eax, clients
	cmp byte [eax], 0x0
	setz al
	mov edx, [ebp-0x6c]
	cmp al, [edx+0xc4]
	jz CL_CreateCmd_620
CL_CreateCmd_550:
	and bh, 0xf7
	mov [esi+0x4], ebx
CL_CreateCmd_560:
	mov edx, [ebp-0x6c]
	add edx, 0x8c
	mov ecx, [edx+0xc]
	mov dword [edx+0xc], 0x0
	cmp byte [edx+0x10], 0x0
	jz CL_CreateCmd_630
	mov ebx, [edx+0x8]
	test ebx, ebx
	jnz CL_CreateCmd_640
	mov ebx, com_frameTime
	mov ecx, [ebx]
CL_CreateCmd_1490:
	mov eax, [ebx]
	mov [edx+0x8], eax
CL_CreateCmd_630:
	pxor xmm0, xmm0
	test ecx, ecx
	jle CL_CreateCmd_650
	mov eax, frame_msec
	mov edx, [eax]
	cmp ecx, edx
	jb CL_CreateCmd_660
	movss xmm0, dword [_float_127_00000000]
CL_CreateCmd_650:
	cvttss2si edi, xmm0
	mov edx, [ebp-0x6c]
	add edx, 0x78
	mov ecx, [edx+0xc]
	mov dword [edx+0xc], 0x0
	cmp byte [edx+0x10], 0x0
	jz CL_CreateCmd_670
	mov ebx, [edx+0x8]
	test ebx, ebx
	jnz CL_CreateCmd_680
	mov eax, com_frameTime
	mov ecx, [eax]
	mov ebx, eax
CL_CreateCmd_1460:
	mov eax, [ebx]
	mov [edx+0x8], eax
CL_CreateCmd_670:
	pxor xmm0, xmm0
	test ecx, ecx
	jle CL_CreateCmd_690
	mov eax, frame_msec
	mov edx, [eax]
	cmp ecx, edx
	jb CL_CreateCmd_700
	movss xmm0, dword [_float_127_00000000]
CL_CreateCmd_690:
	cvttss2si eax, xmm0
	sub edi, eax
	mov [ebp-0x64], edi
	mov edx, [ebp-0x6c]
	add edx, 0x28
	mov ecx, [edx+0xc]
	mov dword [edx+0xc], 0x0
	cmp byte [edx+0x10], 0x0
	jz CL_CreateCmd_710
	mov ebx, [edx+0x8]
	test ebx, ebx
	jnz CL_CreateCmd_720
	mov edi, com_frameTime
	mov ecx, [edi]
	mov ebx, edi
CL_CreateCmd_1470:
	mov eax, [ebx]
	mov [edx+0x8], eax
CL_CreateCmd_710:
	pxor xmm0, xmm0
	test ecx, ecx
	jle CL_CreateCmd_730
	mov eax, frame_msec
	mov edx, [eax]
	cmp ecx, edx
	jb CL_CreateCmd_740
	movss xmm0, dword [_float_127_00000000]
CL_CreateCmd_730:
	cvttss2si edi, xmm0
	mov ebx, [ebp-0x6c]
	add ebx, 0x3c
	mov ecx, [ebx+0xc]
	mov dword [ebx+0xc], 0x0
	cmp byte [ebx+0x10], 0x0
	jz CL_CreateCmd_750
	mov edx, [ebx+0x8]
	test edx, edx
	jnz CL_CreateCmd_760
	mov eax, com_frameTime
	mov ecx, [eax]
	mov edx, eax
CL_CreateCmd_1480:
	mov eax, [edx]
	mov [ebx+0x8], eax
CL_CreateCmd_750:
	pxor xmm0, xmm0
	test ecx, ecx
	jle CL_CreateCmd_770
	mov eax, frame_msec
	mov edx, [eax]
	cmp ecx, edx
	jb CL_CreateCmd_780
	movss xmm0, dword [_float_127_00000000]
CL_CreateCmd_770:
	cvttss2si eax, xmm0
	sub edi, eax
	cmp byte [ebx+0x10], 0x0
	jnz CL_CreateCmd_790
	mov eax, [ebp-0x6c]
	add eax, 0x21c
	cmp word [eax+0x10], 0x0
	jz CL_CreateCmd_800
	or dword [esi+0x4], 0x2
	mov byte [eax+0x11], 0x0
CL_CreateCmd_790:
	mov ecx, [ebp-0x6c]
	add ecx, 0xa0
	mov [ebp-0x68], ecx
	cmp byte [ecx+0x10], 0x0
	jz CL_CreateCmd_810
	test byte [esi+0x4], 0x2
	jnz CL_CreateCmd_810
	mov edx, [ebp-0x6c]
	add edx, 0x14
	mov ecx, [edx+0xc]
	mov dword [edx+0xc], 0x0
	cmp byte [edx+0x10], 0x0
	jz CL_CreateCmd_820
	mov ebx, [edx+0x8]
	test ebx, ebx
	jz CL_CreateCmd_830
	mov eax, com_frameTime
	mov eax, [eax]
	mov [ebp-0xdc], eax
	sub eax, ebx
	add ecx, eax
	mov ebx, com_frameTime
	mov eax, [ebx]
	mov [edx+0x8], eax
CL_CreateCmd_820:
	pxor xmm0, xmm0
	test ecx, ecx
	jle CL_CreateCmd_840
	mov eax, frame_msec
	mov edx, [eax]
	cmp ecx, edx
	jb CL_CreateCmd_850
	movss xmm0, dword [_float_127_00000000]
CL_CreateCmd_840:
	cvttss2si eax, xmm0
	mov ebx, [ebp-0x64]
	add ebx, eax
	mov eax, [ebp-0x6c]
	mov ecx, [eax+0xc]
	mov dword [eax+0xc], 0x0
	cmp byte [eax+0x10], 0x0
	jz CL_CreateCmd_860
	mov edx, [eax+0x8]
	test edx, edx
	jnz CL_CreateCmd_870
	mov edx, com_frameTime
	mov ecx, [edx]
CL_CreateCmd_1680:
	mov eax, [edx]
	mov edx, [ebp-0x6c]
	mov [edx+0x8], eax
CL_CreateCmd_860:
	pxor xmm0, xmm0
	test ecx, ecx
	jle CL_CreateCmd_880
	mov eax, frame_msec
	mov edx, [eax]
	cmp ecx, edx
	jb CL_CreateCmd_890
	movss xmm0, dword [_float_127_00000000]
CL_CreateCmd_880:
	cvttss2si eax, xmm0
	sub ebx, eax
	mov [ebp-0x64], ebx
CL_CreateCmd_810:
	mov [esp], edi
	call ClampChar
	mov [esi+0x16], al
	mov ecx, [ebp-0x64]
	mov [esp], ecx
	call ClampChar
	mov [esi+0x17], al
	mov eax, m_filter
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz CL_CreateCmd_900
	mov ebx, clients
	mov eax, [ebx+0x25630]
	add eax, [ebx+0x25634]
	cvtsi2ss xmm2, eax
	movss xmm0, dword [_float_0_50000000]
	mulss xmm2, xmm0
	mov eax, [ebx+0x25638]
	add eax, [ebx+0x2563c]
	cvtsi2ss xmm4, eax
	mulss xmm4, xmm0
	mov edx, ebx
CL_CreateCmd_1220:
	mov eax, [edx+0x25640]
	xor eax, 0x1
	mov [edx+0x25640], eax
	mov dword [edx+eax*4+0x25630], 0x0
	mov dword [edx+eax*4+0x25638], 0x0
	mov eax, frame_msec
	mov edx, [eax]
	cmp edx, 0x0
	jnz CL_CreateCmd_910
	mov ebx, clients
CL_CreateCmd_1350:
	movss xmm1, dword [ebx+0x256a8]
	movaps xmm0, xmm1
	subss xmm0, [ebp-0x5c]
	ucomiss xmm0, [_float_90_00000000]
	jbe CL_CreateCmd_920
	movss xmm0, dword [ebp-0x5c]
	addss xmm0, [_float_90_00000000]
	movss [ebx+0x256a8], xmm0
CL_CreateCmd_1210:
	mov edx, [ebp-0x70]
	mov [esp], edx
	call CG_VehLocalClientDriving
	test al, al
	jz CL_CreateCmd_930
	mov ebx, [esi+0x4]
	and ebx, 0xffff37fe
	mov [esi+0x4], ebx
CL_CreateCmd_1200:
	mov ecx, clients
	mov eax, [ecx+0x25654]
	mov [esi+0x14], al
	mov eax, [ecx+0x25658]
	mov [esi+0x15], al
	mov edx, [ecx+0x2fa0]
	mov eax, [ecx+0x10]
	mov ecx, edx
	sub ecx, eax
	add eax, 0x1388
	cmp ecx, 0x1389
	cmovge edx, eax
	mov [esi], edx
	mov ecx, clients
	mov edx, esi
	movss xmm5, dword [_float_0_50000000]
	movss xmm1, dword [_float_182_04444885]
	lea edi, [ecx+0xc]
CL_CreateCmd_940:
	movss xmm0, dword [ecx+0x256a8]
	addss xmm0, [ecx+0x25668]
	mulss xmm0, xmm1
	addss xmm0, xmm5
	cvttss2si eax, xmm0
	and eax, 0xffff
	mov [edx+0x8], eax
	add ecx, 0x4
	add edx, 0x4
	cmp ecx, edi
	jnz CL_CreateCmd_940
	mov edx, clients
	or ebx, [edx+0x256a0]
	mov [esi+0x4], ebx
	jmp CL_CreateCmd_950
CL_CreateCmd_500:
	mov eax, [cl_bypassMouseInput]
	cmp byte [eax+0xc], 0x0
	jnz CL_CreateCmd_960
	mov edi, [ebp-0x70]
	mov [esp], edi
	call UI_GetActiveMenu
	cmp eax, 0xa
	jz CL_CreateCmd_960
	or dword [esi+0x4], 0x100000
	cmp dword [ebx+0xc], 0x5
	jle CL_CreateCmd_970
CL_CreateCmd_510:
	mov edx, clients
	mov eax, [edx+0x28]
	sub eax, 0x2
	cmp eax, 0x2
	ja CL_CreateCmd_970
	mov eax, [ebp-0x6c]
	add eax, 0xf0
	cmp word [eax+0x10], 0x0
	jz CL_CreateCmd_980
	or dword [esi+0x4], 0x400
CL_CreateCmd_980:
	mov byte [eax+0x11], 0x0
	mov ecx, [ebp-0x70]
	lea edx, [ecx+ecx*4]
	mov eax, edx
	shl eax, 0x4
	sub eax, edx
	shl eax, 0x3
	movzx edx, byte [eax+playersKb+0x1f0]
	test dl, dl
	jz CL_CreateCmd_520
	jmp CL_CreateCmd_570
CL_CreateCmd_490:
	or dword [esi+0x4], 0x80000
	mov byte [eax+0x11], 0x0
	mov ebx, clientUIActives
	mov eax, [ebx+0x4]
	test eax, eax
	jnz CL_CreateCmd_500
	jmp CL_CreateCmd_960
CL_CreateCmd_480:
	or dword [esi+0x4], 0x400
	mov byte [eax+0x11], 0x0
	mov eax, [ebp-0x6c]
	add eax, 0x208
	cmp word [eax+0x10], 0x0
	jnz CL_CreateCmd_490
	jmp CL_CreateCmd_990
CL_CreateCmd_470:
	or dword [esi+0x4], 0x200
	mov byte [eax+0x11], 0x0
	mov eax, [ebp-0x6c]
	add eax, 0xc8
	cmp word [eax+0x10], 0x0
	jnz CL_CreateCmd_480
	jmp CL_CreateCmd_1000
CL_CreateCmd_460:
	or dword [esi+0x4], 0x100
	mov byte [eax+0x11], 0x0
	mov eax, [ebp-0x6c]
	add eax, 0x1f4
	cmp word [eax+0x10], 0x0
	jnz CL_CreateCmd_470
	jmp CL_CreateCmd_1010
CL_CreateCmd_450:
	or dword [esi+0x4], 0x80
	mov byte [eax+0x11], 0x0
	mov eax, [ebp-0x6c]
	add eax, 0x1e0
	cmp word [eax+0x10], 0x0
	jnz CL_CreateCmd_460
	jmp CL_CreateCmd_1020
CL_CreateCmd_440:
	or dword [esi+0x4], 0x40
	mov byte [eax+0x11], 0x0
	mov eax, [ebp-0x6c]
	add eax, 0x1cc
	cmp word [eax+0x10], 0x0
	jnz CL_CreateCmd_450
	jmp CL_CreateCmd_1030
CL_CreateCmd_430:
	or dword [esi+0x4], 0x20
	mov byte [eax+0x11], 0x0
	mov eax, [ebp-0x6c]
	add eax, 0x1b8
	cmp word [eax+0x10], 0x0
	jnz CL_CreateCmd_440
	jmp CL_CreateCmd_1040
CL_CreateCmd_420:
	or dword [esi+0x4], 0x10
	mov byte [eax+0x11], 0x0
	mov eax, [ebp-0x6c]
	add eax, 0x1a4
	cmp word [eax+0x10], 0x0
	jnz CL_CreateCmd_430
	jmp CL_CreateCmd_1050
CL_CreateCmd_410:
	or dword [esi+0x4], 0x8
	mov byte [eax+0x11], 0x0
	mov eax, [ebp-0x6c]
	add eax, 0x190
	cmp word [eax+0x10], 0x0
	jnz CL_CreateCmd_420
	jmp CL_CreateCmd_1060
CL_CreateCmd_400:
	or dword [esi+0x4], 0x4
	mov byte [eax+0x11], 0x0
	mov eax, [ebp-0x6c]
	add eax, 0x17c
	cmp word [eax+0x10], 0x0
	jnz CL_CreateCmd_410
	jmp CL_CreateCmd_1070
CL_CreateCmd_390:
	or dword [esi+0x4], 0x8000
	mov byte [eax+0x11], 0x0
	mov eax, [ebp-0x6c]
	add eax, 0x168
	cmp word [eax+0x10], 0x0
	jnz CL_CreateCmd_400
	jmp CL_CreateCmd_1080
CL_CreateCmd_380:
	or dword [esi+0x4], 0x4000
	mov byte [eax+0x11], 0x0
	mov eax, [ebp-0x6c]
	add eax, 0x154
	cmp word [eax+0x10], 0x0
	jnz CL_CreateCmd_390
	jmp CL_CreateCmd_1090
CL_CreateCmd_370:
	or dword [esi+0x4], 0x2000
	mov byte [eax+0x11], 0x0
	mov eax, [ebp-0x6c]
	add eax, 0x140
	cmp word [eax+0x10], 0x0
	jnz CL_CreateCmd_380
	jmp CL_CreateCmd_1100
CL_CreateCmd_360:
	or dword [esi+0x4], 0x1
	mov byte [eax+0x11], 0x0
	mov eax, [ebp-0x6c]
	add eax, 0x12c
	cmp word [eax+0x10], 0x0
	jnz CL_CreateCmd_370
	jmp CL_CreateCmd_1110
CL_CreateCmd_20:
	cvtsi2ss xmm3, eax
	mulss xmm3, [_float_0_00100000]
	jmp CL_CreateCmd_1120
CL_CreateCmd_200:
	cvtsi2ss xmm0, ecx
	test edx, edx
	js CL_CreateCmd_1130
	cvtsi2ss xmm1, edx
CL_CreateCmd_1710:
	divss xmm0, xmm1
	movaps xmm1, xmm0
	jmp CL_CreateCmd_1140
CL_CreateCmd_590:
	mov eax, com_frameTime
	mov eax, [eax]
	sub eax, [ebx+0x25650]
	mov edx, [cl_stanceHoldTime]
	cmp eax, [edx+0xc]
	jl CL_CreateCmd_1150
	xor eax, eax
	cmp dword [ebx+0x2564c], 0x2
	setnz al
	add eax, eax
	mov [ebx+0x25648], eax
	mov byte [ebx+0x25644], 0x0
	mov edi, clients
	jmp CL_CreateCmd_1160
CL_CreateCmd_540:
	mov ebx, [esi+0x4]
	or bh, 0x1
	and bh, 0xfd
	mov [esi+0x4], ebx
	or bh, 0x10
	jmp CL_CreateCmd_1170
CL_CreateCmd_180:
	mov eax, com_frameTime
	mov ecx, [eax]
	mov ebx, eax
	mov eax, [ebx]
	mov [edx+0x8], eax
	test ecx, ecx
	jg CL_CreateCmd_1180
CL_CreateCmd_190:
	movaps xmm1, xmm5
	jmp CL_CreateCmd_1140
CL_CreateCmd_280:
	mov ebx, [esi+0x4]
	or bh, 0x1
	and bh, 0xfd
	mov [esi+0x4], ebx
	jmp CL_CreateCmd_1190
CL_CreateCmd_40:
	mov eax, [cl_yawspeed]
	movss xmm1, dword [eax+0xc]
	jmp CL_CreateCmd_50
CL_CreateCmd_930:
	mov ebx, [esi+0x4]
	jmp CL_CreateCmd_1200
CL_CreateCmd_920:
	movss xmm0, dword [ebp-0x5c]
	subss xmm0, xmm1
	ucomiss xmm0, [_float_90_00000000]
	jbe CL_CreateCmd_1210
	movss xmm1, dword [ebp-0x5c]
	subss xmm1, [_float_90_00000000]
	mov eax, clients
	movss [eax+0x256a8], xmm1
	jmp CL_CreateCmd_1210
CL_CreateCmd_900:
	mov edi, clients
	mov eax, [edi+0x25640]
	cvtsi2ss xmm2, dword [edi+eax*4+0x25630]
	cvtsi2ss xmm4, dword [edi+eax*4+0x25638]
	mov edx, edi
	jmp CL_CreateCmd_1220
CL_CreateCmd_660:
	cvtsi2ss xmm1, ecx
	test edx, edx
	js CL_CreateCmd_1230
	cvtsi2ss xmm0, edx
CL_CreateCmd_1640:
	divss xmm1, xmm0
	movaps xmm0, xmm1
	mulss xmm0, [_float_127_00000000]
	jmp CL_CreateCmd_650
CL_CreateCmd_700:
	cvtsi2ss xmm1, ecx
	test edx, edx
	js CL_CreateCmd_1240
	cvtsi2ss xmm0, edx
CL_CreateCmd_1660:
	divss xmm1, xmm0
	movaps xmm0, xmm1
	mulss xmm0, [_float_127_00000000]
	jmp CL_CreateCmd_690
CL_CreateCmd_740:
	cvtsi2ss xmm1, ecx
	test edx, edx
	js CL_CreateCmd_1250
	cvtsi2ss xmm0, edx
CL_CreateCmd_1670:
	divss xmm1, xmm0
	movaps xmm0, xmm1
	mulss xmm0, [_float_127_00000000]
	jmp CL_CreateCmd_730
CL_CreateCmd_780:
	cvtsi2ss xmm1, ecx
	test edx, edx
	js CL_CreateCmd_1260
	cvtsi2ss xmm0, edx
CL_CreateCmd_1650:
	divss xmm1, xmm0
	movaps xmm0, xmm1
	mulss xmm0, [_float_127_00000000]
	jmp CL_CreateCmd_770
CL_CreateCmd_240:
	cvtsi2ss xmm1, ecx
	test edx, edx
	js CL_CreateCmd_1270
	cvtsi2ss xmm0, edx
CL_CreateCmd_1700:
	divss xmm1, xmm0
	movaps xmm0, xmm1
	jmp CL_CreateCmd_1280
CL_CreateCmd_910:
	movaps xmm0, xmm2
	mulss xmm0, xmm2
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	jl CL_CreateCmd_1290
	cvtsi2ss xmm0, edx
CL_CreateCmd_1720:
	divss xmm1, xmm0
	movaps xmm0, xmm1
	mov eax, cl_sensitivity
	mov edx, [eax]
	mov eax, cl_mouseAccel
	mov eax, [eax]
	movaps xmm3, xmm1
	mulss xmm3, [eax+0xc]
	addss xmm3, [edx+0xc]
	mov ecx, clients
	mulss xmm3, [ecx+0x2565c]
	ucomiss xmm1, [_float_0_00000000]
	jp CL_CreateCmd_1300
	jz CL_CreateCmd_1310
CL_CreateCmd_1300:
	mov eax, cl_showMouseRate
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz CL_CreateCmd_1320
	mov eax, clients
CL_CreateCmd_1550:
	test byte [eax+0x31], 0x8
	jnz CL_CreateCmd_1330
	movaps xmm0, xmm3
	mulss xmm0, xmm2
	mulss xmm3, xmm4
	movss [ebp-0x60], xmm3
	pxor xmm5, xmm5
	ucomiss xmm0, xmm5
	jnz CL_CreateCmd_1340
	jp CL_CreateCmd_1340
	ucomiss xmm3, xmm5
	jp CL_CreateCmd_1340
	jnz CL_CreateCmd_1340
	movss xmm4, dword [_float_0_00100000]
	mov edx, clients
CL_CreateCmd_1440:
	mov eax, cls
	cvtsi2ss xmm0, dword [eax+0x114]
	mulss xmm0, xmm4
	movss [ebp-0x58], xmm0
	mov eax, [edx+0x256a8]
	mov [ebp-0x54], eax
	mov dword [ebp-0x50], 0x0
	mov dword [ebp-0x4c], 0x0
	mov eax, [edx+0x256ac]
	mov [ebp-0x48], eax
	mov dword [ebp-0x44], 0x0
	mov dword [ebp-0x40], 0x0
	mov dword [ebp-0x3c], 0x0
	mov dword [ebp-0x38], 0x0
	mov eax, [esi+0x4]
	mov [ebp-0x34], eax
	mov dword [ebp-0x30], 0x0
	mov dword [esp], 0x0
	call CG_GetPredictedPlayerState
	mov [ebp-0x2c], eax
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	lea eax, [ebp-0x58]
	mov [esp], eax
	call AimAssist_UpdateMouseInput
	mov eax, [ebp-0x28]
	mov ecx, clients
	mov [ecx+0x256a8], eax
	mov eax, [ebp-0x24]
	mov [ecx+0x256ac], eax
	mov eax, [ebp-0x20]
	mov [esi+0x18], eax
	movzx eax, byte [ebp-0x1c]
	mov [esi+0x1c], al
	mov ebx, ecx
	jmp CL_CreateCmd_1350
CL_CreateCmd_1340:
	mov eax, [ebp-0x68]
	cmp byte [eax+0x10], 0x0
	jnz CL_CreateCmd_1360
	mov eax, m_yaw
	mov eax, [eax]
	movaps xmm3, xmm0
	mulss xmm3, [eax+0xc]
	mov edx, clients
	movss xmm1, dword [edx+0x25664]
	ucomiss xmm1, xmm5
	jbe CL_CreateCmd_1370
	mov eax, frame_msec
	mov edx, [eax]
	test edx, edx
	js CL_CreateCmd_1380
	cvtsi2ss xmm0, edx
CL_CreateCmd_1780:
	mulss xmm0, xmm1
	mulss xmm0, [_float_0_00100000]
	movaps xmm1, xmm3
	subss xmm1, xmm0
	movaps xmm2, xmm5
	cmpss xmm2, xmm1, 0x6
	movaps xmm1, xmm2
	movaps xmm2, xmm3
	andps xmm2, xmm1
	movaps xmm3, xmm1
	andnps xmm3, xmm0
	orps xmm3, xmm2
	xorps xmm0, [_data16_80000000]
	movaps xmm1, xmm0
	subss xmm1, xmm3
	cmpss xmm5, xmm1, 0x6
	movaps xmm2, xmm3
	andps xmm2, xmm5
	movaps xmm3, xmm5
	andnps xmm3, xmm0
	orps xmm3, xmm2
	mov eax, clients
CL_CreateCmd_1690:
	movss xmm0, dword [eax+0x256ac]
	subss xmm0, xmm3
	movss [eax+0x256ac], xmm0
CL_CreateCmd_1730:
	mov edx, [ebp-0x6c]
	cmp byte [edx+0x114], 0x0
	jnz CL_CreateCmd_1390
	mov eax, cl_freelook
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz CL_CreateCmd_1400
CL_CreateCmd_1390:
	mov ecx, [ebp-0x68]
	cmp byte [ecx+0x10], 0x0
	jnz CL_CreateCmd_1400
	mov eax, m_pitch
	mov eax, [eax]
	movss xmm3, dword [ebp-0x60]
	mulss xmm3, [eax+0xc]
	mov ebx, clients
	movss xmm0, dword [ebx+0x25660]
	pxor xmm5, xmm5
	ucomiss xmm0, xmm5
	jbe CL_CreateCmd_1410
	mov eax, frame_msec
	mov edx, [eax]
	test edx, edx
	js CL_CreateCmd_1420
	cvtsi2ss xmm1, edx
CL_CreateCmd_1790:
	mulss xmm1, xmm0
	movss xmm4, dword [_float_0_00100000]
	mulss xmm1, xmm4
	movaps xmm0, xmm3
	subss xmm0, xmm1
	movaps xmm2, xmm5
	cmpss xmm2, xmm0, 0x6
	movaps xmm0, xmm2
	movaps xmm2, xmm3
	andps xmm2, xmm0
	movaps xmm3, xmm0
	andnps xmm3, xmm1
	orps xmm3, xmm2
	xorps xmm1, [_data16_80000000]
	movaps xmm0, xmm1
	subss xmm0, xmm3
	ucomiss xmm0, xmm5
	jb CL_CreateCmd_1430
	movaps xmm3, xmm1
CL_CreateCmd_1430:
	mov eax, clients
	addss xmm3, [eax+0x256a8]
	movss [eax+0x256a8], xmm3
	mov edx, eax
	jmp CL_CreateCmd_1440
CL_CreateCmd_290:
	mov ebx, clients
	mov eax, [ebx+0x25630]
	add eax, [ebx+0x25634]
	cvtsi2ss xmm0, eax
	movss xmm5, dword [_float_0_50000000]
	mulss xmm0, xmm5
	mov eax, [ebx+0x25638]
	add eax, [ebx+0x2563c]
	cvtsi2ss xmm2, eax
	mulss xmm2, xmm5
	mov ecx, ebx
	jmp CL_CreateCmd_1450
CL_CreateCmd_800:
	and dword [esi+0x4], 0xfffffffd
	jmp CL_CreateCmd_790
CL_CreateCmd_680:
	mov eax, com_frameTime
	mov eax, [eax]
	mov [ebp-0xdc], eax
	sub eax, ebx
	add ecx, eax
	mov ebx, com_frameTime
	jmp CL_CreateCmd_1460
CL_CreateCmd_720:
	mov edi, com_frameTime
	mov eax, [edi]
	sub eax, ebx
	add ecx, eax
	mov ebx, edi
	jmp CL_CreateCmd_1470
CL_CreateCmd_760:
	mov eax, com_frameTime
	mov eax, [eax]
	mov [ebp-0xdc], eax
	sub eax, edx
	add ecx, eax
	mov edx, com_frameTime
	jmp CL_CreateCmd_1480
CL_CreateCmd_640:
	mov edi, com_frameTime
	mov eax, [edi]
	sub eax, ebx
	add ecx, eax
	mov ebx, edi
	jmp CL_CreateCmd_1490
CL_CreateCmd_220:
	mov edi, com_frameTime
	mov eax, [edi]
	sub eax, ebx
	add ecx, eax
	mov ebx, edi
	jmp CL_CreateCmd_1500
CL_CreateCmd_230:
	movaps xmm0, xmm5
	jmp CL_CreateCmd_1280
CL_CreateCmd_270:
	mov ebx, [esi+0x4]
	or bh, 0x2
	and bh, 0xfe
	mov [esi+0x4], ebx
	jmp CL_CreateCmd_1190
CL_CreateCmd_130:
	cvtsi2ss xmm4, ecx
	test edx, edx
	js CL_CreateCmd_1510
	cvtsi2ss xmm1, edx
CL_CreateCmd_1740:
	divss xmm4, xmm1
	movaps xmm1, xmm4
	jmp CL_CreateCmd_1520
CL_CreateCmd_90:
	cvtsi2ss xmm2, ecx
	test edx, edx
	js CL_CreateCmd_1530
	cvtsi2ss xmm1, edx
CL_CreateCmd_1750:
	divss xmm2, xmm1
	movaps xmm1, xmm2
	jmp CL_CreateCmd_1540
CL_CreateCmd_1310:
	mov eax, ecx
	jmp CL_CreateCmd_1550
CL_CreateCmd_1330:
	mov ebx, eax
	jmp CL_CreateCmd_1350
CL_CreateCmd_600:
	mov ebx, [esi+0x4]
	or bh, 0x2
	and bh, 0xfe
	mov [esi+0x4], ebx
	jmp CL_CreateCmd_1560
CL_CreateCmd_330:
	or dword [esi+0x4], 0x20000
	jmp CL_CreateCmd_1570
CL_CreateCmd_1150:
	mov edi, clients
	jmp CL_CreateCmd_1160
CL_CreateCmd_310:
	movaps xmm1, xmm5
	jmp CL_CreateCmd_1580
CL_CreateCmd_300:
	movaps xmm3, xmm5
	jmp CL_CreateCmd_1590
CL_CreateCmd_610:
	mov ebx, [esi+0x4]
	or bh, 0x1
	and bh, 0xfd
	mov [esi+0x4], ebx
	jmp CL_CreateCmd_1560
CL_CreateCmd_890:
	cvtsi2ss xmm1, ecx
	test edx, edx
	js CL_CreateCmd_1600
	cvtsi2ss xmm0, edx
CL_CreateCmd_1760:
	divss xmm1, xmm0
	movaps xmm0, xmm1
	mulss xmm0, [_float_127_00000000]
	jmp CL_CreateCmd_880
CL_CreateCmd_850:
	cvtsi2ss xmm1, ecx
	test edx, edx
	js CL_CreateCmd_1610
	cvtsi2ss xmm0, edx
CL_CreateCmd_1770:
	divss xmm1, xmm0
	movaps xmm0, xmm1
	mulss xmm0, [_float_127_00000000]
	jmp CL_CreateCmd_840
CL_CreateCmd_110:
	mov ebx, com_frameTime
	mov eax, [ebx]
	sub eax, edx
	add ecx, eax
	mov edi, ebx
	jmp CL_CreateCmd_1620
CL_CreateCmd_70:
	mov edi, com_frameTime
	mov eax, [edi]
	sub eax, ebx
	add ecx, eax
	mov ebx, edi
	jmp CL_CreateCmd_1630
CL_CreateCmd_1230:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp CL_CreateCmd_1640
CL_CreateCmd_1260:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp CL_CreateCmd_1650
CL_CreateCmd_1240:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp CL_CreateCmd_1660
CL_CreateCmd_1250:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp CL_CreateCmd_1670
CL_CreateCmd_80:
	movaps xmm1, xmm5
	jmp CL_CreateCmd_1540
CL_CreateCmd_120:
	movaps xmm1, xmm5
	jmp CL_CreateCmd_1520
CL_CreateCmd_320:
	or dword [esi+0x4], 0x10000
	movss xmm1, dword [_float_255_00000000]
	movss xmm0, dword [edi+0x5050c]
	mulss xmm0, xmm1
	movss xmm5, dword [_float_0_50000000]
	addss xmm0, xmm5
	movss [esp], xmm0
	movss [ebp-0x98], xmm1
	movss [ebp-0xd8], xmm5
	call floorf
	fstp dword [ebp-0x74]
	cvttss2si eax, [ebp-0x74]
	add al, 0x80
	mov [esi+0x1d], al
	movss xmm1, dword [ebp-0x98]
	mulss xmm1, [edi+0x50510]
	movss xmm5, dword [ebp-0xd8]
	addss xmm1, xmm5
	movss [esp], xmm1
	call floorf
	fstp dword [ebp-0x78]
	cvttss2si eax, [ebp-0x78]
	add al, 0x80
	mov [esi+0x1e], al
	jmp CL_CreateCmd_1570
CL_CreateCmd_830:
	mov ebx, com_frameTime
	mov ecx, [ebx]
	mov eax, [ebx]
	mov [edx+0x8], eax
	jmp CL_CreateCmd_820
CL_CreateCmd_870:
	mov eax, com_frameTime
	mov eax, [eax]
	mov [ebp-0xdc], eax
	sub eax, edx
	add ecx, eax
	mov edx, com_frameTime
	jmp CL_CreateCmd_1680
CL_CreateCmd_1370:
	mov eax, edx
	jmp CL_CreateCmd_1690
CL_CreateCmd_1400:
	movsx ebx, byte [esi+0x16]
	mov eax, m_forward
	mov eax, [eax]
	movss xmm0, dword [ebp-0x60]
	mulss xmm0, [eax+0xc]
	movss [ebp-0x60], xmm0
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x80]
	cvttss2si eax, [ebp-0x80]
	sub ebx, eax
	mov [esp], ebx
	call ClampChar
	mov [esi+0x16], al
	movss xmm4, dword [_float_0_00100000]
	mov edx, clients
	jmp CL_CreateCmd_1440
CL_CreateCmd_1270:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp CL_CreateCmd_1700
CL_CreateCmd_1130:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm1, eax
	addss xmm1, xmm1
	jmp CL_CreateCmd_1710
CL_CreateCmd_1290:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp CL_CreateCmd_1720
CL_CreateCmd_1320:
	cvtss2sd xmm1, xmm3
	movsd [esp+0x10], xmm1
	cvtss2sd xmm0, xmm0
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_f__f
	mov dword [esp], 0xe
	movss [ebp-0xa8], xmm2
	movss [ebp-0xb8], xmm3
	movss [ebp-0xc8], xmm4
	call Com_Printf
	movss xmm4, dword [ebp-0xc8]
	movss xmm3, dword [ebp-0xb8]
	movss xmm2, dword [ebp-0xa8]
	mov eax, clients
	jmp CL_CreateCmd_1550
CL_CreateCmd_1360:
	movsx ebx, byte [esi+0x17]
	mov eax, m_side
	mov eax, [eax]
	mulss xmm0, [eax+0xc]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x7c]
	cvttss2si eax, [ebp-0x7c]
	add ebx, eax
	mov [esp], ebx
	call ClampChar
	mov [esi+0x17], al
	jmp CL_CreateCmd_1730
CL_CreateCmd_1510:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm1, eax
	addss xmm1, xmm1
	jmp CL_CreateCmd_1740
CL_CreateCmd_1530:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm1, eax
	addss xmm1, xmm1
	jmp CL_CreateCmd_1750
CL_CreateCmd_1600:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp CL_CreateCmd_1760
CL_CreateCmd_1610:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp CL_CreateCmd_1770
CL_CreateCmd_1380:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp CL_CreateCmd_1780
CL_CreateCmd_1410:
	movss xmm4, dword [_float_0_00100000]
	jmp CL_CreateCmd_1430
CL_CreateCmd_1420:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm1, eax
	addss xmm1, xmm1
	jmp CL_CreateCmd_1790


;CL_SendCmd(int)
CL_SendCmd:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov ebx, clientConnections
	mov eax, [ebx+0x4018c]
	test eax, eax
	jnz CL_SendCmd_10
	mov eax, clientUIActives
	mov edx, [eax+0xc]
	lea eax, [edx-0x1]
	cmp eax, 0x1
	jbe CL_SendCmd_10
	mov esi, cls
	movzx ecx, byte [esi+0x2dc098]
	test cl, cl
	jnz CL_SendCmd_20
CL_SendCmd_60:
	lea eax, [edx-0x8]
	cmp eax, 0x1
	jbe CL_SendCmd_30
	test cl, cl
	jz CL_SendCmd_40
CL_SendCmd_30:
	cmp dword [ebx+0x401c8], 0x2
	jz CL_SendCmd_50
	mov ecx, [ebx+0x401c8]
	mov [ebp-0x24], ecx
	mov edx, [ebx+0x401cc]
	mov [ebp-0x20], edx
	mov eax, [ebx+0x401d0]
	mov [ebp-0x1c], eax
	mov [esp], ecx
	mov [esp+0x4], edx
	mov [esp+0x8], eax
	call Sys_IsLANAddress
	test eax, eax
	jnz CL_SendCmd_50
	mov eax, [ebx+0x401b8]
	sub eax, 0x1
	and eax, 0x1f
	lea eax, [eax+eax*2]
	shl eax, 0x2
	add eax, clients
	mov edx, cls
	mov ecx, [edx+0x118]
	sub ecx, [eax+0x696d8]
	mov eax, cl_maxpackets
	mov ebx, [eax]
	mov eax, 0x3e8
	cdq
	idiv dword [ebx+0xc]
	cmp ecx, eax
	jge CL_SendCmd_50
CL_SendCmd_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_SendCmd_50:
	mov [ebp+0x8], edi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp CL_WritePacket
CL_SendCmd_20:
	mov eax, [esi+0x118]
	sub eax, [ebx+0x8]
	cmp eax, 0x31
	jle CL_SendCmd_10
	jmp CL_SendCmd_60
CL_SendCmd_40:
	mov eax, [esi+0x118]
	sub eax, [ebx+0x8]
	cmp eax, 0x3e7
	jle CL_SendCmd_10
	jmp CL_SendCmd_30


;CL_InitInput()
CL_InitInput:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov dword [esp+0x8], _ZZ12CL_InitInputvE17IN_CenterView_VAR
	mov dword [esp+0x4], IN_CenterView
	mov dword [esp], _cstring_centerview
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE13IN_UpDown_VAR
	mov dword [esp+0x4], IN_UpDown
	mov dword [esp], _cstring_moveup
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE11IN_UpUp_VAR
	mov dword [esp+0x4], IN_UpUp
	mov dword [esp], _cstring_moveup1
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE15IN_DownDown_VAR
	mov dword [esp+0x4], IN_DownDown
	mov dword [esp], _cstring_movedown
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE13IN_DownUp_VAR
	mov dword [esp+0x4], IN_DownUp
	mov dword [esp], _cstring_movedown1
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE15IN_LeftDown_VAR
	mov dword [esp+0x4], IN_LeftDown
	mov dword [esp], _cstring_left
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE13IN_LeftUp_VAR
	mov dword [esp+0x4], IN_LeftUp
	mov dword [esp], _cstring_left1
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE16IN_RightDown_VAR
	mov dword [esp+0x4], IN_RightDown
	mov dword [esp], _cstring_right
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE14IN_RightUp_VAR
	mov dword [esp+0x4], IN_RightUp
	mov dword [esp], _cstring_right1
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE18IN_ForwardDown_VAR
	mov dword [esp+0x4], IN_ForwardDown
	mov dword [esp], _cstring_forward
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE16IN_ForwardUp_VAR
	mov dword [esp+0x4], IN_ForwardUp
	mov dword [esp], _cstring_forward1
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE15IN_BackDown_VAR
	mov dword [esp+0x4], IN_BackDown
	mov dword [esp], _cstring_back
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE13IN_BackUp_VAR
	mov dword [esp+0x4], IN_BackUp
	mov dword [esp], _cstring_back1
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE17IN_LookupDown_VAR
	mov dword [esp+0x4], IN_LookupDown
	mov dword [esp], _cstring_lookup
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE15IN_LookupUp_VAR
	mov dword [esp+0x4], IN_LookupUp
	mov dword [esp], _cstring_lookup1
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE19IN_LookdownDown_VAR
	mov dword [esp+0x4], IN_LookdownDown
	mov dword [esp], _cstring_lookdown
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE17IN_LookdownUp_VAR
	mov dword [esp+0x4], IN_LookdownUp
	mov dword [esp], _cstring_lookdown1
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE17IN_StrafeDown_VAR
	mov dword [esp+0x4], IN_StrafeDown
	mov dword [esp], _cstring_strafe
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE15IN_StrafeUp_VAR
	mov dword [esp+0x4], IN_StrafeUp
	mov dword [esp], _cstring_strafe1
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE19IN_MoveleftDown_VAR
	mov dword [esp+0x4], IN_MoveleftDown
	mov dword [esp], _cstring_moveleft
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE17IN_MoveleftUp_VAR
	mov dword [esp+0x4], IN_MoveleftUp
	mov dword [esp], _cstring_moveleft1
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE20IN_MoverightDown_VAR
	mov dword [esp+0x4], IN_MoverightDown
	mov dword [esp], _cstring_moveright
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE18IN_MoverightUp_VAR
	mov dword [esp+0x4], IN_MoverightUp
	mov dword [esp], _cstring_moveright1
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE16IN_SpeedDown_VAR
	mov dword [esp+0x4], IN_SpeedDown
	mov dword [esp], _cstring_speed
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE14IN_SpeedUp_VAR
	mov dword [esp+0x4], IN_SpeedUp
	mov dword [esp], _cstring_speed1
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE18IN_Attack_Down_VAR
	mov dword [esp+0x4], IN_Attack_Down
	mov dword [esp], _cstring_attack
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE16IN_Attack_Up_VAR
	mov dword [esp+0x4], IN_Attack_Up
	mov dword [esp], _cstring_attack1
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE17IN_Melee_Down_VAR
	mov dword [esp+0x4], IN_Melee_Down
	mov dword [esp], _cstring_melee
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE15IN_Melee_Up_VAR
	mov dword [esp+0x4], IN_Melee_Up
	mov dword [esp], _cstring_melee1
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE18IN_Breath_Down_VAR
	mov dword [esp+0x4], IN_Breath_Down
	mov dword [esp], _cstring_holdbreath
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE16IN_Breath_Up_VAR
	mov dword [esp+0x4], IN_Breath_Up
	mov dword [esp], _cstring_holdbreath1
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE23IN_MeleeBreath_Down_VAR
	mov dword [esp+0x4], IN_MeleeBreath_Down
	mov dword [esp], _cstring_melee_breath
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE21IN_MeleeBreath_Up_VAR
	mov dword [esp+0x4], IN_MeleeBreath_Up
	mov dword [esp], _cstring_melee_breath1
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE16IN_Frag_Down_VAR
	mov dword [esp+0x4], IN_Frag_Down
	mov dword [esp], _cstring_frag
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE14IN_Frag_Up_VAR
	mov dword [esp+0x4], IN_Frag_Up
	mov dword [esp], _cstring_frag1
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE17IN_Smoke_Down_VAR
	mov dword [esp+0x4], IN_Smoke_Down
	mov dword [esp], _cstring_smoke
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE15IN_Smoke_Up_VAR
	mov dword [esp+0x4], IN_Smoke_Up
	mov dword [esp], _cstring_smoke1
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE24IN_BreathSprint_Down_VAR
	mov dword [esp+0x4], IN_BreathSprint_Down
	mov dword [esp], _cstring_breath_sprint
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE22IN_BreathSprint_Up_VAR
	mov dword [esp+0x4], IN_BreathSprint_Up
	mov dword [esp], _cstring_breath_sprint1
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE20IN_Activate_Down_VAR
	mov dword [esp+0x4], IN_Activate_Down
	mov dword [esp], _cstring_activate
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE18IN_Activate_Up_VAR
	mov dword [esp+0x4], IN_Activate_Up
	mov dword [esp], _cstring_activate1
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE18IN_Reload_Down_VAR
	mov dword [esp+0x4], IN_Reload_Down
	mov dword [esp], _cstring_reload
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE16IN_Reload_Up_VAR
	mov dword [esp+0x4], IN_Reload_Up
	mov dword [esp], _cstring_reload1
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE21IN_UseReload_Down_VAR
	mov dword [esp+0x4], IN_UseReload_Down
	mov dword [esp], _cstring_usereload
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE19IN_UseReload_Up_VAR
	mov dword [esp+0x4], IN_UseReload_Up
	mov dword [esp], _cstring_usereload1
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE20IN_LeanLeft_Down_VAR
	mov dword [esp+0x4], IN_LeanLeft_Down
	mov dword [esp], _cstring_leanleft
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE18IN_LeanLeft_Up_VAR
	mov dword [esp+0x4], IN_LeanLeft_Up
	mov dword [esp], _cstring_leanleft1
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE21IN_LeanRight_Down_VAR
	mov dword [esp+0x4], IN_LeanRight_Down
	mov dword [esp], _cstring_leanright
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE19IN_LeanRight_Up_VAR
	mov dword [esp+0x4], IN_LeanRight_Up
	mov dword [esp], _cstring_leanright1
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE17IN_Prone_Down_VAR
	mov dword [esp+0x4], IN_Prone_Down
	mov dword [esp], _cstring_prone
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE15IN_Prone_Up_VAR
	mov dword [esp+0x4], IN_Prone_Up
	mov dword [esp], _cstring_prone1
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE18IN_Stance_Down_VAR
	mov dword [esp+0x4], IN_Stance_Down
	mov dword [esp], _cstring_stance
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE16IN_Stance_Up_VAR
	mov dword [esp+0x4], IN_Stance_Up
	mov dword [esp], _cstring_stance1
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE16IN_MLookDown_VAR
	mov dword [esp+0x4], IN_MLookDown
	mov dword [esp], _cstring_mlook
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE14IN_MLookUp_VAR
	mov dword [esp+0x4], IN_MLookUp
	mov dword [esp], _cstring_mlook1
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE16IN_ToggleADS_VAR
	mov dword [esp+0x4], IN_ToggleADS
	mov dword [esp], _cstring_toggleads
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE15IN_LeaveADS_VAR
	mov dword [esp+0x4], IN_LeaveADS
	mov dword [esp], _cstring_leaveads
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE17IN_Throw_Down_VAR
	mov dword [esp+0x4], IN_Throw_Down
	mov dword [esp], _cstring_throw
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE15IN_Throw_Up_VAR
	mov dword [esp+0x4], IN_Throw_Up
	mov dword [esp], _cstring_throw1
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE23IN_Speed_Throw_Down_VAR
	mov dword [esp+0x4], IN_Speed_Throw_Down
	mov dword [esp], _cstring_speed_throw
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE21IN_Speed_Throw_Up_VAR
	mov dword [esp+0x4], IN_Speed_Throw_Up
	mov dword [esp], _cstring_speed_throw1
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE27IN_ToggleADS_Throw_Down_VAR
	mov dword [esp+0x4], IN_ToggleADS_Throw_Down
	mov dword [esp], _cstring_toggleads_throw
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE25IN_ToggleADS_Throw_Up_VAR
	mov dword [esp+0x4], IN_ToggleADS_Throw_Up
	mov dword [esp], _cstring_toggleads_throw1
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE18IN_LowerStance_VAR
	mov dword [esp+0x4], IN_LowerStance
	mov dword [esp], _cstring_lowerstance
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE18IN_RaiseStance_VAR
	mov dword [esp+0x4], IN_RaiseStance
	mov dword [esp], _cstring_raisestance
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE19IN_ToggleCrouch_VAR
	mov dword [esp+0x4], IN_ToggleCrouch
	mov dword [esp], _cstring_togglecrouch
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE18IN_ToggleProne_VAR
	mov dword [esp+0x4], IN_ToggleProne
	mov dword [esp], _cstring_toggleprone
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE14IN_GoProne_VAR
	mov dword [esp+0x4], IN_GoProne
	mov dword [esp], _cstring_goprone
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE15IN_GoCrouch_VAR
	mov dword [esp+0x4], IN_GoCrouch
	mov dword [esp], _cstring_gocrouch
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE18IN_GoStandDown_VAR
	mov dword [esp+0x4], IN_GoStandDown
	mov dword [esp], _cstring_gostand
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE16IN_GoStandUp_VAR
	mov dword [esp+0x4], IN_GoStandUp
	mov dword [esp], _cstring_gostand1
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE15IN_TalkDown_VAR
	mov dword [esp+0x4], IN_TalkDown
	mov dword [esp], _cstring_talk
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE13IN_TalkUp_VAR
	mov dword [esp+0x4], IN_TalkUp
	mov dword [esp], _cstring_talk1
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE17IN_SprintDown_VAR
	mov dword [esp+0x4], IN_SprintDown
	mov dword [esp], _cstring_sprint
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ12CL_InitInputvE15IN_SprintUp_VAR
	mov dword [esp+0x4], IN_SprintUp
	mov dword [esp], _cstring_sprint1
	call Cmd_AddCommand
	mov dword [esp+0x14], _cstring_the_threshold_be
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x3f800000
	mov dword [esp+0x8], 0x38d1b717
	mov dword [esp+0x4], 0x3f4ccccd
	mov dword [esp], _cstring_cl_analog_attack
	call Cvar_RegisterFloat
	mov [cl_analog_attack_threshold], eax
	mov dword [esp+0x14], _cstring_the_time_to_hold
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x3e8
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x12c
	mov dword [esp], _cstring_cl_stanceholdtim
	call Cvar_RegisterInt
	mov [cl_stanceHoldTime], eax
	mov dword [esp+0xc], _cstring_the_server_does_
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cl_nodelta
	call Cvar_RegisterBool
	mov edx, cl_nodelta
	mov [edx], eax
	leave
	ret


;CL_SetStance(int, StanceState)
CL_SetStance:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	lea eax, [eax+eax*4]
	mov edx, eax
	shl edx, 0x4
	sub edx, eax
	lea eax, [edx*8]
	cmp byte [eax+playersKb+0x1f0], 0x0
	jnz CL_SetStance_10
	cmp byte [eax+playersKb+0xec], 0x0
	jz CL_SetStance_20
CL_SetStance_10:
	mov eax, 0x1
CL_SetStance_40:
	test eax, eax
	jnz CL_SetStance_30
	mov eax, clients
	mov edx, [ebp+0xc]
	mov [eax+0x25648], edx
CL_SetStance_30:
	pop ebp
	ret
CL_SetStance_20:
	xor eax, eax
	jmp CL_SetStance_40


;CL_MouseEvent(int, int, int, int)
CL_MouseEvent:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, clientUIActives
	test byte [eax+0x4], 0x10
	jz CL_MouseEvent_10
	mov dword [esp], 0x0
	call UI_GetActiveMenu
	cmp eax, 0xa
	jz CL_MouseEvent_10
	mov eax, [cl_bypassMouseInput]
	cmp byte [eax+0xc], 0x0
	jz CL_MouseEvent_20
CL_MouseEvent_10:
	mov dword [esp], 0x0
	call IN_ShowSystemCursor
	mov edx, clients
	mov eax, [edx+0x25640]
	mov ecx, [ebp+0x10]
	add [edx+eax*4+0x25630], ecx
	mov ecx, [ebp+0x14]
	add [edx+eax*4+0x25638], ecx
	mov eax, 0x1
	leave
	ret
CL_MouseEvent_20:
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov ecx, [ebp+0x8]
	mov [esp+0x4], ecx
	mov dword [esp], 0x0
	call UI_MouseEvent
	xor eax, eax
	leave
	ret


;IN_CenterView()
IN_CenterView:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x4
	jle IN_CenterView_10
	mov edx, clients
	mov eax, [edx+0x88]
	xor eax, 0x80000000
	mov [edx+0x256a8], eax
IN_CenterView_10:
	leave
	ret


;CL_WritePacket(int)
CL_WritePacket:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x89c
	mov dword [esp+0x4], 0x800
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _ZN10LargeLocalC1Ei
	lea edx, [ebp-0x20]
	mov [esp], edx
	call _ZN10LargeLocal6GetBufEv
	mov [ebp-0x87c], eax
	mov eax, clientUIActives
	mov edx, [eax+0xc]
	mov esi, clientConnections
	mov eax, [esi+0x4018c]
	test eax, eax
	jnz CL_WritePacket_10
	lea eax, [edx-0x1]
	cmp eax, 0x1
	jbe CL_WritePacket_10
	cmp edx, 0x6
	jz CL_WritePacket_10
	lea ecx, [ebp-0x4c]
	mov [esp+0x4], ecx
	mov ebx, clients
	lea eax, [ebx+0x24]
	mov [esp], eax
	call MSG_SetDefaultUserCmd
	cld
	mov ecx, 0xa
	xor eax, eax
	lea edi, [ebp-0x74]
	rep stosd
	mov dword [esp+0x8], 0x800
	lea eax, [ebp-0x874]
	mov [esp+0x4], eax
	lea eax, [ebp-0x74]
	mov [esp], eax
	call MSG_Init
	mov eax, [ebx+0x256b4]
	mov [esp+0x4], eax
	lea edx, [ebp-0x74]
	mov [esp], edx
	call MSG_WriteByte
	mov eax, [esi+0x20134]
	mov [esp+0x4], eax
	lea ecx, [ebp-0x74]
	mov [esp], ecx
	call MSG_WriteLong
	mov eax, [esi+0x20138]
	mov [esp+0x4], eax
	lea eax, [ebp-0x74]
	mov [esp], eax
	call MSG_WriteLong
	mov ebx, [esi+0x130]
	add ebx, 0x1
	cmp ebx, [esi+0x12c]
	jle CL_WritePacket_20
CL_WritePacket_140:
	mov ebx, clients
	mov esi, clientConnections
	mov eax, cl_packetdup
	mov edx, [eax]
	mov eax, [esi+0x401b8]
	sub eax, [edx+0xc]
	sub eax, 0x1
	and eax, 0x1f
	lea eax, [eax+eax*2]
	mov edx, [ebx+0x666c8]
	mov [ebp-0x880], edx
	mov ecx, [ebx+eax*4+0x696d0]
	sub edx, ecx
	mov [ebp-0x880], edx
	cmp edx, 0x20
	jg CL_WritePacket_30
	mov eax, [ebp-0x880]
	test eax, eax
	jle CL_WritePacket_40
CL_WritePacket_150:
	mov eax, cl_showSend
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz CL_WritePacket_50
CL_WritePacket_170:
	mov eax, [esi+0x40198]
	test eax, eax
	jnz CL_WritePacket_60
	mov eax, cl_nodelta
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz CL_WritePacket_70
	mov edi, [ebx+0x8]
	test edi, edi
	jz CL_WritePacket_70
	mov eax, [esi+0x20134]
	cmp eax, [ebx+0x14]
	jz CL_WritePacket_80
CL_WritePacket_70:
	mov dword [esp+0x8], 0x3
	mov dword [esp+0x4], 0x1
	lea eax, [ebp-0x74]
	mov [esp], eax
	call MSG_WriteBits
CL_WritePacket_160:
	mov ecx, [ebp-0x880]
	mov [esp+0x4], ecx
	lea eax, [ebp-0x74]
	mov [esp], eax
	call MSG_WriteByte
	mov edx, clientConnections
	mov ebx, [edx+0x20134]
	xor ebx, [edx+0x128]
	mov dword [esp+0x4], 0x20
	mov eax, [edx+0x20138]
	and eax, 0x7f
	shl eax, 0xa
	lea eax, [eax+edx+0x20140]
	mov [esp], eax
	call Com_HashKey
	mov esi, eax
	xor esi, ebx
	xor ebx, ebx
	lea edx, [ebp-0x4c]
CL_WritePacket_90:
	mov ecx, clients
	mov eax, [ecx+0x666c8]
	sub eax, [ebp-0x880]
	lea eax, [ebx+eax+0x1]
	and eax, 0x7f
	shl eax, 0x5
	lea edi, [eax+ecx+0x656c8]
	mov [esp+0xc], edi
	mov [esp+0x8], edx
	mov [esp+0x4], esi
	lea eax, [ebp-0x74]
	mov [esp], eax
	call MSG_WriteDeltaUsercmdKey
	add ebx, 0x1
	mov edx, edi
	cmp [ebp-0x880], ebx
	jnz CL_WritePacket_90
	mov edx, clients
	lea ebx, [edx+0x25674]
	mov eax, [edx+0x25674]
	mov [esp+0x4], eax
	lea ecx, [ebp-0x74]
	mov [esp], ecx
	call MSG_WriteLong
	mov edx, clients
	mov eax, [edx+0x25678]
	mov [esp+0x4], eax
	lea ecx, [ebp-0x74]
	mov [esp], ecx
	call MSG_WriteLong
	mov edx, clients
	mov eax, [edx+0x2567c]
	mov [esp+0x4], eax
	lea ecx, [ebp-0x74]
	mov [esp], ecx
	call MSG_WriteLong
	mov edx, clients
	mov eax, [edx+0x256a4]
	mov [esp+0x4], eax
	lea ecx, [ebp-0x74]
	mov [esp], ecx
	call MSG_WriteLong
	mov edx, clients
	mov eax, [edx+0x2569c]
	mov [esp+0x1c], eax
	mov eax, [edx+0x25698]
	mov [esp+0x18], eax
	mov eax, edx
	add eax, 0x2568c
	mov [esp+0x14], eax
	sub eax, 0xc
	mov [esp+0x10], eax
	mov [esp+0xc], ebx
	mov eax, [edx+0x256a4]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CL_SavePredictedOriginForServerTime
	mov [ebp-0x884], edi
CL_WritePacket_180:
	mov dword [esp+0x8], 0x3
	mov dword [esp+0x4], 0x3
	lea eax, [ebp-0x74]
	mov [esp], eax
	call MSG_WriteBits
	mov edx, [ebp-0x6c]
	mov eax, [edx]
	mov ecx, [ebp-0x87c]
	mov [ecx], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	movzx eax, byte [edx+0x8]
	mov [ecx+0x8], al
	cmp dword [ebp-0x60], 0x800
	jbe CL_WritePacket_100
	mov dword [esp+0x4], _cstring_overflow_compres
	mov dword [esp], 0x2
	call Com_Error
CL_WritePacket_100:
	mov eax, [ebp-0x60]
	sub eax, 0x9
	mov [esp+0xc], eax
	mov eax, [ebp-0x87c]
	add eax, 0x9
	mov [esp+0x8], eax
	mov eax, [ebp-0x6c]
	add eax, 0x9
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call MSG_WriteBitsCompress
	lea edi, [eax+0x9]
	mov esi, clientConnections
	mov eax, [esi+0x401b8]
	and eax, 0x1f
	mov edx, cls
	mov ebx, [edx+0x118]
	mov ecx, clients
	lea eax, [eax+eax*2]
	lea eax, [ecx+eax*4]
	mov [eax+0x696d8], ebx
	mov edx, [ebp-0x884]
	mov edx, [edx]
	mov [eax+0x696d4], edx
	mov edx, [ecx+0x666c8]
	mov [eax+0x696d0], edx
	mov [esi+0x8], ebx
	mov eax, cl_showSend
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz CL_WritePacket_110
	mov ecx, [esi+0x401c8]
	mov [ebp-0x2c], ecx
	mov edx, [esi+0x401cc]
	mov [ebp-0x28], edx
	mov eax, [esi+0x401d0]
	mov [ebp-0x24], eax
	mov [esp], ecx
	mov [esp+0x4], edx
	mov [esp+0x8], eax
	call NET_AdrToString
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_i_to_s
	mov dword [esp], 0xe
	call Com_Printf
CL_WritePacket_110:
	mov [esp+0x8], edi
	mov ecx, [ebp-0x87c]
	mov [esp+0x4], ecx
	lea ebx, [esi+0x401b8]
	mov [esp], ebx
	call CL_Netchan_Transmit
	mov edi, esi
	jmp CL_WritePacket_120
CL_WritePacket_130:
	mov [esp], ebx
	call CL_Netchan_TransmitNextFragment
CL_WritePacket_120:
	mov ecx, [edi+0x401e8]
	test ecx, ecx
	jnz CL_WritePacket_130
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _ZN10LargeLocalD1Ev
	add esp, 0x89c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_WritePacket_10:
	lea ecx, [ebp-0x20]
	mov [esp], ecx
	call _ZN10LargeLocalD1Ev
	add esp, 0x89c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_WritePacket_20:
	mov dword [esp+0x8], 0x3
	mov dword [esp+0x4], 0x2
	lea edx, [ebp-0x74]
	mov [esp], edx
	call MSG_WriteBits
	mov [esp+0x4], ebx
	lea ecx, [ebp-0x74]
	mov [esp], ecx
	call MSG_WriteLong
	mov eax, ebx
	and eax, 0x7f
	shl eax, 0xa
	lea eax, [eax+esi+0x134]
	mov [esp+0x4], eax
	lea eax, [ebp-0x74]
	mov [esp], eax
	call MSG_WriteString
	add ebx, 0x1
	cmp ebx, [esi+0x12c]
	jle CL_WritePacket_20
	jmp CL_WritePacket_140
CL_WritePacket_30:
	mov dword [esp+0x4], _cstring_max_packet_userc
	mov dword [esp], 0xe
	call Com_Printf
	mov dword [ebp-0x880], 0x20
	jmp CL_WritePacket_150
CL_WritePacket_60:
	mov dword [esp+0x8], 0x3
	mov dword [esp+0x4], 0x1
	lea ecx, [ebp-0x74]
	mov [esp], ecx
	call MSG_WriteBits
	jmp CL_WritePacket_160
CL_WritePacket_50:
	mov edx, [ebp-0x880]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_i
	mov dword [esp], 0xe
	call Com_Printf
	jmp CL_WritePacket_170
CL_WritePacket_40:
	lea eax, [ebp-0x4c]
	mov [ebp-0x884], eax
	jmp CL_WritePacket_180
CL_WritePacket_80:
	mov dword [esp+0x8], 0x3
	mov dword [esp+0x4], 0x0
	lea edx, [ebp-0x74]
	mov [esp], edx
	call MSG_WriteBits
	jmp CL_WritePacket_160
	mov ebx, eax
	lea edx, [ebp-0x20]
	mov [esp], edx
	call _ZN10LargeLocalD1Ev
	mov [esp], ebx
	call _Unwind_Resume
	nop


;CL_SetCursorPos(int, int)
CL_SetCursorPos:
	push ebp
	mov ebp, esp
	pop ebp
	jmp IN_SetCursorPos
	nop


;CL_ShutdownInput()
CL_ShutdownInput:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], _cstring_centerview
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_moveup
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_moveup1
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_movedown
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_movedown1
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_left
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_left1
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_right
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_right1
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_forward
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_forward1
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_back
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_back1
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_lookup
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_lookup1
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_lookdown
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_lookdown1
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_strafe
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_strafe1
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_moveleft
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_moveleft1
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_moveright
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_moveright1
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_speed
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_speed1
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_attack
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_attack1
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_melee
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_melee1
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_holdbreath
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_holdbreath1
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_melee_breath
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_melee_breath1
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_frag
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_frag1
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_smoke
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_smoke1
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_breath_sprint
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_breath_sprint1
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_activate
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_activate1
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_reload
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_reload1
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_usereload
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_usereload1
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_leanleft
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_leanleft1
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_leanright
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_leanright1
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_prone
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_prone1
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_stance
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_stance1
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_mlook
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_mlook1
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_toggleads
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_leaveads
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_throw
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_throw1
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_speed_throw
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_speed_throw1
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_toggleads_throw
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_toggleads_throw1
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_lowerstance
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_raisestance
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_togglecrouch
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_toggleprone
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_goprone
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_gocrouch
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_gostand
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_gostand1
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_sprint
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_sprint1
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_talk
	call Cmd_RemoveCommand
	mov dword [esp], _cstring_talk1
	call Cmd_RemoveCommand
	leave
	ret


;IN_IsTalkKeyHeld()
IN_IsTalkKeyHeld:
	push ebp
	mov ebp, esp
	movzx eax, byte [playersKb+0x254]
	pop ebp
	ret


;CL_ShowSystemCursor(int)
CL_ShowSystemCursor:
	push ebp
	mov ebp, esp
	pop ebp
	jmp IN_ShowSystemCursor
	nop


;CL_CreateCmdsDuringConnection(int)
CL_CreateCmdsDuringConnection:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov eax, clientUIActives
	mov eax, [eax+0xc]
	cmp eax, 0x4
	jle CL_CreateCmdsDuringConnection_10
	cmp eax, 0x9
	jz CL_CreateCmdsDuringConnection_10
	cmp eax, 0x7
	jg CL_CreateCmdsDuringConnection_20
CL_CreateCmdsDuringConnection_10:
	add esp, 0x24
	pop ebx
	pop ebp
	ret
CL_CreateCmdsDuringConnection_20:
	mov eax, clients
	mov ebx, [eax+0x666c8]
	add ebx, 0x1
	mov [eax+0x666c8], ebx
	and ebx, 0x7f
	shl ebx, 0x5
	lea ebx, [ebx+eax+0x656c0]
	lea eax, [ebp-0x28]
	mov edx, [ebp+0x8]
	call CL_CreateCmd
	mov eax, [ebp-0x28]
	mov [ebx+0x8], eax
	mov eax, [ebp-0x24]
	mov [ebx+0xc], eax
	mov eax, [ebp-0x20]
	mov [ebx+0x10], eax
	mov eax, [ebp-0x1c]
	mov [ebx+0x14], eax
	mov eax, [ebp-0x18]
	mov [ebx+0x18], eax
	mov eax, [ebp-0x14]
	mov [ebx+0x1c], eax
	mov eax, [ebp-0x10]
	mov [ebx+0x20], eax
	mov eax, [ebp-0xc]
	mov [ebx+0x24], eax
	add esp, 0x24
	pop ebx
	pop ebp
	ret


;CL_Input(int)
CL_Input:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, clientUIActives
	cmp dword [ebx+0xc], 0x9
	jz CL_Input_10
CL_Input_20:
	add esp, 0x24
	pop ebx
	pop ebp
	ret
CL_Input_10:
	call IN_Frame
	cmp dword [ebx+0xc], 0x7
	jle CL_Input_20
	mov eax, clients
	mov ebx, [eax+0x666c8]
	add ebx, 0x1
	mov [eax+0x666c8], ebx
	and ebx, 0x7f
	shl ebx, 0x5
	lea ebx, [ebx+eax+0x656c0]
	lea eax, [ebp-0x28]
	mov edx, [ebp+0x8]
	call CL_CreateCmd
	mov eax, [ebp-0x28]
	mov [ebx+0x8], eax
	mov eax, [ebp-0x24]
	mov [ebx+0xc], eax
	mov eax, [ebp-0x20]
	mov [ebx+0x10], eax
	mov eax, [ebp-0x1c]
	mov [ebx+0x14], eax
	mov eax, [ebp-0x18]
	mov [ebx+0x18], eax
	mov eax, [ebp-0x14]
	mov [ebx+0x1c], eax
	mov eax, [ebp-0x10]
	mov [ebx+0x20], eax
	mov eax, [ebp-0xc]
	mov [ebx+0x24], eax
	add esp, 0x24
	pop ebx
	pop ebp
	ret


;Initialized global or static variables of cl_input:
SECTION .data


;Initialized constant data of cl_input:
SECTION .rdata


;Zero initialized global or static variables of cl_input:
SECTION .bss
playersKb: resb 0x258
_ZZ12CL_InitInputvE15IN_SprintUp_VAR: resb 0x14
_ZZ12CL_InitInputvE17IN_SprintDown_VAR: resb 0x14
_ZZ12CL_InitInputvE13IN_TalkUp_VAR: resb 0x14
_ZZ12CL_InitInputvE15IN_TalkDown_VAR: resb 0x14
_ZZ12CL_InitInputvE16IN_GoStandUp_VAR: resb 0x14
_ZZ12CL_InitInputvE18IN_GoStandDown_VAR: resb 0x14
_ZZ12CL_InitInputvE15IN_GoCrouch_VAR: resb 0x14
_ZZ12CL_InitInputvE14IN_GoProne_VAR: resb 0x14
_ZZ12CL_InitInputvE18IN_ToggleProne_VAR: resb 0x14
_ZZ12CL_InitInputvE19IN_ToggleCrouch_VAR: resb 0x14
_ZZ12CL_InitInputvE18IN_RaiseStance_VAR: resb 0x14
_ZZ12CL_InitInputvE18IN_LowerStance_VAR: resb 0x14
_ZZ12CL_InitInputvE25IN_ToggleADS_Throw_Up_VAR: resb 0x14
_ZZ12CL_InitInputvE27IN_ToggleADS_Throw_Down_VAR: resb 0x14
_ZZ12CL_InitInputvE21IN_Speed_Throw_Up_VAR: resb 0x14
_ZZ12CL_InitInputvE23IN_Speed_Throw_Down_VAR: resb 0x14
_ZZ12CL_InitInputvE15IN_Throw_Up_VAR: resb 0x14
_ZZ12CL_InitInputvE17IN_Throw_Down_VAR: resb 0x14
_ZZ12CL_InitInputvE15IN_LeaveADS_VAR: resb 0x14
_ZZ12CL_InitInputvE16IN_ToggleADS_VAR: resb 0x14
_ZZ12CL_InitInputvE14IN_MLookUp_VAR: resb 0x14
_ZZ12CL_InitInputvE16IN_MLookDown_VAR: resb 0x14
_ZZ12CL_InitInputvE16IN_Stance_Up_VAR: resb 0x14
_ZZ12CL_InitInputvE18IN_Stance_Down_VAR: resb 0x14
_ZZ12CL_InitInputvE15IN_Prone_Up_VAR: resb 0x14
_ZZ12CL_InitInputvE17IN_Prone_Down_VAR: resb 0x14
_ZZ12CL_InitInputvE19IN_LeanRight_Up_VAR: resb 0x14
_ZZ12CL_InitInputvE21IN_LeanRight_Down_VAR: resb 0x14
_ZZ12CL_InitInputvE18IN_LeanLeft_Up_VAR: resb 0x14
_ZZ12CL_InitInputvE20IN_LeanLeft_Down_VAR: resb 0x14
_ZZ12CL_InitInputvE19IN_UseReload_Up_VAR: resb 0x14
_ZZ12CL_InitInputvE21IN_UseReload_Down_VAR: resb 0x14
_ZZ12CL_InitInputvE16IN_Reload_Up_VAR: resb 0x14
_ZZ12CL_InitInputvE18IN_Reload_Down_VAR: resb 0x14
_ZZ12CL_InitInputvE18IN_Activate_Up_VAR: resb 0x14
_ZZ12CL_InitInputvE20IN_Activate_Down_VAR: resb 0x14
_ZZ12CL_InitInputvE22IN_BreathSprint_Up_VAR: resb 0x14
_ZZ12CL_InitInputvE24IN_BreathSprint_Down_VAR: resb 0x14
_ZZ12CL_InitInputvE15IN_Smoke_Up_VAR: resb 0x14
_ZZ12CL_InitInputvE17IN_Smoke_Down_VAR: resb 0x14
_ZZ12CL_InitInputvE14IN_Frag_Up_VAR: resb 0x14
_ZZ12CL_InitInputvE16IN_Frag_Down_VAR: resb 0x14
_ZZ12CL_InitInputvE21IN_MeleeBreath_Up_VAR: resb 0x14
_ZZ12CL_InitInputvE23IN_MeleeBreath_Down_VAR: resb 0x14
_ZZ12CL_InitInputvE16IN_Breath_Up_VAR: resb 0x14
_ZZ12CL_InitInputvE18IN_Breath_Down_VAR: resb 0x14
_ZZ12CL_InitInputvE15IN_Melee_Up_VAR: resb 0x14
_ZZ12CL_InitInputvE17IN_Melee_Down_VAR: resb 0x14
_ZZ12CL_InitInputvE16IN_Attack_Up_VAR: resb 0x14
_ZZ12CL_InitInputvE18IN_Attack_Down_VAR: resb 0x14
_ZZ12CL_InitInputvE14IN_SpeedUp_VAR: resb 0x14
_ZZ12CL_InitInputvE16IN_SpeedDown_VAR: resb 0x14
_ZZ12CL_InitInputvE18IN_MoverightUp_VAR: resb 0x14
_ZZ12CL_InitInputvE20IN_MoverightDown_VAR: resb 0x14
_ZZ12CL_InitInputvE17IN_MoveleftUp_VAR: resb 0x14
_ZZ12CL_InitInputvE19IN_MoveleftDown_VAR: resb 0x14
_ZZ12CL_InitInputvE15IN_StrafeUp_VAR: resb 0x14
_ZZ12CL_InitInputvE17IN_StrafeDown_VAR: resb 0x14
_ZZ12CL_InitInputvE17IN_LookdownUp_VAR: resb 0x14
_ZZ12CL_InitInputvE19IN_LookdownDown_VAR: resb 0x14
_ZZ12CL_InitInputvE15IN_LookupUp_VAR: resb 0x14
_ZZ12CL_InitInputvE17IN_LookupDown_VAR: resb 0x14
_ZZ12CL_InitInputvE13IN_BackUp_VAR: resb 0x14
_ZZ12CL_InitInputvE15IN_BackDown_VAR: resb 0x14
_ZZ12CL_InitInputvE16IN_ForwardUp_VAR: resb 0x14
_ZZ12CL_InitInputvE18IN_ForwardDown_VAR: resb 0x14
_ZZ12CL_InitInputvE14IN_RightUp_VAR: resb 0x14
_ZZ12CL_InitInputvE16IN_RightDown_VAR: resb 0x14
_ZZ12CL_InitInputvE13IN_LeftUp_VAR: resb 0x14
_ZZ12CL_InitInputvE15IN_LeftDown_VAR: resb 0x14
_ZZ12CL_InitInputvE13IN_DownUp_VAR: resb 0x14
_ZZ12CL_InitInputvE15IN_DownDown_VAR: resb 0x14
_ZZ12CL_InitInputvE11IN_UpUp_VAR: resb 0x14
_ZZ12CL_InitInputvE13IN_UpDown_VAR: resb 0x14
_ZZ12CL_InitInputvE17IN_CenterView_VAR: resb 0x60
cl_bypassMouseInput: resb 0x4
cl_analog_attack_threshold: resb 0x5c
cl_anglespeedkey: resb 0x4
cl_pitchspeed: resb 0x4
cl_stanceHoldTime: resb 0x4
cl_talking: resb 0x4
cl_yawspeed: resb 0x10


;All cstrings:
SECTION .rdata
_cstring_null:		db 0
_cstring_three_keys_down_:		db "Three keys down for a button!",0ah,0
_cstring_f__f:		db "%f : %f",0ah,0
_cstring_centerview:		db "centerview",0
_cstring_moveup:		db "+moveup",0
_cstring_moveup1:		db "-moveup",0
_cstring_movedown:		db "+movedown",0
_cstring_movedown1:		db "-movedown",0
_cstring_left:		db "+left",0
_cstring_left1:		db "-left",0
_cstring_right:		db "+right",0
_cstring_right1:		db "-right",0
_cstring_forward:		db "+forward",0
_cstring_forward1:		db "-forward",0
_cstring_back:		db "+back",0
_cstring_back1:		db "-back",0
_cstring_lookup:		db "+lookup",0
_cstring_lookup1:		db "-lookup",0
_cstring_lookdown:		db "+lookdown",0
_cstring_lookdown1:		db "-lookdown",0
_cstring_strafe:		db "+strafe",0
_cstring_strafe1:		db "-strafe",0
_cstring_moveleft:		db "+moveleft",0
_cstring_moveleft1:		db "-moveleft",0
_cstring_moveright:		db "+moveright",0
_cstring_moveright1:		db "-moveright",0
_cstring_speed:		db "+speed",0
_cstring_speed1:		db "-speed",0
_cstring_attack:		db "+attack",0
_cstring_attack1:		db "-attack",0
_cstring_melee:		db "+melee",0
_cstring_melee1:		db "-melee",0
_cstring_holdbreath:		db "+holdbreath",0
_cstring_holdbreath1:		db "-holdbreath",0
_cstring_melee_breath:		db "+melee_breath",0
_cstring_melee_breath1:		db "-melee_breath",0
_cstring_frag:		db "+frag",0
_cstring_frag1:		db "-frag",0
_cstring_smoke:		db "+smoke",0
_cstring_smoke1:		db "-smoke",0
_cstring_breath_sprint:		db "+breath_sprint",0
_cstring_breath_sprint1:		db "-breath_sprint",0
_cstring_activate:		db "+activate",0
_cstring_activate1:		db "-activate",0
_cstring_reload:		db "+reload",0
_cstring_reload1:		db "-reload",0
_cstring_usereload:		db "+usereload",0
_cstring_usereload1:		db "-usereload",0
_cstring_leanleft:		db "+leanleft",0
_cstring_leanleft1:		db "-leanleft",0
_cstring_leanright:		db "+leanright",0
_cstring_leanright1:		db "-leanright",0
_cstring_prone:		db "+prone",0
_cstring_prone1:		db "-prone",0
_cstring_stance:		db "+stance",0
_cstring_stance1:		db "-stance",0
_cstring_mlook:		db "+mlook",0
_cstring_mlook1:		db "-mlook",0
_cstring_toggleads:		db "toggleads",0
_cstring_leaveads:		db "leaveads",0
_cstring_throw:		db "+throw",0
_cstring_throw1:		db "-throw",0
_cstring_speed_throw:		db "+speed_throw",0
_cstring_speed_throw1:		db "-speed_throw",0
_cstring_toggleads_throw:		db "+toggleads_throw",0
_cstring_toggleads_throw1:		db "-toggleads_throw",0
_cstring_lowerstance:		db "lowerstance",0
_cstring_raisestance:		db "raisestance",0
_cstring_togglecrouch:		db "togglecrouch",0
_cstring_toggleprone:		db "toggleprone",0
_cstring_goprone:		db "goprone",0
_cstring_gocrouch:		db "gocrouch",0
_cstring_gostand:		db "+gostand",0
_cstring_gostand1:		db "-gostand",0
_cstring_talk:		db "+talk",0
_cstring_talk1:		db "-talk",0
_cstring_sprint:		db "+sprint",0
_cstring_sprint1:		db "-sprint",0
_cstring_the_threshold_be:		db "The threshold before firing",0
_cstring_cl_analog_attack:		db "cl_analog_attack_threshold",0
_cstring_the_time_to_hold:		db "The time to hold the stance button before the player goes prone",0
_cstring_cl_stanceholdtim:		db "cl_stanceHoldTime",0
_cstring_the_server_does_:		db "The server does not send snapshot deltas",0
_cstring_cl_nodelta:		db "cl_nodelta",0
_cstring_overflow_compres:		db "Overflow compressed msg buf in CL_WritePacket()",0
_cstring_i_to_s:		db "%i to %s",0ah,0
_cstring_max_packet_userc:		db "MAX_PACKET_USERCMDS",0ah,0
_cstring_i:		db "(%i)",0



;All constant floats and doubles:
SECTION .rdata
_float_0_00100000:		dd 0x3a83126f	; 0.001
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_10000000:		dd 0x3dcccccd	; 0.1
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_182_04444885:		dd 0x43360b61	; 182.044
_float_127_00000000:		dd 0x42fe0000	; 127
_float_90_00000000:		dd 0x42b40000	; 90
_float_0_00000000:		dd 0x0	; 0
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_255_00000000:		dd 0x437f0000	; 255

