" General Appearance Settings
syntax on                       " Enable syntax highlighting
set termguicolors               " Enable 24-bit RGB colors
set background=dark             " Use a dark theme
" Base Background and Text
highlight Normal ctermbg=NONE ctermfg=15 guibg=#1A1C1F guifg=#D3D7CF  " Dark neutral background, light gray text
highlight NonText ctermbg=NONE ctermfg=8 guibg=#1A1C1F guifg=#33353A  " Dim for non-text elements
highlight EndOfBuffer ctermbg=NONE ctermfg=8 guibg=#1A1C1F guifg=#1A1C1F " Hide trailing ~

" Line Numbers
highlight LineNr ctermbg=NONE ctermfg=8 guibg=#1A1C1F guifg=#555A60   " Muted gray line numbers
highlight CursorLineNr cterm=NONE ctermfg=11 guibg=#25282E guifg=#A3D4F7  " Soft highlight for current line number

" Cursor and Line Highlights
set cursorline                  " Highlight the current line
highlight CursorLine cterm=NONE ctermbg=0 guibg=#25282E              " Subtle gray for the cursor line
highlight CursorColumn ctermbg=NONE guibg=#2C3037                    " Slightly dim column

" Syntax Elements
highlight Comment cterm=italic ctermfg=8 guifg=#6C7075 gui=italic      " Dim gray for comments
highlight Constant ctermfg=6 guifg=#87C2DC                             " Light blue for constants
highlight String ctermfg=2 guifg=#A6D189                              " Green for strings
highlight Function ctermfg=4 guifg=#7AA6B6                            " Soft blue for functions
highlight Keyword ctermfg=5 guifg=#CBA6E3                             " Purple for keywords
highlight Identifier ctermfg=3 guifg=#E8BF6A                          " Warm amber for identifiers

" Status Line
highlight StatusLine cterm=NONE ctermbg=0 ctermfg=15 guibg=#21252B guifg=#E5E9F0
highlight StatusLineNC cterm=NONE ctermbg=0 ctermfg=8 guibg=#1A1C1F guifg=#616E88

" Visual Mode
highlight Visual ctermbg=0 guibg=#3A414A                              " Calm blue-gray for selections
highlight VisualNOS ctermbg=0 guibg=#50575F                           " Muted dark gray for non-overlapping selections

" Search Highlights
highlight Search cterm=NONE ctermbg=3 ctermfg=0 guibg=#B3A06D guifg=#2E3440
highlight IncSearch cterm=NONE ctermbg=1 ctermfg=15 guibg=#E06C75 guifg=#1A1C1F

" Match Parentheses
highlight MatchParen cterm=NONE ctermbg=4 guibg=#37424E guifg=#FFD27F " Amber and dark blue background

" Popup Menus
highlight Pmenu ctermbg=0 ctermfg=15 guibg=#23272E guifg=#D3D7CF
highlight PmenuSel ctermbg=4 ctermfg=15 guibg=#3A4250 guifg=#E8F2FE
highlight PmenuSbar ctermbg=8 guibg=#383D44
highlight PmenuThumb ctermbg=4 guibg=#87C2DC

" Error and Warning Messages
highlight ErrorMsg cterm=bold ctermfg=1 guibg=#2E3440 guifg=#F44747
highlight WarningMsg cterm=NONE ctermbg=0 ctermfg=3 guifg=#FFC66D

" Fold Appearance
highlight Folded cterm=italic ctermbg=0 ctermfg=8 guibg=#23272E guifg=#7E8B94
highlight FoldColumn ctermbg=NONE ctermfg=8 guifg=#616E88

" Tabline and Titles
highlight TabLine cterm=NONE ctermbg=0 ctermfg=8 guibg=#1A1C1F guifg=#7C8C94
highlight TabLineSel cterm=NONE ctermbg=4 ctermfg=15 guibg=#37424E guifg=#D3D7CF
highlight TabLineFill cterm=NONE ctermbg=0 guibg=#1A1C1F guifg=#33353A
highlight Title cterm=bold ctermfg=4 guifg=#87C2DC                    " Cool blue for titles

" Additional Highlights
highlight Directory ctermfg=6 guifg=#8CABB8                          " Cyan for directory names
highlight DiffAdd cterm=NONE ctermbg=2 guibg=#273C28 guifg=#A6D189    " Green for additions
highlight DiffDelete cterm=NONE ctermbg=1 guibg=#3C282C guifg=#E06C75 " Red for deletions
highlight DiffChange cterm=NONE ctermbg=3 guibg=#4A4030 guifg=#B3A06D " Yellow for changes
highlight DiffText cterm=bold ctermbg=4 guibg=#364E68 guifg=#CBA6E3   " Blue-purple for changed text

" Remove Extra Borders and Visual Noise
highlight WinSeparator cterm=NONE guibg=#1B1D20 guifg=#1B1D20        " Make window borders blend with background
highlight VertSplit guibg=#1B1D20 guifg=#1B1D20                     " Remove vertical split line
