#/bin/bash

set -e

sudo apt update
sudo apt upgrade -y
sudo apt install vim git gcc g++ cmake build-essential libpython2.7-dev libpython3.6-dev python-pip python3-pip htop guake -y
sudo apt install vlc texlive-full texstudio -y

# install typora
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
sudo add-apt-repository 'deb https://typora.io/linux ./'
sudo apt update
# install typora
sudo apt install typora -y
sudo apt install remmina -y

cd resources/typora_themes/
unzip panda.zip
mkdir -p ~/.config/Typora/themes
mv panda panda.css ~/.config/Typora/themes/
cd ../..

sudo snap install clion --classic
sudo snap install pycharm-professional --classic
sudo snap install intellij-idea-ultimate --classic

sudo apt remove kaddressbook kmail kontact korganizer ktnef -y
sudo apt remove k3b k3b-data k3b-i18n kate kate5-data kcalc -y
sudo apt remove akregator konversation konversation-data skanlite -y
sudo apt remove kleopatra kwalletmanager -y

sudo apt install openjdk-11-jdk -y

# install sublime-text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt install apt-transport-https -y
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update && sudo apt install sublime-text -y

git config --global user.name "AspirinZJ"
git config --global user.email "zhangmengwei1996@outlook.com"
ssh-keygen -t rsa
echo "~~~~~~~Paste the following key to github~~~~~~~~~~~"
cat ~/.ssh/id_rsa.pub

