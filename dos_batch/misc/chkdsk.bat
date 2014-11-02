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

:choice

cls

echo ===============================================
echo 		     Check Disk Menu
echo ===============================================

echo I. Check home drive and fix errors
echo II. Analyze home drive
echo A. Main menu

rem ===========================================

set choice=
set /p choice= 

if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto :check
if '%choice%'=='2' goto :analyze
if '%choice%'=='A' goto :return
if '%choice%'=='a' goto :return

rem ===========================================

:check

chkdsk /f

goto :choice

rem ===========================================

:analyze

chkdsk

goto :choice

rem ===========================================

:return

call ..\GISAH\gisah.bat
