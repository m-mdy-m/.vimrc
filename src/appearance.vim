syntax enable
syntax on
set termguicolors
set laststatus=2
set noshowmode
set background=dark
set cursorline
set number
set scrolloff=8
set signcolumn=yes
set showmatch
set ruler

" Cursor settings
if exists('&guicursor')
    set guicursor=n-v-c:block-Cursor
    set guicursor+=i:ver25-Cursor
    set guicursor+=r-cr:hor20-Cursor
    set guicursor+=o:hor50-Cursor
    set guicursor+=a:blinkwait700-blinkoff400-blinkon250-Cursor
endif

" Terminal cursor settings
if &term =~ "xterm\\|rxvt"
    let &t_SI = "\<Esc>[6 q"
    let &t_SR = "\<Esc>[4 q"
    let &t_EI = "\<Esc>[2 q"
endif

" ===================================
" Core UI Colors - Enhanced Dark Modern Theme
" ===================================
highlight Normal           guibg=#0a0a0a  guifg=#d4d4d8
highlight NonText          guibg=#0f0f0f  guifg=#1a1a1a
highlight EndOfBuffer      guibg=#0a0a0a  guifg=#141414
highlight LineNr           guibg=#0a0a0a  guifg=#3f3f46
highlight CursorLineNr     guibg=#151518  guifg=#c084fc  gui=bold
highlight CursorLine       guibg=#151518  gui=NONE
highlight CursorColumn     guibg=#151518  gui=NONE
highlight ColorColumn      guibg=#18181b

highlight Cursor           guibg=#f4f4f5  guifg=#0a0a0a
highlight iCursor          guibg=#c084fc  guifg=#0a0a0a
highlight vCursor          guibg=#60a5fa  guifg=#0a0a0a
highlight lCursor          guibg=#f4f4f5  guifg=#0a0a0a

" ===================================
" Syntax Highlighting - Subtle Accent Colors
" ===================================
" Comments - Soft Green
highlight Comment          guifg=#6b8e6b  gui=italic
highlight SpecialComment   guifg=#7a9d7a  gui=italic,bold
highlight Todo             guibg=#1c1c1e  guifg=#8b9d8b  gui=bold,italic

" Variables and Identifiers - Light Gray with hint of blue
highlight Identifier       guifg=#a8b5c7  gui=NONE
highlight Function         guifg=#e0e7f5  gui=NONE

" Constants and Literals - Subtle warm tones
highlight Constant         guifg=#a8a0bf
highlight String           guifg=#8b9d8b  gui=NONE
highlight Character        guifg=#8b9d8b
highlight Number           guifg=#b4a8c8
highlight Boolean          guifg=#c8b8d8  gui=bold
highlight Float            guifg=#b4a8c8

" Keywords and Control Flow - Subtle purple/blue
highlight Statement        guifg=#c0c5db  gui=NONE
highlight Conditional      guifg=#b8bfdd  gui=NONE
highlight Repeat           guifg=#b8bfdd  gui=NONE
highlight Label            guifg=#d0d4e8
highlight Operator         guifg=#d8dce8  gui=NONE
highlight Keyword          guifg=#b8b4d8  gui=NONE
highlight Exception        guifg=#c0b8dd  gui=NONE

" Types and Structures - Soft cyan/blue
highlight Type             guifg=#e0ecf8  gui=NONE
highlight StorageClass     guifg=#c0d8e8
highlight Structure        guifg=#d8e8f8  gui=NONE
highlight Typedef          guifg=#e0ecf8

" Special Elements - Muted with hints
highlight Special          guifg=#8b8ba0
highlight SpecialChar      guifg=#a8a0bf
highlight Tag              guifg=#b8c0d8
highlight Delimiter        guifg=#d4d8e8
highlight Debug            guifg=#c0c8d8

" Preprocessor - Subtle purple
highlight PreProc          guifg=#a8a0bf
highlight PreCondit        guifg=#b8b0d0
highlight Include          guifg=#c0b8d8
highlight Define           guifg=#c8c0e0
highlight Macro            guifg=#a8a0bf

" ===================================
" Editor UI Elements - Modern Dark Design
" ===================================
" Status Line
highlight StatusLine       guibg=#1c1c1e  guifg=#e8ecf4  gui=NONE
highlight StatusLineNC     guibg=#0f0f0f  guifg=#6b7280  gui=NONE

" Selection and Search - Subtle blue highlight
highlight Visual           guibg=#2a2a3a  guifg=NONE
highlight Search           guibg=#3a4158  guifg=#e8f0f8  gui=NONE
highlight IncSearch        guibg=#4a5168  guifg=#ffffff  gui=bold

" Matching Parentheses - Subtle purple
highlight MatchParen       guibg=#3a3a50  guifg=#d8c8f8  gui=bold

" Popup Menu (Autocomplete)
highlight Pmenu            guibg=#18181b  guifg=#d4d4d8  gui=NONE
highlight PmenuSel         guibg=#2a2a3a  guifg=#e8ecf4  gui=bold
highlight PmenuSbar        guibg=#0f0f0f
highlight PmenuThumb       guibg=#4a4a60

" Messages and Errors
highlight Error            guibg=#0a0a0a  guifg=#ef6666  gui=undercurl,bold
highlight WarningMsg       guifg=#d8c888  gui=NONE
highlight ErrorMsg         guibg=#0a0a0a  guifg=#ef6666  gui=bold
highlight ModeMsg          guifg=#d4d8e0

" Tabs and Folds
highlight Folded           guibg=#151518  guifg=#7a808c  gui=italic
highlight FoldColumn       guibg=#0a0a0a  guifg=#3f3f46
highlight TabLine          guibg=#151518  guifg=#7a7a8a  gui=NONE
highlight TabLineFill      guibg=#0f0f0f
highlight TabLineSel       guibg=#0a0a0a  guifg=#d8dce8  gui=bold
highlight Title            guifg=#d0d8e8  gui=bold

