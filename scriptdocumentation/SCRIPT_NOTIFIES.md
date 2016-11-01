# Complete list of CoD4 script notifies

## Table of contents

1. [Foreword](#foreword)
2. [Core game script notifies](#core-game-script-notifies)
3. [Custom CoD4X script notifies](#custom-cod4x-script-notifies)

## Foreword

Script notifies is a GSC engine feature allows you to create and listen to various events happens with entities (mostly). You can block script thread using

```C
ent waittill("some-event");
```

To continue this thread you have to "notify" it in other script thread using

```C
ent notify("some-event");
```

Also, you can kill script thread with

```C
ent endon("some-event"); /* Not blocking call. */
```

More than that, you can pass arguments among event notifications. For example, 

```C
ent waittill("my-cool-event-with-args", stringArg, intArg, target);
/* ... */
ent notify("my-cool-event-with-args", "string", 1337, self);
```

## Core game script notifies

1. [begin](#begin)
2. [begin_firing](#begin_firing)
3. [call_vote](#call_vote)
4. [cancel_location](#cancel_location)
5. [confirm_location](#confirm_location)
6. [damage](#damage)
7. [death](#death)
8. [detonate](#detonate)
9. [end_firing](#end_firing)
10. [explode](#explode)
11. [flashbang](#flashbang)
12. [goal](#goal)
13. [goal_yaw](#goal_yaw)
14. [grenade danger](#grenade-danger)
15. [grenade_fire](#grenade_fire)
16. [grenade_pullback](#grenade_pullback)
17. [menuresponse](#menuresponse)
18. [movedone](#movedone)
19. [near_goal](#near_goal)
20. [night_vision_off](#night_vision_off)
21. [night_vision_on](#night_vision_on)
22. [projectile_impact](#projectile_impact)
23. [reload](#reload)
24. [reload_start](#reload_start)
25. [rotatedone](#rotatedone)
26. [sprint_begin](#sprint_begin)
27. [sprint_end](#sprint_end)
28. [touch](#touch)
29. [trigger](#trigger)
30. [turret_no_vis](#turret_no_vis)
31. [turret_not_on_target](#turret_not_on_target)
32. [turret_on_target](#turret_on_target)
33. [turret_on_vistarget](#turret_on_vistarget)
34. [turret_rotate_stopped](#turret_rotate_stopped)
35. [veh_collision](#veh_collision)
36. [veh_predictedcollision](#veh_predictedcollision)
37. [vote](#vote)
38. [weapon_change](#weapon_change)
39. [weapon_fired](#weapon_fired)

---
### begin

__When:__ Client just connected.

__On:__ Player.

---
### begin_firing

__When:__ Client started firing using weapon.

__On:__ Player.

---
### call_vote

TODO.

__When:__ Player called a vote.

__On:__ Player.

__Arguments:__ string string1, string string2, string string3.

__Requirements:__ Dvar "g_oldVoting" equal 1.

---
### cancel_location

__When:__ Player closed location selection dialog.

__On:__ Player.

---
### confirm_location

__When:__ Player choosed location on location dialog (airdrop dialog).

__On:__ Player.

__Arguments:__ vector origin.

---
### damage

Variant 1:

TODO.

__When:__ Victim gets damaged.

__On:__ Victim entity.

__Arguments:__ int a1, entity attacker, vector a3, string means_of_death, string a5, string a6, string a7, int a8, ??? ????.

---
Variant 2:

TODO.

__When:__ Entity gets damaged.

__On:__ Victim entity.

__Arguments:__ int a1, entity a2.

---
### death

Variant 1:

__When:__ Entity died or destroyed.

__On:__ Game entity or hud element.

---
Variant 2:

__When:__ Player died.

__On:__ Victim entity.

__Arguments:__ entity attacker.

---
Variant 3:

__When:__ Entity "died".

__On:__ Victim entity.

__Arguments:__ int a1, entity a2, vector a3, vector a4, string a5.

---
### detonate

__When:__ Entity detonates.

__On:__ Game entity that can be detonated.

---
### end_firing

__When:__ Player ends firing.

__On:__ Player.

---
### explode

__When:__ Entity explodes.

__On:__ Game entity that can be exploded.

__Arguments:__ vector origin.

---
### flashbang

__When:__ Player flashbanged.

__On:__ Victim player.

__Arguments:__ float percent_distance, float percent_angle, entity attacker, string team ("axis" or "allies").

---
### goal

TODO.

__When:__ ???

__On:__ ???

---
### goal_yaw

TODO.

__When:__ ???

__On:__ ???

---
### grenade danger

TODO. Arg confirm required.

__When:__ Grenade close to player.

__On:__ Attacker?

__Arguments:__ entity grenade, entity victim?, string grenade_name.

---
### grenade_fire

__When:__ Player throws grenade.

__On:__ Player.

__Arguments:__ entity grenade, string weapon_name.

---
### grenade_pullback

__When:__ Player throws grenade back.

__On:__ Player.

__Arguments:__ string weapon_name.

---
### menuresponse

__When:__ Player invokes "menuresponse" in hud menu.

__On:__ Player.

__Arguments:__ string menu_name, string response_name.

---
### movedone

__When:__ Entity finished moving.

__On:__ Game entity, not player.

---
### near_goal

TODO.

__When:__ ???

__On:__ ???

---
### night_vision_off

__When:__ Player took off night vision goggles.

__On:__ Player.

---
### night_vision_on

__When:__ Player put on night vision goggles.

__On:__ Player.

---
### projectile_impact

TODO.

__When:__ Projectile entity impacts surface.

__On:__ Projectile entity.

__Arguments:__ string a1, vector a2, int a3.

---
### reload

__When:__ Player reloads weapon.

__On:__ Player.

---
### reload_start

TODO. Recheck if happens only with bolt-action weapons.

__When:__ Player starts reloading weapon.

__On:__ Player.

---
### rotatedone

__When:__ Entity stopped rotation.

__On:__ Game entity, but not player.

---
### sprint_begin

__When:__ Player started sprinting.

__On:__ Player.

---
### sprint_end

__When:__ Player stopped sprinting.

__On:__ Player.

---
### touch

__When:__ One game entity touches other one. Usually, called on both inflicted entities.

__On:__ Game entity, including player.

__Arguments:__ entity other.

---
### trigger

Variant 1:

__When:__ Player triggered trigger entity.

__On:__ Trigger entity.

__Arguments:__ entity player.

---
Variant 2:

__When:__ Player picks up item.

__On:__ Game entity can be picked up (item, weapon).

__Arguments:__ entity activator (player or undefined), entity dropped (entity or undefined).

---
### turret_no_vis

TODO.

__When:__ ???

__On:__ Entity???

---
### turret_not_on_target

TODO.

__When:__ ???

__On:__ Entity???

---
### turret_on_target

TODO.

__When:__ ???

__On:__ Entity???

---
### turret_on_vistarget

TODO.

__When:__ ???

__On:__ Entity???

---
### turret_rotate_stopped

TODO.

__When:__ ???

__On:__ Entity???

---
### veh_collision

TODO.

__When:__ ???

__On:__ Entity???

__Arguments:__  vector a1, vector a2.

---
### veh_predictedcollision

TODO.

__When:__ ???

__On:__ Entity???

__Arguments:__ vector a1, vector a2.

---
### vote

__When:__ Client pressed "vote yes" (F1) or "vote no" (F2) buttons.

__On:__ Player.

__Arguments:__ string vote ("yes" or "no").

__Requirements:__ Dvar "g_oldVoting" equal 1.

---
### weapon_change

__When:__ Player changing weapon.

__On:__ Player.

__Arguments:__ string new_weapon.

---
### weapon_fired

__When:__ Player fired.

__On:__ Player.

---
## Custom CoD4X script notifies

1. [movedone](#movedone-1)
2. [rotatedone](#rotatedone-1)

---
### movedone

__When:__ Bot stopped moving.

__On:__ Bot entity.

---
### rotatedone

__When:__ Bot stopped rotating.

__On:__ Bot entity.
