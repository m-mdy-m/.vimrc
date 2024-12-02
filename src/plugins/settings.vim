" ========================
" File Explorer: NERDTree Settings
" ========================
let g:NERDTreeShowHidden=1            " Show hidden files in NERDTree
let g:NERDTreeMinimalUI=1             " Minimal UI for NERDTree
autocmd vimenter * if !argc() | NERDTree | wincmd p | endif " Open NERDTree at startup if no files are specified
nnoremap <F2> :NERDTreeToggle<CR>      " Toggle NERDTree with F2
nnoremap <F3> :NERDTreeFocus<CR>       " Focus NERDTree with F3
nnoremap <leader>n :NERDTreeFind<CR>   " Find current file in NERDTree
