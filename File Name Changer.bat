::Nathan Schmitt
::Version 0.1
::Description - Changes files names based on parameters in this file. 
	::Designed for files that need to be organized by numbers.


@echo off
@setlocal enabledelayedexpansion

echo Do you want to change file names?
echo 1: Start
echo 2: Exit

choice /c 12 
if errorlevel 2 goto end
if errorlevel 1 goto change


:change
::Directory files are in.
pushd \\MEDIASERVER\share\TV Shows\Dragon Ball Z\Season 09
::Displays directory on screen.
dir 
::Loop that changes files names.
for /l %%n in (254,1,291) do ren "[AnimeRG] Dragon Ball Z - %%n [1080p] [Tri-Audio] [BD] [khatake2].*" "Dragon Ball Z - s09e%%n.*"

popd
echo Done
pause

:end