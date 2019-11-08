@echo off
mkdir build
cd build
cmake -G "MinGW Makefiles" ..
timeout /t 10