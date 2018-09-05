;Imports of g_items:
	extern BG_GetWeaponDef
	extern G_rand
	extern g_entities
	extern pickupPrints
	extern BG_WeaponIsClipOnly
	extern va
	extern SV_GameSendServerCommand
	extern level
	extern BG_CanItemBeGrabbed
	extern Q_strncpyz
	extern Q_CleanStr
	extern G_GetPlayerId
	extern G_LogPrintf
	extern BG_PlayerCanPickUpWeaponType
	extern BG_PlayerHasCompatibleWeapon
	extern G_AddPredictableEvent
	extern G_FreeEntity
	extern BG_PlayerWeaponsFull_Primaries
	extern BG_ClipForWeapon
	extern Scr_AddEntity
	extern scr_const
	extern Scr_Notify
	extern G_SelectWeaponIndex
	extern G_AddEvent
	extern Scr_AddUndefined
	extern G_GivePlayerWeapon
	extern G_SetOrigin
	extern G_SetAngle
	extern G_EntLinkTo
	extern SV_LinkEntity
	extern G_TraceCapsule
	extern bg_itemlist
	extern BG_AmmoForWeapon
	extern BG_GetAmmoPlayerMax
	extern BG_TakePlayerWeapon
	extern G_DObjGetWorldTagMatrix
	extern Com_PrintError
	extern XModelGetName
	extern G_SetModel
	extern G_DObjUpdate
	extern G_ModelIndex
	extern XModelBad
	extern G_OverrideModel
	extern G_GetHintStringIndex
	extern Com_Error
	extern Trace_GetEntityHitId
	extern vtos
	extern SL_ConvertToString
	extern Com_Printf
	extern AngleVectors
	extern AxisToAngles
	extern Com_sprintf
	extern G_SetConstString
	extern SV_SetConfigstring
	extern memset
	extern Q_strncat
	extern BG_GetNumWeapons
	extern BG_GetMaxPickupableAmmo
	extern G_Spawn
	extern g_maxDroppedWeapons
	extern Com_PrintWarning
	extern _ZN9EntHandle6setEntEP9gentity_s
	extern g_dropForwardSpeed
	extern g_dropUpSpeedBase
	extern crandom
	extern g_dropUpSpeedRand
	extern g_dropHorzSpeedRand
	extern G_RunThink
	extern BG_EvaluateTrajectory
	extern SV_PointContents
	extern CS_DisplayName

;Exports of g_items:
	global TransferRandomAmmoToWeaponEntity
	global WeaponPickup_LeechFromWeaponEnt
	global Touch_Item
	global Drop_Weapon
	global G_SpawnItem
	global Touch_Item_Auto
	global G_RegisterWeapon
	global IsItemRegistered
	global FinishSpawningItem
	global G_GetItemClassname
	global SaveRegisteredItems
	global ClearRegisteredItems
	global DroppedItemClearOwner
	global SaveRegisteredWeapons
	global Add_Ammo
	global Drop_Item
	global Fill_Clip
	global G_RunItem
	global itemRegistered


SECTION .text


;TransferRandomAmmoToWeaponEntity(gentity_s*, int)
TransferRandomAmmoToWeaponEntity:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, eax
	mov [ebp-0x20], edx
	mov dword [ebp-0x24], 0x0
	mov dword [ebp-0x1c], 0x0
TransferRandomAmmoToWeaponEntity_90:
	mov ecx, [ebp-0x20]
	test ecx, ecx
	jle TransferRandomAmmoToWeaponEntity_10
	mov eax, [ebp-0x20]
	mov [esp], eax
	call BG_GetWeaponDef
	mov [ebp-0x28], eax
	mov edx, [eax+0x344]
	test edx, edx
	js TransferRandomAmmoToWeaponEntity_20
	mov eax, [ebp-0x1c]
	test eax, eax
	jnz TransferRandomAmmoToWeaponEntity_30
	mov ecx, [ebp-0x28]
TransferRandomAmmoToWeaponEntity_100:
	mov ebx, [ecx+0x548]
	mov esi, [ecx+0x544]
	cmp ebx, esi
	jge TransferRandomAmmoToWeaponEntity_40
	mov eax, esi
	mov esi, ebx
	mov ebx, eax
TransferRandomAmmoToWeaponEntity_40:
	test ebx, ebx
	js TransferRandomAmmoToWeaponEntity_50
	call G_rand
	sub ebx, esi
	lea edx, [ebx+0x1]
	mov ecx, edx
	cdq
	idiv ecx
	lea ebx, [esi+edx]
	test ebx, ebx
	jle TransferRandomAmmoToWeaponEntity_50
	mov eax, [ebp-0x28]
	cmp dword [eax+0x338], 0x1
	jz TransferRandomAmmoToWeaponEntity_60
	call G_rand
	mov ecx, [ebp-0x28]
	mov edx, [ecx+0x338]
	add edx, 0x1
	mov ecx, edx
	cdq
	idiv ecx
	cmp edx, ebx
	jl TransferRandomAmmoToWeaponEntity_70
TransferRandomAmmoToWeaponEntity_110:
	mov edx, ebx
	xor eax, eax
	jmp TransferRandomAmmoToWeaponEntity_80
TransferRandomAmmoToWeaponEntity_50:
	xor eax, eax
	xor edx, edx
TransferRandomAmmoToWeaponEntity_80:
	mov ecx, [ebp-0x20]
	mov [edi+0x1bc], ecx
	mov [edi+0x1b4], eax
	mov [edi+0x1b8], edx
	mov [esp], ecx
	call BG_GetWeaponDef
	mov eax, [eax+0x540]
	mov [ebp-0x20], eax
	mov eax, [edi+0x1b4]
	add [ebp-0x24], eax
	mov ecx, [edi+0x1b8]
	add [ebp-0x24], ecx
TransferRandomAmmoToWeaponEntity_10:
	add dword [ebp-0x1c], 0x1
	add edi, 0xc
	cmp dword [ebp-0x1c], 0x2
	jnz TransferRandomAmmoToWeaponEntity_90
TransferRandomAmmoToWeaponEntity_30:
	mov eax, [ebp-0x24]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
TransferRandomAmmoToWeaponEntity_20:
	mov ecx, eax
	jmp TransferRandomAmmoToWeaponEntity_100
TransferRandomAmmoToWeaponEntity_60:
	mov edx, 0x1
	cmp edx, ebx
	jge TransferRandomAmmoToWeaponEntity_110
TransferRandomAmmoToWeaponEntity_70:
	mov eax, ebx
	sub eax, edx
	jmp TransferRandomAmmoToWeaponEntity_80
	nop


;WeaponPickup_LeechFromWeaponEnt(gentity_s*, gentity_s*, int, int*, unsigned char)
WeaponPickup_LeechFromWeaponEnt:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov [ebp-0x30], edx
	mov [ebp-0x34], ecx
	movzx edx, byte [ebp+0xc]
	mov [ebp-0x35], dl
	mov edx, [ebp-0x30]
	sub edx, g_entities
	sar edx, 0x2
	imul edx, edx, 0x2c0685b5
	mov [ebp-0x3c], edx
	mov [ebp-0x1c], eax
	mov byte [ebp-0x29], 0x0
	mov dword [ebp-0x28], 0x0
	mov edi, eax
	add edi, 0x1b0
	mov edx, eax
	mov eax, [edx+0x1bc]
	mov ebx, eax
	and ebx, 0x8000007f
	js WeaponPickup_LeechFromWeaponEnt_10
WeaponPickup_LeechFromWeaponEnt_100:
	test ebx, ebx
	jle WeaponPickup_LeechFromWeaponEnt_20
	lea edx, [eax+0x7f]
	cmp eax, 0xffffffff
	cmovle eax, edx
	mov esi, eax
	shr esi, 0x7
	mov [esp], ebx
	call BG_GetWeaponDef
	mov [ebp-0x24], eax
	lea eax, [edi+0x4]
	mov [ebp-0x20], eax
	mov eax, [edi+0x4]
	mov edx, [ebp-0x34]
	test edx, edx
	jz WeaponPickup_LeechFromWeaponEnt_30
	add eax, [edi+0x8]
WeaponPickup_LeechFromWeaponEnt_30:
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], eax
	mov edx, esi
	movzx eax, dl
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov eax, [ebp-0x30]
	mov [esp], eax
	call Add_Ammo
	mov esi, eax
	test eax, eax
	jz WeaponPickup_LeechFromWeaponEnt_20
	cmp byte [ebp-0x35], 0x0
	jz WeaponPickup_LeechFromWeaponEnt_40
WeaponPickup_LeechFromWeaponEnt_110:
	mov edx, [ebp-0x20]
	mov eax, [edx]
	sub eax, esi
	mov [edx], eax
	test eax, eax
	js WeaponPickup_LeechFromWeaponEnt_50
WeaponPickup_LeechFromWeaponEnt_130:
	mov byte [ebp-0x29], 0x1
WeaponPickup_LeechFromWeaponEnt_20:
	add dword [ebp-0x28], 0x1
	add edi, 0xc
	add dword [ebp-0x1c], 0xc
	cmp dword [ebp-0x28], 0x2
	jnz WeaponPickup_LeechFromWeaponEnt_60
	cmp byte [ebp-0x35], 0x0
	jnz WeaponPickup_LeechFromWeaponEnt_70
	cmp byte [ebp-0x29], 0x0
	jnz WeaponPickup_LeechFromWeaponEnt_80
WeaponPickup_LeechFromWeaponEnt_70:
	mov eax, [ebp-0x34]
	test eax, eax
	jz WeaponPickup_LeechFromWeaponEnt_90
	cmp byte [ebp-0x29], 0x0
	jz WeaponPickup_LeechFromWeaponEnt_90
	mov eax, 0x1
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
WeaponPickup_LeechFromWeaponEnt_90:
	xor eax, eax
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
WeaponPickup_LeechFromWeaponEnt_60:
	mov edx, [ebp-0x1c]
	mov eax, [edx+0x1bc]
	mov ebx, eax
	and ebx, 0x8000007f
	jns WeaponPickup_LeechFromWeaponEnt_100
WeaponPickup_LeechFromWeaponEnt_10:
	sub ebx, 0x1
	or ebx, 0xffffff80
	add ebx, 0x1
	jmp WeaponPickup_LeechFromWeaponEnt_100
WeaponPickup_LeechFromWeaponEnt_40:
	mov eax, pickupPrints
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz WeaponPickup_LeechFromWeaponEnt_110
	mov [esp], ebx
	call BG_WeaponIsClipOnly
	test eax, eax
	jz WeaponPickup_LeechFromWeaponEnt_120
	mov edx, [ebp-0x24]
	mov eax, [edx+0x4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x66
	mov dword [esp], _cstring_c_game_pickup_cl
WeaponPickup_LeechFromWeaponEnt_140:
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x3c]
	mov [esp], eax
	call SV_GameSendServerCommand
	jmp WeaponPickup_LeechFromWeaponEnt_110
