" VEX - Vim Ecosystem Extension
" Copyright (C) 2025 Genix

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 0
let g:netrw_altv = 1
let g:netrw_winsize = 25
let g:netrw_keepdir = 0
let g:netrw_localcopydircmd = 'cp -r'
let g:netrw_hide = 1
function! NetrwMapping()
    nmap <buffer> l <CR>
    nmap <buffer> L <CR>
    nmap <buffer> h -^
    nmap <buffer> H -^
    nmap <buffer> . gh
    nmap <buffer> P <C-w>z
    nmap <buffer> <nowait> o <CR>
    nmap <buffer> <nowait> O <CR>
    nmap <buffer> v v
    nmap <buffer> V v
    nmap <buffer> t t
    nmap <buffer> T t
    nmap <buffer> s s
    nmap <buffer> S s
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
    nmap <buffer> r <Plug>NetrwRefresh
    nmap <buffer> R <Plug>NetrwRefresh
    nmap <buffer> <C-h> gh
    nmap <buffer> <C-H> gh
    nmap <buffer> i I
    nmap <buffer> m %
    nmap <buffer> M d
    nmap <buffer> dd D
    nmap <buffer> DD D
    nmap <buffer> rr R
    nmap <buffer> RR R
    nmap <buffer> c c
    nmap <buffer> C c
    nmap <buffer> cd :cd %<CR>
    nmap <buffer> CD :cd %<CR>
    nmap <buffer> ? <F1>
    nmap <buffer> h? <F1>
    nmap <buffer> q :q<CR>
    nmap <buffer> Q :q<CR>
endfunction

augroup netrw_setup
    autocmd!
    autocmd FileType netrw call NetrwMapping()
    autocmd FileType netrw setlocal cursorline
augroup END

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
nnoremap <silent> <C-N> :call ToggleNetrw()<CR>
command! -nargs=+ Mkdir call system('mkdir -p ' . <q-args>)
command! -nargs=+ Touch call system('touch ' . <q-args>)
command! -nargs=+ Rmdir call system('rm -rf ' . <q-args>)
command! -nargs=1 MkdirP call system('mkdir -p ' . <q-args>)