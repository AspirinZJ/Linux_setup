#!/bin/bash

set -e

# install texlive and texstudio
sudo apt install texlive-full -y
sudo apt install texstudio -y

# install guvcview for controlling camera and seeing the detials of the camera
sudo apt install guvcview -y
sudo apt install okular -y
sudo apt install translate-shell -y

# qmmp is a lightweight music gui player
sudo apt install qmmp -y

# guvcview is a gui tool for getting and setting the parameters of the camera
sudo apt install guvcview -y

# okular is a pdf viewer
sudo apt install okular -y

# gsmartcontrol is a S.M.A.R.T tool for hard drives and ssds
sudo apt install gsmartcontrol -y

# translation in shell
sudo apt install translate-shell -y
