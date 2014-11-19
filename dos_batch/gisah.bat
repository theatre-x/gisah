@echo off

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


title GISAH: GISAH Is Simple As Hell

rem ==============================================================================

ver | findstr /i "6\.1\." > nul
IF %ERRORLEVEL% EQU 0 goto :Other_windows

ver | findstr /i "5\.0\." > nul
IF %ERRORLEVEL% EQU 0 goto :win_2000

IF EXIST C:\WINDOWS\COMMAND.COM goto :win_9x_me

rem ==============================================================================

:Other_windows

echo "Hello, this version of Windows is not supported. GISAH is meant for Windows 2000 and lower. Sorry about that :("

rem ==============================================================================

:win_2000

call ..\GISAH\os\win_2k.bat

rem ==============================================================================

:win_9x_me

call ..\GISAH\os\win_9x.bat

rem ==============================================================================

