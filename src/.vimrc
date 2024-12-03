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
set laststatus=0                " Hide status line
set showcmd                     " Display incomplete commands in the corner
set cmdheight=1                 " Set command line height to 1
set nofoldenable                " Disable folding by default
set mouse=a                     " Enable mouse support for selecting code
set noruler                     " Disable the ruler (right-side status line)

" Source Files
source ~/Projects/vim/src/keys.vim
source ~/Projects/vim/src/appearance.vim
source ~/Projects/vim/vim-plug/plug.vim
source ~/Projects/vim/src/plugins/install.vim
source ~/Projects/vim/src/plugins/settings.vim
