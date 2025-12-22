" Cursor settings
if exists('&guicursor')
    set guicursor=n-v-c:block-Cursor
    set guicursor+=i:ver25-Cursor
    set guicursor+=r-cr:hor20-Cursor
    set guicursor+=o:hor50-Cursor
    set guicursor+=a:blinkwait700-blinkoff400-blinkon250-Cursor
endif

"" UI 
highlight Normal           guibg=#0d0d0d  guifg=#e4e4e7
highlight NonText          guibg=#0d0d0d  guifg=#27272a
highlight EndOfBuffer      guibg=#0d0d0d  guifg=#18181b
highlight LineNr           guibg=#0d0d0d  guifg=#52525b
highlight ColorColumn      guibg=#18181b
"" Cursor UI
highlight Cursor           guibg=#fafafa  guifg=#0d0d0d
highlight CursorLineNr     guibg=#18181b  guifg=#a78bfa  gui=bold
highlight CursorLine       guibg=#18181b  gui=NONE
highlight CursorColumn     guibg=#18181b  gui=NONE
" Syntax Highlighting
highlight Comment          guifg=#71717a  gui=italic
highlight SpecialComment   guifg=#a1a1aa  gui=italic,bold
highlight Todo             guibg=#27272a  guifg=#d4d4d8  gui=bold,italic
highlight Identifier       guifg=#e4e4e7  gui=NONE
highlight Function         guifg=#c4b5fd  gui=NONE
highlight Constant         guifg=#a78bfa
highlight String           guifg=#94a3b8  gui=NONE
highlight Character        guifg=#94a3b8
highlight Number           guifg=#c4b5fd
highlight Boolean          guifg=#a78bfa  gui=bold
highlight Float            guifg=#c4b5fd
highlight Statement        guifg=#e0e7ff  gui=NONE
highlight Conditional      guifg=#ddd6fe  gui=NONE
highlight Repeat           guifg=#ddd6fe  gui=NONE
highlight Label            guifg=#ede9fe
highlight Operator         guifg=#f4f4f5  gui=NONE
highlight Keyword          guibg=#18181b  guifg=#c4b5fd  gui=NONE
highlight Exception        guifg=#ddd6fe  gui=NONE
highlight Type             guifg=#e0e7ff  gui=NONE
highlight StorageClass     guifg=#e0e7ff
highlight Structure        guifg=#f5f3ff  gui=NONE
highlight Typedef          guifg=#e0e7ff
highlight Special          guifg=#a1a1aa
highlight SpecialChar      guifg=#c4b5fd
highlight Tag              guifg=#ddd6fe
highlight Delimiter        guifg=#e4e4e7
highlight Debug            guifg=#e0e7ff
highlight PreProc          guifg=#c4b5fd
highlight PreCondit        guifg=#ddd6fe
highlight Include          guifg=#ddd6fe
highlight Define           guifg=#e0e7ff
highlight Macro            guifg=#c4b5fd
highlight StatusLine       guibg=#18181b  guifg=#e4e4e7  gui=NONE
highlight StatusLineNC     guibg=#0d0d0d  guifg=#71717a  gui=NONE
highlight Visual           guibg=#3f3f46  guifg=NONE
highlight Search           guibg=#52525b  guifg=#fafafa  gui=NONE
highlight IncSearch        guibg=#71717a  guifg=#ffffff  gui=bold
highlight MatchParen       guibg=#52525b  guifg=#e0e7ff  gui=bold
highlight Error            guibg=#27272a  guifg=#f87171  gui=undercurl,bold
highlight WarningMsg       guifg=#fb923c  gui=NONE
highlight ErrorMsg         guibg=#27272a  guifg=#f87171  gui=bold
highlight ModeMsg          guifg=#e4e4e7
highlight Folded           guibg=#18181b  guifg=#a1a1aa  gui=italic
highlight FoldColumn       guibg=#0d0d0d  guifg=#52525b
highlight TabLine          guibg=#18181b  guifg=#a1a1aa  gui=NONE
highlight TabLineFill      guibg=#0d0d0d
highlight TabLineSel       guibg=#27272a  guifg=#e4e4e7  gui=bold
highlight Title            guifg=#e0e7ff  gui=bold
highlight DiffAdd          guibg=#1a2e1a  guifg=#86efac
highlight DiffDelete       guibg=#2e1a1a  guifg=#f87171
highlight DiffChange       guibg=#2e2a1a  guifg=#fbbf24
highlight DiffText         guibg=#3a361a  guifg=#fde047  gui=bold
highlight VertSplit        guibg=#0d0d0d  guifg=#27272a
highlight SignColumn       guibg=#0d0d0d  guifg=#52525b
highlight Underlined       guifg=#c4b5fd  gui=underline
highlight Directory        guifg=#a78bfa  gui=bold
highlight Question         guifg=#e4e4e7
highlight MoreMsg          guifg=#e4e4e7
highlight WildMenu         guibg=#3f3f46  guifg=#e4e4e7
highlight Pmenu            guibg=#18181b  guifg=#e4e4e7
highlight PmenuSel         guibg=#3f3f46  guifg=#ffffff  gui=bold
highlight PmenuSbar        guibg=#27272a
highlight PmenuThumb       guibg=#52525b
" Git 
highlight GitGutterAdd          guifg=#86efac  guibg=#0d0d0d  gui=NONE
highlight GitGutterChange       guifg=#fbbf24  guibg=#0d0d0d  gui=NONE  
highlight GitGutterDelete       guifg=#f87171  guibg=#0d0d0d  gui=NONE
highlight GitGutterChangeDelete guifg=#fb923c  guibg=#0d0d0d  gui=NONE
highlight GitGutterAddLineNr          guifg=#86efac  guibg=#0d0d0d
highlight GitGutterChangeLineNr       guifg=#fbbf24  guibg=#0d0d0d
highlight GitGutterDeleteLineNr       guifg=#f87171  guibg=#0d0d0d
highlight GitGutterChangeDeleteLineNr guifg=#fb923c  guibg=#0d0d0d
highlight GvAdd     guifg=#86efac  gui=bold
highlight GvDelete  guifg=#f87171  gui=bold
highlight GvHash    guifg=#a78bfa  gui=NONE
highlight GvAuthor  guifg=#e0e7ff  gui=italic
highlight GvDate    guifg=#a1a1aa  gui=NONE
highlight GvMessage guifg=#e4e4e7  gui=NONE
highlight User1            guifg=#a78bfa  guibg=#18181b  gui=bold
highlight User2            guifg=#86efac  guibg=#18181b  gui=bold
highlight User3            guifg=#f87171  guibg=#18181b  gui=bold
highlight User4            guifg=#e0e7ff  guibg=#18181b  gui=NONE
highlight User5            guifg=#a1a1aa  guibg=#18181b  gui=italic
highlight gitmessengerPopupNormal    guibg=#18181b  guifg=#e4e4e7
highlight gitmessengerEndOfBuffer    guibg=#18181b  guifg=#18181b
highlight gitmessengerHeader         guifg=#e0e7ff  gui=bold
highlight gitmessengerHash           guifg=#a78bfa  gui=NONE
highlight gitmessengerHistory        guifg=#a1a1aa  gui=italic
highlight SpellBad         guibg=#2e1a1a  gui=undercurl
highlight SpellCap         guibg=#1a2e1a  gui=undercurl
highlight SpellRare        guibg=#2a2e1a  gui=undercurl
highlight SpellLocal       guibg=#1a2a2e  gui=undercurl