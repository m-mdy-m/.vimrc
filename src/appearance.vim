" Modern Vim Configuration - Midnight Azure Theme
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
let g:colors_name="midnight_azure_modern"

" ===================================
" UI
" ===================================
highlight Normal           guibg=#0B0E14  guifg=#E2E8F0
highlight NonText          guibg=#0B0E14  guifg=#1E293B
highlight EndOfBuffer      guibg=#0B0E14  guifg=#131825
highlight LineNr           guibg=#0B0E14  guifg=#334155
highlight CursorLineNr     guibg=#111827  guifg=#38BDF8  gui=bold
highlight CursorLine       guibg=#111827
highlight CursorColumn     guibg=#111827

" Comments and Documentation
highlight Comment          guifg=#64748B  gui=italic
highlight SpecialComment   guifg=#7E8EA3  gui=italic,bold
highlight Todo             guibg=#1E293B  guifg=#F59E0B  gui=bold,italic

" Variables and Identifiers
highlight Identifier       guifg=#BAC8FF  gui=NONE
highlight Function         guifg=#60A5FA  gui=bold

" Constants
highlight Constant         guifg=#FF92B7
highlight String           guifg=#A5F3B5  gui=NONE
highlight Character        guifg=#FBBAE0
highlight Number           guifg=#FFA07A
highlight Boolean          guifg=#F472B6
highlight Float            guifg=#FFA07A

" Keywords and Control Flow
highlight Statement        guifg=#F472B6  gui=NONE
highlight Conditional      guifg=#F472B6  gui=italic
highlight Repeat           guifg=#F472B6  gui=italic
highlight Label            guifg=#FDBA74
highlight Operator         guifg=#E5E7EB  gui=NONE
highlight Keyword          guifg=#F472B6  gui=italic
highlight Exception        guifg=#F472B6  gui=bold,italic

" Types and Structures
highlight Type             guifg=#5EEAD4  gui=italic
highlight StorageClass     guifg=#FDBA74
highlight Structure        guifg=#5EEAD4  gui=bold
highlight Typedef          guifg=#5EEAD4

" Special Elements
highlight Special          guifg=#FFA07A
highlight SpecialChar      guifg=#FDBA74
highlight Tag              guifg=#60A5FA
highlight Delimiter        guifg=#CBD5E1
highlight Debug            guifg=#F472B6

" Preprocessor
highlight PreProc          guifg=#FDBA74
highlight PreCondit        guifg=#FDBA74  gui=italic
highlight Include          guifg=#FFA07A  gui=bold
highlight Define           guifg=#FDBA74
highlight Macro            guifg=#FDBA74

" Status Line
highlight StatusLine       guibg=#070A10  guifg=#7DD3FC  gui=NONE
highlight StatusLineNC     guibg=#111827  guifg=#475569  gui=NONE

" Selection and Search
highlight Visual           guibg=#1E3A5F  guifg=NONE
highlight Search           guibg=#075985  guifg=#E2E8F0
highlight IncSearch        guibg=#0284C7  guifg=#FFFFFF  gui=bold

" Matching Parentheses
highlight MatchParen       guibg=#075985  guifg=#E2E8F0  gui=bold

" Popup Menu
highlight Pmenu            guibg=#141C2E  guifg=#E2E8F0
highlight PmenuSel         guibg=#075985  guifg=#FFFFFF  gui=bold
highlight PmenuSbar        guibg=#1E293B
highlight PmenuThumb       guibg=#075985

" Messages and Errors
highlight Error            guibg=#0B0E14  guifg=#FB7185  gui=undercurl,bold
highlight WarningMsg       guifg=#FBBF24  gui=italic
highlight ErrorMsg         guibg=#2D1622  guifg=#FB7185  gui=bold

" Tabs and Folds
highlight Folded           guibg=#111827  guifg=#475569  gui=italic
highlight TabLine          guibg=#111827  guifg=#475569
highlight TabLineSel       guibg=#075985  guifg=#FFFFFF  gui=bold
highlight Title            guifg=#0EA5E9  gui=bold

" Diff View - Modern Colors
highlight DiffAdd          guibg=#0F2C30  guifg=#34D399
highlight DiffDelete       guibg=#2C1620  guifg=#FB7185
highlight DiffChange       guibg=#1E3457  guifg=#38BDF8
highlight DiffText         guibg=#075985  guifg=#FFFFFF  gui=bold

" Window Separators - Minimal
highlight WinSeparator     guibg=#070A10  guifg=#070A10
highlight VertSplit        guibg=#070A10  guifg=#070A10

" Miscellaneous
highlight Underlined       guifg=#0EA5E9  gui=underline
highlight ColorColumn      guibg=#111827
highlight SignColumn       guibg=#0B0E14  guifg=#0EA5E9