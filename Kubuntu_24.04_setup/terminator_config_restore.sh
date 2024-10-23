#!/bin/bash
#
set -e

# the config path is ~/.config/terminator/config

if [[ ! -d "/home/jackzhang/.config/terminator" ]]; then
	mkdir ~/.config/terminator
fi

cp config_backup/terminator/config ~/.config/terminator/

