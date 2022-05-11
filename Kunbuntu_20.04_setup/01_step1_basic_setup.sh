#/bin/bash

set -e

cat ./resources/my_bash_header >> ~/.bashrc
echo "" >> ~/.bashrc
cp ./resources/.face ~/

sudo apt update
sudo apt upgrade -y
sudo apt install vim git gcc g++ cmake build-essential htop guake -y
sudo apt install llvm clang clang-format -y
sudo apt install vlc -y
sudo apt install translate-shell -y

# tree is a file tree app
sudo apt install tree -y

# install typora
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
sudo add-apt-repository 'deb https://typora.io/linux ./'
sudo apt update && sudo apt install typora -y

# install Typora Themes
cd resources/typora_themes/
unzip panda.zip
mkdir -p ~/.config/Typora/themes
mv panda panda.css ~/.config/Typora/themes/
cd ../..

# install Jetbrains Apps
sudo snap install clion --classic
sudo snap install pycharm-professional --classic
sudo snap install intellij-idea-ultimate --classic

sudo apt remove kmahjongg k3b-i18n k3b kate kate5-data kcalc -y
sudo apt remove konversation konversation-data skanlite  kwalletmanager -y


# install sublime-text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt install apt-transport-https -y
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update && sudo apt install sublime-text -y

git config --global user.name "AspirinZJ"
git config --global user.email "zhangmengwei1996@outlook.com"
