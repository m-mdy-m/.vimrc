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
    " Use a thin cursor in insert mode
    let &t_SI = "\<Esc>[6 q"
    let &t_SR = "\<Esc>[4 q"
    let &t_EI = "\<Esc>[2 q"
endif

" ===================================
" Core UI Colors - Ultra Dark Modern Theme
" ===================================
highlight Normal           guibg=#0a0a0a  guifg=#d4d4d8
highlight NonText          guibg=#0f0f0f  guifg=#1a1a1a
highlight EndOfBuffer      guibg=#0a0a0a  guifg=#141414
highlight LineNr           guibg=#0a0a0a  guifg=#3f3f46
highlight CursorLineNr     guibg=#151518  guifg=#9ca3af  gui=bold
highlight CursorLine       guibg=#151518  gui=NONE
highlight CursorColumn     guibg=#151518  gui=NONE
highlight ColorColumn      guibg=#18181b

highlight Cursor           guibg=#f4f4f5  guifg=#0a0a0a
highlight iCursor          guibg=#f4f4f5  guifg=#0a0a0a
highlight vCursor          guibg=#f4f4f5  guifg=#0a0a0a
highlight lCursor          guibg=#f4f4f5  guifg=#0a0a0a

" ===================================
" Syntax Highlighting
" ===================================
" Comments - Gray/Green
highlight Comment          guifg=#6A9955  gui=italic
highlight SpecialComment   guifg=#6A9955  gui=italic,bold
highlight Todo             guibg=#1c1c1e  guifg=#71717a  gui=bold,italic

" Variables and Identifiers - Muted Light Gray
highlight Identifier       guifg=#a1a1aa  gui=NONE
highlight Function         guifg=#e4e4e7  gui=NONE

" Constants and Literals - Subtle Gray Tones
highlight Constant         guifg=#9ca3af
highlight String           guifg=#71717a  gui=NONE
highlight Character        guifg=#71717a
highlight Number           guifg=#9ca3af
highlight Boolean          guifg=#a1a1aa  gui=bold
highlight Float            guifg=#9ca3af

" Keywords and Control Flow - Slightly Brighter Gray
highlight Statement        guifg=#d4d4d8  gui=NONE
highlight Conditional      guifg=#cbd5e1  gui=NONE
highlight Repeat           guifg=#cbd5e1  gui=NONE
highlight Label            guifg=#d4d4d8
highlight Operator         guifg=#e4e4e7  gui=NONE
highlight Keyword          guifg=#d4d4d8  gui=NONE
highlight Exception        guifg=#cbd5e1  gui=NONE

" Types and Structures - Light Gray
highlight Type             guifg=#f1f5f9  gui=NONE
highlight StorageClass     guifg=#d4d4d8
highlight Structure        guifg=#f1f5f9  gui=NONE
highlight Typedef          guifg=#f1f5f9

" Special Elements - Muted
highlight Special          guifg=#71717a
highlight SpecialChar      guifg=#9ca3af
highlight Tag              guifg=#cbd5e1
highlight Delimiter        guifg=#e4e4e7
highlight Debug            guifg=#cbd5e1

" Preprocessor - Subtle
highlight PreProc          guifg=#9ca3af
highlight PreCondit        guifg=#cbd5e1
highlight Include          guifg=#cbd5e1
highlight Define           guifg=#d4d4d8
highlight Macro            guifg=#9ca3af

" ===================================
" Editor UI Elements - Modern Dark Design
" ===================================
" Status Line - Modern flat design
highlight StatusLine       guibg=#1c1c1e  guifg=#f4f4f5  gui=NONE
highlight StatusLineNC     guibg=#0f0f0f  guifg=#6b7280  gui=NONE

" Selection and Search - Subtle modern highlight
highlight Visual           guibg=#27272a  guifg=NONE
highlight Search           guibg=#374151  guifg=#f9fafb  gui=NONE
highlight IncSearch        guibg=#4b5563  guifg=#ffffff  gui=bold

" Matching Parentheses - Modern subtle highlight
highlight MatchParen       guibg=#374151  guifg=#f9fafb  gui=bold

" Popup Menu (Autocomplete) - Modern dark floating design
highlight Pmenu            guibg=#18181b  guifg=#d4d4d8  gui=NONE
highlight PmenuSel         guibg=#27272a  guifg=#f4f4f5  gui=bold
highlight PmenuSbar        guibg=#0f0f0f
highlight PmenuThumb       guibg=#3f3f46

" Messages and Errors - Muted but readable
highlight Error            guibg=#0a0a0a  guifg=#ef4444  gui=undercurl,bold
highlight WarningMsg       guifg=#a1a1aa  gui=NONE
highlight ErrorMsg         guibg=#0a0a0a  guifg=#ef4444  gui=bold
highlight ModeMsg          guifg=#d4d4d8

" Tabs and Folds - Modern flat design
highlight Folded           guibg=#151518  guifg=#6b7280  gui=italic
highlight FoldColumn       guibg=#0a0a0a  guifg=#3f3f46
highlight TabLine          guibg=#151518  guifg=#71717a  gui=NONE
highlight TabLineFill      guibg=#0f0f0f
highlight TabLineSel       guibg=#0a0a0a  guifg=#f4f4f5  gui=bold
highlight Title            guifg=#d4d4d8  gui=bold

" Diff View - Modern subtle differences
highlight DiffAdd          guibg=#0f1419  guifg=#86efac
highlight DiffDelete       guibg=#1c0f0f  guifg=#ef4444
highlight DiffChange       guibg=#1a1a0f  guifg=#fbbf24
highlight DiffText         guibg=#27271a  guifg=#fef3c7  gui=bold

