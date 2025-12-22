#!/usr/bin/env bash
# VEX Installation Script

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
VEX_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
export VEX_ROOT

. "$VEX_ROOT/scripts/common.sh"

VIM_DIR="$HOME/.vim"
VIMRC="$HOME/.vimrc"
CONFIG_DIR="$VEX_ROOT/src"
BACKUP_DIR="$VIM_DIR/backups"

# Parse options
MINIMAL_INSTALL=false
SKIP_LSP=false
SKIP_PLUGINS=false
FORCE_INSTALL=false

while [[ $# -gt 0 ]]; do
    case "$1" in
        --minimal)
            MINIMAL_INSTALL=true
            shift
            ;;
        --skip-lsp)
            SKIP_LSP=true
            shift
            ;;
        --skip-plugins)
            SKIP_PLUGINS=true
            shift
            ;;
        --force)
            FORCE_INSTALL=true
            shift
            ;;
        *)
            log_error "Unknown option: $1"
            exit 1
            ;;
    esac
done

# Banner
cat << 'EOF'

  ╦  ╦ ╔═╗ ═╗ ╦
  ╚╗╔╝ ║╣  ╔╩╦╝
   ╚╝  ╚═╝ ╩ ╚═

  Vim Ecosystem Extension

EOF

# Check if already installed
if [[ -L "$VIMRC" ]] && [[ ! $FORCE_INSTALL == true ]]; then
    target=$(readlink -f "$VIMRC" || readlink "$VIMRC")
    if [[ "$target" == "$CONFIG_DIR/vimrc.vim" ]]; then
        log_warning "VEX is already installed"
        if ! prompt_yn "Reinstall anyway?" "n"; then
            log_info "Installation cancelled"
            exit 0
        fi
    fi
fi

# Step 1: Check prerequisites
log_step "Step 1/7: Checking prerequisites"
if ! has_command git; then
    die "git is required but not installed"
fi
if ! has_command curl && ! has_command wget; then
    die "curl or wget is required but not installed"
fi
log_success "Prerequisites met"
echo

# Step 2: Install Vim
log_step "Step 2/7: Installing Vim"
if has_command vim; then
    log_success "Vim already installed: $(vim --version | head -n1)"
else
    "$SCRIPT_DIR/vim.sh"
fi
echo

# Step 3: Backup existing configuration
log_step "Step 3/7: Backing up existing configuration"
mkdir -p "$BACKUP_DIR"

if [[ -e "$VIMRC" ]]; then
    backup_path "$VIMRC" "$BACKUP_DIR"
fi
if [[ -d "$VIM_DIR" ]] && [[ ! -L "$VIM_DIR" ]]; then
    if [[ ! -f "$VIM_DIR/.vex" ]]; then
        case "$BACKUP_DIR" in
            "$VIM_DIR"/*)
                log_warning "Skipping ~/.vim backup: backup directory is inside ~/.vim"
                ;;
            *)
                backup_path "$VIM_DIR" "$BACKUP_DIR"
                ;;
        esac
    fi
fi
log_success "Backup complete"
echo

# Step 4: Create directories
log_step "Step 4/7: Creating directory structure"
dirs=(
        "$VIM_DIR/autoload"
        "$VIM_DIR/plugged"
        "$VIM_DIR/undo"
        "$BACKUP_DIR"
    )
for dir in "${dirs[@]}"; do
        if [ ! -d "$dir" ]; then
            mkdir -p "$dir"
            log_success "$(basename $dir) created"
        else
            log_info "$(basename $dir) (exists)"
        fi
    done
touch "$VIM_DIR/.vex"
log_success "Directories created"
echo

# Step 5: Link configuration
log_step "Step 5/7: Linking configuration"
safe_link "$CONFIG_DIR/vimrc.vim" "$VIMRC"
log_success "Configuration linked"
echo

# Step 6: Install plugins
if $MINIMAL_INSTALL || $SKIP_PLUGINS; then
    log_step "Step 6/7: Skipping plugin installation"
else
    log_step "Step 6/7: Installing plugins"
    "$SCRIPT_DIR/plugins.sh"
fi
echo

# Step 7: Install LSP servers
if $MINIMAL_INSTALL || $SKIP_LSP; then
    log_step "Step 7/7: Skipping LSP installation"
else
    log_step "Step 7/7: Installing LSP servers"
    if prompt_yn "Install LSP servers?" "y"; then
        "$SCRIPT_DIR/lsp.sh"
    else
        log_info "Skipped. Run 'make install-lsp' later"
    fi
fi
echo

# Verify installation
log_step "Verifying installation"
if [[ -L "$VIMRC" ]] && has_command vim; then
    log_success "Installation verified"
else
    log_error "Installation may be incomplete"
fi
echo

cat << EOF
Installation Complete

Start using VEX:
  vim

Check health:
  make doctor

Update:
  make update

Documentation:
  :help vex

EOF