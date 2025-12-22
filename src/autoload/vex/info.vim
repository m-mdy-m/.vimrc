function! vex#info#ShowVexInfo()
    echo 'VEX Configuration'
    echo '================='
    echo 'Version: ' . g:vex_version
    echo 'Root: ' . g:vex_root
    echo 'Config: ' . g:vex_config_dir
    echo 'Plugins: ' . (exists('g:plugs') ? len(g:plugs) : 'Not loaded')
    echo 'Vim version: ' . v:version
endfunction