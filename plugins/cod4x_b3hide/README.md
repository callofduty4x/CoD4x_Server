# README #
Cod4x Plugin to hide B3 commands.

Use this plugin together with [b3plugin_auth](https://bitbucket.org/msgaming/b3plugin_auth)!
It hides B3 commands of players above a specified B3 level (Mods, Admins).

### Server Dvars: ###
`b3Prefix` Prefix for B3 commands (usually !) to hide *default: "!"*

`b3Hide` Hide B3 commands (1 = On, 0 = Off) *default: 0*

`b3HideLvl` Hides B3 commands if players's level >= b3HideLvl *default: 20*


### Plugin Command "client_checkin" usage ###
`client_checkin <client/slotnumber> <b3 level>`