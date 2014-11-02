rem     <GISAH>
rem    Copyright (C) <2012>  <Brandon Smith>
rem    This program is free software: you can redistribute it and/or modify
rem    it under the terms of the GNU General Public License as published by
rem    the Free Software Foundation, either version 3 of the License, or any later version.

rem    This program is distributed in the hope that it will be useful,
rem    but WITHOUT ANY WARRANTY; without even the implied warranty of
rem    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
rem    GNU General Public License for more details.

rem    You should have received a copy of the GNU General Public License
rem    along with this program.  If not, see <http://www.gnu.org/licenses/>."

@echo off

title VideoLAN Client Cleaner

cls

echo I will delete the following:
echo -----------------------------
echo Cache
echo -----------------------------

pause

call ..\GISAH\misc\Algorithms\appdata.bat

cd .\vlc\

echo Now deleting Cache ...
del .\*.cache*
echo [DONE]

echo Complete!

pause

cls

echo GISAH will now close. Please restart the program.

pause

cls

exit

rem ======================================================
