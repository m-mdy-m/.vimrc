#!/usr/bin/env bash
# VEX Uninstall Script

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
VEX_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

. "$VEX_ROOT/scripts/common.sh"

VIM_DIR="$HOME/.vim"
VIMRC="$HOME/.vimrc"
BACKUP_DIR="$HOME/.vim/backups"

log_step "VEX Uninstallation"
echo

# Confirm
if ! prompt_yn "Remove VEX? This cannot be undone." "n"; then
    log_info "Cancelled"
    exit 0
fi

# Remove vimrc symlink
if [[ -L "$VIMRC" ]]; then
    rm "$VIMRC"
    log_success "Removed vimrc"
fi

# Remove VEX marker
if [[ -f "$VIM_DIR/.vex" ]]; then
    rm "$VIM_DIR/.vex"
fi

# Remove plugins
if prompt_yn "Remove plugins?" "y"; then
    if [[ -d "$VIM_DIR/plugged" ]]; then
        rm -rf "$VIM_DIR/plugged"
        log_success "Removed plugins"
    fi
    if [[ -f "$VIM_DIR/autoload/plug.vim" ]]; then
        rm "$VIM_DIR/autoload/plug.vim"
    fi
fi

# Remove undo history
if prompt_yn "Remove undo history?" "y"; then
    if [[ -d "$VIM_DIR/undo" ]]; then
        rm -rf "$VIM_DIR/undo"
        log_success "Removed undo history"
    fi
fi

echo
log_success "VEX uninstalled"

cat << EOF

To reinstall:
  cd $VEX_ROOT
  make install

EOF