" Install plugins
call vex#vex#error#SourceIfExists("src/plugins/install.vim")
"" Plugins Settings
call vex#vex#error#SourceIfExists("src/plugins/settings/file-manager.vim")
call vex#vex#error#SourceIfExists("src/plugins/settings/git.vim")
call vex#vex#error#SourceIfExists("src/plugins/settings/status-ui.vim")
"" LSP Settings
call vex#vex#error#SourceIfExists("src/plugins/settings/lsp.vim")
call vex#vex#error#SourceIfExists("src/plugins/settings/lsp-lang.vim")
