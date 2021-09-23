#!/bin/bash

set -e

# Installation
sudo apt install vim git curl -y
curl -sLf https://spacevim.org/install.sh | bash

vim
vim

sudo apt install python3-pip -y
pip3 install --user pynvim

# General Settings
# enable status line mode
cp ~/.SpaceVim.d/init.toml ~/.SpaceVim.d/init.toml.bak
sed -i "s/enable_statusline_mode\ =\ false/enable_statusline_mode\ =\ true/" ~/.SpaceVim.d/init.toml
sed -i "/options/a\    expand_tab = true" ~/.SpaceVim.d/init.toml
sed -i "/options/a\    default_indent = 4" ~/.SpaceVim.d/init.toml

echo "" >> ~/.SpaceVim.d/init.toml
echo "[[layers]]
    name = 'git'
[[layers]]
    name = 'VersionControl'" >> ~/.SpaceVim.d/init.toml
echo "" >> ~/.SpaceVim.d/init.toml

# C/C++ settings
echo "" >> ~/.SpaceVim.d/init.toml
echo "[[layers]]
  name = 'lang#c'
  [layer.clang_std]
    cpp = 'c11'
    
[[layers]]
  name = 'format'
" >> ~/.SpaceVim.d/init.toml

# Python settings
pip3 install --user pylint
pip3 install --user yapf
pip3 install --user isort
echo "" >> ~/.SpaceVim.d/init.toml
echo "[[layers]]
  name = 'lang#python'
" >> ~/.SpaceVim.d/init.toml

# colorscheme layer
echo "" >> ~/.SpaceVim.d/init.toml
echo "[[layers]]
  name = 'colorscheme'
" >> ~/.SpaceVim.d/init.toml

# set wrap
mkdir -p ~/.SpaceVim.d/autoload
cp ./resources/spaceVim/setWrap.vim ~/.SpaceVim.d/autoload
sed -i "/options/a\    bootstrap_after = 'setWrap#after'" ~/.SpaceVim.d/init.toml

# show search index
echo "" >> ~/.SpaceVim.d/init.toml
echo "[[layers]]
    name = 'incsearch'
" >> ~/.SpaceVim.d/init.toml

# install ctags, press F2 to activate it in spaceVim
tar -zxvf ./resources/ctags-5.8.tar.gz -C ~/
cd ~/ctags-5.8
./configure
make
sudo make install
cd -
rm -rf ~/ctags-5.8

