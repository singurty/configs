set encoding=utf-8
syntax enable
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

call plug#begin('~/.vim/plugged')

Plug 'Valloric/YouCompleteMe'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'

call plug#end()