" Window Separators - Invisible for modern clean look
highlight WinSeparator     guibg=#0a0a0a  guifg=#0a0a0a
highlight VertSplit        guibg=#0a0a0a  guifg=#0a0a0a

" Sign Column - Ultra dark
highlight SignColumn       guibg=#0a0a0a  guifg=#3f3f46

" Miscellaneous - Modern muted styling
highlight Underlined       guifg=#cbd5e1  gui=underline
highlight Directory        guifg=#d4d4d8  gui=bold
highlight Question         guifg=#cbd5e1
highlight MoreMsg          guifg=#cbd5e1
highlight WildMenu         guibg=#27272a  guifg=#f4f4f5

" ===================================
" Plugin-specific highlights - Modern Dark Theme
" ===================================
" NERDTree Colors - Ultra modern sidebar
highlight NERDTreeDir      guifg=#d4d4d8  gui=bold
highlight NERDTreeFile     guifg=#e4e4e7
highlight NERDTreeExecFile guifg=#f1f5f9
highlight NERDTreeDirSlash guifg=#3f3f46
highlight NERDTreeOpenable guifg=#9ca3af
highlight NERDTreeClosable guifg=#9ca3af
highlight NERDTreeUp       guifg=#3f3f46
highlight NERDTreeCWD      guifg=#cbd5e1  guibg=#0f0f0f  gui=bold,italic
highlight NERDTreeHelp     guifg=#6A9955  gui=italic
highlight NERDTreeToggleOn guifg=#86efac
highlight NERDTreeToggleOff guifg=#ef4444

" Startify Colors - Modern minimalist theme
highlight StartifyBracket  guifg=#3f3f46
highlight StartifyFile     guifg=#cbd5e1
highlight StartifyFooter   guifg=#6A9955
highlight StartifyHeader   guifg=#d4d4d8  gui=bold
highlight StartifyNumber   guifg=#9ca3af
highlight StartifyPath     guifg=#3f3f46
highlight StartifySection  guifg=#cbd5e1  gui=bold
highlight StartifySelect   guifg=#f1f5f9
highlight StartifySlash    guifg=#3f3f46
highlight StartifySpecial  guifg=#71717a
highlight StartifyVar      guifg=#a1a1aa

" Airline/Status Line Colors - Modern flat design
highlight User1            guibg=#1c1c1e  guifg=#f4f4f5  gui=bold
highlight User2            guibg=#151518  guifg=#d4d4d8
highlight User3            guibg=#ef4444  guifg=#ffffff  gui=bold
highlight User4            guibg=#86efac  guifg=#0a0a0a  gui=bold
highlight User5            guifg=#fbbf24  gui=bold

" ===================================
" Git & Terminal Theme Colors
" ===================================

" GitGutter Signs (Matching Your Dark Theme)
highlight GitGutterAdd          guifg=#86efac  guibg=#0a0a0a  gui=NONE
highlight GitGutterChange       guifg=#fbbf24  guibg=#0a0a0a  gui=NONE  
highlight GitGutterDelete       guifg=#ef4444  guibg=#0a0a0a  gui=NONE
highlight GitGutterChangeDelete guifg=#f97316  guibg=#0a0a0a  gui=NONE

" GitGutter Line Numbers
highlight GitGutterAddLineNr          guifg=#86efac  guibg=#0a0a0a
highlight GitGutterChangeLineNr       guifg=#fbbf24  guibg=#0a0a0a
highlight GitGutterDeleteLineNr       guifg=#ef4444  guibg=#0a0a0a
highlight GitGutterChangeDeleteLineNr guifg=#f97316  guibg=#0a0a0a

" Git Commit Browser (GV)
highlight GvAdd     guifg=#86efac  gui=bold
highlight GvDelete  guifg=#ef4444  gui=bold
highlight GvHash    guifg=#9ca3af  gui=NONE
highlight GvAuthor  guifg=#cbd5e1  gui=italic
highlight GvDate    guifg=#6b7280  gui=NONE
highlight GvMessage guifg=#d4d4d8  gui=NONE

" FloaTerm Colors (Terminal)
highlight Floaterm         guibg=#0a0a0a  guifg=#d4d4d8
highlight FloatermBorder   guibg=#0a0a0a  guifg=#3f3f46
highlight FloatermNC       guibg=#0f0f0f  guifg=#71717a

" Git Status in Status Line
highlight User6            guifg=#86efac  guibg=#1c1c1e  gui=bold
highlight User7            guifg=#fbbf24  guibg=#1c1c1e  gui=bold  
highlight User8            guifg=#ef4444  guibg=#1c1c1e  gui=bold
highlight User9            guifg=#cbd5e1  guibg=#1c1c1e  gui=bold

" Merge Conflict Colors
highlight DiffAdd          guibg=#0f1419  guifg=#86efac  gui=NONE
highlight DiffDelete       guibg=#1c0f0f  guifg=#ef4444  gui=NONE
highlight DiffChange       guibg=#1a1a0f  guifg=#fbbf24  gui=NONE
highlight DiffText         guibg=#27271a  guifg=#fef3c7  gui=bold

" Git Messenger Popup
highlight gitmessengerPopupNormal    guibg=#151518  guifg=#d4d4d8
highlight gitmessengerEndOfBuffer    guibg=#151518  guifg=#151518
highlight gitmessengerHeader         guifg=#cbd5e1  gui=bold
highlight gitmessengerHash           guifg=#9ca3af  gui=NONE
highlight gitmessengerHistory        guifg=#6b7280  gui=italic