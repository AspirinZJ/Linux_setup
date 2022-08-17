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

# howdy captures the image and use it to detect user and input it as sudo password
sudo add-apt-repository ppa:boltgolt/howdy
sudo apt update
sudo apt install howdy

# cpu-x is a tool for showing computer hardware details
sudo add-apt-repository ppa:flexiondotorg/cpu-x
sudo apt-get update
sudo apt-get install cpu-x

# disk usage analyzer
sudo apt install baobab -y
