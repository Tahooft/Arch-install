#!/bin/bash
set -e

# Originele scipt voor meer cores van Dubois moet weer hier komen


echo "################################################################"
echo "####             All cores fix                               ###"
echo "################################################################"

numberofcores=$(grep -c ^processor /proc/cpuinfo)
echo "You have " $numberofcores" cores."

echo "Changing the makeflags for "$numberofcores" cores..."
sudo sed -i 's/#MAKEFLAGS="-j2"/MAKEFLAGS="-j3"/g' /etc/makepkg.conf

echo "Changing the compression settings for "$numberofcores" cores."
sudo sed -i 's/COMPRESSXZ=(xz -c -z -)/COMPRESSXZ=(xz -c -T 2 -z -)/g' /etc/makepkg.conf

echo "################################################################"
echo "###  All cores will be used during building and compression ####"
echo "################################################################"
