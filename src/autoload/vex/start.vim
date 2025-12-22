function! vex#start#Show()
    if argc() == 0 && line2byte('$') == -1
        enew
        setlocal buftype=nofile
        setlocal bufhidden=wipe
        setlocal noswapfile
        setlocal nobuflisted
        setlocal nocursorline
        setlocal nocursorcolumn
        setlocal nonumber
        setlocal norelativenumber
        setlocal signcolumn=no
        setlocal colorcolumn=
        setlocal nomodeline
        
        call vex#start#DrawLogo()
        
        nnoremap <buffer> <silent> e :enew<CR>
        nnoremap <buffer> <silent> i :enew<CR>
        nnoremap <buffer> <silent> o :call vex#start#OpenFile()<CR>
        nnoremap <buffer> <silent> n :Lexplore<CR>
        nnoremap <buffer> <silent> q :quit<CR>
        nnoremap <buffer> <silent> <CR> :enew<CR>
    endif
endfunction

function! vex#start#DrawLogo()
    let l:logo = [
        \ '',
        \ '    ██╗   ██╗███████╗██╗  ██╗',
        \ '    ██║   ██║██╔════╝╚██╗██╔╝',
        \ '    ██║   ██║█████╗   ╚███╔╝ ',
        \ '    ╚██╗ ██╔╝██╔══╝   ██╔██╗ ',
        \ '     ╚████╔╝ ███████╗██╔╝ ██╗',
        \ '      ╚═══╝  ╚══════╝╚═╝  ╚═╝',
        \ '',
        \ '    Vim Ecosystem Extension',
        \ '',
        \ ]
    
    let l:info = [
        \ '    Version: ' . g:vex_version,
        \ '    Location: ' . g:vex_root,
        \ '',
        \ '    Commands:',
        \ '      e, i, <Enter>  New file',
        \ '      o              Open file',
        \ '      n              File explorer',
        \ '      q              Quit',
        \ '',
        \ '    :VexInfo for configuration details',
        \ '',
        \ ]
    
    let l:content = l:logo + l:info
    
    call append(0, l:content)
    
    normal! gg
    
    execute 'syntax match VexLogo /██.*╝/'
    execute 'syntax match VexTitle /Vim Ecosystem Extension/'
    execute 'syntax match VexLabel /Version:\|Location:\|Commands:/'
    execute 'syntax match VexKey /\(e\|i\|o\|n\|q\|<Enter>\)/'
    execute 'syntax match VexCommand /:VexInfo/'
    
    highlight VexLogo    guifg=#a78bfa  gui=bold
    highlight VexTitle   guifg=#e0e7ff  gui=bold
    highlight VexLabel   guifg=#94a3b8  gui=NONE
    highlight VexKey     guifg=#c4b5fd  gui=bold
    highlight VexCommand guifg=#c4b5fd  gui=italic
endfunction

function! vex#start#OpenFile()
    let l:file = input('Open file: ', '', 'file')
    if !empty(l:file)
        execute 'edit' fnameescape(l:file)
    endif
endfunction

augroup VexStart
    autocmd!
    autocmd VimEnter * call vex#start#Show()
augroup END