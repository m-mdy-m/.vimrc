" Cursor settings
if exists('&guicursor')
    set guicursor=n-v-c:block-Cursor
    set guicursor+=i:ver25-Cursor
    set guicursor+=r-cr:hor20-Cursor
    set guicursor+=o:hor50-Cursor
    set guicursor+=a:blinkwait700-blinkoff400-blinkon250-Cursor
endif

"" UI 
highlight Normal           guibg=#0a0a0a  guifg=#d0d0d0  ctermbg=0    ctermfg=252
highlight NonText          guibg=#0a0a0a  guifg=#1a1a1a  ctermbg=0    ctermfg=234
highlight EndOfBuffer      guibg=#0a0a0a  guifg=#141414  ctermbg=0    ctermfg=233
highlight LineNr           guibg=#0a0a0a  guifg=#3a3a3a  ctermbg=0    ctermfg=237
highlight ColorColumn      guibg=#141414                 ctermbg=233
"" Cursor UI
highlight Cursor           guibg=#d0d0d0  guifg=#0a0a0a  ctermbg=252  ctermfg=0
highlight CursorLineNr     guibg=#141414  guifg=#8b7fc7  ctermbg=233  ctermfg=141  gui=bold  cterm=bold
highlight CursorLine       guibg=#141414                 ctermbg=233               gui=NONE  cterm=NONE
highlight CursorColumn     guibg=#141414                 ctermbg=233               gui=NONE  cterm=NONE
" Syntax Highlighting
highlight Comment          guifg=#5a5a5a  ctermfg=240  gui=italic  cterm=italic
highlight SpecialComment   guifg=#6a6a6a  ctermfg=242  gui=italic  cterm=italic
highlight Todo             guibg=#1a1a1a  guifg=#b0b0b0  ctermbg=234  ctermfg=249  gui=bold  cterm=bold
highlight Identifier       guifg=#d0d0d0  ctermfg=252  gui=NONE   cterm=NONE
highlight Function         guifg=#a090c7  ctermfg=141  gui=NONE   cterm=NONE
highlight Constant         guifg=#8b7fc7  ctermfg=104  gui=NONE   cterm=NONE
highlight String           guifg=#808080  ctermfg=244  gui=NONE   cterm=NONE
highlight Character        guifg=#808080  ctermfg=244  gui=NONE   cterm=NONE
highlight Number           guifg=#a090c7  ctermfg=141  gui=NONE   cterm=NONE
highlight Boolean          guifg=#8b7fc7  ctermfg=104  gui=bold   cterm=bold
highlight Float            guifg=#a090c7  ctermfg=141  gui=NONE   cterm=NONE
highlight Statement        guifg=#b0b0b0  ctermfg=249  gui=NONE   cterm=NONE
highlight Conditional      guifg=#a0a0a0  ctermfg=248  gui=NONE   cterm=NONE
highlight Repeat           guifg=#a0a0a0  ctermfg=248  gui=NONE   cterm=NONE
highlight Label            guifg=#b0b0b0  ctermfg=249  gui=NONE   cterm=NONE
highlight Operator         guifg=#c0c0c0  ctermfg=250  gui=NONE   cterm=NONE
highlight Keyword          guibg=#141414  guifg=#a090c7  ctermbg=233  ctermfg=141  gui=NONE  cterm=NONE
highlight Exception        guifg=#a0a0a0  ctermfg=248  gui=NONE   cterm=NONE
highlight Type             guifg=#b0b0b0  ctermfg=249  gui=NONE   cterm=NONE
highlight StorageClass     guifg=#b0b0b0  ctermfg=249  gui=NONE   cterm=NONE
highlight Structure        guifg=#c0c0c0  ctermfg=250  gui=NONE   cterm=NONE
highlight Typedef          guifg=#b0b0b0  ctermfg=249  gui=NONE   cterm=NONE
highlight Special          guifg=#707070  ctermfg=243  gui=NONE   cterm=NONE
highlight SpecialChar      guifg=#a090c7  ctermfg=141  gui=NONE   cterm=NONE
highlight Tag              guifg=#a0a0a0  ctermfg=248  gui=NONE   cterm=NONE
highlight Delimiter        guifg=#d0d0d0  ctermfg=252  gui=NONE   cterm=NONE
highlight Debug            guifg=#b0b0b0  ctermfg=249  gui=NONE   cterm=NONE
highlight PreProc          guifg=#a090c7  ctermfg=141  gui=NONE   cterm=NONE
highlight PreCondit        guifg=#a0a0a0  ctermfg=248  gui=NONE   cterm=NONE
highlight Include          guifg=#a0a0a0  ctermfg=248  gui=NONE   cterm=NONE
highlight Define           guifg=#b0b0b0  ctermfg=249  gui=NONE   cterm=NONE
highlight Macro            guifg=#a090c7  ctermfg=141  gui=NONE   cterm=NONE
highlight StatusLine       guibg=#141414  guifg=#d0d0d0  ctermbg=233  ctermfg=252  gui=NONE  cterm=NONE
highlight StatusLineNC     guibg=#0a0a0a  guifg=#4a4a4a  ctermbg=0    ctermfg=239  gui=NONE  cterm=NONE
highlight Visual           guibg=#2a2a2a  ctermbg=235  gui=NONE   cterm=NONE
highlight Search           guibg=#3a3a3a  guifg=#ffffff  ctermbg=237  ctermfg=15   gui=NONE  cterm=NONE
highlight IncSearch        guibg=#4a4a4a  guifg=#ffffff  ctermbg=239  ctermfg=15   gui=bold  cterm=bold
highlight MatchParen       guibg=#3a3a3a  guifg=#b0b0b0  ctermbg=237  ctermfg=249  gui=bold  cterm=bold
highlight Error            guibg=#1a1a1a  guifg=#e06060  ctermbg=234  ctermfg=167  gui=undercurl  cterm=undercurl
highlight WarningMsg       guifg=#d08030  ctermfg=173  gui=NONE   cterm=NONE
highlight ErrorMsg         guibg=#1a1a1a  guifg=#e06060  ctermbg=234  ctermfg=167  gui=bold  cterm=bold
highlight ModeMsg          guifg=#d0d0d0  ctermfg=252  gui=NONE   cterm=NONE
highlight Folded           guibg=#141414  guifg=#6a6a6a  ctermbg=233  ctermfg=242  gui=italic  cterm=italic
highlight FoldColumn       guibg=#0a0a0a  guifg=#3a3a3a  ctermbg=0    ctermfg=237  gui=NONE    cterm=NONE
highlight TabLine          guibg=#141414  guifg=#6a6a6a  ctermbg=233  ctermfg=242  gui=NONE    cterm=NONE
highlight TabLineFill      guibg=#0a0a0a                 ctermbg=0                 gui=NONE    cterm=NONE
highlight TabLineSel       guibg=#1a1a1a  guifg=#d0d0d0  ctermbg=234  ctermfg=252  gui=bold    cterm=bold
highlight Title            guifg=#b0b0b0  ctermfg=249  gui=bold   cterm=bold
highlight DiffAdd          guibg=#1a2a1a  guifg=#70c070  ctermbg=22   ctermfg=77   gui=NONE  cterm=NONE
highlight DiffDelete       guibg=#2a1a1a  guifg=#e06060  ctermbg=52   ctermfg=167  gui=NONE  cterm=NONE
highlight DiffChange       guibg=#2a2a1a  guifg=#c0a050  ctermbg=58   ctermfg=179  gui=NONE  cterm=NONE
highlight DiffText         guibg=#3a3a1a  guifg=#d0b060  ctermbg=58   ctermfg=179  gui=bold  cterm=bold
highlight VertSplit        guibg=#0a0a0a  guifg=#1a1a1a  ctermbg=0    ctermfg=234  gui=NONE  cterm=NONE
highlight SignColumn       guibg=#0a0a0a  guifg=#3a3a3a  ctermbg=0    ctermfg=237  gui=NONE  cterm=NONE
highlight Underlined       guifg=#a090c7  ctermfg=141  gui=underline  cterm=underline
highlight Directory        guifg=#8b7fc7  ctermfg=104  gui=bold       cterm=bold
highlight Question         guifg=#d0d0d0  ctermfg=252  gui=NONE       cterm=NONE
highlight MoreMsg          guifg=#d0d0d0  ctermfg=252  gui=NONE       cterm=NONE
highlight WildMenu         guibg=#2a2a2a  guifg=#d0d0d0  ctermbg=235  ctermfg=252  gui=NONE  cterm=NONE
highlight Pmenu            guibg=#141414  guifg=#d0d0d0  ctermbg=233  ctermfg=252  gui=NONE  cterm=NONE
highlight PmenuSel         guibg=#2a2a2a  guifg=#ffffff  ctermbg=235  ctermfg=15   gui=bold  cterm=bold
highlight PmenuSbar        guibg=#1a1a1a                 ctermbg=234               gui=NONE  cterm=NONE
highlight PmenuThumb       guibg=#3a3a3a                 ctermbg=237               gui=NONE  cterm=NONE
" Git 
highlight GitGutterAdd          guifg=#70c070  guibg=#0a0a0a  ctermfg=77   ctermbg=0  gui=NONE  cterm=NONE
highlight GitGutterChange       guifg=#c0a050  guibg=#0a0a0a  ctermfg=179  ctermbg=0  gui=NONE  cterm=NONE
highlight GitGutterDelete       guifg=#e06060  guibg=#0a0a0a  ctermfg=167  ctermbg=0  gui=NONE  cterm=NONE
highlight GitGutterChangeDelete guifg=#d08030  guibg=#0a0a0a  ctermfg=173  ctermbg=0  gui=NONE  cterm=NONE
highlight GitGutterAddLineNr          guifg=#70c070  guibg=#0a0a0a  ctermfg=77   ctermbg=0
highlight GitGutterChangeLineNr       guifg=#c0a050  guibg=#0a0a0a  ctermfg=179  ctermbg=0
highlight GitGutterDeleteLineNr       guifg=#e06060  guibg=#0a0a0a  ctermfg=167  ctermbg=0
highlight GitGutterChangeDeleteLineNr guifg=#d08030  guibg=#0a0a0a  ctermfg=173  ctermbg=0
highlight GvAdd     guifg=#70c070  ctermfg=77   gui=bold  cterm=bold
highlight GvDelete  guifg=#e06060  ctermfg=167  gui=bold  cterm=bold
highlight GvHash    guifg=#8b7fc7  ctermfg=104  gui=NONE  cterm=NONE
highlight GvAuthor  guifg=#b0b0b0  ctermfg=249  gui=italic  cterm=italic
highlight GvDate    guifg=#6a6a6a  ctermfg=242  gui=NONE    cterm=NONE
highlight GvMessage guifg=#d0d0d0  ctermfg=252  gui=NONE    cterm=NONE
highlight SpellBad   guibg=#2a1a1a  ctermbg=52  gui=undercurl  cterm=undercurl
highlight SpellCap   guibg=#1a2a1a  ctermbg=22  gui=undercurl  cterm=undercurl
highlight SpellRare  guibg=#2a2a1a  ctermbg=58  gui=undercurl  cterm=undercurl
highlight SpellLocal guibg=#1a2a2a  ctermbg=23  gui=undercurl  cterm=undercurl
"" Netrw
highlight netrwDir       guifg=#a78bfa  ctermfg=141  gui=bold
highlight netrwClassify  guifg=#52525b  ctermfg=240  gui=NONE
highlight netrwExe       guifg=#86efac  ctermfg=121  gui=bold
highlight netrwSymLink   guifg=#94a3b8  ctermfg=103  gui=italic