function vex#version#LoadVersion()
    let l:version_file = g:vex_root . '/VERSION'
    if filereadable(l:version_file)
        let g:vex_version = readfile(l:version_file)[0]
    else
        let g:vex_version = 'dev'
    endif
endfunction