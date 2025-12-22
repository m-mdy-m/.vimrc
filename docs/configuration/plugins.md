# Plugins

VEX includes a focused set of plugins that enhance vim without overwhelming it. Each plugin serves a clear purpose and integrates naturally with the workflow.

## Plugin Management

vim-plug handles all plugin installation and updates. It downloads plugins in parallel and cleans up unused ones automatically.

When you first install VEX, all plugins install during setup. Adding or removing plugins requires editing src/plugins/install.vim and running :PlugInstall or :PlugUpdate from within vim.

Remove plugins that are no longer in your configuration with :PlugClean. This prompts for confirmation before deleting anything.

## Language Server Protocol

The vim-lsp plugin provides language server support. It communicates with external language servers to offer features like autocompletion, go to definition, and inline diagnostics.

vim-lsp-settings complements this by automating language server installation. When you open a file type that has an available language server, it prompts you to install it. This happens once per server, and afterwards everything works automatically.

Language servers run as separate processes, so they won't slow down vim itself. They start when you open a relevant file and stop when you close vim.

## File Navigation

FZF gives you fuzzy file finding. It opens a floating window where you can type part of a filename and see matching results as you type. This works for files, buffers, git files, and more.

The plugin integrates with your command line FZF installation if you have one, falling back to a bundled version otherwise. Search results update in real time as you refine your query.

## Editor Enhancements

vim-surround makes it easy to work with surrounding characters like quotes, brackets, and tags. You can change, delete, or add surroundings with a few keystrokes.

vim-repeat extends the dot command to work with plugin operations. This means surround commands and other plugin actions can be repeated just like native vim commands.

vim-easymotion highlights possible jump targets on screen. Type the motion command and the target letters, and you'll jump there instantly.

editorconfig-vim reads .editorconfig files and applies their settings automatically. This keeps formatting consistent across different editors and team members without manual configuration.

## Status Line

vim-airline shows a clean status line and tab bar. It displays mode, file information, git branch, and other useful details.

The status line adapts to your color scheme and shows different information depending on what you're doing. In a git repository, it displays the current branch and change counts.

## Git Integration

vim-gitgutter shows git diff markers in the sign column. Added, modified, and removed lines appear next to line numbers in real time.

The plugin updates when you save files or switch buffers. Hover over a change to see the original content, or stage individual hunks without leaving vim.

## Configuration

Plugin settings live in src/plugins/settings/. Each plugin has its own file with commented options.

You can disable individual plugins by commenting them out in src/plugins/install.vim. Run :PlugClean after commenting to remove the files from disk.

Most plugins work with their defaults, but check the settings files if you want to adjust behavior. The settings show the most commonly changed options.

## Adding Plugins

To add a plugin, include it in src/plugins/install.vim using the Plug command. The format is Plug 'author/repository'. Create a settings file in src/plugins/settings/ if the plugin needs configuration.

After adding the plugin, run :PlugInstall to download it. Restart vim to load the plugin fully.

Not all vim plugins work well together. Before adding something new, check if VEX already includes functionality that does what you need. The built-in features and existing plugins cover most common use cases.