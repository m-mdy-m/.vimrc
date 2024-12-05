" ==================================
" Basic Editing Commands
" ==================================

" Undo/Redo
nnoremap <C-z> u              " Undo
nnoremap <C-r> <C-r>          " Redo
inoremap <C-z> <Esc>u         " Undo in insert mode
inoremap <C-r> <Esc><C-r>     " Redo in insert mode

" Cut, Copy, Paste
nnoremap <C-x> dd             " Cut line
nnoremap <C-c> yy             " Copy line
nnoremap <C-v> p              " Paste after cursor
nnoremap <C-S-v> P            " Paste before cursor

" Copy, Cut, Paste in Insert Mode
inoremap <C-x> <Esc>ddi       " Cut line in insert mode
inoremap <C-c> <Esc>yy        " Copy line in insert mode
inoremap <C-v> <Esc>p         " Paste in insert mode

" ==================================
" Window Management
" ==================================

" Split Windows
nnoremap <C-w>s :split<CR>        " Horizontal split
nnoremap <C-w>v :vsplit<CR>       " Vertical split

" Navigate between splits
nnoremap <C-w>h <C-w>h            " Move to left window
nnoremap <C-w>j <C-w>j            " Move to bottom window
nnoremap <C-w>k <C-w>k            " Move to top window
nnoremap <C-w>l <C-w>l            " Move to right window

" Resize Windows
nnoremap <C-w>> :vertical resize +5<CR>  " Resize right window
nnoremap <C-w>< :vertical resize -5<CR>  " Resize left window
nnoremap <C-w>+ :resize +5<CR>           " Resize bottom window
nnoremap <C-w>- :resize -5<CR>           " Resize top window

" Close Windows
nnoremap <C-w>q :close<CR>         " Close current window

" Close all windows except the last one
nnoremap <leader>ca :tabnew<CR>:q<CR>  " Create new tab to reset, then quit

" Close multiple windows, e.g. close 4 means close 4 windows from the current
nnoremap <leader>c4 :execute 'normal! 4<C-w>c'<CR>  " Close 4 windows (if you specify the number)

" Close n windows (generic number)
nnoremap <leader>cn :execute 'normal! ' . input('Close how many windows? ') . '<C-w>c'<CR> " Close n windows

" Close n windows with custom input
nnoremap <leader>n :let n = input('Close how many windows? ')<CR> :execute 'normal! ' . n . ' <C-w>c'<CR>
" ==================================
" Navigation
" ==================================

" Move between buffers
nnoremap <leader>h :bprevious<CR>   " Previous buffer
nnoremap <leader>l :bnext<CR>       " Next buffer

" Move between splits
nnoremap <leader>h <C-w>h          " Move to left window
nnoremap <leader>j <C-w>j          " Move to bottom window
nnoremap <leader>k <C-w>k          " Move to top window
nnoremap <leader>l <C-w>l          " Move to right window

" Jump to the beginning/end of a line
nnoremap <C-a> 0                  " Jump to the beginning of the line
nnoremap <C-e> $                  " Jump to the end of the line

" Scroll
nnoremap <C-d> <C-d>              " Scroll down
nnoremap <C-u> <C-u>              " Scroll up

" ==================================
" Text Editing
" ==================================

" Delete Line
nnoremap <C-d> dd                  " Delete current line
inoremap <C-d> <Esc>ddi            " Delete current line in insert mode

" Delete Word
nnoremap <C-w> dw                  " Delete word under cursor
inoremap <C-w> <Esc>dw             " Delete word in insert mode

" Duplicate Line
nnoremap <leader>d yyp             " Duplicate current line

" Indentation
nnoremap <C-t> >>                  " Indent line
nnoremap <C-d> <<                  " Dedent line

" ==================================
" Search and Replace
" ==================================

" Incremental search
nnoremap / /<C-r>=input("Search: ")<CR><CR> " Custom search prompt
nnoremap ? ?<C-r>=input("Search: ")<CR><CR> " Custom reverse search prompt

" Find word under cursor
nnoremap * *N                     " Search for the word under cursor
nnoremap # #N                     " Reverse search for the word under cursor

" Replace text
nnoremap <leader>r :%s///g<Left><Left><Left>  " Search & replace
inoremap <leader>r <Esc>:%s///g<Left><Left><Left> " Replace in insert mode

" ==================================
" File Operations
" ==================================

" Save and quit
nnoremap <C-s> :w<CR>              " Save file
nnoremap <C-q> :q<CR>              " Quit file
nnoremap <C-S-q> :wq<CR>           " Save and quit file

" Open new file
nnoremap <leader>n :e<Space>       " Open new file

" ==================================
" Miscellaneous
" ==================================

" Toggle line numbers
nnoremap <leader>ln :set number!<CR>   " Toggle line numbers

" Show line in the middle of the screen
nnoremap <leader>l :set cursorline!<CR>   " Toggle cursor line highlight

" Show relative line numbers
nnoremap <leader>rn :set relativenumber!<CR>   " Toggle relative numbers

" Toggle relative line numbers
nnoremap <leader>tn :set relativenumber!<CR>   " Toggle relative numbers

" ==================================
" Code Folding
" ==================================

" Enable/Disable folding
nnoremap <leader>f :set foldmethod=syntax<CR>  " Fold by syntax
nnoremap <leader>F :set foldmethod=manual<CR>   " Disable folding
nnoremap <leader>o :foldopen<CR>                 " Open fold
nnoremap <leader>c :foldclose<CR>                " Close fold
nnoremap <leader>z :foldreset<CR>                " Reset fold

" ==================================
" Activate Mouse
" ==================================

set mouse=a    " Enable mouse support for selecting text

" ==================================
"  Keybinding for clang-format
" ==================================
nmap <leader>cf :ClangFormat<CR>
vmap <leader>cf :ClangFormat<CR>
autocmd BufWritePre *.c,*.h ClangFormat

" ==================================
"   Keybinding for Prettier
" ==================================
nmap <leader>p :Prettier<CR>
vmap <leader>p :Prettier<CR>
autocmd BufWritePre *.c,*.h Prettier
