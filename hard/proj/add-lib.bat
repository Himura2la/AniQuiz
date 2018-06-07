@echo off

cd ..
cd lib

git submodule init
git submodule update

cd ..

(
echo ^(fp_lib_table
echo   ^(lib ^(name ESP8266^)^(type KiCad^)^(uri %cd%\lib\ESP8266.pretty^)^(options ""^)^(descr ""^)^)
echo   ^(lib ^(name Project-Lib^)^(type KiCad^)^(uri %cd%\proj-lib.pretty^)^(options ""^)^(descr ""^)^)
echo ^)
) > "%~dp0%fp-lib-table"


echo 4. To make the 3d models usable, add the location from step #1 to list
echo    of configured paths as `ESPLIB`. Use a full path. Continuing with
echo    the example step #1:
echo.
echo        kicad:Preferences-^>Configure Paths-^>Add
echo.
echo            Name: ESPLIB
echo            Path: %cd%
echo.


pause