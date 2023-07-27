#!/bin/bash

set -e

# install texlive and texstudio
sudo apt install texlive-full -y
sudo apt install texstudio -y

# qmmp is a lightweight music gui player
sudo apt install qmmp -y

# install guvcview for controlling camera and seeing the detials of the camera
# guvcview is a gui tool for getting and setting the parameters of the camera
sudo apt install guvcview -y

# okular is a pdf viewer
sudo apt install okular -y

# gsmartcontrol is a S.M.A.R.T tool for hard drives and ssds
sudo apt install gsmartcontrol -y

# translation in shell
sudo apt install translate-shell -y

# color pickup on screen
sudo snap install pick-colour-picker -y

# remote access and control
sudo apt install remmina -y

# install java
sudo apt install openjdk-11-jdk -y

# meld is a software comparing files
sudo apt install meld -y


# cpu-x is a tool for showing computer hardware details
sudo add-apt-repository ppa:flexiondotorg/cpu-x
sudo apt-get update
sudo apt-get install cpu-x

# disk usage analyzer
sudo apt install baobab -y

# retro terminal
sudo apt install cool-retro-term -y

# shift+E/O to create new window terminal
sudo apt install terminator -y

# guvcview is a camera tool to get and set the parameters of the camera
sudo apt install guvcview -y

# kdenlive is a media edit software
sudo apt install kdenlive -y
