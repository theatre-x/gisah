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

ver | findstr /i "5\.0\." > nul
IF %ERRORLEVEL% EQU 0 goto :win_2000

ver | findstr /i "5\.1\." > nul
IF %ERRORLEVEL% EQU 0 goto :win_XP

ver | findstr /i "5\.2\." > nul
IF %ERRORLEVEL% EQU 0 goto :win_serv_2003

ver | findstr /i "6\.0\." > nul
IF %ERRORLEVEL% EQU 0 goto :win_vista

ver | findstr /i "6\.1\." > nul
IF %ERRORLEVEL% EQU 0 goto :win_7

IF EXIST C:\WINDOWS\COMMAND.COM goto :win_9x_me


rem ==============================================================================

:win_2000

call ..\GISAH\os\win_2k.bat

rem ==============================================================================

:win_7

call ..\GISAH\os\win_7.bat

rem ==============================================================================

:win_vista

call ..\GISAH\os\win_vista.bat

rem ==============================================================================

:win_serv_2003

call ..\GISAH\os\win_serv_2003.bat

rem ==============================================================================

:win_XP

call ..\GISAH\os\win_xp.bat

rem ==============================================================================

:win_9x_me

call ..\GISAH\os\win_9x.bat

rem ==============================================================================
