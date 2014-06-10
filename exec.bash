#!/bin/bash

ln -s `pwd`/vimrc ~/.vimrc
ln -s `pwd`/zshrc ~/.zshrc

mkdir -p ~/.pip
ln -s `pwd`/pip.conf ~/.pip/pip.conf
