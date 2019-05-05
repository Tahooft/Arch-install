#!/bin/bash
set -e

echo "################################################################"
echo "###################   installing xorg     ######################"
echo "################################################################"
echo ""

echo "Xserver setup"
echo "Using the opensource driver for nvidia/ati"

#sudo pacman -S xorg-server xorg-apps xorg-xinit xorg-twm xterm --noconfirm --needed
sudo pacman -S xorg-server xterm --noconfirm --needed
sudo pacman -S xf86-video-ati --noconfirm --needed

echo ""
echo "################################################################"
echo "###################    xorg installed     ######################"
echo "################################################################"
echo ""