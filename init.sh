#!/bin/bash
set -e

echo "################################################################"
echo "################    Downloading Arch-install  ##################"
echo "################################################################"
echo ""

curl -LJO https://raw.githubusercontent.com/Tahooft/Arch-install/develop/001-install-first-steps.sh
curl -LJO https://raw.githubusercontent.com/Tahooft/Arch-install/develop/003-install-first-config.sh
curl -LJO https://raw.githubusercontent.com/Tahooft/Arch-install/develop/005-install-if-microcode-error.sh
curl -LJO https://raw.githubusercontent.com/Tahooft/Arch-install/develop/006-install-n-cores.sh
curl -LJO https://raw.githubusercontent.com/Tahooft/Arch-install/develop/009-install-mirrors-optimized.sh
curl -LJO https://raw.githubusercontent.com/Tahooft/Arch-install/develop/040-install-git.sh
curl -LJO https://raw.githubusercontent.com/Tahooft/Arch-install/develop/041-setup-git.sh
curl -LJO https://raw.githubusercontent.com/Tahooft/Arch-install/develop/050-install-xorg-ati.sh
curl -LJO https://raw.githubusercontent.com/Tahooft/Arch-install/develop/050-install-xorg-vbox.sh
curl -LJO https://raw.githubusercontent.com/Tahooft/Arch-install/develop/060-install-plasma-desktop.sh
curl -LJO https://raw.githubusercontent.com/Tahooft/Arch-install/develop/061-install-display-manager.sh
curl -LJO https://raw.githubusercontent.com/Tahooft/Arch-install/develop/070-install-kde-wanted.txt
curl -LJO https://raw.githubusercontent.com/Tahooft/Arch-install/develop/080-install-lamp.sh

chmod 755 0*

echo ""
echo "################################################################"
echo "################    Ready to go               ##################"
echo "################################################################"
echo ""

