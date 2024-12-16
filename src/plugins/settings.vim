" ========================
" File Explorer: NERDTree Settings
" ========================
let g:NERDTreeShowHidden=1              " Show hidden files in NERDTree
let g:NERDTreeMinimalUI=1               " Minimal UI for NERDTree
let g:NERDTreeShowLineNumbers=0         " Remove line numbers in NERDTree
let g:NERDTreeDirArrowExpandable="+"     " Use plus/minus for expandable directories
let g:NERDTreeDirArrowCollapsible="-"    " Use plus/minus for collapsible directories
let g:NERDTreeShowFullPath=0            " Do not show full path in NERDTree
let g:NERDTreeWinSize=25               " Adjust the width of the NERDTree window

" Remove the full path section from the NERDTree file browser
let g:NERDTreeRootPath=''               " Remove the root path like /home/mahdi/Projects/vim/

" Key mappings for NERDTree
autocmd vimenter * if !argc() | NERDTree | wincmd p | endif " Open NERDTree at startup if no files are specified
nnoremap <F2> :NERDTreeToggle<CR>        " Toggle NERDTree with F2
nnoremap <F3> :NERDTreeFocus<CR>         " Focus NERDTree with F3
nnoremap <leader>n :NERDTreeFind<CR>     " Find current file in NERDTree

" Remove file path section from the NERDTree file browser
let g:NERDTreeShowHidden=1             " Show hidden files (dotfiles)

" Remove file path address display in top-left
let g:NERDTreeShowRoot=0               " Disable showing the full path at the top-left

" Change the color of the path text to avoid yellow
highlight NERDTreeDir ctermfg=8 guifg=#616E88  " Dim the directory color
highlight NERDTreeFile ctermfg=8 guifg=#B2B8B5  " Dim the file color
" ========================
" Prettify Code
" ========================
" Format on save
let g:prettier#autoformat = 1

" Ensure Prettier runs for all supported languages (e.g., C, JavaScript, Go, etc.)
autocmd FileType * let g:prettier#autoformat = 1  " Ensure autoformatting on all file types

" You can also add a mapping to manually trigger Prettier formatting:
nnoremap <leader>p :Prettier<CR>  " Press <leader>p to manually run Prettier
" Lightline configuration
let g:lightline = {
\ 'colorscheme': 'wombat',
\ 'active': {
\   'left': [ ['mode', 'paste'], ['gitbranch', 'readonly', 'filename', 'modified'] ]
\ },
\ 'component_function': {
\   'gitbranch': 'FugitiveHead',
\ }
\}

