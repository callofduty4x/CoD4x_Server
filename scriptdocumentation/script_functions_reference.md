# Script Functions Reference

_Disclaimer: Information included here may be incomplete and/or not necessarily true at the time you're reading it.
We do our best to keep it updated._

## Table of Contents

1. [Introduction](#introduction)
2. [How To Load New Scripts?](#how-to-load-new-scripts)
3. [Dropped Support](#dropped-support)
4. [CoD4x Exclusive Functions](#cod4x-exclusive-functions)
   1. [General Functions](#general-functions)
   2. [Players Related Functions](#players-related-functions)
   3. [Player Movement Related Functions](#player-movement-related-functions)
   4. [String Functions](#string-functions)
   5. [File Operations](#file-operations)
   6. [Bot Related Functions](#bot-related-functions)
5. [Appendix: All Known Script Functions](#appendix-all-known-script-functions)

## Introduction

This is a short description of new script functions introduced in CoD4x as well as (probably) full list of all available functions.
Some of these script functions haven't been tested exhaustively or even not tested at all thus can only be seen and used as experimental.
Any feedback on less popular commands is always welcome.

## How To Load New Scripts?

In the past people had to use _tricky_ way to add or override scripts on unmodded servers. CoD4x introduces new, more elegant solution.
The only thing you have to do is to create `main_shared` directory next to your `main` directory and place scripts there.
**Don't forget to keep proper directory structure inside `main_shared`!**

#### Structure Example
```
./main/
  ...
  ...
./main_shared/
  maps/
    mp/
      gametypes/
        _weapons.gsx
```

It's also recommended to change the extension of your scripts to `.gsx` if they are overriding some existing files or using 
functions introduced in CoD4x. There are two reasons behind it:

1. Scripts which names end with `.gsx` are executed instead of ones with the same *basenames* but ending with `.gsc`. 
  This allows easy overriding of stock scripts.
2. It serves a fail-safe when you're developing a mod. You can include scripts for both CoD4x and vanilla servers this way.


## Dropped Support

* `CodeCallback_PlayerSayCmd(string <text>, bool <teamchat>)` support has been dropped. New solution to catch commands is
now [`CodeCallback_ScriptCommand()`](#codecallback_scriptcommandstring-command-integer-default-power).

* `CodeCallback_PlayerSayAll(string <text>, bool <teamchat>)` support has been dropped. New solution to catch commands is 
now [`CodeCallback_ScriptCommand()`](#codecallback_scriptcommandstring-command-integer-default-power).


## CoD4x Exclusive Functions

### General Functions

#### `CodeCallback_ScriptCommand(string <command>, integer <default power>)`

It gets called after a script registered command has been called.
First argument is the name of called function. Second argument aggregates all remaining arguments.
The player entity will be available as `self` if player has called this command. 
If this command gets called from rcon/console `self` is undefined.
For safe usage you have to include a `waittillframeend;` statement in the callback function.

It has to be included in: `maps/mp/gametypes/_callbacksetup`

See also: [`addScriptCommand`](#addscriptcommandstring-command-int-power)

#### `execex(string <command>)`

Executes the given command on the server as console command and returns results.

Usage example: `result = execex("foo");`

#### `exec(string <command>)`

Executes the given command on server as console command.

Usage example: `exec("foo");`

#### `addScriptCommand(string <command>, int <power>)`

Adds a script command. Script command will be available just like a normal command but it invokes a call to the script callback:
`maps/mp/gametypes/_callbacksetup::CodeCallback_ScriptCommand`.
The power parameter is the amount of needed power points for using this command from game gamechat using the `$` prefix.
Using `1` as the power is equal to allowing everyone to use it. Using power `100` or `0` means that it can be only used via rcon or by admins with `100`.

Usage example:`addScriptCommand("foo", 1);`

See also: [`CodeCallback_ScriptCommand()`](#codecallback_scriptcommandstring-command-integer-default-power)

#### `GetRealTime()`
Returns current time in seconds since 01/01/_2012_ UTC.

Usage example: `t = getRealTime();`

#### `IsCvarDefined(string <cvar name>)`
Returns boolean value that states whether the cvar of given name has been already defined or not.

Usage example:
```
get_dvar_or_default(name, default_value)
{
    if (IsCvarDefined(name))
       return GetDvar(name);
    return default_value;
}
```

#### `isArray(<variable>)`

Returns true if passed variable has 'array' type.

Usage example:
```
if (isArray(a))
   do_something();
else
   do_something_else();
```

#### `isEntity(<variable>)`

Returns true if passed variable has 'entity' type.

Usage example:
```
if (isEntity(a))
   do_something();
else
   do_something_else();
```

#### `isVector(<variable>)`

Returns true if passed variable has 'vector' type.

Usage example:
```
if (isVector(a))
   do_something();
else
   do_something_else();
```

#### `isString(<variable>)`

Returns true if passed variable has 'string' type. Returns false for localized strings.

Usage example:
```
if (isString(a))
   do_something();
else
   do_something_else();
```

#### `isFloat(<variable>)`

Returns true if passed variable has 'float' type.

Usage example:
```
if (isFloat(a))
   do_something();
else
   do_something_else();
```

#### `isInt(<variable>)`

Returns true if passed variable has 'int' type.

Usage example:
```
if (isInt(a))
   do_something();
else
   do_something_else();
```

#### `float(<int, float, bool or string>)`

Casts float on passed variable.

Usage example: `floatVal = float("150.9");`

### Players Related Functions

#### `GetUserinfo(string <variable_name>)`

Returns the value of player's `UserCVAR`'s name supplied in the argument.
CoD4x introduces new type of `CVAR` called `UserCVAR`. It can be used to transfer information from client to server.
`UserCVAR` you are going to query has to be set by the player with `setu CVAR_NAME CVAR_VALUE` before.

Usage example: `foo = self getuserinfo("foo");`

#### `GetPing()`

Returns the current measured ping of the targeted player.

Usage example: `ping = self getPing();`

#### `GetPower()`

Returns the number of power points of the targeted player. Default is 1.

Usage example: `power = self getPower();`

#### `GetUid()`

If `uid` for targeted player exists, it will be returned, otherwise returns `-1`.

Usage example: `uid = self getUid();`

#### `SetUid(int <uid>)`

Sets the `uid` for targeted player.

Usage example: `self setUid(123);`

#### `SetPower(int <power>)`

Sets power points for targeted player. Range: 2 to 100.
##### Disclaimer:
__Not recommended to use. The overall behaviour is not known. Don't set non admins above level 9__

Usage example: `self setPower(2);`

#### `GetGeoLocation(int <type>)`

Returns the country code/name for targeted player. For successful usage the file "GeoIP.dat" has to be placed inside CoD4 directory.

Available types:
* `0` — Returns two-characters-long country code as string (e.g. `US`, `FR`, etc.)
* `1` — Returns three-characters-long country code as string (e.g. `USA`, `FRA`, etc.)
* `2` — Returns country name as stromg (e.g. `United States`, `France`, etc.)
* `3` — Returns continent ID as string (e.g. `AN`, `EU`, etc.)
* `4` — Returns index from DB as integer

Usage example: `loc = self getgeolocation(2);`

#### `GetCountedFPS()`

Returns counted FPS for targeted player.

Usage example: `self iprintln("Current FPS: " + self getCountedFPS());`

### Player Movement Related Functions

After first call to any of the following three functions, changing the variables: `g_speed`, `g_gravity` and `jump_height` 
will have no effect. They will have their normal behaviour back after map change.

#### `setgravity(int <gravity>)`

Changes the gravity of targeted player.

Usage example: `self setgravity(200);`

#### `setjumpheight(int <height>)`

Changes the jump height of targeted player.

Usage example: `self setjumpheight(64);`

#### `setmovespeed(int <speed>)`

Changes the movement speed of targeted player.

Usage example: `self setmovespeed(300);`

#### `setVelocity(<vec velocity>)`

Changes current player velocity. Note that you might experience some kind of player lag shortly after function has been called. 
This happens due to small server\client internal structure mismatch. After synchronizing (few frames) everything will be fine.

Usage example: `self setVelocity((0, 0, 300)); // Go up.`

### String Functions

#### `StrTokByLen(string <string>, int <maxcharacter count>)`

Returns an array of the strings which is result of splitting supplied string.
It will count the number of characters of given string and will tokenize it so that it will never exceed the given limit.
This function tries to separate the string so that words remain complete.

Usage example: `array = StrTokByLen("foo bar qux", 3);`

#### `StrTokByPixLen(string <string>, float <codPixelCount>)`

Returns an array of the strings which is result of splitting supplied string.
It will count the width of given string measured in pixels and will tokenize it so that it will never exceed the given limit.
__The limit applies for *2.5* font size.__
This function tries to separate the string so that words remain complete.

Usage example: `array = StrTokByPixLen("Foo bar qux.", 20);`

#### `StrPixLen(string <string>)`

Measures the average length of a given string if it would printed in *2.5* font size.

Usage example: `len = StrPixLen("Foo bar.");`

#### `StrColorStrip(string <string>)`

Cleans the given string from all color codes. __The original string will be modified!__
If it is required that the original string remains unchanged, you need to create a copy of string with `CopyStr` before.

Usage example:
```
s = "^2Foo^3bar";
StrColorStrip(s);
```

See also: [`CopyStr`](#copystrstring-string)

#### `StrRepl(string <source>, string <pattern>, string <replacement>)`

Returns string that has all occurences of `pattern` in `source` replaced with `replacement`.
`Source` string will not be affected.

Usage example: `string = StrRepl("FooBarFoo", "Foo", "Qux");`


#### `CopyStr(string <string>)`

Copies the given string and returns the location of the newly created one.

Usage example: `s = CopyStr("Foo");`

#### `TimeToString(int <realtime>, int <UTC/Local>, string <format>)`

Returns the given time as readable string. `Realtime` is the time in seconds you can retrive using `getRealTime()`.

`UTC/Local` argument:
- `0` — time will be displayed in UTC timezone
- `1` — time will be displayed in Local timezone
 
`Format` is a string to describe how the time will be displayed. It accepts formats from c++ function `strftime()`.
For it's reference please head to: http://cplusplus.com/reference/ctime/strftime.

Usage exmaple: `date = TimeToString(1468578161, 1, "%c");`

#### `sha256(string <string>)`

Calculates and returns SHA256 sum of the given string.

Usage example: `hash = sha256("Foo");`

#### `base64Encode(string <string>)`

Returns Base64 encoded string of given string.

Usage example: `encoded = base64Encode("String to be encoded");`

#### `base64Decode(string <string>)`

Returns Base64 decoded string of given string.

Usage example: `decoded = base64Decode("Too lazy to get some encoded string=");`

### File Operations

Disclaimer: _Up to 10 files can be opened simultaneously. Unused files should be closed as soon as possible._

#### `FS_FOpen(string <name>, string <mode>)`

Opens a file that's inside current `FS_GameDir`. On success it returns integer greater than `0` – `filehandle`. You have to make sure that the function succeded before operations on the file.

Possible values of `mode`:
* `read` – Read only access.
* `write` – Creates a new empty file or overwrites existing one if it's already there. Gives rights to write.
* `append` – Appends to the end of an existing file. Behaves like `write` if the file doesn't exist.

Usage example: `fh = FS_FOpen("foo.txt", "read");`

#### `FS_FClose(int <filehandle>)`

Closes file. Returns nothing.

Usage examlple: `FS_FClose(5);`

#### `FS_FCloseAll()`

Closes all opened files. Returns nothing.

Use case: It can be used after a new level has been loaded — you can't access old variables that stored filehandles before.

Usage example: `FS_FCloseAll();`

#### `FS_TestFile(string <filename>)`

Tests if given file exists. File must be inside the `FS_GameDir`.
Returns `true` if file exists, otherwise `false`.

Usage example: `file_exists = FS_TestFile("foo.txt");`


#### `FS_ReadLine(int <filehandle>)`

Reads a next line from opened file and returns it as string. Returned line does not end with `\n` character. This function returns `undefined` when file can not be read (error) or you it reached end of the file. Calling this function is the only way to advance to next line inside a file.

`FS_ReadLine` can be used only in `read` mode.

Usage example: `line = FS_ReadLine(5);`

#### `FS_WriteLine(int <filehandle>, string <data>)`

Writes a line to an opened file. It does work only in `append` and `write` modes. You can not select number of line to write – it will always append given line to the file. This function returns `true` on success, otherwise it returns `false`.

Usage example: `wrote = FS_WriteLine(5, "foo");`

#### `FS_Remove(string <filename>)`

Deletes file inside current `FS_GameDir`. This function returns `true` on success, otherwise it returns `false`.

Usage example: `deleted = FS_Remove("foo.txt");`

### Bot Related Functions

#### `AddTestClient()`

Adds test client. Returns newly created entity.

Usage example: `ent = AddTestClient()`

#### `removeAllTestClients()`

Removes all added test clients.

Usage example: `removeAllTestClients()`

#### `RemoveTestClient()`

Removes first test client it finds on the server.

Usage example: `entity = removeTestClient()`

**Bot functions below TODO: please, fix my english and remove this line.**

#### `<botEntity> botMoveTo(<origin>)`

Makes bot move directly to `origin` no matter where he points to.

*origin*: 3-dimensional vector (x, y, z)

Usage example 1: `bot botMoveTo(ent.origin);`

Usage example 2: `bot botMoveTo((100, 200, 300)); /* 300 (z) will be ignored. */`

Usage example 3: `bot botMoveTo(GetOrigin(enemy_player));`

#### `<botEntity> botLookAtPlayer(<player>, [tag_name="pelvis"])`

Using prediction, bot will look at `player` `tag_name` bone origin. Function must be called each server frame to simulate aiming.

For now, bots aren't 100% accurate when shooting in the head.

*player*: client entity.

*tag_name*: Aim location. Bone with this name must exist in *player* model.

Usage example 1: `bot botLookAtPlayer(ent);`

Usage example 2: `bot botLookAtPlayer(ent, "j_head");`

#### `<botEntity> botAction(<<sign>action>)`

Forces bot to do or to stop doing `action`.

*sign*: '+' or '-'.

*action*: must be one of "gostand gocrouch goprone fire melee frag smoke reload sprint leanleft leanright ads holdbreath".

Usage example 1: `bot botAction("+fire");`

Usage example 2: `bot botAction("-fire");`

#### `<botEntity> botStop()`

Forces bot to stop doing anything.

Usage example: `bot botStop();`

#### `<botEntity> botLookAt(<origin>, [duration=0.05])`

Forces bot to look at specified position. Rotation will take `duration` seconds.

*origin*: 3-dimensional vector (x, y, z).

*duration*: float value. Must be >= 1.0/sv_fps->integer (usually >= 0.05). Default: 0.05.

Usage example 1: `bot botLookAt(ent.origin); // Instant look at ent's origin`

Usage example 2: `bot botLookAt((0, 0, 0), 5.0); // Look at map center. Rotation will take 5.0 seconds.`

### Script Debug Functions
The following functions need the next yet unreleased client version. Also on clientside "set developer 1" has to be enabled.

print3d() and line() function will do something useful now. The duration parameter is internally multiplied by 10. All objects are shown for 10*duration client frames.


#### `printstar(<point>[, <starcolor>, <staralpha>, <duration>, <text>, <textcolor>, <textalpha>, <textscale>]);`

Will print a debug-star into the 3D space.

*point*: 3-dimensional origin (x, y, z) where to print.
*starcolor*: Color of the star (r, g, b) - optional
*staralpha*: Transparence of the star - optional
*duration*: 10 times number of clientframes this shows - optional, defaults to 10 frames
*text*: Optional text printed near star - optional
*textcolor*: Color of text - optional
*textalpha*: Transparence of the text - optional
*textscale*: Size of text - optional

Usage example 1: `printstar((0, 0, 200), (1, 0, 0), 1, 20); //Prints a red star at 0,0,200 for 200 clientframes
Usage example 2: `printstar((0, 0, 200), (1, 0, 0), 1, 5, "example", (0, 1, 0), 1, 0.5); //Prints a red star at 0,0,200 for 50 clientframes with text "example" with color green and textscale 0.5



## Appendix: All Known Script Functions

### Player Functions
```
Scr_AddMethod("giveweapon", (void*)0x80abc48, 0);
Scr_AddMethod("takeweapon", (void*)0x80abbb4, 0);
Scr_AddMethod("takeallweapons", (void*)0x80abb0e, 0);
Scr_AddMethod("getcurrentweapon", (void*)0x80ad386, 0);
Scr_AddMethod("getcurrentoffhand", (void*)0x80aa3f2, 0);
Scr_AddMethod("hasweapon", (void*)0x80a9098, 0);
Scr_AddMethod("switchtoweapon", (void*)0x80ac484, 0);
Scr_AddMethod("switchtooffhand", (void*)0x80ac37a, 0);
Scr_AddMethod("givestartammo", (void*)0x80ac2b4, 0);
Scr_AddMethod("givemaxammo", (void*)0x80ac1a4, 0);
Scr_AddMethod("getfractionstartammo", (void*)0x80ac09c, 0);
Scr_AddMethod("getfractionmaxammo", (void*)0x80abf94, 0);
Scr_AddMethod("setorigin", (void*)0x80ace3e, 0);
Scr_AddMethod("getvelocity", (void*)0x80ab73a, 0);
Scr_AddMethod("setplayerangles", (void*)0x80ab7b0, 0);
Scr_AddMethod("getplayerangles", (void*)0x80ab6c2, 0);
Scr_AddMethod("usebuttonpressed", (void*)0x80a9b46, 0);
Scr_AddMethod("attackbuttonpressed", (void*)0x80a9aae, 0);
Scr_AddMethod("adsbuttonpressed", (void*)0x80a9a14, 0);
Scr_AddMethod("meleebuttonpressed", (void*)0x80a997c, 0);
Scr_AddMethod("fragbuttonpressed", (void*)0x80a98e2, 0);
Scr_AddMethod("secondaryoffhandbuttonpressed", (void*)0x80a9848, 0);
Scr_AddMethod("playerads", (void*)0x80ab916, 0);
Scr_AddMethod("isonground", (void*)0x80a979a, 0);
Scr_AddMethod("pingplayer", (void*)0x80a8810, 0);
Scr_AddMethod("setviewmodel", (void*)0x80ab61a, 0);
Scr_AddMethod("getviewmodel", (void*)0x80ab4f4, 0);
Scr_AddMethod("setoffhandsecondaryclass", (void*)0x80a9610, 0);
Scr_AddMethod("getoffhandsecondaryclass", (void*)0x80ab576, 0);
Scr_AddMethod("beginlocationselection", (void*)0x80ab366, 0);
Scr_AddMethod("endlocationselection", (void*)0x80a86b2, 0);
Scr_AddMethod("buttonpressed", (void*)0x80a9838, 0);
Scr_AddMethod("sayall", (void*)0x80ab296, 0);
Scr_AddMethod("sayteam", (void*)0x80ab1c6, 0);
Scr_AddMethod("showscoreboard", (void*)0x80ab142, 0);
Scr_AddMethod("setspawnweapon", (void*)0x80ab052, 0);
Scr_AddMethod("dropitem", (void*)0x80aaf2a, 0);
Scr_AddMethod("finishplayerdamage", (void*)0x80ac58e, 0);
Scr_AddMethod("suicide", (void*)0x80aae5c, 0);
Scr_AddMethod("openmenu", (void*)0x80aad5c, 0);
Scr_AddMethod("openmenunomouse", (void*)0x80aac5c, 0);
Scr_AddMethod("closemenu", (void*)0x80a8ffa, 0);
Scr_AddMethod("closeingamemenu", (void*)0x80a8f5c, 0);
Scr_AddMethod("freezecontrols", (void*)0x80a89c8, 0);
Scr_AddMethod("disableweapons", (void*)0x80a879c, 0);
Scr_AddMethod("enableweapons", (void*)0x80a8728, 0);
Scr_AddMethod("setreverb", (void*)0x80aa95e, 0);
Scr_AddMethod("deactivatereverb", (void*)0x80aa848, 0);
Scr_AddMethod("setchannelvolumes", (void*)0x80aaafe, 0);
Scr_AddMethod("deactivatechannelvolumes", (void*)0x80aa726, 0);
Scr_AddMethod("setweaponammoclip", (void*)0x80aa540, 0);
Scr_AddMethod("setweaponammostock", (void*)0x80ad248, 0);
Scr_AddMethod("getweaponammoclip", (void*)0x80aa494, 0);
Scr_AddMethod("getweaponammostock", (void*)0x80aa638, 0);
Scr_AddMethod("anyammoforweaponmodes", (void*)0x80aa2f8, 0);
Scr_AddMethod("iprintln", (void*)0x80aa262, 0);
Scr_AddMethod("iprintlnbold", (void*)0x80aa1cc, 0);
Scr_AddMethod("spawn", PlayerCmd_spawn, 0);
Scr_AddMethod("setentertime", (void*)0x80a8a46, 0);
Scr_AddMethod("cloneplayer", (void*)0x80acf50, 0);
Scr_AddMethod("setclientdvar", (void*)0x80a9f74, 0);
Scr_AddMethod("setclientdvars", (void*)0x80a9d56, 0);
Scr_AddMethod("playlocalsound", (void*)0x80a9c9a, 0);
Scr_AddMethod("stoplocalsound", (void*)0x80a9bde, 0);
Scr_AddMethod("istalking", (void*)0x80a96f8, 0);
Scr_AddMethod("allowspectateteam", (void*)0x80a9518, 0);
Scr_AddMethod("getguid", (void*)0x80a9492, 0);
Scr_AddMethod("getuid", PlayerCmd_GetUid, 0);
Scr_AddMethod("getxuid", (void*)0x80a9418, 0);
Scr_AddMethod("allowads", (void*)0x80ab852, 0);
Scr_AddMethod("allowjump", (void*)0x80a8932, 0);
Scr_AddMethod("allowsprint", (void*)0x80a889c, 0);
Scr_AddMethod("setspreadoverride", (void*)0x80a9318, 0);
Scr_AddMethod("resetspreadoverride", (void*)0x80a8bbe, 0);
Scr_AddMethod("setactionslot", (void*)0x80a9156, 0);
Scr_AddMethod("getweaponslist", (void*)0x80abeba, 0);
Scr_AddMethod("getweaponslistprimaries", (void*)0x80abdd0, 0);
Scr_AddMethod("setperk", (void*)0x80ad4ae, 0);
Scr_AddMethod("hasperk", (void*)0x80ad576, 0);
Scr_AddMethod("clearperks", (void*)0x80ad428, 0);
Scr_AddMethod("unsetperk", (void*)0x80ad634, 0);
Scr_AddMethod("updatescores", (void*)0x80a8e50, 0);
Scr_AddMethod("updatedmscores", (void*)0x80a8c5e, 0);
Scr_AddMethod("setrank", (void*)0x80a8ac4, 0);
Scr_AddMethod("getuserinfo", PlayerCmd_GetUserinfo, 0);
Scr_AddMethod("getping", PlayerCmd_GetPing, 0);
Scr_AddMethod("transmitbuffer", PlayerCmd_TransmitBuffer, 0);
```

### HUD Functions
```
Scr_AddMethod("settext", HECmd_SetText, 0);
Scr_AddMethod("clearalltextafterhudelem", (void*)0x808f768, 0);
Scr_AddMethod("setshader", (void*)0x808e52e, 0);
Scr_AddMethod("settargetent", (void*)0x808f8ea, 0);
Scr_AddMethod("cleartargetent", (void*)0x808f718, 0);
Scr_AddMethod("settimer", (void*)0x808f702, 0);
Scr_AddMethod("settimerup", (void*)0x808f6ec, 0);
Scr_AddMethod("settenthstimer", (void*)0x808f6d6, 0);
Scr_AddMethod("settenthstimerup", (void*)0x808f6c0, 0);
Scr_AddMethod("setclock", (void*)0x808f53e, 0);
Scr_AddMethod("setclockup", (void*)0x808f528, 0);
Scr_AddMethod("setvalue", (void*)0x808f1ac, 0);
Scr_AddMethod("setwaypoint", (void*)0x808f116, 0);
Scr_AddMethod("fadeovertime", (void*)0x808efe6, 0);
Scr_AddMethod("scaleovertime", (void*)0x808ee86, 0);
Scr_AddMethod("moveovertime", (void*)0x808ed56, 0);
Scr_AddMethod("reset", (void*)0x808ebfa, 0);
Scr_AddMethod("destroy", (void*)0x808eba6, 0);
Scr_AddMethod("setpulsefx", (void*)0x808feb8, 0);
Scr_AddMethod("setplayernamestring", (void*)0x808ea9e, 0);
Scr_AddMethod("setmapnamestring", (void*)0x808e85a, 0);
Scr_AddMethod("setgametypestring", (void*)0x808e976, 0);
```

### Entity Functions
```
Scr_AddMethod("moveto", (void*)0x809b606, 0);
Scr_AddMethod("movex", (void*)0x809abf2, 0);
Scr_AddMethod("movey", (void*)0x809abd6, 0);
Scr_AddMethod("movez", (void*)0x809abba, 0);
Scr_AddMethod("movegravity", (void*)0x809ae2a, 0);
Scr_AddMethod("rotateto", (void*)0x809a85e, 0);
Scr_AddMethod("rotatepitch", (void*)0x809b8c6, 0);
Scr_AddMethod("rotateyaw", (void*)0x809b8aa, 0);
Scr_AddMethod("rotateroll", (void*)0x809b88e, 0);
Scr_AddMethod("devaddpitch", (void*)0x8099f60, 0);
Scr_AddMethod("devaddyaw", (void*)0x8099f66, 0);
Scr_AddMethod("devaddroll", (void*)0x8099f6c, 0);
Scr_AddMethod("vibrate", (void*)0x809bad0, 0);
Scr_AddMethod("rotatevelocity", (void*)0x809b178, 0);
Scr_AddMethod("solid", (void*)0x809a0ac, 0);
Scr_AddMethod("notsolid", (void*)0x8099fd2, 0);
Scr_AddMethod("setcandamage", (void*)0x809a19e, 0);
Scr_AddMethod("physicslaunch", (void*)0x809afb4, 0);
```

### Helicopter functions
```
Scr_AddMethod("freehelicopter", (void*)0x80ba8bc, 0);
Scr_AddMethod("setspeed", (void*)0x809d096, 0);
Scr_AddMethod("getspeed", (void*)0x809d070, 0);
Scr_AddMethod("getspeedmph", (void*)0x809d044, 0);
Scr_AddMethod("resumespeed", (void*)0x809cf4a, 0);
Scr_AddMethod("setyawspeed", (void*)0x809ce22, 0);
Scr_AddMethod("setmaxpitchroll", (void*)0x809cd6c, 0);
Scr_AddMethod("setturningability", (void*)0x809d0ae, 0);
Scr_AddMethod("setairresistance", (void*)0x809cd36, 0);
Scr_AddMethod("sethoverparams", (void*)0x809cc24, 0);
Scr_AddMethod("setneargoalnotifydist", (void*)0x809cb42, 0);
Scr_AddMethod("setvehgoalpos", (void*)0x809ca7c, 0);
Scr_AddMethod("setgoalyaw", (void*)0x809ca42, 0);
Scr_AddMethod("cleargoalyaw", (void*)0x809ca14, 0);
Scr_AddMethod("settargetyaw", (void*)0x809c9da, 0);
Scr_AddMethod("cleartargetyaw", (void*)0x809c9ac, 0);
Scr_AddMethod("setlookatent", (void*)0x809c900, 0);
Scr_AddMethod("clearlookatent", (void*)0x809c8d2, 0);
Scr_AddMethod("setvehweapon", (void*)0x809c890, 0);
Scr_AddMethod("fireweapon", (void*)0x809d9e2, 0);
Scr_AddMethod("setturrettargetvec", (void*)0x809d48a, 0);
Scr_AddMethod("setturrettargetent", (void*)0x809d550, 0);
Scr_AddMethod("clearturrettarget", (void*)0x809d0de, 0);
Scr_AddMethod("setvehicleteam", (void*)0x809cb72, 0);
Scr_AddMethod("setdamagestage", (void*)0x80ba890, 0);
```

### Unclassified Functions
```
Scr_AddFunction("createprintchannel", (void*)0x80bf832, 0);
Scr_AddFunction("setprintchannel", (void*)0x80bf75c, 0);
Scr_AddFunction("print", (void*)0x80bf706, 1);
Scr_AddFunction("println", (void*)0x80c267e, 1);
Scr_AddFunction("iprintln", (void*)0x80c2b8a, 0);
Scr_AddFunction("iprintlnbold", (void*)0x80c2c14, 0);
Scr_AddFunction("print3d", (void*)0x80c0c7e, 0);
Scr_AddFunction("line", (void*)0x80bac00, 1);
Scr_AddFunction("logstring", (void*)0x80bac06, 0);
Scr_AddFunction("getent", (void*)0x80c7c72, 0);
Scr_AddFunction("getentarray", (void*)0x80c7b44, 0);
Scr_AddFunction("spawn", (void*)0x80bf638, 0);
Scr_AddFunction("spawnplane", (void*)0x80c0fde, 0);
Scr_AddFunction("spawnturret", (void*)0x80c0f52, 0);
Scr_AddFunction("precacheturret", (void*)0x80bcd46, 0);
Scr_AddFunction("spawnstruct", (void*)0x815f09a, 0);
Scr_AddFunction("spawnhelicopter", (void*)0x80c0e54, 0);
Scr_AddFunction("assert", (void*)0x80bb0fc, 1);
Scr_AddFunction("assertex", (void*)0x80bb2e0, 1);
Scr_AddFunction("assertmsg", (void*)0x80bb2b4, 1);
Scr_AddFunction("isdefined", (void*)0x80bbf2c, 0);
Scr_AddFunction("isstring", (void*)0x80bbf06, 0);
Scr_AddFunction("isalive", (void*)0x80bbeaa, 0);
Scr_AddFunction("getdvar", (void*)0x80bf5ec, 0);
Scr_AddFunction("getdvarint", (void*)0x80bf5a8, 0);
Scr_AddFunction("getdvarfloat", (void*)0x80bf56c, 0);
Scr_AddFunction("setdvar", (void*)0x80c07ce, 0);
Scr_AddFunction("gettime", (void*)0x80bb514, 0);
Scr_AddFunction("getentbynum", (void*)0x80bbf96, 0);
Scr_AddFunction("getweaponmodel", (void*)0x80bf490, 0);
Scr_AddFunction("getanimlength", (void*)0x80bf416, 0);
Scr_AddFunction("animhasnotetrack", (void*)0x80bf3aa, 0);
Scr_AddFunction("getnotetracktimes", (void*)0x80bf346, 0);
Scr_AddFunction("getbrushmodelcenter", (void*)0x80c199a, 0);
Scr_AddFunction("objective_add", (void*)0x80c2234, 0);
Scr_AddFunction("objective_delete", (void*)0x80c1da4, 0);
Scr_AddFunction("objective_state", (void*)0x80c210a, 0);
Scr_AddFunction("objective_icon", (void*)0x80be226, 0);
Scr_AddFunction("objective_position", (void*)0x80c17ca, 0);
Scr_AddFunction("objective_onentity", (void*)0x80c1716, 0);
Scr_AddFunction("objective_current", (void*)0x80bef76, 0);
Scr_AddFunction("missile_createattractorent", (void*)0x8093486, 0);
Scr_AddFunction("missile_createattractororigin", (void*)0x8096c28, 0);
Scr_AddFunction("missile_createrepulsorent", (void*)0x8096b5c, 0);
Scr_AddFunction("missile_createrepulsororigin", (void*)0x8096a80, 0);
Scr_AddFunction("missile_deleteattractor", (void*)0x80933b0, 0);
Scr_AddFunction("bullettrace", (void*)0x80c65fa, 0);
Scr_AddFunction("bullettracepassed", (void*)0x80bee92, 0);
Scr_AddFunction("sighttracepassed", (void*)0x80c0198, 0);
Scr_AddFunction("physicstrace", (void*)0x80be7b2, 0);
Scr_AddFunction("playerphysicstrace", (void*)0x80c1e6a, 0);
Scr_AddFunction("getmovedelta", (void*)0x80bec78, 0);
Scr_AddFunction("getangledelta", (void*)0x80bed82, 0);
Scr_AddFunction("getnorthyaw", (void*)0x80c1f0e, 0);
Scr_AddFunction("randomint", (void*)0x80bec22, 0);
Scr_AddFunction("randomfloat", (void*)0x80beb8a, 0);
Scr_AddFunction("randomintrange", (void*)0x80bebb6, 0);
Scr_AddFunction("randomfloatrange", (void*)0x80beb12, 0);
Scr_AddFunction("sin", (void*)0x80beae6, 0);
Scr_AddFunction("cos", (void*)0x80beaba, 0);
Scr_AddFunction("tan", (void*)0x80bda00, 0);
Scr_AddFunction("asin", (void*)0x80bea50, 0);
Scr_AddFunction("acos", (void*)0x80be9e6, 0);
Scr_AddFunction("atan", (void*)0x80be9ba, 0);
Scr_AddFunction("int", (void*)0x80c1f56, 0);
Scr_AddFunction("abs", (void*)0x80bd9e2, 0);
Scr_AddFunction("min", (void*)0x80bd9a2, 0);
Scr_AddFunction("max", (void*)0x80bd962, 0);
Scr_AddFunction("floor", (void*)0x80bd92c, 0);
Scr_AddFunction("ceil", (void*)0x80bd8f6, 0);
Scr_AddFunction("sqrt", (void*)0x80be97e, 0);
Scr_AddFunction("vectorfromlinetopoint", (void*)0x80c19fc, 0);
Scr_AddFunction("pointonsegmentnearesttopoint", (void*)0x80c1c58, 0);
Scr_AddFunction("distance", (void*)0x80c23dc, 0);
Scr_AddFunction("distance2d", (void*)0x80be934, 0);
Scr_AddFunction("distancesquared", (void*)0x80c2016, 0);
Scr_AddFunction("length", (void*)0x80bde88, 0);
Scr_AddFunction("lengthsquared", (void*)0x80c1c1c, 0);
Scr_AddFunction("closer", (void*)0x80c206e, 0);
Scr_AddFunction("vectordot", (void*)0x80c1bca, 0);
Scr_AddFunction("vectornormalize", (void*)0x80c69aa, 0);
Scr_AddFunction("vectortoangles", (void*)0x80be762, 0);
Scr_AddFunction("vectorlerp", (void*)0x80be6da, 0);
Scr_AddFunction("anglestoup", (void*)0x80be8ea, 0);
Scr_AddFunction("anglestoright", (void*)0x80be8a0, 0);
Scr_AddFunction("anglestoforward", (void*)0x80be856, 0);
Scr_AddFunction("combineangles", (void*)0x80be652, 0);
Scr_AddFunction("issubstr", (void*)0x80be60e, 0);
Scr_AddFunction("getsubstr", (void*)0x80bb1de, 0);
Scr_AddFunction("tolower", (void*)0x80be59c, 0);
Scr_AddFunction("strtok", (void*)0x80be3d0, 0);
Scr_AddFunction("musicplay", (void*)0x80bbe0c, 0);
Scr_AddFunction("musicstop", (void*)0x80c1642, 0);
Scr_AddFunction("soundfade", (void*)0x80bbd94, 0);
Scr_AddFunction("ambientplay", (void*)0x80c1536, 0);
Scr_AddFunction("ambientstop", (void*)0x80c146c, 0);
Scr_AddFunction("precachemodel", (void*)0x80be37c, 0);
Scr_AddFunction("precacheshellshock", (void*)0x80be308, 0);
Scr_AddFunction("precacheitem", (void*)0x80be28a, 0);
Scr_AddFunction("precacheshader", (void*)0x80be126, 0);
Scr_AddFunction("precachestring", (void*)0x80be0ea, 0);
Scr_AddFunction("precacherumble", (void*)0x80bb010, 0);
Scr_AddFunction("loadfx", (void*)0x80be064, 0);
Scr_AddFunction("playfx", (void*)0x80c6a38, 0);
Scr_AddFunction("playfxontag", (void*)0x80bdec6, 0);
Scr_AddFunction("playloopedfx", (void*)0x80c6fe8, 0);
Scr_AddFunction("spawnfx", (void*)0x80c6d1e, 0);
Scr_AddFunction("triggerfx", (void*)0x80c13b0, 0);
Scr_AddFunction("physicsexplosionsphere", (void*)0x80bd00e, 0);
Scr_AddFunction("physicsexplosioncylinder", (void*)0x80bcd78, 0);
Scr_AddFunction("physicsjolt", (void*)0x80bcf16, 0);
Scr_AddFunction("physicsjitter", (void*)0x80bce34, 0);
Scr_AddFunction("setexpfog", (void*)0x80bdc1e, 0);
Scr_AddFunction("grenadeexplosioneffect", (void*)0x80c0d86, 0);
Scr_AddFunction("radiusdamage", (void*)0x80bdc12, 0);
Scr_AddFunction("setplayerignoreradiusdamage", (void*)0x80bb0e2, 0);
Scr_AddFunction("getnumparts", (void*)0x80c00d8, 0);
Scr_AddFunction("getpartname", (void*)0x80c0104, 0);
Scr_AddFunction("earthquake", (void*)0x80c112e, 0);
Scr_AddFunction("newhudelem", GScr_NewHudElem, 0);
Scr_AddFunction("newclienthudelem", GScr_NewClientHudElem, 0);
Scr_AddFunction("newteamhudelem", (void*)0x808f95e, 0);
Scr_AddFunction("resettimeout", (void*)0x815d050, 0);
Scr_AddFunction("weaponfiretime", (void*)0x80bda62, 0);
Scr_AddFunction("isweaponcliponly", (void*)0x80bd8b8, 0);
Scr_AddFunction("isweapondetonationtimed", (void*)0x80bd59e, 0);
Scr_AddFunction("weaponclipsize", (void*)0x80bd710, 0);
Scr_AddFunction("weaponissemiauto", (void*)0x80bd6c0, 0);
Scr_AddFunction("weaponisboltaction", (void*)0x80bd676, 0);
Scr_AddFunction("weapontype", (void*)0x80bd866, 0);
Scr_AddFunction("weaponclass", (void*)0x80bd81a, 0);
Scr_AddFunction("weaponinventorytype", (void*)0x80bd7c8, 0);
Scr_AddFunction("weaponstartammo", (void*)0x80bd62c, 0);
Scr_AddFunction("weaponmaxammo", (void*)0x80bd5e2, 0);
Scr_AddFunction("weaponaltweaponname", (void*)0x80bd75a, 0);
Scr_AddFunction("isplayer", (void*)0x80bbe50, 0);
Scr_AddFunction("isplayernumber", (void*)0x80bb4b6, 0);
Scr_AddFunction("setwinningplayer", (void*)0x80bd504, 0);
Scr_AddFunction("setwinningteam", (void*)0x80bd412, 0);
Scr_AddFunction("announcement", (void*)0x80c0758, 0);
Scr_AddFunction("clientannouncement", (void*)0x80c06d4, 0);
Scr_AddFunction("getteamscore", (void*)0x80bbac0, 0);
Scr_AddFunction("setteamscore", (void*)0x80bbcdc, 0);
Scr_AddFunction("setclientnamemode", (void*)0x80bb88e, 0);
Scr_AddFunction("updateclientnames", (void*)0x80bd356, 0);
Scr_AddFunction("getteamplayersalive", (void*)0x80bb9f8, 0);
Scr_AddFunction("objective_team", (void*)0x80bbb3a, 0);
Scr_AddFunction("logprint", (void*)0x80bd1ac, 0);
Scr_AddFunction("worldentnumber", (void*)0x80bb500, 0);
Scr_AddFunction("obituary", (void*)0x80bd0ca, 0);
Scr_AddFunction("positionwouldtelefrag", (void*)0x80c18a6, 0);
Scr_AddFunction("getstarttime", (void*)0x80bb4ea, 0);
Scr_AddFunction("precachemenu", (void*)0x80bcc4e, 0);
Scr_AddFunction("precachestatusicon", (void*)0x80bc932, 0);
Scr_AddFunction("precacheheadicon", (void*)0x80bc614, 0);
Scr_AddFunction("precachelocationselector", (void*)0x80bc4a6, 0);
Scr_AddFunction("map_restart", (void*)0x80bb6d2, 0);
Scr_AddFunction("exitlevel", (void*)0x80bbfe2, 0);
Scr_AddFunction("addtestclient", GScr_SpawnBot, 0);
Scr_AddFunction("removetestclient", GScr_RemoveBot, 0);
Scr_AddFunction("removealltestclients", GScr_RemoveAllBots, 0);
Scr_AddFunction("makedvarserverinfo", (void*)0x80c05bc, 0);
Scr_AddFunction("setarchive", (void*)0x80bb034, 0);
Scr_AddFunction("allclientsprint", (void*)0x80bbc8c, 0);
Scr_AddFunction("clientprint", (void*)0x80bbc20, 0);
Scr_AddFunction("mapexists", (void*)0x80bb556, 0);
Scr_AddFunction("isvalidgametype", (void*)0x80c25f8, 0);
Scr_AddFunction("matchend", (void*)0x80bb04c, 0);
Scr_AddFunction("setplayerteamrank", (void*)0x80bb052, 0);
Scr_AddFunction("sendranks", (void*)0x80bb058, 0);
Scr_AddFunction("endparty", (void*)0x80bb05e, 0);
Scr_AddFunction("setteamradar", (void*)0x80bb958, 0);
Scr_AddFunction("getteamradar", (void*)0x80bb8d8, 0);
Scr_AddFunction("getassignedteam", (void*)0x80bb48e, 0);
Scr_AddFunction("setvotestring", (void*)0x80bb7e0, 0);
Scr_AddFunction("setvotetime", (void*)0x80bb73e, 0);
Scr_AddFunction("setvoteyescount", (void*)0x80bb360, 0);
Scr_AddFunction("setvotenocount", (void*)0x80bb320, 0);
Scr_AddFunction("openfile", GScr_FS_FOpen, 0);
Scr_AddFunction("closefile", GScr_FS_FClose, 0);
Scr_AddFunction("fprintln", GScr_FS_WriteLine, 0);
Scr_AddFunction("fprintfields", (void*)0x80c1c16, 1);
Scr_AddFunction("freadln", GScr_FS_ReadLine, 0);
Scr_AddFunction("fgetarg", (void*)0x80bb02e, 1);
Scr_AddFunction("kick", GScr_KickClient, 0);
Scr_AddFunction("ban", GScr_BanClient, 0);
Scr_AddFunction("map", (void*)0x80bb628, 0);
Scr_AddFunction("playrumbleonposition", (void*)0x80bb03a, 0);
Scr_AddFunction("playrumblelooponposition", (void*)0x80bb040, 0);
Scr_AddFunction("stopallrumbles", (void*)0x80bb046, 0);
Scr_AddFunction("soundexists", (void*)0x80bb52a, 0);
Scr_AddFunction("issplitscreen", (void*)0x80bb4a2, 0);
Scr_AddFunction("setminimap", (void*)0x80c2436, 0);
Scr_AddFunction("setmapcenter", (void*)0x80bb450, 0);
Scr_AddFunction("setgameendtime", (void*)0x80bb41e, 0);
Scr_AddFunction("getarraykeys", (void*)0x80bb3c4, 0);
Scr_AddFunction("searchforonlinegames", (void*)0x80bb06a, 0);
Scr_AddFunction("quitlobby", (void*)0x80bb070, 0);
Scr_AddFunction("quitparty", (void*)0x80bb076, 0);
Scr_AddFunction("startparty", (void*)0x80bb07c, 0);
Scr_AddFunction("startprivatematch", (void*)0x80bb082, 0);
Scr_AddFunction("visionsetnaked", (void*)0x80c12f8, 0);
Scr_AddFunction("visionsetnight", (void*)0x80c1240, 0);
Scr_AddFunction("tablelookup", (void*)0x80bb122, 0);
Scr_AddFunction("tablelookupistring", (void*)0x80c1b0e, 0);
Scr_AddFunction("endlobby", (void*)0x80bb088, 0);
Scr_AddFunction("fs_fopen", GScr_FS_FOpen, 0);
Scr_AddFunction("fs_fclose", GScr_FS_FClose, 0);
Scr_AddFunction("fs_fcloseall", GScr_FS_FCloseAll, 0);
Scr_AddFunction("fs_testfile", GScr_FS_TestFile, 0);
Scr_AddFunction("fs_readline", GScr_FS_ReadLine, 0);
Scr_AddFunction("fs_writeline", GScr_FS_WriteLine, 0);
Scr_AddFunction("fs_remove", GScr_FS_Remove, 0);
Scr_AddFunction("getrealtime", GScr_GetRealTime, 0);
Scr_AddFunction("timetostring", GScr_TimeToString, 0);
Scr_AddFunction("strtokbypixlen", GScr_StrTokByPixLen, 0);
Scr_AddFunction("strpixlen", GScr_StrPixLen, 0);
Scr_AddFunction("strcolorstrip", GScr_StrColorStrip, 0);
Scr_AddFunction("copystr", GScr_CopyString, 0);
Scr_AddFunction("strrepl", GScr_StrRepl, 0);
Scr_AddFunction("strtokbylen", GScr_StrTokByLen, 0);
Scr_AddFunction("exec", GScr_CbufAddText, 0);
Scr_AddFunction("connectserver", GScr_ConnectToMaster, 0);
Scr_AddFunction("disconnectserver", GScr_DisconnectFromMaster, 0);
Scr_AddFunction("getconnstatus", GScr_GetConnStatus, 0);
Scr_AddFunction("transmitbuffer", GScr_TransmitBuffer, 0);
Scr_AddFunction("setvalueforkey", GScr_SetValueForKey, 0);
Scr_AddFunction("getvalueforkey", GScr_GetValueForKey, 0);
Scr_AddFunction("settransmitbuffer", GScr_SetTransmitBuffer, 0);
Scr_AddFunction("getreceivebuffer", GScr_GetReceiveBuffer, 0);
Scr_AddFunction("sha256", GScr_SHA256, 0);
Scr_AddMethod("attach", (void*)0x80c4360, 0);
Scr_AddMethod("detach", (void*)0x80c3950, 0);
Scr_AddMethod("detachall", (void*)0x80c3904, 0);
Scr_AddMethod("getattachsize", (void*)0x80c38a8, 0);
Scr_AddMethod("getattachmodelname", (void*)0x80c381a, 0);
Scr_AddMethod("getattachtagname", (void*)0x80c3794, 0);
Scr_AddMethod("getattachignorecollision", (void*)0x80c3702, 0);
Scr_AddMethod("getammocount", (void*)0x80c4c3c, 0);
Scr_AddMethod("getclanid", (void*)0x80bb2a4, 0);
Scr_AddMethod("getclanname", (void*)0x80bb294, 0);
Scr_AddMethod("hidepart", (void*)0x80c356e, 0);
Scr_AddMethod("showpart", (void*)0x80c33d8, 0);
Scr_AddMethod("showallparts", (void*)0x80c331c, 0);
Scr_AddMethod("linkto", (void*)0x80c30a6, 0);
Scr_AddMethod("unlink", (void*)0x80c305a, 0);
Scr_AddMethod("enablelinkto", (void*)0x80c2fb8, 0);
Scr_AddMethod("getorigin", (void*)0x80c2f54, 0);
Scr_AddMethod("geteye", (void*)0x80c2eea, 0);
Scr_AddMethod("useby", (void*)0x80c2e52, 0);
Scr_AddMethod("setstablemissile", (void*)0x80c2c9e, 0);
Scr_AddMethod("istouching", (void*)0x80c2d22, 0);
Scr_AddMethod("playsound", (void*)0x80c6548, 0);
Scr_AddMethod("playsoundasmaster", (void*)0x80c3e2a, 0);
Scr_AddMethod("playsoundtoteam", (void*)0x80c3edc, 0);
Scr_AddMethod("playsoundtoplayer", (void*)0x80c26ea, 0);
Scr_AddMethod("playloopsound", (void*)0x80c3dc0, 0);
Scr_AddMethod("stoploopsound", (void*)0x80c3d68, 0);
Scr_AddMethod("playrumbleonentity", (void*)0x80bac12, 0);
Scr_AddMethod("playrumblelooponentity", (void*)0x80bac18, 0);
Scr_AddMethod("stoprumble", (void*)0x80bac1e, 0);
Scr_AddMethod("delete", (void*)0x80c3cd6, 0);
Scr_AddMethod("setmodel", (void*)0x80c3c6c, 0);
Scr_AddMethod("getnormalhealth", (void*)0x80c3bea, 0);
Scr_AddMethod("setnormalhealth", (void*)0x80c3aa2, 0);
Scr_AddMethod("show", (void*)0x80c418e, 0);
Scr_AddMethod("hide", (void*)0x80c4138, 0);
Scr_AddMethod("laseron", (void*)0x80c40ec, 0);
Scr_AddMethod("laseroff", (void*)0x80c40a0, 0);
Scr_AddMethod("showtoplayer", (void*)0x80c4252, 0);
Scr_AddMethod("setcontents", (void*)0x80c41e4, 0);
Scr_AddMethod("getstance", (void*)0x80c42d2, 0);
Scr_AddMethod("setcursorhint", (void*)0x80c6348, 0);
Scr_AddMethod("sethintstring", (void*)0x80c619e, 0);
Scr_AddMethod("usetriggerrequirelookat", (void*)0x80c613a, 0);
Scr_AddMethod("shellshock", (void*)0x80c4a36, 0);
Scr_AddMethod("gettagorigin", (void*)0x80c5c12, 0);
Scr_AddMethod("gettagangles", (void*)0x80c5b94, 0);
Scr_AddMethod("stopshellshock", (void*)0x80c49cc, 0);
Scr_AddMethod("setdepthoffield", (void*)0x80c46f6, 0);
Scr_AddMethod("setviewmodeldepthoffield", (void*)0x80c4636, 0);
Scr_AddMethod("viewkick", (void*)0x80c455c, 0);
Scr_AddMethod("localtoworldcoords", (void*)0x80c5aac, 0);
Scr_AddMethod("setrightarc", (void*)0x80c5a32, 0);
Scr_AddMethod("setleftarc", (void*)0x80c59ba, 0);
Scr_AddMethod("settoparc", (void*)0x80c5940, 0);
Scr_AddMethod("setbottomarc", (void*)0x80c58c8, 0);
Scr_AddMethod("radiusdamage", (void*)0x80c5e32, 0);
Scr_AddMethod("detonate", (void*)0x80c5d46, 0);
Scr_AddMethod("damageconetrace", (void*)0x80c5d34, 0);
Scr_AddMethod("sightconetrace", (void*)0x80c5d22, 0);
Scr_AddMethod("getentitynumber", (void*)0x80c60ea, 0);
Scr_AddMethod("enablegrenadetouchdamage", (void*)0x80c6082, 0);
Scr_AddMethod("disablegrenadetouchdamage", (void*)0x80c601a, 0);
Scr_AddMethod("enableaimassist", (void*)0x80c5ed6, 0);
Scr_AddMethod("disableaimassist", (void*)0x80c5e78, 0);
Scr_AddMethod("placespawnpoint", (void*)0x80c56c6, 0);
Scr_AddMethod("setteamfortrigger", (void*)0x80c534a, 0);
Scr_AddMethod("clientclaimtrigger", (void*)0x80c5246, 0);
Scr_AddMethod("clientreleasetrigger", (void*)0x80c515a, 0);
Scr_AddMethod("releaseclaimedtrigger", (void*)0x80c50b8, 0);
Scr_AddMethod("getstat", (void*)0x80c55f6, 0);
Scr_AddMethod("setstat", (void*)0x80c5490, 0);
Scr_AddMethod("sendleaderboards", (void*)0x80bb064, 0);
Scr_AddMethod("setmovespeedscale", (void*)0x80c4c0e, 0);
Scr_AddMethod("logstring", (void*)0x80bac0c, 0);
Scr_AddMethod("missile_settarget", (void*)0x80c5f34, 0);
Scr_AddMethod("isonladder", (void*)0x80c5040, 0);
Scr_AddMethod("ismantling", (void*)0x80c4fc8, 0);
Scr_AddMethod("startragdoll", (void*)0x80c4f08, 0);
Scr_AddMethod("isragdoll", (void*)0x80c4eb4, 0);
Scr_AddMethod("getcorpseanim", (void*)0x80c4dfc, 0);
Scr_AddMethod("itemweaponsetammo", (void*)0x80c4c96, 0);
```
