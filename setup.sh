#!/bin/sh

# link
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.vim ~/.vim
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/.tmux.d ~/.tmux.d

# vim plugin setup
git clone https://github.com/VundleVim/Vundle.vim.git ~/dotfiles/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

