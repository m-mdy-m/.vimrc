# Commands

VEX provides commands for managing your configuration and getting information about the system. These commands work from both the shell and within vim.

## Shell Commands

Run these from your terminal, not from within vim.

### vex

Opens vim with the VEX configuration. When called without arguments, it shows the VEX start screen. Pass a filename to open that file directly.

```bash
vex
vex file.txt
vex src/main.py
vex .
```

Multiple files open in separate tabs. Directories open in the file explorer.

### vex install

Installs VEX completely, including vim, plugins, and optionally LSP servers. This command handles everything from checking prerequisites to creating symlinks.

```bash
vex install
vex install --minimal
vex install --skip-lsp
vex install --skip-plugins
vex install --force
```

The minimal flag skips optional components. Skip-lsp avoids installing language servers. Skip-plugins installs only the base configuration. Force reinstalls even if VEX is already present.

### vex update

Updates both VEX itself and all installed plugins. If VEX was installed from git, this pulls the latest changes. It then updates plugins through vim-plug.

```bash
vex update
```

The command runs unattended once started. Updates happen in sequence to avoid conflicts.

### vex doctor

Checks your VEX installation and reports on what's working. It verifies vim installation, configuration links, plugins, and language servers.

```bash
vex doctor
```

Doctor runs quickly and doesn't modify anything. Use it when something seems wrong or after installation to verify everything worked.

### vex config

Manages configuration files.

```bash
vex config edit
vex config reload
vex config path
```

Edit opens your vimrc in the editor. Reload sources the configuration without restarting vim. Path shows where VEX stores its files.

### vex plugin

Handles plugin operations.

```bash
vex plugin list
vex plugin install
vex plugin update
vex plugin purge
```

List shows installed plugins by name. Install and update run vim-plug operations. Purge removes all plugin directories after confirmation.

### vex lsp

Works with language servers.

```bash
vex lsp install
vex lsp status
```

Install runs through the LSP installation script, checking for available package managers and installing servers. Status shows which servers are currently available on your system.

### vex version

Displays version information including the version number, build date, and git commit if installed from the repository.

```bash
vex version
```

### vex help

Shows usage information for the vex command. This gives a quick reference for available subcommands.

```bash
vex help
```

## Vim Commands

These commands work inside vim after VEX is loaded.

### VexReload

Sources the vimrc again without restarting vim. Useful when you've made configuration changes and want to apply them immediately.

```vim
:VexReload
```

You can also press F5 to reload.

### VexInfo

Shows information about the current VEX installation, including version, paths, plugin count, and vim version.

```vim
:VexInfo
```

### Plug Commands

vim-plug provides several commands for managing plugins.

PlugInstall downloads and installs plugins listed in your configuration. PlugUpdate updates installed plugins to their latest versions. PlugClean removes plugins that are no longer in your configuration. PlugUpgrade updates vim-plug itself.

```vim
:PlugInstall
:PlugUpdate
:PlugClean
:PlugUpgrade
:PlugStatus
```

PlugStatus shows the current state of all plugins, including their versions and whether updates are available.

### LSP Commands

When language servers are active, vim-lsp provides commands for interaction.

```vim
:LspDefinition
:LspReferences
:LspHover
:LspRename
:LspCodeAction
:LspDocumentFormat
:LspInfo
:LspStatus
```

These commands work based on your cursor position. Definition jumps to where something is defined. References shows all uses. Hover displays documentation. Rename changes a symbol everywhere it appears. CodeAction offers fixes for diagnostics.

DocumentFormat reformats the current file according to the language server's rules. Info and Status show language server state.

### Git Commands

When vim-gitgutter is loaded, it adds commands for working with git changes.

```vim
:GitGutterToggle
:GitGutterSignsToggle
:GitGutterLineHighlightsToggle
:GitGutterNextHunk
:GitGutterPrevHunk
:GitGutterStageHunk
:GitGutterUndoHunk
:GitGutterPreviewHunk
```

These control what gitgutter displays and how it behaves. Hunk commands work with individual changes in the current file.

### FZF Commands

FZF provides fuzzy finding for various things.

```vim
:Files
:GFiles
:Buffers
:Colors
:Rg
:Lines
:BLines
:Tags
:Marks
:Windows
:History
:Commands
```

Files searches all files in the current directory. GFiles searches only git-tracked files. Buffers searches open buffers. Rg searches file contents using ripgrep if available.

Each command opens a fuzzy finder where you can type to filter results. Press Enter to open the selected item, Ctrl+T to open in a tab, Ctrl+X for a split, or Ctrl+V for a vertical split.

## Command Patterns

Most VEX commands follow consistent patterns. Shell commands use lowercase with hyphens. Vim commands use CamelCase.

Commands that modify things usually require confirmation or provide clear output. Information commands run quietly and display their results simply.

You can abbreviate most vim commands. :VexI works the same as :VexInfo. :Plug works for plugin commands. Tab completion helps discover available commands.