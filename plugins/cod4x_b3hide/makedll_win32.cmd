@echo off

REM Compiling: debugging
REM echo `gcc -g -m32 -Wall -O1 -s -mtune=core2 -c *.c`

echo Compiling: release
gcc -m32 -Wall -O1 -s -mtune=core2 -c *.c || goto :error

echo Linking
gcc -m32 -s -shared -static-libgcc -static-libstdc++ -o b3hide.dll *.o -L..\ -lcom_plugin || goto :error
echo Cleaning up
del *.o

goto :EOF
:error
echo Failed with error #%errorlevel%.
exit /b 1
