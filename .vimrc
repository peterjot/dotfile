set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Yggdroot/indentLine'
call vundle#end()
filetype plugin indent on

set number

set tabstop=4
set expandtab
set shiftwidth=4

set softtabstop=4

set autoindent
set laststatus=2

set nowrap
set ruler
set noshowcmd

set encoding=utf-8
set background=dark

syntax on
" set syntax"
au BufRead,BufNewFile *.asm set filetype=nasm

imap <F2> <C-O>:w<CR>
imap <F3> <C-O>:q

map <F2> :w<CR>
map <F3> :q
map s :2,$s/^pick/squash/<CR>

