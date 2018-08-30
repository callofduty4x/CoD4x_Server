# Change Log
All notable changes to this project will be documented in this file.

Versions in this file correspond to git tags.

## Unreleased
### Changes
#### Makefiles
Now you can use "sv_disableChat" dvar to disable chat messages on server (commands "$..." still available).
incremental builds are now possible. `make -f makefile2` runs the new build scripts. appveyor and travis continuous integration services have been updated to the new buildprocess.

## 17.3
Default fs_homepath under Windows is now the current working directory - before default fs_homepath was fs_basepath

### Fixes
Masterserver announcing works now with more than 1 address - was a bug before 

Small zone overflow [#148](https://github.com/callofduty4x/CoD4x_Server/issues/148)

### Changes
#### Autoupdate [#150](https://github.com/callofduty4x/CoD4x_Server/issues/150)
Autoupdate will check for updates earlier in startup

Updatefiles will now only written to these locations: 
-    The cod4x18_dedrun,
-    Windows: Executable-directory
-    Linux: Current working directory,
-    fs_homepath

User compiled cod4x server will only receive updates on major version increases

Network init happens now early to allow early run of autoupdater

#### Note: For proper operation of Autoupdate every gameserver needs to run on a dedicated fs_homepath

## 17.0
Note: 17.0 is a major update. Servers and Clients will be forced to upgrade.

xbase.iwd must be updated!

### Fixed
- Demo stopping on fast_restart
- Memoryleaks
- LAN broadcasting

### Changed
- Masterserver now in sv_masterservers
- Player stats now encrypted
- Colored playersnames are filtered
- homepath overrides basepath for file discovery

### Added
- Scripting Guide
- Support for higher xasset limits

## 16.3
### Fixed
- Masterserver Bufferoverflow

### Added
- Builds with Makefiles
- Plugin_SetStat, Plugin_GetStat

### Changed
- Support for binding multiple IP addresses has been dropped


### Fixed

## 16.2
### Added
- ScreenshotArrived Plugin Callback
- Script functions to check player keys
- Scr_GetFunc
- Screenshot Uploader Plugin
- IsCvarDefined Script Function
- Array Manipulation Script Functions
- Script functions to control bots
- Menu File Extraction

### Changed
- Standard GUID format changed to 64bit IDs
- Removed bansystem from Server Core
- Http Api exposed to plugins ( blocking / non-blocking )

## Before ...

July 7 2013:

Code_CallbackPlayerSay*: Added 2nd argument (to entity)

August 11 2013
Code_CallbackPlayerSay*: 2nd argument = boolean teamchat -> false: toall true: onlyteam


Hmm I was too lazy to write anything...

February 3 2014:

CodeCallback_PlayerSayCmd is removed.
CodeCallback_PlayerSayAll is renamed to CodeCallback_PlayerSay.
CodeCallback_ScriptCommand added as well as script function: addscriptcommand()

Fixed an issue that cheatprotected cvars got no reset on level startup which caused strange effects on Deathrun mod with bg_falldamage cvars.

June 22 2014:
Removed chat trap for script when a command gets invoked.
Use CodeCallback_ScriptCommand and addscriptcommand() instead  (see scriptcommand_example.txt)

Added securemode which should prevent breaking out of cod4 server into shell.


June 29 2014:
Removed the non working recusion callback function for player's chat. Use plugins instead.

July 27 2014:
exec() script function now returns the result as string truncated - Maybe this functionality getting removed later again if issues arise

September 09 2014:
exec is now execex
exec works like before July 27 2014

September 12 2016:
After a 2 years its still good to write about changes in server code ^^
 - 'SetText' script command now safe to use with dynamically created strings like player names, number increments and etc.
 - 'ClearAllTextAfterHudElem' script command now can be used only in developer mode because of its bugs.

September 13 2016:
 + Added 'Scr_AddArrayKey' script and plugin function. It allows you to create script arrays with string keys instead of numeric. Just make sure you passed value returned from 'Scr_AllocString' (call this one on initialization).

September 14 2016:
 + Added 'isArray' script function. (http://zeroy.com/script/variables/isarray.htm)

