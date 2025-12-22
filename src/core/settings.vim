" Leader key
let mapleader = '\'

" General behavior
set nocompatible
set encoding=utf-8
set fileencoding=utf-8
set fileformat=unix
set history=1000
set timeoutlen=500
set ttimeoutlen=10
set updatetime=300

" Enable features
set ttyfast
set lazyredraw
syntax enable
filetype plugin indent on

" Line numbers
set number
set relativenumber
set numberwidth=4
set signcolumn=yes

" Search
set incsearch
set hlsearch
set ignorecase
set smartcase
set wrapscan

" Indentation
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set shiftround

" Line wrapping
set wrap
set linebreak
set breakindent
set showbreak=↪\ 
set textwidth=0
set wrapmargin=0

" Scrolling and display
set scrolloff=5
set sidescrolloff=5
set display+=lastline
set laststatus=2
set showcmd
set showmode
set ruler
set cursorline

" Split behavior
set splitbelow
set splitright
set winminheight=0
set winminwidth=0

" Completion
set pumheight=15
set shortmess+=c

" Files and backups
set autoread
set autowrite
set nobackup
set nowritebackup
set noswapfile
set noundofile

" Undo configuration
if has('persistent_undo')
    set undofile
    set undolevels=1000
    set undoreload=10000
    let &undodir = g:vex_config_dir . '/../undo'
    if !isdirectory(&undodir)
        call mkdir(&undodir, 'p')
    endif
endif

" Mouse support
if has('mouse')
    set mouse=a
    if has('mouse_sgr')
        set ttymouse=sgr
    endif
endif

" Clipboard
if has('clipboard')
    set clipboard=unnamed
    if has('unnamedplus')
        set clipboard+=unnamedplus
    endif
endif

" Visual settings
set showmatch
set matchtime=2
set list
set listchars=tab:→\ ,trail:·,nbsp:␣,extends:⟩,precedes:⟨
set fillchars=vert:│,fold:─

" Command line
set cmdheight=1
set noshowmode
set report=0

" Formatting
set formatoptions-=t
set formatoptions+=croqnlj

" Folding
set foldmethod=syntax
set foldlevelstart=99
set foldnestmax=10
set nofoldenable

" Bell
set visualbell
set noerrorbells
set t_vb=

" Concealing
set conceallevel=0
set concealcursor=

" Tags
set tags=./tags,tags;$HOME

" Grep program
if executable('rg')
    set grepprg=rg\ --vimgrep\ --no-heading\ --smart-case
    set grepformat=%f:%l:%c:%m
elseif executable('ag')
    set grepprg=ag\ --vimgrep
    set grepformat=%f:%l:%c:%m
endif

" Cursor shape for different modes
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\e[6 q\<Esc>\\"
    let &t_SR = "\<Esc>Ptmux;\<Esc>\e[4 q\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\e[2 q\<Esc>\\"
elseif &term =~# "xterm\\|rxvt"
    let &t_SI = "\e[6 q"
    let &t_SR = "\e[4 q"
    let &t_EI = "\e[2 q"
endif

" Terminal settings
if has('terminal')
    set termwinsize=12x0
    set termwinkey=<C-_>
endif

" Disable unused built-in plugins
let g:loaded_2html_plugin = 1
let g:loaded_getscriptPlugin = 1
let g:loaded_gzip = 1
let g:loaded_logipat = 1
let g:loaded_matchparen = 1
let g:loaded_tarPlugin = 1
let g:loaded_vimballPlugin = 1
let g:loaded_zipPlugin = 1