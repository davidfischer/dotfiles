#!/bin/bash

DOTFILES=~/.dotfiles

rm -f ~/.bashrc && ln -s $DOTFILES/bashrc ~/.bashrc
rm -f ~/.gitconfig && ln -s $DOTFILES/gitconfig ~/.gitconfig
rm -f ~/.editorconfig && ln -s $DOTFILES/editorconfig ~/.editorconfig
rm -f ~/.vimrc && ln -s $DOTFILES/vimrc ~/.vimrc
rm -rf ~/.vim && ln -s $DOTFILES/vim ~/.vim
