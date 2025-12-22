" VEX - Vim Ecosystem Extension
" Copyright (C) 2025 Genix

"" Split window
nnoremap <C-\> :vsplit<CR>
nnoremap <C-S-\> :split<CR>
"" Close current window/tab
nnoremap <C-S-w> :close<CR>
"" Navigate between splits
nnoremap <C-S-h> <C-w>h
nnoremap <C-S-j> <C-w>j
nnoremap <C-S-k> <C-w>k
nnoremap <C-S-l> <C-w>l
"" Resize
nnoremap <C-S-Left> :vertical resize -5<CR>
nnoremap <C-S-Right> :vertical resize +5<CR>
nnoremap <C-S-Up> :resize -5<CR>
nnoremap <C-S-Down> :resize +5<CR>