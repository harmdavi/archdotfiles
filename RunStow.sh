#!/bin/sh

. ./installStow.sh

# Remove existing .bashrc if it exists
rm -f "$HOME/.bashrc"

# Stow your bashrc
stow bashrc

