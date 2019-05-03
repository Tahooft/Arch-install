#!/bin/bash
set -e
## Instal as user


echo "################################################################"
echo "###################   installing xorg     ######################"
echo "################################################################"
echo ""

echo "Xserver setup"
echo "Using the video driver for VirtualBox"

#sudo pacman -S xorg-server xorg-apps xorg-xinit xorg-twm xterm --noconfirm --needed
sudo pacman -S xorg-server xterm --noconfirm --needed
echo ""
echo "################################################################"
echo "Choose virtualbox-guest-modules-arch (2)"
echo "################################################################"
echo ""

sleep 2
sudo pacman -S virtualbox-guest-utils --needed

echo "################################################################"
echo "###################    xorg installed     ######################"
echo "################################################################"
echo ""