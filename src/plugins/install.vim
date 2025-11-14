" Plugin Manager Initialization
call plug#begin('~/.vim/plugged')

" ===================================
" LSP Configuration
" ===================================
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

" ===================================
" File and Project Management
" ===================================
Plug 'preservim/nerdtree'                " File explorer
Plug 'preservim/nerdcommenter'           " Easy commenting
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }  " Fuzzy finder
Plug 'junegunn/fzf.vim'                  " FZF vim integration

" ===================================
" Editor Enhancement
" ===================================
Plug 'tpope/vim-surround'                " Surround text objects
Plug 'tpope/vim-repeat'                  " Enhanced repeat with .
Plug 'jiangmiao/auto-pairs'              " Auto pair brackets, quotes
Plug 'terryma/vim-multiple-cursors'      " Multiple cursor support
Plug 'easymotion/vim-easymotion'         " Fast navigation
Plug 'scrooloose/syntastic'              " Syntax checking
Plug 'editorconfig/editorconfig-vim'     " Consistent coding styles
Plug 'Yggdroot/indentLine'               " Show indent guides

" ===================================
" Status and UI
" ===================================
Plug 'vim-airline/vim-airline'           " Enhanced status bar
Plug 'vim-airline/vim-airline-themes'    " Airline themes
Plug 'mhinz/vim-startify'                " Start screen
Plug 'ap/vim-css-color'                  " Color previews

" ===================================
" Language & Syntax Support
" ===================================
Plug 'sheerun/vim-polyglot'              " Language pack

" ===================================
" Formatting & Alignment
" ===================================
Plug 'godlygeek/tabular'                 " Text alignment
Plug 'sbdchd/neoformat'                  " Auto-formatter

" ===================================
" Sessions
" ===================================
Plug 'xolox/vim-session'                 " Session management
Plug 'xolox/vim-misc'                    " Required for vim-session

" ===================================
" Git Integration
" ===================================
Plug 'tpope/vim-fugitive'                " Git commands
Plug 'airblade/vim-gitgutter'            " Git diff in gutter
Plug 'junegunn/gv.vim'                   " Git commit browser
Plug 'rhysd/git-messenger.vim'           " Git blame popup
Plug 'samoshkin/vim-mergetool'           " Git merge conflicts

" ===================================
" Terminal Integration
" ===================================
Plug 'voldikss/vim-floaterm'             " Floating terminal

" ===================================
" Productivity
" ===================================
Plug 'tpope/vim-obsession'               " Continuous session saving
Plug 'mbbill/undotree'                   " Visual undo tree

call plug#end()
