#!/bin/sh

cp .zshrc ~/.zshrc
mkdir -p ~/.config/zsh
cp p10k.zsh ~/.config/zsh/p10k.zsh

cp shell/aliases ~/.local/aliases
cp shell/keybinds ~/.local/keybinds

# Call distro specific install
. /etc/os-release

case "$NAME" in
    "Arch Linux")
        printf "[    ] Selecting Arch Linux install\n"
        chmod +x distros/install-arch.sh
        . distros/install-arch.sh
        ;;
    *)
        printf "[FAIL] No valid distro specific installation script found!\n"
esac

