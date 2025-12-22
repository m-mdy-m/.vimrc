call plug#begin('~/.vim/plugged')
" LSP Configuration
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
" File
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Editor
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'easymotion/vim-easymotion'
Plug 'editorconfig/editorconfig-vim'
" Status
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Git
Plug 'airblade/vim-gitgutter'
call plug#end()
