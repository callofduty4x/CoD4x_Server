@echo off
mkdir build_msvc
cd build_msvc
cmake -G"Visual Studio 16 2019" -A Win32 ..
timeout /t 10