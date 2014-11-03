rem     <GISAH>
rem    Copyright (C) <2014>  <Brandon Smith>
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

title Power menu in GISAH

echo ====================================================
echo			Power Menu
echo ====================================================

echo 1. Shutdown this machine
echo 2. Restart this machine
echo 3. Main menu

rem =====================================================

set choice=
set /p choice= 

if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto :shutdown
if '%choice%'=='2' goto :restart
if '%choice%'=='3' goto :return

rem =====================================================

:shutdown

shutdown -s -c "Shutdown initialized by GISAH"

rem =====================================================

:restart

shutdown -r -c "Restart initialized by GISAH"

rem =====================================================

:return

call ..\GISAH\gisah.bat

rem =====================================================