WeaponPickup_LeechFromWeaponEnt_80:
	mov eax, [ebp+0x8]
	mov dword [eax], 0x9
	jmp WeaponPickup_LeechFromWeaponEnt_70
WeaponPickup_LeechFromWeaponEnt_50:
	add [edx+0x4], eax
	mov dword [edx], 0x0
	mov ecx, [edx+0x4]
	test ecx, ecx
	jns WeaponPickup_LeechFromWeaponEnt_130
	mov dword [edx+0x4], 0x0
	mov byte [ebp-0x29], 0x1
	jmp WeaponPickup_LeechFromWeaponEnt_20
WeaponPickup_LeechFromWeaponEnt_120:
	mov edx, [ebp-0x24]
	mov eax, [edx+0x4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x66
	mov dword [esp], _cstring_c_game_pickup_am
	jmp WeaponPickup_LeechFromWeaponEnt_140


;Touch_Item(gentity_s*, gentity_s*, int)
Touch_Item:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x10c
	mov eax, [ebp+0x8]
	cmp byte [eax+0x16c], 0x0
	jz Touch_Item_10
	mov dword [ebp-0x1c], 0x0
	mov byte [eax+0x16c], 0x0
	mov ecx, [ebp+0xc]
	mov edx, [ecx+0x15c]
	test edx, edx
	jz Touch_Item_10
	mov ebx, [ecx+0x1a0]
	test ebx, ebx
	jle Touch_Item_10
	mov eax, level
	mov ecx, [eax+0x20]
	test ecx, ecx
	jz Touch_Item_20
Touch_Item_10:
	add esp, 0x10c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Touch_Item_20:
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x88]
	and ecx, 0x8000007f
	mov [ebp-0xd8], ecx
	js Touch_Item_30
Touch_Item_150:
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call BG_CanItemBeGrabbed
	test eax, eax
	jnz Touch_Item_40
	mov edx, [ebp+0x10]
	test edx, edx
	jnz Touch_Item_10
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x8c]
	mov edx, [ebp+0xc]
	cmp eax, [edx]
	jz Touch_Item_10
	mov ebx, [ebp-0xd8]
	sar ebx, 0x5
	mov edx, [edx+0x15c]
	mov ecx, [ebp-0xd8]
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [edx+ebx*4+0x55c], eax
	jnz Touch_Item_50
	mov dword [esp+0x4], 0x66
	mov dword [esp], _cstring_c_game_cant_get_
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov ecx, g_entities
	sub [ebp+0xc], ecx
	sar dword [ebp+0xc], 0x2
	imul eax, [ebp+0xc], 0x2c0685b5
	mov [esp], eax
	call SV_GameSendServerCommand
	jmp Touch_Item_10
Touch_Item_40:
	mov dword [esp+0x8], 0x40
	mov edx, [ebp+0xc]
	mov eax, [edx+15Ch]
	add eax, 0x300c
	mov dword [esp+4], 1
	mov [esp], eax
	call CS_DisplayName
	mov [esp+0x4], eax
	lea ebx, [ebp-0x94]
	mov [esp], ebx
	call Q_strncpyz
	mov [esp], ebx
	call Q_CleanStr
	mov ecx, [ebp-0xd8]
	mov [esp], ecx
	call BG_GetWeaponDef
	mov edi, [eax]
	mov eax, [ebp+0xc]
	mov esi, [eax]
	mov [esp], eax
	call G_GetPlayerId
	mov [esp+0x10], edi
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov [esp+0x4], eax
	mov dword [esp], _cstring_weaponsdss
	call G_LogPrintf
	mov edx, [ebp+0x8]
	mov ecx, [edx+0x88]
	and ecx, 0x8000007f
	mov [ebp-0xdc], ecx
	js Touch_Item_60
	mov eax, ecx
Touch_Item_310:
	mov [esp], eax
	call BG_GetWeaponDef
	mov ecx, [ebp+0xc]
	mov edx, [ecx+0x15c]
	mov [esp+0x4], edx
	mov [esp], eax
	call BG_PlayerCanPickUpWeaponType
	test al, al
	jz Touch_Item_70
	mov eax, [ebp+0x10]
	test eax, eax
	jz Touch_Item_80
	mov eax, [ebp-0xdc]
	mov [esp], eax
	call BG_GetWeaponDef
	mov edx, [ebp+0xc]
	mov esi, [edx+0x15c]
	mov edx, [ebp-0xdc]
	sar edx, 0x5
	mov ecx, [ebp-0xdc]
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	xor ebx, ebx
	test [esi+edx*4+0x55c], eax
	setnz bl
	test ebx, ebx
	jnz Touch_Item_90
	mov ecx, [ebp-0xdc]
	mov [esp+0x4], ecx
	mov [esp], esi
	call BG_PlayerHasCompatibleWeapon
	test al, al
	jz Touch_Item_70
Touch_Item_90:
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x1c]
	mov [esp], eax
	mov ecx, ebx
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	call WeaponPickup_LeechFromWeaponEnt
	mov ebx, eax
	mov eax, [ebp-0x1c]
	test eax, eax
	jnz Touch_Item_100
Touch_Item_340:
	test bl, bl
	jnz Touch_Item_110
Touch_Item_70:
	xor ebx, ebx
Touch_Item_160:
	mov edx, [ebp-0x1c]
	test edx, edx
	jz Touch_Item_120
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0x15c]
	mov esi, [eax+0x2fd4]
	test esi, esi
	jz Touch_Item_130
	mov eax, [ebp-0xd8]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ecx
	call G_AddPredictableEvent
Touch_Item_120:
	test ebx, ebx
	jz Touch_Item_10
	mov edx, [ebp+0x8]
	cmp dword [edx+0x4], 0x4
	jz Touch_Item_140
	mov ecx, edx
Touch_Item_320:
	mov [esp], ecx
	call G_FreeEntity
	jmp Touch_Item_10
Touch_Item_30:
	sub ecx, 0x1
	or ecx, 0xffffff80
	add ecx, 0x1
	mov [ebp-0xd8], ecx
	jmp Touch_Item_150
Touch_Item_50:
	mov eax, [ebp-0xd8]
	mov [esp], eax
	call BG_GetWeaponDef
	mov eax, [eax+0x4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x66
	mov dword [esp], _cstring_c_game_pickup_ca
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov edx, g_entities
	sub [ebp+0xc], edx
	sar dword [ebp+0xc], 0x2
	imul eax, [ebp+0xc], 0x2c0685b5
	mov [esp], eax
	call SV_GameSendServerCommand
	jmp Touch_Item_10
Touch_Item_110:
	mov ebx, 0x1
	jmp Touch_Item_160
Touch_Item_80:
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x88]
	lea edx, [eax+0x7f]
	cmp eax, 0xffffffff
	cmovle eax, edx
	mov ebx, eax
	shr ebx, 0x7
	mov eax, [ebp-0xdc]
	mov [esp], eax
	call BG_GetWeaponDef
	mov [ebp-0xa0], eax
	mov edx, [ebp+0x8]
	cmp dword [edx+0x4], 0x4
	jz Touch_Item_170
	or dword [edx+0x180], 0x1000000
	mov [ebp-0xcd], bl
	mov ecx, [ebp+0xc]
	mov edi, [ecx+0x15c]
	mov eax, [ebp-0xdc]
	mov [esp], eax
	call BG_GetWeaponDef
	mov eax, [eax+0x13c]
	test eax, eax
	jnz Touch_Item_180
	mov ecx, [edi+0xe8]
	test ecx, ecx
	jz Touch_Item_190
	mov edx, ecx
	sar edx, 0x5
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [edi+edx*4+0x55c], eax
	jz Touch_Item_200
Touch_Item_190:
	mov [esp], edi
	call BG_PlayerWeaponsFull_Primaries
	test al, al
	jz Touch_Item_210
	mov eax, [edi+0xe8]
	test eax, eax
	jz Touch_Item_220
	mov esi, eax
	mov ebx, eax
	mov [esp], eax
	call BG_GetWeaponDef
	mov [ebp-0xec], eax
	cmp dword [eax+0x13c], 0x3
	jz Touch_Item_230
Touch_Item_390:
	mov edx, ebx
	sar edx, 0x5
	and ebx, 0x1f
	mov eax, 0x1
	mov ecx, ebx
	shl eax, cl
	test [edi+edx*4+0x55c], eax
	jz Touch_Item_220
	mov eax, [ebp-0xec]
	mov eax, [eax+0x13c]
	test eax, eax
	jnz Touch_Item_220
	test esi, esi
	jnz Touch_Item_240
Touch_Item_220:
	mov dword [esp+0x4], 0x66
	mov dword [esp], _cstring_c_game_cant_get_
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0xc]
	sub eax, g_entities
	sar eax, 0x2
	imul eax, eax, 0x2c0685b5
	mov [esp], eax
	call SV_GameSendServerCommand
Touch_Item_200:
	xor eax, eax
	mov dword [ebp-0xd4], 0x0
Touch_Item_350:
	mov edx, [ebp+0x8]
	and dword [edx+0x180], 0xfeffffff
	test eax, eax
	jz Touch_Item_70
	mov dword [ebp-0x1c], 0x9
	mov [ebp-0x9c], edx
	mov dword [ebp-0xa4], 0x0
	mov ecx, edx
Touch_Item_330:
	mov eax, [ecx+0x1bc]
	mov edi, eax
	and edi, 0x8000007f
	js Touch_Item_250
Touch_Item_370:
	lea edx, [eax+0x7f]
	cmp eax, 0xffffffff
	cmovle eax, edx
	shr eax, 0x7
	mov [ebp-0xb8], al
	test edi, edi
	jle Touch_Item_260
	mov [esp], edi
	call BG_GetWeaponDef
	mov eax, [ebp-0x9c]
	mov esi, [eax+0x1b8]
	test esi, esi
	js Touch_Item_270
	mov edx, [ebp+0xc]
	mov ebx, [edx+0x15c]
	mov [esp], edi
	call BG_ClipForWeapon
	mov [ebx+eax*4+0x35c], esi
	mov ecx, [ebp-0x9c]
Touch_Item_360:
	xor eax, eax
	cmp esi, 0xffffffff
	setz al
	mov [esp+0x10], eax
	mov eax, [ecx+0x1b4]
	mov [esp+0xc], eax
	movzx eax, byte [ebp-0xb8]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov eax, [ebp+0xc]
	mov [esp], eax
	call Add_Ammo
Touch_Item_260:
	add dword [ebp-0xa4], 0x1
	add dword [ebp-0x9c], 0xc
	cmp dword [ebp-0xa4], 0x2
	jnz Touch_Item_280
	mov eax, [ebp-0xd4]
	test eax, eax
	jz Touch_Item_290
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x0
	xor ecx, ecx
	mov edx, [ebp+0xc]
	mov eax, [ebp-0xd4]
	call WeaponPickup_LeechFromWeaponEnt
	mov edx, [ebp-0xd4]
	mov [esp], edx
	call Scr_AddEntity
