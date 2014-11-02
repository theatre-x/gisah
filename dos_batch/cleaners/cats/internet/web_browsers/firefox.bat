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
echo Active Logins
echo Cache
echo Cookies
echo Download History
echo Offline Cache
echo Saved Form and Search History
echo ------------------------------

pause

rem =============================================

call ..\GISAH\misc\Algorithms\appdata.bat

cd .\Mozilla\Firefox\Profiles\*.default\

echo Deleting Active Logins
del .\signons.sqlite
echo [DONE]
echo Deleting Cookies ...
del .\cookies.sqlite
echo [DONE]
echo Deleting Download History ...
del .\downloads.sqlite
echo [DONE]
echo Deleting Form History ...
del .\formhistory.sqlite
echo [DONE]

rem ======================================

rem History commented out due to bug

rem echo Deleting History ...
rem del .\places.sqlite
rem echo [DONE]

rem ======================================

echo Deleting Search History ...
del .\search.sqlite
echo [DONE]

cd ..
cd ..
cd ..
cd ..
cd ..

rem ====================================================

rem Cache delete

cd .\Local\Mozilla\Firefox\Profiles\*.default\

echo Deleting Cache ...

RMDIR /S /Q .\Cache 

mkdir .\Cache

echo [DONE]

rem ====================================================

echo Complete!

pause

cls

echo GISAH will now close. Please restart the program.

pause
