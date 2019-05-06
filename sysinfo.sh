#!/bin/bash

echo ""
echo "inxi"
sudo inxi
echo ""
echo "inxi -F"
sudo inxi -F
echo ""
echo "inxi -D"
sudo inxi -D
echo ""
echo "inxi -M"
sudo inxi -M
echo ""
echo "inxi -G"
sudo inxi -G
echo ""
echo "inxi -N"
sudo inxi -N
echo ""
echo ""

echo ""
echo "lspci"
lspci -nnk | grep -i -EA3 "3d|display|vga"

echo ""
echo "xdpyinfo"
xdpyinfo | grep -B2 resolution
echo ""
echo ""