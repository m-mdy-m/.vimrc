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
set clipboard=unnamedplus

" ===================================
" Core UI Colors
" ===================================
highlight Normal           guibg=#0f0f0f  guifg=#c0c0c0
highlight NonText          guibg=#141414  guifg=#2a2a2a
highlight EndOfBuffer      guibg=#0f0f0f  guifg=#1a1a1a
highlight LineNr           guibg=#0f0f0f  guifg=#4a4a4a
highlight CursorLineNr     guibg=#1a1a1a  guifg=#808080  gui=bold
highlight CursorLine       guibg=#1a1a1a
highlight CursorColumn     guibg=#1a1a1a
highlight ColorColumn      guibg=#1f1f1f

" ===================================
" Syntax Highlighting
" ===================================
" Comments - Gray/Green
highlight Comment          guifg=#6A9955  gui=italic
highlight SpecialComment   guifg=#6A9955  gui=italic,bold
highlight Todo             guibg=#1a1a1a  guifg=#888888  gui=bold,italic

" Variables and Identifiers - Muted Light Gray
highlight Identifier       guifg=#a0a0a0  gui=NONE
highlight Function         guifg=#b8b8b8  gui=NONE

" Constants and Literals - Subtle Gray Tones
highlight Constant         guifg=#909090
highlight String           guifg=#888888  gui=NONE
highlight Character        guifg=#888888
highlight Number           guifg=#909090
highlight Boolean          guifg=#999999  gui=bold
highlight Float            guifg=#909090

" Keywords and Control Flow - Slightly Brighter Gray
highlight Statement        guifg=#b0b0b0  gui=NONE
highlight Conditional      guifg=#a8a8a8  gui=NONE
highlight Repeat           guifg=#a8a8a8  gui=NONE
highlight Label            guifg=#b0b0b0
highlight Operator         guifg=#c0c0c0  gui=NONE
highlight Keyword          guifg=#b0b0b0  gui=NONE
highlight Exception        guifg=#a8a8a8  gui=NONE

" Types and Structures - Light Gray
highlight Type             guifg=#c8c8c8  gui=NONE
highlight StorageClass     guifg=#b0b0b0
highlight Structure        guifg=#c8c8c8  gui=NONE
highlight Typedef          guifg=#c8c8c8

" Special Elements - Muted
highlight Special          guifg=#888888
highlight SpecialChar      guifg=#999999
highlight Tag              guifg=#aaaaaa
highlight Delimiter        guifg=#c0c0c0
highlight Debug            guifg=#a8a8a8

" Preprocessor - Subtle
highlight PreProc          guifg=#999999
highlight PreCondit        guifg=#a8a8a8
highlight Include          guifg=#a8a8a8
highlight Define           guifg=#b0b0b0
highlight Macro            guifg=#999999

" ===================================
" Editor UI Elements
" ===================================
" Status Line - Dark Gray
highlight StatusLine       guibg=#2a2a2a  guifg=#d0d0d0  gui=NONE
highlight StatusLineNC     guibg=#1a1a1a  guifg=#808080  gui=NONE

" Selection and Search - Subtle
highlight Visual           guibg=#2a2a2a  guifg=NONE
highlight Search           guibg=#3a3a3a  guifg=#d0d0d0
highlight IncSearch        guibg=#4a4a4a  guifg=#ffffff  gui=bold

" Matching Parentheses - Subtle
highlight MatchParen       guibg=#333333  guifg=#ffffff  gui=bold

" Popup Menu (Autocomplete) - Dark
highlight Pmenu            guibg=#1a1a1a  guifg=#b0b0b0
highlight PmenuSel         guibg=#333333  guifg=#ffffff  gui=bold
highlight PmenuSbar        guibg=#1a1a1a
highlight PmenuThumb       guibg=#404040

