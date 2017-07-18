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

;global CM_TraceBox
;CM_TraceBox:
;	jmp dword [oCM_TraceBox]

;global CM_TempBoxModel
;CM_TempBoxModel:
;	jmp dword [oCM_TempBoxModel]

;global CM_TransformedBoxTrace
;CM_TransformedBoxTrace:
;	jmp dword [oCM_TransformedBoxTrace]

SECTION .rodata

oCM_TraceBox dd 0x811a5a2
oCM_TempBoxModel dd 0x811c442
oCM_TransformedBoxTrace dd 0x811e3c2
