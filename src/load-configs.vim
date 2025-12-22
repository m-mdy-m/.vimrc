" Load core configuration in order
call vex#error#SourceIfExists('core/init.vim')

" Load plugins
call vex#error#SourceIfExists('plugins/init.vim')