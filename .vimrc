" ======== Editor ========= 

" Turn syntax highlighting on.
syntax on

" Set encoding to UTF-8, so that NERD fonts can be displayed.
set encoding=UTF-8

" Diable compatibility with vi which can cause unexpected issues
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on
" Enable plugins and load plugin for the detected file type.
filetype plugin on
" Load an indent file for the detected file type.
filetype indent on

colorscheme gruvbox
set bg=dark

" Display line number
set number

" Set tab width to 4 columns
set tabstop=4
" Set default indent to 4
set shiftwidth=4
" Use space rather than tabs
set expandtab
" Do not wrap lines.
" set nowrap

" ======= Search ======

" Use highlighting during a search
set hlsearch

" Show the partial command you are typing
set showcmd

" PLUGINS ---------------------------------------------------------------- {{{
" Plugin code goes here.

call plug#begin('~/.vim/plugged')
    Plug 'preservim/nerdtree'
    Plug 'vim-airline/vim-airline'
    Plug 'ryanoasis/vim-devicons'
    Plug 'vhda/verilog_systemverilog.vim'
    Plug 'wesQ3/vim-windowswap'
call plug#end()

" }}}

" MAPPINGS --------------------------------------------------------------- {{{
" Mappings code goes here.

let mapleader = " "
nnoremap J 5j
nnoremap K 5k
nnoremap S :w<CR>
nnoremap Q :q<CR>

nnoremap tt :NERDTreeToggle %<CR>

" Window arrangement
nnoremap <leader>j <c-w>j
nnoremap <leader>k <c-w>k
nnoremap <leader>h <c-w>h
nnoremap <leader>l <c-w>l
nnoremap <Up>    <c-w>+
nnoremap <Down>  <c-w>-
nnoremap <Left>  <c-w><
nnoremap <Right> <c-w>>

" }}}

" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" More Vimscripts code goes here.
autocmd BufNewFile,BufRead *.vx,*.vxctx,*.vh,*.vxh,*.vxhctx set ft=viva

" }}}

" STATUS LINE ------------------------------------------------------------ {{{

" Status bar code goes here.


" }}}
