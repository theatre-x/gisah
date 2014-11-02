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

title GISAH Hardware Testing

color 17

:choice

rem ====================================

cls

echo ==============================================
echo 		GISAH Hardware Testing
echo ==============================================

echo 1. Monitor Color Test
echo 2. Return to main menu

echo [1,2,etc]?

rem ====================================

set choice=
set /p choice= 

if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto :color_test
if '%choice%'=='2' goto :return

ECHO "%choice%" is not valid, try again

rem ====================================

rem Monitor testing

:color_test

cls

echo GISAH will now initiate a test to test your monitor using various colors. The first test will start with the 3 composite colors: Red, Green, and Blue.

pause

rem Red w/ black test

:red

cls

color 47

echo Is your monitor displaying a red background with white text?

echo Y/N/R?

set choice
set /p choice= 

if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='Y' goto :green
if '%choice%'=='y' goto :green
if '%choice%'=='N' echo %DATE% %TIME% RED TEST: [FAIL] >> ..\GISAH\Logs\monitor_test.txt
if '%choice%'=='N' goto :green
if '%choice%'=='n' echo %DATE% %TIME% RED TEST: [FAIL] >> ..\GISAH\Logs\monitor_test.txt
if '%choice%'=='n' goto :green
if '%choice%'=='R' goto :red
if '%choice%'=='r' goto :red

ECHO "%choice%" is not valid, try again

rem ==================================================

:green

cls

color 27

echo Is your monitor displaying a green background with white text?

echo Y/N/R?

set choice
set /p choice= 

if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='Y' goto :blue
if '%choice%'=='y' goto :blue
if '%choice%'=='N' echo %DATE% %TIME% GREEN TEST: [FAIL] >> ..\GISAH\Logs\monitor_test.txt
if '%choice%'=='N' goto :blue
if '%choice%'=='n' echo %DATE% %TIME% GREEN TEST: [FAIL] >> ..\GISAH\Logs\monitor_test.txt
if '%choice%'=='n' goto :blue
if '%choice%'=='R' goto :green
if '%choice%'=='r' goto :green

echo Y/N/R?

ECHO "%choice%" is not valid, try again

rem ==================================================

:blue

cls

color 17

echo Is your monitor displaying a blue background with white text?

echo Y/N/R?

set choice
set /p choice= 

if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='Y' goto :done
if '%choice%'=='y' goto :done
if '%choice%'=='N' echo%DATE% %TIME% BLUE TEST: [FAIL] >> ..\GISAH\Logs\monitor_test.txt
if '%choice%'=='N' goto :done
if '%choice%'=='n' echo %DATE% %TIME% BLUE TEST: [FAIL] >> ..\GISAH\Logs\monitor_test.txt
if '%choice%'=='n' goto :done
if '%choice%'=='R' goto :blue
if '%choice%'=='r' goto :blue

ECHO "%choice%" is not valid, try again

rem ==================================================

:done

cls

echo Testing complete. Check Logs dir to see errors.

pause

goto :choice

cls

rem ==================================================

:return

call ..\GISAH\gisah.bat

rem ==================================================
