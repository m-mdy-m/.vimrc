" ==================================
" Basic
" ==================================
" Undo/Redo
nnoremap <C-z> u              " Undo
nnoremap <C-y> <C-r>          " Redo
inoremap <C-z> <Esc>u         " Undo in insert mode
inoremap <C-r> <Esc><C-r>     " Redo in insert mode

" Cut, Copy, Paste
nnoremap <C-x> dd             " Cut line
nnoremap <C-c> yy           " Copy line
vnoremap <C-c> y            " Copy selection in visual mode
nnoremap <C-v> p              " Paste after cursor
nnoremap <C-S-v> P            " Paste before cursor

" Copy, Cut, Paste in Insert Mode
inoremap <C-x> <Esc>ddi       " Cut line in insert mode
inoremap <C-c> <Esc>yyi     " Copy line in insert mode
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
nnoremap <C-S-w> :close<CR>
inoremap <C-S-w> <Esc>:close<CR>
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


" ===================================
" Git Key Mappings - Advanced
" ===================================

" Git Status & Info
nnoremap <leader>gs :GitStatus<CR>
nnoremap <leader>gl :GitLog<CR>
nnoremap <leader>gd :GitDiff<CR>
nnoremap <leader>gb :Git blame<CR>
nnoremap <leader>gm <Plug>(git-messenger)

" Git Operations (Quick Access)
nnoremap <leader>ga :GitAdd<CR>
nnoremap <leader>gc :GitCommit<CR>
nnoremap <leader>gp :FloatermNew --height=0.4 --width=0.8 --position=center git push<CR>
nnoremap <leader>gP :FloatermNew --height=0.4 --width=0.8 --position=center git pull<CR>

" Git Staging (Individual Files)
nnoremap <leader>ga. :FloatermNew --height=0.3 --width=0.6 --position=center git add .<CR>
nnoremap <leader>gaf :FloatermNew --height=0.3 --width=0.8 --position=center git add %<CR>

" Git Hunk Navigation (GitGutter)
nnoremap ]h <Plug>(gitgutter-next-hunk)
nnoremap [h <Plug>(gitgutter-prev-hunk)
nnoremap <leader>hp <Plug>(gitgutter-preview-hunk)
nnoremap <leader>hs <Plug>(gitgutter-stage-hunk)
nnoremap <leader>hu <Plug>(gitgutter-undo-hunk)

" Git Branch Management
nnoremap <leader>gco :FloatermNew --height=0.4 --width=0.8 --position=center git checkout 
nnoremap <leader>gnb :FloatermNew --height=0.4 --width=0.8 --position=center git checkout -b 

" Git Commit Types (Semantic)
nnoremap <leader>gcf :FloatermNew --height=0.5 --width=0.8 --position=center --autoclose=0 git commit -S -m "feat: 
nnoremap <leader>gcx :FloatermNew --height=0.5 --width=0.8 --position=center --autoclose=0 git commit -S -m "fix: 
nnoremap <leader>gcd :FloatermNew --height=0.5 --width=0.8 --position=center --autoclose=0 git commit -S -m "docs: 
nnoremap <leader>gcr :FloatermNew --height=0.5 --width=0.8 --position=center --autoclose=0 git commit -S -m "refactor: 

" Git Stash Operations
nnoremap <leader>gst :FloatermNew --height=0.4 --width=0.8 --position=center git stash<CR>
nnoremap <leader>gsp :FloatermNew --height=0.4 --width=0.8 --position=center git stash pop<CR>
nnoremap <leader>gsl :FloatermNew --height=0.6 --width=0.8 --position=center git stash list<CR>

" Advanced Git Operations
nnoremap <leader>grb :FloatermNew --height=0.6 --width=0.9 --position=center git rebase -i 
nnoremap <leader>grs :FloatermNew --height=0.4 --width=0.8 --position=center git reset 
nnoremap <leader>grh :FloatermNew --height=0.4 --width=0.8 --position=center git reset --hard 

" Git Viewer (GV)
nnoremap <leader>gv :GV<CR>
nnoremap <leader>gV :GV!<CR>
nnoremap <leader>gvf :GV?<CR>

" ===================================
" Terminal Key Mappings
" ===================================

" Main Terminal Toggle (Like VS Code)
nnoremap <C-S-t> :FloatermToggle<CR>
inoremap <C-S-t> <Esc>:FloatermToggle<CR>
tnoremap <C-S-t> <C-\><C-n>:FloatermToggle<CR>

" Terminal Management
nnoremap <leader>tt :FloatermNew<CR>
nnoremap <leader>th :FloatermToggle<CR>
nnoremap <leader>tk :FloatermKill<CR>
nnoremap <leader>tn :FloatermNext<CR>
nnoremap <leader>tp :FloatermPrev<CR>

" Quick Terminal Commands
nnoremap <leader>tr :FloatermNew --height=0.4 --width=0.8 --position=center 
nnoremap <leader>tg :FloatermNew --height=0.6 --width=0.8 --position=center --name=git<CR>

" Terminal Navigation (In Terminal Mode)
tnoremap <Esc> <C-\><C-n>
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l

" ===================================
" LSP Key Mappings (Additional)
" ===================================

" Quick LSP commands (works for both Vim and Neovim)
nnoremap <leader>li :LspInfo<CR>
nnoremap <leader>lr :LspRestart<CR>
nnoremap <leader>ll :LspLog<CR>

" Toggle diagnostics
nnoremap <leader>ld :lua vim.diagnostic.enable(not vim.diagnostic.is_enabled())<CR>

" Format document quickly
nnoremap <leader>lf :call v:lua.vim.lsp.buf.format({async = true})<CR>
vnoremap <leader>lf :call v:lua.vim.lsp.buf.range_formatting()<CR>

" Open diagnostic in floating window
nnoremap <leader>le :lua vim.diagnostic.open_float()<CR>

" Go to next/previous diagnostic (alternative bindings)
nnoremap <C-j> :lua vim.diagnostic.goto_next()<CR>
nnoremap <C-k> :lua vim.diagnostic.goto_prev()<CR>
