#!/bin/sh
APPS="build-essential openssh-client vim git wget curl tmux zip unzip"

apt-get update
apt-get install -y $APPS
echo "Generate SSH Keys? (y/n)"
read keygen_answer
foo0 (keygen_answer) {
	if keygen_answer='y';
	then
	ssh-keygen -t rsa -b 4096
	if
}
echo "export EDITOR=vim" >> ~/.bashrc
echo "export VISUAL=vim" >> ~/.bashrc
echo "alias ls='ls --color-auto'" >> ~/.bashrc
echo "alias ll='ls -la'" >> ~/.bashrc
echo "alias l.='ls -d .* --color-auto'" >> ~/.bashrc
echo "alias ..='cd ..'" >> ~/.basahrc
mv ~/.vimrc .vimrc.bak
cp ~/setup/.vimrc ~/.vimrc
echo "Install Vim-Plug? (y/n)"
read vim-plug
foo1 (vim-plug) {
	if vim-plug="y"
	then
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	fi
}
echo "Install Miniconda? (y/n)"
read anaconda
foo2 (anaconda) {
	if anaconda="y";
	then
	wget -O ~/miniconda.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
	bash ~/miniconda.sh
	rm ~/miniconda.sh
	fi
}
echo "Install nnn? (y/n)"
read answer
n (answer) {
	if answer="y";
	then
	cd setup
	./nnn.sh
	fi
}


