#!/bin/bash
set -e

echo "################################################################"
echo "###############   installing plasma-desktop   ##################"
echo "################################################################"

# echo "exec startkde" > ~/.xinitrc

sudo pacman -S plasma-desktop

echo ""
echo "##############    plasma-desktop installed     #################"
echo ""

echo "###############    installing kde wanted      ##################"

# kscreen for display resolution and multiple monitors and some basic packages:
pacman -S kscreen konsole dolphin kate

# Breeze theme
pacman -S breeze-gtk breeze-kde4 kde-gtk-config

# Networkmanager applet for Plasma
pacman -S  plasma-nm

# Pulse audio
pacman -S  plasma-pa

echo ""
echo "################################################################"
echo "################    kde wanted installed    ####################"
echo "################################################################"
echo ""

