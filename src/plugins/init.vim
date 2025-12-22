" VEX Plugin Management
" Install and configure plugins
call vex#error#SourceIfExists('plugins/install.vim')
"" Plugins Settings
call vex#error#SourceIfExists('plugins/settings/file-manager.vim')
call vex#error#SourceIfExists('plugins/settings/git.vim')
call vex#error#SourceIfExists('plugins/settings/status-ui.vim')
call vex#error#SourceIfExists('plugins/settings/lsp.vim')
call vex#error#SourceIfExists('plugins/settings/lsp-lang.vim')