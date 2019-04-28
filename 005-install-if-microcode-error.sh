#!/bin/bash
set -e

# Run this if you see an error in your bootup screen or dmesg about microcode"

echo "################################################################"
echo "####             Microcedes fix                              ###"
echo "################################################################"
echo ""

sudo pacman -S amd-ucode --noconfirm
sudo grub-mkconfig -o /boot/grub/grub.cfg

echo ""
echo "################################################################"
echo "####                             Fix done                 ######"
echo "################################################################"
echo ""