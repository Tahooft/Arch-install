#!/bin/bash
set -e

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
echo "choose virtualbox-guest-modules-arch in the next installation"
echo "################################################################"
echo ""

sleep 2
sudo pacman -S virtualbox-guest-utils

echo "################################################################"
echo "###################    xorg installed     ######################"
echo "################################################################"
echo ""