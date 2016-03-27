# CoD4x_Server_1.8_Public

## Setting up a Call of Duty 4 server with Cod4x 1.8 on Linux
Hint: you probably want to run the server on a separate user. Please don't run the server (any server) as root, because that's a major security threat. This guide has been tested with Debian 1.8 x64

If you are creating a development server, read this first: //TODO

### Prerequisites for a clean Debian 1.8 x86 installation
//TODO
```sudo apt-get install nasm build-essential paxctl```

### Get the CoD4x 1.8 release package
You can download the Cod4x 1.8 server from http://cod4x.me

Directlink: http://cod4x.me/index.php?attachments/serverfiles_15-6-zip.19/

### Make sure you have the minimum file structure below

| Files / Folders | &nbsp; |
| ------ | ----- |
| cod4x18_dedrun | server executable, copy this file from the 1.8x server download package |
| libsteam_api.so | copy this file from the 1.8x server download package |
| steamclient.so | copy this file from the 1.8x server download package |
| libstdc++.so.6 | copy this file from the 1.8x server download package, not needed on some linux distros |
| zone | game files from the Call of Duty 4 Client, `cod4/zone` folder |
| main | game files from the Call of Duty 4 Client, `cod4/main` folder |
| main/xbase_00.iwd | copy this file from the 1.8x server download package to the `main` folder |

### Server Configuration
To run the server a configuration file is need. Place the configuration file in the `main` folder

server.cfg: //TODO test this config
```
set sv_hostname "CoD4x 1.8 Server"
set sv_mapRotation "gametype dom map mp_backlot gametype koth"
wait 250
map_rotate
```

### Run Script
run.sh: (make it executable with `chmod +x run.sh`)
```
./cod4x18_dedrun +exec server.cfg +set fs_homepath . +set sv_maxclients 24 +set net_port 28960
```
When running the server for the first time it should start the Autoupdater. When it's done the server will start, and you connect to it with your Call of Duty 4 Client.

### Advanced Topics
The server is running, what now?

Installing custom serverside scripts: //TODO
Editing mods: //TODO
Process screenshots: //TODO
Write server a server plugin: //TODO
