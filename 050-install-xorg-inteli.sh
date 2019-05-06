#!/bin/bash
set -e

echo "################################################################"
echo "###################   installing xorg     ######################"
echo "################################################################"
echo ""

echo "Xserver setup"

# Drivers
sudo pacman -S xorg-server xorg-apps xorg-xinit xorg-twm xterm --noconfirm --needed
sudo pacman -S xf86-video-intel lib32-libva1-intel-driver--noconfirm --needed

echo ""
echo "###################    xorg installed     ######################"
echo ""
