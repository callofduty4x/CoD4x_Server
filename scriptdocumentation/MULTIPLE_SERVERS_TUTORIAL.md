# Multiple CoD4X servers tutorial

This file shows how to create multiple CoD4X servers using `fs_homepath`, `fs_basegame` dvars and save few gigabytes of disk space.

Example shows how to create 2 servers on 192.168.1.30:28960 (modded) and 192.168.1.30:28961 (unmodded) addresses.

---

# Table of contents

1. [Requirements](#requirements)
2. [Setting up base game server](#setting-up-base-game-server)
3. [Setting up first server](#setting-up-first-server)
4. [Setting up second server](#setting-up-second-server)
5. [Launching servers](#launching-servers)

---

## Requirements

1. CoD4X 1.8 server binary, build >= 1061
2. 10+ Gb of Disk space.

Assume all servers will be located inside 'CoD4X' directory.

## Setting up base game server

Let's create directory `CoD4X\BaseGame`.

Base game server must have the following list of files:

1. main/*.iwd
2. zone/__lang__/code_post_gfx_mp.ff
3. zone/__lang__/common_mp.ff
4. zone/__lang__/localized_code_post_gfx_mp.ff
5. zone/__lang__/localized_common_mp.ff
4. zone/__lang__>/ui_mp.ff
5. (optional?) main/localized_"lang"_iw*.iwd
6. cod4x18_dedrun self updateable binary

When you in first time launch 'cod4x18_dedrun' binary, the server will download self update and required libraries.

## Setting up first server

Create directories `CoD4X\Server1`, `CoD4X\Server1\main` and `CoD4X\Server1\mods\test`.

(Windows)
Inside of `CoD4X` directory create file named `start_server1.bat`. Put next lines inside:

```
start BaseGame/cod4x18_dedrun.exe +set logfile 2 +set fs_basepath "BaseGame" +set fs_homepath "Server1" +set net_ip 192.168.1.30 +set net_port 28960 +set sv_hostname "Test server 1" +set fs_game "mods\test" +map mp_backlot
```

(Linux)

TODO. Almost the same except 'start' command and .bat script extension.

## Setting up second server

Create directories `CoD4X\Server2`, `CoD4X\Server2\main`.

(Windows)
Inside of `CoD4X` directory create file named `start_server2.bat`. Put next lines inside:

```
start BaseGame/cod4x18_dedrun.exe +set logfile 2 +set fs_basepath "BaseGame" +set fs_homepath "Server2" +set net_ip 192.168.1.30 +set net_port 28961 +set sv_hostname "Test server 2" +map mp_backlot
```

(Linux)

TODO. Almost the same except 'start' command and .bat script extension.

## Launching servers

That's it. Now you can launch your servers using scripts inside `CoD4X`. You can always check your servers' visibility on http://cod4master.cod4x.ovh.
