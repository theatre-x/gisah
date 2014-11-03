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

:choice

title GISAH Cleaning Menu (NT)

cls

echo ======================================================
echo ======================================================
echo                GISAH Cleaner Main Menu
echo ======================================================
echo ======================================================

rem ==============================================

echo I. Accessories
echo II. Games
echo III. Graphics
echo IV. Internet
echo V. Office
echo VI. Sound and Video
echo VII. System
echo VIII. Help with menu
echo XI. Return to main menu
rem ==============================================

echo [1,2,3,etc.]?

set choice=
set /p choice= 

if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto :accessories
if '%choice%'=='2' goto :games
if '%choice%'=='3' goto :graphics
if '%choice%'=='4' goto :internet
if '%choice%'=='5' goto :office
if '%choice%'=='6' goto :sound_and_video
if '%choice%'=='7' goto :system
if '%choice%'=='8' goto :help
if '%choice%'=='9' goto :exit

rem ==============================================

:exit

call ..\GISAH\gisah.bat

rem ==============================================

:help

cls

echo Simply select the category that corresponds with the program you wish to clean by pressing the number next to the category on your keyboard. (e.g. Firefox would be located under "Internet").

pause

goto :choice

rem ==============================================

:system

call ..\GISAH\menus\system.bat

rem ==============================================

:sound_and_video

call ..\GISAH\cleaners\cats\s_and_v\s_and_v.bat

rem ==============================================

:office

call ..\GISAH\menus\office.bat

rem ==============================================

:internet

call ..\GISAH\cleaners\cats\internet\internet.bat

rem ==============================================

:graphics

call ..\GISAH\menus\graphics.bat

rem ==============================================

:games

call ..\GISAH\menus\games.bat

rem ==============================================
