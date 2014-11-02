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

:choice

title GISAH (Windows Server 2003)

color 17

cls

echo =======================================
echo *    *****  *  *****  *****  *   *    *
echo *    *      *  *      *   *  *   *    *
echo *    *  **  *  *****  *****  *****    *
echo *    *   *  *      *  *   *  *   *    *
echo *    *****  *  *****  *   *  *   *    *
echo =======================================

echo ----------------------------------------

echo OS: Windows Server 2003

echo ----------------------------------------

rem ============================================

rem Echoing command listing to user

echo I. Clean Hard-disk
echo II. Self-Cleaning
echo III. Launch Windows Tools
echo IV. GISAH System Tools
echo V. Launch Cygwin
echo VI. Networking Tools
echo VII. Drop to Command Prompt
echo VIII. Hardware Testing
echo A. Help
echo B. About
echo C. System Specifications
echo D. Power Menu
echo E. Exit

echo [1,2,3,etc]?

rem ===============================================

rem commands associated with echoes

set choice=
set /p choice= 

if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto :clean
if '%choice%'=='2' goto :self_clean
if '%choice%'=='3' goto :win_tools
if '%choice%'=='4' goto :g_sys_tools
if '%choice%'=='5' goto :cygwin
if '%choice%'=='6' goto :networking
if '%choice%'=='7' goto :cmd
if '%choice%'=='8' goto :h_testing
if '%choice%'=='A' goto :help
if '%choice%'=='a' goto :help
if '%choice%'=='B' goto :about
if '%choice%'=='b' goto :about
if '%choice%'=='C' goto :sys_specs
if '%choice%'=='c' goto :sys_specs
if '%choice%'=='D' goto :power
if '%choice%'=='d' goto :power
if '%choice%'=='E' goto :exit
if '%choice%'=='e' goto :exit

ECHO "%choice%" is not valid, try again

rem ===============================================
:cygwin

call ..\GISAH\misc\cygwin.bat

rem ===============================================
:g_sys_tools

call ..\GISAH\misc\g_sys_tools_nt.bat

rem ===============================================
:win_tools

call ..\GISAH\misc\win_tools.bat

rem ===============================================
:clean

call ..\GISAH\misc\cleaner_menu.bat

rem ===============================================

:exit

cls

exit

rem ===============================================

:help

call ..\GISAH\misc\help.bat

rem ===============================================

:about

call ..\GISAH\misc\about.bat

rem ===============================================

rem Self cleaning mechanism

:self_clean

cls

title GISAH Self-Cleaning

echo GISAH will now clean it's Logs directory.

pause

del ..\GISAH\logs\

pause

GOTO :choice

rem ===============================================

:other_tools

call ..\GISAH\misc\other_tools.bat

rem ===============================================

rem Call the Networking Tools menu

:networking

call ..\GISAH\misc\networking_tools.bat

rem ===============================================

rem Change dir to root of current drive and launch command prompt

:cmd

cd /

cmd

rem ===============================================

:h_testing

call ..\GISAH\misc\hardware_testing.bat

rem ===============================================

:sys_specs

cls

echo ============================================
echo		       Memory
echo ============================================

mem

echo ============================================
echo			CPU(s)
echo ============================================

SET NUMBER_OF_PROCESSORS
SET PROCESSOR_ARCHITECTURE

pause

goto :choice

rem ===============================================

:power

call ..\GISAH\misc\power.bat

rem ===============================================