Touch_Item_380:
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call Scr_AddEntity
	mov dword [esp+0x8], 0x2
	mov eax, scr_const
	movzx eax, word [eax+0xbc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Scr_Notify
	mov edx, [ebp-0xa0]
	cmp dword [edx+0x12c], 0x1
	jnz Touch_Item_300
	mov edi, [edx+0x144]
	test edi, edi
	jnz Touch_Item_110
Touch_Item_300:
	mov ecx, [ebp-0xdc]
	mov [esp+0x4], ecx
	mov eax, [ebp+0xc]
	sub eax, g_entities
	sar eax, 0x2
	imul eax, eax, 0x2c0685b5
	mov [esp], eax
	call G_SelectWeaponIndex
	mov ebx, 0x1
	jmp Touch_Item_160
Touch_Item_130:
	mov eax, ecx
	mov ecx, [ebp-0xd8]
	mov [esp+0x8], ecx
	mov [esp+0x4], edx
	mov [esp], eax
	call G_AddEvent
	jmp Touch_Item_120
Touch_Item_60:
	sub ecx, 0x1
	or ecx, 0xffffff80
	add ecx, 0x1
	mov [ebp-0xdc], ecx
	mov eax, ecx
	jmp Touch_Item_310
Touch_Item_140:
	mov dword [esp+0x8], 0x0
	mov eax, scr_const
	movzx eax, word [eax+0x20]
	mov [esp+0x4], eax
	mov [esp], edx
	call Scr_Notify
	mov ecx, [ebp+0x8]
	jmp Touch_Item_320
Touch_Item_280:
	mov ecx, [ebp-0x9c]
	jmp Touch_Item_330
Touch_Item_170:
	mov dword [ebp-0x1c], 0xa
	call Scr_AddUndefined
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call Scr_AddEntity
	mov dword [esp+0x8], 0x2
	mov eax, scr_const
	movzx eax, word [eax+0xbc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Scr_Notify
	mov ebx, 0x1
	jmp Touch_Item_160
Touch_Item_100:
	call Scr_AddUndefined
	mov eax, [ebp+0xc]
	mov [esp], eax
	call Scr_AddEntity
	mov dword [esp+0x8], 0x2
	mov eax, scr_const
	movzx eax, word [eax+0xbc]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call Scr_Notify
	jmp Touch_Item_340
Touch_Item_180:
	movzx eax, byte [ebp-0xcd]
	mov [esp+0x8], eax
	mov edx, [ebp-0xdc]
	mov [esp+0x4], edx
	mov [esp], edi
	call G_GivePlayerWeapon
	mov eax, 0x1
	mov dword [ebp-0xd4], 0x0
	jmp Touch_Item_350
Touch_Item_270:
	mov ecx, eax
	jmp Touch_Item_360
Touch_Item_250:
	sub edi, 0x1
	or edi, 0xffffff80
	add edi, 0x1
	jmp Touch_Item_370
Touch_Item_290:
	call Scr_AddUndefined
	jmp Touch_Item_380
Touch_Item_210:
	movzx eax, byte [ebp-0xcd]
	mov [esp+0x8], eax
	mov ecx, [ebp-0xdc]
	mov [esp+0x4], ecx
	mov [esp], edi
	call G_GivePlayerWeapon
	mov eax, 0x1
	mov dword [ebp-0xd4], 0x0
	jmp Touch_Item_350
Touch_Item_230:
	mov esi, [eax+0x540]
	mov ebx, esi
	mov [esp], esi
	call BG_GetWeaponDef
	mov [ebp-0xec], eax
	jmp Touch_Item_390
Touch_Item_240:
	mov dword [esp+0xc], 0x0
	movzx eax, byte [esi+edi+0x81c]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov edx, [ebp+0xc]
	mov [esp], edx
	call Drop_Weapon
	mov [ebp-0xd4], eax
	test eax, eax
	jz Touch_Item_400
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x17c]
	and eax, 0xfffffffe
	mov edx, [ebp-0xd4]
	mov [edx+0x17c], eax
	mov eax, [ecx+0x7c]
	mov [edx+0x7c], eax
	test byte [edx+0x181], 0x10
	jz Touch_Item_410
	mov eax, [ecx+0x218]
	test eax, eax
	jz Touch_Item_410
	mov eax, [eax]
	test eax, eax
	jz Touch_Item_410
	mov eax, ecx
	add eax, 0x13c
	mov [esp+0x4], eax
	mov [esp], edx
	call G_SetOrigin
	mov eax, [ebp+0x8]
	add eax, 0x148
	mov [esp+0x4], eax
	mov ecx, [ebp-0xd4]
	mov [esp], ecx
	call G_SetAngle
	mov eax, [ebp+0x8]
	mov edx, [eax+0x218]
	movzx eax, word [edx+0x8]
	mov [esp+0x8], eax
	mov eax, [edx]
	mov [esp+0x4], eax
	mov edx, [ebp-0xd4]
	mov [esp], edx
	call G_EntLinkTo
Touch_Item_450:
	mov edx, [ebp-0xd4]
	mov [esp], edx
	call SV_LinkEntity
Touch_Item_400:
	movzx eax, byte [ebp-0xcd]
	mov [esp+0x8], eax
	mov ecx, [ebp-0xdc]
	mov [esp+0x4], ecx
	mov [esp], edi
	call G_GivePlayerWeapon
	mov eax, 0x1
	jmp Touch_Item_350
Touch_Item_410:
	mov esi, [ebp+0x8]
	add esi, 0x13c
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x13c]
	mov [ebp-0x28], eax
	add ecx, 0x140
	mov [ebp-0xc0], ecx
	mov edx, [ebp+0x8]
	mov eax, [edx+0x140]
	mov [ebp-0x24], eax
	add edx, 0x144
	mov [ebp-0xbc], edx
	movss xmm0, dword [_float_2_00000000]
	mov ecx, [ebp+0x8]
	addss xmm0, [ecx+0x144]
	movss [ebp-0x20], xmm0
	mov ebx, [ecx+0x190]
	test ebx, ebx
	mov eax, 0x491
	cmovz ebx, eax
	mov eax, [ebp-0xd4]
	add eax, 0x154
	mov [ebp-0xcc], eax
	mov edx, [ebp-0xd4]
	cmp word [edx+0x154], 0x0
	jnz Touch_Item_420
	mov eax, 0x3ff
Touch_Item_460:
	mov edx, [ebp-0xd4]
	add edx, 0x114
	mov [ebp-0xc8], edx
	mov ecx, [ebp-0xd4]
	add ecx, 0x108
	mov [ebp-0xc4], ecx
	mov [esp+0x18], ebx
	mov [esp+0x14], eax
	lea eax, [ebp-0x28]
	mov [esp+0x10], eax
	mov [esp+0xc], edx
	mov [esp+0x8], ecx
	mov [esp+0x4], esi
	lea edx, [ebp-0x54]
	mov [esp], edx
	call G_TraceCapsule
	cmp byte [ebp-0x2c], 0x0
	jnz Touch_Item_430
	movss xmm2, dword [ebp-0x54]
	movss xmm1, dword [esi]
	movss xmm0, dword [ebp-0x28]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x28], xmm1
	mov ecx, [ebp-0xc0]
	movss xmm1, dword [ecx]
	movss xmm0, dword [ebp-0x24]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x24], xmm1
	mov eax, [ebp-0xbc]
	movss xmm1, dword [eax]
	movss xmm0, dword [ebp-0x20]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm1, xmm2
	movss [ebp-0x20], xmm1
	mov edx, [ebp-0xcc]
	cmp word [edx], 0x0
	jnz Touch_Item_440
	mov eax, 0x3ff
Touch_Item_470:
	mov [esp+0x18], ebx
	mov [esp+0x14], eax
	mov [esp+0x10], esi
	mov eax, [ebp-0xc8]
	mov [esp+0xc], eax
	mov edx, [ebp-0xc4]
	mov [esp+0x8], edx
	lea ecx, [ebp-0x28]
	mov [esp+0x4], ecx
	lea eax, [ebp-0x54]
	mov [esp], eax
	call G_TraceCapsule
	movss xmm2, dword [ebp-0x54]
	movss xmm1, dword [ebp-0x28]
	movss xmm0, dword [esi]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x28], xmm1
	movss xmm1, dword [ebp-0x24]
	mov edx, [ebp-0xc0]
	movss xmm0, dword [edx]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x24], xmm1
	movss xmm1, dword [ebp-0x20]
	mov ecx, [ebp-0xbc]
	movss xmm0, dword [ecx]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm1, xmm2
	movss [ebp-0x20], xmm1
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov edx, [ebp-0xd4]
	mov [esp], edx
	call G_SetOrigin
Touch_Item_480:
	mov eax, [ebp+0x8]
	add eax, 0x148
	mov [esp+0x4], eax
	mov eax, [ebp-0xd4]
	mov [esp], eax
	call G_SetAngle
	jmp Touch_Item_450
Touch_Item_420:
	mov ecx, [ebp-0xd4]
	movzx eax, word [ecx+0x154]
	sub eax, 0x1
	jmp Touch_Item_460
Touch_Item_440:
	mov ecx, [ebp-0xcc]
	movzx eax, word [ecx]
	sub eax, 0x1
	jmp Touch_Item_470
Touch_Item_430:
	mov [esp+0x4], esi
	mov ecx, [ebp-0xd4]
	mov [esp], ecx
	call G_SetOrigin
	jmp Touch_Item_480


;Drop_Weapon(gentity_s*, int, unsigned char, unsigned int)
Drop_Weapon:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	mov edi, [ebp+0xc]
	movzx ebx, byte [ebp+0x10]
	mov [ebp-0x8c], edi
	mov [esp], edi
	call BG_GetWeaponDef
	cmp dword [eax+0x13c], 0x3
	jz Drop_Weapon_10
Drop_Weapon_140:
	movzx eax, bl
	shl eax, 0x7
	lea eax, [edi+eax]
	mov edx, bg_itemlist
	lea esi, [edx+eax*4]
	mov eax, [ebp+0x8]
	mov ebx, [eax+0x15c]
	test ebx, ebx
	jz Drop_Weapon_20
	mov edx, [ebp-0x8c]
	sar edx, 0x5
	mov ecx, [ebp-0x8c]
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [ebx+edx*4+0x55c], eax
	jz Drop_Weapon_30
	mov [esp], edi
	call BG_ClipForWeapon
	mov ebx, [ebp+0x8]
	mov ecx, [ebx+0x15c]
	mov eax, [ecx+eax*4+0x35c]
	test eax, eax
	jle Drop_Weapon_40
Drop_Weapon_20:
	mov eax, [ebp-0x8c]
	mov [esp], eax
	call BG_GetWeaponDef
	mov eax, [eax+0x500]
	test eax, eax
	jnz Drop_Weapon_50
Drop_Weapon_100:
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Drop_Item
	mov [ebp-0x98], eax
	mov edx, [ebp+0x8]
	mov ebx, [edx+0x15c]
	test ebx, ebx
	jz Drop_Weapon_60
	mov esi, eax
	mov dword [ebp-0x94], 0x0
