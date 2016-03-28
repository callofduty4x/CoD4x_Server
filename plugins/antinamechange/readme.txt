---------///----/////---//////------/////------///////-----//////------
--------///---///------///-------///---///----///---//---///-----------
-------///---///------/////----///-----///---///////------//////-------
------///---///------///-------///----///---///--------------///-------
-----///----/////---///////------/////-----///----------//////---------


                 //********************************//
                // CoD4X plugin API documentation //
               //********************************//

  Content list:

1. What are the plugins?
2. How to install the plugins?
3. What do I need to write my own plugin?
4. Writing your own plugin
  - Getting started
  - Plugin events
  - Available functions
5. FAQ
6. Contact information


-----------------------------------------------------------------------

1. What are the plugins?

    The Call of Duty 4 plugins using Plugin API are extensions
for the CoD4X game server.
    A plugin file is a shared library file. For example, a plugin named
'helloworld' would be released as a file 'helloworld.so'. Details on
how to install plugins can be found in section 2 of this file.



2. How to install a plugin?

    Installing a plugin is very simple and fast, provided that CoD4X
server is already installed and that the plugin itself works.
The installation consists of 2 steps:
    - Copying the plugin's file to plugins/ directory
    - Executing 'pluginload <file name without extension>'

    For example, to install a plugin named 'myplugin', the file
'myplugin.so' needs to be copied into plugins/ directory, then the
command 'loadplugin myplugin' needs to be executed. The command might
be of course as well added into the config file.



3. What do I need to write my own plugin?

    Writing a plugin requires basic knowledge of C (or C++) programming
language, GNU C Compiler (GCC) and the starter pack, available with
this file or downloadable from the link available in the 'releases'
section at www.cod4x.me


4. Writing your own plugin

    - Getting started

    Before we begin, please make sure you have the GCC installed and
working. Also please download and unpack the starter pack, the below
steps will assume that you have already done it.

    - Plugin events

    A little theory first. The way that the gameserver communicates
with the plugins is using the events. The full list of events is
available in the source code of 'cpptest' plugin.
    If you have any experience with Call of Duty 4 scripting, then you
know how events work. The way they are used in the plugins is a bit
different though, as the C syntax must be obeyed and most functions are
not thread secure.
    Let's say you want to use the OnTenSeconds event. All you need to
do is declaring a function 'void OnTenSeconds()'. The function will be
called by the server every 10 seconds. It works exactly the same way
with other events.

    - Available functions

    In your plugin you can use most of the C standard library functions,
with a few exceptions. Instead of printf use Com_Printf, scanf is not
to be used at all. Plugin_Malloc and Plugin_Free are to be used instead
of malloc (new) and free (delete). The reason to this is quite simple.
Plugin_Malloc keeps track of each memory allocation of the plugin to be
able to free the memory once the plugin is unloaded. Plugin_Free marks
the memory as freed, also it will not allow the plugin to free a pointer
twice, which would result in a server crash.
    The prototypes of all available plugin specific functions are in
'function-declarations.h' file. The explanation of their purpose
is available in the very same file in comments.



5. FAQ

    1) I cannot load my plugin, why?

        Make sure that the plugin file is named and placed correctly.
    For example, if the plugin's name is "myplugin", then "myplugin.so"
    file must be placed inside of plugins/ directory. If it still doesn't
    load, try executing 'chmod -r 755 plugins'.

    2) Why does loading some plugins crash the server?

        Plugin API was designed to be as fast as possible with minimal
    restraints. If the plugin was badly written or contains bugs, it might
    crash the server. Please contact the plugin author for help.

    3) Why can't I unload a plugin?

        All plugins are unloadable, with 2 execeptions - you cannot unload
    'library' and 'script-library' plugins. What this means is, if
    a plugin exports functions / script functions, it cannot be unloaded.
    Reason for this behaviour is security - if such plugin was unloaded
    and it's exported function called after that, the server would crash.