" Messages and Errors - Muted
highlight Error            guibg=#0f0f0f  guifg=#cc6666  gui=undercurl,bold
highlight WarningMsg       guifg=#999999  gui=NONE
highlight ErrorMsg         guibg=#0f0f0f  guifg=#cc6666  gui=bold
highlight ModeMsg          guifg=#c0c0c0

" Tabs and Folds - Dark
highlight Folded           guibg=#1a1a1a  guifg=#666666  gui=italic
highlight FoldColumn       guibg=#0f0f0f  guifg=#4a4a4a
highlight TabLine          guibg=#1a1a1a  guifg=#808080
highlight TabLineFill      guibg=#1a1a1a
highlight TabLineSel       guibg=#0f0f0f  guifg=#d0d0d0  gui=bold
highlight Title            guifg=#b0b0b0  gui=bold

" Diff View - Subtle
highlight DiffAdd          guibg=#1a2a1a  guifg=#80a080
highlight DiffDelete       guibg=#2a1a1a  guifg=#cc6666
highlight DiffChange       guibg=#252525  guifg=#cccc80
highlight DiffText         guibg=#353535  guifg=#ffffff  gui=bold

" Window Separators - Invisible
highlight WinSeparator     guibg=#0f0f0f  guifg=#0f0f0f
highlight VertSplit        guibg=#0f0f0f  guifg=#0f0f0f

" Sign Column - Dark
highlight SignColumn       guibg=#0f0f0f  guifg=#4a4a4a

" Miscellaneous - Muted
highlight Underlined       guifg=#aaaaaa  gui=underline
highlight Directory        guifg=#b0b0b0  gui=bold
highlight Question         guifg=#aaaaaa
highlight MoreMsg          guifg=#aaaaaa
highlight WildMenu         guibg=#333333  guifg=#ffffff

" ===================================
" Plugin-specific highlights
" ===================================
" NERDTree Colors - Dark Theme
highlight NERDTreeDir      guifg=#b0b0b0  gui=bold
highlight NERDTreeFile     guifg=#c0c0c0
highlight NERDTreeExecFile guifg=#c8c8c8
highlight NERDTreeDirSlash guifg=#4a4a4a
highlight NERDTreeOpenable guifg=#999999
highlight NERDTreeClosable guifg=#999999
highlight NERDTreeUp       guifg=#4a4a4a
highlight NERDTreeCWD guifg=#aaaaaa guibg=#111111 gui=bold,italic
highlight NERDTreeHelp     guifg=#6A9955  gui=italic
highlight NERDTreeToggleOn guifg=#80a080
highlight NERDTreeToggleOff guifg=#cc6666

" Startify Colors - Hell Gray Theme
highlight StartifyBracket  guifg=#4a4a4a
highlight StartifyFile     guifg=#aaaaaa
highlight StartifyFooter   guifg=#6A9955
highlight StartifyHeader   guifg=#b0b0b0  gui=bold
highlight StartifyNumber   guifg=#999999
highlight StartifyPath     guifg=#4a4a4a
highlight StartifySection  guifg=#a8a8a8  gui=bold
highlight StartifySelect   guifg=#c8c8c8
highlight StartifySlash    guifg=#4a4a4a
highlight StartifySpecial  guifg=#888888
highlight StartifyVar      guifg=#a0a0a0

" Airline/Status Line Colors - Dark
highlight User1            guibg=#2a2a2a  guifg=#d0d0d0  gui=bold
highlight User2            guibg=#1a1a1a  guifg=#b0b0b0
highlight User3            guibg=#cc6666  guifg=#ffffff  gui=bold
highlight User4            guibg=#80a080  guifg=#000000  gui=bold
highlight User5            guifg=#cccc80  gui=bold

" Git/VCS Colors - Subtle
highlight GitGutterAdd     guifg=#80a080  guibg=#141414
highlight GitGutterChange  guifg=#cccc80  guibg=#141414
highlight GitGutterDelete  guifg=#cc6666  guibg=#141414
