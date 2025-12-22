#!/usr/bin/env bash
# VEX LSP Server Installation Script

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
VEX_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

. "$VEX_ROOT/scripts/common.sh"

# Check available package managers
check_package_managers() {
    log_step "Checking package managers"
    
    HAS_NPM=0
    HAS_PIP=0
    HAS_GO=0
    HAS_CARGO=0
    
    has_command npm && HAS_NPM=1 && log_success "npm: available"
    has_command pip3 && HAS_PIP=1 && log_success "pip3: available"
    has_command go && HAS_GO=1 && log_success "go: available"
    has_command cargo && HAS_CARGO=1 && log_success "cargo: available"
    
    if [[ $HAS_NPM -eq 0 ]] && [[ $HAS_PIP -eq 0 ]]; then
        log_error "No package managers found"
        log_info "Install Node.js for npm or Python for pip3"
        exit 1
    fi
    
    echo
}

# Install TypeScript/JavaScript LSP
install_typescript_lsp() {
    [[ $HAS_NPM -eq 0 ]] && return
    
    log_info "TypeScript/JavaScript LSP"
    if npm list -g typescript-language-server &> /dev/null; then
        log_success "Already installed"
    else
        npm install -g typescript typescript-language-server --silent
        log_success "Installed"
    fi
}

# Install Python LSP
install_python_lsp() {
    [[ $HAS_PIP -eq 0 ]] && return
    
    log_info "Python LSP"
    if pip3 show python-lsp-server &> /dev/null; then
        log_success "Already installed"
    else
        pip3 install --user python-lsp-server --quiet
        log_success "Installed"
    fi
}

# Install Go LSP
install_go_lsp() {
    [[ $HAS_GO -eq 0 ]] && return
    
    log_info "Go LSP"
    if has_command gopls; then
        log_success "Already installed"
    else
        go install golang.org/x/tools/gopls@latest &> /dev/null
        log_success "Installed"
    fi
}

# Install Rust LSP
install_rust_lsp() {
    [[ $HAS_CARGO -eq 0 ]] && return
    
    log_info "Rust LSP"
    if has_command rust-analyzer; then
        log_success "Already installed"
    else
        if has_command rustup; then
            rustup component add rust-analyzer &> /dev/null
            log_success "Installed"
        else
            log_warning "rustup not found"
        fi
    fi
}

# Main installation
main() {
    log_step "LSP Server Installation"
    echo
    
    check_package_managers
    
    log_step "Installing LSP servers"
    
    install_typescript_lsp
    install_python_lsp
    install_go_lsp
    install_rust_lsp
    
    echo
    log_success "LSP installation complete"
    log_info "Use :LspInstallServer in Vim for more servers"
}

main "$@"