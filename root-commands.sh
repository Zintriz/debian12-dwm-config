#!/bin/bash
#deb12 install as root

#remove cdrom from apt
sed -i '/cdrom/d' /etc/apt/sources.list

#update and upgrade
sudo apt update && apt upgrade

#sudo and user
apt install sudo openssh-server
usermod -aG sudo klanton
#exit and logon to klanton and run sudo -s aswell as cd
#if openssh was installed, can connect via ssh
