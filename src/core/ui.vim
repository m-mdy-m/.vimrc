" Cursor settings
if exists('&guicursor')
    set guicursor=n-v-c:block-Cursor
    set guicursor+=i:ver25-Cursor
    set guicursor+=r-cr:hor20-Cursor
    set guicursor+=o:hor50-Cursor
    set guicursor+=a:blinkwait700-blinkoff400-blinkon250-Cursor
endif

"" UI 
highlight Normal           guibg=#0a0a0a  guifg=#d4d4d8
highlight NonText          guibg=#0f0f0f  guifg=#1a1a1a
highlight EndOfBuffer      guibg=#0a0a0a  guifg=#141414
highlight LineNr           guibg=#0a0a0a  guifg=#3f3f46
highlight ColorColumn      guibg=#18181b
"" Cursor UI
highlight Cursor           guibg=#f4f4f5  guifg=#0a0a0a
highlight CursorLineNr     guibg=#151518  guifg=#c084fc  gui=bold
highlight CursorLine       guibg=#151518  gui=NONE
highlight CursorColumn     guibg=#151518  gui=NONE
" Syntax Highlighting
highlight Comment          guifg=#6b8e6b  gui=italic
highlight SpecialComment   guifg=#7a9d7a  gui=italic,bold
highlight Todo             guibg=#1c1c1e  guifg=#8b9d8b  gui=bold,italic
highlight Identifier       guifg=#a8b5c7  gui=NONE
highlight Function         guifg=#e0e7f5  gui=NONE
highlight Constant         guifg=#a8a0bf
highlight String           guifg=#8b9d8b  gui=NONE
highlight Character        guifg=#8b9d8b
highlight Number           guifg=#b4a8c8
highlight Boolean          guifg=#c8b8d8  gui=bold
highlight Float            guifg=#b4a8c8
highlight Statement        guifg=#c0c5db  gui=NONE
highlight Conditional      guifg=#b8bfdd  gui=NONE
highlight Repeat           guifg=#b8bfdd  gui=NONE
highlight Label            guifg=#d0d4e8
highlight Operator         guifg=#d8dce8  gui=NONE
highlight Keyword          guifg=#b8b4d8  gui=NONE
highlight Exception        guifg=#c0b8dd  gui=NONE
highlight Type             guifg=#e0ecf8  gui=NONE
highlight StorageClass     guifg=#c0d8e8
highlight Structure        guifg=#d8e8f8  gui=NONE
highlight Typedef          guifg=#e0ecf8
highlight Special          guifg=#8b8ba0
highlight SpecialChar      guifg=#a8a0bf
highlight Tag              guifg=#b8c0d8
highlight Delimiter        guifg=#d4d8e8
highlight Debug            guifg=#c0c8d8
highlight PreProc          guifg=#a8a0bf
highlight PreCondit        guifg=#b8b0d0
highlight Include          guifg=#c0b8d8
highlight Define           guifg=#c8c0e0
highlight Macro            guifg=#a8a0bf
" Editor UI Elements - Modern Dark Design
highlight StatusLine       guibg=#1c1c1e  guifg=#e8ecf4  gui=NONE
highlight StatusLineNC     guibg=#0f0f0f  guifg=#6b7280  gui=NONE
highlight Visual           guibg=#2a2a3a  guifg=NONE
highlight Search           guibg=#3a4158  guifg=#e8f0f8  gui=NONE
highlight IncSearch        guibg=#4a5168  guifg=#ffffff  gui=bold
highlight MatchParen       guibg=#3a3a50  guifg=#d8c8f8  gui=bold
highlight Error            guibg=#0a0a0a  guifg=#ef6666  gui=undercurl,bold
highlight WarningMsg       guifg=#d8c888  gui=NONE
highlight ErrorMsg         guibg=#0a0a0a  guifg=#ef6666  gui=bold
highlight ModeMsg          guifg=#d4d8e0
highlight Folded           guibg=#151518  guifg=#7a808c  gui=italic
highlight FoldColumn       guibg=#0a0a0a  guifg=#3f3f46
highlight TabLine          guibg=#151518  guifg=#7a7a8a  gui=NONE
highlight TabLineFill      guibg=#0f0f0f
highlight TabLineSel       guibg=#0a0a0a  guifg=#d8dce8  gui=bold
highlight Title            guifg=#d0d8e8  gui=bold
highlight DiffAdd          guibg=#0f1a19  guifg=#86d8ac
highlight DiffDelete       guibg=#1c0f0f  guifg=#ef6666
highlight DiffChange       guibg=#1a1a18  guifg=#e8c878
highlight DiffText         guibg=#28281a  guifg=#f8e8a8  gui=bold
highlight VertSplit        guibg=#0a0a0a  guifg=#1a1a20
highlight SignColumn       guibg=#0a0a0a  guifg=#3f3f46
highlight Underlined       guifg=#c0c8d8  gui=underline
highlight Directory        guifg=#b8c8e8  gui=bold
highlight Question         guifg=#c0c8d8
highlight MoreMsg          guifg=#c0c8d8
highlight WildMenu         guibg=#2a2a3a  guifg=#e8ecf4
" Git 
highlight GitGutterAdd          guifg=#86d8ac  guibg=#0a0a0a  gui=NONE
highlight GitGutterChange       guifg=#e8c878  guibg=#0a0a0a  gui=NONE  
highlight GitGutterDelete       guifg=#ef6666  guibg=#0a0a0a  gui=NONE
highlight GitGutterChangeDelete guifg=#f89066  guibg=#0a0a0a  gui=NONE
highlight GitGutterAddLineNr          guifg=#86d8ac  guibg=#0a0a0a
highlight GitGutterChangeLineNr       guifg=#e8c878  guibg=#0a0a0a
highlight GitGutterDeleteLineNr       guifg=#ef6666  guibg=#0a0a0a
highlight GitGutterChangeDeleteLineNr guifg=#f89066  guibg=#0a0a0a
highlight GvAdd     guifg=#86d8ac  gui=bold
highlight GvDelete  guifg=#ef6666  gui=bold
highlight GvHash    guifg=#a8a0bf  gui=NONE
highlight GvAuthor  guifg=#c0c8d8  gui=italic
highlight GvDate    guifg=#7a808c  gui=NONE
highlight GvMessage guifg=#d4d8e0  gui=NONE
highlight User6            guifg=#86d8ac  guibg=#1c1c1e  gui=bold
highlight User7            guifg=#e8c878  guibg=#1c1c1e  gui=bold  
highlight User8            guifg=#ef6666  guibg=#1c1c1e  gui=bold
highlight User9            guifg=#c0c8d8  guibg=#1c1c1e  gui=bold
highlight gitmessengerPopupNormal    guibg=#151518  guifg=#d4d4d8
highlight gitmessengerEndOfBuffer    guibg=#151518  guifg=#151518
highlight gitmessengerHeader         guifg=#c0c8d8  gui=bold
highlight gitmessengerHash           guifg=#a8a0bf  gui=NONE
highlight gitmessengerHistory        guifg=#7a808c  gui=italic
