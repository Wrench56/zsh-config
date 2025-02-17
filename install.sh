#!/bin/sh

cp .zshrc ~/.zshrc
mkdir -p ~/.config/zsh
cp p10k.zsh ~/.config/zsh/p10k.zsh

cp shell/aliases ~/.local/aliases
cp shell/keybinds ~/.local/keybinds

# Install common plugins
printf "[    ] Installing common plugins\n"
sudo git clone https://github.com/jirutka/zsh-shift-select /usr/share/zsh/plugins/zsh-shift-select
sudo git clone https://github.com/zsh-users/zsh-autosuggestions.git /usr/share/zsh/plugins/zsh-autosuggestions

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

