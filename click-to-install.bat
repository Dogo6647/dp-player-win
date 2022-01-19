@echo off
color 8b
title Dogo+ Installer
echo DDD    OOO     GGG    OOOOO
echo D  D  O   O   G      O     O    1
echo D  D  O   O   G --G  O     O  --1--
echo DDD    OOO     GGG    OOOOO     1

timeout 3
cls
color 70
echo Welcome to the Dogo+ Installer!
echo __________________________________________________________________________

echo This batch file will walk you through the 
echo Dogo+ Player install process. It will install in C: now if you
pause
cls
echo Install in progress...
echo __________________________________________________________________________
echo Moving standalone app to C: root...
xcopy /e /i dogoplus_standalone C:\dogoplus_standalone\
echo Creating shortcut in Start Menu...
cd C:\dogoplus_standalone
xcopy /e /i "C:\dogoplus_standalone\DogoPlayer.lnk" "%AppData%\Microsoft\Windows\Start Menu\Programs\"
echo Installation complete! A Shortcut called "DogoPlayer" was created in your Start Menu.
timeout 10
