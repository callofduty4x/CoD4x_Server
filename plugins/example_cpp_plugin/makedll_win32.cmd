@echo off

echo Compiling: release
g++ -std=gnu++17 -m32 -Wall -s -O1 -mtune=core2 -c *.cpp || goto :error

echo Linking
g++ -std=gnu++17 -m32 -Wall -s -shared -static-libgcc -static-libstdc++ -o antispam.dll *.o -L..\ -lcom_plugin || goto :error
echo Cleaning up
del *.o

goto :EOF
:error
echo Failed with error #%errorlevel%.
exit /b 1
