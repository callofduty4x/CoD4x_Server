#include "bg_animation.hpp"
#include "qshared.hpp"
#include "g_public.hpp"
#include "dobj.hpp"
#include "scr_vm.hpp"

extern "C" void __cdecl BG_Player_DoControllers(CEntPlayerInfo *player, DObj *obj, int *partBits)
{
  int i;

  for(i = 0; i < 6; ++i)
  {
    DObjSetControlTagAngles(obj, partBits, player->tag[i], player->control->angles[i]);
  }
  DObjSetLocalTag(obj, partBits, 0, player->control->tag_origin_offset, player->control->tag_origin_angles);
}

uint16_t* controller_names[] = 
{
    &scr_const.back_low,
    &scr_const.back_mid,
    &scr_const.back_up,
    &scr_const.neck,
    &scr_const.head,
    &scr_const.pelvis
};
  
