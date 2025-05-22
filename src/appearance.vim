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

" Theme Name
let g:colors_name="dark_modern"

" ===================================
" Core UI Colors
" ===================================
highlight Normal           guibg=#1E1E1E  guifg=#D4D4D4
highlight NonText          guibg=#1E1E1E  guifg=#3C3C3C
highlight EndOfBuffer      guibg=#1E1E1E  guifg=#2D2D30
highlight LineNr           guibg=#1E1E1E  guifg=#858585
highlight CursorLineNr     guibg=#252526  guifg=#CCCCCC  gui=bold
highlight CursorLine       guibg=#252526
highlight CursorColumn     guibg=#252526
highlight ColorColumn      guibg=#2F2F2F

" ===================================
" Syntax Highlighting
" ===================================
" Comments - Gray/Green
highlight Comment          guifg=#6A9955  gui=italic
highlight SpecialComment   guifg=#6A9955  gui=italic,bold
highlight Todo             guibg=#252526  guifg=#FFD700  gui=bold,italic

" Variables and Identifiers - Light Blue
highlight Identifier       guifg=#9CDCFE  gui=NONE
highlight Function         guifg=#DCDCAA  gui=NONE

" Constants and Literals
highlight Constant         guifg=#B5CEA8
highlight String           guifg=#CE9178  gui=NONE
highlight Character        guifg=#CE9178
highlight Number           guifg=#B5CEA8
highlight Boolean          guifg=#569CD6  gui=bold
highlight Float            guifg=#B5CEA8

" Keywords and Control Flow - Blue
highlight Statement        guifg=#569CD6  gui=NONE
highlight Conditional      guifg=#C586C0  gui=NONE
highlight Repeat           guifg=#C586C0  gui=NONE
highlight Label            guifg=#569CD6
highlight Operator         guifg=#D4D4D4  gui=NONE
highlight Keyword          guifg=#569CD6  gui=NONE
highlight Exception        guifg=#C586C0  gui=NONE

" Types and Structures - Light Green/Cyan
highlight Type             guifg=#4EC9B0  gui=NONE
highlight StorageClass     guifg=#569CD6
highlight Structure        guifg=#4EC9B0  gui=NONE
highlight Typedef          guifg=#4EC9B0

" Special Elements
highlight Special          guifg=#CE9178
highlight SpecialChar      guifg=#D7BA7D
highlight Tag              guifg=#92C5F8
highlight Delimiter        guifg=#D4D4D4
highlight Debug            guifg=#C586C0

" Preprocessor - Yellow/Orange
highlight PreProc          guifg=#D7BA7D
highlight PreCondit        guifg=#C586C0
highlight Include          guifg=#C586C0
highlight Define           guifg=#569CD6
highlight Macro            guifg=#D7BA7D

" ===================================
" Editor UI Elements
" ===================================
" Status Line
highlight StatusLine       guibg=#007ACC  guifg=#FFFFFF  gui=NONE
highlight StatusLineNC     guibg=#2D2D30  guifg=#CCCCCC  gui=NONE

" Selection and Search
highlight Visual           guibg=#264F78  guifg=NONE
highlight Search           guibg=#613315  guifg=#FFFFFF
highlight IncSearch        guibg=#E8A317  guifg=#000000  gui=bold

" Matching Parentheses
highlight MatchParen       guibg=#0E639C  guifg=#FFFFFF  gui=bold

" Popup Menu (Autocomplete)
highlight Pmenu            guibg=#252526  guifg=#CCCCCC
highlight PmenuSel         guibg=#094771  guifg=#FFFFFF  gui=bold
highlight PmenuSbar        guibg=#2D2D30
highlight PmenuThumb       guibg=#424242

" Messages and Errors
highlight Error            guibg=#1E1E1E  guifg=#F44747  gui=undercurl,bold
highlight WarningMsg       guifg=#FFCC02  gui=NONE
highlight ErrorMsg         guibg=#1E1E1E  guifg=#F44747  gui=bold
highlight ModeMsg          guifg=#D4D4D4

" Tabs and Folds
highlight Folded           guibg=#262626  guifg=#808080  gui=italic
highlight FoldColumn       guibg=#1E1E1E  guifg=#858585
highlight TabLine          guibg=#2D2D30  guifg=#969696
highlight TabLineFill      guibg=#2D2D30
highlight TabLineSel       guibg=#1E1E1E  guifg=#FFFFFF  gui=bold
highlight Title            guifg=#569CD6  gui=bold

" Diff View
highlight DiffAdd          guibg=#0A4D0A  guifg=#4CAF50
highlight DiffDelete       guibg=#4D0A0A  guifg=#F44747
highlight DiffChange       guibg=#2D4D4D  guifg=#FFD700
highlight DiffText         guibg=#4D4D00  guifg=#FFFFFF  gui=bold

" Window Separators
highlight WinSeparator     guibg=#2D2D30  guifg=#2D2D30
highlight VertSplit        guibg=#2D2D30  guifg=#2D2D30

" Sign Column
highlight SignColumn       guibg=#1E1E1E  guifg=#858585

" Miscellaneous
highlight Underlined       guifg=#4FC1FF  gui=underline
highlight Directory        guifg=#569CD6  gui=bold
highlight Question         guifg=#4FC1FF
highlight MoreMsg          guifg=#4FC1FF
highlight WildMenu         guibg=#094771  guifg=#FFFFFF

" ===================================
" Plugin-specific highlights
" ===================================
" NERDTree Colors
highlight NERDTreeDir      guifg=#569CD6  gui=bold
highlight NERDTreeFile     guifg=#D4D4D4
highlight NERDTreeExecFile guifg=#4EC9B0
highlight NERDTreeDirSlash guifg=#858585
highlight NERDTreeOpenable guifg=#D7BA7D
highlight NERDTreeClosable guifg=#D7BA7D
highlight NERDTreeUp       guifg=#858585
highlight NERDTreeCWD      guifg=#4FC1FF  gui=bold
highlight NERDTreeHelp     guifg=#6A9955  gui=italic
highlight NERDTreeToggleOn guifg=#4CAF50
highlight NERDTreeToggleOff guifg=#F44747

" Startify Colors
highlight StartifyBracket  guifg=#858585
highlight StartifyFile     guifg=#4FC1FF
highlight StartifyFooter   guifg=#6A9955
highlight StartifyHeader   guifg=#569CD6  gui=bold
highlight StartifyNumber   guifg=#D7BA7D
highlight StartifyPath     guifg=#858585
highlight StartifySection  guifg=#C586C0  gui=bold
highlight StartifySelect   guifg=#4EC9B0
highlight StartifySlash    guifg=#858585
highlight StartifySpecial  guifg=#CE9178
highlight StartifyVar      guifg=#9CDCFE

" Airline/Status Line Colors
highlight User1            guibg=#007ACC  guifg=#FFFFFF  gui=bold
highlight User2            guibg=#2D2D30  guifg=#CCCCCC
highlight User3            guibg=#F44747  guifg=#FFFFFF  gui=bold
highlight User4            guibg=#4CAF50  guifg=#000000  gui=bold
highlight User5            guifg=#FFD700  gui=bold

" Git/VCS Colors
highlight GitGutterAdd     guifg=#4CAF50  guibg=#1E1E1E
highlight GitGutterChange  guifg=#FFD700  guibg=#1E1E1E
highlight GitGutterDelete  guifg=#F44747  guibg=#1E1E1E
