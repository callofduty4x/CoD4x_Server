;Imports of MacGameEngine:
	extern EventAvail
	extern strcmp
	extern _ZN11MacFeatures16GetSystemVersionEv
	extern _ZN12MacResources20GetNeedsNewerOSErrorEv
	extern _ZN8MacTools12MessageAlertEPK10__CFStringh
	extern getrlimit
	extern setrlimit
	extern EnterMovies
	extern _ZN10MacFolders21GetApplicationVRefNumEv
	extern FSGetVolumeInfo
	extern _ZN10MacFolders15GetDataFolderIDEv
	extern GetCompressionInfo
	extern _ZN8MacTools11SetCursorIDEs
	extern _ZN10MacThreads11InitThreadsEv
	extern HIDBuildDeviceList:F(0,40)
	extern _ZN12MacResources19GetNoQuickTimeErrorEv
	extern _ZN12MacResources25GetMissingDataFolderErrorEv
	extern HIDGetFirstDevice:F(0,4)
	extern HIDGetNextDevice:F(0,4)
	extern HIDGetFirstDeviceElement:F(0,13)
	extern HIDGetNextDeviceElement:F(0,13)
	extern HIDQueueElement:F(0,17)
	extern _ZN12MacResources23GetCantRunFromDiscErrorEv
	extern GetEventKind
	extern GetEventClass
	extern _ZN10MacDisplay6ResumeEv
	extern _ZN10MacGlobals12UnlockSystemEv
	extern _ZN10MacGlobals14IsSystemLockedEv
	extern GetEventParameter
	extern EnableMenuItem
	extern _ZN8MacTools10ShowCursorEPK5Point
	extern _ZN10MacGlobals10LockSystemEv
	extern _ZN8MacTools10HideCursorEv
	extern _ZN10MacDisplay13GlobalToLocalER5Point
	extern _ZN10MacDisplay12IsWindowModeEv
	extern _ZN10MacDisplay13PointInWindowE5Point
	extern _ZN8MacTools17PinCursorPositionER5Point
	extern _ZN8MacTools15IsCursorVisibleEv
	extern _ZN10MacDisplay7SuspendEv
	extern _ZN10MacDisplay19UpdateScreenContextEv
	extern DisableMenuItem
	extern _ZN10MacDisplay12IsFullscreenEv
	extern GetCurrentEventTime
	extern CreateEvent
	extern SetEventParameter
	extern GetApplicationEventTarget
	extern SendEventToEventTarget
	extern ReleaseEvent
	extern _ZN10MacFolders17GetDataFolderPathEPci
	extern chdir
	extern _ZN10MacDisplay12SetupDisplayEii
	extern __cxa_allocate_exception
	extern __cxa_throw
	extern __cxa_begin_catch
	extern __cxa_end_catch
	extern _ZN10MacFolders20GetDataFolderItemRefEPKcR5FSRef
	extern CFURLCreateFromFSRef
	extern CGDataProviderCreateWithURL
	extern CGImageCreateWithPNGDataProvider
	extern _ZN10MacDisplay20GetCurrentDimensionsERiS0_
	extern _ZN10MacDisplay11GetMainPortEv
	extern QDBeginCGContext
	extern CGImageRelease
	extern CGDataProviderRelease
	extern CFRelease
	extern CGContextClearRect
	extern CGContextDrawImage
	extern CGContextFlush
	extern QDEndCGContext
	extern _Z16GetMacGameEnginev
	extern QuitApplicationEventLoop
	extern ReceiveNextEvent
	extern HIDGetEvent:F(0,18)
	extern GetEventDispatcherTarget
	extern memcpy
	extern InstallEventHandler
	extern _ZN10MacDisplay13GetMainWindowEv
	extern GetWindowEventTarget
	extern GetIndMenuItemWithCommandID
	extern GetMenuEventTarget
	extern AEInstallEventHandler
	extern _ZN10MacDisplay10InitializeEv
	extern _ZN14MacPreferences11SynchronizeEv
	extern GetMainEventQueue
	extern FlushEventQueue
	extern GetMainEventLoop
	extern InstallEventLoopTimer
	extern RunApplicationEventLoop
	extern _ZN10MacDisplay14ReleaseDisplayEv
	extern GetCurrentEventKeyModifiers
	extern RemoveEventHandler
	extern HIDReleaseAllDeviceQueues:F(0,17)
	extern HIDReleaseDeviceList:F(0,1)
	extern _ZdlPv
	extern NSApplicationLoad
	extern _ZN8MacTools12MessageAlertEPKcS1_h
	extern _Unwind_Resume

;Exports of MacGameEngine:
	global sEventTargetRef
	global kBuildTag
	global kProductTag
	global _ZZN14CMacGameEngine20InstallEventHandlersEvE5C.158
	global _ZZN14CMacGameEngine20InstallEventHandlersEvE5C.157
	global _ZZN14CMacGameEngine20InstallEventHandlersEvE5C.156
	global _ZN14CMacGameEngine10DoActivateEv
	global _ZN14CMacGameEngine10InitializeEv
	global _ZN14CMacGameEngine11DoMouseDownEt5Pointmm
	global _ZN14CMacGameEngine11DoTextInputEt
	global _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef
	global _ZN14CMacGameEngine12DoDeactivateEv
	global _ZN14CMacGameEngine12DoMouseMovedE5PointS0_m
	global _ZN14CMacGameEngine12DoMouseWheelEl5Pointm
	global _ZN14CMacGameEngine12OneShotTimerEv
	global _ZN14CMacGameEngine12SetIsRunningEh
	global _ZN14CMacGameEngine15HandleEventProcEP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv
	global _ZN14CMacGameEngine15IsQuitAvailableEv
	global _ZN14CMacGameEngine16DrawSplashScreenEPKc
	global _ZN14CMacGameEngine16HandleAppleEventEPK6AEDescPS0_l
	global _ZN14CMacGameEngine16OneShotTimerProcEP16__EventLoopTimerPv
	global _ZN14CMacGameEngine16ProcessAllEventsEv
	global _ZN14CMacGameEngine16ProcessHIDEventsEv
	global _ZN14CMacGameEngine18PostPseudoKeyEventEmmih
	global _ZN14CMacGameEngine20InstallEventHandlersEv
	global _ZN14CMacGameEngine3RunEiPPc
	global _ZN14CMacGameEngine4QuitEv
	global _ZN14CMacGameEngine6DoQuitEv
	global _ZN14CMacGameEngine7DoKeyUpEhm
	global _ZN14CMacGameEngine7MacMainEv
	global _ZN14CMacGameEngine9DoKeyDownEhm
	global _ZN14CMacGameEngine9DoMouseUpEt5Pointmm
	global _ZN14CMacGameEngineC2Ev
	global _ZN14CMacGameEngineD0Ev
	global _ZN14CMacGameEngineD1Ev
	global _ZN14CMacGameEngineD2Ev
	global _ZNK14CMacGameEngine10IsQuittingEv
	global main
	global _ZTV14CMacGameEngine


SECTION .text


;CMacGameEngine::DoActivate()
_ZN14CMacGameEngine10DoActivateEv:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;CMacGameEngine::Initialize()
_ZN14CMacGameEngine10InitializeEv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0xe0
	lea eax, [ebp-0x18]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call EventAvail
	mov eax, [kProductTag]
	mov [esp+0x4], eax
	mov eax, [kBuildTag]
	mov [esp], eax
	call strcmp
	test eax, eax
	jnz _ZN14CMacGameEngine10InitializeEv_10
_ZN14CMacGameEngine10InitializeEv_110:
	add esp, 0xe0
	pop ebx
	pop esi
	pop ebp
	ret
_ZN14CMacGameEngine10InitializeEv_10:
	call _ZN11MacFeatures16GetSystemVersionEv
	cmp ax, 0x103f
	jg _ZN14CMacGameEngine10InitializeEv_20
	call _ZN12MacResources20GetNeedsNewerOSErrorEv
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call _ZN8MacTools12MessageAlertEPK10__CFStringh
	xor eax, eax
	add esp, 0xe0
	pop ebx
	pop esi
	pop ebp
	ret
