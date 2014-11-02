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

title GISAH : Help

cls

:choice

cls

echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo 			Help Menu
echo ===============================================

rem ================================================

echo 1. How to use GISAH
echo 2. What does "File Not Found" mean?
echo 3. How and where to file bug reports?
echo 4. View known bugs
echo 5. View the GNU General Public License
echo 6. Main menu

echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
set choice=
set /p choice= 

if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto :how_to_use
if '%choice%'=='2' goto :what
if '%choice%'=='3' goto :bug
if '%choice%'=='4' goto :known
if '%choice%'=='5' goto :gpl
if '%choice%'=='6' goto :return

rem ================================================

pause

:how_to_use

echo Simply use GISAH by selecting the corrosponding number of which option you would like to use.

pause

GOTO :choice

rem ================================================

:what

echo When you see a "File Not Found" or a similar prompt with a cleaner, this means that the directory is either empty and does not need cleaning or the cleaner has a bug.
echo Please see the About menu for details on bug reporting.

pause

GOTO :choice
rem ================================================

:bug

echo "For News updates with GISAH and bug reporting: <https://www.launchpad.net/projects/gisah>"

pause

GOTO :choice
rem ================================================

:gpl

notepad ..\GISAH\doc\GPLV3

pause

GOTO :choice

rem ================================================

:known

notepad ..\GISAH\doc\KNOWN_BUGS.txt

pause

GOTO :choice

rem ================================================

:return

call ..\GISAH\gisah.bat

rem ================================================
