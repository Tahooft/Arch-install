#!/bin/bash
set -e

echo "################################################################"
echo "###############   installing plasma-desktop   ##################"
echo "################################################################"

# echo "exec startkde" > ~/.xinitrc

sudo pacman -S plasma-desktop --noconfirm --needed

echo ""
echo "##############    plasma-desktop installed     #################"
echo ""

echo "###############    installing kde wanted      ##################"

# kscreen for display resolution and multiple monitors and some basic packages:
sudo pacman -S kscreen konsole dolphin kate --noconfirm --needed

# Breeze theme
sudo pacman -S breeze-gtk kde-gtk-config --noconfirm --needed

# Networkmanager applet for Plasma
sudo pacman -S  plasma-nm--noconfirm  --needed

# Pulse audio
sudo pacman -S  plasma-pa --noconfirm --needed

echo ""
echo "################################################################"
echo "################    kde wanted installed    ####################"
echo "################################################################"
echo ""

