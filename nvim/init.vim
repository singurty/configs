set encoding=utf-8
syntax enable
set background=dark
set relativenumber
set number
set tabstop=4 softtabstop=0 noexpandtab shiftwidth=4
set ignorecase
set completeopt-=preview
set clipboard=unnamedplus
set laststatus=2
set termguicolors
set mouse=a

" Cursor should be block-shaped in insert mode
"set guicursor=i:block

call plug#begin('~/.vim/plugged')

" Auto complete
"Plug 'ycm-core/YouCompleteMe'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'kevinoid/vim-jsonc'

" Auto bracket and quotes pairing
Plug 'jiangmiao/auto-pairs'

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Markdown-preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

Plug 'itchyny/lightline.vim'

" Colorschemes
Plug 'morhetz/gruvbox'
Plug 'sainnhe/sonokai'
Plug 'tjdevries/colorbuddy.vim'
Plug 'tjdevries/gruvbuddy.nvim'

call plug#end()

" Lightline
let g:lightline = {'colorscheme' : 'sonokai'}

" Sonokai
if has('termguicolors')
	set termguicolors
endif
let g:sonokai_style = 'shusia'
let g:sonokai_disable_italic_comment = 1
colorscheme sonokai

"lua require('colorbuddy').colorscheme('gruvbuddy')

" Transparency
hi Normal guibg=NONE ctermbg=NONE
hi NonText guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE

" Coc
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Key-bindings
" Telescope config
" Find files using Telescope command-line sugar.
nnoremap ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap fb <cmd>lua require('telescope.builtin').file_browser()<cr>
nnoremap fh <cmd>lua require('telescope.builtin').help_tags()<cr>
" Tab navigation
nnoremap <C-l> gt<CR>
nnoremap <C-h> gT<CR>

" Clear search highlights
nnoremap <CR> :noh<CR><CR>
" Source init.vim
nnoremap <C-s> :source $MYVIMRC<CR>
" C-p to toggle autopairs
let g:AutoPairsShortcutToggle = '<C-p>'
