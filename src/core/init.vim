"" Load Settings
call vex#vex#error#SourceIfExists("src/core/settings.vim")

"" Load Keysmaps
call vex#vex#error#SourceIfExists("src/core/keymaps/browser-tree.vim")
call vex#vex#error#SourceIfExists("src/core/keymaps/git.vim")
call vex#vex#error#SourceIfExists("src/core/keymaps/keysmaps.vim")
call vex#vex#error#SourceIfExists("src/core/keymaps/search.vim")
call vex#vex#error#SourceIfExists("src/core/keymaps/tab-manager.vim")
call vex#vex#error#SourceIfExists("src/core/keymaps/window-managers.vim")
"" Load Ui
call vex#vex#error#SourceIfExists("src/core/ui.vim")