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

title Windows Tools in GISAH

color 17

:choice

cls

echo ==================================================
echo ==================================================
echo                  Windows Tools
echo ==================================================
echo ==================================================

rem ===========================================

echo I. Disk Defragmenter
echo II. Scan-Disk
echo III. Registry Editor
echo IV. MSConfig
echo V: Disk Cleanup
echo VI. Windows Explorer
echo VII. Control Panel
echo VIII. Task Manager
echo A. Help
echo B. Main menu

rem ===========================================

set choice=
set /p choice= 

if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto :disk_defrag
if '%choice%'=='2' goto :scan_disk
if '%choice%'=='3' goto :regedit
if '%choice%'=='4' goto :msconfig
if '%choice%'=='5' goto :cleaner
if '%choice%'=='6' goto :explorer
if '%choice%'=='7' goto :control_p
if '%choice%'=='8' goto :taskmgr
if '%choice%'=='A' goto :help
if '%choice%'=='a' goto :help
if '%choice%'=='B' goto :return
if '%choice%'=='b' goto :return

rem ===========================================

:help

cls

title GISAH : Windows Tools : Help

pause

cls

GOTO :choice

rem ==========================================

:disk_defrag

cls

echo Launching Windows Disk Defragmenter ...

call ..\GISAH\misc\defrag.bat

pause

GOTO :choice

cls

rem ==========================================

:return

call ..\GISAH\gisah.bat

rem ==========================================

:regedit

cls

echo Launching Windows Registry Editor ...

regedit.exe

pause

GOTO :choice

rem ==========================================

:msconfig

cls

echo NOTE: If you are running Windows 2000. Please know that Windows 2000 does not come with MSConfig pre-installed. You must go out to the Internet and find it. Try this URL:

echo http://www.techadvice.com/win2000/m/msconfig_w2k.htm

pause

echo Launching MSConfig Menu ...

msconfig.exe

pause

GOTO :choice

rem ==========================================

:cleaner

cls

echo Launching Windows Disk Cleaner ...

cleanmgr.exe

pause

GOTO :choice

rem ==========================================

:explorer

cls

echo Launching Windows Explorer ...

explorer.exe

pause

GOTO :choice

rem ==========================================

:control_p

cls

echo Launching Windows Control Panel ...

control panel

pause

GOTO :choice

rem ==========================================

:taskmgr

cls

echo Launching Windows Task Manager ...

taskmgr.exe

pause

GOTO :choice

rem ==========================================

:scan_disk

call ..\GISAH\misc\chkdsk.bat

rem ==========================================
