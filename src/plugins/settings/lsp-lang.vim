" TypeScript/JavaScript
if executable('typescript-language-server')
    augroup lsp_setup_typescript
        autocmd!
        autocmd User lsp_setup call lsp#register_server({
            \ 'name': 'typescript-language-server',
            \ 'cmd': {server_info->['typescript-language-server', '--stdio']},
            \ 'root_uri':{server_info->lsp#utils#path_to_uri(
            \   lsp#utils#find_nearest_parent_file_directory(
            \     lsp#utils#get_buffer_path(),
            \     ['package.json', 'tsconfig.json', 'jsconfig.json', '.git']
            \   ))},
            \ 'whitelist': ['javascript', 'javascriptreact', 'typescript', 'typescriptreact'],
            \ 'workspace_config': {
            \   'javascript': {
            \     'suggest': {'completeFunctionCalls': v:true},
            \     'preferences': {'importModuleSpecifier': 'relative'}
            \   },
            \   'typescript': {
            \     'suggest': {'completeFunctionCalls': v:true},
            \     'preferences': {'importModuleSpecifier': 'relative'}
            \   }
            \ }
            \ })
    augroup END
endif

" Python 
if executable('pyright-langserver')
    augroup lsp_setup_python
        autocmd!
        autocmd User lsp_setup call lsp#register_server({
            \ 'name': 'pyright',
            \ 'cmd': {server_info->['pyright-langserver', '--stdio']},
            \ 'whitelist': ['python'],
            \ 'workspace_config': {
            \   'python': {
            \     'analysis': {
            \       'autoSearchPaths': v:true,
            \       'useLibraryCodeForTypes': v:true,
            \       'diagnosticMode': 'workspace'
            \     }
            \   }
            \ }
            \ })
    augroup END
endif

" Go 
if executable('gopls')
    augroup lsp_setup_go
        autocmd!
        autocmd User lsp_setup call lsp#register_server({
            \ 'name': 'gopls',
            \ 'cmd': {server_info->['gopls']},
            \ 'whitelist': ['go', 'gomod', 'gowork', 'gotmpl'],
            \ 'workspace_config': {
            \   'gopls': {
            \     'analyses': {
            \       'unusedparams': v:true,
            \       'shadow': v:true,
            \     },
            \     'staticcheck': v:true,
            \   }
            \ }
            \ })
    augroup END
endif
