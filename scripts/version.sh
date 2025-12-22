#!/usr/bin/env bash
# VEX Version Management
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
VEX_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
get_version() {
    if [[ -d "$VEX_ROOT/.git" ]]; then
        git -C "$VEX_ROOT" describe --tags --always --dirty 2>/dev/null || echo "dev"
    elif [[ -f "$VEX_ROOT/VERSION" ]]; then
        cat "$VEX_ROOT/VERSION"
    else
        echo "dev"
    fi
}
generate_version_file() {
    local version
    version=$(get_version)
    echo "$version" > "$VEX_ROOT/VERSION"
    echo "Generated VERSION: $version"
}
show_version() {
    local version
    version=$(get_version)
    local build_date
    build_date=$(date -u '+%Y-%m-%d %H:%M:%S UTC')
    
    echo "VEX Version: $version"
    echo "Build Date: $build_date"
    
    if [[ -d "$VEX_ROOT/.git" ]]; then
        local commit
        commit=$(git -C "$VEX_ROOT" rev-parse --short HEAD 2>/dev/null || echo "unknown")
        echo "Git Commit: $commit"
    fi
}

# Main
case "${1:-show}" in
    generate)
        generate_version_file
        ;;
    show)
        show_version
        ;;
    get)
        get_version
        ;;
    *)
        echo "Usage: $0 {generate|show|get}"
        exit 1
        ;;
esac