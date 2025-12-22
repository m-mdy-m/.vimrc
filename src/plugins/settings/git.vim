" VEX - Vim Ecosystem Extension
" Copyright (C) 2025 Genix

" GitGutter Advanced Settings
let g:gitgutter_enabled = 1
let g:gitgutter_max_signs = 500
let g:gitgutter_preview_win_floating = 1
let g:gitgutter_sign_priority = 10
let g:gitgutter_update_time = 100
let g:gitgutter_terminal_reports_focus = 0
let g:gitgutter_highlight_lines = 0
let g:gitgutter_highlight_linenrs = 1
let g:gitgutter_map_keys = 0

" Auto-update git status
augroup gitgutter
  autocmd!
  autocmd BufWritePost * GitGutter
  autocmd BufEnter * GitGutter
augroup END
