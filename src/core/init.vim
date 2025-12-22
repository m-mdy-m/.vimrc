" VEX Core Initialization
"" Load Settings
call vex#error#SourceIfExists("core/settings.vim")
"" Load Ui
call vex#error#SourceIfExists("core/ui.vim")

"" Load Keysmaps
call vex#error#SourceIfExists('core/keymaps/keymaps.vim')
call vex#error#SourceIfExists('core/keymaps/search.vim')
call vex#error#SourceIfExists('core/keymaps/tab-manager.vim')
call vex#error#SourceIfExists('core/keymaps/window-manager.vim')
call vex#error#SourceIfExists('core/keymaps/browser-tree.vim')
call vex#error#SourceIfExists('core/keymaps/terminal.vim')
call vex#error#SourceIfExists("core/keymaps/git.vim")
call vex#error#SourceIfExists('core/keymaps/plugins-settings.vim')