_ZN14CMacGameEngine10InitializeEv_20:
	lea esi, [ebp-0x28]
	mov [esp+0x4], esi
	mov dword [esp], 0x3
	call getrlimit
	test eax, eax
	jnz _ZN14CMacGameEngine10InitializeEv_30
	mov eax, [ebp-0x28]
	mov edx, [ebp-0x24]
	mov ecx, eax
	mov ebx, edx
	shld ebx, ecx, 0x1
	add ecx, ecx
	add ecx, eax
	adc ebx, edx
	mov [ebp-0x28], ecx
	mov [ebp-0x24], ebx
	mov eax, [ebp-0x20]
	mov edx, [ebp-0x1c]
	cmp ebx, edx
	jl _ZN14CMacGameEngine10InitializeEv_40
	jle _ZN14CMacGameEngine10InitializeEv_50
_ZN14CMacGameEngine10InitializeEv_120:
	mov [ebp-0x28], eax
	mov [ebp-0x24], edx
_ZN14CMacGameEngine10InitializeEv_40:
	mov [esp+0x4], esi
	mov dword [esp], 0x3
	call setrlimit
_ZN14CMacGameEngine10InitializeEv_30:
	call EnterMovies
	test ax, ax
	jnz _ZN14CMacGameEngine10InitializeEv_60
	call _ZN10MacFolders21GetApplicationVRefNumEv
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	lea edx, [ebp-0xba]
	mov [esp+0x10], edx
	mov dword [esp+0xc], 0x2000
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	cwde
	mov [esp], eax
	call FSGetVolumeInfo
	test ax, ax
	jnz _ZN14CMacGameEngine10InitializeEv_70
	movzx eax, word [ebp-0x46]
	test al, al
	js _ZN14CMacGameEngine10InitializeEv_80
	test ax, ax
	js _ZN14CMacGameEngine10InitializeEv_80
_ZN14CMacGameEngine10InitializeEv_70:
	call _ZN10MacFolders15GetDataFolderIDEv
	test eax, eax
	jz _ZN14CMacGameEngine10InitializeEv_90
	mov dword [ebp-0x3c], 0x14
	lea eax, [ebp-0x3c]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x10
	mov dword [esp+0x8], 0x2
	mov dword [esp+0x4], 0x4e4f4e45
	mov dword [esp], 0x0
	call GetCompressionInfo
	mov dword [esp], 0x4
	call _ZN8MacTools11SetCursorIDEs
	call _ZN10MacThreads11InitThreadsEv
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x1
	call HIDBuildDeviceList:F(0,40)
	mov edx, [ebp+0x8]
	mov [edx+0x1f], al
	test al, al
	jnz _ZN14CMacGameEngine10InitializeEv_100
_ZN14CMacGameEngine10InitializeEv_160:
	mov eax, 0x1
	jmp _ZN14CMacGameEngine10InitializeEv_110
_ZN14CMacGameEngine10InitializeEv_60:
	call _ZN12MacResources19GetNoQuickTimeErrorEv
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call _ZN8MacTools12MessageAlertEPK10__CFStringh
	xor eax, eax
	add esp, 0xe0
	pop ebx
	pop esi
	pop ebp
	ret
_ZN14CMacGameEngine10InitializeEv_90:
	call _ZN12MacResources25GetMissingDataFolderErrorEv
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call _ZN8MacTools12MessageAlertEPK10__CFStringh
	xor eax, eax
	jmp _ZN14CMacGameEngine10InitializeEv_110
_ZN14CMacGameEngine10InitializeEv_50:
	cmp ecx, eax
	jbe _ZN14CMacGameEngine10InitializeEv_40
	jmp _ZN14CMacGameEngine10InitializeEv_120
_ZN14CMacGameEngine10InitializeEv_100:
	call HIDGetFirstDevice:F(0,4)
	test eax, eax
	jz _ZN14CMacGameEngine10InitializeEv_130
_ZN14CMacGameEngine10InitializeEv_150:
	cmp dword [eax+0x428], 0x6
	jz _ZN14CMacGameEngine10InitializeEv_140
	mov [esp], eax
	call HIDGetNextDevice:F(0,4)
	test eax, eax
	jnz _ZN14CMacGameEngine10InitializeEv_150
_ZN14CMacGameEngine10InitializeEv_130:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x20]
	test eax, eax
	jz _ZN14CMacGameEngine10InitializeEv_160
	mov dword [esp+0x4], 0xe
	mov [esp], eax
	call HIDGetFirstDeviceElement:F(0,13)
	test eax, eax
	jz _ZN14CMacGameEngine10InitializeEv_170
_ZN14CMacGameEngine10InitializeEv_200:
	cmp dword [eax+0x8], 0x7
	jnz _ZN14CMacGameEngine10InitializeEv_180
	cmp dword [eax+0x4], 0x39
	jz _ZN14CMacGameEngine10InitializeEv_190
_ZN14CMacGameEngine10InitializeEv_180:
	mov dword [esp+0x4], 0xe
	mov [esp], eax
	call HIDGetNextDeviceElement:F(0,13)
	test eax, eax
	jnz _ZN14CMacGameEngine10InitializeEv_200
_ZN14CMacGameEngine10InitializeEv_170:
	xor eax, eax
_ZN14CMacGameEngine10InitializeEv_190:
	mov edx, [ebp+0x8]
	mov [edx+0x24], eax
	test eax, eax
	jz _ZN14CMacGameEngine10InitializeEv_160
	mov [esp+0x4], eax
	mov eax, [edx+0x20]
	mov [esp], eax
	call HIDQueueElement:F(0,17)
	mov eax, 0x1
	jmp _ZN14CMacGameEngine10InitializeEv_110
_ZN14CMacGameEngine10InitializeEv_80:
	call _ZN12MacResources23GetCantRunFromDiscErrorEv
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call _ZN8MacTools12MessageAlertEPK10__CFStringh
	xor eax, eax
	jmp _ZN14CMacGameEngine10InitializeEv_110
_ZN14CMacGameEngine10InitializeEv_140:
	mov edx, [ebp+0x8]
	mov [edx+0x20], eax
	jmp _ZN14CMacGameEngine10InitializeEv_130
	nop


;CMacGameEngine::DoMouseDown(unsigned short, Point, unsigned long, unsigned long)
_ZN14CMacGameEngine11DoMouseDownEt5Pointmm:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;CMacGameEngine::DoTextInput(unsigned short)
_ZN14CMacGameEngine11DoTextInputEt:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;CMacGameEngine::HandleEvent(OpaqueEventRef*)
_ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov edi, [ebp+0xc]
	mov eax, [ebp+0x8]
	cmp byte [eax+0x1d], 0x0
	jnz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_10
_ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_130:
	mov esi, 0x1
	mov [esp], edi
	call GetEventKind
	mov ebx, eax
	mov [esp], edi
	call GetEventClass
	cmp eax, 0x6d656e75
	jz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_20
_ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_140:
	jbe _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_30
	cmp eax, 0x74657874
	jz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_40
	cmp eax, 0x77696e64
	jz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_50
	cmp eax, 0x6d6f7573
	jnz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_60
	mov edx, esi
	test dl, dl
	jnz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_60
	cmp ebx, 0xa
	ja _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_60
	jmp dword [ebx*4+_ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_jumptab_0]
_ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_30:
	cmp eax, 0x636d6473
	jz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_70
	cmp eax, 0x6b657962
	jz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_80
	cmp eax, 0x6170706c
	jnz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_60
	mov eax, [ebp+0x8]
	cmp byte [eax+0x1d], 0x0
	jz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_60
	cmp ebx, 0x2
	jz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_90
	ja _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_100
	sub ebx, 0x1
	jnz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_60
	call _ZN10MacDisplay6ResumeEv
	test al, al
	jnz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_110
_ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_360:
	call _ZN10MacGlobals12UnlockSystemEv
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	mov [esp], ecx
	call dword [eax+0x34]
	xor eax, eax
	jmp _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_120
_ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_10:
	call _ZN10MacGlobals14IsSystemLockedEv
	test al, al
	jnz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_130
	xor esi, esi
	mov [esp], edi
	call GetEventKind
	mov ebx, eax
	mov [esp], edi
	call GetEventClass
	cmp eax, 0x6d656e75
	jnz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_140
_ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_20:
	mov ecx, [ebp+0x8]
	cmp byte [ecx+0x1d], 0x0
	jz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_60
	cmp ebx, 0x1
	jz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_150
	cmp ebx, 0x2
	jz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_160
_ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_60:
	xor eax, eax
_ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_120:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_50:
	mov eax, [ebp+0x8]
	cmp byte [eax+0x1d], 0x0
	jz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_60
	cmp ebx, 0x48
	jz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_170
	jb _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_60
	cmp ebx, 0x5b
	jz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_180
	cmp ebx, 0x5c
	jnz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_60
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	mov [esp], ecx
	call dword [eax+0x38]
	xor eax, eax
	jmp _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_120
_ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_80:
	mov eax, esi
	test al, al
	jnz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_60
	cmp ebx, 0x2
	jz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_190
	ja _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_200
	sub ebx, 0x1
	jnz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_60
	lea eax, [ebp-0x1a]
	mov [esp+0x18], eax
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x54455854
	mov dword [esp+0x4], 0x6b636872
	mov [esp], edi
	call GetEventParameter
	lea eax, [ebp-0x24]
	mov [esp+0x18], eax
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x4
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x6d61676e
	mov dword [esp+0x4], 0x6b636f64
	mov [esp], edi
	call GetEventParameter
	lea eax, [ebp-0x2c]
	mov [esp+0x18], eax
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x4
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x6d61676e
	mov dword [esp+0x4], 0x6b6d6f64
	mov [esp], edi
	call GetEventParameter
	cmp byte [ebp-0x1a], 0x9
	jnz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_210
	test byte [ebp-0x2b], 0x1
	jnz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_220
_ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_210:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov edx, [ebp-0x24]
	mov [esp+0x8], edx
	movzx edx, byte [ebp-0x1a]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call dword [eax+0x28]
	xor eax, eax
	jmp _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_120
_ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_70:
	cmp ebx, 0x1
	jz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_230
	cmp ebx, 0x2
	jnz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_60
	lea eax, [ebp-0x3a]
	mov [esp+0x18], eax
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0xe
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x68636d64
	mov dword [esp+0x4], 0x2d2d2d2d
	mov [esp], edi
	call GetEventParameter
	test eax, eax
	jnz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_60
	test byte [ebp-0x3a], 0x1
	jz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_60
	cmp dword [ebp-0x36], 0x71756974
	jnz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_60
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	mov [esp], ecx
	call dword [eax+0x3c]
	test al, al
	jz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_240
	movzx eax, word [ebp-0x2e]
	mov [esp+0x4], eax
	mov eax, [ebp-0x32]
	mov [esp], eax
	call EnableMenuItem
	mov eax, 0x1
	jmp _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_120
_ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_40:
	mov ecx, esi
	test cl, cl
	jnz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_60
	cmp ebx, 0x2
	jnz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_60
	lea eax, [ebp-0x1a]
	mov [esp+0x18], eax
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x2
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x75747874
	mov dword [esp+0x4], 0x74737478
	mov [esp], edi
	call GetEventParameter
	mov eax, 0xd
	cmp word [ebp-0x1a], 0x3
	cmovnz ax, [ebp-0x1a]
	mov [ebp-0x1a], ax
	mov ecx, [ebp+0x8]
	mov edx, [ecx]
	movzx eax, ax
	mov [esp+0x4], eax
	mov [esp], ecx
	call dword [edx+0x30]
	xor eax, eax
	jmp _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_120
_ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_250:
	mov dword [esp], 0x0
	call _ZN8MacTools10ShowCursorEPK5Point
_ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_150:
	call _ZN10MacGlobals10LockSystemEv
	xor eax, eax
	jmp _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_120
_ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_100:
	cmp ebx, 0x6b
	jz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_250
	cmp ebx, 0x6c
	jnz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_60
	call _ZN8MacTools10HideCursorEv
_ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_160:
	call _ZN10MacGlobals12UnlockSystemEv
	xor eax, eax
	jmp _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_120
_ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_400:
	lea eax, [ebp-0x1a]
	mov [esp+0x18], eax
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x2
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x6d62746e
	mov dword [esp+0x4], 0x6d62746e
	mov [esp], edi
	call GetEventParameter
	lea ebx, [ebp-0x3a]
	mov [esp+0x18], ebx
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x4
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x51447074
	mov dword [esp+0x4], 0x6d6c6f63
	mov [esp], edi
	call GetEventParameter
	mov [esp], ebx
	call _ZN10MacDisplay13GlobalToLocalER5Point
	lea eax, [ebp-0x28]
	mov [esp+0x18], eax
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x4
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x6d61676e
	mov dword [esp+0x4], 0x6b6d6f64
	mov [esp], edi
	call GetEventParameter
	lea eax, [ebp-0x2c]
	mov [esp+0x18], eax
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x4
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x6d61676e
	mov dword [esp+0x4], 0x63636e74
	mov [esp], edi
	call GetEventParameter
	cmp word [ebp-0x1a], 0x1
	jz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_260
_ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_370:
	call _ZN10MacDisplay12IsWindowModeEv
	test al, al
	jz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_270
	mov eax, [ebp-0x3a]
	mov [esp], eax
	call _ZN10MacDisplay13PointInWindowE5Point
	test al, al
	jz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_60
_ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_270:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov edx, [eax+0x18]
	mov eax, [ebp-0x2c]
	mov [esp+0x10], eax
	mov eax, [ebp-0x28]
	mov [esp+0xc], eax
	mov eax, [ebp-0x3a]
	mov [esp+0x8], eax
	movzx eax, word [ebp-0x1a]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call edx
	jmp _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_60
_ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_410:
	lea eax, [ebp-0x1a]
	mov [esp+0x18], eax
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x2
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x6d62746e
	mov dword [esp+0x4], 0x6d62746e
	mov [esp], edi
	call GetEventParameter
	lea ebx, [ebp-0x3a]
	mov [esp+0x18], ebx
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x4
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x51447074
	mov dword [esp+0x4], 0x6d6c6f63
	mov [esp], edi
	call GetEventParameter
	mov [esp], ebx
	call _ZN10MacDisplay13GlobalToLocalER5Point
	lea eax, [ebp-0x2c]
	mov [esp+0x18], eax
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x4
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x6d61676e
	mov dword [esp+0x4], 0x6b6d6f64
	mov [esp], edi
	call GetEventParameter
	lea eax, [ebp-0x24]
	mov [esp+0x18], eax
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x4
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x6d61676e
	mov dword [esp+0x4], 0x63636e74
	mov [esp], edi
	call GetEventParameter
	cmp word [ebp-0x1a], 0x1
	jz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_280
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0x8]
_ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_390:
	mov eax, [edx]
	mov edx, [eax+0x1c]
	mov eax, [ebp-0x24]
	mov [esp+0x10], eax
	mov eax, [ebp-0x2c]
	mov [esp+0xc], eax
	mov eax, [ebp-0x3a]
	mov [esp+0x8], eax
	movzx eax, word [ebp-0x1a]
	mov [esp+0x4], eax
	mov [esp], ecx
	call edx
	xor eax, eax
	jmp _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_120
_ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_420:
	lea eax, [ebp-0x1e]
	mov [esp+0x18], eax
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x4
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x51447074
	mov dword [esp+0x4], 0x6d647461
	mov [esp], edi
	call GetEventParameter
	lea ebx, [ebp-0x3a]
	mov [esp+0x18], ebx
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x4
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x51447074
	mov dword [esp+0x4], 0x6d6c6f63
	mov [esp], edi
	call GetEventParameter
	mov [esp], ebx
	call _ZN10MacDisplay13GlobalToLocalER5Point
	lea eax, [ebp-0x24]
	mov [esp+0x18], eax
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x4
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x6d61676e
	mov dword [esp+0x4], 0x6b6d6f64
	mov [esp], edi
	call GetEventParameter
	mov [esp], ebx
	call _ZN8MacTools17PinCursorPositionER5Point
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov edx, [eax+0x20]
	mov eax, [ebp-0x24]
	mov [esp+0xc], eax
	mov eax, [ebp-0x3a]
	mov [esp+0x8], eax
	mov eax, [ebp-0x1e]
_ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_290:
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call edx
	jmp _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_60
_ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_430:
	mov eax, [ebp+0x8]
	cmp byte [eax+0x1e], 0x0
	jnz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_60
	mov byte [eax+0x1e], 0x1
	lea eax, [ebp-0x24]
	mov [esp+0x18], eax
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x4
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x6c6f6e67
	mov dword [esp+0x4], 0x6d77646c
	mov [esp], edi
	call GetEventParameter
	lea ebx, [ebp-0x3a]
	mov [esp+0x18], ebx
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x4
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x51447074
	mov dword [esp+0x4], 0x6d6c6f63
	mov [esp], edi
	call GetEventParameter
	mov [esp], ebx
	call _ZN10MacDisplay13GlobalToLocalER5Point
	lea eax, [ebp-0x28]
	mov [esp+0x18], eax
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x4
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x6d61676e
	mov dword [esp+0x4], 0x6b6d6f64
	mov [esp], edi
	call GetEventParameter
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov edx, [eax+0x24]
	mov eax, [ebp-0x28]
	mov [esp+0xc], eax
	mov eax, [ebp-0x3a]
	mov [esp+0x8], eax
	mov eax, [ebp-0x24]
	jmp _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_290
_ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_230:
	lea eax, [ebp-0x3a]
	mov [esp+0x18], eax
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0xe
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x68636d64
	mov dword [esp+0x4], 0x2d2d2d2d
	mov [esp], edi
	call GetEventParameter
	test eax, eax
	jnz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_60
	mov eax, [ebp-0x36]
	cmp eax, 0x68696465
	jz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_300
	cmp eax, 0x71756974
	jz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_310
	cmp eax, 0x546f676c
	jnz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_60
	call _ZN8MacTools15IsCursorVisibleEv
	test al, al
	jz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_320
	call _ZN8MacTools10HideCursorEv
	call _ZN10MacGlobals12UnlockSystemEv
	mov eax, 0x1
	jmp _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_120
_ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_200:
	cmp ebx, 0x3
	jz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_330
	cmp ebx, 0x4
	jnz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_60
	lea eax, [ebp-0x28]
	mov [esp+0x18], eax
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x4
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x6d61676e
	mov dword [esp+0x4], 0x6b6d6f64
	mov [esp], edi
	call GetEventParameter
	mov eax, [ebp+0x8]
	cmp byte [eax+0x28], 0x0
	jz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_340
	mov eax, [ebp-0x28]
	or ah, 0x4
	mov [ebp-0x28], eax
_ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_350:
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x38
	mov dword [esp+0x8], 0x200
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _ZN14CMacGameEngine18PostPseudoKeyEventEmmih
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x3b
	mov dword [esp+0x8], 0x1000
	mov eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _ZN14CMacGameEngine18PostPseudoKeyEventEmmih
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x3a
	mov dword [esp+0x8], 0x800
	mov eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _ZN14CMacGameEngine18PostPseudoKeyEventEmmih
	mov eax, [ebp-0x28]
	mov edx, [ebp+0x8]
	mov [edx+0x18], eax
	xor eax, eax
	jmp _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_120
_ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_170:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x40]
	mov eax, 0x1
	jmp _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_120
_ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_190:
	lea eax, [ebp-0x1a]
	mov [esp+0x18], eax
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x54455854
	mov dword [esp+0x4], 0x6b636872
	mov [esp], edi
	call GetEventParameter
	lea eax, [ebp-0x28]
	mov [esp+0x18], eax
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x4
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x6d61676e
	mov dword [esp+0x4], 0x6b636f64
	mov [esp], edi
	call GetEventParameter
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov eax, [ebp-0x28]
	mov [esp+0x8], eax
	movzx eax, byte [ebp-0x1a]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call dword [edx+0x28]
	xor eax, eax
	jmp _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_120
_ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_300:
	call _ZN10MacDisplay7SuspendEv
	test al, al
	jz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_60
_ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_90:
	call _ZN10MacGlobals10LockSystemEv
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x38]
	xor eax, eax
	jmp _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_120
_ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_330:
	lea eax, [ebp-0x1a]
	mov [esp+0x18], eax
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x54455854
	mov dword [esp+0x4], 0x6b636872
	mov [esp], edi
	call GetEventParameter
	lea eax, [ebp-0x28]
	mov [esp+0x18], eax
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x4
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x6d61676e
	mov dword [esp+0x4], 0x6b636f64
	mov [esp], edi
	call GetEventParameter
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov eax, [ebp-0x28]
	mov [esp+0x8], eax
	movzx eax, byte [ebp-0x1a]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call dword [edx+0x2c]
	xor eax, eax
	jmp _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_120
_ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_180:
	call _ZN10MacDisplay19UpdateScreenContextEv
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x34]
	xor eax, eax
	jmp _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_120
_ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_310:
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	mov [esp], ecx
	call dword [eax+0x40]
	mov eax, 0x1
	jmp _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_120
_ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_340:
	mov eax, [ebp-0x28]
	and ah, 0xfb
	mov [ebp-0x28], eax
	jmp _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_350
_ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_320:
	mov dword [esp], 0x0
	call _ZN8MacTools10ShowCursorEPK5Point
	call _ZN10MacGlobals10LockSystemEv
	mov eax, 0x1
	jmp _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_120
_ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_240:
	movzx eax, word [ebp-0x2e]
	mov [esp+0x4], eax
	mov eax, [ebp-0x32]
	mov [esp], eax
	call DisableMenuItem
	mov eax, 0x1
	jmp _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_120
_ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_110:
	call _ZN10MacGlobals12UnlockSystemEv
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x34]
	jmp _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_360
_ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_260:
	test byte [ebp-0x27], 0x1
	jz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_370
	mov word [ebp-0x1a], 0x2
	mov ecx, [ebp+0x8]
	mov byte [ecx+0x14], 0x1
	jmp _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_370
_ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_280:
	mov eax, [ebp+0x8]
	cmp byte [eax+0x14], 0x0
	jz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_380
	mov word [ebp-0x1a], 0x2
	mov byte [eax+0x14], 0x0
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0x8]
	jmp _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_390
_ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_220:
	call _ZN10MacDisplay12IsFullscreenEv
	test al, al
	jz _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_210
	lea ebx, [ebp-0x3a]
	mov dword [ebp-0x3a], 0x0
	mov dword [ebp-0x32], 0x0
	mov word [ebp-0x2e], 0x0
	mov dword [ebp-0x36], 0x68696465
	call GetCurrentEventTime
	lea eax, [ebp-0x28]
	mov [esp+0x18], eax
	mov dword [esp+0x14], 0x1
	fstp qword [esp+0xc]
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x636d6473
	mov dword [esp], 0x0
	call CreateEvent
	mov [esp+0x10], ebx
	mov dword [esp+0xc], 0xe
	mov dword [esp+0x8], 0x68636d64
	mov dword [esp+0x4], 0x2d2d2d2d
	mov eax, [ebp-0x28]
	mov [esp], eax
	call SetEventParameter
	call GetApplicationEventTarget
	mov [esp+0x4], eax
	mov eax, [ebp-0x28]
	mov [esp], eax
	call SendEventToEventTarget
	mov eax, [ebp-0x28]
	mov [esp], eax
	call ReleaseEvent
	jmp _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_60
_ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_380:
	mov edx, eax
	mov ecx, eax
	jmp _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_390
	nop
	
	
_ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_jumptab_0:
	dd _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_60
	dd _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_400
	dd _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_410
	dd _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_60
	dd _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_60
	dd _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_420
	dd _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_420
	dd _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_60
	dd _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_60
	dd _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_60
	dd _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef_430


;CMacGameEngine::DoDeactivate()
_ZN14CMacGameEngine12DoDeactivateEv:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;CMacGameEngine::DoMouseMoved(Point, Point, unsigned long)
_ZN14CMacGameEngine12DoMouseMovedE5PointS0_m:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;CMacGameEngine::DoMouseWheel(long, Point, unsigned long)
_ZN14CMacGameEngine12DoMouseWheelEl5Pointm:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;CMacGameEngine::OneShotTimer()
_ZN14CMacGameEngine12OneShotTimerEv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x410
	mov esi, [ebp+0x8]
	mov dword [esp+0x4], 0x400
	lea ebx, [ebp-0x408]
	mov [esp], ebx
	call _ZN10MacFolders17GetDataFolderPathEPci
	mov [esp], ebx
	call chdir
	mov dword [esp+0x4], 0x1e0
	mov dword [esp], 0x280
	call _ZN10MacDisplay12SetupDisplayEii
	mov ebx, eax
	test eax, eax
	jnz _ZN14CMacGameEngine12OneShotTimerEv_10
	mov [esp], esi
	call _ZN14CMacGameEngine20InstallEventHandlersEv
	mov eax, [esi]
	mov [esp], esi
	call dword [eax+0x10]
	add esp, 0x410
	pop ebx
	pop esi
	pop ebp
	ret
_ZN14CMacGameEngine12OneShotTimerEv_10:
	mov dword [esp], 0x4
	call __cxa_allocate_exception
	mov [eax], ebx
	mov dword [esp+0x8], 0x0
	mov edx, [0xd5cc010]
	mov [esp+0x4], edx
	mov [esp], eax
	call __cxa_throw


;CMacGameEngine::SetIsRunning(unsigned char)
_ZN14CMacGameEngine12SetIsRunningEh:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov [edx+0x1d], al
	test al, al
	jnz _ZN14CMacGameEngine12SetIsRunningEh_10
	pop ebp
	ret
_ZN14CMacGameEngine12SetIsRunningEh_10:
	mov eax, [edx]
	mov [ebp+0x8], edx
	mov ecx, [eax+0x34]
	pop ebp
	jmp ecx
	nop


;CMacGameEngine::HandleEventProc(OpaqueEventHandlerCallRef*, OpaqueEventRef*, void*)
_ZN14CMacGameEngine15HandleEventProcEP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x10]
	mov ecx, [eax]
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], eax
	call dword [ecx+0x14]
	cmp al, 0x1
	sbb eax, eax
	and eax, 0xffffd96e
	leave
	ret
	mov [esp], eax
	call __cxa_begin_catch
	call __cxa_end_catch
	mov eax, 0xffffd96e
	leave
	ret
	nop


;CMacGameEngine::IsQuitAvailable()
_ZN14CMacGameEngine15IsQuitAvailableEv:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	movzx eax, byte [eax+0x1d]
	pop ebp
	ret


;CMacGameEngine::DrawSplashScreen(char const*)
_ZN14CMacGameEngine16DrawSplashScreenEPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xbc
	lea ebx, [ebp-0x94]
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _ZN10MacFolders20GetDataFolderItemRefEPKcR5FSRef
	test eax, eax
	jz _ZN14CMacGameEngine16DrawSplashScreenEPKc_10
_ZN14CMacGameEngine16DrawSplashScreenEPKc_20:
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN14CMacGameEngine16DrawSplashScreenEPKc_10:
	mov [esp+0x4], ebx
	mov dword [esp], 0x0
	call CFURLCreateFromFSRef
	mov esi, eax
	test eax, eax
	jz _ZN14CMacGameEngine16DrawSplashScreenEPKc_20
	mov [esp], eax
	call CGDataProviderCreateWithURL
	mov edi, eax
	test eax, eax
	jz _ZN14CMacGameEngine16DrawSplashScreenEPKc_30
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call CGImageCreateWithPNGDataProvider
	mov [ebp-0xa4], eax
	test eax, eax
	jz _ZN14CMacGameEngine16DrawSplashScreenEPKc_40
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call _ZN10MacDisplay20GetCurrentDimensionsERiS0_
	call _ZN10MacDisplay11GetMainPortEv
	lea edx, [ebp-0x24]
	mov [esp+0x4], edx
	mov [esp], eax
	call QDBeginCGContext
	test eax, eax
	jz _ZN14CMacGameEngine16DrawSplashScreenEPKc_50
_ZN14CMacGameEngine16DrawSplashScreenEPKc_60:
	mov eax, [ebp-0xa4]
	mov [esp], eax
	call CGImageRelease
_ZN14CMacGameEngine16DrawSplashScreenEPKc_40:
	mov [esp], edi
	call CGDataProviderRelease
_ZN14CMacGameEngine16DrawSplashScreenEPKc_30:
	mov [esp], esi
	call CFRelease
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN14CMacGameEngine16DrawSplashScreenEPKc_50:
	cvtsi2ss xmm0, dword [ebp-0x20]
	movss [ebp-0xa0], xmm0
	cvtsi2ss xmm0, dword [ebp-0x1c]
	movss [ebp-0x9c], xmm0
	movss xmm0, dword [ebp-0xa0]
	movss [ebp-0x38], xmm0
	movss xmm0, dword [ebp-0x9c]
	movss [ebp-0x3c], xmm0
	xor ebx, ebx
	mov [ebp-0x40], ebx
	mov [ebp-0x44], ebx
	mov eax, [ebp-0x44]
	mov [esp+0x4], eax
	mov eax, [ebp-0x40]
	mov [esp+0x8], eax
	mov eax, [ebp-0x3c]
	mov [esp+0xc], eax
	mov eax, [ebp-0x38]
	mov [esp+0x10], eax
	mov eax, [ebp-0x24]
	mov [esp], eax
	call CGContextClearRect
	movss xmm0, dword [ebp-0xa0]
	movss [ebp-0x28], xmm0
	movss xmm0, dword [ebp-0x9c]
	movss [ebp-0x2c], xmm0
	mov [ebp-0x30], ebx
	mov [ebp-0x34], ebx
	mov eax, [ebp-0xa4]
	mov [esp+0x14], eax
	mov eax, [ebp-0x34]
	mov [esp+0x4], eax
	mov eax, [ebp-0x30]
	mov [esp+0x8], eax
	mov eax, [ebp-0x2c]
	mov [esp+0xc], eax
	mov eax, [ebp-0x28]
	mov [esp+0x10], eax
	mov eax, [ebp-0x24]
	mov [esp], eax
	call CGContextDrawImage
	mov eax, [ebp-0x24]
	mov [esp], eax
	call CGContextFlush
	call _ZN10MacDisplay11GetMainPortEv
	lea edx, [ebp-0x24]
	mov [esp+0x4], edx
	mov [esp], eax
	call QDEndCGContext
	jmp _ZN14CMacGameEngine16DrawSplashScreenEPKc_60
	nop


;CMacGameEngine::HandleAppleEvent(AEDesc const*, AEDesc*, long)
_ZN14CMacGameEngine16HandleAppleEventEPK6AEDescPS0_l:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x10]
	call _Z16GetMacGameEnginev
	mov ebx, eax
	test eax, eax
	jz _ZN14CMacGameEngine16HandleAppleEventEPK6AEDescPS0_l_10
	cmp esi, 0x71756974
	jz _ZN14CMacGameEngine16HandleAppleEventEPK6AEDescPS0_l_20
	cmp esi, 0x72617070
	jz _ZN14CMacGameEngine16HandleAppleEventEPK6AEDescPS0_l_30