Drop_Weapon_80:
	test edi, edi
	jle Drop_Weapon_70
	mov [esp], edi
	call BG_ClipForWeapon
	mov [ebp-0x90], eax
	mov [esp], edi
	call BG_AmmoForWeapon
	mov ebx, eax
	mov [esp], edi
	call BG_ClipForWeapon
	mov [esp+0x8], edi
	mov [esp+0x4], edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x15c]
	mov [esp], eax
	call BG_GetAmmoPlayerMax
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x15c]
	mov edx, [edx+ebx*4+0x15c]
	sub edx, eax
	mov eax, 0x0
	cmovs edx, eax
	mov [esi+0x1bc], edi
	mov [esi+0x1b4], edx
	mov eax, [ecx+0x15c]
	mov ebx, [ebp-0x90]
	mov eax, [eax+ebx*4+0x35c]
	mov [esi+0x1b8], eax
	mov [esp], edi
	call BG_GetWeaponDef
	mov edi, [eax+0x540]
Drop_Weapon_70:
	add dword [ebp-0x94], 0x1
	add esi, 0xc
	cmp dword [ebp-0x94], 0x2
	jnz Drop_Weapon_80
	mov dword [esp+0x8], 0x1
	mov eax, [ebp-0x8c]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov eax, [edx+0x15c]
	mov [esp], eax
	call BG_TakePlayerWeapon
Drop_Weapon_160:
	mov ecx, [ebp+0x14]
	test ecx, ecx
	jnz Drop_Weapon_90
Drop_Weapon_110:
	mov eax, [ebp-0x98]
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Drop_Weapon_50:
	mov edx, [ebp+0x8]
	mov ebx, [edx+0x15c]
	mov [esp], edi
	call BG_ClipForWeapon
	mov eax, [ebx+eax*4+0x35c]
	test eax, eax
	jnz Drop_Weapon_100
	mov dword [esp+0x8], 0x1
	mov ecx, [ebp-0x8c]
	mov [esp+0x4], ecx
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x15c]
	mov [esp], eax
	call BG_TakePlayerWeapon
	mov dword [ebp-0x98], 0x0
	jmp Drop_Weapon_110
Drop_Weapon_90:
	lea eax, [ebp-0x80]
	mov [esp+0x8], eax
	mov ecx, [ebp+0x14]
	mov [esp+0x4], ecx
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call G_DObjGetWorldTagMatrix
	test eax, eax
	jz Drop_Weapon_120
	mov eax, ebx
	add eax, 0x108
	mov edx, ebx
	add edx, 0x114
	movss xmm2, dword [ebx+0x108]
	addss xmm2, [ebx+0x114]
	movss xmm3, dword [_float_0_50000000]
	mulss xmm2, xmm3
	movss xmm1, dword [eax+0x4]
	addss xmm1, [edx+0x4]
	mulss xmm1, xmm3
	movss xmm0, dword [eax+0x8]
	addss xmm0, [edx+0x8]
	mulss xmm0, xmm3
	add eax, 0x34
	addss xmm2, [ebx+0x13c]
	movss [ebp-0x24], xmm2
	addss xmm1, [eax+0x4]
	movss [ebp-0x20], xmm1
	addss xmm0, [eax+0x8]
	movss [ebp-0x1c], xmm0
	mov edx, [ebp-0x98]
	mov eax, [edx+0x190]
	test eax, eax
	mov edx, 0x491
	cmovz eax, edx
	mov [esp+0x18], eax
	mov eax, [ebx]
	mov [esp+0x14], eax
	lea eax, [ebp-0x5c]
	mov [esp+0x10], eax
	mov eax, [ebp-0x98]
	add eax, 0x114
	mov [esp+0xc], eax
	mov eax, [ebp-0x98]
	add eax, 0x108
	mov [esp+0x8], eax
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	lea eax, [ebp-0x50]
	mov [esp], eax
	call G_TraceCapsule
	mov ecx, [ebp-0x98]
	add ecx, 0x18
	movss xmm2, dword [ebp-0x50]
	movss xmm1, dword [ebp-0x24]
	movss xmm0, dword [ebp-0x5c]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	mov ebx, [ebp-0x98]
	movss [ebx+0x18], xmm1
	movss xmm1, dword [ebp-0x20]
	movss xmm0, dword [ebp-0x58]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ecx+0x4], xmm1
	movss xmm1, dword [ebp-0x1c]
	movss xmm0, dword [ebp-0x54]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm1, xmm2
	movss [ecx+0x8], xmm1
	mov edx, ebx
	add edx, 0x13c
	mov eax, [ebx+0x18]
	mov [ebx+0x13c], eax
	mov eax, [ecx+0x4]
	mov [edx+0x4], eax
	mov eax, [ecx+0x8]
	mov [edx+0x8], eax
	mov eax, level
	mov eax, [eax+0x1ec]
	mov [ebx+0x10], eax
Drop_Weapon_120:
	mov eax, [ebp+0x8]
	add eax, 0x148
	mov [esp+0x4], eax
	mov eax, [ebp-0x98]
	mov [esp], eax
	call G_SetAngle
	mov eax, [ebp-0x98]
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Drop_Weapon_10:
	mov [esp], edi
	call BG_GetWeaponDef
	mov edx, [eax+0x540]
	test edx, edx
	jz Drop_Weapon_130
	mov edi, edx
	mov [ebp-0x8c], edx
	jmp Drop_Weapon_140
Drop_Weapon_30:
	mov dword [esp+0x8], 0x1
	mov edx, [ebp-0x8c]
	mov [esp+0x4], edx
	mov [esp], ebx
	call BG_TakePlayerWeapon
	mov dword [ebp-0x98], 0x0
	jmp Drop_Weapon_110
Drop_Weapon_40:
	mov [esp], edi
	call BG_AmmoForWeapon
	mov ebx, eax
	mov [esp], edi
	call BG_ClipForWeapon
	mov eax, [ebp-0x8c]
	mov [esp+0x8], eax
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov eax, [edx+0x15c]
	mov [esp], eax
	call BG_GetAmmoPlayerMax
	mov edx, [ebp+0x8]
	mov ecx, [edx+0x15c]
	mov edx, [ecx+ebx*4+0x15c]
	sub edx, eax
	cmp edx, 0x0
	jl Drop_Weapon_150
	jg Drop_Weapon_20
Drop_Weapon_150:
	mov dword [esp+0x8], 0x1
	mov ebx, [ebp-0x8c]
	mov [esp+0x4], ebx
	mov [esp], ecx
	call BG_TakePlayerWeapon
	mov dword [ebp-0x98], 0x0
	jmp Drop_Weapon_110
Drop_Weapon_60:
	mov edx, edi
	call TransferRandomAmmoToWeaponEntity
	jmp Drop_Weapon_160
Drop_Weapon_130:
	mov [esp], edi
	call BG_GetWeaponDef
	mov eax, [eax]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_drop_weapon_tryi
	mov dword [esp], 0xf
	call Com_PrintError
	mov dword [ebp-0x98], 0x0
	jmp Drop_Weapon_110


;G_SpawnItem(gentity_s*, gitem_s const*)
G_SpawnItem:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	sub ebx, bg_itemlist
	sar ebx, 0x2
	mov [esi+0x1bc], ebx
	mov edi, ebx
	and edi, 0x8000007f
	js G_SpawnItem_10
G_SpawnItem_60:
	mov [esp], edi
	call BG_GetWeaponDef
	mov edx, ebx
	lea ecx, [ebx+0x7f]
	cmp ebx, 0xffffffff
	cmovle edx, ecx
	sar edx, 0x7
	movzx edx, dl
	mov eax, [eax+edx*4+0x2bc]
	test eax, eax
	jz G_SpawnItem_20
	mov [esp], eax
	call XModelGetName
	mov [esp+0x4], eax
	mov [esp], esi
	call G_SetModel
G_SpawnItem_20:
	lea edx, [esi+0x108]
	mov eax, 0xbf800000
	mov [esi+0x108], eax
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	lea edx, [esi+0x114]
	mov eax, 0x3f800000
	mov [esi+0x114], eax
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	mov dword [esi+0x120], 0x407c0108
	mov dword [esi+0x4], 0x3
	movzx eax, word [esi+0x1bc]
	mov [esi+0x88], eax
	mov edx, edi
	mov eax, esi
	call TransferRandomAmmoToWeaponEntity
	mov [esp], esi
	call G_DObjUpdate
	mov dword [esi+0x8c], 0x40
	or dword [esi+0x180], 0x1000
	mov ebx, level
	cmp byte [ebx+0xb34], 0x0
	jnz G_SpawnItem_30
	mov byte [esi+0x16e], 0x12
	test byte [esi+0x17c], 0x1
	jz G_SpawnItem_40
G_SpawnItem_50:
	lea eax, [esi+0x148]
	mov [esp+0x4], eax
	mov [esp], esi
	call G_SetAngle
	lea eax, [esi+0x13c]
	mov [esp+0x4], eax
	mov [esp], esi
	call G_SetOrigin
	mov [ebp+0x8], esi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp SV_LinkEntity
G_SpawnItem_40:
	mov dword [esi+0x7c], 0x3ff
	movss xmm0, dword [_float_90_00000000]
	addss xmm0, [esi+0x150]
	movss [esi+0x150], xmm0
	jmp G_SpawnItem_50
G_SpawnItem_30:
	lea eax, [esi+0x148]
	mov [esp+0x4], eax
	mov [esp], esi
	call G_SetAngle
	mov eax, [ebx+0x1ec]
	add eax, 0x64
	mov [esi+0x19c], eax
	mov byte [esi+0x16e], 0x11
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_SpawnItem_10:
	sub edi, 0x1
	or edi, 0xffffff80
	add edi, 0x1
	jmp G_SpawnItem_60


;Touch_Item_Auto(gentity_s*, gentity_s*, int)
Touch_Item_Auto:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov byte [eax+0x16c], 0x1
	mov [ebp+0x8], eax
	pop ebp
	jmp Touch_Item


;G_RegisterWeapon(unsigned int)
G_RegisterWeapon:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edx, [ebp+0x8]
	mov dword [edx*4+itemRegistered], 0x1
	mov eax, level
	mov dword [eax+0x2dec], 0x1
	mov dword [eax+0x2de8], 0x1
	mov [esp], edx
	call BG_GetWeaponDef
	mov [ebp-0x1c], eax
	mov edx, eax
	mov eax, [eax+0x7dc]
	cmp byte [eax], 0x0
	jnz G_RegisterWeapon_10
G_RegisterWeapon_70:
	mov edx, [ebp-0x1c]
	mov eax, [edx+0x7e0]
	cmp byte [eax], 0x0
	jnz G_RegisterWeapon_20
	mov ebx, edx
G_RegisterWeapon_90:
	mov esi, 0x10
	jmp G_RegisterWeapon_30
