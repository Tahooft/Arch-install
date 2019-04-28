#!/bin/bash
set -e

echo "################################################################"
echo "##############    Installing Networkmanager    #################"
echo "################################################################"
echo ""

pacman -S networkmanager

echo ""
echo "##############    Enabling Networkmanager      #################"
echo ""

systemctl enable NetworkManager
systemctl start NetworkManager

echo ""
echo "################################################################"
echo "##############     NetworkManager done         #################"
echo "################################################################"
echo ""