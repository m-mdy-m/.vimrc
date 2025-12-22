" VEX - Vim Ecosystem Extension
" Copyright (C) 2025 Genix
let g:airline_theme = 'minimalist'
let g:airline_powerline_fonts = 0
let g:airline_symbols_ascii = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#format = 2
let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#hunks#non_zero_only = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#syntastic#enabled = 0
let g:airline#extensions#ale#enabled = 0
let g:airline_section_b = '%{getcwd()}'
let g:airline_section_c = '%f %m'
let g:airline_section_x = '%{&filetype}'
let g:airline_section_y = '%{&fileencoding?&fileencoding:&encoding}'
let g:airline_section_z = '%l:%c %p%%'
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ''
let g:airline_right_alt_sep = '|'
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty = '*'
let g:airline_symbols.crypt = ''
let g:airline_symbols.paste = 'PASTE'
let g:airline_symbols.spell = 'SPELL'
let g:airline_symbols.notexists = '?'
let g:airline_symbols.whitespace = '!'
let g:airline_mode_map = {
    \ '__'     : '-',
    \ 'c'      : 'C',
    \ 'i'      : 'I',
    \ 'ic'     : 'I',
    \ 'ix'     : 'I',
    \ 'n'      : 'N',
    \ 'multi'  : 'M',
    \ 'ni'     : 'N',
    \ 'no'     : 'N',
    \ 'R'      : 'R',
    \ 'Rv'     : 'R',
    \ 's'      : 'S',
    \ 'S'      : 'S',
    \ 't'      : 'T',
    \ 'v'      : 'V',
    \ 'V'      : 'V',
    \ }

function! AirlineInit()
    let g:airline_section_a = airline#section#create(['mode'])
    let g:airline_section_b = airline#section#create(['branch', 'hunks'])
    let g:airline_section_c = airline#section#create(['%<', 'file', 'readonly'])
    let g:airline_section_x = airline#section#create(['filetype'])
    let g:airline_section_y = airline#section#create(['%{&fileencoding}', '[%{&fileformat}]'])
    let g:airline_section_z = airline#section#create(['%3p%%', 'linenr', 'maxlinenr', ':%3v'])
endfunction

autocmd User AirlineAfterInit call AirlineInit()

let g:airline#parts#ffenc#skip_expected_string = 'utf-8[unix]'
