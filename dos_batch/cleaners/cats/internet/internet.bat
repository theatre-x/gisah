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

cls

:choice

echo =====================================================
echo =====================================================
echo                       INTERNET
echo =====================================================
echo =====================================================

echo I. Email Clients
echo II. Instant Messenging Clients
echo III. Other
echo IV. RSS Feeders
echo V. Toolbars
echo VI. Web Browsers
echo VII. Return to Cleaner main menu

echo [1,2,3,etc.]?

set choice=
set /p choice= 

if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto :email
if '%choice%'=='2' goto :im
if '%choice%'=='3' goto :other
if '%choice%'=='4' goto :rss
if '%choice%'=='5' goto :toolbars
if '%choice%'=='6' goto :browsers
if '%choice%'=='7' goto :return

rem ========================================================

:email

call ..\GISAH\cleaners\cats\internet\email_clients\email.bat

rem ========================================================

:im

call ..\GISAH\cleaners\cats\internet\im_clients\im.bat

rem ========================================================

:return

call ..\GISAH\gisah.bat

rem ========================================================

:browsers

call ..\GISAH\cleaners\cats\internet\web_browsers\web_browsers.bat

pause

rem ========================================================
