#include "q_shared.h"
#include "g_public.h"
#include "dobj.h"

extern "C" void __cdecl BG_Player_DoControllers(CEntPlayerInfo *player, DObj *obj, int *partBits)
{
  int i;

  for(i = 0; i < 6; ++i)
  {
    DObjSetControlTagAngles(obj, partBits, player->tag[i], player->control->angles[i]);
  }
  DObjSetLocalTag(obj, partBits, 0, player->control->tag_origin_offset, player->control->tag_origin_angles);
}
