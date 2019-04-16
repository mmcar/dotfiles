" Config number bar
set number
set relativenumber

set tabstop=4
set shiftwidth=4
set expandtab

set nocompatible
syntax enable
filetype plugin on
set showcmd 
let mapleader = ","

" Search down into subfolders
" Provides tab complete for file-related tasks
set path+=**

" display all matching files with tab complete
set wildmenu

call plug#begin('~/.local/share/nvim/plugged')
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
call plug#end()
