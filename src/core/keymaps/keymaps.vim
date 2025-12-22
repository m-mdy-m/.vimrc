" VEX - Vim Ecosystem Extension
" Copyright (C) 2025 Genix

" Basic Keymaps
"" UNDO Operation
nnoremap <C-z> u
inoremap <C-z> <Esc>u 
nnoremap <C-y> <C-r>
inoremap <C-r> <Esc><C-r> 
"" CUT Operation
inoremap <C-x> <Esc>"+ddi
nnoremap <C-x> "+dd      
vnoremap <C-x> "+d       
"" Copy Operation
inoremap <C-c> <Esc>"+yyi
nnoremap <C-c> "+yy      
vnoremap <C-c> "+y       
"" Paste Operation
nnoremap <C-v> "+p       
nnoremap <C-S-v> "+P     
vnoremap <C-v> "+p       
inoremap <C-v> <Esc>"+pa 
"" Select all (Ctrl+A)
nnoremap <C-a> gg0vG$
inoremap <C-a> <Esc>gg0vG$
vnoremap <C-a> <Esc>gg0vG$
"" Save file (Ctrl+S)
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>a
vnoremap <C-s> <Esc>:w<CR>
"" Home/End navigation
nnoremap <Home> 0
nnoremap <End> $
inoremap <Home> <Esc>0i
inoremap <End> <Esc>$a
vnoremap <Home> 0
vnoremap <End> $
"" Shift+Home/End for selection
nnoremap <S-Home> v0
nnoremap <S-End> v$
inoremap <S-Home> <Esc>v0
inoremap <S-End> <Esc>v$
vnoremap <S-Home> 0
vnoremap <S-End> $
"" Navigate by word (Ctrl+Left/Right)
nnoremap <C-Left> b
nnoremap <C-Right> w
inoremap <C-Left> <Esc>bi
inoremap <C-Right> <Esc>wi
vnoremap <C-Left> b
vnoremap <C-Right> w
"" Shift+Arrows for selection
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
""  Ctrl+Shift+Arrows for word selection
nnoremap <C-S-Left> vb
nnoremap <C-S-Right> vw
inoremap <C-S-Left> <Esc>vbi
inoremap <C-S-Right> <Esc>vwi
vnoremap <C-S-Left> b
vnoremap <C-S-Right> w
"" Indentation
nnoremap <Tab> >>
nnoremap <S-Tab> <<
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv
inoremap <S-Tab> <Esc><<i
"" Comment
nnoremap <C-/> :call NERDComment(0, "toggle")<CR>
vnoremap <C-/> :call NERDComment(0, "toggle")<CR>
inoremap <C-/> <Esc>:call NERDComment(0, "toggle")<CR>i