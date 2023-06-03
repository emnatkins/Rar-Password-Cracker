REM ==================================================
REM GitHub: @emnatkins
@echo off
color B
title Rar Password Cracker
mode con: cols=47 lines=20
copy "C:\Program Files\WinRAR\Unrar.exe" 
SET PASS=0
SET TMP=TempFold
MD %TMP%
:RAR
cls
echo ----------------------------------------------
echo      GET DETAIL FOR emnatkins
echo ----------------------------------------------
echo.
SET/P "NAME=Esme file ra vared konid  : "
IF "%NAME%"=="" goto NERROR
goto GPATH
:NERROR
echo ----------------------------------------------
echo               Rar-Password-Cracker
echo ----------------------------------------------
echo Sorry you can't leave it blank.
pause
goto RAR
:GPATH
SET/P "PATH=Adrese file ra vared konid : "
IF "%PATH%"=="" goto PERROR
goto NEXT
:PERROR
echo ----------------------------------------------
echo               Rar-Password-Cracker
echo ----------------------------------------------
echo Sorry you can't leave it blank.
pause
goto RAR
:NEXT
IF EXIST "%PATH%\%NAME%" GOTO SP
goto PATH
:PATH
cls
echo ----------------------------------------------
echo               Rar-Password-Cracker
echo ----------------------------------------------
echo File peyda nashod bishtar deghat konid ...
pause
goto RAR
:SP
echo.
echo ramzgoshaii...
echo. 
:START
title Cracking Password...
SET /A PASS=%PASS%+1
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%
UNRAR E -INUL -P%PASS% "%PATH%\%NAME%" "%TMP%"
IF /I %ERRORLEVEL% EQU 0 GOTO FINISH
GOTO START
:FINISH
RD %TMP% /Q /S
Del "Unrar.exe" 
cls
title Password Found
echo ----------------------------------------------
echo                     CRACKED
echo ----------------------------------------------
echo.
echo PASSWORD FOUND!
echo FILE  = %NAME%
echo CRACKED PASSWORD = %PASS%
pause>NUL
exit
REM ==================================================
