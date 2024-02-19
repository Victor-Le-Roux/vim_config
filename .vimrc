" Configuration des espaces et des tabulations
set list lcs=trail:·,tab:\ \ 
" Activation de l'indentation automatique
set cindent
" Configuration des délais pour les raccourcis clavier
set ttimeoutlen=0 timeoutlen=0
" Affichage des numéros de ligne
set number
" Affichage des numéros de ligne relatifs
set relativenumber
" Vérification de la version de Vim pour verifier si on peut ajouter le theme
if v:version < 802
    packadd! dracula
endif
" Activation de la coloration syntaxique
syntax enable
" Choix du thème de couleur Dracula
colorscheme dracula
" Configuration des plugins avec Vim-Plug
call plug#begin('~/.vim/plugged')
" Plugin Vim Fugitive pour Git
Plug 'tpope/vim-fugitive'
" Plugin ALE pour l'assistance à la rédaction de code
Plug 'dense-analysis/ale'
" Activation de Pathogen pour la gestion des plugins
execute pathogen#infect()
" Configuration de la ligne de statut avec Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" Paramètres de Syntastic pour la vérification du code
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

