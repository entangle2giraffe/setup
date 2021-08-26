#!/bin/bash
git clone https://github.com/sebastiencs/icons-in-terminal.git
./install.sh
sudo apt-get -y install pkg-config libncursesw5-dev libreadline-dev cmake 
git clone --depth 1 https://github.com/jarun/nnn
cd nnn
sudo make strip install
sudo make O_NERD=1
sudo cp nnn /usr/bin
cd ~
source ~/.local/share/icons-in-terminal/icons.sh 

