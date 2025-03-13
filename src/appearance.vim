" Vim Configuration
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

" Theme Name
let g:colors_name="midnight_azure"

" Basic UI Elements
highlight Normal           guibg=#0A0A0F  guifg=#D8DFEC
highlight NonText          guibg=#0A0A0F  guifg=#1C2635
highlight EndOfBuffer      guibg=#0A0A0F  guifg=#111419

" Line Numbers and Cursor
highlight LineNr           guibg=#0A0A0F  guifg=#2A3547
highlight CursorLineNr     guibg=#101318  guifg=#36C3FF gui=bold
highlight CursorLine       guibg=#101318
highlight CursorColumn     guibg=#101318

" Syntax Highlighting
highlight Comment          guifg=#5D718C  gui=italic
highlight Constant         guifg=#FF9EB4
highlight String           guifg=#AEFF78
highlight Character        guifg=#FFB8D9
highlight Number           guifg=#FF9C67
highlight Boolean          guifg=#FF7AB2
highlight Float            guifg=#FF9C67
highlight Function         guifg=#56C6FF  gui=bold
highlight Statement        guifg=#FF7AB2
highlight Conditional      guifg=#FF7AB2  gui=italic
highlight Repeat           guifg=#FF7AB2  gui=italic
highlight Label            guifg=#FFB86C
highlight Operator         guifg=#E2E2E2
highlight Keyword          guifg=#FF7AB2  gui=italic
highlight Exception        guifg=#FF7AB2  gui=bold,italic
highlight Identifier       guifg=#C5D3FF
highlight Type             guifg=#56FFFF  gui=italic
highlight StorageClass     guifg=#FFB86C
highlight Structure        guifg=#56FFFF  gui=bold
highlight Typedef          guifg=#56FFFF
highlight Special          guifg=#FF9C67
highlight SpecialChar      guifg=#FFB86C
highlight Tag              guifg=#56C6FF
highlight Delimiter        guifg=#A0A0A0
highlight SpecialComment   guifg=#7089A8  gui=italic,bold
highlight Debug            guifg=#FF7AB2
highlight PreProc          guifg=#FFB86C
highlight PreCondit        guifg=#FFB86C  gui=italic
highlight Include          guifg=#FF9C67  gui=bold
highlight Define           guifg=#FFB86C
highlight Macro            guifg=#FFB86C
highlight Todo             guibg=#16223B  guifg=#FFB86C  gui=bold,italic

" UI Components
highlight StatusLine       guibg=#050508  guifg=#7EC9FF
highlight StatusLineNC     guibg=#101318  guifg=#3D5573
highlight Visual           guibg=#17283F  guifg=NONE
highlight Search           guibg=#004F8A  guifg=#D8DFEC
highlight IncSearch        guibg=#0087E5  guifg=#FFFFFF  gui=bold

" Matching Parentheses
highlight MatchParen       guibg=#004F8A  guifg=#D8DFEC  gui=bold

" Menu Elements
highlight Pmenu            guibg=#101520  guifg=#D8DFEC
highlight PmenuSel         guibg=#004F8A  guifg=#FFFFFF  gui=bold
highlight PmenuSbar        guibg=#152030
highlight PmenuThumb       guibg=#004F8A

" Messages and Errors
highlight Error            guibg=#0A0A0F  guifg=#FF4D8A  gui=undercurl,bold
highlight WarningMsg       guifg=#FFB540  gui=italic
highlight ErrorMsg         guibg=#271420  guifg=#FF4D8A  gui=bold

" Tabs and Folds
highlight Folded           guibg=#101318  guifg=#3D5573  gui=italic
highlight TabLine          guibg=#101318  guifg=#3D5573
highlight TabLineSel       guibg=#004F8A  guifg=#FFFFFF  gui=bold
highlight Title            guifg=#00A1FF  gui=bold

" Diff View
highlight DiffAdd          guibg=#0A2C2A  guifg=#28FFBB
highlight DiffDelete       guibg=#2A111A  guifg=#FF4D8A
highlight DiffChange       guibg=#1A2A3F  guifg=#36C3FF
highlight DiffText         guibg=#004F8A  guifg=#FFFFFF  gui=bold

" Window Separators
highlight WinSeparator     guibg=#050508  guifg=#050508
highlight VertSplit        guibg=#050508  guifg=#050508

" Miscellaneous
highlight Underlined       guifg=#00A1FF  gui=underline
highlight ColorColumn      guibg=#101318
highlight SignColumn       guibg=#0A0A0F  guifg=#00A1FF

" Special Text Formatting
highlight htmlItalic       gui=italic
highlight htmlBold         gui=bold
highlight htmlBoldItalic   gui=bold,italic

" LSP References
highlight! link LspReferenceText   Visual
highlight! link LspReferenceRead   Visual
highlight! link LspReferenceWrite  Visual
