#!/bin/bash

cd ~

rm -f .profile
ln -s shellcfg/.profile

rm -f .bashrc
ln -s shellcfg/.bashrc

rm -f .vimrc
ln -s shellcfg/.vimrc

rm -rf .vim
ln -s shellcfg/.vim

rm -rf .gitconfig
ln -s shellcfg/.gitconfig

