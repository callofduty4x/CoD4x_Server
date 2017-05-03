# Frequently asked Questions

### Sys_Error: [s_API FAIL] SteamGameServer_Init() failed; unable to locate a local steamclient.so.

If you see this error the Authentication Library was not loaded correctly. At runtime the named shared library is loaded, if there are some dependencies to other libraries that cannot be resolved, loading fails. Depending on what operating system you are different solutions apply.

1) Try to remove with the server provided libstdc++.so.6
2) Install the c++ standard library matching your system.
Some working packages are ...
## Ubuntu 14 32bit: sudo apt-get install libstdc++6
## Debian 8 64bit: sudo apt-get install gcc-multilib g++-multilib
3) Read
https://github.com/callofduty4x/CoD4x_Server/issues/100
https://github.com/callofduty4x/CoD4x_Server/issues/95
