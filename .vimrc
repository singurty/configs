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
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Auto bracket and quotes pairing
Plug 'jiangmiao/auto-pairs'

" File manager; helps switching files
Plug 'preservim/nerdtree'

call plug#end()

" Coc config

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
