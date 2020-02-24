runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
syntax on
filetype plugin indent on

" make sure *.mud files also work with TinTin++ syntax highlighting
au BufNewFile,BufRead *.mud set filetype=tt
