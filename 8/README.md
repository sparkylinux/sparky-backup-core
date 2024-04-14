Sparky Backup Core

This tool lets you create a hybrid ISO image from your SparkyLinux installation. The package contains the sparkybackup tool and a live installer, both work in a text mode only.

Copyright (C) 2013-2024 Paweł Pijanowski and others, see copyright file.

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

Dependencies:
---------------
apt
bash
btrfs-progs
console-data
coreutils
dialog
dosfstools
dpkg
findutils
gawk
grep
hwdata
iputils-ping
keyboard-configuration
laptop-detect
live-boot, live-config, live-config-systemd, live-boot-initramfs-tools
locales
mount
nano
os-prober
parted
passwd
rsync
sed
sparky-backup-desktop (>= 20180729) | sparky-server
sparky-info
squashfs-tools
syslinux-utils
systemd
systemd-sysv
util-linux
x11-utils
xfsprogs
xorriso | genisoimage
xz-utils
lvm2
cryptsetup

Conflicts:
------------
sparky-remastersys
sparky-backup-sys (<= 20180606)

Replaces:
------------
sparky-backup-sys (<= 20180606)

Suggests:
-------------
aptitude
grub-pc
cryptsetup-initramfs

Install:
-------------
su (or sudo) 
./install.sh

Uninstall:
-------------
su (or sudo)
./install.sh uninstall
