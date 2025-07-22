" NERDTree Configuration
let g:NERDTreeMinimalUI = 1
let g:NERDTreeShowBookmarks = 0
let g:NERDTreeShowLineNumbers = 0
let g:NERDTreeShowHidden = 1
let g:NERDTreeWinSize = 30
let g:NERDTreeStatusline = 0
let g:NERDTreeDirArrowExpandable="▸"
let g:NERDTreeDirArrowCollapsible="▾"
let g:NERDTreeShowFullPath=0
let g:NERDTreeShowRoot=0
let g:NERDTreeChDirMode=2

" Auto open NERDTree when vim starts up on a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" Close vim if NERDTree is the only window left
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" NERDTree Key Mappings
autocmd vimenter * if !argc() | NERDTree | wincmd p | endif
nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <F3> :NERDTreeFocus<CR>
nnoremap <leader>n :NERDTreeFind<CR>
nnoremap <C-e> :NERDTreeToggle<CR>
inoremap <C-e> <Esc>:NERDTreeToggle<CR>
nnoremap <leader>e :NERDTreeFocus<CR>
nnoremap <leader>f :NERDTreeFind<CR>

" Status Bar in NERDTree
autocmd FileType nerdtree setlocal laststatus=0 showtabline=0

" ----- Startify Configuration -----
let g:startify_session_dir = '~/.vim/sessions'

" Configure display lists
let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Recent Files']            },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']               },
          \ { 'type': 'commands',  'header': ['   Commands']                },
          \ ]

" Define bookmarks for quick access
let g:startify_bookmarks = [
          \ { 'v': '~/.vimrc' },
          \ { 'z': '~/.zshrc' },
          \ { 'c': '~/.config' },
          \ { 'p': '~/projects' },
          \ ]

" Session handling
let g:startify_session_autoload = 1
let g:startify_session_persistence = 1
let g:startify_session_delete_buffers = 1
let g:startify_session_sort = 1

" Appearance settings
let g:startify_fortune_use_unicode = 1
let g:startify_padding_left = 3
let g:startify_change_to_dir = 1
let g:startify_enable_special = 0

" Custom file path formatting to show only the current and parent directory
function! s:ShortenPath(path)
    let path = substitute(a:path, $HOME, '~', '')
    let parts = split(path, '/')
    if len(parts) <= 2
        return path
    else
        return join(parts[-2:], '/')
    endif
endfunction

let g:startify_relative_path = 0
let g:startify_transformations = [['.*', function('s:ShortenPath')]]


" Custom header with your ASCII art
let g:ascii = [
    \ '                                        ',
    \ '                                        ',
    \ '              \\     /                  ',
    \ '               \\   /                   ',
    \ '                \\ /                    ',
    \ '                 V                      ',
    \ '                 vex                     ',
    \ '                                        ',
    \ '                                        ',
    \ ]


" Custom footer
let g:startify_custom_footer = [
    \ '                                        ',
    \ '    ' . strftime('%Y-%m-%d %H:%M'),
    \ '                                        ',
    \ ]
function! s:center(lines) abort
    let max_width = max(map(copy(a:lines), 'strwidth(v:val)'))
    let screen_width = winwidth(0)


    let shift_left = (screen_width - max_width) / 3

    let centered = []

    for line in a:lines
        let padding = repeat(' ', shift_left)
        call add(centered, padding . line)
    endfor

    return centered
endfunction

let g:startify_custom_header = s:center(g:ascii) + startify#fortune#quote()

" Startify colors matching our midnight_azure theme
highlight StartifyHeader guifg=#36C3FF
highlight StartifyFile guifg=#00A1FF gui=bold
highlight StartifyPath guifg=#3D5573
highlight StartifySlash guifg=#007FD6
highlight StartifyBracket guifg=#004F8A
highlight StartifyNumber guifg=#52B4FF
highlight StartifySelect guifg=#FFFFFF guibg=#004F8A
highlight StartifySpecial guifg=#95ECFF
highlight StartifyFooter guifg=#36C3FF

" Improve NERDTree integration
let g:startify_skiplist = [
    \ 'COMMIT_EDITMSG',
    \ 'bundle/.*/doc',
    \ '/data/repo/neovim/runtime/doc',
    \ '/Users/mhi/local/vim/share/vim/vim74/doc',
    \ ]

" Custom commands
let g:startify_commands = [
    \ {'u': ['Update Plugins', ':PlugUpdate']},
    \ {'c': ['Clean Plugins', ':PlugClean']},
    \ {'s': ['Save Session', ':SSave']},
    \ {'q': ['Quit Vim', ':qa']},
    \ ]

" Auto-update sessions
augroup startify_auto_session
    autocmd!
    autocmd VimLeavePre * if exists('g:this_obsession') && v:dying == 0 | exe 'SSave! ' . g:this_obsession | endif
