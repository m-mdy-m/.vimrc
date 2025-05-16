" NERDTree Configuration
let g:NERDTreeMinimalUI = 1
let g:NERDTreeShowBookmarks = 0
let g:NERDTreeShowLineNumbers = 0
let g:NERDTreeShowHidden = 1
let g:NERDTreeWinSize = 30
let g:NERDTreeStatusline = 0
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="-"
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

" NERDTree Colors
highlight NvimTreeNormal guibg=#101318 guifg=#D8DFEC
highlight NERDTreeDir guifg=#36C3FF gui=bold
highlight NERDTreeFile guifg=#7E9CBF
highlight NERDTreeDirSlash guifg=#00A1FF guibg=NONE
highlight NERDTreeCWD guifg=#00CCFF guibg=#050508 gui=bold,italic
highlight NERDTreeRoot guifg=#00CCFF guibg=NONE gui=italic
highlight NERDTreeOpenable guifg=#52B4FF guibg=NONE gui=bold
highlight NERDTreeClosable guifg=#007FD6 guibg=NONE gui=bold

" Status Bar in NERDTree
autocmd FileType nerdtree setlocal laststatus=0 showtabline=0

" Git Tools Configuration
" Gitgutter settings
let g:gitgutter_max_signs             = 5000
let g:gitgutter_map_keys              = 0
let g:gitgutter_diff_args             = '--ignore-space-at-eol'
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '~'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '‾'
let g:gitgutter_sign_modified_removed = '≃'


" Git Key Mappings
nmap <Leader>j <Plug>(GitGutterNextHunk)zz
nmap <Leader>k <Plug>(GitGutterPrevHunk)zz
nnoremap <silent> <C-g> :call <SID>ToggleGGPrev()<CR>zz
nnoremap <Leader>ga :GitGutterStageHunk<CR>
nnoremap <Leader>gu :GitGutterUndoHunk<CR>

" Fugitive settings
nnoremap <leader>gs :Git<CR>
nnoremap <leader>gc :Git commit<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gb :Gblame<CR>
nnoremap <leader>gl :Glog<CR>
nnoremap <leader>gp :Git push<CR>

" Git Grep
nnoremap <Leader>gg :call <SID>GrepWrapper('Gclog', '-i -G', '--')<CR>

" Session Management
let g:session_autosave  = 'no'
 let g:session_autoload  = 'no'
 let g:session_directory = '~/.vim/sessions/'
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


" GitGutter Colors
highlight GitGutterAdd guifg=#28FFBB guibg=#0A0A0F
highlight GitGutterChange guifg=#36C3FF guibg=#0A0A0F
highlight GitGutterDelete guifg=#FF4D8A guibg=#0A0A0F
highlight GitGutterChangeDelete guifg=#FFB540 guibg=#0A0A0F

" ----- Prettier Configuration -----
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
let g:prettier#config#print_width = 88
let g:prettier#config#tab_width = 2
let g:prettier#config#use_tabs = 'false'
let g:prettier#config#semi = 'true'
let g:prettier#config#single_quote = 'false'
let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#jsx_bracket_same_line = 'false'
let g:prettier#config#trailing_comma = 'none'
let g:prettier#config#arrow_parens = 'always'
let g:prettier#config#parser = 'babel'

" ----- Ack.vim Configuration -----
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>

" ----- Far.vim Configuration -----
let g:far#source = 'agnvim'
let g:far#file_mask_favorites = ['%', '**/*.*', '**/*.js', '**/*.py', '**/*.java', '**/*.css', '**/*.html', '**/*.vim', '**/*.cpp', '**/*.c', '**/*.h']
let g:far#window_width = 60
let g:far#enable_undo = 1
" FZF Settings
" ===================================
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.7 } }
let g:fzf_preview_window = ['right:50%', 'ctrl-/']
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }

" FZF Custom commands
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, {'options': ['--layout=reverse', '--info=inline', '--preview', 'cat {}']}, <bang>0)

" FZF Key mappings
nnoremap <C-p> :Files<CR>
nnoremap <C-f> :Rg<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>h :History<CR>
nnoremap <leader>t :BTags<CR>
nnoremap <leader>T :Tags<CR>

