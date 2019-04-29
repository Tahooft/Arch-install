#!/bin/bash
set -e

echo "###############    Set Where & When           ##################"
echo ""

ln -sf /usr/share/zoneinfo/Europe/Amsterdam /etc/localtime
hwclock --systohc --utc

echo ""
echo "###############    Set locale                 ##################"
echo ""

# echo nano /etc/locale.gen -> uncomment needed locales: en_US.UTF-8 and other
echo en_US.UTF-8 UTF-8 >> /etc/locale.gen
locale-gen

echo ""
echo "###############    Set hostname & hosts       ##################"
echo ""

echo thpc > /etc/hostname

echo 127.0.0.1  localhost th >> /etc/hosts
echo ::1        localhost >> /etc/hosts
echo 127.0.1.1  localhost.localdomain  th >> /etc/hosts

echo ""
echo "###############  Create  Sudo user th         ##################"
echo ""

useradd -m -g users -G wheel -s /bin/bash th
cp /root/0* /home/th/

# ERROR - testen hoe de haakjes te echoe-en
#echo %sudo ALL=(ALL) ALL >> /etc/sudoers
#echo %wheel ALL=(ALL) ALL >> /etc/sudoers
nano /etc/sudoers

echo ""
echo "###############  Password root, th            ##################"
echo ""
echo "Passwd for root"
passwd root
echo "Passwd for th"
passwd th

echo ""
echo "###############   Grub                        ##################"
echo ""
pacman -S grub --noconfirm --needed
grub-install /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg

echo ""
echo "##############    Installing Networkmanager   ##################"
echo ""

# Moet misschien gestart in nieuwe shell na: su th
cd /home/th/
su th
sudo pacman -S networkmanager --noconfirm --needed

echo ""
echo "##############    Enabling Networkmanager      #################"
echo ""

sudo systemctl enable NetworkManager

echo ""
echo "################################################################"
echo "##############     All done                    #################"
echo "################################################################"
echo ""
echo "Now you can safely exit and reboot."
echo ""