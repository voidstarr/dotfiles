#!/bin/bash

#Remove cdrom from our repositories
sed -i 's/^deb cdrom/# deb cdrom/g' /etc/apt/sources.list

#TODO: do this much better
print 'Have you added contrib non-free? If not ^C now!\n'
read

#Upgrade existing repositories
aptitude update
aptitude dist-upgrade -y

# rid ourselves of this
aptitude remove vi -y

##Install sudo, vim, screen, xorg, awesome, and pulse
apt-get install -y vim sudo screen xorg awesome awesome-extra pavucontrol xclip git rxvt-unicode-256color xfonts-terminus

mkdir -p ${HOME}/.config/awesome
cp /etc/xdg/awesome/rc.lua ${HOME}/.config/awesome/rc.lua
chown -R ${USER}:${GROUPS[0]} ${HOME}/.config

#move bash/bash_profile to ~/.bash_profile
#move x/xinitrc to ~/.xinitrc
