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

" ===================================
" Additional Plugins for IDE-like Features
" ===================================

" Search & Navigation
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " Fuzzy finder
Plug 'junegunn/fzf.vim'                             " FZF integration
Plug 'mileszs/ack.vim'                              " Text search
Plug 'ludovicchabant/vim-gutentags'                 " Tag management
Plug 'universal-ctags/ctags'                        " Tag generator
Plug 'majutsushi/tagbar'                            " Tag browser
Plug 'dyng/ctrlsf.vim'                              " Context search

" Code Completion & Intelligence
Plug 'tpope/vim-commentary'                         " Comment code
Plug 'mattn/emmet-vim'                              " HTML expansion
Plug 'AndrewRadev/tagalong.vim'                     " Auto-change HTML tags
Plug 'alvan/vim-closetag'                           " Auto-close HTML tags
Plug 'tpope/vim-endwise'                            " Add end structures

" Debugging & Testing
Plug 'puremourning/vimspector'                      " Debugging
Plug 'vim-test/vim-test'                            " Test runner

" Language Support
Plug 'dense-analysis/ale'                           " Async linting
Plug 'fatih/vim-go'                                 " Go support
Plug 'rust-lang/rust.vim'                           " Rust support
Plug 'pangloss/vim-javascript'                      " JavaScript support
Plug 'HerringtonDarkholme/yats.vim'                 " TypeScript support
Plug 'jparise/vim-graphql'                          " GraphQL support

" Database
Plug 'tpope/vim-dadbod'                             " Database client
Plug 'kristijanhusak/vim-dadbod-ui'                 " UI for dadbod

" Code Formatting
Plug 'sbdchd/neoformat'                          " Code formatter

" Terminal & Environment
Plug 'voldikss/vim-floaterm'                        " Floating terminal
Plug 'christoomey/vim-tmux-navigator'               " Tmux integration
Plug 'tpope/vim-obsession'                          " Session tracking

" Project Management
Plug 'tpope/vim-projectionist'                      " Project config
Plug 'airblade/vim-rooter'                          " Auto CD to root

" Productivity
Plug 'liuchengxu/vista.vim'                         " Symbol viewer
Plug 'AndrewRadev/splitjoin.vim'                    " Split/join lines
Plug 'mbbill/undotree'                              " Visual undo history
Plug 'nathanaelkane/vim-indent-guides'              " Indent guides

" Git Enhancements (Minimal UI)
Plug 'rhysd/git-messenger.vim'                      " Show commit message
Plug 'rhysd/conflict-marker.vim'                    " Conflict resolution

" Better Default
Plug 'tpope/vim-sensible'                           " Sensible defaults
Plug 'romainl/vim-cool'                             " Auto-disable search highlight

" File Formats
Plug 'cespare/vim-toml'                             " TOML support
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug'] } " Markdown preview

call plug#end()
