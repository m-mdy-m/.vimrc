" VEX - Vim Ecosystem Extension
" Copyright (C) 2025 Genix
" For Browser Tree We Use 'netrw' 
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 0
let g:netrw_altv = 1
let g:netrw_winsize = 25
let g:netrw_keepdir = 0
let g:netrw_localcopydircmd = 'cp -r'
let g:netrw_localrmdir = 'rm -r'
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'
let g:netrw_hide = 1
let g:netrw_cursor = 5
let g:netrw_preview = 1
let g:netrw_alto = 0
let g:netrw_usetab = 1
let g:netrw_silent = 1
let g:netrw_special_syntax = 1
let g:netrw_bufsettings = 'noma nomod nu nowrap ro nobl'

function! NetrwMapping()
    nnoremap <buffer> <C-r> :e .<CR>
    nnoremap <buffer> <C-h> :call NetrwToggleHidden()<CR>
    
    nnoremap <buffer> l <CR>
    nnoremap <buffer> h -
    nnoremap <buffer> <CR> <CR>
    nnoremap <buffer> <BS> -
    
    nnoremap <buffer> cd :call NetrwSetCwd()<CR>
    nnoremap <buffer> C :call NetrwChangeCwd()<CR>
    nnoremap <buffer> u -
    
    nnoremap <buffer> o :call NetrwOpenFile('edit')<CR>
    nnoremap <buffer> v :call NetrwOpenFile('vsplit')<CR>
    nnoremap <buffer> s :call NetrwOpenFile('split')<CR>
    nnoremap <buffer> t :call NetrwOpenFile('tabedit')<CR>
    
    nnoremap <buffer> r :call NetrwRefresh()<CR>
    nnoremap <buffer> i :call NetrwToggleStyle()<CR>
    
    nnoremap <buffer> m :call NetrwCreateMark()<CR>
    nnoremap <buffer> mm :call NetrwMark()<CR>
    nnoremap <buffer> mu :call NetrwUnmark()<CR>
    
    nnoremap <buffer> ? :call NetrwHelp()<CR>
    nnoremap <buffer> q :call NetrwClose()<CR>
    
    setlocal cursorline
endfunction

function! NetrwToggleHidden()
    if g:netrw_hide == 0
        let g:netrw_hide = 1
    else
        let g:netrw_hide = 0
    endif
    call NetrwRefresh()
endfunction

function! NetrwSetCwd()
    let l:file = expand('%:p:h')
    execute 'cd' fnameescape(l:file)
    echo 'CWD: ' . l:file
endfunction

function! NetrwChangeCwd()
    let l:dir = input('Change to: ', '', 'file')
    if !empty(l:dir)
        execute 'cd' fnameescape(l:dir)
        execute 'e' fnameescape(l:dir)
    endif
endfunction

function! NetrwOpenFile(cmd)
    let l:file = expand('<cfile>')
    if !empty(l:file)
        execute a:cmd fnameescape(l:file)
    endif
endfunction

function! NetrwRefresh()
    normal! <Plug>NetrwRefresh
    redraw!
endfunction

function! NetrwToggleStyle()
    if g:netrw_liststyle == 3
        let g:netrw_liststyle = 1
    else
        let g:netrw_liststyle = 3
    endif
    call NetrwRefresh()
endfunction

function! NetrwCreateMark()
    let l:name = input('New file/directory: ')
    if !empty(l:name)
        if l:name =~ '/$'
            call mkdir(l:name, 'p')
        else
            call writefile([], l:name)
        endif
        call NetrwRefresh()
    endif
endfunction

function! NetrwMark()
    normal! mf
    echo 'Marked'
endfunction

function! NetrwUnmark()
    normal! mu
    echo 'Unmarked'
endfunction

function! NetrwHelp()
    echo 'netrw: <CR>=open, h=up, l=down, o=edit, v=vsplit, s=split, t=tab, r=refresh, cd=set_cwd, C=change, i=style, m=mark, q=quit'
endfunction

function! NetrwClose()
    if winnr('$') > 1
        close
    else
        bdelete
    endif
endfunction

augroup netrw_mapping
    autocmd!
    autocmd FileType netrw call NetrwMapping()
augroup END

highlight netrwDir       guifg=#a78bfa  gui=bold
highlight netrwClassify  guifg=#71717a  gui=NONE
highlight netrwExe       guifg=#86efac  gui=bold
highlight netrwSymLink   guifg=#94a3b8  gui=italic
highlight netrwTreeBar   guifg=#52525b  gui=NONE

nnoremap <silent> <C-n> :call ToggleNetrw()<CR>

function! ToggleNetrw()
    if exists('t:netrw_lexbuf') && bufexists(t:netrw_lexbuf)
        if bufwinnr(t:netrw_lexbuf) != -1
            execute bufwinnr(t:netrw_lexbuf) . 'wincmd w'
            close
        else
            execute 'Lexplore' | execute 'vertical resize 30'
        endif
    else
        execute 'Lexplore' | execute 'vertical resize 30'
        let t:netrw_lexbuf = bufnr('%')
    endif
endfunction