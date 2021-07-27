#!/bin/bash

set -e

#GET arcolinux-spices#
git clone https://github.com/arcolinux/arcolinux-spices
cd arcolinux-spices
sudo usr/share/arcolinux-spices/scripts/get-the-keys-and-repos.sh
cd ..

sudo pacman -Syyu --noconfirm
sudo pacman -S jgmenu youtube-dl pcmanfm lxtask vlc linux-lts linux-lts-headers geany flatpak i3-gaps i3blocks xcompmgr lxsession --noconfirm

#Arcolinux derivation
sudo pacman -S timeshift brave-bin pamac-all arcolinux-logout-git --noconfirm


cd bspwm
cd scripts
chmod +x *.sh
cd i3lock-fancy
chmod +x *.sh
cd ..
cd ..
cd ..

cd polybar
chmod +x *.sh
cd scripts
chmod +x *.sh
cd ..
cd ..

mkdir -p ~/.config/i3
mkdir -p ~/.config/i3blocks
mkdir -p ~/.config/termite
mkdir -p ~/.config/rofi

mkdir -p ~/dwm-flexipatch
mkdir -p ~/.config/arco-slstatus
mkdir -p ~/.local/share/dwm
sudo mkdir -p /usr/share/xsessions

cd i3
chmod +x testwallpaper
cd ..

cd i3blocks
chmod +x dwmweather
chmod +x dwm_resources.sh
chmod +x time
chmod +x dwmcpu
chmod +x dwmmail
cd ..

cd i3
cp -r * ~/.config/i3
cd ..

cd i3blocks
cp -r * ~/.config/i3blocks
cd ..


cd polybar
cp -r * ~/.config/polybar
cd ..

cd termite
cp -r * ~/.config/termite
cd ..

cd rofi
cp -r * ~/.config/rofi
cd ..

cp bashrc ~/.bashrc

jgmenu_run init --theme=col3

cd jgmenu
cp -r * ~/.config/jgmenu
cd ..

cd bspwm
cp -r * ~/.config/bspwm
cd ..

cd sxhkd
cp -r * ~/.config/sxhkd
cd ..

cd dwm-flexipatch
cp -r * ~/dwm-flexipatch
cd ..

cd conf
cd arco-slstatus
cp -r * ~/.config/arco-slstatus
cd ..
cd ..

cd local
cd share
cp -r * ~/.local/share/dwm
cd ..
cd ..

sudo cp dwm.desktop /usr/share/xsessions/dwm.desktop


flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
yay -S --noconfirm nerd-fonts-mononoki
