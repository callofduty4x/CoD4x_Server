# CoD4x_Server_1.8_Public [![Build Status](https://travis-ci.org/D4edalus/CoD4x1.8_Server_Pub.svg?branch=master)](https://travis-ci.org/D4edalus/CoD4x1.8_Server_Pub)
Cod4X is a modification of the Call of Duty 4 - Modern Warfare server. It fixes several known bugs in the original binary and allows developers to create plugins to extend a servers gameplay. It also invokes installation of the proprietary Cod4X client to players joining the server using the Cod4X servers (https://cod4x.me), which fixes several known base game bugs in the client, and in combination with the server allows for extra features.

Cod4X can run on Windows and Linux.

Optional there is another proprietary module available which allows for features such as Steam integration, authentication, screenshots, and other anti-cheat related functions. You can get it under the "Binaries" section.

##Installation
There are multiple methods of obtaining Cod4X.

###Binaries
This is the easiest way of obtaining Cod4X, using the [direct download](https://cod4x.me/index.php?attachments/serverfiles_15-6-zip.19/).

###Compiling
To compile Cod4X from source you require the following dependencies:
- nasm
- paxctl

####Getting the source
`git clone https://github.com/D4edalus/CoDx1.8_Server_Pub`

####Building on Linux
Use your distribution's package manager to install the required dependencies.

Arch Linux:
`yaourt -S nasm paxctl git gcc`

Ubuntu:
`sudo apt install nasm paxctl git gcc`

Compiling is as easy as running `./build_updateable_elf.sh`.
It'll build Cod4X into `main/` from which the server can be run.

####Further installation
You require the base game to run a server. Copy every .iwd file in `cod4directory/main/` to `serverdirectory/main/`.
Also copy everything inside `cod4directory/zone` to `serverdirectory/zone`.

Now you can run the game with `./cod4x18_dedrun +set dedicated 1 +map mp_farm`. Join the game by using `/connect localhost` (replace localhost for the ip of the computer the server is running on) and see if it works.

For more advanced server configuration, check the wiki.

##Contributing
Cod4X is licensed under the AGPL3 license. We welcome anybody to fork this project and submit a pull request.

Plugins are written in either C or C++. You can contribute to the project by developing plugins and uploading them to the [forum](https://cod4x.me/index.php?forums/releases.13/).

If you're not a programmer but still want to help, you can help by testing and reporting bugs. Please submit your bug reports to the Github issue tracker.

##Everything else
Please check out the [forums](https://cod4x.me).
