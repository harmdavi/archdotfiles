#!/bin/sh

. ./installStow.sh


rm $HOME .bashrc

stow bashrc
