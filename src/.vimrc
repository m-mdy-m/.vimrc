" Disable vi compatibility
if !has("nvim")
	set nocompatible
endif

" Reload .vimrc
nnoremap <F12> :so $MYVIMRC<CR>

" Enable local .vimrc config
set exrc
set secure
" Lines of memory to remember
set history=10000

" Leader key to add extra key combinations
let mapleader = '\'

" Time delay on <Leader> key
set timeoutlen=3000 ttimeoutlen=100

" Update time
set updatetime=250

set nrformats-=octal
set number relativenumber      " Show hybrid line numbers
set tabstop=4 shiftwidth=4     " Tab settings
set expandtab autoindent       " Use spaces for tabs and auto indent
set smartindent                " Smart indentation
set wrap scrolloff=5           " Wrap lines and keep context visible
set clipboard=unnamedplus      " Use system clipboard
set undofile                   " Enable persistent undo history
set ttyfast
set updatetime=300
set lazyredraw
set ignorecase smartcase       " Smart case sensitivity in searches
set incsearch hlsearch         " Incremental search with highlighting

" Visual settings
set cursorline                 " Highlight current line
set cmdheight=1                " Command line height
set showcmd                    " Show incomplete commands
set nofoldenable               " Disable folding by default
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver25-Cursor
set guicursor+=r-cr:hor20-Cursor
set guicursor+=o:hor50-Cursor
set guicursor+=a:blinkwait700-blinkoff400-blinkon250-Cursor


" Mouse support
set mouse=a
if has('mouse_sgr')
    set ttymouse=sgr
endif
set noruler laststatus=0       " Hide ruler and status line
set nobackup
set nowritebackup
set noswapfile

let g:config_dir = fnamemodify(resolve(expand('<sfile>:p')), ':h')

" Source Files using relative paths
execute 'source ' . g:config_dir . '/keys.vim'
execute 'source ' . g:config_dir . '/appearance.vim'
execute 'source ' . g:config_dir . '/plugins/install.vim'
execute 'source ' . g:config_dir . '/plugins/settings.vim'
