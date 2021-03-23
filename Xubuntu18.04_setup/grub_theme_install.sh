#!/bin/bash

cd resources/grub2_themes/
mkdir theme
tar -xzvf grub2_themes.tar.gz -C theme

cd theme

sudo ./install.sh -b -t stylish -s 1080p

cd ..
rm -rf theme
