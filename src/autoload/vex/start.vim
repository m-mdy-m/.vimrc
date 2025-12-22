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
        setlocal nowrap
        
        call vex#start#DrawLogo()
        
        nnoremap <buffer> <silent> e :enew<CR>
        nnoremap <buffer> <silent> i :enew<CR>
        nnoremap <buffer> <silent> <Space> :enew<CR>
        nnoremap <buffer> <silent> o :call vex#start#OpenFile()<CR>
        nnoremap <buffer> <silent> f :Files<CR>
        nnoremap <buffer> <silent> n :Lexplore<CR>
        nnoremap <buffer> <silent> r :call vex#start#RecentFiles()<CR>
        nnoremap <buffer> <silent> c :VexInfo<CR>
        nnoremap <buffer> <silent> h :help vex<CR>
        nnoremap <buffer> <silent> q :quit<CR>
        nnoremap <buffer> <silent> <CR> :enew<CR>
    endif
endfunction

function! vex#start#DrawLogo()
    let l:header_padding = ((&columns - 50) / 2)
    let l:padding = repeat(' ', l:header_padding)
    
    let l:logo = [
        \ '',
        \ l:padding . '██╗   ██╗███████╗██╗  ██╗',
        \ l:padding . '██║   ██║██╔════╝╚██╗██╔╝',
        \ l:padding . '██║   ██║█████╗   ╚███╔╝ ',
        \ l:padding . '╚██╗ ██╔╝██╔══╝   ██╔██╗ ',
        \ l:padding . ' ╚████╔╝ ███████╗██╔╝ ██╗',
        \ l:padding . '  ╚═══╝  ╚══════╝╚═╝  ╚═╝',
        \ '',
        \ l:padding . 'Vim Ecosystem Extension',
        \ '',
        \ ]
    
    let l:info_padding = ((&columns - 40) / 2)
    let l:info_pad = repeat(' ', l:info_padding)
    
    let l:info = [
        \ l:info_pad . 'Version  ' . g:vex_version,
        \ '',
        \ l:info_pad . 'QUICK ACTIONS',
        \ '',
        \ l:info_pad . '  e, i, Space, Enter   New file',
        \ l:info_pad . '  o                    Open file',
        \ l:info_pad . '  f                    Find files (fuzzy)',
        \ l:info_pad . '  n                    File explorer',
        \ l:info_pad . '  r                    Recent files',
        \ l:info_pad . '  c                    Configuration info',
        \ l:info_pad . '  h                    Help',
        \ l:info_pad . '  q                    Quit',
        \ '',
        \ l:info_pad . 'Run :VexInfo for details',
        \ '',
        \ ]
    
    let l:content = l:logo + l:info
    
    call append(0, l:content)
    
    normal! gg
    
    execute 'syntax match VexLogo /██.*╝/'
    execute 'syntax match VexTitle /Vim Ecosystem Extension/'
    execute 'syntax match VexVersion /Version.*/'
    execute 'syntax match VexSectionHeader /QUICK ACTIONS/'
    execute 'syntax match VexKey /\(e\|i\|Space\|Enter\|o\|f\|n\|r\|c\|h\|q\)/'
    execute 'syntax match VexCommand /:VexInfo/'
    
    highlight VexLogo          guifg=#a78bfa  ctermfg=141  gui=bold
    highlight VexTitle         guifg=#e0e7ff  ctermfg=189  gui=bold
    highlight VexVersion       guifg=#94a3b8  ctermfg=103  gui=NONE
    highlight VexSectionHeader guifg=#c4b5fd  ctermfg=183  gui=bold
    highlight VexKey           guifg=#c4b5fd  ctermfg=183  gui=bold
    highlight VexCommand       guifg=#c4b5fd  ctermfg=183  gui=italic
endfunction

function! vex#start#OpenFile()
    let l:file = input('Open file: ', '', 'file')
    if !empty(l:file)
        execute 'edit' fnameescape(l:file)
    endif
endfunction

function! vex#start#RecentFiles()
    if exists(':History')
        History
    else
        browse oldfiles
    endif
endfunction