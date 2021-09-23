#!/bin/bash

set -e
mkdir -p ~/.config/Typora/themes
cd resources/typora_themes/
unzip panda.zip
mv panda.css ~/.config/Typora/themes/
mv panda/ ~/.config/Typora/themes/
