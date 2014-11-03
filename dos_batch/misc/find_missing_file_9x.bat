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

title Find Missing System Files (9x)

GOTO :find

rem ========================================================

:find

echo "Searching for COMMAND.COM"

IF EXIST ..\WINDOWS\COMMAND.COM echo [OK]
IF NOT EXIST ..\WINDOWS\COMMAND.COM echo [FAIL]

echo "Searching for CONFIG.SYS"

IF EXIST ..\WINDOWS\CONFIG.SYS echo [OK]
IF NOT EXIST ..\WINDOWS\CONFIG.SYS echo [FAIL]

echo "Searching for LOGO.SYS"

IF EXIST ..\WINDOWS\LOGO.SYS echo [OK]
IF NOT EXIST ..\WINDOWS\LOGO.SYS echo [FAIL]

echo "Searching for IO.SYS"

IF EXIST ..\WINDOWS\IO.SYS echo [OK]
IF NOT EXIST ..\WINDOWS\IO.SYS echo [FAIL]

echo "Searching for WIN.COM"

IF EXIST ..\WINDOWS\WIN.COM echo [OK]
IF NOT EXIST ..\WINDOWS\WIN.COM echo [FAIL]

echo "Searching for MSDOS.SYS"

IF EXIST ..\WINDOWS\MSDOS.SYS echo [OK]
IF NOT EXIST ..\WINDOWS\MSDOS.SYS echo [FAIL]

echo "Searching for AUTOEXEC.BAT"

IF EXIST ..\WINDOWS\AUTOEXEC.BAT echo [OK]
IF NOT EXIST ..\WINDOWS\AUTOEXEC.BAT echo [FAIL]

pause

call ..\GISAH\g_sys_tools_9x.bat

rem ===============================================================
