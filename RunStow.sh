#!/bin/sh

. ./installStow.sh

# Remove existing .bashrc if it exists
rm -f "$HOME/.bashrc"
rm -f "$HOME/.config/hypr/hyprland.conf"
rm -f "$HOME/.config/nvim/init.lua"

# Stow your bashrc
stow bashrc
stow hyperland
stow nvim
