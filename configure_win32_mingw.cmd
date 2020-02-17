@echo off
mkdir build_win32_mingw
cd build_win32_mingw
cmake -G "MinGW Makefiles" ..
timeout /t 10