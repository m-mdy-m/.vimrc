#!/usr/bin/env bash
# VEX Common Library
# Shared functions used across all scripts

set -euo pipefail

# Colors for output
if [[ -t 1 ]]; then
    RED='\033[0;31m'
    GREEN='\033[0;32m'
    YELLOW='\033[1;33m'
    BLUE='\033[0;34m'
    CYAN='\033[0;36m'
    BOLD='\033[1m'
    DIM='\033[2m'
    RESET='\033[0m'
else
    RED=''
    GREEN=''
    YELLOW=''
    BLUE=''
    CYAN=''
    BOLD=''
    DIM=''
    RESET=''
fi

# Logging functions
log_info() {
    echo -e "${CYAN}[INFO]${RESET} $*"
}

log_success() {
    echo -e "${GREEN}[OK]${RESET} $*"
}

log_warning() {
    echo -e "${YELLOW}[WARN]${RESET} $*"
}

log_error() {
    echo -e "${RED}[ERROR]${RESET} $*" >&2
}

log_step() {
    echo -e "${BLUE}${BOLD}==>${RESET} ${BOLD}$*${RESET}"
}

# Error handling
die() {
    log_error "$@"
    exit 1
}

# Check if command exists
has_command() {
    command -v "$1" >/dev/null 2>&1
}

# Check if running in WSL
is_wsl() {
    [[ -f /proc/version ]] && grep -qi microsoft /proc/version
}

# Detect operating system
detect_os() {
    local os
    case "$(uname -s)" in
        Linux*)
            if is_wsl; then
                os="wsl"
            else
                os="linux"
            fi
            ;;
        Darwin*)
            os="macos"
            ;;
        CYGWIN*|MINGW*|MSYS*)
            os="windows"
            ;;
        *)
            os="unknown"
            ;;
    esac
    echo "$os"
}

# Detect Linux distribution
detect_distro() {
    if [[ ! -f /etc/os-release ]]; then
        echo "unknown"
        return
    fi
    
    . /etc/os-release
    echo "$ID"
}

# Detect package manager
detect_package_manager() {
    local os
    os=$(detect_os)
    
    case "$os" in
        linux|wsl)
            local distro
            distro=$(detect_distro)
            case "$distro" in
                ubuntu|debian|pop|linuxmint)
                    echo "apt"
                    ;;
                fedora|rhel|centos)
                    if has_command dnf; then
                        echo "dnf"
                    else
                        echo "yum"
                    fi
                    ;;
                arch|manjaro|endeavouros)
                    echo "pacman"
                    ;;
                opensuse*)
                    echo "zypper"
                    ;;
                alpine)
                    echo "apk"
                    ;;
                void)
                    echo "xbps"
                    ;;
                *)
                    echo "unknown"
                    ;;
            esac
            ;;
        macos)
            echo "brew"
            ;;
        *)
            echo "unknown"
            ;;
    esac
}

# Check if package is installed
is_installed() {
    local package="$1"
    local pm
    pm=$(detect_package_manager)
    
    case "$pm" in
        apt)
            dpkg -l "$package" 2>/dev/null | grep -q ^ii
            ;;
        dnf|yum)
            rpm -q "$package" >/dev/null 2>&1
            ;;
        pacman)
            pacman -Q "$package" >/dev/null 2>&1
            ;;
        zypper)
            rpm -q "$package" >/dev/null 2>&1
            ;;
        apk)
            apk info -e "$package" >/dev/null 2>&1
            ;;
        xbps)
            xbps-query "$package" >/dev/null 2>&1
            ;;
        brew)
            brew list "$package" >/dev/null 2>&1
            ;;
        *)
            return 1
            ;;
    esac
}

