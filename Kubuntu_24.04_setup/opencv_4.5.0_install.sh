#!/bin/bash

set -e

sudo apt install build-essential
sudo apt install cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
sudo apt install python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libdc1394-22-dev

wget https://github.com/opencv/opencv/archive/refs/tags/4.5.0.tar.gz
tar -xzf 4.5.0.tar.gz
cd opencv-4.5.0/
mkdir build && cd build

cmake ..
cmake --build ./
sudo make install
cd ../..
rm 4.5.0.tar.gz
rm -rf opencv-4.5.0