#!/bin/bash
#deb12 install as root

rm -r /root/install/.git
mv /root/install/userinstall /home/klanton/userinstall
#update and upgrade
apt install sudo openssh-server

#sudo and user
usermod -aG sudo klanton
#exit and logon to klanton and run sudo -s aswell as cd
