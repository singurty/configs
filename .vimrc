set encoding=utf-8
syntax enable
set background=dark
colorscheme solarized
set relativenumber
set number
set tabstop=4 softtabstop=0 noexpandtab shiftwidth=4
set ignorecase
set completeopt-=preview
set clipboard=unnamedplus

" Nerdtree
nnoremap <C-n> :NERDTreeToggle<CR>

" Tab navigation
nnoremap <C-l> gt<CR>
nnoremap <C-h> gT<CR>

" Cursor should be block-shaped in insert mode
set guicursor=i:block

call plug#begin('~/.vim/plugged')

" Auto complete
Plug 'Valloric/YouCompleteMe'

" Auto bracket and quotes pairing
Plug 'jiangmiao/auto-pairs'

" File manager; helps switching files
Plug 'preservim/nerdtree'

call plug#end()
