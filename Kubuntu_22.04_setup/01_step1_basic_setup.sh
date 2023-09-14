#/bin/bash

set -e

cat ./resources/my_bash_header >> ~/.bashrc
echo "" >> ~/.bashrc
echo "" >> ~/.bashrc
cp ./resources/.face ~/

sudo apt update
sudo apt upgrade -y
sudo apt install vim git gcc g++ cmake build-essential htop guake -y
sudo apt install llvm clang clang-format -y
sudo apt install python3-pip -y
sudo apt install vlc ffmpeg mpv libmpv-dev -y
sudo apt install translate-shell -y
sudo apt install gimp -y
sudo apt install rar unrar filezilla -y
sudo apt install aria2 uget -y
sudo apt install gparted -y

# meld is for comparing the difference of two files
sudo apt install meld -y

# fetch system info
sudo apt install screenfetch neofetch -y

# tree is a file tree app
sudo apt install tree -y

# system backup
sudo apt install timeshift -y

# install typora
# or run:
# sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE
wget -qO - https://typora.io/linux/public-key.asc | sudo tee /etc/apt/trusted.gpg.d/typora.asc
# add Typora's repository
sudo add-apt-repository 'deb https://typora.io/linux ./'
sudo apt-get update
# install typora
sudo apt-get install typora -y

# install Typora Themes
# cd resources/typora_themes/
# unzip panda.zip
# mkdir -p ~/.config/Typora/themes
# mv panda panda.css ~/.config/Typora/themes/
# cd ../..

# install sublime-text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg > /dev/null
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update && sudo apt install sublime-text -y

# install Jetbrains Apps
# sudo snap install clion --classic
# sudo snap install pycharm-professional --classic
# sudo snap install intellij-idea-ultimate --classic

# remove redundant apps
sudo apt remove kmahjongg kate kate5-data kcalc -y
sudo apt remove konversation konversation-data skanlite  kwalletmanager -y
sudo apt remove kmines kpat ksudoku -y
sudo apt remove thunderbird* -y
sudo apt update && sudo apt autoremove

# Argcomplete provides easy, extensible command line tab completion of arguments for your Python script.
# It makes two assumptions:
# 1. You’re using bash as your shell (limited support for zsh, fish, and tcsh is available)
# 2. You’re using argparse to manage your command line arguments/options
sudo apt install python3-argcomplete -y

# git config
git config --global user.name "AspirinZJ"
git config --global user.email "zhangmengwei1996@outlook.com"
git config --global core.quotepath false # git终端显示中文而不是quote的path
