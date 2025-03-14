#!/bin/bash
#deb12 install as root

#remove cdrom from apt
#sed -i '/cdrom/d' /etc/apt/sources.list
nano /etc/apt/sources.list

#update and upgrade
apt update && apt upgrade
apt install git sudo openssh-server
git clone https://github.com/Zintriz/debian12-dwm-config /home/klanton/install
rm -r /home/klanton/install/.git
#sudo and user
usermod -aG sudo klanton
#exit and logon to klanton and run sudo -s aswell as cd
#if openssh was installed, can connect via ssh
