SHELL := /bin/bash
VERSION ?= $(shell git describe --tags --always --dirty 2>/dev/null || echo "dev")
BUILD_DATE ?= $(shell date -u '+%Y-%m-%d_%H:%M:%S')
PREFIX ?= $(HOME)/.local
VEX_HOME := $(PREFIX)/share/vex
VIM_CONFIG := $(HOME)/.vim
BACKUP_DIR := $(HOME)/.vim/backups

export VERSION BUILD_DATE

help:
	@echo "VEX - Vim Ecosystem Extension"
	@echo ""
	@echo "Usage: make [target]"
	@echo ""
	@echo "Installation:"
	@echo "  install          Complete installation"
	@echo "  install-vim      Install vim only"
	@echo "  install-plugins  Install vim plugins only"
	@echo "  install-lsp      Install LSP servers only"
	@echo ""
	@echo "Maintenance:"
	@echo "  update           Update VEX and all components"
	@echo "  doctor           Run health checks"
	@echo "  backup           Backup current configuration"
	@echo "  restore          Restore from backup"
	@echo "  version          Show version information"
	@echo ""
	@echo "Cleanup:"
	@echo "  clean            Remove generated files"
	@echo "  uninstall        Complete removal"
	@echo ""

version:
	@./scripts/version.sh show

install: version-file
	@echo "Starting VEX installation ($(VERSION))..."
	@./scripts/install.sh

version-file:
	@./scripts/version.sh generate

install-vim:
	@echo "Installing Vim..."
	@./scripts/vim.sh

install-plugins:
	@echo "Installing plugins..."
	@./scripts/plugins.sh

install-lsp:
	@echo "Installing LSP servers..."
	@./scripts/lsp.sh

update:
	@echo "Updating VEX..."
	@./bin/vex update

doctor:
	@echo "Running health checks..."
	@./bin/vex doctor

clean:
	@echo "Cleaning up..."
	@rm -rf $(VIM_CONFIG)/plugged/*/doc/tags
	@find $(VIM_CONFIG) -name "*.swp" -delete 2>/dev/null || true
	@find $(VIM_CONFIG) -name "*.swo" -delete 2>/dev/null || true
	@find $(VIM_CONFIG) -name "*~" -delete 2>/dev/null || true

uninstall:
	@echo "Uninstalling VEX..."
	@./scripts/uninstall.sh
