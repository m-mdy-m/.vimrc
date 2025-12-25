" VEX - Vim Ecosystem Extension
" Copyright (C) 2025 Genix

nnoremap <leader>li :LspStatus<CR>
nnoremap <leader>lI :LspInfo<CR>
nnoremap <leader>lr :LspRestart<CR>
nnoremap <leader>lR :LspRestart<CR>
nnoremap <leader>ll :LspLog<CR>
nnoremap <leader>lL :LspLog<CR>
nnoremap <leader>le :LspEnable<CR>
nnoremap <leader>lE :LspEnable<CR>
nnoremap <leader>ld :LspDisable<CR>
nnoremap <leader>lD :LspDisable<CR>
nnoremap gd :LspDefinition<CR>
nnoremap gD :LspDeclaration<CR>
nnoremap <leader>gd :LspDefinition<CR>
nnoremap <leader>gD :LspDeclaration<CR>
nnoremap gt :LspTypeDefinition<CR>
nnoremap gi :LspImplementation<CR>
nnoremap <leader>gt :LspTypeDefinition<CR>
nnoremap <leader>gi :LspImplementation<CR>
nnoremap gr :LspReferences<CR>
nnoremap <leader>gr :LspReferences<CR>
nnoremap <leader>ds :LspDocumentSymbol<CR>
nnoremap <leader>ws :LspWorkspaceSymbol<CR>
nnoremap K :LspHover<CR>
nnoremap <leader>k :LspHover<CR>
nnoremap <leader>K :LspHover<CR>
nnoremap <leader>rn :LspRename<CR>
nnoremap <leader>RN :LspRename<CR>
nnoremap <leader>ca :LspCodeAction<CR>
nnoremap <leader>CA :LspCodeAction<CR>
vnoremap <leader>ca :LspCodeAction<CR>
vnoremap <leader>CA :LspCodeAction<CR>
nnoremap <leader>f :LspDocumentFormat<CR>
nnoremap <leader>F :LspDocumentFormat<CR>
vnoremap <leader>f :LspDocumentRangeFormat<CR>
vnoremap <leader>F :LspDocumentRangeFormat<CR>
nnoremap <leader>dd :LspDocumentDiagnostics<CR>
nnoremap <leader>DD :LspDocumentDiagnostics<CR>
nnoremap ]d :LspNextDiagnostic<CR>
nnoremap [d :LspPreviousDiagnostic<CR>
nnoremap ]D :LspNextDiagnostic<CR>
nnoremap [D :LspPreviousDiagnostic<CR>
nnoremap ]e :LspNextError<CR>
nnoremap [e :LspPreviousError<CR>
nnoremap ]E :LspNextError<CR>
nnoremap [E :LspPreviousError<CR>
nnoremap ]w :LspNextWarning<CR>
nnoremap [w :LspPreviousWarning<CR>
nnoremap ]W :LspNextWarning<CR>
nnoremap [W :LspPreviousWarning<CR>

function! ShowLspKeymaps()
    echo "LSP Keymaps:"
    echo "==========="
    echo ""
    echo "Management:"
    echo "  \\li         - LSP Status"
    echo "  \\lr         - LSP Restart"
    echo "  \\ll         - LSP Log"
    echo "  \\le/\\ld     - Enable/Disable LSP"
    echo ""
    echo "Navigation:"
    echo "  gd          - Go to Definition"
    echo "  gD          - Go to Declaration"
    echo "  gt          - Go to Type Definition"
    echo "  gi          - Go to Implementation"
    echo "  gr          - Show References"
    echo ""
    echo "Information:"
    echo "  K           - Hover Documentation"
    echo "  \\ds         - Document Symbols"
    echo "  \\ws         - Workspace Symbols"
    echo ""
    echo "Actions:"
    echo "  \\rn         - Rename Symbol"
    echo "  \\ca         - Code Actions"
    echo "  \\f          - Format Document/Range"
    echo ""
    echo "Diagnostics:"
    echo "  \\dd         - Document Diagnostics"
    echo "  ]d/[d       - Next/Previous Diagnostic"
    echo "  ]e/[e       - Next/Previous Error"
    echo "  ]w/[w       - Next/Previous Warning"
endfunction

command! LspKeymaps call ShowLspKeymaps()