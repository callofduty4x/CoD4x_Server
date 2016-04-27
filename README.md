# CoD4x_Server_1.8_Public [![Build Status](https://travis-ci.org/D4edalus/CoD4x1.8_Server_Pub.svg?branch=master)](https://travis-ci.org/D4edalus/CoD4x1.8_Server_Pub)
Cod4X is a modification of the Call of Duty 4 - Modern Warfare server. It fixes several bugs in the original binaries and allows developers to extend server functionality with additional variables and plugins. When using the CoD4x server, the clients invoke  installation of the proprietary Cod4X client to players joining the server using the Cod4X servers (https://cod4x.me), which fixes several known base game bugs in the client, and in combination with the server allows for extra features.

## The most prominent features are:
* Administration commands
* Measurements against hackers
* Reliable player identification
* Pbss like screenshot feature
* Automated client update, no manual installation needed
* Backwards compatibility to 1.7 and 1.7a servers
* Masterserver, when the official one is down again q.q http://cod4master.cod4x.me/
* [More](http://todo)

The Cod4X server can run on Windows and Linux. 
The Cod4X client update is only available for windows.

## Setting up a Call of Duty 4 server with Cod4x 1.8
Get the binary release package from http://cod4x.me

Directlink: http://cod4x.me/index.php?attachments/serverfiles_15-6-zip.19/

You also require the base game to run a server. Copy every .iwd file in `cod4directory/main/` to `serverdirectory/main/`.
Also copy everything inside `cod4directory/zone` to `serverdirectory/zone`.

Now you can run the server with `./cod4x18_dedrun +map mp_killhouse`. If you are running a local server on Windows use `cod4x18_dedrun.exe +map mp_killhouse +set dedicated 2 +set net_ip 127.0.0.1`. Join the server with your client via the console (`^`) by typing `/connect 127.0.0.1` (if hosted locally), and see if you can join the server.

<small>Hint: you probably want to run the server on a separate user. Please don't run the server (any server) as root. That would be a major security threat.</small>

## Compiling
To compile Cod4X from source you require the following tools:
- nasm
- paxctl (not needed for Debian or Windows)
- gcc on Linux or mingw32 on Windows

Debian/Ubuntu 32-bit:`apt install nasm paxctl build-essential`

Debian/Ubuntu 64-bit:
`dpkg --add-architecture i386`
`apt-get update`
`apt-get install nasm:i386 build-essential gcc-multilib g++-multilib`

openSUSE 32-bit: `sudo zypper install nasm gcc-32bit gcc-c++-32bit`
 
Arch Linux 32-bit: `yaourt -S nasm paxctl build-essential`

Compile the server with `./build_updateable_elf.sh`.
If compilation was successful the binary will be placed in the `bin/` folder.

##Contributing
Cod4X is licensed under the AGPL3 license. We welcome anybody to fork this project and submit a pull request.

Plugins can be written in C/C++. We also provide language bindings for D. The `/plugins` directory contains some example plugins. You can contribute to the project by developing plugins and create a pull request for them and/or uploading and promoting them on the [forums](https://cod4x.me/).

If you want to contribute to the core project check the issue tracker for todos. We will try our best to keep the issue tracker filled with new bits.
If you would like to work on a completely new feature, we would appreciate if you contact us first on the forums or on github to discuss the idea.

If you're not a programmer but still want to help, you can help by testing and reporting bugs, but also by writing documentation. Please submit your bug reports to the Github issue tracker.

## Usage conditions for server hosters
If you plan on hosting your own servers, please have a look at the usage conditions. https://cod4x.me/index.php?threads/cod4x18-server-usage-conditions.61/
Those conditions have been established to keep user created content open to everyone, and also to value the work on CoD4X.

## Everything else
Please check out the [forums](https://cod4x.me).
