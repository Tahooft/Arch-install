#!/bin/bash
set -e

echo ""
echo "################################################################"
echo "###     Installing  yay                                      ###"
echo "################################################################"
echo ""

BUILDS=~/.builds
# Test of ~/.builds exists
if [ ! -d $BUILDS ]; then
  mkdir $BUILDS
fi

cd $BUILDS
# Test of ~/.builds/yay exists
if [ -d $BUILDS/yay ]; then
   rm -Rf $BUILDS/yay
fi
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -sicr

echo ""
echo "###     Done                                                 ###"
echo ""
