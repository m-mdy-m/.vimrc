# VEX - Vim Ecosystem Extension

![HomePage](./screenshots/home.png)

A modern, modular Vim configuration with LSP support.

## Quick Start

```bash
git clone https://github.com/m-mdy-m/.vimrc.git vex
cd vex
make install
```

Start vim and everything works.

## Features

Modern development environment with intelligent code completion, fuzzy file finding, git integration, and consistent behavior across Linux, macOS, and WSL.

LSP support for TypeScript, Python, Go, and more. 

## Requirements

Minimum:
- Vim 8.0 or newer
- Git
- curl or wget

Recommended:
- Node.js for JavaScript/TypeScript LSP
- Python 3 for Python LSP
- Go for Go LSP

## Installation

Full installation:
```bash
make install
```

Install specific components:
```bash
make install-vim        # Vim only
make install-plugins    # Plugins only
make install-lsp        # LSP servers only
```

## Platform Support

Works on Ubuntu, Debian, Arch, Fedora, macOS, and Windows via WSL.

Installation automatically detects your platform and uses the appropriate package manager.

## Usage

Start editing:
```bash
vim
```

Or use the CLI tool:
```bash
vex                     # Same as vim
vex doctor              # Health check
vex update              # Update everything
vex plugin list         # List plugins
vex lsp install         # Install LSP servers
```

## Documentation

See docs/ directory for detailed guides on installation, configuration, key bindings, and troubleshooting.

## Contributing

Contributions welcome. Follow existing code style, test on multiple platforms, and update documentation for new features.

## License

This project is licensed under the [MIT](LICENSE)

## Credits

Built with vim-plug, vim-lsp, FZF, vim-airline, vim-fugitive, and other excellent plugins.

Complete plugin list in src/plugins/install.vim

## Code Example:

Check out how your code will look with this setup!

![Code](./screenshots/code.png)
