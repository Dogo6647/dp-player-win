@echo off
echo Dogo+ Player (v0.10)
echo ----------------------------------------------------------------
echo How to prepare a movie for playback:
echo 1. Go to dogoplus.tk and copy the Movie ID from any movie on the site
echo 2. Open the player. Press [CTRL] + [V], then [Enter] to start watching
echo ----------------------------------------------------------------
SET /P inputname= Please enter Movie ID:

setlocal enableextensions enabledelayedexpansion

set inputfile=player.html
set tempfile=%random%-%random%.tmp

copy /y nul %tempfile%

set line=0

for /f "delims=" %%l in (%inputfile%) do (
    set /a line+=1
    if !line!==11 (
        echo https://p-def4.pcloud.com/%inputname%/video.mp4'>>%tempfile%
    ) else (
        echo %%l>>%tempfile%
    )
)

del %inputfile%
ren %tempfile% %inputfile%

endlocal
player.html
