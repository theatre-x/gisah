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

title Windows ME Cleaner

rem ========================================

echo =+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=

echo I. Recent Documents
echo II. Temp Files
echo A. OS Menu
echo B. Main Menu

echo =+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=

rem ========================================

echo [1,2,3,etc]?

set choice
set /p choice= 

if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto :recent
if '%choice%'=='2' goto :temp
if '%choice%'=='A' goto :os_menu
if '%choice%'=='a' goto :os_menu
if '%choice%'=='B' goto :return
if '%choice%'=='b' goto :return

rem ========================================

:recent

call ..\GISAH\cleaners\win9x\win_me\recent.bat

rem ========================================

:temp

call ..\GISAH\cleaners\win9x\win_me\temp.bat

rem ========================================
:os_menu

call ..\GISAH\os_menu.bat

rem ========================================
:main

call ..\GISAH\gisah.bat

rem ========================================
