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

# color pickup on screen
sudo snap install pick-colour-picker -y

# install java
sudo apt install openjdk-11-jdk -y

# cpu-x is a tool for showing computer hardware details
sudo add-apt-repository ppa:flexiondotorg/cpu-x
sudo apt-get update
sudo apt-get install cpu-x

# retro terminal
sudo apt install cool-retro-term -y

# kdenlive is a media edit software
sudo apt install kdenlive -y

