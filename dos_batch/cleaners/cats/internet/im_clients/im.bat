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

title Instant Messaging Clients

color 17

cls

echo ========================================
echo		Instant Messaging
echo ========================================

echo I. Pidgin
echo A. Return to main menu
echo [1,2,3,etc.]?

set choice=
set /p choice= 

if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto :pidgin
if '%choice%'=='A' goto :exit
if '%choice%'=='a' goto :exit
echo "%choice% is not valid.

rem =================================================

:pidgin

call ..\GISAH\cleaners\cats\internet\im_clients\pidgin.bat

rem =================================================

:exit

call ..\GISAH\gisah.bat

rem =================================================
