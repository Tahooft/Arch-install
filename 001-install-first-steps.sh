#!/bin/bash
set -e
# or ?  set -o errexit

timedatectl set-ntp true

echo ""
echo "##############     Partition the disk          #################"
echo ""

cfdisk /dev/sda

echo ""
echo "##############     Formating file systems      #################"
echo ""

mkfs.ext4 /dev/sda1
mkfs.ext4 /dev/sda3
mkswap /dev/sda2
swapon /dev/sda2

echo ""
echo "##############     Mounting the file systems   #################"
echo ""

mount /dev/sda1 /mnt
mkdir /mnt/home
mount /dev/sda3 /mnt/home

echo ""
echo "##############     Pacstrap                     #################"
echo ""

pacstrap /mnt base base-devel

echo ""
echo "##############     Fstab                         #################"
echo ""

genfstab -U /mnt >> /mnt/etc/fstab

echo ""
echo "##############     Copy 0*  to /mnt/root      #################"
echo ""

cp 0* /mnt/root/

echo ""
echo "##############     arch-chroot /mnt             #################"
echo ""

arch-chroot /mnt
cd /root

echo ""
echo "################################################################"
echo "##############     All done                    #################"
echo "################################################################"
echo ""
echo 
echo ""