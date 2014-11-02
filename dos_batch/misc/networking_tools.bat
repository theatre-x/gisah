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

title GISAH Networking Tools Menu

color 17

:choice

cls

echo =========================================================
echo 			Networking tools
echo =========================================================

echo 1. Ping outside LAN
echo 2. Main menu

rem ============================================================

echo [1,2,etc.]?

set choice=
set /p choice= 

if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto :ping_out
if '%choice%'=='2' goto :return

rem ============================================================

:ping_out

ping www.google.com

pause

cls

goto :choice

rem ============================================================

:return

call ..\GISAH\gisah.bat

rem ============================================================