G_RegisterWeapon_50:
	add ebx, 0x4
	mov eax, esi
	sub al, 0x1
	mov esi, eax
	jz G_RegisterWeapon_40
G_RegisterWeapon_30:
	mov eax, [ebx+0x2bc]
	test eax, eax
	jz G_RegisterWeapon_50
	mov [esp], eax
	call XModelGetName
	mov [esp], eax
	call G_ModelIndex
	mov edi, eax
	mov eax, [ebx+0x2bc]
	mov [esp], eax
	call XModelBad
	test eax, eax
	jz G_RegisterWeapon_50
	mov dword [esp+0x4], _cstring_defaultweapon
	mov [esp], edi
	call G_OverrideModel
	add ebx, 0x4
	mov eax, esi
	sub al, 0x1
	mov esi, eax
	jnz G_RegisterWeapon_30
G_RegisterWeapon_40:
	mov edx, [ebp-0x1c]
	mov eax, [edx+0x584]
	test eax, eax
	jz G_RegisterWeapon_60
	mov [esp], eax
	call XModelGetName
	mov [esp], eax
	call G_ModelIndex
G_RegisterWeapon_60:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_RegisterWeapon_10:
	mov [esp+0x4], eax
	mov eax, edx
	add eax, 0x7e4
	mov [esp], eax
	call G_GetHintStringIndex
	test eax, eax
	jnz G_RegisterWeapon_70
	mov dword [esp+0x8], 0x20
	mov dword [esp+0x4], _cstring_too_many_differe
	mov dword [esp], 0x2
	call Com_Error
	jmp G_RegisterWeapon_70
G_RegisterWeapon_20:
	mov [esp+0x4], eax
	mov eax, edx
	add eax, 0x7e8
	mov [esp], eax
	call G_GetHintStringIndex
	test eax, eax
	jz G_RegisterWeapon_80
	mov ebx, [ebp-0x1c]
	jmp G_RegisterWeapon_90
G_RegisterWeapon_80:
	mov dword [esp+0x8], 0x20
	mov dword [esp+0x4], _cstring_too_many_differe
	mov dword [esp], 0x2
	call Com_Error
	mov ebx, [ebp-0x1c]
	jmp G_RegisterWeapon_90
	nop


;IsItemRegistered(int)
IsItemRegistered:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax*4+itemRegistered]
	pop ebp
	ret
	nop


;FinishSpawningItem(gentity_s*)
FinishSpawningItem:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xdc
	mov edi, [ebp+0x8]
	mov byte [edi+0x16e], 0x12
	test byte [edi+0x17c], 0x1
	jnz FinishSpawningItem_10
	mov eax, 0xbf800000
	mov [ebp-0x30], eax
	mov [ebp-0x2c], eax
	mov [ebp-0x28], eax
	mov eax, 0x3f800000
	mov [ebp-0x3c], eax
	mov [ebp-0x38], eax
	mov [ebp-0x34], eax
	mov ebx, [edi+0x190]
	test ebx, ebx
	mov eax, 0x491
	cmovz ebx, eax
	lea eax, [edi+0x13c]
	mov [ebp-0xbc], eax
	mov edx, [edi+0x13c]
	mov [ebp-0x48], edx
	mov eax, [edi+0x140]
	mov [ebp-0x44], eax
	movss xmm0, dword [edi+0x144]
	movss [ebp-0x40], xmm0
	subss xmm0, [_float_4096_00000000]
	mov [ebp-0x24], edx
	mov [ebp-0x20], eax
	movss [ebp-0x1c], xmm0
	mov [esp+0x18], ebx
	mov eax, [edi]
	mov [esp+0x14], eax
	lea eax, [ebp-0x24]
	mov [esp+0x10], eax
	lea eax, [ebp-0x3c]
	mov [esp+0xc], eax
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	lea eax, [ebp-0x48]
	mov [esp+0x4], eax
	lea esi, [ebp-0xb0]
	mov [esp], esi
	call G_TraceCapsule
	cmp byte [ebp-0x87], 0x0
	jnz FinishSpawningItem_20
FinishSpawningItem_40:
	mov [esp], esi
	call Trace_GetEntityHitId
	movzx eax, ax
	mov [edi+0x7c], eax
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	add edx, eax
	add edx, g_entities
	or dword [edx+0x180], 0x100000
	movss xmm2, dword [ebp-0xb0]
	movss xmm1, dword [ebp-0x48]
	movss xmm0, dword [ebp-0x24]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x54], xmm1
	movss xmm1, dword [ebp-0x44]
	movss xmm0, dword [ebp-0x20]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x50], xmm1
	movss xmm1, dword [ebp-0x40]
	movss xmm0, dword [ebp-0x1c]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm1, xmm2
	movss [ebp-0x4c], xmm1
	lea eax, [ebp-0x54]
	mov [esp+0x4], eax
	mov [esp], edi
	call G_SetOrigin
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0xb0]
	ja FinishSpawningItem_30
FinishSpawningItem_50:
	mov [esp], edi
	call SV_LinkEntity
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FinishSpawningItem_20:
	mov edx, [edi+0x13c]
	mov [ebp-0x48], edx
	mov eax, [edi+0x140]
	mov [ebp-0x44], eax
	movss xmm1, dword [edi+0x144]
	movaps xmm0, xmm1
	subss xmm0, [_float_15_00000000]
	movss [ebp-0x40], xmm0
	subss xmm1, [_float_4096_00000000]
	mov [ebp-0x24], edx
	mov [ebp-0x20], eax
	movss [ebp-0x1c], xmm1
	mov [esp+0x18], ebx
	mov eax, [edi]
	mov [esp+0x14], eax
	lea eax, [ebp-0x24]
	mov [esp+0x10], eax
	lea eax, [ebp-0x3c]
	mov [esp+0xc], eax
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	lea eax, [ebp-0x48]
	mov [esp+0x4], eax
	mov [esp], esi
	call G_TraceCapsule
	cmp byte [ebp-0x87], 0x0
	jz FinishSpawningItem_40
	mov eax, [ebp-0xbc]
	mov [esp], eax
	call vtos
	mov ebx, eax
	movzx eax, word [edi+0x170]
	mov [esp], eax
	call SL_ConvertToString
	mov [esp+0xc], ebx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_finishspawningit
	mov dword [esp], 0xf
	call Com_Printf
	mov [esp], edi
	call G_FreeEntity
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FinishSpawningItem_10:
	lea eax, [edi+0x13c]
	mov [esp+0x4], eax
	mov [esp], edi
	call G_SetOrigin
	jmp FinishSpawningItem_50
FinishSpawningItem_30:
	mov eax, [ebp-0xac]
	mov [ebp-0x6c], eax
	lea esi, [ebp-0x84]
	mov eax, [ebp-0xa8]
	mov [ebp-0x68], eax
	mov eax, [ebp-0xa4]
	mov [ebp-0x64], eax
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], esi
	lea eax, [edi+0x148]
	mov [esp], eax
	call AngleVectors
	movss xmm2, dword [ebp-0x68]
	movaps xmm4, xmm2
	mulss xmm4, [ebp-0x7c]
	movss xmm3, dword [ebp-0x64]
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x80]
	subss xmm4, xmm0
	movss [ebp-0x78], xmm4
	mulss xmm3, [ebp-0x84]
	movss xmm1, dword [ebp-0x6c]
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x7c]
	subss xmm3, xmm0
	movss [ebp-0x74], xmm3
	mulss xmm1, [ebp-0x80]
	mulss xmm2, [ebp-0x84]
	subss xmm1, xmm2
	movss [ebp-0x70], xmm1
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x64]
	movaps xmm2, xmm1
	mulss xmm2, [ebp-0x68]
	subss xmm0, xmm2
	movss [ebp-0x84], xmm0
	mulss xmm1, [ebp-0x6c]
	movaps xmm0, xmm4
	mulss xmm0, [ebp-0x64]
	subss xmm1, xmm0
	movss [ebp-0x80], xmm1
	mulss xmm4, [ebp-0x68]
	mulss xmm3, [ebp-0x6c]
	subss xmm4, xmm3
	movss [ebp-0x7c], xmm4
	lea ebx, [ebp-0x60]
	mov [esp+0x4], ebx
	mov [esp], esi
	call AxisToAngles
	movss xmm0, dword [_float_90_00000000]
	addss xmm0, [ebp-0x58]
	movss [ebp-0x58], xmm0
	mov [esp+0x4], ebx
	mov [esp], edi
	call G_SetAngle
	jmp FinishSpawningItem_50
	nop


;G_GetItemClassname(gitem_s const*, unsigned short*)
G_GetItemClassname:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x114
	mov eax, [ebp+0x8]
	sub eax, bg_itemlist
	sar eax, 0x2
	and eax, 0x8000007f
	js G_GetItemClassname_10
G_GetItemClassname_20:
	mov [esp], eax
	call BG_GetWeaponDef
	mov eax, [eax]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_weapon_s
	mov dword [esp+0x4], 0x100
	lea ebx, [ebp-0x108]
	mov [esp], ebx
	call Com_sprintf
	mov [esp+0x4], ebx
	mov eax, [ebp+0xc]
	mov [esp], eax
	call G_SetConstString
	add esp, 0x114
	pop ebx
	pop ebp
	ret
G_GetItemClassname_10:
	sub eax, 0x1
	or eax, 0xffffff80
	add eax, 0x1
	jmp G_GetItemClassname_20


;SaveRegisteredItems()
SaveRegisteredItems:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov eax, level
	mov dword [eax+0x2dec], 0x0
	xor edi, edi
	xor esi, esi
	xor ecx, ecx
	xor ebx, ebx
SaveRegisteredItems_40:
	lea eax, [ebx*4+itemRegistered]
	mov edx, 0x10
SaveRegisteredItems_20:
	cmp dword [eax], 0x0
	jnz SaveRegisteredItems_10
	add eax, 0x200
	sub edx, 0x1
	jnz SaveRegisteredItems_20
	add ecx, 0x1
	cmp ecx, 0x4
	jz SaveRegisteredItems_30
SaveRegisteredItems_60:
	add ebx, 0x1
	cmp ebx, 0x80
	jnz SaveRegisteredItems_40
	test ecx, ecx
	jz SaveRegisteredItems_50
	mov eax, 0x30
	cmp esi, 0x9
	mov edx, 0x57
	cmovg eax, edx
	add eax, esi
	mov [ebp+edi-0x98], al
	add edi, 0x1
SaveRegisteredItems_50:
	mov byte [ebp+edi-0x98], 0x0
	lea eax, [ebp-0x98]
	mov [esp+0x4], eax
	mov dword [esp], 0x90a
	call SV_SetConfigstring
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SaveRegisteredItems_10:
	mov eax, 0x1
	shl eax, cl
	add esi, eax
	add ecx, 0x1
	cmp ecx, 0x4
	jnz SaveRegisteredItems_60
SaveRegisteredItems_30:
	cmp esi, 0x9
	jg SaveRegisteredItems_70
	mov eax, 0x30
