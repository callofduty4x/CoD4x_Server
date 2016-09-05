;===========================================================================
;    Copyright (C) 2010-2013  Ninja and TheKelm

;    This file is part of CoD4X18-Server source code.

;    CoD4X18-Server source code is free software: you can redistribute it and/or modify
;    it under the terms of the GNU Affero General Public License as
;    published by the Free Software Foundation, either version 3 of the
;    License, or (at your option) any later version.

;    CoD4X18-Server source code is distributed in the hope that it will be useful,
;    but WITHOUT ANY WARRANTY; without even the implied warranty of
;    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;    GNU Affero General Public License for more details.

;    You should have received a copy of the GNU Affero General Public License
;    along with this program.  If not, see <http://www.gnu.org/licenses/>
;===========================================================================




SECTION .text

global Scr_InitVariables
Scr_InitVariables:
	jmp dword [oScr_InitVariables]

global Scr_Init
Scr_Init:
	jmp dword [oScr_Init]

global Scr_Settings
Scr_Settings:
	jmp dword [oScr_Settings]

global Scr_AddEntity
Scr_AddEntity:
	jmp dword [oScr_AddEntity]

global Scr_Cleanup
Scr_Cleanup:
	jmp dword [oScr_Cleanup]

global GScr_Shutdown
GScr_Shutdown:
	jmp dword [oGScr_Shutdown]

global Scr_AllocArray
Scr_AllocArray:
	jmp dword [oScr_AllocArray]

global Scr_GetNumParam
Scr_GetNumParam:
	jmp dword [oScr_GetNumParam]

;global Scr_GetInt
;Scr_GetInt:
;	jmp dword [oScr_GetInt]

global Scr_GetFloat
Scr_GetFloat:
	jmp dword [oScr_GetFloat]

global Scr_GetString
Scr_GetString:
	jmp dword [oScr_GetString]

global Scr_GetEntity
Scr_GetEntity:
	jmp dword [oScr_GetEntity]

global Scr_GetConstString
Scr_GetConstString:
	jmp dword [oScr_GetConstString]

global Scr_GetType
Scr_GetType:
	jmp dword [oScr_GetType]

global Scr_GetPointerType
Scr_GetPointerType:
	jmp dword [oScr_GetPointerType]

global Scr_GetVector
Scr_GetVector:
	jmp dword [oScr_GetVector]

global Scr_GetObject
Scr_GetObject:
	jmp dword [oScr_GetObject]

global Scr_Error
Scr_Error:
	jmp dword [oScr_Error]

global Scr_SetLoading
Scr_SetLoading:
	jmp dword [oScr_SetLoading]

global Scr_ParamError
Scr_ParamError:
	jmp dword [oScr_ParamError]

global Scr_ObjectError
Scr_ObjectError:
	jmp dword [oScr_ObjectError]

global Scr_AddInt
Scr_AddInt:
	jmp dword [oScr_AddInt]

global Scr_AddFloat
Scr_AddFloat:
	jmp dword [oScr_AddFloat]

global Scr_AddBool
Scr_AddBool:
	jmp dword [oScr_AddBool]

global Scr_AddString
Scr_AddString:
	jmp dword [oScr_AddString]

global Scr_AddConstString
Scr_AddConstString:
	jmp dword [oScr_AddConstString]

global Scr_AddUndefined
Scr_AddUndefined:
	jmp dword [oScr_AddUndefined]

global Scr_AddVector
Scr_AddVector:
	jmp dword [oScr_AddVector]

global Scr_AddArray
Scr_AddArray:
	jmp dword [oScr_AddArray]

global Scr_MakeArray
Scr_MakeArray:
	jmp dword [oScr_MakeArray]

;global Scr_Notify
;Scr_Notify:
;	jmp dword [oScr_Notify]

;global Scr_NotifyNum
;Scr_NotifyNum:
;	jmp dword [oScr_NotifyNum]

