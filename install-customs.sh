#!/bin/bash

log_file=~/install_config_log.txt

dotfiles_dir=$(dirname "$(realpath $0)")

export TERM=xterm-256color

sudo rm -rf ~/.viminfo > /dev/null 2>&1
sudo rm -rf ~/.vimrc > /dev/null 2>&1
sudo rm -rf ~/.tmux.conf > /dev/null 2>&1
sudo rm -rf ~/.bashrc > /dev/null 2>&1
sudo rm -rf ~/.profile > /dev/null 2>&1
sudo rm -rf ~/.vim > /dev/null 2>&1

ln -sf $dotfiles_dir/.vimrc ~/.vimrc
ln -sf $dotfiles_dir/.viminfo ~/.viminfo
ln -sf $dotfiles_dir/.bashrc ~/.bashrc
ln -sf $dotfiles_dir/.profile ~/.profile
ln -sf $dotfiles_dir/.tmux.conf ~/.tmux.conf
ln -sf $dotfiles_dir/.vim ~/.vim

sudo apt-get -y install vim
if type -p vim > /dev/null; then
	echo "Vim installed" >> $log_file
else
	echo "Vim FAILED TO INSTALL!!!!" >> $log_file
fi

sudo apt-get -y install git
if type -p git > /dev/null; then
	echo "Git installed" >> $log_file
else
	echo "Git FAILED TO INSTALL!!!!" >> $log_file
fi

sudo apt-get -y install python2
if type -p python2 > /dev/null; then
	echo "Python 2 installed" >> $log_file
else
	echo "Python 2 FAILED TO INSTALL!!!!" >> $log_file
fi

sudo apt-get -y install python-pip
sudo apt-get -y install python3-pip

sudo apt-get -y install python3
if type -p python3 > /dev/null; then
	echo "Python 3 installed" >> $log_file
else
	echo "Python 3 FAIlED TO INSTALL!!!!" >> $log_file
fi

sudo apt-get -y install tmux
if type -p tmux > /dev/null; then
	echo "tmux Installed" >> $log_file
else
	echo "tmux FAILED TO INSTALL!!!!" >> $log_file
fi

sudo apt-get -y install curl
if type -p curl > /dev/null; then
	echo "curl Installed" >> $log_file
else
	echo "curl FAILED TO INSTALL!!!!" >> $log_file
fi





echo -e "\n========= Summary ==========\n"
cat $log_file
echo
rm $log_file
