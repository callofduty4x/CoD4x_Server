# GSC Scripting Guide

This scripting guide shows how to modify server side scripts on the CoD4x server.

## Quickstart - Running your first script!
In this chapter we develop a small welcome script. It will wait for a player to connect to the server, and write a welcome message to his screen.

### Set up your scriptfile
Inside the serverfolder create a new folder called **main_shared**<sup>[1](#myfootnote1)</sup>. Inside **main_shared** create a file called **welcome.gsc**. This file will contain our code.

```C
init()
{
    for(;;)
    {
        level waittill("connected", player); // Waits until a new player connects - player stored in "player" variable.
        player thread welcome(); // Execute a new thread for "player".
    }
}

welcome()
{
    // "player" is referenced as "self" now.
    self endon("disconnect"); // If player was connected but left without spawning, thread will lock because of next statement.
    self waittill("spawned_player"); // Waits until the player spawned.
    self iprintlnbold("Welcome " + self.name); // Writes the welcome message bold and centered on the player's screen.
}
```

### Execute the script
Just because a script or function is present, doesn't mean it also gets executed. *You not only tell them how to jump, you also tell them when to jump.* 
Do not worry yet about the following lines, what's happening will be explained later.

Create a file called **_callbacksetup.gsc** inside main_shared/maps/mp/gametypes. Fill it with the contents of this file: https://github.com/D4edalus/CoD4MW/blob/master/raw/maps/mp/gametypes/_callbacksetup.gsc. To run our script we are going to edit the existing **CodeCallback_StartGameType** function.

```C
CodeCallback_StartGameType()
{
    // If the gametype has not beed started, run the startup.
    if(!isDefined(level.gametypestarted) || !level.gametypestarted)
    {
          [[level.callbackStartGameType]]();

          level.gametypestarted = true; // So we know that the gametype has been started up.

          thread welcome::init(); // Initializes the welcome script.
    }
}

```

<sub><a name="myfootnote1">1</a>: main_shared is not only one possibility to load custom scripts on the CoD4x server. Most certainly the easiest and the best one for development.</sub>

## Scripting Basics
This tutorial does not cover general programming concepts like Variables, Functions, Arrays, etc. Consider reading [this](http://wiki.modsrepository.com/index.php?title=Call_of_Duty_4:_CoD_Script_Handbook) first if you have no clue about programming at all.

### Language Features

Describes how some not so basic language concepts are used in GSC.

#### Supported Operators
* +, -, *, /
* % modulo
* !, <, >, <=, >=
* <<, >> leftshift and rightshift respectively

#### Supported Types
* int (32 bit signed)
* float (32 bit, IEEE 754)
* string
* array/dictionary
* struct

#### Builtin Functions / Keywords
* for, while, do-while
* break, continue, return
* if, else, switch-case
* wait, waittill, waittillframeend

#### Context
Functions can be run inside a context. The context of a function can be referenced with the **self** keyword from within the function.

```C
SayHelloToPlayer()
{
    self printlnbold("Hello " + self.name);
}

...

player SayHelloToPlayer();
```

#### Function Pointers
Usually you can only define and call functions. However, function pointers let you take a function and store it into a variable for later use. A great example for the use of function pointers is **_callbacksetup.gsc** which was used in the previous chapter. 

Assignment of a function pointer: 
```C
foo() { ... }
bar = ::foo;
```

Assign a function inside another file to a function pointer: 
```C
// foo now is defined in a scriptfile inside a folder main_shared/myscripts/script.gsc
bar = myscripts\script::foo;
```

To call function pointers we use double brackets:
```C
bar = myscripts\script::foo;
[[bar]](); // You can define arguments inside '()' parens if you need to.
```

#### Events
You can emit and wait for events. This enables easy communication between different threads in your code.

Example:
```C
player notify("player_iscamping"); // called when a player was detected camping

...

player thread watchCamping(); // called when the player connects

...

watchCamping()
{
    self endon("disconnect");

    for(;;)
    {
        self waittill("player_iscamping");
        self iprintlnbold("You filthy camper!");
        // do something cruel to the player because he's camping
    }
}
```

Notify with parameter:
```C
notify("player_iscamping", 5.0);
```

Waittill event with parameters:
```C
player waittill("player_iscamping", camptime);
```

Full list of built-in script notifies you can get [here](https://github.com/callofduty4x/CoD4x_Server/blob/master/scriptdocumentation/SCRIPT_NOTIFIES.md).


#### Threads
Threads are used to execute multiple functions in parallel. No worries, you don't have to deal with concurreny and synchronization in GSC. Threads are implemented as Fibers aka resumable functions, and are executed sequentially. 

Starting a new thread:
```C
foo() { ... }
thread foo();
```

End a thread at event
```C
foo()
{
  endon("disconnect");
  
  for(;;) // do something in infinite loop
  {
    ...
  }
}

player thread foo(); // threads gets terminated when player disconnects
```

> Protip: Threads are running until they are paused by wait(seconds) or waittill(event). In case you have many heavy threads you can loadbalance them between serverframes.

> Use `waittillframeend;` to pause the thread and keep executing it on the next serverframe. Rarely needed, better use `wait 0.05;`.

#### Referencing external functions

As your code grows bigger you want to split your code into multiple files. As briefly mentioned in the chapter about function pointers (`bar = myscripts\script::foo;`), we can reference external functions via `<foldername>\<scriptfilename>\<functionname>\`. But as you like know it from the C programming lanuage GSC also has a preprocessor. The **#include** directive can be used to insert contents of a gsc file into another one. 

One of the most commonly included files is probably `#include maps\mp\gametypes\_hud_util;`. Which contains different functions for creating serverside hudelements. One of such functions is `setPoint(...)`. Without the **#include** preprocessor directive we would call the function as `maps\mp\gametypes\_hud_util::setPoint(...);`. By adding the include directive as stated before we can shorten this to `setPoint(...);`.

## Stock Scripts >> wip <<
The purpose of this guide is mainly to teach how to write new script files, but obviously each mod and even the stock game already contain tons of scripts. The stock scripts are available [here](https://github.com/D4edalus/CoD4MW/tree/master/raw). The gsc scripts of the stock games and other mods are a great resource to explore the capabilities of gsc scripting. 

### Overriding Scripts >> wip <<
If you have a mod ( or the stock game ) and you want to change the behaviour of its scripts, you can simple override them. The introductory example ( welcome message script ) already showed an example of overriding the `_callbacksetup.gsc` script. `_callbacksetup.gsc` is already present in the stock scripts, and is usually loaded from one of the numerous iwd/ff files in the main/zone folder of your server. However, we can replace the original version by copying the scripts and putting it in the same virtual path as the original file. All paths inside `.iwd`, `.ff` archives and some more special folders are loaded into the same virtual file system root. 

A practical example to clarify the virtual filesystem:
Suppose we have two iwd archives named `main\common_mp.ff` and `main\localized_english_iw07.iwd`. If both of the archives contain the same file they would override eachother. Suppose we want to override `_callbacksetup.gsc`. The original `_callbacksetup.gsc` resides in `common_mp.ff/maps/mp/gametypes/_callbacksetup.gsc`. To override it we can copy its contents ( from [here](https://github.com/D4edalus/CoD4MW/blob/master/raw/maps/mp/gametypes/_callbacksetup.gsc) ) and put it into `zone/localized_english_iw07.iwd/_callbacksetup.gsc`. Since it is tedious to pack scripts into archives each development iteration it is also possible to load scripts from plain folders e.g.: `main_shared/maps/mp/gametypes/_callbacksetup.gsc` to follow the example above.

### Script Locations
In the introductory example we have already learned that scripts can be loaded from the `main_shared` folder. However, there is several more locations that scripts can be loaded from.
- localized_zone07.iwd ( among others, but that one is relevant )
- main_shared
- raw
- raw_shared

if `fs_devdir` is set to `1` also ( note that the devdirs are preferred over the other locations ) :
- dev_raw
- devraw_shared

## Troubleshooting Scripts
#### Server fatal crashed: script compile error unknown function
To see more details on the error set the "developer" variable to "1" on your server. Put `set developer 1` inside your config, or run the server with the commandline argument `+set developer 1`
