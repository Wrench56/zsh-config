#!/bin/sh

# Install for Arch Linux

sudo pacman -S --noconfirm --needed zsh git

# Install ZSH plugins

paru -S --noconfirm --needed zsh-theme-powerlevel10k-git

sudo pacman -S --noconfirm --needed zsh-syntax-highlighting

sudo git clone https://github.com/jirutka/zsh-shift-select /usr/share/zsh/plugins/zsh-shift-select

sudo git clone https://github.com/zsh-users/zsh-autosuggestions.git /usr/share/zsh/plugins/zsh-autosuggestions

