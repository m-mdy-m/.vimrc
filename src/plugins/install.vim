call plug#begin('~/.vim/plugged')
" File Explorer
Plug 'm-mdy-m/ftx.vim'
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
"Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
call plug#end()
