@echo off
SETLOCAL ENABLEEXTENSIONS
SET CURRENT_DIR=%~dp0
SET CURRENT_DIR=%CURRENT_DIR:~0,-1%
if "%1"=="" goto veryend

:unpack
if exist %1\*.appx forfiles /p %1 /m *.appx /c 		"cmd /c %CURRENT_DIR%\RepackageAndTestFor10S.cmd @PATH %2 %3 %4"
if exist %1\*.appxbundle forfiles /p %1 /m *.appxbundle /c 	"cmd /c %CURRENT_DIR%\RepackageAndTestFor10S.cmd @PATH %2 %3 %4"
goto end

:end
cd ..
:veryend


