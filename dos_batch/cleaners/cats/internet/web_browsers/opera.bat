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

cls

echo I will delete the following:
echo ------------------------------
echo Browsing History
echo Cache
echo Cookies
echo Download History
echo ------------------------------

pause

rem =============================================

call ..\GISAH\misc\Algorithms\appdata.bat

cd .\Opera\Opera\

echo Deleting Cookies ...
del .\cookies*.dat
echo [DONE]
echo Deleting Download History ...
del .\download.dat
echo [DONE]
echo Deleting History ...
del .\global_history.dat
echo [DONE]

cd ..
cd ..
cd ..

rem ====================================================

cd .\Local\Opera\Opera\

echo Deleting Cache ...

RMDIR /S /Q .\cache

mkdir .\cache

echo [DONE]

rem ====================================================

echo Complete!

pause

cls

echo GISAH will now close. Please restart the program.

pause

cls

exit
