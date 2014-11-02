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

title Windows 95 Cleaner Menu

echo =+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=

rem ===================================

:choice

echo I. Recycle Bin
echo II. Recent Documents
echo III. Internet Explorer
echo A. OS Menu
echo B. Main Menu

echo =+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=
echo [1,2,3,etc]?

set choice
set /p choice= 

if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto :recycle
if '%choice%'=='2' goto :recent
if '%choice%'=='3' goto :ie
if '%choice%'=='A' goto :os_menu
if '%choice%'=='a' goto :os_menu
if '%choice%'=='B' goto :main
if '%choice%'=='b' goto :main

rem ===========================================

:recycle

call ..\GISAH\cleaners\win9x\win_95\recycle_bin.bat

GOTO :choice

rem ===================================

:recent

call ..\GISAH\cleaners\win9x\win_95\recent_docs.bat

GOTO :choice

rem ===================================

:ie

call ..\GISAH\cleaners\win9x\win_95\internet_explorer.bat

GOTO :choice

rem ==================================
:os_menu

call ..\GISAH\misc\os_menu.bat

rem ==================================
:main

call ..\GISAH\misc\gisah.bat

rem ==================================
