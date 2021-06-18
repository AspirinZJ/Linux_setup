#!/bin/bash

set -e

touch ~/.xmodmaprc
echo "remove Lock = Caps_Lock
remove Control = Control_L
keysym Caps_Lock = Control_L
add Control = Control_L" > ~/.xmodmaprc

mkdir -p ~/.local/bin
touch ~/.local/bin/change_capsLock_to_ctrl
chmod +x ~/.local/bin/change_capsLock_to_ctrl

echo "#!/bin/bash

xmodmap ~/.xmodmaprc" > ~/.local/bin/change_capsLock_to_ctrl

echo "Added change_capsLock_to_ctrl to your boot option"
