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

title Cygwin Bash Shell in GISAH

cls

rem ============================================

goto :check

:choice

echo Would you like me to run the included Cygwin installer for you?

echo [Y,N]?

set choice=
set /p choice= 

if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='y' goto :YES
if '%choice%'=='Y' goto :YES
if '%choice%'=='n' goto :NO
if '%choice%'=='N' goto :NO

ECHO "%choice%" is not Yes or No, genius!

:NO

echo Want me to search for a Cygwin shell on your local storage?

echo [Y,N]?

set choice=
set /p choice= 

if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='y' goto :check
if '%choice%'=='Y' goto :check
if '%choice%'=='n' call ..\GISAH\gisah.bat
if '%choice%'=='N' call ..\GISAH\gisah.bat

ECHO "%choice%" is not Yes or No, genius!

:YES

..\GISAH\extras\cygwin_setup.exe

pause

rem =============================================================

echo Launch Cygwin?

echo [Y,N]?

set choice=
set /p choice= 

if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='y' goto :check
if '%choice%'=='Y' goto :check
if '%choice%'=='n' call ..\GISAH\gisah.bat
if '%choice%'=='N' call ..\GISAH\gisah.bat


ECHO "%choice%" is not Yes or No, genius!

:check

rem =============================================================

echo Checking local storage(s) for Cygwin ...

rem =============================================================

echo Checking A:

rem Check for A:

IF EXIST A: A:
IF NOT EXIST A: B:

IF EXIST A:\cygwin\Cygwin.bat echo A: [OK]
IF NOT EXIST A:\cygwin\Cygwin.bat echo A: [FAIL]

..\cygwin\Cygwin.bat

rem =============================================================

echo Checking B:

rem Check on B:

IF EXIST B: B:
IF NOT EXIST B: C:

IF EXIST B:\cygwin\Cygwin.bat echo B: [OK]
IF NOT EXIST B:\cygwin\Cygwin.bat echo B: [FAIL]

..\cygwin\Cygwin.bat

rem ===========================================================================

rem Check for C:

echo Checking C:

IF EXIST C: C: 
IF NOT EXIST C: D:

IF EXIST C:\cygwin\Cygwin.bat echo C: [OK]
IF NOT EXIST C:\cygwin\Cygwin.bat echo C: [FAIL]

..\cygwin\Cygwin.bat

rem =============================================================

rem Check for D:

echo Checking D:

IF EXIST D: D:
IF NOT EXIST D: E:

IF EXIST D:\cygwin\Cygwin.bat echo D: [OK]
IF NOT EXIST D:\cygwin\Cygwin.bat echo D: [FAIL]

..\cygwin\Cygwin.bat

rem =============================================================

rem Check for E:

echo Checking E:

IF EXIST E: E:
IF NOT EXIST E: echo Fail

IF EXIST E:\cygwin\Cygwin.bat echo E: [OK]
IF NOT EXIST E:\cygwin\Cygwin.bat echo E: [FAIL]

..\cygwin\Cygwin.bat

rem =============================================================

rem Check for F:

echo Checking F:

IF EXIST F: F:
IF NOT EXIST F: G:

IF EXIST F:\cygwin\Cygwin.bat echo F: [OK]
IF NOT EXIST F:\cygwin\Cygwin.bat echo F: [FAIL]

..\cygwin\Cygwin.bat

rem =============================================================

rem If none found.

goto :choice

rem =============================================================

pause

rem =============================================================
