#!/bin/sh

pkg update
pkg upgrade
pkg install -y neofetch curl tmux git go rust

# change default shell to Zsh
# chsh -s /usr/local/bin/zsh vagrant