#!/usr/bin/env bash
# VEX Plugin Installation Script

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
VEX_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

. "$VEX_ROOT/scripts/common.sh"

VIM_DIR="$HOME/.vim"
PLUG_VIM="$VIM_DIR/autoload/plug.vim"

log_step "Installing vim-plug"

# Install vim-plug if not present
if [[ -f "$PLUG_VIM" ]]; then
    log_success "vim-plug already installed"
else
    log_info "Downloading vim-plug..."
    mkdir -p "$VIM_DIR/autoload"
    
    if has_command curl; then
        curl -fsSL -o "$PLUG_VIM" \
            https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    elif has_command wget; then
        wget -q -O "$PLUG_VIM" \
            https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    else
        die "Neither curl nor wget found"
    fi
    
    log_success "vim-plug installed"
fi

# Install plugins
log_step "Installing plugins"
log_info "This may take a few minutes..."
echo ""

# Run vim with spinner but capture output
(
    script -q /dev/null -c "vim +'PlugInstall --sync' +qa"
    echo $? > /tmp/vim_exit_code
) 2>&1 &
vim_pid=$!

# Show spinner
spin='-\|/'
i=0
while kill -0 $vim_pid 2>/dev/null; do
    i=$(( (i+1) %4 ))
    printf "\r  ${CYAN}${spin:$i:1}${RESET} Installing plugins..."
    sleep 0.1
done

# Wait and get exit code
wait $vim_pid
EXIT_CODE=$(cat /tmp/vim_exit_code 2>/dev/null || echo 0)
rm -f /tmp/vim_exit_code

if [[ $EXIT_CODE -ne 0 ]]; then
    printf "\r${RED}✗${RESET} Plugin installation failed (exit code: $EXIT_CODE)\n"
    exit $EXIT_CODE
else
    printf "\r${GREEN}✓${RESET} Plugins installed successfully\n"
fi