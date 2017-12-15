@echo off

REM Compiling: debugging
REM echo `gcc -g -m32 -Wall -O1 -s -mtune=core2 -c *.c`

echo Compiling: release
gcc -m32 -Wall -O1 -g -mtune=core2 -c *.c || goto :error

echo Linking
gcc -m32 -g -shared -static-libgcc -static-libstdc++ -o sourcebansplugin.dll *.o -L..\ -lcom_plugin || goto :error
echo Cleaning up
del *.o

goto :EOF
:error
exit /b %errorlevel%
