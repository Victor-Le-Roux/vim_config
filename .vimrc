" Activer la numérotation des lignes
set nocompatible " Obligatoire pour Vundle
filetype off     " Obligatoire pour Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'dracula/vim' " Mettez le plugin Dracula ici

" Les plugins que vous souhaitez installer avec Vundle
call vundle#end()
filetype plugin indent on   " Obligatoire pour Vundle

set number
" Activer les lignes relatives
set relativenumber

" Activer l'autocomplétion
set omnifunc=syntaxcomplete#Complete

" Configuration de l'autocomplétion avec Tab
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