augroup END

" Session Management
let g:session_autosave  = 'no'
let g:session_autoload  = 'no'
let g:session_directory = '~/.vim/sessions/'

" Airline Configuration (if using airline)
if exists('g:loaded_airline')
    let g:airline_theme = 'dark'
    let g:airline_powerline_fonts = 1
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#formatter = 'unique_tail'
    let g:airline_left_sep = ''
    let g:airline_right_sep = ''
    let g:airline_left_alt_sep = '│'
    let g:airline_right_alt_sep = '│'
endif

" Multiple Cursors Configuration
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_start_word_key      = '<C-d>'
let g:multi_cursor_select_all_word_key = '<A-d>'
let g:multi_cursor_start_key           = 'g<C-d>'
let g:multi_cursor_select_all_key      = 'g<A-d>'
let g:multi_cursor_next_key            = '<C-d>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

" Auto-pairs Configuration
let g:AutoPairsFlyCursor = 1
let g:AutoPairsShortcutBackInsert = '<M-b>'

" Syntastic Configuration
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_signs = 1
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'


" ===================================
" Git Configuration - Advanced
" ===================================

" GitGutter Advanced Settings
let g:gitgutter_enabled = 1
let g:gitgutter_max_signs = 500
let g:gitgutter_preview_win_floating = 1
let g:gitgutter_sign_priority = 10
let g:gitgutter_update_time = 100
let g:gitgutter_terminal_reports_focus = 0
let g:gitgutter_highlight_lines = 0
let g:gitgutter_highlight_linenrs = 1
let g:gitgutter_map_keys = 0

" Custom Git Status Symbols (ASCII Art - Clean & Minimal)
let g:gitgutter_sign_added              = '▌'
let g:gitgutter_sign_modified           = '▐'
let g:gitgutter_sign_removed            = '▂'
let g:gitgutter_sign_removed_first_line = '▔'
let g:gitgutter_sign_modified_removed   = '▞'

" Git Messenger Configuration
let g:git_messenger_no_default_mappings = v:true
let g:git_messenger_floating_win_opts = { 'border': 'single' }
let g:git_messenger_popup_content_margins = v:false
let g:git_messenger_always_into_popup = v:true
let g:git_messenger_include_diff = v:true
let g:git_messenger_max_popup_height = 15
let g:git_messenger_max_popup_width = 80

" GV (Git Viewer) Settings
let g:Gitv_OpenHorizontal = 1
let g:Gitv_WipeAllOnClose = 1
let g:Gitv_DoNotMapCtrlKey = 1

" Merge Tool Configuration
let g:mergetool_layout = 'mr'
let g:mergetool_prefer_revision = 'local'

" ===================================
" Terminal Integration - FloaTerm
" ===================================

" FloaTerm Configuration
let g:floaterm_keymap_new    = '<F7>'
let g:floaterm_keymap_prev   = '<F8>'
let g:floaterm_keymap_next   = '<F9>'
let g:floaterm_keymap_toggle = '<C-S-t>'
let g:floaterm_keymap_kill   = '<F12>'

" Terminal Appearance (Matching Your Dark Theme)
let g:floaterm_position = 'center'
let g:floaterm_width = 0.8
let g:floaterm_height = 0.7
let g:floaterm_winblend = 0
let g:floaterm_borderchars = ['─', '│', '─', '│', '╭', '╮', '╯', '╰']
let g:floaterm_title = ' Terminal $1/$2 '
let g:floaterm_autoclose = 2
let g:floaterm_gitcommit = 'floaterm'
let g:floaterm_opener = 'edit'

" Custom Git Terminal Commands
let g:floaterm_gitcommit = 'split'
command! GitStatus FloatermNew --height=0.6 --width=0.8 --wintype=float --name=git --position=center --autoclose=2 git status
command! GitLog FloatermNew --height=0.8 --width=0.9 --wintype=float --name=gitlog --position=center git log --oneline --graph --decorate --all
command! GitDiff FloatermNew --height=0.8 --width=0.9 --wintype=float --name=gitdiff --position=center git diff
command! GitAdd FloatermNew --height=0.4 --width=0.6 --wintype=float --name=gitadd --position=center git add .
command! GitCommit FloatermNew --height=0.5 --width=0.7 --wintype=float --name=gitcommit --position=center --autoclose=0

" ===================================
" Git Status Line Integration
" ===================================

" Function to get git branch
function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

" Function to get git status
function! GitStatus()
  let [a,m,r] = GitGutterGetHunkSummary()
  return printf(' %s%s%s', a > 0 ? '+'.a : '', m > 0 ? '~'.m : '', r > 0 ? '-'.r : '')
endfunction

" Auto-update git status
augroup gitgutter
  autocmd!
  autocmd BufWritePost * GitGutter
  autocmd BufEnter * GitGutter
augroup END
