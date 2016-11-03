This is a very simple example how to use chat commands added by scripts in CoD4X. This example should help to make use of the new added callback `maps\mp\gametypes\_globallogic::Callback_ScriptCommand` and the new added function: `addscriptcommand()`.

---

Add to `maps\mp\gametypes\_callbacksetup`:

```C
/*================
Called by code when a script defined command has been invoked.
================*/
CodeCallback_ScriptCommand(command, arguments)
{
    [[level.callbackScriptCommand]](command, arguments);
}
```

In the same file, in function `SetDefaultCallbacks` add:

```C
level.callbackScriptCommand = maps\mp\gametypes\_globallogic::Callback_ScriptCommand;
```

Add to `maps\mp\gametypes\_globallogic::SetupCallbacks`

```C
level.onScriptCommand = ::blank;
```

In the same file, in function `Callback_StartGameType` add

```C
addScriptCommand("scriptfunctiontest", 1);
addScriptCommand("anotherfunction", 1);
```

Add to `maps\mp\gametypes\_globallogic` this function

```C
Callback_ScriptCommand(command, arguments)
{
    waittillframeend;

    if( isDefined( self.name ) )
        print("Executed by: " + self.name + " Command:" + command + " Args: " + arguments + "\n");
    else
        print("Executed by: Rcon Command:" + command + " Args: " + arguments + "\n");
}
```