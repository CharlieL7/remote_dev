#!/bin/bash
# FILE: install.sh
# DESCRIPTION: Personal development environment setup script for a remote Ubuntu server.
# AUTHOR: Charlie Lin

sudo apt update
sudo apt install neovim
sudo apt install xclip

# Copy bash settings over
cp ./.bashrc ~/
cp ./.inputrc ~/
source ~/.bashrc
