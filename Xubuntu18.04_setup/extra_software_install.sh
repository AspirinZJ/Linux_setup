#!/bin/bash

set -e

# install texlive and texstudio
sudo apt install texlive-full -y
sudo apt install texstudio -y

# install guvcview for controlling camera and seeing the detials of the camera
sudo apt install guvcview -y
sudo apt install okular -y
sudo apt install translate-shell -y