" CoC Settings
" ===================================
let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-json',
  \ 'coc-clangd',
  \ 'coc-snippets',
  \ 'coc-highlight',
  \ 'coc-git'
  \ ]

" CoC Key mappings
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <leader>rn <Plug>(coc-rename)

" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Use <c-space> to trigger completion
inoremap <silent><expr> <c-space> coc#refresh()

" Make <CR> auto-select the first completion item
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

" ALE Settings
" ===================================
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠'
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_fix_on_save = 1
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'typescript': ['eslint', 'tsserver'],
\   'python': ['flake8', 'pylint'],
\   'go': ['gofmt', 'golint'],
\   'rust': ['analyzer'],
\}
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier', 'eslint'],
\   'typescript': ['prettier', 'eslint'],
\   'python': ['black', 'isort'],
\   'go': ['gofmt', 'goimports'],
\   'rust': ['rustfmt'],
\}

" Tagbar Settings
" ===================================
let g:tagbar_autofocus = 1
let g:tagbar_compact = 1
let g:tagbar_sort = 0
let g:tagbar_width = 40
nnoremap <F8> :TagbarToggle<CR>

" Vista Settings
" ===================================
let g:vista_default_executive = 'coc'
let g:vista_sidebar_width = 40
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista#renderer#enable_icon = 0
nnoremap <F9> :Vista!!<CR>

" Undotree Settings
" ===================================
let g:undotree_WindowLayout = 2
let g:undotree_ShortIndicators = 1
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_DiffpanelHeight = 8
let g:undotree_SplitWidth = 24
nnoremap <leader>u :UndotreeToggle<CR>

" Indent Guide Settings
" ===================================
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#0E121A
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#0A0D14

" Rooter Settings
" ===================================
let g:rooter_patterns = ['.git', 'Makefile', 'package.json', 'setup.py', 'requirements.txt']
let g:rooter_silent_chdir = 1

" Git Messenger Settings
" ===================================
let g:git_messenger_include_diff = "current"
let g:git_messenger_always_into_popup = v:true
let g:git_messenger_max_popup_height = 30
nmap <leader>gm <Plug>(git-messenger)

" Conflict Marker Settings
" ===================================
let g:conflict_marker_begin = '^<<<<<<< .*$'
let g:conflict_marker_end   = '^>>>>>>> .*$'
let g:conflict_marker_enable_highlight = 1
let g:conflict_marker_enable_matchit = 1
highlight ConflictMarkerBegin guibg=#2f7366
highlight ConflictMarkerOurs guibg=#2e5049
highlight ConflictMarkerTheirs guibg=#344f69
highlight ConflictMarkerEnd guibg=#2f628e

" DadBod Settings
" ===================================
let g:db_ui_use_nerd_fonts = 0
let g:db_ui_show_database_icon = 0
let g:db_ui_force_echo_notifications = 1
let g:db_ui_win_position = 'left'
let g:db_ui_winwidth = 30
nnoremap <leader>db :DBUIToggle<CR>
nnoremap <leader>df :DBUIFindBuffer<CR>
nnoremap <leader>dr :DBUIRenameBuffer<CR>
nnoremap <leader>dl :DBUILastQueryInfo<CR>

" Colorscheme Tweaks
" ===================================
" ALE signs
highlight ALEErrorSign guifg=#FF4D8A guibg=#0A0A0F
highlight ALEWarningSign guifg=#FFB540 guibg=#0A0A0F
highlight ALEInfoSign guifg=#36C3FF guibg=#0A0A0F

" Vimspector
highlight debugPC guibg=#0E2E3D
highlight debugBreakpoint guifg=#FF0000 guibg=#141414

" VSCode-like indent guides
highlight IndentGuidesOdd guibg=#0E121A
highlight IndentGuidesEven guibg=#0A0D14

" VSCode-like search highlight
highlight Search guibg=#075985 guifg=#E2E8F0 gui=NONE
highlight IncSearch guibg=#0284C7 guifg=#FFFFFF gui=bold

" Ensure good visibility with our theme
highlight SignColumn guibg=#0B0E14
highlight LineNr guifg=#334155 guibg=#0B0E14
highlight CursorLineNr guifg=#38BDF8 guibg=#111827 gui=bold
