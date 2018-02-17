set nocp hidden
set ts=2 sw=2 et
syntax on
filetype off

inoremap jk <esc>
inoremap kj <esc>:w<cr>

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tomlion/vim-solidity'
Plugin 'christoomey/vim-tmux-navigator'
call vundle#end()
filetype plugin indent on

