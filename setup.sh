#!/bin/sh

# link
ln -snf ~/dotfiles/.vimrc ~/.vimrc
ln -snf ~/dotfiles/.vim ~/.vim
ln -snf ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -snf ~/dotfiles/.tmux.d ~/.tmux.d

# vim plugin setup
rm -rf ~/dotfiles/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/dotfiles/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

