#!/bin/sh
#
#  This program is free software; you can redistribute it and/or
#  modify it under the terms of the GNU General Public License as
#  published by the Free Software Foundation; either version 2 of the
#  License, or (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software Foundation,
#  Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA

if [ "$1" = "uninstall" ]; then
   	rm -f /usr/bin/sparkybackup
	rm -f /usr/bin/sparkylinux-installer
	rm -f /usr/bin/sparky-installer
	rm -f /usr/bin/spb
	rm -f /usr/bin/sparky-setxkb
	rm -rf /etc/sparkybackup
	rm -rf /usr/share/icons/sparky/sparkybackupsys
	rm -rf /usr/lib/sparkybackup
	rm -f /usr/share/menu/sparky-installation-guide
	rm -f /usr/share/menu/sparkylinux-installer
	rm -f /usr/share/applications/sparkylinux-installer.desktop
	rm -f /usr/share/applications/sparky-installation-guide.desktop
	rm -f /lib/live/config/0091-sddm
	rm -f /lib/live/config/1181-calamares-icon
	rm -f /lib/live/config/1182-advanced-installer-icon
	rm -f /lib/live/config/1183-installer-guide-icon
	rm -f /lib/live/config/1184-idesk-icon
	rm -f /lib/live/config/1185-sparky-livefix
	rm -rf /usr/share/sparkybackup/idesk
	rm -rf /usr/share/sparky/sparky-advanced-installer
	rm -rf /usr/share/sparky/sparky-backup-core
	rm -f /etc/xdg/autostart/sparky-setxkb.desktop
else
	if [ ! -d /etc/skel/Desktop ]; then
		mkdir -p /etc/skel/Desktop
	fi
	cp bin/* /usr/bin/
	mkdir -p /etc/sparkybackup
	cp etc/* /etc/sparkybackup/
	if [ ! -d /usr/share/icons/sparky/sparkybackupsys ]; then
		mkdir -p /usr/share/icons/sparky/sparkybackupsys
	fi
	cp icons/* /usr/share/icons/sparky/sparkybackupsys/
	if [ ! -d /usr/lib/sparkybackup ]; then
		mkdir -p /usr/lib/sparkybackup
	fi
	cp lib/* /usr/lib/sparkybackup/
	cp menu/* /usr/share/menu/
	cp share/*.desktop /usr/share/applications/
	if [ ! -d /lib/live/config ]; then
		mkdir -p /lib/live/config
	fi
	cp live/* /lib/live/config/
	if [ ! -d /usr/share/sparkybackup/idesk ]; then
		 mkdir -p /usr/share/sparkybackup/idesk
	fi
	cp idesk/* /usr/share/sparkybackup/idesk/
	if [ ! -d /usr/share/sparky/sparky-advanced-installer ]; then
		mkdir -p /usr/share/sparky/sparky-advanced-installer
	fi
	cp lang-inst/* /usr/share/sparky/sparky-advanced-installer/
	if [ ! -d /usr/share/sparky/sparky-backup-core ]; then
		mkdir -p /usr/share/sparky/sparky-backup-core
	fi
	cp lang-core/* /usr/share/sparky/sparky-backup-core/
	if [ ! -d /etc/xdg/autostart ]; then
		mkdir -p /etc/xdg/autostart
	fi
	cp xdg/* /etc/xdg/autostart/
fi
