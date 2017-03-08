# GSC Scripting Guide

This scripting guide shows how to modify server side scripts on the CoD4x server.

## Quickstart - Running your first script!
In this chapter we develop a small welcome script. It will wait for a player to connect to the server, and write a welcome message to his screen.

### Set up your scriptfile
Inside the serverfolder create a new folder called **main_shared**<sup>[1](#myfootnote1)</sup>. Inside **main_shared** create a file called **welcome.gsc**. This file will contain our code.

```
init()
{
  for(;;)
  {
    waittill("connected", player); // waits until a new player connects - player stored in "player" variable
    player thread welcome(); // execute a new thread for "player"
  }
}

welcome()
{
  // "player" is referenced as "self" now
  self waittill("spawned_player"); // waits until the player spawned
  self iprintlnbold("Welcome " + self.name); // writes the welcome message bold and centered on the players screen
}
```

### Execute the script
Just because a script or function is present, doesn't mean it also gets executed. *You not only tell them how to jump, you also tell them when to jump.* 
Do not worry yet about the following lines, what's happening will be explained later.

Create a file called **_callbacksetup.gsc** inside main_shared/maps/mp/gametypes. Fill it with the contents of this file: https://github.com/D4edalus/CoD4MW/blob/master/raw/maps/mp/gametypes/_callbacksetup.gsc. To run our script we are going to edit the existing **CodeCallback_StartGameType** function.

```
CodeCallback_StartGameType()
{
	// If the gametype has not beed started, run the startup
	if(!isDefined(level.gametypestarted) || !level.gametypestarted)
	{
		[[level.callbackStartGameType]]();

		level.gametypestarted = true; // so we know that the gametype has been started up
    
    thread welcome::init(); // initializes the welcome script
	}
}

```



<a name="myfootnote1">1</a>: main_shared is only one possibility to load custom scripts on the CoD4x server. Most certainly the best one for development.
