@echo off
echo This script will now prepare the files for using SharedMedia_Soulpegger

if exist ..\SharedMedia_Soulpegger goto has_folder
echo Creating the folders...
mkdir ..\SharedMedia_Soulpegger
mkdir ..\SharedMedia_Soulpegger\background
mkdir ..\SharedMedia_Soulpegger\border
mkdir ..\SharedMedia_Soulpegger\font
mkdir ..\SharedMedia_Soulpegger\sound
mkdir ..\SharedMedia_Soulpegger\statusbar
echo You can now put your media files into the subfolders found at World of Warcraft\Interface\Addons\SharedMedia_Soulpegger
goto end_of_file

:has_folder
echo Creating the TOC...
echo ## Interface: 100002 > ..\SharedMedia_Soulpegger\SharedMedia_Soulpegger.toc
echo ## Title: SharedMedia_Soulpegger >> ..\SharedMedia_Soulpegger\SharedMedia_Soulpegger.toc
echo ## Dependencies: SharedMedia >> ..\SharedMedia_Soulpegger\SharedMedia_Soulpegger.toc
echo Soulpegger.lua >> ..\SharedMedia_Soulpegger\SharedMedia_Soulpegger.toc
echo Creating the file...
echo local LSM = LibStub("LibSharedMedia-3.0") > ..\SharedMedia_Soulpegger\Soulpegger.lua

echo    BACKGROUND
echo.>> ..\SharedMedia_Soulpegger\Soulpegger.lua
echo -- ----- >> ..\SharedMedia_Soulpegger\Soulpegger.lua
echo -- BACKGROUND >> ..\SharedMedia_Soulpegger\Soulpegger.lua
echo -- ----- >> ..\SharedMedia_Soulpegger\Soulpegger.lua
for %%F in (..\SharedMedia_Soulpegger\background\*.*) do (
echo       %%~nF
echo LSM:Register("background", "%%~nF", [[Interface\Addons\SharedMedia_Soulpegger\background\%%~nxF]]^) >> ..\SharedMedia_Soulpegger\Soulpegger.lua
)

echo    BORDER
echo.>> ..\SharedMedia_Soulpegger\Soulpegger.lua
echo -- ----- >> ..\SharedMedia_Soulpegger\Soulpegger.lua
echo --  BORDER >> ..\SharedMedia_Soulpegger\Soulpegger.lua
echo -- ---- >> ..\SharedMedia_Soulpegger\Soulpegger.lua
for %%F in (..\SharedMedia_Soulpegger\border\*.*) do (
echo       %%~nF
echo LSM:Register("border", "%%~nF", [[Interface\Addons\SharedMedia_Soulpegger\border\%%~nxF]]^) >> ..\SharedMedia_Soulpegger\Soulpegger.lua
)

echo    FONT
echo.>> ..\SharedMedia_Soulpegger\Soulpegger.lua
echo -- ----->> ..\SharedMedia_Soulpegger\Soulpegger.lua
echo --   FONT>> ..\SharedMedia_Soulpegger\Soulpegger.lua
echo -- ----->> ..\SharedMedia_Soulpegger\Soulpegger.lua
for %%F in (..\SharedMedia_Soulpegger\font\*.ttf) do (
echo       %%~nF
echo LSM:Register("font", "%%~nF", [[Interface\Addons\SharedMedia_Soulpegger\font\%%~nxF]]^) >> ..\SharedMedia_Soulpegger\Soulpegger.lua
)

echo    SOUND
echo.>> ..\SharedMedia_Soulpegger\Soulpegger.lua
echo -- ----->> ..\SharedMedia_Soulpegger\Soulpegger.lua
echo --   SOUND>> ..\SharedMedia_Soulpegger\Soulpegger.lua
echo -- ----->> ..\SharedMedia_Soulpegger\Soulpegger.lua
for %%F in (..\SharedMedia_Soulpegger\sound\*.*) do (
echo       %%~nF
echo LSM:Register("sound", "%%~nF", [[Interface\Addons\SharedMedia_Soulpegger\sound\%%~nxF]]^) >> ..\SharedMedia_Soulpegger\Soulpegger.lua
)

echo    STATUSBAR
echo.>> ..\SharedMedia_Soulpegger\Soulpegger.lua
echo -- ----->> ..\SharedMedia_Soulpegger\Soulpegger.lua
echo --   STATUSBAR>> ..\SharedMedia_Soulpegger\Soulpegger.lua
echo -- ----->> ..\SharedMedia_Soulpegger\Soulpegger.lua
for %%F in (..\SharedMedia_Soulpegger\statusbar\*.*) do (
echo       %%~nF
echo LSM:Register("statusbar", "%%~nF", [[Interface\Addons\SharedMedia_Soulpegger\statusbar\%%~nxF]]^) >> ..\SharedMedia_Soulpegger\Soulpegger.lua
)

:end_of_file
pause