SaveRegisteredItems_80:
	add eax, esi
	mov [ebp+edi-0x98], al
	add edi, 0x1
	xor esi, esi
	xor ecx, ecx
	jmp SaveRegisteredItems_60
SaveRegisteredItems_70:
	mov eax, 0x57
	jmp SaveRegisteredItems_80
	nop


;ClearRegisteredItems()
ClearRegisteredItems:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x2000
	mov dword [esp+0x4], 0x0
	mov dword [esp], itemRegistered
	call memset
	mov dword [itemRegistered], 0x1
	leave
	ret


;DroppedItemClearOwner(gentity_s*)
DroppedItemClearOwner:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov dword [eax+0x8c], 0x40
	pop ebp
	ret


;SaveRegisteredWeapons()
SaveRegisteredWeapons:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x201c
	mov eax, level
	mov dword [eax+0x2de8], 0x0
	mov byte [ebp-0x2018], 0x0
	xor ebx, ebx
	mov esi, 0x1
	lea edi, [ebp-0x2018]
	jmp SaveRegisteredWeapons_10
SaveRegisteredWeapons_30:
	test ebx, ebx
	jz SaveRegisteredWeapons_20
	mov dword [esp+0x8], _cstring_space
	mov dword [esp+0x4], 0x2000
	mov [esp], edi
	call Q_strncat
SaveRegisteredWeapons_20:
	mov [esp], esi
	call BG_GetWeaponDef
	mov ebx, eax
	mov eax, [eax]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2000
	mov [esp], edi
	call Q_strncat
	add esi, 0x1
SaveRegisteredWeapons_10:
	call BG_GetNumWeapons
	cmp esi, eax
	jb SaveRegisteredWeapons_30
	mov [esp+0x4], edi
	mov dword [esp], 0x8d2
	call SV_SetConfigstring
	add esp, 0x201c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Add_Ammo(gentity_s*, unsigned int, unsigned char, int, int)
Add_Ammo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov edi, [ebp+0xc]
	movzx ebx, byte [ebp+0x10]
	mov eax, [ebp+0x8]
	mov esi, [eax+0x15c]
	mov edx, edi
	sar edx, 0x5
	mov ecx, edi
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	test [esi+edx*4+0x55c], eax
	jnz Add_Ammo_10
	mov [esp+0x4], edi
	mov [esp], esi
	call BG_PlayerHasCompatibleWeapon
	test al, al
	jz Add_Ammo_20
Add_Ammo_10:
	mov [esp], edi
	call BG_GetWeaponDef
	mov [ebp-0x3c], eax
	mov [esp], edi
	call BG_AmmoForWeapon
	mov [ebp-0x38], eax
	mov [esp], edi
	call BG_ClipForWeapon
	mov [ebp-0x34], eax
	mov eax, [ebp-0x38]
	mov eax, [esi+eax*4+0x15c]
	mov [ebp-0x2c], eax
	mov edx, [ebp-0x34]
	mov edx, [esi+edx*4+0x35c]
	mov [ebp-0x28], edx
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], edi
	mov [esp], esi
	call BG_GetAmmoPlayerMax
	mov [ebp-0x24], eax
	mov eax, [ebp+0x14]
	mov ecx, [ebp-0x38]
	add [esi+ecx*4+0x15c], eax
	mov [esp], edi
	call BG_WeaponIsClipOnly
	test eax, eax
	jnz Add_Ammo_30
	mov byte [ebp-0x2d], 0x0
Add_Ammo_120:
	mov eax, [ebp+0x18]
	test eax, eax
	jnz Add_Ammo_40
	cmp byte [ebp-0x2d], 0x0
	jnz Add_Ammo_40
Add_Ammo_100:
	mov edx, [ebp-0x24]
	mov eax, [ebp-0x38]
	cmp edx, [esi+eax*4+0x15c]
	jl Add_Ammo_50
	mov ecx, [ebp-0x3c]
	mov eax, [ecx+0x338]
	mov edx, [ebp-0x34]
	cmp [esi+edx*4+0x35c], eax
	jg Add_Ammo_60
Add_Ammo_110:
	mov [esp], edi
	call BG_GetWeaponDef
	mov eax, [eax+0x344]
	test eax, eax
	js Add_Ammo_70
	mov [esp+0x4], edi
	mov [esp], esi
	call BG_GetMaxPickupableAmmo
	mov ebx, eax
	test eax, eax
	js Add_Ammo_80
Add_Ammo_70:
	mov eax, [ebp-0x38]
	mov edx, [esi+eax*4+0x15c]
	sub edx, [ebp-0x2c]
	mov ecx, [ebp-0x34]
	mov eax, [esi+ecx*4+0x35c]
	sub eax, [ebp-0x28]
	lea eax, [edx+eax]
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Add_Ammo_40:
	mov [esp], edi
	call BG_AmmoForWeapon
	mov [ebp-0x20], eax
	mov [esp], edi
	call BG_ClipForWeapon
	mov [ebp-0x1c], eax
	test edi, edi
	jnz Add_Ammo_90
Add_Ammo_140:
	cmp byte [ebp-0x2d], 0x0
	jz Add_Ammo_100
	mov ecx, [ebp-0x38]
	mov dword [esi+ecx*4+0x15c], 0x0
	mov ecx, [ebp-0x3c]
	mov eax, [ecx+0x338]
	mov edx, [ebp-0x34]
	cmp [esi+edx*4+0x35c], eax
	jle Add_Ammo_110
Add_Ammo_60:
	mov [esi+edx*4+0x35c], eax
	jmp Add_Ammo_110
Add_Ammo_50:
	mov [esi+eax*4+0x15c], edx
	mov ecx, [ebp-0x3c]
	mov eax, [ecx+0x338]
	mov edx, [ebp-0x34]
	cmp [esi+edx*4+0x35c], eax
	jle Add_Ammo_110
	jmp Add_Ammo_60
Add_Ammo_30:
	movzx eax, bl
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov [esp], esi
	call G_GivePlayerWeapon
	mov byte [ebp-0x2d], 0x1
	jmp Add_Ammo_120
Add_Ammo_80:
	mov [esp], edi
	call BG_WeaponIsClipOnly
	mov edx, eax
	test eax, eax
	jz Add_Ammo_130
	mov eax, ebx
	mov ecx, [ebp-0x34]
	add eax, [esi+ecx*4+0x35c]
	mov [esi+ecx*4+0x35c], eax
	test eax, eax
	jg Add_Ammo_70
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], edi
	mov [esp], esi
	call BG_TakePlayerWeapon
Add_Ammo_20:
	xor eax, eax
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Add_Ammo_90:
	call BG_GetNumWeapons
	cmp edi, eax
	jae Add_Ammo_140
	mov edx, [ebp-0x1c]
	mov ebx, [esi+edx*4+0x35c]
	mov [esp], edi
	call BG_GetWeaponDef
	mov eax, [eax+0x338]
	sub eax, ebx
	mov ecx, [ebp-0x20]
	mov edx, [esi+ecx*4+0x15c]
	cmp eax, edx
	cmovg eax, edx
	test eax, eax
	jz Add_Ammo_140
	sub edx, eax
	mov [esi+ecx*4+0x15c], edx
	mov edx, [ebp-0x1c]
	add [esi+edx*4+0x35c], eax
	jmp Add_Ammo_140
Add_Ammo_130:
	mov eax, ebx
	mov ecx, [ebp-0x38]
	add eax, [esi+ecx*4+0x15c]
	cmovns edx, eax
	mov [esi+ecx*4+0x15c], edx
	jmp Add_Ammo_70
	nop


;Drop_Item(gentity_s*, gitem_s const*, float, int)
Drop_Item:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x19c
	mov esi, [ebp+0x8]
	movss xmm0, dword [ebp+0x10]
	mov eax, [esi+0x14c]
	mov [ebp-0x2c], eax
	addss xmm0, [ebp-0x2c]
	movss [ebp-0x2c], xmm0
	xor eax, eax
	mov [ebp-0x30], eax
	mov [ebp-0x28], eax
	mov edx, [ebp+0x14]
	test edx, edx
	jz Drop_Item_10
	mov [ebp-0x24], eax
	mov [ebp-0x20], eax
	mov [ebp-0x1c], eax
Drop_Item_150:
	lea edx, [esi+0x13c]
	mov eax, [esi+0x13c]
	mov [ebp-0x3c], eax
	mov eax, [edx+0x4]
	mov [ebp-0x38], eax
	mov eax, [edx+0x8]
	mov [ebp-0x34], eax
	movss xmm0, dword [esi+0x11c]
	subss xmm0, [esi+0x110]
	mulss xmm0, [_float_0_50000000]
	addss xmm0, [ebp-0x34]
	movss [ebp-0x34], xmm0
	mov esi, [esi]
	mov [ebp-0x164], esi
	mov eax, [ebp+0xc]
	sub eax, bg_itemlist
	sar eax, 0x2
	mov [ebp-0x174], eax
	call G_Spawn
	mov edi, eax
	mov eax, g_maxDroppedWeapons
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [ebp-0x154], eax
	test eax, eax
	jle Drop_Item_20
	mov edx, level
	mov ecx, edx
	add edx, 0x1544
	cmp word [edx], 0x0
	jz Drop_Item_30
	movss xmm0, dword [_float__1_00000000]
	movss [ebp-0x158], xmm0
	mov dword [ebp-0x14c], 0xffffffff
	mov dword [ebp-0x160], 0x0
	jmp Drop_Item_40
Drop_Item_70:
	add dword [ebp-0x160], 0x1
	mov eax, [ebp-0x160]
	cmp [ebp-0x154], eax
	jz Drop_Item_50
	mov ecx, level
	lea eax, [ecx+eax*4+0x1540]
	lea edx, [eax+0x4]
	cmp word [eax+0x4], 0x0
	jz Drop_Item_60
Drop_Item_40:
	movzx eax, word [edx]
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	lea ebx, [edx+eax-0x274]
	add ebx, g_entities
	test byte [ebx+0x183], 0x1
	jnz Drop_Item_70
	mov eax, [ebx+0x1bc]
	and eax, 0x8000007f
	js Drop_Item_80
Drop_Item_170:
	mov [esp], eax
	call BG_GetWeaponDef
	mov eax, [eax+0x3fc]
	test eax, eax
	jnz Drop_Item_70
	mov eax, level
	mov edx, [eax+0x1e4]
	mov [ebp-0x15c], edx
	test edx, edx
	jle Drop_Item_90
	mov eax, [eax]
	mov [ebp-0x150], eax
	xor esi, esi
	movss xmm3, dword [_float_999998029824_0000_float_]
	jmp Drop_Item_100
Drop_Item_120:
	add esi, 0x1
	add dword [ebp-0x150], 0x3184
	cmp [ebp-0x15c], esi
	jz Drop_Item_110
	mov eax, [ebp-0x150]
