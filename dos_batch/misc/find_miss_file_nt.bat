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

rem ======================================

title Find Missing System Files (NT)

color 17

cls

rem =======================================

echo Checking for System32 directory ...

IF EXIST %HOMEDRIVE%\Windows\System32 echo [OK]
IF NOT EXIST %HOMEDRIVE%\Windows\System32 echo [FAIL]

echo Checking for kernel32 ...

IF EXIST %HOMEDRIVE%\Windows\System32\kernel32.dll echo [OK]
IF NOT EXIST %HOMEDRIVE%\Windows\System32\kernel32.dll echo [FAIL]

pause

call ..\GISAH\misc\g_sys_tools_nt.bat

rem ===============================================================
