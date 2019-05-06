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

# Drivers
sudo pacman -S xf86-video-ati xf86-video-fbdev xf86-video-vesa --noconfirm --needed

# Vage drivers
sudo pacman -$ lib32-mesa mesa mesa-vdpau xf86-input-libinput


echo ""
echo "###################    xorg installed     ######################"
echo ""

# Installed in Antergos
# lib32-mesa
# mesa
# xf86-video-vesa
# xf86-input-libinput
# xf86-video-ati
# xf86-video-fbdev