
#!/bin/bash
set -e
# https://github.com/erikdubois/arcolinux-nemesis
##################################################################################################################
# Author	:	Erik Dubois
# Website	:	https://www.erikdubois.be
# Website	:	https://www.arcolinux.info
# Website	:	https://www.arcolinux.com
# Website	:	https://www.arcolinuxd.com
# Website	:	https://www.arcolinuxforum.com
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

# you can use lscpu in the terminal to know if you have an intel or amd

# echo "Run this if you see an error in your bootup screen or dmesg about microcode"

# AMD
sudo pacman -S amd-ucode --noconfirm
sudo grub-mkconfig -o /boot/grub/grub.cfg


# INTEL
#sudo pacman -S intel-ucode --noconfirm
#udo grub-mkconfig -o /boot/grub/grub.cfg

echo "################################################################"
echo "####                             Fix done                 ######"
echo "################################################################"