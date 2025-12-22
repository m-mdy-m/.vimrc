" VEX - Vim Ecosystem Extension
" Copyright (C) 2025 Genix
" Main Configuration Entry Point
if exists('<sfile>')
    let g:vex_config_dir = fnamemodify(resolve(expand('<sfile>:p')), ':h')
else
    let g:vex_config_dir = fnamemodify(resolve(expand('$MYVIMRC')), ':h')
endif

let g:vex_root = fnamemodify(g:vex_config_dir, ':h')
if index(split(&runtimepath, ','), g:vex_config_dir) < 0
    execute 'set runtimepath^=' . g:vex_config_dir
endif
call vex#version#LoadVersion()
call vex#error#SourceIfExists('load-configs.vim')
augroup VexStart
    autocmd!
    autocmd VimEnter * nested call vex#start#Show()
augroup END
command! VexReload source $MYVIMRC
nnoremap <F5> :VexReload<CR>
command! VexInfo call vex#info#ShowVexInfo()