" VEX - Vim Ecosystem Extension
" Copyright (C) 2025 Genix
" Main Configuration Entry Point
let g:vex_config_dir = fnamemodify(resolve(expand('<sfile>:p')), ':h')
let g:vex_root = fnamemodify(g:vex_config_dir, ':h')
call vex#version#LoadVersion()
call vex#error#SourceIfExists('load-configs.vim')
command! VexReload source $MYVIMRC
nnoremap <F5> :VexReload<CR>
command! VexInfo call vex#info#ShowVexInfo()