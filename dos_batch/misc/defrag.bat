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

rem ==============================================

@echo off

title Disk Defragmenter

cls

echo ==============================================
echo 		   Disk Defragmenter
echo ==============================================

echo I. Analyze all volumes.
echo II. Defrag Windows Drive
echo A. Main Menu

set choice=
set /p choice= 

if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto :analyze
if '%choice%'=='2' GOTO :defrag
if '%choice%'=='a' GOTO :return
if '%choice%'=='A' GOTO :return

rem ===============================================

:analyze

defrag %HOMEDRIVE% /A /V

rem ===============================================

:defrag

defrag %HOMEDRIVE% /V

rem ===============================================

:return

call ..\GISAH\gisah.bat

rem ==========================================
