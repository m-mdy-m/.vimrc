" Plugin Manager Initialization
call plug#begin('~/.vim/plugged')

" File and Project Management
Plug 'preservim/nerdtree'                " File explorer
Plug 'preservim/nerdcommenter'           " Easy commenting

" Editor Enhancement
Plug 'tpope/vim-surround'                " Surround text objects
Plug 'tpope/vim-repeat'                  " Enhanced repeat with .
Plug 'jiangmiao/auto-pairs'              " Auto pair brackets, quotes
Plug 'terryma/vim-multiple-cursors'      " Multiple cursor support
Plug 'easymotion/vim-easymotion'         " Fast navigation
Plug 'scrooloose/syntastic'              " Syntax checking
Plug 'editorconfig/editorconfig-vim'     " Consistent coding styles

" Version Control
Plug 'tpope/vim-fugitive'                " Git integration
Plug 'airblade/vim-gitgutter'            " Git diff in gutter
Plug 'junegunn/gv.vim'                   " Git commit browser

" Status and UI
Plug 'vim-airline/vim-airline'           " Enhanced status bar
Plug 'vim-airline/vim-airline-themes'    " Airline themes
Plug 'mhinz/vim-startify'                " Start screen
Plug 'ap/vim-css-color'                  " Color previews

" Code Intelligence
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Intellisense engine
Plug 'SirVer/ultisnips'                  " Snippet engine
Plug 'honza/vim-snippets'                " Snippet collection
Plug 'ervandew/supertab'                 " Tab completion

" Language & Syntax Support
Plug 'sheerun/vim-polyglot'              " Language pack

" Formatting
Plug 'prettier/vim-prettier', { 'do': 'npm install' } " Code formatting
Plug 'godlygeek/tabular'                 " Text alignment

" Sessions
Plug 'xolox/vim-session'                 " Session management
Plug 'xolox/vim-misc'                    " Required for vim-session

call plug#end()
