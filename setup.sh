#!/bin/bash

# using ubuntu 18.04
# run from repo directory

#Upgrade existing repositories
sudo apt update
sudo apt dist-upgrade -y

##Install my base packages
sudo apt install -y vim screen tmux xorg awesome awesome-extra slim pavucontrol xclip git rxvt-unicode-256color wpasupplicant wireless-tools

mkdir -p ~/.config/awesome
ln -s `pwd`/awesome/rc.lua ~/.config/awesome/rc.lua

#link bash/bash_profile to ~/.bash_profile
ln -s `pwd`/bash/bash_profile ~/.bash_profile

#link x/xinitrc to ~/.xinitrc
ln -s `pwd`/x/xinitrc ~/.xinitrc
#link x/Xresources to ~/.Xresources
ln -s `pwd`/x/Xresources ~/.Xresources

#link tmux/tmux.conf to ~/.tmux.conf
ln -s `pwd`/tmux/tmux.conf ~/.tmux.conf

#link bash/bash_profile to ~/.bash_profile
ln -s `pwd`/bash/bash_profile ~/.bash_profile
#link bash/bash_logout to ~/.bash_logout
ln -s `pwd`/bash/bash_logout ~/.bash_logout
#link bash/aliases to ~/.aliases
ln -s `pwd`/bash/aliases ~/.aliases

#link vim/vimrc to ~/.vimrc
ln -s `pwd`/vim/vimrc ~/.vimrc

#replace default slim.conf with mine
sudo cp `pwd`/slim/slim.conf /etc/slim.conf

#set default terminal to urxvt
update-alternatives --config x-terminal-editor
