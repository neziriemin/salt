#!/bin/bash
echo "Live USB configuration Starting... neziriemin/liveusb"
set -o verbose

echo "Installing Salt and Git..."
sudo apt-get update
sudo apt-get -y install git salt-minion

echo "Retrieving and Applying Settings..."
echo 'master: 127.0.0.1'|sudo tee /etc/salt/minion
sudo systemctl restart salt-minion

git clone https://github.com/neziriemin/salt
cd salt/
./highstate.sh

echo "Configuring Live Desktop"
setxkbmap fi
sudo timedatectl set-timezone Europe/Helsinki
git config --global credential.helper "cache --timeout=3600"
git config --global push.default simple
# git config --global user.email "neziriemin1@gmail.com"
# git config --global user.name "neziriemin"

echo "More tips on http://terokarvinen.com/tag/saltstack"
echo "Done."

