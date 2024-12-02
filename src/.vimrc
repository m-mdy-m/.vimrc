" General Settings
set number                      " Show absolute line numbers
set relativenumber              " Show relative line numbers
set tabstop=4                   " Set tab width to 4 spaces
set shiftwidth=4                " Set indent width to 4 spaces
set expandtab                   " Convert tabs to spaces
set autoindent                  " Enable automatic indentation
set smartindent                 " Enable smarter indentation
set wrap                        " Enable line wrapping
set scrolloff=5                 " Keep 5 lines visible above/below cursor
set clipboard=unnamedplus       " Use system clipboard for copy/paste
set undofile                    " Enable persistent undo
set ignorecase                  " Case insensitive search
set smartcase                   " Enable smart case sensitivity
set incsearch                   " Show matches as you type
set hlsearch                    " Highlight search matches
set cursorline                  " Highlight the current line

source ~/Projects/vim/src/appearance.vim
" Source Plugin Configuration
source ~/Projects/vim/vim-plug/plug.vim
source ~/Projects/vim/src/plugins/install.vim
source ~/Projects/vim/src/plugins/settings.vim

" Source Appearance Settings
source ~/Projects/vim/src/appearance.vim

" Key Mappings
nnoremap <C-c> "+y                  " Copy to system clipboard
vnoremap <C-c> "+y                  " Visual selection copy
nnoremap <C-v> "+p                  " Paste from system clipboard
nnoremap <C-z> :undo<CR>            " Undo with Ctrl+z
nnoremap <C-y> :redo<CR>            " Redo with Ctrl+y

" Minimal Status Line
set laststatus=2                    " Always show the status line
set statusline=%f%m%r%h%w\ [%{&ff}]\ [%l/%L]\ [%p%%]

" Performance Improvements
set lazyredraw                     " Faster scrolling
set ttyfast                        " Speed up terminal output