;Not working :(
global Scr_PrintPrevCodePos
Scr_PrintPrevCodePos:
	jmp dword [oScr_PrintPrevCodePos]

global Scr_GetFunctionHandle
Scr_GetFunctionHandle:
	jmp dword [oScr_GetFunctionHandle]

global Scr_ExecEntThread
Scr_ExecEntThread:
	jmp dword [oScr_ExecEntThread]

global Scr_ExecThread
Scr_ExecThread:
	jmp dword [oScr_ExecThread]

global Scr_FreeThread
Scr_FreeThread:
	jmp dword [oScr_FreeThread]

global Scr_CreateCanonicalFilename
Scr_CreateCanonicalFilename:
	jmp dword [oScr_CreateCanonicalFilename]

global FindVariable
FindVariable:
	jmp dword [oFindVariable]

global FindObject
FindObject:
	jmp dword [oFindObject]

global GetNewVariable
GetNewVariable:
	jmp dword [oGetNewVariable]

global ScriptParse
ScriptParse:
	jmp dword [oScriptParse]

global GetObjectA
GetObjectA:
	jmp dword [oGetObjectA]

global GetVariable
GetVariable:
	jmp dword [oGetVariable]

global ScriptCompile
ScriptCompile:
	jmp dword [oScriptCompile]

global Scr_AddSourceBuffer
Scr_AddSourceBuffer:
	jmp dword [oScr_AddSourceBuffer]

global Scr_InitAllocNode
Scr_InitAllocNode:
	jmp dword [oScr_InitAllocNode]

global Scr_BeginLoadScripts
Scr_BeginLoadScripts:
	jmp dword [oScr_BeginLoadScripts]

global Scr_SetClassMap
Scr_SetClassMap:
	jmp dword [oScr_SetClassMap]

global Scr_AddFields
Scr_AddFields:
	jmp dword [oScr_AddFields]

global Scr_SetGenericField
Scr_SetGenericField:
	jmp dword [oScr_SetGenericField]

global Scr_GetGenericField
Scr_GetGenericField:
	jmp dword [oScr_GetGenericField]

global GScr_AddFieldsForHudElems
GScr_AddFieldsForHudElems:
	jmp dword [oGScr_AddFieldsForHudElems]

global GScr_AddFieldsForRadiant
GScr_AddFieldsForRadiant:
	jmp dword [oGScr_AddFieldsForRadiant]

global Scr_AddHudElem
Scr_AddHudElem:
	jmp dword [oScr_AddHudElem]

global Scr_FreeHudElem
Scr_FreeHudElem:
	jmp dword [oScr_FreeHudElem]

global Scr_EndLoadScripts
Scr_EndLoadScripts:
	jmp dword [oScr_EndLoadScripts]

global Scr_ConstructMessageString
Scr_ConstructMessageString:
	jmp dword [oScr_ConstructMessageString]

global Scr_SetString
Scr_SetString:
	jmp dword [oScr_SetString]

global VM_Notify
VM_Notify:
	jmp dword [oVM_Notify]

global FindEntityId
FindEntityId:
	jmp dword [oFindEntityId]

global AllocObject
AllocObject:
	jmp dword [oAllocObject]

global RemoveRefToValue
RemoveRefToValue:
	jmp dword [oRemoveRefToValue]

global Scr_AllocString
Scr_AllocString:
	jmp dword [oScr_AllocString]


SECTION .rodata

oScr_InitVariables dd 0x815288a
oScr_Init dd 0x815d8e2
oScr_Settings dd 0x815cf90
oScr_AddEntity dd 0x80c7770
oScr_Cleanup dd 0x815cf84
oGScr_Shutdown dd 0x80bf610
oScr_AllocArray dd 0x8153cca
oAllocObject dd 0x8153e88
oScr_GetNumParam dd 0x815d01e
;oScr_GetInt dd 0x8160fee
oScr_GetFloat dd 0x816094c
oScr_GetString dd 0x8160932
oScr_GetEntity dd 0x80c76ec
oScr_GetConstString dd 0x816074c
oScr_GetObject dd 0x815f8ce
oScr_GetType dd 0x815f7c8
oScr_GetPointerType dd 0x815f4d4
oScr_GetVector dd 0x815ffe6
oScr_Error dd 0x815e9f4
oScr_SetLoading dd 0x815cfba
oScr_ParamError dd 0x815f20e
oScr_ObjectError dd 0x815f134
oScr_AddInt dd 0x815f01a
oScr_AddFloat dd 0x815ef9a
oScr_AddBool dd 0x815eac6
oScr_AddString dd 0x815ec68
oScr_AddConstString dd 0x815eb46
oScr_AddUndefined dd 0x815eea2
oScr_AddVector dd 0x815ee12
oScr_AddArray dd 0x815d5c0
oScr_MakeArray dd 0x815ed8a
oScr_Notify dd 0x80c7604
oScr_NotifyNum dd 0x815e762
oScr_PrintPrevCodePos dd 0x814ef6e
oScr_GetFunctionHandle dd 0x814c1b4
oScr_ExecEntThread dd 0x80c765c
oScr_ExecThread dd 0x8165032
oScr_FreeThread dd 0x815d062
oScr_CreateCanonicalFilename dd 0x81516ee
oFindVariable dd 0x81542d4
oFindObject dd 0x8152294
oGetNewVariable dd 0x81545ce
oScriptParse dd 0x816b5da
oGetObjectA dd 0x8154046
oGetVariable dd 0x815540a
oScriptCompile dd 0x81491d8
oScr_AddSourceBuffer dd 0x814fbac
oScr_InitAllocNode dd 0x814fea6
oScr_BeginLoadScripts dd 0x814c266
oScr_SetClassMap dd 0x8153a3a
oScr_AddFields dd 0x81535ba
oScr_SetGenericField dd 0x80c7eae
oScr_GetGenericField dd 0x80c7d36
oGScr_AddFieldsForHudElems dd 0x808db80
oGScr_AddFieldsForRadiant dd 0x80c77ec
oScr_AddHudElem dd 0x80c7746
oScr_FreeHudElem dd 0x80c778e
oScr_EndLoadScripts dd 0x814bcee
oScr_ConstructMessageString dd 0x80c02aa
oScr_SetString dd 0x81512fc
oVM_Notify dd 0x815da56
oFindEntityId dd 0x81529a4
oRemoveRefToValue dd 0x8156054
oScr_AllocString dd 0x80c0c62
