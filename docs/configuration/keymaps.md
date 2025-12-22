# Keymaps

VEX uses familiar keyboard shortcuts that work across different modes. Most bindings follow standard editor conventions.

## Basic Operations

| Key | Mode | Action |
|-----|------|--------|
| `Ctrl+Z` | Normal, Insert | Undo |
| `Ctrl+Y` | Normal, Insert | Redo |
| `Ctrl+X` | Normal, Visual, Insert | Cut line/selection |
| `Ctrl+C` | Normal, Visual, Insert | Copy line/selection |
| `Ctrl+V` | Normal, Visual, Insert | Paste |
| `Ctrl+Shift+V` | Normal | Paste before cursor |
| `Ctrl+A` | Normal, Visual, Insert | Select all |
| `Ctrl+S` | Normal, Visual, Insert | Save file |

## Navigation

| Key | Mode | Action |
|-----|------|--------|
| `Home` | Normal, Insert, Visual | Jump to line start |
| `End` | Normal, Insert, Visual | Jump to line end |
| `Shift+Home` | Normal, Insert | Select to line start |
| `Shift+End` | Normal, Insert | Select to line end |
| `Ctrl+Left` | Normal, Insert, Visual | Move by word left |
| `Ctrl+Right` | Normal, Insert, Visual | Move by word right |
| `Shift+Left/Right/Up/Down` | Normal, Insert | Select character by character |
| `Ctrl+Shift+Left/Right` | Normal, Insert, Visual | Select by word |

## Text Editing

| Key | Mode | Action |
|-----|------|--------|
| `Tab` | Normal, Visual | Increase indentation |
| `Shift+Tab` | Normal, Visual, Insert | Decrease indentation |
| `Ctrl+/` | Normal, Visual, Insert | Toggle comment |

## Search and Replace

| Key | Mode | Action |
|-----|------|--------|
| `Ctrl+F` | Normal, Insert | Start search |
| `F3` | Normal, Insert | Find next |
| `Shift+F3` | Normal, Insert | Find previous |
| `Ctrl+H` | Normal, Insert | Find and replace |
| `Ctrl+F` | Visual | Search in selection |

## Window Management

| Key | Mode | Action |
|-----|------|--------|
| `Ctrl+\` | Normal | Vertical split |
| `Ctrl+Shift+\` | Normal | Horizontal split |
| `Ctrl+Shift+W` | Normal | Close window |
| `Ctrl+Shift+H/J/K/L` | Normal | Navigate between splits |
| `Ctrl+Shift+Left/Right` | Normal | Resize vertical |
| `Ctrl+Shift+Up/Down` | Normal | Resize horizontal |

## Tab Management

| Key | Mode | Action |
|-----|------|--------|
| `Ctrl+T` | Normal, Insert | New tab |
| `Ctrl+W` | Normal | Close tab |
| `Ctrl+Tab` | Normal, Insert | Next tab |
| `Ctrl+Shift+Tab` | Normal, Insert | Previous tab |
| `Alt+1` through `Alt+9` | Normal | Jump to specific tab |

## File Explorer

| Key | Mode | Action |
|-----|------|--------|
| `Ctrl+N` | Normal | Toggle file explorer |

Inside the explorer:

| Key | Action |
|-----|--------|
| `Enter`, `L` | Open directory/file |
| `H`, `Backspace` | Go up directory |
| `O` | Open in current window |
| `V` | Open in vertical split |
| `S` | Open in horizontal split |
| `T` | Open in new tab |
| `R` | Refresh |
| `I` | Toggle view style |
| `Ctrl+H` | Toggle hidden files |
| `CD` | Set working directory |
| `C` | Change directory |
| `M` | Create file/directory |
| `?` | Show help |
| `Q` | Close explorer |

## Terminal

| Key | Mode | Action |
|-----|------|--------|
| `Ctrl+Backtick` | Normal | Open embedded terminal |
| `Ctrl+Shift+T` | Normal, Insert, Terminal | Toggle floating terminal |
| `Esc` | Terminal | Exit terminal mode |
| `Alt+H/J/K/L` | Terminal | Navigate to splits |

## Git Operations

All git commands use leader key (backslash `\` by default) followed by G.

| Key | Action |
|-----|--------|
| `\gs` | Git status |
| `\gl` | Git log |
| `\gd` | Git diff |
| `\ga` | Git add |
| `\ga.` | Git add all |
| `\gaf` | Git add current file |
| `\gc` | Git commit |
| `\gp` | Git push |
| `\gP` | Git pull |
| `\gco` | Git checkout branch |
| `\gnb` | Create new branch |
| `\gv` | Git log viewer |
| `\gV` | Git log for current file |
| `\gvf` | File history |

## LSP Commands

| Key | Action |
|-----|--------|
| `\li` | LSP info |
| `\lr` | LSP restart |
| `\ll` | LSP log |

## VEX Commands

| Key | Action |
|-----|--------|
| `F5` | Reload configuration |

## Customization

Change the leader key in `src/core/settings.vim`. Default is backslash but many users prefer comma or space.

Modify keybindings in `src/core/keymaps/` files. Each category has its own file for easier navigation.