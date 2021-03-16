#!/bin/bash
sudo apt --purge remove "*cublas*" "cuda*" -y
sudo apt --purge remove "*nvidia*" -y
sudo apt purge nvidia* -y
sudo apt autoremove
sudo apt autoclean
