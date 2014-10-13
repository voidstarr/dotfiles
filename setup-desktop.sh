#!/bin/bash

#Add all necessary repositories
apt-add-repository -y ppa:nilarimogard/webupd8
add-apt-repository -y ppa:ubuntu-wine/ppa

#Do a little dance
apt-get update

#Make a little love
apt-get install -y gimp hexchat qt-sdk qtcreator virtualbox remmina vlc gimp yakuake pulseaudio-equalizer zsh
chsh $(which zsh)

#Misc items go here
echo 'Other things needed:\n'
echo 'Teamspeak 3: http://www.teamspeak.com/\n'
echo 'Hyperbox: http://hyperbox.altherian.org/\n'
echo 'To complete setup process reboot this machine.'
