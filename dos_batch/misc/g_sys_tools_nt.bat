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

rem ===============================

rem Window amendment commands

title GISAH System Tools

color 17

rem ===============================

:choice

cls

echo =============================================================
echo 			GISAH System Tools
echo =============================================================

rem =====================================================

echo 1. Find missing system files
echo A. Main menu

rem =====================================================

echo [1,A,etc.]?

set choice
set /p choice= 

if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto :find
if '%choice%'=='A' goto :return
if '%choice%'=='a' goto :return

rem =====================================================

:find

call ..\GISAH\misc\find_miss_file_nt.bat

rem =====================================================

:return

call ..\GISAH\gisah.bat

rem =====================================================
