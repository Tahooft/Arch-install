#!/bin/bash
set -e

echo "################################################################"
echo "################    installing lightdm        ##################"
echo "################################################################"


#Displaymanager
sudo pacman -S sddm
systemctl enable sddm

# OR
# sudo pacman -S lightdm  lightdm-gtk-greeter:
# systemctl enable lightdm


echo "################################################################"
echo "#################    lightdm installed      ####################"
echo "################################################################"