" Diff View - Subtle colors
highlight DiffAdd          guibg=#0f1a19  guifg=#86d8ac
highlight DiffDelete       guibg=#1c0f0f  guifg=#ef6666
highlight DiffChange       guibg=#1a1a18  guifg=#e8c878
highlight DiffText         guibg=#28281a  guifg=#f8e8a8  gui=bold

" Window Separators - Very subtle
highlight WinSeparator     guibg=#0a0a0a  guifg=#1a1a20
highlight VertSplit        guibg=#0a0a0a  guifg=#1a1a20

" Sign Column
highlight SignColumn       guibg=#0a0a0a  guifg=#3f3f46

" Miscellaneous
highlight Underlined       guifg=#c0c8d8  gui=underline
highlight Directory        guifg=#b8c8e8  gui=bold
highlight Question         guifg=#c0c8d8
highlight MoreMsg          guifg=#c0c8d8
highlight WildMenu         guibg=#2a2a3a  guifg=#e8ecf4

" ===================================
" Plugin-specific highlights
" ===================================
" NERDTree Colors
highlight NERDTreeDir      guifg=#c0c8e8  gui=bold
highlight NERDTreeFile     guifg=#d8dce8
highlight NERDTreeExecFile guifg=#d8e8c8
highlight NERDTreeDirSlash guifg=#4a4a60
highlight NERDTreeOpenable guifg=#a8a0bf
highlight NERDTreeClosable guifg=#b8b0d8
highlight NERDTreeUp       guifg=#4a4a60
highlight NERDTreeCWD      guifg=#c0c8d8  guibg=#0f0f0f  gui=bold,italic
highlight NERDTreeHelp     guifg=#7a9d7a  gui=italic
highlight NERDTreeToggleOn guifg=#86d8ac
highlight NERDTreeToggleOff guifg=#ef6666

" Startify Colors
highlight StartifyBracket  guifg=#4a4a60
highlight StartifyFile     guifg=#c0c8d8
highlight StartifyFooter   guifg=#7a9d7a
highlight StartifyHeader   guifg=#b8b4d8  gui=bold
highlight StartifyNumber   guifg=#a8a0bf
highlight StartifyPath     guifg=#5a5a70
highlight StartifySection  guifg=#c0c8d8  gui=bold
highlight StartifySelect   guifg=#e0e8f8
highlight StartifySlash    guifg=#4a4a60
highlight StartifySpecial  guifg=#8b8ba0
highlight StartifyVar      guifg=#a8a8bf

" Airline/Status Line Colors
highlight User1            guibg=#1c1c1e  guifg=#e8ecf4  gui=bold
highlight User2            guibg=#151518  guifg=#c0c8d8
highlight User3            guibg=#ef6666  guifg=#ffffff  gui=bold
highlight User4            guibg=#86d8ac  guifg=#0a0a0a  gui=bold
highlight User5            guifg=#e8c878  gui=bold

" ===================================
" Git & Terminal Theme Colors
" ===================================
" GitGutter Signs
highlight GitGutterAdd          guifg=#86d8ac  guibg=#0a0a0a  gui=NONE
highlight GitGutterChange       guifg=#e8c878  guibg=#0a0a0a  gui=NONE  
highlight GitGutterDelete       guifg=#ef6666  guibg=#0a0a0a  gui=NONE
highlight GitGutterChangeDelete guifg=#f89066  guibg=#0a0a0a  gui=NONE

" GitGutter Line Numbers
highlight GitGutterAddLineNr          guifg=#86d8ac  guibg=#0a0a0a
highlight GitGutterChangeLineNr       guifg=#e8c878  guibg=#0a0a0a
highlight GitGutterDeleteLineNr       guifg=#ef6666  guibg=#0a0a0a
highlight GitGutterChangeDeleteLineNr guifg=#f89066  guibg=#0a0a0a

" Git Commit Browser (GV)
highlight GvAdd     guifg=#86d8ac  gui=bold
highlight GvDelete  guifg=#ef6666  gui=bold
highlight GvHash    guifg=#a8a0bf  gui=NONE
highlight GvAuthor  guifg=#c0c8d8  gui=italic
highlight GvDate    guifg=#7a808c  gui=NONE
highlight GvMessage guifg=#d4d8e0  gui=NONE

" FloaTerm Colors (Terminal)
highlight Floaterm         guibg=#0a0a0a  guifg=#d4d4d8
highlight FloatermBorder   guibg=#0a0a0a  guifg=#5a5a70
highlight FloatermNC       guibg=#0f0f0f  guifg=#7a7a8a

" Git Status in Status Line
highlight User6            guifg=#86d8ac  guibg=#1c1c1e  gui=bold
highlight User7            guifg=#e8c878  guibg=#1c1c1e  gui=bold  
highlight User8            guifg=#ef6666  guibg=#1c1c1e  gui=bold
highlight User9            guifg=#c0c8d8  guibg=#1c1c1e  gui=bold

" Git Messenger Popup
highlight gitmessengerPopupNormal    guibg=#151518  guifg=#d4d4d8
highlight gitmessengerEndOfBuffer    guibg=#151518  guifg=#151518
highlight gitmessengerHeader         guifg=#c0c8d8  gui=bold
highlight gitmessengerHash           guifg=#a8a0bf  gui=NONE
highlight gitmessengerHistory        guifg=#7a808c  gui=italic

" ===================================
" FZF Colors
" ===================================
let g:fzf_colors = {
  \ 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment']
  \ }
