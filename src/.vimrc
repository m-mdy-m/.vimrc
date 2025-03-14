" Basic editor behavior

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
let mapleader = ','
let g:mapleader = ','

" Time delay on <Leader> key
set timeoutlen=3000 ttimeoutlen=100

" Update time
set updatetime=250

" Trigger InsertLeave autocmd
inoremap <C-c> <Esc>

" No need for Ex mode
nnoremap Q <NOP>

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
set synmaxcol=50
set lazyredraw
set ignorecase smartcase       " Smart case sensitivity in searches
set incsearch hlsearch         " Incremental search with highlighting

" Visual settings
set cursorline                 " Highlight current line
set cmdheight=1                " Command line height
set showcmd                    " Show incomplete commands
set nofoldenable               " Disable folding by default
set mouse=a                    " Enable mouse support
set noruler laststatus=0       " Hide ruler and status line

let g:config_dir = fnamemodify(resolve(expand('<sfile>:p')), ':h')

" Source Files using relative paths
execute 'source ' . g:config_dir . '/keys.vim'
execute 'source ' . g:config_dir . '/appearance.vim'
execute 'source ' . g:config_dir . '/plugins/install.vim'
execute 'source ' . g:config_dir . '/plugins/settings.vim'
