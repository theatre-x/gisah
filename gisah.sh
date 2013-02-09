#! /bin/bash

# <GISAH>
# Copyright (C) <2013>  <Theatre-X>
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>."


# =============================================
#  Let user know the OS
# =============================================

clear

echo "GISAH BASH on";
uname -o;

# =============================================

# Functions

# =============================================

function bash_history {
# History
	echo "Deleting Bash Command History..."
	rm ~/.bash_history
	echo "DONE!"

}

function firefox {

# firefox_cache
	echo "Deleting Cache..."
	rm -r ~/.mozilla/firefox/*.default/Cache/
	cd ~/.mozilla/firefox/*.default/
	mkdir ./Cache
	echo "DONE!"

# firefox_cookies
	echo "Deleting Cookies..."
	rm  ~/.mozilla/firefox/*.default/cookies.sqlite
	echo "DONE!"

# firefox_downloads
	echo "Deleting Download History..."
	rm ~/.mozilla/firefox/*.default/downloads.sqlite
	echo "DONE!"

# firefox_search
	echo "Deleting Search History..."
	rm ~/.mozilla/firefox/*.default/search.sqlite
	echo "DONE!"

# firefox_form
	echo "Deleting Form History..."
	rm ~/.mozilla/firefox/*.default/formhistory.sqlite
	echo "DONE!"
}

function macchange {
# Change MAC address using Macchanger
	echo "Does Macchanger exist?"
	if [ -f /usr/bin/macchanger ]
	then
		echo "Ayup, Macchanger exists, skipping installer..."
	else
		echo "Darn, Macchanger doesn't exist, initializing installer...";
fi

# Check for package manager
echo "Apt-get installed?"
if [ -f /usr/bin/apt-get ]
then
    echo "Apt-get exists, using that..."
else
    echo "Nope, checking for Yum...";
fi

echo "Engaging MAC address hiding ..."
echo "Putting down Wireless interface ..."
sudo ifconfig wlan0 down
echo "Hiding MAC address of Wireless interface ..."
sudo macchanger --mac 00:11:22:33:44:55 wlan0
echo "Putting up Wireless interface ..."
sudo ifconfig wlan0 up
echo "MAC address hid!"

}

function pidgin {
# Logs
        echo "Deleting Pidgin Logs..."
	rm -r ~/.purple/logs/*
	echo "DONE!"

# Icon cache
	echo "Deleting icon cache..."
	rm -r ~/.purple/icons/*

}

function wireless_sig_info {
# Display Wireless signal strength continuously
	watch -n 1 cat /proc/net/wireless

}

function thunderbird {
# Cookies
	echo "Deleting Cookies..."
	rm ~/.thunderbird/*.default/cookies.sqlite
	echo "DONE!"

# Cache
	echo "Deleting Cache..."
	rm -r ~/.thunderbird/*.default/Cache/*
	echo "DONE!"

# Downloads
	echo "Deleting Download History..."
	rm ~/.thunderbird/*.default/downloads.sqlite
	echo "DONE!"

}

function abrowser {
# Cache
	echo "Deleting Cache..."
	rm -r ~/.mozilla/abrowser/*.default/Cache/*
	echo "DONE!";
# Cookies
	echo "Deleting Cookies..."
	rm ~/.mozilla/abrowser/*.default/cookies.sqlite
	echo "DONE!";
# Downloads
	echo "Deleting Download History..."
	rm ~/.mozilla/abrowser/*.default/downloads.sqlite
	echo "DONE!"
}

function gnash {
# Shared Objects
    echo "Deleting Shared Objects..."
    rm -r ~/.gnash/SharedObjects/*

}
function end {
# Exit
	clear;
    break;
}

function shutdown {
	sudo shutdown -h -P now; echo "Peace out!"
}

function reboot {
    sudo reboot; echo "Peace!"

}

function about {

# About menu

echo "*******************************************************"
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo   "GISAH BASH 0.1.0"
echo   "GISAH stands for 'Gisah is simple as hell', a multi-purpose tool for Windows/MS-DOS, FreeDOS, Wine Shell, ReactOS, and Bash Shell."
echo   "Copyright (C) 2012  Brandon Smith"
echo   "This program is free software: you can redistribute it and/or modify"
echo   "it under the terms of the GNU General Public License as published by"
echo   "the Free Software Foundation, either version 3 of the License, or any later version."

echo   "This program is distributed in the hope that it will be useful,"
echo   "but WITHOUT ANY WARRANTY; without even the implied warranty of"
echo   "MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the"
echo   "GNU General Public License for more details."

echo   "You should have received a copy of the GNU General Public License"
echo   "along with this program.  If not, see http://www.gnu.org/licenses/."

echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "********************************************************"

}

function mem_clean {
	echo "Note: You must run GISAH in a root shell to use this (Try su - OR sudo bash)";

echo "Cleaning up memory..."
echo 3 > /proc/sys/vm/drop_caches

}

function ddd {
# History
	echo "Deleting history..."
	rm ~/.ddd/history.txt
	echo "DONE!"
# Log
	echo "Deleting log..."
	rm ~/.ddd/log.txt
	echo "DONE!"

}

function eshell {
# History
	echo "Deleting command history..."
	rm ~/.eshell/history*
	echo "DONE!"

}

function gnome-center {
# Background cache
	echo "Deleting wallpaper cache..."
	rm -r ~/.cache/gnome-control-center/backgrounds/*
	echo "DONE!"

}

function gwibber {
# Log
	echo "Deleting log..."
	rm ~/.cache/gwibber/*
	echo "DONE!"

}

function wallpaper_cache {
# Wallpaper Cache
	echo "Deleting wallpaper cache..."
	rm ~/.cache/wallpaper/*
	echo "DONE!"

}

function thumbnails {
# Thumbnail cache ("Normal")
	echo "Deleting thumbnail cache (Normal)..."
	rm ~/.thumbnails/normal/*
	echo "DONE!"
# Thumbnail cache ("Failed")
	echo "Deleting thumbnail cache (Failed)..."
	rm ~/.thumbnails/fail/*/*
	echo "DONE!"

}

