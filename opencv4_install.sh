#!/bin/bash

sudo apt update && sudo apt install -y cmake g++ wget unzip

wget -O opencv-4.x.zip https://github.com/opencv/opencv/archive/4.x.zip
unzip opencv-4.x.zip
cd opencv-4.x/
mkdir -p build && cd build
cmake ..
cmake --build .