Drop_Item_100:
	cmp dword [eax+0x2f8c], 0x2
	jnz Drop_Item_120
	mov eax, [eax+0x2f64]
	test eax, eax
	jnz Drop_Item_120
	lea eax, [esi+esi*8]
	lea eax, [esi+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea eax, [eax+esi+0x130]
	add eax, g_entities
	lea ecx, [eax+0xc]
	lea edx, [ebx+0x13c]
	movss xmm0, dword [ebx+0x13c]
	subss xmm0, [eax+0xc]
	movss xmm1, dword [edx+0x4]
	subss xmm1, [ecx+0x4]
	movss xmm2, dword [edx+0x8]
	subss xmm2, [ecx+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	minss xmm0, xmm3
	movaps xmm3, xmm0
	jmp Drop_Item_120
Drop_Item_180:
	mov eax, [ebp-0x154]
Drop_Item_20:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_could_not_find_a
	mov dword [esp], 0x10
	call Com_PrintWarning
	mov dword [ebp-0x160], 0x0
	mov edx, [ebp-0x160]
Drop_Item_190:
	mov ebx, level
	lea eax, [ebx+edx*4+0x1540]
	lea esi, [eax+0x4]
	movzx edx, word [eax+0x4]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	mov ecx, eax
	shl ecx, 0x5
	add eax, ecx
	lea eax, [eax+edx-0x274]
	add eax, g_entities
	mov [esp], eax
	call G_FreeEntity
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call _ZN9EntHandle6setEntEP9gentity_s
	mov ecx, ebx
Drop_Item_60:
	mov [esp+0x4], edi
	mov edx, [ebp-0x160]
	lea eax, [ecx+edx*4+0x1544]
	mov [esp], eax
	call _ZN9EntHandle6setEntEP9gentity_s
	mov dword [edi+0x4], 0x3
	mov eax, [ebp-0x174]
	mov [edi+0x88], eax
	mov esi, eax
	and esi, 0x8000007f
	js Drop_Item_130
Drop_Item_160:
	mov [esp], esi
	call BG_GetWeaponDef
	mov eax, [eax]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_weapon_s
	mov dword [esp+0x4], 0x100
	lea ebx, [ebp-0x13c]
	mov [esp], ebx
	call Com_sprintf
	mov [esp+0x4], ebx
	lea eax, [edi+0x170]
	mov [esp], eax
	call G_SetConstString
	mov eax, [ebp-0x174]
	mov [edi+0x1bc], eax
	lea edx, [edi+0x108]
	mov eax, 0xbf800000
	mov [edi+0x108], eax
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	lea edx, [edi+0x114]
	mov eax, 0x3f800000
	mov [edi+0x114], eax
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	mov dword [edi+0x120], 0x407c0108
	mov edx, [ebp-0x164]
	mov [edi+0x8c], edx
	mov [esp], esi
	call BG_GetWeaponDef
	mov edx, [ebp-0x174]
	lea ecx, [edx+0x7f]
	cmp edx, 0xffffffff
	cmovle edx, ecx
	sar edx, 0x7
	movzx edx, dl
	mov eax, [eax+edx*4+0x2bc]
	test eax, eax
	jz Drop_Item_140
	mov [esp], eax
	call XModelGetName
	mov [esp+0x4], eax
	mov [esp], edi
	call G_SetModel
Drop_Item_140:
	mov [esp], edi
	call G_DObjUpdate
	mov byte [edi+0x16e], 0x10
	lea eax, [ebp-0x3c]
	mov [esp+0x4], eax
	mov [esp], edi
	call G_SetOrigin
	mov dword [edi+0xc], 0x5
	mov ebx, level
	mov eax, [ebx+0x1ec]
	mov [edi+0x10], eax
	lea edx, [edi+0x24]
	mov eax, [ebp-0x24]
	mov [edi+0x24], eax
	mov eax, [ebp-0x20]
	mov [edx+0x4], eax
	mov eax, [ebp-0x1c]
	mov [edx+0x8], eax
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov [esp], edi
	call G_SetAngle
	mov dword [edi+0x180], 0x10
	mov eax, [ebx+0x1ec]
	add eax, 0x3e8
	mov [edi+0x19c], eax
	mov [esp], edi
	call SV_LinkEntity
	mov eax, edi
	add esp, 0x19c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Drop_Item_30:
	mov dword [ebp-0x160], 0x0
	jmp Drop_Item_60
Drop_Item_10:
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	lea eax, [ebp-0x30]
	mov [esp], eax
	call AngleVectors
	mov eax, g_dropForwardSpeed
	mov eax, [eax]
	movss xmm1, dword [eax+0xc]
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x24]
	movss [ebp-0x24], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x20]
	movss [ebp-0x20], xmm0
	mulss xmm1, [ebp-0x1c]
	movss [ebp-0x1c], xmm1
	mov eax, g_dropUpSpeedBase
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	movss [ebp-0x170], xmm0
	movss [ebp-0x188], xmm1
	call crandom
	fstp dword [ebp-0x18c]
	movss xmm0, dword [ebp-0x18c]
	mov eax, g_dropUpSpeedRand
	mov eax, [eax]
	mulss xmm0, [eax+0xc]
	addss xmm0, [ebp-0x170]
	movss xmm1, dword [ebp-0x188]
	addss xmm1, xmm0
	movss [ebp-0x1c], xmm1
	movss xmm0, dword [ebp-0x24]
	movss [ebp-0x16c], xmm0
	call crandom
	fstp dword [ebp-0x18c]
	movss xmm0, dword [ebp-0x18c]
	mov ebx, g_dropHorzSpeedRand
	mov eax, [ebx]
	mulss xmm0, [eax+0xc]
	addss xmm0, [ebp-0x16c]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [ebp-0x20]
	movss [ebp-0x168], xmm0
	call crandom
	fstp dword [ebp-0x18c]
	movss xmm0, dword [ebp-0x18c]
	mov eax, [ebx]
	mulss xmm0, [eax+0xc]
	addss xmm0, [ebp-0x168]
	movss [ebp-0x20], xmm0
	jmp Drop_Item_150
Drop_Item_130:
	sub esi, 0x1
	or esi, 0xffffff80
	add esi, 0x1
	jmp Drop_Item_160
Drop_Item_90:
	movss xmm3, dword [_float_999998029824_0000_float_]
Drop_Item_110:
	ucomiss xmm3, [ebp-0x158]
	jbe Drop_Item_70
	mov edx, [ebp-0x160]
	mov [ebp-0x14c], edx
	movss [ebp-0x158], xmm3
	jmp Drop_Item_70
Drop_Item_80:
	sub eax, 0x1
	or eax, 0xffffff80
	add eax, 0x1
	jmp Drop_Item_170
Drop_Item_50:
	cmp dword [ebp-0x14c], 0xffffffff
	jz Drop_Item_180
	mov edx, [ebp-0x14c]
	mov [ebp-0x160], edx
	jmp Drop_Item_190
	nop


;Fill_Clip(playerState_s*, unsigned int)
Fill_Clip:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0xc]
	mov [esp], esi
	call BG_AmmoForWeapon
	mov [ebp-0x1c], eax
	mov [esp], esi
	call BG_ClipForWeapon
	mov edi, eax
	test esi, esi
	jnz Fill_Clip_10
Fill_Clip_20:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Fill_Clip_10:
	call BG_GetNumWeapons
	cmp esi, eax
	jae Fill_Clip_20
	mov eax, [ebp+0x8]
	mov ebx, [eax+edi*4+0x35c]
	mov [esp], esi
	call BG_GetWeaponDef
	mov eax, [eax+0x338]
	sub eax, ebx
	mov ecx, [ebp-0x1c]
	mov ebx, [ebp+0x8]
	mov edx, [ebx+ecx*4+0x15c]
	cmp eax, edx
	cmovg eax, edx
	test eax, eax
	jz Fill_Clip_20
	sub edx, eax
	mov [ebx+ecx*4+0x15c], edx
	add [ebx+edi*4+0x35c], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;G_RunItem(gentity_s*)
