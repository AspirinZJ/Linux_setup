#!/bin/bash

set -e

tar -zxvf ./resources/ctags-5.8.tar.gz -C ~/
cd ~/ctags-5.8
./configure
make
sudo make install
cd -
rm -rf ~/ctags-5.8
