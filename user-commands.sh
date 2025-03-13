#!/bin/bash
#deb12 install as root

#remove cdrom from apt
sed -i '/cdrom/d' /etc/apt/sources.list

#update and upgrade
sudo apt update && apt upgrade

#sudo and user
apt install sudo
usermod -aG sudo klanton

#exit and logon to klanton and run sudo -s aswell as cd
#if openssh was installed, can connect via ssh

# install 
sudo apt install vim curl git unzip 7zip build-essential ripgrep gcc make libx11-dev libxft-dev libxinerama-dev xorg
#brew

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo >> /home/klanton/.bashrc
echo 'eval "$(/home/linuxbrew/.liecho >> /home/klanton/.bashrc
nuxbrew/bin/brew shellenv)"' >> /home/klanton/.bashrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
brew install gcc
#nvim + nvchad https://nvchad.com/docs/quickstart/install
brew install neovim
mkdir Ubuntu && cd Ubuntu
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Ubuntu.zip
unzip Ubuntu.zip && rm Ubuntu.zip
cd ..
sudo mv Ubuntu/ /usr/local/share/fonts/
#sudo apt install ripgrep gcc make

git clone https://github.com/NvChad/starter ~/.config/nvim && nvim
#firefox - https://support.mozilla.org/en-US/kb/install-firefox-linux
sudo install -d -m 0755 /etc/apt/keyrings

wget -q https://packages.mozilla.org/apt/repo-signing-key.gpg -O- | sudo tee /etc/apt/keyrings/packages.mozilla.org.asc > /dev/null

echo "deb [signed-by=/etc/apt/keyrings/packages.mozilla.org.asc] https://packages.mozilla.org/apt mozilla main" | sudo tee -a /etc/apt/sources.list.d/mozilla.list > /dev/null

echo '
Package: *
Pin: origin packages.mozilla.org
Pin-Priority: 1000
' | sudo tee /etc/apt/preferences.d/mozilla 

sudo apt-get update && sudo apt-get install firefox

#dmw
mkdir dwm && cd dwm
#install following earlier: 
#sudo apt install make gcc libx11-dev libxft-dev libxinerama-dev xorg
wget https://dl.suckless.org/dwm/dwm-6.5.tar.gz 
wget https://dl.suckless.org/st/st-0.9.2.tar.gz 
wget https://dl.suckless.org/tools/dmenu-5.3.tar.gz

tar xvf dwm-6.5.tar.gz
tar xvf st-0.9.2.tar.gz
tar xvf dmenu-5.3.tar.gz
rm *tar*

cd dwm-6.5
sudo make clean install
cd ../st-0.9.2.tar.gz
sudo make clean install
cd ../dmenu-5.3.tar.gz
sudo make clean install

# use readme to make .bashrc file or copy from earlier copy.



