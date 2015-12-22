dotfiles
=======
this dotfiles repo is heavily inspired by 
- https://github.com/zanshin/dotfiles
- https://github.com/ninjabanjo/dotfiles-linux

#Grab it
```
git clone git://github.com/voidstarr/dotfiles.git
```


#TODOs
- [ ] clean up bash files
- [ ] merge x/Xdefaults into x/Xresources
- [ ] finish setup.sh
 - [ ] sources.list configuration
 - [ ] sudo configuration?
 - [ ] redo screwy xinitrc and bash_profile printf creation
- [ ] awesome/rc.lua
- [ ] complete README.md with code snippets

#Starting from fresh install
1. su
2. Remove cdrom entries from /etc/apt/sources.list
3. apt-get update && apt-get dist-upgrade -y
4. apt-get remove vi -y
5. apt-get -y install vim sudo screen xorg awesome awesome-extra pavucontrol xclip git rxvt-unicode-256color
6. Drop su
7. Copy some configs

```
cp <repo location>/x/xinit ~/.xinit
cp <repo location>/bash/bash_profile ~/.bash_profile
mkdir -p ~/.config/awesome
cp <repo location>/awesome/rc.lua ~/.config/awesome
```

#Nvidia drivers

```
su
apt-get -y install steam
bash NVIDIA-driver-package.run
reboot
```

