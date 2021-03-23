#!/bin/bash

set -e
sudo apt update
sudo apt upgrade -y
cd ~
ubuntu-drivers devices
sudo add-apt-repository ppa:graphics-drivers/ppa -y
sudo apt update
sudo apt upgrade -y
sudo apt install nvidia-driver-460 -y
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-ubuntu1804.pin
sudo mv cuda-ubuntu1804.pin /etc/apt/preferences.d/cuda-repository-pin-600
sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub
sudo add-apt-repository "deb https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/ /"
sudo apt update
sudo apt install cuda -y
sudo prime-select nvidia
sudo apt install nvidia-cuda-toolkit -y
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Add the following two lines to ~/.bashrc"
echo "export PATH=/usr/lib/cuda/bin${PATH:+:${PATH}}"
echo "export LD_LIBRARY_PATH=/usr/local/cuda/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "~~~Reboot the system to enable nvidia driver and cuda installation~~~~"