#!/bin/sh

SCRIPT_DIR=$(cd $(dirname $0); pwd)
# link
ln -snf $SCRIPT_DIR/.vimrc ~/.vimrc
ln -snf $SCRIPT_DIR/.vim ~/.vim
ln -snf $SCRIPT_DIR/.tmux.conf ~/.tmux.conf
ln -snf $SCRIPT_DIR/.tmux.d ~/.tmux.d

# vim plugin setup
rm -rf $SCRIPT_DIR/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git $SCRIPT_DIR/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

