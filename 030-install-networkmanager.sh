#!/bin/bash
set -e

echo "################################################################"
echo "##############    Installing Networkmanager    #################"
echo "################################################################"
echo ""

sudo pacman -S networkmanager --noconfirm --needed

echo ""
echo "##############    Enabling Networkmanager      #################"
echo ""

sudo systemctl enable NetworkManager
sudo systemctl start NetworkManager

echo ""
echo "################################################################"
echo "##############     NetworkManager done         #################"
echo "################################################################"
echo ""