# Install package
install_package() {
    local package="$1"
    local pm
    pm=$(detect_package_manager)
    
    log_step "Installing $package..."
    
    case "$pm" in
        apt)
            sudo apt-get update -qq
            sudo apt-get install -y "$package"
            ;;
        dnf)
            sudo dnf install -y "$package"
            ;;
        yum)
            sudo yum install -y "$package"
            ;;
        pacman)
            sudo pacman -S --noconfirm "$package"
            ;;
        zypper)
            sudo zypper install -y "$package"
            ;;
        apk)
            sudo apk add --no-cache "$package"
            ;;
        xbps)
            sudo xbps-install -Sy "$package"
            ;;
        brew)
            brew install "$package"
            ;;
        *)
            die "Unknown package manager. Please install $package manually."
            ;;
    esac
    
    log_success "$package installed"
}

# Create backup of file or directory
backup_path() {
    local path="$1"
    local backup_dir="${2:-$HOME/.vim/backups}"
    
    if [[ ! -e "$path" ]]; then
        return 0
    fi
    
    mkdir -p "$backup_dir"
    
    local timestamp
    timestamp=$(date +%Y%m%d_%H%M%S)
    local basename
    basename=$(basename "$path")
    local backup_path="$backup_dir/${basename}.backup.$timestamp"
    
    if [[ -L "$path" ]]; then
        log_info "Removing symlink: $path"
        rm "$path"
    else
        log_info "Backing up: $path -> $backup_path"
        cp -r "$path" "$backup_path"
    fi
}

# Create symlink with backup
safe_link() {
    local source="$1"
    local target="$2"
    
    if [[ ! -e "$source" ]]; then
        die "Source does not exist: $source"
    fi
    
    backup_path "$target"
    
    log_info "Creating symlink: $target -> $source"
    ln -sf "$(realpath $source)" "$target"

    if [ -L "$HOME/.vimrc" ] && [ -f "$HOME/.vimrc" ]; then
        log_info "Symlink verified"
    else
        log_error "Symlink creation failed"
        return 1
    fi
}

# Prompt user for yes/no
prompt_yn() {
    local message="$1"
    local default="${2:-n}"
    
    local prompt
    if [[ "$default" == "y" ]]; then
        prompt="[Y/n]"
    else
        prompt="[y/N]"
    fi
    
    while true; do
        read -rp "$message $prompt " response
        response=${response:-$default}
        case "$response" in
            [Yy]*)
                return 0
                ;;
            [Nn]*)
                return 1
                ;;
            *)
                echo "Please answer yes or no."
                ;;
        esac
    done
}

# Check if vim version is sufficient
check_vim_version() {
    local required_major="${1:-8}"
    local required_minor="${2:-0}"
    
    if ! has_command vim; then
        return 1
    fi
    
    local version
    version=$(vim --version | head -n1 | sed 's/.*\ \([0-9]\+\)\.\([0-9]\+\).*/\1.\2/')
    local major minor
    major=$(echo "$version" | cut -d. -f1)
    minor=$(echo "$version" | cut -d. -f2)
    
    if [[ "$major" -gt "$required_major" ]] || \
       [[ "$major" -eq "$required_major" && "$minor" -ge "$required_minor" ]]; then
        return 0
    else
        return 1
    fi
}

# Download file
download_file() {
    local url="$1"
    local output="$2"
    
    if has_command curl; then
        curl -fsSL -o "$output" "$url"
    elif has_command wget; then
        wget -q -O "$output" "$url"
    else
        die "Neither curl nor wget found. Please install one of them."
    fi
}

# Get VEX version
get_vex_version() {
    if [[ -f "$VEX_ROOT/VERSION" ]]; then
        cat "$VEX_ROOT/VERSION"
    else
        echo "dev"
    fi
}

# Check if running as root
is_root() {
    [[ $EUID -eq 0 ]]
}

# Get number of CPU cores
get_cpu_count() {
    if has_command nproc; then
        nproc
    elif has_command sysctl; then
        sysctl -n hw.ncpu
    else
        echo 1
    fi
}

# Export functions for use in other scripts
export -f log_info log_success log_warning log_error log_step
export -f die has_command is_wsl detect_os detect_distro detect_package_manager
export -f is_installed install_package backup_path safe_link prompt_yn
export -f check_vim_version download_file get_vex_version is_root get_cpu_count