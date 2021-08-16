set encoding=utf-8
syntax enable
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48:2;%lu;%lu;%lum"
set background=dark
colorscheme solarized
set relativenumber
set number
"set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set tabstop=4 softtabstop=0 noexpandtab shiftwidth=4
"set laststatus=2
"let  g:lightline = {'colorscheme': 'solarized'}
set ignorecase
set completeopt-=preview
set clipboard=unnamedplus
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-l> gt<CR>
nnoremap <C-h> gT<CR>
nnoremap <C-c> "+y<CR>
nnoremap <C-P> "+p<CR>

" Vundle stuff
set nocompatible              " be iMproved, required
filetype off                  " required 
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'
Plugin 'jiangmiao/auto-pairs'
"Plugin 'itchyny/lightline.vim'
Plugin 'preservim/nerdtree'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