_ZN14CMacGameEngine16HandleAppleEventEPK6AEDescPS0_l_10:
	mov eax, 0xfffff954
_ZN14CMacGameEngine16HandleAppleEventEPK6AEDescPS0_l_50:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_ZN14CMacGameEngine16HandleAppleEventEPK6AEDescPS0_l_20:
	mov eax, [eax]
	mov [esp], ebx
	call dword [eax+0x3c]
	test al, al
	jnz _ZN14CMacGameEngine16HandleAppleEventEPK6AEDescPS0_l_40
	mov eax, 0xffffff80
	jmp _ZN14CMacGameEngine16HandleAppleEventEPK6AEDescPS0_l_50
_ZN14CMacGameEngine16HandleAppleEventEPK6AEDescPS0_l_40:
	mov eax, [ebx]
	mov [esp], ebx
	call dword [eax+0x40]
	xor eax, eax
	jmp _ZN14CMacGameEngine16HandleAppleEventEPK6AEDescPS0_l_50
_ZN14CMacGameEngine16HandleAppleEventEPK6AEDescPS0_l_30:
	call _ZN10MacDisplay6ResumeEv
	test al, al
	jz _ZN14CMacGameEngine16HandleAppleEventEPK6AEDescPS0_l_10
	call _ZN10MacGlobals12UnlockSystemEv
	mov eax, [ebx]
	mov [esp], ebx
	call dword [eax+0x34]
	xor eax, eax
	jmp _ZN14CMacGameEngine16HandleAppleEventEPK6AEDescPS0_l_50


;CMacGameEngine::OneShotTimerProc(__EventLoopTimer*, void*)
_ZN14CMacGameEngine16OneShotTimerProcEP16__EventLoopTimerPv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _ZN14CMacGameEngine12OneShotTimerEv
_ZN14CMacGameEngine16OneShotTimerProcEP16__EventLoopTimerPv_10:
	leave
	jmp QuitApplicationEventLoop
	mov [esp], eax
	call __cxa_begin_catch
	call __cxa_end_catch
	jmp _ZN14CMacGameEngine16OneShotTimerProcEP16__EventLoopTimerPv_10


;CMacGameEngine::ProcessAllEvents()
_ZN14CMacGameEngine16ProcessAllEventsEv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	call _Z16GetMacGameEnginev
	mov ebx, eax
	mov byte [eax+0x1e], 0x0
	lea esi, [ebp-0xc]
	jmp _ZN14CMacGameEngine16ProcessAllEventsEv_10
_ZN14CMacGameEngine16ProcessAllEventsEv_20:
	mov eax, [sEventTargetRef]
	mov [esp+0x4], eax
	mov eax, [ebp-0xc]
	mov [esp], eax
	call SendEventToEventTarget
	mov eax, [ebp-0xc]
	mov [esp], eax
	call ReleaseEvent
_ZN14CMacGameEngine16ProcessAllEventsEv_10:
	mov [esp+0x14], esi
	mov dword [esp+0x10], 0x1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call ReceiveNextEvent
	test eax, eax
	jz _ZN14CMacGameEngine16ProcessAllEventsEv_20
	mov [esp], ebx
	call _ZN14CMacGameEngine16ProcessHIDEventsEv
	movzx eax, byte [ebx+0x1c]
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret


;CMacGameEngine::ProcessHIDEvents()
_ZN14CMacGameEngine16ProcessHIDEventsEv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov ebx, [ebp+0x8]
	cmp byte [ebx+0x1f], 0x0
	jnz _ZN14CMacGameEngine16ProcessHIDEventsEv_10
_ZN14CMacGameEngine16ProcessHIDEventsEv_20:
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
_ZN14CMacGameEngine16ProcessHIDEventsEv_10:
	lea esi, [ebp-0x24]
_ZN14CMacGameEngine16ProcessHIDEventsEv_30:
	mov [esp+0x4], esi
	mov eax, [ebx+0x20]
	mov [esp], eax
	call HIDGetEvent:F(0,18)
	test al, al
	jz _ZN14CMacGameEngine16ProcessHIDEventsEv_20
	cmp dword [ebp-0x24], 0x2
	jnz _ZN14CMacGameEngine16ProcessHIDEventsEv_30
	mov eax, [ebp-0x1c]
	test eax, eax
	setnz cl
	mov edx, [ebx+0x24]
	test edx, edx
	jz _ZN14CMacGameEngine16ProcessHIDEventsEv_30
	mov eax, [ebp-0x20]
	cmp eax, [edx+0xc]
	jnz _ZN14CMacGameEngine16ProcessHIDEventsEv_30
	mov [ebx+0x28], cl
	test cl, cl
	jz _ZN14CMacGameEngine16ProcessHIDEventsEv_40
	or dword [ebx+0x18], 0x400
_ZN14CMacGameEngine16ProcessHIDEventsEv_60:
	cmp byte [ebx+0x28], 0x0
	jz _ZN14CMacGameEngine16ProcessHIDEventsEv_50
	mov eax, [ebx]
	mov dword [esp+0x8], 0x39
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call dword [eax+0x28]
	jmp _ZN14CMacGameEngine16ProcessHIDEventsEv_20
_ZN14CMacGameEngine16ProcessHIDEventsEv_40:
	and dword [ebx+0x18], 0xfffffbff
	jmp _ZN14CMacGameEngine16ProcessHIDEventsEv_60
_ZN14CMacGameEngine16ProcessHIDEventsEv_50:
	mov eax, [ebx]
	mov dword [esp+0x8], 0x39
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call dword [eax+0x2c]
	jmp _ZN14CMacGameEngine16ProcessHIDEventsEv_20
	nop


;CMacGameEngine::PostPseudoKeyEvent(unsigned long, unsigned long, int, unsigned char)
_ZN14CMacGameEngine18PostPseudoKeyEventEmmih:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov eax, [ebp+0x10]
	mov esi, [ebp+0x14]
	cmp byte [ebp+0x18], 0x0
	jnz _ZN14CMacGameEngine18PostPseudoKeyEventEmmih_10
	test [ebx+0x18], eax
	setnz dl
	test ecx, eax
	setnz al
	cmp dl, al
	jz _ZN14CMacGameEngine18PostPseudoKeyEventEmmih_20
	test dl, dl
	jnz _ZN14CMacGameEngine18PostPseudoKeyEventEmmih_30
	test al, al
	jnz _ZN14CMacGameEngine18PostPseudoKeyEventEmmih_40
_ZN14CMacGameEngine18PostPseudoKeyEventEmmih_20:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_ZN14CMacGameEngine18PostPseudoKeyEventEmmih_10:
	test [ebx+0x18], eax
	setnz dl
	test ecx, eax
	setnz al
	cmp dl, al
	jz _ZN14CMacGameEngine18PostPseudoKeyEventEmmih_20
	mov eax, [ebx]
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call dword [eax+0x28]
	mov eax, [ebx]
	mov [ebp+0x10], esi
	mov dword [ebp+0xc], 0x0
	mov [ebp+0x8], ebx
	mov ecx, [eax+0x2c]
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp ecx
_ZN14CMacGameEngine18PostPseudoKeyEventEmmih_40:
	mov eax, [ebx]
	mov [ebp+0x10], esi
	mov dword [ebp+0xc], 0x0
	mov [ebp+0x8], ebx
	mov ecx, [eax+0x28]
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp ecx
_ZN14CMacGameEngine18PostPseudoKeyEventEmmih_30:
	mov eax, [ebx]
	mov [ebp+0x10], esi
	mov dword [ebp+0xc], 0x0
	mov ecx, [eax+0x2c]
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp ecx


