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

color 17

title GISAH OS Selection (9x/ME)

cls

echo =+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=
echo "Choose your operating system"
echo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo "Note: Make sure it is the right OS or GISAH may not clean the proper directory or not find desired program"
echo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo 1. Windows 95
echo 2. Windows 98
echo 3. Windows ME
echo A. Return to Main Menu

echo =+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=
echo [1,2,3,etc]?

set choice
set /p choice= 

if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto :win95
if '%choice%'=='2' goto :win98
if '%choice%'=='3' goto :winme
if '%choice%'=='A' goto :return
if '%choice%'=='a' goto :return

rem ========================================

:win95

call ..\GISAH\os\win_95.bat

rem ========================================

:win98

call ..\GISAH\os\win_98.bat

rem ========================================

:winme

call ..\GISAH\os\Win_me.bat

rem ========================================

:return

call ..\GISAH\gisah.bat

rem ========================================
