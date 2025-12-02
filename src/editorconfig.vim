" ===================================
" EditorConfig Integration
" ===================================

" EditorConfig plugin should respect .editorconfig files
" Priority: User .editorconfig > VEX defaults > Vim defaults

let g:EditorConfig_enable = 1
let g:EditorConfig_verbose = 0
let g:EditorConfig_preserve_fenc = 1
let g:EditorConfig_max_line_indicator = "line"

" Exclude specific file patterns from EditorConfig
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

" ===================================
" VEX Default EditorConfig Settings
" ===================================
" These are applied ONLY if no .editorconfig file is found in the project

function! ApplyVEXDefaults()
    " Check if EditorConfig file exists in current directory or parents
    let l:ec_path = findfile('.editorconfig', '.;')
    
    if empty(l:ec_path)
        " No .editorconfig found, apply VEX defaults
        
        " Universal settings
        set fileformat=unix
        set fileencoding=utf-8
        set encoding=utf-8
        
        " Indentation defaults
        set tabstop=4
        set shiftwidth=4
        set expandtab
        set smartindent
        
        " Line endings
        set endofline
        
        " Remove trailing whitespace on save
        autocmd BufWritePre * :%s/\s\+$//e
        
        " Show a visual indication for lines longer than 120 chars
        if exists('+colorcolumn')
            set colorcolumn=120
        endif
    endif
endfunction

" Apply defaults when entering a buffer
augroup vex_editorconfig_defaults
    autocmd!
    autocmd BufEnter * call ApplyVEXDefaults()
augroup END

" ===================================
" EditorConfig Override Functions
" ===================================

" Function to create default .editorconfig in current directory
function! CreateDefaultEditorConfig()
    let l:ec_content = [
        \ '# EditorConfig is awesome: https://EditorConfig.org',
        \ '',
        \ '# Top-most EditorConfig file',
        \ 'root = true',
        \ '',
        \ '# Default settings for all files',
        \ '[*]',
        \ 'charset = utf-8',
        \ 'end_of_line = lf',
        \ 'insert_final_newline = true',
        \ 'trim_trailing_whitespace = true',
        \ 'indent_style = space',
        \ 'indent_size = 4',
        \ 'max_line_length = 120',
        \ '',
        \ '# 2 space indentation for specific languages',
        \ '[*.{yml,yaml,json}]',
        \ 'indent_size = 2',
        \ '',
        \ '[*.{js,jsx,ts,tsx,vue}]',
        \ 'indent_size = 2',
        \ '',
        \ '[*.{html,css,scss,sass}]',
        \ 'indent_size = 2',
        \ '',
        \ '# Tab indentation for Makefiles',
        \ '[Makefile]',
        \ 'indent_style = tab',
        \ '',
        \ '# Go prefers tabs',
        \ '[*.go]',
        \ 'indent_style = tab',
        \ 'indent_size = 4',
        \ '',
        \ '# Python PEP 8',
        \ '[*.py]',
        \ 'indent_size = 4',
        \ 'max_line_length = 79',
        \ '',
        \ '# Ruby',
        \ '[*.rb]',
        \ 'indent_size = 2',
        \ '',
        \ '# Shell scripts',
        \ '[*.{sh,bash}]',
        \ 'indent_size = 2',
        \ '',
        \ '# Markdown',
        \ '[*.md]',
        \ 'trim_trailing_whitespace = false',
        \ 'max_line_length = off',
        \ '',
        \ '# Documentation',
        \ '[*.{txt,rst}]',
        \ 'max_line_length = off'
    \ ]
    
    call writefile(l:ec_content, '.editorconfig')
    echo "Created default .editorconfig file"
    edit .editorconfig
endfunction

" Command to create default EditorConfig
command! EditorConfigCreate call CreateDefaultEditorConfig()

" ===================================
" EditorConfig Helper Functions
" ===================================

" Show current EditorConfig settings
function! ShowEditorConfigSettings()
    echo "EditorConfig Status:"
    echo "===================="
    
    let l:ec_path = findfile('.editorconfig', '.;')
    
    if empty(l:ec_path)
        echo "No .editorconfig found (using VEX defaults)"
    else
        echo "Using: " . l:ec_path
    endif
    
    echo ""
    echo "Current Settings:"
    echo "  - Indent Style: " . (&expandtab ? "spaces" : "tabs")
    echo "  - Indent Size: " . &shiftwidth
    echo "  - Tab Width: " . &tabstop
    echo "  - File Format: " . &fileformat
    echo "  - File Encoding: " . &fileencoding
    
    if exists('+colorcolumn') && !empty(&colorcolumn)
        echo "  - Max Line Length: " . &colorcolumn
    endif
endfunction

command! EditorConfigStatus call ShowEditorConfigSettings()

" ===================================
" Key Mappings for EditorConfig
" ===================================

" Quick access to EditorConfig commands
nnoremap <leader>ec :EditorConfigStatus<CR>
nnoremap <leader>en :EditorConfigCreate<CR>
nnoremap <leader>ee :edit .editorconfig<CR>

" ===================================
" Integration with existing plugins
" ===================================

" Ensure EditorConfig settings are applied after other plugins
augroup editorconfig_integration
    autocmd!
    " Reapply EditorConfig after plugin initialization
    autocmd VimEnter * EditorConfigReload
augroup END

" ===================================
" Visual Feedback
" ===================================

" Highlight lines that exceed max_line_length (if set by EditorConfig)
function! HighlightLongLines()
    if exists('+colorcolumn') && !empty(&colorcolumn)
        highlight OverLength guibg=#3a2a2a guifg=#ef6666
        match OverLength /\%>120v.\+/
    endif
endfunction

augroup long_lines
    autocmd!
    autocmd BufEnter,WinEnter * call HighlightLongLines()
augroup END