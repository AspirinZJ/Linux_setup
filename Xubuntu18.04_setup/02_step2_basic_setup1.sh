#!/bin/bash

set -e

cat ./resources/my_bash_header >> ~/.bashrc
echo "" >> ~/.bashrc

cp ./resources/.face ~/

sudo apt update
sudo apt upgrade -y
sudo apt install translate-shell -y
sudo apt install git cmake gcc g++ vim build-essential llvm -y
sudo apt install clang clang-format -y
sudo apt install vlc -y
sudo apt install remmina -y

# tree is a file tree app
sudo apt install tree -y

sudo snap install clion --classic
sudo snap install pycharm-professional --classic
sudo snap install intellij-idea-ultimate --classic



# install typora
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
sudo add-apt-repository 'deb https://typora.io/linux ./'
sudo apt update
sudo apt install typora -y

# install sublime text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt install apt-transport-https -y
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install sublime-text -y

sudo apt install htop guake -y

sudo apt remove orage xfce4-dict -y
sudo apt remove xfburn parole -y
sudo apt update && sudo apt autoremove -y
sudo apt remove mate-calc* mousepad -y
sudo apt update && sudo apt autoremove -y
sudo apt remove onboard* pidgin* thunderbird* -y
sudo apt update && sudo apt autoremove -y
sudo apt remove sgt-* gnome-mines gnome-sudoku -y
sudo apt update && sudo apt autoremove -y

sudo apt install meld -y
sudo apt install python3-pip -y

# change folder name
rm ~/.config/user-dirs.dirs 
cp ./resources/user-dirs.dirs ~/.config/
if [ ! -d ~/Desktop ]; then
	echo "mkdir Desktop"
	mkdir ~/Desktop
fi

if [ ! -d ~/Downloads ]; then
	echo "mkdir Downloads"
	mkdir ~/Downloads
fi

if [ ! -d ~/Template ]; then
	echo "mkdir Template"
	mkdir ~/Template
fi

if [ ! -d ~/Public ]; then
	echo "mkdir Public"
	mkdir ~/Public
fi

if [ ! -d ~/Documents ]; then
	echo "mkdir Documents"
	mkdir ~/Documents
fi

if [ ! -d ~/Music ]; then
	echo "mkdir Music"
	mkdir ~/Music
fi

if [ ! -d ~/Pictures ]; then
	echo "mkdir Pictures"
	mkdir ~/Pictures
fi

if [ ! -d ~/Videos ]; then
	echo "mkdir Videos"
	mkdir ~/Videos
fi


# config git
git config --global user.name "AspirinZJ"
git config --global user.email "zhangmengwei1996@outlook.com"

# ssh-keygen -t rsa
# echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
# echo "Paste the following key to github"
# echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
# cat ~/.ssh/id_rsa.pub


# Argcomplete provides easy, extensible command line tab completion of arguments for your Python script.
# It makes two assumptions:
# 1. You’re using bash as your shell (limited support for zsh, fish, and tcsh is available)
# 2. You’re using argparse to manage your command line arguments/options
sudo apt install python3-argcomplete -y
