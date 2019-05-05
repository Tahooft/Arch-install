#!/bin/bash
set -e

echo ""
echo "################################################################"
echo "###     Installing  aurutils                                 ###"
echo "################################################################"
echo ""

BUILDS=~/.builds
# Test of ~/.builds exists
if [ ! -d $BUILDS ]; then
  mkdir $BUILDS
fi

cd $BUILDS
# Test of ~/.builds/aurutils exists
if [ -d $BUILDS/aurutils ]; then
   rm -Rf $BUILDS/aurutils
fi

git clone https://aur.archlinux.org/aurutils.git
cd aurutils
makepkg -sicr

echo ""
echo "###     Done                                                 ###"
echo ""