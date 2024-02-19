set list lcs=trail:·,tab:\ \ 
set cindent
set ttimeoutlen=0 timeoutlen=0
set number
set relativenumber

if v:version < 802
    packadd! dracula
endif
syntax enable
colorscheme dracula

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'prabirshrestha/asyncomplete.vim'
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"
let g:asyncomplete_auto_popup = 0
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

