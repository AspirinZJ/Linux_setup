#!/bin/bash

set -e

if [ -d ~/公共的 ]; then
	rm -r ~/公共的 && mkdir ~/Public
fi

if [ -d ~/模板 ]; then
	rm -r ~/模板 && mkdir ~/Template
fi
if [ -d ~/视频 ]; then
	rm -r ~/视频 && mkdir ~/Videos
fi
if [ -d ~/图片 ]; then
	rm -r ~/图片 && mkdir ~/Pictures
fi
if [ -d ~/文档 ]; then
	rm -r ~/文档 && mkdir ~/Documents
fi
if [ -d ~/下载 ]; then
	rm -r ~/下载 && mkdir ~/Downloads
fi
if [ -d ~/音乐 ]; then
	rm -r ~/音乐 && mkdir ~/Music
fi
if [ -d ~/桌面 ]; then
	rm -r ~/桌面 && mkdir ~/Desktop
fi

rm ~/.config/user-dirs.dirs && cp resources/user-dirs.dirs ~/.config/

echo "~~~~~~~~~~~Change folder name to English successfully!~~~~~~~~~~~~"
