#!/bin/bash

set -e

sudo apt install -y xdotool wmctrl # for Xubuntu 18.04

sudo cp resources/move-to-next-monitor/move-to-next-monitor /usr/local/bin/

echo "Create a keyboard shortcut in <settings manager -> keyboard -> application shortcuts> for move-to-next-monitor like Ctrl+Alt+Shift+Enter"
