" ===================================
" LSP Configuration - Complete Setup
" ===================================

" Enable LSP logging for debugging (set to 0 to disable)
let g:lsp_log_verbose = 0
let g:lsp_log_file = expand('~/.vim/vim-lsp.log')

" Show diagnostic signs in the gutter
let g:lsp_signs_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1
let g:lsp_diagnostics_echo_delay = 200
let g:lsp_diagnostics_float_cursor = 1
let g:lsp_diagnostics_highlights_enabled = 1
let g:lsp_diagnostics_virtual_text_enabled = 0

" Document symbols
let g:lsp_document_highlight_enabled = 1
let g:lsp_document_highlight_delay = 200

" Completion settings
let g:lsp_completion_documentation_enabled = 1
let g:lsp_completion_documentation_delay = 80
let g:lsp_signature_help_enabled = 1

" Performance settings
let g:lsp_async_completion = 1
let g:lsp_text_edit_enabled = 1
let g:lsp_insert_text_enabled = 1

" ===================================
" LSP Signs & Icons (Dark Theme)
" ===================================
let g:lsp_signs_error = {'text': '✗'}
let g:lsp_signs_warning = {'text': '⚠'}
let g:lsp_signs_hint = {'text': ''}
let g:lsp_signs_information = {'text': ''}

" ===================================
" Asyncomplete Configuration
" ===================================

" CRITICAL: Do NOT auto-select first completion
let g:asyncomplete_auto_popup = 1
let g:asyncomplete_auto_completeopt = 0
let g:asyncomplete_popup_delay = 100
let g:asyncomplete_min_chars = 1

" Manual completeopt settings (no autoselect)
set completeopt=menuone,noinsert,noselect,preview
set pumheight=15

" Close preview window after completion
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" ===================================
" Asyncomplete Keybindings
" ===================================

" Tab to navigate DOWN through completion menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Enter to select completion (only when menu is visible)
inoremap <expr> <CR> pumvisible() ? asyncomplete#close_popup() : "\<CR>"

" Ctrl+Space to manually trigger completion
inoremap <expr> <C-Space> asyncomplete#force_refresh()

" Escape closes popup without inserting
inoremap <expr> <Esc> pumvisible() ? asyncomplete#cancel_popup() : "\<Esc>"

" ===================================
" LSP Key Mappings
" ===================================

function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    
    " Go to definition
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> <F12> <plug>(lsp-definition)
    
    " Go to declaration
    nmap <buffer> gD <plug>(lsp-declaration)
    
    " Peek definition (split window)
    nmap <buffer> gp <plug>(lsp-peek-definition)
    
    " Find references
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> <S-F12> <plug>(lsp-references)
    
    " Go to implementation
    nmap <buffer> gi <plug>(lsp-implementation)
    
    " Go to type definition
    nmap <buffer> gt <plug>(lsp-type-definition)
    
    " Show hover documentation
    nmap <buffer> K <plug>(lsp-hover)
    nmap <buffer> <C-k> <plug>(lsp-hover)
    
    " Show signature help
    inoremap <buffer> <C-k> <cmd>LspSignatureHelp<CR>
    
    " Code actions
    nmap <buffer> <leader>ca <plug>(lsp-code-action)
    nmap <buffer> <leader>. <plug>(lsp-code-action)
    
    " Format document
    nmap <buffer> <leader>f <plug>(lsp-document-format)
    vmap <buffer> <leader>f <plug>(lsp-document-range-format)
    nmap <buffer> <S-f> <plug>(lsp-document-format)
   
    " Show diagnostics
    nmap <buffer> <leader>d <plug>(lsp-document-diagnostics)
    nmap <buffer> <leader>e <plug>(lsp-next-diagnostic)
    nmap <buffer> <leader>E <plug>(lsp-previous-diagnostic)
    
    " Workspace symbols
    nmap <buffer> <leader>ws <plug>(lsp-workspace-symbol)
    nmap <buffer> <C-p> <plug>(lsp-workspace-symbol)
    
    " Document symbols
    nmap <buffer> <leader>ds <plug>(lsp-document-symbol)
    
    " Code lens
    nmap <buffer> <leader>cl <plug>(lsp-code-lens)
    
    " Folding
    nmap <buffer> <leader>fd <plug>(lsp-document-fold)
endfunction

augroup lsp_install
    autocmd!
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END


" ===================================
" Custom LSP Server Configurations
" ===================================

" TypeScript/JavaScript - Enhanced settings
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

" Python - Pyright configuration
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

" Go - gopls configuration
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

" ===================================
" LSP Status Line Integration
" ===================================

function! LspStatus() abort
    if !exists('*lsp#get_buffer_diagnostics_counts')
        return ''
    endif
    
    let l:counts = lsp#get_buffer_diagnostics_counts()
    let l:errors = get(l:counts, 'error', 0)
    let l:warnings = get(l:counts, 'warning', 0)
    let l:hints = get(l:counts, 'hint', 0)
    let l:info = get(l:counts, 'information', 0)
    
    let l:status = ''
    
    if l:errors > 0
        let l:status .= ' ✗' . l:errors
    endif
    
    if l:warnings > 0
        let l:status .= ' ⚠' . l:warnings
    endif
    
    if l:hints > 0
        let l:status .= ' ' . l:hints
    endif
    
    if l:info > 0
        let l:status .= ' ' . l:info
    endif
    
    return l:status
endfunction

" Add to status line (integrate with airline)
let g:airline_section_error = '%{LspStatus()}'

" ===================================
" LSP Highlight Groups (Dark Theme)
" ===================================

