@echo off
color %clr%
cd %pcd%
:main
cls
set /p btn=<dsk%username%
if %resolution%==1 type bgd%username%1080p
if %resolution%==2 type bgd%username%1440p
if %resolution%==1 (
echo [65;0H
echo ____________________________________________________________________________________________________________________________________________________________________________________________________________________________________________
echo I [ M ]    [C:^>]    [CTP]                                                                                                                                                                                                                  I
)
if %resolution%==2 (
echo [87;0H
echo _____________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________
echo I [ M ]    [C:^>]    [CTP]                                                                                                                                                                                                                                                                                                   I
)
echo [0;0H
for /f "tokens=*" %%a in (desktop%username%) do echo %%a
if %return%==1 (
set return=0
call command.bat
)
choice /c %btn% /n
act%username%.bat
goto main
;