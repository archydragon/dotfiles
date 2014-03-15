#!/bin/sh

cd .dotfiles && git pull

rm ~/.zshrc
rm ~/.tmux.conf
rm ~/.vimrc
rm ~/.config/mc/ini
rm -rf ~/.vim
rm ~/.gitconfig

ln -s ~/.dotfiles/zshrc ~/.zshrc
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/vimrc ~/.vimrc
ln -s ~/.dotfiles/vim ~/.vim
mkdir -p ~/.config/mc
ln -s ~/.dotfiles/mc.ini ~/.config/mc/ini
ln -s ~/.dotfiles/gitconfig ~/.gitconfig
cp ~/.dotfiles/gitconfig_user ~/.gitconfig_user

cd -
