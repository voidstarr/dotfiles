#!/bin/bash

#Upgrade existing repositories
apt-get update
apt-get dist-upgrade -y

#Add all necessary repositories
apt-add-repository -y ppa:nilarimogard/webupd8
add-apt-repository -y ppa:ubuntu-wine/ppa

#Do a little dance
apt-get update

#Make a little love
##Install xorg, awesome, and pulse
apt-get install -y xorg awesome awesome-extra pavucontrol xclip git rxvt-unicode

mkdir -p .config/awesome
cp /etc/xdg/awesome/rc.lua .config/awesome/rc.lua
chown -R foss .config

echo 'if [ -z "$DISPLAY" ] && [ $(tty) = /dev/tty1 ]; then \n  startx\nfi' > .bash_profile
echo 'exec awesome' > .xinitrc
