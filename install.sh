#!/bin/bash
# -*- ENCODING: UTF-8 -*-
sudo pacman -Syu

#######################################
# 1 - Install packages
#######################################

# Program language build tools
sudo pacman -S dotnet-sdk dotnet-runtime rust

# IDE
sudo pacman -S neovim rust-analyzer

# Personal tools
sudo pacman -S discord qutebrowser

# Terminal
sudo pacman -S alacritty starship

# Tui's
sudo pacman -S ranger
yay -S bluetuith

# Desktop
sudo pacman -S i3-gabs feh

#######################################
# 2 - Replace bash files
#######################################
cp .bashrc ../
