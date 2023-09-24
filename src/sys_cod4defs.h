/*
===========================================================================
    Copyright (C) 2010-2013  Ninja and TheKelm

    This file is part of CoD4X18-Server source code.

    CoD4X18-Server source code is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as
    published by the Free Software Foundation, either version 3 of the
    License, or (at your option) any later version.

    CoD4X18-Server source code is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>
===========================================================================
*/



#ifndef __SYS_COD4DEFS_H__
#define __SYS_COD4DEFS_H__


#define EXECUTABLE_NAME "cod4x18_dedrun"

#define PRODUCT_NAME				"Call of Duty 4 - Modern Warfare Dedicated Server"
#define BASEGAME					"main"
#define CLIENT_WINDOW_TITLE     	"Call of Duty 4 - Modern Warfare Dedicated Server"
#define CLIENT_WINDOW_MIN_TITLE 	"CoD4 MW"

#define PORT_MASTER 20810
#define MASTER_SERVER_NAME "cod4master.activision.com"

#define HEARTBEAT_GAME "COD-4"
#define HEARTBEAT_DEAD "flatline"

#define PRODUCT_VERSION "1.0"

#define Q3_VERSION "-"

#define GAME_STRING "CoD4 X"

#include "version/version.h"

#define MAX_CLIENTS 64
//#define MAX_CONFIGSTRINGS 2*2442
#define MAX_CONFIGSTRINGS 4883
// Configstrings limits.
#define MAX_LOCATIONSELECTORS  3
#define MAX_STATUSICONS        8
#define MAX_HEADICONS          15
#define MAX_SHOCKS             16
#define MAX_TAGS               32
#define MAX_MENUS              32
#define MAX_FX                 100
#define MAX_SOUNDS             256
#define MAX_FXONTAGS           256
#define MAX_MATERIALS          256
#define MAX_LOCALIZEDSTRINGS   512
#define MAX_MODELS             512

// Configstrings types offsets.
#define CS_LOCALIZEDSTRINGS   309
#define CS_LOCATIONSELECTORS  827
#define CS_MODELS             (CS_LOCATIONSELECTORS + MAX_LOCATIONSELECTORS)
#define CS_SOUNDS             (CS_MODELS + MAX_MODELS)
#define CS_FX                 (CS_SOUNDS + MAX_SOUNDS)
#define CS_FXONTAGS           (CS_FX + MAX_FX)
#define CS_SHOCKS             (CS_FXONTAGS + MAX_FXONTAGS)
#define CS_MENUS              (CS_SHOCKS + MAX_SHOCKS)
#define CS_MATERIALS          (CS_MENUS + MAX_MENUS)
#define CS_STATUSICONS        2259
#define CS_HEADICONS          (CS_STATUSICONS + MAX_STATUSICONS)
#define CS_TAGS               (CS_HEADICONS + MAX_HEADICONS)

#endif
