#!/usr/bin/env bash
# VEX Vim Installation Script

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
VEX_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

. "$VEX_ROOT/scripts/common.sh"

# Check if vim is already installed
if has_command vim; then
    log_info "Vim is already installed"
    vim --version | head -n1
    exit 0
fi

log_step "Installing Vim"

# Detect OS and install
OS=$(detect_os)
PM=$(detect_package_manager)

case "$PM" in
    apt)
        log_info "Installing via apt..."
        sudo apt-get update -qq
        sudo apt-get install -y vim git curl
        ;;
    dnf)
        log_info "Installing via dnf..."
        sudo dnf install -y vim git curl
        ;;
    yum)
        log_info "Installing via yum..."
        sudo yum install -y vim git curl
        ;;
    pacman)
        log_info "Installing via pacman..."
        sudo pacman -S --noconfirm vim git curl
        ;;
    zypper)
        log_info "Installing via zypper..."
        sudo zypper install -y vim git curl
        ;;
    apk)
        log_info "Installing via apk..."
        sudo apk add --no-cache vim git curl
        ;;
    xbps)
        log_info "Installing via xbps..."
        sudo xbps-install -Sy vim git curl
        ;;
    brew)
        log_info "Installing via brew..."
        brew install vim git curl
        ;;
    *)
        die "Unknown package manager. Please install vim manually."
        ;;
esac

# Verify installation
if has_command vim; then
    log_success "Vim installed successfully"
    vim --version | head -n1
else
    die "Vim installation failed"
fi