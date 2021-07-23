#!/bin/bash

set -e

sudo pacman -Syyu --noconfirm
sudo pacman -S jgmenu youtube-dl pcmanfm lxtask vlc linux-lts linux-lts-headers geany flatpak i3-gaps i3blocks --noconfirm

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



cd polybar
cp -r * ~/.config/polybar
cd ..

cd termite
cp -r * ~/.config/termite
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

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
yay -S --noconfirm timeshift brave-bin pamac-all
