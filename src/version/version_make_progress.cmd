@ECHO OFF &SETLOCAL ENABLEDELAYEDEXPANSION
SET "HFile=version_build.h"
SET "search=#define BUILD_NUMBER"

FOR /f %%a IN ('^<"%HFile%" find /c /v ""') DO SET /a lines=%%a
< "%HFile%" (
FOR /l %%a IN (1,1,%lines%) DO (
     SET "line="
     SET /p "line="
     IF NOT "!line!"=="" IF NOT "!line:%search%=!"=="!line!" (
          SET /a replace=!line:%search%=!+1
          SET "line=%search% !replace!"
     )
     ECHO(!line!
))>"%HFile%.new"
MOVE /y "%HFile%.new" "%HFile%"
TYPE "%HFile%"