;CMacGameEngine::InstallEventHandlers()
_ZN14CMacGameEngine20InstallEventHandlersEv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	mov esi, [ebp+0x8]
	call GetEventDispatcherTarget
	mov [sEventTargetRef], eax
	call _ZN10MacDisplay12IsWindowModeEv
	test al, al
	jz _ZN14CMacGameEngine20InstallEventHandlersEv_10
	lea edi, [ebp-0x98]
	mov dword [esp+0x8], 0x58
	mov dword [esp+0x4], _ZZN14CMacGameEngine20InstallEventHandlersEvE5C.156
	mov [esp], edi
	call memcpy
	call GetApplicationEventTarget
	lea edx, [esi+0xc]
	mov [esp+0x14], edx
	mov [esp+0x10], esi
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0xb
	mov dword [esp+0x4], _ZN14CMacGameEngine15HandleEventProcEP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv
	mov [esp], eax
	call InstallEventHandler
	mov ebx, eax
	test eax, eax
	jnz _ZN14CMacGameEngine20InstallEventHandlersEv_20
	mov dword [esp+0x8], 0x50
	mov dword [esp+0x4], _ZZN14CMacGameEngine20InstallEventHandlersEvE5C.157
	mov [esp], edi
	call memcpy
	call _ZN10MacDisplay13GetMainWindowEv
	mov [esp], eax
	call GetWindowEventTarget
	lea edx, [esi+0x10]
	mov [esp+0x14], edx
	mov [esp+0x10], esi
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0xa
	mov dword [esp+0x4], _ZN14CMacGameEngine15HandleEventProcEP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv
	mov [esp], eax
	call InstallEventHandler
	mov ebx, eax
	test eax, eax
	jz _ZN14CMacGameEngine20InstallEventHandlersEv_30
_ZN14CMacGameEngine20InstallEventHandlersEv_20:
	mov dword [esp], 0x4
	call __cxa_allocate_exception
	mov [eax], ebx
	mov dword [esp+0x8], 0x0
	mov edx, [0xd5cc010]
	mov [esp+0x4], edx
	mov [esp], eax
	call __cxa_throw
_ZN14CMacGameEngine20InstallEventHandlersEv_10:
	lea edi, [ebp-0x98]
	mov dword [esp+0x8], 0x78
	mov dword [esp+0x4], _ZZN14CMacGameEngine20InstallEventHandlersEvE5C.158
	mov [esp], edi
	call memcpy
	call GetApplicationEventTarget
	lea edx, [esi+0xc]
	mov [esp+0x14], edx
	mov [esp+0x10], esi
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0xf
	mov dword [esp+0x4], _ZN14CMacGameEngine15HandleEventProcEP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv
	mov [esp], eax
	call InstallEventHandler
	mov ebx, eax
	test eax, eax
	jnz _ZN14CMacGameEngine20InstallEventHandlersEv_20
	lea eax, [ebp-0x1a]
	mov [esp+0x10], eax
	lea eax, [ebp-0x20]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x68696465
	mov dword [esp], 0x0
	call GetIndMenuItemWithCommandID
	test eax, eax
	jnz _ZN14CMacGameEngine20InstallEventHandlersEv_30
	mov dword [ebp-0x98], 0x636d6473
	mov dword [ebp-0x94], 0x1
	mov eax, [ebp-0x20]
	mov [esp], eax
	call GetMenuEventTarget
	lea edx, [esi+0x10]
	mov [esp+0x14], edx
	mov [esp+0x10], esi
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _ZN14CMacGameEngine15HandleEventProcEP25OpaqueEventHandlerCallRefP14OpaqueEventRefPv
	mov [esp], eax
	call InstallEventHandler
_ZN14CMacGameEngine20InstallEventHandlersEv_30:
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x71756974
	mov dword [esp+0x8], _ZN14CMacGameEngine16HandleAppleEventEPK6AEDescPS0_l
	mov dword [esp+0x4], 0x71756974
	mov dword [esp], 0x61657674
	call AEInstallEventHandler
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x72617070
	mov dword [esp+0x8], _ZN14CMacGameEngine16HandleAppleEventEPK6AEDescPS0_l
	mov dword [esp+0x4], 0x72617070
	mov dword [esp], 0x61657674
	call AEInstallEventHandler
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CMacGameEngine::Run(int, char**)
_ZN14CMacGameEngine3RunEiPPc:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov [ebx+0x4], eax
	mov eax, [ebp+0x10]
	mov [ebx+0x8], eax
	mov eax, [ebx]
	mov [esp], ebx
	call dword [eax+0x8]
	test al, al
	jz _ZN14CMacGameEngine3RunEiPPc_10
	call _ZN10MacDisplay10InitializeEv
	test eax, eax
	jz _ZN14CMacGameEngine3RunEiPPc_20
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_ZN14CMacGameEngine3RunEiPPc_20:
	call _ZN14MacPreferences11SynchronizeEv
	call GetMainEventQueue
	mov [esp], eax
	call FlushEventQueue
	mov eax, [ebx]
	mov [esp], ebx
	call dword [eax+0xc]
_ZN14CMacGameEngine3RunEiPPc_10:
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _ZN14MacPreferences11SynchronizeEv
	nop


;CMacGameEngine::Quit()
_ZN14CMacGameEngine4QuitEv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	call _Z16GetMacGameEnginev
	cmp byte [eax+0x1d], 0x0
	jnz _ZN14CMacGameEngine4QuitEv_10
	leave
	ret
_ZN14CMacGameEngine4QuitEv_10:
	call _Z16GetMacGameEnginev
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x40]
	leave
	ret


;CMacGameEngine::DoQuit()
_ZN14CMacGameEngine6DoQuitEv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, [ebx]
	mov [esp], ebx
	call dword [eax+0x3c]
	test al, al
	jz _ZN14CMacGameEngine6DoQuitEv_10
	mov byte [ebx+0x1c], 0x1
_ZN14CMacGameEngine6DoQuitEv_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;CMacGameEngine::DoKeyUp(unsigned char, unsigned long)
_ZN14CMacGameEngine7DoKeyUpEhm:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;CMacGameEngine::MacMain()
_ZN14CMacGameEngine7MacMainEv:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	call GetMainEventLoop
	lea edx, [ebp-0xc]
	mov [esp+0x1c], edx
	mov edx, [ebp+0x8]
	mov [esp+0x18], edx
	mov dword [esp+0x14], _ZN14CMacGameEngine16OneShotTimerProcEP16__EventLoopTimerPv
	pxor xmm0, xmm0
	movsd [esp+0xc], xmm0
	movsd [esp+0x4], xmm0
	mov [esp], eax
	call InstallEventLoopTimer
	call RunApplicationEventLoop
	call _ZN10MacDisplay14ReleaseDisplayEv
	leave
	ret
	nop
	add [eax], al


;CMacGameEngine::DoKeyDown(unsigned char, unsigned long)
_ZN14CMacGameEngine9DoKeyDownEhm:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;CMacGameEngine::DoMouseUp(unsigned short, Point, unsigned long, unsigned long)
_ZN14CMacGameEngine9DoMouseUpEt5Pointmm:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;CMacGameEngine::CMacGameEngine()
_ZN14CMacGameEngineC2Ev:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov dword [ebx], _ZTV14CMacGameEngine+0x8
	mov dword [ebx+0x4], 0x0
	mov dword [ebx+0x8], 0x0
	mov dword [ebx+0xc], 0x0
	mov dword [ebx+0x10], 0x0
	mov byte [ebx+0x14], 0x0
	call GetCurrentEventKeyModifiers
	mov [ebx+0x18], eax
	mov byte [ebx+0x1c], 0x0
	mov byte [ebx+0x1d], 0x0
	mov byte [ebx+0x1e], 0x0
	mov byte [ebx+0x1f], 0x0
	mov dword [ebx+0x20], 0x0
	mov dword [ebx+0x24], 0x0
	shr eax, 0xa
	and eax, 0x1
	mov [ebx+0x28], al
	call GetMainEventQueue
	add esp, 0x4
	pop ebx
	pop ebp
	ret
	add [eax], al


