#!/bin/sh

. ./installStow.sh

# Remove existing .bashrc if it exists
rm -f "$HOME/.bashrc"
rm -f "$HOME/.config/hypr/hyprland.conf"
rm -f "$HOME/.config/nvim/init.lua"
rm -f "$HOME/.config/ghostty/config"
rm -f "$HOME/.config/waybar/"


# Stow your bashrc
stow bashrc
stow hyperland
stow nvim
stow ghostty
stow scripts
stow waybar

