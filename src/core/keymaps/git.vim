" VEX - Vim Ecosystem Extension
" Copyright (C) 2025 Genix

"" Git Status & Info
nnoremap <leader>gs :GitStatus<CR>
nnoremap <leader>gl :GitLog<CR>
nnoremap <leader>gd :GitDiff<CR>

"" Git Operations
nnoremap <leader>ga :GitAdd<CR>
nnoremap <leader>ga. :FloatermNew git add .<CR>
nnoremap <leader>gaf :FloatermNew git add %<CR>
nnoremap <leader>gc :GitCommit<CR>
nnoremap <leader>gp :FloatermNew git push<CR>
nnoremap <leader>gP :FloatermNew git pull<CR>

"" Git Branch Management
nnoremap <leader>gco :FloatermNew git checkout 
nnoremap <leader>gnb :FloatermNew git checkout -b 

"" Git Viewer 
nnoremap <leader>gv :GV<CR>
nnoremap <leader>gV :GV!<CR>
nnoremap <leader>gvf :GV?<CR>