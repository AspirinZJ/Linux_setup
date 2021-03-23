#!/bin/bash

set -e
cd ./resources/themes
echo "Installing theme..."
cd theme
tar -xf 05-Flat-Remix-GTK-Green-Dark_20201129.tar.xz
sudo mv Flat-Remix-GTK-Green-Dark/ /usr/share/themes/

echo "Installing icon theme..."
cd ../icon_theme
tar -xf 05-Flat-Remix-Green-Dark_20210121.tar.xz
sudo mv Flat-Remix-Green-Dark/ /usr/share/icons/
sudo gtk-update-icon-cache /usr/share/icons/Flat-Remix-Green-Dark/
tar -xf papirus-icon-theme-20210302.tar.xz
sudo mv Papirus* /usr/share/icons/
sudo mv ePapirus/ /usr/share/icons/
rm AUTHORS LICENSE Makefile
sudo gtk-update-icon-cache /usr/share/icons/Papirus
sudo gtk-update-icon-cache /usr/share/icons/Papirus-Light/
sudo gtk-update-icon-cache /usr/share/icons/Papirus-Dark/
sudo gtk-update-icon-cache /usr/share/icons/ePapirus/


echo "Installing windowbar theme..."
cd ../windowbar_theme/
tar -xf Midnight-GreenNight.tar.xz
sudo mv Midnight-GreenNight/ /usr/share/themes/

echo "Installing cursor theme..."
cd ../cursor_theme/
tar -xzvf Oxygen\ 23\ Grey\ Rainforest.tar.gz
sudo mv Oxygen\ 23\ Grey\ Rainforest/ /usr/share/icons/

echo "Changing startup backgroud..."
cd ../../images/
sudo mv /usr/share/plymouth/themes/xubuntu-logo/wallpaper.png /usr/share/plymouth/themes/xubuntu-logo/wallpaper.png.bak
sudo cp wallpaper.png /usr/share/plymouth/themes/xubuntu-logo/
sudo mv /usr/share/plymouth/themes/xubuntu-logo/logo.png /usr/share/plymouth/themes/xubuntu-logo/logo.png.bak
sudo cp logo.png /usr/share/plymouth/themes/xubuntu-logo/

echo "Finished installing themes."

