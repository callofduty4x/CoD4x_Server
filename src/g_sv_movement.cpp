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



#include "q_shared.hpp"
#include "q_shared.hpp"
#include "g_shared.hpp"
#include "entity.hpp"

__cdecl __optimize3 void StuckInClient( gentity_t* gen )
{

}


float Dirty_GetJumpHeight(unsigned int num)
{
    return static_cast<int>(num) > level.maxclients ? 40 : level.clients[num].jumpHeight;
}
