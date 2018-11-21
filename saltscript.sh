#!/bin/bash
# Copyright 2018 Tero Karvinen http://TeroKarvinen.com GPL 3
# Edited by Emin Neziri
echo "Updating packages and installing salt-minion"
sudo apt -y update
sudo apt -y install salt-minion
echo -e 'master: 192.168.1.83 \nid: orja' |sudo tee /etc/salt/minion
sudo systemctl restart salt-minion