" Error highlights
highlight LspErrorText guifg=#ef6666 guibg=#1c0f0f gui=undercurl
highlight LspErrorHighlight guifg=#ef6666 guibg=NONE gui=undercurl
highlight LspErrorLine guibg=#1c0f0f

" Warning highlights  
highlight LspWarningText guifg=#e8c878 guibg=#1a1a18 gui=undercurl
highlight LspWarningHighlight guifg=#e8c878 guibg=NONE gui=undercurl
highlight LspWarningLine guibg=#1a1a18

" Info highlights
highlight LspInformationText guifg=#c0c8d8 guibg=#151518 gui=NONE
highlight LspInformationHighlight guifg=#c0c8d8 guibg=NONE gui=underline
highlight LspInformationLine guibg=#151518

" Hint highlights
highlight LspHintText guifg=#8b9d8b guibg=#0f1a19 gui=NONE
highlight LspHintHighlight guifg=#8b9d8b guibg=NONE gui=underline
highlight LspHintLine guibg=#0f1a19

" Reference highlights
highlight LspReferenceText guibg=#2a2a3a
highlight LspReferenceRead guibg=#2a2a3a
highlight LspReferenceWrite guibg=#3a3a50

" Code lens
highlight LspCodeLens guifg=#7a808c gui=italic
highlight LspCodeLensSeparator guifg=#4a4a60

" Semantic tokens
highlight LspSemanticType guifg=#e0ecf8
highlight LspSemanticClass guifg=#d8e8f8
highlight LspSemanticEnum guifg=#c0d8e8
highlight LspSemanticInterface guifg=#e0ecf8
highlight LspSemanticStruct guifg=#d8e8f8
highlight LspSemanticParameter guifg=#a8b5c7
highlight LspSemanticVariable guifg=#d4d4d8
highlight LspSemanticProperty guifg=#d8dce8
highlight LspSemanticEnumMember guifg=#b4a8c8
highlight LspSemanticFunction guifg=#e0e7f5
highlight LspSemanticMethod guifg=#e0e7f5
highlight LspSemanticKeyword guifg=#b8b4d8
highlight LspSemanticModifier guifg=#c0c5db
highlight LspSemanticComment guifg=#6b8e6b gui=italic
highlight LspSemanticString guifg=#8b9d8b
highlight LspSemanticNumber guifg=#b4a8c8
highlight LspSemanticOperator guifg=#d8dce8

" ===================================
" LSP Utility Functions
" ===================================

" Function to show LSP server status
function! LspServerStatus()
    let l:servers = lsp#get_allowed_servers()
    if empty(l:servers)
        echo "No LSP servers running"
        return
    endif
    
    for l:server in l:servers
        let l:status = lsp#get_server_status(l:server)
        echo l:server . ': ' . l:status
    endfor
endfunction

command! LspStatus call LspServerStatus()

" Function to restart LSP server
function! LspRestart()
    let l:servers = lsp#get_allowed_servers()
    for l:server in l:servers
        call lsp#stop_server(l:server)
    endfor
    edit
    echo "LSP servers restarted"
endfunction

command! LspRestart call LspRestart()

" Function to show available code actions
function! ShowCodeActions()
    let l:actions = lsp#ui#vim#code_action()
    if empty(l:actions)
        echo "No code actions available"
    endif
endfunction

command! CodeActions call ShowCodeActions()

" ===================================
" Auto-commands for LSP
" ===================================

augroup lsp_autocommands
    autocmd!
    
    " Format on save (optional - comment out if not needed)
    " autocmd BufWritePre *.js,*.ts,*.jsx,*.tsx,*.go,*.rs,*.py call execute('LspDocumentFormatSync')
    
    " Highlight references when cursor holds
    autocmd CursorHold * silent! call lsp#ui#vim#document_highlight()
    autocmd CursorMoved * silent! call lsp#ui#vim#document_highlight_clear()
    
    " Show signature help in insert mode
    autocmd InsertEnter * silent! call lsp#ui#vim#signature_help()
augroup END

" ===================================
" Completion Menu Colors (Dark Theme)
" ===================================

" Popup menu colors
highlight Pmenu guibg=#18181b guifg=#d4d4d8 ctermbg=235 ctermfg=252
highlight PmenuSel guibg=#2a2a3a guifg=#e8ecf4 gui=bold ctermbg=237 ctermfg=255
highlight PmenuSbar guibg=#0f0f0f ctermbg=233
highlight PmenuThumb guibg=#4a4a60 ctermbg=239

" Completion item kinds
highlight PmenuKind guifg=#a8a0bf guibg=#18181b
highlight PmenuKindSel guifg=#c0b8d8 guibg=#2a2a3a gui=bold
highlight PmenuExtra guifg=#7a808c guibg=#18181b gui=italic
highlight PmenuExtraSel guifg=#8b9097 guibg=#2a2a3a

" ===================================
" Additional LSP Commands
" ===================================

" Show all diagnostics in quickfix
command! LspDiagnostics call lsp#ui#vim#diagnostics#document()

" Show workspace diagnostics
command! LspWorkspaceDiagnostics call lsp#ui#vim#diagnostics#workspace()

" Clear diagnostics
command! LspClearDiagnostics call lsp#ui#vim#diagnostics#clear()

" Install/update language servers
command! LspUpdateServers LspInstallServer

" ===================================
" Performance Optimization
" ===================================

" Disable LSP for very large files (>1MB)
augroup lsp_large_files
    autocmd!
    autocmd BufReadPre * if getfsize(expand("%")) > 1000000 | let b:lsp_disabled = 1 | endif
augroup END
