#!/bin/bash

set -e

# gsmartcontrol is a S.M.A.R.T tool for hard drives and ssds
sudo apt install gsmartcontrol -y

# translation in shell
sudo apt install translate-shell -y

# remote access and control
sudo apt install remmina -y

# meld is a software comparing files
sudo apt install meld -y

# disk usage analyzer
sudo apt install baobab -y

# shift+E/O to create new window terminal
sudo apt install terminator -y

# ag：比grep、ack更快的递归搜索文件内容。
# usage: ag 'def main'
sudo apt install silversearcher-ag -y

# tig：字符模式下交互查看git项目，可以替代git命令。
sudo apt install tig -y

# shellcheck：shell脚本静态检查工具，能够识别语法错误以及不规范的写法。
sudo apt install shellcheck -y

# fzf：命令行下模糊搜索工具，能够交互式智能搜索并选取文件或者内容，配合终端ctrl-r历史命令搜索简直完美。
sudo apt install fzf -y

# axel：多线程下载工具，下载文件时可以替代curl、wget。
# axel -n 20 http://centos.ustc.edu.cn/centos/7/isos/x86_64/CentOS-7-x86_64-Minimal-1511.iso
sudo apt install axel -y

# <zsh> quick jump to (sub)folder you already visited
sudo apt install autojump -y

# <zsh> A tool that automatically formats Python code to conform to the PEP 8 style guide
pip install autopep8

# <zsh> show image in terminal
sudo apt install catimg -y

# Generic Colouriser, try grc netstat
sudo apt install grc -y

# tmux
sudo apt install tmux -y

# tldr TLDR is commonly used to summarize lengthy content and can signal a sort of executive summary at the start of news articles or emails. 
# tldr git.    tldr top.    tldr netstat ...
sudo apt install tldr -y
tldr -u

# gpick is a screen color picker
sudo apt install gpick -y

# netstat: netstat -tunlp | grep <something>
sudo apt install net-tools -y

# iotop is a command line tool to monitor the io read/write with harddrives
sudo apt install iotop -y

