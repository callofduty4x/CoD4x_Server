#include "q_shared.h"
#include "scr_vm.h"
#include "g_scr_vehicle.h"

uint16_t* s_wheelTags[] = { 
    &scr_const.tag_wheel_front_left,
    &scr_const.tag_wheel_front_right,
    &scr_const.tag_wheel_back_left,
    &scr_const.tag_wheel_back_right,
    &scr_const.tag_wheel_middle_left,
    &scr_const.tag_wheel_middle_right,
    NULL };

/*
int8_t VEH_PlayerRotation(gentity_s *player, vehicle_physic_t *phys)
{
  float inputYaw;
  float normalizedInputYaw;
  int direction;
  float currentYaw;
  float angle;


  inputYaw = SHORT2ANGLE((double)player->client->sess.cmd.angles[1]) + 180.0;
  normalizedInputYaw = AngleNormalize360(inputYaw);
  currentYaw = phys->angles[1] + 90.0;
  angle = normalizedInputYaw - AngleNormalize360(currentYaw);
	angle -= floorf( angle * ( 1.0f / 360.0f ) + 0.5 ) * 360.0f;
  if ( angle >= 0.0 )
  {
    direction = -1;
  }
  else
  {
    direction = 1;
  }
  if ( angle >= 20.0 )
  {
    return 127 * direction;
  }
  if ( angle >= 0.01 )
  {
    return direction * (signed int)(angle / 20.0 * 127.0);
  }
  return 0;
}

*/

int8_t VEH_PlayerRotation(gentity_s *player, vehicle_physic_t *phys)
{
  char direction = player->client->sess.cmd.forwardmove;
  if(direction == 0)
  {
    direction = player->client->veh_oldforwardmove;
  }else{
    player->client->veh_oldforwardmove = direction;
  }

  if(direction > 0)
  {
    return player->client->sess.cmd.rightmove;
  }
  if(direction < 0)
  {
    return -player->client->sess.cmd.rightmove;
  }
  return 0;
}
