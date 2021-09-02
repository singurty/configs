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
set laststatus=1

" Tab navigation
nnoremap <C-l> gt<CR>
nnoremap <C-h> gT<CR>

" Clear search highlights
nnoremap <esc> :noh<cr><esc>
" Cursor should be block-shaped in insert mode
set guicursor=i:block

call plug#begin('~/.vim/plugged')

" Auto complete
Plug 'Valloric/YouCompleteMe'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Auto bracket and quotes pairing
Plug 'jiangmiao/auto-pairs'

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
call plug#end()

" Coc config
"inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"" use <tab> for trigger completion and navigate to the next complete item
"function! s:check_back_space() abort
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1]  =~ '\s'
"endfunction
"
"inoremap <silent><expr> <Tab>
"      \ pumvisible() ? "\<C-n>" :
"      \ <SID>check_back_space() ? "\<Tab>" :
"      \ coc#refresh()
"
"" Telescope config
" Find files using Telescope command-line sugar.
nnoremap ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap fh <cmd>lua require('telescope.builtin').help_tags()<cr>
