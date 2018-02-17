#!/bin/bash

cd "$(dirname "$0")"
DST="$(pwd)"
cd

[ -f .profile -a ! -L .profile ] && mv .profile .profile.backup

for file in .vimrc .tmux.conf .profile .inputrc; do
  ln -s $DST/$file $file
done

for file in .profile.local; do
  cp $DST/$file $file
done

[ -d .vim/bundle/Vundle.vim ] || git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +BundleInstall +qall

vim .profile.local

