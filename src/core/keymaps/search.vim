" VEX - Vim Ecosystem Extension
" Copyright (C) 2025 Genix

"" Find
nnoremap <C-f> /
inoremap <C-f> <Esc>/
"" Find next/previous
nnoremap <F3> n
nnoremap <S-F3> N
inoremap <F3> <Esc>ni
inoremap <S-F3> <Esc>Ni
"" Find and replace
nnoremap <C-h> :%s///gc<Left><Left><Left><Left>
inoremap <C-h> <Esc>:%s///gc<Left><Left><Left><Left>
"" Find in selection
vnoremap <C-f> <Esc>/\%V
