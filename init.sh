#!/bin/bash
set -e

echo "################################################################"
echo "################    Downloading Arch-install  ##################"
echo "################################################################"
echo ""

curl -LJO https://raw.githubusercontent.com/Tahooft/Arch-install/master/001-install-first-steps.sh
curl -LJO https://raw.githubusercontent.com/Tahooft/Arch-install/master/003-install-first-config.sh
curl -LJO https://raw.githubusercontent.com/Tahooft/Arch-install/master/005-install-if-microcode-error.sh
curl -LJO https://raw.githubusercontent.com/Tahooft/Arch-install/master/010-install-two-cores.sh
curl -LJO https://raw.githubusercontent.com/Tahooft/Arch-install/master/020-install-mirrors-optimized.sh
curl -LJO https://raw.githubusercontent.com/Tahooft/Arch-install/master/030-install-networkmanager.sh
curl -LJO https://raw.githubusercontent.com/Tahooft/Arch-install/master/040-install-git.sh
curl -LJO https://raw.githubusercontent.com/Tahooft/Arch-install/master/041-setup-git.sh
curl -LJO https://raw.githubusercontent.com/Tahooft/Arch-install/master/050-install-xorg-ati.sh
curl -LJO https://raw.githubusercontent.com/Tahooft/Arch-install/master/050-install-xorg-vbox.sh
curl -LJO https://raw.githubusercontent.com/Tahooft/Arch-install/master/060-install-plasma-desktop.sh
curl -LJO https://raw.githubusercontent.com/Tahooft/Arch-install/master/061-install-display-manager.sh
curl -LJO https://raw.githubusercontent.com/Tahooft/Arch-install/master/070-install-kde-wanted.txt
curl -LJO https://raw.githubusercontent.com/Tahooft/Arch-install/master/080-install-lamp.sh

echo "################    copy Arch-install to bin  ##################"
echo ""

mkdir bin
cp 0* bin
chmod -r 755 bin

echo ""
echo "################################################################"
echo "################    Ready to go               ##################"
echo "################################################################"
echo ""