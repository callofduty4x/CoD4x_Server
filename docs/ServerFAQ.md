# Frequently asked Questions

### Sys_Error: [s_API FAIL] SteamGameServer_Init() failed; unable to locate a local steamclient.so.

If you see this error the Authentication Library was not loaded correctly. At runtime the named shared library is loaded, if there are some dependencies to other libraries that cannot be resolved, loading fails. Depending on what operating system you are different solutions apply.

1) Try to remove with the server provided libstdc++.so.6
2) Install the c++ standard library matching your system.
Some working packages are ...
- Ubuntu 14 32bit: sudo apt-get install libstdc++6
-  Debian 8 64bit: sudo apt-get install gcc-multilib g++-multilib
3) Read
- https://github.com/callofduty4x/CoD4x_Server/issues/100
- https://github.com/callofduty4x/CoD4x_Server/issues/95

### All GUIDs are 0
It means the authentication library is not functioning correctly - see above

### I cannot ban anyone / bans are not stored:
https://github.com/callofduty4x/CoD4x_Server/wiki/Banlists-in-version-15.9--and-other-changes

### What is the difference between gsc and gsx scripts?
the file extensions are only relevant when having equally named, one with gsc and one with gsx extension. the cod4x server will then favor the file with gsx extension over gsc. this was originally designed to write scripts that can be used on both cod4x and non cod4x servers ( in more detail: to avoid not available functionality on non cod4x servers ) 

there is a nice sideeffect that lets you favor gsx over gsc files when loading from multiple scripts locations e.g. main_shared AND dev_raw. then also the gsx is favored over gsc. 

https://github.com/callofduty4x/CoD4x_Server/blob/5222e3e8746348ada01ed0fc84545c61a5b41121/scriptdocumentation/script_functions_reference.md

### How to install a Plugin?
Create a folder called `plugins` in your server directory (`fs_homepath`). Put the Plugin inside that folder (`.dll` or `.so` extension on Windows and Linux respectively). You also have to tell the server to load the plugin. This is done by putting `loadplugin <pluginname>` inside your config (omit the extension here!). Or directly as a commandline parameter with `+loadplugin <pluginname>`
