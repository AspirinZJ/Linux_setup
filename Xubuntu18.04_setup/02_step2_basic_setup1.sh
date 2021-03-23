#!/bin/bash

set -e

cat ./resources/my_bash_header >> ~/.bashrc

cp ./resources/.face ~/

sudo apt update
sudo apt upgrade -y
sudo apt install git cmake gcc g++ vim -y
sudo apt install vlc -y

sudo snap install clion --classic
sudo snap install pycharm-professional --classic
sudo snap install intellij-idea-ultimate --classic

sudo apt install texlive-full -y
sudo apt install texstudio -y

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

sudo apt remove orage xfce4-dict xfce4-mailwatch-plugin xfce4-weather-plugin
sudo apt remove xfburn parole -y
sudo apt update && sudo apt autoremove -y
sudo apt remove mate-calc* mousepad -y
sudo apt update && sudo apt autoremove -y
sudo apt remove onboard* pidgin* thunderbird*
sudo apt update && sudo apt autoremove -y
sudo apt remove sgt-* gnome-mines gnome-sudoku
sudo apt update && sudo apt autoremove -y

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

ssh-keygen -t rsa
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Paste the following key to github"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

cat ~/.ssh/id_rsa.pub