@echo off
mkdir build_win32_msvc
cd build_win32_msvc
cmake -G"Visual Studio 16 2019" -A Win32 ..
timeout /t 10