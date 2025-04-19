" ==================================
" Basic
" ==================================
" Undo/Redo
nnoremap <C-z> u              " Undo
nnoremap <C-r> <C-r>          " Redo
inoremap <C-z> <Esc>u         " Undo in insert mode
inoremap <C-r> <Esc><C-r>     " Redo in insert mode

" Cut, Copy, Paste
nnoremap <C-x> dd             " Cut line
nnoremap <C-c> yy             " Copy line
vnoremap <C-c> y              " Copy selection in visual mode
nnoremap <C-v> p              " Paste after cursor
nnoremap <C-S-v> P            " Paste before cursor

" Copy, Cut, Paste in Insert Mode
inoremap <C-x> <Esc>ddi       " Cut line in insert mode
inoremap <C-c> <Esc>yyi       " Copy line in insert mode
inoremap <C-v> <Esc>pi        " Paste in insert mode

" Select all (Ctrl+A)
nnoremap <C-a> gg0vG$
inoremap <C-a> <Esc>gg0vG$
vnoremap <C-a> <Esc>gg0vG$

" Save file (Ctrl+S)
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>a
vnoremap <C-s> <Esc>:w<CR>

" Home/End navigation (beginning/end of line)
nnoremap <Home> 0
nnoremap <End> $
inoremap <Home> <Esc>0i
inoremap <End> <Esc>$a
vnoremap <Home> 0
vnoremap <End> $

" Shift+Home/End for selection
nnoremap <S-Home> v0
nnoremap <S-End> v$
inoremap <S-Home> <Esc>v0
inoremap <S-End> <Esc>v$
vnoremap <S-Home> 0
vnoremap <S-End> $

" Delete word (Ctrl+Delete, Ctrl+Backspace)
nnoremap <C-Delete> dw
nnoremap <C-BS> db
inoremap <C-Delete> <Esc>dwi
inoremap <C-BS> <C-w>

" Navigate by word (Ctrl+Left/Right)
nnoremap <C-Left> b
nnoremap <C-Right> w
inoremap <C-Left> <Esc>bi
inoremap <C-Right> <Esc>wi
vnoremap <C-Left> b
vnoremap <C-Right> w

" Shift+Arrows for selection
nnoremap <S-Left> vh
nnoremap <S-Right> vl
nnoremap <S-Up> vk
nnoremap <S-Down> vj
inoremap <S-Left> <Esc>vhi
inoremap <S-Right> <Esc>vli
inoremap <S-Up> <Esc>vki
inoremap <S-Down> <Esc>vji
vnoremap <S-Left> h
vnoremap <S-Right> l
vnoremap <S-Up> k
vnoremap <S-Down> j

" Ctrl+Shift+Arrows for word selection
nnoremap <C-S-Left> vb
nnoremap <C-S-Right> vw
inoremap <C-S-Left> <Esc>vbi
inoremap <C-S-Right> <Esc>vwi
vnoremap <C-S-Left> b
vnoremap <C-S-Right> w

" Line operations
nnoremap <C-l> 0v$
inoremap <C-l> <Esc>0v$
" Duplicate line (Alt+Shift+Down in VSCode)
nnoremap <A-S-Down> yyp
inoremap <A-S-Down> <Esc>yypi
" Move line up/down (Alt+Up/Down in VSCode)
nnoremap <A-Up> ddkP
nnoremap <A-Down> ddp
inoremap <A-Up> <Esc>ddkPi
inoremap <A-Down> <Esc>ddpi

" Indentation
nnoremap <Tab> >>
nnoremap <S-Tab> <<
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv
inoremap <S-Tab> <Esc><<i

" Multi-cursor simulation (not perfect but helps)
" Use vim-multiple-cursors plugin for better experience
nmap <C-d> <Plug>(VM-Find-Under)
xmap <C-d> <Plug>(VM-Find-Subword-Under)

" ==================================
" Search and Replace (VSCode Style)
" ==================================

" Find
nnoremap <C-f> /
inoremap <C-f> <Esc>/
" Find next/previous
nnoremap <F3> n
nnoremap <S-F3> N
inoremap <F3> <Esc>ni
inoremap <S-F3> <Esc>Ni
" Find and replace
nnoremap <C-h> :%s///gc<Left><Left><Left><Left>
inoremap <C-h> <Esc>:%s///gc<Left><Left><Left><Left>
" Find in selection
vnoremap <C-f> <Esc>/\%V

" ==================================
" Window Management (VSCode Style)
" ==================================

" Split window
nnoremap <C-\> :vsplit<CR>
nnoremap <C-S-\> :split<CR>
" Close current window/tab
nnoremap <C-w> :close<CR>
inoremap <C-w> <Esc>:close<CR>
" Navigate between splits
nnoremap <C-S-h> <C-w>h
nnoremap <C-S-j> <C-w>j
nnoremap <C-S-k> <C-w>k
nnoremap <C-S-l> <C-w>l
" Resize splits
nnoremap <C-S-Left> :vertical resize -5<CR>
nnoremap <C-S-Right> :vertical resize +5<CR>
nnoremap <C-S-Up> :resize -5<CR>
nnoremap <C-S-Down> :resize +5<CR>

" ==================================
" Tab Management
" ==================================

" New tab
nnoremap <C-t> :tabnew<CR>
inoremap <C-t> <Esc>:tabnew<CR>
" Close tab
nnoremap <C-w> :tabclose<CR>
" Next/previous tab
nnoremap <C-Tab> :tabnext<CR>
nnoremap <C-S-Tab> :tabprevious<CR>
inoremap <C-Tab> <Esc>:tabnext<CR>
inoremap <C-S-Tab> <Esc>:tabprevious<CR>
" Go to specific tab
nnoremap <A-1> 1gt
nnoremap <A-2> 2gt
nnoremap <A-3> 3gt
nnoremap <A-4> 4gt
nnoremap <A-5> 5gt
nnoremap <A-6> 6gt
nnoremap <A-7> 7gt
nnoremap <A-8> 8gt
nnoremap <A-9> 9gt

" Go to definition
nnoremap <F12> :call CocAction('jumpDefinition')<CR>
" Show references
nnoremap <S-F12> :call CocAction('jumpReferences')<CR>
" Rename symbol
nnoremap <F2> :call CocAction('rename')<CR>
" Show documentation
nnoremap <C-k><C-i> :call CocAction('doHover')<CR>
" Code actions
nnoremap <leader>ca :call CocAction('codeAction')<CR>
" Quick Fix
nnoremap <leader>qf :call CocAction('doQuickfix')<CR>
" Format document
nnoremap <S-A-f> :call CocAction('format')<CR>
inoremap <S-A-f> <Esc>:call CocAction('format')<CR>i

" Toggle terminal
nnoremap <C-`> :terminal<CR>
" Exit terminal mode
tnoremap <Esc> <C-\><C-n>

" Toggle comment
nnoremap <C-/> :call NERDComment(0, "toggle")<CR>
vnoremap <C-/> :call NERDComment(0, "toggle")<CR>
inoremap <C-/> <Esc>:call NERDComment(0, "toggle")<CR>i

" Fold/Unfold
nnoremap <C-k><C-0> zM  " Fold all
nnoremap <C-k><C-j> zo  " Unfold current
nnoremap <C-k><C-l> zc  " Fold current

" Multi-file search
nnoremap <C-S-f> :vim // **/*<left><left><left><left><left><left>
nnoremap <C-p> :find
nnoremap <C-S-p> :
