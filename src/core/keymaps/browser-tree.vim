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
let g:netrw_list_hide = netrw_gitignore#Hide()
let g:netrw_list_hide .= ',\(^\|\s\s\)\zs\.\S\+'
let g:netrw_hide = 1

function! NetrwMapping()
    nmap <buffer> l <CR>
    nmap <buffer> h -^
    nmap <buffer> . gh
    nmap <buffer> P <C-w>z
    
    nmap <buffer> <nowait> o <CR>
    nmap <buffer> v v
    nmap <buffer> t t
    nmap <buffer> s s
    
    nmap <buffer> ff %:w<CR>:buffer #<CR>
    nmap <buffer> fe R
    nmap <buffer> fc mc
    nmap <buffer> fC mtmc
    nmap <buffer> fx mm
    nmap <buffer> fX mtmm
    nmap <buffer> f; mx
    
    nmap <buffer> <TAB> mf
    nmap <buffer> <S-TAB> mF
    nmap <buffer> <Leader><TAB> mu
    
    nmap <buffer> <c-r> <Plug>NetrwRefresh
endfunction

augroup netrw_setup
    autocmd!
    autocmd FileType netrw call NetrwMapping()
    autocmd FileType netrw setlocal cursorline
augroup END

highlight netrwDir       guifg=#a78bfa  ctermfg=141  gui=bold
highlight netrwClassify  guifg=#52525b  ctermfg=240  gui=NONE
highlight netrwExe       guifg=#86efac  ctermfg=121  gui=bold
highlight netrwSymLink   guifg=#94a3b8  ctermfg=103  gui=italic

let g:NetrwIsOpen = 0

function! ToggleNetrw()
    if g:NetrwIsOpen
        let i = bufnr("$")
        while (i >= 1)
            if (getbufvar(i, "&filetype") == "netrw")
                silent exe "bwipeout " . i 
            endif
            let i-=1
        endwhile
        let g:NetrwIsOpen=0
    else
        let g:NetrwIsOpen=1
        silent Lexplore
    endif
endfunction

nnoremap <silent> <C-n> :call ToggleNetrw()<CR>