#!/bin/bash
set -e

timedatectl set-ntp true

echo ""
echo "##############     Partition the disk          #################"
echo ""

cfdisk /dev/sda

echo ""
echo "################################################################"
echo "##############     Formating file systems      #################"
echo "################################################################"
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
echo "##############     Mounted the file systems     #################"
echo ""

echo ""
echo "##############     Pacstrap                     #################"
echo ""

pacstrap /mnt base base-devel

echo ""
echo "##############     Pacstrapped                   #################"
echo ""

echo ""
echo "##############     Fstab                         #################"
echo ""

genfstab -U /mnt >> /mnt/etc/fstab

echo ""
echo "##############     Fstabbed                   #################"
echo ""

echo ""
echo "##############     Copy 0*  to /mnt/root      #################"
echo ""

cp 0* /mnt/root/

echo ""
echo "##############     Copy done                   #################"
echo ""

echo ""
echo "##############     arch-chroot /mnt             #################"
echo ""


arch-chroot /mnt

ls -al