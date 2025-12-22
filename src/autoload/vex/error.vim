function! vex#error#SourceIfExists(file)
    let l:path = g:vex_config_dir . '/' . a:file
    if filereadable(l:path)
        try
            execute 'source ' . fnameescape(l:path)
        catch
            echohl ErrorMsg
            echom 'VEX: Error loading ' . a:file . ': ' . v:exception
            echohl None
        endtry
    else
        echohl WarningMsg
        echom 'VEX: Config file not found: ' . a:file
        echohl None
    endif
endfunction