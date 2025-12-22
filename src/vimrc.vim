" VEX - Vim Ecosystem Extension
" Copyright (C) 2025 Genix
" Main Configuration Entry Point
let g:vex_config_dir = fnamemodify(resolve(expand('<sfile>:p')), ':h')
let g:vex_root = fnamemodify(g:vex_config_dir, ':h')

call vex#error#SourceIfExists('load-configs.vim')
command! VexReload source $MYVIMRC
nnoremap <F5> :VexReload<CR>
command! VexInfo call s:ShowVexInfo()
function! s:ShowVexInfo()
    echo 'VEX Configuration'
    echo '================='
    echo 'Root: ' . g:vex_root
    echo 'Config: ' . g:vex_config_dir
    echo 'Plugins: ' . (exists('g:plugs') ? len(g:plugs) : 'Not loaded')
    echo 'Vim version: ' . v:version
    """ echo 'Vex version: ' . g:vex_version // not handled
endfunction