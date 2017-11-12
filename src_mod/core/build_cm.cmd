@echo off

echo Compiling: release
g++ -m32 -Wall -mtune=core2 -c cm_tracebox.cpp
g++ -m32 -Wall -mtune=core2 -c cm_trace.cpp

pause