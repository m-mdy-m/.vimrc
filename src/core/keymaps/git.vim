" VEX - Vim Ecosystem Extension
" Copyright (C) 2025 Genix

" Git Status
nnoremap <leader>gs :Git<CR>
nnoremap <leader>gS :Git<CR>
nnoremap <leader>gl :Git log<CR>
nnoremap <leader>gL :Git log<CR>
nnoremap <leader>gd :Gdiffsplit<CR>
nnoremap <leader>gD :Gdiffsplit<CR>
nnoremap <leader>gb :Git blame<CR>
nnoremap <leader>gB :Git blame<CR>

" Git Operations
nnoremap <leader>ga :Git add %<CR>
nnoremap <leader>gA :Git add %<CR>
nnoremap <leader>ga. :Git add .<CR>
nnoremap <leader>gaf :Git add %<CR>
nnoremap <leader>gc :Git commit<CR>
nnoremap <leader>gC :Git commit<CR>
nnoremap <leader>gp :Git push<CR>
nnoremap <leader>gP :Git pull<CR>

" Git Branch Management
nnoremap <leader>gco :Git checkout 
nnoremap <leader>gCO :Git checkout 
nnoremap <leader>gnb :Git checkout -b 
nnoremap <leader>gNB :Git checkout -b 
nnoremap <leader>gm :Git merge<CR>
nnoremap <leader>gM :Git merge<CR>

" Git Stash
nnoremap <leader>gst :Git stash<CR>
nnoremap <leader>gST :Git stash<CR>
nnoremap <leader>gsp :Git stash pop<CR>
nnoremap <leader>gSP :Git stash pop<CR>

" Git Remote
nnoremap <leader>gf :Git fetch<CR>
nnoremap <leader>gF :Git fetch<CR>

" GitGutter Navigation
nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)
nmap ]H <Plug>(GitGutterNextHunk)
nmap [H <Plug>(GitGutterPrevHunk)

" GitGutter Actions
nmap <leader>hp <Plug>(GitGutterPreviewHunk)
nmap <leader>hP <Plug>(GitGutterPreviewHunk)
nmap <leader>hs <Plug>(GitGutterStageHunk)
nmap <leader>hS <Plug>(GitGutterStageHunk)
nmap <leader>hu <Plug>(GitGutterUndoHunk)
nmap <leader>hU <Plug>(GitGutterUndoHunk)

" GitGutter Toggle
nnoremap <leader>ht :GitGutterToggle<CR>
nnoremap <leader>hT :GitGutterToggle<CR>
nnoremap <leader>hn :GitGutterLineNrHighlightsToggle<CR>
nnoremap <leader>hN :GitGutterLineNrHighlightsToggle<CR>

" Text objects for hunks
omap ih <Plug>(GitGutterTextObjectInnerPending)
omap ah <Plug>(GitGutterTextObjectOuterPending)
xmap ih <Plug>(GitGutterTextObjectInnerVisual)
xmap ah <Plug>(GitGutterTextObjectOuterVisual)