G_RunItem:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xcc
	mov esi, [ebp+0x8]
	mov ebx, [esi+0x7c]
	cmp ebx, 0x3ff
	jz G_RunItem_10
	mov eax, level
	mov ecx, [eax+0x4]
	lea eax, [ebx+ebx*8]
	lea eax, [ebx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	add eax, ebx
	mov ebx, [eax+ecx+0xc]
	test ebx, ebx
	jnz G_RunItem_10
G_RunItem_40:
	mov ecx, [esi+0xc]
	test ecx, ecx
	jz G_RunItem_20
	mov edx, [esi+0x218]
	test edx, edx
	jz G_RunItem_30
G_RunItem_20:
	mov [esp], esi
	call G_RunThink
G_RunItem_80:
	add esp, 0xcc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_RunItem_10:
	mov eax, [esi+0xc]
	cmp eax, 0x5
	jz G_RunItem_40
	cmp eax, 0xa
	jz G_RunItem_40
	test byte [esi+0x17c], 0x1
	jnz G_RunItem_40
	mov dword [esi+0xc], 0x5
	mov eax, level
	mov eax, [eax+0x1ec]
	mov [esi+0x10], eax
	lea ecx, [esi+0x18]
	lea edx, [esi+0x13c]
	mov eax, [esi+0x13c]
	mov [esi+0x18], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	lea edx, [esi+0x24]
	xor eax, eax
	mov [esi+0x24], eax
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	jmp G_RunItem_40
G_RunItem_30:
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov eax, level
	mov eax, [eax+0x1ec]
	add eax, 0x32
	mov [esp+0x4], eax
	lea eax, [esi+0xc]
	mov [esp], eax
	call BG_EvaluateTrajectory
	mov ebx, [esi+0x190]
	test ebx, ebx
	mov eax, 0x491
	cmovz ebx, eax
	lea edi, [esi+0x13c]
	movss xmm0, dword [ebp-0x24]
	subss xmm0, [esi+0x13c]
	lea edx, [esi+0x140]
	mov [ebp-0xa0], edx
	movss xmm1, dword [ebp-0x20]
	subss xmm1, [esi+0x140]
	lea ecx, [esi+0x144]
	mov [ebp-0x9c], ecx
	movss xmm3, dword [ebp-0x1c]
	movaps xmm2, xmm3
	subss xmm2, [esi+0x144]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	ucomiss xmm0, [_float_0_10000000]
	jae G_RunItem_50
	jp G_RunItem_50
	subss xmm3, [_float_1_00000000]
	movss [ebp-0x1c], xmm3
G_RunItem_50:
	lea eax, [esi+0x154]
	mov [ebp-0xac], eax
	cmp word [esi+0x154], 0x0
	jnz G_RunItem_60
	mov eax, 0x3ff
G_RunItem_110:
	lea edx, [esi+0x114]
	mov [ebp-0xa8], edx
	lea ecx, [esi+0x108]
	mov [ebp-0xa4], ecx
	mov [esp+0x18], ebx
	mov [esp+0x14], eax
	lea eax, [ebp-0x24]
	mov [esp+0x10], eax
	mov [esp+0xc], edx
	mov [esp+0x8], ecx
	mov [esp+0x4], edi
	lea edx, [ebp-0x8c]
	mov [esp], edx
	call G_TraceCapsule
	movss xmm1, dword [ebp-0x8c]
	ucomiss xmm1, [_float_1_00000000]
	jb G_RunItem_70
G_RunItem_120:
	mov eax, [ebp-0x24]
	mov [edi], eax
	mov eax, [ebp-0x20]
	mov [edi+0x4], eax
	mov eax, [ebp-0x1c]
	mov [edi+0x8], eax
G_RunItem_150:
	mov [esp], esi
	call SV_LinkEntity
	mov [esp], esi
	call G_RunThink
	cmp byte [esi+0x100], 0x0
	jz G_RunItem_80
	movss xmm0, dword [ebp-0x8c]
	ucomiss xmm0, [_float_0_01000000]
	jae G_RunItem_80
	pxor xmm0, xmm0
	ucomiss xmm0, [ebp-0x80]
	jae G_RunItem_90
	mov dword [esp+0x8], 0x80000000
	mov dword [esp+0x4], 0xffffffff
	mov [esp], edi
	call SV_PointContents
	test eax, eax
	jz G_RunItem_100
G_RunItem_90:
	mov [esp], esi
	call G_FreeEntity
	jmp G_RunItem_80
G_RunItem_60:
	movzx eax, word [esi+0x154]
	sub eax, 0x1
	jmp G_RunItem_110
G_RunItem_70:
	jp G_RunItem_120
	movss xmm0, dword [edi]
	movss xmm7, dword [ebp-0x24]
	movaps xmm4, xmm7
	subss xmm4, xmm0
	mulss xmm4, xmm1
	addss xmm4, xmm0
	movss [ebp-0x30], xmm4
	mov ecx, [ebp-0xa0]
	movss xmm0, dword [ecx]
	movss xmm6, dword [ebp-0x20]
	movaps xmm3, xmm6
	subss xmm3, xmm0
	mulss xmm3, xmm1
	addss xmm3, xmm0
	movss [ebp-0x2c], xmm3
	mov eax, [ebp-0x9c]
	movss xmm0, dword [eax]
	movss xmm5, dword [ebp-0x1c]
	movaps xmm2, xmm5
	subss xmm2, xmm0
	mulss xmm2, xmm1
	addss xmm2, xmm0
	movss [ebp-0x28], xmm2
	cmp byte [ebp-0x63], 0x0
	jnz G_RunItem_130
	ucomiss xmm1, [_float_0_01000000]
	jae G_RunItem_130
	jp G_RunItem_130
	movss xmm0, dword [_float_0_50000000]
	ucomiss xmm0, [ebp-0x80]
	jbe G_RunItem_130
	movss xmm2, dword [ebp-0x88]
	movaps xmm1, xmm7
	subss xmm1, [edi]
	mulss xmm1, xmm2
	subss xmm6, [ecx]
	mulss xmm6, [ebp-0x84]
	addss xmm1, xmm6
	subss xmm5, [eax]
	mulss xmm5, [ebp-0x80]
	addss xmm1, xmm5
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm7, xmm2
	movss [ebp-0x24], xmm7
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x84]
	addss xmm1, [ebp-0x20]
	movss [ebp-0x20], xmm1
	mulss xmm0, [ebp-0x80]
	addss xmm0, [ebp-0x1c]
	movss [ebp-0x1c], xmm0
	mov edx, [ebp-0xac]
	cmp word [edx], 0x0
	jnz G_RunItem_140
	mov eax, 0x3ff
G_RunItem_170:
	mov [esp+0x18], ebx
	mov [esp+0x14], eax
	lea eax, [ebp-0x24]
	mov [esp+0x10], eax
	mov edx, [ebp-0xa8]
	mov [esp+0xc], edx
	mov ecx, [ebp-0xa4]
	mov [esp+0x8], ecx
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	lea eax, [ebp-0x8c]
	mov [esp], eax
	call G_TraceCapsule
	movss xmm1, dword [ebp-0x8c]
	movss xmm4, dword [ebp-0x30]
	movss xmm0, dword [ebp-0x24]
	subss xmm0, xmm4
	mulss xmm0, xmm1
	addss xmm4, xmm0
	movss [ebp-0x30], xmm4
	movss xmm3, dword [ebp-0x2c]
	movss xmm0, dword [ebp-0x20]
	subss xmm0, xmm3
	mulss xmm0, xmm1
	addss xmm3, xmm0
	movss [ebp-0x2c], xmm3
	movss xmm2, dword [ebp-0x28]
	movss xmm0, dword [ebp-0x1c]
	subss xmm0, xmm2
	mulss xmm1, xmm0
	addss xmm2, xmm1
	movss [ebp-0x28], xmm2
G_RunItem_130:
	mov dword [esi+0xc], 0x3
	mov eax, level
	mov eax, [eax+0x1ec]
	mov [esi+0x10], eax
	mov dword [esi+0x14], 0x32
	lea edx, [esi+0x18]
	mov eax, [edi]
	mov [esi+0x18], eax
	mov ecx, [ebp-0xa0]
	mov eax, [ecx]
	mov [edx+0x4], eax
	mov ecx, [ebp-0x9c]
	mov eax, [ecx]
	mov [edx+0x8], eax
	lea eax, [esi+0x24]
	movaps xmm1, xmm4
	subss xmm1, [edi]
	movss [esi+0x24], xmm1
	movaps xmm0, xmm3
	mov edx, [ebp-0xa0]
	subss xmm0, [edx]
	movss [esi+0x28], xmm0
	movaps xmm0, xmm2
	subss xmm0, [ecx]
	movss [esi+0x2c], xmm0
	movss xmm0, dword [_float_20_00000000]
	mulss xmm1, xmm0
	movss [esi+0x24], xmm1
	movss xmm1, dword [eax+0x4]
	mulss xmm1, xmm0
	movss [esi+0x28], xmm1
	mulss xmm0, [eax+0x8]
	movss [esi+0x2c], xmm0
	movss [edi], xmm4
	movss [edi+0x4], xmm3
	movss [edi+0x8], xmm2
	jmp G_RunItem_150
G_RunItem_100:
	mov eax, [ebp-0x88]
	mov [ebp-0x48], eax
	lea ebx, [ebp-0x60]
	mov eax, [ebp-0x84]
	mov [ebp-0x44], eax
	mov eax, [ebp-0x80]
	mov [ebp-0x40], eax
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	lea eax, [esi+0x148]
	mov [esp], eax
	call AngleVectors
	movss xmm2, dword [ebp-0x44]
	movaps xmm4, xmm2
	mulss xmm4, [ebp-0x58]
	movss xmm3, dword [ebp-0x40]
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x5c]
	subss xmm4, xmm0
	movss [ebp-0x54], xmm4
	mulss xmm3, [ebp-0x60]
	movss xmm1, dword [ebp-0x48]
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x58]
	subss xmm3, xmm0
	movss [ebp-0x50], xmm3
	mulss xmm1, [ebp-0x5c]
	mulss xmm2, [ebp-0x60]
	subss xmm1, xmm2
	movss [ebp-0x4c], xmm1
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x40]
	movaps xmm2, xmm1
	mulss xmm2, [ebp-0x44]
	subss xmm0, xmm2
	movss [ebp-0x60], xmm0
	mulss xmm1, [ebp-0x48]
	movaps xmm0, xmm4
	mulss xmm0, [ebp-0x40]
	subss xmm1, xmm0
	movss [ebp-0x5c], xmm1
	mulss xmm4, [ebp-0x44]
	mulss xmm3, [ebp-0x48]
	subss xmm4, xmm3
	movss [ebp-0x58], xmm4
	lea edi, [ebp-0x3c]
	mov [esp+0x4], edi
	mov [esp], ebx
	call AxisToAngles
	mov eax, [esi+0x88]
	test eax, eax
	jz G_RunItem_160
	movss xmm0, dword [_float_90_00000000]
	addss xmm0, [ebp-0x34]
	movss [ebp-0x34], xmm0
G_RunItem_160:
	mov [esp+0x4], edi
	mov [esp], esi
	call G_SetAngle
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov [esp], esi
	call G_SetOrigin
	lea ecx, [ebp-0x8c]
	mov [esp], ecx
	call Trace_GetEntityHitId
	movzx eax, ax
	mov [esi+0x7c], eax
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	add edx, eax
	add edx, g_entities
	or dword [edx+0x180], 0x100000
	mov [esp], esi
	call SV_LinkEntity
	jmp G_RunItem_80
G_RunItem_140:
	mov ecx, [ebp-0xac]
	movzx eax, word [ecx]
	sub eax, 0x1
	jmp G_RunItem_170
	nop


;Initialized global or static variables of g_items:
SECTION .data


;Initialized constant data of g_items:
SECTION .rdata


;Zero initialized global or static variables of g_items:
SECTION .bss
itemRegistered: resb 0x2064


;All cstrings:
SECTION .rdata
_cstring_c_game_pickup_cl:		db "%c ",22h,"GAME_PICKUP_CLIPONLY_AMMO",14h,"%s",22h,0
_cstring_c_game_pickup_am:		db "%c ",22h,"GAME_PICKUP_AMMO",14h,"%s",22h,0
_cstring_c_game_cant_get_:		db "%c ",22h,"GAME_CANT_GET_PRIMARY_WEAP_MESSAGE",22h,0
_cstring_weaponsdss:		db "Weapon;%s;%d;%s;%s",0ah,0
_cstring_c_game_pickup_ca:		db "%c ",22h,"GAME_PICKUP_CANTCARRYMOREAMMO",14h,"%s",22h,0
_cstring_drop_weapon_tryi:		db "Drop_Weapon(): Trying to drop alt-type weapon, ",22h,"%s",22h,", but it has no corresponding altWeapon set.",0ah,0
_cstring_defaultweapon:		db "defaultweapon",0
_cstring_too_many_differe:		db 15h,"Too many different hintstring values on weapons. Max allowed is %i different strings",0
_cstring_finishspawningit:		db "FinishSpawningItem: %s startsolid at %s",0ah,0
_cstring_weapon_s:		db "weapon_%s",0
_cstring_space:		db " ",0
_cstring_could_not_find_a:		db "Could not find a suitable weapon entity to free out of %i possible.  Using index zero.",0ah,0



;All constant floats and doubles:
SECTION .rdata
_float_2_00000000:		dd 0x40000000	; 2
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_90_00000000:		dd 0x42b40000	; 90
_float_4096_00000000:		dd 0x45800000	; 4096
_float_1_00000000:		dd 0x3f800000	; 1
_float_15_00000000:		dd 0x41700000	; 15
_float__1_00000000:		dd 0xbf800000	; -1
_float_999998029824_0000_float_:		dd 0x5368d487	; 9.99998e+11
_float_0_10000000:		dd 0x3dcccccd	; 0.1
_float_0_01000000:		dd 0x3c23d70a	; 0.01
_float_20_00000000:		dd 0x41a00000	; 20

