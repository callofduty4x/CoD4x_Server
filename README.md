# CoD4x Server [![build](https://github.com/callofduty4x/CoD4x_Server/actions/workflows/build.yml/badge.svg)](https://github.com/callofduty4x/CoD4x_Server/actions/workflows/build.yml)
<p align="center">
  <img src="assets/github/banner.png?raw=true" />
</p>

CoD4x is a modification of the Call of Duty 4 - Modern Warfare server. It fixes several bugs in the original binaries and allows developers to extend server functionality with additional variables and plugins. When using the CoD4x server, the clients invoke installation of the proprietary CoD4x client to players joining the server using the CoD4x servers, which fixes several known base game bugs in the client, and in combination with the server allows for extra features.
A compatible client modification can be found here: [CoD4x_Client_pub](https://github.com/callofduty4x/CoD4x_Client_pub)

[Forums](https://cod4x.ovh) - [Masterserver](http://cod4master.cod4x.ovh/)

## The most prominent features are:
* Administration commands
* Measurements against hackers
* Reliable player identification
* Pbss like screenshot feature
* Automated client update, no manual installation needed
* Backwards compatibility to 1.7 and 1.7a servers
* A new [masterserver](http://cod4master.cod4x.ovh/), for when the official masterserver is down

The CoD4x server can run on Windows and Linux. 
The CoD4x client update is only available for windows.

## Setting up a Call of Duty 4 server with Cod4x 1.8
Download binaries: [Releases](https://github.com/callofduty4x/CoD4x_Server/releases)

You also require the base game to run a server. Copy every .iwd file in `cod4directory/main/` to `serverdirectory/main/`.
Also copy everything inside `cod4directory/zone` to `serverdirectory/zone`.

Now you can run the server with `./cod4x18_dedrun +map mp_killhouse`. If you are running a local server on Windows use `cod4x18_dedrun.exe +map mp_killhouse +set dedicated 2 +set net_ip 127.0.0.1`. Join the server with your client via the console (`^`) by typing `/connect 127.0.0.1` (if hosted locally), and see if you can join the server.

Hint: you probably want to run the server on a separate user. Please don't run the server (any server) as root. That would be a major security threat.

A more detailed server tutorial is available on [our wiki](https://github.com/callofduty4x/CoD4x_Server/wiki/Server-setup).
[Also read about new banlists here](https://github.com/callofduty4x/CoD4x_Server/wiki/Banlists-in-version-15.9--and-other-changes)

## Compiling on Linux
To compile CoD4x from source, you need to install the following prerequisites:

- NASM
- gcc
- make

Debian/Ubuntu 32-bit:
```
sudo apt install nasm make git
```

Debian/Ubuntu 64-bit:
```
sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get install nasm:i386 make gcc-multilib g++-multilib git
```

openSUSE 32-bit: 
```
sudo zypper install nasm gcc-32bit gcc-c++-32bit
```
 
Arch Linux 64-bit:
```
sudo pacman -S nasm gcc lib32-gcc-libs make
```

Now compile the server by running `make`.

If compilation was successful the binary will be placed in the `/bin/` folder.

## Compiling on Windows
To compile CoD4x from source you require the following tools:

- [NASM](http://www.nasm.us/pub/nasm/releasebuilds/?C=M;O=D)
- [MinGW](http://www.mingw.org/): 'gcc' and 'mingw32-make'

Now compile the server by running `mingw32-make`.

If compilation was successful the binary will be placed in the `/bin/` folder.

## Contributing
CoD4x is licensed under the AGPL3 license. We welcome anybody to fork this project and submit a pull request.

Plugins can be written in C/C++ and we also provide language bindings for D. The `/plugins` directory contains some example plugins. You can contribute to the project by developing plugins and create a pull request for them and/or uploading and promoting them on the [forums](https://cod4x.ovh/c/server-plugins-management-tools/8).

If you want to contribute to the core project check the issue tracker for todos. We will try our best to keep the issue tracker filled with new bits.
If you would like to work on a completely new feature, we would appreciate if you contact us first on the forums or on Github to discuss the idea.

If you're not a programmer but still want to help, you can help by testing and reporting bugs, but also by writing documentation. Please submit your bug reports to the Github issue tracker.

## Usage conditions for server hosters
Aside from agreeing to the license, by making any use of CoD4x18 server you agree to the following:

1. You make content which is connected to your CoD4x18 Server available to the developers on request. For example if you run a mod, you have to make everything available that is required to run another server just like your own. Think of a complete mod.ff, .iwds, plugins, database handlers, etc.

2. The developers reserve the right to reuse your content as long as it is not used commercially. You have a right for your name/clan/website getting mentioned if this is going to happen.
They can also use it on their own servers.

3. Maps you have installed on a server have to be either available on the internet already, or be made available to the community at the [CoD4x forums](https://cod4x.ovh), with all required assets, like scripts, within 20 weeks of installation. You have to annouce your map on the [CoD4x forums](https://cod4x.ovh) on the same day you have installed it to gain the 20 weeks grace period. Not announced maps will have to be made available within 1 week.

4. Plugins have to be made available as sourcecode so the user can interact with it

Server's IPs violating these conditions can get permanently disabled.

These conditions have been established to keep user created content open to everyone, and also to value the work on CoD4x.

## Everything else
Please check out the [forums](https://cod4x.ovh) and [our wiki](https://github.com/callofduty4x/CoD4x_Server/wiki).
