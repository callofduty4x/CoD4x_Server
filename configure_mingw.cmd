@echo off
mkdir build_mingw
cd build_mingw
cmake -G "MinGW Makefiles" ..
timeout /t 10