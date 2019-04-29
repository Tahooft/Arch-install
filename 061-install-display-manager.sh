#!/bin/bash
set -e

echo "################################################################"
echo "################    installing lightdm        ##################"
echo "################################################################"
echo ""

#Displaymanager
sudo pacman -S sddm --noconfirm --needed
sudo systemctl enable sddm

# OR
# sudo pacman -S lightdm  lightdm-gtk-greeter:
# systemctl enable lightdm

echo ""
echo "################################################################"
echo "#################    lightdm installed      ####################"
echo "################################################################"
echo ""