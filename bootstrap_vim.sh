#!/bin/bash

sudo -v

export VIM_PATH=$HOME/.vim
export VIM_BUNDLE_PATH=$VIM_PATH/bundle

mkdir -p $VIM_BUNDLE_PATH
git clone https://github.com/gmarik/Vundle.vim.git $VIM_BUNDLE_PATH/Vundle.vim

export ECLIM_VIM_PATH=$HOME/.jvim
export ECLIM_BUNDLE_PATH=$ECLIM_VIM_PATH/bundle

mkdir -p $ECLIM_BUNDLE_PATH
git clone https://github.com/gmarik/Vundle.vim.git $ECLIM_BUNDLE_PATH/Vundle.vim