function wine {
# Logs
	echo "Deleting logs..."
	rm -r ~/.wine/drive_*/windows/logs/*
	echo "DONE!"

# Temp
	echo "Deleting temp..."
	rm -r ~/.wine/drive_*/windows/temp/*
	echo "DONE!"

}

function gimp {
# Temp
	echo "Deleting temp..."
	rm -r ~/.gimp*/tmp/*
	echo "DONE!"

}

function evolution {
# Cache
	echo "Deleting cache..."
	rm -r ~/.cache/evolution/*
	echo "DONE!"

}

function libreoffice {
# Cache
	echo "Deleting cache..."
	rm -r ~/.libreoffice/*/user/uno_packages/cache/registry/*
	echo "DONE!"

# History
	echo "Deleting history..."
	rm ~/.libreoffice/*/user/uno_packages/cache/log.txt
	echo "DONE!"

}

function byond {
# Cache
	echo "Deleting cache..."
	rm -r ~/.byond/cache/*
	echo "DONE!"

}

function arora {
# Cache
	echo "Deleting cache..."
	rm -r ~/.cache/Arora/browser/http/*
	rm -r ~/.cache/Arora/browser/https/*
	echo "DONE!"

}

function media_art {
# Cache
	echo "Deleting cache..."
	rm -r ~/.cache/media-art/*
	echo "DONE!"

}

function zeitgeist {
# Logs
	echo "Cleaning logs..."
	rm -r ~/.cache/zeitgeist/*
	echo "DONE!"

}

function compiz {
# Cache
	echo "Deleting cache..."
	rm -r ~/.compiz/session/*
	echo "DONE!"

}

function conkeror {
# Cache
	echo "Deleting cache..."
	rm -r ~/.conkeror*/conkeror/*.default/Cache/*
	echo "DONE!"
# Cookies
	echo "Deleting cookies..."
	rm ~/.conkeror*/conkeror/*.default/cookies.sqlite
	echo "DONE!"

# Downloads
	echo "Deleting download history..."
	rm ~/.conkeror*/conkeror/*.default/downloads.sqlite
	echo "DONE!"

}

function dvdcss {
# Cache(?)
	echo "Deleting cache..."
	rm -r ~/.dvdcss/*
	echo "DONE!"

}

function font_config {
# Cache
	echo "Deleting cache..."
	rm ~/.fontconfig/*
	echo "DONE!"

}

function launchpad {
# Cache
	echo "Deleting cache..."
	rm ~/.launchpad*/api.*/cache/*
	echo "DONE!"

}

function kmess {
# Display pics
	echo "Deleting display pic cache..."
	rm ~/.kde/share/apps/kmess/displaypics/*
	echo "DONE!"

}

function kde {
# Cache
	echo "Deleting cache..."
	rm ~/.kde/cache*
	echo "DONE!"

# Tmp
	echo "Deleting temp..."
	rm ~/.kde/tmp*
	echo "DONE!"

}

function frostwire {
# Image Cache
	echo "Deleting image cache..."
	rm -r ~/.frostwire*/image_cache/*
	echo "DONE!"
# Logs
	echo "Deleting logs..."
	rm ~/.frostwire*/azureus/logs/*
	echo "DONE!"
# Temp files
	echo "Deleting temp files..."
	rm ~/.frostwire*/azureus/tmp/*
	echo "DONE!"

}

function furiusisomount {
# Log/history
	echo "Deleting logs..."
	rm ~/.furiusisomount/*.txt
	rm ~/.FuriusIsoMount/*.txt
	echo "DONE!"

}

function gedit {
# Cache
	echo "Deleting cache..."
	rm ~/.gnome2/gedit*.txt
	echo "DONE!"

}

# =====================================
#              User selection
# =====================================

select choice in \
	"Abrowser" \
	"Arora" \
	"Bash" \
	"Byond" \
	"Compiz" \
	"Conkeror" \
	"DDD" \
	"DvdCSS" \
	"Eshell" \
	"Evolution" \
	"Firefox" \
	"Font Config" \
	"Frostwire" \
	"FuriusIsoMount" \
	"Gedit" \
	"Gimp" \
        "Gnash" \
	"Gnome-Center" \
	"Gwibber" \
	"KDE" \
	"Kmess" \
	"Launchpad" \
	"LibreOffice" \
	"Media Art" \
	"Pidgin" \
	"Thumbnails" \
	"Thunderbird" \
	"Wallpaper Cache" \
	"Wine" \
	"Zeitgeist" \
	"Hide MAC address" \
	"Clean Memory" \
	"Wireless Signal Info" \
	"About" \
	"Exit"\
	"Shutdown" \
	"Reboot"

# =====================================================
#      Functions to perform based on user's selection
# =====================================================

do
    case $choice in
	"Abrowser")
	abrowser;
	;;
	"Arora")
	arora;
	;;
	"Bash")
	bash_history;
	;;
	"Byond")
	byond;
	;;
	"Compiz")
	compiz;
	;;
	"Conkeror")
	conkeror;
	;;
	"DDD")
	ddd;
	;;
	"Eshell")
	eshell;
	;;
	"Evolution")
	evolution;
	;;
        "Firefox")
        firefox;
        ;;
	"Font Config")
	font_config;
	;;
	"Frostwire")
	frostwire;
	;;
	"FuriusIsoMount")
	furiusisomount;
	;;
	"Gedit")
	gedit;
	;;
	"Gimp")
	gimp;
	;;
	"Gnash")
	gnash;
	;;
	"Gnome-Center")
	gnome-center;
	;;
	"Gwibber")
	gwibber;
	;;
	"KDE")
	kde;
	;;
	"Kmess")
	kmess;
	;;
	"Launchpad")
	launchpad;
	;;
	"LibreOffice")
	libreoffice;
	;;
	"Media Art")
	media_art;
	;;
	"Pidgin")
	pidgin;
	;;
	"Thumbnails")
	thumbnails;
	;;
	"Thunderbird")
	thunderbird;
	;;
	"Wallpaper Cache")
	wallpaper_cache;
	;;
	"Wine")
	wine;
	;;
	"Zeitgeist")
	zeitgeist;
	;;
	"Hide MAC address")
	macchange;
	;;
	"Clean Memory")
	mem_clean;
	;;
	"Wireless Signal Info")
	wireless_sig_info;
	;;
	"About")
	about;
	;;
	"Exit")
	end;
         ;;
	"Shutdown")
	shutdown;
	;;
	"Reboot")
	reboot;
	;;
        *)
            echo "Please select an option";

	esac
done

# End
