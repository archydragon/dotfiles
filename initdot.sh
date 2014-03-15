#!/bin/sh

rm ~/.zshrc
rm ~/.tmux.conf
rm ~/.vimrc
rm ~/.config/mc/ini
rm -rf ~/.vim

ln -s ~/.dotfiles/zshrc ~/.zshrc
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/vimrc ~/.vimrc
ln -s ~/.dotfiles/vim ~/.vim
mkdir -p ~/.config/mc
ln -s ~/.dotfiles/mc.ini ~/.config/mc/ini
