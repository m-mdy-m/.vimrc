# Settings

VEX configures vim with sensible defaults that work for most development tasks. The configuration aims for a productive environment without excessive customization.

## File Location

All settings live in src/core/settings.vim. This file controls vim's behavior, appearance, and features. Changes here affect every file you edit.

After modifying settings, reload your configuration with :VexReload or press F5. Some changes might require restarting vim completely.

## Text Editing

The editor uses spaces for indentation with a width of four spaces. This matches common conventions in most programming languages. Tab characters expand to spaces automatically.

Lines wrap visually at word boundaries, but vim doesn't insert actual line breaks. This lets you write long paragraphs while keeping them easy to read on screen.

Text width has no limit by default. If you want hard wrapping at a certain column, set textwidth to your desired value.

## Search Behavior

Searches ignore case when you type lowercase letters, but become case-sensitive if you include uppercase. This makes searching quick without losing precision.

Search highlighting stays on after a search finishes. Use :noh to clear highlighting when you're done searching.

Incremental search shows matches as you type. The editor jumps to the first match immediately and updates as you refine the search.

## Display Options

Line numbers appear on the left as relative numbers. This makes it easy to jump several lines with a count and motion. The current line shows its absolute number.

The sign column always displays, even in files without signs. This prevents the editor from shifting horizontally when signs appear.

A colored column can mark a specific width if you set colorcolumn. By default, no column markers appear.

The cursor line highlights in the current window. When you switch windows, the highlight moves with your cursor.

## File Management

Vim automatically reads files when they change on disk. If you're editing a file and something else modifies it, vim notices and offers to reload.

Auto-write saves files when you switch to a different file or close vim. This prevents the common mistake of forgetting to save.

Backup and swap files are disabled. Instead, persistent undo tracks your changes across sessions. The undo history saves in ~/.vim/undo and survives vim restarts.

## Split Behavior

New horizontal splits open below the current window. New vertical splits open to the right. This matches the natural reading direction and feels more intuitive.

Split windows can resize below their minimum size, letting you focus space on whatever you're currently working on.

## Completion

The popup menu shows up to fifteen items at once. This provides enough options without filling the screen.

Completion messages are brief. Vim won't show "match 1 of 2" style messages that interrupt your typing flow.

## Mouse and Clipboard

Mouse support works in all modes if your terminal supports it. You can click to position the cursor, drag to select text, and scroll with the wheel.

The clipboard integrates with your system clipboard. Yanking copies to the system clipboard, and you can paste from other applications directly.

## Visual Elements

Special characters like tabs and trailing spaces show as visible symbols. Tabs appear as arrows, trailing spaces as dots. This makes whitespace issues obvious without being distracting.

The status line always displays, showing mode, filename, cursor position, and other information. This line updates in real time as you work.

Command mode displays at the bottom of the screen. When you type a command or search, you'll see what you're typing.

## Terminal Integration

Terminal windows open at the bottom of the screen with a default height. The terminal uses Ctrl+_ as its escape key to avoid conflicts with normal vim commands.

Cursor shape changes based on mode. Normal mode shows a block cursor, insert mode shows a vertical bar, and replace mode shows an underscore. Your terminal needs to support ANSI escape sequences for this to work.

## Performance

Vim redraws lazily, only updating the screen when necessary. This makes scrolling and movement faster, especially in large files.

The fast terminal option tells vim your terminal is fast enough to handle quick redraw operations. This should be enabled for most modern terminals.

File syntax highlighting loads on demand. Files without syntax defined won't try to apply highlighting, keeping vim responsive.

## Customization

The leader key is backslash by default. Commands that use the leader key prefix their mappings with this character. Many users prefer setting the leader to comma or space for easier access.

Vim loads settings in order. Core settings load first, then UI configuration, then keymaps. This ensures that later settings can reference earlier ones.

Some settings depend on vim features that might not be available in older versions. The configuration checks for these features before enabling them, so it works across different vim installations.

## Platform Differences

Settings adjust automatically based on your platform. Windows paths use backslashes, while Unix systems use forward slashes. The configuration handles these differences internally.

WSL environments are detected and treated like Linux. This means Ubuntu on Windows gets the same settings as native Ubuntu.

macOS uses slightly different clipboard behavior. The configuration accounts for this so copying and pasting works the same way across platforms.

## File Browser

FTX provides an async file tree with git integration. It opens as a sidebar showing your project structure with real-time git status indicators.

The browser updates automatically when files change. Git status shows immediately after saving. Mark multiple files for batch operations like opening all in tabs or staging to git.

FTX works entirely with vim's job system. All file operations happen asynchronously without blocking the editor. Large directories load progressively.

Tree state persists across sessions. Expanded directories stay expanded when you reopen vim. The browser syncs to your current file automatically when you switch buffers.