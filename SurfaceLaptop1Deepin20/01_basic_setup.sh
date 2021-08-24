#!/bin/bash

set -e

sudo apt update
sudo apt upgrade -y
sudo apt install git cmake gcc g++ vim build-essential -y
sudo apt install clang -y
sudo apt install vlc -y
sudo apt install remmina -y

sudo apt install snapd -y

sudo snap install clion --classic
sudo snap install pycharm-professional --classic
sudo snap install intellij-idea-ultimate --classic

# install sublime text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt install apt-transport-https -y
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install sublime-text -y

sudo apt install htop -y
sudo apt install meld -y
sudo apt install python3-pip -y

sudo apt install netease-cloud-music -y
sudo apt install fish -y

# config git
git config --global user.name "AspirinZJ"
git config --global user.email "zhangmengwei1996@outlook.com"

sudo apt remove deepin-mail -y
sudo apt remove simple-scan -y
sudo apt remove deepin-boot-maker -y
sudo apt remove deepin-calculator -y
sudo apt remove deepin-camera -y
sudo apt remove deepin-feedback -y
sudo apt remove deepin-deb-installer -y

sudo apt install fortune -y

mkdir -p ~/.config/fish/functions
cd ~/.config/fish/functions
touch fish_greeting.fish
echo "function fish_greeting" >> fish_greeting.fish
echo "fortune" >> fish_greeting.fish
echo "end" >> fish_greeting.fish

cd /usr/share/applications
sudo rm dde-introduction.desktop
sudo rm dde-trash.desktop
sudo rm deepin-manual.desktop
sudo rm htop.desktop
sudo rm libreoffice-calc.desktop libreoffice-draw.desktop libreoffice-impress.desktop libreoffice-math.desktop libreoffice-writer.desktop libreoffice-xsltfilter.desktop
sudo rm libreoffice-base.desktop
sudo rm fcitx*
sudo rm /usr/share/applications/screensavers/glitchpeg.desktop
sudo update-desktop-database

sudo apt update && sudo apt autoremove -y
