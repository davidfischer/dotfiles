#!/bin/bash

cd ~

rm -f .profile
ln -s shellcfg/.profile

rm -f .vimrc
ln -s shellcfg/.vimrc

rm -rf .vim
ln -s shellcfg/.vim

