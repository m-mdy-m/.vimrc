# Linux Installation

VEX works on most Linux distributions with minimal requirements. The installation script detects your package manager and handles dependencies automatically.

## Requirements

You need git to clone the repository and curl or wget to download files. Most distributions include these by default. If not, install them through your package manager before starting.

Vim version 8.0 or newer is required. The installation script installs vim if it's missing. Older versions lack features that VEX depends on.

For language server support, install the runtime for languages you work with. Node.js enables JavaScript and TypeScript support. Python 3 enables Python support. Go and Rust enable their respective languages.

## Quick Installation

Clone the repository and run make install. This handles everything automatically.

```bash
git clone https://github.com/m-mdy-m/.vimrc.git vex
cd vex
make install
```

The installation backs up any existing vim configuration to ~/.vim/backups/. Your original configuration stays safe and can be restored if needed.

Installation takes a few minutes depending on your internet connection. Most of that time goes to downloading plugins.

## Distribution-Specific Notes

### Void Linux

Void Linux uses `xbps` as its package manager. Installation follows the same pattern as other distributions.

```bash
sudo xbps-install -S vim git curl
```

Check that vim is compiled with Python support if you plan to use Python language servers. The default package should include it.

### Ubuntu and Debian

These systems use apt. The installer runs apt-get update before installing packages. You might need to enter your password for sudo access.

```bash
sudo apt-get update
sudo apt-get install vim git curl
```

If you're on an older Ubuntu release, vim might be version 7.4. Check with vim --version. You'll need to upgrade or install from a PPA that provides a newer version.

### Arch Linux

Arch uses pacman. The base system includes everything needed.

```bash
sudo pacman -S vim git curl
```

Arch keeps packages current, so you'll have a recent vim version.

## Installing Language Servers

After the main installation, you can install language servers for enhanced functionality.

```bash
make install-lsp
```

This installs servers for common languages. TypeScript, Python, Go, and Rust servers are included if their respective package managers are available.

For TypeScript and JavaScript, you need Node.js and npm:

```bash
sudo npm install -g typescript typescript-language-server
```

For Python, use pip:

```bash
pip3 install --user python-lsp-server
```

For Go, use the go command:

```bash
go install golang.org/x/tools/gopls@latest
```

Make sure ~/go/bin or wherever Go installs binaries is in your PATH.

## Post-Installation

Start vim with the vex command. The first time you run it, you'll see the VEX start screen showing version information and quick commands.

```bash
vex
```

Open any file by passing its path:

```bash
vex file.txt
```

Run the doctor command to verify everything installed correctly:

```bash
vex doctor
```

Doctor checks for vim, configuration links, plugins, and language servers. Fix any issues it reports before continuing.

## Updating

Update VEX and all plugins with one command:

```bash
vex update
```

This pulls the latest VEX changes from git and updates all plugins to their newest versions.

## Uninstalling

Remove VEX completely with:

```bash
cd vex
make uninstall
```

This removes the configuration links and optionally deletes plugins and undo history. Your original vim configuration can be restored from the backup.

## Troubleshooting

If installation fails with permission errors, check that you have sudo access. Some operations need root privileges to install system packages.

If vim doesn't start or shows errors about missing files, verify that ~/.vimrc links to the correct location. The link should point to vex/src/vimrc.vim.

If plugins don't load, run :PlugInstall manually from within vim. Check that ~/.vim/autoload/plug.vim exists.

If language servers don't work, verify they're installed and in your PATH. Run which typescript-language-server or similar commands to check.

Some distributions separate vim and vim-gtk. If clipboard integration doesn't work, install vim-gtk or the equivalent package for your distribution.