;CMacGameEngine::~CMacGameEngine()
_ZN14CMacGameEngineD0Ev:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [ebx], _ZTV14CMacGameEngine+0x8
	mov eax, [ebx+0xc]
	test eax, eax
	jz _ZN14CMacGameEngineD0Ev_10
	mov [esp], eax
	call RemoveEventHandler
_ZN14CMacGameEngineD0Ev_10:
	mov eax, [ebx+0x10]
	test eax, eax
	jz _ZN14CMacGameEngineD0Ev_20
	mov [esp], eax
	call RemoveEventHandler
_ZN14CMacGameEngineD0Ev_20:
	cmp byte [ebx+0x1f], 0x0
	jz _ZN14CMacGameEngineD0Ev_30
	mov ecx, [ebx+0x20]
	test ecx, ecx
	jz _ZN14CMacGameEngineD0Ev_40
	call HIDReleaseAllDeviceQueues:F(0,17)
_ZN14CMacGameEngineD0Ev_40:
	call HIDReleaseDeviceList:F(0,1)
_ZN14CMacGameEngineD0Ev_30:
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _ZdlPv


;CMacGameEngine::~CMacGameEngine()
_ZN14CMacGameEngineD1Ev:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [ebx], _ZTV14CMacGameEngine+0x8
	mov eax, [ebx+0xc]
	test eax, eax
	jz _ZN14CMacGameEngineD1Ev_10
	mov [esp], eax
	call RemoveEventHandler
_ZN14CMacGameEngineD1Ev_10:
	mov eax, [ebx+0x10]
	test eax, eax
	jz _ZN14CMacGameEngineD1Ev_20
	mov [esp], eax
	call RemoveEventHandler
_ZN14CMacGameEngineD1Ev_20:
	cmp byte [ebx+0x1f], 0x0
	jz _ZN14CMacGameEngineD1Ev_30
	mov edx, [ebx+0x20]
	test edx, edx
	jz _ZN14CMacGameEngineD1Ev_40
	call HIDReleaseAllDeviceQueues:F(0,17)
_ZN14CMacGameEngineD1Ev_40:
	add esp, 0x14
	pop ebx
	pop ebp
	jmp HIDReleaseDeviceList:F(0,1)
_ZN14CMacGameEngineD1Ev_30:
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;CMacGameEngine::~CMacGameEngine()
_ZN14CMacGameEngineD2Ev:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [ebx], _ZTV14CMacGameEngine+0x8
	mov eax, [ebx+0xc]
	test eax, eax
	jz _ZN14CMacGameEngineD2Ev_10
	mov [esp], eax
	call RemoveEventHandler
_ZN14CMacGameEngineD2Ev_10:
	mov eax, [ebx+0x10]
	test eax, eax
	jz _ZN14CMacGameEngineD2Ev_20
	mov [esp], eax
	call RemoveEventHandler
_ZN14CMacGameEngineD2Ev_20:
	cmp byte [ebx+0x1f], 0x0
	jz _ZN14CMacGameEngineD2Ev_30
	mov eax, [ebx+0x20]
	test eax, eax
	jz _ZN14CMacGameEngineD2Ev_40
	call HIDReleaseAllDeviceQueues:F(0,17)
_ZN14CMacGameEngineD2Ev_40:
	add esp, 0x14
	pop ebx
	pop ebp
	jmp HIDReleaseDeviceList:F(0,1)
_ZN14CMacGameEngineD2Ev_30:
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;CMacGameEngine::IsQuitting() const
_ZNK14CMacGameEngine10IsQuittingEv:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	movzx eax, byte [eax+0x1c]
	pop ebp
	ret


;main
main:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp], 0x4
	call _ZN8MacTools11SetCursorIDEs
	call NSApplicationLoad
	call _Z16GetMacGameEnginev
	mov edx, [ebp+0xc]
	mov [esp+0x8], edx
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov [esp], eax
	call _ZN14CMacGameEngine3RunEiPPc
main_20:
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	cmp edx, 0x2
	jz main_10
	mov [esp], eax
	call __cxa_begin_catch
main_30:
	call __cxa_end_catch
	jmp main_20
main_10:
	mov [esp], eax
	call __cxa_begin_catch
	cmp dword [eax], 0x4e22
	jnz main_30
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_not_authorized
	call _ZN8MacTools12MessageAlertEPKcS1_h
	jmp main_30
	mov ebx, eax
	call __cxa_end_catch
	mov [esp], ebx
	call _Unwind_Resume
	add [eax], al


;Initialized global or static variables of MacGameEngine:
SECTION .data
kBuildTag: dd _cstring_i5works091508
kProductTag: dd _cstring_0c65b5a5399d11dc, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of MacGameEngine:
SECTION .rdata
_ZZN14CMacGameEngine20InstallEventHandlersEvE5C.158: dd 0x6170706c, 0x1, 0x6170706c, 0x2, 0x6d6f7573, 0x1, 0x6d6f7573, 0x2, 0x6d6f7573, 0x5, 0x6d6f7573, 0x6, 0x6d6f7573, 0xa, 0x6b657962, 0x1, 0x6b657962, 0x2, 0x6b657962, 0x3, 0x6b657962, 0x4, 0x74657874, 0x2, 0x636d6473, 0x1, 0x50726976, 0x50726976, 0x50726976, 0x54687264, 0x0, 0x0
_ZZN14CMacGameEngine20InstallEventHandlersEvE5C.157: dd 0x6d6f7573, 0x1, 0x6d6f7573, 0x2, 0x6b657962, 0x1, 0x6b657962, 0x2, 0x6b657962, 0x3, 0x6b657962, 0x4, 0x74657874, 0x2, 0x77696e64, 0x5b, 0x77696e64, 0x5c, 0x77696e64, 0x48, 0x0, 0x0, 0x0, 0x0
_ZZN14CMacGameEngine20InstallEventHandlersEvE5C.156: dd 0x6d6f7573, 0x5, 0x6d6f7573, 0x6, 0x6d6f7573, 0xa, 0x6170706c, 0x1, 0x6170706c, 0x2, 0x6d656e75, 0x1, 0x6d656e75, 0x2, 0x636d6473, 0x1, 0x636d6473, 0x2, 0x50726976, 0x50726976, 0x50726976, 0x54687264
;VTable for CMacGameEngine:
_ZTV14CMacGameEngine: dd 0x0, 0x3b4c20, _ZN14CMacGameEngineD1Ev, _ZN14CMacGameEngineD0Ev, _ZN14CMacGameEngine10InitializeEv, _ZN14CMacGameEngine7MacMainEv, 0x0, _ZN14CMacGameEngine11HandleEventEP14OpaqueEventRef, _ZN14CMacGameEngine11DoMouseDownEt5Pointmm, _ZN14CMacGameEngine9DoMouseUpEt5Pointmm, _ZN14CMacGameEngine12DoMouseMovedE5PointS0_m, _ZN14CMacGameEngine12DoMouseWheelEl5Pointm, _ZN14CMacGameEngine9DoKeyDownEhm, _ZN14CMacGameEngine7DoKeyUpEhm, _ZN14CMacGameEngine11DoTextInputEt, _ZN14CMacGameEngine10DoActivateEv, _ZN14CMacGameEngine12DoDeactivateEv, _ZN14CMacGameEngine15IsQuitAvailableEv, _ZN14CMacGameEngine6DoQuitEv, 0x0, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of MacGameEngine:
SECTION .bss
sEventTargetRef: resb 0x80


;All cstrings:
SECTION .rdata
_cstring_not_authorized:		db "Not authorized",0
_cstring_i5works091508:		db "i5works-09/15/08",0
_cstring_0c65b5a5399d11dc:		db "0C65B5A5399D11DCA265000A95675086",0



;All constant floats and doubles:
SECTION .rdata

