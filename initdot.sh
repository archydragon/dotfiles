#!/bin/sh

rm ~/.zshrc
rm ~/.tmux.conf
rm ~/.vimrc
rm -rf ~/.vim

ln -s ~/.dotfiles/zshrc ~/.zshrc
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/vimrc ~/.vimrc
ln -s ~/.dotfiles/vim ~/.vim
