# VEX Complete Keymaps & Commands Reference

## Table of Contents
1. [Basic Editor Operations](#basic-editor-operations)
2. [Navigation & Movement](#navigation--movement)
3. [File Explorer (netrw)](#file-explorer-netrw)
4. [Fuzzy Finder (FZF)](#fuzzy-finder-fzf)
5. [Window & Tab Management](#window--tab-management)
6. [Terminal](#terminal)
7. [Git Operations](#git-operations)
8. [LSP (Language Server Protocol)](#lsp-language-server-protocol)
9. [Vim Built-in Commands](#vim-built-in-commands)
10. [Plugin-Specific Commands](#plugin-specific-commands)
11. [Helper Commands](#helper-commands)

---

## Basic Editor Operations

### Undo/Redo
| Key | Mode | Action |
|-----|------|--------|
| `Ctrl+Z` | Normal, Insert | Undo |
| `Ctrl+Y` | Normal | Redo |
| `Ctrl+R` | Insert | Redo |

### Cut/Copy/Paste
| Key | Mode | Action |
|-----|------|--------|
| `Ctrl+X` | Normal, Visual, Insert | Cut line/selection |
| `Ctrl+C` | Normal, Visual, Insert | Copy line/selection |
| `Ctrl+V` | Normal, Visual, Insert | Paste |
| `Ctrl+Shift+V` | Normal | Paste before cursor |

### Select & Save
| Key | Mode | Action |
|-----|------|--------|
| `Ctrl+A` | Normal, Visual, Insert | Select all |
| `Ctrl+S` | Normal, Visual, Insert | Save file |

### Indentation
| Key | Mode | Action |
|-----|------|--------|
| `Tab` | Normal, Visual | Increase indentation |
| `Shift+Tab` | Normal, Visual, Insert | Decrease indentation |

### Comment
| Key | Mode | Action |
|-----|------|--------|
| `Ctrl+/` | Normal, Visual, Insert | Toggle comment |

---

## Navigation & Movement

### Line Navigation
| Key | Mode | Action |
|-----|------|--------|
| `Home` | Normal, Insert, Visual | Jump to line start |
| `End` | Normal, Insert, Visual | Jump to line end |
| `Shift+Home` | Normal, Insert | Select to line start |
| `Shift+End` | Normal, Insert | Select to line end |

### Word Navigation
| Key | Mode | Action |
|-----|------|--------|
| `Ctrl+Left` | Normal, Insert, Visual | Move word left |
| `Ctrl+Right` | Normal, Insert, Visual | Move word right |
| `Ctrl+Shift+Left` | Normal, Insert, Visual | Select word left |
| `Ctrl+Shift+Right` | Normal, Insert, Visual | Select word right |

### Character Selection
| Key | Mode | Action |
|-----|------|--------|
| `Shift+Left/Right/Up/Down` | Normal, Insert | Select character by character |

### Vim Native Navigation
| Key | Mode | Action |
|-----|------|--------|
| `h/j/k/l` | Normal | Left/Down/Up/Right |
| `w` | Normal | Next word start |
| `b` | Normal | Previous word start |
| `e` | Normal | End of word |
| `0` | Normal | Line start |
| `$` | Normal | Line end |
| `gg` | Normal | File start |
| `G` | Normal | File end |
| `{number}G` | Normal | Go to line number |
| `Ctrl+D` | Normal | Half page down |
| `Ctrl+U` | Normal | Half page up |
| `Ctrl+F` | Normal | Full page down |
| `Ctrl+B` | Normal | Full page up |

---

## File Explorer (netrw)

### Toggle Explorer
| Key | Action |
|-----|--------|
| `Ctrl+N` | Toggle file explorer |

### Navigation
| Key | Action |
|-----|--------|
| `l`, `L`, `Enter` | Open directory/file |
| `h`, `H`, `Backspace` | Go up directory |
| `.` | Toggle hidden files |
| `i`, `I` | Cycle through view styles |

### File Operations
| Key | Action |
|-----|--------|
| `m`, `%` | Create new file |
| `M`, `d` | Create new directory |
| `dd`, `DD`, `D` | Delete file/directory |
| `rr`, `RR`, `R` | Rename file/directory |

### Opening Files
| Key | Action |
|-----|--------|
| `o`, `O` | Open in current window |
| `v`, `V` | Open in vertical split |
| `t`, `T` | Open in new tab |
| `s`, `S` | Open in horizontal split |

### Directory Operations
| Key | Action |
|-----|--------|
| `c`, `C` | Change vim's working directory |
| `cd`, `CD` | Set current directory as working directory |

### Marking Files
| Key | Action |
|-----|--------|
| `Tab` | Mark file |
| `Shift+Tab` | Unmark file |
| `\Tab` | Unmark all files |

### Other
| Key | Action |
|-----|--------|
| `r`, `R`, `Ctrl+R` | Refresh listing |
| `?`, `F1` | Show help |
| `q`, `Q` | Close explorer |

### Helper Commands
```vim
" Create directories
:Mkdir dir1 dir2 dir3
:MkdirP src/{core,utils,events,http}

" Create files
:Touch file1.js file2.js

" Remove directories
:Rmdir old_folder

" Examples:
:Mkdir src/components src/styles
:MkdirP app/{models,views,controllers}
:Touch src/index.js src/app.js
```

### netrw Built-in Commands
Full documentation: `:help netrw`

---

## Fuzzy Finder (FZF)

### Main Commands
| Command | Action |
|---------|--------|
| `:Files` | Search files in current directory |
| `:GFiles` | Search git-tracked files |
| `:Buffers` | Search open buffers |
| `:Lines` | Search lines in all buffers |
| `:BLines` | Search lines in current buffer |
| `:Tags` | Search tags |
| `:Marks` | Search marks |
| `:Windows` | Search windows |
| `:History` | Search command history |
| `:History:` | Search command history |
| `:History/` | Search search history |
| `:Commands` | Search available commands |
| `:Maps` | Search key mappings |
| `:Helptags` | Search help tags |
| `:Colors` | Search color schemes |

### Inside FZF Window
| Key | Action |
|-----|--------|
| `Enter` | Open in current window |
| `Ctrl+T` | Open in new tab |
| `Ctrl+X` | Open in horizontal split |
| `Ctrl+V` | Open in vertical split |
| `Ctrl+/` | Toggle preview window |
| `Ctrl+N/Ctrl+J` | Next item |
| `Ctrl+P/Ctrl+K` | Previous item |
| `Tab` | Select multiple |
| `Shift+Tab` | Deselect |
| `Esc` | Close FZF |

### Advanced Commands
```vim
" Search with ripgrep
:Rg <pattern>

" Search in specific directory
:Files ~/projects

" Git files status
:GFiles?

" Recent files
:History
```

Full FZF documentation: https://github.com/junegunn/fzf.vim

---

## Window & Tab Management

### Split Windows
| Key | Action |
|-----|--------|
| `Ctrl+\` | Vertical split |
| `Ctrl+Shift+\` | Horizontal split |
| `Ctrl+Shift+W` | Close window |

### Navigate Between Splits
| Key | Action |
|-----|--------|
| `Ctrl+Shift+H` | Focus left window |
| `Ctrl+Shift+J` | Focus down window |
| `Ctrl+Shift+K` | Focus up window |
| `Ctrl+Shift+L` | Focus right window |

### Resize Windows
| Key | Action |
|-----|--------|
| `Ctrl+Shift+Left` | Decrease width |
| `Ctrl+Shift+Right` | Increase width |
| `Ctrl+Shift+Up` | Decrease height |
| `Ctrl+Shift+Down` | Increase height |

### Tab Management
| Key | Action |
|-----|--------|
| `Ctrl+T` | New tab |
| `Ctrl+W` | Close tab |
| `Ctrl+Tab` | Next tab |
| `Ctrl+Shift+Tab` | Previous tab |
| `Alt+1` to `Alt+9` | Jump to tab 1-9 |

### Vim Native Window Commands
| Command | Action |
|---------|--------|
| `:split` | Horizontal split |
| `:vsplit` | Vertical split |
| `:new` | New window with empty buffer |
| `:only` | Close all other windows |
| `Ctrl+W =` | Equal size all windows |
| `Ctrl+W _` | Maximize height |
| `Ctrl+W \|` | Maximize width |

---

## Terminal

### Terminal Commands
| Key | Mode | Action |
|-----|------|--------|
| `Ctrl+Backtick` | Normal | Open embedded terminal |
| `Ctrl+Shift+T` | Normal, Insert, Terminal | Toggle floating terminal |
| `Esc` | Terminal | Exit terminal mode |

### Navigate from Terminal
| Key | Mode | Action |
|-----|------|--------|
| `Alt+H` | Terminal | Focus left window |
| `Alt+J` | Terminal | Focus down window |
| `Alt+K` | Terminal | Focus up window |
| `Alt+L` | Terminal | Focus right window |

### Terminal Commands
```vim
" Open terminal
:terminal

" Open terminal in split
:split | terminal
:vsplit | terminal

" Run command in terminal
:terminal npm start
```

---

## Git Operations

**Note:** Git commands use leader key (`\` by default)

### Git Status & Info
| Key | Action |
|-----|--------|
| `\gs`, `\gS` | Git status |
| `\gl`, `\gL` | Git log |
| `\gd`, `\gD` | Git diff (split view) |
| `\gb`, `\gB` | Git blame |

### Git Operations
| Key | Action |
|-----|--------|
| `\ga`, `\gA` | Git add current file |
| `\ga.` | Git add all files |
| `\gaf` | Git add current file |
| `\gc`, `\gC` | Git commit |
| `\gp` | Git push |
| `\gP` | Git pull |

### Git Branch Management
| Key | Action |
|-----|--------|
| `\gco`, `\gCO` | Git checkout (branch) |
| `\gnb`, `\gNB` | Create new branch |
| `\gm`, `\gM` | Git merge |

### Git Stash
| Key | Action |
|-----|--------|
| `\gst`, `\gST` | Git stash |
| `\gsp`, `\gSP` | Git stash pop |

### Git Remote
| Key | Action |
|-----|--------|
| `\gf`, `\gF` | Git fetch |

### GitGutter (Change Navigation)
| Key | Action |
|-----|--------|
| `]h`, `]H` | Next hunk (change) |
| `[h`, `[H` | Previous hunk (change) |

### GitGutter Actions
| Key | Action |
|-----|--------|
| `\hp`, `\hP` | Preview hunk |
| `\hs`, `\hS` | Stage hunk |
| `\hu`, `\hU` | Undo hunk |
| `\ht`, `\hT` | Toggle GitGutter |
| `\hn`, `\hN` | Toggle line number highlights |

### Git Text Objects
| Key | Mode | Action |
|-----|------|--------|
| `ih` | Operator/Visual | Inner hunk |
| `ah` | Operator/Visual | Around hunk |

**Example:** `dih` deletes inner hunk, `vih` selects inner hunk

### vim-fugitive Commands
```vim
" Basic commands
:Git                    " Git status
:Git add %              " Add current file
:Git commit             " Commit
:Git push               " Push
:Git pull               " Pull
:Git log                " Log
:Git blame              " Blame

" Advanced commands
:Gdiffsplit            " Diff split view
:Gwrite                " Stage current file and write
:Gread                 " Checkout current file
:Gvdiffsplit           " Vertical diff split
:GMove                 " Move/rename file
:GDelete               " Delete file
:GBrowse               " Open in GitHub/GitLab

" Git log viewer
:Gclog                 " Load commits in quickfix
:0Gclog                " Load commits for current file
```

Full documentation: https://github.com/tpope/vim-fugitive

---

## LSP (Language Server Protocol)

### LSP Management
| Key | Action |
|-----|--------|
| `\li` | LSP info |
| `\lr` | LSP restart |
| `\ll` | LSP log |

### LSP Navigation
| Command | Action |
|---------|--------|
| `:LspDefinition` | Go to definition |
| `:LspDeclaration` | Go to declaration |
| `:LspTypeDefinition` | Go to type definition |
| `:LspImplementation` | Go to implementation |
| `:LspReferences` | Show references |

### LSP Information
| Command | Action |
|---------|--------|
| `:LspHover` | Show hover information |
| `:LspDocumentSymbol` | Show document symbols |
| `:LspWorkspaceSymbol` | Search workspace symbols |
| `:LspDocumentDiagnostics` | Show document diagnostics |

### LSP Actions
| Command | Action |
|---------|--------|
| `:LspRename` | Rename symbol |
| `:LspCodeAction` | Show code actions |
| `:LspDocumentFormat` | Format document |
| `:LspDocumentRangeFormat` | Format selection |

### LSP Diagnostics Navigation
| Command | Action |
|---------|--------|
| `:LspNextDiagnostic` | Next diagnostic |
| `:LspPreviousDiagnostic` | Previous diagnostic |
| `:LspNextError` | Next error |
| `:LspPreviousError` | Previous error |

### LSP Server Management
```vim
" Install language server
:LspInstallServer

" Server info
:LspStatus
:LspInfo

" Enable/disable
:LspEnable
:LspDisable
```

Full documentation: https://github.com/prabirshrestha/vim-lsp

---

## Search & Replace

### Search
| Key | Mode | Action |
|-----|------|--------|
| `Ctrl+F` | Normal, Insert | Start search |
| `F3` | Normal, Insert | Find next |
| `Shift+F3` | Normal, Insert | Find previous |
| `Ctrl+F` | Visual | Search in selection |

### Replace
| Key | Mode | Action |
|-----|------|--------|
| `Ctrl+H` | Normal, Insert | Find and replace |

### Vim Native Search
```vim
" Search forward
/pattern

" Search backward
?pattern

" Search word under cursor
*               " Forward
#               " Backward

" Find and replace
:%s/old/new/g           " Replace all in file
:%s/old/new/gc          " Replace with confirmation
:10,20s/old/new/g       " Replace in lines 10-20
:'<,'>s/old/new/g       " Replace in visual selection

" Case sensitivity
/pattern\c              " Ignore case
/pattern\C              " Match case

" Clear search highlight
:noh
```

---

## Vim Built-in Commands

### File Operations
```vim
:e filename             " Edit file
:w                      " Save
:w filename             " Save as
:wa                     " Save all
:q                      " Quit
:q!                     " Quit without saving
:wq                     " Save and quit
:x                      " Save and quit (only if modified)
:qa                     " Quit all
:qa!                    " Quit all without saving

:saveas filename        " Save as and continue editing new file
:file newname           " Rename buffer (doesn't rename file)
```

### Buffer Operations
```vim
:ls                     " List buffers
:bnext / :bn            " Next buffer
:bprevious / :bp        " Previous buffer
:buffer N / :b N        " Go to buffer N
:bfirst / :bf           " First buffer
:blast / :bl            " Last buffer
:bdelete / :bd          " Delete buffer
:bufdo command          " Execute command on all buffers
```

### Editing Commands
```vim
:r filename             " Read file and insert below cursor
:r !command             " Insert command output below cursor
:w !command             " Send buffer to command stdin

" Examples:
:r !date                " Insert current date
:r !ls                  " Insert directory listing
:w !wc -w               " Count words
```

### Registers
```vim
"ay                     " Yank to register a
"ap                     " Paste from register a
:reg                    " Show all registers
:reg a b c              " Show registers a, b, c

" Special registers:
" unnamed register (default)
"+ system clipboard
"* system selection (X11)
"0 last yank
"1-9 last deletes
"/ last search
": last command
```

### Marks
```vim
ma                      " Set mark 'a' at cursor
'a                      " Jump to mark 'a'
`a                      " Jump to exact position of mark 'a'
:marks                  " Show all marks
:delmarks a b c         " Delete marks a, b, c
:delmarks!              " Delete all lowercase marks

" Special marks:
'. last change
'' previous location
'[ start of last change/yank
'] end of last change/yank
```

### Folding
```vim
zo                      " Open fold
zc                      " Close fold
za                      " Toggle fold
zR                      " Open all folds
zM                      " Close all folds
zj                      " Move to next fold
zk                      " Move to previous fold
```

### Macros
```vim
qa                      " Record macro in register 'a'
q                       " Stop recording
@a                      " Execute macro 'a'
@@                      " Execute last macro
10@a                    " Execute macro 'a' 10 times
```

### Visual Mode
```vim
v                       " Character-wise visual mode
V                       " Line-wise visual mode
Ctrl+V                  " Block-wise visual mode
gv                      " Reselect last visual selection
o                       " Move to other end of selection
```

### Text Objects
```vim
iw                      " Inner word
aw                      " A word (with whitespace)
is                      " Inner sentence
as                      " A sentence
ip                      " Inner paragraph
ap                      " A paragraph
i( or i)                " Inner parentheses
a( or a)                " A parentheses
i[ or i]                " Inner brackets
a[ or a]                " A brackets
i{ or i}                " Inner braces
a{ or a}                " A braces
i< or i>                " Inner angle brackets
a< or a>                " A angle brackets
i' or i"                " Inner quotes
a' or a"                " A quotes
it                      " Inner tag
at                      " A tag

" Examples:
diw                     " Delete inner word
ci"                     " Change inside quotes
va(                     " Select around parentheses
dit                     " Delete inside HTML/XML tag
```

---

## Plugin-Specific Commands

### vim-surround
Full documentation: https://github.com/tpope/vim-surround

```vim
" Add surroundings
ysiw"                   " Surround word with "
yss)                    " Surround line with ()
ysiw<em>                " Surround word with <em></em>

" Change surroundings
cs"'                    " Change " to '
cs'<q>                  " Change ' to <q></q>
cst"                    " Change tag to "

" Delete surroundings
ds"                     " Delete "
dst                     " Delete tag

" Visual mode
S"                      " Surround selection with "
```

### vim-easymotion
```vim
" Default mappings (with <Leader><Leader> prefix)
<Leader><Leader>w       " Beginning of words
<Leader><Leader>b       " Beginning of words backward
<Leader><Leader>e       " End of words
<Leader><Leader>f{char} " Find character forward
<Leader><Leader>F{char} " Find character backward
<Leader><Leader>t{char} " Till character forward
<Leader><Leader>j       " Line downward
<Leader><Leader>k       " Line upward
<Leader><Leader>s{char} " Search character
```

Full documentation: https://github.com/easymotion/vim-easymotion

### vim-repeat
Works automatically with supported plugins like vim-surround. Press `.` to repeat the last plugin command.

Full documentation: https://github.com/tpope/vim-repeat

### editorconfig-vim
Works automatically when .editorconfig file is present. No special commands needed.

Full documentation: https://github.com/editorconfig/editorconfig-vim

### vim-airline
```vim
:AirlineTheme <theme>   " Change theme
:AirlineToggle          " Toggle airline
:AirlineRefresh         " Refresh airline
```

Full documentation: https://github.com/vim-airline/vim-airline

---

## VEX Custom Commands

### VEX Management
```vim
:VexReload              " Reload configuration (also F5)
:VexInfo                " Show VEX information
```

### Shell Commands
```bash
vex                     " Start VEX
vex file.txt            " Open file
vex .                   " Open file explorer
vex file1 file2         " Open multiple files

vex install             " Install VEX
vex update              " Update VEX and plugins
vex doctor              " Run health checks
vex version             " Show version

# Configuration
vex config edit         " Edit configuration
vex config reload       " Reload configuration
vex config path         " Show paths

# Plugin management
vex plugin list         " List plugins
vex plugin install      " Install plugins
vex plugin update       " Update plugins
vex plugin purge        " Remove all plugins

# LSP management
vex lsp install         " Install LSP servers
vex lsp status          " Show LSP status
```

---

## Common Vim Commands Reference

### Help System
```vim
:help                   " Open help
:help keyword           " Search help for keyword
:help :command          " Help for ex command
:help i_ctrl-x          " Help for insert mode command
:helpgrep pattern       " Search all help files
```

### System Commands
```vim
:!command               " Execute shell command
:sh                     " Open shell
:read !command          " Insert command output
:write !command         " Send buffer to command
```

### Settings
```vim
:set option             " Set option
:set option?            " Show option value
:set option!            " Toggle boolean option
:set option&            " Reset option to default
:setlocal option        " Set option for current buffer only

" Common options:
:set number             " Show line numbers
:set relativenumber     " Show relative line numbers
:set wrap               " Wrap lines
:set ignorecase         " Ignore case in search
:set smartcase          " Smart case search
:set hlsearch           " Highlight search
:set incsearch          " Incremental search
```

---

## Tips & Tricks

### Caps Lock Handling
If Caps Lock causes issues, add to your shell config:
```bash
# Disable Caps Lock
setxkbmap -option caps:none

# Or map it to Escape
setxkbmap -option caps:escape
```

### Quick File Navigation
```vim
:e **/*pattern<Tab>     " Find files recursively
:find filename<Tab>     " Find in path
gf                      " Go to file under cursor
Ctrl+^                  " Switch to alternate file
```

### Quickfix List
```vim
:copen                  " Open quickfix window
:cclose                 " Close quickfix window
:cnext                  " Next item
:cprevious              " Previous item
:cfirst                 " First item
:clast                  " Last item
:cdo command            " Execute command on each item
```

### Useful Combinations
```vim
ciw                     " Change word
dap                     " Delete paragraph
vip                     " Select paragraph
ggVG                    " Select entire file
]m                      " Next method (in some languages)
[m                      " Previous method
```

---

## Complete Keymaps Cheat Sheet

### Leader Key
The leader key is `\` by default. Change it in `src/core/settings.vim`

### All Keymaps at a Glance

| Category | Key | Action |
|----------|-----|--------|
| **Basic** | `Ctrl+Z` | Undo |
| | `Ctrl+Y` | Redo |
| | `Ctrl+S` | Save |
| | `Ctrl+A` | Select all |
| **Navigation** | `Ctrl+N` | Toggle file explorer |
| | `Ctrl+\` | Vertical split |
| | `Ctrl+T` | New tab |
| **Git** | `\gs` | Git status |
| | `\gd` | Git diff |
| | `\gc` | Git commit |
| **LSP** | `\li` | LSP info |
| **VEX** | `F5` | Reload config |

---

## Getting More Help

- VEX documentation: `docs/` directory
- Vim help: `:help` or `:help <topic>`
- Plugin documentation: See individual plugin links above
- VEX health check: `vex doctor`

---

**Last Updated:** December 2025  
**VEX Version:** 1.0.0