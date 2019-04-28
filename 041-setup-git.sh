#!/bin/bash
#setting up git
#https://www.atlassian.com/git/tutorials/setting-up-a-repository/git-config
set -e

echo "################################################################"
echo "##############          Configuring git        #################"
echo "################################################################"

git init
git config --global user.name "Taco Hooft"
git config --global user.email "tahooft@gmail.com"
sudo git config --system core.editor nano
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=18000'
git config --global push.default simple

echo ""
echo "################################################################"
echo "####                     Git configured                   ######"
echo "################################################################"
echo ""